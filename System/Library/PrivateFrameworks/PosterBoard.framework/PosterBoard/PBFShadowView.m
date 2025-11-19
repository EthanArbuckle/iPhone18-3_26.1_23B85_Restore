@interface PBFShadowView
- (CGAffineTransform)shadowSupplementaryTransform;
- (CGRect)frameWithContentWithFrame:(CGRect)a3;
- (void)_configureForShadowType;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setShadowType:(int64_t)a3;
@end

@implementation PBFShadowView

- (CGRect)frameWithContentWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setCornerRadius:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerRadius = a3;
    v5 = [(PBFShadowView *)self layer];
    [v5 setCornerRadius:a3];

    v6 = [(PBFShadowView *)self layer];
    [v6 setCornerCurve:*MEMORY[0x277CDA138]];

    [(PBFShadowView *)self _configureForShadowType];
  }
}

- (void)setShadowType:(int64_t)a3
{
  if (self->_shadowType != a3)
  {
    self->_shadowType = a3;
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
    v12 = [(UIView *)v11 layer];
    [v12 setShadowPathIsBounds:1];
    v13 = [MEMORY[0x277D75348] blackColor];
    [v12 setShadowColor:{objc_msgSend(v13, "CGColor")}];

    [v12 setShadowOffset:{0.0, self->_cornerRadius}];
    [v12 setShadowRadius:self->_cornerRadius];
    LODWORD(v14) = 1041865114;
    [v12 setShadowOpacity:v14];
    [v12 setCornerRadius:self->_cornerRadius];
    [v12 setCornerCurve:*MEMORY[0x277CDA138]];
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