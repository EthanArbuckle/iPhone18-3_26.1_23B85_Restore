@interface PXPeopleRecoDataSource
- (BOOL)hasAnyRejectedItems;
- (BOOL)isIndexRejected:(unint64_t)rejected;
- (BOOL)shouldAllowCommitting;
- (BOOL)toggleRejectionForIndex:(unint64_t)index;
- (OS_dispatch_queue)processingQueue;
- (PXPeopleRecoDataSource)initWithPerson:(id)person dataSourceDelegate:(id)delegate;
- (PXPeopleRecoDataSourceDelegate)dataSourceDelegate;
- (unint64_t)numberOfItems;
- (void)_clearIndexes;
- (void)_fetchEverythingForPerson:(id)person;
- (void)commitChanges;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)requestImageForItemAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale imageBlock:(id)block;
@end

@implementation PXPeopleRecoDataSource

- (PXPeopleRecoDataSourceDelegate)dataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceDelegate);

  return WeakRetained;
}

- (void)_clearIndexes
{
  rejectedFaceIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceIndexes];
  [rejectedFaceIndexes removeAllIndexes];

  rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceCropIndexes];
  [rejectedFaceCropIndexes removeAllIndexes];

  dataSourceDelegate = [(PXPeopleRecoDataSource *)self dataSourceDelegate];
  [dataSourceDelegate recoDataSourceDataChanged:self];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  person = [(PXPeopleRecoDataSource *)self person];
  v6 = [queueCopy changeDetailsForObject:person];

  objectAfterChanges = [v6 objectAfterChanges];
  if (objectAfterChanges)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      px_descriptionForAssertionMessage = [objectAfterChanges px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleRecoDataSource.m" lineNumber:235 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"personChangeDetails.objectAfterChanges", v20, px_descriptionForAssertionMessage}];
    }
  }

  if ([objectAfterChanges verifiedType] == -2)
  {
    v8 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:objectAfterChanges];
    v9 = MEMORY[0x1E6978980];
    uuid = [objectAfterChanges uuid];
    v11 = [v9 fetchFinalMergeTargetPersonsForPersonWithUUID:uuid options:v8];
    firstObject = [v11 firstObject];

    [(PXPeopleRecoDataSource *)self setPerson:firstObject];
    [(PXPeopleRecoDataSource *)self _fetchEverythingForPerson:firstObject];
  }

  else
  {
    faces = [(PXPeopleRecoDataSource *)self faces];
    v8 = [queueCopy changeDetailsForFetchResult:faces];

    if (v8)
    {
      fetchResultAfterChanges = [v8 fetchResultAfterChanges];
      [(PXPeopleRecoDataSource *)self setFaces:fetchResultAfterChanges];
    }

    faceCrops = [(PXPeopleRecoDataSource *)self faceCrops];
    firstObject = [queueCopy changeDetailsForFetchResult:faceCrops];

    if (firstObject)
    {
      fetchResultAfterChanges2 = [firstObject fetchResultAfterChanges];
      [(PXPeopleRecoDataSource *)self setFaceCrops:fetchResultAfterChanges2];
    }

    else
    {
      v17 = 0;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  [(PXPeopleRecoDataSource *)self _clearIndexes];
  v17 = v8;
LABEL_12:
}

- (OS_dispatch_queue)processingQueue
{
  p_processingQueue = &self->_processingQueue;
  v3 = self->_processingQueue;
  if (!v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v3 = dispatch_queue_create("com.apple.photos.people.manageTags.processing", v4);

    objc_storeStrong(p_processingQueue, v3);
  }

  return v3;
}

- (void)commitChanges
{
  if ([(PXPeopleRecoDataSource *)self hasAnyRejectedItems]&& ![(PXPeopleRecoDataSource *)self isUsingMockedData])
  {
    v3 = +[PXPeopleUISettings sharedInstance];
    enableReviewPhotosDemoMode = [v3 enableReviewPhotosDemoMode];

    if ((enableReviewPhotosDemoMode & 1) == 0)
    {
      faces = [(PXPeopleRecoDataSource *)self faces];
      rejectedFaceIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceIndexes];
      v7 = [faces objectsAtIndexes:rejectedFaceIndexes];

      faceCrops = [(PXPeopleRecoDataSource *)self faceCrops];
      rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceCropIndexes];
      v10 = [faceCrops objectsAtIndexes:rejectedFaceCropIndexes];

      person = [(PXPeopleRecoDataSource *)self person];
      photoLibrary = [person photoLibrary];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __39__PXPeopleRecoDataSource_commitChanges__block_invoke;
      v19[3] = &unk_1E774A1B8;
      v20 = person;
      v21 = v7;
      v22 = v10;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __39__PXPeopleRecoDataSource_commitChanges__block_invoke_2;
      v16[3] = &unk_1E774B730;
      v17 = v20;
      selfCopy = self;
      v13 = v20;
      v14 = v10;
      v15 = v7;
      [photoLibrary performChanges:v19 completionHandler:v16];
    }
  }
}

