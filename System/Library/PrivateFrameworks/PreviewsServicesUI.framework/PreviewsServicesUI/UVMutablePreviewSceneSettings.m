@interface UVMutablePreviewSceneSettings
- (CGSize)previewMaximumSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)makeCopy;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)previewSceneLayout;
- (void)setPreviewMaximumSize:(CGSize)a3;
- (void)setPreviewSceneLayout:(int64_t)a3;
@end

@implementation UVMutablePreviewSceneSettings

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

- (void)setPreviewMaximumSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(FBSSettings *)self otherSettings];
  *v7 = width;
  *&v7[1] = height;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [v5 setObject:v6 forSetting:1100101];
}

- (int64_t)previewSceneLayout
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1100102];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setPreviewSceneLayout:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:1100102];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UVPreviewSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)makeCopy
{
  v2 = [(UVMutablePreviewSceneSettings *)self copy];

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithSettings:self];
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
    v12.super_class = UVMutablePreviewSceneSettings;
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
    v14.super_class = UVMutablePreviewSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end