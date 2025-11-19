@interface NSInvocation(RTExtensions)
- (uint64_t)blockArgumentIndex;
@end

@implementation NSInvocation(RTExtensions)

- (uint64_t)blockArgumentIndex
{
  v1 = [a1 methodSignature];
  v2 = [v1 numberOfArguments];
  if (v2 < 3)
  {
LABEL_7:
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v2;
    v4 = 2;
    while (1)
    {
      v5 = [v1 getArgumentTypeAtIndex:v4];
      if (*v5 == 64 && v5[1] == 63 && !v5[2])
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }
  }

  return v4;
}

@end