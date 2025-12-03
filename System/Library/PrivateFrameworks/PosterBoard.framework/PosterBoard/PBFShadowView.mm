@interface PBFShadowView
- (CGAffineTransform)shadowSupplementaryTransform;
- (CGRect)frameWithContentWithFrame:(CGRect)frame;
- (void)_configureForShadowType;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setShadowType:(int64_t)type;
@end

@implementation PBFShadowView

- (CGRect)frameWithContentWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(PBFShadowView *)self shadowType]== 1)
  {
    [(UIView *)self->_shadowView frameWithContentWithFrame:x, y, width, height];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGAffineTransform)shadowSupplementaryTransform
{
  result = [(PBFShadowView *)self shadowType];
  if (result == 2)
  {

    return CGAffineTransformMakeScale(retstr, 0.25, 0.25);
  }

  else
  {
    v5 = MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v6;
    *&retstr->tx = *(v5 + 32);
  }

  return result;
}

- (void)setCornerRadius:(double)radius
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerRadius = radius;
    layer = [(PBFShadowView *)self layer];
    [layer setCornerRadius:radius];

    layer2 = [(PBFShadowView *)self layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [(PBFShadowView *)self _configureForShadowType];
  }
}

- (void)setShadowType:(int64_t)type
{
  if (self->_shadowType != type)
  {
    self->_shadowType = type;
    [(PBFShadowView *)self _configureForShadowType];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PBFShadowView;
  [(PBFShadowView *)&v4 layoutSubviews];
  shadowView = self->_shadowView;
  [(PBFShadowView *)self bounds];
  [(UIView *)shadowView setFrame:?];
}

- (void)_configureForShadowType
{
  [(UIView *)self->_shadowView removeFromSuperview];
  shadowView = self->_shadowView;
  self->_shadowView = 0;

  shadowType = self->_shadowType;
  if (shadowType == 2)
  {
    v10 = objc_alloc(MEMORY[0x277D75D18]);
    [(PBFShadowView *)self bounds];
    v11 = [v10 initWithFrame:?];
    layer = [(UIView *)v11 layer];
    [layer setShadowPathIsBounds:1];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{0.0, self->_cornerRadius}];
    [layer setShadowRadius:self->_cornerRadius];
    LODWORD(v14) = 1041865114;
    [layer setShadowOpacity:v14];
    [layer setCornerRadius:self->_cornerRadius];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];
    v15 = self->_shadowView;
    self->_shadowView = v11;
  }

  else if (shadowType == 1)
  {
    cornerRadius = self->_cornerRadius;
    v6 = objc_alloc(MEMORY[0x277D26728]);
    v7 = self->_cornerRadius;
    v16[0] = 1065353216;
    v16[1] = 0;
    *&v16[2] = cornerRadius;
    *&v16[3] = cornerRadius;
    v8 = [v6 initWithShadowAttributes:v16 maskCornerRadius:1 continuousCorners:v7];
    v9 = self->_shadowView;
    self->_shadowView = v8;
  }

  [(PBFShadowView *)self addSubview:self->_shadowView];
}

@end