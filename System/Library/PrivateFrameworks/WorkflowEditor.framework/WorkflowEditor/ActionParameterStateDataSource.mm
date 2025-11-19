@interface ActionParameterStateDataSource
- (int64_t)hash;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
@end

@implementation ActionParameterStateDataSource

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  sub_27463B6AC();
  v6 = a3;
  v7 = self;
  sub_274585008();
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_27458524C();

  return v3;
}

@end