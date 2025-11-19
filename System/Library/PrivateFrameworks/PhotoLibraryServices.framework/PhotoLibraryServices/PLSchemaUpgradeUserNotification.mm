@interface PLSchemaUpgradeUserNotification
- (PLSchemaUpgradeUserNotification)initWithMessage:(id)a3;
@end

@implementation PLSchemaUpgradeUserNotification

- (PLSchemaUpgradeUserNotification)initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLSchemaUpgradeUserNotification;
  v6 = [(PLSchemaUpgradeUserNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

@end