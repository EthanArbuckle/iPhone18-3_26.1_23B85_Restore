@interface PFStoryConcreteRecipe
- ($1FC4720596A894E2A002A84B8283F478)overallDurationInfo;
- (BOOL)_isArray:(id)array equalToArray:(id)toArray usingObjectEquality:(id)equality;
- (BOOL)_isDictionary:(id)dictionary equalToDictionary:(id)toDictionary usingObjectEquality:(id)equality;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecipe:(id)recipe;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipe)initWithContentIdentifier:(id)identifier majorVersion:(int64_t)version minorVersion:(int64_t)minorVersion libraries:(id)libraries assets:(id)assets overallDurationInfo:(id *)info currentStyle:(id)style seedSongIdentifiersByCatalog:(id)self0 autoDecisionLists:(id)self1 presentations:(id)self2;
- (PFStoryRecipeSongAsset)currentStyleSongAsset;
- (id)assetAtIndex:(int64_t)index;
- (id)assetWithKind:(int64_t)kind identifier:(id)identifier;
- (id)libraryWithKind:(int64_t)kind;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)presentationAtIndex:(int64_t)index;
- (id)seedSongAssetForCatalog:(id)catalog;
- (int64_t)numberOfAssets;
- (int64_t)numberOfPresentations;
- (void)enumerateAssetsWithKind:(int64_t)kind usingBlock:(id)block;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PFStoryConcreteMutableRecipe alloc];
  contentIdentifier = [(PFStoryConcreteRecipe *)self contentIdentifier];
  majorVersion = [(PFStoryConcreteRecipe *)self majorVersion];
  minorVersion = [(PFStoryConcreteRecipe *)self minorVersion];
  libraries = [(PFStoryConcreteRecipe *)self libraries];
  assets = [(PFStoryConcreteRecipe *)self assets];
  [(PFStoryConcreteRecipe *)self overallDurationInfo];
  currentStyle = [(PFStoryConcreteRecipe *)self currentStyle];
  seedSongIdentifiersByCatalog = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
  autoEditDecisionLists = [(PFStoryConcreteRecipe *)self autoEditDecisionLists];
  presentations = [(PFStoryConcreteRecipe *)self presentations];
  v14 = [(PFStoryConcreteRecipe *)v4 initWithContentIdentifier:contentIdentifier majorVersion:majorVersion minorVersion:minorVersion libraries:libraries assets:assets overallDurationInfo:v16 currentStyle:currentStyle seedSongIdentifiersByCatalog:seedSongIdentifiersByCatalog autoDecisionLists:autoEditDecisionLists presentations:presentations];

  return v14;
}

- (BOOL)_isDictionary:(id)dictionary equalToDictionary:(id)toDictionary usingObjectEquality:(id)equality
{
  dictionaryCopy = dictionary;
  toDictionaryCopy = toDictionary;
  equalityCopy = equality;
  if ((dictionaryCopy != 0) != (toDictionaryCopy != 0) || (v10 = [dictionaryCopy count], v10 != objc_msgSend(toDictionaryCopy, "count")))
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
    v14 = toDictionaryCopy;
    v15 = equalityCopy;
    v16 = &v17;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v13];
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

- (BOOL)_isArray:(id)array equalToArray:(id)toArray usingObjectEquality:(id)equality
{
  arrayCopy = array;
  toArrayCopy = toArray;
  equalityCopy = equality;
  if ((arrayCopy != 0) != (toArrayCopy != 0) || (v10 = [arrayCopy count], v10 != objc_msgSend(toArrayCopy, "count")))
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
    v14 = toArrayCopy;
    v15 = equalityCopy;
    v16 = &v17;
    [arrayCopy enumerateObjectsUsingBlock:v13];
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

- (BOOL)isEqualToRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (recipeCopy != self)
  {
    contentIdentifier = [(PFStoryConcreteRecipe *)self contentIdentifier];
    contentIdentifier2 = [(PFStoryConcreteRecipe *)recipeCopy contentIdentifier];
    v7 = [contentIdentifier isEqualToString:contentIdentifier2];

    if (!v7 || (v8 = [(PFStoryConcreteRecipe *)self majorVersion], v8 != [(PFStoryConcreteRecipe *)recipeCopy majorVersion]) || (v9 = [(PFStoryConcreteRecipe *)self minorVersion], v9 != [(PFStoryConcreteRecipe *)recipeCopy minorVersion]) || (v10 = [(PFStoryConcreteRecipe *)self numberOfAssets], v10 != [(PFStoryConcreteRecipe *)recipeCopy numberOfAssets]) || (v11 = [(PFStoryConcreteRecipe *)self numberOfPresentations], v11 != [(PFStoryConcreteRecipe *)recipeCopy numberOfPresentations]) || (([(PFStoryConcreteRecipe *)self overallDurationInfo], !recipeCopy) ? (v12 = 0, memset(v43, 0, sizeof(v43))) : ([(PFStoryConcreteRecipe *)recipeCopy overallDurationInfo], v12 = *&v43[0]), v44 != v12 || (v54 = v48, v51 = *(&v43[3] + 8), *&v53[16] = v47, v52 = v45, *v53 = v46, *&v50[16] = *(&v43[2] + 8), v49 = *(v43 + 8), *v50 = *(&v43[1] + 8), *&time1.value = v45, time1.epoch = v46, time2 = *(v43 + 8), CMTimeCompare(&time1, &time2)) || (time1 = *&v53[8], time2 = *&v50[8], CMTimeCompare(&time1, &time2)) || (time1 = v54, time2 = v51, CMTimeCompare(&time1, &time2))))
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
    v15 = recipeCopy;
    v41 = v15;
    v42 = &v44;
    PFStoryRecipeLibraryKindEnumerateSupportedValuesUsingBlock(v40);
    if (!*(v45 + 24))
    {
      goto LABEL_32;
    }

    numberOfAssets = [(PFStoryConcreteRecipe *)self numberOfAssets];
    if (numberOfAssets >= 1)
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

      while (numberOfAssets != ++v17);
    }

    numberOfPresentations = [(PFStoryConcreteRecipe *)self numberOfPresentations];
    if (numberOfPresentations >= 1)
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

      while (numberOfPresentations != ++v22);
    }

    currentStyle = [(PFStoryConcreteRecipe *)self currentStyle];
    currentStyle2 = [(PFStoryConcreteRecipe *)v15 currentStyle];
    v28 = currentStyle;
    v29 = currentStyle2;
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

    seedSongIdentifiersByCatalog = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
    seedSongIdentifiersByCatalog2 = [(PFStoryConcreteRecipe *)v15 seedSongIdentifiersByCatalog];
    v34 = seedSongIdentifiersByCatalog;
    v35 = seedSongIdentifiersByCatalog2;
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

    autoEditDecisionLists = [(PFStoryConcreteRecipe *)self autoEditDecisionLists];
    autoEditDecisionLists2 = [(PFStoryConcreteRecipe *)v15 autoEditDecisionLists];
    v13 = [(PFStoryConcreteRecipe *)self _isDictionary:autoEditDecisionLists equalToDictionary:autoEditDecisionLists2 usingObjectEquality:&__block_literal_global_11465];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToRecipe:self];
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

