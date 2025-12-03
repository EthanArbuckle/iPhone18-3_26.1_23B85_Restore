@interface SBHIconImageVariantCache
- (BOOL)_canPoolImageForIcon:(id)icon;
- (BOOL)hasCachingRequestsStillDoingWork;
- (BOOL)hasOtherCachedIconsForIcon:(id)icon;
- (BOOL)isIconFailed:(id)failed;
- (id)_iconImageOfSize:(CGSize)size scale:(double)scale failGracefully:(BOOL)gracefully drawing:(id)drawing;
- (id)_pooledIconImageForIconImage:(id)image icon:(id)icon allowingOptOut:(BOOL)out;
- (id)_tintedImageFromTintableImageForIcon:(id)icon imageAppearance:(id)appearance;
- (id)_variantDescription;
- (id)_variantImageForIcon:(id)icon imageAppearance:(id)appearance context:(id)context extraImageOptions:(unint64_t)options options:(unint64_t)a7;
- (id)_variantImageForIcon:(id)icon imageAppearance:(id)appearance extraImageOptions:(unint64_t)options options:(unint64_t)a6;
- (id)attemptToBecomeActiveRequest:(id)request;
- (id)cachedImageForIcon:(void *)icon imageAppearance:(char)appearance options:;
- (id)cachingPlaceholderImageWithImageAppearance:(char)appearance options:;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)genericImageWithImageAppearance:(char)appearance options:;
- (id)iconImagesMemoryPool;
- (id)imageForIcon:(void *)icon imageAppearance:(uint64_t)appearance options:;
- (id)memoryMappedIconImageOfSize:(CGSize)size scale:(double)scale withDrawing:(id)drawing;
- (id)realImageForIcon:(void *)icon imageAppearance:(uint64_t)appearance options:;
- (id)succinctDescription;
- (int64_t)effectivePriorityForPriority:(int64_t)priority;
- (uint64_t)cancelAllCachingRequests;
- (uint64_t)isCachingImageForIcon:(uint64_t)icon;
- (unint64_t)currentImageGenerationForIcon:(id)icon;
- (unint64_t)imageRetrievalOptions;
- (unint64_t)storedImageGenerationForIcon:(id)icon imageAppearance:(id)appearance;
- (void)_lock_addCachedIcon:(id)icon;
- (void)_lock_removeCachedIcon:(id)icon;
- (void)_lock_setStoredImageGeneration:(unint64_t)generation forIcon:(id)icon imageAppearance:(id)appearance;
- (void)addCachedIcon:(id)icon;
- (void)cacheImage:(id)image forIcon:(id)icon imageAppearance:(id)appearance imageGeneration:(unint64_t)generation;
- (void)cacheImage:(void *)image forIcon:(void *)icon imageAppearance:;
- (void)cacheImageForIcon:(void *)icon imageAppearance:(void *)appearance priority:(void *)priority reason:(void *)reason options:(void *)options cancellation:(void *)cancellation completionHandler:;
- (void)cleanUpCachingRequest:(id)request;
- (void)clearActiveRequest:(id)request;
- (void)finishBackgroundCacheWorkForCachingRequest:(id)request;
- (void)finishBackgroundCacheWorkForCancelledCachingRequest:(id)request;
- (void)fulfillRealGenericImage:(id)image forImageAppearance:(id)appearance;
- (void)initWithVariant:(double)variant iconImageInfo:(double)info;
- (void)markIconAsFailed:(id)failed;
- (void)performBackgroundCacheWorkForCachingRequest:(id)request;
- (void)performSynchronousCacheRequest:(id)request;
- (void)purgeAllCachedImages;
- (void)purgeAllCachedImagesForAppearancesOtherThanAppearances:(uint64_t)appearances;
- (void)purgeCachedImagesForIcons:(uint64_t)icons;
- (void)recacheImagesForIcon:(void *)icon completionGroup:;
- (void)removeAllCachedIcons;
- (void)removeAllStoredImageGenerations;
- (void)removeCachedIcon:(id)icon;
- (void)removeStoredImageGenerationForIcon:(id)icon imageAppearance:(id)appearance;
- (void)removeStoredImageGenerationForIcons:(id)icons;
- (void)resetFailedStatusForIcon:(os_unfair_lock_s *)icon;
- (void)setStoredImageGeneration:(unint64_t)generation forIcon:(id)icon imageAppearance:(id)appearance;
- (void)submitRequest:(id *)request;
@end

@implementation SBHIconImageVariantCache

- (id)cachedImageForIcon:(void *)icon imageAppearance:(char)appearance options:
{
  v7 = a2;
  iconCopy = icon;
  v9 = 0;
  if (!self || (appearance & 8) != 0)
  {
    goto LABEL_15;
  }

  if (([v7 hasExternalIconCaching] & 1) == 0)
  {
    os_unfair_lock_lock((self + 72));
    v9 = [*(self + 8) imageForIcon:v7 appearance:iconCopy];
    os_unfair_lock_unlock((self + 72));
    if (v9)
    {
      if ((appearance & 0x20) == 0)
      {
        goto LABEL_15;
      }

LABEL_6:
      v10 = [self storedImageGenerationForIcon:v7 imageAppearance:iconCopy];
      WeakRetained = objc_loadWeakRetained((self + 88));
      if ([WeakRetained currentImageGenerationForIcon:v7] > v10)
      {

        v9 = 0;
      }

      goto LABEL_15;
    }
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0 && !objc_msgSend(v7, "canGenerateIconsInBackground"))
  {
    v9 = 0;
    goto LABEL_15;
  }

  v9 = [self _variantImageForIcon:v7 imageAppearance:iconCopy extraImageOptions:2 options:0];
  if (v9)
  {
    [(SBHIconImageVariantCache *)self cacheImage:v9 forIcon:v7 imageAppearance:iconCopy];
    if ((appearance & 0x20) != 0)
    {
      goto LABEL_6;
    }
  }

LABEL_15:

  return v9;
}

