@interface _UIDatePickerIOSCompactView
- (BOOL)compactTimeLabel:(id)label shouldDismissForInteractionAtLocation:(CGPoint)location;
- (CGSize)_sizeThatFits:(CGSize)fits;
- (CGSize)defaultSize;
- (UIDatePicker)datePicker;
- (UIEdgeInsets)appliedInsetsToEdgeOfContent;
- (_UIDatePickerIOSCompactView)initWithFrame:(CGRect)frame;
- (id)createDatePickerForCompactDateLabel:(id)label;
- (id)createDatePickerForCompactTimeLabel:(id)label;
- (void)_contentSizeCategoryDidChange:(id)change previousTraits:(id)traits;
- (void)_datePickerPresentation:(id)presentation didChangeActiveMode:(int64_t)mode;
- (void)_reloadTimeViewTimeFormat;
- (void)_resignActiveComponentAnimated:(BOOL)animated;
- (void)_updateDateBeforeTimeValue;
- (void)_updateDateViewTextAlignment;
- (void)_updateEnabledStyling;
- (void)_updateUI;
- (void)compactDateLabelDidBeginEditing:(id)editing;
- (void)compactDateLabelDidEndEditing:(id)editing;
- (void)compactTimeLabel:(id)label didSelectTime:(id)time;
- (void)compactTimeLabelDidBeginEditing:(id)editing;
- (void)compactTimeLabelDidEndEditing:(id)editing;
- (void)compactTimeLabelWillBecomeFirstResponder:(id)responder;
- (void)didChangeCalendar;
- (void)didChangeCompactStyleDelegate;
- (void)didChangeDateFrom:(id)from animated:(BOOL)animated;
- (void)didChangeLocale;
- (void)didChangeMaximumDate;
- (void)didChangeMinimumDate;
- (void)didChangeMinuteInterval;
- (void)didChangeMode;
- (void)didChangeRoundsToMinuteInterval;
- (void)didChangeTimeZone;
- (void)didReset;
- (void)displaySelectedDateAnimated:(BOOL)animated;
- (void)setActiveComponent:(int64_t)component;
- (void)setContentHorizontalAlignment:(int64_t)alignment;
- (void)setData:(id)data;
- (void)setOverrideAttributes:(id)attributes;
- (void)tintColorDidChange;
- (void)updateConstraints;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIDatePickerIOSCompactView

- (void)setContentHorizontalAlignment:(int64_t)alignment
{
  v4.receiver = self;
  v4.super_class = _UIDatePickerIOSCompactView;
  [(UIControl *)&v4 setContentHorizontalAlignment:alignment];
  [(_UIDatePickerOverlayPresentation *)self->_presentation setAlignment:[(UIControl *)self effectiveContentHorizontalAlignment]];
  [(UIView *)self setNeedsUpdateConstraints];
}

- (_UIDatePickerIOSCompactView)initWithFrame:(CGRect)frame
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = _UIDatePickerIOSCompactView;
  v3 = [(UIControl *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    dateView = v3->_dateView;
    v3->_dateView = v4;

    [(UIView *)v3->_dateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIDatePickerCompactDateLabel *)v3->_dateView setDelegate:v3];
    data = [(_UIDatePickerIOSCompactView *)v3 data];
    effectiveCalendar = [data effectiveCalendar];
    data2 = [(_UIDatePickerIOSCompactView *)v3 data];
    effectiveLocale = [data2 effectiveLocale];
    data3 = [(_UIDatePickerIOSCompactView *)v3 data];
    v11 = +[_UIDatePickerCalendarTimeFormat formatWithCalendar:locale:followsSystemHourCycle:](_UIDatePickerCalendarTimeFormat, "formatWithCalendar:locale:followsSystemHourCycle:", effectiveCalendar, effectiveLocale, [data3 followsSystemHourCycle]);

    v12 = [_UIDatePickerCompactTimeLabel alloc];
    data4 = [(_UIDatePickerIOSCompactView *)v3 data];
    v14 = -[_UIDatePickerCompactTimeLabel initWithTimeFormat:minuteInterval:](v12, "initWithTimeFormat:minuteInterval:", v11, [data4 minuteInterval]);
    timeView = v3->_timeView;
    v3->_timeView = v14;

    [(UIView *)v3->_timeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIDatePickerCompactTimeLabel *)v3->_timeView setSelectionDelegate:v3];
    v16 = [[_UIDatePickerOverlayPresentation alloc] initWithSourceView:v3];
    presentation = v3->_presentation;
    v3->_presentation = v16;

    [(_UIDatePickerOverlayPresentation *)v3->_presentation setIgnoresPassthroughOnSourceView:1];
    [(_UIDatePickerOverlayPresentation *)v3->_presentation setAlignment:[(UIControl *)v3 effectiveContentHorizontalAlignment]];
    [(_UIDatePickerOverlayPresentation *)v3->_presentation setDelegate:v3];
    [(_UIDatePickerCompactDateLabel *)v3->_dateView setOverlayPresentation:v3->_presentation];
    [(_UIDatePickerCompactTimeLabel *)v3->_timeView setOverlayPresentation:v3->_presentation];
    v18 = objc_opt_new();
    timeViewLayoutGuide = v3->_timeViewLayoutGuide;
    v3->_timeViewLayoutGuide = v18;

    [(UIView *)v3 addLayoutGuide:v3->_timeViewLayoutGuide];
    v20 = objc_opt_new();
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v20;

    [(UIView *)v3 addLayoutGuide:v3->_contentLayoutGuide];
    [(_UIDatePickerIOSCompactView *)v3 _updateDateBeforeTimeValue];
    [(UIView *)v3 setNeedsUpdateConstraints];
    v22 = [[UIPanGestureRecognizer alloc] initWithTarget:v3 action:sel__didReceivePanGestureRecognizer_];
    panGestureRecognizer = v3->_panGestureRecognizer;
    v3->_panGestureRecognizer = v22;

    [(UIPanGestureRecognizer *)v3->_panGestureRecognizer setDelegate:v3];
    [(UIView *)v3 addGestureRecognizer:v3->_panGestureRecognizer];
    v28[0] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v25 = [(UIView *)v3 registerForTraitChanges:v24 withAction:sel__contentSizeCategoryDidChange_previousTraits_];
  }

  return v3;
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerIOSCompactView;
  [(UIView *)&v5 willMoveToWindow:?];
  if (!window)
  {
    [(_UIDatePickerIOSCompactView *)self _resignActiveComponentAnimated:0];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerIOSCompactView;
  [(UIView *)&v5 willMoveToSuperview:?];
  if (!superview)
  {
    [(_UIDatePickerIOSCompactView *)self _resignActiveComponentAnimated:0];
  }
}

