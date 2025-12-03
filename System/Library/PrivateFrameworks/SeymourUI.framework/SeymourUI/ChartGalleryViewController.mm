@interface ChartGalleryViewController
- (_TtC9SeymourUI26ChartGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backButtonPressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ChartGalleryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BC3D084();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BC3D1E8(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ChartGalleryViewController();
  v4 = v7.receiver;
  [(ChartGalleryViewController *)&v7 viewIsAppearing:appearingCopy];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE8222C(v5, v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChartGalleryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  selfCopy = self;
  [(ChartGalleryViewController *)&v12 viewDidAppear:appearCopy];
  v11[1] = selfCopy;
  (*(v6 + 16))(v8, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage, v5);
  sub_20BC3E7E4(&qword_27C76C628);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20BC3E7E4(&qword_27C76C618);
  sub_20BC3E7E4(&qword_27C76C620);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BC3D8FC(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ChartGalleryViewController();
  v4 = v5.receiver;
  [(ChartGalleryViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20BC3E7E4(&qword_27C76C618);
  sub_20BC3E7E4(&qword_27C76C620);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ChartGalleryViewController();
  v2 = v10.receiver;
  [(ChartGalleryViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)backButtonPressed
{
  selfCopy = self;
  navigationController = [(ChartGalleryViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (_TtC9SeymourUI26ChartGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end