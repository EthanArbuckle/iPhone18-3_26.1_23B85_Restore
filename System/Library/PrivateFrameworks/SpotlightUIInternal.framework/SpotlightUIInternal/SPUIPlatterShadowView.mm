@interface SPUIPlatterShadowView
- (SPUIPlatterShadowView)init;
- (void)_setContinuousCornerRadius:(double)radius;
@end

@implementation SPUIPlatterShadowView

- (SPUIPlatterShadowView)init
{
  v7.receiver = self;
  v7.super_class = SPUIPlatterShadowView;
  v2 = [(SPUIPlatterShadowView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    layer = [(SPUIPlatterShadowView *)v2 layer];
    LODWORD(v5) = 0.5;
    [layer setShadowOpacity:v5];
    [layer setShadowOffset:{0.0, 10.0}];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];
    [(SPUIPlatterShadowView *)v3 effectiveScreenScale];
    [layer setContentsScale:?];
    [layer setShadowPathIsBounds:1];
    if (_UISolariumEnabled())
    {
      [layer setPunchoutShadow:1];
    }

    else
    {
      [layer setShadowRadius:20.0];
      [layer setCornerRadius:20.0];
    }
  }

  return v3;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = SPUIPlatterShadowView;
  [(SPUIPlatterShadowView *)&v6 _setContinuousCornerRadius:?];
  layer = [(SPUIPlatterShadowView *)self layer];
  [layer setShadowRadius:radius];
}

@end