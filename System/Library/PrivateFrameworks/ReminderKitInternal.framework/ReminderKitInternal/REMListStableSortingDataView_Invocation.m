@interface REMListStableSortingDataView_Invocation
- (REMListStableSortingDataView_Invocation)initWithCoder:(id)a3;
- (REMListStableSortingDataView_Invocation)initWithFetchResultTokenToDiffAgainst:(id)a3;
@end

@implementation REMListStableSortingDataView_Invocation

- (REMListStableSortingDataView_Invocation)initWithFetchResultTokenToDiffAgainst:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMStoreSwiftInvocation *)&v5 initWithFetchResultTokenToDiffAgainst:a3];
}

- (REMListStableSortingDataView_Invocation)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(REMStoreSwiftInvocation *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end