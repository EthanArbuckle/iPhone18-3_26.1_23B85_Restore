@interface PFStoryRecipeArchiver
+ (NSDictionary)stringByAssetKind;
+ (NSDictionary)stringByClipMotionStyle;
+ (NSDictionary)stringByClipPlaybackStyle;
+ (NSDictionary)stringByClipTransition;
+ (NSDictionary)stringByDisplayAssetCategory;
+ (NSDictionary)stringByLibraryKind;
+ (NSDictionary)stringByOverallDurationKind;
+ (NSDictionary)stringBySongCategory;
+ (NSDictionary)stringBySongSubcategory;
- (id)_archivedJSONObjectWithDurationInfo:(id *)a3;
- (id)_archivedJSONObjectWithOverallDurationInfo:(id *)a3;
- (id)archivedJSONDataWithRecipe:(id)a3 options:(unint64_t)a4;
- (id)archivedJSONObjectWithAsset:(id)a3;
- (id)archivedJSONObjectWithAutoEditDecisionList:(id)a3;
- (id)archivedJSONObjectWithCMTime:(id *)a3;
- (id)archivedJSONObjectWithClip:(id)a3;
- (id)archivedJSONObjectWithLibrary:(id)a3;
- (id)archivedJSONObjectWithPresentation:(id)a3;
- (id)archivedJSONObjectWithRecipe:(id)a3;
- (id)archivedJSONObjectWithStyle:(id)a3;
@end

@implementation PFStoryRecipeArchiver

- (id)archivedJSONObjectWithPresentation:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14[0] = @"identifier";
  v5 = [v4 identifier];
  v14[1] = @"clips";
  v15[0] = v5;
  v6 = [v4 clipCount];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [v4 clipAtIndex:i];
      v10 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithClip:v9];
      [v7 addObject:v10];
    }
  }

  v11 = [v7 copy];

  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v12;
}

- (id)_archivedJSONObjectWithDurationInfo:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  time1 = a3->var0;
  v11 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &v11) >= 1)
  {
    time1 = a3->var0;
    v6 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithCMTime:&time1];
    [v5 setObject:v6 forKeyedSubscript:@"minimum"];
  }

  time1 = a3->var1;
  v7 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithCMTime:&time1];
  [v5 setObject:v7 forKeyedSubscript:@"preferred"];

  if ((a3->var2.var2 & 0x1D) == 1)
  {
    time1 = a3->var2;
    v8 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithCMTime:&time1];
    [v5 setObject:v8 forKeyedSubscript:@"maximum"];
  }

  v9 = [v5 copy];

  return v9;
}

- (id)archivedJSONObjectWithCMTime:(id *)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"value";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var0];
  v8[1] = @"timescale";
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a3->var1];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)archivedJSONObjectWithClip:(id)a3
{
  v26[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25[0] = @"assetIdentifier";
  v21 = [v4 assetIdentifier];
  v26[0] = v21;
  v25[1] = @"playbackStyle";
  v5 = +[PFStoryRecipeArchiver stringByClipPlaybackStyle];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "playbackStyle")}];
  v20 = v5;
  v18 = [v5 objectForKeyedSubscript:?];
  v26[1] = v18;
  v25[2] = @"minimumDuration";
  if (v4)
  {
    [v4 minimumDuration];
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v17 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithCMTime:&v22];
  v26[2] = v17;
  v25[3] = @"idealDuration";
  if (v4)
  {
    [v4 idealDuration];
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v16 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithCMTime:&v22];
  v26[3] = v16;
  v25[4] = @"maximumDuration";
  if (v4)
  {
    [v4 maximumDuration];
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v6 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithCMTime:&v22];
  v26[4] = v6;
  v25[5] = @"videoCueOffset";
  if (v4)
  {
    [v4 videoCueOffset];
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v7 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithCMTime:&v22];
  v26[5] = v7;
  v25[6] = @"motionStyle";
  v8 = +[PFStoryRecipeArchiver stringByClipMotionStyle];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "motionStyle")}];
  v10 = [v8 objectForKeyedSubscript:v9];
  v26[6] = v10;
  v25[7] = @"transition";
  v11 = +[PFStoryRecipeArchiver stringByClipTransition];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "transition")}];
  v13 = [v11 objectForKeyedSubscript:v12];
  v26[7] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:8];

  return v14;
}

