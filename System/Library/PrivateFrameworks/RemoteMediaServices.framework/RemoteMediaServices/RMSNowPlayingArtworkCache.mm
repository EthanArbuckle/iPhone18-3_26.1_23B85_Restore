@interface RMSNowPlayingArtworkCache
+ (id)sharedArtworkCache;
- (RMSNowPlayingArtworkCache)init;
- (id)artworkDataForIdentifier:(id)identifier;
- (id)artworkDataForNowPlayingInfo:(id)info;
- (void)setArtworkData:(id)data forIdentifier:(id)identifier;
- (void)setArtworkData:(id)data forNowPlayingInfo:(id)info;
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

- (id)artworkDataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSCache *)self->_cache objectForKey:identifierCopy];
  artworkData = [v5 artworkData];
  v7 = artworkData;
  if (artworkData)
  {
    artworkData2 = artworkData;
LABEL_5:
    v11 = artworkData2;
    goto LABEL_6;
  }

  artworkIdentifier = [(_RMSNowPlayingArtworkCacheItem *)self->_lastItem artworkIdentifier];
  v10 = [identifierCopy isEqualToString:artworkIdentifier];

  if (v10)
  {
    artworkData2 = [(_RMSNowPlayingArtworkCacheItem *)self->_lastItem artworkData];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)artworkDataForNowPlayingInfo:(id)info
{
  artworkIdentifier = [info artworkIdentifier];
  v5 = [(RMSNowPlayingArtworkCache *)self artworkDataForIdentifier:artworkIdentifier];

  return v5;
}

- (void)setArtworkData:(id)data forIdentifier:(id)identifier
{
  if (data && identifier)
  {
    lastItem = self->_lastItem;
    identifierCopy = identifier;
    dataCopy = data;
    [(_RMSNowPlayingArtworkCacheItem *)lastItem endContentAccess];
    v9 = objc_opt_new();
    [(_RMSNowPlayingArtworkCacheItem *)v9 setArtworkData:dataCopy];

    [(_RMSNowPlayingArtworkCacheItem *)v9 setArtworkIdentifier:identifierCopy];
    [(_RMSNowPlayingArtworkCacheItem *)v9 beginContentAccess];
    [(NSCache *)self->_cache setObject:v9 forKey:identifierCopy];

    v10 = self->_lastItem;
    self->_lastItem = v9;
  }
}

- (void)setArtworkData:(id)data forNowPlayingInfo:(id)info
{
  dataCopy = data;
  artworkIdentifier = [info artworkIdentifier];
  [(RMSNowPlayingArtworkCache *)self setArtworkData:dataCopy forIdentifier:artworkIdentifier];
}

@end