@interface PhotosSearchAssetResultsViewController
- (_TtC12PhotosUICore38PhotosSearchAssetResultsViewController)initWithCoder:(id)coder;
- (_TtC12PhotosUICore38PhotosSearchAssetResultsViewController)initWithConfiguration:(id)configuration;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)presentTTRWorkflow;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation PhotosSearchAssetResultsViewController

- (_TtC12PhotosUICore38PhotosSearchAssetResultsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_onViewDidLoad);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_onTapToRadar);
  *v5 = 0;
  v5[1] = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1A42E5624();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PhotosSearchAssetResultsViewController();
  v4 = v10.receiver;
  [(PXPhotosUIViewController *)&v10 viewIsAppearing:appearingCopy];
  viewModel = [v4 viewModel];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v9[4] = sub_1A42E6474;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3D7692C;
  v9[3] = &block_descriptor_27_2;
  v7 = _Block_copy(v9);
  v8 = v4;

  [viewModel performChanges_];

  _Block_release(v7);
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  selfCopy = self;
  sub_1A42E58E0(observableCopy, change, context);
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PhotosSearchAssetResultsViewController();
  v2 = v6.receiver;
  [(PhotosSearchAssetResultsViewController *)&v6 viewDidLayoutSubviews];
  v3 = &v2[OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)presentTTRWorkflow
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_onTapToRadar);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_1A3D607F0(v2);
    v2(v4);

    sub_1A3C33378(v2);
  }
}

- (_TtC12PhotosUICore38PhotosSearchAssetResultsViewController)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end