- (void)cacheImage:(id)image forIcon:(id)icon imageAppearance:(id)appearance imageGeneration:(unint64_t)generation
{
  imageCopy = image;
  iconCopy = icon;
  appearanceCopy = appearance;
  if (([iconCopy hasExternalIconCaching] & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    [(SBHIconImageAppearanceStore *)self->_images setImage:imageCopy forIcon:iconCopy appearance:appearanceCopy];
    [(SBHIconImageVariantCache *)self _lock_addCachedIcon:iconCopy];
    [(SBHIconImageVariantCache *)self _lock_resetFailedStatusForIcon:iconCopy];
    [(SBHIconImageVariantCache *)self _lock_setStoredImageGeneration:generation forIcon:iconCopy imageAppearance:appearanceCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

uint64_t __117__SBHIconImageVariantCache_cacheImageForIcon_imageAppearance_priority_reason_options_cancellation_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)performSynchronousCacheRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    v6 = requestCopy[5];
    v7 = v5[8];
    v8 = v5[16];
    v9 = v5[10];
    v10 = v5[13];
    v21 = v5[9];
  }

  else
  {
    [SBHIconImageVariantCache performSynchronousCacheRequest:];
    v10 = 0;
    v8 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v21 = 0;
  }

  v11 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:v6];
  _variantDescription = [(SBHIconImageVariantCache *)self _variantDescription];
  v22 = v7;
  v13 = [(SBHIconImageVariantCache *)self _variantImageForIcon:v6 imageAppearance:v7 context:v9 extraImageOptions:0 options:v10];
  if (v13)
  {
    v14 = v9;
    v15 = v11;
    v16 = [(SBHIconImageVariantCache *)self pooledIconImageForMappedIconImage:v13 icon:v6];
    v17 = SBLogIconImageCache();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [SBHIconImageVariantCache performSynchronousCacheRequest:];
      }

      [(SBHIconImageVariantCache *)self cacheImage:v16 forIcon:v6 imageAppearance:v22 imageGeneration:v21];
      v11 = v15;
    }

    else
    {
      v11 = v15;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v25 = _variantDescription;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "Could not pool %{public}@ image for icon in foreground with key: %@", buf, 0x16u);
      }
    }

    v9 = v14;
    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_13:
    v8[2](v8, 2);
    goto LABEL_14;
  }

  if ([objc_opt_class() hasIconImage])
  {
    v19 = SBLogIconImageCache();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v25 = _variantDescription;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_INFO, "Could not make %{public}@ image for icon in foreground with key: %@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(SBHIconImageAppearanceStore *)self->_images removeAllImagesForIcon:v6];
    [(SBHIconImageVariantCache *)self _lock_markIconAsFailed:v6];
    v23 = v6;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [(SBHIconImageVariantCache *)self _lock_removeStoredImageGenerationForIcons:v20];

    [(SBHIconImageVariantCache *)self _lock_removeCachedIcon:v6];
    os_unfair_lock_unlock(&self->_lock);
  }

  if (v8)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (BOOL)isIconFailed:(id)failed
{
  failedCopy = failed;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_failedIcons containsObject:failedCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)markIconAsFailed:(id)failed
{
  failedCopy = failed;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_markIconAsFailed:failedCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStoredImageGeneration:(unint64_t)generation forIcon:(id)icon imageAppearance:(id)appearance
{
  v18 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  v10 = SBLogIconImageCache();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [iconCopy uniqueIdentifier];
    v12 = 138412802;
    v13 = uniqueIdentifier;
    v14 = 2114;
    v15 = appearanceCopy;
    v16 = 2048;
    generationCopy = generation;
    _os_log_debug_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEBUG, "changing stored image generation for %@/%{public}@ to %lu", &v12, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_setStoredImageGeneration:generation forIcon:iconCopy imageAppearance:appearanceCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setStoredImageGeneration:(unint64_t)generation forIcon:(id)icon imageAppearance:(id)appearance
{
  storedImageGenerations = self->_storedImageGenerations;
  v8 = MEMORY[0x1E696AD98];
  appearanceCopy = appearance;
  iconCopy = icon;
  v11 = [v8 numberWithUnsignedInteger:generation];
  [(SBHIconImageAppearanceStore *)storedImageGenerations setImage:v11 forIcon:iconCopy appearance:appearanceCopy];
}

- (unint64_t)storedImageGenerationForIcon:(id)icon imageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  iconCopy = icon;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(SBHIconImageAppearanceStore *)self->_storedImageGenerations imageForIcon:iconCopy appearance:appearanceCopy];

  os_unfair_lock_unlock(&self->_lock);
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)removeStoredImageGenerationForIcon:(id)icon imageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  iconCopy = icon;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageAppearanceStore *)self->_storedImageGenerations removeImageForIcon:iconCopy appearance:appearanceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeStoredImageGenerationForIcons:(id)icons
{
  iconsCopy = icons;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_removeStoredImageGenerationForIcons:iconsCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllStoredImageGenerations
{
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageAppearanceStore *)self->_storedImageGenerations removeAllImages];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addCachedIcon:(id)icon
{
  iconCopy = icon;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_addCachedIcon:iconCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_addCachedIcon:(id)icon
{
  iconCopy = icon;
  v4 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:?];
  weakObjectsHashTable = [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier objectForKey:v4];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier setObject:weakObjectsHashTable forKey:v4];
  }

  [weakObjectsHashTable addObject:iconCopy];
}

- (BOOL)hasOtherCachedIconsForIcon:(id)icon
{
  iconCopy = icon;
  v5 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:iconCopy];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier objectForKey:v5];
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 count];
  v8 = [v6 containsObject:iconCopy];

  return v7 != v8;
}

- (void)removeCachedIcon:(id)icon
{
  iconCopy = icon;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_removeCachedIcon:iconCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_removeCachedIcon:(id)icon
{
  iconCopy = icon;
  v6 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:iconCopy];
  v5 = [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier objectForKey:v6];
  [v5 removeObject:iconCopy];
}

- (void)removeAllCachedIcons
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

