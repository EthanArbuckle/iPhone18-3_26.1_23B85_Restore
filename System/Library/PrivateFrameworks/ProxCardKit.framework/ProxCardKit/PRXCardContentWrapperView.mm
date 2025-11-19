@interface PRXCardContentWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSArray)actionButtons;
- (NSArray)auxiliaryViews;
- (PRXCardContentWrapperView)initWithContentView:(id)a3;
- (void)didChangeContentsOfBottomTray:(id)a3;
- (void)layoutSubviews;
- (void)removeBottomTray;
- (void)scrollToBottom;
- (void)scrollViewDidScroll:(id)a3;
- (void)setActionButtons:(id)a3;
- (void)setAuxiliaryButtonWithSymbolName:(id)a3 action:(id)a4;
- (void)setAuxiliaryButtonWithSymbolName:(id)a3 handler:(id)a4;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setDismissButton:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PRXCardContentWrapperView

- (PRXCardContentWrapperView)initWithContentView:(id)a3
{
  v161[28] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v160.receiver = self;
  v160.super_class = PRXCardContentWrapperView;
  v6 = [(PRXCardContentWrapperView *)&v160 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v159 = v5;
    [(PRXCardContentWrapperView *)v6 setInsetsLayoutMarginsFromSafeArea:0];
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXCardContentWrapperView *)v7 setBackgroundColor:v8];

    objc_storeStrong(&v7->_contentView, a3);
    [(PRXCardContentView *)v7->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXCardContentView *)v7->_contentView setDelegate:v7];
    [(PRXCardContentView *)v7->_contentView setPreservesSuperviewLayoutMargins:1];
    v9 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v7->_scrollView;
    v7->_scrollView = v9;

    [(UIScrollView *)v7->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v7->_scrollView setDelegate:v7];
    [(UIScrollView *)v7->_scrollView setShowsHorizontalScrollIndicator:0];
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 bounds];
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
    v25 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v7->_topKeyline setBackgroundColor:v25];

    [(UIView *)v7->_topKeyline setAlpha:0.2];
    [(UIView *)v7->_topKeyline setHidden:1];
    [(PRXCardContentWrapperView *)v7 addSubview:v7->_topKeyline];
    v26 = objc_alloc_init(MEMORY[0x277D75D18]);
    titleContainer = v7->_titleContainer;
    v7->_titleContainer = v26;

    [(UIView *)v7->_titleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v7->_titleContainer setBackgroundColor:v28];

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
    v42 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v7->_bottomKeyline setBackgroundColor:v42];

    [(UIView *)v7->_bottomKeyline setAlpha:0.2];
    [(UIView *)v7->_bottomKeyline setHidden:1];
    [(PRXCardContentWrapperView *)v7 addSubview:v7->_bottomKeyline];
    v43 = [(UIScrollView *)v7->_scrollView bottomAnchor];
    v44 = [(PRXCardContentWrapperView *)v7 bottomTray];
    v45 = [v44 topAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    scrollViewBottomConstraint = v7->_scrollViewBottomConstraint;
    v7->_scrollViewBottomConstraint = v46;

    [(UIScrollView *)v7->_scrollView directionalLayoutMargins];
    [(NSLayoutConstraint *)v7->_scrollViewBottomConstraint setConstant:-v48];
    v126 = MEMORY[0x277CBEB18];
    v158 = [(UIScrollView *)v7->_scrollView leadingAnchor];
    v157 = [(PRXCardContentWrapperView *)v7 leadingAnchor];
    v156 = [v158 constraintEqualToAnchor:v157];
    v161[0] = v156;
    v155 = [(UIScrollView *)v7->_scrollView trailingAnchor];
    v154 = [(PRXCardContentWrapperView *)v7 trailingAnchor];
    v153 = [v155 constraintEqualToAnchor:v154];
    v161[1] = v153;
    v151 = [(UIScrollView *)v7->_scrollView topAnchor];
    v152 = [(PRXCardContentWrapperView *)v7 layoutMarginsGuide];
    v150 = [v152 topAnchor];
    v149 = [v151 constraintEqualToAnchor:v150];
    v161[2] = v149;
    v161[3] = v7->_scrollViewBottomConstraint;
    v148 = [(UIScrollView *)v7->_scrollView leadingAnchor];
    v147 = [(PRXCardContentView *)v7->_contentView leadingAnchor];
    v146 = [v148 constraintEqualToAnchor:v147];
    v161[4] = v146;
    v145 = [(UIScrollView *)v7->_scrollView trailingAnchor];
    v144 = [(PRXCardContentView *)v7->_contentView trailingAnchor];
    v143 = [v145 constraintEqualToAnchor:v144];
    v161[5] = v143;
    v142 = [(UIScrollView *)v7->_scrollView topAnchor];
    v141 = [(PRXCardContentView *)v7->_contentView topAnchor];
    v140 = [v142 constraintEqualToAnchor:v141];
    v161[6] = v140;
    v139 = [(UIScrollView *)v7->_scrollView bottomAnchor];
    v138 = [(PRXCardContentView *)v7->_contentView bottomAnchor];
    v137 = [v139 constraintEqualToAnchor:v138];
    v161[7] = v137;
    v135 = [(UIScrollView *)v7->_scrollView widthAnchor];
    v134 = [(PRXCardContentView *)v7->_contentView widthAnchor];
    v133 = [v135 constraintEqualToAnchor:v134];
    v161[8] = v133;
    v132 = [(UIView *)v7->_titleContainer leadingAnchor];
    v131 = [(PRXCardContentWrapperView *)v7 leadingAnchor];
    v130 = [v132 constraintEqualToAnchor:v131];
    v161[9] = v130;
    v129 = [(UIView *)v7->_titleContainer trailingAnchor];
    v128 = [(PRXCardContentWrapperView *)v7 trailingAnchor];
    v127 = [v129 constraintEqualToAnchor:v128];
    v161[10] = v127;
    v125 = [(UIView *)v7->_titleContainer topAnchor];
    v124 = [(PRXCardContentWrapperView *)v7 topAnchor];
    v123 = [v125 constraintEqualToAnchor:v124];
    v161[11] = v123;
    v122 = [(UIView *)v7->_titleContainer heightAnchor];
    v121 = [v122 constraintEqualToConstant:62.0];
    v161[12] = v121;
    v120 = [(UILabel *)v7->_scrolledTitleLabel leadingAnchor];
    v119 = [(UIView *)v7->_titleContainer leadingAnchor];
    v118 = [v120 constraintGreaterThanOrEqualToAnchor:v119 constant:60.0];
    v161[13] = v118;
    v117 = [(UILabel *)v7->_scrolledTitleLabel trailingAnchor];
    v116 = [(UIView *)v7->_titleContainer trailingAnchor];
    v115 = [v117 constraintGreaterThanOrEqualToAnchor:v116 constant:-60.0];
    v161[14] = v115;
    v114 = [(UILabel *)v7->_scrolledTitleLabel centerXAnchor];
    v113 = [(UIView *)v7->_titleContainer centerXAnchor];
    v112 = [v114 constraintEqualToAnchor:v113];
    v161[15] = v112;
    v111 = [(UILabel *)v7->_scrolledTitleLabel topAnchor];
    v110 = [(UIView *)v7->_titleContainer topAnchor];
    v109 = [v111 constraintEqualToAnchor:v110 constant:22.0];
    v161[16] = v109;
    v108 = [(UIView *)v7->_topKeyline leadingAnchor];
    v107 = [(UIView *)v7->_titleContainer leadingAnchor];
    v106 = [v108 constraintEqualToAnchor:v107];
    v161[17] = v106;
    v105 = [(UIView *)v7->_topKeyline trailingAnchor];
    v104 = [(UIView *)v7->_titleContainer trailingAnchor];
    v103 = [v105 constraintEqualToAnchor:v104];
    v161[18] = v103;
    v102 = [(UIView *)v7->_topKeyline topAnchor];
    v101 = [(UIView *)v7->_titleContainer bottomAnchor];
    v100 = [v102 constraintEqualToAnchor:v101];
    v161[19] = v100;
    v99 = [(UIView *)v7->_topKeyline heightAnchor];
    v98 = [v99 constraintEqualToConstant:1.0];
    v161[20] = v98;
    v97 = [(PRXCardBottomTray *)v7->_bottomTray leadingAnchor];
    v96 = [(PRXCardContentWrapperView *)v7 leadingAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v161[21] = v95;
    v94 = [(PRXCardBottomTray *)v7->_bottomTray trailingAnchor];
    v93 = [(PRXCardContentWrapperView *)v7 trailingAnchor];
    v92 = [v94 constraintEqualToAnchor:v93];
    v161[22] = v92;
    v91 = [(PRXCardBottomTray *)v7->_bottomTray bottomAnchor];
    v90 = [(PRXCardContentWrapperView *)v7 bottomAnchor];
    v89 = [v91 constraintEqualToAnchor:v90];
    v161[23] = v89;
    v88 = [(UIView *)v7->_bottomKeyline leadingAnchor];
    v87 = [(PRXCardBottomTray *)v7->_bottomTray leadingAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v161[24] = v86;
    v49 = [(UIView *)v7->_bottomKeyline trailingAnchor];
    v50 = [(PRXCardBottomTray *)v7->_bottomTray trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v161[25] = v51;
    v52 = [(UIView *)v7->_bottomKeyline bottomAnchor];
    v53 = [(PRXCardBottomTray *)v7->_bottomTray topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v161[26] = v54;
    v55 = [(UIView *)v7->_bottomKeyline heightAnchor];
    v56 = [v55 constraintEqualToConstant:1.0];
    v161[27] = v56;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:28];
    v136 = [v126 arrayWithArray:v57];

    v58 = [MEMORY[0x277CCA8D8] mainBundle];
    v59 = [v58 bundleIdentifier];
    LODWORD(v56) = [v59 isEqualToString:@"com.apple.FMDMagSafeSetupRemoteUI"];

    v60 = v7->_scrollView;
    if (v56)
    {
      v61 = [(UIScrollView *)v60 contentLayoutGuide];
      v62 = [v61 heightAnchor];
      v63 = [(PRXCardContentView *)v7->_contentView heightAnchor];
      v64 = [v62 constraintEqualToAnchor:v63];

      LODWORD(v65) = 1132068864;
      [v64 setPriority:v65];
      v66 = [(UIScrollView *)v7->_scrollView heightAnchor];
      v67 = [(UIScrollView *)v7->_scrollView contentLayoutGuide];
      v68 = [v67 heightAnchor];
      v69 = [v66 constraintGreaterThanOrEqualToAnchor:v68];

      LODWORD(v70) = 1132068864;
      [v69 setPriority:v70];
      v71 = [(UIScrollView *)v7->_scrollView heightAnchor];
      v72 = [MEMORY[0x277D759A0] mainScreen];
      [v72 bounds];
      v74 = [v71 constraintLessThanOrEqualToConstant:v73];
      v75 = v136;
      [v136 addObject:v74];

      [v136 addObject:v64];
    }

    else
    {
      v76 = [(UIScrollView *)v60 frameLayoutGuide];
      v77 = [v76 heightAnchor];
      v78 = [(UIScrollView *)v7->_scrollView contentLayoutGuide];
      v79 = [v78 heightAnchor];
      v69 = [v77 constraintEqualToAnchor:v79];

      LODWORD(v80) = 1144733696;
      [v69 setPriority:v80];
      v64 = [(UIScrollView *)v7->_scrollView frameLayoutGuide];
      v81 = [v64 heightAnchor];
      v82 = [MEMORY[0x277D759A0] mainScreen];
      [v82 bounds];
      v84 = [v81 constraintLessThanOrEqualToConstant:v83];
      v75 = v136;
      [v136 addObject:v84];
    }

    [v75 addObject:v69];
    [MEMORY[0x277CCAAD0] activateConstraints:v75];

    v5 = v159;
  }

  return v7;
}

- (void)layoutSubviews
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 scrollView];
  [v4 frame];
  v6 = v5;
  v7 = [a1 scrollView];
  [v7 contentSize];
  v9 = 134218240;
  v10 = v6;
  v11 = 2048;
  v12 = v8;
  _os_log_debug_impl(&dword_260F65000, a2, OS_LOG_TYPE_DEBUG, "Frame height (%f) content height (%f)", &v9, 0x16u);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v12.receiver = self;
  v12.super_class = PRXCardContentWrapperView;
  [(PRXCardContentWrapperView *)&v12 systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
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
  v3 = [(PRXCardContentWrapperView *)self contentView];
  v4 = [v3 cardStyle];
  v5 = [(PRXCardContentWrapperView *)self traitCollection];
  v6 = PRXCardPreferredSize(v4, [v5 prx_cardSizeClass]);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(PRXCardContentWrapperView *)self traitCollection];
  v5 = [v4 customBackgroundColor];

  if (v5)
  {
    v6 = [(PRXCardContentWrapperView *)self traitCollection];
    v7 = [v6 customBackgroundColor];
    [(PRXCardContentWrapperView *)self setBackgroundColor:v7];

    v8 = [(PRXCardContentWrapperView *)self traitCollection];
    v9 = [v8 customBackgroundColor];
    v10 = [(PRXCardContentWrapperView *)self titleContainer];
    [v10 setBackgroundColor:v9];

    v13 = [(PRXCardContentWrapperView *)self traitCollection];
    v11 = [v13 customBackgroundColor];
    v12 = [(PRXCardContentWrapperView *)self bottomTray];
    [v12 setBackgroundColor:v11];
  }
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  v6 = [(PRXCardContentWrapperView *)self scrolledTitleLabel];
  [v6 setText:v5];
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v7 = [(PRXCardContentWrapperView *)self scrollView];
  [v7 setContentOffset:v4 animated:{x, y}];
}

