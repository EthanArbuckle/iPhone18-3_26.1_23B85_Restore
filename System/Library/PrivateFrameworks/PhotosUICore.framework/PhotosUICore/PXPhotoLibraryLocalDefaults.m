@interface PXPhotoLibraryLocalDefaults
- (BOOL)BOOLForKey:(id)a3;
- (PXPhotoLibraryLocalDefaults)initWithPhotoLibrary:(id)a3;
- (double)doubleForKey:(id)a3;
- (id)_appPrivateData;
- (id)arrayForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dateForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)dictionaryWithValuesForKeys:(id)a3;
- (id)identifiersForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)registeredNumberForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (id)valueForKey:(id)a3;
- (void)_notifyObserversDidChangeValueForKey:(id)a3;
- (void)addIdentifier:(id)a3 forKey:(id)a4;
- (void)registerBool:(BOOL)a3 forKey:(id)a4;
- (void)removeIdentifier:(id)a3 forKey:(id)a4;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setDictionary:(id)a3 forKey:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setIdentifiers:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation PXPhotoLibraryLocalDefaults

- (id)_appPrivateData
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v3 = [WeakRetained appPrivateData];

  return v3;
}

- (void)removeIdentifier:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotoLibraryLocalDefaults *)self identifiersForKey:v6];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v7];
  [(PXPhotoLibraryLocalDefaults *)self setIdentifiers:v9 forKey:v6];
}

- (void)addIdentifier:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotoLibraryLocalDefaults *)self identifiersForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  v11 = v10;

  v12 = [v11 setByAddingObject:v7];

  [(PXPhotoLibraryLocalDefaults *)self setIdentifiers:v12 forKey:v6];
}

- (id)identifiersForKey:(id)a3
{
  v3 = [(PXPhotoLibraryLocalDefaults *)self arrayForKey:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIdentifiers:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 allObjects];
  [(PXPhotoLibraryLocalDefaults *)self setValue:v7 forKey:v6];
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 valueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)setDictionary:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v12 = 0;
  v9 = [v8 setValue:v6 forKey:v7 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "PXPhotoLibraryLocalDefaults - setting dictionary %@ on defaultName %{public}@ failed. Error: %@", buf, 0x20u);
    }
  }

  [(PXPhotoLibraryLocalDefaults *)self _notifyObserversDidChangeValueForKey:v7];
}

- (id)registeredNumberForKey:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__83664;
  v17 = __Block_byref_object_dispose__83665;
  v18 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PXPhotoLibraryLocalDefaults_registeredNumberForKey___block_invoke;
  block[3] = &unk_1E7746448;
  v12 = &v13;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(isolationQueue, block);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __54__PXPhotoLibraryLocalDefaults_registeredNumberForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) valueForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 valueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 valueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 valueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)dateForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 valueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 valueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (double)doubleForKey:(id)a3
{
  v3 = [(PXPhotoLibraryLocalDefaults *)self numberForKey:a3];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(PXPhotoLibraryLocalDefaults *)self setValue:v8 forKey:v7];
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self numberForKey:v4];
  if (v5 || ([(PXPhotoLibraryLocalDefaults *)self registeredNumberForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(PXPhotoLibraryLocalDefaults *)self setValue:v8 forKey:v7];
}

- (void)registerBool:(BOOL)a3 forKey:(id)a4
{
  v6 = a4;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXPhotoLibraryLocalDefaults_registerBool_forKey___block_invoke;
  block[3] = &unk_1E774B368;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(isolationQueue, block);
}

void __51__PXPhotoLibraryLocalDefaults_registerBool_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [v2 setValue:v3 forKey:*(a1 + 40)];
}

- (id)dictionaryWithValuesForKeys:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 dictionaryWithValuesForKeys:v4];

  return v6;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PXPhotoLibraryLocalDefaults *)self willChangeValueForKey:v7];
  v8 = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v12 = 0;
  v9 = [v8 setValue:v6 forKey:v7 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "PXPhotoLibraryLocalDefaults - setting value %@ on key %{public}@ failed. Error: %@", buf, 0x20u);
    }
  }

  [(PXPhotoLibraryLocalDefaults *)self didChangeValueForKey:v7];
  [(PXPhotoLibraryLocalDefaults *)self _notifyObserversDidChangeValueForKey:v7];
}

- (void)_notifyObserversDidChangeValueForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PXPhotoLibraryLocalDefaults__notifyObserversDidChangeValueForKey___block_invoke;
  v6[3] = &unk_1E7736248;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXPhotoLibraryLocalDefaults *)self enumerateObserversUsingBlock:v6];
}

- (PXPhotoLibraryLocalDefaults)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PXPhotoLibraryLocalDefaults;
  v5 = [(PXPhotoLibraryLocalDefaults *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registeredValues = v6->_registeredValues;
    v6->_registeredValues = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("default isolation", v9);
    isolationQueue = v6->_isolationQueue;
    v6->_isolationQueue = v10;
  }

  return v6;
}

@end