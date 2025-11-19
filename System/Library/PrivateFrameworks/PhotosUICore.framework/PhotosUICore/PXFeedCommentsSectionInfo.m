@interface PXFeedCommentsSectionInfo
- (BOOL)containsAsset:(id)a3;
- (BOOL)hasMultipleAssetsForItemAtIndex:(int64_t)a3;
- (BOOL)isMine;
- (id)assetForItemAtIndex:(int64_t)a3;
- (id)assets;
- (id)assetsForItemAtIndex:(int64_t)a3 maximumCount:(int64_t)a4;
- (id)cloudFeedCommentsEntry;
- (id)commentForItemAtIndex:(int64_t)a3;
- (id)commentTextForItemAtIndex:(int64_t)a3;
- (id)likesForItemAtIndex:(int64_t)a3;
- (int64_t)indexOfItemWithAsset:(id)a3;
- (int64_t)indexOfItemWithComment:(id)a3;
- (int64_t)typeForItemAtIndex:(int64_t)a3;
- (unint64_t)assetsCount;
- (void)getCommentCount:(unint64_t *)a3 likeCount:(unint64_t *)a4;
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedCommentsSectionInfo

- (BOOL)isMine
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v3 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v4 = [(PXFeedSectionInfo *)self photoLibrary];
  v5 = [v4 photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__PXFeedCommentsSectionInfo_isMine__block_invoke;
  v8[3] = &unk_1E7749A28;
  v6 = v3;
  v9 = v6;
  v10 = &v11;
  [v5 performBlockAndWait:v8];

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __35__PXFeedCommentsSectionInfo_isMine__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) entryComments];
  v3 = [v2 mutableCopy];

  v4 = [*(a1 + 32) entryLikeComments];
  [v3 unionOrderedSet:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) isMyComment];
        v11 = [v10 BOOLValue];

        if ((v11 & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (unint64_t)assetsCount
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v4 = [(PXFeedSectionInfo *)self photoLibrary];
  v5 = [v4 photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__PXFeedCommentsSectionInfo_assetsCount__block_invoke;
  v9[3] = &unk_1E7749A28;
  v6 = v3;
  v10 = v6;
  v11 = &v12;
  [v5 performBlockAndWait:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __40__PXFeedCommentsSectionInfo_assetsCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryCloudAssetGUID];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) entryLikeComments];
    v3 = [v4 count];
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (id)assets
{
  if ([(PXFeedCommentsSectionInfo *)self hasMultipleAssetsForItemAtIndex:0])
  {
    v3 = [(PXFeedCommentsSectionInfo *)self assetsForItemAtIndex:0 maximumCount:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v4 = [(PXFeedCommentsSectionInfo *)self assetForItemAtIndex:0];
    v3 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{v4, 0}];
  }

  return v3;
}

- (int64_t)indexOfItemWithComment:(id)a3
{
  v4 = a3;
  if ([(PXFeedSectionInfo *)self numberOfItems]< 1)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
    if ([v4 isLikeBoolValue])
    {
      v6 = [v5 entryLikeComments];
      v7 = [v6 containsObject:v4];

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v9 = [v5 entryComments];
      v10 = [v9 indexOfObject:v4];

      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v10 + [(PXFeedCommentsSectionInfo *)self _hasLikes];
      }
    }
  }

  return v8;
}

- (int64_t)indexOfItemWithAsset:(id)a3
{
  v4 = a3;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(PXFeedSectionInfo *)self numberOfItems]>= 1 && [(PXFeedCommentsSectionInfo *)self containsAsset:v4])
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = [(PXFeedSectionInfo *)self photoLibrary];
  v7 = [v6 photoLibrary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__PXFeedCommentsSectionInfo_containsAsset___block_invoke;
  v11[3] = &unk_1E77448A8;
  v8 = v5;
  v12 = v8;
  v15 = &v16;
  v9 = v4;
  v13 = v9;
  v14 = self;
  [v7 performBlockAndWait:v11];

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return self;
}

