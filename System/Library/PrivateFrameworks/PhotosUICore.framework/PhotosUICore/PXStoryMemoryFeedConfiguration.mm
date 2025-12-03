@interface PXStoryMemoryFeedConfiguration
+ (id)_photoKitMediaProviderWithPhotoLibrary:(id)library;
+ (void)_handleContentSeenForDataSource:(id)source;
- (PXStoryMemoryFeedConfiguration)initWithDataSourceManagerPromise:(id)promise layoutKind:(int64_t)kind photoLibrary:(id)library viewControllerSetupBlock:(id)block;
- (PXStoryMemoryFeedConfiguration)initWithMemoriesInPhotoLibrary:(id)library layoutKind:(int64_t)kind viewControllerSetupBlock:(id)block visibleRectChangeObserver:(id)observer;
- (PXStoryMemoryFeedConfiguration)initWithSyntheticSectionCount:(int64_t)count numberOfItemsPerSection:(int64_t)section photoLibrary:(id)library layoutKind:(int64_t)kind;
- (id)_defaultSpecManagerWithLayoutKind:(int64_t)kind extendedTraitCollection:(id)collection;
- (id)copyWithLayoutKind:(int64_t)kind;
- (id)objectReferenceForDestination:(id)destination;
- (void)handleContentSeen;
@end

@implementation PXStoryMemoryFeedConfiguration

- (id)_defaultSpecManagerWithLayoutKind:(int64_t)kind extendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v9 = collectionCopy;
  if (kind == 1)
  {
    if (!collectionCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedConfiguration.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"extendedTraitCollection != nil"}];
    }

    v4 = [[PXStoryMemoryFeedViewLayoutSpecManager alloc] initWithLayoutKind:1 extendedTraitCollection:v9];
  }

  else if (!kind)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedConfiguration.m" lineNumber:174 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return v4;
}

