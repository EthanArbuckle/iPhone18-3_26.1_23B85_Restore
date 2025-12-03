@interface UIFeedbackGenerator
+ (id)behaviorWithConfiguration:(id)configuration coordinateSpace:(id)space;
+ (id)feedbackGeneratorForView:(id)view;
- (BOOL)_isEnabled;
- (NSString)_stats_key;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (UIFeedbackGenerator)init;
- (UIFeedbackGenerator)initWithConfiguration:(id)configuration coordinateSpace:(id)space;
- (UIFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view;
- (UIFeedbackGenerator)initWithCoordinateSpace:(id)space;
- (UIFeedbackGenerator)initWithView:(id)view;
- (UIView)view;
- (id)_activationCountStatistics;
- (id)_activationDurationStatistics;
- (id)_activationTimeOutCountStatistics;
- (id)_playCountStatistics;
- (id)_preparationCountStatistics;
- (id)_preparationTimerForStyle:(int64_t)style;
- (id)_statsSuffix;
- (id)_ui_descriptionBuilder;
- (int64_t)_outputMode;
- (void)__activateWithStyle:(int64_t)style forFeedback:(id)feedback completionBlock:(id)block;
- (void)__deactivateWithStyle:(int64_t)style;
- (void)_activated;
- (void)_autoDeactivate;
- (void)_clientDidUpdateGeneratorWithSelector:(SEL)selector;
- (void)_deactivateWithStyle:(int64_t)style;
- (void)_deactivated;
- (void)_forceDeactivationForStyle:(int64_t)style;
- (void)_playFeedback:(id)feedback withMinimumIntervalPassed:(double)passed since:(double *)since prefersRegularPace:(BOOL)pace atLocation:(CGPoint)location;
- (void)_prepareWithStyle:(int64_t)style;
- (void)_resetAutoDeactivationTimeout;
- (void)_scheduleFeedbackWarming;
- (void)_setOutputMode:(int64_t)mode;
- (void)_setPreparationTimer:(id)timer forStyle:(int64_t)style;
- (void)_setupAutoDeactivateTimer;
- (void)_setupEnginesIfNeededForFeedback:(id)feedback;
- (void)_setupForFeedback:(id)feedback;
- (void)_startFeedbackWarming;
- (void)_stats_activationDidChangeTo:(BOOL)to;
- (void)_stats_activationTimedOut;
- (void)_stats_playedFeedback;
- (void)_stats_prepared;
- (void)_stopAutoDeactivateTimer;
- (void)_stopFeedback:(id)feedback;
- (void)_stopFeedbackWarming;
- (void)_stopPreparationForAllStyles;
- (void)_stopPreparationForStyle:(int64_t)style;
- (void)_updateActivationStateForRemovedEngines:(id)engines addedEngines:(id)addedEngines prewarmCount:(int64_t)count turnOnCount:(int64_t)onCount;
- (void)_updateForViewUserInterfaceIdiom;
- (void)_updatePreparationTimer:(id)timer withTimeout:(double)timeout;
- (void)activateWithCompletionBlock:(id)block;
- (void)deactivate;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)performFeedbackWithDelay:(double)delay insideBlock:(id)block;
- (void)prepare;
- (void)willMoveToView:(id)view;
@end

@implementation UIFeedbackGenerator

- (void)_updateForViewUserInterfaceIdiom
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_view);
    traitCollection = [v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    self->_disabledByView = userInterfaceIdiom == 3;
    if (userInterfaceIdiom == 1 && (+[UIDevice currentDevice], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(UIDevice *)v7 _peripheralFeedbackSupportLevel], v7, v8 >= 1))
    {
      if (self->_gestureRecognizer)
      {
        return;
      }

      v13 = objc_loadWeakRetained(&self->_view);
      v9 = [_UIFeedbackGeneratorGestureRecognizer gestureRecognizerForView:v13 feedbackGenerator:self];
      gestureRecognizer = self->_gestureRecognizer;
      self->_gestureRecognizer = v9;

      v11 = v13;
    }

    else
    {
      v12 = self->_gestureRecognizer;
      if (!v12)
      {
        return;
      }

      [(_UIFeedbackGeneratorGestureRecognizer *)&v12->super.super.isa cleanupGestureRecognizerForFeedbackGenerator:?];
      v11 = self->_gestureRecognizer;
      self->_gestureRecognizer = 0;
    }
  }

  else
  {
    self->_disabledByView = 0;
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIFeedbackGenerator)init
{
  v3 = [objc_msgSend(objc_opt_class() "_configurationClass")];
  v4 = [(UIFeedbackGenerator *)self initWithConfiguration:v3];

  return v4;
}

- (void)_setupAutoDeactivateTimer
{
  [(UIFeedbackGenerator *)self _autoDeactivationTimeout];
  if (v4 > 0.0)
  {
    if (self->_autoDeactivateTimer)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIFeedbackGenerator.m" lineNumber:696 description:@"trying to create an auto-deactivation timer when we already have one"];
    }

    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    autoDeactivateTimer = self->_autoDeactivateTimer;
    self->_autoDeactivateTimer = v5;

    objc_initWeak(&location, self);
    v7 = self->_autoDeactivateTimer;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __48__UIFeedbackGenerator__setupAutoDeactivateTimer__block_invoke;
    v12 = &unk_1E70F5A28;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v7, &v9);
    [(UIFeedbackGenerator *)self _resetAutoDeactivationTimeout:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_activated
{
  if (!self->_activated)
  {
    [(UIFeedbackGenerator *)self _setupAutoDeactivateTimer];
    [(UIFeedbackGenerator *)self _stats_activationDidChangeTo:1];
    [(UIFeedbackGenerator *)self _scheduleFeedbackWarming];
    self->_activated = 1;
  }
}

- (void)_scheduleFeedbackWarming
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__UIFeedbackGenerator__scheduleFeedbackWarming__block_invoke;
  v5[3] = &unk_1E70F5A28;
  objc_copyWeak(&v6, &location);
  v3 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v5);
  feedbackWarmingBlock = self->_feedbackWarmingBlock;
  self->_feedbackWarmingBlock = v3;

  dispatch_async(MEMORY[0x1E69E96A0], self->_feedbackWarmingBlock);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_startFeedbackWarming
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_engines;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) _startWarmingFeedbacks:{self->_usedFeedbacks, v9}];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  feedbackWarmingBlock = self->_feedbackWarmingBlock;
  self->_feedbackWarmingBlock = 0;
}

