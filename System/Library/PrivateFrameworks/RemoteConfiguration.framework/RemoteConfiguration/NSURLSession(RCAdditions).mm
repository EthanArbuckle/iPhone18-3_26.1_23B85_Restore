@interface NSURLSession(RCAdditions)
- (__CFString)rc_logIdentifier;
@end

@implementation NSURLSession(RCAdditions)

- (__CFString)rc_logIdentifier
{
  configuration = [self configuration];
  identifier = [configuration identifier];
  v3 = identifier;
  if (identifier)
  {
    v4 = identifier;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = v4;

  return v4;
}

@end