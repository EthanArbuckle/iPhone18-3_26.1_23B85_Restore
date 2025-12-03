@interface VUIStoreMediaItem_iOS
+ (void)initialize;
- (BOOL)_url:(id)_url hasSameAdamIDAsURL:(id)l;
- (BOOL)hasTrait:(id)trait;
- (BOOL)isEqualToMediaItem:(id)item;
- (BOOL)shouldRetryPlaybackForError:(id)error;
- (VUIStoreMediaItem_iOS)initWithAdamID:(int64_t)d videoManagedObject:(id)object isForStartingDownload:(BOOL)download;
- (VUIStoreMediaItem_iOS)initWithMPMediaItem:(id)item videoManagedObject:(id)object isForStartingDownload:(BOOL)download;
- (id)_downloadForThisMediaItemReturningDownloadManager:(id *)manager;
- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)l;
- (id)_iTunesStoreContentInfo;
- (id)_iTunesStoreContentPurchasedMediaKind;
- (id)_offlineKeyDataForKeyRequest:(id)request;
- (id)_rentalEndDate;
- (id)_rentalExpirationDate;
- (id)_rentalPlaybackEndDate;
- (id)_videoPlaybackTypeDescription;
- (id)mediaItemMetadataForProperty:(id)property;
- (id)replacementErrorForPlaybackError:(id)error;
- (void)_checkInRental;
- (void)_checkoutRentalWithCheckoutType:(unint64_t)type startPlaybackClock:(BOOL)clock completion:(id)completion;
- (void)_configureForDownloadingWithCompletion:(id)completion;
- (void)_configureForLocalPlaybackWithURL:(id)l completion:(id)completion;
- (void)_configureForPlaybackFromExistingDownload:(id)download downloadManager:(id)manager completion:(id)completion;
- (void)_configureForStreamingPlaybackWithCompletion:(id)completion;
- (void)_deleteDownloadKeyCookieForURL:(id)l;
- (void)_externalPlaybackTypeDidChange:(id)change;
- (void)_performRedownloadWithType:(int64_t)type completion:(id)completion;
- (void)_persistOfflineKeyData:(id)data forKeyRequest:(id)request;
- (void)_setDownloadKeyCookieWithURL:(id)l downloadKey:(id)key;
- (void)_updateRentalPlaybackStartDate:(id)date;
- (void)cleanUpMediaItem;
- (void)dealloc;
- (void)loadFairPlayStreamingKeyRequests:(id)requests completion:(id)completion;
- (void)mediaItemAllInitialLoadingComplete:(id)complete totalTime:(double)time player:(id)player;
- (void)prepareForLoadingWithCompletion:(id)completion;
- (void)prepareForPlaybackInitiationWithCompletion:(id)completion;
- (void)processFinishedDownloadWithCompletion:(id)completion;
- (void)resetReportingEventCollection;
- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property;
- (void)storeFPSKeyLoader:(id)loader didLoadOfflineKeyData:(id)data forKeyRequest:(id)request;
- (void)storeFPSKeyLoader:(id)loader didReceiveUpdatedRentalExpirationDate:(id)date playbackStartDate:(id)startDate;
- (void)storeFPSKeyLoader:(id)loader willFailWithError:(id)error forKeyRequest:(id)request;
- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending;
@end

@implementation VUIStoreMediaItem_iOS

+ (void)initialize
{
  if (initialize_onceToken_7 != -1)
  {
    +[VUIStoreMediaItem_iOS initialize];
  }
}

- (VUIStoreMediaItem_iOS)initWithAdamID:(int64_t)d videoManagedObject:(id)object isForStartingDownload:(BOOL)download
{
  downloadCopy = download;
  v8 = MEMORY[0x1E69705D0];
  v9 = MEMORY[0x1E696AD98];
  objectCopy = object;
  v11 = [v9 numberWithLongLong:d];
  v12 = [v8 vui_mediaItemForStoreIdentifier:v11];

  v13 = [(VUIStoreMediaItem_iOS *)self initWithMPMediaItem:v12 videoManagedObject:objectCopy isForStartingDownload:downloadCopy];
  return v13;
}

- (VUIStoreMediaItem_iOS)initWithMPMediaItem:(id)item videoManagedObject:(id)object isForStartingDownload:(BOOL)download
{
  objectCopy = object;
  v36.receiver = self;
  v36.super_class = VUIStoreMediaItem_iOS;
  v10 = [(VUILibraryMediaItem_iOS *)&v36 initWithMPMediaItem:item];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69D5A30]);
    [v11 addStartEventWithName:*MEMORY[0x1E69D6040]];
    [v11 addStartEventWithName:*MEMORY[0x1E69D6058]];
    [(VUIStoreMediaItem_iOS *)v10 setMediaItemMetadata:v11 forProperty:*MEMORY[0x1E69D5CA8]];
    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    ams_DSID = [activeAccount ams_DSID];
    [(VUIStoreMediaItem_iOS *)v10 setMediaItemMetadata:ams_DSID forProperty:*MEMORY[0x1E69D5B30]];

    v10->_isForStartingDownload = download;
    if (objectCopy)
    {
      objc_storeStrong(&v10->_videoManagedObject, object);
      fpsCertificateURL = [objectCopy fpsCertificateURL];
      fpsCertificateURL = v10->_fpsCertificateURL;
      v10->_fpsCertificateURL = fpsCertificateURL;

      fpsKeyServerURL = [objectCopy fpsKeyServerURL];
      fpsKeyServerURL = v10->_fpsKeyServerURL;
      v10->_fpsKeyServerURL = fpsKeyServerURL;

      additionalFPSRequestParams = [objectCopy additionalFPSRequestParams];
      fpsAdditionalServerParams = v10->_fpsAdditionalServerParams;
      v10->_fpsAdditionalServerParams = additionalFPSRequestParams;

      bookmarkTime = [objectCopy bookmarkTime];
      bookmarkTimeStamp = [objectCopy bookmarkTimeStamp];
      mainContentRelativeBookmarkTime = [objectCopy mainContentRelativeBookmarkTime];
      mainContentRelativeBookmarkTimeStamp = [objectCopy mainContentRelativeBookmarkTimeStamp];
      if (bookmarkTime)
      {
        v24 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:bookmarkTime timestamp:bookmarkTimeStamp type:0 source:@"Sideband Library"];
        startTimeCollection = [(VUIBaseMediaItem *)v10 startTimeCollection];
        [startTimeCollection addStartTimeInfo:v24];
      }

      if (mainContentRelativeBookmarkTime)
      {
        v26 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:mainContentRelativeBookmarkTime timestamp:mainContentRelativeBookmarkTimeStamp type:1 source:@"Sideband Library"];
        startTimeCollection2 = [(VUIBaseMediaItem *)v10 startTimeCollection];
        [startTimeCollection2 addStartTimeInfo:v26];
      }

      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __86__VUIStoreMediaItem_iOS_initWithMPMediaItem_videoManagedObject_isForStartingDownload___block_invoke;
      v33 = &unk_1E872D990;
      v34 = v10;
      v35 = objectCopy;
      [(TVPBaseMediaItem *)v34 performMediaItemMetadataTransactionWithBlock:&v30];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__externalPlaybackTypeDidChange_ name:*MEMORY[0x1E69D60C8] object:0];
  }

  return v10;
}

- (void)dealloc
{
  v3 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIStoreMediaItem_iOS deallocated", buf, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = VUIStoreMediaItem_iOS;
  [(VUIStoreMediaItem_iOS *)&v5 dealloc];
}

- (void)resetReportingEventCollection
{
  v3 = objc_alloc_init(MEMORY[0x1E69D5A30]);
  [v3 addStartEventWithName:*MEMORY[0x1E69D6040]];
  [v3 addStartEventWithName:*MEMORY[0x1E69D6058]];
  [(VUIStoreMediaItem_iOS *)self setMediaItemMetadata:v3 forProperty:*MEMORY[0x1E69D5CA8]];
}

- (BOOL)isEqualToMediaItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = VUIStoreMediaItem_iOS;
  if ([(VUILibraryMediaItem_iOS *)&v8 isEqualToMediaItem:itemCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isForStartingDownload = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
    v6 = isForStartingDownload ^ [itemCopy isForStartingDownload] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)hasTrait:(id)trait
{
  v28 = *MEMORY[0x1E69E9840];
  traitCopy = trait;
  if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E70]])
  {
    goto LABEL_2;
  }

  if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E40]])
  {
    goto LABEL_7;
  }

  if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E80]])
  {
LABEL_2:
    v5 = [(VUIStoreMediaItem_iOS *)self playbackType]== 2;
    goto LABEL_3;
  }

  if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E78]])
  {
    goto LABEL_7;
  }

  if (![traitCopy isEqualToString:*MEMORY[0x1E69D5EA0]])
  {
    v8 = *MEMORY[0x1E69D5E60];
    if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E60]])
    {
      ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];

      if (ml3Track)
      {
        ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v11 = [ml3Track2 valueForProperty:*MEMORY[0x1E69B30E8]];
        bOOLValue = [v11 BOOLValue];
LABEL_16:

LABEL_31:
        goto LABEL_8;
      }

      videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (videoManagedObject)
      {
        ml3Track2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        rentalID = [ml3Track2 rentalID];
        bOOLValue = rentalID != 0;

        goto LABEL_31;
      }

      _localPlaybackFilePathURL = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
