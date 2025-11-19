@interface JaliscoRequestHandler
- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)a3;
- (JaliscoRequestHandler)initWithConfiguration:(id)a3 updateTaskHelper:(id)a4;
- (float)updateProgress;
- (id)_DAAPMediaKindFromJaliscoSupportedMediaKind:(int64_t)a3;
- (id)jaliscoLibraryWithReason:(int64_t)a3;
- (void)_updateJaliscoLibraryWithClientIdentity:(id)a3 completion:(id)a4;
- (void)cancelOperationsWithCompletionHandler:(id)a3;
- (void)cancelPendingChangesWithCompletion:(id)a3;
- (void)dealloc;
- (void)decreasePriorityForAllOperations;
- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)a3;
- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)a3;
- (void)hideItemsWithPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)increasePriorityForAllOperations;
- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)a3 withClientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadBooksForStoreIDs:(id)a3 clientIdentity:(id)a4 withCompletionHandler:(id)a5;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)removeLibraryWithClientIdentity:(id)a3 completion:(id)a4;
- (void)setItemProperties:(id)a3 forPurchaseHistoryID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)updateJaliscoLibraryByRemovingMediaKind:(int64_t)a3 withClientIdentity:(id)a4 completionHandler:(id)a5;
- (void)updateJaliscoLibraryWithClientIdentity:(id)a3 byAddingMediaKind:(int64_t)a4 completionHandler:(id)a5;
- (void)updateLibraryWithClientIdentity:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation JaliscoRequestHandler

- (id)_DAAPMediaKindFromJaliscoSupportedMediaKind:(int64_t)a3
{
  if (a3 > 6)
  {
    return &off_1001ED690;
  }

  else
  {
    return off_1001DCA30[a3];
  }
}

- (void)_updateJaliscoLibraryWithClientIdentity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = a3;
  [(JaliscoRequestHandler *)self cancelPendingChanges];
  v7 = [(BaseRequestHandler *)ArtistImageRequestHandler handlerForConfiguration:self->_configuration];
  [v7 cancelAllOperations];

  [(JaliscoRequestHandler *)self cancelAllOperations];
  [(JaliscoRequestHandler *)self updateLibraryWithClientIdentity:v8 reason:1001 completionHandler:v6];
}

- (void)loadBooksForStoreIDs:(id)a3 clientIdentity:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CloudLibraryOperation *)[JaliscoLoadBooksOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v9];
  [(JaliscoLoadBooksOperation *)v11 setQueryStoreIDs:v8];
  objc_initWeak(&location, v11);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AB358;
  v16[3] = &unk_1001DCA10;
  objc_copyWeak(&v18, &location);
  v12 = v10;
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

- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)a3 withClientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB760;
  v14[3] = &unk_1001DC9C0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v12 = v8;
  v13 = v9;
  [v10 getPropertiesForUserIdentity:v11 completionHandler:v14];
}

- (void)updateJaliscoLibraryByRemovingMediaKind:(int64_t)a3 withClientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ABAF0;
  v14[3] = &unk_1001DC9C0;
  v16 = v9;
  v17 = a3;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  v13 = v9;
  [v10 getPropertiesForUserIdentity:v11 completionHandler:v14];
}

- (void)updateJaliscoLibraryWithClientIdentity:(id)a3 byAddingMediaKind:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ABE5C;
  v14[3] = &unk_1001DC9C0;
  v16 = v9;
  v17 = a4;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  v13 = v9;
  [v10 getPropertiesForUserIdentity:v11 completionHandler:v14];
}

- (void)increasePriorityForAllOperations
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - increasePriorityForAllOperations", buf, 0xCu);
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"JaliscoRequestHandler.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"MSVDeviceSupportsMultipleLibraries()"}];
  }

  v5 = [(JaliscoRequestHandler *)self artworkImporter];
  [v5 increasePriorityForAllOperations];

  v6 = [(JaliscoRequestHandler *)self jaliscoLibrary];
  [v6 increasePriorityForAllOperations];
}

- (void)decreasePriorityForAllOperations
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - decreasePriorityForAllOperations", buf, 0xCu);
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"JaliscoRequestHandler.m" lineNumber:487 description:{@"Invalid parameter not satisfying: %@", @"MSVDeviceSupportsMultipleLibraries()"}];
  }

  v5 = [(JaliscoRequestHandler *)self artworkImporter];
  [v5 decreasePriorityForAllOperations];

  v6 = [(JaliscoRequestHandler *)self jaliscoLibrary];
  [v6 decreasePriorityForAllOperations];
}

