@interface MPMediaPredicate(VideosUI)
+ (id)_vui_isNetworkPlayablePredicate:()VideosUI;
+ (id)_vui_isPlayablePredicate:()VideosUI;
+ (id)vui_isLocalPredicate:()VideosUI comparison:;
+ (id)vui_isPlayablePredicate:()VideosUI comparison:;
+ (id)vui_mediaEntityTypePredicate:()VideosUI comparison:;
+ (id)vui_restrictionsPredicateWithMediaEntityType:()VideosUI mediaLibrary:;
+ (id)vui_seasonIdentifierPredicate:()VideosUI comparison:;
+ (id)vui_seasonNumberPredicate:()VideosUI comparison:;
+ (id)vui_showPersistentIDPredicate:()VideosUI comparison:;
@end

@implementation MPMediaPredicate(VideosUI)

+ (id)vui_mediaEntityTypePredicate:()VideosUI comparison:
{
  v28[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4 && a4 != 100)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported comparison (%lu)", a4}];
  }

  v6 = +[VUIMediaEntityType season];
  if (v6 == v5)
  {
    goto LABEL_12;
  }

  v7 = +[VUIMediaEntityType show];
  v8 = v7;
  if (v7 == v5)
  {

LABEL_12:
    goto LABEL_13;
  }

  v9 = +[VUIMediaEntityType episode];

  if (v9 == v5)
  {
LABEL_13:
    v14 = MEMORY[0x1E6970610];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:512];
    v13 = [v14 predicateWithValue:v15 forProperty:*MEMORY[0x1E696FA88] comparisonType:a4];

    goto LABEL_14;
  }

  v10 = +[VUIMediaEntityType movie];

  if (v10 == v5)
  {
    v17 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5C948 forProperty:*MEMORY[0x1E696FA88] comparisonType:a4];
    v28[0] = v17;
    v18 = MEMORY[0x1E695E110];
    v19 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E110] forProperty:*MEMORY[0x1E696FA58] comparisonType:a4];
    v28[1] = v19;
    v20 = [MEMORY[0x1E6970610] predicateWithValue:v18 forProperty:*MEMORY[0x1E696FA30] comparisonType:a4];
    v28[2] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];

    v22 = 0x1E6970598;
    if (a4)
    {
      v22 = 0x1E69705A0;
    }

    v13 = [*v22 predicateMatchingPredicates:v21];
  }

  else
  {
    v11 = +[VUIMediaEntityType movieRental];

    if (v11 == v5)
    {
      v23 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5C948 forProperty:*MEMORY[0x1E696FA88] comparisonType:a4];
      v27[0] = v23;
      v24 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E118] forProperty:*MEMORY[0x1E696FA58] comparisonType:a4];
      v27[1] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

      v26 = 0x1E6970598;
      if (a4)
      {
        v26 = 0x1E69705A0;
      }

      v13 = [*v26 predicateMatchingPredicates:v25];
    }

    else
    {
      v12 = +[VUIMediaEntityType homeVideo];

      if (v12 == v5)
      {
        v13 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5C960 forProperty:*MEMORY[0x1E696FA88] comparisonType:a4];
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported media entity type (%@)", v5}];
        v13 = 0;
      }
    }
  }

LABEL_14:

  return v13;
}

+ (id)vui_seasonIdentifierPredicate:()VideosUI comparison:
{
  v6 = a3;
  if (a4 && a4 != 100)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported comparison (%lu)", a4}];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  persistentID = [v6 persistentID];
  v9 = [self vui_showPersistentIDPredicate:objc_msgSend(persistentID comparison:{"unsignedIntegerValue"), a4}];
  [v7 addObject:v9];
  seasonNumber = [v6 seasonNumber];
  v11 = [self vui_seasonNumberPredicate:objc_msgSend(seasonNumber comparison:{"unsignedIntegerValue"), a4}];
  [v7 addObject:v11];
  if ([v7 count] == 1)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    if ([v7 count] < 2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid season Identifier (%@)", v6}];
      v14 = 0;
      goto LABEL_13;
    }

    if (a4)
    {
      v13 = MEMORY[0x1E69705A0];
    }

    else
    {
      v13 = MEMORY[0x1E6970598];
    }

    firstObject = [v13 predicateMatchingPredicates:v7];
  }

  v14 = firstObject;
LABEL_13:

  return v14;
}

+ (id)vui_showPersistentIDPredicate:()VideosUI comparison:
{
  v5 = MEMORY[0x1E6970610];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [v5 predicateWithValue:v6 forProperty:*MEMORY[0x1E696F938] comparisonType:a4];

  return v7;
}

+ (id)vui_seasonNumberPredicate:()VideosUI comparison:
{
  v5 = MEMORY[0x1E6970610];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [v5 predicateWithValue:v6 forProperty:*MEMORY[0x1E696FB10] comparisonType:a4];

  return v7;
}

