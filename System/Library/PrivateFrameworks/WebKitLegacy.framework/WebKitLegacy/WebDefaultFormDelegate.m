@interface WebDefaultFormDelegate
+ (id)sharedFormDelegate;
@end

@implementation WebDefaultFormDelegate

+ (id)sharedFormDelegate
{
  result = sharedFormDelegate_WebSharedDefaultFormDelegate;
  if (!sharedFormDelegate_WebSharedDefaultFormDelegate)
  {
    result = objc_alloc_init(WebDefaultFormDelegate);
    sharedFormDelegate_WebSharedDefaultFormDelegate = result;
  }

  return result;
}

@end