@interface SUSSoftwareUpdateTitleCell
- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 updateIcon:(id)a6 showLearnMore:(BOOL)a7 delegate:(id)a8;
- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 updateIcon:(id)a6 showLearnMore:(BOOL)a7 showSplomboNotes:(BOOL)a8 delegate:(id)a9;
- (SUSUISoftwareUpdateTitleCellDelegate)delegate;
- (UIImage)gearBackgroundImage;
- (double)preferredHeightWithTable:(id)a3;
- (id)configureUpdateIcon;
- (id)newLearnMoreLabel;
- (id)newProgressBar;
- (id)newSplomboNotesLabel;
- (id)newUpdateStatusLabel;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)configureAnimatedGearViewFromImageSize:(CGSize)a3;
- (void)configureImageView;
- (void)configureProgressBar:(BOOL)a3;
- (void)configureReleaseNotesSummaryView:(BOOL)a3;
- (void)configureUpdateImageViewFromImageSize:(CGSize)a3;
- (void)configureUpdateLabelsStackViewConstraints;
- (void)configureUpdateNameLabel:(BOOL)a3;
- (void)configureUpdateStatusLabel:(BOOL)a3;
- (void)handleLearnMoreTap:(id)a3;
- (void)layoutSubviews;
- (void)setAnimatingGearView:(BOOL)a3;
- (void)setLearnMoreText:(id)a3;
- (void)setProgressDisplayStyle:(int)a3;
- (void)setPublisherText:(id)a3;
- (void)setReleaseNotesSummary:(id)a3;
- (void)setStatusMessage:(id)a3;
- (void)setStatusMessage:(id)a3 symbolizingError:(BOOL)a4;
- (void)setUpdateIcon:(id)a3;
- (void)setUpdateName:(id)a3;
- (void)setupViews;
- (void)updateConstraints;
- (void)updateProgressTintColor;
@end

@implementation SUSSoftwareUpdateTitleCell

- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v5 = v13;
  v13 = 0;
  v13 = [(SUSSoftwareUpdateTitleCell *)v5 initWithStyle:v11 reuseIdentifier:location specifier:v9 updateIcon:0 showLearnMore:1 showSplomboNotes:0 delegate:0];
  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 updateIcon:(id)a6 showLearnMore:(BOOL)a7 delegate:(id)a8
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v16 = a7;
  v15 = 0;
  objc_storeStrong(&v15, a8);
  v8 = v22;
  v22 = 0;
  v22 = [(SUSSoftwareUpdateTitleCell *)v8 initWithStyle:v20 reuseIdentifier:location specifier:v18 updateIcon:v17 showLearnMore:v16 showSplomboNotes:0 delegate:v15];
  v14 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v22, 0);
  return v14;
}

- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5 updateIcon:(id)a6 showLearnMore:(BOOL)a7 showSplomboNotes:(BOOL)a8 delegate:(id)a9
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v20 = a7;
  v19 = a8;
  v18 = 0;
  objc_storeStrong(&v18, a9);
  v9 = v26;
  v26 = 0;
  v17.receiver = v9;
  v17.super_class = SUSSoftwareUpdateTitleCell;
  v26 = [(PSTableCell *)&v17 initWithStyle:v24 reuseIdentifier:location specifier:v22];
  objc_storeStrong(&v26, v26);
  if (v26)
  {
    objc_storeWeak(&v26->_delegate, v18);
    [(SUSSoftwareUpdateTitleCell *)v26 setSelectionStyle:0];
    [(SUSSoftwareUpdateTitleCell *)v26 setHoverStyle:?];
    objc_storeStrong(&v26->_updateIcon, v21);
    v26->_showLearnMoreButton = v20;
    objc_storeStrong(&v26->_updateIconContraints, 0);
    v26->_showSplomboNotes = v19;
    [(SUSSoftwareUpdateTitleCell *)v26 setupViews];
    v12 = [(SUSSoftwareUpdateTitleCell *)v26 detailTextLabel];
    [v12 setHidden:1];
    MEMORY[0x277D82BD8](v12);
  }

  v11 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v26, 0);
  return v11;
}

- (void)updateConstraints
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSSoftwareUpdateTitleCell;
  [(SUSSoftwareUpdateTitleCell *)&v2 updateConstraints];
}

