@interface SBAlertLayoutPresentationVerifier
+ (id)__lock_verifiers;
+ (uint64_t)_handleTrackingStateChange;
+ (void)_handleTrackingStateChange;
- (SBAlertLayoutPresentationVerifier)initWithScreen:(id)a3;
- (uint64_t)_fixAlertItemLayout;
- (uint64_t)_hasBrokenAlertPresentationInvariants;
- (uint64_t)_hasBrokenHostingLayerInvariants;
- (uint64_t)_hasBrokenWindowInvariants;
- (void)_logAlertItemLayout;
- (void)_logToAutoBugCapture;
- (void)_performLayoutVerification;
- (void)_startTrackingBadPositions;
- (void)_stopTrackingBadPositions;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5;
- (void)activeInterfaceOrientationWillChangeToOrientation:(int64_t)a3;
- (void)addVerifier:(uint64_t)a1;
- (void)dealloc;
- (void)removeVerifier:(uint64_t)a1;
- (void)scheduleAlertLayoutVerificationForReason:(id)a3;
- (void)scheduleDelayedAlertLayoutVerificationForReason:(id)a3;
@end

@implementation SBAlertLayoutPresentationVerifier

- (SBAlertLayoutPresentationVerifier)initWithScreen:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBAlertLayoutPresentationVerifier;
  v6 = [(SBAlertLayoutPresentationVerifier *)&v11 init];
  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    updateReasons = v6->_updateReasons;
    v6->_updateReasons = v8;

    v6->_firstLogEventTime = -1.79769313e308;
    objc_storeStrong(&v6->_screen, a3);
    v6->_lastAutoBugCaptureEventTime = 0.0;
    [SBApp addActiveOrientationObserver:v6];
    v10 = +[SBReachabilityManager sharedInstance];
    [v10 addObserver:v6];

    +[SBAlertLayoutPresentationVerifier _handleTrackingStateChange];
    [(SBAlertLayoutPresentationVerifier *)v6 addVerifier:v6];
  }

  return v6;
}

+ (void)_handleTrackingStateChange
{
  v17 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  __isReportingBadPositions = [v0 BOOLForKey:@"SBTrackAlertWindowPosition"];

  os_unfair_lock_lock(&__verifierLock);
  v1 = +[SBAlertLayoutPresentationVerifier __lock_verifiers];
  v2 = [v1 copy];

  os_unfair_lock_unlock(&__verifierLock);
  memset(v14, 0, sizeof(v14));
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:v14 objects:v16 count:16];
  if (v4)
  {
    [(SBAlertLayoutPresentationVerifier *)v14 _handleTrackingStateChange:v3];
  }

  if (__isReportingBadPositions == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(SBAlertLayoutPresentationVerifier *)*(*(&v10 + 1) + 8 * v9++) _startTrackingBadPositions];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)dealloc
{
  [(SBAlertLayoutPresentationVerifier *)self removeVerifier:?];
  [(NSTimer *)self->_bugCaptureTimer invalidate];
  [SBApp removeActiveOrientationObserver:self];
  v3 = +[SBReachabilityManager sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBAlertLayoutPresentationVerifier;
  [(SBAlertLayoutPresentationVerifier *)&v4 dealloc];
}

- (void)scheduleDelayedAlertLayoutVerificationForReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBAlertLayoutPresentationVerifier *)a2 scheduleDelayedAlertLayoutVerificationForReason:?];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_pendingScheduledLayoutVerification)
  {
    [(NSMutableArray *)self->_updateReasons addObject:v5];
  }

  else
  {
    self->_pendingScheduledLayoutVerification = 1;
    v6 = dispatch_time(0, 300000000);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__SBAlertLayoutPresentationVerifier_scheduleDelayedAlertLayoutVerificationForReason___block_invoke;
    v8[3] = &unk_2783A92D8;
    v8[4] = self;
    v9 = v5;
    v7 = MEMORY[0x277D85CD0];
    dispatch_after(v6, MEMORY[0x277D85CD0], v8);
  }
}

- (void)scheduleAlertLayoutVerificationForReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBAlertLayoutPresentationVerifier *)a2 scheduleAlertLayoutVerificationForReason:?];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NSMutableArray *)self->_updateReasons addObject:v5];
  if (!self->_pendingLayoutVerification)
  {
    self->_pendingLayoutVerification = 1;
    v6 = *MEMORY[0x277D76620];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__SBAlertLayoutPresentationVerifier_scheduleAlertLayoutVerificationForReason___block_invoke;
    v7[3] = &unk_2783A8C18;
    v7[4] = self;
    [v6 _performBlockAfterCATransactionCommits:v7];
  }
}

uint64_t __78__SBAlertLayoutPresentationVerifier_scheduleAlertLayoutVerificationForReason___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9FF0] currentState];
  v3 = *(a1 + 32);
  if (v2)
  {
    *(v3 + 8) = 0;
    v4 = *(a1 + 32);

    return [v4 scheduleAlertLayoutVerificationForReason:@"Rescheduling for later when not in a transaction."];
  }

  else
  {
    [(SBAlertLayoutPresentationVerifier *)v3 _performLayoutVerification];
    *(*(a1 + 32) + 8) = 0;
    v6 = *(*(a1 + 32) + 16);

    return [v6 removeAllObjects];
  }
}

+ (id)__lock_verifiers
{
  objc_opt_self();
  if (__lock_verifiers_once != -1)
  {
    +[SBAlertLayoutPresentationVerifier __lock_verifiers];
  }

  v0 = __lock_verifiers_lock_verifiers;

  return v0;
}

void __53__SBAlertLayoutPresentationVerifier___lock_verifiers__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:5];
  v1 = __lock_verifiers_lock_verifiers;
  __lock_verifiers_lock_verifiers = v0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _SBTrackAlertWindowPreferencesChangedHandler, @"com.apple.springboard.trackAlertWindowPositionPrefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_startTrackingBadPositions
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x277CBEBB8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__SBAlertLayoutPresentationVerifier__startTrackingBadPositions__block_invoke;
    v5[3] = &unk_2783AA438;
    objc_copyWeak(&v6, &location);
    v3 = [v2 scheduledTimerWithTimeInterval:1 repeats:v5 block:5.0];
    v4 = *(val + 6);
    *(val + 6) = v3;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __63__SBAlertLayoutPresentationVerifier__startTrackingBadPositions__block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleAlertLayoutVerificationForReason:@"timer"];
}

void __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke_2;
    v7[3] = &unk_2783A8C18;
    v7[4] = *(a1 + 32);
  }

  else
  {
    v5 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke_3;
    block[3] = &unk_2783A8BC8;
    block[4] = *(a1 + 32);
    block[5] = *(a1 + 40);
  }

  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke_2(uint64_t a1)
{
  result = BSContinuousMachTimeNow();
  *(*(a1 + 32) + 56) = v3;
  return result;
}

double __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 56) = result;
  return result;
}

- (void)activeInterfaceOrientationWillChangeToOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Will change to orientation %li", a3];
  [(SBAlertLayoutPresentationVerifier *)self scheduleAlertLayoutVerificationForReason:v4];
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Did change from orientation %li to orientation %li", a4, a5, a3];
  [(SBAlertLayoutPresentationVerifier *)self scheduleAlertLayoutVerificationForReason:v6];
}

- (void)addVerifier:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    os_unfair_lock_lock(&__verifierLock);
    v3 = +[SBAlertLayoutPresentationVerifier __lock_verifiers];
    [v3 addObject:v2];

    os_unfair_lock_unlock(&__verifierLock);
  }
}

- (void)removeVerifier:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    os_unfair_lock_lock(&__verifierLock);
    v3 = +[SBAlertLayoutPresentationVerifier __lock_verifiers];
    [v3 removeObject:v2];

    os_unfair_lock_unlock(&__verifierLock);
  }
}

