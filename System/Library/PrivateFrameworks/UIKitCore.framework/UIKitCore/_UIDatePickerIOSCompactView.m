@interface _UIDatePickerIOSCompactView
- (BOOL)compactTimeLabel:(id)a3 shouldDismissForInteractionAtLocation:(CGPoint)a4;
- (CGSize)_sizeThatFits:(CGSize)a3;
- (CGSize)defaultSize;
- (UIDatePicker)datePicker;
- (UIEdgeInsets)appliedInsetsToEdgeOfContent;
- (_UIDatePickerIOSCompactView)initWithFrame:(CGRect)a3;
- (id)createDatePickerForCompactDateLabel:(id)a3;
- (id)createDatePickerForCompactTimeLabel:(id)a3;
- (void)_contentSizeCategoryDidChange:(id)a3 previousTraits:(id)a4;
- (void)_datePickerPresentation:(id)a3 didChangeActiveMode:(int64_t)a4;
- (void)_reloadTimeViewTimeFormat;
- (void)_resignActiveComponentAnimated:(BOOL)a3;
- (void)_updateDateBeforeTimeValue;
- (void)_updateDateViewTextAlignment;
- (void)_updateEnabledStyling;
- (void)_updateUI;
- (void)compactDateLabelDidBeginEditing:(id)a3;
- (void)compactDateLabelDidEndEditing:(id)a3;
- (void)compactTimeLabel:(id)a3 didSelectTime:(id)a4;
- (void)compactTimeLabelDidBeginEditing:(id)a3;
- (void)compactTimeLabelDidEndEditing:(id)a3;
- (void)compactTimeLabelWillBecomeFirstResponder:(id)a3;
- (void)didChangeCalendar;
- (void)didChangeCompactStyleDelegate;
- (void)didChangeDateFrom:(id)a3 animated:(BOOL)a4;
- (void)didChangeLocale;
- (void)didChangeMaximumDate;
- (void)didChangeMinimumDate;
- (void)didChangeMinuteInterval;
- (void)didChangeMode;
- (void)didChangeRoundsToMinuteInterval;
- (void)didChangeTimeZone;
- (void)didReset;
- (void)displaySelectedDateAnimated:(BOOL)a3;
- (void)setActiveComponent:(int64_t)a3;
- (void)setContentHorizontalAlignment:(int64_t)a3;
- (void)setData:(id)a3;
- (void)setOverrideAttributes:(id)a3;
- (void)tintColorDidChange;
- (void)updateConstraints;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIDatePickerIOSCompactView

- (void)setContentHorizontalAlignment:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _UIDatePickerIOSCompactView;
  [(UIControl *)&v4 setContentHorizontalAlignment:a3];
  [(_UIDatePickerOverlayPresentation *)self->_presentation setAlignment:[(UIControl *)self effectiveContentHorizontalAlignment]];
  [(UIView *)self setNeedsUpdateConstraints];
}

