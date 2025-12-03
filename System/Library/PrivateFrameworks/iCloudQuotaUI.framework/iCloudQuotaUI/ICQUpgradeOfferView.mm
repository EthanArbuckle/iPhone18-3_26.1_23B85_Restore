@interface ICQUpgradeOfferView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (ICQPageDelegate)delegate;
- (ICQUpgradeOfferView)initWithFrame:(CGRect)frame;
- (double)_spacingFromUpperView:(id)view toLowerView:(id)lowerView;
- (id)_anchorForLowerView:(id)view;
- (id)_anchorForUpperView:(id)view;
- (id)_buttons;
- (id)_constraintsForView:(id)view equalToView:(id)toView;
- (id)_imageForBundleIdentifier:(id)identifier;
- (id)_imageForGenericCloud;
- (id)_makeLinkButton;
- (id)_makePurchaseButton;
- (id)fineprintAttributes;
- (id)fineprintParagraphStyle;
- (id)horizontalConstraintsForView:(id)view margin:(double)margin;
- (id)messageAttributes;
- (id)messageParagraphStyle;
- (int64_t)_styleOfView:(id)view;
- (void)_setButton:(id)button backgroundColor:(id)color;
- (void)_setButtonTintColor:(id)color;
- (void)_setLinkTextColor:(id)color;
- (void)_updateTrayVisibility;
- (void)bottomButtonTapped:(id)tapped;
- (void)flashScrollIndicatorsIfNeeded;
- (void)layoutSubviews;
- (void)purchase2ButtonTapped:(id)tapped;
- (void)purchaseButtonTapped:(id)tapped;
- (void)setButtonTintColor:(id)color;
- (void)setUpgradeMode:(int64_t)mode;
- (void)setUpgradeOfferPageSpecification:(id)specification;
- (void)updateConstraints;
@end

@implementation ICQUpgradeOfferView

- (int64_t)_styleOfView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(_ICQTextView *)viewCopy buttonType]== 1)
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
    v5 = self->_fineprintView == viewCopy;
  }

  return v5;
}

- (id)_anchorForUpperView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (self->_trayView == viewCopy)
  {
    topAnchor = [(UIView *)viewCopy topAnchor];
  }

  else if ([(ICQUpgradeOfferView *)self _styleOfView:viewCopy]== 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    topAnchor = [(UIView *)v5 lastBaselineAnchor];
  }

  else
  {
    topAnchor = [(UIView *)v5 bottomAnchor];
  }

  v7 = topAnchor;

  return v7;
}

- (id)_anchorForLowerView:(id)view
{
  viewCopy = view;
  if ([(ICQUpgradeOfferView *)self _styleOfView:viewCopy]== 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    firstBaselineAnchor = [viewCopy firstBaselineAnchor];
  }

  else
  {
    firstBaselineAnchor = [viewCopy topAnchor];
  }

  v6 = firstBaselineAnchor;

  return v6;
}

- (double)_spacingFromUpperView:(id)view toLowerView:(id)lowerView
{
  lowerViewCopy = lowerView;
  v7 = [(ICQUpgradeOfferView *)self _styleOfView:view];
  v8 = [(ICQUpgradeOfferView *)self _styleOfView:lowerViewCopy];

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
  upgradeOfferPageSpecification = [(ICQUpgradeOfferView *)self upgradeOfferPageSpecification];
  purchaseLink = [upgradeOfferPageSpecification purchaseLink];
  text = [purchaseLink text];
  v6 = [text length];

  upgradeOfferPageSpecification2 = [(ICQUpgradeOfferView *)self upgradeOfferPageSpecification];
  purchase2Link = [upgradeOfferPageSpecification2 purchase2Link];
  text2 = [purchase2Link text];
  v10 = [text2 length];

  upgradeOfferPageSpecification3 = [(ICQUpgradeOfferView *)self upgradeOfferPageSpecification];
  bottomLink = [upgradeOfferPageSpecification3 bottomLink];
  text3 = [bottomLink text];
  v14 = [text3 length];

  array = [MEMORY[0x277CBEB18] array];
  v16 = array;
  if (v6)
  {
    [array addObject:self->_purchaseButton];
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
  purchaseButtonFont = [(ICQUpgradeOfferView *)self purchaseButtonFont];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:purchaseButtonFont];

  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [v3 titleLabel];
  [titleLabel3 setLineBreakMode:0];

  titleLabel4 = [v3 titleLabel];
  [titleLabel4 setTextAlignment:1];

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
  linkButtonFont = [(ICQUpgradeOfferView *)self linkButtonFont];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:linkButtonFont];

  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [v3 titleLabel];
  [titleLabel3 setLineBreakMode:0];

  titleLabel4 = [v3 titleLabel];
  [titleLabel4 setTextAlignment:1];

  return v3;
}

