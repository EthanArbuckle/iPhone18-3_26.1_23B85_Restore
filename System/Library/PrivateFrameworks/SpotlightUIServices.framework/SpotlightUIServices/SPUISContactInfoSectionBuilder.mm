@interface SPUISContactInfoSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SPUISContactInfoSectionBuilder

- (id)buildBridgedResult
{
  v2 = [(SPUISContactEntitySectionBuilder *)self contactResultBuilder];
  v3 = [v2 buildFooterResultForEntity];

  return v3;
}

@end