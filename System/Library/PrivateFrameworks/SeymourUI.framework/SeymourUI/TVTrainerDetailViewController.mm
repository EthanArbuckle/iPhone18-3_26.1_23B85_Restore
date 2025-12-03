@interface TVTrainerDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithStyle:(int64_t)style;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithCoder:(id)coder
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20C04AB54(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20C04AE3C(disappear);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TVTrainerDetailViewController();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v9.receiver;
  [(TVTrainerDetailViewController *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  sub_20BED0240(contextCopy);
}

- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI29TVTrainerDetailViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end