@interface PXPhotoLibraryLocalDefaults
- (BOOL)BOOLForKey:(id)key;
- (PXPhotoLibraryLocalDefaults)initWithPhotoLibrary:(id)library;
- (double)doubleForKey:(id)key;
- (id)_appPrivateData;
- (id)arrayForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dateForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)dictionaryWithValuesForKeys:(id)keys;
- (id)identifiersForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)registeredNumberForKey:(id)key;
- (id)stringForKey:(id)key;
- (id)valueForKey:(id)key;
- (void)_notifyObserversDidChangeValueForKey:(id)key;
- (void)addIdentifier:(id)identifier forKey:(id)key;
- (void)registerBool:(BOOL)bool forKey:(id)key;
- (void)removeIdentifier:(id)identifier forKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDictionary:(id)dictionary forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setIdentifiers:(id)identifiers forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation PXPhotoLibraryLocalDefaults

- (id)_appPrivateData
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  appPrivateData = [WeakRetained appPrivateData];

  return appPrivateData;
}

- (void)removeIdentifier:(id)identifier forKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  v8 = [(PXPhotoLibraryLocalDefaults *)self identifiersForKey:keyCopy];
  v9 = [v8 mutableCopy];

  [v9 removeObject:identifierCopy];
  [(PXPhotoLibraryLocalDefaults *)self setIdentifiers:v9 forKey:keyCopy];
}

- (void)addIdentifier:(id)identifier forKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  v8 = [(PXPhotoLibraryLocalDefaults *)self identifiersForKey:keyCopy];
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

  v12 = [v11 setByAddingObject:identifierCopy];

  [(PXPhotoLibraryLocalDefaults *)self setIdentifiers:v12 forKey:keyCopy];
}

- (id)identifiersForKey:(id)key
{
  v3 = [(PXPhotoLibraryLocalDefaults *)self arrayForKey:key];
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

- (void)setIdentifiers:(id)identifiers forKey:(id)key
{
  keyCopy = key;
  allObjects = [identifiers allObjects];
  [(PXPhotoLibraryLocalDefaults *)self setValue:allObjects forKey:keyCopy];
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData valueForKey:keyCopy];

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

- (void)setDictionary:(id)dictionary forKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v12 = 0;
  v9 = [_appPrivateData setValue:dictionaryCopy forKey:keyCopy error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = dictionaryCopy;
      v15 = 2114;
      v16 = keyCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "PXPhotoLibraryLocalDefaults - setting dictionary %@ on defaultName %{public}@ failed. Error: %@", buf, 0x20u);
    }
  }

  [(PXPhotoLibraryLocalDefaults *)self _notifyObserversDidChangeValueForKey:keyCopy];
}

- (id)registeredNumberForKey:(id)key
{
  keyCopy = key;
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
  v6 = keyCopy;
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

- (id)numberForKey:(id)key
{
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData valueForKey:keyCopy];

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

- (id)stringForKey:(id)key
{
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData valueForKey:keyCopy];

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

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData valueForKey:keyCopy];

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

- (id)dateForKey:(id)key
{
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData valueForKey:keyCopy];

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

- (id)dataForKey:(id)key
{
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData valueForKey:keyCopy];

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

- (double)doubleForKey:(id)key
{
  v3 = [(PXPhotoLibraryLocalDefaults *)self numberForKey:key];
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

- (void)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(PXPhotoLibraryLocalDefaults *)self setValue:v8 forKey:keyCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(PXPhotoLibraryLocalDefaults *)self numberForKey:keyCopy];
  if (v5 || ([(PXPhotoLibraryLocalDefaults *)self registeredNumberForKey:keyCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(PXPhotoLibraryLocalDefaults *)self setValue:v8 forKey:keyCopy];
}

- (void)registerBool:(BOOL)bool forKey:(id)key
{
  keyCopy = key;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXPhotoLibraryLocalDefaults_registerBool_forKey___block_invoke;
  block[3] = &unk_1E774B368;
  boolCopy = bool;
  block[4] = self;
  v10 = keyCopy;
  v8 = keyCopy;
  dispatch_async(isolationQueue, block);
}

void __51__PXPhotoLibraryLocalDefaults_registerBool_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [v2 setValue:v3 forKey:*(a1 + 40)];
}

- (id)dictionaryWithValuesForKeys:(id)keys
{
  keysCopy = keys;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData dictionaryWithValuesForKeys:keysCopy];

  return v6;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v6 = [_appPrivateData valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  [(PXPhotoLibraryLocalDefaults *)self willChangeValueForKey:keyCopy];
  _appPrivateData = [(PXPhotoLibraryLocalDefaults *)self _appPrivateData];
  v12 = 0;
  v9 = [_appPrivateData setValue:valueCopy forKey:keyCopy error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = valueCopy;
      v15 = 2114;
      v16 = keyCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "PXPhotoLibraryLocalDefaults - setting value %@ on key %{public}@ failed. Error: %@", buf, 0x20u);
    }
  }

  [(PXPhotoLibraryLocalDefaults *)self didChangeValueForKey:keyCopy];
  [(PXPhotoLibraryLocalDefaults *)self _notifyObserversDidChangeValueForKey:keyCopy];
}

- (void)_notifyObserversDidChangeValueForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PXPhotoLibraryLocalDefaults__notifyObserversDidChangeValueForKey___block_invoke;
  v6[3] = &unk_1E7736248;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(PXPhotoLibraryLocalDefaults *)self enumerateObserversUsingBlock:v6];
}

- (PXPhotoLibraryLocalDefaults)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = PXPhotoLibraryLocalDefaults;
  v5 = [(PXPhotoLibraryLocalDefaults *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, libraryCopy);
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