- (ICQUpgradeOfferView)initWithFrame:(CGRect)frame
{
  v54.receiver = self;
  v54.super_class = ICQUpgradeOfferView;
  v3 = [(ICQUpgradeOfferView *)&v54 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(ICQUpgradeOfferView *)v3 setBackgroundColor:systemBackgroundColor];

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
    titleFont = [(ICQUpgradeOfferView *)v3 titleFont];
    [(UILabel *)v3->_titleLabel setFont:titleFont];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v23 = [[_ICQTextView alloc] initWithFrame:v16, v17, v18, v19];
    messageView = v3->_messageView;
    v3->_messageView = v23;

    [(_ICQTextView *)v3->_messageView setTranslatesAutoresizingMaskIntoConstraints:0];
    messageFont = [(ICQUpgradeOfferView *)v3 messageFont];
    [(_ICQTextView *)v3->_messageView setFont:messageFont];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_ICQTextView *)v3->_messageView setBackgroundColor:clearColor];

    [(_ICQTextView *)v3->_messageView setDelegate:v3];
    _makePurchaseButton = [(ICQUpgradeOfferView *)v3 _makePurchaseButton];
    purchaseButton = v3->_purchaseButton;
    v3->_purchaseButton = _makePurchaseButton;

    [(UIButton *)v3->_purchaseButton _icq_applyGlassTinted:1];
    [(UIButton *)v3->_purchaseButton addTarget:v3 action:sel_purchaseButtonTapped_ forControlEvents:0x2000];
    _makeLinkButton = [(ICQUpgradeOfferView *)v3 _makeLinkButton];
    purchase2Button = v3->_purchase2Button;
    v3->_purchase2Button = _makeLinkButton;

    [(UIButton *)v3->_purchase2Button addTarget:v3 action:sel_purchase2ButtonTapped_ forControlEvents:0x2000];
    _makeLinkButton2 = [(ICQUpgradeOfferView *)v3 _makeLinkButton];
    bottomButton = v3->_bottomButton;
    v3->_bottomButton = _makeLinkButton2;

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
    fineprintFont = [(ICQUpgradeOfferView *)v3 fineprintFont];
    [(_ICQTextView *)v3->_fineprintView setFont:fineprintFont];

    fineprintColor = [(ICQUpgradeOfferView *)v3 fineprintColor];
    [(_ICQTextView *)v3->_fineprintView setTextColor:fineprintColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(_ICQTextView *)v3->_fineprintView setBackgroundColor:clearColor2];

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

- (void)_setButton:(id)button backgroundColor:(id)color
{
  colorCopy = color;
  buttonCopy = button;
  v9 = [colorCopy colorWithAlphaComponent:0.5];
  v7 = _PointImageOfColor(colorCopy);

  [buttonCopy setBackgroundImage:v7 forState:0];
  v8 = _PointImageOfColor(v9);
  [buttonCopy setBackgroundImage:v8 forState:1];
}

- (void)_setLinkTextColor:(id)color
{
  messageView = self->_messageView;
  colorCopy = color;
  linkTextAttributes = [(_ICQTextView *)messageView linkTextAttributes];
  v7 = [linkTextAttributes mutableCopy];

  v8 = *MEMORY[0x277D740C0];
  [v7 setObject:colorCopy forKeyedSubscript:*MEMORY[0x277D740C0]];
  v9 = [v7 copy];
  [(_ICQTextView *)self->_messageView setLinkTextAttributes:v9];

  linkTextAttributes2 = [(_ICQTextView *)self->_fineprintView linkTextAttributes];
  v12 = [linkTextAttributes2 mutableCopy];

  [v12 setObject:colorCopy forKeyedSubscript:v8];
  v11 = [v12 copy];
  [(_ICQTextView *)self->_fineprintView setLinkTextAttributes:v11];
}