- (id)presentationAtIndex:(int64_t)index
{
  presentations = [(PFStoryConcreteRecipe *)self presentations];
  v5 = [presentations objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)numberOfPresentations
{
  presentations = [(PFStoryConcreteRecipe *)self presentations];
  v3 = [presentations count];

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
  currentStyle = [(PFStoryConcreteRecipe *)self currentStyle];
  songAssetIdentifier = [currentStyle songAssetIdentifier];

  if (songAssetIdentifier)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PFStoryConcreteRecipe_currentStyleSongAsset__block_invoke;
    v7[3] = &unk_1E7B663B8;
    v8 = songAssetIdentifier;
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

- (id)seedSongAssetForCatalog:(id)catalog
{
  catalogCopy = catalog;
  seedSongIdentifiersByCatalog = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
  v6 = [seedSongIdentifiersByCatalog objectForKeyedSubscript:catalogCopy];

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

- (id)assetWithKind:(int64_t)kind identifier:(id)identifier
{
  identifierCopy = identifier;
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
  v7 = identifierCopy;
  v11 = v7;
  v12 = &v13;
  [(PFStoryConcreteRecipe *)self enumerateAssetsWithKind:kind usingBlock:v10];
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

- (void)enumerateAssetsWithKind:(int64_t)kind usingBlock:(id)block
{
  blockCopy = block;
  assets = [(PFStoryConcreteRecipe *)self assets];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PFStoryConcreteRecipe_enumerateAssetsWithKind_usingBlock___block_invoke;
  v9[3] = &unk_1E7B66408;
  v10 = blockCopy;
  kindCopy = kind;
  v8 = blockCopy;
  [assets enumerateObjectsUsingBlock:v9];
}

void __60__PFStoryConcreteRecipe_enumerateAssetsWithKind_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 kind] == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)assetAtIndex:(int64_t)index
{
  assets = [(PFStoryConcreteRecipe *)self assets];
  v5 = [assets objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)numberOfAssets
{
  assets = [(PFStoryConcreteRecipe *)self assets];
  v3 = [assets count];

  return v3;
}

- (id)libraryWithKind:(int64_t)kind
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  libraries = [(PFStoryConcreteRecipe *)self libraries];
  v5 = [libraries countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(libraries);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 kind] == kind)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [libraries countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (PFStoryConcreteRecipe)initWithContentIdentifier:(id)identifier majorVersion:(int64_t)version minorVersion:(int64_t)minorVersion libraries:(id)libraries assets:(id)assets overallDurationInfo:(id *)info currentStyle:(id)style seedSongIdentifiersByCatalog:(id)self0 autoDecisionLists:(id)self1 presentations:(id)self2
{
  identifierCopy = identifier;
  librariesCopy = libraries;
  assetsCopy = assets;
  styleCopy = style;
  catalogCopy = catalog;
  listsCopy = lists;
  presentationsCopy = presentations;
  v42.receiver = self;
  v42.super_class = PFStoryConcreteRecipe;
  v23 = [(PFStoryConcreteRecipe *)&v42 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    v25 = *(v23 + 1);
    *(v23 + 1) = v24;

    *(v23 + 2) = version;
    *(v23 + 3) = minorVersion;
    v26 = [librariesCopy copy];
    v27 = *(v23 + 4);
    *(v23 + 4) = v26;

    v28 = [assetsCopy copy];
    v29 = *(v23 + 5);
    *(v23 + 5) = v28;

    *(v23 + 56) = *&info->var0;
    v30 = *&info->var1.var0.var1;
    v31 = *&info->var1.var1.var0;
    v32 = *&info->var1.var1.var3;
    *(v23 + 120) = *&info->var1.var2.var1;
    *(v23 + 104) = v32;
    *(v23 + 88) = v31;
    *(v23 + 72) = v30;
    objc_storeStrong(v23 + 17, style);
    v33 = [catalogCopy copy];
    v34 = *(v23 + 20);
    *(v23 + 20) = v33;

    v35 = [listsCopy copy];
    v36 = *(v23 + 19);
    *(v23 + 19) = v35;

    v37 = [presentationsCopy copy];
    v38 = *(v23 + 6);
    *(v23 + 6) = v37;
  }

  return v23;
}

@end