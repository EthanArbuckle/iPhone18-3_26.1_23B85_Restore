@interface UIUserInterfaceStyleArbiter
+ (id)sharedInstance;
- (BOOL)_updateControllersWithOldModeValue:(int64_t)value newModeValue:(int64_t)modeValue;
- (id)_init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)nextTransition;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_proposedStyleForCurrentMode;
- (void)_backlightStateUpdated:(int64_t)updated updateStyle:(BOOL)style;
- (void)_logArbiterDecisionToBiomeWithNewStyle:(int64_t)style reason:(int64_t)reason;
- (void)_logChangeEventWithNewMode:(int64_t)mode oldMode:(int64_t)oldMode newStyle:(int64_t)style oldStyle:(int64_t)oldStyle reason:(int64_t)reason;
- (void)_setWatchesScreenDim:(BOOL)dim;
- (void)_updateCurrentStyleAndNotify:(BOOL)notify forReason:(int64_t)reason;
- (void)_updateCurrentStyleForReason:(int64_t)reason;
- (void)toggleCurrentStyleWithOverrideTiming:(int64_t)timing;
- (void)userInterfaceStyleModeDidChange:(id)change;
@end

@implementation UIUserInterfaceStyleArbiter

+ (id)sharedInstance
{
  if (UIApp)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__UIUserInterfaceStyleArbiter_sharedInstance__block_invoke;
    block[3] = &unk_1E70F2F20;
    block[4] = &v5;
    if (qword_1ED4A0B68 != -1)
    {
      dispatch_once(&qword_1ED4A0B68, block);
    }

    if (*(v6 + 24) == 1)
    {
      if (pthread_main_np() == 1)
      {
        [qword_1ED4A0B60 _updateCurrentStyleAndNotify:1 forReason:0];
      }

      else
      {
        dispatch_sync(MEMORY[0x1E69E96A0], &__block_literal_global_49_5);
      }
    }

    v2 = qword_1ED4A0B60;
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __45__UIUserInterfaceStyleArbiter_sharedInstance__block_invoke(uint64_t a1)
{
  if ([UIApp isFrontBoard])
  {
    if ([MEMORY[0x1E699FB78] currentProcessServicesDefaultShellEndpoint])
    {
      v2 = [[UIUserInterfaceStyleArbiter alloc] _init];
      v3 = qword_1ED4A0B60;
      qword_1ED4A0B60 = v2;

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

- (id)_init
{
  v17.receiver = self;
  v17.super_class = UIUserInterfaceStyleArbiter;
  v2 = [(UIUserInterfaceStyleArbiter *)&v17 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DEC80]) initWithDelegate:v2];
    styleMode = v2->_styleMode;
    v2->_styleMode = v3;

    v2->_notificationToken = -1;
    notify_register_check("com.apple.UIKit.SystemUIServiceUserInterfaceStyleNotification", &v2->_notificationToken);
    v5 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:@"com.apple.UIKit.UserInterfaceStyleAnalyticsActivity"];
    backgroundActivityScheduler = v2->_backgroundActivityScheduler;
    v2->_backgroundActivityScheduler = v5;

    [(NSBackgroundActivityScheduler *)v2->_backgroundActivityScheduler setRepeats:1];
    [(NSBackgroundActivityScheduler *)v2->_backgroundActivityScheduler setInterval:3600.0];
    v7 = v2->_backgroundActivityScheduler;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__UIUserInterfaceStyleArbiter__init__block_invoke;
    v15[3] = &unk_1E71223F0;
    v8 = v2;
    v16 = v8;
    [(NSBackgroundActivityScheduler *)v7 scheduleWithBlock:v15];
    objc_initWeak(&location, v8);
    v9 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v13, &location);
    v10 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
    stateCaptureToken = v8->_stateCaptureToken;
    v8->_stateCaptureToken = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __36__UIUserInterfaceStyleArbiter__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 88) shouldDefer])
  {
    v3[2](v3, 2);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36__UIUserInterfaceStyleArbiter__init__block_invoke_2;
    v4[3] = &unk_1E70F37C0;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

uint64_t __36__UIUserInterfaceStyleArbiter__init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _logPeriodicEvent];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id __36__UIUserInterfaceStyleArbiter__init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionWithMultilinePrefix:0];

  return v2;
}

