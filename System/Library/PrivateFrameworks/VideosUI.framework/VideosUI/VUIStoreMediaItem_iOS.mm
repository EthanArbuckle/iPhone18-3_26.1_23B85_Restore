@interface VUIStoreMediaItem_iOS
+ (void)initialize;
- (BOOL)_url:(id)a3 hasSameAdamIDAsURL:(id)a4;
- (BOOL)hasTrait:(id)a3;
- (BOOL)isEqualToMediaItem:(id)a3;
- (BOOL)shouldRetryPlaybackForError:(id)a3;
- (VUIStoreMediaItem_iOS)initWithAdamID:(int64_t)a3 videoManagedObject:(id)a4 isForStartingDownload:(BOOL)a5;
- (VUIStoreMediaItem_iOS)initWithMPMediaItem:(id)a3 videoManagedObject:(id)a4 isForStartingDownload:(BOOL)a5;
- (id)_downloadForThisMediaItemReturningDownloadManager:(id *)a3;
- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)a3;
- (id)_iTunesStoreContentInfo;
- (id)_iTunesStoreContentPurchasedMediaKind;
- (id)_offlineKeyDataForKeyRequest:(id)a3;
- (id)_rentalEndDate;
- (id)_rentalExpirationDate;
- (id)_rentalPlaybackEndDate;
- (id)_videoPlaybackTypeDescription;
- (id)mediaItemMetadataForProperty:(id)a3;
- (id)replacementErrorForPlaybackError:(id)a3;
- (void)_checkInRental;
- (void)_checkoutRentalWithCheckoutType:(unint64_t)a3 startPlaybackClock:(BOOL)a4 completion:(id)a5;
- (void)_configureForDownloadingWithCompletion:(id)a3;
- (void)_configureForLocalPlaybackWithURL:(id)a3 completion:(id)a4;
- (void)_configureForPlaybackFromExistingDownload:(id)a3 downloadManager:(id)a4 completion:(id)a5;
- (void)_configureForStreamingPlaybackWithCompletion:(id)a3;
- (void)_deleteDownloadKeyCookieForURL:(id)a3;
- (void)_externalPlaybackTypeDidChange:(id)a3;
- (void)_performRedownloadWithType:(int64_t)a3 completion:(id)a4;
- (void)_persistOfflineKeyData:(id)a3 forKeyRequest:(id)a4;
- (void)_setDownloadKeyCookieWithURL:(id)a3 downloadKey:(id)a4;
- (void)_updateRentalPlaybackStartDate:(id)a3;
- (void)cleanUpMediaItem;
- (void)dealloc;
- (void)loadFairPlayStreamingKeyRequests:(id)a3 completion:(id)a4;
- (void)mediaItemAllInitialLoadingComplete:(id)a3 totalTime:(double)a4 player:(id)a5;
- (void)prepareForLoadingWithCompletion:(id)a3;
- (void)prepareForPlaybackInitiationWithCompletion:(id)a3;
- (void)processFinishedDownloadWithCompletion:(id)a3;
- (void)resetReportingEventCollection;
- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4;
- (void)storeFPSKeyLoader:(id)a3 didLoadOfflineKeyData:(id)a4 forKeyRequest:(id)a5;
- (void)storeFPSKeyLoader:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4 playbackStartDate:(id)a5;
- (void)storeFPSKeyLoader:(id)a3 willFailWithError:(id)a4 forKeyRequest:(id)a5;
- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6;
@end

@implementation VUIStoreMediaItem_iOS

+ (void)initialize
{
  if (initialize_onceToken_7 != -1)
  {
    +[VUIStoreMediaItem_iOS initialize];
  }
}

- (VUIStoreMediaItem_iOS)initWithAdamID:(int64_t)a3 videoManagedObject:(id)a4 isForStartingDownload:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E69705D0];
  v9 = MEMORY[0x1E696AD98];
  v10 = a4;
  v11 = [v9 numberWithLongLong:a3];
  v12 = [v8 vui_mediaItemForStoreIdentifier:v11];

  v13 = [(VUIStoreMediaItem_iOS *)self initWithMPMediaItem:v12 videoManagedObject:v10 isForStartingDownload:v5];
  return v13;
}

- (VUIStoreMediaItem_iOS)initWithMPMediaItem:(id)a3 videoManagedObject:(id)a4 isForStartingDownload:(BOOL)a5
{
  v9 = a4;
  v36.receiver = self;
  v36.super_class = VUIStoreMediaItem_iOS;
  v10 = [(VUILibraryMediaItem_iOS *)&v36 initWithMPMediaItem:a3];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69D5A30]);
    [v11 addStartEventWithName:*MEMORY[0x1E69D6040]];
    [v11 addStartEventWithName:*MEMORY[0x1E69D6058]];
    [(VUIStoreMediaItem_iOS *)v10 setMediaItemMetadata:v11 forProperty:*MEMORY[0x1E69D5CA8]];
    v12 = [MEMORY[0x1E69D5920] activeAccount];
    v13 = [v12 ams_DSID];
    [(VUIStoreMediaItem_iOS *)v10 setMediaItemMetadata:v13 forProperty:*MEMORY[0x1E69D5B30]];

    v10->_isForStartingDownload = a5;
    if (v9)
    {
      objc_storeStrong(&v10->_videoManagedObject, a4);
      v14 = [v9 fpsCertificateURL];
      fpsCertificateURL = v10->_fpsCertificateURL;
      v10->_fpsCertificateURL = v14;

      v16 = [v9 fpsKeyServerURL];
      fpsKeyServerURL = v10->_fpsKeyServerURL;
      v10->_fpsKeyServerURL = v16;

      v18 = [v9 additionalFPSRequestParams];
      fpsAdditionalServerParams = v10->_fpsAdditionalServerParams;
      v10->_fpsAdditionalServerParams = v18;

      v20 = [v9 bookmarkTime];
      v21 = [v9 bookmarkTimeStamp];
      v22 = [v9 mainContentRelativeBookmarkTime];
      v23 = [v9 mainContentRelativeBookmarkTimeStamp];
      if (v20)
      {
        v24 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:v20 timestamp:v21 type:0 source:@"Sideband Library"];
        v25 = [(VUIBaseMediaItem *)v10 startTimeCollection];
        [v25 addStartTimeInfo:v24];
      }

      if (v22)
      {
        v26 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:v22 timestamp:v23 type:1 source:@"Sideband Library"];
        v27 = [(VUIBaseMediaItem *)v10 startTimeCollection];
        [v27 addStartTimeInfo:v26];
      }

      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __86__VUIStoreMediaItem_iOS_initWithMPMediaItem_videoManagedObject_isForStartingDownload___block_invoke;
      v33 = &unk_1E872D990;
      v34 = v10;
      v35 = v9;
      [(TVPBaseMediaItem *)v34 performMediaItemMetadataTransactionWithBlock:&v30];
    }

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v10 selector:sel__externalPlaybackTypeDidChange_ name:*MEMORY[0x1E69D60C8] object:0];
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

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

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

