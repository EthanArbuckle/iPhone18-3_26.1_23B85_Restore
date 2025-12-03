@interface _UIDatePickerWheelsTimeLabel
- (CGRect)combinedTextRectFromLabels;
- (CGRect)hourRect;
- (CGRect)minuteRect;
- (_UIDatePickerWheelsTimeLabel)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval;
- (_UIDatePickerWheelsTimeLabelDelegate)wheelsDelegate;
- (id)_viewForHighlightedTouchAtPoint:(CGPoint)point;
- (id)font;
- (void)beginEditingWheels;
- (void)configureLabelsForHour:(id *)hour minute:(id *)minute;
- (void)controlEventsGestureRecognizer:(id)recognizer recognizedControlEvent:(unint64_t)event withEvent:(id)withEvent;
- (void)endEditingWheels;
- (void)pushCurrentStateIntoUI;
- (void)setContentHidden:(BOOL)hidden;
- (void)setFont:(id)font;
- (void)setHighlightedForTouch:(BOOL)touch;
- (void)stateMachineUpdateFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)updateHoursFromDatePicker:(int64_t)picker wheelsChanged:(BOOL)changed;
- (void)updateMinutesFromDatePicker:(int64_t)picker wheelsChanged:(BOOL)changed;
- (void)willBeginWritingInScribbleInteraction;
@end

@implementation _UIDatePickerWheelsTimeLabel

- (_UIDatePickerWheelsTimeLabel)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval
{
  v30.receiver = self;
  v30.super_class = _UIDatePickerWheelsTimeLabel;
  v4 = [(_UIDatePickerCalendarTimeLabel *)&v30 initWithTimeFormat:format minuteInterval:interval];
  if (v4)
  {
    v5 = objc_opt_new();
    [(UIView *)v4 bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)v5 setUserInteractionEnabled:0];
    [(UIView *)v5 setAutoresizingMask:18];
    [(UIView *)v4 addSubview:v5];
    contentView = v4->_contentView;
    v4->_contentView = v5;
    v7 = v5;

    v8 = objc_opt_new();
    [(UILabel *)v8 setTextAlignment:2];
    [(UILabel *)v8 setAdjustsFontForContentSizeCategory:1];
    v9 = +[UIColor labelColor];
    [(UILabel *)v8 setTextColor:v9];

    [(UILabel *)v8 setShadowOffset:0.0, 1.0];
    v10 = +[UIColor clearColor];
    [(UILabel *)v8 setShadowColor:v10];

    [(UIView *)v8 setHidden:1];
    [(UIView *)v7 addSubview:v8];
    hourLabel = v4->_hourLabel;
    v4->_hourLabel = v8;
    v12 = v8;

    v13 = objc_opt_new();
    [(UILabel *)v13 setTextAlignment:1];
    [(UILabel *)v13 setAdjustsFontForContentSizeCategory:1];
    v14 = +[UIColor labelColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v13 setShadowOffset:0.0, 1.0];
    v15 = +[UIColor clearColor];
    [(UILabel *)v13 setShadowColor:v15];

    [(UIView *)v13 setHidden:1];
    [(UIView *)v7 addSubview:v13];
    minuteLabel = v4->_minuteLabel;
    v4->_minuteLabel = v13;
    v17 = v13;

    v18 = objc_opt_new();
    [(UILabel *)v18 setTextAlignment:1];
    [(UILabel *)v18 setAdjustsFontForContentSizeCategory:1];
    v19 = +[UIColor labelColor];
    [(UILabel *)v18 setTextColor:v19];

    [(UIView *)v18 setAlpha:0.0];
    [(UIView *)v18 sizeToFit];
    [(UIView *)v7 addSubview:v18];
    timeSeparatorLabel = v4->_timeSeparatorLabel;
    v4->_timeSeparatorLabel = v18;
    v21 = v18;

    v22 = objc_opt_new();
    [(UILabel *)v22 setText:@"00"];
    [(UILabel *)v22 setShadowOffset:0.0, 1.0];
    v23 = +[UIColor clearColor];
    [(UILabel *)v22 setShadowColor:v23];

    [(UIView *)v22 setHidden:1];
    measurementLabel = v4->_measurementLabel;
    v4->_measurementLabel = v22;
    v25 = v22;

    v26 = objc_opt_new();
    controlEventsGestureRecognizer = v4->_controlEventsGestureRecognizer;
    v4->_controlEventsGestureRecognizer = v26;

    [(_UIControlEventsGestureRecognizer *)v4->_controlEventsGestureRecognizer setControlEventsDelegate:v4];
    layer = [(UIView *)v4 layer];
    [layer setHitTestsAsOpaque:1];
  }

  return v4;
}