- (void)toggleCurrentStyleWithOverrideTiming:(int64_t)timing
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    timingCopy = timing;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Arbiter toggleCurrentStyleWithOverrideTiming: %ld", &v13, 0xCu);
  }

  currentModeValue = self->_currentModeValue;
  if (currentModeValue > 99)
  {
    if (currentModeValue == 100 || currentModeValue == 102)
    {
      style = self->_lastOverride.style;
      if (style && style != self->_lastProposedAutomaticStyle)
      {
        v10 = *MEMORY[0x1E69DED30];
        timingCopy2 = *(MEMORY[0x1E69DED30] + 8);
        styleMode = self->_styleMode;
      }

      else
      {
        if (self->_currentStyle == 1)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        styleMode = self->_styleMode;
        timingCopy2 = timing;
      }

      [(UISUserInterfaceStyleMode *)styleMode setOverride:v10, timingCopy2];
    }
  }

  else
  {
    if (currentModeValue == 1)
    {
      v7 = self->_styleMode;
      v8 = 2;
    }

    else
    {
      if (currentModeValue != 2)
      {
        return;
      }

      v7 = self->_styleMode;
      v8 = 1;
    }

    [(UISUserInterfaceStyleMode *)v7 setModeValue:v8];
  }
}

- (id)nextTransition
{
  v12 = *MEMORY[0x1E69E9840];
  if (UISUserInterfaceStyleModeValueIsAutomatic())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__UIUserInterfaceStyleArbiter_nextTransition__block_invoke;
    aBlock[3] = &unk_1E7122440;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v4 = v3;
    style = self->_lastOverride.style;
    if (style && style != self->_lastProposedAutomaticStyle && (self->_lastOverride.timing - 1) > 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*(v3 + 2))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Arbiter returning nextTransition: %@", buf, 0xCu);
  }

  return v6;
}

id __45__UIUserInterfaceStyleArbiter_nextTransition__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (v4 == 100)
  {
    v5 = 64;
LABEL_5:
    v6 = [*(v3 + v5) nextTransition:{*(v3 + 24) == 1, v1}];

    return v6;
  }

  if (v4 == 102)
  {
    v5 = 72;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (void)userInterfaceStyleModeDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__UIUserInterfaceStyleArbiter_userInterfaceStyleModeDidChange___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIUserInterfaceStyleArbiter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _NSStringFromUIUserInterfaceStyle(self->_currentStyle);
  v5 = [v3 appendObject:v4 withName:@"currentStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIUserInterfaceStyleArbiter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  v7 = _NSStringFromUIUserInterfaceStyle(self->_currentStyle);
  v8 = [v6 appendObject:v7 withName:@"currentStyle"];

  activeMultilinePrefix = [v6 activeMultilinePrefix];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__UIUserInterfaceStyleArbiter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v13[3] = &unk_1E70F35B8;
  v10 = v6;
  v14 = v10;
  selfCopy = self;
  [v10 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v13];

  v11 = v10;
  return v10;
}

id __69__UIUserInterfaceStyleArbiter_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"styleMode"];
  v3 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 16) withName:@"currentModeValue"];
  v4 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 32) withName:@"lastProposedAutomaticStyle"];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"sunScheduleController" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"customScheduleController" skipIfNil:1];
}

- (void)_updateCurrentStyleForReason:(int64_t)reason
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(UIUserInterfaceStyleArbiter *)self _updateCurrentStyleAndNotify:1 forReason:reason];
}

- (void)_updateCurrentStyleAndNotify:(BOOL)notify forReason:(int64_t)reason
{
  notifyCopy = notify;
  v43 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v41 = notifyCopy;
    *&v41[4] = 2048;
    *&v41[6] = reason;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Arbiter _updateCurrentStyleAndNotify:%d forReason:%ld", buf, 0x12u);
  }

  modeValue = [(UISUserInterfaceStyleMode *)self->_styleMode modeValue];
  currentModeValue = self->_currentModeValue;
  v10 = [(UIUserInterfaceStyleArbiter *)self _updateControllersWithOldModeValue:currentModeValue newModeValue:modeValue];
  self->_currentModeValue = modeValue;
  if (reason != 2)
  {
    if (modeValue == 100)
    {
      v11 = 64;
    }

    else
    {
      if (modeValue != 102)
      {
        goto LABEL_9;
      }

      v11 = 72;
    }

    [*(&self->super.isa + v11) forceUpdate];
  }

