@interface UISUserInterfaceStyleMode
- ($0AC6E346AE4835514AAA8AC86D8F4844)override;
- ($4C6D1E162277694FB76656457146213A)customSchedule;
- (UISUserInterfaceStyleMode)initWithDelegate:(id)delegate;
- (id)_commonAnalyticsEventDictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)modeValue;
- (int64_t)suggestedAutomaticModeValue;
- (void)_setOverride:(id)override force:(BOOL)force;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCustomSchedule:(id *)schedule;
- (void)setModeValue:(int64_t)value;
- (void)setOverride:(id)override;
@end

@implementation UISUserInterfaceStyleMode

- (UISUserInterfaceStyleMode)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = UISUserInterfaceStyleMode;
  v5 = [(UISUserInterfaceStyleMode *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, delegateCopy);

    if (delegateCopy)
    {
      v8 = _UISUserInterfaceStyleModeUserDefaults();
      [v8 addObserver:v6 forKeyPath:@"UserInterfaceStyleMode" options:1 context:0];

      v9 = _UISUserInterfaceStyleModeUserDefaults();
      [v9 addObserver:v6 forKeyPath:@"Override" options:1 context:0];

      v10 = _UISUserInterfaceStyleModeUserDefaults();
      [v10 addObserver:v6 forKeyPath:@"CustomSchedule" options:1 context:0];

      v6->_observingDefaults = 1;
    }
  }

  return v6;
}

- (void)dealloc
{
  if (self->_observingDefaults)
  {
    v3 = _UISUserInterfaceStyleModeUserDefaults();
    [v3 removeObserver:self forKeyPath:@"UserInterfaceStyleMode"];

    v4 = _UISUserInterfaceStyleModeUserDefaults();
    [v4 removeObserver:self forKeyPath:@"Override"];

    v5 = _UISUserInterfaceStyleModeUserDefaults();
    [v5 removeObserver:self forKeyPath:@"CustomSchedule"];
  }

  v6.receiver = self;
  v6.super_class = UISUserInterfaceStyleMode;
  [(UISUserInterfaceStyleMode *)&v6 dealloc];
}

- (int64_t)modeValue
{
  v2 = _UISUserInterfaceStyleModeUserDefaults();
  v3 = [v2 integerForKey:@"UserInterfaceStyleMode"];

  if ((v3 - 1) >= 2 && v3 != 102 && v3 != 100)
  {
    return 1;
  }

  return v3;
}

- (void)setModeValue:(int64_t)value
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _UISUserInterfaceStyleModeServiceLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    processHandle = [MEMORY[0x1E698E740] processHandle];
    *buf = 138543618;
    v12 = processHandle;
    v13 = 2050;
    valueCopy2 = value;
    _os_log_impl(&dword_195FF3000, v5, OS_LOG_TYPE_DEFAULT, "Client %{public}@ is requesting to change the mode to %{public}ld", buf, 0x16u);
  }

  if ((value - 1) < 2 || value == 100 || value == 102)
  {
    if ([(UISUserInterfaceStyleMode *)self modeValue]!= value)
    {
      v7 = _UISUserInterfaceStyleModeUserDefaults();
      [v7 setInteger:value forKey:@"UserInterfaceStyleMode"];

      if ((value & 0xFFFFFFFFFFFFFFFDLL) == 0x64)
      {
        v8 = _UISUserInterfaceStyleModeUserDefaults();
        [v8 setInteger:value forKey:@"MostRecentAutomaticMode"];
      }

      [(UISUserInterfaceStyleMode *)self _setOverride:0 force:0, 1];
      AnalyticsSendEventLazy();
    }
  }

  else
  {
    v9 = _UISUserInterfaceStyleModeServiceLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      processHandle2 = [MEMORY[0x1E698E740] processHandle];
      *buf = 138543618;
      v12 = processHandle2;
      v13 = 2050;
      valueCopy2 = value;
      _os_log_error_impl(&dword_195FF3000, v9, OS_LOG_TYPE_ERROR, "Client %{public}@ provided an invalid mode %{public}ld, ignoring", buf, 0x16u);
    }
  }
}

id __42__UISUserInterfaceStyleMode_setModeValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _commonAnalyticsEventDictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"currentMode"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"previousMode"];

  return v2;
}

