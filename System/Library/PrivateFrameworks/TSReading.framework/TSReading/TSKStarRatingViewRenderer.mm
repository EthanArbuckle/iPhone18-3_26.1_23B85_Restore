@interface TSKStarRatingViewRenderer
+ (CGPath)newStarPath:(double)path;
+ (void)renderRating:(int64_t)rating intoContext:(CGContext *)context rect:(CGRect)rect style:(int)style showDots:(BOOL)dots color:(id)color;
- (TSKStarRatingViewRenderer)init;
@end

@implementation TSKStarRatingViewRenderer

- (TSKStarRatingViewRenderer)init
{
  v3.receiver = self;
  v3.super_class = TSKStarRatingViewRenderer;
  return [(TSKStarRatingViewRenderer *)&v3 init];
}

+ (CGPath)newStarPath:(double)path
{
  v4 = path * 0.381966011;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, -path);
  CGPathAddLineToPoint(Mutable, 0, v4 * -0.587785252, v4 * -0.809016994);
  CGPathAddLineToPoint(Mutable, 0, path * -0.951056516, path * -0.309016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * -0.951056516, v4 * 0.309016994);
  CGPathAddLineToPoint(Mutable, 0, path * -0.587785252, path * 0.809016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * 6.123234e-17, path * 0.381966011);
  CGPathAddLineToPoint(Mutable, 0, path * 0.587785252, path * 0.809016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * 0.951056516, v4 * 0.309016994);
  CGPathAddLineToPoint(Mutable, 0, path * 0.951056516, path * -0.309016994);
  CGPathAddLineToPoint(Mutable, 0, v4 * 0.587785252, v4 * -0.809016994);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

+ (void)renderRating:(int64_t)rating intoContext:(CGContext *)context rect:(CGRect)rect style:(int)style showDots:(BOOL)dots color:(id)color
{
  rect[2] = color;
  dotsCopy = dots;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v37 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(context);
  v17 = width / 5.0;
  if (width / 5.0 >= height)
  {
    v18 = height;
  }

  else
  {
    v18 = width / 5.0;
  }

  v19 = [self newStarPath:v18 / 2.5];
  CGContextSetRGBStrokeColor(context, 0.4, 0.4, 0.4, 1.0);
  CGContextSetLineWidth(context, fmax(v18 / 20.0, 1.0));
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  CGContextTranslateCTM(context, x + v17 * 0.5, MidY + v18 * 0.05);
  for (i = 0; i != 5; ++i)
  {
    CGContextBeginPath(context);
    if (i < rating)
    {
      CGContextAddPath(context, v19);
      if (style != 2)
      {
        if (style != 1)
        {
          CGContextSetFillColorWithColor(context, [rect[2] CGColor]);
          CGContextFillPath(context);
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
        CGContextSaveGState(context);
        CGContextClip(context);
        v38.x = x;
        v38.y = v18 * -0.5;
        v41.x = x;
        v41.y = v18;
        CGContextDrawLinearGradient(context, v25, v38, v41, 3u);
        CGContextRestoreGState(context);
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
      CGContextSaveGState(context);
      CGContextClip(context);
      v39.x = x;
      v39.y = v18 * -0.5;
      v42.x = x;
      v42.y = v18 * 0.5;
      CGContextDrawLinearGradient(context, v30, v39, v42, 3u);
      CGContextBeginPath(context);
      CGContextAddPath(context, v19);
      CGContextSetRGBStrokeColor(context, 0.164705882, 0.274509804, 0.164705882, 1.0);
      v31 = 2.0;
LABEL_16:
      CGContextSetLineWidth(context, v31);
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
      CGGradientRelease(v30);
      CGColorRelease(v28);
      v26 = v29;
LABEL_17:
      CGColorRelease(v26);
      goto LABEL_20;
    }

    if (!dotsCopy)
    {
      goto LABEL_20;
    }

    if (style == 2)
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
      CGContextSaveGState(context);
      v45.origin.x = v18 / 3.0 * -0.5;
      v45.origin.y = v45.origin.x;
      v45.size.width = v18 / 3.0;
      v45.size.height = v18 / 3.0;
      CGContextAddEllipseInRect(context, v45);
      CGContextClip(context);
      v40.x = x;
      v40.y = v18 * -0.5;
      v43.x = x;
      v43.y = v18;
      CGContextDrawLinearGradient(context, v30, v40, v43, 3u);
      CGContextBeginPath(context);
      v46.origin.x = v18 / 3.0 * -0.5;
      v46.origin.y = v46.origin.x;
      v46.size.width = v18 / 3.0;
      v46.size.height = v18 / 3.0;
      CGContextAddEllipseInRect(context, v46);
      CGContextSetRGBStrokeColor(context, 0.164705882, 0.274509804, 0.164705882, 0.5);
      v31 = 1.0;
      goto LABEL_16;
    }

    if (style == 1)
    {
      CGContextSetRGBFillColor(context, 0.75, 0.75, 0.75, 1.0);
    }

    else
    {
      CGContextSetFillColorWithColor(context, [rect[2] CGColor]);
    }

    v47.origin.x = v18 * 0.25 * -0.5;
    v47.origin.y = v47.origin.x;
    v47.size.width = v18 * 0.25;
    v47.size.height = v18 * 0.25;
    CGContextFillEllipseInRect(context, v47);
    CGContextDrawPath(context, kCGPathFillStroke);
LABEL_20:
    CGContextTranslateCTM(context, v17, 0.0);
  }

  CGPathRelease(v19);
  CGContextRestoreGState(context);
}

@end