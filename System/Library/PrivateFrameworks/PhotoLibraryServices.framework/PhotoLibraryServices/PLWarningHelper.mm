@interface PLWarningHelper
+ (id)_sharedAlbumWarningMessageForAssetCount:(unint64_t)count assetType:(signed __int16)type albumTitle:(id)title;
+ (id)sharedAlbumWarningMessageForAssets:(id)assets albumTitle:(id)title;
- (BOOL)_isExitingSharedLibrary;
- (PLWarningHelper)initWithPhotoLibrary:(id)library;
- (id)_avalancheDeleteWarningForAvalancheStacksCount:(int64_t)count nonAvalancheItemsToDeleteCount:(int64_t)deleteCount nonAvalancheItemsToDeleteType:(signed __int16)type avalanchePhotosToDeleteCount:(int64_t)toDeleteCount survivingAvalancheFavoritesCount:(int64_t)favoritesCount avalancheUnrelatedFavoritesCount:(int64_t)unrelatedFavoritesCount assetCount:(int64_t)assetCount;
- (id)_contributorsForAssets:(id)assets;
- (id)_myAssetsFromAssets:(id)assets;
- (id)_usedElsewhereWarningTextForAssetCount:(int64_t)count inLibraryScopeCount:(int64_t)scopeCount myAssets:(id)assets contributors:(id)contributors inSomeAlbumCount:(int64_t)albumCount affectedLocalAlbumsCount:(int64_t)albumsCount assetType:(signed __int16)type actualDeletionCount:(int64_t)self0 syndicationAssetCount:(int64_t)self1;
- (id)_usedElsewhereWarningTextForAssets:(id)assets actualDeletionCount:(int64_t)count;
- (id)allWarningMessageCombinations;
- (unint64_t)_assetsInLibraryScopeCountFromAssets:(id)assets;
- (void)_enumerateTestAssetTypesUsingBlock:(id)block;
- (void)_enumerateTestBooleansUsingBlock:(id)block;
- (void)_enumerateTestDeviceModelNamesUsingBlock:(id)block;
- (void)_enumerateTestItemCountsUsingBlock:(id)block;
- (void)_enumerateTestOtherItemCountsUsingBlock:(id)block;
- (void)_enumerateWarningMessagesUsingBlock:(id)block sectionBlock:(id)sectionBlock;
- (void)_getDeletionWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle;
- (void)_getExpungeWarningMessage:(id *)message buttonTitle:(id *)title forAssetCount:(int64_t)count assetType:(signed __int16)type iCPLEnabled:(BOOL)enabled contributors:(id)contributors deviceModelName:(id)name;
- (void)_getWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forItemSuffix:(id)suffix count:(unint64_t)count operation:(int64_t)operation clientName:(id)name;
- (void)enumerateWarningMessagesUsingBlock:(id)block;
- (void)getAvalancheDeleteWarning:(id *)warning actualDeletionCount:(int64_t *)count forAssets:(id)assets;
- (void)getDeletionWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forAlbums:(id)albums folders:(id)folders clientName:(id)name style:(int64_t)style;
- (void)getDeletionWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forAssets:(id)assets syndicationAssetCount:(int64_t)count clientName:(id)name style:(int64_t)style;
- (void)getExpungeWarningMessage:(id *)message buttonTitle:(id *)title forAssets:(id)assets;
- (void)getWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forAssets:(id)assets operation:(int64_t)operation clientName:(id)name;
@end

@implementation PLWarningHelper

- (void)_enumerateTestDeviceModelNamesUsingBlock:(id)block
{
  v3 = (block + 16);
  v4 = *(block + 2);
  blockCopy = block;
  v4();
  (*v3)(blockCopy, @"iPad");
  (*v3)(blockCopy, @"iPod touch");
  (*v3)(blockCopy, @"other");
}

- (void)_enumerateTestAssetTypesUsingBlock:(id)block
{
  v3 = (block + 16);
  v4 = *(block + 2);
  blockCopy = block;
  v4();
  (*v3)(blockCopy, 1);
  (*v3)(blockCopy, 3);
}

- (void)_enumerateTestOtherItemCountsUsingBlock:(id)block
{
  v4 = *(block + 2);
  blockCopy = block;
  v4();
  [(PLWarningHelper *)self _enumerateTestItemCountsUsingBlock:blockCopy];
}

- (void)_enumerateTestItemCountsUsingBlock:(id)block
{
  v3 = (block + 16);
  v4 = *(block + 2);
  blockCopy = block;
  v4();
  (*v3)(blockCopy, 2);
  (*v3)(blockCopy, 1000);
}

- (void)_enumerateTestBooleansUsingBlock:(id)block
{
  v3 = (block + 16);
  v4 = *(block + 2);
  blockCopy = block;
  v4();
  (*v3)(blockCopy, 1);
}

