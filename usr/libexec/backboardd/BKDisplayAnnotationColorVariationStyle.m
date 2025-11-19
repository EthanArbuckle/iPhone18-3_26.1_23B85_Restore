@interface BKDisplayAnnotationColorVariationStyle
+ (id)colorVariationWithIndex:(int64_t)a3;
- (BKDisplayAnnotationColorVariationStyle)initWithRed:(double)a3 green:(double)a4 blue:(double)a5;
- (void)applyAppearanceToShapeLayer:(id)a3;
- (void)applyAppearanceToTextLayer:(id)a3;
- (void)applyToLayer:(id)a3 forContent:(id)a4;
@end

@implementation BKDisplayAnnotationColorVariationStyle

- (void)applyAppearanceToTextLayer:(id)a3
{
  v5 = a3;
  v4 = CTFontCreateWithName(@"Helvetica", 0.0, 0);
  if (v4)
  {
    [v5 setFont:v4];
  }

  CFRelease(v4);
  [v5 setFontSize:14.0];
  [v5 bk_setForegroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.9];
  [v5 bk_setBackgroundColorRed:fmin(self->_r green:0.5) blue:fmin(self->_g alpha:{0.5), fmin(self->_b, 0.5), 0.8}];
}

- (void)applyAppearanceToShapeLayer:(id)a3
{
  v4 = a3;
  [v4 setLineWidth:3.0];
  [v4 bk_setForegroundColorRed:self->_r green:self->_g blue:self->_b alpha:0.9];
  [v4 bk_setBackgroundColorRed:self->_r green:self->_g blue:self->_b alpha:0.2];
}

- (void)applyToLayer:(id)a3 forContent:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationColorVariationStyle *)self applyAppearanceToShapeLayer:v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationColorVariationStyle *)self applyAppearanceToTextLayer:v5];
  }
}

- (BKDisplayAnnotationColorVariationStyle)initWithRed:(double)a3 green:(double)a4 blue:(double)a5
{
  v9.receiver = self;
  v9.super_class = BKDisplayAnnotationColorVariationStyle;
  result = [(BKDisplayAnnotationColorVariationStyle *)&v9 init];
  if (result)
  {
    result->_r = a3;
    result->_g = a4;
    result->_b = a5;
  }

  return result;
}

+ (id)colorVariationWithIndex:(int64_t)a3
{
  v3 = (&unk_1000BFB50 + 24 * (a3 % 6));
  v4 = [[BKDisplayAnnotationColorVariationStyle alloc] initWithRed:*v3 green:v3[1] blue:v3[2]];

  return v4;
}

@end