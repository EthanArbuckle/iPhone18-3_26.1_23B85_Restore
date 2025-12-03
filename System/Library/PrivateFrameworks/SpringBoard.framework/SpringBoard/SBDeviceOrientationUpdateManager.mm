@interface SBDeviceOrientationUpdateManager
- (BOOL)_deviceOrientationUpdateNeededForOrientation:(int64_t)orientation;
- (SBDeviceOrientationUpdateManager)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)deviceOrientationUpdateDeferralAssertionWithReason:(id)reason;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_endDeferringOrientationUpdatesForAssertion:(id)assertion;
- (void)_enqueueOrientationUpdateToDeviceOrientation:(int64_t)orientation;
- (void)_legacy_enqueueOrientationUpdateToDeviceOrientation:(int64_t)orientation source:(id)source;
- (void)dealloc;
- (void)setLastUpdatedDeviceOrientation:(int64_t)orientation;
@end

@implementation SBDeviceOrientationUpdateManager

- (SBDeviceOrientationUpdateManager)init
{
  v11.receiver = self;
  v11.super_class = SBDeviceOrientationUpdateManager;
  v2 = [(SBDeviceOrientationUpdateManager *)&v11 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    deferralAssertions = v2->_deferralAssertions;
    v2->_deferralAssertions = weakObjectsHashTable;

    objc_initWeak(&location, v2);
    v5 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v9, &location);
    v6 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = v2->_stateCaptureHandle;
    v2->_stateCaptureHandle = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __40__SBDeviceOrientationUpdateManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  v3.receiver = self;
  v3.super_class = SBDeviceOrientationUpdateManager;
  [(SBDeviceOrientationUpdateManager *)&v3 dealloc];
}

- (void)setLastUpdatedDeviceOrientation:(int64_t)orientation
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_lastUpdatedDeviceOrientation != orientation)
  {
    self->_lastUpdatedDeviceOrientation = orientation;
    self->_deviceOrientationIsDirty = 1;
    if ([(SBDeviceOrientationUpdateManager *)self _deviceOrientationUpdateNeededForOrientation:?])
    {

      [(SBDeviceOrientationUpdateManager *)self _enqueueOrientationUpdateToDeviceOrientation:orientation];
    }

    else
    {
      v5 = BKLogOrientationDevice();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = BSDeviceOrientationDescription();
        deferralAssertions = self->_deferralAssertions;
        v11 = 138543618;
        v12 = v6;
        v13 = 2114;
        v14 = deferralAssertions;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Deferring device orientation update to %{public}@ because: %{public}@.", &v11, 0x16u);
      }

      v8 = BKLogOrientationDevice();
      if (os_signpost_enabled(v8))
      {
        v9 = BSDeviceOrientationDescription();
        v10 = self->_deferralAssertions;
        v11 = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v10;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ROTATION_DEVICE_ORIENTATION_UPDATE_DEFERRED", "Deferring device orientation update to %{public}@ because: %{public}@.", &v11, 0x16u);
      }
    }
  }
}

- (id)deviceOrientationUpdateDeferralAssertionWithReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = BKLogOrientationGlobal();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Deferring device orientation updates for reason: %{public}@", &v9, 0xCu);
  }

  v6 = [[SBDeviceOrientationUpdateDeferralAssertion alloc] initWithReason:reasonCopy];
  [(SBDeviceOrientationUpdateDeferralAssertion *)v6 _setHackyBackReference:self];
  [(NSHashTable *)self->_deferralAssertions addObject:v6];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager"))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBDeviceOrientationUpdateManager-DeferralAssertionAcquired" object:0];
  }

  return v6;
}

- (void)_endDeferringOrientationUpdatesForAssertion:(id)assertion
{
  v16 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  reason = [assertionCopy reason];
  v6 = BKLogOrientationGlobal();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = reason;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Resuming device orientation updates for reason: %{public}@", &v12, 0xCu);
  }

  lastUpdatedDeviceOrientation = self->_lastUpdatedDeviceOrientation;
  v8 = [(NSHashTable *)self->_deferralAssertions containsObject:assertionCopy];
  [(NSHashTable *)self->_deferralAssertions removeObject:assertionCopy];

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager"))
  {
    if (v8 && ![(NSHashTable *)self->_deferralAssertions count])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"SBDeviceOrientationUpdateManager-HasNoActiveDeferralAssertions" object:0];
    }
  }

  else if (v8 && [(SBDeviceOrientationUpdateManager *)self _deviceOrientationUpdateNeededForOrientation:lastUpdatedDeviceOrientation])
  {
    v10 = BKLogOrientationDevice();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = BSDeviceOrientationDescription();
      v12 = 138543618;
      v13 = reason;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "%{public}@ was the last reason, schdeuling update to: %{public}@.", &v12, 0x16u);
    }

    [(SBDeviceOrientationUpdateManager *)self _enqueueOrientationUpdateToDeviceOrientation:lastUpdatedDeviceOrientation];
  }
}

- (BOOL)_deviceOrientationUpdateNeededForOrientation:(int64_t)orientation
{
  v5 = +[SBOrientationLockManager sharedInstance];
  if ([v5 isUserLocked])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    orientation = [currentDevice orientation];

    userLockOrientation = [v5 userLockOrientation];
    v9 = orientation != userLockOrientation && userLockOrientation == orientation;
  }

  else
  {
    if (!self->_deviceOrientationIsDirty)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [(NSHashTable *)self->_deferralAssertions count]== 0;
  }

  v10 = v9;
LABEL_11:

  return v10;
}

