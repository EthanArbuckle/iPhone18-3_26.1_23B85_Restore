@interface _UIDatePickerCalendarTimeLabel
- (BOOL)_digits:(unint64_t *)a3 fromText:(id)a4 count:(int64_t *)a5;
- (BOOL)_pointIsInsideHourSide:(CGPoint)a3;
- (BOOL)_suppressSoftwareKeyboard;
- (BOOL)_treatMinutesAsHoursForState:(unint64_t)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)processTapOutside;
- (BOOL)resignFirstResponder;
- (CGRect)hourRect;
- (CGRect)minuteRect;
- (CGRect)timeOfDayRect;
- (NSString)hourText;
- (NSString)minuteText;
- (NSString)text;
- (NSString)timeOfDayText;
- (_UIDatePickerCalendarTimeLabel)initWithFrame:(CGRect)a3;
- (_UIDatePickerCalendarTimeLabel)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4;
- (_UIDatePickerCalendarTimeLabelDelegate)delegate;
- (id)attributedTextWithRanges:(id *)a3;
- (id)inputView;
- (id)keyCommands;
- (int64_t)keyboardType;
- (int64_t)minuteInterval;
- (void)_roundInputToClosestIntervalIfNeeded;
- (void)_stateMachineSendEvent:(unint64_t)a3;
- (void)applyTextAttributesForState:(unint64_t)a3 inputScope:(int64_t)a4 updater:(id)a5;
- (void)deleteBackward;
- (void)didReceiveDownArrowKey:(id)a3;
- (void)didReceiveLeftArrowKey:(id)a3;
- (void)didReceiveRightArrowKey:(id)a3;
- (void)didReceiveUpArrowKey:(id)a3;
- (void)didTapInputLabelAtLocation:(CGPoint)a3;
- (void)indirectScribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4;
- (void)indirectScribbleInteraction:(id)a3 focusElementIfNeeded:(id)a4 referencePoint:(CGPoint)a5 completion:(id)a6;
- (void)indirectScribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)indirectScribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)insertText:(id)a3;
- (void)layoutSubviews;
- (void)pushCurrentStateIntoUIAndNotify;
- (void)setAllowsTextInput:(BOOL)a3;
- (void)setHourText:(id)a3;
- (void)setInputScope:(int64_t)a3;
- (void)setInsertedDigitCount:(unint64_t)a3;
- (void)setMinuteInterval:(int64_t)a3;
- (void)setMinuteText:(id)a3;
- (void)setRoundsToMinuteInterval:(BOOL)a3;
- (void)setTimeFormat:(id)a3;
- (void)stateMachineUpdateFromState:(unint64_t)a3 toState:(unint64_t)a4;
- (void)tintColorDidChange;
@end

@implementation _UIDatePickerCalendarTimeLabel

- (_UIDatePickerCalendarTimeLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [_UIDatePickerCalendarTimeFormat formatWithCalendar:v8 locale:v9 followsSystemHourCycle:1];
  v11 = [(_UIDatePickerCalendarTimeLabel *)self initWithTimeFormat:v10 minuteInterval:1];

  if (v11)
  {
    [(UIView *)v11 setFrame:x, y, width, height];
  }

  return v11;
}

