@interface STDowntimeOverrideCoreAnalyticsEvent
- (NSDictionary)payload;
- (STDowntimeOverrideCoreAnalyticsEvent)initWithDowntimeEnabled:(BOOL)enabled gracePeriodUsed:(BOOL)used scheduleEnabled:(BOOL)scheduleEnabled hourOfDay:(int64_t)day userIsManaged:(BOOL)managed;
@end

@implementation STDowntimeOverrideCoreAnalyticsEvent

- (STDowntimeOverrideCoreAnalyticsEvent)initWithDowntimeEnabled:(BOOL)enabled gracePeriodUsed:(BOOL)used scheduleEnabled:(BOOL)scheduleEnabled hourOfDay:(int64_t)day userIsManaged:(BOOL)managed
{
  v13.receiver = self;
  v13.super_class = STDowntimeOverrideCoreAnalyticsEvent;
  result = [(STDowntimeOverrideCoreAnalyticsEvent *)&v13 init];
  result->_downtimeEnabled = enabled;
  result->_gracePeriodUsed = used;
  result->_scheduleEnabled = scheduleEnabled;
  result->_hourOfDay = day;
  result->_userIsManaged = managed;
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