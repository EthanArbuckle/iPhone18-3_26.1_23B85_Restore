@interface __NSMarkedTextUnderlineRenderer
- (uint64_t)processMarkedTextUnderline:(void *)underline textRange:(uint64_t)range adjustmentCallback:;
- (uint64_t)renderUnderline:(uint64_t)underline;
- (void)_renderUnderlineInTextRange:(id)range alphaValue:(double)value adjustmentCallback:(id)callback;
- (void)dealloc;
@end

@implementation __NSMarkedTextUnderlineRenderer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = __NSMarkedTextUnderlineRenderer;
  [(__NSMarkedTextUnderlineRenderer *)&v3 dealloc];
}

- (void)_renderUnderlineInTextRange:(id)range alphaValue:(double)value adjustmentCallback:(id)callback
{
  cGContext = [(NSTextGraphicsContext *)self->_graphicsContext CGContext];
  isFlipped = [(NSTextGraphicsContext *)self->_graphicsContext isFlipped];
  if (cGContext)
  {
    textLineFragment = self->_textLineFragment;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93____NSMarkedTextUnderlineRenderer__renderUnderlineInTextRange_alphaValue_adjustmentCallback___block_invoke;
    v12[3] = &unk_1E7267990;
    v12[4] = self;
    v12[5] = callback;
    v13 = isFlipped;
    v12[6] = cGContext;
    *&v12[7] = value;
    [(NSTextLineFragment *)textLineFragment enumerateTextSegmentBoundsInTextRange:range dataSourceLocationsOnly:1 usingBlock:v12];
  }
}

- (uint64_t)processMarkedTextUnderline:(void *)underline textRange:(uint64_t)range adjustmentCallback:
{
  if (!self)
  {
    return 0;
  }

  v8 = [a2 objectForKeyedSubscript:@"NSUnderline"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v10 = [a2 objectForKeyedSubscript:@"NSMarkedTextSelectionAttributeName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = (unsignedIntegerValue & 3) != 1;
  }

  if (!*(self + 48))
  {
    goto LABEL_16;
  }

  if (unsignedIntegerValue && ([objc_msgSend(*(self + 64) "location")] & 1) == 0 && (objc_msgSend(objc_msgSend(*(self + 64), "endLocation"), "isEqual:", objc_msgSend(underline, "location")) & 1) == 0 && !objc_msgSend(*(self + 64), "intersectsWithTextRange:", underline))
  {
    v16 = [(__NSMarkedTextUnderlineRenderer *)self renderUnderline:range];
    goto LABEL_19;
  }

  v12 = [*(self + 64) textRangeByFormingUnionWithTextRange:underline];

  *(self + 64) = v12;
  if (bOOLValue)
  {
    v13 = *(self + 72);
    if (v13)
    {
      underlineCopy = [v13 textRangeByFormingUnionWithTextRange:underline];
      v15 = *(self + 72);
    }

    else
    {
      v15 = 0;
      underlineCopy = underline;
    }

    v17 = underlineCopy;
    v16 = 0;
    *(self + 72) = v17;
  }

  else
  {
LABEL_16:
    v16 = 0;
  }

LABEL_19:
  if (!*(self + 48) && unsignedIntegerValue)
  {
    blackColor = [a2 objectForKeyedSubscript:@"NSUnderlineColor"];
    if (!blackColor)
    {
      blackColor = [a2 objectForKeyedSubscript:@"NSColor"];
      if (!blackColor)
      {
        applicationFrameworkContext = [*(self + 8) applicationFrameworkContext];
        if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
        {
          v20 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", applicationFrameworkContext];
        }

        else
        {
          v20 = +[NSTextGraphicsContextProvider __defaultColorClass];
        }

        blackColor = [(objc_class *)v20 blackColor];
      }
    }

    *(self + 48) = unsignedIntegerValue;
    *(self + 56) = blackColor;
    underlineCopy2 = underline;
    *(self + 64) = underlineCopy2;
    if (bOOLValue)
    {
      *(self + 72) = underlineCopy2;
    }
  }

  return v16;
}

- (uint64_t)renderUnderline:(uint64_t)underline
{
  if (!underline || !*(underline + 48))
  {
    return 0;
  }

  v4 = [*(underline + 72) isEqual:*(underline + 64)];
  if ((v4 & 1) == 0)
  {
    v5 = *(underline + 64);
    isNotEmpty = [*(underline + 72) isNotEmpty];
    v7 = 0.35;
    if (!isNotEmpty)
    {
      v7 = 1.0;
    }

    [underline _renderUnderlineInTextRange:v5 alphaValue:a2 adjustmentCallback:v7];
  }

  if ([*(underline + 72) isNotEmpty])
  {
    [underline _renderUnderlineInTextRange:*(underline + 72) alphaValue:a2 adjustmentCallback:1.0];
    v8 = 1;
  }

  else
  {
    v8 = v4 ^ 1u;
  }

  *(underline + 48) = 0;

  *(underline + 56) = 0;
  *(underline + 64) = 0;
  *(underline + 72) = 0;
  return v8;
}

@end