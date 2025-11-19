@interface MTPodcast(Artwork)
+ (BOOL)isImageCachedForPodcastUuid:()Artwork;
+ (id)_defaultPlaceholderArtworkWithSize:()Artwork;
+ (id)_imageFetchQueue;
+ (id)artworkForPodcastUuid:()Artwork size:triggerDownload:;
+ (id)colorFromHexString:()Artwork;
+ (void)asyncDiskArtworkForPodcastUuid:()Artwork size:completion:;
+ (void)downloadArtworkForPodcastIfNeeded:()Artwork successCallback:;
+ (void)fetchArtworkForPodcastUuid:()Artwork size:completion:;
- (id)artworkWithSize:()Artwork;
- (void)fetchArtworkWithSize:()Artwork completion:;
@end

@implementation MTPodcast(Artwork)

+ (BOOL)isImageCachedForPodcastUuid:()Artwork
{
  v3 = a3;
  v4 = +[MTImageStore defaultStore];
  v5 = [v4 imageUrlForKey:v3];

  return v5 != 0;
}

+ (id)artworkForPodcastUuid:()Artwork size:triggerDownload:
{
  v10 = a5;
  v11 = +[MTImageStore defaultStore];
  v12 = [v11 imageForKey:v10 size:{a2, a3}];

  if (!v12)
  {
    if (a6)
    {
      [a1 downloadArtworkForPodcastIfNeeded:v10 successCallback:0];
    }

    v12 = [a1 _defaultPlaceholderArtworkWithSize:{a2, a3}];
  }

  return v12;
}

+ (void)fetchArtworkForPodcastUuid:()Artwork size:completion:
{
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    objc_initWeak(&location, a1);
    v12 = [a1 _imageFetchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__MTPodcast_Artwork__fetchArtworkForPodcastUuid_size_completion___block_invoke;
    block[3] = &unk_2782BE370;
    v14 = v10;
    v16[1] = *&a2;
    v16[2] = *&a3;
    v16[3] = a1;
    objc_copyWeak(v16, &location);
    v15 = v11;
    dispatch_async(v12, block);

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

+ (void)asyncDiskArtworkForPodcastUuid:()Artwork size:completion:
{
  v10 = a5;
  v11 = a6;
  v12 = +[MTImageStore defaultStore];
  v13 = [v12 imageUrlForKey:v10];

  if (v13)
  {
    if (a2 >= a3)
    {
      a3 = a2;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__MTPodcast_Artwork__asyncDiskArtworkForPodcastUuid_size_completion___block_invoke;
    v15[3] = &unk_2782BE398;
    v16 = v11;
    [v12 asyncImageForKey:v10 squareDimension:0 cacheKeyModifier:v15 completionHandler:a3];
  }

  else
  {
    v14 = [a1 _defaultPlaceholderArtworkWithSize:{a2, a3}];
    (*(v11 + 2))(v11, v14);
  }
}

+ (void)downloadArtworkForPodcastIfNeeded:()Artwork successCallback:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__block_literal_global_5;
  }

  if ([a1 isImageCachedForPodcastUuid:v6])
  {
    v8[2](v8, 1);
  }

  else
  {
    v9 = +[(MTSingleton *)MTImageDownloader];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__MTPodcast_Artwork__downloadArtworkForPodcastIfNeeded_successCallback___block_invoke_2;
    v10[3] = &unk_2782BE3E0;
    v11 = v8;
    [v9 downloadImageForPodcastUuid:v6 userInitiated:1 backgroundFetch:0 callback:v10];
  }
}

- (id)artworkWithSize:()Artwork
{
  v6 = objc_opt_class();
  v7 = [a1 uuid];
  v8 = [v6 artworkForPodcastUuid:v7 size:1 triggerDownload:{a2, a3}];

  return v8;
}

- (void)fetchArtworkWithSize:()Artwork completion:
{
  v8 = a5;
  v9 = objc_opt_class();
  v10 = [a1 uuid];
  [v9 fetchArtworkForPodcastUuid:v10 size:v8 completion:{a2, a3}];
}

+ (id)_defaultPlaceholderArtworkWithSize:()Artwork
{
  v4 = +[MTImageStore defaultStore];
  v5 = [v4 imageForKey:*MEMORY[0x277D3DD30] size:{a1, a2}];

  return v5;
}

+ (id)_imageFetchQueue
{
  if (_imageFetchQueue_onceToken != -1)
  {
    +[MTPodcast(Artwork) _imageFetchQueue];
  }

  v1 = _imageFetchQueue_queue;

  return v1;
}

+ (id)colorFromHexString:()Artwork
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC80] scannerWithString:?];
  [v0 scanHexInt:&v3];
  v1 = [MEMORY[0x277D75348] colorWithRed:BYTE2(v3) / 255.0 green:BYTE1(v3) / 255.0 blue:v3 / 255.0 alpha:1.0];

  return v1;
}

@end