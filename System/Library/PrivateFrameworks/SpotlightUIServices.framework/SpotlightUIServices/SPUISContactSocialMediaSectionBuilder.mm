@interface SPUISContactSocialMediaSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SPUISContactSocialMediaSectionBuilder

- (id)buildBridgedResult
{
  contactResultBuilder = [(SPUISContactEntitySectionBuilder *)self contactResultBuilder];
  buildSocialMediaResultForEntity = [contactResultBuilder buildSocialMediaResultForEntity];

  return buildSocialMediaResultForEntity;
}

@end