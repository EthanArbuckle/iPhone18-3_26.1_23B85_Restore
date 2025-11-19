@interface CALayer(RBLayerScreen)
- (void)observeDisplayHeadroomChanges:()RBLayerScreen;
@end

@implementation CALayer(RBLayerScreen)

- (void)observeDisplayHeadroomChanges:()RBLayerScreen
{
  WeakRetained = objc_loadWeakRetained(a1);
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained displayHeadroomMayHaveChanged])
  {
    v4 = dispatch_time(0, 250000000);
    dispatch_after_f(v4, MEMORY[0x1E69E96A0], a1, [CALayer(RBLayerScreen) observeDisplayHeadroomChanges:]::HeadroomObserver::callback);
  }

  else if (a1)
  {
    objc_destroyWeak(a1);
    MEMORY[0x19A8C09E0](a1, 0x80C40B8603338);
  }
}

@end