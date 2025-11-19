@interface PXPhotoKitCollectionsDataSource
+ (int64_t)estimatedCountForAssetCollection:(id)a3 withConfiguration:(id)a4;
- (PXPhotoKitCollectionsDataSource)initWithRootCollectionList:(id)a3 collectionListBySection:(id)a4 collectionsFetchResultBySection:(id)a5 keyAssetsFetchResultsByCollection:(id)a6 collectionsIndexPathsByCollection:(id)a7 itemFetchResultByCollection:(id)a8 virtualCollections:(id)a9 collectionsFetchResult:(id)a10 sharingFilter:(unsigned __int16)a11 dataSourceConfiguration:(id)a12;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)_assetAtSimpleIndexPath:(PXSimpleIndexPath *)a3;
- (id)_collectionAtSimpleIndexPath:(PXSimpleIndexPath *)a3;
- (id)_collectionListAtSimpleIndexPath:(PXSimpleIndexPath *)a3;
- (id)collectionAtIndexPath:(id)a3;
- (id)collectionListForSection:(int64_t)a3;
- (id)description;
- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)indexPathForCollection:(id)a3;
- (id)keyAssetsForCollection:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)assetCollectionsCountForFetchResult:(id)a3;
- (int64_t)assetCollectionsCountForSection:(int64_t)a3;
- (int64_t)collectionsListCountForFetchResult:(id)a3;
- (int64_t)collectionsListCountForSection:(int64_t)a3;
- (int64_t)countForCollection:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)numberOfSubitemsInItem:(int64_t)a3 section:(int64_t)a4;
- (void)enumerateCollectionsUsingBlock:(id)a3;
@end

@implementation PXPhotoKitCollectionsDataSource

- (void)enumerateCollectionsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXPhotoKitCollectionsDataSource_enumerateCollectionsUsingBlock___block_invoke;
  v7[3] = &unk_1E774C008;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (int64_t)collectionsListCountForFetchResult:(id)a3
{
  if (a3)
  {
    return [a3 countOfCollectionsLists];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)assetCollectionsCountForFetchResult:(id)a3
{
  if (a3)
  {
    return [a3 countOfAssetCollections];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)collectionsListCountForSection:(int64_t)a3
{
  if (a3 < 0 || [(PXPhotoKitCollectionsDataSource *)self numberOfSections]<= a3)
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
    v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    v6 = [v5 objectAtIndexedSubscript:a3];
    v7 = [(PXPhotoKitCollectionsDataSource *)self collectionsListCountForFetchResult:v6];

    return v7;
  }
}

- (int64_t)assetCollectionsCountForSection:(int64_t)a3
{
  if (a3 < 0 || [(PXPhotoKitCollectionsDataSource *)self numberOfSections]<= a3)
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
    v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    v6 = [v5 objectAtIndexedSubscript:a3];
    v7 = [(PXPhotoKitCollectionsDataSource *)self assetCollectionsCountForFetchResult:v6];

    return v7;
  }
}

- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = *&a3->item;
  v9[0] = *&a3->dataSourceIdentifier;
  v9[1] = v4;
  v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionAtSimpleIndexPath:v9];
  if ([v5 canContainAssets])
  {
    v6 = [(PXPhotoKitCollectionsDataSource *)self itemFetchResultByCollection];
    v7 = [v6 objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)countForCollection:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXPhotoKitCollectionsDataSource *)self sectionedDataSourceLog];
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = [v5 px_cheapLogIdentifier];
    *buf = 138543362;
    v35 = v10;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CountForCollection", "collection==%{public}@", buf, 0xCu);
  }

  v11 = [v5 px_isFolder];
  v12 = v5;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        v14 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v13 options:0];
        v15 = [(PXPhotoKitCollectionsDataSource *)self assetCollectionsCountForFetchResult:v14];
        goto LABEL_20;
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = objc_opt_class();
      v26 = NSStringFromClass(v30);
      v31 = [v13 px_descriptionForAssertionMessage];
      [v24 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:228 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v26, v31}];
    }

    else
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v24 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:228 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v26}];
    }

    goto LABEL_7;
  }

  if (!v12)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [v27 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v29}];
LABEL_32:

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = objc_opt_class();
    v29 = NSStringFromClass(v32);
    v33 = [v13 px_descriptionForAssertionMessage];
    [v27 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v29, v33}];

    goto LABEL_32;
  }

