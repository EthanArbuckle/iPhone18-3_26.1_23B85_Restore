@interface SagaImporter
- (BOOL)_updateGlobalPlaylistsFromContainersPayloadAtPath:(id)path downloadPathForSubscribedContainersPayload:(id)payload;
- (SagaImporter)initWithConnection:(id)connection serverInitiatedReset:(BOOL)reset clientInitiatedReset:(BOOL)initiatedReset clientInitiatedReloadForPins:(BOOL)pins clientFeaturesVersion:(id)version clientIdentity:(id)identity fromRevision:(unsigned int)revision toRevision:(unsigned int)self0;
- (id)_importDataFromResponseFileURLs:(id)ls;
- (void)_fetchUpdatedAlbumsWithCompletion:(id)completion;
- (void)_fetchUpdatedAlbumsWithPaginationToken:(id)token responseFileURLs:(id)ls completion:(id)completion;
- (void)_fetchUpdatedArtistsWithCompletion:(id)completion;
- (void)_fetchUpdatedArtistsWithPaginationToken:(id)token responseFileURLs:(id)ls completion:(id)completion;
- (void)_fetchUpdatedLibraryPinsWithCompletion:(id)completion;
- (void)_fetchUpdatedPlaylistsWithCompletion:(id)completion;
- (void)_fetchUpdatedTracksWithCompletion:(id)completion;
- (void)_fetchUpdatedTracksWithPaginationToken:(id)token responseFileURLs:(id)ls currentIncludesBookmarkable:(BOOL)bookmarkable cloudIDToLyricsTokenMap:(id)map completion:(id)completion;
- (void)_importLyricsWithLyricsTokenMap:(id)map;
- (void)_removeUnavailableSubscriptionAssetsInLibrary:(id)library;
- (void)_updateProgressWithItemsProgress:(float)itemsProgress albumsProgress:(float)albumsProgress artistsProgress:(float)artistsProgress playlistProgress:(float)playlistProgress importerProgress:(float)progress;
- (void)cancel;
- (void)performUpdateWithCompletionHandler:(id)handler;
@end

@implementation SagaImporter

- (void)_fetchUpdatedArtistsWithPaginationToken:(id)token responseFileURLs:(id)ls completion:(id)completion
{
  tokenCopy = token;
  lsCopy = ls;
  completionCopy = completion;
  connection = [(SagaImporter *)self connection];
  v12 = [(NSString *)self->_updateBaseDirectory stringByAppendingPathComponent:@"Artists"];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"artists_%lu.daap", [lsCopy count] + 1);
  v30[0] = v12;
  v30[1] = v13;
  v14 = [NSArray arrayWithObjects:v30 count:2];
  v15 = [NSURL fileURLWithPathComponents:v14];

  v16 = -[ICArtistsRequest initWithDatabaseID:paginationToken:]([ICArtistsRequest alloc], "initWithDatabaseID:paginationToken:", [connection databaseID], tokenCopy);
  fromRevision = self->_fromRevision;
  if (fromRevision)
  {
    toRevision = self->_toRevision;
    if (toRevision > fromRevision || self->_clientInitiatedReloadForPins)
    {
      if (!self->_serverInitiatedReset && !self->_clientInitiatedReset)
      {
        v19 = [NSString stringWithFormat:@"%u", self->_fromRevision];
        [(ICDRequest *)v16 setValue:v19 forArgument:@"delta"];

        toRevision = self->_toRevision;
      }

      toRevision = [NSString stringWithFormat:@"%u", toRevision];
      [(ICDRequest *)v16 setValue:toRevision forArgument:@"revision-id"];
    }
  }

  if ([tokenCopy length])
  {
    [(ICDRequest *)v16 setValue:tokenCopy forArgument:@"dmap.paginationtoken"];
  }

  [(ICDRequest *)v16 setSagaClientFeaturesVersion:self->_clientFeaturesVersionString];
  [(ICDRequest *)v16 setResponseDataDestinationFileURL:v15];
  [(ICDRequest *)v16 setAllowedRetryCount:5];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B7948;
  v25[3] = &unk_1001DCC18;
  v28 = v12;
  v29 = completionCopy;
  v25[4] = self;
  v26 = v15;
  v27 = lsCopy;
  v21 = v12;
  v22 = lsCopy;
  v23 = v15;
  v24 = completionCopy;
  [connection sendRequest:v16 withResponseHandler:v25];
}

- (void)_fetchUpdatedArtistsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting artist update", &v7, 0xCu);
  }

  v6 = +[NSMutableArray array];
  [(SagaImporter *)self _fetchUpdatedArtistsWithPaginationToken:0 responseFileURLs:v6 completion:completionCopy];
}