- (void)cancelOperationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperationsWithCompletion", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AC46C;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(JaliscoRequestHandler *)self cancelPendingChangesWithCompletion:v7];
}

- (void)removeLibraryWithClientIdentity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing purchase history due to user action", &v11, 0xCu);
  }

  [(JaliscoRequestHandler *)self cancelAllOperations];
  v9 = [(CloudLibraryOperation *)[JaliscoDeauthenticateOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v7];

  [(JaliscoDeauthenticateOperation *)v9 main];
  if (v6)
  {
    if ([(CloudLibraryOperation *)v9 status]== 1)
    {
      v6[2](v6, 0);
    }

    else
    {
      v10 = [NSError ic_cloudClientErrorWithCode:2002 userInfo:0];
      (v6)[2](v6, v10);
    }
  }
}

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v7;
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

  v29 = v9;
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
    [(ML3MusicLibrary *)self->_musicLibrary setClientIdentity:v8];
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
      v20 = v8;
      v21 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = [v15 persistentID];
        *buf = 134217984;
        v48 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "No purchase history artwork_token for screenshot item with persistent-id = %lld", buf, 0xCu);
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"No purchase history artwork_token for screenshot item with persistent-id = %lld", [v15 persistentID]);
      v45 = @"NSDebugDescription";
      v46 = v19;
      v23 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v24 = [NSError ic_cloudClientErrorWithCode:2021 userInfo:v23];

      v32 = v24;
      v8 = v20;
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
  v9 = v29;
  v27 = v32;
  if (v32)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v9)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ACAA0;
    block[3] = &unk_1001DF5F0;
    v40 = v9;
    v38 = v31;
    v39 = v26;
    dispatch_async(calloutQueue, block);
  }
}

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = self;
    v29 = 2048;
    v30 = [v8 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got load artwork info request for %lu purchase history IDs", buf, 0x16u);
  }

  v12 = +[ICCloudAvailabilityController sharedController];
  v13 = [v12 shouldProhibitMusicActionForCurrentNetworkConditions];

  v14 = +[ICCloudAvailabilityController sharedController];
  v15 = [v14 shouldProhibitVideosActionForCurrentNetworkConditions];

  if ((v13 & v15) != 1)
  {
    v18 = [(CloudLoadBulkArtworkInfoOperation *)[JaliscoLoadBulkItemArtworkInfoOperation alloc] initWithConfiguration:self->_configuration cloudIDs:v8];
    objc_initWeak(buf, v18);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000ACEA0;
    v22[3] = &unk_1001DCA10;
    v19 = v10;
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
    v28 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping artwork load.", buf, 0xCu);
  }

  if (v10)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ACE24;
    block[3] = &unk_1001DF5C8;
    v26 = v10;
    dispatch_async(calloutQueue, block);
    v18 = v26;
LABEL_9:
  }
}

- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)a3
{
  v4 = [(JaliscoRequestHandler *)self artworkImporter];
  [v4 deprioritizeImportArtworkForCloudID:a3 artworkType:2];
}

- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)a3
{
  v4 = [(JaliscoRequestHandler *)self artworkImporter];
  [v4 deprioritizeImportArtworkForCloudID:a3 artworkType:1];
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AD0E8;
  v14[3] = &unk_1001DC9C0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v12 = v9;
  v13 = v8;
  [v10 getPropertiesForUserIdentity:v11 completionHandler:v14];
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AD3E0;
  v14[3] = &unk_1001DC9C0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v12 = v9;
  v13 = v8;
  [v10 getPropertiesForUserIdentity:v11 completionHandler:v14];
}

