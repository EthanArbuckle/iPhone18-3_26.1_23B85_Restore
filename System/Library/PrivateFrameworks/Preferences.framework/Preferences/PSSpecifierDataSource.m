@interface PSSpecifierDataSource
+ (PSSpecifierDataSource)sharedInstance;
+ (id)loadSpecifiersFromPlist:(id)a3 inBundle:(id)a4 target:(id)a5 stringsTable:(id)a6;
- (PSSpecifierDataSource)init;
- (id)observersOfClass:(Class)a3;
- (id)specifiersForSpecifier:(id)a3 observer:(id)a4;
- (void)_invalidateSpecifiersForObservers;
- (void)addObserver:(id)a3;
- (void)enumerateObserversOfClass:(Class)a3 usingBlock:(id)a4;
- (void)performUpdates:(id)a3;
- (void)performUpdatesAnimated:(BOOL)a3 usingBlock:(id)a4;
- (void)reloadSpecifiers;
- (void)removeObserver:(id)a3;
@end

@implementation PSSpecifierDataSource

+ (PSSpecifierDataSource)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PSSpecifierDataSource sharedInstance];
  }

  v3 = [MEMORY[0x1E696B098] valueWithPointer:a1];
  v4 = [sharedInstance_instanceCache objectForKeyedSubscript:v3];
  v5 = [v4 object];

  if (v5)
  {
    v6 = [v4 object];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [PSWeakReference weakReferenceWithObject:v6];

    [sharedInstance_instanceCache setObject:v7 forKeyedSubscript:v3];
    v4 = v7;
  }

  return v6;
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

- (void)addObserver:(id)a3
{
  if (a3)
  {
    observerRefs = self->_observerRefs;
    v4 = [PSWeakReference weakReferenceWithObject:?];
    [(NSMutableSet *)observerRefs addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_observerRefs removeObject:?];
  }
}

- (id)observersOfClass:(Class)a3
{
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableSet count](self->_observerRefs, "count")}];
  observerRefs = self->_observerRefs;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PSSpecifierDataSource_observersOfClass___block_invoke;
  v9[3] = &unk_1E71DDC08;
  v11 = a3;
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

- (void)enumerateObserversOfClass:(Class)a3 usingBlock:(id)a4
{
  v6 = a4;
  observerRefs = self->_observerRefs;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PSSpecifierDataSource_enumerateObserversOfClass_usingBlock___block_invoke;
  v9[3] = &unk_1E71DDC30;
  v10 = v6;
  v11 = a3;
  v8 = v6;
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

- (void)performUpdates:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PSSpecifierDataSource_performUpdates___block_invoke;
  v6[3] = &unk_1E71DDC58;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PSSpecifierDataSource *)self enumerateObserversUsingBlock:v6];
}

+ (id)loadSpecifiersFromPlist:(id)a3 inBundle:(id)a4 target:(id)a5 stringsTable:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v13 = [v10 pathForResource:v9 ofType:@"plist"];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v13];
    v15 = SpecifiersFromPlist(v14, 0, v11, v12, v10, 0, 0, 0, 0);
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

- (id)specifiersForSpecifier:(id)a3 observer:(id)a4
{
  if (![(PSSpecifierDataSource *)self areSpecifiersLoaded:a3])
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

- (void)performUpdatesAnimated:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v7 sf_isInternalInstall])
  {
    v8 = [MEMORY[0x1E696AF00] isMainThread];

    if (v8)
    {
      goto LABEL_6;
    }

    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PSSpecifierDataSource performUpdatesAnimated:v7 usingBlock:?];
    }
  }

LABEL_6:
  if (v6)
  {
    v9 = [PSSpecifierUpdates updatesWithSpecifiers:self->_specifiers];
    v10 = [v9 context];
    [v10 setAnimated:v4];

    v6[2](v6, v9);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = [v9 currentSpecifiers];
    v13 = [v11 initWithArray:v12];
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