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
    v8 = [MEMORY[0x277D3DAE8] sharedInstance];
    v9 = [v8 mainOrPrivateContext];
    v10 = [v7 podcastUuidForEpisodeUuid:v3 ctx:v9];

    v6 = [MEMORY[0x277D3DB38] isImageCachedForPodcastUuid:v10];
  }

  return v6;
}

+ (id)artworkForEpisodeUuid:()Artwork size:triggerDownload:
{
  v9 = a5;
  v10 = +[MTImageStore defaultStore];
  v11 = [v10 imageForKey:v9 size:{a1, a2}];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = MEMORY[0x277D3DB38];
    v14 = [MEMORY[0x277D3DAE8] sharedInstance];
    v15 = [v14 mainOrPrivateContext];
    v16 = [v13 podcastUuidForEpisodeUuid:v9 ctx:v15];

    v12 = [MEMORY[0x277D3DB38] artworkForPodcastUuid:v16 size:a6 triggerDownload:{a1, a2}];
  }

  return v12;
}

+ (void)downloadArtworkIfNeededForEpisodeUuid:()Artwork successCallback:
{
  v5 = MEMORY[0x277D3DB38];
  v6 = MEMORY[0x277D3DAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedInstance];
  v10 = [v9 mainOrPrivateContext];
  v11 = [v5 podcastUuidForEpisodeUuid:v8 ctx:v10];

  [MEMORY[0x277D3DB38] downloadArtworkForPodcastIfNeeded:v11 successCallback:v7];
}

- (id)artworkWithSize:()Artwork
{
  v6 = +[MTImageStore defaultStore];
  v7 = [a1 uuid];
  v8 = [v6 imageForKey:v7 size:{a2, a3}];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = MEMORY[0x277D3DB38];
    v11 = [a1 podcastUuid];
    v9 = [v10 artworkForPodcastUuid:v11 size:1 triggerDownload:{a2, a3}];
  }

  return v9;
}

- (id)playStatusImageForTheme:()Artwork
{
  v4 = a3;
  v5 = [a1 playState];
  if (v5 == 1)
  {
    v6 = [MEMORY[0x277D755B8] halfPlayedIconForTheme:v4];
  }

  else if (v5 == 2)
  {
    v6 = [MEMORY[0x277D755B8] unplayedIconForTheme:v4];
  }

  else if ([a1 isPartiallyPlayedBackCatalogItem])
  {
    v6 = [MEMORY[0x277D755B8] backCatalogPartiallyPlayedIconForTheme:v4];
  }

  else
  {
    if ([a1 isBackCatalogItem])
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
  v5 = [a1 playState];
  if (v5 == 1)
  {
    v6 = [MEMORY[0x277D755B8] halfPlayedIconForDarkBackground:a3];
  }

  else if (v5 == 2)
  {
    v6 = [MEMORY[0x277D755B8] unplayedIconForDarkBackground:a3];
  }

  else if ([a1 isPartiallyPlayedBackCatalogItem])
  {
    v6 = [MEMORY[0x277D755B8] backCatalogPartiallyPlayedIconForDarkBackground:a3];
  }

  else
  {
    if ([a1 isBackCatalogItem])
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