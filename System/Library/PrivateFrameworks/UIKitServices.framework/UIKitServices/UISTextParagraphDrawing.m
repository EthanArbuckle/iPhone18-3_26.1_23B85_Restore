@interface UISTextParagraphDrawing
- (CGRect)alignmentRect;
- (CGSize)drawingSize;
- (UISTextParagraphDrawing)initWithString:(id)a3 attributes:(__CFDictionary *)a4 size:(CGSize)a5 numberOfLines:(unsigned __int8)a6 scale:(double)a7;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation UISTextParagraphDrawing

- (UISTextParagraphDrawing)initWithString:(id)a3 attributes:(__CFDictionary *)a4 size:(CGSize)a5 numberOfLines:(unsigned __int8)a6 scale:(double)a7
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v36 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v35.receiver = self;
  v35.super_class = UISTextParagraphDrawing;
  v14 = [(UISTextParagraphDrawing *)&v35 init];
  v15 = v14;
  if (v14)
  {
    v14->_scale = a7;
    Default = CFAllocatorGetDefault();
    v17 = CFAttributedStringCreate(Default, v13, a4);
    v15->_textString = v17;
    v18 = CTFramesetterCreateWithAttributedString(v17);
    if (height <= 0.0)
    {
      v19 = 10000.0;
    }

    else
    {
      v19 = height;
    }

    v15->_frameSize.width = width;
    v15->_frameSize.height = v19;
    v20 = 0;
    v21 = 0;
    v22 = width;
    v23 = CGPathCreateWithRect(*(&v19 - 3), 0);
    v37.location = 0;
    v37.length = 0;
    Frame = CTFramesetterCreateFrame(v18, v37, v23, 0);
    v15->_frame = Frame;
    Lines = CTFrameGetLines(Frame);
    Count = CFArrayGetCount(Lines);
    v27 = v8;
    if (Count < v8)
    {
      v27 = Count;
    }

    if (!v8)
    {
      v27 = Count;
    }

    v15->_lineCount = v27;
    if (v27)
    {
      CFArrayGetCount(Lines);
      v28 = (&v32 - 2 * MEMORY[0x1EEE9AC00]());
      v38.location = 0;
      v38.length = 0;
      CTFrameGetLineOrigins(v15->_frame, v38, v28);
      descent = 0.0;
      ascent = 0.0;
      ValueAtIndex = CFArrayGetValueAtIndex(Lines, 0);
      CTLineGetTypographicBounds(ValueAtIndex, &ascent, 0, 0);
      v30 = CFArrayGetValueAtIndex(Lines, v15->_lineCount - 1);
      CTLineGetTypographicBounds(v30, 0, &descent, 0);
      v15->_drawingHeight = ceil((v28->y - v28[v15->_lineCount - 1].y + ascent + descent) * v15->_scale) / v15->_scale;
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  return v15;
}

- (CGRect)alignmentRect
{
  width = self->_frameSize.width;
  drawingHeight = self->_drawingHeight;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = drawingHeight;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v36 = *MEMORY[0x1E69E9840];
  Lines = CTFrameGetLines(self->_frame);
  Count = CFArrayGetCount(Lines);
  v10 = Count;
  if (self->_lineCount)
  {
    v11 = Count >= self->_lineCount;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = y + self->_frameSize.height;
    transform.a = 1.0;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.d = -1.0;
    transform.tx = x;
    transform.ty = v12;
    CGContextConcatCTM(a3, &transform);
    v13 = CGContextSetFontRenderingStyle();
    if (self->_frameSize.height == 10000.0 && self->_lineCount == Count)
    {
      CTFrameDraw(self->_frame, a3);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v13);
      v15 = (&v34 - v14);
      v16 = CTFrameGetLines(self->_frame);
      v37.location = 0;
      v37.length = 0;
      CTFrameGetLineOrigins(self->_frame, v37, v15);
      lineCount = self->_lineCount;
      if (lineCount < 2)
      {
        v21 = lineCount - 1;
      }

      else
      {
        v18 = 0;
        p_y = &v15->y;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, v18);
          CGContextSetTextPosition(a3, *(p_y - 1), *p_y);
          CTLineDraw(ValueAtIndex, a3);
          ++v18;
          v21 = self->_lineCount - 1;
          p_y += 2;
        }

        while (v18 < v21);
      }

      v22 = CFArrayGetValueAtIndex(v16, v21);
      Length = CFAttributedStringGetLength(self->_textString);
      v24 = self->_lineCount;
      if (v10 <= v24)
      {
        v27 = Length;
      }

      else
      {
        v25 = CFArrayGetValueAtIndex(v16, v24);
        StringRange = CTLineGetStringRange(v25);
        v27 = StringRange.location + StringRange.length;
      }

      v38.location = CTLineGetStringRange(v22).location;
      v38.length = v27 - v38.location;
      v28 = CFAttributedStringCreateWithSubstring(*MEMORY[0x1E695E480], self->_textString, v38);
      v29 = CTLineCreateWithAttributedString(v28);
      TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();
      IsRightToLeft = CTLineIsRightToLeft();
      v32 = 0.0;
      if (IsRightToLeft)
      {
        v32 = 1.0;
      }

      PenOffsetForFlush = CTLineGetPenOffsetForFlush(TruncatedLineWithTokenHandler, v32, self->_frameSize.width);
      CGContextSetTextPosition(a3, PenOffsetForFlush, v15[self->_lineCount - 1].y);
      CTLineDraw(TruncatedLineWithTokenHandler, a3);
      if (v28)
      {
        CFRelease(v28);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (TruncatedLineWithTokenHandler)
      {
        CFRelease(TruncatedLineWithTokenHandler);
      }
    }
  }
}

- (CGSize)drawingSize
{
  width = self->_frameSize.width;
  drawingHeight = self->_drawingHeight;
  result.height = drawingHeight;
  result.width = width;
  return result;
}

- (void)dealloc
{
  textString = self->_textString;
  if (textString)
  {
    CFRelease(textString);
  }

  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  v5.receiver = self;
  v5.super_class = UISTextParagraphDrawing;
  [(UISTextParagraphDrawing *)&v5 dealloc];
}

@end