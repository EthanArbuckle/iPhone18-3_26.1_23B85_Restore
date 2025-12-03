@interface REMPermanentlyHiddenDataView_PermanentlyHiddenInvocation
- (REMPermanentlyHiddenDataView_PermanentlyHiddenInvocation)initWithCoder:(id)coder;
- (REMPermanentlyHiddenDataView_PermanentlyHiddenInvocation)initWithFetchResultTokenToDiffAgainst:(id)against;
@end

@implementation REMPermanentlyHiddenDataView_PermanentlyHiddenInvocation

- (REMPermanentlyHiddenDataView_PermanentlyHiddenInvocation)initWithFetchResultTokenToDiffAgainst:(id)against
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMStoreSwiftInvocation *)&v5 initWithFetchResultTokenToDiffAgainst:against];
}

- (REMPermanentlyHiddenDataView_PermanentlyHiddenInvocation)initWithCoder:(id)coder
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