@interface NSManagedObjectID(PLManagedObject)
- (id)pl_shortURI;
@end

@implementation NSManagedObjectID(PLManagedObject)

- (id)pl_shortURI
{
  uRIRepresentation = [self URIRepresentation];
  v2 = PLShortObjectIDFromURL(uRIRepresentation);

  return v2;
}

@end