- (_UIDatePickerIOSCompactView)initWithFrame:(CGRect)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = _UIDatePickerIOSCompactView;
  v3 = [(UIControl *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    dateView = v3->_dateView;
    v3->_dateView = v4;

    [(UIView *)v3->_dateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIDatePickerCompactDateLabel *)v3->_dateView setDelegate:v3];
    v6 = [(_UIDatePickerIOSCompactView *)v3 data];
    v7 = [v6 effectiveCalendar];
    v8 = [(_UIDatePickerIOSCompactView *)v3 data];
    v9 = [v8 effectiveLocale];
    v10 = [(_UIDatePickerIOSCompactView *)v3 data];
    v11 = +[_UIDatePickerCalendarTimeFormat formatWithCalendar:locale:followsSystemHourCycle:](_UIDatePickerCalendarTimeFormat, "formatWithCalendar:locale:followsSystemHourCycle:", v7, v9, [v10 followsSystemHourCycle]);

    v12 = [_UIDatePickerCompactTimeLabel alloc];
    v13 = [(_UIDatePickerIOSCompactView *)v3 data];
    v14 = -[_UIDatePickerCompactTimeLabel initWithTimeFormat:minuteInterval:](v12, "initWithTimeFormat:minuteInterval:", v11, [v13 minuteInterval]);
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

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerIOSCompactView;
  [(UIView *)&v5 willMoveToWindow:?];
  if (!a3)
  {
    [(_UIDatePickerIOSCompactView *)self _resignActiveComponentAnimated:0];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerIOSCompactView;
  [(UIView *)&v5 willMoveToSuperview:?];
  if (!a3)
  {
    [(_UIDatePickerIOSCompactView *)self _resignActiveComponentAnimated:0];
  }
}

- (void)_contentSizeCategoryDidChange:(id)a3 previousTraits:(id)a4
{
  v5 = a4;
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  v9 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = UIContentSizeCategoryIsAccessibilityCategory(v9);
  if (IsAccessibilityCategory != v5)
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

  v5 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(NSDateFormatter *)self->_layoutFormatter setLocale:v5];

  v6 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [(NSDateFormatter *)self->_layoutFormatter setCalendar:v6];

  v7 = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(NSDateFormatter *)self->_layoutFormatter setTimeZone:v7];

  [(NSDateFormatter *)self->_layoutFormatter setLocalizedDateFormatFromTemplate:@"jy"];
  v20 = [(NSDateFormatter *)self->_layoutFormatter dateFormat];
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
        v17 = [v16 BOOLValue];

        if ((v17 & 1) == 0)
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

  v5 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(NSDateFormatter *)self->_dateFormatterMedium setLocale:v5];

  v6 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [(NSDateFormatter *)self->_dateFormatterMedium setCalendar:v6];

  v7 = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(NSDateFormatter *)self->_dateFormatterMedium setTimeZone:v7];

  if (!self->_dateFormatterShort)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatterShort = self->_dateFormatterShort;
    self->_dateFormatterShort = v8;

    [(NSDateFormatter *)self->_dateFormatterShort setDateStyle:1];
    [(NSDateFormatter *)self->_dateFormatterShort setTimeStyle:0];
    [(NSDateFormatter *)self->_dateFormatterShort setFormattingContext:2];
  }

  v10 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(NSDateFormatter *)self->_dateFormatterShort setLocale:v10];

  v11 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [(NSDateFormatter *)self->_dateFormatterShort setCalendar:v11];

  v12 = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(NSDateFormatter *)self->_dateFormatterShort setTimeZone:v12];

  v13 = self->_dateFormatterMedium;
  v14 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v15 = [(NSDateFormatter *)v13 stringForObjectValue:v14];
  v23[0] = v15;
  v16 = self->_dateFormatterShort;
  v17 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v18 = [(NSDateFormatter *)v16 stringForObjectValue:v17];
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v20 = [(_UIDatePickerIOSCompactView *)self dateView];
  [v20 setTitles:v19];

  [(_UIDatePickerCompactTimeLabel *)self->_timeView setTapInteractionControlledExternally:(*&self->_flags >> 1) & 1];
  [(_UIDatePickerCompactDateLabel *)self->_dateView setTapInteractionControlledExternally:(*&self->_flags >> 1) & 1];
  [(UIGestureRecognizer *)self->_panGestureRecognizer setEnabled:(*&self->_flags & 2) == 0];
  [(_UIDatePickerIOSCompactView *)self _reloadTimeViewTimeFormat];
  timeView = self->_timeView;
  v22 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [(_UIDatePickerCompactTimeLabel *)timeView reloadWithDate:v22];

  [(_UIDatePickerIOSCompactView *)self _updateEnabledStyling];
}

- (void)_updateEnabledStyling
{
  flags = self->_flags;
  v4 = [(_UIDatePickerIOSCompactView *)self timeView];
  [v4 setEnabled:flags & 1];

  v5 = [(_UIDatePickerIOSCompactView *)self dateView];
  [v5 setEnabled:flags & 1];

  [(UIView *)self setUserInteractionEnabled:flags & 1];
}

