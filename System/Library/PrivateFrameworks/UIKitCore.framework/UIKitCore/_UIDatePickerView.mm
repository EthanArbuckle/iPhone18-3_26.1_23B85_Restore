@interface _UIDatePickerView
- (BOOL)_updateDateOrTime;
- (BOOL)_updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:(int64_t)component;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize;
- (BOOL)timeLabelShouldSuppressSoftwareKeyboard:(id)keyboard;
- (BOOL)wheelsTimeLabelShouldReceiveInteraction:(id)interaction;
- (CGRect)_currentTimeInputLabelFrame;
- (UIDatePicker)datePicker;
- (UIEdgeInsets)appliedInsetsToEdgeOfContent;
- (UIFont)_hrMinFont;
- (_UIDatePickerView)initWithFrame:(CGRect)frame;
- (double)contentWidth;
- (double)pickerView:(id)view widthForComponent:(int64_t)component;
- (double)timeInterval;
- (id)_componentsSelectedAfterEnforcingValidityOfComponents:(id)components withLastManipulatedComponent:(int64_t)component;
- (id)_currentTimeFormat;
- (id)_hoursStringForHour:(int64_t)hour;
- (id)_labelForCalendarUnit:(unint64_t)unit createIfNecessary:(BOOL)necessary;
- (id)_labelTextForCalendarUnit:(unint64_t)unit;
- (id)_makeNewCalendarUnitLabel;
- (id)_minutesStringForHour:(int64_t)hour minutes:(int64_t)minutes;
- (id)_selectedTextForCalendarUnit:(unint64_t)unit;
- (id)_viewForSelectedRowInComponent:(int64_t)component;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (int64_t)_amPmValue;
- (int64_t)_selectionBarRowInComponent:(int64_t)component;
- (int64_t)keyboardTypeForTimeLabel:(id)label;
- (unint64_t)_permittedArrowDirectionForKeyboardPopover;
- (void)_disableCustomKeyboardIfNecessary;
- (void)_dismissManualKeyboard;
- (void)_enableCustomKeyboardIfNecessary;
- (void)_fadeLabelForCalendarUnit:(unint64_t)unit toText:(id)text animated:(BOOL)animated;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_hardwareKeyboardAvailabilityChanged:(id)changed;
- (void)_hidePickerViewSelectionBarForTimeInputLabel:(BOOL)label;
- (void)_installTimeInputLabelIfNeeded;
- (void)_loadDateAnimated:(BOOL)animated;
- (void)_positionLabel:(id)label forCalendarUnit:(unint64_t)unit relativeTo:(id)to order:(int64_t)order;
- (void)_removeUnitLabels;
- (void)_selectRow:(int64_t)row inComponent:(int64_t)component animated:(BOOL)animated notify:(BOOL)notify;
- (void)_setAllowsZeroTimeInterval:(BOOL)interval;
- (void)_setLabel:(id)label forCalendarUnit:(unint64_t)unit animated:(BOOL)animated;
- (void)_setMode:(id)mode;
- (void)_setTextColor:(id)color;
- (void)_uninstallTimeInputLabelIfNeeded;
- (void)_updateDateForNewDateRange;
- (void)_updateEnabledCellsIncludingWMDCells:(BOOL)cells;
- (void)_updateLabelColors;
- (void)_updateLabels:(BOOL)labels;
- (void)_updateLocaleTimeZoneOrCalendar;
- (void)_updateTextColorForCalendarUnitLabel:(id)label;
- (void)_updateTimeInputLabelConfiguration;
- (void)_updateTimeInputLabelPosition;
- (void)_updateWheelsForUpdatedTextInputWithForcedUpdate:(BOOL)update;
- (void)_updateWheelsLabelForCurrentDateComponents;
- (void)controlEventsGestureRecognizer:(id)recognizer recognizedControlEvent:(unint64_t)event withEvent:(id)withEvent;
- (void)dealloc;
- (void)didChangeDateFrom:(id)from animated:(BOOL)animated;
- (void)didChangeMinuteInterval;
- (void)didChangeMode;
- (void)didChangeRoundsToMinuteInterval;
- (void)didChangeToday;
- (void)layoutSubviews;
- (void)pickerTableView:(id)view didChangeSelectionBarRowFrom:(int64_t)from to:(int64_t)to;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setData:(id)data;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightsToday:(BOOL)today;
- (void)setPassthroughInteractionEnabled:(BOOL)enabled;
- (void)setTimeInterval:(double)interval;
- (void)timeLabelDidBecomeFirstResponder:(id)responder;
- (void)timeLabelDidBeginEditing:(id)editing;
- (void)timeLabelDidEndEditing:(id)editing;
- (void)timeLabelDidResignFirstResponder:(id)responder;
- (void)timeLabelWillBecomeFirstResponder:(id)responder;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIDatePickerView

- (_UIDatePickerView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = _UIDatePickerView;
  v3 = [(UIPickerView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->super._pickerViewFlags = (*&v3->super._pickerViewFlags & 0xFFFFF5FF | 0x200);
    *&v3->_datePickerFlags |= 4u;
    WeakRetained = objc_loadWeakRetained(&v3->_datePicker);
    if ([WeakRetained _selectionBarIgnoresInset])
    {
      v6 = 0x20000;
    }

    else
    {
      v6 = 0;
    }

    v4->super._pickerViewFlags = (*&v4->super._pickerViewFlags & 0xFFFDFFFF | v6);

    v7 = [_UIDatePickerMode _datePickerModeWithMode:2 datePickerView:v4];
    mode = v4->_mode;
    v4->_mode = v7;

    v4->_expectedAMPM = -1;
    v15.receiver = v4;
    v15.super_class = _UIDatePickerView;
    [(UIPickerView *)&v15 setDelegate:v4];
    v14.receiver = v4;
    v14.super_class = _UIDatePickerView;
    [(UIPickerView *)&v14 setDataSource:v4];
    v9 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v9 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
    }

    [(_UIDatePickerView *)v4 _updateTimeInputLabelConfiguration];
    v12 = v4;
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIDatePickerView;
  [(UIPickerView *)&v4 dealloc];
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerView;
  [(UIView *)&v6 willMoveToWindow:?];
  if (!window)
  {
    [(_UIDatePickerView *)self _disableCustomKeyboardIfNecessary];
    timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
    [timeInputLabel resignFirstResponder];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerView;
  [(UIView *)&v6 willMoveToSuperview:?];
  if (!superview)
  {
    [(_UIDatePickerView *)self _disableCustomKeyboardIfNecessary];
    timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
    [timeInputLabel resignFirstResponder];
  }
}

- (void)_enableCustomKeyboardIfNecessary
{
  datePickerFlags = self->_datePickerFlags;
  if ((datePickerFlags & 0x20) == 0)
  {
    *&self->_datePickerFlags = datePickerFlags | 0x20;
    _window = [(UIView *)self _window];
    windowScene = [_window windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    [keyboardSceneDelegate setAutomaticAppearanceEnabled:0];
  }
}

- (void)_disableCustomKeyboardIfNecessary
{
  datePickerFlags = self->_datePickerFlags;
  if ((datePickerFlags & 0x20) != 0)
  {
    *&self->_datePickerFlags = datePickerFlags & 0xFFDF;
    _window = [(UIView *)self _window];
    windowScene = [_window windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    [keyboardSceneDelegate setAutomaticAppearanceEnabled:1];
  }
}

- (void)didChangeToday
{
  [(_UIDatePickerMode *)self->_mode setTodayDateComponents:0];
  [(UIPickerView *)self reloadAllPickerPieces];

  [(_UIDatePickerView *)self _updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:0x7FFFFFFFFFFFFFFFLL];
}

- (void)setData:(id)data
{
  dataCopy = data;
  v5 = self->_data;
  objc_storeStrong(&self->_data, data);
  datePickerMode = [(_UIDatePickerMode *)self->_mode datePickerMode];
  if (datePickerMode != [dataCopy datePickerMode])
  {
    [(_UIDatePickerView *)self didChangeMode];
  }

  effectiveLocale = [(_UIDatePickerDataModel *)v5 effectiveLocale];
  effectiveLocale2 = [dataCopy effectiveLocale];
  v9 = effectiveLocale;
  v10 = effectiveLocale2;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = v10;
    v14 = v9;
    if (v12)
    {
      goto LABEL_27;
    }

    v15 = [v9 isEqual:v10];

    if (!v15)
    {
      goto LABEL_28;
    }
  }

  timeZone = [(_UIDatePickerDataModel *)v5 timeZone];
  timeZone2 = [dataCopy timeZone];
  v14 = timeZone;
  v18 = timeZone2;
  v13 = v18;
  if (v14 == v18)
  {
  }

  else
  {
    if (v14)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = v18;
    v21 = v14;
    if (v19)
    {
      goto LABEL_26;
    }

    v22 = [v14 isEqual:v18];

    if (!v22)
    {
      goto LABEL_27;
    }
  }

  effectiveCalendar = [(_UIDatePickerDataModel *)v5 effectiveCalendar];
  effectiveCalendar2 = [dataCopy effectiveCalendar];
  v21 = effectiveCalendar;
  v25 = effectiveCalendar2;
  v20 = v25;
  if (v21 == v25)
  {

    goto LABEL_30;
  }

  if (!v21 || !v25)
  {

LABEL_26:
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v49 = [v21 isEqual:v25];

  if ((v49 & 1) == 0)
  {
LABEL_29:
    [(_UIDatePickerView *)self _updateLocaleTimeZoneOrCalendar];
  }

LABEL_30:
  date = [(_UIDatePickerDataModel *)v5 date];
  if (!date)
  {
    goto LABEL_40;
  }

  date4 = date;
  date2 = [(_UIDatePickerDataModel *)v5 date];
  date3 = [dataCopy date];
  v30 = date2;
  v31 = date3;
  v32 = v31;
  if (v30 == v31)
  {

LABEL_39:
    goto LABEL_40;
  }

  if (!v30 || !v31)
  {

    goto LABEL_38;
  }

  v33 = [v30 isEqual:v31];

  if ((v33 & 1) == 0)
  {
LABEL_38:
    date4 = [(_UIDatePickerDataModel *)v5 date];
    [(_UIDatePickerView *)self didChangeDateFrom:date4 animated:0];
    goto LABEL_39;
  }

LABEL_40:
  minimumDate = [(_UIDatePickerDataModel *)v5 minimumDate];
  minimumDate2 = [dataCopy minimumDate];
  v36 = minimumDate;
  v37 = minimumDate2;
  v38 = v37;
  if (v36 == v37)
  {
  }

  else
  {
    v39 = v37;
    v40 = v36;
    if (!v36)
    {
      goto LABEL_53;
    }

    v39 = v37;
    v40 = v36;
    if (!v37)
    {
      goto LABEL_53;
    }

    v41 = [v36 isEqual:v37];

    if (!v41)
    {
      goto LABEL_54;
    }
  }

  maximumDate = [(_UIDatePickerDataModel *)v5 maximumDate];
  maximumDate2 = [dataCopy maximumDate];
  v40 = maximumDate;
  v44 = maximumDate2;
  v39 = v44;
  if (v40 == v44)
  {

    goto LABEL_56;
  }

  if (!v40 || !v44)
  {

LABEL_53:
LABEL_54:

    goto LABEL_55;
  }

  v45 = [v40 isEqual:v44];

  if ((v45 & 1) == 0)
  {
LABEL_55:
    [(_UIDatePickerView *)self _updateDateForNewDateRange];
  }

LABEL_56:
  minuteInterval = [(_UIDatePickerMode *)self->_mode minuteInterval];
  if (minuteInterval != [dataCopy minuteInterval])
  {
    [(_UIDatePickerView *)self didChangeMinuteInterval];
  }

  timeInputLabel = self->_timeInputLabel;
  if (timeInputLabel)
  {
    roundsToMinuteInterval = [(_UIDatePickerCalendarTimeLabel *)timeInputLabel roundsToMinuteInterval];
    if (roundsToMinuteInterval != [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval])
    {
      [(_UIDatePickerView *)self didChangeRoundsToMinuteInterval];
    }
  }
}

- (void)_updateLocaleTimeZoneOrCalendar
{
  [(_UIDatePickerMode *)self->_mode noteCalendarChanged];
  [(_UIDatePickerMode *)self->_mode updateDateForNewDateRange];
  [(_UIDatePickerView *)self _removeUnitLabels];
  [(UIPickerView *)self reloadAllPickerPieces];
  [(_UIDatePickerView *)self didChangeDateFrom:0 animated:0];
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];

  if (timeInputLabel)
  {
    _currentTimeFormat = [(_UIDatePickerView *)self _currentTimeFormat];
    timeInputLabel2 = [(_UIDatePickerView *)self timeInputLabel];
    [timeInputLabel2 setTimeFormat:_currentTimeFormat];
  }
}

- (void)didChangeDateFrom:(id)from animated:(BOOL)animated
{
  animatedCopy = animated;
  fromCopy = from;
  self->_expectedAMPM = -1;
  if ((*&self->_datePickerFlags & 2) != 0)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__doneLoadingDateOrTime object:0];
  }

  if (fromCopy && [(_UIDatePickerMode *)self->_mode datePickerMode]== 2)
  {
    effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
    effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    v8 = [effectiveCalendar components:16 fromDate:fromCopy toDate:effectiveDate options:0];

    v9 = [v8 day];
    if (v9 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (animatedCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = *&self->_datePickerFlags & 0xFFFD;
    *&self->_datePickerFlags = v12 | v11;
    if (v10 >= 0x78)
    {
      *&self->_datePickerFlags = v12;
      [(UIPickerView *)self reloadAllComponents];
    }
  }

  else
  {
    if (animatedCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_datePickerFlags = *&self->_datePickerFlags & 0xFFFD | v13;
  }

  [(_UIDatePickerView *)self _loadDateAnimated:animatedCopy];
  if ((*&self->_datePickerFlags & 2) != 0)
  {
    [(UIPickerView *)self scrollAnimationDuration];
    [(_UIDatePickerView *)self performSelector:sel__doneLoadingDateOrTime withObject:0 afterDelay:?];
    [(_UIDatePickerView *)self _updateEnabledCellsIncludingWMDCells:0];
  }

  else
  {
    [(_UIDatePickerView *)self _updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)_updateDateForNewDateRange
{
  [(_UIDatePickerMode *)self->_mode updateDateForNewDateRange];
  [(_UIDatePickerView *)self _updateEnabledCellsIncludingWMDCells:1];

  [(_UIDatePickerView *)self _updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_setMode:(id)mode
{
  modeCopy = mode;
  effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  displayedCalendarUnits = [(_UIDatePickerMode *)self->_mode displayedCalendarUnits];
  if ((displayedCalendarUnits & [modeCopy displayedCalendarUnits] & 0xFFFFFFFFFFFEFFFFLL) == 0)
  {

    effectiveDate = 0;
  }

  v7 = 0.0;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {

    [(_UIDatePickerView *)self timeInterval];
    v7 = v8;
    effectiveDate = 0;
  }

  objc_storeStrong(&self->_mode, mode);
  [(_UIDatePickerMode *)self->_mode setMinuteInterval:[(_UIDatePickerDataModel *)self->_data minuteInterval]];
  minuteInterval = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  v10 = *&self->_datePickerFlags & 0xFFFE;
  if (minuteInterval > 1)
  {
    ++v10;
  }

  *&self->_datePickerFlags = v10;
  [(_UIDatePickerCalendarTimeLabel *)self->_timeInputLabel setMinuteInterval:[(_UIDatePickerDataModel *)self->_data minuteInterval]];
  [(_UIDatePickerMode *)self->_mode updateDateForNewDateRange];
  [(UIPickerView *)self reloadAllPickerPieces];
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    [(_UIDatePickerView *)self setTimeInterval:v7];
  }

  else
  {
    [(_UIDatePickerDataModel *)self->_data setDate:effectiveDate];
    [(_UIDatePickerView *)self didChangeDateFrom:0 animated:0];
  }

  [(_UIDatePickerView *)self _updateTimeInputLabelConfiguration];
}

- (void)didChangeMode
{
  datePickerMode = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  if (datePickerMode != [(_UIDatePickerMode *)self->_mode datePickerMode])
  {
    if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
    {
      [(_UIDatePickerView *)self _removeUnitLabels];
    }

    v4 = [_UIDatePickerMode _datePickerModeWithMode:[(_UIDatePickerDataModel *)self->_data datePickerMode] datePickerView:self];
    -[_UIDatePickerDataModel setDatePickerMode:](self->_data, "setDatePickerMode:", [v4 datePickerMode]);
    [(_UIDatePickerView *)self _setMode:v4];
  }
}

- (void)didChangeMinuteInterval
{
  minuteInterval = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  [(_UIDatePickerMode *)self->_mode setMinuteInterval:minuteInterval];
  v4 = *&self->_datePickerFlags & 0xFFFE;
  if (minuteInterval > 1)
  {
    ++v4;
  }

  *&self->_datePickerFlags = v4;
  [(_UIDatePickerCalendarTimeLabel *)self->_timeInputLabel setMinuteInterval:minuteInterval];
  if ((*&self->super._pickerViewFlags & 1) == 0)
  {
    [(UIPickerView *)self reloadAllComponents];
  }

  [(_UIDatePickerView *)self _loadDateAnimated:0];

  [(_UIDatePickerView *)self _updateWheelsLabelForCurrentDateComponents];
}

- (void)didChangeRoundsToMinuteInterval
{
  [(_UIDatePickerCalendarTimeLabel *)self->_timeInputLabel setRoundsToMinuteInterval:[(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval]];
  [(_UIDatePickerView *)self _loadDateAnimated:0];

  [(_UIDatePickerView *)self _updateWheelsLabelForCurrentDateComponents];
}

- (void)pickerTableView:(id)view didChangeSelectionBarRowFrom:(int64_t)from to:(int64_t)to
{
  viewCopy = view;
  v8 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32];
  if (![(_UIDatePickerMode *)self->_mode is24Hour])
  {
    isTimeIntervalMode = [(_UIDatePickerMode *)self->_mode isTimeIntervalMode];
    if (to != 0x7FFFFFFFFFFFFFFFLL && from != 0x7FFFFFFFFFFFFFFFLL && !isTimeIntervalMode && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(UIPickerView *)self tableViewForColumn:v8];

      if (v11 == viewCopy)
      {
        v12 = [(_UIDatePickerMode *)self->_mode hourForRow:from];
        v13 = [(_UIDatePickerMode *)self->_mode hourForRow:to];
        v14 = v12 == 11 && v13 == 12;
        if (v14 || (v12 == 12 ? (v15 = v13 == 11) : (v15 = 0), v15))
        {
          self->_expectedAMPM = [(_UIDatePickerView *)self _amPmValue]== 0;
          v16 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:0x10000];
          [(_UIDatePickerView *)self _selectRow:self->_expectedAMPM inComponent:v16 animated:1 notify:0];
          [(_UIDatePickerMode *)self->_mode updateSelectedDateComponentsWithNewValueInComponent:v16];
        }
      }
    }
  }

  if (self->_timeInputLabel && (*&self->_datePickerFlags & 8) == 0)
  {
    timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
    if (([timeInputLabel wheelsActive] & 1) == 0)
    {
      selfCopy = self;
      numberOfComponents = [(UIPickerView *)selfCopy numberOfComponents];
      if (numberOfComponents >= 1)
      {
        v20 = numberOfComponents;
        v21 = [(UIPickerView *)selfCopy tableViewForColumn:0];
        if ([v21 isDragging] & 1) != 0 || (objc_msgSend(v21, "isDecelerating"))
        {

LABEL_26:
          [(_UIDatePickerWheelsTimeLabel *)self->_timeInputLabel beginEditingWheels];
          goto LABEL_35;
        }

        v22 = 1;
        while (1)
        {
          v23 = v22;

          if (v20 == v23)
          {
            break;
          }

          v21 = [(UIPickerView *)selfCopy tableViewForColumn:v23];
          if (([v21 isDragging] & 1) == 0)
          {
            isDecelerating = [v21 isDecelerating];
            v22 = v23 + 1;
            if ((isDecelerating & 1) == 0)
            {
              continue;
            }
          }

          if (v20 > v23)
          {
            goto LABEL_26;
          }

          goto LABEL_35;
        }
      }
    }

LABEL_35:
    if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]!= 0x7FFFFFFFFFFFFFFFLL && ([(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]], v25 = objc_claimAutoreleasedReturnValue(), v25, v25 == viewCopy))
    {
      [(_UIDatePickerWheelsTimeLabel *)self->_timeInputLabel updateHoursFromDatePicker:[(_UIDatePickerMode *)self->_mode valueForRow:to inCalendarUnit:32] wheelsChanged:1];
    }

    else if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]];

      if (v26 == viewCopy)
      {
        [(_UIDatePickerWheelsTimeLabel *)self->_timeInputLabel updateMinutesFromDatePicker:[(_UIDatePickerMode *)self->_mode valueForRow:to inCalendarUnit:64] wheelsChanged:1];
      }
    }
  }
}