- (id)_statsSuffix
{
  _stats_key = [(UIFeedbackGenerator *)self _stats_key];
  _configuration = [(UIFeedbackGenerator *)self _configuration];
  _stats_key2 = [_configuration _stats_key];

  if (_stats_key2)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", _stats_key, _stats_key2];
  }

  else
  {
    v6 = _stats_key;
  }

  v7 = v6;

  return v7;
}

- (BOOL)_isEnabled
{
  [(_UIFeedbackGeneratorConfiguration *)self->_configuration _setupIfNecessary];
  _configuration = [(UIFeedbackGenerator *)self _configuration];
  if ([_configuration isEnabled])
  {
    v4 = !self->_disabledByView;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetAutoDeactivationTimeout
{
  autoDeactivateTimer = self->_autoDeactivateTimer;
  if (autoDeactivateTimer)
  {
    [(UIFeedbackGenerator *)self _autoDeactivationTimeout];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    [(UIFeedbackGenerator *)self _autoDeactivationTimeout];
    dispatch_source_set_timer(autoDeactivateTimer, v5, 0xFFFFFFFFFFFFFFFFLL, (v6 / 100.0 * 1000000000.0));
    v7 = self->_autoDeactivateTimer;

    dispatch_activate(v7);
  }
}

- (id)_activationCountStatistics
{
  _statsSuffix = [(UIFeedbackGenerator *)self _statsSuffix];
  v3 = [_UIStatistics feedbackGeneratorActivationCountWithSuffix:_statsSuffix];

  return v3;
}

- (id)_activationDurationStatistics
{
  _statsSuffix = [(UIFeedbackGenerator *)self _statsSuffix];
  v3 = [_UIStatistics feedbackGeneratorActivationDurationWithSuffix:_statsSuffix];

  return v3;
}

void __47__UIFeedbackGenerator__scheduleFeedbackWarming__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startFeedbackWarming];
    WeakRetained = v2;
  }
}

- (id)_preparationCountStatistics
{
  _statsSuffix = [(UIFeedbackGenerator *)self _statsSuffix];
  v3 = [_UIStatistics feedbackGeneratorPreparationCountWithSuffix:_statsSuffix];

  return v3;
}

- (void)prepare
{
  if (![(UIFeedbackGenerator *)self _isAutoDeactivated])
  {
    [(UIFeedbackGenerator *)self _stats_prepared];
    if (self->_styleActivationCount[2] >= 1)
    {
      v3 = [(UIFeedbackGenerator *)self _preparationTimerForStyle:2];

      if (!v3)
      {
        [(UIFeedbackGenerator *)self _prepareWithStyle:2];
      }
    }

    [(UIFeedbackGenerator *)self _prepareWithStyle:1];
  }
}

- (void)_stats_prepared
{
  _preparationCountStatistics = [(UIFeedbackGenerator *)self _preparationCountStatistics];
  [_preparationCountStatistics incrementValueBy:1];
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  [(UIFeedbackGenerator *)self _stopAutoDeactivateTimer];
  [(UIFeedbackGenerator *)self _stopPreparationForAllStyles];
  if (self->_activationCount >= 1)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v3 = *(__UILogGetCategoryCachedImpl("Feedback", &dealloc___s_category_7) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v6 = v3;
        selfCopy = [v4 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        *buf = 138412290;
        v10 = selfCopy;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%@ is being deallocated while still being active, forcing deactivation", buf, 0xCu);
      }
    }

    [(UIFeedbackGenerator *)self _autoDeactivate];
  }

  v8.receiver = self;
  v8.super_class = UIFeedbackGenerator;
  [(UIFeedbackGenerator *)&v8 dealloc];
}

- (void)_stopAutoDeactivateTimer
{
  autoDeactivateTimer = self->_autoDeactivateTimer;
  if (autoDeactivateTimer)
  {
    dispatch_source_cancel(autoDeactivateTimer);
    v4 = self->_autoDeactivateTimer;
    self->_autoDeactivateTimer = 0;
  }
}

- (void)_stopPreparationForAllStyles
{
  for (i = 0; i != 3; ++i)
  {
    [(UIFeedbackGenerator *)self _stopPreparationForStyle:i];
  }
}

- (void)_stopFeedbackWarming
{
  v15 = *MEMORY[0x1E69E9840];
  feedbackWarmingBlock = self->_feedbackWarmingBlock;
  if (feedbackWarmingBlock)
  {
    dispatch_block_cancel(feedbackWarmingBlock);
    v4 = self->_feedbackWarmingBlock;
    self->_feedbackWarmingBlock = 0;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_engines;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [*(*(&v10 + 1) + 8 * v9++) _stopWarmingFeedbacks:{self->_usedFeedbacks, v10}];
        }

        while (v7 != v9);
        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_deactivated
{
  if (self->_activated)
  {
    [(UIFeedbackGenerator *)self _stopAutoDeactivateTimer];
    [(UIFeedbackGenerator *)self _stats_activationDidChangeTo:0];
    [(UIFeedbackGenerator *)self _stopFeedbackWarming];
    if (self->_usesCustomActivation)
    {
      usedFeedbacks = self->_usedFeedbacks;
      self->_usedFeedbacks = 0;
    }

    self->_activated = 0;
  }
}

- (UIFeedbackGenerator)initWithView:(id)view
{
  viewCopy = view;
  v5 = [objc_msgSend(objc_opt_class() "_configurationClass")];
  v6 = [(UIFeedbackGenerator *)self initWithConfiguration:v5 view:viewCopy];

  return v6;
}

+ (id)feedbackGeneratorForView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithView:viewCopy];

  return v5;
}