- (_UIDatePickerCalendarTimeLabel)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4
{
  v7 = a3;
  v26.receiver = self;
  v26.super_class = _UIDatePickerCalendarTimeLabel;
  v8 = [(UIView *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setUserInteractionEnabled:1];
    [(UIView *)v9 setFocusEffect:0];
    objc_initWeak(&location, v9);
    v10 = [_UIDatePickerCalendarTimeLabelStateMachineContext alloc];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __68___UIDatePickerCalendarTimeLabel_initWithTimeFormat_minuteInterval___block_invoke;
    v23 = &unk_1E70F5938;
    objc_copyWeak(&v24, &location);
    v11 = [(_UIDatePickerCalendarTimeLabelStateMachineContext *)v10 initWithUpdateHandler:&v20];
    stateContext = v9->_stateContext;
    v9->_stateContext = v11;

    objc_storeStrong(&v9->_timeFormat, a3);
    v13 = [_UIDatePickerCalendarTimeValueStore alloc];
    v14 = [(_UIDatePickerCalendarTimeValueStore *)v13 initWithTimeFormat:v7 minuteInterval:a4 decrementBehaviour:[(_UIDatePickerCalendarTimeLabel *)v9 decrementBehaviour:v20]];
    inputValue = v9->_inputValue;
    v9->_inputValue = v14;

    v9->_roundsToMinuteInterval = 1;
    v16 = objc_opt_new();
    [v16 setNumberStyle:1];
    objc_storeStrong(&v9->_inputFormatter, v16);
    if ([objc_opt_class() supportsScribbleInteraction])
    {
      v17 = [[UIIndirectScribbleInteraction alloc] initWithDelegate:v9];
      [(UIView *)v9 addInteraction:v17];
      scribbleInteraction = v9->_scribbleInteraction;
      v9->_scribbleInteraction = v17;
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _UIDatePickerCalendarTimeLabel;
  [(UIView *)&v8 layoutSubviews];
  [(UIView *)self bounds];
  if (v4 != self->_lastSize.width || v3 != self->_lastSize.height)
  {
    [(UIView *)self bounds];
    self->_lastSize.width = v6;
    self->_lastSize.height = v7;
    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self delegate];

  if (!v3)
  {
    return 1;
  }

  v4 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  v5 = [v4 timeLabelCanBecomeFirstResponder:self];

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  [v3 timeLabelWillBecomeFirstResponder:self];
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarTimeLabel;
  if ([(UIView *)&v7 becomeFirstResponder])
  {
    [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:11];
  }

  v4 = [(UIView *)self isFirstResponder];
  if (v4)
  {
    v5 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
    [v5 setIsFirstResponder:1];

    [v3 timeLabelDidBecomeFirstResponder:self];
  }

  else
  {
    [v3 timeLabelDidFailToBecomeFirstResponder:self];
  }

  return v4;
}

- (BOOL)resignFirstResponder
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarTimeLabel;
  [(UIResponder *)&v7 resignFirstResponder];
  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:12];
  v3 = [(UIView *)self isFirstResponder];
  if (!v3)
  {
    v4 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
    [v4 setIsFirstResponder:0];

    v5 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
    [v5 timeLabelDidResignFirstResponder:self];
  }

  return !v3;
}

- (CGRect)hourRect
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)minuteRect
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UIDatePickerCalendarTimeLabel;
  [(UIView *)&v3 tintColorDidChange];
  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
}

- (BOOL)_pointIsInsideHourSide:(CGPoint)a3
{
  x = a3.x;
  [(_UIDatePickerCalendarTimeLabel *)self hourRect:a3.x];
  v6 = v5;
  [(_UIDatePickerCalendarTimeLabel *)self minuteRect];
  if (v6 >= v7)
  {
    [(_UIDatePickerCalendarTimeLabel *)self minuteRect];
    MaxX = CGRectGetMaxX(v13);
    [(_UIDatePickerCalendarTimeLabel *)self hourRect];
    return x >= (MaxX + CGRectGetMinX(v14)) * 0.5;
  }

  else
  {
    [(_UIDatePickerCalendarTimeLabel *)self hourRect];
    v8 = CGRectGetMaxX(v11);
    [(_UIDatePickerCalendarTimeLabel *)self minuteRect];
    return x < (v8 + CGRectGetMinX(v12)) * 0.5;
  }
}

