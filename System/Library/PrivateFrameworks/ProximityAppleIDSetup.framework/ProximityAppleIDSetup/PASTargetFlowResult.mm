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
  selfCopy = self;
  v3 = PASTargetFlowResultObjc.accountTypeObjc.getter();

  return v3;
}

- (FAFamilyMember)familyMember
{
  selfCopy = self;
  v3 = PASTargetFlowResultObjc.familyMember.getter();

  return v3;
}

- (ACAccount)personalAccount
{
  selfCopy = self;
  v3 = PASTargetFlowResultObjc.personalAccount.getter();

  return v3;
}

- (NSDictionary)authResults
{
  selfCopy = self;
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