@interface SagaCreateGeniusPlaylistOperation
- (SagaCreateGeniusPlaylistOperation)initWithCoder:(id)a3;
- (SagaCreateGeniusPlaylistOperation)initWithConfiguration:(id)a3 geniusPlaylistPersistentID:(int64_t)a4 playlistName:(id)a5 seedItemIDs:(id)a6 itemIDs:(id)a7 clientIdentity:(id)a8;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaCreateGeniusPlaylistOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  playlistPersistentID = self->_playlistPersistentID;
  v5 = [NSString stringWithFormat:@"SagaCreateGeniusPlaylistOperation - (playlist_persistent_id  = %lld / playlist_name = %@)", playlistPersistentID, self->_playlistName];
  v6 = [[MSVXPCTransaction alloc] initWithName:v5];
  [v6 beginTransaction];
  v7 = [(CloudLibraryOperation *)self musicLibrary];
  v8 = [(CloudLibraryOperation *)self clientIdentity];
  [v7 setClientIdentity:v8];

  v9 = self->_playlistPersistentID;
  v10 = [(CloudLibraryOperation *)self musicLibrary];
  v11 = [ML3Container newWithPersistentID:v9 inLibrary:v10];

  if ([v11 existsInLibrary])
  {
    v12 = [(CloudLibraryOperation *)self connection];
    v13 = [ICCreateGeniusContainerRequest requestWithDatabaseID:[v12 databaseID] playlistName:self->_playlistName seedItemIDs:self->_seedItemIDs itemIDs:self->_itemIDs];
    [v13 setVerificationInteractionLevel:2];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100060C08;
    v19[3] = &unk_1001DF838;
    v19[4] = self;
    v14 = dispatch_semaphore_create(0);
    v20 = v14;
    [v12 sendRequest:v13 withResponseHandler:v19];
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_playlistSagaID)
    {
      v15 = [NSNumber numberWithUnsignedLongLong:?];
      [v11 setValue:v15 forProperty:ML3ContainerPropertyStoreCloudID];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v16 = self->_playlistPersistentID;
      *buf = 134217984;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Playlist with pid = %lld is not in the database, skipping add to cloud library.", buf, 0xCu);
    }
  }

  v17 = [(CloudLibraryOperation *)self musicLibrary];
  v18 = MSVTCCIdentityForCurrentProcess();
  [v17 setClientIdentity:v18];

  [v6 endTransaction];
  objc_autoreleasePoolPop(v3);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaCreateGeniusPlaylistOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_playlistPersistentID forKey:{@"SagaAddPlaylistOperationPlaylistPersistentIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_playlistName forKey:@"SagaAddPlaylistOperationPlaylistNameKey"];
  [v4 encodeObject:self->_seedItemIDs forKey:@"SagaAddPlaylistOperationPlaylistSeedItemIDsKey"];
  [v4 encodeObject:self->_itemIDs forKey:@"SagaAddPlaylistOperationPlaylistItemIDsKey"];
}

- (SagaCreateGeniusPlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SagaCreateGeniusPlaylistOperation;
  v5 = [(CloudLibraryOperation *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_playlistPersistentID = [v4 decodeInt64ForKey:@"SagaAddPlaylistOperationPlaylistPersistentIDKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaAddPlaylistOperationPlaylistNameKey"];
    playlistName = v5->_playlistName;
    v5->_playlistName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaAddPlaylistOperationPlaylistSeedItemIDsKey"];
    seedItemIDs = v5->_seedItemIDs;
    v5->_seedItemIDs = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaAddPlaylistOperationPlaylistItemIDsKey"];
    itemIDs = v5->_itemIDs;
    v5->_itemIDs = v10;
  }

  return v5;
}

- (SagaCreateGeniusPlaylistOperation)initWithConfiguration:(id)a3 geniusPlaylistPersistentID:(int64_t)a4 playlistName:(id)a5 seedItemIDs:(id)a6 itemIDs:(id)a7 clientIdentity:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = SagaCreateGeniusPlaylistOperation;
  v17 = [(CloudLibraryOperation *)&v26 initWithConfiguration:a3 clientIdentity:a8];
  v18 = v17;
  if (v17)
  {
    v17->_playlistPersistentID = a4;
    v19 = [v14 copy];
    playlistName = v18->_playlistName;
    v18->_playlistName = v19;

    v21 = [v15 copy];
    seedItemIDs = v18->_seedItemIDs;
    v18->_seedItemIDs = v21;

    v23 = [v16 copy];
    itemIDs = v18->_itemIDs;
    v18->_itemIDs = v23;
  }

  return v18;
}

@end