- (void)_contentSizeCategoryDidChange:(id)change previousTraits:(id)traits
{
  traitsCopy = traits;
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  preferredContentSizeCategory2 = [traitsCopy preferredContentSizeCategory];

  LODWORD(traitsCopy) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);
  if (IsAccessibilityCategory != traitsCopy)
  {

    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateDateBeforeTimeValue
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_layoutFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    layoutFormatter = self->_layoutFormatter;
    self->_layoutFormatter = v3;
  }

  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(NSDateFormatter *)self->_layoutFormatter setLocale:effectiveLocale];

  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [(NSDateFormatter *)self->_layoutFormatter setCalendar:effectiveCalendar];

  timeZone = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(NSDateFormatter *)self->_layoutFormatter setTimeZone:timeZone];

  [(NSDateFormatter *)self->_layoutFormatter setLocalizedDateFormatFromTemplate:@"jy"];
  dateFormat = [(NSDateFormatter *)self->_layoutFormatter dateFormat];
  [MEMORY[0x1E696AB78] _componentsFromFormatString:?];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = 0;
    v11 = *v23;
    v12 = *MEMORY[0x1E695D900];
    v13 = *MEMORY[0x1E695D910];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:v12];
        bOOLValue = [v16 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          v18 = [v15 objectForKeyedSubscript:v13];
          v19 = [v18 characterAtIndex:0] - 72;
          if (v19 <= 0x31)
          {
            if (v19 == 49)
            {
              v21 = 1;
            }

            else if (((1 << v19) & 0x900000009) != 0)
            {
              if (self->_dateOnLeadingSide != v21)
              {
                [(UIView *)self setNeedsUpdateConstraints];
              }

              self->_dateOnLeadingSide = v21;

              goto LABEL_20;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
}

- (void)_updateUI
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (!self->_dateFormatterMedium)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatterMedium = self->_dateFormatterMedium;
    self->_dateFormatterMedium = v3;

    [(NSDateFormatter *)self->_dateFormatterMedium setDateStyle:2];
    [(NSDateFormatter *)self->_dateFormatterMedium setTimeStyle:0];
    [(NSDateFormatter *)self->_dateFormatterMedium setFormattingContext:2];
  }

  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(NSDateFormatter *)self->_dateFormatterMedium setLocale:effectiveLocale];

  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [(NSDateFormatter *)self->_dateFormatterMedium setCalendar:effectiveCalendar];

  timeZone = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(NSDateFormatter *)self->_dateFormatterMedium setTimeZone:timeZone];

  if (!self->_dateFormatterShort)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatterShort = self->_dateFormatterShort;
    self->_dateFormatterShort = v8;

    [(NSDateFormatter *)self->_dateFormatterShort setDateStyle:1];
    [(NSDateFormatter *)self->_dateFormatterShort setTimeStyle:0];
    [(NSDateFormatter *)self->_dateFormatterShort setFormattingContext:2];
  }

  effectiveLocale2 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(NSDateFormatter *)self->_dateFormatterShort setLocale:effectiveLocale2];

  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [(NSDateFormatter *)self->_dateFormatterShort setCalendar:effectiveCalendar2];

  timeZone2 = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(NSDateFormatter *)self->_dateFormatterShort setTimeZone:timeZone2];

  v13 = self->_dateFormatterMedium;
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v15 = [(NSDateFormatter *)v13 stringForObjectValue:effectiveDate];
  v23[0] = v15;
  v16 = self->_dateFormatterShort;
  effectiveDate2 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v18 = [(NSDateFormatter *)v16 stringForObjectValue:effectiveDate2];
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  dateView = [(_UIDatePickerIOSCompactView *)self dateView];
  [dateView setTitles:v19];

  [(_UIDatePickerCompactTimeLabel *)self->_timeView setTapInteractionControlledExternally:(*&self->_flags >> 1) & 1];
  [(_UIDatePickerCompactDateLabel *)self->_dateView setTapInteractionControlledExternally:(*&self->_flags >> 1) & 1];
  [(UIGestureRecognizer *)self->_panGestureRecognizer setEnabled:(*&self->_flags & 2) == 0];
  [(_UIDatePickerIOSCompactView *)self _reloadTimeViewTimeFormat];
  timeView = self->_timeView;
  effectiveDate3 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [(_UIDatePickerCompactTimeLabel *)timeView reloadWithDate:effectiveDate3];

  [(_UIDatePickerIOSCompactView *)self _updateEnabledStyling];
}

- (void)_updateEnabledStyling
{
  flags = self->_flags;
  timeView = [(_UIDatePickerIOSCompactView *)self timeView];
  [timeView setEnabled:flags & 1];

  dateView = [(_UIDatePickerIOSCompactView *)self dateView];
  [dateView setEnabled:flags & 1];

  [(UIView *)self setUserInteractionEnabled:flags & 1];
}