- (void)_enumerateWarningMessagesUsingBlock:(id)block sectionBlock:(id)sectionBlock
{
  blockCopy = block;
  v7 = (sectionBlock + 16);
  v8 = *(sectionBlock + 2);
  sectionBlockCopy = sectionBlock;
  v8();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke;
  v23[3] = &unk_1E7568910;
  v23[4] = self;
  v25 = 0;
  v10 = blockCopy;
  v24 = v10;
  [(PLWarningHelper *)self _enumerateTestItemCountsUsingBlock:v23];

  (*v7)(sectionBlockCopy, @"Expunge");
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_3;
  v21[3] = &unk_1E75689B0;
  v21[4] = self;
  v11 = v10;
  v22 = v11;
  [(PLWarningHelper *)self _enumerateTestItemCountsUsingBlock:v21];
  (*v7)(sectionBlockCopy, @"Avalanche");
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_7;
  v19[3] = &unk_1E75689B0;
  v19[4] = self;
  v12 = v11;
  v20 = v12;
  [(PLWarningHelper *)self _enumerateTestItemCountsUsingBlock:v19];
  (*v7)(sectionBlockCopy, @"Cloud Shared");
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_14;
  v17[3] = &unk_1E75689B0;
  v17[4] = self;
  v13 = v12;
  v18 = v13;
  [(PLWarningHelper *)self _enumerateTestItemCountsUsingBlock:v17];
  (*v7)(sectionBlockCopy, @"Deletion");

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_16;
  v15[3] = &unk_1E75689B0;
  v15[4] = self;
  v16 = v13;
  v14 = v13;
  [(PLWarningHelper *)self _enumerateTestItemCountsUsingBlock:v15];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_2;
  v5[3] = &unk_1E75688E8;
  v5[4] = v2;
  v4 = a1[5];
  v3 = a1[6];
  v7 = a2;
  v8 = v3;
  v6 = v4;
  [v2 _enumerateTestAssetTypesUsingBlock:v5];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_4;
  v3[3] = &unk_1E7568988;
  v3[4] = v2;
  v5 = a2;
  v4 = *(a1 + 40);
  [v2 _enumerateTestAssetTypesUsingBlock:v3];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_8;
  v3[3] = &unk_1E7568910;
  v3[4] = v2;
  v5 = a2;
  v4 = *(a1 + 40);
  [v2 _enumerateTestOtherItemCountsUsingBlock:v3];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_15;
  v3[3] = &unk_1E7568A78;
  v5 = a2;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _enumerateTestAssetTypesUsingBlock:v3];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_16(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = MEMORY[0x1E69E9820];
  do
  {
    v8[0] = v5;
    v8[1] = 3221225472;
    v8[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_17;
    v8[3] = &unk_1E7568B18;
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = a2;
    v11 = v4;
    v8[4] = v7;
    v9 = v6;
    [v7 _enumerateTestOtherItemCountsUsingBlock:v8];

    ++v4;
  }

  while (v4 != 3);
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_17(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4 >= a2)
  {
    v11 = v2;
    v12 = v3;
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_18;
    v6[3] = &unk_1E7568AF0;
    v8 = a2;
    v9 = v4;
    v6[4] = v5;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    [v5 _enumerateTestOtherItemCountsUsingBlock:v6];
  }
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (a2 || v4 <= 0)
  {
    v11 = v2;
    v12 = v3;
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_19;
    v6[3] = &unk_1E7568AC8;
    v6[4] = v5;
    v8 = *(a1 + 56);
    v9 = v4;
    v10 = a2;
    v7 = *(a1 + 40);
    [v5 _enumerateTestOtherItemCountsUsingBlock:v6];
  }
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 48);
  if (v6 >= a2)
  {
    v20 = v5;
    v21 = v4;
    v22 = v2;
    v23 = v3;
    v9 = MEMORY[0x1E69E9820];
    v10 = v6 - 1;
    do
    {
      v13[0] = v9;
      v13[1] = 3221225472;
      v13[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_20;
      v13[3] = &unk_1E7568AA0;
      v11 = *(a1 + 40);
      v14 = *(a1 + 32);
      v12 = v14;
      v16 = v6;
      v17 = *(a1 + 56);
      v18 = *(a1 + 72);
      v19 = a2;
      v15 = v11;
      [v12 _enumerateTestAssetTypesUsingBlock:v13];

      v6 = *(a1 + 48);
      ++v10;
    }

    while (v10 <= v6);
  }
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_20(uint64_t a1, int a2)
{
  LOWORD(v7) = a2;
  v8 = [*(a1 + 32) _usedElsewhereWarningTextForAssetCount:v7 inLibraryScopeCount:*(a1 + 48) myAssets:*(a1 + 80) contributors:? inSomeAlbumCount:? affectedLocalAlbumsCount:? assetType:? actualDeletionCount:? syndicationAssetCount:?];
  if (v8)
  {
    v5 = *(a1 + 64);
    v4 = *(a1 + 72);
LABEL_3:
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Selected items: %ld, LibraryScope: %ld, in Albums: %ld, Affected Albums: %ld, Asset Type: %i, Syndicated items: %ld", *(a1 + 48), *(a1 + 56), v5, v4, a2, *(a1 + 80)];
    (*(*(a1 + 40) + 16))();

    goto LABEL_4;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_15(uint64_t a1, uint64_t a2)
{
  v3 = [PLWarningHelper _sharedAlbumWarningMessageForAssetCount:*(a1 + 40) assetType:a2 albumTitle:@"Some Album"];
  (*(*(a1 + 32) + 16))();
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_8(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_9;
  v4[3] = &unk_1E75688E8;
  v2 = a1[6];
  v3 = a1[5];
  v5 = a1[4];
  v7 = v2;
  v8 = a2;
  v6 = v3;
  [v5 _enumerateTestAssetTypesUsingBlock:v4];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_9(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_10;
  v3[3] = &unk_1E7568A50;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v6 = a2;
  v4 = *(a1 + 40);
  [v2 _enumerateTestItemCountsUsingBlock:v3];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_11;
  v3[3] = &unk_1E7568A28;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v6 = a2;
  v4 = *(a1 + 40);
  [v2 _enumerateTestOtherItemCountsUsingBlock:v3];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_12;
  v3[3] = &unk_1E7568A00;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v8 = *(a1 + 72);
  v6 = *(a1 + 64);
  v7 = a2;
  v4 = *(a1 + 40);
  [v2 _enumerateTestOtherItemCountsUsingBlock:v3];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_13;
  v4[3] = &unk_1E75689D8;
  v4[4] = v2;
  v9 = *(a1 + 80);
  v3 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v3;
  v8 = a2;
  v5 = *(a1 + 40);
  [v2 _enumerateTestItemCountsUsingBlock:v4];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _avalancheDeleteWarningForAvalancheStacksCount:*(a1 + 48) nonAvalancheItemsToDeleteCount:*(a1 + 56) nonAvalancheItemsToDeleteType:*(a1 + 88) avalanchePhotosToDeleteCount:*(a1 + 64) survivingAvalancheFavoritesCount:*(a1 + 72) avalancheUnrelatedFavoritesCount:*(a1 + 80) assetCount:a2];
  (*(*(a1 + 40) + 16))();
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_4(void *a1, __int16 a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_5;
  v4[3] = &unk_1E7568960;
  v2 = a1[6];
  v3 = a1[5];
  v5 = a1[4];
  v7 = v2;
  v8 = a2;
  v6 = v3;
  [v5 _enumerateTestBooleansUsingBlock:v4];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_5(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_6;
  v4[3] = &unk_1E7568938;
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v2;
  v8 = *(a1 + 56);
  v9 = a2;
  v6 = v3;
  [v5 _enumerateTestDeviceModelNamesUsingBlock:v4];
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = 0;
  v7 = 0;
  [v3 _getExpungeWarningMessage:&v7 buttonTitle:&v6 forAssetCount:*(a1 + 48) assetType:*(a1 + 56) iCPLEnabled:*(a1 + 58) contributors:0 deviceModelName:a2];
  v4 = v7;
  v5 = v6;
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 40) + 16))();
}

void __68__PLWarningHelper__enumerateWarningMessagesUsingBlock_sectionBlock___block_invoke_2(void *a1)
{
  v2 = PLLocalizedKeyForAssetType();
  v3 = a1[4];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [v3 _getWarningTitle:&v12 message:&v11 buttonTitle:&v10 forItemSuffix:v2 count:a1[6] operation:a1[7] clientName:@"SomeApp"];
  v4 = v12;
  v5 = v11;
  v6 = v10;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a1[7]];
  v9 = [v7 stringWithFormat:@"Operation: %@, Kind: %@", v8, v2];

  (*(a1[5] + 16))();
  if (v5)
  {
    (*(a1[5] + 16))();
  }

  (*(a1[5] + 16))();
}

- (void)enumerateWarningMessagesUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PLWarningHelper_enumerateWarningMessagesUsingBlock___block_invoke;
  v6[3] = &unk_1E75688A0;
  v8 = v9;
  v5 = blockCopy;
  v7 = v5;
  [(PLWarningHelper *)self _enumerateWarningMessagesUsingBlock:v6 sectionBlock:&__block_literal_global_21091];

  _Block_object_dispose(v9, 8);
}

uint64_t __54__PLWarningHelper_enumerateWarningMessagesUsingBlock___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)allWarningMessageCombinations
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PLWarningHelper_allWarningMessageCombinations__block_invoke;
  v12[3] = &unk_1E7576E70;
  v13 = v3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__PLWarningHelper_allWarningMessageCombinations__block_invoke_2;
  v10 = &unk_1E75756F0;
  v11 = v13;
  v4 = v13;
  [(PLWarningHelper *)self _enumerateWarningMessagesUsingBlock:v12 sectionBlock:&v7];
  v5 = [v4 copy];

  return v5;
}

