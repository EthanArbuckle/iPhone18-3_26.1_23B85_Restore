@interface VUIMediaInfo
+ (id)_playbackOverridesForURL:(id)a3 adamID:(id)a4 canonicalID:(id)a5;
+ (id)playbackURLOverrideForOriginalURL:(id)a3 adamID:(id)a4 canonicalID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 mpMediaItems:(id)a4;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 sidebandLibraryAdamIDs:(id)a4;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 storeAuxMediaItem:(id)a4;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 videosPlayables:(id)a4 imageProxies:(id)a5 storeDictionary:(id)a6;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 vuiMediaItems:(id)a4;
- (id)_auxMediaItemFromVideosPlayable:(id)a3;
- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)a3;
- (id)_mediaItemForSidebandLibraryAdamID:(id)a3;
- (id)_playlistForSidebandLibraryAdamIDs:(id)a3;
- (id)_playlistForVUIMediaItems:(id)a3 playbackContext:(unint64_t)a4;
- (id)_playlistFromMPMediaItems:(id)a3 playbackContext:(unint64_t)a4;
- (id)_playlistFromVideosPlayables:(id)a3 andStoreDictionary:(id)a4;
- (id)_sportingEventSubtitleFromStartTime:(id)a3 endTime:(id)a4 leagueShortName:(id)a5;
- (id)_sportingEventTimeSpanStringFromMediaItem:(id)a3;
- (id)_sportingEventTimeSpanStringFromStartTime:(id)a3 endTime:(id)a4;
- (id)_storeMediaItemFromMPMediaItem:(id)a3 playbackContext:(unint64_t)a4;
- (id)_storeMediaItemFromVideosPlayable:(id)a3 andStoreDictionary:(id)a4;
- (id)_tvpMediaTypeFromPlayable:(id)a3;
- (id)_tvpRatingDomainFromUTSRatingDomain:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_videoDynamimcRangeFromMPColorCapability:(int64_t)a3;
- (int64_t)_videoResolutionFromMPVideoQuality:(int64_t)a3;
- (unint64_t)hash;
- (void)_populateMediaItem:(id)a3 withMetadataFromVideosPlayable:(id)a4;
- (void)_populateMediaItem:(id)a3 withMetadataOverrides:(id)a4;
- (void)_populateMediaItem:(id)a3 withOtherMediaItem:(id)a4;
- (void)_populateMediaItem:(id)a3 withResumeTimeInfoFromPlayable:(id)a4;
- (void)_updatePlaybackStartReason;
- (void)_updatePlaybackStopReason;
- (void)setUserPlaybackInitiationDate:(id)a3 openURLCompletionDate:(id)a4;
@end

@implementation VUIMediaInfo

+ (id)playbackURLOverrideForOriginalURL:(id)a3 adamID:(id)a4 canonicalID:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a1 _playbackOverridesForURL:v8 adamID:a4 canonicalID:a5];
  v10 = [v9 objectForKey:@"replacementPlaybackURL"];
  if ([v10 length])
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Overriding original playback URL %@ with replacement playback URL %@", &v14, 0x16u);
    }

    v12 = [MEMORY[0x1E695DFF8] URLWithString:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 videosPlayables:(id)a4 imageProxies:(id)a5 storeDictionary:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = VUIMediaInfo;
  v14 = [(VUIMediaInfo *)&v19 init];
  v15 = v14;
  if (v14)
  {
    *&v14->_automaticPlaybackStart = 0;
    v14->_allowsPictureInPicture = 1;
    v14->_playbackStartReason = 0;
    v14->_playbackStopReason = 0;
    v14->_playbackContext = a3;
    v14->_playbackDelayInterval = 5.0;
    objc_storeStrong(&v14->_videosPlayables, a4);
    if (v12)
    {
      [(VUIMediaInfo *)v15 setImageProxies:v12];
    }

    if ([v11 count])
    {
      v16 = [(VUIMediaInfo *)v15 _playlistFromVideosPlayables:v11 andStoreDictionary:v13];
      if (v16)
      {
        [(VUIMediaInfo *)v15 setTvpPlaylist:v16];
        v17 = [MEMORY[0x1E695DF00] date];
        [(VUIMediaInfo *)v15 setUserPlaybackInitiationDate:v17 openURLCompletionDate:0];

        [(VUIMediaInfo *)v15 _updatePlaybackStartReason];
        [(VUIMediaInfo *)v15 _updatePlaybackStopReason];
      }
    }
  }

  return v15;
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 storeAuxMediaItem:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v19.receiver = self;
  v19.super_class = VUIMediaInfo;
  v7 = [(VUIMediaInfo *)&v19 init];
  v8 = v7;
  if (v7)
  {
    *&v7->_automaticPlaybackStart = 0;
    v7->_allowsPictureInPicture = 1;
    v7->_playbackStartReason = 0;
    v7->_playbackStopReason = 0;
    v7->_playbackContext = a3;
    v7->_playbackDelayInterval = 5.0;
    v9 = [MEMORY[0x1E695DEC8] array];
    videosPlayables = v8->_videosPlayables;
    v8->_videosPlayables = v9;

    if (v6)
    {
      v11 = [VUIStoreAuxMediaItem alloc];
      v12 = [v6 mediaItemURL];
      v13 = [(VUIStoreAuxMediaItem *)v11 initWithURL:v12];

      [(VUIMediaInfo *)v8 _populateMediaItem:v13 withOtherMediaItem:v6];
      v14 = objc_alloc(MEMORY[0x1E69D5A58]);
      v20[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v16 = [v14 initWithMediaItems:v15 index:0 isCollection:0];
      [(VUIMediaInfo *)v8 setTvpPlaylist:v16];

      v17 = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:v17 openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
      [(VUIMediaInfo *)v8 _updatePlaybackStopReason];
    }
  }

  return v8;
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 sidebandLibraryAdamIDs:(id)a4
{
  v6 = a4;
  v7 = [(VUIMediaInfo *)self initWithPlaybackContext:a3 videosPlayables:0 imageProxies:0 storeDictionary:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(VUIMediaInfo *)v7 _playlistForSidebandLibraryAdamIDs:v6];
    if (v9)
    {
      [(VUIMediaInfo *)v8 setTvpPlaylist:v9];
      v10 = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:v10 openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIntent:{-[VUIMediaInfo intent](self, "intent")}];
  v5 = [(VUIMediaInfo *)self overlayView];
  [v4 setOverlayView:v5];

  v6 = [(VUIMediaInfo *)self contentView];
  [v4 setContentView:v6];

  v7 = [(VUIMediaInfo *)self imageProxies];
  [v4 setImageProxies:v7];

  v8 = [(VUIMediaInfo *)self backgroundColor];
  [v4 setBackgroundColor:v8];

  v9 = [(VUIMediaInfo *)self tvpPlaylist];
  [v4 setTvpPlaylist:v9];

  [v4 setShowsSecondaryVideoView:{-[VUIMediaInfo showsSecondaryVideoView](self, "showsSecondaryVideoView")}];
  [v4 setIsAudioOnly:{-[VUIMediaInfo isAudioOnly](self, "isAudioOnly")}];
  [v4 setRestrictionsAlreadyUnlocked:{-[VUIMediaInfo restrictionsAlreadyUnlocked](self, "restrictionsAlreadyUnlocked")}];
  [v4 setShouldDelayLoadingImage:{-[VUIMediaInfo shouldDelayLoadingImage](self, "shouldDelayLoadingImage")}];
  [v4 setPlaybackContext:{-[VUIMediaInfo playbackContext](self, "playbackContext")}];
  [(VUIMediaInfo *)self playbackDelayInterval];
  [v4 setPlaybackDelayInterval:?];
  v10 = [(VUIMediaInfo *)self alphaImageProxy];
  v11 = [v10 copy];
  [v4 setAlphaImageProxy:v11];

  v12 = [(VUIMediaInfo *)self alphaLayerAccessibilityText];
  v13 = [v12 copy];
  [v4 setAlphaLayerAccessibilityText:v13];

  v14 = [(VUIMediaInfo *)self videosPlayables];
  v15 = [v14 copy];
  [v4 setVideosPlayables:v15];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(VUIMediaInfo *)self overlayView];
  v4 = [v3 hash];

  v5 = [(VUIMediaInfo *)self imageProxies];
  v6 = [v5 hash] ^ v4;

  v7 = [(VUIMediaInfo *)self tvpPlaylist];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 != self)
  {
    v7 = [(VUIMediaInfo *)self imageProxies];
    v8 = [(VUIMediaInfo *)v6 imageProxies];
    if (![v7 isEqual:v8])
    {
      v15 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v9 = [(VUIMediaInfo *)self tvpPlaylist];
    v10 = [(VUIMediaInfo *)v6 tvpPlaylist];
    if (![v9 isEqualToPlaylist:v10] || (v11 = -[VUIMediaInfo intent](self, "intent"), v11 != -[VUIMediaInfo intent](v6, "intent")))
    {
      v15 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v12 = [(VUIMediaInfo *)self playlist];
    v13 = [(VUIMediaInfo *)v6 playlist];
    if (v12 != v13)
    {
      v14 = [(VUIMediaInfo *)self playlist];
      v36 = [(VUIMediaInfo *)v6 playlist];
      if (![v14 isEqual:?])
      {
        v15 = 0;
        goto LABEL_29;
      }

      v35 = v14;
    }

    v16 = [(VUIMediaInfo *)self overlayView];
    v17 = [(VUIMediaInfo *)v6 overlayView];
    if (v16 != v17)
    {

      v15 = 0;
      goto LABEL_28;
    }

    v33 = v12;
    v34 = v17;
    v18 = [(VUIMediaInfo *)self contentView];
    v19 = [(VUIMediaInfo *)v6 contentView];
    if (v18 != v19)
    {

      v15 = 0;
LABEL_27:
      v12 = v33;
LABEL_28:
      v14 = v35;
      if (v12 == v13)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_29:

      goto LABEL_30;
    }

    v29 = v18;
    v30 = v19;
    v20 = [(VUIMediaInfo *)self imageProxies];
    v31 = [(VUIMediaInfo *)v6 imageProxies];
    v32 = v20;
    if (v20 == v31)
    {
      goto LABEL_23;
    }

    v21 = [(VUIMediaInfo *)v6 imageProxies];
    if (!v21)
    {
      v15 = 0;
      goto LABEL_26;
    }

    v28 = v21;
    v22 = [(VUIMediaInfo *)self imageProxies];
    v26 = [(VUIMediaInfo *)v6 imageProxies];
    v27 = v22;
    if ([v22 isEqualToArray:v26])
    {
LABEL_23:
      v23 = [(VUIMediaInfo *)self backgroundColor];
      v24 = [(VUIMediaInfo *)v6 backgroundColor];
      v15 = v23 == v24;

      if (v32 == v31)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_26;
  }

  v15 = 1;
LABEL_33:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VUIMediaInfo *)self intent];
  v7 = [(VUIMediaInfo *)self overlayView];
  v8 = [(VUIMediaInfo *)self contentView];
  v9 = [(VUIMediaInfo *)self backgroundColor];
  v10 = [(VUIMediaInfo *)self playlist];
  v11 = [(VUIMediaInfo *)self imageProxies];
  v12 = [v3 stringWithFormat:@"<%@: %p> Intent = %lu, overlayView = %@, contentView = %@, backgroundColor = %@, playlist = %@, imageProxies = %@, , playbackContext = %ld", v5, self, v6, v7, v8, v9, v10, v11, -[VUIMediaInfo playbackContext](self, "playbackContext")];

  return v12;
}

- (void)setUserPlaybackInitiationDate:(id)a3 openURLCompletionDate:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(VUIMediaInfo *)self tvpPlaylist];
  v8 = [v7 currentMediaItem];

  v9 = [v8 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  if (!v14)
  {
    v14 = [MEMORY[0x1E695DF00] date];
  }

  [v9 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6040] date:v14];
  [v9 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6058] date:v14];
  if (v6)
  {
    v10 = MEMORY[0x1E69D6010];
    [v9 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6010] date:v14];
    v11 = *v10;
    v12 = MEMORY[0x1E696AD98];
    [v6 timeIntervalSinceReferenceDate];
    v13 = [v12 numberWithDouble:?];
    [v9 addEndEventWithName:v11 identifier:v11 timestamp:v13];
  }
}

