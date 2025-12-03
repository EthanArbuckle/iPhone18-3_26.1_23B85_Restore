@interface SearchUIRequestButton
- (id)imageWithSymbolName:(id)name accessibilityDescription:(id)description;
- (id)setupView;
- (void)_updateButtonState:(int)state;
- (void)buttonPressed;
- (void)updateButtonState:(BOOL)state withState:(int)withState;
@end

@implementation SearchUIRequestButton

- (void)buttonPressed
{
  feedbackDelegate = [(SearchUIAccessoryViewController *)self feedbackDelegate];
  v9 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

  rowModel = [(SearchUIAccessoryViewController *)self rowModel];
  buttonItems = [rowModel buttonItems];
  firstObject = [buttonItems firstObject];
  rowModel2 = [(SearchUIAccessoryViewController *)self rowModel];
  v8 = [SearchUICommandHandler handlerForButton:firstObject rowModel:rowModel2 environment:v9];
  [v8 executeWithTriggerEvent:2];
}

- (id)setupView
{
  v13[2] = *MEMORY[0x1E69E9840];
  [(SearchUIRequestButton *)self setLastState:0];
  v3 = objc_opt_new();
  [v3 addTarget:self action:sel_buttonPressed forControlEvents:64];
  [(SearchUIRequestButton *)self setViewButton:v3];
  v4 = objc_alloc_init(MEMORY[0x1E69D9170]);
  [(SearchUIRequestButton *)self setImageView:v4];

  imageView = [(SearchUIRequestButton *)self imageView];
  [imageView setProminence:0];

  v6 = MEMORY[0x1E69D9200];
  viewButton = [(SearchUIRequestButton *)self viewButton];
  v13[0] = viewButton;
  imageView2 = [(SearchUIRequestButton *)self imageView];
  v13[1] = imageView2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v6 verticalContainerStackViewWithArrangedSubviews:v9];
  [(SearchUIRequestButton *)self setStackView:v10];

  stackView = [(SearchUIRequestButton *)self stackView];

  return stackView;
}

- (id)imageWithSymbolName:(id)name accessibilityDescription:(id)description
{
  descriptionCopy = description;
  v6 = [SearchUISymbolImage uiImageWithSymbolName:name];
  [v6 setAccessibilityLabel:descriptionCopy];

  v7 = [objc_alloc(MEMORY[0x1E69D9168]) initWithImage:v6];

  return v7;
}

- (void)_updateButtonState:(int)state
{
  v3 = *&state;
  if ([(SearchUIRequestButton *)self lastState]== state)
  {
    return;
  }

  [(SearchUIRequestButton *)self setLastState:v3];
  viewButton = [(SearchUIRequestButton *)self viewButton];
  v6 = viewButton;
  if (v3 == 3)
  {
    [viewButton setHidden:1];

    v6 = [SearchUIUtilities localizedStringForKey:@"DENIED"];
    v7 = @"x.circle";
  }

  else
  {
    if (v3 != 2)
    {
      [viewButton setHidden:0];
      v10 = 1;
      goto LABEL_8;
    }

    [viewButton setHidden:1];

    v6 = [SearchUIUtilities localizedStringForKey:@"APPROVED"];
    v7 = @"checkmark.circle";
  }

  v8 = [(SearchUIRequestButton *)self imageWithSymbolName:v7 accessibilityDescription:v6];
  imageView = [(SearchUIRequestButton *)self imageView];
  [imageView setTlkImage:v8];

  v10 = 0;
LABEL_8:

  imageView2 = [(SearchUIRequestButton *)self imageView];
  [imageView2 setHidden:v10];
}

- (void)updateButtonState:(BOOL)state withState:(int)withState
{
  if (state)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__SearchUIRequestButton_updateButtonState_withState___block_invoke;
    v5[3] = &unk_1E85B2CC0;
    v5[4] = self;
    withStateCopy = withState;
    [SearchUIUtilities performAnimatableChanges:v5];
  }

  else
  {

    [(SearchUIRequestButton *)self _updateButtonState:*&withState];
  }
}

@end