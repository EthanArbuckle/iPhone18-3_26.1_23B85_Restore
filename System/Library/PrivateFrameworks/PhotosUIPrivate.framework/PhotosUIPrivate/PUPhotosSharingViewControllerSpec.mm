@interface PUPhotosSharingViewControllerSpec
- (BOOL)embedsActivityViewForBounds:(CGRect)bounds horizontalSizeClass:(int64_t)class verticalSizeClass:(int64_t)sizeClass;
- (CGSize)optionBadgeSize;
- (CGSize)selectionBadgeSize;
- (UIOffset)selectionBadgeOffset;
@end

@implementation PUPhotosSharingViewControllerSpec

- (BOOL)embedsActivityViewForBounds:(CGRect)bounds horizontalSizeClass:(int64_t)class verticalSizeClass:(int64_t)sizeClass
{
  height = bounds.size.height;
  width = bounds.size.width;
  if (!_isPhone())
  {
    return 1;
  }

  if (height <= width)
  {
    return 0;
  }

  return PLIsTallScreen();
}

- (CGSize)optionBadgeSize
{
  if (optionBadgeSize_onceToken != -1)
  {
    dispatch_once(&optionBadgeSize_onceToken, &__block_literal_global_3);
  }

  v3 = *(&optionBadgeSize__s_maxSize + 1);
  v2 = *&optionBadgeSize__s_maxSize;
  result.height = v3;
  result.width = v2;
  return result;
}

void __52__PUPhotosSharingViewControllerSpec_optionBadgeSize__block_invoke()
{
  optionBadgeSize__s_maxSize = *MEMORY[0x1E695F060];
  v0 = objc_alloc(MEMORY[0x1E69C3BE0]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v1 setStyle:4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PUPhotosSharingViewControllerSpec_optionBadgeSize__block_invoke_2;
  aBlock[3] = &unk_1E7B7D150;
  v5 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);
  v3[2](v3, 64);
  v3[2](v3, 8388672);
  v3[2](v3, 16777280);
  v3[2](v3, 10485824);
  v3[2](v3, 18874432);
}

uint64_t __52__PUPhotosSharingViewControllerSpec_optionBadgeSize__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  PXAssetBadgeInfoCreateWithBadges();
  [v2 setBadgeInfo:&v6];
  [*(a1 + 32) sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  result = PXSizeMax();
  *&optionBadgeSize__s_maxSize = v4;
  *(&optionBadgeSize__s_maxSize + 1) = v5;
  return result;
}

- (UIOffset)selectionBadgeOffset
{
  v2 = 8.0;
  v3 = 8.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (CGSize)selectionBadgeSize
{
  if (selectionBadgeSize_onceToken != -1)
  {
    dispatch_once(&selectionBadgeSize_onceToken, &__block_literal_global_68438);
  }

  v2 = *&selectionBadgeSize_selectionBadgeSize_0;
  v3 = *&selectionBadgeSize_selectionBadgeSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __55__PUPhotosSharingViewControllerSpec_selectionBadgeSize__block_invoke()
{
  v2 = [MEMORY[0x1E69DD250] px_circularGlyphViewWithName:@"circle" backgroundColor:0];
  [v2 frame];
  selectionBadgeSize_selectionBadgeSize_0 = v0;
  selectionBadgeSize_selectionBadgeSize_1 = v1;
}

@end