@interface TUNonAnimatingLayer
- (TUNonAnimatingLayer)init;
@end

@implementation TUNonAnimatingLayer

- (TUNonAnimatingLayer)init
{
  v6.receiver = self;
  v6.super_class = TUNonAnimatingLayer;
  v2 = [(TUNonAnimatingLayer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUNonAnimatingLayerDelegate);
    layerDelegate = v2->_layerDelegate;
    v2->_layerDelegate = v3;

    [(TUNonAnimatingLayer *)v2 setDelegate:v2->_layerDelegate];
  }

  return v2;
}

@end