@interface TVRootViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI20TVRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)handleSignInTapped;
- (void)handleSignOutButtonLongPress;
- (void)handleSignOutTapped;
- (void)handleUpNextQueueButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TVRootViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider))[6] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20BB23804();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVRootViewController();
  v4 = v5.receiver;
  [(TVRootViewController *)&v5 viewWillAppear:v3];
  v4[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentability] = 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20BB239E0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BB243FC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVRootViewController();
  v4 = v5.receiver;
  [(TVRootViewController *)&v5 viewDidDisappear:v3];
  v4[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentability] = 2;
  sub_20BB2AA64(&qword_27C76A910, type metadata accessor for TVRootViewController);
  sub_20BB2AA64(&unk_27C76A918, type metadata accessor for TVRootViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TVRootViewController();
  v2 = v10.receiver;
  [(TVRootViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider] + 48);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for TVRootViewController();
  v6 = a3;
  v7 = a4;
  v8 = v14.receiver;
  [(TVRootViewController *)&v14 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  v9 = [v8 navigationController];
  v10 = [v9 visibleViewController];

  if (!v10 || (sub_20B51C88C(0, &qword_281100550), v11 = v8, v12 = sub_20C13D5F4(), v10, v11, v13 = 0, (v12 & 1) == 0))
  {
    v13 = 2;
  }

  sub_20BB1F008(v13);
}

- (void)handleSignInTapped
{
  v2 = self;
  sub_20BB265D4();
}

- (void)handleSignOutButtonLongPress
{
  v2 = self;
  sub_20B8FC47C();
}

- (void)handleSignOutTapped
{
  v2 = self;
  sub_20BB269C8();
}

- (void)handleUpNextQueueButton
{
  v2 = self;
  sub_20BB26E84();
}

- (_TtC9SeymourUI20TVRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end