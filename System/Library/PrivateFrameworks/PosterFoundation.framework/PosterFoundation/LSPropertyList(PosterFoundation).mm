@interface LSPropertyList(PosterFoundation)
- (uint64_t)pf_wantsLocation;
@end

@implementation LSPropertyList(PosterFoundation)

- (uint64_t)pf_wantsLocation
{
  v1 = [self objectForKey:@"PRWantsLocation" ofClass:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end