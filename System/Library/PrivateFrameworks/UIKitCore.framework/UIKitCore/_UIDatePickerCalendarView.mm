@interface _UIDatePickerCalendarView
- (BOOL)_shouldUpdateDataForComponents:(id)a3 date:(id)a4;
- (BOOL)_shouldUpdateTimeViewForSelectedTime:(id)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)_sizeThatFits:(CGSize)a3;
- (CGSize)defaultSize;
- (UIDatePicker)datePicker;
- (UIEdgeInsets)appliedInsetsToEdgeOfContent;
- (_UIDatePickerCalendarView)initWithFrame:(CGRect)a3;
- (id)createDatePickerForTimeView:(id)a3;
- (id)primaryFirstResponder;
- (void)_reload;
- (void)_reloadCalendarView;
- (void)_reloadDateRange;
- (void)_reloadTimeView;
- (void)_setEnabled:(BOOL)a3;
- (void)_setNeedsUpdateDateAnimated:(BOOL)a3;
- (void)_updateContentSizeLimitations;
- (void)_updateCustomFonts;
- (void)_updateDataForComponents:(id)a3;
- (void)_updateDate;
- (void)_updateDateIfNeeded;
- (void)_updateEnabledStyling;
- (void)_updateLayoutMargins;
- (void)_updateModuleVisibility;
- (void)_updateSelectedDay:(id)a3 animated:(BOOL)a4 notify:(BOOL)a5;
- (void)_updateSelectedDay:(id)a3 time:(id)a4 animated:(BOOL)a5 notify:(BOOL)a6;
- (void)_updateSelectedTime:(id)a3 notify:(BOOL)a4;
- (void)_workaround66574039_datePickerDidUpdateLayoutMargins;
- (void)dateSelection:(id)a3 didSelectDate:(id)a4;
- (void)didChangeMinuteInterval;
- (void)didChangeMode;
- (void)didChangeRoundsToMinuteInterval;
- (void)displaySelectedDateAnimated:(BOOL)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setData:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)timeViewDidBeginEditing:(id)a3;
- (void)timeViewDidEndEditing:(id)a3;
@end

@implementation _UIDatePickerCalendarView

- (_UIDatePickerCalendarView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = _UIDatePickerCalendarView;
  v3 = [(UIView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 traitCollection];
    v6 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v5 userInterfaceIdiom]);
    visualStyle = v4->_visualStyle;
    v4->_visualStyle = v6;

    v8 = objc_opt_new();
    v9 = [[UICalendarSelectionSingleDate alloc] initWithDelegate:v4];
    [(UICalendarSelectionSingleDate *)v9 set_selectionFollowsMonthSelection:1];
    [(UIView *)v8 setClipsToBounds:0];
    [(UICalendarView *)v8 setSelectionBehavior:v9];
    calendarView = v4->_calendarView;
    v4->_calendarView = v8;
    v11 = v8;

    selection = v4->_selection;
    v4->_selection = v9;
    v13 = v9;

    v14 = objc_opt_new();
    [(UIView *)v14 setAutoresizingMask:50];
    [(_UIDatePickerCalendarTimeView *)v14 setDelegate:v4];
    timeView = v4->_timeView;
    v4->_timeView = v14;

    [(_UIDatePickerCalendarView *)v4 _updateLayoutMargins];
    [(_UIDatePickerCalendarView *)v4 _updateContentSizeLimitations];
  }

  return v4;
}

