@interface BKDisplayAnnotationMinimalStyle
- (void)applyAppearanceToShapeLayer:(id)layer;
- (void)applyAppearanceToTextLayer:(id)layer;
- (void)applyToLayer:(id)layer forContent:(id)content;
@end

@implementation BKDisplayAnnotationMinimalStyle

- (void)applyAppearanceToTextLayer:(id)layer
{
  layerCopy = layer;
  v3 = CTFontCreateWithName(@"Helvetica", 0.0, 0);
  if (v3)
  {
    [layerCopy setFont:v3];
  }

  CFRelease(v3);
  [layerCopy setFontSize:14.0];
  [layerCopy bk_setForegroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.9];
}

- (void)applyAppearanceToShapeLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy setLineWidth:3.0];
  [layerCopy bk_setForegroundColorRed:0.3 green:0.3 blue:0.3 alpha:0.9];
  [layerCopy bk_setBackgroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.2];
}

- (void)applyToLayer:(id)layer forContent:(id)content
{
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationMinimalStyle *)self applyAppearanceToShapeLayer:layerCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationMinimalStyle *)self applyAppearanceToTextLayer:layerCopy];
  }
}

@end