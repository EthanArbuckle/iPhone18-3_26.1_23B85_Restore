@interface SagaCloudAddItemToPlaylistOperation
- (SagaCloudAddItemToPlaylistOperation)initWithCoder:(id)coder;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d clientIdentity:(id)identity;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralAlbumAdamID:(int64_t)iD clientIdentity:(id)identity;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralPlaylistGlobalID:(id)iD clientIdentity:(id)identity;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCloudAddItemToPlaylistOperation;
  coderCopy = coder;
  [(SagaCloudAddItemOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:*(&self->super._adamIDToSagaIDMap + 1) forKey:{@"SagaCloudAddItemToPlaylistOperationPlaylistPersistentIDKey", v5.receiver, v5.super_class}];
}

- (SagaCloudAddItemToPlaylistOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SagaCloudAddItemToPlaylistOperation;
  v5 = [(SagaCloudAddItemOperation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    *(v5 + 121) = [coderCopy decodeInt64ForKey:@"SagaCloudAddItemToPlaylistOperationPlaylistPersistentIDKey"];
  }

  return v5;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralPlaylistGlobalID:(id)iD clientIdentity:(id)identity
{
  iDCopy = iD;
  v14 = [(SagaCloudAddItemToPlaylistOperation *)self initWithConfiguration:configuration adamIDs:ds playlistPersistentID:d clientIdentity:identity];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((&v14->super._referralAlbumAdamID + 1), iD);
  }

  return v15;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralAlbumAdamID:(int64_t)iD clientIdentity:(id)identity
{
  result = [(SagaCloudAddItemToPlaylistOperation *)self initWithConfiguration:configuration adamIDs:ds playlistPersistentID:d clientIdentity:identity];
  if (result)
  {
    *(&result->super._adamIDs + 1) = iD;
  }

  return result;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d clientIdentity:(id)identity
{
  v8.receiver = self;
  v8.super_class = SagaCloudAddItemToPlaylistOperation;
  result = [(SagaCloudAddItemOperation *)&v8 initWithConfiguration:configuration adamIDs:ds clientIdentity:identity];
  if (result)
  {
    *(&result->super._adamIDToSagaIDMap + 1) = d;
  }

  return result;
}

@end