void __68__SBHIconImageVariantCache_genericImageWithImageAppearance_options___block_invoke(uint64_t a1)
{
  v2 = [SBHIconImageCache realGenericImageWithInfo:*(a1 + 32) imageAppearance:*(a1 + 80) options:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SBHIconImageVariantCache_genericImageWithImageAppearance_options___block_invoke_2;
    block[3] = &unk_1E8088F88;
    block[4] = *(a1 + 40);
    v5 = v2;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)fulfillRealGenericImage:(id)image forImageAppearance:(id)appearance
{
  v27 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  appearanceCopy = appearance;
  BSDispatchQueueAssertMain();
  v8 = +[SBHIconImageAppearanceStore defaultIcon];
  v9 = [(SBHIconImageAppearanceStore *)self->_genericImages imageForIcon:v8 appearance:appearanceCopy];

  if (!v9)
  {
    [(SBHIconImageAppearanceStore *)self->_genericImages setImage:imageCopy forIcon:v8 appearance:appearanceCopy];
  }

  v10 = [(SBHIconImageAppearanceStore *)self->_iconsUsingFallbackGenericImage imageForIcon:v8 appearance:appearanceCopy];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_iconImageCache);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      v19 = unk_1BEE85490;
      v20 = xmmword_1BEE85480;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v21[0] = v20;
          v21[1] = v19;
          [WeakRetained notifyObserversOfUpdateForIcon:v17 imageAppearance:appearanceCopy context:{v21, v19, v20}];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [(SBHIconImageAppearanceStore *)self->_iconsUsingFallbackGenericImage removeImageForIcon:v8 appearance:appearanceCopy];
    if (![(SBHIconImageAppearanceStore *)self->_iconsUsingFallbackGenericImage hasAnyImagesForIcon:v8])
    {
      iconsUsingFallbackGenericImage = self->_iconsUsingFallbackGenericImage;
      self->_iconsUsingFallbackGenericImage = 0;
    }
  }
}

- (id)_variantImageForIcon:(id)icon imageAppearance:(id)appearance extraImageOptions:(unint64_t)options options:(unint64_t)a6
{
  appearanceCopy = appearance;
  iconCopy = icon;
  imageLoadContext = [iconCopy imageLoadContext];
  v13 = [(SBHIconImageVariantCache *)self _variantImageForIcon:iconCopy imageAppearance:appearanceCopy context:imageLoadContext extraImageOptions:options options:a6];

  return v13;
}

- (id)_variantImageForIcon:(id)icon imageAppearance:(id)appearance context:(id)context extraImageOptions:(unint64_t)options options:(unint64_t)a7
{
  iconCopy = icon;
  appearanceCopy = appearance;
  contextCopy = context;
  HasTintColor = SBHIconImageAppearanceTypeHasTintColor([appearanceCopy appearanceType]);
  if ((options & 2) != 0 || !HasTintColor || ([(SBHIconImageVariantCache *)self _tintedImageFromTintableImageForIcon:iconCopy imageAppearance:appearanceCopy], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:appearanceCopy];
    if (self)
    {
      width = self->_iconImageInfo.size.width;
      height = self->_iconImageInfo.size.height;
      scale = self->_iconImageInfo.scale;
      continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
    }

    else
    {
      height = 0.0;
      scale = 0.0;
      continuousCornerRadius = 0.0;
      width = 0.0;
    }

    iconImageOptions = [(SBHIconImageVariantCache *)self iconImageOptions];
    mach_continuous_time();
    v15 = [iconCopy iconImageWithInfo:v16 traitCollection:contextCopy context:iconImageOptions | options options:{width, height, scale, continuousCornerRadius}];
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v23 = v22;
    v24 = SBLogIconImageCache();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [SBHIconImageVariantCache _variantImageForIcon:v24 imageAppearance:v23 context:v25 extraImageOptions:v26 options:?];
    }
  }

  return v15;
}

- (id)_tintedImageFromTintableImageForIcon:(id)icon imageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  iconCopy = icon;
  v8 = +[SBHIconImageAppearance tintableAppearance];
  v9 = [(SBHIconImageVariantCache *)self cachedImageForIcon:iconCopy imageAppearance:v8 options:0];

  if (v9)
  {
    tintColor = [appearanceCopy tintColor];
    mach_continuous_time();
    v11 = SBHTintedImageFromTintableImage(v9, tintColor);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v13 = v12;
    v14 = SBLogIconImageCache();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(SBHIconImageVariantCache *)v14 _tintedImageFromTintableImageForIcon:v13 imageAppearance:v15, v16];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_variantDescription
{
  if (self && ((variant = self->_variant, variant != 1) ? (v3 = 0) : (v3 = @"ummasked"), variant))
  {
    return v3;
  }

  else
  {
    return @"masked";
  }
}

- (id)_iconImageOfSize:(CGSize)size scale:(double)scale failGracefully:(BOOL)gracefully drawing:(id)drawing
{
  gracefullyCopy = gracefully;
  height = size.height;
  width = size.width;
  v22 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  iconImagesMemoryPool = [(SBHIconImageVariantCache *)self iconImagesMemoryPool];
  if (gracefullyCopy && (v13 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:width withContextType:{height, scale}], v13 > objc_msgSend(iconImagesMemoryPool, "slotLength")))
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24.width = width;
      v24.height = height;
      v15 = NSStringFromCGSize(v24);
      v18 = 138543618;
      v19 = v15;
      v20 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "color context with dimensions %{public}@ @%fx does not fit in 'iconImages' memory pool - returning nil", &v18, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:0 scale:iconImagesMemoryPool type:drawingCopy pool:width drawing:{height, scale}];
  }

  return v16;
}

- (id)memoryMappedIconImageOfSize:(CGSize)size scale:(double)scale withDrawing:(id)drawing
{
  height = size.height;
  width = size.width;
  drawingCopy = drawing;
  scale = [(SBHIconImageVariantCache *)self _iconImageOfSize:1 scale:drawingCopy failGracefully:width drawing:height, scale];
  v11 = scale;
  if (scale)
  {
    v12 = scale;
  }

  else
  {
    v12 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:0 scale:0 type:drawingCopy pool:width drawing:{height, scale}];
  }

  v13 = v12;

  return v13;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconImageVariantCache *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconImageVariantCache *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconImageVariantCache *)self succinctDescriptionBuilder];
  _variantDescription = [(SBHIconImageVariantCache *)self _variantDescription];
  v6 = [succinctDescriptionBuilder appendObject:_variantDescription withName:@"variant"];

  if (self)
  {
    scale = self->_iconImageInfo.scale;
    v8 = [succinctDescriptionBuilder appendSize:@"imageSize" withName:{self->_iconImageInfo.size.width, self->_iconImageInfo.size.height}];
    v9 = [succinctDescriptionBuilder appendFloat:@"imageScale" withName:scale];
    v10 = [succinctDescriptionBuilder appendUnsignedInteger:-[SBHIconImageAppearanceStore numberOfCachedImages](self->_images withName:{"numberOfCachedImages"), @"cachedImageCount"}];
    v11 = [(NSHashTable *)self->_failedIcons count];
  }

  else
  {
    [SBHIconImageVariantCache descriptionBuilderWithMultilinePrefix:succinctDescriptionBuilder];
    v11 = 0;
  }

  v12 = [succinctDescriptionBuilder appendUnsignedInteger:v11 withName:@"failedIconsCount"];

  return succinctDescriptionBuilder;
}

