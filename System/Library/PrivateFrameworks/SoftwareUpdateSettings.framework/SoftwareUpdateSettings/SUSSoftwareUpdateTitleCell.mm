@interface SUSSoftwareUpdateTitleCell
- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier updateIcon:(id)icon showLearnMore:(BOOL)more delegate:(id)delegate;
- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier updateIcon:(id)icon showLearnMore:(BOOL)more showSplomboNotes:(BOOL)notes delegate:(id)delegate;
- (SUSUISoftwareUpdateTitleCellDelegate)delegate;
- (UIImage)gearBackgroundImage;
- (double)preferredHeightWithTable:(id)table;
- (id)configureUpdateIcon;
- (id)newLearnMoreLabel;
- (id)newProgressBar;
- (id)newSplomboNotesLabel;
- (id)newUpdateStatusLabel;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)configureAnimatedGearViewFromImageSize:(CGSize)size;
- (void)configureImageView;
- (void)configureProgressBar:(BOOL)bar;
- (void)configureReleaseNotesSummaryView:(BOOL)view;
- (void)configureUpdateImageViewFromImageSize:(CGSize)size;
- (void)configureUpdateLabelsStackViewConstraints;
- (void)configureUpdateNameLabel:(BOOL)label;
- (void)configureUpdateStatusLabel:(BOOL)label;
- (void)handleLearnMoreTap:(id)tap;
- (void)layoutSubviews;
- (void)setAnimatingGearView:(BOOL)view;
- (void)setLearnMoreText:(id)text;
- (void)setProgressDisplayStyle:(int)style;
- (void)setPublisherText:(id)text;
- (void)setReleaseNotesSummary:(id)summary;
- (void)setStatusMessage:(id)message;
- (void)setStatusMessage:(id)message symbolizingError:(BOOL)error;
- (void)setUpdateIcon:(id)icon;
- (void)setUpdateName:(id)name;
- (void)setupViews;
- (void)updateConstraints;
- (void)updateProgressTintColor;
@end

@implementation SUSSoftwareUpdateTitleCell

- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  selfCopy = self;
  v12 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v9 = 0;
  objc_storeStrong(&v9, specifier);
  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUSSoftwareUpdateTitleCell *)v5 initWithStyle:styleCopy reuseIdentifier:location specifier:v9 updateIcon:0 showLearnMore:1 showSplomboNotes:0 delegate:0];
  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier updateIcon:(id)icon showLearnMore:(BOOL)more delegate:(id)delegate
{
  selfCopy = self;
  v21 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v18 = 0;
  objc_storeStrong(&v18, specifier);
  v17 = 0;
  objc_storeStrong(&v17, icon);
  moreCopy = more;
  v15 = 0;
  objc_storeStrong(&v15, delegate);
  v8 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUSSoftwareUpdateTitleCell *)v8 initWithStyle:styleCopy reuseIdentifier:location specifier:v18 updateIcon:v17 showLearnMore:moreCopy showSplomboNotes:0 delegate:v15];
  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (SUSSoftwareUpdateTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier updateIcon:(id)icon showLearnMore:(BOOL)more showSplomboNotes:(BOOL)notes delegate:(id)delegate
{
  selfCopy = self;
  v25 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v22 = 0;
  objc_storeStrong(&v22, specifier);
  v21 = 0;
  objc_storeStrong(&v21, icon);
  moreCopy = more;
  notesCopy = notes;
  v18 = 0;
  objc_storeStrong(&v18, delegate);
  v9 = selfCopy;
  selfCopy = 0;
  v17.receiver = v9;
  v17.super_class = SUSSoftwareUpdateTitleCell;
  selfCopy = [(PSTableCell *)&v17 initWithStyle:styleCopy reuseIdentifier:location specifier:v22];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_delegate, v18);
    [(SUSSoftwareUpdateTitleCell *)selfCopy setSelectionStyle:0];
    [(SUSSoftwareUpdateTitleCell *)selfCopy setHoverStyle:?];
    objc_storeStrong(&selfCopy->_updateIcon, v21);
    selfCopy->_showLearnMoreButton = moreCopy;
    objc_storeStrong(&selfCopy->_updateIconContraints, 0);
    selfCopy->_showSplomboNotes = notesCopy;
    [(SUSSoftwareUpdateTitleCell *)selfCopy setupViews];
    detailTextLabel = [(SUSSoftwareUpdateTitleCell *)selfCopy detailTextLabel];
    [detailTextLabel setHidden:1];
    MEMORY[0x277D82BD8](detailTextLabel);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)updateConstraints
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSSoftwareUpdateTitleCell;
  [(SUSSoftwareUpdateTitleCell *)&v2 updateConstraints];
}

