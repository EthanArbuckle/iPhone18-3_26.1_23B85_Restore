@interface MTAVAssetCache
+ (void)_asyncPrewarm;
- (MTAVAssetCache)init;
@end

@implementation MTAVAssetCache

- (MTAVAssetCache)init
{
  v16.receiver = self;
  v16.super_class = MTAVAssetCache;
  v2 = [(MTAVAssetCache *)&v16 init];
  if (v2)
  {
    v3 = +[MTAVAssetCachePlatformConfiguration platformConfiguration];
    v5 = v4;
    v6 = NSTemporaryDirectory();
    v7 = [v6 stringByAppendingPathComponent:@"PodcastsAVAssetCache"];

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 fileExistsAtPath:v7];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AC08] defaultManager];
      [v10 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v11 = MEMORY[0x1E6987E30];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    v13 = [v11 assetCacheWithURL:v12];
    assetCache = v2->_assetCache;
    v2->_assetCache = v13;

    [(AVAssetCache *)v2->_assetCache setMaxEntrySize:v3];
    [(AVAssetCache *)v2->_assetCache setMaxSize:v5];
  }

  return v2;
}

+ (void)_asyncPrewarm
{
  v2 = dispatch_get_global_queue(21, 0);
  dispatch_async(v2, &__block_literal_global_17);
}

@end