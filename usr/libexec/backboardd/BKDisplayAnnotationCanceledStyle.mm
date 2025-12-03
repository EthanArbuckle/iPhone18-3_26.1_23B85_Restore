@interface BKDisplayAnnotationCanceledStyle
- (void)applyAppearanceToShapeLayer:(id)layer;
- (void)applyAppearanceToTextLayer:(id)layer;
- (void)applyToLayer:(id)layer forContent:(id)content;
@end

@implementation BKDisplayAnnotationCanceledStyle

- (void)applyAppearanceToTextLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy bk_setForegroundColorRed:0.9 green:1.0 blue:1.0 alpha:0.8];
  [layerCopy bk_setBackgroundColorRed:1.0 green:0.1 blue:0.1 alpha:0.8];
  v4 = +[CALayer layer];
  [layerCopy bounds];
  [v4 setFrame:{v6.origin.x, CGRectGetMidY(v6), v6.size.width, 2.0}];
  [v4 bk_setBackgroundColorRed:0.9 green:1.0 blue:1.0 alpha:0.8];
  [layerCopy addSublayer:v4];

  [v4 setNeedsDisplay];
}

- (void)applyAppearanceToShapeLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy bk_setBackgroundColorRed:1.0 green:0.3 blue:0.3 alpha:0.8];
  [layerCopy bk_setForegroundColorRed:0.0 green:0.0 blue:0.0 alpha:0.8];
  [layerCopy setLineDashPattern:&off_100107C50];
  [layerCopy setLineWidth:20.0];
}

- (void)applyToLayer:(id)layer forContent:(id)content
{
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationCanceledStyle *)self applyAppearanceToShapeLayer:layerCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationCanceledStyle *)self applyAppearanceToTextLayer:layerCopy];
  }
}

@end