- (void)_updateDateViewTextAlignment
{
  effectiveContentHorizontalAlignment = [(UIControl *)self effectiveContentHorizontalAlignment];
  v4 = 1;
  if (effectiveContentHorizontalAlignment > UIControlContentHorizontalAlignmentFill)
  {
    v6 = *(&self->super.super._viewFlags + 2) & 0x400000;
    if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentLeading)
    {
      v4 = v6 >> 21;
    }

    else if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentTrailing)
    {
      v4 = (v6 >> 21) ^ 2;
    }
  }

  else
  {
    v5 = 2;
    if (effectiveContentHorizontalAlignment != UIControlContentHorizontalAlignmentRight)
    {
      v5 = 1;
    }

    if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }
  }

  dateView = [(_UIDatePickerIOSCompactView *)self dateView];
  [dateView setTextAlignment:v4];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerIOSCompactView;
  [(UIView *)&v5 tintColorDidChange];
  [(_UIDatePickerIOSCompactView *)self _updateEnabledStyling];
  tintColor = [(UIView *)self tintColor];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setTintColor:tintColor];
}

- (void)updateConstraints
{
  v225[5] = *MEMORY[0x1E69E9840];
  v206.receiver = self;
  v206.super_class = _UIDatePickerIOSCompactView;
  [(UIView *)&v206 updateConstraints];
  if (self->_dateTimeConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  array = [MEMORY[0x1E695DF70] array];
  traitCollection = [(UIView *)self traitCollection];
  v5 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

  [v5 compactLabelButtonSpacing];
  v7 = v6;
  datePickerMode = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  v205 = array;
  v180 = v5;
  if (datePickerMode <= 1)
  {
    if (!datePickerMode)
    {
      [(UIView *)self->_dateView removeFromSuperview];
      [(UIView *)self addSubview:self->_timeView];
      [(_UIDatePickerCompactTimeLabel *)self->_timeView setAdjustsFontSizeToFitWidth:1];
      [(_UIDatePickerCompactTimeLabel *)self->_timeView setMinimumScaleFactor:0.8];
      topAnchor = [(UIView *)self->_timeView topAnchor];
      topAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
      v191 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v214[0] = v191;
      bottomAnchor = [(UIView *)self->_timeView bottomAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
      v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v214[1] = v9;
      leadingAnchor = [(UIView *)self->_timeView leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v13 = v12 = array;
      v214[2] = v13;
      trailingAnchor = [(UIView *)self->_timeView trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v214[3] = v16;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v214;
      goto LABEL_18;
    }

    if (datePickerMode == 1)
    {
      [(UIView *)self addSubview:self->_dateView];
      [(UIView *)self->_timeView removeFromSuperview];
      [(_UIDatePickerCompactDateLabel *)self->_dateView setAdjustsFontSizeToFitWidth:1];
      [(_UIDatePickerCompactDateLabel *)self->_dateView setMinimumScaleFactor:0.8];
      [(_UIDatePickerIOSCompactView *)self _updateDateViewTextAlignment];
      topAnchor = [(UIView *)self->_dateView topAnchor];
      topAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
      v191 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v215[0] = v191;
      bottomAnchor = [(UIView *)self->_dateView bottomAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
      v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v215[1] = v9;
      leadingAnchor = [(UIView *)self->_dateView leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v13 = v12 = array;
      v215[2] = v13;
      trailingAnchor = [(UIView *)self->_dateView trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v215[3] = v16;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v215;
LABEL_18:
      v39 = [v17 arrayWithObjects:v18 count:4];
      [v12 addObjectsFromArray:v39];

      goto LABEL_19;
    }

LABEL_15:
    dateTimeConstraints = self->_dateTimeConstraints;
    self->_dateTimeConstraints = 0;

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Unsupported mode for date picker style UIDatePickerStyleCompact."];
    goto LABEL_19;
  }

  if (datePickerMode == 3)
  {
    [(UIView *)self->_dateView removeFromSuperview];
    [(UIView *)self addSubview:self->_timeView];
    [(_UIDatePickerCompactTimeLabel *)self->_timeView setAdjustsFontSizeToFitWidth:1];
    [(_UIDatePickerCompactTimeLabel *)self->_timeView setMinimumScaleFactor:0.8];
    topAnchor = [(UIView *)self->_timeView topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v191 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v213[0] = v191;
    bottomAnchor = [(UIView *)self->_timeView bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v213[1] = v9;
    leadingAnchor = [(UIView *)self->_timeView leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v13 = v12 = array;
    v213[2] = v13;
    trailingAnchor = [(UIView *)self->_timeView trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v213[3] = v16;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v213;
    goto LABEL_18;
  }

  if (datePickerMode != 2)
  {
    goto LABEL_15;
  }

  p_dateView = &self->_dateView;
  [(UIView *)self addSubview:self->_dateView];
  p_timeView = &self->_timeView;
  [(UIView *)self addSubview:self->_timeView];
  [(_UIDatePickerCompactDateLabel *)self->_dateView setAdjustsFontSizeToFitWidth:0];
  [(_UIDatePickerCompactDateLabel *)self->_dateView setMinimumScaleFactor:0.0];
  [(_UIDatePickerCompactTimeLabel *)self->_timeView setAdjustsFontSizeToFitWidth:0];
  [(_UIDatePickerCompactTimeLabel *)self->_timeView setMinimumScaleFactor:0.0];
  [(_UIDatePickerIOSCompactView *)self _updateDateViewTextAlignment];
  traitCollection2 = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    contentHorizontalAlignment = [(UIControl *)self contentHorizontalAlignment];
    if (contentHorizontalAlignment <= UIControlContentHorizontalAlignmentRight)
    {
      if (contentHorizontalAlignment)
      {
        if (contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft)
        {
          rightAnchor = [(UIView *)*p_dateView rightAnchor];
          rightAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

          LODWORD(v132) = 1132003328;
          [v27 setPriority:v132];
          leftAnchor = [(UIView *)*p_dateView leftAnchor];
          leftAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v192 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
          v223[0] = v192;
          rightAnchor3 = [(UIView *)*p_dateView rightAnchor];
          rightAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          centerXAnchor4 = rightAnchor3;
          v176 = [rightAnchor3 constraintLessThanOrEqualToAnchor:rightAnchor4];
          v223[1] = v176;
          leftAnchor3 = [(UIView *)*p_timeView leftAnchor];
          leftAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          leadingAnchor4 = leftAnchor3;
          v165 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
          v223[2] = v165;
          rightAnchor5 = [(UIView *)*p_timeView rightAnchor];
          rightAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          leadingAnchor5 = [rightAnchor5 constraintLessThanOrEqualToAnchor:rightAnchor6];
          v223[3] = leadingAnchor5;
          v36 = MEMORY[0x1E695DEC8];
          v37 = v223;
          goto LABEL_49;
        }

        if (contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight)
        {
          leftAnchor5 = [(UIView *)*p_dateView leftAnchor];
          leftAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v27 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];

          LODWORD(v28) = 1132003328;
          [v27 setPriority:v28];
          leftAnchor = [(UIView *)*p_dateView leftAnchor];
          leftAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v192 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
          v222[0] = v192;
          rightAnchor7 = [(UIView *)*p_dateView rightAnchor];
          rightAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          centerXAnchor4 = rightAnchor7;
          v176 = [rightAnchor7 constraintEqualToAnchor:rightAnchor4];
          v222[1] = v176;
          leftAnchor7 = [(UIView *)*p_timeView leftAnchor];
          leftAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          leadingAnchor4 = leftAnchor7;
          v165 = [leftAnchor7 constraintGreaterThanOrEqualToAnchor:leftAnchor4];
          v222[2] = v165;
          rightAnchor5 = [(UIView *)*p_timeView rightAnchor];
          rightAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          leadingAnchor5 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
          v222[3] = leadingAnchor5;
          v36 = MEMORY[0x1E695DEC8];
          v37 = v222;
LABEL_49:
          v135 = 4;
LABEL_52:
          leadingAnchor6 = [v36 arrayWithObjects:v37 count:v135];
          [v205 addObjectsFromArray:leadingAnchor6];
          goto LABEL_53;
        }

LABEL_54:
        if (self->_dateOnLeadingSide)
        {
          v141 = p_dateView;
        }

        else
        {
          v141 = p_timeView;
        }

        v142 = *v141;
        if (self->_dateOnLeadingSide)
        {
          v143 = p_timeView;
        }

        else
        {
          v143 = p_dateView;
        }

        v144 = *v143;
        v145 = v142;
        topAnchor3 = [v145 topAnchor];
        topAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
        v194 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v219[0] = v194;
        topAnchor5 = [v144 topAnchor];
        bottomAnchor3 = [v145 bottomAnchor];
        v148 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:v7];
        v219[1] = v148;
        bottomAnchor4 = [v144 bottomAnchor];
        bottomAnchor5 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
        v151 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
        v219[2] = v151;
        v152 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:3];
        [v205 addObjectsFromArray:v152];

        goto LABEL_19;
      }

LABEL_44:
      centerXAnchor = [(UIView *)*p_dateView centerXAnchor];
      centerXAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide centerXAnchor];
      v159 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v224[0] = v159;
      centerXAnchor3 = [(UIView *)*p_timeView centerXAnchor];
      centerXAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide centerXAnchor];
      v192 = centerXAnchor3;
      rightAnchor4 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v224[1] = rightAnchor4;
      leadingAnchor3 = [(UIView *)*p_dateView leadingAnchor];
      leadingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      v176 = leadingAnchor3;
      leftAnchor4 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
      v224[2] = leftAnchor4;
      trailingAnchor3 = [(UIView *)*p_dateView trailingAnchor];
      trailingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v165 = trailingAnchor3;
      rightAnchor6 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
      v224[3] = rightAnchor6;
      leadingAnchor5 = [(UIView *)*p_timeView leadingAnchor];
      leadingAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      v109 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
      v224[4] = v109;
      trailingAnchor5 = [(UIView *)*p_timeView trailingAnchor];
      trailingAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v112 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
      v224[5] = v112;
      v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v224 count:6];
      [v205 addObjectsFromArray:v113];

      v27 = centerXAnchor;
      rightAnchor5 = trailingAnchor4;

      leftAnchor = centerXAnchor2;
      p_timeView = &self->_timeView;
      leftAnchor2 = v159;

      p_dateView = &self->_dateView;
LABEL_53:

      goto LABEL_54;
    }

    switch(contentHorizontalAlignment)
    {
      case UIControlContentHorizontalAlignmentTrailing:
        leadingAnchor7 = [(UIView *)*p_timeView leadingAnchor];
        leadingAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v27 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];

        LODWORD(v127) = 1132003328;
        [v27 setPriority:v127];
        leftAnchor = [(UIView *)*p_dateView leadingAnchor];
        leftAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v192 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
        v220[0] = v192;
        trailingAnchor7 = [(UIView *)*p_dateView trailingAnchor];
        rightAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        centerXAnchor4 = trailingAnchor7;
        v176 = [trailingAnchor7 constraintEqualToAnchor:rightAnchor4];
        v220[1] = v176;
        v220[2] = v27;
        leadingAnchor9 = [(UIView *)*p_timeView leadingAnchor];
        leftAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        leadingAnchor4 = leadingAnchor9;
        v165 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:leftAnchor4];
        v220[3] = v165;
        rightAnchor5 = [(UIView *)*p_timeView trailingAnchor];
        rightAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        leadingAnchor5 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
        v220[4] = leadingAnchor5;
        v36 = MEMORY[0x1E695DEC8];
        v37 = v220;
        break;
      case UIControlContentHorizontalAlignmentLeading:
        trailingAnchor8 = [(UIView *)*p_dateView trailingAnchor];
        trailingAnchor9 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v27 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];

        LODWORD(v138) = 1132003328;
        [v27 setPriority:v138];
        leftAnchor = [(UIView *)*p_dateView leadingAnchor];
        leftAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v192 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        v221[0] = v192;
        trailingAnchor10 = [(UIView *)*p_dateView trailingAnchor];
        rightAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        centerXAnchor4 = trailingAnchor10;
        v176 = [trailingAnchor10 constraintLessThanOrEqualToAnchor:rightAnchor4];
        v221[1] = v176;
        v221[2] = v27;
        leadingAnchor10 = [(UIView *)*p_timeView leadingAnchor];
        leftAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        leadingAnchor4 = leadingAnchor10;
        v165 = [leadingAnchor10 constraintEqualToAnchor:leftAnchor4];
        v221[3] = v165;
        rightAnchor5 = [(UIView *)*p_timeView trailingAnchor];
        rightAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        leadingAnchor5 = [rightAnchor5 constraintLessThanOrEqualToAnchor:rightAnchor6];
        v221[4] = leadingAnchor5;
        v36 = MEMORY[0x1E695DEC8];
        v37 = v221;
        break;
      case UIControlContentHorizontalAlignmentFill:
        goto LABEL_44;
      default:
        goto LABEL_54;
    }

    v135 = 5;
    goto LABEL_52;
  }

  topAnchor6 = [(UIView *)*p_dateView topAnchor];
  topAnchor7 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v178 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v225[0] = v178;
  bottomAnchor6 = [(UIView *)*p_dateView bottomAnchor];
  bottomAnchor7 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v166 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v225[1] = v166;
  topAnchor8 = [(UIView *)*p_timeView topAnchor];
  topAnchor9 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v73 = v203 = &self->_timeView;
  v225[2] = v73;
  bottomAnchor8 = [(UIView *)self->_timeView bottomAnchor];
  bottomAnchor9 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v76 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v225[3] = v76;
  v197 = &self->_dateView;
  heightAnchor = [(UIView *)self->_dateView heightAnchor];
  heightAnchor2 = [(UIView *)self->_timeView heightAnchor];
  v79 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v225[4] = v79;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v225 count:5];
  [v205 addObjectsFromArray:v80];

  widthAnchor = [(UILayoutGuide *)self->_timeViewLayoutGuide widthAnchor];
  widthAnchor2 = [(UIView *)self->_timeView widthAnchor];
  v82 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v218[0] = v82;
  topAnchor10 = [(UILayoutGuide *)self->_timeViewLayoutGuide topAnchor];
  topAnchor11 = [(UIView *)self->_timeView topAnchor];
  v85 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  v218[1] = v85;
  bottomAnchor10 = [(UILayoutGuide *)self->_timeViewLayoutGuide bottomAnchor];
  bottomAnchor11 = [(UIView *)self->_timeView bottomAnchor];
  v88 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
  v218[2] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v218 count:3];
  [v205 addObjectsFromArray:v89];

  timeView = self->_timeView;
  if (self->_dateOnLeadingSide)
  {
    trailingAnchor11 = [(UIView *)timeView trailingAnchor];
    trailingAnchor12 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v155 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];

    LODWORD(v93) = 1132003328;
    [v155 setPriority:v93];
    leadingAnchor11 = [(UILayoutGuide *)self->_timeViewLayoutGuide leadingAnchor];
    trailingAnchor13 = [(UIView *)*v197 trailingAnchor];
    v175 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor13 constant:v7];
    v217[0] = v175;
    leadingAnchor12 = [(UIView *)*v203 leadingAnchor];
    backgroundView = [(_UIDatePickerCompactDateLabel *)*v197 backgroundView];
    trailingAnchor14 = [backgroundView trailingAnchor];
    v158 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor14 constant:v7];
    v217[1] = v158;
    leadingAnchor13 = [(UIView *)*v197 leadingAnchor];
    leadingAnchor14 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v94 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v217[2] = v94;
    trailingAnchor15 = [(UIView *)*v203 trailingAnchor];
    trailingAnchor16 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v97 = [trailingAnchor15 constraintLessThanOrEqualToAnchor:trailingAnchor16];
    v217[3] = v97;
    trailingAnchor17 = [(UILayoutGuide *)self->_timeViewLayoutGuide trailingAnchor];
    trailingAnchor18 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v100 = [trailingAnchor17 constraintLessThanOrEqualToAnchor:trailingAnchor18];
    v101 = v155;
    v217[4] = v100;
    v217[5] = v155;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v217 count:6];
    [v205 addObjectsFromArray:v102];

    v103 = leadingAnchor12;
  }

  else
  {
    leadingAnchor15 = [(UIView *)timeView leadingAnchor];
    leadingAnchor16 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v157 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];

    LODWORD(v116) = 1132003328;
    [v157 setPriority:v116];
    leadingAnchor11 = [(UIView *)*v197 leadingAnchor];
    trailingAnchor13 = [(UILayoutGuide *)self->_timeViewLayoutGuide trailingAnchor];
    v175 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor13 constant:v7];
    v216[0] = v175;
    backgroundView2 = [(_UIDatePickerCompactDateLabel *)*v197 backgroundView];
    leadingAnchor17 = [backgroundView2 leadingAnchor];
    trailingAnchor19 = [(UIView *)*v203 trailingAnchor];
    v160 = [leadingAnchor17 constraintEqualToAnchor:trailingAnchor19 constant:v7];
    v216[1] = v160;
    trailingAnchor20 = [(UIView *)*v197 trailingAnchor];
    trailingAnchor21 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v117 = [trailingAnchor20 constraintEqualToAnchor:trailingAnchor21];
    v216[2] = v117;
    leadingAnchor18 = [(UIView *)*v203 leadingAnchor];
    leadingAnchor19 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v120 = [leadingAnchor18 constraintGreaterThanOrEqualToAnchor:leadingAnchor19];
    v216[3] = v120;
    leadingAnchor20 = [(UILayoutGuide *)self->_timeViewLayoutGuide leadingAnchor];
    leadingAnchor21 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v123 = [leadingAnchor20 constraintGreaterThanOrEqualToAnchor:leadingAnchor21];
    v101 = v157;
    v216[4] = v123;
    v216[5] = v157;
    v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v216 count:6];
    [v205 addObjectsFromArray:v124];

    v103 = backgroundView2;
  }