- (BOOL)isEqualToMediaItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VUIStoreMediaItem_iOS;
  if ([(VUILibraryMediaItem_iOS *)&v8 isEqualToMediaItem:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
    v6 = v5 ^ [v4 isForStartingDownload] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)hasTrait:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E69D5E70]])
  {
    goto LABEL_2;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5E40]])
  {
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5E80]])
  {
LABEL_2:
    v5 = [(VUIStoreMediaItem_iOS *)self playbackType]== 2;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5E78]])
  {
    goto LABEL_7;
  }

  if (![v4 isEqualToString:*MEMORY[0x1E69D5EA0]])
  {
    v8 = *MEMORY[0x1E69D5E60];
    if ([v4 isEqualToString:*MEMORY[0x1E69D5E60]])
    {
      v9 = [(VUILibraryMediaItem_iOS *)self ml3Track];

      if (v9)
      {
        v10 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v11 = [v10 valueForProperty:*MEMORY[0x1E69B30E8]];
        v6 = [v11 BOOLValue];
LABEL_16:

LABEL_31:
        goto LABEL_8;
      }

      v18 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (v18)
      {
        v10 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        v19 = [v10 rentalID];
        v6 = v19 != 0;

        goto LABEL_31;
      }

      v20 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
LABEL_37:
      v6 = v20 != 0;

      goto LABEL_8;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69D5E20]])
    {
      goto LABEL_12;
    }

    if (([v4 isEqualToString:*MEMORY[0x1E69D5E98]] & 1) == 0)
    {
      if ([v4 isEqualToString:VUIMediaItemTraitStopWhenPausedForTooLong])
      {
        if (![(VUIStoreMediaItem_iOS *)self hasTrait:v8]|| [(VUIStoreMediaItem_iOS *)self playbackType]!= 2 && [(VUIStoreMediaItem_iOS *)self playbackType]!= 1)
        {
          v6 = 0;
          goto LABEL_8;
        }

        v10 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE0]];
        if (!v10)
        {
          v6 = 0;
          goto LABEL_31;
        }

        v12 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v10;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Evaluating for VUIMediaItemTraitStopWhenPausedForTooLong.  Rental expiration is %@", buf, 0xCu);
        }

        v13 = [MEMORY[0x1E695DF00] date];
        v11 = [v13 dateByAddingTimeInterval:3600.0];

        v14 = [v10 laterDate:v11];

        v15 = sLogObject_14;
        v16 = os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT);
        v6 = v14 == v10;
        if (v6)
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

      if (![v4 isEqualToString:*MEMORY[0x1E69D5E58]])
      {
        v25.receiver = self;
        v25.super_class = VUIStoreMediaItem_iOS;
        v6 = [(VUILibraryMediaItem_iOS *)&v25 hasTrait:v4];
        goto LABEL_8;
      }

      v21 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      if (!v21 || (v22 = v21, -[VUIStoreMediaItem_iOS videoManagedObject](self, "videoManagedObject"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 downloadState], v23, v22, v24 != 2))
      {
        v20 = [(VUILibraryMediaItem_iOS *)self _localPlaybackFilePathURL];
        goto LABEL_37;
      }
    }

LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

LABEL_12:
  v5 = [(VUIStoreMediaItem_iOS *)self playbackType]== 1;
LABEL_3:
  v6 = v5;
LABEL_8:

  return v6;
}

- (id)mediaItemMetadataForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E69D5BF8]])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = +[VUIStoreAuxMediaItem mediaUserAgent];
    v7 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    v8 = [v7 stringValue];

    if ([(VUISidebandMediaEntityImageLoadParams *)v6 length])
    {
      [v5 setObject:v6 forKey:@"User-Agent"];
    }

    if ([v8 length])
    {
      [v5 setObject:v8 forKey:@"X-Dsid"];
    }

    [v5 setObject:@"https://tv.apple.com" forKey:@"Referer"];
    if (![v5 count])
    {

      v5 = 0;
    }

    goto LABEL_9;
  }

  v9 = *MEMORY[0x1E69D5DA8];
  if (([v4 isEqualToString:*MEMORY[0x1E69D5DA8]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69D5B98]))
  {
    v10 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (v10)
    {
      v11 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
      v12 = [v11 valueForProperty:*MEMORY[0x1E696FB60]];

      if ([(VUISidebandMediaEntityImageLoadParams *)v12 longLongValue])
      {
        v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 stringValue];
LABEL_17:
        v5 = v13;
LABEL_143:

        goto LABEL_144;
      }

LABEL_142:
      v5 = 0;
      goto LABEL_143;
    }

    v14 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

    if (v14)
    {
      v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 adamID];
      goto LABEL_17;
    }

    v121.receiver = self;
    v121.super_class = VUIStoreMediaItem_iOS;
    [(VUILibraryMediaItem_iOS *)&v121 mediaItemMetadataForProperty:v9];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5A98]])
  {
    if ([(VUIStoreMediaItem_iOS *)self playbackType]== 1)
    {
      v15 = [(VUIStoreMediaItem_iOS *)self sinfsDict];
      goto LABEL_42;
    }

    goto LABEL_165;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5BC8]])
  {
    v15 = [(VUIStoreMediaItem_iOS *)self fileSize];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5B68]])
  {
    v15 = [(VUIStoreMediaItem_iOS *)self downloadToken];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5B50]])
  {
    v15 = [(VUIStoreMediaItem_iOS *)self downloadDestinationURL];
    goto LABEL_42;
  }

  v16 = *MEMORY[0x1E69D5CE8];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5CE8]])
  {
    v120.receiver = self;
    v120.super_class = VUIStoreMediaItem_iOS;
    v15 = [(VUILibraryMediaItem_iOS *)&v120 mediaItemMetadataForProperty:v16];
    if (v15)
    {
      goto LABEL_42;
    }

    v17 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (!v17)
    {
      v5 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_144;
      }

      v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 rentalID];
      goto LABEL_17;
    }

    v18 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v19 = [v18 valueForProperty:*MEMORY[0x1E69B30E8]];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      v21 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v12 = v21;
      v22 = MEMORY[0x1E69B3310];
LABEL_46:
      v13 = [(VUISidebandMediaEntityImageLoadParams *)v21 valueForProperty:*v22];
      goto LABEL_17;
    }

