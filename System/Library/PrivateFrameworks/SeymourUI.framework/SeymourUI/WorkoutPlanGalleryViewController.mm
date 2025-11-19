@interface WorkoutPlanGalleryViewController
- (_TtC9SeymourUI32WorkoutPlanGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WorkoutPlanGalleryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BC5DE8C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(WorkoutPlanGalleryViewController *)&v9 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    v8 = [objc_opt_self() whiteColor];
    [v7 setTintColor_];
  }
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
  [(WorkoutPlanGalleryViewController *)&v12 viewDidAppear:v3];
  v11[1] = v10;
  (*(v7 + 16))(v9, *(&v10->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_metricPage, v6);
  sub_20BC5F1B4(&unk_27C76C960);
  sub_20C138C54();
  (*(v7 + 8))(v9, v6);
  sub_20BC5F1B4(&unk_27C76C940);
  sub_20BC5F1B4(&unk_27C76C950);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BC5E384(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(WorkoutPlanGalleryViewController *)&v5 viewDidDisappear:v3];
  sub_20BC5F1B4(&unk_27C76C940);
  sub_20BC5F1B4(&unk_27C76C950);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(WorkoutPlanGalleryViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (_TtC9SeymourUI32WorkoutPlanGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end