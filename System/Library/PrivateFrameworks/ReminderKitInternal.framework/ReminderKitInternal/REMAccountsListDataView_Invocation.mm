@interface REMAccountsListDataView_Invocation
- (REMAccountsListDataView_Invocation)initWithCoder:(id)coder;
- (REMAccountsListDataView_Invocation)initWithFetchResultTokenToDiffAgainst:(id)against;
@end

@implementation REMAccountsListDataView_Invocation

- (REMAccountsListDataView_Invocation)initWithFetchResultTokenToDiffAgainst:(id)against
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMStoreSwiftInvocation *)&v5 initWithFetchResultTokenToDiffAgainst:against];
}

- (REMAccountsListDataView_Invocation)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(REMStoreSwiftInvocation *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end