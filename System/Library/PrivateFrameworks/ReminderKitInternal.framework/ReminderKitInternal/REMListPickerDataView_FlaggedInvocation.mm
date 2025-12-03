@interface REMListPickerDataView_FlaggedInvocation
- (REMListPickerDataView_FlaggedInvocation)initWithCoder:(id)coder;
- (REMListPickerDataView_FlaggedInvocation)initWithFetchResultTokenToDiffAgainst:(id)against;
@end

@implementation REMListPickerDataView_FlaggedInvocation

- (REMListPickerDataView_FlaggedInvocation)initWithFetchResultTokenToDiffAgainst:(id)against
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMStoreSwiftInvocation *)&v5 initWithFetchResultTokenToDiffAgainst:against];
}

- (REMListPickerDataView_FlaggedInvocation)initWithCoder:(id)coder
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