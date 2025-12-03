@interface PRSWallpaperClient
- (void)initializeWithKnownIdentities:(id)identities knownRoles:(id)roles knownCollection:(id)collection;
@end

@implementation PRSWallpaperClient

- (void)initializeWithKnownIdentities:(id)identities knownRoles:(id)roles knownCollection:(id)collection
{
  collectionCopy = collection;
  rolesCopy = roles;
  identitiesCopy = identities;
  WeakRetained = objc_loadWeakRetained(&self->_publisher);
  [WeakRetained _initializeClient:self withKnownIdentities:identitiesCopy knownRoles:rolesCopy knownCollection:collectionCopy];
}

@end