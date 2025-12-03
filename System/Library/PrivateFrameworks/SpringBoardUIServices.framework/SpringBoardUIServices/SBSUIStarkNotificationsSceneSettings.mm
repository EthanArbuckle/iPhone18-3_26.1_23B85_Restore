@interface SBSUIStarkNotificationsSceneSettings
- (BOOL)isConnectedWirelessly;
- (BOOL)isGeoSupported;
- (BSServiceConnectionEndpoint)openServiceEndpoint;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)suspensionReasons;
@end

@implementation SBSUIStarkNotificationsSceneSettings

- (BOOL)isConnectedWirelessly
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2998744415];

  return v3;
}

- (BOOL)isGeoSupported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2998744418];

  return v3;
}

- (unint64_t)suspensionReasons
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2998744416];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BSServiceConnectionEndpoint)openServiceEndpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2998744417];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIMutableStarkNotificationsSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 2998744415u > 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBSUIStarkNotificationsSceneSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  else
  {
    v5 = off_1E789FF18[setting - 2998744415u];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = SBSUIStarkNotificationsSceneSettingValueDescription(setting, flag, objectCopy);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBSUIStarkNotificationsSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end