- (void)_updatePlaybackStartReason
{
  v3 = [(VUIMediaInfo *)self playbackContext];
  v4 = @"Unknown";
  v5 = 4;
  if (v3 <= 6)
  {
    if (v3 <= 3)
    {
      switch(v3)
      {
        case 1:
          v12 = *MEMORY[0x1E69D5F70];
          v5 = 4;
          break;
        case 2:
          v12 = *MEMORY[0x1E69D5F78];
          v5 = 2;
          break;
        case 3:
          v12 = *MEMORY[0x1E69D5F50];
          v5 = 5;
          break;
        default:
          v12 = @"Unknown";
          break;
      }

      goto LABEL_28;
    }

    if (v3 == 4)
    {
      v12 = *MEMORY[0x1E69D5F48];
      v5 = 6;
      goto LABEL_28;
    }

    if (v3 == 5)
    {
      v12 = *MEMORY[0x1E69D5F58];
      v5 = 7;
      goto LABEL_28;
    }

    v6 = v3 == 6;
    v7 = @"Unknown";
    v8 = 1;
  }

  else if (v3 <= 9)
  {
    if (v3 == 7)
    {
      v12 = @"Unknown";
      v5 = 11;
      goto LABEL_28;
    }

    if (v3 == 8)
    {
      v12 = *MEMORY[0x1E69D5F60];
      v5 = 8;
      goto LABEL_28;
    }

    v6 = v3 == 9;
    v7 = @"CatchUpToLive";
    v8 = 9;
  }

  else
  {
    if ((v3 - 10) < 3)
    {
      v12 = *MEMORY[0x1E69D5F68];
      v5 = 3;
      goto LABEL_28;
    }

    v6 = v3 == 13;
    v7 = @"Unknown";
    v8 = 12;
  }

  if (v6)
  {
    v4 = v7;
  }

  v12 = v4;
  if (v6)
  {
    v5 = v8;
  }

LABEL_28:
  [(VUIMediaInfo *)self setPlaybackStartReason:v5];
  v9 = [(VUIMediaInfo *)self tvpPlaylist];
  v10 = [v9 currentMediaItem];

  v11 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v11 addSingleShotEventWithName:*MEMORY[0x1E69D6018] value:v12];
}

- (void)_updatePlaybackStopReason
{
  v3 = [(VUIMediaInfo *)self playbackContext]- 9;
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1E42974A0[v3];
  }

  [(VUIMediaInfo *)self setPlaybackStopReason:v4];
}

- (id)_tvpRatingDomainFromUTSRatingDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Movie"])
  {
    v4 = MEMORY[0x1E69D5B10];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"Show"])
  {
    v4 = MEMORY[0x1E69D5B18];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_playlistFromVideosPlayables:(id)a3 andStoreDictionary:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = a4;
  if ([v6 count])
  {
    v32 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = *v34;
    v31 = *MEMORY[0x1E69D5C50];
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if (![v11 isiTunesPurchaseOrRental])
        {
          goto LABEL_12;
        }

        if ([v11 isFamilySharingContent])
        {
          v12 = VUIDefaultLogObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Media item is a family sharing purchase.  Using aux media item for playback", buf, 2u);
          }

LABEL_12:
          v13 = 0;
          goto LABEL_14;
        }

        v13 = 1;
LABEL_14:
        v14 = objc_opt_class();
        v15 = [v11 playbackURL];
        v16 = [v11 adamID];
        v17 = [v11 canonicalID];
        v18 = [v14 _playbackOverridesForURL:v15 adamID:v16 canonicalID:v17];

        if (v18)
        {
          v19 = VUIDefaultLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v11 adamID];
            v21 = [v11 playbackURL];
            v22 = [v11 canonicalID];
            *buf = 138412802;
            v38 = v20;
            v39 = 2112;
            v40 = v21;
            v41 = 2112;
            v42 = v22;
            _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Will use aux media item and override playback metadata for adam ID %@ URL %@ canonical ID %@", buf, 0x20u);
          }
        }

        else if (v13)
        {
          v23 = [(VUIMediaInfo *)self _storeMediaItemFromVideosPlayable:v11 andStoreDictionary:v29];
          goto LABEL_21;
        }

        v23 = [(VUIMediaInfo *)self _auxMediaItemFromVideosPlayable:v11];
LABEL_21:
        v24 = v23;
        if (v23)
        {
          v25 = [(VUIMediaInfo *)self _sportingEventTimeSpanStringFromMediaItem:v23];
          [v24 setMediaItemMetadata:v25 forProperty:v31];
          [v32 addObject:v24];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (!v8)
      {
LABEL_25:

        if ([v32 count])
        {
          v26 = [objc_alloc(MEMORY[0x1E69D5A58]) initWithMediaItems:v32 index:0 isCollection:0];
        }

        else
        {
          v26 = 0;
        }

        v6 = v28;
        goto LABEL_30;
      }
    }
  }

  v26 = 0;
LABEL_30:

  return v26;
}

