@interface PGGraphPropertylessNode
- (void)checkConsistencyOfProperties:(id)a3 withExtraPropertyKeys:(id)a4;
@end

@implementation PGGraphPropertylessNode

- (void)checkConsistencyOfProperties:(id)a3 withExtraPropertyKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PGMethodForbiddenException(self, a2);
  objc_exception_throw(v9);
}

@end