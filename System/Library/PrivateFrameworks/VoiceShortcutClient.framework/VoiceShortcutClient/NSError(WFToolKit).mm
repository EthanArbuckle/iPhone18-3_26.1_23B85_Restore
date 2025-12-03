@interface NSError(WFToolKit)
- (BOOL)wf_isCancelledStepError;
@end

@implementation NSError(WFToolKit)

- (BOOL)wf_isCancelledStepError
{
  domain = [self domain];
  if ([domain isEqualToString:@"WFToolKitErrorDomain"])
  {
    v3 = [self code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end