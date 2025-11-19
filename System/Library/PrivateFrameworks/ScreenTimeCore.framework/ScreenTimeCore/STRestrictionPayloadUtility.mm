@interface STRestrictionPayloadUtility
+ (id)create;
- (STRestrictionPayloadUtility)init;
- (id)buildUpdatedDeclarationsWithImageGenerationAllowed:(BOOL)a3 originalDeclarations:(id)a4;
- (id)getAppsRatingFromPayloadPlist:(id)a3 error:(id *)a4;
@end

@implementation STRestrictionPayloadUtility

+ (id)create
{
  v2 = [objc_allocWithZone(STRestrictionPayloadUtility) init];

  return v2;
}

- (id)buildUpdatedDeclarationsWithImageGenerationAllowed:(BOOL)a3 originalDeclarations:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84D28, &qword_1B83E89F0);
  v6 = sub_1B83DDDDC();
  v7 = self;
  _sSo27STRestrictionPayloadUtilityC14ScreenTimeCoreE24buildUpdatedDeclarations26withImageGenerationAllowed08originalI0SaySDys11AnyHashableVypGGSb_AJtF_0(a3, v6);

  v8 = sub_1B83DDDCC();

  return v8;
}

- (id)getAppsRatingFromPayloadPlist:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
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