@interface _UISunScheduleController
- (_UISunScheduleController)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)nextTransition:(BOOL)transition;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_invalidateNextEventTimer;
- (void)_notifyChange;
- (void)_setNextEventTimerToAbsoluteTime:(double)time;
- (void)_significantTimeChange;
- (void)_timeZoneChange;
- (void)_updateGeoCity;
- (void)_updateInScheduleTime:(BOOL)time;
- (void)_updateStatus;
- (void)_updateStatusWithAbsoluteTime:(double)time;
- (void)_updateSunriseSunsetTimesRelativeTo:(double)to;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)dealloc;
- (void)forceUpdate;
- (void)removeObserver:(id)observer;
@end

@implementation _UISunScheduleController

- (_UISunScheduleController)init
{
  v11.receiver = self;
  v11.super_class = _UISunScheduleController;
  v2 = [(_UISunScheduleController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_inScheduleTime = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v4 = _MergedGlobals_1363;
    v16 = _MergedGlobals_1363;
    if (!_MergedGlobals_1363)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getGEOAlmanacClass_block_invoke;
      v12[3] = &unk_1E70F2F20;
      v12[4] = &v13;
      __getGEOAlmanacClass_block_invoke(v12);
      v4 = v14[3];
    }

    v5 = v4;
    _Block_object_dispose(&v13, 8);
    v6 = objc_alloc_init(v4);
    almanac = v3->_almanac;
    v3->_almanac = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__significantTimeChange name:0x1EFB8EE90 object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__timeZoneChange name:*MEMORY[0x1E695DA68] object:0];

    [(_UISunScheduleController *)v3 _updateGeoCity];
    [(_UISunScheduleController *)v3 _updateStatus];
  }

  return v3;
}

- (void)dealloc
{
  [(_UISunScheduleController *)self _invalidateNextEventTimer];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1EFB8EE90 object:0];

  v4.receiver = self;
  v4.super_class = _UISunScheduleController;
  [(_UISunScheduleController *)&v4 dealloc];
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  handlerCopy = handler;
  observerCopy = observer;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  observers = self->_observers;
  if (!observers)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = weakToStrongObjectsMapTable;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(NSMapTable *)self->_observers removeObjectForKey:observerCopy];
}

- (void)forceUpdate
{
  v3 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "SunScheduleController forcing update", v4, 2u);
  }

  [(_UISunScheduleController *)self _updateStatus];
}

- (id)nextTransition:(BOOL)transition
{
  transitionCopy = transition;
  v4 = objc_alloc_init(UIUserInterfaceStyleArbiterTransition);
  v5 = v4;
  if (transitionCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(UIUserInterfaceStyleArbiterTransition *)v4 setType:v6];

  return v5;
}

- (void)_notifyChange
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateInScheduleTime:(BOOL)time
{
  timeCopy = time;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    inScheduleTime = self->_inScheduleTime;
    v7[0] = 67109376;
    v7[1] = timeCopy;
    v8 = 1024;
    v9 = inScheduleTime;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "SunScheduleController is in dark: %d from: %d", v7, 0xEu);
  }

  if (self->_inScheduleTime != timeCopy)
  {
    self->_inScheduleTime = timeCopy;
    [(_UISunScheduleController *)self _notifyChange];
  }
}

- (void)_updateStatus
{
  Current = CFAbsoluteTimeGetCurrent();

  [(_UISunScheduleController *)self _updateStatusWithAbsoluteTime:Current];
}

- (void)_updateStatusWithAbsoluteTime:(double)time
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = formatAbsoluteTime(time);
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "SunScheduleController updating status for time: %@", &v18, 0xCu);
  }

  [(_UISunScheduleController *)self _updateSunriseSunsetTimesRelativeTo:time];
  v7 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = formatAbsoluteTime(time);
    v9 = formatAbsoluteTime(self->_sunriseAbsolute);
    v10 = formatAbsoluteTime(self->_sunsetAbsolute);
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "SunScheduleController comparing time %@ to sunrise %@, sunset %@", &v18, 0x20u);
  }

  sunsetAbsolute = self->_sunsetAbsolute;
  sunriseAbsolute = self->_sunriseAbsolute;
  if (sunriseAbsolute > time)
  {
    if (sunsetAbsolute <= time)
    {
      [(_UISunScheduleController *)self _updateInScheduleTime:1];
      v16 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Only sunrise is in the future, so it's dark", &v18, 2u);
      }

      v14 = self->_sunriseAbsolute;
    }

    else
    {
      [(_UISunScheduleController *)self _updateInScheduleTime:sunriseAbsolute < sunsetAbsolute];
      v13 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 67109120;
        LODWORD(v19) = sunriseAbsolute < sunsetAbsolute;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Both in the future, in schedule = %d", &v18, 8u);
      }

      v14 = self->_sunriseAbsolute;
      if (v14 >= self->_sunsetAbsolute)
      {
        v14 = self->_sunsetAbsolute;
      }
    }

