@interface VUIMediaInfo
+ (id)_playbackOverridesForURL:(id)l adamID:(id)d canonicalID:(id)iD;
+ (id)playbackURLOverrideForOriginalURL:(id)l adamID:(id)d canonicalID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context mpMediaItems:(id)items;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context sidebandLibraryAdamIDs:(id)ds;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context storeAuxMediaItem:(id)item;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context videosPlayables:(id)playables imageProxies:(id)proxies storeDictionary:(id)dictionary;
- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context vuiMediaItems:(id)items;
- (id)_auxMediaItemFromVideosPlayable:(id)playable;
- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)l;
- (id)_mediaItemForSidebandLibraryAdamID:(id)d;
- (id)_playlistForSidebandLibraryAdamIDs:(id)ds;
- (id)_playlistForVUIMediaItems:(id)items playbackContext:(unint64_t)context;
- (id)_playlistFromMPMediaItems:(id)items playbackContext:(unint64_t)context;
- (id)_playlistFromVideosPlayables:(id)playables andStoreDictionary:(id)dictionary;
- (id)_sportingEventSubtitleFromStartTime:(id)time endTime:(id)endTime leagueShortName:(id)name;
- (id)_sportingEventTimeSpanStringFromMediaItem:(id)item;
- (id)_sportingEventTimeSpanStringFromStartTime:(id)time endTime:(id)endTime;
- (id)_storeMediaItemFromMPMediaItem:(id)item playbackContext:(unint64_t)context;
- (id)_storeMediaItemFromVideosPlayable:(id)playable andStoreDictionary:(id)dictionary;
- (id)_tvpMediaTypeFromPlayable:(id)playable;
- (id)_tvpRatingDomainFromUTSRatingDomain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)_videoDynamimcRangeFromMPColorCapability:(int64_t)capability;
- (int64_t)_videoResolutionFromMPVideoQuality:(int64_t)quality;
- (unint64_t)hash;
- (void)_populateMediaItem:(id)item withMetadataFromVideosPlayable:(id)playable;
- (void)_populateMediaItem:(id)item withMetadataOverrides:(id)overrides;
- (void)_populateMediaItem:(id)item withOtherMediaItem:(id)mediaItem;
- (void)_populateMediaItem:(id)item withResumeTimeInfoFromPlayable:(id)playable;
- (void)_updatePlaybackStartReason;
- (void)_updatePlaybackStopReason;
- (void)setUserPlaybackInitiationDate:(id)date openURLCompletionDate:(id)completionDate;
@end

@implementation VUIMediaInfo

+ (id)playbackURLOverrideForOriginalURL:(id)l adamID:(id)d canonicalID:(id)iD
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9 = [self _playbackOverridesForURL:lCopy adamID:d canonicalID:iD];
  v10 = [v9 objectForKey:@"replacementPlaybackURL"];
  if ([v10 length])
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = lCopy;
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

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context videosPlayables:(id)playables imageProxies:(id)proxies storeDictionary:(id)dictionary
{
  playablesCopy = playables;
  proxiesCopy = proxies;
  dictionaryCopy = dictionary;
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
    v14->_playbackContext = context;
    v14->_playbackDelayInterval = 5.0;
    objc_storeStrong(&v14->_videosPlayables, playables);
    if (proxiesCopy)
    {
      [(VUIMediaInfo *)v15 setImageProxies:proxiesCopy];
    }

    if ([playablesCopy count])
    {
      v16 = [(VUIMediaInfo *)v15 _playlistFromVideosPlayables:playablesCopy andStoreDictionary:dictionaryCopy];
      if (v16)
      {
        [(VUIMediaInfo *)v15 setTvpPlaylist:v16];
        date = [MEMORY[0x1E695DF00] date];
        [(VUIMediaInfo *)v15 setUserPlaybackInitiationDate:date openURLCompletionDate:0];

        [(VUIMediaInfo *)v15 _updatePlaybackStartReason];
        [(VUIMediaInfo *)v15 _updatePlaybackStopReason];
      }
    }
  }

  return v15;
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context storeAuxMediaItem:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
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
    v7->_playbackContext = context;
    v7->_playbackDelayInterval = 5.0;
    array = [MEMORY[0x1E695DEC8] array];
    videosPlayables = v8->_videosPlayables;
    v8->_videosPlayables = array;

    if (itemCopy)
    {
      v11 = [VUIStoreAuxMediaItem alloc];
      mediaItemURL = [itemCopy mediaItemURL];
      v13 = [(VUIStoreAuxMediaItem *)v11 initWithURL:mediaItemURL];

      [(VUIMediaInfo *)v8 _populateMediaItem:v13 withOtherMediaItem:itemCopy];
      v14 = objc_alloc(MEMORY[0x1E69D5A58]);
      v20[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v16 = [v14 initWithMediaItems:v15 index:0 isCollection:0];
      [(VUIMediaInfo *)v8 setTvpPlaylist:v16];

      date = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:date openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
      [(VUIMediaInfo *)v8 _updatePlaybackStopReason];
    }
  }

  return v8;
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context sidebandLibraryAdamIDs:(id)ds
{
  dsCopy = ds;
  v7 = [(VUIMediaInfo *)self initWithPlaybackContext:context videosPlayables:0 imageProxies:0 storeDictionary:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(VUIMediaInfo *)v7 _playlistForSidebandLibraryAdamIDs:dsCopy];
    if (v9)
    {
      [(VUIMediaInfo *)v8 setTvpPlaylist:v9];
      date = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:date openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIntent:{-[VUIMediaInfo intent](self, "intent")}];
  overlayView = [(VUIMediaInfo *)self overlayView];
  [v4 setOverlayView:overlayView];

  contentView = [(VUIMediaInfo *)self contentView];
  [v4 setContentView:contentView];

  imageProxies = [(VUIMediaInfo *)self imageProxies];
  [v4 setImageProxies:imageProxies];

  backgroundColor = [(VUIMediaInfo *)self backgroundColor];
  [v4 setBackgroundColor:backgroundColor];

  tvpPlaylist = [(VUIMediaInfo *)self tvpPlaylist];
  [v4 setTvpPlaylist:tvpPlaylist];

  [v4 setShowsSecondaryVideoView:{-[VUIMediaInfo showsSecondaryVideoView](self, "showsSecondaryVideoView")}];
  [v4 setIsAudioOnly:{-[VUIMediaInfo isAudioOnly](self, "isAudioOnly")}];
  [v4 setRestrictionsAlreadyUnlocked:{-[VUIMediaInfo restrictionsAlreadyUnlocked](self, "restrictionsAlreadyUnlocked")}];
  [v4 setShouldDelayLoadingImage:{-[VUIMediaInfo shouldDelayLoadingImage](self, "shouldDelayLoadingImage")}];
  [v4 setPlaybackContext:{-[VUIMediaInfo playbackContext](self, "playbackContext")}];
  [(VUIMediaInfo *)self playbackDelayInterval];
  [v4 setPlaybackDelayInterval:?];
  alphaImageProxy = [(VUIMediaInfo *)self alphaImageProxy];
  v11 = [alphaImageProxy copy];
  [v4 setAlphaImageProxy:v11];

  alphaLayerAccessibilityText = [(VUIMediaInfo *)self alphaLayerAccessibilityText];
  v13 = [alphaLayerAccessibilityText copy];
  [v4 setAlphaLayerAccessibilityText:v13];

  videosPlayables = [(VUIMediaInfo *)self videosPlayables];
  v15 = [videosPlayables copy];
  [v4 setVideosPlayables:v15];

  return v4;
}

- (unint64_t)hash
{
  overlayView = [(VUIMediaInfo *)self overlayView];
  v4 = [overlayView hash];

  imageProxies = [(VUIMediaInfo *)self imageProxies];
  v6 = [imageProxies hash] ^ v4;

  tvpPlaylist = [(VUIMediaInfo *)self tvpPlaylist];
  v8 = [tvpPlaylist hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 != self)
  {
    imageProxies = [(VUIMediaInfo *)self imageProxies];
    imageProxies2 = [(VUIMediaInfo *)v6 imageProxies];
    if (![imageProxies isEqual:imageProxies2])
    {
      v15 = 0;
LABEL_32:

      goto LABEL_33;
    }

    tvpPlaylist = [(VUIMediaInfo *)self tvpPlaylist];
    tvpPlaylist2 = [(VUIMediaInfo *)v6 tvpPlaylist];
    if (![tvpPlaylist isEqualToPlaylist:tvpPlaylist2] || (v11 = -[VUIMediaInfo intent](self, "intent"), v11 != -[VUIMediaInfo intent](v6, "intent")))
    {
      v15 = 0;
LABEL_31:

      goto LABEL_32;
    }

    playlist = [(VUIMediaInfo *)self playlist];
    playlist2 = [(VUIMediaInfo *)v6 playlist];
    if (playlist != playlist2)
    {
      playlist3 = [(VUIMediaInfo *)self playlist];
      playlist4 = [(VUIMediaInfo *)v6 playlist];
      if (![playlist3 isEqual:?])
      {
        v15 = 0;
        goto LABEL_29;
      }

      v35 = playlist3;
    }

    overlayView = [(VUIMediaInfo *)self overlayView];
    overlayView2 = [(VUIMediaInfo *)v6 overlayView];
    if (overlayView != overlayView2)
    {

      v15 = 0;
      goto LABEL_28;
    }

    v33 = playlist;
    v34 = overlayView2;
    contentView = [(VUIMediaInfo *)self contentView];
    contentView2 = [(VUIMediaInfo *)v6 contentView];
    if (contentView != contentView2)
    {

      v15 = 0;
LABEL_27:
      playlist = v33;
LABEL_28:
      playlist3 = v35;
      if (playlist == playlist2)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_29:

      goto LABEL_30;
    }

    v29 = contentView;
    v30 = contentView2;
    imageProxies3 = [(VUIMediaInfo *)self imageProxies];
    imageProxies4 = [(VUIMediaInfo *)v6 imageProxies];
    v32 = imageProxies3;
    if (imageProxies3 == imageProxies4)
    {
      goto LABEL_23;
    }

    imageProxies5 = [(VUIMediaInfo *)v6 imageProxies];
    if (!imageProxies5)
    {
      v15 = 0;
      goto LABEL_26;
    }

    v28 = imageProxies5;
    imageProxies6 = [(VUIMediaInfo *)self imageProxies];
    imageProxies7 = [(VUIMediaInfo *)v6 imageProxies];
    v27 = imageProxies6;
    if ([imageProxies6 isEqualToArray:imageProxies7])
    {
LABEL_23:
      backgroundColor = [(VUIMediaInfo *)self backgroundColor];
      backgroundColor2 = [(VUIMediaInfo *)v6 backgroundColor];
      v15 = backgroundColor == backgroundColor2;

      if (v32 == imageProxies4)
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
  intent = [(VUIMediaInfo *)self intent];
  overlayView = [(VUIMediaInfo *)self overlayView];
  contentView = [(VUIMediaInfo *)self contentView];
  backgroundColor = [(VUIMediaInfo *)self backgroundColor];
  playlist = [(VUIMediaInfo *)self playlist];
  imageProxies = [(VUIMediaInfo *)self imageProxies];
  v12 = [v3 stringWithFormat:@"<%@: %p> Intent = %lu, overlayView = %@, contentView = %@, backgroundColor = %@, playlist = %@, imageProxies = %@, , playbackContext = %ld", v5, self, intent, overlayView, contentView, backgroundColor, playlist, imageProxies, -[VUIMediaInfo playbackContext](self, "playbackContext")];

  return v12;
}

- (void)setUserPlaybackInitiationDate:(id)date openURLCompletionDate:(id)completionDate
{
  dateCopy = date;
  completionDateCopy = completionDate;
  tvpPlaylist = [(VUIMediaInfo *)self tvpPlaylist];
  currentMediaItem = [tvpPlaylist currentMediaItem];

  v9 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x1E695DF00] date];
  }

  [v9 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6040] date:dateCopy];
  [v9 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6058] date:dateCopy];
  if (completionDateCopy)
  {
    v10 = MEMORY[0x1E69D6010];
    [v9 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6010] date:dateCopy];
    v11 = *v10;
    v12 = MEMORY[0x1E696AD98];
    [completionDateCopy timeIntervalSinceReferenceDate];
    v13 = [v12 numberWithDouble:?];
    [v9 addEndEventWithName:v11 identifier:v11 timestamp:v13];
  }
}

