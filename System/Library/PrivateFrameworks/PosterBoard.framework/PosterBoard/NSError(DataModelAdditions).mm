@interface NSError(DataModelAdditions)
- (BOOL)pbf_isGeneralCancelledError;
@end

@implementation NSError(DataModelAdditions)

- (BOOL)pbf_isGeneralCancelledError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:PBFGeneralErrorDomain])
  {
    v3 = [a1 code] == 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end