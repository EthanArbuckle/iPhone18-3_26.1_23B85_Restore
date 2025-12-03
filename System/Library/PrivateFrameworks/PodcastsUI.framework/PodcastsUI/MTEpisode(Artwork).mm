@interface MTEpisode(Artwork)
+ (id)artworkForEpisodeUuid:()Artwork size:triggerDownload:;
+ (uint64_t)isImageCachedForEpisodeUuid:()Artwork;
+ (void)downloadArtworkIfNeededForEpisodeUuid:()Artwork successCallback:;
- (id)artworkWithSize:()Artwork;
- (id)playStatusImageForDarkBackground:()Artwork;
- (id)playStatusImageForTheme:()Artwork;
@end

@implementation MTEpisode(Artwork)

+ (uint64_t)isImageCachedForEpisodeUuid:()Artwork
{
  v3 = a3;
  v4 = +[MTImageStore defaultStore];
  v5 = [v4 imageUrlForKey:v3];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = MEMORY[0x277D3DB38];
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];
    v10 = [v7 podcastUuidForEpisodeUuid:v3 ctx:mainOrPrivateContext];

    v6 = [MEMORY[0x277D3DB38] isImageCachedForPodcastUuid:v10];
  }

  return v6;
}

+ (id)artworkForEpisodeUuid:()Artwork size:triggerDownload:
{
  v9 = a5;
  v10 = +[MTImageStore defaultStore];
  v11 = [v10 imageForKey:v9 size:{self, a2}];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = MEMORY[0x277D3DB38];
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];
    v16 = [v13 podcastUuidForEpisodeUuid:v9 ctx:mainOrPrivateContext];

    v12 = [MEMORY[0x277D3DB38] artworkForPodcastUuid:v16 size:a6 triggerDownload:{self, a2}];
  }

  return v12;
}

+ (void)downloadArtworkIfNeededForEpisodeUuid:()Artwork successCallback:
{
  v5 = MEMORY[0x277D3DB38];
  v6 = MEMORY[0x277D3DAE8];
  v7 = a4;
  v8 = a3;
  sharedInstance = [v6 sharedInstance];
  mainOrPrivateContext = [sharedInstance mainOrPrivateContext];
  v11 = [v5 podcastUuidForEpisodeUuid:v8 ctx:mainOrPrivateContext];

  [MEMORY[0x277D3DB38] downloadArtworkForPodcastIfNeeded:v11 successCallback:v7];
}

- (id)artworkWithSize:()Artwork
{
  v6 = +[MTImageStore defaultStore];
  uuid = [self uuid];
  v8 = [v6 imageForKey:uuid size:{a2, a3}];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x277D3DB38];
    podcastUuid = [self podcastUuid];
    v9 = [v10 artworkForPodcastUuid:podcastUuid size:1 triggerDownload:{a2, a3}];
  }

  return v9;
}

- (id)playStatusImageForTheme:()Artwork
{
  v4 = a3;
  playState = [self playState];
  if (playState == 1)
  {
    v6 = [MEMORY[0x277D755B8] halfPlayedIconForTheme:v4];
  }

  else if (playState == 2)
  {
    v6 = [MEMORY[0x277D755B8] unplayedIconForTheme:v4];
  }

  else if ([self isPartiallyPlayedBackCatalogItem])
  {
    v6 = [MEMORY[0x277D755B8] backCatalogPartiallyPlayedIconForTheme:v4];
  }

  else
  {
    if ([self isBackCatalogItem])
    {
      [MEMORY[0x277D755B8] backCatalogIconForTheme:v4];
    }

    else
    {
      [MEMORY[0x277D755B8] playedIcon];
    }
    v6 = ;
  }

  v7 = v6;

  return v7;
}

- (id)playStatusImageForDarkBackground:()Artwork
{
  playState = [self playState];
  if (playState == 1)
  {
    v6 = [MEMORY[0x277D755B8] halfPlayedIconForDarkBackground:a3];
  }

  else if (playState == 2)
  {
    v6 = [MEMORY[0x277D755B8] unplayedIconForDarkBackground:a3];
  }

  else if ([self isPartiallyPlayedBackCatalogItem])
  {
    v6 = [MEMORY[0x277D755B8] backCatalogPartiallyPlayedIconForDarkBackground:a3];
  }

  else
  {
    if ([self isBackCatalogItem])
    {
      [MEMORY[0x277D755B8] backCatalogIconForDarkBackground:a3];
    }

    else
    {
      [MEMORY[0x277D755B8] playedIcon];
    }
    v6 = ;
  }

  return v6;
}

@end