- (id)_storeMediaItemFromVideosPlayable:(id)a3 andStoreDictionary:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 adamID];
    v7 = [v6 longLongValue];
    if (v7)
    {
      v8 = v7;
      v78 = [v5 canonicalID];
      v9 = VUIDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Support for in-app downloads is enabled.  Looking for downloading or downloaded content to play", buf, 2u);
      }

      v10 = +[VUIDownloadManager sharedInstance];
      v11 = [v10 existingDownloadForAdamID:v6];

      if (v11)
      {
        v12 = [v11 mediaItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          [(VUIStoreMediaItem_iOS *)v13 resetReportingEventCollection];
        }

        else
        {
          v13 = 0;
        }

        v17 = VUIDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v81 = v13;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Using existing media item being downloaded: %@", buf, 0xCu);
        }
      }

      else
      {
        v14 = +[VUIMediaLibraryManager defaultManager];
        v15 = [v14 sidebandMediaLibrary];
        v12 = [v15 videoForAdamID:v6 useMainThreadContext:1];

        if (v12 && [(VUIStoreMediaItem_iOS *)v12 downloadState]== 2)
        {
          v16 = VUIDefaultLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v81 = v12;
            _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Item is downloaded.  Using videoManagedObject when creating media item: %@", buf, 0xCu);
          }

          v13 = [[VUIStoreMediaItem_iOS alloc] initWithAdamID:v8 videoManagedObject:v12 isForStartingDownload:0];
        }

        else
        {
          v13 = 0;
        }
      }

      if (!v13)
      {
        v59 = v11;
        v13 = [[VUIStoreMediaItem_iOS alloc] initWithAdamID:v8 videoManagedObject:0 isForStartingDownload:0];
        v18 = [v5 hlsURL];
        v76 = [v5 buyParams];
        v19 = [v5 fpsCertificateURL];
        v20 = [v5 fpsKeyServerURL];
        v70 = [v5 fpsAdditionalServerParams];
        v21 = [v5 rentalID];
        v22 = [v5 metadata];
        v77 = [v22 rentalStartedWatchingTimestamp];

        v75 = [v5 referenceID];
        v74 = [v5 showCanonicalID];
        v61 = [v5 seasonCanonicalID];
        v73 = [v5 vpafMetrics];
        v23 = [v5 metadata];
        v56 = [v23 isAdultContent];

        v24 = [v5 metadata];
        v72 = [v24 commonSenseRecommendedAge];

        v25 = [v5 metadata];
        v71 = [v25 hasADLocales];

        v26 = [v5 metadata];
        v69 = [v26 hasSDHLocales];

        v27 = [v5 metadata];
        v64 = [v27 hasDolbyAtmos];

        v68 = [v5 requiredAgeForPlayback];
        v67 = [v5 frequencyOfAgeConfirmation];
        v60 = [v5 mediaMetrics];
        v66 = [v5 tvAppDeeplinkURL];
        v28 = [v5 metadata];
        v65 = [v28 showTitle];

        v29 = [v5 metadata];
        v63 = [v29 seasonNumber];

        v30 = [v5 metadata];
        v54 = [v30 episodeNumber];

        v31 = [v5 metadata];
        v62 = [v31 videoResolutionClass];

        v32 = [v5 metadata];
        v33 = [v32 mediaShareMetadata];

        v34 = [v5 metadata];
        v35 = [v34 showMediaShareMetadata];

        [(VUIStoreMediaItem_iOS *)v13 setHlsPlaybackURL:v18];
        [(VUIStoreMediaItem_iOS *)v13 setFpsCertificateURL:v19];
        v58 = v20;
        [(VUIStoreMediaItem_iOS *)v13 setFpsKeyServerURL:v20];
        [(VUIStoreMediaItem_iOS *)v13 setFpsAdditionalServerParams:v70];
        [(VUIStoreMediaItem_iOS *)v13 setPlaybackContext:[(VUIMediaInfo *)self playbackContext]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v6 forProperty:*MEMORY[0x1E69D5DA8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v76 forProperty:*MEMORY[0x1E69D5AE0]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v78 forProperty:*MEMORY[0x1E69D5AE8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v75 forProperty:*MEMORY[0x1E69D5CD8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v74 forProperty:*MEMORY[0x1E69D5D50]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v61 forProperty:*MEMORY[0x1E69D5D28]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v73 forProperty:*MEMORY[0x1E69D5DE0]];
        v36 = [MEMORY[0x1E696AD98] numberWithBool:v56];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v36 forProperty:*MEMORY[0x1E69D5C38]];

        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v72 forProperty:*MEMORY[0x1E69D5AF8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v69 forProperty:*MEMORY[0x1E69D5C18]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v71 forProperty:*MEMORY[0x1E69D5C08]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v64 forProperty:*MEMORY[0x1E69D5C10]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v68 forProperty:*MEMORY[0x1E69D5D00]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v67 forProperty:*MEMORY[0x1E69D5BD8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v60 forProperty:*MEMORY[0x1E69D5C70]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v66 forProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v65 forProperty:*MEMORY[0x1E69D5D38]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v63 forProperty:*MEMORY[0x1E69D5D30]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v54 forProperty:*MEMORY[0x1E69D5B80]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v62 forProperty:*MEMORY[0x1E69D5DF0]];
        v57 = v33;
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v33 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
        v55 = v35;
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v35 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
        v37 = v21;
        if (v21 && ([v21 isEqual:&unk_1F5E5D8C0] & 1) == 0)
        {
          [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v21 forProperty:*MEMORY[0x1E69D5CE8]];
        }

        if (v77)
        {
          v38 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v38 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
          v39 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
          [v38 setTimeZone:v39];

          v40 = [v38 dateFromString:v77];
          if (v40)
          {
            [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v40 forProperty:*MEMORY[0x1E69D5CF8]];
          }
        }

        v41 = *MEMORY[0x1E69D5B20];
        v42 = [(VUIStoreMediaItem_iOS *)v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B20]];
        if (!v42)
        {
          v43 = [v5 metadata];
          v44 = [v43 ratingValue];

          [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v44 forProperty:v41];
        }

        v45 = [v5 metadata];
        v46 = [v45 ratingDomain];

        v47 = [(VUIMediaInfo *)self _tvpRatingDomainFromUTSRatingDomain:v46];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v47 forProperty:*MEMORY[0x1E69D5B08]];

        v48 = *MEMORY[0x1E69D5C78];
        v49 = [(VUIStoreMediaItem_iOS *)v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
        if (![v49 length])
        {
          [(VUIMediaInfo *)self _tvpMediaTypeFromPlayable:v5];
          v50 = v53 = v37;
          [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v50 forProperty:v48];

          v37 = v53;
        }

        [(VUIMediaInfo *)self _populateMediaItem:v13 withMetadataFromVideosPlayable:v5];

        v11 = v59;
      }
    }

    else
    {
      v78 = VUIDefaultLogObject();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [VUIMediaInfo _storeMediaItemFromVideosPlayable:v78 andStoreDictionary:?];
      }

      v13 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIMediaInfo *)self _populateMediaItem:v13 withResumeTimeInfoFromPlayable:v5];
    }

    v51 = [v5 sharedWatchId];
    [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v51 forProperty:*MEMORY[0x1E69D5CA0]];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_auxMediaItemFromVideosPlayable:(id)a3
{
  v170 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 canonicalID];
  v6 = [v4 adamID];
  v7 = [v4 requiredAgeForPlayback];
  v160 = [v4 frequencyOfAgeConfirmation];
  v165 = self;
  if ([v6 length])
  {
    v8 = [v4 mediaType];
    v9 = v8;
    if (v8 && [v8 isEqualToString:@"Trailer"])
    {

      goto LABEL_28;
    }

    v10 = +[VUIDownloadManager sharedInstance];
    v11 = [v10 existingDownloadForAdamID:v6];

    v105 = v7;
    v106 = v5;
    v163 = v11;
    if (v11)
    {
      v12 = VUIDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v167 = 0;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Using existing media item being downloaded: %@", buf, 0xCu);
      }

      v13 = [v11 mediaItem];
      v14 = [v4 metadata];
      v15 = [v14 mediaShareMetadata];

      v16 = [v4 metadata];
      v17 = [v16 showMediaShareMetadata];

      v18 = [v4 artworkURL];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 absoluteString];
        [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v20 forProperty:*MEMORY[0x1E69D5AC0]];
      }

      [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v15 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
      [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v17 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(VUIStoreAuxMediaItem *)v13 resetReportingEventCollection];
      }
    }

    else
    {
      v21 = +[VUIMediaLibraryManager defaultManager];
      v22 = [v21 sidebandMediaLibrary];
      v15 = [v22 videoForAdamID:v6 useMainThreadContext:1];

      if (!v15)
      {
        v13 = 0;
        v5 = v106;
        goto LABEL_27;
      }

      v23 = [v15 downloadState];
      v5 = v106;
      if (v23 != 2)
      {
        if (v23 || ([v15 markedAsDeleted] & 1) != 0)
        {
          v13 = 0;
          goto LABEL_27;
        }

        v13 = [v15 expirationDate];

        if (!v13)
        {
LABEL_27:

          v7 = v105;
          if (v13)
          {
            goto LABEL_65;
          }

          goto LABEL_28;
        }
      }

      v161 = v6;
      v24 = objc_opt_class();
      [v15 adamID];
      v26 = v25 = self;
      v27 = [v15 canonicalID];
      v17 = [v24 _playbackOverridesForURL:0 adamID:v26 canonicalID:v27];

      v13 = [[VUIStoreAuxMediaItem alloc] initWithVideoManagedObject:v15 isForStartingDownload:0];
      v28 = [v4 playbackURL];
      v29 = [VUIPlaybackUtilities updatedHLSURL:v28 forPlaybackContext:[(VUIMediaInfo *)v25 playbackContext]];
      [(VUIStoreAuxMediaItem *)v13 setStreamingOverrideURLForDownload:v29];

      v30 = [v4 metadata];
      v19 = [v30 mediaShareMetadata];

      v31 = [v4 metadata];
      v32 = [v31 showMediaShareMetadata];

      [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v19 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
      [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v32 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
      v33 = [v4 playablePassThrough];
      if ([v33 length])
      {
        [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v33 forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
      }

      v34 = [v4 artworkURL];
      v35 = v34;
      if (v34)
      {
        v36 = [v34 absoluteString];
        [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v36 forProperty:*MEMORY[0x1E69D5AC0]];
      }

      v37 = VUIDefaultLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "Creating new media item for playable from library since it is not being downloaded currently", buf, 2u);
      }

      [(VUIMediaInfo *)v165 _populateMediaItem:v13 withMetadataOverrides:v17];
      v6 = v161;
    }

    v5 = v106;
    self = v165;
    goto LABEL_27;
  }

