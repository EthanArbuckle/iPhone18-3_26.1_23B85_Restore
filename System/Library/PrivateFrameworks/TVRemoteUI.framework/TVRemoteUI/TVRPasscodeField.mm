@interface TVRPasscodeField
- (CGSize)_contentSize;
- (NSString)text;
- (TVRPasscodeField)initWithFrame:(CGRect)frame;
- (double)_contentWidthWithDotSize:(double)size entrySpacing:(double)spacing groupSpacing:(double)groupSpacing;
- (void)clear;
- (void)deleteBackward;
- (void)drawRect:(CGRect)rect;
- (void)insertText:(id)text;
- (void)setPINEntryattributes:(id)entryattributes;
- (void)setText:(id)text;
@end

@implementation TVRPasscodeField

- (TVRPasscodeField)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = TVRPasscodeField;
  v3 = [(TVRPasscodeField *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D6C510]) initWithDigitCount:4];
    PINEntryattributes = v3->_PINEntryattributes;
    v3->_PINEntryattributes = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mutablePasscode = v3->_mutablePasscode;
    v3->_mutablePasscode = v6;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(TVRPasscodeField *)v3 setBackgroundColor:clearColor];

    [(TVRPasscodeField *)v3 setContentMode:3];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  [(TVRPasscodeField *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TVRPasscodeField *)self _contentSize];
  v13 = v12;
  v15 = v14;
  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  if (v13 <= CGRectGetWidth(v41) + -50.0)
  {
    v17 = 25.0;
    v19 = 22.0;
    v39 = 50.0;
  }

  else
  {
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    v16 = (CGRectGetWidth(v42) + -50.0) / v13;
    v15 = v16 * 22.0;
    v17 = v16 * 25.0;
    v39 = v16 * 50.0;
    [(TVRPasscodeField *)self _contentWidthWithDotSize:v16 * 22.0 entrySpacing:v16 * 25.0 groupSpacing:?];
    v13 = v18;
    v19 = v15;
  }

  v43.origin.x = v5;
  v43.origin.y = v7;
  v43.size.width = v9;
  v43.size.height = v11;
  Width = CGRectGetWidth(v43);
  v44.origin.x = v5;
  v44.origin.y = v7;
  v44.size.width = v9;
  v44.size.height = v11;
  Height = CGRectGetHeight(v44);
  CurrentContext = UIGraphicsGetCurrentContext();
  if ([(TVRPasscodeField *)self useSystemColors])
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v22 = ;
  CGContextSetFillColorWithColor(CurrentContext, [v22 CGColor]);

  numberOfDigitGroups = [(TVRCPINEntryAttributes *)self->_PINEntryattributes numberOfDigitGroups];
  if (numberOfDigitGroups)
  {
    v23 = 0;
    v24 = 0;
    v25 = (Width - v13) * 0.5;
    v26 = (Height - v15) * 0.5;
    v27 = floorf(v25);
    v28 = floorf(v26);
    v29 = (v19 + -4.0) * 0.5;
    v30 = floorf(v29) + v28;
    v31 = v19 + v17;
    v32 = v39 - v17;
    do
    {
      v33 = [(TVRCPINEntryAttributes *)self->_PINEntryattributes numberOfDigitsInGroup:v23, *&Width];
      if (v33)
      {
        v34 = v33;
        v35 = v33;
        v36 = v24;
        do
        {
          if (v36 >= [(NSMutableString *)self->_mutablePasscode length])
          {
            v37 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v27 cornerRadius:{v30, v19, 4.0, 3.0}];
            [v37 fill];
          }

          else
          {
            v45.origin.x = v27;
            v45.origin.y = v28;
            v45.size.width = v19;
            v45.size.height = v19;
            CGContextFillEllipseInRect(CurrentContext, v45);
          }

          v27 = v31 + v27;
          ++v36;
          --v35;
        }

        while (v35);
        v24 += v34;
      }

      v27 = v32 + v27;
      ++v23;
    }

    while (v23 != numberOfDigitGroups);
  }
}

- (NSString)text
{
  v2 = [(NSMutableString *)self->_mutablePasscode copy];

  return v2;
}

- (void)setText:(id)text
{
  textCopy = &stru_287E6AEF8;
  if (text)
  {
    textCopy = text;
  }

  v8 = textCopy;
  if ([(TVRCPINEntryAttributes *)self->_PINEntryattributes totalDigitCount]&& (v5 = [(__CFString *)v8 length], v5 > [(TVRCPINEntryAttributes *)self->_PINEntryattributes totalDigitCount]))
  {
    v6 = [(__CFString *)v8 substringToIndex:[(TVRCPINEntryAttributes *)self->_PINEntryattributes totalDigitCount]- 1];

    v7 = v6;
  }

  else
  {
    v7 = v8;
  }

  v9 = v7;
  if (([(NSMutableString *)self->_mutablePasscode isEqualToString:v7]& 1) == 0)
  {
    [(NSMutableString *)self->_mutablePasscode setString:v9];
    [(TVRPasscodeField *)self setNeedsDisplay];
  }
}

- (void)clear
{
  [(NSMutableString *)self->_mutablePasscode setString:&stru_287E6AEF8];

  [(TVRPasscodeField *)self setNeedsDisplay];
}

- (void)setPINEntryattributes:(id)entryattributes
{
  entryattributesCopy = entryattributes;
  if (self->_PINEntryattributes != entryattributesCopy)
  {
    v7 = entryattributesCopy;
    if (entryattributesCopy)
    {
      v5 = entryattributesCopy;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277D6C510]) initWithDigitCount:4];
    }

    PINEntryattributes = self->_PINEntryattributes;
    self->_PINEntryattributes = v5;

    [(TVRPasscodeField *)self setNeedsDisplay];
    entryattributesCopy = v7;
  }
}

- (CGSize)_contentSize
{
  [(TVRPasscodeField *)self _contentWidthWithDotSize:22.0 entrySpacing:25.0 groupSpacing:50.0];
  v3 = 22.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)_contentWidthWithDotSize:(double)size entrySpacing:(double)spacing groupSpacing:(double)groupSpacing
{
  totalDigitCount = [(TVRCPINEntryAttributes *)self->_PINEntryattributes totalDigitCount];
  numberOfDigitGroups = [(TVRCPINEntryAttributes *)self->_PINEntryattributes numberOfDigitGroups];
  return (totalDigitCount - numberOfDigitGroups) * spacing + totalDigitCount * size + (numberOfDigitGroups - 1) * groupSpacing;
}

- (void)insertText:(id)text
{
  textCopy = text;
  v4 = [(NSMutableString *)self->_mutablePasscode length];
  v5 = [textCopy length];
  if (-[TVRPasscodeField isEnabled](self, "isEnabled") && [textCopy length] && v5 + v4 <= -[TVRCPINEntryAttributes totalDigitCount](self->_PINEntryattributes, "totalDigitCount"))
  {
    [(NSMutableString *)self->_mutablePasscode appendString:textCopy];
    [(TVRPasscodeField *)self setNeedsDisplay];
    [(TVRPasscodeField *)self sendActionsForControlEvents:0x20000];
  }
}

- (void)deleteBackward
{
  if ([(TVRPasscodeField *)self isEnabled]&& [(NSMutableString *)self->_mutablePasscode length])
  {
    [(NSMutableString *)self->_mutablePasscode deleteCharactersInRange:[(NSMutableString *)self->_mutablePasscode length]- 1, 1];
    [(TVRPasscodeField *)self setNeedsDisplay];

    [(TVRPasscodeField *)self sendActionsForControlEvents:0x20000];
  }
}

@end