@interface _UIDatePickerCompactTimeLabel
- (BOOL)adjustsFontSizeToFitWidth;
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)timeLabel:(id)a3 didReceiveText:(id)a4;
- (CGRect)hourRect;
- (CGRect)minuteRect;
- (CGRect)timeOfDayRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIDatePickerCompactTimeLabel)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4;
- (_UIDatePickerCompactTimeLabelDelegate)selectionDelegate;
- (double)minimumScaleFactor;
- (id)_currentDateForInput;
- (id)_viewForInputScope:(int64_t)a3;
- (id)font;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)updateHoverLabelForAttributedString:(id)a3 ranges:(id *)a4;
- (int64_t)_inputScopeForPointerLocation:(CGPoint)a3;
- (void)_activateCompactLabelForGestureRecognizer:(id)a3;
- (void)_expandedComponentRectForHours:(CGRect *)a3 minuteRect:(CGRect *)a4 timeOfDayRect:(CGRect *)a5;
- (void)_reloadWithDate:(id)a3 notify:(BOOL)a4;
- (void)_updateEnabledStyling;
- (void)_updateHoverStateLabelsIfNeeded;
- (void)_updateInputFieldFromSelectedDateComponents;
- (void)_updateInputFieldLayoutForCurrentState;
- (void)_updateLayoutRectsForRanges:(id *)a3;
- (void)_updateSelectedDateComponentsFromInput;
- (void)_updateTextContentStorage;
- (void)_updateTimeFormatIfNeeded;
- (void)activateLabel;
- (void)applyTextAttributesForState:(unint64_t)a3 inputScope:(int64_t)a4 updater:(id)a5;
- (void)controlEventsGestureRecognizer:(id)a3 recognizedControlEvent:(unint64_t)a4 withEvent:(id)a5;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pushCurrentStateIntoUI;
- (void)pushCurrentStateIntoUIAndNotify;
- (void)reloadWithCalendar:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5 displaysTimeZone:(BOOL)a6;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setHighlightedForTouch:(BOOL)a3;
- (void)setMinimumScaleFactor:(double)a3;
- (void)setOverrideAttributes:(id)a3;
- (void)setPassthroughInteractionEnabled:(BOOL)a3;
- (void)stateMachineUpdateFromState:(unint64_t)a3 toState:(unint64_t)a4;
- (void)timeLabelDidBeginEditing:(id)a3;
- (void)timeLabelDidEndEditing:(id)a3;
- (void)timeLabelDidResignFirstResponder:(id)a3;
- (void)timeLabelWillBecomeFirstResponder:(id)a3;
- (void)willBeginWritingInScribbleInteraction;
@end

@implementation _UIDatePickerCompactTimeLabel

