@interface WorkoutPlanAlternativesViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI37WorkoutPlanAlternativesViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI37WorkoutPlanAlternativesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WorkoutPlanAlternativesViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 440.0;
    v7 = 400.0;
  }

  else
  {
    v12.receiver = v4;
    v12.super_class = ObjectType;
    [(WorkoutPlanAlternativesViewController *)&v12 preferredContentSize];
    v9 = v8;
    v11 = v10;

    v7 = v9;
    v6 = v11;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  [(WorkoutPlanAlternativesViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI37WorkoutPlanAlternativesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_resignActiveObserver) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_visibility) = 1;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  WorkoutPlanAlternativesViewController.viewDidLoad()();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = self;
  [(WorkoutPlanAlternativesViewController *)&v12 viewWillDisappear:v3];
  v11[1] = v10;
  sub_20C132E84();
  sub_20B7FE61C(&qword_27C766020);
  sub_20C139274();
  (*(v7 + 8))(v9, v6);
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(WorkoutPlanAlternativesViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] + 48);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (_TtC9SeymourUI37WorkoutPlanAlternativesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end