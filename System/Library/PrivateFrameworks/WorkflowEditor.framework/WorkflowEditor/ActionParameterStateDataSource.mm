@interface ActionParameterStateDataSource
- (int64_t)hash;
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
@end

@implementation ActionParameterStateDataSource

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  sub_27463B6AC();
  actionCopy = action;
  selfCopy = self;
  sub_274585008();
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_27458524C();

  return v3;
}

@end