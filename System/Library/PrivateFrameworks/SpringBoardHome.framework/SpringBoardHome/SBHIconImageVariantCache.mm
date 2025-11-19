@interface SBHIconImageVariantCache
- (BOOL)_canPoolImageForIcon:(id)a3;
- (BOOL)hasCachingRequestsStillDoingWork;
- (BOOL)hasOtherCachedIconsForIcon:(id)a3;
- (BOOL)isIconFailed:(id)a3;
- (id)_iconImageOfSize:(CGSize)a3 scale:(double)a4 failGracefully:(BOOL)a5 drawing:(id)a6;
- (id)_pooledIconImageForIconImage:(id)a3 icon:(id)a4 allowingOptOut:(BOOL)a5;
- (id)_tintedImageFromTintableImageForIcon:(id)a3 imageAppearance:(id)a4;
- (id)_variantDescription;
- (id)_variantImageForIcon:(id)a3 imageAppearance:(id)a4 context:(id)a5 extraImageOptions:(unint64_t)a6 options:(unint64_t)a7;
- (id)_variantImageForIcon:(id)a3 imageAppearance:(id)a4 extraImageOptions:(unint64_t)a5 options:(unint64_t)a6;
- (id)attemptToBecomeActiveRequest:(id)a3;
- (id)cachedImageForIcon:(void *)a3 imageAppearance:(char)a4 options:;
- (id)cachingPlaceholderImageWithImageAppearance:(char)a3 options:;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)genericImageWithImageAppearance:(char)a3 options:;
- (id)iconImagesMemoryPool;
- (id)imageForIcon:(void *)a3 imageAppearance:(uint64_t)a4 options:;
- (id)memoryMappedIconImageOfSize:(CGSize)a3 scale:(double)a4 withDrawing:(id)a5;
- (id)realImageForIcon:(void *)a3 imageAppearance:(uint64_t)a4 options:;
- (id)succinctDescription;
- (int64_t)effectivePriorityForPriority:(int64_t)a3;
- (uint64_t)cancelAllCachingRequests;
- (uint64_t)isCachingImageForIcon:(uint64_t)a1;
- (unint64_t)currentImageGenerationForIcon:(id)a3;
- (unint64_t)imageRetrievalOptions;
- (unint64_t)storedImageGenerationForIcon:(id)a3 imageAppearance:(id)a4;
- (void)_lock_addCachedIcon:(id)a3;
- (void)_lock_removeCachedIcon:(id)a3;
- (void)_lock_setStoredImageGeneration:(unint64_t)a3 forIcon:(id)a4 imageAppearance:(id)a5;
- (void)addCachedIcon:(id)a3;
- (void)cacheImage:(id)a3 forIcon:(id)a4 imageAppearance:(id)a5 imageGeneration:(unint64_t)a6;
- (void)cacheImage:(void *)a3 forIcon:(void *)a4 imageAppearance:;
- (void)cacheImageForIcon:(void *)a3 imageAppearance:(void *)a4 priority:(void *)a5 reason:(void *)a6 options:(void *)a7 cancellation:(void *)a8 completionHandler:;
- (void)cleanUpCachingRequest:(id)a3;
- (void)clearActiveRequest:(id)a3;
- (void)finishBackgroundCacheWorkForCachingRequest:(id)a3;
- (void)finishBackgroundCacheWorkForCancelledCachingRequest:(id)a3;
- (void)fulfillRealGenericImage:(id)a3 forImageAppearance:(id)a4;
- (void)initWithVariant:(double)a3 iconImageInfo:(double)a4;
- (void)markIconAsFailed:(id)a3;
- (void)performBackgroundCacheWorkForCachingRequest:(id)a3;
- (void)performSynchronousCacheRequest:(id)a3;
- (void)purgeAllCachedImages;
- (void)purgeAllCachedImagesForAppearancesOtherThanAppearances:(uint64_t)a1;
- (void)purgeCachedImagesForIcons:(uint64_t)a1;
- (void)recacheImagesForIcon:(void *)a3 completionGroup:;
- (void)removeAllCachedIcons;
- (void)removeAllStoredImageGenerations;
- (void)removeCachedIcon:(id)a3;
- (void)removeStoredImageGenerationForIcon:(id)a3 imageAppearance:(id)a4;
- (void)removeStoredImageGenerationForIcons:(id)a3;
- (void)resetFailedStatusForIcon:(os_unfair_lock_s *)a1;
- (void)setStoredImageGeneration:(unint64_t)a3 forIcon:(id)a4 imageAppearance:(id)a5;
- (void)submitRequest:(id *)a1;
@end

