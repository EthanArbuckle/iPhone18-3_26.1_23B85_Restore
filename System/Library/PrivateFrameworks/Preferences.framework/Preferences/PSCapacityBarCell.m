@interface PSCapacityBarCell
+ (id)specifierWithTitle:(id)a3;
+ (id)specifierWithTitle:(id)a3 useStandardFontSizeForSizeLabel:(BOOL)a4;
- (PSCapacityBarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PSCapacityBarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)usageString:(id)a3;
- (void)addHorizontalLegends;
- (void)addVerticalLegends;
- (void)createCommonConstraints;
- (void)createLargeConstraints;
- (void)createLegends:(id)a3;
- (void)createNormalConstraints;
- (void)initializeViews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation PSCapacityBarCell

+ (id)specifierWithTitle:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_1EFE45030 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:@"cellClass"];
  [v4 setProperty:v3 forKey:@"label"];

  return v4;
}

+ (id)specifierWithTitle:(id)a3 useStandardFontSizeForSizeLabel:(BOOL)a4
{
  v4 = a4;
  v5 = [a1 specifierWithTitle:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v5 setProperty:v6 forKey:@"psCapBarSizeLblUsesStandardFont"];

  return v5;
}

- (PSCapacityBarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PSCapacityBarCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PSCapacityBarCell *)v4 initializeViews];
  }

  return v5;
}

- (PSCapacityBarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = PSCapacityBarCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(PSCapacityBarCell *)v9 initializeViews];
    [(PSCapacityBarCell *)v10 refreshCellContentsWithSpecifier:v8];
  }

  return v10;
}

- (void)initializeViews
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PSCapacityBarCell;
  v3 = [(PSTableCell *)&v37 titleLabel];
  [v3 setText:0];

  v36.receiver = self;
  v36.super_class = PSCapacityBarCell;
  v4 = [(PSTableCell *)&v36 titleLabel];
  [v4 setHidden:1];

  v5 = [(PSCapacityBarCell *)self contentView];
  [v5 layoutIfNeeded];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  bigFont = self->_bigFont;
  self->_bigFont = v6;

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  legendFont = self->_legendFont;
  self->_legendFont = v9;

  v11 = objc_alloc(MEMORY[0x1E69DCC10]);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v16;

  [(UILabel *)self->_titleLabel setFont:self->_bigFont];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"Title"];
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setLineBreakMode:4];
  [(UILabel *)self->_titleLabel setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  LODWORD(v18) = 1132068864;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:0 forAxis:v18];
  [v5 addSubview:self->_titleLabel];
  v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
  sizeLabel = self->_sizeLabel;
  self->_sizeLabel = v19;

  [(UILabel *)self->_sizeLabel setFont:v8];
  [(UILabel *)self->_sizeLabel setEnabled:0];
  [(UILabel *)self->_sizeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_sizeLabel setAccessibilityIdentifier:@"Size"];
  [(UILabel *)self->_sizeLabel setNumberOfLines:1];
  [(UILabel *)self->_sizeLabel setLineBreakMode:4];
  [(UILabel *)self->_sizeLabel setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)self->_sizeLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_sizeLabel setAdjustsFontForContentSizeCategory:1];
  LODWORD(v21) = 1144750080;
  [(UILabel *)self->_sizeLabel setContentHuggingPriority:0 forAxis:v21];
  [v5 addSubview:self->_sizeLabel];
  v22 = [[PSCapacityBarView alloc] initWithFrame:v12, v13, v14, v15];
  barView = self->_barView;
  self->_barView = v22;

  [(PSCapacityBarView *)self->_barView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PSCapacityBarView *)self->_barView setAccessibilityIdentifier:@"CategoryBar"];
  [v5 addSubview:self->_barView];
  v24 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v12, v13, v14, v15}];
  legendView = self->_legendView;
  self->_legendView = v24;

  [(UIStackView *)self->_legendView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_legendView setAccessibilityIdentifier:@"Legend"];
  LODWORD(v26) = 1148846080;
  [(UIStackView *)self->_legendView setContentHuggingPriority:1 forAxis:v26];
  [v5 addSubview:self->_legendView];
  v27 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
  loadingLabel = self->_loadingLabel;
  self->_loadingLabel = v27;

  [(UILabel *)self->_loadingLabel setFont:self->_legendFont];
  [(UILabel *)self->_loadingLabel setEnabled:0];
  [(UILabel *)self->_loadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_loadingLabel setAccessibilityIdentifier:@"Calculating"];
  [(UILabel *)self->_loadingLabel setNumberOfLines:1];
  [(UILabel *)self->_loadingLabel setLineBreakMode:0];
  [(UILabel *)self->_loadingLabel setAdjustsFontForContentSizeCategory:1];
  v29 = [[PSCapacityBarLegendView alloc] initWithCapacityBarCategory:0];
  otherLegend = self->_otherLegend;
  self->_otherLegend = v29;

  WeakRetained = objc_loadWeakRetained(&self->super._specifier);
  v32 = [WeakRetained propertyForKey:@"psCapBarHideLegend"];
  self->_hideLegend = [v32 BOOLValue];

  v33 = self->_sizeLabel;
  v38[0] = self->_titleLabel;
  v38[1] = v33;
  v34 = self->_legendView;
  v38[2] = self->_barView;
  v38[3] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v5 setAccessibilityElements:v35];

  [(PSCapacityBarCell *)self setNeedsUpdateConstraints];
  [(PSCapacityBarCell *)self setNeedsLayout];
}

