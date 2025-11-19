@interface REMStoreSwiftInvocation
- (NSString)name;
- (REMStoreSwiftInvocation)initWithCoder:(id)a3;
- (REMStoreSwiftInvocation)initWithFetchResultTokenToDiffAgainst:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMStoreSwiftInvocation

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (REMStoreSwiftInvocation)initWithFetchResultTokenToDiffAgainst:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMStoreSwiftInvocation;
  v6 = [(REMStoreSwiftInvocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResultTokenToDiffAgainst, a3);
  }

  return v7;
}

- (REMStoreSwiftInvocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fetchResultTokenToDiffAgainst"];

  v6 = [(REMStoreSwiftInvocation *)self initWithFetchResultTokenToDiffAgainst:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMStoreSwiftInvocation *)self fetchResultTokenToDiffAgainst];
  [v4 encodeObject:v5 forKey:@"fetchResultTokenToDiffAgainst"];
}

@end