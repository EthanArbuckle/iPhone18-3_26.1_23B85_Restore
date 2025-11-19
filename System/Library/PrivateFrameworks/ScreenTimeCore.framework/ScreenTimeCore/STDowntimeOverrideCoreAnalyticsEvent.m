@interface STDowntimeOverrideCoreAnalyticsEvent
- (NSDictionary)payload;
- (STDowntimeOverrideCoreAnalyticsEvent)initWithDowntimeEnabled:(BOOL)a3 gracePeriodUsed:(BOOL)a4 scheduleEnabled:(BOOL)a5 hourOfDay:(int64_t)a6 userIsManaged:(BOOL)a7;
@end

@implementation STDowntimeOverrideCoreAnalyticsEvent

- (STDowntimeOverrideCoreAnalyticsEvent)initWithDowntimeEnabled:(BOOL)a3 gracePeriodUsed:(BOOL)a4 scheduleEnabled:(BOOL)a5 hourOfDay:(int64_t)a6 userIsManaged:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = STDowntimeOverrideCoreAnalyticsEvent;
  result = [(STDowntimeOverrideCoreAnalyticsEvent *)&v13 init];
  result->_downtimeEnabled = a3;
  result->_gracePeriodUsed = a4;
  result->_scheduleEnabled = a5;
  result->_hourOfDay = a6;
  result->_userIsManaged = a7;
  return result;
}

- (NSDictionary)payload
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"downtimeEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent downtimeEnabled](self, "downtimeEnabled")}];
  v12[0] = v3;
  v11[1] = @"gracePeriodUsed";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent gracePeriodUsed](self, "gracePeriodUsed")}];
  v12[1] = v4;
  v11[2] = @"scheduleEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent scheduleEnabled](self, "scheduleEnabled")}];
  v12[2] = v5;
  v11[3] = @"hourOfDay";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STDowntimeOverrideCoreAnalyticsEvent hourOfDay](self, "hourOfDay")}];
  v12[3] = v6;
  v11[4] = @"userIsManaged";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent userIsManaged](self, "userIsManaged")}];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end