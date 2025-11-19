@interface ICQUpgradeOfferView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (ICQPageDelegate)delegate;
- (ICQUpgradeOfferView)initWithFrame:(CGRect)a3;
- (double)_spacingFromUpperView:(id)a3 toLowerView:(id)a4;
- (id)_anchorForLowerView:(id)a3;
- (id)_anchorForUpperView:(id)a3;
- (id)_buttons;
- (id)_constraintsForView:(id)a3 equalToView:(id)a4;
- (id)_imageForBundleIdentifier:(id)a3;
- (id)_imageForGenericCloud;
- (id)_makeLinkButton;
- (id)_makePurchaseButton;
- (id)fineprintAttributes;
- (id)fineprintParagraphStyle;
- (id)horizontalConstraintsForView:(id)a3 margin:(double)a4;
- (id)messageAttributes;
- (id)messageParagraphStyle;
- (int64_t)_styleOfView:(id)a3;
- (void)_setButton:(id)a3 backgroundColor:(id)a4;
- (void)_setButtonTintColor:(id)a3;
- (void)_setLinkTextColor:(id)a3;
- (void)_updateTrayVisibility;
- (void)bottomButtonTapped:(id)a3;
- (void)flashScrollIndicatorsIfNeeded;
- (void)layoutSubviews;
- (void)purchase2ButtonTapped:(id)a3;
- (void)purchaseButtonTapped:(id)a3;
- (void)setButtonTintColor:(id)a3;
- (void)setUpgradeMode:(int64_t)a3;
- (void)setUpgradeOfferPageSpecification:(id)a3;
- (void)updateConstraints;
@end

@implementation ICQUpgradeOfferView

- (int64_t)_styleOfView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(_ICQTextView *)v4 buttonType]== 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = self->_fineprintView == v4;
  }

  return v5;
}

- (id)_anchorForUpperView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_trayView == v4)
  {
    v6 = [(UIView *)v4 topAnchor];
  }

  else if ([(ICQUpgradeOfferView *)self _styleOfView:v4]== 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(UIView *)v5 lastBaselineAnchor];
  }

  else
  {
    v6 = [(UIView *)v5 bottomAnchor];
  }

  v7 = v6;

  return v7;
}

- (id)_anchorForLowerView:(id)a3
{
  v4 = a3;
  if ([(ICQUpgradeOfferView *)self _styleOfView:v4]== 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 firstBaselineAnchor];
  }

  else
  {
    v5 = [v4 topAnchor];
  }

  v6 = v5;

  return v6;
}

- (double)_spacingFromUpperView:(id)a3 toLowerView:(id)a4
{
  v6 = a4;
  v7 = [(ICQUpgradeOfferView *)self _styleOfView:a3];
  v8 = [(ICQUpgradeOfferView *)self _styleOfView:v6];

  v9 = kViewStyleSpacing[4 * v7 + v8];
  if (v9 < 0.0)
  {
    v10 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    [v10 scaledValueForValue:-v9];
    v9 = v11;
  }

  return v9;
}

- (id)_buttons
{
  v3 = [(ICQUpgradeOfferView *)self upgradeOfferPageSpecification];
  v4 = [v3 purchaseLink];
  v5 = [v4 text];
  v6 = [v5 length];

  v7 = [(ICQUpgradeOfferView *)self upgradeOfferPageSpecification];
  v8 = [v7 purchase2Link];
  v9 = [v8 text];
  v10 = [v9 length];

  v11 = [(ICQUpgradeOfferView *)self upgradeOfferPageSpecification];
  v12 = [v11 bottomLink];
  v13 = [v12 text];
  v14 = [v13 length];

  v15 = [MEMORY[0x277CBEB18] array];
  v16 = v15;
  if (v6)
  {
    [v15 addObject:self->_purchaseButton];
  }

  if (v10)
  {
    [v16 addObject:self->_purchase2Button];
  }

  if (v14)
  {
    [v16 addObject:self->_bottomButton];
  }

  v17 = [v16 copy];

  return v17;
}

- (id)_makePurchaseButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(ICQUpgradeOfferView *)self purchaseButtonFont];
  v5 = [v3 titleLabel];
  [v5 setFont:v4];

  v6 = [v3 titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [v3 titleLabel];
  [v7 setLineBreakMode:0];

  v8 = [v3 titleLabel];
  [v8 setTextAlignment:1];

  v9 = [v3 titleColorForState:0];
  v10 = [v9 colorWithAlphaComponent:0.25];
  [v3 setTitleColor:v10 forState:1];
  [v3 setClipsToBounds:1];
  [v3 _setCornerRadius:14.0];

  return v3;
}

