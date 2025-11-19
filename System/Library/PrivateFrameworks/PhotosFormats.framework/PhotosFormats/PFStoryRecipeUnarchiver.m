@interface PFStoryRecipeUnarchiver
- ($1FC4720596A894E2A002A84B8283F478)_unarchivedOverallDurationInfoWithJSONObject:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)unarchiveTimeWithJSONObject:(SEL)a3;
- ($BFB0C6F6478568252C8128E2BF722AD2)_unarchivedDurationInfoWithJSONObject:(SEL)a3;
- (id)_existingKeyInDictionary:(id)a3 forObject:(id)a4;
- (id)_unarchivedClipWithJSONObject:(id)a3;
- (id)_unarchivedDecisionListWithJSONObject:(id)a3 songAssetIdentifier:(id)a4;
- (id)_unarchivedLibraryWithJSONObject:(id)a3 error:(id *)a4;
- (id)_unarchivedStyleWithJSONObject:(id)a3;
- (id)unarchivedAssetWithJSONObject:(id)a3 error:(id *)a4;
- (id)unarchivedRecipeWithData:(id)a3 error:(id *)a4;
- (id)unarchivedRecipeWithJSONObject:(id)a3 error:(id *)a4;
@end

@implementation PFStoryRecipeUnarchiver

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)unarchiveTimeWithJSONObject:(SEL)a3
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"value"];
  v7 = [v6 longLongValue];

  v8 = [v5 objectForKeyedSubscript:@"timescale"];

  v9 = [v8 intValue];

  return CMTimeMake(retstr, v7, v9);
}

- ($BFB0C6F6478568252C8128E2BF722AD2)_unarchivedDurationInfoWithJSONObject:(SEL)a3
{
  v6 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__PFStoryRecipeUnarchiver__unarchivedDurationInfoWithJSONObject___block_invoke;
  v18[3] = &unk_1E7B65E08;
  v19 = v6;
  v20 = self;
  v7 = v6;
  v8 = MEMORY[0x1B8C64C40](v18);
  v9 = v8[2];
  v15 = **&MEMORY[0x1E6960CC0];
  v9(&v16);
  v10 = v8[2];
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v10(&v15, v8, @"preferred", &v13);
  v11 = v8[2];
  v13 = *MEMORY[0x1E6960C88];
  v14 = *(MEMORY[0x1E6960C88] + 16);
  v11(v8, @"maximum", &v13);
  *&retstr->var0.var0 = v16;
  retstr->var0.var3 = v17;
  retstr->var1 = v15;

  return result;
}

uint64_t __65__PFStoryRecipeUnarchiver__unarchivedDurationInfoWithJSONObject___block_invoke@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = v7;
  if (v7)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v10 = v8;
      v7 = [v7 unarchiveTimeWithJSONObject:v8];
      v8 = v10;
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }
  }

  else
  {
    *a4 = *a3;
    a4[2] = *(a3 + 16);
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

- (id)_unarchivedClipWithJSONObject:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"assetIdentifier"];
  v6 = +[PFStoryRecipeArchiver stringByClipPlaybackStyle];
  v7 = [v4 objectForKeyedSubscript:@"playbackStyle"];
  v8 = [(PFStoryRecipeUnarchiver *)self _existingKeyInDictionary:v6 forObject:v7];
  v9 = [v8 integerValue];

  v40 = 0uLL;
  v41 = 0;
  v10 = [v4 objectForKeyedSubscript:@"minimumDuration"];
  [(PFStoryRecipeUnarchiver *)self unarchiveTimeWithJSONObject:v10];

  v38 = 0uLL;
  v39 = 0;
  v11 = [v4 objectForKeyedSubscript:@"idealDuration"];
  [(PFStoryRecipeUnarchiver *)self unarchiveTimeWithJSONObject:v11];

  v36 = 0uLL;
  v37 = 0;
  v12 = [v4 objectForKeyedSubscript:@"maximumDuration"];
  [(PFStoryRecipeUnarchiver *)self unarchiveTimeWithJSONObject:v12];

  v34 = 0uLL;
  v35 = 0;
  v13 = [v4 objectForKeyedSubscript:@"videoCueOffset"];
  [(PFStoryRecipeUnarchiver *)self unarchiveTimeWithJSONObject:v13];

  v14 = +[PFStoryRecipeArchiver stringByClipMotionStyle];
  v15 = [v4 objectForKeyedSubscript:@"motionStyle"];
  v16 = [(PFStoryRecipeUnarchiver *)self _existingKeyInDictionary:v14 forObject:v15];
  v17 = [v16 integerValue];

  v18 = [v4 objectForKeyedSubscript:@"transition"];

  if (v18)
  {
    v19 = +[PFStoryRecipeArchiver stringByClipTransition];
    v20 = [v4 objectForKeyedSubscript:@"transition"];
    v21 = [(PFStoryRecipeUnarchiver *)self _existingKeyInDictionary:v19 forObject:v20];
    v22 = [v21 integerValue];
  }

  else
  {
    v22 = 1;
  }

  v23 = [PFStoryConcreteRecipeClip alloc];
  v32 = v40;
  v33 = v41;
  v30 = v38;
  v31 = v39;
  v28 = v36;
  v29 = v37;
  v26 = v34;
  v27 = v35;
  v24 = [(PFStoryConcreteRecipeClip *)v23 initWithAssetIdentifier:v5 playbackStyle:v9 minimumDuration:&v32 idealDuration:&v30 maximumDuration:&v28 videoCueOffset:&v26 motionStyle:v17 transition:v22];

  return v24;
}