- (int64_t)suggestedAutomaticModeValue
{
  v2 = _UISUserInterfaceStyleModeUserDefaults();
  v3 = [v2 integerForKey:@"MostRecentAutomaticMode"];

  if ((v3 - 1) >= 2 && v3 != 102 && v3 != 100)
  {
    return 100;
  }

  return v3;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)override
{
  v3 = _UISUserInterfaceStyleModeUserDefaults();
  v4 = [v3 dictionaryForKey:@"Override"];

  if (v4)
  {
    v5 = [v4 objectForKey:@"Style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v5 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    v8 = [v4 objectForKey:@"Timing"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue2 = [v8 integerValue];
    }

    else
    {
      integerValue2 = -1;
    }
  }

  else
  {
    integerValue2 = -1;
    integerValue = -1;
  }

  if (([(UISUserInterfaceStyleMode *)self modeValue]& 0xFFFFFFFFFFFFFFFDLL) != 0x64 || integerValue > 2 || integerValue2 > 2 || (integerValue2 != 0) == (integerValue == 0))
  {
    integerValue = 0;
    integerValue2 = 0;
  }

  v9 = integerValue;
  v10 = integerValue2;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)setOverride:(id)override
{
  var1 = override.var1;
  var0 = override.var0;
  v14 = *MEMORY[0x1E69E9840];
  v6 = _UISUserInterfaceStyleModeServiceLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    processHandle = [MEMORY[0x1E698E740] processHandle];
    v8 = 138543874;
    v9 = processHandle;
    v10 = 2050;
    v11 = var0;
    v12 = 2050;
    v13 = var1;
    _os_log_impl(&dword_195FF3000, v6, OS_LOG_TYPE_DEFAULT, "Client %{public}@ set override: %{public}ld %{public}ld", &v8, 0x20u);
  }

  [(UISUserInterfaceStyleMode *)self _setOverride:var0 force:var1, 0];
}

- (void)_setOverride:(id)override force:(BOOL)force
{
  var1 = override.var1;
  var0 = override.var0;
  v16[2] = *MEMORY[0x1E69E9840];
  if (override.var0 <= 2uLL && override.var1 <= 2uLL && (override.var0 == 0) != (override.var1 != 0))
  {
    if (force)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISUserInterfaceStyleMode.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"overrideIsValid(newOverride)"}];

    if (force)
    {
      goto LABEL_6;
    }
  }

  if (([(UISUserInterfaceStyleMode *)self modeValue]& 0xFFFFFFFFFFFFFFFDLL) != 0x64)
  {
    return;
  }

LABEL_6:
  if (var0 | var1)
  {
    v15[0] = @"Style";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:var0];
    v15[1] = @"Timing";
    v16[0] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:var1];
    v16[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v13 = _UISUserInterfaceStyleModeUserDefaults();
    [v13 setObject:v12 forKey:@"Override"];

    if (force)
    {
      return;
    }
  }

  else
  {
    v9 = _UISUserInterfaceStyleModeUserDefaults();
    [v9 removeObjectForKey:@"Override"];

    if (force)
    {
      return;
    }
  }

  AnalyticsSendEventLazy();
}

id __48__UISUserInterfaceStyleMode__setOverride_force___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _commonAnalyticsEventDictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"overrideStyle"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"overrideTiming"];

  return v2;
}

- ($4C6D1E162277694FB76656457146213A)customSchedule
{
  v4 = _UISUserInterfaceStyleModeUserDefaults();
  v18 = [v4 dictionaryForKey:@"CustomSchedule"];

  if (!v18)
  {
    goto LABEL_25;
  }

  v5 = [v18 objectForKey:@"Begin"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 objectForKey:@"Hour"];
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 ? [v7 integerValue] : -1;
    v10 = [v6 objectForKey:@"Minute"];

    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? [v10 integerValue] : -1;
  }

  else
  {
    v8 = -1;
    v9 = -1;
  }

  v11 = [v18 objectForKey:@"End"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [v12 objectForKey:@"Hour"];
    objc_opt_class();
    v14 = (objc_opt_isKindOfClass() & 1) != 0 ? [v13 integerValue] : -1;
    v16 = [v12 objectForKey:@"Minute"];

    objc_opt_class();
    v15 = (objc_opt_isKindOfClass() & 1) != 0 ? [v16 integerValue] : -1;
  }

  else
  {
    v14 = -1;
    v15 = -1;
  }

  if (v8 <= 0x17 && v9 <= 0x3B && v14 <= 0x17 && v15 <= 0x3B)
  {
    retstr->var0.var0 = v8;
    retstr->var0.var1 = v9;
    retstr->var1.var0 = v14;
    retstr->var1.var1 = v15;
  }

  else
  {
LABEL_25:
    retstr->var0 = 0u;
    retstr->var1 = 0u;
  }

  return result;
}

