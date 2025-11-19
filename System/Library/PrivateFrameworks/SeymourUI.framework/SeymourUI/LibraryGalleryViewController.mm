@interface LibraryGalleryViewController
- (_TtC9SeymourUI28LibraryGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LibraryGalleryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20B92A124();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_20B92A2A8(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LibraryGalleryViewController();
  v4 = v7.receiver;
  [(LibraryGalleryViewController *)&v7 viewIsAppearing:v3];
  [*(*(*&v4[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
  sub_20BE81D30(v5, v6);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LibraryGalleryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  v10 = self;
  [(LibraryGalleryViewController *)&v12 viewDidAppear:v3];
  v11[1] = v10;
  (*(v6 + 16))(v8, *(&v10->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_metricPage, v5);
  sub_20B92B584(&qword_27C767CF8);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20B92B584(&qword_27C767CE8);
  sub_20B92B584(&qword_27C767CF0);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20B92A710(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryGalleryViewController();
  v4 = v5.receiver;
  [(LibraryGalleryViewController *)&v5 viewDidDisappear:v3];
  sub_20B92B584(&qword_27C767CE8);
  sub_20B92B584(&qword_27C767CF0);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for LibraryGalleryViewController();
  v2 = v10.receiver;
  [(LibraryGalleryViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (_TtC9SeymourUI28LibraryGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end