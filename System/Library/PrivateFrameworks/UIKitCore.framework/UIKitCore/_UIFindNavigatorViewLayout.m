@interface _UIFindNavigatorViewLayout
- (BOOL)isEqual:(id)a3;
- (CGSize)preferredContentSize;
- (UIFont)preferredTextFieldFont;
- (id)commonButtonConfigWithGlass:(BOOL)a3 withCompletion:(id)a4;
- (id)commonButtonConfigWithImageName:(id)a3 isAccessory:(BOOL)a4;
- (id)commonButtonConfigWithTitle:(id)a3 isGlass:(BOOL)a4;
@end

@implementation _UIFindNavigatorViewLayout

- (BOOL)isEqual:(id)a3
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [v3 isEqual:v4];
}

- (CGSize)preferredContentSize
{
  if (self->_usesAssistantBarHeight)
  {
    v3 = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v3];
  }

  else
  {
    v5 = [(UIView *)self _inheritedRenderConfig];
    if ([v5 colorAdaptiveBackground])
    {
      v6 = 53.0;
    }

    else
    {
      v6 = 49.0;
    }

    v3 = [(_UIFindNavigatorViewLayout *)self preferredTextFieldFont];
    [v3 _scaledValueForValue:v6];
    UIRoundToViewScale(self);
  }

  v7 = v4;

  v8 = -1.0;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIFont)preferredTextFieldFont
{
  v2 = [(_UIFindNavigatorViewLayout *)self preferredMaximumContentSizeCategory];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" maximumContentSizeCategory:v2];

  return v3;
}

- (id)commonButtonConfigWithGlass:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[UIButtonConfiguration borderlessButtonConfiguration];
  v8 = [(UIView *)self _inheritedRenderConfig];
  v9 = [v8 colorAdaptiveBackground];

  if (v9 && v4)
  {
    v10 = +[UIButtonConfiguration glassButtonConfiguration];

    v7 = v10;
  }

  [v7 setMacIdiomStyle:1];
  v6[2](v6, v7);

  return v7;
}

- (id)commonButtonConfigWithTitle:(id)a3 isGlass:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66___UIFindNavigatorViewLayout_commonButtonConfigWithTitle_isGlass___block_invoke;
  v10[3] = &unk_1E70F34F0;
  v7 = v6;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = [(_UIFindNavigatorViewLayout *)self commonButtonConfigWithGlass:v4 withCompletion:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v8;
}

- (id)commonButtonConfigWithImageName:(id)a3 isAccessory:(BOOL)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UIFindNavigatorViewLayout_commonButtonConfigWithImageName_isAccessory___block_invoke;
  v9[3] = &unk_1E70F3518;
  v10 = v5;
  v6 = v5;
  v7 = [(_UIFindNavigatorViewLayout *)self commonButtonConfigWithGlass:0 withCompletion:v9];

  return v7;
}

@end