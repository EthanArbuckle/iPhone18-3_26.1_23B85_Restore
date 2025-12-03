@interface PXCTFrame
- (BOOL)_truncateLine:(const __CTLine *)line withOrigin:(CGPoint *)origin referenceAttributedString:(id *)string bounds:(CGRect)bounds;
- (CGPoint)origin;
- (PXCTFrame)init;
- (PXCTFrame)initWithFrame:(__CTFrame *)frame maximumLineCount:(unint64_t)count allowTruncation:(BOOL)truncation framesetter:(id)framesetter;
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

- (BOOL)_truncateLine:(const __CTLine *)line withOrigin:(CGPoint *)origin referenceAttributedString:(id *)string bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (![(PXCTFrame *)self allowTruncation])
  {
    return 0;
  }

  StringRange = CTLineGetStringRange(*line);
  framesetter = [(PXCTFrame *)self framesetter];
  attributedString = [framesetter attributedString];
  if (StringRange.location + StringRange.length >= [attributedString length])
  {
    v24 = 0;
  }

  else
  {
    stringCopy = string;
    v17 = [attributedString attributedSubstringFromRange:{StringRange.location, objc_msgSend(attributedString, "length") - StringRange.location}];
    v18 = CTLineCreateWithAttributedString(v17);
    v19 = [attributedString attributesAtIndex:objc_msgSend(attributedString effectiveRange:{"length") - 1, 0}];
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
      *line = CFAutorelease(TruncatedLine);
      v25 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
      v26 = v25;
      if (v25)
      {
        alignment = [v25 alignment];
        v28 = 0.0;
        if (alignment == 1)
        {
          v28 = 0.5;
        }

        if (alignment == 2)
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
      origin->x = PenOffsetForFlush + CGRectGetMinX(v37);
      v32 = v17;
      *stringCopy = v17;
    }
  }

  return v24;
}

- (void)prepare
{
  if (!self->_prepared)
  {
    self->_prepared = 1;
    frameRef = [(PXCTFrame *)self frameRef];
    Path = CTFrameGetPath(frameRef);
    BoundingBox = CGPathGetBoundingBox(Path);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    v7 = CTFrameGetLines(frameRef);
    v8 = [v7 count];
    v9 = v8 > [(PXCTFrame *)self maximumLineCount];
    maximumLineCount = [(PXCTFrame *)self maximumLineCount];
    if (v8 >= maximumLineCount)
    {
      v11 = maximumLineCount;
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
        framesetter = [(PXCTFrame *)self framesetter];
        attributedString = [framesetter attributedString];

        if (v11 == 1)
        {
          v28 = attributedString;
          height = [(PXCTFrame *)self _truncateLine:&v30 withOrigin:&v29 referenceAttributedString:&v28 bounds:x, y, width, height];
          v20 = v28;

          attributedString = v20;
        }

        else
        {
          height = 0;
        }

        v21 = [PXCTLine alloc];
        v22 = [(PXCTLine *)v21 initWithLine:v30 origin:self frame:attributedString referenceAttributedString:height truncated:*&v29];
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

- (PXCTFrame)initWithFrame:(__CTFrame *)frame maximumLineCount:(unint64_t)count allowTruncation:(BOOL)truncation framesetter:(id)framesetter
{
  framesetterCopy = framesetter;
  v13.receiver = self;
  v13.super_class = PXCTFrame;
  v11 = [(PXCTFrame *)&v13 init];
  if (v11)
  {
    v11->_frameRef = CFRetain(frame);
    v11->_maximumLineCount = count;
    v11->_allowTruncation = truncation;
    objc_storeWeak(&v11->_framesetter, framesetterCopy);
  }

  return v11;
}

- (PXCTFrame)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CoreText+PhotosUIFoundation.m" lineNumber:117 description:{@"%s is not available as initializer", "-[PXCTFrame init]"}];

  abort();
}

@end