- (id)archivedJSONObjectWithAutoEditDecisionList:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = @"clips";
  v5 = [v4 numberOfClips];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [v4 clipAtIndex:i];
      v9 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithClip:v8];
      [v6 addObject:v9];
    }
  }

  v10 = [v6 copy];

  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v11;
}

- (id)archivedJSONObjectWithStyle:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:3];
  v6 = [v4 identifier];
  [v5 setObject:v6 forKeyedSubscript:@"id"];

  v7 = [v4 originalColorGradeCategory];
  [v5 setObject:v7 forKeyedSubscript:@"originalColorGradeCategory"];

  v8 = PFStoryColorGradeKindToString([v4 customColorGradeKind]);
  [v5 setObject:v8 forKeyedSubscript:@"customColorGradeKind"];

  v9 = [v4 songAssetIdentifier];
  [v5 setObject:v9 forKeyedSubscript:@"songAsset"];

  v10 = MEMORY[0x1E696AD98];
  v11 = [v4 isCustomized];

  v12 = [v10 numberWithBool:v11];
  [v5 setObject:v12 forKeyedSubscript:@"isCustomized"];

  v13 = [v5 copy];

  return v13;
}

- (id)_archivedJSONObjectWithOverallDurationInfo:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v6 = +[PFStoryRecipeArchiver stringByOverallDurationKind];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3->var0];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v5 setObject:v8 forKeyedSubscript:@"kind"];

  if (a3->var0 == 2)
  {
    v9 = *&a3->var1.var0.var3;
    v10 = *&a3->var1.var2.var0;
    v14[2] = *&a3->var1.var1.var1;
    v14[3] = v10;
    var3 = a3->var1.var2.var3;
    v14[0] = *&a3->var1.var0.var0;
    v14[1] = v9;
    v11 = [(PFStoryRecipeArchiver *)self _archivedJSONObjectWithDurationInfo:v14];
    [v5 setObject:v11 forKeyedSubscript:@"specificDuration"];
  }

  v12 = [v5 copy];

  return v12;
}

- (id)archivedJSONObjectWithAsset:(id)a3
{
  v31[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v30[0] = @"id";
  v4 = [v3 identifier];
  v31[0] = v4;
  v30[1] = @"kind";
  v5 = +[PFStoryRecipeArchiver stringByAssetKind];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "kind")}];
  v7 = [v5 objectForKeyedSubscript:v6];
  v31[1] = v7;
  v30[2] = @"url";
  v8 = [v3 url];
  v9 = [v8 absoluteString];
  v31[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v11 = [v10 mutableCopy];

  v12 = [v3 kind];
  if (v12 != 2)
  {
    if (v12 != 1)
    {
      goto LABEL_8;
    }

    v13 = v3;
    v14 = +[PFStoryRecipeArchiver stringByDisplayAssetCategory];
    v15 = MEMORY[0x1E696AD98];
    v16 = [v13 category];

    v17 = [v15 numberWithInteger:v16];
    v18 = [v14 objectForKeyedSubscript:v17];
    [v11 setObject:v18 forKeyedSubscript:@"category"];

    goto LABEL_6;
  }

  v14 = v3;
  v19 = +[PFStoryRecipeArchiver stringBySongCategory];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "category")}];
  v21 = [v19 objectForKeyedSubscript:v20];
  [v11 setObject:v21 forKeyedSubscript:@"category"];

  v22 = +[PFStoryRecipeArchiver stringBySongSubcategory];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "subcategory")}];
  v24 = [v22 objectForKeyedSubscript:v23];
  [v11 setObject:v24 forKeyedSubscript:@"subcategory"];

  v25 = [v14 title];
  [v11 setObject:v25 forKeyedSubscript:@"title"];

  v26 = [v14 subtitle];
  [v11 setObject:v26 forKeyedSubscript:@"subtitle"];

  v27 = [v14 colorGradeCategory];

  if (v27)
  {
    v17 = [v14 colorGradeCategory];
    [v11 setObject:v17 forKeyedSubscript:@"colorGradeCategory"];
LABEL_6:
  }