- (void)initWithVariant:(double)variant iconImageInfo:(double)info
{
  if (!self)
  {
    return 0;
  }

  v24.receiver = self;
  v24.super_class = SBHIconImageVariantCache;
  v11 = objc_msgSendSuper2(&v24, sel_init);
  v12 = v11;
  if (v11)
  {
    v11[10] = a2;
    *(v11 + 12) = variant;
    *(v11 + 13) = info;
    *(v11 + 14) = a5;
    *(v11 + 15) = a6;
    *(v11 + 18) = 0;
    v13 = objc_alloc_init(SBHIconImageAppearanceStore);
    v14 = v12[1];
    v12[1] = v13;

    v15 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    v16 = v12[2];
    v12[2] = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = v12[3];
    v12[3] = v17;

    v19 = objc_alloc_init(SBHIconImageAppearanceStore);
    v20 = v12[4];
    v12[4] = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = v12[7];
    v12[7] = v21;
  }

  return v12;
}

- (id)imageForIcon:(void *)icon imageAppearance:(uint64_t)appearance options:
{
  v7 = a2;
  iconCopy = icon;
  if (self)
  {
    BSDispatchQueueAssertMain();
    WeakRetained = objc_loadWeakRetained((self + 88));
    OUTLINED_FUNCTION_4();
    v13 = [(SBHIconImageVariantCache *)v10 cachedImageForIcon:v11 imageAppearance:v12 options:appearance];
    v14 = v13;
    if ((appearance & 4) != 0 || v13)
    {
      v15 = v13;
    }

    else
    {
      OUTLINED_FUNCTION_4();
      v15 = [(SBHIconImageVariantCache *)v18 realImageForIcon:v19 imageAppearance:v20 options:appearance];
      if (!v15)
      {
        v21 = [objc_opt_class() canFallBackToLightImageForImageAppearance:iconCopy];
        if ((appearance & 0x10) != 0 || !v21 || (+[SBHIconImageAppearance defaultAppearance], v22 = objc_claimAutoreleasedReturnValue(), [(SBHIconImageVariantCache *)self cachedImageForIcon:v7 imageAppearance:v22 options:appearance], v16 = objc_claimAutoreleasedReturnValue(), v22, !v16))
        {
          if ([objc_opt_class() hasIconImage])
          {
            [(SBHIconImageVariantCache *)self isCachingImageForIcon:v7];
            v16 = [(SBHIconImageVariantCache *)self genericImageWithImageAppearance:iconCopy options:appearance];
            if (v16 && [SBHIconImageCache genericImageTypeForImage:v16]== 2)
            {
              if (!*(self + 64))
              {
                v23 = objc_alloc_init(SBHIconImageAppearanceStore);
                v24 = *(self + 64);
                *(self + 64) = v23;
              }

              v25 = +[SBHIconImageAppearanceStore defaultIcon];
              weakObjectsHashTable = [*(self + 64) imageForIcon:v25 appearance:iconCopy];
              if (!weakObjectsHashTable)
              {
                weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
              }

              [weakObjectsHashTable addObject:v7];
            }
          }

          else
          {
            v16 = 0;
          }
        }

        goto LABEL_6;
      }
    }

    v16 = v15;
LABEL_6:
    [OUTLINED_FUNCTION_5_0() beginObservingIconIfNecessary:?];

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (id)realImageForIcon:(void *)icon imageAppearance:(uint64_t)appearance options:
{
  v7 = a2;
  iconCopy = icon;
  if (self)
  {
    BSDispatchQueueAssertMain();
    WeakRetained = objc_loadWeakRetained((self + 88));
    OUTLINED_FUNCTION_4();
    v13 = [(SBHIconImageVariantCache *)v10 cachedImageForIcon:v11 imageAppearance:v12 options:appearance];
    if (v13)
    {
      iconImagesMemoryPool = [self iconImagesMemoryPool];
      if (iconImagesMemoryPool)
      {
        SBFPreheatImageData();
      }

      v15 = v13;
    }

    else
    {
      if (appearance & 4) != 0 || ([self isIconFailed:v7])
      {
        v15 = 0;
        goto LABEL_10;
      }

      v17 = [self currentImageGenerationForIcon:v7];
      v18 = *(self + 80);
      v19 = [objc_opt_class() optionsForRetrievalOptions:appearance];
      defaultPriority = [objc_opt_class() defaultPriority];
      v21 = [SBHIconImageCacheRequest alloc];
      OUTLINED_FUNCTION_4();
      iconImagesMemoryPool = [(SBHIconImageCacheRequest *)v22 initWithIcon:v23 imageAppearance:v24 priority:defaultPriority reason:v25 imageGeneration:v17 variant:v18 options:v19 sharedCancellation:0 iconImageCache:WeakRetained completionHandler:0];
      [(SBHIconImageVariantCache *)self submitRequest:iconImagesMemoryPool];
      OUTLINED_FUNCTION_4();
      v15 = [(SBHIconImageVariantCache *)v26 cachedImageForIcon:v27 imageAppearance:v28 options:appearance];
    }

LABEL_10:
    [OUTLINED_FUNCTION_5_0() beginObservingIconIfNecessary:?];

    goto LABEL_11;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)cacheImage:(void *)image forIcon:(void *)icon imageAppearance:
{
  v9 = a2;
  imageCopy = image;
  iconCopy = icon;
  if (self && ([imageCopy hasExternalIconCaching] & 1) == 0)
  {
    [self cacheImage:v9 forIcon:imageCopy imageAppearance:iconCopy imageGeneration:{objc_msgSend(OUTLINED_FUNCTION_9(), "currentImageGenerationForIcon:")}];
  }
}

- (void)submitRequest:(id *)request
{
  v3 = a2;
  v4 = v3;
  if (request)
  {
    if (v3)
    {
      v5 = v3[5];
      if ((v4[13] & 8) != 0)
      {
        goto LABEL_9;
      }

      v6 = v4[11];
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    if ([v5 canGenerateIconsInBackground])
    {
      [request[3] addObject:v4];
      WeakRetained = objc_loadWeakRetained(request + 11);
      if (!WeakRetained)
      {
        NSLog(&cfstr_MissingIconIma.isa);
      }

      v8 = [request effectivePriorityForPriority:v6];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__SBHIconImageVariantCache_submitRequest___block_invoke;
      v9[3] = &unk_1E8088F18;
      v9[4] = request;
      v10 = v4;
      [WeakRetained performBackgroundCachingActivityUsingPriority:v8 block:v9];

      goto LABEL_10;
    }

LABEL_9:
    [OUTLINED_FUNCTION_5_0() performSynchronousCacheRequest:?];
LABEL_10:
  }
}

- (void)recacheImagesForIcon:(void *)icon completionGroup:
{
  v5 = a2;
  iconCopy = icon;
  if (self)
  {
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock((self + 72));
    v7 = [*(self + 8) imageEnumeratorForIcon:v5];
    os_unfair_lock_unlock((self + 72));
    nextObject = [v7 nextObject];
    if (nextObject)
    {
      v9 = nextObject;
      do
      {
        dispatch_group_enter(iconCopy);
        imageAppearance = [v7 imageAppearance];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __65__SBHIconImageVariantCache_recacheImagesForIcon_completionGroup___block_invoke;
        v12[3] = &unk_1E8088F40;
        v13 = iconCopy;
        [(SBHIconImageVariantCache *)self cacheImageForIcon:v5 imageAppearance:imageAppearance priority:1 reason:@"recacheImagesForIcon" options:4 cancellation:0 completionHandler:v12];

        nextObject2 = [v7 nextObject];

        v9 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

- (void)purgeCachedImagesForIcons:(uint64_t)icons
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (icons)
  {
    BSDispatchQueueAssertMain();
    _variantDescription = [icons _variantDescription];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v3;
    obj = v3;
    v19 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v19)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v24 + 1) + 8 * i);
          v7 = [icons _cacheKeyForIcon:v6];
          os_unfair_lock_lock((icons + 72));
          [*(icons + 8) removeAllImagesForIcon:v6];
          [icons _lock_resetFailedStatusForIcon:v6];
          [icons _lock_removeCachedIcon:v6];
          os_unfair_lock_unlock((icons + 72));
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v8 = *(icons + 24);
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v20 + 1) + 8 * j);
                if ([SBHIconImageCacheRequest matchesIcon:v13])
                {
                  [v13 cancel];
                  [v4 addObject:v13];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
            }

            while (v10);
          }

          v14 = SBLogIconImageCache();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v29 = _variantDescription;
            v30 = 2112;
            v31 = v7;
            _os_log_debug_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEBUG, "Purging cached %{public}@ image for icon with key: %@", buf, 0x16u);
          }
        }

        v19 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v19);
    }

    [*(icons + 24) removeObjectsInArray:v4];
    [OUTLINED_FUNCTION_9() removeStoredImageGenerationForIcons:?];

    v3 = v15;
  }
}

