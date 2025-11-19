@interface _UIMotionEffectEngine
+ (BOOL)_motionEffectsEnabled;
+ (BOOL)_motionEffectsSupported;
- (BOOL)_hasMotionEffectsForView:(id)a3;
- (BOOL)_motionEffect:(id)a3 belongsToView:(id)a4;
- (BOOL)_motionEffectsAreSuspendedForView:(id)a3;
- (BOOL)_shouldGenerateUpdates;
- (NSString)debugDescription;
- (_UIMotionEffectEngine)init;
- (id)_motionEffectsForView:(id)a3;
- (void)_applyEffectsFromAnalyzer:(id)a3;
- (void)_handleLatestDeviceMotion;
- (void)_startGeneratingUpdates;
- (void)_startOrStopGeneratingUpdates;
- (void)_stopGeneratingUpdates;
- (void)_toggleSlowUpdates;
- (void)_unapplyAllEffects;
- (void)_unregisterAllMotionEffectsForView:(id)a3;
- (void)_unregisterMotionEffect:(id)a3 fromView:(id)a4;
- (void)_updateDisplayLinkInterval;
- (void)beginApplyingMotionEffect:(id)a3 toView:(id)a4;
- (void)beginSuspendingForReason:(id)a3;
- (void)beginSuspendingMotionEffectsForView:(id)a3;
- (void)dealloc;
- (void)endApplyingMotionEffect:(id)a3 toView:(id)a4;
- (void)endSuspendingForReason:(id)a3;
- (void)endSuspendingMotionEffectsForView:(id)a3;
- (void)resetMotionAnalysis;
- (void)updateEventProviderStatus:(int64_t)a3;
- (void)updateWithEvent:(id)a3;
@end

@implementation _UIMotionEffectEngine

+ (BOOL)_motionEffectsEnabled
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED499010 != -1)
  {
    dispatch_once(&qword_1ED499010, &__block_literal_global_431);
  }

  v2 = _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache;
  if (_UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache == -1)
  {
    if (_AXSReduceMotionEnabled())
    {
      v2 = 0;
      _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache = 0;
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v4 = _UIKitUserDefaults();
      if (qword_1ED499018 != -1)
      {
        dispatch_once(&qword_1ED499018, &__block_literal_global_180);
      }

      if (_MergedGlobals_13_4 == 1)
      {
        v9 = @"UIMotionEffectsEnabled";
        v10[0] = MEMORY[0x1E695E118];
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
        [v4 registerDefaults:v5];

        _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache = [v4 BOOLForKey:@"UIMotionEffectsEnabled"];
      }

      else
      {
        v6 = [v4 objectForKey:@"UIMotionEffectsEnabled"];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 BOOLValue];
        }

        else
        {
          if ([UIApp _isSpringBoard])
          {
            [v4 setBool:0 forKey:@"UIMotionEffectsEnabled"];
            [v4 synchronize];
          }

          v8 = 0;
        }

        _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache = v8;
      }

      v2 = _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache;
    }

    else
    {
      if (qword_1ED499018 != -1)
      {
        dispatch_once(&qword_1ED499018, &__block_literal_global_180);
      }

      v2 = _MergedGlobals_13_4;
      _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache = _MergedGlobals_13_4;
    }
  }

  return v2 == 1;
}

- (BOOL)_shouldGenerateUpdates
{
  v3 = [objc_opt_class() _motionEffectsEnabled];
  if (v3)
  {
    if ([(_UIMotionEffectEngine *)self _isSuspended])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(_UIAssociationTable *)self->_effectViewAssociationTable isEmpty];
    }
  }

  return v3;
}

- (void)_startOrStopGeneratingUpdates
{
  if ([(_UIMotionEffectEngine *)self _shouldGenerateUpdates])
  {
    if (!self->_generatingUpdates)
    {

      [(_UIMotionEffectEngine *)self _startGeneratingUpdates];
    }
  }

  else if (self->_generatingUpdates)
  {

    [(_UIMotionEffectEngine *)self _stopGeneratingUpdates];
  }
}

+ (BOOL)_motionEffectsSupported
{
  if (qword_1ED499018 != -1)
  {
    dispatch_once(&qword_1ED499018, &__block_literal_global_180);
  }

  return _MergedGlobals_13_4;
}

