@interface _PXTrimToolPlayerWrapperAVPlayerView
- (_PXTrimToolPlayerWrapperAVPlayerView)initWithPlayer:(id)player;
@end

@implementation _PXTrimToolPlayerWrapperAVPlayerView

- (_PXTrimToolPlayerWrapperAVPlayerView)initWithPlayer:(id)player
{
  playerCopy = player;
  v9.receiver = self;
  v9.super_class = _PXTrimToolPlayerWrapperAVPlayerView;
  v5 = [(_PXTrimToolPlayerWrapperAVPlayerView *)&v9 init];
  v6 = v5;
  if (v5)
  {
    playerLayer = [(_PXTrimToolPlayerWrapperAVPlayerView *)v5 playerLayer];
    [playerLayer setPlayer:playerCopy];
  }

  return v6;
}

@end