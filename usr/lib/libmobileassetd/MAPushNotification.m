@interface MAPushNotification
- (MAPushNotification)initWithCoder:(id)a3;
- (MAPushNotification)initWithUserInfo:(id)a3;
@end

@implementation MAPushNotification

- (MAPushNotification)initWithUserInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MAPushNotification;
  v5 = [(MAPushNotification *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"aps"];
    pushPayload = v5->_pushPayload;
    v5->_pushPayload = v6;
  }

  return v5;
}

- (MAPushNotification)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MAPushNotification;
  return [(MAPushNotification *)&v4 init];
}

@end