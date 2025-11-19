@interface NSInvocation(WebMainThreadInvoker)
- (const)_webkit_invokeAndHandleException:()WebMainThreadInvoker;
@end

@implementation NSInvocation(WebMainThreadInvoker)

- (const)_webkit_invokeAndHandleException:()WebMainThreadInvoker
{
  [a1 invoke];
  result = [objc_msgSend(a1 "methodSignature")];
  v3 = result;
  if (result)
  {
    result = strlen(result);
  }

  if (result)
  {
    if (result >= 0x10)
    {
      v4 = 16;
    }

    else
    {
      v4 = result;
    }

    v5 = v4;
    v6 = v3;
    do
    {
      if (*v6 == 64)
      {
        goto LABEL_12;
      }

      ++v6;
      --v5;
    }

    while (v5);
    if (result >= 0x11)
    {
      result = memchr(&v3[v4], 64, &result[-v4]);
      v6 = result;
      if (result)
      {
LABEL_12:
        if (v6 - v3 != -1)
        {
          v7 = 0;
          [a1 getReturnValue:&v7];
          return v7;
        }
      }
    }
  }

  return result;
}

@end