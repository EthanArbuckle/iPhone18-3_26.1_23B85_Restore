@interface _UIDatePickerCompactTimeLabel
- (BOOL)adjustsFontSizeToFitWidth;
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)timeLabel:(id)label didReceiveText:(id)text;
- (CGRect)hourRect;
- (CGRect)minuteRect;
- (CGRect)timeOfDayRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIDatePickerCompactTimeLabel)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval;
- (_UIDatePickerCompactTimeLabelDelegate)selectionDelegate;
- (double)minimumScaleFactor;
- (id)_currentDateForInput;
- (id)_viewForInputScope:(int64_t)scope;
- (id)font;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)updateHoverLabelForAttributedString:(id)string ranges:(id *)ranges;
- (int64_t)_inputScopeForPointerLocation:(CGPoint)location;
- (void)_activateCompactLabelForGestureRecognizer:(id)recognizer;
- (void)_expandedComponentRectForHours:(CGRect *)hours minuteRect:(CGRect *)rect timeOfDayRect:(CGRect *)dayRect;
- (void)_reloadWithDate:(id)date notify:(BOOL)notify;
- (void)_updateEnabledStyling;
- (void)_updateHoverStateLabelsIfNeeded;
- (void)_updateInputFieldFromSelectedDateComponents;
- (void)_updateInputFieldLayoutForCurrentState;
- (void)_updateLayoutRectsForRanges:(id *)ranges;
- (void)_updateSelectedDateComponentsFromInput;
- (void)_updateTextContentStorage;
- (void)_updateTimeFormatIfNeeded;
- (void)activateLabel;
- (void)applyTextAttributesForState:(unint64_t)state inputScope:(int64_t)scope updater:(id)updater;
- (void)controlEventsGestureRecognizer:(id)recognizer recognizedControlEvent:(unint64_t)event withEvent:(id)withEvent;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pushCurrentStateIntoUI;
- (void)pushCurrentStateIntoUIAndNotify;
- (void)reloadWithCalendar:(id)calendar locale:(id)locale followsSystemHourCycle:(BOOL)cycle displaysTimeZone:(BOOL)zone;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setFont:(id)font;
- (void)setHighlightedForTouch:(BOOL)touch;
- (void)setMinimumScaleFactor:(double)factor;
- (void)setOverrideAttributes:(id)attributes;
- (void)setPassthroughInteractionEnabled:(BOOL)enabled;
- (void)stateMachineUpdateFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)timeLabelDidBeginEditing:(id)editing;
- (void)timeLabelDidEndEditing:(id)editing;
- (void)timeLabelDidResignFirstResponder:(id)responder;
- (void)timeLabelWillBecomeFirstResponder:(id)responder;
- (void)willBeginWritingInScribbleInteraction;
@end

@implementation _UIDatePickerCompactTimeLabel

- (_UIDatePickerCompactTimeLabel)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval
{
  v86[8] = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = _UIDatePickerCompactTimeLabel;
  v4 = [(_UIDatePickerCalendarTimeLabel *)&v85 initWithTimeFormat:format minuteInterval:interval];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = 1;
    traitCollection = [(UIView *)v4 traitCollection];
    v7 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

    objc_storeStrong(&v5->_datePickerStyle, v7);
    v8 = objc_opt_new();
    [v8 setUserInteractionEnabled:0];
    traitCollection2 = [(UIView *)v5 traitCollection];
    v10 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", traitCollection2);
    [v8 setFont:v10];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAdjustsFontForContentSizeCategory:1];
    v11 = +[UIColor labelColor];
    [v8 setTextColor:v11];

    LODWORD(v12) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v8 setContentCompressionResistancePriority:0 forAxis:v13];
    objc_storeStrong(&v5->_label, v8);
    [v7 compactLabelCornerRadius];
    [(UIView *)v5 _setContinuousCornerRadius:?];
    compactLabelBackgroundButtonConfiguration = [v7 compactLabelBackgroundButtonConfiguration];
    v14 = [UIButton buttonWithConfiguration:"buttonWithConfiguration:primaryAction:" primaryAction:?];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __67___UIDatePickerCompactTimeLabel_initWithTimeFormat_minuteInterval___block_invoke;
    v83[3] = &unk_1E711EA78;
    v15 = v7;
    v84 = v15;
    v82 = v15;
    [v14 setConfigurationUpdateHandler:v83];
    [v14 setPreferredBehavioralStyle:1];
    [(UIView *)v5 addSubview:v14];
    objc_storeStrong(&v5->_backgroundView, v14);
    v16 = objc_opt_new();
    [v15 compactLabelInputBackgroundCornerRadius];
    [v16 _setContinuousCornerRadius:?];
    [v16 setUserInteractionEnabled:0];
    objc_storeStrong(&v5->_inputBackgroundView, v16);
    v78 = v16;
    [v14 addSubview:v16];
    [v14 addSubview:v8];
    v17 = objc_opt_new();
    traitCollection3 = [(UIView *)v5 traitCollection];
    v19 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", traitCollection3);
    [v17 setFont:v19];

    [v17 setAdjustsFontForContentSizeCategory:1];
    [v17 setHidden:1];
    objc_storeStrong(&v5->_hourLabel, v17);
    v20 = objc_opt_new();
    traitCollection4 = [(UIView *)v5 traitCollection];
    v22 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", traitCollection4);
    [v20 setFont:v22];

    [v20 setAdjustsFontForContentSizeCategory:1];
    [v20 setHidden:1];
    objc_storeStrong(&v5->_minuteLabel, v20);
    v23 = objc_opt_new();
    traitCollection5 = [(UIView *)v5 traitCollection];
    v25 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", traitCollection5);
    [v23 setFont:v25];

    [v23 setAdjustsFontForContentSizeCategory:1];
    [v23 setHidden:1];
    objc_storeStrong(&v5->_timeOfDayLabel, v23);
    v77 = v17;
    [v14 addSubview:v17];
    v76 = v20;
    [v14 addSubview:v20];
    v75 = v23;
    [v14 addSubview:v23];
    v26 = [[UIPointerInteraction alloc] initWithDelegate:v5];
    pointerInteraction = v5->_pointerInteraction;
    v5->_pointerInteraction = v26;

    [(UIView *)v5 addInteraction:v5->_pointerInteraction];
    [(_UIDatePickerCompactTimeLabel *)v5 _updateEnabledStyling];
    [v82 compactLabelBackgroundPadding];
    v29 = v28;
    v31 = v30;
    v65 = MEMORY[0x1E69977A0];
    topAnchor = [(UIView *)v5 topAnchor];
    topAnchor2 = [v8 topAnchor];
    v72 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v31];
    v86[0] = v72;
    leadingAnchor = [(UIView *)v5 leadingAnchor];
    leadingAnchor2 = [v8 leadingAnchor];
    v69 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v29];
    v86[1] = v69;
    bottomAnchor = [(UIView *)v5 bottomAnchor];
    bottomAnchor2 = [v8 bottomAnchor];
    v66 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v31];
    v86[2] = v66;
    trailingAnchor = [(UIView *)v5 trailingAnchor];
    v81 = v8;
    trailingAnchor2 = [v8 trailingAnchor];
    v62 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v29];
    v86[3] = v62;
    leadingAnchor3 = [v14 leadingAnchor];
    leadingAnchor4 = [(UIView *)v5 leadingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v86[4] = v59;
    trailingAnchor3 = [v14 trailingAnchor];
    trailingAnchor4 = [(UIView *)v5 trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v86[5] = v33;
    topAnchor3 = [v14 topAnchor];
    topAnchor4 = [(UIView *)v5 topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v86[6] = v36;
    v79 = v14;
    bottomAnchor3 = [v14 bottomAnchor];
    bottomAnchor4 = [(UIView *)v5 bottomAnchor];
    v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v86[7] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:8];
    [v65 activateConstraints:v40];

    [(_UIDatePickerCalendarTimeLabel *)v5 setDelegate:v5];
    v41 = objc_opt_new();
    [v41 setControlEventsDelegate:v5];
    [v41 setDelegate:v5];
    [(UIView *)v5 addGestureRecognizer:v41];
    v42 = objc_opt_new();
    formatter = v5->_formatter;
    v5->_formatter = v42;

    [(NSDateFormatter *)v5->_formatter setLenient:1];
    v44 = MEMORY[0x1E696AEC0];
    timeFormat = [(_UIDatePickerCalendarTimeLabel *)v5 timeFormat];
    hourFormat = [timeFormat hourFormat];
    v47 = [v44 stringWithFormat:@"%@~~mm", hourFormat];

    timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)v5 timeFormat];
    clockLayout = [timeFormat2 clockLayout];

    if (clockLayout)
    {
      v50 = [v47 stringByAppendingString:@"~~a"];

      v47 = v50;
    }

    [(NSDateFormatter *)v5->_formatter setDateFormat:v47];
    v51 = [off_1E70ECBB0 alloc];
    v52 = [v51 initWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [v52 setLineFragmentPadding:0.0];
    v53 = objc_opt_new();
    textContentStorage = v5->_textContentStorage;
    v5->_textContentStorage = v53;

    v55 = [[_UITextKit2LayoutController alloc] initWithTextView:0 textContentStorage:v5->_textContentStorage textContainer:v52];
    textLayoutController = v5->_textLayoutController;
    v5->_textLayoutController = v55;
  }

  return v5;
}

