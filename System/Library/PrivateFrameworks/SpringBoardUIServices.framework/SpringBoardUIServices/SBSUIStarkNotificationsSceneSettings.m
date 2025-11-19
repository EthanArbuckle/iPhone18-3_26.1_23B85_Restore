@interface SBSUIStarkNotificationsSceneSettings
- (BOOL)isConnectedWirelessly;
- (BOOL)isGeoSupported;
- (BSServiceConnectionEndpoint)openServiceEndpoint;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (unint64_t)suspensionReasons;
@end

@implementation SBSUIStarkNotificationsSceneSettings

- (BOOL)isConnectedWirelessly
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2998744415];

  return v3;
}

- (BOOL)isGeoSupported
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2998744418];

  return v3;
}

- (unint64_t)suspensionReasons
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2998744416];
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

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (BSServiceConnectionEndpoint)openServiceEndpoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2998744417];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBSUIMutableStarkNotificationsSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 2998744415u > 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBSUIStarkNotificationsSceneSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  else
  {
    v5 = off_1E789FF18[a3 - 2998744415u];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = SBSUIStarkNotificationsSceneSettingValueDescription(a5, a3, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBSUIStarkNotificationsSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end