LABEL_37:
      bOOLValue = _localPlaybackFilePathURL != 0;

      goto LABEL_8;
    }

    if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E20]])
    {
      goto LABEL_12;
    }

    if (([traitCopy isEqualToString:*MEMORY[0x1E69D5E98]] & 1) == 0)
    {
      if ([traitCopy isEqualToString:VUIMediaItemTraitStopWhenPausedForTooLong])
      {
        if (![(VUIStoreMediaItem_iOS *)self hasTrait:v8]|| [(VUIStoreMediaItem_iOS *)self playbackType]!= 2 && [(VUIStoreMediaItem_iOS *)self playbackType]!= 1)
        {
          bOOLValue = 0;
          goto LABEL_8;
        }

        ml3Track2 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE0]];
        if (!ml3Track2)
        {
          bOOLValue = 0;
          goto LABEL_31;
        }

        v12 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = ml3Track2;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Evaluating for VUIMediaItemTraitStopWhenPausedForTooLong.  Rental expiration is %@", buf, 0xCu);
        }

        date = [MEMORY[0x1E695DF00] date];
        v11 = [date dateByAddingTimeInterval:3600.0];

        v14 = [ml3Track2 laterDate:v11];

        v15 = sLogObject_14;
        v16 = os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT);
        bOOLValue = v14 == ml3Track2;
        if (bOOLValue)
        {
          if (!v16)
          {
            goto LABEL_16;
          }

          *buf = 0;
          v17 = "Rental is not expired and not expiring in the next hour.  Will stop after being paused for too long to allow other devices to play rental.";
        }

        else
        {
          if (!v16)
          {
            goto LABEL_16;
          }

          *buf = 0;
          v17 = "Rental is either expired or expiring in the next hour.  Will not stop after being paused for too long";
        }

        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
        goto LABEL_16;
      }

      if (![traitCopy isEqualToString:*MEMORY[0x1E69D5E58]])
      {
        v25.receiver = self;
        v25.super_class = VUIStoreMediaItem_iOS;
        bOOLValue = [(VUILibraryMediaItem_iOS *)&v25 hasTrait:traitCopy];
        goto LABEL_8;
      }

      videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      if (!videoManagedObject2 || (v22 = videoManagedObject2, -[VUIStoreMediaItem_iOS videoManagedObject](self, "videoManagedObject"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 downloadState], v23, v22, v24 != 2))
      {
        _localPlaybackFilePathURL = [(VUILibraryMediaItem_iOS *)self _localPlaybackFilePathURL];
        goto LABEL_37;
      }
    }

LABEL_7:
    bOOLValue = 1;
    goto LABEL_8;
  }

LABEL_12:
  v5 = [(VUIStoreMediaItem_iOS *)self playbackType]== 1;
LABEL_3:
  bOOLValue = v5;
LABEL_8:

  return bOOLValue;
}

- (id)mediaItemMetadataForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5BF8]])
  {
    videoManagedObject3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = +[VUIStoreAuxMediaItem mediaUserAgent];
    v7 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    stringValue = [v7 stringValue];

    if ([(VUISidebandMediaEntityImageLoadParams *)v6 length])
    {
      [videoManagedObject3 setObject:v6 forKey:@"User-Agent"];
    }

    if ([stringValue length])
    {
      [videoManagedObject3 setObject:stringValue forKey:@"X-Dsid"];
    }

    [videoManagedObject3 setObject:@"https://tv.apple.com" forKey:@"Referer"];
    if (![videoManagedObject3 count])
    {

      videoManagedObject3 = 0;
    }

    goto LABEL_9;
  }

  v9 = *MEMORY[0x1E69D5DA8];
  if (([propertyCopy isEqualToString:*MEMORY[0x1E69D5DA8]] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E69D5B98]))
  {
    mpMediaItem = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (mpMediaItem)
    {
      mpMediaItem2 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
      videoManagedObject2 = [mpMediaItem2 valueForProperty:*MEMORY[0x1E696FB60]];

      if ([(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 longLongValue])
      {
        stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 stringValue];
LABEL_17:
        videoManagedObject3 = stringValue2;
LABEL_143:

        goto LABEL_144;
      }

LABEL_142:
      videoManagedObject3 = 0;
      goto LABEL_143;
    }

    videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

    if (videoManagedObject)
    {
      videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 adamID];
      goto LABEL_17;
    }

    v121.receiver = self;
    v121.super_class = VUIStoreMediaItem_iOS;
    [(VUILibraryMediaItem_iOS *)&v121 mediaItemMetadataForProperty:v9];
    goto LABEL_25;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5A98]])
  {
    if ([(VUIStoreMediaItem_iOS *)self playbackType]== 1)
    {
      sinfsDict = [(VUIStoreMediaItem_iOS *)self sinfsDict];
      goto LABEL_42;
    }

    goto LABEL_165;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5BC8]])
  {
    sinfsDict = [(VUIStoreMediaItem_iOS *)self fileSize];
    goto LABEL_42;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B68]])
  {
    sinfsDict = [(VUIStoreMediaItem_iOS *)self downloadToken];
    goto LABEL_42;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B50]])
  {
    sinfsDict = [(VUIStoreMediaItem_iOS *)self downloadDestinationURL];
    goto LABEL_42;
  }

  v16 = *MEMORY[0x1E69D5CE8];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5CE8]])
  {
    v120.receiver = self;
    v120.super_class = VUIStoreMediaItem_iOS;
    sinfsDict = [(VUILibraryMediaItem_iOS *)&v120 mediaItemMetadataForProperty:v16];
    if (sinfsDict)
    {
      goto LABEL_42;
    }

    ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (!ml3Track)
    {
      videoManagedObject3 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (!videoManagedObject3)
      {
        goto LABEL_144;
      }

      videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 rentalID];
      goto LABEL_17;
    }

    ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v19 = [ml3Track2 valueForProperty:*MEMORY[0x1E69B30E8]];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      ml3Track3 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      videoManagedObject2 = ml3Track3;
      v22 = MEMORY[0x1E69B3310];
LABEL_46:
      stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)ml3Track3 valueForProperty:*v22];
      goto LABEL_17;
    }

LABEL_165:
    videoManagedObject3 = 0;
    goto LABEL_144;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5D40]])
  {
    v23 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    v6 = v23;
    if (v23 == *MEMORY[0x1E69D5EC8])
    {
      isForStartingDownload = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
      v27 = VUIStoreMediaItemRTCServiceIdentifierMovieRental_iOS_cloud;
      v28 = VUIStoreMediaItemRTCServiceIdentifierMovieRental_iOS_download;
    }

    else if (v23 == *MEMORY[0x1E69D5EB8])
    {
      isForStartingDownload = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
      v27 = VUIStoreMediaItemRTCServiceIdentifierMoviePurchase_iOS_cloud;
      v28 = VUIStoreMediaItemRTCServiceIdentifierMoviePurchase_iOS_download;
    }

    else
    {
      if (v23 != *MEMORY[0x1E69D5ED0])
      {
LABEL_39:
        videoManagedObject3 = 0;
LABEL_9:

        goto LABEL_144;
      }

      isForStartingDownload = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
      v27 = VUIStoreMediaItemRTCServiceIdentifierTVShowPurchase_iOS_cloud;
      v28 = VUIStoreMediaItemRTCServiceIdentifierTVShowPurchase_iOS_download;
    }

    if (isForStartingDownload)
    {
      v27 = v28;
    }

    v33 = *v27;
LABEL_59:
    videoManagedObject3 = v33;
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5E00]])
  {
    sinfsDict = [(VUIStoreMediaItem_iOS *)self _iTunesStoreContentInfo];
    goto LABEL_42;
  }

  v24 = *MEMORY[0x1E69D5AE0];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5AE0]])
  {
    ml3Track4 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (ml3Track4)
    {
      ml3Track3 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      videoManagedObject2 = ml3Track3;
      v22 = MEMORY[0x1E69B3348];
      goto LABEL_46;
    }

    videoManagedObject4 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

    if (videoManagedObject4)
    {
      videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 buyParams];
      goto LABEL_17;
    }

    v119.receiver = self;
    v119.super_class = VUIStoreMediaItem_iOS;
    [(VUILibraryMediaItem_iOS *)&v119 mediaItemMetadataForProperty:v24];
    sinfsDict = LABEL_25:;
    goto LABEL_42;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5BB0]])
  {
    ml3Track5 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v6 = [ml3Track5 valueForProperty:*MEMORY[0x1E69B32E8]];

    if (![(VUISidebandMediaEntityImageLoadParams *)v6 length])
    {
      goto LABEL_39;
    }

    ml3Track6 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v31 = [ml3Track6 valueForProperty:*MEMORY[0x1E69B30E8]];
    bOOLValue2 = [v31 BOOLValue];

    if (bOOLValue2)
    {
      goto LABEL_39;
    }

    v33 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
    goto LABEL_59;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5DA0]])
  {
    videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    if (!videoManagedObject2)
    {
      goto LABEL_142;
    }

    series = [MEMORY[0x1E69D5920] accountWithDSID:videoManagedObject2];
    ams_storefront = [series ams_storefront];
LABEL_63:
    videoManagedObject3 = ams_storefront;
    goto LABEL_64;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5CE0]])
  {
    sinfsDict = [(VUIStoreMediaItem_iOS *)self _rentalExpirationDate];
    goto LABEL_42;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5CF0]])
  {
    ml3Track7 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (!ml3Track7)
    {
      videoManagedObject3 = &unk_1F5E5ED30;
      goto LABEL_144;
    }

    ml3Track3 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    videoManagedObject2 = ml3Track3;
    v22 = MEMORY[0x1E69B3198];
    goto LABEL_46;
  }

  v38 = *MEMORY[0x1E69D5AD0];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5AD0]])
  {
    sinfsDict = *MEMORY[0x1E69E1688];
    goto LABEL_42;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5C68]])
  {
    playbackType = [(VUIStoreMediaItem_iOS *)self playbackType];
    if ((playbackType - 1) > 5)
    {
      v40 = 0;
    }

    else
    {
      v40 = qword_1E4297270[playbackType - 1];
    }

    sinfsDict = [MEMORY[0x1E696AD98] numberWithInteger:v40];
    goto LABEL_42;
  }

  v41 = *MEMORY[0x1E69D5CF8];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5CF8]])
  {
    ml3Track8 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (ml3Track8)
    {
      ml3Track9 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v44 = [ml3Track9 valueForProperty:*MEMORY[0x1E69B31A0]];
      [v44 doubleValue];
      v46 = v45;

      if (v46 != 0.0)
      {
        sinfsDict = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v46];
        goto LABEL_42;
      }

      goto LABEL_165;
    }

    videoManagedObject5 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

    if (videoManagedObject5)
    {
      videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 rentalPlaybackStartDate];
      goto LABEL_17;
    }

    v118[0] = self;
    v118[1] = VUIStoreMediaItem_iOS;
    v52 = v118;
    goto LABEL_102;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5A90]])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C70]];
    if ([v47 count])
    {
      [(VUISidebandMediaEntityImageLoadParams *)v6 addEntriesFromDictionary:v47];
      v48 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v38];
      if ([v48 length])
      {
        [(VUISidebandMediaEntityImageLoadParams *)v6 setObject:v48 forKey:*MEMORY[0x1E6987B28]];
      }
    }

    if ([(VUISidebandMediaEntityImageLoadParams *)v6 count])
    {
      videoManagedObject3 = [(VUISidebandMediaEntityImageLoadParams *)v6 copy];
    }

    else
    {
      videoManagedObject3 = 0;
    }

    goto LABEL_100;
  }

  v49 = *MEMORY[0x1E69D5D38];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5D38]])
  {
    mpMediaItem3 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (mpMediaItem3)
    {
      ml3Track3 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
      videoManagedObject2 = ml3Track3;
      v22 = MEMORY[0x1E696FB18];
      goto LABEL_46;
    }

    videoManagedObject6 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v117.receiver = self;
      v117.super_class = VUIStoreMediaItem_iOS;
      [(VUILibraryMediaItem_iOS *)&v117 mediaItemMetadataForProperty:v49];
      goto LABEL_25;
    }

    videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    series = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 series];
    ams_storefront = [series title];
    goto LABEL_63;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B60]])
  {
    videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 downloadTaskIdentifier];
    goto LABEL_17;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B58]])
  {
    videoManagedObject7 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    videoManagedObject2 = videoManagedObject7;
    if (!videoManagedObject7)
    {
      goto LABEL_142;
    }

    series = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject7 downloadQOSMetricsJSONData];
    if (![series length])
    {
      videoManagedObject3 = 0;
      goto LABEL_64;
    }

    v116 = 0;
    v54 = [MEMORY[0x1E696ACB0] JSONObjectWithData:series options:0 error:&v116];
    v55 = v116;
    if (v54)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        videoManagedObject3 = v54;
