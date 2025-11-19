@interface VUIStoreAuxMediaItem
+ (NSString)mediaUserAgent;
+ (void)initialize;
- (BOOL)hasTrait:(id)a3;
- (BOOL)isEqualToMediaItem:(id)a3;
- (VUIStoreAuxMediaItem)initWithURL:(id)a3;
- (VUIStoreAuxMediaItem)initWithVideoManagedObject:(id)a3 isForStartingDownload:(BOOL)a4;
- (id)_offlineKeyDataForKeyRequest:(id)a3;
- (id)_replacementErrorForITunesPlaybackError:(id)a3;
- (id)_replacementErrorForPlaybackError:(id)a3;
- (id)_tvpRatingDomainFromUTSRatingDomain:(id)a3;
- (id)mediaItemMetadataForProperty:(id)a3;
- (id)replacementErrorForPlaybackError:(id)a3;
- (void)_scrubPlayerItemDidLoad:(id)a3;
- (void)cleanUpMediaItem;
- (void)dealloc;
- (void)loadFairPlayStreamingKeyRequests:(id)a3 completion:(id)a4;
- (void)mediaItem:(id)a3 didChangeFromPlaybackState:(id)a4 toPlaybackState:(id)a5 updatedRate:(double)a6 player:(id)a7;
- (void)mediaItem:(id)a3 errorDidOccur:(id)a4 player:(id)a5;
- (void)prepareForLoadingWithCompletion:(id)a3;
- (void)resetReportingEventCollection;
- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4;
- (void)storeFPSKeyLoader:(id)a3 didLoadOfflineKeyData:(id)a4 forKeyRequest:(id)a5;
- (void)storeFPSKeyLoader:(id)a3 willFailWithError:(id)a4 forKeyRequest:(id)a5;
- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6;
- (void)updateOfflineKeyWithIdentifier:(id)a3 updatedOfflineKeyData:(id)a4;
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
  v3 = [MEMORY[0x1E698CAC8] currentProcess];
  v4 = [v2 userAgentForProcessInfo:v3];

  return v4;
}

- (VUIStoreAuxMediaItem)initWithURL:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = VUIStoreAuxMediaItem;
  v5 = [(TVPBaseMediaItem *)&v21 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 pathExtension];
    if ([v8 isEqualToString:@"m3u8"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"m3u"))
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isEqualToString:@"movpkg"];
    }

    v5->_isHLS = v9;
    v10 = [MEMORY[0x1E69D5920] activeAccount];
    v11 = [v10 ams_DSID];
    v12 = [v10 ams_storefront];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__VUIStoreAuxMediaItem_initWithURL___block_invoke;
    v17[3] = &unk_1E872E008;
    v13 = v5;
    v18 = v13;
    v19 = v11;
    v20 = v12;
    v14 = v12;
    v15 = v11;
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

- (VUIStoreAuxMediaItem)initWithVideoManagedObject:(id)a3 isForStartingDownload:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6 && os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
  {
    [VUIStoreAuxMediaItem initWithVideoManagedObject:isForStartingDownload:];
  }

  v7 = [v6 downloadState];
  if (!v4)
  {
    v8 = v7;
    if (v7 != 1)
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

        v11 = [v6 localPlaybackURL];
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

  v13 = [v6 downloadURL];
  v14 = sLogObject_23;
  v15 = os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      v16 = "Using streaming URL for download since download URL is not available";
      v17 = v14;
      goto LABEL_19;
    }

LABEL_20:
    v11 = [v6 playbackURL];
LABEL_21:
    v13 = v11;
    goto LABEL_22;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Using download URL", buf, 2u);
  }

