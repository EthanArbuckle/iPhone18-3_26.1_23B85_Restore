@interface SBMutableBannerUnfurlSourceContext
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SBMutableBannerUnfurlSourceContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SBBannerUnfurlSourceContext *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SBBannerUnfurlSourceContext *)self _copyWithClass:v4];
}

@end