LABEL_136:

        goto LABEL_64;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VUIStoreMediaItem_iOS mediaItemMetadataForProperty:];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VUIStoreMediaItem_iOS mediaItemMetadataForProperty:];
    }

    videoManagedObject3 = 0;
    goto LABEL_136;
  }

  v58 = *MEMORY[0x1E69D5DC0];
  if (![propertyCopy isEqualToString:*MEMORY[0x1E69D5DC0]])
  {
    v63 = *MEMORY[0x1E69D5C78];
    if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5C78]])
    {
      v114.receiver = self;
      v114.super_class = VUIStoreMediaItem_iOS;
      videoManagedObject3 = [(VUILibraryMediaItem_iOS *)&v114 mediaItemMetadataForProperty:v63];
      if ([videoManagedObject3 length])
      {
        goto LABEL_144;
      }

      videoManagedObject8 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      objc_opt_class();
      v65 = objc_opt_isKindOfClass();

      if (v65)
      {
        v66 = MEMORY[0x1E69D5ED0];
      }

      else
      {
        videoManagedObject9 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        objc_opt_class();
        v83 = objc_opt_isKindOfClass();

        if ((v83 & 1) == 0)
        {
          goto LABEL_144;
        }

        videoManagedObject10 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        rentalID = [videoManagedObject10 rentalID];

        v66 = MEMORY[0x1E69D5EC8];
        if (!rentalID)
        {
          v66 = MEMORY[0x1E69D5EB8];
        }
      }

      goto LABEL_150;
    }

    v67 = *MEMORY[0x1E69D5AB0];
    if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5AB0]])
    {
      v113.receiver = self;
      v113.super_class = VUIStoreMediaItem_iOS;
      sinfsDict = [(VUILibraryMediaItem_iOS *)&v113 mediaItemMetadataForProperty:v67];
      if (sinfsDict)
      {
        goto LABEL_42;
      }

      videoManagedObject3 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (!videoManagedObject3)
      {
        goto LABEL_144;
      }

      v68 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject11 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v70 = v68;
      v71 = videoManagedObject11;
      v72 = 0;
    }

    else
    {
      v73 = *MEMORY[0x1E69D5AA8];
      if (![propertyCopy isEqualToString:*MEMORY[0x1E69D5AA8]])
      {
        if ([propertyCopy isEqualToString:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"])
        {
          v111.receiver = self;
          v111.super_class = VUIStoreMediaItem_iOS;
          sinfsDict = [(VUILibraryMediaItem_iOS *)&v111 mediaItemMetadataForProperty:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"];
          if (sinfsDict)
          {
            goto LABEL_42;
          }

          videoManagedObject3 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

          if (!videoManagedObject3)
          {
            goto LABEL_144;
          }

          v77 = [VUISidebandMediaEntityImageLoadParams alloc];
          videoManagedObject12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          videoManagedObject2 = [(VUISidebandMediaEntityImageLoadParams *)v77 initWithVideoManagedObject:videoManagedObject12 imageType:1];

          if (!videoManagedObject2)
          {
            goto LABEL_142;
          }

          v79 = objc_alloc(MEMORY[0x1E69DF730]);
          series = +[VUIMediaLibraryManager defaultManager];
          sidebandMediaLibrary = [series sidebandMediaLibrary];
          videoManagedObject3 = [v79 initWithObject:videoManagedObject2 imageLoader:sidebandMediaLibrary groupType:0];

LABEL_64:
          goto LABEL_143;
        }

        v41 = @"VUIMediaItemMetadataPostPlayVUIImageProxy";
        if ([propertyCopy isEqualToString:@"VUIMediaItemMetadataPostPlayVUIImageProxy"])
        {
          videoManagedObject13 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

          if (!videoManagedObject13 || (v88 = [VUISidebandMediaEntityImageLoadParams alloc], -[VUIStoreMediaItem_iOS videoManagedObject](self, "videoManagedObject"), v89 = objc_claimAutoreleasedReturnValue(), v90 = -[VUISidebandMediaEntityImageLoadParams initWithVideoManagedObject:imageType:](v88, "initWithVideoManagedObject:imageType:", v89, 2), v89, !v90) || (v91 = objc_alloc(MEMORY[0x1E69DF730]), +[VUIMediaLibraryManager defaultManager](VUIMediaLibraryManager, "defaultManager"), v92 = objc_claimAutoreleasedReturnValue(), [v92 sidebandMediaLibrary], v93 = objc_claimAutoreleasedReturnValue(), videoManagedObject3 = objc_msgSend(v91, "initWithObject:imageLoader:groupType:", v90, v93, 0), v93, v92, v90, !videoManagedObject3))
          {
            v110[0] = self;
            v110[1] = VUIStoreMediaItem_iOS;
            v52 = v110;
LABEL_102:
            [(objc_super *)v52 mediaItemMetadataForProperty:v41];
            goto LABEL_25;
          }

          goto LABEL_144;
        }

        v94 = *MEMORY[0x1E69D5B80];
        if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B80]])
        {
          v109.receiver = self;
          v109.super_class = VUIStoreMediaItem_iOS;
          sinfsDict = [(VUILibraryMediaItem_iOS *)&v109 mediaItemMetadataForProperty:v94];
          if (sinfsDict)
          {
            goto LABEL_42;
          }

          videoManagedObject14 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          objc_opt_class();
          v96 = objc_opt_isKindOfClass();

          if (v96)
          {
            videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
            stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 episodeNumberInSeries];
            goto LABEL_17;
          }

          goto LABEL_165;
        }

        v97 = *MEMORY[0x1E69D5D30];
        if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5D30]])
        {
          v108.receiver = self;
          v108.super_class = VUIStoreMediaItem_iOS;
          sinfsDict = [(VUILibraryMediaItem_iOS *)&v108 mediaItemMetadataForProperty:v97];
          if (sinfsDict)
          {
            goto LABEL_42;
          }

          videoManagedObject15 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          objc_opt_class();
          v99 = objc_opt_isKindOfClass();

          if ((v99 & 1) == 0)
          {
            goto LABEL_165;
          }

          videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          series = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 season];
          ams_storefront = [series seasonNumber];
          goto LABEL_63;
        }

        v100 = *MEMORY[0x1E69D5B20];
        if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B20]])
        {
          v107.receiver = self;
          v107.super_class = VUIStoreMediaItem_iOS;
          sinfsDict = [(VUILibraryMediaItem_iOS *)&v107 mediaItemMetadataForProperty:v100];
          if (!sinfsDict)
          {
            videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
            stringValue2 = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 contentRatingRank];
            goto LABEL_17;
          }

LABEL_42:
          videoManagedObject3 = sinfsDict;
          goto LABEL_144;
        }

        v101 = *MEMORY[0x1E69D5B08];
        if (![propertyCopy isEqualToString:*MEMORY[0x1E69D5B08]])
        {
          v105.receiver = self;
          v105.super_class = VUIStoreMediaItem_iOS;
          [(VUILibraryMediaItem_iOS *)&v105 mediaItemMetadataForProperty:propertyCopy];
          goto LABEL_25;
        }

        v106.receiver = self;
        v106.super_class = VUIStoreMediaItem_iOS;
        videoManagedObject3 = [(VUILibraryMediaItem_iOS *)&v106 mediaItemMetadataForProperty:v101];
        if ([videoManagedObject3 length])
        {
          goto LABEL_144;
        }

        videoManagedObject16 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

        if (!videoManagedObject16)
        {
          goto LABEL_144;
        }

        videoManagedObject17 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        objc_opt_class();
        v104 = objc_opt_isKindOfClass();

        v66 = MEMORY[0x1E69D5B18];
        if ((v104 & 1) == 0)
        {
          v66 = MEMORY[0x1E69D5B10];
        }

