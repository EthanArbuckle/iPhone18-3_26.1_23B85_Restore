@interface VUIStoreAuxMediaItem
+ (NSString)mediaUserAgent;
+ (void)initialize;
- (BOOL)hasTrait:(id)trait;
- (BOOL)isEqualToMediaItem:(id)item;
- (VUIStoreAuxMediaItem)initWithURL:(id)l;
- (VUIStoreAuxMediaItem)initWithVideoManagedObject:(id)object isForStartingDownload:(BOOL)download;
- (id)_offlineKeyDataForKeyRequest:(id)request;
- (id)_replacementErrorForITunesPlaybackError:(id)error;
- (id)_replacementErrorForPlaybackError:(id)error;
- (id)_tvpRatingDomainFromUTSRatingDomain:(id)domain;
- (id)mediaItemMetadataForProperty:(id)property;
- (id)replacementErrorForPlaybackError:(id)error;
- (void)_scrubPlayerItemDidLoad:(id)load;
- (void)cleanUpMediaItem;
- (void)dealloc;
- (void)loadFairPlayStreamingKeyRequests:(id)requests completion:(id)completion;
- (void)mediaItem:(id)item didChangeFromPlaybackState:(id)state toPlaybackState:(id)playbackState updatedRate:(double)rate player:(id)player;
- (void)mediaItem:(id)item errorDidOccur:(id)occur player:(id)player;
- (void)prepareForLoadingWithCompletion:(id)completion;
- (void)resetReportingEventCollection;
- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property;
- (void)storeFPSKeyLoader:(id)loader didLoadOfflineKeyData:(id)data forKeyRequest:(id)request;
- (void)storeFPSKeyLoader:(id)loader willFailWithError:(id)error forKeyRequest:(id)request;
- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending;
- (void)updateOfflineKeyWithIdentifier:(id)identifier updatedOfflineKeyData:(id)data;
@end

@implementation VUIStoreAuxMediaItem

+ (void)initialize
{
  if (initialize_onceToken_11 != -1)
  {
    +[VUIStoreAuxMediaItem initialize];
  }
}

void __34__VUIStoreAuxMediaItem_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIStoreAuxMediaItem");
  v1 = sLogObject_23;
  sLogObject_23 = v0;

  v2 = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");
  v3 = sSecureKeyDeliveryLogObject_0;
  sSecureKeyDeliveryLogObject_0 = v2;
}

+ (NSString)mediaUserAgent
{
  v2 = MEMORY[0x1E698CBB8];
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  v4 = [v2 userAgentForProcessInfo:currentProcess];

  return v4;
}

- (VUIStoreAuxMediaItem)initWithURL:(id)l
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = VUIStoreAuxMediaItem;
  v5 = [(TVPBaseMediaItem *)&v21 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    pathExtension = [lCopy pathExtension];
    if ([pathExtension isEqualToString:@"m3u8"] & 1) != 0 || (objc_msgSend(pathExtension, "isEqualToString:", @"m3u"))
    {
      v9 = 1;
    }

    else
    {
      v9 = [pathExtension isEqualToString:@"movpkg"];
    }

    v5->_isHLS = v9;
    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    ams_DSID = [activeAccount ams_DSID];
    ams_storefront = [activeAccount ams_storefront];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__VUIStoreAuxMediaItem_initWithURL___block_invoke;
    v17[3] = &unk_1E872E008;
    v13 = v5;
    v18 = v13;
    v19 = ams_DSID;
    v20 = ams_storefront;
    v14 = ams_storefront;
    v15 = ams_DSID;
    [(TVPBaseMediaItem *)v13 performMediaItemMetadataTransactionWithBlock:v17];
    [(VUIStoreAuxMediaItem *)v13 resetReportingEventCollection];
  }

  return v5;
}

uint64_t __36__VUIStoreAuxMediaItem_initWithURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMediaItemMetadata:*(a1 + 40) forProperty:*MEMORY[0x1E69D5B30]];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *MEMORY[0x1E69D5DA0];

  return [v2 setMediaItemMetadata:v3 forProperty:v4];
}

- (VUIStoreAuxMediaItem)initWithVideoManagedObject:(id)object isForStartingDownload:(BOOL)download
{
  downloadCopy = download;
  objectCopy = object;
  if (!objectCopy && os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
  {
    [VUIStoreAuxMediaItem initWithVideoManagedObject:isForStartingDownload:];
  }

  downloadState = [objectCopy downloadState];
  if (!downloadCopy)
  {
    v8 = downloadState;
    if (downloadState != 1)
    {
      v9 = sLogObject_23;
      v10 = os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT);
      if (v8 == 2)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Media item is fully downloaded.  Using file path URL", buf, 2u);
        }

        localPlaybackURL = [objectCopy localPlaybackURL];
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 0;
        v16 = "Media item is not being used for downloading.  Using streaming URL";
        v17 = v9;
LABEL_19:
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  v12 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Media item will start downloading or is already being downloaded", buf, 2u);
  }

  downloadURL = [objectCopy downloadURL];
  v14 = sLogObject_23;
  v15 = os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT);
  if (!downloadURL)
  {
    if (v15)
    {
      *buf = 0;
      v16 = "Using streaming URL for download since download URL is not available";
      v17 = v14;
      goto LABEL_19;
    }

LABEL_20:
    localPlaybackURL = [objectCopy playbackURL];
LABEL_21:
    downloadURL = localPlaybackURL;
    goto LABEL_22;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Using download URL", buf, 2u);
  }

LABEL_22:
  v18 = [(VUIStoreAuxMediaItem *)self initWithURL:downloadURL];
  [(VUIStoreAuxMediaItem *)v18 setIsForStartingDownload:downloadCopy];
  [(VUIStoreAuxMediaItem *)v18 setVideoManagedObject:objectCopy];
  fpsCertificateURL = [objectCopy fpsCertificateURL];
  [(VUIStoreAuxMediaItem *)v18 setFpsCertificateURL:fpsCertificateURL];

  fpsKeyServerURL = [objectCopy fpsKeyServerURL];
  [(VUIStoreAuxMediaItem *)v18 setFpsKeyServerURL:fpsKeyServerURL];

  additionalFPSRequestParams = [objectCopy additionalFPSRequestParams];
  [(VUIStoreAuxMediaItem *)v18 setFpsAdditionalServerParams:additionalFPSRequestParams];

  -[VUIStoreAuxMediaItem setIsSportingEvent:](v18, "setIsSportingEvent:", [objectCopy isSportingEvent]);
  vpafMetricsJSONData = [objectCopy vpafMetricsJSONData];
  v43 = vpafMetricsJSONData;
  v44 = downloadURL;
  if (![vpafMetricsJSONData length])
  {
    v25 = 0;
    goto LABEL_31;
  }

  v50 = 0;
  v23 = [MEMORY[0x1E696ACB0] JSONObjectWithData:vpafMetricsJSONData options:0 error:&v50];
  v24 = v50;
  if (!v23)
  {
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreAuxMediaItem initWithVideoManagedObject:isForStartingDownload:];
    }

    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  v25 = v23;
LABEL_30:

LABEL_31:
  bookmarkTime = [objectCopy bookmarkTime];
  bookmarkTimeStamp = [objectCopy bookmarkTimeStamp];
  mainContentRelativeBookmarkTime = [objectCopy mainContentRelativeBookmarkTime];
  mainContentRelativeBookmarkTimeStamp = [objectCopy mainContentRelativeBookmarkTimeStamp];
  if (bookmarkTime)
  {
    v30 = mainContentRelativeBookmarkTimeStamp;
    v31 = bookmarkTimeStamp;
    v32 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:bookmarkTime timestamp:bookmarkTimeStamp type:0 source:@"Sideband Library"];
    startTimeCollection = [(VUIBaseMediaItem *)v18 startTimeCollection];
    [startTimeCollection addStartTimeInfo:v32];

    bookmarkTimeStamp = v31;
    mainContentRelativeBookmarkTimeStamp = v30;
  }

  if (mainContentRelativeBookmarkTime)
  {
    v34 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:mainContentRelativeBookmarkTime timestamp:mainContentRelativeBookmarkTimeStamp type:1 source:@"Sideband Library"];
    [(VUIBaseMediaItem *)v18 startTimeCollection];
    v36 = v35 = bookmarkTimeStamp;
    [v36 addStartTimeInfo:v34];

    bookmarkTimeStamp = v35;
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __73__VUIStoreAuxMediaItem_initWithVideoManagedObject_isForStartingDownload___block_invoke;
  v45[3] = &unk_1E872E5D8;
  v46 = v18;
  v47 = objectCopy;
  v48 = v25;
  v37 = v46;
  v49 = v37;
  v38 = objectCopy;
  v39 = v25;
  [(TVPBaseMediaItem *)v37 performMediaItemMetadataTransactionWithBlock:v45];
  v40 = v49;
  v41 = v37;

  return v41;
}

void __73__VUIStoreAuxMediaItem_initWithVideoManagedObject_isForStartingDownload___block_invoke(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) canonicalID];
  [v2 setMediaItemMetadata:v3 forProperty:*MEMORY[0x1E69D5AE8]];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) title];
  [v4 setMediaItemMetadata:v5 forProperty:*MEMORY[0x1E69D5DC0]];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) externalID];
  [v6 setMediaItemMetadata:v7 forProperty:*MEMORY[0x1E69D5B98]];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) adamID];
  [v8 setMediaItemMetadata:v9 forProperty:*MEMORY[0x1E69D5DA8]];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) rtcServiceIdentifier];
  [v10 setMediaItemMetadata:v11 forProperty:*MEMORY[0x1E69D5D40]];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) brandID];
  [v12 setMediaItemMetadata:v13 forProperty:*MEMORY[0x1E69D5AD0]];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) brandName];
  [v14 setMediaItemMetadata:v15 forProperty:*MEMORY[0x1E69D5AD8]];

  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) contentRatingRank];
  [v16 setMediaItemMetadata:v17 forProperty:*MEMORY[0x1E69D5B20]];

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) dsid];
  [v18 setMediaItemMetadata:v19 forProperty:*MEMORY[0x1E69D5B30]];

  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) referenceID];
  [v20 setMediaItemMetadata:v21 forProperty:*MEMORY[0x1E69D5CD8]];

  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) genreName];
  [v22 setMediaItemMetadata:v23 forProperty:*MEMORY[0x1E69D5BE0]];

  v24 = *(a1 + 32);
  v25 = [*(a1 + 40) releaseDate];
  [v24 setMediaItemMetadata:v25 forProperty:*MEMORY[0x1E69D5B40]];

  v26 = *(a1 + 32);
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "isAdultContent")}];
  [v26 setMediaItemMetadata:v27 forProperty:*MEMORY[0x1E69D5C38]];

  [*(a1 + 32) setMediaItemMetadata:*(a1 + 48) forProperty:*MEMORY[0x1E69D5DE0]];
  v28 = *(a1 + 32);
  v29 = [*(a1 + 40) mediaMetrics];
  [v28 setMediaItemMetadata:v29 forProperty:*MEMORY[0x1E69D5C70]];

  v30 = *(a1 + 32);
  v31 = [*(a1 + 40) playbackModes];
  [v30 setMediaItemMetadata:v31 forProperty:@"VUIMediaItemMetadataKeyPlaybackModes"];

  v32 = *(a1 + 32);
  v33 = [*(a1 + 40) requiredAgeForPlayback];
  [v32 setMediaItemMetadata:v33 forProperty:*MEMORY[0x1E69D5D00]];

  v34 = *(a1 + 32);
  v35 = [*(a1 + 40) frequencyOfAgeConfirmation];
  [v34 setMediaItemMetadata:v35 forProperty:*MEMORY[0x1E69D5BD8]];

  v36 = *(a1 + 32);
  v37 = [*(a1 + 40) expirationDate];
  [v36 setMediaItemMetadata:v37 forProperty:@"VUIMediaItemMetadataKeyDownloadExpirationDate"];

  v38 = *(a1 + 32);
  v39 = [*(a1 + 40) availabilityEndDate];
  [v38 setMediaItemMetadata:v39 forProperty:@"VUIMediaItemMetadataKeyAvailabilityEndDate"];

  v40 = *(a1 + 32);
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "allowsManualRenewal")}];
  [v40 setMediaItemMetadata:v41 forProperty:@"VUIMediaItemMetadataKeyDownloadAllowsManualRenewal"];

  v42 = MEMORY[0x1E696AD98];
  v43 = *(a1 + 32);
  v44 = [*(a1 + 40) offlineKeyRenewalPolicy];
  v45 = [v42 numberWithInt:{objc_msgSend(v44, "integerValue") == 1}];
  [v43 setMediaItemMetadata:v45 forProperty:@"VUIMediaItemMetadataKeyDownloadRenewsKeysAutomatically"];

  [*(a1 + 32) setMediaItemMetadata:*(a1 + 40) forProperty:@"VUIMediaItemMetadataKeyDownloadVideoManagedObject"];
  v46 = *(a1 + 32);
  v47 = [*(a1 + 40) shareURL];
  [v46 setMediaItemMetadata:v47 forProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];

  v48 = *(a1 + 32);
  v49 = [*(a1 + 40) rentalID];
  [v48 setMediaItemMetadata:v49 forProperty:*MEMORY[0x1E69D5CE8]];

  v50 = *(a1 + 32);
  v51 = [*(a1 + 40) buyParams];
  [v50 setMediaItemMetadata:v51 forProperty:*MEMORY[0x1E69D5AE0]];

  v52 = *(a1 + 32);
  v53 = [*(a1 + 40) rentalPlaybackStartDate];
  [v52 setMediaItemMetadata:v53 forProperty:*MEMORY[0x1E69D5CF8]];

  v54 = *(a1 + 32);
  v55 = [*(a1 + 40) downloadedPlaybackMode];
  [v54 setMediaItemMetadata:v55 forProperty:@"VUIMediaItemMetadataKeyDownloadedPlaybackMode"];

  v56 = *(a1 + 32);
  v57 = [*(a1 + 40) playablePassThrough];
  [v56 setMediaItemMetadata:v57 forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];

  v58 = [*(a1 + 40) programID];
  if (!v58)
  {
    v59 = [*(a1 + 40) downloadURL];
    if (v59)
    {
      v94 = v59;
      v93 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v59 resolvingAgainstBaseURL:0];
      v60 = [v93 queryItems];
      v61 = [v60 mutableCopy];

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v62 = v61;
      v63 = [v62 countByEnumeratingWithState:&v95 objects:v99 count:16];
      if (v63)
      {
        v64 = v63;
        v58 = 0;
        v65 = *v96;
        do
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v96 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v95 + 1) + 8 * i);
            v68 = [v67 name];
            v69 = [v68 isEqualToString:@"id"];

            if (v69)
            {
              v70 = [v67 value];

              v58 = v70;
            }
          }

          v64 = [v62 countByEnumeratingWithState:&v95 objects:v99 count:16];
        }

        while (v64);
      }

      else
      {
        v58 = 0;
      }

      v59 = v94;
    }

    else
    {
      v58 = 0;
    }
  }

  [*(a1 + 32) setMediaItemMetadata:v58 forProperty:*MEMORY[0x1E69D5BF0]];
  v71 = [*(a1 + 40) contentRatingDomain];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = *(a1 + 40);
    if (![v71 length])
    {
      v73 = @"Show";

      v71 = v73;
    }

    [*(a1 + 32) setMediaItemMetadata:*MEMORY[0x1E69D5ED0] forProperty:*MEMORY[0x1E69D5C78]];
    v74 = *(a1 + 32);
    v75 = [v72 series];
    v76 = [v75 title];
    [v74 setMediaItemMetadata:v76 forProperty:*MEMORY[0x1E69D5D38]];

    v77 = *(a1 + 32);
    v78 = [v72 series];
    v79 = [v78 canonicalID];
    [v77 setMediaItemMetadata:v79 forProperty:*MEMORY[0x1E69D5D50]];

    v80 = *(a1 + 32);
    v81 = [v72 season];
    v82 = [v81 canonicalID];
    [v80 setMediaItemMetadata:v82 forProperty:*MEMORY[0x1E69D5D28]];

    v83 = *(a1 + 32);
    v84 = [v72 season];
    v85 = [v84 seasonNumber];
    [v83 setMediaItemMetadata:v85 forProperty:*MEMORY[0x1E69D5D30]];

    v86 = *(a1 + 32);
    v87 = [v72 episodeNumberInSeason];
    [v86 setMediaItemMetadata:v87 forProperty:*MEMORY[0x1E69D5B80]];

    v88 = *(a1 + 32);
    v89 = [v72 episodeNumberInSeries];
    [v88 setMediaItemMetadata:v89 forProperty:*MEMORY[0x1E69D5B78]];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v71 length])
      {
        v90 = @"Movie";

        v71 = v90;
      }

      [*(a1 + 32) setMediaItemMetadata:*MEMORY[0x1E69D5EB8] forProperty:*MEMORY[0x1E69D5C78]];
    }
  }

  v91 = *(a1 + 32);
  v92 = [*(a1 + 56) _tvpRatingDomainFromUTSRatingDomain:v71];
  [v91 setMediaItemMetadata:v92 forProperty:*MEMORY[0x1E69D5B08]];
}

