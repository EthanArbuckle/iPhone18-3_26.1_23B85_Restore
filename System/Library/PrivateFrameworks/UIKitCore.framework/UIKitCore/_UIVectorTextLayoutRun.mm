@interface _UIVectorTextLayoutRun
- (BOOL)shouldRender;
- (CGRect)lineRect;
- (CGRect)usedLineRect;
- (CGRect)usedRunRect;
- (_NSRange)stringRange;
- (_UIVectorTextLayoutRun)initWithCTRun:(__CTRun *)a3 lineIndex:(unint64_t)a4 layoutInfo:(id)a5;
- (id)string;
- (void)_enumerateGlyphsUsingBlock:(id)a3;
- (void)dealloc;
- (void)enumerateGlyphsUsingBlock:(id)a3;
- (void)renderInContext:(CGContext *)a3;
@end

@implementation _UIVectorTextLayoutRun

- (_UIVectorTextLayoutRun)initWithCTRun:(__CTRun *)a3 lineIndex:(unint64_t)a4 layoutInfo:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _UIVectorTextLayoutRun;
  v10 = [(_UIVectorTextLayoutRun *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_lineIndex = a4;
    objc_storeStrong(&v10->_layoutInfo, a5);
    if (a3)
    {
      v11->_runRef = a3;
      CFRetain(a3);
    }
  }

  return v11;
}

- (void)dealloc
{
  runRef = self->_runRef;
  if (runRef)
  {
    CFRelease(runRef);
  }

  v4.receiver = self;
  v4.super_class = _UIVectorTextLayoutRun;
  [(_UIVectorTextLayoutRun *)&v4 dealloc];
}

- (_NSRange)stringRange
{
  runRef = self->_runRef;
  if (runRef)
  {
    StringRange = CTRunGetStringRange(runRef);
    length = StringRange.length;
    location = StringRange.location;
  }

  else
  {
    location = 0x7FFFFFFFFFFFFFFFLL;
    length = 0;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (id)string
{
  v3 = [(_UIVectorTextLayoutRun *)self stringRange];
  v5 = 0;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    if (v4)
    {
      v7 = v3;
      v8 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
      v9 = [v8 attributedText];
      v10 = [v9 string];

      v15.length = [v10 length];
      v14.location = v7;
      v14.length = v6;
      v15.location = 0;
      v11 = NSIntersectionRange(v14, v15);
      v5 = [v10 substringWithRange:{v11.location, v11.length}];
    }
  }

  return v5;
}

- (BOOL)shouldRender
{
  if (!self->_runRef || !CTRunGetFont())
  {
    return 0;
  }

  return MEMORY[0x1EEDBF0E0]();
}

- (void)renderInContext:(CGContext *)a3
{
  origins.x = 0.0;
  origins.y = 0.0;
  v5 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo frame];
  v14.location = [(_UIVectorTextLayoutRun *)self lineIndex];
  v14.length = 1;
  CTFrameGetLineOrigins(v5, v14, &origins);
  memset(&v12, 0, sizeof(v12));
  layoutInfo = self->_layoutInfo;
  if (layoutInfo)
  {
    [(_UIVectorTextLayoutInfo *)layoutInfo coordinateAdjustment];
  }

  [(_UIVectorTextLayoutRun *)self usedRunRect];
  v11 = v12;
  v17 = CGRectApplyAffineTransform(v16, &v11);
  height = v17.size.height;
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeTranslation(&v11, origins.x - v17.origin.x, origins.y - v17.origin.y);
  t1 = v11;
  CGAffineTransformTranslate(&transform, &t1, 0.0, v12.ty - height);
  v11 = transform;
  t1 = transform;
  v8 = v12;
  CGAffineTransformConcat(&transform, &t1, &v8);
  v11 = transform;
  CGContextSaveGState(a3);
  transform = v11;
  CGContextConcatCTM(a3, &transform);
  CTRunGetTextMatrix(&transform, self->_runRef);
  CGContextSetTextMatrix(a3, &transform);
  v15.location = 0;
  v15.length = 0;
  CTRunDraw(self->_runRef, a3, v15);
  CGContextRestoreGState(a3);
}

