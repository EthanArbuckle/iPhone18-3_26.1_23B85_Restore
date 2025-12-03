@interface PLAssetImageGenerator
- (PLAssetImageGenerator)initWithAsset:(id)asset;
- (void)dealloc;
@end

@implementation PLAssetImageGenerator

- (void)dealloc
{
  [(AVAssetImageGenerator *)[(PLAssetImageGenerator *)self imageGenerator] cancelAllCGImageGeneration];
  [(PLAssetImageGenerator *)self setImageGenerator:0];
  v3.receiver = self;
  v3.super_class = PLAssetImageGenerator;
  [(PLAssetImageGenerator *)&v3 dealloc];
}

- (PLAssetImageGenerator)initWithAsset:(id)asset
{
  v6.receiver = self;
  v6.super_class = PLAssetImageGenerator;
  v4 = [(PLAssetImageGenerator *)&v6 init];
  if (v4)
  {
    -[PLAssetImageGenerator setImageGenerator:](v4, "setImageGenerator:", [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:asset]);
  }

  return v4;
}

@end