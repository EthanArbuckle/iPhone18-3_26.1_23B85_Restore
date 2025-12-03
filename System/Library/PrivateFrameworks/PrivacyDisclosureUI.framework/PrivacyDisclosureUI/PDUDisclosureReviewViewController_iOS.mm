@interface PDUDisclosureReviewViewController_iOS
- (PDUDisclosureReviewViewControllerDelegate)delegate;
- (PDUDisclosureReviewViewController_iOS)initWithBundle:(id)bundle variant:(unint64_t)variant;
- (id)footerForSettings;
- (id)headerForAlert;
- (id)headerForSettings;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)preferredUserInterfaceStyle;
- (void)aboutPrivacyTapped;
- (void)configureForAlert;
- (void)configureForSettings;
- (void)doneTapped;
@end

@implementation PDUDisclosureReviewViewController_iOS

- (PDUDisclosureReviewViewController_iOS)initWithBundle:(id)bundle variant:(unint64_t)variant
{
  bundleCopy = bundle;
  v24.receiver = self;
  v24.super_class = PDUDisclosureReviewViewController_iOS;
  v8 = [(PDUDisclosureReviewViewController_iOS *)&v24 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundle, bundle);
    v9->_variant = variant;
    v22 = 0;
    v23 = 0;
    PDURetrieveLocalizedTitlesAndDescriptions(bundleCopy, &v23, &v22);
    v10 = v23;
    v11 = v22;
    titles = v9->_titles;
    v9->_titles = v10;
    v13 = v10;

    descriptions = v9->_descriptions;
    v9->_descriptions = v11;

    tableView = [(PDUDisclosureReviewViewController_iOS *)v9 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"DISCLOSURE_CELL"];

    tableView2 = [(PDUDisclosureReviewViewController_iOS *)v9 tableView];
    [tableView2 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"DISCLOSURE_HEADER"];

    tableView3 = [(PDUDisclosureReviewViewController_iOS *)v9 tableView];
    [tableView3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"DISCLOSURE_FOOTER"];

    pdu_aboutPrivacyBundleID = [(NSBundle *)v9->_bundle pdu_aboutPrivacyBundleID];
    obkBundleID = v9->_obkBundleID;
    v9->_obkBundleID = pdu_aboutPrivacyBundleID;

    v20 = v9;
  }

  return v9;
}

- (void)configureForAlert
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = PDULocalizedString(@"REVIEW_DONE");
  v4 = [v3 initWithTitle:v6 image:0 target:self action:sel_doneTapped menu:0];
  navigationItem = [(PDUDisclosureReviewViewController_iOS *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];
}

- (void)configureForSettings
{
  v4 = PDULocalizedNameForBundle(self->_bundle);
  navigationItem = [(PDUDisclosureReviewViewController_iOS *)self navigationItem];
  [navigationItem setTitle:v4];
}

- (void)doneTapped
{
  delegate = [(PDUDisclosureReviewViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate disclosureReviewViewControllerDidDismiss:self];
  }
}

- (void)aboutPrivacyTapped
{
  v8 = [(NSBundle *)self->_bundle pathForResource:self->_obkBundleID ofType:@"bundle"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v8];

  if (v4)
  {
    [MEMORY[0x277D37678] presenterForPrivacySplashWithBundleAtPath:v8];
  }

  else
  {
    [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:self->_obkBundleID];
  }
  v5 = ;
  [v5 setPresentingViewController:self];
  view = [(PDUDisclosureReviewViewController_iOS *)self view];
  tintColor = [view tintColor];
  [v5 setCustomTintColor:tintColor];

  [v5 present];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    goto LABEL_2;
  }

  variant = self->_variant;
  if (variant == 1)
  {
    headerForSettings = [(PDUDisclosureReviewViewController_iOS *)self headerForSettings];
  }

  else
  {
    if (variant)
    {
LABEL_2:
      v7 = 0;
      goto LABEL_8;
    }

    headerForSettings = [(PDUDisclosureReviewViewController_iOS *)self headerForAlert];
  }

  v7 = headerForSettings;
