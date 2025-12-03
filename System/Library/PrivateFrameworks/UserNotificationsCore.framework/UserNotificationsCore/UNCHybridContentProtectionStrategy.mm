@interface UNCHybridContentProtectionStrategy
- (BOOL)dataIsAvailableAtPath:(id)path;
- (BOOL)isProtectedDataAvailable;
- (BOOL)removeItemAtPath:(id)path error:(id *)error;
- (BOOL)writeData:(id)data atPath:(id)path error:(id *)error;
- (id)_strategyForProtectionState;
- (id)dataAtPath:(id)path;
- (void)importDataWithImportHandler:(id)handler;
- (void)migrateDataAtPath:(id)path toPath:(id)toPath;
@end

@implementation UNCHybridContentProtectionStrategy

- (id)_strategyForProtectionState
{
  isProtectedDataAvailable = [(UNCHybridContentProtectionStrategy *)self isProtectedDataAvailable];
  v4 = 40;
  if (isProtectedDataAvailable)
  {
    v4 = 32;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (BOOL)isProtectedDataAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isProtectedDataAvailable = [WeakRetained isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    return 1;
  }

  minimumProtection = self->_minimumProtection;
  if (minimumProtection == *MEMORY[0x1E696A388])
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    deviceUnlockedSinceBoot = [v7 deviceUnlockedSinceBoot];

    if (deviceUnlockedSinceBoot)
    {
      return 1;
    }

    minimumProtection = self->_minimumProtection;
  }

  return minimumProtection == *MEMORY[0x1E695DAF8];
}

- (BOOL)dataIsAvailableAtPath:(id)path
{
  pathCopy = path;
  _strategyForProtectionState = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  v6 = [_strategyForProtectionState dataIsAvailableAtPath:pathCopy];

  return v6;
}

- (id)dataAtPath:(id)path
{
  pathCopy = path;
  _strategyForProtectionState = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  v6 = [_strategyForProtectionState dataAtPath:pathCopy];

  return v6;
}

- (BOOL)writeData:(id)data atPath:(id)path error:(id *)error
{
  pathCopy = path;
  dataCopy = data;
  _strategyForProtectionState = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  v11 = _strategyForProtectionState;
  v12 = self->_needsMerge || _strategyForProtectionState == self->_protectedContentUnavailableStrategy;
  self->_needsMerge = v12;
  v13 = [(UNCFileHandleContentProtectionStrategy *)_strategyForProtectionState writeData:dataCopy atPath:pathCopy error:error];

  return v13;
}

- (BOOL)removeItemAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  _strategyForProtectionState = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  LOBYTE(error) = [_strategyForProtectionState removeItemAtPath:pathCopy error:error];

  return error;
}

- (void)migrateDataAtPath:(id)path toPath:(id)toPath
{
  toPathCopy = toPath;
  pathCopy = path;
  _strategyForProtectionState = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  [_strategyForProtectionState migrateDataAtPath:pathCopy toPath:toPathCopy];
}

- (void)importDataWithImportHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(UNCHybridContentProtectionStrategy *)self isProtectedDataAvailable]&& self->_needsMerge)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(UNCFileHandleContentProtectionStrategy *)self->_protectedContentUnavailableStrategy allPaths];
    v23 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v23)
    {
      v21 = *v32;
      selfCopy = self;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v31 + 1) + 8 * i);
          v7 = [(UNCFileHandleContentProtectionStrategy *)self->_protectedContentUnavailableStrategy allDataAtPath:v6];
          v8 = [(UNCAtomicDataContentProtectionStrategy *)self->_protectedContentAvailableStrategy dataAtPath:v6];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = v7;
          v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
          v24 = v8;
          if (v10)
          {
            v11 = v10;
            v12 = *v28;
            do
            {
              v13 = 0;
              v14 = v8;
              do
              {
                if (*v28 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v8 = handlerCopy[2](handlerCopy, *(*(&v27 + 1) + 8 * v13), v14);

                ++v13;
                v14 = v8;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v11);
          }

          v26 = 0;
          self = selfCopy;
          [(UNCHybridContentProtectionStrategy *)selfCopy writeData:v8 atPath:v6 error:&v26];
          v15 = v26;
          protectedContentUnavailableStrategy = selfCopy->_protectedContentUnavailableStrategy;
          v25 = v15;
          [(UNCFileHandleContentProtectionStrategy *)protectedContentUnavailableStrategy removeAllDataAtPath:v6 error:&v25];
          v17 = v25;
        }

        v23 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v23);
    }

    v18 = self->_protectedContentUnavailableStrategy;
    self->_protectedContentUnavailableStrategy = 0;

    self->_needsMerge = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end