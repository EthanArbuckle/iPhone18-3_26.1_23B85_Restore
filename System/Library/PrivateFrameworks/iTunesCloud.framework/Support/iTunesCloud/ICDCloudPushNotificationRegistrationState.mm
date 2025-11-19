@interface ICDCloudPushNotificationRegistrationState
- (ICDCloudPushNotificationRegistrationState)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation ICDCloudPushNotificationRegistrationState

- (id)dictionaryRepresentation
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:1];
  v4 = [NSMutableDictionary dictionaryWithCapacity:[(NSMutableDictionary *)self->_accountRegistrationStates count]];
  accountRegistrationStates = self->_accountRegistrationStates;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010EC2C;
  v8[3] = &unk_1001DE800;
  v9 = v4;
  v6 = v4;
  [(NSMutableDictionary *)accountRegistrationStates enumerateKeysAndObjectsUsingBlock:v8];
  [v3 setObject:v6 forKey:@"accountStates"];

  return v3;
}

- (ICDCloudPushNotificationRegistrationState)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(ICDCloudPushNotificationRegistrationState *)self init];
  if (v5)
  {
    v6 = [v4 ic_dictionaryValueForKey:@"accountStates"];
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    accountRegistrationStates = v5->_accountRegistrationStates;
    v5->_accountRegistrationStates = v7;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010EDB8;
    v10[3] = &unk_1001DF418;
    v11 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
  }

  return v5;
}

@end