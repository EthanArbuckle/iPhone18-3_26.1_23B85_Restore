@interface PXPeopleWidgetDataSource
- (PXPeopleWidgetDataSource)initWithPhotoLibrary:(id)library name:(id)name objectsReloadBlock:(id)block;
- (id)titleAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)imageCacheDidChanged:(id)changed;
- (void)loadMembersWithCompletionBlock:(id)block;
- (void)photoLibraryDidChange:(id)change;
- (void)prefetchThumbnailsForTargetSize:(CGSize)size displayScale:(double)scale maxFetchCount:(unint64_t)count;
- (void)startListeningForChanges;
- (void)stopListeningForChanges;
@end

@implementation PXPeopleWidgetDataSource

- (void)loadMembersWithCompletionBlock:(id)block
{
  blockCopy = block;
  objects = [(PXPeopleDataSource *)self objects];
  fetchedObjects = [objects fetchedObjects];

  if ([fetchedObjects count])
  {
    fetchQueue = self->_fetchQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke_2;
    v10[3] = &unk_1E774A0E0;
    v10[4] = self;
    v11 = fetchedObjects;
    v12 = blockCopy;
    dispatch_async(fetchQueue, v10);

    v8 = v11;
LABEL_5:

    goto LABEL_6;
  }

  if (blockCopy)
  {
    sharedScheduler = [off_1E7721878 sharedScheduler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__PXPeopleWidgetDataSource_loadMembersWithCompletionBlock___block_invoke;
    v13[3] = &unk_1E774C250;
    v14 = blockCopy;
    [sharedScheduler dispatchInMainTransaction:v13];

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

- (void)prefetchThumbnailsForTargetSize:(CGSize)size displayScale:(double)scale maxFetchCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  if (![(PXPeopleWidgetDataSource *)self prefetchingStarted])
  {
    [(PXPeopleWidgetDataSource *)self setPrefetchingStarted:1];
    fetchQueue = self->_fetchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PXPeopleWidgetDataSource_prefetchThumbnailsForTargetSize_displayScale_maxFetchCount___block_invoke;
    block[3] = &unk_1E7747168;
    block[4] = self;
    *&block[5] = scale;
    *&block[6] = width;
    *&block[7] = height;
    block[8] = count;
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

- (id)titleAtIndex:(unint64_t)index
{
  v5 = [(PXPeopleDataSource *)self memberAtIndex:index];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [v5 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleWidgetDataSource.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self memberAtIndex:index]", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleWidgetDataSource.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self memberAtIndex:index]", v13}];
  }

LABEL_3:
  name = [v5 name];
  v7 = name;
  if (name)
  {
    v8 = name;
  }

  else
  {
    v8 = &stru_1F1741150;
  }

  v9 = v8;

  return v8;
}

- (void)imageCacheDidChanged:(id)changed
{
  v27 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:@"PXPeopleFaceCropManagerInvalidatedPersonLocalIdentifiersKey"];

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
  members = [(PXPeopleDataSource *)self members];
  v10 = [members countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v10)
  {
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(members);
      }

      v8[2](v8, *(*(&v15 + 1) + 8 * v12));
      if (v23[3])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [members countByEnumeratingWithState:&v15 objects:v26 count:16];
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
    reloadBlock = [(PXPeopleDataSource *)self reloadBlock];
    v14 = reloadBlock[2]();
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

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  objects = [(PXPeopleDataSource *)self objects];
  v5 = [changeCopy changeDetailsForFetchResult:?];

  if (v5)
  {
    fetchResultAfterChanges = [v5 fetchResultAfterChanges];
    [(PXPeopleDataSource *)self setObjects:fetchResultAfterChanges];
    [(PXPeopleWidgetDataSource *)self loadMembersWithCompletionBlock:0];
  }
}

- (void)stopListeningForChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  photoLibrary = [(PXPeopleWidgetDataSource *)self photoLibrary];
  [photoLibrary unregisterChangeObserver:self];
}

- (void)startListeningForChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[PXPeopleFaceCropManager sharedManager];
  [defaultCenter addObserver:self selector:sel_imageCacheDidChanged_ name:@"PXPeopleFaceCropManagerDidInvalidateCacheNotification" object:v4];

  photoLibrary = [(PXPeopleWidgetDataSource *)self photoLibrary];
  [photoLibrary registerChangeObserver:self];
}

- (void)dealloc
{
  [(PXPeopleWidgetDataSource *)self stopListeningForChanges];
  v3.receiver = self;
  v3.super_class = PXPeopleWidgetDataSource;
  [(PXPeopleDataSource *)&v3 dealloc];
}

- (PXPeopleWidgetDataSource)initWithPhotoLibrary:(id)library name:(id)name objectsReloadBlock:(id)block
{
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = PXPeopleWidgetDataSource;
  v10 = [(PXPeopleDataSource *)&v16 initWithName:name objectsReloadBlock:block asynchronousLoad:1 callbackDelegate:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibrary, library);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.photos.peopleWidgetFetchQueue", v12);
    fetchQueue = v11->_fetchQueue;
    v11->_fetchQueue = v13;

    v11->_prefetchingStarted = 0;
  }

  return v11;
}

@end