@implementation SBHIconImageVariantCache

- (id)cachedImageForIcon:(void *)a3 imageAppearance:(char)a4 options:
{
  v7 = a2;
  v8 = a3;
  v9 = 0;
  if (!a1 || (a4 & 8) != 0)
  {
    goto LABEL_15;
  }

  if (([v7 hasExternalIconCaching] & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 72));
    v9 = [*(a1 + 8) imageForIcon:v7 appearance:v8];
    os_unfair_lock_unlock((a1 + 72));
    if (v9)
    {
      if ((a4 & 0x20) == 0)
      {
        goto LABEL_15;
      }

LABEL_6:
      v10 = [a1 storedImageGenerationForIcon:v7 imageAppearance:v8];
      WeakRetained = objc_loadWeakRetained((a1 + 88));
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

  v9 = [a1 _variantImageForIcon:v7 imageAppearance:v8 extraImageOptions:2 options:0];
  if (v9)
  {
    [(SBHIconImageVariantCache *)a1 cacheImage:v9 forIcon:v7 imageAppearance:v8];
    if ((a4 & 0x20) != 0)
    {
      goto LABEL_6;
    }
  }

LABEL_15:

  return v9;
}

- (void)cacheImage:(id)a3 forIcon:(id)a4 imageAppearance:(id)a5 imageGeneration:(unint64_t)a6
{
  v12 = a3;
  v10 = a4;
  v11 = a5;
  if (([v10 hasExternalIconCaching] & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    [(SBHIconImageAppearanceStore *)self->_images setImage:v12 forIcon:v10 appearance:v11];
    [(SBHIconImageVariantCache *)self _lock_addCachedIcon:v10];
    [(SBHIconImageVariantCache *)self _lock_resetFailedStatusForIcon:v10];
    [(SBHIconImageVariantCache *)self _lock_setStoredImageGeneration:a6 forIcon:v10 imageAppearance:v11];
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

- (void)performSynchronousCacheRequest:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[5];
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
  v12 = [(SBHIconImageVariantCache *)self _variantDescription];
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
        v25 = v12;
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
      v25 = v12;
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

- (BOOL)isIconFailed:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_failedIcons containsObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)markIconAsFailed:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_markIconAsFailed:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStoredImageGeneration:(unint64_t)a3 forIcon:(id)a4 imageAppearance:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = SBLogIconImageCache();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v8 uniqueIdentifier];
    v12 = 138412802;
    v13 = v11;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = a3;
    _os_log_debug_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEBUG, "changing stored image generation for %@/%{public}@ to %lu", &v12, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_setStoredImageGeneration:a3 forIcon:v8 imageAppearance:v9];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setStoredImageGeneration:(unint64_t)a3 forIcon:(id)a4 imageAppearance:(id)a5
{
  storedImageGenerations = self->_storedImageGenerations;
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 numberWithUnsignedInteger:a3];
  [(SBHIconImageAppearanceStore *)storedImageGenerations setImage:v11 forIcon:v10 appearance:v9];
}

- (unint64_t)storedImageGenerationForIcon:(id)a3 imageAppearance:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(SBHIconImageAppearanceStore *)self->_storedImageGenerations imageForIcon:v7 appearance:v6];

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v8 unsignedIntegerValue];

  return v9;
}

- (void)removeStoredImageGenerationForIcon:(id)a3 imageAppearance:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageAppearanceStore *)self->_storedImageGenerations removeImageForIcon:v7 appearance:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeStoredImageGenerationForIcons:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_removeStoredImageGenerationForIcons:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllStoredImageGenerations
{
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageAppearanceStore *)self->_storedImageGenerations removeAllImages];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addCachedIcon:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_addCachedIcon:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_addCachedIcon:(id)a3
{
  v6 = a3;
  v4 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:?];
  v5 = [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier objectForKey:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier setObject:v5 forKey:v4];
  }

  [v5 addObject:v6];
}

