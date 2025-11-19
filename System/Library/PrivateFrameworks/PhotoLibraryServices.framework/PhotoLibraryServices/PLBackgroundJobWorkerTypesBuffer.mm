@interface PLBackgroundJobWorkerTypesBuffer
- (BOOL)containsBackgroundJobWorker:(id)a3 forBundle:(id)a4;
- (BOOL)containsBackgroundJobWorkerTypes:(id)a3 forBundle:(id)a4;
- (PLBackgroundJobWorkerTypesBuffer)init;
- (id)bundles;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)workerTypesForBundle:(id)a3;
- (void)_addBackgroundJobWorkerTypes:(id)a3 forBundleURL:(id)a4;
- (void)addBackgroundJobWorkerTypes:(id)a3 forBundle:(id)a4;
- (void)removeAllObjects;
- (void)unionBuffer:(id)a3;
@end

@implementation PLBackgroundJobWorkerTypesBuffer

- (void)_addBackgroundJobWorkerTypes:(id)a3 forBundleURL:(id)a4
{
  v11 = a4;
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  v7 = a3;
  v8 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:v11];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 typesMaskByUnioningWithTypes:v7];

    v7 = v10;
  }

  [(NSMutableDictionary *)self->_workerTypesByBundleURL setObject:v7 forKeyedSubscript:v11];
}

- (BOOL)containsBackgroundJobWorker:(id)a3 forBundle:(id)a4
{
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  v6 = a3;
  v7 = [a4 libraryURL];
  v8 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:v7];
  v9 = [v8 containsWorker:v6];

  return v9;
}

- (BOOL)containsBackgroundJobWorkerTypes:(id)a3 forBundle:(id)a4
{
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  v6 = a3;
  v7 = [a4 libraryURL];
  v8 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:v7];
  v9 = [v8 containsTypes:v6];

  return v9;
}

- (id)bundles
{
  v2 = [(NSMutableSet *)self->_bundles copy];

  return v2;
}

- (void)unionBuffer:(id)a3
{
  bundles = self->_bundles;
  v5 = a3;
  v6 = [v5 bundles];
  [(NSMutableSet *)bundles unionSet:v6];

  v7 = [v5 workerTypesByBundleURL];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLBackgroundJobWorkerTypesBuffer_unionBuffer___block_invoke;
  v8[3] = &unk_1E7578708;
  v8[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)removeAllObjects
{
  [(NSMutableSet *)self->_bundles removeAllObjects];
  workerTypesByBundleURL = self->_workerTypesByBundleURL;

  [(NSMutableDictionary *)workerTypesByBundleURL removeAllObjects];
}

- (id)workerTypesForBundle:(id)a3
{
  workerTypesByBundleURL = self->_workerTypesByBundleURL;
  v4 = [a3 libraryURL];
  v5 = [(NSMutableDictionary *)workerTypesByBundleURL objectForKeyedSubscript:v4];

  return v5;
}

- (void)addBackgroundJobWorkerTypes:(id)a3 forBundle:(id)a4
{
  bundles = self->_bundles;
  v7 = a4;
  v8 = a3;
  [(NSMutableSet *)bundles addObject:v7];
  v9 = [v7 libraryURL];

  [(PLBackgroundJobWorkerTypesBuffer *)self _addBackgroundJobWorkerTypes:v8 forBundleURL:v9];
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

- (id)copyWithZone:(_NSZone *)a3
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