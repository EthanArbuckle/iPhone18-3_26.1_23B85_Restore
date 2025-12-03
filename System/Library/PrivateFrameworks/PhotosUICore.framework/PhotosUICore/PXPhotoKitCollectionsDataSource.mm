@interface PXPhotoKitCollectionsDataSource
+ (int64_t)estimatedCountForAssetCollection:(id)collection withConfiguration:(id)configuration;
- (PXPhotoKitCollectionsDataSource)initWithRootCollectionList:(id)list collectionListBySection:(id)section collectionsFetchResultBySection:(id)bySection keyAssetsFetchResultsByCollection:(id)collection collectionsIndexPathsByCollection:(id)byCollection itemFetchResultByCollection:(id)resultByCollection virtualCollections:(id)collections collectionsFetchResult:(id)self0 sharingFilter:(unsigned __int16)self1 dataSourceConfiguration:(id)self2;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)_assetAtSimpleIndexPath:(PXSimpleIndexPath *)path;
- (id)_collectionAtSimpleIndexPath:(PXSimpleIndexPath *)path;
- (id)_collectionListAtSimpleIndexPath:(PXSimpleIndexPath *)path;
- (id)collectionAtIndexPath:(id)path;
- (id)collectionListForSection:(int64_t)section;
- (id)description;
- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)path;
- (id)indexPathForCollection:(id)collection;
- (id)keyAssetsForCollection:(id)collection;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)assetCollectionsCountForFetchResult:(id)result;
- (int64_t)assetCollectionsCountForSection:(int64_t)section;
- (int64_t)collectionsListCountForFetchResult:(id)result;
- (int64_t)collectionsListCountForSection:(int64_t)section;
- (int64_t)countForCollection:(id)collection;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section;
- (void)enumerateCollectionsUsingBlock:(id)block;
@end

@implementation PXPhotoKitCollectionsDataSource

- (void)enumerateCollectionsUsingBlock:(id)block
{
  blockCopy = block;
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXPhotoKitCollectionsDataSource_enumerateCollectionsUsingBlock___block_invoke;
  v7[3] = &unk_1E774C008;
  v8 = blockCopy;
  v6 = blockCopy;
  [_collectionsFetchResultBySection enumerateObjectsUsingBlock:v7];
}

- (int64_t)collectionsListCountForFetchResult:(id)result
{
  if (result)
  {
    return [result countOfCollectionsLists];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)assetCollectionsCountForFetchResult:(id)result
{
  if (result)
  {
    return [result countOfAssetCollections];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)collectionsListCountForSection:(int64_t)section
{
  if (section < 0 || [(PXPhotoKitCollectionsDataSource *)self numberOfSections]<= section)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Requesting for collections count for a section out of bounds.", v10, 2u);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    v6 = [_collectionsFetchResultBySection objectAtIndexedSubscript:section];
    v7 = [(PXPhotoKitCollectionsDataSource *)self collectionsListCountForFetchResult:v6];

    return v7;
  }
}

- (int64_t)assetCollectionsCountForSection:(int64_t)section
{
  if (section < 0 || [(PXPhotoKitCollectionsDataSource *)self numberOfSections]<= section)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Requesting for collections count for a section out of bounds.", v10, 2u);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    v6 = [_collectionsFetchResultBySection objectAtIndexedSubscript:section];
    v7 = [(PXPhotoKitCollectionsDataSource *)self assetCollectionsCountForFetchResult:v6];

    return v7;
  }
}

- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)path
{
  v4 = *&path->item;
  v9[0] = *&path->dataSourceIdentifier;
  v9[1] = v4;
  v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionAtSimpleIndexPath:v9];
  if ([v5 canContainAssets])
  {
    itemFetchResultByCollection = [(PXPhotoKitCollectionsDataSource *)self itemFetchResultByCollection];
    v7 = [itemFetchResultByCollection objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)countForCollection:(id)collection
{
  v36 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  sectionedDataSourceLog = [(PXPhotoKitCollectionsDataSource *)self sectionedDataSourceLog];
  v7 = os_signpost_id_generate(sectionedDataSourceLog);
  v8 = sectionedDataSourceLog;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    px_cheapLogIdentifier = [collectionCopy px_cheapLogIdentifier];
    *buf = 138543362;
    v35 = px_cheapLogIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CountForCollection", "collection==%{public}@", buf, 0xCu);
  }

  px_isFolder = [collectionCopy px_isFolder];
  v12 = collectionCopy;
  v13 = v12;
  if (px_isFolder)
  {
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        configuration = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v13 options:0];
        v15 = [(PXPhotoKitCollectionsDataSource *)self assetCollectionsCountForFetchResult:configuration];
        goto LABEL_20;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = objc_opt_class();
      v26 = NSStringFromClass(v30);
      px_descriptionForAssertionMessage = [v13 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:228 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v26, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:228 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v26}];
    }

    goto LABEL_7;
  }

  if (!v12)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v29}];