LABEL_165:
    v5 = 0;
    goto LABEL_144;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5D40]])
  {
    v23 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    v6 = v23;
    if (v23 == *MEMORY[0x1E69D5EC8])
    {
      v26 = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
      v27 = VUIStoreMediaItemRTCServiceIdentifierMovieRental_iOS_cloud;
      v28 = VUIStoreMediaItemRTCServiceIdentifierMovieRental_iOS_download;
    }

    else if (v23 == *MEMORY[0x1E69D5EB8])
    {
      v26 = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
      v27 = VUIStoreMediaItemRTCServiceIdentifierMoviePurchase_iOS_cloud;
      v28 = VUIStoreMediaItemRTCServiceIdentifierMoviePurchase_iOS_download;
    }

    else
    {
      if (v23 != *MEMORY[0x1E69D5ED0])
      {
LABEL_39:
        v5 = 0;
LABEL_9:

        goto LABEL_144;
      }

      v26 = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
      v27 = VUIStoreMediaItemRTCServiceIdentifierTVShowPurchase_iOS_cloud;
      v28 = VUIStoreMediaItemRTCServiceIdentifierTVShowPurchase_iOS_download;
    }

    if (v26)
    {
      v27 = v28;
    }

    v33 = *v27;
LABEL_59:
    v5 = v33;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5E00]])
  {
    v15 = [(VUIStoreMediaItem_iOS *)self _iTunesStoreContentInfo];
    goto LABEL_42;
  }

  v24 = *MEMORY[0x1E69D5AE0];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5AE0]])
  {
    v25 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (v25)
    {
      v21 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v12 = v21;
      v22 = MEMORY[0x1E69B3348];
      goto LABEL_46;
    }

    v36 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

    if (v36)
    {
      v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 buyParams];
      goto LABEL_17;
    }

    v119.receiver = self;
    v119.super_class = VUIStoreMediaItem_iOS;
    [(VUILibraryMediaItem_iOS *)&v119 mediaItemMetadataForProperty:v24];
    v15 = LABEL_25:;
    goto LABEL_42;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5BB0]])
  {
    v29 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v6 = [v29 valueForProperty:*MEMORY[0x1E69B32E8]];

    if (![(VUISidebandMediaEntityImageLoadParams *)v6 length])
    {
      goto LABEL_39;
    }

    v30 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v31 = [v30 valueForProperty:*MEMORY[0x1E69B30E8]];
    v32 = [v31 BOOLValue];

    if (v32)
    {
      goto LABEL_39;
    }

    v33 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5DA0]])
  {
    v12 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    if (!v12)
    {
      goto LABEL_142;
    }

    v34 = [MEMORY[0x1E69D5920] accountWithDSID:v12];
    v35 = [v34 ams_storefront];
LABEL_63:
    v5 = v35;
    goto LABEL_64;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5CE0]])
  {
    v15 = [(VUIStoreMediaItem_iOS *)self _rentalExpirationDate];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5CF0]])
  {
    v37 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (!v37)
    {
      v5 = &unk_1F5E5ED30;
      goto LABEL_144;
    }

    v21 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v12 = v21;
    v22 = MEMORY[0x1E69B3198];
    goto LABEL_46;
  }

  v38 = *MEMORY[0x1E69D5AD0];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5AD0]])
  {
    v15 = *MEMORY[0x1E69E1688];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5C68]])
  {
    v39 = [(VUIStoreMediaItem_iOS *)self playbackType];
    if ((v39 - 1) > 5)
    {
      v40 = 0;
    }

    else
    {
      v40 = qword_1E4297270[v39 - 1];
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
    goto LABEL_42;
  }

  v41 = *MEMORY[0x1E69D5CF8];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5CF8]])
  {
    v42 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (v42)
    {
      v43 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v44 = [v43 valueForProperty:*MEMORY[0x1E69B31A0]];
      [v44 doubleValue];
      v46 = v45;

      if (v46 != 0.0)
      {
        v15 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v46];
        goto LABEL_42;
      }

      goto LABEL_165;
    }

    v51 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

    if (v51)
    {
      v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 rentalPlaybackStartDate];
      goto LABEL_17;
    }

    v118[0] = self;
    v118[1] = VUIStoreMediaItem_iOS;
    v52 = v118;
    goto LABEL_102;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5A90]])
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
      v5 = [(VUISidebandMediaEntityImageLoadParams *)v6 copy];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_100;
  }

  v49 = *MEMORY[0x1E69D5D38];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5D38]])
  {
    v50 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (v50)
    {
      v21 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
      v12 = v21;
      v22 = MEMORY[0x1E696FB18];
      goto LABEL_46;
    }

    v56 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v117.receiver = self;
      v117.super_class = VUIStoreMediaItem_iOS;
      [(VUILibraryMediaItem_iOS *)&v117 mediaItemMetadataForProperty:v49];
      goto LABEL_25;
    }

    v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v34 = [(VUISidebandMediaEntityImageLoadParams *)v12 series];
    v35 = [v34 title];
    goto LABEL_63;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5B60]])
  {
    v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 downloadTaskIdentifier];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5B58]])
  {
    v53 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v12 = v53;
    if (!v53)
    {
      goto LABEL_142;
    }

    v34 = [(VUISidebandMediaEntityImageLoadParams *)v53 downloadQOSMetricsJSONData];
    if (![v34 length])
    {
      v5 = 0;
      goto LABEL_64;
    }

    v116 = 0;
    v54 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v34 options:0 error:&v116];
    v55 = v116;
    if (v54)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v54;
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

    v5 = 0;
    goto LABEL_136;
  }

  v58 = *MEMORY[0x1E69D5DC0];
  if (![v4 isEqualToString:*MEMORY[0x1E69D5DC0]])
  {
    v63 = *MEMORY[0x1E69D5C78];
    if ([v4 isEqualToString:*MEMORY[0x1E69D5C78]])
    {
      v114.receiver = self;
      v114.super_class = VUIStoreMediaItem_iOS;
      v5 = [(VUILibraryMediaItem_iOS *)&v114 mediaItemMetadataForProperty:v63];
      if ([v5 length])
      {
        goto LABEL_144;
      }

      v64 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      objc_opt_class();
      v65 = objc_opt_isKindOfClass();

      if (v65)
      {
        v66 = MEMORY[0x1E69D5ED0];
      }

      else
      {
        v82 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        objc_opt_class();
        v83 = objc_opt_isKindOfClass();

        if ((v83 & 1) == 0)
        {
          goto LABEL_144;
        }

        v84 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        v85 = [v84 rentalID];

        v66 = MEMORY[0x1E69D5EC8];
        if (!v85)
        {
          v66 = MEMORY[0x1E69D5EB8];
        }
      }

      goto LABEL_150;
    }

    v67 = *MEMORY[0x1E69D5AB0];
    if ([v4 isEqualToString:*MEMORY[0x1E69D5AB0]])
    {
      v113.receiver = self;
      v113.super_class = VUIStoreMediaItem_iOS;
      v15 = [(VUILibraryMediaItem_iOS *)&v113 mediaItemMetadataForProperty:v67];
      if (v15)
      {
        goto LABEL_42;
      }

      v5 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_144;
      }

      v68 = [VUISidebandMediaEntityImageLoadParams alloc];
      v69 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v70 = v68;
      v71 = v69;
      v72 = 0;
    }

    else
    {
      v73 = *MEMORY[0x1E69D5AA8];
      if (![v4 isEqualToString:*MEMORY[0x1E69D5AA8]])
      {
        if ([v4 isEqualToString:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"])
        {
          v111.receiver = self;
          v111.super_class = VUIStoreMediaItem_iOS;
          v15 = [(VUILibraryMediaItem_iOS *)&v111 mediaItemMetadataForProperty:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"];
          if (v15)
          {
            goto LABEL_42;
          }

          v5 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

          if (!v5)
          {
            goto LABEL_144;
          }

          v77 = [VUISidebandMediaEntityImageLoadParams alloc];
          v78 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          v12 = [(VUISidebandMediaEntityImageLoadParams *)v77 initWithVideoManagedObject:v78 imageType:1];

          if (!v12)
          {
            goto LABEL_142;
          }

          v79 = objc_alloc(MEMORY[0x1E69DF730]);
          v34 = +[VUIMediaLibraryManager defaultManager];
          v80 = [v34 sidebandMediaLibrary];
          v5 = [v79 initWithObject:v12 imageLoader:v80 groupType:0];

LABEL_64:
          goto LABEL_143;
        }

        v41 = @"VUIMediaItemMetadataPostPlayVUIImageProxy";
        if ([v4 isEqualToString:@"VUIMediaItemMetadataPostPlayVUIImageProxy"])
        {
          v87 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

          if (!v87 || (v88 = [VUISidebandMediaEntityImageLoadParams alloc], -[VUIStoreMediaItem_iOS videoManagedObject](self, "videoManagedObject"), v89 = objc_claimAutoreleasedReturnValue(), v90 = -[VUISidebandMediaEntityImageLoadParams initWithVideoManagedObject:imageType:](v88, "initWithVideoManagedObject:imageType:", v89, 2), v89, !v90) || (v91 = objc_alloc(MEMORY[0x1E69DF730]), +[VUIMediaLibraryManager defaultManager](VUIMediaLibraryManager, "defaultManager"), v92 = objc_claimAutoreleasedReturnValue(), [v92 sidebandMediaLibrary], v93 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v91, "initWithObject:imageLoader:groupType:", v90, v93, 0), v93, v92, v90, !v5))
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
        if ([v4 isEqualToString:*MEMORY[0x1E69D5B80]])
        {
          v109.receiver = self;
          v109.super_class = VUIStoreMediaItem_iOS;
          v15 = [(VUILibraryMediaItem_iOS *)&v109 mediaItemMetadataForProperty:v94];
          if (v15)
          {
            goto LABEL_42;
          }

          v95 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          objc_opt_class();
          v96 = objc_opt_isKindOfClass();

          if (v96)
          {
            v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
            v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 episodeNumberInSeries];
            goto LABEL_17;
          }

          goto LABEL_165;
        }

        v97 = *MEMORY[0x1E69D5D30];
        if ([v4 isEqualToString:*MEMORY[0x1E69D5D30]])
        {
          v108.receiver = self;
          v108.super_class = VUIStoreMediaItem_iOS;
          v15 = [(VUILibraryMediaItem_iOS *)&v108 mediaItemMetadataForProperty:v97];
          if (v15)
          {
            goto LABEL_42;
          }

          v98 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          objc_opt_class();
          v99 = objc_opt_isKindOfClass();

          if ((v99 & 1) == 0)
          {
            goto LABEL_165;
          }

          v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
          v34 = [(VUISidebandMediaEntityImageLoadParams *)v12 season];
          v35 = [v34 seasonNumber];
          goto LABEL_63;
        }

        v100 = *MEMORY[0x1E69D5B20];
        if ([v4 isEqualToString:*MEMORY[0x1E69D5B20]])
        {
          v107.receiver = self;
          v107.super_class = VUIStoreMediaItem_iOS;
          v15 = [(VUILibraryMediaItem_iOS *)&v107 mediaItemMetadataForProperty:v100];
          if (!v15)
          {
            v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
            v13 = [(VUISidebandMediaEntityImageLoadParams *)v12 contentRatingRank];
            goto LABEL_17;
          }

LABEL_42:
          v5 = v15;
          goto LABEL_144;
        }

        v101 = *MEMORY[0x1E69D5B08];
        if (![v4 isEqualToString:*MEMORY[0x1E69D5B08]])
        {
          v105.receiver = self;
          v105.super_class = VUIStoreMediaItem_iOS;
          [(VUILibraryMediaItem_iOS *)&v105 mediaItemMetadataForProperty:v4];
          goto LABEL_25;
        }

        v106.receiver = self;
        v106.super_class = VUIStoreMediaItem_iOS;
        v5 = [(VUILibraryMediaItem_iOS *)&v106 mediaItemMetadataForProperty:v101];
        if ([v5 length])
        {
          goto LABEL_144;
        }

        v102 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

        if (!v102)
        {
          goto LABEL_144;
        }

        v103 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
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
      v15 = [(VUILibraryMediaItem_iOS *)&v112 mediaItemMetadataForProperty:v73];
      if (v15)
      {
        goto LABEL_42;
      }

      v5 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_144;
      }

      v74 = [VUISidebandMediaEntityImageLoadParams alloc];
      v69 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v70 = v74;
      v71 = v69;
      v72 = 1;
    }

    v6 = [(VUISidebandMediaEntityImageLoadParams *)v70 initWithVideoManagedObject:v71 imageType:v72];

    v75 = objc_alloc(MEMORY[0x1E69D5958]);
    v47 = +[VUIMediaLibraryManager defaultManager];
    v76 = [v47 sidebandMediaLibrary];
    v5 = [v75 initWithObject:v6 imageLoader:v76 groupType:0];

LABEL_100:
    goto LABEL_9;
  }

  v59 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v5 = [v59 valueForProperty:*MEMORY[0x1E69B3380]];

  if (![v5 length])
  {
    v60 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v61 = [v60 title];

    v5 = v61;
  }

  if (![v5 length])
  {
    v115.receiver = self;
    v115.super_class = VUIStoreMediaItem_iOS;
    v62 = [(VUILibraryMediaItem_iOS *)&v115 mediaItemMetadataForProperty:v58];
LABEL_151:
    v86 = v62;

    v5 = v86;
  }

LABEL_144:

  return v5;
}

- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:*MEMORY[0x1E69D5B58]])
  {
    v8 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    if (v8)
    {
      v9 = v6;
      if ([v9 count] && objc_msgSend(MEMORY[0x1E696ACB0], "isValidJSONObject:", v9))
      {
        v15 = 0;
        v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:&v15];
        v11 = v15;
        if ([v10 length])
        {
          [v8 setDownloadQOSMetricsJSONData:v10];
          v12 = +[VUIMediaLibraryManager defaultManager];
          v13 = [v12 sidebandMediaLibrary];
          [v13 saveChangesToManagedObjects];
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
    [(TVPBaseMediaItem *)&v14 setMediaItemMetadata:v6 forProperty:v7];
  }
}

- (void)prepareForLoadingWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VUIStoreMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke;
  v7[3] = &unk_1E87333E8;
  v5 = v4;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  v6.receiver = self;
  v6.super_class = VUIStoreMediaItem_iOS;
  [(VUILibraryMediaItem_iOS *)&v6 prepareForLoadingWithCompletion:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)prepareForPlaybackInitiationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__VUIStoreMediaItem_iOS_prepareForPlaybackInitiationWithCompletion___block_invoke;
    aBlock[3] = &unk_1E87333C0;
    objc_copyWeak(&v11, &location);
    v10 = v4;
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
        if (!v4)
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
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    (*(v4 + 2))(v4, 1, 0);
  }

