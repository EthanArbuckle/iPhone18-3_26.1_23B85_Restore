@interface DBSDisplayZoomOptionView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (DBSDisplayZoomOptionView)initWithFrame:(CGRect)frame displayZoomOption:(unint64_t)option;
- (DBSDisplayZoomOptionViewDelegate)delegate;
- (void)_configureView;
- (void)_userDidTapOnView:(id)view;
- (void)setHighlight:(BOOL)highlight;
- (void)setSelected:(BOOL)selected;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation DBSDisplayZoomOptionView

- (DBSDisplayZoomOptionView)initWithFrame:(CGRect)frame displayZoomOption:(unint64_t)option
{
  v8.receiver = self;
  v8.super_class = DBSDisplayZoomOptionView;
  v5 = [(DBSDisplayZoomOptionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_displayZoomOption = option;
    [(DBSDisplayZoomOptionView *)v5 _configureView];
  }

  return v6;
}

- (void)_configureView
{
  v4 = [[DBSDeviceDisplayZoomAnimationView alloc] initWithDisplayZoomOption:[(DBSDisplayZoomOptionView *)self displayZoomOption]];
  packageView = self->__packageView;
  self->__packageView = v4;

  _packageView = [(DBSDisplayZoomOptionView *)self _packageView];
  [_packageView setTranslatesAutoresizingMaskIntoConstraints:0];

  _packageView2 = [(DBSDisplayZoomOptionView *)self _packageView];
  [_packageView2 setContentMode:1];

  _packageView3 = [(DBSDisplayZoomOptionView *)self _packageView];
  [(DBSDisplayZoomOptionView *)self addSubview:_packageView3];

  v9 = objc_alloc(MEMORY[0x277D756B8]);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
  optionNameLabel = self->_optionNameLabel;
  self->_optionNameLabel = v14;

  optionNameLabel = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [optionNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  optionNameLabel2 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [optionNameLabel2 setFont:v17];

  labelColor = [MEMORY[0x277D75348] labelColor];
  optionNameLabel3 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [optionNameLabel3 setTextColor:labelColor];

  optionNameLabel4 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [optionNameLabel4 setAdjustsFontForContentSizeCategory:1];

  optionNameLabel5 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [optionNameLabel5 setAdjustsFontSizeToFitWidth:1];

  optionNameLabel6 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  [(DBSDisplayZoomOptionView *)self addSubview:optionNameLabel6];

  displayZoomOption = [(DBSDisplayZoomOptionView *)self displayZoomOption];
  if (displayZoomOption <= 3)
  {
    v25 = DBS_LocalizedStringForMagnify(off_278459950[displayZoomOption]);
    optionNameLabel7 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
    [optionNameLabel7 setText:v25];
  }

  v27 = [[DBSCheckmarkView alloc] initWithFrame:v10, v11, v12, v13];
  checkmarkView = self->__checkmarkView;
  self->__checkmarkView = v27;

  _checkmarkView = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  [_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];

  _checkmarkView2 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  [(DBSDisplayZoomOptionView *)self addSubview:_checkmarkView2];

  v31 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:0];
  feedbackGenerator = self->__feedbackGenerator;
  self->__feedbackGenerator = v31;

  v82 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__userDidTapOnView_];
  [v82 setMinimumPressDuration:0.0];
  [v82 setCancelPastAllowableMovement:1];
  [v82 setDelegate:self];
  [(DBSDisplayZoomOptionView *)self addGestureRecognizer:v82];
  array = [MEMORY[0x277CBEB18] array];
  _packageView4 = [(DBSDisplayZoomOptionView *)self _packageView];
  topAnchor = [_packageView4 topAnchor];
  topAnchor2 = [(DBSDisplayZoomOptionView *)self topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v37];

  optionNameLabel8 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  topAnchor3 = [optionNameLabel8 topAnchor];
  _packageView5 = [(DBSDisplayZoomOptionView *)self _packageView];
  bottomAnchor = [_packageView5 bottomAnchor];
  v42 = DBSReverseZoomEnabled();
  if (v42)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];
    v44 = 20.0;
    if (sf_isiPad)
    {
      v44 = 12.0;
    }
  }

  else
  {
    v44 = 20.0;
  }

  v45 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v44];
  [array addObject:v45];

  if (v42)
  {
  }

  _checkmarkView3 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  topAnchor4 = [_checkmarkView3 topAnchor];
  optionNameLabel9 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  bottomAnchor2 = [optionNameLabel9 bottomAnchor];
  v50 = DBSReverseZoomEnabled();
  if (v50)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad2 = [currentDevice sf_isiPad];
    v52 = 8.0;
    if (sf_isiPad2)
    {
      v52 = 6.0;
    }
  }

  else
  {
    v52 = 8.0;
  }

  v53 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:v52];
  [array addObject:v53];

  if (v50)
  {
  }

  _checkmarkView4 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  bottomAnchor3 = [_checkmarkView4 bottomAnchor];
  bottomAnchor4 = [(DBSDisplayZoomOptionView *)self bottomAnchor];
  v57 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [array addObject:v57];

  _packageView6 = [(DBSDisplayZoomOptionView *)self _packageView];
  leadingAnchor = [_packageView6 leadingAnchor];
  leadingAnchor2 = [(DBSDisplayZoomOptionView *)self leadingAnchor];
  v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v61];

  _packageView7 = [(DBSDisplayZoomOptionView *)self _packageView];
  trailingAnchor = [_packageView7 trailingAnchor];
  trailingAnchor2 = [(DBSDisplayZoomOptionView *)self trailingAnchor];
  v65 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v65];

  optionNameLabel10 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  centerXAnchor = [optionNameLabel10 centerXAnchor];
  centerXAnchor2 = [(DBSDisplayZoomOptionView *)self centerXAnchor];
  v69 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v69];

  optionNameLabel11 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  leadingAnchor3 = [optionNameLabel11 leadingAnchor];
  leadingAnchor4 = [(DBSDisplayZoomOptionView *)self leadingAnchor];
  v73 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
  [array addObject:v73];

  trailingAnchor3 = [(DBSDisplayZoomOptionView *)self trailingAnchor];
  optionNameLabel12 = [(DBSDisplayZoomOptionView *)self optionNameLabel];
  trailingAnchor4 = [optionNameLabel12 trailingAnchor];
  v77 = [trailingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
  [array addObject:v77];

  _checkmarkView5 = [(DBSDisplayZoomOptionView *)self _checkmarkView];
  centerXAnchor3 = [_checkmarkView5 centerXAnchor];
  centerXAnchor4 = [(DBSDisplayZoomOptionView *)self centerXAnchor];
  v81 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [array addObject:v81];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)_userDidTapOnView:(id)view
{
  state = [view state];
  [(DBSDisplayZoomOptionView *)self setHighlight:(state - 1) < 2];
  if (![(DBSDisplayZoomOptionView *)self isSelected])
  {
    if (state == 3)
    {
      delegate = [(DBSDisplayZoomOptionView *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      delegate2 = [(DBSDisplayZoomOptionView *)self delegate];
      [delegate2 userDidTapOnDisplayZoomOptionView:self];

      _feedbackGenerator = [(DBSDisplayZoomOptionView *)self _feedbackGenerator];
      [_feedbackGenerator impactOccurred];
    }

    else
    {
      if (state != 1)
      {
        return;
      }

      _feedbackGenerator = [(DBSDisplayZoomOptionView *)self _feedbackGenerator];
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

    [(DBSDisplayZoomOptionView *)self setAlpha:v3];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    selectedCopy = selected;
    self->_selected = selected;
    _checkmarkView = [(DBSDisplayZoomOptionView *)self _checkmarkView];
    [_checkmarkView setSelected:selectedCopy];
  }
}

- (void)startAnimation
{
  _packageView = [(DBSDisplayZoomOptionView *)self _packageView];
  [_packageView startAnimation];
}

- (void)stopAnimation
{
  _packageView = [(DBSDisplayZoomOptionView *)self _packageView];
  [_packageView stopAnimation];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  gestureRecognizers = [(DBSDisplayZoomOptionView *)self gestureRecognizers];
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

- (DBSDisplayZoomOptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end