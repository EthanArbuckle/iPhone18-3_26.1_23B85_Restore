@interface PLTableThumbnailVirtualResource
- (int64_t)dataLength;
@end

@implementation PLTableThumbnailVirtualResource

- (int64_t)dataLength
{
  v3 = [(PLVirtualResource *)self unorientedWidth];
  v4 = [(PLVirtualResource *)self unorientedHeight];
  v5 = [(PLVirtualResource *)self recipeID];
  v6 = [MEMORY[0x1E69BF260] formatWithID:v5 >> 1];
  v7 = [v6 tableFormatBytesPerRowForWidth:v4] * v3 + 28;

  return v7;
}

@end