- (void)setCustomSchedule:(id *)schedule
{
  v37 = *MEMORY[0x1E69E9840];
  if (schedule->var0.var0 > 0x17uLL || schedule->var0.var1 > 0x3BuLL || schedule->var1.var0 > 0x17uLL || schedule->var1.var1 >= 0x3CuLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISUserInterfaceStyleMode.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"scheduleIsValid(newSchedule)"}];
  }

  v6 = _UISUserInterfaceStyleModeServiceLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    processHandle = [MEMORY[0x1E698E740] processHandle];
    var0 = schedule->var0.var0;
    var1 = schedule->var0.var1;
    v10 = schedule->var1.var0;
    v11 = schedule->var1.var1;
    *buf = 138544386;
    v28 = processHandle;
    v29 = 2050;
    v30 = var0;
    v31 = 2050;
    v32 = var1;
    v33 = 2050;
    v34 = v10;
    v35 = 2050;
    v36 = v11;
    _os_log_impl(&dword_195FF3000, v6, OS_LOG_TYPE_DEFAULT, "Client %{public}@ set custom schedule: %{public}ld %{public}ld %{public}ld %{public}ld", buf, 0x34u);
  }

  v25[0] = @"Begin";
  v23[0] = @"Hour";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:schedule->var0.var0];
  v23[1] = @"Minute";
  v24[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:schedule->var0.var1];
  v24[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v25[1] = @"End";
  v26[0] = v14;
  v21[0] = @"Hour";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:schedule->var1.var0];
  v21[1] = @"Minute";
  v22[0] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:schedule->var1.var1];
  v22[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v26[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v19 = _UISUserInterfaceStyleModeUserDefaults();
  [v19 setObject:v18 forKey:@"CustomSchedule"];

  AnalyticsSendEventLazy();
}

id __47__UISUserInterfaceStyleMode_setCustomSchedule___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _commonAnalyticsEventDictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"beginHour"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"beginMinute"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  [v2 setObject:v5 forKeyedSubscript:@"endHour"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  [v2 setObject:v6 forKeyedSubscript:@"endMinute"];

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userInterfaceStyleModeDidChange:self];
}

- (id)_commonAnalyticsEventDictionary
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    [v2 setObject:bundleIdentifier forKeyedSubscript:@"bundleID"];
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar component:32 fromDate:date];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  [v2 setObject:v8 forKeyedSubscript:@"currentHour"];

  return v2;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UISUserInterfaceStyleMode *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:-[UISUserInterfaceStyleMode modeValue](self withName:{"modeValue"), @"modeValue"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISUserInterfaceStyleMode *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  v7 = [v6 appendInteger:-[UISUserInterfaceStyleMode modeValue](self withName:{"modeValue"), @"modeValue"}];
  activeMultilinePrefix = [v6 activeMultilinePrefix];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__UISUserInterfaceStyleMode_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E7458FE0;
  v9 = v6;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

  v10 = v9;
  return v9;
}

void __67__UISUserInterfaceStyleMode_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"suggestedAutomaticModeValue"), @"suggestedAutomaticModeValue"}];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) override];
  if (v4 | v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UISUserInterfaceStyleModeOverride(style: %ld, timing: %ld)", v4, v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 appendObject:v6 withName:@"override" skipIfNil:1];

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8)
  {
    [v8 customSchedule];
    v10 = *(&v16 + 1);
    v11 = v16;
    v13 = *(&v17 + 1);
    v12 = v17;
    if (v16 == 22)
    {
      if (*(&v16 + 1) || v17 != 7)
      {
        goto LABEL_17;
      }

      v14 = @"UISUserInterfaceStyleModeScheduleDefault";
      goto LABEL_18;
    }

    if (v16)
    {
LABEL_17:
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UISUserInterfaceStyleModeSchedule(beginTime: %ld:%ld, endTime: %ld:%ld)", v11, v10, v12, v13, v16, v17];
      goto LABEL_18;
    }

    if (*(&v16 + 1))
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  if (v12)
  {
    goto LABEL_16;
  }

  v11 = 0;
  v14 = 0;
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  v15 = [v9 appendObject:v14 withName:@"customSchedule" skipIfNil:1];
}

@end