@interface _UIDatePickerView
- (BOOL)_updateDateOrTime;
- (BOOL)_updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:(int64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3;
- (BOOL)timeLabelShouldSuppressSoftwareKeyboard:(id)a3;
- (BOOL)wheelsTimeLabelShouldReceiveInteraction:(id)a3;
- (CGRect)_currentTimeInputLabelFrame;
- (UIDatePicker)datePicker;
- (UIEdgeInsets)appliedInsetsToEdgeOfContent;
- (UIFont)_hrMinFont;
- (_UIDatePickerView)initWithFrame:(CGRect)a3;
- (double)contentWidth;
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (double)timeInterval;
- (id)_componentsSelectedAfterEnforcingValidityOfComponents:(id)a3 withLastManipulatedComponent:(int64_t)a4;
- (id)_currentTimeFormat;
- (id)_hoursStringForHour:(int64_t)a3;
- (id)_labelForCalendarUnit:(unint64_t)a3 createIfNecessary:(BOOL)a4;
- (id)_labelTextForCalendarUnit:(unint64_t)a3;
- (id)_makeNewCalendarUnitLabel;
- (id)_minutesStringForHour:(int64_t)a3 minutes:(int64_t)a4;
- (id)_selectedTextForCalendarUnit:(unint64_t)a3;
- (id)_viewForSelectedRowInComponent:(int64_t)a3;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (int64_t)_amPmValue;
- (int64_t)_selectionBarRowInComponent:(int64_t)a3;
- (int64_t)keyboardTypeForTimeLabel:(id)a3;
- (unint64_t)_permittedArrowDirectionForKeyboardPopover;
- (void)_disableCustomKeyboardIfNecessary;
- (void)_dismissManualKeyboard;
- (void)_enableCustomKeyboardIfNecessary;
- (void)_fadeLabelForCalendarUnit:(unint64_t)a3 toText:(id)a4 animated:(BOOL)a5;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_hardwareKeyboardAvailabilityChanged:(id)a3;
- (void)_hidePickerViewSelectionBarForTimeInputLabel:(BOOL)a3;
- (void)_installTimeInputLabelIfNeeded;
- (void)_loadDateAnimated:(BOOL)a3;
- (void)_positionLabel:(id)a3 forCalendarUnit:(unint64_t)a4 relativeTo:(id)a5 order:(int64_t)a6;
- (void)_removeUnitLabels;
- (void)_selectRow:(int64_t)a3 inComponent:(int64_t)a4 animated:(BOOL)a5 notify:(BOOL)a6;
- (void)_setAllowsZeroTimeInterval:(BOOL)a3;
- (void)_setLabel:(id)a3 forCalendarUnit:(unint64_t)a4 animated:(BOOL)a5;
- (void)_setMode:(id)a3;
- (void)_setTextColor:(id)a3;
- (void)_uninstallTimeInputLabelIfNeeded;
- (void)_updateDateForNewDateRange;
- (void)_updateEnabledCellsIncludingWMDCells:(BOOL)a3;
- (void)_updateLabelColors;
- (void)_updateLabels:(BOOL)a3;
- (void)_updateLocaleTimeZoneOrCalendar;
- (void)_updateTextColorForCalendarUnitLabel:(id)a3;
- (void)_updateTimeInputLabelConfiguration;
- (void)_updateTimeInputLabelPosition;
- (void)_updateWheelsForUpdatedTextInputWithForcedUpdate:(BOOL)a3;
- (void)_updateWheelsLabelForCurrentDateComponents;
- (void)controlEventsGestureRecognizer:(id)a3 recognizedControlEvent:(unint64_t)a4 withEvent:(id)a5;
- (void)dealloc;
- (void)didChangeDateFrom:(id)a3 animated:(BOOL)a4;
- (void)didChangeMinuteInterval;
- (void)didChangeMode;
- (void)didChangeRoundsToMinuteInterval;
- (void)didChangeToday;
- (void)layoutSubviews;
- (void)pickerTableView:(id)a3 didChangeSelectionBarRowFrom:(int64_t)a4 to:(int64_t)a5;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)setData:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightsToday:(BOOL)a3;
- (void)setPassthroughInteractionEnabled:(BOOL)a3;
- (void)setTimeInterval:(double)a3;
- (void)timeLabelDidBecomeFirstResponder:(id)a3;
- (void)timeLabelDidBeginEditing:(id)a3;
- (void)timeLabelDidEndEditing:(id)a3;
- (void)timeLabelDidResignFirstResponder:(id)a3;
- (void)timeLabelWillBecomeFirstResponder:(id)a3;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIDatePickerView

- (_UIDatePickerView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = _UIDatePickerView;
  v3 = [(UIPickerView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v10 = [v9 userInterfaceIdiom];

    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:v4 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
    }

    [(_UIDatePickerView *)v4 _updateTimeInputLabelConfiguration];
    v12 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIDatePickerView;
  [(UIPickerView *)&v4 dealloc];
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerView;
  [(UIView *)&v6 willMoveToWindow:?];
  if (!a3)
  {
    [(_UIDatePickerView *)self _disableCustomKeyboardIfNecessary];
    v5 = [(_UIDatePickerView *)self timeInputLabel];
    [v5 resignFirstResponder];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerView;
  [(UIView *)&v6 willMoveToSuperview:?];
  if (!a3)
  {
    [(_UIDatePickerView *)self _disableCustomKeyboardIfNecessary];
    v5 = [(_UIDatePickerView *)self timeInputLabel];
    [v5 resignFirstResponder];
  }
}

- (void)_enableCustomKeyboardIfNecessary
{
  datePickerFlags = self->_datePickerFlags;
  if ((datePickerFlags & 0x20) == 0)
  {
    *&self->_datePickerFlags = datePickerFlags | 0x20;
    v5 = [(UIView *)self _window];
    v3 = [v5 windowScene];
    v4 = [v3 keyboardSceneDelegate];
    [v4 setAutomaticAppearanceEnabled:0];
  }
}

- (void)_disableCustomKeyboardIfNecessary
{
  datePickerFlags = self->_datePickerFlags;
  if ((datePickerFlags & 0x20) != 0)
  {
    *&self->_datePickerFlags = datePickerFlags & 0xFFDF;
    v6 = [(UIView *)self _window];
    v4 = [v6 windowScene];
    v5 = [v4 keyboardSceneDelegate];
    [v5 setAutomaticAppearanceEnabled:1];
  }
}

- (void)didChangeToday
{
  [(_UIDatePickerMode *)self->_mode setTodayDateComponents:0];
  [(UIPickerView *)self reloadAllPickerPieces];

  [(_UIDatePickerView *)self _updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:0x7FFFFFFFFFFFFFFFLL];
}

- (void)setData:(id)a3
{
  v50 = a3;
  v5 = self->_data;
  objc_storeStrong(&self->_data, a3);
  v6 = [(_UIDatePickerMode *)self->_mode datePickerMode];
  if (v6 != [v50 datePickerMode])
  {
    [(_UIDatePickerView *)self didChangeMode];
  }

  v7 = [(_UIDatePickerDataModel *)v5 effectiveLocale];
  v8 = [v50 effectiveLocale];
  v9 = v7;
  v10 = v8;
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

  v16 = [(_UIDatePickerDataModel *)v5 timeZone];
  v17 = [v50 timeZone];
  v14 = v16;
  v18 = v17;
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

  v23 = [(_UIDatePickerDataModel *)v5 effectiveCalendar];
  v24 = [v50 effectiveCalendar];
  v21 = v23;
  v25 = v24;
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
  v26 = [(_UIDatePickerDataModel *)v5 date];
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = v26;
  v28 = [(_UIDatePickerDataModel *)v5 date];
  v29 = [v50 date];
  v30 = v28;
  v31 = v29;
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
    v27 = [(_UIDatePickerDataModel *)v5 date];
    [(_UIDatePickerView *)self didChangeDateFrom:v27 animated:0];
    goto LABEL_39;
  }

LABEL_40:
  v34 = [(_UIDatePickerDataModel *)v5 minimumDate];
  v35 = [v50 minimumDate];
  v36 = v34;
  v37 = v35;
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

  v42 = [(_UIDatePickerDataModel *)v5 maximumDate];
  v43 = [v50 maximumDate];
  v40 = v42;
  v44 = v43;
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
  v46 = [(_UIDatePickerMode *)self->_mode minuteInterval];
  if (v46 != [v50 minuteInterval])
  {
    [(_UIDatePickerView *)self didChangeMinuteInterval];
  }

  timeInputLabel = self->_timeInputLabel;
  if (timeInputLabel)
  {
    v48 = [(_UIDatePickerCalendarTimeLabel *)timeInputLabel roundsToMinuteInterval];
    if (v48 != [(_UIDatePickerDataModel *)self->_data roundsToMinuteInterval])
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
  v3 = [(_UIDatePickerView *)self timeInputLabel];

  if (v3)
  {
    v5 = [(_UIDatePickerView *)self _currentTimeFormat];
    v4 = [(_UIDatePickerView *)self timeInputLabel];
    [v4 setTimeFormat:v5];
  }
}

- (void)didChangeDateFrom:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  self->_expectedAMPM = -1;
  if ((*&self->_datePickerFlags & 2) != 0)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__doneLoadingDateOrTime object:0];
  }

  if (v14 && [(_UIDatePickerMode *)self->_mode datePickerMode]== 2)
  {
    v6 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
    v7 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    v8 = [v6 components:16 fromDate:v14 toDate:v7 options:0];

    v9 = [v8 day];
    if (v9 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (v4)
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
    if (v4)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_datePickerFlags = *&self->_datePickerFlags & 0xFFFD | v13;
  }

  [(_UIDatePickerView *)self _loadDateAnimated:v4];
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

- (void)_setMode:(id)a3
{
  v11 = a3;
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
  v6 = [(_UIDatePickerMode *)self->_mode displayedCalendarUnits];
  if ((v6 & [v11 displayedCalendarUnits] & 0xFFFFFFFFFFFEFFFFLL) == 0)
  {

    v5 = 0;
  }

  v7 = 0.0;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {

    [(_UIDatePickerView *)self timeInterval];
    v7 = v8;
    v5 = 0;
  }

  objc_storeStrong(&self->_mode, a3);
  [(_UIDatePickerMode *)self->_mode setMinuteInterval:[(_UIDatePickerDataModel *)self->_data minuteInterval]];
  v9 = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  v10 = *&self->_datePickerFlags & 0xFFFE;
  if (v9 > 1)
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
    [(_UIDatePickerDataModel *)self->_data setDate:v5];
    [(_UIDatePickerView *)self didChangeDateFrom:0 animated:0];
  }

  [(_UIDatePickerView *)self _updateTimeInputLabelConfiguration];
}