- (void)_fetchUpdatedAlbumsWithPaginationToken:(id)token responseFileURLs:(id)ls completion:(id)completion
{
  tokenCopy = token;
  lsCopy = ls;
  completionCopy = completion;
  connection = [(SagaImporter *)self connection];
  v12 = [(NSString *)self->_updateBaseDirectory stringByAppendingPathComponent:@"Albums"];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"albums_%lu.daap", [lsCopy count] + 1);
  v30[0] = v12;
  v30[1] = v13;
  v14 = [NSArray arrayWithObjects:v30 count:2];
  v15 = [NSURL fileURLWithPathComponents:v14];

  v16 = -[ICAlbumsRequest initWithDatabaseID:paginationToken:]([ICAlbumsRequest alloc], "initWithDatabaseID:paginationToken:", [connection databaseID], tokenCopy);
  fromRevision = self->_fromRevision;
  if (fromRevision)
  {
    toRevision = self->_toRevision;
    if (toRevision > fromRevision || self->_clientInitiatedReloadForPins)
    {
      if (!self->_serverInitiatedReset && !self->_clientInitiatedReset)
      {
        v19 = [NSString stringWithFormat:@"%u", self->_fromRevision];
        [(ICDRequest *)v16 setValue:v19 forArgument:@"delta"];

        toRevision = self->_toRevision;
      }

      toRevision = [NSString stringWithFormat:@"%u", toRevision];
      [(ICDRequest *)v16 setValue:toRevision forArgument:@"revision-id"];
    }
  }

  if ([tokenCopy length])
  {
    [(ICDRequest *)v16 setValue:tokenCopy forArgument:@"dmap.paginationtoken"];
  }

  [(ICDRequest *)v16 setSagaClientFeaturesVersion:self->_clientFeaturesVersionString];
  [(ICDRequest *)v16 setResponseDataDestinationFileURL:v15];
  [(ICDRequest *)v16 setAllowedRetryCount:5];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B82BC;
  v25[3] = &unk_1001DCC18;
  v28 = v12;
  v29 = completionCopy;
  v25[4] = self;
  v26 = v15;
  v27 = lsCopy;
  v21 = v12;
  v22 = lsCopy;
  v23 = v15;
  v24 = completionCopy;
  [connection sendRequest:v16 withResponseHandler:v25];
}

- (void)_fetchUpdatedAlbumsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting albums update", &v7, 0xCu);
  }

  v6 = +[NSMutableArray array];
  [(SagaImporter *)self _fetchUpdatedAlbumsWithPaginationToken:0 responseFileURLs:v6 completion:completionCopy];
}

- (void)_fetchUpdatedLibraryPinsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting pins update", buf, 0xCu);
  }

  connection = [(SagaImporter *)self connection];
  v15[0] = self->_updateBaseDirectory;
  v15[1] = @"pins.daap";
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSURL fileURLWithPathComponents:v7];

  v9 = -[ICPinsRequest initWithDatabaseID:]([ICPinsRequest alloc], "initWithDatabaseID:", [connection databaseID]);
  [(ICDRequest *)v9 setValue:@"all" forArgument:@"meta"];
  [(ICDRequest *)v9 setResponseDataDestinationFileURL:v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B8B48;
  v12[3] = &unk_1001DCBF0;
  v13 = v8;
  v14 = completionCopy;
  v12[4] = self;
  v10 = v8;
  v11 = completionCopy;
  [connection sendRequest:v9 withResponseHandler:v12];
}

- (void)_fetchUpdatedPlaylistsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting playlists update", buf, 0xCu);
  }

  connection = [(SagaImporter *)self connection];
  v22[0] = self->_updateBaseDirectory;
  v22[1] = @"containers.daap";
  v7 = [NSArray arrayWithObjects:v22 count:2];
  v8 = [NSURL fileURLWithPathComponents:v7];

  v9 = [ML3MusicLibrary musicLibraryForUserAccount:self->_userIdentity];
  [v9 setClientIdentity:self->_clientIdentity];
  v10 = [v9 valueForDatabaseProperty:@"MLCloudNeedsContainerRefetch"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    [v9 setValue:0 forDatabaseProperty:@"MLCloudNeedsContainerRefetch"];
  }

  v12 = +[ICContainersRequest requestWithDatabaseID:](ICContainersRequest, "requestWithDatabaseID:", [connection databaseID]);
  fromRevision = self->_fromRevision;
  if (fromRevision)
  {
    toRevision = self->_toRevision;
    if (toRevision <= fromRevision)
    {
      if (bOOLValue & 1 | !self->_clientInitiatedReloadForPins)
      {
        goto LABEL_14;
      }
    }

    else if (bOOLValue)
    {
      goto LABEL_14;
    }

    if (!self->_serverInitiatedReset && !self->_clientInitiatedReset)
    {
      v15 = [NSString stringWithFormat:@"%u", self->_fromRevision];
      [v12 setValue:v15 forArgument:@"delta"];

      toRevision = self->_toRevision;
    }

    toRevision = [NSString stringWithFormat:@"%u", toRevision];
    [v12 setValue:toRevision forArgument:@"revision-id"];
  }