- (double)preferredHeightWithTable:(id)table
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  [(SUSSoftwareUpdateTitleCell *)selfCopy bounds];
  v50 = v3;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v37 = v4;
  MEMORY[0x277D82BD8](mainScreen);
  CGSizeMake_0();
  v48 = v5;
  v49 = v6;
  if (selfCopy->_learnMoreLabel)
  {
    [(UILabel *)selfCopy->_learnMoreLabel sizeThatFits:v5, v6];
    v35 = v7 + 20.0;
  }

  else
  {
    v35 = 0.0;
  }

  if (selfCopy->_splomboNotes)
  {
    [(UILabel *)selfCopy->_splomboNotes sizeThatFits:v48, v49];
    v34 = v8 + 8.0;
  }

  else
  {
    v34 = 0.0;
  }

  webView = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView webView];
  scrollView = [webView scrollView];
  [scrollView contentOffset];
  v46 = v9;
  v47 = v10;
  MEMORY[0x277D82BD8](scrollView);
  MEMORY[0x277D82BD8](webView);
  [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView heightForWidth:v50 - 0.0];
  v45 = v11;
  webView2 = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 setContentOffset:{v46, v47}];
  MEMORY[0x277D82BD8](scrollView2);
  MEMORY[0x277D82BD8](webView2);
  [(UILabel *)selfCopy->_updateNameLabel sizeThatFits:v48, v49];
  v44 = v12;
  v43[8] = 0;
  *v43 = selfCopy->_progressStyle == 0;
  if (selfCopy->_progressStyle)
  {
    [(UIProgressView *)selfCopy->_progressBar sizeThatFits:v48, v49];
    *&v43[1] = v13 + 3.0;
  }

  [(UILabel *)selfCopy->_updateStatusLabel sizeThatFits:v48, v49];
  v42 = v14 + 3.0;
  image = [(UIImageView *)selfCopy->_imageView image];
  [(UIImage *)image size];
  v29 = v15;
  MEMORY[0x277D82BD8](image);
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
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    v38 = 0;
    v23 = 1;
    if (([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76818]] & 1) == 0)
    {
      preferredContentSizeCategory2 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
      v38 = 1;
      v23 = [preferredContentSizeCategory2 isEqualToString:*MEMORY[0x277D767E8]];
    }

    if (v38)
    {
      MEMORY[0x277D82BD8](preferredContentSizeCategory2);
    }

    *&v16 = MEMORY[0x277D82BD8](preferredContentSizeCategory).n128_u64[0];
    if (v23)
    {
      v16 = v45 + 20.0;
      v40 = v45 + 20.0;
    }

    webView3 = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView webView];
    scrollView3 = [webView3 scrollView];
    [scrollView3 setScrollEnabled:0];
    MEMORY[0x277D82BD8](scrollView3);
    webView4 = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView webView];
    scrollView4 = [webView4 scrollView];
    [scrollView4 setBounces:0];
    MEMORY[0x277D82BD8](scrollView4);
    MEMORY[0x277D82BD8](webView4);
  }

  else
  {
    webView5 = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView webView];
    scrollView5 = [webView5 scrollView];
    [scrollView5 setScrollEnabled:1];
    MEMORY[0x277D82BD8](scrollView5);
    webView6 = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView webView];
    scrollView6 = [webView6 scrollView];
    [scrollView6 setBounces:1];
    MEMORY[0x277D82BD8](scrollView6);
    MEMORY[0x277D82BD8](webView6);
  }

  objc_storeStrong(location, 0);
  return v40 + v41 + v35 + v34 + 26.0;
}

- (void)layoutSubviews
{
  selfCopy = self;
  v8 = a2;
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  [(SUSSoftwareUpdateTitleCell *)selfCopy configureUpdateNameLabel:IsAccessibilityCategory, MEMORY[0x277D82BD8](preferredContentSizeCategory).n128_f64[0]];
  [(SUSSoftwareUpdateTitleCell *)selfCopy configureUpdateStatusLabel:IsAccessibilityCategory];
  contentView = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  [contentView bringSubviewToFront:selfCopy->_imageView];
  v2 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  if (selfCopy->_animatedGearView)
  {
    contentView2 = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
    [contentView2 bringSubviewToFront:selfCopy->_animatedGearView];
    v2 = MEMORY[0x277D82BD8](contentView2).n128_u64[0];
  }

  v6.receiver = selfCopy;
  v6.super_class = SUSSoftwareUpdateTitleCell;
  [(PSTableCell *)&v6 layoutSubviews];
}

- (void)setupViews
{
  selfCopy = self;
  v9 = a2;
  [(SUSSoftwareUpdateTitleCell *)self configureImageView];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v8 = [currentDevice userInterfaceIdiom] == 1;
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

  [(SUSSoftwareUpdateTitleCell *)selfCopy configureUpdateLabelsStackViewConstraints];
  v2 = 1;
  if (!IsAccessibilityCategory)
  {
    v2 = v5;
  }

  [(SUSSoftwareUpdateTitleCell *)selfCopy configureReleaseNotesSummaryView:v2 & 1, selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = SUSSoftwareUpdateTitleCell;
  [(SUSSoftwareUpdateTitleCell *)&v4 updateConstraints];
  objc_storeStrong(&location, 0);
}

- (void)configureImageView
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUSSoftwareUpdateTitleCell *)self configureUpdateIcon];
  v11 = 0;
  if (selfCopy->_updateIcon)
  {
    updateIcon = selfCopy->_updateIcon;
  }

  else
  {
    gearBackgroundImage = [(SUSSoftwareUpdateTitleCell *)selfCopy gearBackgroundImage];
    v11 = 1;
    updateIcon = gearBackgroundImage;
  }

  [location[0] setImage:updateIcon];
  if (v11)
  {
    MEMORY[0x277D82BD8](gearBackgroundImage);
  }

  contentView = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  [contentView addSubview:location[0]];
  MEMORY[0x277D82BD8](contentView);
  objc_storeStrong(&selfCopy->_imageView, location[0]);
  if (selfCopy->_updateIcon)
  {
    image = [(UIImageView *)selfCopy->_imageView image];
    [(UIImage *)image size];
    [(SUSSoftwareUpdateTitleCell *)selfCopy configureUpdateImageViewFromImageSize:v2, v3];
    v4 = MEMORY[0x277D82BD8](image).n128_u64[0];
  }

  else
  {
    image2 = [(UIImageView *)selfCopy->_imageView image];
    [(UIImage *)image2 size];
    [(SUSSoftwareUpdateTitleCell *)selfCopy configureAnimatedGearViewFromImageSize:v5, v6];
    v4 = MEMORY[0x277D82BD8](image2).n128_u64[0];
  }

  [(UIImageView *)selfCopy->_imageView setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellIcon", *&v4];
  objc_storeStrong(location, 0);
}

