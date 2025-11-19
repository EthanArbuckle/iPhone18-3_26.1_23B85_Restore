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
- (void)_customizeSymbolStyle:(id)a3 secondaryStyle:(id)a4 forKey:(id)a5 contents:(id)a6;
@end

@implementation UIKBRenderFactoryNumberPadLandscape

- (double)numberFontSize
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 27.0;
  if ([v3 usesCompactKeycapsFont])
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 10.0;
  if ([v3 usesCompactKeycapsFont])
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  if ([v3 usesCompactKeycapsFont])
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 0.0;
  v5 = 0.0;
  if ([v3 usesCompactKeycapsFont])
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  if (v4)
  {
    if (v5)
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
    if (!v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  if (v4)
  {
    if (v5)
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
    if (!v5)
    {
      v7 = 1.0;
    }

    v6 = 16.0;
    if (v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  if (!v4)
  {
    v7 = -3.5;
    if (!v5)
    {
      v7 = 2.0;
    }

    goto LABEL_8;
  }

  if (!v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  if (v4)
  {
    if (v5)
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
    if (!v5)
    {
      v7 = 1.0;
    }

    v6 = 16.0;
    if (v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  if (!v4)
  {
    v7 = -3.5;
    if (!v5)
    {
      v7 = 2.0;
    }

    goto LABEL_8;
  }

  if (!v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  if (v4)
  {
    if (v5)
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
    if (!v5)
    {
      v7 = 1.0;
    }

    v6 = 16.0;
    if (v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = 2.0;
  v6 = 0.0;
  if (v4 && [(UIKBRenderFactory *)self dynamicFactory])
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = 5.0;
  v6 = 0.0;
  if (v4)
  {
    v7 = [(UIKBRenderFactory *)self dynamicFactory];
    v5 = 2.0;
    if (v7)
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

- (void)_customizeSymbolStyle:(id)a3 secondaryStyle:(id)a4 forKey:(id)a5 contents:(id)a6
{
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = UIKBRenderFactoryNumberPadLandscape;
  [(UIKBRenderFactoryNumberPad *)&v17 _customizeSymbolStyle:a3 secondaryStyle:v10 forKey:v11 contents:a6];
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    if ([(UIKBRenderFactory *)self keyIsRightToLeftSensitive:v11])
    {
      [v10 textOffset];
      v13 = -v12;
      [v10 textOffset];
      [v10 setTextOffset:v13];
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [v10 setAlignment:v14];
  }

  v15 = [v11 name];
  v16 = [v15 containsString:@"-Arabic-Digit-"];

  if (v16)
  {
    [v10 setKerning:-1.0];
  }
}

@end