- (id)_tvpRatingDomainFromUTSRatingDomain:(id)domain
{
  v4 = *MEMORY[0x1E69D5B10];
  if ([domain isEqualToString:@"Show"])
  {
    v5 = *MEMORY[0x1E69D5B18];

    v4 = v5;
  }

  return v4;
}

- (void)resetReportingEventCollection
{
  v4 = objc_alloc_init(MEMORY[0x1E69D5A30]);
  [v4 addStartEventWithName:*MEMORY[0x1E69D6040]];
  [v4 addStartEventWithName:*MEMORY[0x1E69D6058]];
  if ([(VUIStoreAuxMediaItem *)self isHLS])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v4 setVideoType:v3];
  [(VUIStoreAuxMediaItem *)self setMediaItemMetadata:v4 forProperty:*MEMORY[0x1E69D5CA8]];
}

- (void)dealloc
{
  v3 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIStoreAuxMediaItem deallocated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VUIStoreAuxMediaItem;
  [(VUIStoreAuxMediaItem *)&v4 dealloc];
}

- (BOOL)isEqualToMediaItem:(id)item
{
  itemCopy = item;
  if (self == itemCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VUIStoreAuxMediaItem *)self url];
      v6 = [(VUIStoreAuxMediaItem *)itemCopy url];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasTrait:(id)trait
{
  traitCopy = trait;
  if (![traitCopy isEqualToString:*MEMORY[0x1E69D5E40]])
  {
    if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E88]])
    {
      bookmarkID = [(VUIStoreAuxMediaItem *)self bookmarkID];
      v7 = [bookmarkID length];

      if (!v7)
      {
        videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];
LABEL_6:
        bOOLValue = videoManagedObject != 0;

        goto LABEL_12;
      }

LABEL_11:
      bOOLValue = 1;
      goto LABEL_12;
    }

    if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E28]])
    {
      disableResumeMenu = [(VUIStoreAuxMediaItem *)self disableResumeMenu];
    }

    else
    {
      if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E48]])
      {
        goto LABEL_11;
      }

      if (![traitCopy isEqualToString:*MEMORY[0x1E69D5E38]])
      {
        if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E58]])
        {
          videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
          if (videoManagedObject2)
          {
            videoManagedObject3 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
            bOOLValue = [videoManagedObject3 downloadState] == 2;
          }

          else
          {
            bOOLValue = 0;
          }
        }

        else
        {
          if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E80]])
          {
            bOOLValue = [(VUIStoreAuxMediaItem *)self playbackType]== 1;
            goto LABEL_12;
          }

          if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E30]])
          {
            disableResumeMenu = [(VUIStoreAuxMediaItem *)self disableScrubbing];
            goto LABEL_9;
          }

          if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E98]])
          {
            goto LABEL_11;
          }

          if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E60]])
          {
            videoManagedObject = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
            goto LABEL_6;
          }

          if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E50]])
          {
            disableResumeMenu = [(VUIStoreAuxMediaItem *)self isLiveContent];
            goto LABEL_9;
          }

          if (![traitCopy isEqualToString:*MEMORY[0x1E69D5E78]])
          {
            if ([traitCopy isEqualToString:VUIMediaItemTraitIsSportingEvent] || objc_msgSend(traitCopy, "isEqualToString:", *MEMORY[0x1E69D5EA8]))
            {
              disableResumeMenu = [(VUIStoreAuxMediaItem *)self isSportingEvent];
            }

            else
            {
              v13.receiver = self;
              v13.super_class = VUIStoreAuxMediaItem;
              disableResumeMenu = [(TVPBaseMediaItem *)&v13 hasTrait:traitCopy];
            }

            goto LABEL_9;
          }

          videoManagedObject2 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDisableSpeculativeLoading"];
          bOOLValue = [videoManagedObject2 BOOLValue];
        }

        goto LABEL_12;
      }

      disableResumeMenu = [(VUIStoreAuxMediaItem *)self isHLS];
    }

LABEL_9:
    bOOLValue = disableResumeMenu;
    goto LABEL_12;
  }

  bOOLValue = [(VUIStoreAuxMediaItem *)self playbackContext]!= 6;
LABEL_12:

  return bOOLValue;
}

- (id)mediaItemMetadataForProperty:(id)property
{
  propertyCopy = property;
  v48.receiver = self;
  v48.super_class = VUIStoreAuxMediaItem;
  downloadTaskIdentifier = [(VUIBaseMediaItem *)&v48 mediaItemMetadataForProperty:propertyCopy];
  if (downloadTaskIdentifier)
  {
    goto LABEL_34;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5C60]])
  {
LABEL_3:
    downloadTaskIdentifier = 0;
    goto LABEL_34;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5BF8]])
  {
    downloadTaskIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);
    mediaUserAgent = [objc_opt_class() mediaUserAgent];
    v7 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    stringValue = [v7 stringValue];
    if (mediaUserAgent)
    {
      [downloadTaskIdentifier setObject:mediaUserAgent forKey:@"User-Agent"];
    }

    if (stringValue && [(VUIStoreAuxMediaItem *)self playbackContext]!= 6)
    {
      [downloadTaskIdentifier setObject:stringValue forKey:@"X-Dsid"];
    }

    [downloadTaskIdentifier setObject:@"https://tv.apple.com" forKey:@"Referer"];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults stringForKey:@"XForwardedForHeaderValue"];

    if ([v10 length])
    {
      [downloadTaskIdentifier setObject:v10 forKey:@"X-Forwarded-For"];
    }

    if (![downloadTaskIdentifier count])
    {

      downloadTaskIdentifier = 0;
    }

    goto LABEL_15;
  }

  if (![propertyCopy isEqualToString:*MEMORY[0x1E69D5D60]])
  {
    if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5C68]])
    {
      mediaUserAgent = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      if (mediaUserAgent && (-[VUIStoreAuxMediaItem mediaItemMetadataForProperty:](self, "mediaItemMetadataForProperty:", *MEMORY[0x1E69D5BD0]), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 BOOLValue], v12, (v13 & 1) == 0))
      {
        videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];
        downloadState = [videoManagedObject downloadState];

        if (downloadState > 3)
        {
          v14 = 0;
        }

        else
        {
          v14 = qword_1E42979A0[downloadState];
        }
      }

      else
      {
        v14 = 1;
      }

      downloadTaskIdentifier = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      goto LABEL_17;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B60]])
    {
      videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      downloadTaskIdentifier = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 downloadTaskIdentifier];