LABEL_32:

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = objc_opt_class();
    v29 = NSStringFromClass(v32);
    px_descriptionForAssertionMessage2 = [v13 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v29, px_descriptionForAssertionMessage2}];

    goto LABEL_32;
  }

LABEL_10:
  px_containsPrivateContent = [v13 px_containsPrivateContent];
  if ([v13 assetCollectionType] == 2 || objc_msgSend(v13, "assetCollectionType") == 9 || -[PXPhotoKitCollectionsDataSource sharingFilter](self, "sharingFilter") != 2)
  {
    if ((px_containsPrivateContent & 1) == 0)
    {
LABEL_18:
      itemFetchResultByCollection = [(PXPhotoKitCollectionsDataSource *)self itemFetchResultByCollection];
      configuration = [itemFetchResultByCollection objectForKeyedSubscript:v13];

      if (!configuration)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }

      v15 = [configuration count];
LABEL_20:
      v19 = v15;
LABEL_21:

      goto LABEL_22;
    }
  }

  else
  {
    itemFetchResultByCollection2 = [(PXPhotoKitCollectionsDataSource *)self itemFetchResultByCollection];
    v18 = [itemFetchResultByCollection2 objectForKeyedSubscript:v13];

    if ((px_containsPrivateContent & 1) == 0)
    {
      if (!v18)
      {
        configuration = [(PXPhotoKitCollectionsDataSource *)self configuration];
        v15 = [PXPhotoKitCollectionsDataSource estimatedCountForAssetCollection:v13 withConfiguration:configuration];
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:

  v21 = v9;
  v22 = v21;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_END, v7, "CountForCollection", "", buf, 2u);
  }

  return v19;
}

- (id)collectionListForSection:(int64_t)section
{
  if (section < 0 || [(PXPhotoKitCollectionsDataSource *)self numberOfSections]<= section)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Requesting for a collectionList for a section out of bounds.", v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    _collectionListBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionListBySection];
    v6 = [_collectionListBySection objectAtIndexedSubscript:section];
  }

  return v6;
}

- (id)collectionAtIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy section] & 0x8000000000000000) == 0)
  {
    section = [pathCopy section];
    _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    if (section >= [_collectionsFetchResultBySection count] || objc_msgSend(pathCopy, "item") < 0)
    {
    }

    else
    {
      item = [pathCopy item];
      _collectionsFetchResultBySection2 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
      v9 = [_collectionsFetchResultBySection2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
      v10 = [v9 count];

      if (item < v10)
      {
        _collectionsFetchResultBySection3 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
        v12 = [_collectionsFetchResultBySection3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

        goto LABEL_10;
      }
    }
  }

  v14 = PLUIGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Requesting for a collection at an indexPath out of bounds.", v16, 2u);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)indexPathForCollection:(id)collection
{
  collectionCopy = collection;
  _collectionsIndexPathsByCollection = [(PXPhotoKitCollectionsDataSource *)self _collectionsIndexPathsByCollection];
  v6 = [_collectionsIndexPathsByCollection objectForKeyedSubscript:collectionCopy];

  if (!v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PXPhotoKitCollectionsDataSource_indexPathForCollection___block_invoke;
    v10[3] = &unk_1E7746EE8;
    v11 = collectionCopy;
    v12 = &v18;
    v13 = &v14;
    [_collectionsFetchResultBySection enumerateObjectsUsingBlock:v10];

    v8 = v15[3];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:v19[3]];
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }

  return v6;
}

uint64_t __58__PXPhotoKitCollectionsDataSource_indexPathForCollection___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 indexOfObject:a1[4]];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 indexPath];
    if (v26 == [(PXPhotoKitCollectionsDataSource *)self identifier])
    {
      [v7 indexPath];
      section = v24;
      identifier = v23;
      v10 = v25;
      goto LABEL_19;
    }

    [v7 indexPath];
    v12 = v21;
    v11 = v22 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (![(PXPhotoKitCollectionsDataSource *)self identifier])
    {
      identifier = 0;
      section = 0;
      v10 = 0uLL;
      goto LABEL_19;
    }

    v11 = 0;
    v12 = 0;
    v22 = 0u;
  }

  identifier = *off_1E7722228;
  section = *(off_1E7722228 + 1);
  v10 = *(off_1E7722228 + 1);
  v13 = v12 != *off_1E7721F68 && !v11;
  if (v13 && *(&v22 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = *(off_1E7722228 + 1);
    itemObject = [v7 itemObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(PXPhotoKitCollectionsDataSource *)self indexPathForCollection:itemObject];
      if (v15)
      {
        identifier = [(PXPhotoKitCollectionsDataSource *)self identifier];
        section = [v15 section];
        item = [v15 item];
        v17.f64[0] = NAN;
        v17.f64[1] = NAN;
        v18 = vnegq_f64(v17);
        *&v18.f64[0] = item;
        v20 = v18;
      }
    }

    v10 = v20;
  }