- (void)didTapInputLabelAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(UIView *)self isFirstResponder])
  {
    if (![(_UIDatePickerCalendarTimeLabel *)self _pointIsInsideHourSide:x, y])
    {
      goto LABEL_8;
    }

LABEL_7:
    v6 = self;
    v7 = 2;
    goto LABEL_9;
  }

  [(_UIDatePickerCalendarTimeLabel *)self hourRect];
  v9.x = x;
  v9.y = y;
  if (CGRectContainsPoint(v12, v9))
  {
    goto LABEL_7;
  }

  [(_UIDatePickerCalendarTimeLabel *)self minuteRect];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v13, v10))
  {
LABEL_8:
    v6 = self;
    v7 = 3;
    goto LABEL_9;
  }

  [(_UIDatePickerCalendarTimeLabel *)self timeOfDayRect];
  v11.x = x;
  v11.y = y;
  if (CGRectContainsPoint(v14, v11))
  {
    v6 = self;
    v7 = 4;
LABEL_9:

    [(_UIDatePickerCalendarTimeLabel *)v6 _stateMachineSendEvent:v7];
    return;
  }

  [(_UIDatePickerCalendarTimeLabel *)self processTapOutside];
}

- (NSString)text
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v4 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v5 = [v4 hourValue];
  v6 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v7 = [v6 minuteValue];
  v8 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v9 = [v3 localizedTimeStringWithHours:v5 minutes:v7 isPM:{objc_msgSend(v8, "isPM")}];

  return v9;
}

