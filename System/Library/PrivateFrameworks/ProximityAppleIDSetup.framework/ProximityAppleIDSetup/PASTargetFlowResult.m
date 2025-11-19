@interface PASTargetFlowResult
- (ACAccount)personalAccount;
- (FAFamilyMember)familyMember;
- (NSDictionary)authResults;
- (PASTargetFlowResult)init;
- (int64_t)accountType;
@end

@implementation PASTargetFlowResult

- (int64_t)accountType
{
  v2 = self;
  v3 = PASTargetFlowResultObjc.accountTypeObjc.getter();

  return v3;
}

- (FAFamilyMember)familyMember
{
  v2 = self;
  v3 = PASTargetFlowResultObjc.familyMember.getter();

  return v3;
}

- (ACAccount)personalAccount
{
  v2 = self;
  v3 = PASTargetFlowResultObjc.personalAccount.getter();

  return v3;
}

- (NSDictionary)authResults
{
  v2 = self;
  v3 = PASTargetFlowResultObjc.authResults.getter();

  return v3;
}

- (PASTargetFlowResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end