- (void)setItemProperties:(id)a3 forPurchaseHistoryID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = self;
    v24 = 2048;
    v25 = a4;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to update item with purchaseHistoryID %llu properties: %{public}@", buf, 0x20u);
  }

  v14 = [[JaliscoSetItemPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v11 purchaseHistoryID:a4 properties:v10];
  objc_initWeak(buf, v14);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000AD7E4;
  v19 = &unk_1001DCA10;
  v15 = v12;
  v20 = v15;
  objc_copyWeak(&v21, buf);
  [(JaliscoSetItemPropertyOperation *)v14 setCompletionBlock:&v16];
  [(JaliscoSetItemPropertyOperation *)v14 setName:@"com.apple.itunescloudd.JaliscoRequestHandler.setItemPropertyOperation", v16, v17, v18, v19];
  [(JaliscoRequestHandler *)self _addLibraryOperation:v14 priority:2 noLibraryHandler:0];
  objc_destroyWeak(&v21);

  objc_destroyWeak(buf);
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to hide purchaseHistoryIDs %{public}@", buf, 0x16u);
  }

  v12 = [[JaliscoHideItemOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v9 itemPurchaseHistoryIDs:v8];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000ADAAC;
  v17[3] = &unk_1001DCA10;
  v13 = v10;
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

- (void)updateLibraryWithClientIdentity:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = ICCloudClientGetStringForRequestReason();
    *buf = 138543618;
    v62 = self;
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
      v62 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Purchase history import disabled via the preference", buf, 0xCu);
    }

    if (v9)
    {
      calloutQueue = self->_calloutQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000AE314;
      block[3] = &unk_1001DF5C8;
      v58 = v9;
      dispatch_async(calloutQueue, block);
      v14 = v58;
LABEL_39:

      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v15 = +[ICCloudAvailabilityController sharedController];
  v16 = [v15 shouldProhibitMusicActionForCurrentNetworkConditions];

  v17 = +[ICCloudAvailabilityController sharedController];
  v18 = [v17 shouldProhibitVideosActionForCurrentNetworkConditions];

  if (!v16 || !v18)
  {
    v14 = [(JaliscoRequestHandler *)self jaliscoLibraryWithReason:a4];
    if (!v14)
    {
      v29 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v62 = self;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@ - Could not initialize jalisco library", buf, 0xCu);
      }

      if (!v9)
      {
        v14 = 0;
        goto LABEL_39;
      }

      v30 = self->_calloutQueue;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000AE33C;
      v53[3] = &unk_1001DF5C8;
      v54 = v9;
      dispatch_async(v30, v53);
      v26 = v54;
LABEL_38:

      goto LABEL_39;
    }

    v23 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
    v24 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
    v52 = 0;
    v25 = [v23 getPropertiesForUserIdentity:v24 error:&v52];
    v26 = v52;

    if (!v25 || v26)
    {
      v31 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v62 = self;
        v63 = 2114;
        v64 = v26;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@ - Could not load user identity properties. error=%{public}@", buf, 0x16u);
      }

      if (!v9)
      {
        goto LABEL_37;
      }

      v32 = self->_calloutQueue;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000AE350;
      v49[3] = &unk_1001DF5A0;
      v51 = v9;
      v50 = v26;
      dispatch_async(v32, v49);

      v27 = v51;
    }

    else
    {
      v27 = [v25 DSID];
      if ([v27 longLongValue])
      {
        v28 = [(JaliscoRequestHandler *)self updateLibraryQueue];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000AE3DC;
        v39[3] = &unk_1001DC998;
        v39[4] = self;
        v40 = v8;
        v27 = v27;
        v41 = v27;
        v42 = v25;
        v44 = v9;
        v45 = a4;
        v43 = v14;
        dispatch_async(v28, v39);
      }

      else
      {
        v33 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v62 = self;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@ - No account DSID - skipping update", buf, 0xCu);
        }

        if (v9)
        {
          v59 = NSDebugDescriptionErrorKey;
          v34 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
          v35 = [NSString stringWithFormat:@"Unable update library [no DSID on user identity] - userIdentity=%@ - properties=%@", v34, v25];
          v60 = v35;
          v36 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];

          v37 = self->_calloutQueue;
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_1000AE364;
          v46[3] = &unk_1001DF5A0;
          v47 = v36;
          v48 = v9;
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
    v62 = self;
    v63 = 2114;
    v64 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping update (reason = %{public}@)", buf, 0x16u);
  }

  if (a4 == 2)
  {
    v21 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v62 = self;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Rescheduling push notification triggered update when WiFi becomes available.", buf, 0xCu);
    }

    [(ICDCloudMusicLibraryJaliscoUpdateTaskHelper *)self->_updateTaskHelper scheduleBackgroundTaskToUpdateLibraryType:0];
  }

  if (v9)
  {
    v22 = self->_calloutQueue;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000AE328;
    v55[3] = &unk_1001DF5C8;
    v56 = v9;
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
  v3 = [(JaliscoRequestHandler *)self updateLibraryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AEF24;
  v6[3] = &unk_1001DEF50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(JaliscoRequestHandler *)self updateLibraryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF080;
  block[3] = &unk_1001DEF78;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(v5, block);

  if (a3)
  {
    *a3 = *(v10 + 24);
  }

  v6 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

- (id)jaliscoLibraryWithReason:(int64_t)a3
{
  if (a3 == 1001 && self->_jaliscoLibrary)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = ICCloudClientGetStringForRequestReason();
      *buf = 138543618;
      v21 = self;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing library for %{public}@", buf, 0x16u);
    }

    jaliscoLibrary = self->_jaliscoLibrary;
    self->_jaliscoLibrary = 0;

    v8 = [(JaliscoRequestHandler *)self updateLibraryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AF368;
    block[3] = &unk_1001DF578;
    block[4] = self;
    dispatch_sync(v8, block);
  }

  if ([(CloudLibrary *)self->_jaliscoLibrary failedToConnect])
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing library which failed to connect", buf, 0xCu);
    }

    v10 = self->_jaliscoLibrary;
    self->_jaliscoLibrary = 0;

    v11 = [(JaliscoRequestHandler *)self updateLibraryQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AF3B0;
    v18[3] = &unk_1001DF578;
    v18[4] = self;
    dispatch_sync(v11, v18);
  }

  v12 = self->_jaliscoLibrary;
  if (!v12)
  {
    v13 = [(ICConnectionConfiguration *)self->_configuration copy];
    v14 = v13;
    if (a3)
    {
      [v13 setRequestReason:a3];
    }

    v15 = [[JaliscoLibrary alloc] initWithConfiguration:v14];
    v16 = self->_jaliscoLibrary;
    self->_jaliscoLibrary = v15;

    v12 = self->_jaliscoLibrary;
  }

  return v12;
}

