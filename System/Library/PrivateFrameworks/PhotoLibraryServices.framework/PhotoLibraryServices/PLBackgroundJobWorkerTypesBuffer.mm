@interface PLBackgroundJobWorkerTypesBuffer
- (BOOL)containsBackgroundJobWorker:(id)worker forBundle:(id)bundle;
- (BOOL)containsBackgroundJobWorkerTypes:(id)types forBundle:(id)bundle;
- (PLBackgroundJobWorkerTypesBuffer)init;
- (id)bundles;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)workerTypesForBundle:(id)bundle;
- (void)_addBackgroundJobWorkerTypes:(id)types forBundleURL:(id)l;
- (void)addBackgroundJobWorkerTypes:(id)types forBundle:(id)bundle;
- (void)removeAllObjects;
- (void)unionBuffer:(id)buffer;
@end

@implementation PLBackgroundJobWorkerTypesBuffer

- (void)_addBackgroundJobWorkerTypes:(id)types forBundleURL:(id)l
{
  lCopy = l;
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  typesCopy = types;
  v8 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:lCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 typesMaskByUnioningWithTypes:typesCopy];

    typesCopy = v10;
  }

  [(NSMutableDictionary *)self->_workerTypesByBundleURL setObject:typesCopy forKeyedSubscript:lCopy];
}

- (BOOL)containsBackgroundJobWorker:(id)worker forBundle:(id)bundle
{
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  workerCopy = worker;
  libraryURL = [bundle libraryURL];
  v8 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:libraryURL];
  v9 = [v8 containsWorker:workerCopy];

  return v9;
}

- (BOOL)containsBackgroundJobWorkerTypes:(id)types forBundle:(id)bundle
{
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  typesCopy = types;
  libraryURL = [bundle libraryURL];
  v8 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:libraryURL];
  v9 = [v8 containsTypes:typesCopy];

  return v9;
}

- (id)bundles
{
  v2 = [(NSMutableSet *)self->_bundles copy];

  return v2;
}

- (void)unionBuffer:(id)buffer
{
  bundles = self->_bundles;
  bufferCopy = buffer;
  bundles = [bufferCopy bundles];
  [(NSMutableSet *)bundles unionSet:bundles];

  workerTypesByBundleURL = [bufferCopy workerTypesByBundleURL];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLBackgroundJobWorkerTypesBuffer_unionBuffer___block_invoke;
  v8[3] = &unk_1E7578708;
  v8[4] = self;
  [workerTypesByBundleURL enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)removeAllObjects
{
  [(NSMutableSet *)self->_bundles removeAllObjects];
  workerTypesByBundleURL = self->_workerTypesByBundleURL;

  [(NSMutableDictionary *)workerTypesByBundleURL removeAllObjects];
}

- (id)workerTypesForBundle:(id)bundle
{
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  libraryURL = [bundle libraryURL];
  v5 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:libraryURL];

  return v5;
}

- (void)addBackgroundJobWorkerTypes:(id)types forBundle:(id)bundle
{
  bundles = self->_bundles;
  bundleCopy = bundle;
  typesCopy = types;
  [(NSMutableSet *)bundles addObject:bundleCopy];
  libraryURL = [bundleCopy libraryURL];

  [(PLBackgroundJobWorkerTypesBuffer *)self _addBackgroundJobWorkerTypes:typesCopy forBundleURL:libraryURL];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> ", v5, self];

  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__PLBackgroundJobWorkerTypesBuffer_description__block_invoke;
  v10[3] = &unk_1E7578708;
  v8 = v6;
  v11 = v8;
  [(NSMutableDictionary *)workerTypesByBundleURL enumerateKeysAndObjectsUsingBlock:v10];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PLBackgroundJobWorkerTypesBuffer);
  v5 = [(NSMutableSet *)self->_bundles copy];
  bundles = v4->_bundles;
  v4->_bundles = v5;

  v7 = [(NSMutableDictionary *)self->_workerTypesByBundleURL copy];
  workerTypesByBundleURL = v4->_workerTypesByBundleURL;
  v4->_workerTypesByBundleURL = v7;

  return v4;
}

- (PLBackgroundJobWorkerTypesBuffer)init
{
  v8.receiver = self;
  v8.super_class = PLBackgroundJobWorkerTypesBuffer;
  v2 = [(PLBackgroundJobWorkerTypesBuffer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    bundles = v2->_bundles;
    v2->_bundles = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    workerTypesByBundleURL = v2->_workerTypesByBundleURL;
    v2->_workerTypesByBundleURL = v5;
  }

  return v2;
}

@end