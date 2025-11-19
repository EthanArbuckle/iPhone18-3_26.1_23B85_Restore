@interface _UITextLayoutFragmentSurfaceHostingView
- (CGPoint)_activeContainerOrigin;
- (CGRect)_activeClipRect;
- (CGRect)_activeLayoutFragmentFrame;
- (void)_updateGeometry;
- (void)teardown;
- (void)updateWithSurface:(id)a3;
@end

@implementation _UITextLayoutFragmentSurfaceHostingView

- (void)_updateGeometry
{
  if (self->_surface)
  {
    v18.receiver = self;
    v18.super_class = _UITextLayoutFragmentSurfaceHostingView;
    [(_UITextLayoutFragmentViewBase *)&v18 _updateGeometry];
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(NSCustomTextSurface *)self->_surface layer];
    [v11 setBounds:{v4, v6, v8, v10}];

    v12 = [(NSCustomTextSurface *)self->_surface layer];
    [v12 setAnchorPoint:{0.0, 0.0}];

    [(UIView *)self bounds];
    v14 = v13;
    v16 = v15;
    v17 = [(NSCustomTextSurface *)self->_surface layer];
    [v17 setPosition:{v14, v16}];
  }
}

- (CGRect)_activeLayoutFragmentFrame
{
  v3 = [(_UITextLayoutFragmentViewBase *)self layoutFragment];
  [v3 layoutFragmentFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  surface = self->_surface;
  if (surface)
  {
    [(NSCustomTextSurface *)surface adjustedLayoutFragmentFrame:v5, v7, v9, v11];
    v5 = v13;
    v7 = v14;
    v9 = v15;
    v11 = v16;
  }

  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_activeClipRect
{
  [(_UITextLayoutFragmentViewBase *)self clipRect];
  surface = self->_surface;
  if (surface)
  {
    [(NSCustomTextSurface *)surface adjustedClipRect:?];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)_activeContainerOrigin
{
  [(_UITextLayoutFragmentViewBase *)self containerOrigin];
  surface = self->_surface;
  if (surface)
  {

    [(NSCustomTextSurface *)surface adjustedContainerOrigin:?];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)updateWithSurface:(id)a3
{
  v5 = a3;
  surface = self->_surface;
  v17 = v5;
  if (surface != v5)
  {
    p_hostedLayer = &self->_hostedLayer;
    v8 = [(CALayer *)self->_hostedLayer superlayer];
    v9 = [(UIView *)self layer];

    if (v8 == v9)
    {
      [(CALayer *)*p_hostedLayer removeFromSuperlayer];
    }

    objc_storeStrong(&self->_surface, a3);
LABEL_5:
    v10 = [(NSCustomTextSurface *)self->_surface layer];
    v11 = *p_hostedLayer;
    *p_hostedLayer = v10;

    v12 = [(UIView *)self layer];
    [v12 addSublayer:*p_hostedLayer];

    goto LABEL_6;
  }

  v13 = [(NSCustomTextSurface *)surface layer];
  p_hostedLayer = &self->_hostedLayer;
  hostedLayer = self->_hostedLayer;

  if (v13 != hostedLayer)
  {
    v15 = [(CALayer *)*p_hostedLayer superlayer];
    v16 = [(UIView *)self layer];

    if (v15 == v16)
    {
      [(CALayer *)*p_hostedLayer removeFromSuperlayer];
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (void)teardown
{
  v3 = [(CALayer *)self->_hostedLayer superlayer];
  v4 = [(UIView *)self layer];

  if (v3 == v4)
  {
    [(CALayer *)self->_hostedLayer removeFromSuperlayer];
  }

  hostedLayer = self->_hostedLayer;
  self->_hostedLayer = 0;

  surface = self->_surface;
  self->_surface = 0;

  v7.receiver = self;
  v7.super_class = _UITextLayoutFragmentSurfaceHostingView;
  [(_UITextLayoutFragmentViewBase *)&v7 teardown];
}

@end