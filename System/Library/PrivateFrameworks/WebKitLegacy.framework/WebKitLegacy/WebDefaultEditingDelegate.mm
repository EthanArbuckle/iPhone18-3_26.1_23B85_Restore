@interface WebDefaultEditingDelegate
+ (id)sharedEditingDelegate;
@end

@implementation WebDefaultEditingDelegate

+ (id)sharedEditingDelegate
{
  result = sharedDelegate;
  if (!sharedDelegate)
  {
    result = objc_alloc_init(WebDefaultEditingDelegate);
    sharedDelegate = result;
  }

  return result;
}

@end