- (void)controlEventsGestureRecognizer:(id)recognizer recognizedControlEvent:(unint64_t)event withEvent:(id)withEvent
{
  recognizerCopy = recognizer;
  wheelsDelegate = [(_UIDatePickerWheelsTimeLabel *)self wheelsDelegate];
  v8 = [wheelsDelegate wheelsTimeLabelShouldReceiveInteraction:self];

  v9 = recognizerCopy;
  if (v8)
  {
    [recognizerCopy locationInView:self];
    v12 = v10;
    v13 = v11;
    if (event <= 63)
    {
      if (event == 1)
      {
        v16 = [(_UIDatePickerWheelsTimeLabel *)self _viewForHighlightedTouchAtPoint:v10, v11];
        objc_storeWeak(&self->_touchHighlightedView, v16);

        [(_UIDatePickerWheelsTimeLabel *)self setContentHidden:0];
      }

      else if (event != 16)
      {
        v9 = recognizerCopy;
        if (event != 32)
        {
          goto LABEL_16;
        }

        selfCopy2 = self;
        v15 = 0;
        goto LABEL_13;
      }

      selfCopy2 = self;
      v15 = 1;
LABEL_13:
      [(_UIDatePickerWheelsTimeLabel *)selfCopy2 setHighlightedForTouch:v15];
      goto LABEL_15;
    }

    if (event == 64)
    {
      [(_UIDatePickerWheelsTimeLabel *)self setHighlightedForTouch:0];
      [(_UIDatePickerCalendarTimeLabel *)self didTapInputLabelAtLocation:v12, v13];
      goto LABEL_15;
    }

    v9 = recognizerCopy;
    if (event == 128 || event == 256)
    {
      [(_UIDatePickerWheelsTimeLabel *)self setHighlightedForTouch:0];
      objc_storeWeak(&self->_touchHighlightedView, 0);
      [(_UIDatePickerWheelsTimeLabel *)self setContentHidden:1];
LABEL_15:
      v9 = recognizerCopy;
    }
  }

LABEL_16:
}

- (void)setHighlightedForTouch:(BOOL)touch
{
  if (self->_highlightedForTouch != touch)
  {
    v14 = v3;
    v15 = v4;
    touchCopy = touch;
    self->_highlightedForTouch = touch;
    v6 = objc_loadWeakRetained(&self->_touchHighlightedView);
    traitCollection = [v6 traitCollection];
    v8 = [traitCollection userInterfaceStyle] == 2;

    v9 = dbl_18A674F10[v8];
    v11[1] = 3221225472;
    v11[0] = MEMORY[0x1E69E9820];
    v11[2] = ___UIDateLabelAnimateHighlight_block_invoke_1;
    v11[3] = &unk_1E70F32F0;
    if (!touchCopy)
    {
      v9 = 1.0;
    }

    v12 = v6;
    v13 = v9;
    v10 = v6;
    [UIView animateWithDuration:327684 delay:v11 options:0 animations:0.47 completion:0.0];
  }
}

- (id)_viewForHighlightedTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(_UIDatePickerCalendarTimeLabel *)self inputScope])
  {
    goto LABEL_6;
  }

  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel frame];
  v13.x = x;
  v13.y = y;
  v7 = CGRectContainsPoint(v15, v13);

  if (v7)
  {
    hourLabel2 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
    goto LABEL_7;
  }

  minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel frame];
  v14.x = x;
  v14.y = y;
  v10 = CGRectContainsPoint(v16, v14);

  if (v10)
  {
    hourLabel2 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  }

  else
  {
LABEL_6:
    hourLabel2 = [(_UIDatePickerWheelsTimeLabel *)self contentView];
  }

LABEL_7:

  return hourLabel2;
}

- (void)setContentHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  isHidden = [hourLabel isHidden];

  if (isHidden != hiddenCopy)
  {
    hourLabel2 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
    [hourLabel2 setHidden:hiddenCopy];

    minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
    [minuteLabel setHidden:hiddenCopy];

    v9 = 0.1;
    if (hiddenCopy)
    {
      v9 = 0.14;
    }

    v10 = 0.12;
    if (hiddenCopy)
    {
      v10 = 0.0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49___UIDatePickerWheelsTimeLabel_setContentHidden___block_invoke;
    v12[3] = &unk_1E70F35E0;
    v12[4] = self;
    v13 = hiddenCopy;
    [UIView animateWithDuration:4 delay:v12 options:0 animations:v9 completion:v10];
    wheelsDelegate = [(_UIDatePickerWheelsTimeLabel *)self wheelsDelegate];
    [wheelsDelegate wheelsTimeLabel:self didChangeVisibility:hiddenCopy ^ 1];
  }
}

