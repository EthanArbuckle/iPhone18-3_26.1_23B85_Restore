@interface SXStrokeRenderer
- (CGContext)newContextForFrame:(double)frame;
- (double)phaseForBorderWidth:(int)width style:(double *)style borderSide:(double)side length:(double)length startingGap:;
- (id)imageFromContext:(uint64_t)context;
- (id)initWithComponentView:(id *)view;
- (id)lineForStyle:(double)style andFrame:(double)frame;
@end

@implementation SXStrokeRenderer

- (id)initWithComponentView:(id *)view
{
  v3 = a2;
  if (view)
  {
    v6.receiver = view;
    v6.super_class = SXStrokeRenderer;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    view = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return view;
}

- (CGContext)newContextForFrame:(double)frame
{
  if (!self)
  {
    return 0;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  v10 = a5 * v9;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, (a4 * v9), v10, 8uLL, vcvtd_n_u64_f64(a4 * v9, 2uLL), DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextTranslateCTM(v12, 0.0, v10);
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v15 = v14;
  mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen3 scale];
  CGContextScaleCTM(v12, v15, -v17);

  return v12;
}

- (id)imageFromContext:(uint64_t)context
{
  if (context)
  {
    Image = CGBitmapContextCreateImage(context);
    v3 = MEMORY[0x1E69DCAB8];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v5 = [v3 imageWithCGImage:Image scale:0 orientation:?];

    CGImageRelease(Image);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)lineForStyle:(double)style andFrame:(double)frame
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (self)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    if (v11)
    {
      WeakRetained = objc_loadWeakRetained(self + 1);
      unitConverter = [WeakRetained unitConverter];
      width = [v11 width];
      OUTLINED_FUNCTION_3_1(width, v18);
      v13 = v19;

      color = [v11 color];

      style = [v11 style];
      blackColor = color;
    }

    else
    {
      v13 = 1.0;
      style = 1;
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.0, v13 * 0.5);
    CGPathAddLineToPoint(Mutable, 0, a5, v13 * 0.5);
    v22 = [(SXStrokeRenderer *)self newContextForFrame:style, frame, a5, a6];
    if ((style & 0xFFFFFFFE) == 2)
    {
      v25 = 0;
      v23 = [(SXStrokeRenderer *)self phaseForBorderWidth:style style:1 borderSide:&v25 length:v13 startingGap:a5];
      if (style == 2)
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
    CGContextSetStrokeColorWithColor(v22, [blackColor CGColor]);
    CGContextStrokePath(v22);
    CGPathRelease(Mutable);
    self = [(SXStrokeRenderer *)self imageFromContext:v22];
    CGContextRelease(v22);
  }

  return self;
}

- (double)phaseForBorderWidth:(int)width style:(double *)style borderSide:(double)side length:(double)length startingGap:
{
  if (!self)
  {
    return 0.0;
  }

  if (a2 == 2)
  {
    sideCopy = side * 3.0;
  }

  else
  {
    sideCopy = side;
  }

  v7 = sideCopy + sideCopy;
  v8 = length / (sideCopy + sideCopy) - (length / (sideCopy + sideCopy));
  if (v8 >= 0.5)
  {
    v8 = v8 + -1.0;
  }

  v9 = sideCopy - v7 * v8;
  v10 = roundf(v9) * 0.5;
  v11 = sideCopy - v10;
  if ((width - 1) <= 1 && v11 < side)
  {
    if (style)
    {
      v13 = v11;
      *style = floorf(v13);
    }

    v10 = sideCopy + v10;
  }

  v14 = v10;
  v15 = v7;
  return fmodf(roundf(v14), v15);
}

@end