@interface STDatePickerBar
- (STDatePickerBar)initWithCoder:(id)coder;
- (STDatePickerBar)initWithFrame:(CGRect)frame;
- (UIImage)horizontalLineImage;
- (void)_configureArrowButton:(id)button isLeft:(BOOL)left isLayoutDirectionRightToLeft:(BOOL)toLeft;
- (void)_leftDatePickerBarButtonTapped:(id)tapped;
- (void)_rightDatePickerBarButtonTapped:(id)tapped;
- (void)_stDatePickerBarCommonInit;
- (void)updateWithCoordinator:(id)coordinator;
@end

@implementation STDatePickerBar

- (STDatePickerBar)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STDatePickerBar;
  v3 = [(STDatePickerBar *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STDatePickerBar *)v3 _stDatePickerBarCommonInit];
  return v3;
}

- (STDatePickerBar)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STDatePickerBar;
  v3 = [(STDatePickerBar *)&v5 initWithCoder:coder];
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
    horizontalLineImage = [(STDatePickerBar *)self horizontalLineImage];
    v15 = [v13 initWithImage:horizontalLineImage];
    bottomBorderLine = self->_bottomBorderLine;
    self->_bottomBorderLine = v15;

    [(UIImageView *)self->_bottomBorderLine setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STDatePickerBar *)self addSubview:self->_bottomBorderLine];
  }

  topAnchor = [(STDatePickerBar *)self topAnchor];
  leadingAnchor = [(STDatePickerBar *)self leadingAnchor];
  bottomAnchor = [(STDatePickerBar *)self bottomAnchor];
  trailingAnchor = [(STDatePickerBar *)self trailingAnchor];
  centerYAnchor = [(STDatePickerBar *)self centerYAnchor];
  v69 = objc_opt_new();
  v70 = bottomAnchor;
  v67 = v3;
  if (v3)
  {
    topAnchor2 = [v3 topAnchor];
    v62 = [topAnchor2 constraintEqualToAnchor:topAnchor];
    v74[0] = v62;
    leadingAnchor2 = [v3 leadingAnchor];
    v21 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor];
    v74[1] = v21;
    bottomAnchor2 = [v3 bottomAnchor];
    v23 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor];
    v74[2] = v23;
    trailingAnchor2 = [v3 trailingAnchor];
    [trailingAnchor2 constraintEqualToAnchor:trailingAnchor];
    v26 = v25 = topAnchor;
    v74[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v69 addObjectsFromArray:v27];

    topAnchor = v25;
  }

  v28 = self->_bottomBorderLine;
  if (v28)
  {
    leadingAnchor3 = [(UIImageView *)v28 leadingAnchor];
    [leadingAnchor3 constraintEqualToAnchor:leadingAnchor];
    v31 = v30 = trailingAnchor;
    v73[0] = v31;
    trailingAnchor3 = [(UIImageView *)self->_bottomBorderLine trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:v30];
    v73[1] = v33;
    bottomAnchor3 = [(UIImageView *)self->_bottomBorderLine bottomAnchor];
    v35 = [bottomAnchor3 constraintEqualToAnchor:v70];
    v73[2] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
    [v69 addObjectsFromArray:v36];

    trailingAnchor = v30;
  }

  v48 = trailingAnchor;
  leadingAnchor4 = [(UIButton *)self->_leftArrowButton leadingAnchor];
  v63 = [leadingAnchor4 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor multiplier:2.0];
  v72[0] = v63;
  centerYAnchor2 = [(UIButton *)self->_leftArrowButton centerYAnchor];
  v60 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor];
  v72[1] = v60;
  topAnchor3 = [(UILabel *)self->_dateLabel topAnchor];
  v58 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:2.0];
  v72[2] = v58;
  leadingAnchor5 = [(UILabel *)self->_dateLabel leadingAnchor];
  trailingAnchor4 = [(UIButton *)self->_leftArrowButton trailingAnchor];
  v55 = [leadingAnchor5 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:2.0];
  v72[3] = v55;
  centerYAnchor3 = [(UILabel *)self->_dateLabel centerYAnchor];
  v53 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor];
  v72[4] = v53;
  centerXAnchor = [(UILabel *)self->_dateLabel centerXAnchor];
  centerXAnchor2 = [(STDatePickerBar *)self centerXAnchor];
  v50 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v72[5] = v50;
  topAnchor4 = [(UIButton *)self->_rightArrowButton topAnchor];
  v47 = [topAnchor4 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor multiplier:2.0];
  v72[6] = v47;
  leadingAnchor6 = [(UIButton *)self->_rightArrowButton leadingAnchor];
  [(UILabel *)self->_dateLabel trailingAnchor];
  v37 = v56 = topAnchor;
  v38 = [leadingAnchor6 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v37 multiplier:2.0];
  v72[7] = v38;
  centerYAnchor4 = [(UIButton *)self->_rightArrowButton centerYAnchor];
  v40 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor];
  v72[8] = v40;
  bottomAnchor4 = [(UILabel *)self->_dateLabel bottomAnchor];
  v42 = [v70 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:2.0];
  v72[9] = v42;
  trailingAnchor5 = [(UIButton *)self->_rightArrowButton trailingAnchor];
  v44 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor5 multiplier:2.0];
  v72[10] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:11];
  [v69 addObjectsFromArray:v45];

  [MEMORY[0x277CCAAD0] activateConstraints:v69];
}