- (void)_workaround66574039_datePickerDidUpdateLayoutMargins
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_calendarView setLayoutMargins:v5, v7, v9, v11];
  [(UIView *)self->_timeView setLayoutMargins:v5, v7, v9, v11];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_updateLayoutMargins
{
  [(UIView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(_UIDatePickerStyle *)self->_visualStyle inlineDatePickerMinimumMargin];
  v8 = v7;
  v9 = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  v10 = 0.0;
  if (v9 != 1)
  {
    [(_UIDatePickerStyle *)self->_visualStyle inlineDatePickerMinimumMargin];
    v10 = v11 * 0.5;
  }

  [(UIView *)self setLayoutMargins:v8, v4, v10, v6];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIDatePickerCalendarView;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(_UIDatePickerCalendarView *)self _updateContentSizeLimitations];
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = _UIDatePickerCalendarView;
  [(UIView *)&v50 layoutSubviews];
  v3 = self->_calendarView;
  v4 = self->_timeView;
  if ([(_UIDatePickerCalendarView *)self _shouldDisplayTimeView])
  {
    [(_UIDatePickerCalendarView *)self _shouldDisplayCalendarView];
  }

  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  visualStyle = self->_visualStyle;
  v14 = [(_UIDatePickerCalendarView *)self datePicker];
  [v14 layoutMargins];
  [(_UIDatePickerStyle *)visualStyle maximumWidthOverhangForProposedLayoutMargins:?];
  v16 = v15;
  v18 = v17;

  [(_UIDatePickerStyle *)self->_visualStyle inlineDatePickerMaximumWidth];
  v20 = v18 + v16 + v19;
  v51.origin.x = v6;
  v51.origin.y = v8;
  v51.size.width = v10;
  v51.size.height = v12;
  v21 = fmin(v20, CGRectGetWidth(v51));
  [(UIView *)self bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(UIView *)self traitCollection];
  [v30 displayScale];
  UIRectCenteredXInRectScale(v6, v8, v21, v12, v23, v25, v27, v29, v31);
  x = v32;
  y = v34;
  width = v36;
  height = v38;
  remainder.origin.x = v32;
  remainder.origin.y = v34;
  remainder.size.width = v36;
  remainder.size.height = v38;

  v40 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v40;
  [(UICalendarView *)v3 sizeThatFits:width, height];
  v42 = v41;
  [(UIView *)v4 systemLayoutSizeFittingSize:width, height];
  v44 = v43;
  v45 = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  if (v45 <= 1)
  {
    if (v45)
    {
      v46 = v3;
      if (v45 != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v46 = v4;
    }
  }

  else
  {
    if (v45 == 2)
    {
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      CGRectDivide(v52, &slice, &remainder, v42, CGRectMinYEdge);
      [(UICalendarView *)v3 setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      remainder.origin.y = remainder.origin.y + -4.0;
      remainder.size.height = remainder.size.height + 4.0;
      CGRectDivide(remainder, &slice, &remainder, v44, CGRectMinYEdge);
      x = slice.origin.x;
      y = slice.origin.y;
      v46 = v4;
    }

    else
    {
      if (v45 != 4272)
      {
        v46 = v4;
        if (v45 != 3)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      CGRectDivide(v53, &slice, &remainder, v44, CGRectMinYEdge);
      [(UIView *)v4 setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      [(_UIDatePickerStyle *)self->_visualStyle inlineTimeAndDateSpacing];
      remainder.origin.y = v47 + remainder.origin.y;
      remainder.size.height = remainder.size.height - v47;
      CGRectDivide(remainder, &slice, &remainder, v42, CGRectMinYEdge);
      x = slice.origin.x;
      y = slice.origin.y;
      v46 = v3;
    }

    width = slice.size.width;
    height = slice.size.height;
  }

LABEL_15:
  [v46 setFrame:{x, y, width, height}];
LABEL_16:
  [(_UIDatePickerCalendarView *)self _updateDateIfNeeded];
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIDatePickerCalendarView *)self _shouldDisplayCalendarView];
  v7 = [(_UIDatePickerCalendarView *)self _shouldDisplayTimeView];
  visualStyle = self->_visualStyle;
  if (v6)
  {
    [(_UIDatePickerStyle *)visualStyle inlineDateViewMinimumWidth];
  }

  else
  {
    [(_UIDatePickerStyle *)visualStyle inlineTimeViewMinimumWidth];
  }

  v10 = v9;
  v11 = self->_visualStyle;
  v12 = [(_UIDatePickerCalendarView *)self datePicker];
  [v12 layoutMargins];
  [(_UIDatePickerStyle *)v11 maximumWidthOverhangForProposedLayoutMargins:?];
  v14 = v13;
  v16 = v15;

  [(_UIDatePickerStyle *)self->_visualStyle inlineDatePickerMaximumWidth];
  v18 = v16 + v14 + v17;
  v19 = fmin(v18, width);
  if (width == 3.40282347e38)
  {
    v20 = 320.0;
  }

  else
  {
    v20 = v19;
  }

  if (!v6)
  {
    if (v7)
    {
      [(UIView *)self->_timeView systemLayoutSizeFittingSize:v20, height];
      v20 = v29;
      height = v30;
    }

    goto LABEL_13;
  }

  [(UICalendarView *)self->_calendarView sizeThatFits:v20, height];
  v23 = v21;
  v24 = v22;
  if (!v7)
  {
    height = v22;
    v20 = v21;
LABEL_13:
    v27 = fmax(v10, fmin(v20, v18));
    goto LABEL_14;
  }

  [(UIView *)self->_timeView systemLayoutSizeFittingSize:v20, height];
  v26 = v24 + v25 + -4.0;
  v27 = fmax(v10, fmin(v23, v18));
  [(UIView *)self layoutMargins];
  height = v26 + v28;
LABEL_14:
  v31 = v27;
  v32 = height;
  result.height = v32;
  result.width = v31;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarView;
  [(UIView *)&v7 setFrame:a3.origin.x, a3.origin.y];
  _alertForMinimumWidthErrorIfNecessary(self, width);
  if (self->_lastSize.width != width || self->_lastSize.height != height)
  {
    self->_lastSize.width = width;
    self->_lastSize.height = height;
    [(_UIDatePickerCalendarView *)self _updateContentSizeLimitations];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarView;
  [(UIView *)&v7 setBounds:a3.origin.x, a3.origin.y];
  _alertForMinimumWidthErrorIfNecessary(self, width);
  if (self->_lastSize.width != width || self->_lastSize.height != height)
  {
    self->_lastSize.width = width;
    self->_lastSize.height = height;
    [(_UIDatePickerCalendarView *)self _updateContentSizeLimitations];
  }
}

- (void)_updateContentSizeLimitations
{
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v7);
  if (Width < 330.0 && [(_UIDatePickerDataModel *)self->_data datePickerMode]&& [(_UIDatePickerDataModel *)self->_data datePickerMode]!= 3)
  {
    v4 = &UIContentSizeCategoryExtraExtraExtraLarge;
    if (Width < 280.0)
    {
      v4 = &UIContentSizeCategoryExtraExtraLarge;
    }
  }

  else
  {
    v4 = &UIContentSizeCategoryAccessibilityMedium;
  }

  v5 = *v4;
  [(UIView *)self->_timeView setMaximumContentSizeCategory:v5];
  [(_UIDatePickerCalendarView *)self _workaround66574039_datePickerDidUpdateLayoutMargins];
}

- (void)_setNeedsUpdateDateAnimated:(BOOL)a3
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  *&self->_flags = *&self->_flags & 0xFC | v3;
  [(UIView *)self setNeedsLayout];
}

- (void)_updateDateIfNeeded
{
  if (*&self->_flags)
  {
    [(_UIDatePickerCalendarView *)self _updateDate];
  }
}

- (void)_updateDate
{
  *&self->_flags &= ~1u;
  v11 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v3 = [(_UIDatePickerDataModel *)self->_data dateRange];
  v4 = [v3 dateInRangeForDate:v11];

  v5 = [_UIDatePickerCalendarDay alloc];
  v6 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v7 = [(_UIDatePickerCalendarDay *)v5 initWithDate:v4 calendar:v6];

  v8 = [_UIDatePickerCalendarTime alloc];
  v9 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v10 = [(_UIDatePickerCalendarDateComponent *)v8 initWithDate:v4 calendar:v9];

  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v7 time:v10 animated:(*&self->_flags >> 1) & 1 notify:v11 != v4];
}