- (_UIDatePickerCompactTimeLabel)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4
{
  v86[8] = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = _UIDatePickerCompactTimeLabel;
  v4 = [(_UIDatePickerCalendarTimeLabel *)&v85 initWithTimeFormat:a3 minuteInterval:a4];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = 1;
    v6 = [(UIView *)v4 traitCollection];
    v7 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v6 userInterfaceIdiom]);

    objc_storeStrong(&v5->_datePickerStyle, v7);
    v8 = objc_opt_new();
    [v8 setUserInteractionEnabled:0];
    v9 = [(UIView *)v5 traitCollection];
    v10 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", v9);
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
    v80 = [v7 compactLabelBackgroundButtonConfiguration];
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
    v18 = [(UIView *)v5 traitCollection];
    v19 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", v18);
    [v17 setFont:v19];

    [v17 setAdjustsFontForContentSizeCategory:1];
    [v17 setHidden:1];
    objc_storeStrong(&v5->_hourLabel, v17);
    v20 = objc_opt_new();
    v21 = [(UIView *)v5 traitCollection];
    v22 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", v21);
    [v20 setFont:v22];

    [v20 setAdjustsFontForContentSizeCategory:1];
    [v20 setHidden:1];
    objc_storeStrong(&v5->_minuteLabel, v20);
    v23 = objc_opt_new();
    v24 = [(UIView *)v5 traitCollection];
    v25 = _UIDatePickerFontWithMonospacedNumbers(@"UICTFontTextStyleBody", v24);
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
    v74 = [(UIView *)v5 topAnchor];
    v73 = [v8 topAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:-v31];
    v86[0] = v72;
    v71 = [(UIView *)v5 leadingAnchor];
    v70 = [v8 leadingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70 constant:-v29];
    v86[1] = v69;
    v68 = [(UIView *)v5 bottomAnchor];
    v67 = [v8 bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:v31];
    v86[2] = v66;
    v64 = [(UIView *)v5 trailingAnchor];
    v81 = v8;
    v63 = [v8 trailingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63 constant:v29];
    v86[3] = v62;
    v61 = [v14 leadingAnchor];
    v60 = [(UIView *)v5 leadingAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v86[4] = v59;
    v58 = [v14 trailingAnchor];
    v32 = [(UIView *)v5 trailingAnchor];
    v33 = [v58 constraintEqualToAnchor:v32];
    v86[5] = v33;
    v34 = [v14 topAnchor];
    v35 = [(UIView *)v5 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v86[6] = v36;
    v79 = v14;
    v37 = [v14 bottomAnchor];
    v38 = [(UIView *)v5 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
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
    v45 = [(_UIDatePickerCalendarTimeLabel *)v5 timeFormat];
    v46 = [v45 hourFormat];
    v47 = [v44 stringWithFormat:@"%@~~mm", v46];

    v48 = [(_UIDatePickerCalendarTimeLabel *)v5 timeFormat];
    v49 = [v48 clockLayout];

    if (v49)
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

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v5 setFont:v4];

  [(_UIDatePickerCompactTimeLabel *)self _updateTextContentStorage];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (id)font
{
  v2 = [(_UIDatePickerCompactTimeLabel *)self label];
  v3 = [v2 font];

  return v3;
}

- (void)_updateEnabledStyling
{
  [(UIView *)self setUserInteractionEnabled:[(_UIDatePickerCompactTimeLabel *)self isEnabled]];
  v3 = [(_UIDatePickerCompactTimeLabel *)self isEnabled];
  v4 = [(_UIDatePickerCompactTimeLabel *)self backgroundView];
  [v4 setEnabled:v3];

  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (BOOL)adjustsFontSizeToFitWidth
{
  v2 = [(_UIDatePickerCompactTimeLabel *)self label];
  v3 = [v2 adjustsFontSizeToFitWidth];

  return v3;
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v5 setAdjustsFontSizeToFitWidth:v3];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (double)minimumScaleFactor
{
  v2 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v2 minimumScaleFactor];
  v4 = v3;

  return v4;
}

- (void)setMinimumScaleFactor:(double)a3
{
  v5 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v5 setMinimumScaleFactor:a3];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setOverrideAttributes:(id)a3
{
  objc_storeStrong(&self->_overrideAttributes, a3);

  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)applyTextAttributesForState:(unint64_t)a3 inputScope:(int64_t)a4 updater:(id)a5
{
  v8 = a5;
  if (a3 <= 0xA && ((1 << a3) & 0x602) != 0)
  {
    [(_UIDatePickerCalendarTimeLabel *)&v13 applyTextAttributesForState:a3 inputScope:a4 updater:v8, v12.receiver, v12.super_class, self, _UIDatePickerCompactTimeLabel];
    goto LABEL_4;
  }

  if (a4 > 1)
  {
    switch(a4)
    {
      case 2:
        v9 = +[UIColor labelColor];
        v10 = +[UIColor systemWhiteColor];
        v11 = +[UIColor clearColor];
        (*(v8 + 2))(v8, v9, v10, 0, 0, v11);
        break;
      case 3:
        v9 = +[UIColor labelColor];
        v10 = +[UIColor systemWhiteColor];
        v11 = +[UIColor clearColor];
        (*(v8 + 2))(v8, v9, 0, v10, 0, v11);
        break;
      case 4:
        v9 = +[UIColor labelColor];
        v10 = +[UIColor systemWhiteColor];
        (*(v8 + 2))(v8, v9, 0, 0, v10, 0);
        goto LABEL_16;
      default:
        goto LABEL_4;
    }

LABEL_16:
    goto LABEL_17;
  }

  if (!a4)
  {
    [(_UIDatePickerCalendarTimeLabel *)&v12 applyTextAttributesForState:a3 inputScope:0 updater:v8, self, _UIDatePickerCompactTimeLabel, v13.receiver, v13.super_class];
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    v9 = +[UIColor systemWhiteColor];
    (*(v8 + 2))(v8, v9, 0, 0, 0, 0);
LABEL_17:
  }

LABEL_4:
}

- (void)controlEventsGestureRecognizer:(id)a3 recognizedControlEvent:(unint64_t)a4 withEvent:(id)a5
{
  v16 = a3;
  [v16 locationInView:self];
  if (a4 <= 63)
  {
    switch(a4)
    {
      case 1uLL:
        v11 = v7;
        v12 = v8;
        v13 = [v16 activeTouch];
        v14 = [v13 _isPointerTouch];

        if (v14)
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
        v9 = self;
        v10 = 0;
        goto LABEL_17;
      default:
        goto LABEL_18;
    }

    v9 = self;
    v10 = 1;
LABEL_17:
    [(_UIDatePickerCompactTimeLabel *)v9 setHighlightedForTouch:v10];
    goto LABEL_18;
  }

  if (a4 == 64)
  {
    [(_UIDatePickerCompactTimeLabel *)self _activateCompactLabelForGestureRecognizer:v16];
LABEL_13:
    [(_UIDatePickerCompactTimeLabel *)self setHighlightedForTouch:0];
    objc_storeWeak(&self->_touchHighlightedView, 0);
    goto LABEL_18;
  }

  if (a4 == 128 || a4 == 256)
  {
    goto LABEL_13;
  }

LABEL_18:
}

- (void)setHighlightedForTouch:(BOOL)a3
{
  flags = self->_flags;
  if (((((flags & 4) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    if (a3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_flags = flags & 0xFB | v5;
    v6 = objc_loadWeakRetained(&self->_touchHighlightedView);
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceStyle] == 2;
    if (v4)
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
    v8 = [(_UIDatePickerCompactTimeLabel *)self hourLabel];
    [v8 setHidden:v5 & 1];

    v9 = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
    [v9 setHidden:v6 & 1];

    v10 = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
    [v10 setHidden:v7 & 1];
  }
}

- (id)updateHoverLabelForAttributedString:(id)a3 ranges:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 mutableCopy];
  [(_UIDatePickerCompactTimeLabel *)self _updateHoverStateLabelsIfNeeded];
  highlightedScope = self->_highlightedScope;
  switch(highlightedScope)
  {
    case 4:
      location = a4->var2.location;
      a4 = (a4 + 32);
      p_length = &a4->var0.length;
      v19 = [v6 attributedSubstringFromRange:{location, a4->var0.length}];
      v20 = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
      [v20 setAttributedText:v19];

      v23 = *off_1E70EC920;
      v11 = +[UIColor clearColor];
      v24 = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v24;
      v14 = &v23;
      break;
    case 3:
      v15 = a4->var1.location;
      a4 = (a4 + 16);
      p_length = &a4->var0.length;
      v16 = [v6 attributedSubstringFromRange:{v15, a4->var0.length}];
      v17 = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
      [v17 setAttributedText:v16];

      v25 = *off_1E70EC920;
      v11 = +[UIColor clearColor];
      v26 = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v26;
      v14 = &v25;
      break;
    case 2:
      p_length = &a4->var0.length;
      v9 = [v6 attributedSubstringFromRange:{a4->var0.location, a4->var0.length}];
      v10 = [(_UIDatePickerCompactTimeLabel *)self hourLabel];
      [v10 setAttributedText:v9];

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
  [v6 setAttributes:v21 range:{a4->var0.location, *p_length}];

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

  v5 = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 length];
    v8 = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
    [v4 addAttributes:v8 range:{0, v7}];
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

  v10 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v10 setAttributedText:v4];

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
  v3 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [v3 compactTimeLabel:self didSelectTime:self->_selectedTime];
}

- (void)stateMachineUpdateFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  self->_currentState = a4;
  v5.receiver = self;
  v5.super_class = _UIDatePickerCompactTimeLabel;
  [(_UIDatePickerCalendarTimeLabel *)&v5 stateMachineUpdateFromState:a3 toState:?];
  [(_UIDatePickerCompactTimeLabel *)self _updateTimeFormatIfNeeded];
  [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldLayoutForCurrentState];
}

- (void)_updateTimeFormatIfNeeded
{
  v3 = self->_currentState - 2;
  v4 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v5 = [v4 forceDoubleDigitHours];

  if (v3 < 7 != v5)
  {
    *&self->_flags |= 2u;
    v6 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    v7 = [v6 withForceDoubleDigitHours:v3 < 7];

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
  v3 = [(_UIDatePickerCompactTimeLabel *)self currentState];
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 != 5)
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

    if (v3 != 7)
    {
      if (v3 == 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_13:
    v14 = 552;
    goto LABEL_15;
  }

  switch(v3)
  {
    case 2:
LABEL_12:
      v15 = [(_UIDatePickerCompactTimeLabel *)self label];
      [v15 frame];
      v6 = v16;
      v8 = v17;
      v10 = v18;
      v12 = v19;

LABEL_16:
      v13 = [(UIView *)self tintColor];
      goto LABEL_17;
    case 3:
      goto LABEL_13;
    case 4:
LABEL_11:
      v14 = 584;
      goto LABEL_15;
  }

LABEL_8:
  v4 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = +[UIColor clearColor];
LABEL_17:
  v21 = v13;
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
  v22 = [(_UIDatePickerCompactTimeLabel *)self inputBackgroundView];
  [v22 setBackgroundColor:v21];
}

- (void)_updateTextContentStorage
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIDatePickerCompactTimeLabel *)self label];
  v4 = [v3 attributedText];
  v5 = [v4 string];

  v6 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v6 _stringDrawingOptions];

  v15 = *off_1E70EC918;
  v7 = [(_UIDatePickerCompactTimeLabel *)self label];
  v8 = [v7 font];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v9 mutableCopy];

  v11 = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(_UIDatePickerCompactTimeLabel *)self overrideAttributes];
    [v10 addEntriesFromDictionary:v13];
  }

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v10];
  [(NSTextContentStorage *)self->_textContentStorage setAttributedString:v14];
}