- (void)_loadDateAnimated:(BOOL)animated
{
  loadingDate = self->_loadingDate;
  if (loadingDate <= 0)
  {
    animatedCopy = animated;
    self->_loadingDate = loadingDate + 1;
    mode = self->_mode;
    effectiveDate = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    [(_UIDatePickerMode *)mode loadDate:effectiveDate animated:animatedCopy];

    --self->_loadingDate;
  }
}

- (void)_selectRow:(int64_t)row inComponent:(int64_t)component animated:(BOOL)animated notify:(BOOL)notify
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerView;
  [(UIPickerView *)&v7 _selectRow:row inComponent:component animated:animated notify:notify];
  if (!self->_loadingDate)
  {
    [(_UIDatePickerView *)self _updateEnabledCellsIncludingWMDCells:1];
  }
}

- (id)_componentsSelectedAfterEnforcingValidityOfComponents:(id)components withLastManipulatedComponent:(int64_t)component
{
  componentsCopy = components;
  v7 = [(_UIDatePickerMode *)self->_mode areValidDateComponents:componentsCopy comparingUnits:[(_UIDatePickerMode *)self->_mode displayedCalendarUnits]];
  v8 = componentsCopy;
  v9 = v8;
  if (!v7)
  {
    v9 = [(_UIDatePickerMode *)self->_mode dateComponentsByRestrictingSelectedComponents:v8 withLastManipulatedColumn:component];
  }

  return v9;
}

- (BOOL)_updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:(int64_t)component
{
  if ((*&self->_datePickerFlags & 2) != 0)
  {
    return 0;
  }

  selectedDateComponents = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  v6 = [(_UIDatePickerView *)self _componentsSelectedAfterEnforcingValidityOfComponents:selectedDateComponents withLastManipulatedComponent:component];
  lastSelectedDateComponents = [(_UIDatePickerDataModel *)self->_data lastSelectedDateComponents];
  v8 = [lastSelectedDateComponents era];

  v9 = _UIDatePickerCompareDateComponents(selectedDateComponents, v6, [(_UIDatePickerMode *)self->_mode displayedCalendarUnits]);
  v10 = v9 != 0;
  if (v9)
  {
    [(_UIDatePickerDataModel *)self->_data setDate:0];
    v11 = [v6 copy];
    [(_UIDatePickerDataModel *)self->_data setLastSelectedDateComponents:v11];

    [(_UIDatePickerView *)self _loadDateAnimated:1];
  }

  else
  {
    v12 = [v6 copy];
    [(_UIDatePickerDataModel *)self->_data setLastSelectedDateComponents:v12];
  }

  [(_UIDatePickerView *)self _updateEnabledCellsIncludingWMDCells:1];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8 != [v6 era])
  {
    v13 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:4];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIPickerView *)self reloadComponent:v13];
    }
  }

  return v10;
}

- (void)_updateLabels:(BOOL)labels
{
  labelsCopy = labels;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    v5 = [(_UIDatePickerView *)self _selectedHourForColumn:0];
    v7 = [(_UIDatePickerView *)self _hoursStringForHour:v5];
    [(_UIDatePickerView *)self _fadeLabelForCalendarUnit:32 toText:v7 animated:labelsCopy];
    v6 = [(_UIDatePickerView *)self _minutesStringForHour:v5 minutes:[(_UIDatePickerView *)self _selectedMinuteForColumn:1]];
    [(_UIDatePickerView *)self _fadeLabelForCalendarUnit:64 toText:v6 animated:labelsCopy];
  }
}

- (void)_updateLabelColors
{
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    v3 = [(_UIDatePickerView *)self _labelForCalendarUnit:32 createIfNecessary:0];
    [(_UIDatePickerView *)self _updateTextColorForCalendarUnitLabel:v3];

    v4 = [(_UIDatePickerView *)self _labelForCalendarUnit:64 createIfNecessary:0];
    [(_UIDatePickerView *)self _updateTextColorForCalendarUnitLabel:v4];
  }

  mode = self->_mode;

  [(_UIDatePickerMode *)mode invalidateTodayTextColor];
}

- (void)_removeUnitLabels
{
  [(UIView *)self->_hourLabel removeFromSuperview];
  hourLabel = self->_hourLabel;
  self->_hourLabel = 0;

  [(UIView *)self->_minuteLabel removeFromSuperview];
  minuteLabel = self->_minuteLabel;
  self->_minuteLabel = 0;
}

- (void)_setTextColor:(id)color
{
  v4.receiver = self;
  v4.super_class = _UIDatePickerView;
  [(UIPickerView *)&v4 _setTextColor:color];
  [(_UIDatePickerView *)self _updateLabelColors];
}

- (id)_labelForCalendarUnit:(unint64_t)unit createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (![(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    goto LABEL_9;
  }

  if (unit == 64)
  {
    p_minuteLabel = &self->_minuteLabel;
    minuteLabel = self->_minuteLabel;
    if (minuteLabel)
    {
      v14 = 1;
    }

    else
    {
      v14 = !necessaryCopy;
    }

    if (v14)
    {
      goto LABEL_16;
    }

    v10 = [(_UIDatePickerView *)self _minutesStringForHour:0 minutes:0];
    selfCopy2 = self;
    v12 = 64;
    goto LABEL_15;
  }

  if (unit != 32)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_17;
  }

  p_minuteLabel = &self->_hourLabel;
  minuteLabel = self->_hourLabel;
  if (minuteLabel)
  {
    v9 = 1;
  }

  else
  {
    v9 = !necessaryCopy;
  }

  if (v9)
  {
    goto LABEL_16;
  }

  v10 = [(_UIDatePickerView *)self _hoursStringForHour:0];
  selfCopy2 = self;
  v12 = 32;
LABEL_15:
  [(_UIDatePickerView *)selfCopy2 _fadeLabelForCalendarUnit:v12 toText:v10 animated:0];

  minuteLabel = *p_minuteLabel;
LABEL_16:
  v13 = minuteLabel;
LABEL_17:

  return v13;
}

