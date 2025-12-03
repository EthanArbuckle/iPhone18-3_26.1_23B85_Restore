@interface MWTSchemaMWTMusicMetadataReported
- (BOOL)isEqual:(id)equal;
- (MWTSchemaMWTMusicMetadataReported)initWithDictionary:(id)dictionary;
- (MWTSchemaMWTMusicMetadataReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAssetEndPoint:(BOOL)point;
- (void)setHasAssetLocation:(BOOL)location;
- (void)setHasAssetSource:(BOOL)source;
- (void)setHasCmInitialStartupItemCreationToLtluDurationInMs:(BOOL)ms;
- (void)setHasCmInitialStartupItemCreationToReadyToPlayDurationInMs:(BOOL)ms;
- (void)setHasContentConnectionTlsHandshakeDurationInMs:(BOOL)ms;
- (void)setHasContentFirstSegmentDurationInMs:(BOOL)ms;
- (void)setHasEndPointType:(BOOL)type;
- (void)setHasFormatBitDepth:(BOOL)depth;
- (void)setHasFormatBitrate:(BOOL)bitrate;
- (void)setHasFormatChannels:(BOOL)channels;
- (void)setHasFormatCodec:(BOOL)codec;
- (void)setHasFormatLayout:(BOOL)layout;
- (void)setHasFormatLayoutValue:(BOOL)value;
- (void)setHasFormatSampleRate:(BOOL)rate;
- (void)setHasFormatTier:(BOOL)tier;
- (void)setHasHasBagWaitTime:(BOOL)time;
- (void)setHasHasLeaseWaitTime:(BOOL)time;
- (void)setHasHasLookupWaitTime:(BOOL)time;
- (void)setHasHasMediaRedownloadWaitTime:(BOOL)time;
- (void)setHasHasSubscriptionAssetLoadWaitTime:(BOOL)time;
- (void)setHasHasSuzeLeaseWaitTime:(BOOL)time;
- (void)setHasIsAccountDataReady:(BOOL)ready;
- (void)setHasIsAutoPlay:(BOOL)play;
- (void)setHasIsDelegatedPlayback:(BOOL)playback;
- (void)setHasIsFirstPlayAfterAppLaunch:(BOOL)launch;
- (void)setHasIsHlsKeysReady:(BOOL)ready;
- (void)setHasIsInterruptingPlayback:(BOOL)playback;
- (void)setHasIsLeaseReady:(BOOL)ready;
- (void)setHasIsMiniSinfAvailable:(BOOL)available;
- (void)setHasIsNonDefaultUser:(BOOL)user;
- (void)setHasIsOfflineKeyReady:(BOOL)ready;
- (void)setHasIsOnlineKeyReady:(BOOL)ready;
- (void)setHasIsPrimaryUser:(BOOL)user;
- (void)setHasIsRemoteSetQueue:(BOOL)queue;
- (void)setHasIsSharePlayPlayback:(BOOL)playback;
- (void)setHasIsShuffled:(BOOL)shuffled;
- (void)setHasIsStoreBagReady:(BOOL)ready;
- (void)setHasIsSuzeLease:(BOOL)lease;
- (void)setHasMasterPlaylistRequestDurationInMs:(BOOL)ms;
- (void)setHasNetworkConnectionType:(BOOL)type;
- (void)setHasNumberOfSpeakers:(BOOL)speakers;
- (void)setHasPrefetchedMetadataSource:(BOOL)source;
- (void)setHasQueueSize:(BOOL)size;
- (void)setHasQueueType:(BOOL)type;
- (void)setHasRouteConfiguration:(BOOL)configuration;
- (void)setHasRouteType:(BOOL)type;
- (void)setHasStreamingContentType:(BOOL)type;
- (void)setHasSubPlaylistConnectionTlsHandshakeDurationInMs:(BOOL)ms;
- (void)setHasSubPlaylistRequestDurationInMs:(BOOL)ms;
- (void)setHasSubscriptionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation MWTSchemaMWTMusicMetadataReported

- (MWTSchemaMWTMusicMetadataReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v117.receiver = self;
  v117.super_class = MWTSchemaMWTMusicMetadataReported;
  v5 = [(MWTSchemaMWTMusicMetadataReported *)&v117 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"musicDomain"];
    objc_opt_class();
    v85 = v6;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setMusicDomain:](v5, "setMusicDomain:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"queueType"];
    objc_opt_class();
    v83 = v7;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setQueueType:](v5, "setQueueType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"queueSize"];
    objc_opt_class();
    v81 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setQueueSize:](v5, "setQueueSize:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isShuffled"];
    objc_opt_class();
    v116 = v9;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsShuffled:](v5, "setIsShuffled:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"prefetchedMetadataSource"];
    objc_opt_class();
    v78 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setPrefetchedMetadataSource:](v5, "setPrefetchedMetadataSource:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"assetEndPoint"];
    objc_opt_class();
    v76 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setAssetEndPoint:](v5, "setAssetEndPoint:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"streamingContentType"];
    objc_opt_class();
    v115 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setStreamingContentType:](v5, "setStreamingContentType:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"formatCodec"];
    objc_opt_class();
    v114 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatCodec:](v5, "setFormatCodec:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"formatBitrate"];
    objc_opt_class();
    v113 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatBitrate:](v5, "setFormatBitrate:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"formatBitDepth"];
    objc_opt_class();
    v112 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatBitDepth:](v5, "setFormatBitDepth:", [v15 unsignedIntValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"formatChannels"];
    objc_opt_class();
    v111 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatChannels:](v5, "setFormatChannels:", [v16 unsignedIntValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"formatLayout"];
    objc_opt_class();
    v110 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatLayout:](v5, "setFormatLayout:", [v17 intValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"formatSampleRate"];
    objc_opt_class();
    v109 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatSampleRate:](v5, "setFormatSampleRate:", [v18 unsignedIntValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"formatTier"];
    objc_opt_class();
    v108 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatTier:](v5, "setFormatTier:", [v19 intValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSpeakers"];
    objc_opt_class();
    v107 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setNumberOfSpeakers:](v5, "setNumberOfSpeakers:", [v20 unsignedIntValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"routeConfiguration"];
    objc_opt_class();
    v106 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setRouteConfiguration:](v5, "setRouteConfiguration:", [v21 intValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isAccountDataReady"];
    objc_opt_class();
    v105 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsAccountDataReady:](v5, "setIsAccountDataReady:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"isStoreBagReady"];
    objc_opt_class();
    v104 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsStoreBagReady:](v5, "setIsStoreBagReady:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isLeaseReady"];
    objc_opt_class();
    v103 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsLeaseReady:](v5, "setIsLeaseReady:", [v24 BOOLValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"isOnlineKeyReady"];
    objc_opt_class();
    v102 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsOnlineKeyReady:](v5, "setIsOnlineKeyReady:", [v25 BOOLValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isOfflineKeyReady"];
    objc_opt_class();
    v101 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsOfflineKeyReady:](v5, "setIsOfflineKeyReady:", [v26 BOOLValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"isHlsKeysReady"];
    objc_opt_class();
    v100 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsHlsKeysReady:](v5, "setIsHlsKeysReady:", [v27 BOOLValue]);
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"isInterruptingPlayback"];
    objc_opt_class();
    v99 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsInterruptingPlayback:](v5, "setIsInterruptingPlayback:", [v28 BOOLValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"isRemoteSetQueue"];
    objc_opt_class();
    v98 = v29;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsRemoteSetQueue:](v5, "setIsRemoteSetQueue:", [v29 BOOLValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"isDelegatedPlayback"];
    objc_opt_class();
    v97 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsDelegatedPlayback:](v5, "setIsDelegatedPlayback:", [v30 BOOLValue]);
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"isNonDefaultUser"];
    objc_opt_class();
    v96 = v31;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsNonDefaultUser:](v5, "setIsNonDefaultUser:", [v31 BOOLValue]);
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"isAutoPlay"];
    objc_opt_class();
    v95 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsAutoPlay:](v5, "setIsAutoPlay:", [v32 BOOLValue]);
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"isFirstPlayAfterAppLaunch"];
    objc_opt_class();
    v94 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsFirstPlayAfterAppLaunch:](v5, "setIsFirstPlayAfterAppLaunch:", [v33 BOOLValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isMiniSinfAvailable"];
    objc_opt_class();
    v93 = v34;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsMiniSinfAvailable:](v5, "setIsMiniSinfAvailable:", [v34 BOOLValue]);
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"isSharePlayPlayback"];
    objc_opt_class();
    v92 = v35;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsSharePlayPlayback:](v5, "setIsSharePlayPlayback:", [v35 BOOLValue]);
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"isSuzeLease"];
    objc_opt_class();
    v91 = v36;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsSuzeLease:](v5, "setIsSuzeLease:", [v36 BOOLValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"networkConnectionType"];
    objc_opt_class();
    v90 = v37;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setNetworkConnectionType:](v5, "setNetworkConnectionType:", [v37 intValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"wasMediaLibraryDatabaseUpgraded"];
    objc_opt_class();
    v89 = v38;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setWasMediaLibraryDatabaseUpgraded:](v5, "setWasMediaLibraryDatabaseUpgraded:", [v38 BOOLValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"isPrimaryUser"];
    objc_opt_class();
    v88 = v39;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setIsPrimaryUser:](v5, "setIsPrimaryUser:", [v39 BOOLValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"errorResolutionType"];
    objc_opt_class();
    v87 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(MWTSchemaMWTMusicMetadataReported *)v5 setErrorResolutionType:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"endPointType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setEndPointType:](v5, "setEndPointType:", [v42 intValue]);
    }

    v70 = v42;
    v43 = [dictionaryCopy objectForKeyedSubscript:@"routeType"];
    objc_opt_class();
    v86 = v43;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setRouteType:](v5, "setRouteType:", [v43 intValue]);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"formatLayoutValue"];
    objc_opt_class();
    v73 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setFormatLayoutValue:](v5, "setFormatLayoutValue:", [v44 unsignedIntValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"assetSource"];
    objc_opt_class();
    v84 = v45;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setAssetSource:](v5, "setAssetSource:", [v45 intValue]);
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"assetLocation"];
    objc_opt_class();
    v72 = v46;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setAssetLocation:](v5, "setAssetLocation:", [v46 intValue]);
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionType"];
    objc_opt_class();
    v82 = v47;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setSubscriptionType:](v5, "setSubscriptionType:", [v47 intValue]);
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"hasLookupWaitTime"];
    objc_opt_class();
    v71 = v48;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setHasLookupWaitTime:](v5, "setHasLookupWaitTime:", [v48 BOOLValue]);
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"hasBagWaitTime"];
    objc_opt_class();
    v80 = v49;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setHasBagWaitTime:](v5, "setHasBagWaitTime:", [v49 BOOLValue]);
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"hasLeaseWaitTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setHasLeaseWaitTime:](v5, "setHasLeaseWaitTime:", [v50 BOOLValue]);
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"hasSuzeLeaseWaitTime"];
    objc_opt_class();
    v79 = v51;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setHasSuzeLeaseWaitTime:](v5, "setHasSuzeLeaseWaitTime:", [v51 BOOLValue]);
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"hasSubscriptionAssetLoadWaitTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setHasSubscriptionAssetLoadWaitTime:](v5, "setHasSubscriptionAssetLoadWaitTime:", [v52 BOOLValue]);
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"hasMediaRedownloadWaitTime"];
    objc_opt_class();
    v77 = v53;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setHasMediaRedownloadWaitTime:](v5, "setHasMediaRedownloadWaitTime:", [v53 BOOLValue]);
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"cmInitialStartupItemCreationToReadyToPlayDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setCmInitialStartupItemCreationToReadyToPlayDurationInMs:](v5, "setCmInitialStartupItemCreationToReadyToPlayDurationInMs:", [v54 unsignedIntValue]);
    }

    v55 = [dictionaryCopy objectForKeyedSubscript:@"cmInitialStartupItemCreationToLtluDurationInMs"];
    objc_opt_class();
    v75 = v55;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setCmInitialStartupItemCreationToLtluDurationInMs:](v5, "setCmInitialStartupItemCreationToLtluDurationInMs:", [v55 unsignedIntValue]);
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"masterPlaylistConnectionTlsHandshakeDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setMasterPlaylistConnectionTlsHandshakeDurationInMs:](v5, "setMasterPlaylistConnectionTlsHandshakeDurationInMs:", [v56 unsignedIntValue]);
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"masterPlaylistRequestDurationInMs"];
    objc_opt_class();
    v74 = v57;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setMasterPlaylistRequestDurationInMs:](v5, "setMasterPlaylistRequestDurationInMs:", [v57 unsignedIntValue]);
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"subPlaylistConnectionTlsHandshakeDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setSubPlaylistConnectionTlsHandshakeDurationInMs:](v5, "setSubPlaylistConnectionTlsHandshakeDurationInMs:", [v58 unsignedIntValue]);
    }

    v69 = v52;
    v59 = [dictionaryCopy objectForKeyedSubscript:@"subPlaylistRequestDurationInMs"];
    objc_opt_class();
    v60 = v54;
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setSubPlaylistRequestDurationInMs:](v5, "setSubPlaylistRequestDurationInMs:", [v59 unsignedIntValue]);
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"contentConnectionTlsHandshakeDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setContentConnectionTlsHandshakeDurationInMs:](v5, "setContentConnectionTlsHandshakeDurationInMs:", [v61 unsignedIntValue]);
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"contentFirstSegmentDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MWTSchemaMWTMusicMetadataReported setContentFirstSegmentDurationInMs:](v5, "setContentFirstSegmentDurationInMs:", [v62 unsignedIntValue]);
    }

    v63 = [dictionaryCopy objectForKeyedSubscript:@"audioQueueType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = v50;
      v64 = v61;
      v65 = [v63 copy];
      [(MWTSchemaMWTMusicMetadataReported *)v5 setAudioQueueType:v65];

      v61 = v64;
      v50 = v68;
    }

    v66 = v5;
  }

  return v5;
}

- (MWTSchemaMWTMusicMetadataReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MWTSchemaMWTMusicMetadataReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MWTSchemaMWTMusicMetadataReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  if ((*&self->_has & 0x20) != 0)
  {
    v5 = [(MWTSchemaMWTMusicMetadataReported *)self assetEndPoint]- 1;
    if (v5 > 4)
    {
      v6 = @"MWTASSETENDPOINT_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DA708[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"assetEndPoint"];
  }

  v7 = *(&self->_has + 2);
  if ((v7 & 0x40) != 0)
  {
    assetLocation = [(MWTSchemaMWTMusicMetadataReported *)self assetLocation];
    v9 = @"MWTASSETLOCATION_UNKNOWN";
    if (assetLocation == 1)
    {
      v9 = @"MWTASSETLOCATION_LOCAL_FILE";
    }

    if (assetLocation == 2)
    {
      v10 = @"MWTASSETLOCATION_CDN";
    }

    else
    {
      v10 = v9;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"assetLocation"];
    v7 = *(&self->_has + 2);
  }

  if ((v7 & 0x20) != 0)
  {
    v11 = [(MWTSchemaMWTMusicMetadataReported *)self assetSource]- 1;
    if (v11 > 5)
    {
      v12 = @"MWTASSETSOURCE_UNKNOWN";
    }

    else
    {
      v12 = off_1E78DA730[v11];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"assetSource"];
  }

  if (self->_audioQueueType)
  {
    audioQueueType = [(MWTSchemaMWTMusicMetadataReported *)self audioQueueType];
    v14 = [audioQueueType copy];
    [dictionary setObject:v14 forKeyedSubscript:@"audioQueueType"];
  }

  v15 = *(&self->_has + 2);
  if ((v15 & 0x80000000) == 0)
  {
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported cmInitialStartupItemCreationToLtluDurationInMs](self, "cmInitialStartupItemCreationToLtluDurationInMs")}];
  [dictionary setObject:v22 forKeyedSubscript:@"cmInitialStartupItemCreationToLtluDurationInMs"];

  if ((*(&self->_has + 2) & 0x4000) != 0)
  {
LABEL_22:
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported cmInitialStartupItemCreationToReadyToPlayDurationInMs](self, "cmInitialStartupItemCreationToReadyToPlayDurationInMs")}];
    [dictionary setObject:v16 forKeyedSubscript:@"cmInitialStartupItemCreationToReadyToPlayDurationInMs"];
  }

LABEL_23:
  v17 = *(&self->_has + 6);
  if ((v17 & 0x10) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported contentConnectionTlsHandshakeDurationInMs](self, "contentConnectionTlsHandshakeDurationInMs")}];
    [dictionary setObject:v18 forKeyedSubscript:@"contentConnectionTlsHandshakeDurationInMs"];

    v17 = *(&self->_has + 6);
  }

  if ((v17 & 0x20) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported contentFirstSegmentDurationInMs](self, "contentFirstSegmentDurationInMs")}];
    [dictionary setObject:v19 forKeyedSubscript:@"contentFirstSegmentDurationInMs"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v20 = [(MWTSchemaMWTMusicMetadataReported *)self endPointType]- 1;
    if (v20 > 2)
    {
      v21 = @"MWTENDPOINTTYPE_UNKNOWN";
    }

    else
    {
      v21 = off_1E78DA760[v20];
    }

    [dictionary setObject:v21 forKeyedSubscript:@"endPointType"];
  }

  if (self->_errorResolutionType)
  {
    errorResolutionType = [(MWTSchemaMWTMusicMetadataReported *)self errorResolutionType];
    v24 = [errorResolutionType copy];
    [dictionary setObject:v24 forKeyedSubscript:@"errorResolutionType"];
  }

  v25 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported formatBitDepth](self, "formatBitDepth")}];
    [dictionary setObject:v26 forKeyedSubscript:@"formatBitDepth"];

    v25 = *p_has;
    if ((*p_has & 0x100) == 0)
    {
LABEL_38:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_44;
    }
  }

  else if ((v25 & 0x100) == 0)
  {
    goto LABEL_38;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported formatBitrate](self, "formatBitrate")}];
  [dictionary setObject:v27 forKeyedSubscript:@"formatBitrate"];

  v25 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_39:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_45;
  }

