@interface CSDUserActivity
+ (id)_userActivityTypeStringForActivityType:(unsigned int)type;
+ (id)appHistoryActivityWithTitle:(id)title subtitle:(id)subtitle keywords:(id)keywords userInfo:(id)info;
+ (unsigned)activityTypeForUserActivityTypeString:(id)string;
- (id)description;
- (void)addUserInfoEntriesFromDictionary:(id)dictionary;
- (void)becomeCurrent;
- (void)invalidate;
- (void)resignCurrent;
@end

@implementation CSDUserActivity

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  userActivity = [(CSDUserActivity *)self userActivity];
  activityType = [userActivity activityType];
  [v3 appendFormat:@" activityType=%@", activityType];

  dynamicIdentifier = [(CSDUserActivity *)self dynamicIdentifier];
  [v3 appendFormat:@" dynamicIdentifier=%@", dynamicIdentifier];

  userActivity2 = [(CSDUserActivity *)self userActivity];
  userInfo = [userActivity2 userInfo];
  [v3 appendFormat:@" activityUserInfo=%@", userInfo];

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

+ (id)appHistoryActivityWithTitle:(id)title subtitle:(id)subtitle keywords:(id)keywords userInfo:(id)info
{
  infoCopy = info;
  keywordsCopy = keywords;
  subtitleCopy = subtitle;
  titleCopy = title;
  v14 = objc_alloc_init(CSDUserActivity);
  v15 = [self _userActivityTypeStringForActivityType:4];
  v16 = [[NSUserActivity alloc] _initWithTypeIdentifier:v15 suggestedActionType:1 options:0];
  [v16 _setContentType:v15];
  v17 = [NSDate dateWithTimeIntervalSinceNow:864000.0];
  [v16 setExpirationDate:v17];

  [v16 setEligibleForSearch:1];
  [v16 setEligibleForPublicIndexing:0];
  [v16 setEligibleForHandoff:0];
  [v16 setTitle:titleCopy];

  [v16 _setSubtitle:subtitleCopy];
  [v16 _setContentUserAction:NSUserActivityContentUserActionCall];
  v18 = [NSSet setWithArray:keywordsCopy];

  [v16 setKeywords:v18];
  [(CSDUserActivity *)v14 setUserActivity:v16];
  userActivity = [(CSDUserActivity *)v14 userActivity];
  [userActivity setUserInfo:infoCopy];

  return v14;
}

+ (unsigned)activityTypeForUserActivityTypeString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"com.apple.mobilephone"])
  {
    v4 = 1;
  }

  else
  {
    v5 = TUCallHandoffActivityType();
    v6 = [stringCopy isEqualToString:v5];

    if (v6)
    {
      v4 = 2;
    }

    else if ([stringCopy isEqualToString:@"com.apple.telephonyutilities.suppressringtone"])
    {
      v4 = 3;
    }

    else if ([stringCopy isEqualToString:TUUserActivityTypeConversationHandoff])
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

+ (id)_userActivityTypeStringForActivityType:(unsigned int)type
{
  v3 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      v3 = @"com.apple.mobilephone";
    }

    else if (type == 2)
    {
      v3 = TUCallHandoffActivityType();
    }
  }

  else
  {
    switch(type)
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

- (void)addUserInfoEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  userActivity = [(CSDUserActivity *)self userActivity];
  [userActivity addUserInfoEntriesFromDictionary:dictionaryCopy];

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 setNeedsSave:1];
}

- (void)becomeCurrent
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = userActivity;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning advertising user activity as current: %@", &v6, 0xCu);
  }

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 becomeCurrent];
}

- (void)resignCurrent
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = userActivity;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping advertising user activity as current, without invalidating: %@", &v6, 0xCu);
  }

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 resignCurrent];
}

- (void)invalidate
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = userActivity;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating user activity: %@", &v6, 0xCu);
  }

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 invalidate];
}

@end