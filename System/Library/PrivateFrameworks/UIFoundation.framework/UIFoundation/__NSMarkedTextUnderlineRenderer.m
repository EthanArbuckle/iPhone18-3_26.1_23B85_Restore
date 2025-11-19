@interface __NSMarkedTextUnderlineRenderer
- (uint64_t)processMarkedTextUnderline:(void *)a3 textRange:(uint64_t)a4 adjustmentCallback:;
- (uint64_t)renderUnderline:(uint64_t)a1;
- (void)_renderUnderlineInTextRange:(id)a3 alphaValue:(double)a4 adjustmentCallback:(id)a5;
- (void)dealloc;
@end

@implementation __NSMarkedTextUnderlineRenderer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = __NSMarkedTextUnderlineRenderer;
  [(__NSMarkedTextUnderlineRenderer *)&v3 dealloc];
}

- (void)_renderUnderlineInTextRange:(id)a3 alphaValue:(double)a4 adjustmentCallback:(id)a5
{
  v9 = [(NSTextGraphicsContext *)self->_graphicsContext CGContext];
  v10 = [(NSTextGraphicsContext *)self->_graphicsContext isFlipped];
  if (v9)
  {
    textLineFragment = self->_textLineFragment;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93____NSMarkedTextUnderlineRenderer__renderUnderlineInTextRange_alphaValue_adjustmentCallback___block_invoke;
    v12[3] = &unk_1E7267990;
    v12[4] = self;
    v12[5] = a5;
    v13 = v10;
    v12[6] = v9;
    *&v12[7] = a4;
    [(NSTextLineFragment *)textLineFragment enumerateTextSegmentBoundsInTextRange:a3 dataSourceLocationsOnly:1 usingBlock:v12];
  }
}

- (uint64_t)processMarkedTextUnderline:(void *)a3 textRange:(uint64_t)a4 adjustmentCallback:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [a2 objectForKeyedSubscript:@"NSUnderline"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = [a2 objectForKeyedSubscript:@"NSMarkedTextSelectionAttributeName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = (v9 & 3) != 1;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_16;
  }

  if (v9 && ([objc_msgSend(*(a1 + 64) "location")] & 1) == 0 && (objc_msgSend(objc_msgSend(*(a1 + 64), "endLocation"), "isEqual:", objc_msgSend(a3, "location")) & 1) == 0 && !objc_msgSend(*(a1 + 64), "intersectsWithTextRange:", a3))
  {
    v16 = [(__NSMarkedTextUnderlineRenderer *)a1 renderUnderline:a4];
    goto LABEL_19;
  }

  v12 = [*(a1 + 64) textRangeByFormingUnionWithTextRange:a3];

  *(a1 + 64) = v12;
  if (v11)
  {
    v13 = *(a1 + 72);
    if (v13)
    {
      v14 = [v13 textRangeByFormingUnionWithTextRange:a3];
      v15 = *(a1 + 72);
    }

    else
    {
      v15 = 0;
      v14 = a3;
    }

    v17 = v14;
    v16 = 0;
    *(a1 + 72) = v17;
  }

  else
  {
LABEL_16:
    v16 = 0;
  }

LABEL_19:
  if (!*(a1 + 48) && v9)
  {
    v18 = [a2 objectForKeyedSubscript:@"NSUnderlineColor"];
    if (!v18)
    {
      v18 = [a2 objectForKeyedSubscript:@"NSColor"];
      if (!v18)
      {
        v19 = [*(a1 + 8) applicationFrameworkContext];
        if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
        {
          v20 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", v19];
        }

        else
        {
          v20 = +[NSTextGraphicsContextProvider __defaultColorClass];
        }

        v18 = [(objc_class *)v20 blackColor];
      }
    }

    *(a1 + 48) = v9;
    *(a1 + 56) = v18;
    v21 = a3;
    *(a1 + 64) = v21;
    if (v11)
    {
      *(a1 + 72) = v21;
    }
  }

  return v16;
}

- (uint64_t)renderUnderline:(uint64_t)a1
{
  if (!a1 || !*(a1 + 48))
  {
    return 0;
  }

  v4 = [*(a1 + 72) isEqual:*(a1 + 64)];
  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 64);
    v6 = [*(a1 + 72) isNotEmpty];
    v7 = 0.35;
    if (!v6)
    {
      v7 = 1.0;
    }

    [a1 _renderUnderlineInTextRange:v5 alphaValue:a2 adjustmentCallback:v7];
  }

  if ([*(a1 + 72) isNotEmpty])
  {
    [a1 _renderUnderlineInTextRange:*(a1 + 72) alphaValue:a2 adjustmentCallback:1.0];
    v8 = 1;
  }

  else
  {
    v8 = v4 ^ 1u;
  }

  *(a1 + 48) = 0;

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return v8;
}

@end