@interface RBOriginatorPropertyDomainRestriction
- (BOOL)allowsContext:(id)context withError:(id *)error;
@end

@implementation RBOriginatorPropertyDomainRestriction

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  contextCopy = context;
  originatorProperties = [contextCopy originatorProperties];
  if (!originatorProperties)
  {
    originatorProcess = [contextCopy originatorProcess];
    originatorProperties = [originatorProcess bundleProperties];
  }

  v9 = [(RBPropertyDomainRestriction *)self allowsWithProperties:originatorProperties error:error];

  return v9;
}

@end