@interface PXPeoplePersonDataSource
- (PXPeoplePersonDataSource)initWithName:(id)a3 personFetchType:(unint64_t)a4;
- (PXPeoplePersonDataSource)initWithName:(id)a3 personFetchType:(unint64_t)a4 fetchLimit:(unint64_t)a5;
- (id)_applyChanges:(id)a3;
- (id)_assetForFace:(id)a3;
- (id)_faceForPerson:(id)a3;
- (id)_fetchResultForFetchType:(unint64_t)a3 fetchOptions:(id)a4;
- (id)_itemsArrayFromObjects:(id)a3;
- (id)_membersForModelObjects:(id)a3;
- (id)faceTileAtIndex:(int64_t)a3;
- (id)generateFetchResult;
- (id)titleAtIndex:(unint64_t)a3;
- (void)_asyncLoadImageForItem:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6;
- (void)_cacheFacesAndAssets;
- (void)cancelImageLoadingForItem:(id)a3;
- (void)loadObjectsAndUpdateMembersWithCompletion:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
- (void)startListeningForChanges;
- (void)stopListeningForChanges;
- (void)updateKeyFace:(id)a3 forPerson:(id)a4;
@end

@implementation PXPeoplePersonDataSource

- (id)_assetForFace:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(NSDictionary *)self->_assetsByFaces objectForKeyedSubscript:v4];

  return v5;
}

- (id)_faceForPerson:(id)a3
{
  v4 = [a3 localIdentifier];
  v5 = [(NSMutableDictionary *)self->_keyFaceByPersonLocalIdentifier objectForKeyedSubscript:v4];

  return v5;
}

- (id)faceTileAtIndex:(int64_t)a3
{
  v4 = [(PXPeopleDataSource *)self personAtIndex:a3];
  v5 = [(PXPeoplePersonDataSource *)self _faceForPerson:v4];
  v6 = [(PXPeoplePersonDataSource *)self _assetForFace:v5];
  v7 = [[PXPeopleFaceTile alloc] initWithFace:v5 asset:v6 person:v4];

  return v7;
}

- (void)updateKeyFace:(id)a3 forPerson:(id)a4
{
  v8 = a3;
  v6 = [a4 localIdentifier];
  if (v6)
  {
    keyFaceByPersonLocalIdentifier = self->_keyFaceByPersonLocalIdentifier;
    if (v8)
    {
      [(NSMutableDictionary *)keyFaceByPersonLocalIdentifier setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)keyFaceByPersonLocalIdentifier removeObjectForKey:v6];
    }
  }
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleDataSource *)self objects];
  v6 = MEMORY[0x1E695DEC8];
  v7 = [(PXPeopleDataSource *)self members];
  v8 = [v6 arrayWithArray:v7];

  v9 = [v4 changeDetailsForFetchResult:v5];
  if (v9)
  {
    v10 = [(PXPeoplePersonDataSource *)self _applyChanges:v9];
    v11 = [(PXPeopleDataSource *)self members];
    v12 = [(PXPeopleDataSource *)self delegate];
    if (v12)
    {
      v13 = [off_1E7721450 changeDetailsFromArray:v8 toArray:v11 changedObjects:v10];
      if ([v13 hasAnyChanges])
      {
        objc_initWeak(&location, self);
        v12;
        objc_copyWeak(&v14, &location);
        v13;
        px_dispatch_on_main_queue();
      }
    }
  }
}

void __50__PXPeoplePersonDataSource_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 peopleDataSource:WeakRetained didApplyIncrementalChanges:*(a1 + 40)];
}

- (id)generateFetchResult
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978830];
  v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5 = [v3 fetchOptionsWithPhotoLibrary:v4 orObject:0];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:1];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setSortDescriptors:v7];

  v12 = *MEMORY[0x1E6978F38];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v5 setFetchPropertySets:v8];

  v9 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:v9];

  v10 = [(PXPeoplePersonDataSource *)self _fetchResultForFetchType:[(PXPeoplePersonDataSource *)self personFetchType] fetchOptions:v5];

  return v10;
}

- (void)cancelImageLoadingForItem:(id)a3
{
  v6 = a3;
  v3 = [v6 faceImageRequestID];
  if (v3)
  {
    v4 = v3;
    v5 = +[PXPeopleFaceCropManager sharedManager];
    [v5 cancelRequestForRequestID:v4];

    [v6 setFaceImageRequestID:0];
  }
}