- (void)_setButtonTintColor:(id)color
{
  v17 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  objc_storeStrong(&self->_buttonTintColor, color);
  if (!colorCopy)
  {
    colorCopy = [(ICQUpgradeOfferView *)self defaultButtonColor];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _buttons = [(ICQUpgradeOfferView *)self _buttons];
  v7 = [_buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_buttons);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setTintColor:colorCopy];
        if ([(ICQUpgradeOfferView *)self _styleOfView:v11]== 2)
        {
          [(ICQUpgradeOfferView *)self _setButton:v11 backgroundColor:colorCopy];
        }
      }

      v8 = [_buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(ICQUpgradeOfferView *)self _setLinkTextColor:colorCopy];
}

- (void)setButtonTintColor:(id)color
{
  colorCopy = color;
  buttonTintColor = self->_buttonTintColor;
  if (colorCopy | buttonTintColor)
  {
    v7 = colorCopy;
    v6 = [(UIColor *)buttonTintColor isEqual:colorCopy];
    colorCopy = v7;
    if ((v6 & 1) == 0)
    {
      [(ICQUpgradeOfferView *)self _setButtonTintColor:v7];
      colorCopy = v7;
    }
  }
}

- (void)purchaseButtonTapped:(id)tapped
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQUpgradeOfferView main button tapped", &v20, 2u);
  }

  delegate = [(ICQUpgradeOfferView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      delegate2 = [(ICQUpgradeOfferView *)self delegate];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      purchaseLink = [(ICQUpgradeOfferView *)self purchaseLink];
      [purchaseLink action];
      v12 = _ICQStringForAction();
      purchaseLink2 = [(ICQUpgradeOfferView *)self purchaseLink];
      parameters = [purchaseLink2 parameters];
      v20 = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = parameters;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v20, 0x20u);
    }

    delegate3 = [(ICQUpgradeOfferView *)self delegate];
    purchaseLink3 = [(ICQUpgradeOfferView *)self purchaseLink];
    action = [purchaseLink3 action];
    purchaseLink4 = [(ICQUpgradeOfferView *)self purchaseLink];
    parameters2 = [purchaseLink4 parameters];
    [delegate3 sender:self action:action parameters:parameters2];
  }
}

- (void)purchase2ButtonTapped:(id)tapped
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQUpgradeOfferView second button tapped", &v20, 2u);
  }

  delegate = [(ICQUpgradeOfferView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      delegate2 = [(ICQUpgradeOfferView *)self delegate];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      purchase2Link = [(ICQUpgradeOfferView *)self purchase2Link];
      [purchase2Link action];
      v12 = _ICQStringForAction();
      purchase2Link2 = [(ICQUpgradeOfferView *)self purchase2Link];
      parameters = [purchase2Link2 parameters];
      v20 = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = parameters;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v20, 0x20u);
    }

    delegate3 = [(ICQUpgradeOfferView *)self delegate];
    purchase2Link3 = [(ICQUpgradeOfferView *)self purchase2Link];
    action = [purchase2Link3 action];
    purchase2Link4 = [(ICQUpgradeOfferView *)self purchase2Link];
    parameters2 = [purchase2Link4 parameters];
    [delegate3 sender:self action:action parameters:parameters2];
  }
}

- (void)bottomButtonTapped:(id)tapped
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQUpgradeOfferView bottom button tapped", &v20, 2u);
  }

  delegate = [(ICQUpgradeOfferView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      delegate2 = [(ICQUpgradeOfferView *)self delegate];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      bottomLink = [(ICQUpgradeOfferView *)self bottomLink];
      [bottomLink action];
      v12 = _ICQStringForAction();
      bottomLink2 = [(ICQUpgradeOfferView *)self bottomLink];
      parameters = [bottomLink2 parameters];
      v20 = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = parameters;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "delegate %@ being sent action:%@ parameters:%@", &v20, 0x20u);
    }

    delegate3 = [(ICQUpgradeOfferView *)self delegate];
    bottomLink3 = [(ICQUpgradeOfferView *)self bottomLink];
    action = [bottomLink3 action];
    bottomLink4 = [(ICQUpgradeOfferView *)self bottomLink];
    parameters2 = [bottomLink4 parameters];
    [delegate3 sender:self action:action parameters:parameters2];
  }
}