LABEL_14:
  [v12 setSagaClientFeaturesVersion:self->_clientFeaturesVersionString];
  [v12 setValue:@"daap.playlistsongs" forArgument:@"meta"];
  [v12 setResponseDataDestinationFileURL:v8];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B9104;
  v19[3] = &unk_1001DCBF0;
  v20 = v8;
  v21 = completionCopy;
  v19[4] = self;
  v17 = v8;
  v18 = completionCopy;
  [connection sendRequest:v12 withResponseHandler:v19];
}

- (void)_fetchUpdatedTracksWithPaginationToken:(id)token responseFileURLs:(id)ls currentIncludesBookmarkable:(BOOL)bookmarkable cloudIDToLyricsTokenMap:(id)map completion:(id)completion
{
  lsCopy = ls;
  mapCopy = map;
  completionCopy = completion;
  tokenCopy = token;
  connection = [(SagaImporter *)self connection];
  v16 = [(NSString *)self->_updateBaseDirectory stringByAppendingPathComponent:@"Items"];
  +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"items_%lu.daap", [lsCopy count] + 1);
  v40 = v39 = v16;
  v31 = v40;
  v17 = [NSArray arrayWithObjects:&v39 count:2];
  v18 = [NSURL fileURLWithPathComponents:v17];

  v19 = +[ICItemsRequest requestWithDatabaseID:paginationToken:](ICItemsRequest, "requestWithDatabaseID:paginationToken:", [connection databaseID], tokenCopy);

  [v19 setValue:@"all" forArgument:@"meta"];
  fromRevision = self->_fromRevision;
  if (fromRevision)
  {
    toRevision = self->_toRevision;
    if (toRevision > fromRevision || self->_clientInitiatedReloadForPins)
    {
      if (self->_serverInitiatedReset)
      {
        v22 = ICPushNotificationMessage_ptr;
      }

      else
      {
        v22 = ICPushNotificationMessage_ptr;
        if (!self->_clientInitiatedReset)
        {
          v23 = [NSString stringWithFormat:@"%u", self->_fromRevision];
          [v19 setValue:v23 forArgument:@"delta"];

          toRevision = self->_toRevision;
        }
      }

      toRevision = [v22[88] stringWithFormat:@"%u", toRevision];
      [v19 setValue:toRevision forArgument:@"revision-id"];
    }
  }

  [v19 setSagaClientFeaturesVersion:self->_clientFeaturesVersionString];
  [v19 setResponseDataDestinationFileURL:v18];
  [v19 setAllowedRetryCount:5];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000B96D4;
  v32[3] = &unk_1001DCBC8;
  v32[4] = self;
  v33 = v18;
  v34 = lsCopy;
  v35 = v16;
  bookmarkableCopy = bookmarkable;
  v36 = mapCopy;
  v37 = completionCopy;
  v25 = mapCopy;
  v26 = v16;
  v27 = lsCopy;
  v28 = v18;
  v29 = completionCopy;
  [connection sendRequest:v19 withResponseHandler:v32];
}

- (void)_fetchUpdatedTracksWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting items update", &v8, 0xCu);
  }

  v6 = +[NSMutableArray array];
  v7 = +[NSMutableDictionary dictionary];
  [(SagaImporter *)self _fetchUpdatedTracksWithPaginationToken:0 responseFileURLs:v6 currentIncludesBookmarkable:0 cloudIDToLyricsTokenMap:v7 completion:completionCopy];
}

- (id)_importDataFromResponseFileURLs:(id)ls
{
  v3 = [ls msv_map:&stru_1001DCBA0];
  v4 = ML3DatabaseImportDataForDAAPFilePaths();

  return v4;
}

