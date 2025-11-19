@interface STDatePickerBar
- (STDatePickerBar)initWithCoder:(id)a3;
- (STDatePickerBar)initWithFrame:(CGRect)a3;
- (UIImage)horizontalLineImage;
- (void)_configureArrowButton:(id)a3 isLeft:(BOOL)a4 isLayoutDirectionRightToLeft:(BOOL)a5;
- (void)_leftDatePickerBarButtonTapped:(id)a3;
- (void)_rightDatePickerBarButtonTapped:(id)a3;
- (void)_stDatePickerBarCommonInit;
- (void)updateWithCoordinator:(id)a3;
@end

@implementation STDatePickerBar

- (STDatePickerBar)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = STDatePickerBar;
  v3 = [(STDatePickerBar *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(STDatePickerBar *)v3 _stDatePickerBarCommonInit];
  return v3;
}

- (STDatePickerBar)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STDatePickerBar;
  v3 = [(STDatePickerBar *)&v5 initWithCoder:a3];
  [(STDatePickerBar *)v3 _stDatePickerBarCommonInit];
  return v3;
}

- (void)_stDatePickerBarCommonInit
{
  v74[4] = *MEMORY[0x277D85DE8];
  [(STDatePickerBar *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STDatePickerBar *)self setAlpha:0.0];
  if (_UISolariumEnabled())
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:10];
    v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STDatePickerBar *)self addSubview:v3];
  }

  v5 = objc_opt_new();
  dateLabel = self->_dateLabel;
  self->_dateLabel = v5;

  [(UILabel *)self->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_dateLabel setFont:v7];

  [(UILabel *)self->_dateLabel setNumberOfLines:0];
  [(UILabel *)self->_dateLabel setLineBreakMode:0];
  [(UILabel *)self->_dateLabel setTextAlignment:1];
  [(STDatePickerBar *)self addSubview:self->_dateLabel];
  v8 = objc_opt_new();
  leftArrowButton = self->_leftArrowButton;
  self->_leftArrowButton = v8;

  [(UIButton *)self->_leftArrowButton setAccessibilityIdentifier:@"yesterday_arrow"];
  v10 = [(STDatePickerBar *)self effectiveUserInterfaceLayoutDirection]== 1;
  [(STDatePickerBar *)self _configureArrowButton:self->_leftArrowButton isLeft:1 isLayoutDirectionRightToLeft:v10];
  [(STDatePickerBar *)self addSubview:self->_leftArrowButton];
  [(UIButton *)self->_leftArrowButton addTarget:self action:sel__leftDatePickerBarButtonTapped_ forEvents:0x2000];
  v11 = objc_opt_new();
  rightArrowButton = self->_rightArrowButton;
  self->_rightArrowButton = v11;

  [(UIButton *)self->_rightArrowButton setAccessibilityIdentifier:@"tomorrow_arrow"];
  [(STDatePickerBar *)self _configureArrowButton:self->_rightArrowButton isLeft:0 isLayoutDirectionRightToLeft:v10];
  [(STDatePickerBar *)self addSubview:self->_rightArrowButton];
  [(UIButton *)self->_rightArrowButton addTarget:self action:sel__rightDatePickerBarButtonTapped_ forEvents:0x2000];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x277D755E8]);
    v14 = [(STDatePickerBar *)self horizontalLineImage];
    v15 = [v13 initWithImage:v14];
    bottomBorderLine = self->_bottomBorderLine;
    self->_bottomBorderLine = v15;

    [(UIImageView *)self->_bottomBorderLine setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STDatePickerBar *)self addSubview:self->_bottomBorderLine];
  }

  v17 = [(STDatePickerBar *)self topAnchor];
  v71 = [(STDatePickerBar *)self leadingAnchor];
  v18 = [(STDatePickerBar *)self bottomAnchor];
  v19 = [(STDatePickerBar *)self trailingAnchor];
  v68 = [(STDatePickerBar *)self centerYAnchor];
  v69 = objc_opt_new();
  v70 = v18;
  v67 = v3;
  if (v3)
  {
    v64 = [v3 topAnchor];
    v62 = [v64 constraintEqualToAnchor:v17];
    v74[0] = v62;
    v20 = [v3 leadingAnchor];
    v21 = [v20 constraintEqualToAnchor:v71];
    v74[1] = v21;
    v22 = [v3 bottomAnchor];
    v23 = [v22 constraintEqualToAnchor:v18];
    v74[2] = v23;
    v24 = [v3 trailingAnchor];
    [v24 constraintEqualToAnchor:v19];
    v26 = v25 = v17;
    v74[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v69 addObjectsFromArray:v27];

    v17 = v25;
  }

  v28 = self->_bottomBorderLine;
  if (v28)
  {
    v29 = [(UIImageView *)v28 leadingAnchor];
    [v29 constraintEqualToAnchor:v71];
    v31 = v30 = v19;
    v73[0] = v31;
    v32 = [(UIImageView *)self->_bottomBorderLine trailingAnchor];
    v33 = [v32 constraintEqualToAnchor:v30];
    v73[1] = v33;
    v34 = [(UIImageView *)self->_bottomBorderLine bottomAnchor];
    v35 = [v34 constraintEqualToAnchor:v70];
    v73[2] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
    [v69 addObjectsFromArray:v36];

    v19 = v30;
  }

  v48 = v19;
  v65 = [(UIButton *)self->_leftArrowButton leadingAnchor];
  v63 = [v65 constraintEqualToSystemSpacingAfterAnchor:v71 multiplier:2.0];
  v72[0] = v63;
  v61 = [(UIButton *)self->_leftArrowButton centerYAnchor];
  v60 = [v61 constraintEqualToAnchor:v68];
  v72[1] = v60;
  v59 = [(UILabel *)self->_dateLabel topAnchor];
  v58 = [v59 constraintEqualToSystemSpacingBelowAnchor:v17 multiplier:2.0];
  v72[2] = v58;
  v57 = [(UILabel *)self->_dateLabel leadingAnchor];
  v66 = [(UIButton *)self->_leftArrowButton trailingAnchor];
  v55 = [v57 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v66 multiplier:2.0];
  v72[3] = v55;
  v54 = [(UILabel *)self->_dateLabel centerYAnchor];
  v53 = [v54 constraintEqualToAnchor:v68];
  v72[4] = v53;
  v52 = [(UILabel *)self->_dateLabel centerXAnchor];
  v51 = [(STDatePickerBar *)self centerXAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v72[5] = v50;
  v49 = [(UIButton *)self->_rightArrowButton topAnchor];
  v47 = [v49 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v17 multiplier:2.0];
  v72[6] = v47;
  v46 = [(UIButton *)self->_rightArrowButton leadingAnchor];
  [(UILabel *)self->_dateLabel trailingAnchor];
  v37 = v56 = v17;
  v38 = [v46 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v37 multiplier:2.0];
  v72[7] = v38;
  v39 = [(UIButton *)self->_rightArrowButton centerYAnchor];
  v40 = [v39 constraintEqualToAnchor:v68];
  v72[8] = v40;
  v41 = [(UILabel *)self->_dateLabel bottomAnchor];
  v42 = [v70 constraintEqualToSystemSpacingBelowAnchor:v41 multiplier:2.0];
  v72[9] = v42;
  v43 = [(UIButton *)self->_rightArrowButton trailingAnchor];
  v44 = [v19 constraintEqualToSystemSpacingAfterAnchor:v43 multiplier:2.0];
  v72[10] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:11];
  [v69 addObjectsFromArray:v45];

  [MEMORY[0x277CCAAD0] activateConstraints:v69];
}

