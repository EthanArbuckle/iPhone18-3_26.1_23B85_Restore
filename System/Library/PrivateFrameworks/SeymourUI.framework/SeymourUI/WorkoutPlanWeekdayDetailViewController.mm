@interface WorkoutPlanWeekdayDetailViewController
- (_TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WorkoutPlanWeekdayDetailViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(WorkoutPlanWeekdayDetailViewController *)&v4 viewDidLoad];
  sub_20B794934(0);
  sub_20B7960C4();
  v3 = *(*(*&v2[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider] + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  [v3 setAlwaysBounceVertical_];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(WorkoutPlanWeekdayDetailViewController *)&v5 viewDidAppear:appearCopy];
  sub_20B589790();
  sub_20B9EE6E8(&qword_27C768EF8);
  sub_20B9EE6E8(&qword_27C768F00);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(WorkoutPlanWeekdayDetailViewController *)&v12 viewWillDisappear:disappearCopy];
  v11[1] = selfCopy;
  sub_20C132E84();
  sub_20B9EE6E8(&qword_27C768EF8);
  sub_20C139274();
  (*(v7 + 8))(v9, v6);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(WorkoutPlanWeekdayDetailViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20B9EE6E8(&qword_27C768EF8);
  sub_20B9EE6E8(&qword_27C768F00);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(WorkoutPlanWeekdayDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider] + 256);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (_TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end