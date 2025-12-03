@interface PXImportSourcesManager
+ (PXImportSourcesManager)sharedController;
- (NSArray)importSources;
- (PXImportSourcesManager)init;
- (void)_notifyObserversDidAddImportSource:(id)source;
- (void)_notifyObserversDidRemoveImportSource:(id)source;
- (void)_notifyObserversDidUpdateImportSource:(id)source;
- (void)_updateImportURLSource:(id)source;
- (void)importController:(id)controller addedImportSource:(id)source;
- (void)importController:(id)controller failedToAddImportSource:(id)source exceptions:(id)exceptions;
- (void)importController:(id)controller removedImportSource:(id)source;
@end

@implementation PXImportSourcesManager

- (void)importController:(id)controller failedToAddImportSource:(id)source exceptions:(id)exceptions
{
  sourceCopy = source;
  exceptionsCopy = exceptions;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PXImportSourcesManager_importController_failedToAddImportSource_exceptions___block_invoke;
  v11[3] = &unk_1E7731D60;
  v11[4] = self;
  v12 = sourceCopy;
  v13 = exceptionsCopy;
  v9 = exceptionsCopy;
  v10 = sourceCopy;
  [(PXImportSourcesManager *)self enumerateObserversUsingBlock:v11];
}

void __78__PXImportSourcesManager_importController_failedToAddImportSource_exceptions___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 importSourcesManager:a1[4] didFailToAddImportSource:a1[5] exceptions:a1[6]];
  }
}

- (void)importController:(id)controller removedImportSource:(id)source
{
  sourceCopy = source;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PXImportSourcesManager_importController_removedImportSource___block_invoke;
  v7[3] = &unk_1E77498F8;
  v8 = sourceCopy;
  selfCopy = self;
  v6 = sourceCopy;
  [(PXImportSourcesManager *)self performChanges:v7];
}

uint64_t __63__PXImportSourcesManager_importController_removedImportSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCamera];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3[12] removeObject:*(a1 + 32)];
    [*(a1 + 32) removeImportSourceObserver:*(a1 + 40)];
    [*(a1 + 40) _notifyObserversDidRemoveImportSource:*(a1 + 32)];
    v4 = *(a1 + 40);

    return [v4 signalChange:1];
  }

  else
  {

    return [v3 _updateImportURLSource:0];
  }
}

- (void)importController:(id)controller addedImportSource:(id)source
{
  sourceCopy = source;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PXImportSourcesManager_importController_addedImportSource___block_invoke;
  v7[3] = &unk_1E77498F8;
  v8 = sourceCopy;
  selfCopy = self;
  v6 = sourceCopy;
  [(PXImportSourcesManager *)self performChanges:v7];
}

uint64_t __61__PXImportSourcesManager_importController_addedImportSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCamera];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3[12] addObject:*(a1 + 32)];
    [*(a1 + 32) addImportSourceObserver:*(a1 + 40)];
    [*(a1 + 40) _notifyObserversDidAddImportSource:*(a1 + 32)];
    v4 = *(a1 + 40);

    return [v4 signalChange:1];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v3 _updateImportURLSource:v6];
  }
}

- (void)_updateImportURLSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (self->_URLImportSource != sourceCopy && ([(PHImportSource *)sourceCopy isEqual:?]& 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__PXImportSourcesManager__updateImportURLSource___block_invoke;
    v6[3] = &unk_1E77498F8;
    v6[4] = self;
    v7 = v5;
    [(PXImportSourcesManager *)self performChanges:v6];
  }
}

void __49__PXImportSourcesManager__updateImportURLSource___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  if (v4)
  {
    v5 = v4;
    [*(*(a1 + 32) + 96) removeObject:*(*(a1 + 32) + 104)];
    v3 = *(a1 + 32);
  }

  objc_storeStrong((v3 + 104), *(a1 + 40));
  v6 = *(a1 + 32);
  if (v6[13])
  {
    v7 = *(a1 + 40);
    [*(*(a1 + 32) + 96) addObject:*(*(a1 + 32) + 104)];
    v6 = *(a1 + 32);
    if (v7)
    {
      [v6 _notifyObserversDidAddImportSource:v7];
      v6 = *(a1 + 32);
    }

    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (v4)
    {
LABEL_7:
      [v6 _notifyObserversDidRemoveImportSource:v4];
      v6 = *(a1 + 32);
    }
  }

  [v6 signalChange:1];
}

- (NSArray)importSources
{
  v2 = [(NSMutableArray *)self->_importSources copy];

  return v2;
}

- (void)_notifyObserversDidRemoveImportSource:(id)source
{
  sourceCopy = source;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__PXImportSourcesManager__notifyObserversDidRemoveImportSource___block_invoke;
  v6[3] = &unk_1E7731D38;
  v6[4] = self;
  v7 = sourceCopy;
  v5 = sourceCopy;
  [(PXImportSourcesManager *)self enumerateObserversUsingBlock:v6];
}

void __64__PXImportSourcesManager__notifyObserversDidRemoveImportSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 importSourcesManager:*(a1 + 32) didRemoveImportSource:*(a1 + 40)];
  }
}

- (void)_notifyObserversDidUpdateImportSource:(id)source
{
  sourceCopy = source;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__PXImportSourcesManager__notifyObserversDidUpdateImportSource___block_invoke;
  v6[3] = &unk_1E7731D38;
  v6[4] = self;
  v7 = sourceCopy;
  v5 = sourceCopy;
  [(PXImportSourcesManager *)self enumerateObserversUsingBlock:v6];
}

void __64__PXImportSourcesManager__notifyObserversDidUpdateImportSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 importSourcesManager:*(a1 + 32) didUpdateImportSource:*(a1 + 40)];
  }
}

- (void)_notifyObserversDidAddImportSource:(id)source
{
  sourceCopy = source;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PXImportSourcesManager__notifyObserversDidAddImportSource___block_invoke;
  v6[3] = &unk_1E7731D38;
  v6[4] = self;
  v7 = sourceCopy;
  v5 = sourceCopy;
  [(PXImportSourcesManager *)self enumerateObserversUsingBlock:v6];
}

void __61__PXImportSourcesManager__notifyObserversDidAddImportSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 importSourcesManager:*(a1 + 32) didAddImportSource:*(a1 + 40)];
  }
}

- (PXImportSourcesManager)init
{
  v8.receiver = self;
  v8.super_class = PXImportSourcesManager;
  v2 = [(PXImportSourcesManager *)&v8 init];
  if (v2)
  {
    mEMORY[0x1E6978878] = [MEMORY[0x1E6978878] sharedInstance];
    importController = v2->_importController;
    v2->_importController = mEMORY[0x1E6978878];

    [(PHImportController *)v2->_importController enableDeviceImport];
    v5 = objc_opt_new();
    importSources = v2->_importSources;
    v2->_importSources = v5;

    [(PHImportController *)v2->_importController addImportControllerObserver:v2];
  }

  return v2;
}

+ (PXImportSourcesManager)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXImportSourcesManager_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken_47845 != -1)
  {
    dispatch_once(&sharedController_onceToken_47845, block);
  }

  v2 = sharedController_sharedController;

  return v2;
}

void __42__PXImportSourcesManager_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_sharedController;
  sharedController_sharedController = v1;
}

@end