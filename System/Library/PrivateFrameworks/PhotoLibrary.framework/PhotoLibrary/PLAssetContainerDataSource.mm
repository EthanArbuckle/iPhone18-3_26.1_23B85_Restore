@interface PLAssetContainerDataSource
- (BOOL)hasAssetAtIndexPath:(id)path;
- (NSString)description;
- (PLAssetContainerDataSource)initWithAssetCollectionsFetchResult:(id)result collectionsAssetsFetchResults:(id)results;
- (id)assetAtGlobalIndex:(unint64_t)index;
- (id)assetAtIndexPath:(id)path;
- (id)assetContainerForAsset:(id)asset;
- (id)assetContainerForAssetGlobalIndex:(unint64_t)index;
- (id)assetInAssetContainer:(id)container atIndex:(unint64_t)index;
- (id)assetWithObjectID:(id)d;
- (id)assetsInAssetCollectionAtIndex:(unint64_t)index;
- (id)decrementAssetIndexPath:(id)path insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap;
- (id)findNearestIndexPath:(id)path preferNext:(BOOL)next;
- (id)firstAssetIndexPath;
- (id)incrementAssetIndexPath:(id)path insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap;
- (id)indexPathForGlobalIndex:(unint64_t)index;
- (id)indexPathOfAsset:(id)asset;
- (id)lastAssetIndexPath;
- (id)pl_fetchAllAssets;
- (unint64_t)_indexOfNextNonEmptyAssetContainerAfterContainerIndex:(unint64_t)index wrap:(BOOL)wrap;
- (unint64_t)_indexOfPreviousNonEmptyAssetContainerBeforeContainerIndex:(unint64_t)index wrap:(BOOL)wrap;
- (unint64_t)allAssetsCount;
- (unint64_t)assetCountForContainer:(id)container;
- (unint64_t)assetCountForContainerAtIndex:(unint64_t)index;
- (unint64_t)decrementGlobalIndex:(unint64_t)index insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap;
- (unint64_t)globalIndexForIndexPath:(id)path;
- (unint64_t)globalIndexOfAsset:(id)asset;
- (unint64_t)incrementGlobalIndex:(unint64_t)index insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap;
- (unint64_t)indexOffsetForAssetContainerAtAssetIndex:(unint64_t)index;
- (void)_updateCachedCount:(unint64_t)count forContainerAtContainerIndex:(unint64_t)index;
- (void)_updateCachedValues;
- (void)dealloc;
- (void)viewControllerPhotoLibraryDidChange:(id)change;
@end

@implementation PLAssetContainerDataSource

- (NSString)description
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PLAssetContainerDataSource;
  v3 = [(NSString *)[(PLAssetContainerDataSource *)&v16 description] mutableCopy];
  [v3 appendFormat:@" containing %ld containers with %ld total assets (last container index %ld)", -[PHFetchResult count](self->_assetCollectionsFetchResult, "count"), self->_allAssetsCount, self->_lastAssetCollectionIndex];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  assetCollectionsFetchResult = self->_assetCollectionsFetchResult;
  v5 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(assetCollectionsFetchResult);
        }

        v7 = v10 + 1;
        [v3 appendFormat:@"\n%@: %ld assets [%ld]", *(*(&v12 + 1) + 8 * v9), objc_msgSend(-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection, "objectForKey:", *(*(&v12 + 1) + 8 * v9)), "count"), self->_containerCounts[v10]];
        ++v9;
        ++v10;
      }

      while (v6 != v9);
      v6 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return [v3 copy];
}

