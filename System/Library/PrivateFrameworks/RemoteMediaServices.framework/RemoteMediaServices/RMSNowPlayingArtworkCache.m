@interface RMSNowPlayingArtworkCache
+ (id)sharedArtworkCache;
- (RMSNowPlayingArtworkCache)init;
- (id)artworkDataForIdentifier:(id)a3;
- (id)artworkDataForNowPlayingInfo:(id)a3;
- (void)setArtworkData:(id)a3 forIdentifier:(id)a4;
- (void)setArtworkData:(id)a3 forNowPlayingInfo:(id)a4;
@end

@implementation RMSNowPlayingArtworkCache

+ (id)sharedArtworkCache
{
  if (sharedArtworkCache_onceToken != -1)
  {
    +[RMSNowPlayingArtworkCache sharedArtworkCache];
  }

  v3 = sharedArtworkCache_sharedArtworkCache;

  return v3;
}

uint64_t __47__RMSNowPlayingArtworkCache_sharedArtworkCache__block_invoke()
{
  sharedArtworkCache_sharedArtworkCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (RMSNowPlayingArtworkCache)init
{
  v6.receiver = self;
  v6.super_class = RMSNowPlayingArtworkCache;
  v2 = [(RMSNowPlayingArtworkCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:5];
    [(NSCache *)v2->_cache setEvictsObjectsWithDiscardedContent:0];
  }

  return v2;
}

- (id)artworkDataForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_cache objectForKey:v4];
  v6 = [v5 artworkData];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_5:
    v11 = v8;
    goto LABEL_6;
  }

  v9 = [(_RMSNowPlayingArtworkCacheItem *)self->_lastItem artworkIdentifier];
  v10 = [v4 isEqualToString:v9];

  if (v10)
  {
    v8 = [(_RMSNowPlayingArtworkCacheItem *)self->_lastItem artworkData];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)artworkDataForNowPlayingInfo:(id)a3
{
  v4 = [a3 artworkIdentifier];
  v5 = [(RMSNowPlayingArtworkCache *)self artworkDataForIdentifier:v4];

  return v5;
}

- (void)setArtworkData:(id)a3 forIdentifier:(id)a4
{
  if (a3 && a4)
  {
    lastItem = self->_lastItem;
    v7 = a4;
    v8 = a3;
    [(_RMSNowPlayingArtworkCacheItem *)lastItem endContentAccess];
    v9 = objc_opt_new();
    [(_RMSNowPlayingArtworkCacheItem *)v9 setArtworkData:v8];

    [(_RMSNowPlayingArtworkCacheItem *)v9 setArtworkIdentifier:v7];
    [(_RMSNowPlayingArtworkCacheItem *)v9 beginContentAccess];
    [(NSCache *)self->_cache setObject:v9 forKey:v7];

    v10 = self->_lastItem;
    self->_lastItem = v9;
  }
}

- (void)setArtworkData:(id)a3 forNowPlayingInfo:(id)a4
{
  v6 = a3;
  v7 = [a4 artworkIdentifier];
  [(RMSNowPlayingArtworkCache *)self setArtworkData:v6 forIdentifier:v7];
}

@end