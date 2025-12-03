@interface UVMutablePreviewSceneSettings
- (CGSize)previewMaximumSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)makeCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)previewSceneLayout;
- (void)setPreviewMaximumSize:(CGSize)size;
- (void)setPreviewSceneLayout:(int64_t)layout;
@end

@implementation UVMutablePreviewSceneSettings

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

- (void)setPreviewMaximumSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [otherSettings setObject:v6 forSetting:1100101];
}

- (int64_t)previewSceneLayout
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1100102];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setPreviewSceneLayout:(int64_t)layout
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:layout];
  [otherSettings setObject:v4 forSetting:1100102];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UVPreviewSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)makeCopy
{
  v2 = [(UVMutablePreviewSceneSettings *)self copy];

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithSettings:self];
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
    v12.super_class = UVMutablePreviewSceneSettings;
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
    v14.super_class = UVMutablePreviewSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end