- (void)viewControllerPhotoLibraryDidChange:(id)change
{
  selfCopy = self;
  v46 = *MEMORY[0x277D85DE8];
  v5 = [change changeDetailsForFetchResult:{-[PLAssetContainerDataSource assetCollectionsFetchResult](self, "assetCollectionsFetchResult")}];
  v6 = v5 != 0;
  if (!v5)
  {
    fetchResultAfterChanges = 0;
LABEL_15:
    v10 = [(NSMutableDictionary *)selfCopy->_assetsFetchResultByAssetCollection mutableCopy];
    goto LABEL_16;
  }

  v7 = v5;
  fetchResultAfterChanges = [v5 fetchResultAfterChanges];
  insertedObjects = [v7 insertedObjects];
  removedObjects = [v7 removedObjects];
  if (![insertedObjects count] && !objc_msgSend(removedObjects, "count"))
  {
    if (([v7 hasIncrementalChanges] & 1) == 0)
    {
      v23 = fetchResultAfterChanges;
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(fetchResultAfterChanges, "count")}];
      v24 = [objc_msgSend(objc_msgSend(fetchResultAfterChanges "firstObject")];
      [v24 setIncludeHiddenAssets:1];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v25 = [fetchResultAfterChanges countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v36;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v36 != v27)
            {
              objc_enumerationMutation(fetchResultAfterChanges);
            }

            -[NSMutableDictionary setObject:forKey:](v10, "setObject:forKey:", [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:*(*(&v35 + 1) + 8 * i) options:v24], *(*(&v35 + 1) + 8 * i));
          }

          v26 = [fetchResultAfterChanges countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v26);
      }

      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v10 = [(NSMutableDictionary *)selfCopy->_assetsFetchResultByAssetCollection mutableCopy];
  [(NSMutableDictionary *)v10 removeObjectsForKeys:removedObjects];
  v11 = [objc_msgSend(objc_msgSend(insertedObjects "firstObject")];
  [v11 setIncludeHiddenAssets:1];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [insertedObjects countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(insertedObjects);
        }

        -[NSMutableDictionary setObject:forKey:](v10, "setObject:forKey:", [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:*(*(&v39 + 1) + 8 * j) options:v11], *(*(&v39 + 1) + 8 * j));
      }

      v13 = [insertedObjects countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v13);
  }

  if (!v10)
  {
    selfCopy = v29;
    goto LABEL_15;
  }

  v6 = 1;
  selfCopy = v29;
LABEL_16:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [(NSMutableDictionary *)v10 allKeys];
  v17 = [allKeys countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v31 + 1) + 8 * k);
        v22 = [change changeDetailsForFetchResult:{-[NSMutableDictionary objectForKey:](v10, "objectForKey:", v21)}];
        if (v22)
        {
          -[NSMutableDictionary setObject:forKey:](v10, "setObject:forKey:", [v22 fetchResultAfterChanges], v21);
          v6 = 1;
        }
      }

      v18 = [allKeys countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v18);
  }

  if (!v6)
  {

    return;
  }

  v23 = fetchResultAfterChanges;
LABEL_27:
  if (v10)
  {

    selfCopy->_assetsFetchResultByAssetCollection = v10;
  }

  if (v23)
  {

    selfCopy->_assetCollectionsFetchResult = v23;
  }

  [(PLAssetContainerDataSource *)selfCopy _updateCachedValues];
}

- (id)pl_fetchAllAssets
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assetCollectionsFetchResult = self->_assetCollectionsFetchResult;
  v5 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(assetCollectionsFetchResult);
        }

        v9 = [(NSMutableDictionary *)self->_assetsFetchResultByAssetCollection objectForKey:*(*(&v11 + 1) + 8 * i)];
        [array addObjectsFromArray:{objc_msgSend(MEMORY[0x277CD97A8], "pl_managedAssetsForAssets:", v9)}];
      }

      v6 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)assetInAssetContainer:(id)container atIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_assetsFetchResultByAssetCollection objectForKey:container];
  if ([v5 count] <= index)
  {
    return 0;
  }

  return [v5 objectAtIndexedSubscript:index];
}

- (unint64_t)assetCountForContainerAtIndex:(unint64_t)index
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  return self->_containerCounts[index];
}

- (unint64_t)assetCountForContainer:(id)container
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (container)
  {
    v6 = [(PHFetchResult *)self->_assetCollectionsFetchResult indexOfObject:container];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return self->_containerCounts[v6];
    }
  }

  return v5;
}

