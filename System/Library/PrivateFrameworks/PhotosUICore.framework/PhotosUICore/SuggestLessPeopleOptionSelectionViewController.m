@interface SuggestLessPeopleOptionSelectionViewController
- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithCoder:(id)a3;
- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithPeople:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)setupOptionSelectionView;
- (void)viewDidLoad;
@end

@implementation SuggestLessPeopleOptionSelectionViewController

- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithPeople:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v7 = sub_1A524CA34();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  swift_unknownObjectRetain();
  v9 = sub_1A442FE98(v7, a4, sub_1A3D7A9AC, v8);
  swift_unknownObjectRelease();

  return v9;
}

- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_1A442B354();
}

- (_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end