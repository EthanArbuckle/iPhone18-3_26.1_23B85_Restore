@interface REMModelsAvailabilityManagerWrapper
+ (BOOL)supportsAutoCategorizationGenerativeModels;
- (_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper)init;
@end

@implementation REMModelsAvailabilityManagerWrapper

+ (BOOL)supportsAutoCategorizationGenerativeModels
{
  if (qword_280C97260 != -1)
  {
    swift_once();
  }

  v3[0] = 0;
  REMGenerativeModelsAvailabilityManager.modelsAvailability(feature:)(v3);
  return v3[1] < 2u;
}

- (_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(REMModelsAvailabilityManagerWrapper *)&v3 init];
}

@end