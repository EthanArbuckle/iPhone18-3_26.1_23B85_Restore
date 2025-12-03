@interface SBReachabilityManager
+ (BOOL)reachabilitySupported;
+ (id)sharedInstance;
- (BOOL)canActivateReachability;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)reachabilityEnabled;
- (SBReachabilityManager)init;
- (id)_attentionAwarenessConfigurationWithTimeout:(double)timeout tag:(id)tag;
- (id)_sceneForWindow:(id)window;
- (void)_activateReachability:(id)reachability;
- (void)_applyInteractiveConfiguration;
- (void)_applyNonInteractiveConfiguration;
- (void)_calculateReachabilityBoundsInPixels;
- (void)_invalidateJindoReason;
- (void)_modifyDefaultPresentationContextHostTransformForWindow:(id)window fromTransform:(id)transform toTransform:(id)toTransform;
- (void)_notifyObserversDidEndReachabilityAnimation;
- (void)_notifyObserversReachabilityModeActive:(BOOL)active;
- (void)_notifyObserversReachabilityYOffsetDidChange;
- (void)_notifyObserversWillBeginReachabilityAnimation;
- (void)_panToDeactivateReachability:(id)reachability;
- (void)_setKeepAliveTimer;
- (void)_setupGestureRecognizers;
- (void)_setupReachabilityWindowIfNecessary;
- (void)_tapToDeactivateReachability:(id)reachability;
- (void)_tearDownReachabilityWindow;
- (void)_transitionWithTransformer:(id)transformer fromTransform:(id)transform toTransform:(id)toTransform;
- (void)_updateReachabilityModeActive:(BOOL)active animated:(BOOL)animated;
- (void)_updateReachabilityWindowForYOffset:(double)offset mode:(int64_t)mode completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)ignoreWindowForReachability:(id)reachability;
- (void)setReachabilityEnabled:(BOOL)enabled;
- (void)setReachabilityTemporarilyDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setReachabilityTemporarilyEnabled:(BOOL)enabled forReason:(id)reason;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)toggleReachability;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBReachabilityManager

+ (id)sharedInstance
{
  if (sharedInstance_token != -1)
  {
    +[SBReachabilityManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

+ (BOOL)reachabilitySupported
{
  if (reachabilitySupported_token != -1)
  {
    +[SBReachabilityManager reachabilitySupported];
  }

  v3 = reachabilitySupported_useReachability;
  if ((reachabilitySupported_useReachability & 1) != 0 || (+[SBReachabilityDomain rootSettings](SBReachabilityDomain, "rootSettings"), v2 = objc_claimAutoreleasedReturnValue(), [v2 allowOnAllDevices]))
  {
    v4 = +[SBDefaults localDefaults];
    accessibilityDefaults = [v4 accessibilityDefaults];
    v6 = [accessibilityDefaults reallyDisableReachability] ^ 1;

    if (v3)
    {
      return v6;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

void __46__SBReachabilityManager_reachabilitySupported__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    reachabilitySupported_useReachability = [v0 BOOLValue];

    CFRelease(v1);
  }
}

uint64_t __39__SBReachabilityManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBReachabilityManager);
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;

  return kdebug_trace();
}

- (SBReachabilityManager)init
{
  v13.receiver = self;
  v13.super_class = SBReachabilityManager;
  v2 = [(SBReachabilityManager *)&v13 init];
  if (v2 && [objc_opt_class() reachabilitySupported])
  {
    v3 = +[SBDefaults localDefaults];
    accessibilityDefaults = [v3 accessibilityDefaults];
    v2->_reachabilityModeEnabled = [accessibilityDefaults allowReachability];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__screenDidDim name:*MEMORY[0x277D67A18] object:0];
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    temporaryDisabledReasons = v2->_temporaryDisabledReasons;
    v2->_temporaryDisabledReasons = v6;

    v2->_effectiveReachabilityYOffset = 0.0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    ignoredWindows = v2->_ignoredWindows;
    v2->_ignoredWindows = weakObjectsHashTable;

    [(SBReachabilityManager *)v2 _setupGestureRecognizers];
    v10 = +[SBReachabilityDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v10;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    [(SBReachabilityManager *)v2 _calculateReachabilityBoundsInPixels];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[SBSystemGestureManager mainDisplayManager];
  [v4 removeGestureRecognizer:self->_reachabilityGestureRecognizer];

  v5 = +[SBSystemGestureManager mainDisplayManager];
  [v5 removeGestureRecognizer:self->_dismissEdgeGestureRecognizer];

  v6 = +[SBSystemGestureManager mainDisplayManager];
  [v6 removeGestureRecognizer:self->_dismissPanGestureRecognizer];

  v7 = +[SBSystemGestureManager mainDisplayManager];
  [v7 removeGestureRecognizer:self->_dismissTapGestureRecognizer];

  v8.receiver = self;
  v8.super_class = SBReachabilityManager;
  [(SBReachabilityManager *)&v8 dealloc];
}

- (BOOL)reachabilityEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_temporaryEnabledReasons count])
  {
    v3 = SBLogReachability();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      temporaryEnabledReasons = self->_temporaryEnabledReasons;
      v7 = 138543362;
      v8 = temporaryEnabledReasons;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Allowing entering reachability mode temporarily for reasons: %{public}@", &v7, 0xCu);
    }

    return 1;
  }

  else
  {
    return self->_reachabilityModeEnabled;
  }
}

