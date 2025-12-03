@interface INHomeFilter(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INHomeFilter(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  entityIdentifiers = [self entityIdentifiers];
  re_actionIdentifierHashValue = [entityIdentifiers re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

@end