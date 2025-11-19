@interface _UIImageSystemImageVisualStyle
+ (id)_iosVisualStyle;
- (void)actionsImage;
- (void)addImage;
- (void)checkmarkImage;
- (void)removeImage;
- (void)strokedCheckmarkImage;
@end

@implementation _UIImageSystemImageVisualStyle

+ (id)_iosVisualStyle
{
  objc_opt_self();
  if (_MergedGlobals_1326 != -1)
  {
    dispatch_once(&_MergedGlobals_1326, &__block_literal_global_610);
  }

  v0 = qword_1ED4A2298;

  return v0;
}

- (void)actionsImage
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage systemImageNamed:@"ellipsis.circle.fill" withConfiguration:v4];
      v6 = v2[1];
      v2[1] = v5;

      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)addImage
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v4];
      v6 = v2[2];
      v2[2] = v5;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)removeImage
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage systemImageNamed:@"minus.circle.fill" withConfiguration:v4];
      v6 = v2[3];
      v2[3] = v5;

      v3 = v2[3];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)checkmarkImage
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[4];
    if (!v2)
    {
      v3 = +[UIColor systemWhiteColor];
      v10[0] = v3;
      v4 = +[UIColor tintColor];
      v10[1] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
      v6 = [UIImageSymbolConfiguration configurationWithPaletteColors:v5];
      v7 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:v6];
      v8 = v1[4];
      v1[4] = v7;

      v2 = v1[4];
    }

    a1 = v2;
  }

  return a1;
}

- (void)strokedCheckmarkImage
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage _systemImageNamed:@"checkmark.circle.platter" withConfiguration:v4];
      v6 = v2[5];
      v2[5] = v5;

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

@end