- (BOOL)hasOtherCachedIconsForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:v4];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier objectForKey:v5];
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 count];
  v8 = [v6 containsObject:v4];

  return v7 != v8;
}

- (void)removeCachedIcon:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(SBHIconImageVariantCache *)self _lock_removeCachedIcon:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_removeCachedIcon:(id)a3
{
  v4 = a3;
  v6 = [(SBHIconImageVariantCache *)self _cacheKeyForIcon:v4];
  v5 = [(NSMutableDictionary *)self->_iconsByIconCacheIdentifier objectForKey:v6];
  [v5 removeObject:v4];
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

- (void)fulfillRealGenericImage:(id)a3 forImageAppearance:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = +[SBHIconImageAppearanceStore defaultIcon];
  v9 = [(SBHIconImageAppearanceStore *)self->_genericImages imageForIcon:v8 appearance:v7];

  if (!v9)
  {
    [(SBHIconImageAppearanceStore *)self->_genericImages setImage:v6 forIcon:v8 appearance:v7];
  }

  v10 = [(SBHIconImageAppearanceStore *)self->_iconsUsingFallbackGenericImage imageForIcon:v8 appearance:v7];
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
          [WeakRetained notifyObserversOfUpdateForIcon:v17 imageAppearance:v7 context:{v21, v19, v20}];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [(SBHIconImageAppearanceStore *)self->_iconsUsingFallbackGenericImage removeImageForIcon:v8 appearance:v7];
    if (![(SBHIconImageAppearanceStore *)self->_iconsUsingFallbackGenericImage hasAnyImagesForIcon:v8])
    {
      iconsUsingFallbackGenericImage = self->_iconsUsingFallbackGenericImage;
      self->_iconsUsingFallbackGenericImage = 0;
    }
  }
}

- (id)_variantImageForIcon:(id)a3 imageAppearance:(id)a4 extraImageOptions:(unint64_t)a5 options:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [v11 imageLoadContext];
  v13 = [(SBHIconImageVariantCache *)self _variantImageForIcon:v11 imageAppearance:v10 context:v12 extraImageOptions:a5 options:a6];

  return v13;
}

- (id)_variantImageForIcon:(id)a3 imageAppearance:(id)a4 context:(id)a5 extraImageOptions:(unint64_t)a6 options:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  HasTintColor = SBHIconImageAppearanceTypeHasTintColor([v12 appearanceType]);
  if ((a6 & 2) != 0 || !HasTintColor || ([(SBHIconImageVariantCache *)self _tintedImageFromTintableImageForIcon:v11 imageAppearance:v12], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:v12];
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

    v21 = [(SBHIconImageVariantCache *)self iconImageOptions];
    mach_continuous_time();
    v15 = [v11 iconImageWithInfo:v16 traitCollection:v13 context:v21 | a6 options:{width, height, scale, continuousCornerRadius}];
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

- (id)_tintedImageFromTintableImageForIcon:(id)a3 imageAppearance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBHIconImageAppearance tintableAppearance];
  v9 = [(SBHIconImageVariantCache *)self cachedImageForIcon:v7 imageAppearance:v8 options:0];

  if (v9)
  {
    v10 = [v6 tintColor];
    mach_continuous_time();
    v11 = SBHTintedImageFromTintableImage(v9, v10);
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

- (id)_iconImageOfSize:(CGSize)a3 scale:(double)a4 failGracefully:(BOOL)a5 drawing:(id)a6
{
  v6 = a5;
  height = a3.height;
  width = a3.width;
  v22 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = [(SBHIconImageVariantCache *)self iconImagesMemoryPool];
  if (v6 && (v13 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:width withContextType:{height, a4}], v13 > objc_msgSend(v12, "slotLength")))
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
      v21 = a4;
      _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "color context with dimensions %{public}@ @%fx does not fit in 'iconImages' memory pool - returning nil", &v18, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:0 scale:v12 type:v11 pool:width drawing:{height, a4}];
  }

  return v16;
}

