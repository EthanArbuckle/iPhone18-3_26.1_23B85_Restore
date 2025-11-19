@interface WebDefaultResourceLoadDelegate
+ (id)sharedResourceLoadDelegate;
@end

@implementation WebDefaultResourceLoadDelegate

+ (id)sharedResourceLoadDelegate
{
  result = sharedResourceLoadDelegate_sharedDelegate;
  if (!sharedResourceLoadDelegate_sharedDelegate)
  {
    result = objc_alloc_init(WebDefaultResourceLoadDelegate);
    sharedResourceLoadDelegate_sharedDelegate = result;
  }

  return result;
}

@end