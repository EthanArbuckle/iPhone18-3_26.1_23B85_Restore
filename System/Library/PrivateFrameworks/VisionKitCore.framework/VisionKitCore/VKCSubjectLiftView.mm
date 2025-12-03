@interface VKCSubjectLiftView
- (CALayer)diffuseShadowLayer;
- (CALayer)rimShadowLayer;
- (void)setShadowsVisible:(BOOL)visible;
@end

@implementation VKCSubjectLiftView

- (void)setShadowsVisible:(BOOL)visible
{
  if (self->_shadowsVisible != visible)
  {
    self->_shadowsVisible = visible;
    if (visible)
    {
      v4 = 0.2;
    }

    else
    {
      v4 = 0.0;
    }

    diffuseShadowLayer = [(VKCSubjectLiftView *)self diffuseShadowLayer];
    *&v6 = v4;
    [diffuseShadowLayer setShadowOpacity:v6];

    if (self->_shadowsVisible)
    {
      v7 = 0.1;
    }

    else
    {
      v7 = 0.0;
    }

    rimShadowLayer = [(VKCSubjectLiftView *)self rimShadowLayer];
    *&v8 = v7;
    [rimShadowLayer setShadowOpacity:v8];
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