@interface ICMusicLibraryRecommendationController
+ (ICMusicLibraryRecommendationController)sharedLibraryRecommendationController;
- (BOOL)_setupCacheDirectoryStructureWithPath:(id)path;
- (ICMusicLibraryRecommendationController)init;
- (id)_cacheDirectoryPath;
- (id)_createLocalNotificationDictionaryForRecommendationResult:(id)result storePlatformMetadata:(id)metadata recommendationID:(id)d identifier:(id)identifier;
- (id)_getNetworkConstraints;
- (id)_optInMessageContentForPriorityMessageContent:(id)content;
- (id)_retrievePreviousRecommendationMatchesFromCache;
- (id)_storeRequestContext;
- (id)_wrapAndCacheResponseModelWithCompiledMLModel:(id)model;
- (void)_cacheMatchedRecommendations:(id)recommendations;
- (void)_cleanupExpiredApplicationMessages;
- (void)_clearMLModelCache;
- (void)_clearRecommendationsData;
- (void)_computeLibraryRecommendationWithResponse:(id)response completionHandler:(id)handler;
- (void)_createApplicationMessagesForResult:(id)result artistNewContentResponse:(id)response completion:(id)completion;
- (void)_fetchRecommendationsSetAndModelWithCompletionHandler:(id)handler;
- (void)_handleNewArtistContentResponseNotification:(id)notification;
- (void)_handleRecommendationsResponseModel:(id)model completion:(id)completion;
- (void)_optInMessageForPriorityMessage:(id)message completion:(id)completion;
- (void)_performRecommendationsRequest;
- (void)_performRecommendationsUpdate;
- (void)_updateOptInIfNecessary;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)handleAccountStateChange:(id)change;
- (void)scheduleRecommendationsRefreshTimer;
- (void)startSystemService;
- (void)stopSystemService;
@end

@implementation ICMusicLibraryRecommendationController

