@interface VUIAppInstallConfirmationView
+ (CGSize)iconSize;
- (VUIAppInstallConfirmationView)initWithFrame:(CGRect)a3;
- (id)_buttonWithTitleForTV:(id)a3 textStyle:(id)a4;
- (void)_layoutForIos;
- (void)_layoutForTvos;
- (void)layoutSubviews;
- (void)setAppIcon:(id)a3;
- (void)setIAP:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation VUIAppInstallConfirmationView

- (VUIAppInstallConfirmationView)initWithFrame:(CGRect)a3
{
  v74.receiver = self;
  v74.super_class = VUIAppInstallConfirmationView;
  v3 = [(VUIAppInstallConfirmationView *)&v74 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [VUIAppInstallLockup alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(VUIAppInstallLockup *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    lockupView = v3->_lockupView;
    v3->_lockupView = v9;

    LODWORD(v11) = 1148846080;
    [(VUIAppInstallLockup *)v3->_lockupView setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(VUIAppInstallLockup *)v3->_lockupView setContentCompressionResistancePriority:0 forAxis:v12];
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    imageSubtitleView = v3->_imageSubtitleView;
    v3->_imageSubtitleView = v13;

    [(UILabel *)v3->_imageSubtitleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_imageSubtitleView setNumberOfLines:-1];
    [(UILabel *)v3->_imageSubtitleView setTextAlignment:1];
    [(UILabel *)v3->_imageSubtitleView setAccessibilityIdentifier:@"UIA.TV.Text.imageSubtitle"];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    titleView = v3->_titleView;
    v3->_titleView = v15;

    [(UILabel *)v3->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleView setNumberOfLines:-1];
    [(UILabel *)v3->_titleView setTextAlignment:1];
    [(UILabel *)v3->_imageSubtitleView setAccessibilityIdentifier:@"UIA.TV.Text.title"];
    v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    messageView = v3->_messageView;
    v3->_messageView = v17;

    [(UILabel *)v3->_messageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_messageView setNumberOfLines:-1];
    [(UILabel *)v3->_messageView setTextAlignment:1];
    [(UILabel *)v3->_messageView setAccessibilityIdentifier:@"UIA.TV.Text.message"];
    v19 = [MEMORY[0x1E69DC938] currentDevice];
    v20 = [v19 userInterfaceIdiom];

    if (v20 == 2)
    {
      v21 = [MEMORY[0x1E69DC738] buttonWithType:1];
      actionButton = v3->_actionButton;
      v3->_actionButton = v21;

      [(UIButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)v3->_actionButton setAccessibilityIdentifier:@"UIA.TV.Button.install.state=inactive"];
      v23 = v3->_imageSubtitleView;
      v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
      [(UILabel *)v23 setFont:v24];

      v25 = v3->_imageSubtitleView;
      v26 = [MEMORY[0x1E69DC888] whiteColor];
      v27 = [v26 colorWithAlphaComponent:0.7];
      [(UILabel *)v25 setTextColor:v27];

      v28 = v3->_titleView;
      v29 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
      [(UILabel *)v28 setFont:v29];

      v30 = v3->_titleView;
      v31 = [MEMORY[0x1E69DC888] whiteColor];
      [(UILabel *)v30 setTextColor:v31];

      v32 = v3->_messageView;
      v33 = *MEMORY[0x1E69DDCF8];
      v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [(UILabel *)v32 setFont:v34];

      v35 = v3->_messageView;
      v36 = [MEMORY[0x1E69DC888] whiteColor];
      [(UILabel *)v35 setTextColor:v36];

      v37 = [MEMORY[0x1E69DC738] buttonWithType:1];
      cancelButton = v3->_cancelButton;
      v3->_cancelButton = v37;

      [(UIButton *)v3->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
      if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
      {
        v39 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
        [v39 setCornerStyle:4];
        [v39 setTitleTextAttributesTransformer:&__block_literal_global_117];
        [(UIButton *)v3->_actionButton setConfiguration:v39];
        [(UIButton *)v3->_cancelButton setConfiguration:v39];
      }

      v40 = v3->_cancelButton;
      v41 = +[VUILocalizationManager sharedInstance];
      v42 = [v41 localizedStringForKey:@"APP_INSTALL_ACTION_TITLE_CANCEL"];
      [(UIButton *)v40 setTitle:v42 forState:0];

      [(UIButton *)v3->_cancelButton setAccessibilityIdentifier:@"UIA.TV.Button.close"];
      v43 = +[VUILocalizationManager sharedInstance];
      v44 = [v43 localizedStringForKey:@"APP_INSTALL_APPSTORE_BUTTON"];
      v45 = [(VUIAppInstallConfirmationView *)v3 _buttonWithTitleForTV:v44 textStyle:v33];
      appStoreButton = v3->_appStoreButton;
      v3->_appStoreButton = v45;

      [(UIButton *)v3->_appStoreButton setAccessibilityIdentifier:@"UIA.TV.Button.openAppStore"];
      v47 = [(VUIAppInstallConfirmationView *)v3 _buttonWithTitleForTV:&stru_1F5DB25C0 textStyle:v33];
      secondaryLinkButton = v3->_secondaryLinkButton;
      v3->_secondaryLinkButton = v47;

      v49 = [(UIButton *)v3->_secondaryLinkButton titleLabel];
      [v49 setLineBreakMode:4];

      [(UIButton *)v3->_secondaryLinkButton setAccessibilityIdentifier:@"UIA.TV.Button.openSecondaryLink"];
      if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
      {
        v50 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
        [v50 setCornerStyle:4];
        [v50 setTitleTextAttributesTransformer:&__block_literal_global_44_0];
        [(UIButton *)v3->_appStoreButton setConfiguration:v50];
        [(UIButton *)v3->_secondaryLinkButton setConfiguration:v50];
      }

      v51 = v3->_actionButton;
      v52 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
      [(UIButton *)v51 _setVisualEffectViewEnabled:0 backgroundColor:v52];

      v53 = v3->_cancelButton;
      v54 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
      [(UIButton *)v53 _setVisualEffectViewEnabled:0 backgroundColor:v54];
    }

    else
    {
      v55 = [[VUIBuyButtonLockup alloc] initWithFrame:v5, v6, v7, v8];
      buyLockup = v3->_buyLockup;
      v3->_buyLockup = v55;

      [(VUIBuyButtonLockup *)v3->_buyLockup setTranslatesAutoresizingMaskIntoConstraints:0];
      [(VUIBuyButtonLockup *)v3->_buyLockup setSpacing:6.0];
      [(VUIBuyButtonLockup *)v3->_buyLockup setAxis:1];
      [(VUIBuyButtonLockup *)v3->_buyLockup setAlignment:3];
      v57 = [(VUIBuyButtonLockup *)v3->_buyLockup button];
      [v57 setAccessibilityIdentifier:@"UIA.TV.Button.install.state=inactive"];

      v58 = [(VUIBuyButtonLockup *)v3->_buyLockup button];
      v59 = v3->_actionButton;
      v3->_actionButton = v58;

      v54 = [(VUIAppInstallLockup *)v3->_lockupView metadataStackView];
      v60 = [v54 arrangedSubviews];
      v61 = [v60 lastObject];

      [v54 addArrangedSubview:v3->_buyLockup];
      [v54 setCustomSpacing:v61 afterView:15.0];
      v62 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
      [(VUIAppInstallConfirmationView *)v3 setBackgroundColor:v62];

      v63 = v3->_imageSubtitleView;
      v64 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
      [(UILabel *)v63 setFont:v64];

      v65 = v3->_imageSubtitleView;
      v66 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
      v67 = [v66 colorWithAlphaComponent:0.8];
      [(UILabel *)v65 setTextColor:v67];

      v68 = v3->_messageView;
      v69 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [(UILabel *)v68 setFont:v69];

      v70 = v3->_messageView;
      v71 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      [(UILabel *)v70 setTextColor:v71];

      if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
      {
        v72 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
        [v72 setCornerStyle:4];
        [v72 setTitleTextAttributesTransformer:&__block_literal_global_47_0];
        [(UIButton *)v3->_actionButton setConfiguration:v72];
      }
    }
  }

  [(VUIAppInstallConfirmationView *)v3 setAccessibilityIdentifier:@"UIA.TV.Dialog.AppInstallConfirmation"];
  return v3;
}

id __47__VUIAppInstallConfirmationView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v3 setTextStyle:13];
  [(VUITextLayout *)v3 setFontWeight:10];
  v4 = [MEMORY[0x1E69DB878] vui_fontFromTextLayout:v3];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

id __47__VUIAppInstallConfirmationView_initWithFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v3 setTextStyle:13];
  [(VUITextLayout *)v3 setFontWeight:10];
  v4 = [MEMORY[0x1E69DB878] vui_fontFromTextLayout:v3];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

id __47__VUIAppInstallConfirmationView_initWithFrame___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v3 setTextStyle:13];
  [(VUITextLayout *)v3 setFontWeight:10];
  v4 = [MEMORY[0x1E69DB878] vui_fontFromTextLayout:v3];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)setAppIcon:(id)a3
{
  v4 = a3;
  [objc_opt_class() iconSize];
  v6 = v5;
  v8 = v7;
  [objc_opt_class() iconSize];
  [VUIAppIconImageService iconCornerRadiusForSize:?];
  v10 = [v4 vui_iconImageOfSize:v6 radius:v8 stroke:{v9, 0.0}];

  [(VUIAppInstallLockup *)self->_lockupView setIcon:v10];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_titleView setText:self->_title];
}

