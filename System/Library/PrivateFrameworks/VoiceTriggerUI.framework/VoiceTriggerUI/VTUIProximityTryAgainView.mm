@interface VTUIProximityTryAgainView
- (VTUIProximityTryAgainView)initWithFrame:(CGRect)frame;
- (void)_setupConstraintsToSize:(CGSize)size;
- (void)_setupViews;
@end

@implementation VTUIProximityTryAgainView

- (VTUIProximityTryAgainView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v11.receiver = self;
  v11.super_class = VTUIProximityTryAgainView;
  v5 = [(VTUIProximityTryAgainView *)&v11 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    vtPrefs = v5->_vtPrefs;
    v5->_vtPrefs = mEMORY[0x277D7A8D0];

    [(VTUIProximityTryAgainView *)v5 _setupViews];
    [(VTUIProximityTryAgainView *)v5 _setupConstraintsToSize:width, height];
  }

  return v5;
}

- (void)_setupViews
{
  v3 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v3;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityTryAgainView *)self addSubview:self->_containerView];
  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_titleLabel;
  proxHeaderFont = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v7 setFont:proxHeaderFont];

  v9 = self->_titleLabel;
  proxHeaderColor = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v9 setTextColor:proxHeaderColor];

  [(UILabel *)self->_titleLabel setNumberOfLines:3];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v11 = self->_titleLabel;
  v12 = +[VTUIStringsHelper sharedStringsHelper];
  v13 = [v12 uiLocalizedStringForKey:@"TRY_AGAIN_MESSAGE"];
  [(UILabel *)v11 setText:v13];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_titleLabel];
  v14 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v14;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = self->_containerView;
  v17 = self->_dismissButton;

  [(VTUIProximityContainerView *)v16 addSubview:v17];
}

- (void)_setupConstraintsToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v92[3] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIProximityTryAgainView *)self safeAreaLayoutGuide];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  height = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  array = [MEMORY[0x277CBEB18] array];
  v9 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v9 isDeviceIPad];

  containerView = self->_containerView;
  v86 = array;
  v83 = safeAreaLayoutGuide;
  v80 = height;
  if (isDeviceIPad)
  {
    centerYAnchor = [(VTUIProximityContainerView *)containerView centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v92[0] = v12;
    centerXAnchor = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v92[1] = v15;
    [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    v17 = v16 = array;
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v18 = [v17 constraintEqualToConstant:?];
    v92[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
    [v16 addObjectsFromArray:v19];

    v20 = v80;
    if (!v80)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
    goto LABEL_9;
  }

  bottomAnchor = [(VTUIProximityContainerView *)containerView bottomAnchor];
  bottomAnchor2 = [(VTUIProximityTryAgainView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v23];
  v91 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
  [array addObjectsFromArray:v25];

  v26 = self->_containerView;
  if (height)
  {
    centerXAnchor3 = [(VTUIProximityContainerView *)v26 centerXAnchor];
    centerXAnchor4 = [safeAreaLayoutGuide centerXAnchor];
    v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v90[0] = v29;
    widthAnchor = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v31 = [widthAnchor constraintEqualToConstant:?];
    v90[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    [array addObjectsFromArray:v32];

    v20 = v80;
    goto LABEL_6;
  }

  leadingAnchor = [(VTUIProximityContainerView *)v26 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v89[0] = v35;
  trailingAnchor = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v38];
  v89[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
  v41 = array;
  v42 = v40;
  [v41 addObjectsFromArray:v40];

  v20 = v80;
LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v43 = v33;
  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v45 = [heightAnchor constraintEqualToConstant:v43];

  v84 = v45;
  [v86 addObject:v45];
  vtStyle = self->_vtStyle;
  if (v20)
  {
    [(VTUIStyle *)vtStyle proxLeadingLandscape];
    v48 = v47;
    [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
    v50 = v49;
    [(VTUIStyle *)self->_vtStyle proxPaddingTryAgainTitleLandscape];
  }

  else
  {
    [(VTUIStyle *)vtStyle proxLeading];
    v48 = v52;
    [(VTUIStyle *)self->_vtStyle proxTrailing];
    v50 = v53;
    [(VTUIStyle *)self->_vtStyle orbLength];
  }

  v54 = v51;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v55 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v54];
  v88[0] = v55;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v48];
  v88[1] = v58;
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v50];
  v88[2] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
  [v86 addObjectsFromArray:v62];

  centerYAnchor3 = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor3 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v75 = [centerYAnchor3 constraintEqualToAnchor:topAnchor3 constant:?];
  v87[0] = v75;
  centerXAnchor5 = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor5 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v65 = [centerXAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:?];
  v87[1] = v65;
  widthAnchor2 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v67 = [widthAnchor2 constraintEqualToConstant:?];
  v87[2] = v67;
  heightAnchor2 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v69 = [heightAnchor2 constraintEqualToConstant:?];
  v87[3] = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:4];
  [v86 addObjectsFromArray:v70];

  [MEMORY[0x277CCAAD0] activateConstraints:v86];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v86];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v71;

  v73 = *MEMORY[0x277D85DE8];
}

@end