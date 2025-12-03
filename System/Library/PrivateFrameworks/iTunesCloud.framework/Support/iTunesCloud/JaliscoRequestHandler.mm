@interface JaliscoRequestHandler
- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)import;
- (JaliscoRequestHandler)initWithConfiguration:(id)configuration updateTaskHelper:(id)helper;
- (float)updateProgress;
- (id)_DAAPMediaKindFromJaliscoSupportedMediaKind:(int64_t)kind;
- (id)jaliscoLibraryWithReason:(int64_t)reason;
- (void)_updateJaliscoLibraryWithClientIdentity:(id)identity completion:(id)completion;
- (void)cancelOperationsWithCompletionHandler:(id)handler;
- (void)cancelPendingChangesWithCompletion:(id)completion;
- (void)dealloc;
- (void)decreasePriorityForAllOperations;
- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d;
- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d;
- (void)hideItemsWithPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)increasePriorityForAllOperations;
- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)library withClientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadBooksForStoreIDs:(id)ds clientIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)removeLibraryWithClientIdentity:(id)identity completion:(id)completion;
- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)updateJaliscoLibraryByRemovingMediaKind:(int64_t)kind withClientIdentity:(id)identity completionHandler:(id)handler;
- (void)updateJaliscoLibraryWithClientIdentity:(id)identity byAddingMediaKind:(int64_t)kind completionHandler:(id)handler;
- (void)updateLibraryWithClientIdentity:(id)identity reason:(int64_t)reason completionHandler:(id)handler;
@end

@implementation JaliscoRequestHandler

- (id)_DAAPMediaKindFromJaliscoSupportedMediaKind:(int64_t)kind
{
  if (kind > 6)
  {
    return &off_1001ED690;
  }

  else
  {
    return off_1001DCA30[kind];
  }
}

- (void)_updateJaliscoLibraryWithClientIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  [(JaliscoRequestHandler *)self cancelPendingChanges];
  v7 = [(BaseRequestHandler *)ArtistImageRequestHandler handlerForConfiguration:self->_configuration];
  [v7 cancelAllOperations];

  [(JaliscoRequestHandler *)self cancelAllOperations];
  [(JaliscoRequestHandler *)self updateLibraryWithClientIdentity:identityCopy reason:1001 completionHandler:completionCopy];
}

- (void)loadBooksForStoreIDs:(id)ds clientIdentity:(id)identity withCompletionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v11 = [(CloudLibraryOperation *)[JaliscoLoadBooksOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy];
  [(JaliscoLoadBooksOperation *)v11 setQueryStoreIDs:dsCopy];
  objc_initWeak(&location, v11);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AB358;
  v16[3] = &unk_1001DCA10;
  objc_copyWeak(&v18, &location);
  v12 = handlerCopy;
  v17 = v12;
  [(JaliscoLoadBooksOperation *)v11 setCompletionBlock:v16];
  [(JaliscoLoadBooksOperation *)v11 setName:@"com.apple.itunescloudd.JaliscoRequestHandler.loadBooksOperation"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB41C;
  v14[3] = &unk_1001DD8F0;
  v13 = v12;
  v15 = v13;
  [(JaliscoRequestHandler *)self _addLibraryOperation:v11 priority:1 noLibraryHandler:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)library withClientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB760;
  v14[3] = &unk_1001DC9C0;
  v14[4] = self;
  v15 = identityCopy;
  v16 = handlerCopy;
  libraryCopy = library;
  v12 = identityCopy;
  v13 = handlerCopy;
  [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v14];
}

- (void)updateJaliscoLibraryByRemovingMediaKind:(int64_t)kind withClientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ABAF0;
  v14[3] = &unk_1001DC9C0;
  v16 = handlerCopy;
  kindCopy = kind;
  v14[4] = self;
  v15 = identityCopy;
  v12 = identityCopy;
  v13 = handlerCopy;
  [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v14];
}

- (void)updateJaliscoLibraryWithClientIdentity:(id)identity byAddingMediaKind:(int64_t)kind completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ABE5C;
  v14[3] = &unk_1001DC9C0;
  v16 = handlerCopy;
  kindCopy = kind;
  v14[4] = self;
  v15 = identityCopy;
  v12 = identityCopy;
  v13 = handlerCopy;
  [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v14];
}