- (void)scrollToBottom
{
  v12 = [(PRXCardContentWrapperView *)self scrollView];
  [v12 contentSize];
  v4 = v3;
  v5 = [(PRXCardContentWrapperView *)self scrollView];
  [v5 bounds];
  v7 = v4 - v6;
  v8 = [(PRXCardContentWrapperView *)self scrollView];
  [v8 contentInset];
  v10 = v7 + v9;
  v11 = [(PRXCardContentWrapperView *)self scrollView];
  [v11 setContentOffset:{0.0, v10}];
}

- (void)setAuxiliaryButtonWithSymbolName:(id)a3 handler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__PRXCardContentWrapperView_setAuxiliaryButtonWithSymbolName_handler___block_invoke;
  v10[3] = &unk_279ACC1B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [PRXAction actionWithTitle:&stru_2873787A8 style:0 handler:v10];
  [(PRXCardContentWrapperView *)self setAuxiliaryButtonWithSymbolName:v8 action:v9];
}

- (void)setAuxiliaryButtonWithSymbolName:(id)a3 action:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  auxiliaryButtonAction = self->_auxiliaryButtonAction;
  if (auxiliaryButtonAction != v7)
  {
    v9 = a3;
    v10 = [(PRXAction *)auxiliaryButtonAction button];
    [v10 removeFromSuperview];

    objc_storeStrong(&self->_auxiliaryButtonAction, a4);
    v11 = [PRXButton buttonWithProximityType:4];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [MEMORY[0x277D755B8] systemImageNamed:v9];

    [v11 setImage:v20 forState:0];
    [(PRXAction *)self->_auxiliaryButtonAction setButton:v11];
    [(PRXCardContentWrapperView *)self addSubview:v11];
    v12 = MEMORY[0x277CCAAD0];
    v13 = [v11 topAnchor];
    v14 = [(PRXCardContentWrapperView *)self topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:28.0];
    v21[0] = v15;
    v16 = [v11 leadingAnchor];
    v17 = [(PRXCardContentWrapperView *)self leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:28.0];
    v21[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [v12 activateConstraints:v19];
  }
}

