@interface UISTextLineDrawing
- (CGRect)alignmentRect;
- (CGSize)drawingSize;
- (UISTextLineDrawing)initWithAttributedString:(__CFAttributedString *)a3 lineBreakMode:(unsigned __int8)a4 textAlignment:(unsigned __int8)a5 width:(double)a6 scale:(double)a7;
- (UISTextLineDrawing)initWithNonretainedLine:(__CTLine *)a3 lineBreakMode:(unsigned __int8)a4 textAlignment:(unsigned __int8)a5 width:(double)a6 scale:(double)a7;
- (UISTextLineDrawing)initWithString:(__CFString *)a3 attributes:(__CFDictionary *)a4 lineBreakMode:(unsigned __int8)a5 textAlignment:(unsigned __int8)a6 width:(double)a7 scale:(double)a8;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation UISTextLineDrawing

- (UISTextLineDrawing)initWithNonretainedLine:(__CTLine *)a3 lineBreakMode:(unsigned __int8)a4 textAlignment:(unsigned __int8)a5 width:(double)a6 scale:(double)a7
{
  v8 = a5;
  v9 = a4;
  v25.receiver = self;
  v25.super_class = UISTextLineDrawing;
  v11 = [(UISTextLineDrawing *)&v25 init];
  if (!v11)
  {
    return v11;
  }

  v12 = 0;
  if (v9 > 2)
  {
    if (v9 != 3 && v9 != 4 && v9 != 5)
    {
      goto LABEL_19;
    }

    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();
    if (TruncatedLineWithTokenHandler == a3)
    {
      v12 = 0;
LABEL_17:
      CFRelease(TruncatedLineWithTokenHandler);
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    length = CTLineGetStringRange(a3).length;
    CGFloatIsValid();
    v14 = CTLineSuggestLineBreakWithOffset();
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    length = CTLineGetStringRange(a3).length;
    CGFloatIsValid();
    v14 = CTLineSuggestClusterBreakWithOffset();
LABEL_13:
    if (v14 == length)
    {
      goto LABEL_18;
    }

    TruncatedLineWithTokenHandler = CTLineCreateFromLineWithOffset();
LABEL_15:
    v16 = TruncatedLineWithTokenHandler;
    if (TruncatedLineWithTokenHandler)
    {
      v12 = 1;
      TruncatedLineWithTokenHandler = a3;
      a3 = v16;
      goto LABEL_17;
    }

LABEL_18:
    v12 = 0;
  }

LABEL_19:
  v11->_hasLineBreak = v12;
  v17 = 0.0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      JustifiedLine = CTLineCreateJustifiedLine(a3, 1.0, a6);
      if (JustifiedLine)
      {
        v20 = JustifiedLine;
        CFRelease(a3);
        a3 = v20;
      }
    }

    else if (v8 == 4)
    {
      if (CTLineIsRightToLeft())
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }
    }
  }

  else
  {
    v18 = 0.5;
    if (v8 != 2)
    {
      v18 = 0.0;
    }

    if (v8 == 1)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = v18;
    }
  }

  v11->_line = a3;
  CTLineGetDefaultBounds();
  v21.f64[0] = a6;
  v21.f64[1] = 0.0 + 0.0;
  v22 = vdivq_f64(vrndpq_f64(vmulq_n_f64(v21, a7)), vdupq_lane_s64(*&a7, 0));
  v11->_size = v22;
  v11->_offset.dx = CTLineGetPenOffsetForFlush(v11->_line, v17, v22.f64[0]);
  v11->_offset.dy = round(0.0 * a7) / a7;
  return v11;
}

- (UISTextLineDrawing)initWithString:(__CFString *)a3 attributes:(__CFDictionary *)a4 lineBreakMode:(unsigned __int8)a5 textAlignment:(unsigned __int8)a6 width:(double)a7 scale:(double)a8
{
  v10 = a6;
  v11 = a5;
  v13 = CTLineCreateWithString();

  return [(UISTextLineDrawing *)self initWithNonretainedLine:v13 lineBreakMode:v11 textAlignment:v10 width:a7 scale:a8];
}

- (UISTextLineDrawing)initWithAttributedString:(__CFAttributedString *)a3 lineBreakMode:(unsigned __int8)a4 textAlignment:(unsigned __int8)a5 width:(double)a6 scale:(double)a7
{
  v9 = a5;
  v10 = a4;
  v12 = CTLineCreateWithAttributedString(a3);

  return [(UISTextLineDrawing *)self initWithNonretainedLine:v12 lineBreakMode:v10 textAlignment:v9 width:a6 scale:a7];
}

- (void)dealloc
{
  line = self->_line;
  if (line)
  {
    CFRelease(line);
  }

  v4.receiver = self;
  v4.super_class = UISTextLineDrawing;
  [(UISTextLineDrawing *)&v4 dealloc];
}

- (CGRect)alignmentRect
{
  width = self->_size.width;
  height = self->_size.height;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGSize)drawingSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  CGContextSetFontRenderingStyle();
  CGContextScaleCTM(a3, 1.0, -1.0);
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *&v9.a = *MEMORY[0x1E695EFD0];
  *&v9.c = v8;
  *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextSetTextMatrix(a3, &v9);
  CGContextSetTextPosition(a3, x + self->_offset.dx, -(y + self->_offset.dy));
  CTLineDraw(self->_line, a3);
}

@end