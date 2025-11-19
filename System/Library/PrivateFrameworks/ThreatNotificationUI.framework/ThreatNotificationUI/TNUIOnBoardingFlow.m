@interface TNUIOnBoardingFlow
+ (BOOL)isLDMEnabledOnBoardingViewControllerRequired;
+ (id)makeLDMEnabledOnBoardingViewController;
- (TNUIOnBoardingFlow)init;
@end

@implementation TNUIOnBoardingFlow

+ (BOOL)isLDMEnabledOnBoardingViewControllerRequired
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(static TNUIOnBoardingFlow.container);
  swift_getObjectType();
  v2 = dispatch thunk of TNCOnBoardingControlling.isOnboardingFlowRequired.getter();
  swift_unknownObjectRelease();
  return v2 & 1;
}

+ (id)makeLDMEnabledOnBoardingViewController
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = specialized static TNUIOnBoardingFlow.makeLDMEnabledOnBoardingViewController()();

  return v2;
}

- (TNUIOnBoardingFlow)init
{
  v3.receiver = self;
  v3.super_class = TNUIOnBoardingFlow;
  return [(TNUIOnBoardingFlow *)&v3 init];
}

@end