@interface _UIDatePickerWheelsTimeLabel
- (CGRect)combinedTextRectFromLabels;
- (CGRect)hourRect;
- (CGRect)minuteRect;
- (_UIDatePickerWheelsTimeLabel)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4;
- (_UIDatePickerWheelsTimeLabelDelegate)wheelsDelegate;
- (id)_viewForHighlightedTouchAtPoint:(CGPoint)a3;
- (id)font;
- (void)beginEditingWheels;
- (void)configureLabelsForHour:(id *)a3 minute:(id *)a4;
- (void)controlEventsGestureRecognizer:(id)a3 recognizedControlEvent:(unint64_t)a4 withEvent:(id)a5;
- (void)endEditingWheels;
- (void)pushCurrentStateIntoUI;
- (void)setContentHidden:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setHighlightedForTouch:(BOOL)a3;
- (void)stateMachineUpdateFromState:(unint64_t)a3 toState:(unint64_t)a4;
- (void)updateHoursFromDatePicker:(int64_t)a3 wheelsChanged:(BOOL)a4;
- (void)updateMinutesFromDatePicker:(int64_t)a3 wheelsChanged:(BOOL)a4;
- (void)willBeginWritingInScribbleInteraction;
@end

@implementation _UIDatePickerWheelsTimeLabel

- (_UIDatePickerWheelsTimeLabel)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4
{
  v30.receiver = self;
  v30.super_class = _UIDatePickerWheelsTimeLabel;
  v4 = [(_UIDatePickerCalendarTimeLabel *)&v30 initWithTimeFormat:a3 minuteInterval:a4];
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
    v28 = [(UIView *)v4 layer];
    [v28 setHitTestsAsOpaque:1];
  }

  return v4;
}

- (void)controlEventsGestureRecognizer:(id)a3 recognizedControlEvent:(unint64_t)a4 withEvent:(id)a5
{
  v17 = a3;
  v7 = [(_UIDatePickerWheelsTimeLabel *)self wheelsDelegate];
  v8 = [v7 wheelsTimeLabelShouldReceiveInteraction:self];

  v9 = v17;
  if (v8)
  {
    [v17 locationInView:self];
    v12 = v10;
    v13 = v11;
    if (a4 <= 63)
    {
      if (a4 == 1)
      {
        v16 = [(_UIDatePickerWheelsTimeLabel *)self _viewForHighlightedTouchAtPoint:v10, v11];
        objc_storeWeak(&self->_touchHighlightedView, v16);

        [(_UIDatePickerWheelsTimeLabel *)self setContentHidden:0];
      }

      else if (a4 != 16)
      {
        v9 = v17;
        if (a4 != 32)
        {
          goto LABEL_16;
        }

        v14 = self;
        v15 = 0;
        goto LABEL_13;
      }

      v14 = self;
      v15 = 1;
LABEL_13:
      [(_UIDatePickerWheelsTimeLabel *)v14 setHighlightedForTouch:v15];
      goto LABEL_15;
    }

    if (a4 == 64)
    {
      [(_UIDatePickerWheelsTimeLabel *)self setHighlightedForTouch:0];
      [(_UIDatePickerCalendarTimeLabel *)self didTapInputLabelAtLocation:v12, v13];
      goto LABEL_15;
    }

    v9 = v17;
    if (a4 == 128 || a4 == 256)
    {
      [(_UIDatePickerWheelsTimeLabel *)self setHighlightedForTouch:0];
      objc_storeWeak(&self->_touchHighlightedView, 0);
      [(_UIDatePickerWheelsTimeLabel *)self setContentHidden:1];
LABEL_15:
      v9 = v17;
    }
  }

LABEL_16:
}

- (void)setHighlightedForTouch:(BOOL)a3
{
  if (self->_highlightedForTouch != a3)
  {
    v14 = v3;
    v15 = v4;
    v5 = a3;
    self->_highlightedForTouch = a3;
    v6 = objc_loadWeakRetained(&self->_touchHighlightedView);
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceStyle] == 2;

    v9 = dbl_18A674F10[v8];
    v11[1] = 3221225472;
    v11[0] = MEMORY[0x1E69E9820];
    v11[2] = ___UIDateLabelAnimateHighlight_block_invoke_1;
    v11[3] = &unk_1E70F32F0;
    if (!v5)
    {
      v9 = 1.0;
    }

    v12 = v6;
    v13 = v9;
    v10 = v6;
    [UIView animateWithDuration:327684 delay:v11 options:0 animations:0.47 completion:0.0];
  }
}