- (double)preferredHeightWithTable:(id)a3
{
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSSoftwareUpdateTitleCell *)v52 bounds];
  v50 = v3;
  v36 = [MEMORY[0x277D759A0] mainScreen];
  [v36 bounds];
  v37 = v4;
  MEMORY[0x277D82BD8](v36);
  CGSizeMake_0();
  v48 = v5;
  v49 = v6;
  if (v52->_learnMoreLabel)
  {
    [(UILabel *)v52->_learnMoreLabel sizeThatFits:v5, v6];
    v35 = v7 + 20.0;
  }

  else
  {
    v35 = 0.0;
  }

  if (v52->_splomboNotes)
  {
    [(UILabel *)v52->_splomboNotes sizeThatFits:v48, v49];
    v34 = v8 + 8.0;
  }

  else
  {
    v34 = 0.0;
  }

  v31 = [(PSWebContainerView *)v52->_releaseNotesSummaryView webView];
  v30 = [v31 scrollView];
  [v30 contentOffset];
  v46 = v9;
  v47 = v10;
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  [(PSWebContainerView *)v52->_releaseNotesSummaryView heightForWidth:v50 - 0.0];
  v45 = v11;
  v33 = [(PSWebContainerView *)v52->_releaseNotesSummaryView webView];
  v32 = [v33 scrollView];
  [v32 setContentOffset:{v46, v47}];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  [(UILabel *)v52->_updateNameLabel sizeThatFits:v48, v49];
  v44 = v12;
  v43[8] = 0;
  *v43 = v52->_progressStyle == 0;
  if (v52->_progressStyle)
  {
    [(UIProgressView *)v52->_progressBar sizeThatFits:v48, v49];
    *&v43[1] = v13 + 3.0;
  }

  [(UILabel *)v52->_updateStatusLabel sizeThatFits:v48, v49];
  v42 = v14 + 3.0;
  v28 = [(UIImageView *)v52->_imageView image];
  [(UIImage *)v28 size];
  v29 = v15;
  MEMORY[0x277D82BD8](v28);
  v41 = v44 + *&v43[1] + v42;
  if (v41 < v29)
  {
    v41 = v29;
  }

  v40 = v45;
  if (v45 > v37 / 2.0 - 26.0 - v41 - v35 - v34)
  {
    v40 = v37 / 2.0 - 26.0 - v41 - v35 - v34;
  }

  if (v40 < v37 / 4.0)
  {
    v40 = v37 / 4.0;
  }

  if (v40 >= v45)
  {
    v40 = v45;
    v22 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    v38 = 0;
    v23 = 1;
    if (([v22 isEqualToString:*MEMORY[0x277D76818]] & 1) == 0)
    {
      v39 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
      v38 = 1;
      v23 = [v39 isEqualToString:*MEMORY[0x277D767E8]];
    }

    if (v38)
    {
      MEMORY[0x277D82BD8](v39);
    }

    *&v16 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    if (v23)
    {
      v16 = v45 + 20.0;
      v40 = v45 + 20.0;
    }

    v19 = [(PSWebContainerView *)v52->_releaseNotesSummaryView webView];
    v18 = [v19 scrollView];
    [v18 setScrollEnabled:0];
    MEMORY[0x277D82BD8](v18);
    v21 = [(PSWebContainerView *)v52->_releaseNotesSummaryView webView];
    v20 = [v21 scrollView];
    [v20 setBounces:0];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
  }

  else
  {
    v25 = [(PSWebContainerView *)v52->_releaseNotesSummaryView webView];
    v24 = [v25 scrollView];
    [v24 setScrollEnabled:1];
    MEMORY[0x277D82BD8](v24);
    v27 = [(PSWebContainerView *)v52->_releaseNotesSummaryView webView];
    v26 = [v27 scrollView];
    [v26 setBounces:1];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
  }

  objc_storeStrong(location, 0);
  return v40 + v41 + v35 + v34 + 26.0;
}

- (void)layoutSubviews
{
  v9 = self;
  v8 = a2;
  v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);
  [(SUSSoftwareUpdateTitleCell *)v9 configureUpdateNameLabel:IsAccessibilityCategory, MEMORY[0x277D82BD8](v4).n128_f64[0]];
  [(SUSSoftwareUpdateTitleCell *)v9 configureUpdateStatusLabel:IsAccessibilityCategory];
  v5 = [(SUSSoftwareUpdateTitleCell *)v9 contentView];
  [v5 bringSubviewToFront:v9->_imageView];
  v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v9->_animatedGearView)
  {
    v3 = [(SUSSoftwareUpdateTitleCell *)v9 contentView];
    [v3 bringSubviewToFront:v9->_animatedGearView];
    v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  v6.receiver = v9;
  v6.super_class = SUSSoftwareUpdateTitleCell;
  [(PSTableCell *)&v6 layoutSubviews];
}

- (void)setupViews
{
  v10 = self;
  v9 = a2;
  [(SUSSoftwareUpdateTitleCell *)self configureImageView];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v3 userInterfaceIdiom] == 1;
  location = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(location);
  v5 = 0;
  if (v8)
  {
    v5 = UIContentSizeCategoryCompareToCategory(location, *MEMORY[0x277D76838]) == NSOrderedDescending;
  }

  else
  {
    v5 = UIContentSizeCategoryCompareToCategory(location, *MEMORY[0x277D76840]) == NSOrderedDescending;
  }

  [(SUSSoftwareUpdateTitleCell *)v10 configureUpdateLabelsStackViewConstraints];
  v2 = 1;
  if (!IsAccessibilityCategory)
  {
    v2 = v5;
  }

  [(SUSSoftwareUpdateTitleCell *)v10 configureReleaseNotesSummaryView:v2 & 1, v10];
  v4.receiver = v10;
  v4.super_class = SUSSoftwareUpdateTitleCell;
  [(SUSSoftwareUpdateTitleCell *)&v4 updateConstraints];
  objc_storeStrong(&location, 0);
}