- (void)cancelPendingChangesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    jaliscoLibrary = self->_jaliscoLibrary;
    v7 = [(CloudLibrary *)jaliscoLibrary pendingChangesCoordinator];
    v11 = 138543874;
    v12 = self;
    v13 = 2112;
    v14 = jaliscoLibrary;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelPendingChangesWithCompletion: - Library=%@ - PendingChangesCoordinator:%@", &v11, 0x20u);
  }

  v8 = self->_jaliscoLibrary;
  if (v8 && ([(CloudLibrary *)v8 pendingChangesCoordinator], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(CloudLibrary *)self->_jaliscoLibrary pendingChangesCoordinator];
    [v10 removeAllPendingChangesWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v16 = self;
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

- (JaliscoRequestHandler)initWithConfiguration:(id)a3 updateTaskHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = JaliscoRequestHandler;
  v9 = [(JaliscoRequestHandler *)&v22 init];
  if (v9)
  {
    v10 = [[JaliscoArtworkImporter alloc] initWithConfiguration:v7];
    artworkImporter = v9->_artworkImporter;
    v9->_artworkImporter = v10;

    v12 = dispatch_queue_create("com.apple.itunescloudd.JaliscoRequestHandler.updateLibraryQueue", 0);
    updateLibraryQueue = v9->_updateLibraryQueue;
    v9->_updateLibraryQueue = v12;

    v14 = dispatch_queue_create("com.apple.itunescloudd.JaliscoRequestHandler.calloutQueue", 0);
    calloutQueue = v9->_calloutQueue;
    v9->_calloutQueue = v14;

    objc_storeStrong(&v9->_updateTaskHelper, a4);
    v16 = objc_alloc_init(NSMutableArray);
    updateLibraryCompletionHandlers = v9->_updateLibraryCompletionHandlers;
    v9->_updateLibraryCompletionHandlers = v16;

    objc_storeStrong(&v9->_configuration, a3);
    v18 = [v7 userIdentity];
    v19 = [ML3MusicLibrary musicLibraryForUserAccount:v18];
    musicLibrary = v9->_musicLibrary;
    v9->_musicLibrary = v19;
  }

  return v9;
}

@end