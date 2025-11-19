@interface SSContactSocialMediaSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SSContactSocialMediaSectionBuilder

- (id)buildBridgedResult
{
  v2 = [(SSContactEntitySectionBuilder *)self contactResultBuilder];
  v3 = [v2 buildSocialMediaResultForEntity];

  return v3;
}

@end