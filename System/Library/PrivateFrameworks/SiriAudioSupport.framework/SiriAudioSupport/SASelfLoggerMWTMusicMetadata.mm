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
- (void)setAssetEndPoint:(int)point;
- (void)setAssetLocation:(int)location;
- (void)setAssetSource:(int)source;
- (void)setCmInitialStartupItemCreationToLtluDurationInMs:(unsigned int)ms;
- (void)setCmInitialStartupItemCreationToReadyToPlayDurationInMs:(unsigned int)ms;
- (void)setContentConnectionTlsHandshakeDurationInMs:(unsigned int)ms;
- (void)setContentFirstSegmentDurationInMs:(unsigned int)ms;
- (void)setEndPointType:(int)type;
- (void)setFormatBitDepth:(unsigned int)depth;
- (void)setFormatBitrate:(unsigned int)bitrate;
- (void)setFormatChannels:(unsigned int)channels;
- (void)setFormatCodec:(int)codec;
- (void)setFormatLayout:(int)layout;
- (void)setFormatLayoutValue:(unsigned int)value;
- (void)setFormatSampleRate:(unsigned int)rate;
- (void)setFormatTier:(int)tier;
- (void)setHasBagWaitTime:(BOOL)time;
- (void)setHasLeaseWaitTime:(BOOL)time;
- (void)setHasLookupWaitTime:(BOOL)time;
- (void)setHasMediaRedownloadWaitTime:(BOOL)time;
- (void)setHasSubscriptionAssetLoadWaitTime:(BOOL)time;
- (void)setHasSuzeLeaseWaitTime:(BOOL)time;
- (void)setIsAccountDataReady:(BOOL)ready;
- (void)setIsAutoPlay:(BOOL)play;
- (void)setIsDelegatedPlayback:(BOOL)playback;
- (void)setIsFirstPlayAfterAppLaunch:(BOOL)launch;
- (void)setIsHlsKeysReady:(BOOL)ready;
- (void)setIsInterruptingPlayback:(BOOL)playback;
- (void)setIsLeaseReady:(BOOL)ready;
- (void)setIsMiniSinfAvailable:(BOOL)available;
- (void)setIsNonDefaultUser:(BOOL)user;
- (void)setIsOfflineKeyReady:(BOOL)ready;
- (void)setIsOnlineKeyReady:(BOOL)ready;
- (void)setIsPrimaryUser:(BOOL)user;
- (void)setIsRemoteSetQueue:(BOOL)queue;
- (void)setIsSharePlayPlayback:(BOOL)playback;
- (void)setIsShuffled:(BOOL)shuffled;
- (void)setIsStoreBagReady:(BOOL)ready;
- (void)setIsSuzeLease:(BOOL)lease;
- (void)setMusicDomain:(int)domain;
- (void)setNetworkConnectionType:(int)type;
- (void)setNumberOfSpeakers:(unsigned int)speakers;
- (void)setPrefetchedMetadataSource:(int)source;
- (void)setPrimaryPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)ms;
- (void)setPrimaryPlaylistRequestDurationInMs:(unsigned int)ms;
- (void)setQueueSize:(unsigned int)size;
- (void)setQueueType:(int)type;
- (void)setRouteConfiguration:(int)configuration;
- (void)setRouteType:(int)type;
- (void)setStreamingContentType:(int)type;
- (void)setSubPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)ms;
- (void)setSubPlaylistRequestDurationInMs:(unsigned int)ms;
- (void)setSubscriptionType:(int)type;
- (void)setWasMediaLibraryDatabaseUpgraded:(BOOL)upgraded;
@end

@implementation SASelfLoggerMWTMusicMetadata

- (int)musicDomain
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMusicDomain:(int)domain
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  *(self + v5) = domain;
}

- (int)queueType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQueueType:(int)type
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (unsigned)queueSize
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQueueSize:(unsigned int)size
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  *(self + v5) = size;
}

- (BOOL)isShuffled
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsShuffled:(BOOL)shuffled
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  *(self + v5) = shuffled;
}

- (int)prefetchedMetadataSource
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrefetchedMetadataSource:(int)source
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  *(self + v5) = source;
}

- (int)assetEndPoint
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAssetEndPoint:(int)point
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  *(self + v5) = point;
}

- (int)streamingContentType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStreamingContentType:(int)type
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (int)formatCodec
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatCodec:(int)codec
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  *(self + v5) = codec;
}

- (unsigned)formatBitrate
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatBitrate:(unsigned int)bitrate
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  *(self + v5) = bitrate;
}

- (unsigned)formatBitDepth
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatBitDepth:(unsigned int)depth
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  *(self + v5) = depth;
}

- (unsigned)formatChannels
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatChannels:(unsigned int)channels
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  *(self + v5) = channels;
}

- (int)formatLayout
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatLayout:(int)layout
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  *(self + v5) = layout;
}

