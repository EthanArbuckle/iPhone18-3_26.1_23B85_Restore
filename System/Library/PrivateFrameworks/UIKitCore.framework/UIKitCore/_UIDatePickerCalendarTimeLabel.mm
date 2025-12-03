@interface _UIDatePickerCalendarTimeLabel
- (BOOL)_digits:(unint64_t *)_digits fromText:(id)text count:(int64_t *)count;
- (BOOL)_pointIsInsideHourSide:(CGPoint)side;
- (BOOL)_suppressSoftwareKeyboard;
- (BOOL)_treatMinutesAsHoursForState:(unint64_t)state;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)processTapOutside;
- (BOOL)resignFirstResponder;
- (CGRect)hourRect;
- (CGRect)minuteRect;
- (CGRect)timeOfDayRect;
- (NSString)hourText;
- (NSString)minuteText;
- (NSString)text;
- (NSString)timeOfDayText;
- (_UIDatePickerCalendarTimeLabel)initWithFrame:(CGRect)frame;
- (_UIDatePickerCalendarTimeLabel)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval;
- (_UIDatePickerCalendarTimeLabelDelegate)delegate;
- (id)attributedTextWithRanges:(id *)ranges;
- (id)inputView;
- (id)keyCommands;
- (int64_t)keyboardType;
- (int64_t)minuteInterval;
- (void)_roundInputToClosestIntervalIfNeeded;
- (void)_stateMachineSendEvent:(unint64_t)event;
- (void)applyTextAttributesForState:(unint64_t)state inputScope:(int64_t)scope updater:(id)updater;
- (void)deleteBackward;
- (void)didReceiveDownArrowKey:(id)key;
- (void)didReceiveLeftArrowKey:(id)key;
- (void)didReceiveRightArrowKey:(id)key;
- (void)didReceiveUpArrowKey:(id)key;
- (void)didTapInputLabelAtLocation:(CGPoint)location;
- (void)indirectScribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion;
- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)indirectScribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)insertText:(id)text;
- (void)layoutSubviews;
- (void)pushCurrentStateIntoUIAndNotify;
- (void)setAllowsTextInput:(BOOL)input;
- (void)setHourText:(id)text;
- (void)setInputScope:(int64_t)scope;
- (void)setInsertedDigitCount:(unint64_t)count;
- (void)setMinuteInterval:(int64_t)interval;
- (void)setMinuteText:(id)text;
- (void)setRoundsToMinuteInterval:(BOOL)interval;
- (void)setTimeFormat:(id)format;
- (void)stateMachineUpdateFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)tintColorDidChange;
@end

@implementation _UIDatePickerCalendarTimeLabel

- (_UIDatePickerCalendarTimeLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [_UIDatePickerCalendarTimeFormat formatWithCalendar:currentCalendar locale:currentLocale followsSystemHourCycle:1];
  v11 = [(_UIDatePickerCalendarTimeLabel *)self initWithTimeFormat:v10 minuteInterval:1];

  if (v11)
  {
    [(UIView *)v11 setFrame:x, y, width, height];
  }

  return v11;
}

- (_UIDatePickerCalendarTimeLabel)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval
{
  formatCopy = format;
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

    objc_storeStrong(&v9->_timeFormat, format);
    v13 = [_UIDatePickerCalendarTimeValueStore alloc];
    v14 = [(_UIDatePickerCalendarTimeValueStore *)v13 initWithTimeFormat:formatCopy minuteInterval:interval decrementBehaviour:[(_UIDatePickerCalendarTimeLabel *)v9 decrementBehaviour:v20]];
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
  delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];

  if (!delegate)
  {
    return 1;
  }

  delegate2 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  v5 = [delegate2 timeLabelCanBecomeFirstResponder:self];

  return v5;
}

- (BOOL)becomeFirstResponder
{
  delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  [delegate timeLabelWillBecomeFirstResponder:self];
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarTimeLabel;
  if ([(UIView *)&v7 becomeFirstResponder])
  {
    [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:11];
  }

  isFirstResponder = [(UIView *)self isFirstResponder];
  if (isFirstResponder)
  {
    stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
    [stateContext setIsFirstResponder:1];

    [delegate timeLabelDidBecomeFirstResponder:self];
  }

  else
  {
    [delegate timeLabelDidFailToBecomeFirstResponder:self];
  }

  return isFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarTimeLabel;
  [(UIResponder *)&v7 resignFirstResponder];
  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:12];
  isFirstResponder = [(UIView *)self isFirstResponder];
  if (!isFirstResponder)
  {
    stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
    [stateContext setIsFirstResponder:0];

    delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
    [delegate timeLabelDidResignFirstResponder:self];
  }

  return !isFirstResponder;
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