- (void)createNormalConstraints
{
  v11 = [(PSCapacityBarCell *)self contentView];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:5 relatedBy:0 toItem:v11 attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v3 addObject:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:6 relatedBy:0 toItem:self->_sizeLabel attribute:5 multiplier:1.0 constant:-12.0];
  [(NSMutableArray *)v3 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_sizeLabel attribute:6 relatedBy:0 toItem:v11 attribute:6 multiplier:1.0 constant:-15.0];
  [(NSMutableArray *)v3 addObject:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_sizeLabel attribute:12 relatedBy:0 toItem:self->_titleLabel attribute:12 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v3 addObject:v8];

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_barView attribute:3 relatedBy:0 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v9];

  normalConstraints = self->_normalConstraints;
  self->_normalConstraints = v3;
}

- (void)createLargeConstraints
{
  v14 = [(PSCapacityBarCell *)self contentView];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:9];
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:5 relatedBy:0 toItem:v14 attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v3 addObject:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:6 relatedBy:-1 toItem:v14 attribute:6 multiplier:1.0 constant:-15.0];
  [(NSMutableArray *)v3 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_sizeLabel attribute:5 relatedBy:0 toItem:v14 attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v3 addObject:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_sizeLabel attribute:6 relatedBy:-1 toItem:v14 attribute:6 multiplier:1.0 constant:-15.0];
  [(NSMutableArray *)v3 addObject:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:3 relatedBy:0 toItem:v14 attribute:3 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v8];

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:v14 attribute:4 relatedBy:1 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v9];

  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_sizeLabel attribute:3 relatedBy:0 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:4.0];
  [(NSMutableArray *)v3 addObject:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v14 attribute:4 relatedBy:1 toItem:self->_sizeLabel attribute:4 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v11];

  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_barView attribute:3 relatedBy:0 toItem:self->_sizeLabel attribute:4 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v12];

  largeConstraints = self->_largeConstraints;
  self->_largeConstraints = v3;
}