- (_UIMotionEffectEngine)init
{
  v33.receiver = self;
  v33.super_class = _UIMotionEffectEngine;
  v2 = [(_UIMotionEffectEngine *)&v33 init];
  if (v2)
  {
    v3 = objc_alloc_init([objc_opt_class() _eventProviderClass]);
    eventProvider = v2->_eventProvider;
    v2->_eventProvider = v3;

    [(_UIMotionEffectEventProvider *)v2->_eventProvider setConsumer:v2];
    v5 = [[_UIAssociationTable alloc] initWithLeftValueOptions:512 rightValueOptions:256];
    effectViewAssociationTable = v2->_effectViewAssociationTable;
    v2->_effectViewAssociationTable = v5;

    v7 = [_UILazyMapTable alloc];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __29___UIMotionEffectEngine_init__block_invoke;
    v31[3] = &unk_1E7119960;
    v8 = v2;
    v32 = v8;
    v9 = [(_UILazyMapTable *)v7 initWithMappingBlock:v31];
    analyzerSettingsToAnalyzers = v8->_analyzerSettingsToAnalyzers;
    v8->_analyzerSettingsToAnalyzers = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:1];
    analyzersToEffects = v8->_analyzersToEffects;
    v8->_analyzersToEffects = v11;

    v13 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:0];
    suspendedViewsToEffectSets = v8->_suspendedViewsToEffectSets;
    v8->_suspendedViewsToEffectSets = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    suspendReasons = v8->_suspendReasons;
    v8->_suspendReasons = v15;

    v8->_targetInterfaceOrientation = 1;
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v8 selector:sel__startOrStopGeneratingUpdates name:@"_UIMotionEffectEngineEnabledDidChangeNotification" object:0];

    objc_initWeak(&location, v8);
    v18 = *MEMORY[0x1E69E98C0];
    v19 = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29___UIMotionEffectEngine_init__block_invoke_2;
    handler[3] = &unk_1E7119990;
    objc_copyWeak(&v29, &location);
    notify_register_dispatch(v18, &v8->_thermalNotificationToken, v19, handler);

    v21 = dispatch_get_global_queue(33, 0);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __29___UIMotionEffectEngine_init__block_invoke_4;
    v25[3] = &unk_1E71199B8;
    v22 = v8;
    v26 = v22;
    objc_copyWeak(&v27, &location);
    notify_register_dispatch("com.apple.backboardd.backlight.changed", &v8->_screenDimmingNotificationToken, v21, v25);

    v23 = v22;
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_updateDisplayLinkInterval
{
  if ([(_UIMotionEffectEventProvider *)self->_eventProvider wantsSynchronizedUpdates])
  {
    return;
  }

  [(CADisplayLink *)self->_displayLink maximumRefreshRate];
  v4 = llround(1.0 / v3);
  if ((_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_946, @"UIMotionEffectUIUpdateFrequency") & 1) != 0 || (v5 = *&qword_1ED48B390, *&qword_1ED48B390 <= 0))
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = 32;
    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = 48;
    }

    v9 = 30;
    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 45;
    }

    if (v4 <= 60)
    {
      v5 = v9;
    }

    else
    {
      v5 = v8;
    }
  }

  if (self->_allAnalyzersAreCentered)
  {
    if (self->_eventProviderStatus != 2)
    {
      v13 = 1;
      goto LABEL_23;
    }

    if (self->_slowUpdatesEnabled)
    {
      v10 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B398, @"UIMotionEffectUIUpdateSlowFrequency");
      v11 = *&qword_1ED48B3A0;
      if (v10)
      {
        v11 = 0;
      }

      v12 = 5;
      if (v4 > 60)
      {
        v12 = 8;
      }

      if (v11 >= 1)
      {
        v5 = v11;
      }

      else
      {
        v5 = v12;
      }
    }
  }

  [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:v5];
  v13 = 0;
LABEL_23:
  displayLink = self->_displayLink;

  [(CADisplayLink *)displayLink setPaused:v13];
}

