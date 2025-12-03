@interface NCSchedulerViewCell
+ (double)_widthForHour:(unint64_t)hour;
+ (double)preferredHeightForText:(id)text width:(double)width;
+ (id)_drawingContext;
- (NCSchedulerViewCell)initWithFrame:(CGRect)frame;
- (NCSchedulerViewCellDelegate)delegate;
- (double)_buttonSymbolSize;
- (void)_buttonPressed:(id)pressed;
- (void)_timeChanged:(id)changed;
- (void)configureWithSymbolName:(id)name symbolColor:(id)color title:(id)title timeOfDay:(id)day delegate:(id)delegate top:(BOOL)top bottom:(BOOL)bottom;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation NCSchedulerViewCell

+ (double)preferredHeightForText:(id)text width:(double)width
{
  v26[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  _font = [self _font];
  [self _widthForHour:0];
  v9 = v8;
  [self _widthForHour:12];
  if (v9 >= v10)
  {
    v10 = v9;
  }

  v11 = fmax(width - v10 + -8.0 + -38.0, 0.0);
  v25 = *MEMORY[0x277D740A8];
  v26[0] = _font;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  _drawingContext = [objc_opt_class() _drawingContext];
  [textCopy boundingRectWithSize:1 options:v12 attributes:_drawingContext context:{v11, 0.0}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v27.origin.x = v15;
  v27.origin.y = v17;
  v27.size.width = v19;
  v27.size.height = v21;
  CGRectGetHeight(v27);

  _NCMainScreenScale();
  UICeilToScale();
  v23 = v22;

  return v23;
}

- (void)configureWithSymbolName:(id)name symbolColor:(id)color title:(id)title timeOfDay:(id)day delegate:(id)delegate top:(BOOL)top bottom:(BOOL)bottom
{
  topCopy = top;
  bottomCopy2 = bottom;
  nameCopy = name;
  colorCopy = color;
  titleCopy = title;
  dayCopy = day;
  delegateCopy = delegate;
  v33 = nameCopy;
  v21 = colorCopy;
  button = self->_button;
  if (v33 && v21)
  {
    [(NCSymbolButton *)button setSymbolNamed:v33 color:v21 pointSize:9.0 backgroundDiameter:17.0];
    v23 = 38.0;
  }

  else
  {
    [(NCSymbolButton *)button clearSymbol];
    v23 = 16.0;
  }

  [(NSLayoutConstraint *)self->_labelLeadingConstraint setConstant:v23];
  [(UILabel *)self->_label setText:titleCopy];
  if (dayCopy)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    hour = [dayCopy hour];
    minute = [dayCopy minute];
    [MEMORY[0x277CBEAA8] now];
    v27 = titleCopy;
    v29 = v28 = topCopy;
    v30 = [currentCalendar dateBySettingHour:hour minute:minute second:0 ofDate:v29 options:0];

    [(UIDatePicker *)self->_datePicker setDate:v30];
    topCopy = v28;
    titleCopy = v27;
    bottomCopy2 = bottom;
    [(UIDatePicker *)self->_datePicker setHidden:0];
  }

  else
  {
    [(UIDatePicker *)self->_datePicker setHidden:1];
  }

  if (topCopy)
  {
    v31 = 16.0;
  }

  else
  {
    v31 = 0.0;
  }

  [(NSLayoutConstraint *)self->_backgroundViewTopConstraint setConstant:v31];
  if (bottomCopy2)
  {
    v32 = 16.0;
  }

  else
  {
    v32 = 0.0;
  }

  [(NSLayoutConstraint *)self->_backgroundViewBottomConstraint setConstant:v32];
  [(UIView *)self->_bottomLineView setHidden:bottomCopy2];
  [(NCSchedulerViewCell *)self setDelegate:delegateCopy];
  [(NCSchedulerViewCell *)self setNeedsLayout];
}

- (NCSchedulerViewCell)initWithFrame:(CGRect)frame
{
  v148.receiver = self;
  v148.super_class = NCSchedulerViewCell;
  v3 = [(NCSchedulerViewCell *)&v148 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(NCSchedulerViewCell *)v3 traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemGray5Color];
    }

    else
    {
      [MEMORY[0x277D75348] systemGray6Color];
    }
    v6 = ;

    traitCollection2 = [(NCSchedulerViewCell *)v4 traitCollection];
    if ([traitCollection2 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemGray3Color];
    }

    else
    {
      [MEMORY[0x277D75348] systemGray4Color];
    }
    v146 = ;

    v8 = objc_alloc(MEMORY[0x277D75D18]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    topCornersView = v4->_topCornersView;
    v4->_topCornersView = v13;

    [(UIView *)v4->_topCornersView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_topCornersView _setContinuousCornerRadius:16.0];
    [(UIView *)v4->_topCornersView setBackgroundColor:v6];
    contentView = [(NCSchedulerViewCell *)v4 contentView];
    [contentView addSubview:v4->_topCornersView];

    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v16;

    [(UIView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_backgroundView setBackgroundColor:v6];
    contentView2 = [(NCSchedulerViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_backgroundView];

    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    bottomCornersView = v4->_bottomCornersView;
    v4->_bottomCornersView = v19;

    [(UIView *)v4->_bottomCornersView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_bottomCornersView _setContinuousCornerRadius:16.0];
    [(UIView *)v4->_bottomCornersView setBackgroundColor:v6];
    contentView3 = [(NCSchedulerViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_bottomCornersView];

    v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    bottomLineView = v4->_bottomLineView;
    v4->_bottomLineView = v22;

    [(UIView *)v4->_bottomLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_bottomLineView setBackgroundColor:v146];
    contentView4 = [(NCSchedulerViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_bottomLineView];

    v25 = +[NCSymbolButton button];
    button = v4->_button;
    v4->_button = v25;

    [(NCSymbolButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NCSymbolButton *)v4->_button addTarget:v4 action:sel__buttonPressed_ forControlEvents:64];
    contentView5 = [(NCSchedulerViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_button];

    v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    label = v4->_label;
    v4->_label = v28;

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v4->_label;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v30 setHighlightedTextColor:labelColor];

    v32 = v4->_label;
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v32 setTextColor:labelColor2];

    [(UILabel *)v4->_label setNumberOfLines:0];
    v34 = v4->_label;
    _font = [objc_opt_class() _font];
    [(UILabel *)v34 setFont:_font];

    [(UILabel *)v4->_label setMinimumScaleFactor:0.5];
    [(UILabel *)v4->_label setAdjustsFontSizeToFitWidth:1];
    contentView6 = [(NCSchedulerViewCell *)v4 contentView];
    [contentView6 addSubview:v4->_label];

    v37 = [objc_alloc(MEMORY[0x277D753E8]) initWithFrame:{v9, v10, v11, v12}];
    datePicker = v4->_datePicker;
    v4->_datePicker = v37;

    [(UIDatePicker *)v4->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v4->_datePicker setDatePickerMode:0];
    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:3];
    [(UIDatePicker *)v4->_datePicker setClipsToBounds:1];
    [(UIDatePicker *)v4->_datePicker addTarget:v4 action:sel__timeChanged_ forControlEvents:0x40000];
    contentView7 = [(NCSchedulerViewCell *)v4 contentView];
    [contentView7 addSubview:v4->_datePicker];

    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topAnchor = [(UIView *)v4->_topCornersView topAnchor];
    contentView8 = [(NCSchedulerViewCell *)v4 contentView];
    [contentView8 topAnchor];
    v43 = v147 = v6;
    v44 = [topAnchor constraintEqualToAnchor:v43];
    [v40 addObject:v44];

    heightAnchor = [(UIView *)v4->_topCornersView heightAnchor];
    v46 = [heightAnchor constraintEqualToConstant:32.0];
    [v40 addObject:v46];

    leadingAnchor = [(UIView *)v4->_topCornersView leadingAnchor];
    contentView9 = [(NCSchedulerViewCell *)v4 contentView];
    leadingAnchor2 = [contentView9 leadingAnchor];
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v40 addObject:v50];

    contentView10 = [(NCSchedulerViewCell *)v4 contentView];
    trailingAnchor = [contentView10 trailingAnchor];
    trailingAnchor2 = [(UIView *)v4->_topCornersView trailingAnchor];
    v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v40 addObject:v54];

    topAnchor2 = [(UIView *)v4->_backgroundView topAnchor];
    contentView11 = [(NCSchedulerViewCell *)v4 contentView];
    topAnchor3 = [contentView11 topAnchor];
    v58 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    backgroundViewTopConstraint = v4->_backgroundViewTopConstraint;
    v4->_backgroundViewTopConstraint = v58;

    [v40 addObject:v4->_backgroundViewTopConstraint];
    contentView12 = [(NCSchedulerViewCell *)v4 contentView];
    bottomAnchor = [contentView12 bottomAnchor];
    bottomAnchor2 = [(UIView *)v4->_backgroundView bottomAnchor];
    v63 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    backgroundViewBottomConstraint = v4->_backgroundViewBottomConstraint;
    v4->_backgroundViewBottomConstraint = v63;

    [v40 addObject:v4->_backgroundViewBottomConstraint];
    leadingAnchor3 = [(UIView *)v4->_backgroundView leadingAnchor];
    contentView13 = [(NCSchedulerViewCell *)v4 contentView];
    leadingAnchor4 = [contentView13 leadingAnchor];
    v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v40 addObject:v68];

    contentView14 = [(NCSchedulerViewCell *)v4 contentView];
    trailingAnchor3 = [contentView14 trailingAnchor];
    trailingAnchor4 = [(UIView *)v4->_backgroundView trailingAnchor];
    v72 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v40 addObject:v72];

    contentView15 = [(NCSchedulerViewCell *)v4 contentView];
    bottomAnchor3 = [contentView15 bottomAnchor];
    bottomAnchor4 = [(UIView *)v4->_bottomCornersView bottomAnchor];
    v76 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v40 addObject:v76];

    heightAnchor2 = [(UIView *)v4->_bottomCornersView heightAnchor];
    v78 = [heightAnchor2 constraintEqualToConstant:32.0];
    [v40 addObject:v78];

    leadingAnchor5 = [(UIView *)v4->_bottomCornersView leadingAnchor];
    contentView16 = [(NCSchedulerViewCell *)v4 contentView];
    leadingAnchor6 = [contentView16 leadingAnchor];
    v82 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v40 addObject:v82];

    contentView17 = [(NCSchedulerViewCell *)v4 contentView];
    trailingAnchor5 = [contentView17 trailingAnchor];
    trailingAnchor6 = [(UIView *)v4->_bottomCornersView trailingAnchor];
    v86 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v40 addObject:v86];

    contentView18 = [(NCSchedulerViewCell *)v4 contentView];
    bottomAnchor5 = [contentView18 bottomAnchor];
    bottomAnchor6 = [(UIView *)v4->_bottomLineView bottomAnchor];
    v90 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [v40 addObject:v90];

    heightAnchor3 = [(UIView *)v4->_bottomLineView heightAnchor];
    v92 = [heightAnchor3 constraintEqualToConstant:0.5];
    [v40 addObject:v92];

    leadingAnchor7 = [(UIView *)v4->_bottomLineView leadingAnchor];
    contentView19 = [(NCSchedulerViewCell *)v4 contentView];
    leadingAnchor8 = [contentView19 leadingAnchor];
    v96 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
    [v40 addObject:v96];

    contentView20 = [(NCSchedulerViewCell *)v4 contentView];
    trailingAnchor7 = [contentView20 trailingAnchor];
    trailingAnchor8 = [(UIView *)v4->_bottomLineView trailingAnchor];
    v100 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v40 addObject:v100];

    topAnchor4 = [(NCSymbolButton *)v4->_button topAnchor];
    contentView21 = [(NCSchedulerViewCell *)v4 contentView];
    topAnchor5 = [contentView21 topAnchor];
    v104 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v40 addObject:v104];

    bottomAnchor7 = [(NCSymbolButton *)v4->_button bottomAnchor];
    contentView22 = [(NCSchedulerViewCell *)v4 contentView];
    bottomAnchor8 = [contentView22 bottomAnchor];
    v108 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    [v40 addObject:v108];

    widthAnchor = [(NCSymbolButton *)v4->_button widthAnchor];
    v110 = [widthAnchor constraintEqualToConstant:44.0];
    [v40 addObject:v110];

    leadingAnchor9 = [(NCSymbolButton *)v4->_button leadingAnchor];
    contentView23 = [(NCSchedulerViewCell *)v4 contentView];
    leadingAnchor10 = [contentView23 leadingAnchor];
    v114 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:-3.0];
    [v40 addObject:v114];

    leadingAnchor11 = [(UILabel *)v4->_label leadingAnchor];
    contentView24 = [(NCSchedulerViewCell *)v4 contentView];
    leadingAnchor12 = [contentView24 leadingAnchor];
    v118 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    labelLeadingConstraint = v4->_labelLeadingConstraint;
    v4->_labelLeadingConstraint = v118;

    [v40 addObject:v4->_labelLeadingConstraint];
    centerYAnchor = [(UILabel *)v4->_label centerYAnchor];
    contentView25 = [(NCSchedulerViewCell *)v4 contentView];
    centerYAnchor2 = [contentView25 centerYAnchor];
    v123 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v40 addObject:v123];

    topAnchor6 = [(UILabel *)v4->_label topAnchor];
    contentView26 = [(NCSchedulerViewCell *)v4 contentView];
    topAnchor7 = [contentView26 topAnchor];
    v127 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7 constant:8.0];
    [v40 addObject:v127];

    contentView27 = [(NCSchedulerViewCell *)v4 contentView];
    bottomAnchor9 = [contentView27 bottomAnchor];
    bottomAnchor10 = [(UILabel *)v4->_label bottomAnchor];
    v131 = [bottomAnchor9 constraintGreaterThanOrEqualToAnchor:bottomAnchor10 constant:8.0];
    [v40 addObject:v131];

    contentView28 = [(NCSchedulerViewCell *)v4 contentView];
    trailingAnchor9 = [contentView28 trailingAnchor];
    trailingAnchor10 = [(UILabel *)v4->_label trailingAnchor];
    v135 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:0.0];
    labelTrailingConstraint = v4->_labelTrailingConstraint;
    v4->_labelTrailingConstraint = v135;

    [v40 addObject:v4->_labelTrailingConstraint];
    centerYAnchor3 = [(UIDatePicker *)v4->_datePicker centerYAnchor];
    contentView29 = [(NCSchedulerViewCell *)v4 contentView];
    centerYAnchor4 = [contentView29 centerYAnchor];
    v140 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v40 addObject:v140];

    contentView30 = [(NCSchedulerViewCell *)v4 contentView];
    trailingAnchor11 = [contentView30 trailingAnchor];
    trailingAnchor12 = [(UIDatePicker *)v4->_datePicker trailingAnchor];
    v144 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:0.0];
    [v40 addObject:v144];

    [MEMORY[0x277CCAAD0] activateConstraints:v40];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NCSchedulerViewCell;
  [(NCSchedulerViewCell *)&v3 prepareForReuse];
  [(NCSymbolButton *)self->_button clearSymbol];
  [(UILabel *)self->_label setText:0];
  [(NCSchedulerViewCell *)self setDelegate:0];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NCSchedulerViewCell;
  [(NCSchedulerViewCell *)&v6 layoutSubviews];
  [(UIDatePicker *)self->_datePicker layoutIfNeeded];
  v3 = 0.0;
  if (([(UIDatePicker *)self->_datePicker isHidden]& 1) == 0)
  {
    [(UIDatePicker *)self->_datePicker frame];
    v3 = v4 + 8.0;
  }

  [(NSLayoutConstraint *)self->_labelTrailingConstraint constant];
  if (v3 != v5)
  {
    [(NSLayoutConstraint *)self->_labelTrailingConstraint setConstant:v3];
  }
}