- (id)messageParagraphStyle
{
  v2 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v4 = [defaultParagraphStyle mutableCopy];

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
  messageFont = [(ICQUpgradeOfferView *)self messageFont];
  v9[0] = messageFont;
  v8[1] = *MEMORY[0x277D740C0];
  messageTextColor = [(ICQUpgradeOfferView *)self messageTextColor];
  v9[1] = messageTextColor;
  v8[2] = *MEMORY[0x277D74118];
  messageParagraphStyle = [(ICQUpgradeOfferView *)self messageParagraphStyle];
  v9[2] = messageParagraphStyle;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)fineprintParagraphStyle
{
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v3 = [defaultParagraphStyle mutableCopy];

  [v3 setAlignment:1];
  [v3 setLineSpacing:0.0];
  v4 = [v3 copy];

  return v4;
}

- (id)fineprintAttributes
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277D740A8];
  fineprintFont = [(ICQUpgradeOfferView *)self fineprintFont];
  v9[0] = fineprintFont;
  v8[1] = *MEMORY[0x277D740C0];
  fineprintColor = [(ICQUpgradeOfferView *)self fineprintColor];
  v9[1] = fineprintColor;
  v8[2] = *MEMORY[0x277D74118];
  fineprintParagraphStyle = [(ICQUpgradeOfferView *)self fineprintParagraphStyle];
  v9[2] = fineprintParagraphStyle;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)_imageForGenericCloud
{
  v2 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"iCloudImage"];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = [v2 _applicationIconImageForFormat:2 precomposed:0 scale:?];

  return v4;
}

- (id)_imageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length] || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.iCloudDriveApp") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.DocumentsApp") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.__mobilebackup__") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.Preferences"))
  {
    _imageForGenericCloud = [(ICQUpgradeOfferView *)self _imageForGenericCloud];
  }

  else
  {
    v7 = MEMORY[0x277D755B8];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    _imageForGenericCloud = [v7 _applicationIconImageForBundleIdentifier:identifierCopy format:2 scale:?];
  }

  return _imageForGenericCloud;
}

