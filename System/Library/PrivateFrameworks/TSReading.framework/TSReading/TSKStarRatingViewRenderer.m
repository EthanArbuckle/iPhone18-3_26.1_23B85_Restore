@interface TSKStarRatingViewRenderer
+ (CGPath)newStarPath:(double)a3;
+ (void)renderRating:(int64_t)a3 intoContext:(CGContext *)a4 rect:(CGRect)a5 style:(int)a6 showDots:(BOOL)a7 color:(id)a8;
- (TSKStarRatingViewRenderer)init;
@end

@implementation TSKStarRatingViewRenderer

- (TSKStarRatingViewRenderer)init
{
  v3.receiver = self;
  v3.super_class = TSKStarRatingViewRenderer;
  return [(TSKStarRatingViewRenderer *)&v3 init];
}

+ (CGPath)newStarPath:(double)a3
{
  v4 = a3 * 0.381966011;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, -a3);
  CGPathAddLineToPoint(Mutable, 0, v4 * -0.587785252, v4 * -0.809016994);
  CGPathAddLineToPoint(Mutable, 0, a3 * -0.951056516, a3 * -0.309016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * -0.951056516, v4 * 0.309016994);
  CGPathAddLineToPoint(Mutable, 0, a3 * -0.587785252, a3 * 0.809016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * 6.123234e-17, a3 * 0.381966011);
  CGPathAddLineToPoint(Mutable, 0, a3 * 0.587785252, a3 * 0.809016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * 0.951056516, v4 * 0.309016994);
  CGPathAddLineToPoint(Mutable, 0, a3 * 0.951056516, a3 * -0.309016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * 0.587785252, v4 * -0.809016994);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

+ (void)renderRating:(int64_t)a3 intoContext:(CGContext *)a4 rect:(CGRect)a5 style:(int)a6 showDots:(BOOL)a7 color:(id)a8
{
  rect[2] = a8;
  v8 = a7;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v37 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(a4);
  v17 = width / 5.0;
  if (width / 5.0 >= height)
  {
    v18 = height;
  }

  else
  {
    v18 = width / 5.0;
  }

  v19 = [a1 newStarPath:v18 / 2.5];
  CGContextSetRGBStrokeColor(a4, 0.4, 0.4, 0.4, 1.0);
  CGContextSetLineWidth(a4, fmax(v18 / 20.0, 1.0));
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  CGContextTranslateCTM(a4, x + v17 * 0.5, MidY + v18 * 0.05);
  for (i = 0; i != 5; ++i)
  {
    CGContextBeginPath(a4);
    if (i < a3)
    {
      CGContextAddPath(a4, v19);
      if (a6 != 2)
      {
        if (a6 != 1)
        {
          CGContextSetFillColorWithColor(a4, [rect[2] CGColor]);
          CGContextFillPath(a4);
          goto LABEL_20;
        }

        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        *components = xmmword_26CA63E98;
        v36 = unk_26CA63EA8;
        v23 = CGColorCreate(DeviceRGB, components);
        *&rect[3] = xmmword_26CA63EB8;
        v34 = unk_26CA63EC8;
        v24 = CGColorCreate(DeviceRGB, &rect[3]);
        v25 = CGGradientCreateWithColors(DeviceRGB, [MEMORY[0x277CBEA60] arrayWithObjects:{v23, v24, 0}], 0);
        CFRelease(DeviceRGB);
        CGContextSaveGState(a4);
        CGContextClip(a4);
        v38.x = x;
        v38.y = v18 * -0.5;
        v41.x = x;
        v41.y = v18;
        CGContextDrawLinearGradient(a4, v25, v38, v41, 3u);
        CGContextRestoreGState(a4);
        CGGradientRelease(v25);
        CGColorRelease(v23);
        v26 = v24;
        goto LABEL_17;
      }

      v27 = CGColorSpaceCreateDeviceRGB();
      *components = xmmword_26CA63ED8;
      v36 = unk_26CA63EE8;
      v28 = CGColorCreate(v27, components);
      *&rect[3] = xmmword_26CA63EF8;
      v34 = unk_26CA63F08;
      v29 = CGColorCreate(v27, &rect[3]);
      v30 = CGGradientCreateWithColors(v27, [MEMORY[0x277CBEA60] arrayWithObjects:{v28, v29, 0}], 0);
      CFRelease(v27);
      CGContextSaveGState(a4);
      CGContextClip(a4);
      v39.x = x;
      v39.y = v18 * -0.5;
      v42.x = x;
      v42.y = v18 * 0.5;
      CGContextDrawLinearGradient(a4, v30, v39, v42, 3u);
      CGContextBeginPath(a4);
      CGContextAddPath(a4, v19);
      CGContextSetRGBStrokeColor(a4, 0.164705882, 0.274509804, 0.164705882, 1.0);
      v31 = 2.0;
LABEL_16:
      CGContextSetLineWidth(a4, v31);
      CGContextStrokePath(a4);
      CGContextRestoreGState(a4);
      CGGradientRelease(v30);
      CGColorRelease(v28);
      v26 = v29;
LABEL_17:
      CGColorRelease(v26);
      goto LABEL_20;
    }

    if (!v8)
    {
      goto LABEL_20;
    }

    if (a6 == 2)
    {
      v32 = CGColorSpaceCreateDeviceRGB();
      *components = xmmword_26CA63F18;
      v36 = unk_26CA63F28;
      v28 = CGColorCreate(v32, components);
      *&rect[3] = xmmword_26CA63F38;
      v34 = unk_26CA63F48;
      v29 = CGColorCreate(v32, &rect[3]);
      v30 = CGGradientCreateWithColors(v32, [MEMORY[0x277CBEA60] arrayWithObjects:{v28, v29, 0}], 0);
      CFRelease(v32);
      CGContextSaveGState(a4);
      v45.origin.x = v18 / 3.0 * -0.5;
      v45.origin.y = v45.origin.x;
      v45.size.width = v18 / 3.0;
      v45.size.height = v18 / 3.0;
      CGContextAddEllipseInRect(a4, v45);
      CGContextClip(a4);
      v40.x = x;
      v40.y = v18 * -0.5;
      v43.x = x;
      v43.y = v18;
      CGContextDrawLinearGradient(a4, v30, v40, v43, 3u);
      CGContextBeginPath(a4);
      v46.origin.x = v18 / 3.0 * -0.5;
      v46.origin.y = v46.origin.x;
      v46.size.width = v18 / 3.0;
      v46.size.height = v18 / 3.0;
      CGContextAddEllipseInRect(a4, v46);
      CGContextSetRGBStrokeColor(a4, 0.164705882, 0.274509804, 0.164705882, 0.5);
      v31 = 1.0;
      goto LABEL_16;
    }

    if (a6 == 1)
    {
      CGContextSetRGBFillColor(a4, 0.75, 0.75, 0.75, 1.0);
    }

    else
    {
      CGContextSetFillColorWithColor(a4, [rect[2] CGColor]);
    }

    v47.origin.x = v18 * 0.25 * -0.5;
    v47.origin.y = v47.origin.x;
    v47.size.width = v18 * 0.25;
    v47.size.height = v18 * 0.25;
    CGContextFillEllipseInRect(a4, v47);
    CGContextDrawPath(a4, kCGPathFillStroke);
LABEL_20:
    CGContextTranslateCTM(a4, v17, 0.0);
  }

  CGPathRelease(v19);
  CGContextRestoreGState(a4);
}

@end