LABEL_14:
}

- (BOOL)shouldRetryPlaybackForError:(id)a3
{
  v4 = a3;
  if (![(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]]|| [(VUIStoreMediaItem_iOS *)self playbackType]!= 5 && [(VUIStoreMediaItem_iOS *)self playbackType]!= 6)
  {
    goto LABEL_10;
  }

  v5 = [v4 domain];
  if (![v5 isEqualToString:@"TVPlaybackErrorDomain"])
  {

    goto LABEL_10;
  }

  v6 = [v4 code];

  if (v6 != 811)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v7 = [(VUIStoreMediaItem_iOS *)self _rentalExpirationDate];
  if (!v7 || ([MEMORY[0x1E695DF00] date], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "laterDate:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == v7))
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

- (id)replacementErrorForPlaybackError:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(__CFString *)v4 domain];
  if (![v5 isEqualToString:@"TVPlaybackErrorDomain"])
  {

    goto LABEL_7;
  }

  v6 = [(__CFString *)v4 code];

  if (v6 != 827)
  {
LABEL_7:
    v12 = [(VUIStoreMediaItem_iOS *)self fpsKeyError];
    if (!v12)
    {
      v7 = v4;
      if (!TVPErrorIsSKDError())
      {
        goto LABEL_26;
      }

      v12 = v4;
      if (!v12)
      {
        v7 = 0;
        goto LABEL_26;
      }
    }

    v10 = v12;
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
          v29 = [v10 code];
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          if (v29 == -345028)
          {
            v24 = 827;
          }

          else
          {
            v24 = 820;
          }
        }

        v7 = [v23 initWithDomain:@"TVPlaybackErrorDomain" code:v24 userInfo:v11];
        v13 = v4;
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

  v7 = v4;
  if (![(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    goto LABEL_26;
  }

  v8 = [(__CFString *)v4 userInfo];
  v9 = *MEMORY[0x1E696AA08];
  v10 = [v8 objectForKey:*MEMORY[0x1E696AA08]];

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

  v7 = v4;
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

- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6
{
  v6 = a6;
  v11 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF00] date];
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
      v19 = fmax(a3 - v18, 0.0);
      [v15 doubleValue];
      if (v19 >= v20)
      {
        [v15 doubleValue];
        v19 = v21;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    }

    v22 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v22 setBookmarkTime:v23];

    v24 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    [v24 setBookmarkTimeStamp:v12];

    v25 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    [v25 setMainContentRelativeBookmarkTime:v17];

    v26 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    [v26 setMainContentRelativeBookmarkTimeStamp:v12];

    v27 = +[VUIMediaLibraryManager defaultManager];
    v28 = [v27 sidebandMediaLibrary];
    [v28 saveChangesToManagedObjects];
  }

  v29.receiver = self;
  v29.super_class = VUIStoreMediaItem_iOS;
  [(VUILibraryMediaItem_iOS *)&v29 updateBookmarkWithSuggestedTime:v6 forElapsedTime:a3 duration:a4 playbackOfMediaItemIsEnding:a5];
}

- (void)processFinishedDownloadWithCompletion:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "processFinishedDownloadWithCompletion", buf, 2u);
  }

  v6 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
  v7 = [v6 localPlaybackURL];

  v47 = 0;
  v8 = [v7 pathExtension];
  if (![v8 isEqualToString:@"movpkg"])
  {
    goto LABEL_19;
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v7 path];
  if (![v9 fileExistsAtPath:v10 isDirectory:&v47])
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
      v51 = v7;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "After downloading, CRABS download has incorrect file extension of .movpkg: %@", buf, 0xCu);
    }

    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [v13 BOOLForKey:@"DisableCRABSMovpkgWorkound"];

    if ((v14 & 1) == 0)
    {
      v15 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v8 = [v15 playbackURL];

      v9 = [v8 pathExtension];
      if (![v9 length])
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v16 = [v7 URLByDeletingPathExtension];
      v10 = [v16 URLByAppendingPathExtension:v9];

      v17 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v10;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Correcting CRABS download file URL to %@", buf, 0xCu);
      }

      v18 = [MEMORY[0x1E696AC08] defaultManager];
      v46 = 0;
      v19 = [v18 moveItemAtURL:v7 toURL:v10 error:&v46];
      v20 = v46;

      if (v19)
      {
        v21 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        [v21 setLocalPlaybackURL:v10];

        v22 = +[VUIMediaLibraryManager defaultManager];
        v23 = [v22 sidebandMediaLibrary];
        [v23 saveChangesToManagedObjects];

        v24 = v10;
        v7 = v24;
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
  v25 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
  v26 = [v25 localPlaybackURL];
  v27 = [v26 pathExtension];
  v28 = [v27 isEqualToString:@"movpkg"];

  if ((v28 & 1) == 0)
  {
    v29 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v30 = [v29 redownloadProductResponseDictionary];

    v31 = [v30 objectForKey:@"sinfs"];
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

    v35 = [MEMORY[0x1E6993BC8] fileProcessor];
    v36 = [v7 path];
    v37 = [v35 processPurchasedItem:v36 withAttributes:v33];

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
        if (v4)
        {
          goto LABEL_30;
        }
      }

      else if (v4)
      {
LABEL_30:
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = VUIStoreMediaItemErrorDomain;
        v48 = *MEMORY[0x1E696AA08];
        v49 = v37;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v42 = [v39 initWithDomain:v40 code:-123009 userInfo:v41];

        v4[2](v4, v42);
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
    v45 = v4;
    [(VUIStoreMediaItem_iOS *)self _checkoutRentalWithCheckoutType:1 startPlaybackClock:0 completion:v44];
  }

  else if (v4)
  {
    v4[2](v4, 0);
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

  v3 = [(VUIStoreMediaItem_iOS *)self playbackURL];
  [(VUIStoreMediaItem_iOS *)self _deleteDownloadKeyCookieForURL:v3];

  [(VUIStoreMediaItem_iOS *)self setPlaybackType:0];
  [(VUIStoreMediaItem_iOS *)self setPlaybackURL:0];
  [(VUIStoreMediaItem_iOS *)self setSinfsDict:0];
  [(VUIStoreMediaItem_iOS *)self setFileSize:0];
  [(VUIStoreMediaItem_iOS *)self setDownloadDestinationURL:0];
  [(VUIStoreMediaItem_iOS *)self setDownloadToken:0];
  [(VUIStoreMediaItem_iOS *)self setDownloadMonitor:0];
  [(VUIStoreMediaItem_iOS *)self setParentReportingToken:0];
  v4 = [(VUIStoreMediaItem_iOS *)self storeFPSKeyLoader];
  [v4 sendStreamingStopRequestIfNecessary];

  [(VUIStoreMediaItem_iOS *)self setStoreFPSKeyLoader:0];
  [(VUIStoreMediaItem_iOS *)self setMediaItemMetadata:0 forProperty:*MEMORY[0x1E69D5CA8]];
  v5.receiver = self;
  v5.super_class = VUIStoreMediaItem_iOS;
  [(VUILibraryMediaItem_iOS *)&v5 cleanUpMediaItem];
}

- (void)mediaItemAllInitialLoadingComplete:(id)a3 totalTime:(double)a4 player:(id)a5
{
  v7 = a3;
  v8 = a5;
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

- (void)loadFairPlayStreamingKeyRequests:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = a4;
  v7 = [(VUIStoreMediaItem_iOS *)self playbackType];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = v8;
  v36 = v6;
  if ((v7 - 4) > 2)
  {
    [v8 addObjectsFromArray:v6];
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = v6;
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

    v6 = v36;
  }

  if ([v9 count])
  {
    v18 = [(VUIStoreMediaItem_iOS *)self storeFPSKeyLoader];

    if (!v18)
    {
      v19 = [(VUIStoreMediaItem_iOS *)self fpsCertificateURL];
      v20 = [(VUIStoreMediaItem_iOS *)self fpsKeyServerURL];
      v21 = [[VUIStoreFPSKeyLoader alloc] initWithCertificateURL:v19 keyServerURL:v20];
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

    v24 = [(VUIStoreMediaItem_iOS *)self fpsAdditionalServerParams];
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
          [v31 setAdditionalRequestParams:v24];
          v32 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v29];
          [v31 setAdamID:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v27);
    }

    v33 = [(VUIStoreMediaItem_iOS *)self storeFPSKeyLoader];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__VUIStoreMediaItem_iOS_loadFairPlayStreamingKeyRequests_completion___block_invoke;
    v37[3] = &unk_1E872D7E0;
    v34 = v35;
    v38 = v35;
    [v33 loadFairPlayStreamingKeyRequests:v25 completion:v37];

    v6 = v36;
  }

  else
  {
    v34 = v35;
    if (v35)
    {
      v35[2](v35);
    }
  }
}