- (void)configureImageView
{
  v14 = self;
  location[1] = a2;
  location[0] = [(SUSSoftwareUpdateTitleCell *)self configureUpdateIcon];
  v11 = 0;
  if (v14->_updateIcon)
  {
    updateIcon = v14->_updateIcon;
  }

  else
  {
    v12 = [(SUSSoftwareUpdateTitleCell *)v14 gearBackgroundImage];
    v11 = 1;
    updateIcon = v12;
  }

  [location[0] setImage:updateIcon];
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  v9 = [(SUSSoftwareUpdateTitleCell *)v14 contentView];
  [v9 addSubview:location[0]];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v14->_imageView, location[0]);
  if (v14->_updateIcon)
  {
    v8 = [(UIImageView *)v14->_imageView image];
    [(UIImage *)v8 size];
    [(SUSSoftwareUpdateTitleCell *)v14 configureUpdateImageViewFromImageSize:v2, v3];
    v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  else
  {
    v7 = [(UIImageView *)v14->_imageView image];
    [(UIImage *)v7 size];
    [(SUSSoftwareUpdateTitleCell *)v14 configureAnimatedGearViewFromImageSize:v5, v6];
    v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  [(UIImageView *)v14->_imageView setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellIcon", *&v4];
  objc_storeStrong(location, 0);
}

- (void)configureAnimatedGearViewFromImageSize:(CGSize)a3
{
  v36[8] = *MEMORY[0x277D85DE8];
  v3 = [(SUSSoftwareUpdateTitleCell *)self newSoftwareUpdateAnimatedIconWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  animatedGearView = self->_animatedGearView;
  self->_animatedGearView = v3;
  [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](animatedGearView).n128_f64[0]];
  v31 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  [v31 addSubview:self->_animatedGearView];
  MEMORY[0x277D82BD8](v31);
  height = a3.height;
  width = a3.width;
  if (a3.width == 0.0 || a3.height == 0.0)
  {
    width = 60.0;
    height = 60.0;
  }

  v30 = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView widthAnchor];
  v29 = [v30 constraintEqualToConstant:width];
  v36[0] = v29;
  v28 = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView heightAnchor];
  v27 = [v28 constraintEqualToConstant:height];
  v36[1] = v27;
  v26 = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView leadingAnchor];
  v25 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  v24 = [v25 leadingAnchor];
  v23 = [v26 constraintEqualToAnchor:? constant:?];
  v36[2] = v23;
  v22 = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView topAnchor];
  v21 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  v20 = [v21 topAnchor];
  v19 = [v22 constraintEqualToAnchor:17.0 constant:?];
  v36[3] = v19;
  v18 = [(UIImageView *)self->_imageView widthAnchor];
  v17 = [v18 constraintEqualToConstant:width];
  v36[4] = v17;
  v16 = [(UIImageView *)self->_imageView heightAnchor];
  v15 = [v16 constraintEqualToConstant:height];
  v36[5] = v15;
  v14 = [(UIImageView *)self->_imageView leadingAnchor];
  v13 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  v12 = [v13 leadingAnchor];
  v11 = [v14 constraintEqualToAnchor:17.0 constant:?];
  v36[6] = v11;
  v10 = [(UIImageView *)self->_imageView topAnchor];
  v9 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  v8 = [v9 topAnchor];
  v7 = [v10 constraintEqualToAnchor:17.0 constant:?];
  v36[7] = v7;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:8];
  updateIconContraints = self->_updateIconContraints;
  self->_updateIconContraints = v5;
  MEMORY[0x277D82BD8](updateIconContraints);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  [MEMORY[0x277CCAAD0] activateConstraints:{self->_updateIconContraints, MEMORY[0x277D82BD8](v30).n128_f64[0]}];
  *MEMORY[0x277D85DE8];
}

- (void)configureUpdateImageViewFromImageSize:(CGSize)a3
{
  v21[4] = *MEMORY[0x277D85DE8];
  width = a3.width;
  height = a3.height;
  if (a3.width == 0.0 || a3.height == 0.0)
  {
    width = 60.0;
    height = 60.0;
  }

  v17 = [(UIImageView *)self->_imageView widthAnchor];
  v16 = [v17 constraintEqualToConstant:width];
  v21[0] = v16;
  v15 = [*(&self->super.super.super.super.super.isa + *(v5 + 3636)) heightAnchor];
  v14 = [v15 constraintEqualToConstant:height];
  v21[1] = v14;
  v13 = [*(&self->super.super.super.super.super.isa + *(v5 + 3636)) leadingAnchor];
  v12 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  v11 = [v12 leadingAnchor];
  v10 = [v13 constraintEqualToAnchor:? constant:?];
  v21[2] = v10;
  v9 = [*(&self->super.super.super.super.super.isa + *(v5 + 3636)) topAnchor];
  v8 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  v7 = [v8 topAnchor];
  v6 = [v9 constraintEqualToAnchor:17.0 constant:?];
  v21[3] = v6;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  updateIconContraints = self->_updateIconContraints;
  self->_updateIconContraints = v3;
  MEMORY[0x277D82BD8](updateIconContraints);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  [MEMORY[0x277CCAAD0] activateConstraints:{self->_updateIconContraints, MEMORY[0x277D82BD8](v17).n128_f64[0]}];
  *MEMORY[0x277D85DE8];
}

