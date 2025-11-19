@interface TVWorkoutPlanDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI33TVWorkoutPlanDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TVWorkoutPlanDetailViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider))[63] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)viewDidLoad
{
  v2 = self;
  TVWorkoutPlanDetailViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  TVWorkoutPlanDetailViewController.viewDidLayoutSubviews()();
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
  [(TVWorkoutPlanDetailViewController *)&v12 viewDidAppear:v3];
  v11[1] = *(&v10->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider);
  sub_20BE1CF94(v9);
  type metadata accessor for TVWorkoutPlanDetailPageDataProvider();
  sub_20BDD8B20(&qword_27C76EF10, type metadata accessor for TVWorkoutPlanDetailPageDataProvider);
  sub_20C138C54();
  (*(v7 + 8))(v9, v6);
  sub_20BDD8B20(&qword_27C76EF18, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20BDD8B20(&unk_27C76EF20, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  TVWorkoutPlanDetailViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TVWorkoutPlanDetailViewController *)&v5 viewDidDisappear:v3];
  sub_20BDD8B20(&qword_27C76EF18, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20BDD8B20(&unk_27C76EF20, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20C139374();
}

- (_TtC9SeymourUI33TVWorkoutPlanDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end