- (void)_updateDateViewTextAlignment
{
  v3 = [(UIControl *)self effectiveContentHorizontalAlignment];
  v4 = 1;
  if (v3 > UIControlContentHorizontalAlignmentFill)
  {
    v6 = *(&self->super.super._viewFlags + 2) & 0x400000;
    if (v3 == UIControlContentHorizontalAlignmentLeading)
    {
      v4 = v6 >> 21;
    }

    else if (v3 == UIControlContentHorizontalAlignmentTrailing)
    {
      v4 = (v6 >> 21) ^ 2;
    }
  }

  else
  {
    v5 = 2;
    if (v3 != UIControlContentHorizontalAlignmentRight)
    {
      v5 = 1;
    }

    if (v3 == UIControlContentHorizontalAlignmentLeft)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }
  }

  v7 = [(_UIDatePickerIOSCompactView *)self dateView];
  [v7 setTextAlignment:v4];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerIOSCompactView;
  [(UIView *)&v5 tintColorDidChange];
  [(_UIDatePickerIOSCompactView *)self _updateEnabledStyling];
  v3 = [(UIView *)self tintColor];
  v4 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v4 setTintColor:v3];
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

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(UIView *)self traitCollection];
  v5 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v4 userInterfaceIdiom]);

  [v5 compactLabelButtonSpacing];
  v7 = v6;
  v8 = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  v205 = v3;
  v180 = v5;
  if (v8 <= 1)
  {
    if (!v8)
    {
      [(UIView *)self->_dateView removeFromSuperview];
      [(UIView *)self addSubview:self->_timeView];
      [(_UIDatePickerCompactTimeLabel *)self->_timeView setAdjustsFontSizeToFitWidth:1];
      [(_UIDatePickerCompactTimeLabel *)self->_timeView setMinimumScaleFactor:0.8];
      v201 = [(UIView *)self->_timeView topAnchor];
      v195 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
      v191 = [v201 constraintEqualToAnchor:v195];
      v214[0] = v191;
      v187 = [(UIView *)self->_timeView bottomAnchor];
      v181 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
      v9 = [v187 constraintEqualToAnchor:v181];
      v214[1] = v9;
      v10 = [(UIView *)self->_timeView leadingAnchor];
      v11 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      [v10 constraintEqualToAnchor:v11];
      v13 = v12 = v3;
      v214[2] = v13;
      v14 = [(UIView *)self->_timeView trailingAnchor];
      v15 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v214[3] = v16;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v214;
      goto LABEL_18;
    }

    if (v8 == 1)
    {
      [(UIView *)self addSubview:self->_dateView];
      [(UIView *)self->_timeView removeFromSuperview];
      [(_UIDatePickerCompactDateLabel *)self->_dateView setAdjustsFontSizeToFitWidth:1];
      [(_UIDatePickerCompactDateLabel *)self->_dateView setMinimumScaleFactor:0.8];
      [(_UIDatePickerIOSCompactView *)self _updateDateViewTextAlignment];
      v201 = [(UIView *)self->_dateView topAnchor];
      v195 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
      v191 = [v201 constraintEqualToAnchor:v195];
      v215[0] = v191;
      v187 = [(UIView *)self->_dateView bottomAnchor];
      v181 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
      v9 = [v187 constraintEqualToAnchor:v181];
      v215[1] = v9;
      v10 = [(UIView *)self->_dateView leadingAnchor];
      v11 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      [v10 constraintEqualToAnchor:v11];
      v13 = v12 = v3;
      v215[2] = v13;
      v14 = [(UIView *)self->_dateView trailingAnchor];
      v15 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
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

  if (v8 == 3)
  {
    [(UIView *)self->_dateView removeFromSuperview];
    [(UIView *)self addSubview:self->_timeView];
    [(_UIDatePickerCompactTimeLabel *)self->_timeView setAdjustsFontSizeToFitWidth:1];
    [(_UIDatePickerCompactTimeLabel *)self->_timeView setMinimumScaleFactor:0.8];
    v201 = [(UIView *)self->_timeView topAnchor];
    v195 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v191 = [v201 constraintEqualToAnchor:v195];
    v213[0] = v191;
    v187 = [(UIView *)self->_timeView bottomAnchor];
    v181 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v9 = [v187 constraintEqualToAnchor:v181];
    v213[1] = v9;
    v10 = [(UIView *)self->_timeView leadingAnchor];
    v11 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    [v10 constraintEqualToAnchor:v11];
    v13 = v12 = v3;
    v213[2] = v13;
    v14 = [(UIView *)self->_timeView trailingAnchor];
    v15 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v213[3] = v16;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v213;
    goto LABEL_18;
  }

  if (v8 != 2)
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
  v21 = [(UIView *)self traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v22);

  if (IsAccessibilityCategory)
  {
    v24 = [(UIControl *)self contentHorizontalAlignment];
    if (v24 <= UIControlContentHorizontalAlignmentRight)
    {
      if (v24)
      {
        if (v24 == UIControlContentHorizontalAlignmentLeft)
        {
          v130 = [(UIView *)*p_dateView rightAnchor];
          v131 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          v27 = [v130 constraintEqualToAnchor:v131];

          LODWORD(v132) = 1132003328;
          [v27 setPriority:v132];
          v29 = [(UIView *)*p_dateView leftAnchor];
          v30 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v192 = [v29 constraintEqualToAnchor:v30];
          v223[0] = v192;
          v133 = [(UIView *)*p_dateView rightAnchor];
          v182 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          v188 = v133;
          v176 = [v133 constraintLessThanOrEqualToAnchor:v182];
          v223[1] = v176;
          v134 = [(UIView *)*p_timeView leftAnchor];
          v169 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v173 = v134;
          v165 = [v134 constraintEqualToAnchor:v169];
          v223[2] = v165;
          v33 = [(UIView *)*p_timeView rightAnchor];
          v34 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          v35 = [v33 constraintLessThanOrEqualToAnchor:v34];
          v223[3] = v35;
          v36 = MEMORY[0x1E695DEC8];
          v37 = v223;
          goto LABEL_49;
        }

        if (v24 == UIControlContentHorizontalAlignmentRight)
        {
          v25 = [(UIView *)*p_dateView leftAnchor];
          v26 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v27 = [v25 constraintEqualToAnchor:v26];

          LODWORD(v28) = 1132003328;
          [v27 setPriority:v28];
          v29 = [(UIView *)*p_dateView leftAnchor];
          v30 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v192 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
          v222[0] = v192;
          v31 = [(UIView *)*p_dateView rightAnchor];
          v182 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          v188 = v31;
          v176 = [v31 constraintEqualToAnchor:v182];
          v222[1] = v176;
          v32 = [(UIView *)*p_timeView leftAnchor];
          v169 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
          v173 = v32;
          v165 = [v32 constraintGreaterThanOrEqualToAnchor:v169];
          v222[2] = v165;
          v33 = [(UIView *)*p_timeView rightAnchor];
          v34 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
          v35 = [v33 constraintEqualToAnchor:v34];
          v222[3] = v35;
          v36 = MEMORY[0x1E695DEC8];
          v37 = v222;
LABEL_49:
          v135 = 4;
LABEL_52:
          v108 = [v36 arrayWithObjects:v37 count:v135];
          [v205 addObjectsFromArray:v108];
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
        v204 = [v145 topAnchor];
        v200 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
        v194 = [v204 constraintEqualToAnchor:v200];
        v219[0] = v194;
        v146 = [v144 topAnchor];
        v147 = [v145 bottomAnchor];
        v148 = [v146 constraintEqualToAnchor:v147 constant:v7];
        v219[1] = v148;
        v149 = [v144 bottomAnchor];
        v150 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
        v151 = [v149 constraintEqualToAnchor:v150];
        v219[2] = v151;
        v152 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:3];
        [v205 addObjectsFromArray:v152];

        goto LABEL_19;
      }

LABEL_44:
      v156 = [(UIView *)*p_dateView centerXAnchor];
      v163 = [(UILayoutGuide *)self->_contentLayoutGuide centerXAnchor];
      v159 = [v156 constraintEqualToAnchor:v163];
      v224[0] = v159;
      v104 = [(UIView *)*p_timeView centerXAnchor];
      v188 = [(UILayoutGuide *)self->_contentLayoutGuide centerXAnchor];
      v192 = v104;
      v182 = [v104 constraintEqualToAnchor:v188];
      v224[1] = v182;
      v105 = [(UIView *)*p_dateView leadingAnchor];
      v173 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      v176 = v105;
      v169 = [v105 constraintGreaterThanOrEqualToAnchor:v173];
      v224[2] = v169;
      v106 = [(UIView *)*p_dateView trailingAnchor];
      v107 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v165 = v106;
      v34 = [v106 constraintLessThanOrEqualToAnchor:v107];
      v224[3] = v34;
      v35 = [(UIView *)*p_timeView leadingAnchor];
      v108 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
      v109 = [v35 constraintGreaterThanOrEqualToAnchor:v108];
      v224[4] = v109;
      v110 = [(UIView *)*p_timeView trailingAnchor];
      v111 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
      v112 = [v110 constraintLessThanOrEqualToAnchor:v111];
      v224[5] = v112;
      v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v224 count:6];
      [v205 addObjectsFromArray:v113];

      v27 = v156;
      v33 = v107;

      v29 = v163;
      p_timeView = &self->_timeView;
      v30 = v159;

      p_dateView = &self->_dateView;
LABEL_53:

      goto LABEL_54;
    }

    switch(v24)
    {
      case UIControlContentHorizontalAlignmentTrailing:
        v125 = [(UIView *)*p_timeView leadingAnchor];
        v126 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v27 = [v125 constraintEqualToAnchor:v126];

        LODWORD(v127) = 1132003328;
        [v27 setPriority:v127];
        v29 = [(UIView *)*p_dateView leadingAnchor];
        v30 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v192 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
        v220[0] = v192;
        v128 = [(UIView *)*p_dateView trailingAnchor];
        v182 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v188 = v128;
        v176 = [v128 constraintEqualToAnchor:v182];
        v220[1] = v176;
        v220[2] = v27;
        v129 = [(UIView *)*p_timeView leadingAnchor];
        v169 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v173 = v129;
        v165 = [v129 constraintGreaterThanOrEqualToAnchor:v169];
        v220[3] = v165;
        v33 = [(UIView *)*p_timeView trailingAnchor];
        v34 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v35 = [v33 constraintEqualToAnchor:v34];
        v220[4] = v35;
        v36 = MEMORY[0x1E695DEC8];
        v37 = v220;
        break;
      case UIControlContentHorizontalAlignmentLeading:
        v136 = [(UIView *)*p_dateView trailingAnchor];
        v137 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v27 = [v136 constraintEqualToAnchor:v137];

        LODWORD(v138) = 1132003328;
        [v27 setPriority:v138];
        v29 = [(UIView *)*p_dateView leadingAnchor];
        v30 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v192 = [v29 constraintEqualToAnchor:v30];
        v221[0] = v192;
        v139 = [(UIView *)*p_dateView trailingAnchor];
        v182 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v188 = v139;
        v176 = [v139 constraintLessThanOrEqualToAnchor:v182];
        v221[1] = v176;
        v221[2] = v27;
        v140 = [(UIView *)*p_timeView leadingAnchor];
        v169 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v173 = v140;
        v165 = [v140 constraintEqualToAnchor:v169];
        v221[3] = v165;
        v33 = [(UIView *)*p_timeView trailingAnchor];
        v34 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v35 = [v33 constraintLessThanOrEqualToAnchor:v34];
        v221[4] = v35;
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

  v190 = [(UIView *)*p_dateView topAnchor];
  v184 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v178 = [v190 constraintEqualToAnchor:v184];
  v225[0] = v178;
  v174 = [(UIView *)*p_dateView bottomAnchor];
  v170 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v166 = [v174 constraintEqualToAnchor:v170];
  v225[1] = v166;
  v161 = [(UIView *)*p_timeView topAnchor];
  v72 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  [v161 constraintEqualToAnchor:v72];
  v73 = v203 = &self->_timeView;
  v225[2] = v73;
  v74 = [(UIView *)self->_timeView bottomAnchor];
  v75 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];
  v225[3] = v76;
  v197 = &self->_dateView;
  v77 = [(UIView *)self->_dateView heightAnchor];
  v78 = [(UIView *)self->_timeView heightAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];
  v225[4] = v79;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v225 count:5];
  [v205 addObjectsFromArray:v80];

  v185 = [(UILayoutGuide *)self->_timeViewLayoutGuide widthAnchor];
  v81 = [(UIView *)self->_timeView widthAnchor];
  v82 = [v185 constraintEqualToAnchor:v81];
  v218[0] = v82;
  v83 = [(UILayoutGuide *)self->_timeViewLayoutGuide topAnchor];
  v84 = [(UIView *)self->_timeView topAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];
  v218[1] = v85;
  v86 = [(UILayoutGuide *)self->_timeViewLayoutGuide bottomAnchor];
  v87 = [(UIView *)self->_timeView bottomAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];
  v218[2] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v218 count:3];
  [v205 addObjectsFromArray:v89];

  timeView = self->_timeView;
  if (self->_dateOnLeadingSide)
  {
    v91 = [(UIView *)timeView trailingAnchor];
    v92 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v155 = [v91 constraintEqualToAnchor:v92];

    LODWORD(v93) = 1132003328;
    [v155 setPriority:v93];
    v186 = [(UILayoutGuide *)self->_timeViewLayoutGuide leadingAnchor];
    v179 = [(UIView *)*v197 trailingAnchor];
    v175 = [v186 constraintEqualToAnchor:v179 constant:v7];
    v217[0] = v175;
    v167 = [(UIView *)*v203 leadingAnchor];
    v171 = [(_UIDatePickerCompactDateLabel *)*v197 backgroundView];
    v162 = [v171 trailingAnchor];
    v158 = [v167 constraintEqualToAnchor:v162 constant:v7];
    v217[1] = v158;
    v198 = [(UIView *)*v197 leadingAnchor];
    v153 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v94 = [v198 constraintEqualToAnchor:v153];
    v217[2] = v94;
    v95 = [(UIView *)*v203 trailingAnchor];
    v96 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v97 = [v95 constraintLessThanOrEqualToAnchor:v96];
    v217[3] = v97;
    v98 = [(UILayoutGuide *)self->_timeViewLayoutGuide trailingAnchor];
    v99 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v100 = [v98 constraintLessThanOrEqualToAnchor:v99];
    v101 = v155;
    v217[4] = v100;
    v217[5] = v155;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v217 count:6];
    [v205 addObjectsFromArray:v102];

    v103 = v167;
  }

  else
  {
    v114 = [(UIView *)timeView leadingAnchor];
    v115 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v157 = [v114 constraintEqualToAnchor:v115];

    LODWORD(v116) = 1132003328;
    [v157 setPriority:v116];
    v186 = [(UIView *)*v197 leadingAnchor];
    v179 = [(UILayoutGuide *)self->_timeViewLayoutGuide trailingAnchor];
    v175 = [v186 constraintEqualToAnchor:v179 constant:v7];
    v216[0] = v175;
    v172 = [(_UIDatePickerCompactDateLabel *)*v197 backgroundView];
    v168 = [v172 leadingAnchor];
    v164 = [(UIView *)*v203 trailingAnchor];
    v160 = [v168 constraintEqualToAnchor:v164 constant:v7];
    v216[1] = v160;
    v199 = [(UIView *)*v197 trailingAnchor];
    v154 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v117 = [v199 constraintEqualToAnchor:v154];
    v216[2] = v117;
    v118 = [(UIView *)*v203 leadingAnchor];
    v119 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v120 = [v118 constraintGreaterThanOrEqualToAnchor:v119];
    v216[3] = v120;
    v121 = [(UILayoutGuide *)self->_timeViewLayoutGuide leadingAnchor];
    v122 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v123 = [v121 constraintGreaterThanOrEqualToAnchor:v122];
    v101 = v157;
    v216[4] = v123;
    v216[5] = v157;
    v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v216 count:6];
    [v205 addObjectsFromArray:v124];

    v103 = v172;
  }

