@interface UNNotificationOnboarding
+ (BOOL)isEligibleForExperience:(unint64_t)a3;
+ (id)allowedClassesForExperience:(unint64_t)a3;
+ (id)onboardingControllerForExperience:(unint64_t)a3;
+ (id)onboardingControllerForViewModel:(id)a3;
+ (id)onboardingNavigationControllerForExperience:(unint64_t)a3;
+ (id)viewModelForExperience:(unint64_t)a3;
- (UNNotificationOnboarding)init;
@end

@implementation UNNotificationOnboarding

+ (BOOL)isEligibleForExperience:(unint64_t)a3
{
  if ([a1 shouldShowExperience:a3 forClient:0])
  {
    return 1;
  }

  return [a1 shouldShowExperience:a3 forClient:1];
}

+ (id)onboardingControllerForExperience:(unint64_t)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v7 = sub_270A86A0C(0);
    v8 = [a1 onboardingControllerForViewModel_];

    v4 = v8;
  }

  return v4;
}

+ (id)onboardingNavigationControllerForExperience:(unint64_t)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v7 = sub_270A86A0C(1);
    v8 = [a1 onboardingControllerForViewModel_];
    if (v8)
    {
      type metadata accessor for UNNotificationOnboardingNavigationController(0);
      v8 = sub_270A637D4(v8);
    }

    v4 = v8;
  }

  return v4;
}

+ (id)onboardingControllerForViewModel:(id)a3
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v3 = sub_270A81720();
  swift_unknownObjectRelease();

  return v3;
}

+ (id)viewModelForExperience:(unint64_t)a3
{
  v3 = sub_270A86A0C(0);

  return v3;
}

+ (id)allowedClassesForExperience:(unint64_t)a3
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