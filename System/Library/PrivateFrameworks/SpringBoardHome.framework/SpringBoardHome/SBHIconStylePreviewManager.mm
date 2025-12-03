@interface SBHIconStylePreviewManager
- (BOOL)canTintIconSpecially:(id)specially;
- (SBHIconStylePreviewManager)initWithTraitOverridableObjects:(id)objects iconListViews:(id)views additionalIconViews:(id)iconViews;
- (SBIconImageInfo)configurationIconImageInfo;
- (id)allIconViews;
- (id)configurationIconImageAppearanceForIconImageStyleConfiguration:(id)configuration;
- (int64_t)configurationUserInterfaceStyle;
- (int64_t)userInterfaceStyleForAdditionalViewsOverrideForStyleConfiguration:(id)configuration;
- (void)addObserver:(id)observer;
- (void)applyImageStyleConfigurationToIconViews:(id)views;
- (void)enumerateIconViewsUsingBlock:(id)block;
- (void)informObserversOfPreviewGenerationWithDuration:(double)duration;
- (void)pausePreviewing;
- (void)prepare;
- (void)setImageStyleConfiguration:(id)configuration;
- (void)updateUIWithImageStyleConfiguration:(id)configuration;
@end

@implementation SBHIconStylePreviewManager

- (SBHIconStylePreviewManager)initWithTraitOverridableObjects:(id)objects iconListViews:(id)views additionalIconViews:(id)iconViews
{
  objectsCopy = objects;
  viewsCopy = views;
  iconViewsCopy = iconViews;
  v19.receiver = self;
  v19.super_class = SBHIconStylePreviewManager;
  v11 = [(SBHIconStylePreviewManager *)&v19 init];
  if (v11)
  {
    v12 = [objectsCopy copy];
    traitOverridableObjects = v11->_traitOverridableObjects;
    v11->_traitOverridableObjects = v12;

    v14 = [viewsCopy copy];
    iconListViews = v11->_iconListViews;
    v11->_iconListViews = v14;

    v16 = [iconViewsCopy copy];
    additionalIconViews = v11->_additionalIconViews;
    v11->_additionalIconViews = v16;

    [(SBHIconStylePreviewManager *)v11 prepare];
  }

  return v11;
}

- (void)prepare
{
  v21 = *MEMORY[0x1E69E9840];
  allIconViews = [(SBHIconStylePreviewManager *)self allIconViews];
  v3 = [allIconViews bs_compactMap:&__block_literal_global_35];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([(SBHIconStylePreviewManager *)self canTintIconSpecially:v10])
        {
          [v4 addObject:v10];
        }

        else if ([v10 isFolderIcon])
        {
          folder = [v10 folder];
          firstList = [folder firstList];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __37__SBHIconStylePreviewManager_prepare__block_invoke_2;
          v15[3] = &unk_1E808BFD8;
          v15[4] = self;
          v13 = [firstList directlyContainedIconsPassingTest:v15];
          [v4 addObjectsFromArray:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(SBHIconStylePreviewManager *)self setTintableIcons:v4];
}

- (BOOL)canTintIconSpecially:(id)specially
{
  speciallyCopy = specially;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    isBookmarkIcon = 0;
  }

  else if ([speciallyCopy isApplicationIcon])
  {
    isBookmarkIcon = 1;
  }

  else
  {
    isBookmarkIcon = [speciallyCopy isBookmarkIcon];
  }

  return isBookmarkIcon;
}

