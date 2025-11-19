@interface PhotosSearchResultViewController
- (BOOL)resetToInitialStateIfPossible;
- (_TtC12PhotosUICore32PhotosSearchResultViewController)initWithConfiguration:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)swift_scrollViewControllerDidScroll:(id)a3;
- (void)viewDidLoad;
@end

@implementation PhotosSearchResultViewController

- (void)viewDidLoad
{
  v2 = self;
  PhotosSearchResultViewController.viewDidLoad()();
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1A3F3D4CC;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  PhotosSearchResultViewController.present(_:animated:completion:)(v10, a4, v8, v9);
  sub_1A3C33378(v8);
}

- (void)swift_scrollViewControllerDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A45514DC(v4);
}

- (BOOL)resetToInitialStateIfPossible
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PXPhotosUIViewController *)&v5 resetToInitialStateIfPossible];
}

- (_TtC12PhotosUICore32PhotosSearchResultViewController)initWithConfiguration:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(PXPhotosUIViewController *)&v7 initWithConfiguration:a3];
}

@end