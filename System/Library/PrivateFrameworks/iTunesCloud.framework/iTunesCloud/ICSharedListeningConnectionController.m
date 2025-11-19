@interface ICSharedListeningConnectionController
+ (id)externalSharedListeningConnectionWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5;
+ (id)sharedListeningConnectionWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5;
- (ICSharedListeningConnectionController)initWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5;
- (ICSharedListeningConnectionControllerDelegate)delegate;
@end

@implementation ICSharedListeningConnectionController

- (ICSharedListeningConnectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICSharedListeningConnectionController)initWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICSharedListeningConnectionController;
  v12 = [(ICSharedListeningConnectionController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionIdentifier, a3);
    objc_storeStrong(&v13->_identity, a4);
    objc_storeStrong(&v13->_bundleID, a5);
  }

  return v13;
}

+ (id)sharedListeningConnectionWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[ICDirectSharedListeningConnectionController alloc] initWithSessionIdentifier:v9 identity:v8 bundleID:v7];

  return v10;
}

+ (id)externalSharedListeningConnectionWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[ICExternalSharedListeningConnectionController alloc] initWithSessionIdentifier:v9 identity:v8 bundleID:v7];

  return v10;
}

@end