LABEL_44:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported formatChannels](self, "formatChannels")}];
  [dictionary setObject:v28 forKeyedSubscript:@"formatChannels"];

  v25 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_40:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

LABEL_45:
  v29 = [(MWTSchemaMWTMusicMetadataReported *)self formatCodec]- 1;
  if (v29 > 0x27)
  {
    v30 = @"MWTFORMATCODEC_UNKNOWN";
  }

  else
  {
    v30 = off_1E78DA778[v29];
  }

  [dictionary setObject:v30 forKeyedSubscript:@"formatCodec"];
  if ((*p_has & 0x800) != 0)
  {
LABEL_49:
    v31 = [(MWTSchemaMWTMusicMetadataReported *)self formatLayout]- 1;
    if (v31 > 0xAD)
    {
      v32 = @"MWTFORMATLAYOUT_UNKNOWN";
    }

    else
    {
      v32 = off_1E78DA8B8[v31];
    }

    [dictionary setObject:v32 forKeyedSubscript:@"formatLayout"];
  }

LABEL_53:
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported formatLayoutValue](self, "formatLayoutValue")}];
    [dictionary setObject:v33 forKeyedSubscript:@"formatLayoutValue"];
  }

  v34 = *p_has;
  if ((*p_has & 0x1000) != 0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported formatSampleRate](self, "formatSampleRate")}];
    [dictionary setObject:v35 forKeyedSubscript:@"formatSampleRate"];

    v34 = *p_has;
  }

  if ((v34 & 0x2000) != 0)
  {
    v36 = [(MWTSchemaMWTMusicMetadataReported *)self formatTier]- 1;
    if (v36 > 4)
    {
      v37 = @"MWTFORMATTIER_UNKNOWN";
    }

    else
    {
      v37 = off_1E78DAE28[v36];
    }

    [dictionary setObject:v37 forKeyedSubscript:@"formatTier"];
  }

  v38 = *(&self->_has + 2);
  if ((v38 & 0x200) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported hasBagWaitTime](self, "hasBagWaitTime")}];
    [dictionary setObject:v49 forKeyedSubscript:@"hasBagWaitTime"];

    v38 = *(&self->_has + 2);
    if ((v38 & 0x400) == 0)
    {
LABEL_64:
      if ((v38 & 0x100) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_103;
    }
  }

  else if ((*(&self->_has + 2) & 0x400) == 0)
  {
    goto LABEL_64;
  }

  v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported hasLeaseWaitTime](self, "hasLeaseWaitTime")}];
  [dictionary setObject:v50 forKeyedSubscript:@"hasLeaseWaitTime"];

  v38 = *(&self->_has + 2);
  if ((v38 & 0x100) == 0)
  {
LABEL_65:
    if ((v38 & 0x2000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_104;
  }

LABEL_103:
  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported hasLookupWaitTime](self, "hasLookupWaitTime")}];
  [dictionary setObject:v51 forKeyedSubscript:@"hasLookupWaitTime"];

  v38 = *(&self->_has + 2);
  if ((v38 & 0x2000) == 0)
  {
LABEL_66:
    if ((v38 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_105;
  }

LABEL_104:
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported hasMediaRedownloadWaitTime](self, "hasMediaRedownloadWaitTime")}];
  [dictionary setObject:v52 forKeyedSubscript:@"hasMediaRedownloadWaitTime"];

  v38 = *(&self->_has + 2);
  if ((v38 & 0x1000) == 0)
  {
LABEL_67:
    if ((v38 & 0x800) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_105:
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported hasSubscriptionAssetLoadWaitTime](self, "hasSubscriptionAssetLoadWaitTime")}];
  [dictionary setObject:v53 forKeyedSubscript:@"hasSubscriptionAssetLoadWaitTime"];

  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_68:
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported hasSuzeLeaseWaitTime](self, "hasSuzeLeaseWaitTime")}];
    [dictionary setObject:v39 forKeyedSubscript:@"hasSuzeLeaseWaitTime"];
  }

LABEL_69:
  v40 = *p_has;
  if ((*p_has & 0x10000) != 0)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isAccountDataReady](self, "isAccountDataReady")}];
    [dictionary setObject:v54 forKeyedSubscript:@"isAccountDataReady"];

    v40 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_71:
      if ((v40 & 0x1000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_109;
    }
  }

  else if ((v40 & 0x4000000) == 0)
  {
    goto LABEL_71;
  }

  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isAutoPlay](self, "isAutoPlay")}];
  [dictionary setObject:v55 forKeyedSubscript:@"isAutoPlay"];

  v40 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_72:
    if ((v40 & 0x8000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_110;
  }

LABEL_109:
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isDelegatedPlayback](self, "isDelegatedPlayback")}];
  [dictionary setObject:v56 forKeyedSubscript:@"isDelegatedPlayback"];

  v40 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_73:
    if ((v40 & 0x200000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_111;
  }

LABEL_110:
  v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isFirstPlayAfterAppLaunch](self, "isFirstPlayAfterAppLaunch")}];
  [dictionary setObject:v57 forKeyedSubscript:@"isFirstPlayAfterAppLaunch"];

  v40 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_74:
    if ((v40 & 0x400000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_112;
  }

LABEL_111:
  v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isHlsKeysReady](self, "isHlsKeysReady")}];
  [dictionary setObject:v58 forKeyedSubscript:@"isHlsKeysReady"];

  v40 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_75:
    if ((v40 & 0x40000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_113;
  }

LABEL_112:
  v59 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isInterruptingPlayback](self, "isInterruptingPlayback")}];
  [dictionary setObject:v59 forKeyedSubscript:@"isInterruptingPlayback"];

  v40 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_76:
    if ((v40 & 0x10000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_114;
  }

LABEL_113:
  v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isLeaseReady](self, "isLeaseReady")}];
  [dictionary setObject:v60 forKeyedSubscript:@"isLeaseReady"];

  v40 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_77:
    if ((v40 & 0x2000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_115;
  }

LABEL_114:
  v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isMiniSinfAvailable](self, "isMiniSinfAvailable")}];
  [dictionary setObject:v61 forKeyedSubscript:@"isMiniSinfAvailable"];

  v40 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_78:
    if ((v40 & 0x100000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_116;
  }

LABEL_115:
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isNonDefaultUser](self, "isNonDefaultUser")}];
  [dictionary setObject:v62 forKeyedSubscript:@"isNonDefaultUser"];

  v40 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_79:
    if ((v40 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_116:
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isOfflineKeyReady](self, "isOfflineKeyReady")}];
  [dictionary setObject:v63 forKeyedSubscript:@"isOfflineKeyReady"];

  if ((*p_has & 0x80000) != 0)
  {
LABEL_80:
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isOnlineKeyReady](self, "isOnlineKeyReady")}];
    [dictionary setObject:v41 forKeyedSubscript:@"isOnlineKeyReady"];
  }

LABEL_81:
  if ((*(&self->_has + 2) & 2) != 0)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isPrimaryUser](self, "isPrimaryUser")}];
    [dictionary setObject:v42 forKeyedSubscript:@"isPrimaryUser"];
  }

  v43 = *p_has;
  if ((*p_has & 0x800000) != 0)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isRemoteSetQueue](self, "isRemoteSetQueue")}];
    [dictionary setObject:v64 forKeyedSubscript:@"isRemoteSetQueue"];

    v43 = *p_has;
    if ((*p_has & 0x20000000) == 0)
    {
LABEL_85:
      if ((v43 & 8) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_120;
    }
  }

  else if ((v43 & 0x20000000) == 0)
  {
    goto LABEL_85;
  }

  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isSharePlayPlayback](self, "isSharePlayPlayback")}];
  [dictionary setObject:v65 forKeyedSubscript:@"isSharePlayPlayback"];

  v43 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_86:
    if ((v43 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_121;
  }

LABEL_120:
  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isShuffled](self, "isShuffled")}];
  [dictionary setObject:v66 forKeyedSubscript:@"isShuffled"];

  v43 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_87:
    if ((v43 & 0x40000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_121:
  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isStoreBagReady](self, "isStoreBagReady")}];
  [dictionary setObject:v67 forKeyedSubscript:@"isStoreBagReady"];

  if ((*p_has & 0x40000000) != 0)
  {
LABEL_88:
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported isSuzeLease](self, "isSuzeLease")}];
    [dictionary setObject:v44 forKeyedSubscript:@"isSuzeLease"];
  }

