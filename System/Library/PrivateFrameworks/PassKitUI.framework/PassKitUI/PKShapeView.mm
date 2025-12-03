@interface PKShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (PKShapeView)initWithFrame:(CGRect)frame;
@end

@implementation PKShapeView

- (PKShapeView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PKShapeView;
  v3 = [(PKShapeView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v5 = CGColorRetain([blackColor CGColor]);

    layer = [(PKShapeView *)v3 layer];
    shapeLayer = v3->_shapeLayer;
    v3->_shapeLayer = layer;

    [(CAShapeLayer *)v3->_shapeLayer setFillColor:v5];
    [(CAShapeLayer *)v3->_shapeLayer setStrokeColor:v5];
    CGColorRelease(v5);
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKShapeView;
    v5 = [(PKShapeView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end