LABEL_19:
  v40 = [(_UIDatePickerIOSCompactView *)self alignConstraintsToLayoutGuide];
  v41 = v40;
  [(_UIDatePickerOverlayPresentation *)self->_presentation setOverlayAnchor:v40];
  if (v41)
  {
    v42 = [(UIView *)self layoutMarginsGuide];
    v193 = [v42 leadingAnchor];

    v43 = [(UIView *)self layoutMarginsGuide];
    v189 = [v43 trailingAnchor];

    v44 = [(UIView *)self layoutMarginsGuide];
    v202 = [v44 leftAnchor];

    v45 = [(UIView *)self layoutMarginsGuide];
    v196 = [v45 rightAnchor];

    v46 = [(UIView *)self layoutMarginsGuide];
    v47 = [v46 topAnchor];

    v48 = [(UIView *)self layoutMarginsGuide];
    v183 = [v48 centerXAnchor];

    v49 = [(UIView *)self layoutMarginsGuide];
    v50 = [v49 centerYAnchor];
  }

  else
  {
    v193 = [(UIView *)self leadingAnchor];
    v189 = [(UIView *)self trailingAnchor];
    v202 = [(UIView *)self leftAnchor];
    v196 = [(UIView *)self rightAnchor];
    v47 = [(UIView *)self topAnchor];
    v183 = [(UIView *)self centerXAnchor];
    v50 = [(UIView *)self centerYAnchor];
  }

  v51 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v52 = [v51 constraintEqualToAnchor:v47];

  LODWORD(v53) = 1132003328;
  [v52 setPriority:v53];
  v54 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
  v177 = v50;
  v55 = [v54 constraintEqualToAnchor:v50];
  v212[0] = v55;
  v56 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v57 = [v56 constraintGreaterThanOrEqualToAnchor:v47];
  v212[1] = v57;
  v212[2] = v52;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:3];
  [v205 addObjectsFromArray:v58];

  v59 = [(UIControl *)self effectiveContentHorizontalAlignment];
  if (v59 > UIControlContentHorizontalAlignmentRight)
  {
    switch(v59)
    {
      case UIControlContentHorizontalAlignmentTrailing:
        v60 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v61 = [v60 constraintGreaterThanOrEqualToAnchor:v193];
        v207[0] = v61;
        v62 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v63 = [v62 constraintEqualToAnchor:v189];
        v207[1] = v63;
        v64 = MEMORY[0x1E695DEC8];
        v65 = v207;
        break;
      case UIControlContentHorizontalAlignmentLeading:
        v60 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
        v61 = [v60 constraintEqualToAnchor:v193];
        v208[0] = v61;
        v62 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
        v63 = [v62 constraintLessThanOrEqualToAnchor:v189];
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
    v66 = [v64 arrayWithObjects:v65 count:2];
    v71 = [v205 arrayByAddingObjectsFromArray:v66];
    v67 = self->_dateTimeConstraints;
    self->_dateTimeConstraints = v71;
    goto LABEL_35;
  }

  if (v59)
  {
    if (v59 == UIControlContentHorizontalAlignmentLeft)
    {
      v60 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
      v61 = [v60 constraintEqualToAnchor:v202];
      v210[0] = v61;
      v62 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
      v63 = [v62 constraintLessThanOrEqualToAnchor:v196];
      v210[1] = v63;
      v64 = MEMORY[0x1E695DEC8];
      v65 = v210;
    }

    else
    {
      if (v59 != UIControlContentHorizontalAlignmentRight)
      {
        goto LABEL_36;
      }

      v60 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
      v61 = [v60 constraintGreaterThanOrEqualToAnchor:v202];
      v209[0] = v61;
      v62 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
      v63 = [v62 constraintEqualToAnchor:v196];
      v209[1] = v63;
      v64 = MEMORY[0x1E695DEC8];
      v65 = v209;
    }

    goto LABEL_34;
  }

LABEL_30:
  v60 = [(UILayoutGuide *)self->_contentLayoutGuide leftAnchor];
  v61 = [v60 constraintGreaterThanOrEqualToAnchor:v202];
  v211[0] = v61;
  v62 = [(UILayoutGuide *)self->_contentLayoutGuide rightAnchor];
  v63 = [v62 constraintLessThanOrEqualToAnchor:v196];
  v211[1] = v63;
  v66 = [(UILayoutGuide *)self->_contentLayoutGuide centerXAnchor];
  v67 = [v66 constraintEqualToAnchor:v183];
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

- (void)compactTimeLabel:(id)a3 didSelectTime:(id)a4
{
  v23 = a4;
  v5 = [_UIDatePickerCalendarDay alloc];
  v6 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v7 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v8 = [(_UIDatePickerCalendarDay *)v5 initWithDate:v6 calendar:v7];

  v22 = v8;
  v9 = [(_UIDatePickerCalendarDateComponent *)v8 components];
  v10 = [v23 components];
  v11 = v9;
  v12 = objc_opt_new();
  for (i = 1; i != 64; ++i)
  {
    v14 = [v11 valueForComponent:1 << i];
    v15 = [v10 valueForComponent:1 << i];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDateComponents * _Nonnull _UIDatePickerCombinedDateComponents(NSDateComponents * _Nonnull __strong, NSDateComponents * _Nonnull __strong)"}];
      [v21 handleFailureInFunction:v20 file:@"_UIDatePickerCalendarDateComponent.h" lineNumber:68 description:{@"Error combining %@ and %@. Both components contain values for NSCalendarUnit %lu", v11, v10, 1 << i}];

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

  v17 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [v12 setCalendar:v17];

  v18 = [v12 date];
  [(_UIDatePickerDataModel *)self->_data setDate:v18];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitValueChanged];
}

- (void)compactTimeLabelDidBeginEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitBeginEditing];
}