- (id)_createLocalNotificationDictionaryForRecommendationResult:(id)result storePlatformMetadata:(id)metadata recommendationID:(id)d identifier:(id)identifier
{
  metadataCopy = metadata;
  dCopy = d;
  identifierCopy = identifier;
  v54 = +[NSMutableDictionary dictionary];
  storeAdamID = [metadataCopy storeAdamID];
  v55 = ICBundleIdentifierForSystemApplicationType();
  v11 = +[NSBundle mediaPlayerBundle];
  v12 = [v11 localizedStringForKey:@"NEW_ALBUM_NOTIFICATION_TITLE" value:&stru_1001E0388 table:@"MediaPlayer"];

  v13 = +[NSBundle mediaPlayerBundle];
  v14 = [v13 localizedStringForKey:@"NEW_ALBUM_NOTIFICATION_BODY_FORMAT" value:&stru_1001E0388 table:@"MediaPlayer"];

  name = [metadataCopy name];
  v59 = metadataCopy;
  artistName = [metadataCopy artistName];
  v62 = v14;
  v17 = [NSString stringWithFormat:v14, name, artistName];

  v77[0] = @"title";
  v77[1] = @"body";
  v63 = v12;
  v78[0] = v12;
  v78[1] = v17;
  v61 = v17;
  v60 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
  [v54 setObject:? forKey:?];
  v65 = +[NSMutableArray array];
  v76[0] = &off_1001ED738;
  v75[0] = @"_tp";
  v75[1] = @"_url";
  v18 = [NSString stringWithFormat:@"https://itunes.apple.com/album/id%lld?itsct=NonSubsNewContentRelease&itscg=10100", storeAdamID];
  v76[1] = v18;
  v75[2] = @"_mt";
  v74[0] = @"tap";
  v73[0] = @"actionType";
  v73[1] = @"actionUrl";
  v19 = [NSString stringWithFormat:@"https://itunes.apple.com/album/id%lld?itsct=NonSubsNewContentRelease&itscg=10100", storeAdamID];
  v74[1] = v19;
  v74[2] = @"notificationAction";
  v73[2] = @"eventType";
  v73[3] = @"eventVersion";
  v74[3] = &off_1001ED738;
  v74[4] = identifierCopy;
  v73[4] = @"notificationId";
  v73[5] = @"targetType";
  v74[5] = @"notification";
  v74[6] = dCopy;
  v73[6] = @"recoId";
  v73[7] = @"topic";
  v74[7] = @"xp_amp_notifications";
  v74[8] = v55;
  v73[8] = @"app";
  v73[9] = @"notificationType";
  v73[10] = @"details";
  v74[9] = @"Content";
  v74[10] = &off_1001EE430;
  v20 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:11];
  v76[2] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:3];

  v58 = v21;
  [v65 addObject:v21];
  v71[0] = @"_tl";
  v22 = +[NSBundle mediaPlayerBundle];
  v23 = [v22 localizedStringForKey:@"NEW_ALBUM_NOTIFICATION_GOTO_BUTTON_TITLE" value:&stru_1001E0388 table:@"MediaPlayer"];
  v72[0] = v23;
  v71[1] = @"_url";
  v24 = [NSString stringWithFormat:@"https://itunes.apple.com/album/id%lld?itsct=NonSubsNewContentRelease&itscg=10100", storeAdamID];
  v72[1] = v24;
  v71[2] = @"_mt";
  v70[0] = @"goToAlbum";
  v69[0] = @"actionType";
  v69[1] = @"actionUrl";
  v25 = [NSString stringWithFormat:@"https://itunes.apple.com/album/id%lld?itsct=NonSubsNewContentRelease&itscg=10100", storeAdamID];
  v70[1] = v25;
  v70[2] = @"notificationAction";
  v69[2] = @"eventType";
  v69[3] = @"eventVersion";
  v70[3] = &off_1001ED738;
  v70[4] = identifierCopy;
  v64 = identifierCopy;
  v69[4] = @"notificationId";
  v69[5] = @"targetId";
  v70[5] = @"AmpMusic.Notifications.NewRelease.Buttons.GoToAlbum";
  v70[6] = @"button";
  v69[6] = @"targetType";
  v69[7] = @"recoId";
  v70[7] = dCopy;
  v70[8] = @"xp_amp_notifications";
  v69[8] = @"topic";
  v69[9] = @"app";
  v70[9] = v55;
  v70[10] = @"Content";
  v69[10] = @"notificationType";
  v69[11] = @"details";
  v70[11] = &off_1001EE458;
  v26 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:12];
  v72[2] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3];

  v57 = v27;
  [v65 addObject:v27];
  [v54 setObject:v65 forKey:@"_ba"];
  [v54 setObject:&off_1001ED738 forKey:@"content-available"];
  v28 = +[ICUserIdentityStore defaultIdentityStore];
  v29 = +[ICUserIdentity activeAccount];
  v30 = [v28 DSIDForUserIdentity:v29 outError:0];

  if (v30)
  {
    stringValue = [v30 stringValue];
    [v54 setObject:stringValue forKey:@"_ds"];
  }

  else
  {
    [v54 setObject:@"0" forKey:@"_ds"];
  }

  artworkInfos = [v59 artworkInfos];
  firstObject = [artworkInfos firstObject];

  v56 = firstObject;
  v34 = [firstObject artworkURLWithSize:ICStoreArtworkInfoCropStyleBoundedBox cropStyle:ICStoreArtworkInfoImageFormatJPEG format:{210.0, 210.0}];
  v35 = v34;
  if (v34)
  {
    absoluteString = [v34 absoluteString];
    [v54 setObject:absoluteString forKey:@"_au"];
  }

  [v54 setObject:&off_1001ED750 forKey:@"_it"];
  if ([v59 isExplicit])
  {
    v37 = @"true";
  }

  else
  {
    v37 = @"false";
  }

  [v54 setObject:v37 forKey:@"_ex"];
  identifierCopy = [NSString stringWithFormat:@"ams_%@", identifierCopy];
  [v54 setObject:identifierCopy forKey:@"_id"];

  [v54 setObject:v55 forKey:@"_bid"];
  releaseDate = [v59 releaseDate];
  if (releaseDate)
  {
    v40 = +[NSDate now];
    v41 = [releaseDate compare:v40];

    if (v41 == 1)
    {
      v42 = objc_alloc_init(NSDateFormatter);
      [v42 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
      v43 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
      [v42 setLocale:v43];

      v44 = [NSTimeZone timeZoneForSecondsFromGMT:0];
      [v42 setTimeZone:v44];

      v45 = [v42 stringFromDate:releaseDate];
      [v54 setObject:v45 forKey:@"_st"];
    }
  }

  v67[0] = @"eventType";
  v67[1] = @"eventVersion";
  v68[0] = @"notificationRequest";
  v68[1] = &off_1001ED738;
  v67[2] = @"isExplicit";
  isExplicit = [v59 isExplicit];
  v47 = @"0";
  if (isExplicit)
  {
    v47 = @"1";
  }

  v68[2] = v47;
  v67[3] = @"language";
  v48 = +[ICDeviceInfo currentDeviceInfo];
  currentLocale = [v48 currentLocale];
  v50 = currentLocale;
  v51 = &stru_1001E0388;
  if (currentLocale)
  {
    v51 = currentLocale;
  }

  v68[3] = v51;
  v68[4] = identifierCopy;
  v67[4] = @"notificationId";
  v67[5] = @"notificationType";
  v68[5] = @"Content";
  v68[6] = @"29";
  v67[6] = @"platformId";
  v67[7] = @"platformName";
  v68[7] = @"P84";
  v68[8] = dCopy;
  v67[8] = @"recoId";
  v67[9] = @"topic";
  v68[9] = @"xp_amp_notifications";
  v68[10] = v55;
  v67[10] = @"app";
  v67[11] = @"details";
  v68[11] = &off_1001EE480;
  v52 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:12];

  [v54 setObject:v52 forKey:@"_mt"];

  return v54;
}

