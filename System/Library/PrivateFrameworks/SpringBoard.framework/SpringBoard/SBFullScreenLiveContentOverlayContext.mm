@interface SBFullScreenLiveContentOverlayContext
- (SBFullScreenLiveContentOverlayContext)initWithOverlay:(id)a3;
@end

@implementation SBFullScreenLiveContentOverlayContext

- (SBFullScreenLiveContentOverlayContext)initWithOverlay:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBFullScreenLiveContentOverlayContext;
  v6 = [(SBFullScreenLiveContentOverlayContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overlay, a3);
    v7->_overlayType = [v5 overlayType];
  }

  return v7;
}

@end