- (void)setMessage:(id)a3
{
  objc_storeStrong(&self->_message, a3);
  v5 = a3;
  [(UILabel *)self->_messageView setText:self->_message];
}

- (void)setIAP:(id)a3
{
  [(VUIAppInstallLockup *)self->_lockupView setIAP:?];
  buyLockup = self->_buyLockup;
  if (buyLockup)
  {

    [(VUIBuyButtonLockup *)buyLockup setHasIAP:a3 != 0];
  }
}

- (void)layoutSubviews
{
  if (!self->_didLayout)
  {
    self->_didLayout = 1;
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 2)
    {

      [(VUIAppInstallConfirmationView *)self _layoutForTvos];
    }

    else
    {

      [(VUIAppInstallConfirmationView *)self _layoutForIos];
    }
  }
}

- (void)_layoutForTvos
{
  v56[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  imageSubtitleView = self->_imageSubtitleView;
  v56[0] = self->_lockupView;
  v56[1] = imageSubtitleView;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v6 = [v3 initWithArrangedSubviews:v5];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAxis:1];
  [v6 setDistribution:3];
  [v6 setAlignment:3];
  v7 = objc_alloc(MEMORY[0x1E69DCF90]);
  messageView = self->_messageView;
  v55[0] = self->_titleView;
  v55[1] = messageView;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v10 = [v7 initWithArrangedSubviews:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAxis:1];
  [v10 setDistribution:3];
  [v10 setAlignment:3];
  [v10 setSpacing:16.0];
  v11 = objc_alloc(MEMORY[0x1E69DCF90]);
  cancelButton = self->_cancelButton;
  v54[0] = self->_actionButton;
  v54[1] = cancelButton;
  secondaryLinkButton = self->_secondaryLinkButton;
  v54[2] = self->_appStoreButton;
  v54[3] = secondaryLinkButton;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
  v15 = [v11 initWithArrangedSubviews:v14];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAxis:1];
  [v15 setDistribution:0];
  [v15 setAlignment:3];
  LODWORD(v16) = 1132068864;
  [v15 setContentCompressionResistancePriority:0 forAxis:v16];
  v17 = [(UIButton *)self->_actionButton widthAnchor];
  v18 = [v17 constraintEqualToConstant:500.0];
  [v18 setActive:1];

  v19 = [(UIButton *)self->_cancelButton widthAnchor];
  v20 = [v19 constraintEqualToConstant:500.0];
  [v20 setActive:1];

  v21 = [(UIButton *)self->_appStoreButton widthAnchor];
  v22 = [v21 constraintEqualToConstant:500.0];
  [v22 setActive:1];

  LODWORD(v23) = 1112014848;
  [(UIButton *)self->_secondaryLinkButton setContentCompressionResistancePriority:0 forAxis:v23];
  [v15 setSpacing:14.0];
  v24 = [(UIButton *)self->_actionButton heightAnchor];
  v25 = [v24 constraintEqualToConstant:66.0];
  [v25 setActive:1];

  v26 = [(UIButton *)self->_cancelButton heightAnchor];
  v27 = [(UIButton *)self->_actionButton heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = objc_alloc(MEMORY[0x1E69DCF90]);
  v53[0] = v6;
  v53[1] = v10;
  v53[2] = v15;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
  v31 = [v29 initWithArrangedSubviews:v30];

  [(VUIAppInstallConfirmationView *)self addSubview:v31];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v31 setAxis:1];
  [v31 setDistribution:3];
  [v31 setAlignment:3];
  [v31 setSpacing:35.0];
  [v31 setCustomSpacing:v10 afterView:50.0];
  LODWORD(v32) = 1148846080;
  [v31 setContentHuggingPriority:0 forAxis:v32];
  v33 = [v31 centerXAnchor];
  v34 = [(VUIAppInstallConfirmationView *)self centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [v31 centerYAnchor];
  v37 = [(VUIAppInstallConfirmationView *)self centerYAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v38 setActive:1];

  v39 = [v31 topAnchor];
  v40 = [(VUIAppInstallConfirmationView *)self safeAreaLayoutGuide];
  v41 = [v40 topAnchor];
  v42 = [v39 constraintGreaterThanOrEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [v31 bottomAnchor];
  v44 = [(VUIAppInstallConfirmationView *)self safeAreaLayoutGuide];
  v45 = [v44 bottomAnchor];
  v46 = [v43 constraintLessThanOrEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [v15 leadingAnchor];
  v48 = [v31 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [v15 trailingAnchor];
  v51 = [v31 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v52 setActive:1];
}

- (void)_layoutForIos
{
  v40[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  imageSubtitleView = self->_imageSubtitleView;
  v40[0] = self->_lockupView;
  v40[1] = imageSubtitleView;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v6 = [v3 initWithArrangedSubviews:v5];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAxis:1];
  [v6 setDistribution:3];
  [v6 setAlignment:3];
  v7 = objc_alloc(MEMORY[0x1E69DCF90]);
  v39[0] = self->_messageView;
  v39[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v9 = [v7 initWithArrangedSubviews:v8];

  [(VUIAppInstallConfirmationView *)self addSubview:v9];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAxis:1];
  [v9 setDistribution:3];
  [v9 setAlignment:3];
  [v9 setSpacing:24.0];
  [v9 setCustomSpacing:self->_messageView afterView:24.0];
  v10 = [(UILabel *)self->_messageView widthAnchor];
  v11 = [v9 widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-80.0];
  [v12 setActive:1];

  LODWORD(v13) = 1144586240;
  [(UILabel *)self->_messageView setContentCompressionResistancePriority:1 forAxis:v13];
  LODWORD(v14) = 1144586240;
  [(UILabel *)self->_messageView setContentCompressionResistancePriority:0 forAxis:v14];
  v15 = [v9 centerXAnchor];
  v16 = [(VUIAppInstallConfirmationView *)self readableContentGuide];
  v17 = [v16 centerXAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [v9 centerYAnchor];
  v20 = [(VUIAppInstallConfirmationView *)self readableContentGuide];
  v21 = [v20 centerYAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [v9 topAnchor];
  v24 = [(VUIAppInstallConfirmationView *)self readableContentGuide];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintGreaterThanOrEqualToAnchor:v25 constant:20.0];
  [v26 setActive:1];

  v27 = [v9 bottomAnchor];
  v28 = [(VUIAppInstallConfirmationView *)self readableContentGuide];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintLessThanOrEqualToAnchor:v29 constant:-20.0];
  [v30 setActive:1];

  v31 = [v9 leftAnchor];
  v32 = [(VUIAppInstallConfirmationView *)self readableContentGuide];
  v33 = [v32 leftAnchor];
  v34 = [v31 constraintEqualToAnchor:v33 constant:20.0];
  [v34 setActive:1];

  v35 = [v9 rightAnchor];
  v36 = [(VUIAppInstallConfirmationView *)self readableContentGuide];
  v37 = [v36 rightAnchor];
  v38 = [v35 constraintEqualToAnchor:v37 constant:-20.0];
  [v38 setActive:1];
}

+ (CGSize)iconSize
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 2;

  v4 = dbl_1E4297510[v3];
  v5 = dbl_1E4297520[v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)_buttonWithTitleForTV:(id)a3 textStyle:(id)a4
{
  v5 = MEMORY[0x1E69DC738];
  v6 = a4;
  v7 = a3;
  v8 = [v5 buttonWithType:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];

  [v8 _setFont:v9];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setTitleColor:v10 forState:0];

  v11 = [MEMORY[0x1E69DC888] blackColor];
  [v8 setTitleColor:v11 forState:8];

  [v8 setBackgroundImage:0 forStates:0];
  [v8 _setVisualEffectViewEnabled:0 backgroundColor:0];
  [v8 setTitle:v7 forState:0];

  return v8;
}

@end