LABEL_9:
  _proposedStyleForCurrentMode = [(UIUserInterfaceStyleArbiter *)self _proposedStyleForCurrentMode];
  v13 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v41 = _proposedStyleForCurrentMode;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Arbiter proposed style: %ld", buf, 0xCu);
  }

  IsAutomatic = UISUserInterfaceStyleModeValueIsAutomatic();
  v15 = MEMORY[0x1E69DED30];
  if ((IsAutomatic & 1) == 0)
  {
    [(UIUserInterfaceStyleArbiter *)self _setWatchesScreenDim:0];
    v25 = 0;
    self->_lastProposedAutomaticStyle = 0;
    self->_lastOverride = *v15;
    goto LABEL_52;
  }

  v39 = notifyCopy;
  [(UIUserInterfaceStyleArbiter *)self _setWatchesScreenDim:1];
  override = [(UISUserInterfaceStyleMode *)self->_styleMode override];
  v18 = v17;
  v38 = currentModeValue;
  if (override)
  {
    v19 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v41 = override;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Arbiter considering override style: %ld", buf, 0xCu);
    }

    if ((v18 - 1) > 1)
    {
      goto LABEL_30;
    }

    lastProposedAutomaticStyle = self->_lastProposedAutomaticStyle;
    v23 = _proposedStyleForCurrentMode != override && _proposedStyleForCurrentMode != lastProposedAutomaticStyle && lastProposedAutomaticStyle != 0;
    v24 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v41 = override;
      *&v41[8] = 2048;
      *&v41[10] = v23;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Last proposed: %ld, so clear override: %ld", buf, 0x16u);
    }

    if (!v23)
    {
LABEL_30:
      v26 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = override;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "Not clearing override, so using override style %ld", buf, 0xCu);
      }

      v25 = 0;
      currentStyle = override;
      goto LABEL_35;
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  currentStyle = _proposedStyleForCurrentMode;
LABEL_35:
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v28 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    for (i = _UIInternalPreference_SettingsUserInterfaceStyleSuppressChange; v28 != i; i = _UIInternalPreference_SettingsUserInterfaceStyleSuppressChange)
    {
      if (v28 < i)
      {
        if (byte_1EA95E6E4)
        {
          break;
        }

        goto LABEL_48;
      }

      _UIInternalPreferenceSync(v28, &_UIInternalPreference_SettingsUserInterfaceStyleSuppressChange, @"SettingsUserInterfaceStyleSuppressChange", _UIInternalPreferenceUpdateBool);
    }
  }

  if (reason == 6 || v10 || self->_isDim || !UISUserInterfaceStyleModeOverridesEqual())
  {
LABEL_48:
    v33 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v41 = currentStyle;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_DEFAULT, "Arbiter taking proposed style: %ld", buf, 0xCu);
    }
  }

  else
  {
    v29 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      isDim = self->_isDim;
      v31 = UISUserInterfaceStyleModeOverridesEqual();
      *buf = 67109888;
      *v41 = isDim;
      *&v41[4] = 2048;
      *&v41[6] = reason;
      *&v41[14] = 1024;
      *&v41[16] = 0;
      LOWORD(v42[0]) = 1024;
      *(v42 + 2) = v31;
      _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "Arbiter ignoring proposed style: isDim: %d, reason: %ld, significantModeChange: %d, overrides equal: %d", buf, 0x1Eu);
    }

    currentStyle = self->_currentStyle;
  }

  currentModeValue = v38;
  self->_lastProposedAutomaticStyle = _proposedStyleForCurrentMode;
  self->_lastOverride.style = override;
  _proposedStyleForCurrentMode = currentStyle;
  self->_lastOverride.timing = v18;
  notifyCopy = v39;