- (void)compactTimeLabelDidEndEditing:(id)a3
{
  timeView = self->_timeView;
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [(_UIDatePickerCompactTimeLabel *)timeView reloadWithDate:v5];

  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitEndEditing];
}

- (void)compactTimeLabelWillBecomeFirstResponder:(id)a3
{
  if ([(_UIDatePickerOverlayPresentation *)self->_presentation activeMode]== 2)
  {
    presentation = self->_presentation;

    [(_UIDatePickerOverlayPresentation *)presentation dismissPresentationAnimated:1];
  }
}

- (BOOL)compactTimeLabel:(id)a3 shouldDismissForInteractionAtLocation:(CGPoint)a4
{
  [a3 convertPoint:self toView:{a4.x, a4.y}];
  v5 = [(UIControl *)self hitTest:0 withEvent:?];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePicker);
    v8 = [WeakRetained _compactStyleDelegate];
    v6 = v8 == 0;
  }

  return v6;
}

- (void)compactDateLabelDidBeginEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitBeginEditing];
}

- (void)compactDateLabelDidEndEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitEndEditing];
}

- (id)createDatePickerForCompactTimeLabel:(id)a3
{
  v4 = [(_UIDatePickerIOSCompactView *)self data];
  v5 = [v4 createDatePickerRepresentingDataModelForMode:0 style:1];

  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  v7 = [WeakRetained tintColor];
  [v5 setTintColor:v7];

  return v5;
}