- (void)_startGeneratingUpdates
{
  v20 = *MEMORY[0x1E69E9840];
  [(_UIMotionEffectEventProvider *)self->_eventProvider startGeneratingEvents];
  if (![(_UIMotionEffectEventProvider *)self->_eventProvider wantsSynchronizedUpdates])
  {
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleLatestDeviceMotion];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    [(_UIMotionEffectEngine *)self _updateDisplayLinkInterval];
    v5 = self->_displayLink;
    v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x1E695DA28]];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_analyzersToEffects;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * v11++) resetHysteresis];
      }

      while (v9 != v11);
      v9 = [(NSMapTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  self->_hasReceivedAtLeastOneEventSinceStarting = 0;
  self->_hasAppliedAtLeastOneUpdateSinceStarting = 0;
  *&self->_slowUpdatesEnabled = 0;
  self->_generatingUpdates = 1;
  v12 = [(_UIMotionEffectEventProvider *)self->_eventProvider wantsSynchronizedUpdates];
  v13 = 2;
  if (v12)
  {
    v13 = 0;
  }

  self->_eventProviderStatus = v13;
  lastEvent = self->_lastEvent;
  self->_lastEvent = 0;
}

- (void)_stopGeneratingUpdates
{
  self->_generatingUpdates = 0;
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  eventProvider = self->_eventProvider;

  [(_UIMotionEffectEventProvider *)eventProvider stopGeneratingEvents];
}

- (void)resetMotionAnalysis
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers cachedObjectEnumerable];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 reset];
        [(_UIMotionEffectEngine *)self _applyEffectsFromAnalyzer:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if (!self->_generatingUpdates || !self->_hasAppliedAtLeastOneUpdateSinceStarting)
  {
    self->_isPendingReset = 1;
  }
}

- (void)_handleLatestDeviceMotion
{
  v50 = *MEMORY[0x1E69E9840];
  if (![(_UIMotionEffectEngine *)self _isSuspended])
  {
    os_unfair_lock_lock(&self->_pendingEventLock);
    hasReceivedAtLeastOneEventSinceStarting = self->_hasReceivedAtLeastOneEventSinceStarting;
    pendingEvent = self->_pendingEvent;
    v5 = pendingEvent;
    v6 = self->_pendingEvent;
    self->_pendingEvent = 0;

    os_unfair_lock_unlock(&self->_pendingEventLock);
    if (!hasReceivedAtLeastOneEventSinceStarting)
    {
LABEL_50:

      return;
    }

    [(_UIMotionEffectEvent *)v5 timestamp];
    v8 = v7;
    if (v5)
    {
      displayLink = v5;
    }

    else
    {
      displayLink = self->_displayLink;
    }

    [(CADisplayLink *)displayLink timestamp];
    v11 = v10;
    lastEvent = self->_lastEvent;
    if (lastEvent)
    {
      [(_UIMotionEffectEvent *)lastEvent timestamp];
      v14 = v11 - v13;
      v15 = self->_lastEvent;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0.0;
      if (v5)
      {
LABEL_8:
        if (v15 && v14 != 0.0)
        {
          [(_UIMotionEffectEvent *)v5 velocityRelativeToPreviousEvent:?];
          v17 = v16;
          if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B3A8, @"UIMotionEffectSlowVelocityThreshhold"))
          {
            v18 = +[UIDevice currentDevice];
            v19 = [v18 userInterfaceIdiom];

            v20 = dbl_18A680900[(v19 & 0xFFFFFFFFFFFFFFFBLL) == 1];
          }

          else
          {
            v20 = *&qword_1ED48B3B0;
          }

          if (self->_slowUpdatesEnabled)
          {
            if (v17 > v20)
            {
              [(_UIMotionEffectEngine *)self _toggleSlowUpdates];
            }
          }

          else if (v17 <= v20)
          {
            if (!self->_pendingSlowDown)
            {
              v21 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B3B8, @"UIMotionEffectSlowVelocityRequiredTime");
              v22 = *&qword_1ED48B3C0;
              if (v21)
              {
                v22 = 0.5;
              }

              [(_UIMotionEffectEngine *)self performSelector:sel__toggleSlowUpdates withObject:0 afterDelay:v22];
              self->_pendingSlowDown = 1;
            }
          }

          else if (self->_pendingSlowDown)
          {
            [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__toggleSlowUpdates object:0];
            self->_pendingSlowDown = 0;
          }
        }

        objc_storeStrong(&self->_lastEvent, pendingEvent);
        goto LABEL_26;
      }
    }

    v5 = [(_UIMotionEffectEvent *)v15 copyWithTimestamp:v11];
