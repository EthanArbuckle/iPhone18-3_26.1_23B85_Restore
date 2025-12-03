@interface CALayer(RBLayerScreen)
- (void)observeDisplayHeadroomChanges:()RBLayerScreen;
@end

@implementation CALayer(RBLayerScreen)

- (void)observeDisplayHeadroomChanges:()RBLayerScreen
{
  WeakRetained = objc_loadWeakRetained(self);
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained displayHeadroomMayHaveChanged])
  {
    v4 = dispatch_time(0, 250000000);
    dispatch_after_f(v4, MEMORY[0x1E69E96A0], self, [CALayer(RBLayerScreen) observeDisplayHeadroomChanges:]::HeadroomObserver::callback);
  }

  else if (self)
  {
    objc_destroyWeak(self);
    MEMORY[0x19A8C09E0](self, 0x80C40B8603338);
  }
}

@end