@interface SPUISContactHeaderSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SPUISContactHeaderSectionBuilder

- (id)buildBridgedResult
{
  v2 = [(SPUISContactEntitySectionBuilder *)self contactResultBuilder];
  v3 = [v2 buildHeaderResultForEntity];

  return v3;
}

@end