@interface NSURLSession(RCAdditions)
- (__CFString)rc_logIdentifier;
@end

@implementation NSURLSession(RCAdditions)

- (__CFString)rc_logIdentifier
{
  v1 = [a1 configuration];
  v2 = [v1 identifier];
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