- (void)createCommonConstraints
{
  v17 = [(PSCapacityBarCell *)self contentView];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_barView attribute:5 relatedBy:0 toItem:v17 attribute:5 multiplier:1.0 constant:12.0];
  [(NSMutableArray *)v3 addObject:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_barView attribute:6 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:-12.0];
  [(NSMutableArray *)v3 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:4 relatedBy:1 toItem:self->_barView attribute:4 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v3 addObject:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_barView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:0.0 constant:16.0];
  barHeightConstraint = self->_barHeightConstraint;
  self->_barHeightConstraint = v7;

  [(NSMutableArray *)v3 addObject:self->_barHeightConstraint];
  commonConstraints = self->_commonConstraints;
  self->_commonConstraints = v3;
  v10 = v3;

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];

  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendView attribute:5 relatedBy:0 toItem:v17 attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v11 addObject:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendView attribute:6 relatedBy:-1 toItem:v17 attribute:6 multiplier:1.0 constant:-15.0];
  [(NSMutableArray *)v11 addObject:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendView attribute:3 relatedBy:0 toItem:self->_barView attribute:4 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v11 addObject:v14];

  v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:4 relatedBy:1 toItem:self->_legendView attribute:4 multiplier:1.0 constant:10.0];
  [(NSMutableArray *)v11 addObject:v15];

  legendConstraints = self->_legendConstraints;
  self->_legendConstraints = v11;
}

- (void)addVerticalLegends
{
  v14 = *MEMORY[0x1E69E9840];
  [(UIStackView *)self->_legendView setAxis:1];
  [(UIStackView *)self->_legendView setAlignment:1];
  [(UIFont *)self->_legendFont leading];
  [(UIStackView *)self->_legendView setSpacing:v3 * 1.5];
  v4 = self->_legends;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (*(*(&v9 + 1) + 8 * i) != self->_otherLegend)
        {
          [(UIStackView *)self->_legendView addArrangedSubview:?];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  if (self->_showOtherLegend && [(NSArray *)v4 containsObject:self->_otherLegend])
  {
    [(UIStackView *)self->_legendView addArrangedSubview:self->_otherLegend];
  }
}

- (void)addHorizontalLegends
{
  v20 = *MEMORY[0x1E69E9840];
  [(UIStackView *)self->_legendView setAxis:0];
  [(UIStackView *)self->_legendView setAlignment:4];
  [(UIStackView *)self->_legendView setSpacing:12.0];
  v3 = self->_legends;
  [(PSCapacityBarLegendView *)self->_otherLegend layoutIfNeeded];
  v4 = [(PSCapacityBarCell *)self contentView];
  [v4 frame];
  v6 = v5 + -30.0;

  if (self->_showOtherLegend)
  {
    [(PSCapacityBarLegendView *)self->_otherLegend frame];
    v6 = v6 - v7;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v3;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (v13 != self->_otherLegend)
        {
          [*(*(&v15 + 1) + 8 * v12) layoutIfNeeded];
          [(PSCapacityBarLegendView *)v13 frame];
          v6 = v6 - (v14 + 12.0);
          if (v6 < 0.0)
          {
            goto LABEL_13;
          }

          [(UIStackView *)self->_legendView addArrangedSubview:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

LABEL_13:

  if (self->_showOtherLegend && [(NSArray *)v8 containsObject:self->_otherLegend])
  {
    [(UIStackView *)self->_legendView addArrangedSubview:self->_otherLegend];
  }
}

- (void)updateConstraints
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(PSCapacityBarCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    p_largeConstraints = &self->_largeConstraints;
    if (!self->_largeConstraints)
    {
      [(PSCapacityBarCell *)self createLargeConstraints];
    }

    v7 = 0;
    v8 = 0;
    if (!self->_normalConstraints)
    {
      goto LABEL_10;
    }

LABEL_9:
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v8 = v7;
    goto LABEL_10;
  }

  p_largeConstraints = &self->_normalConstraints;
  if (!self->_normalConstraints)
  {
    [(PSCapacityBarCell *)self createNormalConstraints];
  }

  v7 = 2;
  v8 = 2;
  if (self->_largeConstraints)
  {
    goto LABEL_9;
  }

LABEL_10:
  [MEMORY[0x1E696ACD8] activateConstraints:*p_largeConstraints];
  [(UILabel *)self->_sizeLabel setTextAlignment:v8];
  if (!self->_commonConstraints)
  {
    [(PSCapacityBarCell *)self createCommonConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_commonConstraints];
  }

  v9 = [(UILabel *)self->_titleLabel font];
  [v9 lineHeight];
  v11 = v10;

  v12 = 16.0;
  if (v11 >= 16.0)
  {
    v12 = v11;
    if (v11 > 32.0)
    {
      v12 = 32.0;
    }
  }

  [(NSLayoutConstraint *)self->_barHeightConstraint setConstant:v12];
  if (self->_hideLegend)
  {
    [(UIStackView *)self->_legendView setHidden:1];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_legendConstraints];
    v13 = [(UIStackView *)self->_legendView subviews];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v27 + 1) + 8 * i) removeFromSuperview];
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v15);
    }
  }

  else
  {
    [MEMORY[0x1E696ACD8] activateConstraints:self->_legendConstraints];
    v13 = [(UIStackView *)self->_legendView subviews];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v23 + 1) + 8 * j) removeFromSuperview];
        }

        v19 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }

    if (IsAccessibilityCategory)
    {
      [(PSCapacityBarCell *)self addVerticalLegends];
    }

    else
    {
      [(PSCapacityBarCell *)self addHorizontalLegends];
    }

    [(UIStackView *)self->_legendView setHidden:0];
  }

  v22.receiver = self;
  v22.super_class = PSCapacityBarCell;
  [(PSCapacityBarCell *)&v22 updateConstraints];
}