LABEL_150:
        v62 = *v66;
        goto LABEL_151;
      }

      v112.receiver = self;
      v112.super_class = VUIStoreMediaItem_iOS;
      sinfsDict = [(VUILibraryMediaItem_iOS *)&v112 mediaItemMetadataForProperty:v73];
      if (sinfsDict)
      {
        goto LABEL_42;
      }

      videoManagedObject3 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (!videoManagedObject3)
      {
        goto LABEL_144;
      }

      v74 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject11 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v70 = v74;
      v71 = videoManagedObject11;
      v72 = 1;
    }

    v6 = [(VUISidebandMediaEntityImageLoadParams *)v70 initWithVideoManagedObject:v71 imageType:v72];

    v75 = objc_alloc(MEMORY[0x1E69D5958]);
    v47 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary2 = [v47 sidebandMediaLibrary];
    videoManagedObject3 = [v75 initWithObject:v6 imageLoader:sidebandMediaLibrary2 groupType:0];

LABEL_100:
    goto LABEL_9;
  }

  ml3Track10 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  videoManagedObject3 = [ml3Track10 valueForProperty:*MEMORY[0x1E69B3380]];

  if (![videoManagedObject3 length])
  {
    videoManagedObject18 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    title = [videoManagedObject18 title];

    videoManagedObject3 = title;
  }

  if (![videoManagedObject3 length])
  {
    v115.receiver = self;
    v115.super_class = VUIStoreMediaItem_iOS;
    v62 = [(VUILibraryMediaItem_iOS *)&v115 mediaItemMetadataForProperty:v58];
LABEL_151:
    v86 = v62;

    videoManagedObject3 = v86;
  }

LABEL_144:

  return videoManagedObject3;
}

- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property
{
  metadataCopy = metadata;
  propertyCopy = property;
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B58]])
  {
    videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    if (videoManagedObject)
    {
      v9 = metadataCopy;
      if ([v9 count] && objc_msgSend(MEMORY[0x1E696ACB0], "isValidJSONObject:", v9))
      {
        v15 = 0;
        v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:&v15];
        v11 = v15;
        if ([v10 length])
        {
          [videoManagedObject setDownloadQOSMetricsJSONData:v10];
          v12 = +[VUIMediaLibraryManager defaultManager];
          sidebandMediaLibrary = [v12 sidebandMediaLibrary];
          [sidebandMediaLibrary saveChangesToManagedObjects];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VUIStoreMediaItem_iOS setMediaItemMetadata:forProperty:];
        }
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VUIStoreMediaItem_iOS;
    [(TVPBaseMediaItem *)&v14 setMediaItemMetadata:metadataCopy forProperty:propertyCopy];
  }
}

- (void)prepareForLoadingWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VUIStoreMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke;
  v7[3] = &unk_1E87333E8;
  v5 = completionCopy;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  v6.receiver = self;
  v6.super_class = VUIStoreMediaItem_iOS;
  [(VUILibraryMediaItem_iOS *)&v6 prepareForLoadingWithCompletion:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)prepareForPlaybackInitiationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__VUIStoreMediaItem_iOS_prepareForPlaybackInitiationWithCompletion___block_invoke;
    aBlock[3] = &unk_1E87333C0;
    objc_copyWeak(&v11, &location);
    v10 = completionCopy;
    v5 = _Block_copy(aBlock);
    if ([(VUIStoreMediaItem_iOS *)self playbackType]== 1)
    {
      [(VUIStoreMediaItem_iOS *)self setNeedsRentalCheckin:1];
      v6 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [v6 addStartEventWithName:*MEMORY[0x1E69D6038]];
      v7 = 2;
    }

    else
    {
      if (![(VUIStoreMediaItem_iOS *)self needsRentalCheckoutPriorToPlayback]&& [(VUIStoreMediaItem_iOS *)self playbackType]!= 3 && [(VUIStoreMediaItem_iOS *)self playbackType]!= 4)
      {
        v8 = 1;
LABEL_11:

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
        if (!completionCopy)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      [(VUIStoreMediaItem_iOS *)self setNeedsRentalCheckoutPriorToPlayback:0];
      [(VUIStoreMediaItem_iOS *)self setNeedsRentalCheckin:0];
      v6 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [v6 addStartEventWithName:*MEMORY[0x1E69D6038]];
      v7 = 1;
    }

    [(VUIStoreMediaItem_iOS *)self _checkoutRentalWithCheckoutType:v7 startPlaybackClock:0 completion:v5];
    v8 = 0;
    goto LABEL_11;
  }

  v8 = 1;
  if (!completionCopy)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_14:
}

- (BOOL)shouldRetryPlaybackForError:(id)error
{
  errorCopy = error;
  if (![(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]]|| [(VUIStoreMediaItem_iOS *)self playbackType]!= 5 && [(VUIStoreMediaItem_iOS *)self playbackType]!= 6)
  {
    goto LABEL_10;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:@"TVPlaybackErrorDomain"])
  {

    goto LABEL_10;
  }

  code = [errorCopy code];

  if (code != 811)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  _rentalExpirationDate = [(VUIStoreMediaItem_iOS *)self _rentalExpirationDate];
  if (!_rentalExpirationDate || ([MEMORY[0x1E695DF00] date], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_rentalExpirationDate, "laterDate:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == _rentalExpirationDate))
  {
    v12 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Downloaded rental is not authorized for playback even though it hasn't expired.  Will retry playback and perform rental checkout", v13, 2u);
    }

    v10 = 1;
    [(VUIStoreMediaItem_iOS *)self setNeedsRentalCheckoutPriorToPlayback:1];
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  return v10;
}

- (id)replacementErrorForPlaybackError:(id)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [(__CFString *)errorCopy domain];
  if (![domain isEqualToString:@"TVPlaybackErrorDomain"])
  {

    goto LABEL_7;
  }

  code = [(__CFString *)errorCopy code];

  if (code != 827)
  {
LABEL_7:
    fpsKeyError = [(VUIStoreMediaItem_iOS *)self fpsKeyError];
    if (!fpsKeyError)
    {
      v7 = errorCopy;
      if (!TVPErrorIsSKDError())
      {
        goto LABEL_26;
      }

      fpsKeyError = errorCopy;
      if (!fpsKeyError)
      {
        v7 = 0;
        goto LABEL_26;
      }
    }

    v10 = fpsKeyError;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69D5E18]];
    [v11 setObject:v10 forKey:*MEMORY[0x1E696AA08]];
    if ([v10 code] == -345014)
    {
      v13 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
      if (![(__CFString *)v13 length])
      {

        v13 = &stru_1F5DB25C0;
      }

      v14 = MEMORY[0x1E696AEC0];
      v15 = +[VUILocalizationManager sharedInstance];
      v16 = [v15 localizedStringForKey:@"TOO_MANY_STREAMS_FORMAT_PURCHASE"];
      v17 = [v14 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v13];

      [v11 setObject:v17 forKey:*MEMORY[0x1E696A598]];
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = 810;
    }

    else
    {
      if ([v10 code] != -345016)
      {
        if ([v10 code] == -345015 || objc_msgSend(v10, "code") == -345017)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = 811;
        }

        else
        {
          code2 = [v10 code];
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          if (code2 == -345028)
          {
            v24 = 827;
          }

          else
          {
            v24 = 820;
          }
        }

        v7 = [v23 initWithDomain:@"TVPlaybackErrorDomain" code:v24 userInfo:v11];
        v13 = errorCopy;
        goto LABEL_24;
      }

      v13 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
      if (![(__CFString *)v13 length])
      {

        v13 = &stru_1F5DB25C0;
      }

      v20 = MEMORY[0x1E696AEC0];
      v21 = +[VUILocalizationManager sharedInstance];
      v22 = [v21 localizedStringForKey:@"TOO_MANY_STREAMS_FORMAT"];
      v17 = [v20 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:0, v13];

      [v11 setObject:v17 forKey:*MEMORY[0x1E696A598]];
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = 812;
    }

    v7 = [v18 initWithDomain:@"TVPlaybackErrorDomain" code:v19 userInfo:v11];

LABEL_24:
    goto LABEL_25;
  }

  v7 = errorCopy;
  if (![(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    goto LABEL_26;
  }

  userInfo = [(__CFString *)errorCopy userInfo];
  v9 = *MEMORY[0x1E696AA08];
  v10 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  if (v10)
  {
    v31 = v9;
    v32[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  }

  else
  {
    v11 = 0;
  }

  if ([(VUIStoreMediaItem_iOS *)self playbackType]== 1)
  {
    v26 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "AirPlay of streaming CRABS rental failed because device does not support playback.  Video must be downloaded in order to AirPlay", buf, 2u);
    }

    v27 = 831;
LABEL_38:
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:v27 userInfo:v11];

    goto LABEL_25;
  }

  v7 = errorCopy;
  if ([(VUIStoreMediaItem_iOS *)self playbackType]== 3)
  {
    v28 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "AirPlay of downloading CRABS rental failed because device does not support playback.  Video must be fully downloaded in order to AirPlay", buf, 2u);
    }

    v27 = 832;
    goto LABEL_38;
  }

LABEL_25:

LABEL_26:

  return v7;
}

- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending
{
  endingCopy = ending;
  videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

  if (videoManagedObject)
  {
    date = [MEMORY[0x1E695DF00] date];
    v13 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
    v14 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB8]];
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      [v13 doubleValue];
      v19 = fmax(time - v18, 0.0);
      [v15 doubleValue];
      if (v19 >= v20)
      {
        [v15 doubleValue];
        v19 = v21;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    }

    videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [videoManagedObject2 setBookmarkTime:v23];

    videoManagedObject3 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    [videoManagedObject3 setBookmarkTimeStamp:date];

    videoManagedObject4 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    [videoManagedObject4 setMainContentRelativeBookmarkTime:v17];

    videoManagedObject5 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    [videoManagedObject5 setMainContentRelativeBookmarkTimeStamp:date];

    v27 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v27 sidebandMediaLibrary];
    [sidebandMediaLibrary saveChangesToManagedObjects];
  }

  v29.receiver = self;
  v29.super_class = VUIStoreMediaItem_iOS;
  [(VUILibraryMediaItem_iOS *)&v29 updateBookmarkWithSuggestedTime:endingCopy forElapsedTime:time duration:elapsedTime playbackOfMediaItemIsEnding:duration];
}

