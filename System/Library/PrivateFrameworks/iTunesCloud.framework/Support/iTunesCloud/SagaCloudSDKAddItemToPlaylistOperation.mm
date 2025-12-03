@interface SagaCloudSDKAddItemToPlaylistOperation
- (SagaCloudSDKAddItemToPlaylistOperation)initWithClientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID;
- (SagaCloudSDKAddItemToPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID;
@end

@implementation SagaCloudSDKAddItemToPlaylistOperation

- (SagaCloudSDKAddItemToPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID
{
  v9.receiver = self;
  v9.super_class = SagaCloudSDKAddItemToPlaylistOperation;
  result = [(SagaCloudSDKAddOperation *)&v9 initWithConfiguration:configuration clientIdentity:identity opaqueID:d bundleID:iD];
  if (result)
  {
    result->_playlistPersistentID = persistentID;
  }

  return result;
}

- (SagaCloudSDKAddItemToPlaylistOperation)initWithClientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID
{
  iDCopy = iD;
  dCopy = d;
  identityCopy = identity;
  v13 = objc_opt_new();
  v14 = [(SagaCloudSDKAddItemToPlaylistOperation *)self initWithConfiguration:v13 clientIdentity:identityCopy opaqueID:dCopy bundleID:iDCopy playlistPersistentID:persistentID];

  return v14;
}

@end