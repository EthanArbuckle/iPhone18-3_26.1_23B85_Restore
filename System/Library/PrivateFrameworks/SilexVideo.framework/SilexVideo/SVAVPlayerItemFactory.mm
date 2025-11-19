@interface SVAVPlayerItemFactory
- (SVAVPlayerItemFactory)initWithAutomaticallyLoadedAssetKeys:(id)a3 assetFactory:(id)a4 preferredForwardBufferDuration:(double)a5;
- (id)createPlayerItemWithURL:(id)a3;
@end

@implementation SVAVPlayerItemFactory

- (SVAVPlayerItemFactory)initWithAutomaticallyLoadedAssetKeys:(id)a3 assetFactory:(id)a4 preferredForwardBufferDuration:(double)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SVAVPlayerItemFactory;
  v10 = [(SVAVPlayerItemFactory *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    automaticallyLoadedAssetKeys = v10->_automaticallyLoadedAssetKeys;
    v10->_automaticallyLoadedAssetKeys = v11;

    objc_storeStrong(&v10->_assetFactory, a4);
    v10->_preferredForwardBufferDuration = a5;
  }

  return v10;
}

- (id)createPlayerItemWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SVAVPlayerItemFactory *)self assetFactory];
  v6 = [v5 createURLAssetWithURL:v4];

  v7 = MEMORY[0x277CE65B0];
  v8 = [(SVAVPlayerItemFactory *)self automaticallyLoadedAssetKeys];
  v9 = [v7 playerItemWithAsset:v6 automaticallyLoadedAssetKeys:v8];

  [(SVAVPlayerItemFactory *)self preferredForwardBufferDuration];
  [v9 setPreferredForwardBufferDuration:?];

  return v9;
}

@end