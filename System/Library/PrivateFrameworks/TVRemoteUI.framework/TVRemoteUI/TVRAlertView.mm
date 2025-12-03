@interface TVRAlertView
- (BOOL)resignFirstResponder;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TVRAlertView)initWithFrame:(CGRect)frame;
- (TVRAlertViewDelegate)delegate;
- (void)_cancelButton:(id)button;
- (void)_passcodeFieldTapped;
- (void)_pinTextDidChange:(id)change;
- (void)layoutSubviews;
@end

@implementation TVRAlertView

- (TVRAlertView)initWithFrame:(CGRect)frame
{
  v57.receiver = self;
  v57.super_class = TVRAlertView;
  v3 = [(TVRAlertView *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(TVRAlertView *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(TVRAlertView *)v4 layer];
    [layer2 setAllowsGroupBlending:0];

    layer3 = [(TVRAlertView *)v4 layer];
    v8 = *MEMORY[0x277CDA138];
    [layer3 setCornerCurve:*MEMORY[0x277CDA138]];

    layer4 = [(TVRAlertView *)v4 layer];
    [layer4 setCornerRadius:13.0];

    [(TVRAlertView *)v4 setClipsToBounds:1];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    blendModeView = v4->_blendModeView;
    v4->_blendModeView = v10;

    v12 = v4->_blendModeView;
    v13 = [MEMORY[0x277D75348] colorWithDisplayP3Red:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
    [(UIView *)v12 setBackgroundColor:v13];

    layer5 = [(UIView *)v4->_blendModeView layer];
    [layer5 setCornerCurve:v8];

    layer6 = [(UIView *)v4->_blendModeView layer];
    [layer6 setCornerRadius:13.0];

    [(TVRAlertView *)v4 addSubview:v4->_blendModeView];
    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v16;

    v18 = v4->_titleLabel;
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v18 setFont:v19];

    v20 = v4->_titleLabel;
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v20 setTextColor:systemWhiteColor];

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:4];
    [(UILabel *)v4->_titleLabel setLineBreakMode:4];
    [(UILabel *)v4->_titleLabel setPreferredMaxLayoutWidth:270.0];
    [(TVRAlertView *)v4 addSubview:v4->_titleLabel];
    v22 = objc_alloc_init(TVRPasscodeField);
    passcodeField = v4->_passcodeField;
    v4->_passcodeField = v22;

    [(TVRPasscodeField *)v4->_passcodeField setUseSystemColors:0];
    [(TVRPasscodeField *)v4->_passcodeField setAutoresizingMask:2];
    [(TVRPasscodeField *)v4->_passcodeField addTarget:v4 action:sel__pinTextDidChange_ forControlEvents:0x20000];
    v56 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__passcodeFieldTapped];
    [(TVRPasscodeField *)v4->_passcodeField addGestureRecognizer:v56];
    [(TVRAlertView *)v4 addSubview:v4->_passcodeField];
    v24 = [_TVRMAlertButton buttonWithType:0];
    cancelButton = v4->_cancelButton;
    v4->_cancelButton = v24;

    v26 = v4->_cancelButton;
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"TVRemoteUIPairingCancelString" value:&stru_287E6AEF8 table:@"Localizable"];
    [(_TVRMAlertButton *)v26 setTitle:v28 forState:0];

    v29 = v4->_cancelButton;
    systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
    [(_TVRMAlertButton *)v29 setTitleColor:systemWhiteColor2 forState:1];

    titleLabel = [(_TVRMAlertButton *)v4->_cancelButton titleLabel];
    v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [titleLabel setFont:v32];

    [(_TVRMAlertButton *)v4->_cancelButton addTarget:v4 action:sel__cancelButton_ forControlEvents:0x2000];
    layer7 = [(_TVRMAlertButton *)v4->_cancelButton layer];
    [layer7 setAllowsGroupOpacity:0];

    layer8 = [(_TVRMAlertButton *)v4->_cancelButton layer];
    [layer8 setAllowsGroupBlending:0];

    [(TVRAlertView *)v4 addSubview:v4->_cancelButton];
    v35 = objc_alloc_init(MEMORY[0x277D75D18]);
    v36 = [MEMORY[0x277D75348] colorWithDisplayP3Red:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
    [v35 setBackgroundColor:v36];

    layer9 = [v35 layer];
    v38 = *MEMORY[0x277CDA298];
    v39 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA298]];
    [layer9 setCompositingFilter:v39];

    [(_TVRMAlertButton *)v4->_cancelButton setBurnView:v35];
    v40 = objc_alloc_init(MEMORY[0x277D75D18]);
    v41 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.04];
    [v40 setBackgroundColor:v41];

    layer10 = [v40 layer];
    v43 = [MEMORY[0x277CD9EA0] filterWithType:v38];
    [layer10 setCompositingFilter:v43];

    [(_TVRMAlertButton *)v4->_cancelButton setPlusDView:v40];
    v44 = objc_alloc_init(MEMORY[0x277D75D18]);
    hairlineView = v4->_hairlineView;
    v4->_hairlineView = v44;

    layer11 = [(UIView *)v4->_hairlineView layer];
    [layer11 setAllowsGroupBlending:0];

    [(TVRAlertView *)v4 addSubview:v4->_hairlineView];
    v47 = objc_alloc_init(MEMORY[0x277D75D18]);
    v48 = [MEMORY[0x277D75348] colorWithWhite:0.250980392 alpha:1.0];
    [v47 setBackgroundColor:v48];

    [v47 setAutoresizingMask:18];
    layer12 = [v47 layer];
    v50 = [MEMORY[0x277CD9EA0] filterWithType:v38];
    [layer12 setCompositingFilter:v50];

    [(UIView *)v4->_hairlineView addSubview:v47];
    v51 = objc_alloc_init(MEMORY[0x277D75D18]);
    v52 = [MEMORY[0x277D75348] colorWithDisplayP3Red:0.0 green:0.0 blue:0.31372549 alpha:0.05];
    [v51 setBackgroundColor:v52];

    [v51 setAutoresizingMask:18];
    layer13 = [v51 layer];
    v54 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    [layer13 setCompositingFilter:v54];

    [(UIView *)v4->_hairlineView addSubview:v51];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_titleLabel sizeThatFits:fits.width, 1.79769313e308];
  v6 = v5;
  [(_TVRMAlertButton *)self->_cancelButton sizeThatFits:width, 1.79769313e308];
  v8 = ceil(v6) + 20.0 + 19.0 + 60.0;
  if (v7 < 44.0)
  {
    v7 = 44.0;
  }

  v9 = v8 + v7;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  [(TVRAlertView *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v7 = CGRectGetWidth(v20);
  [(UILabel *)self->_titleLabel sizeThatFits:v7, 0.0];
  v9 = ceil(v8);
  [(UILabel *)self->_titleLabel setFrame:0.0, 20.0, v7, v9];
  v10 = v9 + 20.0 + 19.0;
  [(TVRPasscodeField *)self->_passcodeField setFrame:0.0, v10, v7, 60.0];
  v11 = v10 + 60.0;
  _screen = [(TVRAlertView *)self _screen];
  [_screen scale];
  v14 = v13;

  [(UIView *)self->_hairlineView setFrame:0.0, v11 - 1.0 / v14, v7];
  cancelButton = self->_cancelButton;
  [(TVRAlertView *)self bounds];
  [(_TVRMAlertButton *)cancelButton sizeThatFits:CGRectGetWidth(v21), 1.79769313e308];
  if (v16 >= 44.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 44.0;
  }

  [(_TVRMAlertButton *)self->_cancelButton setFrame:0.0, v11, v7, v17];
  [(UIView *)self->_blendModeView setFrame:x, y, width, height];
  effectView = self->_effectView;

  [(UIVisualEffectView *)effectView setFrame:x, y, width, height];
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = TVRAlertView;
  [(TVRAlertView *)&v4 resignFirstResponder];
  return [(TVRPasscodeField *)self->_passcodeField resignFirstResponder];
}

- (void)_cancelButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 alertViewDidCancel:self];
  }
}

- (void)_passcodeFieldTapped
{
  if (([(TVRPasscodeField *)self->_passcodeField isFirstResponder]& 1) == 0)
  {
    passcodeField = self->_passcodeField;

    [(TVRPasscodeField *)passcodeField becomeFirstResponder];
  }
}

- (void)_pinTextDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    text = [changeCopy text];
    [v6 alertView:self didUpdateText:text];
  }
}

- (TVRAlertViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end