- (void)_performLayoutVerification
{
  if (a1)
  {
    if (([(SBAlertLayoutPresentationVerifier *)a1 _hasBrokenHostingLayerInvariants]& 1) != 0 || ([(SBAlertLayoutPresentationVerifier *)a1 _hasBrokenWindowInvariants]& 1) != 0 || [(SBAlertLayoutPresentationVerifier *)a1 _hasBrokenAlertPresentationInvariants])
    {
      if (*&a1[8].isa == -1.79769313e308)
      {
        BSContinuousMachTimeNow();
        a1[8].isa = v2;
      }

      BSContinuousMachTimeNow();
      if (v3 - *&a1[8].isa >= 10.0)
      {
        v4 = SBLogAlertItems();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_ERROR, "Omitting giant layout dump. We've logged it enough.", buf, 2u);
        }
      }

      else
      {
        [(SBAlertLayoutPresentationVerifier *)a1 _logAlertItemLayout];
        if (__isReportingBadPositions == 1)
        {
          [(SBAlertLayoutPresentationVerifier *)a1 _logToAutoBugCapture];
        }
      }

      [(SBAlertLayoutPresentationVerifier *)a1 _fixAlertItemLayout];
    }

    else
    {
      v5 = SBLogAlertItems();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_debug_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEBUG, "Alert layout appears correct.", v6, 2u);
      }

      a1[8].isa = 0xFFEFFFFFFFFFFFFFLL;
    }
  }
}

- (void)_stopTrackingBadPositions
{
  if (a1)
  {
    [*(a1 + 48) invalidate];
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;
  }
}

- (void)_logToAutoBugCapture
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    if (__isReportingBadPositions == 1)
    {
      v2 = *(a1 + 56);
      if (v2 == 0.0 || (BSContinuousMachTimeNow(), v3 - *(a1 + 56) >= 300.0))
      {
        BSContinuousMachTimeNow();
        *(a1 + 56) = v4;
        v5 = objc_alloc_init(MEMORY[0x277D6AFC8]);
        v6 = [MEMORY[0x277CCAC38] processInfo];
        v7 = [v6 processName];
        v8 = [v5 signatureWithDomain:@"SpringBoard" type:@"AlertLayout" subType:@"PositionVerifier" subtypeContext:0 detectedProcess:v7 triggerThresholdValues:0];

        v9 = *MEMORY[0x277D6AFF0];
        v12[0] = *MEMORY[0x277D6AFF8];
        v12[1] = v9;
        v13[0] = MEMORY[0x277CBEC28];
        v13[1] = MEMORY[0x277CBEC28];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke;
        v11[3] = &unk_2783BE8E0;
        v11[4] = a1;
        *&v11[5] = v2;
        [v5 snapshotWithSignature:v8 duration:MEMORY[0x277CBEBF8] events:0 payload:v10 actions:v11 reply:0.0];
      }
    }
  }
}

