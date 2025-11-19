@interface PXGLayout(MinPlayableSize)
- (double)minPlayableSizeForSpriteAtIndex:()MinPlayableSize;
@end

@implementation PXGLayout(MinPlayableSize)

- (double)minPlayableSizeForSpriteAtIndex:()MinPlayableSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1A561E057;
  v12 = *off_1E7722230;
  if ([a1 numberOfSprites] > a3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__PXGLayout_MinPlayableSize__minPlayableSizeForSpriteAtIndex___block_invoke;
    v7[3] = &unk_1E773D998;
    v7[4] = &v8;
    [a1 enumerateLayoutsForSpritesInRange:a3 | 0x100000000 options:1 usingBlock:v7];
  }

  v5 = v9[4];
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end