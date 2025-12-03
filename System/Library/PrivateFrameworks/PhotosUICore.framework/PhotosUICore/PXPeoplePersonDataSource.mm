@interface PXPeoplePersonDataSource
- (PXPeoplePersonDataSource)initWithName:(id)name personFetchType:(unint64_t)type;
- (PXPeoplePersonDataSource)initWithName:(id)name personFetchType:(unint64_t)type fetchLimit:(unint64_t)limit;
- (id)_applyChanges:(id)changes;
- (id)_assetForFace:(id)face;
- (id)_faceForPerson:(id)person;
- (id)_fetchResultForFetchType:(unint64_t)type fetchOptions:(id)options;
- (id)_itemsArrayFromObjects:(id)objects;
- (id)_membersForModelObjects:(id)objects;
- (id)faceTileAtIndex:(int64_t)index;
- (id)generateFetchResult;
- (id)titleAtIndex:(unint64_t)index;
- (void)_asyncLoadImageForItem:(id)item targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler;
- (void)_cacheFacesAndAssets;
- (void)cancelImageLoadingForItem:(id)item;
- (void)loadObjectsAndUpdateMembersWithCompletion:(id)completion;
- (void)photoLibraryDidChange:(id)change;
- (void)startListeningForChanges;
- (void)stopListeningForChanges;
- (void)updateKeyFace:(id)face forPerson:(id)person;
@end

@implementation PXPeoplePersonDataSource

- (id)_assetForFace:(id)face
{
  uuid = [face uuid];
  v5 = [(NSDictionary *)self->_assetsByFaces objectForKeyedSubscript:uuid];

  return v5;
}

- (id)_faceForPerson:(id)person
{
  localIdentifier = [person localIdentifier];
  v5 = [(NSMutableDictionary *)self->_keyFaceByPersonLocalIdentifier objectForKeyedSubscript:localIdentifier];

  return v5;
}

- (id)faceTileAtIndex:(int64_t)index
{
  v4 = [(PXPeopleDataSource *)self personAtIndex:index];
  v5 = [(PXPeoplePersonDataSource *)self _faceForPerson:v4];
  v6 = [(PXPeoplePersonDataSource *)self _assetForFace:v5];
  v7 = [[PXPeopleFaceTile alloc] initWithFace:v5 asset:v6 person:v4];

  return v7;
}

- (void)updateKeyFace:(id)face forPerson:(id)person
{
  faceCopy = face;
  localIdentifier = [person localIdentifier];
  if (localIdentifier)
  {
    keyFaceByPersonLocalIdentifier = self->_keyFaceByPersonLocalIdentifier;
    if (faceCopy)
    {
      [(NSMutableDictionary *)keyFaceByPersonLocalIdentifier setObject:faceCopy forKey:localIdentifier];
    }

    else
    {
      [(NSMutableDictionary *)keyFaceByPersonLocalIdentifier removeObjectForKey:localIdentifier];
    }
  }
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  objects = [(PXPeopleDataSource *)self objects];
  v6 = MEMORY[0x1E695DEC8];
  members = [(PXPeopleDataSource *)self members];
  v8 = [v6 arrayWithArray:members];

  v9 = [changeCopy changeDetailsForFetchResult:objects];
  if (v9)
  {
    v10 = [(PXPeoplePersonDataSource *)self _applyChanges:v9];
    members2 = [(PXPeopleDataSource *)self members];
    delegate = [(PXPeopleDataSource *)self delegate];
    if (delegate)
    {
      v13 = [off_1E7721450 changeDetailsFromArray:v8 toArray:members2 changedObjects:v10];
      if ([v13 hasAnyChanges])
      {
        objc_initWeak(&location, self);
        delegate;
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
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5 = [v3 fetchOptionsWithPhotoLibrary:px_deprecated_appPhotoLibrary orObject:0];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:1];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setSortDescriptors:v7];

  v12 = *MEMORY[0x1E6978F38];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v5 setFetchPropertySets:v8];

  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:px_defaultDetectionTypes];

  v10 = [(PXPeoplePersonDataSource *)self _fetchResultForFetchType:[(PXPeoplePersonDataSource *)self personFetchType] fetchOptions:v5];

  return v10;
}

