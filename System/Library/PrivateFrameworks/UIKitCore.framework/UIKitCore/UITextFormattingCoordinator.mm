@interface UITextFormattingCoordinator
+ (UITextFormattingCoordinator)textFormattingCoordinatorForWindowScene:(UIWindowScene *)windowScene;
- (UITextFormattingCoordinator)initWithWindowScene:(UIWindowScene *)windowScene;
- (id)delegate;
- (void)fontPickerViewControllerDidPickFont:(id)a3;
- (void)updateTextAttributesWithConversionHandler:(id)a3;
@end

@implementation UITextFormattingCoordinator

+ (UITextFormattingCoordinator)textFormattingCoordinatorForWindowScene:(UIWindowScene *)windowScene
{
  v3 = [(UIWindowScene *)windowScene keyboardSceneDelegate];
  v4 = [v3 textFormattingCoordinator];

  return v4;
}

- (UITextFormattingCoordinator)initWithWindowScene:(UIWindowScene *)windowScene
{
  v4.receiver = self;
  v4.super_class = UITextFormattingCoordinator;
  return [(UITextFormattingCoordinator *)&v4 init];
}

- (void)updateTextAttributesWithConversionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 updateTextAttributesWithConversionHandler:v4];
  }

  else
  {
    v7 = +[UIWindow _applicationKeyWindow];
    v6 = [v7 firstResponder];
    [v6 updateTextAttributesWithConversionHandler:v4];

    v4 = v6;
  }
}

- (void)fontPickerViewControllerDidPickFont:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedFontDescriptor];

  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__UITextFormattingCoordinator_fontPickerViewControllerDidPickFont___block_invoke;
    aBlock[3] = &unk_1E7124760;
    v8 = v4;
    v6 = _Block_copy(aBlock);
    [(UITextFormattingCoordinator *)self updateTextAttributesWithConversionHandler:v6];
  }
}

id __67__UITextFormattingCoordinator_fontPickerViewControllerDidPickFont___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *off_1E70EC918;
  v5 = [v3 objectForKeyedSubscript:*off_1E70EC918];
  if (v5 && ([*(a1 + 32) selectedFontDescriptor], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v3 mutableCopy];
    v8 = [*(a1 + 32) selectedFontDescriptor];
    [v5 pointSize];
    v9 = [off_1E70ECC18 fontWithDescriptor:v8 size:?];

    [v7 setObject:v9 forKeyedSubscript:v4];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end