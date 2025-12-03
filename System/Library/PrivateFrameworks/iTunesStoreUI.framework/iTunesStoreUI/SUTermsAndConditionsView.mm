@interface SUTermsAndConditionsView
- (SUTermsAndConditionsView)initWithFrame:(CGRect)frame;
- (double)_buttonHeightForStyle:(int64_t)style;
- (id)_button;
- (id)_termsAndConditionsControl;
- (void)_buttonAction:(id)action;
- (void)_clearButtonSelection:(id)selection;
- (void)_destroyButton;
- (void)_termsAndConditionsAction:(id)action;
- (void)_updateButton;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHideAccountButton:(BOOL)button;
- (void)setRightMargin:(double)margin;
- (void)setStyle:(int64_t)style;
- (void)sizeToFit;
@end

@implementation SUTermsAndConditionsView

- (SUTermsAndConditionsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUTermsAndConditionsView;
  v3 = [(SUTermsAndConditionsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accountsChangedNotification_ name:*MEMORY[0x1E69D4A48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4A48] object:0];
  [(SUTermsAndConditionsView *)self _destroyButton];

  [(SULinkControl *)self->_termsAndConditionsControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  self->_termsAndConditionsControl = 0;
  v4.receiver = self;
  v4.super_class = SUTermsAndConditionsView;
  [(SUTermsAndConditionsView *)&v4 dealloc];
}

- (void)setHideAccountButton:(BOOL)button
{
  if (self->_hideAccountButton != button)
  {
    self->_hideAccountButton = button;
    [(SUTermsAndConditionsView *)self _destroyButton];

    [(SUTermsAndConditionsView *)self setNeedsLayout];
  }
}

- (void)setRightMargin:(double)margin
{
  if (self->_rightMargin != margin)
  {
    self->_rightMargin = margin;
    [(SUTermsAndConditionsView *)self setNeedsLayout];
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(SUTermsAndConditionsView *)self _destroyButton];
    [(SULinkControl *)self->_termsAndConditionsControl setStyle:[(SUTermsAndConditionsView *)self _linkStyleForStyle:self->_style]];

    [(SUTermsAndConditionsView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUTermsAndConditionsView *)self bounds];
  v4 = v3 - self->_rightMargin;
  if (!self->_hideAccountButton)
  {
    _button = [(SUTermsAndConditionsView *)self _button];
    [(SUTermsAndConditionsView *)self _buttonHeightForStyle:self->_style];
    [_button setFrame:{9.0, 8.0, v4 + -9.0 + -9.0, v6}];
  }

  _termsAndConditionsControl = [(SUTermsAndConditionsView *)self _termsAndConditionsControl];
  [_termsAndConditionsControl frame];
  v9 = ceil((v4 - v8) * 0.5);
  v10 = 91.0;
  if (self->_hideAccountButton)
  {
    v10 = 26.0;
  }

  [_termsAndConditionsControl setFrame:{v9, v10}];
}

- (void)sizeToFit
{
  [(SUTermsAndConditionsView *)self frame];

  [(SUTermsAndConditionsView *)self setFrame:?];
}

- (void)_buttonAction:(id)action
{
  v5 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] message:"bundleForClass:" preferredStyle:{objc_opt_class()), "localizedStringForKey:value:table:", @"ITUNES_ACCOUNT", &stru_1F41B3660, 0), v5, 1}];
    v7 = MEMORY[0x1E69DC648];
    v8 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"VIEW_ACCOUNT", &stru_1F41B3660, 0}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__SUTermsAndConditionsView__buttonAction___block_invoke;
    v11[3] = &unk_1E8164A98;
    v11[4] = self;
    [v6 addAction:{objc_msgSend(v7, "actionWithTitle:style:handler:", v8, 0, v11)}];
    [v6 addAction:{objc_msgSend(MEMORY[0x1E69DC648], "actionWithTitle:style:handler:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SIGN_OUT", &stru_1F41B3660, 0), 0, &__block_literal_global_3)}];
    [v6 addAction:{objc_msgSend(MEMORY[0x1E69DC648], "actionWithTitle:style:handler:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"FORGOT_PASSWORD", &stru_1F41B3660, 0), 0, &__block_literal_global_28)}];
    [v6 addAction:{objc_msgSend(MEMORY[0x1E69DC648], "actionWithTitle:style:handler:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"CANCEL", &stru_1F41B3660, 0), 1, 0)}];
    [-[SUTermsAndConditionsViewDelegate viewControllerForPresentingAccountAlertControllerFromTermsAndConditionsView:](-[SUTermsAndConditionsView delegate](self "delegate")];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E69E47D8]);
    v10 = [v9 initWithAuthenticationContext:{objc_msgSend(MEMORY[0x1E69D4898], "contextForSignIn")}];
    [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
  }

  [(SUTermsAndConditionsView *)self performSelector:sel__clearButtonSelection_ withObject:action afterDelay:0.100000001];
}

void __42__SUTermsAndConditionsView__buttonAction___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SUAccountViewController);
  -[SUViewController setClientInterface:](v2, "setClientInterface:", [*(a1 + 32) clientInterface]);
  [(SUAccountViewController *)v2 setStyle:2];
  [SUClientDispatch enterAccountFlowWithViewController:v2 animated:1];
}

uint64_t __42__SUTermsAndConditionsView__buttonAction___block_invoke_2()
{
  v0 = [MEMORY[0x1E69D4890] defaultStore];

  return [v0 signOutAllAccounts];
}

void __42__SUTermsAndConditionsView__buttonAction___block_invoke_3()
{
  v0 = objc_alloc(MEMORY[0x1E69E4788]);
  v2 = [v0 initWithURLBagKey:*MEMORY[0x1E69D4D58]];
  [v2 setITunesStoreURL:0];
  v1 = [objc_alloc(MEMORY[0x1E69E4780]) initWithOpenURLRequest:v2];
  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

- (void)_termsAndConditionsAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x1E695DFF8] termsAndConditionsURL];
  clientInterface = [(SUTermsAndConditionsView *)self clientInterface];

  SUOpenExternalURL(termsAndConditionsURL, clientInterface);
}