LABEL_26:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = self->_analyzersToEffects;
    v23 = [(NSMapTable *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      v26 = 1;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v45 + 1) + 8 * i);
          v29 = v5;
          [v28 updateWithEvent:v5];
          v30 = [v28 viewerRelativeDevicePose];
          [v30 viewerOffset];
          v32 = v31;
          v34 = v33;

          v35 = fabs(v32);
          v36 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B3C8, @"UIMotionEffectCenteredThreshold");
          v37 = *&qword_1ED48B3D0;
          if (v36)
          {
            v37 = 0.03;
          }

          if (v35 >= v37)
          {
            v41 = 0;
          }

          else
          {
            v38 = fabs(v34);
            v39 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B3C8, @"UIMotionEffectCenteredThreshold");
            v40 = *&qword_1ED48B3D0;
            if (v39)
            {
              v40 = 0.03;
            }

            v41 = v38 < v40;
          }

          v44 = 0;
          v42 = [v28 applyHysteresisWithReceivedEventTimestamp:self->_slowUpdatesEnabled timeSinceLastNewMotionEvent:&v44 slowUpdatesEnabled:0 returningShouldToggleSlowUpdates:v8 logger:v14];
          if (v44 == 1)
          {
            [(_UIMotionEffectEngine *)self _toggleSlowUpdates];
          }

          if (((self->_isPendingReset | v42) & 1) == 0)
          {
            [MEMORY[0x1E6979518] setLowLatency:0];
            [(_UIMotionEffectEngine *)self _applyEffectsFromAnalyzer:v28];
          }

          v26 &= v41;
          v5 = v29;
        }

        v24 = [(NSMapTable *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = 1;
    }

    self->_hasAppliedAtLeastOneUpdateSinceStarting = 1;
    if (self->_isPendingReset)
    {
      [(_UIMotionEffectEngine *)self resetMotionAnalysis];
      self->_isPendingReset = 0;
    }

    if (self->_allAnalyzersAreCentered != (v26 & 1))
    {
      self->_allAnalyzersAreCentered = v26 & 1;
      [(_UIMotionEffectEngine *)self _updateDisplayLinkInterval];
    }

    goto LABEL_50;
  }
}

- (void)_toggleSlowUpdates
{
  if (self->_generatingUpdates)
  {
    self->_pendingSlowDown = 0;
    self->_slowUpdatesEnabled = !self->_slowUpdatesEnabled;
    [(_UIMotionEffectEventProvider *)self->_eventProvider setSlowUpdatesEnabled:?];

    [(_UIMotionEffectEngine *)self _updateDisplayLinkInterval];
  }
}

- (void)dealloc
{
  [(_UIMotionEffectEngine *)self _stopGeneratingUpdates];
  [(_UIMotionEffectEngine *)self _unapplyAllEffects];
  [(_UIMotionEffectEventProvider *)self->_eventProvider setConsumer:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0];

  notify_cancel(self->_thermalNotificationToken);
  notify_cancel(self->_screenDimmingNotificationToken);
  v4.receiver = self;
  v4.super_class = _UIMotionEffectEngine;
  [(_UIMotionEffectEngine *)&v4 dealloc];
}

