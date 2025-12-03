@interface ICQTileView
- (BOOL)_launchFlowManagerWithLink:(id)link;
- (BOOL)handleActionFromLink:(id)link;
- (ICQTileView)initWithPremiumOffer:(id)offer;
- (id)createLabelWithText:(id)text;
- (void)_startOnDeviceJourneyForSystemUpgrade;
- (void)actionButtonTapped:(id)tapped;
- (void)configureSubviews;
- (void)createActionButtons;
- (void)createActionButtonsStack;
- (void)createButtonsFromBubbleDetails:(id)details;
- (void)createOrUpdateImageViewFromImageDetails:(id)details;
- (void)createOrUpdateMessageLabelWithMessage:(id)message;
- (void)createOrUpdateTitleLabelWithTitle:(id)title;
- (void)createSeparator;
- (void)dismissButtonTapped:(id)tapped;
- (void)setPremiumOffer:(id)offer;
- (void)updateDismissButtonWithAction:(id)action;
- (void)updatePrimaryButtonWithAction:(id)action;
- (void)updateSecondaryButtonWithAction:(id)action;
- (void)updateTileViewWithOffer:(id)offer;
@end

@implementation ICQTileView

- (ICQTileView)initWithPremiumOffer:(id)offer
{
  offerCopy = offer;
  v13.receiver = self;
  v13.super_class = ICQTileView;
  v5 = [(ICQTileView *)&v13 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  [(ICQTileView *)v5 configureSubviews];
  if (offerCopy)
  {
    [(ICQTileView *)v6 setPremiumOffer:offerCopy];
    opportunityBubble = [offerCopy opportunityBubble];
    reportingDetails = [opportunityBubble reportingDetails];
    [(ICQTileView *)v6 setReportingDetails:reportingDetails];

    [(ICQTileView *)v6 _startOnDeviceJourneyForSystemUpgrade];
LABEL_4:
    v9 = v6;
    goto LABEL_8;
  }

  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to initialize ICQTileView with a nil offer", v12, 2u);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_startOnDeviceJourneyForSystemUpgrade
{
  reportingDetails = [(ICQTileView *)self reportingDetails];
  if ([reportingDetails displayRuleType] == 1)
  {
    premiumOffer = [(ICQTileView *)self premiumOffer];
    shouldStartOnDeviceJourney = [premiumOffer shouldStartOnDeviceJourney];

    if (shouldStartOnDeviceJourney)
    {
      v6 = MEMORY[0x277D7F350];
      premiumOffer2 = [(ICQTileView *)self premiumOffer];
      bundleIdentifier = [premiumOffer2 bundleIdentifier];
      [v6 sendEventFor:2 withBundleID:bundleIdentifier link:0];

      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v10 = "Started on-device journey for device that was upgraded to Sky after a Premium offer CFU was seen in Azul device.";
        v11 = &v13;
LABEL_8:
        _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    v10 = "No need to start on-device journey.";
    v11 = &v12;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setPremiumOffer:(id)offer
{
  offerCopy = offer;
  if (self->_premiumOffer != offerCopy)
  {
    objc_storeStrong(&self->_premiumOffer, offer);
    if ([MEMORY[0x277D7F398] shouldEnableUnifiedMessaging])
    {
      v6 = MEMORY[0x277D7F350];
      bundleIdentifier = [(ICQPremiumOffer *)offerCopy bundleIdentifier];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __31__ICQTileView_setPremiumOffer___block_invoke;
      v11[3] = &unk_27A65B0A0;
      v11[4] = self;
      v12 = offerCopy;
      [v6 fetchBubbleContentWithBundleID:bundleIdentifier completion:v11];
    }

    else
    {
      opportunityBubble = [(ICQPremiumOffer *)offerCopy opportunityBubble];
      reportingDetails = [opportunityBubble reportingDetails];
      reportingDetails = self->_reportingDetails;
      self->_reportingDetails = reportingDetails;

      [(ICQTileView *)self updateTileViewWithOffer:offerCopy];
    }
  }
}

uint64_t __31__ICQTileView_setPremiumOffer___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 584) setOpportunityBubble:a2];
  }

  v3 = [*(a1 + 40) opportunityBubble];
  v4 = [v3 reportingDetails];
  v5 = *(a1 + 32);
  v6 = *(v5 + 672);
  *(v5 + 672) = v4;

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 updateTileViewWithOffer:v8];
}

