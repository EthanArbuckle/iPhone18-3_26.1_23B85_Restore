@interface UNCHybridContentProtectionStrategy
- (BOOL)dataIsAvailableAtPath:(id)a3;
- (BOOL)isProtectedDataAvailable;
- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)writeData:(id)a3 atPath:(id)a4 error:(id *)a5;
- (id)_strategyForProtectionState;
- (id)dataAtPath:(id)a3;
- (void)importDataWithImportHandler:(id)a3;
- (void)migrateDataAtPath:(id)a3 toPath:(id)a4;
@end

@implementation UNCHybridContentProtectionStrategy

- (id)_strategyForProtectionState
{
  v3 = [(UNCHybridContentProtectionStrategy *)self isProtectedDataAvailable];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (BOOL)isProtectedDataAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isProtectedDataAvailable];

  if (v4)
  {
    return 1;
  }

  minimumProtection = self->_minimumProtection;
  if (minimumProtection == *MEMORY[0x1E696A388])
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 deviceUnlockedSinceBoot];

    if (v8)
    {
      return 1;
    }

    minimumProtection = self->_minimumProtection;
  }

  return minimumProtection == *MEMORY[0x1E695DAF8];
}

- (BOOL)dataIsAvailableAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  v6 = [v5 dataIsAvailableAtPath:v4];

  return v6;
}

- (id)dataAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  v6 = [v5 dataAtPath:v4];

  return v6;
}

- (BOOL)writeData:(id)a3 atPath:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  v11 = v10;
  v12 = self->_needsMerge || v10 == self->_protectedContentUnavailableStrategy;
  self->_needsMerge = v12;
  v13 = [(UNCFileHandleContentProtectionStrategy *)v10 writeData:v9 atPath:v8 error:a5];

  return v13;
}

- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  LOBYTE(a4) = [v7 removeItemAtPath:v6 error:a4];

  return a4;
}

- (void)migrateDataAtPath:(id)a3 toPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UNCHybridContentProtectionStrategy *)self _strategyForProtectionState];
  [v8 migrateDataAtPath:v7 toPath:v6];
}

- (void)importDataWithImportHandler:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v22 = self;
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

                v8 = v4[2](v4, *(*(&v27 + 1) + 8 * v13), v14);

                ++v13;
                v14 = v8;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v11);
          }

          v26 = 0;
          self = v22;
          [(UNCHybridContentProtectionStrategy *)v22 writeData:v8 atPath:v6 error:&v26];
          v15 = v26;
          protectedContentUnavailableStrategy = v22->_protectedContentUnavailableStrategy;
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