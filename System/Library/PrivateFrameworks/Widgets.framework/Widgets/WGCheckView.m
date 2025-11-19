@interface WGCheckView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)isChecked;
- (CGPath)_newPathForBounds:(CGRect)a3;
- (WGCheckView)initWithFrame:(CGRect)a3;
- (void)_invalidatePath;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)a3;
@end

@implementation WGCheckView

- (WGCheckView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = WGCheckView;
  v3 = [(WGCheckView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(WGCheckView *)v3 _shapeLayer];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [MEMORY[0x277D75348] whiteColor];
    [v5 setStrokeColor:{objc_msgSend(v7, "CGColor")}];

    [v5 setLineWidth:1.0];
    [(WGCheckView *)v4 setChecked:0];
  }

  return v4;
}

- (BOOL)isChecked
{
  v2 = [(WGCheckView *)self _shapeLayer];
  [v2 strokeEnd];
  v4 = fabs(v3 + -1.0) < 2.22044605e-16;

  return v4;
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  v4 = [(WGCheckView *)self _shapeLayer];
  v6 = v4;
  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  [v4 setStrokeEnd:v5];
}

- (void)layoutSubviews
{
  v3 = [(WGCheckView *)self _shapeLayer];
  v4 = [v3 path];

  if (!v4)
  {
    [(WGCheckView *)self bounds];
    v5 = [(WGCheckView *)self _newPathForBounds:?];
    v6 = [(WGCheckView *)self _shapeLayer];
    [v6 setPath:v5];

    CGPathRelease(v5);
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"strokeEnd"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WGCheckView;
    v5 = [(WGCheckView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_invalidatePath
{
  v3 = [(WGCheckView *)self _shapeLayer];
  [v3 setPath:0];

  [(WGCheckView *)self setNeedsLayout];
}

- (CGPath)_newPathForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = CGRectGetWidth(v15) * 0.2;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetHeight(v16);
  CGPathMoveToPoint(Mutable, 0, v8, v9 * 0.525);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v10 = CGRectGetWidth(v17) * 0.375;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v11 = CGRectGetHeight(v18);
  CGPathAddLineToPoint(Mutable, 0, v10, v11 * 0.7);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = CGRectGetWidth(v19) * 0.775;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v13 = CGRectGetHeight(v20);
  CGPathAddLineToPoint(Mutable, 0, v12, v13 * 0.3);
  return Mutable;
}

@end