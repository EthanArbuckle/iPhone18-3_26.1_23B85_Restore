@interface SPUISContactInfoSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SPUISContactInfoSectionBuilder

- (id)buildBridgedResult
{
  contactResultBuilder = [(SPUISContactEntitySectionBuilder *)self contactResultBuilder];
  buildFooterResultForEntity = [contactResultBuilder buildFooterResultForEntity];

  return buildFooterResultForEntity;
}

@end