- (UIFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view
{
  configurationCopy = configuration;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = UIFeedbackGenerator;
  v9 = [(UIFeedbackGenerator *)&v12 init];
  [objc_opt_class() _configurationClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v9 file:@"UIFeedbackGenerator.m" lineNumber:142 description:{@"Invalid configuration class %@ for generator %@", configurationCopy, v9}];
  }

  [(UIFeedbackGenerator *)v9 _setConfiguration:configurationCopy];
  if (viewCopy)
  {
    [viewCopy addInteraction:v9];
  }

  return v9;
}

- (NSString)description
{
  _ui_descriptionBuilder = [(UIFeedbackGenerator *)self _ui_descriptionBuilder];
  string = [_ui_descriptionBuilder string];

  return string;
}

- (id)_ui_descriptionBuilder
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = UIFeedbackGenerator;
  _ui_descriptionBuilder = [&v11 _ui_descriptionBuilder];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = NSStringFromSelector(sel_active);
    v12[0] = v5;
    v6 = NSStringFromSelector(sel_configuration);
    v12[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [_ui_descriptionBuilder appendKeys:v7];

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [_ui_descriptionBuilder appendName:@"view" object:WeakRetained usingLightweightDescription:1];
  }

  return _ui_descriptionBuilder;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != viewCopy)
  {
    if (self->_traitChangeRegistration)
    {
      v6 = objc_loadWeakRetained(&self->_view);
      [v6 unregisterForTraitChanges:self->_traitChangeRegistration];
    }

    gestureRecognizer = self->_gestureRecognizer;
    if (gestureRecognizer)
    {
      [(_UIFeedbackGeneratorGestureRecognizer *)&gestureRecognizer->super.super.isa cleanupGestureRecognizerForFeedbackGenerator:?];
      v8 = self->_gestureRecognizer;
      self->_gestureRecognizer = 0;
    }
  }
}

- (void)didMoveToView:(id)view
{
  v9[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != viewCopy)
  {
    objc_storeWeak(&self->_view, viewCopy);
    [(UIFeedbackGenerator *)self _updateForViewUserInterfaceIdiom];
    v9[0] = 0x1EFE32398;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v7 = [viewCopy _registerForTraitTokenChanges:v6 withTarget:self action:sel__updateForViewUserInterfaceIdiom];
    traitChangeRegistration = self->_traitChangeRegistration;
    self->_traitChangeRegistration = v7;
  }
}

- (id)_preparationTimerForStyle:(int64_t)style
{
  preparationTimers = self->_preparationTimers;
  if (preparationTimers)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    preparationTimers = [preparationTimers objectForKeyedSubscript:v4];
  }

  return preparationTimers;
}

- (void)_setPreparationTimer:(id)timer forStyle:(int64_t)style
{
  timerCopy = timer;
  if (!self->_preparationTimers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    preparationTimers = self->_preparationTimers;
    self->_preparationTimers = dictionary;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v9 = self->_preparationTimers;
  if (timerCopy)
  {
    [(NSMutableDictionary *)v9 setObject:timerCopy forKeyedSubscript:v8];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:v8];
  }
}

- (void)_prepareWithStyle:(int64_t)style
{
  v24 = *MEMORY[0x1E69E9840];
  [(UIFeedbackGenerator *)self _preparationTimeoutForStyle:?];
  if (v5 > 0.0)
  {
    v6 = v5;
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", &_prepareWithStyle____s_category);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          stringForActivationStyle(style);
          *location = 138412802;
          *&location[4] = self;
          v21 = v20 = 2112;
          v22 = 2048;
          v23 = v6;
          v12 = v21;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "prepare %@ with style %@, timeout %g sec", location, 0x20u);
        }
      }
    }

    v8 = [(UIFeedbackGenerator *)self _preparationTimerForStyle:style];
    if (v8)
    {
      [(UIFeedbackGenerator *)self _updatePreparationTimer:v8 withTimeout:v6];
    }

    else
    {
      objc_initWeak(location, self);
      v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __41__UIFeedbackGenerator__prepareWithStyle___block_invoke;
      handler[3] = &unk_1E70F8DC8;
      objc_copyWeak(v18, location);
      v18[1] = style;
      dispatch_source_set_event_handler(v9, handler);
      [(UIFeedbackGenerator *)self _setPreparationTimer:v9 forStyle:style];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __41__UIFeedbackGenerator__prepareWithStyle___block_invoke_30;
      v13[3] = &unk_1E7107000;
      v13[4] = self;
      v8 = v9;
      v14 = v8;
      v15 = v6;
      styleCopy = style;
      [(UIFeedbackGenerator *)self _activateWithStyle:style completionBlock:v13];

      objc_destroyWeak(v18);
      objc_destroyWeak(location);
    }
  }
}

void __41__UIFeedbackGenerator__prepareWithStyle___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", _UIInternalPreference_EnableFeedbackExceptions_block_invoke___s_category);
      if (*CategoryCachedImpl)
      {
        v4 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = *(a1 + 40);
          v6 = v4;
          v7 = stringForActivationStyle(v5);
          v8 = 138412546;
          v9 = WeakRetained;
          v10 = 2112;
          v11 = v7;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "timed-out preparation of %@ with style %@", &v8, 0x16u);
        }
      }
    }

    [WeakRetained _stopPreparationForStyle:*(a1 + 40)];
  }
}