LABEL_28:
  v38 = [v4 playbackURL];
  v157 = [v4 hlsProgramID];
  v156 = [v4 externalID];
  v155 = [v4 channelID];
  v154 = [v4 channelName];
  v39 = [v4 metadata];
  v153 = [v39 ratingValue];

  v40 = [v4 metadata];
  v115 = [v40 isExtrasContent];

  v41 = [v4 metadata];
  v152 = [v41 ratingName];

  v42 = [v4 metadata];
  v151 = [v42 ratingAuxiliaryName];

  v43 = [v4 mediaType];
  v44 = ([v43 isEqualToString:@"LiveService"] & 1) != 0 || objc_msgSend(v4, "playableType") == 2;
  v110 = v44;
  v118 = v43;
  v45 = [v43 isEqualToString:@"SportingEvent"];
  v164 = [(VUIMediaInfo *)self _tvpMediaTypeFromPlayable:v4];
  v119 = [v4 scrubVideoURL];
  v150 = [v4 fpsCertificateURL];
  v149 = [v4 fpsKeyServerURL];
  v148 = [v4 fpsAdditionalServerParams];
  v108 = [v4 sendMescalHeaderToPlaybackKeyServer];
  v107 = [v4 sendLocationToPlaybackKeyServerWhenOptedIn];
  v147 = [v4 bookmarkID];
  v109 = [v4 isFamilySharingContent];
  v46 = [v4 metadata];
  v146 = [v46 videoResolutionClass];

  v47 = [v4 metadata];
  v145 = [v47 videoDynamicRange];

  v48 = [v4 metadata];
  v144 = [v48 hasADLocales];

  v49 = [v4 metadata];
  v143 = [v49 hasSDHLocales];

  v142 = [v4 referenceID];
  v141 = [v4 rtcServiceIdentifier];
  v140 = [v4 vpafMetrics];
  v112 = [v4 reportVPAFWhenPlayingInBackground];
  v139 = [v4 liveSportsPostPlayShelfFetchPolicy];
  v138 = [v4 autoExitOnBroadcastEndInSeconds];
  v137 = [v4 mediaMetrics];
  v50 = [v4 metadata];
  v113 = [v50 isAdultContent];

  v51 = [v4 metadata];
  v136 = [v51 commonSenseRecommendedAge];

  v52 = [v4 metadata];
  v135 = [v52 hasDolbyAtmos];

  v53 = [v4 disableScrubbing];
  v134 = [v4 liveStreamServiceID];
  v133 = [v4 externalServiceID];
  v54 = [v4 metadata];
  v132 = [v54 seasonNumber];

  v55 = [v4 metadata];
  v131 = [v55 episodeNumber];

  v56 = [v4 metadata];
  v130 = [v56 episodeIndexInSeries];

  v129 = [v4 tvAppDeeplinkURL];
  v128 = [v4 buyParams];
  v127 = [v4 upsellRouterDataSource];
  v57 = [v4 metadata];
  v126 = [v57 upsellOnExitPolicy];

  v125 = [v4 rentalID];
  v117 = [objc_opt_class() _playbackOverridesForURL:v38 adamID:v6 canonicalID:v5];
  v162 = [v117 objectForKey:@"replacementPlaybackURL"];
  v124 = [v4 locale];
  v114 = [v4 playsFromStartOfLiveStream];
  v58 = [v4 metadata];
  v123 = [v58 mediaShareMetadata];

  v59 = [v4 metadata];
  v122 = [v59 showMediaShareMetadata];

  v121 = [v4 utsEntityType];
  v60 = [v4 metadata];
  v159 = [v60 showTitle];

  v61 = [v4 metadata];
  v158 = [v61 artworkURLFormat];

  v62 = [v4 metadata];
  v63 = [v62 artworkAspectRatio];

  [v63 doubleValue];
  v116 = v63;
  if (v64 <= 0.0)
  {
    v66 = 0;
  }

  else
  {
    [v63 doubleValue];
    v66 = v65 < 1.0;
  }

  if ([v162 length])
  {
    v67 = VUIDefaultLogObject();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v167 = v38;
      v168 = 2112;
      v169 = v162;
      _os_log_impl(&dword_1E323F000, v67, OS_LOG_TYPE_DEFAULT, "Overriding original playback URL %@ with replacement playback URL %@", buf, 0x16u);
    }

    v68 = [MEMORY[0x1E695DFF8] URLWithString:v162];
  }

  else
  {
    if ([v4 isiTunesPurchaseOrRental])
    {
      v69 = [(VUIMediaInfo *)v165 _hlsURLEnsuringDsidQueryParamIsPresentFromURL:v38];

      v38 = v69;
    }

    v68 = [VUIPlaybackUtilities updatedHLSURL:v38 forPlaybackContext:[(VUIMediaInfo *)v165 playbackContext]];
  }

  v120 = v68;

  v70 = [MEMORY[0x1E695E000] standardUserDefaults];
  v71 = [v70 BOOLForKey:@"AssumeSportingEvent"];

  if (v71)
  {
    v72 = VUIDefaultLogObject();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v72, OS_LOG_TYPE_DEFAULT, "Assuming content is a sporting event due to defaults key", buf, 2u);
    }

    v45 = 1;
  }

  v13 = [[VUIStoreAuxMediaItem alloc] initWithURL:v120];
  [(VUIStoreAuxMediaItem *)v13 setFpsCertificateURL:v150];
  [(VUIStoreAuxMediaItem *)v13 setFpsKeyServerURL:v149];
  [(VUIStoreAuxMediaItem *)v13 setFpsAdditionalServerParams:v148];
  [(VUIStoreAuxMediaItem *)v13 setSendsMescalHeaderToPlaybackKeyServer:v108];
  [(VUIStoreAuxMediaItem *)v13 setSendsLocationToPlaybackKeyServerWhenOptedIn:v107];
  [(VUIStoreAuxMediaItem *)v13 setBookmarkID:v147];
  [(VUIStoreAuxMediaItem *)v13 setDisableResumeMenu:1];
  -[VUIStoreAuxMediaItem setIsiTunesPurchasedOrRentedContent:](v13, "setIsiTunesPurchasedOrRentedContent:", [v4 isiTunesPurchaseOrRental]);
  [(VUIStoreAuxMediaItem *)v13 setDisableScrubbing:v53];
  [(VUIStoreAuxMediaItem *)v13 setIsFamilySharingContent:v109];
  [(VUIStoreAuxMediaItem *)v13 setIsLiveContent:v110];
  [(VUIStoreAuxMediaItem *)v13 setIsSportingEvent:v45];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v6 forProperty:*MEMORY[0x1E69D5DA8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v157 forProperty:*MEMORY[0x1E69D5BF0]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v156 forProperty:*MEMORY[0x1E69D5B98]];
  v111 = *MEMORY[0x1E69D5D40];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v141 forProperty:?];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v145 forProperty:*MEMORY[0x1E69D5DE8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v146 forProperty:*MEMORY[0x1E69D5DF0]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v144 forProperty:*MEMORY[0x1E69D5C08]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v143 forProperty:*MEMORY[0x1E69D5C18]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v164 forProperty:*MEMORY[0x1E69D5C78]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v155 forProperty:*MEMORY[0x1E69D5AD0]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v154 forProperty:*MEMORY[0x1E69D5AD8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v5 forProperty:*MEMORY[0x1E69D5AE8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v142 forProperty:*MEMORY[0x1E69D5CD8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v140 forProperty:*MEMORY[0x1E69D5DE0]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v159 forProperty:*MEMORY[0x1E69D5D38]];
  if (v158)
  {
    if (v66)
    {
      v73 = *MEMORY[0x1E69D5DB8];
      v74 = v13;
      v75 = v159;
    }

    else
    {
      v73 = *MEMORY[0x1E69D5AB8];
      v74 = v13;
      v75 = v158;
    }

    [(VUIStoreAuxMediaItem *)v74 setMediaItemMetadata:v75 forProperty:v73];
  }

  v76 = [MEMORY[0x1E696AD98] numberWithBool:v112];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v76 forProperty:@"VUIMediaItemMetadataKeyReportVPAFWhenPlayingInBackground"];

  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v137 forProperty:*MEMORY[0x1E69D5C70]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v133 forProperty:*MEMORY[0x1E69D5BA8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v134 forProperty:*MEMORY[0x1E69D5C48]];
  v77 = [MEMORY[0x1E696AD98] numberWithBool:v113];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v77 forProperty:*MEMORY[0x1E69D5C38]];

  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v136 forProperty:*MEMORY[0x1E69D5AF8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v135 forProperty:*MEMORY[0x1E69D5C10]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v7 forProperty:*MEMORY[0x1E69D5D00]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v160 forProperty:*MEMORY[0x1E69D5BD8]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v132 forProperty:*MEMORY[0x1E69D5D30]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v131 forProperty:*MEMORY[0x1E69D5B80]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v130 forProperty:*MEMORY[0x1E69D5B78]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v153 forProperty:*MEMORY[0x1E69D5B20]];
  v78 = [MEMORY[0x1E696AD98] numberWithBool:v115];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v78 forProperty:@"VUIMediaItemMetadataKeyIsExtrasContent"];

  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v152 forProperty:*MEMORY[0x1E69D5B00]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v151 forProperty:@"VUIMediaItemMetadataKeyRatingAuxiliaryDisplayName"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v129 forProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v128 forProperty:*MEMORY[0x1E69D5AE0]];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v127 forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v126 forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v124 forProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
  v79 = [MEMORY[0x1E696AD98] numberWithBool:v114];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v79 forProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];

  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v123 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v122 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v121 forProperty:@"VUIMediaItemMetadataKeyUTSEntityType"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v139 forProperty:@"VUIMediaItemMetadataKeyLiveSportsPostPlayShelfFetchPolicy"];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v138 forProperty:@"VUIMediaItemMetadataKeyAutoExitOnBroadcastEndInSeconds"];
  v80 = v119;
  if ([v4 isAmbientVideo])
  {
    [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:@"VUIMediaItemMetadataKeyIsAmbientVideo"];
    v81 = [v4 repeatLoopCount];
    if (v81)
    {
      [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v81 forProperty:@"VUIMediaItemMetadataKeyRepeatLoopCount"];
    }
  }

  v82 = v7;
  v83 = v6;
  if (v125 && ([v125 isEqual:&unk_1F5E5D8C0] & 1) == 0)
  {
    [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v125 forProperty:*MEMORY[0x1E69D5CE8]];
  }

  v84 = v5;
  v85 = [v4 metadata];
  v86 = [v85 ratingDomain];

  v87 = [(VUIMediaInfo *)v165 _tvpRatingDomainFromUTSRatingDomain:v86];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v87 forProperty:*MEMORY[0x1E69D5B08]];

  if ([v164 isEqualToString:*MEMORY[0x1E69D5ED0]])
  {
    v88 = [v4 showCanonicalID];
    v89 = [v4 seasonCanonicalID];
    [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v88 forProperty:*MEMORY[0x1E69D5D50]];
    [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v89 forProperty:*MEMORY[0x1E69D5D28]];
  }

  if ([v4 isFamilySharingContent])
  {
    v90 = [v4 extrasInfo];
    v91 = [v90 extrasURLString];
    v92 = [v91 length];

    if (v92)
    {
      v93 = MEMORY[0x1E695DFF8];
      v94 = [v4 extrasInfo];
      v95 = [v94 extrasURLString];
      v96 = [v93 URLWithString:v95];

      [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v96 forProperty:*MEMORY[0x1E69D5BB0]];
    }
  }

  self = v165;
  [(VUIMediaInfo *)v165 _populateMediaItem:v13 withMetadataFromVideosPlayable:v4];
  if (v119)
  {
    v97 = [[VUIStoreAuxMediaItem alloc] initWithURL:v119];
    v98 = MEMORY[0x1E696AEC0];
    v99 = [MEMORY[0x1E696AAE8] mainBundle];
    v100 = [v99 bundleIdentifier];
    v101 = [v98 stringWithFormat:@"%@.IFrameScrubVideo", v100];
    [(VUIStoreAuxMediaItem *)v97 setMediaItemMetadata:v101 forProperty:v111];

    self = v165;
    v80 = v119;

    [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v97 forProperty:*MEMORY[0x1E69D5D18]];
  }

  [(VUIMediaInfo *)self _populateMediaItem:v13 withMetadataOverrides:v117];
  [(VUIStoreAuxMediaItem *)v13 setPlaybackContext:[(VUIMediaInfo *)self playbackContext]];

  v5 = v84;
  v6 = v83;
  v7 = v82;
