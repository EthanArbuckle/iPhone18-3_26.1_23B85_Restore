@interface SSContactSocialMediaSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SSContactSocialMediaSectionBuilder

- (id)buildBridgedResult
{
  contactResultBuilder = [(SSContactEntitySectionBuilder *)self contactResultBuilder];
  buildSocialMediaResultForEntity = [contactResultBuilder buildSocialMediaResultForEntity];

  return buildSocialMediaResultForEntity;
}

@end