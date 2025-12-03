@interface SBUIShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (void)setFillColor:(id)color;
- (void)setFillRule:(int64_t)rule;
- (void)setPath:(id)path;
@end

@implementation SBUIShapeView

- (void)setPath:(id)path
{
  pathCopy = path;
  _shapeLayer = [(SBUIShapeView *)self _shapeLayer];
  cGPath = [pathCopy CGPath];

  [_shapeLayer setPath:cGPath];
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  _shapeLayer = [(SBUIShapeView *)self _shapeLayer];
  cGColor = [colorCopy CGColor];

  [_shapeLayer setFillColor:cGColor];
}

- (void)setFillRule:(int64_t)rule
{
  _shapeLayer = [(SBUIShapeView *)self _shapeLayer];
  v6 = _shapeLayer;
  v5 = MEMORY[0x1E69797F8];
  if (rule != 1)
  {
    v5 = MEMORY[0x1E6979800];
  }

  [_shapeLayer setFillRule:*v5];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = SBUIShapeView;
  if ([(SBUIShapeView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"path"];
  }

  return v5;
}

@end