- (BOOL)_updateGlobalPlaylistsFromContainersPayloadAtPath:(id)path downloadPathForSubscribedContainersPayload:(id)payload
{
  payloadCopy = payload;
  v7 = [NSURL fileURLWithPath:path];
  v8 = [NSInputStream inputStreamWithURL:v7];
  v9 = [[DKDAAPParser alloc] initWithStream:v8];
  v10 = objc_alloc_init(ContainerCloudIDsParserDelegate);
  [v9 setDelegate:v10];
  [v9 parse];
  subscribedPlaylistCloudIDs = [(ContainerCloudIDsParserDelegate *)v10 subscribedPlaylistCloudIDs];

  v12 = [SagaSubscribedPlaylistUpdater alloc];
  connection = [(SagaImporter *)self connection];
  v14 = [(SagaSubscribedPlaylistUpdater *)v12 initWithSubscribedPlaylistCloudIDs:subscribedPlaylistCloudIDs cloudLibraryConnection:connection];

  [(SagaSubscribedPlaylistUpdater *)v14 setPayloadDownloadPathOverride:payloadCopy];
  [(SagaSubscribedPlaylistUpdater *)v14 setIgnoreMinRefreshInterval:1];
  clientIdentity = self->_clientIdentity;
  v20 = 0;
  v16 = [(SagaSubscribedPlaylistUpdater *)v14 performUpdateWithClientIdentity:clientIdentity error:&v20];
  v17 = v20;
  if ((v16 & 1) == 0)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ Error updating global playlists: %{public}@", buf, 0x16u);
    }
  }

  return v16;
}

- (void)_importLyricsWithLyricsTokenMap:(id)map
{
  allKeys = [map allKeys];
  v4 = [SagaLoadLyricsOperation alloc];
  configuration = [(SagaImporter *)self configuration];
  v6 = [(SagaLoadLyricsOperation *)v4 initWithConfiguration:configuration clientIdentity:self->_clientIdentity sagaIDs:allKeys];

  [(SagaLoadLyricsOperation *)v6 setName:@"com.apple.itunescloudd.SagaImporter.loadLyricsOperation"];
  configuration2 = [(SagaImporter *)self configuration];
  v8 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration2];
  [v8 addBackgroundOperation:v6 forLibraryType:1 priority:1];
}

- (void)_removeUnavailableSubscriptionAssetsInLibrary:(id)library
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BA1F4;
  v5[3] = &unk_1001DEDD0;
  libraryCopy = library;
  selfCopy = self;
  v4 = libraryCopy;
  [v4 performDatabaseTransactionWithBlock:v5];
}

