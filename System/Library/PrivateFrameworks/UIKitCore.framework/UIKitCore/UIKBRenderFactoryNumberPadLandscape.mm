@interface UIKBRenderFactoryNumberPadLandscape
- (CGPoint)centerColumnLetterOffset;
- (CGPoint)centerColumnNumberOffset;
- (CGPoint)deleteGlyphOffset;
- (CGPoint)dictationGlyphOffset;
- (CGPoint)leftColumnLetterOffset;
- (CGPoint)leftColumnNumberOffset;
- (CGPoint)loneZeroOffset;
- (CGPoint)rightColumnLetterOffset;
- (CGPoint)rightColumnNumberOffset;
- (CGPoint)specialSymbolOffset;
- (UIEdgeInsets)dynamicInsets;
- (double)letterFontSize;
- (double)numberFontSize;
- (void)_customizeSymbolStyle:(id)style secondaryStyle:(id)secondaryStyle forKey:(id)key contents:(id)contents;
@end

@implementation UIKBRenderFactoryNumberPadLandscape

- (double)numberFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 27.0;
  if ([renderConfig usesCompactKeycapsFont])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryNumberPadLandscape;
    [(UIKBRenderFactoryNumberPad *)&v7 numberFontSize];
    v4 = v5;
  }

  return v4;
}

- (double)letterFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 10.0;
  if ([renderConfig usesCompactKeycapsFont])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryNumberPadLandscape;
    [(UIKBRenderFactoryNumberPad *)&v7 letterFontSize];
    v4 = v5;
  }

  return v4;
}

