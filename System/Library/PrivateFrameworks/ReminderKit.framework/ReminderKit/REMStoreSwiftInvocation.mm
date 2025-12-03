@interface REMStoreSwiftInvocation
- (NSString)name;
- (REMStoreSwiftInvocation)initWithCoder:(id)coder;
- (REMStoreSwiftInvocation)initWithFetchResultTokenToDiffAgainst:(id)against;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMStoreSwiftInvocation

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (REMStoreSwiftInvocation)initWithFetchResultTokenToDiffAgainst:(id)against
{
  againstCopy = against;
  v9.receiver = self;
  v9.super_class = REMStoreSwiftInvocation;
  v6 = [(REMStoreSwiftInvocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResultTokenToDiffAgainst, against);
  }

  return v7;
}

- (REMStoreSwiftInvocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchResultTokenToDiffAgainst"];

  v6 = [(REMStoreSwiftInvocation *)self initWithFetchResultTokenToDiffAgainst:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fetchResultTokenToDiffAgainst = [(REMStoreSwiftInvocation *)self fetchResultTokenToDiffAgainst];
  [coderCopy encodeObject:fetchResultTokenToDiffAgainst forKey:@"fetchResultTokenToDiffAgainst"];
}

@end