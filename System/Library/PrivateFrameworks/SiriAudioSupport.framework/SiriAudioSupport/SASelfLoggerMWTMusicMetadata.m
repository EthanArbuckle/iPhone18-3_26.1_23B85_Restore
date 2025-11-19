@interface SASelfLoggerMWTMusicMetadata
- (BOOL)hasBagWaitTime;
- (BOOL)hasLeaseWaitTime;
- (BOOL)hasLookupWaitTime;
- (BOOL)hasMediaRedownloadWaitTime;
- (BOOL)hasSubscriptionAssetLoadWaitTime;
- (BOOL)hasSuzeLeaseWaitTime;
- (BOOL)isAccountDataReady;
- (BOOL)isAutoPlay;
- (BOOL)isDelegatedPlayback;
- (BOOL)isFirstPlayAfterAppLaunch;
- (BOOL)isHlsKeysReady;
- (BOOL)isInterruptingPlayback;
- (BOOL)isLeaseReady;
- (BOOL)isMiniSinfAvailable;
- (BOOL)isNonDefaultUser;
- (BOOL)isOfflineKeyReady;
- (BOOL)isOnlineKeyReady;
- (BOOL)isPrimaryUser;
- (BOOL)isRemoteSetQueue;
- (BOOL)isSharePlayPlayback;
- (BOOL)isShuffled;
- (BOOL)isStoreBagReady;
- (BOOL)isSuzeLease;
- (BOOL)wasMediaLibraryDatabaseUpgraded;
- (int)assetEndPoint;
- (int)assetLocation;
- (int)assetSource;
- (int)endPointType;
- (int)formatCodec;
- (int)formatLayout;
- (int)formatTier;
- (int)musicDomain;
- (int)networkConnectionType;
- (int)prefetchedMetadataSource;
- (int)queueType;
- (int)routeConfiguration;
- (int)routeType;
- (int)streamingContentType;
- (int)subscriptionType;
- (unsigned)cmInitialStartupItemCreationToLtluDurationInMs;
- (unsigned)cmInitialStartupItemCreationToReadyToPlayDurationInMs;
- (unsigned)contentConnectionTlsHandshakeDurationInMs;
- (unsigned)contentFirstSegmentDurationInMs;
- (unsigned)formatBitDepth;
- (unsigned)formatBitrate;
- (unsigned)formatChannels;
- (unsigned)formatLayoutValue;
- (unsigned)formatSampleRate;
- (unsigned)numberOfSpeakers;
- (unsigned)primaryPlaylistConnectionTlsHandshakeDurationInMs;
- (unsigned)primaryPlaylistRequestDurationInMs;
- (unsigned)queueSize;
- (unsigned)subPlaylistConnectionTlsHandshakeDurationInMs;
- (unsigned)subPlaylistRequestDurationInMs;
- (void)setAssetEndPoint:(int)a3;
- (void)setAssetLocation:(int)a3;
- (void)setAssetSource:(int)a3;
- (void)setCmInitialStartupItemCreationToLtluDurationInMs:(unsigned int)a3;
- (void)setCmInitialStartupItemCreationToReadyToPlayDurationInMs:(unsigned int)a3;
- (void)setContentConnectionTlsHandshakeDurationInMs:(unsigned int)a3;
- (void)setContentFirstSegmentDurationInMs:(unsigned int)a3;
- (void)setEndPointType:(int)a3;
- (void)setFormatBitDepth:(unsigned int)a3;
- (void)setFormatBitrate:(unsigned int)a3;
- (void)setFormatChannels:(unsigned int)a3;
- (void)setFormatCodec:(int)a3;
- (void)setFormatLayout:(int)a3;
- (void)setFormatLayoutValue:(unsigned int)a3;
- (void)setFormatSampleRate:(unsigned int)a3;
- (void)setFormatTier:(int)a3;
- (void)setHasBagWaitTime:(BOOL)a3;
- (void)setHasLeaseWaitTime:(BOOL)a3;
- (void)setHasLookupWaitTime:(BOOL)a3;
- (void)setHasMediaRedownloadWaitTime:(BOOL)a3;
- (void)setHasSubscriptionAssetLoadWaitTime:(BOOL)a3;
- (void)setHasSuzeLeaseWaitTime:(BOOL)a3;
- (void)setIsAccountDataReady:(BOOL)a3;
- (void)setIsAutoPlay:(BOOL)a3;
- (void)setIsDelegatedPlayback:(BOOL)a3;
- (void)setIsFirstPlayAfterAppLaunch:(BOOL)a3;
- (void)setIsHlsKeysReady:(BOOL)a3;
- (void)setIsInterruptingPlayback:(BOOL)a3;
- (void)setIsLeaseReady:(BOOL)a3;
- (void)setIsMiniSinfAvailable:(BOOL)a3;
- (void)setIsNonDefaultUser:(BOOL)a3;
- (void)setIsOfflineKeyReady:(BOOL)a3;
- (void)setIsOnlineKeyReady:(BOOL)a3;
- (void)setIsPrimaryUser:(BOOL)a3;
- (void)setIsRemoteSetQueue:(BOOL)a3;
- (void)setIsSharePlayPlayback:(BOOL)a3;
- (void)setIsShuffled:(BOOL)a3;
- (void)setIsStoreBagReady:(BOOL)a3;
- (void)setIsSuzeLease:(BOOL)a3;
- (void)setMusicDomain:(int)a3;
- (void)setNetworkConnectionType:(int)a3;
- (void)setNumberOfSpeakers:(unsigned int)a3;
- (void)setPrefetchedMetadataSource:(int)a3;
- (void)setPrimaryPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)a3;
- (void)setPrimaryPlaylistRequestDurationInMs:(unsigned int)a3;
- (void)setQueueSize:(unsigned int)a3;
- (void)setQueueType:(int)a3;
- (void)setRouteConfiguration:(int)a3;
- (void)setRouteType:(int)a3;
- (void)setStreamingContentType:(int)a3;
- (void)setSubPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)a3;
- (void)setSubPlaylistRequestDurationInMs:(unsigned int)a3;
- (void)setSubscriptionType:(int)a3;
- (void)setWasMediaLibraryDatabaseUpgraded:(BOOL)a3;
@end

