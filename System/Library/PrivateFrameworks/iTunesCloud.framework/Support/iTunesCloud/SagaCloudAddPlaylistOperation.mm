@interface SagaCloudAddPlaylistOperation
- (SagaCloudAddPlaylistOperation)initWithClientIdentity:(id)identity playlistGlobalID:(id)d;
- (SagaCloudAddPlaylistOperation)initWithCoder:(id)coder;
- (SagaCloudAddPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistGlobalID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)logCloudAddRequestDescription;
- (void)processAddedItems:(id)items;
- (void)removePendingAddedItemsForPermanentlyFailedOperation;
@end

@implementation SagaCloudAddPlaylistOperation

- (void)removePendingAddedItemsForPermanentlyFailedOperation
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:0];
  v20[0] = v3;
  v4 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyCloudGlobalID equalToValue:*(&self->super._updateRequired + 1)];
  v20[1] = v4;
  v5 = [NSArray arrayWithObjects:v20 count:2];
  v6 = [ML3AllCompoundPredicate predicateMatchingPredicates:v5];

  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v8 = [ML3Container anyInLibrary:musicLibrary predicate:v6];

  if (v8)
  {
    deleteFromLibrary = [v8 deleteFromLibrary];
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    v11 = v10;
    if (deleteFromLibrary)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(&self->super._updateRequired + 1);
        v18 = 138543362;
        v19 = v12;
        v13 = "Deleted pending playlist with global id: %{public}@";
LABEL_7:
        v15 = v11;
        v16 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, v16, v13, &v18, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = *(&self->super._updateRequired + 1);
      v18 = 138543362;
      v19 = v17;
      v13 = "Failed to delete pending playlist with global id: %{public}@";
      v15 = v11;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(&self->super._updateRequired + 1);
      v18 = 138543362;
      v19 = v14;
      v13 = "Could not find a pending playlist to delete with global id: %{public}@";
      goto LABEL_7;
    }
  }
}

- (void)processAddedItems:(id)items
{
  itemsCopy = items;
  [(SagaCloudAddPlaylistOperation *)self setGlobalIDToSagaIDMap:itemsCopy];
  if ([itemsCopy count])
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100108844;
    v6[3] = &unk_1001DEDD0;
    v6[4] = self;
    v7 = itemsCopy;
    [musicLibrary performDatabaseTransactionWithBlock:v6];
  }
}

- (void)logCloudAddRequestDescription
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(&self->super._updateRequired + 1);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cloud-add request for playlist global ID = %{public}@", &v5, 0xCu);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCloudAddPlaylistOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:*(&self->super._updateRequired + 1) forKey:{@"SagaCloudAddPlaylistOperationPlaylistGlobalIDKey", v5.receiver, v5.super_class}];
}

- (SagaCloudAddPlaylistOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SagaCloudAddPlaylistOperation;
  v5 = [(CloudLibraryOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaCloudAddPlaylistOperationPlaylistGlobalIDKey"];
    v7 = *(v5 + 89);
    *(v5 + 89) = v6;
  }

  return v5;
}

- (SagaCloudAddPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistGlobalID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = SagaCloudAddPlaylistOperation;
  v10 = [(CloudLibraryOperation *)&v13 initWithConfiguration:configuration clientIdentity:identity];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong((v10 + 89), d);
  }

  return v11;
}

- (SagaCloudAddPlaylistOperation)initWithClientIdentity:(id)identity playlistGlobalID:(id)d
{
  dCopy = d;
  identityCopy = identity;
  v8 = objc_opt_new();
  v9 = [(SagaCloudAddPlaylistOperation *)self initWithConfiguration:v8 clientIdentity:identityCopy playlistGlobalID:dCopy];

  return v9;
}

@end