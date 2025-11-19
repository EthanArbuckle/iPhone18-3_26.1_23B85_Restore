@interface _UICustomScheduleController
- ($275D1F4CA90DB58E62F1701FEE946846)schedule;
- (_UICustomScheduleController)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)nextTransition:(BOOL)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_notifyChange;
- (void)_significantTimeChange;
- (void)_updateStatus:(BOOL)a3;
- (void)_updateTimeMonitoring:(BOOL)a3;
- (void)_updateWithDate:(id)a3;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
- (void)dealloc;
- (void)forceUpdate;
- (void)removeObserver:(id)a3;
- (void)setSchedule:(id *)a3;
@end

@implementation _UICustomScheduleController

- (_UICustomScheduleController)init
{
  v7.receiver = self;
  v7.super_class = _UICustomScheduleController;
  v2 = [(_UICustomScheduleController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x1E69DED38] + 16);
    v2->_schedule.beginTime = *MEMORY[0x1E69DED38];
    v2->_schedule.endTime = v4;
    v2->_inScheduleTime = 0;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v3 selector:sel__significantTimeChange name:0x1EFB8EE90 object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(_UICustomScheduleController *)self _updateTimeMonitoring:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0x1EFB8EE90 object:0];

  v4.receiver = self;
  v4.super_class = _UICustomScheduleController;
  [(_UICustomScheduleController *)&v4 dealloc];
}

- (void)addObserver:(id)a3 changeHandler:(id)a4
{
  v11 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  observers = self->_observers;
  if (!observers)
  {
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [v11 copy];
  [(NSMapTable *)observers setObject:v10 forKey:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(NSMapTable *)self->_observers removeObjectForKey:v4];
}

- (void)setSchedule:(id *)a3
{
  schedule = self->_schedule;
  v7 = *a3;
  if ((UISUserInterfaceStyleModeSchedulesEqual() & 1) == 0)
  {
    var1 = a3->var1;
    self->_schedule.beginTime = a3->var0;
    self->_schedule.endTime = var1;
    [(_UICustomScheduleController *)self _updateTimeMonitoring:*&v7.var0];
    v6 = [MEMORY[0x1E695DF00] date];
    [(_UICustomScheduleController *)self _updateWithDate:v6];
  }
}

- (void)forceUpdate
{
  v3 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "CustomScheduleController forcing update", v5, 2u);
  }

  [(_UICustomScheduleController *)self _updateTimeMonitoring];
  v4 = [MEMORY[0x1E695DF00] date];
  [(_UICustomScheduleController *)self _updateWithDate:v4];
}

- (id)nextTransition:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(UIUserInterfaceStyleArbiterTransition);
  [(UIUserInterfaceStyleArbiterTransition *)v5 setType:0];
  v6 = 48;
  if (v3)
  {
    v6 = 32;
    v7 = 40;
  }

  else
  {
    v7 = 56;
  }

  [(UIUserInterfaceStyleArbiterTransition *)v5 setHour:*(&self->super.isa + v6)];
  [(UIUserInterfaceStyleArbiterTransition *)v5 setMinute:*(&self->super.isa + v7)];

  return v5;
}

- (void)_notifyChange
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMapTable *)self->_observers keyEnumerator];
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
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateStatus:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    inScheduleTime = self->_inScheduleTime;
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 1024;
    v9 = inScheduleTime;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "CustomSchedule is in dark: %d from: %d", v7, 0xEu);
  }

  if (self->_inScheduleTime != v3)
  {
    self->_inScheduleTime = v3;
    [(_UICustomScheduleController *)self _notifyChange];
  }
}

