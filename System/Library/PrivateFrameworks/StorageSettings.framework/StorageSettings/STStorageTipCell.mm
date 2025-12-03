@interface STStorageTipCell
- (STStorageTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_activateOption;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation STStorageTipCell

- (STStorageTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v46[7] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v45.receiver = self;
  v45.super_class = STStorageTipCell;
  v9 = [(PSTableCell *)&v45 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(STStorageTipCell *)v9 contentView];
    v12 = objc_alloc(MEMORY[0x277D756B8]);
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v17;

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v10->_titleLabel setFont:v19];

    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setAccessibilityIdentifier:@"Title"];
    [(UILabel *)v10->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_titleLabel];
    v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    appIconView = v10->_appIconView;
    v10->_appIconView = v20;

    [(UIImageView *)v10->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_appIconView setAccessibilityIdentifier:@"Icon"];
    [(UIImageView *)v10->_appIconView setContentMode:1];
    [contentView addSubview:v10->_appIconView];
    v22 = [MEMORY[0x277D75220] buttonWithType:1];
    enableButton = v10->_enableButton;
    v10->_enableButton = v22;

    [(UIButton *)v10->_enableButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v10->_enableButton setAccessibilityIdentifier:@"Switch"];
    v24 = v10->_enableButton;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIButton *)v24 setTitleColor:systemBlueColor forState:0];

    v26 = v10->_enableButton;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIButton *)v26 setTitleColor:systemGrayColor forState:2];

    [(UIButton *)v10->_enableButton addTarget:v10 action:sel__activateOption forControlEvents:0x2000];
    [(UIButton *)v10->_enableButton setEnabled:1];
    [(UIButton *)v10->_enableButton setHidden:1];
    [contentView addSubview:v10->_enableButton];
    v28 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v10->_spinner;
    v10->_spinner = v28;

    [(UIActivityIndicatorView *)v10->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v10->_spinner setAccessibilityIdentifier:@"Spinner"];
    [(UIActivityIndicatorView *)v10->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v10->_spinner sizeToFit];
    [(UIActivityIndicatorView *)v10->_spinner bounds];
    v10->_nativeSpinnerWidth = v30;
    [contentView addSubview:v10->_spinner];
    v31 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    checkIconView = v10->_checkIconView;
    v10->_checkIconView = v31;

    [(UIImageView *)v10->_checkIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_checkIconView setAccessibilityIdentifier:@"CheckIcon"];
    [(UIImageView *)v10->_checkIconView setContentMode:1];
    [(UIImageView *)v10->_checkIconView setHidden:1];
    v33 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)v10->_checkIconView setImage:v33];

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [(UIImageView *)v10->_checkIconView setTintColor:systemGreenColor];

    [contentView addSubview:v10->_checkIconView];
    v35 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
    progressLabel = v10->_progressLabel;
    v10->_progressLabel = v35;

    v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v10->_progressLabel setFont:v37];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v10->_progressLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v10->_progressLabel setHidden:1];
    [(UILabel *)v10->_progressLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_progressLabel setAccessibilityIdentifier:@"Progress"];
    [(UILabel *)v10->_progressLabel setNumberOfLines:1];
    [(UILabel *)v10->_progressLabel setLineBreakMode:4];
    [contentView addSubview:v10->_progressLabel];
    v39 = [STStorageProgressView alloc];
    [(UIActivityIndicatorView *)v10->_spinner frame];
    v40 = [(STStorageProgressView *)v39 initWithFrame:?];
    progressView = v10->_progressView;
    v10->_progressView = v40;

    [(STStorageProgressView *)v10->_progressView setPercent:0.0];
    [(STStorageProgressView *)v10->_progressView setHidden:1];
    [(STStorageProgressView *)v10->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STStorageProgressView *)v10->_progressView setAccessibilityIdentifier:@"ProgressIndicator"];
    [(STStorageProgressView *)v10->_progressView sizeToFit];
    [contentView addSubview:v10->_progressView];
    v46[0] = v10->_titleLabel;
    v46[1] = v10->_appIconView;
    v46[2] = v10->_enableButton;
    v46[3] = v10->_spinner;
    v46[4] = v10->_checkIconView;
    v46[5] = v10->_progressLabel;
    v46[6] = v10->_progressView;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:7];
    [contentView setAccessibilityElements:v42];

    [(STStorageTipCell *)v10 setSeparatorInset:0.0, 58.0, 0.0, 0.0];
    [(STStorageTipCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  v43 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateConstraints
{
  traitCollection = [(STStorageTipCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v70 = self->_hformat;
  v69 = self->_h2format;
  titleWidth = self->_titleWidth;
  enableWidth = self->_enableWidth;
  progressWidth = self->_progressWidth;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UIButton *)self->_enableButton sizeToFit];
  [(UILabel *)self->_progressLabel sizeToFit];
  [(UILabel *)self->_titleLabel bounds];
  self->_titleWidth = v8;
  [(UIButton *)self->_enableButton bounds];
  self->_enableWidth = v9;
  [(UILabel *)self->_progressLabel bounds];
  self->_progressWidth = v10;
  hformat = self->_hformat;
  self->_hformat = @"H:|-59-[_titleLabel]-15-|";

  h2format = self->_h2format;
  self->_h2format = 0;

  isOption = self->_isOption;
  if (IsAccessibilityCategory)
  {
    v14 = v70;
    if (!self->_isOption)
    {
      goto LABEL_21;
    }

    percent = self->_percent;
    if (percent == 0.0)
    {
      v16 = self->_h2format;
      v17 = @"H:|-59-[_enableButton(==enableWidth)]";
    }

    else if (percent >= 1.0)
    {
      v16 = self->_h2format;
      v17 = @"H:|-59-[_checkIconView(==56)]";
    }

    else
    {
      v16 = self->_h2format;
      if (percent >= 0.0)
      {
        v17 = @"H:|-59-[_progressLabel(==progressWidth)]-6-[_progressView(==48)]";
      }

      else
      {
        v17 = @"H:|-59-[_progressLabel(==progressWidth)]-6-[_spinner(==spinnerWidth)]";
      }
    }

    self->_h2format = &v17->isa;
  }

  else
  {
    v14 = v70;
    if (!self->_isOption)
    {
      goto LABEL_21;
    }

    v18 = self->_percent;
    if (v18 == 0.0)
    {
      v16 = self->_hformat;
      v19 = @"H:|-59-[_titleLabel]-6-[_enableButton(==enableWidth)]-15-|";
    }

    else if (v18 >= 1.0)
    {
      v16 = self->_hformat;
      v19 = @"H:|-59-[_titleLabel]-6-[_checkIconView(==28)]-15-|";
    }

    else
    {
      v16 = self->_hformat;
      if (v18 >= 0.0)
      {
        v19 = @"H:|-59-[_titleLabel]-6-[_progressLabel(==progressWidth)]-6-[_progressView(==24)]-15-|";
      }

      else
      {
        v19 = @"H:|-59-[_titleLabel]-6-[_progressLabel(==progressWidth)]-6-[_spinner(==spinnerWidth)]-15-|";
      }
    }

    self->_hformat = &v19->isa;
  }

LABEL_21:
  if (v14 != self->_hformat)
  {
    v20 = self->_titleWidth;
    goto LABEL_23;
  }

  v20 = self->_titleWidth;
  v48 = v69;
  if (v69 != self->_h2format || titleWidth != v20 || enableWidth != self->_enableWidth || progressWidth != self->_progressWidth)
  {
LABEL_23:
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_enableWidth];
    nativeSpinnerWidth = self->_nativeSpinnerWidth;
    if (IsAccessibilityCategory)
    {
      nativeSpinnerWidth = nativeSpinnerWidth + nativeSpinnerWidth;
    }

    v24 = [MEMORY[0x277CCABB0] numberWithDouble:nativeSpinnerWidth];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progressWidth];
    v26 = _NSDictionaryOfVariableBindings(&cfstr_AppiconviewTit.isa, self->_appIconView, self->_titleLabel, self->_enableButton, self->_spinner, self->_checkIconView, self->_progressLabel, self->_progressView, 0);
    v67 = v25;
    v68 = v24;
    v27 = _NSDictionaryOfVariableBindings(&cfstr_TitlewidthSpin.isa, v21, v24, v22, v25, 0);
    if ([(NSMutableArray *)self->_constraints count])
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
    }

    array = [MEMORY[0x277CBEB18] array];
    constraints = self->_constraints;
    self->_constraints = array;

    v30 = self->_constraints;
    v31 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:self->_hformat options:0 metrics:v27 views:v26];
    [(NSMutableArray *)v30 addObjectsFromArray:v31];

    v32 = self->_h2format;
    if (v32)
    {
      v33 = self->_constraints;
      v34 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v32 options:0 metrics:v27 views:v26];
      [(NSMutableArray *)v33 addObjectsFromArray:v34];
    }

    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    v35 = self->_constraints;
    v36 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-15-[_appIconView(==29)]" options:0 metrics:0 views:v26];
    [(NSMutableArray *)v35 addObjectsFromArray:v36];

    v37 = self->_constraints;
    if (IsAccessibilityCategory)
    {
      v38 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appIconView attribute:4 relatedBy:0 toItem:self->_titleLabel attribute:12 multiplier:1.0 constant:2.0];
      [(NSMutableArray *)v37 addObject:v38];

      v39 = self->_constraints;
      v40 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_appIconView(==29)]-(>=8)-|" options:0 metrics:0 views:v26];
      [(NSMutableArray *)v39 addObjectsFromArray:v40];

      v41 = self->_constraints;
      v42 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-13-[_titleLabel]-(>=8)-|" options:0 metrics:0 views:v26];
      [(NSMutableArray *)v41 addObjectsFromArray:v42];

      if (([(UILabel *)self->_progressLabel isHidden]& 1) == 0)
      {
        v43 = self->_constraints;
        v44 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-13-[_titleLabel]-1-[_progressLabel]-(>=8)-|" options:0 metrics:0 views:v26];
        [(NSMutableArray *)v43 addObjectsFromArray:v44];
      }

      v45 = v27;
      if (([(UIActivityIndicatorView *)self->_spinner isHidden]& 1) == 0)
      {
        v46 = self->_constraints;
        v47 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_titleLabel]-8-[_spinner]-(>=8)-|" options:0 metrics:0 views:v26];
        [(NSMutableArray *)v46 addObjectsFromArray:v47];
      }

      v48 = v69;
      if (([(STStorageProgressView *)self->_progressView isHidden]& 1) == 0)
      {
        v49 = self->_constraints;
        v50 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_titleLabel]-6-[_progressView(==48)]-(>=8)-|" options:0 metrics:v27 views:v26];
        [(NSMutableArray *)v49 addObjectsFromArray:v50];
      }

      if (([(UIButton *)self->_enableButton isHidden]& 1) == 0)
      {
        v51 = self->_constraints;
        v52 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_titleLabel]-1-[_enableButton]-(>=8)-|" options:0 metrics:0 views:v26];
        [(NSMutableArray *)v51 addObjectsFromArray:v52];
      }

      if (([(UIImageView *)self->_checkIconView isHidden]& 1) != 0)
      {
        goto LABEL_42;
      }

      v53 = @"V:[_titleLabel]-10-[_checkIconView(==56)]-(>=8)-|";
    }

    else
    {
      v54 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-20-[_appIconView(==29)]-(>=8)-|" options:0 metrics:0 views:v26];
      [(NSMutableArray *)v37 addObjectsFromArray:v54];

      v55 = self->_constraints;
      v56 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-19-[_titleLabel]-(>=8)-|" options:0 metrics:0 views:v26];
      [(NSMutableArray *)v55 addObjectsFromArray:v56];

      v57 = self->_constraints;
      v58 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-14-[_progressLabel]" options:0 metrics:0 views:v26];
      [(NSMutableArray *)v57 addObjectsFromArray:v58];

      v59 = self->_constraints;
      v60 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-13-[_spinner]" options:0 metrics:0 views:v26];
      [(NSMutableArray *)v59 addObjectsFromArray:v60];

      v61 = self->_constraints;
      v45 = v27;
      v62 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-10-[_progressView(==24)]" options:0 metrics:v27 views:v26];
      [(NSMutableArray *)v61 addObjectsFromArray:v62];

      v63 = self->_constraints;
      v64 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-7-[_enableButton]" options:0 metrics:0 views:v26];
      [(NSMutableArray *)v63 addObjectsFromArray:v64];

      v53 = @"V:|-10-[_checkIconView(==28)]";
      v48 = v69;
    }

    v65 = self->_constraints;
    v66 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v53 options:0 metrics:0 views:v26];
    [(NSMutableArray *)v65 addObjectsFromArray:v66];