- (void)removeBottomTray
{
  v2 = [(PRXCardContentWrapperView *)self bottomTray];
  [v2 removeFromSuperview];
}

- (void)scrollViewDidScroll:(id)a3
{
  v12 = a3;
  v4 = [(PRXCardContentWrapperView *)self contentView];
  v5 = [v4 titleView];
  [v5 frame];
  MaxY = CGRectGetMaxY(v14);

  [v12 contentOffset];
  if (v7 <= MaxY)
  {
    v9 = 1;
  }

  else
  {
    v8 = [(PRXCardContentWrapperView *)self title];
    v9 = v8 == 0;
  }

  v10 = [(PRXCardContentWrapperView *)self topKeyline];
  [v10 setHidden:v9];

  v11 = [(PRXCardContentWrapperView *)self titleContainer];
  [v11 setHidden:v9];
}

- (void)setDismissButton:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  dismissButton = self->_dismissButton;
  if (dismissButton != v5)
  {
    [(PRXButton *)dismissButton removeFromSuperview];
    objc_storeStrong(&self->_dismissButton, a3);
    [(PRXButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXCardContentWrapperView *)self addSubview:self->_dismissButton];
    v7 = MEMORY[0x277CCAAD0];
    v8 = [(PRXButton *)self->_dismissButton topAnchor];
    v9 = [(PRXCardContentWrapperView *)self topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:28.0];
    v15[0] = v10;
    v11 = [(PRXButton *)self->_dismissButton trailingAnchor];
    v12 = [(PRXCardContentWrapperView *)self trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-28.0];
    v15[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [v7 activateConstraints:v14];
  }
}

- (NSArray)auxiliaryViews
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(PRXCardContentWrapperView *)self bottomTray];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (NSArray)actionButtons
{
  v2 = [(PRXCardContentWrapperView *)self bottomTray];
  v3 = [v2 actionButtons];

  return v3;
}

- (void)setActionButtons:(id)a3
{
  v4 = a3;
  v5 = [(PRXCardContentWrapperView *)self bottomTray];
  [v5 setActionButtons:v4];
}

- (void)didChangeContentsOfBottomTray:(id)a3
{
  v4 = a3;
  v5 = [(PRXCardContentWrapperView *)self bottomTray];

  if (v5 == v4)
  {
    v6 = [(PRXCardContentWrapperView *)self bottomTray];
    v7 = [v6 containsContents];

    v8 = 0.0;
    if ((v7 & 1) == 0)
    {
      [(UIScrollView *)self->_scrollView directionalLayoutMargins];
      v8 = -v9;
    }

    v10 = [(PRXCardContentWrapperView *)self scrollViewBottomConstraint];
    [v10 setConstant:v8];
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