@interface _UIDatePickerCalendarTimeView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_UIDatePickerCalendarTimeView)initWithFrame:(CGRect)a3;
- (_UIDatePickerCalendarTimeViewDelegate)delegate;
- (id)createDatePickerForCompactTimeLabel:(id)a3;
- (void)_reload;
- (void)_reloadDateFormatters;
- (void)_setupViewHierarchy;
- (void)_updateClockLayout;
- (void)_updateFonts;
- (void)_updateTextFieldsFromSelectedDateComponents;
- (void)_updateTimeLabelTitleIfNeeded;
- (void)compactTimeLabel:(id)a3 didSelectTime:(id)a4;
- (void)compactTimeLabelDidBeginEditing:(id)a3;
- (void)compactTimeLabelDidEndEditing:(id)a3;
- (void)compactTimeLabelWillBecomeFirstResponder:(id)a3;
- (void)reloadWithCalendar:(id)a3 locale:(id)a4 selectedDate:(id)a5 followsSystemHourCycle:(BOOL)a6;
- (void)setCustomFontDesign:(id)a3;
- (void)setMinuteInterval:(int64_t)a3;
- (void)setRoundsToMinuteInterval:(BOOL)a3;
- (void)setSelectedDate:(id)a3;
- (void)tintColorDidChange;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIDatePickerCalendarTimeView

- (_UIDatePickerCalendarTimeView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _UIDatePickerCalendarTimeView;
  v3 = [(UIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v3->_calendar;
    v3->_calendar = v4;

    v6 = [MEMORY[0x1E695DF58] currentLocale];
    locale = v3->_locale;
    v3->_locale = v6;

    v3->_followsSystemHourCycle = 1;
    v3->_minuteInterval = 1;
    v8 = [_UIDatePickerCalendarTime alloc];
    v9 = objc_opt_new();
    v10 = [(_UIDatePickerCalendarDateComponent *)v8 initWithDate:v9 calendar:v3->_calendar];
    selectedTime = v3->_selectedTime;
    v3->_selectedTime = v10;

    [(_UIDatePickerCalendarTimeView *)v3 _setupViewHierarchy];
    [(_UIDatePickerCalendarTimeView *)v3 _reloadDateFormatters];
    [(_UIDatePickerCalendarTimeView *)v3 _updateTextFieldsFromSelectedDateComponents];
  }

  return v3;
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerCalendarTimeView;
  [(UIView *)&v6 willMoveToWindow:?];
  if (!a3)
  {
    v5 = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [v5 resignFirstResponder];

    [(_UIDatePickerOverlayPresentation *)self->_presentation dismissPresentationAnimated:0];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerCalendarTimeView;
  [(UIView *)&v6 willMoveToSuperview:?];
  if (!a3)
  {
    v5 = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [v5 resignFirstResponder];

    [(_UIDatePickerOverlayPresentation *)self->_presentation dismissPresentationAnimated:0];
  }
}

- (void)_setupViewHierarchy
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIDatePickerCalendarTimeView *)self calendar];
  v4 = [(_UIDatePickerCalendarTimeView *)self locale];
  v5 = [_UIDatePickerCalendarTimeFormat formatWithCalendar:v3 locale:v4 followsSystemHourCycle:self->_followsSystemHourCycle];

  v6 = [[_UIDatePickerCompactTimeLabel alloc] initWithTimeFormat:v5 minuteInterval:[(_UIDatePickerCalendarTimeView *)self minuteInterval]];
  v7 = [[_UIDatePickerOverlayPresentation alloc] initWithSourceView:self];
  [(_UIDatePickerOverlayPresentation *)v7 setAlignment:5];
  [(_UIDatePickerOverlayPresentation *)v7 setOverlayAnchor:1];
  [(_UIDatePickerCompactTimeLabel *)v6 setOverlayPresentation:v7];
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UIDatePickerCompactTimeLabel *)v6 setSelectionDelegate:self];
  LODWORD(v8) = 1148682240;
  [(UIView *)v6 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148682240;
  [(UIView *)v6 setContentCompressionResistancePriority:0 forAxis:v9];
  [(UIView *)self addSubview:v6];
  objc_storeStrong(&self->_timeTextField, v6);
  presentation = self->_presentation;
  self->_presentation = v7;
  v11 = v7;

  v12 = objc_opt_new();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1144750080;
  [v12 setContentHuggingPriority:0 forAxis:v13];
  [(UIView *)self addSubview:v12];
  objc_storeStrong(&self->_timeLabel, v12);
  [(_UIDatePickerCalendarTimeView *)self _updateTimeLabelTitleIfNeeded];
  [(_UIDatePickerCalendarTimeView *)self _updateFonts];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52___UIDatePickerCalendarTimeView__setupViewHierarchy__block_invoke;
  v19[3] = &unk_1E7104A50;
  v20 = v6;
  v21 = self;
  v22 = v12;
  v14 = v12;
  v15 = v6;
  v16 = objc_opt_new();
  __52___UIDatePickerCalendarTimeView__setupViewHierarchy__block_invoke(v19, v16);
  [MEMORY[0x1E69977A0] activateConstraints:v16];

  [(_UIDatePickerCalendarTimeView *)self _updateClockLayout];
  v23[0] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v18 = [(UIView *)self registerForTraitChanges:v17 withAction:sel__updateFonts];
}

