@interface UNNotificationOnboarding
+ (BOOL)isEligibleForExperience:(unint64_t)experience;
+ (id)allowedClassesForExperience:(unint64_t)experience;
+ (id)onboardingControllerForExperience:(unint64_t)experience;
+ (id)onboardingControllerForViewModel:(id)model;
+ (id)onboardingNavigationControllerForExperience:(unint64_t)experience;
+ (id)viewModelForExperience:(unint64_t)experience;
- (UNNotificationOnboarding)init;
@end

@implementation UNNotificationOnboarding

+ (BOOL)isEligibleForExperience:(unint64_t)experience
{
  if ([self shouldShowExperience:experience forClient:0])
  {
    return 1;
  }

  return [self shouldShowExperience:experience forClient:1];
}

+ (id)onboardingControllerForExperience:(unint64_t)experience
{
  if (experience)
  {
    v4 = 0;
  }

  else
  {
    v7 = sub_270A86A0C(0);
    onboardingControllerForViewModel_ = [self onboardingControllerForViewModel_];

    v4 = onboardingControllerForViewModel_;
  }

  return v4;
}

+ (id)onboardingNavigationControllerForExperience:(unint64_t)experience
{
  if (experience)
  {
    v4 = 0;
  }

  else
  {
    v7 = sub_270A86A0C(1);
    onboardingControllerForViewModel_ = [self onboardingControllerForViewModel_];
    if (onboardingControllerForViewModel_)
    {
      type metadata accessor for UNNotificationOnboardingNavigationController(0);
      onboardingControllerForViewModel_ = sub_270A637D4(onboardingControllerForViewModel_);
    }

    v4 = onboardingControllerForViewModel_;
  }

  return v4;
}

+ (id)onboardingControllerForViewModel:(id)model
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v3 = sub_270A81720();
  swift_unknownObjectRelease();

  return v3;
}

+ (id)viewModelForExperience:(unint64_t)experience
{
  v3 = sub_270A86A0C(0);

  return v3;
}

+ (id)allowedClassesForExperience:(unint64_t)experience
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_270A8EE60;
  *(v3 + 32) = type metadata accessor for NotificationSummarizationOnboardingViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FE08);
  v4 = sub_270A890B0();

  return v4;
}

- (UNNotificationOnboarding)init
{
  v3.receiver = self;
  v3.super_class = UNNotificationOnboarding;
  return [(UNNotificationOnboarding *)&v3 init];
}

@end