- (void)storeFPSKeyLoader:(id)a3 willFailWithError:(id)a4 forKeyRequest:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(VUIStoreMediaItem_iOS *)self fpsKeyError];

  if (v6)
  {
    if (!v7)
    {
      [(VUIStoreMediaItem_iOS *)self setFpsKeyError:v6];
      if (TVPErrorIsFatalSKDError())
      {
        if ([v6 code] != -345015)
        {
          v8 = v6;
          v9 = [v8 domain];
          if ([v9 isEqualToString:*MEMORY[0x1E69D60E8]])
          {
            v10 = [v8 code];

            if (v10 != -345018)
            {
LABEL_9:
              v14 = *MEMORY[0x1E69D5E10];
              v17[0] = *MEMORY[0x1E69D5E18];
              v17[1] = v14;
              v18[0] = MEMORY[0x1E695E118];
              v18[1] = v8;
              v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
              v16 = [MEMORY[0x1E696AD88] defaultCenter];
              [v16 postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v15];

              goto LABEL_10;
            }

            v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v9 setObject:v8 forKey:*MEMORY[0x1E696AA08]];
            v11 = +[VUILocalizationManager sharedInstance];
            v12 = [v11 localizedStringForKey:@"SignInToWatchThisVideoErrorDescription"];
            [v9 setObject:v12 forKey:*MEMORY[0x1E696A598]];

            v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:813 userInfo:v9];
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

- (void)storeFPSKeyLoader:(id)a3 didLoadOfflineKeyData:(id)a4 forKeyRequest:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = 134218240;
    v12 = [v7 length];
    v13 = 2048;
    v14 = [v8 requestID];
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Received offline key data with length %lu for id %lu", &v11, 0x16u);
  }

  [(VUIStoreMediaItem_iOS *)self _persistOfflineKeyData:v7 forKeyRequest:v8];
}

- (void)storeFPSKeyLoader:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4 playbackStartDate:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Received updated rental expiration date from FPS loader: %@", &v13, 0xCu);
  }

  v12 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Received updated rental playback start date from FPS loader: %@", &v13, 0xCu);
  }

  [(VUIStoreMediaItem_iOS *)self _updateRentalPlaybackStartDate:v10];
}

- (void)_updateRentalPlaybackStartDate:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v6 = *MEMORY[0x1E696FAF8];
    v7 = [v5 valueForProperty:*MEMORY[0x1E696FAF8]];

    if (v7 && ([v7 doubleValue], v8 > 0.0) && (v9 = MEMORY[0x1E695DF00], objc_msgSend(v7, "doubleValue"), objc_msgSend(v9, "dateWithTimeIntervalSinceReferenceDate:"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
    }

    else
    {
      v12 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v11 = [v12 rentalPlaybackStartDate];

      if (!v11)
      {
        goto LABEL_8;
      }
    }

    [v11 timeIntervalSinceDate:v4];
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
      v22 = v4;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Updating MPMediaItem with new rental playback start date: %@", &v21, 0xCu);
    }

    v15 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v16 = MEMORY[0x1E696AD98];
    [v4 timeIntervalSinceReferenceDate];
    v17 = [v16 numberWithDouble:?];
    [v15 setValue:v17 forProperty:v6 withCompletionBlock:0];

    v18 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v19 = [MEMORY[0x1E695DF00] date];
    [v18 setRentalPlaybackStartDate:v19];

LABEL_13:
  }
}

- (void)_configureForLocalPlaybackWithURL:(id)a3 completion:(id)a4
{
  v14 = a4;
  v6 = a3;
  v7 = [v6 pathExtension];
  v8 = [v7 isEqualToString:@"movpkg"];

  [(VUIStoreMediaItem_iOS *)self setPlaybackURL:v6];
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

  v14[2](v14, 1, 0);
}

