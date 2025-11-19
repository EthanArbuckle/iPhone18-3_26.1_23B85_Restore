@interface TNUIOBFlowLDMEnabled
- (TNUIOnBoardingViewControllerDelegate)onBoardingDelegate;
- (_TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled)initWithCoder:(id)a3;
- (_TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5;
- (void)setOnBoardingDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation TNUIOBFlowLDMEnabled

- (TNUIOnBoardingViewControllerDelegate)onBoardingDelegate
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setOnBoardingDelegate:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

- (_TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = TNUIOBFlowLDMEnabled.init(coder:)(a3);

  return v4;
}

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  v3 = self;
  [(TNUIOBFlowLDMEnabled *)&v4 viewDidLoad];
  TNUIOBFlowLDMEnabled.showPage(page:animated:)(1, 0);
}

- (_TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end