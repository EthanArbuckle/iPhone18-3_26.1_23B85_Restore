@interface _UIDatePickerCalendarView
- (BOOL)_shouldUpdateDataForComponents:(id)components date:(id)date;
- (BOOL)_shouldUpdateTimeViewForSelectedTime:(id)time;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)_sizeThatFits:(CGSize)fits;
- (CGSize)defaultSize;
- (UIDatePicker)datePicker;
- (UIEdgeInsets)appliedInsetsToEdgeOfContent;
- (_UIDatePickerCalendarView)initWithFrame:(CGRect)frame;
- (id)createDatePickerForTimeView:(id)view;
- (id)primaryFirstResponder;
- (void)_reload;
- (void)_reloadCalendarView;
- (void)_reloadDateRange;
- (void)_reloadTimeView;
- (void)_setEnabled:(BOOL)enabled;
- (void)_setNeedsUpdateDateAnimated:(BOOL)animated;
- (void)_updateContentSizeLimitations;
- (void)_updateCustomFonts;
- (void)_updateDataForComponents:(id)components;
- (void)_updateDate;
- (void)_updateDateIfNeeded;
- (void)_updateEnabledStyling;
- (void)_updateLayoutMargins;
- (void)_updateModuleVisibility;
- (void)_updateSelectedDay:(id)day animated:(BOOL)animated notify:(BOOL)notify;
- (void)_updateSelectedDay:(id)day time:(id)time animated:(BOOL)animated notify:(BOOL)notify;
- (void)_updateSelectedTime:(id)time notify:(BOOL)notify;
- (void)_workaround66574039_datePickerDidUpdateLayoutMargins;
- (void)dateSelection:(id)selection didSelectDate:(id)date;
- (void)didChangeMinuteInterval;
- (void)didChangeMode;
- (void)didChangeRoundsToMinuteInterval;
- (void)displaySelectedDateAnimated:(BOOL)animated;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setData:(id)data;
- (void)setFrame:(CGRect)frame;
- (void)timeViewDidBeginEditing:(id)editing;
- (void)timeViewDidEndEditing:(id)editing;
@end

@implementation _UIDatePickerCalendarView

