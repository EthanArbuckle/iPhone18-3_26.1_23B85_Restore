@interface SBUIShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setFillRule:(int64_t)a3;
- (void)setPath:(id)a3;
@end

@implementation SBUIShapeView

- (void)setPath:(id)a3
{
  v4 = a3;
  v6 = [(SBUIShapeView *)self _shapeLayer];
  v5 = [v4 CGPath];

  [v6 setPath:v5];
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  v6 = [(SBUIShapeView *)self _shapeLayer];
  v5 = [v4 CGColor];

  [v6 setFillColor:v5];
}

- (void)setFillRule:(int64_t)a3
{
  v4 = [(SBUIShapeView *)self _shapeLayer];
  v6 = v4;
  v5 = MEMORY[0x1E69797F8];
  if (a3 != 1)
  {
    v5 = MEMORY[0x1E6979800];
  }

  [v4 setFillRule:*v5];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBUIShapeView;
  if ([(SBUIShapeView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"path"];
  }

  return v5;
}

@end