- (void)increasePriorityForAllOperations
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - increasePriorityForAllOperations", buf, 0xCu);
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"JaliscoRequestHandler.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"MSVDeviceSupportsMultipleLibraries()"}];
  }

  artworkImporter = [(JaliscoRequestHandler *)self artworkImporter];
  [artworkImporter increasePriorityForAllOperations];

  jaliscoLibrary = [(JaliscoRequestHandler *)self jaliscoLibrary];
  [jaliscoLibrary increasePriorityForAllOperations];
}

- (void)decreasePriorityForAllOperations
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - decreasePriorityForAllOperations", buf, 0xCu);
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"JaliscoRequestHandler.m" lineNumber:487 description:{@"Invalid parameter not satisfying: %@", @"MSVDeviceSupportsMultipleLibraries()"}];
  }

  artworkImporter = [(JaliscoRequestHandler *)self artworkImporter];
  [artworkImporter decreasePriorityForAllOperations];

  jaliscoLibrary = [(JaliscoRequestHandler *)self jaliscoLibrary];
  [jaliscoLibrary decreasePriorityForAllOperations];
}

- (void)cancelOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperationsWithCompletion", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AC46C;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(JaliscoRequestHandler *)self cancelPendingChangesWithCompletion:v7];
}

- (void)removeLibraryWithClientIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v8 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing purchase history due to user action", &v11, 0xCu);
  }

  [(JaliscoRequestHandler *)self cancelAllOperations];
  v9 = [(CloudLibraryOperation *)[JaliscoDeauthenticateOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy];

  [(JaliscoDeauthenticateOperation *)v9 main];
  if (completionCopy)
  {
    if ([(CloudLibraryOperation *)v9 status]== 1)
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v10 = [NSError ic_cloudClientErrorWithCode:2002 userInfo:0];
      (completionCopy)[2](completionCopy, v10);
    }
  }
}

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v10 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = dsCopy;
  v35 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (!v35)
  {
    v27 = 0;
    v25 = v11;
LABEL_17:

    v26 = v27;
    v31 = v10;
    goto LABEL_18;
  }

  v29 = handlerCopy;
  v32 = 0;
  v34 = *v42;
  v33 = ML3TrackPropertyPurchaseHistoryID;
  v30 = v11;
  v31 = v10;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v42 != v34)
    {
      objc_enumerationMutation(v11);
    }

    v13 = *(*(&v41 + 1) + 8 * v12);
    [(ML3MusicLibrary *)self->_musicLibrary setClientIdentity:identityCopy];
    v14 = [ML3ComparisonPredicate predicateWithProperty:v33 equalToValue:v13];
    v15 = [ML3Track anyInLibrary:self->_musicLibrary predicate:v14 options:3];
    v16 = [[ML3ArtworkTokenSet alloc] initWithEntity:v15 artworkType:2];
    v17 = [v16 artworkTokenForSource:400];
    v18 = [v17 length];
    if (v18)
    {
      v19 = ICCloudClientCreateArtworkInfoDictionary();
      [v10 addObject:v19];
    }

    else
    {
      v20 = identityCopy;
      v21 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        persistentID = [v15 persistentID];
        *buf = 134217984;
        v48 = persistentID;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "No purchase history artwork_token for screenshot item with persistent-id = %lld", buf, 0xCu);
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"No purchase history artwork_token for screenshot item with persistent-id = %lld", [v15 persistentID]);
      v45 = @"NSDebugDescription";
      v46 = v19;
      v23 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v24 = [NSError ic_cloudClientErrorWithCode:2021 userInfo:v23];

      v32 = v24;
      identityCopy = v20;
      v11 = v30;
      v10 = v31;
    }

    if (!v18)
    {
      break;
    }

    if (v35 == ++v12)
    {
      v35 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v35)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  v25 = v10;
  v10 = 0;
  v26 = 0;
  handlerCopy = v29;
  v27 = v32;
  if (v32)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (handlerCopy)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ACAA0;
    block[3] = &unk_1001DF5F0;
    v40 = handlerCopy;
    v38 = v31;
    v39 = v26;
    dispatch_async(calloutQueue, block);
  }
}

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v29 = 2048;
    v30 = [dsCopy count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got load artwork info request for %lu purchase history IDs", buf, 0x16u);
  }

  v12 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitMusicActionForCurrentNetworkConditions = [v12 shouldProhibitMusicActionForCurrentNetworkConditions];

  v14 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitVideosActionForCurrentNetworkConditions = [v14 shouldProhibitVideosActionForCurrentNetworkConditions];

  if ((shouldProhibitMusicActionForCurrentNetworkConditions & shouldProhibitVideosActionForCurrentNetworkConditions) != 1)
  {
    v18 = [(CloudLoadBulkArtworkInfoOperation *)[JaliscoLoadBulkItemArtworkInfoOperation alloc] initWithConfiguration:self->_configuration cloudIDs:dsCopy];
    objc_initWeak(buf, v18);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000ACEA0;
    v22[3] = &unk_1001DCA10;
    v19 = handlerCopy;
    v23 = v19;
    objc_copyWeak(&v24, buf);
    [(JaliscoLoadBulkItemArtworkInfoOperation *)v18 setCompletionBlock:v22];
    [(JaliscoLoadBulkItemArtworkInfoOperation *)v18 setName:@"com.apple.itunescloudd.JaliscoRequestHandler.loadArtworkInfoOperation"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000ACF24;
    v20[3] = &unk_1001DD8F0;
    v21 = v19;
    [(JaliscoRequestHandler *)self _addLibraryOperation:v18 priority:1 noLibraryHandler:v20];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v16 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping artwork load.", buf, 0xCu);
  }

  if (handlerCopy)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ACE24;
    block[3] = &unk_1001DF5C8;
    v26 = handlerCopy;
    dispatch_async(calloutQueue, block);
    v18 = v26;
LABEL_9:
  }
}

- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d
{
  artworkImporter = [(JaliscoRequestHandler *)self artworkImporter];
  [artworkImporter deprioritizeImportArtworkForCloudID:d artworkType:2];
}

- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d
{
  artworkImporter = [(JaliscoRequestHandler *)self artworkImporter];
  [artworkImporter deprioritizeImportArtworkForCloudID:d artworkType:1];
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AD0E8;
  v14[3] = &unk_1001DC9C0;
  v14[4] = self;
  v15 = identityCopy;
  v16 = handlerCopy;
  dCopy = d;
  v12 = handlerCopy;
  v13 = identityCopy;
  [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v14];
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AD3E0;
  v14[3] = &unk_1001DC9C0;
  v14[4] = self;
  v15 = identityCopy;
  v16 = handlerCopy;
  dCopy = d;
  v12 = handlerCopy;
  v13 = identityCopy;
  [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v14];
}

- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v24 = 2048;
    dCopy = d;
    v26 = 2114;
    v27 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to update item with purchaseHistoryID %llu properties: %{public}@", buf, 0x20u);
  }

  v14 = [[JaliscoSetItemPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy purchaseHistoryID:d properties:propertiesCopy];
  objc_initWeak(buf, v14);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000AD7E4;
  v19 = &unk_1001DCA10;
  v15 = handlerCopy;
  v20 = v15;
  objc_copyWeak(&v21, buf);
  [(JaliscoSetItemPropertyOperation *)v14 setCompletionBlock:&v16];
  [(JaliscoSetItemPropertyOperation *)v14 setName:@"com.apple.itunescloudd.JaliscoRequestHandler.setItemPropertyOperation", v16, v17, v18, v19];
  [(JaliscoRequestHandler *)self _addLibraryOperation:v14 priority:2 noLibraryHandler:0];
  objc_destroyWeak(&v21);

  objc_destroyWeak(buf);
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = dsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to hide purchaseHistoryIDs %{public}@", buf, 0x16u);
  }

  v12 = [[JaliscoHideItemOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy itemPurchaseHistoryIDs:dsCopy];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000ADAAC;
  v17[3] = &unk_1001DCA10;
  v13 = handlerCopy;
  v18 = v13;
  objc_copyWeak(&v19, buf);
  [(JaliscoHideItemOperation *)v12 setCompletionBlock:v17];
  [(JaliscoHideItemOperation *)v12 setName:@"com.apple.itunescloudd.JaliscoRequestHandler.hideItemOperation"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000ADB18;
  v15[3] = &unk_1001DD8F0;
  v14 = v13;
  v16 = v14;
  [(JaliscoRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)updateLibraryWithClientIdentity:(id)identity reason:(int64_t)reason completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = ICCloudClientGetStringForRequestReason();
    *buf = 138543618;
    selfCopy7 = self;
    v63 = 2114;
    v64 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got update library request with reason %{public}@", buf, 0x16u);
  }

  CFPreferencesAppSynchronize(@"com.apple.homesharing");
  if (CFPreferencesGetAppBooleanValue(@"JaliscoDisabled", @"com.apple.homesharing", 0))
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy7 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Purchase history import disabled via the preference", buf, 0xCu);
    }

    if (handlerCopy)
    {
      calloutQueue = self->_calloutQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000AE314;
      block[3] = &unk_1001DF5C8;
      v58 = handlerCopy;
      dispatch_async(calloutQueue, block);
      v14 = v58;
LABEL_39:

      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v15 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitMusicActionForCurrentNetworkConditions = [v15 shouldProhibitMusicActionForCurrentNetworkConditions];

  v17 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitVideosActionForCurrentNetworkConditions = [v17 shouldProhibitVideosActionForCurrentNetworkConditions];

  if (!shouldProhibitMusicActionForCurrentNetworkConditions || !shouldProhibitVideosActionForCurrentNetworkConditions)
  {
    v14 = [(JaliscoRequestHandler *)self jaliscoLibraryWithReason:reason];
    if (!v14)
    {
      v29 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@ - Could not initialize jalisco library", buf, 0xCu);
      }

      if (!handlerCopy)
      {
        v14 = 0;
        goto LABEL_39;
      }

      v30 = self->_calloutQueue;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000AE33C;
      v53[3] = &unk_1001DF5C8;
      v54 = handlerCopy;
      dispatch_async(v30, v53);
      v26 = v54;
LABEL_38:

      goto LABEL_39;
    }

    userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
    userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
    v52 = 0;
    v25 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v52];
    v26 = v52;

    if (!v25 || v26)
    {
      v31 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy7 = self;
        v63 = 2114;
        v64 = v26;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@ - Could not load user identity properties. error=%{public}@", buf, 0x16u);
      }

      if (!handlerCopy)
      {
        goto LABEL_37;
      }

      v32 = self->_calloutQueue;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000AE350;
      v49[3] = &unk_1001DF5A0;
      v51 = handlerCopy;
      v50 = v26;
      dispatch_async(v32, v49);

      dSID = v51;
    }

    else
    {
      dSID = [v25 DSID];
      if ([dSID longLongValue])
      {
        updateLibraryQueue = [(JaliscoRequestHandler *)self updateLibraryQueue];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000AE3DC;
        v39[3] = &unk_1001DC998;
        v39[4] = self;
        v40 = identityCopy;
        dSID = dSID;
        v41 = dSID;
        v42 = v25;
        v44 = handlerCopy;
        reasonCopy = reason;
        v43 = v14;
        dispatch_async(updateLibraryQueue, v39);
      }

      else
      {
        v33 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy7 = self;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@ - No account DSID - skipping update", buf, 0xCu);
        }

        if (handlerCopy)
        {
          v59 = NSDebugDescriptionErrorKey;
          userIdentity2 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
          v35 = [NSString stringWithFormat:@"Unable update library [no DSID on user identity] - userIdentity=%@ - properties=%@", userIdentity2, v25];
          v60 = v35;
          v36 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];

          v37 = self->_calloutQueue;
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_1000AE364;
          v46[3] = &unk_1001DF5A0;
          v47 = v36;
          v48 = handlerCopy;
          v38 = v36;
          dispatch_async(v37, v46);
        }
      }
    }