- (void)_applyEffectsFromAnalyzer:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 updateHistory];
  v5 = [v4 viewerRelativeDevicePose];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMapTable *)self->_analyzersToEffects objectForKey:v4, 0];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(_UIAssociationTable *)self->_effectViewAssociationTable rightValueEnumerableForLeftValue:v11];
        [_UIMotionEffectApplicator applyMotionEffect:v11 toViews:v12 usingPose:v5 transformedForTargetInterfaceOrientation:self->_targetInterfaceOrientation];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)updateWithEvent:(id)a3
{
  v5 = a3;
  if (v5)
  {
    os_unfair_lock_lock(&self->_pendingEventLock);
    self->_hasReceivedAtLeastOneEventSinceStarting = 1;
    objc_storeStrong(&self->_pendingEvent, a3);
    os_unfair_lock_unlock(&self->_pendingEventLock);
    if ([(_UIMotionEffectEventProvider *)self->_eventProvider wantsSynchronizedUpdates])
    {
      if ([MEMORY[0x1E696AF00] isMainThread] && _UIUpdateCycleEnabled())
      {
        [(_UIMotionEffectEngine *)self _handleLatestDeviceMotion];
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41___UIMotionEffectEngine_updateWithEvent___block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

- (void)updateEventProviderStatus:(int64_t)a3
{
  if (self->_eventProviderStatus != a3)
  {
    self->_eventProviderStatus = a3;
    [(_UIMotionEffectEngine *)self _updateDisplayLinkInterval];
  }
}

- (void)beginSuspendingForReason:(id)a3
{
  [(NSMutableSet *)self->_suspendReasons addObject:a3];

  [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
}

- (void)endSuspendingForReason:(id)a3
{
  [(NSMutableSet *)self->_suspendReasons removeObject:a3];

  [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
}

- (void)beginSuspendingMotionEffectsForView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1ED499018 != -1)
  {
    dispatch_once(&qword_1ED499018, &__block_literal_global_180);
  }

  if (_MergedGlobals_13_4 == 1)
  {
    v5 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v4];

    if (!v5)
    {
      v6 = [(_UIMotionEffectEngine *)self _hasMotionEffectsForView:v4];
      v7 = MEMORY[0x1E695DFA8];
      if (v6)
      {
        v8 = [(_UIMotionEffectEngine *)self _motionEffectsForView:v4];
        v9 = [v7 setWithArray:v8];

        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [(_UIMotionEffectEngine *)self endApplyingMotionEffect:*(*(&v15 + 1) + 8 * i) toView:v4, v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v12);
        }
      }

      else
      {
        v10 = [MEMORY[0x1E695DFA8] set];
      }

      [(NSMapTable *)self->_suspendedViewsToEffectSets setObject:v10 forKey:v4, v15];
    }
  }
}

- (void)endSuspendingMotionEffectsForView:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1ED499018 != -1)
  {
    dispatch_once(&qword_1ED499018, &__block_literal_global_180);
  }

  if (_MergedGlobals_13_4 == 1)
  {
    v5 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v4];
    if (v5)
    {
      [(NSMapTable *)self->_suspendedViewsToEffectSets removeObjectForKey:v4];
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(_UIMotionEffectEngine *)self beginApplyingMotionEffect:*(*(&v11 + 1) + 8 * i) toView:v4, v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (BOOL)_motionEffectsAreSuspendedForView:(id)a3
{
  v3 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)beginApplyingMotionEffect:(id)a3 toView:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if ([(_UIMotionEffectEngine *)self _motionEffectsAreSuspendedForView:v7])
    {
      v9 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v8];
      [v9 addObject:v6];
    }

    else
    {
      [(_UIAssociationTable *)self->_effectViewAssociationTable registerAssociationWithLeftValue:v6 rightValue:v8];
      v10 = [v6 _preferredMotionAnalyzerSettings];
      analyzerSettingsToAnalyzers = self->_analyzerSettingsToAnalyzers;
      v12 = _lazyMapClientForEffectAndView(v6, v8);
      [(_UILazyMapTable *)analyzerSettingsToAnalyzers registerClient:v12 ofObjectForKey:v10];

      LOBYTE(v12) = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers hasCachedObjectForKey:v10];
      v13 = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers objectForKey:v10];
      if ((v12 & 1) == 0)
      {
        v14 = [(_UIMotionEffectEventProvider *)self->_eventProvider currentEvent];
        if (v14)
        {
          [v13 updateWithEvent:v14];
        }

        self->_allAnalyzersAreCentered = 0;
        [(_UIMotionEffectEngine *)self _updateDisplayLinkInterval];
      }

      v18[0] = v8;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v16 = [v13 viewerRelativeDevicePose];
      [_UIMotionEffectApplicator applyMotionEffect:v6 toViews:v15 usingPose:v16 transformedForTargetInterfaceOrientation:self->_targetInterfaceOrientation];

      v17 = [(NSMapTable *)self->_analyzersToEffects objectForKey:v13];
      if (!v17)
      {
        v17 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        [(NSMapTable *)self->_analyzersToEffects setObject:v17 forKey:v13];
      }

      [v17 addObject:v6];
      [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
    }
  }
}