void __41__UIFeedbackGenerator__prepareWithStyle___block_invoke_30(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 _updatePreparationTimer:*(a1 + 40) withTimeout:*(a1 + 48)];
    v4 = *(a1 + 40);

    dispatch_activate(v4);
  }

  else
  {
    v5 = *(a1 + 56);

    [v3 _stopPreparationForStyle:v5];
  }
}

- (void)_updatePreparationTimer:(id)timer withTimeout:(double)timeout
{
  v5 = (timeout * 1000000000.0);
  source = timer;
  v6 = dispatch_time(0, v5);
  dispatch_source_set_timer(source, v6, 0xFFFFFFFFFFFFFFFFLL, (timeout / 100.0 * 1000000000.0));
}

- (void)_stopPreparationForStyle:(int64_t)style
{
  v5 = [(UIFeedbackGenerator *)self _preparationTimerForStyle:?];
  if (v5)
  {
    source = v5;
    [(UIFeedbackGenerator *)self _deactivateWithStyle:style];
    dispatch_source_cancel(source);
    dispatch_activate(source);
    [(UIFeedbackGenerator *)self _setPreparationTimer:0 forStyle:style];
    v5 = source;
  }
}

- (void)_setupForFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self->_configuration _setupIfNecessary];
  if ([(_UIFeedbackGeneratorConfiguration *)self->_configuration isEnabled])
  {
    [(UIFeedbackGenerator *)self _setupEnginesIfNeededForFeedback:feedbackCopy];
  }
}

- (void)activateWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(UIFeedbackGenerator *)self _setupForFeedback:0];
  [(UIFeedbackGenerator *)self _activateWithStyle:[(_UIFeedbackGeneratorConfiguration *)self->_configuration activationStyle] completionBlock:blockCopy];
}

- (void)__activateWithStyle:(int64_t)style forFeedback:(id)feedback completionBlock:(id)block
{
  v48 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  blockCopy = block;
  [(UIFeedbackGenerator *)self _setupForFeedback:feedbackCopy];
  if ([(UIFeedbackGenerator *)self _isEnabled])
  {
    [(UIFeedbackGenerator *)self setActivationCount:[(UIFeedbackGenerator *)self activationCount]+ 1];
    v11 = self->_styleActivationCount[style];
    self->_styleActivationCount[style] = v11 + 1;
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v12 = *(__UILogGetCategoryCachedImpl("FeedbackActivation", &__activateWithStyle_forFeedback_completionBlock____s_category) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v12;
        v27 = stringForActivationStyle(style);
        activationCount = self->_activationCount;
        v14 = self->_styleActivationCount[style];
        v15 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        selfCopy = [v15 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        *buf = 138413570;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = activationCount - 1;
        *&buf[22] = 2048;
        v41 = activationCount;
        v42 = 2048;
        v43 = v14 - 1;
        v44 = 2048;
        v45 = v14;
        v46 = 2112;
        v47 = selfCopy;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "activate generator with style: %@; activationCount: %ld -> %ld; styleActivationCount: %ld -> %ld; %@", buf, 0x3Eu);
      }
    }

    [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
    v17 = [(NSSet *)self->_engines count];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__UIFeedbackGenerator___activateWithStyle_forFeedback_completionBlock___block_invoke;
    aBlock[3] = &unk_1E7107028;
    v35 = v38;
    v36 = v17;
    v37 = a2;
    v34 = buf;
    aBlock[4] = self;
    v33 = blockCopy;
    v18 = _Block_copy(aBlock);
    v19 = v18;
    if (v17 < 1)
    {
      (*(v18 + 2))(v18, 0);
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v20 = self->_engines;
      v21 = [(NSSet *)v20 countByEnumeratingWithState:&v28 objects:v39 count:16];
      if (v21)
      {
        v22 = *v29;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(v20);
            }

            if (style)
            {
              v24 = *(*(&v28 + 1) + 8 * i);
              if (style == 1)
              {
                [v24 _prewarm:v11 == 0 andPerformWhenPrewarmed:v19];
              }

              else if (style == 2)
              {
                [v24 _activate:v11 == 0 andPerformWhenRunning:v19];
              }
            }

            else
            {
              v19[2](v19, 1);
            }
          }

          v21 = [(NSSet *)v20 countByEnumeratingWithState:&v28 objects:v39 count:16];
        }

        while (v21);
      }
    }

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(buf, 8);
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

