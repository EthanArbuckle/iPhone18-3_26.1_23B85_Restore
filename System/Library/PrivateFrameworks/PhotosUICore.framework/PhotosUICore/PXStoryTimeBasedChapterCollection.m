@interface PXStoryTimeBasedChapterCollection
- (BOOL)canApplyEdits:(id)a3 error:(id *)a4;
- (BOOL)containsChapterBeginningWithAsset:(id)a3;
- (PXStoryTimeBasedChapterCollection)initWithAssets:(id)a3 keyAsset:(id)a4 configuration:(id)a5;
- (id)_dateForAsset:(id)a3;
- (id)_initWithChapters:(id)a3 usesAssetLocalCreationDates:(BOOL)a4;
- (id)chapterAtIndex:(int64_t)a3;
- (id)chapterContainingAsset:(id)a3;
- (id)copyByApplyingEdits:(id)a3;
- (int64_t)indexOfChapterWithIdentifier:(id)a3;
- (int64_t)numberOfChapters;
- (void)enumerateChaptersUsingBlock:(id)a3;
@end

@implementation PXStoryTimeBasedChapterCollection

- (id)copyByApplyingEdits:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStoryTimeBasedChapterCollection *)self chapters];
  v6 = [v5 mutableCopy];

  v52 = self;
  v56 = [(PXStoryTimeBasedChapterCollection *)self usesAssetLocalCreationDates];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v4;
  v71 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v71)
  {
    v70 = *v75;
    v7 = 0x1E696A000uLL;
    v55 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v75 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v74 + 1) + 8 * v8);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57__PXStoryTimeBasedChapterCollection_copyByApplyingEdits___block_invoke;
        aBlock[3] = &unk_1E772F438;
        v10 = v6;
        v73 = v10;
        v11 = _Block_copy(aBlock);
        v12 = [v9 kind];
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v66 = v11;
            v21 = v9;
            v22 = [v21 firstAsset];
            v23 = _DateForAsset(v22, v56);
            v24 = [_PXStoryTimeBasedChapter alloc];
            v25 = v7;
            v26 = objc_alloc(*(v7 + 2944));
            v27 = [MEMORY[0x1E695DF00] distantFuture];
            v69 = v23;
            v28 = [v26 initWithStartDate:v23 endDate:v27];
            v65 = v22;
            v29 = [v22 uuid];
            v30 = [(_PXStoryTimeBasedChapter *)v24 initWithDateInterval:v28 firstAssetLocalIdentifier:v29];

            v31 = [v21 chapterConfiguration];
            v31[2](v31, v30);

            v68 = v30;
            v32 = [v10 indexOfObject:v30 inSortedRange:0 options:objc_msgSend(v10 usingComparator:{"count"), 1024, &__block_literal_global_29_19946}];
            if (v32 >= 1)
            {
              v63 = v32 - 1;
              v33 = [v10 objectAtIndexedSubscript:v32 - 1];
              v34 = [v33 copy];

              v59 = objc_alloc(*(v25 + 2944));
              v61 = [v34 dateInterval];
              v57 = [v61 startDate];
              v35 = [v23 dateByAddingTimeInterval:-1.0];
              v36 = [v34 dateInterval];
              v37 = [v36 endDate];
              [v35 earlierDate:v37];
              v39 = v38 = v32;
              v40 = [v59 initWithStartDate:v57 endDate:v39];
              [v34 setDateInterval:v40];

              v32 = v38;
              [v10 setObject:v34 atIndexedSubscript:v63];
            }

            if (v32 < [v10 count])
            {
              v60 = [v10 objectAtIndexedSubscript:v32];
              v54 = objc_alloc(MEMORY[0x1E696AB80]);
              v62 = [v68 dateInterval];
              v53 = [v62 startDate];
              v58 = [v60 dateInterval];
              [v58 startDate];
              v41 = v64 = v32;
              v42 = [v41 dateByAddingTimeInterval:-1.0];
              v43 = [v68 dateInterval];
              v44 = [v43 endDate];
              v45 = [v42 earlierDate:v44];
              v46 = [v54 initWithStartDate:v53 endDate:v45];
              [v68 setDateInterval:v46];

              v32 = v64;
            }

            [v10 insertObject:v68 atIndex:v32];

            v6 = v55;
            v7 = 0x1E696A000;
            v11 = v66;
          }

          else
          {
            if (v12 != 3)
            {
              goto LABEL_20;
            }

            v13 = [v9 deletedChapterIdentifier];
            v14 = v11[2](v11, v13);

            if (v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v10 removeObjectAtIndex:v14];
            }
          }

          goto LABEL_19;
        }

        if (v12 == 1)
        {
          v15 = v9;
          v16 = [v15 editedChapterIdentifier];
          v17 = v11[2](v11, v16);

          v7 = 0x1E696A000;
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [v10 objectAtIndexedSubscript:v17];
            v19 = [v18 copy];

            v7 = 0x1E696A000;
            v20 = [v15 chapterChangeRequest];
            (v20)[2](v20, v19);

            [v10 setObject:v19 atIndexedSubscript:v17];
          }

