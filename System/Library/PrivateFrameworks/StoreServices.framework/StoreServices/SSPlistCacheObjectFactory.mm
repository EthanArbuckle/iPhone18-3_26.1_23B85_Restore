@interface SSPlistCacheObjectFactory
- (BOOL)supportsTypeIdentifier:(id)identifier;
- (id)cachedObjectWithDataRepresentation:(id)representation typeIdentifier:(id)identifier;
@end

@implementation SSPlistCacheObjectFactory

- (BOOL)supportsTypeIdentifier:(id)identifier
{
  v4 = +[SSPlistCacheObject cacheObjectTypeIdentifier];

  return [identifier isEqualToString:v4];
}

- (id)cachedObjectWithDataRepresentation:(id)representation typeIdentifier:(id)identifier
{
  v4 = [[SSPlistCacheObject alloc] initWithCacheObjectDataRepresentation:representation];

  return v4;
}

@end