@interface BKDisplayAnnotationTextBackgroundStyle
- (void)applyAppearanceToTextLayer:(id)layer;
- (void)applyToLayer:(id)layer forContent:(id)content;
@end

@implementation BKDisplayAnnotationTextBackgroundStyle

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
  [layerCopy bk_setForegroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.8];
  [layerCopy bk_setBackgroundColorRed:0.2 green:0.2 blue:0.2 alpha:0.8];
}

- (void)applyToLayer:(id)layer forContent:(id)content
{
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationTextBackgroundStyle *)self applyAppearanceToShapeLayer:layerCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationTextBackgroundStyle *)self applyAppearanceToTextLayer:layerCopy];
  }
}

@end