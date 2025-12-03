@interface PXActivityProgressViewController
- (id)_checkmarkView;
- (id)_primaryLabel;
- (id)_progressView;
- (id)_secondaryLabel;
- (void)_updatePrimaryLabel;
- (void)_updateSecondaryLabel;
- (void)_updateViewVisibility;
- (void)reset;
- (void)setFractionCompleted:(double)completed;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)updateViewConstraints;
@end

@implementation PXActivityProgressViewController

- (void)reset
{
  _progressView = [(PXActivityProgressViewController *)self _progressView];
  [_progressView prepareForReuse];
  [_progressView setHidden:0];
  _checkmarkView = [(PXActivityProgressViewController *)self _checkmarkView];
  [_checkmarkView setHidden:1];
}

- (void)updateViewConstraints
{
  v68[10] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = PXActivityProgressViewController;
  [(PXActivityProgressViewController *)&v67 updateViewConstraints];
  view = [(PXActivityProgressViewController *)self view];
  _primaryLabel = [(PXActivityProgressViewController *)self _primaryLabel];
  _secondaryLabel = [(PXActivityProgressViewController *)self _secondaryLabel];
  _progressView = [(PXActivityProgressViewController *)self _progressView];
  _checkmarkView = [(PXActivityProgressViewController *)self _checkmarkView];
  view2 = [(PXActivityProgressViewController *)self view];
  [view2 removeConstraints:self->_labelConstraints];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  topAnchor = [view topAnchor];
  if (_primaryLabel)
  {
    leadingAnchor = [_primaryLabel leadingAnchor];
    [view leadingAnchor];
    v11 = v65 = topAnchor;
    v12 = [leadingAnchor constraintEqualToAnchor:v11];
    [(NSArray *)v8 addObject:v12];

    trailingAnchor = [_primaryLabel trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSArray *)v8 addObject:v15];

    topAnchor2 = [_primaryLabel topAnchor];
    topAnchor3 = [view topAnchor];
    v18 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:30.0];
    [(NSArray *)v8 addObject:v18];

    topAnchor = [_primaryLabel bottomAnchor];
  }

  v64 = _primaryLabel;
  v62 = _secondaryLabel;
  if (_secondaryLabel)
  {
    leadingAnchor2 = [_secondaryLabel leadingAnchor];
    [view leadingAnchor];
    v21 = v20 = topAnchor;
    v22 = [leadingAnchor2 constraintEqualToAnchor:v21];
    [(NSArray *)v8 addObject:v22];

    trailingAnchor3 = [_secondaryLabel trailingAnchor];
    trailingAnchor4 = [view trailingAnchor];
    v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [(NSArray *)v8 addObject:v25];

    topAnchor4 = [_secondaryLabel topAnchor];
    v27 = [topAnchor4 constraintEqualToSystemSpacingBelowAnchor:v20 multiplier:1.0];
    [(NSArray *)v8 addObject:v27];

    topAnchor = [_secondaryLabel bottomAnchor];
  }

  v66 = topAnchor;
  [MEMORY[0x1E696ACD8] activateConstraints:v8];
  labelConstraints = self->_labelConstraints;
  self->_labelConstraints = v8;
  v61 = v8;

  view3 = [(PXActivityProgressViewController *)self view];
  [view3 removeConstraints:self->_contentConstraints];

  widthAnchor = [view widthAnchor];
  v60 = [widthAnchor constraintEqualToConstant:260.0];

  LODWORD(v31) = 1144750080;
  [v60 setPriority:v31];
  v68[0] = v60;
  topAnchor5 = [_progressView topAnchor];
  v58 = [topAnchor5 constraintEqualToAnchor:topAnchor constant:40.0];
  v68[1] = v58;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [_progressView bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:24.0];
  v68[2] = v54;
  centerXAnchor = [_progressView centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v50 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v68[3] = v50;
  centerXAnchor3 = [_checkmarkView centerXAnchor];
  centerXAnchor4 = [_progressView centerXAnchor];
  v47 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v68[4] = v47;
  centerYAnchor = [_checkmarkView centerYAnchor];
  centerYAnchor2 = [_progressView centerYAnchor];
  [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v44 = v56 = view;
  v68[5] = v44;
  [_progressView widthAnchor];
  v32 = _progressView;
  v33 = v52 = _progressView;
  v34 = [v33 constraintEqualToConstant:40.0];
  v68[6] = v34;
  heightAnchor = [v32 heightAnchor];
  v36 = [heightAnchor constraintEqualToConstant:40.0];
  v68[7] = v36;
  widthAnchor2 = [_checkmarkView widthAnchor];
  v38 = [widthAnchor2 constraintEqualToConstant:44.0];
  v68[8] = v38;
  heightAnchor2 = [_checkmarkView heightAnchor];
  v40 = [heightAnchor2 constraintEqualToConstant:44.0];
  v68[9] = v40;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:10];
  v41 = v43 = self;

  [MEMORY[0x1E696ACD8] activateConstraints:v41];
  contentConstraints = v43->_contentConstraints;
  v43->_contentConstraints = v41;
}