LABEL_19:
  alignConstraintsToLayoutGuide = [(_UIDatePickerIOSCompactView *)self alignConstraintsToLayoutGuide];
  v41 = alignConstraintsToLayoutGuide;
  [(_UIDatePickerOverlayPresentation *)self->_presentation setOverlayAnchor:alignConstraintsToLayoutGuide];
  if (v41)
  {
    layoutMarginsGuide = [(UIView *)self layoutMarginsGuide];
    leadingAnchor22 = [layoutMarginsGuide leadingAnchor];

    layoutMarginsGuide2 = [(UIView *)self layoutMarginsGuide];
    trailingAnchor22 = [layoutMarginsGuide2 trailingAnchor];

    layoutMarginsGuide3 = [(UIView *)self layoutMarginsGuide];
    leftAnchor8 = [layoutMarginsGuide3 leftAnchor];

    layoutMarginsGuide4 = [(UIView *)self layoutMarginsGuide];
    rightAnchor8 = [layoutMarginsGuide4 rightAnchor];

    layoutMarginsGuide5 = [(UIView *)self layoutMarginsGuide];
    topAnchor12 = [layoutMarginsGuide5 topAnchor];

    layoutMarginsGuide6 = [(UIView *)self layoutMarginsGuide];
    centerXAnchor5 = [layoutMarginsGuide6 centerXAnchor];

    layoutMarginsGuide7 = [(UIView *)self layoutMarginsGuide];
    centerYAnchor = [layoutMarginsGuide7 centerYAnchor];
  }

  else
  {
    leadingAnchor22 = [(UIView *)self leadingAnchor];
    trailingAnchor22 = [(UIView *)self trailingAnchor];
    leftAnchor8 = [(UIView *)self leftAnchor];
    rightAnchor8 = [(UIView *)self rightAnchor];
    topAnchor12 = [(UIView *)self topAnchor];
    centerXAnchor5 = [(UIView *)self centerXAnchor];
    centerYAnchor = [(UIView *)self centerYAnchor];
  }

  topAnchor13 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v52 = [topAnchor13 constraintEqualToAnchor:topAnchor12];

  LODWORD(v53) = 1132003328;
  [v52 setPriority:v53];
  centerYAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
  v177 = centerYAnchor;
  v55 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor];
  v212[0] = v55;
  topAnchor14 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v57 = [topAnchor14 constraintGreaterThanOrEqualToAnchor:topAnchor12];
  v212[1] = v57;
  v212[2] = v52;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:3];
  [v205 addObjectsFromArray:v58];

  effectiveContentHorizontalAlignment = [(UIControl *)self effectiveContentHorizontalAlignment];
  if (effectiveContentHorizontalAlignment > UIControlContentHorizontalAlignmentRight)
  {
    switch(effectiveContentHorizontalAlignment)
    {
      case UIControlContentHorizontalAlignmentTrailing:
        leadingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v61 = [leadingAnchor23 constraintGreaterThanOrEqualToAnchor:leadingAnchor22];
        v207[0] = v61;
        trailingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v63 = [trailingAnchor23 constraintEqualToAnchor:trailingAnchor22];
        v207[1] = v63;
        v64 = MEMORY[0x1E695DEC8];
        v65 = v207;
        break;
      case UIControlContentHorizontalAlignmentLeading:
        leadingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v61 = [leadingAnchor23 constraintEqualToAnchor:leadingAnchor22];
        v208[0] = v61;
        trailingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v63 = [trailingAnchor23 constraintLessThanOrEqualToAnchor:trailingAnchor22];
        v208[1] = v63;
        v64 = MEMORY[0x1E695DEC8];
        v65 = v208;
        break;
      case UIControlContentHorizontalAlignmentFill:
        goto LABEL_30;
      default:
        goto LABEL_36;
    }

LABEL_34:
    centerXAnchor6 = [v64 arrayWithObjects:v65 count:2];
    v71 = [v205 arrayByAddingObjectsFromArray:centerXAnchor6];
    v67 = self->_dateTimeConstraints;
    self->_dateTimeConstraints = v71;
    goto LABEL_35;
  }

  if (effectiveContentHorizontalAlignment)
  {
    if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft)
    {
      leadingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
      v61 = [leadingAnchor23 constraintEqualToAnchor:leftAnchor8];
      v210[0] = v61;
      trailingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
      v63 = [trailingAnchor23 constraintLessThanOrEqualToAnchor:rightAnchor8];
      v210[1] = v63;
      v64 = MEMORY[0x1E695DEC8];
      v65 = v210;
    }

    else
    {
      if (effectiveContentHorizontalAlignment != UIControlContentHorizontalAlignmentRight)
      {
        goto LABEL_36;
      }

      leadingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
      v61 = [leadingAnchor23 constraintGreaterThanOrEqualToAnchor:leftAnchor8];
      v209[0] = v61;
      trailingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
      v63 = [trailingAnchor23 constraintEqualToAnchor:rightAnchor8];
      v209[1] = v63;
      v64 = MEMORY[0x1E695DEC8];
      v65 = v209;
    }

    goto LABEL_34;
  }