+ (id)_drawingContext
{
  v2 = _drawingContext___drawingContext;
  if (!_drawingContext___drawingContext)
  {
    v3 = objc_alloc_init(MEMORY[0x277D74260]);
    v4 = _drawingContext___drawingContext;
    _drawingContext___drawingContext = v3;

    [_drawingContext___drawingContext setWantsNumberOfLineFragments:1];
    v2 = _drawingContext___drawingContext;
  }

  return v2;
}

+ (double)_widthForHour:(unint64_t)hour
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setHour:hour];
  [v4 setMinute:0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  v7 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v7 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];

  v10 = @"jmm";
  if ([v9 rangeOfString:@"a"] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(v4, "minute"))
  {
    v10 = @"j";
  }

  [v6 setLocalizedDateFormatFromTemplate:v10];
  v11 = [currentCalendar dateFromComponents:v4];
  v12 = [v6 stringFromDate:v11];
  v18 = *MEMORY[0x277D740A8];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v19[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  _drawingContext = [objc_opt_class() _drawingContext];
  [v12 boundingRectWithSize:1 options:v14 attributes:_drawingContext context:{0.0, 0.0}];
  Width = CGRectGetWidth(v20);

  return fmax(Width, 0.0) * 1.25;
}

- (void)_timeChanged:(id)changed
{
  delegate = [(NCSchedulerViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date = [(UIDatePicker *)self->_datePicker date];
    v6 = [currentCalendar components:96 fromDate:date];

    [delegate schedulerCell:self didChangeTime:v6];
  }
}

- (void)_buttonPressed:(id)pressed
{
  delegate = [(NCSchedulerViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate schedulerCellButtonPressed:self];
  }
}

- (double)_buttonSymbolSize
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (NCSchedulerViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end