- (id)decrementAssetIndexPath:(id)path insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  containerCopy = container;
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  section = [path section];
  if ([path item])
  {
    v10 = [path item] - 1;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [(PLAssetContainerDataSource *)self assetCountForContainerAtIndex:section];
  if (!containerCopy)
  {
    if ([(PLAssetContainerDataSource *)self allAssetsCount])
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }

      v12 = [(PLAssetContainerDataSource *)self _indexOfPreviousNonEmptyAssetContainerBeforeContainerIndex:section wrap:wrapCopy];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        section = v12;
        v11 = [(PLAssetContainerDataSource *)self assetCountForContainerAtIndex:v12];
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (!wrapCopy)
  {
    return 0;
  }

LABEL_15:
  v10 = v11 - 1;
  if (v11 == 0x8000000000000000)
  {
    return 0;
  }

LABEL_17:
  v14 = MEMORY[0x277CCAA70];

  return [v14 indexPathForItem:v10 inSection:section];
}

- (id)incrementAssetIndexPath:(id)path insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  containerCopy = container;
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  section = [path section];
  v10 = [path item] + 1;
  v11 = [(PLAssetContainerDataSource *)self assetCountForContainerAtIndex:section];
  v12 = v11;
  if (containerCopy)
  {
    if (!v11)
    {
      return 0;
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (wrapCopy)
    {
      v13 = 0;
    }

    if (v10 >= v11)
    {
      v10 = v13;
    }

LABEL_12:
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (![(PLAssetContainerDataSource *)self allAssetsCount])
  {
    return 0;
  }

  if (v10 < v12)
  {
    goto LABEL_12;
  }

  v14 = [(PLAssetContainerDataSource *)self _indexOfNextNonEmptyAssetContainerAfterContainerIndex:section wrap:wrapCopy];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  section = v14;
  v10 = 0;
LABEL_17:
  v16 = MEMORY[0x277CCAA70];

  return [v16 indexPathForItem:v10 inSection:section];
}

- (unint64_t)_indexOfPreviousNonEmptyAssetContainerBeforeContainerIndex:(unint64_t)index wrap:(BOOL)wrap
{
  wrapCopy = wrap;
  v7 = [(PHFetchResult *)self->_assetCollectionsFetchResult count];
  if (v7 >= 2)
  {
    v8 = v7;
    v9 = index - 1;
    for (i = 1; v8 != i; ++i)
    {
      v11 = i >= index ? v8 : 0;
      if (v11 + v9 > index && !wrapCopy)
      {
        break;
      }

      if ([(PLAssetContainerDataSource *)self assetCountForContainerAtIndex:?])
      {
        return v11 + v9;
      }

      --v9;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_indexOfNextNonEmptyAssetContainerAfterContainerIndex:(unint64_t)index wrap:(BOOL)wrap
{
  wrapCopy = wrap;
  v7 = [(PHFetchResult *)self->_assetCollectionsFetchResult count];
  if (v7 >= 2)
  {
    v8 = v7;
    v9 = index + 1;
    v10 = v7 - 1;
    do
    {
      v11 = v9 % v8;
      if (v9 % v8 < index && !wrapCopy)
      {
        break;
      }

      if ([(PLAssetContainerDataSource *)self assetCountForContainerAtIndex:v9 % v8])
      {
        return v11;
      }

      ++v9;
      --v10;
    }

    while (v10);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)findNearestIndexPath:(id)path preferNext:(BOOL)next
{
  nextCopy = next;
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  result = 0;
  if (!path || !self->_allAssetsCount)
  {
    return result;
  }

  section = [path section];
  if (section >= [(PHFetchResult *)self->_assetCollectionsFetchResult count])
  {
    result = [(PLAssetContainerDataSource *)self lastAssetIndexPath];
    if (result)
    {
      return result;
    }

    goto LABEL_14;
  }

  if ([path row] < self->_containerCounts[section])
  {
    return path;
  }

  if (!nextCopy || (result = [(PLAssetContainerDataSource *)self incrementAssetIndexPath:path insideCurrentAssetContainer:0 andWrap:0]) == 0)
  {
    result = [(PLAssetContainerDataSource *)self decrementAssetIndexPath:path insideCurrentAssetContainer:0 andWrap:0];
    if (!result)
    {
LABEL_14:

      return [(PLAssetContainerDataSource *)self firstAssetIndexPath];
    }
  }

  return result;
}

- (BOOL)hasAssetAtIndexPath:(id)path
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  result = 0;
  if (path && self->_allAssetsCount)
  {
    section = [path section];
    return section < -[PHFetchResult count](self->_assetCollectionsFetchResult, "count") && [path row] < self->_containerCounts[section];
  }

  return result;
}

- (id)lastAssetIndexPath
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  if (!self->_allAssetsCount)
  {
    return 0;
  }

  v3 = [(PHFetchResult *)self->_assetCollectionsFetchResult count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3 - 1;
  while (1)
  {
    v5 = self->_containerCounts[v4];
    if (v5)
    {
      break;
    }

    if (--v4 == -1)
    {
      return 0;
    }
  }

  v7 = MEMORY[0x277CCAA70];

  return [v7 indexPathForItem:v5 - 1 inSection:?];
}

- (id)firstAssetIndexPath
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  if (!self->_allAssetsCount)
  {
    return 0;
  }

  v3 = [(PHFetchResult *)self->_assetCollectionsFetchResult count];
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (!self->_containerCounts[v4])
  {
    if (v3 == ++v4)
    {
      return 0;
    }
  }

  v6 = MEMORY[0x277CCAA70];

  return [v6 indexPathForItem:0 inSection:?];
}

- (id)indexPathOfAsset:(id)asset
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  result = [(PLAssetContainerDataSource *)self allAssetsCount];
  if (result)
  {
    if (self->_lastAssetCollectionIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    v6 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{-[PHFetchResult objectAtIndexedSubscript:](self->_assetCollectionsFetchResult, "objectAtIndexedSubscript:")), "indexOfObject:", asset}];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || (result = [MEMORY[0x277CCAA70] indexPathForItem:v6 inSection:self->_lastAssetCollectionIndex]) == 0)
    {
      lastAssetCollectionIndex = self->_lastAssetCollectionIndex;
      if (lastAssetCollectionIndex)
      {
        v8 = lastAssetCollectionIndex - 1;
        v9 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{-[PHFetchResult objectAtIndexedSubscript:](self->_assetCollectionsFetchResult, "objectAtIndexedSubscript:", lastAssetCollectionIndex - 1)), "indexOfObject:", asset}];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = self->_lastAssetCollectionIndex;
        }

        else
        {
          result = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:v8];
          self->_lastAssetCollectionIndex = v8;
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      if (v8 >= -[PHFetchResult count](self->_assetCollectionsFetchResult, "count") - 1 || (v10 = self->_lastAssetCollectionIndex + 1, v11 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{-[PHFetchResult objectAtIndexedSubscript:](self->_assetCollectionsFetchResult, "objectAtIndexedSubscript:", v10)), "indexOfObject:", asset}], v11 == 0x7FFFFFFFFFFFFFFFLL) || (result = objc_msgSend(MEMORY[0x277CCAA70], "indexPathForItem:inSection:", v11, v10), self->_lastAssetCollectionIndex = v10, !result))
      {
LABEL_15:
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        assetCollectionsFetchResult = self->_assetCollectionsFetchResult;
        result = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (result)
        {
          v13 = result;
          v14 = 0;
          v15 = *v20;
          while (2)
          {
            v16 = 0;
            v17 = v14;
            v14 += v13;
            do
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(assetCollectionsFetchResult);
              }

              v18 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{*(*(&v19 + 1) + 8 * v16)), "indexOfObject:", asset}];
              if (v18 != 0x7FFFFFFFFFFFFFFFLL)
              {
                result = [MEMORY[0x277CCAA70] indexPathForItem:v18 inSection:v17];
                self->_lastAssetCollectionIndex = v17;
                return result;
              }

              ++v17;
              ++v16;
            }

            while (v13 != v16);
            v13 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v19 objects:v23 count:16];
            result = 0;
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