- (void)_reloadDateRange
{
  v3 = [(_UIDatePickerDataModel *)self->_data dateRange];
  v4 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v5 = [v3 containsDate:v4];

  if ((v5 & 1) == 0)
  {

    [(_UIDatePickerCalendarView *)self _setNeedsUpdateDateAnimated:0];
  }
}

- (void)_reloadTimeView
{
  timeView = self->_timeView;
  v6 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v4 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [(_UIDatePickerCalendarTimeView *)timeView reloadWithCalendar:v6 locale:v4 selectedDate:v5 followsSystemHourCycle:[(_UIDatePickerDataModel *)self->_data followsSystemHourCycle]];
}

- (void)_reloadCalendarView
{
  v22 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v3 = [(_UIDatePickerDataModel *)self->_data dateRange];
  v4 = [v3 startDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] distantPast];
  }

  v7 = v6;

  v8 = [(_UIDatePickerDataModel *)self->_data dateRange];
  v9 = [v8 endDate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF00] distantFuture];
  }

  v12 = v11;

  [(UICalendarView *)self->_calendarView setCalendar:v22];
  v13 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(UICalendarView *)self->_calendarView setLocale:v13];

  v14 = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(UICalendarView *)self->_calendarView setTimeZone:v14];

  v15 = [(_UIDatePickerDataModel *)self->_data customFontDesign];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = *off_1E70ECCA8;
  }

  [(UICalendarView *)self->_calendarView setFontDesign:v17];

  v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v12];
  [(UICalendarView *)self->_calendarView setAvailableDateRange:v18];

  v19 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v20 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v21 = [v19 components:1048606 fromDate:v20];
  [(UICalendarSelectionSingleDate *)self->_selection setSelectedDate:v21];
}

