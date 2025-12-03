@interface TSWPEquationLayoutContext
- (BOOL)isEqual:(id)equal;
- (TSWPEquationLayoutContext)initWithTextAttributes:(__CFDictionary *)attributes columnWidth:(double)width;
- (void)dealloc;
@end

@implementation TSWPEquationLayoutContext

- (TSWPEquationLayoutContext)initWithTextAttributes:(__CFDictionary *)attributes columnWidth:(double)width
{
  v10.receiver = self;
  v10.super_class = TSWPEquationLayoutContext;
  v6 = [(TSWPEquationLayoutContext *)&v10 init];
  if (v6)
  {
    Value = CFDictionaryGetValue(attributes, *MEMORY[0x277CC4838]);
    if (Value)
    {
      v8 = Value;
      v6->_fontSize = CTFontGetSize(Value);
      v6->_fontName = CTFontCopyPostScriptName(v8);
    }

    v6->_columnWidth = width;
  }

  return v6;
}

- (void)dealloc
{
  fontName = self->_fontName;
  if (fontName)
  {
    CFRelease(fontName);
  }

  v4.receiver = self;
  v4.super_class = TSWPEquationLayoutContext;
  [(TSWPEquationLayoutContext *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    [v4 fontSize];
    if (v6 == self->_fontSize)
    {
      [v5 columnWidth];
      LOBYTE(v4) = v7 == self->_columnWidth;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

@end