LABEL_8:
  v28 = [v11 copy];

  return v28;
}

- (id)archivedJSONObjectWithLibrary:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"kind";
  v3 = a3;
  v4 = +[PFStoryRecipeArchiver stringByLibraryKind];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "kind")}];
  v6 = [v4 objectForKeyedSubscript:v5];
  v11[1] = @"url";
  v12[0] = v6;
  v7 = [v3 url];

  v8 = [v7 absoluteString];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)archivedJSONObjectWithRecipe:(id)a3
{
  v60[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v59[0] = @"header";
  v57[0] = @"content";
  v4 = [v3 contentIdentifier];
  v57[1] = @"version";
  v58[0] = v4;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%li.%li", objc_msgSend(v3, "majorVersion"), objc_msgSend(v3, "minorVersion")];
  v58[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v59[1] = @"resources";
  v60[0] = v6;
  v55 = @"assets";
  v7 = [v3 numberOfAssets];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [v3 assetAtIndex:i];
      v11 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithAsset:v10];
      [v8 addObject:v11];
    }
  }

  v12 = [v8 copy];

  v56 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v60[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v37 = [v14 mutableCopy];

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__9528;
  v52 = __Block_byref_object_dispose__9529;
  v53 = 0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __54__PFStoryRecipeArchiver_archivedJSONObjectWithRecipe___block_invoke;
  v44[3] = &unk_1E7B66430;
  v15 = v3;
  v45 = v15;
  v46 = self;
  v47 = &v48;
  PFStoryRecipeLibraryKindEnumerateSupportedValuesUsingBlock(v44);
  v16 = [v49[5] copy];
  [v37 setObject:v16 forKeyedSubscript:@"libraries"];

  if (v15)
  {
    [v15 overallDurationInfo];
    if (v43[0])
    {
      [v15 overallDurationInfo];
      v17 = [(PFStoryRecipeArchiver *)self _archivedJSONObjectWithOverallDurationInfo:v43];
      [v37 setObject:v17 forKeyedSubscript:@"overallDuration"];
    }
  }

  v36 = [v15 currentStyle];
  if (v36)
  {
    v18 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithStyle:v36];
    [v37 setObject:v18 forKeyedSubscript:@"currentStyle"];
  }

  v35 = [v15 seedSongIdentifiersByCatalog];
  if (v35)
  {
    [v37 setObject:v35 forKeyedSubscript:@"seedSongIdentifiers"];
  }

  v19 = [v15 autoEditDecisionLists];
  v20 = v19 == 0;

  if (!v20)
  {
    v21 = [v15 autoEditDecisionLists];
    v22 = [v21 count];

    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v22];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = [v15 autoEditDecisionLists];
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v54 count:16];
    if (v25)
    {
      v26 = *v40;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v39 + 1) + 8 * j);
          v29 = [v15 autoEditDecisionLists];
          v30 = [v29 objectForKeyedSubscript:v28];
          v31 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithAutoEditDecisionList:v30];
          [v23 setObject:v31 forKeyedSubscript:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v39 objects:v54 count:16];
      }

      while (v25);
    }

    v32 = [v23 copy];
    [v37 setObject:v32 forKeyedSubscript:@"autoEditDecisionLists"];
  }

  v33 = [v37 copy];

  _Block_object_dispose(&v48, 8);

  return v33;
}