void __71__UIFeedbackGenerator___activateWithStyle_forFeedback_completionBlock___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 64) >= 1)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  if (a2)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = *(a1 + 64);
  if (v3 > v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"UIFeedbackGenerator.m" lineNumber:422 description:@"The feedback engine activation block was called more times than the number of engines."];

    v3 = *(*(*(a1 + 48) + 8) + 24);
    v4 = *(a1 + 64);
  }

  if (v3 == v4)
  {
    [*(a1 + 32) _activated];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

- (void)_setupEnginesIfNeededForFeedback:(id)feedback
{
  v45 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  usedFeedbacks = self->_usedFeedbacks;
  if (feedbackCopy)
  {
    if (usedFeedbacks)
    {
      usedFeedbacks = [(NSSet *)usedFeedbacks setByAddingObject:feedbackCopy];
      v7 = [(NSSet *)usedFeedbacks count];
      v8 = v7 != [(NSSet *)self->_usedFeedbacks count];
    }

    else
    {
      usedFeedbacks = [MEMORY[0x1E695DFD8] setWithObject:feedbackCopy];
      v8 = 1;
    }

    self->_usesCustomActivation = v8;
  }

  else if (usedFeedbacks)
  {
    usedFeedbacks = usedFeedbacks;
  }

  else
  {
    _configuration = [(UIFeedbackGenerator *)self _configuration];
    usedFeedbacks = [_configuration usedFeedbacks];
  }

  if (usedFeedbacks == self->_usedFeedbacks)
  {
    goto LABEL_34;
  }

  v33 = feedbackCopy;
  v9 = [MEMORY[0x1E695DFA8] set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = usedFeedbacks;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [_UIFeedbackEngine engineForFeedback:*(*(&v34 + 1) + 8 * i)];
        if (v15)
        {
          [(NSSet *)v9 addObject:v15];
        }
      }

      v12 = [(NSSet *)v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v16 = self->_styleActivationCount[1];
  v17 = self->_styleActivationCount[2];
  if (v16 > 0 || v17 >= 1)
  {
    v18 = self->_engines;
    v19 = v9;
    v20 = v19;
    if (v18 != v19)
    {
      if (v19 && v18)
      {
        v21 = [(NSSet *)v18 isEqual:v19];

        if (v21)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      v18 = [(NSSet *)self->_engines mutableCopy];
      [(NSSet *)v18 minusSet:v20];
      v20 = [(NSSet *)v20 mutableCopy];
      [(NSSet *)v20 minusSet:self->_engines];
      [(UIFeedbackGenerator *)self _updateActivationStateForRemovedEngines:v18 addedEngines:v20 prewarmCount:v16 turnOnCount:v17];
    }
  }

LABEL_29:
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", &qword_1ED49DB88);
    if (*CategoryCachedImpl)
    {
      v25 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = v25;
        v27 = _UIDescriptionBuilderLightDescription(self);
        engines = self->_engines;
        *buf = 138412802;
        v39 = v27;
        v40 = 2112;
        v41 = engines;
        v42 = 2112;
        v43 = v9;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "updating engines used for %@: %@ -> %@", buf, 0x20u);
      }
    }
  }

  objc_storeStrong(&self->_engines, v9);
  feedbackCopy = v33;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v24 = __UILogGetCategoryCachedImpl("FeedbackDebug", &qword_1ED49DB90);
    if (*v24)
    {
      v29 = *(v24 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        v31 = _UIDescriptionBuilderLightDescription(self);
        v32 = self->_usedFeedbacks;
        *buf = 138412802;
        v39 = v31;
        v40 = 2112;
        v41 = v32;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "updating feedbacks used for %@: %@ -> %@", buf, 0x20u);
      }
    }
  }

  objc_storeStrong(&self->_usedFeedbacks, usedFeedbacks);

LABEL_34:
}

- (void)_updateActivationStateForRemovedEngines:(id)engines addedEngines:(id)addedEngines prewarmCount:(int64_t)count turnOnCount:(int64_t)onCount
{
  v49 = *MEMORY[0x1E69E9840];
  enginesCopy = engines;
  addedEnginesCopy = addedEngines;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Feedback", &_updateActivationStateForRemovedEngines_addedEngines_prewarmCount_turnOnCount____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v15 = v12;
      selfCopy = [v13 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 134219010;
      countCopy = count;
      v41 = 2048;
      onCountCopy = onCount;
      v43 = 2112;
      v44 = selfCopy;
      v45 = 2112;
      v46 = enginesCopy;
      v47 = 2112;
      v48 = addedEnginesCopy;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "updating activation state (prewarm: %ld; activation: %ld) for %@ removedEngines=%@; addedEngines=%@", buf, 0x34u);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = enginesCopy;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      v21 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        if (count >= 1)
        {
          [*(*(&v33 + 1) + 8 * v21) _cooldown];
        }

        if (onCount >= 1)
        {
          [v22 _deactivate];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v19);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = addedEnginesCopy;
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      v27 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v29 + 1) + 8 * v27);
        if (onCount >= 1)
        {
          [*(*(&v29 + 1) + 8 * v27) _activate:1 andPerformWhenRunning:0];
        }

        if (count >= 1)
        {
          [v28 _prewarm:1 andPerformWhenPrewarmed:0];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v25);
  }
}

- (void)deactivate
{
  activationStyle = [(_UIFeedbackGeneratorConfiguration *)self->_configuration activationStyle];

  [(UIFeedbackGenerator *)self _deactivateWithStyle:activationStyle];
}

- (void)_deactivateWithStyle:(int64_t)style
{
  v12 = *MEMORY[0x1E69E9840];
  _isEnabled = [(UIFeedbackGenerator *)self _isEnabled];
  externalActivationCount = self->_externalActivationCount;
  if (_isEnabled || externalActivationCount)
  {
    self->_externalActivationCount = externalActivationCount - 1;
    if (externalActivationCount <= 0)
    {
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v7 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar < 1)
      {
        goto LABEL_7;
      }

      v8 = _UIInternalPreference_EnableFeedbackExceptions;
      if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableFeedbackExceptions)
      {
        goto LABEL_7;
      }

      while (v7 >= v8)
      {
        _UIInternalPreferenceSync(v7, &_UIInternalPreference_EnableFeedbackExceptions, @"EnableFeedbackExceptions", _UIInternalPreferenceUpdateBool);
        v8 = _UIInternalPreference_EnableFeedbackExceptions;
        if (v7 == _UIInternalPreference_EnableFeedbackExceptions)
        {
          goto LABEL_7;
        }
      }

      if (byte_1EA95E324 || _MergedGlobals_1079 == 1)
      {
LABEL_7:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Feedback generator was deactivated by its client more times than it was activated: %@", self}];
      }

      else if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v9 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49DB98) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Feedback generator was deactivated by its client more times than it was activated: %@", buf, 0xCu);
        }
      }
    }

    [(UIFeedbackGenerator *)self __deactivateWithStyle:style];
  }
}