LABEL_30:
  leadingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
  v61 = [leadingAnchor23 constraintGreaterThanOrEqualToAnchor:leftAnchor8];
  v211[0] = v61;
  trailingAnchor23 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
  v63 = [trailingAnchor23 constraintLessThanOrEqualToAnchor:rightAnchor8];
  v211[1] = v63;
  centerXAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide centerXAnchor];
  v67 = [centerXAnchor6 constraintEqualToAnchor:centerXAnchor5];
  v211[2] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:3];
  v69 = [v205 arrayByAddingObjectsFromArray:v68];
  v70 = self->_dateTimeConstraints;
  self->_dateTimeConstraints = v69;

LABEL_35:
LABEL_36:
  if (self->_dateTimeConstraints)
  {
    [MEMORY[0x1E69977A0] activateConstraints:?];
  }
}

- (void)compactTimeLabel:(id)label didSelectTime:(id)time
{
  timeCopy = time;
  v5 = [_UIDatePickerCalendarDay alloc];
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v8 = [(_UIDatePickerCalendarDay *)v5 initWithDate:effectiveDate calendar:effectiveCalendar];

  v22 = v8;
  components = [(_UIDatePickerCalendarDateComponent *)v8 components];
  components2 = [timeCopy components];
  v11 = components;
  v12 = objc_opt_new();
  for (i = 1; i != 64; ++i)
  {
    v14 = [v11 valueForComponent:1 << i];
    v15 = [components2 valueForComponent:1 << i];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDateComponents * _Nonnull _UIDatePickerCombinedDateComponents(NSDateComponents * _Nonnull __strong, NSDateComponents * _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v20 file:@"_UIDatePickerCalendarDateComponent.h" lineNumber:68 description:{@"Error combining %@ and %@. Both components contain values for NSCalendarUnit %lu", v11, components2, 1 << i}];

LABEL_9:
      [v12 setValue:v14 forComponent:1 << i];
      continue;
    }

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v14 = v15;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }
  }

  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [v12 setCalendar:effectiveCalendar2];

  date = [v12 date];
  [(_UIDatePickerDataModel *)self->_data setDate:date];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitValueChanged];
}