- (void)setReachabilityEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  if (+[SBReachabilityManager reachabilitySupported])
  {
    if (enabledCopy)
    {
      if (self->_reachabilityModeEnabled)
      {
        return;
      }

      self->_reachabilityModeEnabled = 1;
      v10 = +[SBDefaults localDefaults];
      accessibilityDefaults = [v10 accessibilityDefaults];
      v6 = accessibilityDefaults;
      v7 = 1;
    }

    else
    {
      if (!self->_reachabilityModeEnabled)
      {
        return;
      }

      [(SBReachabilityManager *)self deactivateReachability];
      self->_reachabilityModeEnabled = 0;
      v10 = +[SBDefaults localDefaults];
      accessibilityDefaults = [v10 accessibilityDefaults];
      v6 = accessibilityDefaults;
      v7 = 0;
    }

    [accessibilityDefaults setAllowReachability:v7];
  }

  else
  {
    v8 = SBLogReachability();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"disable";
      if (enabledCopy)
      {
        v9 = @"enable";
      }

      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Can't %{public}@ reachability on an unsupported device!", buf, 0xCu);
    }
  }
}

- (void)setReachabilityTemporarilyDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (disabledCopy)
  {
    v7 = SBLogReachability();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Adding temporary reason for disabling reachability: %{public}@", &v9, 0xCu);
    }

    [(NSMutableSet *)self->_temporaryDisabledReasons addObject:reasonCopy];
  }

  else if ([(NSMutableSet *)self->_temporaryDisabledReasons containsObject:reasonCopy])
  {
    v8 = SBLogReachability();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Removing temporary reason for disabling reachability: %{public}@", &v9, 0xCu);
    }

    [(NSMutableSet *)self->_temporaryDisabledReasons removeObject:reasonCopy];
  }
}

- (void)setReachabilityTemporarilyEnabled:(BOOL)enabled forReason:(id)reason
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (enabledCopy)
  {
    v7 = SBLogReachability();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Adding temporary reason for enabling reachability: %{public}@", &v12, 0xCu);
    }

    temporaryEnabledReasons = self->_temporaryEnabledReasons;
    if (!temporaryEnabledReasons)
    {
      v9 = [MEMORY[0x277CBEB58] set];
      v10 = self->_temporaryEnabledReasons;
      self->_temporaryEnabledReasons = v9;

      temporaryEnabledReasons = self->_temporaryEnabledReasons;
    }

    [(NSMutableSet *)temporaryEnabledReasons addObject:reasonCopy];
  }

  else if ([(NSMutableSet *)self->_temporaryEnabledReasons containsObject:reasonCopy])
  {
    v11 = SBLogReachability();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Removing temporary reason for enabling reachability: %{public}@", &v12, 0xCu);
    }

    [(NSMutableSet *)self->_temporaryEnabledReasons removeObject:reasonCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)toggleReachability
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_reachabilityModeActive)
  {
    v7 = *MEMORY[0x277D67608];
    v8[0] = &unk_28336F950;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = MEMORY[0x277D65DD0];
    v5 = v3;
    sharedInstance = [v4 sharedInstance];
    [sharedInstance emitEvent:8 withPayload:v5];
  }

  if ([(SBReachabilityManager *)self canActivateReachability])
  {
    [(SBReachabilityManager *)self _toggleReachabilityMode];
  }
}

- (void)ignoreWindowForReachability:(id)reachability
{
  reachabilityCopy = reachability;
  if (![(NSHashTable *)self->_ignoredWindows containsObject:?])
  {
    [(NSHashTable *)self->_ignoredWindows addObject:reachabilityCopy];
    inverseReachabilityTransform = self->_inverseReachabilityTransform;
    if (inverseReachabilityTransform)
    {
      [(SBReachabilityManager *)self _modifyDefaultPresentationContextHostTransformForWindow:reachabilityCopy fromTransform:inverseReachabilityTransform toTransform:self->_inverseReachabilityTransform];
    }
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_settings == settings && [key isEqualToString:@"yOffset"])
  {

    [(SBReachabilityManager *)self _calculateReachabilityBoundsInPixels];
  }
}

- (void)_calculateReachabilityBoundsInPixels
{
  GSMainScreenPixelSize();
  BSRectWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBReachabilityManager *)self reachabilityYOffset];
  v12 = v11;
  GSMainScreenScaleFactor();
  v14 = v12 * v13;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MaxY = CGRectGetMaxY(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v19.size.width = CGRectGetWidth(v17);
  v19.origin.x = 0.0;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v19.origin.y = MaxY;
  v19.size.height = v14;
  self->_reachabilityBoundsInPixels = CGRectUnion(v18, v19);
}