- (void)configureSubviews
{
  v106[22] = *MEMORY[0x277D85DE8];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(ICQTileView *)self setBackgroundColor:secondarySystemBackgroundColor];

  layer = [(ICQTileView *)self layer];
  [layer setCornerRadius:12.0];

  v5 = *MEMORY[0x277CDA138];
  layer2 = [(ICQTileView *)self layer];
  [layer2 setCornerCurve:v5];

  [(ICQTileView *)self createOrUpdateTitleLabelWithTitle:0];
  [(ICQTileView *)self createOrUpdateMessageLabelWithMessage:0];
  [(ICQTileView *)self createOrUpdateImageViewFromImageDetails:0];
  [(ICQTileView *)self createSeparator];
  [(ICQTileView *)self createActionButtons];
  [(ICQTileView *)self createActionButtonsStack];
  titleLabel = [(ICQTileView *)self titleLabel];
  trailingAnchor = [titleLabel trailingAnchor];
  trailingAnchor2 = [(ICQTileView *)self trailingAnchor];
  v10 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-14.0];
  titleLabelTrailingConstraint = self->_titleLabelTrailingConstraint;
  self->_titleLabelTrailingConstraint = v10;

  LODWORD(v12) = 1144750080;
  [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setPriority:v12];
  titleLabel2 = [(ICQTileView *)self titleLabel];
  trailingAnchor3 = [titleLabel2 trailingAnchor];
  dismissButton = [(ICQTileView *)self dismissButton];
  leadingAnchor = [dismissButton leadingAnchor];
  v17 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor constant:-10.0];
  titleLabelDismissButtonSpacingConstraint = self->_titleLabelDismissButtonSpacingConstraint;
  self->_titleLabelDismissButtonSpacingConstraint = v17;

  LODWORD(v19) = 1144913920;
  [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setPriority:v19];
  v71 = MEMORY[0x277CCAAD0];
  iconImageView = [(ICQTileView *)self iconImageView];
  leadingAnchor2 = [iconImageView leadingAnchor];
  leadingAnchor3 = [(ICQTileView *)self leadingAnchor];
  v102 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:14.0];
  v106[0] = v102;
  iconImageView2 = [(ICQTileView *)self iconImageView];
  topAnchor = [iconImageView2 topAnchor];
  messageLabel = [(ICQTileView *)self messageLabel];
  topAnchor2 = [messageLabel topAnchor];
  v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v106[1] = v97;
  iconImageView3 = [(ICQTileView *)self iconImageView];
  widthAnchor = [iconImageView3 widthAnchor];
  v94 = [widthAnchor constraintEqualToConstant:60.0];
  v106[2] = v94;
  iconImageView4 = [(ICQTileView *)self iconImageView];
  heightAnchor = [iconImageView4 heightAnchor];
  v91 = [heightAnchor constraintEqualToConstant:60.0];
  v106[3] = v91;
  titleLabel3 = [(ICQTileView *)self titleLabel];
  leadingAnchor4 = [titleLabel3 leadingAnchor];
  iconImageView5 = [(ICQTileView *)self iconImageView];
  trailingAnchor4 = [iconImageView5 trailingAnchor];
  v86 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:10.0];
  v106[4] = v86;
  titleLabel4 = [(ICQTileView *)self titleLabel];
  topAnchor3 = [titleLabel4 topAnchor];
  topAnchor4 = [(ICQTileView *)self topAnchor];
  v82 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:14.0];
  v20 = self->_titleLabelTrailingConstraint;
  v106[5] = v82;
  v106[6] = v20;
  v106[7] = self->_titleLabelDismissButtonSpacingConstraint;
  messageLabel2 = [(ICQTileView *)self messageLabel];
  leadingAnchor5 = [messageLabel2 leadingAnchor];
  titleLabel5 = [(ICQTileView *)self titleLabel];
  leadingAnchor6 = [titleLabel5 leadingAnchor];
  v77 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v106[8] = v77;
  messageLabel3 = [(ICQTileView *)self messageLabel];
  topAnchor5 = [messageLabel3 topAnchor];
  titleLabel6 = [(ICQTileView *)self titleLabel];
  bottomAnchor = [titleLabel6 bottomAnchor];
  v72 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:5.0];
  v106[9] = v72;
  messageLabel4 = [(ICQTileView *)self messageLabel];
  trailingAnchor5 = [messageLabel4 trailingAnchor];
  trailingAnchor6 = [(ICQTileView *)self trailingAnchor];
  v67 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-14.0];
  v106[10] = v67;
  separator = [(ICQTileView *)self separator];
  leadingAnchor7 = [separator leadingAnchor];
  titleLabel7 = [(ICQTileView *)self titleLabel];
  leadingAnchor8 = [titleLabel7 leadingAnchor];
  v62 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v106[11] = v62;
  separator2 = [(ICQTileView *)self separator];
  topAnchor6 = [separator2 topAnchor];
  messageLabel5 = [(ICQTileView *)self messageLabel];
  bottomAnchor2 = [messageLabel5 bottomAnchor];
  v57 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  v106[12] = v57;
  separator3 = [(ICQTileView *)self separator];
  trailingAnchor7 = [separator3 trailingAnchor];
  trailingAnchor8 = [(ICQTileView *)self trailingAnchor];
  v53 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v106[13] = v53;
  separator4 = [(ICQTileView *)self separator];
  heightAnchor2 = [separator4 heightAnchor];
  v50 = [heightAnchor2 constraintEqualToConstant:0.5];
  v106[14] = v50;
  actionButtonsStack = [(ICQTileView *)self actionButtonsStack];
  leadingAnchor9 = [actionButtonsStack leadingAnchor];
  titleLabel8 = [(ICQTileView *)self titleLabel];
  leadingAnchor10 = [titleLabel8 leadingAnchor];
  v45 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v106[15] = v45;
  actionButtonsStack2 = [(ICQTileView *)self actionButtonsStack];
  topAnchor7 = [actionButtonsStack2 topAnchor];
  separator5 = [(ICQTileView *)self separator];
  bottomAnchor3 = [separator5 bottomAnchor];
  v40 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
  v106[16] = v40;
  actionButtonsStack3 = [(ICQTileView *)self actionButtonsStack];
  trailingAnchor9 = [actionButtonsStack3 trailingAnchor];
  trailingAnchor10 = [(ICQTileView *)self trailingAnchor];
  v36 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10 constant:-14.0];
  v106[17] = v36;
  actionButtonsStack4 = [(ICQTileView *)self actionButtonsStack];
  bottomAnchor4 = [actionButtonsStack4 bottomAnchor];
  bottomAnchor5 = [(ICQTileView *)self bottomAnchor];
  v32 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-14.0];
  v106[18] = v32;
  widthAnchor2 = [(ICQTileView *)self widthAnchor];
  v21 = [widthAnchor2 constraintLessThanOrEqualToConstant:400.0];
  v106[19] = v21;
  dismissButton2 = [(ICQTileView *)self dismissButton];
  topAnchor8 = [dismissButton2 topAnchor];
  topAnchor9 = [(ICQTileView *)self topAnchor];
  v25 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:14.0];
  v106[20] = v25;
  dismissButton3 = [(ICQTileView *)self dismissButton];
  trailingAnchor11 = [dismissButton3 trailingAnchor];
  trailingAnchor12 = [(ICQTileView *)self trailingAnchor];
  v29 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-14.0];
  v106[21] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:22];
  [v71 activateConstraints:v30];
}

