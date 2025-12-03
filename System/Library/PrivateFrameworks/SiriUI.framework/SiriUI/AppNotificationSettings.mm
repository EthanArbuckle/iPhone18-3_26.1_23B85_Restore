@interface AppNotificationSettings
- (AppNotificationSettings)initWithAnnounceEnabled:(BOOL)enabled carPlayBannersEnabled:(BOOL)bannersEnabled;
- (BOOL)isEqual:(id)equal;
@end

@implementation AppNotificationSettings

- (AppNotificationSettings)initWithAnnounceEnabled:(BOOL)enabled carPlayBannersEnabled:(BOOL)bannersEnabled
{
  v7.receiver = self;
  v7.super_class = AppNotificationSettings;
  result = [(AppNotificationSettings *)&v7 init];
  if (result)
  {
    result->_announceEnabled = enabled;
    result->_carPlayBannersEnabled = bannersEnabled;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isAnnounceEnabled = [(AppNotificationSettings *)self isAnnounceEnabled];
    if (isAnnounceEnabled == [v5 isAnnounceEnabled])
    {
      areCarPlayBannersEnabled = [(AppNotificationSettings *)self areCarPlayBannersEnabled];
      v7 = areCarPlayBannersEnabled ^ [v5 areCarPlayBannersEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end