@interface _UIImageEmptyContent
- (CGSize)size;
- (CGSize)sizeInPixels;
- (id)renditionWithSize:(CGSize)a3 scale:(double)a4 renditionContext:(id)a5;
@end

@implementation _UIImageEmptyContent

- (CGSize)sizeInPixels
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)size
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)renditionWithSize:(CGSize)a3 scale:(double)a4 renditionContext:(id)a5
{
  v5 = [_UIImageContentProvider providerWithDrawingProvider:0 CGImageProvider:0 rbSymbolConfigurationProvider:?];
  v6 = [_UIImageContentRendition renditionWithContentProvider:v5];

  return v6;
}

@end