- (void)_updateProgressWithItemsProgress:(float)itemsProgress albumsProgress:(float)albumsProgress artistsProgress:(float)artistsProgress playlistProgress:(float)playlistProgress importerProgress:(float)progress
{
  os_unfair_lock_lock(&self->_lock);
  if (itemsProgress == 0.0)
  {
    itemsProgress = self->_itemsProgress;
  }

  self->_itemsProgress = itemsProgress;
  if (albumsProgress == 0.0)
  {
    albumsProgress = self->_albumsProgress;
  }

  self->_albumsProgress = albumsProgress;
  if (artistsProgress == 0.0)
  {
    artistsProgress = self->_artistsProgress;
  }

  self->_artistsProgress = artistsProgress;
  if (playlistProgress == 0.0)
  {
    playlistProgress = self->_playlistProgress;
  }

  self->_playlistProgress = playlistProgress;
  importerProgress = progress;
  if (progress == 0.0)
  {
    importerProgress = self->_importerProgress;
  }

  self->_importerProgress = importerProgress;
  self->_progress = (((((albumsProgress * 10.0) + (itemsProgress * 10.0)) + (artistsProgress * 10.0)) + (playlistProgress * 10.0)) + (progress * 60.0)) / 100.0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)performUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    serverInitiatedReset = self->_serverInitiatedReset;
    clientInitiatedReset = self->_clientInitiatedReset;
    clientFeaturesVersionString = self->_clientFeaturesVersionString;
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = serverInitiatedReset;
    *&buf[18] = 1024;
    *&buf[20] = clientInitiatedReset;
    LOWORD(v63) = 2114;
    *(&v63 + 2) = clientFeaturesVersionString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing saga update - serverInitiatedReset=%{BOOL}u, clientInitiatedReset=%{BOOL}u, clientFeaturesVersionString=%{public}@", buf, 0x22u);
  }

  self->_progress = 0.0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v63 = sub_1000BAE7C;
  *(&v63 + 1) = sub_1000BAE8C;
  v64 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = sub_1000BAE7C;
  v60[4] = sub_1000BAE8C;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_1000BAE7C;
  v58[4] = sub_1000BAE8C;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = sub_1000BAE7C;
  v56[4] = sub_1000BAE8C;
  v57 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_1000BAE7C;
  v54[4] = sub_1000BAE8C;
  v55 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_1000BAE7C;
  v52[4] = sub_1000BAE8C;
  v53 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_1000BAE7C;
  v48[4] = sub_1000BAE8C;
  v49 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000BAE94;
  v42[3] = &unk_1001DCA98;
  v42[4] = self;
  v44 = buf;
  v45 = v56;
  v46 = v50;
  v47 = v48;
  v10 = v9;
  v43 = v10;
  [(SagaImporter *)self _fetchUpdatedTracksWithCompletion:v42];
  dispatch_group_enter(v10);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000BAF90;
  v38[3] = &unk_1001DCAC0;
  v38[4] = self;
  v40 = buf;
  v41 = v58;
  v11 = v10;
  v39 = v11;
  [(SagaImporter *)self _fetchUpdatedAlbumsWithCompletion:v38];
  dispatch_group_enter(v11);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000BB048;
  v34[3] = &unk_1001DCAC0;
  v34[4] = self;
  v36 = buf;
  v37 = v60;
  v12 = v11;
  v35 = v12;
  [(SagaImporter *)self _fetchUpdatedArtistsWithCompletion:v34];
  dispatch_group_enter(v12);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000BB100;
  v30[3] = &unk_1001DCAE8;
  v30[4] = self;
  v32 = buf;
  v33 = v54;
  v13 = v12;
  v31 = v13;
  [(SagaImporter *)self _fetchUpdatedPlaylistsWithCompletion:v30];
  if (_os_feature_enabled_impl())
  {
    dispatch_group_enter(v13);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000BB1B8;
    v26[3] = &unk_1001DCAE8;
    v26[4] = self;
    v28 = buf;
    v29 = v52;
    v27 = v13;
    [(SagaImporter *)self _fetchUpdatedLibraryPinsWithCompletion:v26];
  }

  v14 = dispatch_get_global_queue(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000BB270;
  v16[3] = &unk_1001DCB38;
  v16[4] = self;
  v17 = handlerCopy;
  v18 = buf;
  v19 = v56;
  v20 = v54;
  v21 = v60;
  v22 = v58;
  v23 = v52;
  v24 = v48;
  v25 = v50;
  v15 = handlerCopy;
  dispatch_group_notify(v13, v14, v16);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v52, 8);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(buf, 8);
}

- (void)cancel
{
  self->_isCancelled = 1;
  v2 = dispatch_semaphore_create(0);
  v3 = +[MLMediaLibraryService sharedMediaLibraryService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BC0D4;
  v5[3] = &unk_1001DE788;
  v6 = v2;
  v4 = v2;
  [v3 cancelImportOperation:2 completionHandler:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (SagaImporter)initWithConnection:(id)connection serverInitiatedReset:(BOOL)reset clientInitiatedReset:(BOOL)initiatedReset clientInitiatedReloadForPins:(BOOL)pins clientFeaturesVersion:(id)version clientIdentity:(id)identity fromRevision:(unsigned int)revision toRevision:(unsigned int)self0
{
  connectionCopy = connection;
  versionCopy = version;
  identityCopy = identity;
  if (!connectionCopy)
  {
    obj = +[NSAssertionHandler currentHandler];
    [obj handleFailureInMethod:a2 object:self file:@"SagaImporter.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v35.receiver = self;
  v35.super_class = SagaImporter;
  v21 = [(SagaImporter *)&v35 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_connection, connection);
    configuration = [connectionCopy configuration];
    configuration = v22->_configuration;
    v22->_configuration = configuration;

    userIdentity = [connectionCopy userIdentity];
    userIdentity = v22->_userIdentity;
    v22->_userIdentity = userIdentity;

    v22->_clientInitiatedReset = initiatedReset;
    v22->_serverInitiatedReset = reset;
    v22->_clientInitiatedReloadForPins = pins;
    v22->_fromRevision = revision;
    v22->_toRevision = toRevision;
    v22->_lock._os_unfair_lock_opaque = 0;
    v27 = NSTemporaryDirectory();
    v36[0] = v27;
    v36[1] = @"com.apple.MediaServices";
    v28 = +[NSUUID UUID];
    uUIDString = [v28 UUIDString];
    v36[2] = uUIDString;
    v30 = [NSArray arrayWithObjects:v36 count:3];
    v31 = [NSString pathWithComponents:v30];
    updateBaseDirectory = v22->_updateBaseDirectory;
    v22->_updateBaseDirectory = v31;

    objc_storeStrong(&v22->_clientFeaturesVersionString, version);
  }

  return v22;
}

@end