- (void)_updateOptInIfNecessary
{
  v3 = ICBundleIdentifierForSystemApplicationType();
  v4 = +[ICInAppMessageManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C9E60;
  v6[3] = &unk_1001DE8A0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 messageEntriesForBundleIdentifier:v5 completion:v6];
}

- (void)_optInMessageForPriorityMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = +[ICInAppMessageManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CABC4;
  v11[3] = &unk_1001DD260;
  v12 = messageCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = messageCopy;
  v10 = completionCopy;
  [v8 messageEntryWithIdentifier:@"non-subscriber-notification-content-opt-in" bundleIdentifier:@"com.apple.amp.inappmessages.private" completion:v11];
}

- (id)_optInMessageContentForPriorityMessageContent:(id)content
{
  contentCopy = content;
  v4 = objc_alloc_init(ICIAMMessageContent);
  [v4 setIdentifier:@"album-lockup"];
  v5 = objc_alloc_init(ICIAMParameter);
  [v5 setKey:@"albumTitle"];
  title = [contentCopy title];
  [v5 setValue:title];

  v7 = objc_alloc_init(ICIAMParameter);
  [v7 setKey:@"artistName"];
  subtitle = [contentCopy subtitle];
  [v7 setValue:subtitle];

  [v4 addContentParameters:v5];
  [v4 addContentParameters:v7];
  images = [contentCopy images];

  firstObject = [images firstObject];
  [v4 addImages:firstObject];

  return v4;
}

- (void)_createApplicationMessagesForResult:(id)result artistNewContentResponse:(id)response completion:(id)completion
{
  resultCopy = result;
  responseCopy = response;
  completionCopy = completion;
  v11 = objc_alloc_init(ICStorePlatformRequest);
  _storeRequestContext = [(ICMusicLibraryRecommendationController *)self _storeRequestContext];
  [v11 setRequestContext:_storeRequestContext];

  adamID = [resultCopy adamID];
  stringValue = [adamID stringValue];

  v26 = stringValue;
  v15 = [NSArray arrayWithObjects:&v26 count:1];
  [v11 setItemIdentifiers:v15];

  [v11 setPersonalizationStyle:1];
  [v11 setKeyProfile:ICStorePlatformKeyProfilePlaylistProduct];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000CB0EC;
  v21[3] = &unk_1001DD238;
  v24 = responseCopy;
  v25 = completionCopy;
  v21[4] = self;
  v22 = stringValue;
  v23 = resultCopy;
  v16 = responseCopy;
  v17 = resultCopy;
  v18 = stringValue;
  v19 = completionCopy;
  v20 = [v11 performWithResponseHandler:v21];
}

