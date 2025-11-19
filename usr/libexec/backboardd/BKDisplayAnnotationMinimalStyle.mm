@interface BKDisplayAnnotationMinimalStyle
- (void)applyAppearanceToShapeLayer:(id)a3;
- (void)applyAppearanceToTextLayer:(id)a3;
- (void)applyToLayer:(id)a3 forContent:(id)a4;
@end

@implementation BKDisplayAnnotationMinimalStyle

- (void)applyAppearanceToTextLayer:(id)a3
{
  v4 = a3;
  v3 = CTFontCreateWithName(@"Helvetica", 0.0, 0);
  if (v3)
  {
    [v4 setFont:v3];
  }

  CFRelease(v3);
  [v4 setFontSize:14.0];
  [v4 bk_setForegroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.9];
}

- (void)applyAppearanceToShapeLayer:(id)a3
{
  v3 = a3;
  [v3 setLineWidth:3.0];
  [v3 bk_setForegroundColorRed:0.3 green:0.3 blue:0.3 alpha:0.9];
  [v3 bk_setBackgroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.2];
}

- (void)applyToLayer:(id)a3 forContent:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationMinimalStyle *)self applyAppearanceToShapeLayer:v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationMinimalStyle *)self applyAppearanceToTextLayer:v5];
  }
}

@end