- (void)_reload
{
  [(_UIDatePickerCalendarView *)self _reloadDateRange];
  [(_UIDatePickerCalendarView *)self _updateDateIfNeeded];
  [(_UIDatePickerCalendarView *)self _reloadCalendarView];
  [(_UIDatePickerCalendarView *)self _reloadTimeView];
  [(_UIDatePickerCalendarView *)self _updateLayoutMargins];
  [(_UIDatePickerCalendarView *)self _updateModuleVisibility];
  [(_UIDatePickerCalendarView *)self _updateCustomFonts];
  [(_UIDatePickerCalendarView *)self _updateEnabledStyling];
  v3 = [_UIDatePickerCalendarDay alloc];
  v4 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v10 = [(_UIDatePickerCalendarDay *)v3 initWithDate:v4 calendar:v5];

  v6 = [_UIDatePickerCalendarTime alloc];
  v7 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v8 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v9 = [(_UIDatePickerCalendarDateComponent *)v6 initWithDate:v7 calendar:v8];

  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v10 time:v9 animated:0 notify:0];
}

- (void)_updateEnabledStyling
{
  flags = self->_flags;
  if ((*&flags & 4) != 0)
  {
    [(UIView *)self setTintColor:0];
    v4 = 1.0;
  }

  else
  {
    v5 = +[UIColor secondaryLabelColor];
    [(UIView *)self setTintColor:v5];

    v4 = 0.3;
  }

  [(UIView *)self setAlpha:v4];

  [(UIView *)self setUserInteractionEnabled:(*&flags >> 2) & 1];
}

- (void)_updateModuleVisibility
{
  v4 = [(_UIDatePickerCalendarView *)self _shouldDisplayCalendarView];
  v5 = [(_UIDatePickerCalendarView *)self _shouldDisplayTimeView];
  v6 = v5;
  if (!v4 && !v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarView.m" lineNumber:390 description:@"Unsupported configuration"];
  }

  v7 = [(UIView *)self->_calendarView superview];

  if (v4)
  {
    if (!v7)
    {
      [(UIView *)self addSubview:self->_calendarView];
    }
  }

  else if (v7)
  {
    [(UIView *)self->_calendarView removeFromSuperview];
  }

  v8 = [(UIView *)self->_timeView superview];

  if (v6)
  {
    if (!v8)
    {
      [(UIView *)self addSubview:self->_timeView];
    }
  }

  else
  {
    if (v8)
    {
      [(UIView *)self->_timeView removeFromSuperview];
    }

    v4 = 0;
  }

  timeView = self->_timeView;

  [(_UIDatePickerCalendarTimeView *)timeView setShouldShowTimeLabel:v4];
}