uint64_t __39__PXPeopleRecoDataSource_commitChanges__block_invoke(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] verifiedType];
  v3 = [a1[5] count];
  if (v2 != 1 || v3 != 0)
  {
    v5 = v3;
    v6 = [MEMORY[0x1E6978990] changeRequestForPerson:a1[4]];
    v7 = v6;
    if (v2 != 1)
    {
      [v6 setVerifiedType:1];
    }

    if (v5)
    {
      [v7 addRejectedFaces:a1[5] forCluster:1];
    }
  }

  result = [a1[6] count];
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = a1[6];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x1E69787F8] creationRequestForFaceCropCopyFromFaceCrop:*(*(&v15 + 1) + 8 * v13++) withType:2 onPerson:{a1[4], v15}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    return [MEMORY[0x1E69787F8] deleteFaceCrops:a1[6]];
  }

  return result;
}

void __39__PXPeopleRecoDataSource_commitChanges__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Error committing rejections: %@ for person: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 isLowPowerModeEnabled];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 40) processingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PXPeopleRecoDataSource_commitChanges__block_invoke_205;
    block[3] = &unk_1E774C648;
    v12 = *(a1 + 32);
    dispatch_async(v8, block);

    v9 = v12;
LABEL_7:
  }
}

void __39__PXPeopleRecoDataSource_commitChanges__block_invoke_205(uint64_t a1)
{
  v2 = [MEMORY[0x1E69AE230] sharedAnalysisService];
  v3 = [*(a1 + 32) photoLibrary];
  v4 = [v3 photoLibraryURL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PXPeopleRecoDataSource_commitChanges__block_invoke_3;
  v5[3] = &unk_1E774BE98;
  v6 = *(a1 + 32);
  [v2 requestPersonProcessingForPhotoLibraryURL:v4 options:MEMORY[0x1E695E0F8] progressHandler:&__block_literal_global_240969 completionHandler:v5];
}

void __39__PXPeopleRecoDataSource_commitChanges__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLUIGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v6;
      v7 = "Error requesting person processing: %@ for person: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    v7 = "Successfully requested person processing for person: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }
}

- (BOOL)hasAnyRejectedItems
{
  rejectedFaceIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceIndexes];
  if ([rejectedFaceIndexes count])
  {
    v4 = 1;
  }

  else
  {
    rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceCropIndexes];
    v4 = [rejectedFaceCropIndexes count] != 0;
  }

  return v4;
}

- (BOOL)shouldAllowCommitting
{
  numberOfItems = [(PXPeopleRecoDataSource *)self numberOfItems];
  rejectedFaceIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceIndexes];
  v5 = [rejectedFaceIndexes count];
  rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceCropIndexes];
  LOBYTE(numberOfItems) = numberOfItems > [rejectedFaceCropIndexes count] + v5;

  return numberOfItems;
}

- (BOOL)toggleRejectionForIndex:(unint64_t)index
{
  v5 = [(PXPeopleRecoDataSource *)self isIndexRejected:?];
  faces = [(PXPeopleRecoDataSource *)self faces];
  v7 = [faces count];

  v8 = index >= v7;
  v9 = index - v7;
  if (v5)
  {
    if (v8)
    {
      rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceCropIndexes];
      v11 = rejectedFaceCropIndexes;
      indexCopy = v9;
    }

    else
    {
      rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceIndexes];
      v11 = rejectedFaceCropIndexes;
      indexCopy = index;
    }

    [rejectedFaceCropIndexes removeIndex:indexCopy];
  }

  else
  {
    if (v8)
    {
      rejectedFaceCropIndexes2 = [(PXPeopleRecoDataSource *)self rejectedFaceCropIndexes];
      v11 = rejectedFaceCropIndexes2;
      indexCopy2 = v9;
    }

    else
    {
      rejectedFaceCropIndexes2 = [(PXPeopleRecoDataSource *)self rejectedFaceIndexes];
      v11 = rejectedFaceCropIndexes2;
      indexCopy2 = index;
    }

    [rejectedFaceCropIndexes2 addIndex:indexCopy2];
  }

  return !v5;
}

- (BOOL)isIndexRejected:(unint64_t)rejected
{
  faces = [(PXPeopleRecoDataSource *)self faces];
  v6 = [faces count];

  if (rejected >= v6)
  {
    rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceCropIndexes];
    v8 = rejectedFaceCropIndexes;
    rejectedCopy = rejected - v6;
  }

  else
  {
    rejectedFaceCropIndexes = [(PXPeopleRecoDataSource *)self rejectedFaceIndexes];
    v8 = rejectedFaceCropIndexes;
    rejectedCopy = rejected;
  }

  v10 = [rejectedFaceCropIndexes containsIndex:rejectedCopy];

  return v10;
}

