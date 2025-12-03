@interface _UIMotionEffectEngine
+ (BOOL)_motionEffectsEnabled;
+ (BOOL)_motionEffectsSupported;
- (BOOL)_hasMotionEffectsForView:(id)view;
- (BOOL)_motionEffect:(id)effect belongsToView:(id)view;
- (BOOL)_motionEffectsAreSuspendedForView:(id)view;
- (BOOL)_shouldGenerateUpdates;
- (NSString)debugDescription;
- (_UIMotionEffectEngine)init;
- (id)_motionEffectsForView:(id)view;
- (void)_applyEffectsFromAnalyzer:(id)analyzer;
- (void)_handleLatestDeviceMotion;
- (void)_startGeneratingUpdates;
- (void)_startOrStopGeneratingUpdates;
- (void)_stopGeneratingUpdates;
- (void)_toggleSlowUpdates;
- (void)_unapplyAllEffects;
- (void)_unregisterAllMotionEffectsForView:(id)view;
- (void)_unregisterMotionEffect:(id)effect fromView:(id)view;
- (void)_updateDisplayLinkInterval;
- (void)beginApplyingMotionEffect:(id)effect toView:(id)view;
- (void)beginSuspendingForReason:(id)reason;
- (void)beginSuspendingMotionEffectsForView:(id)view;
- (void)dealloc;
- (void)endApplyingMotionEffect:(id)effect toView:(id)view;
- (void)endSuspendingForReason:(id)reason;
- (void)endSuspendingMotionEffectsForView:(id)view;
- (void)resetMotionAnalysis;
- (void)updateEventProviderStatus:(int64_t)status;
- (void)updateWithEvent:(id)event;
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
          bOOLValue = [v6 BOOLValue];
        }

        else
        {
          if ([UIApp _isSpringBoard])
          {
            [v4 setBool:0 forKey:@"UIMotionEffectsEnabled"];
            [v4 synchronize];
          }

          bOOLValue = 0;
        }

        _UIMotionEffectsShouldBeEnabled__UIMotionEffectsShouldBeEnabledCache = bOOLValue;
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
  _motionEffectsEnabled = [objc_opt_class() _motionEffectsEnabled];
  if (_motionEffectsEnabled)
  {
    if ([(_UIMotionEffectEngine *)self _isSuspended])
    {
      LOBYTE(_motionEffectsEnabled) = 0;
    }

    else
    {
      LOBYTE(_motionEffectsEnabled) = ![(_UIAssociationTable *)self->_effectViewAssociationTable isEmpty];
    }
  }

  return _motionEffectsEnabled;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__startOrStopGeneratingUpdates name:@"_UIMotionEffectEngineEnabledDidChangeNotification" object:0];

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
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    v8 = 32;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = 48;
    }

    v9 = 30;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
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
  wantsSynchronizedUpdates = [(_UIMotionEffectEventProvider *)self->_eventProvider wantsSynchronizedUpdates];
  v13 = 2;
  if (wantsSynchronizedUpdates)
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
  cachedObjectEnumerable = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers cachedObjectEnumerable];
  v4 = [cachedObjectEnumerable countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(cachedObjectEnumerable);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 reset];
        [(_UIMotionEffectEngine *)self _applyEffectsFromAnalyzer:v8];
      }

      v5 = [cachedObjectEnumerable countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            userInterfaceIdiom = [v18 userInterfaceIdiom];

            v20 = dbl_18A680900[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
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
          viewerRelativeDevicePose = [v28 viewerRelativeDevicePose];
          [viewerRelativeDevicePose viewerOffset];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0];

  notify_cancel(self->_thermalNotificationToken);
  notify_cancel(self->_screenDimmingNotificationToken);
  v4.receiver = self;
  v4.super_class = _UIMotionEffectEngine;
  [(_UIMotionEffectEngine *)&v4 dealloc];
}

- (void)_applyEffectsFromAnalyzer:(id)analyzer
{
  v18 = *MEMORY[0x1E69E9840];
  analyzerCopy = analyzer;
  [analyzerCopy updateHistory];
  viewerRelativeDevicePose = [analyzerCopy viewerRelativeDevicePose];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMapTable *)self->_analyzersToEffects objectForKey:analyzerCopy, 0];
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
        [_UIMotionEffectApplicator applyMotionEffect:v11 toViews:v12 usingPose:viewerRelativeDevicePose transformedForTargetInterfaceOrientation:self->_targetInterfaceOrientation];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)updateWithEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    os_unfair_lock_lock(&self->_pendingEventLock);
    self->_hasReceivedAtLeastOneEventSinceStarting = 1;
    objc_storeStrong(&self->_pendingEvent, event);
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