void __43__PXFeedCommentsSectionInfo_containsAsset___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) entryCloudAssetGUID];
  v2 = [*(a1 + 40) cloudAssetGUID];
  *(*(*(a1 + 56) + 8) + 24) = [v2 isEqualToString:v4];

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && [*(a1 + 48) hasMultipleAssetsForItemAtIndex:0])
  {
    v3 = [*(a1 + 48) assetsForItemAtIndex:0 maximumCount:0x7FFFFFFFFFFFFFFFLL];
    *(*(*(a1 + 56) + 8) + 24) = [v3 containsObject:*(a1 + 40)];
  }
}

- (void)getCommentCount:(unint64_t *)a3 likeCount:(unint64_t *)a4
{
  if (![(PXFeedSectionInfo *)self isLoaded])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXFeedCommentsSectionInfo.m" lineNumber:160 description:@"section info should be loaded at this point"];
  }

  v8 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = [(PXFeedSectionInfo *)self photoLibrary];
  v10 = [v9 photoLibrary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PXFeedCommentsSectionInfo_getCommentCount_likeCount___block_invoke;
  v13[3] = &unk_1E7746888;
  v15 = &v21;
  v11 = v8;
  v14 = v11;
  v16 = &v17;
  [v10 performBlockAndWait:v13];

  if (a3)
  {
    *a3 = v22[3];
  }

  if (a4)
  {
    *a4 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

void __55__PXFeedCommentsSectionInfo_getCommentCount_likeCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryComments];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];

  v3 = [*(a1 + 32) entryLikeComments];
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];
}

- (id)likesForItemAtIndex:(int64_t)a3
{
  v4 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7002;
  v17 = __Block_byref_object_dispose__7003;
  v18 = 0;
  v5 = [(PXFeedSectionInfo *)self photoLibrary];
  v6 = [v5 photoLibrary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PXFeedCommentsSectionInfo_likesForItemAtIndex___block_invoke;
  v10[3] = &unk_1E7749A28;
  v12 = &v13;
  v7 = v4;
  v11 = v7;
  [v6 performBlockAndWait:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __49__PXFeedCommentsSectionInfo_likesForItemAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryLikeComments];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)commentTextForItemAtIndex:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7002;
  v14 = __Block_byref_object_dispose__7003;
  v15 = 0;
  v5 = [(PXFeedSectionInfo *)self photoLibrary];
  v6 = [v5 photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PXFeedCommentsSectionInfo_commentTextForItemAtIndex___block_invoke;
  v9[3] = &unk_1E77477B8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  [v6 performBlockAndWait:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __55__PXFeedCommentsSectionInfo_commentTextForItemAtIndex___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) commentForItemAtIndex:*(a1 + 48)];
  v2 = [v5 commentText];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)commentForItemAtIndex:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v6 = a3 - [(PXFeedCommentsSectionInfo *)self _hasLikes];
  v7 = [v5 entryComments];
  v8 = v7;
  if ((v6 & 0x8000000000000000) != 0 || v6 >= [v7 count])
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218496;
      v13 = v6;
      v14 = 2048;
      v15 = a3;
      v16 = 1024;
      v17 = [(PXFeedCommentsSectionInfo *)self _hasLikes];
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to get a comment at invalid index [%ld] from original index [%ld] due to _hasLikes=[%d]", &v12, 0x1Cu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndex:v6];
  }

  return v9;
}

- (id)assetsForItemAtIndex:(int64_t)a3 maximumCount:(int64_t)a4
{
  v6 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7002;
  v20 = __Block_byref_object_dispose__7003;
  v21 = 0;
  v7 = [(PXFeedSectionInfo *)self photoLibrary];
  v8 = [v7 photoLibrary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PXFeedCommentsSectionInfo_assetsForItemAtIndex_maximumCount___block_invoke;
  v12[3] = &unk_1E77477B8;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  v15 = a4;
  [v8 performBlockAndWait:v12];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __63__PXFeedCommentsSectionInfo_assetsForItemAtIndex_maximumCount___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) entryLikeComments];
  v3 = MEMORY[0x1E695DFA0];
  v4 = *(a1 + 48);
  v5 = [v2 count];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = [v3 orderedSetWithCapacity:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v2;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) asset];
        if (v15)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v15];
          if ([*(*(*(a1 + 40) + 8) + 40) count] >= *(a1 + 48))
          {

            goto LABEL_15;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if (![*(*(*(a1 + 40) + 8) + 40) count])
  {
    v16 = [*(a1 + 32) entryComments];
    v17 = [v16 firstObject];

    v18 = [v17 asset];
    if (v18)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v18];
    }
  }
}