- (void)_updateLayoutRectsForRanges:(id *)a3
{
  [(_UIDatePickerCompactTimeLabel *)self _updateTextContentStorage];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___UIDatePickerCompactTimeLabel__updateLayoutRectsForRanges___block_invoke;
  aBlock[3] = &unk_1E711EAA0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  self->_hourRect.origin.x = v5[2](v5, a3->var0.location, a3->var0.length);
  self->_hourRect.origin.y = v6;
  self->_hourRect.size.width = v7;
  self->_hourRect.size.height = v8;
  self->_minuteRect.origin.x = v5[2](v5, a3->var1.location, a3->var1.length);
  self->_minuteRect.origin.y = v9;
  self->_minuteRect.size.width = v10;
  self->_minuteRect.size.height = v11;
  self->_timeOfDayRect.origin.x = v5[2](v5, a3->var2.location, a3->var2.length);
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
  v4 = [(_UIDatePickerCalendarTimeLabel *)self hourText];
  v5 = [(_UIDatePickerCalendarTimeLabel *)self minuteText];
  v6 = [v3 stringWithFormat:@"%@~~%@", v4, v5];

  v7 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v8 = [v7 clockLayout];

  if (v8)
  {
    v9 = [(_UIDatePickerCalendarTimeLabel *)self timeOfDayText];
    v10 = [v6 stringByAppendingFormat:@"~~%@", v9];

    v6 = v10;
  }

  v11 = [(NSDateFormatter *)self->_formatter dateFromString:v6];

  return v11;
}

