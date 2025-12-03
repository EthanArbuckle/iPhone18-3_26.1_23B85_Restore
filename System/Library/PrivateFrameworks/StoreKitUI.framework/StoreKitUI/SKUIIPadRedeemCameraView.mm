@interface SKUIIPadRedeemCameraView
- (BOOL)textFieldShouldReturn:(id)return;
- (SKUIIPadRedeemCameraView)initWithClientContext:(id)context;
- (SKUIRedeemCameraViewDelegate)delegate;
- (double)_adjustVerticalSpacingForHeight:(double)height;
- (id)_newTextFieldWithClientContext:(id)context placeholderColor:(id)color;
- (void)_landingButtonAction:(id)action;
- (void)_termsButtonAction:(id)action;
- (void)dealloc;
- (void)keyboardDidChange:(id)change;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setText:(id)text;
- (void)textFieldTextDidChange:(id)change;
@end

@implementation SKUIIPadRedeemCameraView

- (SKUIIPadRedeemCameraView)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPadRedeemCameraView initWithClientContext:];
  }

  v26.receiver = self;
  v26.super_class = SKUIIPadRedeemCameraView;
  v5 = [(SKUIIPadRedeemCameraView *)&v26 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v5->_scrollView;
    v5->_scrollView = v6;

    [(SKUIIPadRedeemCameraView *)v5 addSubview:v5->_scrollView];
    v8 = [[SKUIRedeemCameraLandingView alloc] initWithClientContext:contextCopy];
    landingView = v5->_landingView;
    v5->_landingView = v8;

    button = [(SKUIRedeemCameraLandingView *)v5->_landingView button];
    [button addTarget:v5 action:sel__landingButtonAction_ forControlEvents:64];

    [(UIScrollView *)v5->_scrollView addSubview:v5->_landingView];
    tintColor = [(SKUIIPadRedeemCameraView *)v5 tintColor];
    v12 = [(SKUIIPadRedeemCameraView *)v5 _newTextFieldWithClientContext:contextCopy placeholderColor:tintColor];
    textField = v5->_textField;
    v5->_textField = v12;

    [(SKUIRedeemTextField *)v5->_textField setDelegate:v5];
    [(UIScrollView *)v5->_scrollView addSubview:v5->_textField];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C60] object:0];
    [defaultCenter addObserver:v5 selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v5 selector:sel_textFieldTextDidChange_ name:*MEMORY[0x277D770B0] object:v5->_textField];
    v15 = [[SKUILinkButton alloc] initWithArrowStyle:0];
    termsButton = v5->_termsButton;
    v5->_termsButton = &v15->super;

    v17 = v5->_termsButton;
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"REDEEM_TERMS_LINK" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REDEEM_TERMS_LINK" inBundles:0 inTable:@"Redeem"];
    }
    v18 = ;
    [(UIButton *)v17 setTitle:v18 forState:0];

    titleLabel = [(UIButton *)v5->_termsButton titleLabel];
    v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [titleLabel setFont:v20];

    v21 = v5->_termsButton;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UIButton *)v21 setTitleColor:v22 forState:0];

    v23 = v5->_termsButton;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIButton *)v23 setTitleColor:blackColor forState:1];

    [(UIButton *)v5->_termsButton addTarget:v5 action:sel__termsButtonAction_ forControlEvents:64];
    [(UIScrollView *)v5->_scrollView addSubview:v5->_termsButton];
  }

  return v5;
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

  v4.receiver = self;
  v4.super_class = SKUIIPadRedeemCameraView;
  [(SKUIIPadRedeemCameraView *)&v4 dealloc];
}

- (void)setText:(id)text
{
  textField = self->_textField;
  textCopy = text;
  [(SKUIRedeemTextField *)textField setText:textCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained SKUIRedeemCameraView:self textFieldDidChange:textCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  textField = self->_textField;
  if (enabled)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:0.392156863 alpha:1.0];
  }
  v6 = ;
  [(SKUIRedeemTextField *)textField setTextColor:v6];

  [(SKUIRedeemTextField *)self->_textField setEnabled:enabledCopy];

  [(SKUIIPadRedeemCameraView *)self setUserInteractionEnabled:enabledCopy];
}