- (BOOL)hasMultipleAssetsForItemAtIndex:(int64_t)a3
{
  v4 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(PXFeedSectionInfo *)self photoLibrary];
  v6 = [v5 photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PXFeedCommentsSectionInfo_hasMultipleAssetsForItemAtIndex___block_invoke;
  v9[3] = &unk_1E7749A28;
  v11 = &v12;
  v7 = v4;
  v10 = v7;
  [v6 performBlockAndWait:v9];

  LOBYTE(v5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v5;
}

void __61__PXFeedCommentsSectionInfo_hasMultipleAssetsForItemAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryCloudAssetGUID];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

- (id)assetForItemAtIndex:(int64_t)a3
{
  v4 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7002;
  v17 = __Block_byref_object_dispose__7003;
  v18 = 0;
  v5 = [(PXFeedSectionInfo *)self photoLibrary];
  v6 = [v5 photoLibrary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PXFeedCommentsSectionInfo_assetForItemAtIndex___block_invoke;
  v10[3] = &unk_1E7749A28;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 performBlockAndWait:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __49__PXFeedCommentsSectionInfo_assetForItemAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryLikeComments];
  v3 = [v2 firstObject];
  v4 = v3;
  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) entryComments];
    v9 = [v5 firstObject];
  }

  v6 = [v9 asset];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (int64_t)typeForItemAtIndex:(int64_t)a3
{
  if (((a3 == 0) & [(PXFeedCommentsSectionInfo *)self _hasLikes]) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)updateFromCloudFeedEntry
{
  v33.receiver = self;
  v33.super_class = PXFeedCommentsSectionInfo;
  [(PXFeedSectionInfo *)&v33 updateFromCloudFeedEntry];
  v3 = [(PXFeedCommentsSectionInfo *)self cloudFeedCommentsEntry];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7002;
  v23 = __Block_byref_object_dispose__7003;
  v24 = 0;
  v4 = [(PXFeedSectionInfo *)self photoLibrary];
  v5 = [v4 photoLibrary];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __53__PXFeedCommentsSectionInfo_updateFromCloudFeedEntry__block_invoke;
  v14 = &unk_1E7744670;
  v16 = &v29;
  v6 = v3;
  v15 = v6;
  v17 = &v25;
  v18 = &v19;
  [v5 performBlockAndWait:&v11];

  v7 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:v20[5], v11, v12, v13, v14];
  v8 = v30[3];
  v9 = v26[3];
  if (v8 >= 1)
  {
    v26[3] = ++v9;
  }

  [(PXFeedSectionInfo *)self setNumberOfItems:v9];
  [(PXFeedSectionInfo *)self setSharedAlbum:v7];
  v10 = [v7 localizedTitle];
  [(PXFeedSectionInfo *)self setAlbumTitle:v10];

  [(PXFeedCommentsSectionInfo *)self _setHasLikes:v8 > 0];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __53__PXFeedCommentsSectionInfo_updateFromCloudFeedEntry__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryLikeComments];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];

  v3 = [*(a1 + 32) entryComments];
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];

  v4 = [*(a1 + 32) entryAlbumGUID];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)cloudFeedCommentsEntry
{
  v4 = [(PXFeedSectionInfo *)self cloudFeedEntry];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXFeedCommentsSectionInfo.m" lineNumber:37 description:@"unexpected cloud feed entry class"];
  }

  return v4;
}

@end