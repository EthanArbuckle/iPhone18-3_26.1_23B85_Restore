@interface PlaylistDetailViewController
- (_TtC9SeymourUI28PlaylistDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)backButtonPressed;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v2 = self;
  PlaylistDetailViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  PlaylistDetailViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_20C1333A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = self;
  [(PlaylistDetailViewController *)&v12 viewDidAppear:v3];
  v11[1] = v10;
  (*(v7 + 16))(v9, *(&v10->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage, v6);
  sub_20BF28F28(&qword_27C770778);
  sub_20C138C54();
  (*(v7 + 8))(v9, v6);
  sub_20BF28F28(&qword_27C770780);
  sub_20BF28F28(&qword_27C770788);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  PlaylistDetailViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PlaylistDetailViewController *)&v5 viewDidDisappear:v3];
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
  v4 = self;
  v2 = [(PlaylistDetailViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

- (_TtC9SeymourUI28PlaylistDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end