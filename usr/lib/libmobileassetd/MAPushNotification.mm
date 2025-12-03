@interface MAPushNotification
- (MAPushNotification)initWithCoder:(id)coder;
- (MAPushNotification)initWithUserInfo:(id)info;
@end

@implementation MAPushNotification

- (MAPushNotification)initWithUserInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = MAPushNotification;
  v5 = [(MAPushNotification *)&v9 init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"aps"];
    pushPayload = v5->_pushPayload;
    v5->_pushPayload = v6;
  }

  return v5;
}

- (MAPushNotification)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MAPushNotification;
  return [(MAPushNotification *)&v4 init];
}

@end