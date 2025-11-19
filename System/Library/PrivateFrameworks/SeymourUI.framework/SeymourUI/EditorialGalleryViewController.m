@interface EditorialGalleryViewController
- (_TtC9SeymourUI30EditorialGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backButtonPressed;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EditorialGalleryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BE47AE0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_20BE47CC8(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for EditorialGalleryViewController();
  v4 = v7.receiver;
  [(EditorialGalleryViewController *)&v7 viewIsAppearing:v3];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE82C08(v5, v6);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditorialGalleryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  v10 = self;
  [(EditorialGalleryViewController *)&v12 viewDidAppear:v3];
  v11[1] = v10;
  (*(v6 + 16))(v8, *(&v10->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_metricPage, v5);
  sub_20BE492C4(&qword_27C76F690);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20BE492C4(&qword_27C76F680);
  sub_20BE492C4(&qword_27C76F688);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BE483DC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for EditorialGalleryViewController();
  v4 = v5.receiver;
  [(EditorialGalleryViewController *)&v5 viewDidDisappear:v3];
  sub_20BE492C4(&qword_27C76F680);
  sub_20BE492C4(&qword_27C76F688);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for EditorialGalleryViewController();
  v2 = v10.receiver;
  [(EditorialGalleryViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)backButtonPressed
{
  v4 = self;
  v2 = [(EditorialGalleryViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

- (_TtC9SeymourUI30EditorialGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end