- (void)_updateReachabilityModeActive:(BOOL)active animated:(BOOL)animated
{
  if (self->_reachabilityModeActive != active)
  {
    v27 = v7;
    v28 = v6;
    v29 = v4;
    v30 = v5;
    animatedCopy = animated;
    activeCopy = active;
    self->_reachabilityModeActive = active;
    if (self->_attentionAwarenessClient)
    {
      v11 = SBLogReachability();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v26[0] = 0;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "invalidate attention client", v26, 2u);
      }

      [(AWAttentionAwarenessClient *)self->_attentionAwarenessClient invalidateWithError:0];
      attentionAwarenessClient = self->_attentionAwarenessClient;
      self->_attentionAwarenessClient = 0;
    }

    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__SBReachabilityManager__updateReachabilityModeActive_animated___block_invoke;
    v24[3] = &__block_descriptor_33_e5__8__0l;
    v25 = activeCopy;
    [mEMORY[0x277D6A798] logBlock:v24];

    v14 = SBLogReachability();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (activeCopy)
    {
      if (v15)
      {
        v26[0] = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "reachability activated", v26, 2u);
      }

      [(SBReachabilityManager *)self _setKeepAliveTimer];
      zStackResolver = [(SBWindowScene *)self->_windowScene zStackResolver];
      v17 = [zStackResolver acquireParticipantWithIdentifier:25 delegate:self];
      zStackParticipant = self->_zStackParticipant;
      self->_zStackParticipant = v17;

      v19 = 6;
    }

    else
    {
      if (v15)
      {
        v26[0] = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "reachability deactivated", v26, 2u);
      }

      [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
      zStackResolver = self->_zStackParticipant;
      self->_zStackParticipant = 0;
      v19 = 7;
    }

    [(SBReachabilityManager *)self _setupReachabilityWindowIfNecessary];
    mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
    [mEMORY[0x277D65DD0] emitEvent:v19];

    v21 = 0;
    if (activeCopy)
    {
      [(SBReachabilityManager *)self reachabilityYOffset];
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__SBReachabilityManager__updateReachabilityModeActive_animated___block_invoke_55;
    v23[3] = &unk_2783A9158;
    if (animatedCopy)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v23[4] = self;
    v23[5] = v21;
    [(SBReachabilityManager *)self _updateReachabilityWindowForYOffset:v22 mode:v23 completion:?];
    [(SBReachabilityManager *)self _notifyObserversReachabilityModeActive:self->_reachabilityModeActive];
  }
}

id __64__SBReachabilityManager__updateReachabilityModeActive_animated___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"[SBReachabilityManager _updateReachabilityModeActive:]";
  v5 = @"active";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6 = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v3;
}

_BYTE *__64__SBReachabilityManager__updateReachabilityModeActive_animated___block_invoke_55(uint64_t a1)
{
  result = BSFloatEqualToFloat();
  if (result)
  {
    result = *(a1 + 32);
    if ((result[24] & 1) == 0)
    {

      return [result _tearDownReachabilityWindow];
    }
  }

  return result;
}

- (id)_attentionAwarenessConfigurationWithTimeout:(double)timeout tag:(id)tag
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF768];
  tagCopy = tag;
  v7 = objc_alloc_init(v5);
  [v7 setIdentifier:@"SBReachabilityManager"];
  [v7 setEventMask:3967];
  v11[0] = &unk_28336F968;
  v12[0] = @"initial";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  v11[1] = v8;
  v12[1] = @"interactive";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v7 setAttentionLostTimeoutDictionary:v9];

  [v7 setTag:tagCopy];

  return v7;
}

- (void)_applyInteractiveConfiguration
{
  v9[1] = *MEMORY[0x277D85DE8];
  [(SBReachabilitySettings *)self->_settings reachabilityInteractiveKeepAlive];
  v4 = v3;
  v5 = objc_alloc_init(MEMORY[0x277CEF768]);
  [v5 setIdentifier:@"ReachabilityInteractive"];
  [v5 setEventMask:3967];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v8 = v6;
  v9[0] = @"interactive";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 setAttentionLostTimeoutDictionary:v7];

  [v5 setTag:@"interactive"];
  [v5 setEventMask:3967];
  [(AWAttentionAwarenessClient *)self->_attentionAwarenessClient setConfiguration:v5 shouldReset:0];
}

- (void)_applyNonInteractiveConfiguration
{
  v9[2] = *MEMORY[0x277D85DE8];
  [(SBReachabilitySettings *)self->_settings reachabilityDefaultKeepAlive];
  v4 = v3;
  v5 = objc_alloc_init(MEMORY[0x277CEF768]);
  [v5 setIdentifier:@"ReachabilityNonInteractive"];
  [v5 setEventMask:3967];
  v8[0] = &unk_28336F968;
  v9[0] = @"start";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v8[1] = v6;
  v9[1] = @"nonInteractive";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v5 setAttentionLostTimeoutDictionary:v7];

  [v5 setTag:@"nonInteractive"];
  [(AWAttentionAwarenessClient *)self->_attentionAwarenessClient setConfiguration:v5 shouldReset:1];
}

