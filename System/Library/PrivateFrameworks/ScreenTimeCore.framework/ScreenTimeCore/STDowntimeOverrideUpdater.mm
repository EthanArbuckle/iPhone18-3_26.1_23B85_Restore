@interface STDowntimeOverrideUpdater
+ (BOOL)updateActiveOverrideOnBlueprintNow:(id)now usingModifier:(id)modifier error:(id *)error;
+ (BOOL)updateActiveOverrideUsingModifier:(id)modifier byRecomputingFromSchedule:(id)schedule atDate:(id)date inCalendar:(id)calendar error:(id *)error;
@end

@implementation STDowntimeOverrideUpdater

+ (BOOL)updateActiveOverrideOnBlueprintNow:(id)now usingModifier:(id)modifier error:(id *)error
{
  modifierCopy = modifier;
  schedule = [now schedule];
  v10 = [MEMORY[0x1E695DF00] now];
  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  LOBYTE(error) = [self updateActiveOverrideUsingModifier:modifierCopy byRecomputingFromSchedule:schedule atDate:v10 inCalendar:autoupdatingCurrentCalendar error:error];

  return error;
}

+ (BOOL)updateActiveOverrideUsingModifier:(id)modifier byRecomputingFromSchedule:(id)schedule atDate:(id)date inCalendar:(id)calendar error:(id *)error
{
  modifierCopy = modifier;
  scheduleCopy = schedule;
  calendarCopy = calendar;
  v15 = STUTCErasedDateFromDate(date, calendarCopy);
  v16 = [calendarCopy copy];

  v17 = STUTCTimeZone();
  [v16 setTimeZone:v17];

  activeOverride = [modifierCopy activeOverride];
  v19 = activeOverride;
  if (activeOverride)
  {
    v20 = [activeOverride modificationBasedOnScheduleChangeAtDate:v15];
    if (v20 == 1)
    {
      v23 = +[STLog blueprint];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_DEFAULT, "Updating active override", v28, 2u);
      }

      state = [v19 state];
      creationDate = [v19 creationDate];
      v26 = [STDowntimeOverrideBuilder createAutomaticOverrideWithState:state schedule:scheduleCopy creationDate:creationDate calendar:v16];

      v7 = [modifierCopy applyDowntimeOverride:v26 error:error];
    }

    else if (!v20)
    {
      v21 = +[STLog blueprint];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v21, OS_LOG_TYPE_DEFAULT, "Removing active override", buf, 2u);
      }

      v7 = [modifierCopy removeDowntimeOverrideWithError:error];
    }
  }

  else
  {
    v22 = +[STLog blueprint];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1B831F000, v22, OS_LOG_TYPE_DEFAULT, "No active override to modify", v30, 2u);
    }

    v7 = 1;
  }

  return v7 & 1;
}

@end