LABEL_37:
    goto LABEL_38;
  }

  v19 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = ICCloudClientGetStringForRequestReason();
    *buf = 138543618;
    selfCopy7 = self;
    v63 = 2114;
    v64 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping update (reason = %{public}@)", buf, 0x16u);
  }

  if (reason == 2)
  {
    v21 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy7 = self;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Rescheduling push notification triggered update when WiFi becomes available.", buf, 0xCu);
    }

    [(ICDCloudMusicLibraryJaliscoUpdateTaskHelper *)self->_updateTaskHelper scheduleBackgroundTaskToUpdateLibraryType:0];
  }

  if (handlerCopy)
  {
    v22 = self->_calloutQueue;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000AE328;
    v55[3] = &unk_1001DF5C8;
    v56 = handlerCopy;
    dispatch_async(v22, v55);
    v14 = v56;
    goto LABEL_39;
  }

LABEL_40:
}

- (float)updateProgress
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  updateLibraryQueue = [(JaliscoRequestHandler *)self updateLibraryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AEF24;
  v6[3] = &unk_1001DEF50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(updateLibraryQueue, v6);

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)import
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  updateLibraryQueue = [(JaliscoRequestHandler *)self updateLibraryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF080;
  block[3] = &unk_1001DEF78;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(updateLibraryQueue, block);

  if (import)
  {
    *import = *(v10 + 24);
  }

  v6 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

- (id)jaliscoLibraryWithReason:(int64_t)reason
{
  if (reason == 1001 && self->_jaliscoLibrary)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = ICCloudClientGetStringForRequestReason();
      *buf = 138543618;
      selfCopy2 = self;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing library for %{public}@", buf, 0x16u);
    }

    jaliscoLibrary = self->_jaliscoLibrary;
    self->_jaliscoLibrary = 0;

    updateLibraryQueue = [(JaliscoRequestHandler *)self updateLibraryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AF368;
    block[3] = &unk_1001DF578;
    block[4] = self;
    dispatch_sync(updateLibraryQueue, block);
  }

  if ([(CloudLibrary *)self->_jaliscoLibrary failedToConnect])
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing library which failed to connect", buf, 0xCu);
    }

    v10 = self->_jaliscoLibrary;
    self->_jaliscoLibrary = 0;

    updateLibraryQueue2 = [(JaliscoRequestHandler *)self updateLibraryQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AF3B0;
    v18[3] = &unk_1001DF578;
    v18[4] = self;
    dispatch_sync(updateLibraryQueue2, v18);
  }

  v12 = self->_jaliscoLibrary;
  if (!v12)
  {
    v13 = [(ICConnectionConfiguration *)self->_configuration copy];
    v14 = v13;
    if (reason)
    {
      [v13 setRequestReason:reason];
    }

    v15 = [[JaliscoLibrary alloc] initWithConfiguration:v14];
    v16 = self->_jaliscoLibrary;
    self->_jaliscoLibrary = v15;

    v12 = self->_jaliscoLibrary;
  }

  return v12;
}