- (void)_setLabel:(id)label forCalendarUnit:(unint64_t)unit animated:(BOOL)animated
{
  labelCopy = label;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    if (unit == 64)
    {
      v9 = 576;
    }

    else
    {
      if (unit != 32)
      {
        goto LABEL_10;
      }

      v9 = 568;
    }

    v10 = (&self->super.super.super.super.isa + v9);
    if (*v10 != labelCopy)
    {
      if (!animated)
      {
        [*v10 removeFromSuperview];
      }

      objc_storeStrong(v10, label);
    }
  }

LABEL_10:
}

- (void)_positionLabel:(id)label forCalendarUnit:(unint64_t)unit relativeTo:(id)to order:(int64_t)order
{
  v39[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  toCopy = to;
  [labelCopy sizeToFit];
  [labelCopy frame];
  v13 = v12;
  v15 = v14;
  if (toCopy)
  {
    [toCopy frame];
    v17 = v16;
    v19 = v18;
    if ([(UIView *)self _shouldReverseLayoutDirection])
    {
      [toCopy frame];
      v17 = v17 + v20 - v13;
    }

    if (labelCopy != toCopy)
    {
      [(UIView *)self _addSubview:labelCopy positioned:order relativeTo:toCopy];
    }
  }

  else
  {
    v21 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:unit];
    v22 = [(UIPickerView *)self tableViewForColumn:v21];
    [(UIPickerView *)self _effectiveTableViewFrameForColumn:v21];
    v23 = objc_alloc_init(off_1E70ECB98);
    [v23 setWantsBaselineOffset:1];
    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v38 = *off_1E70EC918;
    v25 = [(_UIDatePickerMode *)self->_mode fontForCalendarUnit:unit];
    v39[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v27 = [v24 initWithString:@"00" attributes:v26];

    [v27 boundingRectWithSize:1 options:v23 context:{1.79769313e308, 1.79769313e308}];
    v28 = [(_UIDatePickerView *)self _contentViewForSizingLabelForPositioningInComponent:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:unit]];
    titleLabel = [v28 titleLabel];
    [(UIView *)self bounds];
    v31 = v30;
    [v22 rowHeight];
    v33 = v32;
    [(UIView *)self bounds];
    [v28 setFrame:{0.0, round(v35 + (v34 - v33) * 0.5), v31, v33}];
    [v28 layoutIfNeeded];
    [titleLabel frame];
    [titleLabel _baselineOffsetFromBottom];
    [labelCopy _baselineOffsetFromBottom];
    [(UIView *)self _shouldReverseLayoutDirection];
    UIRoundToViewScale(labelCopy);
    v17 = v36;
    UIRoundToViewScale(labelCopy);
    v19 = v37;
    [(UIView *)self _addSubview:labelCopy positioned:order relativeTo:v22];
  }

  [labelCopy setFrame:{v17, v19, v13, v15}];
}

- (id)_makeNewCalendarUnitLabel
{
  v3 = [UILabel alloc];
  v4 = [(UILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  _hrMinFont = [(_UIDatePickerView *)self _hrMinFont];
  [(UILabel *)v4 setFont:_hrMinFont];

  [(_UIDatePickerView *)self _updateTextColorForCalendarUnitLabel:v4];
  shadowColor = [(_UIDatePickerView *)self shadowColor];
  [(UILabel *)v4 setShadowColor:shadowColor];

  [(UIView *)v4 setBackgroundColor:0];
  [(UIView *)v4 setOpaque:0];
  shadowColor2 = [(_UIDatePickerView *)self shadowColor];
  [(UILabel *)v4 setShadowColor:shadowColor2];

  [(UILabel *)v4 setShadowOffset:0.0, 1.0];

  return v4;
}

- (void)_updateTextColorForCalendarUnitLabel:(id)label
{
  labelCopy = label;
  _textColor = [(UIPickerView *)self _textColor];
  [labelCopy setTextColor:_textColor];
}

- (void)_fadeLabelForCalendarUnit:(unint64_t)unit toText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  v9 = [(_UIDatePickerView *)self _labelForCalendarUnit:unit createIfNecessary:0];
  text = [v9 text];
  v11 = [text isEqualToString:textCopy];

  _makeNewCalendarUnitLabel2 = v9;
  if ((v11 & 1) == 0)
  {
    if (animatedCopy)
    {
      _makeNewCalendarUnitLabel = [(_UIDatePickerView *)self _makeNewCalendarUnitLabel];

      [_makeNewCalendarUnitLabel setText:textCopy];
      [(_UIDatePickerView *)self _positionLabel:_makeNewCalendarUnitLabel forCalendarUnit:unit relativeTo:v9 order:-3];
      [(UIView *)self _addSubview:_makeNewCalendarUnitLabel positioned:-3 relativeTo:v9];
      [_makeNewCalendarUnitLabel setAlpha:0.0];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __63___UIDatePickerView__fadeLabelForCalendarUnit_toText_animated___block_invoke;
      v19[3] = &unk_1E70F3590;
      v20 = v9;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63___UIDatePickerView__fadeLabelForCalendarUnit_toText_animated___block_invoke_2;
      v17[3] = &unk_1E70F5AC0;
      v18 = v20;
      [UIView animateWithDuration:0x10000 delay:v19 options:v17 animations:0.2 completion:0.0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63___UIDatePickerView__fadeLabelForCalendarUnit_toText_animated___block_invoke_3;
      v15[3] = &unk_1E70F3590;
      _makeNewCalendarUnitLabel2 = _makeNewCalendarUnitLabel;
      v16 = _makeNewCalendarUnitLabel2;
      [UIView animateWithDuration:0x20000 delay:v15 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      _makeNewCalendarUnitLabel2 = v9;
      if (!v9)
      {
        _makeNewCalendarUnitLabel2 = [(_UIDatePickerView *)self _makeNewCalendarUnitLabel];
      }

      [_makeNewCalendarUnitLabel2 setText:textCopy];
      [(_UIDatePickerView *)self _positionLabel:_makeNewCalendarUnitLabel2 forCalendarUnit:unit relativeTo:v9 order:-3];
    }
  }

  v14 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:unit]];
  [(UIView *)self _addSubview:_makeNewCalendarUnitLabel2 positioned:-2 relativeTo:v14];
  [(_UIDatePickerView *)self _setLabel:_makeNewCalendarUnitLabel2 forCalendarUnit:unit animated:animatedCopy];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  [(_UIDatePickerDataModel *)self->_data setDate:0, row];
  hasSelectedDateComponents = [(_UIDatePickerMode *)self->_mode hasSelectedDateComponents];
  selectedDateComponents = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  [(_UIDatePickerMode *)self->_mode updateSelectedDateComponentsWithNewValueInComponent:component];
  if (hasSelectedDateComponents)
  {
    selectedDateComponents2 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
    v9 = [selectedDateComponents isEqual:selectedDateComponents2] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  selfCopy = self;
  numberOfComponents = [(UIPickerView *)selfCopy numberOfComponents];
  if (numberOfComponents >= 1)
  {
    v12 = numberOfComponents;
    v13 = [(UIPickerView *)selfCopy tableViewForColumn:0];
    if ([v13 isDragging] & 1) != 0 || (objc_msgSend(v13, "isDecelerating"))
    {

      goto LABEL_20;
    }

    v14 = 1;
    while (1)
    {
      v15 = v14;

      if (v12 == v15)
      {
        break;
      }

      v13 = [(UIPickerView *)selfCopy tableViewForColumn:v15];
      if (([v13 isDragging] & 1) == 0)
      {
        isDecelerating = [v13 isDecelerating];
        v14 = v15 + 1;
        if ((isDecelerating & 1) == 0)
        {
          continue;
        }
      }

      if (v12 <= v15)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

LABEL_15:
  v17 = [(_UIDatePickerView *)selfCopy _updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:component]| v9;
  [(_UIDatePickerView *)selfCopy _updateLabels:1];
  if (v17)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_datePicker);
    [WeakRetained _emitValueChanged];
  }

  timeInputLabel = [(_UIDatePickerView *)selfCopy timeInputLabel];
  wheelsActive = [timeInputLabel wheelsActive];

  if (wheelsActive)
  {
    timeInputLabel2 = [(_UIDatePickerView *)selfCopy timeInputLabel];
    [timeInputLabel2 endEditingWheels];
  }

  else
  {
    [(_UIDatePickerView *)selfCopy _updateWheelsLabelForCurrentDateComponents];
  }

LABEL_20:
}

- (void)_updateEnabledCellsIncludingWMDCells:(BOOL)cells
{
  numberOfComponents = [(UIPickerView *)self numberOfComponents];
  if (numberOfComponents >= 1)
  {
    v6 = 0;
    v7 = numberOfComponents & 0x7FFFFFFF;
    do
    {
      v8 = [(_UIDatePickerMode *)self->_mode calendarUnitForComponent:v6];
      v9 = [(UIPickerView *)self visibleRowsForColumn:v6];
      if (v10)
      {
        v11 = v9 + v10;
        if (v9 + v10 > v9)
        {
          v12 = v9;
          v13 = v8 != 536 || cells;
          do
          {
            v14 = [(UIPickerView *)self viewForRow:v12 forComponent:v6];
            if (v14 != 0 && v13)
            {
              [(_UIDatePickerMode *)self->_mode updateEnabledStateOfViewForRow:v12 inComponent:v6];
            }

            ++v12;
          }

          while (v11 != v12);
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

- (void)setTimeInterval:(double)interval
{
  v4 = vcvtmd_s64_f64(fmin(fmax(interval, 0.0), 86400.0));
  effectiveCalendar = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v9 = [effectiveCalendar components:30 fromDate:date];

  [v9 setHour:v4 / 0xE10];
  [v9 setMinute:v4 % 0xE10 / 0x3C];
  effectiveCalendar2 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v8 = [effectiveCalendar2 dateFromComponents:v9];
  [(_UIDatePickerDataModel *)self->_data setDate:v8];

  [(_UIDatePickerView *)self didChangeDateFrom:0 animated:0];
}

- (double)timeInterval
{
  lastSelectedDateComponents = [(_UIDatePickerDataModel *)self->_data lastSelectedDateComponents];
  v3 = 60 * [lastSelectedDateComponents minute];
  v4 = v3 + 3600 * [lastSelectedDateComponents hour];
  v5 = (v4 + [lastSelectedDateComponents second]);

  return v5;
}

- (double)contentWidth
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

  [(_UIDatePickerMode *)self->_mode totalComponentWidth];
  v6 = v5;
  [v4 pickerHorizontalEdgeInset];
  v8 = v6 + v7 + v7;
  [(UIView *)self bounds];
  if (v8 >= v9)
  {
    v8 = v9;
  }

  return v8;
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  traitCollection = [(UIView *)self traitCollection];
  v7 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

  [v7 pickerHorizontalEdgeInset];
  v9 = v8;
  [(UIPickerView *)self _selectionBarSideInset];
  v11 = v9 + v10;
  [(UIView *)self bounds];
  v13 = v12 - (v11 + v11);
  if (v13 < 0.0)
  {
    v13 = 1.79769313e308;
  }

  [(_UIDatePickerMode *)self->_mode widthForComponent:component maxWidth:v13];
  v15 = v14;

  return v15;
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  v8 = [(_UIDatePickerMode *)self->_mode viewForRow:row inComponent:component reusingView:reusingView];
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    v9 = [(_UIDatePickerMode *)self->_mode calendarUnitForComponent:component];
    if (v9 == 64 || v9 == 32)
    {
      v10 = [(_UIDatePickerView *)self _labelForCalendarUnit:v9 createIfNecessary:1];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(UIPickerView *)self tableViewForColumn:component];
      [(UIView *)self convertRect:v19 toView:v12, v14, v16, v18];
      v21 = v20;

      [v8 setTitleLabelMaxX:fabs(v21 + -3.0)];
    }
  }

  return v8;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = _UIDatePickerView;
    [(UIPickerView *)&v12 setFrame:x, y, width, height];
    [(_UIDatePickerView *)self _removeUnitLabels];
    [(UIPickerView *)self setNeedsLayout];
    [(_UIDatePickerMode *)self->_mode resetComponentWidths];
    [(_UIDatePickerView *)self _updateTimeInputLabelPosition];
  }
}

- (void)layoutSubviews
{
  pickerViewFlags = self->super._pickerViewFlags;
  v9.receiver = self;
  v9.super_class = _UIDatePickerView;
  [(UIPickerView *)&v9 layoutSubviews];
  if ((*&pickerViewFlags & 1) != 0 && !self->_loadingDate)
  {
    [(_UIDatePickerView *)self _loadDateAnimated:0];
  }

  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    numberOfComponents = [(UIPickerView *)self numberOfComponents];
    if (numberOfComponents >= 1)
    {
      v5 = numberOfComponents;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(UIPickerView *)self tableViewForColumn:i];
        v8 = v7;
        if (*&pickerViewFlags)
        {
          [v7 reloadData];
        }
      }
    }
  }

  [(_UIDatePickerView *)self _updateLabels:0];
  [(_UIDatePickerView *)self _updateTimeInputLabelPosition];
}

