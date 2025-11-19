@interface _RMSNowPlayingArtworkCacheItem
- (BOOL)beginContentAccess;
- (void)discardContentIfPossible;
@end

@implementation _RMSNowPlayingArtworkCacheItem

- (BOOL)beginContentAccess
{
  artworkData = self->_artworkData;
  if (artworkData)
  {
    self->_keepAlive = 1;
  }

  return artworkData != 0;
}

- (void)discardContentIfPossible
{
  if (!self->_keepAlive)
  {
    self->_artworkData = 0;
    MEMORY[0x2821F96F8]();
  }
}

@end