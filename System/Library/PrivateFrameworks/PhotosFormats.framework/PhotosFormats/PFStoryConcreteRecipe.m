@interface PFStoryConcreteRecipe
- ($1FC4720596A894E2A002A84B8283F478)overallDurationInfo;
- (BOOL)_isArray:(id)a3 equalToArray:(id)a4 usingObjectEquality:(id)a5;
- (BOOL)_isDictionary:(id)a3 equalToDictionary:(id)a4 usingObjectEquality:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecipe:(id)a3;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipe)initWithContentIdentifier:(id)a3 majorVersion:(int64_t)a4 minorVersion:(int64_t)a5 libraries:(id)a6 assets:(id)a7 overallDurationInfo:(id *)a8 currentStyle:(id)a9 seedSongIdentifiersByCatalog:(id)a10 autoDecisionLists:(id)a11 presentations:(id)a12;
- (PFStoryRecipeSongAsset)currentStyleSongAsset;
- (id)assetAtIndex:(int64_t)a3;
- (id)assetWithKind:(int64_t)a3 identifier:(id)a4;
- (id)libraryWithKind:(int64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)presentationAtIndex:(int64_t)a3;
- (id)seedSongAssetForCatalog:(id)a3;
- (int64_t)numberOfAssets;
- (int64_t)numberOfPresentations;
- (void)enumerateAssetsWithKind:(int64_t)a3 usingBlock:(id)a4;
@end

@implementation PFStoryConcreteRecipe

- ($1FC4720596A894E2A002A84B8283F478)overallDurationInfo
{
  v3 = *&self->var1.var2.var3;
  v4 = *&self[1].var1.var0.var3;
  *&retstr->var1.var1.var0 = *&self[1].var1.var0.var0;
  *&retstr->var1.var1.var3 = v4;
  *&retstr->var1.var2.var1 = *&self[1].var1.var1.var1;
  *&retstr->var0 = *&self->var1.var2.var0;
  *&retstr->var1.var0.var1 = v3;
  return self;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PFStoryConcreteMutableRecipe alloc];
  v5 = [(PFStoryConcreteRecipe *)self contentIdentifier];
  v6 = [(PFStoryConcreteRecipe *)self majorVersion];
  v7 = [(PFStoryConcreteRecipe *)self minorVersion];
  v8 = [(PFStoryConcreteRecipe *)self libraries];
  v9 = [(PFStoryConcreteRecipe *)self assets];
  [(PFStoryConcreteRecipe *)self overallDurationInfo];
  v10 = [(PFStoryConcreteRecipe *)self currentStyle];
  v11 = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
  v12 = [(PFStoryConcreteRecipe *)self autoEditDecisionLists];
  v13 = [(PFStoryConcreteRecipe *)self presentations];
  v14 = [(PFStoryConcreteRecipe *)v4 initWithContentIdentifier:v5 majorVersion:v6 minorVersion:v7 libraries:v8 assets:v9 overallDurationInfo:v16 currentStyle:v10 seedSongIdentifiersByCatalog:v11 autoDecisionLists:v12 presentations:v13];

  return v14;
}

- (BOOL)_isDictionary:(id)a3 equalToDictionary:(id)a4 usingObjectEquality:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((v7 != 0) != (v8 != 0) || (v10 = [v7 count], v10 != objc_msgSend(v8, "count")))
  {
    v11 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__PFStoryConcreteRecipe__isDictionary_equalToDictionary_usingObjectEquality___block_invoke;
    v13[3] = &unk_1E7B664A0;
    v14 = v8;
    v15 = v9;
    v16 = &v17;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  return v11 & 1;
}

