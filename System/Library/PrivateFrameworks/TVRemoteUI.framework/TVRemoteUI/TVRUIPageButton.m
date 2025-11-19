@interface TVRUIPageButton
- (CGPath)_newScaledPathForPath:(CGPath *)a3 forSize:(CGSize)a4;
- (TVRUIPageButton)initWithType:(int64_t)a3 hasTapAction:(BOOL)a4;
- (UIBezierPath)wingPath;
- (id)newChevronWingLayer;
- (void)_setupSublayers;
- (void)_updateLayers;
- (void)layoutSubviews;
@end

@implementation TVRUIPageButton

- (TVRUIPageButton)initWithType:(int64_t)a3 hasTapAction:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = TVRUIPageButton;
  v4 = [(TVRUIButton *)&v7 initWithType:a3 hasTapAction:a4 options:2];
  v5 = v4;
  if (v4)
  {
    [(TVRUIPageButton *)v4 _setupSublayers];
  }

  return v5;
}

- (void)_setupSublayers
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  contentLayer = self->_contentLayer;
  self->_contentLayer = v3;

  v5 = [(TVRUIPageButton *)self newChevronWingLayer];
  leftWing = self->_leftWing;
  self->_leftWing = v5;

  [(CAShapeLayer *)self->_leftWing setAnchorPoint:1.0, 0.5];
  CGAffineTransformMakeRotation(&v14, -0.279253);
  v7 = self->_leftWing;
  v13 = v14;
  [(CAShapeLayer *)v7 setAffineTransform:&v13];
  v8 = [(TVRUIPageButton *)self newChevronWingLayer];
  rightWing = self->_rightWing;
  self->_rightWing = v8;

  [(CAShapeLayer *)self->_rightWing setAnchorPoint:0.0, 0.5];
  CGAffineTransformMakeRotation(&v12, 0.279253);
  v10 = self->_rightWing;
  v13 = v12;
  [(CAShapeLayer *)v10 setAffineTransform:&v13];
  [(CALayer *)self->_contentLayer addSublayer:self->_leftWing];
  [(CALayer *)self->_contentLayer addSublayer:self->_rightWing];
  v11 = [(TVRUIPageButton *)self layer];
  [v11 addSublayer:self->_contentLayer];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TVRUIPageButton;
  [(TVRUIButton *)&v3 layoutSubviews];
  [(TVRUIPageButton *)self _updateLayers];
}

- (void)_updateLayers
{
  v3 = [(TVRUIPageButton *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CALayer *)self->_contentLayer setFrame:v5, v7, v9, v11];
  [(CAShapeLayer *)self->_leftWing setBounds:0.0, 0.0, 12.0, 6.0];
  [(CAShapeLayer *)self->_rightWing setBounds:0.0, 0.0, 12.0, 6.0];
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v12 = CGRectGetMidX(v17) + 2.0;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  [(CAShapeLayer *)self->_leftWing setPosition:v12, CGRectGetMidY(v18)];
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v13 = CGRectGetMidX(v19) + -2.0;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  [(CAShapeLayer *)self->_rightWing setPosition:v13, CGRectGetMidY(v20)];
  v14 = [(TVRUIPageButton *)self wingPath];
  v15 = -[TVRUIPageButton _newScaledPathForPath:forSize:](self, "_newScaledPathForPath:forSize:", [v14 CGPath], 12.0, 6.0);

  [(CAShapeLayer *)self->_leftWing setPath:v15];
  [(CAShapeLayer *)self->_rightWing setPath:v15];

  CGPathRelease(v15);
}

- (CGPath)_newScaledPathForPath:(CGPath *)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  PathBoundingBox = CGPathGetPathBoundingBox(a3);
  result = 0;
  if (height != 0.0 && PathBoundingBox.size.height != 0.0)
  {
    if (PathBoundingBox.size.width / PathBoundingBox.size.height <= width / height)
    {
      v8 = height / PathBoundingBox.size.height;
    }

    else
    {
      v8 = width / PathBoundingBox.size.width;
    }

    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, v8, v8);
    return CGPathCreateMutableCopyByTransformingPath(a3, &v9);
  }

  return result;
}

- (UIBezierPath)wingPath
{
  wingPath = self->_wingPath;
  if (!wingPath)
  {
    v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 11.5, 2.5, 1.5}];
    [(UIBezierPath *)v4 setLineCapStyle:0];
    [(UIBezierPath *)v4 setLineJoinStyle:0];
    [(UIBezierPath *)v4 setLineWidth:1.0];
    [(UIBezierPath *)v4 setMiterLimit:10.0];
    v5 = self->_wingPath;
    self->_wingPath = v4;

    wingPath = self->_wingPath;
  }

  return wingPath;
}

- (id)newChevronWingLayer
{
  v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
  v4 = [MEMORY[0x277D75348] systemWhiteColor];
  [v3 setFillColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(TVRUIPageButton *)self wingPath];
  [v3 setPath:{objc_msgSend(v5, "CGPath")}];

  return v3;
}

@end