- (void)didChangeMode
{
  v3 = [(_UIDatePickerDataModel *)self->_data datePickerMode];
  if (v3 != [(_UIDatePickerMode *)self->_mode datePickerMode])
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
  v3 = [(_UIDatePickerDataModel *)self->_data minuteInterval];
  [(_UIDatePickerMode *)self->_mode setMinuteInterval:v3];
  v4 = *&self->_datePickerFlags & 0xFFFE;
  if (v3 > 1)
  {
    ++v4;
  }

  *&self->_datePickerFlags = v4;
  [(_UIDatePickerCalendarTimeLabel *)self->_timeInputLabel setMinuteInterval:v3];
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

- (void)pickerTableView:(id)a3 didChangeSelectionBarRowFrom:(int64_t)a4 to:(int64_t)a5
{
  v27 = a3;
  v8 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32];
  if (![(_UIDatePickerMode *)self->_mode is24Hour])
  {
    v9 = [(_UIDatePickerMode *)self->_mode isTimeIntervalMode];
    if (a5 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0x7FFFFFFFFFFFFFFFLL && !v9 && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(UIPickerView *)self tableViewForColumn:v8];

      if (v11 == v27)
      {
        v12 = [(_UIDatePickerMode *)self->_mode hourForRow:a4];
        v13 = [(_UIDatePickerMode *)self->_mode hourForRow:a5];
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
    v17 = [(_UIDatePickerView *)self timeInputLabel];
    if (([v17 wheelsActive] & 1) == 0)
    {
      v18 = self;
      v19 = [(UIPickerView *)v18 numberOfComponents];
      if (v19 >= 1)
      {
        v20 = v19;
        v21 = [(UIPickerView *)v18 tableViewForColumn:0];
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

          v21 = [(UIPickerView *)v18 tableViewForColumn:v23];
          if (([v21 isDragging] & 1) == 0)
          {
            v24 = [v21 isDecelerating];
            v22 = v23 + 1;
            if ((v24 & 1) == 0)
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
    if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]!= 0x7FFFFFFFFFFFFFFFLL && ([(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]], v25 = objc_claimAutoreleasedReturnValue(), v25, v25 == v27))
    {
      [(_UIDatePickerWheelsTimeLabel *)self->_timeInputLabel updateHoursFromDatePicker:[(_UIDatePickerMode *)self->_mode valueForRow:a5 inCalendarUnit:32] wheelsChanged:1];
    }

    else if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]];

      if (v26 == v27)
      {
        [(_UIDatePickerWheelsTimeLabel *)self->_timeInputLabel updateMinutesFromDatePicker:[(_UIDatePickerMode *)self->_mode valueForRow:a5 inCalendarUnit:64] wheelsChanged:1];
      }
    }
  }
}

- (void)_loadDateAnimated:(BOOL)a3
{
  loadingDate = self->_loadingDate;
  if (loadingDate <= 0)
  {
    v4 = a3;
    self->_loadingDate = loadingDate + 1;
    mode = self->_mode;
    v7 = [(_UIDatePickerDataModel *)self->_data effectiveDate];
    [(_UIDatePickerMode *)mode loadDate:v7 animated:v4];

    --self->_loadingDate;
  }
}

- (void)_selectRow:(int64_t)a3 inComponent:(int64_t)a4 animated:(BOOL)a5 notify:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerView;
  [(UIPickerView *)&v7 _selectRow:a3 inComponent:a4 animated:a5 notify:a6];
  if (!self->_loadingDate)
  {
    [(_UIDatePickerView *)self _updateEnabledCellsIncludingWMDCells:1];
  }
}

- (id)_componentsSelectedAfterEnforcingValidityOfComponents:(id)a3 withLastManipulatedComponent:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIDatePickerMode *)self->_mode areValidDateComponents:v6 comparingUnits:[(_UIDatePickerMode *)self->_mode displayedCalendarUnits]];
  v8 = v6;
  v9 = v8;
  if (!v7)
  {
    v9 = [(_UIDatePickerMode *)self->_mode dateComponentsByRestrictingSelectedComponents:v8 withLastManipulatedColumn:a4];
  }

  return v9;
}

- (BOOL)_updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:(int64_t)a3
{
  if ((*&self->_datePickerFlags & 2) != 0)
  {
    return 0;
  }

  v5 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  v6 = [(_UIDatePickerView *)self _componentsSelectedAfterEnforcingValidityOfComponents:v5 withLastManipulatedComponent:a3];
  v7 = [(_UIDatePickerDataModel *)self->_data lastSelectedDateComponents];
  v8 = [v7 era];

  v9 = _UIDatePickerCompareDateComponents(v5, v6, [(_UIDatePickerMode *)self->_mode displayedCalendarUnits]);
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

- (void)_updateLabels:(BOOL)a3
{
  v3 = a3;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    v5 = [(_UIDatePickerView *)self _selectedHourForColumn:0];
    v7 = [(_UIDatePickerView *)self _hoursStringForHour:v5];
    [(_UIDatePickerView *)self _fadeLabelForCalendarUnit:32 toText:v7 animated:v3];
    v6 = [(_UIDatePickerView *)self _minutesStringForHour:v5 minutes:[(_UIDatePickerView *)self _selectedMinuteForColumn:1]];
    [(_UIDatePickerView *)self _fadeLabelForCalendarUnit:64 toText:v6 animated:v3];
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

- (void)_setTextColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIDatePickerView;
  [(UIPickerView *)&v4 _setTextColor:a3];
  [(_UIDatePickerView *)self _updateLabelColors];
}

- (id)_labelForCalendarUnit:(unint64_t)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  if (![(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    goto LABEL_9;
  }

  if (a3 == 64)
  {
    p_minuteLabel = &self->_minuteLabel;
    minuteLabel = self->_minuteLabel;
    if (minuteLabel)
    {
      v14 = 1;
    }

    else
    {
      v14 = !v4;
    }

    if (v14)
    {
      goto LABEL_16;
    }

    v10 = [(_UIDatePickerView *)self _minutesStringForHour:0 minutes:0];
    v11 = self;
    v12 = 64;
    goto LABEL_15;
  }

  if (a3 != 32)
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
    v9 = !v4;
  }

  if (v9)
  {
    goto LABEL_16;
  }

  v10 = [(_UIDatePickerView *)self _hoursStringForHour:0];
  v11 = self;
  v12 = 32;
LABEL_15:
  [(_UIDatePickerView *)v11 _fadeLabelForCalendarUnit:v12 toText:v10 animated:0];

  minuteLabel = *p_minuteLabel;
LABEL_16:
  v13 = minuteLabel;
LABEL_17:

  return v13;
}

- (void)_setLabel:(id)a3 forCalendarUnit:(unint64_t)a4 animated:(BOOL)a5
{
  v11 = a3;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    if (a4 == 64)
    {
      v9 = 576;
    }

    else
    {
      if (a4 != 32)
      {
        goto LABEL_10;
      }

      v9 = 568;
    }

    v10 = (&self->super.super.super.super.isa + v9);
    if (*v10 != v11)
    {
      if (!a5)
      {
        [*v10 removeFromSuperview];
      }

      objc_storeStrong(v10, a3);
    }
  }

LABEL_10:
}

