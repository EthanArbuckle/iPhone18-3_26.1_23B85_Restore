@interface SPUIPlatterShadowView
- (SPUIPlatterShadowView)init;
- (void)_setContinuousCornerRadius:(double)a3;
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
    v4 = [(SPUIPlatterShadowView *)v2 layer];
    LODWORD(v5) = 0.5;
    [v4 setShadowOpacity:v5];
    [v4 setShadowOffset:{0.0, 10.0}];
    [v4 setCornerCurve:*MEMORY[0x277CDA138]];
    [(SPUIPlatterShadowView *)v3 effectiveScreenScale];
    [v4 setContentsScale:?];
    [v4 setShadowPathIsBounds:1];
    if (_UISolariumEnabled())
    {
      [v4 setPunchoutShadow:1];
    }

    else
    {
      [v4 setShadowRadius:20.0];
      [v4 setCornerRadius:20.0];
    }
  }

  return v3;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = SPUIPlatterShadowView;
  [(SPUIPlatterShadowView *)&v6 _setContinuousCornerRadius:?];
  v5 = [(SPUIPlatterShadowView *)self layer];
  [v5 setShadowRadius:a3];
}

@end