- (id)memoryMappedIconImageOfSize:(CGSize)a3 scale:(double)a4 withDrawing:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [(SBHIconImageVariantCache *)self _iconImageOfSize:1 scale:v9 failGracefully:width drawing:height, a4];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:0 scale:0 type:v9 pool:width drawing:{height, a4}];
  }

  v13 = v12;

  return v13;
}

- (id)succinctDescription
{
  v2 = [(SBHIconImageVariantCache *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconImageVariantCache *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconImageVariantCache *)self succinctDescriptionBuilder];
  v5 = [(SBHIconImageVariantCache *)self _variantDescription];
  v6 = [v4 appendObject:v5 withName:@"variant"];

  if (self)
  {
    scale = self->_iconImageInfo.scale;
    v8 = [v4 appendSize:@"imageSize" withName:{self->_iconImageInfo.size.width, self->_iconImageInfo.size.height}];
    v9 = [v4 appendFloat:@"imageScale" withName:scale];
    v10 = [v4 appendUnsignedInteger:-[SBHIconImageAppearanceStore numberOfCachedImages](self->_images withName:{"numberOfCachedImages"), @"cachedImageCount"}];
    v11 = [(NSHashTable *)self->_failedIcons count];
  }

  else
  {
    [SBHIconImageVariantCache descriptionBuilderWithMultilinePrefix:v4];
    v11 = 0;
  }

  v12 = [v4 appendUnsignedInteger:v11 withName:@"failedIconsCount"];

  return v4;
}