LABEL_10:
  v16 = [v13 px_containsPrivateContent];
  if ([v13 assetCollectionType] == 2 || objc_msgSend(v13, "assetCollectionType") == 9 || -[PXPhotoKitCollectionsDataSource sharingFilter](self, "sharingFilter") != 2)
  {
    if ((v16 & 1) == 0)
    {
LABEL_18:
      v20 = [(PXPhotoKitCollectionsDataSource *)self itemFetchResultByCollection];
      v14 = [v20 objectForKeyedSubscript:v13];

      if (!v14)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }

      v15 = [v14 count];
LABEL_20:
      v19 = v15;
LABEL_21:

      goto LABEL_22;
    }
  }

  else
  {
    v17 = [(PXPhotoKitCollectionsDataSource *)self itemFetchResultByCollection];
    v18 = [v17 objectForKeyedSubscript:v13];

    if ((v16 & 1) == 0)
    {
      if (!v18)
      {
        v14 = [(PXPhotoKitCollectionsDataSource *)self configuration];
        v15 = [PXPhotoKitCollectionsDataSource estimatedCountForAssetCollection:v13 withConfiguration:v14];
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

- (id)collectionListForSection:(int64_t)a3
{
  if (a3 < 0 || [(PXPhotoKitCollectionsDataSource *)self numberOfSections]<= a3)
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
    v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionListBySection];
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (id)collectionAtIndexPath:(id)a3
{
  v4 = a3;
  if (([v4 section] & 0x8000000000000000) == 0)
  {
    v5 = [v4 section];
    v6 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    if (v5 >= [v6 count] || objc_msgSend(v4, "item") < 0)
    {
    }

    else
    {
      v7 = [v4 item];
      v8 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
      v10 = [v9 count];

      if (v7 < v10)
      {
        v11 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
        v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];

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

- (id)indexPathForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionsIndexPathsByCollection];
  v6 = [v5 objectForKeyedSubscript:v4];

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
    v7 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PXPhotoKitCollectionsDataSource_indexPathForCollection___block_invoke;
    v10[3] = &unk_1E7746EE8;
    v11 = v4;
    v12 = &v18;
    v13 = &v14;
    [v7 enumerateObjectsUsingBlock:v10];

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

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 indexPath];
    if (v26 == [(PXPhotoKitCollectionsDataSource *)self identifier])
    {
      [v7 indexPath];
      v9 = v24;
      v8 = v23;
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
      v8 = 0;
      v9 = 0;
      v10 = 0uLL;
      goto LABEL_19;
    }

    v11 = 0;
    v12 = 0;
    v22 = 0u;
  }

  v8 = *off_1E7722228;
  v9 = *(off_1E7722228 + 1);
  v10 = *(off_1E7722228 + 1);
  v13 = v12 != *off_1E7721F68 && !v11;
  if (v13 && *(&v22 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = *(off_1E7722228 + 1);
    v14 = [v7 itemObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(PXPhotoKitCollectionsDataSource *)self indexPathForCollection:v14];
      if (v15)
      {
        v8 = [(PXPhotoKitCollectionsDataSource *)self identifier];
        v9 = [v15 section];
        v16 = [v15 item];
        v17.f64[0] = NAN;
        v17.f64[1] = NAN;
        v18 = vnegq_f64(v17);
        *&v18.f64[0] = v16;
        v20 = v18;
      }
    }

    v10 = v20;
  }

LABEL_19:
  retstr->dataSourceIdentifier = v8;
  retstr->section = v9;
  *&retstr->item = v10;

  return result;
}

- (id)keyAssetsForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSource *)self _keyAssetsFetchResultsByCollection];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_assetAtSimpleIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v6 = [v5 objectAtIndexedSubscript:a3->section];
  v7 = [v6 objectAtIndexedSubscript:a3->item];

  v8 = [(PXPhotoKitCollectionsDataSource *)self _keyAssetsFetchResultsByCollection];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 objectAtIndexedSubscript:a3->subitem];

  return v10;
}

- (id)_collectionAtSimpleIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v5 = [v4 objectAtIndexedSubscript:a3->section];
  v6 = [v5 objectAtIndexedSubscript:a3->item];

  return v6;
}