- (void)__deactivateWithStyle:(int64_t)style
{
  v53 = *MEMORY[0x1E69E9840];
  _isEnabled = [(UIFeedbackGenerator *)self _isEnabled];
  activationCount = self->_activationCount;
  if (_isEnabled)
  {
    if (!activationCount)
    {
      autoDeactivationCount = self->_autoDeactivationCount;
      v9 = self->_autoDeactivationCount[style];
      if (v9 >= 1)
      {
        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v10 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49DBA0) + 8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            v12 = stringForActivationStyle(style);
            v13 = MEMORY[0x1E696AEC0];
            selfCopy = self;
            selfCopy = [v13 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

            *buf = 138412546;
            v42 = v12;
            v43 = 2112;
            v44 = selfCopy;
            _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "generator was auto-deactivated for style %@ but finally got a deactivate, swallowing it: %@", buf, 0x16u);
          }

          v9 = autoDeactivationCount[style];
        }

        autoDeactivationCount[style] = v9 - 1;
        return;
      }
    }
  }

  else if (!activationCount)
  {
    return;
  }

  [(UIFeedbackGenerator *)self setActivationCount:[(UIFeedbackGenerator *)self activationCount]- 1];
  styleActivationCount = self->_styleActivationCount;
  --self->_styleActivationCount[style];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v17 = *(__UILogGetCategoryCachedImpl("FeedbackActivation", &qword_1ED49DBA8) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v17;
      v18 = stringForActivationStyle(style);
      v19 = self->_activationCount;
      v20 = styleActivationCount[style];
      v21 = MEMORY[0x1E696AEC0];
      selfCopy2 = self;
      selfCopy2 = [v21 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy2), selfCopy2];

      *buf = 138413570;
      v42 = v18;
      v43 = 2048;
      v44 = (v19 + 1);
      v45 = 2048;
      v46 = v19;
      v47 = 2048;
      v48 = v20 + 1;
      v49 = 2048;
      v50 = v20;
      v51 = 2112;
      v52 = selfCopy2;
      _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEFAULT, "deactivate generator with style: %@; activationCount: %ld -> %ld; styleActivationCount: %ld -> %ld; %@", buf, 0x3Eu);
    }
  }

  if (self->_activationCount < 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Feedback generator was deactivated internally more times than it was activated: %@", self}];
    return;
  }

  v24 = styleActivationCount[style];
  if (v24 < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = self->_activationCount;
    v33 = styleActivationCount[style];
    v34 = stringForActivationStyle(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFeedbackGenerator.m" lineNumber:642 description:{@"_styleActivationCount shouldn't be negative. activationCount=%ld; styleActivationCount=%ld; style=%@", v32, v33, v34}];

    if (!styleActivationCount[style])
    {
      goto LABEL_16;
    }
  }

  else if (!v24)
  {
LABEL_16:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = self->_engines;
    v26 = [(NSSet *)v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v36 + 1) + 8 * v29);
          if (style == 2)
          {
            [v30 _deactivate];
          }

          else if (style == 1)
          {
            [v30 _cooldown];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [(NSSet *)v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v27);
    }
  }

  if (!self->_activationCount)
  {
    [(UIFeedbackGenerator *)self _deactivated];
  }
}

- (void)_forceDeactivationForStyle:(int64_t)style
{
  v5 = self->_styleActivationCount[style];
  if (v5 < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = stringForActivationStyle(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFeedbackGenerator.m" lineNumber:682 description:{@"force deactivating %@ with style %@ which is not active (activationCount = %ld)", self, v8, v5}];
  }

  else if (!v5)
  {
    return;
  }

  do
  {
    --v5;
    [(UIFeedbackGenerator *)self __deactivateWithStyle:style];
  }

  while (v5);
}

void __48__UIFeedbackGenerator__setupAutoDeactivateTimer__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained _isAutoDeactivated] & 1) == 0)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v3 = *(__UILogGetCategoryCachedImpl("Feedback", _UIInternalPreference_EnableFeedbackExceptions_block_invoke_2___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        [v2 _autoDeactivationTimeout];
        v6 = v5;
        v7 = [v2 activationCount];
        v8 = MEMORY[0x1E696AEC0];
        v9 = v2;
        v10 = [v8 stringWithFormat:@"<%s: %p>", object_getClassName(v9), v9];

        *buf = 134218498;
        v12 = v6;
        v13 = 2048;
        v14 = v7;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "nothing happened to generator for %g sec, auto-deactivating it with activationCount: %ld; %@", buf, 0x20u);
      }
    }

    [v2 _stats_activationTimedOut];
    [v2 _autoDeactivate];
  }
}

- (void)_autoDeactivate
{
  v3 = 0;
  v23 = *MEMORY[0x1E69E9840];
  do
  {
    v4 = &self->super.isa + v3;
    v5 = v4[1];
    if (v5)
    {
      if (v4[4])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = stringForActivationStyle(v3);
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIFeedbackGenerator.m" lineNumber:739 description:{@"Generator is already auto-deactivated for style %@: %@", v13, self}];
      }

      v4[4] = v5;
      activationCount = self->_activationCount;
      v7 = self->_configuration;
      v8 = [(NSSet *)self->_engines description];
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v9 = *(__UILogGetCategoryCachedImpl("FeedbackActivation", &_autoDeactivate___s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = stringForActivationStyle(v3);
          *buf = 138413058;
          v16 = v11;
          v17 = 2048;
          v18 = activationCount;
          v19 = 2048;
          v20 = v5;
          v21 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "performing auto-deactivate for style: %@; activationCount: %ld; styleActivationCount: %ld; %@", buf, 0x2Au);
        }
      }

      [(UIFeedbackGenerator *)self _forceDeactivationForStyle:v3];
    }

    ++v3;
  }

  while (v3 != 3);
}

