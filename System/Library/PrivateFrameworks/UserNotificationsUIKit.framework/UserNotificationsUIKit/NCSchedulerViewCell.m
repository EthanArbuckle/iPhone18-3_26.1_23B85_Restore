@interface NCSchedulerViewCell
+ (double)_widthForHour:(unint64_t)a3;
+ (double)preferredHeightForText:(id)a3 width:(double)a4;
+ (id)_drawingContext;
- (NCSchedulerViewCell)initWithFrame:(CGRect)a3;
- (NCSchedulerViewCellDelegate)delegate;
- (double)_buttonSymbolSize;
- (void)_buttonPressed:(id)a3;
- (void)_timeChanged:(id)a3;
- (void)configureWithSymbolName:(id)a3 symbolColor:(id)a4 title:(id)a5 timeOfDay:(id)a6 delegate:(id)a7 top:(BOOL)a8 bottom:(BOOL)a9;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation NCSchedulerViewCell

+ (double)preferredHeightForText:(id)a3 width:(double)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _font];
  [a1 _widthForHour:0];
  v9 = v8;
  [a1 _widthForHour:12];
  if (v9 >= v10)
  {
    v10 = v9;
  }

  v11 = fmax(a4 - v10 + -8.0 + -38.0, 0.0);
  v25 = *MEMORY[0x277D740A8];
  v26[0] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v13 = [objc_opt_class() _drawingContext];
  [v6 boundingRectWithSize:1 options:v12 attributes:v13 context:{v11, 0.0}];
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

- (void)configureWithSymbolName:(id)a3 symbolColor:(id)a4 title:(id)a5 timeOfDay:(id)a6 delegate:(id)a7 top:(BOOL)a8 bottom:(BOOL)a9
{
  v9 = a8;
  v15 = a9;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v33 = v16;
  v21 = v17;
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
  [(UILabel *)self->_label setText:v18];
  if (v19)
  {
    v24 = [MEMORY[0x277CBEA80] currentCalendar];
    v25 = [v19 hour];
    v26 = [v19 minute];
    [MEMORY[0x277CBEAA8] now];
    v27 = v18;
    v29 = v28 = v9;
    v30 = [v24 dateBySettingHour:v25 minute:v26 second:0 ofDate:v29 options:0];

    [(UIDatePicker *)self->_datePicker setDate:v30];
    v9 = v28;
    v18 = v27;
    v15 = a9;
    [(UIDatePicker *)self->_datePicker setHidden:0];
  }

  else
  {
    [(UIDatePicker *)self->_datePicker setHidden:1];
  }

  if (v9)
  {
    v31 = 16.0;
  }

  else
  {
    v31 = 0.0;
  }

  [(NSLayoutConstraint *)self->_backgroundViewTopConstraint setConstant:v31];
  if (v15)
  {
    v32 = 16.0;
  }

  else
  {
    v32 = 0.0;
  }

  [(NSLayoutConstraint *)self->_backgroundViewBottomConstraint setConstant:v32];
  [(UIView *)self->_bottomLineView setHidden:v15];
  [(NCSchedulerViewCell *)self setDelegate:v20];
  [(NCSchedulerViewCell *)self setNeedsLayout];
}