- (void)requestImageForItemAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale imageBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  faces = [(PXPeopleRecoDataSource *)self faces];
  v13 = [faces count];
  if (v13 <= index)
  {
    v21 = v13;
    v22 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__PXPeopleRecoDataSource_requestImageForItemAtIndex_targetSize_displayScale_imageBlock___block_invoke_2;
    block[3] = &unk_1E7749E20;
    indexCopy = index;
    v26 = v21;
    block[4] = self;
    v24 = blockCopy;
    scale = blockCopy;
    dispatch_async(v22, block);
  }

  else
  {
    v14 = [PXPeopleFaceCropFetchOptions alloc];
    person = [(PXPeopleRecoDataSource *)self person];
    v16 = [faces objectAtIndexedSubscript:index];
    scale = [(PXPeopleFaceCropFetchOptions *)v14 initWithPerson:person face:v16 targetSize:width displayScale:height, scale];

    v18 = +[PXPeopleUISettings sharedInstance];
    LOBYTE(v14) = [v18 showReviewPhotosObjectType];

    if ((v14 & 1) == 0)
    {
      [(PXPeopleFaceCropFetchOptions *)scale setCornerStyle:1];
    }

    v19 = +[PXPeopleFaceCropManager sharedManager];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__PXPeopleRecoDataSource_requestImageForItemAtIndex_targetSize_displayScale_imageBlock___block_invoke;
    v27[3] = &unk_1E774B680;
    v28 = blockCopy;
    v20 = blockCopy;
    [v19 requestFaceCropForOptions:scale resultHandler:v27];
  }
}

void __88__PXPeopleRecoDataSource_requestImageForItemAtIndex_targetSize_displayScale_imageBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32))
  {
    v5 = a2;
    v7 = [a3 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
    v6 = *(a1 + 32);
    [v7 CGRectValue];
    (*(v6 + 16))(v6, v5);
  }
}

void __88__PXPeopleRecoDataSource_requestImageForItemAtIndex_targetSize_displayScale_imageBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) faceCrops];
  v3 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v10 = [v2 objectAtIndex:v4 - v5];

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [v10 resourceData];
  v8 = [v6 imageWithData:v7];

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, *off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3));
  }
}

- (unint64_t)numberOfItems
{
  faces = [(PXPeopleRecoDataSource *)self faces];
  v4 = [faces count];
  faceCrops = [(PXPeopleRecoDataSource *)self faceCrops];
  v6 = [faceCrops count];

  return v6 + v4;
}

- (void)_fetchEverythingForPerson:(id)person
{
  v14[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  v5 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:personCopy];
  [v5 setIncludeOnlyFacesNeedingFaceCrop:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:px_defaultDetectionTypes];

  v7 = [MEMORY[0x1E69787C8] fetchFacesForPerson:personCopy options:v5];
  [(PXPeopleRecoDataSource *)self setFaces:v7];

  v8 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:personCopy];
  if ([(PXPeopleRecoDataSource *)self isUsingMockedData])
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"uuid" ascending:1];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v8 setSortDescriptors:v10];

    [v8 setFetchLimit:100];
    v11 = [MEMORY[0x1E69787F0] fetchFaceCropsWithOptions:v8];
  }

  else
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type=%d||type=%d||type=%d", 1, 3, 5];
    [v8 setPredicate:v12];

    v11 = [MEMORY[0x1E69787F0] fetchFaceCropsForPerson:personCopy options:v8];
  }

  v13 = v11;
  [(PXPeopleRecoDataSource *)self setFaceCrops:v11];
}

- (PXPeopleRecoDataSource)initWithPerson:(id)person dataSourceDelegate:(id)delegate
{
  personCopy = person;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = PXPeopleRecoDataSource;
  v9 = [(PXPeopleRecoDataSource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_person, person);
    objc_storeWeak(&v10->_dataSourceDelegate, delegateCopy);
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    rejectedFaceIndexes = v10->_rejectedFaceIndexes;
    v10->_rejectedFaceIndexes = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
    rejectedFaceCropIndexes = v10->_rejectedFaceCropIndexes;
    v10->_rejectedFaceCropIndexes = v13;

    v15 = +[PXPeopleUISettings sharedInstance];
    v10->_isUsingMockedData = [v15 useReviewPhotosMockDataSource];

    [(PXPeopleRecoDataSource *)v10 _fetchEverythingForPerson:personCopy];
    photoLibrary = [personCopy photoLibrary];
    [photoLibrary px_registerChangeObserver:v10];
  }

  return v10;
}

@end