@implementation SASelfLoggerMWTMusicMetadata

- (int)musicDomain
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMusicDomain:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)queueType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQueueType:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)queueSize
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQueueSize:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isShuffled
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsShuffled:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)prefetchedMetadataSource
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrefetchedMetadataSource:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)assetEndPoint
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAssetEndPoint:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)streamingContentType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStreamingContentType:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)formatCodec
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatCodec:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)formatBitrate
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatBitrate:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)formatBitDepth
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatBitDepth:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)formatChannels
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatChannels:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)formatLayout
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatLayout:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)formatSampleRate
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatSampleRate:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)formatTier
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatTier:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)numberOfSpeakers
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfSpeakers:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)routeConfiguration
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRouteConfiguration:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isAccountDataReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAccountDataReady:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isStoreBagReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsStoreBagReady:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isLeaseReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLeaseReady:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isOnlineKeyReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsOnlineKeyReady:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isOfflineKeyReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsOfflineKeyReady:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isHlsKeysReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsHlsKeysReady:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isInterruptingPlayback
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsInterruptingPlayback:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isRemoteSetQueue
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsRemoteSetQueue:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isDelegatedPlayback
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsDelegatedPlayback:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isNonDefaultUser
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsNonDefaultUser:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isAutoPlay
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAutoPlay:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isFirstPlayAfterAppLaunch
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFirstPlayAfterAppLaunch:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isMiniSinfAvailable
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsMiniSinfAvailable:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isSharePlayPlayback
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSharePlayPlayback:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isSuzeLease
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSuzeLease:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)networkConnectionType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNetworkConnectionType:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)wasMediaLibraryDatabaseUpgraded
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWasMediaLibraryDatabaseUpgraded:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isPrimaryUser
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsPrimaryUser:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)endPointType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEndPointType:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)routeType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRouteType:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)formatLayoutValue
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatLayoutValue:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)assetSource
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAssetSource:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)assetLocation
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAssetLocation:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int)subscriptionType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubscriptionType:(int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasLookupWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasLookupWaitTime:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasBagWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasBagWaitTime:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasLeaseWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasLeaseWaitTime:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasSuzeLeaseWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasSuzeLeaseWaitTime:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasSubscriptionAssetLoadWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasSubscriptionAssetLoadWaitTime:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasMediaRedownloadWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasMediaRedownloadWaitTime:(BOOL)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)cmInitialStartupItemCreationToReadyToPlayDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCmInitialStartupItemCreationToReadyToPlayDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)cmInitialStartupItemCreationToLtluDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCmInitialStartupItemCreationToLtluDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)primaryPlaylistConnectionTlsHandshakeDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrimaryPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)primaryPlaylistRequestDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrimaryPlaylistRequestDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)subPlaylistConnectionTlsHandshakeDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)subPlaylistRequestDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubPlaylistRequestDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)contentConnectionTlsHandshakeDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentConnectionTlsHandshakeDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)contentFirstSegmentDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentFirstSegmentDurationInMs:(unsigned int)a3
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  *(self + v5) = a3;
}

@end