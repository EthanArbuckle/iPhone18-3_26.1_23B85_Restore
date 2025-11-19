@interface EmergencyServicesOverrideProvider
- (NSArray)emergencyServicesOverrides;
@end

@implementation EmergencyServicesOverrideProvider

- (NSArray)emergencyServicesOverrides
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"Siri.PhoneIntentHandler.EmergencyServicesOverride"];

  v4 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10002FF2C(v3, v4);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010228;
  v7[3] = &unk_10004CF50;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

@end