- (void)cancelImageLoadingForItem:(id)item
{
  itemCopy = item;
  faceImageRequestID = [itemCopy faceImageRequestID];
  if (faceImageRequestID)
  {
    v4 = faceImageRequestID;
    v5 = +[PXPeopleFaceCropManager sharedManager];
    [v5 cancelRequestForRequestID:v4];

    [itemCopy setFaceImageRequestID:0];
  }
}

- (void)_asyncLoadImageForItem:(id)item targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler
{
  width = size.width;
  itemCopy = item;
  handlerCopy = handler;
  faceImage = [itemCopy faceImage];
  v13 = faceImage;
  if (handlerCopy && faceImage)
  {
    handlerCopy[2](handlerCopy, faceImage, 0, *off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3));
  }

  [itemCopy setResultHandler:handlerCopy];
  faceImageRequestID = [itemCopy faceImageRequestID];
  v15 = +[PXPeopleFaceCropManager sharedManager];
  if (([v15 isRequestActiveWithRequestID:faceImageRequestID] & 1) == 0)
  {
    modelObject = [itemCopy modelObject];
    v17 = [(PXPeoplePersonDataSource *)self _faceForPerson:modelObject];
    v18 = [PXPeopleFaceCropFetchOptions alloc];
    if (v17)
    {
      scale = [(PXPeopleFaceCropFetchOptions *)v18 initWithPerson:modelObject face:v17 targetSize:width displayScale:width, scale];
      v20 = [(PXPeoplePersonDataSource *)self _assetForFace:v17];
      [(PXPeopleFaceCropFetchOptions *)scale setAsset:v20];
    }

    else
    {
      scale = [(PXPeopleFaceCropFetchOptions *)v18 initWithPerson:modelObject targetSize:width displayScale:width, scale];
    }

    [(PXPeopleFaceCropFetchOptions *)scale setCornerStyle:2];
    [(PXPeopleFaceCropFetchOptions *)scale setCropFactor:0];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3042000000;
    v22[3] = __Block_byref_object_copy__237836;
    v22[4] = __Block_byref_object_dispose__237837;
    objc_initWeak(&v23, itemCopy);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PXPeoplePersonDataSource__asyncLoadImageForItem_targetSize_displayScale_resultHandler___block_invoke;
    v21[3] = &unk_1E77496A8;
    v21[4] = v22;
    [itemCopy setFaceImageRequestID:{objc_msgSend(v15, "requestFaceCropForOptions:resultHandler:", scale, v21)}];
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

- (id)_membersForModelObjects:(id)objects
{
  v22 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  members = [(PXPeopleDataSource *)self members];
  persons = [(PXPeopleDataSource *)self persons];
  v8 = [members count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = objectsCopy;
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

        v14 = [persons indexOfObject:{*(*(&v17 + 1) + 8 * i), v17}];
        if (v14 < v8)
        {
          v15 = [members objectAtIndex:v14];
          [v5 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v5;
}

- (id)_applyChanges:(id)changes
{
  changesCopy = changes;
  fetchResultAfterChanges = [changesCopy fetchResultAfterChanges];
  [(PXPeopleDataSource *)self _setObjectsWithoutUpdate:fetchResultAfterChanges];

  v6 = MEMORY[0x1E695DF70];
  members = [(PXPeopleDataSource *)self members];
  v8 = [v6 arrayWithArray:members];

  removedObjects = [changesCopy removedObjects];
  if ([removedObjects count])
  {
    v10 = [(PXPeoplePersonDataSource *)self _membersForModelObjects:removedObjects];

    [v8 removeObjectsInArray:v10];
    removedObjects = v10;
  }

  insertedObjects = [changesCopy insertedObjects];
  if ([insertedObjects count])
  {
    v12 = [(PXPeoplePersonDataSource *)self _itemsArrayFromObjects:insertedObjects];

    [v8 addObjectsFromArray:v12];
    insertedObjects = v12;
  }

  changedObjects = [changesCopy changedObjects];
  if ([changedObjects count])
  {
    v14 = [(PXPeoplePersonDataSource *)self _membersForModelObjects:changedObjects];
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        v17 = [changedObjects objectAtIndexedSubscript:v15];
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

  filterPredicate = [(PXPeopleDataSource *)self filterPredicate];
  if (filterPredicate)
  {
    [v8 filterUsingPredicate:filterPredicate];
  }

  sortComparator = [(PXPeopleDataSource *)self sortComparator];
  if (sortComparator)
  {
    [v8 sortUsingComparator:sortComparator];
  }

  [(PXPeopleDataSource *)self setMembers:v8];

  return v14;
}

- (id)_fetchResultForFetchType:(unint64_t)type fetchOptions:(id)options
{
  optionsCopy = options;
  [optionsCopy setPersonContext:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [optionsCopy setIncludedDetectionTypes:px_defaultDetectionTypes];

  switch(type)
  {
    case 0uLL:
      v7 = MEMORY[0x1E6978980];
      v8 = 1;
      goto LABEL_7;
    case 2uLL:
      v9 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:optionsCopy];
LABEL_8:
      v10 = v9;
      goto LABEL_10;
    case 1uLL:
      v7 = MEMORY[0x1E6978980];
      v8 = 0;
LABEL_7:
      v9 = [v7 fetchPersonsWithType:v8 options:optionsCopy];
      goto LABEL_8;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)_itemsArrayFromObjects:(id)objects
{
  v19 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objectsCopy;
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

- (id)titleAtIndex:(unint64_t)index
{
  v4 = [(PXPeopleDataSource *)self personAtIndex:index];
  px_localizedName = [v4 px_localizedName];
  v6 = px_localizedName;
  if (self->_showUUIDIfNoName && ![px_localizedName length])
  {
    uuid = [v4 uuid];
    v8 = [uuid substringToIndex:8];

    v6 = v8;
  }

  return v6;
}

- (void)_cacheFacesAndAssets
{
  persons = [(PXPeopleDataSource *)self persons];
  v3 = [persons count];
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

    v5 = [persons subarrayWithRange:{0, v4}];
    v6 = [MEMORY[0x1E69787C8] fetchKeyFaceByPersonLocalIdentifierForPersons:v5 options:0];
    v7 = [v6 mutableCopy];
    keyFaceByPersonLocalIdentifier = self->_keyFaceByPersonLocalIdentifier;
    self->_keyFaceByPersonLocalIdentifier = v7;

    allValues = [(NSMutableDictionary *)self->_keyFaceByPersonLocalIdentifier allValues];
    v10 = [MEMORY[0x1E6978630] fetchAssetsGroupedByFaceUUIDForFaces:allValues];
    assetsByFaces = self->_assetsByFaces;
    self->_assetsByFaces = v10;
  }
}

- (void)loadObjectsAndUpdateMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PXPeoplePersonDataSource_loadObjectsAndUpdateMembersWithCompletion___block_invoke;
  aBlock[3] = &unk_1E774AA30;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
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
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [px_deprecated_appPhotoLibrary unregisterChangeObserver:self];
}

- (void)startListeningForChanges
{
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [px_deprecated_appPhotoLibrary registerChangeObserver:self];
}

- (PXPeoplePersonDataSource)initWithName:(id)name personFetchType:(unint64_t)type fetchLimit:(unint64_t)limit
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PXPeoplePersonDataSource_initWithName_personFetchType_fetchLimit___block_invoke;
  v11[3] = &unk_1E7749E68;
  limitCopy = limit;
  selfCopy = self;
  typeCopy = type;
  v10.receiver = selfCopy;
  v10.super_class = PXPeoplePersonDataSource;
  v7 = [(PXPeopleDataSource *)&v10 initWithName:name objectsReloadBlock:v11];
  v8 = v7;
  if (v7)
  {
    v7->_personFetchType = type;
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

- (PXPeoplePersonDataSource)initWithName:(id)name personFetchType:(unint64_t)type
{
  v6 = MEMORY[0x1E69788E0];
  nameCopy = name;
  v8 = [v6 alloc];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  fetchType = [MEMORY[0x1E6978980] fetchType];
  v11 = [v8 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:px_deprecated_appPhotoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v18.receiver = self;
  v18.super_class = PXPeoplePersonDataSource;
  v12 = [(PXPeopleDataSource *)&v18 initWithName:nameCopy objects:v11];

  if (v12)
  {
    v12->_personFetchType = type;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    keyFaceByPersonLocalIdentifier = v12->_keyFaceByPersonLocalIdentifier;
    v12->_keyFaceByPersonLocalIdentifier = dictionary;

    assetsByFaces = v12->_assetsByFaces;
    v12->_assetsByFaces = MEMORY[0x1E695E0F8];

    v16 = +[PXPeopleUISettings sharedInstance];
    v12->_showUUIDIfNoName = [v16 showUUIDIfNoName];
  }

  return v12;
}

@end