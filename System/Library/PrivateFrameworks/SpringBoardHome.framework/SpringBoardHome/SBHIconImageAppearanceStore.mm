@interface SBHIconImageAppearanceStore
+ (SBIcon)defaultIcon;
- (BOOL)containsImage:(id)image;
- (BOOL)hasAnyImagesForIcon:(id)icon;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageEnumeratorForIcon:(id)icon;
- (id)imageForIcon:(id)icon appearance:(id)appearance;
- (id)imageForIcon:(id)icon appearanceType:(int64_t)type;
- (id)imageForIcon:(id)icon compatibleWithTraitCollection:(id)collection;
- (id)imagesForAppearance:(id)appearance createIfNecessary:(BOOL)necessary;
- (id)imagesForAppearanceType:(int64_t)type createIfNecessary:(BOOL)necessary;
- (id)imagesForTraitCollection:(id)collection createIfNecessary:(BOOL)necessary;
- (id)succinctDescription;
- (unint64_t)numberOfCachedImages;
- (unint64_t)numberOfCachedImagesForAppearance:(id)appearance;
- (unint64_t)numberOfCachedImagesForAppearanceType:(int64_t)type;
- (void)appendDescriptionToStream:(id)stream;
- (void)enumerateImageCachesUsingBlock:(id)block;
- (void)enumerateImagesForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateImagesUsingBlock:(id)block;
- (void)removeAllImagesForAppearance:(id)appearance;
- (void)removeAllImagesForAppearancesOtherThanAppearances:(id)appearances;
- (void)removeAllImagesForIcon:(id)icon;
- (void)removeAllImagesForIcon:(id)icon appearance:(id)appearance;
- (void)removeAllImagesForIcons:(id)icons;
- (void)removeImageForIcon:(id)icon appearance:(id)appearance;
- (void)removeImageForIcon:(id)icon traitCollection:(id)collection;
- (void)removeImageForIconIdentifier:(id)identifier appearance:(id)appearance;
- (void)setImage:(id)image forIcon:(id)icon appearance:(id)appearance;
- (void)setImage:(id)image forIcon:(id)icon traitCollection:(id)collection;
@end

@implementation SBHIconImageAppearanceStore

+ (SBIcon)defaultIcon
{
  if (defaultIcon_onceToken != -1)
  {
    +[SBHIconImageAppearanceStore defaultIcon];
  }

  v3 = defaultIcon_defaultIcon;

  return v3;
}

uint64_t __42__SBHIconImageAppearanceStore_defaultIcon__block_invoke()
{
  defaultIcon_defaultIcon = objc_alloc_init(SBIcon);

  return MEMORY[0x1EEE66BB8]();
}

- (id)imageForIcon:(id)icon compatibleWithTraitCollection:(id)collection
{
  iconCopy = icon;
  sbh_iconImageAppearance = [collection sbh_iconImageAppearance];
  v8 = [(SBHIconImageAppearanceStore *)self imageForIcon:iconCopy appearance:sbh_iconImageAppearance];

  return v8;
}

- (id)imageForIcon:(id)icon appearance:(id)appearance
{
  appearanceCopy = appearance;
  v7 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:icon];
  v8 = [(SBHIconImageAppearanceStore *)self imagesForAppearance:appearanceCopy createIfNecessary:0];
  v9 = [v8 objectForKey:v7];
  if (SBHIconImageAppearanceTypeHasTintColor([appearanceCopy appearanceType]))
  {
    [(SBHIconImageAppearanceStore *)v9 imageForIcon:appearanceCopy appearance:&v11];
    v9 = v11;
  }

  return v9;
}

- (id)imageForIcon:(id)icon appearanceType:(int64_t)type
{
  v6 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:icon];
  v7 = [(SBHIconImageAppearanceStore *)self imagesForAppearanceType:type createIfNecessary:0];
  v8 = [v7 objectForKey:v6];
  if (SBHIconImageAppearanceTypeHasTintColor(type))
  {
    if (v8)
    {
      v9 = v8[1];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v8 = v10;
  }

  return v8;
}