- (BOOL)_pointIsInsideHourSide:(CGPoint)side
{
  x = side.x;
  [(_UIDatePickerCalendarTimeLabel *)self hourRect:side.x];
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

- (void)didTapInputLabelAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (![(UIView *)self isFirstResponder])
  {
    if (![(_UIDatePickerCalendarTimeLabel *)self _pointIsInsideHourSide:x, y])
    {
      goto LABEL_8;
    }

LABEL_7:
    selfCopy3 = self;
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
    selfCopy3 = self;
    v7 = 3;
    goto LABEL_9;
  }

  [(_UIDatePickerCalendarTimeLabel *)self timeOfDayRect];
  v11.x = x;
  v11.y = y;
  if (CGRectContainsPoint(v14, v11))
  {
    selfCopy3 = self;
    v7 = 4;
LABEL_9:

    [(_UIDatePickerCalendarTimeLabel *)selfCopy3 _stateMachineSendEvent:v7];
    return;
  }

  [(_UIDatePickerCalendarTimeLabel *)self processTapOutside];
}

- (NSString)text
{
  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  hourValue = [inputValue hourValue];
  inputValue2 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  minuteValue = [inputValue2 minuteValue];
  inputValue3 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v9 = [timeFormat localizedTimeStringWithHours:hourValue minutes:minuteValue isPM:{objc_msgSend(inputValue3, "isPM")}];

  return v9;
}

