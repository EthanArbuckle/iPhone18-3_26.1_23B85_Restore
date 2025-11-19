@interface UVPreviewSceneSettings
- (CGSize)previewMaximumSize;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)makeMutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)previewSceneLayout;
@end

@implementation UVPreviewSceneSettings

- (CGSize)previewMaximumSize
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1100101];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1100102];
  v4 = [v3 integerValue];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UVMutablePreviewSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)makeMutableCopy
{
  v2 = [(UVPreviewSceneSettings *)self mutableCopy];

  return v2;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1100102)
  {
    v5 = @"previewSceneLayout";
  }

  else
  {
    v5 = 0;
  }

  if (a3 == 1100101)
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
    v9 = [(FBSSettings *)&v12 keyDescriptionForSetting:a3];
  }

  v10 = v9;

  return v10;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = _PreviewSceneSettingValueDescription(a5, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UVPreviewSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end