- (CGPoint)deleteGlyphOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v10.receiver = self;
    v10.super_class = UIKBRenderFactoryNumberPadLandscape;
    [(UIKBRenderFactoryNumberPad *)&v10 deleteGlyphOffset];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
    v5 = 1.0;
  }

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)dictationGlyphOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 0.0;
  v5 = 0.0;
  if ([renderConfig usesCompactKeycapsFont])
  {
    v10.receiver = self;
    v10.super_class = UIKBRenderFactoryNumberPadLandscape;
    [(UIKBRenderFactoryNumberPad *)&v10 dictationGlyphOffset];
    v4 = v6;
    v5 = v7;
  }

  v8 = v4;
  v9 = v5;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)leftColumnNumberOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (usesCompactKeycapsFont)
  {
    if (dynamicFactory)
    {
      v8.receiver = self;
      v8.super_class = UIKBRenderFactoryNumberPadLandscape;
      [(UIKBRenderFactoryNumberPad *)&v8 leftColumnNumberOffset];
    }

    else
    {
      v7 = 2.0;
      v6 = 0.0;
    }
  }

  else
  {
    v6 = 2.0;
    v7 = -3.5;
    if (!dynamicFactory)
    {
      v7 = 2.0;
      v6 = 0.0;
    }
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)leftColumnLetterOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (usesCompactKeycapsFont)
  {
    if (dynamicFactory)
    {
      v8.receiver = self;
      v8.super_class = UIKBRenderFactoryNumberPadLandscape;
      [(UIKBRenderFactoryNumberPad *)&v8 leftColumnLetterOffset];
    }

    else
    {
      v7 = 1.0;
      v6 = 16.0;
    }
  }

  else
  {
    v7 = 15.0;
    if (!dynamicFactory)
    {
      v7 = 1.0;
    }

    v6 = 16.0;
    if (dynamicFactory)
    {
      v6 = 0.0;
    }
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)centerColumnNumberOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (!usesCompactKeycapsFont)
  {
    v7 = -3.5;
    if (!dynamicFactory)
    {
      v7 = 2.0;
    }

    goto LABEL_8;
  }

  if (!dynamicFactory)
  {
    v7 = 2.0;
LABEL_8:
    v6 = 0.0;
    goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = UIKBRenderFactoryNumberPadLandscape;
  [(UIKBRenderFactoryNumberPad *)&v8 centerColumnNumberOffset];
LABEL_9:
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)centerColumnLetterOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (usesCompactKeycapsFont)
  {
    if (dynamicFactory)
    {
      v8.receiver = self;
      v8.super_class = UIKBRenderFactoryNumberPadLandscape;
      [(UIKBRenderFactoryNumberPad *)&v8 centerColumnLetterOffset];
    }

    else
    {
      v7 = 1.0;
      v6 = 16.0;
    }
  }

  else
  {
    v7 = 15.0;
    if (!dynamicFactory)
    {
      v7 = 1.0;
    }

    v6 = 16.0;
    if (dynamicFactory)
    {
      v6 = 0.0;
    }
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)rightColumnNumberOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (!usesCompactKeycapsFont)
  {
    v7 = -3.5;
    if (!dynamicFactory)
    {
      v7 = 2.0;
    }

    goto LABEL_8;
  }

  if (!dynamicFactory)
  {
    v7 = 2.0;
LABEL_8:
    v6 = 0.0;
    goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = UIKBRenderFactoryNumberPadLandscape;
  [(UIKBRenderFactoryNumberPad *)&v8 rightColumnNumberOffset];
LABEL_9:
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)rightColumnLetterOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (usesCompactKeycapsFont)
  {
    if (dynamicFactory)
    {
      v8.receiver = self;
      v8.super_class = UIKBRenderFactoryNumberPadLandscape;
      [(UIKBRenderFactoryNumberPad *)&v8 rightColumnLetterOffset];
    }

    else
    {
      v7 = 1.0;
      v6 = 16.0;
    }
  }

  else
  {
    v7 = 15.0;
    if (!dynamicFactory)
    {
      v7 = 1.0;
    }

    v6 = 16.0;
    if (dynamicFactory)
    {
      v6 = 0.0;
    }
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)loneZeroOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = 2.0;
  v6 = 0.0;
  if (usesCompactKeycapsFont && [(UIKBRenderFactory *)self dynamicFactory])
  {
    v11.receiver = self;
    v11.super_class = UIKBRenderFactoryNumberPadLandscape;
    [(UIKBRenderFactoryNumberPad *)&v11 loneZeroOffset];
    v6 = v7;
    v5 = v8;
  }

  v9 = v6;
  v10 = v5;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)specialSymbolOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = 5.0;
  v6 = 0.0;
  if (usesCompactKeycapsFont)
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    v5 = 2.0;
    if (dynamicFactory)
    {
      v10.receiver = self;
      v10.super_class = UIKBRenderFactoryNumberPadLandscape;
      [(UIKBRenderFactoryNumberPad *)&v10 specialSymbolOffset];
      v6 = v8;
    }
  }

  v9 = v6;
  result.y = v5;
  result.x = v9;
  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  v2 = 3.0;
  v3 = 3.0;
  v4 = 3.0;
  v5 = 3.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_customizeSymbolStyle:(id)style secondaryStyle:(id)secondaryStyle forKey:(id)key contents:(id)contents
{
  secondaryStyleCopy = secondaryStyle;
  keyCopy = key;
  v17.receiver = self;
  v17.super_class = UIKBRenderFactoryNumberPadLandscape;
  [(UIKBRenderFactoryNumberPad *)&v17 _customizeSymbolStyle:style secondaryStyle:secondaryStyleCopy forKey:keyCopy contents:contents];
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    if ([(UIKBRenderFactory *)self keyIsRightToLeftSensitive:keyCopy])
    {
      [secondaryStyleCopy textOffset];
      v13 = -v12;
      [secondaryStyleCopy textOffset];
      [secondaryStyleCopy setTextOffset:v13];
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [secondaryStyleCopy setAlignment:v14];
  }

  name = [keyCopy name];
  v16 = [name containsString:@"-Arabic-Digit-"];

  if (v16)
  {
    [secondaryStyleCopy setKerning:-1.0];
  }
}

@end