@interface SPUISearchViewClientSceneSettings
- (BOOL)isKeyboardPresented;
- (CGSize)dockedSearchBarSize;
- (CGSize)searchBarSize;
- (double)distanceToTopOfIcons;
- (double)keyboardHeight;
- (double)keyboardProtectorHeight;
- (double)searchBarCornerRadius;
- (id)keyDescriptionForSetting:(int64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(int64_t)setting;
- (unint64_t)searchHeaderBackgroundLayerRenderID;
- (unint64_t)searchHeaderBlurLayerRenderID;
- (unint64_t)searchHeaderLayerRenderID;
- (unsigned)searchHeaderBackgroundContextID;
- (unsigned)searchHeaderBlurContextID;
- (unsigned)searchHeaderContextID;
@end

@implementation SPUISearchViewClientSceneSettings

- (double)distanceToTopOfIcons
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1000];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (unint64_t)searchHeaderLayerRenderID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1001];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unsigned)searchHeaderContextID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1002];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)searchHeaderBackgroundContextID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1004];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unint64_t)searchHeaderBackgroundLayerRenderID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1003];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (double)keyboardProtectorHeight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1006];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (CGSize)searchBarSize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1008];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 CGSizeValue];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)dockedSearchBarSize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1009];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 CGSizeValue];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)searchBarCornerRadius
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1010];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (double)keyboardHeight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1005];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (unsigned)searchHeaderBlurContextID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1012];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unint64_t)searchHeaderBlurLayerRenderID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1011];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (BOOL)isKeyboardPresented
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1007];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SPUISearchViewMutableClientSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(int64_t)setting
{
  if ((setting - 1000) > 0xC)
  {
    v5.receiver = self;
    v5.super_class = SPUISearchViewClientSceneSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = SPUISearchViewSceneClientSettingsKeyDescription(setting);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(int64_t)setting
{
  if ((setting - 1000) > 0xC)
  {
    v7.receiver = self;
    v7.super_class = SPUISearchViewClientSceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  else
  {
    v5 = SPUISearchViewClientSceneSettingsValueDescription(setting, flag, object);
  }

  return v5;
}

@end