- (void)_asyncLoadImageForItem:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6
{
  width = a4.width;
  v10 = a3;
  v11 = a6;
  v12 = [v10 faceImage];
  v13 = v12;
  if (v11 && v12)
  {
    v11[2](v11, v12, 0, *off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3));
  }

  [v10 setResultHandler:v11];
  v14 = [v10 faceImageRequestID];
  v15 = +[PXPeopleFaceCropManager sharedManager];
  if (([v15 isRequestActiveWithRequestID:v14] & 1) == 0)
  {
    v16 = [v10 modelObject];
    v17 = [(PXPeoplePersonDataSource *)self _faceForPerson:v16];
    v18 = [PXPeopleFaceCropFetchOptions alloc];
    if (v17)
    {
      v19 = [(PXPeopleFaceCropFetchOptions *)v18 initWithPerson:v16 face:v17 targetSize:width displayScale:width, a5];
      v20 = [(PXPeoplePersonDataSource *)self _assetForFace:v17];
      [(PXPeopleFaceCropFetchOptions *)v19 setAsset:v20];
    }

    else
    {
      v19 = [(PXPeopleFaceCropFetchOptions *)v18 initWithPerson:v16 targetSize:width displayScale:width, a5];
    }

    [(PXPeopleFaceCropFetchOptions *)v19 setCornerStyle:2];
    [(PXPeopleFaceCropFetchOptions *)v19 setCropFactor:0];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3042000000;
    v22[3] = __Block_byref_object_copy__237836;
    v22[4] = __Block_byref_object_dispose__237837;
    objc_initWeak(&v23, v10);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PXPeoplePersonDataSource__asyncLoadImageForItem_targetSize_displayScale_resultHandler___block_invoke;
    v21[3] = &unk_1E77496A8;
    v21[4] = v22;
    [v10 setFaceImageRequestID:{objc_msgSend(v15, "requestFaceCropForOptions:resultHandler:", v19, v21)}];
    _Block_object_dispose(v22, 8);
    objc_destroyWeak(&v23);
  }
}

void __89__PXPeoplePersonDataSource__asyncLoadImageForItem_targetSize_displayScale_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    [v7 setFaceImage:v19];
    v8 = [v7 resultHandler];
    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
      [v9 CGRectValue];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v5 objectForKeyedSubscript:@"PXPeopleErrorKey"];
      (v8)[2](v8, v19, v18, v11, v13, v15, v17);
    }
  }
}

- (id)_membersForModelObjects:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(PXPeopleDataSource *)self members];
  v7 = [(PXPeopleDataSource *)self persons];
  v8 = [v6 count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v7 indexOfObject:{*(*(&v17 + 1) + 8 * i), v17}];
        if (v14 < v8)
        {
          v15 = [v6 objectAtIndex:v14];
          [v5 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v5;
}

- (id)_applyChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 fetchResultAfterChanges];
  [(PXPeopleDataSource *)self _setObjectsWithoutUpdate:v5];

  v6 = MEMORY[0x1E695DF70];
  v7 = [(PXPeopleDataSource *)self members];
  v8 = [v6 arrayWithArray:v7];

  v9 = [v4 removedObjects];
  if ([v9 count])
  {
    v10 = [(PXPeoplePersonDataSource *)self _membersForModelObjects:v9];

    [v8 removeObjectsInArray:v10];
    v9 = v10;
  }

  v11 = [v4 insertedObjects];
  if ([v11 count])
  {
    v12 = [(PXPeoplePersonDataSource *)self _itemsArrayFromObjects:v11];

    [v8 addObjectsFromArray:v12];
    v11 = v12;
  }

  v13 = [v4 changedObjects];
  if ([v13 count])
  {
    v14 = [(PXPeoplePersonDataSource *)self _membersForModelObjects:v13];
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        v17 = [v13 objectAtIndexedSubscript:v15];
        [v16 updateWithModel:v17];

        ++v15;
      }

      while (v15 < [v14 count]);
    }
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v18 = [(PXPeopleDataSource *)self filterPredicate];
  if (v18)
  {
    [v8 filterUsingPredicate:v18];
  }

  v19 = [(PXPeopleDataSource *)self sortComparator];
  if (v19)
  {
    [v8 sortUsingComparator:v19];
  }

  [(PXPeopleDataSource *)self setMembers:v8];

  return v14;
}

- (id)_fetchResultForFetchType:(unint64_t)a3 fetchOptions:(id)a4
{
  v5 = a4;
  [v5 setPersonContext:1];
  v6 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:v6];

  switch(a3)
  {
    case 0uLL:
      v7 = MEMORY[0x1E6978980];
      v8 = 1;
      goto LABEL_7;
    case 2uLL:
      v9 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v5];
