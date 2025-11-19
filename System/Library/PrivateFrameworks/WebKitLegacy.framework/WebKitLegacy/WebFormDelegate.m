@interface WebFormDelegate
+ (id)_sharedWebFormDelegate;
@end

@implementation WebFormDelegate

+ (id)_sharedWebFormDelegate
{
  result = sharedDelegate_1;
  if (!sharedDelegate_1)
  {
    result = objc_alloc_init(WebFormDelegate);
    sharedDelegate_1 = result;
  }

  return result;
}

@end