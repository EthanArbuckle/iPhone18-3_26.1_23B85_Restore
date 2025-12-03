@interface PXFavoritesSettings
+ (id)favoritesSubmoduleWithFavoritesSettingsKeyPath:(id)path delegate:(id)delegate;
+ (id)sharedInstance;
+ (id)transientProperties;
- (BOOL)isFavoriteSettings:(id)settings;
- (PXFavoritesSettingsDelegate)delegate;
- (id)_keyForFavoriteExistingAtIndex:(int64_t)index;
- (id)_keyForFavoriteNameAtIndex:(int64_t)index;
- (id)valueForKey:(id)key;
- (void)_notifyChange;
- (void)_performBlockAfterLoadingAccessorySettings:(id)settings;
- (void)_requestFavoriteSettingsAtIndex:(int64_t)index fromViewController:(id)controller resultHandler:(id)handler;
- (void)setFavoritesSettingsClassNames:(id)names;
- (void)setIsFavorite:(BOOL)favorite settings:(id)settings;
@end

@implementation PXFavoritesSettings

+ (id)favoritesSubmoduleWithFavoritesSettingsKeyPath:(id)path delegate:(id)delegate
{
  v34[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  delegateCopy = delegate;
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:50];
  v6 = +[PXFavoritesSettings sharedInstance];
  v28 = delegateCopy;
  [v6 setDelegate:delegateCopy];
  for (i = 0; i != 50; ++i)
  {
    v8 = [v6 _keyForFavoriteNameAtIndex:i];
    v9 = MEMORY[0x1E696AE18];
    v10 = [v6 _keyForFavoriteExistingAtIndex:i];
    v11 = [v9 predicateWithFormat:@"%K != 0", v10];

    v12 = [MEMORY[0x1E69C6610] row];
    v13 = [v12 titleKeyPath:v8];
    v14 = [v13 condition:v11];
    v15 = MEMORY[0x1E69C6658];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __79__PXFavoritesSettings_favoritesSubmoduleWithFavoritesSettingsKeyPath_delegate___block_invoke;
    v31[3] = &unk_1E7749C88;
    v16 = v6;
    v32 = v16;
    v33 = i;
    v17 = [v15 actionWithHandler:v31];
    v18 = [v14 action:v17];
    [v30 addObject:v18];
  }

  v19 = [MEMORY[0x1E69C6638] sectionWithRows:v30 title:@"Favorites"];
  v20 = MEMORY[0x1E696AE18];
  v21 = [v16 _keyForFavoriteExistingAtIndex:0];
  v22 = [v20 predicateWithFormat:@"%K != 0", v21];

  v23 = MEMORY[0x1E69C6638];
  v34[0] = v19;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v25 = [v23 moduleWithTitle:0 contents:v24];
  v26 = [v23 submoduleWithModule:v25 childSettingsKeyPath:pathCopy condition:v22];

  return v26;
}

uint64_t __79__PXFavoritesSettings_favoritesSubmoduleWithFavoritesSettingsKeyPath_delegate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PXFavoritesSettings_favoritesSubmoduleWithFavoritesSettingsKeyPath_delegate___block_invoke_2;
  v9[3] = &unk_1E7740C58;
  v10 = v4;
  v7 = v4;
  [v6 _requestFavoriteSettingsAtIndex:v5 fromViewController:v7 resultHandler:v9];

  return 1;
}

void __79__PXFavoritesSettings_favoritesSubmoduleWithFavoritesSettingsKeyPath_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v2 navigationController];
    v4 = [MEMORY[0x1E69DD258] px_viewControllerWithSettings:v3];

    [v5 pushViewController:v4 animated:1];
  }
}