- (void)setImage:(id)image forIcon:(id)icon traitCollection:(id)collection
{
  iconCopy = icon;
  imageCopy = image;
  sbh_iconImageAppearance = [collection sbh_iconImageAppearance];
  [(SBHIconImageAppearanceStore *)self setImage:imageCopy forIcon:iconCopy appearance:sbh_iconImageAppearance];
}

- (void)setImage:(id)image forIcon:(id)icon appearance:(id)appearance
{
  imageCopy = image;
  appearanceCopy = appearance;
  v9 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:icon];
  v10 = [(SBHIconImageAppearanceStore *)self imagesForAppearance:appearanceCopy createIfNecessary:1];
  if (SBHIconImageAppearanceTypeHasTintColor([appearanceCopy appearanceType]))
  {
    v11 = [[SBHIconImageAppearanceStoreTintedValue alloc] initWithValue:imageCopy imageAppearance:appearanceCopy];
  }

  else
  {
    v11 = imageCopy;
  }

  v12 = v11;
  [v10 setObject:v11 forKey:v9];
}

- (void)removeImageForIcon:(id)icon traitCollection:(id)collection
{
  iconCopy = icon;
  sbh_iconImageAppearance = [collection sbh_iconImageAppearance];
  [(SBHIconImageAppearanceStore *)self removeImageForIcon:iconCopy appearance:sbh_iconImageAppearance];
}

- (void)removeImageForIcon:(id)icon appearance:(id)appearance
{
  appearanceCopy = appearance;
  v8 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:icon];
  v7 = [(SBHIconImageAppearanceStore *)self imagesForAppearance:appearanceCopy createIfNecessary:0];

  [v7 removeObjectForKey:v8];
}

- (void)removeImageForIconIdentifier:(id)identifier appearance:(id)appearance
{
  identifierCopy = identifier;
  v7 = [(SBHIconImageAppearanceStore *)self imagesForAppearance:appearance createIfNecessary:0];
  [v7 removeObjectForKey:identifierCopy];
}

- (void)removeAllImagesForIcon:(id)icon
{
  v4 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:icon];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SBHIconImageAppearanceStore_removeAllImagesForIcon___block_invoke;
  v6[3] = &unk_1E808D150;
  v7 = v4;
  v5 = v4;
  [(SBHIconImageAppearanceStore *)self enumerateImageCachesUsingBlock:v6];
}

