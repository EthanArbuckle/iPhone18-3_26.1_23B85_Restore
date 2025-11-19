@interface SPUISContactSocialMediaSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SPUISContactSocialMediaSectionBuilder

- (id)buildBridgedResult
{
  v2 = [(SPUISContactEntitySectionBuilder *)self contactResultBuilder];
  v3 = [v2 buildSocialMediaResultForEntity];

  return v3;
}

@end