- (void)applyTextAttributesForState:(unint64_t)a3 inputScope:(int64_t)a4 updater:(id)a5
{
  v16 = a5;
  v8 = [(UIView *)self traitCollection];
  v9 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v8 userInterfaceIdiom]);

  if (a3 == 9)
  {
    v10 = [v9 compactLabelTextColorForEditingState:0];
    v11 = [v10 colorWithAlphaComponent:0.25];
    v12 = v16[2];
LABEL_3:
    v12();

    goto LABEL_14;
  }

  v13 = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  if (v13 > 1)
  {
    if (v13 == 2 || v13 == 3)
    {
      v10 = [v9 compactLabelTextColorForEditingState:0];
      v11 = [v9 compactLabelTextColorForEditingState:1];
      v12 = v16[2];
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (!v13)
  {
    v14 = v9;
    v15 = 0;
    goto LABEL_13;
  }

  if (v13 != 1)
  {
LABEL_11:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarTimeLabel.m" lineNumber:290 description:@"Unknown case."];
    goto LABEL_14;
  }

  v14 = v9;
  v15 = 1;
LABEL_13:
  v10 = [v14 compactLabelTextColorForEditingState:v15];
  (v16[2])(v16, v10, 0, 0, 0, 0);
LABEL_14:
}

- (id)attributedTextWithRanges:(id *)a3
{
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v5 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v6 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v7 = [v6 hourValue];
  v8 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v9 = [v8 minuteValue];
  v10 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v11 = [v5 localizedTimeStringWithHours:v7 minutes:v9 isPM:objc_msgSend(v10 ranges:{"isPM"), &v43}];

  v12 = [v11 length];
  v13 = [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount];
  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___UIDatePickerCalendarTimeLabel_attributedTextWithRanges___block_invoke;
  aBlock[3] = &unk_1E70F5960;
  v41 = v11;
  v15 = v14;
  v42 = v15;
  v16 = v11;
  v17 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __59___UIDatePickerCalendarTimeLabel_attributedTextWithRanges___block_invoke_2;
  v31[3] = &unk_1E70F5988;
  v18 = v15;
  v32 = v18;
  v33 = 0;
  v34 = v12;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v35 = v43;
  v19 = _Block_copy(v31);
  v20 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  -[_UIDatePickerCalendarTimeLabel applyTextAttributesForState:inputScope:updater:](self, "applyTextAttributesForState:inputScope:updater:", [v20 currentState], -[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope"), v19);

  if (v13 >= 1)
  {
    v21 = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
    switch(v21)
    {
      case 3:
        v17[2](v17, v13, v44.location, v44.length);
        break;
      case 2:
        v17[2](v17, v13, v43.location, v43.length);
        break;
      case 1:
        v17[2](v17, v13, v44.location, v44.length);
        if (v13 >= 2)
        {
          v22 = v13 - 2;
        }

        else
        {
          v22 = 0;
        }

        v17[2](v17, v22, v43.location, v43.length);
        break;
    }
  }

  v23 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  if ([v23 wantsDoubleDigitHours])
  {
    goto LABEL_16;
  }

  v24 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  if (([v24 forceDoubleDigitHours] & 1) == 0)
  {

LABEL_16:
    goto LABEL_17;
  }

  v25 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v26 = [v25 hourValue];

  if (v26 <= 9)
  {
    v17[2](v17, 1, v43.location, v43.length);
  }

LABEL_17:
  if (a3)
  {
    v27 = v46;
    a3->var2 = v45;
    a3->var3 = v27;
    a3->var4 = v47;
    v28 = v44;
    a3->var0 = v43;
    a3->var1 = v28;
  }

  v29 = v18;

  return v29;
}

- (void)setTimeFormat:(id)a3
{
  v5 = a3;
  if (self->_timeFormat != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_timeFormat, a3);
    v6 = [(_UIDatePickerCalendarTimeValueStore *)self->_inputValue digitsInScope:1];
    v7 = [[_UIDatePickerCalendarTimeValueStore alloc] initWithTimeFormat:v9 minuteInterval:[(_UIDatePickerCalendarTimeLabel *)self minuteInterval] decrementBehaviour:[(_UIDatePickerCalendarTimeLabel *)self decrementBehaviour]];
    [(_UIDatePickerCalendarTimeValueStore *)v7 setDigits:v6 count:0 inScope:1 append:0];
    [(_UIDatePickerCalendarTimeValueStore *)v7 setIsPM:[(_UIDatePickerCalendarTimeValueStore *)self->_inputValue isPM]];
    inputValue = self->_inputValue;
    self->_inputValue = v7;

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
    [(UIView *)self invalidateIntrinsicContentSize];
    v5 = v9;
  }
}

- (int64_t)minuteInterval
{
  v2 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v3 = [v2 minuteInterval];

  return v3;
}

- (void)setMinuteInterval:(int64_t)a3
{
  v5 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [v5 setMinuteInterval:a3];

  [(_UIDatePickerCalendarTimeLabel *)self _roundInputToClosestIntervalIfNeeded];
}

- (void)setInputScope:(int64_t)a3
{
  if (self->_inputScope != a3)
  {
    self->_inputScope = a3;
    [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (void)setAllowsTextInput:(BOOL)a3
{
  if (self->_allowsTextInput != a3)
  {
    self->_allowsTextInput = a3;
    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (void)setInsertedDigitCount:(unint64_t)a3
{
  v5 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v6 = [v5 digitsInScope:{-[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope")}];

  v7 = 0;
  do
  {
    ++v7;
    v8 = v6 > 9;
    v6 /= 0xAuLL;
  }

  while (v8);
  v9 = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  if (v9 > 2)
  {
    v13 = 2;
    if (v9 != 3)
    {
      v13 = v9 == 4;
    }
  }

  else
  {
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        v13 = 0;
        goto LABEL_13;
      }

      v14 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      v15 = [v14 wantsDoubleDigitHours];

      v12 = v15 == 0;
      v13 = 1;
    }

    else
    {
      v10 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      v11 = [v10 wantsDoubleDigitHours];

      v12 = v11 == 0;
      v13 = 3;
    }

    if (!v12)
    {
      ++v13;
    }
  }

LABEL_13:
  if (v7 > v13)
  {
    v13 = v7;
  }

  if (v13 >= a3)
  {
    v13 = a3;
  }

  self->_insertedDigitCount = v13;
}

- (BOOL)processTapOutside
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  v5 = [v3 currentSateCanTransitionWithEvents:v4];

  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:0];
  return v5;
}

- (void)_stateMachineSendEvent:(unint64_t)a3
{
  v6 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v5 = [v6 currentStateRef];
  handleEvent(_UIDatePickerCalendarTimeLabelStateMachineSpec, *v5, a3, [(_UIDatePickerCalendarTimeLabel *)self stateContext], v5);
}

- (void)stateMachineUpdateFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  v7 = [(_UIDatePickerCalendarTimeLabel *)self _treatMinutesAsHoursForState:?];
  if (a4 <= 5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        goto LABEL_18;
      }

      if (a4 == 4)
      {
LABEL_17:
        v8 = self;
        v9 = 3;
        goto LABEL_20;
      }

      v8 = self;
      v9 = 4;
LABEL_20:
      [(_UIDatePickerCalendarTimeLabel *)v8 setInputScope:v9];
      goto LABEL_21;
    }

    if (a4 == 1)
    {
      v8 = self;
      v9 = 0;
      goto LABEL_20;
    }

    if (a4 != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (a4 <= 8)
  {
    if (a4 != 6)
    {
      if (a4 != 7)
      {
        goto LABEL_17;
      }

LABEL_18:
      v8 = self;
      v9 = 2;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (a4 == 9 || a4 == 10)
  {
LABEL_16:
    v8 = self;
    v9 = 1;
    goto LABEL_20;
  }

  if (a4 == 11)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"_UIDatePickerCalendarTimeLabelStateCount should never be reached. This is a UIKit bug."];
  }

LABEL_21:
  if (a3 != a4)
  {
    [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];
    if (a4 == 1 && v7 && ![(_UIDatePickerCalendarTimeLabel *)self _treatMinutesAsHoursForState:1])
    {
      v10 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      v11 = [v10 minuteValue];
      v12 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      [v12 setHourValue:v11];

      v13 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      [v13 setMinuteValue:0];
    }

    v14 = a4 - 2;
    if (a3 - 2 >= 8)
    {
      if (v14 <= 7)
      {
        v15 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
        [v15 timeLabelDidBeginEditing:self];
        goto LABEL_30;
      }
    }

    else if (v14 >= 8)
    {
      [(_UIDatePickerCalendarTimeLabel *)self _roundInputToClosestIntervalIfNeeded];
      v15 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
      [v15 timeLabelDidEndEditing:self];
LABEL_30:
    }
  }

  v18 = objc_opt_new();
  [v18 addIndex:8];
  [v18 addIndex:1];
  v16 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v17 = [v16 currentSateCanTransitionWithEvents:v18];

  [(_UIDatePickerCalendarTimeLabel *)self setAllowsTextInput:v17];
  if (v17 && ![(UIView *)self isFirstResponder])
  {
    [(_UIDatePickerCalendarTimeLabel *)self becomeFirstResponder];
  }

  else if ((a4 == 10 || a4 == 1) && [(UIView *)self isFirstResponder])
  {
    [(_UIDatePickerCalendarTimeLabel *)self resignFirstResponder];
  }

  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)setRoundsToMinuteInterval:(BOOL)a3
{
  if (self->_roundsToMinuteInterval != a3)
  {
    self->_roundsToMinuteInterval = a3;
    [(_UIDatePickerCalendarTimeLabel *)self _roundInputToClosestIntervalIfNeeded];
  }
}

- (void)_roundInputToClosestIntervalIfNeeded
{
  if ([(_UIDatePickerCalendarTimeLabel *)self roundsToMinuteInterval])
  {
    v3 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    v4 = [v3 roundToMinuteInterval];

    if (v4)
    {
      v5 = [(UIView *)self window];

      if (v5)
      {

        [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
      }

      else
      {

        [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
      }
    }
  }
}

- (BOOL)_digits:(unint64_t *)a3 fromText:(id)a4 count:(int64_t *)a5
{
  v8 = a4;
  v9 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v10 = v8;
  v11 = [v9 invertedSet];
  v12 = [v10 rangeOfCharacterFromSet:v11];
  v14 = v10;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v12;
    v16 = v10;
    do
    {
      v14 = [v16 stringByReplacingCharactersInRange:v15 withString:{v13, &stru_1EFB14550}];

      v15 = [v14 rangeOfCharacterFromSet:v11];
      v16 = v14;
    }

    while (v15 != 0x7FFFFFFFFFFFFFFFLL);
  }

  if (a5)
  {
    v17 = v14;
    v18 = 0;
    if ([v17 length])
    {
      v19 = 0;
      do
      {
        ++v18;
        v20 = [v17 rangeOfComposedCharacterSequenceAtIndex:v19];
        v19 = v20 + v21;
      }

      while (v20 + v21 < [v17 length]);
    }

    *a5 = v18;
  }

  v22 = [v14 length];
  if (v22)
  {
    v23 = [(_UIDatePickerCalendarTimeLabel *)self inputFormatter];
    v24 = [v23 numberFromString:v14];
    *a3 = [v24 unsignedIntegerValue];
  }

  return v22 != 0;
}

- (BOOL)_treatMinutesAsHoursForState:(unint64_t)a3
{
  if ((a3 == 9 || a3 == 6) && [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount]<= 2 && [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount])
  {
    v4 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    v5 = [v4 minuteValue];

    v6 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    v7 = [v6 clock];

    v8 = v5 < 0xD;
    if (v7 > 1)
    {
      v8 = v7 - 2;
    }

    if (v7 - 2 >= 2)
    {
      return v8;
    }

    else
    {
      return v5 < 0x19;
    }
  }

  else
  {
    return 0;
  }
}

- (void)setHourText:(id)a3
{
  v4 = a3;
  if ([(UIView *)self isFirstResponder])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Externally modifying the hourText value of _UIDatePickerCalendarTimeLabel while it is first responder results in undefined behavior. This will become a hard assert in the future.", v11, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &setHourText____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Externally modifying the hourText value of _UIDatePickerCalendarTimeLabel while it is first responder results in undefined behavior. This will become a hard assert in the future.", buf, 2u);
      }
    }
  }

  v9 = 0;
  if ([(_UIDatePickerCalendarTimeLabel *)self _digits:&v9 fromText:v4 count:0])
  {
    v5 = v9;
    v6 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [v6 setHourValue:v5];

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (NSString)hourText
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v4 = -[_UIDatePickerCalendarTimeLabel _treatMinutesAsHoursForState:](self, "_treatMinutesAsHoursForState:", [v3 currentState]);
  v5 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 minuteValue];
  }

  else
  {
    v7 = [v5 hourValue];
  }

  v8 = v7;

  v9 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v10 = [v9 hourFormatter];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v12 = [v10 stringFromNumber:v11];

  return v12;
}

- (void)setMinuteText:(id)a3
{
  v4 = a3;
  if ([(UIView *)self isFirstResponder])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Externally modifying the minuteText value of _UIDatePickerCalendarTimeLabel while it is first responder results in undefined behavior. This will become a hard assert in the future.", v11, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &setMinuteText____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Externally modifying the minuteText value of _UIDatePickerCalendarTimeLabel while it is first responder results in undefined behavior. This will become a hard assert in the future.", buf, 2u);
      }
    }
  }

  v9 = 0;
  if ([(_UIDatePickerCalendarTimeLabel *)self _digits:&v9 fromText:v4 count:0])
  {
    v5 = v9;
    v6 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [v6 setMinuteValue:v5];

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (NSString)minuteText
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  if (-[_UIDatePickerCalendarTimeLabel _treatMinutesAsHoursForState:](self, "_treatMinutesAsHoursForState:", [v3 currentState]))
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    v4 = [v5 minuteValue];
  }

  v6 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v7 = [v6 minuteFormatter];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v9 = [v7 stringFromNumber:v8];

  return v9;
}