LABEL_22:
  v18 = [(VUIStoreAuxMediaItem *)self initWithURL:v13];
  [(VUIStoreAuxMediaItem *)v18 setIsForStartingDownload:v4];
  [(VUIStoreAuxMediaItem *)v18 setVideoManagedObject:v6];
  v19 = [v6 fpsCertificateURL];
  [(VUIStoreAuxMediaItem *)v18 setFpsCertificateURL:v19];

  v20 = [v6 fpsKeyServerURL];
  [(VUIStoreAuxMediaItem *)v18 setFpsKeyServerURL:v20];

  v21 = [v6 additionalFPSRequestParams];
  [(VUIStoreAuxMediaItem *)v18 setFpsAdditionalServerParams:v21];

  -[VUIStoreAuxMediaItem setIsSportingEvent:](v18, "setIsSportingEvent:", [v6 isSportingEvent]);
  v22 = [v6 vpafMetricsJSONData];
  v43 = v22;
  v44 = v13;
  if (![v22 length])
  {
    v25 = 0;
    goto LABEL_31;
  }

  v50 = 0;
  v23 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v22 options:0 error:&v50];
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
  v26 = [v6 bookmarkTime];
  v27 = [v6 bookmarkTimeStamp];
  v28 = [v6 mainContentRelativeBookmarkTime];
  v29 = [v6 mainContentRelativeBookmarkTimeStamp];
  if (v26)
  {
    v30 = v29;
    v31 = v27;
    v32 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:v26 timestamp:v27 type:0 source:@"Sideband Library"];
    v33 = [(VUIBaseMediaItem *)v18 startTimeCollection];
    [v33 addStartTimeInfo:v32];

    v27 = v31;
    v29 = v30;
  }

  if (v28)
  {
    v34 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:v28 timestamp:v29 type:1 source:@"Sideband Library"];
    [(VUIBaseMediaItem *)v18 startTimeCollection];
    v36 = v35 = v27;
    [v36 addStartTimeInfo:v34];

    v27 = v35;
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __73__VUIStoreAuxMediaItem_initWithVideoManagedObject_isForStartingDownload___block_invoke;
  v45[3] = &unk_1E872E5D8;
  v46 = v18;
  v47 = v6;
  v48 = v25;
  v37 = v46;
  v49 = v37;
  v38 = v6;
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

- (id)_tvpRatingDomainFromUTSRatingDomain:(id)a3
{
  v4 = *MEMORY[0x1E69D5B10];
  if ([a3 isEqualToString:@"Show"])
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

- (BOOL)isEqualToMediaItem:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VUIStoreAuxMediaItem *)self url];
      v6 = [(VUIStoreAuxMediaItem *)v4 url];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasTrait:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:*MEMORY[0x1E69D5E40]])
  {
    if ([v4 isEqualToString:*MEMORY[0x1E69D5E88]])
    {
      v6 = [(VUIStoreAuxMediaItem *)self bookmarkID];
      v7 = [v6 length];

      if (!v7)
      {
        v8 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
LABEL_6:
        v5 = v8 != 0;

        goto LABEL_12;
      }

LABEL_11:
      v5 = 1;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69D5E28]])
    {
      v9 = [(VUIStoreAuxMediaItem *)self disableResumeMenu];
    }

    else
    {
      if ([v4 isEqualToString:*MEMORY[0x1E69D5E48]])
      {
        goto LABEL_11;
      }

      if (![v4 isEqualToString:*MEMORY[0x1E69D5E38]])
      {
        if ([v4 isEqualToString:*MEMORY[0x1E69D5E58]])
        {
          v11 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
          if (v11)
          {
            v12 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
            v5 = [v12 downloadState] == 2;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          if ([v4 isEqualToString:*MEMORY[0x1E69D5E80]])
          {
            v5 = [(VUIStoreAuxMediaItem *)self playbackType]== 1;
            goto LABEL_12;
          }

          if ([v4 isEqualToString:*MEMORY[0x1E69D5E30]])
          {
            v9 = [(VUIStoreAuxMediaItem *)self disableScrubbing];
            goto LABEL_9;
          }

          if ([v4 isEqualToString:*MEMORY[0x1E69D5E98]])
          {
            goto LABEL_11;
          }

          if ([v4 isEqualToString:*MEMORY[0x1E69D5E60]])
          {
            v8 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
            goto LABEL_6;
          }

          if ([v4 isEqualToString:*MEMORY[0x1E69D5E50]])
          {
            v9 = [(VUIStoreAuxMediaItem *)self isLiveContent];
            goto LABEL_9;
          }

          if (![v4 isEqualToString:*MEMORY[0x1E69D5E78]])
          {
            if ([v4 isEqualToString:VUIMediaItemTraitIsSportingEvent] || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69D5EA8]))
            {
              v9 = [(VUIStoreAuxMediaItem *)self isSportingEvent];
            }

            else
            {
              v13.receiver = self;
              v13.super_class = VUIStoreAuxMediaItem;
              v9 = [(TVPBaseMediaItem *)&v13 hasTrait:v4];
            }

            goto LABEL_9;
          }

          v11 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDisableSpeculativeLoading"];
          v5 = [v11 BOOLValue];
        }

        goto LABEL_12;
      }

      v9 = [(VUIStoreAuxMediaItem *)self isHLS];
    }

