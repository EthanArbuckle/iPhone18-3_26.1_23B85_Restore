@interface PTUINumericKeypad
+ (id)sharedKeypad;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)stringValue;
- (PTUINumericKeypad)init;
- (double)_layoutButtonRow:(id)row atY:(double)y stretch:(BOOL)stretch;
- (double)doubleValue;
- (unint64_t)_remainingAllowedDigits;
- (void)_appendDigit:(unint64_t)digit;
- (void)_appendDot;
- (void)_backspace;
- (void)_clear;
- (void)_dismissButtonPress;
- (void)_flash;
- (void)_updateDisplayedValue;
- (void)hideAnimated:(BOOL)animated;
- (void)keyPress:(id)press;
- (void)layoutSubviews;
- (void)setDoubleValue:(double)value;
- (void)setStringValue:(id)value;
- (void)showAnimated:(BOOL)animated forDelegate:(id)delegate;
@end

@implementation PTUINumericKeypad

+ (id)sharedKeypad
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PTUINumericKeypad_sharedKeypad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedKeypad_onceToken != -1)
  {
    dispatch_once(&sharedKeypad_onceToken, block);
  }

  v2 = sharedKeypad___keypad;

  return v2;
}

uint64_t __33__PTUINumericKeypad_sharedKeypad__block_invoke(uint64_t a1)
{
  sharedKeypad___keypad = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (PTUINumericKeypad)init
{
  v43.receiver = self;
  v43.super_class = PTUINumericKeypad;
  v2 = [(PTUINumericKeypad *)&v43 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    digitsBeforeDot = v2->_digitsBeforeDot;
    v2->_digitsBeforeDot = array;

    array2 = [MEMORY[0x277CBEB18] array];
    digitsAfterDot = v2->_digitsAfterDot;
    v2->_digitsAfterDot = array2;

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v7;

    v9 = v2->_backgroundView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v9 setBackgroundColor:whiteColor];

    layer = [(UIView *)v2->_backgroundView layer];
    [layer setCornerRadius:10.0];

    layer2 = [(UIView *)v2->_backgroundView layer];
    [layer2 setBorderWidth:2.0];

    layer3 = [(UIView *)v2->_backgroundView layer];
    v14 = _KeypadForegroundColor();
    [layer3 setBorderColor:{objc_msgSend(v14, "CGColor")}];

    [(PTUINumericKeypad *)v2 addSubview:v2->_backgroundView];
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    valueLabel = v2->_valueLabel;
    v2->_valueLabel = v15;

    v17 = v2->_valueLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v17 setBackgroundColor:clearColor];

    v19 = v2->_valueLabel;
    v20 = _KeypadForegroundColor();
    [(UILabel *)v19 setTextColor:v20];

    v21 = v2->_valueLabel;
    v22 = [MEMORY[0x277D74300] systemFontOfSize:23.0];
    [(UILabel *)v21 setFont:v22];

    [(UILabel *)v2->_valueLabel setTextAlignment:2];
    [(PTUINumericKeypad *)v2 addSubview:v2->_valueLabel];
    v23 = objc_alloc_init(_KeypadDismissButton);
    dismissButton = v2->_dismissButton;
    v2->_dismissButton = v23;

    [(_KeypadDismissButton *)v2->_dismissButton addTarget:v2 action:sel__dismissButtonPress forControlEvents:64];
    [(PTUINumericKeypad *)v2 addSubview:v2->_dismissButton];
    array3 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 10; ++i)
    {
      v27 = [[_KeypadButton alloc] initWithDigit:i target:v2];
      [array3 addObject:v27];
      [(PTUINumericKeypad *)v2 addSubview:v27];
    }

    v28 = [array3 copy];
    digitButtons = v2->_digitButtons;
    v2->_digitButtons = v28;

    v30 = [[_KeypadButton alloc] initWithKeyType:1 target:v2];
    dotButton = v2->_dotButton;
    v2->_dotButton = v30;

    [(PTUINumericKeypad *)v2 addSubview:v2->_dotButton];
    v32 = [[_KeypadButton alloc] initWithKeyType:2 target:v2];
    signButton = v2->_signButton;
    v2->_signButton = v32;

    [(PTUINumericKeypad *)v2 addSubview:v2->_signButton];
    v34 = [[_KeypadButton alloc] initWithKeyType:3 target:v2];
    clearButton = v2->_clearButton;
    v2->_clearButton = v34;

    [(PTUINumericKeypad *)v2 addSubview:v2->_clearButton];
    v36 = [[_KeypadButton alloc] initWithKeyType:4 target:v2];
    backspaceButton = v2->_backspaceButton;
    v2->_backspaceButton = v36;

    [(PTUINumericKeypad *)v2 addSubview:v2->_backspaceButton];
    layer4 = [(PTUINumericKeypad *)v2 layer];
    [layer4 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

    layer5 = [(PTUINumericKeypad *)v2 layer];
    LODWORD(v40) = 1053609165;
    [layer5 setShadowOpacity:v40];

    layer6 = [(PTUINumericKeypad *)v2 layer];
    [layer6 setShadowRadius:8.0];
  }

  return v2;
}

