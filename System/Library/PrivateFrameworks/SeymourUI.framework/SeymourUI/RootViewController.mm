@interface RootViewController
- (_TtC9SeymourUI18RootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)accountButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BE86950();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_20BE86C14(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootViewController();
  v4 = v7.receiver;
  [(RootViewController *)&v7 viewIsAppearing:v3];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE83104(v5, v6);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20BE86F00(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BE873C4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewDidDisappear:v3];
  v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability] = 2;
  sub_20BE8F2DC(&qword_27C76FCE8, type metadata accessor for RootViewController);
  sub_20BE8F2DC(&unk_27C76FCF0, type metadata accessor for RootViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for RootViewController();
  v2 = v10.receiver;
  [(RootViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_20BE8781C(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)accountButtonTapped:(id)a3
{
  v3 = self;
  sub_20BE8462C();
}

- (_TtC9SeymourUI18RootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end