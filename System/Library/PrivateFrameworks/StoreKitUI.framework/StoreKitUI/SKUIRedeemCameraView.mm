@interface SKUIRedeemCameraView
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (SKUIRedeemCameraView)initWithClientContext:(id)context;
- (SKUIRedeemCameraViewDelegate)delegate;
- (id)_newTextFieldWithClientContext:(id)context placeholderColor:(id)color;
- (void)_hideKeyboard;
- (void)_iTunesPassLearnMoreAction:(id)action;
- (void)_landingButtonAction:(id)action;
- (void)_pauseRedeemer;
- (void)_resumeRedeemer;
- (void)_showRedeemer:(BOOL)redeemer;
- (void)_tapGestureAction:(id)action;
- (void)_termsButtonAction:(id)action;
- (void)dealloc;
- (void)keyboardDidShow:(id)show;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setITunesPassConfiguration:(id)configuration;
- (void)setText:(id)text;
- (void)textFieldTextDidChange:(id)change;
@end

@implementation SKUIRedeemCameraView

- (SKUIRedeemCameraView)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemCameraView initWithClientContext:];
  }

  v34.receiver = self;
  v34.super_class = SKUIRedeemCameraView;
  v6 = [(SKUIRedeemCameraView *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v8 = [[SKUIRedeemCameraLandingView alloc] initWithClientContext:contextCopy];
    landingView = v7->_landingView;
    v7->_landingView = v8;

    button = [(SKUIRedeemCameraLandingView *)v7->_landingView button];
    [button addTarget:v7 action:sel__landingButtonAction_ forControlEvents:64];

    [(SKUIRedeemCameraView *)v7 addSubview:v7->_landingView];
    tintColor = [(SKUIRedeemCameraView *)v7 tintColor];
    v12 = [(SKUIRedeemCameraView *)v7 _newTextFieldWithClientContext:contextCopy placeholderColor:tintColor];
    textField = v7->_textField;
    v7->_textField = v12;

    [(SKUIRedeemTextField *)v7->_textField setDelegate:v7];
    [(SKUIRedeemCameraView *)v7 addSubview:v7->_textField];
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    v15 = [(SKUIRedeemCameraView *)v7 _newTextFieldWithClientContext:contextCopy placeholderColor:v14];
    inputAccessoryTextField = v7->_inputAccessoryTextField;
    v7->_inputAccessoryTextField = v15;

    [(SKUIRedeemTextField *)v7->_inputAccessoryTextField setDelegate:v7];
    [(SKUIRedeemTextField *)v7->_inputAccessoryTextField setEnablesReturnKeyAutomatically:1];
    [(SKUIRedeemTextField *)v7->_inputAccessoryTextField setBackdropBackground:1];
    [(SKUIRedeemTextField *)v7->_textField setInputAccessoryView:v7->_inputAccessoryTextField];
    v17 = objc_alloc_init(MEMORY[0x277D75B80]);
    [v17 addTarget:v7 action:sel__tapGestureAction_];
    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    overlay = v7->_overlay;
    v7->_overlay = v18;

    v20 = v7->_overlay;
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    [(UIView *)v20 setBackgroundColor:v21];

    [(UIView *)v7->_overlay setAlpha:0.0];
    [(UIView *)v7->_overlay addGestureRecognizer:v17];
    v22 = [[SKUILinkButton alloc] initWithArrowStyle:0];
    termsButton = v7->_termsButton;
    v7->_termsButton = &v22->super;

    v24 = v7->_termsButton;
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"REDEEM_TERMS_LINK" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REDEEM_TERMS_LINK" inBundles:0 inTable:@"Redeem"];
    }
    v25 = ;
    [(UIButton *)v24 setTitle:v25 forState:0];

    titleLabel = [(UIButton *)v7->_termsButton titleLabel];
    v27 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [titleLabel setFont:v27];

    v28 = v7->_termsButton;
    v29 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UIButton *)v28 setTitleColor:v29 forState:0];

    v30 = v7->_termsButton;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIButton *)v30 setTitleColor:blackColor forState:1];

    [(UIButton *)v7->_termsButton addTarget:v7 action:sel__termsButtonAction_ forControlEvents:64];
    [(SKUIRedeemCameraView *)v7 addSubview:v7->_termsButton];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [defaultCenter addObserver:v7 selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
    [defaultCenter addObserver:v7 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v7 selector:sel_keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
    [defaultCenter addObserver:v7 selector:sel_textFieldTextDidChange_ name:*MEMORY[0x277D770B0] object:v7->_inputAccessoryTextField];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  [(SKUIRedeemTextField *)self->_textField setDelegate:0];
  [(SKUIRedeemTextField *)self->_inputAccessoryTextField setDelegate:0];
  [(SKUIRedeemITunesPassLockup *)self->_iTunesPassLockup removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4.receiver = self;
  v4.super_class = SKUIRedeemCameraView;
  [(SKUIRedeemCameraView *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  textField = self->_textField;
  if (enabled)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SKUIRedeemTextField *)textField setTextColor:blackColor];

    inputAccessoryTextField = self->_inputAccessoryTextField;
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.392156863 alpha:1.0];
    [(SKUIRedeemTextField *)textField setTextColor:v8];

    inputAccessoryTextField = self->_inputAccessoryTextField;
    [MEMORY[0x277D75348] colorWithWhite:0.392156863 alpha:1.0];
  }
  v9 = ;
  [(SKUIRedeemTextField *)inputAccessoryTextField setTextColor:v9];

  [(SKUIRedeemTextField *)self->_textField setEnabled:enabledCopy];
  [(SKUIRedeemTextField *)self->_inputAccessoryTextField setEnabled:enabledCopy];

  [(SKUIRedeemCameraView *)self setUserInteractionEnabled:enabledCopy];
}

