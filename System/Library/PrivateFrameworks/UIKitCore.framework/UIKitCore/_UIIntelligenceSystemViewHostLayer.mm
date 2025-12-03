@interface _UIIntelligenceSystemViewHostLayer
- (id)_hostLayerDelegate;
- (void)setCornerCurve:(id)curve;
- (void)setCornerRadius:(double)radius;
- (void)setMaskedCorners:(unint64_t)corners;
@end

@implementation _UIIntelligenceSystemViewHostLayer

- (id)_hostLayerDelegate
{
  delegate = [(_UIIntelligenceSystemViewHostLayer *)self delegate];
  v3 = delegate;
  if (delegate && [delegate conformsToProtocol:&unk_1EFE64CC8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = _UIIntelligenceSystemViewHostLayer;
  [(_UIIntelligenceSystemViewHostLayer *)&v6 setCornerRadius:?];
  _hostLayerDelegate = [(_UIIntelligenceSystemViewHostLayer *)self _hostLayerDelegate];
  [_hostLayerDelegate _layerCornerRadiusDidChange:radius];
}

- (void)setCornerCurve:(id)curve
{
  v6.receiver = self;
  v6.super_class = _UIIntelligenceSystemViewHostLayer;
  curveCopy = curve;
  [(_UIIntelligenceSystemViewHostLayer *)&v6 setCornerCurve:curveCopy];
  v5 = [(_UIIntelligenceSystemViewHostLayer *)self _hostLayerDelegate:v6.receiver];
  [v5 _layerCornerCurveDidChange:curveCopy];
}

- (void)setMaskedCorners:(unint64_t)corners
{
  v6.receiver = self;
  v6.super_class = _UIIntelligenceSystemViewHostLayer;
  [(_UIIntelligenceSystemViewHostLayer *)&v6 setMaskedCorners:?];
  _hostLayerDelegate = [(_UIIntelligenceSystemViewHostLayer *)self _hostLayerDelegate];
  [_hostLayerDelegate _layerMaskedCornersDidChange:corners];
}

@end