uint64_t __54__PFStoryRecipeArchiver_archivedJSONObjectWithRecipe___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryWithKind:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    v11 = v3;
    if (!v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 48) + 8) + 40);
    }

    v9 = [*(a1 + 40) archivedJSONObjectWithLibrary:v11];
    [v5 addObject:v9];

    v4 = v11;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)archivedJSONDataWithRecipe:(id)a3 options:(unint64_t)a4
{
  v5 = [(PFStoryRecipeArchiver *)self archivedJSONObjectWithRecipe:a3];
  v8 = 0;
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:a4 error:&v8];

  return v6;
}

+ (NSDictionary)stringByClipTransition
{
  if (stringByClipTransition_onceToken != -1)
  {
    dispatch_once(&stringByClipTransition_onceToken, &__block_literal_global_176);
  }

  v3 = stringByClipTransition_result;

  return v3;
}

void __47__PFStoryRecipeArchiver_stringByClipTransition__block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"none";
  v3[1] = @"cut";
  v2[2] = &unk_1F2AAB4D0;
  v2[3] = &unk_1F2AAB4E8;
  v3[2] = @"crossfade";
  v3[3] = @"fadetoblack";
  v2[4] = &unk_1F2AAB500;
  v2[5] = &unk_1F2AAB518;
  v3[4] = @"exposurebleed";
  v3[5] = @"pan";
  v2[6] = &unk_1F2AAB530;
  v2[7] = &unk_1F2AAB548;
  v3[6] = @"scale";
  v3[7] = @"rotate";
  v2[8] = &unk_1F2AAB560;
  v3[8] = @"wipe";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:9];
  v1 = stringByClipTransition_result;
  stringByClipTransition_result = v0;
}

+ (NSDictionary)stringByClipMotionStyle
{
  if (stringByClipMotionStyle_onceToken != -1)
  {
    dispatch_once(&stringByClipMotionStyle_onceToken, &__block_literal_global_165);
  }

  v3 = stringByClipMotionStyle_result;

  return v3;
}

void __48__PFStoryRecipeArchiver_stringByClipMotionStyle__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"none";
  v3[1] = @"pan";
  v2[2] = &unk_1F2AAB4D0;
  v2[3] = &unk_1F2AAB4E8;
  v3[2] = @"scale";
  v3[3] = @"rotate";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = stringByClipMotionStyle_result;
  stringByClipMotionStyle_result = v0;
}

+ (NSDictionary)stringByClipPlaybackStyle
{
  if (stringByClipPlaybackStyle_onceToken != -1)
  {
    dispatch_once(&stringByClipPlaybackStyle_onceToken, &__block_literal_global_145);
  }

  v3 = stringByClipPlaybackStyle_result;

  return v3;
}

void __50__PFStoryRecipeArchiver_stringByClipPlaybackStyle__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"unsupported";
  v3[1] = @"image";
  v2[2] = &unk_1F2AAB4D0;
  v2[3] = &unk_1F2AAB4E8;
  v3[2] = @"animatedImage";
  v3[3] = @"livePhoto";
  v2[4] = &unk_1F2AAB500;
  v2[5] = &unk_1F2AAB518;
  v3[4] = @"video";
  v3[5] = @"loopingVideo";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = stringByClipPlaybackStyle_result;
  stringByClipPlaybackStyle_result = v0;
}

+ (NSDictionary)stringByOverallDurationKind
{
  if (stringByOverallDurationKind_onceToken[0] != -1)
  {
    dispatch_once(stringByOverallDurationKind_onceToken, &__block_literal_global_128_9631);
  }

  v3 = stringByOverallDurationKind_result;

  return v3;
}

