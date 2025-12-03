@interface RemoteBrowsingDiscoveryViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (NSArray)preferredFocusEnvironments;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC9SeymourUI37RemoteBrowsingDiscoveryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)handleKohnahmiCodeSequence;
- (void)handleMenuButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RemoteBrowsingDiscoveryViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)handleKohnahmiCodeSequence
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  sub_20BAFBA94();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B7A4720();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20B7A4E74(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20B7A53CC(disappear);
}

- (void)handleMenuButtonTapped
{
  selfCopy = self;
  sub_20B7A5654();
}

- (_TtC9SeymourUI37RemoteBrowsingDiscoveryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  v5 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_presenter);
  v9 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  sub_20B7A80F4(v8 + v9, v7, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_20B7A815C(v7, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  }

  else
  {
    v11 = sub_20C135174();
    (*(*(v11 - 8) + 8))(v7, v11);
  }

  return EnumCaseMultiPayload == 0;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_20C133244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  selfCopy = self;
  v10 = sub_20C133224();
  sub_20BB03E68(v10);
  (*(v6 + 8))(v8, v5);
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_20B7A7F18(viewCopy);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

@end