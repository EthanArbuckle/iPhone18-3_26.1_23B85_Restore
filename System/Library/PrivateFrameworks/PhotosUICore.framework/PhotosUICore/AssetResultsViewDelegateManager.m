@interface AssetResultsViewDelegateManager
- (_TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager)init;
- (id)photosViewController:(id)a3 animationForProposedAnimation:(id)a4;
- (void)photosViewController:(id)a3 didPresentOneUp:(BOOL)a4 forAsset:(id)a5;
- (void)photosViewController:(id)a3 didReceiveUserInteraction:(BOOL)a4;
- (void)photosViewController:(id)a3 scrollViewControllerWillBeginScrolling:(id)a4;
@end

@implementation AssetResultsViewDelegateManager

- (_TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)photosViewController:(id)a3 scrollViewControllerWillBeginScrolling:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder);
  v5 = self;
  v4();
}

- (void)photosViewController:(id)a3 didReceiveUserInteraction:(BOOL)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder);
  v5 = self;
  v4();
}

- (void)photosViewController:(id)a3 didPresentOneUp:(BOOL)a4 forAsset:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  sub_1A466A71C(v8);
}

- (id)photosViewController:(id)a3 animationForProposedAnimation:(id)a4
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = a4;
  v7 = [ObjCClassFromMetadata sharedInstance];
  v8 = [v7 enableSearchResultDiffAnimation];

  if ((v8 & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

@end