- (void)_updatePlaybackStartReason
{
  playbackContext = [(VUIMediaInfo *)self playbackContext];
  v4 = @"Unknown";
  v5 = 4;
  if (playbackContext <= 6)
  {
    if (playbackContext <= 3)
    {
      switch(playbackContext)
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

    if (playbackContext == 4)
    {
      v12 = *MEMORY[0x1E69D5F48];
      v5 = 6;
      goto LABEL_28;
    }

    if (playbackContext == 5)
    {
      v12 = *MEMORY[0x1E69D5F58];
      v5 = 7;
      goto LABEL_28;
    }

    v6 = playbackContext == 6;
    v7 = @"Unknown";
    v8 = 1;
  }

  else if (playbackContext <= 9)
  {
    if (playbackContext == 7)
    {
      v12 = @"Unknown";
      v5 = 11;
      goto LABEL_28;
    }

    if (playbackContext == 8)
    {
      v12 = *MEMORY[0x1E69D5F60];
      v5 = 8;
      goto LABEL_28;
    }

    v6 = playbackContext == 9;
    v7 = @"CatchUpToLive";
    v8 = 9;
  }

  else
  {
    if ((playbackContext - 10) < 3)
    {
      v12 = *MEMORY[0x1E69D5F68];
      v5 = 3;
      goto LABEL_28;
    }

    v6 = playbackContext == 13;
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
  tvpPlaylist = [(VUIMediaInfo *)self tvpPlaylist];
  currentMediaItem = [tvpPlaylist currentMediaItem];

  v11 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
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

- (id)_tvpRatingDomainFromUTSRatingDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:@"Movie"])
  {
    v4 = MEMORY[0x1E69D5B10];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([domainCopy isEqualToString:@"Show"])
  {
    v4 = MEMORY[0x1E69D5B18];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_playlistFromVideosPlayables:(id)playables andStoreDictionary:(id)dictionary
{
  v44 = *MEMORY[0x1E69E9840];
  playablesCopy = playables;
  dictionaryCopy = dictionary;
  if ([playablesCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = playablesCopy;
    obj = playablesCopy;
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
        playbackURL = [v11 playbackURL];
        adamID = [v11 adamID];
        canonicalID = [v11 canonicalID];
        v18 = [v14 _playbackOverridesForURL:playbackURL adamID:adamID canonicalID:canonicalID];

        if (v18)
        {
          v19 = VUIDefaultLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            adamID2 = [v11 adamID];
            playbackURL2 = [v11 playbackURL];
            canonicalID2 = [v11 canonicalID];
            *buf = 138412802;
            v38 = adamID2;
            v39 = 2112;
            v40 = playbackURL2;
            v41 = 2112;
            v42 = canonicalID2;
            _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Will use aux media item and override playback metadata for adam ID %@ URL %@ canonical ID %@", buf, 0x20u);
          }
        }

        else if (v13)
        {
          v23 = [(VUIMediaInfo *)self _storeMediaItemFromVideosPlayable:v11 andStoreDictionary:dictionaryCopy];
          goto LABEL_21;
        }

        v23 = [(VUIMediaInfo *)self _auxMediaItemFromVideosPlayable:v11];
LABEL_21:
        v24 = v23;
        if (v23)
        {
          v25 = [(VUIMediaInfo *)self _sportingEventTimeSpanStringFromMediaItem:v23];
          [v24 setMediaItemMetadata:v25 forProperty:v31];
          [array addObject:v24];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (!v8)
      {
LABEL_25:

        if ([array count])
        {
          v26 = [objc_alloc(MEMORY[0x1E69D5A58]) initWithMediaItems:array index:0 isCollection:0];
        }

        else
        {
          v26 = 0;
        }

        playablesCopy = v28;
        goto LABEL_30;
      }
    }
  }

  v26 = 0;
LABEL_30:

  return v26;
}

- (id)_storeMediaItemFromVideosPlayable:(id)playable andStoreDictionary:(id)dictionary
{
  v82 = *MEMORY[0x1E69E9840];
  playableCopy = playable;
  v5 = playableCopy;
  if (playableCopy)
  {
    adamID = [playableCopy adamID];
    longLongValue = [adamID longLongValue];
    if (longLongValue)
    {
      v8 = longLongValue;
      canonicalID = [v5 canonicalID];
      v9 = VUIDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Support for in-app downloads is enabled.  Looking for downloading or downloaded content to play", buf, 2u);
      }

      v10 = +[VUIDownloadManager sharedInstance];
      v11 = [v10 existingDownloadForAdamID:adamID];

      if (v11)
      {
        mediaItem = [v11 mediaItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = mediaItem;
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
        sidebandMediaLibrary = [v14 sidebandMediaLibrary];
        mediaItem = [sidebandMediaLibrary videoForAdamID:adamID useMainThreadContext:1];

        if (mediaItem && [(VUIStoreMediaItem_iOS *)mediaItem downloadState]== 2)
        {
          v16 = VUIDefaultLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v81 = mediaItem;
            _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Item is downloaded.  Using videoManagedObject when creating media item: %@", buf, 0xCu);
          }

          v13 = [[VUIStoreMediaItem_iOS alloc] initWithAdamID:v8 videoManagedObject:mediaItem isForStartingDownload:0];
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
        hlsURL = [v5 hlsURL];
        buyParams = [v5 buyParams];
        fpsCertificateURL = [v5 fpsCertificateURL];
        fpsKeyServerURL = [v5 fpsKeyServerURL];
        fpsAdditionalServerParams = [v5 fpsAdditionalServerParams];
        rentalID = [v5 rentalID];
        metadata = [v5 metadata];
        rentalStartedWatchingTimestamp = [metadata rentalStartedWatchingTimestamp];

        referenceID = [v5 referenceID];
        showCanonicalID = [v5 showCanonicalID];
        seasonCanonicalID = [v5 seasonCanonicalID];
        vpafMetrics = [v5 vpafMetrics];
        metadata2 = [v5 metadata];
        isAdultContent = [metadata2 isAdultContent];

        metadata3 = [v5 metadata];
        commonSenseRecommendedAge = [metadata3 commonSenseRecommendedAge];

        metadata4 = [v5 metadata];
        hasADLocales = [metadata4 hasADLocales];

        metadata5 = [v5 metadata];
        hasSDHLocales = [metadata5 hasSDHLocales];

        metadata6 = [v5 metadata];
        hasDolbyAtmos = [metadata6 hasDolbyAtmos];

        requiredAgeForPlayback = [v5 requiredAgeForPlayback];
        frequencyOfAgeConfirmation = [v5 frequencyOfAgeConfirmation];
        mediaMetrics = [v5 mediaMetrics];
        tvAppDeeplinkURL = [v5 tvAppDeeplinkURL];
        metadata7 = [v5 metadata];
        showTitle = [metadata7 showTitle];

        metadata8 = [v5 metadata];
        seasonNumber = [metadata8 seasonNumber];

        metadata9 = [v5 metadata];
        episodeNumber = [metadata9 episodeNumber];

        metadata10 = [v5 metadata];
        videoResolutionClass = [metadata10 videoResolutionClass];

        metadata11 = [v5 metadata];
        mediaShareMetadata = [metadata11 mediaShareMetadata];

        metadata12 = [v5 metadata];
        showMediaShareMetadata = [metadata12 showMediaShareMetadata];

        [(VUIStoreMediaItem_iOS *)v13 setHlsPlaybackURL:hlsURL];
        [(VUIStoreMediaItem_iOS *)v13 setFpsCertificateURL:fpsCertificateURL];
        v58 = fpsKeyServerURL;
        [(VUIStoreMediaItem_iOS *)v13 setFpsKeyServerURL:fpsKeyServerURL];
        [(VUIStoreMediaItem_iOS *)v13 setFpsAdditionalServerParams:fpsAdditionalServerParams];
        [(VUIStoreMediaItem_iOS *)v13 setPlaybackContext:[(VUIMediaInfo *)self playbackContext]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:adamID forProperty:*MEMORY[0x1E69D5DA8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:buyParams forProperty:*MEMORY[0x1E69D5AE0]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:canonicalID forProperty:*MEMORY[0x1E69D5AE8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:referenceID forProperty:*MEMORY[0x1E69D5CD8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:showCanonicalID forProperty:*MEMORY[0x1E69D5D50]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:seasonCanonicalID forProperty:*MEMORY[0x1E69D5D28]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:vpafMetrics forProperty:*MEMORY[0x1E69D5DE0]];
        v36 = [MEMORY[0x1E696AD98] numberWithBool:isAdultContent];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v36 forProperty:*MEMORY[0x1E69D5C38]];

        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:commonSenseRecommendedAge forProperty:*MEMORY[0x1E69D5AF8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:hasSDHLocales forProperty:*MEMORY[0x1E69D5C18]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:hasADLocales forProperty:*MEMORY[0x1E69D5C08]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:hasDolbyAtmos forProperty:*MEMORY[0x1E69D5C10]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:requiredAgeForPlayback forProperty:*MEMORY[0x1E69D5D00]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:frequencyOfAgeConfirmation forProperty:*MEMORY[0x1E69D5BD8]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:mediaMetrics forProperty:*MEMORY[0x1E69D5C70]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:tvAppDeeplinkURL forProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:showTitle forProperty:*MEMORY[0x1E69D5D38]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:seasonNumber forProperty:*MEMORY[0x1E69D5D30]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:episodeNumber forProperty:*MEMORY[0x1E69D5B80]];
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:videoResolutionClass forProperty:*MEMORY[0x1E69D5DF0]];
        v57 = mediaShareMetadata;
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:mediaShareMetadata forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
        v55 = showMediaShareMetadata;
        [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:showMediaShareMetadata forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
        v37 = rentalID;
        if (rentalID && ([rentalID isEqual:&unk_1F5E5D8C0] & 1) == 0)
        {
          [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:rentalID forProperty:*MEMORY[0x1E69D5CE8]];
        }

        if (rentalStartedWatchingTimestamp)
        {
          v38 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v38 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
          v39 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
          [v38 setTimeZone:v39];

          v40 = [v38 dateFromString:rentalStartedWatchingTimestamp];
          if (v40)
          {
            [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:v40 forProperty:*MEMORY[0x1E69D5CF8]];
          }
        }

        v41 = *MEMORY[0x1E69D5B20];
        v42 = [(VUIStoreMediaItem_iOS *)v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B20]];
        if (!v42)
        {
          metadata13 = [v5 metadata];
          ratingValue = [metadata13 ratingValue];

          [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:ratingValue forProperty:v41];
        }

        metadata14 = [v5 metadata];
        ratingDomain = [metadata14 ratingDomain];

        v47 = [(VUIMediaInfo *)self _tvpRatingDomainFromUTSRatingDomain:ratingDomain];
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
      canonicalID = VUIDefaultLogObject();
      if (os_log_type_enabled(canonicalID, OS_LOG_TYPE_ERROR))
      {
        [VUIMediaInfo _storeMediaItemFromVideosPlayable:canonicalID andStoreDictionary:?];
      }

      v13 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIMediaInfo *)self _populateMediaItem:v13 withResumeTimeInfoFromPlayable:v5];
    }

    sharedWatchId = [v5 sharedWatchId];
    [(VUIStoreMediaItem_iOS *)v13 setMediaItemMetadata:sharedWatchId forProperty:*MEMORY[0x1E69D5CA0]];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_auxMediaItemFromVideosPlayable:(id)playable
{
  v170 = *MEMORY[0x1E69E9840];
  playableCopy = playable;
  canonicalID = [playableCopy canonicalID];
  adamID = [playableCopy adamID];
  requiredAgeForPlayback = [playableCopy requiredAgeForPlayback];
  frequencyOfAgeConfirmation = [playableCopy frequencyOfAgeConfirmation];
  selfCopy = self;
  if ([adamID length])
  {
    mediaType = [playableCopy mediaType];
    v9 = mediaType;
    if (mediaType && [mediaType isEqualToString:@"Trailer"])
    {

      goto LABEL_28;
    }

    v10 = +[VUIDownloadManager sharedInstance];
    v11 = [v10 existingDownloadForAdamID:adamID];

    v105 = requiredAgeForPlayback;
    v106 = canonicalID;
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

      mediaItem = [v11 mediaItem];
      metadata = [playableCopy metadata];
      mediaShareMetadata = [metadata mediaShareMetadata];

      metadata2 = [playableCopy metadata];
      showMediaShareMetadata = [metadata2 showMediaShareMetadata];

      artworkURL = [playableCopy artworkURL];
      mediaShareMetadata2 = artworkURL;
      if (artworkURL)
      {
        absoluteString = [artworkURL absoluteString];
        [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:absoluteString forProperty:*MEMORY[0x1E69D5AC0]];
      }

      [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:mediaShareMetadata forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
      [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:showMediaShareMetadata forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(VUIStoreAuxMediaItem *)mediaItem resetReportingEventCollection];
      }
    }

    else
    {
      v21 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v21 sidebandMediaLibrary];
      mediaShareMetadata = [sidebandMediaLibrary videoForAdamID:adamID useMainThreadContext:1];

      if (!mediaShareMetadata)
      {
        mediaItem = 0;
        canonicalID = v106;
        goto LABEL_27;
      }

      downloadState = [mediaShareMetadata downloadState];
      canonicalID = v106;
      if (downloadState != 2)
      {
        if (downloadState || ([mediaShareMetadata markedAsDeleted] & 1) != 0)
        {
          mediaItem = 0;
          goto LABEL_27;
        }

        mediaItem = [mediaShareMetadata expirationDate];

        if (!mediaItem)
        {
LABEL_27:

          requiredAgeForPlayback = v105;
          if (mediaItem)
          {
            goto LABEL_65;
          }

          goto LABEL_28;
        }
      }

      v161 = adamID;
      v24 = objc_opt_class();
      [mediaShareMetadata adamID];
      v26 = v25 = self;
      canonicalID2 = [mediaShareMetadata canonicalID];
      showMediaShareMetadata = [v24 _playbackOverridesForURL:0 adamID:v26 canonicalID:canonicalID2];

      mediaItem = [[VUIStoreAuxMediaItem alloc] initWithVideoManagedObject:mediaShareMetadata isForStartingDownload:0];
      playbackURL = [playableCopy playbackURL];
      v29 = [VUIPlaybackUtilities updatedHLSURL:playbackURL forPlaybackContext:[(VUIMediaInfo *)v25 playbackContext]];
      [(VUIStoreAuxMediaItem *)mediaItem setStreamingOverrideURLForDownload:v29];

      metadata3 = [playableCopy metadata];
      mediaShareMetadata2 = [metadata3 mediaShareMetadata];

      metadata4 = [playableCopy metadata];
      showMediaShareMetadata2 = [metadata4 showMediaShareMetadata];

      [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:mediaShareMetadata2 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
      [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:showMediaShareMetadata2 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
      playablePassThrough = [playableCopy playablePassThrough];
      if ([playablePassThrough length])
      {
        [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:playablePassThrough forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
      }

      artworkURL2 = [playableCopy artworkURL];
      v35 = artworkURL2;
      if (artworkURL2)
      {
        absoluteString2 = [artworkURL2 absoluteString];
        [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:absoluteString2 forProperty:*MEMORY[0x1E69D5AC0]];
      }

      v37 = VUIDefaultLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "Creating new media item for playable from library since it is not being downloaded currently", buf, 2u);
      }

      [(VUIMediaInfo *)selfCopy _populateMediaItem:mediaItem withMetadataOverrides:showMediaShareMetadata];
      adamID = v161;
    }

    canonicalID = v106;
    self = selfCopy;
    goto LABEL_27;
  }

LABEL_28:
  playbackURL2 = [playableCopy playbackURL];
  hlsProgramID = [playableCopy hlsProgramID];
  externalID = [playableCopy externalID];
  channelID = [playableCopy channelID];
  channelName = [playableCopy channelName];
  metadata5 = [playableCopy metadata];
  ratingValue = [metadata5 ratingValue];

  metadata6 = [playableCopy metadata];
  isExtrasContent = [metadata6 isExtrasContent];

  metadata7 = [playableCopy metadata];
  ratingName = [metadata7 ratingName];

  metadata8 = [playableCopy metadata];
  ratingAuxiliaryName = [metadata8 ratingAuxiliaryName];

  mediaType2 = [playableCopy mediaType];
  v44 = ([mediaType2 isEqualToString:@"LiveService"] & 1) != 0 || objc_msgSend(playableCopy, "playableType") == 2;
  v110 = v44;
  v118 = mediaType2;
  v45 = [mediaType2 isEqualToString:@"SportingEvent"];
  v164 = [(VUIMediaInfo *)self _tvpMediaTypeFromPlayable:playableCopy];
  scrubVideoURL = [playableCopy scrubVideoURL];
  fpsCertificateURL = [playableCopy fpsCertificateURL];
  fpsKeyServerURL = [playableCopy fpsKeyServerURL];
  fpsAdditionalServerParams = [playableCopy fpsAdditionalServerParams];
  sendMescalHeaderToPlaybackKeyServer = [playableCopy sendMescalHeaderToPlaybackKeyServer];
  sendLocationToPlaybackKeyServerWhenOptedIn = [playableCopy sendLocationToPlaybackKeyServerWhenOptedIn];
  bookmarkID = [playableCopy bookmarkID];
  isFamilySharingContent = [playableCopy isFamilySharingContent];
  metadata9 = [playableCopy metadata];
  videoResolutionClass = [metadata9 videoResolutionClass];

  metadata10 = [playableCopy metadata];
  videoDynamicRange = [metadata10 videoDynamicRange];

  metadata11 = [playableCopy metadata];
  hasADLocales = [metadata11 hasADLocales];

  metadata12 = [playableCopy metadata];
  hasSDHLocales = [metadata12 hasSDHLocales];

  referenceID = [playableCopy referenceID];
  rtcServiceIdentifier = [playableCopy rtcServiceIdentifier];
  vpafMetrics = [playableCopy vpafMetrics];
  reportVPAFWhenPlayingInBackground = [playableCopy reportVPAFWhenPlayingInBackground];
  liveSportsPostPlayShelfFetchPolicy = [playableCopy liveSportsPostPlayShelfFetchPolicy];
  autoExitOnBroadcastEndInSeconds = [playableCopy autoExitOnBroadcastEndInSeconds];
  mediaMetrics = [playableCopy mediaMetrics];
  metadata13 = [playableCopy metadata];
  isAdultContent = [metadata13 isAdultContent];

  metadata14 = [playableCopy metadata];
  commonSenseRecommendedAge = [metadata14 commonSenseRecommendedAge];

  metadata15 = [playableCopy metadata];
  hasDolbyAtmos = [metadata15 hasDolbyAtmos];

  disableScrubbing = [playableCopy disableScrubbing];
  liveStreamServiceID = [playableCopy liveStreamServiceID];
  externalServiceID = [playableCopy externalServiceID];
  metadata16 = [playableCopy metadata];
  seasonNumber = [metadata16 seasonNumber];

  metadata17 = [playableCopy metadata];
  episodeNumber = [metadata17 episodeNumber];

  metadata18 = [playableCopy metadata];
  episodeIndexInSeries = [metadata18 episodeIndexInSeries];

  tvAppDeeplinkURL = [playableCopy tvAppDeeplinkURL];
  buyParams = [playableCopy buyParams];
  upsellRouterDataSource = [playableCopy upsellRouterDataSource];
  metadata19 = [playableCopy metadata];
  upsellOnExitPolicy = [metadata19 upsellOnExitPolicy];

  rentalID = [playableCopy rentalID];
  v117 = [objc_opt_class() _playbackOverridesForURL:playbackURL2 adamID:adamID canonicalID:canonicalID];
  v162 = [v117 objectForKey:@"replacementPlaybackURL"];
  locale = [playableCopy locale];
  playsFromStartOfLiveStream = [playableCopy playsFromStartOfLiveStream];
  metadata20 = [playableCopy metadata];
  mediaShareMetadata3 = [metadata20 mediaShareMetadata];

  metadata21 = [playableCopy metadata];
  showMediaShareMetadata3 = [metadata21 showMediaShareMetadata];

  utsEntityType = [playableCopy utsEntityType];
  metadata22 = [playableCopy metadata];
  showTitle = [metadata22 showTitle];

  metadata23 = [playableCopy metadata];
  artworkURLFormat = [metadata23 artworkURLFormat];

  metadata24 = [playableCopy metadata];
  artworkAspectRatio = [metadata24 artworkAspectRatio];

  [artworkAspectRatio doubleValue];
  v116 = artworkAspectRatio;
  if (v64 <= 0.0)
  {
    v66 = 0;
  }

  else
  {
    [artworkAspectRatio doubleValue];
    v66 = v65 < 1.0;
  }

  if ([v162 length])
  {
    v67 = VUIDefaultLogObject();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v167 = playbackURL2;
      v168 = 2112;
      v169 = v162;
      _os_log_impl(&dword_1E323F000, v67, OS_LOG_TYPE_DEFAULT, "Overriding original playback URL %@ with replacement playback URL %@", buf, 0x16u);
    }

    v68 = [MEMORY[0x1E695DFF8] URLWithString:v162];
  }

  else
  {
    if ([playableCopy isiTunesPurchaseOrRental])
    {
      v69 = [(VUIMediaInfo *)selfCopy _hlsURLEnsuringDsidQueryParamIsPresentFromURL:playbackURL2];

      playbackURL2 = v69;
    }

    v68 = [VUIPlaybackUtilities updatedHLSURL:playbackURL2 forPlaybackContext:[(VUIMediaInfo *)selfCopy playbackContext]];
  }

  v120 = v68;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v71 = [standardUserDefaults BOOLForKey:@"AssumeSportingEvent"];

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

  mediaItem = [[VUIStoreAuxMediaItem alloc] initWithURL:v120];
  [(VUIStoreAuxMediaItem *)mediaItem setFpsCertificateURL:fpsCertificateURL];
  [(VUIStoreAuxMediaItem *)mediaItem setFpsKeyServerURL:fpsKeyServerURL];
  [(VUIStoreAuxMediaItem *)mediaItem setFpsAdditionalServerParams:fpsAdditionalServerParams];
  [(VUIStoreAuxMediaItem *)mediaItem setSendsMescalHeaderToPlaybackKeyServer:sendMescalHeaderToPlaybackKeyServer];
  [(VUIStoreAuxMediaItem *)mediaItem setSendsLocationToPlaybackKeyServerWhenOptedIn:sendLocationToPlaybackKeyServerWhenOptedIn];
  [(VUIStoreAuxMediaItem *)mediaItem setBookmarkID:bookmarkID];
  [(VUIStoreAuxMediaItem *)mediaItem setDisableResumeMenu:1];
  -[VUIStoreAuxMediaItem setIsiTunesPurchasedOrRentedContent:](mediaItem, "setIsiTunesPurchasedOrRentedContent:", [playableCopy isiTunesPurchaseOrRental]);
  [(VUIStoreAuxMediaItem *)mediaItem setDisableScrubbing:disableScrubbing];
  [(VUIStoreAuxMediaItem *)mediaItem setIsFamilySharingContent:isFamilySharingContent];
  [(VUIStoreAuxMediaItem *)mediaItem setIsLiveContent:v110];
  [(VUIStoreAuxMediaItem *)mediaItem setIsSportingEvent:v45];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:adamID forProperty:*MEMORY[0x1E69D5DA8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:hlsProgramID forProperty:*MEMORY[0x1E69D5BF0]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:externalID forProperty:*MEMORY[0x1E69D5B98]];
  v111 = *MEMORY[0x1E69D5D40];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:rtcServiceIdentifier forProperty:?];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:videoDynamicRange forProperty:*MEMORY[0x1E69D5DE8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:videoResolutionClass forProperty:*MEMORY[0x1E69D5DF0]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:hasADLocales forProperty:*MEMORY[0x1E69D5C08]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:hasSDHLocales forProperty:*MEMORY[0x1E69D5C18]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v164 forProperty:*MEMORY[0x1E69D5C78]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:channelID forProperty:*MEMORY[0x1E69D5AD0]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:channelName forProperty:*MEMORY[0x1E69D5AD8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:canonicalID forProperty:*MEMORY[0x1E69D5AE8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:referenceID forProperty:*MEMORY[0x1E69D5CD8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:vpafMetrics forProperty:*MEMORY[0x1E69D5DE0]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:showTitle forProperty:*MEMORY[0x1E69D5D38]];
  if (artworkURLFormat)
  {
    if (v66)
    {
      v73 = *MEMORY[0x1E69D5DB8];
      v74 = mediaItem;
      v75 = showTitle;
    }

    else
    {
      v73 = *MEMORY[0x1E69D5AB8];
      v74 = mediaItem;
      v75 = artworkURLFormat;
    }

    [(VUIStoreAuxMediaItem *)v74 setMediaItemMetadata:v75 forProperty:v73];
  }

  v76 = [MEMORY[0x1E696AD98] numberWithBool:reportVPAFWhenPlayingInBackground];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v76 forProperty:@"VUIMediaItemMetadataKeyReportVPAFWhenPlayingInBackground"];

  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:mediaMetrics forProperty:*MEMORY[0x1E69D5C70]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:externalServiceID forProperty:*MEMORY[0x1E69D5BA8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:liveStreamServiceID forProperty:*MEMORY[0x1E69D5C48]];
  v77 = [MEMORY[0x1E696AD98] numberWithBool:isAdultContent];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v77 forProperty:*MEMORY[0x1E69D5C38]];

  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:commonSenseRecommendedAge forProperty:*MEMORY[0x1E69D5AF8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:hasDolbyAtmos forProperty:*MEMORY[0x1E69D5C10]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:requiredAgeForPlayback forProperty:*MEMORY[0x1E69D5D00]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:frequencyOfAgeConfirmation forProperty:*MEMORY[0x1E69D5BD8]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:seasonNumber forProperty:*MEMORY[0x1E69D5D30]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:episodeNumber forProperty:*MEMORY[0x1E69D5B80]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:episodeIndexInSeries forProperty:*MEMORY[0x1E69D5B78]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:ratingValue forProperty:*MEMORY[0x1E69D5B20]];
  v78 = [MEMORY[0x1E696AD98] numberWithBool:isExtrasContent];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v78 forProperty:@"VUIMediaItemMetadataKeyIsExtrasContent"];

  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:ratingName forProperty:*MEMORY[0x1E69D5B00]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:ratingAuxiliaryName forProperty:@"VUIMediaItemMetadataKeyRatingAuxiliaryDisplayName"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:tvAppDeeplinkURL forProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:buyParams forProperty:*MEMORY[0x1E69D5AE0]];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:upsellRouterDataSource forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:upsellOnExitPolicy forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:locale forProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
  v79 = [MEMORY[0x1E696AD98] numberWithBool:playsFromStartOfLiveStream];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v79 forProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];

  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:mediaShareMetadata3 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:showMediaShareMetadata3 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:utsEntityType forProperty:@"VUIMediaItemMetadataKeyUTSEntityType"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:liveSportsPostPlayShelfFetchPolicy forProperty:@"VUIMediaItemMetadataKeyLiveSportsPostPlayShelfFetchPolicy"];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:autoExitOnBroadcastEndInSeconds forProperty:@"VUIMediaItemMetadataKeyAutoExitOnBroadcastEndInSeconds"];
  v80 = scrubVideoURL;
  if ([playableCopy isAmbientVideo])
  {
    [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:@"VUIMediaItemMetadataKeyIsAmbientVideo"];
    repeatLoopCount = [playableCopy repeatLoopCount];
    if (repeatLoopCount)
    {
      [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:repeatLoopCount forProperty:@"VUIMediaItemMetadataKeyRepeatLoopCount"];
    }
  }

  v82 = requiredAgeForPlayback;
  v83 = adamID;
  if (rentalID && ([rentalID isEqual:&unk_1F5E5D8C0] & 1) == 0)
  {
    [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:rentalID forProperty:*MEMORY[0x1E69D5CE8]];
  }

  v84 = canonicalID;
  metadata25 = [playableCopy metadata];
  ratingDomain = [metadata25 ratingDomain];

  v87 = [(VUIMediaInfo *)selfCopy _tvpRatingDomainFromUTSRatingDomain:ratingDomain];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v87 forProperty:*MEMORY[0x1E69D5B08]];

  if ([v164 isEqualToString:*MEMORY[0x1E69D5ED0]])
  {
    showCanonicalID = [playableCopy showCanonicalID];
    seasonCanonicalID = [playableCopy seasonCanonicalID];
    [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:showCanonicalID forProperty:*MEMORY[0x1E69D5D50]];
    [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:seasonCanonicalID forProperty:*MEMORY[0x1E69D5D28]];
  }

  if ([playableCopy isFamilySharingContent])
  {
    extrasInfo = [playableCopy extrasInfo];
    extrasURLString = [extrasInfo extrasURLString];
    v92 = [extrasURLString length];

    if (v92)
    {
      v93 = MEMORY[0x1E695DFF8];
      extrasInfo2 = [playableCopy extrasInfo];
      extrasURLString2 = [extrasInfo2 extrasURLString];
      v96 = [v93 URLWithString:extrasURLString2];

      [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v96 forProperty:*MEMORY[0x1E69D5BB0]];
    }
  }

  self = selfCopy;
  [(VUIMediaInfo *)selfCopy _populateMediaItem:mediaItem withMetadataFromVideosPlayable:playableCopy];
  if (scrubVideoURL)
  {
    v97 = [[VUIStoreAuxMediaItem alloc] initWithURL:scrubVideoURL];
    v98 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v100 = [v98 stringWithFormat:@"%@.IFrameScrubVideo", bundleIdentifier];
    [(VUIStoreAuxMediaItem *)v97 setMediaItemMetadata:v100 forProperty:v111];

    self = selfCopy;
    v80 = scrubVideoURL;

    [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v97 forProperty:*MEMORY[0x1E69D5D18]];
  }

  [(VUIMediaInfo *)self _populateMediaItem:mediaItem withMetadataOverrides:v117];
  [(VUIStoreAuxMediaItem *)mediaItem setPlaybackContext:[(VUIMediaInfo *)self playbackContext]];

  canonicalID = v84;
  adamID = v83;
  requiredAgeForPlayback = v82;