LABEL_42:
    [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];

    v14 = v70;
  }

  v72.receiver = self;
  v72.super_class = STStorageTipCell;
  [(STStorageTipCell *)&v72 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v30[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v28.receiver = self;
  v28.super_class = STStorageTipCell;
  [(PSTableCell *)&v28 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"stTitle"];
  [(UILabel *)self->_titleLabel setText:v5];
  v6 = [specifierCopy propertyForKey:@"stIcon"];
  if (v6)
  {
    [(UIImageView *)self->_appIconView setImage:v6];
  }

  else
  {
    v7 = [specifierCopy propertyForKey:@"stRepresentedApp"];
    if ([v7 length])
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __53__STStorageTipCell_refreshCellContentsWithSpecifier___block_invoke;
      v27[3] = &unk_2782E2840;
      v27[4] = self;
      STLoadTableIconForAppID(v7, v27);
    }

    else
    {
      v8 = MEMORY[0x277D755B8];
      traitCollection = [(UIImageView *)self->_appIconView traitCollection];
      v10 = [v8 systemImageNamed:@"info.circle" compatibleWithTraitCollection:traitCollection];
      [(UIImageView *)self->_appIconView setImage:v10];
    }
  }

  v11 = [specifierCopy propertyForKey:@"stEnableTitle"];

  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = v11;
  if (!v11)
  {
    v13 = STFrameworkLocStr(@"ST_ENABLE");
  }

  v29 = *MEMORY[0x277D740A8];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v30[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v16 = [v12 initWithString:v13 attributes:v15];

  if (!v11)
  {
  }

  [(UIButton *)self->_enableButton setAttributedTitle:v16 forState:0];
  v17 = [specifierCopy propertyForKey:@"stTipKind"];
  self->_isOption = [v17 isEqualToString:@"stOptionTip"];

  if (self->_isOption)
  {
    v18 = [specifierCopy propertyForKey:@"stPercent"];
    [v18 floatValue];
    self->_percent = *&v19;
    if (*&v19 > 1.0)
    {
      self->_percent = 1.0;
      LODWORD(v19) = 1.0;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];

      *&v19 = self->_percent;
      v18 = v20;
    }

    if (*&v19 == 0.0 || *&v19 == 1.0)
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
      [(STStorageProgressView *)self->_progressView setHidden:1];
      [(UILabel *)self->_progressLabel setHidden:1];
      [(UILabel *)self->_progressLabel setText:0];
    }

    else if (*&v19 >= 0.0)
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
      [(STStorageProgressView *)self->_progressView setPercent:self->_percent];
      [(STStorageProgressView *)self->_progressView setHidden:0];
      v23 = PercentString_onceToken;
      v24 = v18;
      if (v23 != -1)
      {
        [STStorageTipCell refreshCellContentsWithSpecifier:];
      }

      v25 = [PercentString__formatter stringFromNumber:v24];

      [(UILabel *)self->_progressLabel setText:v25];
      [(UILabel *)self->_progressLabel setHidden:0];
    }

    else
    {
      [(STStorageProgressView *)self->_progressView setHidden:1];
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
      v21 = [specifierCopy propertyForKey:@"stActivating"];
      [(UILabel *)self->_progressLabel setText:v21];

      text = [(UILabel *)self->_progressLabel text];
      -[UILabel setHidden:](self->_progressLabel, "setHidden:", [text length] == 0);
    }

    [(UIButton *)self->_enableButton setHidden:self->_percent != 0.0];
    [(UIImageView *)self->_checkIconView setHidden:self->_percent < 1.0];
  }

  [(STStorageTipCell *)self setNeedsUpdateConstraints];
  [(STStorageTipCell *)self setNeedsDisplay];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_activateOption
{
  specifier = [(PSTableCell *)self specifier];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [specifier performSetterWithValue:v2];
}

@end