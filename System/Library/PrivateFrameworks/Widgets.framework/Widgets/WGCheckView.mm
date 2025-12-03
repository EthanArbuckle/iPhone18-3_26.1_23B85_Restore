@interface WGCheckView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)isChecked;
- (CGPath)_newPathForBounds:(CGRect)bounds;
- (WGCheckView)initWithFrame:(CGRect)frame;
- (void)_invalidatePath;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)checked;
@end

@implementation WGCheckView

- (WGCheckView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = WGCheckView;
  v3 = [(WGCheckView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _shapeLayer = [(WGCheckView *)v3 _shapeLayer];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [_shapeLayer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [_shapeLayer setStrokeColor:{objc_msgSend(whiteColor, "CGColor")}];

    [_shapeLayer setLineWidth:1.0];
    [(WGCheckView *)v4 setChecked:0];
  }

  return v4;
}

- (BOOL)isChecked
{
  _shapeLayer = [(WGCheckView *)self _shapeLayer];
  [_shapeLayer strokeEnd];
  v4 = fabs(v3 + -1.0) < 2.22044605e-16;

  return v4;
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  _shapeLayer = [(WGCheckView *)self _shapeLayer];
  v6 = _shapeLayer;
  v5 = 0.0;
  if (checkedCopy)
  {
    v5 = 1.0;
  }

  [_shapeLayer setStrokeEnd:v5];
}

- (void)layoutSubviews
{
  _shapeLayer = [(WGCheckView *)self _shapeLayer];
  path = [_shapeLayer path];

  if (!path)
  {
    [(WGCheckView *)self bounds];
    v5 = [(WGCheckView *)self _newPathForBounds:?];
    _shapeLayer2 = [(WGCheckView *)self _shapeLayer];
    [_shapeLayer2 setPath:v5];

    CGPathRelease(v5);
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqual:@"strokeEnd"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WGCheckView;
    v5 = [(WGCheckView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)_invalidatePath
{
  _shapeLayer = [(WGCheckView *)self _shapeLayer];
  [_shapeLayer setPath:0];

  [(WGCheckView *)self setNeedsLayout];
}

- (CGPath)_newPathForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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