- (void)compactTimeLabelDidBeginEditing:(id)editing
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitBeginEditing];
}

- (void)compactTimeLabelDidEndEditing:(id)editing
{
  timeView = self->_timeView;
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [(_UIDatePickerCompactTimeLabel *)timeView reloadWithDate:effectiveDate];

  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitEndEditing];
}

- (void)compactTimeLabelWillBecomeFirstResponder:(id)responder
{
  if ([(_UIDatePickerOverlayPresentation *)self->_presentation activeMode]== 2)
  {
    presentation = self->_presentation;

    [(_UIDatePickerOverlayPresentation *)presentation dismissPresentationAnimated:1];
  }
}

- (BOOL)compactTimeLabel:(id)label shouldDismissForInteractionAtLocation:(CGPoint)location
{
  [label convertPoint:self toView:{location.x, location.y}];
  v5 = [(UIControl *)self hitTest:0 withEvent:?];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePicker);
    _compactStyleDelegate = [WeakRetained _compactStyleDelegate];
    v6 = _compactStyleDelegate == 0;
  }

  return v6;
}

- (void)compactDateLabelDidBeginEditing:(id)editing
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitBeginEditing];
}

- (void)compactDateLabelDidEndEditing:(id)editing
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitEndEditing];
}

- (id)createDatePickerForCompactTimeLabel:(id)label
{
  data = [(_UIDatePickerIOSCompactView *)self data];
  v5 = [data createDatePickerRepresentingDataModelForMode:0 style:1];

  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  tintColor = [WeakRetained tintColor];
  [v5 setTintColor:tintColor];

  return v5;
}

