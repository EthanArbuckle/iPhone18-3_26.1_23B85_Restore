@interface STDowntimeOverrideTransformer
+ (id)coreOverrideFromDowntimeOverride:(id)override existingDowntimeOverride:(id)downtimeOverride inContext:(id)context;
+ (id)downtimeOverrideFromCoreDowntimeOverride:(id)override inContext:(id)context;
@end

@implementation STDowntimeOverrideTransformer

+ (id)coreOverrideFromDowntimeOverride:(id)override existingDowntimeOverride:(id)downtimeOverride inContext:(id)context
{
  overrideCopy = override;
  downtimeOverrideCopy = downtimeOverride;
  contextCopy = context;
  type = [overrideCopy type];
  state = [overrideCopy state];
  v12 = downtimeOverrideCopy;
  v13 = v12;
  if (!v12)
  {
    v13 = [[STCoreDowntimeOverride alloc] initWithContext:contextCopy];
  }

  [(STCoreDowntimeOverride *)v13 setType:type == 1];
  [(STCoreDowntimeOverride *)v13 setState:state == 1];
  creationDate = [overrideCopy creationDate];
  v15 = [creationDate copy];
  [(STCoreDowntimeOverride *)v13 setCreationDate:v15];

  calendar = [overrideCopy calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  v18 = [calendarIdentifier copy];
  [(STCoreDowntimeOverride *)v13 setCalendarIdentifier:v18];

  endDate = [overrideCopy endDate];
  v20 = [endDate copy];
  [(STCoreDowntimeOverride *)v13 setEndDate:v20];

  [(STCoreDowntimeOverride *)v13 setIsTombstoned:0];

  return v13;
}

+ (id)downtimeOverrideFromCoreDowntimeOverride:(id)override inContext:(id)context
{
  overrideCopy = override;
  v6 = [overrideCopy state] == 1;
  v7 = MEMORY[0x1E695DEE8];
  calendarIdentifier = [overrideCopy calendarIdentifier];
  autoupdatingCurrentCalendar = [v7 calendarWithIdentifier:calendarIdentifier];

  if (!autoupdatingCurrentCalendar)
  {
    v10 = +[STLog blueprint];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [STDowntimeOverrideTransformer downtimeOverrideFromCoreDowntimeOverride:overrideCopy inContext:v10];
    }

    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  }

  type = [overrideCopy type];
  if (type == 1)
  {
    v15 = MEMORY[0x1E696AD98];
    endDate = [overrideCopy endDate];
    creationDate = [overrideCopy creationDate];
    [endDate timeIntervalSinceDate:creationDate];
    creationDate3 = [v15 numberWithDouble:?];

    creationDate2 = [overrideCopy creationDate];
    v14 = [STDowntimeOverride overrideWithState:v6 creationDate:creationDate2 calendar:autoupdatingCurrentCalendar fixedDuration:creationDate3];
  }

  else
  {
    if (type)
    {
      goto LABEL_10;
    }

    creationDate3 = [overrideCopy creationDate];
    creationDate2 = [overrideCopy endDate];
    v14 = [STDowntimeOverride overrideWithState:v6 creationDate:creationDate3 calendar:autoupdatingCurrentCalendar endDate:creationDate2];
  }

  v4 = v14;

LABEL_10:

  return v4;
}

+ (void)downtimeOverrideFromCoreDowntimeOverride:(void *)a1 inContext:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 calendarIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to get calendar from persisted identifier: %@. Falling back to current.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end