- (void)layoutSubviews
{
  [(SKUIIPadRedeemCameraView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v13 = 44.0;
  }

  else
  {
    v13 = 94.0;
  }

  scrollView = self->_scrollView;
  if (scrollView)
  {
    [(UIScrollView *)scrollView setContentSize:v8, v10];
    [(UIScrollView *)self->_scrollView setFrame:v4, v6, v8, v10];
  }

  landingView = self->_landingView;
  if (landingView)
  {
    [(SKUIRedeemCameraLandingView *)landingView frame];
    [(SKUIRedeemCameraLandingView *)self->_landingView sizeThatFits:v8, v10];
    v17 = v16;
    v19 = v18;
    [(SKUIRedeemCameraLandingView *)self->_landingView setFrame:0.0, v13, v16, v18];
    v31.origin.x = 0.0;
    v31.origin.y = v13;
    v31.size.width = v17;
    v31.size.height = v19;
    v13 = CGRectGetMaxY(v31) + 49.0;
  }

  textField = self->_textField;
  if (textField)
  {
    [(SKUIRedeemTextField *)textField setFrame:0.0, v13, v8, 44.0];
    v32.origin.x = 0.0;
    v32.origin.y = v13;
    v32.size.width = v8;
    v32.size.height = 44.0;
    v13 = CGRectGetMaxY(v32) + 36.0;
  }

  termsButton = self->_termsButton;
  if (termsButton)
  {
    [(UIButton *)termsButton sizeToFit];
    [(UIButton *)self->_termsButton frame];
    v23 = v22;
    v25 = v24;
    v26 = (v8 - v22) * 0.5;
    v27 = roundf(v26);
    [(SKUIIPadRedeemCameraView *)self _adjustVerticalSpacingForHeight:v13];
    v29 = self->_termsButton;

    [(UIButton *)v29 setFrame:v27, v28, v23, v25];
  }
}

- (void)keyboardDidChange:(id)change
{
  userInfo = [change userInfo];
  v15 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];

  if (v15)
  {
    superview = [(UIScrollView *)self->_scrollView superview];
    [v15 CGRectValue];
    [superview convertRect:0 fromView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(UIScrollView *)self->_scrollView frame];
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    v18 = CGRectIntersection(v17, v19);
    height = v18.size.height;
    [(UIScrollView *)self->_scrollView contentInset:v18.origin.x];
    [(UIScrollView *)self->_scrollView setContentInset:?];
    [(UIScrollView *)self->_scrollView scrollIndicatorInsets];
    [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:?];
    [(UIScrollView *)self->_scrollView setContentOffset:1 animated:0.0, height];
  }
}

- (void)textFieldTextDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [(SKUIRedeemTextField *)self->_textField text];
  [WeakRetained SKUIRedeemCameraView:self textFieldDidChange:text];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [returnCopy text];

  [WeakRetained SKUIRedeemCameraView:self textFieldDidRedeem:text];
  return 1;
}

- (void)_landingButtonAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presentFullScreenCameraViewForSKUIRedeemCameraView:self];
}

- (void)_termsButtonAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SKUIMetricsOpenURL(termsAndConditionsURL);
}

- (double)_adjustVerticalSpacingForHeight:(double)height
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    keyWindow = [MEMORY[0x277D75DA0] keyWindow];
    [keyWindow bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v12;
    v20.size.height = v14;
    Width = CGRectGetWidth(v20);
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    Height = CGRectGetHeight(v21);
    if (Width >= 1024.0 && Height >= 1024.0)
    {
      if (Height <= Width)
      {
        v18 = 320.0;
      }

      else
      {
        v18 = 461.0;
      }

      return height + v18;
    }
  }

  return height;
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

- (SKUIRedeemCameraViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPadRedeemCameraView initWithClientContext:]";
}

@end