- (void)_setAllowsZeroTimeInterval:(BOOL)interval
{
  self->_allowsZeroTimeInterval = interval;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {

    [(UIPickerView *)self reloadAllComponents];
  }
}

- (id)_viewForSelectedRowInComponent:(int64_t)component
{
  v5 = [(UIPickerView *)self selectedRowInComponent:?];
  if (v5 < 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [(UIPickerView *)self viewForRow:v5 forComponent:component];
    if (!v7)
    {
      [(_UIDatePickerView *)self didChangeDateFrom:0 animated:0];
      v7 = [(UIPickerView *)self viewForRow:v6 forComponent:component];
    }
  }

  return v7;
}

- (void)_updateTimeInputLabelPosition
{
  v3 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32];
  v4 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64];
  [(UIPickerView *)self _selectionBarSideInset];
  if (self->_timeInputLabel)
  {
    v6 = v3 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
    [(UIPickerView *)self _effectiveTableViewFrameForColumn:v3];
    v10 = v9 - v8;
    [(_UIDatePickerView *)self pickerView:self widthForComponent:v3];
    v12 = v11;
    v13 = [(_UIDatePickerMode *)self->_mode titleAlignmentForCalendarUnit:32];
    [(UIPickerView *)self _effectiveTableViewFrameForColumn:v4];
    v15 = v14 - v8;
    [(_UIDatePickerView *)self pickerView:self widthForComponent:v4];
    v17 = v16;
    v18 = [(_UIDatePickerMode *)self->_mode titleAlignmentForCalendarUnit:64];
    [(UIView *)self addSubview:self->_timeInputLabel];
    [(_UIDatePickerView *)self _currentTimeInputLabelFrame];
    [(UIView *)self->_timeInputLabel setFrame:?];
    [(UIView *)self center];
    [(UIView *)self->_timeInputLabel setCenter:?];
    timeInputLabel = self->_timeInputLabel;
    *v21 = v10;
    v21[1] = v12;
    v21[2] = v13;
    *v20 = v15;
    v20[1] = v17;
    v20[2] = v18;
    [(_UIDatePickerWheelsTimeLabel *)timeInputLabel configureLabelsForHour:v21 minute:v20];
    [(_UIDatePickerView *)self _hidePickerViewSelectionBarForTimeInputLabel:[(UIView *)self->_timeInputLabel isFirstResponder]];
  }
}

- (void)_hidePickerViewSelectionBarForTimeInputLabel:(BOOL)label
{
  labelCopy = label;
  if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]];
    [v5 setHidden:labelCopy];
  }

  if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]];
    [v6 setHidden:labelCopy];
  }

  if (labelCopy)
  {
    v7 = 64;
  }

  else
  {
    v7 = 0;
  }

  *&self->_datePickerFlags = *&self->_datePickerFlags & 0xFFBF | v7;
}

- (void)_updateTimeInputLabelConfiguration
{
  if ([(_UIDatePickerView *)self _shouldInstallTimeInputLabelForDatePickerMode:[(_UIDatePickerMode *)self->_mode datePickerMode]])
  {

    [(_UIDatePickerView *)self _installTimeInputLabelIfNeeded];
  }

  else
  {

    [(_UIDatePickerView *)self _uninstallTimeInputLabelIfNeeded];
  }
}

- (id)_currentTimeFormat
{
  formattingCalendar = [(_UIDatePickerDataModel *)self->_data formattingCalendar];
  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  v5 = [_UIDatePickerCalendarTimeFormat formatWithCalendar:formattingCalendar locale:effectiveLocale followsSystemHourCycle:[(_UIDatePickerDataModel *)self->_data followsSystemHourCycle]];

  return v5;
}