LABEL_19:
  retstr->dataSourceIdentifier = identifier;
  retstr->section = section;
  *&retstr->item = v10;

  return result;
}

- (id)keyAssetsForCollection:(id)collection
{
  collectionCopy = collection;
  _keyAssetsFetchResultsByCollection = [(PXPhotoKitCollectionsDataSource *)self _keyAssetsFetchResultsByCollection];
  v6 = [_keyAssetsFetchResultsByCollection objectForKeyedSubscript:collectionCopy];

  return v6;
}

- (id)_assetAtSimpleIndexPath:(PXSimpleIndexPath *)path
{
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v6 = [_collectionsFetchResultBySection objectAtIndexedSubscript:path->section];
  v7 = [v6 objectAtIndexedSubscript:path->item];

  _keyAssetsFetchResultsByCollection = [(PXPhotoKitCollectionsDataSource *)self _keyAssetsFetchResultsByCollection];
  v9 = [_keyAssetsFetchResultsByCollection objectForKeyedSubscript:v7];
  v10 = [v9 objectAtIndexedSubscript:path->subitem];

  return v10;
}

- (id)_collectionAtSimpleIndexPath:(PXSimpleIndexPath *)path
{
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v5 = [_collectionsFetchResultBySection objectAtIndexedSubscript:path->section];
  v6 = [v5 objectAtIndexedSubscript:path->item];

  return v6;
}

- (id)_collectionListAtSimpleIndexPath:(PXSimpleIndexPath *)path
{
  _collectionListBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionListBySection];
  v5 = [_collectionListBySection objectAtIndexedSubscript:path->section];

  return v5;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (path->dataSourceIdentifier == *off_1E7721F68 || path->section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];

    dataSourceIdentifier = path->dataSourceIdentifier;
  }

  if (dataSourceIdentifier != [(PXPhotoKitCollectionsDataSource *)self identifier])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v10 = [_collectionsFetchResultBySection objectAtIndexedSubscript:path->section];

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_2;
  }

  item = path->item;
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_2:
      v3 = *&path->item;
      v8 = *&path->dataSourceIdentifier;
      v9 = v3;
      null = [(PXPhotoKitCollectionsDataSource *)self _assetAtSimpleIndexPath:&v8];
      goto LABEL_3;
    }
  }

  else if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_3;
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v7 = *&path->item;
  v8 = *&path->dataSourceIdentifier;
  v9 = v7;
  null = [(PXPhotoKitCollectionsDataSource *)self _collectionAtSimpleIndexPath:&v8];
LABEL_3:

  return null;
}

- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section
{
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v8 = [_collectionsFetchResultBySection objectAtIndexedSubscript:section];

  v9 = [v8 objectAtIndexedSubscript:item];
  _keyAssetsFetchResultsByCollection = [(PXPhotoKitCollectionsDataSource *)self _keyAssetsFetchResultsByCollection];
  v11 = [_keyAssetsFetchResultsByCollection objectForKeyedSubscript:v9];

  v12 = [v11 count];
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v5 = [_collectionsFetchResultBySection objectAtIndexedSubscript:section];

  v6 = [v5 count];
  return v6;
}