- (void)createSeparator
{
  separator = [(ICQTileView *)self separator];

  if (!separator)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    [v6 setBackgroundColor:tertiaryLabelColor];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICQTileView *)self addSubview:v6];
    [(ICQTileView *)self setSeparator:v6];
  }
}

- (void)createActionButtons
{
  dismissButton = [(ICQTileView *)self dismissButton];

  if (!dismissButton)
  {
    v4 = [ICQPremiumButton buttonWithType:1 link:0];
    [v4 setAccessibilityLabel:@"Dismiss bubble"];
    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    [v4 setTintColor:tertiaryLabelColor];

    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    [v4 setImage:v6 forState:0];

    [v4 addTarget:self action:sel_dismissButtonTapped_ forControlEvents:64];
    LODWORD(v7) = 1144913920;
    [v4 setContentCompressionResistancePriority:0 forAxis:v7];
    LODWORD(v8) = 1132593152;
    [v4 setContentHuggingPriority:0 forAxis:v8];
    [(ICQTileView *)self addSubview:v4];
    [(ICQTileView *)self setDismissButton:v4];
  }

  primaryButton = [(ICQTileView *)self primaryButton];

  if (!primaryButton)
  {
    v10 = [ICQPremiumButton buttonWithType:1 link:0];
    [v10 addTarget:self action:sel_actionButtonTapped_ forControlEvents:64];
    [(ICQTileView *)self setPrimaryButton:v10];
  }

  secondaryButton = [(ICQTileView *)self secondaryButton];

  if (!secondaryButton)
  {
    v12 = [ICQPremiumButton buttonWithType:1 link:0];
    [v12 addTarget:self action:sel_actionButtonTapped_ forControlEvents:64];
    [(ICQTileView *)self setSecondaryButton:v12];
  }
}

