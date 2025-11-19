@interface PFFairPlayRolloutController
+ (PFFairPlayRolloutController)sharedInstance;
- (PFFairPlayRolloutController)init;
- (void)didRollbackStatusChangeWithCompletion:(id)a3;
@end

@implementation PFFairPlayRolloutController

+ (PFFairPlayRolloutController)sharedInstance
{
  if (qword_1EDCD2AD8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD2AE0;

  return v3;
}

- (PFFairPlayRolloutController)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PFFairPlayRolloutController *)&v5 init];
}

- (void)didRollbackStatusChangeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  FairPlayRolloutController.didRollbackStatusChange(completion:)(sub_1D8D998A4, v5);
}

@end