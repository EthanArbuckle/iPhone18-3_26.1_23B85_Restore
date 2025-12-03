@interface PRXCardContentWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)actionButtons;
- (NSArray)auxiliaryViews;
- (PRXCardContentWrapperView)initWithContentView:(id)view;
- (void)didChangeContentsOfBottomTray:(id)tray;
- (void)layoutSubviews;
- (void)removeBottomTray;
- (void)scrollToBottom;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setActionButtons:(id)buttons;
- (void)setAuxiliaryButtonWithSymbolName:(id)name action:(id)action;
- (void)setAuxiliaryButtonWithSymbolName:(id)name handler:(id)handler;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDismissButton:(id)button;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PRXCardContentWrapperView

- (PRXCardContentWrapperView)initWithContentView:(id)view
{
  v161[28] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v160.receiver = self;
  v160.super_class = PRXCardContentWrapperView;
  v6 = [(PRXCardContentWrapperView *)&v160 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v159 = viewCopy;
    [(PRXCardContentWrapperView *)v6 setInsetsLayoutMarginsFromSafeArea:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXCardContentWrapperView *)v7 setBackgroundColor:systemBackgroundColor];

    objc_storeStrong(&v7->_contentView, view);
    [(PRXCardContentView *)v7->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXCardContentView *)v7->_contentView setDelegate:v7];
    [(PRXCardContentView *)v7->_contentView setPreservesSuperviewLayoutMargins:1];
    v9 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v7->_scrollView;
    v7->_scrollView = v9;

    [(UIScrollView *)v7->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v7->_scrollView setDelegate:v7];
    [(UIScrollView *)v7->_scrollView setShowsHorizontalScrollIndicator:0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v16 = PRXCardPreferredSizeClassForContainerBounds(v12, v13, v14, v15);
    v17 = &PRXCardCompactLayoutMargins;
    v18 = &unk_260F85308;
    if (v16 != 1)
    {
      v18 = &unk_260F852E8;
    }

    v19 = *v18;
    v20 = &unk_260F85300;
    if (v16 != 1)
    {
      v20 = &unk_260F852E0;
    }

    v21 = *v20;
    v22 = &unk_260F852F8;
    if (v16 != 1)
    {
      v22 = &unk_260F852D8;
      v17 = &PRXCardDefaultLayoutMargins;
    }

    [(UIScrollView *)v7->_scrollView setDirectionalLayoutMargins:*v17, *v22, v21, v19];

    [(UIScrollView *)v7->_scrollView setVerticalScrollIndicatorInsets:54.0, 0.0, 0.0, 0.0];
    [(UIScrollView *)v7->_scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v7->_scrollView addSubview:v7->_contentView];
    [(PRXCardContentWrapperView *)v7 addSubview:v7->_scrollView];
    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    topKeyline = v7->_topKeyline;
    v7->_topKeyline = v23;

    [(UIView *)v7->_topKeyline setTranslatesAutoresizingMaskIntoConstraints:0];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v7->_topKeyline setBackgroundColor:separatorColor];

    [(UIView *)v7->_topKeyline setAlpha:0.2];
    [(UIView *)v7->_topKeyline setHidden:1];
    [(PRXCardContentWrapperView *)v7 addSubview:v7->_topKeyline];
    v26 = objc_alloc_init(MEMORY[0x277D75D18]);
    titleContainer = v7->_titleContainer;
    v7->_titleContainer = v26;

    [(UIView *)v7->_titleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v7->_titleContainer setBackgroundColor:systemBackgroundColor2];

    [(UIView *)v7->_titleContainer setHidden:1];
    [(PRXCardContentWrapperView *)v7 addSubview:v7->_titleContainer];
    v29 = objc_alloc_init(MEMORY[0x277D756B8]);
    scrolledTitleLabel = v7->_scrolledTitleLabel;
    v7->_scrolledTitleLabel = v29;

    [(UILabel *)v7->_scrolledTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_scrolledTitleLabel setTextAlignment:1];
    v31 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] maximumContentSizeCategory:*MEMORY[0x277D76838]];
    [(UILabel *)v7->_scrolledTitleLabel setFont:v31];

    [(UIView *)v7->_titleContainer addSubview:v7->_scrolledTitleLabel];
    [(UIScrollView *)v7->_scrollView directionalLayoutMargins];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = objc_alloc_init(PRXCardBottomTray);
    bottomTray = v7->_bottomTray;
    v7->_bottomTray = v38;

    [(PRXCardBottomTray *)v7->_bottomTray setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXCardBottomTray *)v7->_bottomTray setDirectionalLayoutMargins:v33, v35, v33, v37];
    [(PRXCardBottomTray *)v7->_bottomTray setInsetsLayoutMarginsFromSafeArea:0];
    [(PRXCardBottomTray *)v7->_bottomTray setDelegate:v7];
    [(PRXCardContentWrapperView *)v7 addSubview:v7->_bottomTray];
    v40 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomKeyline = v7->_bottomKeyline;
    v7->_bottomKeyline = v40;

    [(UIView *)v7->_bottomKeyline setTranslatesAutoresizingMaskIntoConstraints:0];
    separatorColor2 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v7->_bottomKeyline setBackgroundColor:separatorColor2];

    [(UIView *)v7->_bottomKeyline setAlpha:0.2];
    [(UIView *)v7->_bottomKeyline setHidden:1];
    [(PRXCardContentWrapperView *)v7 addSubview:v7->_bottomKeyline];
    bottomAnchor = [(UIScrollView *)v7->_scrollView bottomAnchor];
    bottomTray = [(PRXCardContentWrapperView *)v7 bottomTray];
    topAnchor = [bottomTray topAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:topAnchor];
    scrollViewBottomConstraint = v7->_scrollViewBottomConstraint;
    v7->_scrollViewBottomConstraint = v46;

    [(UIScrollView *)v7->_scrollView directionalLayoutMargins];
    [(NSLayoutConstraint *)v7->_scrollViewBottomConstraint setConstant:-v48];
    v126 = MEMORY[0x277CBEB18];
    leadingAnchor = [(UIScrollView *)v7->_scrollView leadingAnchor];
    leadingAnchor2 = [(PRXCardContentWrapperView *)v7 leadingAnchor];
    v156 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v161[0] = v156;
    trailingAnchor = [(UIScrollView *)v7->_scrollView trailingAnchor];
    trailingAnchor2 = [(PRXCardContentWrapperView *)v7 trailingAnchor];
    v153 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v161[1] = v153;
    topAnchor2 = [(UIScrollView *)v7->_scrollView topAnchor];
    layoutMarginsGuide = [(PRXCardContentWrapperView *)v7 layoutMarginsGuide];
    topAnchor3 = [layoutMarginsGuide topAnchor];
    v149 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v161[2] = v149;
    v161[3] = v7->_scrollViewBottomConstraint;
    leadingAnchor3 = [(UIScrollView *)v7->_scrollView leadingAnchor];
    leadingAnchor4 = [(PRXCardContentView *)v7->_contentView leadingAnchor];
    v146 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v161[4] = v146;
    trailingAnchor3 = [(UIScrollView *)v7->_scrollView trailingAnchor];
    trailingAnchor4 = [(PRXCardContentView *)v7->_contentView trailingAnchor];
    v143 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v161[5] = v143;
    topAnchor4 = [(UIScrollView *)v7->_scrollView topAnchor];
    topAnchor5 = [(PRXCardContentView *)v7->_contentView topAnchor];
    v140 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v161[6] = v140;
    bottomAnchor2 = [(UIScrollView *)v7->_scrollView bottomAnchor];
    bottomAnchor3 = [(PRXCardContentView *)v7->_contentView bottomAnchor];
    v137 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v161[7] = v137;
    widthAnchor = [(UIScrollView *)v7->_scrollView widthAnchor];
    widthAnchor2 = [(PRXCardContentView *)v7->_contentView widthAnchor];
    v133 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v161[8] = v133;
    leadingAnchor5 = [(UIView *)v7->_titleContainer leadingAnchor];
    leadingAnchor6 = [(PRXCardContentWrapperView *)v7 leadingAnchor];
    v130 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v161[9] = v130;
    trailingAnchor5 = [(UIView *)v7->_titleContainer trailingAnchor];
    trailingAnchor6 = [(PRXCardContentWrapperView *)v7 trailingAnchor];
    v127 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v161[10] = v127;
    topAnchor6 = [(UIView *)v7->_titleContainer topAnchor];
    topAnchor7 = [(PRXCardContentWrapperView *)v7 topAnchor];
    v123 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v161[11] = v123;
    heightAnchor = [(UIView *)v7->_titleContainer heightAnchor];
    v121 = [heightAnchor constraintEqualToConstant:62.0];
    v161[12] = v121;
    leadingAnchor7 = [(UILabel *)v7->_scrolledTitleLabel leadingAnchor];
    leadingAnchor8 = [(UIView *)v7->_titleContainer leadingAnchor];
    v118 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8 constant:60.0];
    v161[13] = v118;
    trailingAnchor7 = [(UILabel *)v7->_scrolledTitleLabel trailingAnchor];
    trailingAnchor8 = [(UIView *)v7->_titleContainer trailingAnchor];
    v115 = [trailingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor8 constant:-60.0];
    v161[14] = v115;
    centerXAnchor = [(UILabel *)v7->_scrolledTitleLabel centerXAnchor];
    centerXAnchor2 = [(UIView *)v7->_titleContainer centerXAnchor];
    v112 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v161[15] = v112;
    topAnchor8 = [(UILabel *)v7->_scrolledTitleLabel topAnchor];
    topAnchor9 = [(UIView *)v7->_titleContainer topAnchor];
    v109 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:22.0];
    v161[16] = v109;
    leadingAnchor9 = [(UIView *)v7->_topKeyline leadingAnchor];
    leadingAnchor10 = [(UIView *)v7->_titleContainer leadingAnchor];
    v106 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v161[17] = v106;
    trailingAnchor9 = [(UIView *)v7->_topKeyline trailingAnchor];
    trailingAnchor10 = [(UIView *)v7->_titleContainer trailingAnchor];
    v103 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v161[18] = v103;
    topAnchor10 = [(UIView *)v7->_topKeyline topAnchor];
    bottomAnchor4 = [(UIView *)v7->_titleContainer bottomAnchor];
    v100 = [topAnchor10 constraintEqualToAnchor:bottomAnchor4];
    v161[19] = v100;
    heightAnchor2 = [(UIView *)v7->_topKeyline heightAnchor];
    v98 = [heightAnchor2 constraintEqualToConstant:1.0];
    v161[20] = v98;
    leadingAnchor11 = [(PRXCardBottomTray *)v7->_bottomTray leadingAnchor];
    leadingAnchor12 = [(PRXCardContentWrapperView *)v7 leadingAnchor];
    v95 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v161[21] = v95;
    trailingAnchor11 = [(PRXCardBottomTray *)v7->_bottomTray trailingAnchor];
    trailingAnchor12 = [(PRXCardContentWrapperView *)v7 trailingAnchor];
    v92 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v161[22] = v92;
    bottomAnchor5 = [(PRXCardBottomTray *)v7->_bottomTray bottomAnchor];
    bottomAnchor6 = [(PRXCardContentWrapperView *)v7 bottomAnchor];
    v89 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v161[23] = v89;
    leadingAnchor13 = [(UIView *)v7->_bottomKeyline leadingAnchor];
    leadingAnchor14 = [(PRXCardBottomTray *)v7->_bottomTray leadingAnchor];
    v86 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v161[24] = v86;
    trailingAnchor13 = [(UIView *)v7->_bottomKeyline trailingAnchor];
    trailingAnchor14 = [(PRXCardBottomTray *)v7->_bottomTray trailingAnchor];
    v51 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
    v161[25] = v51;
    bottomAnchor7 = [(UIView *)v7->_bottomKeyline bottomAnchor];
    topAnchor11 = [(PRXCardBottomTray *)v7->_bottomTray topAnchor];
    v54 = [bottomAnchor7 constraintEqualToAnchor:topAnchor11];
    v161[26] = v54;
    heightAnchor3 = [(UIView *)v7->_bottomKeyline heightAnchor];
    v56 = [heightAnchor3 constraintEqualToConstant:1.0];
    v161[27] = v56;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:28];
    v136 = [v126 arrayWithArray:v57];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    LODWORD(v56) = [bundleIdentifier isEqualToString:@"com.apple.FMDMagSafeSetupRemoteUI"];

    v60 = v7->_scrollView;
    if (v56)
    {
      contentLayoutGuide = [(UIScrollView *)v60 contentLayoutGuide];
      heightAnchor4 = [contentLayoutGuide heightAnchor];
      heightAnchor5 = [(PRXCardContentView *)v7->_contentView heightAnchor];
      frameLayoutGuide2 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];

      LODWORD(v65) = 1132068864;
      [frameLayoutGuide2 setPriority:v65];
      heightAnchor6 = [(UIScrollView *)v7->_scrollView heightAnchor];
      contentLayoutGuide2 = [(UIScrollView *)v7->_scrollView contentLayoutGuide];
      heightAnchor7 = [contentLayoutGuide2 heightAnchor];
      v69 = [heightAnchor6 constraintGreaterThanOrEqualToAnchor:heightAnchor7];

      LODWORD(v70) = 1132068864;
      [v69 setPriority:v70];
      heightAnchor8 = [(UIScrollView *)v7->_scrollView heightAnchor];
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v74 = [heightAnchor8 constraintLessThanOrEqualToConstant:v73];
      v75 = v136;
      [v136 addObject:v74];

      [v136 addObject:frameLayoutGuide2];
    }

    else
    {
      frameLayoutGuide = [(UIScrollView *)v60 frameLayoutGuide];
      heightAnchor9 = [frameLayoutGuide heightAnchor];
      contentLayoutGuide3 = [(UIScrollView *)v7->_scrollView contentLayoutGuide];
      heightAnchor10 = [contentLayoutGuide3 heightAnchor];
      v69 = [heightAnchor9 constraintEqualToAnchor:heightAnchor10];

      LODWORD(v80) = 1144733696;
      [v69 setPriority:v80];
      frameLayoutGuide2 = [(UIScrollView *)v7->_scrollView frameLayoutGuide];
      heightAnchor11 = [frameLayoutGuide2 heightAnchor];
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 bounds];
      v84 = [heightAnchor11 constraintLessThanOrEqualToConstant:v83];
      v75 = v136;
      [v136 addObject:v84];
    }

    [v75 addObject:v69];
    [MEMORY[0x277CCAAD0] activateConstraints:v75];

    viewCopy = v159;
  }

  return v7;
}

