@interface PSSpecifierDataSource
+ (PSSpecifierDataSource)sharedInstance;
+ (id)loadSpecifiersFromPlist:(id)plist inBundle:(id)bundle target:(id)target stringsTable:(id)table;
- (PSSpecifierDataSource)init;
- (id)observersOfClass:(Class)class;
- (id)specifiersForSpecifier:(id)specifier observer:(id)observer;
- (void)_invalidateSpecifiersForObservers;
- (void)addObserver:(id)observer;
- (void)enumerateObserversOfClass:(Class)class usingBlock:(id)block;
- (void)performUpdates:(id)updates;
- (void)performUpdatesAnimated:(BOOL)animated usingBlock:(id)block;
- (void)reloadSpecifiers;
- (void)removeObserver:(id)observer;
@end

@implementation PSSpecifierDataSource

+ (PSSpecifierDataSource)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PSSpecifierDataSource sharedInstance];
  }

  v3 = [MEMORY[0x1E696B098] valueWithPointer:self];
  v4 = [sharedInstance_instanceCache objectForKeyedSubscript:v3];
  object = [v4 object];

  if (object)
  {
    object2 = [v4 object];
  }

  else
  {
    object2 = objc_opt_new();
    v7 = [PSWeakReference weakReferenceWithObject:object2];

    [sharedInstance_instanceCache setObject:v7 forKeyedSubscript:v3];
    v4 = v7;
  }

  return object2;
}

void __39__PSSpecifierDataSource_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instanceCache;
  sharedInstance_instanceCache = v0;
}

- (PSSpecifierDataSource)init
{
  v8.receiver = self;
  v8.super_class = PSSpecifierDataSource;
  v2 = [(PSSpecifierDataSource *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observerRefs = v2->_observerRefs;
    v2->_observerRefs = v3;

    v5 = objc_opt_new();
    specifiers = v2->_specifiers;
    v2->_specifiers = v5;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerRefs = self->_observerRefs;
    v4 = [PSWeakReference weakReferenceWithObject:?];
    [(NSMutableSet *)observerRefs addObject:v4];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSMutableSet *)self->_observerRefs removeObject:?];
  }
}

- (id)observersOfClass:(Class)class
{
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableSet count](self->_observerRefs, "count")}];
  observerRefs = self->_observerRefs;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PSSpecifierDataSource_observersOfClass___block_invoke;
  v9[3] = &unk_1E71DDC08;
  classCopy = class;
  v7 = v5;
  v10 = v7;
  [(NSMutableSet *)observerRefs enumerateObjectsUsingBlock:v9];

  return v7;
}

uint64_t __42__PSSpecifierDataSource_observersOfClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (v3)
  {
    v5 = v3;
    if (!*(a1 + 40) || (objc_opt_isKindOfClass() & 1) != 0)
    {
      [*(a1 + 32) addObject:v5];
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)enumerateObserversOfClass:(Class)class usingBlock:(id)block
{
  blockCopy = block;
  observerRefs = self->_observerRefs;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PSSpecifierDataSource_enumerateObserversOfClass_usingBlock___block_invoke;
  v9[3] = &unk_1E71DDC30;
  v10 = blockCopy;
  classCopy = class;
  v8 = blockCopy;
  [(NSMutableSet *)observerRefs enumerateObjectsUsingBlock:v9];
}

uint64_t __62__PSSpecifierDataSource_enumerateObserversOfClass_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  [a2 object];
  if (objc_claimAutoreleasedReturnValue() && (!*(a1 + 40) || (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)performUpdates:(id)updates
{
  updatesCopy = updates;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PSSpecifierDataSource_performUpdates___block_invoke;
  v6[3] = &unk_1E71DDC58;
  v6[4] = self;
  v7 = updatesCopy;
  v5 = updatesCopy;
  [(PSSpecifierDataSource *)self enumerateObserversUsingBlock:v6];
}

+ (id)loadSpecifiersFromPlist:(id)plist inBundle:(id)bundle target:(id)target stringsTable:(id)table
{
  plistCopy = plist;
  bundleCopy = bundle;
  targetCopy = target;
  tableCopy = table;
  if (!bundleCopy)
  {
    bundleCopy = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v13 = [bundleCopy pathForResource:plistCopy ofType:@"plist"];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v13];
    v15 = SpecifiersFromPlist(v14, 0, targetCopy, tableCopy, bundleCopy, 0, 0, 0, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_invalidateSpecifiersForObservers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__PSSpecifierDataSource__invalidateSpecifiersForObservers__block_invoke;
  v2[3] = &unk_1E71DDC80;
  v2[4] = self;
  [(PSSpecifierDataSource *)self enumerateObserversUsingBlock:v2];
}

- (id)specifiersForSpecifier:(id)specifier observer:(id)observer
{
  if (![(PSSpecifierDataSource *)self areSpecifiersLoaded:specifier])
  {
    [(PSSpecifierDataSource *)self loadSpecifiers];
    self->_specifiersLoaded = 1;
  }

  v5 = MEMORY[0x1E695DEC8];
  specifiers = self->_specifiers;

  return [v5 arrayWithArray:specifiers];
}

- (void)reloadSpecifiers
{
  [(PSSpecifierDataSource *)self _clearAllSpecifiers];
  [(PSSpecifierDataSource *)self loadSpecifiers];
  self->_specifiersLoaded = 1;

  [(PSSpecifierDataSource *)self _invalidateSpecifiersForObservers];
}

- (void)performUpdatesAnimated:(BOOL)animated usingBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isInternalInstall])
  {
    isMainThread = [MEMORY[0x1E696AF00] isMainThread];

    if (isMainThread)
    {
      goto LABEL_6;
    }

    currentDevice = _PSLoggingFacility();
    if (os_log_type_enabled(currentDevice, OS_LOG_TYPE_ERROR))
    {
      [PSSpecifierDataSource performUpdatesAnimated:currentDevice usingBlock:?];
    }
  }

LABEL_6:
  if (blockCopy)
  {
    v9 = [PSSpecifierUpdates updatesWithSpecifiers:self->_specifiers];
    context = [v9 context];
    [context setAnimated:animatedCopy];

    blockCopy[2](blockCopy, v9);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    currentSpecifiers = [v9 currentSpecifiers];
    v13 = [v11 initWithArray:currentSpecifiers];
    specifiers = self->_specifiers;
    self->_specifiers = v13;

    [(PSSpecifierDataSource *)self performUpdates:v9];
  }
}

- (void)performUpdatesAnimated:(NSObject *)a1 usingBlock:.cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_18B008000, a1, OS_LOG_TYPE_ERROR, "performUpdatesAnimated:usingBlock: is caled off the main thread from: %@", &v3, 0xCu);
}

@end