@interface _UIFindNavigatorViewLayout
- (BOOL)isEqual:(id)equal;
- (CGSize)preferredContentSize;
- (UIFont)preferredTextFieldFont;
- (id)commonButtonConfigWithGlass:(BOOL)glass withCompletion:(id)completion;
- (id)commonButtonConfigWithImageName:(id)name isAccessory:(BOOL)accessory;
- (id)commonButtonConfigWithTitle:(id)title isGlass:(BOOL)glass;
@end

@implementation _UIFindNavigatorViewLayout

- (BOOL)isEqual:(id)equal
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [v3 isEqual:v4];
}

- (CGSize)preferredContentSize
{
  if (self->_usesAssistantBarHeight)
  {
    traitCollection = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection];
  }

  else
  {
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    if ([_inheritedRenderConfig colorAdaptiveBackground])
    {
      v6 = 53.0;
    }

    else
    {
      v6 = 49.0;
    }

    traitCollection = [(_UIFindNavigatorViewLayout *)self preferredTextFieldFont];
    [traitCollection _scaledValueForValue:v6];
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
  preferredMaximumContentSizeCategory = [(_UIFindNavigatorViewLayout *)self preferredMaximumContentSizeCategory];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" maximumContentSizeCategory:preferredMaximumContentSizeCategory];

  return v3;
}

- (id)commonButtonConfigWithGlass:(BOOL)glass withCompletion:(id)completion
{
  glassCopy = glass;
  completionCopy = completion;
  v7 = +[UIButtonConfiguration borderlessButtonConfiguration];
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground && glassCopy)
  {
    v10 = +[UIButtonConfiguration glassButtonConfiguration];

    v7 = v10;
  }

  [v7 setMacIdiomStyle:1];
  completionCopy[2](completionCopy, v7);

  return v7;
}

- (id)commonButtonConfigWithTitle:(id)title isGlass:(BOOL)glass
{
  glassCopy = glass;
  titleCopy = title;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66___UIFindNavigatorViewLayout_commonButtonConfigWithTitle_isGlass___block_invoke;
  v10[3] = &unk_1E70F34F0;
  v7 = titleCopy;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = [(_UIFindNavigatorViewLayout *)self commonButtonConfigWithGlass:glassCopy withCompletion:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v8;
}

- (id)commonButtonConfigWithImageName:(id)name isAccessory:(BOOL)accessory
{
  nameCopy = name;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UIFindNavigatorViewLayout_commonButtonConfigWithImageName_isAccessory___block_invoke;
  v9[3] = &unk_1E70F3518;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [(_UIFindNavigatorViewLayout *)self commonButtonConfigWithGlass:0 withCompletion:v9];

  return v7;
}

@end