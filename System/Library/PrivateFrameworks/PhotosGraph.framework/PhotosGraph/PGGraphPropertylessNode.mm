@interface PGGraphPropertylessNode
- (void)checkConsistencyOfProperties:(id)properties withExtraPropertyKeys:(id)keys;
@end

@implementation PGGraphPropertylessNode

- (void)checkConsistencyOfProperties:(id)properties withExtraPropertyKeys:(id)keys
{
  propertiesCopy = properties;
  keysCopy = keys;
  v9 = PGMethodForbiddenException(self, a2);
  objc_exception_throw(v9);
}

@end