@interface VKCSubjectLiftView
- (CALayer)diffuseShadowLayer;
- (CALayer)rimShadowLayer;
- (void)setShadowsVisible:(BOOL)a3;
@end

@implementation VKCSubjectLiftView

- (void)setShadowsVisible:(BOOL)a3
{
  if (self->_shadowsVisible != a3)
  {
    self->_shadowsVisible = a3;
    if (a3)
    {
      v4 = 0.2;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = [(VKCSubjectLiftView *)self diffuseShadowLayer];
    *&v6 = v4;
    [v5 setShadowOpacity:v6];

    if (self->_shadowsVisible)
    {
      v7 = 0.1;
    }

    else
    {
      v7 = 0.0;
    }

    v9 = [(VKCSubjectLiftView *)self rimShadowLayer];
    *&v8 = v7;
    [v9 setShadowOpacity:v8];
  }
}

- (CALayer)diffuseShadowLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_diffuseShadowLayer);

  return WeakRetained;
}

- (CALayer)rimShadowLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_rimShadowLayer);

  return WeakRetained;
}

@end