- (void)cancelPendingChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    jaliscoLibrary = self->_jaliscoLibrary;
    pendingChangesCoordinator = [(CloudLibrary *)jaliscoLibrary pendingChangesCoordinator];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2112;
    v14 = jaliscoLibrary;
    v15 = 2112;
    v16 = pendingChangesCoordinator;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelPendingChangesWithCompletion: - Library=%@ - PendingChangesCoordinator:%@", &v11, 0x20u);
  }

  v8 = self->_jaliscoLibrary;
  if (v8 && ([(CloudLibrary *)v8 pendingChangesCoordinator], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    pendingChangesCoordinator2 = [(CloudLibrary *)self->_jaliscoLibrary pendingChangesCoordinator];
    [pendingChangesCoordinator2 removeAllPendingChangesWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@ - dealloc", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_updateLibraryCompletionHandlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = JaliscoRequestHandler;
  [(JaliscoRequestHandler *)&v9 dealloc];
}

- (JaliscoRequestHandler)initWithConfiguration:(id)configuration updateTaskHelper:(id)helper
{
  configurationCopy = configuration;
  helperCopy = helper;
  v22.receiver = self;
  v22.super_class = JaliscoRequestHandler;
  v9 = [(JaliscoRequestHandler *)&v22 init];
  if (v9)
  {
    v10 = [[JaliscoArtworkImporter alloc] initWithConfiguration:configurationCopy];
    artworkImporter = v9->_artworkImporter;
    v9->_artworkImporter = v10;

    v12 = dispatch_queue_create("com.apple.itunescloudd.JaliscoRequestHandler.updateLibraryQueue", 0);
    updateLibraryQueue = v9->_updateLibraryQueue;
    v9->_updateLibraryQueue = v12;

    v14 = dispatch_queue_create("com.apple.itunescloudd.JaliscoRequestHandler.calloutQueue", 0);
    calloutQueue = v9->_calloutQueue;
    v9->_calloutQueue = v14;

    objc_storeStrong(&v9->_updateTaskHelper, helper);
    v16 = objc_alloc_init(NSMutableArray);
    updateLibraryCompletionHandlers = v9->_updateLibraryCompletionHandlers;
    v9->_updateLibraryCompletionHandlers = v16;

    objc_storeStrong(&v9->_configuration, configuration);
    userIdentity = [configurationCopy userIdentity];
    v19 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];
    musicLibrary = v9->_musicLibrary;
    v9->_musicLibrary = v19;
  }

  return v9;
}

@end