- (void)handleContentSeen
{
  dataSourceManager = [(PXFeedConfiguration *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  if (handleContentSeen_onceToken != -1)
  {
    dispatch_once(&handleContentSeen_onceToken, &__block_literal_global_207_194622);
  }

  v4 = handleContentSeen_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXStoryMemoryFeedConfiguration_handleContentSeen__block_invoke_2;
  block[3] = &unk_1E774C648;
  v7 = dataSource;
  v5 = dataSource;
  dispatch_async(v4, block);
}

void __51__PXStoryMemoryFeedConfiguration_handleContentSeen__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("PXStoryMemoryFeed.handleContentSeen", v0);
  v2 = handleContentSeen_queue;
  handleContentSeen_queue = v1;
}

- (id)objectReferenceForDestination:(id)destination
{
  destinationCopy = destination;
  dataSourceManager = [(PXFeedConfiguration *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v7 = PXStoryObjectReferenceForDestinationInMemoryDataSource(destinationCopy, dataSource);

  return v7;
}

- (id)copyWithLayoutKind:(int64_t)kind
{
  v4 = [(PXStoryMemoryFeedConfiguration *)self copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryMemoryFeedConfiguration_copyWithLayoutKind___block_invoke;
  v6[3] = &__block_descriptor_40_e99___PXFeedViewLayoutSpecManager_24__0__PXStoryMemoryFeedConfiguration_8__PXExtendedTraitCollection_16l;
  v6[4] = kind;
  [v4 setSpecManagerPromise:v6];
  return v4;
}

- (PXStoryMemoryFeedConfiguration)initWithDataSourceManagerPromise:(id)promise layoutKind:(int64_t)kind photoLibrary:(id)library viewControllerSetupBlock:(id)block
{
  promiseCopy = promise;
  libraryCopy = library;
  blockCopy = block;
  if (libraryCopy && (+[PXStorySettings sharedInstance](PXStorySettings, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 useFeedPlaceholderItems], v13, !v14))
  {
    v15 = objc_alloc_init(PXStoryMemoryFeedItemLayoutFactory);
    [(PXStoryMemoryFeedItemLayoutFactory *)v15 setLayoutKind:kind];
  }

  else
  {
    v15 = objc_alloc_init(PXFeedDummyItemLayoutFactory);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __116__PXStoryMemoryFeedConfiguration_initWithDataSourceManagerPromise_layoutKind_photoLibrary_viewControllerSetupBlock___block_invoke;
  v23[3] = &__block_descriptor_40_e99___PXFeedViewLayoutSpecManager_24__0__PXStoryMemoryFeedConfiguration_8__PXExtendedTraitCollection_16l;
  v23[4] = kind;
  v22.receiver = self;
  v22.super_class = PXStoryMemoryFeedConfiguration;
  v16 = [(PXFeedConfiguration *)&v22 initWithDataSourceManagerPromise:promiseCopy specManagerPromise:v23 itemLayoutFactory:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_photoLibrary, library);
    v18 = [PXStoryMemoryFeedConfiguration _photoKitMediaProviderWithPhotoLibrary:libraryCopy];
    [(PXFeedConfiguration *)v17 setMediaProvider:v18];

    v19 = [[PXStoryMemoryFeedActionPerformer alloc] initWithViewControllerSetupBlock:blockCopy];
    [(PXFeedConfiguration *)v17 setActionPerformer:v19];
    v20 = objc_alloc_init(PXStoryMemoryFeedPlaceholderFactory);
    [(PXFeedConfiguration *)v17 setPlaceholderFactory:v20];
  }

  return v17;
}

- (PXStoryMemoryFeedConfiguration)initWithSyntheticSectionCount:(int64_t)count numberOfItemsPerSection:(int64_t)section photoLibrary:(id)library layoutKind:(int64_t)kind
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __112__PXStoryMemoryFeedConfiguration_initWithSyntheticSectionCount_numberOfItemsPerSection_photoLibrary_layoutKind___block_invoke;
  v10[3] = &__block_descriptor_48_e70___PXSectionedDataSourceManager_16__0__PXStoryMemoryFeedConfiguration_8l;
  v10[4] = count;
  v10[5] = section;
  v7 = [(PXStoryMemoryFeedConfiguration *)self initWithDataSourceManagerPromise:v10 layoutKind:kind photoLibrary:library viewControllerSetupBlock:0];
  v8 = v7;
  if (v7)
  {
    [(PXFeedConfiguration *)v7 setShouldEmbedContentLayout:[(PXStoryMemoryFeedConfiguration *)v7 _shouldEmbedContentLayoutForLayoutKind:kind]];
  }

  return v8;
}

PXFeedSyntheticDataSourceManager *__112__PXStoryMemoryFeedConfiguration_initWithSyntheticSectionCount_numberOfItemsPerSection_photoLibrary_layoutKind___block_invoke(uint64_t a1)
{
  v1 = [[PXFeedSyntheticDataSourceManager alloc] initWithNumberOfSections:*(a1 + 32) numberOfItemsPerSection:*(a1 + 40)];

  return v1;
}

- (PXStoryMemoryFeedConfiguration)initWithMemoriesInPhotoLibrary:(id)library layoutKind:(int64_t)kind viewControllerSetupBlock:(id)block visibleRectChangeObserver:(id)observer
{
  libraryCopy = library;
  observerCopy = observer;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __127__PXStoryMemoryFeedConfiguration_initWithMemoriesInPhotoLibrary_layoutKind_viewControllerSetupBlock_visibleRectChangeObserver___block_invoke;
  v17[3] = &unk_1E7742478;
  v12 = libraryCopy;
  v18 = v12;
  v13 = [(PXStoryMemoryFeedConfiguration *)self initWithDataSourceManagerPromise:v17 layoutKind:kind photoLibrary:v12 viewControllerSetupBlock:block];
  v14 = v13;
  if (v13)
  {
    [(PXFeedConfiguration *)v13 setChromeControllerPromise:&__block_literal_global_191_194642];
    [(PXFeedConfiguration *)v14 setShouldEmbedContentLayout:[(PXStoryMemoryFeedConfiguration *)v14 _shouldEmbedContentLayoutForLayoutKind:kind]];
    v15 = [observerCopy copy];
    [(PXFeedConfiguration *)v14 setVisibleRectChangeObserver:v15];
  }

  return v14;
}

PXStoryMemoryFeedDataSourceManager *__127__PXStoryMemoryFeedConfiguration_initWithMemoriesInPhotoLibrary_layoutKind_viewControllerSetupBlock_visibleRectChangeObserver___block_invoke(uint64_t a1)
{
  v1 = [[PXStoryMemoryFeedDataSourceManager alloc] initWithPhotoLibrary:*(a1 + 32)];
  [(PXStoryMemoryFeedDataSourceManager *)v1 performChanges:&__block_literal_global_194647];

  return v1;
}

PXStoryMemoryFeedChromeController *__127__PXStoryMemoryFeedConfiguration_initWithMemoriesInPhotoLibrary_layoutKind_viewControllerSetupBlock_visibleRectChangeObserver___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[PXStoryMemoryFeedChromeController alloc] initWithViewController:v5 dataSourceManager:v4];

  return v6;
}

+ (id)_photoKitMediaProviderWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = objc_alloc_init(MEMORY[0x1E6978860]);
  if (!libraryCopy)
  {
    libraryCopy = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  }

  v5 = [[PXPhotoKitUIMediaProvider alloc] initWithImageManager:v4 library:libraryCopy];

  return v5;
}

+ (void)_handleContentSeenForDataSource:(id)source
{
  v21 = *MEMORY[0x1E69E9840];
  allItemsEnumerator = [source allItemsEnumerator];
  if ([allItemsEnumerator count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allItemsEnumerator, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = allItemsEnumerator;
    v5 = allItemsEnumerator;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            assetCollection = [v10 assetCollection];
            [v4 addObject:assetCollection];
          }

          else
          {
            assetCollection = PLStoryGetLog();
            if (os_log_type_enabled(assetCollection, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v19 = v10;
              _os_log_impl(&dword_1A3C1C000, assetCollection, OS_LOG_TYPE_ERROR, "Incorrect dataSource object. Expect PXMemoryInfo got: %@", buf, 0xCu);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = +[PXMemoriesSeenHelper defaultHelper];
    [v12 clearAnyPendingNotificationsFromMemories:v4];
    [v12 clearAnyPendingStateFromMemories:v4];

    allItemsEnumerator = v13;
  }
}

@end