LABEL_52:
  v34 = self->_currentStyle;
  if (_proposedStyleForCurrentMode == v34)
  {
    [(UIUserInterfaceStyleArbiter *)self _logArbiterDecisionToBiomeWithNewStyle:_proposedStyleForCurrentMode reason:reason];
    if (modeValue == currentModeValue)
    {
      if (!v25)
      {
        return;
      }

      goto LABEL_62;
    }
  }

  else
  {
    self->_currentStyle = _proposedStyleForCurrentMode;
    v35 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v41 = v34;
      *&v41[8] = 2048;
      *&v41[10] = _proposedStyleForCurrentMode;
      *&v41[18] = 1024;
      v42[0] = notifyCopy;
      _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEFAULT, "Arbiter changing style from %ld to %ld, notifying: %d", buf, 0x1Cu);
    }

    notify_set_state(self->_notificationToken, self->_currentStyle);
    if (notifyCopy)
    {
      notify_post("com.apple.UIKit.SystemUIServiceUserInterfaceStyleNotification");
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UIUserInterfaceStyleArbiterStyleChangedNotification" object:self];
    }

    [(UIUserInterfaceStyleArbiter *)self _logArbiterDecisionToBiomeWithNewStyle:_proposedStyleForCurrentMode reason:reason, v38];
  }

  [(UIUserInterfaceStyleArbiter *)self _logChangeEventWithNewMode:modeValue oldMode:currentModeValue newStyle:_proposedStyleForCurrentMode oldStyle:v34 reason:reason, v38];
  if (!v25)
  {
    return;
  }

LABEL_62:
  v37 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "Arbiter clearing override", buf, 2u);
  }

  [(UISUserInterfaceStyleMode *)self->_styleMode setOverride:*MEMORY[0x1E69DED30], *(MEMORY[0x1E69DED30] + 8)];
}

- (BOOL)_updateControllersWithOldModeValue:(int64_t)value newModeValue:(int64_t)modeValue
{
  v35 = *MEMORY[0x1E69E9840];
  if (value == modeValue)
  {
    if (value != 102)
    {
LABEL_34:
      v19 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    if (modeValue == 100)
    {
      if (!self->_sunScheduleController)
      {
        v7 = _UIUserInterfaceStyleArbiterLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Arbiter creating SunScheduleController", &buf, 2u);
        }

        v8 = objc_alloc_init(_UISunScheduleController);
        sunScheduleController = self->_sunScheduleController;
        self->_sunScheduleController = v8;
      }

      v10 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Arbiter starting observing SunScheduleController", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      v11 = self->_sunScheduleController;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke;
      v31[3] = &unk_1E7122468;
      objc_copyWeak(&v32, &buf);
      [(_UISunScheduleController *)v11 addObserver:self changeHandler:v31];
      objc_destroyWeak(&v32);
      objc_destroyWeak(&buf);
      goto LABEL_30;
    }

    if (value == 100)
    {
      v17 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Arbiter ending observing SunScheduleController", &buf, 2u);
      }

      [(_UISunScheduleController *)self->_sunScheduleController removeObserver:self];
      if (modeValue != 102)
      {
        goto LABEL_34;
      }
    }

    else if (modeValue != 102)
    {
LABEL_30:
      if (value == 102)
      {
        v22 = _UIUserInterfaceStyleArbiterLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "Arbiter ending observing CustomScheduleController", &buf, 2u);
        }

        [(_UICustomScheduleController *)self->_customScheduleController removeObserver:self];
      }

      goto LABEL_34;
    }
  }

  if (!self->_customScheduleController)
  {
    v12 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Arbiter creating CustomScheduleController", &buf, 2u);
    }

    v13 = objc_alloc_init(_UICustomScheduleController);
    customScheduleController = self->_customScheduleController;
    self->_customScheduleController = v13;
  }

  buf = 0u;
  v34 = 0u;
  styleMode = self->_styleMode;
  if (styleMode)
  {
    [(UISUserInterfaceStyleMode *)styleMode customSchedule];
  }

  v16 = self->_customScheduleController;
  if (v16)
  {
    [(_UICustomScheduleController *)v16 schedule];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v27 = buf;
  v28 = v34;
  v18 = UISUserInterfaceStyleModeSchedulesEqual();
  v29 = buf;
  v30 = v34;
  [(_UICustomScheduleController *)self->_customScheduleController setSchedule:&v29];
  v19 = v18 ^ 1;
  if (value != modeValue)
  {
    v20 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Arbiter starting observing CustomScheduleController", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    v21 = self->_customScheduleController;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke_82;
    v25[3] = &unk_1E7122490;
    objc_copyWeak(&v26, &buf);
    [(_UICustomScheduleController *)v21 addObserver:self changeHandler:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&buf);
  }

LABEL_35:
  v23 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    DWORD1(buf) = value != modeValue;
    WORD4(buf) = 1024;
    *(&buf + 10) = v19;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "Arbiter _updateControllers got modeChanged:%d customScheduleChanged:%d", &buf, 0xEu);
  }

  return (value != modeValue) | v19 & 1;
}

