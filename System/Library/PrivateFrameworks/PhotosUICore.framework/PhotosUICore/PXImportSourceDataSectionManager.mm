@interface PXImportSourceDataSectionManager
- (PXImportSourceDataSectionManager)initWithChildDataSectionManagers:(id)managers;
- (PXImportSourceDataSectionManager)initWithPhotoLibrary:(id)library;
- (id)auxiliaryObjectForKey:(id)key dataSectionObject:(id)object hintIndex:(int64_t)index;
- (id)createDataSection;
- (void)importSourcesManager:(id)manager didUpdateImportSource:(id)source;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXImportSourceDataSectionManager

- (void)importSourcesManager:(id)manager didUpdateImportSource:(id)source
{
  sourceCopy = source;
  importSourcesManager = [(PXImportSourceDataSectionManager *)self importSourcesManager];
  importSources = [importSourcesManager importSources];

  v7 = [importSources indexOfObject:sourceCopy];
  if (![(PXImportSourceDataSectionManager *)self limitToSingleImportSource87746235]|| v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
    v9 = [off_1E7721450 changeDetailsWithChangedIndexes:v8];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v9];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ((change & 1) != 0 && PXImportSourcesManagerObserverContext == context)
  {
    importSourcesManager = [(PXImportSourceDataSectionManager *)self importSourcesManager];
    importSources = [importSourcesManager importSources];

    if ([(PXImportSourceDataSectionManager *)self limitToSingleImportSource87746235])
    {
      firstObject = [importSources firstObject];

      if (firstObject)
      {
        firstObject2 = [importSources firstObject];
        v13[0] = firstObject2;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

        importSources = v10;
      }
    }

    importSources2 = [(PXImportSourceDataSectionManager *)self importSources];
    v12 = [off_1E7721450 changeDetailsFromArray:importSources2 toArray:importSources changedObjects:MEMORY[0x1E695E0F0]];

    [(PXImportSourceDataSectionManager *)self setImportSources:importSources];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v12];
  }
}

- (id)auxiliaryObjectForKey:(id)key dataSectionObject:(id)object hintIndex:(int64_t)index
{
  keyCopy = key;
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [objectCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportSourceDataSectionManager.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"dataSectionObject", v17, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportSourceDataSectionManager.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"dataSectionObject", v17}];
  }

LABEL_3:
  if ([keyCopy isEqualToString:@"PXNavigationListItemKeyAsset"])
  {
    v11 = [PXImageAsset alloc];
    image = [objectCopy image];
    v13 = [(PXImageAsset *)v11 initWithImage:image];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PXImportSourceDataSectionManager;
    v13 = [(PXDataSectionManager *)&v20 auxiliaryObjectForKey:keyCopy dataSectionObject:objectCopy hintIndex:index];
  }

  return v13;
}

- (id)createDataSection
{
  [(PXImportSourceDataSectionManager *)self importSources];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

PXImportSourceNavigationListItem *__53__PXImportSourceDataSectionManager_createDataSection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PXImportSourceNavigationListItem alloc];
  v5 = [*(a1 + 32) photoLibrary];
  v6 = [(PXImportSourceNavigationListItem *)v4 initWithImportSource:v3 photoLibrary:v5];

  return v6;
}

- (PXImportSourceDataSectionManager)initWithChildDataSectionManagers:(id)managers
{
  managersCopy = managers;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportSourceDataSectionManager.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXImportSourceDataSectionManager initWithChildDataSectionManagers:]"}];

  abort();
}

- (PXImportSourceDataSectionManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = PXImportSourceDataSectionManager;
  v6 = [(PXDataSectionManager *)&v13 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = +[PXImportSourcesManager sharedController];
    importSourcesManager = v7->_importSourcesManager;
    v7->_importSourcesManager = v8;

    [(PXImportSourcesManager *)v7->_importSourcesManager registerChangeObserver:v7 context:PXImportSourcesManagerObserverContext];
    importSources = [(PXImportSourcesManager *)v7->_importSourcesManager importSources];
    importSources = v7->_importSources;
    v7->_importSources = importSources;

    v7->_limitToSingleImportSource87746235 = 1;
  }

  return v7;
}

@end