- (CGRect)_currentTimeInputLabelFrame
{
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v9);
  [(UIPickerView *)self _selectionBarSideInset];
  v5 = Width - (v4 + v4);
  v6 = 32.0;
  v7 = 0.0;
  v8 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)_installTimeInputLabelIfNeeded
{
  if (self->_timeInputLabel)
  {

    [(_UIDatePickerView *)self _updateTimeInputLabelPosition];
  }

  else
  {
    v3 = [_UIDatePickerWheelsTimeLabel alloc];
    _currentTimeFormat = [(_UIDatePickerView *)self _currentTimeFormat];
    v5 = [(_UIDatePickerWheelsTimeLabel *)v3 initWithTimeFormat:_currentTimeFormat minuteInterval:[(_UIDatePickerDataModel *)self->_data minuteInterval]];

    [(_UIDatePickerWheelsTimeLabel *)v5 setWheelsDelegate:self];
    data = self->_data;
    if (data)
    {
      [(_UIDatePickerCalendarTimeLabel *)v5 setRoundsToMinuteInterval:[(_UIDatePickerDataModel *)data roundsToMinuteInterval]];
    }

    _style = [(UIPickerView *)self _style];
    traitCollection = [(UIView *)self traitCollection];
    v9 = [_style centerCellDigitFontWithTraitCollection:traitCollection];
    [(_UIDatePickerWheelsTimeLabel *)v5 setFont:v9];

    [(_UIDatePickerCalendarTimeLabel *)v5 setDelegate:self];
    [(_UIDatePickerView *)self _currentTimeInputLabelFrame];
    [(UIView *)v5 setFrame:?];
    [(UIView *)v5 setAutoresizingMask:42];
    [(UIView *)self center];
    [(UIView *)v5 setCenter:?];
    controlEventsGestureRecognizer = [(_UIDatePickerWheelsTimeLabel *)v5 controlEventsGestureRecognizer];
    [controlEventsGestureRecognizer setDelegate:self];

    controlEventsGestureRecognizer2 = [(_UIDatePickerWheelsTimeLabel *)v5 controlEventsGestureRecognizer];
    [(UIView *)self addGestureRecognizer:controlEventsGestureRecognizer2];

    v12 = objc_opt_new();
    [(_UIControlEventsGestureRecognizer *)v12 setControlEventsDelegate:self];
    [(UIGestureRecognizer *)v12 setDelegate:self];
    [(UIView *)self addGestureRecognizer:v12];
    controlEventsGestureRecognizer = self->_controlEventsGestureRecognizer;
    self->_controlEventsGestureRecognizer = v12;
    v14 = v12;

    selectedDateComponents = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
    -[_UIDatePickerWheelsTimeLabel updateHoursFromDatePicker:wheelsChanged:](v5, "updateHoursFromDatePicker:wheelsChanged:", [selectedDateComponents hour], 0);
    -[_UIDatePickerWheelsTimeLabel updateMinutesFromDatePicker:wheelsChanged:](v5, "updateMinutesFromDatePicker:wheelsChanged:", [selectedDateComponents minute], 0);
    timeInputLabel = self->_timeInputLabel;
    self->_timeInputLabel = v5;

    [(_UIDatePickerView *)self _updateTimeInputLabelPosition];
  }
}

- (void)_uninstallTimeInputLabelIfNeeded
{
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];

  if (timeInputLabel)
  {
    timeInputLabel2 = [(_UIDatePickerView *)self timeInputLabel];
    controlEventsGestureRecognizer = [timeInputLabel2 controlEventsGestureRecognizer];
    [(UIView *)self removeGestureRecognizer:controlEventsGestureRecognizer];

    timeInputLabel3 = [(_UIDatePickerView *)self timeInputLabel];
    [timeInputLabel3 removeFromSuperview];

    timeInputLabel = self->_timeInputLabel;
    self->_timeInputLabel = 0;
  }

  controlEventsGestureRecognizer2 = [(_UIDatePickerView *)self controlEventsGestureRecognizer];

  if (controlEventsGestureRecognizer2)
  {
    controlEventsGestureRecognizer3 = [(_UIDatePickerView *)self controlEventsGestureRecognizer];
    [(UIView *)self removeGestureRecognizer:controlEventsGestureRecognizer3];

    controlEventsGestureRecognizer = self->_controlEventsGestureRecognizer;
    self->_controlEventsGestureRecognizer = 0;
  }

  [(_UIDatePickerView *)self setPassthroughInteractionEnabled:0];
}

