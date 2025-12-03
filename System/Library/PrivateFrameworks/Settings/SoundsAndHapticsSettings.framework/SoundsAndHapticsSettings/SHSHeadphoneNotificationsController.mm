@interface SHSHeadphoneNotificationsController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (id)bluetoothSettingsLinkText;
- (id)createDescriptionLabel;
- (id)createScrollView;
- (id)createTitleLabel;
- (id)descriptionText;
- (id)healthLinkText;
- (id)linkText:(id)text withLink:(id)link;
- (void)viewDidLoad;
@end

@implementation SHSHeadphoneNotificationsController

- (void)viewDidLoad
{
  v52[8] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = SHSHeadphoneNotificationsController;
  [(SHSHeadphoneNotificationsController *)&v51 loadView];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(SHSHeadphoneNotificationsController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  createScrollView = [(SHSHeadphoneNotificationsController *)self createScrollView];
  scrollView = self->_scrollView;
  self->_scrollView = createScrollView;

  view2 = [(SHSHeadphoneNotificationsController *)self view];
  [view2 addSubview:self->_scrollView];

  createTitleLabel = [(SHSHeadphoneNotificationsController *)self createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = createTitleLabel;

  createDescriptionLabel = [(SHSHeadphoneNotificationsController *)self createDescriptionLabel];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = createDescriptionLabel;

  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  [(UIScrollView *)self->_scrollView addSubview:self->_descriptionLabel];
  array = [MEMORY[0x277CBEB18] array];
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view3 = [(SHSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[0] = v45;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view4 = [(SHSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v52[1] = v40;
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view5 = [(SHSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v52[2] = v35;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view6 = [(SHSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v52[3] = v30;
  widthAnchor = [(UILabel *)self->_titleLabel widthAnchor];
  widthAnchor2 = [(UIScrollView *)self->_scrollView widthAnchor];
  v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.9];
  v52[4] = v27;
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  centerXAnchor2 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v52[5] = v13;
  widthAnchor3 = [(UIView *)self->_descriptionLabel widthAnchor];
  widthAnchor4 = [(UIScrollView *)self->_scrollView widthAnchor];
  v16 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.9];
  v52[6] = v16;
  centerXAnchor3 = [(UIView *)self->_descriptionLabel centerXAnchor];
  centerXAnchor4 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v52[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
  [array addObjectsFromArray:v20];

  v21 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabelmarg.isa, &unk_287730868, &unk_287730878, 0);
  v22 = MEMORY[0x277CCAAD0];
  v23 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelDesc.isa, self->_titleLabel, self->_descriptionLabel, 0);
  v24 = [v22 constraintsWithVisualFormat:@"V:|-(titleLabelMargin)-[_titleLabel]-(descriptionLabelMargin)-[_descriptionLabel]-|" options:0 metrics:v21 views:v23];
  [array addObjectsFromArray:v24];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v25 = *MEMORY[0x277D85DE8];
}

- (id)linkText:(id)text withLink:(id)link
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB48];
  linkCopy = link;
  textCopy = text;
  v8 = [[v5 alloc] initWithString:textCopy attributes:0];

  v9 = [v8 length];
  appearance = [MEMORY[0x277D3FA48] appearance];
  footerHyperlinkColor = [appearance footerHyperlinkColor];

  v17 = *MEMORY[0x277D740C0];
  v18[0] = footerHyperlinkColor;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v8 setAttributes:v12 range:{0, v9}];
  v13 = *MEMORY[0x277D740E8];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:linkCopy];

  [v8 addAttribute:v13 value:v14 range:{0, v9}];
  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)bluetoothSettingsLinkText
{
  v3 = SHS_LocalizedStringForSounds(@"CLASSIFY_BLUETOOTH_DEVICES_IN_SETTINGS_LINK");
  v4 = [(SHSHeadphoneNotificationsController *)self linkText:v3 withLink:@"prefs:root=Bluetooth"];

  return v4;
}

- (id)healthLinkText
{
  v3 = SHS_LocalizedStringForSounds(@"LEARN_MORE_IN_HEALTH_LINK");
  v4 = [(SHSHeadphoneNotificationsController *)self linkText:v3 withLink:@"x-apple-Health://HearingAppPlugin.healthplugin/SafeHeadphoneListening"];

  return v4;
}

- (id)descriptionText
{
  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  fontDescriptor = [v26 fontDescriptor];
  v3 = MEMORY[0x277D74300];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  v31 = [v3 fontWithDescriptor:v4 size:0.0];

  v5 = objc_alloc(MEMORY[0x277CCA898]);
  v6 = SHS_LocalizedStringForSounds(@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_1");
  v30 = [v5 initWithString:v6];

  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v8 = SHS_LocalizedStringForSounds(@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_SUBTITLE");
  v9 = [v7 initWithString:v8];

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = SHS_LocalizedStringForSounds(@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_2");
  v29 = [v10 initWithString:v11];

  bluetoothSettingsLinkText = [(SHSHeadphoneNotificationsController *)self bluetoothSettingsLinkText];
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = SHS_LocalizedStringForSounds(@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_3");
  v27 = [v12 initWithString:v13];

  healthLinkText = [(SHSHeadphoneNotificationsController *)self healthLinkText];
  v15 = objc_opt_new();
  [v15 appendAttributedString:v30];
  [v15 appendAttributedString:v9];
  [v15 appendAttributedString:v29];
  [v15 appendAttributedString:bluetoothSettingsLinkText];
  [v15 appendAttributedString:v27];
  [v15 appendAttributedString:healthLinkText];
  v16 = [v15 length];
  appearance = [MEMORY[0x277D3FA48] appearance];
  textColor = [appearance textColor];

  v19 = *MEMORY[0x277D740A8];
  [v15 addAttribute:*MEMORY[0x277D740A8] value:v26 range:{0, v16}];
  [v15 addAttribute:*MEMORY[0x277D740C0] value:textColor range:{0, v16}];
  string = [v15 string];
  string2 = [v9 string];
  v22 = [string rangeOfString:string2];
  v24 = v23;

  [v15 addAttribute:v19 value:v31 range:{v22, v24}];
  [v15 addAttribute:*MEMORY[0x277D741F0] value:MEMORY[0x277CBEC28] range:{0, v16}];

  return v15;
}

- (id)createScrollView
{
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentInsetAdjustmentBehavior:2];
  [v4 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v4 setScrollEnabled:1];
  [v4 setShowsVerticalScrollIndicator:1];
  view = [(SHSHeadphoneNotificationsController *)self view];
  [view frame];
  v7 = v6;
  [v4 contentSize];
  [v4 setContentSize:v7];

  return v4;
}

- (id)createTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleText = [(SHSHeadphoneNotificationsController *)self titleText];
  [v3 setText:titleText];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  LODWORD(v5) = 1036831949;
  [v3 _setHyphenationFactor:v5];
  [v3 setLineBreakMode:0];
  v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] variant:1024];
  [v3 setFont:v6];

  return v3;
}

- (id)createDescriptionLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v3 setEditable:0];
  [v3 setSelectable:1];
  [v3 setScrollEnabled:0];
  [v3 _setInteractiveTextSelectionDisabled:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  descriptionText = [(SHSHeadphoneNotificationsController *)self descriptionText];
  [v3 setAttributedText:descriptionText];

  [v3 setTextAlignment:4];
  [v3 setDelegate:self];

  return v3;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  v8 = lCopy;
  if (!interaction)
  {
    scheme = [lCopy scheme];
    if ([scheme isEqualToString:@"prefs"])
    {
    }

    else
    {
      scheme2 = [v8 scheme];
      v11 = [scheme2 isEqualToString:@"x-apple-health"];

      if (!v11)
      {
        mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
        [mEMORY[0x277D75128] openURL:v8 withCompletionHandler:0];
        goto LABEL_7;
      }
    }

    mEMORY[0x277D75128] = [MEMORY[0x277CC1E80] defaultWorkspace];
    [mEMORY[0x277D75128] openSensitiveURL:v8 withOptions:0];
LABEL_7:
  }

  return 0;
}

@end