- (id)_button
{
  result = self->_button;
  if (!result)
  {
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v5 = v4 + -18.0;
    [(SUTermsAndConditionsView *)self _buttonHeightForStyle:self->_style];
    style = self->_style;
    if (style == 2)
    {
      v8 = [[SUSubtitledButton alloc] initWithFrame:9.0, 8.0, v5, v6];
      self->_button = v8;
      [(SUSubtitledButton *)v8 setTitleEdgeInsets:0.0, 7.0, 0.0, 7.0];
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      -[SUSubtitledButton setBackgroundImage:forState:](self->_button, "setBackgroundImage:forState:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"GradientButtonBackground.png" inBundle:{v9), "stretchableImageWithLeftCapWidth:topCapHeight:", 7, 0}], 0);
      -[SUSubtitledButton setTitleColor:forState:](self->_button, "setTitleColor:forState:", [MEMORY[0x1E69DC888] blackColor], 0);
      v10 = [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"GradientButtonBackgroundPressed.png" inBundle:{v9), "stretchableImageWithLeftCapWidth:topCapHeight:", 7, 0}];
      [(SUSubtitledButton *)self->_button setBackgroundImage:v10 forState:1];
      button = self->_button;
      v12 = v10;
    }

    else
    {
      if (!style)
      {
        self->_button = [[SURoundedCornersButton alloc] initWithFrame:9.0, 8.0, v5, v6];
LABEL_8:
        [(SUSubtitledButton *)self->_button addTarget:self action:sel__buttonAction_ forControlEvents:64];
        -[SUSubtitledButton setSubtitleColor:forState:](self->_button, "setSubtitleColor:forState:", [MEMORY[0x1E69DC888] blackColor], 0);
        -[SUSubtitledButton setSubtitleColor:forState:](self->_button, "setSubtitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 1);
        -[SUSubtitledButton setSubtitleColor:forState:](self->_button, "setSubtitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 4);
        [(SUSubtitledButton *)self->_button setSubtitleShadowColor:0 forState:0];
        [(SUSubtitledButton *)self->_button setSubtitleShadowColor:0 forState:1];
        [(SUSubtitledButton *)self->_button setSubtitleShadowColor:0 forState:4];
        -[SUSubtitledButton setTitleColor:forState:](self->_button, "setTitleColor:forState:", [MEMORY[0x1E69DC888] blackColor], 0);
        -[SUSubtitledButton setTitleColor:forState:](self->_button, "setTitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 1);
        -[SUSubtitledButton setTitleColor:forState:](self->_button, "setTitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 4);
        [(SUSubtitledButton *)self->_button setTitleShadowColor:0 forState:0];
        [(SUSubtitledButton *)self->_button setTitleShadowColor:0 forState:1];
        [(SUSubtitledButton *)self->_button setTitleShadowColor:0 forState:4];
        [(SUSubtitledButton *)self->_button titleEdgeInsets];
        [(SUSubtitledButton *)self->_button setTitleEdgeInsets:v16 + 1.0];
        titleLabel = [(SUSubtitledButton *)self->_button titleLabel];
        [titleLabel setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 14.0)}];
        [titleLabel setTextAlignment:1];
        subtitleLabel = [(SUSubtitledButton *)self->_button subtitleLabel];
        -[UILabel setFont:](subtitleLabel, "setFont:", [MEMORY[0x1E69DB878] systemFontOfSize:13.0]);
        [(UILabel *)subtitleLabel setTextAlignment:1];
        [(SUTermsAndConditionsView *)self addSubview:self->_button];
        [(SUTermsAndConditionsView *)self _updateButton];
        return self->_button;
      }

      v13 = [[SUSubtitledButton alloc] initWithFrame:9.0, 8.0, v5, v6];
      self->_button = v13;
      [(SUSubtitledButton *)v13 setTitleEdgeInsets:0.0, 7.0, 0.0, 7.0];
      -[SUSubtitledButton setBackgroundImage:forState:](self->_button, "setBackgroundImage:forState:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:{@"AccountButtonBackground.png", "stretchableImageWithLeftCapWidth:topCapHeight:", 7, 0}], 0);
      v14 = [MEMORY[0x1E69DCAB8] imageNamed:@"GradientButtonBackgroundPressed.png" inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}];
      -[SUSubtitledButton setBackgroundImage:forState:](self->_button, "setBackgroundImage:forState:", [v14 stretchableImageWithLeftCapWidth:7 topCapHeight:0], 1);
      v15 = self->_button;
      v12 = [v14 stretchableImageWithLeftCapWidth:7 topCapHeight:0];
      button = v15;
    }

    [(SUSubtitledButton *)button setBackgroundImage:v12 forState:4];
    goto LABEL_8;
  }

  return result;
}

- (double)_buttonHeightForStyle:(int64_t)style
{
  result = 47.0;
  if (!style)
  {
    return 48.0;
  }

  return result;
}

- (void)_clearButtonSelection:(id)selection
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:selection];

  [selection setSelected:0];
}

