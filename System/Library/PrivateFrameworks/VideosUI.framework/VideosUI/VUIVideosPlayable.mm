@interface VUIVideosPlayable
+ (BOOL)isMediaCharacteristicAnAudioVariantID:(id)d;
+ (id)_sharedPlayableAllowList;
+ (id)knownAudioVariantIDs;
+ (id)videosPlayableFromSerializedData:(id)data;
+ (id)videosPlayableFromSerializedSharedData:(id)data;
+ (id)videosPlayablesFromDictionaries:(id)dictionaries andMetadataDictionary:(id)dictionary;
- (BOOL)containsEligiblePlaybackMode;
- (BOOL)isAmbientVideo;
- (BOOL)isMediaCharacteristicAnAudioVariantID:(id)d;
- (BOOL)isMovie;
- (BOOL)isiTunesPurchaseOrRental;
- (NSArray)knownAudioVariantIDs;
- (NSArray)startTimeInfos;
- (NSDate)mainContentRelativeResumeTimeTimestamp;
- (NSDate)resumeTimeTimestamp;
- (NSNumber)autoExitOnBroadcastEndInSeconds;
- (NSNumber)rentalID;
- (NSString)rtcServiceIdentifier;
- (NSString)sharedWatchId;
- (NSURL)artworkURL;
- (NSURL)playbackURL;
- (VUIExtrasInfo)extrasInfo;
- (VUIRouterDataSource)upsellRouterDataSource;
- (VUIVideosPlayable)initWithDictionary:(id)dictionary andMetadataDictionary:(id)metadataDictionary;
- (id)_allPlaybackModes;
- (id)serializedData;
- (id)serializedSharedData;
- (unint64_t)playableType;
- (unint64_t)sourceRef;
- (void)setHlsURL:(id)l;
- (void)setVpafMetrics:(id)metrics;
@end

@implementation VUIVideosPlayable

+ (id)videosPlayablesFromDictionaries:(id)dictionaries andMetadataDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [dictionariesCopy count])
  {
    v7 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = dictionariesCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [VUIVideosPlayable alloc];
          v15 = [(VUIVideosPlayable *)v14 initWithDictionary:v13 andMetadataDictionary:dictionaryCopy, v18];
          [v7 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = [v7 copy];

  return v16;
}

- (VUIVideosPlayable)initWithDictionary:(id)dictionary andMetadataDictionary:(id)metadataDictionary
{
  dictionaryCopy = dictionary;
  metadataDictionaryCopy = metadataDictionary;
  v13.receiver = self;
  v13.super_class = VUIVideosPlayable;
  v9 = [(VUIVideosPlayable *)&v13 init];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v9->_videosPlayableDict, dictionary);
      if (metadataDictionaryCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[VUIContentMetadata alloc] initWithDictionary:metadataDictionaryCopy];
          metadata = v9->_metadata;
          v9->_metadata = v10;
        }
      }
    }
  }

  return v9;
}

+ (id)_sharedPlayableAllowList
{
  if (_sharedPlayableAllowList_onceToken != -1)
  {
    +[VUIVideosPlayable _sharedPlayableAllowList];
  }

  v3 = _sharedPlayableAllowList_allowList;

  return v3;
}

void __45__VUIVideosPlayable__sharedPlayableAllowList__block_invoke()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v2[0] = @"hlsUrl";
  v2[1] = @"useSharedPlayableForCowatching";
  v2[2] = @"mediaType";
  v2[3] = @"fpsKeyServerUrl";
  v2[4] = @"fpsCertificateUrl";
  v2[5] = @"fpsKeyServerQueryParameters";
  v2[6] = @"disableScrubbing";
  v2[7] = @"vpafMetrics";
  v2[8] = @"playbackModes";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:9];
  v1 = _sharedPlayableAllowList_allowList;
  _sharedPlayableAllowList_allowList = v0;
}