- (void)createLegends:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 orderedCategories];
  if ([v4 count] && !self->_forceLoading)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count") + 1}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 bytes])
          {
            v12 = [v11 identifier];
            v13 = [v12 isEqualToString:@"_CAT_OTHER_"];

            if ((v13 & 1) == 0)
            {
              v14 = [[PSCapacityBarLegendView alloc] initWithCapacityBarCategory:v11];
              [(PSCapacityBarLegendView *)v14 setTextColor:self->_legendTextColor];
              [(NSArray *)v5 addObject:v14];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if (self->_showOtherLegend)
    {
      [(PSCapacityBarLegendView *)self->_otherLegend setTextColor:self->_legendTextColor];
      [(NSArray *)v5 addObject:self->_otherLegend];
    }

    v4 = v16;
  }

  else
  {
    v22[0] = self->_loadingLabel;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  legends = self->_legends;
  self->_legends = v5;
}

- (id)usageString:(id)a3
{
  v4 = a3;
  if ([v4 capacity])
  {
    v5 = [v4 bytesUsed];
    v6 = 1024;
    if (!self->_sizesAreMem)
    {
      v6 = 1000;
    }

    v7 = 1000000000;
    if (self->_sizesAreMem)
    {
      v7 = 0x40000000;
    }

    if (v7 < v5)
    {
      v8 = v5 / v7;
      v9 = v6;
      while (v8 > v9)
      {
        v8 = v8 / v9;
        v7 *= v6;
      }
    }

    v11 = NSLocalizedFileSizeDescription();
    v12 = NSLocalizedFileSizeDescription();
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:self->_sizeFormat, v11, v12];
  }

  else
  {
    v10 = &stru_1EFE45030;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PSCapacityBarCell;
  [(PSTableCell *)&v37 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"psCapBarLoading"];
  if (v5)
  {
    [(UILabel *)self->_loadingLabel setText:v5];
  }

  else
  {
    v6 = PSStorageLocStr(@"CALC_BAR_LOADING");
    [(UILabel *)self->_loadingLabel setText:v6];
  }

  v7 = [v4 propertyForKey:@"psCapBarOtherDataLegendText"];
  if (v7)
  {
    p_otherLegend = &self->_otherLegend;
    [(PSCapacityBarLegendView *)self->_otherLegend setText:v7];
  }

  else
  {
    v9 = PSStorageLocStr(@"OTHER");
    p_otherLegend = &self->_otherLegend;
    [(PSCapacityBarLegendView *)self->_otherLegend setText:v9];
  }

  v10 = [v4 propertyForKey:@"psCapBarSizesAreMem"];
  self->_sizesAreMem = [v10 BOOLValue];

  v11 = [v4 propertyForKey:@"psCapBarSizeFormat"];
  v12 = v11;
  if (!v11)
  {
    v12 = PSStorageLocStr(@"USED_OF_FMT");
  }

  objc_storeStrong(&self->_sizeFormat, v12);
  if (!v11)
  {
  }

  v13 = [v4 propertyForKey:@"psCapBarData"];
  v14 = [(PSCapacityBarCell *)self usageString:v13];
  v36.receiver = self;
  v36.super_class = PSCapacityBarCell;
  v15 = [(PSTableCell *)&v36 titleLabel];
  [v15 setText:v14];

  [(UILabel *)self->_sizeLabel setText:v14];
  -[UILabel setHidden:](self->_sizeLabel, "setHidden:", [v14 length] == 0);
  v16 = [v4 propertyForKey:@"psCapBarSizeLblUsesStandardFont"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    [(UILabel *)self->_sizeLabel setFont:self->_bigFont];
  }

  v18 = [v4 propertyForKey:@"psCapBarBackgroundColor"];
  [(PSCapacityBarView *)self->_barView setBarBackgroundColor:v18];

  v19 = [v4 propertyForKey:@"psCapBarOtherDataColor"];
  [(PSCapacityBarView *)self->_barView setBarOtherDataColor:v19];

  v20 = [v4 propertyForKey:@"psCapBarSeparatorColor"];
  [(PSCapacityBarView *)self->_barView setBarSeparatorColor:v20];

  v21 = [v4 propertyForKey:@"psCapBarBackgroundColor"];
  [(PSCapacityBarView *)self->_barView setBarBackgroundColor:v21];

  v22 = [v4 propertyForKey:@"psCapBarTitleTextColor"];
  if (v22)
  {
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)self->_titleLabel setTextColor:v22];
  }

  else
  {
    v24 = [MEMORY[0x1E69DC888] labelColor];
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)self->_titleLabel setTextColor:v24];
  }

  v25 = [v4 propertyForKey:@"psCapBarSizeTextColor"];
  if (v25)
  {
    [(UILabel *)self->_sizeLabel setTextColor:v25];
  }

  else
  {
    v26 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_sizeLabel setTextColor:v26];
  }

  v27 = [v4 propertyForKey:@"psCapBarLegendTextColor"];
  v28 = v27;
  if (!v27)
  {
    v28 = [MEMORY[0x1E69DC888] labelColor];
  }

  objc_storeStrong(&self->_legendTextColor, v28);
  if (!v27)
  {
  }

  v29 = [(PSCapacityBarView *)self->_barView barOtherDataColor];
  [(PSCapacityBarLegendView *)*p_otherLegend setColor:v29];

  [(PSCapacityBarLegendView *)*p_otherLegend setTextColor:self->_legendTextColor];
  v30 = [v4 propertyForKey:@"psCapBarHideLegend"];
  self->_hideLegend = [v30 BOOLValue];

  v31 = [v4 propertyForKey:@"psCapBarShowOtherDataLegend"];
  self->_showOtherLegend = [v31 BOOLValue];

  v32 = [v4 propertyForKey:@"psCapBarForceLoading"];
  self->_forceLoading = [v32 BOOLValue];

  [(PSCapacityBarCell *)self createLegends:v13];
  [(PSCapacityBarView *)self->_barView setBarData:v13];
  v33 = [v4 propertyForKey:@"label"];
  v34 = [(UILabel *)*p_titleLabel text];
  v35 = [v33 isEqualToString:v34];

  if ((v35 & 1) == 0)
  {
    [(UILabel *)*p_titleLabel setText:v33];
  }

  [(PSCapacityBarCell *)self setNeedsUpdateConstraints];
  [(PSCapacityBarCell *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PSCapacityBarCell;
  [(PSCapacityBarCell *)&v4 traitCollectionDidChange:a3];
  [(PSCapacityBarCell *)self setNeedsUpdateConstraints];
  [(PSCapacityBarCell *)self setNeedsLayout];
}

@end