- (void)_cleanupExpiredApplicationMessages
{
  v3 = ICBundleIdentifierForSystemApplicationType();
  v4 = +[ICInAppMessageManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CCAB4;
  v6[3] = &unk_1001DE8A0;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  [v4 messageEntriesForBundleIdentifier:v5 completion:v6];
}

- (id)_retrievePreviousRecommendationMatchesFromCache
{
  os_unfair_lock_lock(&self->_lock);
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  v4 = +[ICUserIdentity activeAccount];
  v5 = [v3 DSIDForUserIdentity:v4 outError:0];

  _cacheDirectoryPath = [(ICMusicLibraryRecommendationController *)self _cacheDirectoryPath];
  v7 = [NSURL fileURLWithPath:_cacheDirectoryPath];
  v8 = [v7 URLByAppendingPathComponent:@"musicRecommendationsData"];
  v9 = [NSDictionary dictionaryWithContentsOfURL:v8];
  v10 = [v9 mutableCopy];

  stringValue = [v5 stringValue];
  v12 = [v10 objectForKey:stringValue];

  v13 = [v12 valueForKey:@"matchedAdamIDs"];
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = +[NSArray array];
  }

  v15 = v14;

  return v15;
}

- (id)_cacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];

  v4 = [firstObject stringByAppendingPathComponent:@"Caches/com.apple.iTunesCloud/LibraryRecommendations/ResourceCache"];

  return v4;
}

- (id)_getNetworkConstraints
{
  v2 = ICBundleIdentifierForSystemApplicationType();
  v3 = [[ICNetworkConstraints alloc] initWithBundleIdentifier:v2];

  return v3;
}

- (id)_storeRequestContext
{
  v2 = [[ICStoreRequestContext alloc] initWithBlock:&stru_1001DD1A0];

  return v2;
}

