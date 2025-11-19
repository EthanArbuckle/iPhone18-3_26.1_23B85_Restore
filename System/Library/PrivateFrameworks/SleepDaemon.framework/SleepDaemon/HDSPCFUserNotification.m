@interface HDSPCFUserNotification
+ (HDSPCFUserNotification)userNotificationWithIdentifier:(id)a3 notification:(__CFUserNotification *)a4 actionHandler:(id)a5;
- (HDSPCFUserNotification)initWithIdentifier:(id)a3 notification:(__CFUserNotification *)a4 actionHandler:(id)a5;
@end

@implementation HDSPCFUserNotification

+ (HDSPCFUserNotification)userNotificationWithIdentifier:(id)a3 notification:(__CFUserNotification *)a4 actionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithIdentifier:v9 notification:a4 actionHandler:v8];

  return v10;
}

- (HDSPCFUserNotification)initWithIdentifier:(id)a3 notification:(__CFUserNotification *)a4 actionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HDSPCFUserNotification;
  v11 = [(HDSPCFUserNotification *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    v12->_notification = a4;
    v13 = [v10 copy];
    actionHandler = v12->_actionHandler;
    v12->_actionHandler = v13;

    v15 = v12;
  }

  return v12;
}

@end