- (void)setITunesPassConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_iTunesPassConfiguration != configurationCopy)
  {
    [(SKUIRedeemITunesPassLockup *)self->_iTunesPassLockup removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [(SKUIRedeemITunesPassLockup *)self->_iTunesPassLockup removeFromSuperview];
    iTunesPassLockup = self->_iTunesPassLockup;
    self->_iTunesPassLockup = 0;

    objc_storeStrong(&self->_iTunesPassConfiguration, configuration);
    if (self->_iTunesPassConfiguration)
    {
      v6 = [[SKUIRedeemITunesPassLockup alloc] initWithITunesPassConfiguration:self->_iTunesPassConfiguration clientContext:self->_clientContext];
      v7 = self->_iTunesPassLockup;
      self->_iTunesPassLockup = v6;

      [(SKUIRedeemITunesPassLockup *)self->_iTunesPassLockup addTarget:self action:sel__iTunesPassLearnMoreAction_ forControlEvents:64];
      [(SKUIRedeemCameraView *)self addSubview:self->_iTunesPassLockup];
    }
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  text = [(SKUIRedeemTextField *)self->_textField text];
  v5 = [text isEqualToString:textCopy];

  if ((v5 & 1) == 0)
  {
    [(SKUIRedeemTextField *)self->_textField setText:textCopy];
  }

  text2 = [(SKUIRedeemTextField *)self->_inputAccessoryTextField text];
  v7 = [text2 isEqualToString:textCopy];

  if ((v7 & 1) == 0)
  {
    [(SKUIRedeemTextField *)self->_inputAccessoryTextField setText:textCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained SKUIRedeemCameraView:self textFieldDidChange:textCopy];
}

- (void)layoutSubviews
{
  [(SKUIRedeemCameraView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_overlay setFrame:?];
  p_textField = &self->_textField;
  [(SKUIRedeemTextField *)self->_textField frame];
  v13 = v12;
  v15 = v14;
  if ([(SKUIRedeemCameraView *)self _isShowingRedeemer])
  {
    [(UIView *)self->_redeemerView setFrame:v4, v6, v8, v10];
    v16 = v10 - v15;
  }

  else
  {
    v50 = v13;
    if (self->_iTunesPassLockup)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v19 = v18;

      v20 = v19 <= 480.0;
      v21 = 20.0;
      if (v19 <= 480.0)
      {
        v21 = 10.0;
      }

      v49 = v21;
      if (v19 > 480.0)
      {
        v22 = 30.0;
      }

      else
      {
        v22 = 17.0;
      }

      [(SKUIRedeemITunesPassLockup *)self->_iTunesPassLockup frame];
      [(SKUIRedeemITunesPassLockup *)self->_iTunesPassLockup sizeThatFits:v8 + -60.0, 1.79769313e308];
      v45 = v23;
      v46 = v24;
      v25 = v15 + v22 + v24;
      v44 = v22;
    }

    else
    {
      v45 = *(MEMORY[0x277CBF3A0] + 16);
      v46 = *(MEMORY[0x277CBF3A0] + 24);
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v28 = v27 > 480.0;

      v20 = 0;
      v49 = dbl_215F40160[v28];
      v44 = 0.0;
      v22 = 30.0;
      v25 = v15;
    }

    [(SKUIRedeemCameraLandingView *)self->_landingView frame];
    v30 = v29;
    [(SKUIRedeemCameraLandingView *)self->_landingView setSpacingStyle:v20];
    [(SKUIRedeemCameraLandingView *)self->_landingView sizeThatFits:v8, v10];
    v32 = v31;
    v34 = v33;
    v35 = v25 + v49 + v33;
    [(UIButton *)self->_termsButton frame];
    [(UIButton *)self->_termsButton sizeThatFits:v8, v10];
    v47 = v37;
    v48 = v36;
    v51 = v22;
    *&v36 = (v10 - (v35 + v22 + v37)) * 0.5;
    v38 = floorf(*&v36);
    [(SKUIRedeemCameraLandingView *)self->_landingView setFrame:v30, v38, v32, v34];
    v53.origin.x = v30;
    v53.origin.y = v38;
    v53.size.width = v32;
    v53.size.height = v34;
    v39 = v49 + CGRectGetMaxY(v53);
    [*p_textField setFrame:{v50, v39, v8, v15}];
    v54.origin.x = v50;
    v54.origin.y = v39;
    v54.size.width = v8;
    v54.size.height = v15;
    MaxY = CGRectGetMaxY(v54);
    if (self->_iTunesPassLockup)
    {
      v55.origin.x = v50;
      v55.origin.y = v39;
      v55.size.width = v8;
      v55.size.height = v15;
      v41 = v44 + CGRectGetMaxY(v55);
      [(SKUIRedeemITunesPassLockup *)self->_iTunesPassLockup setFrame:30.0, v41, v45, v46];
      v56.origin.x = 30.0;
      v56.origin.y = v41;
      v56.size.width = v45;
      v56.size.height = v46;
      MaxY = CGRectGetMaxY(v56);
    }

    v15 = v47;
    v42 = (v8 - v48) * 0.5;
    v13 = roundf(v42);
    v16 = v51 + MaxY;
    p_textField = &self->_termsButton;
    v8 = v48;
  }

  v43 = *p_textField;

  [v43 setFrame:{v13, v16, v8, v15}];
}

- (void)keyboardWillShow:(id)show
{
  if (self->_displayRedeem)
  {
    v9[9] = v3;
    v9[10] = v4;
    text = [(SKUIRedeemTextField *)self->_textField text];
    [(SKUIRedeemCameraView *)self setText:text];

    [(SKUIRedeemCameraView *)self _pauseRedeemer];
    [(SKUIRedeemCameraView *)self addSubview:self->_overlay];
    [(SKUIRedeemCameraView *)self setNeedsLayout];
    overlay = self->_overlay;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)overlay setBackgroundColor:blackColor];

    [(UIView *)self->_overlay setAlpha:0.0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__SKUIRedeemCameraView_keyboardWillShow___block_invoke;
    v9[3] = &unk_2781F80F0;
    v9[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v9 animations:0.2];
  }
}

uint64_t __41__SKUIRedeemCameraView_keyboardWillShow___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[57];
  v3 = [v1 _isShowingRedeemer];
  v4 = 0.7;
  if (v3)
  {
    v4 = 0.4;
  }

  return [v2 setAlpha:v4];
}