LABEL_19:
    [(_UISunScheduleController *)self _setNextEventTimerToAbsoluteTime:v14];
    return;
  }

  if (sunsetAbsolute > time)
  {
    [(_UISunScheduleController *)self _updateInScheduleTime:0];
    v15 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Only sunset is in the future, so it's light", &v18, 2u);
    }

    v14 = self->_sunsetAbsolute;
    goto LABEL_19;
  }

  v17 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "SunScheduleController: ERROR: Both in the past. Doing nothing.", &v18, 2u);
  }
}

- (void)_invalidateNextEventTimer
{
  nextEventTimer = self->_nextEventTimer;
  if (nextEventTimer)
  {
    [(NSTimer *)nextEventTimer invalidate];
    v4 = self->_nextEventTimer;
    self->_nextEventTimer = 0;
  }
}

- (void)_setNextEventTimerToAbsoluteTime:(double)time
{
  v19 = *MEMORY[0x1E69E9840];
  [(_UISunScheduleController *)self _invalidateNextEventTimer];
  v5 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = formatAbsoluteTime(time);
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Setting timer for next event: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v8 = objc_alloc(MEMORY[0x1E695DFF0]);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __61___UISunScheduleController__setNextEventTimerToAbsoluteTime___block_invoke;
  v15 = &unk_1E7128498;
  v16[1] = *&time;
  objc_copyWeak(v16, buf);
  v9 = [v8 initWithFireDate:v7 interval:0 repeats:&v12 block:0.0];
  nextEventTimer = self->_nextEventTimer;
  self->_nextEventTimer = v9;

  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:self->_nextEventTimer forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

- (void)_significantTimeChange
{
  v3 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Significant time change", v4, 2u);
  }

  [(_UISunScheduleController *)self _updateStatus];
}

- (void)_timeZoneChange
{
  v3 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Time zone change", v4, 2u);
  }

  [(_UISunScheduleController *)self _updateGeoCity];
  [(_UISunScheduleController *)self _updateStatus];
}

- (void)_updateGeoCity
{
  v30 = *MEMORY[0x1E69E9840];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  if (!systemTimeZone)
  {
    v6 = _UIUserInterfaceStyleArbiterLogger();
    v13 = 0.0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Failed to get system time zone", &v26, 2u);
    }

    v14 = 0;
    goto LABEL_26;
  }

  mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
  v5 = [mEMORY[0x1E698B670] defaultCityForTimeZone:systemTimeZone];

  v6 = _UIUserInterfaceStyleArbiterLogger();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      name = [systemTimeZone name];
      v26 = 138543362;
      v27 = name;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "SunScheduleController: System time zone %{public}@ has no default city", &v26, 0xCu);
    }

    v16 = MEMORY[0x1E695DFE8];
    name2 = [systemTimeZone name];
    v6 = [v16 _ui_canonicalTimeZoneNameForTimeZoneName:name2];

    if (v6 && ([systemTimeZone name], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[NSObject isEqual:](v6, "isEqual:", v18), v18, (v19 & 1) == 0))
    {
      name7 = [MEMORY[0x1E695DFE8] timeZoneWithName:v6];
      if (name7)
      {
        mEMORY[0x1E698B670]2 = [MEMORY[0x1E698B670] sharedManager];
        v5 = [mEMORY[0x1E698B670]2 defaultCityForTimeZone:name7];

        name8 = _UIUserInterfaceStyleArbiterLogger();
        v22 = os_log_type_enabled(name8, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (v22)
          {
            name3 = [name7 name];
            name4 = [v5 name];
            v26 = 138543618;
            v27 = name3;
            v28 = 2114;
            v29 = name4;
            _os_log_impl(&dword_188A29000, name8, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Canonicalized time zone %{public}@ has a default city %{public}@", &v26, 0x16u);
          }

          goto LABEL_5;
        }

        if (v22)
        {
          name5 = [name7 name];
          v26 = 138543362;
          v27 = name5;
          _os_log_impl(&dword_188A29000, name8, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Canonicalized time zone %{public}@ has no default city", &v26, 0xCu);
        }
      }

      else
      {
        name8 = _UIUserInterfaceStyleArbiterLogger();
        if (os_log_type_enabled(name8, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138543362;
          v27 = v6;
          _os_log_impl(&dword_188A29000, name8, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Canonicalized time zone has name %{public}@ but no NSTimeZone", &v26, 0xCu);
        }
      }
    }

    else
    {
      name7 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(name7, OS_LOG_TYPE_DEFAULT))
      {
        name6 = [systemTimeZone name];
        v26 = 138543362;
        v27 = name6;
        _os_log_impl(&dword_188A29000, name7, OS_LOG_TYPE_DEFAULT, "SunScheduleController: No distinct canonicalized time zone name for %{public}@", &v26, 0xCu);
      }
    }

    v14 = 0;
    v13 = 0.0;
LABEL_26:
    v11 = 0.0;
    goto LABEL_27;
  }

  if (v7)
  {
    name7 = [systemTimeZone name];
    name8 = [v5 name];
    v26 = 138543618;
    v27 = name7;
    v28 = 2114;
    v29 = name8;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "SunScheduleController: System time zone %{public}@ has a default city %{public}@", &v26, 0x16u);
LABEL_5:
  }

  [v5 latitude];
  v11 = v10;
  [v5 longitude];
  v13 = v12;
  v14 = 1;
  v6 = v5;
LABEL_27:

  self->_hasTimeZoneLocation = v14;
  self->_timeZoneLocation.latitude = v11;
  self->_timeZoneLocation.longitude = v13;
}

