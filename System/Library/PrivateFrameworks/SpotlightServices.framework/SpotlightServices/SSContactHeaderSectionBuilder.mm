@interface SSContactHeaderSectionBuilder
- (id)buildBridgedResult;
@end

@implementation SSContactHeaderSectionBuilder

- (id)buildBridgedResult
{
  contactResultBuilder = [(SSContactEntitySectionBuilder *)self contactResultBuilder];
  buildHeaderResultForEntity = [contactResultBuilder buildHeaderResultForEntity];

  return buildHeaderResultForEntity;
}

@end