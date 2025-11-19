@interface STDowntimeOverrideUpdater
+ (BOOL)updateActiveOverrideOnBlueprintNow:(id)a3 usingModifier:(id)a4 error:(id *)a5;
+ (BOOL)updateActiveOverrideUsingModifier:(id)a3 byRecomputingFromSchedule:(id)a4 atDate:(id)a5 inCalendar:(id)a6 error:(id *)a7;
@end

@implementation STDowntimeOverrideUpdater

+ (BOOL)updateActiveOverrideOnBlueprintNow:(id)a3 usingModifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 schedule];
  v10 = [MEMORY[0x1E695DF00] now];
  v11 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  LOBYTE(a5) = [a1 updateActiveOverrideUsingModifier:v8 byRecomputingFromSchedule:v9 atDate:v10 inCalendar:v11 error:a5];

  return a5;
}

+ (BOOL)updateActiveOverrideUsingModifier:(id)a3 byRecomputingFromSchedule:(id)a4 atDate:(id)a5 inCalendar:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = STUTCErasedDateFromDate(a5, v14);
  v16 = [v14 copy];

  v17 = STUTCTimeZone();
  [v16 setTimeZone:v17];

  v18 = [v12 activeOverride];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 modificationBasedOnScheduleChangeAtDate:v15];
    if (v20 == 1)
    {
      v23 = +[STLog blueprint];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_DEFAULT, "Updating active override", v28, 2u);
      }

      v24 = [v19 state];
      v25 = [v19 creationDate];
      v26 = [STDowntimeOverrideBuilder createAutomaticOverrideWithState:v24 schedule:v13 creationDate:v25 calendar:v16];

      v7 = [v12 applyDowntimeOverride:v26 error:a7];
    }

    else if (!v20)
    {
      v21 = +[STLog blueprint];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v21, OS_LOG_TYPE_DEFAULT, "Removing active override", buf, 2u);
      }

      v7 = [v12 removeDowntimeOverrideWithError:a7];
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