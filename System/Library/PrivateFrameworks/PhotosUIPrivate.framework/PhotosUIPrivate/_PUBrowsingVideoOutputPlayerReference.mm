@interface _PUBrowsingVideoOutputPlayerReference
- (PUBrowsingVideoPlayer)player;
@end

@implementation _PUBrowsingVideoOutputPlayerReference

- (PUBrowsingVideoPlayer)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end