- (void)createActionButtonsStack
{
  actionButtonsStack = [(ICQTileView *)self actionButtonsStack];

  if (!actionButtonsStack)
  {
    v4 = objc_alloc(MEMORY[0x277D75A68]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setAxis:0];
    [v5 setSpacing:15.0];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICQTileView *)self addSubview:v5];
    [(ICQTileView *)self setActionButtonsStack:v5];
  }
}

- (void)updateTileViewWithOffer:(id)offer
{
  opportunityBubble = [offer opportunityBubble];
  bubbleDetails = [opportunityBubble bubbleDetails];
  title = [bubbleDetails title];
  [(ICQTileView *)self createOrUpdateTitleLabelWithTitle:title];

  bubbleDetails2 = [opportunityBubble bubbleDetails];
  message = [bubbleDetails2 message];
  [(ICQTileView *)self createOrUpdateMessageLabelWithMessage:message];

  bubbleDetails3 = [opportunityBubble bubbleDetails];
  imageDetails = [bubbleDetails3 imageDetails];
  [(ICQTileView *)self createOrUpdateImageViewFromImageDetails:imageDetails];

  bubbleDetails4 = [opportunityBubble bubbleDetails];
  [(ICQTileView *)self createButtonsFromBubbleDetails:bubbleDetails4];
}

- (void)createOrUpdateImageViewFromImageDetails:(id)details
{
  v4 = MEMORY[0x277D759A0];
  detailsCopy = details;
  mainScreen = [v4 mainScreen];
  [mainScreen scale];
  v8 = v7;

  v11 = [detailsCopy getURLForScale:v8];

  iconImageView = [(ICQTileView *)self iconImageView];

  if (iconImageView)
  {
    iconImageView2 = [(ICQTileView *)self iconImageView];
    [(ICQAsyncImageView *)iconImageView2 updateToImageFromURL:v11];
  }

  else
  {
    iconImageView2 = [[ICQAsyncImageView alloc] initWithURL:v11];
    [(ICQAsyncImageView *)iconImageView2 setContentMode:1];
    [(ICQAsyncImageView *)iconImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICQTileView *)self addSubview:iconImageView2];
    [(ICQTileView *)self setIconImageView:iconImageView2];
  }
}

- (id)createLabelWithText:(id)text
{
  v3 = MEMORY[0x277D756B8];
  textCopy = text;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setAdjustsFontForContentSizeCategory:1];
  [v6 setText:textCopy];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

- (void)createOrUpdateTitleLabelWithTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(ICQTileView *)self titleLabel];

  if (titleLabel)
  {
    titleLabel2 = [(ICQTileView *)self titleLabel];
    [titleLabel2 setText:titleCopy];
  }

  else
  {
    titleLabel2 = [(ICQTileView *)self createLabelWithText:titleCopy];
    [titleLabel2 setText:titleCopy];

    [titleLabel2 setNumberOfLines:0];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [titleLabel2 setFont:v6];

    [(ICQTileView *)self addSubview:titleLabel2];
    [(ICQTileView *)self setTitleLabel:titleLabel2];
  }
}

- (void)createOrUpdateMessageLabelWithMessage:(id)message
{
  messageCopy = message;
  messageLabel = [(ICQTileView *)self messageLabel];

  if (messageLabel)
  {
    messageLabel2 = [(ICQTileView *)self messageLabel];
    [messageLabel2 setText:messageCopy];
  }

  else
  {
    messageLabel2 = [(ICQTileView *)self createLabelWithText:messageCopy];
    [messageLabel2 setText:messageCopy];

    [messageLabel2 setNumberOfLines:0];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [messageLabel2 setFont:v6];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [messageLabel2 setTextColor:secondaryLabelColor];

    [(ICQTileView *)self addSubview:messageLabel2];
    [(ICQTileView *)self setMessageLabel:messageLabel2];
  }
}

