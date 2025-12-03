@interface PXUserDefaultsStandardDataSource
+ (PXUserDefaultsStandardDataSource)sharedInstance;
- (PXUserDefaultsStandardDataSource)init;
- (id)_initAsSharedInstance;
- (id)persistedValueForKey:(id)key;
- (void)setPersistedValue:(id)value forKey:(id)key;
@end

@implementation PXUserDefaultsStandardDataSource

+ (PXUserDefaultsStandardDataSource)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_227);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __50__PXUserDefaultsStandardDataSource_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = [[PXUserDefaultsStandardDataSource alloc] _initAsSharedInstance];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initAsSharedInstance
{
  v7.receiver = self;
  v7.super_class = PXUserDefaultsStandardDataSource;
  v2 = [(PXUserDefaultsStandardDataSource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.photos.userdefaults-datasource-queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)setPersistedValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PXUserDefaultsStandardDataSource_setPersistedValue_forKey___block_invoke;
  v11[3] = &unk_1E7BB7DD0;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_async(queue, v11);
}

void __61__PXUserDefaultsStandardDataSource_setPersistedValue_forKey___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

- (id)persistedValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13675;
  v16 = __Block_byref_object_dispose__13676;
  v17 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PXUserDefaultsStandardDataSource_persistedValueForKey___block_invoke;
  v9[3] = &unk_1E7BB7800;
  v10 = keyCopy;
  v11 = &v12;
  v6 = keyCopy;
  dispatch_sync(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__PXUserDefaultsStandardDataSource_persistedValueForKey___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v5 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (PXUserDefaultsStandardDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUserDefaults.m" lineNumber:362 description:{@"%s is not available as initializer", "-[PXUserDefaultsStandardDataSource init]"}];

  abort();
}

@end