- (id)serializedData
{
  v13[2] = *MEMORY[0x1E69E9840];
  backingDictionary = [(VUIContentMetadata *)self->_metadata backingDictionary];
  v4 = backingDictionary;
  if (backingDictionary)
  {
    dictionary = backingDictionary;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v6 = dictionary;

  videosPlayableDict = self->_videosPlayableDict;
  v12[0] = @"videosPlayable";
  v12[1] = @"contentMetadata";
  v13[0] = videosPlayableDict;
  v13[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11 = 0;
  v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:0 error:&v11];

  return v9;
}

- (id)serializedSharedData
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  _sharedPlayableAllowList = [objc_opt_class() _sharedPlayableAllowList];
  v5 = [_sharedPlayableAllowList countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(_sharedPlayableAllowList);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_videosPlayableDict objectForKeyedSubscript:v9];
        [dictionary vui_setObjectIfNotNil:v10 forKey:v9];
      }

      v6 = [_sharedPlayableAllowList countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  backingDictionary = [(VUIContentMetadata *)self->_metadata backingDictionary];
  v12 = backingDictionary;
  if (backingDictionary)
  {
    dictionary2 = backingDictionary;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  }

  v14 = dictionary2;

  v23[0] = @"videosPlayable";
  v23[1] = @"contentMetadata";
  v24[0] = dictionary;
  v24[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v18 = 0;
  v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v15 options:0 error:&v18];

  return v16;
}

+ (id)videosPlayableFromSerializedData:(id)data
{
  v8 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:&v8];
  v4 = [v3 vui_dictionaryForKey:@"videosPlayable"];
  v5 = [v3 vui_dictionaryForKey:@"contentMetadata"];
  v6 = [[VUIVideosPlayable alloc] initWithDictionary:v4 andMetadataDictionary:v5];

  return v6;
}

+ (id)videosPlayableFromSerializedSharedData:(id)data
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:&v25];
  v5 = v25;
  v6 = [v4 vui_dictionaryForKey:@"videosPlayable"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _sharedPlayableAllowList = [self _sharedPlayableAllowList];
  v9 = [_sharedPlayableAllowList countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(_sharedPlayableAllowList);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:v13];
        [dictionary vui_setObjectIfNotNil:v14 forKey:v13];
      }

      v10 = [_sharedPlayableAllowList countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = [v4 vui_dictionaryForKey:@"contentMetadata"];
  v16 = v15;
  if (v15)
  {
    dictionary2 = v15;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  }

  v18 = dictionary2;

  v19 = [[VUIVideosPlayable alloc] initWithDictionary:dictionary andMetadataDictionary:v18];

  return v19;
}

- (BOOL)isMovie
{
  mediaType = [(VUIVideosPlayable *)self mediaType];
  lowercaseString = [mediaType lowercaseString];
  v4 = [lowercaseString isEqualToString:@"movie"];

  return v4;
}

- (NSURL)artworkURL
{
  metadata = [(VUIVideosPlayable *)self metadata];
  artworkURLFormat = [metadata artworkURLFormat];

  if (artworkURLFormat && [artworkURLFormat length])
  {
    metadata2 = [(VUIVideosPlayable *)self metadata];
    artworkWidth = [metadata2 artworkWidth];
    [artworkWidth doubleValue];
    v8 = v7;

    metadata3 = [(VUIVideosPlayable *)self metadata];
    artworkHeight = [metadata3 artworkHeight];
  }

  else
  {
    metadata4 = [(VUIVideosPlayable *)self metadata];
    previewFrameURLFormat = [metadata4 previewFrameURLFormat];

    metadata5 = [(VUIVideosPlayable *)self metadata];
    previewFrameWidth = [metadata5 previewFrameWidth];
    [previewFrameWidth doubleValue];
    v8 = v15;

    metadata3 = [(VUIVideosPlayable *)self metadata];
    artworkHeight = [metadata3 previewFrameHeight];
    artworkURLFormat = previewFrameURLFormat;
  }

  [artworkHeight doubleValue];
  v17 = v16;

  v18 = 0;
  if ([artworkURLFormat length] && v8 > 0.0 && v17 > 0.0)
  {
    if (v8 >= v17)
    {
      v19 = v8;
    }

    else
    {
      v19 = v17;
    }

    v20 = 400.0 / v19;
    v21 = v8 * v20;
    v22 = v17 * v20;
    v23 = MEMORY[0x1E69DF720];
    formatForOpaqueImage = [MEMORY[0x1E69DF6D0] formatForOpaqueImage];
    v18 = [v23 URLFromSource:artworkURLFormat extension:formatForOpaqueImage p3Specifier:0 cropCode:0 imageSize:0 displayScaleIsPointMultiplier:0 centerGrowth:v21 focusSizeIncrease:{v22, 0.0}];
  }

  return v18;
}

