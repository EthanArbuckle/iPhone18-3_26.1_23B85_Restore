@interface RootViewController
- (_TtC9SeymourUI18RootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)accountButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation RootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BE86950();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BE86C14(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootViewController();
  v4 = v7.receiver;
  [(RootViewController *)&v7 viewIsAppearing:appearingCopy];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE83104(v5, v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BE86F00(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BE873C4(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewDidDisappear:disappearCopy];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20BE8781C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)accountButtonTapped:(id)tapped
{
  selfCopy = self;
  sub_20BE8462C();
}

- (_TtC9SeymourUI18RootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end