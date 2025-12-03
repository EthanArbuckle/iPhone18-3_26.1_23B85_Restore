@interface BKDisplayAnnotationColorVariationStyle
+ (id)colorVariationWithIndex:(int64_t)index;
- (BKDisplayAnnotationColorVariationStyle)initWithRed:(double)red green:(double)green blue:(double)blue;
- (void)applyAppearanceToShapeLayer:(id)layer;
- (void)applyAppearanceToTextLayer:(id)layer;
- (void)applyToLayer:(id)layer forContent:(id)content;
@end

@implementation BKDisplayAnnotationColorVariationStyle

- (void)applyAppearanceToTextLayer:(id)layer
{
  layerCopy = layer;
  v4 = CTFontCreateWithName(@"Helvetica", 0.0, 0);
  if (v4)
  {
    [layerCopy setFont:v4];
  }

  CFRelease(v4);
  [layerCopy setFontSize:14.0];
  [layerCopy bk_setForegroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.9];
  [layerCopy bk_setBackgroundColorRed:fmin(self->_r green:0.5) blue:fmin(self->_g alpha:{0.5), fmin(self->_b, 0.5), 0.8}];
}

- (void)applyAppearanceToShapeLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy setLineWidth:3.0];
  [layerCopy bk_setForegroundColorRed:self->_r green:self->_g blue:self->_b alpha:0.9];
  [layerCopy bk_setBackgroundColorRed:self->_r green:self->_g blue:self->_b alpha:0.2];
}

- (void)applyToLayer:(id)layer forContent:(id)content
{
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationColorVariationStyle *)self applyAppearanceToShapeLayer:layerCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationColorVariationStyle *)self applyAppearanceToTextLayer:layerCopy];
  }
}

- (BKDisplayAnnotationColorVariationStyle)initWithRed:(double)red green:(double)green blue:(double)blue
{
  v9.receiver = self;
  v9.super_class = BKDisplayAnnotationColorVariationStyle;
  result = [(BKDisplayAnnotationColorVariationStyle *)&v9 init];
  if (result)
  {
    result->_r = red;
    result->_g = green;
    result->_b = blue;
  }

  return result;
}

+ (id)colorVariationWithIndex:(int64_t)index
{
  v3 = (&unk_1000BFB50 + 24 * (index % 6));
  v4 = [[BKDisplayAnnotationColorVariationStyle alloc] initWithRed:*v3 green:v3[1] blue:v3[2]];

  return v4;
}

@end