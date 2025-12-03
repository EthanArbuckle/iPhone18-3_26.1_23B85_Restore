@interface SFTrustPolicy
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SFTrustPolicy

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end