- (void)keyboardDidShow:(id)show
{
  if (self->_displayRedeem)
  {
    [(SKUIRedeemTextField *)self->_inputAccessoryTextField becomeFirstResponder];
  }
}

- (void)keyboardWillHide:(id)hide
{
  if (!self->_displayRedeem)
  {
    text = [(SKUIRedeemTextField *)self->_inputAccessoryTextField text];
    [(SKUIRedeemCameraView *)self setText:text];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__SKUIRedeemCameraView_keyboardWillHide___block_invoke;
    v6[3] = &unk_2781F80F0;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__SKUIRedeemCameraView_keyboardWillHide___block_invoke_2;
    v5[3] = &unk_2781F84A0;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.2];
  }
}

uint64_t __41__SKUIRedeemCameraView_keyboardWillHide___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 456) removeFromSuperview];
  }

  return result;
}

- (void)textFieldTextDidChange:(id)change
{
  text = [(SKUIRedeemTextField *)self->_inputAccessoryTextField text];
  [(SKUIRedeemCameraView *)self setText:text];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  if (self->_textField == editing)
  {
    self->_displayRedeem = 1;
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [returnCopy text];

  [WeakRetained SKUIRedeemCameraView:self textFieldDidRedeem:text];
  return 1;
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  if (self->_textField == editing)
  {
    self->_displayRedeem = 0;
  }

  return 1;
}

- (void)_iTunesPassLearnMoreAction:(id)action
{
  delegate = [(SKUIRedeemCameraView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate showITunesPassLearnMoreForSKUIRedeemCameraView:self];
  }
}

- (void)_landingButtonAction:(id)action
{
  [(SKUIRedeemCameraView *)self setText:&stru_2827FFAC8];

  [(SKUIRedeemCameraView *)self _showRedeemer:1];
}

- (void)_tapGestureAction:(id)action
{
  if ([(SKUIRedeemCameraView *)self _isShowingRedeemer])
  {
    [(SKUIRedeemCameraView *)self setText:&stru_2827FFAC8];
    [(SKUIRedeemCameraView *)self _hideKeyboard];

    [(SKUIRedeemCameraView *)self _resumeRedeemer];
  }

  else
  {

    [(SKUIRedeemCameraView *)self _hideKeyboard];
  }
}

- (void)_termsButtonAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SKUIMetricsOpenURL(termsAndConditionsURL);
}

