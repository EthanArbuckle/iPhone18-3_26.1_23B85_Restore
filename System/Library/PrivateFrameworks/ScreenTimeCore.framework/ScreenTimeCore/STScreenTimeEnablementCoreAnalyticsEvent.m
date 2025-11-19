@interface STScreenTimeEnablementCoreAnalyticsEvent
- (NSDictionary)payload;
- (STScreenTimeEnablementCoreAnalyticsEvent)initWithScreenTimeEnabled:(BOOL)a3 numberOfGuardians:(int64_t)a4 pinSet:(BOOL)a5 userAgeGroup:(int64_t)a6 userIsRemote:(BOOL)a7;
@end

@implementation STScreenTimeEnablementCoreAnalyticsEvent

- (STScreenTimeEnablementCoreAnalyticsEvent)initWithScreenTimeEnabled:(BOOL)a3 numberOfGuardians:(int64_t)a4 pinSet:(BOOL)a5 userAgeGroup:(int64_t)a6 userIsRemote:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = STScreenTimeEnablementCoreAnalyticsEvent;
  result = [(STScreenTimeEnablementCoreAnalyticsEvent *)&v13 init];
  result->_screenTimeEnabled = a3;
  result->_pinSet = a5;
  result->_userAgeGroup = a6;
  result->_numberOfGuardians = a4;
  result->_userIsRemote = a7;
  return result;
}

- (NSDictionary)payload
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"screenTimeEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STScreenTimeEnablementCoreAnalyticsEvent screenTimeEnabled](self, "screenTimeEnabled")}];
  v12[0] = v3;
  v11[1] = @"numberOfGuardians";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STScreenTimeEnablementCoreAnalyticsEvent numberOfGuardians](self, "numberOfGuardians")}];
  v12[1] = v4;
  v11[2] = @"pinSet";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STScreenTimeEnablementCoreAnalyticsEvent pinSet](self, "pinSet")}];
  v12[2] = v5;
  v11[3] = @"userAgeGroup";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STScreenTimeEnablementCoreAnalyticsEvent userAgeGroup](self, "userAgeGroup")}];
  v12[3] = v6;
  v11[4] = @"userIsRemote";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STScreenTimeEnablementCoreAnalyticsEvent userIsRemote](self, "userIsRemote")}];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end