LABEL_19:

          goto LABEL_20;
        }

        if (!v12)
        {
          v50 = [MEMORY[0x1E696AAA8] currentHandler];
          [v50 handleFailureInMethod:a2 object:v52 file:@"PXStoryTimeBasedChapterCollection.m" lineNumber:218 description:@"Code which should be unreachable has been reached"];

          abort();
        }

LABEL_20:

        ++v8;
      }

      while (v71 != v8);
      v47 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
      v71 = v47;
    }

    while (v47);
  }

  v48 = [[PXStoryTimeBasedChapterCollection alloc] _initWithChapters:v6 usesAssetLocalCreationDates:v56];
  return v48;
}

uint64_t __57__PXStoryTimeBasedChapterCollection_copyByApplyingEdits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXStoryTimeBasedChapterCollection_copyByApplyingEdits___block_invoke_2;
  v8[3] = &unk_1E772F410;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8];

  return v6;
}

uint64_t __57__PXStoryTimeBasedChapterCollection_copyByApplyingEdits___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)canApplyEdits:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__19956;
  v30 = __Block_byref_object_dispose__19957;
  v31 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57__PXStoryTimeBasedChapterCollection_canApplyEdits_error___block_invoke;
        aBlock[3] = &unk_1E772F3E8;
        aBlock[4] = self;
        aBlock[5] = &v26;
        aBlock[6] = &v32;
        v9 = _Block_copy(aBlock);
        v10 = [v8 kind];
        if (v10)
        {
          if (v10 == 1)
          {
            v13 = v8;
            v14 = [v13 editedChapterIdentifier];
            v9[2](v9, v14);
          }

          else if (v10 == 3)
          {
            v11 = v8;
            v12 = [v11 deletedChapterIdentifier];
            v9[2](v9, v12);
          }
        }

        else
        {
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXStoryChapterErrorDomain" code:1 userInfo:0];
          v16 = v27[5];
          v27[5] = v15;

          *(v33 + 24) = 0;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v5);
  }

  if (a4)
  {
    *a4 = v27[5];
  }

  v17 = *(v33 + 24);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  return v17 & 1;
}

void __57__PXStoryTimeBasedChapterCollection_canApplyEdits_error___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) chapterIndexesByIdentifier];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has no chapter with identifier %@", *(a1 + 32), v3];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:@"PXStoryChapterErrorDomain" code:2 userInfo:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (id)chapterContainingAsset:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _DateForAsset(v4, [(PXStoryTimeBasedChapterCollection *)self usesAssetLocalCreationDates]);
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(PXStoryTimeBasedChapterCollection *)self chapters];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 extendedDateIntervalForComparisonWithAssetDates];
          v12 = [v11 containsDate:v5];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsChapterBeginningWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTimeBasedChapterCollection *)self chapterBeginningAssetLocalIdentifiers];
  v6 = [v4 uuid];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (int64_t)indexOfChapterWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTimeBasedChapterCollection *)self chapterIndexesByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)chapterAtIndex:(int64_t)a3
{
  v4 = [(PXStoryTimeBasedChapterCollection *)self chapters];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)numberOfChapters
{
  v2 = [(PXStoryTimeBasedChapterCollection *)self chapters];
  v3 = [v2 count];

  return v3;
}

- (id)_dateForAsset:(id)a3
{
  v4 = a3;
  if ([(PXStoryTimeBasedChapterCollection *)self usesAssetLocalCreationDates])
  {
    [v4 localCreationDate];
  }

  else
  {
    [v4 creationDate];
  }
  v5 = ;

  return v5;
}