LABEL_65:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VUIMediaInfo *)self _populateMediaItem:v13 withResumeTimeInfoFromPlayable:v4];
  }

  v102 = [v4 sharedWatchId];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v102 forProperty:*MEMORY[0x1E69D5CA0]];
  v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "playableType")}];
  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v103 forProperty:@"VUIMediaItemMetadataKeyPlayableType"];

  [(VUIStoreAuxMediaItem *)v13 setMediaItemMetadata:v4 forProperty:@"VUIMediaItemMetadataKeyPlayableForDownload"];

  return v13;
}

- (void)_populateMediaItem:(id)a3 withOtherMediaItem:(id)a4
{
  v127 = a3;
  v5 = a4;
  v6 = [v5 fpsCertificateURL];
  [v127 setFpsCertificateURL:v6];

  v7 = [v5 fpsKeyServerURL];
  [v127 setFpsKeyServerURL:v7];

  v8 = [v5 fpsAdditionalServerParams];
  [v127 setFpsAdditionalServerParams:v8];

  [v127 setSendsMescalHeaderToPlaybackKeyServer:{objc_msgSend(v5, "sendsMescalHeaderToPlaybackKeyServer")}];
  [v127 setSendsLocationToPlaybackKeyServerWhenOptedIn:{objc_msgSend(v5, "sendsLocationToPlaybackKeyServerWhenOptedIn")}];
  v9 = [v5 bookmarkID];
  [v127 setBookmarkID:v9];

  [v127 setDisableResumeMenu:1];
  [v127 setIsiTunesPurchasedOrRentedContent:{objc_msgSend(v5, "isiTunesPurchasedOrRentedContent")}];
  [v127 setDisableScrubbing:{objc_msgSend(v5, "disableScrubbing")}];
  [v127 setIsFamilySharingContent:{objc_msgSend(v5, "isFamilySharingContent")}];
  [v127 setIsLiveContent:{objc_msgSend(v5, "isLiveContent")}];
  [v127 setIsSportingEvent:{objc_msgSend(v5, "isSportingEvent")}];
  v10 = *MEMORY[0x1E69D5DA8];
  v11 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  [v127 setMediaItemMetadata:v11 forProperty:v10];

  v12 = *MEMORY[0x1E69D5B98];
  v13 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  [v127 setMediaItemMetadata:v13 forProperty:v12];

  v14 = *MEMORY[0x1E69D5D40];
  v15 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D40]];
  [v127 setMediaItemMetadata:v15 forProperty:v14];

  v16 = *MEMORY[0x1E69D5DE8];
  v17 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DE8]];
  [v127 setMediaItemMetadata:v17 forProperty:v16];

  v18 = *MEMORY[0x1E69D5DF0];
  v19 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DF0]];
  [v127 setMediaItemMetadata:v19 forProperty:v18];

  v20 = *MEMORY[0x1E69D5C08];
  v21 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C08]];
  [v127 setMediaItemMetadata:v21 forProperty:v20];

  v22 = *MEMORY[0x1E69D5C18];
  v23 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C18]];
  [v127 setMediaItemMetadata:v23 forProperty:v22];

  v24 = *MEMORY[0x1E69D5C78];
  v25 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  [v127 setMediaItemMetadata:v25 forProperty:v24];

  v26 = *MEMORY[0x1E69D5AD0];
  v27 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  [v127 setMediaItemMetadata:v27 forProperty:v26];

  v28 = *MEMORY[0x1E69D5AD8];
  v29 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD8]];
  [v127 setMediaItemMetadata:v29 forProperty:v28];

  v30 = *MEMORY[0x1E69D5AE8];
  v31 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  [v127 setMediaItemMetadata:v31 forProperty:v30];

  v32 = *MEMORY[0x1E69D5CD8];
  v33 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
  [v127 setMediaItemMetadata:v33 forProperty:v32];

  v34 = *MEMORY[0x1E69D5DE0];
  v35 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DE0]];
  [v127 setMediaItemMetadata:v35 forProperty:v34];

  v36 = *MEMORY[0x1E69D5C70];
  v37 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C70]];
  [v127 setMediaItemMetadata:v37 forProperty:v36];

  v38 = *MEMORY[0x1E69D5BA8];
  v39 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BA8]];
  [v127 setMediaItemMetadata:v39 forProperty:v38];

  v40 = *MEMORY[0x1E69D5C48];
  v41 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C48]];
  [v127 setMediaItemMetadata:v41 forProperty:v40];

  v42 = *MEMORY[0x1E69D5C38];
  v43 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  [v127 setMediaItemMetadata:v43 forProperty:v42];

  v44 = *MEMORY[0x1E69D5AF8];
  v45 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AF8]];
  [v127 setMediaItemMetadata:v45 forProperty:v44];

  v46 = *MEMORY[0x1E69D5C10];
  v47 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C10]];
  [v127 setMediaItemMetadata:v47 forProperty:v46];

  v48 = *MEMORY[0x1E69D5D00];
  v49 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D00]];
  [v127 setMediaItemMetadata:v49 forProperty:v48];

  v50 = *MEMORY[0x1E69D5BD8];
  v51 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BD8]];
  [v127 setMediaItemMetadata:v51 forProperty:v50];

  v52 = *MEMORY[0x1E69D5D30];
  v53 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D30]];
  [v127 setMediaItemMetadata:v53 forProperty:v52];

  v54 = *MEMORY[0x1E69D5B80];
  v55 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B80]];
  [v127 setMediaItemMetadata:v55 forProperty:v54];

  v56 = *MEMORY[0x1E69D5B78];
  v57 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B78]];
  [v127 setMediaItemMetadata:v57 forProperty:v56];

  v58 = *MEMORY[0x1E69D5B20];
  v59 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B20]];
  [v127 setMediaItemMetadata:v59 forProperty:v58];

  v60 = *MEMORY[0x1E69D5B00];
  v61 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B00]];
  [v127 setMediaItemMetadata:v61 forProperty:v60];

  v62 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyRatingAuxiliaryDisplayName"];
  [v127 setMediaItemMetadata:v62 forProperty:@"VUIMediaItemMetadataKeyRatingAuxiliaryDisplayName"];

  v63 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
  [v127 setMediaItemMetadata:v63 forProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];

  v64 = *MEMORY[0x1E69D5AE0];
  v65 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE0]];
  [v127 setMediaItemMetadata:v65 forProperty:v64];

  v66 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];
  [v127 setMediaItemMetadata:v66 forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];

  v67 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];
  [v127 setMediaItemMetadata:v67 forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];

  v68 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
  [v127 setMediaItemMetadata:v68 forProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];

  v69 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];
  [v127 setMediaItemMetadata:v69 forProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];

  v70 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
  [v127 setMediaItemMetadata:v70 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];

  v71 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
  [v127 setMediaItemMetadata:v71 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];

  v72 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyIsAmbientVideo"];
  [v127 setMediaItemMetadata:v72 forProperty:@"VUIMediaItemMetadataKeyIsAmbientVideo"];

  v73 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyRepeatLoopCount"];
  [v127 setMediaItemMetadata:v73 forProperty:@"VUIMediaItemMetadataKeyRepeatLoopCount"];

  v74 = *MEMORY[0x1E69D5CE8];
  v75 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
  [v127 setMediaItemMetadata:v75 forProperty:v74];

  v76 = *MEMORY[0x1E69D5B08];
  v77 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B08]];
  [v127 setMediaItemMetadata:v77 forProperty:v76];

  v78 = [v127 mediaItemMetadataForProperty:v24];
  LODWORD(v76) = [v78 isEqualToString:*MEMORY[0x1E69D5ED0]];

  if (v76)
  {
    v79 = *MEMORY[0x1E69D5D50];
    v80 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
    [v127 setMediaItemMetadata:v80 forProperty:v79];

    v81 = *MEMORY[0x1E69D5D28];
    v82 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D28]];
    [v127 setMediaItemMetadata:v82 forProperty:v81];
  }

  v83 = *MEMORY[0x1E69D5BB0];
  v84 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB0]];
  [v127 setMediaItemMetadata:v84 forProperty:v83];

  v85 = *MEMORY[0x1E69D5DC0];
  v86 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
  [v127 setMediaItemMetadata:v86 forProperty:v85];

  v87 = *MEMORY[0x1E69D5C58];
  v88 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C58]];
  [v127 setMediaItemMetadata:v88 forProperty:v87];

  v89 = *MEMORY[0x1E69D5AC0];
  v90 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AC0]];
  [v127 setMediaItemMetadata:v90 forProperty:v89];

  v91 = *MEMORY[0x1E69D5CC8];
  v92 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC8]];
  [v127 setMediaItemMetadata:v92 forProperty:v91];

  v93 = *MEMORY[0x1E69D5CC0];
  v94 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC0]];
  [v127 setMediaItemMetadata:v94 forProperty:v93];

  v95 = +[VUIFeaturesConfiguration sharedInstance];
  v96 = [v95 nowPlayingConfig];
  v97 = [v96 shouldSendLiveStreamStartAndEndTimesToAVKit];

  if (v97)
  {
    v98 = *MEMORY[0x1E69D5B90];
    v99 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B90]];
    [v127 setMediaItemMetadata:v99 forProperty:v98];

    v100 = *MEMORY[0x1E69D5B88];
    v101 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B88]];
    [v127 setMediaItemMetadata:v101 forProperty:v100];
  }

  v102 = *MEMORY[0x1E69D5D80];
  v103 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D80]];
  [v127 setMediaItemMetadata:v103 forProperty:v102];

  v104 = *MEMORY[0x1E69D5D78];
  v105 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D78]];
  [v127 setMediaItemMetadata:v105 forProperty:v104];

  v106 = *MEMORY[0x1E69D5D70];
  v107 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D70]];
  [v127 setMediaItemMetadata:v107 forProperty:v106];

  v108 = *MEMORY[0x1E69D5D68];
  v109 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D68]];
  [v127 setMediaItemMetadata:v109 forProperty:v108];

  v110 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];
  [v127 setMediaItemMetadata:v110 forProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];

  v111 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
  [v127 setMediaItemMetadata:v111 forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];

  v112 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsKeyPlayAvailable"];
  [v127 setMediaItemMetadata:v112 forProperty:@"VUIMediaItemMetadataIsKeyPlayAvailable"];

  v113 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];
  [v127 setMediaItemMetadata:v113 forProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];

  v114 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataSupportsStartOver"];
  [v127 setMediaItemMetadata:v114 forProperty:@"VUIMediaItemMetadataSupportsStartOver"];

  v115 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataPreferredAudioLanguageCode"];
  [v127 setMediaItemMetadata:v115 forProperty:@"VUIMediaItemMetadataPreferredAudioLanguageCode"];

  v116 = *MEMORY[0x1E69D5DD0];
  v117 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DD0]];
  [v127 setMediaItemMetadata:v117 forProperty:v116];

  v118 = *MEMORY[0x1E69D5DC8];
  v119 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC8]];
  [v127 setMediaItemMetadata:v119 forProperty:v118];

  v120 = *MEMORY[0x1E69D5DB0];
  v121 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DB0]];
  [v127 setMediaItemMetadata:v121 forProperty:v120];

  v122 = *MEMORY[0x1E69D5BE0];
  v123 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BE0]];
  [v127 setMediaItemMetadata:v123 forProperty:v122];

  v124 = [v5 mediaItemMetadataForProperty:v87];
  [v127 setMediaItemMetadata:v124 forProperty:v87];

  v125 = *MEMORY[0x1E69D5D18];
  v126 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D18]];
  [v127 setMediaItemMetadata:v126 forProperty:v125];

  [v127 setPlaybackContext:{objc_msgSend(v5, "playbackContext")}];
}

