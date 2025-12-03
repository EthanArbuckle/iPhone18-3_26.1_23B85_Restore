@interface _UIPlatterSoftShadowView
- (_UIPlatterSoftShadowView)initWithFrame:(CGRect)frame shadowPath:(id)path;
- (void)_updateForShadowPath;
- (void)setNeedsPunchOut:(BOOL)out;
- (void)setShadowPath:(id)path;
@end

@implementation _UIPlatterSoftShadowView

- (_UIPlatterSoftShadowView)initWithFrame:(CGRect)frame shadowPath:(id)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = _UIPlatterSoftShadowView;
  height = [(UIView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(_UIPlatterSoftShadowView *)height setShadowPath:pathCopy];
    [(_UIPlatterSoftShadowView *)v11 _updateForShadowPath];
  }

  return v11;
}

- (void)setNeedsPunchOut:(BOOL)out
{
  if (self->_needsPunchOut != out)
  {
    self->_needsPunchOut = out;
    [(_UIPlatterShadowView *)self->_rimShadowView setPunchOut:?];
    needsPunchOut = self->_needsPunchOut;
    diffuseShadowView = self->_diffuseShadowView;

    [(_UIPlatterShadowView *)diffuseShadowView setPunchOut:needsPunchOut];
  }
}

- (void)setShadowPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqual:self->_shadowPath] & 1) == 0)
  {
    v4 = [pathCopy copy];
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

  shadowPath = [(_UIPlatterSoftShadowView *)self shadowPath];

  if (shadowPath)
  {
    v6 = [_UIPlatterShadowView alloc];
    shadowPath2 = [(_UIPlatterSoftShadowView *)self shadowPath];
    v8 = [(_UIPlatterShadowView *)v6 initWithShadowPath:shadowPath2];
    v9 = self->_rimShadowView;
    self->_rimShadowView = v8;

    [(_UIPlatterShadowView *)self->_rimShadowView setShadowOpacity:0.2];
    [(_UIPlatterShadowView *)self->_rimShadowView setShadowOffset:0.0, 1.0];
    [(_UIPlatterShadowView *)self->_rimShadowView setShadowRadius:3.0];
    [(UIView *)self addSubview:self->_rimShadowView];
    v10 = [_UIPlatterShadowView alloc];
    shadowPath3 = [(_UIPlatterSoftShadowView *)self shadowPath];
    v12 = [(_UIPlatterShadowView *)v10 initWithShadowPath:shadowPath3];
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