- (void)createButtonsFromBubbleDetails:(id)details
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  detailsCopy = details;
  actions = [detailsCopy actions];
  v5 = [actions countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v30 = 0;
    v31 = 0;
    v7 = *v33;
    v8 = *MEMORY[0x277D7F270];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        parameters = [v10 parameters];

        if (parameters)
        {
          parameters2 = [v10 parameters];
          v13 = [parameters2 objectForKeyedSubscript:v8];

          if ([v13 isEqualToString:@"closeBtnId"])
          {
            [(ICQTileView *)self updateDismissButtonWithAction:v10];
            v31 = 1;
          }

          else if ([v13 isEqualToString:@"bubblePrimaryBtnId"])
          {
            [(ICQTileView *)self updatePrimaryButtonWithAction:v10];
            BYTE4(v30) = 1;
          }

          else if ([v13 isEqualToString:@"bubbleSecondaryBtnId"])
          {
            [(ICQTileView *)self updateSecondaryButtonWithAction:v10];
            LOBYTE(v30) = 1;
          }

          else
          {
            v14 = _ICQGetLogSystem();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = v13;
              _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Invalid action id %@ for button", buf, 0xCu);
            }
          }
        }

        else
        {
          v13 = _ICQGetLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v10;
            _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Missing parameters from action: %@", buf, 0xCu);
          }
        }
      }

      v6 = [actions countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  dismissButton = [(ICQTileView *)self dismissButton];
  [dismissButton setHidden:(v31 & 1) == 0];

  titleLabelDismissButtonSpacingConstraint = [(ICQTileView *)self titleLabelDismissButtonSpacingConstraint];
  [titleLabelDismissButtonSpacingConstraint setActive:v31 & 1];

  primaryButton = [(ICQTileView *)self primaryButton];
  if (!primaryButton)
  {
    [ICQTileView createButtonsFromBubbleDetails:];
  }

  primaryButton2 = [(ICQTileView *)self primaryButton];
  actionButtonsStack = primaryButton2;
  if ((v30 & 0x100000000) != 0)
  {
    superview = [primaryButton2 superview];

    v21 = v30;
    if (superview)
    {
      primaryButton3 = [(ICQTileView *)self primaryButton];
      [primaryButton3 removeFromSuperview];
    }

    actionButtonsStack = [(ICQTileView *)self actionButtonsStack];
    primaryButton4 = [(ICQTileView *)self primaryButton];
    [actionButtonsStack addArrangedSubview:primaryButton4];
  }

  else
  {
    [primaryButton2 removeFromSuperview];
    v21 = v30;
  }

  secondaryButton = [(ICQTileView *)self secondaryButton];
  actionButtonsStack2 = secondaryButton;
  if (v21)
  {
    superview2 = [secondaryButton superview];

    if (superview2)
    {
      secondaryButton2 = [(ICQTileView *)self secondaryButton];
      [secondaryButton2 removeFromSuperview];
    }

    actionButtonsStack2 = [(ICQTileView *)self actionButtonsStack];
    secondaryButton3 = [(ICQTileView *)self secondaryButton];
    [actionButtonsStack2 addArrangedSubview:secondaryButton3];
  }

  else
  {
    [secondaryButton removeFromSuperview];
  }
}

- (void)updateDismissButtonWithAction:(id)action
{
  actionCopy = action;
  dismissButton = [(ICQTileView *)self dismissButton];

  if (dismissButton)
  {
    dismissButton2 = [(ICQTileView *)self dismissButton];
    [dismissButton2 setLink:actionCopy];

    dismissButton3 = [(ICQTileView *)self dismissButton];
    [dismissButton3 setHidden:actionCopy == 0];
  }
}

- (void)updatePrimaryButtonWithAction:(id)action
{
  actionCopy = action;
  primaryButton = [(ICQTileView *)self primaryButton];

  if (primaryButton)
  {
    primaryButton2 = [(ICQTileView *)self primaryButton];
    text = [actionCopy text];
    [primaryButton2 setTitle:text forState:0];

    primaryButton3 = [(ICQTileView *)self primaryButton];
    [primaryButton3 setLink:actionCopy];
  }
}

- (void)updateSecondaryButtonWithAction:(id)action
{
  actionCopy = action;
  secondaryButton = [(ICQTileView *)self secondaryButton];

  if (secondaryButton)
  {
    secondaryButton2 = [(ICQTileView *)self secondaryButton];
    text = [actionCopy text];
    [secondaryButton2 setTitle:text forState:0];

    secondaryButton3 = [(ICQTileView *)self secondaryButton];
    [secondaryButton3 setLink:actionCopy];
  }
}

