@interface SVAVPlayerFactory
- (SVAVPlayerFactory)initWithAudioMode:(int)mode playerItemFactory:(id)factory;
- (id)createPlayerWithURL:(id)l;
@end

@implementation SVAVPlayerFactory

- (SVAVPlayerFactory)initWithAudioMode:(int)mode playerItemFactory:(id)factory
{
  factoryCopy = factory;
  v11.receiver = self;
  v11.super_class = SVAVPlayerFactory;
  v8 = [(SVAVPlayerFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_audioMode = mode;
    objc_storeStrong(&v8->_playerItemFactory, factory);
  }

  return v9;
}

- (id)createPlayerWithURL:(id)l
{
  lCopy = l;
  playerItemFactory = [(SVAVPlayerFactory *)self playerItemFactory];
  v6 = [playerItemFactory createPlayerItemWithURL:lCopy];

  v7 = [[SVAVPlayer alloc] initWithPlayerItem:v6 audioMode:[(SVAVPlayerFactory *)self audioMode]];

  return v7;
}

@end