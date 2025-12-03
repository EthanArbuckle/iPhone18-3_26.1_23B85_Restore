@interface PUCAMReviewAssetsFigDecodeItem
- (PUCAMReviewAssetsFigDecodeItem)initWithImageURL:(id)l targetSize:(CGSize)size;
- (id)decodeSessionOptions;
@end

@implementation PUCAMReviewAssetsFigDecodeItem

- (id)decodeSessionOptions
{
  v7.receiver = self;
  v7.super_class = PUCAMReviewAssetsFigDecodeItem;
  initialDecodeSessionOptions = [(PLFigPreheatItem *)&v7 initialDecodeSessionOptions];
  v6.receiver = self;
  v6.super_class = PUCAMReviewAssetsFigDecodeItem;
  decodeSessionOptions = [(PLFigPreheatItem *)&v6 decodeSessionOptions];
  [initialDecodeSessionOptions setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6991AC0]];
  if (decodeSessionOptions)
  {
    [initialDecodeSessionOptions addEntriesFromDictionary:decodeSessionOptions];
  }

  return initialDecodeSessionOptions;
}

- (PUCAMReviewAssetsFigDecodeItem)initWithImageURL:(id)l targetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  path = [l path];
  v10.receiver = self;
  v10.super_class = PUCAMReviewAssetsFigDecodeItem;
  height = [(PLFigPreheatItem *)&v10 initWithImagePath:path format:10000 imageType:0 optimalSourcePixelSize:3 options:width, height];

  return height;
}

@end