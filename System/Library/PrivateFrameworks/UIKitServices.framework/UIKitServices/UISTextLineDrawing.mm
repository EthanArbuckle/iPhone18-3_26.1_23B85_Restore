@interface UISTextLineDrawing
- (CGRect)alignmentRect;
- (CGSize)drawingSize;
- (UISTextLineDrawing)initWithAttributedString:(__CFAttributedString *)string lineBreakMode:(unsigned __int8)mode textAlignment:(unsigned __int8)alignment width:(double)width scale:(double)scale;
- (UISTextLineDrawing)initWithNonretainedLine:(__CTLine *)line lineBreakMode:(unsigned __int8)mode textAlignment:(unsigned __int8)alignment width:(double)width scale:(double)scale;
- (UISTextLineDrawing)initWithString:(__CFString *)string attributes:(__CFDictionary *)attributes lineBreakMode:(unsigned __int8)mode textAlignment:(unsigned __int8)alignment width:(double)width scale:(double)scale;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation UISTextLineDrawing

- (UISTextLineDrawing)initWithNonretainedLine:(__CTLine *)line lineBreakMode:(unsigned __int8)mode textAlignment:(unsigned __int8)alignment width:(double)width scale:(double)scale
{
  alignmentCopy = alignment;
  modeCopy = mode;
  v25.receiver = self;
  v25.super_class = UISTextLineDrawing;
  v11 = [(UISTextLineDrawing *)&v25 init];
  if (!v11)
  {
    return v11;
  }

  v12 = 0;
  if (modeCopy > 2)
  {
    if (modeCopy != 3 && modeCopy != 4 && modeCopy != 5)
    {
      goto LABEL_19;
    }

    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();
    if (TruncatedLineWithTokenHandler == line)
    {
      v12 = 0;
LABEL_17:
      CFRelease(TruncatedLineWithTokenHandler);
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!modeCopy)
  {
    length = CTLineGetStringRange(line).length;
    CGFloatIsValid();
    v14 = CTLineSuggestLineBreakWithOffset();
    goto LABEL_13;
  }

  if (modeCopy == 1)
  {
    length = CTLineGetStringRange(line).length;
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
      TruncatedLineWithTokenHandler = line;
      line = v16;
      goto LABEL_17;
    }

LABEL_18:
    v12 = 0;
  }

LABEL_19:
  v11->_hasLineBreak = v12;
  v17 = 0.0;
  if (alignmentCopy > 2)
  {
    if (alignmentCopy == 3)
    {
      JustifiedLine = CTLineCreateJustifiedLine(line, 1.0, width);
      if (JustifiedLine)
      {
        v20 = JustifiedLine;
        CFRelease(line);
        line = v20;
      }
    }

    else if (alignmentCopy == 4)
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
    if (alignmentCopy != 2)
    {
      v18 = 0.0;
    }

    if (alignmentCopy == 1)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = v18;
    }
  }

  v11->_line = line;
  CTLineGetDefaultBounds();
  v21.f64[0] = width;
  v21.f64[1] = 0.0 + 0.0;
  v22 = vdivq_f64(vrndpq_f64(vmulq_n_f64(v21, scale)), vdupq_lane_s64(*&scale, 0));
  v11->_size = v22;
  v11->_offset.dx = CTLineGetPenOffsetForFlush(v11->_line, v17, v22.f64[0]);
  v11->_offset.dy = round(0.0 * scale) / scale;
  return v11;
}

- (UISTextLineDrawing)initWithString:(__CFString *)string attributes:(__CFDictionary *)attributes lineBreakMode:(unsigned __int8)mode textAlignment:(unsigned __int8)alignment width:(double)width scale:(double)scale
{
  alignmentCopy = alignment;
  modeCopy = mode;
  v13 = CTLineCreateWithString();

  return [(UISTextLineDrawing *)self initWithNonretainedLine:v13 lineBreakMode:modeCopy textAlignment:alignmentCopy width:width scale:scale];
}

- (UISTextLineDrawing)initWithAttributedString:(__CFAttributedString *)string lineBreakMode:(unsigned __int8)mode textAlignment:(unsigned __int8)alignment width:(double)width scale:(double)scale
{
  alignmentCopy = alignment;
  modeCopy = mode;
  v12 = CTLineCreateWithAttributedString(string);

  return [(UISTextLineDrawing *)self initWithNonretainedLine:v12 lineBreakMode:modeCopy textAlignment:alignmentCopy width:width scale:scale];
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

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  CGContextSetFontRenderingStyle();
  CGContextScaleCTM(context, 1.0, -1.0);
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *&v9.a = *MEMORY[0x1E695EFD0];
  *&v9.c = v8;
  *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextSetTextMatrix(context, &v9);
  CGContextSetTextPosition(context, x + self->_offset.dx, -(y + self->_offset.dy));
  CTLineDraw(self->_line, context);
}

@end