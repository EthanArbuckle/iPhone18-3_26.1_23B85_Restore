@interface AXFKATextFieldFocusRingShapeLayer
- (void)updateAppearance;
@end

@implementation AXFKATextFieldFocusRingShapeLayer

- (void)updateAppearance
{
  if ([(AXFKAFocusRingShapeLayer *)self kind]== 1 || ![(AXFKAFocusRingShapeLayer *)self kind])
  {
    tintColor = [(AXFKAFocusRingShapeLayer *)self tintColor];
    v10 = tintColor;
    if (tintColor)
    {
      v2 = [(AXFKAFocusRingShapeLayer *)self bottomFocusRingColorForTintColor:tintColor];
      cGColor = [v2 CGColor];
    }

    else
    {
      cGColor = 0;
    }

    bottomBorderLayer = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer setStrokeColor:cGColor];

    if (v10)
    {
    }

    bottomBorderLayer2 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    LODWORD(v8) = 0.25;
    [bottomBorderLayer2 setOpacity:v8];

    bottomBorderLayer3 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer3 setUnscaledLineWidth:3.0];

    [(AXFKAFocusRingShapeLayer *)self _updateBottomLayerPath];
  }
}

@end