@interface STDowntimeOverrideTransformer
+ (id)coreOverrideFromDowntimeOverride:(id)a3 existingDowntimeOverride:(id)a4 inContext:(id)a5;
+ (id)downtimeOverrideFromCoreDowntimeOverride:(id)a3 inContext:(id)a4;
@end

@implementation STDowntimeOverrideTransformer

+ (id)coreOverrideFromDowntimeOverride:(id)a3 existingDowntimeOverride:(id)a4 inContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 type];
  v11 = [v7 state];
  v12 = v8;
  v13 = v12;
  if (!v12)
  {
    v13 = [[STCoreDowntimeOverride alloc] initWithContext:v9];
  }

  [(STCoreDowntimeOverride *)v13 setType:v10 == 1];
  [(STCoreDowntimeOverride *)v13 setState:v11 == 1];
  v14 = [v7 creationDate];
  v15 = [v14 copy];
  [(STCoreDowntimeOverride *)v13 setCreationDate:v15];

  v16 = [v7 calendar];
  v17 = [v16 calendarIdentifier];
  v18 = [v17 copy];
  [(STCoreDowntimeOverride *)v13 setCalendarIdentifier:v18];

  v19 = [v7 endDate];
  v20 = [v19 copy];
  [(STCoreDowntimeOverride *)v13 setEndDate:v20];

  [(STCoreDowntimeOverride *)v13 setIsTombstoned:0];

  return v13;
}

+ (id)downtimeOverrideFromCoreDowntimeOverride:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = [v5 state] == 1;
  v7 = MEMORY[0x1E695DEE8];
  v8 = [v5 calendarIdentifier];
  v9 = [v7 calendarWithIdentifier:v8];

  if (!v9)
  {
    v10 = +[STLog blueprint];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [STDowntimeOverrideTransformer downtimeOverrideFromCoreDowntimeOverride:v5 inContext:v10];
    }

    v9 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  }

  v11 = [v5 type];
  if (v11 == 1)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 endDate];
    v17 = [v5 creationDate];
    [v16 timeIntervalSinceDate:v17];
    v12 = [v15 numberWithDouble:?];

    v13 = [v5 creationDate];
    v14 = [STDowntimeOverride overrideWithState:v6 creationDate:v13 calendar:v9 fixedDuration:v12];
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = [v5 creationDate];
    v13 = [v5 endDate];
    v14 = [STDowntimeOverride overrideWithState:v6 creationDate:v12 calendar:v9 endDate:v13];
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