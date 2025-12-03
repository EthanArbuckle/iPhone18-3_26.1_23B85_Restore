@interface _UIDatePickerCalendarTimeView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_UIDatePickerCalendarTimeView)initWithFrame:(CGRect)frame;
- (_UIDatePickerCalendarTimeViewDelegate)delegate;
- (id)createDatePickerForCompactTimeLabel:(id)label;
- (void)_reload;
- (void)_reloadDateFormatters;
- (void)_setupViewHierarchy;
- (void)_updateClockLayout;
- (void)_updateFonts;
- (void)_updateTextFieldsFromSelectedDateComponents;
- (void)_updateTimeLabelTitleIfNeeded;
- (void)compactTimeLabel:(id)label didSelectTime:(id)time;
- (void)compactTimeLabelDidBeginEditing:(id)editing;
- (void)compactTimeLabelDidEndEditing:(id)editing;
- (void)compactTimeLabelWillBecomeFirstResponder:(id)responder;
- (void)reloadWithCalendar:(id)calendar locale:(id)locale selectedDate:(id)date followsSystemHourCycle:(BOOL)cycle;
- (void)setCustomFontDesign:(id)design;
- (void)setMinuteInterval:(int64_t)interval;
- (void)setRoundsToMinuteInterval:(BOOL)interval;
- (void)setSelectedDate:(id)date;
- (void)tintColorDidChange;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIDatePickerCalendarTimeView

- (_UIDatePickerCalendarTimeView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = _UIDatePickerCalendarTimeView;
  v3 = [(UIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v3->_calendar;
    v3->_calendar = currentCalendar;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    locale = v3->_locale;
    v3->_locale = currentLocale;

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

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerCalendarTimeView;
  [(UIView *)&v6 willMoveToWindow:?];
  if (!window)
  {
    timeLabel = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [timeLabel resignFirstResponder];

    [(_UIDatePickerOverlayPresentation *)self->_presentation dismissPresentationAnimated:0];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerCalendarTimeView;
  [(UIView *)&v6 willMoveToSuperview:?];
  if (!superview)
  {
    timeLabel = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [timeLabel resignFirstResponder];

    [(_UIDatePickerOverlayPresentation *)self->_presentation dismissPresentationAnimated:0];
  }
}

- (void)_setupViewHierarchy
{
  v23[1] = *MEMORY[0x1E69E9840];
  calendar = [(_UIDatePickerCalendarTimeView *)self calendar];
  locale = [(_UIDatePickerCalendarTimeView *)self locale];
  v5 = [_UIDatePickerCalendarTimeFormat formatWithCalendar:calendar locale:locale followsSystemHourCycle:self->_followsSystemHourCycle];

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
  selfCopy = self;
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
  shouldShowTimeLabel = [(_UIDatePickerCalendarTimeView *)self shouldShowTimeLabel];
  timeLabel = [(_UIDatePickerCalendarTimeView *)self timeLabel];
  isHidden = [timeLabel isHidden];

  if (shouldShowTimeLabel == isHidden)
  {
    timeTextField = [(_UIDatePickerCalendarTimeView *)self timeTextField];
    timeLabel2 = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [timeLabel2 setHidden:shouldShowTimeLabel ^ 1u];
    self->_showsTimeLabel = shouldShowTimeLabel;
    if (self->_clockLayoutConstraints)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51___UIDatePickerCalendarTimeView__updateClockLayout__block_invoke;
    aBlock[3] = &unk_1E7104A78;
    v23 = shouldShowTimeLabel;
    v21 = timeLabel2;
    selfCopy = self;
    v19 = timeLabel2;
    v8 = _Block_copy(aBlock);
    v9 = objc_opt_new();
    v8[2](v8, timeTextField);
    v11 = v10 = timeTextField;
    [(NSArray *)v9 addObjectsFromArray:v11];

    trailingAnchor = [v10 trailingAnchor];
    layoutMarginsGuide = [(UIView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [(NSArray *)v9 addObjectsFromArray:v16];

    clockLayoutConstraints = self->_clockLayoutConstraints;
    self->_clockLayoutConstraints = v9;
    v18 = v9;

    [MEMORY[0x1E69977A0] activateConstraints:self->_clockLayoutConstraints];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  v12.receiver = self;
  v12.super_class = _UIDatePickerCalendarTimeView;
  eventCopy = event;
  v8 = [(UIView *)&v12 pointInside:eventCopy withEvent:x, y];
  v9 = [(_UIDatePickerCalendarTimeView *)selfCopy timeTextField:v12.receiver];
  timeTextField = [(_UIDatePickerCalendarTimeView *)selfCopy timeTextField];
  [(UIView *)selfCopy convertPoint:timeTextField toView:x, y];
  LOBYTE(selfCopy) = [v9 pointInside:eventCopy withEvent:?];

  return v8 | selfCopy;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerCalendarTimeView;
  [(UIView *)&v5 tintColorDidChange];
  tintColor = [(UIView *)self tintColor];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setTintColor:tintColor];
}

- (void)setMinuteInterval:(int64_t)interval
{
  self->_minuteInterval = interval;
  [(_UIDatePickerCalendarTimeLabel *)self->_timeTextField setMinuteInterval:?];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setMinuteInterval:interval];
}

- (void)setRoundsToMinuteInterval:(BOOL)interval
{
  intervalCopy = interval;
  self->_roundsToMinuteInterval = interval;
  [(_UIDatePickerCalendarTimeLabel *)self->_timeTextField setRoundsToMinuteInterval:?];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setRoundsToMinuteInterval:intervalCopy];
}

- (void)_reloadDateFormatters
{
  timeTextField = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  calendar = [(_UIDatePickerCalendarTimeView *)self calendar];
  locale = [(_UIDatePickerCalendarTimeView *)self locale];
  [timeTextField reloadWithCalendar:calendar locale:locale followsSystemHourCycle:self->_followsSystemHourCycle displaysTimeZone:0];

  [(_UIDatePickerCalendarTimeView *)self _updateClockLayout];
}

- (void)_reload
{
  [(_UIDatePickerCalendarTimeView *)self _updateClockLayout];
  timeTextField = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  selectedTime = [timeTextField selectedTime];
  selectedTime = self->_selectedTime;
  self->_selectedTime = selectedTime;

  [(_UIDatePickerCalendarTimeView *)self _updateTextFieldsFromSelectedDateComponents];
}

- (void)reloadWithCalendar:(id)calendar locale:(id)locale selectedDate:(id)date followsSystemHourCycle:(BOOL)cycle
{
  calendarCopy = calendar;
  localeCopy = locale;
  dateCopy = date;
  if (!calendarCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarTimeView.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];
  }

  objc_storeStrong(&self->_calendar, calendar);
  locale = localeCopy;
  if (!localeCopy)
  {
    locale = [calendarCopy locale];
  }

  objc_storeStrong(&self->_locale, locale);
  if (!localeCopy)
  {
  }

  self->_followsSystemHourCycle = cycle;
  [(_UIDatePickerCalendarTimeView *)self _updateTimeLabelTitleIfNeeded];
  [(_UIDatePickerCalendarTimeView *)self _reloadDateFormatters];
  [(_UIDatePickerCalendarTimeView *)self setSelectedDate:dateCopy];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];
  [activeDatePicker setCalendar:self->_calendar];
  [activeDatePicker setLocale:self->_locale];
}

- (void)_updateTextFieldsFromSelectedDateComponents
{
  timeTextField = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  selectedTime = [(_UIDatePickerCalendarTimeView *)self selectedTime];
  date = [selectedTime date];
  [timeTextField reloadWithDate:date];
}

- (void)_updateTimeLabelTitleIfNeeded
{
  timeLocaleIdentifier = self->_timeLocaleIdentifier;
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  timeLabel = timeLocaleIdentifier;
  v6 = localeIdentifier;
  v11 = v6;
  if (timeLabel == v6)
  {
  }

  else
  {
    if (timeLabel)
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
      v8 = [(NSString *)timeLabel isEqual:v6];

      if (v8)
      {
        return;
      }
    }

    localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
    v10 = self->_timeLocaleIdentifier;
    self->_timeLocaleIdentifier = localeIdentifier2;

    v11 = _UILocalizedStringWithDefaultValueInLanguage(@"ui.datepicker.time", self->_timeLocaleIdentifier, @"Time");
    timeLabel = [(_UIDatePickerCalendarTimeView *)self timeLabel];
    [(NSString *)timeLabel setText:v11];
  }
}