- (NSURL)playbackURL
{
  hlsURL = [(VUIVideosPlayable *)self hlsURL];
  if (!hlsURL)
  {
    hlsURL = [(NSDictionary *)self->_videosPlayableDict vui_URLForKey:@"playbackUrl"];
  }

  return hlsURL;
}

- (NSString)sharedWatchId
{
  v27 = *MEMORY[0x1E69E9840];
  sharedWatchUrl = [(VUIVideosPlayable *)self sharedWatchUrl];
  if (sharedWatchUrl)
  {
    v4 = objc_alloc(MEMORY[0x1E696AF20]);
    sharedWatchUrl2 = [(VUIVideosPlayable *)self sharedWatchUrl];
    playbackURL = [v4 initWithURL:sharedWatchUrl2 resolvingAgainstBaseURL:1];

    if (playbackURL)
    {
      queryItems = [playbackURL queryItems];
      v8 = [queryItems mutableCopy];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v12 = v10;

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v22 + 1) + 8 * i);
            name = [v18 name];
            v20 = [name isEqualToString:@"sharedWatchId"];

            if (v20)
            {
              value = [v18 value];

              goto LABEL_20;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_18;
  }

  if (![(VUIVideosPlayable *)self useSharedPlayableForCowatching])
  {
LABEL_18:
    value = 0;
    goto LABEL_21;
  }

  playbackURL = [(VUIVideosPlayable *)self playbackURL];
  value = [playbackURL absoluteString];
LABEL_20:

LABEL_21:

  return value;
}

- (void)setHlsURL:(id)l
{
  if (l)
  {
    videosPlayableDict = self->_videosPlayableDict;
    lCopy = l;
    v8 = [(NSDictionary *)videosPlayableDict mutableCopy];
    [v8 setObject:lCopy forKey:@"hlsUrl"];

    v6 = [v8 copy];
    v7 = self->_videosPlayableDict;
    self->_videosPlayableDict = v6;
  }
}

- (NSDate)mainContentRelativeResumeTimeTimestamp
{
  v2 = [(NSDictionary *)self->_videosPlayableDict vui_numberForKey:@"mainContentRelativeResumeTimeTimeStamp"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v6 = [v4 dateWithTimeIntervalSince1970:v5 / 1000.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)startTimeInfos
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  resumeTime = [(VUIVideosPlayable *)self resumeTime];
  mainContentRelativeResumeTime = [(VUIVideosPlayable *)self mainContentRelativeResumeTime];
  referenceID = [(VUIVideosPlayable *)self referenceID];
  if (resumeTime)
  {
    v7 = [VUIMediaStartTimeInfo alloc];
    resumeTimeTimestamp = [(VUIVideosPlayable *)self resumeTimeTimestamp];
    v9 = [(VUIMediaStartTimeInfo *)v7 initWithStartTime:resumeTime timestamp:resumeTimeTimestamp type:0 source:@"UTS/JS"];

    [v3 addObject:v9];
  }

  if (mainContentRelativeResumeTime)
  {
    v10 = [VUIMediaStartTimeInfo alloc];
    mainContentRelativeResumeTimeTimestamp = [(VUIVideosPlayable *)self mainContentRelativeResumeTimeTimestamp];
    v12 = [(VUIMediaStartTimeInfo *)v10 initWithStartTime:mainContentRelativeResumeTime timestamp:mainContentRelativeResumeTimeTimestamp type:1 source:@"UTS/JS"];

    [v3 addObject:v12];
  }

  if ([referenceID length])
  {
    v13 = +[VUIStreamingBookmarkCache sharedInstance];
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    [v13 resumeTimeInfoForReferenceID:referenceID outAbsoluteResumeTime:&v24 outAbsoluteTimestamp:&v23 outMainContentRelativeResumeTime:&v22 outMainContentRelativeTimestamp:&v21];
    v14 = v24;
    v15 = v23;
    v16 = v22;
    v17 = v21;

    if (v14)
    {
      v18 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:v14 timestamp:v15 type:0 source:@"VUIStreamingBookmarkCache"];
      [v3 addObject:v18];
    }

    if (v16)
    {
      v19 = [[VUIMediaStartTimeInfo alloc] initWithStartTime:v16 timestamp:v17 type:1 source:@"VUIStreamingBookmarkCache"];
      [v3 addObject:v19];
    }
  }

  return v3;
}

