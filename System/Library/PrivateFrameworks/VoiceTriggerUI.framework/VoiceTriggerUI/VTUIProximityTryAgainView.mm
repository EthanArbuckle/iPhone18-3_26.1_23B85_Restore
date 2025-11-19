@interface VTUIProximityTryAgainView
- (VTUIProximityTryAgainView)initWithFrame:(CGRect)a3;
- (void)_setupConstraintsToSize:(CGSize)a3;
- (void)_setupViews;
@end

@implementation VTUIProximityTryAgainView

- (VTUIProximityTryAgainView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v11.receiver = self;
  v11.super_class = VTUIProximityTryAgainView;
  v5 = [(VTUIProximityTryAgainView *)&v11 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    v8 = [MEMORY[0x277D7A8D0] sharedPreferences];
    vtPrefs = v5->_vtPrefs;
    v5->_vtPrefs = v8;

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
  v8 = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v7 setFont:v8];

  v9 = self->_titleLabel;
  v10 = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v9 setTextColor:v10];

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

- (void)_setupConstraintsToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v92[3] = *MEMORY[0x277D85DE8];
  v6 = [(VTUIProximityTryAgainView *)self safeAreaLayoutGuide];
  v85 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v7 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = +[MGWrapper sharedMGWrapper];
  v10 = [v9 isDeviceIPad];

  containerView = self->_containerView;
  v86 = v8;
  v83 = v6;
  v80 = v7;
  if (v10)
  {
    v76 = [(VTUIProximityContainerView *)containerView centerYAnchor];
    v74 = [v6 centerYAnchor];
    v12 = [v76 constraintEqualToAnchor:v74];
    v92[0] = v12;
    v13 = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    v14 = [v6 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v92[1] = v15;
    [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    v17 = v16 = v8;
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

  v21 = [(VTUIProximityContainerView *)containerView bottomAnchor];
  v22 = [(VTUIProximityTryAgainView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v24 = [v21 constraintEqualToAnchor:v22 constant:-v23];
  v91 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
  [v8 addObjectsFromArray:v25];

  v26 = self->_containerView;
  if (v7)
  {
    v27 = [(VTUIProximityContainerView *)v26 centerXAnchor];
    v28 = [v6 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v90[0] = v29;
    v30 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v31 = [v30 constraintEqualToConstant:?];
    v90[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    [v8 addObjectsFromArray:v32];

    v20 = v80;
    goto LABEL_6;
  }

  v77 = [(VTUIProximityContainerView *)v26 leadingAnchor];
  v34 = [v6 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v35 = [v77 constraintEqualToAnchor:v34 constant:?];
  v89[0] = v35;
  v36 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  v37 = [v6 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v39 = [v36 constraintEqualToAnchor:v37 constant:-v38];
  v89[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
  v41 = v8;
  v42 = v40;
  [v41 addObjectsFromArray:v40];

  v20 = v80;
LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v43 = v33;
  v44 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v45 = [v44 constraintEqualToConstant:v43];

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
  v81 = [(UILabel *)self->_titleLabel topAnchor];
  v78 = [v85 topAnchor];
  v55 = [v81 constraintEqualToAnchor:v78 constant:v54];
  v88[0] = v55;
  v56 = [(UILabel *)self->_titleLabel leadingAnchor];
  v57 = [v85 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:v48];
  v88[1] = v58;
  v59 = [(UILabel *)self->_titleLabel trailingAnchor];
  v60 = [v85 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-v50];
  v88[2] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
  [v86 addObjectsFromArray:v62];

  v82 = [(UIButton *)self->_dismissButton centerYAnchor];
  v79 = [v85 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v75 = [v82 constraintEqualToAnchor:v79 constant:?];
  v87[0] = v75;
  v63 = [(UIButton *)self->_dismissButton centerXAnchor];
  v64 = [v85 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v65 = [v63 constraintEqualToAnchor:v64 constant:?];
  v87[1] = v65;
  v66 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v67 = [v66 constraintEqualToConstant:?];
  v87[2] = v67;
  v68 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v69 = [v68 constraintEqualToConstant:?];
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