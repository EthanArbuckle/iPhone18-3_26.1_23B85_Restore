@interface SagaSubscribedPlaylistUpdater
- (BOOL)performUpdateWithClientIdentity:(id)identity error:(id *)error;
- (SagaSubscribedPlaylistUpdater)initWithSubscribedPlaylistCloudIDs:(id)ds cloudLibraryConnection:(id)connection;
@end

@implementation SagaSubscribedPlaylistUpdater

- (BOOL)performUpdateWithClientIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  selfCopy = self;
  connection = [(SagaSubscribedPlaylistUpdater *)self connection];
  userIdentity = [connection userIdentity];
  v91 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

  [v91 setClientIdentity:identityCopy];
  v93 = [NSMutableArray arrayWithCapacity:2];
  if (selfCopy->_playlistCloudIDs)
  {
    v7 = [NSSet setWithArray:?];
    v8 = [ML3ContainmentPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID values:v7];
    [v93 addObject:v8];
  }

  else
  {
    v9 = [ML3PropertyPredicate predicateWithProperty:ML3ContainerPropertyCloudIsSubscribed];
    v122[0] = v9;
    v10 = [ML3PropertyPredicate predicateWithProperty:ML3ContainerPropertyCloudIsCuratorPlaylist];
    v122[1] = v10;
    v11 = [NSArray arrayWithObjects:v122 count:2];
    v12 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v11];

    [v93 addObject:v12];
  }

  if (selfCopy->_pinnedOnly)
  {
    v13 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_1001ED150 comparison:3];
    [v93 addObject:v13];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = +[NSMutableArray array];
  if ([v93 count] == 1)
  {
    [v93 firstObject];
  }

  else
  {
    [ML3AllCompoundPredicate predicateMatchingPredicates:v93];
  }
  v87 = ;
  v86 = [ML3Container unrestrictedAllItemsQueryWithlibrary:v91 predicate:v87 orderingTerms:&__NSArray0__struct];
  v121[0] = ML3ContainerPropertyStoreCloudID;
  v121[1] = ML3ContainerPropertyCloudMinRefreshInterval;
  v121[2] = ML3ContainerPropertyCloudLastUpdateTime;
  v17 = [NSArray arrayWithObjects:v121 count:3];
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_10003E1BC;
  v109[3] = &unk_1001DA9F0;
  v109[4] = selfCopy;
  v111 = v15;
  v90 = v16;
  v110 = v90;
  [v86 enumeratePersistentIDsAndProperties:v17 usingBlock:v109];

  v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v90 count];
    *buf = 134217984;
    v124 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found %lu subscribed playlists to update for periodic poll.", buf, 0xCu);
  }

  v20 = [v90 copy];
  playlistCloudIDs = selfCopy->_playlistCloudIDs;
  selfCopy->_playlistCloudIDs = v20;

  if ([(NSArray *)selfCopy->_playlistCloudIDs count])
  {
    v88 = [ICSubscribedContainersRequest requestWithDatabaseID:[(CloudLibraryConnection *)selfCopy->_connection databaseID] containerIDs:selfCopy->_playlistCloudIDs];
    [v88 setReason:[(SagaSubscribedPlaylistUpdater *)selfCopy requestReason]];
    payloadDownloadPathOverride = [(SagaSubscribedPlaylistUpdater *)selfCopy payloadDownloadPathOverride];
    if (!payloadDownloadPathOverride)
    {
      v23 = NSTemporaryDirectory();
      v120[0] = v23;
      v120[1] = @"com.apple.MediaServices";
      v24 = +[NSUUID UUID];
      uUIDString = [v24 UUIDString];
      v120[2] = uUIDString;
      v120[3] = @"subscribed-containers.daap";
      v26 = [NSArray arrayWithObjects:v120 count:4];
      v27 = [NSURL fileURLWithPathComponents:v26];

      payloadDownloadPathOverride = v27;
    }

    v85 = payloadDownloadPathOverride;
    [v88 setResponseDataDestinationFileURL:?];
    v103 = 0;
    v104 = &v103;
    v105 = 0x3032000000;
    v106 = sub_10003E30C;
    v107 = sub_10003E31C;
    v108 = 0;
    v28 = dispatch_semaphore_create(0);
    connection = selfCopy->_connection;
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_10003E324;
    v100[3] = &unk_1001DF8A8;
    v102 = &v103;
    v30 = v28;
    v101 = v30;
    [(CloudLibraryConnection *)connection sendRequest:v88 withResponseHandler:v100];
    v83 = v30;
    dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
    responseCode = [v104[5] responseCode];
    if (responseCode == 200)
    {
      v119 = v85;
      v94 = [NSArray arrayWithObjects:&v119 count:1];
      if (MSVDeviceOSIsInternalInstall())
      {
        v92 = objc_alloc_init(NSFileManager);
        v32 = MSVMediaLoggingDirectory();
        v126[0] = v32;
        v126[1] = @"DaapDebugging";
        v126[2] = @"SubscribedPlaylists";
        v33 = [NSArray arrayWithObjects:v126 count:3];
        v82 = [NSURL fileURLWithPathComponents:v33];

        v96 = +[NSMutableDictionary dictionary];
        v125[0] = NSURLIsDirectoryKey;
        v125[1] = NSURLCreationDateKey;
        v34 = [NSArray arrayWithObjects:v125 count:2];
        v35 = [v92 enumeratorAtURL:v82 includingPropertiesForKeys:v34 options:4 errorHandler:0];

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        obj = v35;
        v36 = [obj countByEnumeratingWithState:&v114 objects:buf count:16];
        if (v36)
        {
          v37 = 0;
          v38 = *v115;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v115 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v40 = *(*(&v114 + 1) + 8 * i);
              v113 = 0;
              v41 = [v40 getResourceValue:&v113 forKey:NSURLIsDirectoryKey error:0];
              v42 = v113;
              v43 = v42;
              if (v41 && [v42 BOOLValue])
              {
                lastPathComponent = [v40 lastPathComponent];
                v45 = [lastPathComponent componentsSeparatedByString:@"_"];
                lastObject = [v45 lastObject];
                longLongValue = [lastObject longLongValue];

                if (v37 <= longLongValue)
                {
                  v37 = longLongValue;
                }

                v112 = 0;
                v48 = [v40 getResourceValue:&v112 forKey:NSURLCreationDateKey error:0];
                v49 = v112;
                if ((v48 & 1) == 0)
                {
                  v50 = +[NSDate distantPast];

                  v49 = v50;
                }

                [v96 setObject:v40 forKey:v49];
              }
            }

            v36 = [obj countByEnumeratingWithState:&v114 objects:buf count:16];
          }

          while (v36);
          v51 = v37 + 1;
        }

        else
        {
          v51 = 1;
        }

        if ([v96 count] >= 4)
        {
          allKeys = [v96 allKeys];
          v55 = [allKeys sortedArrayUsingComparator:&stru_1001DDAF0];

          if ([v55 count] != 3)
          {
            v56 = 0;
            do
            {
              v57 = [v55 objectAtIndex:v56];
              v58 = [v96 objectForKey:v57];

              [v92 removeItemAtURL:v58 error:0];
              ++v56;
            }

            while (v56 < [v55 count] - 3);
          }
        }

        v59 = [NSString stringWithFormat:@"SubscribedContainersResponse_%llu", v51];
        v60 = [v82 URLByAppendingPathComponent:v59 isDirectory:1];

        [v92 createDirectoryAtURL:v60 withIntermediateDirectories:1 attributes:0 error:0];
        if ([v94 count])
        {
          v61 = 0;
          do
          {
            v62 = [v94 objectAtIndex:v61];
            v63 = [NSString stringWithFormat:@"daap_data_%lu.daap", ++v61];
            v64 = [v60 URLByAppendingPathComponent:v63 isDirectory:0];

            [v92 copyItemAtURL:v62 toURL:v64 error:0];
          }

          while (v61 < [v94 count]);
        }
      }

      path = [v85 path];
      v118 = path;
      v66 = [NSArray arrayWithObjects:&v118 count:1];
      v53 = ML3DatabaseImportDataForDAAPFilePaths();

      v67 = [ML3MutableDatabaseImport alloc];
      databasePath = [v91 databasePath];
      v69 = [v67 initWithLibraryPath:databasePath trackData:v53 playlistData:v53 clientIdentity:identityCopy];

      [v69 setTracksAreLibraryOwnedContent:0];
      [v69 setPlaylistsAreLibraryOwnedContent:1];
      v70 = dispatch_semaphore_create(0);
      v71 = +[MLMediaLibraryService sharedMediaLibraryService];
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_10003E384;
      v98[3] = &unk_1001DAA18;
      v72 = v70;
      v99 = v72;
      [v71 performImport:v69 fromSource:8 withProgressBlock:0 completionHandler:v98];

      dispatch_semaphore_wait(v72, 0xFFFFFFFFFFFFFFFFLL);
      v73 = [NSInputStream inputStreamWithURL:v85];
      v74 = [[DKDAAPParser alloc] initWithStream:v73];
      v75 = objc_alloc_init(SubscribedContainersUpdateRequiredParserDelegate);
      [v74 setDelegate:v75];
      [v74 parse];
      updateRequired = [(SubscribedContainersUpdateRequiredParserDelegate *)v75 updateRequired];

      if (updateRequired)
      {
        v77 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Requesting library update because the response contained update-required flag", buf, 2u);
        }

        connection2 = [(SagaSubscribedPlaylistUpdater *)selfCopy connection];
        configuration = [connection2 configuration];
        v80 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
        [v80 updateSagaLibraryWithClientIdentity:identityCopy forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];
      }
    }

    else
    {
      v53 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v124 = responseCode;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Received non-200 HTTP code: %lu, skipping import.", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v103, 8);
    v52 = v88;
  }

  else
  {
    v52 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "No playlists to update (based on min refresh interval).", buf, 2u);
    }
  }

  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (SagaSubscribedPlaylistUpdater)initWithSubscribedPlaylistCloudIDs:(id)ds cloudLibraryConnection:(id)connection
{
  dsCopy = ds;
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = SagaSubscribedPlaylistUpdater;
  v9 = [(SagaSubscribedPlaylistUpdater *)&v14 init];
  if (v9)
  {
    if (!connectionCopy)
    {
      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:a2 object:v9 file:@"SagaSubscribedPlaylistUpdater.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
    }

    v10 = [dsCopy copy];
    playlistCloudIDs = v9->_playlistCloudIDs;
    v9->_playlistCloudIDs = v10;

    objc_storeStrong(&v9->_connection, connection);
  }

  return v9;
}

@end