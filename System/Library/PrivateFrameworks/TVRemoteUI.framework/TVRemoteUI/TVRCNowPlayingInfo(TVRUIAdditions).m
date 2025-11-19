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
  v1 = [a1 metadata];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)tvrui_hasArtworkImage
{
  v1 = [a1 imageData];
  v2 = v1 != 0;

  return v2;
}

- (id)tvrui_artworkImage
{
  v1 = [a1 imageData];
  if (v1)
  {
    v2 = [MEMORY[0x277D755B8] imageWithData:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)tvrui_hasActivePlayer
{
  v2 = [a1 playerIdentifier];
  v3 = v2 != 0;

  v4 = [a1 playerIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277D6C5A8]];

  return v3 & (v5 ^ 1u);
}

- (uint64_t)tvrui_isSimpleCaptionStateUpdate
{
  v2 = [a1 tvrui_hasArtworkImage];
  v3 = [a1 tvrui_hasMetadata];
  v4 = [a1 captionsEnabled];

  v5 = [a1 hasValidCaptionOptions];

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return v7 & ((v2 | v3) ^ 1u);
}

- (uint64_t)tvrui_isSimplePlaybackRateUpdate
{
  v1 = a1;
  v2 = [a1 tvrui_hasArtworkImage];
  v3 = [v1 tvrui_hasMetadata];
  v4 = [v1 playbackRate];
  LODWORD(v1) = v4 != 0;

  return v1 & ((v2 | v3) ^ 1);
}

- (uint64_t)tvrui_isSimplePlaybackStateUpdate
{
  v1 = a1;
  v2 = [a1 tvrui_hasArtworkImage];
  v3 = [v1 tvrui_hasMetadata];
  v4 = [v1 playbackState];
  LODWORD(v1) = v4 != 0;

  return v1 & ((v2 | v3) ^ 1);
}

- (BOOL)tvrui_mediaIsStopped
{
  v1 = [a1 playbackState];
  v2 = [v1 integerValue] == 3;

  return v2;
}

- (BOOL)tvrui_mediaIsIsPlaying
{
  v1 = [a1 playbackState];
  v2 = [v1 integerValue] == 1;

  return v2;
}

- (uint64_t)tvrui_hasCanonicalID
{
  v2 = [a1 metadata];
  v3 = [v2 canonicalID];

  if ([v3 length])
  {
    v4 = [a1 tvrui_hasUnknownCanonicalID] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)tvrui_hasUnknownCanonicalID
{
  v1 = [a1 metadata];
  v2 = [v1 canonicalID];

  v3 = [v2 isEqualToString:*MEMORY[0x277D6C5B0]];
  return v3;
}

- (id)tvrui_effectiveCanonicalID
{
  if ([a1 tvrui_hasUnknownCanonicalID])
  {
    v2 = 0;
  }

  else
  {
    v3 = [a1 metadata];
    v2 = [v3 canonicalID];
  }

  return v2;
}

@end