- (void)_destroyButton
{
  [(SUSubtitledButton *)self->_button removeFromSuperview];
  [(SUSubtitledButton *)self->_button removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_button = 0;
}

- (id)_termsAndConditionsControl
{
  result = self->_termsAndConditionsControl;
  if (!result)
  {
    v4 = objc_alloc_init(SULinkControl);
    self->_termsAndConditionsControl = v4;
    [(SULinkControl *)v4 addTarget:self action:sel__termsAndConditionsAction_ forControlEvents:64];
    -[SULinkControl setBackgroundColor:](self->_termsAndConditionsControl, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    LODWORD(v5) = -1097229926;
    [(SULinkControl *)self->_termsAndConditionsControl setCharge:v5];
    [(SULinkControl *)self->_termsAndConditionsControl setStyle:[(SUTermsAndConditionsView *)self _linkStyleForStyle:self->_style]];
    -[SULinkControl setText:](self->_termsAndConditionsControl, "setText:", [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"TERMS_AND_CONDITIONS", &stru_1F41B3660, 0}]);
    [(SULinkControl *)self->_termsAndConditionsControl sizeToFit];
    [(SUTermsAndConditionsView *)self addSubview:self->_termsAndConditionsControl];
    return self->_termsAndConditionsControl;
  }

  return result;
}

- (void)_updateButton
{
  v3 = [objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  accountName = [v3 accountName];
  if ([accountName length])
  {
    creditsString = [v3 creditsString];
    v6 = [creditsString length];
    button = self->_button;
    if (v6)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ACCOUNT_BUTTON_CREDIT_FORMAT", &stru_1F41B3660, 0), creditsString];
    }

    else
    {
      v8 = 0;
    }

    [(SUSubtitledButton *)button setSubtitle:v8 forState:0];
    v12 = self->_button;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ACCOUNT_FORMAT", &stru_1F41B3660, 0), accountName];
    v11 = v12;
  }

  else
  {
    [(SUSubtitledButton *)self->_button setSubtitle:0 forState:0];
    v9 = self->_button;
    v10 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SIGN_IN", &stru_1F41B3660, 0}];
    v11 = v9;
  }

  [(SUSubtitledButton *)v11 setTitle:v10 forState:0];
}

@end