@interface UINotificationSettingsAction
- (UINotificationSettingsAction)initWithNotification:(id)notification;
- (UINotificationSettingsAction)initWithXPCDictionary:(id)dictionary;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation UINotificationSettingsAction

- (UINotificationSettingsAction)initWithNotification:(id)notification
{
  notificationCopy = notification;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  if (notificationCopy)
  {
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:notificationCopy requiringSecureCoding:1 error:0];
    [v5 setObject:v6 forSetting:1];
  }

  v11.receiver = self;
  v11.super_class = UINotificationSettingsAction;
  v7 = [(UINotificationSettingsAction *)&v11 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];
  if (v7)
  {
    v8 = [notificationCopy copy];
    notification = v7->_notification;
    v7->_notification = v8;
  }

  return v7;
}

- (UINotificationSettingsAction)initWithXPCDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = UINotificationSettingsAction;
  v3 = [(UINotificationSettingsAction *)&v10 initWithXPCDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    info = [(UINotificationSettingsAction *)v3 info];
    v6 = [info objectForSetting:1];

    v7 = [MEMORY[0x1E6983240] bs_secureDecodedFromData:v6];
    notification = v4->_notification;
    v4->_notification = v7;
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