- (void)updateEventProviderStatus:(int64_t)status
{
  if (self->_eventProviderStatus != status)
  {
    self->_eventProviderStatus = status;
    [(_UIMotionEffectEngine *)self _updateDisplayLinkInterval];
  }
}

- (void)beginSuspendingForReason:(id)reason
{
  [(NSMutableSet *)self->_suspendReasons addObject:reason];

  [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
}

- (void)endSuspendingForReason:(id)reason
{
  [(NSMutableSet *)self->_suspendReasons removeObject:reason];

  [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
}

- (void)beginSuspendingMotionEffectsForView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (qword_1ED499018 != -1)
  {
    dispatch_once(&qword_1ED499018, &__block_literal_global_180);
  }

  if (_MergedGlobals_13_4 == 1)
  {
    v5 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:viewCopy];

    if (!v5)
    {
      v6 = [(_UIMotionEffectEngine *)self _hasMotionEffectsForView:viewCopy];
      v7 = MEMORY[0x1E695DFA8];
      if (v6)
      {
        v8 = [(_UIMotionEffectEngine *)self _motionEffectsForView:viewCopy];
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

              [(_UIMotionEffectEngine *)self endApplyingMotionEffect:*(*(&v15 + 1) + 8 * i) toView:viewCopy, v15];
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

      [(NSMapTable *)self->_suspendedViewsToEffectSets setObject:v10 forKey:viewCopy, v15];
    }
  }
}

- (void)endSuspendingMotionEffectsForView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (qword_1ED499018 != -1)
  {
    dispatch_once(&qword_1ED499018, &__block_literal_global_180);
  }

  if (_MergedGlobals_13_4 == 1)
  {
    v5 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:viewCopy];
    if (v5)
    {
      [(NSMapTable *)self->_suspendedViewsToEffectSets removeObjectForKey:viewCopy];
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

            [(_UIMotionEffectEngine *)self beginApplyingMotionEffect:*(*(&v11 + 1) + 8 * i) toView:viewCopy, v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (BOOL)_motionEffectsAreSuspendedForView:(id)view
{
  v3 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:view];
  v4 = v3 != 0;

  return v4;
}

- (void)beginApplyingMotionEffect:(id)effect toView:(id)view
{
  v18[1] = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  viewCopy = view;
  v8 = viewCopy;
  if (effectCopy && viewCopy)
  {
    if ([(_UIMotionEffectEngine *)self _motionEffectsAreSuspendedForView:viewCopy])
    {
      v9 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v8];
      [v9 addObject:effectCopy];
    }

    else
    {
      [(_UIAssociationTable *)self->_effectViewAssociationTable registerAssociationWithLeftValue:effectCopy rightValue:v8];
      _preferredMotionAnalyzerSettings = [effectCopy _preferredMotionAnalyzerSettings];
      analyzerSettingsToAnalyzers = self->_analyzerSettingsToAnalyzers;
      v12 = _lazyMapClientForEffectAndView(effectCopy, v8);
      [(_UILazyMapTable *)analyzerSettingsToAnalyzers registerClient:v12 ofObjectForKey:_preferredMotionAnalyzerSettings];

      LOBYTE(v12) = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers hasCachedObjectForKey:_preferredMotionAnalyzerSettings];
      v13 = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers objectForKey:_preferredMotionAnalyzerSettings];
      if ((v12 & 1) == 0)
      {
        currentEvent = [(_UIMotionEffectEventProvider *)self->_eventProvider currentEvent];
        if (currentEvent)
        {
          [v13 updateWithEvent:currentEvent];
        }

        self->_allAnalyzersAreCentered = 0;
        [(_UIMotionEffectEngine *)self _updateDisplayLinkInterval];
      }

      v18[0] = v8;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      viewerRelativeDevicePose = [v13 viewerRelativeDevicePose];
      [_UIMotionEffectApplicator applyMotionEffect:effectCopy toViews:v15 usingPose:viewerRelativeDevicePose transformedForTargetInterfaceOrientation:self->_targetInterfaceOrientation];

      weakObjectsHashTable = [(NSMapTable *)self->_analyzersToEffects objectForKey:v13];
      if (!weakObjectsHashTable)
      {
        weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        [(NSMapTable *)self->_analyzersToEffects setObject:weakObjectsHashTable forKey:v13];
      }

      [weakObjectsHashTable addObject:effectCopy];
      [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
    }
  }
}

