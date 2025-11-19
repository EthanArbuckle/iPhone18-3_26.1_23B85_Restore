@interface PRSWallpaperClient
- (void)initializeWithKnownIdentities:(id)a3 knownRoles:(id)a4 knownCollection:(id)a5;
@end

@implementation PRSWallpaperClient

- (void)initializeWithKnownIdentities:(id)a3 knownRoles:(id)a4 knownCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_publisher);
  [WeakRetained _initializeClient:self withKnownIdentities:v10 knownRoles:v9 knownCollection:v8];
}

@end