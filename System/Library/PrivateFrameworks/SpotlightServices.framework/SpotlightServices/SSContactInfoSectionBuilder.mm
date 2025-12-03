@interface SSContactInfoSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SSContactInfoSectionBuilder

- (id)buildBridgedResult
{
  contactResultBuilder = [(SSContactEntitySectionBuilder *)self contactResultBuilder];
  buildFooterResultForEntity = [contactResultBuilder buildFooterResultForEntity];

  return buildFooterResultForEntity;
}

@end