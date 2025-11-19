@interface UISplitViewController(Bridge)
- (uint64_t)ts_isCollapsing;
- (void)ts_setPrimaryBackgroundStyle:()Bridge;
@end

@implementation UISplitViewController(Bridge)

- (uint64_t)ts_isCollapsing
{
  result = [a1 _isCollapsed];
  if (result)
  {
    return [a1 isCollapsed] ^ 1;
  }

  return result;
}

- (void)ts_setPrimaryBackgroundStyle:()Bridge
{
  v3 = result;
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    [result setPrimaryBackgroundStyle:?];
  }

  return [v3 setPrimaryBackgroundStyle:1];
}

@end