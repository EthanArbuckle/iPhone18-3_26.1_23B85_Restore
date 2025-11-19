@interface UISUserInterfaceStyleMode
- ($0AC6E346AE4835514AAA8AC86D8F4844)override;
- ($4C6D1E162277694FB76656457146213A)customSchedule;
- (UISUserInterfaceStyleMode)initWithDelegate:(id)a3;
- (id)_commonAnalyticsEventDictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)modeValue;
- (int64_t)suggestedAutomaticModeValue;
- (void)_setOverride:(id)a3 force:(BOOL)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCustomSchedule:(id *)a3;
- (void)setModeValue:(int64_t)a3;
- (void)setOverride:(id)a3;
@end

@implementation UISUserInterfaceStyleMode

- (UISUserInterfaceStyleMode)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UISUserInterfaceStyleMode;
  v5 = [(UISUserInterfaceStyleMode *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, v4);

    if (v4)
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

- (void)setModeValue:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _UISUserInterfaceStyleModeServiceLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E698E740] processHandle];
    *buf = 138543618;
    v12 = v6;
    v13 = 2050;
    v14 = a3;
    _os_log_impl(&dword_195FF3000, v5, OS_LOG_TYPE_DEFAULT, "Client %{public}@ is requesting to change the mode to %{public}ld", buf, 0x16u);
  }

  if ((a3 - 1) < 2 || a3 == 100 || a3 == 102)
  {
    if ([(UISUserInterfaceStyleMode *)self modeValue]!= a3)
    {
      v7 = _UISUserInterfaceStyleModeUserDefaults();
      [v7 setInteger:a3 forKey:@"UserInterfaceStyleMode"];

      if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0x64)
      {
        v8 = _UISUserInterfaceStyleModeUserDefaults();
        [v8 setInteger:a3 forKey:@"MostRecentAutomaticMode"];
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
      v10 = [MEMORY[0x1E698E740] processHandle];
      *buf = 138543618;
      v12 = v10;
      v13 = 2050;
      v14 = a3;
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
      v6 = [v5 integerValue];
    }

    else
    {
      v6 = -1;
    }

    v8 = [v4 objectForKey:@"Timing"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v8 integerValue];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
    v6 = -1;
  }

  if (([(UISUserInterfaceStyleMode *)self modeValue]& 0xFFFFFFFFFFFFFFFDLL) != 0x64 || v6 > 2 || v7 > 2 || (v7 != 0) == (v6 == 0))
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)setOverride:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v14 = *MEMORY[0x1E69E9840];
  v6 = _UISUserInterfaceStyleModeServiceLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E698E740] processHandle];
    v8 = 138543874;
    v9 = v7;
    v10 = 2050;
    v11 = var0;
    v12 = 2050;
    v13 = var1;
    _os_log_impl(&dword_195FF3000, v6, OS_LOG_TYPE_DEFAULT, "Client %{public}@ set override: %{public}ld %{public}ld", &v8, 0x20u);
  }

  [(UISUserInterfaceStyleMode *)self _setOverride:var0 force:var1, 0];
}

- (void)_setOverride:(id)a3 force:(BOOL)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3.var0 <= 2uLL && a3.var1 <= 2uLL && (a3.var0 == 0) != (a3.var1 != 0))
  {
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UISUserInterfaceStyleMode.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"overrideIsValid(newOverride)"}];

    if (a4)
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

    if (a4)
    {
      return;
    }
  }

  else
  {
    v9 = _UISUserInterfaceStyleModeUserDefaults();
    [v9 removeObjectForKey:@"Override"];

    if (a4)
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

- (void)setCustomSchedule:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3->var0.var0 > 0x17uLL || a3->var0.var1 > 0x3BuLL || a3->var1.var0 > 0x17uLL || a3->var1.var1 >= 0x3CuLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"UISUserInterfaceStyleMode.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"scheduleIsValid(newSchedule)"}];
  }

  v6 = _UISUserInterfaceStyleModeServiceLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E698E740] processHandle];
    var0 = a3->var0.var0;
    var1 = a3->var0.var1;
    v10 = a3->var1.var0;
    v11 = a3->var1.var1;
    *buf = 138544386;
    v28 = v7;
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
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var0.var0];
  v23[1] = @"Minute";
  v24[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var0.var1];
  v24[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v25[1] = @"End";
  v26[0] = v14;
  v21[0] = @"Hour";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var1.var0];
  v21[1] = @"Minute";
  v22[0] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var1.var1];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userInterfaceStyleModeDidChange:self];
}

- (id)_commonAnalyticsEventDictionary
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"bundleID"];
  }

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 component:32 fromDate:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  [v2 setObject:v8 forKeyedSubscript:@"currentHour"];

  return v2;
}

- (id)succinctDescription
{
  v2 = [(UISUserInterfaceStyleMode *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:-[UISUserInterfaceStyleMode modeValue](self withName:{"modeValue"), @"modeValue"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISUserInterfaceStyleMode *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:v5];

  v7 = [v6 appendInteger:-[UISUserInterfaceStyleMode modeValue](self withName:{"modeValue"), @"modeValue"}];
  v8 = [v6 activeMultilinePrefix];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__UISUserInterfaceStyleMode_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E7458FE0;
  v9 = v6;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:v8 block:v12];

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