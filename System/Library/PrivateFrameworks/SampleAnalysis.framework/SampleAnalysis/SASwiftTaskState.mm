@interface SASwiftTaskState
- (void)baseFunctionAddress;
@end

@implementation SASwiftTaskState

- (void)baseFunctionAddress
{
  if (result)
  {
    v1 = [result threadState];
    for (i = [v1 leafUserFrame];
    {
      v3 = v1;
      v1 = i;

      v4 = v1 ? v1[4] : 0;
      v5 = v4;

      if (!v5)
      {
        break;
      }

      if (v1)
      {
        v6 = v1[4];
      }

      else
      {
        v6 = 0;
      }
    }

    v7 = [v1 address];

    return v7;
  }

  return result;
}

@end