LABEL_8:

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(NSArray *)self->_titles count]- 1 == section && self->_variant == 1)
  {
    footerForSettings = [(PDUDisclosureReviewViewController_iOS *)self footerForSettings];
  }

  else
  {
    footerForSettings = 0;
  }

  return footerForSettings;
}

- (id)headerForSettings
{
  tableView = [(PDUDisclosureReviewViewController_iOS *)self tableView];
  v4 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"DISCLOSURE_HEADER"];

  defaultContentConfiguration = [v4 defaultContentConfiguration];
  v6 = MEMORY[0x277CCACA8];
  v7 = PDULocalizedString(@"LEARN_MORE_SUBTITLE");
  v8 = PDULocalizedNameForBundle(self->_bundle);
  v9 = [v6 stringWithFormat:v7, v8];
  [defaultContentConfiguration setText:v9];

  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setTransform:0];

  textProperties2 = [defaultContentConfiguration textProperties];
  [textProperties2 setLineBreakMode:0];

  textProperties3 = [defaultContentConfiguration textProperties];
  [textProperties3 setNumberOfLines:0];

  [defaultContentConfiguration directionalLayoutMargins];
  v14 = v13;
  [defaultContentConfiguration directionalLayoutMargins];
  v16 = v15;
  [defaultContentConfiguration directionalLayoutMargins];
  [defaultContentConfiguration setDirectionalLayoutMargins:{v14, v16, 32.0}];
  [v4 setContentConfiguration:defaultContentConfiguration];

  return v4;
}

