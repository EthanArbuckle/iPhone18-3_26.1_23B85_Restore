@interface NSTextCorrectionMarkerRendering
+ (CGColor)_colorForSpellType_iOS:(int64_t)a3;
+ (CGColor)colorForType:(int64_t)a3 font:(id)a4 dotSize:(double *)a5;
+ (CGRect)boundsForCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 originalWidth:(double)a7;
+ (id)textCorrectionAdjustmentAttributedString:(id)a3 range:(_NSRange)a4 glyphOrigin:(CGPoint)a5 yDelta:(double *)a6;
+ (int64_t)textCorrectionMarkerTypeWithAttributes:(id)a3;
+ (void)drawCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 cgContext:(CGContext *)a7;
+ (void)drawCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 originalWidth:(double)a7 cgContext:(CGContext *)a8;
+ (void)drawCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 originalWidth:(double)a7 graphicsContext:(id)a8;
@end

@implementation NSTextCorrectionMarkerRendering

+ (CGColor)_colorForSpellType_iOS:(int64_t)a3
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
  if (a3 == 1 || a3 == 3)
  {
    v6 = [(objc_class *)v4 systemBlueColor];
  }

  else if (a3 == 2)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(objc_class *)v5 textGrammarIndicatorColor];
    }

    else
    {
      v6 = [(objc_class *)v5 systemGreenColor];
    }
  }

  else
  {
    v6 = [(objc_class *)v4 systemRedColor];
  }

  return [v6 CGColor];
}

+ (int64_t)textCorrectionMarkerTypeWithAttributes:(id)a3
{
  [a3 objectForKeyedSubscript:NSTemporaryTextCorrectionAttributeName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 3;
  }

  [a3 objectForKeyedSubscript:@"NSTextAlternatives"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v5 = [a3 objectForKeyedSubscript:@"NSSpellingState"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v6 = [v5 integerValue]) == 0)
  {
    v7 = [a3 objectForKeyedSubscript:@"NSTextAlternativesDisplayStyle"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return -1;
    }

    v6 = [v7 integerValue];
    if (!v6)
    {
      return -1;
    }
  }

  if (v6 == 1)
  {
    return 1;
  }

  return 2 * (v6 == 3);
}

+ (CGColor)colorForType:(int64_t)a3 font:(id)a4 dotSize:(double *)a5
{
  if (!a4)
  {
    a4 = NSDefaultFont();
  }

  [a4 pointSize];
  v9 = 20.0;
  if (v8 >= 20.0)
  {
    v9 = 40.0;
    if (v8 <= 40.0)
    {
      v9 = v8;
    }
  }

  if (a5)
  {
    v8 = ceil(v9 * 0.13247);
    *a5 = v8;
  }

  return [a1 _colorForSpellType_iOS:{a3, v8, v9}];
}

+ (void)drawCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 originalWidth:(double)a7 graphicsContext:(id)a8
{
  if (a8)
  {
    y = a5.y;
    x = a5.x;
    v24 = 0.0;
    v13 = [a1 colorForType:a3 font:a4 dotSize:&v24];
    if (v13)
    {
      v14 = v13;
      v15 = v24 + 1.0;
      v16 = vcvtmd_s64_f64((a7 + 1.0) / (v24 + 1.0));
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = (a7 + 1.0 - v16 * v15) * 0.5;
      v18 = vcvtmd_s64_f64((a6 + 1.0 + v17 * -2.0) / v15);
      v19 = [a8 CGContext];
      CGContextSetFillColorWithColor(v19, v14);
      CGContextBeginPath(v19);
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
        CGContextAddEllipseInRect(v19, v25);
        ++v20;
      }

      while (v18 != v20);
      CGContextClosePath(v19);
      if (CGContextGetCompositeOperation() == 2)
      {
        CGContextFillPath(v19);
      }

      else
      {
        CGContextSetCompositeOperation();
        CGContextFillPath(v19);
        CGContextSetCompositeOperation();
      }
    }
  }
}

+ (CGRect)boundsForCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 originalWidth:(double)a7
{
  y = a5.y;
  x = a5.x;
  v14 = 0.0;
  [a1 colorForType:a3 font:a4 dotSize:{&v14, a5.x, a5.y, a6, a7}];
  v10 = y + 0.0;
  v11 = v14;
  v12 = x;
  v13 = a6;
  result.size.height = v11;
  result.size.width = v13;
  result.origin.y = v10;
  result.origin.x = v12;
  return result;
}

+ (void)drawCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 cgContext:(CGContext *)a7
{
  y = a5.y;
  x = a5.x;
  v13 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:a7];
  [a1 drawCorrectionMarkerOfType:a3 font:a4 origin:v13 width:x graphicsContext:{y, a6}];
}

+ (void)drawCorrectionMarkerOfType:(int64_t)a3 font:(id)a4 origin:(CGPoint)a5 width:(double)a6 originalWidth:(double)a7 cgContext:(CGContext *)a8
{
  y = a5.y;
  x = a5.x;
  v15 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:a8];
  [a1 drawCorrectionMarkerOfType:a3 font:a4 origin:v15 width:x originalWidth:y graphicsContext:{a6, a7}];
}

+ (id)textCorrectionAdjustmentAttributedString:(id)a3 range:(_NSRange)a4 glyphOrigin:(CGPoint)a5 yDelta:(double *)a6
{
  y = a5.y;
  length = a4.length;
  location = a4.location;
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
  [a3 enumerateAttribute:@"NSFont" inRange:location options:length usingBlock:{0, v20}];
  if (!v22[5])
  {
    v12 = NSDefaultFont();
    v22[5] = v12;
    [v12 ascender];
    *(v28 + 3) = v13;
  }

  if (a6)
  {
    v14 = v28[3];
    v15 = v14 - y;
    v16 = y < v14;
    v17 = 0.0;
    if (v16)
    {
      v17 = v15;
    }

    *a6 = v17;
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