- (void)_configureArrowButton:(id)a3 isLeft:(BOOL)a4 isLayoutDirectionRightToLeft:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = MEMORY[0x277D75E18];
  v8 = a3;
  v14 = [v7 plainButtonConfiguration];
  if (v5 != v6)
  {
    v9 = @"chevron.left.circle.fill";
  }

  else
  {
    v9 = @"chevron.right.circle.fill";
  }

  v10 = [MEMORY[0x277D755B8] systemImageNamed:v9];
  [v14 setImage:v10];

  v11 = [MEMORY[0x277D75348] systemBlueColor];
  [v14 setImageTintColor:v11];

  v12 = [MEMORY[0x277D755D0] configurationWithScale:3];
  [v14 setPreferredSymbolConfigurationForImage:v12];

  [v8 _setConfiguration:v14];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1144766464;
  [v8 setContentCompressionResistancePriority:0 forAxis:v13];
}

- (UIImage)horizontalLineImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__STDatePickerBar_horizontalLineImage__block_invoke;
  block[3] = &unk_279B7C998;
  block[4] = self;
  if (horizontalLineImage_onceToken_0 != -1)
  {
    dispatch_once(&horizontalLineImage_onceToken_0, block);
  }

  return horizontalLineImage_horizontalLineImage_0;
}

