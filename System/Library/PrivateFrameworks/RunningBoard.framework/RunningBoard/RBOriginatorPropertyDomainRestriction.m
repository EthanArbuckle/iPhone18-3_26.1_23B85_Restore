@interface RBOriginatorPropertyDomainRestriction
- (BOOL)allowsContext:(id)a3 withError:(id *)a4;
@end

@implementation RBOriginatorPropertyDomainRestriction

- (BOOL)allowsContext:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [v6 originatorProperties];
  if (!v7)
  {
    v8 = [v6 originatorProcess];
    v7 = [v8 bundleProperties];
  }

  v9 = [(RBPropertyDomainRestriction *)self allowsWithProperties:v7 error:a4];

  return v9;
}

@end