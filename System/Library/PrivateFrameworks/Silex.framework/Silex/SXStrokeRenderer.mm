@interface SXStrokeRenderer
- (CGContext)newContextForFrame:(double)a3;
- (double)phaseForBorderWidth:(int)a3 style:(double *)a4 borderSide:(double)a5 length:(double)a6 startingGap:;
- (id)imageFromContext:(uint64_t)a1;
- (id)initWithComponentView:(id *)a1;
- (id)lineForStyle:(double)a3 andFrame:(double)a4;
@end

@implementation SXStrokeRenderer

- (id)initWithComponentView:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = SXStrokeRenderer;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (CGContext)newContextForFrame:(double)a3
{
  if (!a1)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = a5 * v9;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, (a4 * v9), v10, 8uLL, vcvtd_n_u64_f64(a4 * v9, 2uLL), DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextTranslateCTM(v12, 0.0, v10);
  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
  v15 = v14;
  v16 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v16 scale];
  CGContextScaleCTM(v12, v15, -v17);

  return v12;
}

- (id)imageFromContext:(uint64_t)a1
{
  if (a1)
  {
    Image = CGBitmapContextCreateImage(context);
    v3 = MEMORY[0x1E69DCAB8];
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v5 = [v3 imageWithCGImage:Image scale:0 orientation:?];

    CGImageRelease(Image);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)lineForStyle:(double)a3 andFrame:(double)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (a1)
  {
    v12 = [MEMORY[0x1E69DC888] blackColor];
    if (v11)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 1);
      v16 = [WeakRetained unitConverter];
      v17 = [v11 width];
      OUTLINED_FUNCTION_3_1(v17, v18);
      v13 = v19;

      v20 = [v11 color];

      v14 = [v11 style];
      v12 = v20;
    }

    else
    {
      v13 = 1.0;
      v14 = 1;
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.0, v13 * 0.5);
    CGPathAddLineToPoint(Mutable, 0, a5, v13 * 0.5);
    v22 = [(SXStrokeRenderer *)a1 newContextForFrame:a3, a4, a5, a6];
    if ((v14 & 0xFFFFFFFE) == 2)
    {
      v25 = 0;
      v23 = [(SXStrokeRenderer *)a1 phaseForBorderWidth:v14 style:1 borderSide:&v25 length:v13 startingGap:a5];
      if (v14 == 2)
      {
        lengths = v13 * 3.0;
        v27 = v13 * 3.0;
        CGContextSetLineDash(v22, v23, &lengths, 2uLL);
      }

      else
      {
        lengths = 0.0;
        v27 = v13 * 3.0 + v13 * 3.0;
        CGContextSetLineDash(v22, v23, &lengths, 2uLL);
        CGContextSetLineCap(v22, kCGLineCapRound);
      }
    }

    CGContextAddPath(v22, Mutable);
    CGContextSetLineWidth(v22, v13);
    CGContextSetStrokeColorWithColor(v22, [v12 CGColor]);
    CGContextStrokePath(v22);
    CGPathRelease(Mutable);
    a1 = [(SXStrokeRenderer *)a1 imageFromContext:v22];
    CGContextRelease(v22);
  }

  return a1;
}

- (double)phaseForBorderWidth:(int)a3 style:(double *)a4 borderSide:(double)a5 length:(double)a6 startingGap:
{
  if (!a1)
  {
    return 0.0;
  }

  if (a2 == 2)
  {
    v6 = a5 * 3.0;
  }

  else
  {
    v6 = a5;
  }

  v7 = v6 + v6;
  v8 = a6 / (v6 + v6) - (a6 / (v6 + v6));
  if (v8 >= 0.5)
  {
    v8 = v8 + -1.0;
  }

  v9 = v6 - v7 * v8;
  v10 = roundf(v9) * 0.5;
  v11 = v6 - v10;
  if ((a3 - 1) <= 1 && v11 < a5)
  {
    if (a4)
    {
      v13 = v11;
      *a4 = floorf(v13);
    }

    v10 = v6 + v10;
  }

  v14 = v10;
  v15 = v7;
  return fmodf(roundf(v14), v15);
}

@end