void __38__STDatePickerBar_horizontalLineImage__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  [v1 displayScale];
  v3 = 1.0 / v2;

  v4 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v3, v3}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__STDatePickerBar_horizontalLineImage__block_invoke_2;
  v9[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v9[4] = v3;
  v5 = [v4 imageWithActions:v9];
  v6 = horizontalLineImage_horizontalLineImage_0;
  horizontalLineImage_horizontalLineImage_0 = v5;

  v7 = [horizontalLineImage_horizontalLineImage_0 resizableImageWithCapInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v8 = horizontalLineImage_horizontalLineImage_0;
  horizontalLineImage_horizontalLineImage_0 = v7;
}

void __38__STDatePickerBar_horizontalLineImage__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = [MEMORY[0x277D75348] separatorColor];
  CGContextSetFillColorWithColor(v3, [v4 CGColor]);

  v5 = *(a1 + 32);
  v6 = 0;
  v7 = 0;
  v8 = v5;

  CGContextFillRect(v3, *&v6);
}

- (void)updateWithCoordinator:(id)a3
{
  v4 = a3;
  v5 = [v4 usageDetailsCoordinator];
  v6 = [v5 viewModel];
  v8 = [v6 selectedUsageReport];

  v7 = [(STDatePickerBar *)self usageReport];
  [STUsageDetailListController selectedUsageReportDidChangeFrom:v7 to:v8 datePickerBar:self coordinator:v4];

  [(STDatePickerBar *)self setUsageReport:v8];
  [(STDatePickerBar *)self setCoordinator:v4];
}

- (void)_leftDatePickerBarButtonTapped:(id)a3
{
  v3 = [(STDatePickerBar *)self coordinator];
  v4 = [v3 usageDetailsCoordinator];
  v11 = [v4 viewModel];

  v5 = [v11 selectedUsageReport];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v7 = [v11 selectedDay];
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    if (v7 == [v8 firstWeekday])
    {
      [v11 setSelectedWeek:{objc_msgSend(v11, "selectedWeek") + 1}];
    }

    if (v7 == [v8 maximumRangeOfUnit:512])
    {
      v10 = v9;
    }

    else
    {
      v10 = v7 - 1;
    }

    [v11 setSelectedDay:v10];
  }

  else if (!v6)
  {
    [v11 setSelectedWeek:{objc_msgSend(v11, "selectedWeek") + 1}];
  }
}

- (void)_rightDatePickerBarButtonTapped:(id)a3
{
  v3 = [(STDatePickerBar *)self coordinator];
  v4 = [v3 usageDetailsCoordinator];
  v15 = [v4 viewModel];

  v5 = [v15 selectedUsageReport];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v7 = [v15 selectedDay];
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [v8 firstWeekday];
    v11 = [v8 maximumRangeOfUnit:512];
    v12 = v10;
    v13 = v9 - 1;
    if (v9 == v11)
    {
      v13 = v10;
    }

    if (v7 == v13)
    {
      [v15 setSelectedWeek:{objc_msgSend(v15, "selectedWeek") - 1}];
    }

    if (v7 == v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = v7 + 1;
    }

    [v15 setSelectedDay:v14];
  }

  else if (!v6)
  {
    [v15 setSelectedWeek:{objc_msgSend(v15, "selectedWeek") - 1}];
  }
}

@end