- (id)_unarchivedDecisionListWithJSONObject:(id)a3 songAssetIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"clips"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PFStoryRecipeUnarchiver__unarchivedDecisionListWithJSONObject_songAssetIdentifier___block_invoke;
  v11[3] = &unk_1E7B65DE0;
  v11[4] = self;
  v8 = PFMap(v7, v11);
  v9 = [[PFStoryConcreteAutoEditDecisionList alloc] initWithSongAssetIdentifier:v6 clips:v8];

  return v9;
}

- (id)_unarchivedStyleWithJSONObject:(id)a3
{
  v3 = a3;
  v4 = [PFStoryConcreteStyle alloc];
  v5 = [v3 objectForKeyedSubscript:@"id"];
  v6 = [v3 objectForKeyedSubscript:@"originalColorGradeCategory"];
  v7 = [v3 objectForKeyedSubscript:@"customColorGradeKind"];
  v8 = PFStoryColorGradeKindNamed(v7);
  v9 = [v3 objectForKeyedSubscript:@"songAsset"];
  v10 = [v3 objectForKeyedSubscript:@"isCustomized"];

  v11 = -[PFStoryConcreteStyle initWithIdentifier:originalColorGradeCategory:customColorGradeKind:songAssetIdentifier:isCustomized:](v4, "initWithIdentifier:originalColorGradeCategory:customColorGradeKind:songAssetIdentifier:isCustomized:", v5, v6, v8, v9, [v10 BOOLValue]);

  return v11;
}

- ($1FC4720596A894E2A002A84B8283F478)_unarchivedOverallDurationInfoWithJSONObject:(SEL)a3
{
  v6 = a4;
  if (v6)
  {
    v7 = +[PFStoryRecipeArchiver stringByOverallDurationKind];
    v8 = [v6 objectForKeyedSubscript:@"kind"];
    v9 = [(PFStoryRecipeUnarchiver *)self _existingKeyInDictionary:v7 forObject:v8];
    v10 = [v9 integerValue];

    if (v10 == 2)
    {
      v11 = [v6 objectForKeyedSubscript:@"specificDuration"];
      [(PFStoryRecipeUnarchiver *)self _unarchivedDurationInfoWithJSONObject:v11];
    }

    *&retstr->var1.var0.var3 = 0u;
    *&retstr->var1.var1.var1 = 0u;
    *&retstr->var1.var2.var0 = 0u;
    retstr->var1.var2.var3 = 0;
    *&retstr->var1.var0.var0 = 0u;
    retstr->var0 = v10;
  }

  else
  {
    *&retstr->var1.var1.var3 = 0u;
    *&retstr->var1.var2.var1 = 0u;
    *&retstr->var1.var0.var1 = 0u;
    *&retstr->var1.var1.var0 = 0u;
    *&retstr->var0 = 0u;
  }

  return result;
}