- (void)_setKeepAliveTimer
{
  if (!self->_attentionAwarenessClient)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEF760]);
    attentionAwarenessClient = self->_attentionAwarenessClient;
    self->_attentionAwarenessClient = v3;

    [(SBReachabilityManager *)self _applyNonInteractiveConfiguration];
    objc_initWeak(&location, self);
    v5 = self->_attentionAwarenessClient;
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__SBReachabilityManager__setKeepAliveTimer__block_invoke;
    v10[3] = &unk_2783A9180;
    objc_copyWeak(&v11, &location);
    [(AWAttentionAwarenessClient *)v5 setEventHandlerWithQueue:v6 block:v10];

    v8 = SBLogReachability();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "timer start", v9, 2u);
    }

    [(AWAttentionAwarenessClient *)self->_attentionAwarenessClient resumeWithError:0];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __43__SBReachabilityManager__setKeepAliveTimer__block_invoke(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_27;
  }

  if ([v3 eventMask])
  {
    v9 = objc_opt_class();
    v10 = v3;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    v12 = [v7 associatedObject];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 isEqual:@"start"];
      v15 = SBLogReachability();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if ((v14 & 1) == 0)
      {
        if (v16)
        {
          v24 = 138543362;
          v25 = v13;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "timed out (%{public}@)", &v24, 0xCu);
        }

        v28 = *MEMORY[0x277D67608];
        v29[0] = &unk_28336F980;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v21 = MEMORY[0x277D65DD0];
        v22 = v20;
        v23 = [v21 sharedInstance];
        [v23 emitEvent:8 withPayload:v22];

        [WeakRetained _updateReachabilityModeActive:0];
        goto LABEL_25;
      }

      if (v16)
      {
        v24 = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v7;
        v17 = "ignoring attn lost (%{public}@) -- %{public}@";
        v18 = v15;
        v19 = 22;
LABEL_20:
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v24, v19);
      }
    }

    else
    {
      v15 = SBLogReachability();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        v25 = [v7 eventMask];
        v17 = "ignoring attn reset (mask %llX)";
        v18 = v15;
        v19 = 12;
        goto LABEL_20;
      }
    }

LABEL_25:
LABEL_26:

    goto LABEL_27;
  }

  v5 = [v3 tag];
  v6 = [v5 isEqual:@"nonInteractive"];

  v7 = SBLogReachability();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      v24 = 134217984;
      v25 = [v3 eventMask];
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "already in interactive mode -- ignoring event (%llX)", &v24, 0xCu);
    }

    goto LABEL_26;
  }

  if (v8)
  {
    v24 = 134217984;
    v25 = [v3 eventMask];
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "event (%llX) -- shortening to interactive timeout", &v24, 0xCu);
  }

  [WeakRetained _applyInteractiveConfiguration];
LABEL_27:
}

- (void)_notifyObserversReachabilityModeActive:(BOOL)active
{
  activeCopy = active;
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(NSHashTable *)self->_observers copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = SBLogReachability();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = 138543362;
          v19 = v13;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "notifying observer of reachability state change: %{public}@", buf, 0xCu);
        }

        if (activeCopy)
        {
          if (objc_opt_respondsToSelector())
          {
            [v10 handleReachabilityModeActivated];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          [v10 handleReachabilityModeDeactivated];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversReachabilityYOffsetDidChange
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(NSHashTable *)self->_observers copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = SBLogReachability();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543362;
          v17 = v11;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "notifying observer of reachability yOffset change: %{public}@", buf, 0xCu);
        }

        if (objc_opt_respondsToSelector())
        {
          [v8 handleReachabilityYOffsetDidChange];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversWillBeginReachabilityAnimation
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(NSHashTable *)self->_observers copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = SBLogReachability();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543362;
          v17 = v11;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "notifying observer of will begin reachability animation: %{public}@", buf, 0xCu);
        }

        if (objc_opt_respondsToSelector())
        {
          [v8 handleWillBeginReachabilityAnimation];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversDidEndReachabilityAnimation
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(NSHashTable *)self->_observers copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = SBLogReachability();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543362;
          v17 = v11;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "notifying observer of did end reachability animation: %{public}@", buf, 0xCu);
        }

        if (objc_opt_respondsToSelector())
        {
          [v8 handleDidEndReachabilityAnimation];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_invalidateJindoReason
{
  jindoInertAssertion = self->_jindoInertAssertion;
  if (jindoInertAssertion)
  {
    [(SAInvalidatable *)jindoInertAssertion invalidateWithReason:@"Reachability Complete"];
    v4 = self->_jindoInertAssertion;
    self->_jindoInertAssertion = 0;
  }

  jindoInertTimer = self->_jindoInertTimer;
  if (jindoInertTimer)
  {
    [(BSContinuousMachTimer *)jindoInertTimer invalidate];
    v6 = self->_jindoInertTimer;
    self->_jindoInertTimer = 0;
  }
}

- (BOOL)canActivateReachability
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(SBReachabilityManager *)self reachabilityEnabled])
  {
    v6 = SBLogReachability();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Can't enter reachability mode since it is disabled.", buf, 2u);
    }

    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    v8 = mEMORY[0x277D6A798];
    v9 = &__block_literal_global_101;
    goto LABEL_13;
  }

  if ([SBApp activeInterfaceOrientation] != 1)
  {
    v10 = SBLogReachability();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Can't enter reachability mode in a non-portrait orientation", buf, 2u);
    }

    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    v8 = mEMORY[0x277D6A798];
    v9 = &__block_literal_global_121;
LABEL_13:
    [mEMORY[0x277D6A798] logBlock:v9];

    return 0;
  }

  if ([(NSMutableSet *)self->_temporaryDisabledReasons count])
  {
    v3 = SBLogReachability();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      temporaryDisabledReasons = self->_temporaryDisabledReasons;
      *buf = 138543362;
      v21 = temporaryDisabledReasons;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Can't enter reachability mode temporarily for these reasons: %{public}@", buf, 0xCu);
    }

    mEMORY[0x277D6A798]2 = [MEMORY[0x277D6A798] sharedInstance];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__SBReachabilityManager_canActivateReachability__block_invoke_133;
    v19[3] = &unk_2783A91C8;
    v19[4] = self;
    [mEMORY[0x277D6A798]2 logBlock:v19];

    return 0;
  }

  v13 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  anyObject = [v13 anyObject];

  application = [anyObject application];
  if (application && ([anyObject isReachabilitySupported] & 1) == 0)
  {
    v17 = SBLogReachability();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Can't enter reachability mode because the app doesn't support reachability.", buf, 2u);
    }

    mEMORY[0x277D6A798]3 = [MEMORY[0x277D6A798] sharedInstance];
    [mEMORY[0x277D6A798]3 logBlock:&__block_literal_global_142];

    v11 = 0;
  }

  else
  {
    mEMORY[0x277D6A798]4 = [MEMORY[0x277D6A798] sharedInstance];
    [mEMORY[0x277D6A798]4 logBlock:&__block_literal_global_155];

    v11 = 1;
  }

  return v11;
}