- (void)layoutSubviews
{
  v13 = *MEMORY[0x277D85DE8];
  scrollView = [self scrollView];
  [scrollView frame];
  v6 = v5;
  scrollView2 = [self scrollView];
  [scrollView2 contentSize];
  v9 = 134218240;
  v10 = v6;
  v11 = 2048;
  v12 = v8;
  _os_log_debug_impl(&dword_260F65000, a2, OS_LOG_TYPE_DEBUG, "Frame height (%f) content height (%f)", &v9, 0x16u);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v12.receiver = self;
  v12.super_class = PRXCardContentWrapperView;
  [(PRXCardContentWrapperView *)&v12 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  v6 = v5;
  v8 = v7;
  v9 = PRXDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PRXCardContentWrapperView systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:v6 verticalFittingPriority:v8];
  }

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  contentView = [(PRXCardContentWrapperView *)self contentView];
  cardStyle = [contentView cardStyle];
  traitCollection = [(PRXCardContentWrapperView *)self traitCollection];
  v6 = PRXCardPreferredSize(cardStyle, [traitCollection prx_cardSizeClass]);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(PRXCardContentWrapperView *)self traitCollection];
  customBackgroundColor = [traitCollection customBackgroundColor];

  if (customBackgroundColor)
  {
    traitCollection2 = [(PRXCardContentWrapperView *)self traitCollection];
    customBackgroundColor2 = [traitCollection2 customBackgroundColor];
    [(PRXCardContentWrapperView *)self setBackgroundColor:customBackgroundColor2];

    traitCollection3 = [(PRXCardContentWrapperView *)self traitCollection];
    customBackgroundColor3 = [traitCollection3 customBackgroundColor];
    titleContainer = [(PRXCardContentWrapperView *)self titleContainer];
    [titleContainer setBackgroundColor:customBackgroundColor3];

    traitCollection4 = [(PRXCardContentWrapperView *)self traitCollection];
    customBackgroundColor4 = [traitCollection4 customBackgroundColor];
    bottomTray = [(PRXCardContentWrapperView *)self bottomTray];
    [bottomTray setBackgroundColor:customBackgroundColor4];
  }
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  scrolledTitleLabel = [(PRXCardContentWrapperView *)self scrolledTitleLabel];
  [scrolledTitleLabel setText:titleCopy];
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  scrollView = [(PRXCardContentWrapperView *)self scrollView];
  [scrollView setContentOffset:animatedCopy animated:{x, y}];
}