- (NSDate)resumeTimeTimestamp
{
  v2 = [(NSDictionary *)self->_videosPlayableDict vui_numberForKey:@"resumeTimeTimeStamp"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v6 = [v4 dateWithTimeIntervalSince1970:v5 / 1000.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)rentalID
{
  v2 = [(NSDictionary *)self->_videosPlayableDict vui_numberForKey:@"rentalId"];
  v3 = v2;
  if (v2 && [v2 isEqualToNumber:&unk_1F5E5D860])
  {

    v3 = 0;
  }

  return v3;
}

- (void)setVpafMetrics:(id)metrics
{
  if (metrics)
  {
    videosPlayableDict = self->_videosPlayableDict;
    metricsCopy = metrics;
    v8 = [(NSDictionary *)videosPlayableDict mutableCopy];
    [v8 setObject:metricsCopy forKey:@"vpafMetrics"];

    v6 = [v8 copy];
    v7 = self->_videosPlayableDict;
    self->_videosPlayableDict = v6;
  }
}

- (NSString)rtcServiceIdentifier
{
  v3 = [(NSDictionary *)self->_videosPlayableDict vui_stringForKey:@"rtcServiceIdentifier"];
  if (![v3 length])
  {
    if ([(VUIVideosPlayable *)self isiTunesPurchaseOrRental])
    {
      if ([(VUIVideosPlayable *)self isRental])
      {
        v4 = @"com.apple.videos.movies.rental.cloud";
      }

      else
      {
        mediaType = [(VUIVideosPlayable *)self mediaType];
        v8 = [mediaType isEqualToString:@"Movie"];
        v9 = VUIStoreMediaItemRTCServiceIdentifierMoviePurchase_iOS_cloud;
        if (!v8)
        {
          v9 = VUIStoreMediaItemRTCServiceIdentifierTVShowPurchase_iOS_cloud;
        }

        v4 = *v9;

        v3 = mediaType;
      }
    }

    else
    {
      mediaMetrics = [(VUIVideosPlayable *)self mediaMetrics];
      v6 = [mediaMetrics count];

      if (!v6)
      {
        goto LABEL_11;
      }

      v4 = @"com.apple.tv.external";
    }

    v3 = v4;
  }

LABEL_11:

  return v3;
}

- (id)_allPlaybackModes
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSDictionary *)self->_videosPlayableDict vui_arrayForKey:@"playbackModes"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 isEqualToString:@"Monoscopic"];
        v11 = @"Monoscopic";
        if ((v10 & 1) == 0)
        {
          v12 = [v9 isEqualToString:@"Stereoscopic"];
          v11 = @"Stereoscopic";
          if ((v12 & 1) == 0)
          {
            v13 = [v9 isEqualToString:@"Immersive"];
            v11 = @"Immersive";
            if ((v13 & 1) == 0)
            {
              v14 = [v9 isEqualToString:@"BlendedImmersive"];
              v11 = @"Blended";
              if (!v14)
              {
                continue;
              }
            }
          }
        }

        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)sourceRef
{
  v2 = [(NSDictionary *)self->_videosPlayableDict vui_stringForKey:@"sourceRef"];
  if (![v2 length])
  {
    goto LABEL_12;
  }

  if (([v2 isEqualToString:@"sharedWatchJoin"] & 1) == 0)
  {
    if ([v2 isEqualToString:@"sharedWatchJoinBinge"])
    {
      v4 = VUIDefaultLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "JS provided legacy sharedWatchJoinBinge param", v6, 2u);
      }

      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"sharedWatchPostPlayBinge"])
    {
LABEL_9:
      v3 = 2;
      goto LABEL_13;
    }

    if ([v2 isEqualToString:@"sharedWatchPostPlayNonBinge"])
    {
      v3 = 3;
      goto LABEL_13;
    }

LABEL_12:
    v3 = 0;
    goto LABEL_13;
  }

  v3 = 1;
LABEL_13:

  return v3;
}

