@interface UIWillPresentNotificationAction
- (BOOL)isRemote;
- (UIWillPresentNotificationAction)initWithNotification:(id)notification deliverable:(BOOL)deliverable timeout:(double)timeout withHandler:(id)handler;
- (UIWillPresentNotificationAction)initWithXPCDictionary:(id)dictionary;
- (id)_trigger;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation UIWillPresentNotificationAction

- (UIWillPresentNotificationAction)initWithNotification:(id)notification deliverable:(BOOL)deliverable timeout:(double)timeout withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWillPresentNotificationAction.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:notificationCopy requiringSecureCoding:1 error:0];
  v14 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v14 setObject:v13 forSetting:1];
  [v14 setFlag:BSSettingFlagForBool() forSetting:2];
  v20.receiver = self;
  v20.super_class = UIWillPresentNotificationAction;
  v15 = [(UIWillPresentNotificationAction *)&v20 initWithInfo:v14 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:handlerCopy withHandler:timeout];
  if (v15)
  {
    v16 = [notificationCopy copy];
    notification = v15->_notification;
    v15->_notification = v16;

    v15->_isDeliverable = deliverable;
  }

  return v15;
}

- (BOOL)isRemote
{
  _trigger = [(UIWillPresentNotificationAction *)self _trigger];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_trigger
{
  notification = [(UIWillPresentNotificationAction *)self notification];
  request = [notification request];
  trigger = [request trigger];

  return trigger;
}

- (UIWillPresentNotificationAction)initWithXPCDictionary:(id)dictionary
{
  v11.receiver = self;
  v11.super_class = UIWillPresentNotificationAction;
  v3 = [(UIWillPresentNotificationAction *)&v11 initWithXPCDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    info = [(UIWillPresentNotificationAction *)v3 info];
    v6 = [info objectForSetting:1];

    info2 = [(UIWillPresentNotificationAction *)v4 info];
    [info2 flagForSetting:2];

    v8 = [MEMORY[0x1E6983240] bs_secureDecodedFromData:v6];
    notification = v4->_notification;
    v4->_notification = v8;

    v4->_isDeliverable = BSSettingFlagIsYes();
  }

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"notification";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    v7 = [(UNNotification *)self->_notification description:flag];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end