- (id)_makeLinkButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(ICQUpgradeOfferView *)self linkButtonFont];
  v5 = [v3 titleLabel];
  [v5 setFont:v4];

  v6 = [v3 titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [v3 titleLabel];
  [v7 setLineBreakMode:0];

  v8 = [v3 titleLabel];
  [v8 setTextAlignment:1];

  return v3;
}

- (ICQUpgradeOfferView)initWithFrame:(CGRect)a3
{
  v54.receiver = self;
  v54.super_class = ICQUpgradeOfferView;
  v3 = [(ICQUpgradeOfferView *)&v54 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(ICQUpgradeOfferView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MEMORY[0x277D756D0]);
    scrollVisibleLayoutGuide = v3->_scrollVisibleLayoutGuide;
    v3->_scrollVisibleLayoutGuide = v5;

    v7 = objc_alloc_init(MEMORY[0x277D756D0]);
    aboveSpinnerLayoutGuide = v3->_aboveSpinnerLayoutGuide;
    v3->_aboveSpinnerLayoutGuide = v7;

    v9 = objc_alloc_init(MEMORY[0x277D756D0]);
    belowSpinnerLayoutGuide = v3->_belowSpinnerLayoutGuide;
    v3->_belowSpinnerLayoutGuide = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeConstraints = v3->_activeConstraints;
    v3->_activeConstraints = v11;

    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    iconView = v3->_iconView;
    v3->_iconView = v13;

    [(UIImageView *)v3->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_iconView setHidden:1];
    v15 = objc_alloc(MEMORY[0x277D756B8]);
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v20;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [(ICQUpgradeOfferView *)v3 titleFont];
    [(UILabel *)v3->_titleLabel setFont:v22];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v23 = [[_ICQTextView alloc] initWithFrame:v16, v17, v18, v19];
    messageView = v3->_messageView;
    v3->_messageView = v23;

    [(_ICQTextView *)v3->_messageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(ICQUpgradeOfferView *)v3 messageFont];
    [(_ICQTextView *)v3->_messageView setFont:v25];

    v26 = [MEMORY[0x277D75348] clearColor];
    [(_ICQTextView *)v3->_messageView setBackgroundColor:v26];

    [(_ICQTextView *)v3->_messageView setDelegate:v3];
    v27 = [(ICQUpgradeOfferView *)v3 _makePurchaseButton];
    purchaseButton = v3->_purchaseButton;
    v3->_purchaseButton = v27;

    [(UIButton *)v3->_purchaseButton _icq_applyGlassTinted:1];
    [(UIButton *)v3->_purchaseButton addTarget:v3 action:sel_purchaseButtonTapped_ forControlEvents:0x2000];
    v29 = [(ICQUpgradeOfferView *)v3 _makeLinkButton];
    purchase2Button = v3->_purchase2Button;
    v3->_purchase2Button = v29;

    [(UIButton *)v3->_purchase2Button addTarget:v3 action:sel_purchase2ButtonTapped_ forControlEvents:0x2000];
    v31 = [(ICQUpgradeOfferView *)v3 _makeLinkButton];
    bottomButton = v3->_bottomButton;
    v3->_bottomButton = v31;

    [(UIButton *)v3->_bottomButton _icq_applyGlassTinted:0];
    [(UIButton *)v3->_bottomButton addTarget:v3 action:sel_bottomButtonTapped_ forControlEvents:0x2000];
    v33 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    spinner = v3->_spinner;
    v3->_spinner = v33;

    [(UIActivityIndicatorView *)v3->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v3->_spinner setHidden:1];
    v35 = [[_ICQTextView alloc] initWithFrame:v16, v17, v18, v19];
    fineprintView = v3->_fineprintView;
    v3->_fineprintView = v35;

    [(_ICQTextView *)v3->_fineprintView setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [(ICQUpgradeOfferView *)v3 fineprintFont];
    [(_ICQTextView *)v3->_fineprintView setFont:v37];

    v38 = [(ICQUpgradeOfferView *)v3 fineprintColor];
    [(_ICQTextView *)v3->_fineprintView setTextColor:v38];

    v39 = [MEMORY[0x277D75348] clearColor];
    [(_ICQTextView *)v3->_fineprintView setBackgroundColor:v39];

    [(_ICQTextView *)v3->_fineprintView setDelegate:v3];
    [(ICQUpgradeOfferView *)v3 _setButtonTintColor:0];
    v40 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v3->_scrollView;
    v3->_scrollView = v40;

    [(UIScrollView *)v3->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v3->_scrollView setAlwaysBounceVertical:1];
    [(UIScrollView *)v3->_scrollView setDelegate:v3];
    v42 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerView = v3->_headerView;
    v3->_headerView = v42;

    [(UIView *)v3->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = objc_alloc_init(MEMORY[0x277D75D18]);
    footerView = v3->_footerView;
    v3->_footerView = v44;

    [(UIView *)v3->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v3->_contentView;
    v3->_contentView = v46;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = objc_alloc_init(MEMORY[0x277D75D18]);
    trayView = v3->_trayView;
    v3->_trayView = v48;

    [(UIView *)v3->_trayView setTranslatesAutoresizingMaskIntoConstraints:0];
    v50 = [MEMORY[0x277D75210] effectWithStyle:1100];
    v51 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v50];
    blurBackdrop = v3->_blurBackdrop;
    v3->_blurBackdrop = v51;

    [(UIVisualEffectView *)v3->_blurBackdrop setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_contentView addSubview:v3->_headerView];
    [(UIView *)v3->_contentView addSubview:v3->_iconView];
    [(UIView *)v3->_contentView addSubview:v3->_titleLabel];
    [(UIView *)v3->_contentView addSubview:v3->_messageView];
    [(UIView *)v3->_contentView addSubview:v3->_footerView];
    [(UIScrollView *)v3->_scrollView addSubview:v3->_contentView];
    [(ICQUpgradeOfferView *)v3 addSubview:v3->_scrollView];
    [(ICQUpgradeOfferView *)v3 addSubview:v3->_blurBackdrop];
    [(UIView *)v3->_trayView addSubview:v3->_purchaseButton];
    [(UIView *)v3->_trayView addSubview:v3->_purchase2Button];
    [(UIView *)v3->_trayView addSubview:v3->_bottomButton];
    [(UIView *)v3->_trayView addSubview:v3->_fineprintView];
    [(UIView *)v3->_trayView addLayoutGuide:v3->_aboveSpinnerLayoutGuide];
    [(UIView *)v3->_trayView addLayoutGuide:v3->_belowSpinnerLayoutGuide];
    [(UIView *)v3->_trayView addSubview:v3->_spinner];
    [(ICQUpgradeOfferView *)v3 addSubview:v3->_trayView];
    [(ICQUpgradeOfferView *)v3 addLayoutGuide:v3->_scrollVisibleLayoutGuide];
  }

  return v3;
}

- (void)_setButton:(id)a3 backgroundColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v5 colorWithAlphaComponent:0.5];
  v7 = _PointImageOfColor(v5);

  [v6 setBackgroundImage:v7 forState:0];
  v8 = _PointImageOfColor(v9);
  [v6 setBackgroundImage:v8 forState:1];
}

