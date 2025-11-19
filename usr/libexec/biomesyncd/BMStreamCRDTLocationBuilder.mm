@interface BMStreamCRDTLocationBuilder
- (BMStreamCRDTLocationBuilder)initWithAssignerPolicy:(id)a3;
@end

@implementation BMStreamCRDTLocationBuilder

- (BMStreamCRDTLocationBuilder)initWithAssignerPolicy:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMStreamCRDTLocationBuilder;
  v6 = [(BMStreamCRDTLocationBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policy, a3);
  }

  return v7;
}

@end