- (void)_positionLabel:(id)a3 forCalendarUnit:(unint64_t)a4 relativeTo:(id)a5 order:(int64_t)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  [v10 sizeToFit];
  [v10 frame];
  v13 = v12;
  v15 = v14;
  if (v11)
  {
    [v11 frame];
    v17 = v16;
    v19 = v18;
    if ([(UIView *)self _shouldReverseLayoutDirection])
    {
      [v11 frame];
      v17 = v17 + v20 - v13;
    }

    if (v10 != v11)
    {
      [(UIView *)self _addSubview:v10 positioned:a6 relativeTo:v11];
    }
  }

  else
  {
    v21 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:a4];
    v22 = [(UIPickerView *)self tableViewForColumn:v21];
    [(UIPickerView *)self _effectiveTableViewFrameForColumn:v21];
    v23 = objc_alloc_init(off_1E70ECB98);
    [v23 setWantsBaselineOffset:1];
    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v38 = *off_1E70EC918;
    v25 = [(_UIDatePickerMode *)self->_mode fontForCalendarUnit:a4];
    v39[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v27 = [v24 initWithString:@"00" attributes:v26];

    [v27 boundingRectWithSize:1 options:v23 context:{1.79769313e308, 1.79769313e308}];
    v28 = [(_UIDatePickerView *)self _contentViewForSizingLabelForPositioningInComponent:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:a4]];
    v29 = [v28 titleLabel];
    [(UIView *)self bounds];
    v31 = v30;
    [v22 rowHeight];
    v33 = v32;
    [(UIView *)self bounds];
    [v28 setFrame:{0.0, round(v35 + (v34 - v33) * 0.5), v31, v33}];
    [v28 layoutIfNeeded];
    [v29 frame];
    [v29 _baselineOffsetFromBottom];
    [v10 _baselineOffsetFromBottom];
    [(UIView *)self _shouldReverseLayoutDirection];
    UIRoundToViewScale(v10);
    v17 = v36;
    UIRoundToViewScale(v10);
    v19 = v37;
    [(UIView *)self _addSubview:v10 positioned:a6 relativeTo:v22];
  }

  [v10 setFrame:{v17, v19, v13, v15}];
}

