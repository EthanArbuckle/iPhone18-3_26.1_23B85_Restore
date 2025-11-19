@interface MTPodcast
@end

@implementation MTPodcast

void __65__MTPodcast_Artwork__fetchArtworkForPodcastUuid_size_completion___block_invoke(uint64_t a1)
{
  v2 = +[MTImageStore defaultStore];
  v3 = [v2 imageForKey:*(a1 + 32) size:{*(a1 + 56), *(a1 + 64)}];

  v4 = v3;
  if (!v3)
  {
    [*(a1 + 72) downloadArtworkForPodcastIfNeeded:*(a1 + 32) successCallback:0];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained _defaultPlaceholderArtworkWithSize:{*(a1 + 56), *(a1 + 64)}];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__MTPodcast_Artwork__fetchArtworkForPodcastUuid_size_completion___block_invoke_2;
  v7[3] = &unk_2782BE348;
  v10 = *(a1 + 40);
  v8 = v4;
  v9 = *(a1 + 32);
  v11 = v3 == 0;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __38__MTPodcast_Artwork___imageFetchQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.podcasts.podcast-artwork", MEMORY[0x277D85CD8]);
  v1 = _imageFetchQueue_queue;
  _imageFetchQueue_queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end