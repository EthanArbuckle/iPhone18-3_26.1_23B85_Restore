@interface AppNotificationSettings
- (AppNotificationSettings)initWithAnnounceEnabled:(BOOL)a3 carPlayBannersEnabled:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation AppNotificationSettings

- (AppNotificationSettings)initWithAnnounceEnabled:(BOOL)a3 carPlayBannersEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = AppNotificationSettings;
  result = [(AppNotificationSettings *)&v7 init];
  if (result)
  {
    result->_announceEnabled = a3;
    result->_carPlayBannersEnabled = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(AppNotificationSettings *)self isAnnounceEnabled];
    if (v6 == [v5 isAnnounceEnabled])
    {
      v8 = [(AppNotificationSettings *)self areCarPlayBannersEnabled];
      v7 = v8 ^ [v5 areCarPlayBannersEnabled] ^ 1;
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