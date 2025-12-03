@interface SagaPublishPlaylistOperation
- (SagaPublishPlaylistOperation)initWithClientIdentity:(id)identity sagaID:(unint64_t)d;
- (SagaPublishPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity sagaID:(unint64_t)d;
- (void)main;
@end

@implementation SagaPublishPlaylistOperation

- (void)main
{
  v3 = [NSString stringWithFormat:@"SagaPublishPlaylistOperation - (playlist cloud id = %llu)", self->_sagaID];
  v4 = [[MSVXPCTransaction alloc] initWithName:v3];
  [v4 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v8 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:self->_sagaID];
  v9 = [ML3Container anyInLibrary:musicLibrary2 predicate:v8];

  if ([v9 existsInLibrary])
  {
    v26 = v3;
    connection = [(CloudLibraryOperation *)self connection];
    databaseID = [connection databaseID];
    v12 = [NSNumber numberWithUnsignedLongLong:self->_sagaID];
    v36 = v12;
    v13 = [NSArray arrayWithObjects:&v36 count:1];
    v25 = ML3ContainerPropertyCloudIsPublic;
    v33 = ML3ContainerPropertyCloudIsPublic;
    v34 = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v35 = v14;
    v15 = [NSArray arrayWithObjects:&v35 count:1];
    v16 = [ICBulkSetContainerPropertyRequest requestWithDatabaseID:databaseID containerIDs:v13 properties:v15];

    [v16 setVerificationInteractionLevel:2];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100056A34;
    v27[3] = &unk_1001DF838;
    v27[4] = self;
    v17 = dispatch_semaphore_create(0);
    v28 = v17;
    [connection sendRequest:v16 withResponseHandler:v27];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if ([(NSString *)self->_playlistGlobalID length])
    {
      if ([(NSString *)self->_playlistShareURL length])
      {
        playlistShareURL = self->_playlistShareURL;
      }

      else
      {
        playlistShareURL = &stru_1001E0388;
      }

      objc_storeStrong(&self->_playlistShareURL, playlistShareURL);
      playlistGlobalID = self->_playlistGlobalID;
      v32[0] = &__kCFBooleanTrue;
      v32[1] = playlistGlobalID;
      v32[2] = self->_playlistShareURL;
      v21 = [NSArray arrayWithObjects:v32 count:3];
      v31[0] = v25;
      v31[1] = ML3ContainerPropertyCloudGlobalID;
      v31[2] = ML3ContainerPropertyCloudShareURL;
      v22 = [NSArray arrayWithObjects:v31 count:3];
      [v9 setValues:v21 forProperties:v22];
    }

    v3 = v26;
  }

  else
  {
    connection = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
    {
      sagaID = self->_sagaID;
      *buf = 134217984;
      v30 = sagaID;
      _os_log_impl(&_mh_execute_header, connection, OS_LOG_TYPE_ERROR, "Playlist with cloud id = %llu is not in the database, skipping publish request.", buf, 0xCu);
    }
  }

  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  v24 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary3 setClientIdentity:v24];

  [v4 endTransaction];
}

- (SagaPublishPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity sagaID:(unint64_t)d
{
  v7.receiver = self;
  v7.super_class = SagaPublishPlaylistOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:configuration clientIdentity:identity];
  if (result)
  {
    result->_sagaID = d;
  }

  return result;
}

- (SagaPublishPlaylistOperation)initWithClientIdentity:(id)identity sagaID:(unint64_t)d
{
  identityCopy = identity;
  v7 = objc_opt_new();
  v8 = [(SagaPublishPlaylistOperation *)self initWithConfiguration:v7 clientIdentity:identityCopy sagaID:d];

  return v8;
}

@end