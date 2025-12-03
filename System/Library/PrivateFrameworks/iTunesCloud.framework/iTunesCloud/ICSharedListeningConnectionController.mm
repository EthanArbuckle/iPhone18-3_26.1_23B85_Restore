@interface ICSharedListeningConnectionController
+ (id)externalSharedListeningConnectionWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d;
+ (id)sharedListeningConnectionWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d;
- (ICSharedListeningConnectionController)initWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d;
- (ICSharedListeningConnectionControllerDelegate)delegate;
@end

@implementation ICSharedListeningConnectionController

- (ICSharedListeningConnectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICSharedListeningConnectionController)initWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d
{
  identifierCopy = identifier;
  identityCopy = identity;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = ICSharedListeningConnectionController;
  v12 = [(ICSharedListeningConnectionController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionIdentifier, identifier);
    objc_storeStrong(&v13->_identity, identity);
    objc_storeStrong(&v13->_bundleID, d);
  }

  return v13;
}

+ (id)sharedListeningConnectionWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d
{
  dCopy = d;
  identityCopy = identity;
  identifierCopy = identifier;
  v10 = [[ICDirectSharedListeningConnectionController alloc] initWithSessionIdentifier:identifierCopy identity:identityCopy bundleID:dCopy];

  return v10;
}

+ (id)externalSharedListeningConnectionWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d
{
  dCopy = d;
  identityCopy = identity;
  identifierCopy = identifier;
  v10 = [[ICExternalSharedListeningConnectionController alloc] initWithSessionIdentifier:identifierCopy identity:identityCopy bundleID:dCopy];

  return v10;
}

@end