- (void)controlEventsGestureRecognizer:(id)recognizer recognizedControlEvent:(unint64_t)event withEvent:(id)withEvent
{
  recognizerCopy = recognizer;
  withEventCopy = withEvent;
  if (event <= 127)
  {
    if (event == 1)
    {
LABEL_8:
      WeakRetained = objc_loadWeakRetained(&self->_datePicker);
      _overlayPresentation = [WeakRetained _overlayPresentation];
      [_overlayPresentation setDefersAutomaticKeyboardAvoidanceAdjustments:event];

      goto LABEL_9;
    }

    if (event != 64)
    {
      goto LABEL_9;
    }

LABEL_7:
    event = 0;
    goto LABEL_8;
  }

  if (event == 256 || event == 128)
  {
    goto LABEL_7;
  }

LABEL_9:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  controlEventsGestureRecognizer = [(_UIDatePickerView *)self controlEventsGestureRecognizer];
  v7 = [recognizerCopy isEqual:controlEventsGestureRecognizer];

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
  controlEventsGestureRecognizer = [timeInputLabel controlEventsGestureRecognizer];
  v10 = [recognizerCopy isEqual:controlEventsGestureRecognizer];

  if (v10 && [(UIPickerView *)self numberOfComponents]>= 1)
  {
    v11 = 0;
    do
    {
      v12 = [(UIPickerView *)self tableViewForColumn:v11];
      panGestureRecognizer = [v12 panGestureRecognizer];

      v14 = panGestureRecognizer == gestureRecognizerCopy;
      if (panGestureRecognizer == gestureRecognizerCopy)
      {
        break;
      }

      ++v11;
    }

    while ([(UIPickerView *)self numberOfComponents]> v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
  timeInputLabel2 = [(_UIDatePickerView *)self timeInputLabel];
  [gestureRecognizerCopy locationInView:timeInputLabel2];
  v8 = [timeInputLabel pointInside:0 withEvent:?];

  datePickerFlags = self->_datePickerFlags;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = datePickerFlags & 0x80;
    view = [gestureRecognizerCopy view];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & (v8 | (v10 >> 7));
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  numberOfComponents = [(UIPickerView *)selfCopy numberOfComponents];
  if (numberOfComponents >= 1)
  {
    v10 = numberOfComponents;
    v11 = [(UIPickerView *)selfCopy tableViewForColumn:0];
    if ([v11 isDragging] & 1) != 0 || (objc_msgSend(v11, "isDecelerating"))
    {

      v12 = 0;
      goto LABEL_14;
    }

    v13 = 1;
    while (1)
    {
      v14 = v13;

      if (v10 == v14)
      {
        break;
      }

      v11 = [(UIPickerView *)selfCopy tableViewForColumn:v14];
      if (([v11 isDragging] & 1) == 0)
      {
        isDecelerating = [v11 isDecelerating];
        v13 = v14 + 1;
        if ((isDecelerating & 1) == 0)
        {
          continue;
        }
      }

      if (v10 <= v14)
      {
        goto LABEL_12;
      }

      v12 = 0;
      goto LABEL_16;
    }
  }

LABEL_12:
  timeInputLabel = [(_UIDatePickerView *)selfCopy timeInputLabel];
  controlEventsGestureRecognizer = [timeInputLabel controlEventsGestureRecognizer];
  v18 = [recognizerCopy isEqual:controlEventsGestureRecognizer];

  if (!v18)
  {
    v12 = 1;
    goto LABEL_16;
  }

  timeInputLabel2 = [(_UIDatePickerView *)selfCopy timeInputLabel];
  [touchCopy locationInView:timeInputLabel2];
  v21 = v20;
  v23 = v22;

  selfCopy = [(_UIDatePickerView *)selfCopy timeInputLabel];
  v12 = [(UIView *)selfCopy pointInside:0 withEvent:v21, v23];
LABEL_14:

LABEL_16:
  return v12;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
  controlEventsGestureRecognizer = [timeInputLabel controlEventsGestureRecognizer];
  v7 = [failedCopy isEqual:controlEventsGestureRecognizer];

  if (v7)
  {
    timeInputLabel2 = [(_UIDatePickerView *)self timeInputLabel];
    controlEventsGestureRecognizer2 = [timeInputLabel2 controlEventsGestureRecognizer];
    [controlEventsGestureRecognizer2 gestureRecognizerFailed];
  }
}

- (void)_updateWheelsForUpdatedTextInputWithForcedUpdate:(BOOL)update
{
  updateCopy = update;
  selfCopy = self;
  numberOfComponents = [(UIPickerView *)selfCopy numberOfComponents];
  v4 = selfCopy;
  if (numberOfComponents < 1)
  {
    goto LABEL_10;
  }

  v5 = numberOfComponents;
  effectiveDate = [(UIPickerView *)selfCopy tableViewForColumn:0];
  if (([effectiveDate isDragging] & 1) == 0 && (objc_msgSend(effectiveDate, "isDecelerating") & 1) == 0)
  {
    v7 = 1;
    while (1)
    {
      v8 = v7;

      v4 = selfCopy;
      if (v5 == v8)
      {
        break;
      }

      effectiveDate = [(UIPickerView *)selfCopy tableViewForColumn:v8];
      if (([effectiveDate isDragging] & 1) == 0)
      {
        isDecelerating = [effectiveDate isDecelerating];
        v7 = v8 + 1;
        if ((isDecelerating & 1) == 0)
        {
          continue;
        }
      }

      if (v5 <= v8)
      {
        goto LABEL_11;
      }

      return;
    }

LABEL_10:

LABEL_11:
    v10 = selfCopy->_timeInputLabel;
    timeFormat = [(_UIDatePickerCalendarTimeLabel *)v10 timeFormat];
    hourFormatter = [timeFormat hourFormatter];
    hourText = [(_UIDatePickerCalendarTimeLabel *)v10 hourText];
    v14 = [hourFormatter numberFromString:hourText];
    integerValue = [v14 integerValue];

    timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)v10 timeFormat];
    minuteFormatter = [timeFormat2 minuteFormatter];
    minuteText = [(_UIDatePickerCalendarTimeLabel *)v10 minuteText];
    v19 = [minuteFormatter numberFromString:minuteText];
    integerValue2 = [v19 integerValue];

    effectiveDate = [(_UIDatePickerDataModel *)selfCopy->_data effectiveDate];
    selectedDateComponents = [(_UIDatePickerMode *)selfCopy->_mode selectedDateComponents];
    Value = _UIDateComponentsGetValue(selectedDateComponents, 0x10000);
    v23 = [selectedDateComponents copy];
    [v23 setHour:integerValue];
    if (updateCopy || [(_UIDatePickerMode *)selfCopy->_mode areValidDateComponents:v23 comparingUnits:-193])
    {
      [selectedDateComponents setHour:integerValue];
    }

    if (updateCopy || integerValue2 <= 0x3B)
    {
      if ([(_UIDatePickerDataModel *)selfCopy->_data roundsToMinuteInterval])
      {
        minuteInterval = [(_UIDatePickerDataModel *)selfCopy->_data minuteInterval];
        integerValue2 = (floor(integerValue2 / minuteInterval) * minuteInterval);
      }

      [selectedDateComponents setMinute:integerValue2];
    }

    if (![(_UIDatePickerMode *)selfCopy->_mode is24Hour])
    {
      _UIDateComponentsSetValue(selectedDateComponents, 0x10000, Value);
    }

    effectiveCalendar = [(_UIDatePickerDataModel *)selfCopy->_data effectiveCalendar];
    v26 = [effectiveCalendar dateFromComponents:selectedDateComponents];
    [(_UIDatePickerDataModel *)selfCopy->_data setDate:v26];

    WeakRetained = selfCopy;
    numberOfComponents2 = [(UIPickerView *)WeakRetained numberOfComponents];
    if (numberOfComponents2 >= 1)
    {
      v29 = numberOfComponents2;
      v30 = [(UIPickerView *)WeakRetained tableViewForColumn:0];
      panGestureRecognizer = [v30 panGestureRecognizer];

      state = [panGestureRecognizer state];
      if (state)
      {
LABEL_34:

        goto LABEL_35;
      }

      v33 = 1;
      while (v29 != v33)
      {
        v34 = [(UIPickerView *)WeakRetained tableViewForColumn:v33];
        panGestureRecognizer2 = [v34 panGestureRecognizer];

        state2 = [panGestureRecognizer2 state];
        ++v33;
        if (state2)
        {

          if (v29 <= v33 - 1)
          {
            goto LABEL_29;
          }

          goto LABEL_35;
        }
      }
    }

LABEL_29:
    effectiveDate2 = [(_UIDatePickerDataModel *)selfCopy->_data effectiveDate];
    v38 = [effectiveDate2 isEqual:effectiveDate];

    if (updateCopy)
    {
      if ((v38 & 1) == 0)
      {
        [(_UIDatePickerView *)WeakRetained didChangeDateFrom:effectiveDate animated:1];
LABEL_33:
        WeakRetained = objc_loadWeakRetained(&WeakRetained->_datePicker);
        [(_UIDatePickerView *)WeakRetained _emitValueChanged];
        goto LABEL_34;
      }
    }

    else
    {
      *&WeakRetained->_datePickerFlags |= 0x88u;
      [(_UIDatePickerView *)WeakRetained didChangeDateFrom:effectiveDate animated:1];
      *&WeakRetained->_datePickerFlags &= ~8u;
      if ((v38 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:

    selfCopy = v10;
  }
}

- (int64_t)keyboardTypeForTimeLabel:(id)label
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 127;
  }

  else
  {
    return 4;
  }
}

- (BOOL)timeLabelShouldSuppressSoftwareKeyboard:(id)keyboard
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)timeLabelWillBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = +[UIDevice currentDevice];
    if ([v6 _isHardwareKeyboardAvailable])
    {

      goto LABEL_9;
    }

    if ([responderCopy isFirstResponder])
    {
      presentingViewController = [(UIViewController *)self->_numericKeyboardViewController presentingViewController];

      if (presentingViewController)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    [(_UIDatePickerView *)self _enableCustomKeyboardIfNecessary];
    *&self->_datePickerFlags |= 0x10u;
  }

LABEL_9:
}

- (unint64_t)_permittedArrowDirectionForKeyboardPopover
{
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
  window = [timeInputLabel window];

  timeInputLabel2 = [(_UIDatePickerView *)self timeInputLabel];
  timeInputLabel3 = [(_UIDatePickerView *)self timeInputLabel];
  [timeInputLabel3 combinedTextRectFromLabels];
  [timeInputLabel2 convertRect:window toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  MaxX = CGRectGetMaxX(v21);
  [window bounds];
  if (MaxX >= CGRectGetMaxX(v22) + -320.0 && MinX <= 320.0)
  {
    v18 = 15;
  }

  else
  {
    v18 = 12;
  }

  return v18;
}

- (void)timeLabelDidBecomeFirstResponder:(id)responder
{
  v13[1] = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  if ((*&self->_datePickerFlags & 0x10) != 0)
  {
    numericKeyboardViewController = self->_numericKeyboardViewController;
    if (numericKeyboardViewController)
    {
      popoverPresentationController = [(UIViewController *)numericKeyboardViewController popoverPresentationController];
      [popoverPresentationController setSourceView:responderCopy];
      [responderCopy combinedTextRectFromLabels];
      [popoverPresentationController setSourceRect:?];
      [popoverPresentationController setPermittedArrowDirections:{-[_UIDatePickerView _permittedArrowDirectionForKeyboardPopover](self, "_permittedArrowDirectionForKeyboardPopover")}];
    }

    else
    {
      v7 = objc_opt_new();
      v8 = self->_numericKeyboardViewController;
      self->_numericKeyboardViewController = v7;

      popoverPresentationController = [(UIViewController *)self->_numericKeyboardViewController popoverPresentationController];
      [popoverPresentationController setSourceView:responderCopy];
      [responderCopy combinedTextRectFromLabels];
      [popoverPresentationController setSourceRect:?];
      v13[0] = responderCopy;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [popoverPresentationController setPassthroughViews:v9];

      [popoverPresentationController _setShouldPreserveFirstResponder:0];
      [popoverPresentationController _setAdaptivityEnabled:0];
      [popoverPresentationController setPopoverLayoutMargins:{2.22044605e-16, 2.22044605e-16, 2.22044605e-16, 2.22044605e-16}];
      [popoverPresentationController setPermittedArrowDirections:{-[_UIDatePickerView _permittedArrowDirectionForKeyboardPopover](self, "_permittedArrowDirectionForKeyboardPopover")}];
      [popoverPresentationController setDelegate:self];
      _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
      *&self->_datePickerFlags |= 0x100u;
      v11 = self->_numericKeyboardViewController;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54___UIDatePickerView_timeLabelDidBecomeFirstResponder___block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [_viewControllerForAncestor presentViewController:v11 animated:1 completion:v12];
    }

    *&self->_datePickerFlags &= ~0x10u;
  }
}

- (void)timeLabelDidResignFirstResponder:(id)responder
{
  if ((*&self->_datePickerFlags & 0x10) == 0)
  {
    [(_UIDatePickerView *)self _dismissManualKeyboard];
  }
}

- (void)timeLabelDidBeginEditing:(id)editing
{
  [(_UIDatePickerView *)self setPassthroughInteractionEnabled:1];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitBeginEditing];
}

- (void)timeLabelDidEndEditing:(id)editing
{
  [(_UIDatePickerView *)self setPassthroughInteractionEnabled:0];
  [(_UIDatePickerView *)self _updateWheelsForUpdatedTextInputWithForcedUpdate:1];
  *&self->_datePickerFlags &= ~0x80u;
  [(_UIDatePickerView *)self _updateWheelsLabelForCurrentDateComponents];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitEndEditing];
}

