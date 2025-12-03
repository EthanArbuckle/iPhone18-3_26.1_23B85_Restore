@interface SuggestLessPeopleOptionSelectionViewController
- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithCoder:(id)coder;
- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithPeople:(id)people delegate:(id)delegate completionHandler:(id)handler;
- (void)setupOptionSelectionView;
- (void)viewDidLoad;
@end

@implementation SuggestLessPeopleOptionSelectionViewController

- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithPeople:(id)people delegate:(id)delegate completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v7 = sub_1A524CA34();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  swift_unknownObjectRetain();
  v9 = sub_1A442FE98(v7, delegate, sub_1A3D7A9AC, v8);
  swift_unknownObjectRelease();

  return v9;
}

- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_completionHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SuggestLessPeopleOptionSelectionViewController();
  v2 = v3.receiver;
  [(SuggestLessPeopleOptionSelectionViewController *)&v3 viewDidLoad];
  [v2 setupOptionSelectionView];
}

- (void)setupOptionSelectionView
{
  selfCopy = self;
  sub_1A442B354();
}

- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end