- (void)showAnimated:(BOOL)animated forDelegate:(id)delegate
{
  animatedCopy = animated;
  delegateCopy = delegate;
  objc_storeStrong(&self->_delegate, delegate);
  if (!self->_showing)
  {
    superview = [(PTUINumericKeypad *)self superview];

    if (!superview)
    {
      [__numericKeypadWindow addSubview:self];
      [__numericKeypadWindow bringSubviewToFront:self];
      [(PTUINumericKeypad *)self sizeToFit];
      [__numericKeypadWindow bounds];
      MidX = CGRectGetMidX(v17);
      [__numericKeypadWindow bounds];
      [(PTUINumericKeypad *)self setCenter:MidX, CGRectGetMidY(v18) + -100.0];
      CGAffineTransformMakeScale(&v16, 0.75, 0.75);
      [(PTUINumericKeypad *)self setTransform:&v16];
      [(PTUINumericKeypad *)self setAlpha:0.0];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__PTUINumericKeypad_showAnimated_forDelegate___block_invoke;
    v15[3] = &unk_279ACA8E8;
    v15[4] = self;
    v10 = MEMORY[0x2666F6670](v15);
    v11 = v10;
    if (animatedCopy)
    {
      v12 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__PTUINumericKeypad_showAnimated_forDelegate___block_invoke_2;
      v13[3] = &unk_279ACA910;
      v14 = v10;
      [v12 animateWithDuration:4 delay:v13 options:0 animations:0.3 completion:0.0];
    }

    else
    {
      v10[2](v10);
    }

    self->_showing = 1;
  }
}

uint64_t __46__PTUINumericKeypad_showAnimated_forDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

- (void)hideAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = self->_delegate;
  self->_delegate = 0;

  if (self->_showing)
  {
    if (animatedCopy)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __34__PTUINumericKeypad_hideAnimated___block_invoke;
      v7[3] = &unk_279ACA8E8;
      v7[4] = self;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __34__PTUINumericKeypad_hideAnimated___block_invoke_2;
      v6[3] = &unk_279ACA938;
      v6[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:4 delay:v7 options:v6 animations:0.3 completion:0.0];
    }

    else
    {
      [(PTUINumericKeypad *)self removeFromSuperview];
    }

    self->_showing = 0;
  }
}

uint64_t __34__PTUINumericKeypad_hideAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.75, 0.75);
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.0];
}

_BYTE *__34__PTUINumericKeypad_hideAnimated___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[416] & 1) == 0)
  {
    return [result removeFromSuperview];
  }

  return result;
}