- (void)_configureForPlaybackFromExistingDownload:(id)a3 downloadManager:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[VUIStoreDownloadMonitor alloc] initWithDownload:v8 downloadManager:v9];
  [(VUIStoreMediaItem_iOS *)self setDownloadMonitor:v11];
  v12 = [(VUIStoreMediaItem_iOS *)self loadingContext];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke;
  v15[3] = &unk_1E8733438;
  objc_copyWeak(v18, &location);
  v18[1] = v12;
  v13 = v10;
  v17 = v13;
  v14 = v8;
  v16 = v14;
  [(VUIStoreDownloadMonitor *)v11 waitForDownloadToBecomePlayableWithCompletion:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

- (void)_configureForStreamingPlaybackWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v6 = *MEMORY[0x1E69B2FD8];
  v7 = [v5 valueForProperty:*MEMORY[0x1E69B2FD8]];

  v8 = [(VUIStoreMediaItem_iOS *)self hlsPlaybackURL];
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 BOOLForKey:@"ForceCRABS"];

  if (v10)
  {
    v11 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Will attempt CRABS playback since ForceCRABS defaults key is set", buf, 2u);
    }
  }

  if ((([v7 length] | v8) == 0) | v10 & 1)
  {
    v12 = [(VUIStoreMediaItem_iOS *)self loadingContext];
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
    v32[1] = v12;
    v33 = v10;
    v31 = v4;
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

    if (v8)
    {
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v7];
      v18 = [(VUIStoreMediaItem_iOS *)self _url:v8 hasSameAdamIDAsURL:v17];

      if (v18)
      {
        v19 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v8;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Updating ML3Track's HLS playlist URL with value from UTS: %@", buf, 0xCu);
        }

        v20 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v35 = v8;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        v34 = v6;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        [v20 setValues:v21 forProperties:v22 async:1 withCompletionBlock:0];
      }

      v23 = v8;
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

    (*(v4 + 2))(v4, 1, 0);
  }
}

- (void)_configureForDownloadingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VUIStoreMediaItem_iOS *)self isForStartingDownload];
  v6 = sLogObject_14;
  v7 = os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT);
  if (v5)
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

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 BOOLForKey:@"ForceCRABS"];

  if (v10)
  {
    v11 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Will attempt CRABS download since ForceCRABS defaults key is set", buf, 2u);
    }
  }

  v12 = [(VUIStoreMediaItem_iOS *)self loadingContext];
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__VUIStoreMediaItem_iOS__configureForDownloadingWithCompletion___block_invoke;
  v14[3] = &unk_1E8733460;
  objc_copyWeak(v16, buf);
  v16[1] = v12;
  v17 = v10;
  v13 = v4;
  v15 = v13;
  [(VUIStoreMediaItem_iOS *)self _performRedownloadWithType:1 completion:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

- (void)_performRedownloadWithType:(int64_t)a3 completion:(id)a4
{
  v6 = *MEMORY[0x1E69D5AE0];
  v7 = a4;
  v12 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:v6];
  if ([v12 length])
  {
    v8 = [MEMORY[0x1E698C818] buyParamsWithString:v12];
    v9 = v8;
    if (!a3)
    {
      [v8 setParameter:@"1" forKey:@"playback"];
      [v9 setParameter:@"1" forKey:@"lightweight"];
      if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
      {
        [v9 setParameter:MEMORY[0x1E695E118] forKey:@"streamingRental"];
      }
    }

    v10 = +[VUIRedownloadEndpointManager sharedInstance];
    [v10 performRedownloadWithType:a3 buyParams:v9 completion:v7];

    v7 = v10;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v11 initWithDomain:VUIStoreMediaItemErrorDomain code:-123001 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
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

- (void)_setDownloadKeyCookieWithURL:(id)a3 downloadKey:(id)a4
{
  v17[5] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 && v5)
  {
    v7 = a3;
    v8 = [v7 host];
    v9 = [v7 path];

    if (v8 && v9)
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
      v17[2] = v8;
      v17[3] = v9;
      v16[4] = *MEMORY[0x1E696A470];
      v17[4] = @"0";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
      v14 = [v10 cookieWithProperties:v13];

      v15 = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
      [v15 setCookie:v14];
    }
  }
}

- (void)_deleteDownloadKeyCookieForURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    v5 = [v4 cookiesForURL:v3];

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
          v11 = [v10 name];
          v12 = [v11 isEqualToString:@"downloadKey"];

          if (v12)
          {
            v13 = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
            [v13 deleteCookie:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (id)_downloadForThisMediaItemReturningDownloadManager:(id *)a3
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
      v16 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v17 = [v16 valueForProperty:v32];

      v18 = [v14 longLongValue];
      if (v18 == -[VUILibraryMediaItem_iOS persistentID](self, "persistentID") || (v15 ? (v22 = v17 == 0) : (v22 = 1), !v22 && [v15 isEqualToNumber:v17]))
      {
        v19 = [v11 downloadPhaseIdentifier];
        if (([v19 isEqualToString:v30] & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", v28) & 1) == 0)
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

  if (a3)
  {
    v23 = v25;
    *a3 = v25;
  }

  return v29;
}

- (id)_videoPlaybackTypeDescription
{
  v2 = [(VUIStoreMediaItem_iOS *)self playbackType];
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E8733480[v2];
  }
}

- (id)_offlineKeyDataForKeyRequest:(id)a3
{
  v4 = a3;
  if (![(VUIStoreMediaItem_iOS *)self useSidebandLibraryForPlaybackKeys])
  {
    v12 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v5 = [v12 valueForProperty:*MEMORY[0x1E69B2FD0]];

    if (!v5)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v13 = MEMORY[0x1E696ACD0];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v23 = 0;
    v18 = [v13 unarchivedObjectOfClasses:v17 fromData:v5 error:&v23];
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
      v20 = [v4 keyIdentifier];
      v21 = [v20 absoluteString];

      if (v21)
      {
        v7 = [v18 objectForKey:v21];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_16;
    }

    v7 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v5 = [v4 keyIdentifier];
  v6 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];

  v7 = 0;
  if (v6 && v5)
  {
    v8 = +[VUIMediaLibraryManager defaultManager];
    v9 = [v8 sidebandMediaLibrary];
    v10 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v11 = [v9 fpsKeyInfoForVideo:v10 keyURI:v5 createIfNeeded:0 wasCreated:0];

    v7 = [v11 keyData];
  }

LABEL_17:

  return v7;
}

- (void)_persistOfflineKeyData:(id)a3 forKeyRequest:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(VUIStoreMediaItem_iOS *)self useSidebandLibraryForPlaybackKeys])
  {
    v8 = [v7 keyIdentifier];
    v9 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    if (!v9 || !v8)
    {
LABEL_9:

      goto LABEL_22;
    }

    v10 = [v6 length];

    if (v10)
    {
      v11 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
      v12 = [v11 downloadState];

      v13 = sLogObject_14;
      v14 = os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          *buf = 138412290;
          v41 = v7;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Saving offline key data to database: %@", buf, 0xCu);
        }

        v15 = +[VUIMediaLibraryManager defaultManager];
        v16 = [v15 sidebandMediaLibrary];
        v17 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        v9 = [v16 fpsKeyInfoForVideo:v17 keyURI:v8 createIfNeeded:1 wasCreated:0];

        v18 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
        [v9 populateFromKeyRequest:v7 video:v18];

        v19 = +[VUIMediaLibraryManager defaultManager];
        v20 = [v19 sidebandMediaLibrary];
        [v20 saveChangesToManagedObjects];

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
    v21 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v22 = *MEMORY[0x1E69B2FD0];
    v8 = [v21 valueForProperty:*MEMORY[0x1E69B2FD0]];

    if (!v8)
    {
      goto LABEL_15;
    }

    v23 = MEMORY[0x1E696ACD0];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v37 = 0;
    v28 = [v23 unarchivedObjectOfClasses:v27 fromData:v8 error:&v37];
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

    v31 = [v7 keyIdentifier];
    v32 = [v31 absoluteString];

    if ([v6 length] && v32)
    {
      [v30 setObject:v6 forKey:v32];
      v33 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:0];
      if (v33)
      {
        v34 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v39 = v33;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
        v38 = v22;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [v34 setValues:v35 forProperties:v36 async:1 withCompletionBlock:0];
      }
    }
  }

