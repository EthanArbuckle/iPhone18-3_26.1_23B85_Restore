@interface TrainerDetailViewController
- (_TtC9SeymourUI27TrainerDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)moreOptionsButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TrainerDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B8B7630();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20B8B7770(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TrainerDetailViewController();
  v4 = v7.receiver;
  [(TrainerDetailViewController *)&v7 viewIsAppearing:appearingCopy];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE81834(v5, v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20B8B7A00(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20B8B7D2C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TrainerDetailViewController();
  v4 = v7.receiver;
  [(TrainerDetailViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20B8B9520(&qword_27C7671D8, v5, type metadata accessor for TrainerDetailViewController);
  sub_20B8B9520(&qword_27C7671E0, v6, type metadata accessor for TrainerDetailViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TrainerDetailViewController();
  v2 = v10.receiver;
  [(TrainerDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)moreOptionsButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  sub_20B8B85D4();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC9SeymourUI27TrainerDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end