- (void)_updateWheelsLabelForCurrentDateComponents
{
  timeInputLabel = self->_timeInputLabel;
  selectedDateComponents = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  -[_UIDatePickerWheelsTimeLabel updateHoursFromDatePicker:wheelsChanged:](timeInputLabel, "updateHoursFromDatePicker:wheelsChanged:", [selectedDateComponents hour], 0);

  v5 = self->_timeInputLabel;
  selectedDateComponents2 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  -[_UIDatePickerWheelsTimeLabel updateMinutesFromDatePicker:wheelsChanged:](v5, "updateMinutesFromDatePicker:wheelsChanged:", [selectedDateComponents2 minute], 0);
}

- (BOOL)wheelsTimeLabelShouldReceiveInteraction:(id)interaction
{
  selfCopy = self;
  numberOfComponents = [(UIPickerView *)selfCopy numberOfComponents];
  if (numberOfComponents >= 1)
  {
    v5 = numberOfComponents;
    v6 = [(UIPickerView *)selfCopy tableViewForColumn:0];
    if ([v6 isDragging] & 1) != 0 || (objc_msgSend(v6, "isDecelerating"))
    {

      return 0;
    }

    v8 = 1;
    while (1)
    {
      v9 = v8;

      if (v5 == v9)
      {
        break;
      }

      v6 = [(UIPickerView *)selfCopy tableViewForColumn:v9];
      if (([v6 isDragging] & 1) == 0)
      {
        isDecelerating = [v6 isDecelerating];
        v8 = v9 + 1;
        if ((isDecelerating & 1) == 0)
        {
          continue;
        }
      }

      if (v5 > v9)
      {
        return 0;
      }

      return (*&selfCopy->_datePickerFlags & 0x100) == 0;
    }
  }

  return (*&selfCopy->_datePickerFlags & 0x100) == 0;
}

- (void)setPassthroughInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  passthroughInteraction = self->_passthroughInteraction;
  if (enabledCopy)
  {
    if (!passthroughInteraction && [(UIView *)self _isInAWindow])
    {
      v6 = objc_opt_new();
      v7 = self->_passthroughInteraction;
      self->_passthroughInteraction = v6;

      [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setDelegate:self];
      [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setEatsTouches:0];
      v8 = self->_passthroughInteraction;

      [(UIView *)self addInteraction:v8];
    }
  }

  else if (passthroughInteraction)
  {
    [(UIView *)self removeInteraction:?];
    v9 = self->_passthroughInteraction;
    self->_passthroughInteraction = 0;
  }
}

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  presentingViewController = [(UIViewController *)self->_numericKeyboardViewController presentingViewController];
  if (presentingViewController)
  {
    v10 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePicker);
    _overlayPresentation = [WeakRetained _overlayPresentation];
    if (_overlayPresentation)
    {
      v10 = 0;
    }

    else
    {
      timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
      timeInputLabel2 = [(_UIDatePickerView *)self timeInputLabel];
      [timeInputLabel2 convertPoint:self fromView:{x, y}];
      v15 = [timeInputLabel hitTest:eventCopy withEvent:?];
      v10 = v15 == 0;
    }
  }

  return v10;
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize
{
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
  processTapOutside = [timeInputLabel processTapOutside];

  return processTapOutside;
}

- (void)_hardwareKeyboardAvailabilityChanged:(id)changed
{
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
  isFirstResponder = [timeInputLabel isFirstResponder];

  v6 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v6 _isHardwareKeyboardAvailable];

  if (_isHardwareKeyboardAvailable)
  {
    [(_UIDatePickerView *)self _dismissManualKeyboard];
  }

  if (isFirstResponder)
  {
    timeInputLabel2 = [(_UIDatePickerView *)self timeInputLabel];
    [timeInputLabel2 becomeFirstResponder];
  }
}

- (void)_dismissManualKeyboard
{
  numericKeyboardViewController = [(_UIDatePickerView *)self numericKeyboardViewController];

  if (numericKeyboardViewController)
  {
    *&self->_datePickerFlags |= 0x100u;
    numericKeyboardViewController2 = [(_UIDatePickerView *)self numericKeyboardViewController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43___UIDatePickerView__dismissManualKeyboard__block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [numericKeyboardViewController2 dismissViewControllerAnimated:1 completion:v9];

    numericKeyboardViewController3 = [(_UIDatePickerView *)self numericKeyboardViewController];
    presentationController = [numericKeyboardViewController3 presentationController];
    sourceView = [presentationController sourceView];

    if ([sourceView isFirstResponder])
    {
      [sourceView resignFirstResponder];
    }

    [(_UIDatePickerView *)self _disableCustomKeyboardIfNecessary];
    numericKeyboardViewController = self->_numericKeyboardViewController;
    self->_numericKeyboardViewController = 0;
  }
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  controllerCopy = controller;
  timeInputLabel = [(_UIDatePickerView *)self timeInputLabel];
  [timeInputLabel combinedTextRectFromLabels];
  rect->origin.x = v8;
  rect->origin.y = v9;
  rect->size.width = v10;
  rect->size.height = v11;

  [controllerCopy setPermittedArrowDirections:{-[_UIDatePickerView _permittedArrowDirectionForKeyboardPopover](self, "_permittedArrowDirectionForKeyboardPopover")}];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  sourceView = [dismiss sourceView];
  [sourceView resignFirstResponder];

  *&self->_datePickerFlags |= 0x100u;
}

- (void)setHighlightsToday:(BOOL)today
{
  if (today)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_datePickerFlags = *&self->_datePickerFlags & 0xFFFB | v3;
}

- (id)_selectedTextForCalendarUnit:(unint64_t)unit
{
  v4 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:unit];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    text = 0;
  }

  else
  {
    v6 = [(_UIDatePickerView *)self _viewForSelectedRowInComponent:v4];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      titleLabel = [v6 titleLabel];
      text = [titleLabel text];
    }

    else
    {
      text = 0;
    }
  }

  return text;
}

- (id)_labelTextForCalendarUnit:(unint64_t)unit
{
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    v5 = [(_UIDatePickerView *)self _labelForCalendarUnit:unit createIfNecessary:0];
    text = [v5 text];
  }

  else
  {
    text = 0;
  }

  return text;
}

- (int64_t)_amPmValue
{
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    return 0;
  }

  result = self->_expectedAMPM;
  if (result == -1)
  {
    v4 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:0x10000];

    return [(UIPickerView *)self selectedRowInComponent:v4];
  }

  return result;
}

- (BOOL)_updateDateOrTime
{
  [(_UIDatePickerMode *)self->_mode resetSelectedDateComponentsWithValuesUnderSelectionBars];

  return [(_UIDatePickerView *)self _updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:0x7FFFFFFFFFFFFFFFLL];
}

- (UIEdgeInsets)appliedInsetsToEdgeOfContent
{
  _style = [(UIPickerView *)self _style];
  [_style paddingAroundWheels];
  v5 = v4;

  [(UIPickerView *)self _selectionBarSideInset];
  v7 = v5 + v6;
  [(UIPickerView *)self _selectionBarSideInset];
  v9 = v8;
  v10 = 0.0;
  v11 = 0.0;
  v12 = v7;
  result.right = v9;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (int64_t)_selectionBarRowInComponent:(int64_t)component
{
  v3 = [(UIPickerView *)self tableViewForColumn:component];
  selectionBarRow = [v3 selectionBarRow];

  return selectionBarRow;
}

- (id)_minutesStringForHour:(int64_t)hour minutes:(int64_t)minutes
{
  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  localeIdentifier = [effectiveLocale localeIdentifier];

  v7 = @"min[plural]";
  if (minutes == 1)
  {
    v7 = @"min[singular]";
  }

  if (minutes)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"min[zero]";
  }

  v9 = _UILocalizedStringWithDefaultValueInLanguage(v8, localeIdentifier, @"min");

  return v9;
}

- (id)_hoursStringForHour:(int64_t)hour
{
  effectiveLocale = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  localeIdentifier = [effectiveLocale localeIdentifier];

  if (hour == 1)
  {
    v6 = @"hour[singular]";
    v7 = @"hour";
  }

  else
  {
    if (hour)
    {
      v6 = @"hour[plural]";
    }

    else
    {
      v6 = @"hour[zero]";
    }

    v7 = @"hours";
  }

  v8 = _UILocalizedStringWithDefaultValueInLanguage(v6, localeIdentifier, v7);

  return v8;
}

- (UIFont)_hrMinFont
{
  v2 = _hrMinFont___defaultHrMinFont;
  if (!_hrMinFont___defaultHrMinFont)
  {
    v3 = [off_1E70ECC18 boldSystemFontOfSize:17.0];
    v4 = _hrMinFont___defaultHrMinFont;
    _hrMinFont___defaultHrMinFont = v3;

    v2 = _hrMinFont___defaultHrMinFont;
  }

  return v2;
}

- (UIDatePicker)datePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);

  return WeakRetained;
}

@end