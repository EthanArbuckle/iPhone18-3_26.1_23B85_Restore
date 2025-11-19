@interface PhotosFullscreenPlaybackOverlayController
- (CGSize)effectiveContentSize;
- (UIViewController)containerViewController;
@end

@implementation PhotosFullscreenPlaybackOverlayController

- (UIViewController)containerViewController
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)effectiveContentSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end