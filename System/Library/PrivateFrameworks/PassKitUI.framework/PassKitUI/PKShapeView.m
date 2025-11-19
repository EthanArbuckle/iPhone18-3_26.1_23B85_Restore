@interface PKShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (PKShapeView)initWithFrame:(CGRect)a3;
@end

@implementation PKShapeView

- (PKShapeView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PKShapeView;
  v3 = [(PKShapeView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = CGColorRetain([v4 CGColor]);

    v6 = [(PKShapeView *)v3 layer];
    shapeLayer = v3->_shapeLayer;
    v3->_shapeLayer = v6;

    [(CAShapeLayer *)v3->_shapeLayer setFillColor:v5];
    [(CAShapeLayer *)v3->_shapeLayer setStrokeColor:v5];
    CGColorRelease(v5);
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKShapeView;
    v5 = [(PKShapeView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end