- (void)purgeAllCachedImages
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    BSDispatchQueueAssertMain();
    _variantDescription = [self _variantDescription];
    v3 = SBLogIconImageCache();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138543362;
      v14 = _variantDescription;
      OUTLINED_FUNCTION_12(&dword_1BEB18000, v3, v4, "Purging all cached icon %{public}@ images", &v13);
    }

    os_unfair_lock_lock((self + 72));
    [*(self + 8) removeAllImages];
    os_unfair_lock_unlock((self + 72));
    [*(self + 16) removeAllObjects];
    OUTLINED_FUNCTION_2_0();
    v5 = *(self + 24);
    v6 = [v5 countByEnumeratingWithState:v11 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11[2];
      do
      {
        v9 = 0;
        do
        {
          OUTLINED_FUNCTION_15();
          if (v10 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(v11[1] + 8 * v9++) cancel];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:v11 objects:v12 count:16];
      }

      while (v7);
    }

    [*(self + 24) removeAllObjects];
    [self removeAllStoredImageGenerations];
    [self removeAllCachedIcons];
  }
}

- (void)purgeAllCachedImagesForAppearancesOtherThanAppearances:(uint64_t)appearances
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (appearances)
  {
    BSDispatchQueueAssertMain();
    _variantDescription = [appearances _variantDescription];
    v5 = SBLogIconImageCache();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543618;
      v7 = _variantDescription;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEBUG, "Purging all cached icon %{public}@ images for appearances other than %@", &v6, 0x16u);
    }

    os_unfair_lock_lock((appearances + 72));
    [*(appearances + 8) removeAllImagesForAppearancesOtherThanAppearances:v3];
    [*(appearances + 32) removeAllImagesForAppearancesOtherThanAppearances:v3];
    os_unfair_lock_unlock((appearances + 72));
  }
}

- (uint64_t)cancelAllCachingRequests
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    BSDispatchQueueAssertMain();
    v2 = SBLogIconImageCache();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEBUG, "Canceling all caching requests", buf, 2u);
    }

    OUTLINED_FUNCTION_2_0();
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_7();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          OUTLINED_FUNCTION_15();
          if (v9 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [*(v10 + 8 * v8++) cancel];
        }

        while (v6 != v8);
        OUTLINED_FUNCTION_7();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    return [*(v1 + 24) removeAllObjects];
  }

  return result;
}

- (uint64_t)isCachingImageForIcon:(uint64_t)icon
{
  v3 = a2;
  if (icon)
  {
    BSDispatchQueueAssertMain();
    v4 = [OUTLINED_FUNCTION_5_0() _cacheKeyForIcon:?];
    if (v4)
    {
      OUTLINED_FUNCTION_2_0();
      v5 = *(icon + 24);
      OUTLINED_FUNCTION_7();
      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        v8 = *v13;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            OUTLINED_FUNCTION_15();
            if (v10 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if (([SBHIconImageCacheRequest matchesIcon:?]& 1) != 0)
            {
              v7 = 1;
              goto LABEL_14;
            }
          }

          OUTLINED_FUNCTION_7();
          v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasCachingRequestsStillDoingWork
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 24) indexesOfObjectsPassingTest:&__block_literal_global_351];
  v2 = [v1 count] != 0;

  return v2;
}