- (void)setUpgradeOfferPageSpecification:(id)specification
{
  v42 = *MEMORY[0x277D85DE8];
  specificationCopy = specification;
  if (self->_upgradeOfferPageSpecification != specificationCopy)
  {
    objc_storeStrong(&self->_upgradeOfferPageSpecification, specification);
    iconBundleIdentifier = [(_ICQUpgradeOfferPageSpecification *)specificationCopy iconBundleIdentifier];
    v7 = [(ICQUpgradeOfferView *)self _imageForBundleIdentifier:iconBundleIdentifier];
    [(UIImageView *)self->_iconView setImage:v7];

    image = [(UIImageView *)self->_iconView image];

    if (image)
    {
      iconView = self->_iconView;
      v10 = 0;
    }

    else
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        iconBundleIdentifier2 = [(_ICQUpgradeOfferPageSpecification *)specificationCopy iconBundleIdentifier];
        v40 = 138412290;
        v41 = iconBundleIdentifier2;
        _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "no image available for bundle id %@", &v40, 0xCu);
      }

      iconView = self->_iconView;
      v10 = 1;
    }

    [(UIImageView *)iconView setHidden:v10];
    title = [(_ICQUpgradeOfferPageSpecification *)specificationCopy title];
    [(UILabel *)self->_titleLabel setText:title];

    messageAttributes = [(ICQUpgradeOfferView *)self messageAttributes];
    [(_ICQTextView *)self->_messageView setAttributes:messageAttributes];

    v15 = MEMORY[0x277D7F390];
    message = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification message];
    altMessage = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification altMessage];
    v18 = [v15 stringWithPlaceholderFormat:message alternateString:altMessage];
    [(_ICQTextView *)self->_messageView setFormat:v18];

    format = [(_ICQTextView *)self->_messageView format];
    altMessage2 = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification altMessage];
    LODWORD(altMessage) = [format isEqualToString:altMessage2];

    upgradeOfferPageSpecification = self->_upgradeOfferPageSpecification;
    if (altMessage)
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
    purchaseLink = [(_ICQUpgradeOfferPageSpecification *)specificationCopy purchaseLink];
    purchaseLink = self->_purchaseLink;
    self->_purchaseLink = purchaseLink;

    purchase2Link = [(_ICQUpgradeOfferPageSpecification *)specificationCopy purchase2Link];
    purchase2Link = self->_purchase2Link;
    self->_purchase2Link = purchase2Link;

    bottomLink = [(_ICQUpgradeOfferPageSpecification *)specificationCopy bottomLink];
    bottomLink = self->_bottomLink;
    self->_bottomLink = bottomLink;

    purchaseButton = self->_purchaseButton;
    text = [(ICQLink *)self->_purchaseLink text];
    [(UIButton *)purchaseButton setTitle:text forState:0];

    purchase2Button = self->_purchase2Button;
    text2 = [(ICQLink *)self->_purchase2Link text];
    [(UIButton *)purchase2Button setTitle:text2 forState:0];

    text3 = [(ICQLink *)self->_bottomLink text];

    bottomButton = self->_bottomButton;
    if (text3)
    {
      text4 = [(ICQLink *)self->_bottomLink text];
      [(UIButton *)bottomButton setTitle:text4 forState:0];
    }

    else
    {
      [(UIButton *)self->_bottomButton setHidden:1];
    }

    fineprintAttributes = [(ICQUpgradeOfferView *)self fineprintAttributes];
    [(_ICQTextView *)self->_fineprintView setAttributes:fineprintAttributes];

    fineprintFormat = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification fineprintFormat];
    [(_ICQTextView *)self->_fineprintView setFormat:fineprintFormat];

    fineprintLinks = [(_ICQUpgradeOfferPageSpecification *)self->_upgradeOfferPageSpecification fineprintLinks];
    [(_ICQTextView *)self->_fineprintView setLinks:fineprintLinks];

    [(_ICQTextView *)self->_fineprintView setAttributedText];
    [(_ICQTextView *)self->_fineprintView layoutIfNeeded];
    buttonTintColor = [(ICQUpgradeOfferView *)self buttonTintColor];
    [(ICQUpgradeOfferView *)self _setButtonTintColor:buttonTintColor];

    [(ICQUpgradeOfferView *)self setNeedsUpdateConstraints];
  }
}

