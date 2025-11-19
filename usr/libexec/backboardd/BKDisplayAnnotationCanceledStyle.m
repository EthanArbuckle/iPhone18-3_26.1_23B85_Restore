@interface BKDisplayAnnotationCanceledStyle
- (void)applyAppearanceToShapeLayer:(id)a3;
- (void)applyAppearanceToTextLayer:(id)a3;
- (void)applyToLayer:(id)a3 forContent:(id)a4;
@end

@implementation BKDisplayAnnotationCanceledStyle

- (void)applyAppearanceToTextLayer:(id)a3
{
  v3 = a3;
  [v3 bk_setForegroundColorRed:0.9 green:1.0 blue:1.0 alpha:0.8];
  [v3 bk_setBackgroundColorRed:1.0 green:0.1 blue:0.1 alpha:0.8];
  v4 = +[CALayer layer];
  [v3 bounds];
  [v4 setFrame:{v6.origin.x, CGRectGetMidY(v6), v6.size.width, 2.0}];
  [v4 bk_setBackgroundColorRed:0.9 green:1.0 blue:1.0 alpha:0.8];
  [v3 addSublayer:v4];

  [v4 setNeedsDisplay];
}

- (void)applyAppearanceToShapeLayer:(id)a3
{
  v3 = a3;
  [v3 bk_setBackgroundColorRed:1.0 green:0.3 blue:0.3 alpha:0.8];
  [v3 bk_setForegroundColorRed:0.0 green:0.0 blue:0.0 alpha:0.8];
  [v3 setLineDashPattern:&off_100107C50];
  [v3 setLineWidth:20.0];
}

- (void)applyToLayer:(id)a3 forContent:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationCanceledStyle *)self applyAppearanceToShapeLayer:v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKDisplayAnnotationCanceledStyle *)self applyAppearanceToTextLayer:v5];
  }
}

@end