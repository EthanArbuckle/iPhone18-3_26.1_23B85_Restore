@interface _SBSystemApertureMagiciansCurtainView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_SBSystemApertureMagiciansCurtainView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation _SBSystemApertureMagiciansCurtainView

- (_SBSystemApertureMagiciansCurtainView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SBSystemApertureMagiciansCurtainView;
  v3 = [(_SBSystemApertureGainMapView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBGainMapView *)v3->super._gainMapView setSupportsHitTesting:0];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [mEMORY[0x277D67E28] sensorRegionSize];
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
  mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [mEMORY[0x277D67E28] sensorRegionSize];
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  window = [(_SBSystemApertureMagiciansCurtainView *)self window];
  [SBSystemApertureContainerView _defaultCornerRadiusForBounds:window inWindow:v5, v7, v9, v11];
  [(_SBSystemApertureGainMapView *)self setIDCornerRadius:?];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _SBSystemApertureMagiciansCurtainView;
  v5 = [(_SBSystemApertureMagiciansCurtainView *)&v10 hitTest:event withEvent:test.x, test.y];
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