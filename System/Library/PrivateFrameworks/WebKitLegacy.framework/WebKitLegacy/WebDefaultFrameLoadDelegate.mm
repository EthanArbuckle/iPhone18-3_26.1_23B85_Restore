@interface WebDefaultFrameLoadDelegate
+ (id)sharedFrameLoadDelegate;
@end

@implementation WebDefaultFrameLoadDelegate

+ (id)sharedFrameLoadDelegate
{
  result = sharedFrameLoadDelegate_sharedDelegate;
  if (!sharedFrameLoadDelegate_sharedDelegate)
  {
    result = objc_alloc_init(WebDefaultFrameLoadDelegate);
    sharedFrameLoadDelegate_sharedDelegate = result;
  }

  return result;
}

@end