@interface PREditingForwardExtensionAppearanceNotificationAction
- (NSString)notificationName;
- (PREditingForwardExtensionAppearanceNotificationAction)initWithNotificationName:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation PREditingForwardExtensionAppearanceNotificationAction

- (PREditingForwardExtensionAppearanceNotificationAction)initWithNotificationName:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 copy];

  [v6 setObject:v7 forSetting:1];
  v10.receiver = self;
  v10.super_class = PREditingForwardExtensionAppearanceNotificationAction;
  v8 = [(PREditingForwardExtensionAppearanceNotificationAction *)&v10 initWithInfo:v6 responder:0];

  return v8;
}

- (NSString)notificationName
{
  v2 = [(PREditingForwardExtensionAppearanceNotificationAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"notificationName";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 1)
  {
    v7 = [(PREditingForwardExtensionAppearanceNotificationAction *)self notificationName:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end