void __52__PFStoryRecipeArchiver_stringByOverallDurationKind__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"undefined";
  v3[1] = @"default";
  v2[2] = &unk_1F2AAB4D0;
  v2[3] = &unk_1F2AAB4E8;
  v3[2] = @"custom";
  v3[3] = @"short";
  v2[4] = &unk_1F2AAB500;
  v2[5] = &unk_1F2AAB518;
  v3[4] = @"medium";
  v3[5] = @"long";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = stringByOverallDurationKind_result;
  stringByOverallDurationKind_result = v0;
}

+ (NSDictionary)stringBySongSubcategory
{
  if (stringBySongSubcategory_onceToken != -1)
  {
    dispatch_once(&stringBySongSubcategory_onceToken, &__block_literal_global_109);
  }

  v3 = stringBySongSubcategory_result;

  return v3;
}

void __48__PFStoryRecipeArchiver_stringBySongSubcategory__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"none";
  v3[1] = @"bestSuggestions";
  v2[2] = &unk_1F2AAB4D0;
  v2[3] = &unk_1F2AAB4E8;
  v3[2] = @"userBasedSuggestions";
  v3[3] = @"locationBasedSuggestions";
  v2[4] = &unk_1F2AAB500;
  v2[5] = &unk_1F2AAB518;
  v3[4] = @"timeBasedSuggestions";
  v3[5] = @"performerBasedSuggestions";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = stringBySongSubcategory_result;
  stringBySongSubcategory_result = v0;
}

+ (NSDictionary)stringBySongCategory
{
  if (stringBySongCategory_onceToken[0] != -1)
  {
    dispatch_once(stringBySongCategory_onceToken, &__block_literal_global_104);
  }

  v3 = stringBySongCategory_result;

  return v3;
}

void __45__PFStoryRecipeArchiver_stringBySongCategory__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"none";
  v3[1] = @"autoSuggested";
  v2[2] = &unk_1F2AAB4D0;
  v3[2] = @"userPicked";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = stringBySongCategory_result;
  stringBySongCategory_result = v0;
}

+ (NSDictionary)stringByDisplayAssetCategory
{
  if (stringByDisplayAssetCategory_onceToken != -1)
  {
    dispatch_once(&stringByDisplayAssetCategory_onceToken, &__block_literal_global_83);
  }

  v3 = stringByDisplayAssetCategory_result;

  return v3;
}

void __53__PFStoryRecipeArchiver_stringByDisplayAssetCategory__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"none";
  v3[1] = @"autoPicked";
  v2[2] = &unk_1F2AAB4D0;
  v2[3] = &unk_1F2AAB4E8;
  v3[2] = @"autoRejected";
  v3[3] = @"userPicked";
  v2[4] = &unk_1F2AAB500;
  v3[4] = @"userRejected";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = stringByDisplayAssetCategory_result;
  stringByDisplayAssetCategory_result = v0;
}

+ (NSDictionary)stringByAssetKind
{
  if (stringByAssetKind_onceToken[0] != -1)
  {
    dispatch_once(stringByAssetKind_onceToken, &__block_literal_global_73);
  }

  v3 = stringByAssetKind_result;

  return v3;
}

void __42__PFStoryRecipeArchiver_stringByAssetKind__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"undefined";
  v3[1] = @"displayAsset";
  v2[2] = &unk_1F2AAB4D0;
  v3[2] = @"song";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = stringByAssetKind_result;
  stringByAssetKind_result = v0;
}

+ (NSDictionary)stringByLibraryKind
{
  if (stringByLibraryKind_onceToken != -1)
  {
    dispatch_once(&stringByLibraryKind_onceToken, &__block_literal_global_9687);
  }

  v3 = stringByLibraryKind_result;

  return v3;
}

void __44__PFStoryRecipeArchiver_stringByLibraryKind__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2AAB4A0;
  v2[1] = &unk_1F2AAB4B8;
  v3[0] = @"undefined";
  v3[1] = @"photoLibrary";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = stringByLibraryKind_result;
  stringByLibraryKind_result = v0;
}

@end