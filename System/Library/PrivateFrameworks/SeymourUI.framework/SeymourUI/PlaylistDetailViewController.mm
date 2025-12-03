@interface PlaylistDetailViewController
- (_TtC9SeymourUI28PlaylistDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)backButtonPressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PlaylistDetailViewController

- (unint64_t)supportedInterfaceOrientations
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_platform) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  PlaylistDetailViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  PlaylistDetailViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_20C1333A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(PlaylistDetailViewController *)&v12 viewDidAppear:appearCopy];
  v11[1] = selfCopy;
  (*(v7 + 16))(v9, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage, v6);
  sub_20BF28F28(&qword_27C770778);
  sub_20C138C54();
  (*(v7 + 8))(v9, v6);
  sub_20BF28F28(&qword_27C770780);
  sub_20BF28F28(&qword_27C770788);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  PlaylistDetailViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PlaylistDetailViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20BF28F28(&qword_27C770780);
  sub_20BF28F28(&qword_27C770788);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(PlaylistDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)backButtonPressed
{
  selfCopy = self;
  navigationController = [(PlaylistDetailViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (_TtC9SeymourUI28PlaylistDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end