id __48__SBReachabilityManager_canActivateReachability__block_invoke_133(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"[SBReachabilityManager canActivateReachability:]";
  v4[0] = @"result";
  v4[1] = @"reason";
  v5[0] = &unk_28336F968;
  v5[1] = @"NoReachabilityTempDisabled";
  v4[2] = @"tempReasons";
  v5[2] = *(*(a1 + 32) + 56);
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v2;
}

- (void)_setupGestureRecognizers
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v3 = [[SBReachabilityGestureRecognizer alloc] initWithTarget:self action:sel__activateReachability_];
    reachabilityGestureRecognizer = self->_reachabilityGestureRecognizer;
    self->_reachabilityGestureRecognizer = v3;

    [(SBReachabilityGestureRecognizer *)self->_reachabilityGestureRecognizer setDelegate:self];
    [(SBReachabilityGestureRecognizer *)self->_reachabilityGestureRecognizer setAllowedTouchTypes:&unk_28336DA58];
    v5 = +[SBSystemGestureManager mainDisplayManager];
    [v5 addGestureRecognizer:self->_reachabilityGestureRecognizer withType:64];
  }

  v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:sel__panToDeactivateReachability_];
  dismissEdgeGestureRecognizer = self->_dismissEdgeGestureRecognizer;
  self->_dismissEdgeGestureRecognizer = v6;

  [(UIScreenEdgePanGestureRecognizer *)self->_dismissEdgeGestureRecognizer setEdges:4];
  [(SBScreenEdgePanGestureRecognizer *)self->_dismissEdgeGestureRecognizer setDelegate:self];
  [(SBScreenEdgePanGestureRecognizer *)self->_dismissEdgeGestureRecognizer setAllowedTouchTypes:&unk_28336DA70];
  if ((_SBF_Private_IsD16() & 1) != 0 || (_SBF_Private_IsD17() & 1) != 0 || (_SBF_Private_IsD63() & 1) != 0 || (_SBF_Private_IsD64() & 1) != 0 || _SBF_Private_IsV59())
  {
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    coverSheetDismissGestureSettings = [rootSettings coverSheetDismissGestureSettings];

    v10 = self->_dismissEdgeGestureRecognizer;
    [coverSheetDismissGestureSettings edgeRegionSize];
    [(UIScreenEdgePanGestureRecognizer *)v10 _setEdgeRegionSize:?];
    v11 = self->_dismissEdgeGestureRecognizer;
    [coverSheetDismissGestureSettings edgeRegionSize];
    [(UIScreenEdgePanGestureRecognizer *)v11 _setBottomEdgeRegionSize:?];
  }

  v12 = +[SBSystemGestureManager mainDisplayManager];
  [v12 addGestureRecognizer:self->_dismissEdgeGestureRecognizer withType:65];

  v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapToDeactivateReachability_];
  dismissTapGestureRecognizer = self->_dismissTapGestureRecognizer;
  self->_dismissTapGestureRecognizer = v13;

  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer _setRequiresSystemGesturesToFail:0];
  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setAllowedTouchTypes:&unk_28336DA88];
  v15 = +[SBSystemGestureManager mainDisplayManager];
  [v15 addGestureRecognizer:self->_dismissTapGestureRecognizer withType:67];

  v16 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__panToDeactivateReachability_];
  dismissPanGestureRecognizer = self->_dismissPanGestureRecognizer;
  self->_dismissPanGestureRecognizer = v16;

  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setDelegate:self];
  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setAllowedTouchTypes:&unk_28336DAA0];
  v18 = +[SBSystemGestureManager mainDisplayManager];
  [v18 addGestureRecognizer:self->_dismissPanGestureRecognizer withType:66];

  [(SBScreenEdgePanGestureRecognizer *)self->_dismissEdgeGestureRecognizer setEnabled:0];
  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setEnabled:0];
  v19 = self->_dismissPanGestureRecognizer;

  [(UIPanGestureRecognizer *)v19 setEnabled:0];
}