- (void)configureAnimatedGearViewFromImageSize:(CGSize)size
{
  v36[8] = *MEMORY[0x277D85DE8];
  v3 = [(SUSSoftwareUpdateTitleCell *)self newSoftwareUpdateAnimatedIconWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  animatedGearView = self->_animatedGearView;
  self->_animatedGearView = v3;
  [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](animatedGearView).n128_f64[0]];
  contentView = [(SUSSoftwareUpdateTitleCell *)self contentView];
  [contentView addSubview:self->_animatedGearView];
  MEMORY[0x277D82BD8](contentView);
  height = size.height;
  width = size.width;
  if (size.width == 0.0 || size.height == 0.0)
  {
    width = 60.0;
    height = 60.0;
  }

  widthAnchor = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView widthAnchor];
  v29 = [widthAnchor constraintEqualToConstant:width];
  v36[0] = v29;
  heightAnchor = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:height];
  v36[1] = v27;
  leadingAnchor = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView leadingAnchor];
  contentView2 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:? constant:?];
  v36[2] = v23;
  topAnchor = [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView topAnchor];
  contentView3 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:17.0 constant:?];
  v36[3] = v19;
  widthAnchor2 = [(UIImageView *)self->_imageView widthAnchor];
  v17 = [widthAnchor2 constraintEqualToConstant:width];
  v36[4] = v17;
  heightAnchor2 = [(UIImageView *)self->_imageView heightAnchor];
  v15 = [heightAnchor2 constraintEqualToConstant:height];
  v36[5] = v15;
  leadingAnchor3 = [(UIImageView *)self->_imageView leadingAnchor];
  contentView4 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v11 = [leadingAnchor3 constraintEqualToAnchor:17.0 constant:?];
  v36[6] = v11;
  topAnchor3 = [(UIImageView *)self->_imageView topAnchor];
  contentView5 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  topAnchor4 = [contentView5 topAnchor];
  v7 = [topAnchor3 constraintEqualToAnchor:17.0 constant:?];
  v36[7] = v7;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:8];
  updateIconContraints = self->_updateIconContraints;
  self->_updateIconContraints = v5;
  MEMORY[0x277D82BD8](updateIconContraints);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](contentView5);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](contentView3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](contentView2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v29);
  [MEMORY[0x277CCAAD0] activateConstraints:{self->_updateIconContraints, MEMORY[0x277D82BD8](widthAnchor).n128_f64[0]}];
  *MEMORY[0x277D85DE8];
}

- (void)configureUpdateImageViewFromImageSize:(CGSize)size
{
  v21[4] = *MEMORY[0x277D85DE8];
  width = size.width;
  height = size.height;
  if (size.width == 0.0 || size.height == 0.0)
  {
    width = 60.0;
    height = 60.0;
  }

  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:width];
  v21[0] = v16;
  heightAnchor = [*(&self->super.super.super.super.super.isa + *(v5 + 3636)) heightAnchor];
  v14 = [heightAnchor constraintEqualToConstant:height];
  v21[1] = v14;
  leadingAnchor = [*(&self->super.super.super.super.super.isa + *(v5 + 3636)) leadingAnchor];
  contentView = [(SUSSoftwareUpdateTitleCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:? constant:?];
  v21[2] = v10;
  topAnchor = [*(&self->super.super.super.super.super.isa + *(v5 + 3636)) topAnchor];
  contentView2 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:17.0 constant:?];
  v21[3] = v6;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  updateIconContraints = self->_updateIconContraints;
  self->_updateIconContraints = v3;
  MEMORY[0x277D82BD8](updateIconContraints);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](contentView2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](contentView);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v16);
  [MEMORY[0x277CCAAD0] activateConstraints:{self->_updateIconContraints, MEMORY[0x277D82BD8](widthAnchor).n128_f64[0]}];
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
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  *&v2 = MEMORY[0x277D82BD8](preferredContentSizeCategory).n128_u64[0];
  if (!self->_updateLabelsStackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    updateLabelsStackView = self->_updateLabelsStackView;
    self->_updateLabelsStackView = v3;
    [(UIStackView *)self->_updateLabelsStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](updateLabelsStackView).n128_f64[0]];
    [(UIStackView *)self->_updateLabelsStackView setAxis:1];
  }

  contentView = [(SUSSoftwareUpdateTitleCell *)self contentView];
  [contentView addSubview:self->_updateLabelsStackView];
  *&v5 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
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
  topAnchor = [(UIStackView *)self->_updateLabelsStackView topAnchor];
  topAnchor2 = [(UIImageView *)self->_imageView topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:?];
  v33[0] = v26;
  leadingAnchor = [(UIStackView *)self->_updateLabelsStackView leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:12.0 constant:?];
  v33[1] = v23;
  trailingAnchor2 = [(UIStackView *)self->_updateLabelsStackView trailingAnchor];
  contentView2 = [(SUSSoftwareUpdateTitleCell *)self contentView];
  trailingAnchor3 = [contentView2 trailingAnchor];
  v19 = [trailingAnchor2 constraintEqualToAnchor:-12.0 constant:?];
  v33[2] = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  [(NSMutableArray *)v17 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](contentView2);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](topAnchor2);
  *&v9 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  if (self->_progressStyle)
  {
    [(UIStackView *)self->_updateLabelsStackView setDistribution:4, v9];
    LODWORD(v10) = 1148846080;
    [(UIStackView *)self->_updateLabelsStackView setContentHuggingPriority:1 forAxis:v10];
    v13 = self->_updateLabelsConstraints;
    bottomAnchor = [(UIStackView *)self->_updateLabelsStackView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)self->_imageView bottomAnchor];
    v14 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:?];
    [(NSMutableArray *)v13 addObject:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](bottomAnchor2);
    *&v11 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
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

