@interface SBHIconStylePreviewManager
- (BOOL)canTintIconSpecially:(id)a3;
- (SBHIconStylePreviewManager)initWithTraitOverridableObjects:(id)a3 iconListViews:(id)a4 additionalIconViews:(id)a5;
- (SBIconImageInfo)configurationIconImageInfo;
- (id)allIconViews;
- (id)configurationIconImageAppearanceForIconImageStyleConfiguration:(id)a3;
- (int64_t)configurationUserInterfaceStyle;
- (int64_t)userInterfaceStyleForAdditionalViewsOverrideForStyleConfiguration:(id)a3;
- (void)addObserver:(id)a3;
- (void)applyImageStyleConfigurationToIconViews:(id)a3;
- (void)enumerateIconViewsUsingBlock:(id)a3;
- (void)informObserversOfPreviewGenerationWithDuration:(double)a3;
- (void)pausePreviewing;
- (void)prepare;
- (void)setImageStyleConfiguration:(id)a3;
- (void)updateUIWithImageStyleConfiguration:(id)a3;
@end

@implementation SBHIconStylePreviewManager

- (SBHIconStylePreviewManager)initWithTraitOverridableObjects:(id)a3 iconListViews:(id)a4 additionalIconViews:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SBHIconStylePreviewManager;
  v11 = [(SBHIconStylePreviewManager *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    traitOverridableObjects = v11->_traitOverridableObjects;
    v11->_traitOverridableObjects = v12;

    v14 = [v9 copy];
    iconListViews = v11->_iconListViews;
    v11->_iconListViews = v14;

    v16 = [v10 copy];
    additionalIconViews = v11->_additionalIconViews;
    v11->_additionalIconViews = v16;

    [(SBHIconStylePreviewManager *)v11 prepare];
  }

  return v11;
}

- (void)prepare
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = [(SBHIconStylePreviewManager *)self allIconViews];
  v3 = [v14 bs_compactMap:&__block_literal_global_35];
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
          v11 = [v10 folder];
          v12 = [v11 firstList];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __37__SBHIconStylePreviewManager_prepare__block_invoke_2;
          v15[3] = &unk_1E808BFD8;
          v15[4] = self;
          v13 = [v12 directlyContainedIconsPassingTest:v15];
          [v4 addObjectsFromArray:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(SBHIconStylePreviewManager *)self setTintableIcons:v4];
}

- (BOOL)canTintIconSpecially:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else if ([v3 isApplicationIcon])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 isBookmarkIcon];
  }

  return v6;
}

- (void)applyImageStyleConfigurationToIconViews:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SBHIconStylePreviewManager *)self traitOverridableObjects];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) traitOverrides];
        v11 = objc_opt_self();
        [v10 setObject:v4 forTrait:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)updateUIWithImageStyleConfiguration:(id)a3
{
  v5 = a3;
  v4 = [v5 configurationType];
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      [(SBHIconStylePreviewManager *)self updateUIWithTintedImageStyleConfiguration:v5];
    }
  }

  else
  {
    [(SBHIconStylePreviewManager *)self updateUIWithNonTintedImageStyleConfiguration:v5];
  }
}

- (void)setImageStyleConfiguration:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    imageStyleConfiguration = self->_imageStyleConfiguration;
    self->_imageStyleConfiguration = v4;

    if (v6)
    {
      [(SBHIconStylePreviewManager *)self updateUIWithImageStyleConfiguration:v6];
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
  v4 = [(SBHIconStylePreviewManager *)self traitOverridableObjects];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) traitOverrides];
        [v9 removeTrait:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
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

- (void)enumerateIconViewsUsingBlock:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(SBHIconStylePreviewManager *)self iconListViews];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
  v15 = self;
  if (v6)
  {
    v7 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__SBHIconStylePreviewManager_enumerateIconViewsUsingBlock___block_invoke;
      v21[3] = &unk_1E808A830;
      v22 = v4;
      v23 = &v28;
      [v9 enumerateDisplayedIconViewsUsingBlock:v21];
      LOBYTE(v9) = *(v29 + 24);

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
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

    [(SBHIconStylePreviewManager *)v15 additionalIconViews];
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
        (*(v4 + 2))(v4, v14, &v16);
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

    v5 = v10;
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
  v2 = [(SBHIconStylePreviewManager *)self iconListViews];
  v3 = [v2 firstObject];
  v4 = [MEMORY[0x1E69DD1B8] sbh_highestLevelTraitCollectionForView:v3];
  v5 = [v4 userInterfaceStyle];

  return v5;
}

- (int64_t)userInterfaceStyleForAdditionalViewsOverrideForStyleConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 iconImageAppearanceWithUserInterfaceStyle:{-[SBHIconStylePreviewManager configurationUserInterfaceStyle](self, "configurationUserInterfaceStyle")}];

  v6 = [MEMORY[0x1E69DD1B8] sbh_userInterfaceStyleForIconImageAppearance:v5];
  return v6;
}

- (SBIconImageInfo)configurationIconImageInfo
{
  v3 = [(SBHIconStylePreviewManager *)self iconListViews];
  v4 = [v3 firstObject];
  v5 = [v4 layout];
  [v5 iconImageInfo];

  return result;
}

- (id)configurationIconImageAppearanceForIconImageStyleConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 iconImageAppearanceWithUserInterfaceStyle:{-[SBHIconStylePreviewManager configurationUserInterfaceStyle](self, "configurationUserInterfaceStyle")}];

  return v5;
}

- (void)informObserversOfPreviewGenerationWithDuration:(double)a3
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
          [v10 stylePreviewManager:self didGeneratePreviewsInDuration:a3];
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