- (double)doubleValue
{
  cachedNumberValue = self->_cachedNumberValue;
  if (!cachedNumberValue)
  {
    if ([(NSMutableArray *)self->_digitsBeforeDot count])
    {
      v4 = 0;
      v5 = 1.0;
      v6 = 0.0;
      do
      {
        v7 = [(NSMutableArray *)self->_digitsBeforeDot objectAtIndex:v4];
        integerValue = [v7 integerValue];

        v6 = v6 + integerValue * v5;
        v5 = v5 * 10.0;
        ++v4;
      }

      while (v4 < [(NSMutableArray *)self->_digitsBeforeDot count]);
    }

    else
    {
      v6 = 0.0;
    }

    if ([(NSMutableArray *)self->_digitsAfterDot count])
    {
      v9 = 0;
      v10 = 0.1;
      do
      {
        v11 = [(NSMutableArray *)self->_digitsAfterDot objectAtIndex:v9];
        integerValue2 = [v11 integerValue];

        v6 = v6 + integerValue2 * v10;
        v10 = v10 * 0.1;
        ++v9;
      }

      while (v9 < [(NSMutableArray *)self->_digitsAfterDot count]);
    }

    v13 = -v6;
    if (!self->_negative)
    {
      v13 = v6;
    }

    *&v13 = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v15 = self->_cachedNumberValue;
    self->_cachedNumberValue = v14;

    cachedNumberValue = self->_cachedNumberValue;
  }

  [(NSNumber *)cachedNumberValue floatValue];
  return v16;
}

- (void)setDoubleValue:(double)value
{
  [(NSMutableArray *)self->_digitsBeforeDot removeAllObjects];
  [(NSMutableArray *)self->_digitsAfterDot removeAllObjects];
  self->_negative = value < 0.0;
  v5 = fabs(value);
  v6 = vcvtmd_u64_f64(v5);
  if (v6)
  {
    v7 = 1;
    do
    {
      if ([(NSMutableArray *)self->_digitsBeforeDot count]> 0xA)
      {
        break;
      }

      v8 = 10 * v7;
      digitsBeforeDot = self->_digitsBeforeDot;
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 % (10 * v7) / v7];
      [(NSMutableArray *)digitsBeforeDot addObject:v10];

      v7 = v8;
    }

    while (v8 <= v6);
  }

  _remainingAllowedDigits = [(PTUINumericKeypad *)self _remainingAllowedDigits];
  if (_remainingAllowedDigits != -1)
  {
    v13 = 0;
    v14 = 0;
    v12 = v5 - v6;
    do
    {
      v15 = v12 * 10.0;
      v16 = vcvtmd_u64_f64(v12 * 10.0);
      if (v16)
      {
        for (; v13; --v13)
        {
          [(NSMutableArray *)self->_digitsAfterDot addObject:&unk_287378428];
        }

        digitsAfterDot = self->_digitsAfterDot;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
        [(NSMutableArray *)digitsAfterDot addObject:v18];

        v13 = 0;
      }

      else
      {
        ++v13;
      }

      v12 = v15 - v16;
      v26 = v14++ == _remainingAllowedDigits;
    }

    while (!v26);
  }

  if (-[NSMutableArray count](self->_digitsAfterDot, "count", v12) <= _remainingAllowedDigits || (-[NSMutableArray lastObject](self->_digitsAfterDot, "lastObject"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 integerValue], v19, -[NSMutableArray removeLastObject](self->_digitsAfterDot, "removeLastObject"), v20 < 5))
  {
LABEL_19:
    v25 = 0;
  }

  else
  {
    while ([(NSMutableArray *)self->_digitsAfterDot count])
    {
      lastObject = [(NSMutableArray *)self->_digitsAfterDot lastObject];
      v22 = [lastObject integerValue] + 1;

      [(NSMutableArray *)self->_digitsAfterDot removeLastObject];
      if (v22 <= 9)
      {
        v23 = self->_digitsAfterDot;
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
        [(NSMutableArray *)v23 addObject:v24];

        goto LABEL_19;
      }
    }

    v25 = 1;
  }

  if ([(NSMutableArray *)self->_digitsBeforeDot count])
  {
    v26 = v25 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v27 = 1;
    do
    {
      v28 = [(NSMutableArray *)self->_digitsBeforeDot objectAtIndex:v27 - 1];
      integerValue = [v28 integerValue];
      v30 = integerValue + 1;

      LOBYTE(v25) = integerValue == 9;
      if (integerValue == 9)
      {
        v31 = 0;
      }

      else
      {
        v31 = integerValue + 1;
      }

      v32 = self->_digitsBeforeDot;
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
      [(NSMutableArray *)v32 replaceObjectAtIndex:v27 - 1 withObject:v33];
    }

    while (v27++ < [(NSMutableArray *)self->_digitsBeforeDot count]&& v30 == 10);
  }

  if (v25)
  {
    [(NSMutableArray *)self->_digitsBeforeDot addObject:&unk_287378440];
  }

  self->_hasDot = [(NSMutableArray *)self->_digitsAfterDot count]!= 0;

  [(PTUINumericKeypad *)self _updateDisplayedValue];
}