- (NSString)timeOfDayText
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v4 = [v3 clockLayout];

  if (v4)
  {
    v5 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    v6 = [v5 isPM];
    v7 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    v8 = v7;
    if (v6)
    {
      [v7 PMSymbol];
    }

    else
    {
      [v7 AMSymbol];
    }
    v9 = ;
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  return v9;
}

- (void)pushCurrentStateIntoUIAndNotify
{
  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  v4 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  v3 = [(_UIDatePickerCalendarTimeLabel *)self text];
  [v4 timeLabel:self didUpdateText:v3];
}

- (id)keyCommands
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputUpArrow" modifierFlags:0 action:sel_didReceiveUpArrowKey_];
  v18[0] = v2;
  v3 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputDownArrow" modifierFlags:0 action:sel_didReceiveDownArrowKey_];
  v18[1] = v3;
  v4 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputLeftArrow" modifierFlags:0 action:sel_didReceiveLeftArrowKey_];
  v18[2] = v4;
  v5 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputRightArrow" modifierFlags:0 action:sel_didReceiveRightArrowKey_];
  v18[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * i) setWantsPriorityOverSystemBehavior:{1, v13}];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v7;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_didReceiveLeftArrowKey_ == a3 || sel_didReceiveRightArrowKey_ == a3)
  {
    v8 = 1;
  }

  else if (sel_didReceiveUpArrowKey_ == a3 || sel_didReceiveDownArrowKey_ == a3)
  {
    v8 = [(_UIDatePickerCalendarTimeLabel *)self inputScope]> 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIDatePickerCalendarTimeLabel;
    v8 = [(UIView *)&v11 canPerformAction:a3 withSender:v6];
  }

  return v8;
}

