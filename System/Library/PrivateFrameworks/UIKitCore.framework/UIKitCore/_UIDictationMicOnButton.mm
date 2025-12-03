@interface _UIDictationMicOnButton
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setupShapeLayer;
@end

@implementation _UIDictationMicOnButton

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = _UIDictationMicOnButton;
  [(UIView *)&v3 didMoveToSuperview];
  [(_UIDictationMicOnButton *)self setupShapeLayer];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _UIDictationMicOnButton;
  [(UIButton *)&v11 layoutSubviews];
  imageView = [(UIButton *)self imageView];
  layer = [imageView layer];
  [layer setCompositingFilter:*MEMORY[0x1E6979D98]];

  imageView2 = [(UIButton *)self imageView];
  [imageView2 center];
  v7 = v6;
  v9 = v8;
  shapeLayer = [(_UIDictationMicOnButton *)self shapeLayer];
  [shapeLayer setPosition:{v7, v9}];
}

- (void)setupShapeLayer
{
  shapeLayer = [(_UIDictationMicOnButton *)self shapeLayer];

  if (shapeLayer)
  {
    imageView = [(UIButton *)self imageView];
    [imageView center];
    v5 = v4;
    v7 = v6;
    shapeLayer2 = [(_UIDictationMicOnButton *)self shapeLayer];
    [shapeLayer2 setPosition:{v5, v7}];
  }

  else
  {
    layer = [MEMORY[0x1E69794A0] layer];
    [(_UIDictationMicOnButton *)self setShapeLayer:layer];

    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    v12 = [UIBezierPath bezierPathWithRoundedRect:*MEMORY[0x1E695EFF8] cornerRadius:v11, 30.0, 30.0, 6.0];
    cGPath = [v12 CGPath];
    shapeLayer3 = [(_UIDictationMicOnButton *)self shapeLayer];
    [shapeLayer3 setPath:cGPath];

    tintColor = [(UIView *)self tintColor];
    cGColor = [tintColor CGColor];
    shapeLayer4 = [(_UIDictationMicOnButton *)self shapeLayer];
    [shapeLayer4 setFillColor:cGColor];

    shapeLayer5 = [(_UIDictationMicOnButton *)self shapeLayer];
    [shapeLayer5 setBounds:{v10, v11, 30.0, 30.0}];

    imageView2 = [(UIButton *)self imageView];
    [imageView2 center];
    v21 = v20;
    v23 = v22;
    shapeLayer6 = [(_UIDictationMicOnButton *)self shapeLayer];
    [shapeLayer6 setPosition:{v21, v23}];

    imageView = [(UIView *)self layer];
    shapeLayer2 = [(_UIDictationMicOnButton *)self shapeLayer];
    imageView3 = [(UIButton *)self imageView];
    layer2 = [imageView3 layer];
    [imageView insertSublayer:shapeLayer2 below:layer2];
  }
}

@end