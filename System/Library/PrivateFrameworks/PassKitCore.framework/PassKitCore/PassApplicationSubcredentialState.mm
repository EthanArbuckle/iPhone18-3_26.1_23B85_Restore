@interface PassApplicationSubcredentialState
- (PassApplicationSubcredentialState)initWithSubcredential:(id)a3;
@end

@implementation PassApplicationSubcredentialState

- (PassApplicationSubcredentialState)initWithSubcredential:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PassApplicationSubcredentialState;
  v5 = [(PassApplicationSubcredentialState *)&v9 init];
  if (v5)
  {
    v6 = [v4 aliroGroupResolvingKeys];
    aliroGroupResolvingKeys = v5->_aliroGroupResolvingKeys;
    v5->_aliroGroupResolvingKeys = v6;
  }

  return v5;
}

@end