- (void)initWithVariant:(double)a3 iconImageInfo:(double)a4
{
  if (!a1)
  {
    return 0;
  }

  v24.receiver = a1;
  v24.super_class = SBHIconImageVariantCache;
  v11 = objc_msgSendSuper2(&v24, sel_init);
  v12 = v11;
  if (v11)
  {
    v11[10] = a2;
    *(v11 + 12) = a3;
    *(v11 + 13) = a4;
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

- (id)imageForIcon:(void *)a3 imageAppearance:(uint64_t)a4 options:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    OUTLINED_FUNCTION_4();
    v13 = [(SBHIconImageVariantCache *)v10 cachedImageForIcon:v11 imageAppearance:v12 options:a4];
    v14 = v13;
    if ((a4 & 4) != 0 || v13)
    {
      v15 = v13;
    }

    else
    {
      OUTLINED_FUNCTION_4();
      v15 = [(SBHIconImageVariantCache *)v18 realImageForIcon:v19 imageAppearance:v20 options:a4];
      if (!v15)
      {
        v21 = [objc_opt_class() canFallBackToLightImageForImageAppearance:v8];
        if ((a4 & 0x10) != 0 || !v21 || (+[SBHIconImageAppearance defaultAppearance], v22 = objc_claimAutoreleasedReturnValue(), [(SBHIconImageVariantCache *)a1 cachedImageForIcon:v7 imageAppearance:v22 options:a4], v16 = objc_claimAutoreleasedReturnValue(), v22, !v16))
        {
          if ([objc_opt_class() hasIconImage])
          {
            [(SBHIconImageVariantCache *)a1 isCachingImageForIcon:v7];
            v16 = [(SBHIconImageVariantCache *)a1 genericImageWithImageAppearance:v8 options:a4];
            if (v16 && [SBHIconImageCache genericImageTypeForImage:v16]== 2)
            {
              if (!*(a1 + 64))
              {
                v23 = objc_alloc_init(SBHIconImageAppearanceStore);
                v24 = *(a1 + 64);
                *(a1 + 64) = v23;
              }

              v25 = +[SBHIconImageAppearanceStore defaultIcon];
              v26 = [*(a1 + 64) imageForIcon:v25 appearance:v8];
              if (!v26)
              {
                v26 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
              }

              [v26 addObject:v7];
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

- (id)realImageForIcon:(void *)a3 imageAppearance:(uint64_t)a4 options:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    OUTLINED_FUNCTION_4();
    v13 = [(SBHIconImageVariantCache *)v10 cachedImageForIcon:v11 imageAppearance:v12 options:a4];
    if (v13)
    {
      v14 = [a1 iconImagesMemoryPool];
      if (v14)
      {
        SBFPreheatImageData();
      }

      v15 = v13;
    }

    else
    {
      if (a4 & 4) != 0 || ([a1 isIconFailed:v7])
      {
        v15 = 0;
        goto LABEL_10;
      }

      v17 = [a1 currentImageGenerationForIcon:v7];
      v18 = *(a1 + 80);
      v19 = [objc_opt_class() optionsForRetrievalOptions:a4];
      v20 = [objc_opt_class() defaultPriority];
      v21 = [SBHIconImageCacheRequest alloc];
      OUTLINED_FUNCTION_4();
      v14 = [(SBHIconImageCacheRequest *)v22 initWithIcon:v23 imageAppearance:v24 priority:v20 reason:v25 imageGeneration:v17 variant:v18 options:v19 sharedCancellation:0 iconImageCache:WeakRetained completionHandler:0];
      [(SBHIconImageVariantCache *)a1 submitRequest:v14];
      OUTLINED_FUNCTION_4();
      v15 = [(SBHIconImageVariantCache *)v26 cachedImageForIcon:v27 imageAppearance:v28 options:a4];
    }

LABEL_10:
    [OUTLINED_FUNCTION_5_0() beginObservingIconIfNecessary:?];

    goto LABEL_11;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)cacheImage:(void *)a3 forIcon:(void *)a4 imageAppearance:
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (a1 && ([v7 hasExternalIconCaching] & 1) == 0)
  {
    [a1 cacheImage:v9 forIcon:v7 imageAppearance:v8 imageGeneration:{objc_msgSend(OUTLINED_FUNCTION_9(), "currentImageGenerationForIcon:")}];
  }
}

- (void)submitRequest:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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
      [a1[3] addObject:v4];
      WeakRetained = objc_loadWeakRetained(a1 + 11);
      if (!WeakRetained)
      {
        NSLog(&cfstr_MissingIconIma.isa);
      }

      v8 = [a1 effectivePriorityForPriority:v6];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__SBHIconImageVariantCache_submitRequest___block_invoke;
      v9[3] = &unk_1E8088F18;
      v9[4] = a1;
      v10 = v4;
      [WeakRetained performBackgroundCachingActivityUsingPriority:v8 block:v9];

      goto LABEL_10;
    }

LABEL_9:
    [OUTLINED_FUNCTION_5_0() performSynchronousCacheRequest:?];
LABEL_10:
  }
}

- (void)recacheImagesForIcon:(void *)a3 completionGroup:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock((a1 + 72));
    v7 = [*(a1 + 8) imageEnumeratorForIcon:v5];
    os_unfair_lock_unlock((a1 + 72));
    v8 = [v7 nextObject];
    if (v8)
    {
      v9 = v8;
      do
      {
        dispatch_group_enter(v6);
        v10 = [v7 imageAppearance];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __65__SBHIconImageVariantCache_recacheImagesForIcon_completionGroup___block_invoke;
        v12[3] = &unk_1E8088F40;
        v13 = v6;
        [(SBHIconImageVariantCache *)a1 cacheImageForIcon:v5 imageAppearance:v10 priority:1 reason:@"recacheImagesForIcon" options:4 cancellation:0 completionHandler:v12];

        v11 = [v7 nextObject];

        v9 = v11;
      }

      while (v11);
    }
  }
}

- (void)purgeCachedImagesForIcons:(uint64_t)a1
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    v16 = [a1 _variantDescription];
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
          v7 = [a1 _cacheKeyForIcon:v6];
          os_unfair_lock_lock((a1 + 72));
          [*(a1 + 8) removeAllImagesForIcon:v6];
          [a1 _lock_resetFailedStatusForIcon:v6];
          [a1 _lock_removeCachedIcon:v6];
          os_unfair_lock_unlock((a1 + 72));
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v8 = *(a1 + 24);
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
            v29 = v16;
            v30 = 2112;
            v31 = v7;
            _os_log_debug_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEBUG, "Purging cached %{public}@ image for icon with key: %@", buf, 0x16u);
          }
        }

        v19 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v19);
    }

    [*(a1 + 24) removeObjectsInArray:v4];
    [OUTLINED_FUNCTION_9() removeStoredImageGenerationForIcons:?];

    v3 = v15;
  }
}