- (void)processFinishedDownloadWithCompletion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "processFinishedDownloadWithCompletion", buf, 2u);
  }

  videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
  localPlaybackURL = [videoManagedObject localPlaybackURL];

  v47 = 0;
  pathExtension = [localPlaybackURL pathExtension];
  if (![pathExtension isEqualToString:@"movpkg"])
  {
    goto LABEL_19;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [localPlaybackURL path];
  if (![defaultManager fileExistsAtPath:path isDirectory:&v47])
  {
    goto LABEL_17;
  }

  v11 = v47;

  if ((v11 & 1) == 0)
  {
    v12 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = localPlaybackURL;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "After downloading, CRABS download has incorrect file extension of .movpkg: %@", buf, 0xCu);
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [standardUserDefaults BOOLForKey:@"DisableCRABSMovpkgWorkound"];

    if ((v14 & 1) == 0)
    {
      videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      pathExtension = [videoManagedObject2 playbackURL];

      defaultManager = [pathExtension pathExtension];
      if (![defaultManager length])
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      uRLByDeletingPathExtension = [localPlaybackURL URLByDeletingPathExtension];
      path = [uRLByDeletingPathExtension URLByAppendingPathExtension:defaultManager];

      v17 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = path;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Correcting CRABS download file URL to %@", buf, 0xCu);
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v46 = 0;
      v19 = [defaultManager2 moveItemAtURL:localPlaybackURL toURL:path error:&v46];
      v20 = v46;

      if (v19)
      {
        videoManagedObject3 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        [videoManagedObject3 setLocalPlaybackURL:path];

        v22 = +[VUIMediaLibraryManager defaultManager];
        sidebandMediaLibrary = [v22 sidebandMediaLibrary];
        [sidebandMediaLibrary saveChangesToManagedObjects];

        v24 = path;
        localPlaybackURL = v24;
      }

      else if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
      {
        [VUIStoreMediaItem_iOS processFinishedDownloadWithCompletion:];
      }

LABEL_17:
      goto LABEL_18;
    }
  }

LABEL_20:
  videoManagedObject4 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
  localPlaybackURL2 = [videoManagedObject4 localPlaybackURL];
  pathExtension2 = [localPlaybackURL2 pathExtension];
  v28 = [pathExtension2 isEqualToString:@"movpkg"];

  if ((v28 & 1) == 0)
  {
    videoManagedObject5 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    redownloadProductResponseDictionary = [videoManagedObject5 redownloadProductResponseDictionary];

    v31 = [redownloadProductResponseDictionary objectForKey:@"sinfs"];
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = v32;
    if (v31)
    {
      [v32 setObject:v31 forKey:*MEMORY[0x1E6993BC0]];
    }

    v34 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "Processing sinfs", buf, 2u);
    }

    fileProcessor = [MEMORY[0x1E6993BC8] fileProcessor];
    path2 = [localPlaybackURL path];
    v37 = [fileProcessor processPurchasedItem:path2 withAttributes:v33];

    v38 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "Done processing sinfs", buf, 2u);
    }

    if (v37)
    {
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
      {
        [VUIStoreMediaItem_iOS processFinishedDownloadWithCompletion:];
        if (completionCopy)
        {
          goto LABEL_30;
        }
      }

      else if (completionCopy)
      {
LABEL_30:
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = VUIStoreMediaItemErrorDomain;
        v48 = *MEMORY[0x1E696AA08];
        v49 = v37;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v42 = [v39 initWithDomain:v40 code:-123009 userInfo:v41];

        completionCopy[2](completionCopy, v42);
        goto LABEL_39;
      }
    }
  }

  if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    v43 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v43, OS_LOG_TYPE_DEFAULT, "Checking out rental since download is complete", buf, 2u);
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __63__VUIStoreMediaItem_iOS_processFinishedDownloadWithCompletion___block_invoke;
    v44[3] = &unk_1E872E470;
    v45 = completionCopy;
    [(VUIStoreMediaItem_iOS *)self _checkoutRentalWithCheckoutType:1 startPlaybackClock:0 completion:v44];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_39:
}

- (void)cleanUpMediaItem
{
  [(VUIStoreMediaItem_iOS *)self setLoadingContext:[(VUIStoreMediaItem_iOS *)self loadingContext]+ 1];
  if ([(VUIStoreMediaItem_iOS *)self needsRentalCheckin])
  {
    [(VUIStoreMediaItem_iOS *)self setNeedsRentalCheckin:0];
    [(VUIStoreMediaItem_iOS *)self _checkInRental];
  }

  playbackURL = [(VUIStoreMediaItem_iOS *)self playbackURL];
  [(VUIStoreMediaItem_iOS *)self _deleteDownloadKeyCookieForURL:playbackURL];

  [(VUIStoreMediaItem_iOS *)self setPlaybackType:0];
  [(VUIStoreMediaItem_iOS *)self setPlaybackURL:0];
  [(VUIStoreMediaItem_iOS *)self setSinfsDict:0];
  [(VUIStoreMediaItem_iOS *)self setFileSize:0];
  [(VUIStoreMediaItem_iOS *)self setDownloadDestinationURL:0];
  [(VUIStoreMediaItem_iOS *)self setDownloadToken:0];
  [(VUIStoreMediaItem_iOS *)self setDownloadMonitor:0];
  [(VUIStoreMediaItem_iOS *)self setParentReportingToken:0];
  storeFPSKeyLoader = [(VUIStoreMediaItem_iOS *)self storeFPSKeyLoader];
  [storeFPSKeyLoader sendStreamingStopRequestIfNecessary];

  [(VUIStoreMediaItem_iOS *)self setStoreFPSKeyLoader:0];
  [(VUIStoreMediaItem_iOS *)self setMediaItemMetadata:0 forProperty:*MEMORY[0x1E69D5CA8]];
  v5.receiver = self;
  v5.super_class = VUIStoreMediaItem_iOS;
  [(VUILibraryMediaItem_iOS *)&v5 cleanUpMediaItem];
}

