@interface SPUISContactHeaderSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SPUISContactHeaderSectionBuilder

- (id)buildBridgedResult
{
  contactResultBuilder = [(SPUISContactEntitySectionBuilder *)self contactResultBuilder];
  buildHeaderResultForEntity = [contactResultBuilder buildHeaderResultForEntity];

  return buildHeaderResultForEntity;
}

@end