@interface PLTableThumbnailVirtualResource
- (int64_t)dataLength;
@end

@implementation PLTableThumbnailVirtualResource

- (int64_t)dataLength
{
  unorientedWidth = [(PLVirtualResource *)self unorientedWidth];
  unorientedHeight = [(PLVirtualResource *)self unorientedHeight];
  recipeID = [(PLVirtualResource *)self recipeID];
  v6 = [MEMORY[0x1E69BF260] formatWithID:recipeID >> 1];
  v7 = [v6 tableFormatBytesPerRowForWidth:unorientedHeight] * unorientedWidth + 28;

  return v7;
}

@end