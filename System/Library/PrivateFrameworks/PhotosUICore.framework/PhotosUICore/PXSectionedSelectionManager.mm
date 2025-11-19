@interface PXSectionedSelectionManager
@end

@implementation PXSectionedSelectionManager

void __90__PXSectionedSelectionManager_CMMAdditions__selectNonCopiedAssetsWithImportStatusManager___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 32);
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = [v4 assetAtItemIndexPath:&v11];
  v7 = [*(a1 + 40) importStateForAsset:v6];
  if (v7 == 3 || v7 == 0)
  {
    v9 = *(a1 + 48);
    v10 = a2[1];
    v11 = *a2;
    v12 = v10;
    [v9 addIndexPath:&v11];
  }
}

@end