- (void)setFont:(id)font
{
  v19[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel setFont:fontCopy];

  minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel setFont:fontCopy];

  fontDescriptor = [fontCopy fontDescriptor];
  v18 = *off_1E70ECC98;
  v8 = *off_1E70ECCC8;
  v15[0] = *off_1E70ECCD0;
  v15[1] = v8;
  v16[0] = &unk_1EFE335B0;
  v16[1] = &unk_1EFE335C8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v17 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v19[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v12 = [fontDescriptor fontDescriptorByAddingAttributes:v11];

  v13 = [off_1E70ECC18 fontWithDescriptor:v12 size:0.0];

  timeSeparatorLabel = [(_UIDatePickerWheelsTimeLabel *)self timeSeparatorLabel];
  [timeSeparatorLabel setFont:v13];

  [(UILabel *)self->_measurementLabel setFont:fontCopy];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (id)font
{
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  font = [hourLabel font];

  return font;
}

- (CGRect)hourRect
{
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)minuteRect
{
  minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)pushCurrentStateIntoUI
{
  v64 = 0u;
  memset(v63, 0, sizeof(v63));
  v3 = [(_UIDatePickerCalendarTimeLabel *)self attributedTextWithRanges:v63];
  v4 = [v3 attributedSubstringFromRange:v64];
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel setAttributedText:v4];

  v6 = [v3 attributedSubstringFromRange:v63[1]];
  minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel setAttributedText:v6];

  hourLabel2 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [(UIView *)self bounds];
  x = self->_hoursReferenceFrame.origin.x;
  y = self->_hoursReferenceFrame.origin.y;
  width = self->_hoursReferenceFrame.size.width;
  height = self->_hoursReferenceFrame.size.height;
  [hourLabel2 textRectForBounds:1 limitedToNumberOfLines:?];
  v14 = fmax(width, v13);

  minuteLabel2 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [(UIView *)self bounds];
  v16 = self->_minutesReferenceFrame.origin.y;
  v17 = self->_minutesReferenceFrame.size.width;
  v18 = self->_minutesReferenceFrame.size.height;
  [minuteLabel2 textRectForBounds:1 limitedToNumberOfLines:?];
  v20 = fmax(v17, v19);

  hourLabel3 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel3 setFrame:{x, y, v14, height}];

  v22 = round(self->_minutesReferenceFrame.origin.x + (self->_minutesReferenceFrame.size.width - v20) * 0.5);
  minuteLabel3 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel3 setFrame:{v22, v16, v20, v18}];

  v24 = v64;
  if (v64 >= *&v63[1])
  {
    v25 = &v63[1] + 8;
  }

  else
  {
    v25 = &v64 + 8;
  }

  v26 = *v25;
  if (v64 >= *&v63[1])
  {
    v27 = *&v63[1];
  }

  else
  {
    v27 = v64;
  }

  if (v64 <= *&v63[1])
  {
    v24 = *&v63[1];
  }

  v28 = [v3 attributedSubstringFromRange:{v26 + v27, v24 - (v26 + v27)}];
  timeSeparatorLabel = [(_UIDatePickerWheelsTimeLabel *)self timeSeparatorLabel];
  [timeSeparatorLabel setAttributedText:v28];

  hourLabel4 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel4 frame];
  MinX = CGRectGetMinX(v65);
  minuteLabel4 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel4 frame];
  v33 = CGRectGetMinX(v66);

  if (MinX < v33)
  {
    hourLabel5 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
    [hourLabel5 frame];
    v36 = v44;
    v38 = v45;
    v40 = v46;
    v42 = v47;

    [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  }

  else
  {
    minuteLabel5 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
    [minuteLabel5 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  }
  v48 = ;
  [v48 frame];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v67.origin.x = v36;
  v67.origin.y = v38;
  v67.size.width = v40;
  v67.size.height = v42;
  MaxX = CGRectGetMaxX(v67);
  v68.origin.x = v36;
  v68.origin.y = v38;
  v68.size.width = v40;
  v68.size.height = v42;
  MinY = CGRectGetMinY(v68);
  v69.origin.x = v50;
  v69.origin.y = v52;
  v69.size.width = v54;
  v69.size.height = v56;
  v57 = CGRectGetMinX(v69);
  v70.origin.x = v36;
  v70.origin.y = v38;
  v70.size.width = v40;
  v70.size.height = v42;
  v58 = v57 - CGRectGetMaxX(v70);
  v71.origin.x = v36;
  v71.origin.y = v38;
  v71.size.width = v40;
  v71.size.height = v42;
  v59 = CGRectGetHeight(v71);
  timeSeparatorLabel2 = [(_UIDatePickerWheelsTimeLabel *)self timeSeparatorLabel];
  [timeSeparatorLabel2 setFrame:{MaxX, MinY, v58, v59}];
}

- (void)stateMachineUpdateFromState:(unint64_t)state toState:(unint64_t)toState
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerWheelsTimeLabel;
  [(_UIDatePickerCalendarTimeLabel *)&v6 stateMachineUpdateFromState:state toState:?];
  [(_UIDatePickerWheelsTimeLabel *)self setContentHidden:toState - 10 < 0xFFFFFFFFFFFFFFF8];
}