- (void)removeAllImagesForIcons:(id)icons
{
  v14 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [iconsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(iconsCopy);
        }

        [(SBHIconImageAppearanceStore *)self removeAllImagesForIcon:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [iconsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAllImagesForIcon:(id)icon appearance:(id)appearance
{
  appearanceCopy = appearance;
  v7 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:icon];
  appearanceType = [appearanceCopy appearanceType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__SBHIconImageAppearanceStore_removeAllImagesForIcon_appearance___block_invoke;
  v11[3] = &unk_1E808D178;
  v13 = appearanceCopy;
  v14 = appearanceType;
  v12 = v7;
  v9 = appearanceCopy;
  v10 = v7;
  [(SBHIconImageAppearanceStore *)self enumerateImageCachesUsingBlock:v11];
}

uint64_t __65__SBHIconImageAppearanceStore_removeAllImagesForIcon_appearance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  HasTintColor = SBHIconImageAppearanceTypeHasTintColor(a3);
  if (*(a1 + 48) == a3 && (HasTintColor & 1) == 0)
  {
    HasTintColor = [v8 removeObjectForKey:*(a1 + 32)];
LABEL_4:
    v6 = v8;
    goto LABEL_6;
  }

  v6 = v8;
  if (HasTintColor)
  {
    __65__SBHIconImageAppearanceStore_removeAllImagesForIcon_appearance___block_invoke_cold_1(a1, v8);
    goto LABEL_4;
  }

LABEL_6:

  return MEMORY[0x1EEE66BB8](HasTintColor, v6);
}

- (void)removeAllImagesForAppearance:(id)appearance
{
  v3 = [(SBHIconImageAppearanceStore *)self imagesForAppearance:appearance createIfNecessary:0];
  [v3 removeAllObjects];
}

- (void)removeAllImagesForAppearancesOtherThanAppearances:(id)appearances
{
  appearancesCopy = appearances;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__SBHIconImageAppearanceStore_removeAllImagesForAppearancesOtherThanAppearances___block_invoke;
  v6[3] = &unk_1E808D150;
  v7 = appearancesCopy;
  v5 = appearancesCopy;
  [(SBHIconImageAppearanceStore *)self enumerateImageCachesUsingBlock:v6];
}

void __81__SBHIconImageAppearanceStore_removeAllImagesForAppearancesOtherThanAppearances___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__SBHIconImageAppearanceStore_removeAllImagesForAppearancesOtherThanAppearances___block_invoke_2;
  v9[3] = &unk_1E808D1A0;
  v12 = a3;
  v10 = *(a1 + 32);
  v11 = v7;
  v8 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  [v6 removeObjectsForKeys:v8];
}

void __81__SBHIconImageAppearanceStore_removeAllImagesForAppearancesOtherThanAppearances___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (SBHIconImageAppearanceTypeHasTintColor(*(a1 + 48)))
  {
    if (v5)
    {
      v6 = v5[2];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = [SBHIconImageAppearance sharedInstanceForAppearanceType:*(a1 + 48)];
  }

  v8 = v7;
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    [*(a1 + 40) addObject:v9];
  }
}

- (BOOL)hasAnyImagesForIcon:(id)icon
{
  iconCopy = icon;
  v5 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:iconCopy];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SBHIconImageAppearanceStore_hasAnyImagesForIcon___block_invoke;
  v8[3] = &unk_1E808D1C8;
  v6 = v5;
  v9 = v6;
  v10 = &v11;
  [(SBHIconImageAppearanceStore *)self enumerateImageCachesUsingBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __51__SBHIconImageAppearanceStore_hasAnyImagesForIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 objectForKey:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)containsImage:(id)image
{
  imageCopy = image;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SBHIconImageAppearanceStore_containsImage___block_invoke;
  v7[3] = &unk_1E808D1F0;
  v5 = imageCopy;
  v8 = v5;
  v9 = &v10;
  [(SBHIconImageAppearanceStore *)self enumerateImagesUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __45__SBHIconImageAppearanceStore_containsImage___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)enumerateImagesForIcon:(id)icon usingBlock:(id)block
{
  blockCopy = block;
  v7 = [(SBHIconImageAppearanceStore *)self _cacheKeyForIcon:icon];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SBHIconImageAppearanceStore_enumerateImagesForIcon_usingBlock___block_invoke;
  v10[3] = &unk_1E808D218;
  v11 = v7;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = v7;
  [(SBHIconImageAppearanceStore *)self enumerateImageCachesUsingBlock:v10];
}

void __65__SBHIconImageAppearanceStore_enumerateImagesForIcon_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:*(a1 + 32)];
  if (v5)
  {
    v9 = v5;
    if (SBHIconImageAppearanceTypeHasTintColor(a3))
    {
      v6 = v9[2];
      v7 = v9[1];

      v8 = v7;
    }

    else
    {
      v6 = [SBHIconImageAppearance sharedInstanceForAppearanceType:a3];
      v8 = v9;
    }

    v10 = v8;
    (*(*(a1 + 40) + 16))();
  }
}

