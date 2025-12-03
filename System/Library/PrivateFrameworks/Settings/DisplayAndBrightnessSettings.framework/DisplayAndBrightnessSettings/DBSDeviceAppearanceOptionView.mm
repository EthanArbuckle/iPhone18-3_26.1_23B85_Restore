@interface DBSDeviceAppearanceOptionView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (DBSDeviceAppearanceOptionView)initWithFrame:(CGRect)frame appearanceOption:(unint64_t)option;
- (DBSDeviceAppearanceOptionViewDelegate)delegate;
- (void)_configureView;
- (void)_updateViewForCurrentInterfaceStyle:(int64_t)style;
- (void)_userDidTapOnView:(id)view;
- (void)setHighlight:(BOOL)highlight;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBSDeviceAppearanceOptionView

- (DBSDeviceAppearanceOptionView)initWithFrame:(CGRect)frame appearanceOption:(unint64_t)option
{
  v8.receiver = self;
  v8.super_class = DBSDeviceAppearanceOptionView;
  v5 = [(DBSDeviceAppearanceOptionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_appearanceOption = option;
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

  _previewImageView = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  [_previewImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  appearanceOption = [(DBSDeviceAppearanceOptionView *)self appearanceOption];
  v12 = MEMORY[0x277D755B8];
  v13 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  if (appearanceOption)
  {
    v14 = @"AppearanceDark";
  }

  else
  {
    v14 = @"AppearanceLight";
  }

  v15 = [v12 imageNamed:v14 inBundle:v13 compatibleWithTraitCollection:0];
  _previewImageView2 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  [_previewImageView2 setImage:v15];

  v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  [(DBSDeviceAppearanceOptionView *)self set_label:v17];

  _label = [(DBSDeviceAppearanceOptionView *)self _label];
  [_label setTranslatesAutoresizingMaskIntoConstraints:0];

  _label2 = [(DBSDeviceAppearanceOptionView *)self _label];
  [_label2 setAdjustsFontForContentSizeCategory:1];

  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  _label3 = [(DBSDeviceAppearanceOptionView *)self _label];
  [_label3 setFont:v20];

  v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  [(DBSDeviceAppearanceOptionView *)self set_timeLabel:v22];

  _timeLabel = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [_timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = CTFontCreateWithNameAndOptions(@".SFSoftTime-Semibold", 15.0, 0, 0x20000uLL);
  _timeLabel2 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [_timeLabel2 setFont:v24];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  _timeLabel3 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [_timeLabel3 setTextColor:whiteColor];

  v28 = DBSLockScreenTimeString();
  _timeLabel4 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [_timeLabel4 setText:v28];

  _timeLabel5 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [_timeLabel5 setTextAlignment:1];

  _previewImageView3 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  _timeLabel6 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  [_previewImageView3 addSubview:_timeLabel6];

  v33 = [[DBSCheckmarkView alloc] initWithFrame:v5, v6, v7, v8];
  [(DBSDeviceAppearanceOptionView *)self set_checkmarkView:v33];

  _checkmarkView = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  [_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(DBSDeviceAppearanceOptionView *)self appearanceOption])
  {
    v35 = @"DARK";
  }

  else
  {
    v35 = @"LIGHT";
  }

  v36 = DBS_LocalizedStringForDisplays(v35);
  _label4 = [(DBSDeviceAppearanceOptionView *)self _label];
  [_label4 setText:v36];

  traitCollection = [(DBSDeviceAppearanceOptionView *)self traitCollection];
  -[DBSDeviceAppearanceOptionView _updateViewForCurrentInterfaceStyle:](self, "_updateViewForCurrentInterfaceStyle:", [traitCollection userInterfaceStyle]);

  v39 = objc_alloc(MEMORY[0x277D75A68]);
  _previewImageView4 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  _label5 = [(DBSDeviceAppearanceOptionView *)self _label];
  v80[1] = _label5;
  _checkmarkView2 = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  v80[2] = _checkmarkView2;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
  v44 = [v39 initWithArrangedSubviews:v43];
  [(DBSDeviceAppearanceOptionView *)self set_stackView:v44];

  _stackView = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [_stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  _stackView2 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [_stackView2 setAxis:1];

  _stackView3 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [_stackView3 setAlignment:3];

  _stackView4 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [_stackView4 setSpacing:1.17549435e-38];

  _stackView5 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  [(DBSDeviceAppearanceOptionView *)self addSubview:_stackView5];

  array = [MEMORY[0x277CBEB18] array];
  _stackView6 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  leadingAnchor = [_stackView6 leadingAnchor];
  leadingAnchor2 = [(DBSDeviceAppearanceOptionView *)self leadingAnchor];
  v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v54];

  _stackView7 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  trailingAnchor = [_stackView7 trailingAnchor];
  trailingAnchor2 = [(DBSDeviceAppearanceOptionView *)self trailingAnchor];
  v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v58];

  _timeLabel7 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  centerXAnchor = [_timeLabel7 centerXAnchor];
  _previewImageView5 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  centerXAnchor2 = [_previewImageView5 centerXAnchor];
  v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v63];

  _stackView8 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  topAnchor = [_stackView8 topAnchor];
  topAnchor2 = [(DBSDeviceAppearanceOptionView *)self topAnchor];
  v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v67];

  _stackView9 = [(DBSDeviceAppearanceOptionView *)self _stackView];
  bottomAnchor = [_stackView9 bottomAnchor];
  bottomAnchor2 = [(DBSDeviceAppearanceOptionView *)self bottomAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v71];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v73 = 11.0;
  }

  else
  {
    v73 = 15.0;
  }

  _timeLabel8 = [(DBSDeviceAppearanceOptionView *)self _timeLabel];
  topAnchor3 = [_timeLabel8 topAnchor];
  _previewImageView6 = [(DBSDeviceAppearanceOptionView *)self _previewImageView];
  topAnchor4 = [_previewImageView6 topAnchor];
  v78 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v73];
  [array addObject:v78];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v79 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__userDidTapOnView_];
  [v79 setMinimumPressDuration:0.0];
  [v79 setCancelPastAllowableMovement:1];
  [v79 setDelegate:self];
  [(DBSDeviceAppearanceOptionView *)self addGestureRecognizer:v79];
}

