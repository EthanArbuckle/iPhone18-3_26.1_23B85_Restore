@interface PXCTLine
- (CGAffineTransform)transform;
- (CGPath)createPath;
- (CGPoint)origin;
- (CGPoint)textPosition;
- (CGRect)contentBounds;
- (CGRect)imageBounds;
- (PXCTFrame)ctFrame;
- (PXCTLine)init;
- (PXCTLine)initWithLine:(__CTLine *)a3 origin:(CGPoint)a4 frame:(id)a5 referenceAttributedString:(id)a6 truncated:(BOOL)a7;
- (_NSRange)stringRange;
- (double)width;
- (id)description;
- (void)_transformBy:(CGAffineTransform *)a3;
- (void)dealloc;
- (void)draw;
- (void)prepare;
@end

@implementation PXCTLine

- (PXCTFrame)ctFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_ctFrame);

  return WeakRetained;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[3].tx;
  *&retstr->a = *&self[3].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].a;
  return self;
}

- (_NSRange)stringRange
{
  length = self->_stringRange.length;
  location = self->_stringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PXCTLine *)self string];
  v6 = [v3 stringWithFormat:@"<%@ %p string='%@' CTLine=%@>", v4, self, v5, -[PXCTLine line](self, "line")];

  return v6;
}

- (void)_transformBy:(CGAffineTransform *)a3
{
  v4 = *&self->_transform.c;
  *&t1.a = *&self->_transform.a;
  *&t1.c = v4;
  *&t1.tx = *&self->_transform.tx;
  v5 = *&a3->c;
  *&v7.a = *&a3->a;
  *&v7.c = v5;
  *&v7.tx = *&a3->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  v6 = *&v9.c;
  *&self->_transform.a = *&v9.a;
  *&self->_transform.c = v6;
  *&self->_transform.tx = *&v9.tx;
}

- (CGRect)imageBounds
{
  [(PXCTLine *)self origin];
  v7 = CGRectOffset(self->_imageBounds, v3, v4);
  v5 = *&self->_transform.c;
  *&v6.a = *&self->_transform.a;
  *&v6.c = v5;
  *&v6.tx = *&self->_transform.tx;
  return CGRectApplyAffineTransform(v7, &v6);
}

- (CGRect)contentBounds
{
  [(PXCTLine *)self textPosition];
  v4 = v3;
  [(PXCTLine *)self ascentPosition];
  v6 = v5;
  [(PXCTLine *)self textPosition];
  v8 = v7;
  [(PXCTLine *)self width];
  v10 = v8 + v9;
  [(PXCTLine *)self descentPosition];
  v11 = v10 - v4;
  v13 = v12 - v6;
  v14 = v4;
  v15 = v6;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)textPosition
{
  [(PXCTLine *)self origin];
  v5 = vaddq_f64(*&self->_transform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transform.c, v3), *&self->_transform.a, v4));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

- (double)width
{
  v5.origin.x = *MEMORY[0x1E695F058];
  v5.origin.y = *(MEMORY[0x1E695F058] + 8);
  v5.size.height = *(MEMORY[0x1E695F058] + 24);
  v5.size.width = self->_width;
  v2 = *&self->_transform.c;
  *&v4.a = *&self->_transform.a;
  *&v4.c = v2;
  *&v4.tx = *&self->_transform.tx;
  v6 = CGRectApplyAffineTransform(v5, &v4);
  return v6.size.width;
}

- (CGPath)createPath
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *&self->_transform.c;
  *&v29.a = *&self->_transform.a;
  *&v29.c = v3;
  *&v29.tx = *&self->_transform.tx;
  [(PXCTLine *)self origin];
  m = v29;
  CGAffineTransformTranslate(&v29, &m, v4, v5);
  Mutable = CGPathCreateMutable();
  GlyphRuns = CTLineGetGlyphRuns([(PXCTLine *)self line]);
  v8 = 0;
  v9 = *MEMORY[0x1E6965658];
  while (v8 < CFArrayGetCount(GlyphRuns))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v8);
    Attributes = CTRunGetAttributes(ValueAtIndex);
    Value = CFDictionaryGetValue(Attributes, v9);
    GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
    v15 = MEMORY[0x1EEE9AC00](GlyphCount, v14);
    v17 = (&t2 - v16);
    v19 = (&t2 - 16 * MEMORY[0x1EEE9AC00](v15, v18));
    v31.location = 0;
    v31.length = GlyphCount;
    CTRunGetGlyphs(ValueAtIndex, v31, v17);
    v32.location = 0;
    v32.length = GlyphCount;
    CTRunGetPositions(ValueAtIndex, v32, v19);
    if (GlyphCount >= 1)
    {
      p_y = &v19->y;
      do
      {
        v21 = *v17++;
        PathForGlyph = CTFontCreatePathForGlyph(Value, v21, 0);
        v23 = *(p_y - 1);
        v24 = *p_y;
        memset(&m, 0, sizeof(m));
        CGAffineTransformMakeTranslation(&t1, v23, v24);
        t2 = v29;
        CGAffineTransformConcat(&m, &t1, &t2);
        CGPathAddPath(Mutable, &m, PathForGlyph);
        CGPathRelease(PathForGlyph);
        p_y += 2;
        --GlyphCount;
      }

      while (GlyphCount);
    }

    ++v8;
  }

  return Mutable;
}