- (void)purgeAllCachedImages
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    BSDispatchQueueAssertMain();
    v2 = [a1 _variantDescription];
    v3 = SBLogIconImageCache();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138543362;
      v14 = v2;
      OUTLINED_FUNCTION_12(&dword_1BEB18000, v3, v4, "Purging all cached icon %{public}@ images", &v13);
    }

    os_unfair_lock_lock((a1 + 72));
    [*(a1 + 8) removeAllImages];
    os_unfair_lock_unlock((a1 + 72));
    [*(a1 + 16) removeAllObjects];
    OUTLINED_FUNCTION_2_0();
    v5 = *(a1 + 24);
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

    [*(a1 + 24) removeAllObjects];
    [a1 removeAllStoredImageGenerations];
    [a1 removeAllCachedIcons];
  }
}

- (void)purgeAllCachedImagesForAppearancesOtherThanAppearances:(uint64_t)a1
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    v4 = [a1 _variantDescription];
    v5 = SBLogIconImageCache();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543618;
      v7 = v4;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEBUG, "Purging all cached icon %{public}@ images for appearances other than %@", &v6, 0x16u);
    }

    os_unfair_lock_lock((a1 + 72));
    [*(a1 + 8) removeAllImagesForAppearancesOtherThanAppearances:v3];
    [*(a1 + 32) removeAllImagesForAppearancesOtherThanAppearances:v3];
    os_unfair_lock_unlock((a1 + 72));
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

- (uint64_t)isCachingImageForIcon:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    v4 = [OUTLINED_FUNCTION_5_0() _cacheKeyForIcon:?];
    if (v4)
    {
      OUTLINED_FUNCTION_2_0();
      v5 = *(a1 + 24);
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
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 24) indexesOfObjectsPassingTest:&__block_literal_global_351];
  v2 = [v1 count] != 0;

  return v2;
}

- (id)genericImageWithImageAppearance:(char)a3 options:
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 40);
    v7 = +[SBHIconImageAppearanceStore defaultIcon];
    v8 = [v6 imageForIcon:v7 appearance:v5];

    if (!v8)
    {
      v9 = *(a1 + 96);
      v10 = *(a1 + 104);
      v11 = *(a1 + 112);
      v12 = *(a1 + 120);
      v13 = [a1 imageRetrievalOptions];
      [a1 imageRetrievalOptions];
      v14 = OUTLINED_FUNCTION_8();
      v8 = [v15 realGenericImageWithInfo:v5 imageAppearance:v14 options:?];
      if (!*(a1 + 40))
      {
        v16 = objc_alloc_init(SBHIconImageAppearanceStore);
        v17 = *(a1 + 40);
        *(a1 + 40) = v16;
      }

      v18 = +[SBHIconImageAppearanceStore defaultIcon];
      if (v8)
      {
        [*(a1 + 40) setImage:v8 forIcon:v18 appearance:v5];
      }

      else
      {
        if ((a3 & 0x10) != 0)
        {
          v8 = 0;
        }

        else
        {
          v19 = OUTLINED_FUNCTION_8();
          v8 = [v20 fallbackGenericImageWithInfo:v5 imageAppearance:v13 options:v19];
        }

        WeakRetained = objc_loadWeakRetained((a1 + 88));
        OUTLINED_FUNCTION_0();
        v24 = 3221225472;
        v25 = __68__SBHIconImageVariantCache_genericImageWithImageAppearance_options___block_invoke;
        v26 = &unk_1E8088FB0;
        v29 = v9;
        v30 = v10;
        v31 = v11;
        v32 = v12;
        v33 = v13;
        v27 = v5;
        v28 = a1;
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

- (id)cachingPlaceholderImageWithImageAppearance:(char)a3 options:
{
  if (a1)
  {
    a1 = [(SBHIconImageVariantCache *)a1 genericImageWithImageAppearance:a2 options:a3];
    v3 = vars8;
  }

  return a1;
}

- (void)resetFailedStatusForIcon:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    v3 = a2;
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock(a1 + 18);
    [(os_unfair_lock_s *)a1 _lock_resetFailedStatusForIcon:v3];

    os_unfair_lock_unlock(a1 + 18);
  }
}