- (uint64_t)_hasBrokenHostingLayerInvariants
{
  v1 = a1;
  v28 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 24))
    {
      v2 = [MEMORY[0x277D0AAD8] sharedInstance];
      v3 = [*(v1 + 24) _scene];
      v4 = [v3 identifier];
      v5 = [v2 sceneWithIdentifier:v4];

      v6 = [v5 uiPresentationManager];
      v7 = [v6 defaultPresentationContext];
      v8 = [v7 layerPresentationOverrides];

      v9 = [MEMORY[0x277D75968] targetForUIWindow:*(v1 + 24)];
      v10 = [v8 objectForKey:v9];
      v11 = [v10 transformer];

      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      if (v11)
      {
        [v11 transform];
      }

      else
      {
        v21 = *MEMORY[0x277CBF2C0];
        v22 = *(MEMORY[0x277CBF2C0] + 16);
        v23 = *(MEMORY[0x277CBF2C0] + 32);
      }

      [*(v1 + 24) bounds];
      OUTLINED_FUNCTION_4_14();
      MidX = CGRectGetMidX(v30);
      v31.origin.x = OUTLINED_FUNCTION_3_23();
      MidY = CGRectGetMidY(v31);
      v13 = vaddq_f64(v23, vmlaq_n_f64(vmulq_n_f64(v22, MidY), v21, MidX));
      v1 = MidX != v13.f64[0];
      if (MidX != v13.f64[0])
      {
        point = v13;
        v19 = MidY;
        v14 = SBLogAlertItems();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v29.y = v19;
          v29.x = MidX;
          v16 = NSStringFromCGPoint(v29);
          v17 = NSStringFromCGPoint(point);
          *buf = 138543618;
          v25 = v16;
          v26 = 2114;
          v27 = v17;
          _os_log_error_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_ERROR, "Alert window hosting layer has misaligned transform. Layer midpoint: %{public}@. Transformed midpoint:  %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (uint64_t)_hasBrokenWindowInvariants
{
  v17 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      v2 = [result screen];
      v3 = *(v1 + 40);

      [*(v1 + 24) bounds];
      OUTLINED_FUNCTION_4_14();
      [*(v1 + 40) bounds];
      v18.origin.x = OUTLINED_FUNCTION_3_23();
      v4 = CGRectEqualToRect(v18, v21);
      v5 = [*(v1 + 24) isHidden] | v4;
      if (v2 == v3)
      {
        v7 = [*(v1 + 40) coordinateSpace];
        [*(v1 + 24) bounds];
        [v7 convertRect:*(v1 + 24) fromCoordinateSpace:?];
        OUTLINED_FUNCTION_4_14();

        v19.origin.x = OUTLINED_FUNCTION_3_23();
        MidX = CGRectGetMidX(v19);
        [*(v1 + 40) bounds];
        v9 = vabdd_f64(MidX, CGRectGetMidX(v20));
        v10 = [*(v1 + 24) isHidden];
        if (v9 < 1.0)
        {
          v6 = 1;
        }

        else
        {
          v6 = v10;
        }

        if (v5 & v6)
        {
          return 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v11 = SBLogAlertItems();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12[0] = 67109632;
        v12[1] = v2 == v3;
        v13 = 1024;
        v14 = v5 & 1;
        v15 = 1024;
        v16 = v6;
        _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "Alert window invariants broken. correctScreenPresentation:%{BOOL}i correctBounds:%{BOOL}i correctXLayout:%{BOOL}i", v12, 0x14u);
      }

      return 1;
    }
  }

  return result;
}

- (uint64_t)_hasBrokenAlertPresentationInvariants
{
  v1 = a1;
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(&a1[4].isa);
    v3 = [WeakRetained currentlyPresentedAlertItem];

    v4 = [v3 alertController];
    v5 = [v4 view];
    v6 = [v4 presentationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 window];
      if (v8)
      {
        v9 = v8;
        v10 = [v5 window];
        v11 = [v10 isHidden];

        if ((v11 & 1) == 0)
        {
          v12 = [v5 window];
          v13 = *(v1 + 24);

          v14 = *(v1 + 40);
          v15 = [*(v1 + 24) screen];

          if (v14 != v15)
          {
            v16 = 0;
            goto LABEL_15;
          }

          v18 = [*(v1 + 40) coordinateSpace];
          [v5 bounds];
          [v18 convertRect:v5 fromCoordinateSpace:?];
          OUTLINED_FUNCTION_4_14();

          v27.origin.x = OUTLINED_FUNCTION_3_23();
          MidX = CGRectGetMidX(v27);
          [*(v1 + 40) bounds];
          v20 = vabdd_f64(MidX, CGRectGetMidX(v28));
          v16 = v20 < 1.0;
          if (v12 != v13 || v20 >= 1.0)
          {
LABEL_15:
            v22 = SBLogAlertItems();
            if (OUTLINED_FUNCTION_9_6(v22))
            {
              v23[0] = 67109376;
              v23[1] = v12 == v13;
              v24 = 1024;
              v25 = v16;
              _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Alert layout invariants broken. correctScreenPresentation:%{BOOL}i correctXLayout:%{BOOL}i", v23, 0xEu);
            }

            v1 = 1;
            goto LABEL_9;
          }
        }
      }

      else
      {
      }
    }

    v1 = 0;
LABEL_9:
  }

  return v1;
}