- (id)_checkmarkView
{
  checkmarkView = self->_checkmarkView;
  if (!checkmarkView)
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:40.0];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    v6 = [v5 imageWithSymbolConfiguration:v4];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [v6 px_tintedImageWithColor:secondaryLabelColor];

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    v10 = self->_checkmarkView;
    self->_checkmarkView = v9;

    [(UIImageView *)self->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PXActivityProgressViewController *)self view];
    [view addSubview:self->_checkmarkView];

    [(UIImageView *)self->_checkmarkView setHidden:1];
    checkmarkView = self->_checkmarkView;
  }

  return checkmarkView;
}

- (id)_progressView
{
  progressView = self->_progressView;
  if (!progressView)
  {
    v4 = [[off_1E7721870 alloc] initWithFrame:5 style:{0.0, 0.0, 40.0, 40.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PXActivityProgressViewController *)self view];
    [view addSubview:v4];

    v6 = self->_progressView;
    self->_progressView = v4;

    progressView = self->_progressView;
  }

  return progressView;
}

- (void)_updateSecondaryLabel
{
  v11[2] = *MEMORY[0x1E69E9840];
  secondaryText = [(PXActivityProgressViewController *)self secondaryText];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5 = v4;
  if (secondaryText)
  {
    v6 = *MEMORY[0x1E69DB650];
    v10[0] = *MEMORY[0x1E69DB648];
    v10[1] = v6;
    v11[0] = v4;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v11[1] = secondaryLabelColor;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:secondaryText attributes:v8];
    [(UILabel *)self->_secondaryLabel setAttributedText:v9];
  }

  else
  {
    [(UILabel *)self->_secondaryLabel setAttributedText:0];
  }
}

- (void)_updatePrimaryLabel
{
  v12[2] = *MEMORY[0x1E69E9840];
  primaryText = [(PXActivityProgressViewController *)self primaryText];
  v4 = *MEMORY[0x1E69DDD40];
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v4 weight:*MEMORY[0x1E69DB958]];
  v6 = v5;
  if (primaryText)
  {
    v7 = *MEMORY[0x1E69DB650];
    v11[0] = *MEMORY[0x1E69DB648];
    v11[1] = v7;
    v12[0] = v5;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v12[1] = labelColor;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:primaryText attributes:v9];
    [(UILabel *)self->_primaryLabel setAttributedText:v10];
  }

  else
  {
    [(UILabel *)self->_primaryLabel setAttributedText:0];
  }
}

- (id)_secondaryLabel
{
  secondaryText = [(PXActivityProgressViewController *)self secondaryText];
  if (secondaryText && !self->_secondaryLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PXActivityProgressViewController *)self view];
    [view addSubview:v4];

    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v4;

    [(PXActivityProgressViewController *)self _updateSecondaryLabel];
  }

  v7 = self->_secondaryLabel;
  v8 = v7;

  return v7;
}

- (id)_primaryLabel
{
  primaryText = [(PXActivityProgressViewController *)self primaryText];
  if (primaryText && !self->_primaryLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PXActivityProgressViewController *)self view];
    [view addSubview:v4];

    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v4;

    [(PXActivityProgressViewController *)self _updatePrimaryLabel];
  }

  v7 = self->_primaryLabel;
  v8 = v7;

  return v7;
}

- (void)_updateViewVisibility
{
  [(PXActivityProgressViewController *)self fractionCompleted];
  v4 = v3;
  showCheckmarkOnCompletion = [(PXActivityProgressViewController *)self showCheckmarkOnCompletion];
  v6 = v4 >= 1.0 && showCheckmarkOnCompletion;
  _progressView = [(PXActivityProgressViewController *)self _progressView];
  [_progressView setHidden:v6];

  _checkmarkView = [(PXActivityProgressViewController *)self _checkmarkView];
  [_checkmarkView setHidden:v6 ^ 1];
}

- (void)setFractionCompleted:(double)completed
{
  self->_fractionCompleted = completed;
  _progressView = [(PXActivityProgressViewController *)self _progressView];
  *&v6 = completed;
  [_progressView setProgress:v6];

  [(PXActivityProgressViewController *)self _updateViewVisibility];
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_secondaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_secondaryText, text);
    [(PXActivityProgressViewController *)self _updateSecondaryLabel];
    [(PXActivityProgressViewController *)self updateViewConstraints];
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_primaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_primaryText, text);
    [(PXActivityProgressViewController *)self _updatePrimaryLabel];
    [(PXActivityProgressViewController *)self updateViewConstraints];
  }
}

@end