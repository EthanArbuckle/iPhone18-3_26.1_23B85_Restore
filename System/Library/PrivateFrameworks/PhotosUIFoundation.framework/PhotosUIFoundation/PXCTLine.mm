@interface PXCTLine
- (CGAffineTransform)transform;
- (CGPath)createPath;
- (CGPoint)origin;
- (CGPoint)textPosition;
- (CGRect)contentBounds;
- (CGRect)imageBounds;
- (PXCTFrame)ctFrame;
- (PXCTLine)init;
- (PXCTLine)initWithLine:(__CTLine *)line origin:(CGPoint)origin frame:(id)frame referenceAttributedString:(id)string truncated:(BOOL)truncated;
- (_NSRange)stringRange;
- (double)width;
- (id)description;
- (void)_transformBy:(CGAffineTransform *)by;
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
  string = [(PXCTLine *)self string];
  v6 = [v3 stringWithFormat:@"<%@ %p string='%@' CTLine=%@>", v4, self, string, -[PXCTLine line](self, "line")];

  return v6;
}

- (void)_transformBy:(CGAffineTransform *)by
{
  v4 = *&self->_transform.c;
  *&t1.a = *&self->_transform.a;
  *&t1.c = v4;
  *&t1.tx = *&self->_transform.tx;
  v5 = *&by->c;
  *&v7.a = *&by->a;
  *&v7.c = v5;
  *&v7.tx = *&by->tx;
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
  context = [(PXCTLine *)self context];
  CGContextSaveGState(context);
  v4 = *&self->_transform.c;
  *&v17.a = *&self->_transform.a;
  *&v17.c = v4;
  *&v17.tx = *&self->_transform.tx;
  CGContextConcatCTM(context, &v17);
  [(PXCTLine *)self origin];
  CGContextSetTextPosition(context, v5, v6);
  CGContextSetShouldSmoothFonts(context, 0);
  shadow = [(PXCTLine *)self shadow];
  v8 = shadow;
  if (shadow)
  {
    [shadow shadowOffset];
    v10 = v9;
    v12 = v11;
    [v8 shadowBlurRadius];
    v14 = v13;
    shadowColor = [v8 shadowColor];
    cGColor = [shadowColor CGColor];
    v18.width = v10;
    v18.height = v12;
    CGContextSetShadowWithColor(context, v18, v14, cGColor);
  }

  CTLineDraw([(PXCTLine *)self line], context);
  CGContextRestoreGState(context);
}

- (void)prepare
{
  if (!self->_prepared)
  {
    self->_prepared = 1;
    ctFrame = [(PXCTLine *)self ctFrame];
    framesetter = [ctFrame framesetter];

    if (!framesetter)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CoreText+PhotosUIFoundation.m" lineNumber:255 description:@"missing framesetter"];
    }

    self->_context = [framesetter context];
    shadow = [framesetter shadow];
    shadow = self->_shadow;
    self->_shadow = shadow;

    line = [(PXCTLine *)self line];
    self->_width = CTLineGetTypographicBounds(line, &self->_ascent, &self->_descent, 0);
    self->_imageBounds = CTLineGetImageBounds(line, self->_context);
    ctFrame2 = [(PXCTLine *)self ctFrame];
    [ctFrame2 origin];
    v11 = v10;
    v13 = v12;

    CGAffineTransformMakeTranslation(&v26, v11, v13);
    v14 = *&v26.c;
    *&self->_transform.a = *&v26.a;
    *&self->_transform.c = v14;
    *&self->_transform.tx = *&v26.tx;
    self->_stringRange = CTLineGetStringRange(line);
    referenceAttributedString = [(PXCTLine *)self referenceAttributedString];
    string = [referenceAttributedString string];
    v17 = [string substringWithRange:{self->_stringRange.location, self->_stringRange.length}];
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
      stringRange = [(PXCTLine *)self stringRange];
      v23 = stringRange + v22;
      referenceAttributedString2 = [(PXCTLine *)self referenceAttributedString];
      self->_endOfString = v23 == [referenceAttributedString2 length];
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

- (PXCTLine)initWithLine:(__CTLine *)line origin:(CGPoint)origin frame:(id)frame referenceAttributedString:(id)string truncated:(BOOL)truncated
{
  y = origin.y;
  x = origin.x;
  frameCopy = frame;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = PXCTLine;
  v15 = [(PXCTLine *)&v17 init];
  if (v15)
  {
    v15->_line = CFRetain(line);
    v15->_origin.x = x;
    v15->_origin.y = y;
    objc_storeWeak(&v15->_ctFrame, frameCopy);
    objc_storeStrong(&v15->_referenceAttributedString, string);
    v15->_truncated = truncated;
  }

  return v15;
}

- (PXCTLine)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CoreText+PhotosUIFoundation.m" lineNumber:229 description:{@"%s is not available as initializer", "-[PXCTLine init]"}];

  abort();
}

@end