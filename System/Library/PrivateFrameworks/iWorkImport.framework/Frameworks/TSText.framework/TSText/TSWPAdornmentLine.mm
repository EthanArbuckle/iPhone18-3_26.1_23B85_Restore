@interface TSWPAdornmentLine
- (BOOL)merge:(id)merge;
- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)flags;
- (CGColor)color;
- (CGPoint)start;
- (TSWPAdornmentLine)initWithStart:(CGPoint)start length:(double)length color:(CGColor *)color thickness:(double)thickness lineCount:(unint64_t)count underline:(int)underline adornmentLocation:(int)location underLineAdjustment:(double)self0 isWhitespace:(BOOL)self1 renderingDelegate:(id)self2 allowAntialiasing:(BOOL)self3;
- (id)copyWithColor:(CGColor *)color;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation TSWPAdornmentLine

- (TSWPAdornmentLine)initWithStart:(CGPoint)start length:(double)length color:(CGColor *)color thickness:(double)thickness lineCount:(unint64_t)count underline:(int)underline adornmentLocation:(int)location underLineAdjustment:(double)self0 isWhitespace:(BOOL)self1 renderingDelegate:(id)self2 allowAntialiasing:(BOOL)self3
{
  y = start.y;
  x = start.x;
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = TSWPAdornmentLine;
  v26 = [(TSWPAdornmentLine *)&v39 init];
  v28 = v26;
  if (v26)
  {
    v26->_start.x = x;
    v26->_start.y = y;
    v26->_length = length;
    if (color)
    {
      v26->_color = CGColorRetain(color);
    }

    if (count >= 3)
    {
      v29 = MEMORY[0x277D81150];
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPAdornmentLine initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:isWhitespace:renderingDelegate:allowAntialiasing:]");
      v30 = v38 = whitespace;
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornmentLine.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 36, 0, "Illegal line count");

      whitespace = v38;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    v28->_thickness = thickness;
    countCopy = 2;
    if (count < 2)
    {
      countCopy = count;
    }

    v28->_lineCount = countCopy;
    v28->_underline = underline;
    v28->_adornmentLocation = location;
    v28->_underlineAdjustment = adjustment;
    v28->_isWhitespace = whitespace;
    objc_storeStrong(&v28->_renderingDelegate, delegate);
    v28->_allowAntialiasing = antialiasing;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSWPAdornmentLine alloc];
  allowAntialiasing = self->_allowAntialiasing;
  return objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_isWhitespace_renderingDelegate_allowAntialiasing_(v4, v5, self->_color, self->_lineCount, self->_underline, self->_adornmentLocation, self->_isWhitespace, self->_renderingDelegate, self->_start.x, self->_start.y, self->_length, self->_thickness, self->_underlineAdjustment, allowAntialiasing);
}

- (id)copyWithColor:(CGColor *)color
{
  v4 = objc_msgSend_copy(self, a2, color);
  if (color)
  {
    v5 = CGColorRetain(color);
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

- (BOOL)merge:(id)merge
{
  mergeCopy = merge;
  v5 = mergeCopy;
  if (*(mergeCopy + 6) != self->_lineCount || (x = self->_start.x, y = self->_start.y, v9 = *(mergeCopy + 9), v8 = *(mergeCopy + 10), underline = self->_underline, !CGColorEqualToColor(self->_color, *(mergeCopy + 3))) || (v13 = x + self->_length, v13 != v9) && vabdd_f64(v13, v9) >= 0.00999999978 || objc_msgSend_underline(v5, v11, v12) != self->_underline || (v16 = objc_msgSend_adornmentLocation(v5, v14, v15), v16 != self->_adornmentLocation) || !underline && ((thickness = self->_thickness, v19 = v5[5], thickness != v19) && vabdd_f64(thickness, v19) >= 0.00999999978 || y != v8 && vabdd_f64(y, v8) >= 0.00999999978) || *(v5 + 8) != self->_renderingDelegate)
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

- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)flags
{
  renderingDelegate = self->_renderingDelegate;
  if (renderingDelegate)
  {
    return objc_msgSend_shouldRenderForLineDrawFlags_(renderingDelegate, a2, flags);
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