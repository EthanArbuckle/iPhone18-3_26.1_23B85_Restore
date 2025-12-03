@interface PREditingForwardExtensionAppearanceNotificationAction
- (NSString)notificationName;
- (PREditingForwardExtensionAppearanceNotificationAction)initWithNotificationName:(id)name;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation PREditingForwardExtensionAppearanceNotificationAction

- (PREditingForwardExtensionAppearanceNotificationAction)initWithNotificationName:(id)name
{
  v4 = MEMORY[0x1E698E700];
  nameCopy = name;
  v6 = objc_alloc_init(v4);
  v7 = [nameCopy copy];

  [v6 setObject:v7 forSetting:1];
  v10.receiver = self;
  v10.super_class = PREditingForwardExtensionAppearanceNotificationAction;
  v8 = [(PREditingForwardExtensionAppearanceNotificationAction *)&v10 initWithInfo:v6 responder:0];

  return v8;
}

- (NSString)notificationName
{
  info = [(PREditingForwardExtensionAppearanceNotificationAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"notificationName";
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
    v7 = [(PREditingForwardExtensionAppearanceNotificationAction *)self notificationName:flag];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end