- (void)_setLinkTextColor:(id)a3
{
  messageView = self->_messageView;
  v5 = a3;
  v6 = [(_ICQTextView *)messageView linkTextAttributes];
  v7 = [v6 mutableCopy];

  v8 = *MEMORY[0x277D740C0];
  [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277D740C0]];
  v9 = [v7 copy];
  [(_ICQTextView *)self->_messageView setLinkTextAttributes:v9];

  v10 = [(_ICQTextView *)self->_fineprintView linkTextAttributes];
  v12 = [v10 mutableCopy];

  [v12 setObject:v5 forKeyedSubscript:v8];
  v11 = [v12 copy];
  [(_ICQTextView *)self->_fineprintView setLinkTextAttributes:v11];
}

- (void)_setButtonTintColor:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_buttonTintColor, a3);
  if (!v5)
  {
    v5 = [(ICQUpgradeOfferView *)self defaultButtonColor];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(ICQUpgradeOfferView *)self _buttons];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setTintColor:v5];
        if ([(ICQUpgradeOfferView *)self _styleOfView:v11]== 2)
        {
          [(ICQUpgradeOfferView *)self _setButton:v11 backgroundColor:v5];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(ICQUpgradeOfferView *)self _setLinkTextColor:v5];
}

- (void)setButtonTintColor:(id)a3
{
  v4 = a3;
  buttonTintColor = self->_buttonTintColor;
  if (v4 | buttonTintColor)
  {
    v7 = v4;
    v6 = [(UIColor *)buttonTintColor isEqual:v4];
    v4 = v7;
    if ((v6 & 1) == 0)
    {
      [(ICQUpgradeOfferView *)self _setButtonTintColor:v7];
      v4 = v7;
    }
  }
}