- (void)beginEditingWheels
{
  v3.receiver = self;
  v3.super_class = _UIDatePickerWheelsTimeLabel;
  [(_UIDatePickerCalendarTimeLabel *)&v3 beginEditingWheels];
  [(_UIDatePickerWheelsTimeLabel *)self setWheelsActive:1];
}

- (void)endEditingWheels
{
  v3.receiver = self;
  v3.super_class = _UIDatePickerWheelsTimeLabel;
  [(_UIDatePickerCalendarTimeLabel *)&v3 endEditingWheels];
  [(_UIDatePickerWheelsTimeLabel *)self setWheelsActive:0];
}

- (void)updateHoursFromDatePicker:(int64_t)picker wheelsChanged:(BOOL)changed
{
  changedCopy = changed;
  timeFormat = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  clock = [timeFormat clock];

  if (clock)
  {
    if (clock == 3)
    {
      if (!picker)
      {
        picker = 24;
      }
    }

    else if (clock == 1)
    {
      pickerCopy = picker % 0xCuLL;
      if (picker <= 11)
      {
        pickerCopy = picker;
      }

      if (pickerCopy)
      {
        picker = pickerCopy;
      }

      else
      {
        picker = 12;
      }
    }
  }

  else if (picker >= 12)
  {
    picker %= 0xCuLL;
  }

  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [inputValue setHourValue:picker];

  if (changedCopy)
  {

    [(_UIDatePickerCalendarTimeLabel *)self wheelChanged];
  }

  else
  {

    [(_UIDatePickerWheelsTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (void)updateMinutesFromDatePicker:(int64_t)picker wheelsChanged:(BOOL)changed
{
  changedCopy = changed;
  inputValue = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [inputValue setMinuteValue:picker];

  if (changedCopy)
  {

    [(_UIDatePickerCalendarTimeLabel *)self wheelChanged];
  }

  else
  {

    [(_UIDatePickerWheelsTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (void)willBeginWritingInScribbleInteraction
{
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel setAttributedText:0];

  minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel setAttributedText:0];
}

- (void)configureLabelsForHour:(id *)hour minute:(id *)minute
{
  var2 = hour->var2;
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [hourLabel setTextAlignment:var2];

  measurementLabel = self->_measurementLabel;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self _currentScreenScale];
  v37 = *hour;
  self->_hoursReferenceFrame.origin.x = _labelFrame(measurementLabel, &v37, v11, v13, v15, v17, v18);
  self->_hoursReferenceFrame.origin.y = v19;
  self->_hoursReferenceFrame.size.width = v20;
  self->_hoursReferenceFrame.size.height = v21;
  v22 = minute->var2;
  minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [minuteLabel setTextAlignment:v22];

  v24 = self->_measurementLabel;
  [(UIView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(UIView *)self _currentScreenScale];
  v37 = *minute;
  self->_minutesReferenceFrame.origin.x = _labelFrame(v24, &v37, v26, v28, v30, v32, v33);
  self->_minutesReferenceFrame.origin.y = v34;
  self->_minutesReferenceFrame.size.width = v35;
  self->_minutesReferenceFrame.size.height = v36;

  [(_UIDatePickerWheelsTimeLabel *)self pushCurrentStateIntoUI];
}

- (CGRect)combinedTextRectFromLabels
{
  hourLabel = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [(UIView *)self bounds];
  x = self->_hoursReferenceFrame.origin.x;
  y = self->_hoursReferenceFrame.origin.y;
  width = self->_hoursReferenceFrame.size.width;
  height = self->_hoursReferenceFrame.size.height;
  [hourLabel textRectForBounds:1 limitedToNumberOfLines:?];
  v9 = fmax(width, v8);

  minuteLabel = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [(UIView *)self bounds];
  v11 = self->_minutesReferenceFrame.origin.x;
  v12 = self->_minutesReferenceFrame.origin.y;
  v14 = self->_minutesReferenceFrame.size.width;
  v13 = self->_minutesReferenceFrame.size.height;
  [minuteLabel textRectForBounds:1 limitedToNumberOfLines:?];
  v16 = fmax(v14, v15);

  v17 = x;
  v18 = y;
  v19 = v9;
  v20 = height;
  v21 = v11;
  v22 = v12;
  v23 = v16;
  v24 = v13;

  return CGRectUnion(*&v17, *&v21);
}

- (_UIDatePickerWheelsTimeLabelDelegate)wheelsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wheelsDelegate);

  return WeakRetained;
}

@end