- (id)createDatePickerForCompactDateLabel:(id)label
{
  data = [(_UIDatePickerIOSCompactView *)self data];
  v5 = [data createDatePickerRepresentingDataModelForMode:1 style:3];

  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  tintColor = [WeakRetained tintColor];
  [v5 setTintColor:tintColor];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___UIDatePickerIOSCompactView_createDatePickerForCompactDateLabel___block_invoke;
  v10[3] = &unk_1E70F4708;
  v10[4] = self;
  v8 = [UIAction actionWithHandler:v10];
  [v5 addAction:v8 forControlEvents:0x2000];

  return v5;
}

- (void)didChangeCompactStyleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  _compactStyleDelegate = [WeakRetained _compactStyleDelegate];

  if (_compactStyleDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v5 = *&self->_flags & 0xFD | v4;
  }

  else
  {
    v5 = *&self->_flags & 0xFD;
  }

  *&self->_flags = v5;
  [(_UIDatePickerIOSCompactView *)self _updateUI];
}

- (void)_datePickerPresentation:(id)presentation didChangeActiveMode:(int64_t)mode
{
  if (mode == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = mode == 2;
  }

  if (v4 != self->_activeComponent)
  {
    self->_activeComponent = v4;
    if ((*&self->_flags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_datePicker);
      _compactStyleDelegate = [WeakRetained _compactStyleDelegate];
      v7 = objc_loadWeakRetained(&self->_datePicker);
      [_compactStyleDelegate _datePicker:v7 didSelectComponent:v4];
    }
  }
}

