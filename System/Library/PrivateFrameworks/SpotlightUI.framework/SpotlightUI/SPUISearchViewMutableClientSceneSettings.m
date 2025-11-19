@interface SPUISearchViewMutableClientSceneSettings
- (BOOL)isKeyboardPresented;
- (CGSize)dockedSearchBarSize;
- (CGSize)searchBarSize;
- (double)distanceToTopOfIcons;
- (double)keyboardHeight;
- (double)keyboardProtectorHeight;
- (double)searchBarCornerRadius;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(int64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(int64_t)a5;
- (unint64_t)searchHeaderBackgroundLayerRenderID;
- (unint64_t)searchHeaderBlurLayerRenderID;
- (unint64_t)searchHeaderLayerRenderID;
- (unsigned)searchHeaderBackgroundContextID;
- (unsigned)searchHeaderBlurContextID;
- (unsigned)searchHeaderContextID;
- (void)setDistanceToTopOfIcons:(double)a3;
- (void)setDockedSearchBarSize:(CGSize)a3;
- (void)setKeyboardHeight:(double)a3;
- (void)setKeyboardPresented:(BOOL)a3;
- (void)setKeyboardProtectorHeight:(double)a3;
- (void)setSearchBarCornerRadius:(double)a3;
- (void)setSearchBarSize:(CGSize)a3;
- (void)setSearchHeaderBackgroundLayerRenderID:(unint64_t)a3;
- (void)setSearchHeaderBlurLayerRenderID:(unint64_t)a3;
- (void)setSearchHeaderLayerRenderID:(unint64_t)a3;
@end

@implementation SPUISearchViewMutableClientSceneSettings

- (void)setDistanceToTopOfIcons:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1000];
}

- (double)distanceToTopOfIcons
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1000];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (void)setSearchHeaderLayerRenderID:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forSetting:1001];
}

- (unint64_t)searchHeaderLayerRenderID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1001];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)searchHeaderContextID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1002];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchHeaderBackgroundLayerRenderID:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forSetting:1003];
}

- (unint64_t)searchHeaderBackgroundLayerRenderID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1003];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)searchHeaderBackgroundContextID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1004];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setKeyboardHeight:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1005];
}

- (double)keyboardHeight
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1005];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (void)setKeyboardProtectorHeight:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1006];
}

- (double)keyboardProtectorHeight
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1006];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (void)setKeyboardPresented:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:1007];
}

- (BOOL)isKeyboardPresented
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1007];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setSearchBarSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [v5 setObject:v6 forSetting:1008];
}

- (CGSize)searchBarSize
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1008];

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

- (void)setDockedSearchBarSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [v5 setObject:v6 forSetting:1009];
}

- (CGSize)dockedSearchBarSize
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1009];

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

- (void)setSearchBarCornerRadius:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1010];
}

- (double)searchBarCornerRadius
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1010];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (unint64_t)searchHeaderBlurLayerRenderID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1011];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)searchHeaderBlurContextID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1012];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchHeaderBlurLayerRenderID:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forSetting:1011];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPUISearchViewClientSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(int64_t)a3
{
  if ((a3 - 1000) > 0xC)
  {
    v5.receiver = self;
    v5.super_class = SPUISearchViewMutableClientSceneSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = SPUISearchViewSceneClientSettingsKeyDescription(a3);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(int64_t)a5
{
  if ((a5 - 1000) > 0xC)
  {
    v7.receiver = self;
    v7.super_class = SPUISearchViewMutableClientSceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:a3 object:a4 ofSetting:?];
  }

  else
  {
    v5 = SPUISearchViewClientSceneSettingsValueDescription(a5, a3, a4);
  }

  return v5;
}

@end