- (void)_updateWithDate:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 dateBySettingHour:self->_schedule.beginTime.hour minute:self->_schedule.beginTime.minute second:0 ofDate:v4 options:4096];
  v7 = [v5 dateBySettingHour:self->_schedule.endTime.hour minute:self->_schedule.endTime.minute second:0 ofDate:v4 options:4096];
  v8 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = formatDate(v4);
    v10 = formatDate(v6);
    v11 = formatDate(v7);
    v20 = 138412802;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "CustomSchedule: Updating for date %@ compared to %@ and %@", &v20, 0x20u);
  }

  v12 = [v5 compareDate:v4 toDate:v6 toUnitGranularity:64];
  v13 = [v5 compareDate:v4 toDate:v7 toUnitGranularity:64];
  v14 = [v5 compareDate:v6 toDate:v7 toUnitGranularity:64];
  v16 = v12 < 2 || v13 == -1;
  v18 = v12 < 2 && v13 == -1;
  if (v14 != -1)
  {
    v18 = 0;
  }

  if (v14 == 1)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  [(_UICustomScheduleController *)self _updateStatus:v19];
}

- (void)_updateTimeMonitoring:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v5 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v37) = v3;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "CustomSchedule: Update time monitoring: %d", buf, 8u);
  }

  nextEventTimer = self->_nextEventTimer;
  if (nextEventTimer)
  {
    [(NSTimer *)nextEventTimer invalidate];
    v7 = self->_nextEventTimer;
    self->_nextEventTimer = 0;
  }

  if (v3)
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [v8 dateBySettingHour:self->_schedule.beginTime.hour minute:self->_schedule.beginTime.minute second:0 ofDate:v9 options:4096];
    v11 = [v8 dateBySettingHour:self->_schedule.endTime.hour minute:self->_schedule.endTime.minute second:0 ofDate:v9 options:4096];
    v12 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = formatDate(v10);
      v14 = formatDate(v11);
      *buf = 138412546;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "CustomSchedule: Monitoring dates %@ and %@", buf, 0x16u);
    }

    v15 = [v8 compareDate:v10 toDate:v11 toUnitGranularity:64];
    v16 = v10;
    v17 = v11;
    if (v15 != -1)
    {
      if (v15 != 1)
      {
        v18 = 0;
        v20 = 0;
LABEL_22:

        return;
      }

      v16 = v11;
      v17 = v10;
    }

    v18 = v16;
    v19 = v17;
    v20 = v19;
    if (v18 && v19)
    {
      if ([v8 compareDate:v9 toDate:v18 toUnitGranularity:64] == -1)
      {
        v21 = v18;
      }

      else if ([v8 compareDate:v9 toDate:v20 toUnitGranularity:64] == -1)
      {
        v21 = v20;
      }

      else
      {
        v21 = [v8 dateByAddingUnit:16 value:1 toDate:v18 options:4096];
      }

      v22 = v21;
      v23 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = formatDate(v22);
        *buf = 138412290;
        v37 = v24;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "CustomSchedule: Setting timer for %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v25 = objc_alloc(MEMORY[0x1E695DFF0]);
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __53___UICustomScheduleController__updateTimeMonitoring___block_invoke;
      v33 = &unk_1E70F3568;
      v26 = v22;
      v34 = v26;
      objc_copyWeak(&v35, buf);
      v27 = [v25 initWithFireDate:v26 interval:0 repeats:&v30 block:0.0];
      v28 = self->_nextEventTimer;
      self->_nextEventTimer = v27;

      v29 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v29 addTimer:self->_nextEventTimer forMode:*MEMORY[0x1E695DA28]];

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }

    goto LABEL_22;
  }
}

- (void)_significantTimeChange
{
  v3 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "CustomSchedule: Significant time change", v5, 2u);
  }

  [(_UICustomScheduleController *)self _updateTimeMonitoring];
  v4 = [MEMORY[0x1E695DF00] date];
  [(_UICustomScheduleController *)self _updateWithDate:v4];
}

- (id)succinctDescription
{
  v2 = [(_UICustomScheduleController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:-[_UICustomScheduleController isInScheduleTime](self withName:{"isInScheduleTime"), @"isInScheduleTime"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UICustomScheduleController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:v5];

  v7 = [v6 appendInteger:-[_UICustomScheduleController isInScheduleTime](self withName:{"isInScheduleTime"), @"isInScheduleTime"}];

  return v6;
}

- ($275D1F4CA90DB58E62F1701FEE946846)schedule
{
  var1 = self[1].var1;
  retstr->var0 = self[1].var0;
  retstr->var1 = var1;
  return self;
}

@end