- (id)_collectionListAtSimpleIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXPhotoKitCollectionsDataSource *)self _collectionListBySection];
  v5 = [v4 objectAtIndexedSubscript:a3->section];

  return v5;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];

    dataSourceIdentifier = a3->dataSourceIdentifier;
  }

  if (dataSourceIdentifier != [(PXPhotoKitCollectionsDataSource *)self identifier])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSource.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v9 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v10 = [v9 objectAtIndexedSubscript:a3->section];

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_2;
  }

  item = a3->item;
  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_2:
      v3 = *&a3->item;
      v8 = *&a3->dataSourceIdentifier;
      v9 = v3;
      v4 = [(PXPhotoKitCollectionsDataSource *)self _assetAtSimpleIndexPath:&v8];
      goto LABEL_3;
    }
  }

  else if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_3;
  }

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v7 = *&a3->item;
  v8 = *&a3->dataSourceIdentifier;
  v9 = v7;
  v4 = [(PXPhotoKitCollectionsDataSource *)self _collectionAtSimpleIndexPath:&v8];
LABEL_3:

  return v4;
}

- (int64_t)numberOfSubitemsInItem:(int64_t)a3 section:(int64_t)a4
{
  v7 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 objectAtIndexedSubscript:a3];
  v10 = [(PXPhotoKitCollectionsDataSource *)self _keyAssetsFetchResultsByCollection];
  v11 = [v10 objectForKeyedSubscript:v9];

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

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v5 = [v4 objectAtIndexedSubscript:a3];

  v6 = [v5 count];
  return v6;
}

- (int64_t)numberOfSections
{
  v2 = [(PXPhotoKitCollectionsDataSource *)self _collectionsFetchResultBySection];
  v3 = [v2 count];

  return v3;
}

- (id)description
{
  v3 = [(PXPhotoKitCollectionsDataSource *)self numberOfSections];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[PXPhotoKitCollectionsDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", i)];
      [v4 addObject:v6];
    }
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@: %p, numberOfSections:%ld sectionCounts:[%@]>", v9, self, v3, v4];

  return v10;
}

- (PXPhotoKitCollectionsDataSource)initWithRootCollectionList:(id)a3 collectionListBySection:(id)a4 collectionsFetchResultBySection:(id)a5 keyAssetsFetchResultsByCollection:(id)a6 collectionsIndexPathsByCollection:(id)a7 itemFetchResultByCollection:(id)a8 virtualCollections:(id)a9 collectionsFetchResult:(id)a10 sharingFilter:(unsigned __int16)a11 dataSourceConfiguration:(id)a12
{
  v43 = a3;
  v44 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a12;
  v45.receiver = self;
  v45.super_class = PXPhotoKitCollectionsDataSource;
  v26 = [(PXPhotoKitCollectionsDataSource *)&v45 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_collectionList, a3);
    v28 = [v44 copy];
    collectionListBySection = v27->__collectionListBySection;
    v27->__collectionListBySection = v28;

    v30 = [v19 copy];
    collectionsFetchResultBySection = v27->__collectionsFetchResultBySection;
    v27->__collectionsFetchResultBySection = v30;

    v32 = [v20 copy];
    keyAssetsFetchResultsByCollection = v27->__keyAssetsFetchResultsByCollection;
    v27->__keyAssetsFetchResultsByCollection = v32;

    v34 = [v21 copy];
    collectionsIndexPathsByCollection = v27->__collectionsIndexPathsByCollection;
    v27->__collectionsIndexPathsByCollection = v34;

    v36 = [v22 copy];
    itemFetchResultByCollection = v27->_itemFetchResultByCollection;
    v27->_itemFetchResultByCollection = v36;

    v38 = [v24 copy];
    collectionsFetchResult = v27->_collectionsFetchResult;
    v27->_collectionsFetchResult = v38;

    objc_storeStrong(&v27->_configuration, a12);
    v40 = [v23 copy];
    virtualCollections = v27->__virtualCollections;
    v27->__virtualCollections = v40;

    v27->_sharingFilter = a11;
  }

  return v27;
}

+ (int64_t)estimatedCountForAssetCollection:(id)a3 withConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 assetsFilterPredicate];

  v8 = [v6 assetTypesToInclude];
  if (!v7)
  {
    if (v8 != -1 && (~v8 & 3) != 0)
    {
      if ((v8 & 1) == 0)
      {
        if ((v8 & 2) == 0)
        {
          v9 = 0;
          goto LABEL_12;
        }

LABEL_17:
        v10 = [v5 estimatedVideosCount];
        goto LABEL_11;
      }

      goto LABEL_16;
    }

LABEL_10:
    v10 = [v5 estimatedAssetCount];
LABEL_11:
    v9 = v10;
    goto LABEL_12;
  }

  if ((~v8 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v8 & 4) == 0)
  {
    if ((~v8 & 3) != 0)
    {
      if ((v8 & 1) == 0)
      {
        if ((v8 & 2) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }

LABEL_16:
      v10 = [v5 estimatedPhotosCount];
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