- (id)assetAtIndexPath:(id)path
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v5 = -[PHFetchResult objectAtIndex:](self->_assetCollectionsFetchResult, "objectAtIndex:", [path section]);
  item = [path item];

  return [(PLAssetContainerDataSource *)self assetInAssetContainer:v5 atIndex:item];
}

- (id)assetsInAssetCollectionAtIndex:(unint64_t)index
{
  v4 = [(PHFetchResult *)self->_assetCollectionsFetchResult objectAtIndex:index];
  assetsFetchResultByAssetCollection = self->_assetsFetchResultByAssetCollection;

  return [(NSMutableDictionary *)assetsFetchResultByAssetCollection objectForKey:v4];
}

- (id)assetWithObjectID:(id)d
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v7[0] = d;
  result = [objc_msgSend(pl_appPhotoLibrary() fetchPHObjectsForOIDs:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 1)), "lastObject"}];
  if (result)
  {
    v6 = result;
    if ([(PLAssetContainerDataSource *)self assetContainerForAsset:result])
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)indexOffsetForAssetContainerAtAssetIndex:(unint64_t)index
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v5 = [(PHFetchResult *)self->_assetCollectionsFetchResult count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  containerCounts = self->_containerCounts;
  while (1)
  {
    v8 = *containerCounts++;
    v9 = v8 + v6;
    if (v8 + v6 > index)
    {
      break;
    }

    v6 = v9;
    if (!--v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (unint64_t)globalIndexOfAsset:(id)asset
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  allAssetsCount = [(PLAssetContainerDataSource *)self allAssetsCount];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (allAssetsCount)
  {
    if (self->_lastAssetCollectionIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    v7 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{-[PHFetchResult objectAtIndexedSubscript:](self->_assetCollectionsFetchResult, "objectAtIndexedSubscript:")), "indexOfObject:", asset}];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || (result = -[PLAssetContainerDataSource globalIndexForIndexPath:](self, "globalIndexForIndexPath:", [MEMORY[0x277CCAA70] indexPathForItem:v7 inSection:self->_lastAssetCollectionIndex]), result == 0x7FFFFFFFFFFFFFFFLL))
    {
      lastAssetCollectionIndex = self->_lastAssetCollectionIndex;
      if (lastAssetCollectionIndex)
      {
        v9 = lastAssetCollectionIndex - 1;
        v10 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{-[PHFetchResult objectAtIndexedSubscript:](self->_assetCollectionsFetchResult, "objectAtIndexedSubscript:", lastAssetCollectionIndex - 1)), "indexOfObject:", asset}];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = self->_lastAssetCollectionIndex;
        }

        else
        {
          result = -[PLAssetContainerDataSource globalIndexForIndexPath:](self, "globalIndexForIndexPath:", [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:v9]);
          self->_lastAssetCollectionIndex = v9;
          if (result != 0x7FFFFFFFFFFFFFFFLL)
          {
            return result;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      if (v9 >= -[PHFetchResult count](self->_assetCollectionsFetchResult, "count") - 1 || (v11 = self->_lastAssetCollectionIndex + 1, v12 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{-[PHFetchResult objectAtIndexedSubscript:](self->_assetCollectionsFetchResult, "objectAtIndexedSubscript:", v11)), "indexOfObject:", asset}], v12 == 0x7FFFFFFFFFFFFFFFLL) || (result = -[PLAssetContainerDataSource globalIndexForIndexPath:](self, "globalIndexForIndexPath:", objc_msgSend(MEMORY[0x277CCAA70], "indexPathForItem:inSection:", v12, v11)), self->_lastAssetCollectionIndex = v11, result == 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_15:
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        assetCollectionsFetchResult = self->_assetCollectionsFetchResult;
        v14 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = 0;
          v18 = *v24;
          while (2)
          {
            v19 = 0;
            v20 = v16;
            v16 += v15;
            do
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(assetCollectionsFetchResult);
              }

              v21 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{*(*(&v23 + 1) + 8 * v19)), "indexOfObject:", asset}];
              if (v21 != 0x7FFFFFFFFFFFFFFFLL)
              {
                result = v21 + v17;
                self->_lastAssetCollectionIndex = v20;
                return result;
              }

              v22 = self->_containerCounts[v20++];
              v17 += v22;
              ++v19;
            }

            while (v15 != v19);
            v15 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v23 objects:v27 count:16];
            result = 0x7FFFFFFFFFFFFFFFLL;
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

