@interface DBSExternalDisplayMultitaskingOptionView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (DBSExternalDisplayMultitaskingOptionView)initWithFrame:(CGRect)frame multitaskingOption:(unint64_t)option;
- (DBSExternalDisplayMultitaskingOptionViewDelegate)delegate;
- (double)_imageHeight:(double)height;
- (void)_configureView;
- (void)_userDidTapOnView:(id)view;
- (void)setSelected:(BOOL)selected;
@end

@implementation DBSExternalDisplayMultitaskingOptionView

- (DBSExternalDisplayMultitaskingOptionView)initWithFrame:(CGRect)frame multitaskingOption:(unint64_t)option
{
  v8.receiver = self;
  v8.super_class = DBSExternalDisplayMultitaskingOptionView;
  v5 = [(DBSExternalDisplayMultitaskingOptionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_multitaskingOption = option;
    [(DBSExternalDisplayMultitaskingOptionView *)v5 _configureView];
  }

  return v6;
}

- (void)_configureView
{
  v85[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:0];
  [(DBSExternalDisplayMultitaskingOptionView *)self set_feedbackGenerator:v3];

  v4 = 0x277D75000uLL;
  v5 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:0];
  [v5 setAlignment:4];
  [v5 setSpacing:1.17549435e-38];
  v82 = v5;
  [v5 setDistribution:2];
  multitaskingOption = [(DBSExternalDisplayMultitaskingOptionView *)self multitaskingOption];
  v7 = [DBSExternalDisplayMultitaskingImageView alloc];
  [(DBSExternalDisplayMultitaskingOptionView *)self _imageHeight:140.0];
  if (multitaskingOption)
  {
    v8 = [(DBSExternalDisplayMultitaskingImageView *)v7 initWithImageName:@"ExtendedDisplay01" height:?];
    v9 = [DBSExternalDisplayMultitaskingImageView alloc];
    [(DBSExternalDisplayMultitaskingOptionView *)self _imageHeight:104.0];
    v10 = [(DBSExternalDisplayMultitaskingImageView *)v9 initWithImageName:@"ExtendedDisplay02" height:?];
    [v5 addArrangedSubview:v8];
    [v5 addArrangedSubview:v10];
    widthAnchor = [(DBSExternalDisplayMultitaskingImageView *)v8 widthAnchor];
    widthAnchor2 = [v5 widthAnchor];
    v13 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:0.5];
    [v13 setActive:1];
  }

  else
  {
    v8 = [(DBSExternalDisplayMultitaskingImageView *)v7 initWithImageName:@"ScreenMirroring" height:?];
    [v5 addArrangedSubview:v8];
  }

  v14 = [DBSCheckmarkView alloc];
  v15 = *MEMORY[0x277CBF3A0];
  v16 = *(MEMORY[0x277CBF3A0] + 8);
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v18 = *(MEMORY[0x277CBF3A0] + 24);
  v19 = [(DBSCheckmarkView *)v14 initWithFrame:*MEMORY[0x277CBF3A0], v16, v17, v18];
  [(DBSExternalDisplayMultitaskingOptionView *)self set_checkmarkView:v19];

  _checkmarkView = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
  [_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setAdjustsFontForContentSizeCategory:1];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v21 setFont:v22];

  [v21 setNumberOfLines:0];
  if ([(DBSExternalDisplayMultitaskingOptionView *)self multitaskingOption])
  {
    v23 = @"EXTENDED_DISPLAY";
  }

  else
  {
    v23 = @"SCREEN_MIRRORING";
  }

  v24 = DBS_LocalizedStringForConnectedDisplays(v23);
  [v21 setText:v24];

  v25 = objc_alloc(MEMORY[0x277D75A68]);
  _checkmarkView2 = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
  v85[0] = _checkmarkView2;
  v85[1] = v21;
  v81 = v21;
  v27 = 0x277CBE000uLL;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
  v29 = [v25 initWithArrangedSubviews:v28];

  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setAxis:0];
  [v29 setAlignment:3];
  v30 = v29;
  [v29 setSpacing:1.17549435e-38];
  selfCopy = self;
  if ([(DBSExternalDisplayMultitaskingOptionView *)self multitaskingOption])
  {
    v31 = DBS_LocalizedStringForConnectedDisplays(@"EXTENDED_DISPLAY_MESSAGE");
    secondaryLabelColor2 = DBS_LocalizedStringForConnectedDisplays(@"LEARN_MORE");
    v33 = [v31 stringByAppendingString:@" "];
    v34 = [v33 stringByAppendingString:secondaryLabelColor2];

    v35 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v34];
    v36 = [v34 rangeOfString:v31];
    v38 = v37;
    v39 = *MEMORY[0x277D740C0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v35 addAttribute:v39 value:secondaryLabelColor range:{v36, v38}];

    v41 = [v34 rangeOfString:secondaryLabelColor2];
    v43 = v42;
    linkColor = [MEMORY[0x277D75348] linkColor];
    v45 = v35;
    v46 = v43;
    v4 = 0x277D75000;
    [v35 addAttribute:v39 value:linkColor range:{v41, v46}];

    v27 = 0x277CBE000;
  }

  else
  {
    v31 = DBS_LocalizedStringForConnectedDisplays(@"SCREEN_MIRRORING_MESSAGE");
    v47 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v31];
    v48 = *MEMORY[0x277D740C0];
    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    v45 = v47;
    [v47 addAttribute:v48 value:secondaryLabelColor2 range:{0, objc_msgSend(v31, "length")}];
  }

  v49 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v49 setAdjustsFontForContentSizeCategory:1];
  v50 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v49 setFont:v50];

  [v49 setNumberOfLines:0];
  [v49 setTextAlignment:0];
  [v49 setAttributedText:v45];
  v51 = objc_alloc(*(v4 + 2664));
  v84[0] = v82;
  v84[1] = v30;
  v84[2] = v49;
  v52 = [*(v27 + 2656) arrayWithObjects:v84 count:3];
  v53 = [v51 initWithArrangedSubviews:v52];

  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v53 setAxis:1];
  [v53 setAlignment:1];
  [v53 setSpacing:1.17549435e-38];
  v54 = objc_alloc(*(v4 + 2664));
  v83 = v53;
  v55 = [*(v27 + 2656) arrayWithObjects:&v83 count:1];
  v56 = [v54 initWithArrangedSubviews:v55];

  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v56 setAxis:0];
  [v56 setAlignment:1];
  [v56 setSpacing:1.17549435e-38];
  [(DBSExternalDisplayMultitaskingOptionView *)selfCopy addSubview:v56];
  array = [MEMORY[0x277CBEB18] array];
  leadingAnchor = [v56 leadingAnchor];
  leadingAnchor2 = [(DBSExternalDisplayMultitaskingOptionView *)selfCopy leadingAnchor];
  v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v60];

  trailingAnchor = [v56 trailingAnchor];
  trailingAnchor2 = [(DBSExternalDisplayMultitaskingOptionView *)selfCopy trailingAnchor];
  v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v63];

  topAnchor = [v56 topAnchor];
  topAnchor2 = [(DBSExternalDisplayMultitaskingOptionView *)selfCopy topAnchor];
  v66 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v66];

  bottomAnchor = [v56 bottomAnchor];
  bottomAnchor2 = [(DBSExternalDisplayMultitaskingOptionView *)selfCopy bottomAnchor];
  v69 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v69];

  centerXAnchor = [v56 centerXAnchor];
  centerXAnchor2 = [(DBSExternalDisplayMultitaskingOptionView *)selfCopy centerXAnchor];
  v72 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v72];

  centerYAnchor = [v56 centerYAnchor];
  centerYAnchor2 = [(DBSExternalDisplayMultitaskingOptionView *)selfCopy centerYAnchor];
  v75 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v75];

  widthAnchor3 = [v56 widthAnchor];
  widthAnchor4 = [v82 widthAnchor];
  v78 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [array addObject:v78];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v79 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:selfCopy action:sel__userDidTapOnView_];
  [v79 setMinimumPressDuration:0.0];
  [v79 setCancelPastAllowableMovement:1];
  [v79 setDelegate:selfCopy];
  [(DBSExternalDisplayMultitaskingOptionView *)selfCopy addGestureRecognizer:v79];
}