- (void)purchaseButtonTapped:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQUpgradeOfferView main button tapped", &v20, 2u);
  }

  v5 = [(ICQUpgradeOfferView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ICQUpgradeOfferView *)self delegate];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [(ICQUpgradeOfferView *)self purchaseLink];
      [v11 action];
      v12 = _ICQStringForAction();
      v13 = [(ICQUpgradeOfferView *)self purchaseLink];
      v14 = [v13 parameters];
      v20 = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v20, 0x20u);
    }

    v15 = [(ICQUpgradeOfferView *)self delegate];
    v16 = [(ICQUpgradeOfferView *)self purchaseLink];
    v17 = [v16 action];
    v18 = [(ICQUpgradeOfferView *)self purchaseLink];
    v19 = [v18 parameters];
    [v15 sender:self action:v17 parameters:v19];
  }
}

- (void)purchase2ButtonTapped:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQUpgradeOfferView second button tapped", &v20, 2u);
  }

  v5 = [(ICQUpgradeOfferView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ICQUpgradeOfferView *)self delegate];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [(ICQUpgradeOfferView *)self purchase2Link];
      [v11 action];
      v12 = _ICQStringForAction();
      v13 = [(ICQUpgradeOfferView *)self purchase2Link];
      v14 = [v13 parameters];
      v20 = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v20, 0x20u);
    }

    v15 = [(ICQUpgradeOfferView *)self delegate];
    v16 = [(ICQUpgradeOfferView *)self purchase2Link];
    v17 = [v16 action];
    v18 = [(ICQUpgradeOfferView *)self purchase2Link];
    v19 = [v18 parameters];
    [v15 sender:self action:v17 parameters:v19];
  }
}

- (void)bottomButtonTapped:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQUpgradeOfferView bottom button tapped", &v20, 2u);
  }

  v5 = [(ICQUpgradeOfferView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ICQUpgradeOfferView *)self delegate];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [(ICQUpgradeOfferView *)self bottomLink];
      [v11 action];
      v12 = _ICQStringForAction();
      v13 = [(ICQUpgradeOfferView *)self bottomLink];
      v14 = [v13 parameters];
      v20 = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v20, 0x20u);
    }

    v15 = [(ICQUpgradeOfferView *)self delegate];
    v16 = [(ICQUpgradeOfferView *)self bottomLink];
    v17 = [v16 action];
    v18 = [(ICQUpgradeOfferView *)self bottomLink];
    v19 = [v18 parameters];
    [v15 sender:self action:v17 parameters:v19];
  }
}

- (id)messageParagraphStyle
{
  v2 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  v3 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:1];
  [v2 scaledValueForValue:8.0];
  [v4 setParagraphSpacing:?];
  v5 = [v4 copy];

  return v5;
}

- (id)messageAttributes
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277D740A8];
  v3 = [(ICQUpgradeOfferView *)self messageFont];
  v9[0] = v3;
  v8[1] = *MEMORY[0x277D740C0];
  v4 = [(ICQUpgradeOfferView *)self messageTextColor];
  v9[1] = v4;
  v8[2] = *MEMORY[0x277D74118];
  v5 = [(ICQUpgradeOfferView *)self messageParagraphStyle];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)fineprintParagraphStyle
{
  v2 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v3 = [v2 mutableCopy];

  [v3 setAlignment:1];
  [v3 setLineSpacing:0.0];
  v4 = [v3 copy];

  return v4;
}

- (id)fineprintAttributes
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277D740A8];
  v3 = [(ICQUpgradeOfferView *)self fineprintFont];
  v9[0] = v3;
  v8[1] = *MEMORY[0x277D740C0];
  v4 = [(ICQUpgradeOfferView *)self fineprintColor];
  v9[1] = v4;
  v8[2] = *MEMORY[0x277D74118];
  v5 = [(ICQUpgradeOfferView *)self fineprintParagraphStyle];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)_imageForGenericCloud
{
  v2 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"iCloudImage"];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v4 = [v2 _applicationIconImageForFormat:2 precomposed:0 scale:?];

  return v4;
}

- (id)_imageForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (![v4 length] || (objc_msgSend(v4, "isEqualToString:", @"com.apple.iCloudDriveApp") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.DocumentsApp") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.__mobilebackup__") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"com.apple.Preferences"))
  {
    v5 = [(ICQUpgradeOfferView *)self _imageForGenericCloud];
  }

  else
  {
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v5 = [v7 _applicationIconImageForBundleIdentifier:v4 format:2 scale:?];
  }

  return v5;
}