- (id)footerForSettings
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (self->_obkBundleID)
  {
    tableView = [(PDUDisclosureReviewViewController_iOS *)self tableView];
    v4 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"DISCLOSURE_FOOTER"];

    defaultContentConfiguration = [v4 defaultContentConfiguration];
    [defaultContentConfiguration directionalLayoutMargins];
    v7 = v6;
    [defaultContentConfiguration directionalLayoutMargins];
    v9 = v8;
    [defaultContentConfiguration directionalLayoutMargins];
    [defaultContentConfiguration setDirectionalLayoutMargins:{32.0, v7, v9}];
    [v4 setContentConfiguration:defaultContentConfiguration];

    v47 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
    v11 = MEMORY[0x277CCACA8];
    v12 = PDULocalizedString(@"SETTINGS_ABOUT_PRIVACY");
    v13 = PDULocalizedNameForBundle(self->_bundle);
    v46 = [v11 stringWithFormat:v12, v13];

    v14 = objc_alloc(MEMORY[0x277CCA898]);
    v51 = *MEMORY[0x277D740A8];
    v52[0] = v47;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v16 = [v14 initWithString:v46 attributes:v15];
    [borderlessButtonConfiguration setAttributedTitle:v16];

    [borderlessButtonConfiguration setTitleAlignment:1];
    [borderlessButtonConfiguration setButtonSize:2];
    [borderlessButtonConfiguration contentInsets];
    v18 = v17;
    [borderlessButtonConfiguration contentInsets];
    v45 = borderlessButtonConfiguration;
    [borderlessButtonConfiguration setContentInsets:{v18, 0.0}];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __58__PDUDisclosureReviewViewController_iOS_footerForSettings__block_invoke;
    v49[3] = &unk_279AA2790;
    v49[4] = self;
    v44 = [MEMORY[0x277D750C8] actionWithHandler:v49];
    v19 = [MEMORY[0x277D75220] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:v44];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v4 contentView];
    [contentView addSubview:v19];

    contentView2 = [v4 contentView];
    leadingAnchor = [v19 leadingAnchor];
    v21 = v4;
    contentView3 = [v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[0] = v39;
    trailingAnchor = [v19 trailingAnchor];
    contentView4 = [v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v34 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v50[1] = v34;
    topAnchor = [v19 topAnchor];
    contentView5 = [v4 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[2] = v24;
    bottomAnchor = [v19 bottomAnchor];
    contentView6 = [v21 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
    [contentView2 addConstraints:v29];

    contentView7 = [v21 contentView];
    [contentView7 setNeedsLayout];
  }

  else
  {
    v21 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)headerForAlert
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277D756B8];
  v5 = self->_bundle;
  v6 = objc_alloc_init(v4);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = MEMORY[0x277CCACA8];
  v8 = PDULocalizedString(@"LEARN_MORE_TITLE");
  v9 = PDULocalizedNameForBundle(v5);

  v10 = [v7 stringWithFormat:v8, v9];

  [v6 setText:v10];
  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769A8] weight:*MEMORY[0x277D743F8]];
  [v6 setFont:v11];

  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];
  LODWORD(v12) = 1148846080;
  [v6 setContentHuggingPriority:1 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v13];

  [array addObject:v6];
  v14 = MEMORY[0x277D756B8];
  v15 = self->_bundle;
  v16 = objc_alloc_init(v14);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x277CCACA8];
  v18 = PDULocalizedString(@"LEARN_MORE_SUBTITLE");
  v19 = PDULocalizedNameForBundle(v15);

  v20 = [v17 stringWithFormat:v18, v19];

  [v16 setText:v20];
  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v16 setFont:v21];

  [v16 setNumberOfLines:0];
  [v16 setTextAlignment:1];
  LODWORD(v22) = 1148846080;
  [v16 setContentHuggingPriority:1 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v23];

  [array addObject:v16];
  if (self->_obkBundleID)
  {
    borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
    v25 = MEMORY[0x277CCACA8];
    v26 = PDULocalizedString(@"ABOUT_PRIVACY");
    v27 = PDULocalizedNameForBundle(self->_bundle);
    v28 = [v25 stringWithFormat:v26, v27];
    [borderlessButtonConfiguration setTitle:v28];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __55__PDUDisclosureReviewViewController_iOS_headerForAlert__block_invoke;
    v36[3] = &unk_279AA2790;
    v36[4] = self;
    v29 = [MEMORY[0x277D750C8] actionWithHandler:v36];
    v30 = [MEMORY[0x277D75220] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:v29];
    [array addObject:v30];
  }

  v31 = stackForViews(array);
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  tableView = [(PDUDisclosureReviewViewController_iOS *)self tableView];
  v33 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"DISCLOSURE_HEADER"];

  contentView = [v33 contentView];
  fillViewWithNewSubview(contentView, v31);

  return v33;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"DISCLOSURE_CELL" forIndexPath:pathCopy];
  [v7 setSelectionStyle:0];
  subtitleCellConfiguration = [MEMORY[0x277D756E0] subtitleCellConfiguration];
  v9 = -[NSArray objectAtIndexedSubscript:](self->_descriptions, "objectAtIndexedSubscript:", [pathCopy section]);
  [subtitleCellConfiguration setSecondaryText:v9];

  titles = self->_titles;
  section = [pathCopy section];

  v12 = [(NSArray *)titles objectAtIndexedSubscript:section];
  [subtitleCellConfiguration setText:v12];

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v13];

  v15 = MEMORY[0x277D74300];
  textProperties = [subtitleCellConfiguration textProperties];
  font = [textProperties font];
  [font pointSize];
  v18 = *MEMORY[0x277D74420];
  v19 = [v15 systemFontOfSize:? weight:?];
  textProperties2 = [subtitleCellConfiguration textProperties];
  [textProperties2 setFont:v19];

  [subtitleCellConfiguration setTextToSecondaryTextVerticalPadding:8.0];
  [subtitleCellConfiguration directionalLayoutMargins];
  v22 = v21;
  [subtitleCellConfiguration directionalLayoutMargins];
  [subtitleCellConfiguration setDirectionalLayoutMargins:{16.0, v22, 16.0}];
  [v7 setContentConfiguration:subtitleCellConfiguration];

  return v7;
}

- (int64_t)preferredUserInterfaceStyle
{
  presentingViewController = [(PDUDisclosureReviewViewController_iOS *)self presentingViewController];
  preferredUserInterfaceStyle = [presentingViewController preferredUserInterfaceStyle];

  return preferredUserInterfaceStyle;
}

- (PDUDisclosureReviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end