- (void)_setupReachabilityWindowIfNecessary
{
  if (self->_reachabilityModeActive)
  {
    v15[11] = v2;
    v15[12] = v3;
    v5 = +[SBCoverSheetPresentationManager sharedInstance];
    uiLockStateProvider = [v5 uiLockStateProvider];
    if ([uiLockStateProvider isUILocked])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 isDismissGestureActive] ^ 1;
    }

    reachabilityWindow = self->_reachabilityWindow;
    if (!reachabilityWindow)
    {
      v9 = [[SBReachabilityWindow alloc] initWithWallpaperVariant:v7 windowScene:self->_windowScene];
      v10 = self->_reachabilityWindow;
      self->_reachabilityWindow = v9;

      [(SBWindow *)self->_reachabilityWindow setHidden:0];
      v11 = [(SBReachabilityManager *)self _sceneForWindow:self->_reachabilityWindow];
      uiPresentationManager = [v11 uiPresentationManager];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__SBReachabilityManager__setupReachabilityWindowIfNecessary__block_invoke;
      v15[3] = &unk_2783A9210;
      v15[4] = self;
      [uiPresentationManager modifyDefaultPresentationContext:v15];

      reachabilityWindow = self->_reachabilityWindow;
    }

    view = [(SBReachabilityWindow *)reachabilityWindow view];
    [view setWallpaperVariant:v7];

    v14 = +[SBOrientationLockManager sharedInstance];
    [v14 setLockOverrideEnabled:1 forReason:@"Reachability"];

    [(SBScreenEdgePanGestureRecognizer *)self->_dismissEdgeGestureRecognizer setEnabled:1];
    [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setEnabled:1];
    [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setEnabled:1];
  }
}

void __60__SBReachabilityManager__setupReachabilityWindowIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75968];
  v3 = *(*(a1 + 32) + 64);
  v4 = a2;
  v5 = [v2 targetForUIWindow:v3];
  [v4 modifyLayerPresentationOverrideContextForLayerTarget:v5 block:&__block_literal_global_195];
}

- (void)_tearDownReachabilityWindow
{
  v3 = +[SBOrientationLockManager sharedInstance];
  [v3 setLockOverrideEnabled:0 forReason:@"Reachability"];

  [(SBScreenEdgePanGestureRecognizer *)self->_dismissEdgeGestureRecognizer setEnabled:0];
  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setEnabled:0];
  [(UIPanGestureRecognizer *)self->_dismissPanGestureRecognizer setEnabled:0];
  v4 = [(SBReachabilityManager *)self _sceneForWindow:self->_reachabilityWindow];
  uiPresentationManager = [v4 uiPresentationManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SBReachabilityManager__tearDownReachabilityWindow__block_invoke;
  v7[3] = &unk_2783A9210;
  v7[4] = self;
  [uiPresentationManager modifyDefaultPresentationContext:v7];

  [(SBWindow *)self->_reachabilityWindow setHidden:1];
  reachabilityWindow = self->_reachabilityWindow;
  self->_reachabilityWindow = 0;
}

void __52__SBReachabilityManager__tearDownReachabilityWindow__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75968];
  v3 = *(*(a1 + 32) + 64);
  v4 = a2;
  v5 = [v2 targetForUIWindow:v3];
  [v4 removeLayerPresentationOverrideForLayerTarget:v5];
}

- (void)_modifyDefaultPresentationContextHostTransformForWindow:(id)window fromTransform:(id)transform toTransform:(id)toTransform
{
  windowCopy = window;
  transformCopy = transform;
  toTransformCopy = toTransform;
  v11 = [(SBReachabilityManager *)self _sceneForWindow:windowCopy];
  uiPresentationManager = [v11 uiPresentationManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__SBReachabilityManager__modifyDefaultPresentationContextHostTransformForWindow_fromTransform_toTransform___block_invoke;
  v16[3] = &unk_2783A9260;
  v17 = windowCopy;
  v18 = toTransformCopy;
  selfCopy = self;
  v20 = transformCopy;
  v13 = transformCopy;
  v14 = toTransformCopy;
  v15 = windowCopy;
  [uiPresentationManager modifyDefaultPresentationContext:v16];
}

void __107__SBReachabilityManager__modifyDefaultPresentationContextHostTransformForWindow_fromTransform_toTransform___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75968];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 targetForUIWindow:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__SBReachabilityManager__modifyDefaultPresentationContextHostTransformForWindow_fromTransform_toTransform___block_invoke_2;
  v10[3] = &unk_2783A9238;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  [v5 modifyLayerPresentationOverrideContextForLayerTarget:v6 block:v10];
}

void __107__SBReachabilityManager__modifyDefaultPresentationContextHostTransformForWindow_fromTransform_toTransform___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 transformer];
  v8 = [v4 mutableCopy];

  v5 = v8;
  if (!v8)
  {
    if (*(a1 + 32))
    {
      v5 = objc_alloc_init(MEMORY[0x277D75778]);
    }

    else
    {
      v5 = 0;
    }
  }

  v9 = v5;
  [*(a1 + 40) _transitionWithTransformer:v5 fromTransform:*(a1 + 48) toTransform:*(a1 + 32)];
  v6 = [v9 transforms];
  if ([v6 count])
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  [v3 setTransformer:v7];
}

- (void)_transitionWithTransformer:(id)transformer fromTransform:(id)transform toTransform:(id)toTransform
{
  transformerCopy = transformer;
  transformCopy = transform;
  toTransformCopy = toTransform;
  if (transformCopy)
  {
    [transformerCopy removeTransform:transformCopy];
  }

  if (toTransformCopy)
  {
    [transformerCopy addTransform:toTransformCopy reason:@"reachability"];
  }
}

