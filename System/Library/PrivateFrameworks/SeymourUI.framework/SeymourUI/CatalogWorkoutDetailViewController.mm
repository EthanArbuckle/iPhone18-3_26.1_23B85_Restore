@interface CatalogWorkoutDetailViewController
- (_TtC9SeymourUI34CatalogWorkoutDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)moreOptionsButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CatalogWorkoutDetailViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  v2 = v3.receiver;
  [(CatalogWorkoutDetailViewController *)&v3 viewDidLoad];
  sub_20BE80794();
  sub_20BF00F54();
  sub_20B795A10(0);
  sub_20BAD5CFC();
  sub_20BF003BC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BF00540(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  v4 = v7.receiver;
  [(CatalogWorkoutDetailViewController *)&v7 viewIsAppearing:appearingCopy];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE835D8(v5, v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BF007D0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  v4 = v7.receiver;
  [(CatalogWorkoutDetailViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20BF02C58(&unk_27C770518, v5, type metadata accessor for CatalogWorkoutDetailViewController);
  sub_20BF02C58(&unk_27C770530, v6, type metadata accessor for CatalogWorkoutDetailViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  v2 = v10.receiver;
  [(CatalogWorkoutDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BF00C94(disappear);
}

- (void)moreOptionsButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20BF99F98(sub_20BF02C50, v5);

  __swift_destroy_boxed_opaque_existential_1(&v6);
}

- (_TtC9SeymourUI34CatalogWorkoutDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end