- (id)_wrapAndCacheResponseModelWithCompiledMLModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (!modelCopy || ![modelCopy hasModel])
  {
    v13 = 0;
    v14 = 0;
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v6 = +[NSFileManager defaultManager];
  _cacheDirectoryPath = [(ICMusicLibraryRecommendationController *)self _cacheDirectoryPath];
  v8 = [NSURL fileURLWithPath:_cacheDirectoryPath];
  v40 = [v8 URLByAppendingPathComponent:@"serializedRecommendationsResponse"];
  v39 = [v8 URLByAppendingPathComponent:@"compiledMLModel.mlmodelc"];
  v38 = _cacheDirectoryPath;
  v37 = [(ICMusicLibraryRecommendationController *)self _setupCacheDirectoryStructureWithPath:_cacheDirectoryPath];
  if (v37)
  {
    data = [v5 data];
    model = [v5 model];
    v9 = [v8 URLByAppendingPathComponent:@"modelDataBlob.bin"];
    path = [v9 path];
    v11 = [v6 fileExistsAtPath:path];

    if (v11)
    {
      v48[0] = 0;
      [v6 removeItemAtURL:v9 error:v48];
      v12 = v48[0];
    }

    else
    {
      v12 = 0;
    }

    path2 = [v9 path];
    v47 = v12;
    [model writeToFile:path2 options:1 error:&v47];
    v18 = v47;

    v46 = v18;
    v36 = [MLModel compileModelAtURL:v9 error:&v46];
    v19 = v46;

    if (v19)
    {
      [NSException raise:NSInternalInconsistencyException format:@"MLModel compileModelAtURL failed with error %@", v19];
    }

    v45 = v19;
    v33 = [MLModel modelWithContentsOfURL:v36 error:&v45];
    v20 = v45;

    v21 = v20;
    if (v20)
    {
      [NSException raise:NSInternalInconsistencyException format:@"MLModel modelWithContentsOfURL failed with error %@", v20];
    }

    path3 = [v39 path];
    v23 = [v6 fileExistsAtPath:path3];

    if (v23)
    {
      v44 = v21;
      v24 = &v44;
      [v6 replaceItemAtURL:v39 withItemAtURL:v36 backupItemName:0 options:1 resultingItemURL:0 error:&v44];
    }

    else
    {
      v43 = v21;
      v24 = &v43;
      [v6 copyItemAtURL:v36 toURL:v39 error:&v43];
    }

    v25 = *v24;

    path4 = [v40 path];
    v27 = [v6 fileExistsAtPath:path4];

    if (v27)
    {
      v42 = v25;
      [v6 removeItemAtURL:v40 error:&v42];
      v13 = v42;
    }

    else
    {
      v13 = v25;
    }

    path5 = [v40 path];
    [data writeToFile:path5 atomically:1];

    path6 = [v9 path];
    v30 = [v6 fileExistsAtPath:path6];

    if (v30)
    {
      path7 = [v9 path];
      v41 = v13;
      [v6 removeItemAtPath:path7 error:&v41];
      v32 = v41;

      v13 = v32;
    }

    v14 = [[ICMusicLibraryRecommendationsResponse alloc] initWithNewArtistContentResponseModel:v5 andMLModel:v33];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (!v37)
  {
    goto LABEL_7;
  }

  v14 = v14;
  v15 = v14;
LABEL_8:

  return v15;
}

- (BOOL)_setupCacheDirectoryStructureWithPath:(id)path
{
  pathCopy = path;
  v5 = +[NSFileManager defaultManager];
  v13 = 0;
  if ([v5 fileExistsAtPath:pathCopy isDirectory:&v13])
  {
    if (v13)
    {
      v6 = 1;
      goto LABEL_10;
    }

    v12 = 0;
    [v5 removeItemAtPath:pathCopy error:&v12];
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  v6 = 1;
  [v5 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ failed to create cache directory structure err=%{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (void)_clearMLModelCache
{
  v3 = +[NSFileManager defaultManager];
  _cacheDirectoryPath = [(ICMusicLibraryRecommendationController *)self _cacheDirectoryPath];
  v5 = [NSURL fileURLWithPath:_cacheDirectoryPath];
  v6 = [v5 URLByAppendingPathComponent:@"compiledMLModel.mlmodelc"];
  path = [v6 path];
  v8 = [v3 fileExistsAtPath:path];

  if (v8)
  {
    v11 = 0;
    [v3 removeItemAtURL:v6 error:&v11];
    v9 = v11;
    if (v9)
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v14 = 2114;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove cached MLModel. err=%{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_fetchRecommendationsSetAndModelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [ICMusicLibraryRecommendationsRequest alloc];
  _storeRequestContext = [(ICMusicLibraryRecommendationController *)self _storeRequestContext];
  v7 = [(ICMusicLibraryRecommendationsRequest *)v5 initWithStoreRequestContext:_storeRequestContext params:&off_1001EE408];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CDA5C;
  v9[3] = &unk_1001DD180;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICMusicLibraryRecommendationsRequest *)v7 performRequestWithResponseHandler:v9];
}

- (void)_computeLibraryRecommendationWithResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  responseModel = [responseCopy responseModel];
  v9 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Beginning Affininity Analysis using MLModel.", buf, 0xCu);
  }

  affinityAnalyzer = self->_affinityAnalyzer;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000CDCD8;
  v14[3] = &unk_1001DD158;
  v14[4] = self;
  v15 = responseCopy;
  v16 = responseModel;
  v17 = handlerCopy;
  v11 = responseModel;
  v12 = responseCopy;
  v13 = handlerCopy;
  [(ICMusicLibraryArtistAffinityAnalyzer *)affinityAnalyzer performLibraryAnalysisFromResponse:v11 withCompletionHandler:v14];
}

- (void)_handleRecommendationsResponseModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    artistContentsCount = [modelCopy artistContentsCount];
    recoId = [modelCopy recoId];
    *buf = 138543874;
    selfCopy = self;
    v17 = 2048;
    v18 = artistContentsCount;
    v19 = 2112;
    v20 = recoId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received New Release Recommendations response, %lu new release albums, recoID: %@.", buf, 0x20u);
  }

  v11 = [(ICMusicLibraryRecommendationController *)self _wrapAndCacheResponseModelWithCompiledMLModel:modelCopy];
  if (v11)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000CE430;
    v12[3] = &unk_1001DD130;
    v12[4] = self;
    v14 = completionCopy;
    v13 = modelCopy;
    [(ICMusicLibraryRecommendationController *)self _computeLibraryRecommendationWithResponse:v11 completionHandler:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_performRecommendationsRequest
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating recommendations", buf, 0xCu);
  }

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  v5 = +[ICUserIdentity activeAccount];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CEC24;
  v6[3] = &unk_1001DD0E0;
  v6[4] = self;
  [v4 getPropertiesForUserIdentity:v5 completionHandler:v6];
}

- (void)_performRecommendationsUpdate
{
  [(ICMusicLibraryRecommendationController *)self _cleanupExpiredApplicationMessages];
  self->_failedToPerformAnalysis = 0;
  _getNetworkConstraints = [(ICMusicLibraryRecommendationController *)self _getNetworkConstraints];
  v4 = +[ICEnvironmentMonitor sharedMonitor];
  if ([v4 isWiFiAssociated])
  {
  }

  else
  {
    shouldAllowDataForCellularNetworkTypes = [_getNetworkConstraints shouldAllowDataForCellularNetworkTypes];

    if ((shouldAllowDataForCellularNetworkTypes & 1) == 0)
    {
LABEL_8:
      self->_failedToPerformAnalysis = 1;
      goto LABEL_19;
    }
  }

  v6 = +[ICPrivacyInfo sharedPrivacyInfo];
  privacyAcknowledgementRequiredForMusic = [v6 privacyAcknowledgementRequiredForMusic];

  if (privacyAcknowledgementRequiredForMusic)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping recommendations update because the user needs to accept the privacy notice", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (CFPreferencesGetAppBooleanValue(@"UserRequestedSubscriptionHidden", @"com.apple.mobileipod", 0))
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Will not perform recommendations update. The user has disabled Apple Music.", buf, 0xCu);
    }
  }

  else
  {
    if ([_getNetworkConstraints shouldAllowDataForCellularNetworkTypes])
    {
      v10 = +[ICEnvironmentMonitor sharedMonitor];
      isWiFiAssociated = [v10 isWiFiAssociated];

      if ((isWiFiAssociated & 1) == 0)
      {
        v12 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy3 = self;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing recommendations update on cellular network", buf, 0xCu);
        }
      }
    }

    v9 = +[ICMusicAccountNotificationsSettingsManager sharedManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000CF428;
    v13[3] = &unk_1001DD068;
    v13[4] = self;
    [v9 getAccountNotificationsWithCompletionHandler:v13];
  }