LABEL_9:
    v5 = v9;
    goto LABEL_12;
  }

  v5 = [(VUIStoreAuxMediaItem *)self playbackContext]!= 6;
LABEL_12:

  return v5;
}

- (id)mediaItemMetadataForProperty:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = VUIStoreAuxMediaItem;
  v5 = [(VUIBaseMediaItem *)&v48 mediaItemMetadataForProperty:v4];
  if (v5)
  {
    goto LABEL_34;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5C60]])
  {
LABEL_3:
    v5 = 0;
    goto LABEL_34;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5BF8]])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [objc_opt_class() mediaUserAgent];
    v7 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
    v8 = [v7 stringValue];
    if (v6)
    {
      [v5 setObject:v6 forKey:@"User-Agent"];
    }

    if (v8 && [(VUIStoreAuxMediaItem *)self playbackContext]!= 6)
    {
      [v5 setObject:v8 forKey:@"X-Dsid"];
    }

    [v5 setObject:@"https://tv.apple.com" forKey:@"Referer"];
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [v9 stringForKey:@"XForwardedForHeaderValue"];

    if ([v10 length])
    {
      [v5 setObject:v10 forKey:@"X-Forwarded-For"];
    }

    if (![v5 count])
    {

      v5 = 0;
    }

    goto LABEL_15;
  }

  if (![v4 isEqualToString:*MEMORY[0x1E69D5D60]])
  {
    if ([v4 isEqualToString:*MEMORY[0x1E69D5C68]])
    {
      v6 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      if (v6 && (-[VUIStoreAuxMediaItem mediaItemMetadataForProperty:](self, "mediaItemMetadataForProperty:", *MEMORY[0x1E69D5BD0]), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 BOOLValue], v12, (v13 & 1) == 0))
      {
        v23 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
        v24 = [v23 downloadState];

        if (v24 > 3)
        {
          v14 = 0;
        }

        else
        {
          v14 = qword_1E42979A0[v24];
        }
      }

      else
      {
        v14 = 1;
      }

      v5 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      goto LABEL_17;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69D5B60]])
    {
      v16 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v5 = [(VUISidebandMediaEntityImageLoadParams *)v16 downloadTaskIdentifier];
LABEL_33:

      goto LABEL_34;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69D5AB0]])
    {
      v5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_34;
      }

      v18 = [VUISidebandMediaEntityImageLoadParams alloc];
      v19 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v20 = v18;
      v21 = v19;
      v22 = 0;
LABEL_45:
      v6 = [(VUISidebandMediaEntityImageLoadParams *)v20 initWithVideoManagedObject:v21 imageType:v22];

      v26 = MEMORY[0x1E69D5958];
LABEL_46:
      v27 = [v26 alloc];
      v7 = +[VUIMediaLibraryManager defaultManager];
      v8 = [v7 sidebandMediaLibrary];
      v5 = [v27 initWithObject:v6 imageLoader:v8 groupType:0];
LABEL_15:

LABEL_16:
LABEL_17:

      goto LABEL_34;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69D5AA8]])
    {
      v5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_34;
      }

      v25 = [VUISidebandMediaEntityImageLoadParams alloc];
      v19 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v20 = v25;
      v21 = v19;
      v22 = 1;
      goto LABEL_45;
    }

    if ([v4 isEqualToString:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"])
    {
      v5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_34;
      }

      v28 = [VUISidebandMediaEntityImageLoadParams alloc];
      v29 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v30 = v28;
      v31 = v29;
      v32 = 1;
LABEL_54:
      v6 = [(VUISidebandMediaEntityImageLoadParams *)v30 initWithVideoManagedObject:v31 imageType:v32];

      v26 = MEMORY[0x1E69DF730];
      goto LABEL_46;
    }

    if ([v4 isEqualToString:@"VUIMediaItemMetadataPostPlayVUIImageProxy"])
    {
      v5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_34;
      }

      v33 = [VUISidebandMediaEntityImageLoadParams alloc];
      v29 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v30 = v33;
      v31 = v29;
      v32 = 2;
      goto LABEL_54;
    }

    if ([v4 isEqualToString:@"VUIMediaItemMetadataRatingImageTVImageProxy"])
    {
      v5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_34;
      }

      v34 = [VUISidebandMediaEntityImageLoadParams alloc];
      v35 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v36 = v34;
      v37 = v35;
      v38 = 3;