- (void)_activateCompactLabelForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
  if ([v5 activeMode] == 1)
  {
    v6 = ![(UIView *)self isFirstResponder];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 activeTouch];
  if ([v7 _isPointerTouch])
  {
    v8 = +[UIDevice currentDevice];
    v9 = [v8 _isHardwareKeyboardAvailable];

    if (v9)
    {
      if (v6)
      {
        [v5 dismissPresentationAnimated:1];
      }

      [v4 locationInView:self];
      [(_UIDatePickerCalendarTimeLabel *)self didTapInputLabelAtLocation:?];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __75___UIDatePickerCompactTimeLabel__activateCompactLabelForGestureRecognizer___block_invoke;
      v11[3] = &unk_1E70F5AC0;
      v11[4] = self;
      [v5 activateEmptyPresentationWithMode:1 onDismiss:v11];
      v10 = [(_UIDatePickerCompactTimeLabel *)self backgroundView];
      [v10 setSelected:1];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (v6)
  {
    [v5 dismissPresentationAnimated:1];
  }

  else if (![(_UIDatePickerCalendarTimeLabel *)self scribbleInteractionIsActive])
  {
    [(_UIDatePickerCompactTimeLabel *)self activateLabel];
  }

LABEL_14:
}

- (void)activateLabel
{
  v3 = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
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
    [v3 activateEmptyPresentationWithMode:1 onDismiss:v12];
  }

  else
  {
    v4 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
    [v4 compactTimeLabelDidBeginEditing:self];

    v5 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
    v6 = [v5 createDatePickerForCompactTimeLabel:self];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46___UIDatePickerCompactTimeLabel_activateLabel__block_invoke_2;
    v11[3] = &unk_1E70F4708;
    v11[4] = self;
    v7 = [UIAction actionWithHandler:v11];
    [v6 addAction:v7 forControlEvents:0x2000];

    v8 = [v3 sourceView];
    [(UIView *)self bounds];
    [v8 convertRect:self fromView:?];
    [v3 setSourceRect:?];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46___UIDatePickerCompactTimeLabel_activateLabel__block_invoke_3;
    v10[3] = &unk_1E70F5AC0;
    v10[4] = self;
    [v3 presentDatePicker:v6 onDismiss:v10];
    v9 = [(_UIDatePickerCompactTimeLabel *)self backgroundView];
    [v9 setSelected:1];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle:a3.width];
  [v4 compactLabelBackgroundPadding];

  v5 = [(NSTextContentStorage *)self->_textContentStorage attributedString];
  v6 = [v5 length];

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

- (void)reloadWithCalendar:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5 displaysTimeZone:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v23 = a3;
  v10 = a4;
  if ([(UIView *)self isFirstResponder])
  {
    *&self->_flags &= ~1u;
    [(_UIDatePickerCalendarTimeLabel *)self resignFirstResponder];
  }

  v11 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v12 = [v11 forceDoubleDigitHours];

  v13 = [[_UIDatePickerCalendarTimeFormat alloc] initWithCalendar:v23 locale:v10 followsSystemHourCycle:v7 forceDoubleDigitHours:v12 displaysTimeZone:v6];
  [(_UIDatePickerCalendarTimeLabel *)self setTimeFormat:v13];

  [(NSDateFormatter *)self->_formatter setCalendar:v23];
  if (v10)
  {
    [(NSDateFormatter *)self->_formatter setLocale:v10];
  }

  else
  {
    v14 = [v23 locale];
    [(NSDateFormatter *)self->_formatter setLocale:v14];
  }

  v15 = [v23 timeZone];
  [(NSDateFormatter *)self->_formatter setTimeZone:v15];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v18 = [v17 hourFormat];
  v19 = [v16 stringWithFormat:@"%@~~mm", v18];

  v20 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v21 = [v20 clockLayout];

  if (v21)
  {
    v22 = [v19 stringByAppendingString:@"~~a"];

    v19 = v22;
  }

  [(NSDateFormatter *)self->_formatter setDateFormat:v19];
  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)_reloadWithDate:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  [v7 setTimeZoneReferenceDate:v6];

  v8 = [_UIDatePickerCalendarTime alloc];
  v9 = [(NSDateFormatter *)self->_formatter calendar];
  v10 = [(_UIDatePickerCalendarDateComponent *)v8 initWithDate:v6 calendar:v9];

  selectedTime = self->_selectedTime;
  self->_selectedTime = v10;

  [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
  if (v4)
  {

    [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUIAndNotify];
  }
}

