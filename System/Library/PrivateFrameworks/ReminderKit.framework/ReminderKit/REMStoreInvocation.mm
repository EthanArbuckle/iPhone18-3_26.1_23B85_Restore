@interface REMStoreInvocation
- (id)name;
@end

@implementation REMStoreInvocation

- (id)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end