- (id)_viewForHighlightedTouchAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(_UIDatePickerCalendarTimeLabel *)self inputScope])
  {
    goto LABEL_6;
  }

  v6 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v6 frame];
  v13.x = x;
  v13.y = y;
  v7 = CGRectContainsPoint(v15, v13);

  if (v7)
  {
    v8 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
    goto LABEL_7;
  }

  v9 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v9 frame];
  v14.x = x;
  v14.y = y;
  v10 = CGRectContainsPoint(v16, v14);

  if (v10)
  {
    v8 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  }

  else
  {
LABEL_6:
    v8 = [(_UIDatePickerWheelsTimeLabel *)self contentView];
  }

LABEL_7:

  return v8;
}

- (void)setContentHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  v6 = [v5 isHidden];

  if (v6 != v3)
  {
    v7 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
    [v7 setHidden:v3];

    v8 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
    [v8 setHidden:v3];

    v9 = 0.1;
    if (v3)
    {
      v9 = 0.14;
    }

    v10 = 0.12;
    if (v3)
    {
      v10 = 0.0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49___UIDatePickerWheelsTimeLabel_setContentHidden___block_invoke;
    v12[3] = &unk_1E70F35E0;
    v12[4] = self;
    v13 = v3;
    [UIView animateWithDuration:4 delay:v12 options:0 animations:v9 completion:v10];
    v11 = [(_UIDatePickerWheelsTimeLabel *)self wheelsDelegate];
    [v11 wheelsTimeLabel:self didChangeVisibility:v3 ^ 1];
  }
}

- (void)setFont:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v5 setFont:v4];

  v6 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v6 setFont:v4];

  v7 = [v4 fontDescriptor];
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
  v12 = [v7 fontDescriptorByAddingAttributes:v11];

  v13 = [off_1E70ECC18 fontWithDescriptor:v12 size:0.0];

  v14 = [(_UIDatePickerWheelsTimeLabel *)self timeSeparatorLabel];
  [v14 setFont:v13];

  [(UILabel *)self->_measurementLabel setFont:v4];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (id)font
{
  v2 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  v3 = [v2 font];

  return v3;
}