- (id)configureUpdateIcon
{
  v5[2] = self;
  v5[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v5[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5[0] sizeToFit];
  [v5[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)configureUpdateLabelsStackViewConstraints
{
  v33[3] = *MEMORY[0x277D85DE8];
  v30 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v30);
  *&v2 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  if (!self->_updateLabelsStackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    updateLabelsStackView = self->_updateLabelsStackView;
    self->_updateLabelsStackView = v3;
    [(UIStackView *)self->_updateLabelsStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](updateLabelsStackView).n128_f64[0]];
    [(UIStackView *)self->_updateLabelsStackView setAxis:1];
  }

  v29 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  [v29 addSubview:self->_updateLabelsStackView];
  *&v5 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  if (self->_updateLabelsConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:{self->_updateLabelsConstraints, v5}];
    [(NSMutableArray *)self->_updateLabelsConstraints removeAllObjects];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    updateLabelsConstraints = self->_updateLabelsConstraints;
    self->_updateLabelsConstraints = v6;
    *&v8 = MEMORY[0x277D82BD8](updateLabelsConstraints).n128_u64[0];
  }

  v17 = self->_updateLabelsConstraints;
  v28 = [(UIStackView *)self->_updateLabelsStackView topAnchor];
  v27 = [(UIImageView *)self->_imageView topAnchor];
  v26 = [v28 constraintEqualToAnchor:?];
  v33[0] = v26;
  v25 = [(UIStackView *)self->_updateLabelsStackView leadingAnchor];
  v24 = [(UIImageView *)self->_imageView trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:12.0 constant:?];
  v33[1] = v23;
  v22 = [(UIStackView *)self->_updateLabelsStackView trailingAnchor];
  v21 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  v20 = [v21 trailingAnchor];
  v19 = [v22 constraintEqualToAnchor:-12.0 constant:?];
  v33[2] = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  [(NSMutableArray *)v17 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  *&v9 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  if (self->_progressStyle)
  {
    [(UIStackView *)self->_updateLabelsStackView setDistribution:4, v9];
    LODWORD(v10) = 1148846080;
    [(UIStackView *)self->_updateLabelsStackView setContentHuggingPriority:1 forAxis:v10];
    v13 = self->_updateLabelsConstraints;
    v16 = [(UIStackView *)self->_updateLabelsStackView bottomAnchor];
    v15 = [(UIImageView *)self->_imageView bottomAnchor];
    v14 = [v16 constraintGreaterThanOrEqualToAnchor:?];
    [(NSMutableArray *)v13 addObject:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    *&v11 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  }

  else
  {
    [(UIStackView *)self->_updateLabelsStackView setDistribution:2, v9];
    [(UIStackView *)self->_updateLabelsStackView setSpacing:3.0];
    LODWORD(v12) = 1132068864;
    [(UIStackView *)self->_updateLabelsStackView setContentHuggingPriority:1 forAxis:v12];
  }

  [(SUSSoftwareUpdateTitleCell *)self configureUpdateNameLabel:IsAccessibilityCategory, v11];
  [(SUSSoftwareUpdateTitleCell *)self configureUpdateStatusLabel:IsAccessibilityCategory];
  [(SUSSoftwareUpdateTitleCell *)self configureProgressBar:IsAccessibilityCategory];
  [(UIStackView *)self->_updateLabelsStackView layoutSubviews];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_updateLabelsConstraints];
  *MEMORY[0x277D85DE8];
}

- (void)configureUpdateNameLabel:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  if (!v9->_updateNameLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    updateNameLabel = v9->_updateNameLabel;
    v9->_updateNameLabel = v3;
    [(UILabel *)v9->_updateNameLabel setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](updateNameLabel).n128_f64[0]];
    LODWORD(v5) = 1148846080;
    [(UILabel *)v9->_updateNameLabel setContentHuggingPriority:1 forAxis:v5];
    [(UILabel *)v9->_updateNameLabel setNumberOfLines:0];
    [(UILabel *)v9->_updateNameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v9->_updateNameLabel setFont:location];
    [(UIStackView *)v9->_updateLabelsStackView addArrangedSubview:v9->_updateNameLabel];
  }

  [(UILabel *)v9->_updateNameLabel setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellUpdateName"];
  objc_storeStrong(&location, 0);
}

- (void)configureUpdateStatusLabel:(BOOL)a3
{
  if (!self->_updateStatusLabel)
  {
    v3 = [(SUSSoftwareUpdateTitleCell *)self newUpdateStatusLabel];
    updateStatusLabel = self->_updateStatusLabel;
    self->_updateStatusLabel = v3;
    [(UILabel *)self->_updateStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](updateStatusLabel).n128_f64[0]];
    LODWORD(v5) = 1148846080;
    [(UILabel *)self->_updateStatusLabel setContentHuggingPriority:1 forAxis:v5];
    [(UIStackView *)self->_updateLabelsStackView addArrangedSubview:self->_updateStatusLabel];
  }

  [(UILabel *)self->_updateStatusLabel setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellUpdateStatus"];
}