- (id)_makeNewCalendarUnitLabel
{
  v3 = [UILabel alloc];
  v4 = [(UILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = [(_UIDatePickerView *)self _hrMinFont];
  [(UILabel *)v4 setFont:v5];

  [(_UIDatePickerView *)self _updateTextColorForCalendarUnitLabel:v4];
  v6 = [(_UIDatePickerView *)self shadowColor];
  [(UILabel *)v4 setShadowColor:v6];

  [(UIView *)v4 setBackgroundColor:0];
  [(UIView *)v4 setOpaque:0];
  v7 = [(_UIDatePickerView *)self shadowColor];
  [(UILabel *)v4 setShadowColor:v7];

  [(UILabel *)v4 setShadowOffset:0.0, 1.0];

  return v4;
}

- (void)_updateTextColorForCalendarUnitLabel:(id)a3
{
  v4 = a3;
  v5 = [(UIPickerView *)self _textColor];
  [v4 setTextColor:v5];
}

- (void)_fadeLabelForCalendarUnit:(unint64_t)a3 toText:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(_UIDatePickerView *)self _labelForCalendarUnit:a3 createIfNecessary:0];
  v10 = [v9 text];
  v11 = [v10 isEqualToString:v8];

  v12 = v9;
  if ((v11 & 1) == 0)
  {
    if (v5)
    {
      v13 = [(_UIDatePickerView *)self _makeNewCalendarUnitLabel];

      [v13 setText:v8];
      [(_UIDatePickerView *)self _positionLabel:v13 forCalendarUnit:a3 relativeTo:v9 order:-3];
      [(UIView *)self _addSubview:v13 positioned:-3 relativeTo:v9];
      [v13 setAlpha:0.0];
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
      v12 = v13;
      v16 = v12;
      [UIView animateWithDuration:0x20000 delay:v15 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      v12 = v9;
      if (!v9)
      {
        v12 = [(_UIDatePickerView *)self _makeNewCalendarUnitLabel];
      }

      [v12 setText:v8];
      [(_UIDatePickerView *)self _positionLabel:v12 forCalendarUnit:a3 relativeTo:v9 order:-3];
    }
  }

  v14 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:a3]];
  [(UIView *)self _addSubview:v12 positioned:-2 relativeTo:v14];
  [(_UIDatePickerView *)self _setLabel:v12 forCalendarUnit:a3 animated:v5];
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  [(_UIDatePickerDataModel *)self->_data setDate:0, a4];
  v7 = [(_UIDatePickerMode *)self->_mode hasSelectedDateComponents];
  v22 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  [(_UIDatePickerMode *)self->_mode updateSelectedDateComponentsWithNewValueInComponent:a5];
  if (v7)
  {
    v8 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
    v9 = [v22 isEqual:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  v10 = self;
  v11 = [(UIPickerView *)v10 numberOfComponents];
  if (v11 >= 1)
  {
    v12 = v11;
    v13 = [(UIPickerView *)v10 tableViewForColumn:0];
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

      v13 = [(UIPickerView *)v10 tableViewForColumn:v15];
      if (([v13 isDragging] & 1) == 0)
      {
        v16 = [v13 isDecelerating];
        v14 = v15 + 1;
        if ((v16 & 1) == 0)
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
  v17 = [(_UIDatePickerView *)v10 _updatedLastSelectedComponentsByValidatingSelectedDateWithLastManipulatedComponent:a5]| v9;
  [(_UIDatePickerView *)v10 _updateLabels:1];
  if (v17)
  {
    WeakRetained = objc_loadWeakRetained(&v10->_datePicker);
    [WeakRetained _emitValueChanged];
  }

  v19 = [(_UIDatePickerView *)v10 timeInputLabel];
  v20 = [v19 wheelsActive];

  if (v20)
  {
    v21 = [(_UIDatePickerView *)v10 timeInputLabel];
    [v21 endEditingWheels];
  }

  else
  {
    [(_UIDatePickerView *)v10 _updateWheelsLabelForCurrentDateComponents];
  }

LABEL_20:
}

- (void)_updateEnabledCellsIncludingWMDCells:(BOOL)a3
{
  v5 = [(UIPickerView *)self numberOfComponents];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
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
          v13 = v8 != 536 || a3;
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

- (void)setTimeInterval:(double)a3
{
  v4 = vcvtmd_s64_f64(fmin(fmax(a3, 0.0), 86400.0));
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v9 = [v5 components:30 fromDate:v6];

  [v9 setHour:v4 / 0xE10];
  [v9 setMinute:v4 % 0xE10 / 0x3C];
  v7 = [(_UIDatePickerDataModel *)self->_data effectiveCalendar];
  v8 = [v7 dateFromComponents:v9];
  [(_UIDatePickerDataModel *)self->_data setDate:v8];

  [(_UIDatePickerView *)self didChangeDateFrom:0 animated:0];
}

- (double)timeInterval
{
  v2 = [(_UIDatePickerDataModel *)self->_data lastSelectedDateComponents];
  v3 = 60 * [v2 minute];
  v4 = v3 + 3600 * [v2 hour];
  v5 = (v4 + [v2 second]);

  return v5;
}

- (double)contentWidth
{
  v3 = [(UIView *)self traitCollection];
  v4 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v3 userInterfaceIdiom]);

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

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  v6 = [(UIView *)self traitCollection];
  v7 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v6 userInterfaceIdiom]);

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

  [(_UIDatePickerMode *)self->_mode widthForComponent:a4 maxWidth:v13];
  v15 = v14;

  return v15;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v8 = [(_UIDatePickerMode *)self->_mode viewForRow:a4 inComponent:a5 reusingView:a6];
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    v9 = [(_UIDatePickerMode *)self->_mode calendarUnitForComponent:a5];
    if (v9 == 64 || v9 == 32)
    {
      v10 = [(_UIDatePickerView *)self _labelForCalendarUnit:v9 createIfNecessary:1];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(UIPickerView *)self tableViewForColumn:a5];
      [(UIView *)self convertRect:v19 toView:v12, v14, v16, v18];
      v21 = v20;

      [v8 setTitleLabelMaxX:fabs(v21 + -3.0)];
    }
  }

  return v8;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v4 = [(UIPickerView *)self numberOfComponents];
    if (v4 >= 1)
    {
      v5 = v4;
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

- (void)_setAllowsZeroTimeInterval:(BOOL)a3
{
  self->_allowsZeroTimeInterval = a3;
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {

    [(UIPickerView *)self reloadAllComponents];
  }
}

- (id)_viewForSelectedRowInComponent:(int64_t)a3
{
  v5 = [(UIPickerView *)self selectedRowInComponent:?];
  if (v5 < 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [(UIPickerView *)self viewForRow:v5 forComponent:a3];
    if (!v7)
    {
      [(_UIDatePickerView *)self didChangeDateFrom:0 animated:0];
      v7 = [(UIPickerView *)self viewForRow:v6 forComponent:a3];
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

- (void)_hidePickerViewSelectionBarForTimeInputLabel:(BOOL)a3
{
  v3 = a3;
  if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:32]];
    [v5 setHidden:v3];
  }

  if ([(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(UIPickerView *)self tableViewForColumn:[(_UIDatePickerMode *)self->_mode componentForCalendarUnit:64]];
    [v6 setHidden:v3];
  }

  if (v3)
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
  v3 = [(_UIDatePickerDataModel *)self->_data formattingCalendar];
  v4 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  v5 = [_UIDatePickerCalendarTimeFormat formatWithCalendar:v3 locale:v4 followsSystemHourCycle:[(_UIDatePickerDataModel *)self->_data followsSystemHourCycle]];

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
    v4 = [(_UIDatePickerView *)self _currentTimeFormat];
    v5 = [(_UIDatePickerWheelsTimeLabel *)v3 initWithTimeFormat:v4 minuteInterval:[(_UIDatePickerDataModel *)self->_data minuteInterval]];

    [(_UIDatePickerWheelsTimeLabel *)v5 setWheelsDelegate:self];
    data = self->_data;
    if (data)
    {
      [(_UIDatePickerCalendarTimeLabel *)v5 setRoundsToMinuteInterval:[(_UIDatePickerDataModel *)data roundsToMinuteInterval]];
    }

    v7 = [(UIPickerView *)self _style];
    v8 = [(UIView *)self traitCollection];
    v9 = [v7 centerCellDigitFontWithTraitCollection:v8];
    [(_UIDatePickerWheelsTimeLabel *)v5 setFont:v9];

    [(_UIDatePickerCalendarTimeLabel *)v5 setDelegate:self];
    [(_UIDatePickerView *)self _currentTimeInputLabelFrame];
    [(UIView *)v5 setFrame:?];
    [(UIView *)v5 setAutoresizingMask:42];
    [(UIView *)self center];
    [(UIView *)v5 setCenter:?];
    v10 = [(_UIDatePickerWheelsTimeLabel *)v5 controlEventsGestureRecognizer];
    [v10 setDelegate:self];

    v11 = [(_UIDatePickerWheelsTimeLabel *)v5 controlEventsGestureRecognizer];
    [(UIView *)self addGestureRecognizer:v11];

    v12 = objc_opt_new();
    [(_UIControlEventsGestureRecognizer *)v12 setControlEventsDelegate:self];
    [(UIGestureRecognizer *)v12 setDelegate:self];
    [(UIView *)self addGestureRecognizer:v12];
    controlEventsGestureRecognizer = self->_controlEventsGestureRecognizer;
    self->_controlEventsGestureRecognizer = v12;
    v14 = v12;

    v16 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
    -[_UIDatePickerWheelsTimeLabel updateHoursFromDatePicker:wheelsChanged:](v5, "updateHoursFromDatePicker:wheelsChanged:", [v16 hour], 0);
    -[_UIDatePickerWheelsTimeLabel updateMinutesFromDatePicker:wheelsChanged:](v5, "updateMinutesFromDatePicker:wheelsChanged:", [v16 minute], 0);
    timeInputLabel = self->_timeInputLabel;
    self->_timeInputLabel = v5;

    [(_UIDatePickerView *)self _updateTimeInputLabelPosition];
  }
}

- (void)_uninstallTimeInputLabelIfNeeded
{
  v3 = [(_UIDatePickerView *)self timeInputLabel];

  if (v3)
  {
    v4 = [(_UIDatePickerView *)self timeInputLabel];
    v5 = [v4 controlEventsGestureRecognizer];
    [(UIView *)self removeGestureRecognizer:v5];

    v6 = [(_UIDatePickerView *)self timeInputLabel];
    [v6 removeFromSuperview];

    timeInputLabel = self->_timeInputLabel;
    self->_timeInputLabel = 0;
  }

  v8 = [(_UIDatePickerView *)self controlEventsGestureRecognizer];

  if (v8)
  {
    v9 = [(_UIDatePickerView *)self controlEventsGestureRecognizer];
    [(UIView *)self removeGestureRecognizer:v9];

    controlEventsGestureRecognizer = self->_controlEventsGestureRecognizer;
    self->_controlEventsGestureRecognizer = 0;
  }

  [(_UIDatePickerView *)self setPassthroughInteractionEnabled:0];
}

- (void)controlEventsGestureRecognizer:(id)a3 recognizedControlEvent:(unint64_t)a4 withEvent:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (a4 <= 127)
  {
    if (a4 == 1)
    {
LABEL_8:
      WeakRetained = objc_loadWeakRetained(&self->_datePicker);
      v10 = [WeakRetained _overlayPresentation];
      [v10 setDefersAutomaticKeyboardAvoidanceAdjustments:a4];

      goto LABEL_9;
    }

    if (a4 != 64)
    {
      goto LABEL_9;
    }

LABEL_7:
    a4 = 0;
    goto LABEL_8;
  }

  if (a4 == 256 || a4 == 128)
  {
    goto LABEL_7;
  }

LABEL_9:
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(_UIDatePickerView *)self controlEventsGestureRecognizer];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIDatePickerView *)self timeInputLabel];
  v9 = [v8 controlEventsGestureRecognizer];
  v10 = [v6 isEqual:v9];

  if (v10 && [(UIPickerView *)self numberOfComponents]>= 1)
  {
    v11 = 0;
    do
    {
      v12 = [(UIPickerView *)self tableViewForColumn:v11];
      v13 = [v12 panGestureRecognizer];

      v14 = v13 == v7;
      if (v13 == v7)
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(_UIDatePickerView *)self timeInputLabel];
  v7 = [(_UIDatePickerView *)self timeInputLabel];
  [v5 locationInView:v7];
  v8 = [v6 pointInside:0 withEvent:?];

  datePickerFlags = self->_datePickerFlags;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = datePickerFlags & 0x80;
    v11 = [v5 view];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & (v8 | (v10 >> 7));
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(UIPickerView *)v8 numberOfComponents];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = [(UIPickerView *)v8 tableViewForColumn:0];
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

      v11 = [(UIPickerView *)v8 tableViewForColumn:v14];
      if (([v11 isDragging] & 1) == 0)
      {
        v15 = [v11 isDecelerating];
        v13 = v14 + 1;
        if ((v15 & 1) == 0)
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
  v16 = [(_UIDatePickerView *)v8 timeInputLabel];
  v17 = [v16 controlEventsGestureRecognizer];
  v18 = [v6 isEqual:v17];

  if (!v18)
  {
    v12 = 1;
    goto LABEL_16;
  }

  v19 = [(_UIDatePickerView *)v8 timeInputLabel];
  [v7 locationInView:v19];
  v21 = v20;
  v23 = v22;

  v8 = [(_UIDatePickerView *)v8 timeInputLabel];
  v12 = [(UIView *)v8 pointInside:0 withEvent:v21, v23];
LABEL_14:

LABEL_16:
  return v12;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerView *)self timeInputLabel];
  v6 = [v5 controlEventsGestureRecognizer];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v9 = [(_UIDatePickerView *)self timeInputLabel];
    v8 = [v9 controlEventsGestureRecognizer];
    [v8 gestureRecognizerFailed];
  }
}