- (void)mediaItemAllInitialLoadingComplete:(id)complete totalTime:(double)time player:(id)player
{
  completeCopy = complete;
  playerCopy = player;
  if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke;
    v14 = &unk_1E87306E0;
    objc_copyWeak(&v15, &location);
    v9 = _Block_copy(&v11);
    if ([(VUIStoreMediaItem_iOS *)self playbackType:v11]== 1)
    {
      v10 = 2;
    }

    else
    {
      if ([(VUIStoreMediaItem_iOS *)self playbackType]!= 3 && [(VUIStoreMediaItem_iOS *)self playbackType]!= 4)
      {
        if ([(VUIStoreMediaItem_iOS *)self playbackType]== 5 || [(VUIStoreMediaItem_iOS *)self playbackType]== 6)
        {
          [(VUIStoreMediaItem_iOS *)self _checkoutRentalWithCheckoutType:1 startPlaybackClock:1 completion:0];
          v9[2](v9, 1, 0);
        }

        goto LABEL_8;
      }

      v10 = 1;
    }

    [(VUIStoreMediaItem_iOS *)self _checkoutRentalWithCheckoutType:v10 startPlaybackClock:1 completion:v9];
LABEL_8:

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)loadFairPlayStreamingKeyRequests:(id)requests completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  completionCopy = completion;
  playbackType = [(VUIStoreMediaItem_iOS *)self playbackType];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = v8;
  v36 = requestsCopy;
  if ((playbackType - 4) > 2)
  {
    [v8 addObjectsFromArray:requestsCopy];
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = requestsCopy;
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          if ([v15 type])
          {
            if ([v15 type] == 2)
            {
              v16 = [(VUIStoreMediaItem_iOS *)self _offlineKeyDataForKeyRequest:v15];
              v17 = sSecureKeyDeliveryLogObject;
              if (v16)
              {
                if (os_log_type_enabled(sSecureKeyDeliveryLogObject, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v49 = v15;
                  _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Using existing offline key data for request %@", buf, 0xCu);
                }

                [v15 setKeyResponseData:v16];
                [v15 finish];
              }

              else
              {
                if (os_log_type_enabled(sSecureKeyDeliveryLogObject, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v49 = v15;
                  _os_log_error_impl(&dword_1E323F000, v17, OS_LOG_TYPE_ERROR, "Offline key data does not exist for request %@", buf, 0xCu);
                }

                [v9 addObject:v15];
              }
            }

            else
            {
              [v9 addObject:v15];
            }
          }

          else
          {
            [v15 finishByRequestingOfflineKeysIfPossible];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v12);
    }

    requestsCopy = v36;
  }

  if ([v9 count])
  {
    storeFPSKeyLoader = [(VUIStoreMediaItem_iOS *)self storeFPSKeyLoader];

    if (!storeFPSKeyLoader)
    {
      fpsCertificateURL = [(VUIStoreMediaItem_iOS *)self fpsCertificateURL];
      fpsKeyServerURL = [(VUIStoreMediaItem_iOS *)self fpsKeyServerURL];
      v21 = [[VUIStoreFPSKeyLoader alloc] initWithCertificateURL:fpsCertificateURL keyServerURL:fpsKeyServerURL];
      if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
      {
        v22 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
        [(VUIStoreFPSKeyLoader *)v21 setRentalID:v22];
        if ([(VUIStoreMediaItem_iOS *)self playbackType]== 2)
        {
          [(VUIStoreFPSKeyLoader *)v21 setDidSkipRentalCheckout:1];
        }
      }

      [(VUIStoreFPSKeyLoader *)v21 setDelegate:self];
      v23 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [(VUIStoreFPSKeyLoader *)v21 setEventCollection:v23];

      [(VUIStoreMediaItem_iOS *)self setStoreFPSKeyLoader:v21];
    }

    fpsAdditionalServerParams = [(VUIStoreMediaItem_iOS *)self fpsAdditionalServerParams];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = v9;
    v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      v29 = *MEMORY[0x1E69D5DA8];
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v39 + 1) + 8 * j);
          [v31 setAdditionalRequestParams:fpsAdditionalServerParams];
          v32 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v29];
          [v31 setAdamID:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v27);
    }

    storeFPSKeyLoader2 = [(VUIStoreMediaItem_iOS *)self storeFPSKeyLoader];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__VUIStoreMediaItem_iOS_loadFairPlayStreamingKeyRequests_completion___block_invoke;
    v37[3] = &unk_1E872D7E0;
    v34 = completionCopy;
    v38 = completionCopy;
    [storeFPSKeyLoader2 loadFairPlayStreamingKeyRequests:v25 completion:v37];

    requestsCopy = v36;
  }

  else
  {
    v34 = completionCopy;
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)storeFPSKeyLoader:(id)loader willFailWithError:(id)error forKeyRequest:(id)request
{
  v18[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  fpsKeyError = [(VUIStoreMediaItem_iOS *)self fpsKeyError];

  if (errorCopy)
  {
    if (!fpsKeyError)
    {
      [(VUIStoreMediaItem_iOS *)self setFpsKeyError:errorCopy];
      if (TVPErrorIsFatalSKDError())
      {
        if ([errorCopy code] != -345015)
        {
          v8 = errorCopy;
          domain = [v8 domain];
          if ([domain isEqualToString:*MEMORY[0x1E69D60E8]])
          {
            code = [v8 code];

            if (code != -345018)
            {
LABEL_9:
              v14 = *MEMORY[0x1E69D5E10];
              v17[0] = *MEMORY[0x1E69D5E18];
              v17[1] = v14;
              v18[0] = MEMORY[0x1E695E118];
              v18[1] = v8;
              v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
              defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
              [defaultCenter postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v15];

              goto LABEL_10;
            }

            domain = objc_alloc_init(MEMORY[0x1E695DF90]);
            [domain setObject:v8 forKey:*MEMORY[0x1E696AA08]];
            v11 = +[VUILocalizationManager sharedInstance];
            v12 = [v11 localizedStringForKey:@"SignInToWatchThisVideoErrorDescription"];
            [domain setObject:v12 forKey:*MEMORY[0x1E696A598]];

            v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:813 userInfo:domain];
            [(VUIStoreMediaItem_iOS *)self setFpsKeyError:0];
            v8 = v13;
          }

          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
}

- (void)storeFPSKeyLoader:(id)loader didLoadOfflineKeyData:(id)data forKeyRequest:(id)request
{
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  requestCopy = request;
  v9 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = 134218240;
    v12 = [dataCopy length];
    v13 = 2048;
    requestID = [requestCopy requestID];
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Received offline key data with length %lu for id %lu", &v11, 0x16u);
  }

  [(VUIStoreMediaItem_iOS *)self _persistOfflineKeyData:dataCopy forKeyRequest:requestCopy];
}

- (void)storeFPSKeyLoader:(id)loader didReceiveUpdatedRentalExpirationDate:(id)date playbackStartDate:(id)startDate
{
  v15 = *MEMORY[0x1E69E9840];
  loaderCopy = loader;
  dateCopy = date;
  startDateCopy = startDate;
  v11 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dateCopy;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Received updated rental expiration date from FPS loader: %@", &v13, 0xCu);
  }

  v12 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = startDateCopy;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Received updated rental playback start date from FPS loader: %@", &v13, 0xCu);
  }

  [(VUIStoreMediaItem_iOS *)self _updateRentalPlaybackStartDate:startDateCopy];
}

- (void)_updateRentalPlaybackStartDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (dateCopy)
  {
    mpMediaItem = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v6 = *MEMORY[0x1E696FAF8];
    v7 = [mpMediaItem valueForProperty:*MEMORY[0x1E696FAF8]];

    if (v7 && ([v7 doubleValue], v8 > 0.0) && (v9 = MEMORY[0x1E695DF00], objc_msgSend(v7, "doubleValue"), objc_msgSend(v9, "dateWithTimeIntervalSinceReferenceDate:"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      rentalPlaybackStartDate = v10;
    }

    else
    {
      videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      rentalPlaybackStartDate = [videoManagedObject rentalPlaybackStartDate];

      if (!rentalPlaybackStartDate)
      {
        goto LABEL_8;
      }
    }

    [rentalPlaybackStartDate timeIntervalSinceDate:dateCopy];
    if (fabs(v13) <= 5.0)
    {
      v20 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Not updating MPMediaItem with new rental playback start date since it's close to existing start date", &v21, 2u);
      }

      goto LABEL_13;
    }

LABEL_8:
    v14 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = dateCopy;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Updating MPMediaItem with new rental playback start date: %@", &v21, 0xCu);
    }

    mpMediaItem2 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v16 = MEMORY[0x1E696AD98];
    [dateCopy timeIntervalSinceReferenceDate];
    v17 = [v16 numberWithDouble:?];
    [mpMediaItem2 setValue:v17 forProperty:v6 withCompletionBlock:0];

    videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    date = [MEMORY[0x1E695DF00] date];
    [videoManagedObject2 setRentalPlaybackStartDate:date];

LABEL_13:
  }
}

- (void)_configureForLocalPlaybackWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v8 = [pathExtension isEqualToString:@"movpkg"];

  [(VUIStoreMediaItem_iOS *)self setPlaybackURL:lCopy];
  if (v8)
  {
    v9 = 6;
  }

  else
  {
    v9 = 5;
  }

  if (v8)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [(VUIStoreMediaItem_iOS *)self setPlaybackType:v9];
  v11 = *MEMORY[0x1E69D5CA8];
  v12 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v12 setIsDownloaded:1];

  v13 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v11];
  [v13 setVideoType:v10];

  completionCopy[2](completionCopy, 1, 0);
}

- (void)_configureForPlaybackFromExistingDownload:(id)download downloadManager:(id)manager completion:(id)completion
{
  downloadCopy = download;
  managerCopy = manager;
  completionCopy = completion;
  v11 = [[VUIStoreDownloadMonitor alloc] initWithDownload:downloadCopy downloadManager:managerCopy];
  [(VUIStoreMediaItem_iOS *)self setDownloadMonitor:v11];
  loadingContext = [(VUIStoreMediaItem_iOS *)self loadingContext];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke;
  v15[3] = &unk_1E8733438;
  objc_copyWeak(v18, &location);
  v18[1] = loadingContext;
  v13 = completionCopy;
  v17 = v13;
  v14 = downloadCopy;
  v16 = v14;
  [(VUIStoreDownloadMonitor *)v11 waitForDownloadToBecomePlayableWithCompletion:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

- (void)_configureForStreamingPlaybackWithCompletion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v6 = *MEMORY[0x1E69B2FD8];
  v7 = [ml3Track valueForProperty:*MEMORY[0x1E69B2FD8]];

  hlsPlaybackURL = [(VUIStoreMediaItem_iOS *)self hlsPlaybackURL];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [standardUserDefaults BOOLForKey:@"ForceCRABS"];

  if (v10)
  {
    v11 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Will attempt CRABS playback since ForceCRABS defaults key is set", buf, 2u);
    }
  }

  if ((([v7 length] | hlsPlaybackURL) == 0) | v10 & 1)
  {
    loadingContext = [(VUIStoreMediaItem_iOS *)self loadingContext];
    objc_initWeak(buf, self);
    v13 = *MEMORY[0x1E69D5CA8];
    v14 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v14 addSingleShotEventWithName:*MEMORY[0x1E69D5F98] value:MEMORY[0x1E695E118]];

    v15 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v13];
    [v15 addStartEventWithName:*MEMORY[0x1E69D5F90]];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __70__VUIStoreMediaItem_iOS__configureForStreamingPlaybackWithCompletion___block_invoke;
    v30[3] = &unk_1E8733460;
    objc_copyWeak(v32, buf);
    v32[1] = loadingContext;
    v33 = v10;
    v31 = completionCopy;
    [(VUIStoreMediaItem_iOS *)self _performRedownloadWithType:0 completion:v30];

    objc_destroyWeak(v32);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "HLS URL is available; skipping redownload", buf, 2u);
    }

    if (hlsPlaybackURL)
    {
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v7];
      v18 = [(VUIStoreMediaItem_iOS *)self _url:hlsPlaybackURL hasSameAdamIDAsURL:v17];

      if (v18)
      {
        v19 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = hlsPlaybackURL;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Updating ML3Track's HLS playlist URL with value from UTS: %@", buf, 0xCu);
        }

        ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v35 = hlsPlaybackURL;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        v34 = v6;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        [ml3Track2 setValues:v21 forProperties:v22 async:1 withCompletionBlock:0];
      }

      v23 = hlsPlaybackURL;
    }

    else
    {
      v23 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];
    }

    v24 = v23;
    v25 = [(VUIStoreMediaItem_iOS *)self _hlsURLEnsuringDsidQueryParamIsPresentFromURL:v23];

    v26 = [VUIPlaybackUtilities updatedHLSURL:v25 forPlaybackContext:[(VUIStoreMediaItem_iOS *)self playbackContext]];

    [(VUIStoreMediaItem_iOS *)self setPlaybackURL:v26];
    [(VUIStoreMediaItem_iOS *)self setPlaybackType:2];
    v27 = *MEMORY[0x1E69D5CA8];
    v28 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v28 setVideoType:2];

    v29 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v27];
    [v29 addSingleShotEventWithName:*MEMORY[0x1E69D5F98] value:MEMORY[0x1E695E110]];

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (void)_configureForDownloadingWithCompletion:(id)completion
{
  completionCopy = completion;
  isForStartingDownload = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
  v6 = sLogObject_14;
  v7 = os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT);
  if (isForStartingDownload)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      v8 = "Media item will start downloading";