LABEL_65:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VUIMediaInfo *)self _populateMediaItem:mediaItem withResumeTimeInfoFromPlayable:playableCopy];
  }

  sharedWatchId = [playableCopy sharedWatchId];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:sharedWatchId forProperty:*MEMORY[0x1E69D5CA0]];
  v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(playableCopy, "playableType")}];
  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:v103 forProperty:@"VUIMediaItemMetadataKeyPlayableType"];

  [(VUIStoreAuxMediaItem *)mediaItem setMediaItemMetadata:playableCopy forProperty:@"VUIMediaItemMetadataKeyPlayableForDownload"];

  return mediaItem;
}

- (void)_populateMediaItem:(id)item withOtherMediaItem:(id)mediaItem
{
  itemCopy = item;
  mediaItemCopy = mediaItem;
  fpsCertificateURL = [mediaItemCopy fpsCertificateURL];
  [itemCopy setFpsCertificateURL:fpsCertificateURL];

  fpsKeyServerURL = [mediaItemCopy fpsKeyServerURL];
  [itemCopy setFpsKeyServerURL:fpsKeyServerURL];

  fpsAdditionalServerParams = [mediaItemCopy fpsAdditionalServerParams];
  [itemCopy setFpsAdditionalServerParams:fpsAdditionalServerParams];

  [itemCopy setSendsMescalHeaderToPlaybackKeyServer:{objc_msgSend(mediaItemCopy, "sendsMescalHeaderToPlaybackKeyServer")}];
  [itemCopy setSendsLocationToPlaybackKeyServerWhenOptedIn:{objc_msgSend(mediaItemCopy, "sendsLocationToPlaybackKeyServerWhenOptedIn")}];
  bookmarkID = [mediaItemCopy bookmarkID];
  [itemCopy setBookmarkID:bookmarkID];

  [itemCopy setDisableResumeMenu:1];
  [itemCopy setIsiTunesPurchasedOrRentedContent:{objc_msgSend(mediaItemCopy, "isiTunesPurchasedOrRentedContent")}];
  [itemCopy setDisableScrubbing:{objc_msgSend(mediaItemCopy, "disableScrubbing")}];
  [itemCopy setIsFamilySharingContent:{objc_msgSend(mediaItemCopy, "isFamilySharingContent")}];
  [itemCopy setIsLiveContent:{objc_msgSend(mediaItemCopy, "isLiveContent")}];
  [itemCopy setIsSportingEvent:{objc_msgSend(mediaItemCopy, "isSportingEvent")}];
  v10 = *MEMORY[0x1E69D5DA8];
  v11 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  [itemCopy setMediaItemMetadata:v11 forProperty:v10];

  v12 = *MEMORY[0x1E69D5B98];
  v13 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  [itemCopy setMediaItemMetadata:v13 forProperty:v12];

  v14 = *MEMORY[0x1E69D5D40];
  v15 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D40]];
  [itemCopy setMediaItemMetadata:v15 forProperty:v14];

  v16 = *MEMORY[0x1E69D5DE8];
  v17 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DE8]];
  [itemCopy setMediaItemMetadata:v17 forProperty:v16];

  v18 = *MEMORY[0x1E69D5DF0];
  v19 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DF0]];
  [itemCopy setMediaItemMetadata:v19 forProperty:v18];

  v20 = *MEMORY[0x1E69D5C08];
  v21 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C08]];
  [itemCopy setMediaItemMetadata:v21 forProperty:v20];

  v22 = *MEMORY[0x1E69D5C18];
  v23 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C18]];
  [itemCopy setMediaItemMetadata:v23 forProperty:v22];

  v24 = *MEMORY[0x1E69D5C78];
  v25 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  [itemCopy setMediaItemMetadata:v25 forProperty:v24];

  v26 = *MEMORY[0x1E69D5AD0];
  v27 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  [itemCopy setMediaItemMetadata:v27 forProperty:v26];

  v28 = *MEMORY[0x1E69D5AD8];
  v29 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD8]];
  [itemCopy setMediaItemMetadata:v29 forProperty:v28];

  v30 = *MEMORY[0x1E69D5AE8];
  v31 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  [itemCopy setMediaItemMetadata:v31 forProperty:v30];

  v32 = *MEMORY[0x1E69D5CD8];
  v33 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
  [itemCopy setMediaItemMetadata:v33 forProperty:v32];

  v34 = *MEMORY[0x1E69D5DE0];
  v35 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DE0]];
  [itemCopy setMediaItemMetadata:v35 forProperty:v34];

  v36 = *MEMORY[0x1E69D5C70];
  v37 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C70]];
  [itemCopy setMediaItemMetadata:v37 forProperty:v36];

  v38 = *MEMORY[0x1E69D5BA8];
  v39 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5BA8]];
  [itemCopy setMediaItemMetadata:v39 forProperty:v38];

  v40 = *MEMORY[0x1E69D5C48];
  v41 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C48]];
  [itemCopy setMediaItemMetadata:v41 forProperty:v40];

  v42 = *MEMORY[0x1E69D5C38];
  v43 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  [itemCopy setMediaItemMetadata:v43 forProperty:v42];

  v44 = *MEMORY[0x1E69D5AF8];
  v45 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AF8]];
  [itemCopy setMediaItemMetadata:v45 forProperty:v44];

  v46 = *MEMORY[0x1E69D5C10];
  v47 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C10]];
  [itemCopy setMediaItemMetadata:v47 forProperty:v46];

  v48 = *MEMORY[0x1E69D5D00];
  v49 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D00]];
  [itemCopy setMediaItemMetadata:v49 forProperty:v48];

  v50 = *MEMORY[0x1E69D5BD8];
  v51 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5BD8]];
  [itemCopy setMediaItemMetadata:v51 forProperty:v50];

  v52 = *MEMORY[0x1E69D5D30];
  v53 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D30]];
  [itemCopy setMediaItemMetadata:v53 forProperty:v52];

  v54 = *MEMORY[0x1E69D5B80];
  v55 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B80]];
  [itemCopy setMediaItemMetadata:v55 forProperty:v54];

  v56 = *MEMORY[0x1E69D5B78];
  v57 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B78]];
  [itemCopy setMediaItemMetadata:v57 forProperty:v56];

  v58 = *MEMORY[0x1E69D5B20];
  v59 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B20]];
  [itemCopy setMediaItemMetadata:v59 forProperty:v58];

  v60 = *MEMORY[0x1E69D5B00];
  v61 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B00]];
  [itemCopy setMediaItemMetadata:v61 forProperty:v60];

  v62 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyRatingAuxiliaryDisplayName"];
  [itemCopy setMediaItemMetadata:v62 forProperty:@"VUIMediaItemMetadataKeyRatingAuxiliaryDisplayName"];

  v63 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
  [itemCopy setMediaItemMetadata:v63 forProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];

  v64 = *MEMORY[0x1E69D5AE0];
  v65 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE0]];
  [itemCopy setMediaItemMetadata:v65 forProperty:v64];

  v66 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];
  [itemCopy setMediaItemMetadata:v66 forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];

  v67 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];
  [itemCopy setMediaItemMetadata:v67 forProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];

  v68 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
  [itemCopy setMediaItemMetadata:v68 forProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];

  v69 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];
  [itemCopy setMediaItemMetadata:v69 forProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];

  v70 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
  [itemCopy setMediaItemMetadata:v70 forProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];

  v71 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
  [itemCopy setMediaItemMetadata:v71 forProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];

  v72 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyIsAmbientVideo"];
  [itemCopy setMediaItemMetadata:v72 forProperty:@"VUIMediaItemMetadataKeyIsAmbientVideo"];

  v73 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyRepeatLoopCount"];
  [itemCopy setMediaItemMetadata:v73 forProperty:@"VUIMediaItemMetadataKeyRepeatLoopCount"];

  v74 = *MEMORY[0x1E69D5CE8];
  v75 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
  [itemCopy setMediaItemMetadata:v75 forProperty:v74];

  v76 = *MEMORY[0x1E69D5B08];
  v77 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B08]];
  [itemCopy setMediaItemMetadata:v77 forProperty:v76];

  v78 = [itemCopy mediaItemMetadataForProperty:v24];
  LODWORD(v76) = [v78 isEqualToString:*MEMORY[0x1E69D5ED0]];

  if (v76)
  {
    v79 = *MEMORY[0x1E69D5D50];
    v80 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
    [itemCopy setMediaItemMetadata:v80 forProperty:v79];

    v81 = *MEMORY[0x1E69D5D28];
    v82 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D28]];
    [itemCopy setMediaItemMetadata:v82 forProperty:v81];
  }

  v83 = *MEMORY[0x1E69D5BB0];
  v84 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB0]];
  [itemCopy setMediaItemMetadata:v84 forProperty:v83];

  v85 = *MEMORY[0x1E69D5DC0];
  v86 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
  [itemCopy setMediaItemMetadata:v86 forProperty:v85];

  v87 = *MEMORY[0x1E69D5C58];
  v88 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C58]];
  [itemCopy setMediaItemMetadata:v88 forProperty:v87];

  v89 = *MEMORY[0x1E69D5AC0];
  v90 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AC0]];
  [itemCopy setMediaItemMetadata:v90 forProperty:v89];

  v91 = *MEMORY[0x1E69D5CC8];
  v92 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC8]];
  [itemCopy setMediaItemMetadata:v92 forProperty:v91];

  v93 = *MEMORY[0x1E69D5CC0];
  v94 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC0]];
  [itemCopy setMediaItemMetadata:v94 forProperty:v93];

  v95 = +[VUIFeaturesConfiguration sharedInstance];
  nowPlayingConfig = [v95 nowPlayingConfig];
  shouldSendLiveStreamStartAndEndTimesToAVKit = [nowPlayingConfig shouldSendLiveStreamStartAndEndTimesToAVKit];

  if (shouldSendLiveStreamStartAndEndTimesToAVKit)
  {
    v98 = *MEMORY[0x1E69D5B90];
    v99 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B90]];
    [itemCopy setMediaItemMetadata:v99 forProperty:v98];

    v100 = *MEMORY[0x1E69D5B88];
    v101 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B88]];
    [itemCopy setMediaItemMetadata:v101 forProperty:v100];
  }

  v102 = *MEMORY[0x1E69D5D80];
  v103 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D80]];
  [itemCopy setMediaItemMetadata:v103 forProperty:v102];

  v104 = *MEMORY[0x1E69D5D78];
  v105 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D78]];
  [itemCopy setMediaItemMetadata:v105 forProperty:v104];

  v106 = *MEMORY[0x1E69D5D70];
  v107 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D70]];
  [itemCopy setMediaItemMetadata:v107 forProperty:v106];

  v108 = *MEMORY[0x1E69D5D68];
  v109 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D68]];
  [itemCopy setMediaItemMetadata:v109 forProperty:v108];

  v110 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];
  [itemCopy setMediaItemMetadata:v110 forProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];

  v111 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
  [itemCopy setMediaItemMetadata:v111 forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];

  v112 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsKeyPlayAvailable"];
  [itemCopy setMediaItemMetadata:v112 forProperty:@"VUIMediaItemMetadataIsKeyPlayAvailable"];

  v113 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];
  [itemCopy setMediaItemMetadata:v113 forProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];

  v114 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataSupportsStartOver"];
  [itemCopy setMediaItemMetadata:v114 forProperty:@"VUIMediaItemMetadataSupportsStartOver"];

  v115 = [mediaItemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataPreferredAudioLanguageCode"];
  [itemCopy setMediaItemMetadata:v115 forProperty:@"VUIMediaItemMetadataPreferredAudioLanguageCode"];

  v116 = *MEMORY[0x1E69D5DD0];
  v117 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DD0]];
  [itemCopy setMediaItemMetadata:v117 forProperty:v116];

  v118 = *MEMORY[0x1E69D5DC8];
  v119 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC8]];
  [itemCopy setMediaItemMetadata:v119 forProperty:v118];

  v120 = *MEMORY[0x1E69D5DB0];
  v121 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DB0]];
  [itemCopy setMediaItemMetadata:v121 forProperty:v120];

  v122 = *MEMORY[0x1E69D5BE0];
  v123 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5BE0]];
  [itemCopy setMediaItemMetadata:v123 forProperty:v122];

  v124 = [mediaItemCopy mediaItemMetadataForProperty:v87];
  [itemCopy setMediaItemMetadata:v124 forProperty:v87];

  v125 = *MEMORY[0x1E69D5D18];
  v126 = [mediaItemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D18]];
  [itemCopy setMediaItemMetadata:v126 forProperty:v125];

  [itemCopy setPlaybackContext:{objc_msgSend(mediaItemCopy, "playbackContext")}];
}

