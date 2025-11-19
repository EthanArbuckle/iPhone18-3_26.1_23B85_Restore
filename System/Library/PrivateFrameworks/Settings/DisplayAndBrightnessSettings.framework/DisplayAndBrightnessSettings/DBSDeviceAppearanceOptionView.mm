@interface DBSDeviceAppearanceOptionView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (DBSDeviceAppearanceOptionView)initWithFrame:(CGRect)a3 appearanceOption:(unint64_t)a4;
- (DBSDeviceAppearanceOptionViewDelegate)delegate;
- (void)_configureView;
- (void)_updateViewForCurrentInterfaceStyle:(int64_t)a3;
- (void)_userDidTapOnView:(id)a3;
- (void)setHighlight:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBSDeviceAppearanceOptionView

- (DBSDeviceAppearanceOptionView)initWithFrame:(CGRect)a3 appearanceOption:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = DBSDeviceAppearanceOptionView;
  v5 = [(DBSDeviceAppearanceOptionView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_appearanceOption = a4;
    v5->_highlight = 0;
    [(DBSDeviceAppearanceOptionView *)v5 _configureView];
  }

  return v6;
}

- (void)_configureView
{
  v80[3] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:0];
  [(DBSDeviceAppearanceOptionView *)self set_feedbackGenerator:v3];

  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  [(DBSDeviceAppearanceOptionView *)self set_previewImageView:v9];

  v10 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(DBSDeviceAppearanceOptionView *)self appearanceOption];
  v12 = MEMORY[0x277D755B8];
  v13 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  if (v11)
  {
    v14 = @"AppearanceDark";
  }

  else
  {
    v14 = @"AppearanceLight";
  }

  v15 = [v12 imageNamed:v14 inBundle:v13 compatibleWithTraitCollection:0];
  v16 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  [v16 setImage:v15];

  v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  [(DBSDeviceAppearanceOptionView *)self set_label:v17];

  v18 = [(DBSDeviceAppearanceOptionView *)self _label];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(DBSDeviceAppearanceOptionView *)self _label];
  [v19 setAdjustsFontForContentSizeCategory:1];

  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v21 = [(DBSDeviceAppearanceOptionView *)self _label];
  [v21 setFont:v20];

  v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  [(DBSDeviceAppearanceOptionView *)self set_timeLabel:v22];

  v23 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = CTFontCreateWithNameAndOptions(@".SFSoftTime-Semibold", 15.0, 0, 0x20000uLL);
  v25 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [v25 setFont:v24];

  v26 = [MEMORY[0x277D75348] whiteColor];
  v27 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [v27 setTextColor:v26];

  v28 = DBSLockScreenTimeString();
  v29 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [v29 setText:v28];

  v30 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [v30 setTextAlignment:1];

  v31 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  v32 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [v31 addSubview:v32];

  v33 = [[DBSCheckmarkView alloc] initWithFrame:v5, v6, v7, v8];
  [(DBSDeviceAppearanceOptionView *)self set_checkmarkView:v33];

  v34 = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(DBSDeviceAppearanceOptionView *)self appearanceOption])
  {
    v35 = @"DARK";
  }

  else
  {
    v35 = @"LIGHT";
  }

  v36 = DBS_LocalizedStringForDisplays(v35);
  v37 = [(DBSDeviceAppearanceOptionView *)self _label];
  [v37 setText:v36];

  v38 = [(DBSDeviceAppearanceOptionView *)self traitCollection];
  -[DBSDeviceAppearanceOptionView _updateViewForCurrentInterfaceStyle:](self, "_updateViewForCurrentInterfaceStyle:", [v38 userInterfaceStyle]);

  v39 = objc_alloc(MEMORY[0x277D75A68]);
  v40 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  v41 = [(DBSDeviceAppearanceOptionView *)self _label];
  v80[1] = v41;
  v42 = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  v80[2] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
  v44 = [v39 initWithArrangedSubviews:v43];
  [(DBSDeviceAppearanceOptionView *)self set_stackView:v44];

  v45 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

  v46 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [v46 setAxis:1];

  v47 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [v47 setAlignment:3];

  v48 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [v48 setSpacing:1.17549435e-38];

  v49 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [(DBSDeviceAppearanceOptionView *)self addSubview:v49];

  v50 = [MEMORY[0x277CBEB18] array];
  v51 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  v52 = [v51 leadingAnchor];
  v53 = [(DBSDeviceAppearanceOptionView *)self leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v50 addObject:v54];

  v55 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  v56 = [v55 trailingAnchor];
  v57 = [(DBSDeviceAppearanceOptionView *)self trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  [v50 addObject:v58];

  v59 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  v60 = [v59 centerXAnchor];
  v61 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  v62 = [v61 centerXAnchor];
  v63 = [v60 constraintEqualToAnchor:v62];
  [v50 addObject:v63];

  v64 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  v65 = [v64 topAnchor];
  v66 = [(DBSDeviceAppearanceOptionView *)self topAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  [v50 addObject:v67];

  v68 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  v69 = [v68 bottomAnchor];
  v70 = [(DBSDeviceAppearanceOptionView *)self bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];
  [v50 addObject:v71];

  v72 = [MEMORY[0x277D75418] currentDevice];
  if ([v72 sf_isiPad])
  {
    v73 = 11.0;
  }

  else
  {
    v73 = 15.0;
  }

  v74 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  v75 = [v74 topAnchor];
  v76 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  v77 = [v76 topAnchor];
  v78 = [v75 constraintEqualToAnchor:v77 constant:v73];
  [v50 addObject:v78];

  [MEMORY[0x277CCAAD0] activateConstraints:v50];
  v79 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__userDidTapOnView_];
  [v79 setMinimumPressDuration:0.0];
  [v79 setCancelPastAllowableMovement:1];
  [v79 setDelegate:self];
  [(DBSDeviceAppearanceOptionView *)self addGestureRecognizer:v79];
}

