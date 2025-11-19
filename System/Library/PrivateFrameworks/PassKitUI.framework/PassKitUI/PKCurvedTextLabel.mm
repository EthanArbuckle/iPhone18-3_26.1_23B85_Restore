@interface PKCurvedTextLabel
- (CGPoint)_offsetOfBoundingRect:(CGRect)a3 inRect:(CGRect)a4;
- (CGRect)_glyphsBoundingRect;
- (CGRect)textBoundingRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDictionary)textAttributes;
- (PKCurvedTextLabel)initWithFrame:(CGRect)a3;
- (_NSRange)_drawableCharacterRange:(_NSRange *)a3;
- (__CTLine)_newLineFromDrawableTextStorage;
- (double)_distance;
- (void)_enumerateTransformsForDrawableCharacters:(id)a3;
- (void)_updateMaxSize;
- (void)_updateTextColor;
- (void)drawTextInRect:(CGRect)a3;
- (void)invalidateCachedSize;
- (void)setAttributedText:(id)a3;
- (void)setCenterAngle:(double)a3;
- (void)setCircleRadius:(double)a3;
- (void)setFont:(id)a3;
- (void)setInterior:(BOOL)a3;
- (void)setMaxAngularWidth:(double)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation PKCurvedTextLabel

- (PKCurvedTextLabel)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PKCurvedTextLabel;
  v3 = [(PKCurvedTextLabel *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DB800]);
    textContainer = v3->_textContainer;
    v3->_textContainer = v4;

    [(NSTextContainer *)v3->_textContainer setMaximumNumberOfLines:1];
    [(NSTextContainer *)v3->_textContainer setLineFragmentPadding:0.0];
    [(NSTextContainer *)v3->_textContainer setLineBreakMode:4];
    v6 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
    layoutManager = v3->_layoutManager;
    v3->_layoutManager = v6;

    [(NSLayoutManager *)v3->_layoutManager addTextContainer:v3->_textContainer];
    v8 = objc_alloc_init(MEMORY[0x1E69DB850]);
    textStorage = v3->_textStorage;
    v3->_textStorage = v8;

    [(NSTextStorage *)v3->_textStorage addLayoutManager:v3->_layoutManager];
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = v10;
  }

  return v3;
}

