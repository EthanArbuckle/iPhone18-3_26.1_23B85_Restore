@interface LSPropertyList(PosterFoundation)
- (uint64_t)pf_wantsLocation;
@end

@implementation LSPropertyList(PosterFoundation)

- (uint64_t)pf_wantsLocation
{
  v1 = [a1 objectForKey:@"PRWantsLocation" ofClass:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end