- (void)setUpgradeOfferPageSpecification:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_upgradeOfferPageSpecification != v5)
  {
    objc_storeStrong(&self->_upgradeOfferPageSpecification, a3);
    v6 = [(_ICQUpgradeOfferPageSpecification *)v5 iconBundleIdentifier];
    v7 = [(ICQUpgradeOfferView *)self _imageForBundleIdentifier:v6];
    [(UIImageView *)self->_iconView setImage:v7];

    v8 = [(UIImageView *)self->_iconView image];

    if (v8)
    {
      iconView = self->_iconView;
      v10 = 0;
    }

    else
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(_ICQUpgradeOfferPageSpecification *)v5 iconBundleIdentifier];
        v40 = 138412290;
        v41 = v12;
        _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "no image available for bundle id %@", &v40, 0xCu);
      }

      iconView = self->_iconView;
      v10 = 1;
    }

    [(UIImageView *)iconView setHidden:v10];
    v13 = [(_ICQUpgradeOfferPageSpecification *)v5 title];
    [(UILabel *)self->_titleLabel setText:v13];

    v14 = [(ICQUpgradeOfferView *)self messageAttributes];
    [(_ICQTextView *)self->_messageView setAttributes:v14];

    v15 = MEMORY[0x277D7F390];
    v16 = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification message];
    v17 = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification altMessage];
    v18 = [v15 stringWithPlaceholderFormat:v16 alternateString:v17];
    [(_ICQTextView *)self->_messageView setFormat:v18];

    v19 = [(_ICQTextView *)self->_messageView format];
    v20 = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification altMessage];
    LODWORD(v17) = [v19 isEqualToString:v20];

    upgradeOfferPageSpecification = self->_upgradeOfferPageSpecification;
    if (v17)
    {
      [(_ICQUpgradeOfferPageSpecification *)upgradeOfferPageSpecification altMessageLinks];
    }

    else
    {
      [(_ICQUpgradeOfferPageSpecification *)upgradeOfferPageSpecification messageLinks];
    }
    v22 = ;
    [(_ICQTextView *)self->_messageView setLinks:v22];

    [(_ICQTextView *)self->_messageView setAttributedText];
    [(_ICQTextView *)self->_messageView layoutIfNeeded];
    v23 = [(_ICQUpgradeOfferPageSpecification *)v5 purchaseLink];
    purchaseLink = self->_purchaseLink;
    self->_purchaseLink = v23;

    v25 = [(_ICQUpgradeOfferPageSpecification *)v5 purchase2Link];
    purchase2Link = self->_purchase2Link;
    self->_purchase2Link = v25;

    v27 = [(_ICQUpgradeOfferPageSpecification *)v5 bottomLink];
    bottomLink = self->_bottomLink;
    self->_bottomLink = v27;

    purchaseButton = self->_purchaseButton;
    v30 = [(ICQLink *)self->_purchaseLink text];
    [(UIButton *)purchaseButton setTitle:v30 forState:0];

    purchase2Button = self->_purchase2Button;
    v32 = [(ICQLink *)self->_purchase2Link text];
    [(UIButton *)purchase2Button setTitle:v32 forState:0];

    v33 = [(ICQLink *)self->_bottomLink text];

    bottomButton = self->_bottomButton;
    if (v33)
    {
      v35 = [(ICQLink *)self->_bottomLink text];
      [(UIButton *)bottomButton setTitle:v35 forState:0];
    }

    else
    {
      [(UIButton *)self->_bottomButton setHidden:1];
    }

    v36 = [(ICQUpgradeOfferView *)self fineprintAttributes];
    [(_ICQTextView *)self->_fineprintView setAttributes:v36];

    v37 = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification fineprintFormat];
    [(_ICQTextView *)self->_fineprintView setFormat:v37];

    v38 = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification fineprintLinks];
    [(_ICQTextView *)self->_fineprintView setLinks:v38];

    [(_ICQTextView *)self->_fineprintView setAttributedText];
    [(_ICQTextView *)self->_fineprintView layoutIfNeeded];
    v39 = [(ICQUpgradeOfferView *)self buttonTintColor];
    [(ICQUpgradeOfferView *)self _setButtonTintColor:v39];

    [(ICQUpgradeOfferView *)self setNeedsUpdateConstraints];
  }
}

- (void)setUpgradeMode:(int64_t)a3
{
  if (self->_upgradeMode != a3)
  {
    self->_upgradeMode = a3;
    if (a3 == 1)
    {
      [(UIButton *)self->_purchaseButton setHidden:?];
      [(UIButton *)self->_purchase2Button setHidden:1];
      [(UIButton *)self->_bottomButton setHidden:1];
      [(UIActivityIndicatorView *)self->_spinner setHidden:0];
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    else if (!a3)
    {
      [(UIButton *)self->_purchaseButton setHidden:?];
      [(UIButton *)self->_purchase2Button setHidden:0];
      [(UIButton *)self->_bottomButton setHidden:0];
      [(UIActivityIndicatorView *)self->_spinner setHidden:1];
      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    }

    [(ICQUpgradeOfferView *)self setNeedsUpdateConstraints];
  }
}

- (id)horizontalConstraintsForView:(id)a3 margin:(double)a4
{
  v25[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 isHidden])
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v23 = [v6 centerXAnchor];
    v24 = [v6 superview];
    v22 = [v24 centerXAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v19 = [v6 widthAnchor];
    v20 = [(ICQUpgradeOfferView *)self readableContentGuide];
    v18 = [v20 widthAnchor];
    v17 = [v19 constraintLessThanOrEqualToAnchor:v18];
    v25[1] = v17;
    v8 = [v6 leftAnchor];
    v9 = [v6 superview];
    v10 = [v9 leftAnchor];
    v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:a4];
    v25[2] = v11;
    v12 = [v6 rightAnchor];
    v13 = [v6 superview];
    v14 = [v13 rightAnchor];
    v15 = [v12 constraintLessThanOrEqualToAnchor:v14 constant:-a4];
    v25[3] = v15;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  }

  return v7;
}