- (void)cacheImageForIcon:(void *)a3 imageAppearance:(void *)a4 priority:(void *)a5 reason:(void *)a6 options:(void *)a7 cancellation:(void *)a8 completionHandler:
{
  v15 = a2;
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    if ([v15 hasExternalIconCaching])
    {
      if (v19)
      {
        v20 = OUTLINED_FUNCTION_14();
        v21(v20);
      }
    }

    else
    {
      if ((a6 & 4) != 0 || (OUTLINED_FUNCTION_4(), [(SBHIconImageVariantCache *)v22 cachedImageForIcon:v23 imageAppearance:v24 options:0], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        WeakRetained = objc_loadWeakRetained(a1 + 11);
        v35 = [a1 currentImageGenerationForIcon:v15];
        [SBHIconImageCacheRequest alloc];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __117__SBHIconImageVariantCache_cacheImageForIcon_imageAppearance_priority_reason_options_cancellation_completionHandler___block_invoke;
        v36[3] = &unk_1E8088EF0;
        v37 = v19;
        OUTLINED_FUNCTION_4();
        v34 = [(SBHIconImageCacheRequest *)v30 initWithIcon:v31 imageAppearance:v32 priority:a4 reason:v17 imageGeneration:v35 variant:v33 options:a6 sharedCancellation:v18 iconImageCache:WeakRetained completionHandler:v36];
        [(SBHIconImageVariantCache *)a1 submitRequest:v34];

        v26 = 0;
      }

      else
      {
        v26 = v25;
        if (v19)
        {
          v27 = OUTLINED_FUNCTION_14();
          v28(v27);
        }
      }
    }
  }
}

- (int64_t)effectivePriorityForPriority:(int64_t)a3
{
  if (self)
  {
    if (a3 >= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = a3;
    }

    if (self->_variant == 1)
    {
      return v3;
    }
  }

  return a3;
}

