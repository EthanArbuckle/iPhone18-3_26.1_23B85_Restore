@interface _UIPlatterSoftShadowView
- (_UIPlatterSoftShadowView)initWithFrame:(CGRect)a3 shadowPath:(id)a4;
- (void)_updateForShadowPath;
- (void)setNeedsPunchOut:(BOOL)a3;
- (void)setShadowPath:(id)a3;
@end

@implementation _UIPlatterSoftShadowView

- (_UIPlatterSoftShadowView)initWithFrame:(CGRect)a3 shadowPath:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = _UIPlatterSoftShadowView;
  v10 = [(UIView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(_UIPlatterSoftShadowView *)v10 setShadowPath:v9];
    [(_UIPlatterSoftShadowView *)v11 _updateForShadowPath];
  }

  return v11;
}

- (void)setNeedsPunchOut:(BOOL)a3
{
  if (self->_needsPunchOut != a3)
  {
    self->_needsPunchOut = a3;
    [(_UIPlatterShadowView *)self->_rimShadowView setPunchOut:?];
    needsPunchOut = self->_needsPunchOut;
    diffuseShadowView = self->_diffuseShadowView;

    [(_UIPlatterShadowView *)diffuseShadowView setPunchOut:needsPunchOut];
  }
}

- (void)setShadowPath:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_shadowPath] & 1) == 0)
  {
    v4 = [v6 copy];
    shadowPath = self->_shadowPath;
    self->_shadowPath = v4;

    [(_UIPlatterSoftShadowView *)self _updateForShadowPath];
  }
}

- (void)_updateForShadowPath
{
  [(UIView *)self->_rimShadowView removeFromSuperview];
  rimShadowView = self->_rimShadowView;
  self->_rimShadowView = 0;

  [(UIView *)self->_diffuseShadowView removeFromSuperview];
  diffuseShadowView = self->_diffuseShadowView;
  self->_diffuseShadowView = 0;

  v5 = [(_UIPlatterSoftShadowView *)self shadowPath];

  if (v5)
  {
    v6 = [_UIPlatterShadowView alloc];
    v7 = [(_UIPlatterSoftShadowView *)self shadowPath];
    v8 = [(_UIPlatterShadowView *)v6 initWithShadowPath:v7];
    v9 = self->_rimShadowView;
    self->_rimShadowView = v8;

    [(_UIPlatterShadowView *)self->_rimShadowView setShadowOpacity:0.2];
    [(_UIPlatterShadowView *)self->_rimShadowView setShadowOffset:0.0, 1.0];
    [(_UIPlatterShadowView *)self->_rimShadowView setShadowRadius:3.0];
    [(UIView *)self addSubview:self->_rimShadowView];
    v10 = [_UIPlatterShadowView alloc];
    v11 = [(_UIPlatterSoftShadowView *)self shadowPath];
    v12 = [(_UIPlatterShadowView *)v10 initWithShadowPath:v11];
    v13 = self->_diffuseShadowView;
    self->_diffuseShadowView = v12;

    [(_UIPlatterShadowView *)self->_diffuseShadowView setShadowOpacity:0.2];
    [(_UIPlatterShadowView *)self->_diffuseShadowView setShadowOffset:0.0, 0.0];
    [(_UIPlatterShadowView *)self->_diffuseShadowView setShadowRadius:20.0];
    v14 = self->_diffuseShadowView;

    [(UIView *)self addSubview:v14];
  }
}

@end