LABEL_33:

      goto LABEL_34;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5AB0]])
    {
      downloadTaskIdentifier = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!downloadTaskIdentifier)
      {
        goto LABEL_34;
      }

      v18 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject3 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v20 = v18;
      v21 = videoManagedObject3;
      v22 = 0;
LABEL_45:
      mediaUserAgent = [(VUISidebandMediaEntityImageLoadParams *)v20 initWithVideoManagedObject:v21 imageType:v22];

      v26 = MEMORY[0x1E69D5958];
LABEL_46:
      v27 = [v26 alloc];
      v7 = +[VUIMediaLibraryManager defaultManager];
      stringValue = [v7 sidebandMediaLibrary];
      downloadTaskIdentifier = [v27 initWithObject:mediaUserAgent imageLoader:stringValue groupType:0];
LABEL_15:

LABEL_16:
LABEL_17:

      goto LABEL_34;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5AA8]])
    {
      downloadTaskIdentifier = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!downloadTaskIdentifier)
      {
        goto LABEL_34;
      }

      v25 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject3 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v20 = v25;
      v21 = videoManagedObject3;
      v22 = 1;
      goto LABEL_45;
    }

    if ([propertyCopy isEqualToString:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"])
    {
      downloadTaskIdentifier = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!downloadTaskIdentifier)
      {
        goto LABEL_34;
      }

      v28 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject4 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v30 = v28;
      v31 = videoManagedObject4;
      v32 = 1;
LABEL_54:
      mediaUserAgent = [(VUISidebandMediaEntityImageLoadParams *)v30 initWithVideoManagedObject:v31 imageType:v32];

      v26 = MEMORY[0x1E69DF730];
      goto LABEL_46;
    }

    if ([propertyCopy isEqualToString:@"VUIMediaItemMetadataPostPlayVUIImageProxy"])
    {
      downloadTaskIdentifier = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!downloadTaskIdentifier)
      {
        goto LABEL_34;
      }

      v33 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject4 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v30 = v33;
      v31 = videoManagedObject4;
      v32 = 2;
      goto LABEL_54;
    }

    if ([propertyCopy isEqualToString:@"VUIMediaItemMetadataRatingImageTVImageProxy"])
    {
      downloadTaskIdentifier = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!downloadTaskIdentifier)
      {
        goto LABEL_34;
      }

      v34 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v36 = v34;
      v37 = videoManagedObject5;
      v38 = 3;
LABEL_64:
      videoManagedObject2 = [(VUISidebandMediaEntityImageLoadParams *)v36 initWithVideoManagedObject:v37 imageType:v38];

      if (!videoManagedObject2)
      {
        downloadTaskIdentifier = 0;
        goto LABEL_33;
      }

      v41 = objc_alloc(MEMORY[0x1E69D5958]);
      downloadQOSMetricsJSONData = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [downloadQOSMetricsJSONData sidebandMediaLibrary];
      downloadTaskIdentifier = [v41 initWithObject:videoManagedObject2 imageLoader:sidebandMediaLibrary groupType:0];

      goto LABEL_66;
    }

    if ([propertyCopy isEqualToString:@"VUIMediaItemMetadataPhotoSensitivityTVImageProxy"])
    {
      downloadTaskIdentifier = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!downloadTaskIdentifier)
      {
        goto LABEL_34;
      }

      v39 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v36 = v39;
      v37 = videoManagedObject5;
      v38 = 4;
      goto LABEL_64;
    }

    if ([propertyCopy isEqualToString:@"VUIMediaItemMetadataHighMotionTVImageProxy"])
    {
      downloadTaskIdentifier = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!downloadTaskIdentifier)
      {
        goto LABEL_34;
      }

      v40 = [VUISidebandMediaEntityImageLoadParams alloc];
      videoManagedObject5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v36 = v40;
      v37 = videoManagedObject5;
      v38 = 5;
      goto LABEL_64;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5A90]])
    {
      mediaUserAgent = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C70]];
      if ([v7 count])
      {
        [(VUISidebandMediaEntityImageLoadParams *)mediaUserAgent addEntriesFromDictionary:v7];
        v44 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
        if ([v44 length])
        {
          [(VUISidebandMediaEntityImageLoadParams *)mediaUserAgent setObject:v44 forKey:*MEMORY[0x1E6987B28]];
        }
      }

      if ([(VUISidebandMediaEntityImageLoadParams *)mediaUserAgent count])
      {
        downloadTaskIdentifier = [(VUISidebandMediaEntityImageLoadParams *)mediaUserAgent copy];
      }

      else
      {
        downloadTaskIdentifier = 0;
      }

      goto LABEL_16;
    }

    if (![propertyCopy isEqualToString:*MEMORY[0x1E69D5B58]])
    {
      goto LABEL_3;
    }

    videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    downloadQOSMetricsJSONData = [(VUISidebandMediaEntityImageLoadParams *)videoManagedObject2 downloadQOSMetricsJSONData];
    if (![downloadQOSMetricsJSONData length])
    {
      downloadTaskIdentifier = 0;
LABEL_66:

      goto LABEL_33;
    }

    v47 = 0;
    v45 = [MEMORY[0x1E696ACB0] JSONObjectWithData:downloadQOSMetricsJSONData options:0 error:&v47];
    v46 = v47;
    if (v45)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        downloadTaskIdentifier = v45;
LABEL_87:

        goto LABEL_66;
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

    downloadTaskIdentifier = 0;
    goto LABEL_87;
  }

  if ([(VUIStoreAuxMediaItem *)self isAudioOnly])
  {
    v11 = *MEMORY[0x1E698DA98];
  }

  else
  {
    v11 = *MEMORY[0x1E698DA90];
    v15 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    if (([v15 isEqualToString:*MEMORY[0x1E69D5EB8]] & 1) == 0 && objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E69D5ED0]))
    {
      v11 = *MEMORY[0x1E698DAA8];
    }
  }

  downloadTaskIdentifier = v11;
LABEL_34:

  return downloadTaskIdentifier;
}

- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property
{
  metadataCopy = metadata;
  propertyCopy = property;
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B58]])
  {
    videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];
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

  else
  {
    v14.receiver = self;
    v14.super_class = VUIStoreAuxMediaItem;
    [(TVPBaseMediaItem *)&v14 setMediaItemMetadata:metadataCopy forProperty:propertyCopy];
  }
}

- (void)prepareForLoadingWithCompletion:(id)completion
{
  v72 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(VUIStoreAuxMediaItem *)self setFpsKeyError:0];
  storeFPSKeyLoader = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
  [storeFPSKeyLoader removeAllEntriesFromKeyIdentifierPenaltyBox];

  videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];
  downloadState = [videoManagedObject downloadState];
  v8 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BD0]];
  bOOLValue = [v8 BOOLValue];

  isForStartingDownload = [(VUIStoreAuxMediaItem *)self isForStartingDownload];
  v11 = (downloadState - 1) < 2 || isForStartingDownload;
  if (v11)
  {
    v12 = @"Downloading or Downloaded";
  }

  else
  {
    v12 = @"Streaming";
  }

  if (v11)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v11 != 1 || !bOOLValue)
  {
    goto LABEL_21;
  }

  v14 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Force streaming is set; configuring for streaming", buf, 2u);
  }

  streamingOverrideURLForDownload = [(VUIStoreAuxMediaItem *)self streamingOverrideURLForDownload];
  if (streamingOverrideURLForDownload)
  {
    v16 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = streamingOverrideURLForDownload;
      v17 = "Using streaming override URL: %@";
LABEL_19:
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
    }
  }

  else
  {
    streamingOverrideURLForDownload = [videoManagedObject playbackURL];
    v16 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = streamingOverrideURLForDownload;
      v17 = "Using download's original URL: %@";
      goto LABEL_19;
    }
  }

  [(VUIStoreAuxMediaItem *)self setUrl:streamingOverrideURLForDownload];

  v12 = @"Streaming";
  v13 = 1;
