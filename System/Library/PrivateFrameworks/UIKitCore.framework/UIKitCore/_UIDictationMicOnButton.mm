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
  v3 = [(UIButton *)self imageView];
  v4 = [v3 layer];
  [v4 setCompositingFilter:*MEMORY[0x1E6979D98]];

  v5 = [(UIButton *)self imageView];
  [v5 center];
  v7 = v6;
  v9 = v8;
  v10 = [(_UIDictationMicOnButton *)self shapeLayer];
  [v10 setPosition:{v7, v9}];
}

- (void)setupShapeLayer
{
  v3 = [(_UIDictationMicOnButton *)self shapeLayer];

  if (v3)
  {
    v27 = [(UIButton *)self imageView];
    [v27 center];
    v5 = v4;
    v7 = v6;
    v8 = [(_UIDictationMicOnButton *)self shapeLayer];
    [v8 setPosition:{v5, v7}];
  }

  else
  {
    v9 = [MEMORY[0x1E69794A0] layer];
    [(_UIDictationMicOnButton *)self setShapeLayer:v9];

    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    v12 = [UIBezierPath bezierPathWithRoundedRect:*MEMORY[0x1E695EFF8] cornerRadius:v11, 30.0, 30.0, 6.0];
    v13 = [v12 CGPath];
    v14 = [(_UIDictationMicOnButton *)self shapeLayer];
    [v14 setPath:v13];

    v15 = [(UIView *)self tintColor];
    v16 = [v15 CGColor];
    v17 = [(_UIDictationMicOnButton *)self shapeLayer];
    [v17 setFillColor:v16];

    v18 = [(_UIDictationMicOnButton *)self shapeLayer];
    [v18 setBounds:{v10, v11, 30.0, 30.0}];

    v19 = [(UIButton *)self imageView];
    [v19 center];
    v21 = v20;
    v23 = v22;
    v24 = [(_UIDictationMicOnButton *)self shapeLayer];
    [v24 setPosition:{v21, v23}];

    v27 = [(UIView *)self layer];
    v8 = [(_UIDictationMicOnButton *)self shapeLayer];
    v25 = [(UIButton *)self imageView];
    v26 = [v25 layer];
    [v27 insertSublayer:v8 below:v26];
  }
}

@end