- (void)_updateSunriseSunsetTimesRelativeTo:(double)to
{
  almanac = self->_almanac;
  if (almanac && self->_hasTimeZoneLocation)
  {
    [(GEOAlmanac *)almanac calculateAstronomicalTimeForLocation:self->_timeZoneLocation.latitude, self->_timeZoneLocation.longitude];
    sunrise = [(GEOAlmanac *)self->_almanac sunrise];
    [sunrise timeIntervalSinceReferenceDate];
    v8 = v7;

    if (v8 < to)
    {
      nextSunrise = [(GEOAlmanac *)self->_almanac nextSunrise];
      [nextSunrise timeIntervalSinceReferenceDate];
      v8 = v10;
    }

    sunset = [(GEOAlmanac *)self->_almanac sunset];
    [sunset timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v13 < to)
    {
      nextSunset = [(GEOAlmanac *)self->_almanac nextSunset];
      [nextSunset timeIntervalSinceReferenceDate];
      v13 = v15;
    }

    self->_sunsetAbsolute = v13;
    self->_sunriseAbsolute = v8;
  }

  else
  {
    v16 = _UIUserInterfaceStyleArbiterLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "SunScheduleController: No time zone location heuristic available, using hard-coded defaults", buf, 2u);
    }

    v17 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
    if (v17)
    {
      v18 = v17;
      CFCalendarSetTimeZone(v17, [MEMORY[0x1E695DFE8] systemTimeZone]);
      *buf = 0;
      v23 = 0;
      v24 = 0;
      if (CFCalendarDecomposeAbsoluteTime(v18, to, "yMdHm", buf, &v24 + 4, &v24, &v23 + 4, &v23))
      {
        v23 = 0x1300000000;
        if (CFCalendarComposeAbsoluteTime(v18, &self->_sunsetAbsolute, "yMdHm", *buf, HIDWORD(v24), v24, 19, 0))
        {
          if (self->_sunsetAbsolute < to)
          {
            CFCalendarAddComponents(v18, &self->_sunsetAbsolute, 0, "d", 1);
          }
        }

        else
        {
          v20 = _UIUserInterfaceStyleArbiterLogger();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Unable to compute fallback sunset time", v22, 2u);
          }
        }

        v23 = 0x700000000;
        if (CFCalendarComposeAbsoluteTime(v18, &self->_sunriseAbsolute, "yMdHm", *buf, HIDWORD(v24), v24, 7, 0))
        {
          if (self->_sunriseAbsolute < to)
          {
            CFCalendarAddComponents(v18, &self->_sunriseAbsolute, 0, "d", 1);
          }
        }

        else
        {
          v21 = _UIUserInterfaceStyleArbiterLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Unable to compute fallback sunrise time", v22, 2u);
          }
        }
      }

      CFRelease(v18);
    }

    else
    {
      v19 = _UIUserInterfaceStyleArbiterLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "SunScheduleController: Unable to create calendar", buf, 2u);
      }
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UISunScheduleController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:-[_UISunScheduleController isInScheduleTime](self withName:{"isInScheduleTime"), @"isInScheduleTime"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UISunScheduleController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  v7 = [v6 appendInteger:-[_UISunScheduleController isInScheduleTime](self withName:{"isInScheduleTime"), @"isInScheduleTime"}];

  return v6;
}

@end