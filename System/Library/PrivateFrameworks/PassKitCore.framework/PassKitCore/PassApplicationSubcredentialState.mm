@interface PassApplicationSubcredentialState
- (PassApplicationSubcredentialState)initWithSubcredential:(id)subcredential;
@end

@implementation PassApplicationSubcredentialState

- (PassApplicationSubcredentialState)initWithSubcredential:(id)subcredential
{
  subcredentialCopy = subcredential;
  v9.receiver = self;
  v9.super_class = PassApplicationSubcredentialState;
  v5 = [(PassApplicationSubcredentialState *)&v9 init];
  if (v5)
  {
    aliroGroupResolvingKeys = [subcredentialCopy aliroGroupResolvingKeys];
    aliroGroupResolvingKeys = v5->_aliroGroupResolvingKeys;
    v5->_aliroGroupResolvingKeys = aliroGroupResolvingKeys;
  }

  return v5;
}

@end