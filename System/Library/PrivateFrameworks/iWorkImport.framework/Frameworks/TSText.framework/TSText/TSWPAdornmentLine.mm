@interface TSWPAdornmentLine
- (BOOL)merge:(id)a3;
- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)a3;
- (CGColor)color;
- (CGPoint)start;
- (TSWPAdornmentLine)initWithStart:(CGPoint)a3 length:(double)a4 color:(CGColor *)a5 thickness:(double)a6 lineCount:(unint64_t)a7 underline:(int)a8 adornmentLocation:(int)a9 underLineAdjustment:(double)a10 isWhitespace:(BOOL)a11 renderingDelegate:(id)a12 allowAntialiasing:(BOOL)a13;
- (id)copyWithColor:(CGColor *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TSWPAdornmentLine

- (TSWPAdornmentLine)initWithStart:(CGPoint)a3 length:(double)a4 color:(CGColor *)a5 thickness:(double)a6 lineCount:(unint64_t)a7 underline:(int)a8 adornmentLocation:(int)a9 underLineAdjustment:(double)a10 isWhitespace:(BOOL)a11 renderingDelegate:(id)a12 allowAntialiasing:(BOOL)a13
{
  y = a3.y;
  x = a3.x;
  v25 = a12;
  v39.receiver = self;
  v39.super_class = TSWPAdornmentLine;
  v26 = [(TSWPAdornmentLine *)&v39 init];
  v28 = v26;
  if (v26)
  {
    v26->_start.x = x;
    v26->_start.y = y;
    v26->_length = a4;
    if (a5)
    {
      v26->_color = CGColorRetain(a5);
    }

    if (a7 >= 3)
    {
      v29 = MEMORY[0x277D81150];
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPAdornmentLine initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:isWhitespace:renderingDelegate:allowAntialiasing:]");
      v30 = v38 = a11;
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornmentLine.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 36, 0, "Illegal line count");

      a11 = v38;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    v28->_thickness = a6;
    v36 = 2;
    if (a7 < 2)
    {
      v36 = a7;
    }

    v28->_lineCount = v36;
    v28->_underline = a8;
    v28->_adornmentLocation = a9;
    v28->_underlineAdjustment = a10;
    v28->_isWhitespace = a11;
    objc_storeStrong(&v28->_renderingDelegate, a12);
    v28->_allowAntialiasing = a13;
  }

  return v28;
}

- (void)dealloc
{
  color = self->_color;
  if (color)
  {
    CGColorRelease(color);
  }

  v4.receiver = self;
  v4.super_class = TSWPAdornmentLine;
  [(TSWPAdornmentLine *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSWPAdornmentLine alloc];
  allowAntialiasing = self->_allowAntialiasing;
  return objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_isWhitespace_renderingDelegate_allowAntialiasing_(v4, v5, self->_color, self->_lineCount, self->_underline, self->_adornmentLocation, self->_isWhitespace, self->_renderingDelegate, self->_start.x, self->_start.y, self->_length, self->_thickness, self->_underlineAdjustment, allowAntialiasing);
}

- (id)copyWithColor:(CGColor *)a3
{
  v4 = objc_msgSend_copy(self, a2, a3);
  if (a3)
  {
    v5 = CGColorRetain(a3);
  }

  else
  {
    v5 = 0;
  }

  v4[3] = v5;
  v6 = v4[8];
  v4[8] = 0;

  return v4;
}

- (CGColor)color
{
  renderingDelegate = self->_renderingDelegate;
  if (renderingDelegate)
  {
    return (MEMORY[0x2821F9670])(renderingDelegate, sel_cgColor);
  }

  else
  {
    return self->_color;
  }
}

- (BOOL)merge:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 6) != self->_lineCount || (x = self->_start.x, y = self->_start.y, v9 = *(v4 + 9), v8 = *(v4 + 10), underline = self->_underline, !CGColorEqualToColor(self->_color, *(v4 + 3))) || (v13 = x + self->_length, v13 != v9) && vabdd_f64(v13, v9) >= 0.00999999978 || objc_msgSend_underline(v5, v11, v12) != self->_underline || (v16 = objc_msgSend_adornmentLocation(v5, v14, v15), v16 != self->_adornmentLocation) || !underline && ((thickness = self->_thickness, v19 = v5[5], thickness != v19) && vabdd_f64(thickness, v19) >= 0.00999999978 || y != v8 && vabdd_f64(y, v8) >= 0.00999999978) || *(v5 + 8) != self->_renderingDelegate)
  {
    v20 = 0;
    goto LABEL_18;
  }

  self->_length = v9 - x + v5[4];
  if (!underline)
  {
    goto LABEL_20;
  }

  if (!self->_isWhitespace)
  {
    if (v5[1])
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v5[1])
  {
LABEL_20:
    if (v16 == 1)
    {
      v22 = fmin(y, v8);
    }

    else
    {
      v22 = fmax(y, v8);
    }

    self->_start.y = v22;
    v17 = fmax(self->_thickness, v5[5]);
    goto LABEL_24;
  }

  self->_start.y = v8;
  v17 = v5[5];
LABEL_24:
  self->_thickness = v17;
LABEL_25:
  if (self->_isWhitespace && (v5[1] & 1) == 0)
  {
    self->_isWhitespace = 0;
  }

  v20 = 1;
LABEL_18:

  return v20;
}

- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)a3
{
  renderingDelegate = self->_renderingDelegate;
  if (renderingDelegate)
  {
    return objc_msgSend_shouldRenderForLineDrawFlags_(renderingDelegate, a2, a3);
  }

  else
  {
    return 1;
  }
}

- (CGPoint)start
{
  x = self->_start.x;
  y = self->_start.y;
  result.y = y;
  result.x = x;
  return result;
}

@end