- (id)genericImageWithImageAppearance:(char)appearance options:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 40);
    v7 = +[SBHIconImageAppearanceStore defaultIcon];
    v8 = [v6 imageForIcon:v7 appearance:v5];

    if (!v8)
    {
      v9 = *(self + 96);
      v10 = *(self + 104);
      v11 = *(self + 112);
      v12 = *(self + 120);
      imageRetrievalOptions = [self imageRetrievalOptions];
      [self imageRetrievalOptions];
      v14 = OUTLINED_FUNCTION_8();
      v8 = [v15 realGenericImageWithInfo:v5 imageAppearance:v14 options:?];
      if (!*(self + 40))
      {
        v16 = objc_alloc_init(SBHIconImageAppearanceStore);
        v17 = *(self + 40);
        *(self + 40) = v16;
      }

      v18 = +[SBHIconImageAppearanceStore defaultIcon];
      if (v8)
      {
        [*(self + 40) setImage:v8 forIcon:v18 appearance:v5];
      }

      else
      {
        if ((appearance & 0x10) != 0)
        {
          v8 = 0;
        }

        else
        {
          v19 = OUTLINED_FUNCTION_8();
          v8 = [v20 fallbackGenericImageWithInfo:v5 imageAppearance:imageRetrievalOptions options:v19];
        }

        WeakRetained = objc_loadWeakRetained((self + 88));
        OUTLINED_FUNCTION_0();
        v24 = 3221225472;
        v25 = __68__SBHIconImageVariantCache_genericImageWithImageAppearance_options___block_invoke;
        v26 = &unk_1E8088FB0;
        v29 = v9;
        v30 = v10;
        v31 = v11;
        v32 = v12;
        v33 = imageRetrievalOptions;
        v27 = v5;
        selfCopy = self;
        [WeakRetained performBackgroundCachingActivityUsingPriority:1 block:v23];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cachingPlaceholderImageWithImageAppearance:(char)appearance options:
{
  if (self)
  {
    self = [(SBHIconImageVariantCache *)self genericImageWithImageAppearance:a2 options:appearance];
    v3 = vars8;
  }

  return self;
}

- (void)resetFailedStatusForIcon:(os_unfair_lock_s *)icon
{
  if (icon)
  {
    v3 = a2;
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock(icon + 18);
    [(os_unfair_lock_s *)icon _lock_resetFailedStatusForIcon:v3];

    os_unfair_lock_unlock(icon + 18);
  }
}

- (void)cacheImageForIcon:(void *)icon imageAppearance:(void *)appearance priority:(void *)priority reason:(void *)reason options:(void *)options cancellation:(void *)cancellation completionHandler:
{
  v15 = a2;
  iconCopy = icon;
  priorityCopy = priority;
  optionsCopy = options;
  cancellationCopy = cancellation;
  if (self)
  {
    BSDispatchQueueAssertMain();
    if ([v15 hasExternalIconCaching])
    {
      if (cancellationCopy)
      {
        v20 = OUTLINED_FUNCTION_14();
        v21(v20);
      }
    }

    else
    {
      if ((reason & 4) != 0 || (OUTLINED_FUNCTION_4(), [(SBHIconImageVariantCache *)v22 cachedImageForIcon:v23 imageAppearance:v24 options:0], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        WeakRetained = objc_loadWeakRetained(self + 11);
        v35 = [self currentImageGenerationForIcon:v15];
        [SBHIconImageCacheRequest alloc];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __117__SBHIconImageVariantCache_cacheImageForIcon_imageAppearance_priority_reason_options_cancellation_completionHandler___block_invoke;
        v36[3] = &unk_1E8088EF0;
        v37 = cancellationCopy;
        OUTLINED_FUNCTION_4();
        v34 = [(SBHIconImageCacheRequest *)v30 initWithIcon:v31 imageAppearance:v32 priority:appearance reason:priorityCopy imageGeneration:v35 variant:v33 options:reason sharedCancellation:optionsCopy iconImageCache:WeakRetained completionHandler:v36];
        [(SBHIconImageVariantCache *)self submitRequest:v34];

        v26 = 0;
      }

      else
      {
        v26 = v25;
        if (cancellationCopy)
        {
          v27 = OUTLINED_FUNCTION_14();
          v28(v27);
        }
      }
    }
  }
}

- (int64_t)effectivePriorityForPriority:(int64_t)priority
{
  if (self)
  {
    if (priority >= 1)
    {
      priorityCopy = 1;
    }

    else
    {
      priorityCopy = priority;
    }

    if (self->_variant == 1)
    {
      return priorityCopy;
    }
  }

  return priority;
}

- (void)performBackgroundCacheWorkForCachingRequest:(id)request
{
  v57[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = +[SBHIconImageCache _workQueue];
  BSDispatchQueueAssert();

  mach_continuous_time();
  if (requestCopy)
  {
    v6 = *(requestCopy + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v57[0] = 0;
  v57[1] = 0;
  [v7 getUUIDBytes:v57];
  _variantDescription = [(SBHIconImageVariantCache *)self _variantDescription];
  v9 = SBLogIconImageCache();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v50 = _variantDescription;
    OUTLINED_FUNCTION_1();
    v54 = v57;
    _os_log_debug_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEBUG, "starting background work for %{public}@ request %{uuid_t}.16P", buf, 0x1Cu);
  }

  if (!requestCopy)
  {
    isCancelled = [(SBHIconImageCacheRequest *)0 isCancelled];
    v12 = 0;
    v13 = 0;
    if (isCancelled)
    {
      goto LABEL_7;
    }

LABEL_15:
    v14 = v13;
    v15 = [(SBHIconImageVariantCache *)self attemptToBecomeActiveRequest:requestCopy];
    if (v15)
    {
      v27 = SBLogIconImageCache();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v15[4];
        *buf = 138544130;
        v50 = _variantDescription;
        v51 = 1040;
        v52 = 16;
        v53 = 2096;
        v54 = v57;
        v55 = 2114;
        v56 = v28;
        _os_log_impl(&dword_1BEB18000, v27, OS_LOG_TYPE_DEFAULT, "Stopping %{public}@ caching request %{uuid_t}.16P because another request matching this one is already active (%{public}@)", buf, 0x26u);
      }

      v29 = v15[5];
      v16 = v29;
      if (requestCopy)
      {
        if (v29 == v12)
        {
          v30 = 1;
        }

        else
        {
          v30 = 3;
        }

        *(requestCopy + 19) = 3;
        *(requestCopy + 20) = v30;
        [(SBHIconImageCacheRequest *)v15 addDependentRequest:requestCopy];
        objc_storeWeak(requestCopy + 22, v15);
      }

      else
      {
        [(SBHIconImageCacheRequest *)v15 addDependentRequest:?];
      }

      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      if (requestCopy)
      {
        *(requestCopy + 21) = v31;
      }

      v37 = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __72__SBHIconImageVariantCache_performBackgroundCacheWorkForCachingRequest___block_invoke_343;
      v40 = &unk_1E8088F18;
      selfCopy = self;
      v42 = requestCopy;
      BSDispatchMain();

      goto LABEL_28;
    }

    v34 = _variantDescription;
    if (requestCopy)
    {
      v16 = *(requestCopy + 10);
      v17 = *(requestCopy + 13);
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v19 = [(SBHIconImageVariantCache *)self _variantImageForIcon:v12 imageAppearance:v14 context:v16 extraImageOptions:0 options:v17];
    if (v19)
    {
      v33 = v16;
      v20 = [(SBHIconImageVariantCache *)self pooledIconImageForMappedIconImage:v19 icon:v12];
      v21 = v20;
      if (v20)
      {
        v22 = v14;
        v23 = v12;
        v24 = v20;

        v19 = v24;
        v12 = v23;
        v14 = v22;
      }

      v16 = v33;
      if (!requestCopy)
      {
        goto LABEL_23;
      }
    }

    else if (!requestCopy)
    {
      goto LABEL_23;
    }

    objc_setProperty_atomic(requestCopy, v18, v19, 144);
    *(requestCopy + 19) = 2;
    *(requestCopy + 20) = 2;
LABEL_23:
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    if (requestCopy)
    {
      *(requestCopy + 21) = v25;
    }

    v26 = SBLogIconImageCache();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138544130;
      v50 = v34;
      OUTLINED_FUNCTION_1();
      v54 = v57;
      v55 = 2048;
      v56 = v19;
      _os_log_debug_impl(&dword_1BEB18000, v26, OS_LOG_TYPE_DEBUG, "finishing background work for %{public}@ request %{uuid_t}.16P with image %p, queueing for main thread processing", buf, 0x26u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__SBHIconImageVariantCache_performBackgroundCacheWorkForCachingRequest___block_invoke_344;
    block[3] = &unk_1E8088F18;
    block[4] = self;
    v36 = requestCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    _variantDescription = v34;
LABEL_28:

    goto LABEL_29;
  }

  *(requestCopy + 19) = 1;
  if (![(SBHIconImageCacheRequest *)requestCopy isCancelled])
  {
    v12 = *(requestCopy + 5);
    v13 = *(requestCopy + 8);
    goto LABEL_15;
  }

LABEL_7:
  v10 = SBLogIconImageCache();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v50 = _variantDescription;
    OUTLINED_FUNCTION_1();
    v54 = v57;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Stopping %{public}@ caching request %{uuid_t}.16P because user cancelled", buf, 0x1Cu);
  }

  if (requestCopy)
  {
    *(requestCopy + 19) = 2;
    *(requestCopy + 20) = 0;
  }

  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  if (requestCopy)
  {
    *(requestCopy + 21) = v11;
  }

  v43 = MEMORY[0x1E69E9820];
  v44 = 3221225472;
  v45 = __72__SBHIconImageVariantCache_performBackgroundCacheWorkForCachingRequest___block_invoke;
  v46 = &unk_1E8088F18;
  selfCopy2 = self;
  v48 = requestCopy;
  BSDispatchMain();

LABEL_29:
}

- (void)finishBackgroundCacheWorkForCachingRequest:(id)request
{
  v53[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  BSDispatchQueueAssertMain();
  if (requestCopy)
  {
    v5 = requestCopy[5];
    v44 = objc_getProperty(requestCopy, v6, 144, 1);
    v7 = requestCopy[8];
    v8 = requestCopy[9];
    v9 = (*(requestCopy + 104) >> 2) & 1;
  }

  else
  {
    v8 = 0;
    v44 = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  v10 = [OUTLINED_FUNCTION_6() _cacheKeyForIcon:?];
  _variantDescription = [(SBHIconImageVariantCache *)self _variantDescription];
  if (requestCopy)
  {
    v11 = requestCopy[4];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v53[0] = 0;
  v53[1] = 0;
  [v12 getUUIDBytes:v53];
  v13 = SBLogIconImageCache();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_11();
    *&v46[6] = v53;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "starting main thread processing work for request %{uuid_t}.16P", buf, 0x12u);
  }

  [(NSMutableArray *)self->_cachingRequests removeObjectIdenticalTo:requestCopy];
  v14 = [OUTLINED_FUNCTION_6() storedImageGenerationForIcon:? imageAppearance:?];
  if (v14)
  {
    v15 = v14 >= v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = !v15;
  if ((v16 | v9))
  {
LABEL_23:
    v27 = SBLogIconImageCache();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    v25 = v44;
    if (v44)
    {
      v26 = _variantDescription;
      if (v28)
      {
        OUTLINED_FUNCTION_10();
        *&v48[2] = v30;
        *&v48[4] = v7;
        *&v48[12] = 2048;
        *&v48[14] = v8;
        v49 = 1040;
        v50 = 16;
        v51 = 2096;
        v52 = v53;
        OUTLINED_FUNCTION_16();
        _os_log_debug_impl(v31, v32, OS_LOG_TYPE_DEBUG, v33, v34, 0x3Au);
      }

      [(SBHIconImageVariantCache *)self cacheImage:v44 forIcon:v5 imageAppearance:v7 imageGeneration:v8];
      v29 = 2;
      if (!requestCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v26 = _variantDescription;
      if (v28)
      {
        OUTLINED_FUNCTION_10();
        *&v48[2] = 1040;
        *&v48[4] = 16;
        *&v48[8] = 2096;
        *&v48[10] = v53;
        OUTLINED_FUNCTION_16();
        _os_log_debug_impl(v35, v36, OS_LOG_TYPE_DEBUG, v37, v38, 0x26u);
      }

      [OUTLINED_FUNCTION_6() markIconAsFailed:?];
      v29 = 1;
      if (!requestCopy)
      {
        goto LABEL_28;
      }
    }

    requestCopy[19] = 4;
    requestCopy[20] = v29;
LABEL_28:
    [OUTLINED_FUNCTION_5_0() cleanUpCachingRequest:?];
    goto LABEL_29;
  }

  v17 = v14;
  v18 = [(SBHIconImageVariantCache *)self cachedImageForIcon:v5 imageAppearance:v7 options:0];
  v19 = SBLogIconImageCache();
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v46 = v17;
      OUTLINED_FUNCTION_16();
      _os_log_error_impl(v39, v40, OS_LOG_TYPE_ERROR, v41, v42, 0xCu);
    }

    [OUTLINED_FUNCTION_6() removeStoredImageGenerationForIcon:? imageAppearance:?];
    goto LABEL_23;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_11();
    *&v46[6] = v53;
    v47 = 2048;
    *v48 = v8;
    *&v48[8] = 2048;
    *&v48[10] = v17;
    OUTLINED_FUNCTION_16();
    _os_log_impl(v21, v22, OS_LOG_TYPE_DEFAULT, v23, v24, 0x26u);
  }

  if (requestCopy)
  {
    requestCopy[19] = 4;
    requestCopy[20] = 1;
  }

  [OUTLINED_FUNCTION_5_0() cleanUpCachingRequest:?];

  v26 = _variantDescription;
  v25 = v44;
LABEL_29:
}

- (void)finishBackgroundCacheWorkForCancelledCachingRequest:(id)request
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  BSDispatchQueueAssertMain();
  if (requestCopy)
  {
    info = requestCopy[1].info;
  }

  else
  {
    info = 0;
  }

  v6 = info;
  v7 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:v6];
  v8 = SBLogIconImageCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    variantDescription = [(SBHIconImageCacheRequest *)requestCopy variantDescription];
    if (requestCopy)
    {
      isa = requestCopy[1].isa;
    }

    else
    {
      isa = 0;
    }

    v11 = isa;
    v12 = 138543874;
    v13 = variantDescription;
    v14 = 2114;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEBUG, "Cleaning up cancelled %{public}@ request %{public}@ for icon %@", &v12, 0x20u);
  }

  [OUTLINED_FUNCTION_9() cleanUpCachingRequest:?];
}

- (void)cleanUpCachingRequest:(id)request
{
  requestCopy = request;
  v7 = requestCopy;
  if (requestCopy)
  {
    v5 = mach_continuous_time();
    requestCopy = v7;
    v7[1] = v5;
  }

  [(NSMutableArray *)self->_cachingRequests removeObjectIdenticalTo:requestCopy];
  [(SBHIconImageVariantCache *)self clearActiveRequest:v7];
  [(SBHIconImageCacheRequest *)v7 callCompletionHandlers];
  WeakRetained = objc_loadWeakRetained(&self->_iconImageCache);
  [WeakRetained checkIfCachingActivityHasCompleted];
}

- (unint64_t)currentImageGenerationForIcon:(id)icon
{
  iconCopy = icon;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_iconImageCache);
  }

  v5 = [OUTLINED_FUNCTION_9() currentImageGenerationForIcon:?];

  return v5;
}

