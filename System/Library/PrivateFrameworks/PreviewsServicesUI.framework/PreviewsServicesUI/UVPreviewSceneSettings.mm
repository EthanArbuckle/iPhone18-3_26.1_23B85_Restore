@interface UVPreviewSceneSettings
- (CGSize)previewMaximumSize;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)makeMutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)previewSceneLayout;
@end

@implementation UVPreviewSceneSettings

- (CGSize)previewMaximumSize
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1100101];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)previewSceneLayout
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1100102];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UVMutablePreviewSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)makeMutableCopy
{
  v2 = [(UVPreviewSceneSettings *)self mutableCopy];

  return v2;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1100102)
  {
    v5 = @"previewSceneLayout";
  }

  else
  {
    v5 = 0;
  }

  if (setting == 1100101)
  {
    v6 = @"previewMaximumSize";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UVPreviewSceneSettings;
    v9 = [(FBSSettings *)&v12 keyDescriptionForSetting:setting];
  }

  v10 = v9;

  return v10;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = _PreviewSceneSettingValueDescription(setting, objectCopy);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UVPreviewSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end