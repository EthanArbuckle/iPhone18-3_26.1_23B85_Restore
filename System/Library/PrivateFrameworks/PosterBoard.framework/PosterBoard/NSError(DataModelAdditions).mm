@interface NSError(DataModelAdditions)
- (BOOL)pbf_isGeneralCancelledError;
@end

@implementation NSError(DataModelAdditions)

- (BOOL)pbf_isGeneralCancelledError
{
  domain = [self domain];
  if ([domain isEqualToString:PBFGeneralErrorDomain])
  {
    v3 = [self code] == 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end