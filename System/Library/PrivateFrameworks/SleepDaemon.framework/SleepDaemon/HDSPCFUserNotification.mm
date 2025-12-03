@interface HDSPCFUserNotification
+ (HDSPCFUserNotification)userNotificationWithIdentifier:(id)identifier notification:(__CFUserNotification *)notification actionHandler:(id)handler;
- (HDSPCFUserNotification)initWithIdentifier:(id)identifier notification:(__CFUserNotification *)notification actionHandler:(id)handler;
@end

@implementation HDSPCFUserNotification

+ (HDSPCFUserNotification)userNotificationWithIdentifier:(id)identifier notification:(__CFUserNotification *)notification actionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v10 = [[self alloc] initWithIdentifier:identifierCopy notification:notification actionHandler:handlerCopy];

  return v10;
}

- (HDSPCFUserNotification)initWithIdentifier:(id)identifier notification:(__CFUserNotification *)notification actionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = HDSPCFUserNotification;
  v11 = [(HDSPCFUserNotification *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_notification = notification;
    v13 = [handlerCopy copy];
    actionHandler = v12->_actionHandler;
    v12->_actionHandler = v13;

    v15 = v12;
  }

  return v12;
}

@end