void __48__PLWarningHelper_allWarningMessageCombinations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 length])
  {
    [*(a1 + 32) appendFormat:@"%@:\n", v5];
  }

  [*(a1 + 32) appendFormat:@"%@\n", v6];
}

- (void)getDeletionWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forAlbums:(id)albums folders:(id)folders clientName:(id)name style:(int64_t)style
{
  v81 = *MEMORY[0x1E69E9840];
  albumsCopy = albums;
  foldersCopy = folders;
  nameCopy = name;
  v16 = [albumsCopy count];
  v17 = [foldersCopy count];
  if (!(v17 + v16))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"totalCount > 0"}];
  }

  v70 = nameCopy;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  if (!v17)
  {
    if (v16 != 1)
    {
      v63 = 0;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = v16;
      v20 = @"ALBUMS";
      goto LABEL_17;
    }

    firstObject = [albumsCopy firstObject];
    title = [firstObject title];

    v63 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = @"ALBUM";
LABEL_12:
    v68 = v22;
    goto LABEL_18;
  }

  if (!v16)
  {
    if (v17 != 1)
    {
      v63 = 0;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = v17;
      v20 = @"FOLDERS";
      goto LABEL_17;
    }

    firstObject2 = [foldersCopy firstObject];
    title = [firstObject2 title];

    v63 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = @"FOLDER";
    goto LABEL_12;
  }

  if (v16 == 1 && v17 == 1)
  {
    v63 = 1;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = @"ALBUM_FOLDER";
LABEL_17:
    v68 = v20;
    title = 0;
    goto LABEL_18;
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (v16 == 1)
  {
    v63 = 1;
    v18 = v17;
    v20 = @"ALBUM_FOLDERS";
    goto LABEL_17;
  }

  v49 = @"ALBUMS_FOLDERS";
  if (v17 == 1)
  {
    v49 = @"ALBUMS_FOLDER";
  }

  else
  {
    v19 = v17;
  }

  v68 = v49;
  title = 0;
  v63 = 1;
  v18 = v16;
LABEL_18:
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v24 = albumsCopy;
  v25 = [v24 countByEnumeratingWithState:&v75 objects:v80 count:16];
  v67 = foldersCopy;
  if (v25)
  {
    v26 = v25;
    v27 = *v76;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v76 != v27)
        {
          objc_enumerationMutation(v24);
        }

        if (![*(*(&v75 + 1) + 8 * i) isEmpty])
        {
          v34 = 0;
          v29 = v24;
          goto LABEL_38;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v75 objects:v80 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v29 = foldersCopy;
  v30 = [v29 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v72;
    while (2)
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v72 != v32)
        {
          objc_enumerationMutation(v29);
        }

        if (![*(*(&v71 + 1) + 8 * j) isEmpty])
        {
          v34 = 0;
          goto LABEL_38;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v71 objects:v79 count:16];
      v34 = 1;
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v34 = 1;
  }

LABEL_38:

  if (v17 + v16 == 1)
  {
    v35 = v70;
    if (v70)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_TITLE_CLIENT_%@", v68];
      v37 = PLServicesLocalizedFrameworkString();

      v38 = PFStringWithValidatedFormat();
LABEL_66:
      v45 = v38;
      v46 = buttonTitleCopy;
      if (v34)
      {
        v42 = 0;
      }

      else
      {
        v42 = PLServicesLocalizedFrameworkString();
      }

      goto LABEL_69;
    }

    v40 = &stru_1F0F06D80;
    if (v34)
    {
      v40 = @"_EMPTY";
    }

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_MESSAGE_%@%@", v68, v40];
    v37 = PLServicesLocalizedFrameworkString();

    v42 = PFStringWithValidatedFormat();
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_TITLE_%@", v68];
    v44 = PLServicesLocalizedFrameworkString();

    v45 = PFStringWithValidatedFormat();

    v35 = 0;
    v46 = buttonTitleCopy;
  }

  else
  {
    if (v70)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_TITLE_CLIENT_%@", v68];
      v37 = PLServicesLocalizedFrameworkString();

      if (v16 == 1 && v17 == 1)
      {
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:885 description:{@"invalid number of albums and folders: %lu, %lu", 1, 1}];
        }

        v35 = v70;
      }

      else
      {
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:888 description:{@"invalid number of items: %lu", 0x7FFFFFFFFFFFFFFFLL}];
        }

        v35 = v70;
      }

      v38 = PFLocalizedStringWithValidatedFormat();
      goto LABEL_66;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:873 description:{@"Invalid parameter not satisfying: %@", @"itemCount != NSNotFound"}];
    }

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:874 description:{@"Invalid parameter not satisfying: %@", @"secondItemCount == NSNotFound"}];
    }

    if (v34)
    {
      v47 = @"_EMPTY";
    }

    else
    {
      v47 = &stru_1F0F06D80;
    }

    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_TITLE_MULTIPLE_%@%@", v68, v47];
    v37 = PLServicesLocalizedFrameworkString();

    v42 = PFLocalizedStringWithValidatedFormat();
    v45 = 0;
    v46 = buttonTitleCopy;
    v35 = 0;
  }

