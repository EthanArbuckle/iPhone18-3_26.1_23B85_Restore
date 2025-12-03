@interface PASSourceFlowResult
- (ACAccount)personalAccount;
- (FAFamilyMember)familyMember;
- (NSDictionary)authResults;
- (PASSourceFlowResult)init;
- (int64_t)accountType;
@end

@implementation PASSourceFlowResult

- (int64_t)accountType
{
  selfCopy = self;
  v3 = PASSourceFlowResultObjc.accountTypeObjc.getter();

  return v3;
}

- (FAFamilyMember)familyMember
{
  selfCopy = self;
  v3 = PASSourceFlowResultObjc.familyMember.getter();

  return v3;
}

- (ACAccount)personalAccount
{
  selfCopy = self;
  v3 = PASSourceFlowResultObjc.personalAccount.getter();

  return v3;
}

- (NSDictionary)authResults
{
  selfCopy = self;
  v3 = PASSourceFlowResultObjc.authResults.getter();

  return v3;
}

- (PASSourceFlowResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end