- (void)didReceiveUpArrowKey:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [v4 incrementDigitForScope:{-[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope")}];

  [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];

  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
}

- (void)didReceiveDownArrowKey:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [v4 decrementDigitForScope:{-[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope")}];

  [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];

  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
}

- (void)didReceiveRightArrowKey:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  if ((v4 - 1) >= 2)
  {
    if (v4 == 4)
    {
      if ([(_UIDatePickerCalendarTimeLabel *)self displaysTimeOfDayLabel])
      {
        v8 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
        v9 = [v8 clockLayout];

        if (v9 == 2)
        {
          v7 = 2;
          goto LABEL_11;
        }
      }
    }

    else
    {
      if (v4 != 3)
      {
        return;
      }

      if (![(_UIDatePickerCalendarTimeLabel *)self displaysTimeOfDayLabel])
      {
        goto LABEL_6;
      }

      v5 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      v6 = [v5 clockLayout];

      if (v6 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = 4;
    goto LABEL_11;
  }

LABEL_6:
  v7 = 3;
LABEL_11:

  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:v7];
}

- (void)didReceiveLeftArrowKey:(id)a3
{
  v4 = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  v5 = 2;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      goto LABEL_14;
    }

    if (v4 != 4)
    {
      return;
    }

    if ([(_UIDatePickerCalendarTimeLabel *)self displaysTimeOfDayLabel])
    {
      v8 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      v9 = [v8 clockLayout];

      if (v9 == 1)
      {
        v5 = 3;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return;
    }

    if (!-[_UIDatePickerCalendarTimeLabel displaysTimeOfDayLabel](self, "displaysTimeOfDayLabel", 2) || (-[_UIDatePickerCalendarTimeLabel timeFormat](self, "timeFormat"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 clockLayout], v6, v7 != 2))
    {
      v5 = 2;
      goto LABEL_14;
    }

LABEL_13:
    v5 = 4;
  }

LABEL_14:

  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:v5];
}

- (int64_t)keyboardType
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  v4 = [v3 keyboardTypeForTimeLabel:self];

  return v4;
}

- (BOOL)_suppressSoftwareKeyboard
{
  v3 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  if ([v3 timeLabelShouldSuppressSoftwareKeyboard:self])
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIDatePickerCalendarTimeLabel;
    v4 = [(UIResponder *)&v6 _suppressSoftwareKeyboard];
  }

  return v4;
}