- (NSString)stringValue
{
  cachedStringValue = self->_cachedStringValue;
  if (!cachedStringValue)
  {
    string = [MEMORY[0x277CCAB68] string];
    v5 = string;
    if (self->_negative)
    {
      [string appendString:@"-"];
    }

    if ([(NSMutableArray *)self->_digitsBeforeDot count])
    {
      digitsBeforeDot = self->_digitsBeforeDot;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __32__PTUINumericKeypad_stringValue__block_invoke;
      v17[3] = &unk_279ACA960;
      v18 = v5;
      [(NSMutableArray *)digitsBeforeDot enumerateObjectsWithOptions:2 usingBlock:v17];
    }

    else
    {
      [v5 appendString:@"0"];
    }

    if (self->_hasDot)
    {
      [v5 appendString:@"."];
    }

    digitsAfterDot = self->_digitsAfterDot;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __32__PTUINumericKeypad_stringValue__block_invoke_2;
    v15 = &unk_279ACA960;
    v16 = v5;
    v8 = v5;
    [(NSMutableArray *)digitsAfterDot enumerateObjectsUsingBlock:&v12];
    v9 = [v8 copy];
    v10 = self->_cachedStringValue;
    self->_cachedStringValue = v9;

    cachedStringValue = self->_cachedStringValue;
  }

  return cachedStringValue;
}

- (void)setStringValue:(id)value
{
  [value doubleValue];

  [(PTUINumericKeypad *)self setDoubleValue:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 210.0;
  v4 = 310.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v43[2] = *MEMORY[0x277D85DE8];
  [(PTUINumericKeypad *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_backgroundView setFrame:?];
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  v45 = CGRectInset(v44, 16.0, 16.0);
  y = v45.origin.y;
  [(UILabel *)self->_valueLabel setFrame:v45.origin.x];
  backspaceButton = self->_backspaceButton;
  v43[0] = self->_clearButton;
  v43[1] = backspaceButton;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [(PTUINumericKeypad *)self _layoutButtonRow:v13 atY:y + 46.0];
  v15 = v14;

  v16 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:7];
  v42[0] = v16;
  v17 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:8];
  v42[1] = v17;
  v18 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:9];
  v42[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
  [(PTUINumericKeypad *)self _layoutButtonRow:v19 atY:v15];
  v21 = v20;

  v22 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:4];
  v41[0] = v22;
  v23 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:5];
  v41[1] = v23;
  v24 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:6];
  v41[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  [(PTUINumericKeypad *)self _layoutButtonRow:v25 atY:v21];
  v27 = v26;

  v28 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:1];
  v40[0] = v28;
  v29 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:2];
  v40[1] = v29;
  v30 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:3];
  v40[2] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  [(PTUINumericKeypad *)self _layoutButtonRow:v31 atY:v27];
  v33 = v32;

  v39[0] = self->_signButton;
  v34 = [(NSArray *)self->_digitButtons objectAtIndexedSubscript:0];
  dotButton = self->_dotButton;
  v39[1] = v34;
  v39[2] = dotButton;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  [(PTUINumericKeypad *)self _layoutButtonRow:v36 atY:v33];

  [(_KeypadDismissButton *)self->_dismissButton setFrame:-20.0, -20.0, 40.0, 40.0];
  layer = [(_KeypadDismissButton *)self->_dismissButton layer];
  [layer setCornerRadius:20.0];

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(_KeypadDismissButton *)self->_dismissButton convertPoint:self fromView:x, y];
  if (([(_KeypadDismissButton *)self->_dismissButton pointInside:eventCopy withEvent:?]& 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PTUINumericKeypad;
    v8 = [(PTUINumericKeypad *)&v10 pointInside:eventCopy withEvent:x, y];
  }

  return v8;
}

