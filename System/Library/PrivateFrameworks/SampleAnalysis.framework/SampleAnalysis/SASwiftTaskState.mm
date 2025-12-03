@interface SASwiftTaskState
- (void)baseFunctionAddress;
@end

@implementation SASwiftTaskState

- (void)baseFunctionAddress
{
  if (result)
  {
    threadState = [result threadState];
    for (i = [threadState leafUserFrame];
    {
      v3 = threadState;
      threadState = i;

      v4 = threadState ? threadState[4] : 0;
      v5 = v4;

      if (!v5)
      {
        break;
      }

      if (threadState)
      {
        v6 = threadState[4];
      }

      else
      {
        v6 = 0;
      }
    }

    address = [threadState address];

    return address;
  }

  return result;
}

@end