LABEL_21:
  if (videoManagedObject)
  {
    v18 = downloadState == 2;
  }

  else
  {
    v18 = 0;
  }

  v19 = !v18;
  if (((v19 | bOOLValue) & 1) == 0)
  {
    v20 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v20 setIsDownloaded:1];

    v21 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v22 = [(VUIStoreAuxMediaItem *)self url];
    path = [v22 path];

    if (!path || ([v21 fileExistsAtPath:path] & 1) == 0)
    {
      if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
      {
        [VUIStoreAuxMediaItem prepareForLoadingWithCompletion:];
      }

      v24 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v24 sidebandMediaLibrary];
      [sidebandMediaLibrary removeDownloadedMediaForVideoManagedObject:videoManagedObject markAsDeleted:0 invalidateImmediately:1];
    }
  }

  v26 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyGroupActivityDay"];
  if ([v26 length])
  {
    v27 = [(VUIStoreAuxMediaItem *)self url];
    v28 = v27;
    if (v27)
    {
      if (([v27 isFileURL] & 1) == 0)
      {
        v29 = [v28 vui_URLByAddingQueryParamWithName:@"groupActivityDay" value:v26];
        [(VUIStoreAuxMediaItem *)self setUrl:v29];

        v30 = sLogObject_23;
        if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          v32 = [(VUIStoreAuxMediaItem *)self url];
          *buf = 138412290;
          v71 = v32;
          _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Added groupActivityDay param to playback URL: %@", buf, 0xCu);
        }
      }
    }
  }

  if ([(VUIStoreAuxMediaItem *)self ignoreStartOverParam])
  {
    v33 = [(VUIStoreAuxMediaItem *)self url];
    v34 = [v33 vui_URLByRemovingQueryParamWithName:@"startOver"];

    [(VUIStoreAuxMediaItem *)self setUrl:v34];
    v35 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      v37 = [(VUIStoreAuxMediaItem *)self url];
      *buf = 138412290;
      v71 = v37;
      _os_log_impl(&dword_1E323F000, v36, OS_LOG_TYPE_DEFAULT, "Removed startOver param from playback URL: %@", buf, 0xCu);
    }
  }

  v38 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v12;
    _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "Setting playback type to %@", buf, 0xCu);
  }

  [(VUIStoreAuxMediaItem *)self setPlaybackType:v13];
  v39 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5D18]];
  if (v39)
  {
    v40 = [objc_alloc(MEMORY[0x1E69D5A50]) initWithName:@"Scrub AVPlayerItem loader"];
    [v40 setUpdatesMediaRemoteInfoAutomatically:0];
    [v40 setSendsPlayerReports:0];
    [v40 setUpdatesBookmarks:0];
    [v40 setCreatesPlayerItemButDoesNotEnqueue:1];
    [v40 setCurrentMediaItem:v39];
    [v40 setIFramePrefetchMaxSize:{400.0, 400.0}];
    [(VUIStoreAuxMediaItem *)self setScrubPlayer:v40];
    [v40 pause];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__scrubPlayerItemDidLoad_ name:*MEMORY[0x1E69D60D8] object:v40];
  }

  bookmarkID = [(VUIStoreAuxMediaItem *)self bookmarkID];
  if ([(VUIBookmarkKey *)bookmarkID length])
  {
    bookmark = [(VUIStoreAuxMediaItem *)self bookmark];
    v44 = bookmark == 0;

    if (!v44)
    {
      goto LABEL_54;
    }

    v45 = [VUIBookmarkKey alloc];
    bookmarkID2 = [(VUIStoreAuxMediaItem *)self bookmarkID];
    bookmarkID = [(VUIBookmarkKey *)v45 initWithIdentifier:bookmarkID2 keyType:2];

    v47 = [(VUIBookmark *)[VUIMutableBookmark alloc] initWithKey:bookmarkID];
    [(VUIBookmark *)v47 bookmarkTime];
    if (v48 != 0.0)
    {
      v49 = [VUIMediaStartTimeInfo alloc];
      v50 = MEMORY[0x1E696AD98];
      [(VUIBookmark *)v47 bookmarkTime];
      v51 = [v50 numberWithDouble:?];
      bookmarkTimestamp = [(VUIBookmark *)v47 bookmarkTimestamp];
      v53 = [(VUIMediaStartTimeInfo *)v49 initWithStartTime:v51 timestamp:bookmarkTimestamp type:0 source:@"Store Bookkeeper"];

      startTimeCollection = [(VUIBaseMediaItem *)self startTimeCollection];
      [startTimeCollection addStartTimeInfo:v53];
    }

    [(VUIStoreAuxMediaItem *)self setBookmark:v47];
  }

LABEL_54:
  bookmark2 = [(VUIStoreAuxMediaItem *)self bookmark];
  v56 = bookmark2 == 0;

  if (v56)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v57 = +[VideosExtrasBookmarkController sharedInstance];
    [v57 setMinimumBookmarkUpdateInterval:0.0];

    v58 = *MEMORY[0x1E69D5CA8];
    v59 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v59 addStartEventWithName:*MEMORY[0x1E69D5F80]];

    v60 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:v58];
    [v60 addSingleShotEventWithName:*MEMORY[0x1E69D5F88] value:MEMORY[0x1E695E118]];

    objc_initWeak(buf, self);
    v61 = +[VideosExtrasBookmarkController sharedInstance];
    bookmark3 = [(VUIStoreAuxMediaItem *)self bookmark];
    v63 = [bookmark3 key];
    identifier = [v63 identifier];
    v69 = identifier;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __56__VUIStoreAuxMediaItem_prepareForLoadingWithCompletion___block_invoke;
    v66[3] = &unk_1E87372C0;
    objc_copyWeak(&v68, buf);
    v67 = completionCopy;
    [v61 pullBookmarksForIdentifiers:v65 completionBlock:v66];

    objc_destroyWeak(&v68);
    objc_destroyWeak(buf);
  }
}

void __56__VUIStoreAuxMediaItem_prepareForLoadingWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_copyWeak(&v7, (a1 + 40));
  v5 = v4;
  v6 = *(a1 + 32);
  TVPPerformBlockOnMainThreadIfNeeded();

  objc_destroyWeak(&v7);
}

void __56__VUIStoreAuxMediaItem_prepareForLoadingWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) firstObject];
  if (v2)
  {
    v3 = [WeakRetained bookmark];
    [v2 doubleValue];
    [v3 setBookmarkTime:?];
  }

  v4 = [WeakRetained mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v4 addEndEventWithName:*MEMORY[0x1E69D5F80]];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 1, 0);
  }
}

- (id)replacementErrorForPlaybackError:(id)error
{
  errorCopy = error;
  if ([(VUIStoreAuxMediaItem *)self isiTunesPurchasedOrRentedContent])
  {
    [(VUIStoreAuxMediaItem *)self _replacementErrorForITunesPlaybackError:errorCopy];
  }

  else
  {
    [(VUIStoreAuxMediaItem *)self _replacementErrorForPlaybackError:errorCopy];
  }
  v5 = ;

  return v5;
}