- (void)performBackgroundCacheWorkForCachingRequest:(id)a3
{
  v57[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[SBHIconImageCache _workQueue];
  BSDispatchQueueAssert();

  mach_continuous_time();
  if (v4)
  {
    v6 = *(v4 + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v57[0] = 0;
  v57[1] = 0;
  [v7 getUUIDBytes:v57];
  v8 = [(SBHIconImageVariantCache *)self _variantDescription];
  v9 = SBLogIconImageCache();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v50 = v8;
    OUTLINED_FUNCTION_1();
    v54 = v57;
    _os_log_debug_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEBUG, "starting background work for %{public}@ request %{uuid_t}.16P", buf, 0x1Cu);
  }

  if (!v4)
  {
    v32 = [(SBHIconImageCacheRequest *)0 isCancelled];
    v12 = 0;
    v13 = 0;
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_15:
    v14 = v13;
    v15 = [(SBHIconImageVariantCache *)self attemptToBecomeActiveRequest:v4];
    if (v15)
    {
      v27 = SBLogIconImageCache();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v15[4];
        *buf = 138544130;
        v50 = v8;
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
      if (v4)
      {
        if (v29 == v12)
        {
          v30 = 1;
        }

        else
        {
          v30 = 3;
        }

        *(v4 + 19) = 3;
        *(v4 + 20) = v30;
        [(SBHIconImageCacheRequest *)v15 addDependentRequest:v4];
        objc_storeWeak(v4 + 22, v15);
      }

      else
      {
        [(SBHIconImageCacheRequest *)v15 addDependentRequest:?];
      }

      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      if (v4)
      {
        *(v4 + 21) = v31;
      }

      v37 = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __72__SBHIconImageVariantCache_performBackgroundCacheWorkForCachingRequest___block_invoke_343;
      v40 = &unk_1E8088F18;
      v41 = self;
      v42 = v4;
      BSDispatchMain();

      goto LABEL_28;
    }

    v34 = v8;
    if (v4)
    {
      v16 = *(v4 + 10);
      v17 = *(v4 + 13);
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
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    else if (!v4)
    {
      goto LABEL_23;
    }

    objc_setProperty_atomic(v4, v18, v19, 144);
    *(v4 + 19) = 2;
    *(v4 + 20) = 2;
LABEL_23:
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    if (v4)
    {
      *(v4 + 21) = v25;
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
    v36 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v8 = v34;
LABEL_28:

    goto LABEL_29;
  }

  *(v4 + 19) = 1;
  if (![(SBHIconImageCacheRequest *)v4 isCancelled])
  {
    v12 = *(v4 + 5);
    v13 = *(v4 + 8);
    goto LABEL_15;
  }

LABEL_7:
  v10 = SBLogIconImageCache();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v50 = v8;
    OUTLINED_FUNCTION_1();
    v54 = v57;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Stopping %{public}@ caching request %{uuid_t}.16P because user cancelled", buf, 0x1Cu);
  }

  if (v4)
  {
    *(v4 + 19) = 2;
    *(v4 + 20) = 0;
  }

  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  if (v4)
  {
    *(v4 + 21) = v11;
  }

  v43 = MEMORY[0x1E69E9820];
  v44 = 3221225472;
  v45 = __72__SBHIconImageVariantCache_performBackgroundCacheWorkForCachingRequest___block_invoke;
  v46 = &unk_1E8088F18;
  v47 = self;
  v48 = v4;
  BSDispatchMain();

LABEL_29:
}

- (void)finishBackgroundCacheWorkForCachingRequest:(id)a3
{
  v53[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4)
  {
    v5 = v4[5];
    v44 = objc_getProperty(v4, v6, 144, 1);
    v7 = v4[8];
    v8 = v4[9];
    v9 = (*(v4 + 104) >> 2) & 1;
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
  v43 = [(SBHIconImageVariantCache *)self _variantDescription];
  if (v4)
  {
    v11 = v4[4];
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

  [(NSMutableArray *)self->_cachingRequests removeObjectIdenticalTo:v4];
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
      v26 = v43;
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
      if (!v4)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v26 = v43;
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
      if (!v4)
      {
        goto LABEL_28;
      }
    }

    v4[19] = 4;
    v4[20] = v29;
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

  if (v4)
  {
    v4[19] = 4;
    v4[20] = 1;
  }

  [OUTLINED_FUNCTION_5_0() cleanUpCachingRequest:?];

  v26 = v43;
  v25 = v44;
LABEL_29:
}

- (void)finishBackgroundCacheWorkForCancelledCachingRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4)
  {
    info = v4[1].info;
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
    v9 = [(SBHIconImageCacheRequest *)v4 variantDescription];
    if (v4)
    {
      isa = v4[1].isa;
    }

    else
    {
      isa = 0;
    }

    v11 = isa;
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEBUG, "Cleaning up cancelled %{public}@ request %{public}@ for icon %@", &v12, 0x20u);
  }

  [OUTLINED_FUNCTION_9() cleanUpCachingRequest:?];
}

- (void)cleanUpCachingRequest:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = mach_continuous_time();
    v4 = v7;
    v7[1] = v5;
  }

  [(NSMutableArray *)self->_cachingRequests removeObjectIdenticalTo:v4];
  [(SBHIconImageVariantCache *)self clearActiveRequest:v7];
  [(SBHIconImageCacheRequest *)v7 callCompletionHandlers];
  WeakRetained = objc_loadWeakRetained(&self->_iconImageCache);
  [WeakRetained checkIfCachingActivityHasCompleted];
}

- (unint64_t)currentImageGenerationForIcon:(id)a3
{
  v4 = a3;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_iconImageCache);
  }

  v5 = [OUTLINED_FUNCTION_9() currentImageGenerationForIcon:?];

  return v5;
}

- (id)attemptToBecomeActiveRequest:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 15);
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

- (void)clearActiveRequest:(id)a3
{
  if (a3)
  {
    v5 = *(a3 + 15);
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_activeRequests objectForKey:v8];

  if (v7 == v6)
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

- (BOOL)_canPoolImageForIcon:(id)a3
{
  v4 = a3;
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

  v3 = [WeakRetained iconImagesMemoryPool];

  return v3;
}

- (id)_pooledIconImageForIconImage:(id)a3 icon:(id)a4 allowingOptOut:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_iconImageCache);
  }

  v10 = [(SBHIconImageVariantCache *)self _pooledIconImageForIconImage:v8 icon:v9 allowingOptOut:v5];

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