- (void)_populateMediaItem:(id)a3 withMetadataFromVideosPlayable:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 metadata];
  v8 = [v7 title];

  if ([v8 length])
  {
    [v5 setMediaItemMetadata:v8 forProperty:*MEMORY[0x1E69D5DC0]];
  }

  v9 = [v6 metadata];
  v10 = [v9 mediaDescription];

  if ([v10 length])
  {
    [v5 setMediaItemMetadata:v10 forProperty:*MEMORY[0x1E69D5C58]];
  }

  v11 = [v6 artworkURL];
  v12 = v11;
  v13 = MEMORY[0x1E69D5AC0];
  if (v11)
  {
    v14 = [v11 absoluteString];
    [v5 setMediaItemMetadata:v14 forProperty:*v13];
  }

  v15 = [v6 metadata];
  v16 = [v15 scheduleStartTime];

  [v16 doubleValue];
  if (v17 > 0.0)
  {
    [v5 setMediaItemMetadata:v16 forProperty:*MEMORY[0x1E69D5CC8]];
  }

  v109 = v12;
  v18 = [v6 metadata];
  v19 = [v18 scheduleEndTime];

  [v19 doubleValue];
  if (v20 > 0.0)
  {
    [v5 setMediaItemMetadata:v19 forProperty:*MEMORY[0x1E69D5CC0]];
  }

  v116 = v19;
  v21 = [v6 metadata];
  v22 = [v21 transportBarStartTime];

  v112 = v22;
  [v22 doubleValue];
  if (v23 > 0.0)
  {
    v24 = +[VUIFeaturesConfiguration sharedInstance];
    v25 = [v24 nowPlayingConfig];
    v26 = [v25 shouldSendLiveStreamStartAndEndTimesToAVKit];

    if (v26)
    {
      v27 = +[VUIFeaturesConfiguration sharedInstance];
      v28 = [v27 nowPlayingConfig];
      [v28 liveStreamStartAndEndTimeBadMetadataCutoff];
      v30 = v29;

      if (v30 <= 0.0)
      {
        [v5 setMediaItemMetadata:v112 forProperty:*MEMORY[0x1E69D5B90]];
      }

      else
      {
        v31 = MEMORY[0x1E695DF00];
        [v112 doubleValue];
        v33 = [v31 dateWithTimeIntervalSince1970:v32 / 1000.0];
        v34 = [MEMORY[0x1E695DF00] date];
        [v34 timeIntervalSinceDate:v33];
        v36 = v35;

        if (v36 >= v30)
        {
          v37 = VUIDefaultLogObject();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [VUIMediaInfo _populateMediaItem:withMetadataFromVideosPlayable:];
          }
        }

        else
        {
          [v5 setMediaItemMetadata:v112 forProperty:*MEMORY[0x1E69D5B90]];
        }
      }
    }
  }

  v38 = [v6 metadata];
  v39 = [v38 transportBarEndTime];

  v111 = v39;
  [v39 doubleValue];
  if (v40 > 0.0)
  {
    v41 = +[VUIFeaturesConfiguration sharedInstance];
    v42 = [v41 nowPlayingConfig];
    v43 = [v42 shouldSendLiveStreamStartAndEndTimesToAVKit];

    if (v43)
    {
      v44 = +[VUIFeaturesConfiguration sharedInstance];
      v45 = [v44 nowPlayingConfig];
      [v45 liveStreamStartAndEndTimeBadMetadataCutoff];
      v47 = v46;

      if (v47 <= 0.0)
      {
        [v5 setMediaItemMetadata:v111 forProperty:*MEMORY[0x1E69D5B88]];
      }

      else
      {
        v48 = MEMORY[0x1E695DF00];
        [v111 doubleValue];
        v50 = [v48 dateWithTimeIntervalSince1970:v49 / 1000.0];
        v51 = [MEMORY[0x1E695DF00] date];
        [v51 timeIntervalSinceDate:v50];
        v53 = v52;

        if (v53 >= v47)
        {
          v54 = VUIDefaultLogObject();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            [VUIMediaInfo _populateMediaItem:withMetadataFromVideosPlayable:];
          }
        }

        else
        {
          [v5 setMediaItemMetadata:v111 forProperty:*MEMORY[0x1E69D5B88]];
        }
      }
    }
  }

  v55 = [v6 metadata];
  v56 = [v55 venueName];

  if ([v56 length])
  {
    [v5 setMediaItemMetadata:v56 forProperty:*MEMORY[0x1E69D5D80]];
  }

  v115 = v56;
  v57 = [v6 metadata];
  v58 = [v57 venueAddress];

  if ([v58 length])
  {
    [v5 setMediaItemMetadata:v58 forProperty:*MEMORY[0x1E69D5D78]];
  }

  v59 = [v6 metadata];
  v60 = [v59 leagueShortName];

  if ([v60 length])
  {
    [v5 setMediaItemMetadata:v60 forProperty:*MEMORY[0x1E69D5D70]];
  }

  v117 = v60;
  v110 = v10;
  v61 = [v6 metadata];
  v62 = [v61 leagueName];

  if ([v62 length])
  {
    [v5 setMediaItemMetadata:v62 forProperty:*MEMORY[0x1E69D5D68]];
  }

  v113 = v62;
  v63 = [v6 metadata];
  v64 = [v63 isEligibleForPlayerTabs];

  v65 = [MEMORY[0x1E696AD98] numberWithBool:v64];
  [v5 setMediaItemMetadata:v65 forProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];

  v66 = [v6 playablePassThrough];
  if ([v66 length])
  {
    [v5 setMediaItemMetadata:v66 forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
  }

  v106 = v66;
  v67 = [v6 isKeyPlayAvailable];
  v68 = [MEMORY[0x1E696AD98] numberWithBool:v67];
  [v5 setMediaItemMetadata:v68 forProperty:@"VUIMediaItemMetadataIsKeyPlayAvailable"];

  v69 = +[VUIFeaturesConfiguration sharedInstance];
  v70 = [v69 playerTabsConfig];

  v105 = v70;
  v71 = [v70 infoTabMustHaveImageToDisplay];
  v72 = [v5 mediaItemMetadataForProperty:*v13];
  if (v72)
  {
    v73 = 1;
  }

  else
  {
    v74 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DB8]];
    if (v74)
    {
      v73 = 1;
    }

    else
    {
      v75 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AB8]];
      v73 = v75 != 0;
    }
  }

  v114 = v58;

  v76 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  if (v76)
  {
    v77 = 1;
  }

  else
  {
    v78 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    v77 = v78 != 0;
  }

  if (v71)
  {
    v79 = v73 & v77;
  }

  else
  {
    v79 = v77;
  }

  v80 = [MEMORY[0x1E696AD98] numberWithBool:v79];
  [v5 setMediaItemMetadata:v80 forProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];

  v81 = [v6 supportsStartOver];
  v82 = [MEMORY[0x1E696AD98] numberWithBool:v81];
  [v5 setMediaItemMetadata:v82 forProperty:@"VUIMediaItemMetadataSupportsStartOver"];

  v83 = [v6 preferredAudioLanguageCode];
  if ([v83 length])
  {
    [v5 setMediaItemMetadata:v83 forProperty:@"VUIMediaItemMetadataPreferredAudioLanguageCode"];
  }

  v84 = [v6 metadata];
  v85 = [v84 tomatoPercentage];

  v86 = v114;
  if (v85)
  {
    [v85 doubleValue];
    if (v87 >= 0.0)
    {
      [v85 doubleValue];
      if (v88 <= 100.0)
      {
        [v5 setMediaItemMetadata:v85 forProperty:*MEMORY[0x1E69D5DD0]];
      }
    }
  }

  v89 = [v6 metadata];
  v90 = [v89 tomatoFreshness];

  if (v90 != 3)
  {
    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v90];
    [v5 setMediaItemMetadata:v91 forProperty:*MEMORY[0x1E69D5DC8]];
  }

  v92 = self;
  v108 = v16;
  v93 = v116;
  v94 = [(VUIMediaInfo *)v92 _sportingEventSubtitleFromStartTime:v16 endTime:v116 leagueShortName:v117];
  if (v94)
  {
    [v5 setMediaItemMetadata:v94 forProperty:*MEMORY[0x1E69D5DB0]];
  }

  v95 = [v6 metadata];
  v96 = [v95 sportName];

  if ([v96 length])
  {
    [v5 setMediaItemMetadata:v96 forProperty:*MEMORY[0x1E69D5BE0]];
  }

  v97 = v115;
  if ([v115 length] && objc_msgSend(v114, "length"))
  {
    v103 = v83;
    v104 = v8;
    v98 = MEMORY[0x1E696AEC0];
    v99 = +[VUILocalizationManager sharedInstance];
    v100 = [v99 localizedStringForKey:@"SportingEventVenueDescription"];
    v101 = [v98 stringWithFormat:v100, v115, v114];

    if ([v113 length])
    {
      v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ · %@", v113, v101];
      [v5 setMediaItemMetadata:v102 forProperty:*MEMORY[0x1E69D5C58]];
    }

    else
    {
      [v5 setMediaItemMetadata:v101 forProperty:*MEMORY[0x1E69D5C58]];
    }

    v83 = v103;
    v8 = v104;
    v97 = v115;
    v93 = v116;
    v86 = v114;
  }

  if ([v6 makeAdditionalPlayerTabsRequest])
  {
    [v5 setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:@"VUIMediaItemMetadataMakeAdditionalPlayerTabsRequest"];
  }
}