- (id)createDatePickerForCompactDateLabel:(id)a3
{
  v4 = [(_UIDatePickerIOSCompactView *)self data];
  v5 = [v4 createDatePickerRepresentingDataModelForMode:1 style:3];

  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  v7 = [WeakRetained tintColor];
  [v5 setTintColor:v7];

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
  v6 = [WeakRetained _compactStyleDelegate];

  if (v6)
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

- (void)_datePickerPresentation:(id)a3 didChangeActiveMode:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = a4 == 2;
  }

  if (v4 != self->_activeComponent)
  {
    self->_activeComponent = v4;
    if ((*&self->_flags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_datePicker);
      v6 = [WeakRetained _compactStyleDelegate];
      v7 = objc_loadWeakRetained(&self->_datePicker);
      [v6 _datePicker:v7 didSelectComponent:v4];
    }
  }
}

- (void)setActiveComponent:(int64_t)a3
{
  if (self->_activeComponent != a3)
  {
    self->_activeComponent = a3;
    if (a3 == 2)
    {
      v3 = 568;
    }

    else
    {
      if (a3 != 1)
      {
        if (!a3)
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

- (void)_resignActiveComponentAnimated:(BOOL)a3
{
  v3 = a3;
  self->_activeComponent = 0;
  if ([(_UIDatePickerOverlayPresentation *)self->_presentation activeMode])
  {
    presentation = self->_presentation;

    [(_UIDatePickerOverlayPresentation *)presentation dismissPresentationAnimated:v3];
  }
}

- (void)setOverrideAttributes:(id)a3
{
  dateView = self->_dateView;
  v5 = a3;
  [(_UIDatePickerCompactDateLabel *)dateView setOverrideAttributes:v5];
  [(_UIDatePickerCompactTimeLabel *)self->_timeView setOverrideAttributes:v5];
}

- (void)_reloadTimeViewTimeFormat
{
  [(_UIDatePickerCalendarTimeLabel *)self->_timeView setMinuteInterval:[(_UIDatePickerDataModel *)self->_data minuteInterval]];
  [(_UIDatePickerCalendarTimeLabel *)self->_timeView setRoundsToMinuteInterval:[(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval]];
  timeView = self->_timeView;
  v7 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v4 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  v5 = [(_UIDatePickerDataModel *)self->_data followsSystemHourCycle];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  -[_UIDatePickerCompactTimeLabel reloadWithCalendar:locale:followsSystemHourCycle:displaysTimeZone:](timeView, "reloadWithCalendar:locale:followsSystemHourCycle:displaysTimeZone:", v7, v4, v5, [WeakRetained _displaysTimeZone]);
}

- (void)setData:(id)a3
{
  v5 = a3;
  if (self->_data != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_data, a3);
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
    v5 = v8;
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
  v4 = [(_UIDatePickerDataModel *)self->_data locale];
  v3 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v3 setLocale:v4];
}

- (void)didChangeTimeZone
{
  [(_UIDatePickerIOSCompactView *)self _updateUI];
  [(_UIDatePickerIOSCompactView *)self _updateDateBeforeTimeValue];
  v4 = [(_UIDatePickerDataModel *)self->_data timeZone];
  v3 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v3 setTimeZone:v4];
}

- (void)didChangeCalendar
{
  [(_UIDatePickerIOSCompactView *)self _updateUI];
  [(_UIDatePickerIOSCompactView *)self _updateDateBeforeTimeValue];
  v4 = [(_UIDatePickerDataModel *)self->_data calendar];
  v3 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v3 setCalendar:v4];
}

- (void)didChangeDateFrom:(id)a3 animated:(BOOL)a4
{
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate:a3];
  v6 = [(_UIDatePickerIOSCompactView *)self timeView];
  v7 = [v6 timeFormat];
  [v7 setTimeZoneReferenceDate:v5];

  [(_UIDatePickerIOSCompactView *)self _updateUI];
  v9 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v8 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v8 setDate:v9];
}

- (void)displaySelectedDateAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [v6 setDate:v5 animated:v3];
}

- (void)didChangeMinimumDate
{
  v4 = [(_UIDatePickerDataModel *)self->_data minimumDate];
  v3 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v3 setMinimumDate:v4];
}

- (void)didChangeMaximumDate
{
  v4 = [(_UIDatePickerDataModel *)self->_data maximumDate];
  v3 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v3 setMaximumDate:v4];
}

- (void)didChangeMinuteInterval
{
  v3 = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  v4 = [(_UIDatePickerIOSCompactView *)self timeView];
  [v4 setMinuteInterval:v3];

  v5 = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  v6 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v6 setMinuteInterval:v5];
}

- (void)didChangeRoundsToMinuteInterval
{
  v3 = [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval];
  v4 = [(_UIDatePickerIOSCompactView *)self timeView];
  [v4 setRoundsToMinuteInterval:v3];

  v5 = [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval];
  v6 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v6 setRoundsToMinuteInterval:v5];
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

- (CGSize)_sizeThatFits:(CGSize)a3
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