LABEL_19:
}

- (void)_cacheMatchedRecommendations:(id)recommendations
{
  recommendationsCopy = recommendations;
  os_unfair_lock_lock(&self->_lock);
  _cacheDirectoryPath = [(ICMusicLibraryRecommendationController *)self _cacheDirectoryPath];
  v6 = [NSURL fileURLWithPath:_cacheDirectoryPath];
  v7 = +[ICUserIdentityStore defaultIdentityStore];
  v8 = +[ICUserIdentity activeAccount];
  v9 = [v7 DSIDForUserIdentity:v8 outError:0];

  if (v6)
  {
    v10 = [v6 URLByAppendingPathComponent:@"musicRecommendationsData"];
    v11 = [NSDictionary dictionaryWithContentsOfURL:v10];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
    }

    stringValue = [v9 stringValue];
    v14 = [v12 objectForKey:stringValue];

    if (!v14)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      stringValue2 = [v9 stringValue];
      [v12 setObject:v14 forKey:stringValue2];
    }

    v25 = v9;
    v16 = [v14 valueForKey:@"matchedAdamIDs"];
    v26 = _cacheDirectoryPath;
    if (v16)
    {
      [NSMutableSet setWithArray:v16];
    }

    else
    {
      +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [recommendationsCopy count]);
    }
    v17 = ;
    v18 = recommendationsCopy;
    v19 = v17;
    v20 = v18;
    [v17 addObjectsFromArray:?];
    allObjects = [v19 allObjects];
    [v14 setObject:allObjects forKey:@"matchedAdamIDs"];

    v27 = 0;
    v22 = [v12 writeToURL:v10 error:&v27];
    v23 = v27;
    if (v23 || (v22 & 1) == 0)
    {
      v24 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v30 = 2114;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@ Failed to write to disk the matched recommendations. err=%{public}@", buf, 0x16u);
      }
    }

    os_unfair_lock_unlock(&self->_lock);

    recommendationsCopy = v20;
    v9 = v25;
    _cacheDirectoryPath = v26;
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v30 = 2114;
      v31 = _cacheDirectoryPath;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Cache Directory URL is nil failed to cache recommendations data with path received: %{public}@", buf, 0x16u);
    }
  }
}