- (void)_updateWheelsForUpdatedTextInputWithForcedUpdate:(BOOL)a3
{
  v39 = a3;
  v40 = self;
  v3 = [(UIPickerView *)v40 numberOfComponents];
  v4 = v40;
  if (v3 < 1)
  {
    goto LABEL_10;
  }

  v5 = v3;
  v6 = [(UIPickerView *)v40 tableViewForColumn:0];
  if (([v6 isDragging] & 1) == 0 && (objc_msgSend(v6, "isDecelerating") & 1) == 0)
  {
    v7 = 1;
    while (1)
    {
      v8 = v7;

      v4 = v40;
      if (v5 == v8)
      {
        break;
      }

      v6 = [(UIPickerView *)v40 tableViewForColumn:v8];
      if (([v6 isDragging] & 1) == 0)
      {
        v9 = [v6 isDecelerating];
        v7 = v8 + 1;
        if ((v9 & 1) == 0)
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
    v10 = v40->_timeInputLabel;
    v11 = [(_UIDatePickerCalendarTimeLabel *)v10 timeFormat];
    v12 = [v11 hourFormatter];
    v13 = [(_UIDatePickerCalendarTimeLabel *)v10 hourText];
    v14 = [v12 numberFromString:v13];
    v15 = [v14 integerValue];

    v16 = [(_UIDatePickerCalendarTimeLabel *)v10 timeFormat];
    v17 = [v16 minuteFormatter];
    v18 = [(_UIDatePickerCalendarTimeLabel *)v10 minuteText];
    v19 = [v17 numberFromString:v18];
    v20 = [v19 integerValue];

    v6 = [(_UIDatePickerDataModel *)v40->_data effectiveDate];
    v21 = [(_UIDatePickerMode *)v40->_mode selectedDateComponents];
    Value = _UIDateComponentsGetValue(v21, 0x10000);
    v23 = [v21 copy];
    [v23 setHour:v15];
    if (v39 || [(_UIDatePickerMode *)v40->_mode areValidDateComponents:v23 comparingUnits:-193])
    {
      [v21 setHour:v15];
    }

    if (v39 || v20 <= 0x3B)
    {
      if ([(_UIDatePickerDataModel *)v40->_data roundsToMinuteInterval])
      {
        v24 = [(_UIDatePickerDataModel *)v40->_data minuteInterval];
        v20 = (floor(v20 / v24) * v24);
      }

      [v21 setMinute:v20];
    }

    if (![(_UIDatePickerMode *)v40->_mode is24Hour])
    {
      _UIDateComponentsSetValue(v21, 0x10000, Value);
    }

    v25 = [(_UIDatePickerDataModel *)v40->_data effectiveCalendar];
    v26 = [v25 dateFromComponents:v21];
    [(_UIDatePickerDataModel *)v40->_data setDate:v26];

    WeakRetained = v40;
    v28 = [(UIPickerView *)WeakRetained numberOfComponents];
    if (v28 >= 1)
    {
      v29 = v28;
      v30 = [(UIPickerView *)WeakRetained tableViewForColumn:0];
      v31 = [v30 panGestureRecognizer];

      v32 = [v31 state];
      if (v32)
      {
LABEL_34:

        goto LABEL_35;
      }

      v33 = 1;
      while (v29 != v33)
      {
        v34 = [(UIPickerView *)WeakRetained tableViewForColumn:v33];
        v35 = [v34 panGestureRecognizer];

        v36 = [v35 state];
        ++v33;
        if (v36)
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
    v37 = [(_UIDatePickerDataModel *)v40->_data effectiveDate];
    v38 = [v37 isEqual:v6];

    if (v39)
    {
      if ((v38 & 1) == 0)
      {
        [(_UIDatePickerView *)WeakRetained didChangeDateFrom:v6 animated:1];
LABEL_33:
        WeakRetained = objc_loadWeakRetained(&WeakRetained->_datePicker);
        [(_UIDatePickerView *)WeakRetained _emitValueChanged];
        goto LABEL_34;
      }
    }

    else
    {
      *&WeakRetained->_datePickerFlags |= 0x88u;
      [(_UIDatePickerView *)WeakRetained didChangeDateFrom:v6 animated:1];
      *&WeakRetained->_datePickerFlags &= ~8u;
      if ((v38 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:

    v40 = v10;
  }
}

- (int64_t)keyboardTypeForTimeLabel:(id)a3
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 127;
  }

  else
  {
    return 4;
  }
}

- (BOOL)timeLabelShouldSuppressSoftwareKeyboard:(id)a3
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  return (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)timeLabelWillBecomeFirstResponder:(id)a3
{
  v8 = a3;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = +[UIDevice currentDevice];
    if ([v6 _isHardwareKeyboardAvailable])
    {

      goto LABEL_9;
    }

    if ([v8 isFirstResponder])
    {
      v7 = [(UIViewController *)self->_numericKeyboardViewController presentingViewController];

      if (v7)
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
  v3 = [(_UIDatePickerView *)self timeInputLabel];
  v4 = [v3 window];

  v5 = [(_UIDatePickerView *)self timeInputLabel];
  v6 = [(_UIDatePickerView *)self timeInputLabel];
  [v6 combinedTextRectFromLabels];
  [v5 convertRect:v4 toView:?];
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
  [v4 bounds];
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

- (void)timeLabelDidBecomeFirstResponder:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_datePickerFlags & 0x10) != 0)
  {
    numericKeyboardViewController = self->_numericKeyboardViewController;
    if (numericKeyboardViewController)
    {
      v6 = [(UIViewController *)numericKeyboardViewController popoverPresentationController];
      [v6 setSourceView:v4];
      [v4 combinedTextRectFromLabels];
      [v6 setSourceRect:?];
      [v6 setPermittedArrowDirections:{-[_UIDatePickerView _permittedArrowDirectionForKeyboardPopover](self, "_permittedArrowDirectionForKeyboardPopover")}];
    }

    else
    {
      v7 = objc_opt_new();
      v8 = self->_numericKeyboardViewController;
      self->_numericKeyboardViewController = v7;

      v6 = [(UIViewController *)self->_numericKeyboardViewController popoverPresentationController];
      [v6 setSourceView:v4];
      [v4 combinedTextRectFromLabels];
      [v6 setSourceRect:?];
      v13[0] = v4;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v6 setPassthroughViews:v9];

      [v6 _setShouldPreserveFirstResponder:0];
      [v6 _setAdaptivityEnabled:0];
      [v6 setPopoverLayoutMargins:{2.22044605e-16, 2.22044605e-16, 2.22044605e-16, 2.22044605e-16}];
      [v6 setPermittedArrowDirections:{-[_UIDatePickerView _permittedArrowDirectionForKeyboardPopover](self, "_permittedArrowDirectionForKeyboardPopover")}];
      [v6 setDelegate:self];
      v10 = [(UIView *)self _viewControllerForAncestor];
      *&self->_datePickerFlags |= 0x100u;
      v11 = self->_numericKeyboardViewController;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54___UIDatePickerView_timeLabelDidBecomeFirstResponder___block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [v10 presentViewController:v11 animated:1 completion:v12];
    }

    *&self->_datePickerFlags &= ~0x10u;
  }
}

- (void)timeLabelDidResignFirstResponder:(id)a3
{
  if ((*&self->_datePickerFlags & 0x10) == 0)
  {
    [(_UIDatePickerView *)self _dismissManualKeyboard];
  }
}

- (void)timeLabelDidBeginEditing:(id)a3
{
  [(_UIDatePickerView *)self setPassthroughInteractionEnabled:1];
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);
  [WeakRetained _emitBeginEditing];
}

- (void)timeLabelDidEndEditing:(id)a3
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
  v4 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  -[_UIDatePickerWheelsTimeLabel updateHoursFromDatePicker:wheelsChanged:](timeInputLabel, "updateHoursFromDatePicker:wheelsChanged:", [v4 hour], 0);

  v5 = self->_timeInputLabel;
  v6 = [(_UIDatePickerMode *)self->_mode selectedDateComponents];
  -[_UIDatePickerWheelsTimeLabel updateMinutesFromDatePicker:wheelsChanged:](v5, "updateMinutesFromDatePicker:wheelsChanged:", [v6 minute], 0);
}

- (BOOL)wheelsTimeLabelShouldReceiveInteraction:(id)a3
{
  v3 = self;
  v4 = [(UIPickerView *)v3 numberOfComponents];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = [(UIPickerView *)v3 tableViewForColumn:0];
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

      v6 = [(UIPickerView *)v3 tableViewForColumn:v9];
      if (([v6 isDragging] & 1) == 0)
      {
        v10 = [v6 isDecelerating];
        v8 = v9 + 1;
        if ((v10 & 1) == 0)
        {
          continue;
        }
      }

      if (v5 > v9)
      {
        return 0;
      }

      return (*&v3->_datePickerFlags & 0x100) == 0;
    }
  }

  return (*&v3->_datePickerFlags & 0x100) == 0;
}

