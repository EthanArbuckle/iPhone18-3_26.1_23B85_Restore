@interface WOWorkoutAlertPresenter
- (BOOL)canTriggerAlerts;
- (NLWorkoutAlert)currentAlert;
- (WOWorkoutAlertPresenter)init;
- (WOWorkoutAlertSuppressor)_alertSuppressor;
- (WOWorkoutAlertSuppressor)alertSuppressor;
- (void)alertSource:(id)a3 didTriggerAlert:(id)a4;
- (void)alertSource:(id)a3 speakUtterance:(id)a4;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)displayCompletedFor:(id)a3;
- (void)setAlertSuppressor:(id)a3;
- (void)setCurrentAlert:(id)a3;
- (void)set_currentAlert:(id)a3;
@end

@implementation WOWorkoutAlertPresenter

- (WOWorkoutAlertSuppressor)_alertSuppressor
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (WOWorkoutAlertSuppressor)alertSuppressor
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAlertSuppressor:(id)a3
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter);
  swift_unknownObjectRetain();
  v4 = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
}

- (void)set_currentAlert:(id)a3
{
  v4 = *(self + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert);
  *(self + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert) = a3;
  v3 = a3;
}

- (NLWorkoutAlert)currentAlert
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert);
  v5 = v4;

  return v4;
}

- (void)setCurrentAlert:(id)a3
{
  v5 = a3;
  v6 = self;
  WorkoutAlertPresenter.currentAlert.setter(a3);
}

- (void)displayCompletedFor:(id)a3
{
  v4 = a3;
  v5 = self;
  WorkoutAlertPresenter.displayCompleted(for:)(v4);
}

- (WOWorkoutAlertPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)alertSource:(id)a3 didTriggerAlert:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for DispatchUtilities();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = v6;
  v10 = v7;
  static DispatchUtilities.ensureMainQueueOrAsync(block:)();

  __swift_destroy_boxed_opaque_existential_0(&v11);
}

- (void)alertSource:(id)a3 speakUtterance:(id)a4
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (BOOL)canTriggerAlerts
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(self) = *(v3 + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert);

  return (self & 1) == 0;
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  specialized WorkoutAlertPresenter.backlight(_:didCompleteUpdateTo:for:)(a4, a5);
  swift_unknownObjectRelease();
}

@end