- (void)_unregisterMotionEffect:(id)a3 fromView:(id)a4
{
  v14 = a3;
  effectViewAssociationTable = self->_effectViewAssociationTable;
  v7 = a4;
  [(_UIAssociationTable *)effectViewAssociationTable unregisterAssociationWithLeftValue:v14 rightValue:v7];
  v8 = [v14 _preferredMotionAnalyzerSettings];
  v9 = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers objectForKey:v8];
  analyzerSettingsToAnalyzers = self->_analyzerSettingsToAnalyzers;
  v11 = _lazyMapClientForEffectAndView(v14, v7);

  [(_UILazyMapTable *)analyzerSettingsToAnalyzers unregisterClient:v11 ofObjectForKey:v8];
  if (v9 && ![(_UIAssociationTable *)self->_effectViewAssociationTable hasRightValuesForLeftValue:v14])
  {
    v12 = [(NSMapTable *)self->_analyzersToEffects objectForKey:v9];
    v13 = v12;
    if (v12)
    {
      [v12 removeObject:v14];
      if (![v13 count])
      {
        [(NSMapTable *)self->_analyzersToEffects removeObjectForKey:v9];
      }
    }
  }

  [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
}

- (void)endApplyingMotionEffect:(id)a3 toView:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if ([(_UIMotionEffectEngine *)self _motionEffectsAreSuspendedForView:v7])
    {
      v9 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v8];
      [v9 removeObject:v6];
    }

    else
    {
      [(_UIMotionEffectEngine *)self _unregisterMotionEffect:v6 fromView:v8];
      v11[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [_UIMotionEffectApplicator unapplyMotionEffect:v6 toViews:v10];
    }
  }
}

- (void)_unregisterAllMotionEffectsForView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIAssociationTable *)self->_effectViewAssociationTable hasLeftValuesForRightValue:v4])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(_UIMotionEffectEngine *)self _motionEffectsForView:v4, 0];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [(_UIMotionEffectEngine *)self _unregisterMotionEffect:*(*(&v10 + 1) + 8 * v9++) fromView:v4];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  [(NSMapTable *)self->_suspendedViewsToEffectSets removeObjectForKey:v4];
}

- (id)_motionEffectsForView:(id)a3
{
  v4 = a3;
  if ([(_UIMotionEffectEngine *)self _motionEffectsAreSuspendedForView:v4])
  {
    v5 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v4];

    v6 = [v5 allObjects];
    v4 = v5;
  }

  else
  {
    v6 = [(_UIAssociationTable *)self->_effectViewAssociationTable leftValuesForRightValue:v4];
  }

  return v6;
}

- (BOOL)_hasMotionEffectsForView:(id)a3
{
  v4 = a3;
  if ([(_UIAssociationTable *)self->_effectViewAssociationTable hasLeftValuesForRightValue:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v4];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (BOOL)_motionEffect:(id)a3 belongsToView:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v6 = a3;
  v7 = [(_UIMotionEffectEngine *)self _motionEffectsForView:a4];
  LOBYTE(self) = [v7 containsObject:v6];

  return self;
}

- (void)_unapplyAllEffects
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(_UIAssociationTable *)self->_effectViewAssociationTable leftValueEnumerable];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(_UIAssociationTable *)self->_effectViewAssociationTable rightValueEnumerableForLeftValue:v8];
        [_UIMotionEffectApplicator unapplyMotionEffect:v8 toViews:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  generatingUpdates = self->_generatingUpdates;
  suspendReasons = self->_suspendReasons;
  v8 = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers cachedObjects];
  effectViewAssociationTable = self->_effectViewAssociationTable;
  v10 = [(NSMapTable *)self->_suspendedViewsToEffectSets keyEnumerator];
  v11 = [v10 allObjects];
  v12 = [v3 stringWithFormat:@"<%@: %p isGeneratingUpdates=%d suspensionReasons=%@ analyzers=%@ effects=%@ suspendedViews=%@>", v5, self, generatingUpdates, suspendReasons, v8, effectViewAssociationTable, v11];

  return v12;
}

@end