- (id)inputView
{
  if ([(_UIDatePickerCalendarTimeLabel *)self _suppressSoftwareKeyboard])
  {
    inputView = self->_inputView;
    if (!inputView)
    {
      v4 = objc_opt_new();
      v5 = self->_inputView;
      self->_inputView = v4;

      [(UIView *)self->_inputView setFrame:0.0, 0.0, 1.0, 1.0];
      inputView = self->_inputView;
    }

    v6 = inputView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIDatePickerCalendarTimeLabel;
    v6 = [(UIResponder *)&v8 inputView];
  }

  return v6;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v6 = [v5 currentState];

  if ([(_UIDatePickerCalendarTimeLabel *)self allowsTextInput]|| v6 == 9)
  {
    v7 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
    if (v7)
    {
      v8 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
      v9 = [v8 timeLabel:self didReceiveText:v4];

      if (v9)
      {
        goto LABEL_16;
      }
    }

    if ([v4 length] == 1)
    {
      v10 = [v4 characterAtIndex:0];
      v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      if ([v11 characterIsMember:v10])
      {
        [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:1];

LABEL_16:
        goto LABEL_17;
      }
    }

    v16 = 0;
    v17 = 0;
    if ([(_UIDatePickerCalendarTimeLabel *)self _digits:&v17 fromText:v4 count:&v16])
    {
      if (v6 == 9)
      {
        v12 = 9;
      }

      else
      {
        v12 = 8;
      }

      [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:v12];
      if ([(_UIDatePickerCalendarTimeLabel *)self allowsTextInput]|| v6 == 9)
      {
        v13 = [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount]!= 0;
        v14 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
        [v14 setDigits:v17 count:v16 inScope:-[_UIDatePickerCalendarTimeLabel inputScope](self append:{"inputScope"), v13}];

        v15 = [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount];
        [(_UIDatePickerCalendarTimeLabel *)self setInsertedDigitCount:v16 + v15];
        [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
      }
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)deleteBackward
{
  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:8];
  if ([(_UIDatePickerCalendarTimeLabel *)self allowsTextInput])
  {
    v3 = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
    if (![(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount])
    {
      v4 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      v5 = [v4 digitsInScope:v3];

      v6 = 0;
      do
      {
        ++v6;
        v7 = v5 > 9;
        v5 /= 0xAuLL;
      }

      while (v7);
      [(_UIDatePickerCalendarTimeLabel *)self setInsertedDigitCount:v6];
    }

    v8 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [v8 removeLastDigitInScope:v3];

    if ([(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount])
    {
      [(_UIDatePickerCalendarTimeLabel *)self setInsertedDigitCount:[(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount]- 1];
    }

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
  }
}

- (void)indirectScribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v7 = a5;
  v6 = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  [v6 currentState];

  v7[2]();
}

- (void)indirectScribbleInteraction:(id)a3 focusElementIfNeeded:(id)a4 referencePoint:(CGPoint)a5 completion:(id)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a6;
  hiddenField = self->_hiddenField;
  if (!hiddenField)
  {
    v12 = [UITextField alloc];
    [(UIView *)self bounds];
    v13 = [(UITextField *)v12 initWithFrame:?];
    v14 = self->_hiddenField;
    self->_hiddenField = v13;

    [(UITextField *)self->_hiddenField setKeyboardType:[(_UIDatePickerCalendarTimeLabel *)self keyboardType]];
    [(UIView *)self->_hiddenField setHidden:1];
    [(UIView *)self addSubview:self->_hiddenField];
    hiddenField = self->_hiddenField;
  }

  if ([(UITextField *)hiddenField becomeFirstResponder])
  {
    v15 = self->_hiddenField;
  }

  else
  {
    v15 = 0;
  }

  v10[2](v10, v15);
}

- (void)indirectScribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  [(UITextField *)self->_hiddenField setAttributedText:0, a4];
  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:9];

  [(_UIDatePickerCalendarTimeLabel *)self willBeginWritingInScribbleInteraction];
}

- (void)indirectScribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4
{
  v10 = [(UITextField *)self->_hiddenField text:a3];
  if ([v10 length])
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [v10 substringWithRange:{v5, 1}];
      [(_UIDatePickerCalendarTimeLabel *)self insertText:v7];

      v5 = v6;
    }

    while ([v10 length] > v6++);
  }

  [(UITextField *)self->_hiddenField resignFirstResponder];
  [(UITextField *)self->_hiddenField removeFromSuperview];
  hiddenField = self->_hiddenField;
  self->_hiddenField = 0;

  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:10];
}

- (_UIDatePickerCalendarTimeLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)timeOfDayRect
{
  x = self->_timeOfDayRect.origin.x;
  y = self->_timeOfDayRect.origin.y;
  width = self->_timeOfDayRect.size.width;
  height = self->_timeOfDayRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end