- (void)configureReleaseNotesSummaryView:(BOOL)a3
{
  v188[2] = *MEMORY[0x277D85DE8];
  v179 = self;
  v178 = a2;
  v177 = a3;
  if (!self->_releaseNotesSummaryView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3FBB0]);
    releaseNotesSummaryView = v179->_releaseNotesSummaryView;
    v179->_releaseNotesSummaryView = v3;
    MEMORY[0x277D82BD8](releaseNotesSummaryView);
  }

  if (!v179->_learnMoreLabel && (PSIsRunningInAssistant() & 1) == 0 && v179->_showLearnMoreButton)
  {
    v5 = [(SUSSoftwareUpdateTitleCell *)v179 newLearnMoreLabel];
    learnMoreLabel = v179->_learnMoreLabel;
    v179->_learnMoreLabel = v5;
    MEMORY[0x277D82BD8](learnMoreLabel);
  }

  if (!v179->_splomboNotes && v179->_showSplomboNotes)
  {
    v7 = [(SUSSoftwareUpdateTitleCell *)v179 newSplomboNotesLabel];
    splomboNotes = v179->_splomboNotes;
    v179->_splomboNotes = v7;
    MEMORY[0x277D82BD8](splomboNotes);
  }

  if (v179->_learnMoreLabel && v179->_splomboNotes)
  {
    v134 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v175[1] = v9;
    v175[2] = v10;
    v175[3] = v11;
    v175[4] = v12;
    v176 = [v134 initWithFrame:{*&v9, *&v10, *&v11, *&v12}];
    v136 = [v176 heightAnchor];
    v135 = [v136 constraintEqualToConstant:10.0];
    [v135 setActive:1];
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);
    v137 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v174[1] = v13;
    v174[2] = v14;
    v174[3] = v15;
    v174[4] = v16;
    v175[0] = [v137 initWithFrame:{*&v13, *&v14, *&v15, *&v16}];
    v139 = [v175[0] heightAnchor];
    v138 = [v139 constraintEqualToConstant:10.0];
    [v138 setActive:1];
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);
    v140 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v173[1] = v17;
    v173[2] = v18;
    v173[3] = v19;
    v173[4] = v20;
    v174[0] = [v140 initWithFrame:{*&v17, *&v18, *&v19, *&v20}];
    v142 = [v174[0] widthAnchor];
    v141 = [v142 constraintEqualToConstant:8.0];
    [v141 setActive:1];
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v142);
    v143 = objc_alloc(MEMORY[0x277D75A68]);
    v188[0] = v174[0];
    v188[1] = v179->_learnMoreLabel;
    v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:?];
    v173[0] = [v143 initWithArrangedSubviews:?];
    *&v21 = MEMORY[0x277D82BD8](v144).n128_u64[0];
    [v173[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v21}];
    [v173[0] setAutoresizesSubviews:0];
    [v173[0] setAxis:?];
    [v173[0] setAlignment:?];
    [v173[0] setDistribution:0];
    v145 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v171[1] = v22;
    v171[2] = v23;
    v171[3] = v24;
    v171[4] = v25;
    v172 = [v145 initWithFrame:{*&v22, *&v23, *&v24, *&v25}];
    v147 = [v172 heightAnchor];
    v146 = [v147 constraintEqualToConstant:4.0];
    [v146 setActive:1];
    MEMORY[0x277D82BD8](v146);
    MEMORY[0x277D82BD8](v147);
    v148 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v170[1] = v26;
    v170[2] = v27;
    v170[3] = v28;
    v170[4] = v29;
    v171[0] = [v148 initWithFrame:{*&v26, *&v27, *&v28, *&v29}];
    v150 = [v171[0] heightAnchor];
    v149 = [v150 constraintEqualToConstant:4.0];
    [v149 setActive:1];
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v150);
    v151 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v169[1] = v30;
    v169[2] = v31;
    v169[3] = v32;
    v169[4] = v33;
    v170[0] = [v151 initWithFrame:{*&v30, *&v31, *&v32, *&v33}];
    v153 = [v170[0] widthAnchor];
    v152 = [v153 constraintEqualToConstant:8.0];
    [v152 setActive:1];
    MEMORY[0x277D82BD8](v152);
    MEMORY[0x277D82BD8](v153);
    v154 = objc_alloc(MEMORY[0x277D75A68]);
    v187[0] = v170[0];
    v187[1] = v179->_splomboNotes;
    v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:2];
    v169[0] = [v154 initWithArrangedSubviews:?];
    *&v34 = MEMORY[0x277D82BD8](v155).n128_u64[0];
    [v169[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v34}];
    [v169[0] setAutoresizesSubviews:0];
    [v169[0] setAxis:0];
    [v169[0] setAlignment:1];
    [v169[0] setDistribution:0];
    v156 = objc_alloc(MEMORY[0x277D75A68]);
    v186[0] = v179->_releaseNotesSummaryView;
    v186[1] = v171[0];
    v186[2] = v169[0];
    v186[3] = v175[0];
    v186[4] = v173[0];
    v186[5] = v176;
    v157 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:6];
    v35 = [v156 initWithArrangedSubviews:?];
    releaseNotesStackView = v179->_releaseNotesStackView;
    v179->_releaseNotesStackView = v35;
    MEMORY[0x277D82BD8](releaseNotesStackView);
    MEMORY[0x277D82BD8](v157);
    objc_storeStrong(v169, 0);
    objc_storeStrong(v170, 0);
    objc_storeStrong(v171, 0);
    objc_storeStrong(&v172, 0);
    objc_storeStrong(v173, 0);
    objc_storeStrong(v174, 0);
    objc_storeStrong(v175, 0);
    objc_storeStrong(&v176, 0);
  }

  else if (v179->_learnMoreLabel)
  {
    v121 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v167[1] = v37;
    v167[2] = v38;
    v167[3] = v39;
    v167[4] = v40;
    v168 = [v121 initWithFrame:{*&v37, *&v38, *&v39, *&v40}];
    v123 = [v168 heightAnchor];
    v122 = [v123 constraintEqualToConstant:10.0];
    [v122 setActive:1];
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    v124 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v166[1] = v41;
    v166[2] = v42;
    v166[3] = v43;
    v166[4] = v44;
    v167[0] = [v124 initWithFrame:{*&v41, *&v42, *&v43, *&v44}];
    v126 = [v167[0] heightAnchor];
    v125 = [v126 constraintEqualToConstant:10.0];
    [v125 setActive:1];
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    v127 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v165[1] = v45;
    v165[2] = v46;
    v165[3] = v47;
    v165[4] = v48;
    v166[0] = [v127 initWithFrame:{*&v45, *&v46, *&v47, *&v48}];
    v129 = [v166[0] widthAnchor];
    v128 = [v129 constraintEqualToConstant:8.0];
    [v128 setActive:1];
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);
    v130 = objc_alloc(MEMORY[0x277D75A68]);
    v185[0] = v166[0];
    v185[1] = v179->_learnMoreLabel;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:2];
    v165[0] = [v130 initWithArrangedSubviews:?];
    *&v49 = MEMORY[0x277D82BD8](v131).n128_u64[0];
    [v165[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v49}];
    [v165[0] setAutoresizesSubviews:0];
    [v165[0] setAxis:?];
    [v165[0] setAlignment:1];
    [v165[0] setDistribution:0];
    v132 = objc_alloc(MEMORY[0x277D75A68]);
    v184[0] = v179->_releaseNotesSummaryView;
    v184[1] = v167[0];
    v184[2] = v165[0];
    v184[3] = v168;
    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:4];
    v50 = [v132 initWithArrangedSubviews:?];
    v51 = v179->_releaseNotesStackView;
    v179->_releaseNotesStackView = v50;
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v133);
    objc_storeStrong(v165, 0);
    objc_storeStrong(v166, 0);
    objc_storeStrong(v167, 0);
    objc_storeStrong(&v168, 0);
  }

  else if (v179->_splomboNotes)
  {
    v108 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v163[1] = v52;
    v163[2] = v53;
    v163[3] = v54;
    v163[4] = v55;
    v164 = [v108 initWithFrame:{*&v52, *&v53, *&v54, *&v55}];
    v110 = [v164 heightAnchor];
    v109 = [v110 constraintEqualToConstant:4.0];
    [v109 setActive:1];
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    v111 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v162[1] = v56;
    v162[2] = v57;
    v162[3] = v58;
    v162[4] = v59;
    v163[0] = [v111 initWithFrame:{*&v56, *&v57, *&v58, *&v59}];
    v113 = [v163[0] heightAnchor];
    v112 = [v113 constraintEqualToConstant:4.0];
    [v112 setActive:1];
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    v114 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v161[1] = v60;
    v161[2] = v61;
    v161[3] = v62;
    v161[4] = v63;
    v162[0] = [v114 initWithFrame:{*&v60, *&v61, *&v62, *&v63}];
    v116 = [v162[0] widthAnchor];
    v115 = [v116 constraintEqualToConstant:8.0];
    [v115 setActive:1];
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    v117 = objc_alloc(MEMORY[0x277D75A68]);
    v183[0] = v162[0];
    v183[1] = v179->_splomboNotes;
    v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];
    v161[0] = [v117 initWithArrangedSubviews:?];
    *&v64 = MEMORY[0x277D82BD8](v118).n128_u64[0];
    [v161[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v64}];
    [v161[0] setAutoresizesSubviews:0];
    [v161[0] setAxis:?];
    [v161[0] setAlignment:1];
    [v161[0] setDistribution:0];
    v119 = objc_alloc(MEMORY[0x277D75A68]);
    v182[0] = v179->_releaseNotesSummaryView;
    v182[1] = v163[0];
    v182[2] = v161[0];
    v182[3] = v164;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:4];
    v65 = [v119 initWithArrangedSubviews:?];
    v66 = v179->_releaseNotesStackView;
    v179->_releaseNotesStackView = v65;
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v120);
    objc_storeStrong(v161, 0);
    objc_storeStrong(v162, 0);
    objc_storeStrong(v163, 0);
    objc_storeStrong(&v164, 0);
  }

  else
  {
    v106 = objc_alloc(MEMORY[0x277D75A68]);
    v181 = v179->_releaseNotesSummaryView;
    v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
    v67 = [v106 initWithArrangedSubviews:?];
    v68 = v179->_releaseNotesStackView;
    v179->_releaseNotesStackView = v67;
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v107);
  }

  [(UIStackView *)v179->_releaseNotesStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v179->_releaseNotesStackView setAutoresizesSubviews:0];
  [(UIStackView *)v179->_releaseNotesStackView setAxis:?];
  [(UIStackView *)v179->_releaseNotesStackView setAlignment:1];
  [(UIStackView *)v179->_releaseNotesStackView setDistribution:0];
  [(UIStackView *)v179->_releaseNotesStackView setLayoutMarginsRelativeArrangement:1];
  v93 = [(SUSSoftwareUpdateTitleCell *)v179 contentView];
  [v93 addSubview:v179->_releaseNotesStackView];
  *&v69 = MEMORY[0x277D82BD8](v93).n128_u64[0];
  v97 = [(UIStackView *)v179->_releaseNotesStackView leadingAnchor];
  v96 = [(SUSSoftwareUpdateTitleCell *)v179 contentView];
  v95 = [v96 leadingAnchor];
  v94 = [v97 constraintEqualToAnchor:8.0 constant:?];
  [v94 setActive:1];
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  *&v70 = MEMORY[0x277D82BD8](v97).n128_u64[0];
  v101 = [(UIStackView *)v179->_releaseNotesStackView trailingAnchor];
  v100 = [(SUSSoftwareUpdateTitleCell *)v179 contentView];
  v99 = [v100 trailingAnchor];
  v98 = [v101 constraintEqualToAnchor:-8.0 constant:?];
  [v98 setActive:1];
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  *&v71 = MEMORY[0x277D82BD8](v101).n128_u64[0];
  v105 = [(UIStackView *)v179->_releaseNotesStackView bottomAnchor];
  v104 = [(SUSSoftwareUpdateTitleCell *)v179 contentView];
  v103 = [v104 bottomAnchor];
  v102 = [v105 constraintEqualToAnchor:?];
  [v102 setActive:1];
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](v105);
  if (v177)
  {
    v72 = MEMORY[0x277D82BE0](v179->_releaseNotesStackView);
  }

  else
  {
    v72 = MEMORY[0x277D82BE0](v179->_releaseNotesSummaryView);
  }

  v160 = v72;
  v79 = [v72 topAnchor];
  v78 = [(UIStackView *)v179->_updateLabelsStackView bottomAnchor];
  v159 = [v79 constraintEqualToAnchor:? constant:?];
  MEMORY[0x277D82BD8](v78);
  v73 = MEMORY[0x277D82BD8](v79);
  v73.n128_u32[0] = 1144750080;
  [v159 setPriority:v73.n128_f64[0]];
  [v159 setActive:1];
  v81 = [v160 topAnchor];
  v80 = [(UIImageView *)v179->_imageView bottomAnchor];
  v158 = [v81 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
  MEMORY[0x277D82BD8](v80);
  v74 = MEMORY[0x277D82BD8](v81);
  v74.n128_u32[0] = 1148846080;
  [v158 setPriority:v74.n128_f64[0]];
  [v158 setActive:1];
  v85 = [(PSWebContainerView *)v179->_releaseNotesSummaryView leadingAnchor];
  v84 = [(SUSSoftwareUpdateTitleCell *)v179 contentView];
  v83 = [v84 leadingAnchor];
  v82 = [v85 constraintEqualToAnchor:8.0 constant:?];
  [v82 setActive:1];
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  *&v75 = MEMORY[0x277D82BD8](v85).n128_u64[0];
  v89 = [(PSWebContainerView *)v179->_releaseNotesSummaryView trailingAnchor];
  v88 = [(SUSSoftwareUpdateTitleCell *)v179 contentView];
  v87 = [v88 trailingAnchor];
  v86 = [v89 constraintEqualToAnchor:-8.0 constant:?];
  [v86 setActive:1];
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  *&v76 = MEMORY[0x277D82BD8](v89).n128_u64[0];
  [(PSWebContainerView *)v179->_releaseNotesSummaryView setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellReleaseNotesSummary", v76];
  v90 = v179->_releaseNotesSummaryView;
  v92 = [(PSWebContainerView *)v90 webView];
  v180 = v92;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v180 count:1];
  [(PSWebContainerView *)v90 setAccessibilityElements:?];
  MEMORY[0x277D82BD8](v91);
  *&v77 = MEMORY[0x277D82BD8](v92).n128_u64[0];
  [(PSWebContainerView *)v179->_releaseNotesSummaryView setAccessibilityContainerType:4, v77];
  objc_storeStrong(&v158, 0);
  objc_storeStrong(&v159, 0);
  objc_storeStrong(&v160, 0);
  *MEMORY[0x277D85DE8];
}

