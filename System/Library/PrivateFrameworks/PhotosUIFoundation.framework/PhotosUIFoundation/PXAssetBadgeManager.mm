@interface PXAssetBadgeManager
+ (PXAssetBadgeManager)defaultManager;
- (PXAssetBadgeInfo)badgeInfoForAsset:(SEL)asset inCollection:(id)collection options:(id)options;
- (PXAssetBadgeInfo)badgeInfoForCollection:(SEL)collection options:(id)options;
@end

@implementation PXAssetBadgeManager

+ (PXAssetBadgeManager)defaultManager
{
  if (defaultManager_onceToken_7176 != -1)
  {
    dispatch_once(&defaultManager_onceToken_7176, &__block_literal_global_7177);
  }

  v3 = defaultManager_defaultManager_7178;

  return v3;
}

uint64_t __37__PXAssetBadgeManager_defaultManager__block_invoke()
{
  if (objc_opt_respondsToSelector())
  {
    v0 = +[PXAssetBadgeManager px_createConcreteBadgeManager];
  }

  else
  {
    v0 = objc_alloc_init(PXAssetBadgeManager);
  }

  defaultManager_defaultManager_7178 = v0;

  return MEMORY[0x1EEE66BB8]();
}

- (PXAssetBadgeInfo)badgeInfoForCollection:(SEL)collection options:(id)options
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  optionsCopy = options;
  if ([optionsCopy px_isFavoritesSmartAlbum])
  {
    retstr->var0 = 1;
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  px_isPanoramasSmartAlbum = [optionsCopy px_isPanoramasSmartAlbum];

  if (px_isPanoramasSmartAlbum)
  {
    retstr->var0 = v7;
  }

  return result;
}

- (PXAssetBadgeInfo)badgeInfoForAsset:(SEL)asset inCollection:(id)collection options:(id)options
{
  v6 = a6;
  collectionCopy = collection;
  optionsCopy = options;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  if (!collectionCopy)
  {
    goto LABEL_31;
  }

  mediaSubtypes = [collectionCopy mediaSubtypes];
  if (objc_opt_respondsToSelector())
  {
    playbackStyle = [collectionCopy playbackStyle];
  }

  else
  {
    playbackStyle = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    playbackVariation = [collectionCopy playbackVariation];
  }

  else
  {
    playbackVariation = 0;
  }

  isFavorite = [collectionCopy isFavorite];
  v14 = isFavorite & 0xFFFFFFF9 | (2 * (mediaSubtypes & 3)) | (mediaSubtypes >> 10) & 0x400 | mediaSubtypes & 0x10;
  if ((isFavorite & 1) != 0 || (mediaSubtypes & 0x100013) != 0)
  {
    retstr->var0 = v14;
  }

  if ((v6 & 4) == 0 && playbackStyle == 4)
  {
    [collectionCopy duration];
    retstr->var1 = v15;
  }

  if ((v6 & 8) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [collectionCopy isSpatialMedia])
  {
    v14 |= 0x20000000000uLL;
    retstr->var0 = v14;
  }

  if (playbackVariation == 1 && playbackStyle == 5)
  {
    v16 = 128;
LABEL_26:
    v14 |= v16;
    retstr->var0 = v14;
    goto LABEL_27;
  }

  if (playbackVariation == 2 && playbackStyle == 5)
  {
    v16 = 256;
    goto LABEL_26;
  }

  if (playbackVariation == 3)
  {
    v16 = 512;
    goto LABEL_26;
  }

  v16 = 64;
  if (playbackStyle == 3 || (mediaSubtypes & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v6 & 2) != 0 && (objc_opt_respondsToSelector())
  {
    originalFileSize = [collectionCopy originalFileSize];
    if (originalFileSize >= 1)
    {
      retstr->var0 = v14 | 0x10000000000;
      retstr->var3 = originalFileSize;
    }
  }

LABEL_31:

  return result;
}

@end