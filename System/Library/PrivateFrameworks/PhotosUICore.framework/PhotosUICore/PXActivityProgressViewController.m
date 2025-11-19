@interface PXActivityProgressViewController
- (id)_checkmarkView;
- (id)_primaryLabel;
- (id)_progressView;
- (id)_secondaryLabel;
- (void)_updatePrimaryLabel;
- (void)_updateSecondaryLabel;
- (void)_updateViewVisibility;
- (void)reset;
- (void)setFractionCompleted:(double)a3;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)updateViewConstraints;
@end

@implementation PXActivityProgressViewController

- (void)reset
{
  v4 = [(PXActivityProgressViewController *)self _progressView];
  [v4 prepareForReuse];
  [v4 setHidden:0];
  v3 = [(PXActivityProgressViewController *)self _checkmarkView];
  [v3 setHidden:1];
}

- (void)updateViewConstraints
{
  v68[10] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = PXActivityProgressViewController;
  [(PXActivityProgressViewController *)&v67 updateViewConstraints];
  v3 = [(PXActivityProgressViewController *)self view];
  v4 = [(PXActivityProgressViewController *)self _primaryLabel];
  v5 = [(PXActivityProgressViewController *)self _secondaryLabel];
  v6 = [(PXActivityProgressViewController *)self _progressView];
  v63 = [(PXActivityProgressViewController *)self _checkmarkView];
  v7 = [(PXActivityProgressViewController *)self view];
  [v7 removeConstraints:self->_labelConstraints];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v3 topAnchor];
  if (v4)
  {
    v10 = [v4 leadingAnchor];
    [v3 leadingAnchor];
    v11 = v65 = v9;
    v12 = [v10 constraintEqualToAnchor:v11];
    [(NSArray *)v8 addObject:v12];

    v13 = [v4 trailingAnchor];
    v14 = [v3 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [(NSArray *)v8 addObject:v15];

    v16 = [v4 topAnchor];
    v17 = [v3 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:30.0];
    [(NSArray *)v8 addObject:v18];

    v9 = [v4 bottomAnchor];
  }

  v64 = v4;
  v62 = v5;
  if (v5)
  {
    v19 = [v5 leadingAnchor];
    [v3 leadingAnchor];
    v21 = v20 = v9;
    v22 = [v19 constraintEqualToAnchor:v21];
    [(NSArray *)v8 addObject:v22];

    v23 = [v5 trailingAnchor];
    v24 = [v3 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [(NSArray *)v8 addObject:v25];

    v26 = [v5 topAnchor];
    v27 = [v26 constraintEqualToSystemSpacingBelowAnchor:v20 multiplier:1.0];
    [(NSArray *)v8 addObject:v27];

    v9 = [v5 bottomAnchor];
  }

  v66 = v9;
  [MEMORY[0x1E696ACD8] activateConstraints:v8];
  labelConstraints = self->_labelConstraints;
  self->_labelConstraints = v8;
  v61 = v8;

  v29 = [(PXActivityProgressViewController *)self view];
  [v29 removeConstraints:self->_contentConstraints];

  v30 = [v3 widthAnchor];
  v60 = [v30 constraintEqualToConstant:260.0];

  LODWORD(v31) = 1144750080;
  [v60 setPriority:v31];
  v68[0] = v60;
  v59 = [v6 topAnchor];
  v58 = [v59 constraintEqualToAnchor:v9 constant:40.0];
  v68[1] = v58;
  v57 = [v3 bottomAnchor];
  v55 = [v6 bottomAnchor];
  v54 = [v57 constraintEqualToAnchor:v55 constant:24.0];
  v68[2] = v54;
  v53 = [v6 centerXAnchor];
  v51 = [v3 centerXAnchor];
  v50 = [v53 constraintEqualToAnchor:v51];
  v68[3] = v50;
  v49 = [v63 centerXAnchor];
  v48 = [v6 centerXAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v68[4] = v47;
  v46 = [v63 centerYAnchor];
  v45 = [v6 centerYAnchor];
  [v46 constraintEqualToAnchor:v45];
  v44 = v56 = v3;
  v68[5] = v44;
  [v6 widthAnchor];
  v32 = v6;
  v33 = v52 = v6;
  v34 = [v33 constraintEqualToConstant:40.0];
  v68[6] = v34;
  v35 = [v32 heightAnchor];
  v36 = [v35 constraintEqualToConstant:40.0];
  v68[7] = v36;
  v37 = [v63 widthAnchor];
  v38 = [v37 constraintEqualToConstant:44.0];
  v68[8] = v38;
  v39 = [v63 heightAnchor];
  v40 = [v39 constraintEqualToConstant:44.0];
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
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [v6 px_tintedImageWithColor:v7];

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    v10 = self->_checkmarkView;
    self->_checkmarkView = v9;

    [(UIImageView *)self->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(PXActivityProgressViewController *)self view];
    [v11 addSubview:self->_checkmarkView];

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
    v5 = [(PXActivityProgressViewController *)self view];
    [v5 addSubview:v4];

    v6 = self->_progressView;
    self->_progressView = v4;

    progressView = self->_progressView;
  }

  return progressView;
}

- (void)_updateSecondaryLabel
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXActivityProgressViewController *)self secondaryText];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5 = v4;
  if (v3)
  {
    v6 = *MEMORY[0x1E69DB650];
    v10[0] = *MEMORY[0x1E69DB648];
    v10[1] = v6;
    v11[0] = v4;
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v8];
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
  v3 = [(PXActivityProgressViewController *)self primaryText];
  v4 = *MEMORY[0x1E69DDD40];
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v4 weight:*MEMORY[0x1E69DB958]];
  v6 = v5;
  if (v3)
  {
    v7 = *MEMORY[0x1E69DB650];
    v11[0] = *MEMORY[0x1E69DB648];
    v11[1] = v7;
    v12[0] = v5;
    v8 = [MEMORY[0x1E69DC888] labelColor];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v9];
    [(UILabel *)self->_primaryLabel setAttributedText:v10];
  }

  else
  {
    [(UILabel *)self->_primaryLabel setAttributedText:0];
  }
}

- (id)_secondaryLabel
{
  v3 = [(PXActivityProgressViewController *)self secondaryText];
  if (v3 && !self->_secondaryLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(PXActivityProgressViewController *)self view];
    [v5 addSubview:v4];

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
  v3 = [(PXActivityProgressViewController *)self primaryText];
  if (v3 && !self->_primaryLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(PXActivityProgressViewController *)self view];
    [v5 addSubview:v4];

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
  v5 = [(PXActivityProgressViewController *)self showCheckmarkOnCompletion];
  v6 = v4 >= 1.0 && v5;
  v7 = [(PXActivityProgressViewController *)self _progressView];
  [v7 setHidden:v6];

  v8 = [(PXActivityProgressViewController *)self _checkmarkView];
  [v8 setHidden:v6 ^ 1];
}

- (void)setFractionCompleted:(double)a3
{
  self->_fractionCompleted = a3;
  v5 = [(PXActivityProgressViewController *)self _progressView];
  *&v6 = a3;
  [v5 setProgress:v6];

  [(PXActivityProgressViewController *)self _updateViewVisibility];
}

- (void)setSecondaryText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_secondaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_secondaryText, a3);
    [(PXActivityProgressViewController *)self _updateSecondaryLabel];
    [(PXActivityProgressViewController *)self updateViewConstraints];
  }
}

- (void)setPrimaryText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_primaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_primaryText, a3);
    [(PXActivityProgressViewController *)self _updatePrimaryLabel];
    [(PXActivityProgressViewController *)self updateViewConstraints];
  }
}

@end