- (void)_updateReachabilityWindowForYOffset:(double)offset mode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_effectiveReachabilityYOffset == offset)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    view = [(SBReachabilityWindow *)self->_reachabilityWindow view];
    v11 = MEMORY[0x277D75D18];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke;
    v60[3] = &unk_2783A8C18;
    v12 = view;
    v61 = v12;
    [v11 performWithoutAnimation:v60];
    animationsInFlight = self->_animationsInFlight;
    if (!animationsInFlight)
    {
      [(SBReachabilityManager *)self _notifyObserversWillBeginReachabilityAnimation];
      animationsInFlight = self->_animationsInFlight;
    }

    self->_animationsInFlight = animationsInFlight + 1;
    self->_effectiveReachabilityYOffset = offset;
    windowScene = [(SBReachabilityWindow *)self->_reachabilityWindow windowScene];
    _FBSScene = [windowScene _FBSScene];
    settings = [_FBSScene settings];
    displayConfiguration = [settings displayConfiguration];
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];
    BKSDisplayServicesSetReachabilityBounds();

    v19 = self->_inverseReachabilityTransform;
    if (BSFloatIsZero())
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x277D75CD8] translation:{0.0, -offset}];
    }

    inverseReachabilityTransform = self->_inverseReachabilityTransform;
    self->_inverseReachabilityTransform = v20;

    v22 = self->_reachabilityTransform;
    if (BSFloatIsZero())
    {
      v23 = 0;
    }

    else
    {
      v23 = [MEMORY[0x277D75CD8] translation:{0.0, offset}];
    }

    reachabilityTransform = self->_reachabilityTransform;
    self->_reachabilityTransform = v23;

    animationSettings = [(SBReachabilitySettings *)self->_settings animationSettings];
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    [MEMORY[0x277D75D18] setAnimationsEnabled:1];
    if (!self->_jindoInertAssertion)
    {
      systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
      v27 = [systemApertureControllerForMainDisplay restrictSystemApertureToInertWithReason:@"Reachability"];
      jindoInertAssertion = self->_jindoInertAssertion;
      self->_jindoInertAssertion = v27;

      if (mode != 5 && !self->_jindoInertTimer)
      {
        v29 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"com.apple.SBReachabilityManager.SystemApertureInertTimer"];
        jindoInertTimer = self->_jindoInertTimer;
        self->_jindoInertTimer = v29;

        objc_initWeak(&location, self);
        [animationSettings settlingDuration];
        v32 = v31;
        [(SBReachabilitySettings *)self->_settings jindoInertDisableOffset];
        v34 = ((v32 - v33) & ~((v32 - v33) >> 31));
        v35 = self->_jindoInertTimer;
        v36 = MEMORY[0x277D85CD0];
        v37 = MEMORY[0x277D85CD0];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_2;
        v57[3] = &unk_2783A8AE8;
        objc_copyWeak(&v58, &location);
        [(BSContinuousMachTimer *)v35 scheduleWithFireInterval:v36 leewayInterval:v57 queue:v34 handler:0.0];

        objc_destroyWeak(&v58);
        objc_destroyWeak(&location);
      }
    }

    v38 = MEMORY[0x277D75D18];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_3;
    v52[3] = &unk_2783A9288;
    v52[4] = self;
    v53 = v22;
    v54 = v19;
    v39 = v12;
    v55 = v39;
    offsetCopy = offset;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_4;
    v49[3] = &unk_2783A92B0;
    v49[4] = self;
    modeCopy = mode;
    v50 = v9;
    v40 = v19;
    v41 = v22;
    [v38 sb_animateWithSettings:animationSettings mode:mode animations:v52 completion:v49];
    v42 = 0.0;
    if (self->_reachabilityModeActive)
    {
      v42 = 0.1;
    }

    v43 = [MEMORY[0x277CF0B70] settingsWithDuration:0.15 delay:v42];
    v44 = MEMORY[0x277CF0D38];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_5;
    v47[3] = &unk_2783A92D8;
    v47[4] = self;
    v48 = v39;
    v45 = v39;
    [v44 animateWithSettings:v43 actions:v47];
    [MEMORY[0x277D75D18] setAnimationsEnabled:areAnimationsEnabled];
  }
}

uint64_t __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invalidateJindoReason];
    WeakRetained = v2;
  }
}

void __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
  v3 = [v2 rootWindow];
  v4 = [v3 sceneTransformer];

  [*(a1 + 32) _transitionWithTransformer:v4 fromTransform:*(a1 + 40) toTransform:*(*(a1 + 32) + 72)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [*(a1 + 32) ignoredWindows];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _modifyDefaultPresentationContextHostTransformForWindow:*(*(&v13 + 1) + 8 * v9++) fromTransform:*(a1 + 48) toTransform:*(*(a1 + 32) + 80)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [*(a1 + 56) setContainerViewYOffset:*(a1 + 64)];
  v10 = *(a1 + 32);
  v11 = 0.0;
  if (*(v10 + 24) == 1 && ([*(v10 + 192) state] - 1) <= 1)
  {
    [*(a1 + 32) reachabilityYOffset];
    BSUIConstrainValueWithRubberBand();
    v11 = v12;
    if (v12 < -*(a1 + 64))
    {
      v11 = -*(a1 + 64);
    }
  }

  [*(a1 + 56) setHomeGrabberAdditionalOffset:v11];
  [*(a1 + 32) _notifyObserversReachabilityYOffsetDidChange];
}

void *__77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) reachabilityModeActive])
  {
    [*(a1 + 32) reachabilityYOffset];
  }

  v6 = BSFloatEqualToFloat();
  if (*(a1 + 48) != 5 && v6 != 0)
  {
    [*(a1 + 32) _invalidateJindoReason];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, a3);
  }

  --*(*(a1 + 32) + 112);
  result = *(a1 + 32);
  if (!result[14])
  {

    return [result _notifyObserversDidEndReachabilityAnimation];
  }

  return result;
}

