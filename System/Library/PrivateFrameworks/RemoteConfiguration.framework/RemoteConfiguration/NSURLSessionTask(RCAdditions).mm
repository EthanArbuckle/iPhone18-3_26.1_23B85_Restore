@interface NSURLSessionTask(RCAdditions)
- (__CFString)rc_logIdentifier;
@end

@implementation NSURLSessionTask(RCAdditions)

- (__CFString)rc_logIdentifier
{
  originalRequest = [self originalRequest];
  v2 = [originalRequest description];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = v4;

  return v4;
}

@end