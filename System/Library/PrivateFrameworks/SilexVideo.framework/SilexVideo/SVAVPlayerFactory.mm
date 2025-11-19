@interface SVAVPlayerFactory
- (SVAVPlayerFactory)initWithAudioMode:(int)a3 playerItemFactory:(id)a4;
- (id)createPlayerWithURL:(id)a3;
@end

@implementation SVAVPlayerFactory

- (SVAVPlayerFactory)initWithAudioMode:(int)a3 playerItemFactory:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SVAVPlayerFactory;
  v8 = [(SVAVPlayerFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_audioMode = a3;
    objc_storeStrong(&v8->_playerItemFactory, a4);
  }

  return v9;
}

- (id)createPlayerWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SVAVPlayerFactory *)self playerItemFactory];
  v6 = [v5 createPlayerItemWithURL:v4];

  v7 = [[SVAVPlayer alloc] initWithPlayerItem:v6 audioMode:[(SVAVPlayerFactory *)self audioMode]];

  return v7;
}

@end