- (id)_existingKeyInDictionary:(id)a3 forObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8688;
  v17 = __Block_byref_object_dispose__8689;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PFStoryRecipeUnarchiver__existingKeyInDictionary_forObject___block_invoke;
  v10[3] = &unk_1E7B65DB8;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __62__PFStoryRecipeUnarchiver__existingKeyInDictionary_forObject___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)unarchivedAssetWithJSONObject:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8688;
  v24 = __Block_byref_object_dispose__8689;
  v25 = 0;
  v7 = [v6 objectForKeyedSubscript:@"id"];
  v8 = +[PFStoryRecipeArchiver stringByAssetKind];
  v9 = [v6 objectForKeyedSubscript:@"kind"];
  v10 = [(PFStoryRecipeUnarchiver *)self _existingKeyInDictionary:v8 forObject:v9];
  v11 = [v10 integerValue];

  v12 = [v6 objectForKeyedSubscript:@"url"];
  if (v11 == 1)
  {
    v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
    v14 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PFStoryRecipeUnarchiver_unarchivedAssetWithJSONObject_error___block_invoke;
    v19[3] = &unk_1E7B65D90;
    v19[4] = self;
    v19[5] = v6;
    v19[7] = &v20;
    v19[6] = v7;
    [PFStoryConcreteRecipeDisplayAsset decomposeURL:v13 usingBlock:v19];
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_6;
    }

    v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
    v14 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__PFStoryRecipeUnarchiver_unarchivedAssetWithJSONObject_error___block_invoke_2;
    v18[3] = &unk_1E7B65D90;
    v18[4] = self;
    v18[5] = v6;
    v18[7] = &v20;
    v18[6] = v7;
    [PFStoryConcreteRecipeSongAsset decomposeURL:v13 usingBlock:v18];
  }

LABEL_6:
  if (a4)
  {
    v15 = 0;
    *a4 = 0;
  }

  v16 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v16;
}

void __63__PFStoryRecipeUnarchiver_unarchivedAssetWithJSONObject_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = +[PFStoryRecipeArchiver stringByDisplayAssetCategory];
  v9 = [*(a1 + 40) objectForKeyedSubscript:@"category"];
  v10 = [v5 _existingKeyInDictionary:v8 forObject:v9];
  v11 = [v10 integerValue];

  v12 = [[PFStoryConcreteRecipeDisplayAsset alloc] initWithIdentifier:*(a1 + 48) category:v11 scheme:v7 cloudIdentifier:v6];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void __63__PFStoryRecipeUnarchiver_unarchivedAssetWithJSONObject_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = +[PFStoryRecipeArchiver stringBySongCategory];
  v9 = [*(a1 + 40) objectForKeyedSubscript:@"category"];
  v10 = [v5 _existingKeyInDictionary:v8 forObject:v9];
  v11 = [v10 integerValue];

  v12 = *(a1 + 32);
  v13 = +[PFStoryRecipeArchiver stringBySongSubcategory];
  v14 = [*(a1 + 40) objectForKeyedSubscript:@"subcategory"];
  v15 = [v12 _existingKeyInDictionary:v13 forObject:v14];
  v16 = [v15 integerValue];

  v22 = [*(a1 + 40) objectForKeyedSubscript:@"title"];
  v17 = [*(a1 + 40) objectForKeyedSubscript:@"subtitle"];
  v18 = [[PFStoryConcreteRecipeSongAsset alloc] initWithIdentifier:*(a1 + 48) category:v11 subcategory:v16 catalog:v7 songID:v6 title:v22 subtitle:v17];

  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = [*(a1 + 40) objectForKeyedSubscript:@"colorGradeCategory"];
  if (v21)
  {
    [*(*(*(a1 + 56) + 8) + 40) setColorGradeCategory:v21];
  }
}

- (id)_unarchivedLibraryWithJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[PFStoryRecipeArchiver stringByLibraryKind];
  v8 = [v6 objectForKeyedSubscript:@"kind"];
  v9 = [(PFStoryRecipeUnarchiver *)self _existingKeyInDictionary:v7 forObject:v8];
  v10 = [v9 integerValue];

  v11 = [v6 objectForKeyedSubscript:@"url"];
  v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
  v13 = [PFStoryRecipeLibraryFactory createLibraryWithKind:v10 url:v12];

  if (a4)
  {
    v14 = 0;
    *a4 = 0;
  }

  v15 = v13;

  return v15;
}