- (void)_updateCustomFonts
{
  v3 = [(_UIDatePickerDataModel *)self->_data customFontDesign];
  v5 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *off_1E70ECCA8;
  }

  [(UICalendarView *)self->_calendarView setFontDesign:v4];
  [(_UIDatePickerCalendarTimeView *)self->_timeView setCustomFontDesign:v5];
}

- (BOOL)_shouldUpdateDataForComponents:(id)a3 date:(id)a4
{
  data = self->_data;
  v5 = a4;
  v6 = [(_UIDatePickerDataModel *)data effectiveDate];
  v7 = [v6 isEqualToDate:v5];

  return v7 ^ 1;
}

- (void)_updateDataForComponents:(id)a3
{
  data = self->_data;
  v5 = a3;
  [(_UIDatePickerDataModel *)data setDate:0];
  [(_UIDatePickerDataModel *)self->_data setLastSelectedDateComponents:v5];
}

- (BOOL)_shouldUpdateTimeViewForSelectedTime:(id)a3
{
  timeView = self->_timeView;
  v4 = a3;
  v5 = [(_UIDatePickerCalendarTimeView *)timeView selectedTime];
  v6 = [v5 isEqual:v4];

  return v6 ^ 1;
}

- (void)_updateSelectedDay:(id)a3 time:(id)a4 animated:(BOOL)a5 notify:(BOOL)a6
{
  v31 = a5;
  v32 = a6;
  v8 = a4;
  v33 = [a3 copyWithAssignedMonth:0];
  v9 = [v33 components];
  v10 = [v8 components];
  v11 = v9;
  v12 = objc_opt_new();
  for (i = 1; i != 64; ++i)
  {
    v14 = [v11 valueForComponent:1 << i];
    v15 = [v10 valueForComponent:1 << i];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDateComponents * _Nonnull _UIDatePickerCombinedDateComponents(NSDateComponents * _Nonnull __strong, NSDateComponents * _Nonnull __strong)"}];
      [v30 handleFailureInFunction:v29 file:@"_UIDatePickerCalendarDateComponent.h" lineNumber:68 description:{@"Error combining %@ and %@. Both components contain values for NSCalendarUnit %lu", v11, v10, 1 << i}];

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
  v19 = [_UIDatePickerCalendarDay alloc];
  v20 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v21 = [(_UIDatePickerCalendarDay *)v19 initWithDate:v18 calendar:v20];

  v22 = [_UIDatePickerCalendarTime alloc];
  v23 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v24 = [(_UIDatePickerCalendarDateComponent *)v22 initWithDate:v18 calendar:v23];

  v25 = [(_UIDatePickerCalendarView *)self _shouldUpdateDataForComponents:v12 date:v18];
  if (v25)
  {
    [(_UIDatePickerCalendarView *)self _updateDataForComponents:v12];
  }

  selection = self->_selection;
  v27 = [v33 components];
  [(UICalendarSelectionSingleDate *)selection setSelectedDate:v27 animated:v31];

  if ([(_UIDatePickerCalendarView *)self _shouldUpdateTimeViewForSelectedTime:v24])
  {
    [(_UIDatePickerCalendarView *)self _updateTimeViewForSelectedDate:v18 animated:v31];
  }

  if (v25 && v32)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePicker);
    [WeakRetained _emitValueChanged];
  }
}

- (void)_updateSelectedDay:(id)a3 animated:(BOOL)a4 notify:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  timeView = self->_timeView;
  v9 = a3;
  v10 = [(_UIDatePickerCalendarTimeView *)timeView selectedTime];
  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v9 time:v10 animated:v6 notify:v5];
}

- (void)_updateSelectedTime:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [_UIDatePickerCalendarDay alloc];
  v8 = [(UICalendarSelectionSingleDate *)self->_selection selectedDate];
  v9 = [v8 date];
  v10 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v11 = [(_UIDatePickerCalendarDay *)v7 initWithDate:v9 calendar:v10];

  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v11 time:v6 animated:0 notify:v4];
}