- (void)configureProgressBar:(BOOL)a3
{
  if (!self->_progressBar)
  {
    v3 = [(SUSSoftwareUpdateTitleCell *)self newProgressBar];
    progressBar = self->_progressBar;
    self->_progressBar = v3;
    *&v5 = MEMORY[0x277D82BD8](progressBar).n128_u64[0];
    if (self->_progressStyle)
    {
      [(UIStackView *)self->_updateLabelsStackView addArrangedSubview:self->_progressBar, v5];
      [(UIProgressView *)self->_progressBar setAlpha:1.0];
      [(UIProgressView *)self->_progressBar setHidden:0];
    }

    else
    {
      [(UIProgressView *)self->_progressBar removeFromSuperview];
      [(UIProgressView *)self->_progressBar setAlpha:0.0];
      [(UIProgressView *)self->_progressBar setHidden:1];
    }
  }

  [(SUSSoftwareUpdateTitleCell *)self updateProgressTintColor];
  [(UIProgressView *)self->_progressBar setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellProgressBar"];
}

- (void)updateProgressTintColor
{
  if (self->_progressStyle == 2)
  {
    progressBar = self->_progressBar;
    v5 = [MEMORY[0x277D75348] grayColor];
    [(UIProgressView *)progressBar setProgressTintColor:?];
    MEMORY[0x277D82BD8](v5);
  }

  else if (self->_progressStyle == 1)
  {
    v2 = self->_progressBar;
    v3 = [(SUSSoftwareUpdateTitleCell *)self tintColor];
    [(UIProgressView *)v2 setProgressTintColor:?];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)setProgressDisplayStyle:(int)a3
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  if (self->_progressStyle != a3)
  {
    v20->_progressStyle = v18;
    [(SUSSoftwareUpdateTitleCell *)v20 updateProgressTintColor];
    if (v20->_progressStyle)
    {
      [(UIStackView *)v20->_updateLabelsStackView addArrangedSubview:v20->_progressBar];
      [(UIProgressView *)v20->_progressBar setAlpha:1.0];
      [(UIProgressView *)v20->_progressBar setHidden:0];
    }

    else
    {
      [(UIProgressView *)v20->_progressBar removeFromSuperview];
      [(UIProgressView *)v20->_progressBar setAlpha:0.0];
      [(UIProgressView *)v20->_progressBar setHidden:1];
    }

    [(SUSSoftwareUpdateTitleCell *)v20 configureUpdateLabelsStackViewConstraints];
    v5 = [(SUSSoftwareUpdateTitleCell *)v20 superview];
    *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v5)
    {
      [(SUSSoftwareUpdateTitleCell *)v20 layoutIfNeeded];
      v4 = MEMORY[0x277D75D18];
      v12 = MEMORY[0x277D85DD0];
      v13 = -1073741824;
      v14 = 0;
      v15 = __54__SUSSoftwareUpdateTitleCell_setProgressDisplayStyle___block_invoke;
      v16 = &unk_279CB6E20;
      v17 = MEMORY[0x277D82BE0](v20);
      v6 = MEMORY[0x277D85DD0];
      v7 = -1073741824;
      v8 = 0;
      v9 = __54__SUSSoftwareUpdateTitleCell_setProgressDisplayStyle___block_invoke_2;
      v10 = &unk_279CB6E48;
      v11 = MEMORY[0x277D82BE0](v20);
      [v4 animateWithDuration:&v12 animations:&v6 completion:0.3];
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      [(SUSSoftwareUpdateTitleCell *)v20 setNeedsUpdateConstraints];
    }
  }
}