- (id)_replacementErrorForPlaybackError:(id)error
{
  errorCopy = error;
  fpsKeyError = [(VUIStoreAuxMediaItem *)self fpsKeyError];

  v6 = errorCopy;
  if (fpsKeyError)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69D5E18]];
    fpsKeyError2 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    [v7 setObject:fpsKeyError2 forKey:*MEMORY[0x1E696AA08]];

    fpsKeyError3 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    code = [fpsKeyError3 code];

    if (code == -345015)
    {
      v11 = +[VUILocalizationManager sharedInstance];
      v12 = [v11 localizedStringForKey:@"ContentNotAuthorizedErrorDescription"];
      [v7 setObject:v12 forKey:*MEMORY[0x1E696A598]];

      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = 811;
    }

    else
    {
      fpsKeyError4 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
      code2 = [fpsKeyError4 code];

      if (code2 == -345014)
      {
        v15 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD8]];
        v18 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
        if ([(VUIStoreAuxMediaItem *)self hasTrait:*MEMORY[0x1E69D5E50]])
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = +[VUILocalizationManager sharedInstance];
          v21 = v20;
          v22 = @"TOO_MANY_DEVICES_STREAMING_VIDEO_ERROR_FORMAT";
        }

        else
        {
          v27 = [v18 isEqualToString:*MEMORY[0x1E69D5ED0]];
          v19 = MEMORY[0x1E696AEC0];
          v20 = +[VUILocalizationManager sharedInstance];
          v21 = v20;
          if (v27)
          {
            v22 = @"TOO_MANY_DEVICES_STREAMING_EPISODE_ERROR_FORMAT";
          }

          else
          {
            v22 = @"TOO_MANY_DEVICES_STREAMING_MOVIE_ERROR_FORMAT";
          }
        }

        v30 = [v20 localizedStringForKey:v22];
        v31 = [v19 localizedStringWithValidatedFormat:v30 validFormatSpecifiers:@"%@" error:0, v15];

        v32 = MEMORY[0x1E696AEC0];
        v33 = +[VUILocalizationManager sharedInstance];
        v34 = [v33 localizedStringForKey:@"TOO_MANY_DEVICES_STREAMING_TITLE_FORMAT"];
        v35 = [v32 localizedStringWithValidatedFormat:v34 validFormatSpecifiers:@"%@" error:0, v15];

        [v7 setObject:v31 forKey:*MEMORY[0x1E696A598]];
        [v7 setObject:v35 forKey:*MEMORY[0x1E696A578]];
        v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:810 userInfo:v7];

        goto LABEL_16;
      }

      fpsKeyError5 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
      code3 = [fpsKeyError5 code];

      if (code3 == -345023)
      {
        v25 = +[VUILocalizationManager sharedInstance];
        v26 = [v25 localizedStringForKey:@"VIDEO_UNAVAILABLE_IN_THIS_REGION_ERROR"];
        [v7 setObject:v26 forKey:*MEMORY[0x1E696A598]];

        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = 828;
      }

      else
      {
        fpsKeyError6 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
        code4 = [fpsKeyError6 code];

        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        if (code4 == -345028)
        {
          v14 = 827;
        }

        else
        {
          v14 = 820;
        }
      }
    }

    v6 = [v13 initWithDomain:@"TVPlaybackErrorDomain" code:v14 userInfo:v7];
    v15 = errorCopy;
LABEL_16:
  }

  return v6;
}

- (id)_replacementErrorForITunesPlaybackError:(id)error
{
  errorCopy = error;
  fpsKeyError = [(VUIStoreAuxMediaItem *)self fpsKeyError];

  v6 = errorCopy;
  if (fpsKeyError)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69D5E18]];
    fpsKeyError2 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    [v7 setObject:fpsKeyError2 forKey:*MEMORY[0x1E696AA08]];

    fpsKeyError3 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    if ([fpsKeyError3 code] == -345015)
    {
    }

    else
    {
      fpsKeyError4 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
      code = [fpsKeyError4 code];

      if (code != -345017)
      {
        fpsKeyError5 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
        code2 = [fpsKeyError5 code];

        if (code2 == -345014)
        {
          v16 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
          if (![(__CFString *)v16 length])
          {

            v16 = &stru_1F5DB25C0;
          }

          v20 = MEMORY[0x1E696AEC0];
          v21 = +[VUILocalizationManager sharedInstance];
          v22 = [v21 localizedStringForKey:@"TOO_MANY_STREAMS_FORMAT_PURCHASE"];
          v23 = [v20 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:0, v16];

          [v7 setObject:v23 forKey:*MEMORY[0x1E696A598]];
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = 810;
        }

        else
        {
          fpsKeyError6 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
          code3 = [fpsKeyError6 code];

          if (code3 != -345016)
          {
            fpsKeyError7 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
            code4 = [fpsKeyError7 code];

            v14 = objc_alloc(MEMORY[0x1E696ABC0]);
            if (code4 == -345028)
            {
              v15 = 827;
            }

            else
            {
              v15 = 820;
            }

            goto LABEL_6;
          }

          v16 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
          if (![(__CFString *)v16 length])
          {

            v16 = &stru_1F5DB25C0;
          }

          v28 = MEMORY[0x1E696AEC0];
          v29 = +[VUILocalizationManager sharedInstance];
          v30 = [v29 localizedStringForKey:@"TOO_MANY_STREAMS_FORMAT"];
          v23 = [v28 stringWithValidatedFormat:v30 validFormatSpecifiers:@"%@" error:0, v16];

          [v7 setObject:v23 forKey:*MEMORY[0x1E696A598]];
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = 812;
        }

        v6 = [v24 initWithDomain:@"TVPlaybackErrorDomain" code:v25 userInfo:v7];

        goto LABEL_7;
      }
    }

    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"ContentNotAuthorizedErrorDescription"];
    [v7 setObject:v13 forKey:*MEMORY[0x1E696A598]];

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = 811;
LABEL_6:
    v6 = [v14 initWithDomain:@"TVPlaybackErrorDomain" code:v15 userInfo:v7];
    v16 = errorCopy;
LABEL_7:
  }

  return v6;
}

- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending
{
  bookmark = [(VUIStoreAuxMediaItem *)self bookmark];

  if (bookmark)
  {
    bookmark2 = [(VUIStoreAuxMediaItem *)self bookmark];
    [bookmark2 setBookmarkTime:time];

    bookmark3 = [(VUIStoreAuxMediaItem *)self bookmark];
    date = [MEMORY[0x1E695DF00] date];
    [bookmark3 setBookmarkTimestamp:date];

    [MEMORY[0x1E69D5A48] playedThresholdTimeForDuration:duration];
    v15 = v14;
    if ([(VUIStoreAuxMediaItem *)self isFamilySharingContent])
    {
      v16 = objc_alloc(MEMORY[0x1E6970A10]);
      bookmarkID = [(VUIStoreAuxMediaItem *)self bookmarkID];
      date2 = [v16 initWithUbiquitousIdentifier:bookmarkID];

      [date2 setBookmarkTime:time];
      [date2 setBookmarkTimestamp:CFAbsoluteTimeGetCurrent()];
      mEMORY[0x1E6970A08] = [MEMORY[0x1E6970A08] sharedUbiquitousPlaybackPositionController];
      [mEMORY[0x1E6970A08] persistPlaybackPositionMetadataEntity:date2 isCheckpoint:0 completion:0];
    }

    else
    {
      date2 = +[VideosExtrasBookmarkController sharedInstance];
      mEMORY[0x1E6970A08] = [(VUIStoreAuxMediaItem *)self bookmark];
      v24 = [mEMORY[0x1E6970A08] key];
      identifier = [v24 identifier];
      [date2 pushBookmarkForIdentifier:identifier bookmarkTime:v15 <= elapsedTime playedToNominalLength:elapsedTime];
    }
  }

  else
  {
    videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];

    if (!videoManagedObject)
    {
      return;
    }

    date2 = [MEMORY[0x1E695DF00] date];
    mEMORY[0x1E6970A08] = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
    v20 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB8]];
    v21 = v20;
    if (mEMORY[0x1E6970A08])
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      [mEMORY[0x1E6970A08] doubleValue];
      v27 = fmax(time - v26, 0.0);
      [v21 doubleValue];
      if (v27 >= v28)
      {
        [v21 doubleValue];
        v27 = v29;
      }

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
    }

    videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [videoManagedObject2 setBookmarkTime:v31];

    videoManagedObject3 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [videoManagedObject3 setBookmarkTimeStamp:date2];

    videoManagedObject4 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [videoManagedObject4 setMainContentRelativeBookmarkTime:v23];

    videoManagedObject5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [videoManagedObject5 setMainContentRelativeBookmarkTimeStamp:date2];

    v35 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v35 sidebandMediaLibrary];
    [sidebandMediaLibrary saveChangesToManagedObjects];
  }
}

