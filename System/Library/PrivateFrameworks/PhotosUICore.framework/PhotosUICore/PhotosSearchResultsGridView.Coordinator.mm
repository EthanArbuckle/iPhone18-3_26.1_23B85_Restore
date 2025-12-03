@interface PhotosSearchResultsGridView.Coordinator
- (_TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator)init;
- (id)photosViewController:(id)controller animationForProposedAnimation:(id)animation;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosDataSource:(id)source didChange:(id)change;
- (void)photosViewController:(id)controller didPresentOneUp:(BOOL)up forAsset:(id)asset;
- (void)photosViewController:(id)controller didReceiveUserInteraction:(BOOL)interaction;
- (void)photosViewController:(id)controller scrollViewControllerWillBeginScrolling:(id)scrolling;
- (void)requestUserInfo:(id)info;
- (void)viewController:(id)controller didUpdateBarsAnimated:(BOOL)animated isSelecting:(BOOL)selecting;
@end

@implementation PhotosSearchResultsGridView.Coordinator

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1A45532EC(viewControllerCopy);
}

- (void)photosViewController:(id)controller scrollViewControllerWillBeginScrolling:(id)scrolling
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1A524B904();
}

- (void)photosViewController:(id)controller didReceiveUserInteraction:(BOOL)interaction
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1A524B904();
}

- (void)photosViewController:(id)controller didPresentOneUp:(BOOL)up forAsset:(id)asset
{
  controllerCopy = controller;
  assetCopy = asset;
  selfCopy = self;
  sub_1A4553714(assetCopy);
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

- (void)viewController:(id)controller didUpdateBarsAnimated:(BOOL)animated isSelecting:(BOOL)selecting
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1A4553C9C(controllerCopy);
}

- (void)requestUserInfo:(id)info
{
  v4 = _Block_copy(info);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A454F5BC(sub_1A4554A54, v5);
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  sub_1A524CC54();
  v10[2] = observable;
  v10[3] = change;
  v10[4] = self;
  observableCopy = observable;
  selfCopy = self;
  sub_1A3C67884(sub_1A4554DBC, v10);
}

- (void)photosDataSource:(id)source didChange:(id)change
{
  sourceCopy = source;
  changeCopy = change;
  selfCopy = self;
  sub_1A4554378();
}

- (_TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end