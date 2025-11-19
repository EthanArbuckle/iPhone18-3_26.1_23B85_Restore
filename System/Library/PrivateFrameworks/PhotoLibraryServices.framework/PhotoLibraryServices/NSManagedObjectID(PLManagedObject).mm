@interface NSManagedObjectID(PLManagedObject)
- (id)pl_shortURI;
@end

@implementation NSManagedObjectID(PLManagedObject)

- (id)pl_shortURI
{
  v1 = [a1 URIRepresentation];
  v2 = PLShortObjectIDFromURL(v1);

  return v2;
}

@end