- (void)willBeginWritingInScribbleInteraction
{
  v2 = [(_UIDatePickerCompactTimeLabel *)self label];
  [v2 setAttributedText:0];
}

- (void)_updateInputFieldFromSelectedDateComponents
{
  formatter = self->_formatter;
  v4 = [(_UIDatePickerCalendarDateComponent *)self->_selectedTime date];
  v15 = [(NSDateFormatter *)formatter stringFromDate:v4];

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

  v8 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v9 = [v8 clockLayout];

  if (v9)
  {
    v10 = [v5 objectAtIndexedSubscript:2];
    v11 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    v12 = [v11 PMSymbol];
    v13 = [v10 compare:v12 options:1] == 0;

    v14 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [v14 setIsPM:v13];
  }

  [(_UIDatePickerCompactTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)_updateSelectedDateComponentsFromInput
{
  v7 = [(_UIDatePickerCompactTimeLabel *)self _currentDateForInput];
  v3 = [_UIDatePickerCalendarTime alloc];
  v4 = [(NSDateFormatter *)self->_formatter calendar];
  v5 = [(_UIDatePickerCalendarDateComponent *)v3 initWithDate:v7 calendar:v4];

  if ([(_UIDatePickerCalendarDateComponent *)v5 isEqual:self->_selectedTime])
  {
    [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
  }

  else
  {
    objc_storeStrong(&self->_selectedTime, v5);
    [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
    v6 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
    [v6 compactTimeLabel:self didSelectTime:v5];
  }
}

- (void)setPassthroughInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  passthroughInteraction = self->_passthroughInteraction;
  if (v3)
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

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = [(UIView *)self hitTest:a5 withEvent:?];

  if (v8)
  {
    return 0;
  }

  v10 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  v11 = [v10 compactTimeLabel:self shouldDismissForInteractionAtLocation:{x, y}];

  return v11;
}

- (BOOL)timeLabel:(id)a3 didReceiveText:(id)a4
{
  v5 = a4;
  if ([v5 length] == 1)
  {
    v6 = [(NSDateFormatter *)self->_formatter AMSymbol];
    v7 = [(NSDateFormatter *)self->_formatter PMSymbol];
    v8 = [v6 length];
    v9 = [v7 length];
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
        v12 = [v6 characterAtIndex:v11];
        v13 = [v7 characterAtIndex:v11];
        if (v12 != v13)
        {
          break;
        }

        ++v11;
        v14 = [v6 length];
        v15 = [v7 length];
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
      v21 = [v20 localizedLowercaseString];
      [v19 addCharactersInString:v21];

      v22 = [v20 localizedUppercaseString];
      [v19 addCharactersInString:v22];
    }

    v23 = objc_opt_new();
    if (v32 != v17)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v31 length:1];
      v25 = [v24 localizedLowercaseString];
      [v23 addCharactersInString:v25];

      v26 = [v24 localizedUppercaseString];
      [v23 addCharactersInString:v26];
    }

    v27 = [v5 characterAtIndex:0];
    v28 = [v19 characterIsMember:v27];
    if ((v28 & 1) != 0 || [v23 characterIsMember:v27])
    {
      v29 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      [v29 setIsPM:v28 ^ 1u];

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

- (void)timeLabelWillBecomeFirstResponder:(id)a3
{
  v4 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [v4 compactTimeLabelWillBecomeFirstResponder:self];
}

- (void)timeLabelDidResignFirstResponder:(id)a3
{
  v4 = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
  v5 = [v4 isPresentingOverlay];

  if ((v5 & 1) == 0)
  {
    v6 = [(_UIDatePickerCompactTimeLabel *)self overlayPresentation];
    [v6 dismissPresentationAnimated:1];
  }

  if (*&self->_flags)
  {
    *&self->_flags &= ~1u;
    [(_UIDatePickerCompactTimeLabel *)self _updateInputFieldFromSelectedDateComponents];
  }

  [(_UIDatePickerCompactTimeLabel *)self _updateHoverStateLabelsIfNeeded];

  [(_UIDatePickerCompactTimeLabel *)self setPassthroughInteractionEnabled:0];
}

- (void)timeLabelDidBeginEditing:(id)a3
{
  v4 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [v4 compactTimeLabelDidBeginEditing:self];
}

- (void)timeLabelDidEndEditing:(id)a3
{
  v4 = [(_UIDatePickerCompactTimeLabel *)self selectionDelegate];
  [v4 compactTimeLabelDidEndEditing:self];
}

- (void)_expandedComponentRectForHours:(CGRect *)a3 minuteRect:(CGRect *)a4 timeOfDayRect:(CGRect *)a5
{
  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  memset(&v82, 0, sizeof(v82));
  v9 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v10 = [v9 clockLayout];

  if (v10)
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
    if (a3)
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
    if (a3)
    {
LABEL_8:
      size = remainder.size;
      a3->origin = remainder.origin;
      a3->size = size;
    }
  }

  if (a4)
  {
    v80 = slice.size;
    a4->origin = slice.origin;
    a4->size = v80;
  }

  if (a5)
  {
    v81 = v82.size;
    a5->origin = v82.origin;
    a5->size = v81;
  }
}

- (int64_t)_inputScopeForPointerLocation:(CGPoint)a3
{
  if (self->_currentState - 2 > 7)
  {
    return 1;
  }

  v13 = v6;
  v14 = v5;
  v15 = v3;
  v16 = v4;
  y = a3.y;
  x = a3.x;
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

- (id)_viewForInputScope:(int64_t)a3
{
  if (a3 == 4)
  {
    v3 = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
  }

  else if (a3 == 3)
  {
    v3 = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
  }

  else
  {
    if (a3 == 2)
    {
      [(_UIDatePickerCompactTimeLabel *)self hourLabel];
    }

    else
    {
      [(_UIDatePickerCompactTimeLabel *)self label];
    }
    v3 = ;
  }

  return v3;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  if ([v6 _pointerType] == 1)
  {
    v7 = [(_UIDatePickerCompactTimeLabel *)self label];
    [v7 frame];
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
    v19 = [(_UIDatePickerCompactTimeLabel *)self label];
    [v19 frame];
    v9 = v20;
    v11 = v21;
    v13 = v22;
    v15 = v23;

    v16 = @"UIDatePicker.time.all";
    goto LABEL_10;
  }

  if ((*&self->_flags & 2) == 0)
  {
    [v6 location];
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [v5 identifier];
  v7 = [v6 isEqual:@"UIDatePicker.time.all"];

  if (v7)
  {
    v8 = [(_UIDatePickerCompactTimeLabel *)self label];
    v9 = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle];
    v10 = [v9 compactLabelInputBackgroundPrefersConcentricPointerEffect];

LABEL_10:
    v18 = [[UITargetedPreview alloc] initWithView:v8];
    v19 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v18];
    if (!v10)
    {
      [(UIView *)v8 frame];
      v52 = CGRectInset(v51, -4.0, -4.0);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;

      v18 = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle];
      [(UITargetedPreview *)v18 compactLabelInputBackgroundCornerRadius];
      v29 = v30 + 4.0;
      goto LABEL_14;
    }

    v20 = [(_UIDatePickerCompactTimeLabel *)self datePickerStyle];
    [v20 compactLabelBackgroundPadding];
    v22 = v21;
    v24 = v23;

    [(UIView *)v8 frame];
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

  v11 = [v5 identifier];
  v12 = [v11 isEqual:@"UIDatePicker.time.hour"];

  if (v12)
  {
    v13 = [(_UIDatePickerCompactTimeLabel *)self hourLabel];
LABEL_9:
    v8 = v13;
    v10 = 0;
    goto LABEL_10;
  }

  v14 = [v5 identifier];
  v15 = [v14 isEqual:@"UIDatePicker.time.minute"];

  if (v15)
  {
    v13 = [(_UIDatePickerCompactTimeLabel *)self minuteLabel];
    goto LABEL_9;
  }

  v16 = [v5 identifier];
  v17 = [v16 isEqual:@"UIDatePicker.time.timeOfDay"];

  if (v17)
  {
    v13 = [(_UIDatePickerCompactTimeLabel *)self timeOfDayLabel];
    goto LABEL_9;
  }

  v34 = [v5 identifier];
  v35 = [v34 isEqual:@"UIDatePicker.time.all.pencil"];

  if (v35)
  {
    v8 = self;
    v18 = objc_opt_new();
    [(UIView *)v8 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [(UIView *)v8 layer];
    [v44 cornerRadius];
    v46 = [UIBezierPath bezierPathWithRoundedRect:v37 cornerRadius:v39, v41, v43, v45];
    [(UITargetedPreview *)v18 setShadowPath:v46];

    v47 = [[UITargetedPreview alloc] initWithView:v8 parameters:v18];
    v19 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v47];
    [(UIView *)v8 frame];
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

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v15 = a4;
  v6 = [v15 identifier];
  v7 = [v6 isEqual:@"UIDatePicker.time.all"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v15 identifier];
    v10 = [v9 isEqual:@"UIDatePicker.time.hour"];

    if (v10)
    {
      v8 = 2;
    }

    else
    {
      v11 = [v15 identifier];
      v12 = [v11 isEqual:@"UIDatePicker.time.minute"];

      if (v12)
      {
        v8 = 3;
      }

      else
      {
        v13 = [v15 identifier];
        v14 = [v13 isEqual:@"UIDatePicker.time.timeOfDay"];

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