@interface SSContactInfoSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SSContactInfoSectionBuilder

- (id)buildBridgedResult
{
  v2 = [(SSContactEntitySectionBuilder *)self contactResultBuilder];
  v3 = [v2 buildFooterResultForEntity];

  return v3;
}

@end