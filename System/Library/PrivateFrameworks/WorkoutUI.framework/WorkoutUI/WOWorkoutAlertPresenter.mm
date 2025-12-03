@interface WOWorkoutAlertPresenter
- (BOOL)canTriggerAlerts;
- (NLWorkoutAlert)currentAlert;
- (WOWorkoutAlertPresenter)init;
- (WOWorkoutAlertSuppressor)_alertSuppressor;
- (WOWorkoutAlertSuppressor)alertSuppressor;
- (void)alertSource:(id)source didTriggerAlert:(id)alert;
- (void)alertSource:(id)source speakUtterance:(id)utterance;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)displayCompletedFor:(id)for;
- (void)setAlertSuppressor:(id)suppressor;
- (void)setCurrentAlert:(id)alert;
- (void)set_currentAlert:(id)alert;
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
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAlertSuppressor:(id)suppressor
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter);
  swift_unknownObjectRetain();
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
}

- (void)set_currentAlert:(id)alert
{
  v4 = *(self + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert);
  *(self + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert) = alert;
  alertCopy = alert;
}

- (NLWorkoutAlert)currentAlert
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(selfCopy + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert);
  v5 = v4;

  return v4;
}

- (void)setCurrentAlert:(id)alert
{
  alertCopy = alert;
  selfCopy = self;
  WorkoutAlertPresenter.currentAlert.setter(alert);
}

- (void)displayCompletedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  WorkoutAlertPresenter.displayCompleted(for:)(forCopy);
}

- (WOWorkoutAlertPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)alertSource:(id)source didTriggerAlert:(id)alert
{
  swift_unknownObjectRetain();
  alertCopy = alert;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for DispatchUtilities();
  v8 = swift_allocObject();
  *(v8 + 16) = selfCopy;
  *(v8 + 24) = alertCopy;
  v9 = alertCopy;
  v10 = selfCopy;
  static DispatchUtilities.ensureMainQueueOrAsync(block:)();

  __swift_destroy_boxed_opaque_existential_0(&v11);
}

- (void)alertSource:(id)source speakUtterance:(id)utterance
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
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(self) = *(selfCopy + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert);

  return (self & 1) == 0;
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  swift_unknownObjectRetain();
  eventCopy = event;
  selfCopy = self;
  specialized WorkoutAlertPresenter.backlight(_:didCompleteUpdateTo:for:)(state, event);
  swift_unknownObjectRelease();
}

@end