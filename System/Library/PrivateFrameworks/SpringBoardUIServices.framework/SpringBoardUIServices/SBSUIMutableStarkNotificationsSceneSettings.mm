@interface SBSUIMutableStarkNotificationsSceneSettings
- (BOOL)isConnectedWirelessly;
- (BOOL)isGeoSupported;
- (BSServiceConnectionEndpoint)openServiceEndpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)suspensionReasons;
- (void)setConnectedWirelessly:(BOOL)wirelessly;
- (void)setGeoSupported:(BOOL)supported;
- (void)setOpenServiceEndpoint:(id)endpoint;
- (void)setSuspensionReasons:(unint64_t)reasons;
@end

@implementation SBSUIMutableStarkNotificationsSceneSettings

- (BOOL)isConnectedWirelessly
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2998744415];

  return v3;
}

- (void)setConnectedWirelessly:(BOOL)wirelessly
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:2998744415];
}

- (BOOL)isGeoSupported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2998744418];

  return v3;
}

- (void)setGeoSupported:(BOOL)supported
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:2998744418];
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

- (void)setSuspensionReasons:(unint64_t)reasons
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reasons];
  [otherSettings setObject:v4 forSetting:2998744416];
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

- (void)setOpenServiceEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:endpointCopy forSetting:2998744417];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIStarkNotificationsSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 2998744415u > 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBSUIMutableStarkNotificationsSceneSettings;
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
    v14.super_class = SBSUIMutableStarkNotificationsSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end