- (void)_updateClockLayout
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIDatePickerCalendarTimeView *)self shouldShowTimeLabel];
  v4 = [(_UIDatePickerCalendarTimeView *)self timeLabel];
  v5 = [v4 isHidden];

  if (v3 == v5)
  {
    v6 = [(_UIDatePickerCalendarTimeView *)self timeTextField];
    v7 = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [v7 setHidden:v3 ^ 1u];
    self->_showsTimeLabel = v3;
    if (self->_clockLayoutConstraints)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51___UIDatePickerCalendarTimeView__updateClockLayout__block_invoke;
    aBlock[3] = &unk_1E7104A78;
    v23 = v3;
    v21 = v7;
    v22 = self;
    v19 = v7;
    v8 = _Block_copy(aBlock);
    v9 = objc_opt_new();
    v8[2](v8, v6);
    v11 = v10 = v6;
    [(NSArray *)v9 addObjectsFromArray:v11];

    v12 = [v10 trailingAnchor];
    v13 = [(UIView *)self layoutMarginsGuide];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v24[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [(NSArray *)v9 addObjectsFromArray:v16];

    clockLayoutConstraints = self->_clockLayoutConstraints;
    self->_clockLayoutConstraints = v9;
    v18 = v9;

    [MEMORY[0x1E69977A0] activateConstraints:self->_clockLayoutConstraints];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v12.receiver = self;
  v12.super_class = _UIDatePickerCalendarTimeView;
  v7 = a4;
  v8 = [(UIView *)&v12 pointInside:v7 withEvent:x, y];
  v9 = [(_UIDatePickerCalendarTimeView *)v6 timeTextField:v12.receiver];
  v10 = [(_UIDatePickerCalendarTimeView *)v6 timeTextField];
  [(UIView *)v6 convertPoint:v10 toView:x, y];
  LOBYTE(v6) = [v9 pointInside:v7 withEvent:?];

  return v8 | v6;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerCalendarTimeView;
  [(UIView *)&v5 tintColorDidChange];
  v3 = [(UIView *)self tintColor];
  v4 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v4 setTintColor:v3];
}

- (void)setMinuteInterval:(int64_t)a3
{
  self->_minuteInterval = a3;
  [(_UIDatePickerCalendarTimeLabel *)self->_timeTextField setMinuteInterval:?];
  v5 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v5 setMinuteInterval:a3];
}

- (void)setRoundsToMinuteInterval:(BOOL)a3
{
  v3 = a3;
  self->_roundsToMinuteInterval = a3;
  [(_UIDatePickerCalendarTimeLabel *)self->_timeTextField setRoundsToMinuteInterval:?];
  v5 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v5 setRoundsToMinuteInterval:v3];
}

- (void)_reloadDateFormatters
{
  v3 = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  v4 = [(_UIDatePickerCalendarTimeView *)self calendar];
  v5 = [(_UIDatePickerCalendarTimeView *)self locale];
  [v3 reloadWithCalendar:v4 locale:v5 followsSystemHourCycle:self->_followsSystemHourCycle displaysTimeZone:0];

  [(_UIDatePickerCalendarTimeView *)self _updateClockLayout];
}

- (void)_reload
{
  [(_UIDatePickerCalendarTimeView *)self _updateClockLayout];
  v3 = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  v4 = [v3 selectedTime];
  selectedTime = self->_selectedTime;
  self->_selectedTime = v4;

  [(_UIDatePickerCalendarTimeView *)self _updateTextFieldsFromSelectedDateComponents];
}