- (PXFavoritesSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__PXFavoritesSettings_valueForKey___block_invoke;
  aBlock[3] = &unk_1E7740CD0;
  v5 = keyCopy;
  v20 = v5;
  v21 = &v22;
  v6 = _Block_copy(aBlock);
  favoritesSettingsClassNames = [(PXFavoritesSettings *)self favoritesSettingsClassNames];
  if (v6[2](v6, @"favoriteName"))
  {
    v8 = v23[3];
    if (v8 >= [favoritesSettingsClassNames count])
    {
      v12 = 0;
    }

    else
    {
      v9 = [favoritesSettingsClassNames objectAtIndexedSubscript:v23[3]];
      v10 = NSClassFromString(v9);
      if ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
      {
        settingsControllerModule = [(objc_class *)v10 settingsControllerModule];
        v12 = [settingsControllerModule valueForKey:@"title"];
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v9];
        if (!self->_didEncounterUnknownSettingsClassName)
        {
          self->_didEncounterUnknownSettingsClassName = 1;
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __35__PXFavoritesSettings_valueForKey___block_invoke_2;
          v18[3] = &unk_1E774C648;
          v18[4] = self;
          [(PXFavoritesSettings *)self _performBlockAfterLoadingAccessorySettings:v18];
        }
      }
    }

    v15 = &stru_1F1741150;
    if (v12)
    {
      v15 = v12;
    }

    v14 = v15;
  }

  else
  {
    if (v6[2](v6, @"hasFavorite"))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{v23[3] < objc_msgSend(favoritesSettingsClassNames, "count")}];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = PXFavoritesSettings;
      v13 = [(PXFavoritesSettings *)&v17 valueForKey:v5];
    }

    v14 = v13;
  }

  _Block_object_dispose(&v22, 8);

  return v14;
}

uint64_t __35__PXFavoritesSettings_valueForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) hasPrefix:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) substringFromIndex:{objc_msgSend(v3, "length")}];
    *(*(*(a1 + 40) + 8) + 24) = [v5 integerValue];
  }

  return v4;
}

- (void)_performBlockAfterLoadingAccessorySettings:(id)settings
{
  settingsCopy = settings;
  delegate = [(PXFavoritesSettings *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__PXFavoritesSettings__performBlockAfterLoadingAccessorySettings___block_invoke;
    v6[3] = &unk_1E774C250;
    v7 = settingsCopy;
    [delegate favoritesSettings:self loadAccessorySettingsWithCompletionHandler:v6];
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], settingsCopy);
  }
}

- (id)_keyForFavoriteExistingAtIndex:(int64_t)index
{
  index = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%li", @"hasFavorite", index];

  return index;
}

- (id)_keyForFavoriteNameAtIndex:(int64_t)index
{
  index = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%li", @"favoriteName", index];

  return index;
}

- (void)_requestFavoriteSettingsAtIndex:(int64_t)index fromViewController:(id)controller resultHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  favoritesSettingsClassNames = [(PXFavoritesSettings *)self favoritesSettingsClassNames];
  v11 = [favoritesSettingsClassNames objectAtIndexedSubscript:index];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PXFavoritesSettings__requestFavoriteSettingsAtIndex_fromViewController_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7740C80;
  v12 = v11;
  v23 = v12;
  v13 = handlerCopy;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  if ((v14[2]() & 1) == 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__PXFavoritesSettings__requestFavoriteSettingsAtIndex_fromViewController_resultHandler___block_invoke_2;
    v15[3] = &unk_1E7743080;
    v20 = v14;
    v16 = v12;
    indexCopy = index;
    v17 = favoritesSettingsClassNames;
    selfCopy = self;
    v19 = controllerCopy;
    [(PXFavoritesSettings *)self _performBlockAfterLoadingAccessorySettings:v15];
  }
}

uint64_t __88__PXFavoritesSettings__requestFavoriteSettingsAtIndex_fromViewController_resultHandler___block_invoke(uint64_t a1)
{
  v2 = NSClassFromString(*(a1 + 32));
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    v4 = [(objc_class *)v2 sharedInstance];
    (*(*(a1 + 40) + 16))();
  }

  return v3 & 1;
}