- (int64_t)numberOfSections
{
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v3 = [_collectionsFetchResultBySection count];

  return v3;
}

- (id)description
{
  numberOfSections = [(PXPhotoKitCollectionsDataSource *)self numberOfSections];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfSections];
  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[PXPhotoKitCollectionsDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", i)];
      [v4 addObject:v6];
    }
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@: %p, numberOfSections:%ld sectionCounts:[%@]>", v9, self, numberOfSections, v4];

  return v10;
}

- (PXPhotoKitCollectionsDataSource)initWithRootCollectionList:(id)list collectionListBySection:(id)section collectionsFetchResultBySection:(id)bySection keyAssetsFetchResultsByCollection:(id)collection collectionsIndexPathsByCollection:(id)byCollection itemFetchResultByCollection:(id)resultByCollection virtualCollections:(id)collections collectionsFetchResult:(id)self0 sharingFilter:(unsigned __int16)self1 dataSourceConfiguration:(id)self2
{
  listCopy = list;
  sectionCopy = section;
  bySectionCopy = bySection;
  collectionCopy = collection;
  byCollectionCopy = byCollection;
  resultByCollectionCopy = resultByCollection;
  collectionsCopy = collections;
  resultCopy = result;
  configurationCopy = configuration;
  v45.receiver = self;
  v45.super_class = PXPhotoKitCollectionsDataSource;
  v26 = [(PXPhotoKitCollectionsDataSource *)&v45 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_collectionList, list);
    v28 = [sectionCopy copy];
    collectionListBySection = v27->__collectionListBySection;
    v27->__collectionListBySection = v28;

    v30 = [bySectionCopy copy];
    collectionsFetchResultBySection = v27->__collectionsFetchResultBySection;
    v27->__collectionsFetchResultBySection = v30;

    v32 = [collectionCopy copy];
    keyAssetsFetchResultsByCollection = v27->__keyAssetsFetchResultsByCollection;
    v27->__keyAssetsFetchResultsByCollection = v32;

    v34 = [byCollectionCopy copy];
    collectionsIndexPathsByCollection = v27->__collectionsIndexPathsByCollection;
    v27->__collectionsIndexPathsByCollection = v34;

    v36 = [resultByCollectionCopy copy];
    itemFetchResultByCollection = v27->_itemFetchResultByCollection;
    v27->_itemFetchResultByCollection = v36;

    v38 = [resultCopy copy];
    collectionsFetchResult = v27->_collectionsFetchResult;
    v27->_collectionsFetchResult = v38;

    objc_storeStrong(&v27->_configuration, configuration);
    v40 = [collectionsCopy copy];
    virtualCollections = v27->__virtualCollections;
    v27->__virtualCollections = v40;

    v27->_sharingFilter = filter;
  }

  return v27;
}

+ (int64_t)estimatedCountForAssetCollection:(id)collection withConfiguration:(id)configuration
{
  collectionCopy = collection;
  configurationCopy = configuration;
  assetsFilterPredicate = [configurationCopy assetsFilterPredicate];

  assetTypesToInclude = [configurationCopy assetTypesToInclude];
  if (!assetsFilterPredicate)
  {
    if (assetTypesToInclude != -1 && (~assetTypesToInclude & 3) != 0)
    {
      if ((assetTypesToInclude & 1) == 0)
      {
        if ((assetTypesToInclude & 2) == 0)
        {
          v9 = 0;
          goto LABEL_12;
        }

LABEL_17:
        estimatedVideosCount = [collectionCopy estimatedVideosCount];
        goto LABEL_11;
      }

      goto LABEL_16;
    }

LABEL_10:
    estimatedVideosCount = [collectionCopy estimatedAssetCount];
LABEL_11:
    v9 = estimatedVideosCount;
    goto LABEL_12;
  }

  if ((~assetTypesToInclude & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((assetTypesToInclude & 4) == 0)
  {
    if ((~assetTypesToInclude & 3) != 0)
    {
      if ((assetTypesToInclude & 1) == 0)
      {
        if ((assetTypesToInclude & 2) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }

LABEL_16:
      estimatedVideosCount = [collectionCopy estimatedPhotosCount];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_7:
  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:

  return v9;
}

@end