- (id)imageEnumeratorForIcon:(id)icon
{
  v4 = MEMORY[0x1E695DF70];
  iconCopy = icon;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__SBHIconImageAppearanceStore_imageEnumeratorForIcon___block_invoke;
  v16 = &unk_1E808D240;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  [(SBHIconImageAppearanceStore *)self enumerateImagesForIcon:iconCopy usingBlock:&v13];

  v10 = [SBHIconImageAppearanceStoreImageEnumerator alloc];
  v11 = [(SBHIconImageAppearanceStoreImageEnumerator *)v10 initWithImages:v9 appearances:v8, v13, v14, v15, v16];

  return v11;
}

void __54__SBHIconImageAppearanceStore_imageEnumeratorForIcon___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

- (void)enumerateImagesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBHIconImageAppearanceStore_enumerateImagesUsingBlock___block_invoke;
  v6[3] = &unk_1E808D290;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SBHIconImageAppearanceStore *)self enumerateImageCachesUsingBlock:v6];
}

void __57__SBHIconImageAppearanceStore_enumerateImagesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBHIconImageAppearanceStore_enumerateImagesUsingBlock___block_invoke_2;
  v6[3] = &unk_1E808D268;
  v8 = a3;
  v7 = *(a1 + 32);
  v9 = a4;
  [a2 enumerateKeysAndObjectsUsingBlock:v6];
}

void __57__SBHIconImageAppearanceStore_enumerateImagesUsingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = a2;
  if (SBHIconImageAppearanceTypeHasTintColor(v6))
  {
    if (v5)
    {
      v8 = v5[2];
      v9 = v5[1];
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v10 = v9;

    v5 = v10;
  }

  else
  {
    v8 = [SBHIconImageAppearance sharedInstanceForAppearanceType:*(a1 + 40)];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)imagesForTraitCollection:(id)collection createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  sbh_iconImageAppearance = [collection sbh_iconImageAppearance];
  v7 = [(SBHIconImageAppearanceStore *)self imagesForAppearance:sbh_iconImageAppearance createIfNecessary:necessaryCopy];

  return v7;
}

- (id)imagesForAppearance:(id)appearance createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  appearanceType = [appearance appearanceType];

  return [(SBHIconImageAppearanceStore *)self imagesForAppearanceType:appearanceType createIfNecessary:necessaryCopy];
}

- (id)imagesForAppearanceType:(int64_t)type createIfNecessary:(BOOL)necessary
{
  v5 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        darkImages = self->_darkImages;
        p_darkImages = &self->_darkImages;
        v6 = darkImages;
        if (darkImages)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_26;
        }

        clearLightImages = self->_clearLightImages;
        p_darkImages = &self->_clearLightImages;
        v6 = clearLightImages;
        if (clearLightImages)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      lightImages = self->_lightImages;
      p_darkImages = &self->_lightImages;
      v6 = lightImages;
      if (lightImages)
      {
        goto LABEL_25;
      }
    }
  }

  else if (type > 4)
  {
    if (type != 5)
    {
      if (type != 6)
      {
        goto LABEL_26;
      }

      tintableImages = self->_tintableImages;
      p_darkImages = &self->_tintableImages;
      v6 = tintableImages;
      if (!tintableImages && necessary)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    tintedDarkImages = self->_tintedDarkImages;
    p_darkImages = &self->_tintedDarkImages;
    v6 = tintedDarkImages;
    if (tintedDarkImages)
    {
      goto LABEL_25;
    }
  }

  else if (type == 3)
  {
    clearDarkImages = self->_clearDarkImages;
    p_darkImages = &self->_clearDarkImages;
    v6 = clearDarkImages;
    if (clearDarkImages)
    {
      goto LABEL_25;
    }
  }

  else
  {
    tintedLightImages = self->_tintedLightImages;
    p_darkImages = &self->_tintedLightImages;
    v6 = tintedLightImages;
    if (tintedLightImages)
    {
      goto LABEL_25;
    }
  }

  if (necessary)
  {
LABEL_24:
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = *p_darkImages;
    *p_darkImages = v15;

    v6 = *p_darkImages;
  }

LABEL_25:
  v5 = v6;
LABEL_26:

  return v5;
}

