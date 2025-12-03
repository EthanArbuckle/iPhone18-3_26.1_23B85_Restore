@interface PhotosSearchResultViewController
- (BOOL)resetToInitialStateIfPossible;
- (_TtC12PhotosUICore32PhotosSearchResultViewController)initWithConfiguration:(id)configuration;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)swift_scrollViewControllerDidScroll:(id)scroll;
- (void)viewDidLoad;
@end

@implementation PhotosSearchResultViewController

- (void)viewDidLoad
{
  selfCopy = self;
  PhotosSearchResultViewController.viewDidLoad()();
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  controllerCopy = controller;
  selfCopy = self;
  PhotosSearchResultViewController.present(_:animated:completion:)(controllerCopy, animated, v8, v9);
  sub_1A3C33378(v8);
}

- (void)swift_scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1A45514DC(scrollCopy);
}

- (BOOL)resetToInitialStateIfPossible
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PXPhotosUIViewController *)&v5 resetToInitialStateIfPossible];
}

- (_TtC12PhotosUICore32PhotosSearchResultViewController)initWithConfiguration:(id)configuration
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(PXPhotosUIViewController *)&v7 initWithConfiguration:configuration];
}

@end