- (void)scrollToBottom
{
  scrollView = [(PRXCardContentWrapperView *)self scrollView];
  [scrollView contentSize];
  v4 = v3;
  scrollView2 = [(PRXCardContentWrapperView *)self scrollView];
  [scrollView2 bounds];
  v7 = v4 - v6;
  scrollView3 = [(PRXCardContentWrapperView *)self scrollView];
  [scrollView3 contentInset];
  v10 = v7 + v9;
  scrollView4 = [(PRXCardContentWrapperView *)self scrollView];
  [scrollView4 setContentOffset:{0.0, v10}];
}

- (void)setAuxiliaryButtonWithSymbolName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__PRXCardContentWrapperView_setAuxiliaryButtonWithSymbolName_handler___block_invoke;
  v10[3] = &unk_279ACC1B0;
  v11 = handlerCopy;
  v7 = handlerCopy;
  nameCopy = name;
  v9 = [PRXAction actionWithTitle:&stru_2873787A8 style:0 handler:v10];
  [(PRXCardContentWrapperView *)self setAuxiliaryButtonWithSymbolName:nameCopy action:v9];
}

- (void)setAuxiliaryButtonWithSymbolName:(id)name action:(id)action
{
  v21[2] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  auxiliaryButtonAction = self->_auxiliaryButtonAction;
  if (auxiliaryButtonAction != actionCopy)
  {
    nameCopy = name;
    button = [(PRXAction *)auxiliaryButtonAction button];
    [button removeFromSuperview];

    objc_storeStrong(&self->_auxiliaryButtonAction, action);
    v11 = [PRXButton buttonWithProximityType:4];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy];

    [v11 setImage:v20 forState:0];
    [(PRXAction *)self->_auxiliaryButtonAction setButton:v11];
    [(PRXCardContentWrapperView *)self addSubview:v11];
    v12 = MEMORY[0x277CCAAD0];
    topAnchor = [v11 topAnchor];
    topAnchor2 = [(PRXCardContentWrapperView *)self topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:28.0];
    v21[0] = v15;
    leadingAnchor = [v11 leadingAnchor];
    leadingAnchor2 = [(PRXCardContentWrapperView *)self leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:28.0];
    v21[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [v12 activateConstraints:v19];
  }
}