LABEL_69:

  v50 = v63 ^ 1;
  if (style == 1)
  {
    v50 = 0;
  }

  if (v50)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_BUTTON_%@", v68];
    v51 = PLServicesLocalizedFrameworkString();

    v35 = v70;
  }

  else
  {
    v51 = PLServicesLocalizedFrameworkString();
  }

  if (title)
  {
    v53 = v45;
    *title = v45;
  }

  if (messageCopy)
  {
    v54 = v42;
    *messageCopy = v42;
  }

  if (v46)
  {
    v55 = v51;
    *v46 = v51;
  }
}

- (id)_usedElsewhereWarningTextForAssetCount:(int64_t)count inLibraryScopeCount:(int64_t)scopeCount myAssets:(id)assets contributors:(id)contributors inSomeAlbumCount:(int64_t)albumCount affectedLocalAlbumsCount:(int64_t)albumsCount assetType:(signed __int16)type actualDeletionCount:(int64_t)self0 syndicationAssetCount:(int64_t)self1
{
  v74 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  contributorsCopy = contributors;
  v18 = PLLocalizedKeyForAssetType();
  LODWORD(contributors) = [(PLPhotoLibrary *)self->_photoLibrary isCloudPhotoLibraryEnabled];
  v65 = [contributorsCopy count];
  contributorsCopy2 = contributors;
  if (contributors)
  {
    if (deletionCount <= 1)
    {
      v20 = &stru_1F0F06D80;
    }

    else
    {
      v20 = @"S";
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_ICLOUDPHOTO_%@%@", v18, v20];
    if (scopeCount == count)
    {
      if (scopeCount <= 1)
      {
        v22 = &stru_1F0F06D80;
      }

      else
      {
        v22 = @"S";
      }

      v23 = v22;
      if ([assetsCopy count] == scopeCount)
      {
        if (v65 >= 3)
        {
          v24 = MEMORY[0x1E696AEC0];
LABEL_30:
          [v24 stringWithFormat:@"SHAREDLIBRARY_DELETE_MC_WARNING_%@%@", v18, v23];
          v35 = LABEL_43:;

          shortName = 0;
LABEL_44:
          v21 = v35;

          goto LABEL_45;
        }

        if (v65 == 2)
        {
          v61 = v23;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          obj = contributorsCopy;
          v30 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
          if (v30)
          {
            v31 = v30;
            v63 = v18;
            v60 = assetsCopy;
            v32 = *v70;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v70 != v32)
                {
                  objc_enumerationMutation(obj);
                }

                v34 = *(*(&v69 + 1) + 8 * i);
                if (([v34 isCurrentUser] & 1) == 0)
                {
                  shortName = [v34 shortName];
                  goto LABEL_83;
                }
              }

              v31 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }

            shortName = 0;
LABEL_83:
            assetsCopy = v60;
            v18 = v63;
          }

          else
          {
            shortName = 0;
          }

          v23 = v61;
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SHAREDLIBRARY_DELETE_MC_WARNING_FOR_CONTRIBUTOR_%%@_%@%@", v18, v61];

          goto LABEL_44;
        }

        v24 = MEMORY[0x1E696AEC0];
      }

      else
      {
        v24 = MEMORY[0x1E696AEC0];
        if (v65 >= 2)
        {
          goto LABEL_30;
        }
      }

      [v24 stringWithFormat:@"SHAREDLIBRARY_DELETE_WARNING_ICLOUD_%@%@", v18, v23];
      goto LABEL_43;
    }

    if (scopeCount >= 1)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SHAREDLIBRARY_DELETE_WARNING_ICLOUD_MIXED_%@S", v18];

      shortName = 0;
      v28 = 1;
      v21 = v27;
      goto LABEL_46;
    }

LABEL_28:
    shortName = 0;
LABEL_45:
    v28 = 1;
    goto LABEL_46;
  }

  if (albumCount >= 1)
  {
    v25 = @"S";
    if (albumsCount == 1)
    {
      v26 = &stru_1F0F06D80;
    }

    else
    {
      v26 = @"S";
    }

    if (albumCount < count || deletionCount > count)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_ALBUM%@_SOME_%@S", v26, v18, v59];
    }

    else
    {
      if (count == 1)
      {
        v25 = &stru_1F0F06D80;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_ALBUM%@_%@%@", v26, v18, v25];
    }
    v21 = ;
    goto LABEL_28;
  }

  v29 = &stru_1F0F06D80;
  if (deletionCount > 1)
  {
    v29 = @"S";
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_NO_ICLOUDPHOTO_%@%@", v18, v29];
  shortName = 0;
  v28 = 0;
LABEL_46:
  if (!v21)
  {
    v42 = 0;
    v39 = contributorsCopy2;
    v43 = 0;
    goto LABEL_69;
  }

  if (assetCount > 0)
  {
    v36 = v28;
  }

  else
  {
    v36 = 0;
  }

  if (v36 == 1)
  {
    v37 = [v21 stringByAppendingString:@"_SYNDICATION"];

    v21 = v37;
  }

  v38 = scopeCount == count;
  v39 = contributorsCopy2;
  if (v38)
  {
    v40 = contributorsCopy2 ^ 1;
  }

  else
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    if (v65 < 3)
    {
      v43 = PLServicesSharedLibraryLocalizedFrameworkString();
      goto LABEL_65;
    }

    v41 = PLServicesSharedLibraryLocalizedFrameworkString();
LABEL_64:
    v43 = v41;
LABEL_65:
    v44 = PFLocalizedStringWithValidatedFormat();
    goto LABEL_66;
  }

  if (scopeCount < 1 || ((contributorsCopy2 ^ 1) & 1) != 0)
  {
    v41 = PLServicesLocalizedFrameworkString();
    goto LABEL_64;
  }

  v42 = PLServicesSharedLibraryLocalizedFrameworkString();
  if (v36)
  {
    v43 = 0;
    goto LABEL_67;
  }

  v44 = PFLocalizedStringWithValidatedFormat();
  v43 = v42;
LABEL_66:
  v42 = v44;
LABEL_67:
  if (albumsCount != 1)
  {
    v45 = PFLocalizedStringWithValidatedFormat();

    v42 = v45;
  }

LABEL_69:
  if (assetCount >= 1)
  {
    v67 = v43;
    v46 = @"S";
    if (assetCount == 1)
    {
      v46 = &stru_1F0F06D80;
    }

    v64 = v18;
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_SYNDICATION_COMBINED_%@%@", v18, v46];
    v48 = PLServicesLocalizedFrameworkString();
    if ([v42 length])
    {
      v49 = PLServicesLocalizedFrameworkString();
      v50 = PFStringWithValidatedFormat();

      v42 = v49;
    }

    else
    {
      v50 = v48;
    }

    if (scopeCount >= 1 && ((v39 ^ 1) & 1) == 0)
    {
      v51 = PLServicesLocalizedFrameworkString();
      v52 = PLServicesSharedLibraryLocalizedFrameworkString();
      v58 = PFLocalizedStringWithValidatedFormat();
      PFStringWithValidatedFormat();
      v53 = contributorsCopy;
      v55 = v54 = assetsCopy;

      v50 = v55;
      assetsCopy = v54;
      contributorsCopy = v53;
    }

    v42 = v50;
    v18 = v64;
    v43 = v67;
  }

  v56 = v42;

  return v42;
}

