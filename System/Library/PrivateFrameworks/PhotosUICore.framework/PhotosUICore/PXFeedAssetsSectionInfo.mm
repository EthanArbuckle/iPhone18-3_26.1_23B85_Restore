@interface PXFeedAssetsSectionInfo
- (BOOL)areAllAssetsLiked;
- (BOOL)containsAsset:(id)asset;
- (BOOL)hasPlayableAssetForItemAtIndex:(int64_t)index;
- (BOOL)isMine;
- (id)assetForItemAtIndex:(int64_t)index;
- (id)assets;
- (id)batchIDForItemAtIndex:(int64_t)index;
- (id)captionForItemAtIndex:(int64_t)index;
- (id)cloudFeedAssetsEntry;
- (id)commentForItemAtIndex:(int64_t)index;
- (id)commentsForItemAtIndex:(int64_t)index;
- (id)countsByAssetDisplayType;
- (id)likesForItemAtIndex:(int64_t)index;
- (int64_t)indexOfFirstItemFromLastBatch;
- (int64_t)indexOfItemWithAsset:(id)asset;
- (unint64_t)assetsCount;
- (void)getPhotoCount:(unint64_t *)count videoCount:(unint64_t *)videoCount;
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

  cloudIsMyAsset = [v3 cloudIsMyAsset];

  return cloudIsMyAsset;
}

- (unint64_t)assetsCount
{
  numberOfItems = [(PXFeedSectionInfo *)self numberOfItems];
  excludedAssetIndexes = [(PXFeedSectionInfo *)self excludedAssetIndexes];
  v5 = numberOfItems - [excludedAssetIndexes count];

  return v5;
}

- (id)assets
{
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  excludedAssetIndexes = [(PXFeedSectionInfo *)self excludedAssetIndexes];
  if ([excludedAssetIndexes count])
  {
    v6 = [entryAssets mutableCopy];
    [v6 removeObjectsAtIndexes:excludedAssetIndexes];

    entryAssets = v6;
  }

  return entryAssets;
}

- (int64_t)indexOfItemWithAsset:(id)asset
{
  assetCopy = asset;
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  v7 = [entryAssets indexOfObject:assetCopy];

  return v7;
}

- (BOOL)containsAsset:(id)asset
{
  assetCopy = asset;
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  v7 = [entryAssets containsObject:assetCopy];

  return v7;
}

- (BOOL)areAllAssetsLiked
{
  v16 = *MEMORY[0x1E69E9840];
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  if ([entryAssets count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = entryAssets;
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

- (void)getPhotoCount:(unint64_t *)count videoCount:(unint64_t *)videoCount
{
  v20 = *MEMORY[0x1E69E9840];
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [entryAssets countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(entryAssets);
        }

        kind = [*(*(&v15 + 1) + 8 * i) kind];
        if (kind == 1)
        {
          ++v10;
        }

        else if (!kind)
        {
          ++v11;
        }
      }

      v9 = [entryAssets countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
    if (count)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (count)
    {
LABEL_13:
      *count = v11;
    }
  }

  if (videoCount)
  {
    *videoCount = v10;
  }
}

- (id)countsByAssetDisplayType
{
  v18 = *MEMORY[0x1E69E9840];
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = entryAssets;
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

        px_displayType = [*(*(&v13 + 1) + 8 * i) px_displayType];
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:px_displayType];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)likesForItemAtIndex:(int64_t)index
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:index];
  orderedLikeComments = [v3 orderedLikeComments];

  return orderedLikeComments;
}

- (id)commentsForItemAtIndex:(int64_t)index
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:index];
  orderedCloudComments = [v3 orderedCloudComments];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_158365];
  v6 = [orderedCloudComments filteredOrderedSetUsingPredicate:v5];

  return v6;
}

uint64_t __50__PXFeedAssetsSectionInfo_commentsForItemAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 isCaption];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (id)commentForItemAtIndex:(int64_t)index
{
  v6 = [(PXFeedAssetsSectionInfo *)self commentsForItemAtIndex:0];
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedAssetsSectionInfo.m" lineNumber:115 description:@"Invalid comments for requested item"];
  }

  if ([v6 count] <= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFeedAssetsSectionInfo.m" lineNumber:116 description:@"Invalid comment requrested from item"];
  }

  v7 = [v6 objectAtIndexedSubscript:index];

  return v7;
}

- (int64_t)indexOfFirstItemFromLastBatch
{
  numberOfItems = [(PXFeedSectionInfo *)self numberOfItems];
  v4 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:numberOfItems - 1];
  cloudBatchID = [v4 cloudBatchID];
  v6 = numberOfItems - 1;
  if (numberOfItems >= 1)
  {
    v7 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:numberOfItems - 1];
    cloudBatchID2 = [v7 cloudBatchID];
    v9 = [cloudBatchID isEqualToString:cloudBatchID2];

    if (v9)
    {
      while (1)
      {
        v6 = numberOfItems - 1;
        if (numberOfItems - 1 < 1)
        {
          break;
        }

        v10 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:numberOfItems - 2];
        cloudBatchID3 = [v10 cloudBatchID];
        v12 = [cloudBatchID isEqualToString:cloudBatchID3];

        numberOfItems = v6;
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

- (id)batchIDForItemAtIndex:(int64_t)index
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:index];
  cloudBatchID = [v3 cloudBatchID];

  return cloudBatchID;
}

- (id)captionForItemAtIndex:(int64_t)index
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:index];
  orderedCloudComments = [v3 orderedCloudComments];
  if ([orderedCloudComments count])
  {
    v5 = [orderedCloudComments objectAtIndex:0];
    isCaption = [v5 isCaption];
    bOOLValue = [isCaption BOOLValue];

    commentText = 0;
    if (bOOLValue)
    {
      commentText = [v5 commentText];
    }
  }

  else
  {
    commentText = 0;
  }

  return commentText;
}

- (id)assetForItemAtIndex:(int64_t)index
{
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  v6 = [entryAssets objectAtIndex:index];

  return v6;
}

- (BOOL)hasPlayableAssetForItemAtIndex:(int64_t)index
{
  v3 = [(PXFeedAssetsSectionInfo *)self assetForItemAtIndex:index];
  canPlayPhotoIris = [v3 canPlayPhotoIris];

  return canPlayPhotoIris;
}

- (void)updateFromCloudFeedEntry
{
  v9.receiver = self;
  v9.super_class = PXFeedAssetsSectionInfo;
  [(PXFeedSectionInfo *)&v9 updateFromCloudFeedEntry];
  cloudFeedAssetsEntry = [(PXFeedAssetsSectionInfo *)self cloudFeedAssetsEntry];
  entryAssets = [cloudFeedAssetsEntry entryAssets];
  v5 = [entryAssets count];
  entryAlbumGUID = [cloudFeedAssetsEntry entryAlbumGUID];
  v7 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:entryAlbumGUID];
  localizedTitle = [v7 localizedTitle];
  [(PXFeedSectionInfo *)self setNumberOfItems:v5];
  [(PXFeedSectionInfo *)self setSharedAlbum:v7];
  [(PXFeedSectionInfo *)self setAlbumTitle:localizedTitle];
}

- (id)cloudFeedAssetsEntry
{
  cloudFeedEntry = [(PXFeedSectionInfo *)self cloudFeedEntry];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedAssetsSectionInfo.m" lineNumber:34 description:@"unexpected cloud feed entry class"];
  }

  return cloudFeedEntry;
}

@end