- (void)setSelectedDate:(id)date
{
  dateCopy = date;
  v5 = [(_UIDatePickerCalendarDateComponent *)[_UIDatePickerCalendarTime alloc] initWithDate:dateCopy calendar:self->_calendar];
  selectedTime = self->_selectedTime;
  self->_selectedTime = v5;
  v7 = v5;

  [(_UIDatePickerCalendarTimeView *)self _updateTextFieldsFromSelectedDateComponents];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self->_presentation activeDatePicker];

  [activeDatePicker setDate:dateCopy];
}

- (void)setCustomFontDesign:(id)design
{
  designCopy = design;
  v6 = self->_customFontDesign;
  v7 = designCopy;
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
    objc_storeStrong(&self->_customFontDesign, design);
    [(_UIDatePickerCalendarTimeView *)self _updateFonts];
  }

LABEL_9:
}

- (void)_updateFonts
{
  v27[2] = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  v4 = self->_customFontDesign;
  v5 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:traitCollection];
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

  timeTextField = [(_UIDatePickerCalendarTimeView *)self timeTextField];
  [timeTextField setFont:v14];

  v16 = self->_customFontDesign;
  v17 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:traitCollection];
  v18 = v17;
  if (v16)
  {
    v19 = [v17 fontDescriptorWithDesign:v16];

    v18 = v19;
  }

  v20 = [v18 fontDescriptorWithSymbolicTraits:2];

  v21 = [off_1E70ECC18 fontWithDescriptor:v20 size:0.0];

  timeLabel = [(_UIDatePickerCalendarTimeView *)self timeLabel];
  [timeLabel setFont:v21];
}

- (void)compactTimeLabel:(id)label didSelectTime:(id)time
{
  objc_storeStrong(&self->_selectedTime, time);
  delegate = [(_UIDatePickerCalendarTimeView *)self delegate];
  selectedTime = [(_UIDatePickerCalendarTimeView *)self selectedTime];
  [delegate timeView:self didSelectTime:selectedTime];
}

- (void)compactTimeLabelWillBecomeFirstResponder:(id)responder
{
  delegate = [(_UIDatePickerCalendarTimeView *)self delegate];
  [delegate timeViewWillBecomeFirstResponder:self];
}

- (void)compactTimeLabelDidBeginEditing:(id)editing
{
  delegate = [(_UIDatePickerCalendarTimeView *)self delegate];
  [delegate timeViewDidBeginEditing:self];
}

- (void)compactTimeLabelDidEndEditing:(id)editing
{
  delegate = [(_UIDatePickerCalendarTimeView *)self delegate];
  [delegate timeViewDidEndEditing:self];
}

- (id)createDatePickerForCompactTimeLabel:(id)label
{
  delegate = [(_UIDatePickerCalendarTimeView *)self delegate];
  v5 = [delegate createDatePickerForTimeView:self];

  return v5;
}

- (_UIDatePickerCalendarTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end