@interface PUCAMReviewAssetsFigDecodeItem
- (PUCAMReviewAssetsFigDecodeItem)initWithImageURL:(id)a3 targetSize:(CGSize)a4;
- (id)decodeSessionOptions;
@end

@implementation PUCAMReviewAssetsFigDecodeItem

- (id)decodeSessionOptions
{
  v7.receiver = self;
  v7.super_class = PUCAMReviewAssetsFigDecodeItem;
  v3 = [(PLFigPreheatItem *)&v7 initialDecodeSessionOptions];
  v6.receiver = self;
  v6.super_class = PUCAMReviewAssetsFigDecodeItem;
  v4 = [(PLFigPreheatItem *)&v6 decodeSessionOptions];
  [v3 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6991AC0]];
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  return v3;
}

- (PUCAMReviewAssetsFigDecodeItem)initWithImageURL:(id)a3 targetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [a3 path];
  v10.receiver = self;
  v10.super_class = PUCAMReviewAssetsFigDecodeItem;
  v8 = [(PLFigPreheatItem *)&v10 initWithImagePath:v7 format:10000 imageType:0 optimalSourcePixelSize:3 options:width, height];

  return v8;
}

@end