- (void)setPassthroughInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  passthroughInteraction = self->_passthroughInteraction;
  if (v3)
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

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(UIViewController *)self->_numericKeyboardViewController presentingViewController];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_datePicker);
    v12 = [WeakRetained _overlayPresentation];
    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v13 = [(_UIDatePickerView *)self timeInputLabel];
      v14 = [(_UIDatePickerView *)self timeInputLabel];
      [v14 convertPoint:self fromView:{x, y}];
      v15 = [v13 hitTest:v8 withEvent:?];
      v10 = v15 == 0;
    }
  }

  return v10;
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3
{
  v3 = [(_UIDatePickerView *)self timeInputLabel];
  v4 = [v3 processTapOutside];

  return v4;
}

- (void)_hardwareKeyboardAvailabilityChanged:(id)a3
{
  v4 = [(_UIDatePickerView *)self timeInputLabel];
  v5 = [v4 isFirstResponder];

  v6 = +[UIDevice currentDevice];
  v7 = [v6 _isHardwareKeyboardAvailable];

  if (v7)
  {
    [(_UIDatePickerView *)self _dismissManualKeyboard];
  }

  if (v5)
  {
    v8 = [(_UIDatePickerView *)self timeInputLabel];
    [v8 becomeFirstResponder];
  }
}

