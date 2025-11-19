@interface SuggestLessPeopleSelectionViewController
- (_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController)initWithCoder:(id)a3;
- (_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController)initWithPeople:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (void)setupSelectionView;
- (void)viewDidLoad;
@end

@implementation SuggestLessPeopleSelectionViewController

- (_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController)initWithPeople:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v7 = sub_1A524CA34();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  swift_unknownObjectRetain();
  v9 = sub_1A47B9994(v7, a4, sub_1A3D7A9AC, v8);
  swift_unknownObjectRelease();

  return v9;
}

- (_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore40SuggestLessPeopleSelectionViewController_completionHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SuggestLessPeopleSelectionViewController();
  v2 = v3.receiver;
  [(SuggestLessPeopleSelectionViewController *)&v3 viewDidLoad];
  [v2 setupSelectionView];
}

- (void)setupSelectionView
{
  v2 = self;
  sub_1A47B5E3C();
}

- (_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end