- (void)_clientDidUpdateGeneratorWithSelector:(SEL)selector
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(UIFeedbackGenerator *)self _isEnabled])
  {
    if ([(UIFeedbackGenerator *)self _isAutoDeactivated])
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v4 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49DBB0) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = MEMORY[0x1E696AEC0];
          selfCopy = self;
          v7 = v4;
          selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

          *buf = 138412290;
          v16 = selfCopy;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "auto-deactivated feedback generator was updated again, re-activate it: %@", buf, 0xCu);
        }
      }

      v9 = 0;
      autoDeactivationCount = self->_autoDeactivationCount;
      while (1)
      {
        v11 = autoDeactivationCount[v9];
        autoDeactivationCount[v9] = 0;
        if (v11 >= 1)
        {
          break;
        }

        if (v11)
        {
          goto LABEL_12;
        }

LABEL_13:
        if (++v9 == 3)
        {
          goto LABEL_14;
        }
      }

      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v12 = *(__UILogGetCategoryCachedImpl("FeedbackActivation", &qword_1ED49DBB8) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = stringForActivationStyle(v9);
          *buf = 138412802;
          v16 = v14;
          v17 = 2048;
          v18 = v11;
          v19 = 2112;
          selfCopy2 = self;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "performing re-activation for style: %@; autoDeactivationCount: %ld; %@", buf, 0x20u);
        }
      }

      do
      {
LABEL_12:
        --v11;
        [(UIFeedbackGenerator *)self __activateWithStyle:v9 forFeedback:0 completionBlock:0];
      }

      while (v11);
      goto LABEL_13;
    }

LABEL_14:
    [(UIFeedbackGenerator *)self _resetAutoDeactivationTimeout];
  }
}

- (void)performFeedbackWithDelay:(double)delay insideBlock:(id)block
{
  currentDelay = self->_currentDelay;
  self->_currentDelay = currentDelay + delay;
  (*(block + 2))(block, a2);
  self->_currentDelay = currentDelay;
}

- (void)_playFeedback:(id)feedback withMinimumIntervalPassed:(double)passed since:(double *)since prefersRegularPace:(BOOL)pace atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v61 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  kdebug_trace();
  if (feedbackCopy && [(UIFeedbackGenerator *)self _isEnabled])
  {
    gestureRecognizer = self->_gestureRecognizer;
    if (!gestureRecognizer || x == 1.79769313e308 && y == 1.79769313e308)
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v15 = *(__UILogGetCategoryCachedImpl("FeedbackGesture", &qword_1ED49DBC8) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = self->_gestureRecognizer;
          v18 = v15;
          v19 = [v16 stringWithFormat:@"<%s: %p>", object_getClassName(v17), v17];

          *buf = 138412290;
          *&buf[4] = v19;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "playing feedback without gesture recognizer (%@) or at null point", buf, 0xCu);
        }
      }
    }

    else
    {
      v58 = 0;
      *buf = 0;
      if ([(_UIFeedbackGeneratorGestureRecognizer *)gestureRecognizer hasDeviceInputForLocation:buf type:&v58 senderID:x, y])
      {
        _configuration = [(UIFeedbackGenerator *)self _configuration];
        v31 = [_configuration _alternateFeedback:feedbackCopy forDevice:*buf senderID:v58];

        feedbackCopy = v31;
      }
    }

    _configuration2 = [(UIFeedbackGenerator *)self _configuration];
    v26 = [_configuration2 _updateFeedbackForOutputMode:feedbackCopy];

    v33 = [_UIFeedbackEngine engineForFeedback:v26];
    v34 = v33;
    if (v33)
    {
      [v33 currentTime];
      v36 = v35;
      [(UIFeedbackGenerator *)self _outputMode];
      *buf = 0;
      *&buf[8] = buf;
      currentDelay = self->_currentDelay;
      *&buf[16] = 0x2020000000;
      v60 = currentDelay;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __99__UIFeedbackGenerator__playFeedback_withMinimumIntervalPassed_since_prefersRegularPace_atLocation___block_invoke;
      v47[3] = &unk_1E7107050;
      v51 = buf;
      sinceCopy = since;
      paceCopy = pace;
      v48 = v34;
      passedCopy = passed;
      v54 = v36;
      v49 = v26;
      selfCopy = self;
      v55 = x;
      v56 = y;
      [(UIFeedbackGenerator *)self __activateWithStyle:2 forFeedback:v49 completionBlock:v47];
      [(UIFeedbackGenerator *)self _stopPreparationForStyle:2];
      [(UIFeedbackGenerator *)self _stopPreparationForStyle:1];

      _Block_object_dispose(buf, 8);
    }

    else if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v38 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49DBD0) + 8);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = MEMORY[0x1E696AEC0];
        v40 = v26;
        v41 = v38;
        v42 = [v39 stringWithFormat:@"<%s: %p>", object_getClassName(v40), v40];

        v43 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        v45 = v42;
        selfCopy2 = [v43 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy2), selfCopy2];

        *buf = 138412546;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, "no engine to play feedback %@ for generator %@, dropping it", buf, 0x16u);
      }
    }
  }

  else if ((_UIFeedbackLoggingDisabled & 1) != 0 || (v20 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49DBC0) + 8), !os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT)))
  {
    v26 = feedbackCopy;
  }

  else
  {
    v21 = MEMORY[0x1E696AEC0];
    selfCopy3 = self;
    v23 = v20;
    selfCopy3 = [v21 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy3), selfCopy3];

    v25 = MEMORY[0x1E696AEC0];
    v26 = feedbackCopy;
    v27 = selfCopy3;
    v28 = [v25 stringWithFormat:@"<%s: %p>", object_getClassName(v26), v26];

    v29 = v28;
    *buf = 138412802;
    *&buf[4] = selfCopy3;
    *&buf[12] = 2112;
    *&buf[14] = v28;
    *&buf[22] = 2048;
    *&v60 = [(UIFeedbackGenerator *)selfCopy3 _isEnabled];
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "generator %@ cannot play feedback %@ (enabled=%ld)", buf, 0x20u);
  }
}