- (NCSchedulerViewCell)initWithFrame:(CGRect)a3
{
  v148.receiver = self;
  v148.super_class = NCSchedulerViewCell;
  v3 = [(NCSchedulerViewCell *)&v148 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NCSchedulerViewCell *)v3 traitCollection];
    if ([v5 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemGray5Color];
    }

    else
    {
      [MEMORY[0x277D75348] systemGray6Color];
    }
    v6 = ;

    v7 = [(NCSchedulerViewCell *)v4 traitCollection];
    if ([v7 userInterfaceStyle] == 2)
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
    v15 = [(NCSchedulerViewCell *)v4 contentView];
    [v15 addSubview:v4->_topCornersView];

    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v16;

    [(UIView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_backgroundView setBackgroundColor:v6];
    v18 = [(NCSchedulerViewCell *)v4 contentView];
    [v18 addSubview:v4->_backgroundView];

    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    bottomCornersView = v4->_bottomCornersView;
    v4->_bottomCornersView = v19;

    [(UIView *)v4->_bottomCornersView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_bottomCornersView _setContinuousCornerRadius:16.0];
    [(UIView *)v4->_bottomCornersView setBackgroundColor:v6];
    v21 = [(NCSchedulerViewCell *)v4 contentView];
    [v21 addSubview:v4->_bottomCornersView];

    v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    bottomLineView = v4->_bottomLineView;
    v4->_bottomLineView = v22;

    [(UIView *)v4->_bottomLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_bottomLineView setBackgroundColor:v146];
    v24 = [(NCSchedulerViewCell *)v4 contentView];
    [v24 addSubview:v4->_bottomLineView];

    v25 = +[NCSymbolButton button];
    button = v4->_button;
    v4->_button = v25;

    [(NCSymbolButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NCSymbolButton *)v4->_button addTarget:v4 action:sel__buttonPressed_ forControlEvents:64];
    v27 = [(NCSchedulerViewCell *)v4 contentView];
    [v27 addSubview:v4->_button];

    v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    label = v4->_label;
    v4->_label = v28;

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v4->_label;
    v31 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v30 setHighlightedTextColor:v31];

    v32 = v4->_label;
    v33 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v32 setTextColor:v33];

    [(UILabel *)v4->_label setNumberOfLines:0];
    v34 = v4->_label;
    v35 = [objc_opt_class() _font];
    [(UILabel *)v34 setFont:v35];

    [(UILabel *)v4->_label setMinimumScaleFactor:0.5];
    [(UILabel *)v4->_label setAdjustsFontSizeToFitWidth:1];
    v36 = [(NCSchedulerViewCell *)v4 contentView];
    [v36 addSubview:v4->_label];

    v37 = [objc_alloc(MEMORY[0x277D753E8]) initWithFrame:{v9, v10, v11, v12}];
    datePicker = v4->_datePicker;
    v4->_datePicker = v37;

    [(UIDatePicker *)v4->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v4->_datePicker setDatePickerMode:0];
    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:3];
    [(UIDatePicker *)v4->_datePicker setClipsToBounds:1];
    [(UIDatePicker *)v4->_datePicker addTarget:v4 action:sel__timeChanged_ forControlEvents:0x40000];
    v39 = [(NCSchedulerViewCell *)v4 contentView];
    [v39 addSubview:v4->_datePicker];

    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = [(UIView *)v4->_topCornersView topAnchor];
    v42 = [(NCSchedulerViewCell *)v4 contentView];
    [v42 topAnchor];
    v43 = v147 = v6;
    v44 = [v41 constraintEqualToAnchor:v43];
    [v40 addObject:v44];

    v45 = [(UIView *)v4->_topCornersView heightAnchor];
    v46 = [v45 constraintEqualToConstant:32.0];
    [v40 addObject:v46];

    v47 = [(UIView *)v4->_topCornersView leadingAnchor];
    v48 = [(NCSchedulerViewCell *)v4 contentView];
    v49 = [v48 leadingAnchor];
    v50 = [v47 constraintEqualToAnchor:v49];
    [v40 addObject:v50];

    v51 = [(NCSchedulerViewCell *)v4 contentView];
    v52 = [v51 trailingAnchor];
    v53 = [(UIView *)v4->_topCornersView trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v40 addObject:v54];

    v55 = [(UIView *)v4->_backgroundView topAnchor];
    v56 = [(NCSchedulerViewCell *)v4 contentView];
    v57 = [v56 topAnchor];
    v58 = [v55 constraintEqualToAnchor:v57];
    backgroundViewTopConstraint = v4->_backgroundViewTopConstraint;
    v4->_backgroundViewTopConstraint = v58;

    [v40 addObject:v4->_backgroundViewTopConstraint];
    v60 = [(NCSchedulerViewCell *)v4 contentView];
    v61 = [v60 bottomAnchor];
    v62 = [(UIView *)v4->_backgroundView bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    backgroundViewBottomConstraint = v4->_backgroundViewBottomConstraint;
    v4->_backgroundViewBottomConstraint = v63;

    [v40 addObject:v4->_backgroundViewBottomConstraint];
    v65 = [(UIView *)v4->_backgroundView leadingAnchor];
    v66 = [(NCSchedulerViewCell *)v4 contentView];
    v67 = [v66 leadingAnchor];
    v68 = [v65 constraintEqualToAnchor:v67];
    [v40 addObject:v68];

    v69 = [(NCSchedulerViewCell *)v4 contentView];
    v70 = [v69 trailingAnchor];
    v71 = [(UIView *)v4->_backgroundView trailingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    [v40 addObject:v72];

    v73 = [(NCSchedulerViewCell *)v4 contentView];
    v74 = [v73 bottomAnchor];
    v75 = [(UIView *)v4->_bottomCornersView bottomAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    [v40 addObject:v76];

    v77 = [(UIView *)v4->_bottomCornersView heightAnchor];
    v78 = [v77 constraintEqualToConstant:32.0];
    [v40 addObject:v78];

    v79 = [(UIView *)v4->_bottomCornersView leadingAnchor];
    v80 = [(NCSchedulerViewCell *)v4 contentView];
    v81 = [v80 leadingAnchor];
    v82 = [v79 constraintEqualToAnchor:v81];
    [v40 addObject:v82];

    v83 = [(NCSchedulerViewCell *)v4 contentView];
    v84 = [v83 trailingAnchor];
    v85 = [(UIView *)v4->_bottomCornersView trailingAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];
    [v40 addObject:v86];

    v87 = [(NCSchedulerViewCell *)v4 contentView];
    v88 = [v87 bottomAnchor];
    v89 = [(UIView *)v4->_bottomLineView bottomAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
    [v40 addObject:v90];

    v91 = [(UIView *)v4->_bottomLineView heightAnchor];
    v92 = [v91 constraintEqualToConstant:0.5];
    [v40 addObject:v92];

    v93 = [(UIView *)v4->_bottomLineView leadingAnchor];
    v94 = [(NCSchedulerViewCell *)v4 contentView];
    v95 = [v94 leadingAnchor];
    v96 = [v93 constraintEqualToAnchor:v95 constant:16.0];
    [v40 addObject:v96];

    v97 = [(NCSchedulerViewCell *)v4 contentView];
    v98 = [v97 trailingAnchor];
    v99 = [(UIView *)v4->_bottomLineView trailingAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];
    [v40 addObject:v100];

    v101 = [(NCSymbolButton *)v4->_button topAnchor];
    v102 = [(NCSchedulerViewCell *)v4 contentView];
    v103 = [v102 topAnchor];
    v104 = [v101 constraintEqualToAnchor:v103];
    [v40 addObject:v104];

    v105 = [(NCSymbolButton *)v4->_button bottomAnchor];
    v106 = [(NCSchedulerViewCell *)v4 contentView];
    v107 = [v106 bottomAnchor];
    v108 = [v105 constraintEqualToAnchor:v107];
    [v40 addObject:v108];

    v109 = [(NCSymbolButton *)v4->_button widthAnchor];
    v110 = [v109 constraintEqualToConstant:44.0];
    [v40 addObject:v110];

    v111 = [(NCSymbolButton *)v4->_button leadingAnchor];
    v112 = [(NCSchedulerViewCell *)v4 contentView];
    v113 = [v112 leadingAnchor];
    v114 = [v111 constraintEqualToAnchor:v113 constant:-3.0];
    [v40 addObject:v114];

    v115 = [(UILabel *)v4->_label leadingAnchor];
    v116 = [(NCSchedulerViewCell *)v4 contentView];
    v117 = [v116 leadingAnchor];
    v118 = [v115 constraintEqualToAnchor:v117];
    labelLeadingConstraint = v4->_labelLeadingConstraint;
    v4->_labelLeadingConstraint = v118;

    [v40 addObject:v4->_labelLeadingConstraint];
    v120 = [(UILabel *)v4->_label centerYAnchor];
    v121 = [(NCSchedulerViewCell *)v4 contentView];
    v122 = [v121 centerYAnchor];
    v123 = [v120 constraintEqualToAnchor:v122];
    [v40 addObject:v123];

    v124 = [(UILabel *)v4->_label topAnchor];
    v125 = [(NCSchedulerViewCell *)v4 contentView];
    v126 = [v125 topAnchor];
    v127 = [v124 constraintGreaterThanOrEqualToAnchor:v126 constant:8.0];
    [v40 addObject:v127];

    v128 = [(NCSchedulerViewCell *)v4 contentView];
    v129 = [v128 bottomAnchor];
    v130 = [(UILabel *)v4->_label bottomAnchor];
    v131 = [v129 constraintGreaterThanOrEqualToAnchor:v130 constant:8.0];
    [v40 addObject:v131];

    v132 = [(NCSchedulerViewCell *)v4 contentView];
    v133 = [v132 trailingAnchor];
    v134 = [(UILabel *)v4->_label trailingAnchor];
    v135 = [v133 constraintEqualToAnchor:v134 constant:0.0];
    labelTrailingConstraint = v4->_labelTrailingConstraint;
    v4->_labelTrailingConstraint = v135;

    [v40 addObject:v4->_labelTrailingConstraint];
    v137 = [(UIDatePicker *)v4->_datePicker centerYAnchor];
    v138 = [(NCSchedulerViewCell *)v4 contentView];
    v139 = [v138 centerYAnchor];
    v140 = [v137 constraintEqualToAnchor:v139];
    [v40 addObject:v140];

    v141 = [(NCSchedulerViewCell *)v4 contentView];
    v142 = [v141 trailingAnchor];
    v143 = [(UIDatePicker *)v4->_datePicker trailingAnchor];
    v144 = [v142 constraintEqualToAnchor:v143 constant:0.0];
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

+ (double)_widthForHour:(unint64_t)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setHour:a3];
  [v4 setMinute:0];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  v7 = MEMORY[0x277CCA968];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v7 dateFormatFromTemplate:@"j" options:0 locale:v8];

  v10 = @"jmm";
  if ([v9 rangeOfString:@"a"] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(v4, "minute"))
  {
    v10 = @"j";
  }

  [v6 setLocalizedDateFormatFromTemplate:v10];
  v11 = [v5 dateFromComponents:v4];
  v12 = [v6 stringFromDate:v11];
  v18 = *MEMORY[0x277D740A8];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v19[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v15 = [objc_opt_class() _drawingContext];
  [v12 boundingRectWithSize:1 options:v14 attributes:v15 context:{0.0, 0.0}];
  Width = CGRectGetWidth(v20);

  return fmax(Width, 0.0) * 1.25;
}

- (void)_timeChanged:(id)a3
{
  v7 = [(NCSchedulerViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [(UIDatePicker *)self->_datePicker date];
    v6 = [v4 components:96 fromDate:v5];

    [v7 schedulerCell:self didChangeTime:v6];
  }
}

- (void)_buttonPressed:(id)a3
{
  v4 = [(NCSchedulerViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 schedulerCellButtonPressed:self];
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