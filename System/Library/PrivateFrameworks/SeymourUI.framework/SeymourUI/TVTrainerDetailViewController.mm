@interface TVTrainerDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithStyle:(int64_t)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TVTrainerDetailViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator) + qword_27C79C030);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVTrainerDetailViewController();
  v2 = v3.receiver;
  [(TVTrainerDetailViewController *)&v3 viewDidLoad];
  [v2 showDetailViewController:*(*&v2[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator] + qword_27C79C010) sender:{0, v3.receiver, v3.super_class}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20C04AB54(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20C04AE3C(a3);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TVTrainerDetailViewController();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(TVTrainerDetailViewController *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  sub_20BED0240(v6);
}

- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end