LABEL_64:
      v16 = [(VUISidebandMediaEntityImageLoadParams *)v36 initWithVideoManagedObject:v37 imageType:v38];

      if (!v16)
      {
        v5 = 0;
        goto LABEL_33;
      }

      v41 = objc_alloc(MEMORY[0x1E69D5958]);
      v42 = +[VUIMediaLibraryManager defaultManager];
      v43 = [v42 sidebandMediaLibrary];
      v5 = [v41 initWithObject:v16 imageLoader:v43 groupType:0];

      goto LABEL_66;
    }

    if ([v4 isEqualToString:@"VUIMediaItemMetadataPhotoSensitivityTVImageProxy"])
    {
      v5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_34;
      }

      v39 = [VUISidebandMediaEntityImageLoadParams alloc];
      v35 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v36 = v39;
      v37 = v35;
      v38 = 4;
      goto LABEL_64;
    }

    if ([v4 isEqualToString:@"VUIMediaItemMetadataHighMotionTVImageProxy"])
    {
      v5 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

      if (!v5)
      {
        goto LABEL_34;
      }

      v40 = [VUISidebandMediaEntityImageLoadParams alloc];
      v35 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v36 = v40;
      v37 = v35;
      v38 = 5;
      goto LABEL_64;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69D5A90]])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5C70]];
      if ([v7 count])
      {
        [(VUISidebandMediaEntityImageLoadParams *)v6 addEntriesFromDictionary:v7];
        v44 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
        if ([v44 length])
        {
          [(VUISidebandMediaEntityImageLoadParams *)v6 setObject:v44 forKey:*MEMORY[0x1E6987B28]];
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

      goto LABEL_16;
    }

    if (![v4 isEqualToString:*MEMORY[0x1E69D5B58]])
    {
      goto LABEL_3;
    }

    v16 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    v42 = [(VUISidebandMediaEntityImageLoadParams *)v16 downloadQOSMetricsJSONData];
    if (![v42 length])
    {
      v5 = 0;
LABEL_66:

      goto LABEL_33;
    }

    v47 = 0;
    v45 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v42 options:0 error:&v47];
    v46 = v47;
    if (v45)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v45;
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

    v5 = 0;
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

  v5 = v11;
LABEL_34:

  return v5;
}

- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:*MEMORY[0x1E69D5B58]])
  {
    v8 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
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

  else
  {
    v14.receiver = self;
    v14.super_class = VUIStoreAuxMediaItem;
    [(TVPBaseMediaItem *)&v14 setMediaItemMetadata:v6 forProperty:v7];
  }
}

- (void)prepareForLoadingWithCompletion:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(VUIStoreAuxMediaItem *)self setFpsKeyError:0];
  v5 = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
  [v5 removeAllEntriesFromKeyIdentifierPenaltyBox];

  v6 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
  v7 = [v6 downloadState];
  v8 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BD0]];
  v9 = [v8 BOOLValue];

  v10 = [(VUIStoreAuxMediaItem *)self isForStartingDownload];
  v11 = (v7 - 1) < 2 || v10;
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

  if (v11 != 1 || !v9)
  {
    goto LABEL_21;
  }

  v14 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Force streaming is set; configuring for streaming", buf, 2u);
  }

  v15 = [(VUIStoreAuxMediaItem *)self streamingOverrideURLForDownload];
  if (v15)
  {
    v16 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v15;
      v17 = "Using streaming override URL: %@";
LABEL_19:
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
    }
  }

  else
  {
    v15 = [v6 playbackURL];
    v16 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v15;
      v17 = "Using download's original URL: %@";
      goto LABEL_19;
    }
  }

  [(VUIStoreAuxMediaItem *)self setUrl:v15];

  v12 = @"Streaming";
  v13 = 1;