- (id)_usedElsewhereWarningTextForAssets:(id)assets actualDeletionCount:(int64_t)count
{
  assetsCopy = assets;
  v7 = [(PLWarningHelper *)self _assetsInLibraryScopeCountFromAssets:assetsCopy];
  v8 = [assetsCopy count];
  v24 = 0;
  photoLibrary = [(PLWarningHelper *)self photoLibrary];
  v10 = [photoLibrary countOfLocalAlbumsContainingAssets:assetsCopy assetsInSomeAlbumCount:&v24];

  _syndicationAssetCount = [(PLWarningHelper *)self _syndicationAssetCount];
  v12 = _syndicationAssetCount;
  if (_syndicationAssetCount >= v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = _syndicationAssetCount;
  }

  v14 = v8 - v13;
  if (_syndicationAssetCount >= count)
  {
    v15 = 0;
  }

  else
  {
    v15 = _syndicationAssetCount;
  }

  v16 = count - v15;
  if (_syndicationAssetCount < 1)
  {
    countCopy = count;
  }

  else
  {
    v8 = v14;
    countCopy = v16;
  }

  v18 = PLAssetTypeForItems();
  v19 = [(PLWarningHelper *)self _myAssetsFromAssets:assetsCopy];
  v20 = [(PLWarningHelper *)self _contributorsForAssets:assetsCopy];
  LOWORD(v23) = v18;
  v21 = [(PLWarningHelper *)self _usedElsewhereWarningTextForAssetCount:v8 inLibraryScopeCount:v7 myAssets:v19 contributors:v20 inSomeAlbumCount:v24 affectedLocalAlbumsCount:v10 assetType:v23 actualDeletionCount:countCopy syndicationAssetCount:v12];

  return v21;
}

