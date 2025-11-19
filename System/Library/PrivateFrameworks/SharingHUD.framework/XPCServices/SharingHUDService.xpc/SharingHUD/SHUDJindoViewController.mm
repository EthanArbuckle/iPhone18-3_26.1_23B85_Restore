@interface SHUDJindoViewController
- (SHUDJindoViewController)initWithNeedsButton:(BOOL)a3;
- (id)buttonView;
- (id)createSubtitleWidthConstraint:(id)a3;
- (id)formattedSubtitle:(id)a3;
- (id)iconView;
- (id)trailingJindoButton;
- (void)handleButtonTapped;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation SHUDJindoViewController

- (SHUDJindoViewController)initWithNeedsButton:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SHUDJindoViewController;
  result = [(SHUDJindoViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_needsButton = a3;
  }

  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did appear", v7, 2u);
  }

  v5 = [(SHUDJindoViewController *)self viewDidAppearHandler];

  if (v5)
  {
    v6 = [(SHUDJindoViewController *)self viewDidAppearHandler];
    v6[2]();
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did disappear", v7, 2u);
  }

  v5 = [(SHUDJindoViewController *)self viewDidDisappearHandler];

  if (v5)
  {
    v6 = [(SHUDJindoViewController *)self viewDidDisappearHandler];
    v6[2]();
  }
}

- (void)handleButtonTapped
{
  v3 = sharingHUDLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Banner button tapped", buf, 2u);
  }

  v4 = [(SHUDJindoViewController *)self buttonTapped];

  if (v4)
  {
    v5 = sharingHUDLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buttonTapped() called", v7, 2u);
    }

    v6 = [(SHUDJindoViewController *)self buttonTapped];
    v6[2]();
  }
}

- (id)formattedSubtitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UILabel);
  [v5 setText:v4];

  v6 = [UIFont sbui_systemAperturePreferredFontForTextStyle:0];
  [v5 setFont:v6];

  v7 = [v5 font];
  v8 = [v7 fontWithSize:13.0];
  [v5 setFont:v8];

  v9 = +[UIColor systemWhiteColor];
  [v5 setTextColor:v9];

  [v5 setTextAlignment:{-[SHUDJindoViewController subtitleAlignment](self, "subtitleAlignment")}];
  LODWORD(v10) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v11];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setMarqueeEnabled:1];
  [v5 setMarqueeRunning:1];

  return v5;
}

- (id)trailingJindoButton
{
  v2 = [(SHUDJindoViewController *)self trailingButton];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  v5 = [v2 titleLabel];
  [v5 setMinimumScaleFactor:0.5];

  v6 = [v2 titleLabel];
  [v6 setNumberOfLines:1];

  v7 = [v2 titleLabel];
  [v7 setAdjustsFontSizeToFitWidth:1];

  v8 = [v2 titleLabel];
  [v8 setAdjustsFontForContentSizeCategory:1];

  [v2 setContentEdgeInsets:{7.0, 12.0, 7.0, 12.0}];
  [v2 _setCornerRadius:17.0];
  v9 = +[UIColor systemRedColor];
  v10 = [v9 colorWithAlphaComponent:0.4];
  [v2 setBackgroundColor:v10];

  [v2 setUserInteractionEnabled:1];

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SHUDJindoViewController;
  [(SHUDJindoViewController *)&v3 viewDidLoad];
  self->_needsToLayoutSubviews = 1;
}