- (void)enumerateImageCachesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  v13 = 0;
  lightImages = self->_lightImages;
  if (!lightImages || ((*(blockCopy + 2))(blockCopy, lightImages, 0, &v13), (v13 & 1) == 0))
  {
    darkImages = self->_darkImages;
    if (!darkImages || ((v5)[2](v5, darkImages, 1, &v13), (v13 & 1) == 0))
    {
      clearLightImages = self->_clearLightImages;
      if (!clearLightImages || ((v5)[2](v5, clearLightImages, 2, &v13), (v13 & 1) == 0))
      {
        clearDarkImages = self->_clearDarkImages;
        if (!clearDarkImages || ((v5)[2](v5, clearDarkImages, 3, &v13), (v13 & 1) == 0))
        {
          tintedLightImages = self->_tintedLightImages;
          if (!tintedLightImages || ((v5)[2](v5, tintedLightImages, 4, &v13), (v13 & 1) == 0))
          {
            tintedDarkImages = self->_tintedDarkImages;
            if (!tintedDarkImages || ((v5)[2](v5, tintedDarkImages, 5, &v13), (v13 & 1) == 0))
            {
              tintableImages = self->_tintableImages;
              if (tintableImages)
              {
                (v5)[2](v5, tintableImages, 6, &v13);
              }
            }
          }
        }
      }
    }
  }
}

- (unint64_t)numberOfCachedImages
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SBHIconImageAppearanceStore_numberOfCachedImages__block_invoke;
  v4[3] = &unk_1E808D2B8;
  v4[4] = &v5;
  [(SBHIconImageAppearanceStore *)self enumerateImageCachesUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __51__SBHIconImageAppearanceStore_numberOfCachedImages__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)numberOfCachedImagesForAppearance:(id)appearance
{
  v3 = [(SBHIconImageAppearanceStore *)self imagesForAppearance:appearance createIfNecessary:0];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)numberOfCachedImagesForAppearanceType:(int64_t)type
{
  v3 = [(SBHIconImageAppearanceStore *)self imagesForAppearanceType:type createIfNecessary:0];
  v4 = [v3 count];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_lightImages mutableCopyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSMutableDictionary *)self->_darkImages mutableCopyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSMutableDictionary *)self->_clearLightImages mutableCopyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [(NSMutableDictionary *)self->_clearDarkImages mutableCopyWithZone:zone];
    v13 = v5[4];
    v5[4] = v12;

    v14 = [(NSMutableDictionary *)self->_tintedLightImages mutableCopyWithZone:zone];
    v15 = v5[5];
    v5[5] = v14;

    v16 = [(NSMutableDictionary *)self->_tintedDarkImages mutableCopyWithZone:zone];
    v17 = v5[6];
    v5[6] = v16;

    v18 = [(NSMutableDictionary *)self->_tintableImages mutableCopyWithZone:zone];
    v19 = v5[7];
    v5[7] = v18;

    v20 = v5;
  }

  return v5;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBHIconImageAppearanceStore_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

id __57__SBHIconImageAppearanceStore_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 8) withName:{"count"), @"lightImages"}];
  v3 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 16) withName:{"count"), @"darkImages"}];
  v4 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 24) withName:{"count"), @"clearLightImages"}];
  v5 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 32) withName:{"count"), @"clearDarkImages"}];
  v6 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 40) withName:{"count"), @"tintedLightImages"}];
  v7 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 48) withName:{"count"), @"tintedDarkImages"}];
  return [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 56) withName:{"count"), @"tintableImages"}];
}

- (void)imageForIcon:(void *)a3 appearance:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v9 = v4;
  if (v4)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (BSEqualObjects())
  {
    if (v9)
    {
      v7 = v9[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void __65__SBHIconImageAppearanceStore_removeAllImagesForIcon_appearance___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:*(a1 + 32)];
  v7 = v4;
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (BSEqualObjects())
  {
    [a2 removeObjectForKey:*(a1 + 32)];
  }
}

@end