@interface SiriSharedUIGenerativeAssistantOnboardingManager
+ (id)modelName;
+ (id)symbolName;
- (SiriSharedUIGenerativeAssistantOnboardingManager)init;
- (SiriSharedUIGenerativeAssistantOnboardingManagerDelegate)delegate;
- (void)presentOnboardingFlowForCommand:(id)a3;
- (void)setNavigationController:(id)a3;
@end

@implementation SiriSharedUIGenerativeAssistantOnboardingManager

- (SiriSharedUIGenerativeAssistantOnboardingManagerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setNavigationController:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUIGenerativeAssistantOnboardingManager_navigationController);
  *(self + OBJC_IVAR___SiriSharedUIGenerativeAssistantOnboardingManager_navigationController) = a3;
  v3 = a3;
}

- (void)presentOnboardingFlowForCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  SiriSharedUIGenerativeAssistantOnboardingManager.presentOnboardingFlow(forCommand:)(v4);
}

+ (id)modelName
{
  sub_21E4DBC28();
  sub_21E4DBC18();
  sub_21E4DBC08();

  if (v5)
  {
    __swift_project_boxed_opaque_existential_0Tm(v4, v5);
    sub_21E4DBC48();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    sub_21E424BC0(v4, &qword_27CEC5370);
  }

  v2 = sub_21E4DCF68();

  return v2;
}

+ (id)symbolName
{
  _sSo48SiriSharedUIGenerativeAssistantOnboardingManagerC0aB2UIE10symbolNameSSyFZ_0();
  v2 = sub_21E4DCF68();

  return v2;
}

- (SiriSharedUIGenerativeAssistantOnboardingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end