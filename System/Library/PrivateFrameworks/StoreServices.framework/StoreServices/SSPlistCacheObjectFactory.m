@interface SSPlistCacheObjectFactory
- (BOOL)supportsTypeIdentifier:(id)a3;
- (id)cachedObjectWithDataRepresentation:(id)a3 typeIdentifier:(id)a4;
@end

@implementation SSPlistCacheObjectFactory

- (BOOL)supportsTypeIdentifier:(id)a3
{
  v4 = +[SSPlistCacheObject cacheObjectTypeIdentifier];

  return [a3 isEqualToString:v4];
}

- (id)cachedObjectWithDataRepresentation:(id)a3 typeIdentifier:(id)a4
{
  v4 = [[SSPlistCacheObject alloc] initWithCacheObjectDataRepresentation:a3];

  return v4;
}

@end