- (_UIDatePickerCalendarView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = _UIDatePickerCalendarView;
  v3 = [(UIView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(UIView *)v3 traitCollection];
    v6 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);
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
  datePickerMode = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  v10 = 0.0;
  if (datePickerMode != 1)
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
  datePicker = [(_UIDatePickerCalendarView *)self datePicker];
  [datePicker layoutMargins];
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
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
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
  datePickerMode = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  if (datePickerMode <= 1)
  {
    if (datePickerMode)
    {
      v46 = v3;
      if (datePickerMode != 1)
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
    if (datePickerMode == 2)
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
      if (datePickerMode != 4272)
      {
        v46 = v4;
        if (datePickerMode != 3)
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _shouldDisplayCalendarView = [(_UIDatePickerCalendarView *)self _shouldDisplayCalendarView];
  _shouldDisplayTimeView = [(_UIDatePickerCalendarView *)self _shouldDisplayTimeView];
  visualStyle = self->_visualStyle;
  if (_shouldDisplayCalendarView)
  {
    [(_UIDatePickerStyle *)visualStyle inlineDateViewMinimumWidth];
  }

  else
  {
    [(_UIDatePickerStyle *)visualStyle inlineTimeViewMinimumWidth];
  }

  v10 = v9;
  v11 = self->_visualStyle;
  datePicker = [(_UIDatePickerCalendarView *)self datePicker];
  [datePicker layoutMargins];
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

  if (!_shouldDisplayCalendarView)
  {
    if (_shouldDisplayTimeView)
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
  if (!_shouldDisplayTimeView)
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarView;
  [(UIView *)&v7 setFrame:frame.origin.x, frame.origin.y];
  _alertForMinimumWidthErrorIfNecessary(self, width);
  if (self->_lastSize.width != width || self->_lastSize.height != height)
  {
    self->_lastSize.width = width;
    self->_lastSize.height = height;
    [(_UIDatePickerCalendarView *)self _updateContentSizeLimitations];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarView;
  [(UIView *)&v7 setBounds:bounds.origin.x, bounds.origin.y];
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

- (void)_setNeedsUpdateDateAnimated:(BOOL)animated
{
  if (animated)
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
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  dateRange = [(_UIDatePickerDataModel *)self->_data dateRange];
  v4 = [dateRange dateInRangeForDate:effectiveDate];

  v5 = [_UIDatePickerCalendarDay alloc];
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v7 = [(_UIDatePickerCalendarDay *)v5 initWithDate:v4 calendar:effectiveCalendar];

  v8 = [_UIDatePickerCalendarTime alloc];
  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v10 = [(_UIDatePickerCalendarDateComponent *)v8 initWithDate:v4 calendar:effectiveCalendar2];

  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v7 time:v10 animated:(*&self->_flags >> 1) & 1 notify:effectiveDate != v4];
}

- (void)_reloadDateRange
{
  dateRange = [(_UIDatePickerDataModel *)self->_data dateRange];
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v5 = [dateRange containsDate:effectiveDate];

  if ((v5 & 1) == 0)
  {

    [(_UIDatePickerCalendarView *)self _setNeedsUpdateDateAnimated:0];
  }
}

- (void)_reloadTimeView
{
  timeView = self->_timeView;
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  [(_UIDatePickerCalendarTimeView *)timeView reloadWithCalendar:effectiveCalendar locale:effectiveLocale selectedDate:effectiveDate followsSystemHourCycle:[(_UIDatePickerDataModel *)self->_data followsSystemHourCycle]];
}

- (void)_reloadCalendarView
{
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  dateRange = [(_UIDatePickerDataModel *)self->_data dateRange];
  startDate = [dateRange startDate];
  v5 = startDate;
  if (startDate)
  {
    distantPast = startDate;
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  v7 = distantPast;

  dateRange2 = [(_UIDatePickerDataModel *)self->_data dateRange];
  endDate = [dateRange2 endDate];
  v10 = endDate;
  if (endDate)
  {
    distantFuture = endDate;
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  }

  v12 = distantFuture;

  [(UICalendarView *)self->_calendarView setCalendar:effectiveCalendar];
  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  [(UICalendarView *)self->_calendarView setLocale:effectiveLocale];

  timeZone = [(_UIDatePickerDataModel *)self->_data timeZone];
  [(UICalendarView *)self->_calendarView setTimeZone:timeZone];

  customFontDesign = [(_UIDatePickerDataModel *)self->_data customFontDesign];
  v16 = customFontDesign;
  if (customFontDesign)
  {
    v17 = customFontDesign;
  }

  else
  {
    v17 = *off_1E70ECCA8;
  }

  [(UICalendarView *)self->_calendarView setFontDesign:v17];

  v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v12];
  [(UICalendarView *)self->_calendarView setAvailableDateRange:v18];

  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v21 = [effectiveCalendar2 components:1048606 fromDate:effectiveDate];
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
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v10 = [(_UIDatePickerCalendarDay *)v3 initWithDate:effectiveDate calendar:effectiveCalendar];

  v6 = [_UIDatePickerCalendarTime alloc];
  effectiveDate2 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v9 = [(_UIDatePickerCalendarDateComponent *)v6 initWithDate:effectiveDate2 calendar:effectiveCalendar2];

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
  _shouldDisplayCalendarView = [(_UIDatePickerCalendarView *)self _shouldDisplayCalendarView];
  _shouldDisplayTimeView = [(_UIDatePickerCalendarView *)self _shouldDisplayTimeView];
  v6 = _shouldDisplayTimeView;
  if (!_shouldDisplayCalendarView && !_shouldDisplayTimeView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarView.m" lineNumber:390 description:@"Unsupported configuration"];
  }

  superview = [(UIView *)self->_calendarView superview];

  if (_shouldDisplayCalendarView)
  {
    if (!superview)
    {
      [(UIView *)self addSubview:self->_calendarView];
    }
  }

  else if (superview)
  {
    [(UIView *)self->_calendarView removeFromSuperview];
  }

  superview2 = [(UIView *)self->_timeView superview];

  if (v6)
  {
    if (!superview2)
    {
      [(UIView *)self addSubview:self->_timeView];
    }
  }

  else
  {
    if (superview2)
    {
      [(UIView *)self->_timeView removeFromSuperview];
    }

    _shouldDisplayCalendarView = 0;
  }

  timeView = self->_timeView;

  [(_UIDatePickerCalendarTimeView *)timeView setShouldShowTimeLabel:_shouldDisplayCalendarView];
}

- (void)_updateCustomFonts
{
  customFontDesign = [(_UIDatePickerDataModel *)self->_data customFontDesign];
  v5 = customFontDesign;
  if (customFontDesign)
  {
    v4 = customFontDesign;
  }

  else
  {
    v4 = *off_1E70ECCA8;
  }

  [(UICalendarView *)self->_calendarView setFontDesign:v4];
  [(_UIDatePickerCalendarTimeView *)self->_timeView setCustomFontDesign:v5];
}

- (BOOL)_shouldUpdateDataForComponents:(id)components date:(id)date
{
  data = self->_data;
  dateCopy = date;
  effectiveDate = [(_UIDatePickerDataModel *)data effectiveDate];
  v7 = [effectiveDate isEqualToDate:dateCopy];

  return v7 ^ 1;
}

- (void)_updateDataForComponents:(id)components
{
  data = self->_data;
  componentsCopy = components;
  [(_UIDatePickerDataModel *)data setDate:0];
  [(_UIDatePickerDataModel *)self->_data setLastSelectedDateComponents:componentsCopy];
}

- (BOOL)_shouldUpdateTimeViewForSelectedTime:(id)time
{
  timeView = self->_timeView;
  timeCopy = time;
  selectedTime = [(_UIDatePickerCalendarTimeView *)timeView selectedTime];
  v6 = [selectedTime isEqual:timeCopy];

  return v6 ^ 1;
}

- (void)_updateSelectedDay:(id)day time:(id)time animated:(BOOL)animated notify:(BOOL)notify
{
  animatedCopy = animated;
  notifyCopy = notify;
  timeCopy = time;
  v33 = [day copyWithAssignedMonth:0];
  components = [v33 components];
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
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDateComponents * _Nonnull _UIDatePickerCombinedDateComponents(NSDateComponents * _Nonnull __strong, NSDateComponents * _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v29 file:@"_UIDatePickerCalendarDateComponent.h" lineNumber:68 description:{@"Error combining %@ and %@. Both components contain values for NSCalendarUnit %lu", v11, components2, 1 << i}];

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

  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  [v12 setCalendar:effectiveCalendar];

  date = [v12 date];
  v19 = [_UIDatePickerCalendarDay alloc];
  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v21 = [(_UIDatePickerCalendarDay *)v19 initWithDate:date calendar:effectiveCalendar2];

  v22 = [_UIDatePickerCalendarTime alloc];
  effectiveCalendar3 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v24 = [(_UIDatePickerCalendarDateComponent *)v22 initWithDate:date calendar:effectiveCalendar3];

  v25 = [(_UIDatePickerCalendarView *)self _shouldUpdateDataForComponents:v12 date:date];
  if (v25)
  {
    [(_UIDatePickerCalendarView *)self _updateDataForComponents:v12];
  }

  selection = self->_selection;
  components3 = [v33 components];
  [(UICalendarSelectionSingleDate *)selection setSelectedDate:components3 animated:animatedCopy];

  if ([(_UIDatePickerCalendarView *)self _shouldUpdateTimeViewForSelectedTime:v24])
  {
    [(_UIDatePickerCalendarView *)self _updateTimeViewForSelectedDate:date animated:animatedCopy];
  }

  if (v25 && notifyCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePicker);
    [WeakRetained _emitValueChanged];
  }
}

- (void)_updateSelectedDay:(id)day animated:(BOOL)animated notify:(BOOL)notify
{
  notifyCopy = notify;
  animatedCopy = animated;
  timeView = self->_timeView;
  dayCopy = day;
  selectedTime = [(_UIDatePickerCalendarTimeView *)timeView selectedTime];
  [(_UIDatePickerCalendarView *)self _updateSelectedDay:dayCopy time:selectedTime animated:animatedCopy notify:notifyCopy];
}

- (void)_updateSelectedTime:(id)time notify:(BOOL)notify
{
  notifyCopy = notify;
  timeCopy = time;
  v7 = [_UIDatePickerCalendarDay alloc];
  selectedDate = [(UICalendarSelectionSingleDate *)self->_selection selectedDate];
  date = [selectedDate date];
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v11 = [(_UIDatePickerCalendarDay *)v7 initWithDate:date calendar:effectiveCalendar];

  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v11 time:timeCopy animated:0 notify:notifyCopy];
}

- (void)dateSelection:(id)selection didSelectDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarView.m" lineNumber:493 description:{@"Invalid parameter not satisfying: %@", @"selectedDate"}];
  }

  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v7 = [effectiveCalendar dateFromComponents:dateCopy];

  v8 = [_UIDatePickerCalendarDay alloc];
  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v10 = [(_UIDatePickerCalendarDay *)v8 initWithDate:v7 calendar:effectiveCalendar2];

  [(_UIDatePickerCalendarView *)self _updateSelectedDay:v10 animated:0 notify:1];
}

- (void)timeViewDidBeginEditing:(id)editing
{
  datePicker = [(_UIDatePickerCalendarView *)self datePicker];
  [datePicker _emitBeginEditing];
}

- (void)timeViewDidEndEditing:(id)editing
{
  [(_UIDatePickerCalendarView *)self _reloadTimeView];
  datePicker = [(_UIDatePickerCalendarView *)self datePicker];
  [datePicker _emitEndEditing];
}

- (id)createDatePickerForTimeView:(id)view
{
  v4 = [(_UIDatePickerDataModel *)self->_data createDatePickerRepresentingDataModelForMode:0 style:1];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  tintColor = [WeakRetained tintColor];
  [v4 setTintColor:tintColor];

  return v4;
}

- (void)setData:(id)data
{
  objc_storeStrong(&self->_data, data);
  [(_UIDatePickerCalendarView *)self didChangeMinuteInterval];
  [(_UIDatePickerCalendarView *)self didChangeRoundsToMinuteInterval];

  [(_UIDatePickerCalendarView *)self _reload];
}

- (void)didChangeMode
{
  [(_UIDatePickerCalendarView *)self _updateLayoutMargins];
  [(_UIDatePickerCalendarView *)self _updateModuleVisibility];
  [(_UIDatePickerCalendarView *)self _updateContentSizeLimitations];
  datePicker = [(_UIDatePickerCalendarView *)self datePicker];
  [datePicker invalidateIntrinsicContentSize];
}

- (void)displaySelectedDateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  calendarView = self->_calendarView;
  selectedDate = [(UICalendarSelectionSingleDate *)self->_selection selectedDate];
  [(UICalendarView *)calendarView setVisibleDateComponents:selectedDate animated:animatedCopy];
}

- (void)didChangeMinuteInterval
{
  minuteInterval = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  timeView = self->_timeView;

  [(_UIDatePickerCalendarTimeView *)timeView setMinuteInterval:minuteInterval];
}

- (void)didChangeRoundsToMinuteInterval
{
  roundsToMinuteInterval = [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval];
  timeView = self->_timeView;

  [(_UIDatePickerCalendarTimeView *)timeView setRoundsToMinuteInterval:roundsToMinuteInterval];
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

- (void)_setEnabled:(BOOL)enabled
{
  if (enabled)
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
    superview = [timeView superview];
    if (superview && ([(UIView *)self->_timeView alpha], v5 == 1.0))
    {
      isHidden = [(UIView *)self->_timeView isHidden];

      if (!isHidden)
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