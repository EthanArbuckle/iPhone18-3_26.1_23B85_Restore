@interface SagaCloudAddItemOperation
- (SagaCloudAddItemOperation)initWithCoder:(id)a3;
- (SagaCloudAddItemOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 clientIdentity:(id)a5;
- (SagaCloudAddItemOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 referralAlbumAdamID:(int64_t)a5 clientIdentity:(id)a6;
- (SagaCloudAddItemOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 referralPlaylistGlobalID:(id)a5 clientIdentity:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)logCloudAddRequestDescription;
- (void)processAddedItems:(id)a3;
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

  v4 = [(CloudLibraryOperation *)self configuration];
  v5 = [(CloudLibraryOperation *)self clientIdentity];
  v6 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = objc_opt_class();
  sub_1001075A8(v4, v5, v6, v7, *(&self->super._updateRequired + 1));
}

- (void)processAddedItems:(id)a3
{
  v4 = a3;
  [(SagaCloudAddItemOperation *)self setAdamIDToSagaIDMap:v4];
  v5 = [(CloudLibraryOperation *)self musicLibrary];
  v6 = [(CloudLibraryOperation *)self clientIdentity];
  sub_10013FD54(v4, v5, v6);

  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating in_my_library for cloud-add success.", v12, 2u);
  }

  v8 = [(CloudLibraryOperation *)self configuration];
  v9 = [(CloudLibraryOperation *)self clientIdentity];
  v10 = [(CloudLibraryOperation *)self musicLibrary];
  v11 = objc_opt_class();
  sub_1001075A8(v8, v9, v10, v11, *(&self->super._updateRequired + 1));
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaCloudAddItemOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:*(&self->super._updateRequired + 1) forKey:{@"SagaCloudAddItemOperationAdamsIDKey", v5.receiver, v5.super_class}];
}

- (SagaCloudAddItemOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SagaCloudAddItemOperation;
  v5 = [(CloudLibraryOperation *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"SagaCloudAddItemOperationAdamsIDKey"];
    v7 = *(v5 + 89);
    *(v5 + 89) = v6;

    if (!*(v5 + 89))
    {
      v8 = [v4 decodeInt64ForKey:@"SagaCloudAddItemOperationAdamIDKey"];
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

- (SagaCloudAddItemOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 referralPlaylistGlobalID:(id)a5 clientIdentity:(id)a6
{
  v11 = a5;
  v12 = [(SagaCloudAddItemOperation *)self initWithConfiguration:a3 adamIDs:a4 clientIdentity:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((&v12->_referralAlbumAdamID + 1), a5);
  }

  return v13;
}

- (SagaCloudAddItemOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 referralAlbumAdamID:(int64_t)a5 clientIdentity:(id)a6
{
  result = [(SagaCloudAddItemOperation *)self initWithConfiguration:a3 adamIDs:a4 clientIdentity:a6];
  if (result)
  {
    *(&result->_adamIDs + 1) = a5;
  }

  return result;
}

- (SagaCloudAddItemOperation)initWithConfiguration:(id)a3 adamIDs:(id)a4 clientIdentity:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SagaCloudAddItemOperation;
  v9 = [(CloudLibraryOperation *)&v13 initWithConfiguration:a3 clientIdentity:a5];
  if (v9)
  {
    v10 = [v8 copy];
    v11 = *(v9 + 89);
    *(v9 + 89) = v10;
  }

  return v9;
}

@end