- (void)draw
{
  v3 = [(PXCTLine *)self context];
  CGContextSaveGState(v3);
  v4 = *&self->_transform.c;
  *&v17.a = *&self->_transform.a;
  *&v17.c = v4;
  *&v17.tx = *&self->_transform.tx;
  CGContextConcatCTM(v3, &v17);
  [(PXCTLine *)self origin];
  CGContextSetTextPosition(v3, v5, v6);
  CGContextSetShouldSmoothFonts(v3, 0);
  v7 = [(PXCTLine *)self shadow];
  v8 = v7;
  if (v7)
  {
    [v7 shadowOffset];
    v10 = v9;
    v12 = v11;
    [v8 shadowBlurRadius];
    v14 = v13;
    v15 = [v8 shadowColor];
    v16 = [v15 CGColor];
    v18.width = v10;
    v18.height = v12;
    CGContextSetShadowWithColor(v3, v18, v14, v16);
  }

  CTLineDraw([(PXCTLine *)self line], v3);
  CGContextRestoreGState(v3);
}

- (void)prepare
{
  if (!self->_prepared)
  {
    self->_prepared = 1;
    v4 = [(PXCTLine *)self ctFrame];
    v5 = [v4 framesetter];

    if (!v5)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"CoreText+PhotosUIFoundation.m" lineNumber:255 description:@"missing framesetter"];
    }

    self->_context = [v5 context];
    v6 = [v5 shadow];
    shadow = self->_shadow;
    self->_shadow = v6;

    v8 = [(PXCTLine *)self line];
    self->_width = CTLineGetTypographicBounds(v8, &self->_ascent, &self->_descent, 0);
    self->_imageBounds = CTLineGetImageBounds(v8, self->_context);
    v9 = [(PXCTLine *)self ctFrame];
    [v9 origin];
    v11 = v10;
    v13 = v12;

    CGAffineTransformMakeTranslation(&v26, v11, v13);
    v14 = *&v26.c;
    *&self->_transform.a = *&v26.a;
    *&self->_transform.c = v14;
    *&self->_transform.tx = *&v26.tx;
    self->_stringRange = CTLineGetStringRange(v8);
    v15 = [(PXCTLine *)self referenceAttributedString];
    v16 = [v15 string];
    v17 = [v16 substringWithRange:{self->_stringRange.location, self->_stringRange.length}];
    string = self->_string;
    self->_string = v17;

    if ([(PXCTLine *)self isTruncated])
    {
      v19 = [(NSString *)self->_string stringByAppendingString:@"…"];
      v20 = self->_string;
      self->_string = v19;
    }

    if ([(PXCTLine *)self isTruncated])
    {
      self->_endOfString = 0;
    }

    else
    {
      v21 = [(PXCTLine *)self stringRange];
      v23 = v21 + v22;
      v24 = [(PXCTLine *)self referenceAttributedString];
      self->_endOfString = v23 == [v24 length];
    }
  }
}

- (void)dealloc
{
  CFRelease(self->_line);
  v3.receiver = self;
  v3.super_class = PXCTLine;
  [(PXCTLine *)&v3 dealloc];
}

- (PXCTLine)initWithLine:(__CTLine *)a3 origin:(CGPoint)a4 frame:(id)a5 referenceAttributedString:(id)a6 truncated:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = PXCTLine;
  v15 = [(PXCTLine *)&v17 init];
  if (v15)
  {
    v15->_line = CFRetain(a3);
    v15->_origin.x = x;
    v15->_origin.y = y;
    objc_storeWeak(&v15->_ctFrame, v13);
    objc_storeStrong(&v15->_referenceAttributedString, a6);
    v15->_truncated = a7;
  }

  return v15;
}

- (PXCTLine)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CoreText+PhotosUIFoundation.m" lineNumber:229 description:{@"%s is not available as initializer", "-[PXCTLine init]"}];

  abort();
}

@end