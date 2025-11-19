@interface PXSelectionSnapshot
@end

@implementation PXSelectionSnapshot

void __88__PXSelectionSnapshot_CMMAdditions__areAllUnsavedAssetsSelectedWithImportStatusManager___block_invoke(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = a2[1];
  v13 = *a2;
  v14 = v7;
  v8 = [v6 assetAtItemIndexPath:&v13];
  v9 = [*(a1 + 40) importStateForAsset:v8];
  if (v9 == 3 || v9 == 0)
  {
    v11 = *(a1 + 48);
    v12 = a2[1];
    v13 = *a2;
    v14 = v12;
    if (([v11 containsIndexPath:&v13] & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

@end