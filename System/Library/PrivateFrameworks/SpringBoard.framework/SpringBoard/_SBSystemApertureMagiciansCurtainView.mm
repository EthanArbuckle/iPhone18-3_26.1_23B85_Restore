@interface _SBSystemApertureMagiciansCurtainView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_SBSystemApertureMagiciansCurtainView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation _SBSystemApertureMagiciansCurtainView

- (_SBSystemApertureMagiciansCurtainView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SBSystemApertureMagiciansCurtainView;
  v3 = [(_SBSystemApertureGainMapView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBGainMapView *)v3->super._gainMapView setSupportsHitTesting:0];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [v3 sensorRegionSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _SBSystemApertureMagiciansCurtainView;
  [(_SBSystemApertureMagiciansCurtainView *)&v13 layoutSubviews];
  v3 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [v3 sensorRegionSize];
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_SBSystemApertureMagiciansCurtainView *)self window];
  [SBSystemApertureContainerView _defaultCornerRadiusForBounds:v12 inWindow:v5, v7, v9, v11];
  [(_SBSystemApertureGainMapView *)self setIDCornerRadius:?];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _SBSystemApertureMagiciansCurtainView;
  v5 = [(_SBSystemApertureMagiciansCurtainView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end