uint64_t __77__SBReachabilityManager__updateReachabilityWindowForYOffset_mode_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (*(v2 + 24))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if ([*(v2 + 200) state] != 1 && objc_msgSend(*(*(a1 + 32) + 200), "state") != 2)
  {
    if ([*(*(a1 + 32) + 192) state] == 1 || objc_msgSend(*(*(a1 + 32) + 192), "state") == 2)
    {
      v3 = v4;
      v4 = 0.0;
    }

    else
    {
      v3 = v4;
    }
  }

  [*(a1 + 40) setHomeGrabberAlpha:v3];
  v5 = *(a1 + 40);

  return [v5 setChevronAlpha:v4];
}

- (id)_sceneForWindow:(id)window
{
  _scene = [window _scene];
  identifier = [_scene identifier];

  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v6 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:identifier];

  return v6;
}

- (void)_activateReachability:(id)reachability
{
  if ([reachability state] == 3 && -[SBReachabilityManager canActivateReachability](self, "canActivateReachability"))
  {

    [(SBReachabilityManager *)self _updateReachabilityModeActive:1];
  }
}

- (void)_tapToDeactivateReachability:(id)reachability
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([reachability state] == 3)
  {
    v8 = *MEMORY[0x277D67608];
    v9[0] = &unk_28336F9C8;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = MEMORY[0x277D65DD0];
    v6 = v4;
    sharedInstance = [v5 sharedInstance];
    [sharedInstance emitEvent:8 withPayload:v6];

    [(SBReachabilityManager *)self deactivateReachability];
  }
}

- (void)_panToDeactivateReachability:(id)reachability
{
  v27[1] = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  [(SBReachabilityManager *)self reachabilityYOffset];
  v6 = v5;
  view = [(UIPanGestureRecognizer *)reachabilityCopy view];
  state = [(UIPanGestureRecognizer *)reachabilityCopy state];
  if ((state - 1) > 1)
  {
    reachabilityModeActive = self->_reachabilityModeActive;
    if (state != 3)
    {
      goto LABEL_10;
    }

    [(UIPanGestureRecognizer *)reachabilityCopy velocityInView:view];
    v14 = v13;
    [(UIPanGestureRecognizer *)reachabilityCopy locationInView:view];
    v16 = v15 + v14 * 0.15;
    [(SBReachabilityWindow *)self->_reachabilityWindow bounds];
    v18 = v17 + -100.0;
    if (self->_reachabilityModeActive && self->_dismissPanGestureRecognizer == reachabilityCopy)
    {
      v18 = v18 - v6;
    }

    if (v16 < v18)
    {
      v26 = *MEMORY[0x277D67608];
      v27[0] = &unk_28336F9E0;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v20 = MEMORY[0x277D65DD0];
      v21 = v19;
      sharedInstance = [v20 sharedInstance];
      [sharedInstance emitEvent:8 withPayload:v21];

      [(SBReachabilityManager *)self _updateReachabilityModeActive:0];
      v10 = 0.0;
    }

    else
    {
LABEL_10:
      [(SBReachabilityManager *)self _updateReachabilityModeActive:reachabilityModeActive];
      v10 = 0.0;
      if (reachabilityModeActive)
      {
        v10 = v6;
      }
    }

    selfCopy2 = self;
    v24 = 3;
  }

  else
  {
    [(UIPanGestureRecognizer *)reachabilityCopy translationInView:view];
    v10 = v6 + v9;
    if (v6 + v9 >= 0.0)
    {
      if (v10 > v6)
      {
        [(SBReachabilityWindow *)self->_reachabilityWindow bounds];
        BSUIConstrainValueWithRubberBand();
        v10 = v6 + v25;
      }
    }

    else
    {
      [(SBReachabilityWindow *)self->_reachabilityWindow bounds];
      BSUIConstrainValueWithRubberBand();
      v10 = -v11;
    }

    selfCopy2 = self;
    v24 = 5;
  }

  [(SBReachabilityManager *)selfCopy2 _updateReachabilityWindowForYOffset:v24 mode:0 completion:v10];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_dismissPanGestureRecognizer == recognizerCopy || self->_dismissTapGestureRecognizer == recognizerCopy)
  {
    view = [(SBScreenEdgePanGestureRecognizer *)recognizerCopy view];
    [touchCopy locationInView:view];
    v11 = v10;

    v8 = self->_reachabilityModeActive && v11 < self->_effectiveReachabilityYOffset;
  }

  else
  {
    v8 = self->_dismissEdgeGestureRecognizer != recognizerCopy || self->_reachabilityModeActive;
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_reachabilityGestureRecognizer == beginCopy)
  {
    ownsHomeGesture = !self->_reachabilityModeActive;
  }

  else if (self->_dismissEdgeGestureRecognizer == beginCopy && (zStackParticipant = self->_zStackParticipant) != 0)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
  }

  else
  {
    ownsHomeGesture = 1;
  }

  return ownsHomeGesture & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_reachabilityGestureRecognizer != recognizer)
  {
    return 0;
  }

  gestureRecognizerCopy = gestureRecognizer;
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, gestureRecognizerCopy);

  v4 = !v7 || [v7 edges] != 1;
  return v4;
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:0];
  [preferencesCopy setHomeGestureConsumption:1];
}

@end