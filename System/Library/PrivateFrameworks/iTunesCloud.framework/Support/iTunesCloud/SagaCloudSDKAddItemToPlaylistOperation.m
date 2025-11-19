@interface SagaCloudSDKAddItemToPlaylistOperation
- (SagaCloudSDKAddItemToPlaylistOperation)initWithClientIdentity:(id)a3 opaqueID:(id)a4 bundleID:(id)a5 playlistPersistentID:(int64_t)a6;
- (SagaCloudSDKAddItemToPlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 opaqueID:(id)a5 bundleID:(id)a6 playlistPersistentID:(int64_t)a7;
@end

@implementation SagaCloudSDKAddItemToPlaylistOperation

- (SagaCloudSDKAddItemToPlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 opaqueID:(id)a5 bundleID:(id)a6 playlistPersistentID:(int64_t)a7
{
  v9.receiver = self;
  v9.super_class = SagaCloudSDKAddItemToPlaylistOperation;
  result = [(SagaCloudSDKAddOperation *)&v9 initWithConfiguration:a3 clientIdentity:a4 opaqueID:a5 bundleID:a6];
  if (result)
  {
    result->_playlistPersistentID = a7;
  }

  return result;
}

- (SagaCloudSDKAddItemToPlaylistOperation)initWithClientIdentity:(id)a3 opaqueID:(id)a4 bundleID:(id)a5 playlistPersistentID:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [(SagaCloudSDKAddItemToPlaylistOperation *)self initWithConfiguration:v13 clientIdentity:v12 opaqueID:v11 bundleID:v10 playlistPersistentID:a6];

  return v14;
}

@end