- (void)_clearRecommendationsData
{
  _cacheDirectoryPath = [(ICMusicLibraryRecommendationController *)self _cacheDirectoryPath];
  v4 = [NSURL URLWithString:_cacheDirectoryPath];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"serializedRecommendationsResponse"];
    v7 = [v5 URLByAppendingPathComponent:@"compiledMLModel.mlmodelc"];
    v8 = [v5 URLByAppendingPathComponent:@"musicRecommendationsData"];
    v9 = +[NSFileManager defaultManager];
    path = [v6 path];
    v18 = 0;
    [v9 removeItemAtPath:path error:&v18];
    v11 = v18;

    path2 = [v7 path];
    v17 = v11;
    [v9 removeItemAtPath:path2 error:&v17];
    v13 = v17;

    path3 = [v8 path];
    v16 = v13;
    [v9 removeItemAtPath:path3 error:&v16];
    v15 = v16;
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v21 = 2114;
      v22 = _cacheDirectoryPath;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Cache Directory URL is nil failed to clear cached recommendations data with path received: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }
}

- (void)_handleNewArtistContentResponseNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"ICMusicLibraryRecommendationsHandleNewArtistContentFilePath"];

  v6 = +[NSFileManager defaultManager];
  if ([v6 fileExistsAtPath:v5])
  {
    v12 = 0;
    v7 = [NSString stringWithContentsOfFile:v5 encoding:4 error:&v12];
    v8 = v12;
    v9 = [[NSData alloc] initWithBase64EncodedString:v7 options:1];
    if (!v9 || v8)
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = self;
        v15 = 2114;
        v16 = v5;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create NSData blob from filePath=%{public}@ err=%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v10 = [[AMPMusicArtistNewContentResponse alloc] initWithData:v9];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000CFDA4;
      v11[3] = &unk_1001DE828;
      v11[4] = self;
      [(ICMusicLibraryRecommendationController *)self _handleRecommendationsResponseModel:v10 completion:v11];
    }
  }
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  typeCopy = type;
  _getNetworkConstraints = [(ICMusicLibraryRecommendationController *)self _getNetworkConstraints];
  v5 = +[NSDate now];
  [v5 timeIntervalSince1970];
  if (self->_failedToPerformAnalysis)
  {
    v7 = v6;
    lastTimePeriodicXPCFired = self->_lastTimePeriodicXPCFired;
    if (([typeCopy networkType] > 999 || objc_msgSend(_getNetworkConstraints, "shouldAllowDataForCellularNetworkTypes")) && v7 - lastTimePeriodicXPCFired >= self->_refreshIntervalFromBag * 0.7)
    {
      [(ICMusicLibraryRecommendationController *)self _performRecommendationsUpdate];
    }
  }
}

- (void)handleAccountStateChange:(id)change
{
  changeCopy = change;
  userIdentityStore = [changeCopy userIdentityStore];
  userIdentity = [changeCopy userIdentity];

  v7 = [userIdentityStore DSIDForUserIdentity:userIdentity outError:0];

  if (v7)
  {
    [(ICMusicLibraryRecommendationController *)self startSystemService];
  }

  else
  {
    [(ICMusicLibraryRecommendationController *)self _clearRecommendationsData];
    [(ICMusicLibraryRecommendationController *)self stopSystemService];
  }

  lastSeenDSID = self->_lastSeenDSID;
  self->_lastSeenDSID = v7;
}

- (void)scheduleRecommendationsRefreshTimer
{
  v3 = +[ICDefaults standardDefaults];
  if ([v3 shouldReduceLibraryRecommendationsXPCInterval])
  {

LABEL_7:
    v7 = +[ICURLBagProvider sharedBagProvider];
    _storeRequestContext = [(ICMusicLibraryRecommendationController *)self _storeRequestContext];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D0168;
    v9[3] = &unk_1001DD040;
    v9[4] = self;
    [v7 getBagForRequestContext:_storeRequestContext forceRefetch:0 withCompletionHandler:v9];

    return;
  }

  v4 = +[ICDefaults standardDefaults];
  shouldForceLibraryRecommendationAnalysis = [v4 shouldForceLibraryRecommendationAnalysis];

  if (!shouldForceLibraryRecommendationAnalysis)
  {
    goto LABEL_7;
  }

  v6 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Forcing library recommendation analysis without a timer.", buf, 0xCu);
  }

  [(ICMusicLibraryRecommendationController *)self _performRecommendationsUpdate];
}

