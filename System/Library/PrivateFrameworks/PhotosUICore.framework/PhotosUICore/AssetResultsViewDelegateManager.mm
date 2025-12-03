@interface AssetResultsViewDelegateManager
- (_TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager)init;
- (id)photosViewController:(id)controller animationForProposedAnimation:(id)animation;
- (void)photosViewController:(id)controller didPresentOneUp:(BOOL)up forAsset:(id)asset;
- (void)photosViewController:(id)controller didReceiveUserInteraction:(BOOL)interaction;
- (void)photosViewController:(id)controller scrollViewControllerWillBeginScrolling:(id)scrolling;
@end

@implementation AssetResultsViewDelegateManager

- (_TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)photosViewController:(id)controller scrollViewControllerWillBeginScrolling:(id)scrolling
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder);
  selfCopy = self;
  v4();
}

- (void)photosViewController:(id)controller didReceiveUserInteraction:(BOOL)interaction
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder);
  selfCopy = self;
  v4();
}

- (void)photosViewController:(id)controller didPresentOneUp:(BOOL)up forAsset:(id)asset
{
  controllerCopy = controller;
  assetCopy = asset;
  selfCopy = self;
  sub_1A466A71C(assetCopy);
}

- (id)photosViewController:(id)controller animationForProposedAnimation:(id)animation
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  animationCopy = animation;
  objCClassFromMetadata = [ObjCClassFromMetadata sharedInstance];
  enableSearchResultDiffAnimation = [objCClassFromMetadata enableSearchResultDiffAnimation];

  if ((enableSearchResultDiffAnimation & 1) == 0)
  {

    animationCopy = 0;
  }

  return animationCopy;
}

@end