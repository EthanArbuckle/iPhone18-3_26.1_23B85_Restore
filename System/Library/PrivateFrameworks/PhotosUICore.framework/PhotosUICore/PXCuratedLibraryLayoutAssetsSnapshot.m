@interface PXCuratedLibraryLayoutAssetsSnapshot
@end

@implementation PXCuratedLibraryLayoutAssetsSnapshot

void __64___PXCuratedLibraryLayoutAssetsSnapshot_dominantAssetIdentifier__block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = [a3 integerValue];
  v9 = v8;
  if (v8 < 0 || (v10 = a1[4], v8 >= *(v10 + 24)))
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a1[6] object:a1[4] file:@"PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper.m" lineNumber:478 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < _spriteSnapshotsCount"}];

    v10 = a1[4];
  }

  if (*(*(v10 + 40) + 56 * v9 + 52) == 1)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a4 = 1;
  }
}

void __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke_2;
  v10[3] = &unk_1E773B728;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  [v7 enumerateSpritesInRange:v6 | 0x100000000 usingBlock:v10];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke_4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke_5;
  v13[3] = &unk_1E773B778;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = HIDWORD(a2);
  v16 = *(a1 + 48);
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v14 = v10;
  v15 = *(a1 + 32);
  [v11 enumerateAssetInfoForGeometries:a4 styles:a5 infos:a6 count:v12 options:0 usingBlock:v13];
}

uint64_t __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v10 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke_3;
  v12[3] = &unk_1E773B700;
  v12[4] = *(a1 + 40);
  result = [v10 enumerateAssetInfoForGeometries:a4 styles:a5 infos:a6 count:HIDWORD(a2) options:0 usingBlock:v12];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a9 = 1;
  }

  return result;
}

@end