- (void)configureUpdateNameLabel:(BOOL)label
{
  selfCopy = self;
  v8 = a2;
  labelCopy = label;
  location = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  if (!selfCopy->_updateNameLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    updateNameLabel = selfCopy->_updateNameLabel;
    selfCopy->_updateNameLabel = v3;
    [(UILabel *)selfCopy->_updateNameLabel setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](updateNameLabel).n128_f64[0]];
    LODWORD(v5) = 1148846080;
    [(UILabel *)selfCopy->_updateNameLabel setContentHuggingPriority:1 forAxis:v5];
    [(UILabel *)selfCopy->_updateNameLabel setNumberOfLines:0];
    [(UILabel *)selfCopy->_updateNameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)selfCopy->_updateNameLabel setFont:location];
    [(UIStackView *)selfCopy->_updateLabelsStackView addArrangedSubview:selfCopy->_updateNameLabel];
  }

  [(UILabel *)selfCopy->_updateNameLabel setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellUpdateName"];
  objc_storeStrong(&location, 0);
}

- (void)configureUpdateStatusLabel:(BOOL)label
{
  if (!self->_updateStatusLabel)
  {
    newUpdateStatusLabel = [(SUSSoftwareUpdateTitleCell *)self newUpdateStatusLabel];
    updateStatusLabel = self->_updateStatusLabel;
    self->_updateStatusLabel = newUpdateStatusLabel;
    [(UILabel *)self->_updateStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](updateStatusLabel).n128_f64[0]];
    LODWORD(v5) = 1148846080;
    [(UILabel *)self->_updateStatusLabel setContentHuggingPriority:1 forAxis:v5];
    [(UIStackView *)self->_updateLabelsStackView addArrangedSubview:self->_updateStatusLabel];
  }

  [(UILabel *)self->_updateStatusLabel setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellUpdateStatus"];
}