- (void)cleanUpMediaItem
{
  storeFPSKeyLoader = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
  [storeFPSKeyLoader sendStreamingStopRequestIfNecessary];

  [(VUIStoreAuxMediaItem *)self setPlaybackType:0];
  [(VUIStoreAuxMediaItem *)self setMediaItemMetadata:0 forProperty:*MEMORY[0x1E69D5CA8]];
  [(VUIStoreAuxMediaItem *)self setBookmark:0];
  scrubPlayer = [(VUIStoreAuxMediaItem *)self scrubPlayer];

  if (scrubPlayer)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69D60D8];
    scrubPlayer2 = [(VUIStoreAuxMediaItem *)self scrubPlayer];
    [defaultCenter removeObserver:self name:v6 object:scrubPlayer2];

    scrubPlayer3 = [(VUIStoreAuxMediaItem *)self scrubPlayer];
    [scrubPlayer3 invalidate];

    [(VUIStoreAuxMediaItem *)self setScrubPlayer:0];
  }

  [(VUIStoreAuxMediaItem *)self setParentReportingToken:0];
}

- (void)mediaItem:(id)item errorDidOccur:(id)occur player:(id)player
{
  v30 = *MEMORY[0x1E69E9840];
  occurCopy = occur;
  domain = [occurCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E69874D8]])
  {
    code = [occurCopy code];

    if (code == -11800)
    {
      userInfo = [occurCopy userInfo];
      v10 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

      if (!v10)
      {
        goto LABEL_22;
      }

LABEL_8:
      if ([v10 code] == -42803 || objc_msgSend(v10, "code") == -42799)
      {
        videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];

        if (videoManagedObject)
        {
          if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
          {
            [VUIStoreAuxMediaItem mediaItem:errorDidOccur:player:];
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
          fpsKeyInfo = [videoManagedObject2 fpsKeyInfo];

          v16 = [fpsKeyInfo countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(fpsKeyInfo);
                }

                v20 = *(*(&v25 + 1) + 8 * i);
                [v20 setIsInvalid:1];
                distantPast = [MEMORY[0x1E695DF00] distantPast];
                [v20 setRenewalDate:distantPast];
              }

              v17 = [fpsKeyInfo countByEnumeratingWithState:&v25 objects:v29 count:16];
            }

            while (v17);
          }

          v22 = +[VUIMediaLibraryManager defaultManager];
          sidebandMediaLibrary = [v22 sidebandMediaLibrary];
          [sidebandMediaLibrary saveChangesToManagedObjects];

          v24 = +[VUIOfflineKeyRenewalManager sharedInstance];
          [v24 updateKeyRenewalAndExpiration];
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  domain2 = [occurCopy domain];
  v12 = [domain2 isEqualToString:@"CoreMediaErrorDomain"];

  if (!v12)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v10 = occurCopy;
  if (v10)
  {
    goto LABEL_8;
  }

LABEL_22:
}

- (void)mediaItem:(id)item didChangeFromPlaybackState:(id)state toPlaybackState:(id)playbackState updatedRate:(double)rate player:(id)player
{
  playbackStateCopy = playbackState;
  v9 = MEMORY[0x1E69D5A40];
  stateCopy = state;
  stopped = [v9 stopped];

  if (stopped != stateCopy)
  {
    stopped2 = [MEMORY[0x1E69D5A40] stopped];

    v13 = playbackStateCopy;
    if (stopped2 != playbackStateCopy)
    {
      goto LABEL_5;
    }

    stopped = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
    [stopped sendStreamingStopRequestIfNecessary];
  }

  v13 = playbackStateCopy;
LABEL_5:
}

- (void)loadFairPlayStreamingKeyRequests:(id)requests completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = requestsCopy;
  if ([(VUIStoreAuxMediaItem *)self playbackType]== 2)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = requestsCopy;
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          if ([v13 type])
          {
            if ([v13 type] == 2)
            {
              v14 = [(VUIStoreAuxMediaItem *)self _offlineKeyDataForKeyRequest:v13];
              v15 = sSecureKeyDeliveryLogObject_0;
              if (v14)
              {
                if (os_log_type_enabled(sSecureKeyDeliveryLogObject_0, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v49 = v13;
                  _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Using existing offline key data for request %@", buf, 0xCu);
                }

                [v13 setKeyResponseData:v14];
                [v13 finish];
              }

              else
              {
                if (os_log_type_enabled(sSecureKeyDeliveryLogObject_0, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v49 = v13;
                  _os_log_error_impl(&dword_1E323F000, v15, OS_LOG_TYPE_ERROR, "Offline key data does not exist for request %@", buf, 0xCu);
                }

                [v7 addObject:v13];
              }
            }

            else
            {
              [v7 addObject:v13];
            }
          }

          else
          {
            [v13 finishByRequestingOfflineKeysIfPossible];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v10);
    }

    requestsCopy = v36;
  }

  else
  {
    [v7 addObjectsFromArray:requestsCopy];
  }

  if ([v7 count])
  {
    storeFPSKeyLoader = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];

    if (!storeFPSKeyLoader)
    {
      fpsCertificateURL = [(VUIStoreAuxMediaItem *)self fpsCertificateURL];
      fpsKeyServerURL = [(VUIStoreAuxMediaItem *)self fpsKeyServerURL];
      v19 = [[VUIStoreFPSKeyLoader alloc] initWithCertificateURL:fpsCertificateURL keyServerURL:fpsKeyServerURL];
      [(VUIStoreFPSKeyLoader *)v19 setSendsMescalHeader:[(VUIStoreAuxMediaItem *)self sendsMescalHeaderToPlaybackKeyServer]];
      [(VUIStoreFPSKeyLoader *)v19 setSendsLocationWhenOptedIn:[(VUIStoreAuxMediaItem *)self sendsLocationToPlaybackKeyServerWhenOptedIn]];
      if ([(VUIStoreAuxMediaItem *)self hasTrait:*MEMORY[0x1E69D5E60]])
      {
        v20 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
        [(VUIStoreFPSKeyLoader *)v19 setRentalID:v20];
        [(VUIStoreFPSKeyLoader *)v19 setDidSkipRentalCheckout:1];
      }

      v21 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [(VUIStoreFPSKeyLoader *)v19 setEventCollection:v21];

      [(VUIStoreFPSKeyLoader *)v19 setDelegate:self];
      [(VUIStoreAuxMediaItem *)self setStoreFPSKeyLoader:v19];
    }

    fpsAdditionalServerParams = [(VUIStoreAuxMediaItem *)self fpsAdditionalServerParams];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v23 = v7;
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      v27 = *MEMORY[0x1E69D5DA8];
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v39 + 1) + 8 * j);
          [v29 setAdditionalRequestParams:fpsAdditionalServerParams];
          v30 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:v27];
          [v29 setAdamID:v30];
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v25);
    }

    v31 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Keeping media item alive until key response(s) are received", buf, 2u);
    }

    storeFPSKeyLoader2 = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __68__VUIStoreAuxMediaItem_loadFairPlayStreamingKeyRequests_completion___block_invoke;
    v37[3] = &unk_1E872E580;
    v37[4] = self;
    v33 = v35;
    v38 = v35;
    [storeFPSKeyLoader2 loadFairPlayStreamingKeyRequests:v23 completion:v37];

    requestsCopy = v36;
  }

  else
  {
    v33 = v35;
    if (v35)
    {
      v35[2](v35);
    }
  }
}