- (void)setUpgradeMode:(int64_t)mode
{
  if (self->_upgradeMode != mode)
  {
    self->_upgradeMode = mode;
    if (mode == 1)
    {
      [(UIButton *)self->_purchaseButton setHidden:?];
      [(UIButton *)self->_purchase2Button setHidden:1];
      [(UIButton *)self->_bottomButton setHidden:1];
      [(UIActivityIndicatorView *)self->_spinner setHidden:0];
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    else if (!mode)
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

- (id)horizontalConstraintsForView:(id)view margin:(double)margin
{
  v25[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([viewCopy isHidden])
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    centerXAnchor = [viewCopy centerXAnchor];
    superview = [viewCopy superview];
    centerXAnchor2 = [superview centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[0] = v21;
    widthAnchor = [viewCopy widthAnchor];
    readableContentGuide = [(ICQUpgradeOfferView *)self readableContentGuide];
    widthAnchor2 = [readableContentGuide widthAnchor];
    v17 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v25[1] = v17;
    leftAnchor = [viewCopy leftAnchor];
    superview2 = [viewCopy superview];
    leftAnchor2 = [superview2 leftAnchor];
    v11 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:margin];
    v25[2] = v11;
    rightAnchor = [viewCopy rightAnchor];
    superview3 = [viewCopy superview];
    rightAnchor2 = [superview3 rightAnchor];
    v15 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:-margin];
    v25[3] = v15;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  }

  return v7;
}

- (id)_constraintsForView:(id)view equalToView:(id)toView
{
  v21[4] = *MEMORY[0x277D85DE8];
  toViewCopy = toView;
  viewCopy = view;
  centerXAnchor = [viewCopy centerXAnchor];
  centerXAnchor2 = [toViewCopy centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v21[0] = v18;
  widthAnchor = [viewCopy widthAnchor];
  widthAnchor2 = [toViewCopy widthAnchor];
  v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v21[1] = v9;
  centerYAnchor = [viewCopy centerYAnchor];
  centerYAnchor2 = [toViewCopy centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v21[2] = v12;
  heightAnchor = [viewCopy heightAnchor];

  heightAnchor2 = [toViewCopy heightAnchor];

  v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

- (void)updateConstraints
{
  v149 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_activeConstraints];
  array = [MEMORY[0x277CBEB18] array];
  isHidden = [(UIImageView *)self->_iconView isHidden];
  v5 = [(ICQUpgradeOfferView *)self _constraintsForView:self->_scrollView equalToView:self];
  [array addObjectsFromArray:v5];

  v6 = [(ICQUpgradeOfferView *)self _constraintsForView:self->_blurBackdrop equalToView:self->_trayView];
  [array addObjectsFromArray:v6];

  centerXAnchor = [(UIView *)self->_trayView centerXAnchor];
  centerXAnchor2 = [(ICQUpgradeOfferView *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v9];

  widthAnchor = [(UIView *)self->_trayView widthAnchor];
  widthAnchor2 = [(ICQUpgradeOfferView *)self widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v12];

  bottomAnchor = [(UIView *)self->_trayView bottomAnchor];
  bottomAnchor2 = [(ICQUpgradeOfferView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v15];

  centerXAnchor3 = [(UIView *)self->_contentView centerXAnchor];
  centerXAnchor4 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v18 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [array addObject:v18];

  widthAnchor3 = [(UIView *)self->_contentView widthAnchor];
  widthAnchor4 = [(UIScrollView *)self->_scrollView widthAnchor];
  v21 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [array addObject:v21];

  v136 = isHidden;
  if ((isHidden & 1) == 0)
  {
    centerXAnchor5 = [(UIImageView *)self->_iconView centerXAnchor];
    centerXAnchor6 = [(UIView *)self->_contentView centerXAnchor];
    v24 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [array addObject:v24];
  }

  v25 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:self->_titleLabel margin:24.0, &self->_iconView];
  [array addObjectsFromArray:v25];

  v26 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:self->_messageView margin:24.0];
  [array addObjectsFromArray:v26];

  v27 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:self->_fineprintView margin:24.0];
  [array addObjectsFromArray:v27];

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  _buttons = [(ICQUpgradeOfferView *)self _buttons];
  v29 = [_buttons countByEnumeratingWithState:&v143 objects:v148 count:16];
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
          objc_enumerationMutation(_buttons);
        }

        v34 = *(*(&v143 + 1) + 8 * i);
        [(ICQUpgradeOfferView *)self _marginForButton:v34];
        v35 = [(ICQUpgradeOfferView *)self horizontalConstraintsForView:v34 margin:?];
        [array addObjectsFromArray:v35];

        widthAnchor5 = [v34 widthAnchor];
        v37 = [widthAnchor5 constraintEqualToConstant:v32];
        [array addObject:v37];
      }

      v30 = [_buttons countByEnumeratingWithState:&v143 objects:v148 count:16];
    }

    while (v30);
  }

  topAnchor = [(UILayoutGuide *)self->_scrollVisibleLayoutGuide topAnchor];
  safeAreaLayoutGuide = [(ICQUpgradeOfferView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v41];

  bottomAnchor3 = [(UILayoutGuide *)self->_scrollVisibleLayoutGuide bottomAnchor];
  topAnchor3 = [(UIView *)self->_trayView topAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3];
  [array addObject:v44];

  heightAnchor = [(UIView *)self->_contentView heightAnchor];
  heightAnchor2 = [(UILayoutGuide *)self->_scrollVisibleLayoutGuide heightAnchor];
  v47 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
  [array addObject:v47];

  p_headerView = &self->_headerView;
  topAnchor4 = [(UIView *)self->_headerView topAnchor];
  topAnchor5 = [(UIView *)self->_contentView topAnchor];
  v51 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [array addObject:v51];

  bottomAnchor4 = [(UIView *)self->_footerView bottomAnchor];
  bottomAnchor5 = [(UIView *)self->_contentView bottomAnchor];
  v54 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [array addObject:v54];

  heightAnchor3 = [(UIView *)self->_headerView heightAnchor];
  heightAnchor4 = [(UIView *)self->_footerView heightAnchor];
  v57 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  [array addObject:v57];

  if (v136)
  {
    v58 = 36.0;
  }

  else
  {
    topAnchor6 = [*v134 topAnchor];
    bottomAnchor6 = [(UIView *)*p_headerView bottomAnchor];
    v61 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6 constant:12.0];
    [array addObject:v61];

    v58 = 20.0;
    p_headerView = v134;
  }

  topAnchor7 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor7 = [(UIView *)*p_headerView bottomAnchor];
  v64 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7 constant:v58];
  [array addObject:v64];

  topAnchor8 = [(_ICQTextView *)self->_messageView topAnchor];
  bottomAnchor8 = [(UILabel *)self->_titleLabel bottomAnchor];
  v67 = [topAnchor8 constraintEqualToAnchor:bottomAnchor8 constant:15.0];
  [array addObject:v67];

  topAnchor9 = [(UIView *)self->_footerView topAnchor];
  bottomAnchor9 = [(_ICQTextView *)self->_messageView bottomAnchor];
  v70 = [topAnchor9 constraintEqualToAnchor:bottomAnchor9 constant:15.0];
  [array addObject:v70];

  text = [(_ICQTextView *)self->_fineprintView text];
  v72 = [text length];

  p_super = self->_trayView;
  if (v72)
  {
    topAnchor10 = [(_ICQTextView *)self->_fineprintView topAnchor];
    topAnchor11 = [(UIView *)self->_trayView topAnchor];
    v76 = [topAnchor10 constraintEqualToAnchor:topAnchor11 constant:11.0];
    [array addObject:v76];

    v77 = self->_fineprintView;
    p_super = &v77->super.super.super;
  }

  _buttons2 = [(ICQUpgradeOfferView *)self _buttons];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v79 = [_buttons2 countByEnumeratingWithState:&v139 objects:v147 count:16];
  v135 = _buttons2;
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
          objc_enumerationMutation(_buttons2);
        }

        v83 = *(*(&v139 + 1) + 8 * v81);
        v84 = [(ICQUpgradeOfferView *)self _anchorForLowerView:v83];
        v85 = [(ICQUpgradeOfferView *)self _anchorForUpperView:v82];
        [(ICQUpgradeOfferView *)self _spacingFromUpperView:v82 toLowerView:v83];
        v86 = [v84 constraintEqualToAnchor:v85 constant:?];
        [array addObject:v86];

        if ([(ICQUpgradeOfferView *)self _styleOfView:v83]== 2)
        {
          heightAnchor5 = [v83 heightAnchor];
          v88 = [heightAnchor5 constraintGreaterThanOrEqualToConstant:50.0];
          [array addObject:v88];

          titleLabel = [v83 titleLabel];
          topAnchor12 = [titleLabel topAnchor];
          topAnchor13 = [v83 topAnchor];
          v92 = [topAnchor12 constraintGreaterThanOrEqualToAnchor:topAnchor13 constant:14.0];
          [array addObject:v92];

          bottomAnchor10 = [v83 bottomAnchor];
          titleLabel2 = [v83 titleLabel];
          bottomAnchor11 = [titleLabel2 bottomAnchor];
          v96 = [bottomAnchor10 constraintGreaterThanOrEqualToAnchor:bottomAnchor11 constant:14.0];
          [array addObject:v96];

          titleLabel3 = [v83 titleLabel];
          leftAnchor = [titleLabel3 leftAnchor];
          leftAnchor2 = [v83 leftAnchor];
          v100 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:16.0];
          [array addObject:v100];

          rightAnchor = [v83 rightAnchor];
          titleLabel4 = [v83 titleLabel];
          rightAnchor2 = [titleLabel4 rightAnchor];
          v104 = [rightAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor2 constant:16.0];
          [array addObject:v104];

          _buttons2 = v135;
        }

        p_super = v83;

        ++v81;
        v82 = p_super;
      }

      while (v80 != v81);
      v80 = [_buttons2 countByEnumeratingWithState:&v139 objects:v147 count:16];
    }

    while (v80);
  }

  if (p_super != self->_trayView)
  {
    [(ICQUpgradeOfferView *)self _spacingFromUpperView:p_super toLowerView:?];
    v106 = v105;
    [(ICQUpgradeOfferView *)self safeAreaInsets];
    v108 = v106 + v107;
    bottomAnchor12 = [(UIView *)self->_trayView bottomAnchor];
    v110 = [(ICQUpgradeOfferView *)self _anchorForUpperView:p_super];
    v111 = [bottomAnchor12 constraintEqualToAnchor:v110 constant:v108];
    [array addObject:v111];
  }

  if ((-[UIActivityIndicatorView isHidden](self->_spinner, "isHidden") & 1) == 0 && [_buttons2 count])
  {
    centerXAnchor7 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
    centerXAnchor8 = [(UIView *)self->_trayView centerXAnchor];
    v114 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [array addObject:v114];

    topAnchor14 = [(UILayoutGuide *)self->_aboveSpinnerLayoutGuide topAnchor];
    firstObject = [_buttons2 firstObject];
    topAnchor15 = [firstObject topAnchor];
    v118 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
    [array addObject:v118];

    bottomAnchor13 = [(UILayoutGuide *)self->_aboveSpinnerLayoutGuide bottomAnchor];
    topAnchor16 = [(UIActivityIndicatorView *)self->_spinner topAnchor];
    v121 = [bottomAnchor13 constraintEqualToAnchor:topAnchor16];
    [array addObject:v121];

    topAnchor17 = [(UILayoutGuide *)self->_belowSpinnerLayoutGuide topAnchor];
    bottomAnchor14 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
    v124 = [topAnchor17 constraintEqualToAnchor:bottomAnchor14];
    [array addObject:v124];

    bottomAnchor15 = [(UILayoutGuide *)self->_belowSpinnerLayoutGuide bottomAnchor];
    lastObject = [v135 lastObject];
    v127 = [(ICQUpgradeOfferView *)self _anchorForUpperView:lastObject];
    v128 = [bottomAnchor15 constraintEqualToAnchor:v127];
    [array addObject:v128];

    heightAnchor6 = [(UILayoutGuide *)self->_aboveSpinnerLayoutGuide heightAnchor];
    _buttons2 = v135;
    heightAnchor7 = [(UILayoutGuide *)self->_belowSpinnerLayoutGuide heightAnchor];
    v131 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
    [array addObject:v131];
  }

  v132 = [array copy];
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    links = [viewCopy links];
    icqIndex = [lCopy icqIndex];
    if (icqIndex > 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_23;
    }

    v10 = icqIndex;
    if (icqIndex >= [links count])
    {
      goto LABEL_23;
    }

    v11 = [links objectAtIndexedSubscript:v10];
    if ([v11 action] != 6)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        text = [v11 text];
        [v11 action];
        v16 = _ICQStringForAction();
        v24 = 138412546;
        v25 = text;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "tapped %@, but link action %@ unsupported in ICQTextView", &v24, 0x16u);
      }

      goto LABEL_22;
    }

    parameters = [v11 parameters];
    v13 = [parameters objectForKeyedSubscript:*MEMORY[0x277D7F280]];

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
            text2 = [v11 text];
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v24 = 138412546;
            v25 = text2;
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
        text3 = [v11 text];
        v24 = 138412546;
        v25 = text3;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_275623000, v18, OS_LOG_TYPE_DEFAULT, "tapped %@, opening URL %@", &v24, 0x16u);
      }

      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] openURL:v14 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_5];
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

      mEMORY[0x277D75128] = [v11 text];
      v24 = 138412290;
      v25 = mEMORY[0x277D75128];
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