- (void)configureReleaseNotesSummaryView:(BOOL)view
{
  v188[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v178 = a2;
  viewCopy = view;
  if (!self->_releaseNotesSummaryView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3FBB0]);
    releaseNotesSummaryView = selfCopy->_releaseNotesSummaryView;
    selfCopy->_releaseNotesSummaryView = v3;
    MEMORY[0x277D82BD8](releaseNotesSummaryView);
  }

  if (!selfCopy->_learnMoreLabel && (PSIsRunningInAssistant() & 1) == 0 && selfCopy->_showLearnMoreButton)
  {
    newLearnMoreLabel = [(SUSSoftwareUpdateTitleCell *)selfCopy newLearnMoreLabel];
    learnMoreLabel = selfCopy->_learnMoreLabel;
    selfCopy->_learnMoreLabel = newLearnMoreLabel;
    MEMORY[0x277D82BD8](learnMoreLabel);
  }

  if (!selfCopy->_splomboNotes && selfCopy->_showSplomboNotes)
  {
    newSplomboNotesLabel = [(SUSSoftwareUpdateTitleCell *)selfCopy newSplomboNotesLabel];
    splomboNotes = selfCopy->_splomboNotes;
    selfCopy->_splomboNotes = newSplomboNotesLabel;
    MEMORY[0x277D82BD8](splomboNotes);
  }

  if (selfCopy->_learnMoreLabel && selfCopy->_splomboNotes)
  {
    v134 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v175[1] = v9;
    v175[2] = v10;
    v175[3] = v11;
    v175[4] = v12;
    v176 = [v134 initWithFrame:{*&v9, *&v10, *&v11, *&v12}];
    heightAnchor = [v176 heightAnchor];
    v135 = [heightAnchor constraintEqualToConstant:10.0];
    [v135 setActive:1];
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](heightAnchor);
    v137 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v174[1] = v13;
    v174[2] = v14;
    v174[3] = v15;
    v174[4] = v16;
    v175[0] = [v137 initWithFrame:{*&v13, *&v14, *&v15, *&v16}];
    heightAnchor2 = [v175[0] heightAnchor];
    v138 = [heightAnchor2 constraintEqualToConstant:10.0];
    [v138 setActive:1];
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](heightAnchor2);
    v140 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v173[1] = v17;
    v173[2] = v18;
    v173[3] = v19;
    v173[4] = v20;
    v174[0] = [v140 initWithFrame:{*&v17, *&v18, *&v19, *&v20}];
    widthAnchor = [v174[0] widthAnchor];
    v141 = [widthAnchor constraintEqualToConstant:8.0];
    [v141 setActive:1];
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](widthAnchor);
    v143 = objc_alloc(MEMORY[0x277D75A68]);
    v188[0] = v174[0];
    v188[1] = selfCopy->_learnMoreLabel;
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
    heightAnchor3 = [v172 heightAnchor];
    v146 = [heightAnchor3 constraintEqualToConstant:4.0];
    [v146 setActive:1];
    MEMORY[0x277D82BD8](v146);
    MEMORY[0x277D82BD8](heightAnchor3);
    v148 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v170[1] = v26;
    v170[2] = v27;
    v170[3] = v28;
    v170[4] = v29;
    v171[0] = [v148 initWithFrame:{*&v26, *&v27, *&v28, *&v29}];
    heightAnchor4 = [v171[0] heightAnchor];
    v149 = [heightAnchor4 constraintEqualToConstant:4.0];
    [v149 setActive:1];
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](heightAnchor4);
    v151 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v169[1] = v30;
    v169[2] = v31;
    v169[3] = v32;
    v169[4] = v33;
    v170[0] = [v151 initWithFrame:{*&v30, *&v31, *&v32, *&v33}];
    widthAnchor2 = [v170[0] widthAnchor];
    v152 = [widthAnchor2 constraintEqualToConstant:8.0];
    [v152 setActive:1];
    MEMORY[0x277D82BD8](v152);
    MEMORY[0x277D82BD8](widthAnchor2);
    v154 = objc_alloc(MEMORY[0x277D75A68]);
    v187[0] = v170[0];
    v187[1] = selfCopy->_splomboNotes;
    v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:2];
    v169[0] = [v154 initWithArrangedSubviews:?];
    *&v34 = MEMORY[0x277D82BD8](v155).n128_u64[0];
    [v169[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v34}];
    [v169[0] setAutoresizesSubviews:0];
    [v169[0] setAxis:0];
    [v169[0] setAlignment:1];
    [v169[0] setDistribution:0];
    v156 = objc_alloc(MEMORY[0x277D75A68]);
    v186[0] = selfCopy->_releaseNotesSummaryView;
    v186[1] = v171[0];
    v186[2] = v169[0];
    v186[3] = v175[0];
    v186[4] = v173[0];
    v186[5] = v176;
    v157 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:6];
    v35 = [v156 initWithArrangedSubviews:?];
    releaseNotesStackView = selfCopy->_releaseNotesStackView;
    selfCopy->_releaseNotesStackView = v35;
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

  else if (selfCopy->_learnMoreLabel)
  {
    v121 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v167[1] = v37;
    v167[2] = v38;
    v167[3] = v39;
    v167[4] = v40;
    v168 = [v121 initWithFrame:{*&v37, *&v38, *&v39, *&v40}];
    heightAnchor5 = [v168 heightAnchor];
    v122 = [heightAnchor5 constraintEqualToConstant:10.0];
    [v122 setActive:1];
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](heightAnchor5);
    v124 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v166[1] = v41;
    v166[2] = v42;
    v166[3] = v43;
    v166[4] = v44;
    v167[0] = [v124 initWithFrame:{*&v41, *&v42, *&v43, *&v44}];
    heightAnchor6 = [v167[0] heightAnchor];
    v125 = [heightAnchor6 constraintEqualToConstant:10.0];
    [v125 setActive:1];
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](heightAnchor6);
    v127 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v165[1] = v45;
    v165[2] = v46;
    v165[3] = v47;
    v165[4] = v48;
    v166[0] = [v127 initWithFrame:{*&v45, *&v46, *&v47, *&v48}];
    widthAnchor3 = [v166[0] widthAnchor];
    v128 = [widthAnchor3 constraintEqualToConstant:8.0];
    [v128 setActive:1];
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](widthAnchor3);
    v130 = objc_alloc(MEMORY[0x277D75A68]);
    v185[0] = v166[0];
    v185[1] = selfCopy->_learnMoreLabel;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:2];
    v165[0] = [v130 initWithArrangedSubviews:?];
    *&v49 = MEMORY[0x277D82BD8](v131).n128_u64[0];
    [v165[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v49}];
    [v165[0] setAutoresizesSubviews:0];
    [v165[0] setAxis:?];
    [v165[0] setAlignment:1];
    [v165[0] setDistribution:0];
    v132 = objc_alloc(MEMORY[0x277D75A68]);
    v184[0] = selfCopy->_releaseNotesSummaryView;
    v184[1] = v167[0];
    v184[2] = v165[0];
    v184[3] = v168;
    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:4];
    v50 = [v132 initWithArrangedSubviews:?];
    v51 = selfCopy->_releaseNotesStackView;
    selfCopy->_releaseNotesStackView = v50;
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v133);
    objc_storeStrong(v165, 0);
    objc_storeStrong(v166, 0);
    objc_storeStrong(v167, 0);
    objc_storeStrong(&v168, 0);
  }

  else if (selfCopy->_splomboNotes)
  {
    v108 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v163[1] = v52;
    v163[2] = v53;
    v163[3] = v54;
    v163[4] = v55;
    v164 = [v108 initWithFrame:{*&v52, *&v53, *&v54, *&v55}];
    heightAnchor7 = [v164 heightAnchor];
    v109 = [heightAnchor7 constraintEqualToConstant:4.0];
    [v109 setActive:1];
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](heightAnchor7);
    v111 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v162[1] = v56;
    v162[2] = v57;
    v162[3] = v58;
    v162[4] = v59;
    v163[0] = [v111 initWithFrame:{*&v56, *&v57, *&v58, *&v59}];
    heightAnchor8 = [v163[0] heightAnchor];
    v112 = [heightAnchor8 constraintEqualToConstant:4.0];
    [v112 setActive:1];
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](heightAnchor8);
    v114 = objc_alloc(MEMORY[0x277D75D18]);
    CGRectMake();
    v161[1] = v60;
    v161[2] = v61;
    v161[3] = v62;
    v161[4] = v63;
    v162[0] = [v114 initWithFrame:{*&v60, *&v61, *&v62, *&v63}];
    widthAnchor4 = [v162[0] widthAnchor];
    v115 = [widthAnchor4 constraintEqualToConstant:8.0];
    [v115 setActive:1];
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](widthAnchor4);
    v117 = objc_alloc(MEMORY[0x277D75A68]);
    v183[0] = v162[0];
    v183[1] = selfCopy->_splomboNotes;
    v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];
    v161[0] = [v117 initWithArrangedSubviews:?];
    *&v64 = MEMORY[0x277D82BD8](v118).n128_u64[0];
    [v161[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v64}];
    [v161[0] setAutoresizesSubviews:0];
    [v161[0] setAxis:?];
    [v161[0] setAlignment:1];
    [v161[0] setDistribution:0];
    v119 = objc_alloc(MEMORY[0x277D75A68]);
    v182[0] = selfCopy->_releaseNotesSummaryView;
    v182[1] = v163[0];
    v182[2] = v161[0];
    v182[3] = v164;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:4];
    v65 = [v119 initWithArrangedSubviews:?];
    v66 = selfCopy->_releaseNotesStackView;
    selfCopy->_releaseNotesStackView = v65;
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
    v181 = selfCopy->_releaseNotesSummaryView;
    v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
    v67 = [v106 initWithArrangedSubviews:?];
    v68 = selfCopy->_releaseNotesStackView;
    selfCopy->_releaseNotesStackView = v67;
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v107);
  }

  [(UIStackView *)selfCopy->_releaseNotesStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)selfCopy->_releaseNotesStackView setAutoresizesSubviews:0];
  [(UIStackView *)selfCopy->_releaseNotesStackView setAxis:?];
  [(UIStackView *)selfCopy->_releaseNotesStackView setAlignment:1];
  [(UIStackView *)selfCopy->_releaseNotesStackView setDistribution:0];
  [(UIStackView *)selfCopy->_releaseNotesStackView setLayoutMarginsRelativeArrangement:1];
  contentView = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  [contentView addSubview:selfCopy->_releaseNotesStackView];
  *&v69 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  leadingAnchor = [(UIStackView *)selfCopy->_releaseNotesStackView leadingAnchor];
  contentView2 = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v94 = [leadingAnchor constraintEqualToAnchor:8.0 constant:?];
  [v94 setActive:1];
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](contentView2);
  *&v70 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
  trailingAnchor = [(UIStackView *)selfCopy->_releaseNotesStackView trailingAnchor];
  contentView3 = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v98 = [trailingAnchor constraintEqualToAnchor:-8.0 constant:?];
  [v98 setActive:1];
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](contentView3);
  *&v71 = MEMORY[0x277D82BD8](trailingAnchor).n128_u64[0];
  bottomAnchor = [(UIStackView *)selfCopy->_releaseNotesStackView bottomAnchor];
  contentView4 = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v102 = [bottomAnchor constraintEqualToAnchor:?];
  [v102 setActive:1];
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](bottomAnchor);
  if (viewCopy)
  {
    v72 = MEMORY[0x277D82BE0](selfCopy->_releaseNotesStackView);
  }

  else
  {
    v72 = MEMORY[0x277D82BE0](selfCopy->_releaseNotesSummaryView);
  }

  v160 = v72;
  topAnchor = [v72 topAnchor];
  bottomAnchor3 = [(UIStackView *)selfCopy->_updateLabelsStackView bottomAnchor];
  v159 = [topAnchor constraintEqualToAnchor:? constant:?];
  MEMORY[0x277D82BD8](bottomAnchor3);
  v73 = MEMORY[0x277D82BD8](topAnchor);
  v73.n128_u32[0] = 1144750080;
  [v159 setPriority:v73.n128_f64[0]];
  [v159 setActive:1];
  topAnchor2 = [v160 topAnchor];
  bottomAnchor4 = [(UIImageView *)selfCopy->_imageView bottomAnchor];
  v158 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:4.0 constant:?];
  MEMORY[0x277D82BD8](bottomAnchor4);
  v74 = MEMORY[0x277D82BD8](topAnchor2);
  v74.n128_u32[0] = 1148846080;
  [v158 setPriority:v74.n128_f64[0]];
  [v158 setActive:1];
  leadingAnchor3 = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView leadingAnchor];
  contentView5 = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v82 = [leadingAnchor3 constraintEqualToAnchor:8.0 constant:?];
  [v82 setActive:1];
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](contentView5);
  *&v75 = MEMORY[0x277D82BD8](leadingAnchor3).n128_u64[0];
  trailingAnchor3 = [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView trailingAnchor];
  contentView6 = [(SUSSoftwareUpdateTitleCell *)selfCopy contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v86 = [trailingAnchor3 constraintEqualToAnchor:-8.0 constant:?];
  [v86 setActive:1];
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](contentView6);
  *&v76 = MEMORY[0x277D82BD8](trailingAnchor3).n128_u64[0];
  [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView setAccessibilityIdentifier:@"SUSSoftwareUpdateTitleCellReleaseNotesSummary", v76];
  v90 = selfCopy->_releaseNotesSummaryView;
  webView = [(PSWebContainerView *)v90 webView];
  v180 = webView;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v180 count:1];
  [(PSWebContainerView *)v90 setAccessibilityElements:?];
  MEMORY[0x277D82BD8](v91);
  *&v77 = MEMORY[0x277D82BD8](webView).n128_u64[0];
  [(PSWebContainerView *)selfCopy->_releaseNotesSummaryView setAccessibilityContainerType:4, v77];
  objc_storeStrong(&v158, 0);
  objc_storeStrong(&v159, 0);
  objc_storeStrong(&v160, 0);
  *MEMORY[0x277D85DE8];
}

