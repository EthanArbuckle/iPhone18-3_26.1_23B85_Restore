@interface SearchUIRequestButton
- (id)imageWithSymbolName:(id)a3 accessibilityDescription:(id)a4;
- (id)setupView;
- (void)_updateButtonState:(int)a3;
- (void)buttonPressed;
- (void)updateButtonState:(BOOL)a3 withState:(int)a4;
@end

@implementation SearchUIRequestButton

- (void)buttonPressed
{
  v3 = [(SearchUIAccessoryViewController *)self feedbackDelegate];
  v9 = [SearchUIUtilities environmentForDelegate:v3];

  v4 = [(SearchUIAccessoryViewController *)self rowModel];
  v5 = [v4 buttonItems];
  v6 = [v5 firstObject];
  v7 = [(SearchUIAccessoryViewController *)self rowModel];
  v8 = [SearchUICommandHandler handlerForButton:v6 rowModel:v7 environment:v9];
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

  v5 = [(SearchUIRequestButton *)self imageView];
  [v5 setProminence:0];

  v6 = MEMORY[0x1E69D9200];
  v7 = [(SearchUIRequestButton *)self viewButton];
  v13[0] = v7;
  v8 = [(SearchUIRequestButton *)self imageView];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v6 verticalContainerStackViewWithArrangedSubviews:v9];
  [(SearchUIRequestButton *)self setStackView:v10];

  v11 = [(SearchUIRequestButton *)self stackView];

  return v11;
}

- (id)imageWithSymbolName:(id)a3 accessibilityDescription:(id)a4
{
  v5 = a4;
  v6 = [SearchUISymbolImage uiImageWithSymbolName:a3];
  [v6 setAccessibilityLabel:v5];

  v7 = [objc_alloc(MEMORY[0x1E69D9168]) initWithImage:v6];

  return v7;
}

- (void)_updateButtonState:(int)a3
{
  v3 = *&a3;
  if ([(SearchUIRequestButton *)self lastState]== a3)
  {
    return;
  }

  [(SearchUIRequestButton *)self setLastState:v3];
  v5 = [(SearchUIRequestButton *)self viewButton];
  v6 = v5;
  if (v3 == 3)
  {
    [v5 setHidden:1];

    v6 = [SearchUIUtilities localizedStringForKey:@"DENIED"];
    v7 = @"x.circle";
  }

  else
  {
    if (v3 != 2)
    {
      [v5 setHidden:0];
      v10 = 1;
      goto LABEL_8;
    }

    [v5 setHidden:1];

    v6 = [SearchUIUtilities localizedStringForKey:@"APPROVED"];
    v7 = @"checkmark.circle";
  }

  v8 = [(SearchUIRequestButton *)self imageWithSymbolName:v7 accessibilityDescription:v6];
  v9 = [(SearchUIRequestButton *)self imageView];
  [v9 setTlkImage:v8];

  v10 = 0;
LABEL_8:

  v11 = [(SearchUIRequestButton *)self imageView];
  [v11 setHidden:v10];
}

- (void)updateButtonState:(BOOL)a3 withState:(int)a4
{
  if (a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__SearchUIRequestButton_updateButtonState_withState___block_invoke;
    v5[3] = &unk_1E85B2CC0;
    v5[4] = self;
    v6 = a4;
    [SearchUIUtilities performAnimatableChanges:v5];
  }

  else
  {

    [(SearchUIRequestButton *)self _updateButtonState:*&a4];
  }
}

@end