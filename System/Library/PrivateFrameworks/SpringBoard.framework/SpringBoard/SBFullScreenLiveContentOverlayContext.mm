@interface SBFullScreenLiveContentOverlayContext
- (SBFullScreenLiveContentOverlayContext)initWithOverlay:(id)overlay;
@end

@implementation SBFullScreenLiveContentOverlayContext

- (SBFullScreenLiveContentOverlayContext)initWithOverlay:(id)overlay
{
  overlayCopy = overlay;
  v9.receiver = self;
  v9.super_class = SBFullScreenLiveContentOverlayContext;
  v6 = [(SBFullScreenLiveContentOverlayContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overlay, overlay);
    v7->_overlayType = [overlayCopy overlayType];
  }

  return v7;
}

@end