- (void)configureProgressBar:(BOOL)bar
{
  if (!self->_progressBar)
  {
    newProgressBar = [(SUSSoftwareUpdateTitleCell *)self newProgressBar];
    progressBar = self->_progressBar;
    self->_progressBar = newProgressBar;
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
    grayColor = [MEMORY[0x277D75348] grayColor];
    [(UIProgressView *)progressBar setProgressTintColor:?];
    MEMORY[0x277D82BD8](grayColor);
  }

  else if (self->_progressStyle == 1)
  {
    v2 = self->_progressBar;
    tintColor = [(SUSSoftwareUpdateTitleCell *)self tintColor];
    [(UIProgressView *)v2 setProgressTintColor:?];
    MEMORY[0x277D82BD8](tintColor);
  }
}

- (void)setProgressDisplayStyle:(int)style
{
  selfCopy = self;
  v19 = a2;
  styleCopy = style;
  if (self->_progressStyle != style)
  {
    selfCopy->_progressStyle = styleCopy;
    [(SUSSoftwareUpdateTitleCell *)selfCopy updateProgressTintColor];
    if (selfCopy->_progressStyle)
    {
      [(UIStackView *)selfCopy->_updateLabelsStackView addArrangedSubview:selfCopy->_progressBar];
      [(UIProgressView *)selfCopy->_progressBar setAlpha:1.0];
      [(UIProgressView *)selfCopy->_progressBar setHidden:0];
    }

    else
    {
      [(UIProgressView *)selfCopy->_progressBar removeFromSuperview];
      [(UIProgressView *)selfCopy->_progressBar setAlpha:0.0];
      [(UIProgressView *)selfCopy->_progressBar setHidden:1];
    }

    [(SUSSoftwareUpdateTitleCell *)selfCopy configureUpdateLabelsStackViewConstraints];
    superview = [(SUSSoftwareUpdateTitleCell *)selfCopy superview];
    *&v3 = MEMORY[0x277D82BD8](superview).n128_u64[0];
    if (superview)
    {
      [(SUSSoftwareUpdateTitleCell *)selfCopy layoutIfNeeded];
      v4 = MEMORY[0x277D75D18];
      v12 = MEMORY[0x277D85DD0];
      v13 = -1073741824;
      v14 = 0;
      v15 = __54__SUSSoftwareUpdateTitleCell_setProgressDisplayStyle___block_invoke;
      v16 = &unk_279CB6E20;
      v17 = MEMORY[0x277D82BE0](selfCopy);
      v6 = MEMORY[0x277D85DD0];
      v7 = -1073741824;
      v8 = 0;
      v9 = __54__SUSSoftwareUpdateTitleCell_setProgressDisplayStyle___block_invoke_2;
      v10 = &unk_279CB6E48;
      v11 = MEMORY[0x277D82BE0](selfCopy);
      [v4 animateWithDuration:&v12 animations:&v6 completion:0.3];
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      [(SUSSoftwareUpdateTitleCell *)selfCopy setNeedsUpdateConstraints];
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

- (void)setReleaseNotesSummary:(id)summary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, summary);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v3 initWithData:location[0] encoding:?];
  v5 = +[SUSReleaseNotesProcessor sharedInstance];
  v8 = [(SUSReleaseNotesProcessor *)v5 normalizeHtmlReleaseNotes:v9];
  *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  releaseNotesSummaryView = selfCopy->_releaseNotesSummaryView;
  v7 = [v8 dataUsingEncoding:{4, v4}];
  [(PSWebContainerView *)releaseNotesSummaryView setContent:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setUpdateName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  [(UILabel *)selfCopy->_updateNameLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setStatusMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  [(UILabel *)selfCopy->_updateStatusLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setStatusMessage:(id)message symbolizingError:(BOOL)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  [(UILabel *)selfCopy->_updateStatusLabel setText:location[0]];
  updateStatusLabel = selfCopy->_updateStatusLabel;
  v9 = 0;
  v7 = 0;
  if (error)
  {
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v9 = 1;
    v4 = systemRedColor;
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v7 = 1;
    v4 = labelColor;
  }

  [(UILabel *)updateStatusLabel setTextColor:v4];
  if (v7)
  {
    MEMORY[0x277D82BD8](labelColor);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](systemRedColor);
  }

  objc_storeStrong(location, 0);
}

- (void)setLearnMoreText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  [(UILabel *)selfCopy->_learnMoreLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setPublisherText:(id)text
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  objc_storeStrong(location, 0);
}

- (void)setAnimatingGearView:(BOOL)view
{
  if (self->_animatedGearView)
  {
    [(SUSSoftwareUpdateAnimatedIcon *)self->_animatedGearView setAnimating:view];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stop);
  if (finished && selfCopy->_animatingGearView)
  {
    [(SUSSoftwareUpdateTitleCell *)selfCopy setAnimatingGearView:1];
  }

  objc_storeStrong(location, 0);
}

- (void)setUpdateIcon:(id)icon
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, icon);
  if (([(UIImage *)selfCopy->_updateIcon isEqual:location[0]]& 1) == 0 && (selfCopy->_updateIcon || location[0]))
  {
    objc_storeStrong(&selfCopy->_updateIcon, location[0]);
    if (selfCopy->_updateIconContraints)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:selfCopy->_updateIconContraints];
    }

    if (selfCopy->_animatedGearView)
    {
      [(SUSSoftwareUpdateAnimatedIcon *)selfCopy->_animatedGearView removeFromSuperview];
      objc_storeStrong(&selfCopy->_animatedGearView, 0);
    }

    imageView = selfCopy->_imageView;
    v13 = 0;
    if (selfCopy->_updateIcon)
    {
      updateIcon = selfCopy->_updateIcon;
    }

    else
    {
      gearBackgroundImage = [(SUSSoftwareUpdateTitleCell *)selfCopy gearBackgroundImage];
      v13 = 1;
      updateIcon = gearBackgroundImage;
    }

    [(UIImageView *)imageView setImage:updateIcon];
    if (v13)
    {
      MEMORY[0x277D82BD8](gearBackgroundImage);
    }

    if (selfCopy->_updateIcon)
    {
      v9 = selfCopy;
      image = [(UIImageView *)selfCopy->_imageView image];
      [(UIImage *)image size];
      [(SUSSoftwareUpdateTitleCell *)v9 configureUpdateImageViewFromImageSize:v3, v4];
      MEMORY[0x277D82BD8](image);
    }

    else
    {
      v7 = selfCopy;
      image2 = [(UIImageView *)selfCopy->_imageView image];
      [(UIImage *)image2 size];
      [(SUSSoftwareUpdateTitleCell *)v7 configureAnimatedGearViewFromImageSize:v5, v6];
      MEMORY[0x277D82BD8](image2);
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
  heightAnchor = [v14[0] heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:6.0];
  [v7 addConstraint:?];
  MEMORY[0x277D82BD8](v8);
  *&v2 = MEMORY[0x277D82BD8](heightAnchor).n128_u64[0];
  layer = [v14[0] layer];
  [v14[0] bounds];
  [layer setCornerRadius:v3 / 2.0];
  *&v4 = MEMORY[0x277D82BD8](layer).n128_u64[0];
  layer2 = [v14[0] layer];
  [layer2 setMasksToBounds:1];
  MEMORY[0x277D82BD8](layer2);
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
  labelColor = [MEMORY[0x277D75348] labelColor];
  v17[0] = labelColor;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v8 initWithString:v11 attributes:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](labelColor);
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
  selfCopy = self;
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
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v22[0] = systemBlueColor;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v18 = [v10 initWithString:v13 attributes:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](systemBlueColor);
  MEMORY[0x277D82BD8](v13);
  *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  [v19[0] setUserInteractionEnabled:{1, v4}];
  v15 = v19[0];
  v5 = objc_alloc(MEMORY[0x277D75B80]);
  v16 = [v5 initWithTarget:selfCopy action:sel_handleLearnMoreTap_];
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

- (void)handleLearnMoreTap:(id)tap
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tap);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v6 = 0;
  v5 = 0;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&selfCopy->_delegate);
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
    v3 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v3 titleCell:selfCopy learnMoreButtonTapped:selfCopy->_learnMoreLabel];
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