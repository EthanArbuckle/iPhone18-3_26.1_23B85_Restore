@interface STRestrictionPayloadUtility
+ (id)create;
- (STRestrictionPayloadUtility)init;
- (id)buildUpdatedDeclarationsWithImageGenerationAllowed:(BOOL)allowed originalDeclarations:(id)declarations;
- (id)getAppsRatingFromPayloadPlist:(id)plist error:(id *)error;
@end

@implementation STRestrictionPayloadUtility

+ (id)create
{
  v2 = [objc_allocWithZone(STRestrictionPayloadUtility) init];

  return v2;
}

- (id)buildUpdatedDeclarationsWithImageGenerationAllowed:(BOOL)allowed originalDeclarations:(id)declarations
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84D28, &qword_1B83E89F0);
  v6 = sub_1B83DDDDC();
  selfCopy = self;
  _sSo27STRestrictionPayloadUtilityC14ScreenTimeCoreE24buildUpdatedDeclarations26withImageGenerationAllowed08originalI0SaySDys11AnyHashableVypGGSb_AJtF_0(allowed, v6);

  v8 = sub_1B83DDDCC();

  return v8;
}

- (id)getAppsRatingFromPayloadPlist:(id)plist error:(id *)error
{
  plistCopy = plist;
  selfCopy = self;
  v7 = sub_1B83DD90C();
  v9 = v8;

  v10 = sub_1B83B3744();
  sub_1B83B100C(v7, v9);

  return v10;
}

- (STRestrictionPayloadUtility)init
{
  v3.receiver = self;
  v3.super_class = STRestrictionPayloadUtility;
  return [(STRestrictionPayloadUtility *)&v3 init];
}

@end