LABEL_21:
  if (v6)
  {
    v18 = v7 == 2;
  }

  else
  {
    v18 = 0;
  }

  v19 = !v18;
  if (((v19 | v9) & 1) == 0)
  {
    v20 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v20 setIsDownloaded:1];

    v21 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v22 = [(VUIStoreAuxMediaItem *)self url];
    v23 = [v22 path];

    if (!v23 || ([v21 fileExistsAtPath:v23] & 1) == 0)
    {
      if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
      {
        [VUIStoreAuxMediaItem prepareForLoadingWithCompletion:];
      }

      v24 = +[VUIMediaLibraryManager defaultManager];
      v25 = [v24 sidebandMediaLibrary];
      [v25 removeDownloadedMediaForVideoManagedObject:v6 markAsDeleted:0 invalidateImmediately:1];
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
    v41 = [MEMORY[0x1E696AD88] defaultCenter];
    [v41 addObserver:self selector:sel__scrubPlayerItemDidLoad_ name:*MEMORY[0x1E69D60D8] object:v40];
  }

  v42 = [(VUIStoreAuxMediaItem *)self bookmarkID];
  if ([(VUIBookmarkKey *)v42 length])
  {
    v43 = [(VUIStoreAuxMediaItem *)self bookmark];
    v44 = v43 == 0;

    if (!v44)
    {
      goto LABEL_54;
    }

    v45 = [VUIBookmarkKey alloc];
    v46 = [(VUIStoreAuxMediaItem *)self bookmarkID];
    v42 = [(VUIBookmarkKey *)v45 initWithIdentifier:v46 keyType:2];

    v47 = [(VUIBookmark *)[VUIMutableBookmark alloc] initWithKey:v42];
    [(VUIBookmark *)v47 bookmarkTime];
    if (v48 != 0.0)
    {
      v49 = [VUIMediaStartTimeInfo alloc];
      v50 = MEMORY[0x1E696AD98];
      [(VUIBookmark *)v47 bookmarkTime];
      v51 = [v50 numberWithDouble:?];
      v52 = [(VUIBookmark *)v47 bookmarkTimestamp];
      v53 = [(VUIMediaStartTimeInfo *)v49 initWithStartTime:v51 timestamp:v52 type:0 source:@"Store Bookkeeper"];

      v54 = [(VUIBaseMediaItem *)self startTimeCollection];
      [v54 addStartTimeInfo:v53];
    }

    [(VUIStoreAuxMediaItem *)self setBookmark:v47];
  }

