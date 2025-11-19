@interface PXImportSourceDataSectionManager
- (PXImportSourceDataSectionManager)initWithChildDataSectionManagers:(id)a3;
- (PXImportSourceDataSectionManager)initWithPhotoLibrary:(id)a3;
- (id)auxiliaryObjectForKey:(id)a3 dataSectionObject:(id)a4 hintIndex:(int64_t)a5;
- (id)createDataSection;
- (void)importSourcesManager:(id)a3 didUpdateImportSource:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXImportSourceDataSectionManager

- (void)importSourcesManager:(id)a3 didUpdateImportSource:(id)a4
{
  v5 = a4;
  v6 = [(PXImportSourceDataSectionManager *)self importSourcesManager];
  v10 = [v6 importSources];

  v7 = [v10 indexOfObject:v5];
  if (![(PXImportSourceDataSectionManager *)self limitToSingleImportSource87746235]|| v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
    v9 = [off_1E7721450 changeDetailsWithChangedIndexes:v8];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v9];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 1) != 0 && PXImportSourcesManagerObserverContext == a5)
  {
    v6 = [(PXImportSourceDataSectionManager *)self importSourcesManager];
    v7 = [v6 importSources];

    if ([(PXImportSourceDataSectionManager *)self limitToSingleImportSource87746235])
    {
      v8 = [v7 firstObject];

      if (v8)
      {
        v9 = [v7 firstObject];
        v13[0] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

        v7 = v10;
      }
    }

    v11 = [(PXImportSourceDataSectionManager *)self importSources];
    v12 = [off_1E7721450 changeDetailsFromArray:v11 toArray:v7 changedObjects:MEMORY[0x1E695E0F0]];

    [(PXImportSourceDataSectionManager *)self setImportSources:v7];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v12];
  }
}

- (id)auxiliaryObjectForKey:(id)a3 dataSectionObject:(id)a4 hintIndex:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v19 = [v10 px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PXImportSourceDataSectionManager.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"dataSectionObject", v17, v19}];
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PXImportSourceDataSectionManager.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"dataSectionObject", v17}];
  }

LABEL_3:
  if ([v9 isEqualToString:@"PXNavigationListItemKeyAsset"])
  {
    v11 = [PXImageAsset alloc];
    v12 = [v10 image];
    v13 = [(PXImageAsset *)v11 initWithImage:v12];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PXImportSourceDataSectionManager;
    v13 = [(PXDataSectionManager *)&v20 auxiliaryObjectForKey:v9 dataSectionObject:v10 hintIndex:a5];
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

- (PXImportSourceDataSectionManager)initWithChildDataSectionManagers:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXImportSourceDataSectionManager.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXImportSourceDataSectionManager initWithChildDataSectionManagers:]"}];

  abort();
}

- (PXImportSourceDataSectionManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXImportSourceDataSectionManager;
  v6 = [(PXDataSectionManager *)&v13 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = +[PXImportSourcesManager sharedController];
    importSourcesManager = v7->_importSourcesManager;
    v7->_importSourcesManager = v8;

    [(PXImportSourcesManager *)v7->_importSourcesManager registerChangeObserver:v7 context:PXImportSourcesManagerObserverContext];
    v10 = [(PXImportSourcesManager *)v7->_importSourcesManager importSources];
    importSources = v7->_importSources;
    v7->_importSources = v10;

    v7->_limitToSingleImportSource87746235 = 1;
  }

  return v7;
}

@end