LABEL_22:
}

- (void)_checkoutRentalWithCheckoutType:(unint64_t)a3 startPlaybackClock:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
  v10 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
  objc_initWeak(&location, self);
  v11 = +[VUIRentalManager sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__VUIStoreMediaItem_iOS__checkoutRentalWithCheckoutType_startPlaybackClock_completion___block_invoke;
  v13[3] = &unk_1E87333C0;
  objc_copyWeak(&v15, &location);
  v12 = v8;
  v14 = v12;
  [v11 checkOutRentalWithID:v9 dsid:v10 checkoutType:a3 startPlaybackClock:v5 completion:v13];

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

- (void)_externalPlaybackTypeDidChange:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = [v4 currentMediaItem];
  v6 = [v5 isEqualToMediaItem:self];

  if (v6 && [v4 externalPlaybackType] == 1 && -[VUIStoreMediaItem_iOS hasTrait:](self, "hasTrait:", *MEMORY[0x1E69D5E60]))
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
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v15];

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

  v6 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  if (v6)
  {
    v7 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v8 = [v7 valueForProperty:*MEMORY[0x1E69B2FD8]];
  }

  else
  {
    v7 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v9 = [v7 playbackURL];
    v8 = [v9 absoluteString];
  }

  if (![v8 length])
  {
    v10 = [(VUIStoreMediaItem_iOS *)self hlsPlaybackURL];
    v11 = [v10 absoluteString];

    v8 = v11;
  }

  if ([v8 length])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
    v13 = [(VUIStoreMediaItem_iOS *)self _hlsURLEnsuringDsidQueryParamIsPresentFromURL:v12];

    v14 = [VUIPlaybackUtilities updatedHLSURL:v13 forPlaybackContext:[(VUIStoreMediaItem_iOS *)self playbackContext]];

    v15 = [v14 absoluteString];
    if ([v15 length])
    {
      v16 = v15;

      v8 = v16;
    }

    [v3 setObject:v8 forKey:*MEMORY[0x1E6987C18]];
  }

  if ([(VUIStoreMediaItem_iOS *)self hasTrait:*MEMORY[0x1E69D5E60]])
  {
    v17 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
    if (v17)
    {
      [v3 setObject:v17 forKey:*MEMORY[0x1E6987C38]];
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
    v17 = [(VUIStoreMediaItem_iOS *)self _iTunesStoreContentPurchasedMediaKind];
    if (v17)
    {
      [v3 setObject:v17 forKey:*MEMORY[0x1E6987C30]];
    }

    v18 = MEMORY[0x1E698CBB8];
    v19 = [MEMORY[0x1E698CAC8] currentProcess];
    v20 = [v18 userAgentForProcessInfo:v19];

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
  v3 = [(VUILibraryMediaItem_iOS *)self ml3Track];

  if (!v3)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v14 = [v8 dateByAddingTimeInterval:2592000.0];
    goto LABEL_7;
  }

  v4 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v5 = [v4 valueForProperty:*MEMORY[0x1E69B31A8]];
  [v5 doubleValue];
  v7 = v6;

  if (v7 != 0.0)
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
    v9 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v10 = [v9 valueForProperty:*MEMORY[0x1E69B3188]];
    [v10 doubleValue];
    v12 = v11;

    v13 = 0;
    if (!v8 || v12 == 0.0)
    {
      goto LABEL_8;
    }

    v14 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v8 sinceDate:v12];
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
  v3 = [(VUILibraryMediaItem_iOS *)self ml3Track];

  if (!v3)
  {
    v16 = [(VUIStoreMediaItem_iOS *)self videoManagedObject];
    v8 = [v16 rentalPlaybackStartDate];

    if (!v8)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v14 = objc_alloc(MEMORY[0x1E695DF00]);
    v15 = 172800.0;
    goto LABEL_8;
  }

  v4 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v5 = [v4 valueForProperty:*MEMORY[0x1E69B31A0]];
  [v5 doubleValue];
  v7 = v6;

  if (v7 == 0.0)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
  v9 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v10 = [v9 valueForProperty:*MEMORY[0x1E69B3198]];
  [v10 doubleValue];
  v12 = v11;

  v13 = 0;
  if (v8 && v12 != 0.0)
  {
    v14 = objc_alloc(MEMORY[0x1E695DF00]);
    v15 = v12;
LABEL_8:
    v13 = [v14 initWithTimeInterval:v8 sinceDate:v15];
  }

LABEL_11:

LABEL_12:

  return v13;
}

- (id)_rentalExpirationDate
{
  v3 = [(VUIStoreMediaItem_iOS *)self _rentalPlaybackEndDate];
  v4 = [(VUIStoreMediaItem_iOS *)self _rentalEndDate];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 earlierDate:v4];
  }

  else if (v3)
  {
    v6 = v3;
  }

  else
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6 = v4;
  }

  v7 = v6;
LABEL_9:
  v8 = v7;

  return v7;
}

- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 vui_containsQueryParamWithName:@"dsid"] & 1) == 0)
  {
    v8 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "dsid query param is missing from HLS URL: %@", &v15, 0xCu);
    }

    v9 = [(VUIStoreMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    v10 = [v9 stringValue];

    v7 = v5;
    if ([v10 length])
    {
      v11 = [v5 vui_URLByAddingQueryParamWithName:@"dsid" value:v10];
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

- (BOOL)_url:(id)a3 hasSameAdamIDAsURL:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:0];
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
      v13 = [v9 queryItems];
      v14 = [v11 queryItems];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
      v36 = v11;
      if (v16)
      {
        v17 = v16;
        v34 = v14;
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
            v21 = [v20 name];
            v22 = [v21 caseInsensitiveCompare:@"a"];

            if (!v22)
            {
              v35 = [v20 value];
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

        v35 = 0;
LABEL_17:
        v14 = v34;
      }

      else
      {
        v35 = 0;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v23 = v14;
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
            v29 = [v28 name];
            v30 = [v29 caseInsensitiveCompare:@"a"];

            if (!v30)
            {
              v31 = [v28 value];

              v8 = 0;
              v32 = v35;
              if (v35)
              {
                v9 = v37;
                v7 = v38;
                v11 = v36;
                if (v31)
                {
                  v8 = [v35 isEqualToString:v31];
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

      v31 = 0;
      v8 = 0;
      v9 = v37;
      v7 = v38;
      v32 = v35;
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