- (id)createSubtitleWidthConstraint:(id)a3
{
  v3 = a3;
  v4 = [v3 text];
  [v3 intrinsicContentSize];
  v6 = v5;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"UNLOCKED_JINDO" value:0 table:@"Localization-D73"];

  [v3 setText:v8];
  [v3 intrinsicContentSize];
  if (v6 <= v9)
  {
    v6 = v9;
  }

  [v3 setText:v4];
  v10 = [v3 widthAnchor];

  v11 = [v10 constraintGreaterThanOrEqualToConstant:v6];

  LODWORD(v12) = 1140129792;
  [v11 setPriority:v12];

  return v11;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  if (self->_needsToLayoutSubviews)
  {
    self->_needsToLayoutSubviews = 0;
    v4 = [(SHUDJindoViewController *)self view];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v5 = [(SHUDJindoViewController *)self buttonView];
    if (![(SHUDJindoViewController *)self needsButton])
    {
      [v5 setHidden:1];
    }

    v6 = [(SHUDJindoViewController *)self iconView];
    v7 = [(SHUDJindoViewController *)self view];
    [v7 addSubview:v6];

    v8 = [(SHUDJindoViewController *)self view];
    [v8 addSubview:v5];

    v72 = [(SHUDJindoViewController *)self subtitle];
    v9 = [(SHUDJindoViewController *)self formattedSubtitle:?];
    p_centerContent = &self->_centerContent;
    objc_storeStrong(&self->_centerContent, v9);
    v11 = [(SHUDJindoViewController *)self view];
    [v11 addSubview:self->_centerContent];

    v12 = [(SHUDJindoViewController *)self view];
    v13 = [v12 SBUISA_systemApertureObstructedAreaLayoutGuide];

    centerContent = self->_centerContent;
    v15 = objc_opt_respondsToSelector();
    v16 = self->_centerContent;
    if (v15)
    {
      v17 = v16;
      v18 = [(UILabel *)v17 _tightBoundingBoxLayoutGuide];
      v19 = [v18 topAnchor];
      [v13 bottomAnchor];
      v20 = v13;
      v21 = v5;
      v23 = v22 = v9;
      v24 = [v19 constraintEqualToAnchor:v23];

      p_centerContent = &self->_centerContent;
      v9 = v22;
      v5 = v21;
      v13 = v20;
    }

    else
    {
      v18 = [(UILabel *)v16 topAnchor];
      v19 = [v13 bottomAnchor];
      v24 = [v18 constraintEqualToAnchor:v19];
    }

    v68 = [(SHUDJindoViewController *)self view];
    v67 = [v68 heightAnchor];
    v66 = [v67 constraintEqualToConstant:66.67];
    v74[0] = v66;
    v64 = [v6 centerYAnchor];
    v65 = [(SHUDJindoViewController *)self view];
    v63 = [v65 centerYAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v74[1] = v62;
    v60 = [v6 centerXAnchor];
    v61 = [(SHUDJindoViewController *)self view];
    v59 = [v61 leadingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59 constant:30.0];
    v74[2] = v58;
    v57 = [v6 heightAnchor];
    v56 = [v57 constraintEqualToConstant:55.33];
    v74[3] = v56;
    v55 = [v6 widthAnchor];
    v54 = [v55 constraintEqualToConstant:55.33];
    v74[4] = v54;
    v71 = v9;
    v53 = [(SHUDJindoViewController *)self createSubtitleWidthConstraint:v9];
    v74[5] = v53;
    v51 = [(UILabel *)*p_centerContent leadingAnchor];
    v50 = [v13 leadingAnchor];
    v49 = [v51 constraintLessThanOrEqualToAnchor:v50];
    v74[6] = v49;
    v48 = [(UILabel *)*p_centerContent trailingAnchor];
    v47 = [v13 trailingAnchor];
    v46 = [v48 constraintGreaterThanOrEqualToAnchor:v47];
    v74[7] = v46;
    v74[8] = v24;
    v69 = v24;
    v45 = [(UILabel *)*p_centerContent leadingAnchor];
    v73 = v6;
    v44 = [v6 centerXAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:25.33];
    v74[9] = v43;
    v41 = [v5 centerYAnchor];
    v42 = [(SHUDJindoViewController *)self view];
    v40 = [v42 centerYAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v74[10] = v39;
    v37 = [v5 trailingAnchor];
    v38 = [(SHUDJindoViewController *)self view];
    v36 = [v38 trailingAnchor];
    v25 = [v37 constraintEqualToAnchor:v36 constant:-15.0];
    v74[11] = v25;
    v26 = [v5 leadingAnchor];
    v70 = v13;
    v27 = [v13 trailingAnchor];
    v28 = [v26 constraintGreaterThanOrEqualToAnchor:v27];
    v74[12] = v28;
    [v5 leadingAnchor];
    v30 = v29 = v5;
    v31 = [(UILabel *)*p_centerContent trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];
    v74[13] = v32;
    v33 = [NSArray arrayWithObjects:v74 count:14];
    v52 = [NSMutableArray arrayWithArray:v33];

    if (![(SHUDJindoViewController *)self needsButton])
    {
      v34 = [v29 widthAnchor];
      v35 = [v34 constraintEqualToConstant:0.0];
      [v52 addObject:v35];
    }

    [NSLayoutConstraint activateConstraints:v52];
  }
}

- (id)iconView
{
  v3 = objc_alloc_init(SHUDJindoAccessoryView);
  [(SHUDJindoAccessoryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, 82.0, 30.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(SHUDJindoViewController *)self leadingImage];
  [v4 setImage:v5];

  [v4 setContentMode:{-[SHUDJindoViewController imageContentMode](self, "imageContentMode")}];
  [(SHUDJindoAccessoryView *)v3 addSubview:v4];
  v19 = [v4 leadingAnchor];
  v18 = [(SHUDJindoAccessoryView *)v3 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v16 = [v4 trailingAnchor];
  v15 = [(SHUDJindoAccessoryView *)v3 trailingAnchor];
  v6 = [v16 constraintEqualToAnchor:v15];
  v20[1] = v6;
  v7 = [v4 bottomAnchor];
  v8 = [(SHUDJindoAccessoryView *)v3 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v20[2] = v9;
  v10 = [v4 topAnchor];
  v11 = [(SHUDJindoAccessoryView *)v3 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v20[3] = v12;
  v13 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v13];

  return v3;
}

- (id)buttonView
{
  v3 = [[SHUDJindoAccessoryView alloc] initWithFrame:0.0, 0.0, 120.0, 60.0];
  [(SHUDJindoAccessoryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(SHUDJindoViewController *)self trailingJindoButton];
  [v4 addTarget:self action:"handleButtonTapped" forControlEvents:64];
  [(SHUDJindoAccessoryView *)v3 addSubview:v4];
  v18 = [v4 leadingAnchor];
  v17 = [(SHUDJindoAccessoryView *)v3 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v15 = [v4 trailingAnchor];
  v14 = [(SHUDJindoAccessoryView *)v3 trailingAnchor];
  v5 = [v15 constraintEqualToAnchor:v14];
  v20[1] = v5;
  v6 = [v4 bottomAnchor];
  v7 = [(SHUDJindoAccessoryView *)v3 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v20[2] = v8;
  v9 = [v4 topAnchor];
  v10 = [(SHUDJindoAccessoryView *)v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  [(SHUDJindoViewController *)self setBannerButton:v4];

  return v3;
}

- (void)updateUI
{
  v3 = [(SHUDJindoViewController *)self subtitle];
  [(UILabel *)self->_centerContent setText:v3];
}

@end