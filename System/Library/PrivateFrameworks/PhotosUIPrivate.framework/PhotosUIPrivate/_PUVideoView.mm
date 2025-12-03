@interface _PUVideoView
- (void)setPlayer:(id)player;
@end

@implementation _PUVideoView

- (void)setPlayer:(id)player
{
  playerCopy = player;
  objc_storeStrong(&self->_player, player);
  layer = [(_PUVideoView *)self layer];
  [playerCopy attachToPlayerLayerIfNeeded:layer];

  v6 = playerCopy;
  if (!playerCopy)
  {
    layer2 = [(_PUVideoView *)self layer];
    [layer2 setWrappedPlayer:0];

    v6 = 0;
  }
}

@end