- (void)enumerateChaptersUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTimeBasedChapterCollection *)self chapters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PXStoryTimeBasedChapterCollection_enumerateChaptersUsingBlock___block_invoke;
  v7[3] = &unk_1E772F3C0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __65__PXStoryTimeBasedChapterCollection_enumerateChaptersUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 dateInterval];
  (*(v5 + 16))(v5, v6, v7, a4);
}

- (id)_initWithChapters:(id)a3 usesAssetLocalCreationDates:(BOOL)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = PXStoryTimeBasedChapterCollection;
  v7 = [(PXStoryTimeBasedChapterCollection *)&v26 init];
  if (v7)
  {
    v8 = [v6 copy];
    chapters = v7->_chapters;
    v7->_chapters = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = v7->_chapters;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __83__PXStoryTimeBasedChapterCollection__initWithChapters_usesAssetLocalCreationDates___block_invoke;
    v23 = &unk_1E772F398;
    v24 = v10;
    v25 = v11;
    v13 = v11;
    v14 = v10;
    [(NSArray *)v12 enumerateObjectsUsingBlock:&v20];
    v15 = [v14 copy];
    chapterIndexesByIdentifier = v7->_chapterIndexesByIdentifier;
    v7->_chapterIndexesByIdentifier = v15;

    v17 = [v13 copy];
    chapterBeginningAssetLocalIdentifiers = v7->_chapterBeginningAssetLocalIdentifiers;
    v7->_chapterBeginningAssetLocalIdentifiers = v17;

    v7->_usesAssetLocalCreationDates = a4;
  }

  return v7;
}

void __83__PXStoryTimeBasedChapterCollection__initWithChapters_usesAssetLocalCreationDates___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  v8 = *(a1 + 32);
  v9 = [v6 identifier];
  [v8 setObject:v7 forKeyedSubscript:v9];

  v11 = [v6 firstAssetLocalIdentifier];

  v10 = v11;
  if (v11)
  {
    [*(a1 + 40) addObject:v11];
    v10 = v11;
  }
}

- (PXStoryTimeBasedChapterCollection)initWithAssets:(id)a3 keyAsset:(id)a4 configuration:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(_PXStoryTimeBasedChapterCollectionConfiguration);
  v30 = v9;
  (*(v9 + 2))(v9, v10);
  v33 = [(_PXStoryTimeBasedChapterCollectionConfiguration *)v10 chapters];
  v11 = [v33 sortedArrayUsingComparator:&__block_literal_global_19970];
  v28 = v10;
  v12 = [(_PXStoryTimeBasedChapterCollectionConfiguration *)v10 usesAssetLocalCreationDates];
  v13 = [v7 count];
  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  if (v13 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v14 initWithCapacity:v15];
  v17 = [v8 uuid];
  v31 = v17;
  if (v13 >= 1)
  {
    v18 = v17;
    for (i = 0; i != v13; ++i)
    {
      v20 = [v7 objectAtIndexedSubscript:i];
      v21 = _DateForAsset(v20, v12);
      v22 = [v20 uuid];
      v23 = v22;
      if (v21 && v22 && ([v22 isEqualToString:v18] & 1) == 0)
      {
        v24 = [[_PXStoryTimeBasedAssetInfo alloc] initWithDate:v21 uuid:v23];
        [v16 addObject:v24];

        v18 = v31;
      }
    }
  }

  [v16 sortUsingComparator:&__block_literal_global_5];
  memset(v34, 0, sizeof(v34));
  obj = v33;
  if ([obj countByEnumeratingWithState:v34 objects:v35 count:16])
  {
    [**(&v34[0] + 1) extendedDateIntervalForComparisonWithAssetDates];
    v25 = [objc_claimAutoreleasedReturnValue() startDate];
    [v16 count];
    v16;
    v25;
    PXFirstIndexInSortedRangePassingTest();
  }

  v26 = [(PXStoryTimeBasedChapterCollection *)self _initWithChapters:obj usesAssetLocalCreationDates:[(_PXStoryTimeBasedChapterCollectionConfiguration *)v28 usesAssetLocalCreationDates]];
  return v26;
}

BOOL __75__PXStoryTimeBasedChapterCollection_initWithAssets_keyAsset_configuration___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v3 date];
  v5 = [v4 compare:*(a1 + 40)] != -1;

  return v5;
}

uint64_t __75__PXStoryTimeBasedChapterCollection_initWithAssets_keyAsset_configuration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

@end