- (void)dateSelection:(id)a3 didSelectDate:(id)a4
{
  v12 = a4;
  if (!v12)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarView.m" lineNumber:493 description:{@"Invalid parameter not satisfying: %@", @"selectedDate"}];
  }

  v6 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v7 = [v6 dateFromComponents:v12];

  v8 = [_UIDatePickerCalendarDay alloc];
  v9 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v10 = [(_UIDatePickerCalendarDay *)v8 initWithDate:v7 calendar:v9];

  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v10 animated:0 notify:1];
}

- (void)timeViewDidBeginEditing:(id)a3
{
  v3 = [(_UIDatePickerCalendarView *)self datePicker];
  [v3 _emitBeginEditing];
}

- (void)timeViewDidEndEditing:(id)a3
{
  [(_UIDatePickerCalendarView *)self _reloadTimeView];
  v4 = [(_UIDatePickerCalendarView *)self datePicker];
  [v4 _emitEndEditing];
}

- (id)createDatePickerForTimeView:(id)a3
{
  v4 = [(_UIDatePickerDataModel *)self->_data createDatePickerRepresentingDataModelForMode:0 style:1];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  v6 = [WeakRetained tintColor];
  [v4 setTintColor:v6];

  return v4;
}

- (void)setData:(id)a3
{
  objc_storeStrong(&self->_data, a3);
  [(_UIDatePickerCalendarView *)self didChangeMinuteInterval];
  [(_UIDatePickerCalendarView *)self didChangeRoundsToMinuteInterval];

  [(_UIDatePickerCalendarView *)self _reload];
}

- (void)didChangeMode
{
  [(_UIDatePickerCalendarView *)self _updateLayoutMargins];
  [(_UIDatePickerCalendarView *)self _updateModuleVisibility];
  [(_UIDatePickerCalendarView *)self _updateContentSizeLimitations];
  v3 = [(_UIDatePickerCalendarView *)self datePicker];
  [v3 invalidateIntrinsicContentSize];
}

- (void)displaySelectedDateAnimated:(BOOL)a3
{
  v3 = a3;
  calendarView = self->_calendarView;
  v5 = [(UICalendarSelectionSingleDate *)self->_selection selectedDate];
  [(UICalendarView *)calendarView setVisibleDateComponents:v5 animated:v3];
}

- (void)didChangeMinuteInterval
{
  v3 = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  timeView = self->_timeView;

  [(_UIDatePickerCalendarTimeView *)timeView setMinuteInterval:v3];
}

- (void)didChangeRoundsToMinuteInterval
{
  v3 = [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval];
  timeView = self->_timeView;

  [(_UIDatePickerCalendarTimeView *)timeView setRoundsToMinuteInterval:v3];
}

- (UIEdgeInsets)appliedInsetsToEdgeOfContent
{
  if ([(_UIDatePickerDataModel *)self->_data datePickerMode]== 1)
  {
    [(_UIDatePickerStyle *)self->_visualStyle inlineDatePickerMinimumMargin];
    v4 = v3;
  }

  else
  {
    [(UIView *)self layoutMargins];
    v4 = v5;
  }

  [(UIView *)self layoutMargins];
  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained layoutMargins];
  v10 = v9;
  v11 = objc_loadWeakRetained(&self->_datePicker);
  [v11 layoutMargins];
  v13 = v12;

  v14 = v7;
  v15 = v10;
  v16 = v4;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
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

- (void)_setEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
  [(_UIDatePickerCalendarView *)self _updateEnabledStyling];
}

- (id)primaryFirstResponder
{
  timeView = self->_timeView;
  if (timeView)
  {
    v4 = [timeView superview];
    if (v4 && ([(UIView *)self->_timeView alpha], v5 == 1.0))
    {
      v6 = [(UIView *)self->_timeView isHidden];

      if (!v6)
      {
        timeView = [(_UIDatePickerCalendarTimeView *)self->_timeView primaryFirstResponder];
        goto LABEL_8;
      }
    }

    else
    {
    }

    timeView = 0;
  }

LABEL_8:

  return timeView;
}

- (UIDatePicker)datePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);

  return WeakRetained;
}

@end