- (id)_constraintsForView:(id)a3 equalToView:(id)a4
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v20 = [v6 centerXAnchor];
  v19 = [v5 centerXAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v7 = [v6 widthAnchor];
  v8 = [v5 widthAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v21[1] = v9;
  v10 = [v6 centerYAnchor];
  v11 = [v5 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [v6 heightAnchor];

  v14 = [v5 heightAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

- (void)updateConstraints
{
  v149 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_activeConstraints];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(UIImageView *)self->_iconView isHidden];
  v5 = [(ICQUpgradeOfferView *)self _constraintsForView:self->_scrollView equalToView:self];
  [v3 addObjectsFromArray:v5];

  v6 = [(ICQUpgradeOfferView *)self _constraintsForView:self->_blurBackdrop equalToView:self->_trayView];
  [v3 addObjectsFromArray:v6];

  v7 = [(UIView *)self->_trayView centerXAnchor];
  v8 = [(ICQUpgradeOfferView *)self centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v3 addObject:v9];

  v10 = [(UIView *)self->_trayView widthAnchor];
  v11 = [(ICQUpgradeOfferView *)self widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v3 addObject:v12];

  v13 = [(UIView *)self->_trayView bottomAnchor];
  v14 = [(ICQUpgradeOfferView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(UIView *)self->_contentView centerXAnchor];
  v17 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v3 addObject:v18];

  v19 = [(UIView *)self->_contentView widthAnchor];
  v20 = [(UIScrollView *)self->_scrollView widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v3 addObject:v21];

  v136 = v4;
  if ((v4 & 1) == 0)
  {
    v22 = [(UIImageView *)self->_iconView centerXAnchor];
    v23 = [(UIView *)self->_contentView centerXAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v3 addObject:v24];
  }

  v25 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:self->_titleLabel margin:24.0, &self->_iconView];
  [v3 addObjectsFromArray:v25];

  v26 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:self->_messageView margin:24.0];
  [v3 addObjectsFromArray:v26];

  v27 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:self->_fineprintView margin:24.0];
  [v3 addObjectsFromArray:v27];

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v28 = [(ICQUpgradeOfferView *)self _buttons];
  v29 = [v28 countByEnumeratingWithState:&v143 objects:v148 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v144;
    v32 = *MEMORY[0x277D76C80];
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v144 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v143 + 1) + 8 * i);
        [(ICQUpgradeOfferView *)self _marginForButton:v34];
        v35 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:v34 margin:?];
        [v3 addObjectsFromArray:v35];

        v36 = [v34 widthAnchor];
        v37 = [v36 constraintEqualToConstant:v32];
        [v3 addObject:v37];
      }

      v30 = [v28 countByEnumeratingWithState:&v143 objects:v148 count:16];
    }

    while (v30);
  }

  v38 = [(UILayoutGuide *)self->_scrollVisibleLayoutGuide topAnchor];
  v39 = [(ICQUpgradeOfferView *)self safeAreaLayoutGuide];
  v40 = [v39 topAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v3 addObject:v41];

  v42 = [(UILayoutGuide *)self->_scrollVisibleLayoutGuide bottomAnchor];
  v43 = [(UIView *)self->_trayView topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v3 addObject:v44];

  v45 = [(UIView *)self->_contentView heightAnchor];
  v46 = [(UILayoutGuide *)self->_scrollVisibleLayoutGuide heightAnchor];
  v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46];
  [v3 addObject:v47];

  p_headerView = &self->_headerView;
  v49 = [(UIView *)self->_headerView topAnchor];
  v50 = [(UIView *)self->_contentView topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v3 addObject:v51];

  v52 = [(UIView *)self->_footerView bottomAnchor];
  v53 = [(UIView *)self->_contentView bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v3 addObject:v54];

  v55 = [(UIView *)self->_headerView heightAnchor];
  v56 = [(UIView *)self->_footerView heightAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  [v3 addObject:v57];

  if (v136)
  {
    v58 = 36.0;
  }

  else
  {
    v59 = [*v134 topAnchor];
    v60 = [(UIView *)*p_headerView bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:12.0];
    [v3 addObject:v61];

    v58 = 20.0;
    p_headerView = v134;
  }

  v62 = [(UILabel *)self->_titleLabel topAnchor];
  v63 = [(UIView *)*p_headerView bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:v58];
  [v3 addObject:v64];

  v65 = [(_ICQTextView *)self->_messageView topAnchor];
  v66 = [(UILabel *)self->_titleLabel bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:15.0];
  [v3 addObject:v67];

  v68 = [(UIView *)self->_footerView topAnchor];
  v69 = [(_ICQTextView *)self->_messageView bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:15.0];
  [v3 addObject:v70];

  v71 = [(_ICQTextView *)self->_fineprintView text];
  v72 = [v71 length];

  p_super = self->_trayView;
  if (v72)
  {
    v74 = [(_ICQTextView *)self->_fineprintView topAnchor];
    v75 = [(UIView *)self->_trayView topAnchor];
    v76 = [v74 constraintEqualToAnchor:v75 constant:11.0];
    [v3 addObject:v76];

    v77 = self->_fineprintView;
    p_super = &v77->super.super.super;
  }

  v78 = [(ICQUpgradeOfferView *)self _buttons];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v79 = [v78 countByEnumeratingWithState:&v139 objects:v147 count:16];
  v135 = v78;
  if (v79)
  {
    v80 = v79;
    v137 = *v140;
    do
    {
      v81 = 0;
      v82 = p_super;
      do
      {
        if (*v140 != v137)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v139 + 1) + 8 * v81);
        v84 = [(ICQUpgradeOfferView *)self _anchorForLowerView:v83];
        v85 = [(ICQUpgradeOfferView *)self _anchorForUpperView:v82];
        [(ICQUpgradeOfferView *)self _spacingFromUpperView:v82 toLowerView:v83];
        v86 = [v84 constraintEqualToAnchor:v85 constant:?];
        [v3 addObject:v86];

        if ([(ICQUpgradeOfferView *)self _styleOfView:v83]== 2)
        {
          v87 = [v83 heightAnchor];
          v88 = [v87 constraintGreaterThanOrEqualToConstant:50.0];
          [v3 addObject:v88];

          v89 = [v83 titleLabel];
          v90 = [v89 topAnchor];
          v91 = [v83 topAnchor];
          v92 = [v90 constraintGreaterThanOrEqualToAnchor:v91 constant:14.0];
          [v3 addObject:v92];

          v93 = [v83 bottomAnchor];
          v94 = [v83 titleLabel];
          v95 = [v94 bottomAnchor];
          v96 = [v93 constraintGreaterThanOrEqualToAnchor:v95 constant:14.0];
          [v3 addObject:v96];

          v97 = [v83 titleLabel];
          v98 = [v97 leftAnchor];
          v99 = [v83 leftAnchor];
          v100 = [v98 constraintGreaterThanOrEqualToAnchor:v99 constant:16.0];
          [v3 addObject:v100];

          v101 = [v83 rightAnchor];
          v102 = [v83 titleLabel];
          v103 = [v102 rightAnchor];
          v104 = [v101 constraintGreaterThanOrEqualToAnchor:v103 constant:16.0];
          [v3 addObject:v104];

          v78 = v135;
        }

        p_super = v83;

        ++v81;
        v82 = p_super;
      }

      while (v80 != v81);
      v80 = [v78 countByEnumeratingWithState:&v139 objects:v147 count:16];
    }

    while (v80);
  }

  if (p_super != self->_trayView)
  {
    [(ICQUpgradeOfferView *)self _spacingFromUpperView:p_super toLowerView:?];
    v106 = v105;
    [(ICQUpgradeOfferView *)self safeAreaInsets];
    v108 = v106 + v107;
    v109 = [(UIView *)self->_trayView bottomAnchor];
    v110 = [(ICQUpgradeOfferView *)self _anchorForUpperView:p_super];
    v111 = [v109 constraintEqualToAnchor:v110 constant:v108];
    [v3 addObject:v111];
  }

  if ((-[UIActivityIndicatorView isHidden](self->_spinner, "isHidden") & 1) == 0 && [v78 count])
  {
    v112 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
    v113 = [(UIView *)self->_trayView centerXAnchor];
    v114 = [v112 constraintEqualToAnchor:v113];
    [v3 addObject:v114];

    v115 = [(UILayoutGuide *)self->_aboveSpinnerLayoutGuide topAnchor];
    v116 = [v78 firstObject];
    v117 = [v116 topAnchor];
    v118 = [v115 constraintEqualToAnchor:v117];
    [v3 addObject:v118];

    v119 = [(UILayoutGuide *)self->_aboveSpinnerLayoutGuide bottomAnchor];
    v120 = [(UIActivityIndicatorView *)self->_spinner topAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];
    [v3 addObject:v121];

    v122 = [(UILayoutGuide *)self->_belowSpinnerLayoutGuide topAnchor];
    v123 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
    v124 = [v122 constraintEqualToAnchor:v123];
    [v3 addObject:v124];

    v125 = [(UILayoutGuide *)self->_belowSpinnerLayoutGuide bottomAnchor];
    v126 = [v135 lastObject];
    v127 = [(ICQUpgradeOfferView *)self _anchorForUpperView:v126];
    v128 = [v125 constraintEqualToAnchor:v127];
    [v3 addObject:v128];

    v129 = [(UILayoutGuide *)self->_aboveSpinnerLayoutGuide heightAnchor];
    v78 = v135;
    v130 = [(UILayoutGuide *)self->_belowSpinnerLayoutGuide heightAnchor];
    v131 = [v129 constraintEqualToAnchor:v130];
    [v3 addObject:v131];
  }

  v132 = [v3 copy];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v132;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_activeConstraints];
  v138.receiver = self;
  v138.super_class = ICQUpgradeOfferView;
  [(ICQUpgradeOfferView *)&v138 updateConstraints];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = ICQUpgradeOfferView;
  [(ICQUpgradeOfferView *)&v19 layoutSubviews];
  [(UIView *)self->_contentView frame];
  [(UIScrollView *)self->_scrollView setContentSize:v3, v4];
  [(UIScrollView *)self->_scrollView scrollIndicatorInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_trayView frame];
  [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:v6, v8, v11, v10];
  [(UIScrollView *)self->_scrollView contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self->_trayView frame];
  [(UIScrollView *)self->_scrollView setContentInset:v13, v15, v18, v17];
  [(ICQUpgradeOfferView *)self _updateTrayVisibility];
  [(ICQUpgradeOfferView *)self flashScrollIndicatorsIfNeeded];
}