LABEL_6:
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else if (v7)
  {
    LOWORD(buf[0]) = 0;
    v8 = "Media item being downloaded";
    goto LABEL_6;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [standardUserDefaults BOOLForKey:@"ForceCRABS"];

  if (v10)
  {
    v11 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Will attempt CRABS download since ForceCRABS defaults key is set", buf, 2u);
    }
  }

  loadingContext = [(VUIStoreMediaItem_iOS *)self loadingContext];
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__VUIStoreMediaItem_iOS__configureForDownloadingWithCompletion___block_invoke;
  v14[3] = &unk_1E8733460;
  objc_copyWeak(v16, buf);
  v16[1] = loadingContext;
  v17 = v10;
  v13 = completionCopy;
  v15 = v13;
  [(VUIStoreMediaItem_iOS *)self _performRedownloadWithType:1 completion:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

- (void)_performRedownloadWithType:(int64_t)type completion:(id)completion
{
  v6 = *MEMORY[0x1E69D5AE0];
  completionCopy = completion;
  v12 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v6];
  if ([v12 length])
  {
    v8 = [MEMORY[0x1E698C818] buyParamsWithString:v12];
    v9 = v8;
    if (!type)
    {
      [v8 setParameter:@"1" forKey:@"playback"];
      [v9 setParameter:@"1" forKey:@"lightweight"];
      if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
      {
        [v9 setParameter:MEMORY[0x1E695E118] forKey:@"streamingRental"];
      }
    }

    v10 = +[VUIRedownloadEndpointManager sharedInstance];
    [v10 performRedownloadWithType:type buyParams:v9 completion:completionCopy];

    completionCopy = v10;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v11 initWithDomain:VUIStoreMediaItemErrorDomain code:-123001 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

- (id)_iTunesStoreContentPurchasedMediaKind
{
  v2 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  if (v2 == *MEMORY[0x1E69D5ED0])
  {
    v3 = @"tvshow";
  }

  else
  {
    v3 = 0;
  }

  if (v2 == *MEMORY[0x1E69D5EB8])
  {
    v4 = @"movie";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)_setDownloadKeyCookieWithURL:(id)l downloadKey:(id)key
{
  v17[5] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = keyCopy;
  if (l && keyCopy)
  {
    lCopy = l;
    host = [lCopy host];
    path = [lCopy path];

    if (host && path)
    {
      v10 = MEMORY[0x1E696AC58];
      v11 = *MEMORY[0x1E696A468];
      v16[0] = *MEMORY[0x1E696A438];
      v16[1] = v11;
      v17[0] = @"downloadKey";
      v17[1] = v6;
      v12 = *MEMORY[0x1E696A448];
      v16[2] = *MEMORY[0x1E696A420];
      v16[3] = v12;
      v17[2] = host;
      v17[3] = path;
      v16[4] = *MEMORY[0x1E696A470];
      v17[4] = @"0";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
      v14 = [v10 cookieWithProperties:v13];

      mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
      [mEMORY[0x1E696AC60] setCookie:v14];
    }
  }
}

- (void)_deleteDownloadKeyCookieForURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    v5 = [mEMORY[0x1E696AC60] cookiesForURL:lCopy];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"downloadKey"];

          if (v12)
          {
            mEMORY[0x1E696AC60]2 = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
            [mEMORY[0x1E696AC60]2 deleteCookie:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (id)_downloadForThisMediaItemReturningDownloadManager:(id *)manager
{
  v42[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69D48D8]);
  v5 = *MEMORY[0x1E69D4B00];
  v42[0] = *MEMORY[0x1E69D4AE0];
  v42[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  [v4 setDownloadKinds:v6];

  [v4 setShouldFilterExternalOriginatedDownloads:0];
  v7 = *MEMORY[0x1E69D4BD0];
  v8 = *MEMORY[0x1E69D4BF0];
  v41[0] = *MEMORY[0x1E69D4BD0];
  v41[1] = v8;
  v41[2] = *MEMORY[0x1E69D4B98];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [v4 setPrefetchedDownloadProperties:v9];

  v27 = v4;
  v25 = [objc_alloc(MEMORY[0x1E69D48D0]) initWithManagerOptions:v4];
  [v25 downloads];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v34)
  {
    v29 = 0;
    v33 = *v36;
    v32 = *MEMORY[0x1E69B3308];
    v30 = *MEMORY[0x1E69D4B48];
    v28 = *MEMORY[0x1E69D4B50];
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v36 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v35 + 1) + 8 * v10);
      v39[0] = v7;
      v39[1] = v8;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
      v13 = [v11 vui_valuesForProperties:v12];

      v14 = [v13 objectForKey:v7];
      v15 = [v13 objectForKey:v8];
      ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v17 = [ml3Track valueForProperty:v32];

      longLongValue = [v14 longLongValue];
      if (longLongValue == -[VUILibraryMediaItem_iOS persistentID](self, "persistentID") || (v15 ? (v22 = v17 == 0) : (v22 = 1), !v22 && [v15 isEqualToNumber:v17]))
      {
        downloadPhaseIdentifier = [v11 downloadPhaseIdentifier];
        if (([downloadPhaseIdentifier isEqualToString:v30] & 1) == 0 && (objc_msgSend(downloadPhaseIdentifier, "isEqualToString:", v28) & 1) == 0)
        {
          v20 = v11;

          v29 = v20;
        }

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        break;
      }

      if (v34 == ++v10)
      {
        v34 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v34)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  if (manager)
  {
    v23 = v25;
    *manager = v25;
  }

  return v29;
}

- (id)_videoPlaybackTypeDescription
{
  playbackType = [(VUIStoreMediaItem_iOS *)self playbackType];
  if (playbackType > 6)
  {
    return 0;
  }

  else
  {
    return off_1E8733480[playbackType];
  }
}

- (id)_offlineKeyDataForKeyRequest:(id)request
{
  requestCopy = request;
  if (![(VUIStoreMediaItem_iOS *)self useSidebandLibraryForPlaybackKeys])
  {
    ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
    keyIdentifier2 = [ml3Track valueForProperty:*MEMORY[0x1E69B2FD0]];

    if (!keyIdentifier2)
    {
      keyData = 0;
      goto LABEL_17;
    }

    v13 = MEMORY[0x1E696ACD0];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v23 = 0;
    v18 = [v13 unarchivedObjectOfClasses:v17 fromData:keyIdentifier2 error:&v23];
    v19 = v23;

    if (v19 && os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreMediaItem_iOS _offlineKeyDataForKeyRequest:];
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else if (v18)
    {
LABEL_9:
      keyIdentifier = [requestCopy keyIdentifier];
      absoluteString = [keyIdentifier absoluteString];

      if (absoluteString)
      {
        keyData = [v18 objectForKey:absoluteString];
      }

      else
      {
        keyData = 0;
      }

      goto LABEL_16;
    }

    keyData = 0;
LABEL_16:

    goto LABEL_17;
  }

  keyIdentifier2 = [requestCopy keyIdentifier];
  videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

  keyData = 0;
  if (videoManagedObject && keyIdentifier2)
  {
    v8 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v8 sidebandMediaLibrary];
    videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v11 = [sidebandMediaLibrary fpsKeyInfoForVideo:videoManagedObject2 keyURI:keyIdentifier2 createIfNeeded:0 wasCreated:0];

    keyData = [v11 keyData];
  }

LABEL_17:

  return keyData;
}

- (void)_persistOfflineKeyData:(id)data forKeyRequest:(id)request
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  requestCopy = request;
  if ([(VUIStoreMediaItem_iOS *)self useSidebandLibraryForPlaybackKeys])
  {
    keyIdentifier = [requestCopy keyIdentifier];
    videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    if (!videoManagedObject || !keyIdentifier)
    {
LABEL_9:

      goto LABEL_22;
    }

    v10 = [dataCopy length];

    if (v10)
    {
      videoManagedObject2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      downloadState = [videoManagedObject2 downloadState];

      v13 = sLogObject_14;
      v14 = os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT);
      if (downloadState)
      {
        if (v14)
        {
          *buf = 138412290;
          v41 = requestCopy;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Saving offline key data to database: %@", buf, 0xCu);
        }

        v15 = +[VUIMediaLibraryManager defaultManager];
        sidebandMediaLibrary = [v15 sidebandMediaLibrary];
        videoManagedObject3 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        videoManagedObject = [sidebandMediaLibrary fpsKeyInfoForVideo:videoManagedObject3 keyURI:keyIdentifier createIfNeeded:1 wasCreated:0];

        videoManagedObject4 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        [videoManagedObject populateFromKeyRequest:requestCopy video:videoManagedObject4];

        v19 = +[VUIMediaLibraryManager defaultManager];
        sidebandMediaLibrary2 = [v19 sidebandMediaLibrary];
        [sidebandMediaLibrary2 saveChangesToManagedObjects];

        goto LABEL_9;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Offline keys received for an item that is no longer downloading or downloaded.  Not saving keys.", buf, 2u);
      }
    }
  }

  else
  {
    ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v22 = *MEMORY[0x1E69B2FD0];
    keyIdentifier = [ml3Track valueForProperty:*MEMORY[0x1E69B2FD0]];

    if (!keyIdentifier)
    {
      goto LABEL_15;
    }

    v23 = MEMORY[0x1E696ACD0];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v37 = 0;
    v28 = [v23 unarchivedObjectOfClasses:v27 fromData:keyIdentifier error:&v37];
    v29 = v37;

    if (v29 && os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreMediaItem_iOS _offlineKeyDataForKeyRequest:];
    }

    v30 = [v28 mutableCopy];

    if (!v30)
    {
LABEL_15:
      v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    keyIdentifier2 = [requestCopy keyIdentifier];
    absoluteString = [keyIdentifier2 absoluteString];

    if ([dataCopy length] && absoluteString)
    {
      [v30 setObject:dataCopy forKey:absoluteString];
      v33 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:0];
      if (v33)
      {
        ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v39 = v33;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
        v38 = v22;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [ml3Track2 setValues:v35 forProperties:v36 async:1 withCompletionBlock:0];
      }
    }
  }

LABEL_22:
}