- (void)_populateMediaItem:(id)item withMetadataFromVideosPlayable:(id)playable
{
  itemCopy = item;
  playableCopy = playable;
  metadata = [playableCopy metadata];
  title = [metadata title];

  if ([title length])
  {
    [itemCopy setMediaItemMetadata:title forProperty:*MEMORY[0x1E69D5DC0]];
  }

  metadata2 = [playableCopy metadata];
  mediaDescription = [metadata2 mediaDescription];

  if ([mediaDescription length])
  {
    [itemCopy setMediaItemMetadata:mediaDescription forProperty:*MEMORY[0x1E69D5C58]];
  }

  artworkURL = [playableCopy artworkURL];
  v12 = artworkURL;
  v13 = MEMORY[0x1E69D5AC0];
  if (artworkURL)
  {
    absoluteString = [artworkURL absoluteString];
    [itemCopy setMediaItemMetadata:absoluteString forProperty:*v13];
  }

  metadata3 = [playableCopy metadata];
  scheduleStartTime = [metadata3 scheduleStartTime];

  [scheduleStartTime doubleValue];
  if (v17 > 0.0)
  {
    [itemCopy setMediaItemMetadata:scheduleStartTime forProperty:*MEMORY[0x1E69D5CC8]];
  }

  v109 = v12;
  metadata4 = [playableCopy metadata];
  scheduleEndTime = [metadata4 scheduleEndTime];

  [scheduleEndTime doubleValue];
  if (v20 > 0.0)
  {
    [itemCopy setMediaItemMetadata:scheduleEndTime forProperty:*MEMORY[0x1E69D5CC0]];
  }

  v116 = scheduleEndTime;
  metadata5 = [playableCopy metadata];
  transportBarStartTime = [metadata5 transportBarStartTime];

  v112 = transportBarStartTime;
  [transportBarStartTime doubleValue];
  if (v23 > 0.0)
  {
    v24 = +[VUIFeaturesConfiguration sharedInstance];
    nowPlayingConfig = [v24 nowPlayingConfig];
    shouldSendLiveStreamStartAndEndTimesToAVKit = [nowPlayingConfig shouldSendLiveStreamStartAndEndTimesToAVKit];

    if (shouldSendLiveStreamStartAndEndTimesToAVKit)
    {
      v27 = +[VUIFeaturesConfiguration sharedInstance];
      nowPlayingConfig2 = [v27 nowPlayingConfig];
      [nowPlayingConfig2 liveStreamStartAndEndTimeBadMetadataCutoff];
      v30 = v29;

      if (v30 <= 0.0)
      {
        [itemCopy setMediaItemMetadata:v112 forProperty:*MEMORY[0x1E69D5B90]];
      }

      else
      {
        v31 = MEMORY[0x1E695DF00];
        [v112 doubleValue];
        v33 = [v31 dateWithTimeIntervalSince1970:v32 / 1000.0];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:v33];
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
          [itemCopy setMediaItemMetadata:v112 forProperty:*MEMORY[0x1E69D5B90]];
        }
      }
    }
  }

  metadata6 = [playableCopy metadata];
  transportBarEndTime = [metadata6 transportBarEndTime];

  v111 = transportBarEndTime;
  [transportBarEndTime doubleValue];
  if (v40 > 0.0)
  {
    v41 = +[VUIFeaturesConfiguration sharedInstance];
    nowPlayingConfig3 = [v41 nowPlayingConfig];
    shouldSendLiveStreamStartAndEndTimesToAVKit2 = [nowPlayingConfig3 shouldSendLiveStreamStartAndEndTimesToAVKit];

    if (shouldSendLiveStreamStartAndEndTimesToAVKit2)
    {
      v44 = +[VUIFeaturesConfiguration sharedInstance];
      nowPlayingConfig4 = [v44 nowPlayingConfig];
      [nowPlayingConfig4 liveStreamStartAndEndTimeBadMetadataCutoff];
      v47 = v46;

      if (v47 <= 0.0)
      {
        [itemCopy setMediaItemMetadata:v111 forProperty:*MEMORY[0x1E69D5B88]];
      }

      else
      {
        v48 = MEMORY[0x1E695DF00];
        [v111 doubleValue];
        v50 = [v48 dateWithTimeIntervalSince1970:v49 / 1000.0];
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSinceDate:v50];
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
          [itemCopy setMediaItemMetadata:v111 forProperty:*MEMORY[0x1E69D5B88]];
        }
      }
    }
  }

  metadata7 = [playableCopy metadata];
  venueName = [metadata7 venueName];

  if ([venueName length])
  {
    [itemCopy setMediaItemMetadata:venueName forProperty:*MEMORY[0x1E69D5D80]];
  }

  v115 = venueName;
  metadata8 = [playableCopy metadata];
  venueAddress = [metadata8 venueAddress];

  if ([venueAddress length])
  {
    [itemCopy setMediaItemMetadata:venueAddress forProperty:*MEMORY[0x1E69D5D78]];
  }

  metadata9 = [playableCopy metadata];
  leagueShortName = [metadata9 leagueShortName];

  if ([leagueShortName length])
  {
    [itemCopy setMediaItemMetadata:leagueShortName forProperty:*MEMORY[0x1E69D5D70]];
  }

  v117 = leagueShortName;
  v110 = mediaDescription;
  metadata10 = [playableCopy metadata];
  leagueName = [metadata10 leagueName];

  if ([leagueName length])
  {
    [itemCopy setMediaItemMetadata:leagueName forProperty:*MEMORY[0x1E69D5D68]];
  }

  v113 = leagueName;
  metadata11 = [playableCopy metadata];
  isEligibleForPlayerTabs = [metadata11 isEligibleForPlayerTabs];

  v65 = [MEMORY[0x1E696AD98] numberWithBool:isEligibleForPlayerTabs];
  [itemCopy setMediaItemMetadata:v65 forProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];

  playablePassThrough = [playableCopy playablePassThrough];
  if ([playablePassThrough length])
  {
    [itemCopy setMediaItemMetadata:playablePassThrough forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
  }

  v106 = playablePassThrough;
  isKeyPlayAvailable = [playableCopy isKeyPlayAvailable];
  v68 = [MEMORY[0x1E696AD98] numberWithBool:isKeyPlayAvailable];
  [itemCopy setMediaItemMetadata:v68 forProperty:@"VUIMediaItemMetadataIsKeyPlayAvailable"];

  v69 = +[VUIFeaturesConfiguration sharedInstance];
  playerTabsConfig = [v69 playerTabsConfig];

  v105 = playerTabsConfig;
  infoTabMustHaveImageToDisplay = [playerTabsConfig infoTabMustHaveImageToDisplay];
  v72 = [itemCopy mediaItemMetadataForProperty:*v13];
  if (v72)
  {
    v73 = 1;
  }

  else
  {
    v74 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DB8]];
    if (v74)
    {
      v73 = 1;
    }

    else
    {
      v75 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AB8]];
      v73 = v75 != 0;
    }
  }

  v114 = venueAddress;

  v76 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  if (v76)
  {
    v77 = 1;
  }

  else
  {
    v78 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    v77 = v78 != 0;
  }

  if (infoTabMustHaveImageToDisplay)
  {
    v79 = v73 & v77;
  }

  else
  {
    v79 = v77;
  }

  v80 = [MEMORY[0x1E696AD98] numberWithBool:v79];
  [itemCopy setMediaItemMetadata:v80 forProperty:@"VUIMediaItemMetadataIsEligibleForInfoTab"];

  supportsStartOver = [playableCopy supportsStartOver];
  v82 = [MEMORY[0x1E696AD98] numberWithBool:supportsStartOver];
  [itemCopy setMediaItemMetadata:v82 forProperty:@"VUIMediaItemMetadataSupportsStartOver"];

  preferredAudioLanguageCode = [playableCopy preferredAudioLanguageCode];
  if ([preferredAudioLanguageCode length])
  {
    [itemCopy setMediaItemMetadata:preferredAudioLanguageCode forProperty:@"VUIMediaItemMetadataPreferredAudioLanguageCode"];
  }

  metadata12 = [playableCopy metadata];
  tomatoPercentage = [metadata12 tomatoPercentage];

  v86 = v114;
  if (tomatoPercentage)
  {
    [tomatoPercentage doubleValue];
    if (v87 >= 0.0)
    {
      [tomatoPercentage doubleValue];
      if (v88 <= 100.0)
      {
        [itemCopy setMediaItemMetadata:tomatoPercentage forProperty:*MEMORY[0x1E69D5DD0]];
      }
    }
  }

  metadata13 = [playableCopy metadata];
  tomatoFreshness = [metadata13 tomatoFreshness];

  if (tomatoFreshness != 3)
  {
    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:tomatoFreshness];
    [itemCopy setMediaItemMetadata:v91 forProperty:*MEMORY[0x1E69D5DC8]];
  }

  selfCopy = self;
  v108 = scheduleStartTime;
  v93 = v116;
  v94 = [(VUIMediaInfo *)selfCopy _sportingEventSubtitleFromStartTime:scheduleStartTime endTime:v116 leagueShortName:v117];
  if (v94)
  {
    [itemCopy setMediaItemMetadata:v94 forProperty:*MEMORY[0x1E69D5DB0]];
  }

  metadata14 = [playableCopy metadata];
  sportName = [metadata14 sportName];

  if ([sportName length])
  {
    [itemCopy setMediaItemMetadata:sportName forProperty:*MEMORY[0x1E69D5BE0]];
  }

  v97 = v115;
  if ([v115 length] && objc_msgSend(v114, "length"))
  {
    v103 = preferredAudioLanguageCode;
    v104 = title;
    v98 = MEMORY[0x1E696AEC0];
    v99 = +[VUILocalizationManager sharedInstance];
    v100 = [v99 localizedStringForKey:@"SportingEventVenueDescription"];
    v114 = [v98 stringWithFormat:v100, v115, v114];

    if ([v113 length])
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ · %@", v113, v114];
      [itemCopy setMediaItemMetadata:v101 forProperty:*MEMORY[0x1E69D5C58]];
    }

    else
    {
      [itemCopy setMediaItemMetadata:v114 forProperty:*MEMORY[0x1E69D5C58]];
    }

    preferredAudioLanguageCode = v103;
    title = v104;
    v97 = v115;
    v93 = v116;
    v86 = v114;
  }

  if ([playableCopy makeAdditionalPlayerTabsRequest])
  {
    [itemCopy setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:@"VUIMediaItemMetadataMakeAdditionalPlayerTabsRequest"];
  }
}

