@interface NSError(WFToolKit)
- (BOOL)wf_isCancelledStepError;
@end

@implementation NSError(WFToolKit)

- (BOOL)wf_isCancelledStepError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"WFToolKitErrorDomain"])
  {
    v3 = [a1 code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end