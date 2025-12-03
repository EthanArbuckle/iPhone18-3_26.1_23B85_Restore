@interface BMStreamCRDTLocationBuilder
- (BMStreamCRDTLocationBuilder)initWithAssignerPolicy:(id)policy;
@end

@implementation BMStreamCRDTLocationBuilder

- (BMStreamCRDTLocationBuilder)initWithAssignerPolicy:(id)policy
{
  policyCopy = policy;
  v9.receiver = self;
  v9.super_class = BMStreamCRDTLocationBuilder;
  v6 = [(BMStreamCRDTLocationBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policy, policy);
  }

  return v7;
}

@end