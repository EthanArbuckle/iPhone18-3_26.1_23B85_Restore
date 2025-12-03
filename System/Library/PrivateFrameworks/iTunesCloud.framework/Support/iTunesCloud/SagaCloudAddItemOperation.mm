@interface SagaCloudAddItemOperation
- (SagaCloudAddItemOperation)initWithCoder:(id)coder;
- (SagaCloudAddItemOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds clientIdentity:(id)identity;
- (SagaCloudAddItemOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds referralAlbumAdamID:(int64_t)d clientIdentity:(id)identity;
- (SagaCloudAddItemOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds referralPlaylistGlobalID:(id)d clientIdentity:(id)identity;
- (void)encodeWithCoder:(id)coder;
- (void)logCloudAddRequestDescription;
- (void)processAddedItems:(id)items;
- (void)removePendingAddedItemsForPermanentlyFailedOperation;
@end

@implementation SagaCloudAddItemOperation

- (void)removePendingAddedItemsForPermanentlyFailedOperation
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating in_my_library for cloud-add failure.", v8, 2u);
  }

  configuration = [(CloudLibraryOperation *)self configuration];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v7 = objc_opt_class();
  sub_1001075A8(configuration, clientIdentity, musicLibrary, v7, *(&self->super._updateRequired + 1));
}

- (void)processAddedItems:(id)items
{
  itemsCopy = items;
  [(SagaCloudAddItemOperation *)self setAdamIDToSagaIDMap:itemsCopy];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  sub_10013FD54(itemsCopy, musicLibrary, clientIdentity);

  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating in_my_library for cloud-add success.", v12, 2u);
  }

  configuration = [(CloudLibraryOperation *)self configuration];
  clientIdentity2 = [(CloudLibraryOperation *)self clientIdentity];
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v11 = objc_opt_class();
  sub_1001075A8(configuration, clientIdentity2, musicLibrary2, v11, *(&self->super._updateRequired + 1));
}

- (void)logCloudAddRequestDescription
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(&self->super._updateRequired + 1);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cloud-add request for adam ID = %{public}@", &v5, 0xCu);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCloudAddItemOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:*(&self->super._updateRequired + 1) forKey:{@"SagaCloudAddItemOperationAdamsIDKey", v5.receiver, v5.super_class}];
}

- (SagaCloudAddItemOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SagaCloudAddItemOperation;
  v5 = [(CloudLibraryOperation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"SagaCloudAddItemOperationAdamsIDKey"];
    v7 = *(v5 + 89);
    *(v5 + 89) = v6;

    if (!*(v5 + 89))
    {
      v8 = [coderCopy decodeInt64ForKey:@"SagaCloudAddItemOperationAdamIDKey"];
      if (v8)
      {
        v9 = [NSNumber numberWithLongLong:v8];
        v10 = [NSArray arrayWithObject:v9];
        v11 = *(v5 + 89);
        *(v5 + 89) = v10;
      }
    }
  }

  return v5;
}

- (SagaCloudAddItemOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds referralPlaylistGlobalID:(id)d clientIdentity:(id)identity
{
  dCopy = d;
  v12 = [(SagaCloudAddItemOperation *)self initWithConfiguration:configuration adamIDs:ds clientIdentity:identity];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((&v12->_referralAlbumAdamID + 1), d);
  }

  return v13;
}

- (SagaCloudAddItemOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds referralAlbumAdamID:(int64_t)d clientIdentity:(id)identity
{
  result = [(SagaCloudAddItemOperation *)self initWithConfiguration:configuration adamIDs:ds clientIdentity:identity];
  if (result)
  {
    *(&result->_adamIDs + 1) = d;
  }

  return result;
}

- (SagaCloudAddItemOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds clientIdentity:(id)identity
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = SagaCloudAddItemOperation;
  v9 = [(CloudLibraryOperation *)&v13 initWithConfiguration:configuration clientIdentity:identity];
  if (v9)
  {
    v10 = [dsCopy copy];
    v11 = *(v9 + 89);
    *(v9 + 89) = v10;
  }

  return v9;
}

@end