- (void)applyImageStyleConfigurationToIconViews:(id)views
{
  v17 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  traitOverridableObjects = [(SBHIconStylePreviewManager *)self traitOverridableObjects];
  v6 = [traitOverridableObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(traitOverridableObjects);
        }

        traitOverrides = [*(*(&v12 + 1) + 8 * v9) traitOverrides];
        v11 = objc_opt_self();
        [traitOverrides setObject:viewsCopy forTrait:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [traitOverridableObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)updateUIWithImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configurationType = [configurationCopy configurationType];
  if (configurationType >= 2)
  {
    if (configurationType == 2)
    {
      [(SBHIconStylePreviewManager *)self updateUIWithTintedImageStyleConfiguration:configurationCopy];
    }
  }

  else
  {
    [(SBHIconStylePreviewManager *)self updateUIWithNonTintedImageStyleConfiguration:configurationCopy];
  }
}

- (void)setImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [configurationCopy copy];
    imageStyleConfiguration = self->_imageStyleConfiguration;
    self->_imageStyleConfiguration = v4;

    if (configurationCopy)
    {
      [(SBHIconStylePreviewManager *)self updateUIWithImageStyleConfiguration:configurationCopy];
    }

    else
    {
      [(SBHIconStylePreviewManager *)self pausePreviewing];
    }
  }
}

- (void)pausePreviewing
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  traitOverridableObjects = [(SBHIconStylePreviewManager *)self traitOverridableObjects];
  v5 = [traitOverridableObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(traitOverridableObjects);
        }

        traitOverrides = [*(*(&v10 + 1) + 8 * v8) traitOverrides];
        [traitOverrides removeTrait:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [traitOverridableObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (id)allIconViews
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SBHIconStylePreviewManager_allIconViews__block_invoke;
  v6[3] = &unk_1E8089928;
  v4 = v3;
  v7 = v4;
  [(SBHIconStylePreviewManager *)self enumerateIconViewsUsingBlock:v6];

  return v4;
}

- (void)enumerateIconViewsUsingBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  iconListViews = [(SBHIconStylePreviewManager *)self iconListViews];
  v6 = [iconListViews countByEnumeratingWithState:&v24 objects:v33 count:16];
  selfCopy = self;
  if (v6)
  {
    v7 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(iconListViews);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__SBHIconStylePreviewManager_enumerateIconViewsUsingBlock___block_invoke;
      v21[3] = &unk_1E808A830;
      v22 = blockCopy;
      v23 = &v28;
      [v9 enumerateDisplayedIconViewsUsingBlock:v21];
      LOBYTE(v9) = *(v29 + 24);

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [iconListViews countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    [(SBHIconStylePreviewManager *)selfCopy additionalIconViews];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v10 = v18 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v32 count:16];
    if (v11)
    {
      v12 = *v18;
LABEL_11:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v16 = 0;
        (*(blockCopy + 2))(blockCopy, v14, &v16);
        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v32 count:16];
          if (v11)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

    iconListViews = v10;
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __59__SBHIconStylePreviewManager_enumerateIconViewsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v6 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (int64_t)configurationUserInterfaceStyle
{
  iconListViews = [(SBHIconStylePreviewManager *)self iconListViews];
  firstObject = [iconListViews firstObject];
  v4 = [MEMORY[0x1E69DD1B8] sbh_highestLevelTraitCollectionForView:firstObject];
  userInterfaceStyle = [v4 userInterfaceStyle];

  return userInterfaceStyle;
}

- (int64_t)userInterfaceStyleForAdditionalViewsOverrideForStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [configurationCopy iconImageAppearanceWithUserInterfaceStyle:{-[SBHIconStylePreviewManager configurationUserInterfaceStyle](self, "configurationUserInterfaceStyle")}];

  v6 = [MEMORY[0x1E69DD1B8] sbh_userInterfaceStyleForIconImageAppearance:v5];
  return v6;
}

- (SBIconImageInfo)configurationIconImageInfo
{
  iconListViews = [(SBHIconStylePreviewManager *)self iconListViews];
  firstObject = [iconListViews firstObject];
  layout = [firstObject layout];
  [layout iconImageInfo];

  return result;
}

- (id)configurationIconImageAppearanceForIconImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [configurationCopy iconImageAppearanceWithUserInterfaceStyle:{-[SBHIconStylePreviewManager configurationUserInterfaceStyle](self, "configurationUserInterfaceStyle")}];

  return v5;
}

- (void)informObserversOfPreviewGenerationWithDuration:(double)duration
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 stylePreviewManager:self didGeneratePreviewsInDuration:duration];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end