uint64_t __54__SUSSoftwareUpdateTitleCell_setProgressDisplayStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsUpdateConstraints];
  [*(a1 + 32) updateConstraintsIfNeeded];
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __54__SUSSoftwareUpdateTitleCell_setProgressDisplayStyle___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (!*(*(result + 32) + 1208))
  {
    [*(result + 32) setNeedsUpdateConstraints];
    [*(v1 + 32) updateConstraintsIfNeeded];
    return [*(v1 + 32) layoutIfNeeded];
  }

  return result;
}

- (void)setReleaseNotesSummary:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v3 initWithData:location[0] encoding:?];
  v5 = +[SUSReleaseNotesProcessor sharedInstance];
  v8 = [(SUSReleaseNotesProcessor *)v5 normalizeHtmlReleaseNotes:v9];
  *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  releaseNotesSummaryView = v11->_releaseNotesSummaryView;
  v7 = [v8 dataUsingEncoding:{4, v4}];
  [(PSWebContainerView *)releaseNotesSummaryView setContent:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setUpdateName:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_updateNameLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setStatusMessage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_updateStatusLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setStatusMessage:(id)a3 symbolizingError:(BOOL)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v12->_updateStatusLabel setText:location[0]];
  updateStatusLabel = v12->_updateStatusLabel;
  v9 = 0;
  v7 = 0;
  if (a4)
  {
    v10 = [MEMORY[0x277D75348] systemRedColor];
    v9 = 1;
    v4 = v10;
  }

  else
  {
    v8 = [MEMORY[0x277D75348] labelColor];
    v7 = 1;
    v4 = v8;
  }

  [(UILabel *)updateStatusLabel setTextColor:v4];
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  objc_storeStrong(location, 0);
}

