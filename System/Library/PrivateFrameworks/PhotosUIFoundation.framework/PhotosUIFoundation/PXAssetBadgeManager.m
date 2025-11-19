@interface PXAssetBadgeManager
+ (PXAssetBadgeManager)defaultManager;
- (PXAssetBadgeInfo)badgeInfoForAsset:(SEL)a3 inCollection:(id)a4 options:(id)a5;
- (PXAssetBadgeInfo)badgeInfoForCollection:(SEL)a3 options:(id)a4;
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

- (PXAssetBadgeInfo)badgeInfoForCollection:(SEL)a3 options:(id)a4
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v6 = a4;
  if ([v6 px_isFavoritesSmartAlbum])
  {
    retstr->var0 = 1;
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = [v6 px_isPanoramasSmartAlbum];

  if (v8)
  {
    retstr->var0 = v7;
  }

  return result;
}

- (PXAssetBadgeInfo)badgeInfoForAsset:(SEL)a3 inCollection:(id)a4 options:(id)a5
{
  v6 = a6;
  v19 = a4;
  v9 = a5;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  if (!v19)
  {
    goto LABEL_31;
  }

  v10 = [v19 mediaSubtypes];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v19 playbackStyle];
  }

  else
  {
    v11 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v19 playbackVariation];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v19 isFavorite];
  v14 = v13 & 0xFFFFFFF9 | (2 * (v10 & 3)) | (v10 >> 10) & 0x400 | v10 & 0x10;
  if ((v13 & 1) != 0 || (v10 & 0x100013) != 0)
  {
    retstr->var0 = v14;
  }

  if ((v6 & 4) == 0 && v11 == 4)
  {
    [v19 duration];
    retstr->var1 = v15;
  }

  if ((v6 & 8) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v19 isSpatialMedia])
  {
    v14 |= 0x20000000000uLL;
    retstr->var0 = v14;
  }

  if (v12 == 1 && v11 == 5)
  {
    v16 = 128;
LABEL_26:
    v14 |= v16;
    retstr->var0 = v14;
    goto LABEL_27;
  }

  if (v12 == 2 && v11 == 5)
  {
    v16 = 256;
    goto LABEL_26;
  }

  if (v12 == 3)
  {
    v16 = 512;
    goto LABEL_26;
  }

  v16 = 64;
  if (v11 == 3 || (v10 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v6 & 2) != 0 && (objc_opt_respondsToSelector())
  {
    v17 = [v19 originalFileSize];
    if (v17 >= 1)
    {
      retstr->var0 = v14 | 0x10000000000;
      retstr->var3 = v17;
    }
  }

LABEL_31:

  return result;
}

@end