- (void)applyTextAttributesForState:(unint64_t)state inputScope:(int64_t)scope updater:(id)updater
{
  updaterCopy = updater;
  traitCollection = [(UIView *)self traitCollection];
  v9 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

  if (state == 9)
  {
    currentHandler = [v9 compactLabelTextColorForEditingState:0];
    v11 = [currentHandler colorWithAlphaComponent:0.25];
    v12 = updaterCopy[2];
LABEL_3:
    v12();

    goto LABEL_14;
  }

  inputScope = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  if (inputScope > 1)
  {
    if (inputScope == 2 || inputScope == 3)
    {
      currentHandler = [v9 compactLabelTextColorForEditingState:0];
      v11 = [v9 compactLabelTextColorForEditingState:1];
      v12 = updaterCopy[2];
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (!inputScope)
  {
    v14 = v9;
    v15 = 0;
    goto LABEL_13;
  }

  if (inputScope != 1)
  {
LABEL_11:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarTimeLabel.m" lineNumber:290 description:@"Unknown case."];
    goto LABEL_14;
  }

  v14 = v9;
  v15 = 1;
LABEL_13:
  currentHandler = [v14 compactLabelTextColorForEditingState:v15];
  (updaterCopy[2])(updaterCopy, currentHandler, 0, 0, 0, 0);
LABEL_14:
}

- (id)attributedTextWithRanges:(id *)ranges
{
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  hourValue = [inputValue hourValue];
  inputValue2 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  minuteValue = [inputValue2 minuteValue];
  inputValue3 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v11 = [timeFormat localizedTimeStringWithHours:hourValue minutes:minuteValue isPM:objc_msgSend(inputValue3 ranges:{"isPM"), &v43}];

  v12 = [v11 length];
  insertedDigitCount = [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount];
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
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  -[_UIDatePickerCalendarTimeLabel applyTextAttributesForState:inputScope:updater:](self, "applyTextAttributesForState:inputScope:updater:", [stateContext currentState], -[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope"), v19);

  if (insertedDigitCount >= 1)
  {
    inputScope = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
    switch(inputScope)
    {
      case 3:
        v17[2](v17, insertedDigitCount, v44.location, v44.length);
        break;
      case 2:
        v17[2](v17, insertedDigitCount, v43.location, v43.length);
        break;
      case 1:
        v17[2](v17, insertedDigitCount, v44.location, v44.length);
        if (insertedDigitCount >= 2)
        {
          v22 = insertedDigitCount - 2;
        }

        else
        {
          v22 = 0;
        }

        v17[2](v17, v22, v43.location, v43.length);
        break;
    }
  }

  timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  if ([timeFormat2 wantsDoubleDigitHours])
  {
    goto LABEL_16;
  }

  timeFormat3 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  if (([timeFormat3 forceDoubleDigitHours] & 1) == 0)
  {

LABEL_16:
    goto LABEL_17;
  }

  inputValue4 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  hourValue2 = [inputValue4 hourValue];

  if (hourValue2 <= 9)
  {
    v17[2](v17, 1, v43.location, v43.length);
  }

LABEL_17:
  if (ranges)
  {
    v27 = v46;
    ranges->var2 = v45;
    ranges->var3 = v27;
    ranges->var4 = v47;
    v28 = v44;
    ranges->var0 = v43;
    ranges->var1 = v28;
  }

  v29 = v18;

  return v29;
}

- (void)setTimeFormat:(id)format
{
  formatCopy = format;
  if (self->_timeFormat != formatCopy)
  {
    v9 = formatCopy;
    objc_storeStrong(&self->_timeFormat, format);
    v6 = [(_UIDatePickerCalendarTimeValueStore *)self->_inputValue digitsInScope:1];
    v7 = [[_UIDatePickerCalendarTimeValueStore alloc] initWithTimeFormat:v9 minuteInterval:[(_UIDatePickerCalendarTimeLabel *)self minuteInterval] decrementBehaviour:[(_UIDatePickerCalendarTimeLabel *)self decrementBehaviour]];
    [(_UIDatePickerCalendarTimeValueStore *)v7 setDigits:v6 count:0 inScope:1 append:0];
    [(_UIDatePickerCalendarTimeValueStore *)v7 setIsPM:[(_UIDatePickerCalendarTimeValueStore *)self->_inputValue isPM]];
    inputValue = self->_inputValue;
    self->_inputValue = v7;

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
    [(UIView *)self invalidateIntrinsicContentSize];
    formatCopy = v9;
  }
}

- (int64_t)minuteInterval
{
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  minuteInterval = [inputValue minuteInterval];

  return minuteInterval;
}

- (void)setMinuteInterval:(int64_t)interval
{
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [inputValue setMinuteInterval:interval];

  [(_UIDatePickerCalendarTimeLabel *)self _roundInputToClosestIntervalIfNeeded];
}

- (void)setInputScope:(int64_t)scope
{
  if (self->_inputScope != scope)
  {
    self->_inputScope = scope;
    [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (void)setAllowsTextInput:(BOOL)input
{
  if (self->_allowsTextInput != input)
  {
    self->_allowsTextInput = input;
    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (void)setInsertedDigitCount:(unint64_t)count
{
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v6 = [inputValue digitsInScope:{-[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope")}];

  v7 = 0;
  do
  {
    ++v7;
    v8 = v6 > 9;
    v6 /= 0xAuLL;
  }

  while (v8);
  inputScope = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  if (inputScope > 2)
  {
    countCopy = 2;
    if (inputScope != 3)
    {
      countCopy = inputScope == 4;
    }
  }

  else
  {
    if (inputScope >= 2)
    {
      if (inputScope != 2)
      {
        countCopy = 0;
        goto LABEL_13;
      }

      timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      wantsDoubleDigitHours = [timeFormat wantsDoubleDigitHours];

      v12 = wantsDoubleDigitHours == 0;
      countCopy = 1;
    }

    else
    {
      timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      wantsDoubleDigitHours2 = [timeFormat2 wantsDoubleDigitHours];

      v12 = wantsDoubleDigitHours2 == 0;
      countCopy = 3;
    }

    if (!v12)
    {
      ++countCopy;
    }
  }

LABEL_13:
  if (v7 > countCopy)
  {
    countCopy = v7;
  }

  if (countCopy >= count)
  {
    countCopy = count;
  }

  self->_insertedDigitCount = countCopy;
}

- (BOOL)processTapOutside
{
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  v5 = [stateContext currentSateCanTransitionWithEvents:v4];

  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:0];
  return v5;
}

- (void)_stateMachineSendEvent:(unint64_t)event
{
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  currentStateRef = [stateContext currentStateRef];
  handleEvent(_UIDatePickerCalendarTimeLabelStateMachineSpec, *currentStateRef, event, [(_UIDatePickerCalendarTimeLabel *)self stateContext], currentStateRef);
}

- (void)stateMachineUpdateFromState:(unint64_t)state toState:(unint64_t)toState
{
  v7 = [(_UIDatePickerCalendarTimeLabel *)self _treatMinutesAsHoursForState:?];
  if (toState <= 5)
  {
    if (toState > 2)
    {
      if (toState == 3)
      {
        goto LABEL_18;
      }

      if (toState == 4)
      {
LABEL_17:
        selfCopy5 = self;
        v9 = 3;
        goto LABEL_20;
      }

      selfCopy5 = self;
      v9 = 4;
LABEL_20:
      [(_UIDatePickerCalendarTimeLabel *)selfCopy5 setInputScope:v9];
      goto LABEL_21;
    }

    if (toState == 1)
    {
      selfCopy5 = self;
      v9 = 0;
      goto LABEL_20;
    }

    if (toState != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (toState <= 8)
  {
    if (toState != 6)
    {
      if (toState != 7)
      {
        goto LABEL_17;
      }

LABEL_18:
      selfCopy5 = self;
      v9 = 2;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (toState == 9 || toState == 10)
  {
LABEL_16:
    selfCopy5 = self;
    v9 = 1;
    goto LABEL_20;
  }

  if (toState == 11)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"_UIDatePickerCalendarTimeLabelStateCount should never be reached. This is a UIKit bug."];
  }

LABEL_21:
  if (state != toState)
  {
    [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];
    if (toState == 1 && v7 && ![(_UIDatePickerCalendarTimeLabel *)self _treatMinutesAsHoursForState:1])
    {
      inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      minuteValue = [inputValue minuteValue];
      inputValue2 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      [inputValue2 setHourValue:minuteValue];

      inputValue3 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      [inputValue3 setMinuteValue:0];
    }

    v14 = toState - 2;
    if (state - 2 >= 8)
    {
      if (v14 <= 7)
      {
        delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
        [delegate timeLabelDidBeginEditing:self];
        goto LABEL_30;
      }
    }

    else if (v14 >= 8)
    {
      [(_UIDatePickerCalendarTimeLabel *)self _roundInputToClosestIntervalIfNeeded];
      delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
      [delegate timeLabelDidEndEditing:self];
LABEL_30:
    }
  }

  v18 = objc_opt_new();
  [v18 addIndex:8];
  [v18 addIndex:1];
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v17 = [stateContext currentSateCanTransitionWithEvents:v18];

  [(_UIDatePickerCalendarTimeLabel *)self setAllowsTextInput:v17];
  if (v17 && ![(UIView *)self isFirstResponder])
  {
    [(_UIDatePickerCalendarTimeLabel *)self becomeFirstResponder];
  }

  else if ((toState == 10 || toState == 1) && [(UIView *)self isFirstResponder])
  {
    [(_UIDatePickerCalendarTimeLabel *)self resignFirstResponder];
  }

  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
}

- (void)setRoundsToMinuteInterval:(BOOL)interval
{
  if (self->_roundsToMinuteInterval != interval)
  {
    self->_roundsToMinuteInterval = interval;
    [(_UIDatePickerCalendarTimeLabel *)self _roundInputToClosestIntervalIfNeeded];
  }
}

- (void)_roundInputToClosestIntervalIfNeeded
{
  if ([(_UIDatePickerCalendarTimeLabel *)self roundsToMinuteInterval])
  {
    inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    roundToMinuteInterval = [inputValue roundToMinuteInterval];

    if (roundToMinuteInterval)
    {
      window = [(UIView *)self window];

      if (window)
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

- (BOOL)_digits:(unint64_t *)_digits fromText:(id)text count:(int64_t *)count
{
  textCopy = text;
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v10 = textCopy;
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v12 = [v10 rangeOfCharacterFromSet:invertedSet];
  v14 = v10;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v12;
    v16 = v10;
    do
    {
      v14 = [v16 stringByReplacingCharactersInRange:v15 withString:{v13, &stru_1EFB14550}];

      v15 = [v14 rangeOfCharacterFromSet:invertedSet];
      v16 = v14;
    }

    while (v15 != 0x7FFFFFFFFFFFFFFFLL);
  }

  if (count)
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

    *count = v18;
  }

  v22 = [v14 length];
  if (v22)
  {
    inputFormatter = [(_UIDatePickerCalendarTimeLabel *)self inputFormatter];
    v24 = [inputFormatter numberFromString:v14];
    *_digits = [v24 unsignedIntegerValue];
  }

  return v22 != 0;
}

- (BOOL)_treatMinutesAsHoursForState:(unint64_t)state
{
  if ((state == 9 || state == 6) && [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount]<= 2 && [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount])
  {
    inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    minuteValue = [inputValue minuteValue];

    timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    clock = [timeFormat clock];

    v8 = minuteValue < 0xD;
    if (clock > 1)
    {
      v8 = clock - 2;
    }

    if (clock - 2 >= 2)
    {
      return v8;
    }

    else
    {
      return minuteValue < 0x19;
    }
  }

  else
  {
    return 0;
  }
}

- (void)setHourText:(id)text
{
  textCopy = text;
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
  if ([(_UIDatePickerCalendarTimeLabel *)self _digits:&v9 fromText:textCopy count:0])
  {
    v5 = v9;
    inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [inputValue setHourValue:v5];

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (NSString)hourText
{
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  v4 = -[_UIDatePickerCalendarTimeLabel _treatMinutesAsHoursForState:](self, "_treatMinutesAsHoursForState:", [stateContext currentState]);
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  v6 = inputValue;
  if (v4)
  {
    minuteValue = [inputValue minuteValue];
  }

  else
  {
    minuteValue = [inputValue hourValue];
  }

  v8 = minuteValue;

  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  hourFormatter = [timeFormat hourFormatter];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v12 = [hourFormatter stringFromNumber:v11];

  return v12;
}

- (void)setMinuteText:(id)text
{
  textCopy = text;
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
  if ([(_UIDatePickerCalendarTimeLabel *)self _digits:&v9 fromText:textCopy count:0])
  {
    v5 = v9;
    inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [inputValue setMinuteValue:v5];

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (NSString)minuteText
{
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  if (-[_UIDatePickerCalendarTimeLabel _treatMinutesAsHoursForState:](self, "_treatMinutesAsHoursForState:", [stateContext currentState]))
  {
    minuteValue = 0;
  }

  else
  {
    inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    minuteValue = [inputValue minuteValue];
  }

  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  minuteFormatter = [timeFormat minuteFormatter];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:minuteValue];
  v9 = [minuteFormatter stringFromNumber:v8];

  return v9;
}

- (NSString)timeOfDayText
{
  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  clockLayout = [timeFormat clockLayout];

  if (clockLayout)
  {
    inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    isPM = [inputValue isPM];
    timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
    v8 = timeFormat2;
    if (isPM)
    {
      [timeFormat2 PMSymbol];
    }

    else
    {
      [timeFormat2 AMSymbol];
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
  delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  text = [(_UIDatePickerCalendarTimeLabel *)self text];
  [delegate timeLabel:self didUpdateText:text];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_didReceiveLeftArrowKey_ == action || sel_didReceiveRightArrowKey_ == action)
  {
    v8 = 1;
  }

  else if (sel_didReceiveUpArrowKey_ == action || sel_didReceiveDownArrowKey_ == action)
  {
    v8 = [(_UIDatePickerCalendarTimeLabel *)self inputScope]> 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIDatePickerCalendarTimeLabel;
    v8 = [(UIView *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return v8;
}

- (void)didReceiveUpArrowKey:(id)key
{
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [inputValue incrementDigitForScope:{-[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope")}];

  [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];

  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
}

- (void)didReceiveDownArrowKey:(id)key
{
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [inputValue decrementDigitForScope:{-[_UIDatePickerCalendarTimeLabel inputScope](self, "inputScope")}];

  [(_UIDatePickerCalendarTimeLabel *)self _resetTextInput];

  [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
}

- (void)didReceiveRightArrowKey:(id)key
{
  inputScope = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  if ((inputScope - 1) >= 2)
  {
    if (inputScope == 4)
    {
      if ([(_UIDatePickerCalendarTimeLabel *)self displaysTimeOfDayLabel])
      {
        timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
        clockLayout = [timeFormat clockLayout];

        if (clockLayout == 2)
        {
          v7 = 2;
          goto LABEL_11;
        }
      }
    }

    else
    {
      if (inputScope != 3)
      {
        return;
      }

      if (![(_UIDatePickerCalendarTimeLabel *)self displaysTimeOfDayLabel])
      {
        goto LABEL_6;
      }

      timeFormat2 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      clockLayout2 = [timeFormat2 clockLayout];

      if (clockLayout2 != 1)
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

- (void)didReceiveLeftArrowKey:(id)key
{
  inputScope = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
  v5 = 2;
  if (inputScope > 2)
  {
    if (inputScope == 3)
    {
      goto LABEL_14;
    }

    if (inputScope != 4)
    {
      return;
    }

    if ([(_UIDatePickerCalendarTimeLabel *)self displaysTimeOfDayLabel])
    {
      timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
      clockLayout = [timeFormat clockLayout];

      if (clockLayout == 1)
      {
        v5 = 3;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  if (inputScope != 1)
  {
    if (inputScope != 2)
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
  delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  v4 = [delegate keyboardTypeForTimeLabel:self];

  return v4;
}

- (BOOL)_suppressSoftwareKeyboard
{
  delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
  if ([delegate timeLabelShouldSuppressSoftwareKeyboard:self])
  {
    _suppressSoftwareKeyboard = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIDatePickerCalendarTimeLabel;
    _suppressSoftwareKeyboard = [(UIResponder *)&v6 _suppressSoftwareKeyboard];
  }

  return _suppressSoftwareKeyboard;
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

    inputView = inputView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIDatePickerCalendarTimeLabel;
    inputView = [(UIResponder *)&v8 inputView];
  }

  return inputView;
}

- (void)insertText:(id)text
{
  textCopy = text;
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  currentState = [stateContext currentState];

  if ([(_UIDatePickerCalendarTimeLabel *)self allowsTextInput]|| currentState == 9)
  {
    delegate = [(_UIDatePickerCalendarTimeLabel *)self delegate];
    if (delegate)
    {
      delegate2 = [(_UIDatePickerCalendarTimeLabel *)self delegate];
      v9 = [delegate2 timeLabel:self didReceiveText:textCopy];

      if (v9)
      {
        goto LABEL_16;
      }
    }

    if ([textCopy length] == 1)
    {
      v10 = [textCopy characterAtIndex:0];
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      if ([newlineCharacterSet characterIsMember:v10])
      {
        [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:1];

LABEL_16:
        goto LABEL_17;
      }
    }

    v16 = 0;
    v17 = 0;
    if ([(_UIDatePickerCalendarTimeLabel *)self _digits:&v17 fromText:textCopy count:&v16])
    {
      if (currentState == 9)
      {
        v12 = 9;
      }

      else
      {
        v12 = 8;
      }

      [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:v12];
      if ([(_UIDatePickerCalendarTimeLabel *)self allowsTextInput]|| currentState == 9)
      {
        v13 = [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount]!= 0;
        inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
        [inputValue setDigits:v17 count:v16 inScope:-[_UIDatePickerCalendarTimeLabel inputScope](self append:{"inputScope"), v13}];

        insertedDigitCount = [(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount];
        [(_UIDatePickerCalendarTimeLabel *)self setInsertedDigitCount:v16 + insertedDigitCount];
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
    inputScope = [(_UIDatePickerCalendarTimeLabel *)self inputScope];
    if (![(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount])
    {
      inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
      v5 = [inputValue digitsInScope:inputScope];

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

    inputValue2 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
    [inputValue2 removeLastDigitInScope:inputScope];

    if ([(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount])
    {
      [(_UIDatePickerCalendarTimeLabel *)self setInsertedDigitCount:[(_UIDatePickerCalendarTimeLabel *)self insertedDigitCount]- 1];
    }

    [(_UIDatePickerCalendarTimeLabel *)self pushCurrentStateIntoUIAndNotify];
  }
}

- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  completionCopy = completion;
  stateContext = [(_UIDatePickerCalendarTimeLabel *)self stateContext];
  [stateContext currentState];

  completionCopy[2]();
}

- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion
{
  interactionCopy = interaction;
  neededCopy = needed;
  completionCopy = completion;
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

  completionCopy[2](completionCopy, v15);
}

- (void)indirectScribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  [(UITextField *)self->_hiddenField setAttributedText:0, element];
  [(_UIDatePickerCalendarTimeLabel *)self _stateMachineSendEvent:9];

  [(_UIDatePickerCalendarTimeLabel *)self willBeginWritingInScribbleInteraction];
}

- (void)indirectScribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  v10 = [(UITextField *)self->_hiddenField text:interaction];
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