- (void)flashScrollIndicatorsIfNeeded
{
  [(UIScrollView *)self->_scrollView contentInset];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView contentSize];
  v8 = v7;
  [(UIScrollView *)self->_scrollView frame];
  if (v8 > v9 - v6 - v4)
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView flashScrollIndicators];
  }
}

- (void)_updateTrayVisibility
{
  scrollView = self->_scrollView;
  [(UIView *)self->_trayView bounds];
  [(UIScrollView *)scrollView convertRect:self->_trayView fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_ICQTextView *)self->_messageView frame];
  MaxY = CGRectGetMaxY(v16);
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v13 = MaxY <= CGRectGetMinY(v17);
  blurBackdrop = self->_blurBackdrop;

  [(UIVisualEffectView *)blurBackdrop setHidden:v13];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 links];
    v9 = [v7 icqIndex];
    if (v9 > 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_23;
    }

    v10 = v9;
    if (v9 >= [v8 count])
    {
      goto LABEL_23;
    }

    v11 = [v8 objectAtIndexedSubscript:v10];
    if ([v11 action] != 6)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 text];
        [v11 action];
        v16 = _ICQStringForAction();
        v24 = 138412546;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "tapped %@, but link action %@ unsupported in ICQTextView", &v24, 0x16u);
      }

      goto LABEL_22;
    }

    v12 = [v11 parameters];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D7F280]];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
        if (!v14)
        {
LABEL_19:
          v14 = _ICQGetLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v11 text];
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v24 = 138412546;
            v25 = v20;
            v26 = 2112;
            v27 = v22;
            _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "tapped %@, but URL of wrong class %@", &v24, 0x16u);
          }

          goto LABEL_21;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_19;
        }

        v14 = v13;
      }

      v18 = _ICQGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v11 text];
        v24 = 138412546;
        v25 = v19;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_275623000, v18, OS_LOG_TYPE_DEFAULT, "tapped %@, opening URL %@", &v24, 0x16u);
      }

      v17 = [MEMORY[0x277D75128] sharedApplication];
      [v17 openURL:v14 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_5];
    }

    else
    {
      v14 = _ICQGetLogSystem();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }

      v17 = [v11 text];
      v24 = 138412290;
      v25 = v17;
      _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "tapped %@, but URL missing", &v24, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_24:

  return 0;
}

void __62__ICQUpgradeOfferView_textView_shouldInteractWithURL_inRange___block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "openURL success:%d", v4, 8u);
  }
}

- (ICQPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end