- (double)_imageHeight:(double)height
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v9 = v8;

  if (v6 >= v9)
  {
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 bounds];
    v12 = v11;
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 bounds];
    v15 = v12 / v14;

    return v15 * height;
  }

  return height;
}

- (void)_userDidTapOnView:(id)view
{
  state = [view state];
  _checkmarkView = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
  isSelected = [_checkmarkView isSelected];

  if ((isSelected & 1) == 0)
  {
    if (state == 3)
    {
      delegate = [(DBSExternalDisplayMultitaskingOptionView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      delegate2 = [(DBSExternalDisplayMultitaskingOptionView *)self delegate];
      [delegate2 userDidTapOnMultitaskingOptionView:self];

      _feedbackGenerator = [(DBSExternalDisplayMultitaskingOptionView *)self _feedbackGenerator];
      [_feedbackGenerator impactOccurred];
    }

    else
    {
      if (state != 1)
      {
        return;
      }

      _feedbackGenerator = [(DBSExternalDisplayMultitaskingOptionView *)self _feedbackGenerator];
      [_feedbackGenerator prepare];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    selectedCopy = selected;
    self->_selected = selected;
    _checkmarkView = [(DBSExternalDisplayMultitaskingOptionView *)self _checkmarkView];
    [_checkmarkView setSelected:selectedCopy];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  gestureRecognizers = [(DBSExternalDisplayMultitaskingOptionView *)self gestureRecognizers];
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

- (DBSExternalDisplayMultitaskingOptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end