- (void)_unregisterMotionEffect:(id)effect fromView:(id)view
{
  effectCopy = effect;
  effectViewAssociationTable = self->_effectViewAssociationTable;
  viewCopy = view;
  [(_UIAssociationTable *)effectViewAssociationTable unregisterAssociationWithLeftValue:effectCopy rightValue:viewCopy];
  _preferredMotionAnalyzerSettings = [effectCopy _preferredMotionAnalyzerSettings];
  v9 = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers objectForKey:_preferredMotionAnalyzerSettings];
  analyzerSettingsToAnalyzers = self->_analyzerSettingsToAnalyzers;
  v11 = _lazyMapClientForEffectAndView(effectCopy, viewCopy);

  [(_UILazyMapTable *)analyzerSettingsToAnalyzers unregisterClient:v11 ofObjectForKey:_preferredMotionAnalyzerSettings];
  if (v9 && ![(_UIAssociationTable *)self->_effectViewAssociationTable hasRightValuesForLeftValue:effectCopy])
  {
    v12 = [(NSMapTable *)self->_analyzersToEffects objectForKey:v9];
    v13 = v12;
    if (v12)
    {
      [v12 removeObject:effectCopy];
      if (![v13 count])
      {
        [(NSMapTable *)self->_analyzersToEffects removeObjectForKey:v9];
      }
    }
  }

  [(_UIMotionEffectEngine *)self _startOrStopGeneratingUpdates];
}

- (void)endApplyingMotionEffect:(id)effect toView:(id)view
{
  v11[1] = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  viewCopy = view;
  v8 = viewCopy;
  if (effectCopy && viewCopy)
  {
    if ([(_UIMotionEffectEngine *)self _motionEffectsAreSuspendedForView:viewCopy])
    {
      v9 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:v8];
      [v9 removeObject:effectCopy];
    }

    else
    {
      [(_UIMotionEffectEngine *)self _unregisterMotionEffect:effectCopy fromView:v8];
      v11[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [_UIMotionEffectApplicator unapplyMotionEffect:effectCopy toViews:v10];
    }
  }
}

- (void)_unregisterAllMotionEffectsForView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([(_UIAssociationTable *)self->_effectViewAssociationTable hasLeftValuesForRightValue:viewCopy])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(_UIMotionEffectEngine *)self _motionEffectsForView:viewCopy, 0];
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

          [(_UIMotionEffectEngine *)self _unregisterMotionEffect:*(*(&v10 + 1) + 8 * v9++) fromView:viewCopy];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  [(NSMapTable *)self->_suspendedViewsToEffectSets removeObjectForKey:viewCopy];
}

- (id)_motionEffectsForView:(id)view
{
  viewCopy = view;
  if ([(_UIMotionEffectEngine *)self _motionEffectsAreSuspendedForView:viewCopy])
  {
    v5 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:viewCopy];

    allObjects = [v5 allObjects];
    viewCopy = v5;
  }

  else
  {
    allObjects = [(_UIAssociationTable *)self->_effectViewAssociationTable leftValuesForRightValue:viewCopy];
  }

  return allObjects;
}

- (BOOL)_hasMotionEffectsForView:(id)view
{
  viewCopy = view;
  if ([(_UIAssociationTable *)self->_effectViewAssociationTable hasLeftValuesForRightValue:viewCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSMapTable *)self->_suspendedViewsToEffectSets objectForKey:viewCopy];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (BOOL)_motionEffect:(id)effect belongsToView:(id)view
{
  if (!effect || !view)
  {
    return 0;
  }

  effectCopy = effect;
  v7 = [(_UIMotionEffectEngine *)self _motionEffectsForView:view];
  LOBYTE(self) = [v7 containsObject:effectCopy];

  return self;
}

- (void)_unapplyAllEffects
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  leftValueEnumerable = [(_UIAssociationTable *)self->_effectViewAssociationTable leftValueEnumerable];
  v4 = [leftValueEnumerable countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(leftValueEnumerable);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(_UIAssociationTable *)self->_effectViewAssociationTable rightValueEnumerableForLeftValue:v8];
        [_UIMotionEffectApplicator unapplyMotionEffect:v8 toViews:v9];
      }

      v5 = [leftValueEnumerable countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  cachedObjects = [(_UILazyMapTable *)self->_analyzerSettingsToAnalyzers cachedObjects];
  effectViewAssociationTable = self->_effectViewAssociationTable;
  keyEnumerator = [(NSMapTable *)self->_suspendedViewsToEffectSets keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v12 = [v3 stringWithFormat:@"<%@: %p isGeneratingUpdates=%d suspensionReasons=%@ analyzers=%@ effects=%@ suspendedViews=%@>", v5, self, generatingUpdates, suspendReasons, cachedObjects, effectViewAssociationTable, allObjects];

  return v12;
}

@end