- (unint64_t)playableType
{
  v2 = [(NSDictionary *)self->_videosPlayableDict vui_stringForKey:@"playableType"];
  if (![v2 length])
  {
    goto LABEL_8;
  }

  if (([v2 isEqualToString:@"Event"] & 1) == 0)
  {
    if ([v2 isEqualToString:@"EbsEvent"])
    {
      v3 = 2;
      goto LABEL_9;
    }

    if ([v2 isEqualToString:@"Vod"])
    {
      v3 = 3;
      goto LABEL_9;
    }

LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v3 = 1;
LABEL_9:

  return v3;
}

- (VUIExtrasInfo)extrasInfo
{
  v2 = [(NSDictionary *)self->_videosPlayableDict vui_dictionaryForKey:@"extras"];
  if ([v2 count])
  {
    v3 = [[VUIExtrasInfo alloc] initWithDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isiTunesPurchaseOrRental
{
  selfCopy = self;
  buyParams = [(VUIVideosPlayable *)self buyParams];
  rentalID = [(VUIVideosPlayable *)selfCopy rentalID];
  LOBYTE(selfCopy) = [(VUIVideosPlayable *)selfCopy isFamilySharingContent];
  LOBYTE(selfCopy) = (([buyParams length] | rentalID) != 0) | selfCopy;

  return selfCopy & 1;
}

- (NSArray)knownAudioVariantIDs
{
  v2 = objc_opt_class();

  return [v2 knownAudioVariantIDs];
}

+ (id)knownAudioVariantIDs
{
  v2 = +[VUIFeaturesConfiguration sharedInstance];
  nowPlayingConfig = [v2 nowPlayingConfig];
  mediaCharacteristicsToLocalize = [nowPlayingConfig mediaCharacteristicsToLocalize];

  return mediaCharacteristicsToLocalize;
}

- (BOOL)isMediaCharacteristicAnAudioVariantID:(id)d
{
  dCopy = d;
  v4 = [objc_opt_class() isMediaCharacteristicAnAudioVariantID:dCopy];

  return v4;
}

+ (BOOL)isMediaCharacteristicAnAudioVariantID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    knownAudioVariantIDs = [self knownAudioVariantIDs];
    v6 = [knownAudioVariantIDs containsObject:dCopy];

    if (v6)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = +[VUIFeaturesConfiguration sharedInstance];
      nowPlayingConfig = [v8 nowPlayingConfig];
      audioIDPrefixes = [nowPlayingConfig audioIDPrefixes];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v11 = audioIDPrefixes;
      v7 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v12 = *v16;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v11);
            }

            if ([dCopy hasPrefix:{*(*(&v15 + 1) + 8 * i), v15}])
            {
              LOBYTE(v7) = 1;
              goto LABEL_15;
            }
          }

          v7 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (VUIRouterDataSource)upsellRouterDataSource
{
  v2 = [(NSDictionary *)self->_videosPlayableDict vui_dictionaryForKey:@"upsellRouterDataSource"];
  v3 = [[VUIRouterDataSource alloc] initWithRouterData:v2 appContext:0];

  return v3;
}

- (BOOL)isAmbientVideo
{
  utsEntityType = [(VUIVideosPlayable *)self utsEntityType];
  v3 = [utsEntityType isEqualToString:@"AmbientVideo"];

  return v3;
}

- (BOOL)containsEligiblePlaybackMode
{
  _allPlaybackModes = [(VUIVideosPlayable *)self _allPlaybackModes];
  v3 = ([_allPlaybackModes containsObject:@"Monoscopic"] & 1) != 0 || objc_msgSend(_allPlaybackModes, "count") == 0;

  return v3;
}

- (NSNumber)autoExitOnBroadcastEndInSeconds
{
  v3 = [(NSDictionary *)self->_videosPlayableDict vui_numberForKey:@"autoExitOnBroadcastEndInSeconds"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->_videosPlayableDict vui_numberForKey:@"autoExitOnBroadcastEndInSeconds"];
  }

  else
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = +[VUIFeaturesConfiguration sharedInstance];
    livePostPlayConfig = [v6 livePostPlayConfig];
    [livePostPlayConfig dismissPlaybackDelay];
    v4 = [v5 numberWithDouble:?];
  }

  return v4;
}

@end