- (CGRect)hourRect
{
  v2 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v2 frame];
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
  v2 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v2 frame];
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
  v5 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v5 setAttributedText:v4];

  v6 = [v3 attributedSubstringFromRange:v63[1]];
  v7 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v7 setAttributedText:v6];

  v8 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [(UIView *)self bounds];
  x = self->_hoursReferenceFrame.origin.x;
  y = self->_hoursReferenceFrame.origin.y;
  width = self->_hoursReferenceFrame.size.width;
  height = self->_hoursReferenceFrame.size.height;
  [v8 textRectForBounds:1 limitedToNumberOfLines:?];
  v14 = fmax(width, v13);

  v15 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [(UIView *)self bounds];
  v16 = self->_minutesReferenceFrame.origin.y;
  v17 = self->_minutesReferenceFrame.size.width;
  v18 = self->_minutesReferenceFrame.size.height;
  [v15 textRectForBounds:1 limitedToNumberOfLines:?];
  v20 = fmax(v17, v19);

  v21 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v21 setFrame:{x, y, v14, height}];

  v22 = round(self->_minutesReferenceFrame.origin.x + (self->_minutesReferenceFrame.size.width - v20) * 0.5);
  v23 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v23 setFrame:{v22, v16, v20, v18}];

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
  v29 = [(_UIDatePickerWheelsTimeLabel *)self timeSeparatorLabel];
  [v29 setAttributedText:v28];

  v30 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v30 frame];
  MinX = CGRectGetMinX(v65);
  v32 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v32 frame];
  v33 = CGRectGetMinX(v66);

  if (MinX < v33)
  {
    v43 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
    [v43 frame];
    v36 = v44;
    v38 = v45;
    v40 = v46;
    v42 = v47;

    [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  }

  else
  {
    v34 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
    [v34 frame];
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
  v60 = [(_UIDatePickerWheelsTimeLabel *)self timeSeparatorLabel];
  [v60 setFrame:{MaxX, MinY, v58, v59}];
}

- (void)stateMachineUpdateFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerWheelsTimeLabel;
  [(_UIDatePickerCalendarTimeLabel *)&v6 stateMachineUpdateFromState:a3 toState:?];
  [(_UIDatePickerWheelsTimeLabel *)self setContentHidden:a4 - 10 < 0xFFFFFFFFFFFFFFF8];
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

- (void)updateHoursFromDatePicker:(int64_t)a3 wheelsChanged:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UIDatePickerCalendarTimeLabel *)self timeFormat];
  v8 = [v7 clock];

  if (v8)
  {
    if (v8 == 3)
    {
      if (!a3)
      {
        a3 = 24;
      }
    }

    else if (v8 == 1)
    {
      v9 = a3 % 0xCuLL;
      if (a3 <= 11)
      {
        v9 = a3;
      }

      if (v9)
      {
        a3 = v9;
      }

      else
      {
        a3 = 12;
      }
    }
  }

  else if (a3 >= 12)
  {
    a3 %= 0xCuLL;
  }

  v10 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [v10 setHourValue:a3];

  if (v4)
  {

    [(_UIDatePickerCalendarTimeLabel *)self wheelChanged];
  }

  else
  {

    [(_UIDatePickerWheelsTimeLabel *)self pushCurrentStateIntoUI];
  }
}

- (void)updateMinutesFromDatePicker:(int64_t)a3 wheelsChanged:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UIDatePickerCalendarTimeLabel *)self inputValue];
  [v7 setMinuteValue:a3];

  if (v4)
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
  v3 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v3 setAttributedText:0];

  v4 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v4 setAttributedText:0];
}

- (void)configureLabelsForHour:(id *)a3 minute:(id *)a4
{
  var2 = a3->var2;
  v8 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [v8 setTextAlignment:var2];

  measurementLabel = self->_measurementLabel;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self _currentScreenScale];
  v37 = *a3;
  self->_hoursReferenceFrame.origin.x = _labelFrame(measurementLabel, &v37, v11, v13, v15, v17, v18);
  self->_hoursReferenceFrame.origin.y = v19;
  self->_hoursReferenceFrame.size.width = v20;
  self->_hoursReferenceFrame.size.height = v21;
  v22 = a4->var2;
  v23 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [v23 setTextAlignment:v22];

  v24 = self->_measurementLabel;
  [(UIView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(UIView *)self _currentScreenScale];
  v37 = *a4;
  self->_minutesReferenceFrame.origin.x = _labelFrame(v24, &v37, v26, v28, v30, v32, v33);
  self->_minutesReferenceFrame.origin.y = v34;
  self->_minutesReferenceFrame.size.width = v35;
  self->_minutesReferenceFrame.size.height = v36;

  [(_UIDatePickerWheelsTimeLabel *)self pushCurrentStateIntoUI];
}

- (CGRect)combinedTextRectFromLabels
{
  v3 = [(_UIDatePickerWheelsTimeLabel *)self hourLabel];
  [(UIView *)self bounds];
  x = self->_hoursReferenceFrame.origin.x;
  y = self->_hoursReferenceFrame.origin.y;
  width = self->_hoursReferenceFrame.size.width;
  height = self->_hoursReferenceFrame.size.height;
  [v3 textRectForBounds:1 limitedToNumberOfLines:?];
  v9 = fmax(width, v8);

  v10 = [(_UIDatePickerWheelsTimeLabel *)self minuteLabel];
  [(UIView *)self bounds];
  v11 = self->_minutesReferenceFrame.origin.x;
  v12 = self->_minutesReferenceFrame.origin.y;
  v14 = self->_minutesReferenceFrame.size.width;
  v13 = self->_minutesReferenceFrame.size.height;
  [v10 textRectForBounds:1 limitedToNumberOfLines:?];
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