- (id)assetAtGlobalIndex:(unint64_t)index
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  allAssetsCount = [(PLAssetContainerDataSource *)self allAssetsCount];
  if (!allAssetsCount)
  {
    return 0;
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (allAssetsCount <= index)
  {
    return 0;
  }

  v6 = [(PLAssetContainerDataSource *)self assetContainerForAssetGlobalIndex:index];
  v7 = [(PLAssetContainerDataSource *)self indexOffsetForAssetContainerAtAssetIndex:index];
  if (!v6)
  {
    return 0;
  }

  return [(PLAssetContainerDataSource *)self assetInAssetContainer:v6 atIndex:index - v7];
}

- (unint64_t)decrementGlobalIndex:(unint64_t)index insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  containerCopy = container;
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v9 = [(NSMutableDictionary *)self->_assetsFetchResultByAssetCollection objectForKey:[(PLAssetContainerDataSource *)self assetContainerForAssetGlobalIndex:index]];
  if (containerCopy)
  {
    v10 = [v9 count];
    if (v10)
    {
      v11 = v10;
      v12 = [(PLAssetContainerDataSource *)self indexOffsetForAssetContainerAtAssetIndex:index];
      v13 = v12 + v11;
      if (v12 == index)
      {
        v14 = v13 - 1;
        if (wrapCopy)
        {
          return v14;
        }

        else
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else if (v13 <= index)
      {
        return v13 - 1;
      }

      else
      {
        return index - 1;
      }
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    allAssetsCount = [(PLAssetContainerDataSource *)self allAssetsCount];
    v17 = index - 1;
    v18 = allAssetsCount - 1;
    if (allAssetsCount <= index)
    {
      v17 = allAssetsCount - 1;
    }

    if (!wrapCopy)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (!index)
    {
      v17 = v18;
    }

    if (allAssetsCount)
    {
      return v17;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (unint64_t)incrementGlobalIndex:(unint64_t)index insideCurrentAssetContainer:(BOOL)container andWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  containerCopy = container;
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v9 = index + 1;
  v10 = [(NSMutableDictionary *)self->_assetsFetchResultByAssetCollection objectForKey:[(PLAssetContainerDataSource *)self assetContainerForAssetGlobalIndex:index]];
  if (containerCopy)
  {
    v11 = [v10 count];
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v13 = v11;
      v14 = [(PLAssetContainerDataSource *)self indexOffsetForAssetContainerAtAssetIndex:index];
      if (wrapCopy)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v9 >= v14 + v13)
      {
        return v15;
      }

      else
      {
        return index + 1;
      }
    }
  }

  else
  {
    allAssetsCount = [(PLAssetContainerDataSource *)self allAssetsCount];
    if (wrapCopy)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v9 < allAssetsCount)
    {
      v17 = index + 1;
    }

    if (allAssetsCount)
    {
      return v17;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v12;
}

- (id)indexPathForGlobalIndex:(unint64_t)index
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (self->_allAssetsCount <= index)
  {
    return 0;
  }

  v5 = [(PHFetchResult *)self->_assetCollectionsFetchResult count];
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = self->_containerCounts[v7] + v6;
    if (v8 > index)
    {
      break;
    }

    ++v7;
    v6 = v8;
    if (v5 == v7)
    {
      return 0;
    }
  }

  v10 = MEMORY[0x277CCAA70];

  return [v10 indexPathForItem:index - v6 inSection:?];
}