void __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke(uint64_t a1)
{
  v2 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Arbiter SunScheduleController changed", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke_79;
  block[3] = &unk_1E70F5A28;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCurrentStyleForReason:2];
}

void __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke_82(uint64_t a1)
{
  v2 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Arbiter CustomScheduleController changed", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke_83;
  block[3] = &unk_1E70F5A28;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __79__UIUserInterfaceStyleArbiter__updateControllersWithOldModeValue_newModeValue___block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCurrentStyleForReason:2];
}

- (int64_t)_proposedStyleForCurrentMode
{
  currentModeValue = self->_currentModeValue;
  switch(currentModeValue)
  {
    case 102:
      customScheduleController = self->_customScheduleController;
      break;
    case 100:
      customScheduleController = self->_sunScheduleController;
      break;
    case 2:
      return 2;
    default:
      return 1;
  }

  if ([customScheduleController isInScheduleTime])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_logArbiterDecisionToBiomeWithNewStyle:(int64_t)style reason:(int64_t)reason
{
  v15 = *MEMORY[0x1E69E9840];
  if (style == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (style == 2);
  }

  if (reason == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = reason == 1;
  }

  v6 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Arbiter asked to write decision to Biome with appearance state: %d, change reason: %d", buf, 0xEu);
  }

  v7 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__UIUserInterfaceStyleArbiter__logArbiterDecisionToBiomeWithNewStyle_reason___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  v9 = v4;
  v10 = v5;
  dispatch_async(v7, block);
}

void __77__UIUserInterfaceStyleArbiter__logArbiterDecisionToBiomeWithNewStyle_reason___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 36);
    *buf = 67109376;
    *&buf[4] = v3;
    LOWORD(v22) = 1024;
    *(&v22 + 2) = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Arbiter writing decision to Biome with appearance state: %d, change reason: %d", buf, 0xEu);
  }

  v20 = 0;
  if (!qword_1ED4A0B70)
  {
    *buf = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __BiomeStreamsLibraryCore_block_invoke;
    v24 = &__block_descriptor_40_e5_v8__0l;
    v25 = &v20;
    v26 = xmmword_1E71224D8;
    v27 = 0;
    qword_1ED4A0B70 = _sl_dlopen();
  }

  if (!qword_1ED4A0B70)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
    [v16 handleFailureInFunction:v17 file:@"UIUserInterfaceStyleArbiter.m" lineNumber:32 description:{@"%s", v20}];

    goto LABEL_16;
  }

  if (v20)
  {
    free(v20);
  }

  *&v26 = 0;
  *(&v26 + 1) = &v26;
  v27 = 0x2050000000;
  v5 = qword_1ED4A0B78;
  v28 = qword_1ED4A0B78;
  if (!qword_1ED4A0B78)
  {
    *buf = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getBMDisplayAppearanceClass_block_invoke;
    v24 = &unk_1E70F2F20;
    v25 = &v26;
    __getBMDisplayAppearanceClass_block_invoke(buf);
    v5 = *(*(&v26 + 1) + 24);
  }

  v6 = v5;
  _Block_object_dispose(&v26, 8);
  v7 = [[v5 alloc] initWithState:*(a1 + 32) reason:*(a1 + 36)];
  *&v26 = 0;
  *(&v26 + 1) = &v26;
  v27 = 0x2020000000;
  v8 = off_1ED4A0B80;
  v28 = off_1ED4A0B80;
  if (!off_1ED4A0B80)
  {
    *buf = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getBiomeLibrarySymbolLoc_block_invoke;
    v24 = &unk_1E70F2F20;
    v25 = &v26;
    v9 = BiomeLibraryLibrary();
    v10 = dlsym(v9, "BiomeLibrary");
    *(v25[1] + 3) = v10;
    off_1ED4A0B80 = *(v25[1] + 3);
    v8 = *(*(&v26 + 1) + 24);
  }

  _Block_object_dispose(&v26, 8);
  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> _UIBiomeLibrary(void)"];
    [v18 handleFailureInFunction:v19 file:@"UIUserInterfaceStyleArbiter.m" lineNumber:35 description:{@"%s", dlerror()}];