- (double)_layoutButtonRow:(id)row atY:(double)y stretch:(BOOL)stretch
{
  stretchCopy = stretch;
  rowCopy = row;
  v8 = [rowCopy count];
  if (v8 != 3 && !stretchCopy)
  {
    if (v8 == 1)
    {
      firstObject = [rowCopy firstObject];
      v13 = firstObject;
      v14 = 78.0;
      yCopy2 = y;
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_15;
      }

      firstObject2 = [rowCopy firstObject];
      [firstObject2 setFrame:{16.0, y, 54.0, 40.0}];

      firstObject = [rowCopy lastObject];
      v13 = firstObject;
      v14 = 140.0;
      yCopy2 = y;
    }

    [firstObject setFrame:{v14, yCopy2, 54.0, 40.0}];

    goto LABEL_15;
  }

  v10 = 54.0;
  if (v8 == 2)
  {
    v10 = 85.0;
  }

  if (v8 == 1)
  {
    v10 = 178.0;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0x4030000000000000;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__PTUINumericKeypad__layoutButtonRow_atY_stretch___block_invoke;
  v17[3] = &unk_279ACA988;
  v17[4] = v18;
  *&v17[5] = y;
  *&v17[6] = v10;
  [rowCopy enumerateObjectsUsingBlock:v17];
  _Block_object_dispose(v18, 8);
LABEL_15:

  return y + 40.0 + 8.0;
}

CGFloat __50__PTUINumericKeypad__layoutButtonRow_atY_stretch___block_invoke(double *a1, void *a2)
{
  v3 = *(*(*(a1 + 4) + 8) + 24);
  v4 = a1[5];
  v5 = a1[6];
  [a2 setFrame:{v3, v4, v5, 40.0}];
  v7.origin.x = v3;
  v7.origin.y = v4;
  v7.size.width = v5;
  v7.size.height = 40.0;
  result = CGRectGetMaxX(v7) + 8.0;
  *(*(*(a1 + 4) + 8) + 24) = result;
  return result;
}

- (void)_updateDisplayedValue
{
  cachedNumberValue = self->_cachedNumberValue;
  self->_cachedNumberValue = 0;

  cachedStringValue = self->_cachedStringValue;
  self->_cachedStringValue = 0;

  valueLabel = self->_valueLabel;
  stringValue = [(PTUINumericKeypad *)self stringValue];
  [(UILabel *)valueLabel setText:stringValue];

  delegate = self->_delegate;

  [(PTUINumericKeypadDelegate *)delegate numericKeypadDidUpdateValue:self];
}

- (void)keyPress:(id)press
{
  pressCopy = press;
  keyType = [pressCopy keyType];
  if (keyType <= 1)
  {
    if (keyType)
    {
      if (keyType == 1)
      {
        [(PTUINumericKeypad *)self _appendDot];
      }
    }

    else
    {
      -[PTUINumericKeypad _appendDigit:](self, "_appendDigit:", [pressCopy digit]);
    }
  }

  else
  {
    switch(keyType)
    {
      case 2:
        [(PTUINumericKeypad *)self _changeSign];
        break;
      case 3:
        [(PTUINumericKeypad *)self _clear];
        break;
      case 4:
        [(PTUINumericKeypad *)self _backspace];
        break;
    }
  }
}

