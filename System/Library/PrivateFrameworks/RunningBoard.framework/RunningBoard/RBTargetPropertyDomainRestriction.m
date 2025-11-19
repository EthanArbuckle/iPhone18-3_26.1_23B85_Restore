@interface RBTargetPropertyDomainRestriction
- (BOOL)allowsContext:(id)a3 withError:(id *)a4;
@end

@implementation RBTargetPropertyDomainRestriction

- (BOOL)allowsContext:(id)a3 withError:(id *)a4
{
  v6 = [a3 targetProperties];
  LOBYTE(a4) = [(RBPropertyDomainRestriction *)self allowsWithProperties:v6 error:a4];

  return a4;
}

@end