- (void)_configureArrowButton:(id)button isLeft:(BOOL)left isLayoutDirectionRightToLeft:(BOOL)toLeft
{
  toLeftCopy = toLeft;
  leftCopy = left;
  v7 = MEMORY[0x277D75E18];
  buttonCopy = button;
  plainButtonConfiguration = [v7 plainButtonConfiguration];
  if (toLeftCopy != leftCopy)
  {
    v9 = @"chevron.left.circle.fill";
  }

  else
  {
    v9 = @"chevron.right.circle.fill";
  }

  v10 = [MEMORY[0x277D755B8] systemImageNamed:v9];
  [plainButtonConfiguration setImage:v10];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [plainButtonConfiguration setImageTintColor:systemBlueColor];

  v12 = [MEMORY[0x277D755D0] configurationWithScale:3];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v12];

  [buttonCopy _setConfiguration:plainButtonConfiguration];
  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1144766464;
  [buttonCopy setContentCompressionResistancePriority:0 forAxis:v13];
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

- (void)updateWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];
  selectedUsageReport = [viewModel selectedUsageReport];

  usageReport = [(STDatePickerBar *)self usageReport];
  [STUsageDetailListController selectedUsageReportDidChangeFrom:usageReport to:selectedUsageReport datePickerBar:self coordinator:coordinatorCopy];

  [(STDatePickerBar *)self setUsageReport:selectedUsageReport];
  [(STDatePickerBar *)self setCoordinator:coordinatorCopy];
}

- (void)_leftDatePickerBarButtonTapped:(id)tapped
{
  coordinator = [(STDatePickerBar *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];

  selectedUsageReport = [viewModel selectedUsageReport];
  type = [selectedUsageReport type];

  if (type == 1)
  {
    selectedDay = [viewModel selectedDay];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    if (selectedDay == [currentCalendar firstWeekday])
    {
      [viewModel setSelectedWeek:{objc_msgSend(viewModel, "selectedWeek") + 1}];
    }

    if (selectedDay == [currentCalendar maximumRangeOfUnit:512])
    {
      v10 = v9;
    }

    else
    {
      v10 = selectedDay - 1;
    }

    [viewModel setSelectedDay:v10];
  }

  else if (!type)
  {
    [viewModel setSelectedWeek:{objc_msgSend(viewModel, "selectedWeek") + 1}];
  }
}

- (void)_rightDatePickerBarButtonTapped:(id)tapped
{
  coordinator = [(STDatePickerBar *)self coordinator];
  usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
  viewModel = [usageDetailsCoordinator viewModel];

  selectedUsageReport = [viewModel selectedUsageReport];
  type = [selectedUsageReport type];

  if (type == 1)
  {
    selectedDay = [viewModel selectedDay];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    firstWeekday = [currentCalendar firstWeekday];
    v11 = [currentCalendar maximumRangeOfUnit:512];
    v12 = v10;
    v13 = firstWeekday - 1;
    if (firstWeekday == v11)
    {
      v13 = v10;
    }

    if (selectedDay == v13)
    {
      [viewModel setSelectedWeek:{objc_msgSend(viewModel, "selectedWeek") - 1}];
    }

    if (selectedDay == v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = selectedDay + 1;
    }

    [viewModel setSelectedDay:v14];
  }

  else if (!type)
  {
    [viewModel setSelectedWeek:{objc_msgSend(viewModel, "selectedWeek") - 1}];
  }
}

@end