@interface TVRCNowPlayingInfo(TVRUIAdditions)
- (BOOL)tvrui_hasArtworkImage;
- (BOOL)tvrui_hasMetadata;
- (BOOL)tvrui_mediaIsIsPlaying;
- (BOOL)tvrui_mediaIsStopped;
- (id)tvrui_artworkImage;
- (id)tvrui_effectiveCanonicalID;
- (uint64_t)tvrui_hasActivePlayer;
- (uint64_t)tvrui_hasCanonicalID;
- (uint64_t)tvrui_hasUnknownCanonicalID;
- (uint64_t)tvrui_isSimpleCaptionStateUpdate;
- (uint64_t)tvrui_isSimplePlaybackRateUpdate;
- (uint64_t)tvrui_isSimplePlaybackStateUpdate;
@end

@implementation TVRCNowPlayingInfo(TVRUIAdditions)

- (BOOL)tvrui_hasMetadata
{
  metadata = [self metadata];
  v2 = metadata != 0;

  return v2;
}

- (BOOL)tvrui_hasArtworkImage
{
  imageData = [self imageData];
  v2 = imageData != 0;

  return v2;
}

- (id)tvrui_artworkImage
{
  imageData = [self imageData];
  if (imageData)
  {
    v2 = [MEMORY[0x277D755B8] imageWithData:imageData];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)tvrui_hasActivePlayer
{
  playerIdentifier = [self playerIdentifier];
  v3 = playerIdentifier != 0;

  playerIdentifier2 = [self playerIdentifier];
  v5 = [playerIdentifier2 isEqualToString:*MEMORY[0x277D6C5A8]];

  return v3 & (v5 ^ 1u);
}

- (uint64_t)tvrui_isSimpleCaptionStateUpdate
{
  tvrui_hasArtworkImage = [self tvrui_hasArtworkImage];
  tvrui_hasMetadata = [self tvrui_hasMetadata];
  captionsEnabled = [self captionsEnabled];

  hasValidCaptionOptions = [self hasValidCaptionOptions];

  if (captionsEnabled)
  {
    v6 = hasValidCaptionOptions == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return v7 & ((tvrui_hasArtworkImage | tvrui_hasMetadata) ^ 1u);
}

- (uint64_t)tvrui_isSimplePlaybackRateUpdate
{
  selfCopy = self;
  tvrui_hasArtworkImage = [self tvrui_hasArtworkImage];
  tvrui_hasMetadata = [selfCopy tvrui_hasMetadata];
  playbackRate = [selfCopy playbackRate];
  LODWORD(selfCopy) = playbackRate != 0;

  return selfCopy & ((tvrui_hasArtworkImage | tvrui_hasMetadata) ^ 1);
}

- (uint64_t)tvrui_isSimplePlaybackStateUpdate
{
  selfCopy = self;
  tvrui_hasArtworkImage = [self tvrui_hasArtworkImage];
  tvrui_hasMetadata = [selfCopy tvrui_hasMetadata];
  playbackState = [selfCopy playbackState];
  LODWORD(selfCopy) = playbackState != 0;

  return selfCopy & ((tvrui_hasArtworkImage | tvrui_hasMetadata) ^ 1);
}

- (BOOL)tvrui_mediaIsStopped
{
  playbackState = [self playbackState];
  v2 = [playbackState integerValue] == 3;

  return v2;
}

- (BOOL)tvrui_mediaIsIsPlaying
{
  playbackState = [self playbackState];
  v2 = [playbackState integerValue] == 1;

  return v2;
}

- (uint64_t)tvrui_hasCanonicalID
{
  metadata = [self metadata];
  canonicalID = [metadata canonicalID];

  if ([canonicalID length])
  {
    v4 = [self tvrui_hasUnknownCanonicalID] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)tvrui_hasUnknownCanonicalID
{
  metadata = [self metadata];
  canonicalID = [metadata canonicalID];

  v3 = [canonicalID isEqualToString:*MEMORY[0x277D6C5B0]];
  return v3;
}

- (id)tvrui_effectiveCanonicalID
{
  if ([self tvrui_hasUnknownCanonicalID])
  {
    canonicalID = 0;
  }

  else
  {
    metadata = [self metadata];
    canonicalID = [metadata canonicalID];
  }

  return canonicalID;
}

@end