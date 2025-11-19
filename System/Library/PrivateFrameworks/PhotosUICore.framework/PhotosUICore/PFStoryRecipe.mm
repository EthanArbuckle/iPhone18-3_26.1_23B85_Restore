@interface PFStoryRecipe
@end

@implementation PFStoryRecipe

void __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = PLAudioPlaybackGetLog();
    v10 = os_signpost_id_make_with_pointer(v9, *(a1 + 40));
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_END, v11, "PFStoryRecipe_PXStoryExtension - requestAudioAssetFromRecipeAsset", " enableTelemetry=YES ", v12, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_205(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, 1, v5);
}

void __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = +[PXFlexMusicLibrary sharedLibrary];
  v13[0] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v4 = [v2 fetchAssetsWithIdentifiers:v3];
  v5 = [v4 firstObject];

  if (*(a1 + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = PXStoryErrorCreateWithCodeDebugFormat(1, @"unable to fetch Flex Song for song: %@", v6, v7, v8, v9, v10, v11, *(a1 + 48));
  }

  [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "totalUnitCount")}];
  (*(*(a1 + 64) + 16))();
}

void __88__PFStoryRecipe_PXStoryExtension_requestAudioAssetFromRecipeAsset_recipe_resultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setIdentifier:v5];

  v6 = [*(a1 + 32) colorGradeCategory];
  [v4 setColorGradeCategory:v6];

  v7 = [*(a1 + 32) title];
  [v4 setTitle:v7];

  v8 = [*(a1 + 32) subtitle];
  [v4 setSubtitle:v8];
}

void __75__PFStoryRecipe_PXStoryExtension_displayAssetsInRecipe_withCategory_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 scheme];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

uint64_t __64__PFStoryRecipe_PXStoryExtension_recipeContainsAnyDisplayAsset___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void __88__PFStoryRecipe_PXStoryExtension_PhotoKit__enumerateDisplayAssetsFromRecipe_usingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v8 = 0;
  v6 = [v5 didEnumerateRecipeDisplayAsset:a2 error:&v8];
  v7 = v8;
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a3 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void __80__PFStoryRecipe_PXStoryExtension_PhotoKit__PHAssetsInRecipe_withCategory_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    if ([v5 category] == *(a1 + 56))
    {
      v8 = objc_alloc(MEMORY[0x1E6978738]);
      v9 = [v5 cloudIdentifier];
      v10 = [v8 initWithStringValue:v9];

      [*(a1 + 40) addObject:v10];
    }
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"Recipe asset doesn't refer to a PhotoKit Asset";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v11 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a3 = 1;
  }
}

void __80__PFStoryRecipe_PXStoryExtension_PhotoKit__PHAssetsInRecipe_withCategory_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 localIdentifier];

  if (v7)
  {
    v8 = *(a1 + 32);
    v12 = [v6 localIdentifier];

    [v8 addObject:v12];
  }

  else
  {
    v9 = [v6 error];

    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void __84__PFStoryRecipe_PXStoryExtension_PhotoKit__addPHAssets_toRecipe_withCategory_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v16 = a3;
  v6 = [v16 cloudIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E69C08B8];
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = [v6 stringValue];
    v12 = [v8 createAssetWithCategory:v9 scheme:v10 cloudIdentifier:v11];

    [*(a1 + 40) addAsset:v12];
  }

  else
  {
    v13 = [v16 error];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a4 = 1;
  }
}

void __88__PFStoryRecipe_PXStoryExtension_Synthetic__syntheticAssetsInRecipe_withCategory_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    if ([v5 category] == *(a1 + 56))
    {
      v8 = [v5 cloudIdentifier];
      v9 = [off_1E77218F8 syntheticAssetWithSerializableDescription:v8];

      [*(a1 + 40) addObject:v9];
    }
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"Recipe asset doesn't refer to a synthetic asset";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"PXStoryErrorDomain" code:1 userInfo:v11];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a3 = 1;
  }
}

@end