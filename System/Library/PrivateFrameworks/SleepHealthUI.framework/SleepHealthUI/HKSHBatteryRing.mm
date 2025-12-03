@interface HKSHBatteryRing
- (HKSHBatteryRing)initWithFillFraction:(double)fraction radius:(double)radius strokeWidth:(double)width;
- (double)_validFillFraction:(double)fraction;
- (id)fillFractionString;
- (id)ringImage;
@end

@implementation HKSHBatteryRing

- (HKSHBatteryRing)initWithFillFraction:(double)fraction radius:(double)radius strokeWidth:(double)width
{
  v12.receiver = self;
  v12.super_class = HKSHBatteryRing;
  v8 = [(HKSHBatteryRing *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(HKSHBatteryRing *)v8 _validFillFraction:fraction];
    v9->_radius = radius;
    v9->_fillFraction = v10;
    v9->_strokeWidth = width;
    v9->_backgroundRingAlpha = 0.200000003;
  }

  return v9;
}

- (id)ringImage
{
  radius = self->_radius;
  v4 = radius + self->_strokeWidth * -0.5;
  v14.width = radius + radius;
  v5 = (self->_fillFraction + self->_fillFraction) * 3.14159274 + -1.57079637;
  v14.height = radius + radius;
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, self->_strokeWidth);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  fillColor = [(HKSHBatteryRing *)self fillColor];
  [fillColor setStroke];
  CGContextAddArc(CurrentContext, radius, radius, v4, -1.57079637, v5, 0);
  CGContextStrokePath(CurrentContext);
  if (self->_fillFraction != 1.0)
  {
    v8 = ringImage_drainColor;
    if (!ringImage_drainColor)
    {
      v9 = [fillColor colorWithAlphaComponent:self->_backgroundRingAlpha];
      v10 = ringImage_drainColor;
      ringImage_drainColor = v9;

      v8 = ringImage_drainColor;
    }

    [v8 setStroke];
    CGContextAddArc(CurrentContext, radius, radius, v4, v5, 4.71238899, 0);
    CGContextStrokePath(CurrentContext);
  }

  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (id)fillFractionString
{
  if (qword_28035E430 != -1)
  {
    dispatch_once(&qword_28035E430, &__block_literal_global);
  }

  v3 = _MergedGlobals_0;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSHBatteryRing fillFractionPercent](self, "fillFractionPercent")}];
  v5 = [v3 stringFromNumber:v4];

  return v5;
}

void __37__HKSHBatteryRing_fillFractionString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _MergedGlobals_0;
  _MergedGlobals_0 = v0;

  [_MergedGlobals_0 setNumberStyle:0];
  v2 = _MergedGlobals_0;
  v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

- (double)_validFillFraction:(double)fraction
{
  fractionCopy = 1.0;
  if (fraction <= 1.0)
  {
    fractionCopy = fraction;
  }

  v4 = fraction < 0.0;
  result = 0.0;
  if (!v4)
  {
    return fractionCopy;
  }

  return result;
}

@end