- (void)stopSystemService
{
  if (self->_isSystemService)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping system service...", &v9, 0xCu);
    }

    self->_isSystemService = 0;
    self->_refreshIntervalFromBag = 0.0;
    v4 = +[ICEnvironmentMonitor sharedMonitor];
    [v4 unregisterObserver:self];

    v5 = +[ICBGTaskScheduler sharedTaskScheduler];
    [v5 cancelTask:@"com.apple.itunescloud.ICMusicLibraryRecommendationController.refresh"];

    os_unfair_lock_lock(&self->_lock);
    v6 = self->_subscriptionObservationToken;
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = +[ICUserIdentity autoupdatingActiveAccount];
      v8 = [ICMusicSubscriptionStatusMonitor sharedMonitorForIdentity:v7];

      [v8 endObservingSubscriptionStatusWithToken:v6];
    }

    [(ICMusicLibraryRecommendationController *)self _cleanupExpiredApplicationMessages];
  }
}

- (void)startSystemService
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting system service...", buf, 0xCu);
  }

  if (!self->_isSystemService)
  {
    self->_isSystemService = 1;
    v4 = +[ICEnvironmentMonitor sharedMonitor];
    [v4 registerObserver:self];

    v5 = +[ICUserIdentity autoupdatingActiveAccount];
    v6 = [ICMusicSubscriptionStatusMonitor sharedMonitorForIdentity:v5];

    os_unfair_lock_lock(&self->_lock);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D06EC;
    v9[3] = &unk_1001DD018;
    v9[4] = self;
    v7 = [v6 beginObservingSubscriptionStatusWithHandler:v9];
    subscriptionObservationToken = self->_subscriptionObservationToken;
    self->_subscriptionObservationToken = v7;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:@"com.apple.itunescloudd.ICMusicLibraryRecommendationsHandleNewArtistContentResponseNotification"];
  [v3 removeObserver:@"com.apple.itunescloudd.ICMusicLibraryRecommendationsClearCacheNotification"];

  v4.receiver = self;
  v4.super_class = ICMusicLibraryRecommendationController;
  [(ICMusicLibraryRecommendationController *)&v4 dealloc];
}

- (ICMusicLibraryRecommendationController)init
{
  v13.receiver = self;
  v13.super_class = ICMusicLibraryRecommendationController;
  v2 = [(ICMusicLibraryRecommendationController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_isSystemService = 0;
    v4 = +[ICUserIdentityStore defaultIdentityStore];
    v5 = +[ICUserIdentity activeAccount];
    v6 = [v4 DSIDForUserIdentity:v5 outError:0];
    lastSeenDSID = v3->_lastSeenDSID;
    v3->_lastSeenDSID = v6;

    subscriptionObservationToken = v3->_subscriptionObservationToken;
    v3->_subscriptionObservationToken = 0;

    v3->_failedToPerformAnalysis = 0;
    v3->_lastTimePeriodicXPCFired = 0.0;
    v3->_refreshIntervalFromBag = 0.0;
    v9 = objc_alloc_init(ICMusicLibraryArtistAffinityAnalyzer);
    affinityAnalyzer = v3->_affinityAnalyzer;
    v3->_affinityAnalyzer = v9;

    v3->_lock._os_unfair_lock_opaque = 0;
    *&v3->_userHasOptedIn = 0;
    v11 = +[NSDistributedNotificationCenter defaultCenter];
    [v11 addObserver:v3 selector:"_handleNewArtistContentResponseNotification:" name:@"com.apple.itunescloudd.ICMusicLibraryRecommendationsHandleNewArtistContentResponseNotification" object:0];
    [v11 addObserver:v3 selector:"_clearRecommendationsData" name:@"com.apple.itunescloudd.ICMusicLibraryRecommendationsClearCacheNotification" object:0];
  }

  return v3;
}

+ (ICMusicLibraryRecommendationController)sharedLibraryRecommendationController
{
  if (qword_100213CB8 != -1)
  {
    dispatch_once(&qword_100213CB8, &stru_1001DCFF0);
  }

  v3 = qword_100213CC0;

  return v3;
}

@end