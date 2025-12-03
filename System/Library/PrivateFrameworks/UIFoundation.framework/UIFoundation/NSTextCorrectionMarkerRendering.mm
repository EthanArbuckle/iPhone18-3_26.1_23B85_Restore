@interface NSTextCorrectionMarkerRendering
+ (CGColor)_colorForSpellType_iOS:(int64_t)s;
+ (CGColor)colorForType:(int64_t)type font:(id)font dotSize:(double *)size;
+ (CGRect)boundsForCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width originalWidth:(double)originalWidth;
+ (id)textCorrectionAdjustmentAttributedString:(id)string range:(_NSRange)range glyphOrigin:(CGPoint)origin yDelta:(double *)delta;
+ (int64_t)textCorrectionMarkerTypeWithAttributes:(id)attributes;
+ (void)drawCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width cgContext:(CGContext *)context;
+ (void)drawCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width originalWidth:(double)originalWidth cgContext:(CGContext *)context;
+ (void)drawCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width originalWidth:(double)originalWidth graphicsContext:(id)context;
@end

@implementation NSTextCorrectionMarkerRendering

+ (CGColor)_colorForSpellType_iOS:(int64_t)s
{
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v4 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", 1];
  }

  else
  {
    v4 = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v5 = v4;
  if (s == 1 || s == 3)
  {
    systemBlueColor = [(objc_class *)v4 systemBlueColor];
  }

  else if (s == 2)
  {
    if (objc_opt_respondsToSelector())
    {
      systemBlueColor = [(objc_class *)v5 textGrammarIndicatorColor];
    }

    else
    {
      systemBlueColor = [(objc_class *)v5 systemGreenColor];
    }
  }

  else
  {
    systemBlueColor = [(objc_class *)v4 systemRedColor];
  }

  return [systemBlueColor CGColor];
}

+ (int64_t)textCorrectionMarkerTypeWithAttributes:(id)attributes
{
  [attributes objectForKeyedSubscript:NSTemporaryTextCorrectionAttributeName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 3;
  }

  [attributes objectForKeyedSubscript:@"NSTextAlternatives"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v5 = [attributes objectForKeyedSubscript:@"NSSpellingState"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (integerValue = [v5 integerValue]) == 0)
  {
    v7 = [attributes objectForKeyedSubscript:@"NSTextAlternativesDisplayStyle"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return -1;
    }

    integerValue = [v7 integerValue];
    if (!integerValue)
    {
      return -1;
    }
  }

  if (integerValue == 1)
  {
    return 1;
  }

  return 2 * (integerValue == 3);
}

+ (CGColor)colorForType:(int64_t)type font:(id)font dotSize:(double *)size
{
  if (!font)
  {
    font = NSDefaultFont();
  }

  [font pointSize];
  v9 = 20.0;
  if (v8 >= 20.0)
  {
    v9 = 40.0;
    if (v8 <= 40.0)
    {
      v9 = v8;
    }
  }

  if (size)
  {
    v8 = ceil(v9 * 0.13247);
    *size = v8;
  }

  return [self _colorForSpellType_iOS:{type, v8, v9}];
}

+ (void)drawCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width originalWidth:(double)originalWidth graphicsContext:(id)context
{
  if (context)
  {
    y = origin.y;
    x = origin.x;
    v24 = 0.0;
    v13 = [self colorForType:type font:font dotSize:&v24];
    if (v13)
    {
      v14 = v13;
      v15 = v24 + 1.0;
      v16 = vcvtmd_s64_f64((originalWidth + 1.0) / (v24 + 1.0));
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = (originalWidth + 1.0 - v16 * v15) * 0.5;
      v18 = vcvtmd_s64_f64((width + 1.0 + v17 * -2.0) / v15);
      cGContext = [context CGContext];
      CGContextSetFillColorWithColor(cGContext, v14);
      CGContextBeginPath(cGContext);
      v20 = 0;
      v21 = y + 0.0;
      v22 = v24;
      v23 = x + v17;
      if (v18 <= 1)
      {
        v18 = 1;
      }

      do
      {
        v25.origin.x = v23 + v20 * (v24 + 1.0);
        v25.origin.y = v21;
        v25.size.width = v22;
        v25.size.height = v22;
        CGContextAddEllipseInRect(cGContext, v25);
        ++v20;
      }

      while (v18 != v20);
      CGContextClosePath(cGContext);
      if (CGContextGetCompositeOperation() == 2)
      {
        CGContextFillPath(cGContext);
      }

      else
      {
        CGContextSetCompositeOperation();
        CGContextFillPath(cGContext);
        CGContextSetCompositeOperation();
      }
    }
  }
}

+ (CGRect)boundsForCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width originalWidth:(double)originalWidth
{
  y = origin.y;
  x = origin.x;
  v14 = 0.0;
  [self colorForType:type font:font dotSize:{&v14, origin.x, origin.y, width, originalWidth}];
  v10 = y + 0.0;
  v11 = v14;
  v12 = x;
  widthCopy = width;
  result.size.height = v11;
  result.size.width = widthCopy;
  result.origin.y = v10;
  result.origin.x = v12;
  return result;
}

+ (void)drawCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width cgContext:(CGContext *)context
{
  y = origin.y;
  x = origin.x;
  v13 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:context];
  [self drawCorrectionMarkerOfType:type font:font origin:v13 width:x graphicsContext:{y, width}];
}

+ (void)drawCorrectionMarkerOfType:(int64_t)type font:(id)font origin:(CGPoint)origin width:(double)width originalWidth:(double)originalWidth cgContext:(CGContext *)context
{
  y = origin.y;
  x = origin.x;
  v15 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:context];
  [self drawCorrectionMarkerOfType:type font:font origin:v15 width:x originalWidth:y graphicsContext:{width, originalWidth}];
}

+ (id)textCorrectionAdjustmentAttributedString:(id)string range:(_NSRange)range glyphOrigin:(CGPoint)origin yDelta:(double *)delta
{
  y = origin.y;
  length = range.length;
  location = range.location;
  v11 = +[NSTypesetter defaultTypesetterBehavior];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__16;
  v25 = __Block_byref_object_dispose__16;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__NSTextCorrectionMarkerRendering_textCorrectionAdjustmentAttributedString_range_glyphOrigin_yDelta___block_invoke;
  v20[3] = &unk_1E726E340;
  v20[5] = &v27;
  v20[6] = v11;
  v20[4] = &v21;
  [string enumerateAttribute:@"NSFont" inRange:location options:length usingBlock:{0, v20}];
  if (!v22[5])
  {
    v12 = NSDefaultFont();
    v22[5] = v12;
    [v12 ascender];
    *(v28 + 3) = v13;
  }

  if (delta)
  {
    v14 = v28[3];
    v15 = v14 - y;
    v16 = y < v14;
    v17 = 0.0;
    if (v16)
    {
      v17 = v15;
    }

    *delta = v17;
  }

  v18 = v22[5];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v18;
}

uint64_t __101__NSTextCorrectionMarkerRendering_textCorrectionAdjustmentAttributedString_range_glyphOrigin_yDelta___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 40))
    {
      [a2 pointSize];
      v7 = v6;
      [*(*(*(a1 + 32) + 8) + 40) pointSize];
      if (v7 <= v8)
      {
        goto LABEL_6;
      }

      v5 = *(*(a1 + 32) + 8);
    }

    *(v5 + 40) = a2;
LABEL_6:
    result = [a2 ascender];
    v10 = *(*(a1 + 40) + 8);
    if (v9 > *(v10 + 24))
    {
      *(v10 + 24) = v9;
    }
  }

  return result;
}

@end