- (id)attemptToBecomeActiveRequest:(id)request
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    v6 = *(requestCopy + 15);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_activeRequests objectForKey:v7];
  if (v8)
  {
    v9 = SBLogIconImageCache();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = v7;
      OUTLINED_FUNCTION_12(&dword_1BEB18000, v9, v10, "Pre-existing active request found when trying to service request for %@", &v15);
    }
  }

  else
  {
    activeRequests = self->_activeRequests;
    if (!activeRequests)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = self->_activeRequests;
      self->_activeRequests = v12;

      activeRequests = self->_activeRequests;
    }

    [(NSMutableDictionary *)activeRequests setObject:v5 forKey:v7];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)clearActiveRequest:(id)request
{
  if (request)
  {
    v5 = *(request + 15);
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_activeRequests objectForKey:v8];

  if (v7 == requestCopy)
  {
    [(NSMutableDictionary *)self->_activeRequests removeObjectForKey:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)imageRetrievalOptions
{
  if (self)
  {
    return 2 * (*(self + 80) == 1);
  }

  return self;
}

- (BOOL)_canPoolImageForIcon:(id)icon
{
  iconCopy = icon;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_iconImageCache);
  }

  v5 = [OUTLINED_FUNCTION_9() _canPoolImageForIcon:?];

  return v5;
}

