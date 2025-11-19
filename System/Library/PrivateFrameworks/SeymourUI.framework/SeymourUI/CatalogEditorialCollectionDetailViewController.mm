@interface CatalogEditorialCollectionDetailViewController
- (_TtC9SeymourUI46CatalogEditorialCollectionDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)moreOptionsButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CatalogEditorialCollectionDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BD1780C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v15.receiver = self;
  v15.super_class = v9;
  v10 = self;
  [(CatalogEditorialCollectionDetailViewController *)&v15 viewDidAppear:v3];
  v11 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider;
  sub_20BF657DC();
  v14[1] = *(&v10->super.super.super.isa + v11);
  sub_20BF659E4(v8);
  type metadata accessor for CatalogEditorialCollectionPageDataProvider();
  sub_20BD191D4(&qword_27C76E1F0, 255, type metadata accessor for CatalogEditorialCollectionPageDataProvider);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20BD191D4(&qword_27C76E1D8, v12, type metadata accessor for CatalogEditorialCollectionDetailViewController);
  sub_20BD191D4(&qword_27C76E1E8, v13, type metadata accessor for CatalogEditorialCollectionDetailViewController);
  sub_20C139364();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v4 = v7.receiver;
  [(CatalogEditorialCollectionDetailViewController *)&v7 viewDidDisappear:v3];
  sub_20BD191D4(&qword_27C76E1D8, v5, type metadata accessor for CatalogEditorialCollectionDetailViewController);
  sub_20BD191D4(&qword_27C76E1E8, v6, type metadata accessor for CatalogEditorialCollectionDetailViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v2 = v10.receiver;
  [(CatalogEditorialCollectionDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] + 32);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_20BD17CBC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BD17EB0(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v4 = v7.receiver;
  [(CatalogEditorialCollectionDetailViewController *)&v7 viewIsAppearing:v3];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE82728(v5, v6);
}

- (void)moreOptionsButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  sub_20BD18630();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC9SeymourUI46CatalogEditorialCollectionDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end