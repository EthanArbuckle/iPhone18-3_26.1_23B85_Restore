@interface PXPhotoKitImportStatusManager
- (id)initAllowingSimulation:(BOOL)a3;
- (int64_t)_simulatedStateForAsset:(id)a3;
- (int64_t)importStateForAsset:(id)a3;
- (void)_notifySimulationObserversForAssetReference:(id)a3;
- (void)addAssetImportStatusObserver:(id)a3;
- (void)beginSimulatedImportForAssetReference:(id)a3;
- (void)completeSimulatedImportForAssetReference:(id)a3 withSuccess:(BOOL)a4;
- (void)removeAssetImportStatusObserver:(id)a3;
@end

@implementation PXPhotoKitImportStatusManager

- (void)removeAssetImportStatusObserver:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:119 description:{@"%s must be called on the main thread", "-[PXPhotoKitImportStatusManager removeAssetImportStatusObserver:]"}];
  }

  [(NSHashTable *)self->_statusObservers removeObject:v6];
}

- (void)addAssetImportStatusObserver:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:114 description:{@"%s must be called on the main thread", "-[PXPhotoKitImportStatusManager addAssetImportStatusObserver:]"}];
  }

  [(NSHashTable *)self->_statusObservers addObject:v6];
}

- (int64_t)_simulatedStateForAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:106 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v12}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v5 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:106 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v12, v14}];

    goto LABEL_6;
  }

LABEL_3:
  v6 = [v5 localIdentifier];
  v7 = [(NSMutableDictionary *)self->_simulatedStateByAssetID objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

- (void)completeSimulatedImportForAssetReference:(id)a3 withSuccess:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v17 = v7;
  if (!self->_supportsStateSimulation)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"_supportsStateSimulation"}];

    v7 = v17;
  }

  v8 = [v7 asset];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", v14}];
  }

LABEL_5:
  v9 = [v8 localIdentifier];
  if (v4)
  {
    v10 = &unk_1F1909F70;
  }

  else
  {
    v10 = &unk_1F1909F88;
  }

  [(NSMutableDictionary *)self->_simulatedStateByAssetID setObject:v10 forKeyedSubscript:v9];
  [(PXPhotoKitImportStatusManager *)self _notifySimulationObserversForAssetReference:v17];
}

- (void)beginSimulatedImportForAssetReference:(id)a3
{
  v5 = a3;
  v14 = v5;
  if (!self->_supportsStateSimulation)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"_supportsStateSimulation"}];

    v5 = v14;
  }

  v6 = [v5 asset];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v6 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetReference.asset", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetReference.asset", v11}];
  }

LABEL_5:
  v7 = [v6 localIdentifier];
  [(NSMutableDictionary *)self->_simulatedStateByAssetID setObject:&unk_1F1909F58 forKeyedSubscript:v7];
  [(PXPhotoKitImportStatusManager *)self _notifySimulationObserversForAssetReference:v14];
}

- (void)_notifySimulationObserversForAssetReference:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotoKitImportStatusManager.m" lineNumber:75 description:{@"%s must be called on the main thread", "-[PXPhotoKitImportStatusManager _notifySimulationObserversForAssetReference:]"}];
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
        [v11 assetImportStatusManager:self didChangeStatusForAssetReference:v5];
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (int64_t)importStateForAsset:(id)a3
{
  v4 = a3;
  if (![(PXPhotoKitImportStatusManager *)self supportsStateSimulation])
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 destinationAssetCopyProperties];
      v5 = v6;
      if (!v6)
      {
        goto LABEL_8;
      }

      v7 = [v6 destinationAssetCopyState];

      if ((v7 + 1) <= 3)
      {
        v5 = qword_1A5381738[v7 + 1];
        goto LABEL_8;
      }
    }

    v5 = 0;
    goto LABEL_8;
  }

  v5 = [(PXPhotoKitImportStatusManager *)self _simulatedStateForAsset:v4];
LABEL_8:

  return v5;
}

- (id)initAllowingSimulation:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = PXPhotoKitImportStatusManager;
  v4 = [(PXPhotoKitImportStatusManager *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    statusObservers = v4->_statusObservers;
    v4->_statusObservers = v5;

    v4->_supportsStateSimulation = v3;
    if (v3)
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      simulatedStateByAssetID = v4->_simulatedStateByAssetID;
      v4->_simulatedStateByAssetID = v7;
    }
  }

  return v4;
}

@end