LABEL_54:
  v55 = [(VUIStoreAuxMediaItem *)self bookmark];
  v56 = v55 == 0;

  if (v56)
  {
    if (v4)
    {
      v4[2](v4, 1, 0);
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
    v62 = [(VUIStoreAuxMediaItem *)self bookmark];
    v63 = [v62 key];
    v64 = [v63 identifier];
    v69 = v64;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __56__VUIStoreAuxMediaItem_prepareForLoadingWithCompletion___block_invoke;
    v66[3] = &unk_1E87372C0;
    objc_copyWeak(&v68, buf);
    v67 = v4;
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

- (id)replacementErrorForPlaybackError:(id)a3
{
  v4 = a3;
  if ([(VUIStoreAuxMediaItem *)self isiTunesPurchasedOrRentedContent])
  {
    [(VUIStoreAuxMediaItem *)self _replacementErrorForITunesPlaybackError:v4];
  }

  else
  {
    [(VUIStoreAuxMediaItem *)self _replacementErrorForPlaybackError:v4];
  }
  v5 = ;

  return v5;
}

- (id)_replacementErrorForPlaybackError:(id)a3
{
  v4 = a3;
  v5 = [(VUIStoreAuxMediaItem *)self fpsKeyError];

  v6 = v4;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69D5E18]];
    v8 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    [v7 setObject:v8 forKey:*MEMORY[0x1E696AA08]];

    v9 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    v10 = [v9 code];

    if (v10 == -345015)
    {
      v11 = +[VUILocalizationManager sharedInstance];
      v12 = [v11 localizedStringForKey:@"ContentNotAuthorizedErrorDescription"];
      [v7 setObject:v12 forKey:*MEMORY[0x1E696A598]];

      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = 811;
    }

    else
    {
      v16 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
      v17 = [v16 code];

      if (v17 == -345014)
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

      v23 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
      v24 = [v23 code];

      if (v24 == -345023)
      {
        v25 = +[VUILocalizationManager sharedInstance];
        v26 = [v25 localizedStringForKey:@"VIDEO_UNAVAILABLE_IN_THIS_REGION_ERROR"];
        [v7 setObject:v26 forKey:*MEMORY[0x1E696A598]];

        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = 828;
      }

      else
      {
        v28 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
        v29 = [v28 code];

        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        if (v29 == -345028)
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
    v15 = v4;
LABEL_16:
  }

  return v6;
}

- (id)_replacementErrorForITunesPlaybackError:(id)a3
{
  v4 = a3;
  v5 = [(VUIStoreAuxMediaItem *)self fpsKeyError];

  v6 = v4;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69D5E18]];
    v8 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    [v7 setObject:v8 forKey:*MEMORY[0x1E696AA08]];

    v9 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
    if ([v9 code] == -345015)
    {
    }

    else
    {
      v10 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
      v11 = [v10 code];

      if (v11 != -345017)
      {
        v18 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
        v19 = [v18 code];

        if (v19 == -345014)
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
          v26 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
          v27 = [v26 code];

          if (v27 != -345016)
          {
            v31 = [(VUIStoreAuxMediaItem *)self fpsKeyError];
            v32 = [v31 code];

            v14 = objc_alloc(MEMORY[0x1E696ABC0]);
            if (v32 == -345028)
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
    v16 = v4;
LABEL_7:
  }

  return v6;
}

- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6
{
  v10 = [(VUIStoreAuxMediaItem *)self bookmark];

  if (v10)
  {
    v11 = [(VUIStoreAuxMediaItem *)self bookmark];
    [v11 setBookmarkTime:a3];

    v12 = [(VUIStoreAuxMediaItem *)self bookmark];
    v13 = [MEMORY[0x1E695DF00] date];
    [v12 setBookmarkTimestamp:v13];

    [MEMORY[0x1E69D5A48] playedThresholdTimeForDuration:a5];
    v15 = v14;
    if ([(VUIStoreAuxMediaItem *)self isFamilySharingContent])
    {
      v16 = objc_alloc(MEMORY[0x1E6970A10]);
      v17 = [(VUIStoreAuxMediaItem *)self bookmarkID];
      v37 = [v16 initWithUbiquitousIdentifier:v17];

      [v37 setBookmarkTime:a3];
      [v37 setBookmarkTimestamp:CFAbsoluteTimeGetCurrent()];
      v18 = [MEMORY[0x1E6970A08] sharedUbiquitousPlaybackPositionController];
      [v18 persistPlaybackPositionMetadataEntity:v37 isCheckpoint:0 completion:0];
    }

    else
    {
      v37 = +[VideosExtrasBookmarkController sharedInstance];
      v18 = [(VUIStoreAuxMediaItem *)self bookmark];
      v24 = [v18 key];
      v25 = [v24 identifier];
      [v37 pushBookmarkForIdentifier:v25 bookmarkTime:v15 <= a4 playedToNominalLength:a4];
    }
  }

  else
  {
    v19 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

    if (!v19)
    {
      return;
    }

    v37 = [MEMORY[0x1E695DF00] date];
    v18 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
    v20 = [(VUIStoreAuxMediaItem *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB8]];
    v21 = v20;
    if (v18)
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
      [v18 doubleValue];
      v27 = fmax(a3 - v26, 0.0);
      [v21 doubleValue];
      if (v27 >= v28)
      {
        [v21 doubleValue];
        v27 = v29;
      }

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
    }

    v30 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v30 setBookmarkTime:v31];

    v32 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [v32 setBookmarkTimeStamp:v37];

    v33 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [v33 setMainContentRelativeBookmarkTime:v23];

    v34 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [v34 setMainContentRelativeBookmarkTimeStamp:v37];

    v35 = +[VUIMediaLibraryManager defaultManager];
    v36 = [v35 sidebandMediaLibrary];
    [v36 saveChangesToManagedObjects];
  }
}

- (void)cleanUpMediaItem
{
  v3 = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
  [v3 sendStreamingStopRequestIfNecessary];

  [(VUIStoreAuxMediaItem *)self setPlaybackType:0];
  [(VUIStoreAuxMediaItem *)self setMediaItemMetadata:0 forProperty:*MEMORY[0x1E69D5CA8]];
  [(VUIStoreAuxMediaItem *)self setBookmark:0];
  v4 = [(VUIStoreAuxMediaItem *)self scrubPlayer];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69D60D8];
    v7 = [(VUIStoreAuxMediaItem *)self scrubPlayer];
    [v5 removeObserver:self name:v6 object:v7];

    v8 = [(VUIStoreAuxMediaItem *)self scrubPlayer];
    [v8 invalidate];

    [(VUIStoreAuxMediaItem *)self setScrubPlayer:0];
  }

  [(VUIStoreAuxMediaItem *)self setParentReportingToken:0];
}