- (void)_updateViewForCurrentInterfaceStyle:(int64_t)a3
{
  v5 = [(DBSDeviceAppearanceOptionView *)self appearanceOption];
  v6 = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  v8 = v6;
  v7 = 1;
  if (v5 == 1)
  {
    v7 = 2;
  }

  [v6 setSelected:v7 == a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(DBSDeviceAppearanceOptionView *)self traitCollection];
  -[DBSDeviceAppearanceOptionView _updateViewForCurrentInterfaceStyle:](self, "_updateViewForCurrentInterfaceStyle:", [v4 userInterfaceStyle]);
}

- (void)_userDidTapOnView:(id)a3
{
  v4 = [a3 state];
  [(DBSDeviceAppearanceOptionView *)self setHighlight:(v4 - 1) < 2];
  v5 = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  v6 = [v5 isSelected];

  if ((v6 & 1) == 0)
  {
    if (v4 == 3)
    {
      v7 = [(DBSDeviceAppearanceOptionView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      v9 = [(DBSDeviceAppearanceOptionView *)self delegate];
      [v9 userDidTapOnAppearanceOptionView:self];

      v10 = [(DBSDeviceAppearanceOptionView *)self _feedbackGenerator];
      [v10 impactOccurred];
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v10 = [(DBSDeviceAppearanceOptionView *)self _feedbackGenerator];
      [v10 prepare];
    }
  }
}

- (void)setHighlight:(BOOL)a3
{
  if (self->_highlight != a3)
  {
    self->_highlight = a3;
    v3 = 1.0;
    if (a3)
    {
      v3 = 0.5;
    }

    [(DBSDeviceAppearanceOptionView *)self setAlpha:v3];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBSDeviceAppearanceOptionView *)self gestureRecognizers];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (DBSDeviceAppearanceOptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end