void __99__UIFeedbackGenerator__playFeedback_withMinimumIntervalPassed_since_prefersRegularPace_atLocation___block_invoke(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_19;
  }

  [*(a1 + 32) currentTime];
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = v3 - *v4;
    if (v5 < 0.0)
    {
      goto LABEL_19;
    }

    v6 = *(a1 + 72);
    if (v5 <= v6)
    {
      if (*(a1 + 104) != 1)
      {
        goto LABEL_19;
      }

      *(*(*(a1 + 56) + 8) + 24) = *v4 + v6 - v3 + *(*(*(a1 + 56) + 8) + 24);
      *v4 = *(a1 + 72) + *v4;
    }

    else
    {
      *v4 = v3;
    }
  }

  else
  {
    v7 = *(a1 + 72);
    if (v7 > 0.0)
    {
      *(*(*(a1 + 56) + 8) + 24) = v7 + *(*(*(a1 + 56) + 8) + 24);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - (v3 - *(a1 + 80));
  v8 = *(a1 + 40);
  if (*(*(*(a1 + 56) + 8) + 24) > 0.0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 40) copy];
      v10 = *(*(a1 + 56) + 8);
      [v9 _delay];
      [v9 _setDelay:v11 + *(v10 + 24)];
    }

    else
    {
      v9 = +[_UIFeedbackPattern feedbackPattern];
      v12 = [*(a1 + 40) _category];
      [v9 _setCategory:v12];

      [v9 addFeedback:*(a1 + 40) atTime:*(*(*(a1 + 56) + 8) + 24)];
    }

    v8 = v9;
  }

  v13 = [*(a1 + 48) view];
  [v8 _setView:v13];

  [v8 _setLocation:{*(a1 + 88), *(a1 + 96)}];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Feedback", _UIInternalPreference_EnableFeedbackExceptions_block_invoke_3___s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = *(a1 + 48);
      v17 = v14;
      v18 = [v15 stringWithFormat:@"<%s: %p>", object_getClassName(v16), v16];

      v19 = MEMORY[0x1E696AEC0];
      v20 = v8;
      v21 = v18;
      v22 = [v19 stringWithFormat:@"<%s: %p>", object_getClassName(v20), v20];

      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "generator %@ playing feedback %@", buf, 0x16u);
    }
  }

  [v8 play];
  [*(a1 + 48) _stats_playedFeedback];

LABEL_19:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__UIFeedbackGenerator__playFeedback_withMinimumIntervalPassed_since_prefersRegularPace_atLocation___block_invoke_68;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v23 = *(*(a1 + 48) + 72);
  if (v23)
  {
    v24 = [v23 copy];
    dispatch_block_cancel(*(*(a1 + 48) + 72));
    v25 = _Block_copy(v24);
    v26 = *(a1 + 48);
    v27 = *(v26 + 72);
    *(v26 + 72) = v25;

    v28 = *(*(a1 + 48) + 72);
    v29 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v28);
  }
}

- (void)_stopFeedback:(id)feedback
{
  if (feedback)
  {
    [feedback stop];
  }
}

- (NSString)_stats_key
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_setOutputMode:(int64_t)mode
{
  _configuration = [(UIFeedbackGenerator *)self _configuration];
  [_configuration setOutputMode:mode];
}

- (int64_t)_outputMode
{
  _configuration = [(UIFeedbackGenerator *)self _configuration];
  outputMode = [_configuration outputMode];

  return outputMode;
}

- (UIFeedbackGenerator)initWithCoordinateSpace:(id)space
{
  v4 = _viewFromCoordinateSpace(space);
  v5 = [(UIFeedbackGenerator *)self initWithView:v4];

  return v5;
}

- (UIFeedbackGenerator)initWithConfiguration:(id)configuration coordinateSpace:(id)space
{
  configurationCopy = configuration;
  v7 = _viewFromCoordinateSpace(space);
  v8 = [(UIFeedbackGenerator *)self initWithConfiguration:configurationCopy view:v7];

  return v8;
}

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

+ (id)behaviorWithConfiguration:(id)configuration coordinateSpace:(id)space
{
  spaceCopy = space;
  configurationCopy = configuration;
  if (os_variant_has_internal_diagnostics())
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Use of _UIFeedbackBehavior methods have been deprecated since iOS 10 and will be removed in a future version. Update to view-based UIFeedbackGenerator methods.", buf, 2u);
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &behaviorWithConfiguration_coordinateSpace____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Use of _UIFeedbackBehavior methods have been deprecated since iOS 10 and will be removed in a future version. Update to view-based UIFeedbackGenerator methods.", v12, 2u);
    }
  }

  v9 = [[self alloc] initWithConfiguration:configurationCopy coordinateSpace:spaceCopy];

  return v9;
}

- (id)_activationTimeOutCountStatistics
{
  _statsSuffix = [(UIFeedbackGenerator *)self _statsSuffix];
  v3 = [_UIStatistics feedbackGeneratorActivationTimeOutCountWithSuffix:_statsSuffix];

  return v3;
}

- (id)_playCountStatistics
{
  _statsSuffix = [(UIFeedbackGenerator *)self _statsSuffix];
  v3 = [_UIStatistics feedbackGeneratorPlayCountWithSuffix:_statsSuffix];

  return v3;
}

- (void)_stats_activationDidChangeTo:(BOOL)to
{
  if (to)
  {
    _activationCountStatistics = [(UIFeedbackGenerator *)self _activationCountStatistics];
    [_activationCountStatistics incrementValueBy:1];

    _activationDurationStatistics = [(UIFeedbackGenerator *)self _activationDurationStatistics];
    [_activationDurationStatistics startTimingForObject:self];
  }

  else
  {
    _activationDurationStatistics = [(UIFeedbackGenerator *)self _activationDurationStatistics];
    [_activationDurationStatistics recordTimingForObject:self];
  }
}

- (void)_stats_activationTimedOut
{
  _activationTimeOutCountStatistics = [(UIFeedbackGenerator *)self _activationTimeOutCountStatistics];
  [_activationTimeOutCountStatistics incrementValueBy:1];
}

- (void)_stats_playedFeedback
{
  _playCountStatistics = [(UIFeedbackGenerator *)self _playCountStatistics];
  [_playCountStatistics incrementValueBy:1];
}

@end