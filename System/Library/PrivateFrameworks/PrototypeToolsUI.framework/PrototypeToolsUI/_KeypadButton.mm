@interface _KeypadButton
- (_KeypadButton)initWithKeyType:(int64_t)type digit:(unint64_t)digit target:(id)target;
- (void)_updateBackgroundColor;
@end

@implementation _KeypadButton

- (_KeypadButton)initWithKeyType:(int64_t)type digit:(unint64_t)digit target:(id)target
{
  targetCopy = target;
  v23.receiver = self;
  v23.super_class = _KeypadButton;
  v9 = [(_KeypadButton *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v10 = v9;
  if (v9)
  {
    v9->_keyType = type;
    v9->_digit = digit;
    [(_KeypadButton *)v9 addTarget:targetCopy action:sel_keyPress_ forControlEvents:64];
    keyType = v10->_keyType;
    if (keyType <= 1)
    {
      if (keyType)
      {
        if (keyType == 1)
        {
          v13 = @".";
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v10->_digit];
      }
    }

    else if (keyType == 2)
    {
      v13 = @"+/-";
    }

    else
    {
      v12 = @"⇦";
      if (keyType != 4)
      {
        v12 = 0;
      }

      if (keyType == 3)
      {
        v13 = @"C";
      }

      else
      {
        v13 = v12;
      }
    }

    [(_KeypadButton *)v10 setTitle:v13 forState:0];
    v14 = _KeypadForegroundColor();
    [(_KeypadButton *)v10 setTitleColor:v14 forState:0];

    v15 = _KeypadBackgroundColor();
    [(_KeypadButton *)v10 setTitleColor:v15 forState:1];

    titleLabel = [(_KeypadButton *)v10 titleLabel];
    v17 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74420]];
    [titleLabel setFont:v17];

    layer = [(_KeypadButton *)v10 layer];
    [layer setCornerRadius:6.0];

    layer2 = [(_KeypadButton *)v10 layer];
    [layer2 setBorderWidth:1.0];

    layer3 = [(_KeypadButton *)v10 layer];
    v21 = _KeypadForegroundColor();
    [layer3 setBorderColor:{objc_msgSend(v21, "CGColor")}];

    [(_KeypadButton *)v10 _updateBackgroundColor];
  }

  return v10;
}

- (void)_updateBackgroundColor
{
  if (([(_KeypadButton *)self isHighlighted]& 1) != 0)
  {
    _KeypadForegroundColor();
  }

  else
  {
    _KeypadBackgroundColor();
  }
  v3 = ;
  [(_KeypadButton *)self setBackgroundColor:v3];
}

@end