+ (id)vui_isLocalPredicate:()VideosUI comparison:
{
  v45 = *MEMORY[0x1E69E9840];
  if (a4 && a4 != 100)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported comparison (%lu)", a4}];
  }

  v6 = MEMORY[0x1E6970610];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v28 = [v6 predicateWithValue:v7 forProperty:*MEMORY[0x1E696FA38] comparisonType:a4];

  v8 = 100;
  if (a3)
  {
    v8 = 0;
  }

  if (v8 == a4)
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v9 sidebandMediaLibrary];
    v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F5E5E7F0];
    v12 = [sidebandMediaLibrary videosWithDownloadState:2 entitlementTypes:v11 sortDescriptors:0 useMainThreadContext:0];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v13)
    {
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          v32 = 0;
          v33 = &v32;
          v34 = 0x3032000000;
          v35 = __Block_byref_object_copy_;
          v36 = __Block_byref_object_dispose_;
          v37 = 0;
          managedObjectContext = [v16 managedObjectContext];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __62__MPMediaPredicate_VideosUI__vui_isLocalPredicate_comparison___block_invoke;
          v31[3] = &unk_1E872DB58;
          v31[4] = v16;
          v31[5] = &v32;
          [managedObjectContext performBlockAndWait:v31];

          if (v33[5])
          {
            [v30 addObject:?];
          }

          _Block_object_dispose(&v32, 8);
        }

        v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    v18 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E110] forProperty:*MEMORY[0x1E696FA68]];
    v19 = MEMORY[0x1E6970598];
    v43[0] = v28;
    v43[1] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v21 = [v19 predicateMatchingPredicates:v20];

    if ([v30 count])
    {
      v22 = [MEMORY[0x1E69705A8] predicateWithProperty:*MEMORY[0x1E696FB60] values:v30];
      v23 = MEMORY[0x1E69705A0];
      v42[0] = v21;
      v42[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
      v25 = [v23 predicateMatchingPredicates:v24];
    }

    else
    {
      v25 = v21;
    }

    v26 = v28;
  }

  else
  {
    v26 = v28;
    v25 = v28;
  }

  return v25;
}

+ (id)vui_isPlayablePredicate:()VideosUI comparison:
{
  if (a4 && a4 != 100)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported comparison (%lu)", a4}];
  }

  v7 = 100;
  if (a3)
  {
    v7 = 0;
  }

  v8 = [self _vui_isPlayablePredicate:v7 == a4];

  return v8;
}

+ (id)vui_restrictionsPredicateWithMediaEntityType:()VideosUI mediaLibrary:
{
  v6 = a3;
  if (![a4 vui_isDeviceMediaLibrary])
  {
    v9 = 0;
    goto LABEL_10;
  }

  mEMORY[0x1E69DF780] = [MEMORY[0x1E69DF780] sharedInstance];
  mediaCategoryType = [v6 mediaCategoryType];
  if (mediaCategoryType != 1)
  {
    if (mediaCategoryType || ([mEMORY[0x1E69DF780] allowsShowingUndownloadedMovies] & 1) != 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = [self vui_isLocalPredicate:1 comparison:0];
    goto LABEL_9;
  }

  if (([mEMORY[0x1E69DF780] allowsShowingUndownloadedTVShows] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = 0;
LABEL_9:

LABEL_10:

  return v9;
}

+ (id)_vui_isNetworkPlayablePredicate:()VideosUI
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696FB60];
  if (a3)
  {
    v4 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5C9A8 forProperty:v3 comparisonType:100];
    v5 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5C9A8 forProperty:*MEMORY[0x1E696FA10] comparisonType:100];
    v6 = MEMORY[0x1E69705A0];
    v12[0] = v4;
    v7 = v12;
  }

  else
  {
    v4 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5C9A8 forProperty:v3 comparisonType:0];
    v5 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5C9A8 forProperty:*MEMORY[0x1E696FA10] comparisonType:0];
    v6 = MEMORY[0x1E6970598];
    v11 = v4;
    v7 = &v11;
  }

  v7[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v9 = [v6 predicateMatchingPredicates:v8];

  return v9;
}

+ (id)_vui_isPlayablePredicate:()VideosUI
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [self vui_isLocalPredicate:a3 comparison:0];
  v6 = [self _vui_isNetworkPlayablePredicate:a3];
  v7 = v6;
  if (a3)
  {
    v8 = MEMORY[0x1E69705A0];
    v14[0] = v5;
    v9 = v14;
  }

  else
  {
    v8 = MEMORY[0x1E6970598];
    v13 = v5;
    v9 = &v13;
  }

  v9[1] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v11 = [v8 predicateMatchingPredicates:v10];

  return v11;
}

@end