LABEL_89:
  v45 = *(&self->_has + 6);
  if (v45)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported masterPlaylistConnectionTlsHandshakeDurationInMs](self, "masterPlaylistConnectionTlsHandshakeDurationInMs")}];
    [dictionary setObject:v46 forKeyedSubscript:@"masterPlaylistConnectionTlsHandshakeDurationInMs"];

    v45 = *(&self->_has + 6);
  }

  if ((v45 & 2) != 0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported masterPlaylistRequestDurationInMs](self, "masterPlaylistRequestDurationInMs")}];
    [dictionary setObject:v47 forKeyedSubscript:@"masterPlaylistRequestDurationInMs"];
  }

  v48 = *p_has;
  if (*p_has)
  {
    v68 = [(MWTSchemaMWTMusicMetadataReported *)self musicDomain]- 1;
    if (v68 > 3)
    {
      v69 = @"MWTMUSICDOMAIN_UNKNOWN";
    }

    else
    {
      v69 = off_1E78DAE50[v68];
    }

    [dictionary setObject:v69 forKeyedSubscript:@"musicDomain"];
    v48 = *p_has;
    if ((*p_has & 0x80000000) == 0)
    {
LABEL_95:
      if ((v48 & 0x4000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_131;
    }
  }

  else if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

  v70 = [(MWTSchemaMWTMusicMetadataReported *)self networkConnectionType]- 1;
  if (v70 > 0xD)
  {
    v71 = @"MWTNETWORKCONNECTIONTYPE_UNKNOWN";
  }

  else
  {
    v71 = off_1E78DAE70[v70];
  }

  [dictionary setObject:v71 forKeyedSubscript:@"networkConnectionType"];
  v48 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_96:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_132;
  }

LABEL_131:
  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported numberOfSpeakers](self, "numberOfSpeakers")}];
  [dictionary setObject:v72 forKeyedSubscript:@"numberOfSpeakers"];

  v48 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_97:
    if ((v48 & 4) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_136;
  }

LABEL_132:
  v73 = [(MWTSchemaMWTMusicMetadataReported *)self prefetchedMetadataSource]- 1;
  if (v73 > 3)
  {
    v74 = @"MWTPREFETCHEDMETADATASOURCE_UNKNOWN";
  }

  else
  {
    v74 = off_1E78DAEE0[v73];
  }

  [dictionary setObject:v74 forKeyedSubscript:@"prefetchedMetadataSource"];
  v48 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_98:
    if ((v48 & 2) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_137;
  }

LABEL_136:
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported queueSize](self, "queueSize")}];
  [dictionary setObject:v75 forKeyedSubscript:@"queueSize"];

  v48 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_99:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_141;
  }

LABEL_137:
  v76 = [(MWTSchemaMWTMusicMetadataReported *)self queueType]- 1;
  if (v76 > 6)
  {
    v77 = @"MWTQUEUETYPE_UNKNOWN";
  }

  else
  {
    v77 = off_1E78DAF00[v76];
  }

  [dictionary setObject:v77 forKeyedSubscript:@"queueType"];
  if ((*p_has & 0x8000) != 0)
  {
LABEL_141:
    v78 = [(MWTSchemaMWTMusicMetadataReported *)self routeConfiguration]- 1;
    if (v78 > 5)
    {
      v79 = @"MWTROUTECONFIGURATION_UNKNOWN";
    }

    else
    {
      v79 = off_1E78DAF38[v78];
    }

    [dictionary setObject:v79 forKeyedSubscript:@"routeConfiguration"];
  }