- (unint64_t)globalIndexForIndexPath:(id)path
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  if (!path)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  section = [path section];
  item = [path item];
  if (section >= [(PHFetchResult *)self->_assetCollectionsFetchResult count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  containerCounts = self->_containerCounts;
  if (item >= containerCounts[section])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  for (; section; --section)
  {
    v8 = *containerCounts++;
    item += v8;
  }

  return item;
}

- (id)assetContainerForAssetGlobalIndex:(unint64_t)index
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v5 = [(NSMutableDictionary *)self->_assetsFetchResultByAssetCollection count];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v5;
  if (!v5 || [(PLAssetContainerDataSource *)self allAssetsCount]<= index)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v8 += self->_containerCounts[v7];
    if (v8 > index)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  assetCollectionsFetchResult = self->_assetCollectionsFetchResult;

  return [(PHFetchResult *)assetCollectionsFetchResult objectAtIndex:?];
}

- (id)assetContainerForAsset:(id)asset
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  v5 = [(NSMutableDictionary *)self->_assetsFetchResultByAssetCollection count];
  result = 0;
  if (asset && v5)
  {
    if (v5 == 1)
    {
      v7 = [(PHFetchResult *)self->_assetCollectionsFetchResult objectAtIndex:0];
      if ([-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{v7), "indexOfObject:", asset}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v8 = [(PLAssetContainerDataSource *)self globalIndexOfAsset:asset];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      else
      {

        return [(PLAssetContainerDataSource *)self assetContainerForAssetGlobalIndex:v8];
      }
    }
  }

  return result;
}

