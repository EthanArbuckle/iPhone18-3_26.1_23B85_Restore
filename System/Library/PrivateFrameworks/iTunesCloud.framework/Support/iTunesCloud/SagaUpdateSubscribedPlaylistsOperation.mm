@interface SagaUpdateSubscribedPlaylistsOperation
- (SagaUpdateSubscribedPlaylistsOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity subscribedPlaylistSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval requestReason:(int64_t)reason pinnedOnly:(BOOL)only;
- (void)main;
@end

@implementation SagaUpdateSubscribedPlaylistsOperation

- (void)main
{
  playlistSagaIDs = self->_playlistSagaIDs;
  if (!playlistSagaIDs)
  {
    goto LABEL_4;
  }

  if ([(NSArray *)playlistSagaIDs count])
  {
    playlistSagaIDs = self->_playlistSagaIDs;
LABEL_4:
    v4 = [NSString stringWithFormat:@"SagaUpdateSubscribedPlaylistsOperation - (saga_id count = %llu)", [(NSArray *)playlistSagaIDs count]];
    v5 = [[MSVXPCTransaction alloc] initWithName:v4];
    [v5 beginTransaction];
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    connection = [(CloudLibraryOperation *)self connection];
    v9 = [[SagaSubscribedPlaylistUpdater alloc] initWithSubscribedPlaylistCloudIDs:self->_playlistSagaIDs cloudLibraryConnection:connection];
    [(SagaSubscribedPlaylistUpdater *)v9 setIgnoreMinRefreshInterval:self->_ignoreMinRefreshInterval];
    [(SagaSubscribedPlaylistUpdater *)v9 setRequestReason:self->_requestReason];
    [(SagaSubscribedPlaylistUpdater *)v9 setPinnedOnly:self->_pinnedOnly];
    clientIdentity2 = [(CloudLibraryOperation *)self clientIdentity];
    v17 = 0;
    [(SagaSubscribedPlaylistUpdater *)v9 performUpdateWithClientIdentity:clientIdentity2 error:&v17];
    v11 = v17;

    if (v11)
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error updating global playlists: %{public}@", buf, 0xCu);
      }

      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    [(CloudLibraryOperation *)self setStatus:v13];
    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    v15 = MSVTCCIdentityForCurrentProcess();
    [musicLibrary2 setClientIdentity:v15];

    [v5 endTransaction];
    return;
  }

  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "No subscribed playlist saga ids to update.", buf, 2u);
  }

  [(CloudLibraryOperation *)self setStatus:1];
}

- (SagaUpdateSubscribedPlaylistsOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity subscribedPlaylistSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval requestReason:(int64_t)reason pinnedOnly:(BOOL)only
{
  dsCopy = ds;
  v19.receiver = self;
  v19.super_class = SagaUpdateSubscribedPlaylistsOperation;
  v15 = [(CloudLibraryOperation *)&v19 initWithConfiguration:configuration clientIdentity:identity];
  if (v15)
  {
    v16 = [dsCopy copy];
    playlistSagaIDs = v15->_playlistSagaIDs;
    v15->_playlistSagaIDs = v16;

    v15->_ignoreMinRefreshInterval = interval;
    v15->_requestReason = reason;
    v15->_pinnedOnly = only;
  }

  return v15;
}

@end