LABEL_145:
  if ((*(&self->_has + 2) & 8) != 0)
  {
    v80 = [(MWTSchemaMWTMusicMetadataReported *)self routeType]- 1;
    if (v80 > 8)
    {
      v81 = @"MWTAUDIOROUTETYPE_UNKNOWN";
    }

    else
    {
      v81 = off_1E78DAF68[v80];
    }

    [dictionary setObject:v81 forKeyedSubscript:@"routeType"];
  }

  if ((*p_has & 0x40) != 0)
  {
    v82 = [(MWTSchemaMWTMusicMetadataReported *)self streamingContentType]- 1;
    if (v82 > 3)
    {
      v83 = @"MWTSTREAMINGCONTENTTYPE_UNKNOWN";
    }

    else
    {
      v83 = off_1E78DAFB0[v82];
    }

    [dictionary setObject:v83 forKeyedSubscript:@"streamingContentType"];
  }

  v84 = *(&self->_has + 6);
  if ((v84 & 4) != 0)
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported subPlaylistConnectionTlsHandshakeDurationInMs](self, "subPlaylistConnectionTlsHandshakeDurationInMs")}];
    [dictionary setObject:v85 forKeyedSubscript:@"subPlaylistConnectionTlsHandshakeDurationInMs"];

    v84 = *(&self->_has + 6);
  }

  if ((v84 & 8) != 0)
  {
    v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MWTSchemaMWTMusicMetadataReported subPlaylistRequestDurationInMs](self, "subPlaylistRequestDurationInMs")}];
    [dictionary setObject:v86 forKeyedSubscript:@"subPlaylistRequestDurationInMs"];
  }

  v87 = *(&self->_has + 2);
  if ((v87 & 0x80) != 0)
  {
    v88 = [(MWTSchemaMWTMusicMetadataReported *)self subscriptionType]- 1;
    if (v88 > 2)
    {
      v89 = @"MWTSUBSCRIPTIONTYPE_UNKNOWN";
    }

    else
    {
      v89 = off_1E78DAFD0[v88];
    }

    [dictionary setObject:v89 forKeyedSubscript:@"subscriptionType"];
    v87 = *(&self->_has + 2);
  }

  if (v87)
  {
    v90 = [MEMORY[0x1E696AD98] numberWithBool:{-[MWTSchemaMWTMusicMetadataReported wasMediaLibraryDatabaseUpgraded](self, "wasMediaLibraryDatabaseUpgraded")}];
    [dictionary setObject:v90 forKeyedSubscript:@"wasMediaLibraryDatabaseUpgraded"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v91 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    v5 = 2654435761 * self->_musicDomain;
    if ((has & 2) != 0)
    {
LABEL_3:
      v64 = 2654435761 * self->_queueType;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v64 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v63 = 2654435761 * self->_queueSize;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v63 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v62 = 2654435761 * self->_isShuffled;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v62 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v61 = 2654435761 * self->_prefetchedMetadataSource;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v61 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v60 = 2654435761 * self->_assetEndPoint;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  v60 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v59 = 2654435761 * self->_streamingContentType;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v59 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v58 = 2654435761 * self->_formatCodec;
    if ((has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v58 = 0;
  if ((has & 0x100) != 0)
  {
LABEL_10:
    v57 = 2654435761 * self->_formatBitrate;
    if ((has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v57 = 0;
  if ((has & 0x200) != 0)
  {
LABEL_11:
    v56 = 2654435761 * self->_formatBitDepth;
    if ((has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v56 = 0;
  if ((has & 0x400) != 0)
  {
LABEL_12:
    v55 = 2654435761 * self->_formatChannels;
    if ((has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v55 = 0;
  if ((has & 0x800) != 0)
  {
LABEL_13:
    v54 = 2654435761 * self->_formatLayout;
    if ((has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v54 = 0;
  if ((has & 0x1000) != 0)
  {
LABEL_14:
    v53 = 2654435761 * self->_formatSampleRate;
    if ((has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v53 = 0;
  if ((has & 0x2000) != 0)
  {
LABEL_15:
    v52 = 2654435761 * self->_formatTier;
    if ((has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v52 = 0;
  if ((has & 0x4000) != 0)
  {
LABEL_16:
    v51 = 2654435761 * self->_numberOfSpeakers;
    if ((has & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v51 = 0;
  if ((has & 0x8000) != 0)
  {
LABEL_17:
    v50 = 2654435761 * self->_routeConfiguration;
    if ((has & 0x10000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v50 = 0;
  if ((has & 0x10000) != 0)
  {
LABEL_18:
    v49 = 2654435761 * self->_isAccountDataReady;
    if ((has & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v49 = 0;
  if ((has & 0x20000) != 0)
  {
LABEL_19:
    v48 = 2654435761 * self->_isStoreBagReady;
    if ((has & 0x40000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v48 = 0;
  if ((has & 0x40000) != 0)
  {
LABEL_20:
    v47 = 2654435761 * self->_isLeaseReady;
    if ((has & 0x80000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v47 = 0;
  if ((has & 0x80000) != 0)
  {
LABEL_21:
    v46 = 2654435761 * self->_isOnlineKeyReady;
    if ((has & 0x100000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v46 = 0;
  if ((has & 0x100000) != 0)
  {
LABEL_22:
    v45 = 2654435761 * self->_isOfflineKeyReady;
    if ((has & 0x200000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v45 = 0;
  if ((has & 0x200000) != 0)
  {
LABEL_23:
    v44 = 2654435761 * self->_isHlsKeysReady;
    if ((has & 0x400000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v44 = 0;
  if ((has & 0x400000) != 0)
  {
LABEL_24:
    v43 = 2654435761 * self->_isInterruptingPlayback;
    if ((has & 0x800000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v43 = 0;
  if ((has & 0x800000) != 0)
  {
LABEL_25:
    v42 = 2654435761 * self->_isRemoteSetQueue;
    if ((has & 0x1000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v42 = 0;
  if ((has & 0x1000000) != 0)
  {
LABEL_26:
    v41 = 2654435761 * self->_isDelegatedPlayback;
    if ((has & 0x2000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v41 = 0;
  if ((has & 0x2000000) != 0)
  {
LABEL_27:
    v40 = 2654435761 * self->_isNonDefaultUser;
    if ((has & 0x4000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v40 = 0;
  if ((has & 0x4000000) != 0)
  {
LABEL_28:
    v39 = 2654435761 * self->_isAutoPlay;
    if ((has & 0x8000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v39 = 0;
  if ((has & 0x8000000) != 0)
  {
LABEL_29:
    v38 = 2654435761 * self->_isFirstPlayAfterAppLaunch;
    if ((has & 0x10000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v38 = 0;
  if ((has & 0x10000000) != 0)
  {
LABEL_30:
    v37 = 2654435761 * self->_isMiniSinfAvailable;
    if ((has & 0x20000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v37 = 0;
  if ((has & 0x20000000) != 0)
  {
LABEL_31:
    v35 = 2654435761 * self->_isSharePlayPlayback;
    if ((has & 0x40000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    v6 = 0;
    if (has < 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_63:
  v35 = 0;
  if ((has & 0x40000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  v6 = 2654435761 * self->_isSuzeLease;
  if (has < 0)
  {
LABEL_33:
    v7 = 2654435761 * self->_networkConnectionType;
    goto LABEL_66;
  }

LABEL_65:
  v7 = 0;
LABEL_66:
  v8 = *(&self->_has + 2);
  if (v8)
  {
    v9 = 2654435761 * self->_wasMediaLibraryDatabaseUpgraded;
    if ((v8 & 2) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v9 = 0;
    if ((v8 & 2) != 0)
    {
LABEL_68:
      v10 = 2654435761 * self->_isPrimaryUser;
      goto LABEL_71;
    }
  }

  v10 = 0;
LABEL_71:
  v11 = [(NSString *)self->_errorResolutionType hash];
  v12 = *(p_has + 2);
  if ((v12 & 4) != 0)
  {
    v13 = 2654435761 * self->_endPointType;
    if ((v12 & 8) != 0)
    {
LABEL_73:
      v14 = 2654435761 * self->_routeType;
      if ((v12 & 0x10) != 0)
      {
        goto LABEL_74;
      }

      goto LABEL_88;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_73;
    }
  }

  v14 = 0;
  if ((v12 & 0x10) != 0)
  {
LABEL_74:
    v15 = 2654435761 * self->_formatLayoutValue;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_89;
  }

LABEL_88:
  v15 = 0;
  if ((v12 & 0x20) != 0)
  {
LABEL_75:
    v16 = 2654435761 * self->_assetSource;
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_90;
  }

LABEL_89:
  v16 = 0;
  if ((v12 & 0x40) != 0)
  {
LABEL_76:
    v17 = 2654435761 * self->_assetLocation;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_91;
  }

LABEL_90:
  v17 = 0;
  if ((v12 & 0x80) != 0)
  {
LABEL_77:
    v18 = 2654435761 * self->_subscriptionType;
    if ((*(p_has + 2) & 0x100) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_92;
  }

LABEL_91:
  v18 = 0;
  if ((*(p_has + 2) & 0x100) != 0)
  {
LABEL_78:
    v19 = 2654435761 * self->_hasLookupWaitTime;
    if ((*(p_has + 2) & 0x200) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_93;
  }

LABEL_92:
  v19 = 0;
  if ((*(p_has + 2) & 0x200) != 0)
  {
LABEL_79:
    v20 = 2654435761 * self->_hasBagWaitTime;
    if ((*(p_has + 2) & 0x400) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_94;
  }

LABEL_93:
  v20 = 0;
  if ((*(p_has + 2) & 0x400) != 0)
  {
LABEL_80:
    v21 = 2654435761 * self->_hasLeaseWaitTime;
    if ((*(p_has + 2) & 0x800) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_95;
  }

LABEL_94:
  v21 = 0;
  if ((*(p_has + 2) & 0x800) != 0)
  {
LABEL_81:
    v22 = 2654435761 * self->_hasSuzeLeaseWaitTime;
    if ((*(p_has + 2) & 0x1000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_96;
  }

LABEL_95:
  v22 = 0;
  if ((*(p_has + 2) & 0x1000) != 0)
  {
LABEL_82:
    v23 = 2654435761 * self->_hasSubscriptionAssetLoadWaitTime;
    if ((*(p_has + 2) & 0x2000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_97;
  }

LABEL_96:
  v23 = 0;
  if ((*(p_has + 2) & 0x2000) != 0)
  {
LABEL_83:
    v24 = 2654435761 * self->_hasMediaRedownloadWaitTime;
    if ((*(p_has + 2) & 0x4000) != 0)
    {
      goto LABEL_84;
    }

LABEL_98:
    v25 = 0;
    if ((*(p_has + 2) & 0x8000) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_99;
  }

LABEL_97:
  v24 = 0;
  if ((*(p_has + 2) & 0x4000) == 0)
  {
    goto LABEL_98;
  }

LABEL_84:
  v25 = 2654435761 * self->_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  if ((*(p_has + 2) & 0x8000) != 0)
  {
LABEL_85:
    v26 = 2654435761 * self->_cmInitialStartupItemCreationToLtluDurationInMs;
    goto LABEL_100;
  }

LABEL_99:
  v26 = 0;
LABEL_100:
  v27 = *(p_has + 6);
  if (v27)
  {
    v28 = 2654435761 * self->_masterPlaylistConnectionTlsHandshakeDurationInMs;
    if ((*(p_has + 6) & 2) != 0)
    {
LABEL_102:
      v29 = 2654435761 * self->_masterPlaylistRequestDurationInMs;
      if ((*(p_has + 6) & 4) != 0)
      {
        goto LABEL_103;
      }

      goto LABEL_109;
    }
  }

  else
  {
    v28 = 0;
    if ((*(p_has + 6) & 2) != 0)
    {
      goto LABEL_102;
    }
  }

  v29 = 0;
  if ((*(p_has + 6) & 4) != 0)
  {
LABEL_103:
    v30 = 2654435761 * self->_subPlaylistConnectionTlsHandshakeDurationInMs;
    if ((*(p_has + 6) & 8) != 0)
    {
      goto LABEL_104;
    }

    goto LABEL_110;
  }

LABEL_109:
  v30 = 0;
  if ((*(p_has + 6) & 8) != 0)
  {
LABEL_104:
    v31 = 2654435761 * self->_subPlaylistRequestDurationInMs;
    if ((v27 & 0x10) != 0)
    {
      goto LABEL_105;
    }

LABEL_111:
    v32 = 0;
    if ((v27 & 0x20) != 0)
    {
      goto LABEL_106;
    }

LABEL_112:
    v33 = 0;
    return v64 ^ v5 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v6 ^ v7 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v11 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ [(NSString *)self->_audioQueueType hash];
  }

LABEL_110:
  v31 = 0;
  if ((v27 & 0x10) == 0)
  {
    goto LABEL_111;
  }

LABEL_105:
  v32 = 2654435761 * self->_contentConnectionTlsHandshakeDurationInMs;
  if ((v27 & 0x20) == 0)
  {
    goto LABEL_112;
  }

LABEL_106:
  v33 = 2654435761 * self->_contentFirstSegmentDurationInMs;
  return v64 ^ v5 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v6 ^ v7 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v11 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ [(NSString *)self->_audioQueueType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_224;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = equalCopy + 44;
  v8 = equalCopy[44];
  if ((has & 1) != (v8 & 1))
  {
    goto LABEL_224;
  }

  if (has)
  {
    musicDomain = self->_musicDomain;
    if (musicDomain != [equalCopy musicDomain])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_224;
  }

  if (v10)
  {
    queueType = self->_queueType;
    if (queueType != [equalCopy queueType])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v12 = (has >> 2) & 1;
  if (v12 != ((v8 >> 2) & 1))
  {
    goto LABEL_224;
  }

  if (v12)
  {
    queueSize = self->_queueSize;
    if (queueSize != [equalCopy queueSize])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v14 = (has >> 3) & 1;
  if (v14 != ((v8 >> 3) & 1))
  {
    goto LABEL_224;
  }

  if (v14)
  {
    isShuffled = self->_isShuffled;
    if (isShuffled != [equalCopy isShuffled])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v16 = (has >> 4) & 1;
  if (v16 != ((v8 >> 4) & 1))
  {
    goto LABEL_224;
  }

  if (v16)
  {
    prefetchedMetadataSource = self->_prefetchedMetadataSource;
    if (prefetchedMetadataSource != [equalCopy prefetchedMetadataSource])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v18 = (has >> 5) & 1;
  if (v18 != ((v8 >> 5) & 1))
  {
    goto LABEL_224;
  }

  if (v18)
  {
    assetEndPoint = self->_assetEndPoint;
    if (assetEndPoint != [equalCopy assetEndPoint])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v20 = (has >> 6) & 1;
  if (v20 != ((v8 >> 6) & 1))
  {
    goto LABEL_224;
  }

  if (v20)
  {
    streamingContentType = self->_streamingContentType;
    if (streamingContentType != [equalCopy streamingContentType])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v22 = (has >> 7) & 1;
  if (v22 != ((v8 >> 7) & 1))
  {
    goto LABEL_224;
  }

  if (v22)
  {
    formatCodec = self->_formatCodec;
    if (formatCodec != [equalCopy formatCodec])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v24 = (has >> 8) & 1;
  if (v24 != ((v8 >> 8) & 1))
  {
    goto LABEL_224;
  }

  if (v24)
  {
    formatBitrate = self->_formatBitrate;
    if (formatBitrate != [equalCopy formatBitrate])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v26 = (has >> 9) & 1;
  if (v26 != ((v8 >> 9) & 1))
  {
    goto LABEL_224;
  }

  if (v26)
  {
    formatBitDepth = self->_formatBitDepth;
    if (formatBitDepth != [equalCopy formatBitDepth])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v28 = (has >> 10) & 1;
  if (v28 != ((v8 >> 10) & 1))
  {
    goto LABEL_224;
  }

  if (v28)
  {
    formatChannels = self->_formatChannels;
    if (formatChannels != [equalCopy formatChannels])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v30 = (has >> 11) & 1;
  if (v30 != ((v8 >> 11) & 1))
  {
    goto LABEL_224;
  }

  if (v30)
  {
    formatLayout = self->_formatLayout;
    if (formatLayout != [equalCopy formatLayout])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v32 = (has >> 12) & 1;
  if (v32 != ((v8 >> 12) & 1))
  {
    goto LABEL_224;
  }

  if (v32)
  {
    formatSampleRate = self->_formatSampleRate;
    if (formatSampleRate != [equalCopy formatSampleRate])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v34 = (has >> 13) & 1;
  if (v34 != ((v8 >> 13) & 1))
  {
    goto LABEL_224;
  }

  if (v34)
  {
    formatTier = self->_formatTier;
    if (formatTier != [equalCopy formatTier])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v36 = (has >> 14) & 1;
  if (v36 != ((v8 >> 14) & 1))
  {
    goto LABEL_224;
  }

  if (v36)
  {
    numberOfSpeakers = self->_numberOfSpeakers;
    if (numberOfSpeakers != [equalCopy numberOfSpeakers])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v38 = (has >> 15) & 1;
  if (v38 != ((v8 >> 15) & 1))
  {
    goto LABEL_224;
  }

  if (v38)
  {
    routeConfiguration = self->_routeConfiguration;
    if (routeConfiguration != [equalCopy routeConfiguration])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v40 = HIWORD(has) & 1;
  if (v40 != (HIWORD(v8) & 1))
  {
    goto LABEL_224;
  }

  if (v40)
  {
    isAccountDataReady = self->_isAccountDataReady;
    if (isAccountDataReady != [equalCopy isAccountDataReady])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v42 = (has >> 17) & 1;
  if (v42 != ((v8 >> 17) & 1))
  {
    goto LABEL_224;
  }

  if (v42)
  {
    isStoreBagReady = self->_isStoreBagReady;
    if (isStoreBagReady != [equalCopy isStoreBagReady])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v44 = (has >> 18) & 1;
  if (v44 != ((v8 >> 18) & 1))
  {
    goto LABEL_224;
  }

  if (v44)
  {
    isLeaseReady = self->_isLeaseReady;
    if (isLeaseReady != [equalCopy isLeaseReady])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v46 = (has >> 19) & 1;
  if (v46 != ((v8 >> 19) & 1))
  {
    goto LABEL_224;
  }

  if (v46)
  {
    isOnlineKeyReady = self->_isOnlineKeyReady;
    if (isOnlineKeyReady != [equalCopy isOnlineKeyReady])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v48 = (has >> 20) & 1;
  if (v48 != ((v8 >> 20) & 1))
  {
    goto LABEL_224;
  }

  if (v48)
  {
    isOfflineKeyReady = self->_isOfflineKeyReady;
    if (isOfflineKeyReady != [equalCopy isOfflineKeyReady])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v50 = (has >> 21) & 1;
  if (v50 != ((v8 >> 21) & 1))
  {
    goto LABEL_224;
  }

  if (v50)
  {
    isHlsKeysReady = self->_isHlsKeysReady;
    if (isHlsKeysReady != [equalCopy isHlsKeysReady])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v52 = (has >> 22) & 1;
  if (v52 != ((v8 >> 22) & 1))
  {
    goto LABEL_224;
  }

  if (v52)
  {
    isInterruptingPlayback = self->_isInterruptingPlayback;
    if (isInterruptingPlayback != [equalCopy isInterruptingPlayback])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v54 = (has >> 23) & 1;
  if (v54 != ((v8 >> 23) & 1))
  {
    goto LABEL_224;
  }

  if (v54)
  {
    isRemoteSetQueue = self->_isRemoteSetQueue;
    if (isRemoteSetQueue != [equalCopy isRemoteSetQueue])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v56 = HIBYTE(has) & 1;
  if (v56 != (HIBYTE(v8) & 1))
  {
    goto LABEL_224;
  }

  if (v56)
  {
    isDelegatedPlayback = self->_isDelegatedPlayback;
    if (isDelegatedPlayback != [equalCopy isDelegatedPlayback])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v58 = (has >> 25) & 1;
  if (v58 != ((v8 >> 25) & 1))
  {
    goto LABEL_224;
  }

  if (v58)
  {
    isNonDefaultUser = self->_isNonDefaultUser;
    if (isNonDefaultUser != [equalCopy isNonDefaultUser])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v60 = (has >> 26) & 1;
  if (v60 != ((v8 >> 26) & 1))
  {
    goto LABEL_224;
  }

  if (v60)
  {
    isAutoPlay = self->_isAutoPlay;
    if (isAutoPlay != [equalCopy isAutoPlay])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v62 = (has >> 27) & 1;
  if (v62 != ((v8 >> 27) & 1))
  {
    goto LABEL_224;
  }

  if (v62)
  {
    isFirstPlayAfterAppLaunch = self->_isFirstPlayAfterAppLaunch;
    if (isFirstPlayAfterAppLaunch != [equalCopy isFirstPlayAfterAppLaunch])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v64 = (has >> 28) & 1;
  if (v64 != ((v8 >> 28) & 1))
  {
    goto LABEL_224;
  }

  if (v64)
  {
    isMiniSinfAvailable = self->_isMiniSinfAvailable;
    if (isMiniSinfAvailable != [equalCopy isMiniSinfAvailable])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v66 = (has >> 29) & 1;
  if (v66 != ((v8 >> 29) & 1))
  {
    goto LABEL_224;
  }

  if (v66)
  {
    isSharePlayPlayback = self->_isSharePlayPlayback;
    if (isSharePlayPlayback != [equalCopy isSharePlayPlayback])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  v68 = (has >> 30) & 1;
  if (v68 != ((v8 >> 30) & 1))
  {
    goto LABEL_224;
  }

  if (v68)
  {
    isSuzeLease = self->_isSuzeLease;
    if (isSuzeLease != [equalCopy isSuzeLease])
    {
      goto LABEL_224;
    }

    has = *p_has;
    v8 = *v7;
  }

  if (((v8 ^ has) & 0x80000000) != 0)
  {
    goto LABEL_224;
  }

  if ((has & 0x80000000) != 0)
  {
    networkConnectionType = self->_networkConnectionType;
    if (networkConnectionType != [equalCopy networkConnectionType])
    {
      goto LABEL_224;
    }
  }

  v71 = *(&self->_has + 2);
  v72 = *(equalCopy + 90);
  if ((v71 & 1) != (v72 & 1))
  {
    goto LABEL_224;
  }

  if (v71)
  {
    wasMediaLibraryDatabaseUpgraded = self->_wasMediaLibraryDatabaseUpgraded;
    if (wasMediaLibraryDatabaseUpgraded != [equalCopy wasMediaLibraryDatabaseUpgraded])
    {
      goto LABEL_224;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 90);
  }

  v74 = (v71 >> 1) & 1;
  if (v74 != ((v72 >> 1) & 1))
  {
    goto LABEL_224;
  }

  if (v74)
  {
    isPrimaryUser = self->_isPrimaryUser;
    if (isPrimaryUser != [equalCopy isPrimaryUser])
    {
      goto LABEL_224;
    }
  }

  errorResolutionType = [(MWTSchemaMWTMusicMetadataReported *)self errorResolutionType];
  errorResolutionType2 = [equalCopy errorResolutionType];
  if ((errorResolutionType != 0) == (errorResolutionType2 == 0))
  {
    goto LABEL_223;
  }

  errorResolutionType3 = [(MWTSchemaMWTMusicMetadataReported *)self errorResolutionType];
  if (errorResolutionType3)
  {
    v79 = errorResolutionType3;
    errorResolutionType4 = [(MWTSchemaMWTMusicMetadataReported *)self errorResolutionType];
    errorResolutionType5 = [equalCopy errorResolutionType];
    v82 = [errorResolutionType4 isEqual:errorResolutionType5];

    if (!v82)
    {
      goto LABEL_224;
    }
  }

  else
  {
  }

  v83 = *(&self->_has + 2);
  v84 = (v83 >> 2) & 1;
  v85 = *(equalCopy + 90);
  if (v84 != ((v85 >> 2) & 1))
  {
    goto LABEL_224;
  }

  if (v84)
  {
    endPointType = self->_endPointType;
    if (endPointType != [equalCopy endPointType])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v87 = (v83 >> 3) & 1;
  if (v87 != ((v85 >> 3) & 1))
  {
    goto LABEL_224;
  }

  if (v87)
  {
    routeType = self->_routeType;
    if (routeType != [equalCopy routeType])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v89 = (v83 >> 4) & 1;
  if (v89 != ((v85 >> 4) & 1))
  {
    goto LABEL_224;
  }

  if (v89)
  {
    formatLayoutValue = self->_formatLayoutValue;
    if (formatLayoutValue != [equalCopy formatLayoutValue])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v91 = (v83 >> 5) & 1;
  if (v91 != ((v85 >> 5) & 1))
  {
    goto LABEL_224;
  }

  if (v91)
  {
    assetSource = self->_assetSource;
    if (assetSource != [equalCopy assetSource])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v93 = (v83 >> 6) & 1;
  if (v93 != ((v85 >> 6) & 1))
  {
    goto LABEL_224;
  }

  if (v93)
  {
    assetLocation = self->_assetLocation;
    if (assetLocation != [equalCopy assetLocation])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v95 = (v83 >> 7) & 1;
  if (v95 != ((v85 >> 7) & 1))
  {
    goto LABEL_224;
  }

  if (v95)
  {
    subscriptionType = self->_subscriptionType;
    if (subscriptionType != [equalCopy subscriptionType])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v97 = (v83 >> 8) & 1;
  if (v97 != ((v85 >> 8) & 1))
  {
    goto LABEL_224;
  }

  if (v97)
  {
    hasLookupWaitTime = self->_hasLookupWaitTime;
    if (hasLookupWaitTime != [equalCopy hasLookupWaitTime])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v99 = (v83 >> 9) & 1;
  if (v99 != ((v85 >> 9) & 1))
  {
    goto LABEL_224;
  }

  if (v99)
  {
    hasBagWaitTime = self->_hasBagWaitTime;
    if (hasBagWaitTime != [equalCopy hasBagWaitTime])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v101 = (v83 >> 10) & 1;
  if (v101 != ((v85 >> 10) & 1))
  {
    goto LABEL_224;
  }

  if (v101)
  {
    hasLeaseWaitTime = self->_hasLeaseWaitTime;
    if (hasLeaseWaitTime != [equalCopy hasLeaseWaitTime])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v103 = (v83 >> 11) & 1;
  if (v103 != ((v85 >> 11) & 1))
  {
    goto LABEL_224;
  }

  if (v103)
  {
    hasSuzeLeaseWaitTime = self->_hasSuzeLeaseWaitTime;
    if (hasSuzeLeaseWaitTime != [equalCopy hasSuzeLeaseWaitTime])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v105 = (v83 >> 12) & 1;
  if (v105 != ((v85 >> 12) & 1))
  {
    goto LABEL_224;
  }

  if (v105)
  {
    hasSubscriptionAssetLoadWaitTime = self->_hasSubscriptionAssetLoadWaitTime;
    if (hasSubscriptionAssetLoadWaitTime != [equalCopy hasSubscriptionAssetLoadWaitTime])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v107 = (v83 >> 13) & 1;
  if (v107 != ((v85 >> 13) & 1))
  {
    goto LABEL_224;
  }

  if (v107)
  {
    hasMediaRedownloadWaitTime = self->_hasMediaRedownloadWaitTime;
    if (hasMediaRedownloadWaitTime != [equalCopy hasMediaRedownloadWaitTime])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  v109 = (v83 >> 14) & 1;
  if (v109 != ((v85 >> 14) & 1))
  {
    goto LABEL_224;
  }

  if (v109)
  {
    cmInitialStartupItemCreationToReadyToPlayDurationInMs = self->_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
    if (cmInitialStartupItemCreationToReadyToPlayDurationInMs != [equalCopy cmInitialStartupItemCreationToReadyToPlayDurationInMs])
    {
      goto LABEL_224;
    }

    v83 = *(&self->_has + 2);
    v85 = *(equalCopy + 90);
  }

  if (((v85 ^ v83) & 0x8000) != 0)
  {
    goto LABEL_224;
  }

  if ((v83 & 0x8000) != 0)
  {
    cmInitialStartupItemCreationToLtluDurationInMs = self->_cmInitialStartupItemCreationToLtluDurationInMs;
    if (cmInitialStartupItemCreationToLtluDurationInMs != [equalCopy cmInitialStartupItemCreationToLtluDurationInMs])
    {
      goto LABEL_224;
    }
  }

  v112 = *(&self->_has + 6);
  v113 = *(equalCopy + 182);
  if ((v112 & 1) != (v113 & 1))
  {
    goto LABEL_224;
  }

  if (v112)
  {
    masterPlaylistConnectionTlsHandshakeDurationInMs = self->_masterPlaylistConnectionTlsHandshakeDurationInMs;
    if (masterPlaylistConnectionTlsHandshakeDurationInMs != [equalCopy masterPlaylistConnectionTlsHandshakeDurationInMs])
    {
      goto LABEL_224;
    }

    v112 = *(&self->_has + 6);
    v113 = *(equalCopy + 182);
  }

  v115 = (v112 >> 1) & 1;
  if (v115 != ((v113 >> 1) & 1))
  {
    goto LABEL_224;
  }

  if (v115)
  {
    masterPlaylistRequestDurationInMs = self->_masterPlaylistRequestDurationInMs;
    if (masterPlaylistRequestDurationInMs != [equalCopy masterPlaylistRequestDurationInMs])
    {
      goto LABEL_224;
    }

    v112 = *(&self->_has + 6);
    v113 = *(equalCopy + 182);
  }

  v117 = (v112 >> 2) & 1;
  if (v117 != ((v113 >> 2) & 1))
  {
    goto LABEL_224;
  }

  if (v117)
  {
    subPlaylistConnectionTlsHandshakeDurationInMs = self->_subPlaylistConnectionTlsHandshakeDurationInMs;
    if (subPlaylistConnectionTlsHandshakeDurationInMs != [equalCopy subPlaylistConnectionTlsHandshakeDurationInMs])
    {
      goto LABEL_224;
    }

    v112 = *(&self->_has + 6);
    v113 = *(equalCopy + 182);
  }

  v119 = (v112 >> 3) & 1;
  if (v119 != ((v113 >> 3) & 1))
  {
    goto LABEL_224;
  }

  if (v119)
  {
    subPlaylistRequestDurationInMs = self->_subPlaylistRequestDurationInMs;
    if (subPlaylistRequestDurationInMs != [equalCopy subPlaylistRequestDurationInMs])
    {
      goto LABEL_224;
    }

    v112 = *(&self->_has + 6);
    v113 = *(equalCopy + 182);
  }

  v121 = (v112 >> 4) & 1;
  if (v121 != ((v113 >> 4) & 1))
  {
    goto LABEL_224;
  }

  if (v121)
  {
    contentConnectionTlsHandshakeDurationInMs = self->_contentConnectionTlsHandshakeDurationInMs;
    if (contentConnectionTlsHandshakeDurationInMs != [equalCopy contentConnectionTlsHandshakeDurationInMs])
    {
      goto LABEL_224;
    }

    v112 = *(&self->_has + 6);
    v113 = *(equalCopy + 182);
  }

  v123 = (v112 >> 5) & 1;
  if (v123 != ((v113 >> 5) & 1))
  {
    goto LABEL_224;
  }

  if (v123)
  {
    contentFirstSegmentDurationInMs = self->_contentFirstSegmentDurationInMs;
    if (contentFirstSegmentDurationInMs != [equalCopy contentFirstSegmentDurationInMs])
    {
      goto LABEL_224;
    }
  }

  errorResolutionType = [(MWTSchemaMWTMusicMetadataReported *)self audioQueueType];
  errorResolutionType2 = [equalCopy audioQueueType];
  if ((errorResolutionType != 0) == (errorResolutionType2 == 0))
  {
LABEL_223:

    goto LABEL_224;
  }

  audioQueueType = [(MWTSchemaMWTMusicMetadataReported *)self audioQueueType];
  if (!audioQueueType)
  {

LABEL_227:
    v130 = 1;
    goto LABEL_225;
  }

  v126 = audioQueueType;
  audioQueueType2 = [(MWTSchemaMWTMusicMetadataReported *)self audioQueueType];
  audioQueueType3 = [equalCopy audioQueueType];
  v129 = [audioQueueType2 isEqual:audioQueueType3];

  if (v129)
  {
    goto LABEL_227;
  }

LABEL_224:
  v130 = 0;
LABEL_225:

  return v130;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_67;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_69;
  }

LABEL_68:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_76;
  }

LABEL_75:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_77;
  }

LABEL_76:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

LABEL_77:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

LABEL_78:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_16:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_80;
  }

LABEL_79:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_17:
    if ((has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_81;
  }

LABEL_80:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_18:
    if ((has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_82;
  }

LABEL_81:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_19:
    if ((has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_82:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_20:
    if ((has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_84;
  }

LABEL_83:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_21:
    if ((has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_85;
  }

LABEL_84:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_22:
    if ((has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_86;
  }

LABEL_85:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_23:
    if ((has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_87;
  }

LABEL_86:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_24:
    if ((has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_88;
  }

LABEL_87:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_25:
    if ((has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_89;
  }

LABEL_88:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_26:
    if ((has & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_90;
  }

LABEL_89:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_27:
    if ((has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_91;
  }

LABEL_90:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_92;
  }

LABEL_91:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_29:
    if ((has & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_93;
  }

LABEL_92:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_30:
    if ((has & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_94;
  }

LABEL_93:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_31:
    if ((has & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_95:
    PBDataWriterWriteBOOLField();
    if ((*p_has & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

LABEL_94:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    goto LABEL_95;
  }

LABEL_32:
  if ((has & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_96:
  PBDataWriterWriteInt32Field();
LABEL_33:
  v6 = *(&self->_has + 2);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_has + 2);
  }

  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  errorResolutionType = [(MWTSchemaMWTMusicMetadataReported *)self errorResolutionType];

  if (errorResolutionType)
  {
    PBDataWriterWriteStringField();
  }

  v8 = *(&self->_has + 2);
  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v8 = *(&self->_has + 2);
    if ((v8 & 8) == 0)
    {
LABEL_41:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_99;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_41;
  }

  PBDataWriterWriteInt32Field();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x10) == 0)
  {
LABEL_42:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_100;
  }

LABEL_99:
  PBDataWriterWriteUint32Field();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x20) == 0)
  {
LABEL_43:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_101;
  }

LABEL_100:
  PBDataWriterWriteInt32Field();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x40) == 0)
  {
LABEL_44:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_102;
  }

LABEL_101:
  PBDataWriterWriteInt32Field();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x80) == 0)
  {
LABEL_45:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_102:
  PBDataWriterWriteInt32Field();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x100) == 0)
  {
LABEL_46:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_104;
  }

LABEL_103:
  PBDataWriterWriteBOOLField();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x200) == 0)
  {
LABEL_47:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_105;
  }

LABEL_104:
  PBDataWriterWriteBOOLField();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x400) == 0)
  {
LABEL_48:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_106;
  }

LABEL_105:
  PBDataWriterWriteBOOLField();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x800) == 0)
  {
LABEL_49:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_107;
  }

LABEL_106:
  PBDataWriterWriteBOOLField();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x1000) == 0)
  {
LABEL_50:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_108;
  }

LABEL_107:
  PBDataWriterWriteBOOLField();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x2000) == 0)
  {
LABEL_51:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

LABEL_109:
    PBDataWriterWriteUint32Field();
    if ((*(&self->_has + 2) & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_110;
  }

LABEL_108:
  PBDataWriterWriteBOOLField();
  v8 = *(&self->_has + 2);
  if ((v8 & 0x4000) != 0)
  {
    goto LABEL_109;
  }

LABEL_52:
  if ((v8 & 0x8000) == 0)
  {
    goto LABEL_53;
  }

LABEL_110:
  PBDataWriterWriteUint32Field();
LABEL_53:
  v9 = *(&self->_has + 6);
  if (v9)
  {
    PBDataWriterWriteUint32Field();
    v9 = *(&self->_has + 6);
    if ((v9 & 2) == 0)
    {
LABEL_55:
      if ((v9 & 4) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_113;
    }
  }

  else if ((*(&self->_has + 6) & 2) == 0)
  {
    goto LABEL_55;
  }

  PBDataWriterWriteUint32Field();
  v9 = *(&self->_has + 6);
  if ((v9 & 4) == 0)
  {
LABEL_56:
    if ((v9 & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_114;
  }

LABEL_113:
  PBDataWriterWriteUint32Field();
  v9 = *(&self->_has + 6);
  if ((v9 & 8) == 0)
  {
LABEL_57:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_115;
  }

LABEL_114:
  PBDataWriterWriteUint32Field();
  v9 = *(&self->_has + 6);
  if ((v9 & 0x10) == 0)
  {
LABEL_58:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_115:
  PBDataWriterWriteUint32Field();
  if ((*(&self->_has + 6) & 0x20) != 0)
  {
LABEL_59:
    PBDataWriterWriteUint32Field();
  }

LABEL_60:
  audioQueueType = [(MWTSchemaMWTMusicMetadataReported *)self audioQueueType];

  v11 = toCopy;
  if (audioQueueType)
  {
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (void)setHasContentFirstSegmentDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 6) = *(&self->_has + 6) & 0xDF | v3;
}

- (void)setHasContentConnectionTlsHandshakeDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 6) = *(&self->_has + 6) & 0xEF | v3;
}

- (void)setHasSubPlaylistRequestDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 6) = *(&self->_has + 6) & 0xF7 | v3;
}

- (void)setHasSubPlaylistConnectionTlsHandshakeDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 6) = *(&self->_has + 6) & 0xFB | v3;
}

- (void)setHasMasterPlaylistRequestDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 6) = *(&self->_has + 6) & 0xFD | v3;
}

- (void)setHasCmInitialStartupItemCreationToLtluDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = v3 & 0x8000 | *(&self->_has + 2) & 0x7FFF;
}

- (void)setHasCmInitialStartupItemCreationToReadyToPlayDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xBFFF | v3;
}

- (void)setHasHasMediaRedownloadWaitTime:(BOOL)time
{
  if (time)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xDFFF | v3;
}

- (void)setHasHasSubscriptionAssetLoadWaitTime:(BOOL)time
{
  if (time)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEFFF | v3;
}

- (void)setHasHasSuzeLeaseWaitTime:(BOOL)time
{
  if (time)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7FF | v3;
}

- (void)setHasHasLeaseWaitTime:(BOOL)time
{
  if (time)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFBFF | v3;
}

- (void)setHasHasBagWaitTime:(BOOL)time
{
  if (time)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFDFF | v3;
}

- (void)setHasHasLookupWaitTime:(BOOL)time
{
  if (time)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFEFF | v3;
}

- (void)setHasSubscriptionType:(BOOL)type
{
  if (type)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFF7F | v3;
}

- (void)setHasAssetLocation:(BOOL)location
{
  if (location)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFBF | v3;
}

- (void)setHasAssetSource:(BOOL)source
{
  if (source)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFDF | v3;
}

- (void)setHasFormatLayoutValue:(BOOL)value
{
  if (value)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFEF | v3;
}

- (void)setHasRouteType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFF7 | v3;
}

- (void)setHasEndPointType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFB | v3;
}

- (void)setHasIsPrimaryUser:(BOOL)user
{
  if (user)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFD | v3;
}

- (void)setHasNetworkConnectionType:(BOOL)type
{
  if (type)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF;
}

- (void)setHasIsSuzeLease:(BOOL)lease
{
  if (lease)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFF | v3;
}

- (void)setHasIsSharePlayPlayback:(BOOL)playback
{
  if (playback)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFF | v3;
}

- (void)setHasIsMiniSinfAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFF | v3;
}

- (void)setHasIsFirstPlayAfterAppLaunch:(BOOL)launch
{
  if (launch)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFF | v3;
}

- (void)setHasIsAutoPlay:(BOOL)play
{
  if (play)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFF | v3;
}

- (void)setHasIsNonDefaultUser:(BOOL)user
{
  if (user)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFF | v3;
}

- (void)setHasIsDelegatedPlayback:(BOOL)playback
{
  if (playback)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFF | v3;
}

- (void)setHasIsRemoteSetQueue:(BOOL)queue
{
  if (queue)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFF | v3;
}

- (void)setHasIsInterruptingPlayback:(BOOL)playback
{
  if (playback)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFF | v3;
}

- (void)setHasIsHlsKeysReady:(BOOL)ready
{
  if (ready)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFF | v3;
}

- (void)setHasIsOfflineKeyReady:(BOOL)ready
{
  if (ready)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFF | v3;
}

- (void)setHasIsOnlineKeyReady:(BOOL)ready
{
  if (ready)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFF | v3;
}

- (void)setHasIsLeaseReady:(BOOL)ready
{
  if (ready)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFF | v3;
}

- (void)setHasIsStoreBagReady:(BOOL)ready
{
  if (ready)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFF | v3;
}

- (void)setHasIsAccountDataReady:(BOOL)ready
{
  if (ready)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFF | v3;
}

- (void)setHasRouteConfiguration:(BOOL)configuration
{
  if (configuration)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFF | v3;
}

- (void)setHasNumberOfSpeakers:(BOOL)speakers
{
  if (speakers)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFF | v3;
}

- (void)setHasFormatTier:(BOOL)tier
{
  if (tier)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFF | v3;
}

- (void)setHasFormatSampleRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFF | v3;
}

- (void)setHasFormatLayout:(BOOL)layout
{
  if (layout)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FF | v3;
}

- (void)setHasFormatChannels:(BOOL)channels
{
  if (channels)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFF | v3;
}

- (void)setHasFormatBitDepth:(BOOL)depth
{
  if (depth)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFF | v3;
}

- (void)setHasFormatBitrate:(BOOL)bitrate
{
  if (bitrate)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFF | v3;
}

- (void)setHasFormatCodec:(BOOL)codec
{
  if (codec)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7F | v3;
}

- (void)setHasStreamingContentType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBF | v3;
}

- (void)setHasAssetEndPoint:(BOOL)point
{
  if (point)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDF | v3;
}

- (void)setHasPrefetchedMetadataSource:(BOOL)source
{
  if (source)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEF | v3;
}

- (void)setHasIsShuffled:(BOOL)shuffled
{
  if (shuffled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7 | v3;
}

- (void)setHasQueueSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFB | v3;
}

- (void)setHasQueueType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end