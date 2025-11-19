@interface PXCTFrame
- (BOOL)_truncateLine:(const __CTLine *)a3 withOrigin:(CGPoint *)a4 referenceAttributedString:(id *)a5 bounds:(CGRect)a6;
- (CGPoint)origin;
- (PXCTFrame)init;
- (PXCTFrame)initWithFrame:(__CTFrame *)a3 maximumLineCount:(unint64_t)a4 allowTruncation:(BOOL)a5 framesetter:(id)a6;
- (PXCTFramesetter)framesetter;
- (void)dealloc;
- (void)prepare;
@end

@implementation PXCTFrame

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXCTFramesetter)framesetter
{
  WeakRetained = objc_loadWeakRetained(&self->_framesetter);

  return WeakRetained;
}

- (BOOL)_truncateLine:(const __CTLine *)a3 withOrigin:(CGPoint *)a4 referenceAttributedString:(id *)a5 bounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  if (![(PXCTFrame *)self allowTruncation])
  {
    return 0;
  }

  StringRange = CTLineGetStringRange(*a3);
  v15 = [(PXCTFrame *)self framesetter];
  v16 = [v15 attributedString];
  if (StringRange.location + StringRange.length >= [v16 length])
  {
    v24 = 0;
  }

  else
  {
    v34 = a5;
    v17 = [v16 attributedSubstringFromRange:{StringRange.location, objc_msgSend(v16, "length") - StringRange.location}];
    v18 = CTLineCreateWithAttributedString(v17);
    v19 = [v16 attributesAtIndex:objc_msgSend(v16 effectiveRange:{"length") - 1, 0}];
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…" attributes:v19];
    v21 = CTLineCreateWithAttributedString(v20);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v22 = CGRectGetWidth(v35);
    TruncatedLine = CTLineCreateTruncatedLine(v18, v22, kCTLineTruncationEnd, v21);
    CFRelease(v21);
    CFRelease(v18);
    v24 = TruncatedLine != 0;
    if (TruncatedLine)
    {
      *a3 = CFAutorelease(TruncatedLine);
      v25 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 alignment];
        v28 = 0.0;
        if (v27 == 1)
        {
          v28 = 0.5;
        }

        if (v27 == 2)
        {
          v29 = 1.0;
        }

        else
        {
          v29 = v28;
        }
      }

      else
      {
        v29 = 0.0;
      }

      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v30 = CGRectGetWidth(v36);
      PenOffsetForFlush = CTLineGetPenOffsetForFlush(TruncatedLine, v29, v30);
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      a4->x = PenOffsetForFlush + CGRectGetMinX(v37);
      v32 = v17;
      *v34 = v17;
    }
  }

  return v24;
}

- (void)prepare
{
  if (!self->_prepared)
  {
    self->_prepared = 1;
    v3 = [(PXCTFrame *)self frameRef];
    Path = CTFrameGetPath(v3);
    BoundingBox = CGPathGetBoundingBox(Path);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    v7 = CTFrameGetLines(v3);
    v8 = [v7 count];
    v9 = v8 > [(PXCTFrame *)self maximumLineCount];
    v10 = [(PXCTFrame *)self maximumLineCount];
    if (v8 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
    if (v11)
    {
      v24 = v9;
      v13 = malloc_type_calloc(v11, 0x10uLL, 0x1000040451B5BE8uLL);
      v31.location = 0;
      v31.length = v11;
      CTFrameGetLineOrigins(self->_frameRef, v31, v13);
      v14 = 0;
      v15.f64[0] = x;
      v15.f64[1] = y;
      v27 = v15;
      do
      {
        v16 = [v7 objectAtIndexedSubscript:v14];

        v30 = v16;
        v29 = vaddq_f64(v13[v14], v27);
        v17 = [(PXCTFrame *)self framesetter];
        v18 = [v17 attributedString];

        if (v11 == 1)
        {
          v28 = v18;
          v19 = [(PXCTFrame *)self _truncateLine:&v30 withOrigin:&v29 referenceAttributedString:&v28 bounds:x, y, width, height];
          v20 = v28;

          v18 = v20;
        }

        else
        {
          v19 = 0;
        }

        v21 = [PXCTLine alloc];
        v22 = [(PXCTLine *)v21 initWithLine:v30 origin:self frame:v18 referenceAttributedString:v19 truncated:*&v29];
        [(PXCTLine *)v22 prepare];
        [(NSArray *)v12 addObject:v22];

        ++v14;
        --v11;
      }

      while (v11);
      free(v13);
      v9 = v24;
    }

    lines = self->_lines;
    self->_lines = v12;

    self->_truncated = v9;
    self->_origin.x = x;
    self->_origin.y = y;
  }
}

- (void)dealloc
{
  CFRelease(self->_frameRef);
  v3.receiver = self;
  v3.super_class = PXCTFrame;
  [(PXCTFrame *)&v3 dealloc];
}

- (PXCTFrame)initWithFrame:(__CTFrame *)a3 maximumLineCount:(unint64_t)a4 allowTruncation:(BOOL)a5 framesetter:(id)a6
{
  v10 = a6;
  v13.receiver = self;
  v13.super_class = PXCTFrame;
  v11 = [(PXCTFrame *)&v13 init];
  if (v11)
  {
    v11->_frameRef = CFRetain(a3);
    v11->_maximumLineCount = a4;
    v11->_allowTruncation = a5;
    objc_storeWeak(&v11->_framesetter, v10);
  }

  return v11;
}

- (PXCTFrame)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CoreText+PhotosUIFoundation.m" lineNumber:117 description:{@"%s is not available as initializer", "-[PXCTFrame init]"}];

  abort();
}

@end