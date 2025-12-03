@interface TNController
+ (TNController)sharedInstance;
- (BOOL)clearFollowUpItemWithError:(id *)error;
- (BOOL)isFollowUpItemPending;
- (BOOL)isOnBoardingFlowRequired;
- (BOOL)postFollowUpItemWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)repostFollowUpItemIfNeededWithError:(id *)error;
@end

@implementation TNController

+ (TNController)sharedInstance
{
  if (qword_2806D1158 != -1)
  {
    swift_once();
  }

  v3 = qword_2806D1160;

  return v3;
}

- (BOOL)isOnBoardingFlowRequired
{
  v3 = *(&self->super.isa + OBJC_IVAR___TNController_onBoardingController);
  v4 = *&self->followUpController[OBJC_IVAR___TNController_onBoardingController];
  swift_getObjectType();
  selfCopy = self;
  LOBYTE(v3) = sub_26F0494E0();

  return v3 & 1;
}

- (BOOL)isFollowUpItemPending
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1150, &qword_26F0499E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR___TNController_followUpController);
  selfCopy = self;
  sub_26F049490();

  v8 = sub_26F049450();
  LOBYTE(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_26F049360(v5, &qword_2806D1150, &qword_26F0499E0);
  return v6;
}

- (BOOL)postFollowUpItemWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_26F04859C(configurationCopy);

  return 1;
}

- (BOOL)repostFollowUpItemIfNeededWithError:(id *)error
{
  selfCopy = self;
  sub_26F048D08();

  return 1;
}

- (BOOL)clearFollowUpItemWithError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR___TNController_followUpController);
  selfCopy = self;
  sub_26F049470();

  return 1;
}

@end