- (void)setActiveComponent:(int64_t)component
{
  if (self->_activeComponent != component)
  {
    self->_activeComponent = component;
    if (component == 2)
    {
      v3 = 568;
    }

    else
    {
      if (component != 1)
      {
        if (!component)
        {
          [(_UIDatePickerIOSCompactView *)self _resignActiveComponentAnimated:1];
        }

        return;
      }

      v3 = 560;
    }

    [*(&self->super.super.super.super.isa + v3) activateLabel];
  }
}

- (void)_resignActiveComponentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->_activeComponent = 0;
  if ([(_UIDatePickerOverlayPresentation *)self->_presentation activeMode])
  {
    presentation = self->_presentation;

    [(_UIDatePickerOverlayPresentation *)presentation dismissPresentationAnimated:animatedCopy];
  }
}

- (void)setOverrideAttributes:(id)attributes
{
  dateView = self->_dateView;
  attributesCopy = attributes;
  [(_UIDatePickerCompactDateLabel *)dateView setOverrideAttributes:attributesCopy];
  [(_UIDatePickerCompactTimeLabel *)self->_timeView setOverrideAttributes:attributesCopy];
}

- (void)_reloadTimeViewTimeFormat
{
  [(_UIDatePickerCalendarTimeLabel *)self->_timeView setMinuteInterval:[(_UIDatePickerDataModel *)self->_data minuteInterval]];
  [(_UIDatePickerCalendarTimeLabel *)self->_timeView setRoundsToMinuteInterval:[(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval]];
  timeView = self->_timeView;
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  followsSystemHourCycle = [(_UIDatePickerDataModel *)self->_data followsSystemHourCycle];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  -[_UIDatePickerCompactTimeLabel reloadWithCalendar:locale:followsSystemHourCycle:displaysTimeZone:](timeView, "reloadWithCalendar:locale:followsSystemHourCycle:displaysTimeZone:", effectiveCalendar, effectiveLocale, followsSystemHourCycle, [WeakRetained _displaysTimeZone]);
}

- (void)setData:(id)data
{
  dataCopy = data;
  if (self->_data != dataCopy)
  {
    v8 = dataCopy;
    objc_storeStrong(&self->_data, data);
    if ([(_UIDatePickerIOSCompactView *)self datePickerStyle]== 2)
    {
      if (dyld_program_sdk_at_least())
      {
        v6 = 5;
      }

      else
      {
        v6 = 4;
      }
    }

    else
    {
      v6 = 5;
    }

    WeakRetained = objc_loadWeakRetained(&self->_datePicker);
    [WeakRetained setContentHorizontalAlignment:v6];

    [(_UIDatePickerIOSCompactView *)self didChangeMinuteInterval];
    [(_UIDatePickerIOSCompactView *)self didChangeRoundsToMinuteInterval];
    [(_UIDatePickerIOSCompactView *)self didChangeCompactStyleDelegate];
    [(_UIDatePickerIOSCompactView *)self _updateUI];
    dataCopy = v8;
  }
}

- (void)didChangeMode
{
  [(_UIDatePickerIOSCompactView *)self _updateUI];
  [(UIView *)self setNeedsUpdateConstraints];

  [(_UIDatePickerIOSCompactView *)self _resignActiveComponentAnimated:1];
}

- (void)didChangeLocale
{
  [(_UIDatePickerIOSCompactView *)self _updateUI];
  [(_UIDatePickerIOSCompactView *)self _updateDateBeforeTimeValue];
  locale = [(_UIDatePickerDataModel *)self->_data locale];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setLocale:locale];
}

- (void)didChangeTimeZone
{
  [(_UIDatePickerIOSCompactView *)self _updateUI];
  [(_UIDatePickerIOSCompactView *)self _updateDateBeforeTimeValue];
  timeZone = [(_UIDatePickerDataModel *)self->_data timeZone];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setTimeZone:timeZone];
}

- (void)didChangeCalendar
{
  [(_UIDatePickerIOSCompactView *)self _updateUI];
  [(_UIDatePickerIOSCompactView *)self _updateDateBeforeTimeValue];
  calendar = [(_UIDatePickerDataModel *)self->_data calendar];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setCalendar:calendar];
}

- (void)didChangeDateFrom:(id)from animated:(BOOL)animated
{
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate:from];
  timeView = [(_UIDatePickerIOSCompactView *)self timeView];
  timeFormat = [timeView timeFormat];
  [timeFormat setTimeZoneReferenceDate:v5];

  [(_UIDatePickerIOSCompactView *)self _updateUI];
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setDate:effectiveDate];
}

- (void)displaySelectedDateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [activeDatePicker setDate:effectiveDate animated:animatedCopy];
}

- (void)didChangeMinimumDate
{
  minimumDate = [(_UIDatePickerDataModel *)self->_data minimumDate];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setMinimumDate:minimumDate];
}

- (void)didChangeMaximumDate
{
  maximumDate = [(_UIDatePickerDataModel *)self->_data maximumDate];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setMaximumDate:maximumDate];
}

- (void)didChangeMinuteInterval
{
  minuteInterval = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  timeView = [(_UIDatePickerIOSCompactView *)self timeView];
  [timeView setMinuteInterval:minuteInterval];

  minuteInterval2 = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setMinuteInterval:minuteInterval2];
}

- (void)didChangeRoundsToMinuteInterval
{
  roundsToMinuteInterval = [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval];
  timeView = [(_UIDatePickerIOSCompactView *)self timeView];
  [timeView setRoundsToMinuteInterval:roundsToMinuteInterval];

  roundsToMinuteInterval2 = [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setRoundsToMinuteInterval:roundsToMinuteInterval2];
}

- (void)didReset
{
  [(_UIDatePickerIOSCompactView *)self _updateUI];

  [(_UIDatePickerIOSCompactView *)self _updateDateBeforeTimeValue];
}

- (UIEdgeInsets)appliedInsetsToEdgeOfContent
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)_sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)defaultSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIDatePicker)datePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);

  return WeakRetained;
}

@end