- (unint64_t)allAssetsCount
{
  if (self->_cachedValuesNeedUpdate)
  {
    [(PLAssetContainerDataSource *)self _updateCachedValues];
  }

  return self->_allAssetsCount;
}

- (void)_updateCachedCount:(unint64_t)count forContainerAtContainerIndex:(unint64_t)index
{
  containerCounts = self->_containerCounts;
  v5 = count - containerCounts[index];
  containerCounts[index] = count;
  self->_allAssetsCount += v5;
}

- (void)_updateCachedValues
{
  v21 = *MEMORY[0x277D85DE8];
  self->_allAssetsCount = 0;
  v4 = [(PHFetchResult *)self->_assetCollectionsFetchResult count];
  if (v4 != [(NSMutableDictionary *)self->_assetsFetchResultByAssetCollection count])
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  containerCounts = self->_containerCounts;
  if (!containerCounts)
  {
    if (v4)
    {
      v6 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
      goto LABEL_8;
    }

LABEL_19:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_20;
  }

  if (!v4)
  {
    free(containerCounts);
    self->_containerCounts = 0;
    goto LABEL_19;
  }

  v6 = malloc_type_realloc(containerCounts, 8 * v4, 0x100004000313F17uLL);
LABEL_8:
  self->_containerCounts = v6;
  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    assetCollectionsFetchResult = self->_assetCollectionsFetchResult;
    v8 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(assetCollectionsFetchResult);
          }

          v14 = [-[NSMutableDictionary objectForKey:](self->_assetsFetchResultByAssetCollection objectForKey:{*(*(&v16 + 1) + 8 * v12)), "count"}];
          v10 = v13 + 1;
          self->_containerCounts[v13] = v14;
          self->_allAssetsCount += v14;
          ++v12;
          ++v13;
        }

        while (v9 != v12);
        v9 = [(PHFetchResult *)assetCollectionsFetchResult countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  if (self->_lastAssetCollectionIndex >= v4)
  {
    v15 = v4 - 1;
LABEL_20:
    self->_lastAssetCollectionIndex = v15;
  }

  self->_cachedValuesNeedUpdate = 0;
}

- (void)dealloc
{
  containerCounts = self->_containerCounts;
  if (containerCounts)
  {
    free(containerCounts);
  }

  v4.receiver = self;
  v4.super_class = PLAssetContainerDataSource;
  [(PLAssetContainerDataSource *)&v4 dealloc];
}

- (PLAssetContainerDataSource)initWithAssetCollectionsFetchResult:(id)result collectionsAssetsFetchResults:(id)results
{
  v14.receiver = self;
  v14.super_class = PLAssetContainerDataSource;
  v7 = [(PLAssetContainerDataSource *)&v14 init];
  if (v7)
  {
    v8 = [result count];
    if (v8 != [results count])
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    v7->_assetCollectionsFetchResult = result;
    v7->_assetsFetchResultByAssetCollection = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(results, "count")}];
    v9 = [(PHFetchResult *)v7->_assetCollectionsFetchResult count];
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        -[NSMutableDictionary setObject:forKey:](v7->_assetsFetchResultByAssetCollection, "setObject:forKey:", [results objectAtIndex:i], -[PHFetchResult objectAtIndex:](v7->_assetCollectionsFetchResult, "objectAtIndex:", i));
      }
    }

    v12 = [(NSMutableDictionary *)v7->_assetsFetchResultByAssetCollection count];
    if (v12 != [(PHFetchResult *)v7->_assetCollectionsFetchResult count])
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    v7->_allAssetsCount = 0x7FFFFFFFFFFFFFFFLL;
    v7->_cachedValuesNeedUpdate = 1;
  }

  return v7;
}

@end