- (void)_logAlertItemLayout
{
  v187 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v4 = SBLogAlertItems();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_fault_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_FAULT, "Broken invariant in alert item layout.", &buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((v3 + 32));
    v6 = [WeakRetained currentlyPresentedAlertItem];

    HIDWORD(v175) = arc4random();
    v7 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v7))
    {
      v71 = *(v3 + 16);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v71;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v72, v73, v74, v75, v76, 0xCu);
    }

    v8 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v8))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = v77;
      *(&buf.a + 4) = v6;
      WORD2(buf.b) = 1024;
      *(&buf.b + 6) = v78;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v79, v80, v81, v82, v83, 0x12u);
    }

    v9 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v9))
    {
      OUTLINED_FUNCTION_8_5();
      v84 = *(v3 + 24);
      [v84 bounds];
      v85 = NSStringFromCGRect(v190);
      LODWORD(buf.a) = 67109634;
      HIDWORD(buf.a) = v4;
      LOWORD(buf.b) = 2114;
      *(&buf.b + 2) = v84;
      WORD1(buf.c) = 2114;
      *(&buf.c + 4) = v85;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v86, v87, v88, v89, v90, 0x1Cu);
    }

    v10 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v10))
    {
      OUTLINED_FUNCTION_8_5();
      v91 = [*(v3 + 24) _contextId];
      LODWORD(buf.a) = 67109376;
      HIDWORD(buf.a) = v4;
      LOWORD(buf.b) = 1024;
      *(&buf.b + 2) = v91;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v92, v93, v94, v95, v96, 0xEu);
    }

    v11 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v11))
    {
      OUTLINED_FUNCTION_8_5();
      v97 = [*(v3 + 24) screen];
      OUTLINED_FUNCTION_0_45(v97, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v98, v99, v100, v101, v102, 0x12u);
    }

    v12 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v12))
    {
      OUTLINED_FUNCTION_8_5();
      v103 = [*(v3 + 24) _scene];
      OUTLINED_FUNCTION_0_45(v103, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v104, v105, v106, v107, v108, 0x12u);
    }

    v13 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v13))
    {
      OUTLINED_FUNCTION_8_5();
      v109 = [*(v3 + 24) _scene];
      v110 = [v109 settings];
      OUTLINED_FUNCTION_0_45(v110, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v111, v112, v113, v114, v115, 0x12u);
    }

    v14 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_9_6(v14))
    {
      OUTLINED_FUNCTION_8_5();
      v116 = [*(v3 + 24) _scene];
      v117 = [v116 clientSettings];
      OUTLINED_FUNCTION_0_45(v117, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v118, v119, v120, v121, v122, 0x12u);
    }

    v15 = [v6 alertController];
    if (v15)
    {
      v16 = v15;
      OUTLINED_FUNCTION_8_5();
      do
      {
        v17 = SBLogAlertItems();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v2 = NSStringFromClass(v19);
          LODWORD(buf.a) = 67109634;
          HIDWORD(buf.a) = v4;
          LOWORD(buf.b) = 2114;
          *(&buf.b + 2) = v2;
          WORD1(buf.c) = 2048;
          *(&buf.c + 4) = v16;
          _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, "DL%x: View controller in presentation hierarchy: <%{public}@, %p>.", &buf, 0x1Cu);
        }

        v18 = [v16 presentingViewController];

        v16 = v18;
      }

      while (v18);
    }

    v20 = [v6 alertController];
    v21 = [v20 view];

    if (v21)
    {
      LODWORD(v4) = 2114;
      do
      {
        v22 = SBLogAlertItems();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [v21 center];
          v2 = NSStringFromCGPoint(v188);
          [v21 bounds];
          v24 = NSStringFromCGRect(v189);
          [v21 transform];
          NSStringFromCGAffineTransform(&buf);
          v25 = v3;
          v27 = v26 = v6;
          LODWORD(buf.a) = 67110146;
          HIDWORD(buf.a) = WORD2(v175);
          LOWORD(buf.b) = 2114;
          *(&buf.b + 2) = v21;
          WORD1(buf.c) = 2114;
          *(&buf.c + 4) = v2;
          WORD2(buf.d) = 2114;
          *(&buf.d + 6) = v24;
          HIWORD(buf.tx) = 2114;
          *&buf.ty = v27;
          _os_log_error_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_ERROR, "DL%x: View in hierarchy: %{public}@. Center: %{public}@. Bounds: %{public}@. Transform: %{public}@", &buf, 0x30u);

          v6 = v26;
          v3 = v25;
        }

        v23 = [v21 superview];

        v21 = v23;
      }

      while (v23);
    }

    v28 = [*(v3 + 24) _scene];
    if (v28)
    {
      v29 = [MEMORY[0x277D0AAD8] sharedInstance];
      v30 = [v28 identifier];
      v31 = [v29 sceneWithIdentifier:v30];
    }

    else
    {
      v31 = 0;
    }

    v32 = [v31 uiPresentationManager];
    v33 = [v32 defaultPresentationContext];

    v34 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
    v35 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_11_5(v35))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v123;
      OUTLINED_FUNCTION_2_30();
      *(v124 + 58) = v34;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v125, v126, "DL%x: Root window scene binder: %{public}@");
    }

    v36 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_11_5(v36))
    {
      OUTLINED_FUNCTION_8_5();
      v127 = [v34 rootWindow];
      OUTLINED_FUNCTION_0_45(v127, 1.5047e-36);
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v128, v129, "DL%x: Root window: %{public}@");
    }

    v37 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_11_5(v37))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v130;
      OUTLINED_FUNCTION_2_30();
      *(v131 + 58) = v31;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v132, v133, "DL%x: Host scene: %{public}@");
    }

    v38 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_11_5(v38))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v134;
      OUTLINED_FUNCTION_2_30();
      *(v135 + 58) = v33;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v136, v137, "DL%x: Host scene presentation context: %{public}@");
    }

    v39 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_11_5(v39))
    {
      OUTLINED_FUNCTION_8_5();
      v138 = [v33 layerPresentationOverrides];
      OUTLINED_FUNCTION_0_45(v138, 1.5047e-36);
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v139, v140, "DL%x: Host scene layer presentation overrides: %{public}@");
    }

    v40 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_11_5(v40))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v141;
      OUTLINED_FUNCTION_2_30();
      *(v142 + 58) = v28;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v143, v144, "DL%x: Alert client scene: %{public}@");
    }

    memset(&buf, 0, sizeof(buf));
    v41 = [v34 sceneTransformer];
    v42 = v41;
    if (v41)
    {
      [v41 transform];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v43 = *(MEMORY[0x277CBF2C0] + 16);
    *&v184.a = *MEMORY[0x277CBF2C0];
    *&v184.c = v43;
    *&v184.tx = *(MEMORY[0x277CBF2C0] + 32);
    v167 = v43;
    v170 = *&v184.a;
    v181 = *&v184.a;
    v182 = v43;
    v164 = *&v184.tx;
    v183 = *&v184.tx;
    v44 = [v33 hostTransformer];

    if (v44)
    {
      v45 = [v33 hostTransformer];
      v44 = v45;
      if (v45)
      {
        [v45 transform];
      }

      else
      {
        memset(&v180, 0, sizeof(v180));
      }

      v184 = v180;
    }

    if (*(v3 + 24))
    {
      v4 = v6;
      v3 = [MEMORY[0x277D75968] targetForUIWindow:?];
      v46 = [v33 layerPresentationOverrides];
      v47 = [v46 objectForKey:v3];
      v44 = [v47 transformer];

      if (v44)
      {
        [v44 transform];
      }

      else
      {
        v181 = v170;
        v182 = v167;
        v183 = v164;
      }

      v6 = v4;
    }

    *&v180.a = v170;
    *&v180.c = v167;
    *&v180.tx = v164;
    *&t1.a = v170;
    *&t1.c = v167;
    *&t1.tx = v164;
    t2 = buf;
    v48 = CGAffineTransformConcat(&v180, &t1, &t2);
    t2 = v180;
    v56 = OUTLINED_FUNCTION_14_2(v48, v49, v50, v51, v52, v53, v54, v55, *&v184.tx, v164.n128_u64[0], v164.n128_u64[1], v167.n128_i64[0], v167.n128_i64[1], v170, *(&v170 + 1), v173, v175, *&v184.a, *&v184.b, *&v184.c, *&v184.d, *&v184.c, v177);
    v180 = t1;
    t2 = t1;
    OUTLINED_FUNCTION_14_2(v56, v57, v58, v59, v60, v61, v62, v63, v183, v165, v166, v168, v169, v171, v172, v174, v176, v181, *(&v181 + 1), v182.n128_i64[0], v182.n128_i64[1], v182, v178);
    v180 = t1;
    v64 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_12_4(v64))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = *&buf.a;
      *&t1.c = *&buf.c;
      v145 = OUTLINED_FUNCTION_13_3(*&buf.tx);
      v44 = NSStringFromCGAffineTransform(v145);
      OUTLINED_FUNCTION_1_27(v44, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v146, v147, "DL%x: Root transform: %{public}@");
    }

    v65 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_12_4(v65))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = *&v184.a;
      *&t1.c = *&v184.c;
      v148 = OUTLINED_FUNCTION_13_3(*&v184.tx);
      v44 = NSStringFromCGAffineTransform(v148);
      OUTLINED_FUNCTION_1_27(v44, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v149, v150, "DL%x: Scene transform: %{public}@");
    }

    v66 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_12_4(v66))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = v181;
      *&t1.c = v182;
      v151 = OUTLINED_FUNCTION_13_3(v183);
      v44 = NSStringFromCGAffineTransform(v151);
      OUTLINED_FUNCTION_1_27(v44, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v152, v153, "DL%x: Alert layer transform: %{public}@");
    }

    v67 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_12_4(v67))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = *&v180.a;
      *&t1.c = *&v180.c;
      v154 = OUTLINED_FUNCTION_13_3(*&v180.tx);
      v44 = NSStringFromCGAffineTransform(v154);
      OUTLINED_FUNCTION_1_27(v44, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v155, v156, "DL%x: Total combined transform: %{public}@");
    }

    v68 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_12_4(v68))
    {
      OUTLINED_FUNCTION_8_5();
      v44 = [SBApp orientationAggregator];
      OUTLINED_FUNCTION_1_27(v44, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v157, v158, "DL%x: Orientation state: %{public}@");
    }

    v69 = +[SBReachabilityManager sharedInstance];
    v70 = SBLogAlertItems();
    if (OUTLINED_FUNCTION_11_5(v70))
    {
      OUTLINED_FUNCTION_8_5();
      v159 = [v69 reachabilityEnabled];
      v160 = [v69 reachabilityModeActive];
      [v69 reachabilityYOffset];
      v162 = v161;
      [v69 effectiveReachabilityYOffset];
      LODWORD(t1.a) = 67110144;
      HIDWORD(t1.a) = v4;
      LOWORD(t1.b) = 1024;
      *(&t1.b + 2) = v159;
      HIWORD(t1.b) = 1024;
      LODWORD(t1.c) = v160;
      WORD2(t1.c) = 2048;
      *(&t1.c + 6) = v162;
      HIWORD(t1.d) = 2048;
      t1.tx = v163;
      _os_log_error_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_ERROR, "DL%x: Reachability enabled:%{BOOL}i active:%{BOOL}i offsetWhenActive:%f currentOffset:%f", &t1, 0x28u);
    }
  }
}

- (uint64_t)_fixAlertItemLayout
{
  if (result)
  {
    v1 = result;
    [*(result + 24) frame];
    OUTLINED_FUNCTION_4_14();
    [*(v1 + 40) bounds];
    v5.origin.x = OUTLINED_FUNCTION_3_23();
    result = CGRectEqualToRect(v5, v6);
    if ((result & 1) == 0)
    {
      v2 = SBLogAlertItems();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Broken alert layout getting fixed", v4, 2u);
      }

      v3 = *(v1 + 24);
      [*(v1 + 40) bounds];
      return [v3 setFrame:?];
    }
  }

  return result;
}

+ (uint64_t)_handleTrackingStateChange
{
  v8 = **(a1 + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(a1 + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(a1 + 8) + 8 * v9);
      if (v10)
      {
        [*(v10 + 48) invalidate];
        v11 = *(v10 + 48);
        *(v10 + 48) = 0;
      }

      ++v9;
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:a1 objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (void)scheduleDelayedAlertLayoutVerificationForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertLayoutPresentationVerifier.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)scheduleAlertLayoutVerificationForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertLayoutPresentationVerifier.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end