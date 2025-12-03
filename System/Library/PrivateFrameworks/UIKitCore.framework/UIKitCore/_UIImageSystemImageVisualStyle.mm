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
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage systemImageNamed:@"ellipsis.circle.fill" withConfiguration:v4];
      v6 = selfCopy[1];
      selfCopy[1] = v5;

      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)addImage
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v4];
      v6 = selfCopy[2];
      selfCopy[2] = v5;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)removeImage
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage systemImageNamed:@"minus.circle.fill" withConfiguration:v4];
      v6 = selfCopy[3];
      selfCopy[3] = v5;

      v3 = selfCopy[3];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)checkmarkImage
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = self[4];
    if (!v2)
    {
      v3 = +[UIColor systemWhiteColor];
      v10[0] = v3;
      v4 = +[UIColor tintColor];
      v10[1] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
      v6 = [UIImageSymbolConfiguration configurationWithPaletteColors:v5];
      v7 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:v6];
      v8 = selfCopy[4];
      selfCopy[4] = v7;

      v2 = selfCopy[4];
    }

    self = v2;
  }

  return self;
}

- (void)strokedCheckmarkImage
{
  if (self)
  {
    selfCopy = self;
    v3 = self[5];
    if (!v3)
    {
      v4 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      v5 = [UIImage _systemImageNamed:@"checkmark.circle.platter" withConfiguration:v4];
      v6 = selfCopy[5];
      selfCopy[5] = v5;

      v3 = selfCopy[5];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

@end