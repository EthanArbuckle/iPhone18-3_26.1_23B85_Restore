@interface PXFeedAssetsSectionInfo
- (BOOL)areAllAssetsLiked;
- (BOOL)containsAsset:(id)a3;
- (BOOL)hasPlayableAssetForItemAtIndex:(int64_t)a3;
- (BOOL)isMine;
- (id)assetForItemAtIndex:(int64_t)a3;
- (id)assets;
- (id)batchIDForItemAtIndex:(int64_t)a3;
- (id)captionForItemAtIndex:(int64_t)a3;
- (id)cloudFeedAssetsEntry;
- (id)commentForItemAtIndex:(int64_t)a3;
- (id)commentsForItemAtIndex:(int64_t)a3;
- (id)countsByAssetDisplayType;
- (id)likesForItemAtIndex:(int64_t)a3;
- (int64_t)indexOfFirstItemFromLastBatch;
- (int64_t)indexOfItemWithAsset:(id)a3;
- (unint64_t)assetsCount;
- (void)getPhotoCount:(unint64_t *)a3 videoCount:(unint64_t *)a4;
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedAssetsSectionInfo

- (BOOL)isMine
{
  if ([(PXFeedSectionInfo *)self numberOfItems]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:0];
  }

  v4 = [v3 cloudIsMyAsset];

  return v4;
}

- (unint64_t)assetsCount
{
  v3 = [(PXFeedSectionInfo *)self numberOfItems];
  v4 = [(PXFeedSectionInfo *)self excludedAssetIndexes];
  v5 = v3 - [v4 count];

  return v5;
}

- (id)assets
{
  v3 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v4 = [v3 entryAssets];
  v5 = [(PXFeedSectionInfo *)self excludedAssetIndexes];
  if ([v5 count])
  {
    v6 = [v4 mutableCopy];
    [v6 removeObjectsAtIndexes:v5];

    v4 = v6;
  }

  return v4;
}

- (int64_t)indexOfItemWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v6 = [v5 entryAssets];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

- (BOOL)containsAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v6 = [v5 entryAssets];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (BOOL)areAllAssetsLiked
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v3 = [v2 entryAssets];
  if ([v3 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v11 + 1) + 8 * i) userCloudSharedLiked])
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getPhotoCount:(unint64_t *)a3 videoCount:(unint64_t *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v7 = [v6 entryAssets];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v15 + 1) + 8 * i) kind];
        if (v14 == 1)
        {
          ++v10;
        }

        else if (!v14)
        {
          ++v11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (a3)
    {
LABEL_13:
      *a3 = v11;
    }
  }

  if (a4)
  {
    *a4 = v10;
  }
}

- (id)countsByAssetDisplayType
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v3 = [v2 entryAssets];
  v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) px_displayType];
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)likesForItemAtIndex:(int64_t)a3
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:a3];
  v4 = [v3 orderedLikeComments];

  return v4;
}

- (id)commentsForItemAtIndex:(int64_t)a3
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:a3];
  v4 = [v3 orderedCloudComments];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_158365];
  v6 = [v4 filteredOrderedSetUsingPredicate:v5];

  return v6;
}

uint64_t __50__PXFeedAssetsSectionInfo_commentsForItemAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 isCaption];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (id)commentForItemAtIndex:(int64_t)a3
{
  v6 = [(PXFeedAssetsSectionInfo *)self commentsForItemAtIndex:0];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXFeedAssetsSectionInfo.m" lineNumber:115 description:@"Invalid comments for requested item"];
  }

  if ([v6 count] <= a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXFeedAssetsSectionInfo.m" lineNumber:116 description:@"Invalid comment requrested from item"];
  }

  v7 = [v6 objectAtIndexedSubscript:a3];

  return v7;
}

- (int64_t)indexOfFirstItemFromLastBatch
{
  v3 = [(PXFeedSectionInfo *)self numberOfItems];
  v4 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:v3 - 1];
  v5 = [v4 cloudBatchID];
  v6 = v3 - 1;
  if (v3 >= 1)
  {
    v7 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:v3 - 1];
    v8 = [v7 cloudBatchID];
    v9 = [v5 isEqualToString:v8];

    if (v9)
    {
      while (1)
      {
        v6 = v3 - 1;
        if (v3 - 1 < 1)
        {
          break;
        }

        v10 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:v3 - 2];
        v11 = [v10 cloudBatchID];
        v12 = [v5 isEqualToString:v11];

        v3 = v6;
        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v6 = 0;
    }
  }

LABEL_7:

  return v6;
}

- (id)batchIDForItemAtIndex:(int64_t)a3
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:a3];
  v4 = [v3 cloudBatchID];

  return v4;
}

- (id)captionForItemAtIndex:(int64_t)a3
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:a3];
  v4 = [v3 orderedCloudComments];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 isCaption];
    v7 = [v6 BOOLValue];

    v8 = 0;
    if (v7)
    {
      v8 = [v5 commentText];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)assetForItemAtIndex:(int64_t)a3
{
  v4 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v5 = [v4 entryAssets];
  v6 = [v5 objectAtIndex:a3];

  return v6;
}

- (BOOL)hasPlayableAssetForItemAtIndex:(int64_t)a3
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:a3];
  v4 = [v3 canPlayPhotoIris];

  return v4;
}

- (void)updateFromCloudFeedEntry
{
  v9.receiver = self;
  v9.super_class = PXFeedAssetsSectionInfo;
  [(PXFeedSectionInfo *)&v9 updateFromCloudFeedEntry];
  v3 = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  v4 = [v3 entryAssets];
  v5 = [v4 count];
  v6 = [v3 entryAlbumGUID];
  v7 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:v6];
  v8 = [v7 localizedTitle];
  [(PXFeedSectionInfo *)self setNumberOfItems:v5];
  [(PXFeedSectionInfo *)self setSharedAlbum:v7];
  [(PXFeedSectionInfo *)self setAlbumTitle:v8];
}

- (id)cloudFeedAssetsEntry
{
  v4 = [(PXFeedSectionInfo *)self cloudFeedEntry];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXFeedAssetsSectionInfo.m" lineNumber:34 description:@"unexpected cloud feed entry class"];
  }

  return v4;
}

@end