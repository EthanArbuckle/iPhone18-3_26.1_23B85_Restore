@interface PDUDisclosureReviewViewController_iOS
- (PDUDisclosureReviewViewControllerDelegate)delegate;
- (PDUDisclosureReviewViewController_iOS)initWithBundle:(id)a3 variant:(unint64_t)a4;
- (id)footerForSettings;
- (id)headerForAlert;
- (id)headerForSettings;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)preferredUserInterfaceStyle;
- (void)aboutPrivacyTapped;
- (void)configureForAlert;
- (void)configureForSettings;
- (void)doneTapped;
@end

@implementation PDUDisclosureReviewViewController_iOS

- (PDUDisclosureReviewViewController_iOS)initWithBundle:(id)a3 variant:(unint64_t)a4
{
  v7 = a3;
  v24.receiver = self;
  v24.super_class = PDUDisclosureReviewViewController_iOS;
  v8 = [(PDUDisclosureReviewViewController_iOS *)&v24 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundle, a3);
    v9->_variant = a4;
    v22 = 0;
    v23 = 0;
    PDURetrieveLocalizedTitlesAndDescriptions(v7, &v23, &v22);
    v10 = v23;
    v11 = v22;
    titles = v9->_titles;
    v9->_titles = v10;
    v13 = v10;

    descriptions = v9->_descriptions;
    v9->_descriptions = v11;

    v15 = [(PDUDisclosureReviewViewController_iOS *)v9 tableView];
    [v15 registerClass:objc_opt_class() forCellReuseIdentifier:@"DISCLOSURE_CELL"];

    v16 = [(PDUDisclosureReviewViewController_iOS *)v9 tableView];
    [v16 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"DISCLOSURE_HEADER"];

    v17 = [(PDUDisclosureReviewViewController_iOS *)v9 tableView];
    [v17 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"DISCLOSURE_FOOTER"];

    v18 = [(NSBundle *)v9->_bundle pdu_aboutPrivacyBundleID];
    obkBundleID = v9->_obkBundleID;
    v9->_obkBundleID = v18;

    v20 = v9;
  }

  return v9;
}

- (void)configureForAlert
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = PDULocalizedString(@"REVIEW_DONE");
  v4 = [v3 initWithTitle:v6 image:0 target:self action:sel_doneTapped menu:0];
  v5 = [(PDUDisclosureReviewViewController_iOS *)self navigationItem];
  [v5 setRightBarButtonItem:v4];
}

- (void)configureForSettings
{
  v4 = PDULocalizedNameForBundle(self->_bundle);
  v3 = [(PDUDisclosureReviewViewController_iOS *)self navigationItem];
  [v3 setTitle:v4];
}

- (void)doneTapped
{
  v3 = [(PDUDisclosureReviewViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 disclosureReviewViewControllerDidDismiss:self];
  }
}

- (void)aboutPrivacyTapped
{
  v8 = [(NSBundle *)self->_bundle pathForResource:self->_obkBundleID ofType:@"bundle"];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v8];

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
  v6 = [(PDUDisclosureReviewViewController_iOS *)self view];
  v7 = [v6 tintColor];
  [v5 setCustomTintColor:v7];

  [v5 present];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    goto LABEL_2;
  }

  variant = self->_variant;
  if (variant == 1)
  {
    v9 = [(PDUDisclosureReviewViewController_iOS *)self headerForSettings];
  }

  else
  {
    if (variant)
    {
LABEL_2:
      v7 = 0;
      goto LABEL_8;
    }

    v9 = [(PDUDisclosureReviewViewController_iOS *)self headerForAlert];
  }

  v7 = v9;
LABEL_8:

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(NSArray *)self->_titles count]- 1 == a4 && self->_variant == 1)
  {
    v5 = [(PDUDisclosureReviewViewController_iOS *)self footerForSettings];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)headerForSettings
{
  v3 = [(PDUDisclosureReviewViewController_iOS *)self tableView];
  v4 = [v3 dequeueReusableHeaderFooterViewWithIdentifier:@"DISCLOSURE_HEADER"];

  v5 = [v4 defaultContentConfiguration];
  v6 = MEMORY[0x277CCACA8];
  v7 = PDULocalizedString(@"LEARN_MORE_SUBTITLE");
  v8 = PDULocalizedNameForBundle(self->_bundle);
  v9 = [v6 stringWithFormat:v7, v8];
  [v5 setText:v9];

  v10 = [v5 textProperties];
  [v10 setTransform:0];

  v11 = [v5 textProperties];
  [v11 setLineBreakMode:0];

  v12 = [v5 textProperties];
  [v12 setNumberOfLines:0];

  [v5 directionalLayoutMargins];
  v14 = v13;
  [v5 directionalLayoutMargins];
  v16 = v15;
  [v5 directionalLayoutMargins];
  [v5 setDirectionalLayoutMargins:{v14, v16, 32.0}];
  [v4 setContentConfiguration:v5];

  return v4;
}