void __88__PXFavoritesSettings__requestFavoriteSettingsAtIndex_fromViewController_resultHandler___block_invoke_2(uint64_t a1)
{
  if (((*(*(a1 + 64) + 16))() & 1) == 0)
  {
    v2 = MEMORY[0x1E69DC650];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The class ”%@” doesn't appear to exist anymore.", *(a1 + 32)];
    v4 = [v2 alertControllerWithTitle:@"Couldn't find internal settings" message:v3 preferredStyle:1];

    v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v4 addAction:v5];

    v6 = MEMORY[0x1E69DC648];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__PXFavoritesSettings__requestFavoriteSettingsAtIndex_fromViewController_resultHandler___block_invoke_3;
    v11[3] = &unk_1E7740CA8;
    v7 = *(a1 + 40);
    v8 = *(a1 + 72);
    v9 = *(a1 + 48);
    v12 = v7;
    v13 = v9;
    v14 = v8;
    v10 = [v6 actionWithTitle:@"Remove" style:2 handler:v11];
    [v4 addAction:v10];

    [*(a1 + 56) presentViewController:v4 animated:1 completion:0];
  }
}

void __88__PXFavoritesSettings__requestFavoriteSettingsAtIndex_fromViewController_resultHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 removeObjectAtIndex:*(a1 + 48)];
  [*(a1 + 40) setFavoritesSettingsClassNames:v2];
}

- (void)_notifyChange
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 50; ++i)
  {
    v5 = [(PXFavoritesSettings *)self _keyForFavoriteNameAtIndex:i];
    [v3 addObject:v5];

    v6 = [(PXFavoritesSettings *)self _keyForFavoriteExistingAtIndex:i];
    [v3 addObject:v6];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PXFavoritesSettings *)self willChangeValueForKey:*(*(&v23 + 1) + 8 * j)];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * k);
        [(PXFavoritesSettings *)self didChangeValueForKey:v17, v19];
        [(PTSettings *)self invalidateValueForKey:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(PXSettings *)self save];
  delegate = [(PXFavoritesSettings *)self delegate];
  [delegate favoritesSettingsDidChangeFavorites:self];
}

- (void)setFavoritesSettingsClassNames:(id)names
{
  namesCopy = names;
  v5 = namesCopy;
  if (self->_favoritesSettingsClassNames != namesCopy)
  {
    v9 = namesCopy;
    v6 = [(NSArray *)namesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      favoritesSettingsClassNames = self->_favoritesSettingsClassNames;
      self->_favoritesSettingsClassNames = v7;

      [(PXSettings *)self save];
      [(PXFavoritesSettings *)self _notifyChange];
      v5 = v9;
    }
  }
}

- (void)setIsFavorite:(BOOL)favorite settings:(id)settings
{
  favoriteCopy = favorite;
  settingsCopy = settings;
  favoritesSettingsClassNames = [(PXFavoritesSettings *)self favoritesSettingsClassNames];
  v8 = [favoritesSettingsClassNames mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v13 = v10;

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  if (favoriteCopy)
  {
    [v13 insertObject:v12 atIndex:0];
  }

  else
  {
    [v13 removeObject:v12];
  }

  [(PXFavoritesSettings *)self setFavoritesSettingsClassNames:v13];
}

- (BOOL)isFavoriteSettings:(id)settings
{
  settingsCopy = settings;
  favoritesSettingsClassNames = [(PXFavoritesSettings *)self favoritesSettingsClassNames];
  v6 = objc_opt_class();

  v7 = NSStringFromClass(v6);
  LOBYTE(v6) = [favoritesSettingsClassNames containsObject:v7];

  return v6;
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXFavoritesSettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transientProperties_onceToken_181272 != -1)
  {
    dispatch_once(&transientProperties_onceToken_181272, block);
  }

  v2 = transientProperties_transientProperties_181273;

  return v2;
}

void __42__PXFavoritesSettings_transientProperties__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___PXFavoritesSettings;
  v1 = objc_msgSendSuper2(&v5, sel_transientProperties);
  v2 = NSStringFromSelector(sel_delegate);
  v3 = [v1 setByAddingObject:v2];
  v4 = transientProperties_transientProperties_181273;
  transientProperties_transientProperties_181273 = v3;
}

+ (id)sharedInstance
{
  os_unfair_lock_lock(&PXSettingsSharedInstanceLock);
  if (!sharedInstance_sharedInstance_181277)
  {
    createSharedInstance = [self createSharedInstance];
    v4 = sharedInstance_sharedInstance_181277;
    sharedInstance_sharedInstance_181277 = createSharedInstance;
  }

  os_unfair_lock_unlock(&PXSettingsSharedInstanceLock);
  v5 = sharedInstance_sharedInstance_181277;

  return v5;
}

@end