- (void)mediaItem:(id)a3 errorDidOccur:(id)a4 player:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E69874D8]])
  {
    v8 = [v6 code];

    if (v8 == -11800)
    {
      v9 = [v6 userInfo];
      v10 = [v9 objectForKey:*MEMORY[0x1E696AA08]];

      if (!v10)
      {
        goto LABEL_22;
      }

LABEL_8:
      if ([v10 code] == -42803 || objc_msgSend(v10, "code") == -42799)
      {
        v13 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

        if (v13)
        {
          if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_ERROR))
          {
            [VUIStoreAuxMediaItem mediaItem:errorDidOccur:player:];
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
          v15 = [v14 fpsKeyInfo];

          v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v25 + 1) + 8 * i);
                [v20 setIsInvalid:1];
                v21 = [MEMORY[0x1E695DF00] distantPast];
                [v20 setRenewalDate:v21];
              }

              v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
            }

            while (v17);
          }

          v22 = +[VUIMediaLibraryManager defaultManager];
          v23 = [v22 sidebandMediaLibrary];
          [v23 saveChangesToManagedObjects];

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

  v11 = [v6 domain];
  v12 = [v11 isEqualToString:@"CoreMediaErrorDomain"];

  if (!v12)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v10 = v6;
  if (v10)
  {
    goto LABEL_8;
  }

LABEL_22:
}

- (void)mediaItem:(id)a3 didChangeFromPlaybackState:(id)a4 toPlaybackState:(id)a5 updatedRate:(double)a6 player:(id)a7
{
  v14 = a5;
  v9 = MEMORY[0x1E69D5A40];
  v10 = a4;
  v11 = [v9 stopped];

  if (v11 != v10)
  {
    v12 = [MEMORY[0x1E69D5A40] stopped];

    v13 = v14;
    if (v12 != v14)
    {
      goto LABEL_5;
    }

    v11 = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
    [v11 sendStreamingStopRequestIfNecessary];
  }

  v13 = v14;
LABEL_5:
}

- (void)loadFairPlayStreamingKeyRequests:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = v6;
  if ([(VUIStoreAuxMediaItem *)self playbackType]== 2)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = v6;
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

    v6 = v36;
  }

  else
  {
    [v7 addObjectsFromArray:v6];
  }

  if ([v7 count])
  {
    v16 = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];

    if (!v16)
    {
      v17 = [(VUIStoreAuxMediaItem *)self fpsCertificateURL];
      v18 = [(VUIStoreAuxMediaItem *)self fpsKeyServerURL];
      v19 = [[VUIStoreFPSKeyLoader alloc] initWithCertificateURL:v17 keyServerURL:v18];
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

    v22 = [(VUIStoreAuxMediaItem *)self fpsAdditionalServerParams];
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
          [v29 setAdditionalRequestParams:v22];
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

    v32 = [(VUIStoreAuxMediaItem *)self storeFPSKeyLoader];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __68__VUIStoreAuxMediaItem_loadFairPlayStreamingKeyRequests_completion___block_invoke;
    v37[3] = &unk_1E872E580;
    v37[4] = self;
    v33 = v35;
    v38 = v35;
    [v32 loadFairPlayStreamingKeyRequests:v23 completion:v37];

    v6 = v36;
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

- (void)updateOfflineKeyWithIdentifier:(id)a3 updatedOfflineKeyData:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = sLogObject_23;
  if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Offline key data was updated for video with playback expiration policy.  Key identifier is %@", buf, 0xCu);
  }

  v9 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
  v10 = v9;
  if (v6 && v9)
  {
    v11 = [v7 length];

    if (v11)
    {
      v12 = +[VUIMediaLibraryManager defaultManager];
      v13 = [v12 sidebandMediaLibrary];
      v14 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v15 = [v13 fpsKeyInfoForVideo:v14 keyURI:v6 createIfNeeded:0 wasCreated:0];

      v16 = [MEMORY[0x1E695DF00] date];
      v17 = [v15 playbackDuration];
      v33 = v17;
      if (v17)
      {
        [v17 doubleValue];
        v18 = v16;
        v19 = [v16 dateByAddingTimeInterval:?];
      }

      else
      {
        v18 = v16;
        v19 = 0;
      }

      v20 = [MEMORY[0x1E696AD88] defaultCenter];
      v21 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v22 = [v21 objectID];
      [v20 postNotificationName:@"VUIVideoManagedObjectPlaybackExpirationWillChangeNotification" object:v22];

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

      v7 = v32;
      if (v19)
      {
        [v15 setExpirationDate:v19];
      }

      [v15 setPlaybackExpirationStartDate:v18];
      [v15 setKeyData:v32];
      v26 = +[VUIMediaLibraryManager defaultManager];
      v27 = [v26 sidebandMediaLibrary];
      [v27 saveChangesToManagedObjects];

      v28 = +[VUIOfflineKeyRenewalManager sharedInstance];
      [v28 updateKeyRenewalAndExpiration];

      v29 = [MEMORY[0x1E696AD88] defaultCenter];
      v30 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v31 = [v30 objectID];
      [v29 postNotificationName:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:v31];

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

- (void)storeFPSKeyLoader:(id)a3 willFailWithError:(id)a4 forKeyRequest:(id)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(VUIStoreAuxMediaItem *)self fpsKeyError];

  if (!v7)
  {
    [(VUIStoreAuxMediaItem *)self setFpsKeyError:v6];
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
LABEL_8:
            v14 = *MEMORY[0x1E69D5E10];
            v22[0] = *MEMORY[0x1E69D5E18];
            v22[1] = v14;
            v23[0] = MEMORY[0x1E695E118];
            v23[1] = v8;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
            v16 = [MEMORY[0x1E696AD88] defaultCenter];
            [v16 postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v15];

            goto LABEL_9;
          }

          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v9 setObject:v8 forKey:*MEMORY[0x1E696AA08]];
          v11 = +[VUILocalizationManager sharedInstance];
          v12 = [v11 localizedStringForKey:@"SignInToWatchThisVideoErrorDescription"];
          [v9 setObject:v12 forKey:*MEMORY[0x1E696A598]];

          v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:813 userInfo:v9];
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
    v21[1] = v6;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 postNotificationName:*MEMORY[0x1E69D5E08] object:self userInfo:v18];
  }
}

