@interface PLSchemaUpgradeUserNotification
- (PLSchemaUpgradeUserNotification)initWithMessage:(id)message;
@end

@implementation PLSchemaUpgradeUserNotification

- (PLSchemaUpgradeUserNotification)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = PLSchemaUpgradeUserNotification;
  v6 = [(PLSchemaUpgradeUserNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

@end