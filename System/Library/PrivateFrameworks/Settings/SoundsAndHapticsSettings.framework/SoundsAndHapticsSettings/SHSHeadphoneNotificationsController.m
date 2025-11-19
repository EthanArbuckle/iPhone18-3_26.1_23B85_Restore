@interface SHSHeadphoneNotificationsController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (id)bluetoothSettingsLinkText;
- (id)createDescriptionLabel;
- (id)createScrollView;
- (id)createTitleLabel;
- (id)descriptionText;
- (id)healthLinkText;
- (id)linkText:(id)a3 withLink:(id)a4;
- (void)viewDidLoad;
@end

@implementation SHSHeadphoneNotificationsController

- (void)viewDidLoad
{
  v52[8] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = SHSHeadphoneNotificationsController;
  [(SHSHeadphoneNotificationsController *)&v51 loadView];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(SHSHeadphoneNotificationsController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(SHSHeadphoneNotificationsController *)self createScrollView];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  v7 = [(SHSHeadphoneNotificationsController *)self view];
  [v7 addSubview:self->_scrollView];

  v8 = [(SHSHeadphoneNotificationsController *)self createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  v10 = [(SHSHeadphoneNotificationsController *)self createDescriptionLabel];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v10;

  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  [(UIScrollView *)self->_scrollView addSubview:self->_descriptionLabel];
  v50 = [MEMORY[0x277CBEB18] array];
  v48 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v49 = [(SHSHeadphoneNotificationsController *)self view];
  v47 = [v49 safeAreaLayoutGuide];
  v46 = [v47 leadingAnchor];
  v45 = [v48 constraintEqualToAnchor:v46];
  v52[0] = v45;
  v43 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v44 = [(SHSHeadphoneNotificationsController *)self view];
  v42 = [v44 safeAreaLayoutGuide];
  v41 = [v42 trailingAnchor];
  v40 = [v43 constraintEqualToAnchor:v41];
  v52[1] = v40;
  v38 = [(UIScrollView *)self->_scrollView topAnchor];
  v39 = [(SHSHeadphoneNotificationsController *)self view];
  v37 = [v39 safeAreaLayoutGuide];
  v36 = [v37 topAnchor];
  v35 = [v38 constraintEqualToAnchor:v36];
  v52[2] = v35;
  v33 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v34 = [(SHSHeadphoneNotificationsController *)self view];
  v32 = [v34 safeAreaLayoutGuide];
  v31 = [v32 bottomAnchor];
  v30 = [v33 constraintEqualToAnchor:v31];
  v52[3] = v30;
  v29 = [(UILabel *)self->_titleLabel widthAnchor];
  v28 = [(UIScrollView *)self->_scrollView widthAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 multiplier:0.9];
  v52[4] = v27;
  v26 = [(UILabel *)self->_titleLabel centerXAnchor];
  v12 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v13 = [v26 constraintEqualToAnchor:v12];
  v52[5] = v13;
  v14 = [(UIView *)self->_descriptionLabel widthAnchor];
  v15 = [(UIScrollView *)self->_scrollView widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.9];
  v52[6] = v16;
  v17 = [(UIView *)self->_descriptionLabel centerXAnchor];
  v18 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v52[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
  [v50 addObjectsFromArray:v20];

  v21 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabelmarg.isa, &unk_287730868, &unk_287730878, 0);
  v22 = MEMORY[0x277CCAAD0];
  v23 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelDesc.isa, self->_titleLabel, self->_descriptionLabel, 0);
  v24 = [v22 constraintsWithVisualFormat:@"V:|-(titleLabelMargin)-[_titleLabel]-(descriptionLabelMargin)-[_descriptionLabel]-|" options:0 metrics:v21 views:v23];
  [v50 addObjectsFromArray:v24];

  [MEMORY[0x277CCAAD0] activateConstraints:v50];
  v25 = *MEMORY[0x277D85DE8];
}

- (id)linkText:(id)a3 withLink:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB48];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithString:v7 attributes:0];

  v9 = [v8 length];
  v10 = [MEMORY[0x277D3FA48] appearance];
  v11 = [v10 footerHyperlinkColor];

  v17 = *MEMORY[0x277D740C0];
  v18[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v8 setAttributes:v12 range:{0, v9}];
  v13 = *MEMORY[0x277D740E8];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:v6];

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
  v32 = [v26 fontDescriptor];
  v3 = MEMORY[0x277D74300];
  v4 = [v32 fontDescriptorWithSymbolicTraits:2];
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

  v28 = [(SHSHeadphoneNotificationsController *)self bluetoothSettingsLinkText];
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = SHS_LocalizedStringForSounds(@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_3");
  v27 = [v12 initWithString:v13];

  v14 = [(SHSHeadphoneNotificationsController *)self healthLinkText];
  v15 = objc_opt_new();
  [v15 appendAttributedString:v30];
  [v15 appendAttributedString:v9];
  [v15 appendAttributedString:v29];
  [v15 appendAttributedString:v28];
  [v15 appendAttributedString:v27];
  [v15 appendAttributedString:v14];
  v16 = [v15 length];
  v17 = [MEMORY[0x277D3FA48] appearance];
  v18 = [v17 textColor];

  v19 = *MEMORY[0x277D740A8];
  [v15 addAttribute:*MEMORY[0x277D740A8] value:v26 range:{0, v16}];
  [v15 addAttribute:*MEMORY[0x277D740C0] value:v18 range:{0, v16}];
  v20 = [v15 string];
  v21 = [v9 string];
  v22 = [v20 rangeOfString:v21];
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
  v5 = [(SHSHeadphoneNotificationsController *)self view];
  [v5 frame];
  v7 = v6;
  [v4 contentSize];
  [v4 setContentSize:v7];

  return v4;
}

- (id)createTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(SHSHeadphoneNotificationsController *)self titleText];
  [v3 setText:v4];

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
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(SHSHeadphoneNotificationsController *)self descriptionText];
  [v3 setAttributedText:v5];

  [v3 setTextAlignment:4];
  [v3 setDelegate:self];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = v7;
  if (!a6)
  {
    v9 = [v7 scheme];
    if ([v9 isEqualToString:@"prefs"])
    {
    }

    else
    {
      v10 = [v8 scheme];
      v11 = [v10 isEqualToString:@"x-apple-health"];

      if (!v11)
      {
        v12 = [MEMORY[0x277D75128] sharedApplication];
        [v12 openURL:v8 withCompletionHandler:0];
        goto LABEL_7;
      }
    }

    v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v12 openSensitiveURL:v8 withOptions:0];
LABEL_7:
  }

  return 0;
}

@end