@interface RBTargetPropertyDomainRestriction
- (BOOL)allowsContext:(id)context withError:(id *)error;
@end

@implementation RBTargetPropertyDomainRestriction

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  targetProperties = [context targetProperties];
  LOBYTE(error) = [(RBPropertyDomainRestriction *)self allowsWithProperties:targetProperties error:error];

  return error;
}

@end