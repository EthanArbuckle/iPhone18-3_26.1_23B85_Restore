@interface PXPeopleWidgetDataSource
- (PXPeopleWidgetDataSource)initWithPhotoLibrary:(id)a3 name:(id)a4 objectsReloadBlock:(id)a5;
- (id)titleAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)imageCacheDidChanged:(id)a3;
- (void)loadMembersWithCompletionBlock:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
- (void)prefetchThumbnailsForTargetSize:(CGSize)a3 displayScale:(double)a4 maxFetchCount:(unint64_t)a5;
- (void)startListeningForChanges;
- (void)stopListeningForChanges;
@end

@implementation PXPeopleWidgetDataSource

- (void)loadMembersWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleDataSource *)self objects];
  v6 = [v5 fetchedObjects];

  if ([v6 count])
  {
    fetchQueue = self->_fetchQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke_2;
    v10[3] = &unk_1E774A0E0;
    v10[4] = self;
    v11 = v6;
    v12 = v4;
    dispatch_async(fetchQueue, v10);

    v8 = v11;
LABEL_5:

    goto LABEL_6;
  }

  if (v4)
  {
    v9 = [off_1E7721878 sharedScheduler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke;
    v13[3] = &unk_1E774C250;
    v14 = v4;
    [v9 dispatchInMainTransaction:v13];

    v8 = v14;
    goto LABEL_5;
  }

LABEL_6:
}

void __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isForOneUp];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  }

  else
  {
    v5 = [PXPeopleWidgetUtilities verifiedPersonsFromMergeCandidatesForPersons:v3];
    v4 = [v5 mutableCopy];
  }

  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v22 + 1) + 8 * v11) localIdentifier];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v13 = [v7 allObjects];
  v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_221];
  v15 = [v14 mutableCopy];

  v16 = [*(a1 + 32) filterPredicate];
  if (v16)
  {
    [v15 filterUsingPredicate:v16];
  }

  v17 = *(a1 + 32);
  v18 = [v15 copy];
  [v17 setMembers:v18];

  v19 = [off_1E7721878 sharedScheduler];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke_4;
  v20[3] = &unk_1E774C2F0;
  v20[4] = *(a1 + 32);
  v21 = *(a1 + 48);
  [v19 dispatchInMainTransaction:v20];
}

void __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 peopleDataSourceMembersChanged:*(a1 + 32)];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }
}

uint64_t __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 name];
  v7 = [v6 length];

  v8 = [v5 name];
  v9 = [v8 length];

  if (v7 && !v9)
  {
    goto LABEL_3;
  }

  if (!v7 && v9)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  v12 = [v4 faceCount];
  v13 = [v5 faceCount];
  if (v12 <= v13)
  {
    if (v12 >= v13)
    {
      v14 = [v4 localIdentifier];
      v15 = [v5 localIdentifier];
      v10 = [v14 compare:v15];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_3:
  v10 = -1;
LABEL_7:

  return v10;
}

- (void)prefetchThumbnailsForTargetSize:(CGSize)a3 displayScale:(double)a4 maxFetchCount:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  if (![(PXPeopleWidgetDataSource *)self prefetchingStarted])
  {
    [(PXPeopleWidgetDataSource *)self setPrefetchingStarted:1];
    fetchQueue = self->_fetchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PXPeopleWidgetDataSource_prefetchThumbnailsForTargetSize_displayScale_maxFetchCount___block_invoke;
    block[3] = &unk_1E7747168;
    block[4] = self;
    *&block[5] = a4;
    *&block[6] = width;
    *&block[7] = height;
    block[8] = a5;
    dispatch_async(fetchQueue, block);
  }
}

void __87__PXPeopleWidgetDataSource_prefetchThumbnailsForTargetSize_displayScale_maxFetchCount___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[PXPeopleFaceCropManager sharedManager];
  v3 = *(a1 + 40);
  if (v3 < 1.0)
  {
    v4 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v4 scale];
    v3 = v5;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) members];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v14 = 0;
    v9 = *v16;
LABEL_5:
    v10 = 0;
    v11 = v14 + 1;
    v14 += v8;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:*(*(&v15 + 1) + 8 * v10) targetSize:*(a1 + 48) displayScale:*(a1 + 56), v3];
      [v2 requestFaceCropForOptions:v12 resultHandler:&__block_literal_global_103600];
      v13 = *(a1 + 64);

      if (v11 >= v13)
      {
        break;
      }

      ++v10;
      ++v11;
      if (v8 == v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (id)titleAtIndex:(unint64_t)a3
{
  v5 = [(PXPeopleDataSource *)self memberAtIndex:a3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v5 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPeopleWidgetDataSource.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self memberAtIndex:index]", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXPeopleWidgetDataSource.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self memberAtIndex:index]", v13}];
  }

LABEL_3:
  v6 = [v5 name];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F1741150;
  }

  v9 = v8;

  return v8;
}

- (void)imageCacheDidChanged:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"PXPeopleFaceCropManagerInvalidatedPersonLocalIdentifiersKey"];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXPeopleWidgetDataSource_imageCacheDidChanged___block_invoke;
  aBlock[3] = &unk_1E77389A8;
  v7 = v6;
  v20 = v7;
  v21 = &v22;
  v8 = _Block_copy(aBlock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(PXPeopleDataSource *)self members];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v10)
  {
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v8[2](v8, *(*(&v15 + 1) + 8 * v12));
      if (v23[3])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(v23 + 24) == 1)
  {
    v13 = [(PXPeopleDataSource *)self reloadBlock];
    v14 = v13[2]();
    [(PXPeopleDataSource *)self setObjects:v14];

    [(PXPeopleWidgetDataSource *)self loadMembersWithCompletionBlock:0];
  }

  _Block_object_dispose(&v22, 8);
}

void __49__PXPeopleWidgetDataSource_imageCacheDidChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 localIdentifier];
  LODWORD(v3) = [v3 containsObject:v4];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v7 = [(PXPeopleDataSource *)self objects];
  v5 = [v4 changeDetailsForFetchResult:?];

  if (v5)
  {
    v6 = [v5 fetchResultAfterChanges];
    [(PXPeopleDataSource *)self setObjects:v6];
    [(PXPeopleWidgetDataSource *)self loadMembersWithCompletionBlock:0];
  }
}

- (void)stopListeningForChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(PXPeopleWidgetDataSource *)self photoLibrary];
  [v4 unregisterChangeObserver:self];
}

- (void)startListeningForChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[PXPeopleFaceCropManager sharedManager];
  [v3 addObserver:self selector:sel_imageCacheDidChanged_ name:@"PXPeopleFaceCropManagerDidInvalidateCacheNotification" object:v4];

  v5 = [(PXPeopleWidgetDataSource *)self photoLibrary];
  [v5 registerChangeObserver:self];
}

- (void)dealloc
{
  [(PXPeopleWidgetDataSource *)self stopListeningForChanges];
  v3.receiver = self;
  v3.super_class = PXPeopleWidgetDataSource;
  [(PXPeopleDataSource *)&v3 dealloc];
}

- (PXPeopleWidgetDataSource)initWithPhotoLibrary:(id)a3 name:(id)a4 objectsReloadBlock:(id)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = PXPeopleWidgetDataSource;
  v10 = [(PXPeopleDataSource *)&v16 initWithName:a4 objectsReloadBlock:a5 asynchronousLoad:1 callbackDelegate:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibrary, a3);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.photos.peopleWidgetFetchQueue", v12);
    fetchQueue = v11->_fetchQueue;
    v11->_fetchQueue = v13;

    v11->_prefetchingStarted = 0;
  }

  return v11;
}

@end