void __77__PFStoryConcreteRecipe__isDictionary_equalToDictionary_usingObjectEquality___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v7 || ((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)_isArray:(id)a3 equalToArray:(id)a4 usingObjectEquality:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((v7 != 0) != (v8 != 0) || (v10 = [v7 count], v10 != objc_msgSend(v8, "count")))
  {
    v11 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__PFStoryConcreteRecipe__isArray_equalToArray_usingObjectEquality___block_invoke;
    v13[3] = &unk_1E7B66478;
    v14 = v8;
    v15 = v9;
    v16 = &v17;
    [v7 enumerateObjectsUsingBlock:v13];
    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  return v11 & 1;
}

void __67__PFStoryConcreteRecipe__isArray_equalToArray_usingObjectEquality___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if (!v7 || ((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)isEqualToRecipe:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    v5 = [(PFStoryConcreteRecipe *)self contentIdentifier];
    v6 = [(PFStoryConcreteRecipe *)v4 contentIdentifier];
    v7 = [v5 isEqualToString:v6];

    if (!v7 || (v8 = [(PFStoryConcreteRecipe *)self majorVersion], v8 != [(PFStoryConcreteRecipe *)v4 majorVersion]) || (v9 = [(PFStoryConcreteRecipe *)self minorVersion], v9 != [(PFStoryConcreteRecipe *)v4 minorVersion]) || (v10 = [(PFStoryConcreteRecipe *)self numberOfAssets], v10 != [(PFStoryConcreteRecipe *)v4 numberOfAssets]) || (v11 = [(PFStoryConcreteRecipe *)self numberOfPresentations], v11 != [(PFStoryConcreteRecipe *)v4 numberOfPresentations]) || (([(PFStoryConcreteRecipe *)self overallDurationInfo], !v4) ? (v12 = 0, memset(v43, 0, sizeof(v43))) : ([(PFStoryConcreteRecipe *)v4 overallDurationInfo], v12 = *&v43[0]), v44 != v12 || (v54 = v48, v51 = *(&v43[3] + 8), *&v53[16] = v47, v52 = v45, *v53 = v46, *&v50[16] = *(&v43[2] + 8), v49 = *(v43 + 8), *v50 = *(&v43[1] + 8), *&time1.value = v45, time1.epoch = v46, time2 = *(v43 + 8), CMTimeCompare(&time1, &time2)) || (time1 = *&v53[8], time2 = *&v50[8], CMTimeCompare(&time1, &time2)) || (time1 = v54, time2 = v51, CMTimeCompare(&time1, &time2))))
    {
      v13 = 0;
      goto LABEL_16;
    }

    v44 = 0;
    *&v45 = &v44;
    *(&v45 + 1) = 0x2020000000;
    LOBYTE(v46) = 1;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __41__PFStoryConcreteRecipe_isEqualToRecipe___block_invoke;
    v40[3] = &unk_1E7B66430;
    v40[4] = self;
    v15 = v4;
    v41 = v15;
    v42 = &v44;
    PFStoryRecipeLibraryKindEnumerateSupportedValuesUsingBlock(v40);
    if (!*(v45 + 24))
    {
      goto LABEL_32;
    }

    v16 = [(PFStoryConcreteRecipe *)self numberOfAssets];
    if (v16 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = [(PFStoryConcreteRecipe *)self assetAtIndex:v17];
        v19 = [(PFStoryConcreteRecipe *)v15 assetAtIndex:v17];
        v20 = [v18 isEqualToAsset:v19];

        if ((v20 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      while (v16 != ++v17);
    }

    v21 = [(PFStoryConcreteRecipe *)self numberOfPresentations];
    if (v21 >= 1)
    {
      v22 = 0;
      do
      {
        v23 = [(PFStoryConcreteRecipe *)self presentationAtIndex:v22];
        v24 = [(PFStoryConcreteRecipe *)v15 presentationAtIndex:v22];
        v25 = [v23 isEqualToPresentation:v24];

        if ((v25 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      while (v21 != ++v22);
    }

    v26 = [(PFStoryConcreteRecipe *)self currentStyle];
    v27 = [(PFStoryConcreteRecipe *)v15 currentStyle];
    v28 = v26;
    v29 = v27;
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      v31 = [v28 isEqual:v29];

      if ((v31 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v32 = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
    v33 = [(PFStoryConcreteRecipe *)v15 seedSongIdentifiersByCatalog];
    v34 = v32;
    v35 = v33;
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [v34 isEqual:v35];

      if ((v37 & 1) == 0)
      {
LABEL_32:
        v13 = 0;
LABEL_33:

        _Block_object_dispose(&v44, 8);
        goto LABEL_16;
      }
    }

    v38 = [(PFStoryConcreteRecipe *)self autoEditDecisionLists];
    v39 = [(PFStoryConcreteRecipe *)v15 autoEditDecisionLists];
    v13 = [(PFStoryConcreteRecipe *)self _isDictionary:v38 equalToDictionary:v39 usingObjectEquality:&__block_literal_global_11465];

    goto LABEL_33;
  }

  v13 = 1;
LABEL_16:

  return v13;
}

void __41__PFStoryConcreteRecipe_isEqualToRecipe___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [*(a1 + 32) libraryWithKind:a2];
  v6 = [*(a1 + 40) libraryWithKind:a2];
  if (v7 != v6 && ([v7 isEqualToLibrary:v6] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualToRecipe:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(PFStoryRecipeArchiver);
  v4 = [(PFStoryRecipeArchiver *)v3 archivedJSONDataWithRecipe:self options:1];

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];

  return v5;
}

- (id)presentationAtIndex:(int64_t)a3
{
  v4 = [(PFStoryConcreteRecipe *)self presentations];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)numberOfPresentations
{
  v2 = [(PFStoryConcreteRecipe *)self presentations];
  v3 = [v2 count];

  return v3;
}

- (PFStoryRecipeSongAsset)currentStyleSongAsset
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__11471;
  v14 = __Block_byref_object_dispose__11472;
  v15 = 0;
  v3 = [(PFStoryConcreteRecipe *)self currentStyle];
  v4 = [v3 songAssetIdentifier];

  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PFStoryConcreteRecipe_currentStyleSongAsset__block_invoke;
    v7[3] = &unk_1E7B663B8;
    v8 = v4;
    v9 = &v10;
    [(PFStoryConcreteRecipe *)self enumerateAssetsWithKind:2 usingBlock:v7];
  }

  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __46__PFStoryConcreteRecipe_currentStyleSongAsset__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 identifier];
  v7 = v6;
  if (v6 == *(a1 + 32))
  {

    goto LABEL_5;
  }

  v8 = [v6 isEqualToString:?];

  if (v8)
  {
LABEL_5:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)seedSongAssetForCatalog:(id)a3
{
  v4 = a3;
  v5 = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(PFStoryConcreteRecipe *)self assetWithKind:2 identifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)assetWithKind:(int64_t)a3 identifier:(id)a4
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11471;
  v17 = __Block_byref_object_dispose__11472;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PFStoryConcreteRecipe_assetWithKind_identifier___block_invoke;
  v10[3] = &unk_1E7B663B8;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [(PFStoryConcreteRecipe *)self enumerateAssetsWithKind:a3 usingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __50__PFStoryConcreteRecipe_assetWithKind_identifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 identifier];
  v7 = v6;
  if (v6 == *(a1 + 32))
  {

    goto LABEL_5;
  }

  v8 = [v6 isEqualToString:?];

  if (v8)
  {
LABEL_5:
    *a3 = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)enumerateAssetsWithKind:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(PFStoryConcreteRecipe *)self assets];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PFStoryConcreteRecipe_enumerateAssetsWithKind_usingBlock___block_invoke;
  v9[3] = &unk_1E7B66408;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __60__PFStoryConcreteRecipe_enumerateAssetsWithKind_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 kind] == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)assetAtIndex:(int64_t)a3
{
  v4 = [(PFStoryConcreteRecipe *)self assets];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)numberOfAssets
{
  v2 = [(PFStoryConcreteRecipe *)self assets];
  v3 = [v2 count];

  return v3;
}

- (id)libraryWithKind:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PFStoryConcreteRecipe *)self libraries];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 kind] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (PFStoryConcreteRecipe)initWithContentIdentifier:(id)a3 majorVersion:(int64_t)a4 minorVersion:(int64_t)a5 libraries:(id)a6 assets:(id)a7 overallDurationInfo:(id *)a8 currentStyle:(id)a9 seedSongIdentifiersByCatalog:(id)a10 autoDecisionLists:(id)a11 presentations:(id)a12
{
  v41 = a3;
  v18 = a6;
  v19 = a7;
  v40 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v42.receiver = self;
  v42.super_class = PFStoryConcreteRecipe;
  v23 = [(PFStoryConcreteRecipe *)&v42 init];
  if (v23)
  {
    v24 = [v41 copy];
    v25 = *(v23 + 1);
    *(v23 + 1) = v24;

    *(v23 + 2) = a4;
    *(v23 + 3) = a5;
    v26 = [v18 copy];
    v27 = *(v23 + 4);
    *(v23 + 4) = v26;

    v28 = [v19 copy];
    v29 = *(v23 + 5);
    *(v23 + 5) = v28;

    *(v23 + 56) = *&a8->var0;
    v30 = *&a8->var1.var0.var1;
    v31 = *&a8->var1.var1.var0;
    v32 = *&a8->var1.var1.var3;
    *(v23 + 120) = *&a8->var1.var2.var1;
    *(v23 + 104) = v32;
    *(v23 + 88) = v31;
    *(v23 + 72) = v30;
    objc_storeStrong(v23 + 17, a9);
    v33 = [v20 copy];
    v34 = *(v23 + 20);
    *(v23 + 20) = v33;

    v35 = [v21 copy];
    v36 = *(v23 + 19);
    *(v23 + 19) = v35;

    v37 = [v22 copy];
    v38 = *(v23 + 6);
    *(v23 + 6) = v37;
  }

  return v23;
}

@end