- (void)dismissButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Dismiss button was tapped", v20, 2u);
  }

  delegate = [(ICQLegacyBannerView *)self delegate];
  [delegate tileView:self performAction:1 parameters:0];

  v7 = MEMORY[0x277D7F370];
  link = [tappedCopy link];
  parameters = [link parameters];
  [v7 performAction:123 parameters:parameters options:0];

  reportingDetails = self->_reportingDetails;
  if (reportingDetails && [(_ICQOpportunityBubbleReportingSpecification *)reportingDetails dismissRuleType]== 2)
  {
    v11 = MEMORY[0x277D7F370];
    dimissServerParam = [(_ICQOpportunityBubbleReportingSpecification *)self->_reportingDetails dimissServerParam];
    [v11 performAction:123 parameters:dimissServerParam options:0];
  }

  else
  {
    v13 = MEMORY[0x277D7F350];
    dimissServerParam = [(ICQPremiumOffer *)self->_premiumOffer bundleIdentifier];
    link2 = [tappedCopy link];
    serverUIURL = [link2 serverUIURL];
    [v13 sendEventFor:1 withBundleID:dimissServerParam link:serverUIURL];
  }

  premiumOffer = [(ICQTileView *)self premiumOffer];
  [premiumOffer setDismissed:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = *MEMORY[0x277D7F2A8];
  premiumOffer2 = [(ICQTileView *)self premiumOffer];
  [defaultCenter postNotificationName:v18 object:premiumOffer2];
}

- (void)actionButtonTapped:(id)tapped
{
  v15 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    link = [tappedCopy link];
    text = [link text];
    v13 = 138412290;
    v14 = text;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Button with label %@ was tapped", &v13, 0xCu);
  }

  link2 = [tappedCopy link];
  [(ICQTileView *)self handleActionFromLink:link2];

  v9 = MEMORY[0x277D7F350];
  bundleIdentifier = [(ICQPremiumOffer *)self->_premiumOffer bundleIdentifier];
  link3 = [tappedCopy link];
  serverUIURL = [link3 serverUIURL];
  [v9 sendEventFor:2 withBundleID:bundleIdentifier link:serverUIURL];
}

- (BOOL)handleActionFromLink:(id)link
{
  v16 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  if (!linkCopy)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "ICQTile: action was nil, bailing", &v14, 2u);
    }

    goto LABEL_10;
  }

  delegate = [(ICQLegacyBannerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (v7 = -[ICQTileView _delegateActionForAction:](self, "_delegateActionForAction:", [linkCopy action]), -[ICQLegacyBannerView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(linkCopy, "parameters"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v8, "tileView:performAction:parameters:", self, v7, v9), v9, v8, (v7 & 1) == 0))
  {
    if (([(ICQTileView *)self _performLink:linkCopy]& 1) == 0)
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [linkCopy action];
        v12 = _ICQStringForAction();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "ICQTile: action %{public}@ not handled by delegate nor ICQTileView", &v14, 0xCu);
      }

LABEL_10:

      v10 = 0;
      goto LABEL_11;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)_launchFlowManagerWithLink:(id)link
{
  v22 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  delegate = [(ICQLegacyBannerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  delegate2 = [(ICQLegacyBannerView *)self delegate];
  v8 = [delegate2 presentingViewControllerForTileView:self];

  v9 = _ICQGetLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
LABEL_9:
      [linkCopy action];
      v18 = _ICQStringForAction();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "ICQ Tile: not performing action %{public}@ since ICQTileViewDelegate did not provide presentingViewController", &v20, 0xCu);
    }

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  if (v10)
  {
    [linkCopy action];
    v11 = _ICQStringForAction();
    v20 = 138543362;
    v21 = v11;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "ICQ Tile: perform action %{public}@", &v20, 0xCu);
  }

  v12 = [ICQPremiumFlowManager alloc];
  premiumOffer = [(ICQTileView *)self premiumOffer];
  v14 = [(ICQUpgradeFlowManager *)v12 initWithOffer:premiumOffer];

  [(ICQUpgradeFlowManager *)v14 setDelegate:self];
  flowOptions = [(ICQLegacyBannerView *)self flowOptions];
  [(ICQUpgradeFlowManager *)v14 setFlowOptions:flowOptions];

  serverUIURL = [linkCopy serverUIURL];
  [(ICQPremiumFlowManager *)v14 beginPremiumFlowWithURL:serverUIURL];

  [(ICQTileView *)self setLocalFlowManager:v14];
  v17 = 1;
  v9 = v8;
LABEL_11:

  return v17;
}

@end