- (void)_enqueueOrientationUpdateToDeviceOrientation:(int64_t)orientation
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager") & 1) == 0)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(SBDeviceOrientationUpdateManager *)self _legacy_enqueueOrientationUpdateToDeviceOrientation:orientation source:v6];
  }
}

- (void)_legacy_enqueueOrientationUpdateToDeviceOrientation:(int64_t)orientation source:(id)source
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = ++_legacy_enqueueOrientationUpdateToDeviceOrientation_source____deviceOrientationChangeCount;
  sourceCopy = source;
  v8 = BKLogOrientationDevice();
  if (os_signpost_enabled(v8))
  {
    v9 = BSDeviceOrientationDescription();
    *buf = 134218242;
    v18 = v6;
    v19 = 2114;
    v20 = v9;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ROTATION_DEVICE_ORIENTATION_UPDATE_ENQUEUE", "change #%ld, deviceOrientation: %{public}@", buf, 0x16u);
  }

  mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
  v11 = MEMORY[0x277D0AB18];
  v12 = MEMORY[0x277CCACA8];
  v13 = BSDeviceOrientationDescription();
  v14 = [v12 stringWithFormat:@"Device Orientation Changed via %@ to %@", sourceCopy, v13];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__SBDeviceOrientationUpdateManager__legacy_enqueueOrientationUpdateToDeviceOrientation_source___block_invoke;
  v16[3] = &unk_2783A8C40;
  v16[5] = orientation;
  v16[6] = v6;
  v16[4] = self;
  v15 = [v11 eventWithName:v14 handler:v16];
  [mEMORY[0x277D0AB20] executeOrAppendEvent:v15];
}

void __95__SBDeviceOrientationUpdateManager__legacy_enqueueOrientationUpdateToDeviceOrientation_source___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager"))
  {
LABEL_5:
    v3 = a1[6];
    v4 = _legacy_enqueueOrientationUpdateToDeviceOrientation_source____deviceOrientationChangeCount;
    v5 = BKLogOrientationDevice();
    v6 = v5;
    if (v3 == v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = [MEMORY[0x277D75418] currentDevice];
        [v7 orientation];
        v8 = BSDeviceOrientationDescription();
        v9 = BSDeviceOrientationDescription();
        v20 = 138543618;
        v21 = v8;
        v22 = 2114;
        v23 = v9;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Setting device orientation for backboardd from: %{public}@ to: %{public}@", &v20, 0x16u);
      }

      v10 = [MEMORY[0x277D75418] currentDevice];
      [v10 setOrientation:a1[5] animated:{objc_msgSend(SBApp, "isSuspended") ^ 1}];

      *(a1[4] + 16) = 0;
      v2 = BKLogOrientationDevice();
      if (os_signpost_enabled(v2))
      {
        v11 = a1[6];
        v12 = BSDeviceOrientationDescription();
        v20 = 134218242;
        v21 = v11;
        v22 = 2114;
        v23 = v12;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ROTATION_DEVICE_ORIENTATION_UPDATE_EXECUTE", "change #%ld, deviceOrientation: %{public}@", &v20, 0x16u);
      }
    }

    else
    {
      if (os_signpost_enabled(v5))
      {
        v13 = a1[6];
        v20 = 134217984;
        v21 = v13;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ROTATION_DEVICE_ORIENTATION_UPDATE_VETO", "changeCount #%ld", &v20, 0xCu);
      }

      v2 = BKLogOrientationDevice();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Vetoing device change because another orientation event came in later and hasn't run yet.", &v20, 2u);
      }
    }

    goto LABEL_19;
  }

  v2 = +[SBOrientationLockManager sharedInstance];
  if (![v2 isEffectivelyLocked]|| [v2 effectiveLockedOrientation]== a1[5])
  {

    goto LABEL_5;
  }

  v14 = BKLogOrientationDevice();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = BSDeviceOrientationDescription();
    [v2 effectiveLockedOrientation];
    v16 = BSDeviceOrientationDescription();
    v20 = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Ignoring device orientation to: %{public}@ because we're device orientation locked to: %{public}@.", &v20, 0x16u);
  }

  v17 = BKLogOrientationDevice();
  if (os_signpost_enabled(v17))
  {
    v18 = a1[6];
    v19 = BSDeviceOrientationDescription();
    v20 = 134218242;
    v21 = v18;
    v22 = 2114;
    v23 = v19;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ROTATION_DEVICE_ORIENTATION_UPDATE_IGNORE", "change #%ld, deviceOrientation: %{public}@", &v20, 0x16u);
  }

LABEL_19:
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDeviceOrientationUpdateManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[SBDeviceOrientationUpdateManager isCurrentlyDeferringOrientationUpdates](self withName:"isCurrentlyDeferringOrientationUpdates") ifEqualTo:{@"isDeferring", 1}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDeviceOrientationUpdateManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBDeviceOrientationUpdateManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SBDeviceOrientationUpdateManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __74__SBDeviceOrientationUpdateManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"deviceOrientationIsDirty" ifEqualTo:1];
  v3 = *(a1 + 32);
  v4 = BSDeviceOrientationDescription();
  v5 = [v3 appendObject:v4 withName:@"lastUpdatedDeviceOrientation"];

  v6 = *(a1 + 32);
  v8 = [*(*(a1 + 40) + 8) allObjects];
  v7 = [*(a1 + 32) activeMultilinePrefix];
  [v6 appendArraySection:v8 withName:@"active deferral assertions" multilinePrefix:v7 skipIfEmpty:1];
}

@end