- (void)setLearnMoreText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_learnMoreLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setPublisherText:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)setAnimatingGearView:(BOOL)a3
{
  if (self->_animatedGearView)
  {
    [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView setAnimating:a3];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4 && v6->_animatingGearView)
  {
    [(SUSSoftwareUpdateTitleCell *)v6 setAnimatingGearView:1];
  }

  objc_storeStrong(location, 0);
}

- (void)setUpdateIcon:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(UIImage *)v16->_updateIcon isEqual:location[0]]& 1) == 0 && (v16->_updateIcon || location[0]))
  {
    objc_storeStrong(&v16->_updateIcon, location[0]);
    if (v16->_updateIconContraints)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:v16->_updateIconContraints];
    }

    if (v16->_animatedGearView)
    {
      [(SUSSoftwareUpdateAnimatedIcon *)v16->_animatedGearView removeFromSuperview];
      objc_storeStrong(&v16->_animatedGearView, 0);
    }

    imageView = v16->_imageView;
    v13 = 0;
    if (v16->_updateIcon)
    {
      updateIcon = v16->_updateIcon;
    }

    else
    {
      v14 = [(SUSSoftwareUpdateTitleCell *)v16 gearBackgroundImage];
      v13 = 1;
      updateIcon = v14;
    }

    [(UIImageView *)imageView setImage:updateIcon];
    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v16->_updateIcon)
    {
      v9 = v16;
      v10 = [(UIImageView *)v16->_imageView image];
      [(UIImage *)v10 size];
      [(SUSSoftwareUpdateTitleCell *)v9 configureUpdateImageViewFromImageSize:v3, v4];
      MEMORY[0x277D82BD8](v10);
    }

    else
    {
      v7 = v16;
      v8 = [(UIImageView *)v16->_imageView image];
      [(UIImage *)v8 size];
      [(SUSSoftwareUpdateTitleCell *)v7 configureAnimatedGearViewFromImageSize:v5, v6];
      MEMORY[0x277D82BD8](v8);
    }
  }

  objc_storeStrong(location, 0);
}

- (UIImage)gearBackgroundImage
{
  v6[2] = self;
  v6[1] = a2;
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6[0] = [v3 imageNamed:@"PreferencesIconBackground" inBundle:?];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)newProgressBar
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
  [v14[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14[0] setClipsToBounds:1];
  v6 = v14[0];
  CGAffineTransformMakeScale(&v13, 1.0, 0.75);
  [v6 setTransform:&v13];
  v7 = v14[0];
  v9 = [v14[0] heightAnchor];
  v8 = [v9 constraintEqualToConstant:6.0];
  [v7 addConstraint:?];
  MEMORY[0x277D82BD8](v8);
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [v14[0] layer];
  [v14[0] bounds];
  [v10 setCornerRadius:v3 / 2.0];
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v11 = [v14[0] layer];
  [v11 setMasksToBounds:1];
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);
  return v12;
}

- (id)newUpdateStatusLabel
{
  v8[2] = self;
  v8[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v8[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v8[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v8[0];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v5 setFont:?];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [v8[0] setNumberOfLines:{2, v3}];
  [v8[0] setLineBreakMode:0];
  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);
  return v7;
}

- (id)newSplomboNotesLabel
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15[2] = self;
  v15[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v15[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v6 = v15[0];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v6 setFont:?];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [v15[0] setNumberOfLines:{2, v3}];
  [v15[0] setLineBreakMode:0];
  [v15[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v12 localizedStringForKey:@"SPLOMBO_UPDATE_INFO" value:&stru_287B74428 table:@"Software Update"];
  v16 = *MEMORY[0x277D740C0];
  v10 = [MEMORY[0x277D75348] labelColor];
  v17[0] = v10;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v8 initWithString:v11 attributes:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  [v15[0] setAttributedText:{v14, v4}];
  [v15[0] setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellSplomboNotes"];
  v13 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
  return v13;
}

- (id)newLearnMoreLabel
{
  v22[1] = *MEMORY[0x277D85DE8];
  v20 = self;
  v19[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v19[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v19[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = v19[0];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  [v8 setFont:?];
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [v19[0] setNumberOfLines:v3];
  [v19[0] setLineBreakMode:2];
  [v19[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc(MEMORY[0x277CCAB48]);
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v14 localizedStringForKey:@"LEARN_MORE_LINK" value:&stru_287B74428 table:@"Software Update"];
  v21 = *MEMORY[0x277D740C0];
  v12 = [MEMORY[0x277D75348] systemBlueColor];
  v22[0] = v12;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v18 = [v10 initWithString:v13 attributes:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  [v19[0] setUserInteractionEnabled:{1, v4}];
  v15 = v19[0];
  v5 = objc_alloc(MEMORY[0x277D75B80]);
  v16 = [v5 initWithTarget:v20 action:sel_handleLearnMoreTap_];
  [v15 addGestureRecognizer:?];
  *&v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  [v19[0] setAttributedText:{v18, v6}];
  [v19[0] setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellLearnMore"];
  v17 = MEMORY[0x277D82BE0](v19[0]);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
  return v17;
}

- (void)handleLearnMoreTap:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v9->_delegate);
  v6 = 0;
  v5 = 0;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&v9->_delegate);
    v6 = 1;
    v5 = objc_opt_respondsToSelector();
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  MEMORY[0x277D82BD8](WeakRetained);
  if (v5)
  {
    v3 = objc_loadWeakRetained(&v9->_delegate);
    [v3 titleCell:v9 learnMoreButtonTapped:v9->_learnMoreLabel];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateTitleCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end