- (void)_updateViewForCurrentInterfaceStyle:(int64_t)style
{
  appearanceOption = [(DBSDeviceAppearanceOptionView *)self appearanceOption];
  _checkmarkView = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  v8 = _checkmarkView;
  v7 = 1;
  if (appearanceOption == 1)
  {
    v7 = 2;
  }

  [_checkmarkView setSelected:v7 == style];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(DBSDeviceAppearanceOptionView *)self traitCollection];
  -[DBSDeviceAppearanceOptionView _updateViewForCurrentInterfaceStyle:](self, "_updateViewForCurrentInterfaceStyle:", [traitCollection userInterfaceStyle]);
}

- (void)_userDidTapOnView:(id)view
{
  state = [view state];
  [(DBSDeviceAppearanceOptionView *)self setHighlight:(state - 1) < 2];
  _checkmarkView = [(DBSDeviceAppearanceOptionView *)self _checkmarkView];
  isSelected = [_checkmarkView isSelected];

  if ((isSelected & 1) == 0)
  {
    if (state == 3)
    {
      delegate = [(DBSDeviceAppearanceOptionView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      delegate2 = [(DBSDeviceAppearanceOptionView *)self delegate];
      [delegate2 userDidTapOnAppearanceOptionView:self];

      _feedbackGenerator = [(DBSDeviceAppearanceOptionView *)self _feedbackGenerator];
      [_feedbackGenerator impactOccurred];
    }

    else
    {
      if (state != 1)
      {
        return;
      }

      _feedbackGenerator = [(DBSDeviceAppearanceOptionView *)self _feedbackGenerator];
      [_feedbackGenerator prepare];
    }
  }
}

- (void)setHighlight:(BOOL)highlight
{
  if (self->_highlight != highlight)
  {
    self->_highlight = highlight;
    v3 = 1.0;
    if (highlight)
    {
      v3 = 0.5;
    }

    [(DBSDeviceAppearanceOptionView *)self setAlpha:v3];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  gestureRecognizers = [(DBSDeviceAppearanceOptionView *)self gestureRecognizers];
  v9 = [gestureRecognizers containsObject:recognizerCopy];

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