LABEL_8:
      v10 = v9;
      goto LABEL_10;
    case 1uLL:
      v7 = MEMORY[0x1E6978980];
      v8 = 0;
LABEL_7:
      v9 = [v7 fetchPersonsWithType:v8 options:v5];
      goto LABEL_8;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)_itemsArrayFromObjects:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PXPersonItem alloc];
        v12 = [(PXPersonItem *)v11 initWithPerson:v10, v14];

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)titleAtIndex:(unint64_t)a3
{
  v4 = [(PXPeopleDataSource *)self personAtIndex:a3];
  v5 = [v4 px_localizedName];
  v6 = v5;
  if (self->_showUUIDIfNoName && ![v5 length])
  {
    v7 = [v4 uuid];
    v8 = [v7 substringToIndex:8];

    v6 = v8;
  }

  return v6;
}

- (void)_cacheFacesAndAssets
{
  v12 = [(PXPeopleDataSource *)self persons];
  v3 = [v12 count];
  if (v3)
  {
    if (v3 >= 0x1C)
    {
      v4 = 28;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v12 subarrayWithRange:{0, v4}];
    v6 = [MEMORY[0x1E69787C8] fetchKeyFaceByPersonLocalIdentifierForPersons:v5 options:0];
    v7 = [v6 mutableCopy];
    keyFaceByPersonLocalIdentifier = self->_keyFaceByPersonLocalIdentifier;
    self->_keyFaceByPersonLocalIdentifier = v7;

    v9 = [(NSMutableDictionary *)self->_keyFaceByPersonLocalIdentifier allValues];
    v10 = [MEMORY[0x1E6978630] fetchAssetsGroupedByFaceUUIDForFaces:v9];
    assetsByFaces = self->_assetsByFaces;
    self->_assetsByFaces = v10;
  }
}

- (void)loadObjectsAndUpdateMembersWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PXPeoplePersonDataSource_loadObjectsAndUpdateMembersWithCompletion___block_invoke;
  aBlock[3] = &unk_1E774AA30;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  v7.receiver = self;
  v7.super_class = PXPeoplePersonDataSource;
  [(PXPeopleDataSource *)&v7 loadObjectsAndUpdateMembersWithCompletion:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __70__PXPeoplePersonDataSource_loadObjectsAndUpdateMembersWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cacheFacesAndAssets];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)stopListeningForChanges
{
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v3 unregisterChangeObserver:self];
}

- (void)startListeningForChanges
{
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v3 registerChangeObserver:self];
}

- (PXPeoplePersonDataSource)initWithName:(id)a3 personFetchType:(unint64_t)a4 fetchLimit:(unint64_t)a5
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PXPeoplePersonDataSource_initWithName_personFetchType_fetchLimit___block_invoke;
  v11[3] = &unk_1E7749E68;
  v13 = a5;
  v12 = self;
  v14 = a4;
  v10.receiver = v12;
  v10.super_class = PXPeoplePersonDataSource;
  v7 = [(PXPeopleDataSource *)&v10 initWithName:a3 objectsReloadBlock:v11];
  v8 = v7;
  if (v7)
  {
    v7->_personFetchType = a4;
  }

  return v8;
}

id __68__PXPeoplePersonDataSource_initWithName_personFetchType_fetchLimit___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978830];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v2 fetchOptionsWithPhotoLibrary:v3 orObject:0];

  [v4 setFetchLimit:*(a1 + 40)];
  v5 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v4 setIncludedDetectionTypes:v5];

  v6 = [*(a1 + 32) _fetchResultForFetchType:*(a1 + 48) fetchOptions:v4];

  return v6;
}

- (PXPeoplePersonDataSource)initWithName:(id)a3 personFetchType:(unint64_t)a4
{
  v6 = MEMORY[0x1E69788E0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v10 = [MEMORY[0x1E6978980] fetchType];
  v11 = [v8 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:v9 fetchType:v10 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v18.receiver = self;
  v18.super_class = PXPeoplePersonDataSource;
  v12 = [(PXPeopleDataSource *)&v18 initWithName:v7 objects:v11];

  if (v12)
  {
    v12->_personFetchType = a4;
    v13 = [MEMORY[0x1E695DF90] dictionary];
    keyFaceByPersonLocalIdentifier = v12->_keyFaceByPersonLocalIdentifier;
    v12->_keyFaceByPersonLocalIdentifier = v13;

    assetsByFaces = v12->_assetsByFaces;
    v12->_assetsByFaces = MEMORY[0x1E695E0F8];

    v16 = +[PXPeopleUISettings sharedInstance];
    v12->_showUUIDIfNoName = [v16 showUUIDIfNoName];
  }

  return v12;
}

@end