- (id)_sportingEventTimeSpanStringFromStartTime:(id)time endTime:(id)endTime
{
  v4 = 0;
  if (time && endTime)
  {
    v6 = MEMORY[0x1E695DF00];
    endTimeCopy = endTime;
    [time doubleValue];
    v9 = [v6 dateWithTimeIntervalSince1970:v8 / 1000.0];
    v10 = MEMORY[0x1E695DF00];
    [endTimeCopy doubleValue];
    v12 = v11;

    v13 = [v10 dateWithTimeIntervalSince1970:v12 / 1000.0];
    v14 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v4 = [v14 tvp_hourMinuteDisplayStringFromStartDate:v9 endDate:v13];
  }

  return v4;
}

- (id)_sportingEventSubtitleFromStartTime:(id)time endTime:(id)endTime leagueShortName:(id)name
{
  nameCopy = name;
  v9 = [(VUIMediaInfo *)self _sportingEventTimeSpanStringFromStartTime:time endTime:endTime];
  if ([v9 length] && objc_msgSend(nameCopy, "length"))
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ · %@", v9, nameCopy];
  }

  else
  {
    nameCopy = 0;
  }

  return nameCopy;
}

- (id)_sportingEventTimeSpanStringFromMediaItem:(id)item
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC8]];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"ProgramScheduleStartTimeOverrideInMS"];
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

  v12 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CC0]];
  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 doubleForKey:@"ProgramScheduleEndTimeOverrideInMS"];
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