- (id)unarchivedRecipeWithJSONObject:(id)a3 error:(id *)a4
{
  v75[1] = *MEMORY[0x1E69E9840];
  v48 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__8688;
  v70 = __Block_byref_object_dispose__8689;
  v71 = 0;
  v5 = [v48 objectForKeyedSubscript:@"header"];
  v46 = [v5 objectForKeyedSubscript:@"content"];
  v44 = [v5 objectForKeyedSubscript:@"version"];
  v6 = [v44 componentsSeparatedByString:@"."];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 integerValue];

  v9 = [v6 objectAtIndexedSubscript:1];
  v10 = [v9 integerValue];

  if (v8 == 1)
  {
    v11 = [v48 objectForKeyedSubscript:@"resources"];
    v12 = [v11 objectForKeyedSubscript:@"assets"];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __64__PFStoryRecipeUnarchiver_unarchivedRecipeWithJSONObject_error___block_invoke;
    v65[3] = &unk_1E7B65D18;
    v65[4] = self;
    v65[5] = &v66;
    v45 = v12;
    v13 = PFMap(v12, v65);
    v14 = [v48 objectForKeyedSubscript:@"libraries"];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __64__PFStoryRecipeUnarchiver_unarchivedRecipeWithJSONObject_error___block_invoke_2;
    v64[3] = &unk_1E7B65D40;
    v64[4] = self;
    v64[5] = &v66;
    v40 = v14;
    v15 = PFMap(v14, v64);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v16 = [v48 objectForKeyedSubscript:@"overallDuration"];
    [(PFStoryRecipeUnarchiver *)self _unarchivedOverallDurationInfoWithJSONObject:v16];

    v17 = [v48 objectForKeyedSubscript:@"currentStyle"];
    v43 = [(PFStoryRecipeUnarchiver *)self _unarchivedStyleWithJSONObject:v17];

    v18 = [v48 objectForKeyedSubscript:@"autoEditDecisionLists"];
    v42 = [v48 objectForKeyedSubscript:@"seedSongIdentifiers"];
    if (v18)
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __64__PFStoryRecipeUnarchiver_unarchivedRecipeWithJSONObject_error___block_invoke_3;
      v58[3] = &unk_1E7B65D68;
      v58[4] = self;
      v41 = PFMapDictionary(v18, v58);
    }

    else
    {
      v41 = 0;
    }

    v26 = +[PFStoryRecipeFactory createRecipe];
    v27 = [v26 mutableCopyWithZone:0];

    [v27 setContentIdentifier:v46];
    [v27 setMajorVersion:1];
    [v27 setMinorVersion:v10];
    v21 = v11;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = v15;
    v29 = [v28 countByEnumeratingWithState:&v54 objects:v73 count:16];
    if (v29)
    {
      v30 = *v55;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(v28);
          }

          [v27 addLibrary:*(*(&v54 + 1) + 8 * i)];
        }

        v29 = [v28 countByEnumeratingWithState:&v54 objects:v73 count:16];
      }

      while (v29);
    }

    v32 = v13;
    v33 = v18;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v50 objects:v72 count:16];
    if (v35)
    {
      v36 = *v51;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(v34);
          }

          [v27 addAsset:*(*(&v50 + 1) + 8 * j)];
        }

        v35 = [v34 countByEnumeratingWithState:&v50 objects:v72 count:16];
      }

      while (v35);
    }

    v49[2] = v61;
    v49[3] = v62;
    v49[4] = v63;
    v49[0] = v59;
    v49[1] = v60;
    [v27 setOverallDurationInfo:v49];
    [v27 setCurrentStyle:v43];
    [v27 setSeedSongIdentifiersByCatalog:v42];
    [v27 setAutoEditDecisionLists:v41];
    v25 = [v27 copyWithZone:0];
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v74 = *MEMORY[0x1E696A578];
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = [v5 objectForKeyedSubscript:@"version"];
    v45 = [v20 initWithFormat:@"Unsupported recipe version %@", v21];
    v75[0] = v45;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    v23 = [v19 errorWithDomain:@"PFStoryRecipeErrorDomain" code:2 userInfo:v22];
    v24 = v67[5];
    v67[5] = v23;

    v25 = 0;
  }

  if (a4)
  {
    *a4 = v67[5];
  }

  v38 = v25;
  _Block_object_dispose(&v66, 8);

  return v38;
}

id __64__PFStoryRecipeUnarchiver_unarchivedRecipeWithJSONObject_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 unarchivedAssetWithJSONObject:a2 error:&obj];
  objc_storeStrong((v3 + 40), obj);

  return v4;
}

id __64__PFStoryRecipeUnarchiver_unarchivedRecipeWithJSONObject_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _unarchivedLibraryWithJSONObject:a2 error:&obj];
  objc_storeStrong((v3 + 40), obj);

  return v4;
}

- (id)unarchivedRecipeWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v15 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v15];
    v8 = v15;
    v9 = v8;
    if (v7)
    {
      v14 = v8;
      v10 = [(PFStoryRecipeUnarchiver *)self unarchivedRecipeWithJSONObject:v7 error:&v14];
      v11 = v14;

      v9 = v11;
    }

    else
    {
      v10 = 0;
    }

    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v10 = 0;
  if (a4)
  {
LABEL_8:
    v12 = v9;
    *a4 = v9;
  }

LABEL_9:

  return v10;
}

@end