- (id)footerForSettings
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (self->_obkBundleID)
  {
    v3 = [(PDUDisclosureReviewViewController_iOS *)self tableView];
    v4 = [v3 dequeueReusableHeaderFooterViewWithIdentifier:@"DISCLOSURE_FOOTER"];

    v5 = [v4 defaultContentConfiguration];
    [v5 directionalLayoutMargins];
    v7 = v6;
    [v5 directionalLayoutMargins];
    v9 = v8;
    [v5 directionalLayoutMargins];
    [v5 setDirectionalLayoutMargins:{32.0, v7, v9}];
    [v4 setContentConfiguration:v5];

    v47 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v10 = [MEMORY[0x277D75230] borderlessButtonConfiguration];
    v11 = MEMORY[0x277CCACA8];
    v12 = PDULocalizedString(@"SETTINGS_ABOUT_PRIVACY");
    v13 = PDULocalizedNameForBundle(self->_bundle);
    v46 = [v11 stringWithFormat:v12, v13];

    v14 = objc_alloc(MEMORY[0x277CCA898]);
    v51 = *MEMORY[0x277D740A8];
    v52[0] = v47;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v16 = [v14 initWithString:v46 attributes:v15];
    [v10 setAttributedTitle:v16];

    [v10 setTitleAlignment:1];
    [v10 setButtonSize:2];
    [v10 contentInsets];
    v18 = v17;
    [v10 contentInsets];
    v45 = v10;
    [v10 setContentInsets:{v18, 0.0}];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __58__PDUDisclosureReviewViewController_iOS_footerForSettings__block_invoke;
    v49[3] = &unk_279AA2790;
    v49[4] = self;
    v44 = [MEMORY[0x277D750C8] actionWithHandler:v49];
    v19 = [MEMORY[0x277D75220] buttonWithConfiguration:v10 primaryAction:v44];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v4 contentView];
    [v20 addSubview:v19];

    v48 = [v4 contentView];
    v42 = [v19 leadingAnchor];
    v21 = v4;
    v43 = [v4 contentView];
    v41 = [v43 layoutMarginsGuide];
    v40 = [v41 leadingAnchor];
    v39 = [v42 constraintEqualToAnchor:v40];
    v50[0] = v39;
    v37 = [v19 trailingAnchor];
    v38 = [v4 contentView];
    v36 = [v38 layoutMarginsGuide];
    v35 = [v36 trailingAnchor];
    v34 = [v37 constraintLessThanOrEqualToAnchor:v35];
    v50[1] = v34;
    v33 = [v19 topAnchor];
    v22 = [v4 contentView];
    v23 = [v22 topAnchor];
    v24 = [v33 constraintEqualToAnchor:v23];
    v50[2] = v24;
    v25 = [v19 bottomAnchor];
    v26 = [v21 contentView];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v50[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
    [v48 addConstraints:v29];

    v30 = [v21 contentView];
    [v30 setNeedsLayout];
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
  v3 = [MEMORY[0x277CBEB18] array];
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

  [v3 addObject:v6];
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

  [v3 addObject:v16];
  if (self->_obkBundleID)
  {
    v24 = [MEMORY[0x277D75230] borderlessButtonConfiguration];
    v25 = MEMORY[0x277CCACA8];
    v26 = PDULocalizedString(@"ABOUT_PRIVACY");
    v27 = PDULocalizedNameForBundle(self->_bundle);
    v28 = [v25 stringWithFormat:v26, v27];
    [v24 setTitle:v28];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __55__PDUDisclosureReviewViewController_iOS_headerForAlert__block_invoke;
    v36[3] = &unk_279AA2790;
    v36[4] = self;
    v29 = [MEMORY[0x277D750C8] actionWithHandler:v36];
    v30 = [MEMORY[0x277D75220] buttonWithConfiguration:v24 primaryAction:v29];
    [v3 addObject:v30];
  }

  v31 = stackForViews(v3);
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(PDUDisclosureReviewViewController_iOS *)self tableView];
  v33 = [v32 dequeueReusableHeaderFooterViewWithIdentifier:@"DISCLOSURE_HEADER"];

  v34 = [v33 contentView];
  fillViewWithNewSubview(v34, v31);

  return v33;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"DISCLOSURE_CELL" forIndexPath:v6];
  [v7 setSelectionStyle:0];
  v8 = [MEMORY[0x277D756E0] subtitleCellConfiguration];
  v9 = -[NSArray objectAtIndexedSubscript:](self->_descriptions, "objectAtIndexedSubscript:", [v6 section]);
  [v8 setSecondaryText:v9];

  titles = self->_titles;
  v11 = [v6 section];

  v12 = [(NSArray *)titles objectAtIndexedSubscript:v11];
  [v8 setText:v12];

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  v14 = [v8 secondaryTextProperties];
  [v14 setFont:v13];

  v15 = MEMORY[0x277D74300];
  v16 = [v8 textProperties];
  v17 = [v16 font];
  [v17 pointSize];
  v18 = *MEMORY[0x277D74420];
  v19 = [v15 systemFontOfSize:? weight:?];
  v20 = [v8 textProperties];
  [v20 setFont:v19];

  [v8 setTextToSecondaryTextVerticalPadding:8.0];
  [v8 directionalLayoutMargins];
  v22 = v21;
  [v8 directionalLayoutMargins];
  [v8 setDirectionalLayoutMargins:{16.0, v22, 16.0}];
  [v7 setContentConfiguration:v8];

  return v7;
}

- (int64_t)preferredUserInterfaceStyle
{
  v2 = [(PDUDisclosureReviewViewController_iOS *)self presentingViewController];
  v3 = [v2 preferredUserInterfaceStyle];

  return v3;
}

- (PDUDisclosureReviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end