- (void)reloadWithCalendar:(id)a3 locale:(id)a4 selectedDate:(id)a5 followsSystemHourCycle:(BOOL)a6
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  if (!v17)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarTimeView.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];
  }

  objc_storeStrong(&self->_calendar, a3);
  v14 = v12;
  if (!v12)
  {
    v14 = [v17 locale];
  }

  objc_storeStrong(&self->_locale, v14);
  if (!v12)
  {
  }

  self->_followsSystemHourCycle = a6;
  [(_UIDatePickerCalendarTimeView *)self _updateTimeLabelTitleIfNeeded];
  [(_UIDatePickerCalendarTimeView *)self _reloadDateFormatters];
  [(_UIDatePickerCalendarTimeView *)self setSelectedDate:v13];
  v15 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [v15 setCalendar:self->_calendar];
  [v15 setLocale:self->_locale];
}

- (void)_updateTextFieldsFromSelectedDateComponents
{
  v5 = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  v3 = [(_UIDatePickerCalendarTimeView *)self selectedTime];
  v4 = [v3 date];
  [v5 reloadWithDate:v4];
}

- (void)_updateTimeLabelTitleIfNeeded
{
  timeLocaleIdentifier = self->_timeLocaleIdentifier;
  v4 = [(NSLocale *)self->_locale localeIdentifier];
  v5 = timeLocaleIdentifier;
  v6 = v4;
  v11 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
    }

    else
    {
      v8 = [(NSString *)v5 isEqual:v6];

      if (v8)
      {
        return;
      }
    }

    v9 = [(NSLocale *)self->_locale localeIdentifier];
    v10 = self->_timeLocaleIdentifier;
    self->_timeLocaleIdentifier = v9;

    v11 = _UILocalizedStringWithDefaultValueInLanguage(@"ui.datepicker.time", self->_timeLocaleIdentifier, @"Time");
    v5 = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [(NSString *)v5 setText:v11];
  }
}

- (void)setSelectedDate:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerCalendarDateComponent *)[_UIDatePickerCalendarTime alloc] initWithDate:v4 calendar:self->_calendar];
  selectedTime = self->_selectedTime;
  self->_selectedTime = v5;
  v7 = v5;

  [(_UIDatePickerCalendarTimeView *)self _updateTextFieldsFromSelectedDateComponents];
  v8 = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];

  [v8 setDate:v4];
}

- (void)setCustomFontDesign:(id)a3
{
  v5 = a3;
  v6 = self->_customFontDesign;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_customFontDesign, a3);
    [(_UIDatePickerCalendarTimeView *)self _updateFonts];
  }

LABEL_9:
}

- (void)_updateFonts
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self traitCollection];
  v4 = self->_customFontDesign;
  v5 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v3];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 fontDescriptorWithDesign:v4];

    v6 = v7;
  }

  v8 = *off_1E70ECCC8;
  v26[0] = *off_1E70ECCD0;
  v26[1] = v8;
  v27[0] = &unk_1EFE302C8;
  v27[1] = &unk_1EFE302E0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v10 = *off_1E70ECC98;
  v23 = v9;
  v24 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v13 = [v6 fontDescriptorByAddingAttributes:v12];

  v14 = [off_1E70ECC18 fontWithDescriptor:v13 size:0.0];

  v15 = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  [v15 setFont:v14];

  v16 = self->_customFontDesign;
  v17 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v3];
  v18 = v17;
  if (v16)
  {
    v19 = [v17 fontDescriptorWithDesign:v16];

    v18 = v19;
  }

  v20 = [v18 fontDescriptorWithSymbolicTraits:2];

  v21 = [off_1E70ECC18 fontWithDescriptor:v20 size:0.0];

  v22 = [(_UIDatePickerCalendarTimeView *)self timeLabel];
  [v22 setFont:v21];
}

- (void)compactTimeLabel:(id)a3 didSelectTime:(id)a4
{
  objc_storeStrong(&self->_selectedTime, a4);
  v6 = [(_UIDatePickerCalendarTimeView *)self delegate];
  v5 = [(_UIDatePickerCalendarTimeView *)self selectedTime];
  [v6 timeView:self didSelectTime:v5];
}

- (void)compactTimeLabelWillBecomeFirstResponder:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeView *)self delegate];
  [v4 timeViewWillBecomeFirstResponder:self];
}

- (void)compactTimeLabelDidBeginEditing:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeView *)self delegate];
  [v4 timeViewDidBeginEditing:self];
}

- (void)compactTimeLabelDidEndEditing:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeView *)self delegate];
  [v4 timeViewDidEndEditing:self];
}

- (id)createDatePickerForCompactTimeLabel:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeView *)self delegate];
  v5 = [v4 createDatePickerForTimeView:self];

  return v5;
}

- (_UIDatePickerCalendarTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end