- (id)_avalancheDeleteWarningForAvalancheStacksCount:(int64_t)count nonAvalancheItemsToDeleteCount:(int64_t)deleteCount nonAvalancheItemsToDeleteType:(signed __int16)type avalanchePhotosToDeleteCount:(int64_t)toDeleteCount survivingAvalancheFavoritesCount:(int64_t)favoritesCount avalancheUnrelatedFavoritesCount:(int64_t)unrelatedFavoritesCount assetCount:(int64_t)assetCount
{
  if (count >= 1 && !deleteCount)
  {
    v14 = @"N";
    if (favoritesCount < 1)
    {
      if (toDeleteCount == 1)
      {
        v23 = @"1";
      }

      else
      {
        v23 = @"N";
      }

      if (count == 1)
      {
        v14 = @"1";
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_CONF_AVALANCHE_STACKS_ONLY_%@_%@", v23, v14];
      v19 = PLServicesLocalizedFrameworkString();
      if ((count < 2 || toDeleteCount < 2) && count < 2 && toDeleteCount < 2)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (count == 1)
      {
        v15 = @"1";
      }

      else
      {
        v15 = @"N";
      }

      if (toDeleteCount == 1)
      {
        v16 = @"1";
      }

      else
      {
        v16 = @"N";
      }

      if (favoritesCount == 1)
      {
        v14 = @"1";
        v17 = 0;
      }

      else
      {
        v17 = toDeleteCount > 1;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_CONF_AVALANCHE_STACKS_ONLY_KEEP_FAVORITES_%@_%@_%@", v14, v16, v15];
      v19 = PLServicesLocalizedFrameworkString();
      if (count < 2 || !v17)
      {
        v24 = !v17;
        if (count != 1)
        {
          v24 = 1;
        }

        if (v24)
        {
          v37 = toDeleteCount != 1 || favoritesCount == 1;
          v38 = !v37;
          if (count < 2 || !v38)
          {
            v41 = !v38;
            if (count != 1)
            {
              v41 = 1;
            }

            if (v41)
            {
              v49 = toDeleteCount > 1 && favoritesCount == 1;
              v50 = v49;
              if (count < 2 || !v50)
              {
                v51 = !v50;
                if (count != 1)
                {
                  v51 = 1;
                }

                if ((v51 & 1) != 0 && (count < 2 || toDeleteCount != 1 || favoritesCount != 1))
                {
LABEL_141:
                  v42 = v19;
                  goto LABEL_107;
                }
              }
            }
          }
        }
      }
    }

    v42 = PFLocalizedStringWithValidatedFormat();
LABEL_107:
    v21 = v42;

LABEL_123:
    goto LABEL_124;
  }

  if (count >= 1 && deleteCount >= 1)
  {
    if (type > 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = off_1E7568B38[type];
    }

    v25 = @"N";
    if (favoritesCount < 1)
    {
      if (deleteCount == 1)
      {
        v33 = @"1";
      }

      else
      {
        v33 = @"N";
      }

      if (count == 1)
      {
        v34 = @"1";
      }

      else
      {
        v34 = @"N";
      }

      if (toDeleteCount == 1)
      {
        v25 = @"1";
      }

      v35 = toDeleteCount > 1 && count > 1;
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_CONF_AVALANCHE_STACKS_AND_OTHERS_%@_%@_%@%@", v25, v34, v33, v20];
      v32 = PLServicesLocalizedFrameworkString();
      if (deleteCount < 2 || !v35)
      {
        v39 = !v35;
        if (deleteCount != 1)
        {
          v39 = 1;
        }

        if (v39)
        {
          v43 = count != 1 || toDeleteCount <= 1;
          v44 = !v43;
          if (deleteCount < 2 || !v44)
          {
            v52 = !v44;
            if (deleteCount != 1)
            {
              v52 = 1;
            }

            if (v52)
            {
              v56 = count > 1 && toDeleteCount == 1;
              v57 = v56;
              if (deleteCount < 2 || !v57)
              {
                v59 = !v57;
                if (deleteCount != 1)
                {
                  v59 = 1;
                }

                if ((v59 & 1) != 0 && (deleteCount < 2 || count != 1 || toDeleteCount != 1))
                {
                  goto LABEL_223;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (deleteCount == 1)
      {
        v26 = @"1";
      }

      else
      {
        v26 = @"N";
      }

      if (toDeleteCount == 1)
      {
        v27 = @"1";
      }

      else
      {
        v27 = @"N";
      }

      if (favoritesCount == 1)
      {
        v28 = @"1";
      }

      else
      {
        v28 = @"N";
      }

      v29 = favoritesCount != 1 && toDeleteCount > 1;
      if (count == 1)
      {
        v25 = @"1";
      }

      v30 = count > 1 && v29;
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_CONF_AVALANCHE_STACKS_AND_OTHERS_KEEP_FAVORITES_%@_%@_%@_%@%@", v28, v27, v25, v26, v20];
      v32 = PLServicesLocalizedFrameworkString();
      if (deleteCount < 2 || !v30)
      {
        v36 = !v30;
        if (deleteCount != 1)
        {
          v36 = 1;
        }

        if (v36)
        {
          v40 = count == 1 && v29;
          if (deleteCount < 2 || !v40)
          {
            v45 = !v40;
            if (deleteCount != 1)
            {
              v45 = 1;
            }

            if (v45)
            {
              v53 = count > 1;
              v54 = toDeleteCount != 1 || favoritesCount == 1;
              v55 = !v54;
              if (v54)
              {
                v53 = 0;
              }

              if (deleteCount < 2 || !v53)
              {
                v58 = !v53;
                if (deleteCount != 1)
                {
                  v58 = 1;
                }

                if (v58)
                {
                  if (count != 1)
                  {
                    v55 = 0;
                  }

                  if (deleteCount < 2 || !v55)
                  {
                    v60 = v55 ^ 1;
                    if (deleteCount != 1)
                    {
                      v60 = 1;
                    }

                    if (v60)
                    {
                      v61 = count > 1;
                      v62 = toDeleteCount > 1 && favoritesCount == 1;
                      v63 = v62;
                      if (!v62)
                      {
                        v61 = 0;
                      }

                      if (deleteCount < 2 || !v61)
                      {
                        v64 = !v61;
                        if (deleteCount != 1)
                        {
                          v64 = 1;
                        }

                        if (v64)
                        {
                          if (count != 1)
                          {
                            v63 = 0;
                          }

                          if (deleteCount < 2 || !v63)
                          {
                            v65 = v63 ^ 1;
                            if (deleteCount != 1)
                            {
                              v65 = 1;
                            }

                            if (v65)
                            {
                              v66 = count > 1;
                              v67 = toDeleteCount == 1 && favoritesCount == 1;
                              v68 = v67;
                              if (!v67)
                              {
                                v66 = 0;
                              }

                              if (deleteCount < 2 || !v66)
                              {
                                v69 = !v66;
                                if (deleteCount != 1)
                                {
                                  v69 = 1;
                                }

                                if (v69)
                                {
                                  if (count != 1)
                                  {
                                    v68 = 0;
                                  }

                                  if (deleteCount < 2 || !v68)
                                  {
LABEL_223:
                                    v46 = v32;
                                    v32 = v46;
                                    goto LABEL_121;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v46 = PFLocalizedStringWithValidatedFormat();
LABEL_121:
    v21 = v46;

    if (unrelatedFavoritesCount < 1)
    {
      goto LABEL_124;
    }

    v18 = PLServicesLocalizedFrameworkString();
    v47 = PFStringWithValidatedFormat();

    v21 = v47;
    goto LABEL_123;
  }

  v21 = 0;
  if (!count && unrelatedFavoritesCount >= 1)
  {
    if (unrelatedFavoritesCount == assetCount)
    {
      v22 = @"N";
      if (unrelatedFavoritesCount == 1)
      {
        v22 = @"1";
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_CONF_AVALANCHE_FAVORITES_ONLY_%@", v22];
    }

    else
    {
      v18 = @"DELETE_CONF_AVALANCHE_FAVORITES_ONLY_SOME";
    }

    v21 = PLServicesLocalizedFrameworkString();
    goto LABEL_123;
  }

LABEL_124:

  return v21;
}

- (void)getAvalancheDeleteWarning:(id *)warning actualDeletionCount:(int64_t *)count forAssets:(id)assets
{
  v57 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = [assetsCopy countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v41 = 0;
    v42 = 0;
    v45 = 0;
    v46 = 0;
    v8 = *v52;
    v9 = @"Error fetching avalanche with UUID: %@ for asset %@";
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        if ([v11 isAvalancheStackPhoto] && objc_msgSend(v11, "isPartOfBurst") && (objc_msgSend(v11, "isFinderSyncedAsset") & 1) == 0)
        {
          avalancheUUID = [v11 avalancheUUID];
          if (avalancheUUID && (v13 = [PLAvalanche alloc], [v11 photoLibrary], v14 = objc_claimAutoreleasedReturnValue(), v15 = -[PLAvalanche initWithUUID:sourceType:photoLibrary:](v13, "initWithUUID:sourceType:photoLibrary:", avalancheUUID, 1, v14), v14, v15))
          {
            v16 = v42;
            if (!v42)
            {
              v17 = v9;
              v18 = MEMORY[0x1E695DF90];
              v19 = [assetsCopy count];
              v20 = v18;
              v9 = v17;
              v16 = [v20 dictionaryWithCapacity:v19];
            }

            v42 = v16;
            [v16 setObject:v15 forKey:avalancheUUID];
            ++v41;
            assetsCount = [(PLAvalanche *)v15 assetsCount];
            userFavorites = [(PLAvalanche *)v15 userFavorites];
            v23 = [userFavorites count];

            v45 += v23;
            v46 = assetsCount + v46 - v23;
          }

          else
          {
            NSLog(&v9->isa, avalancheUUID, v11);
          }
        }
      }

      v7 = [assetsCopy countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v7);
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v45 = 0;
    v46 = 0;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = assetsCopy;
  v24 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v24)
  {
    v43 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_40;
  }

  v25 = v24;
  v43 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = *v48;
  do
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v48 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v47 + 1) + 8 * j);
      if (![v31 isAvalancheStackPhoto] || (objc_msgSend(v31, "isPartOfBurst") & 1) == 0)
      {
        avalanchePickType = [v31 avalanchePickType];
        if ((avalanchePickType & 8) != 0)
        {
          avalancheUUID2 = [v31 avalancheUUID];
          v34 = [v42 objectForKey:avalancheUUID2];

          if (v34)
          {
            v35 = 0;
            --v45;
            ++v46;
LABEL_35:
            v28 += v35;
            continue;
          }
        }

        if ([v31 isPhoto])
        {
          ++v26;
        }

        else
        {
          v43 += [v31 isVideo];
        }

        ++v27;
        if ((avalanchePickType & 8) != 0)
        {
          v35 = 1;
          goto LABEL_35;
        }
      }
    }

    v25 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  }

  while (v25);
LABEL_40:

  if (count)
  {
    *count = v46 + v27;
  }

  if (warning)
  {
    v36 = 3;
    if (v27 >= 1 && (v26 < 1 || v43 <= 0))
    {
      if (v43 > 0)
      {
        v37 = 1;
      }

      else
      {
        v37 = 3;
      }

      if (v26 > 0)
      {
        v37 = 0;
      }

      if (v26 | v43)
      {
        v36 = v37;
      }

      else
      {
        v36 = 3;
      }
    }

    *warning = -[PLWarningHelper _avalancheDeleteWarningForAvalancheStacksCount:nonAvalancheItemsToDeleteCount:nonAvalancheItemsToDeleteType:avalanchePhotosToDeleteCount:survivingAvalancheFavoritesCount:avalancheUnrelatedFavoritesCount:assetCount:](self, "_avalancheDeleteWarningForAvalancheStacksCount:nonAvalancheItemsToDeleteCount:nonAvalancheItemsToDeleteType:avalanchePhotosToDeleteCount:survivingAvalancheFavoritesCount:avalancheUnrelatedFavoritesCount:assetCount:", v41, v27, v36, v46, v45, v28, [obj count]);
  }
}

- (void)_getExpungeWarningMessage:(id *)message buttonTitle:(id *)title forAssetCount:(int64_t)count assetType:(signed __int16)type iCPLEnabled:(BOOL)enabled contributors:(id)contributors deviceModelName:(id)name
{
  enabledCopy = enabled;
  v49 = *MEMORY[0x1E69E9840];
  contributorsCopy = contributors;
  nameCopy = name;
  v15 = PLLocalizedKeyForAssetType();
  v16 = &stru_1F0F06D80;
  if (count > 1)
  {
    v16 = @"S";
  }

  v17 = v16;
  v18 = [contributorsCopy count];
  if (enabledCopy)
  {
    if (v18 < 3)
    {
      if (v18 == 2)
      {
        v28 = nameCopy;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v29 = contributorsCopy;
        v30 = [v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v30)
        {
          v31 = v30;
          titleCopy = title;
          v32 = *v45;
          while (2)
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v45 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v44 + 1) + 8 * i);
              if (([v34 isCurrentUser] & 1) == 0)
              {
                shortName = [v34 shortName];
                goto LABEL_27;
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }

          shortName = 0;
LABEL_27:
          title = titleCopy;
        }

        else
        {
          shortName = 0;
        }

        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SHAREDLIBRARY_EXPUNGE_MC_WARNING_FOR_CONTRIBUTOR_%%@_%@%@", v15, v17];
        v38 = PLServicesSharedLibraryLocalizedFrameworkString();
        v23 = PFLocalizedStringWithValidatedFormat();

        nameCopy = v28;
        goto LABEL_30;
      }

      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"EXPUNGE_%@%@_WARNING_MESSAGE_WITH_ICLOUD_ON", v15, v17];
      v20 = PLServicesLocalizedFrameworkString();
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SHAREDLIBRARY_EXPUNGE_MC_WARNING_%@%@", v15, v17];
      v20 = PLServicesSharedLibraryLocalizedFrameworkString();
    }

    v23 = v20;
LABEL_30:
    v37 = PLServicesLocalizedFrameworkString();
    goto LABEL_31;
  }

  messageCopy = message;
  v21 = v17;
  v41 = v17;
  v22 = v15;
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"EXPUNGE_%@%@_WARNING_MESSAGE_WITH_ICLOUD_OFF", v15, v41];
  v23 = PLServicesLocalizedFrameworkString();
  v24 = contributorsCopy;
  if ([nameCopy isEqualToString:@"iPhone"])
  {
    v25 = nameCopy;
    titleCopy3 = title;
    v27 = @"IPHONE";
  }

  else
  {
    titleCopy3 = title;
    if ([nameCopy isEqualToString:@"iPad"])
    {
      v25 = nameCopy;
      v27 = @"IPAD";
    }

    else
    {
      v25 = nameCopy;
      if ([nameCopy isEqualToString:@"iPod touch"])
      {
        v27 = @"IPOD_TOUCH";
      }

      else
      {
        v27 = @"DEVICE";
      }
    }
  }

  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"EXPUNGE_BUTTON_TITLE_VIDEO_WITH_ICLOUD_OFF_%@", v27];
  v37 = PLServicesLocalizedFrameworkString();

  title = titleCopy3;
  message = messageCopy;
  nameCopy = v25;
  contributorsCopy = v24;
  v15 = v22;
  v17 = v21;
LABEL_31:
  v39 = v23;
  *message = v23;
  v40 = v37;
  *title = v37;
}

- (id)_contributorsForAssets:(id)assets
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 hasLibraryScope])
        {
          libraryScopeContributors = [v10 libraryScopeContributors];
          [v4 unionSet:libraryScopeContributors];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_myAssetsFromAssets:(id)assets
{
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 shareState] == 1)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)getExpungeWarningMessage:(id *)message buttonTitle:(id *)title forAssets:(id)assets
{
  assetsCopy = assets;
  v10 = [assetsCopy count];
  if (message)
  {
    if (title)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"outMessage"}];

    if (title)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"outButtonTitle"}];

LABEL_3:
  if (v10 <= 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLWarningHelper.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"assetCount > 0"}];
  }

  v11 = PLAssetTypeForItems();
  isCloudPhotoLibraryEnabled = [(PLPhotoLibrary *)self->_photoLibrary isCloudPhotoLibraryEnabled];
  v17 = [(PLWarningHelper *)self _contributorsForAssets:assetsCopy];

  v13 = DCIM_currentDeviceModelName();
  [(PLWarningHelper *)self _getExpungeWarningMessage:message buttonTitle:title forAssetCount:v10 assetType:v11 iCPLEnabled:isCloudPhotoLibraryEnabled contributors:v17 deviceModelName:v13];
}

- (void)_getDeletionWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle
{
  _assets = [(PLWarningHelper *)self _assets];
  _style = [(PLWarningHelper *)self _style];
  v54 = [_assets count];
  v10 = PLSuffixForItems();
  lastObject = [_assets lastObject];
  collectionShare = [lastObject collectionShare];
  title = [collectionShare title];

  v14 = [PLWarningHelper sharedAlbumWarningMessageForAssets:_assets albumTitle:title];
  v15 = v14;
  if (v14)
  {
    v51 = v14;
    if (_style > 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = PLServicesLocalizedFrameworkString();
    }
  }

  else
  {
    v53 = 0;
    [(PLWarningHelper *)self getAvalancheDeleteWarning:&v53 actualDeletionCount:&v54 forAssets:_assets];
    v16 = v53;
    v17 = [(PLWarningHelper *)self _usedElsewhereWarningTextForAssets:_assets actualDeletionCount:v54];
    v18 = v17;
    if (v16 && v17)
    {
      v19 = title;
      titleCopy = title;
      messageCopy = message;
      v22 = v10;
      if (_style > 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = PLServicesLocalizedFrameworkString();
      }

      v46 = v16;
      v47 = v18;
      v51 = PFLocalizedStringWithValidatedFormat();

      v10 = v22;
      message = messageCopy;
      title = titleCopy;
      title = v19;
      v15 = 0;
    }

    else
    {
      if (v16)
      {
        v24 = v16;
      }

      else
      {
        v24 = v17;
      }

      v51 = v24;
    }

    if ([(PLWarningHelper *)self _hasAssetsInLibraryScope:_assets, v46, v47])
    {
      v23 = PLServicesSharedLibraryLocalizedFrameworkString();
    }

    else
    {
      titleCopy2 = title;
      messageCopy2 = message;
      v26 = @"DELETE_BUTTON_TITLE_";
      if (_style)
      {
        v26 = 0;
      }

      if (_style == 1)
      {
        v27 = @"DELETE_BUTTON_COMPACT_TITLE_";
      }

      else
      {
        v27 = v26;
      }

      v28 = _style == 1;
      if (v54 == 1)
      {
        v29 = &stru_1F0F06D80;
      }

      else
      {
        v29 = @"S";
      }

      v30 = v10;
      v31 = [(__CFString *)v27 stringByAppendingFormat:@"%@%@", v10, v29];
      v32 = PLServicesLocalizedFrameworkString();

      if (v28 || v54 == 1)
      {
        v33 = v32;
      }

      else
      {
        v46 = v54;
        v33 = PFLocalizedStringWithValidatedFormat();
      }

      v23 = v33;

      v10 = v30;
      title = titleCopy2;
      message = messageCopy2;
    }
  }

  _clientName = [(PLWarningHelper *)self _clientName];
  if ([_clientName length])
  {
    v50 = v15;
    v35 = title;
    titleCopy3 = title;
    messageCopy3 = message;
    if (v54 == 1)
    {
      v38 = &stru_1F0F06D80;
    }

    else
    {
      v38 = @"S";
    }

    v39 = v10;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_WARNING_TITLE_CLIENT_%@%@", v10, v38];
    v41 = PLServicesLocalizedFrameworkString();

    v42 = PFLocalizedStringWithValidatedFormat();

    v10 = v39;
    message = messageCopy3;
    title = titleCopy3;
    title = v35;
    v15 = v50;
  }

  else
  {
    v42 = 0;
  }

  if (title)
  {
    v43 = v42;
    *title = v42;
  }

  if (message)
  {
    v44 = v51;
    *message = v51;
  }

  if (buttonTitle)
  {
    v45 = v23;
    *buttonTitle = v23;
  }
}

- (void)getDeletionWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forAssets:(id)assets syndicationAssetCount:(int64_t)count clientName:(id)name style:(int64_t)style
{
  nameCopy = name;
  [(PLWarningHelper *)self set_assets:assets];
  [(PLWarningHelper *)self set_syndicationAssetCount:count];
  [(PLWarningHelper *)self set_clientName:nameCopy];

  [(PLWarningHelper *)self set_style:style];

  [(PLWarningHelper *)self _getDeletionWarningTitle:title message:message buttonTitle:buttonTitle];
}

- (unint64_t)_assetsInLibraryScopeCountFromAssets:(id)assets
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([(PLWarningHelper *)self _isExitingSharedLibrary])
  {
    v5 = 0;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = assetsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          libraryScope = [*(*(&v13 + 1) + 8 * i) libraryScope];

          if (libraryScope)
          {
            ++v5;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isExitingSharedLibrary
{
  photoLibrary = [(PLWarningHelper *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];
  v4 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:managedObjectContext];

  if (v4)
  {
    v5 = [v4 exitState] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_getWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forItemSuffix:(id)suffix count:(unint64_t)count operation:(int64_t)operation clientName:(id)name
{
  nameCopy = name;
  if (operation)
  {
    v14 = 0;
  }

  else
  {
    v14 = @"HIDE";
  }

  v15 = MEMORY[0x1E696AEC0];
  suffixCopy = suffix;
  suffixCopy = [v15 stringWithFormat:@"WARNING_TITLE_%@_%@_CLIENT", v14, suffixCopy];
  v18 = PLServicesLocalizedFrameworkString();

  v19 = PFStringWithValidatedFormat();
  suffixCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WARNING_BUTTON_%@_%@", v14, suffixCopy];

  v21 = PLServicesLocalizedFrameworkString();
  if (title)
  {
    v22 = v19;
    *title = v19;
  }

  if (message)
  {
    *message = 0;
  }

  if (buttonTitle)
  {
    v23 = v21;
    *buttonTitle = v21;
  }
}

- (void)getWarningTitle:(id *)title message:(id *)message buttonTitle:(id *)buttonTitle forAssets:(id)assets operation:(int64_t)operation clientName:(id)name
{
  nameCopy = name;
  assetsCopy = assets;
  v15 = PLSuffixForItems();
  v16 = [assetsCopy count];

  if (v16 != 1)
  {
    v17 = [v15 stringByAppendingString:@"S"];

    v15 = v17;
  }

  [(PLWarningHelper *)self _getWarningTitle:title message:message buttonTitle:buttonTitle forItemSuffix:v15 count:v16 operation:operation clientName:nameCopy];
}

- (PLWarningHelper)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PLWarningHelper;
  v6 = [(PLWarningHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

+ (id)_sharedAlbumWarningMessageForAssetCount:(unint64_t)count assetType:(signed __int16)type albumTitle:(id)title
{
  titleCopy = title;
  v7 = PLLocalizedKeyForAssetType();
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (count == 1)
  {
    v9 = @"DELETE_SHARED_STREAM_WARNING_%@";
  }

  else
  {
    v9 = @"DELETE_SHARED_STREAM_WARNING_%@S";
  }

  v10 = [v8 initWithFormat:v9, v7];
  v11 = PLServicesLocalizedFrameworkString();
  v12 = PFStringWithValidatedFormat();

  return v12;
}

+ (id)sharedAlbumWarningMessageForAssets:(id)assets albumTitle:(id)title
{
  assetsCopy = assets;
  titleCopy = title;
  firstObject = [assetsCopy firstObject];
  isCloudSharedAsset = [firstObject isCloudSharedAsset];

  if (isCloudSharedAsset)
  {
    v9 = +[PLWarningHelper _sharedAlbumWarningMessageForAssetCount:assetType:albumTitle:](PLWarningHelper, "_sharedAlbumWarningMessageForAssetCount:assetType:albumTitle:", [assetsCopy count], PLAssetTypeForItems(), titleCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end