- (unsigned)formatSampleRate
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatSampleRate:(unsigned int)rate
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  *(self + v5) = rate;
}

- (int)formatTier
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatTier:(int)tier
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  *(self + v5) = tier;
}

- (unsigned)numberOfSpeakers
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfSpeakers:(unsigned int)speakers
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  *(self + v5) = speakers;
}

- (int)routeConfiguration
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRouteConfiguration:(int)configuration
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  *(self + v5) = configuration;
}

- (BOOL)isAccountDataReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAccountDataReady:(BOOL)ready
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  *(self + v5) = ready;
}

- (BOOL)isStoreBagReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsStoreBagReady:(BOOL)ready
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  *(self + v5) = ready;
}

- (BOOL)isLeaseReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLeaseReady:(BOOL)ready
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  *(self + v5) = ready;
}

- (BOOL)isOnlineKeyReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsOnlineKeyReady:(BOOL)ready
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  *(self + v5) = ready;
}

- (BOOL)isOfflineKeyReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsOfflineKeyReady:(BOOL)ready
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  *(self + v5) = ready;
}

- (BOOL)isHlsKeysReady
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsHlsKeysReady:(BOOL)ready
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  *(self + v5) = ready;
}

- (BOOL)isInterruptingPlayback
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsInterruptingPlayback:(BOOL)playback
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  *(self + v5) = playback;
}

- (BOOL)isRemoteSetQueue
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsRemoteSetQueue:(BOOL)queue
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  *(self + v5) = queue;
}

- (BOOL)isDelegatedPlayback
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsDelegatedPlayback:(BOOL)playback
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  *(self + v5) = playback;
}

- (BOOL)isNonDefaultUser
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsNonDefaultUser:(BOOL)user
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  *(self + v5) = user;
}

- (BOOL)isAutoPlay
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAutoPlay:(BOOL)play
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  *(self + v5) = play;
}

- (BOOL)isFirstPlayAfterAppLaunch
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFirstPlayAfterAppLaunch:(BOOL)launch
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  *(self + v5) = launch;
}

- (BOOL)isMiniSinfAvailable
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsMiniSinfAvailable:(BOOL)available
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  *(self + v5) = available;
}

- (BOOL)isSharePlayPlayback
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSharePlayPlayback:(BOOL)playback
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  *(self + v5) = playback;
}

- (BOOL)isSuzeLease
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSuzeLease:(BOOL)lease
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  *(self + v5) = lease;
}

- (int)networkConnectionType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNetworkConnectionType:(int)type
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (BOOL)wasMediaLibraryDatabaseUpgraded
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWasMediaLibraryDatabaseUpgraded:(BOOL)upgraded
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  *(self + v5) = upgraded;
}

- (BOOL)isPrimaryUser
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsPrimaryUser:(BOOL)user
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  *(self + v5) = user;
}

- (int)endPointType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEndPointType:(int)type
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (int)routeType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRouteType:(int)type
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (unsigned)formatLayoutValue
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormatLayoutValue:(unsigned int)value
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  *(self + v5) = value;
}

- (int)assetSource
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAssetSource:(int)source
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  *(self + v5) = source;
}

- (int)assetLocation
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAssetLocation:(int)location
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  *(self + v5) = location;
}

- (int)subscriptionType
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubscriptionType:(int)type
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (BOOL)hasLookupWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasLookupWaitTime:(BOOL)time
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (BOOL)hasBagWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasBagWaitTime:(BOOL)time
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (BOOL)hasLeaseWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasLeaseWaitTime:(BOOL)time
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (BOOL)hasSuzeLeaseWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasSuzeLeaseWaitTime:(BOOL)time
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (BOOL)hasSubscriptionAssetLoadWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasSubscriptionAssetLoadWaitTime:(BOOL)time
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (BOOL)hasMediaRedownloadWaitTime
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHasMediaRedownloadWaitTime:(BOOL)time
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (unsigned)cmInitialStartupItemCreationToReadyToPlayDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCmInitialStartupItemCreationToReadyToPlayDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

- (unsigned)cmInitialStartupItemCreationToLtluDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCmInitialStartupItemCreationToLtluDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

- (unsigned)primaryPlaylistConnectionTlsHandshakeDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrimaryPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

- (unsigned)primaryPlaylistRequestDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPrimaryPlaylistRequestDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

- (unsigned)subPlaylistConnectionTlsHandshakeDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubPlaylistConnectionTlsHandshakeDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

- (unsigned)subPlaylistRequestDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSubPlaylistRequestDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

- (unsigned)contentConnectionTlsHandshakeDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentConnectionTlsHandshakeDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

- (unsigned)contentFirstSegmentDurationInMs
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentFirstSegmentDurationInMs:(unsigned int)ms
{
  v5 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  *(self + v5) = ms;
}

@end