@interface STViewAllActivityCoreAnalyticsEvent
- (NSDictionary)payload;
- (STViewAllActivityCoreAnalyticsEvent)initWithDaysSinceLastView:(int64_t)a3 userAgeGroup:(int64_t)a4 userIsManaged:(BOOL)a5 userIsRemote:(BOOL)a6;
@end

@implementation STViewAllActivityCoreAnalyticsEvent

- (STViewAllActivityCoreAnalyticsEvent)initWithDaysSinceLastView:(int64_t)a3 userAgeGroup:(int64_t)a4 userIsManaged:(BOOL)a5 userIsRemote:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = STViewAllActivityCoreAnalyticsEvent;
  result = [(STViewAllActivityCoreAnalyticsEvent *)&v11 init];
  result->_daysSinceLastView = a3;
  result->_userAgeGroup = a4;
  result->_userIsManaged = a5;
  result->_userIsRemote = a6;
  return result;
}

- (NSDictionary)payload
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"daysSinceLastView";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STViewAllActivityCoreAnalyticsEvent daysSinceLastView](self, "daysSinceLastView")}];
  v11[0] = v3;
  v10[1] = @"userAgeGroup";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STViewAllActivityCoreAnalyticsEvent userAgeGroup](self, "userAgeGroup")}];
  v11[1] = v4;
  v10[2] = @"userIsManaged";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STViewAllActivityCoreAnalyticsEvent userIsManaged](self, "userIsManaged")}];
  v11[2] = v5;
  v10[3] = @"userIsRemote";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[STViewAllActivityCoreAnalyticsEvent userIsRemote](self, "userIsRemote")}];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end