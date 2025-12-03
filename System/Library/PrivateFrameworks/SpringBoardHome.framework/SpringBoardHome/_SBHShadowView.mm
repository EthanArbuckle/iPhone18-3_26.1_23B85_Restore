@interface _SBHShadowView
+ (id)backdropCaptureLayerWithScale:(double)scale groupName:(id)name;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (id)_stackBackdropGroupName;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_updateBackdropCapture;
- (void)_updateShadow;
- (void)_updateStackBackdropCapture;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)name;
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
  layer = [(_SBHShadowView *)self layer];
  [layer bounds];
  [(CALayer *)shadowLayer setFrame:?];

  backdropCaptureLayer = self->_backdropCaptureLayer;
  layer2 = [(_SBHShadowView *)self layer];
  [layer2 bounds];
  [(CABackdropLayer *)backdropCaptureLayer setFrame:?];

  stackBackdropCaptureLayer = self->_stackBackdropCaptureLayer;
  layer3 = [(_SBHShadowView *)self layer];
  [layer3 bounds];
  [(CABackdropLayer *)stackBackdropCaptureLayer setFrame:?];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(_SBHShadowView *)self _continuousCornerRadius];
  v5.receiver = self;
  v5.super_class = _SBHShadowView;
  [(_SBHShadowView *)&v5 _setContinuousCornerRadius:radius];
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
    layer = [MEMORY[0x1E6979398] layer];
    v7 = self->_shadowLayer;
    self->_shadowLayer = layer;

    [(CALayer *)self->_shadowLayer setShadowPathIsBounds:1];
    v8 = self->_shadowLayer;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    -[CALayer setShadowColor:](v8, "setShadowColor:", [blackColor CGColor]);

    [(CALayer *)self->_shadowLayer setShadowOffset:0.0, 18.0];
    [(CALayer *)self->_shadowLayer setShadowRadius:18.0];
    LODWORD(v10) = 0.25;
    [(CALayer *)self->_shadowLayer setShadowOpacity:v10];
    [(CALayer *)self->_shadowLayer setCornerCurve:*MEMORY[0x1E69796E8]];
    layer2 = [(_SBHShadowView *)self layer];
    [layer2 addSublayer:self->_shadowLayer];

    shadowLayer = self->_shadowLayer;
  }

  [(CALayer *)shadowLayer setCornerRadius:v4];
}

+ (id)backdropCaptureLayerWithScale:(double)scale groupName:(id)name
{
  v5 = MEMORY[0x1E6979310];
  nameCopy = name;
  layer = [v5 layer];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer setBackgroundColor:{objc_msgSend(blackColor, "cgColor")}];

  LODWORD(v9) = 998277249;
  [layer setOpacity:v9];
  [layer setCaptureOnly:1];
  [layer setCornerRadius:0.0];
  [layer setScale:scale];
  [layer setGroupName:nameCopy];

  return layer;
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

    layer = [(_SBHShadowView *)self layer];
    [layer addSublayer:self->_backdropCaptureLayer];
  }
}

- (void)_updateStackBackdropCapture
{
  if (self->_wantsStackBackdropCaptureGroup && !self->_stackBackdropCaptureLayer)
  {
    _stackBackdropGroupName = [(_SBHShadowView *)self _stackBackdropGroupName];
    v4 = [_SBHShadowView backdropCaptureLayerWithScale:_stackBackdropGroupName groupName:0.5];
    stackBackdropCaptureLayer = self->_stackBackdropCaptureLayer;
    self->_stackBackdropCaptureLayer = v4;

    layer = [(_SBHShadowView *)self layer];
    [layer addSublayer:self->_stackBackdropCaptureLayer];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SBHShadowView;
    v5 = [(_SBHShadowView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy copy];
  backdropGroupName = self->_backdropGroupName;
  self->_backdropGroupName = v5;

  [(CABackdropLayer *)self->_backdropCaptureLayer setGroupName:nameCopy];
  stackBackdropCaptureLayer = self->_stackBackdropCaptureLayer;
  _stackBackdropGroupName = [(_SBHShadowView *)self _stackBackdropGroupName];
  [(CABackdropLayer *)stackBackdropCaptureLayer setGroupName:_stackBackdropGroupName];
}

@end