uint64_t __68__VUIStoreAuxMediaItem_loadFairPlayStreamingKeyRequests_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 storeFPSKeyLoader];
  [v2 _keepKeyLoaderAlive:v3];

  v4 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Received response for key request(s)", v6, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateOfflineKeyWithIdentifier:(id)identifier updatedOfflineKeyData:(id)data
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dataCopy = data;
  v8 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = identifierCopy;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Offline key data was updated for video with playback expiration policy.  Key identifier is %@", buf, 0xCu);
  }

  videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];
  v10 = videoManagedObject;
  if (identifierCopy && videoManagedObject)
  {
    v11 = [dataCopy length];

    if (v11)
    {
      v12 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v12 sidebandMediaLibrary];
      videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v15 = [sidebandMediaLibrary fpsKeyInfoForVideo:videoManagedObject2 keyURI:identifierCopy createIfNeeded:0 wasCreated:0];

      date = [MEMORY[0x1E695DF00] date];
      playbackDuration = [v15 playbackDuration];
      v33 = playbackDuration;
      if (playbackDuration)
      {
        [playbackDuration doubleValue];
        v18 = date;
        v19 = [date dateByAddingTimeInterval:?];
      }

      else
      {
        v18 = date;
        v19 = 0;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      videoManagedObject3 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      objectID = [videoManagedObject3 objectID];
      [defaultCenter postNotificationName:@"VUIVideoManagedObjectPlaybackExpirationWillChangeNotification" object:objectID];

      v23 = sLogObject_23;
      if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        [v33 doubleValue];
        *buf = 138412802;
        v35 = v18;
        v36 = 2112;
        v37 = v19;
        v38 = 2048;
        v39 = v25;
        _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Updating playback start date to %@, expiration date to %@ based on playback duration %f", buf, 0x20u);
      }

      dataCopy = v32;
      if (v19)
      {
        [v15 setExpirationDate:v19];
      }

      [v15 setPlaybackExpirationStartDate:v18];
      [v15 setKeyData:v32];
      v26 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary2 = [v26 sidebandMediaLibrary];
      [sidebandMediaLibrary2 saveChangesToManagedObjects];

      v28 = +[VUIOfflineKeyRenewalManager sharedInstance];
      [v28 updateKeyRenewalAndExpiration];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      videoManagedObject4 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      objectID2 = [videoManagedObject4 objectID];
      [defaultCenter2 postNotificationName:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:objectID2];

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
  {
    [VUIStoreAuxMediaItem updateOfflineKeyWithIdentifier:updatedOfflineKeyData:];
  }

LABEL_17:
}

- (void)storeFPSKeyLoader:(id)loader willFailWithError:(id)error forKeyRequest:(id)request
{
  v23[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  fpsKeyError = [(VUIStoreAuxMediaItem *)self fpsKeyError];

  if (!fpsKeyError)
  {
    [(VUIStoreAuxMediaItem *)self setFpsKeyError:errorCopy];
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
LABEL_8:
            v14 = *MEMORY[0x1E69D5E10];
            v22[0] = *MEMORY[0x1E69D5E18];
            v22[1] = v14;
            v23[0] = MEMORY[0x1E695E118];
            v23[1] = v8;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v15];

            goto LABEL_9;
          }

          domain = objc_alloc_init(MEMORY[0x1E695DF90]);
          [domain setObject:v8 forKey:*MEMORY[0x1E696AA08]];
          v11 = +[VUILocalizationManager sharedInstance];
          v12 = [v11 localizedStringForKey:@"SignInToWatchThisVideoErrorDescription"];
          [domain setObject:v12 forKey:*MEMORY[0x1E696A598]];

          v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:813 userInfo:domain];
          [(VUIStoreAuxMediaItem *)self setFpsKeyError:0];
          v8 = v13;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_9:
  if ([(VUIStoreAuxMediaItem *)self playbackType]== 2)
  {
    v17 = *MEMORY[0x1E69D5E10];
    v20[0] = *MEMORY[0x1E69D5E18];
    v20[1] = v17;
    v21[0] = MEMORY[0x1E695E118];
    v21[1] = errorCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v18];
  }
}

- (void)storeFPSKeyLoader:(id)loader didLoadOfflineKeyData:(id)data forKeyRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  requestCopy = request;
  keyIdentifier = [requestCopy keyIdentifier];
  videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];
  if (!videoManagedObject || !keyIdentifier)
  {
LABEL_10:

    goto LABEL_11;
  }

  v11 = [dataCopy length];

  if (v11)
  {
    v12 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = requestCopy;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Saving offline key data to database: %@", &v26, 0xCu);
    }

    v13 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v13 sidebandMediaLibrary];
    videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    videoManagedObject = [sidebandMediaLibrary fpsKeyInfoForVideo:videoManagedObject2 keyURI:keyIdentifier createIfNeeded:1 wasCreated:0];

    videoManagedObject3 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [videoManagedObject populateFromKeyRequest:requestCopy video:videoManagedObject3];

    v17 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary2 = [v17 sidebandMediaLibrary];
    [sidebandMediaLibrary2 saveChangesToManagedObjects];

    v19 = +[VUIOfflineKeyRenewalManager sharedInstance];
    [v19 updateKeyRenewalAndExpiration];

    videoManagedObject4 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    downloadState = [videoManagedObject4 downloadState];

    if (!downloadState)
    {
      v22 = sLogObject_23;
      if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Offline keys received for an item that is no longer downloading or downloaded.  Invalidating keys.", &v26, 2u);
      }

      v23 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary3 = [v23 sidebandMediaLibrary];
      videoManagedObject5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      [sidebandMediaLibrary3 removeDownloadedMediaForVideoManagedObject:videoManagedObject5 markAsDeleted:0 invalidateImmediately:1];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_scrubPlayerItemDidLoad:(id)load
{
  scrubPlayer = [(VUIStoreAuxMediaItem *)self scrubPlayer];
  unqueuedPlayerItem = [scrubPlayer unqueuedPlayerItem];

  [(VUIStoreAuxMediaItem *)self setMediaItemMetadata:unqueuedPlayerItem forProperty:*MEMORY[0x1E69D5D20]];
}

- (id)_offlineKeyDataForKeyRequest:(id)request
{
  requestCopy = request;
  if ([(VUIStoreAuxMediaItem *)self ignoreExistingOfflineKeyData])
  {
    keyData = 0;
  }

  else
  {
    keyIdentifier = [requestCopy keyIdentifier];
    videoManagedObject = [(VUIStoreAuxMediaItem *)self videoManagedObject];

    keyData = 0;
    if (videoManagedObject && keyIdentifier)
    {
      v8 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v8 sidebandMediaLibrary];
      videoManagedObject2 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v11 = [sidebandMediaLibrary fpsKeyInfoForVideo:videoManagedObject2 keyURI:keyIdentifier createIfNeeded:0 wasCreated:0];

      keyData = [v11 keyData];
    }
  }

  return keyData;
}

- (void)initWithVideoManagedObject:isForStartingDownload:.cold.2()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateOfflineKeyWithIdentifier:updatedOfflineKeyData:.cold.1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end