- (id)_sportingEventTimeSpanStringFromStartTime:(id)a3 endTime:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = MEMORY[0x1E695DF00];
    v7 = a4;
    [a3 doubleValue];
    v9 = [v6 dateWithTimeIntervalSince1970:v8 / 1000.0];
    v10 = MEMORY[0x1E695DF00];
    [v7 doubleValue];
    v12 = v11;

    v13 = [v10 dateWithTimeIntervalSince1970:v12 / 1000.0];
    v14 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v4 = [v14 tvp_hourMinuteDisplayStringFromStartDate:v9 endDate:v13];
  }

  return v4;
}

- (id)_sportingEventSubtitleFromStartTime:(id)a3 endTime:(id)a4 leagueShortName:(id)a5
{
  v8 = a5;
  v9 = [(VUIMediaInfo *)self _sportingEventTimeSpanStringFromStartTime:a3 endTime:a4];
  if ([v9 length] && objc_msgSend(v8, "length"))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ · %@", v9, v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_sportingEventTimeSpanStringFromMediaItem:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC8]];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v6 doubleForKey:@"ProgramScheduleStartTimeOverrideInMS"];
  v8 = v7;

  if (v8 > 0.0)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v8 / 1000.0];
      v21 = 138412290;
      v22 = v10;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Overriding program schedule start time with date %@", &v21, 0xCu);
    }

    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v8];

    v5 = v11;
  }

  v12 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC0]];
  v13 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v13 doubleForKey:@"ProgramScheduleEndTimeOverrideInMS"];
  v15 = v14;

  if (v15 > 0.0)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v15 / 1000.0];
      v21 = 138412290;
      v22 = v17;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Overriding program schedule end time with date %@", &v21, 0xCu);
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v15];

    v12 = v18;
  }

  v19 = [(VUIMediaInfo *)self _sportingEventTimeSpanStringFromStartTime:v5 endTime:v12];

  return v19;
}

- (void)_populateMediaItem:(id)a3 withMetadataOverrides:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"skipIntroStart"];
    v9 = [v7 objectForKey:@"skipIntroDuration"];
    v10 = [v7 objectForKey:@"skipIntroTarget"];
    v11 = v10;
    if (v8 && v9 && v10)
    {
      v12 = VUIDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v56 = v8;
        v57 = 2112;
        v58 = v9;
        v59 = 2112;
        v60 = v11;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Overriding skip intro with start %@ duration %@ target %@", buf, 0x20u);
      }

      v13 = objc_alloc(MEMORY[0x1E69D5A28]);
      [v8 doubleValue];
      v15 = v14;
      [v9 doubleValue];
      v17 = v16;
      [v11 doubleValue];
      v19 = [v13 initWithType:1 start:0 duration:0 target:v15 localizedTitle:v17 skipIntroReportingType:v18];
      v20 = v19;
      if (v19)
      {
        v54 = v19;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
        [v5 setMediaItemMetadata:v21 forProperty:*MEMORY[0x1E69D5D58]];
      }
    }

    v42 = v11;
    v43 = v9;
    v44 = v7;
    v45 = v5;
    v22 = [v7 objectForKey:@"ratingAdvisoryInfo"];
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v22;
    v24 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v50;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v49 + 1) + 8 * i);
          v29 = [v28 objectForKey:@"name"];
          v30 = [v28 objectForKey:@"description"];
          if ([v30 length])
          {
            v31 = VUIDefaultLogObject();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v56 = v29;
              v57 = 2112;
              v58 = v30;
              _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Overriding advisory info with name %@ description %@ ", buf, 0x16u);
            }

            v32 = [objc_alloc(MEMORY[0x1E69D5A20]) initWithRatingDescription:v30];
            if ([v29 length])
            {
              [v32 setRatingName:v29];
            }

            if (v32)
            {
              [v23 addObject:v32];
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v25);
    }

    v5 = v45;
    if ([v23 count])
    {
      [v45 setMediaItemMetadata:v23 forProperty:*MEMORY[0x1E69D5AA0]];
    }

    v7 = v44;
    v33 = [v44 objectForKey:@"replacementHapticsURL"];
    if ([v33 length])
    {
      v34 = VUIDefaultLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v33;
        _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "Overriding haptics URL with %@", buf, 0xCu);
      }

      [v45 setMediaItemMetadata:v33 forProperty:*MEMORY[0x1E69D5C00]];
    }

    v35 = [v44 objectForKey:@"resumeTime"];
    if (v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = VUIDefaultLogObject();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v35;
          _os_log_impl(&dword_1E323F000, v36, OS_LOG_TYPE_DEFAULT, "Overriding original resume time with %@", buf, 0xCu);
        }

        v37 = [VUIMediaStartTimeInfo alloc];
        v38 = [MEMORY[0x1E695DF00] date];
        v39 = [(VUIMediaStartTimeInfo *)v37 initWithStartTime:v35 timestamp:v38 type:0 source:@"Demo override plist"];

        v40 = [v45 startTimeCollection];
        [v40 addStartTimeInfo:v39];
      }
    }

    v41 = [v44 objectForKey:@"TVPMediaItemMetadata"];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __57__VUIMediaInfo__populateMediaItem_withMetadataOverrides___block_invoke;
    v47[3] = &unk_1E8734790;
    v48 = v45;
    [v41 enumerateKeysAndObjectsUsingBlock:v47];
  }
}

void __57__VUIMediaInfo__populateMediaItem_withMetadataOverrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Overriding key %@ with value %@", &v8, 0x16u);
  }

  [*(a1 + 32) setMediaItemMetadata:v6 forProperty:v5];
}

- (void)_populateMediaItem:(id)a3 withResumeTimeInfoFromPlayable:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 startTimeInfos];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [v5 startTimeCollection];
        [v12 addStartTimeInfo:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)_tvpMediaTypeFromPlayable:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaType];
  if ([v4 isEqualToString:@"Movie"])
  {
    if ([v3 isRental])
    {
      v5 = MEMORY[0x1E69D5EC8];
    }

    else
    {
      v5 = MEMORY[0x1E69D5EB8];
    }

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"Trailer"])
  {
    v5 = MEMORY[0x1E69D5EC0];
LABEL_7:
    v6 = *v5;
    goto LABEL_11;
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Show", @"Season", @"Episode", 0}];
  v6 = 0;
  if ([v7 containsObject:v4])
  {
    v6 = *MEMORY[0x1E69D5ED0];
  }

LABEL_11:

  return v6;
}

+ (id)_playbackOverridesForURL:(id)a3 adamID:(id)a4 canonicalID:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v30 = a4;
  v29 = a5;
  v8 = [MEMORY[0x1E69DF6E0] sharedInstance];
  v9 = [v8 enableDemoMode];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:@"/var/mobile/Media/ManagedPurchases/TVApp/PlaybackOverrides.plist"];
    if ([v10 length])
    {
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v11 objectForKey:@"overrides"];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v14 = [v13 playbackOverridesEnabled];

    if (!v14)
    {
LABEL_30:
      v16 = 0;
      v19 = 0;
      goto LABEL_33;
    }

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [v10 arrayForKey:*MEMORY[0x1E69DF850]];
  }

  if (!v12)
  {
    goto LABEL_30;
  }

  v28 = v7;
  v15 = [v7 absoluteString];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = [v22 objectForKey:@"playbackURLToOverride"];
        v24 = [v22 objectForKey:@"adamIDToOverride"];
        v25 = [v22 objectForKey:@"canonicalIDToOverride"];
        if ([v15 length] && objc_msgSend(v23, "length") && (objc_msgSend(v23, "isEqualToString:", v15) & 1) != 0 || objc_msgSend(v30, "length") && objc_msgSend(v24, "length") && (objc_msgSend(v24, "isEqualToString:", v30) & 1) != 0 || objc_msgSend(v29, "length") && objc_msgSend(v25, "length") && objc_msgSend(v25, "isEqualToString:", v29))
        {
          v26 = v22;

          v19 = v26;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v7 = v28;
LABEL_33:

  return v19;
}

- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
LABEL_15:
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "dsid query param is present in HLS URL: %@", &v16, 0xCu);
    }

    goto LABEL_17;
  }

  v5 = [v3 pathExtension];
  if (([v5 isEqualToString:@"m3u8"] & 1) == 0)
  {

    goto LABEL_15;
  }

  v6 = [v4 vui_containsQueryParamWithName:@"dsid"];

  if (v6)
  {
    goto LABEL_15;
  }

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "dsid query param is missing from HLS URL: %@", &v16, 0xCu);
  }

  v8 = [MEMORY[0x1E69D5920] activeAccount];
  v9 = [v8 ams_DSID];

  if (!v9)
  {
LABEL_17:
    v11 = v4;
    goto LABEL_18;
  }

  v10 = [v9 stringValue];
  v11 = v4;
  if ([v10 length])
  {
    v12 = [v4 vui_URLByAddingQueryParamWithName:@"dsid" value:v10];
    v13 = v12;
    v11 = v4;
    if (v12)
    {
      v11 = v12;

      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v11;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "HLS URL after adding dsid param: %@", &v16, 0xCu);
      }
    }
  }

LABEL_18:

  return v11;
}

- (id)_playlistForSidebandLibraryAdamIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(VUIMediaInfo *)self _mediaItemForSidebandLibraryAdamID:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [objc_alloc(MEMORY[0x1E69D5A58]) initWithMediaItems:v5 index:0 isCollection:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_mediaItemForSidebandLibraryAdamID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([(VUIStoreAuxMediaItem *)v3 length])
  {
    v4 = +[VUIDownloadManager sharedInstance];
    v5 = [v4 existingDownloadForAdamID:v3];

    if (v5)
    {
      v6 = [v5 mediaItem];
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "Using existing media item being downloaded: %@", &v13, 0xCu);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(VUIStoreAuxMediaItem *)v6 resetReportingEventCollection];
      }
    }

    else
    {
      v8 = +[VUIMediaLibraryManager defaultManager];
      v9 = [v8 sidebandMediaLibrary];
      v10 = [v9 videoForAdamID:v3 useMainThreadContext:1];

      if (v10)
      {
        v6 = [[VUIStoreAuxMediaItem alloc] initWithVideoManagedObject:v10 isForStartingDownload:0];
        v11 = VUIDefaultLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "Creating new media item from database since it is not being downloaded currently", &v13, 2u);
        }
      }

      else
      {
        v11 = VUIDefaultLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v3;
          _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "Unable to find video managed object for adam ID %@", &v13, 0xCu);
        }

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 mpMediaItems:(id)a4
{
  v6 = a4;
  v7 = [(VUIMediaInfo *)self initWithPlaybackContext:a3 videosPlayables:0 imageProxies:0 storeDictionary:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(VUIMediaInfo *)v7 _playlistFromMPMediaItems:v6 playbackContext:a3];
    if (v9)
    {
      [(VUIMediaInfo *)v8 setTvpPlaylist:v9];
      v10 = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:v10 openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
    }
  }

  return v8;
}

- (id)_playlistFromMPMediaItems:(id)a3 playbackContext:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(VUIMediaInfo *)self _storeMediaItemFromMPMediaItem:*(*(&v16 + 1) + 8 * i) playbackContext:a4, v16];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v14 = [objc_alloc(MEMORY[0x1E69D5A58]) initWithMediaItems:v7 index:0 isCollection:0];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_storeMediaItemFromMPMediaItem:(id)a3 playbackContext:(unint64_t)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 valueForProperty:*MEMORY[0x1E696FB60]];
  v8 = [v6 valueForProperty:*MEMORY[0x1E696FB70]];
  if (!v7 || ![v7 longLongValue] || !objc_msgSend(v8, "length"))
  {
    if ([v6 vui_isHomeSharingMediaItem])
    {
      v15 = VUIHomeSharingMediaItem_iOS;
    }

    else
    {
      v15 = VUILibraryMediaItem_iOS;
    }

    v13 = [[v15 alloc] initWithMPMediaItem:v6];
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Support for in-app downloads is enabled.  Looking for downloading or downloaded content to play", buf, 2u);
  }

  v10 = +[VUIDownloadManager sharedInstance];
  v11 = [v7 stringValue];
  v12 = [v10 existingDownloadForAdamID:v11];

  if (v12)
  {
    v13 = [v12 mediaItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIStoreMediaItem_iOS *)v13 resetReportingEventCollection];
    }

    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v13;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Using existing media item being downloaded: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = +[VUIMediaLibraryManager defaultManager];
    v17 = [v16 sidebandMediaLibrary];
    v18 = [v7 stringValue];
    v14 = [v17 videoForAdamID:v18 useMainThreadContext:1];

    if (v14 && [v14 downloadState]== 2)
    {
      v19 = VUIDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v14;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Item is downloaded.  Using videoManagedObject when creating media item: %@", buf, 0xCu);
      }

      v13 = [[VUIStoreMediaItem_iOS alloc] initWithMPMediaItem:v6 videoManagedObject:v14 isForStartingDownload:0];
    }

    else
    {
      v13 = 0;
    }
  }

  if (!v13)
  {
    v13 = [[VUIStoreMediaItem_iOS alloc] initWithMPMediaItem:v6 videoManagedObject:0 isForStartingDownload:0];
  }

  [(VUIStoreMediaItem_iOS *)v13 setPlaybackContext:a4];
  v20 = [(VUIStoreMediaItem_iOS *)v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v21 = +[VUIMetricsController sharedInstance];
  v22 = [v21 iTunesLibraryPlaybackMediaMetricsForAdamID:v7 mediaType:v20];

  [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v22 forProperty:*MEMORY[0x1E69D5C70]];
  v23 = +[VUIMetricsController sharedInstance];
  v24 = [v23 iTunesVPAF];
  [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v24 forProperty:*MEMORY[0x1E69D5DE0]];

  if (v13)
  {
LABEL_25:
    v47 = v7;
    v48 = v8;
    v25 = [v6 valueForProperty:*MEMORY[0x1E696FB88]];
    v26 = [v6 valueForProperty:*MEMORY[0x1E696F980]];
    v27 = [v6 valueForProperty:*MEMORY[0x1E696FB90]];
    v28 = [v27 unsignedIntegerValue];

    v29 = [(VUIMediaInfo *)self _videoResolutionFromMPVideoQuality:v28];
    v30 = [v6 valueForProperty:*MEMORY[0x1E696F960]];
    v31 = [v30 unsignedIntegerValue];

    v32 = [(VUIMediaInfo *)self _videoDynamimcRangeFromMPColorCapability:v31];
    v33 = [v6 valueForProperty:*MEMORY[0x1E696F948]];
    v34 = [v33 unsignedIntegerValue] == 1;

    [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v25 forProperty:*MEMORY[0x1E69D5DC0]];
    [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v26 forProperty:*MEMORY[0x1E69D5C58]];
    v35 = self;
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
    [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v36 forProperty:*MEMORY[0x1E69D5DF0]];

    v37 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
    [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v37 forProperty:*MEMORY[0x1E69D5DE8]];

    v38 = [MEMORY[0x1E696AD98] numberWithBool:v34];
    [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v38 forProperty:*MEMORY[0x1E69D5C10]];

    if ([(VUIStoreMediaItem_iOS *)v13 isMemberOfClass:objc_opt_class()])
    {
      v39 = objc_opt_class();
      v40 = [(VUIStoreMediaItem_iOS *)v13 mediaItemURL];
      v41 = [(VUIStoreMediaItem_iOS *)v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
      v42 = [(VUIStoreMediaItem_iOS *)v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
      v43 = [v39 _playbackOverridesForURL:v40 adamID:v41 canonicalID:v42];

      if (v43)
      {
        v44 = VUIDefaultLogObject();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [(VUIStoreMediaItem_iOS *)v13 mediaItemURL];
          *buf = 138412290;
          v50 = v45;
          _os_log_impl(&dword_1E323F000, v44, OS_LOG_TYPE_DEFAULT, "Overriding store media item with URL %@", buf, 0xCu);
        }

        [(VUIMediaInfo *)v35 _populateMediaItem:v13 withMetadataOverrides:v43];
      }
    }

    v7 = v47;
    v8 = v48;
  }

LABEL_32:

  return v13;
}

- (int64_t)_videoResolutionFromMPVideoQuality:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1E42974C0[a3 - 1];
  }
}

- (int64_t)_videoDynamimcRangeFromMPColorCapability:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)a3 vuiMediaItems:(id)a4
{
  v6 = a4;
  v7 = [(VUIMediaInfo *)self initWithPlaybackContext:a3 videosPlayables:0 imageProxies:0 storeDictionary:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(VUIMediaInfo *)v7 _playlistForVUIMediaItems:v6 playbackContext:a3];
    if (v9)
    {
      [(VUIMediaInfo *)v8 setTvpPlaylist:v9];
      v10 = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:v10 openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
    }
  }

  return v8;
}

- (id)_playlistForVUIMediaItems:(id)a3 playbackContext:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    v24 = a4;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 mediaPlayerMediaItem];
        if (v14)
        {
          v15 = [(VUIMediaInfo *)self _storeMediaItemFromMPMediaItem:v14 playbackContext:a4];
          if (v15)
          {
            [v7 addObject:v15];
          }
        }

        else
        {
          v16 = [v13 storeID];
          v15 = v16;
          if (v16 && [v16 longLongValue])
          {
            v17 = v8;
            v18 = v7;
            v19 = [v15 stringValue];
            v20 = self;
            v21 = [(VUIMediaInfo *)self _mediaItemForSidebandLibraryAdamID:v19];
            if (v21)
            {
              [v18 addObject:v21];
            }

            v7 = v18;
            v8 = v17;
            a4 = v24;
            self = v20;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v22 = [objc_alloc(MEMORY[0x1E69D5A58]) initWithMediaItems:v7 index:0 isCollection:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_populateMediaItem:withMetadataFromVideosPlayable:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_1E323F000, v0, OS_LOG_TYPE_ERROR, "Not setting TVPMediaItemMetadataExactStartTime since start date %@ is more than %f seconds before now", v1, 0x16u);
}

- (void)_populateMediaItem:withMetadataFromVideosPlayable:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_1E323F000, v0, OS_LOG_TYPE_ERROR, "Not setting TVPMediaItemMetadataExactEndTime since end date %@ is more than %f seconds before now", v1, 0x16u);
}

@end