- (void)storeFPSKeyLoader:(id)a3 didLoadOfflineKeyData:(id)a4 forKeyRequest:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v8 keyIdentifier];
  v10 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
  if (!v10 || !v9)
  {
LABEL_10:

    goto LABEL_11;
  }

  v11 = [v7 length];

  if (v11)
  {
    v12 = sLogObject_23;
    if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v8;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Saving offline key data to database: %@", &v26, 0xCu);
    }

    v13 = +[VUIMediaLibraryManager defaultManager];
    v14 = [v13 sidebandMediaLibrary];
    v15 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    v10 = [v14 fpsKeyInfoForVideo:v15 keyURI:v9 createIfNeeded:1 wasCreated:0];

    v16 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    [v10 populateFromKeyRequest:v8 video:v16];

    v17 = +[VUIMediaLibraryManager defaultManager];
    v18 = [v17 sidebandMediaLibrary];
    [v18 saveChangesToManagedObjects];

    v19 = +[VUIOfflineKeyRenewalManager sharedInstance];
    [v19 updateKeyRenewalAndExpiration];

    v20 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
    v21 = [v20 downloadState];

    if (!v21)
    {
      v22 = sLogObject_23;
      if (os_log_type_enabled(sLogObject_23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Offline keys received for an item that is no longer downloading or downloaded.  Invalidating keys.", &v26, 2u);
      }

      v23 = +[VUIMediaLibraryManager defaultManager];
      v24 = [v23 sidebandMediaLibrary];
      v25 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      [v24 removeDownloadedMediaForVideoManagedObject:v25 markAsDeleted:0 invalidateImmediately:1];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_scrubPlayerItemDidLoad:(id)a3
{
  v4 = [(VUIStoreAuxMediaItem *)self scrubPlayer];
  v5 = [v4 unqueuedPlayerItem];

  [(VUIStoreAuxMediaItem *)self setMediaItemMetadata:v5 forProperty:*MEMORY[0x1E69D5D20]];
}

- (id)_offlineKeyDataForKeyRequest:(id)a3
{
  v4 = a3;
  if ([(VUIStoreAuxMediaItem *)self ignoreExistingOfflineKeyData])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 keyIdentifier];
    v7 = [(VUIStoreAuxMediaItem *)self videoManagedObject];

    v5 = 0;
    if (v7 && v6)
    {
      v8 = +[VUIMediaLibraryManager defaultManager];
      v9 = [v8 sidebandMediaLibrary];
      v10 = [(VUIStoreAuxMediaItem *)self videoManagedObject];
      v11 = [v9 fpsKeyInfoForVideo:v10 keyURI:v6 createIfNeeded:0 wasCreated:0];

      v5 = [v11 keyData];
    }
  }

  return v5;
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