- (void)_checkoutRentalWithCheckoutType:(unint64_t)type startPlaybackClock:(BOOL)clock completion:(id)completion
{
  clockCopy = clock;
  completionCopy = completion;
  v9 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
  v10 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
  objc_initWeak(&location, self);
  v11 = +[VUIRentalManager sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__VUIStoreMediaItem_iOS__checkoutRentalWithCheckoutType_startPlaybackClock_completion___block_invoke;
  v13[3] = &unk_1E87333C0;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [v11 checkOutRentalWithID:v9 dsid:v10 checkoutType:type startPlaybackClock:clockCopy completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_checkInRental
{
  v5 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
  v3 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
  v4 = +[VUIRentalManager sharedInstance];
  [v4 checkInRentalWithID:v5 dsid:v3 completion:0];
}

- (void)_externalPlaybackTypeDidChange:(id)change
{
  v21[2] = *MEMORY[0x1E69E9840];
  object = [change object];
  currentMediaItem = [object currentMediaItem];
  v6 = [currentMediaItem isEqualToMediaItem:self];

  if (v6 && [object externalPlaybackType] == 1 && -[VUIStoreMediaItem_iOS hasTrait:](self, "hasTrait:", *MEMORY[0x1E69D5E60]))
  {
    if ([(VUIStoreMediaItem_iOS *)self playbackType]== 1)
    {
      v7 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Not allowing AirPlay playback of streaming CRABS rental", v17, 2u);
      }

      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:831 userInfo:0];
      v9 = *MEMORY[0x1E69D5E10];
      v20[0] = *MEMORY[0x1E69D5E18];
      v20[1] = v9;
      v21[0] = MEMORY[0x1E695E118];
      v21[1] = v8;
      v10 = MEMORY[0x1E695DF20];
      v11 = v21;
      v12 = v20;
LABEL_12:
      v15 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v15];

      goto LABEL_13;
    }

    if ([(VUIStoreMediaItem_iOS *)self playbackType]== 3)
    {
      v13 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Not allowing AirPlay playback of downloading CRABS rental", v17, 2u);
      }

      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:832 userInfo:0];
      v14 = *MEMORY[0x1E69D5E10];
      v18[0] = *MEMORY[0x1E69D5E18];
      v18[1] = v14;
      v19[0] = MEMORY[0x1E695E118];
      v19[1] = v8;
      v10 = MEMORY[0x1E695DF20];
      v11 = v19;
      v12 = v18;
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (id)_iTunesStoreContentInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    v5 = 0;
  }

  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
  if (ml3Track)
  {
    ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    absoluteString = [ml3Track2 valueForProperty:*MEMORY[0x1E69B2FD8]];
  }

  else
  {
    ml3Track2 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    playbackURL = [ml3Track2 playbackURL];
    absoluteString = [playbackURL absoluteString];
  }

  if (![absoluteString length])
  {
    hlsPlaybackURL = [(VUIStoreMediaItem_iOS *)self hlsPlaybackURL];
    absoluteString2 = [hlsPlaybackURL absoluteString];

    absoluteString = absoluteString2;
  }

  if ([absoluteString length])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:absoluteString];
    v13 = [(VUIStoreMediaItem_iOS *)self _hlsURLEnsuringDsidQueryParamIsPresentFromURL:v12];

    v14 = [VUIPlaybackUtilities updatedHLSURL:v13 forPlaybackContext:[(VUIStoreMediaItem_iOS *)self playbackContext]];

    absoluteString3 = [v14 absoluteString];
    if ([absoluteString3 length])
    {
      v16 = absoluteString3;

      absoluteString = v16;
    }

    [v3 setObject:absoluteString forKey:*MEMORY[0x1E6987C18]];
  }

  if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    _iTunesStoreContentPurchasedMediaKind = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
    if (_iTunesStoreContentPurchasedMediaKind)
    {
      [v3 setObject:_iTunesStoreContentPurchasedMediaKind forKey:*MEMORY[0x1E6987C38]];
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    [v3 setObject:v5 forKey:*MEMORY[0x1E6987C20]];
    [v3 setObject:@"purchaseHistory" forKey:*MEMORY[0x1E6987C40]];
    _iTunesStoreContentPurchasedMediaKind = [(VUIStoreMediaItem_iOS *)self _iTunesStoreContentPurchasedMediaKind];
    if (_iTunesStoreContentPurchasedMediaKind)
    {
      [v3 setObject:_iTunesStoreContentPurchasedMediaKind forKey:*MEMORY[0x1E6987C30]];
    }

    v18 = MEMORY[0x1E698CBB8];
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
    v20 = [v18 userAgentForProcessInfo:currentProcess];

    if (v20)
    {
      [v3 setObject:v20 forKey:*MEMORY[0x1E6987C48]];
    }

    v21 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    if (v21)
    {
      [v3 setObject:v21 forKey:*MEMORY[0x1E6987C08]];
    }

    v22 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE0]];
    if (v22)
    {
      [v3 setObject:v22 forKey:*MEMORY[0x1E6987C10]];
    }
  }

LABEL_27:
  if ([v3 count])
  {
    v23 = [v3 copy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_rentalEndDate
{
  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];

  if (!ml3Track)
  {
    date = [MEMORY[0x1E695DF00] date];
    v14 = [date dateByAddingTimeInterval:2592000.0];
    goto LABEL_7;
  }

  ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v5 = [ml3Track2 valueForProperty:*MEMORY[0x1E69B31A8]];
  [v5 doubleValue];
  v7 = v6;

  if (v7 != 0.0)
  {
    date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
    ml3Track3 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v10 = [ml3Track3 valueForProperty:*MEMORY[0x1E69B3188]];
    [v10 doubleValue];
    v12 = v11;

    v13 = 0;
    if (!date || v12 == 0.0)
    {
      goto LABEL_8;
    }

    v14 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:date sinceDate:v12];
LABEL_7:
    v13 = v14;
LABEL_8:

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)_rentalPlaybackEndDate
{
  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];

  if (!ml3Track)
  {
    videoManagedObject = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    rentalPlaybackStartDate = [videoManagedObject rentalPlaybackStartDate];

    if (!rentalPlaybackStartDate)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v14 = objc_alloc(MEMORY[0x1E695DF00]);
    v15 = 172800.0;
    goto LABEL_8;
  }

  ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v5 = [ml3Track2 valueForProperty:*MEMORY[0x1E69B31A0]];
  [v5 doubleValue];
  v7 = v6;

  if (v7 == 0.0)
  {
    v13 = 0;
    goto LABEL_12;
  }

  rentalPlaybackStartDate = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
  ml3Track3 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v10 = [ml3Track3 valueForProperty:*MEMORY[0x1E69B3198]];
  [v10 doubleValue];
  v12 = v11;

  v13 = 0;
  if (rentalPlaybackStartDate && v12 != 0.0)
  {
    v14 = objc_alloc(MEMORY[0x1E695DF00]);
    v15 = v12;
LABEL_8:
    v13 = [v14 initWithTimeInterval:rentalPlaybackStartDate sinceDate:v15];
  }

LABEL_11:

LABEL_12:

  return v13;
}

- (id)_rentalExpirationDate
{
  _rentalPlaybackEndDate = [(VUIStoreMediaItem_iOS *)self _rentalPlaybackEndDate];
  _rentalEndDate = [(VUIStoreMediaItem_iOS *)self _rentalEndDate];
  v5 = _rentalEndDate;
  if (_rentalPlaybackEndDate && _rentalEndDate)
  {
    v6 = [_rentalPlaybackEndDate earlierDate:_rentalEndDate];
  }

  else if (_rentalPlaybackEndDate)
  {
    v6 = _rentalPlaybackEndDate;
  }

  else
  {
    if (!_rentalEndDate)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6 = _rentalEndDate;
  }

  v7 = v6;
LABEL_9:
  v8 = v7;

  return v7;
}

- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)l
{
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = lCopy;
  if (lCopy && ([lCopy vui_containsQueryParamWithName:@"dsid"] & 1) == 0)
  {
    v8 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "dsid query param is missing from HLS URL: %@", &v15, 0xCu);
    }

    v9 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    stringValue = [v9 stringValue];

    v7 = v5;
    if ([stringValue length])
    {
      v11 = [v5 vui_URLByAddingQueryParamWithName:@"dsid" value:stringValue];
      v12 = v11;
      v7 = v5;
      if (v11)
      {
        v7 = v11;

        v13 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = v7;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "HLS URL after adding dsid param: %@", &v15, 0xCu);
        }
      }
    }
  }

  else
  {
    v6 = sLogObject_14;
    v7 = v5;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "dsid query param is present in HLS URL: %@", &v15, 0xCu);
      v7 = v5;
    }
  }

  return v7;
}

- (BOOL)_url:(id)_url hasSameAdamIDAsURL:(id)l
{
  v49 = *MEMORY[0x1E69E9840];
  _urlCopy = _url;
  lCopy = l;
  v7 = lCopy;
  v8 = 0;
  if (_urlCopy && lCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:_urlCopy resolvingAgainstBaseURL:0];
    v10 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v7 resolvingAgainstBaseURL:0];
    v11 = v10;
    v8 = 0;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v37 = v9;
      v38 = v7;
      queryItems = [v9 queryItems];
      queryItems2 = [v11 queryItems];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v15 = queryItems;
      v16 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
      v36 = v11;
      if (v16)
      {
        v17 = v16;
        v34 = queryItems2;
        v18 = *v44;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v43 + 1) + 8 * i);
            name = [v20 name];
            v22 = [name caseInsensitiveCompare:@"a"];

            if (!v22)
            {
              value = [v20 value];
              goto LABEL_17;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        value = 0;
LABEL_17:
        queryItems2 = v34;
      }

      else
      {
        value = 0;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v23 = queryItems2;
      v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v40;
        while (2)
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v40 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v39 + 1) + 8 * j);
            name2 = [v28 name];
            v30 = [name2 caseInsensitiveCompare:@"a"];

            if (!v30)
            {
              value2 = [v28 value];

              v8 = 0;
              v32 = value;
              if (value)
              {
                v9 = v37;
                v7 = v38;
                v11 = v36;
                if (value2)
                {
                  v8 = [value isEqualToString:value2];
                }
              }

              else
              {
                v9 = v37;
                v7 = v38;
                v11 = v36;
              }

              goto LABEL_32;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      value2 = 0;
      v8 = 0;
      v9 = v37;
      v7 = v38;
      v32 = value;
      v11 = v36;
LABEL_32:
    }
  }

  return v8;
}

- (void)mediaItemMetadataForProperty:.cold.2()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setMediaItemMetadata:forProperty:.cold.1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)processFinishedDownloadWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)processFinishedDownloadWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_offlineKeyDataForKeyRequest:.cold.1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end