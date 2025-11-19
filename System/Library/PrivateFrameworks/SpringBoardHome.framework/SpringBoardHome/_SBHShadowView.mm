@interface _SBHShadowView
+ (id)backdropCaptureLayerWithScale:(double)a3 groupName:(id)a4;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (id)_stackBackdropGroupName;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_updateBackdropCapture;
- (void)_updateShadow;
- (void)_updateStackBackdropCapture;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)a3;
@end

@implementation _SBHShadowView

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _SBHShadowView;
  [(_SBHShadowView *)&v9 layoutSubviews];
  if (!self->_shadowLayer)
  {
    [(_SBHShadowView *)self _updateShadow];
  }

  if (!self->_backdropCaptureLayer)
  {
    [(_SBHShadowView *)self _updateBackdropCapture];
  }

  if (!self->_stackBackdropCaptureLayer)
  {
    [(_SBHShadowView *)self _updateStackBackdropCapture];
  }

  shadowLayer = self->_shadowLayer;
  v4 = [(_SBHShadowView *)self layer];
  [v4 bounds];
  [(CALayer *)shadowLayer setFrame:?];

  backdropCaptureLayer = self->_backdropCaptureLayer;
  v6 = [(_SBHShadowView *)self layer];
  [v6 bounds];
  [(CABackdropLayer *)backdropCaptureLayer setFrame:?];

  stackBackdropCaptureLayer = self->_stackBackdropCaptureLayer;
  v8 = [(_SBHShadowView *)self layer];
  [v8 bounds];
  [(CABackdropLayer *)stackBackdropCaptureLayer setFrame:?];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(_SBHShadowView *)self _continuousCornerRadius];
  v5.receiver = self;
  v5.super_class = _SBHShadowView;
  [(_SBHShadowView *)&v5 _setContinuousCornerRadius:a3];
  [(_SBHShadowView *)self _continuousCornerRadius];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(_SBHShadowView *)self _updateShadow];
  }
}

- (void)_updateShadow
{
  [(_SBHShadowView *)self _continuousCornerRadius];
  v4 = v3;
  shadowLayer = self->_shadowLayer;
  if (!shadowLayer)
  {
    v6 = [MEMORY[0x1E6979398] layer];
    v7 = self->_shadowLayer;
    self->_shadowLayer = v6;

    [(CALayer *)self->_shadowLayer setShadowPathIsBounds:1];
    v8 = self->_shadowLayer;
    v9 = [MEMORY[0x1E69DC888] blackColor];
    -[CALayer setShadowColor:](v8, "setShadowColor:", [v9 CGColor]);

    [(CALayer *)self->_shadowLayer setShadowOffset:0.0, 18.0];
    [(CALayer *)self->_shadowLayer setShadowRadius:18.0];
    LODWORD(v10) = 0.25;
    [(CALayer *)self->_shadowLayer setShadowOpacity:v10];
    [(CALayer *)self->_shadowLayer setCornerCurve:*MEMORY[0x1E69796E8]];
    v11 = [(_SBHShadowView *)self layer];
    [v11 addSublayer:self->_shadowLayer];

    shadowLayer = self->_shadowLayer;
  }

  [(CALayer *)shadowLayer setCornerRadius:v4];
}

+ (id)backdropCaptureLayerWithScale:(double)a3 groupName:(id)a4
{
  v5 = MEMORY[0x1E6979310];
  v6 = a4;
  v7 = [v5 layer];
  v8 = [MEMORY[0x1E69DC888] blackColor];
  [v7 setBackgroundColor:{objc_msgSend(v8, "cgColor")}];

  LODWORD(v9) = 998277249;
  [v7 setOpacity:v9];
  [v7 setCaptureOnly:1];
  [v7 setCornerRadius:0.0];
  [v7 setScale:a3];
  [v7 setGroupName:v6];

  return v7;
}

- (id)_stackBackdropGroupName
{
  if (self->_backdropGroupName)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-Stack", self->_backdropGroupName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_updateBackdropCapture
{
  if (!self->_backdropCaptureLayer)
  {
    v3 = [_SBHShadowView backdropCaptureLayerWithScale:self->_backdropGroupName groupName:0.25];
    backdropCaptureLayer = self->_backdropCaptureLayer;
    self->_backdropCaptureLayer = v3;

    v5 = [(_SBHShadowView *)self layer];
    [v5 addSublayer:self->_backdropCaptureLayer];
  }
}

- (void)_updateStackBackdropCapture
{
  if (self->_wantsStackBackdropCaptureGroup && !self->_stackBackdropCaptureLayer)
  {
    v3 = [(_SBHShadowView *)self _stackBackdropGroupName];
    v4 = [_SBHShadowView backdropCaptureLayerWithScale:v3 groupName:0.5];
    stackBackdropCaptureLayer = self->_stackBackdropCaptureLayer;
    self->_stackBackdropCaptureLayer = v4;

    v6 = [(_SBHShadowView *)self layer];
    [v6 addSublayer:self->_stackBackdropCaptureLayer];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SBHShadowView;
    v5 = [(_SBHShadowView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)setBackdropGroupName:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  backdropGroupName = self->_backdropGroupName;
  self->_backdropGroupName = v5;

  [(CABackdropLayer *)self->_backdropCaptureLayer setGroupName:v4];
  stackBackdropCaptureLayer = self->_stackBackdropCaptureLayer;
  v8 = [(_SBHShadowView *)self _stackBackdropGroupName];
  [(CABackdropLayer *)stackBackdropCaptureLayer setGroupName:v8];
}

@end