@interface SSContactHeaderSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SSContactHeaderSectionBuilder

- (id)buildBridgedResult
{
  v2 = [(SSContactEntitySectionBuilder *)self contactResultBuilder];
  v3 = [v2 buildHeaderResultForEntity];

  return v3;
}

@end