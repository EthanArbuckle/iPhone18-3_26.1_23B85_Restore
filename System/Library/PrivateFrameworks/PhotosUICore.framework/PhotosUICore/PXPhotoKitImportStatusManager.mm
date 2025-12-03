@interface PXPhotoKitImportStatusManager
- (id)initAllowingSimulation:(BOOL)simulation;
- (int64_t)_simulatedStateForAsset:(id)asset;
- (int64_t)importStateForAsset:(id)asset;
- (void)_notifySimulationObserversForAssetReference:(id)reference;
- (void)addAssetImportStatusObserver:(id)observer;
- (void)beginSimulatedImportForAssetReference:(id)reference;
- (void)completeSimulatedImportForAssetReference:(id)reference withSuccess:(BOOL)success;
- (void)removeAssetImportStatusObserver:(id)observer;
@end

@implementation PXPhotoKitImportStatusManager

- (void)removeAssetImportStatusObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:119 description:{@"%s must be called on the main thread", "-[PXPhotoKitImportStatusManager removeAssetImportStatusObserver:]"}];
  }

  [(NSHashTable *)self->_statusObservers removeObject:observerCopy];
}

- (void)addAssetImportStatusObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:114 description:{@"%s must be called on the main thread", "-[PXPhotoKitImportStatusManager addAssetImportStatusObserver:]"}];
  }

  [(NSHashTable *)self->_statusObservers addObject:observerCopy];
}

- (int64_t)_simulatedStateForAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:106 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v12}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [assetCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:106 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v12, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  localIdentifier = [assetCopy localIdentifier];
  v7 = [(NSMutableDictionary *)self->_simulatedStateByAssetID objectForKeyedSubscript:localIdentifier];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (void)completeSimulatedImportForAssetReference:(id)reference withSuccess:(BOOL)success
{
  successCopy = success;
  referenceCopy = reference;
  v17 = referenceCopy;
  if (!self->_supportsStateSimulation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"_supportsStateSimulation"}];

    referenceCopy = v17;
  }

  asset = [referenceCopy asset];
  if (asset)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", v14}];
  }

LABEL_5:
  localIdentifier = [asset localIdentifier];
  if (successCopy)
  {
    v10 = &unk_1F1909F70;
  }

  else
  {
    v10 = &unk_1F1909F88;
  }

  [(NSMutableDictionary *)self->_simulatedStateByAssetID setObject:v10 forKeyedSubscript:localIdentifier];
  [(PXPhotoKitImportStatusManager *)self _notifySimulationObserversForAssetReference:v17];
}

- (void)beginSimulatedImportForAssetReference:(id)reference
{
  referenceCopy = reference;
  v14 = referenceCopy;
  if (!self->_supportsStateSimulation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"_supportsStateSimulation"}];

    referenceCopy = v14;
  }

  asset = [referenceCopy asset];
  if (asset)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", v11}];
  }

LABEL_5:
  localIdentifier = [asset localIdentifier];
  [(NSMutableDictionary *)self->_simulatedStateByAssetID setObject:&unk_1F1909F58 forKeyedSubscript:localIdentifier];
  [(PXPhotoKitImportStatusManager *)self _notifySimulationObserversForAssetReference:v14];
}

- (void)_notifySimulationObserversForAssetReference:(id)reference
{
  v19 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:75 description:{@"%s must be called on the main thread", "-[PXPhotoKitImportStatusManager _notifySimulationObserversForAssetReference:]"}];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_statusObservers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        [v11 assetImportStatusManager:self didChangeStatusForAssetReference:referenceCopy];
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (int64_t)importStateForAsset:(id)asset
{
  assetCopy = asset;
  if (![(PXPhotoKitImportStatusManager *)self supportsStateSimulation])
  {
    if (objc_opt_respondsToSelector())
    {
      destinationAssetCopyProperties = [assetCopy destinationAssetCopyProperties];
      v5 = destinationAssetCopyProperties;
      if (!destinationAssetCopyProperties)
      {
        goto LABEL_8;
      }

      destinationAssetCopyState = [destinationAssetCopyProperties destinationAssetCopyState];

      if ((destinationAssetCopyState + 1) <= 3)
      {
        v5 = qword_1A5381738[destinationAssetCopyState + 1];
        goto LABEL_8;
      }
    }

    v5 = 0;
    goto LABEL_8;
  }

  v5 = [(PXPhotoKitImportStatusManager *)self _simulatedStateForAsset:assetCopy];
LABEL_8:

  return v5;
}

- (id)initAllowingSimulation:(BOOL)simulation
{
  simulationCopy = simulation;
  v10.receiver = self;
  v10.super_class = PXPhotoKitImportStatusManager;
  v4 = [(PXPhotoKitImportStatusManager *)&v10 init];
  if (v4)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    statusObservers = v4->_statusObservers;
    v4->_statusObservers = weakObjectsHashTable;

    v4->_supportsStateSimulation = simulationCopy;
    if (simulationCopy)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      simulatedStateByAssetID = v4->_simulatedStateByAssetID;
      v4->_simulatedStateByAssetID = dictionary;
    }
  }

  return v4;
}

@end