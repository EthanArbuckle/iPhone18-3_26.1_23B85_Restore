@interface SBMutableBannerUnfurlSourceContext
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBMutableBannerUnfurlSourceContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBBannerUnfurlSourceContext *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBBannerUnfurlSourceContext *)self _copyWithClass:v4];
}

@end