- (CGRect)hourRect
{
  p_hourRect = &self->_hourRect;
  [(UIView *)self bounds];
  x = p_hourRect->origin.x;
  width = p_hourRect->size.width;
  Height = CGRectGetHeight(v9);
  v6 = 0.0;
  v7 = x;
  v8 = width;
  result.size.height = Height;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (CGRect)minuteRect
{
  p_minuteRect = &self->_minuteRect;
  [(UIView *)self bounds];
  x = p_minuteRect->origin.x;
  width = p_minuteRect->size.width;
  Height = CGRectGetHeight(v9);
  v6 = 0.0;
  v7 = x;
  v8 = width;
  result.size.height = Height;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (CGRect)timeOfDayRect
{
  p_timeOfDayRect = &self->_timeOfDayRect;
  [(UIView *)self bounds];
  x = p_timeOfDayRect->origin.x;
  width = p_timeOfDayRect->size.width;
  Height = CGRectGetHeight(v9);
  v6 = 0.0;
  v7 = x;
  v8 = width;
  result.size.height = Height;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  [label setFont:fontCopy];

  [(_UIDatePickerCompactTimeLabel *)self _updateTextContentStorage];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (id)font
{
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  font = [label font];

  return font;
}

- (void)_updateEnabledStyling
{
  [(UIView *)self setUserInteractionEnabled:[(_UIDatePickerCompactTimeLabel *)self isEnabled]];
  isEnabled = [(_UIDatePickerCompactTimeLabel *)self isEnabled];
  backgroundView = [(_UIDatePickerCompactTimeLabel *)self backgroundView];
  [backgroundView setEnabled:isEnabled];

  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (BOOL)adjustsFontSizeToFitWidth
{
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  adjustsFontSizeToFitWidth = [label adjustsFontSizeToFitWidth];

  return adjustsFontSizeToFitWidth;
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  widthCopy = width;
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  [label setAdjustsFontSizeToFitWidth:widthCopy];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (double)minimumScaleFactor
{
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  [label minimumScaleFactor];
  v4 = v3;

  return v4;
}

- (void)setMinimumScaleFactor:(double)factor
{
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  [label setMinimumScaleFactor:factor];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setOverrideAttributes:(id)attributes
{
  objc_storeStrong(&self->_overrideAttributes, attributes);

  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)applyTextAttributesForState:(unint64_t)state inputScope:(int64_t)scope updater:(id)updater
{
  updaterCopy = updater;
  if (state <= 0xA && ((1 << state) & 0x602) != 0)
  {
    [(_UIDatePickerCalendarTimeLabel *)&v13 applyTextAttributesForState:state inputScope:scope updater:updaterCopy, v12.receiver, v12.super_class, self, _UIDatePickerCompactTimeLabel];
    goto LABEL_4;
  }

  if (scope > 1)
  {
    switch(scope)
    {
      case 2:
        v9 = +[UIColor labelColor];
        v10 = +[UIColor systemWhiteColor];
        v11 = +[UIColor clearColor];
        (*(updaterCopy + 2))(updaterCopy, v9, v10, 0, 0, v11);
        break;
      case 3:
        v9 = +[UIColor labelColor];
        v10 = +[UIColor systemWhiteColor];
        v11 = +[UIColor clearColor];
        (*(updaterCopy + 2))(updaterCopy, v9, 0, v10, 0, v11);
        break;
      case 4:
        v9 = +[UIColor labelColor];
        v10 = +[UIColor systemWhiteColor];
        (*(updaterCopy + 2))(updaterCopy, v9, 0, 0, v10, 0);
        goto LABEL_16;
      default:
        goto LABEL_4;
    }

LABEL_16:
    goto LABEL_17;
  }

  if (!scope)
  {
    [(_UIDatePickerCalendarTimeLabel *)&v12 applyTextAttributesForState:state inputScope:0 updater:updaterCopy, self, _UIDatePickerCompactTimeLabel, v13.receiver, v13.super_class];
    goto LABEL_4;
  }

  if (scope == 1)
  {
    v9 = +[UIColor systemWhiteColor];
    (*(updaterCopy + 2))(updaterCopy, v9, 0, 0, 0, 0);
LABEL_17:
  }

LABEL_4:
}

- (void)controlEventsGestureRecognizer:(id)recognizer recognizedControlEvent:(unint64_t)event withEvent:(id)withEvent
{
  recognizerCopy = recognizer;
  [recognizerCopy locationInView:self];
  if (event <= 63)
  {
    switch(event)
    {
      case 1uLL:
        v11 = v7;
        v12 = v8;
        activeTouch = [recognizerCopy activeTouch];
        _isPointerTouch = [activeTouch _isPointerTouch];

        if (_isPointerTouch)
        {
          [(_UIDatePickerCompactTimeLabel *)self _viewForInputScope:[(_UIDatePickerCompactTimeLabel *)self _inputScopeForPointerLocation:v11, v12]];
        }

        else
        {
          [(_UIDatePickerCompactTimeLabel *)self label];
        }
        v15 = ;
        objc_storeWeak(&self->_touchHighlightedView, v15);

        break;
      case 0x10uLL:
        break;
      case 0x20uLL:
        selfCopy2 = self;
        v10 = 0;
        goto LABEL_17;
      default:
        goto LABEL_18;
    }

    selfCopy2 = self;
    v10 = 1;
LABEL_17:
    [(_UIDatePickerCompactTimeLabel *)selfCopy2 setHighlightedForTouch:v10];
    goto LABEL_18;
  }

  if (event == 64)
  {
    [(_UIDatePickerCompactTimeLabel *)self _activateCompactLabelForGestureRecognizer:recognizerCopy];
LABEL_13:
    [(_UIDatePickerCompactTimeLabel *)self setHighlightedForTouch:0];
    objc_storeWeak(&self->_touchHighlightedView, 0);
    goto LABEL_18;
  }

  if (event == 128 || event == 256)
  {
    goto LABEL_13;
  }

LABEL_18:
}

- (void)setHighlightedForTouch:(BOOL)touch
{
  flags = self->_flags;
  if (((((flags & 4) == 0) ^ touch) & 1) == 0)
  {
    touchCopy = touch;
    if (touch)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_flags = flags & 0xFB | v5;
    v6 = objc_loadWeakRetained(&self->_touchHighlightedView);
    traitCollection = [v6 traitCollection];
    v8 = [traitCollection userInterfaceStyle] == 2;
    if (touchCopy)
    {
      v9 = dbl_18A674F10[v8];
    }

    else
    {
      v9 = 1.0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UIDateLabelAnimateHighlight_block_invoke_0;
    v11[3] = &unk_1E70F32F0;
    v12 = v6;
    v13 = v9;
    v10 = v6;
    [UIView animateWithDuration:327684 delay:v11 options:0 animations:0.47 completion:0.0];
  }
}

- (void)_updateHoverStateLabelsIfNeeded
{
  highlightedScope = self->_highlightedScope;
  if (highlightedScope <= 4)
  {
    v5 = 0x1Bu >> highlightedScope;
    v6 = 0x17u >> highlightedScope;
    v7 = 0xFu >> highlightedScope;
    hourLabel = [(_UIDatePickerCompactTimeLabel *)self hourLabel];
    [hourLabel setHidden:v5 & 1];

    minuteLabel = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
    [minuteLabel setHidden:v6 & 1];

    timeOfDayLabel = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
    [timeOfDayLabel setHidden:v7 & 1];
  }
}

- (id)updateHoverLabelForAttributedString:(id)string ranges:(id *)ranges
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = [string mutableCopy];
  [(_UIDatePickerCompactTimeLabel *)self _updateHoverStateLabelsIfNeeded];
  highlightedScope = self->_highlightedScope;
  switch(highlightedScope)
  {
    case 4:
      location = ranges->var2.location;
      ranges = (ranges + 32);
      p_length = &ranges->var0.length;
      v19 = [v6 attributedSubstringFromRange:{location, ranges->var0.length}];
      timeOfDayLabel = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
      [timeOfDayLabel setAttributedText:v19];

      v23 = *off_1E70EC920;
      v11 = +[UIColor clearColor];
      v24 = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v24;
      v14 = &v23;
      break;
    case 3:
      v15 = ranges->var1.location;
      ranges = (ranges + 16);
      p_length = &ranges->var0.length;
      v16 = [v6 attributedSubstringFromRange:{v15, ranges->var0.length}];
      minuteLabel = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
      [minuteLabel setAttributedText:v16];

      v25 = *off_1E70EC920;
      v11 = +[UIColor clearColor];
      v26 = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v26;
      v14 = &v25;
      break;
    case 2:
      p_length = &ranges->var0.length;
      v9 = [v6 attributedSubstringFromRange:{ranges->var0.location, ranges->var0.length}];
      hourLabel = [(_UIDatePickerCompactTimeLabel *)self hourLabel];
      [hourLabel setAttributedText:v9];

      v27 = *off_1E70EC920;
      v11 = +[UIColor clearColor];
      v28[0] = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = v28;
      v14 = &v27;
      break;
    default:
      goto LABEL_8;
  }

  v21 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
  [v6 setAttributes:v21 range:{ranges->var0.location, *p_length}];

LABEL_8:

  return v6;
}

- (void)pushCurrentStateIntoUI
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v3 = [(_UIDatePickerCalendarTimeLabel *)self attributedTextWithRanges:&v16];
  v4 = [v3 mutableCopy];

  overrideAttributes = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
  v6 = [overrideAttributes count];

  if (v6)
  {
    v7 = [v4 length];
    overrideAttributes2 = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
    [v4 addAttributes:overrideAttributes2 range:{0, v7}];
  }

  if ((*&self->_flags & 2) == 0)
  {
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v11 = v16;
    v12 = v17;
    v9 = [(_UIDatePickerCompactTimeLabel *)self updateHoverLabelForAttributedString:v4 ranges:&v11];

    v4 = v9;
  }

  label = [(_UIDatePickerCompactTimeLabel *)self label];
  [label setAttributedText:v4];

  v13 = v18;
  v14 = v19;
  v15 = v20;
  v11 = v16;
  v12 = v17;
  [(_UIDatePickerCompactTimeLabel *)self _updateLayoutRectsForRanges:&v11];
  [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldLayoutForCurrentState];
}

- (void)pushCurrentStateIntoUIAndNotify
{
  v4.receiver = self;
  v4.super_class = _UIDatePickerCompactTimeLabel;
  [(_UIDatePickerCalendarTimeLabel *)&v4 pushCurrentStateIntoUIAndNotify];
  selectionDelegate = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [selectionDelegate compactTimeLabel:self didSelectTime:self->_selectedTime];
}

- (void)stateMachineUpdateFromState:(unint64_t)state toState:(unint64_t)toState
{
  self->_currentState = toState;
  v5.receiver = self;
  v5.super_class = _UIDatePickerCompactTimeLabel;
  [(_UIDatePickerCalendarTimeLabel *)&v5 stateMachineUpdateFromState:state toState:?];
  [(_UIDatePickerCompactTimeLabel *)self _updateTimeFormatIfNeeded];
  [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldLayoutForCurrentState];
}

- (void)_updateTimeFormatIfNeeded
{
  v3 = self->_currentState - 2;
  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  forceDoubleDigitHours = [timeFormat forceDoubleDigitHours];

  if (v3 < 7 != forceDoubleDigitHours)
  {
    *&self->_flags |= 2u;
    timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    v7 = [timeFormat2 withForceDoubleDigitHours:v3 < 7];

    v9[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58___UIDatePickerCompactTimeLabel__updateTimeFormatIfNeeded__block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58___UIDatePickerCompactTimeLabel__updateTimeFormatIfNeeded__block_invoke_2;
    v9[3] = &unk_1E70F5AC0;
    v8 = v7;
    [UIView animateWithDuration:v10 animations:v9 completion:0.25];
  }
}

- (void)_updateInputFieldLayoutForCurrentState
{
  currentState = [(_UIDatePickerCompactTimeLabel *)self currentState];
  if (currentState > 4)
  {
    if (currentState <= 6)
    {
      if (currentState != 5)
      {
        goto LABEL_12;
      }

      v14 = 616;
LABEL_15:
      v20 = (self + v14);
      v6 = *v20;
      v8 = v20[1];
      v10 = v20[2];
      v12 = v20[3];
      goto LABEL_16;
    }

    if (currentState != 7)
    {
      if (currentState == 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_13:
    v14 = 552;
    goto LABEL_15;
  }

  switch(currentState)
  {
    case 2:
LABEL_12:
      label = [(_UIDatePickerCompactTimeLabel *)self label];
      [label frame];
      v6 = v16;
      v8 = v17;
      v10 = v18;
      v12 = v19;

LABEL_16:
      tintColor = [(UIView *)self tintColor];
      goto LABEL_17;
    case 3:
      goto LABEL_13;
    case 4:
LABEL_11:
      v14 = 584;
      goto LABEL_15;
  }

LABEL_8:
  label2 = [(_UIDatePickerCompactTimeLabel *)self label];
  [label2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  tintColor = +[UIColor clearColor];
LABEL_17:
  v21 = tintColor;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71___UIDatePickerCompactTimeLabel__updateInputFieldLayoutForCurrentState__block_invoke;
  v23[3] = &unk_1E70F3B20;
  v23[4] = self;
  v23[5] = v6;
  v23[6] = v8;
  v23[7] = v10;
  v23[8] = v12;
  [UIView performWithoutAnimation:v23];
  inputBackgroundView = [(_UIDatePickerCompactTimeLabel *)self inputBackgroundView];
  [inputBackgroundView setBackgroundColor:v21];
}

- (void)_updateTextContentStorage
{
  v16[1] = *MEMORY[0x1E69E9840];
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  attributedText = [label attributedText];
  string = [attributedText string];

  label2 = [(_UIDatePickerCompactTimeLabel *)self label];
  [label2 _stringDrawingOptions];

  v15 = *off_1E70EC918;
  label3 = [(_UIDatePickerCompactTimeLabel *)self label];
  font = [label3 font];
  v16[0] = font;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v9 mutableCopy];

  overrideAttributes = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
  v12 = [overrideAttributes count];

  if (v12)
  {
    overrideAttributes2 = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
    [v10 addEntriesFromDictionary:overrideAttributes2];
  }

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:string attributes:v10];
  [(NSTextContentStorage *)self->_textContentStorage setAttributedString:v14];
}

- (void)_updateLayoutRectsForRanges:(id *)ranges
{
  [(_UIDatePickerCompactTimeLabel *)self _updateTextContentStorage];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___UIDatePickerCompactTimeLabel__updateLayoutRectsForRanges___block_invoke;
  aBlock[3] = &unk_1E711EAA0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  self->_hourRect.origin.x = v5[2](v5, ranges->var0.location, ranges->var0.length);
  self->_hourRect.origin.y = v6;
  self->_hourRect.size.width = v7;
  self->_hourRect.size.height = v8;
  self->_minuteRect.origin.x = v5[2](v5, ranges->var1.location, ranges->var1.length);
  self->_minuteRect.origin.y = v9;
  self->_minuteRect.size.width = v10;
  self->_minuteRect.size.height = v11;
  self->_timeOfDayRect.origin.x = v5[2](v5, ranges->var2.location, ranges->var2.length);
  self->_timeOfDayRect.origin.y = v12;
  self->_timeOfDayRect.size.width = v13;
  self->_timeOfDayRect.size.height = v14;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61___UIDatePickerCompactTimeLabel__updateLayoutRectsForRanges___block_invoke_2;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [UIView performWithoutAnimation:v15];
}

- (id)_currentDateForInput
{
  v3 = MEMORY[0x1E696AEC0];
  hourText = [(_UIDatePickerCalendarTimeLabel *)self hourText];
  minuteText = [(_UIDatePickerCalendarTimeLabel *)self minuteText];
  v6 = [v3 stringWithFormat:@"%@~~%@", hourText, minuteText];

  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  clockLayout = [timeFormat clockLayout];

  if (clockLayout)
  {
    timeOfDayText = [(_UIDatePickerCalendarTimeLabel *)self timeOfDayText];
    v10 = [v6 stringByAppendingFormat:@"~~%@", timeOfDayText];

    v6 = v10;
  }

  v11 = [(NSDateFormatter *)self->_formatter dateFromString:v6];

  return v11;
}

- (void)_activateCompactLabelForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  overlayPresentation = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
  if ([overlayPresentation activeMode] == 1)
  {
    v6 = ![(UIView *)self isFirstResponder];
  }

  else
  {
    v6 = 0;
  }

  activeTouch = [recognizerCopy activeTouch];
  if ([activeTouch _isPointerTouch])
  {
    v8 = +[UIDevice currentDevice];
    _isHardwareKeyboardAvailable = [v8 _isHardwareKeyboardAvailable];

    if (_isHardwareKeyboardAvailable)
    {
      if (v6)
      {
        [overlayPresentation dismissPresentationAnimated:1];
      }

      [recognizerCopy locationInView:self];
      [(_UIDatePickerCalendarTimeLabel *)self didTapInputLabelAtLocation:?];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __75___UIDatePickerCompactTimeLabel__activateCompactLabelForGestureRecognizer___block_invoke;
      v11[3] = &unk_1E70F5AC0;
      v11[4] = self;
      [overlayPresentation activateEmptyPresentationWithMode:1 onDismiss:v11];
      backgroundView = [(_UIDatePickerCompactTimeLabel *)self backgroundView];
      [backgroundView setSelected:1];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (v6)
  {
    [overlayPresentation dismissPresentationAnimated:1];
  }

  else if (![(_UIDatePickerCalendarTimeLabel *)self scribbleInteractionIsActive])
  {
    [(_UIDatePickerCompactTimeLabel *)self activateLabel];
  }

LABEL_14:
}

- (void)activateLabel
{
  overlayPresentation = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
  if ([(UIView *)self isFirstResponder])
  {
    [(_UIDatePickerCalendarTimeLabel *)self resignFirstResponder];
  }

  [(_UIDatePickerCalendarTimeLabel *)self beginEditingWheels];
  if ([(_UIDatePickerCompactTimeLabel *)self tapInteractionControlledExternally])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46___UIDatePickerCompactTimeLabel_activateLabel__block_invoke;
    v12[3] = &unk_1E70F5AC0;
    v12[4] = self;
    [overlayPresentation activateEmptyPresentationWithMode:1 onDismiss:v12];
  }

  else
  {
    selectionDelegate = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
    [selectionDelegate compactTimeLabelDidBeginEditing:self];

    selectionDelegate2 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
    v6 = [selectionDelegate2 createDatePickerForCompactTimeLabel:self];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46___UIDatePickerCompactTimeLabel_activateLabel__block_invoke_2;
    v11[3] = &unk_1E70F4708;
    v11[4] = self;
    v7 = [UIAction actionWithHandler:v11];
    [v6 addAction:v7 forControlEvents:0x2000];

    sourceView = [overlayPresentation sourceView];
    [(UIView *)self bounds];
    [sourceView convertRect:self fromView:?];
    [overlayPresentation setSourceRect:?];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46___UIDatePickerCompactTimeLabel_activateLabel__block_invoke_3;
    v10[3] = &unk_1E70F5AC0;
    v10[4] = self;
    [overlayPresentation presentDatePicker:v6 onDismiss:v10];
    backgroundView = [(_UIDatePickerCompactTimeLabel *)self backgroundView];
    [backgroundView setSelected:1];
  }
}

- (CGSize)intrinsicContentSize
{
  [(_UIDatePickerCompactTimeLabel *)self sizeThatFits:INFINITY, INFINITY];
  [(UIView *)self alignmentRectInsets];
  UICeilToViewScale(self);
  v4 = v3;
  UICeilToViewScale(self);
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle:fits.width];
  [v4 compactLabelBackgroundPadding];

  attributedString = [(NSTextContentStorage *)self->_textContentStorage attributedString];
  v6 = [attributedString length];

  [(_UITextLayoutController *)self->_textLayoutController boundingRectForCharacterRange:0, v6];
  UICeilToViewScale(self);
  v8 = v7;
  UICeilToViewScale(self);
  v10 = v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)reloadWithCalendar:(id)calendar locale:(id)locale followsSystemHourCycle:(BOOL)cycle displaysTimeZone:(BOOL)zone
{
  zoneCopy = zone;
  cycleCopy = cycle;
  calendarCopy = calendar;
  localeCopy = locale;
  if ([(UIView *)self isFirstResponder])
  {
    *&self->_flags &= ~1u;
    [(_UIDatePickerCalendarTimeLabel *)self resignFirstResponder];
  }

  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  forceDoubleDigitHours = [timeFormat forceDoubleDigitHours];

  v13 = [[_UIDatePickerCalendarTimeFormat alloc] initWithCalendar:calendarCopy locale:localeCopy followsSystemHourCycle:cycleCopy forceDoubleDigitHours:forceDoubleDigitHours displaysTimeZone:zoneCopy];
  [(_UIDatePickerCalendarTimeLabel *)self setTimeFormat:v13];

  [(NSDateFormatter *)self->_formatter setCalendar:calendarCopy];
  if (localeCopy)
  {
    [(NSDateFormatter *)self->_formatter setLocale:localeCopy];
  }

  else
  {
    locale = [calendarCopy locale];
    [(NSDateFormatter *)self->_formatter setLocale:locale];
  }

  timeZone = [calendarCopy timeZone];
  [(NSDateFormatter *)self->_formatter setTimeZone:timeZone];

  v16 = MEMORY[0x1E696AEC0];
  timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  hourFormat = [timeFormat2 hourFormat];
  v19 = [v16 stringWithFormat:@"%@~~mm", hourFormat];

  timeFormat3 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  clockLayout = [timeFormat3 clockLayout];

  if (clockLayout)
  {
    v22 = [v19 stringByAppendingString:@"~~a"];

    v19 = v22;
  }

  [(NSDateFormatter *)self->_formatter setDateFormat:v19];
  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)_reloadWithDate:(id)date notify:(BOOL)notify
{
  notifyCopy = notify;
  dateCopy = date;
  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  [timeFormat setTimeZoneReferenceDate:dateCopy];

  v8 = [_UIDatePickerCalendarTime alloc];
  calendar = [(NSDateFormatter *)self->_formatter calendar];
  v10 = [(_UIDatePickerCalendarDateComponent *)v8 initWithDate:dateCopy calendar:calendar];

  selectedTime = self->_selectedTime;
  self->_selectedTime = v10;

  [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
  if (notifyCopy)
  {

    [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUIAndNotify];
  }
}

- (void)willBeginWritingInScribbleInteraction
{
  label = [(_UIDatePickerCompactTimeLabel *)self label];
  [label setAttributedText:0];
}

- (void)_updateInputFieldFromSelectedDateComponents
{
  formatter = self->_formatter;
  date = [(_UIDatePickerCalendarDateComponent *)self->_selectedTime date];
  v15 = [(NSDateFormatter *)formatter stringFromDate:date];

  v5 = [v15 componentsSeparatedByString:@"~~"];
  if ([(UIView *)self isFirstResponder]|| [(_UIDatePickerCompactTimeLabel *)self currentState]== 9)
  {
    *&self->_flags |= 1u;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [(_UIDatePickerCalendarTimeLabel *)self setHourText:v6];

    v7 = [v5 objectAtIndexedSubscript:1];
    [(_UIDatePickerCalendarTimeLabel *)self setMinuteText:v7];

    [(_UIDatePickerCalendarTimeLabel *)self _roundInputToClosestIntervalIfNeeded];
  }

  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  clockLayout = [timeFormat clockLayout];

  if (clockLayout)
  {
    v10 = [v5 objectAtIndexedSubscript:2];
    timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    pMSymbol = [timeFormat2 PMSymbol];
    v13 = [v10 compare:pMSymbol options:1] == 0;

    inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [inputValue setIsPM:v13];
  }

  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)_updateSelectedDateComponentsFromInput
{
  _currentDateForInput = [(_UIDatePickerCompactTimeLabel *)self _currentDateForInput];
  v3 = [_UIDatePickerCalendarTime alloc];
  calendar = [(NSDateFormatter *)self->_formatter calendar];
  v5 = [(_UIDatePickerCalendarDateComponent *)v3 initWithDate:_currentDateForInput calendar:calendar];

  if ([(_UIDatePickerCalendarDateComponent *)v5 isEqual:self->_selectedTime])
  {
    [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
  }

  else
  {
    objc_storeStrong(&self->_selectedTime, v5);
    [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
    selectionDelegate = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
    [selectionDelegate compactTimeLabel:self didSelectTime:v5];
  }
}

- (void)setPassthroughInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  passthroughInteraction = self->_passthroughInteraction;
  if (enabledCopy)
  {
    if (!passthroughInteraction)
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
  v8 = [(UIView *)self hitTest:event withEvent:?];

  if (v8)
  {
    return 0;
  }

  selectionDelegate = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  v11 = [selectionDelegate compactTimeLabel:self shouldDismissForInteractionAtLocation:{x, y}];

  return v11;
}

- (BOOL)timeLabel:(id)label didReceiveText:(id)text
{
  textCopy = text;
  if ([textCopy length] == 1)
  {
    aMSymbol = [(NSDateFormatter *)self->_formatter AMSymbol];
    pMSymbol = [(NSDateFormatter *)self->_formatter PMSymbol];
    v8 = [aMSymbol length];
    v9 = [pMSymbol length];
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = [aMSymbol characterAtIndex:v11];
        v13 = [pMSymbol characterAtIndex:v11];
        if (v12 != v13)
        {
          break;
        }

        ++v11;
        v14 = [aMSymbol length];
        v15 = [pMSymbol length];
        if (v14 >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = v12;
        if (v11 >= v16)
        {
          goto LABEL_16;
        }
      }

      v17 = v13;
    }

    else
    {
      v17 = 0;
      v12 = 0;
    }

LABEL_16:
    v32 = v12;
    v31 = v17;
    v19 = objc_opt_new();
    if (v12 != v17)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v32 length:1];
      localizedLowercaseString = [v20 localizedLowercaseString];
      [v19 addCharactersInString:localizedLowercaseString];

      localizedUppercaseString = [v20 localizedUppercaseString];
      [v19 addCharactersInString:localizedUppercaseString];
    }

    v23 = objc_opt_new();
    if (v32 != v17)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v31 length:1];
      localizedLowercaseString2 = [v24 localizedLowercaseString];
      [v23 addCharactersInString:localizedLowercaseString2];

      localizedUppercaseString2 = [v24 localizedUppercaseString];
      [v23 addCharactersInString:localizedUppercaseString2];
    }

    v27 = [textCopy characterAtIndex:0];
    v28 = [v19 characterIsMember:v27];
    if ((v28 & 1) != 0 || [v23 characterIsMember:v27])
    {
      inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      [inputValue setIsPM:v28 ^ 1u];

      [(_UIDatePickerCompactTimeLabel *)self _updateSelectedDateComponentsFromInput];
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)timeLabelWillBecomeFirstResponder:(id)responder
{
  selectionDelegate = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [selectionDelegate compactTimeLabelWillBecomeFirstResponder:self];
}

- (void)timeLabelDidResignFirstResponder:(id)responder
{
  overlayPresentation = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
  isPresentingOverlay = [overlayPresentation isPresentingOverlay];

  if ((isPresentingOverlay & 1) == 0)
  {
    overlayPresentation2 = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
    [overlayPresentation2 dismissPresentationAnimated:1];
  }

  if (*&self->_flags)
  {
    *&self->_flags &= ~1u;
    [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
  }

  [(_UIDatePickerCompactTimeLabel *)self _updateHoverStateLabelsIfNeeded];

  [(_UIDatePickerCompactTimeLabel *)self setPassthroughInteractionEnabled:0];
}

- (void)timeLabelDidBeginEditing:(id)editing
{
  selectionDelegate = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [selectionDelegate compactTimeLabelDidBeginEditing:self];
}

- (void)timeLabelDidEndEditing:(id)editing
{
  selectionDelegate = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [selectionDelegate compactTimeLabelDidEndEditing:self];
}

- (void)_expandedComponentRectForHours:(CGRect *)hours minuteRect:(CGRect *)rect timeOfDayRect:(CGRect *)dayRect
{
  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  memset(&v82, 0, sizeof(v82));
  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  clockLayout = [timeFormat clockLayout];

  if (clockLayout)
  {
    MinX = CGRectGetMinX(self->_timeOfDayRect);
    if (MinX >= CGRectGetMinX(self->_hourRect))
    {
      [(_UIDatePickerCompactTimeLabel *)self hourRect];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      [(_UIDatePickerCompactTimeLabel *)self minuteRect];
      v100.origin.x = v66;
      v100.origin.y = v67;
      v100.size.width = v68;
      v100.size.height = v69;
      v92.origin.x = v59;
      v92.origin.y = v61;
      v92.size.width = v63;
      v92.size.height = v65;
      v93 = CGRectUnion(v92, v100);
      x = v93.origin.x;
      y = v93.origin.y;
      width = v93.size.width;
      height = v93.size.height;
      v74 = CGRectGetWidth(v93) * 0.5;
      v94.origin.x = x;
      v94.origin.y = y;
      v94.size.width = width;
      v94.size.height = height;
      CGRectDivide(v94, &remainder, &slice, v74, CGRectMinXEdge);
      [(_UIDatePickerCompactTimeLabel *)self timeOfDayRect];
      v101.origin.x = v75;
      v101.origin.y = v76;
      v101.size.width = v77;
      v101.size.height = v78;
      v95 = CGRectUnion(slice, v101);
      v33 = v95.origin.x;
      v34 = v95.origin.y;
      v35 = v95.size.width;
      v36 = v95.size.height;
      v37 = CGRectGetWidth(v95) * 0.5;
      p_slice = &slice;
      v39 = &v82;
    }

    else
    {
      [(_UIDatePickerCompactTimeLabel *)self timeOfDayRect];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(_UIDatePickerCompactTimeLabel *)self hourRect];
      v97.origin.x = v20;
      v97.origin.y = v21;
      v97.size.width = v22;
      v97.size.height = v23;
      v85.origin.x = v13;
      v85.origin.y = v15;
      v85.size.width = v17;
      v85.size.height = v19;
      v86 = CGRectUnion(v85, v97);
      v24 = v86.origin.x;
      v25 = v86.origin.y;
      v26 = v86.size.width;
      v27 = v86.size.height;
      v28 = CGRectGetWidth(v86) * 0.5;
      v87.origin.x = v24;
      v87.origin.y = v25;
      v87.size.width = v26;
      v87.size.height = v27;
      CGRectDivide(v87, &v82, &remainder, v28, CGRectMinXEdge);
      [(_UIDatePickerCompactTimeLabel *)self minuteRect];
      v98.origin.x = v29;
      v98.origin.y = v30;
      v98.size.width = v31;
      v98.size.height = v32;
      v88 = CGRectUnion(remainder, v98);
      v33 = v88.origin.x;
      v34 = v88.origin.y;
      v35 = v88.size.width;
      v36 = v88.size.height;
      v37 = CGRectGetWidth(v88) * 0.5;
      p_slice = &remainder;
      v39 = &slice;
    }

    v96.origin.x = v33;
    v96.origin.y = v34;
    v96.size.width = v35;
    v96.size.height = v36;
    CGRectDivide(v96, p_slice, v39, v37, CGRectMinXEdge);
    if (hours)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [(_UIDatePickerCompactTimeLabel *)self hourRect];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [(_UIDatePickerCompactTimeLabel *)self minuteRect];
    v99.origin.x = v48;
    v99.origin.y = v49;
    v99.size.width = v50;
    v99.size.height = v51;
    v89.origin.x = v41;
    v89.origin.y = v43;
    v89.size.width = v45;
    v89.size.height = v47;
    v90 = CGRectUnion(v89, v99);
    v52 = v90.origin.x;
    v53 = v90.origin.y;
    v54 = v90.size.width;
    v55 = v90.size.height;
    v56 = CGRectGetWidth(v90) * 0.5;
    v91.origin.x = v52;
    v91.origin.y = v53;
    v91.size.width = v54;
    v91.size.height = v55;
    CGRectDivide(v91, &remainder, &slice, v56, CGRectMinXEdge);
    v57 = *(MEMORY[0x1E695F050] + 16);
    v82.origin = *MEMORY[0x1E695F050];
    v82.size = v57;
    if (hours)
    {
LABEL_8:
      size = remainder.size;
      hours->origin = remainder.origin;
      hours->size = size;
    }
  }

  if (rect)
  {
    v80 = slice.size;
    rect->origin = slice.origin;
    rect->size = v80;
  }

  if (dayRect)
  {
    v81 = v82.size;
    dayRect->origin = v82.origin;
    dayRect->size = v81;
  }
}

- (int64_t)_inputScopeForPointerLocation:(CGPoint)location
{
  if (self->_currentState - 2 > 7)
  {
    return 1;
  }

  v13 = v6;
  v14 = v5;
  v15 = v3;
  v16 = v4;
  y = location.y;
  x = location.x;
  memset(&v12, 0, sizeof(v12));
  memset(&v11, 0, sizeof(v11));
  memset(&v10, 0, sizeof(v10));
  [(_UIDatePickerCompactTimeLabel *)self _expandedComponentRectForHours:&v12 minuteRect:&v11 timeOfDayRect:&v10];
  v17.x = x;
  v17.y = y;
  if (CGRectContainsPoint(v12, v17))
  {
    return 2;
  }

  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v11, v18))
  {
    return 3;
  }

  v19.x = x;
  v19.y = y;
  if (CGRectContainsPoint(v10, v19))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (id)_viewForInputScope:(int64_t)scope
{
  if (scope == 4)
  {
    timeOfDayLabel = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
  }

  else if (scope == 3)
  {
    timeOfDayLabel = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
  }

  else
  {
    if (scope == 2)
    {
      [(_UIDatePickerCompactTimeLabel *)self hourLabel];
    }

    else
    {
      [(_UIDatePickerCompactTimeLabel *)self label];
    }
    timeOfDayLabel = ;
  }

  return timeOfDayLabel;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  if ([requestCopy _pointerType] == 1)
  {
    label = [(_UIDatePickerCompactTimeLabel *)self label];
    [label frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = @"UIDatePicker.time.all.pencil";
LABEL_10:
    v24 = v9;
    v25 = v11;
    v26 = v13;
    v27 = v15;
LABEL_11:
    v28 = [UIPointerRegion regionWithRect:v16 identifier:v24, v25, v26, v27, v30, v31];
    goto LABEL_12;
  }

  if (self->_currentState - 2 >= 8)
  {
    label2 = [(_UIDatePickerCompactTimeLabel *)self label];
    [label2 frame];
    v9 = v20;
    v11 = v21;
    v13 = v22;
    v15 = v23;

    v16 = @"UIDatePicker.time.all";
    goto LABEL_10;
  }

  if ((*&self->_flags & 2) == 0)
  {
    [requestCopy location];
    v17 = [(_UIDatePickerCompactTimeLabel *)self _inputScopeForPointerLocation:?];
    v18 = *(MEMORY[0x1E695F058] + 16);
    v30 = *MEMORY[0x1E695F058];
    v31 = v18;
    switch(v17)
    {
      case 4:
        [(_UIDatePickerCompactTimeLabel *)self _expandedComponentRectForHours:0 minuteRect:0 timeOfDayRect:&v30];
        v16 = @"UIDatePicker.time.timeOfDay";
        goto LABEL_18;
      case 3:
        [(_UIDatePickerCompactTimeLabel *)self _expandedComponentRectForHours:0 minuteRect:&v30 timeOfDayRect:0];
        v16 = @"UIDatePicker.time.minute";
        goto LABEL_18;
      case 2:
        [(_UIDatePickerCompactTimeLabel *)self _expandedComponentRectForHours:&v30 minuteRect:0 timeOfDayRect:0];
        v16 = @"UIDatePicker.time.hour";
LABEL_18:
        v25 = *(&v30 + 1);
        v24 = *&v30;
        v27 = *(&v31 + 1);
        v26 = *&v31;
        goto LABEL_11;
    }
  }

  v28 = 0;
LABEL_12:

  return v28;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  identifier = [regionCopy identifier];
  v7 = [identifier isEqual:@"UIDatePicker.time.all"];

  if (v7)
  {
    selfCopy = [(_UIDatePickerCompactTimeLabel *)self label];
    datePickerStyle = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle];
    compactLabelInputBackgroundPrefersConcentricPointerEffect = [datePickerStyle compactLabelInputBackgroundPrefersConcentricPointerEffect];

LABEL_10:
    datePickerStyle2 = [[UITargetedPreview alloc] initWithView:selfCopy];
    v19 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:datePickerStyle2];
    if (!compactLabelInputBackgroundPrefersConcentricPointerEffect)
    {
      [(UIView *)selfCopy frame];
      v52 = CGRectInset(v51, -4.0, -4.0);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;

      datePickerStyle2 = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle];
      [(UITargetedPreview *)datePickerStyle2 compactLabelInputBackgroundCornerRadius];
      v29 = v30 + 4.0;
      goto LABEL_14;
    }

    datePickerStyle3 = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle];
    [datePickerStyle3 compactLabelBackgroundPadding];
    v22 = v21;
    v24 = v23;

    [(UIView *)selfCopy frame];
    v50 = CGRectInset(v49, 2.0 - v22, 2.0 - v24);
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
LABEL_12:
    v29 = 1.79769313e308;
LABEL_14:

    v31 = [UIPointerShape shapeWithRoundedRect:x cornerRadius:y, width, height, v29];
    v32 = [UIPointerStyle styleWithEffect:v19 shape:v31];

    goto LABEL_15;
  }

  identifier2 = [regionCopy identifier];
  v12 = [identifier2 isEqual:@"UIDatePicker.time.hour"];

  if (v12)
  {
    hourLabel = [(_UIDatePickerCompactTimeLabel *)self hourLabel];
LABEL_9:
    selfCopy = hourLabel;
    compactLabelInputBackgroundPrefersConcentricPointerEffect = 0;
    goto LABEL_10;
  }

  identifier3 = [regionCopy identifier];
  v15 = [identifier3 isEqual:@"UIDatePicker.time.minute"];

  if (v15)
  {
    hourLabel = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
    goto LABEL_9;
  }

  identifier4 = [regionCopy identifier];
  v17 = [identifier4 isEqual:@"UIDatePicker.time.timeOfDay"];

  if (v17)
  {
    hourLabel = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
    goto LABEL_9;
  }

  identifier5 = [regionCopy identifier];
  v35 = [identifier5 isEqual:@"UIDatePicker.time.all.pencil"];

  if (v35)
  {
    selfCopy = self;
    datePickerStyle2 = objc_opt_new();
    [(UIView *)selfCopy bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    layer = [(UIView *)selfCopy layer];
    [layer cornerRadius];
    v46 = [UIBezierPath bezierPathWithRoundedRect:v37 cornerRadius:v39, v41, v43, v45];
    [(UITargetedPreview *)datePickerStyle2 setShadowPath:v46];

    v47 = [[UITargetedPreview alloc] initWithView:selfCopy parameters:datePickerStyle2];
    v19 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v47];
    [(UIView *)selfCopy frame];
    v54 = CGRectInset(v53, 5.0, 5.0);
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;

    goto LABEL_12;
  }

  v32 = 0;
LABEL_15:

  return v32;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  identifier = [regionCopy identifier];
  v7 = [identifier isEqual:@"UIDatePicker.time.all"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    identifier2 = [regionCopy identifier];
    v10 = [identifier2 isEqual:@"UIDatePicker.time.hour"];

    if (v10)
    {
      v8 = 2;
    }

    else
    {
      identifier3 = [regionCopy identifier];
      v12 = [identifier3 isEqual:@"UIDatePicker.time.minute"];

      if (v12)
      {
        v8 = 3;
      }

      else
      {
        identifier4 = [regionCopy identifier];
        v14 = [identifier4 isEqual:@"UIDatePicker.time.timeOfDay"];

        if (!v14)
        {
          goto LABEL_10;
        }

        v8 = 4;
      }
    }
  }

  self->_highlightedScope = v8;
LABEL_10:
  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (_UIDatePickerCompactTimeLabelDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end