- (void)_appendDigit:(unint64_t)digit
{
  if ([(PTUINumericKeypad *)self _remainingAllowedDigits])
  {
    if (self->_hasDot)
    {
      digitsAfterDot = self->_digitsAfterDot;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
      [(NSMutableArray *)digitsAfterDot addObject:v6];
    }

    else
    {
      if (!([(NSMutableArray *)self->_digitsBeforeDot count]| digit))
      {
LABEL_10:

        [(PTUINumericKeypad *)self _updateDisplayedValue];
        return;
      }

      digitsBeforeDot = self->_digitsBeforeDot;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
      [(NSMutableArray *)digitsBeforeDot insertObject:v6 atIndex:0];
    }

    goto LABEL_10;
  }

  [(PTUINumericKeypad *)self _flash];
}

- (unint64_t)_remainingAllowedDigits
{
  v3 = [(NSMutableArray *)self->_digitsBeforeDot count];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(NSMutableArray *)self->_digitsAfterDot count];
  if ((v5 + v4) <= 0xB)
  {
    return 11 - (v5 + v4);
  }

  else
  {
    return 0;
  }
}

- (void)_appendDot
{
  if (self->_hasDot)
  {
    [(PTUINumericKeypad *)self _flash];
  }

  else
  {
    self->_hasDot = 1;
    [(PTUINumericKeypad *)self _updateDisplayedValue];
  }
}

- (void)_clear
{
  [(NSMutableArray *)self->_digitsAfterDot removeAllObjects];
  [(NSMutableArray *)self->_digitsBeforeDot removeAllObjects];
  self->_hasDot = 0;
  self->_negative = 0;

  [(PTUINumericKeypad *)self _updateDisplayedValue];
}

- (void)_backspace
{
  if ([(NSMutableArray *)self->_digitsAfterDot count])
  {
    [(NSMutableArray *)self->_digitsAfterDot removeLastObject];
LABEL_7:

    [(PTUINumericKeypad *)self _updateDisplayedValue];
    return;
  }

  v3 = 505;
  if (self->_hasDot)
  {
    goto LABEL_4;
  }

  if ([(NSMutableArray *)self->_digitsBeforeDot count])
  {
    [(NSMutableArray *)self->_digitsBeforeDot removeObjectAtIndex:0];
    goto LABEL_7;
  }

  v3 = 504;
  if (self->_negative)
  {
LABEL_4:
    *(&self->super.super.super.isa + v3) = 0;
    goto LABEL_7;
  }

  [(PTUINumericKeypad *)self _flash];
}

- (void)_dismissButtonPress
{
  [(PTUINumericKeypadDelegate *)self->_delegate numericKeypadWillDismiss:self];

  [(PTUINumericKeypad *)self hideAnimated:1];
}

- (void)_flash
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__PTUINumericKeypad__flash__block_invoke;
  v3[3] = &unk_279ACA8E8;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__PTUINumericKeypad__flash__block_invoke_2;
  v2[3] = &unk_279ACA938;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.1];
}

uint64_t __27__PTUINumericKeypad__flash__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 480);
  if (_KeypadFlashColor_onceToken != -1)
  {
    __27__PTUINumericKeypad__flash__block_invoke_cold_1();
  }

  v2 = _KeypadFlashColor___color;

  return [v1 setBackgroundColor:v2];
}

uint64_t __27__PTUINumericKeypad__flash__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__PTUINumericKeypad__flash__block_invoke_3;
  v2[3] = &unk_279ACA8E8;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.1];
}

void __27__PTUINumericKeypad__flash__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 480);
  v2 = [MEMORY[0x277D75348] whiteColor];
  [v1 setBackgroundColor:v2];
}

@end