- (void)_dismissManualKeyboard
{
  v3 = [(_UIDatePickerView *)self numericKeyboardViewController];

  if (v3)
  {
    *&self->_datePickerFlags |= 0x100u;
    v4 = [(_UIDatePickerView *)self numericKeyboardViewController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43___UIDatePickerView__dismissManualKeyboard__block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [v4 dismissViewControllerAnimated:1 completion:v9];

    v5 = [(_UIDatePickerView *)self numericKeyboardViewController];
    v6 = [v5 presentationController];
    v7 = [v6 sourceView];

    if ([v7 isFirstResponder])
    {
      [v7 resignFirstResponder];
    }

    [(_UIDatePickerView *)self _disableCustomKeyboardIfNecessary];
    numericKeyboardViewController = self->_numericKeyboardViewController;
    self->_numericKeyboardViewController = 0;
  }
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v12 = a3;
  v7 = [(_UIDatePickerView *)self timeInputLabel];
  [v7 combinedTextRectFromLabels];
  a4->origin.x = v8;
  a4->origin.y = v9;
  a4->size.width = v10;
  a4->size.height = v11;

  [v12 setPermittedArrowDirections:{-[_UIDatePickerView _permittedArrowDirectionForKeyboardPopover](self, "_permittedArrowDirectionForKeyboardPopover")}];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = [a3 sourceView];
  [v4 resignFirstResponder];

  *&self->_datePickerFlags |= 0x100u;
}

- (void)setHighlightsToday:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_datePickerFlags = *&self->_datePickerFlags & 0xFFFB | v3;
}

- (id)_selectedTextForCalendarUnit:(unint64_t)a3
{
  v4 = [(_UIDatePickerMode *)self->_mode componentForCalendarUnit:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(_UIDatePickerView *)self _viewForSelectedRowInComponent:v4];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 titleLabel];
      v5 = [v7 text];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_labelTextForCalendarUnit:(unint64_t)a3
{
  if ([(_UIDatePickerMode *)self->_mode isTimeIntervalMode])
  {
    v5 = [(_UIDatePickerView *)self _labelForCalendarUnit:a3 createIfNecessary:0];
    v6 = [v5 text];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
  v3 = [(UIPickerView *)self _style];
  [v3 paddingAroundWheels];
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

- (int64_t)_selectionBarRowInComponent:(int64_t)a3
{
  v3 = [(UIPickerView *)self tableViewForColumn:a3];
  v4 = [v3 selectionBarRow];

  return v4;
}

- (id)_minutesStringForHour:(int64_t)a3 minutes:(int64_t)a4
{
  v5 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  v6 = [v5 localeIdentifier];

  v7 = @"min[plural]";
  if (a4 == 1)
  {
    v7 = @"min[singular]";
  }

  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"min[zero]";
  }

  v9 = _UILocalizedStringWithDefaultValueInLanguage(v8, v6, @"min");

  return v9;
}

- (id)_hoursStringForHour:(int64_t)a3
{
  v4 = [(_UIDatePickerDataModel *)self->_data effectiveLocale];
  v5 = [v4 localeIdentifier];

  if (a3 == 1)
  {
    v6 = @"hour[singular]";
    v7 = @"hour";
  }

  else
  {
    if (a3)
    {
      v6 = @"hour[plural]";
    }

    else
    {
      v6 = @"hour[zero]";
    }

    v7 = @"hours";
  }

  v8 = _UILocalizedStringWithDefaultValueInLanguage(v6, v5, v7);

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