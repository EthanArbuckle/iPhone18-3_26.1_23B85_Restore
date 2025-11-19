@interface BKDisplayAnnotationTextBackgroundStyle
- (void)applyAppearanceToTextLayer:(id)a3;
- (void)applyToLayer:(id)a3 forContent:(id)a4;
@end

@implementation BKDisplayAnnotationTextBackgroundStyle

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
  [v4 bk_setForegroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.8];
  [v4 bk_setBackgroundColorRed:0.2 green:0.2 blue:0.2 alpha:0.8];
}

- (void)applyToLayer:(id)a3 forContent:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationTextBackgroundStyle *)self applyAppearanceToShapeLayer:v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationTextBackgroundStyle *)self applyAppearanceToTextLayer:v5];
  }
}

@end