- (void)_hideKeyboard
{
  [(SKUIRedeemTextField *)self->_inputAccessoryTextField resignFirstResponder];
  textField = self->_textField;

  [(SKUIRedeemTextField *)textField resignFirstResponder];
}

- (id)_newTextFieldWithClientContext:(id)context placeholderColor:(id)color
{
  v18[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  colorCopy = color;
  v7 = [[SKUIRedeemTextField alloc] initWithFrame:0.0, 0.0, 1.0, 44.0];
  [(SKUIRedeemTextField *)v7 setAutocorrectionType:1];
  [(SKUIRedeemTextField *)v7 setAutocapitalizationType:3];
  v8 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [(SKUIRedeemTextField *)v7 setFont:v8];
  v9 = *MEMORY[0x277D740A8];
  v18[0] = v8;
  v10 = *MEMORY[0x277D740C0];
  v17[0] = v9;
  v17[1] = v10;
  v11 = colorCopy;
  if (!colorCopy)
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
  }

  v18[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  if (!colorCopy)
  {
  }

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  if (contextCopy)
  {
    [contextCopy localizedStringForKey:@"CAMERA_REDEEM_ENTER_CODE" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_ENTER_CODE" inBundles:0 inTable:@"Redeem"];
  }
  v14 = ;
  v15 = [v13 initWithString:v14 attributes:v12];

  [(SKUIRedeemTextField *)v7 setAttributedPlaceholder:v15];
  return v7;
}

- (void)_pauseRedeemer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cancelRedeemerViewForSKUIRedeemCameraView:self];
}

- (void)_resumeRedeemer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startRedeemerViewForSKUIRedeemCameraView:self];
}

- (void)_showRedeemer:(BOOL)redeemer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presentFullScreenCameraViewForSKUIRedeemCameraView:self];
}

- (SKUIRedeemCameraViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemCameraView initWithClientContext:]";
}

@end