- (void)enumerateGlyphsUsingBlock:(id)a3
{
  v4 = a3;
  Font = CTRunGetFont();
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 1.0, -1.0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52___UIVectorTextLayoutRun_enumerateGlyphsUsingBlock___block_invoke;
  v7[3] = &unk_1E712A3F8;
  v10 = v11;
  v8 = v4;
  v9 = Font;
  v6 = v4;
  [(_UIVectorTextLayoutRun *)self _enumerateGlyphsUsingBlock:v7];
}

- (void)_enumerateGlyphsUsingBlock:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Font = CTRunGetFont();
  if (Font)
  {
    v6 = Font;
    [(_UIVectorTextLayoutInfo *)self->_layoutInfo scale];
    v8 = v7;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    layoutInfo = self->_layoutInfo;
    if (layoutInfo)
    {
      [(_UIVectorTextLayoutInfo *)layoutInfo coordinateAdjustment];
    }

    GlyphCount = CTRunGetGlyphCount(self->_runRef);
    MEMORY[0x1EEE9AC00](GlyphCount);
    v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v35.location = 0;
    v35.length = 0;
    CTRunGetGlyphs(self->_runRef, v35, v12);
    MEMORY[0x1EEE9AC00](v13);
    MEMORY[0x1EEE9AC00](v14);
    v36.location = 0;
    v36.length = 0;
    CTRunGetPositions(self->_runRef, v36, &v26 - GlyphCount);
    BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v6, kCTFontOrientationDefault, v12, &v26 - GlyphCount, GlyphCount);
    origins.x = 0.0;
    origins.y = 0.0;
    v15 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo frame:BoundingRectsForGlyphs.origin.x];
    v37.location = [(_UIVectorTextLayoutRun *)self lineIndex];
    v37.length = 1;
    CTFrameGetLineOrigins(v15, v37, &origins);
    v29 = 0;
    if (GlyphCount < 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      v19 = &v26 - 2 * GlyphCount + 1;
      v20 = &v26 - 2 * GlyphCount + 1;
      do
      {
        v39 = *(v19 - 1);
        *&v16 = *(v20 - 1) + origins.x;
        *&v17 = *v20 + origins.y;
        v26 = v16;
        v27 = v17;
        v40 = CGRectOffset(v39, *&v16, *&v17);
        v41.origin.x = UIRectIntegralWithScale(v40.origin.x, v40.origin.y, v40.size.width, v40.size.height, v8);
        *&v28.a = v31;
        *&v28.c = v32;
        *&v28.tx = v33;
        v42 = CGRectApplyAffineTransform(v41, &v28);
        x = v42.origin.x;
        y = v42.origin.y;
        width = v42.size.width;
        height = v42.size.height;
        if (v29 != 1)
        {
          v25 = vaddq_f64(v33, vaddq_f64(vmulq_n_f64(v31, *&v26), vmulq_n_f64(v32, *&v27)));
          v4[2](v4, *v12, &v29, v25, v25.n128_f64[1], x, v42.origin.y, v42.size.width, v42.size.height);
        }

        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        v18 += !CGRectIsEmpty(v43);
        ++v12;
        v19 += 2;
        v20 += 2;
        --GlyphCount;
      }

      while (GlyphCount);
    }

    self->_glyphCount = v18;
  }
}

- (CGRect)lineRect
{
  x = self->_lineRect.origin.x;
  y = self->_lineRect.origin.y;
  width = self->_lineRect.size.width;
  height = self->_lineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)usedLineRect
{
  x = self->_usedLineRect.origin.x;
  y = self->_usedLineRect.origin.y;
  width = self->_usedLineRect.size.width;
  height = self->_usedLineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)usedRunRect
{
  x = self->_usedRunRect.origin.x;
  y = self->_usedRunRect.origin.y;
  width = self->_usedRunRect.size.width;
  height = self->_usedRunRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end