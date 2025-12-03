@interface SVAVPlayerItemFactory
- (SVAVPlayerItemFactory)initWithAutomaticallyLoadedAssetKeys:(id)keys assetFactory:(id)factory preferredForwardBufferDuration:(double)duration;
- (id)createPlayerItemWithURL:(id)l;
@end

@implementation SVAVPlayerItemFactory

- (SVAVPlayerItemFactory)initWithAutomaticallyLoadedAssetKeys:(id)keys assetFactory:(id)factory preferredForwardBufferDuration:(double)duration
{
  keysCopy = keys;
  factoryCopy = factory;
  v14.receiver = self;
  v14.super_class = SVAVPlayerItemFactory;
  v10 = [(SVAVPlayerItemFactory *)&v14 init];
  if (v10)
  {
    v11 = [keysCopy copy];
    automaticallyLoadedAssetKeys = v10->_automaticallyLoadedAssetKeys;
    v10->_automaticallyLoadedAssetKeys = v11;

    objc_storeStrong(&v10->_assetFactory, factory);
    v10->_preferredForwardBufferDuration = duration;
  }

  return v10;
}

- (id)createPlayerItemWithURL:(id)l
{
  lCopy = l;
  assetFactory = [(SVAVPlayerItemFactory *)self assetFactory];
  v6 = [assetFactory createURLAssetWithURL:lCopy];

  v7 = MEMORY[0x277CE65B0];
  automaticallyLoadedAssetKeys = [(SVAVPlayerItemFactory *)self automaticallyLoadedAssetKeys];
  v9 = [v7 playerItemWithAsset:v6 automaticallyLoadedAssetKeys:automaticallyLoadedAssetKeys];

  [(SVAVPlayerItemFactory *)self preferredForwardBufferDuration];
  [v9 setPreferredForwardBufferDuration:?];

  return v9;
}

@end