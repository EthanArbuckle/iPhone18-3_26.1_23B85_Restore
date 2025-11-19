@interface SagaCloudAddItemToPlaylistOperation
- (SagaCloudAddItemToPlaylistOperation)initWithCoder:(id)a3;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 playlistPersistentID:(int64_t)a5 clientIdentity:(id)a6;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 playlistPersistentID:(int64_t)a5 referralAlbumAdamID:(int64_t)a6 clientIdentity:(id)a7;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 playlistPersistentID:(int64_t)a5 referralPlaylistGlobalID:(id)a6 clientIdentity:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)logCloudAddRequestDescription;
@end

@implementation SagaCloudAddItemToPlaylistOperation

- (void)logCloudAddRequestDescription
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(&self->super.super._updateRequired + 1);
    v5 = *(&self->super._adamIDToSagaIDMap + 1);
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cloud-add request for adam ID = %{public}@ / container_pid = %lld", &v6, 0x16u);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaCloudAddItemToPlaylistOperation;
  v4 = a3;
  [(SagaCloudAddItemOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:*(&self->super._adamIDToSagaIDMap + 1) forKey:{@"SagaCloudAddItemToPlaylistOperationPlaylistPersistentIDKey", v5.receiver, v5.super_class}];
}

- (SagaCloudAddItemToPlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SagaCloudAddItemToPlaylistOperation;
  v5 = [(SagaCloudAddItemOperation *)&v7 initWithCoder:v4];
  if (v5)
  {
    *(v5 + 121) = [v4 decodeInt64ForKey:@"SagaCloudAddItemToPlaylistOperationPlaylistPersistentIDKey"];
  }

  return v5;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 playlistPersistentID:(int64_t)a5 referralPlaylistGlobalID:(id)a6 clientIdentity:(id)a7
{
  v13 = a6;
  v14 = [(SagaCloudAddItemToPlaylistOperation *)self initWithConfiguration:a3 adamIDs:a4 playlistPersistentID:a5 clientIdentity:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((&v14->super._referralAlbumAdamID + 1), a6);
  }

  return v15;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 playlistPersistentID:(int64_t)a5 referralAlbumAdamID:(int64_t)a6 clientIdentity:(id)a7
{
  result = [(SagaCloudAddItemToPlaylistOperation *)self initWithConfiguration:a3 adamIDs:a4 playlistPersistentID:a5 clientIdentity:a7];
  if (result)
  {
    *(&result->super._adamIDs + 1) = a6;
  }

  return result;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 playlistPersistentID:(int64_t)a5 clientIdentity:(id)a6
{
  v8.receiver = self;
  v8.super_class = SagaCloudAddItemToPlaylistOperation;
  result = [(SagaCloudAddItemOperation *)&v8 initWithConfiguration:a3 adamIDs:a4 clientIdentity:a6];
  if (result)
  {
    *(&result->super._adamIDToSagaIDMap + 1) = a5;
  }

  return result;
}

@end