- (id)iconImagesMemoryPool
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_iconImageCache);
  }

  else
  {
    WeakRetained = 0;
  }

  iconImagesMemoryPool = [WeakRetained iconImagesMemoryPool];

  return iconImagesMemoryPool;
}

- (id)_pooledIconImageForIconImage:(id)image icon:(id)icon allowingOptOut:(BOOL)out
{
  outCopy = out;
  imageCopy = image;
  iconCopy = icon;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_iconImageCache);
  }

  v10 = [(SBHIconImageVariantCache *)self _pooledIconImageForIconImage:imageCopy icon:iconCopy allowingOptOut:outCopy];

  return v10;
}

- (void)performSynchronousCacheRequest:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1BEB18000, v1, OS_LOG_TYPE_DEBUG, "Caching %{public}@ image for icon in foreground with key: %@", v2, 0x16u);
}

- (void)_variantImageForIcon:(uint64_t)a3 imageAppearance:(uint64_t)a4 context:extraImageOptions:options:.cold.1(NSObject *a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 134217984;
  v5 = a2;
  OUTLINED_FUNCTION_12(&dword_1BEB18000, a1, a4, "Fetched image from icon in %fs", &v4);
}

- (void)_tintedImageFromTintableImageForIcon:(uint64_t)a3 imageAppearance:(uint64_t)a4 .cold.1(NSObject *a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 134217984;
  v5 = a2;
  OUTLINED_FUNCTION_12(&dword_1BEB18000, a1, a4, "Created tinted image from tintable image in %fs", &v4);
}

- (id)descriptionBuilderWithMultilinePrefix:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 appendSize:@"imageSize" withName:{0.0, 0.0}];
  v3 = [a1 appendFloat:@"imageScale" withName:0.0];
  return [a1 appendUnsignedInteger:0 withName:@"cachedImageCount"];
}

@end