- (NSDictionary)textAttributes
{
  v2 = [(PKCurvedTextLabel *)self attributedText];
  v3 = [v2 length];
  if (v3)
  {
    v4 = [v2 attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, v3}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setInterior:(BOOL)a3
{
  if (self->_interior != a3)
  {
    self->_interior = a3;
    [(PKCurvedTextLabel *)self invalidateCachedSize];
    [(PKCurvedTextLabel *)self setNeedsLayout];

    [(PKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setCircleRadius:(double)a3
{
  if (self->_circleRadius != a3)
  {
    self->_circleRadius = a3;
    [(PKCurvedTextLabel *)self invalidateCachedSize];
    [(PKCurvedTextLabel *)self _updateMaxSize];
    [(PKCurvedTextLabel *)self setNeedsLayout];

    [(PKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setCenterAngle:(double)a3
{
  if (self->_centerAngle != a3)
  {
    self->_centerAngle = a3;
    [(PKCurvedTextLabel *)self invalidateCachedSize];
    [(PKCurvedTextLabel *)self setNeedsLayout];

    [(PKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setMaxAngularWidth:(double)a3
{
  v5 = fmod(a3, 6.28318531);
  if (a3 <= 6.28318531)
  {
    v5 = a3;
  }

  if (self->_maxAngularWidth != v5)
  {
    self->_maxAngularWidth = v5;

    [(PKCurvedTextLabel *)self _updateMaxSize];
  }
}

- (void)_updateMaxSize
{
  maxAngularWidth = self->_maxAngularWidth;
  if (maxAngularWidth == 0.0 || (circleRadius = self->_circleRadius, circleRadius == 0.0))
  {
    v5 = 1.79769313e308;
  }

  else
  {
    if (maxAngularWidth > 3.14159265)
    {
      maxAngularWidth = 6.28318531 - maxAngularWidth;
    }

    v5 = maxAngularWidth * circleRadius;
  }

  [(NSTextContainer *)self->_textContainer size];
  if (v6 != v5 || self->_textWidth != v5)
  {
    [(NSTextContainer *)self->_textContainer setSize:v5, 1.79769313e308];
    self->_textWidth = v5;
    [(PKCurvedTextLabel *)self invalidateCachedSize];
    [(PKCurvedTextLabel *)self setNeedsLayout];

    [(PKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
    [(PKCurvedTextLabel *)self _updateTextColor];
  }
}

- (void)_updateTextColor
{
  v3 = [(NSTextStorage *)self->_textStorage length];
  if (v3)
  {
    [(NSTextStorage *)self->_textStorage addAttribute:*MEMORY[0x1E69DB650] value:self->_textColor range:0, v3];

    [(PKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToAttributedString:self->_textStorage] & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = [v4 length];
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v4 string];
      v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v10 = [v8 rangeOfCharacterFromSet:v9 options:0 range:{v6, v5}];
      v12 = v11;

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v7)
      {

        v7 = 0;
      }

      else
      {
        v7 = [v4 mutableCopy];
      }

      v13 = [v7 mutableString];
      [v13 replaceCharactersInRange:v10 withString:{v12, @" "}];

      v6 = v10 + 1;
      v5 = [v4 length] - v6;
    }

    if (v7)
    {
      v14 = v7;
      v15 = v14;
    }

    else
    {
LABEL_11:
      v16 = [v4 mutableCopy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F3BD7330];
      }

      v15 = v18;

      v14 = 0;
    }

    v19 = *MEMORY[0x1E69DB688];
    if (qword_1EBD68340 != -1)
    {
      dispatch_once(&qword_1EBD68340, &__block_literal_global_63);
    }

    v20 = _MergedGlobals_1_5;
    [v15 addAttribute:v19 value:v20 range:{0, objc_msgSend(v15, "length")}];

    [(NSTextStorage *)self->_textStorage setAttributedString:v15];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    textStorage = self->_textStorage;
    v22 = [(NSTextStorage *)textStorage length];
    v23 = *MEMORY[0x1E69DB648];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__PKCurvedTextLabel_setAttributedText___block_invoke;
    v24[3] = &unk_1E8015B40;
    v24[4] = &v25;
    [(NSTextStorage *)textStorage enumerateAttribute:v23 inRange:0 options:v22 usingBlock:0, v24];
    self->_hasMonospacedNumbers = *(v26 + 24);
    [(PKCurvedTextLabel *)self _updateTextColor];
    [(PKCurvedTextLabel *)self invalidateCachedSize];
    [(PKCurvedTextLabel *)self setNeedsDisplay];
    [(PKCurvedTextLabel *)self setNeedsLayout];
    _Block_object_dispose(&v25, 8);
  }
}

void __39__PKCurvedTextLabel_setAttributedText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [a2 fontDescriptor];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DB8B0]];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = *MEMORY[0x1E69DB908];
    v12 = *MEMORY[0x1E69DB900];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:v11];
        if ([v15 isEqualToNumber:&unk_1F3CC7040])
        {
          v16 = [v14 objectForKeyedSubscript:v12];
          v17 = [v16 isEqualToNumber:&unk_1F3CC7058];

          if (v17)
          {
            *(*(*(a1 + 32) + 8) + 24) = 1;
            *a5 = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

LABEL_12:
}

- (void)setText:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = a3;
    v6 = [v4 alloc];
    font = self->_font;
    v10 = *MEMORY[0x1E69DB648];
    v11[0] = font;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v6 initWithString:v5 attributes:v8];
  }

  else
  {
    v9 = 0;
  }

  [(PKCurvedTextLabel *)self setAttributedText:v9];
}

- (void)setFont:(id)a3
{
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    v5 = [(PKCurvedTextLabel *)self text];
    [(PKCurvedTextLabel *)self setText:v5];

    [(PKCurvedTextLabel *)self invalidateCachedSize];
  }
}

- (void)invalidateCachedSize
{
  self->_cachedSizeIsValid = 0;
  self->_cachedSize = *MEMORY[0x1E695F060];
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  self->_cachedBounds.origin = *MEMORY[0x1E695F058];
  self->_cachedBounds.size = v3;
  self->_cachedGlyphsBoundingRect.origin = v2;
  self->_cachedGlyphsBoundingRect.size = v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  p_cachedSize = &self->_cachedSize;
  if (self->_cachedSizeIsValid)
  {
    width = p_cachedSize->width;
    height = self->_cachedSize.height;
  }

  else
  {
    [(PKCurvedTextLabel *)self _glyphsBoundingRect:a3.width];
    width = v7;
    height = v8;
    p_cachedSize->width = v7;
    p_cachedSize->height = v8;
    self->_cachedSizeIsValid = 1;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  [(PKCurvedTextLabel *)self _glyphsBoundingRect];
  [PKCurvedTextLabel _offsetOfBoundingRect:"_offsetOfBoundingRect:inRect:" inRect:?];
  v5 = v4;
  v7 = v6;
  v8 = [(PKCurvedTextLabel *)self _newLineFromDrawableTextStorage];
  ImageBounds = CTLineGetImageBounds(v8, 0);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  CFRelease(v8);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3010000000;
  v14[3] = &unk_1BE347799;
  v15 = x;
  v16 = y;
  if (self->_hasMonospacedNumbers)
  {
    v15 = 0.0;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  CGAffineTransformMakeTranslation(&transform, v5, v7);
  CGContextConcatCTM(CurrentContext, &transform);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__PKCurvedTextLabel_drawTextInRect___block_invoke;
  v12[3] = &unk_1E8015B68;
  v12[4] = self;
  v12[5] = v14;
  v12[6] = CurrentContext;
  [(PKCurvedTextLabel *)self _enumerateTransformsForDrawableCharacters:v12];
  _Block_object_dispose(v14, 8);
}

void __36__PKCurvedTextLabel_drawTextInRect___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6)
{
  CGContextSaveGState(*(a1 + 48));
  v12 = *(a1 + 48);
  v13 = a4[1];
  *&v14.a = *a4;
  *&v14.c = v13;
  *&v14.tx = a4[2];
  CGContextConcatCTM(v12, &v14);
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 816) drawGlyphsForGlyphRange:a2 atPoint:{a3, -a5 - *(*(*(a1 + 40) + 8) + 32), -a6}];
  }

  CGContextRestoreGState(*(a1 + 48));
}

- (CGRect)textBoundingRect
{
  [(PKCurvedTextLabel *)self _glyphsBoundingRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKCurvedTextLabel *)self bounds];
  [(PKCurvedTextLabel *)self _offsetOfBoundingRect:v4 inRect:v6, v8, v10, v11, v12, v13, v14];
  v16 = v4 + v15;
  v18 = v6 + v17;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (_NSRange)_drawableCharacterRange:(_NSRange *)a3
{
  v5 = [(NSLayoutManager *)self->_layoutManager glyphRangeForTextContainer:self->_textContainer];
  v7 = v6;
  v8 = [(NSLayoutManager *)self->_layoutManager truncatedGlyphRangeInLineFragmentForGlyphAtIndex:v5];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v8 + 1;
    if (a3)
    {
      a3->location = [(NSLayoutManager *)self->_layoutManager characterRangeForGlyphRange:v8 actualGlyphRange:v9, 0];
      a3->length = v10;
    }
  }

  layoutManager = self->_layoutManager;

  v12 = [(NSLayoutManager *)layoutManager characterRangeForGlyphRange:v5 actualGlyphRange:v7, 0];
  result.length = v13;
  result.location = v12;
  return result;
}

- (__CTLine)_newLineFromDrawableTextStorage
{
  v13 = xmmword_1BE114F90;
  v4 = [(PKCurvedTextLabel *)self _drawableCharacterRange:&v13];
  textStorage = self->_textStorage;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
    v7 = [(NSTextStorage *)textStorage length];
    v8 = self->_textStorage;
    if (v4 || v6 != v7)
    {
      v9 = [(NSTextStorage *)v8 mutableCopy];
      [(NSTextStorage *)v9 deleteCharactersInRange:v6, [(NSTextStorage *)self->_textStorage length]- v6];
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = [(NSTextStorage *)textStorage mutableCopy];
    v10 = [(NSTextStorage *)self->_textStorage length];
    *(&v13 + 1) = v10 - v13;
    [NSTextStorage replaceCharactersInRange:v9 withString:"replaceCharactersInRange:withString:"];
  }

  v11 = CTLineCreateWithAttributedString(v9);

  return v11;
}

- (CGPoint)_offsetOfBoundingRect:(CGRect)a3 inRect:(CGRect)a4
{
  rect = a4.size.height;
  width = a3.size.width;
  v4 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v11 = CGRectGetWidth(a4);
  v19.origin.x = v10;
  v19.origin.y = v9;
  v19.size.width = v8;
  v19.size.height = height;
  v12 = v11 - CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = v4;
  v20.size.height = rect;
  v13 = CGRectGetHeight(v20);
  v21.origin.x = v10;
  v21.origin.y = v9;
  v21.size.width = width;
  v21.size.height = height;
  v14 = v13 - CGRectGetMaxY(v21);
  v15 = v12;
  result.y = v14;
  result.x = v15;
  return result;
}

- (CGRect)_glyphsBoundingRect
{
  p_cachedBounds = &self->_cachedBounds;
  [(PKCurvedTextLabel *)self bounds];
  v32.origin.x = v4;
  v32.origin.y = v5;
  v32.size.width = v6;
  v32.size.height = v7;
  if (CGRectEqualToRect(*p_cachedBounds, v32) && !CGRectIsEmpty(self->_cachedGlyphsBoundingRect))
  {
    x = self->_cachedGlyphsBoundingRect.origin.x;
    y = self->_cachedGlyphsBoundingRect.origin.y;
    width = self->_cachedGlyphsBoundingRect.size.width;
    height = self->_cachedGlyphsBoundingRect.size.height;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x4010000000;
    v27 = &unk_1BE347799;
    v8 = *(MEMORY[0x1E695F050] + 16);
    v28 = *MEMORY[0x1E695F050];
    v29 = v8;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__PKCurvedTextLabel__glyphsBoundingRect__block_invoke;
    v23[3] = &unk_1E8015B90;
    v23[4] = &v24;
    [(PKCurvedTextLabel *)self _enumerateTransformsForDrawableCharacters:v23];
    v30 = CGRectInset(v25[1], 0.0, -1.0);
    v25[1] = v30;
    [(PKCurvedTextLabel *)self bounds];
    p_cachedBounds->origin.x = v9;
    p_cachedBounds->origin.y = v10;
    p_cachedBounds->size.width = v11;
    p_cachedBounds->size.height = v12;
    p_x = &v25->origin.x;
    size = v25[1].size;
    self->_cachedGlyphsBoundingRect.origin = v25[1].origin;
    self->_cachedGlyphsBoundingRect.size = size;
    x = p_x[4];
    y = p_x[5];
    width = p_x[6];
    height = p_x[7];
    _Block_object_dispose(&v24, 8);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

void __40__PKCurvedTextLabel__glyphsBoundingRect__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, _OWORD *a10)
{
  v10 = a5;
  v13 = a10[1];
  *&v15.a = *a10;
  *&v15.c = v13;
  *&v15.tx = a10[2];
  *&v13 = a7;
  v16 = CGRectApplyAffineTransform(*(&v10 - 1), &v15);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(v16, *(*(*(a1 + 32) + 8) + 32));
}

- (double)_distance
{
  result = self->_circleRadius;
  if (!self->_interior)
  {
    return -result;
  }

  return result;
}

- (void)_enumerateTransformsForDrawableCharacters:(id)a3
{
  v87 = a3;
  [(PKCurvedTextLabel *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PKCurvedTextLabel *)self _distance];
  v13 = v12;
  v14 = [(PKCurvedTextLabel *)self _newLineFromDrawableTextStorage];
  ImageBounds = CTLineGetImageBounds(v14, 0);
  width = ImageBounds.size.width;
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  height = ImageBounds.size.height;
  MinX = 0.0;
  TypographicBounds = 0.0;
  if (self->_hasMonospacedNumbers)
  {
    TypographicBounds = CTLineGetTypographicBounds(v14, 0, 0, 0);
  }

  CFRelease(v14);
  v75 = y;
  if (self->_hasMonospacedNumbers)
  {
    v18 = TypographicBounds;
  }

  else
  {
    v107.size.width = width;
    v107.origin.x = x;
    v107.origin.y = y;
    v107.size.height = height;
    v19 = CGRectGetWidth(v107);
    v20 = y;
    v18 = v19;
    if (!self->_hasMonospacedNumbers)
    {
      v22 = width;
      v21 = x;
      v23 = height;
      MinX = CGRectGetMinX(*(&v20 - 1));
    }
  }

  v74 = height;
  v105[0] = xmmword_1BE114F90;
  v24 = [(PKCurvedTextLabel *)self _drawableCharacterRange:v105];
  v26 = v25;
  if (self->_hasMonospacedNumbers)
  {
    v27 = [(NSTextStorage *)self->_textStorage attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
    v108.size.width = width;
    v108.origin.x = x;
    v108.size.height = height;
    v108.origin.y = v75;
    rect = CGRectGetMinX(v108);
    [v27 xHeight];
    *&v84 = v13;
    v29 = v28;
    [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:0];
    v79 = v11;
    v81 = v9;
    v31 = v30;
    v109.origin.y = 0.0;
    v109.origin.x = v32 + 0.0;
    v33 = v109.origin.x;
    v109.size.width = rect;
    v109.size.height = v29;
    v110.origin.y = v31 - CGRectGetMaxY(v109);
    v71 = v110.origin.y;
    v110.origin.x = v33;
    v110.size.width = rect;
    v110.size.height = v29;
    memset(&v104, 0, sizeof(v104));
    MidX = CGRectGetMidX(v110);
    v34 = v31;
    v11 = v79;
    _TransformForLayoutLocation(&v104, v35, v36, v37, v38, v39, v40, v41, MidX, v34, v18, *&v84, self->_centerAngle, v5, v7, v81, v79);
    v111.origin.x = v33;
    v9 = v81;
    v111.origin.y = v71;
    v111.size.height = v29;
    v111.size.width = rect;
    v13 = *&v84;
    v112 = CGRectOffset(v111, -MidX, -v34);
    v42 = v87[2];
    v103 = v104;
    v42(v87, 0x7FFFFFFFFFFFFFFFLL, 0, &v103, MidX, v34, v112.origin.x, v112.origin.y, v112.size.width, v112.size.height);
  }

  v85 = v24 + v26;
  while (v24 < v85)
  {
    *&v104.a = xmmword_1BE114F90;
    v44 = [(NSLayoutManager *)self->_layoutManager glyphRangeForCharacterRange:v24 actualCharacterRange:1, &v104];
    v45 = *&v105[0];
    a = v104.a;
    if (*&v105[0] == *&v104.a)
    {
      v47 = 1;
    }

    else
    {
      v47 = v43;
    }

    v48 = objc_opt_new();
    v49 = v47;
    v50 = v44;
    if (v44 < v47 + v44)
    {
      do
      {
        if (([(NSLayoutManager *)self->_layoutManager propertyForGlyphAtIndex:v50]& 1) == 0)
        {
          [v48 addIndex:v50];
        }

        ++v50;
        --v49;
      }

      while (v49);
    }

    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __63__PKCurvedTextLabel__enumerateTransformsForDrawableCharacters___block_invoke;
    v88[3] = &unk_1E8015BB8;
    v88[4] = self;
    v90 = 0;
    v91 = MinX;
    v92 = *&v104.a;
    v93 = v47;
    v102 = v45 == *&a;
    v94 = v18;
    v95 = v13;
    v96 = v5;
    v97 = v7;
    v98 = v9;
    v99 = v11;
    if (v45 == *&a)
    {
      p_b = v105 + 1;
    }

    else
    {
      p_b = &v104.b;
    }

    v89 = v87;
    v100 = v44;
    v101 = v47;
    [v48 enumerateRangesUsingBlock:v88];
    v52 = *p_b;
    if (*p_b <= 1uLL)
    {
      v52 = 1;
    }

    v24 += v52;
  }

  if (self->_hasMonospacedNumbers)
  {
    v53 = v85 - 1;
    v54 = [(NSTextStorage *)self->_textStorage attribute:*MEMORY[0x1E69DB648] atIndex:v85 - 1 effectiveRange:0];
    v113.origin.x = x;
    v113.origin.y = v75;
    v86 = v5;
    v113.size.width = width;
    v83 = v7;
    v113.size.height = v74;
    v82 = TypographicBounds - CGRectGetMaxX(v113);
    v114.origin.x = x;
    v114.origin.y = v75;
    v114.size.width = width;
    v114.size.height = v74;
    MaxX = CGRectGetMaxX(v114);
    [v54 xHeight];
    v57 = v56;
    [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:[(NSLayoutManager *)self->_layoutManager glyphIndexForCharacterAtIndex:v53]];
    v59 = v58;
    v115.origin.y = 0.0;
    v115.origin.x = MaxX + 0.0;
    v115.size.width = v82;
    v115.size.height = v57;
    v116.origin.y = v59 - CGRectGetMaxY(v115);
    v80 = v116.origin.y;
    v116.origin.x = MaxX + 0.0;
    v116.size.width = v82;
    v116.size.height = v57;
    v60 = CGRectGetMidX(v116);
    memset(&v104, 0, sizeof(v104));
    v70 = v9;
    v61 = v60;
    _TransformForLayoutLocation(&v104, v62, v63, v64, v65, v66, v67, v68, v60, v59, v18, v13, self->_centerAngle, v86, v83, v70, v11);
    v117.origin.x = MaxX + 0.0;
    v117.origin.y = v80;
    v117.size.width = v82;
    v117.size.height = v57;
    v118 = CGRectOffset(v117, -v61, -v59);
    v69 = v87[2];
    v103 = v104;
    v69(v87, 0x7FFFFFFFFFFFFFFFLL, 0, &v103, v61, v59, v118.origin.x, v118.origin.y, v118.size.width, v118.size.height);
  }
}

void __63__PKCurvedTextLabel__enumerateTransformsForDrawableCharacters___block_invoke(uint64_t a1, uint64_t a2, CFIndex a3)
{
  v39 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 816) locationForGlyphAtIndex:a2];
  v7 = v6;
  v9 = v8;
  v10 = a2 + 1;
  if (a2 + 1 < (a2 + a3))
  {
    v11 = a3 - 1;
    do
    {
      [*(*(a1 + 32) + 816) locationForGlyphAtIndex:v10];
      if (v12 < v7)
      {
        v9 = v13;
        v7 = v12;
      }

      ++v10;
      --v11;
    }

    while (v11);
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = [*(*(a1 + 32) + 808) attribute:*MEMORY[0x1E69DB648] atIndex:*(a1 + 64) effectiveRange:0];
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*(*(a1 + 32) + 816) getGlyphsInRange:a2 glyphs:a3 properties:v20 characterIndexes:0 bidiLevels:{0, 0, v18}];
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v16, kCTFontOrientationDefault, v20, 0, a3);
  x = BoundingRectsForGlyphs.origin.x;
  y = BoundingRectsForGlyphs.origin.y;
  width = BoundingRectsForGlyphs.size.width;
  if (*(a1 + 152))
  {
    [(__CTFont *)v16 xHeight];
    height = v24;
  }

  else
  {
    height = BoundingRectsForGlyphs.size.height;
  }

  v26 = v7 + v14 - v15 + x;
  v41.origin.x = v26;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v27 = v9 - CGRectGetMaxY(v41);
  v42.origin.x = v26;
  v42.origin.y = v27;
  v42.size.width = width;
  v42.size.height = height;
  MidX = CGRectGetMidX(v42);
  memset(&v38, 0, sizeof(v38));
  _TransformForLayoutLocation(&v38, v29, v30, v31, v32, v33, v34, v35, MidX, v9, *(a1 + 88), *(a1 + 96), *(*(a1 + 32) + 960), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));
  v43.origin.x = v26;
  v43.origin.y = v27;
  v43.size.width = width;
  v43.size.height = height;
  v44 = CGRectOffset(v43, -MidX, -v9);
  v36 = *(*(a1 + 40) + 16);
  v37 = v38;
  v36(MidX, v9, v44.origin.x, v44.origin.y, v44.size.width, v44.size.height);
}

@end