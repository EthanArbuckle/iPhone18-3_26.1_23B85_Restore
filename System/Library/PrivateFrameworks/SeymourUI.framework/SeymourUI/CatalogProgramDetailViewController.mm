@interface CatalogProgramDetailViewController
- (_TtC9SeymourUI34CatalogProgramDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)moreOptionsButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CatalogProgramDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20C045C98();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20C045DD8(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogProgramDetailViewController();
  v4 = v7.receiver;
  [(CatalogProgramDetailViewController *)&v7 viewIsAppearing:appearingCopy];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE83FD0(v5, v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20C046068(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20C046394(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogProgramDetailViewController();
  v4 = v7.receiver;
  [(CatalogProgramDetailViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20C048054(&qword_27C771EC0, v5, type metadata accessor for CatalogProgramDetailViewController);
  sub_20C048054(&qword_27C771EC8, v6, type metadata accessor for CatalogProgramDetailViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CatalogProgramDetailViewController();
  v2 = v10.receiver;
  [(CatalogProgramDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page);
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
  sub_20C046C3C();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC9SeymourUI34CatalogProgramDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end