- (void)removeBottomTray
{
  bottomTray = [(PRXCardContentWrapperView *)self bottomTray];
  [bottomTray removeFromSuperview];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  contentView = [(PRXCardContentWrapperView *)self contentView];
  titleView = [contentView titleView];
  [titleView frame];
  MaxY = CGRectGetMaxY(v14);

  [scrollCopy contentOffset];
  if (v7 <= MaxY)
  {
    v9 = 1;
  }

  else
  {
    title = [(PRXCardContentWrapperView *)self title];
    v9 = title == 0;
  }

  topKeyline = [(PRXCardContentWrapperView *)self topKeyline];
  [topKeyline setHidden:v9];

  titleContainer = [(PRXCardContentWrapperView *)self titleContainer];
  [titleContainer setHidden:v9];
}

- (void)setDismissButton:(id)button
{
  v15[2] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  dismissButton = self->_dismissButton;
  if (dismissButton != buttonCopy)
  {
    [(PRXButton *)dismissButton removeFromSuperview];
    objc_storeStrong(&self->_dismissButton, button);
    [(PRXButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXCardContentWrapperView *)self addSubview:self->_dismissButton];
    v7 = MEMORY[0x277CCAAD0];
    topAnchor = [(PRXButton *)self->_dismissButton topAnchor];
    topAnchor2 = [(PRXCardContentWrapperView *)self topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:28.0];
    v15[0] = v10;
    trailingAnchor = [(PRXButton *)self->_dismissButton trailingAnchor];
    trailingAnchor2 = [(PRXCardContentWrapperView *)self trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-28.0];
    v15[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [v7 activateConstraints:v14];
  }
}

- (NSArray)auxiliaryViews
{
  v5[1] = *MEMORY[0x277D85DE8];
  bottomTray = [(PRXCardContentWrapperView *)self bottomTray];
  v5[0] = bottomTray;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (NSArray)actionButtons
{
  bottomTray = [(PRXCardContentWrapperView *)self bottomTray];
  actionButtons = [bottomTray actionButtons];

  return actionButtons;
}

- (void)setActionButtons:(id)buttons
{
  buttonsCopy = buttons;
  bottomTray = [(PRXCardContentWrapperView *)self bottomTray];
  [bottomTray setActionButtons:buttonsCopy];
}

- (void)didChangeContentsOfBottomTray:(id)tray
{
  trayCopy = tray;
  bottomTray = [(PRXCardContentWrapperView *)self bottomTray];

  if (bottomTray == trayCopy)
  {
    bottomTray2 = [(PRXCardContentWrapperView *)self bottomTray];
    containsContents = [bottomTray2 containsContents];

    v8 = 0.0;
    if ((containsContents & 1) == 0)
    {
      [(UIScrollView *)self->_scrollView directionalLayoutMargins];
      v8 = -v9;
    }

    scrollViewBottomConstraint = [(PRXCardContentWrapperView *)self scrollViewBottomConstraint];
    [scrollViewBottomConstraint setConstant:v8];
  }
}

- (void)systemLayoutSizeFittingSize:(NSObject *)a1 withHorizontalFittingPriority:(double)a2 verticalFittingPriority:(double)a3 .cold.1(NSObject *a1, double a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromCGSize(*&a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_260F65000, a1, OS_LOG_TYPE_DEBUG, "Layout size fitting size: %@", &v5, 0xCu);
}

@end