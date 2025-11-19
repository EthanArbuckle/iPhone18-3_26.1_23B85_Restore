@interface CSDUserActivity
+ (id)_userActivityTypeStringForActivityType:(unsigned int)a3;
+ (id)appHistoryActivityWithTitle:(id)a3 subtitle:(id)a4 keywords:(id)a5 userInfo:(id)a6;
+ (unsigned)activityTypeForUserActivityTypeString:(id)a3;
- (id)description;
- (void)addUserInfoEntriesFromDictionary:(id)a3;
- (void)becomeCurrent;
- (void)invalidate;
- (void)resignCurrent;
@end

@implementation CSDUserActivity

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CSDUserActivity *)self userActivity];
  v5 = [v4 activityType];
  [v3 appendFormat:@" activityType=%@", v5];

  v6 = [(CSDUserActivity *)self dynamicIdentifier];
  [v3 appendFormat:@" dynamicIdentifier=%@", v6];

  v7 = [(CSDUserActivity *)self userActivity];
  v8 = [v7 userInfo];
  [v3 appendFormat:@" activityUserInfo=%@", v8];

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

+ (id)appHistoryActivityWithTitle:(id)a3 subtitle:(id)a4 keywords:(id)a5 userInfo:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(CSDUserActivity);
  v15 = [a1 _userActivityTypeStringForActivityType:4];
  v16 = [[NSUserActivity alloc] _initWithTypeIdentifier:v15 suggestedActionType:1 options:0];
  [v16 _setContentType:v15];
  v17 = [NSDate dateWithTimeIntervalSinceNow:864000.0];
  [v16 setExpirationDate:v17];

  [v16 setEligibleForSearch:1];
  [v16 setEligibleForPublicIndexing:0];
  [v16 setEligibleForHandoff:0];
  [v16 setTitle:v13];

  [v16 _setSubtitle:v12];
  [v16 _setContentUserAction:NSUserActivityContentUserActionCall];
  v18 = [NSSet setWithArray:v11];

  [v16 setKeywords:v18];
  [(CSDUserActivity *)v14 setUserActivity:v16];
  v19 = [(CSDUserActivity *)v14 userActivity];
  [v19 setUserInfo:v10];

  return v14;
}

+ (unsigned)activityTypeForUserActivityTypeString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mobilephone"])
  {
    v4 = 1;
  }

  else
  {
    v5 = TUCallHandoffActivityType();
    v6 = [v3 isEqualToString:v5];

    if (v6)
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"com.apple.telephonyutilities.suppressringtone"])
    {
      v4 = 3;
    }

    else if ([v3 isEqualToString:TUUserActivityTypeConversationHandoff])
    {
      v4 = 5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)_userActivityTypeStringForActivityType:(unsigned int)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v3 = @"com.apple.mobilephone";
    }

    else if (a3 == 2)
    {
      v3 = TUCallHandoffActivityType();
    }
  }

  else
  {
    switch(a3)
    {
      case 3u:
        v3 = @"com.apple.telephonyutilities.suppressringtone";
        break;
      case 4u:
        v3 = TUCallPhoneAppHistoryActivityType();
        break;
      case 5u:
        v3 = TUUserActivityTypeConversationHandoff;
        break;
    }
  }

  return v3;
}

- (void)addUserInfoEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivity *)self userActivity];
  [v5 addUserInfoEntriesFromDictionary:v4];

  v6 = [(CSDUserActivity *)self userActivity];
  [v6 setNeedsSave:1];
}

- (void)becomeCurrent
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning advertising user activity as current: %@", &v6, 0xCu);
  }

  v5 = [(CSDUserActivity *)self userActivity];
  [v5 becomeCurrent];
}

- (void)resignCurrent
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping advertising user activity as current, without invalidating: %@", &v6, 0xCu);
  }

  v5 = [(CSDUserActivity *)self userActivity];
  [v5 resignCurrent];
}

- (void)invalidate
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating user activity: %@", &v6, 0xCu);
  }

  v5 = [(CSDUserActivity *)self userActivity];
  [v5 invalidate];
}

@end