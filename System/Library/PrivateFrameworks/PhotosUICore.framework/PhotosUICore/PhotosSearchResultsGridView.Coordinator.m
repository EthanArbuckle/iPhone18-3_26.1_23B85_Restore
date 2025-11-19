@interface PhotosSearchResultsGridView.Coordinator
- (_TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator)init;
- (id)photosViewController:(id)a3 animationForProposedAnimation:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)photosViewController:(id)a3 didPresentOneUp:(BOOL)a4 forAsset:(id)a5;
- (void)photosViewController:(id)a3 didReceiveUserInteraction:(BOOL)a4;
- (void)photosViewController:(id)a3 scrollViewControllerWillBeginScrolling:(id)a4;
- (void)requestUserInfo:(id)a3;
- (void)viewController:(id)a3 didUpdateBarsAnimated:(BOOL)a4 isSelecting:(BOOL)a5;
@end

@implementation PhotosSearchResultsGridView.Coordinator

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1A45532EC(v8);
}

- (void)photosViewController:(id)a3 scrollViewControllerWillBeginScrolling:(id)a4
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1A524B904();
}

- (void)photosViewController:(id)a3 didReceiveUserInteraction:(BOOL)a4
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1A524B904();
}

- (void)photosViewController:(id)a3 didPresentOneUp:(BOOL)a4 forAsset:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  sub_1A4553714(v8);
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

- (void)viewController:(id)a3 didUpdateBarsAnimated:(BOOL)a4 isSelecting:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_1A4553C9C(v6);
}

- (void)requestUserInfo:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1A454F5BC(sub_1A4554A54, v5);
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  sub_1A524CC54();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = self;
  v8 = a3;
  v9 = self;
  sub_1A3C67884(sub_1A4554DBC, v10);
}

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A4554378();
}

- (_TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end