LABEL_16:
    __break(1u);
  }

  v11 = v8();
  v12 = [v11 Device];
  v13 = [v12 Display];
  v14 = [v13 Appearance];
  v15 = [v14 source];
  [v15 sendEvent:v7];
}

- (void)_logChangeEventWithNewMode:(int64_t)mode oldMode:(int64_t)oldMode newStyle:(int64_t)style oldStyle:(int64_t)oldStyle reason:(int64_t)reason
{
  v17[3] = *MEMORY[0x1E69E9840];
  AnalyticsSendEventLazy();
  v16[0] = @"Mode";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v17[0] = v10;
  v16[1] = @"Value";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v17[1] = v11;
  v16[2] = @"Timestamp";
  date = [MEMORY[0x1E695DF00] date];
  v17[2] = date;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  PLLogRegisteredEvent();
  date2 = [MEMORY[0x1E695DF00] date];
  lastUpdateDate = self->_lastUpdateDate;
  self->_lastUpdateDate = date2;
}

id __91__UIUserInterfaceStyleArbiter__logChangeEventWithNewMode_oldMode_newStyle_oldStyle_reason___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[5]];
  [v2 setObject:v3 forKeyedSubscript:@"currentMode"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  [v2 setObject:v4 forKeyedSubscript:@"previousMode"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a1[7]];
  [v2 setObject:v5 forKeyedSubscript:@"currentValue"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a1[8]];
  [v2 setObject:v6 forKeyedSubscript:@"previousValue"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a1[9]];
  [v2 setObject:v7 forKeyedSubscript:@"reason"];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v8 component:32 fromDate:v9];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  [v2 setObject:v11 forKeyedSubscript:@"currentHour"];

  v12 = *(a1[4] + 80);
  if (v12)
  {
    [v12 timeIntervalSinceNow];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:vcvtmd_s64_f64(v13 / -60.0)];
    [v2 setObject:v14 forKeyedSubscript:@"length"];
  }

  return v2;
}

id __48__UIUserInterfaceStyleArbiter__logPeriodicEvent__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 16)];
  [v2 setObject:v3 forKeyedSubscript:@"currentMode"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 24)];
  [v2 setObject:v4 forKeyedSubscript:@"currentValue"];

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 component:32 fromDate:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  [v2 setObject:v8 forKeyedSubscript:@"currentHour"];

  return v2;
}

- (void)_setWatchesScreenDim:(BOOL)dim
{
  dimCopy = dim;
  v9 = *MEMORY[0x1E69E9840];
  v5 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = dimCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Arbiter setWatchesScreenDim: %d", v8, 8u);
  }

  if (dimCopy)
  {
    if (!self->_isObservingBacklightState && !self->_isAddingBacklightStateObserver)
    {
      mEMORY[0x1E698E520] = [MEMORY[0x1E698E520] sharedBacklight];
      self->_isAddingBacklightStateObserver = 1;
      [mEMORY[0x1E698E520] addObserver:self];
      *&self->_isAddingBacklightStateObserver = 256;
      -[UIUserInterfaceStyleArbiter _backlightStateUpdated:updateStyle:](self, "_backlightStateUpdated:updateStyle:", [mEMORY[0x1E698E520] backlightState], 0);
    }
  }

  else
  {
    if (self->_isObservingBacklightState)
    {
      mEMORY[0x1E698E520]2 = [MEMORY[0x1E698E520] sharedBacklight];
      [mEMORY[0x1E698E520]2 removeObserver:self];

      self->_isObservingBacklightState = 0;
    }

    self->_isDim = 0;
  }
}

- (void)_backlightStateUpdated:(int64_t)updated updateStyle:(BOOL)style
{
  styleCopy = style;
  v14 = *MEMORY[0x1E69E9840];
  v7 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    updatedCopy = updated;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Arbiter backlight state updated: %ld", &v12, 0xCu);
  }

  v8 = updated != 2;
  if (self->_isDim != v8)
  {
    self->_isDim = v8;
    v9 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      isDim = self->_isDim;
      v12 = 67109120;
      LODWORD(updatedCopy) = isDim;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Arbiter backlight state is now dim: %d", &v12, 8u);
    }

    if (styleCopy)
    {
      if (updated == 2)
      {
        v11 = 6;
      }

      else
      {
        v11 = 5;
      }

      [(UIUserInterfaceStyleArbiter *)self _updateCurrentStyleForReason:v11];
    }
  }
}

@end