@interface _UIIntelligenceSystemViewHostLayer
- (id)_hostLayerDelegate;
- (void)setCornerCurve:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setMaskedCorners:(unint64_t)a3;
@end

@implementation _UIIntelligenceSystemViewHostLayer

- (id)_hostLayerDelegate
{
  v2 = [(_UIIntelligenceSystemViewHostLayer *)self delegate];
  v3 = v2;
  if (v2 && [v2 conformsToProtocol:&unk_1EFE64CC8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = _UIIntelligenceSystemViewHostLayer;
  [(_UIIntelligenceSystemViewHostLayer *)&v6 setCornerRadius:?];
  v5 = [(_UIIntelligenceSystemViewHostLayer *)self _hostLayerDelegate];
  [v5 _layerCornerRadiusDidChange:a3];
}

- (void)setCornerCurve:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIIntelligenceSystemViewHostLayer;
  v4 = a3;
  [(_UIIntelligenceSystemViewHostLayer *)&v6 setCornerCurve:v4];
  v5 = [(_UIIntelligenceSystemViewHostLayer *)self _hostLayerDelegate:v6.receiver];
  [v5 _layerCornerCurveDidChange:v4];
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UIIntelligenceSystemViewHostLayer;
  [(_UIIntelligenceSystemViewHostLayer *)&v6 setMaskedCorners:?];
  v5 = [(_UIIntelligenceSystemViewHostLayer *)self _hostLayerDelegate];
  [v5 _layerMaskedCornersDidChange:a3];
}

@end