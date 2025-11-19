@interface NSError
- (BOOL)rbs_isServiceDenied;
@end

@implementation NSError

- (BOOL)rbs_isServiceDenied
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 domain];
    if ([v2 isEqualToString:@"RBSServiceErrorDomain"])
    {
      v1 = [v1 code] == 1;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

@end