- (void)_populateMediaItem:(id)item withMetadataOverrides:(id)overrides
{
  v61 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  overridesCopy = overrides;
  v7 = overridesCopy;
  if (overridesCopy)
  {
    v8 = [overridesCopy objectForKey:@"skipIntroStart"];
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
        [itemCopy setMediaItemMetadata:v21 forProperty:*MEMORY[0x1E69D5D58]];
      }
    }

    v42 = v11;
    v43 = v9;
    v44 = v7;
    v45 = itemCopy;
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

    itemCopy = v45;
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
        date = [MEMORY[0x1E695DF00] date];
        v39 = [(VUIMediaStartTimeInfo *)v37 initWithStartTime:v35 timestamp:date type:0 source:@"Demo override plist"];

        startTimeCollection = [v45 startTimeCollection];
        [startTimeCollection addStartTimeInfo:v39];
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

- (void)_populateMediaItem:(id)item withResumeTimeInfoFromPlayable:(id)playable
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  startTimeInfos = [playable startTimeInfos];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [startTimeInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(startTimeInfos);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        startTimeCollection = [itemCopy startTimeCollection];
        [startTimeCollection addStartTimeInfo:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [startTimeInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)_tvpMediaTypeFromPlayable:(id)playable
{
  playableCopy = playable;
  mediaType = [playableCopy mediaType];
  if ([mediaType isEqualToString:@"Movie"])
  {
    if ([playableCopy isRental])
    {
      v5 = MEMORY[0x1E69D5EC8];
    }

    else
    {
      v5 = MEMORY[0x1E69D5EB8];
    }

    goto LABEL_7;
  }

  if ([mediaType isEqualToString:@"Trailer"])
  {
    v5 = MEMORY[0x1E69D5EC0];
LABEL_7:
    v6 = *v5;
    goto LABEL_11;
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Show", @"Season", @"Episode", 0}];
  v6 = 0;
  if ([v7 containsObject:mediaType])
  {
    v6 = *MEMORY[0x1E69D5ED0];
  }

LABEL_11:

  return v6;
}

+ (id)_playbackOverridesForURL:(id)l adamID:(id)d canonicalID:(id)iD
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x1E69DF6E0] = [MEMORY[0x1E69DF6E0] sharedInstance];
  enableDemoMode = [mEMORY[0x1E69DF6E0] enableDemoMode];

  if (enableDemoMode)
  {
    standardUserDefaults = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:@"/var/mobile/Media/ManagedPurchases/TVApp/PlaybackOverrides.plist"];
    if ([standardUserDefaults length])
    {
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:standardUserDefaults options:0 format:0 error:0];
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
    mEMORY[0x1E69DF6E0]2 = [MEMORY[0x1E69DF6E0] sharedInstance];
    playbackOverridesEnabled = [mEMORY[0x1E69DF6E0]2 playbackOverridesEnabled];

    if (!playbackOverridesEnabled)
    {
LABEL_30:
      v16 = 0;
      v19 = 0;
      goto LABEL_33;
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [standardUserDefaults arrayForKey:*MEMORY[0x1E69DF850]];
  }

  if (!v12)
  {
    goto LABEL_30;
  }

  v28 = lCopy;
  absoluteString = [lCopy absoluteString];
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
        if ([absoluteString length] && objc_msgSend(v23, "length") && (objc_msgSend(v23, "isEqualToString:", absoluteString) & 1) != 0 || objc_msgSend(dCopy, "length") && objc_msgSend(v24, "length") && (objc_msgSend(v24, "isEqualToString:", dCopy) & 1) != 0 || objc_msgSend(iDCopy, "length") && objc_msgSend(v25, "length") && objc_msgSend(v25, "isEqualToString:", iDCopy))
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

  lCopy = v28;
LABEL_33:

  return v19;
}

- (id)_hlsURLEnsuringDsidQueryParamIsPresentFromURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
LABEL_15:
    ams_DSID = VUIDefaultLogObject();
    if (os_log_type_enabled(ams_DSID, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1E323F000, ams_DSID, OS_LOG_TYPE_DEFAULT, "dsid query param is present in HLS URL: %@", &v16, 0xCu);
    }

    goto LABEL_17;
  }

  pathExtension = [lCopy pathExtension];
  if (([pathExtension isEqualToString:@"m3u8"] & 1) == 0)
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

  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  if (!ams_DSID)
  {
LABEL_17:
    v11 = v4;
    goto LABEL_18;
  }

  stringValue = [ams_DSID stringValue];
  v11 = v4;
  if ([stringValue length])
  {
    v12 = [v4 vui_URLByAddingQueryParamWithName:@"dsid" value:stringValue];
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

- (id)_playlistForSidebandLibraryAdamIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = dsCopy;
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

- (id)_mediaItemForSidebandLibraryAdamID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(VUIStoreAuxMediaItem *)dCopy length])
  {
    v4 = +[VUIDownloadManager sharedInstance];
    v5 = [v4 existingDownloadForAdamID:dCopy];

    if (v5)
    {
      mediaItem = [v5 mediaItem];
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = mediaItem;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "Using existing media item being downloaded: %@", &v13, 0xCu);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(VUIStoreAuxMediaItem *)mediaItem resetReportingEventCollection];
      }
    }

    else
    {
      v8 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v8 sidebandMediaLibrary];
      v10 = [sidebandMediaLibrary videoForAdamID:dCopy useMainThreadContext:1];

      if (v10)
      {
        mediaItem = [[VUIStoreAuxMediaItem alloc] initWithVideoManagedObject:v10 isForStartingDownload:0];
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
          v14 = dCopy;
          _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "Unable to find video managed object for adam ID %@", &v13, 0xCu);
        }

        mediaItem = 0;
      }
    }
  }

  else
  {
    mediaItem = 0;
  }

  return mediaItem;
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context mpMediaItems:(id)items
{
  itemsCopy = items;
  v7 = [(VUIMediaInfo *)self initWithPlaybackContext:context videosPlayables:0 imageProxies:0 storeDictionary:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(VUIMediaInfo *)v7 _playlistFromMPMediaItems:itemsCopy playbackContext:context];
    if (v9)
    {
      [(VUIMediaInfo *)v8 setTvpPlaylist:v9];
      date = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:date openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
    }
  }

  return v8;
}

