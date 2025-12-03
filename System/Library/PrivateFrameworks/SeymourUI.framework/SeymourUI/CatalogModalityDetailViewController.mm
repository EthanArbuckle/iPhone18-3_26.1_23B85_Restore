@interface CatalogModalityDetailViewController
- (_TtC9SeymourUI35CatalogModalityDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)moreOptionsButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CatalogModalityDetailViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CatalogModalityDetailViewController();
  v2 = v3.receiver;
  [(CatalogModalityDetailViewController *)&v3 viewDidLoad];
  sub_20BE80904();
  sub_20BF9CA20();
  sub_20B795A2C(0);
  sub_20BAD5F7C();
  sub_20BEFFAB4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BF9C00C(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogModalityDetailViewController();
  v4 = v7.receiver;
  [(CatalogModalityDetailViewController *)&v7 viewIsAppearing:appearingCopy];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE83AD4(v5, v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BF9C29C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BF9C5C8(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogModalityDetailViewController();
  v4 = v7.receiver;
  [(CatalogModalityDetailViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20BF9D804(&qword_27C7711B8, v5, type metadata accessor for CatalogModalityDetailViewController);
  sub_20BF9D804(&qword_27C7711C0, v6, type metadata accessor for CatalogModalityDetailViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CatalogModalityDetailViewController();
  v2 = v10.receiver;
  [(CatalogModalityDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page);
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
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20BF9A1E4(sub_20BF9E48C, v5);

  __swift_destroy_boxed_opaque_existential_1(&v6);
}

- (_TtC9SeymourUI35CatalogModalityDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end