- (id)_playlistFromMPMediaItems:(id)items playbackContext:(unint64_t)context
{
  v21 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = itemsCopy;
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

          v13 = [(VUIMediaInfo *)self _storeMediaItemFromMPMediaItem:*(*(&v16 + 1) + 8 * i) playbackContext:context, v16];
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

- (id)_storeMediaItemFromMPMediaItem:(id)item playbackContext:(unint64_t)context
{
  v51 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = [itemCopy valueForProperty:*MEMORY[0x1E696FB60]];
  v8 = [itemCopy valueForProperty:*MEMORY[0x1E696FB70]];
  if (!v7 || ![v7 longLongValue] || !objc_msgSend(v8, "length"))
  {
    if ([itemCopy vui_isHomeSharingMediaItem])
    {
      v15 = VUIHomeSharingMediaItem_iOS;
    }

    else
    {
      v15 = VUILibraryMediaItem_iOS;
    }

    mediaItem = [[v15 alloc] initWithMPMediaItem:itemCopy];
    if (!mediaItem)
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
  stringValue = [v7 stringValue];
  v12 = [v10 existingDownloadForAdamID:stringValue];

  if (v12)
  {
    mediaItem = [v12 mediaItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIStoreMediaItem_iOS *)mediaItem resetReportingEventCollection];
    }

    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = mediaItem;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Using existing media item being downloaded: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v16 sidebandMediaLibrary];
    stringValue2 = [v7 stringValue];
    v14 = [sidebandMediaLibrary videoForAdamID:stringValue2 useMainThreadContext:1];

    if (v14 && [v14 downloadState]== 2)
    {
      v19 = VUIDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v14;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Item is downloaded.  Using videoManagedObject when creating media item: %@", buf, 0xCu);
      }

      mediaItem = [[VUIStoreMediaItem_iOS alloc] initWithMPMediaItem:itemCopy videoManagedObject:v14 isForStartingDownload:0];
    }

    else
    {
      mediaItem = 0;
    }
  }

  if (!mediaItem)
  {
    mediaItem = [[VUIStoreMediaItem_iOS alloc] initWithMPMediaItem:itemCopy videoManagedObject:0 isForStartingDownload:0];
  }

  [(VUIStoreMediaItem_iOS *)mediaItem setPlaybackContext:context];
  v20 = [(VUIStoreMediaItem_iOS *)mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v21 = +[VUIMetricsController sharedInstance];
  v22 = [v21 iTunesLibraryPlaybackMediaMetricsForAdamID:v7 mediaType:v20];

  [(VUIStoreMediaItem_iOS *)mediaItem setMediaItemMetadata:v22 forProperty:*MEMORY[0x1E69D5C70]];
  v23 = +[VUIMetricsController sharedInstance];
  iTunesVPAF = [v23 iTunesVPAF];
  [(VUIStoreMediaItem_iOS *)mediaItem setMediaItemMetadata:iTunesVPAF forProperty:*MEMORY[0x1E69D5DE0]];

  if (mediaItem)
  {
LABEL_25:
    v47 = v7;
    v48 = v8;
    v25 = [itemCopy valueForProperty:*MEMORY[0x1E696FB88]];
    v26 = [itemCopy valueForProperty:*MEMORY[0x1E696F980]];
    v27 = [itemCopy valueForProperty:*MEMORY[0x1E696FB90]];
    unsignedIntegerValue = [v27 unsignedIntegerValue];

    v29 = [(VUIMediaInfo *)self _videoResolutionFromMPVideoQuality:unsignedIntegerValue];
    v30 = [itemCopy valueForProperty:*MEMORY[0x1E696F960]];
    unsignedIntegerValue2 = [v30 unsignedIntegerValue];

    v32 = [(VUIMediaInfo *)self _videoDynamimcRangeFromMPColorCapability:unsignedIntegerValue2];
    v33 = [itemCopy valueForProperty:*MEMORY[0x1E696F948]];
    v34 = [v33 unsignedIntegerValue] == 1;

    [(VUIStoreMediaItem_iOS *)mediaItem setMediaItemMetadata:v25 forProperty:*MEMORY[0x1E69D5DC0]];
    [(VUIStoreMediaItem_iOS *)mediaItem setMediaItemMetadata:v26 forProperty:*MEMORY[0x1E69D5C58]];
    selfCopy = self;
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
    [(VUIStoreMediaItem_iOS *)mediaItem setMediaItemMetadata:v36 forProperty:*MEMORY[0x1E69D5DF0]];

    v37 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
    [(VUIStoreMediaItem_iOS *)mediaItem setMediaItemMetadata:v37 forProperty:*MEMORY[0x1E69D5DE8]];

    v38 = [MEMORY[0x1E696AD98] numberWithBool:v34];
    [(VUIStoreMediaItem_iOS *)mediaItem setMediaItemMetadata:v38 forProperty:*MEMORY[0x1E69D5C10]];

    if ([(VUIStoreMediaItem_iOS *)mediaItem isMemberOfClass:objc_opt_class()])
    {
      v39 = objc_opt_class();
      mediaItemURL = [(VUIStoreMediaItem_iOS *)mediaItem mediaItemURL];
      v41 = [(VUIStoreMediaItem_iOS *)mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
      v42 = [(VUIStoreMediaItem_iOS *)mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
      v43 = [v39 _playbackOverridesForURL:mediaItemURL adamID:v41 canonicalID:v42];

      if (v43)
      {
        v44 = VUIDefaultLogObject();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          mediaItemURL2 = [(VUIStoreMediaItem_iOS *)mediaItem mediaItemURL];
          *buf = 138412290;
          v50 = mediaItemURL2;
          _os_log_impl(&dword_1E323F000, v44, OS_LOG_TYPE_DEFAULT, "Overriding store media item with URL %@", buf, 0xCu);
        }

        [(VUIMediaInfo *)selfCopy _populateMediaItem:mediaItem withMetadataOverrides:v43];
      }
    }

    v7 = v47;
    v8 = v48;
  }

LABEL_32:

  return mediaItem;
}

- (int64_t)_videoResolutionFromMPVideoQuality:(int64_t)quality
{
  if ((quality - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1E42974C0[quality - 1];
  }
}

- (int64_t)_videoDynamimcRangeFromMPColorCapability:(int64_t)capability
{
  v3 = 1;
  if (capability == 1)
  {
    v3 = 2;
  }

  if (capability == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (VUIMediaInfo)initWithPlaybackContext:(unint64_t)context vuiMediaItems:(id)items
{
  itemsCopy = items;
  v7 = [(VUIMediaInfo *)self initWithPlaybackContext:context videosPlayables:0 imageProxies:0 storeDictionary:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(VUIMediaInfo *)v7 _playlistForVUIMediaItems:itemsCopy playbackContext:context];
    if (v9)
    {
      [(VUIMediaInfo *)v8 setTvpPlaylist:v9];
      date = [MEMORY[0x1E695DF00] date];
      [(VUIMediaInfo *)v8 setUserPlaybackInitiationDate:date openURLCompletionDate:0];

      [(VUIMediaInfo *)v8 _updatePlaybackStartReason];
    }
  }

  return v8;
}

- (id)_playlistForVUIMediaItems:(id)items playbackContext:(unint64_t)context
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    contextCopy = context;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        mediaPlayerMediaItem = [v13 mediaPlayerMediaItem];
        if (mediaPlayerMediaItem)
        {
          v15 = [(VUIMediaInfo *)self _storeMediaItemFromMPMediaItem:mediaPlayerMediaItem playbackContext:context];
          if (v15)
          {
            [v7 addObject:v15];
          }
        }

        else
        {
          storeID = [v13 storeID];
          v15 = storeID;
          if (storeID && [storeID longLongValue])
          {
            v17 = v8;
            v18 = v7;
            stringValue = [v15 stringValue];
            selfCopy = self;
            v21 = [(VUIMediaInfo *)self _mediaItemForSidebandLibraryAdamID:stringValue];
            if (v21)
            {
              [v18 addObject:v21];
            }

            v7 = v18;
            v8 = v17;
            context = contextCopy;
            self = selfCopy;
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