@interface SBHIconImageCache
+ (id)_workQueue;
+ (id)fallbackGenericImageWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 options:(unint64_t)a5;
+ (id)genericImageWithInfo:(SBIconImageInfo *)a3;
+ (id)genericImageWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 options:(unint64_t)a5;
+ (id)overlayImageWithInfo:(SBIconImageInfo *)a3;
+ (id)realGenericImageWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 options:(unint64_t)a5;
+ (id)tintingBackgroundImageWithInfo:(SBIconImageInfo *)a3;
+ (id)unmaskedOverlayImageWithInfo:(SBIconImageInfo *)a3;
+ (int64_t)genericImageTypeForImage:(id)a3;
+ (unint64_t)optionsForRetrievalOptions:(unint64_t)a3;
+ (unsigned)qosClassForPriority:(int64_t)a3;
+ (void)pauseCaching;
+ (void)resumeCaching;
- (BOOL)_canPoolImageForIcon:(id)a3;
- (BOOL)hasCachedImagesForIcons:(id)a3 imageAppearances:(id)a4 options:(unint64_t)a5;
- (BOOL)hasCachingRequests;
- (BOOL)hasCachingRequestsStillDoingWork;
- (BOOL)isCachingImageForIcon:(id)a3;
- (SBHIconImageCache)initWithName:(id)a3 iconImageInfo:(SBIconImageInfo *)a4;
- (UIImage)genericImage;
- (UIImage)overlayImage;
- (UIImage)tintingBackgroundImage;
- (UIImage)unmaskedOverlayImage;
- (id)_iconImageOfSize:(CGSize)a3 scale:(double)a4 failGracefully:(BOOL)a5 drawing:(id)a6;
- (id)_pooledIconImageForIconImage:(id)a3 icon:(id)a4 allowingOptOut:(BOOL)a5;
- (id)activityDescription;
- (id)buildCacheRequestWithReason:(id)a3;
- (id)cacheImageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (id)cacheImageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (id)cacheImageForIcon:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 reason:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8;
- (id)cacheImageForIcon:(id)a3 imageAppearance:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (id)cacheImagesForIcons:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (id)cacheImagesForIcons:(id)a3 compatibleWithTraitCollections:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (id)cacheImagesForIcons:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (id)cacheImagesForIcons:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 reason:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8;
- (id)cacheImagesForIcons:(id)a3 imageAppearance:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (id)cacheImagesForIcons:(id)a3 imageAppearances:(id)a4 priority:(int64_t)a5 reason:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8;
- (id)cacheImagesForIcons:(id)a3 imageAppearances:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (id)cacheImagesForIcons:(id)a3 prioritizedImageAppearances:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (id)cachedImageForIcon:(id)a3;
- (id)cachedImageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5;
- (id)cachedImageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5;
- (id)cachingPlaceholderImageWithImageAppearance:(id)a3 options:(unint64_t)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)finalizeRequestBuilder:(id)a3 completionHandler:(id)a4;
- (id)genericImageWithImageAppearance:(id)a3 options:(unint64_t)a4;
- (id)imageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5;
- (id)imageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5;
- (id)imageForIcon:(id)a3 options:(unint64_t)a4;
- (id)memoryMappedIconImageOfSize:(CGSize)a3 scale:(double)a4 withDrawing:(id)a5;
- (id)realImageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5;
- (id)realImageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5;
- (id)succinctDescription;
- (id)unmaskedImageForIcon:(id)a3 options:(unint64_t)a4;
- (id)variantCacheForOptions:(unint64_t)a3;
- (unint64_t)cachingRequestCount;
- (unint64_t)imageGenerationForCachedImage:(id)a3;
- (unint64_t)numberOfCachedImages;
- (unint64_t)numberOfCachedImagesForAppearance:(id)a3 options:(unint64_t)a4;
- (unint64_t)numberOfCachedImagesForAppearanceType:(int64_t)a3 options:(unint64_t)a4;
- (unint64_t)numberOfUnmaskedCachedImages;
- (void)addObserver:(id)a3;
- (void)beginObservingIconIfNecessary:(id)a3;
- (void)cacheImage:(id)a3 forIcon:(id)a4 imageAppearance:(id)a5;
- (void)cacheImageForIcon:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)cacheImagesForIcons:(id)a3;
- (void)cacheImagesForIcons:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)cacheUnmaskedImagesForIcons:(id)a3;
- (void)cancelAllCachingRequests;
- (void)checkIfCachingActivityHasCompleted;
- (void)endObservingAllIcons;
- (void)endObservingIcon:(id)a3;
- (void)enumerateVariantCachesUsingBlock:(id)a3;
- (void)finishedAsynchronousLoadOfIcon:(id)a3 imageAppearance:(id)a4 variant:(int64_t)a5 context:(SBHIconImageCacheRequestResultContext *)a6;
- (void)iconImageDidUpdate:(id)a3;
- (void)notifyObserversOfUpdateForIcon:(id)a3 imageAppearance:(id)a4 context:(SBHIconImageCacheRequestResultContext *)a5;
- (void)performBackgroundCachingActivityUsingPriority:(int64_t)a3 block:(id)a4;
- (void)performBackgroundCachingActivityUsingQOSClass:(unsigned int)a3 block:(id)a4;
- (void)performWhenCachingActivityCompletesUsingBlock:(id)a3;
- (void)purgeAllCachedImages;
- (void)purgeAllCachedImagesForAppearancesOtherThanAppearances:(id)a3;
- (void)purgeCachedImagesForIcons:(id)a3;
- (void)recacheImagesForIcon:(id)a3 completionHandler:(id)a4;
- (void)removeObserver:(id)a3;
- (void)submitRequest:(id)a3;
- (void)submitRequests:(id)a3;
- (void)updateImageForIcon:(id)a3;
@end

@implementation SBHIconImageCache

+ (id)_workQueue
{
  if (_workQueue_onceToken != -1)
  {
    +[SBHIconImageCache _workQueue];
  }

  v3 = _workQueue__workQueue;

  return v3;
}

uint64_t __31__SBHIconImageCache__workQueue__block_invoke()
{
  _workQueue__workQueue = dispatch_workloop_create("com.SpringBoardHome.SBHIconImageCache.work");

  return MEMORY[0x1EEE66BB8]();
}

- (SBHIconImageCache)initWithName:(id)a3 iconImageInfo:(SBIconImageInfo *)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = a3;
  v29.receiver = self;
  v29.super_class = SBHIconImageCache;
  v14 = [(SBHIconImageCache *)&v29 init];
  if (v14)
  {
    v16 = [v13 copy];
    name = v14->_name;
    v14->_name = v16;

    v14->_iconImageInfo.size.width = v11;
    v14->_iconImageInfo.size.height = v10;
    v14->_iconImageInfo.scale = v9;
    v14->_iconImageInfo.continuousCornerRadius = v8;
    if ([objc_opt_class() supportsMemoryPooling])
    {
      v18 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:v11 withContextType:{v10, v9}];
      v19 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:objc_msgSend(v13 slotLength:{"UTF8String"), v18}];
      iconImagesMemoryPool = v14->_iconImagesMemoryPool;
      v14->_iconImagesMemoryPool = v19;
    }

    v21 = [[SBHIconImageVariantCache alloc] initWithVariant:v11 iconImageInfo:v10, v9, v8];
    maskedCache = v14->_maskedCache;
    v14->_maskedCache = v21;

    v23 = v14->_maskedCache;
    if (v23)
    {
      objc_storeWeak(&v23->_iconImageCache, v14);
    }

    v24 = [[SBHIconImageVariantCache alloc] initWithVariant:v11 iconImageInfo:v10, v9, v8];
    unmaskedCache = v14->_unmaskedCache;
    v14->_unmaskedCache = v24;

    v26 = v14->_unmaskedCache;
    if (v26)
    {
      objc_storeWeak(&v26->_iconImageCache, v14);
    }

    v27 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observedIcons = v14->_observedIcons;
    v14->_observedIcons = v27;
  }

  return v14;
}

- (id)imageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  BSDispatchQueueAssertMain();
  v10 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v8];

  v11 = [(SBHIconImageCache *)self imageForIcon:v9 imageAppearance:v10 options:a5];

  return v11;
}

- (id)imageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  BSDispatchQueueAssertMain();
  v10 = [(SBHIconImageCache *)self variantCacheForOptions:a5];
  v11 = [(SBHIconImageVariantCache *)v10 imageForIcon:v9 imageAppearance:v8 options:a5];

  return v11;
}

- (id)imageForIcon:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = +[SBHIconImageAppearance defaultAppearance];
  v8 = [(SBHIconImageCache *)self imageForIcon:v6 imageAppearance:v7 options:a4];

  return v8;
}

- (id)variantCacheForOptions:(unint64_t)a3
{
  v3 = 16;
  if ((a3 & 2) == 0)
  {
    v3 = 8;
  }

  return *(&self->super.isa + v3);
}

- (id)realImageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  BSDispatchQueueAssertMain();
  v10 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v8];

  v11 = [(SBHIconImageCache *)self realImageForIcon:v9 imageAppearance:v10 options:a5];

  return v11;
}

- (id)realImageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  BSDispatchQueueAssertMain();
  v10 = [(SBHIconImageCache *)self variantCacheForOptions:a5];
  v11 = [(SBHIconImageVariantCache *)v10 realImageForIcon:v9 imageAppearance:v8 options:a5];

  [(SBHIconImageCache *)self beginObservingIconIfNecessary:v9];

  return v11;
}

- (id)cachedImageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  BSDispatchQueueAssertMain();
  v10 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v8];

  v11 = [(SBHIconImageCache *)self cachedImageForIcon:v9 imageAppearance:v10 options:a5];

  return v11;
}

- (id)cachedImageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  BSDispatchQueueAssertMain();
  if ((a5 & 8) != 0)
  {
    v11 = 0;
  }

  else
  {
    v10 = [(SBHIconImageCache *)self variantCacheForOptions:a5];
    v11 = [(SBHIconImageVariantCache *)v10 cachedImageForIcon:v8 imageAppearance:v9 options:a5];
  }

  return v11;
}

- (id)cachedImageForIcon:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(SBHIconImageCache *)self cachedImageForIcon:v4 compatibleWithTraitCollection:0 options:0];

  return v5;
}

- (BOOL)hasCachedImagesForIcons:(id)a3 imageAppearances:(id)a4 options:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v8;
  v23 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v11 = *v30;
    v24 = v9;
    v22 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = v9;
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [(SBHIconImageCache *)self cachedImageForIcon:v13 imageAppearance:*(*(&v25 + 1) + 8 * j) options:a5];

              if (!v19)
              {

                v20 = 0;
                v9 = v24;
                goto LABEL_19;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v9 = v24;
        v11 = v22;
      }

      v20 = 1;
      v23 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  else
  {
    v20 = 1;
  }

LABEL_19:

  return v20;
}

- (void)cacheImage:(id)a3 forIcon:(id)a4 imageAppearance:(id)a5
{
  v8 = a5;
  v10 = a4;
  v9 = a3;
  BSDispatchQueueAssertMain();
  [(SBHIconImageVariantCache *)self->_maskedCache cacheImage:v9 forIcon:v10 imageAppearance:v8];

  [(SBHIconImageCache *)self beginObservingIconIfNecessary:v10];
}

- (void)cacheImageForIcon:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v12 count:1];

  [(SBHIconImageCache *)self cacheImagesForIcons:v11 options:a4 completionHandler:v9, v12, v13];
}

- (void)cacheImagesForIcons:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__SBHIconImageCache_cacheImagesForIcons_options_completionHandler___block_invoke;
  v11[3] = &unk_1E8088D20;
  v12 = v8;
  v9 = v8;
  v10 = [(SBHIconImageCache *)self cacheImagesForIcons:a3 compatibleWithTraitCollections:MEMORY[0x1E695E0F0] options:a4 completionHandler:v11];
}

uint64_t __67__SBHIconImageCache_cacheImagesForIcons_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)cacheImageForIcon:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v10 = MEMORY[0x1E695DEC8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 arrayWithObjects:&v17 count:1];

  v15 = [(SBHIconImageCache *)self cacheImagesForIcons:v14 compatibleWithTraitCollection:v12 options:a5 completionHandler:v11, v17, v18];

  return v15;
}

- (id)cacheImageForIcon:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v10 = MEMORY[0x1E695DEC8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 arrayWithObjects:&v17 count:1];

  v15 = [(SBHIconImageCache *)self cacheImagesForIcons:v14 imageAppearance:v12 options:a5 completionHandler:v11, v17, v18];

  return v15;
}

- (id)cacheImageForIcon:(id)a3 imageAppearance:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v12 = MEMORY[0x1E695DEC8];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 arrayWithObjects:&v20 count:1];

  v18 = [(SBHIconImageCache *)self cacheImagesForIcons:v17 imageAppearance:v15 reason:v14 options:a6 completionHandler:v13, v20, v21];

  return v18;
}

- (id)cacheImageForIcon:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 reason:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v14 = MEMORY[0x1E695DEC8];
  v15 = a8;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v14 arrayWithObjects:&v22 count:1];

  v20 = [(SBHIconImageCache *)self cacheImagesForIcons:v19 imageAppearance:v17 priority:a5 reason:v16 options:a7 completionHandler:v15, v22, v23];

  return v20;
}

- (id)cacheImagesForIcons:(id)a3 compatibleWithTraitCollection:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (a4)
  {
    v17 = a4;
    v12 = MEMORY[0x1E695DEC8];
    v13 = a4;
    v14 = [v12 arrayWithObjects:&v17 count:1];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = [(SBHIconImageCache *)self cacheImagesForIcons:v10 compatibleWithTraitCollections:v14 options:a5 completionHandler:v11, v17, v18];

  return v15;
}

- (id)cacheImagesForIcons:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v10 = MEMORY[0x1E695DEC8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 arrayWithObjects:&v17 count:1];

  v15 = [(SBHIconImageCache *)self cacheImagesForIcons:v13 imageAppearances:v14 options:a5 completionHandler:v11, v17, v18];

  return v15;
}

- (id)cacheImagesForIcons:(id)a3 imageAppearance:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = a4;
  v12 = MEMORY[0x1E695DEC8];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 arrayWithObjects:&v20 count:1];

  v18 = [(SBHIconImageCache *)self cacheImagesForIcons:v16 imageAppearances:v17 reason:v14 options:a6 completionHandler:v13, v20, v21];

  return v18;
}

- (id)cacheImagesForIcons:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 reason:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = a4;
  v14 = MEMORY[0x1E695DEC8];
  v15 = a8;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v14 arrayWithObjects:&v22 count:1];

  v20 = [(SBHIconImageCache *)self cacheImagesForIcons:v18 imageAppearances:v19 priority:a5 reason:v16 options:a7 completionHandler:v15, v22, v23];

  return v20;
}

- (id)cacheImagesForIcons:(id)a3 compatibleWithTraitCollections:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v18[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  v13 = [a4 bs_mapNoNulls:&__block_literal_global_11];
  if (![v13 count])
  {
    v14 = +[SBHIconImageAppearance defaultAppearance];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    v13 = v15;
  }

  v16 = [(SBHIconImageCache *)self cacheImagesForIcons:v11 imageAppearances:v13 options:a6 completionHandler:v12];

  return v16;
}

- (id)cacheImagesForIcons:(id)a3 imageAppearances:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = -[SBHIconImageCache cacheImagesForIcons:imageAppearances:priority:reason:options:completionHandler:](self, "cacheImagesForIcons:imageAppearances:priority:reason:options:completionHandler:", v15, v14, [objc_opt_class() defaultPriority], v13, a6, v12);

  return v16;
}

- (id)cacheImagesForIcons:(id)a3 imageAppearances:(id)a4 priority:(int64_t)a5 reason:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8
{
  v60 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v41 = a4;
  v15 = a6;
  v16 = a8;
  BSDispatchQueueAssertMain();
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v54;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v54 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SBHIconImageCache *)self beginObservingIconIfNecessary:*(*(&v53 + 1) + 8 * i)];
      }

      v19 = [v17 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v19);
  }

  if (-[SBHIconImageCache hasCachedImagesForIcons:imageAppearances:options:](self, "hasCachedImagesForIcons:imageAppearances:options:", v17, v41, [objc_opt_class() retrievalOptionsForOptions:a7] | 0x20))
  {
    v22 = objc_alloc_init(SBHIconImageCacheCancellation);
    v23 = v22;
    if (!v16)
    {
      goto LABEL_27;
    }

    v24 = [(SBHIconImageCacheCancellation *)v22 identifier];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__SBHIconImageCache_cacheImagesForIcons_imageAppearances_priority_reason_options_completionHandler___block_invoke;
    block[3] = &unk_1E8088D68;
    v51 = v24;
    v52 = v16;
    v25 = v24;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v37 = v16;
    v38 = v15;
    v25 = [(SBHIconImageCache *)self buildCacheRequestWithReason:v15];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v17;
    obj = v17;
    v26 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v26)
    {
      v27 = v26;
      v40 = *v47;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v47 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v46 + 1) + 8 * j);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v30 = v41;
          v31 = [v30 countByEnumeratingWithState:&v42 objects:v57 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v43;
            do
            {
              for (k = 0; k != v32; ++k)
              {
                if (*v43 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                [v25 addIcon:v29 imageAppearance:*(*(&v42 + 1) + 8 * k) priority:a5 options:{a7, v36}];
              }

              v32 = [v30 countByEnumeratingWithState:&v42 objects:v57 count:16];
            }

            while (v32);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v27);
    }

    v16 = v37;
    v23 = [v25 finalizeRequestWithCompletionHandler:v37];
    v15 = v38;
    v17 = v36;
  }

LABEL_27:

  return v23;
}

void __100__SBHIconImageCache_cacheImagesForIcons_imageAppearances_priority_reason_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[SBHIconImageCacheResult alloc] initWithRequestIdentifier:*(a1 + 32)];
  [(SBHIconImageCacheResult *)v2 calculateElapsedTime];
  [(SBHIconImageCacheResult *)v2 setFinished:1];
  (*(*(a1 + 40) + 16))();
}

- (id)cacheImagesForIcons:(id)a3 prioritizedImageAppearances:(id)a4 reason:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  BSDispatchQueueAssertMain();
  v30 = v13;
  v16 = [v13 allKeys];
  if (-[SBHIconImageCache hasCachedImagesForIcons:imageAppearances:options:](self, "hasCachedImagesForIcons:imageAppearances:options:", v12, v16, [objc_opt_class() retrievalOptionsForOptions:a6] | 0x20))
  {
    v17 = objc_alloc_init(SBHIconImageCacheCancellation);
    v18 = v17;
    if (!v15)
    {
      goto LABEL_13;
    }

    v19 = [(SBHIconImageCacheCancellation *)v17 identifier];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__SBHIconImageCache_cacheImagesForIcons_prioritizedImageAppearances_reason_options_completionHandler___block_invoke;
    block[3] = &unk_1E8088D68;
    v40 = v19;
    v41 = v15;
    v20 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v28 = v16;
    v29 = v15;
    v20 = [(SBHIconImageCache *)self buildCacheRequestWithReason:v14];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v35 + 1) + 8 * i);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __102__SBHIconImageCache_cacheImagesForIcons_prioritizedImageAppearances_reason_options_completionHandler___block_invoke_2;
          v31[3] = &unk_1E8088D90;
          v32 = v20;
          v33 = v26;
          v34 = a6;
          [v30 enumerateKeysAndObjectsUsingBlock:v31];
        }

        v23 = [v21 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v23);
    }

    v15 = v29;
    v18 = [v20 finalizeRequestWithCompletionHandler:v29];
    v16 = v28;
  }

LABEL_13:

  return v18;
}

void __102__SBHIconImageCache_cacheImagesForIcons_prioritizedImageAppearances_reason_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[SBHIconImageCacheResult alloc] initWithRequestIdentifier:*(a1 + 32)];
  [(SBHIconImageCacheResult *)v2 calculateElapsedTime];
  [(SBHIconImageCacheResult *)v2 setFinished:1];
  (*(*(a1 + 40) + 16))();
}

void __102__SBHIconImageCache_cacheImagesForIcons_prioritizedImageAppearances_reason_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) addIcon:*(a1 + 40) imageAppearance:v5 priority:objc_msgSend(a3 options:{"integerValue"), *(a1 + 48)}];
}

- (id)buildCacheRequestWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SBHIconImageCacheCancellation);
  v6 = [[SBHIconImageCacheRequestBuilder alloc] initWithIconImageCache:v5 sharedCancellation:v4 reason:?];

  return v6;
}

uint64_t __62__SBHIconImageCache_finalizeRequestBuilder_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  [*(a1 + 40) calculateElapsedTime];
  [*(a1 + 40) setFinished:v2 ^ 1u];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)submitRequests:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(SBHIconImageCache *)self submitRequest:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)cacheImagesForIcons:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        v9 = [(SBHIconImageCache *)self imageForIcon:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)cacheUnmaskedImagesForIcons:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        v9 = [(SBHIconImageCache *)self unmaskedImageForIcon:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (unint64_t)optionsForRetrievalOptions:(unint64_t)a3
{
  v3 = ~(8 * a3) & 8;
  if ((a3 & 2) != 0)
  {
    v3 |= 3uLL;
  }

  return v3 | (a3 >> 1) & 4;
}

- (void)recacheImagesForIcon:(id)a3 completionHandler:(id)a4
{
  block = a4;
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = dispatch_group_create();
  [(SBHIconImageVariantCache *)self->_maskedCache recacheImagesForIcon:v6 completionGroup:v7];
  [(SBHIconImageVariantCache *)self->_unmaskedCache recacheImagesForIcon:v6 completionGroup:v7];

  if (block)
  {
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);
  }
}

- (void)purgeCachedImagesForIcons:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__SBHIconImageCache_purgeCachedImagesForIcons___block_invoke;
  v15[3] = &unk_1E8088E00;
  v5 = v4;
  v16 = v5;
  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SBHIconImageCache *)self endObservingIcon:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)purgeAllCachedImages
{
  BSDispatchQueueAssertMain();
  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:&__block_literal_global_22];

  [(SBHIconImageCache *)self endObservingAllIcons];
}

- (void)purgeAllCachedImagesForAppearancesOtherThanAppearances:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__SBHIconImageCache_purgeAllCachedImagesForAppearancesOtherThanAppearances___block_invoke;
  v6[3] = &unk_1E8088E00;
  v7 = v4;
  v5 = v4;
  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:v6];
}

- (void)cancelAllCachingRequests
{
  BSDispatchQueueAssertMain();

  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:&__block_literal_global_24];
}

- (BOOL)isCachingImageForIcon:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SBHIconImageCache_isCachingImageForIcon___block_invoke;
  v7[3] = &unk_1E8088E48;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __43__SBHIconImageCache_isCachingImageForIcon___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [(SBHIconImageVariantCache *)a2 isCachingImageForIcon:?];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)hasCachingRequests
{
  BSDispatchQueueAssertMain();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SBHIconImageCache_hasCachingRequests__block_invoke;
  v4[3] = &unk_1E8088E70;
  v4[4] = &v5;
  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:v4];
  LOBYTE(self) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return self;
}

- (BOOL)hasCachingRequestsStillDoingWork
{
  BSDispatchQueueAssertMain();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SBHIconImageCache_hasCachingRequestsStillDoingWork__block_invoke;
  v4[3] = &unk_1E8088E70;
  v4[4] = &v5;
  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:v4];
  LOBYTE(self) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return self;
}

BOOL __53__SBHIconImageCache_hasCachingRequestsStillDoingWork__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [(SBHIconImageVariantCache *)a2 hasCachingRequestsStillDoingWork];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)performWhenCachingActivityCompletesUsingBlock:(id)a3
{
  v9 = a3;
  if ([(SBHIconImageCache *)self hasCachingRequestsStillDoingWork])
  {
    performAfterCachingActivityBlocks = self->_performAfterCachingActivityBlocks;
    if (!performAfterCachingActivityBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = self->_performAfterCachingActivityBlocks;
      self->_performAfterCachingActivityBlocks = v5;

      performAfterCachingActivityBlocks = self->_performAfterCachingActivityBlocks;
    }

    v7 = [v9 copy];
    v8 = _Block_copy(v7);
    [(NSMutableArray *)performAfterCachingActivityBlocks addObject:v8];
  }

  else
  {
    v9[2]();
  }
}

- (void)checkIfCachingActivityHasCompleted
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_performAfterCachingActivityBlocks;
  if ([(NSMutableArray *)v3 count]&& ![(SBHIconImageCache *)self hasCachingRequestsStillDoingWork])
  {
    performAfterCachingActivityBlocks = self->_performAfterCachingActivityBlocks;
    self->_performAfterCachingActivityBlocks = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

+ (void)pauseCaching
{
  v2 = [a1 _workQueue];
  dispatch_suspend(v2);
}

+ (void)resumeCaching
{
  v2 = [a1 _workQueue];
  dispatch_resume(v2);
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v7];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(NSHashTable *)self->_observers removeObject:v4];
}

- (void)notifyObserversOfUpdateForIcon:(id)a3 imageAppearance:(id)a4 context:(SBHIconImageCacheRequestResultContext *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  BSDispatchQueueAssertMain();
  self->_currentRequestStartTimestamp = a5->var0;
  self->_currentRequestElapsedTime = a5->var1;
  self->_currentRequestChangedImageVisually = a5->var3 != 2;
  v10 = SBLogIconImageCache();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v8 uniqueIdentifier];
    var1 = a5->var1;
    var2 = a5->var2;
    *buf = 138412802;
    v26 = v17;
    v27 = 2048;
    v28 = var1;
    v29 = 2048;
    v30 = var2;
    _os_log_debug_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEBUG, "notifying observers of update to icon %@. requested elapsed time: %f, execution time: %f", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(NSHashTable *)self->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 iconImageCache:self didUpdateImageForIcon:v8 imageAppearance:v9];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  self->_currentRequestChangedImageVisually = 0;
  self->_currentRequestStartTimestamp = 0;
  self->_currentRequestElapsedTime = 0.0;
}

+ (id)genericImageWithInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v12 = +[SBHIconImageAppearance defaultAppearance];
  v13 = [a1 genericImageWithInfo:v12 imageAppearance:0 options:{v10, v9, v8, v7}];

  return v13;
}

+ (id)realGenericImageWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 options:(unint64_t)a5
{
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v13 = MEMORY[0x1E69A8A00];
  v14 = a3;
  v15 = [v13 genericApplicationIcon];
  v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v11 scale:{v10, v9}];
  SBHModifyImageDescriptorWithImageAppearance(v16, v14, [a1 iconServicesOptionsForRetrievalOptions:a4]);

  if ((a4 & 4) != 0)
  {
    [v15 imageForDescriptor:v16];
  }

  else
  {
    [v15 prepareImageForDescriptor:v16];
  }
  v17 = ;
  v18 = v17;
  if (v17)
  {
    v19 = MEMORY[0x1E69DCAB8];
    v20 = [v17 CGImage];
    [v18 scale];
    v21 = [v19 imageWithCGImage:v20 scale:0 orientation:?];
    v22 = v21;
    if (v21)
    {
      objc_setAssociatedObject(v21, &SBHIconImageCacheGenericImageTypeKey, &unk_1F3DB2180, 3);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)fallbackGenericImageWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = [(SBIconImageInfo *)a3 appearanceType];
  v15 = 0;
  if (v14 > 2)
  {
    if ((v14 - 5) < 2)
    {
LABEL_10:
      v18 = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_13;
    }

    if (v14 == 3)
    {
      v16 = MEMORY[0x1E69DC888];
      v17 = 0.0;
LABEL_12:
      v18 = [v16 colorWithWhite:v17 alpha:0.8];
      goto LABEL_13;
    }

    if (v14 != 4)
    {
      goto LABEL_14;
    }
  }

  else if (v14)
  {
    if (v14 != 1)
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      v16 = MEMORY[0x1E69DC888];
      v17 = 1.0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v18 = [MEMORY[0x1E69DC888] whiteColor];
LABEL_13:
  v15 = v18;
LABEL_14:
  v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v20 = MEMORY[0x1E69DCAB8];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __74__SBHIconImageCache_fallbackGenericImageWithInfo_imageAppearance_options___block_invoke;
  v24[3] = &unk_1E8088EA0;
  v27 = v13;
  v28 = v12;
  v29 = v11;
  v30 = v10;
  v25 = v15;
  v26 = a4;
  v21 = v15;
  v22 = [v20 sbf_imageFromBGRAContextWithSize:v19 scale:1 colorSpace:0 withAlpha:v24 pool:0 drawing:v13 encapsulation:{v12, v11}];
  CGColorSpaceRelease(v19);
  if (v22)
  {
    objc_setAssociatedObject(v22, &SBHIconImageCacheGenericImageTypeKey, &unk_1F3DB2198, 3);
  }

  return v22;
}

void __74__SBHIconImageCache_fallbackGenericImageWithInfo_imageAppearance_options___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 2) == 0)
  {
    v2 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, *(a1 + 48), *(a1 + 56), *(a1 + 72)}];
    [v2 addClip];
  }

  [*(a1 + 32) set];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = 0;
  v6 = 0;

  UIRectFill(*&v5);
}

+ (int64_t)genericImageTypeForImage:(id)a3
{
  v3 = objc_getAssociatedObject(a3, &SBHIconImageCacheGenericImageTypeKey);
  v4 = [v3 integerValue];

  return v4;
}

+ (id)genericImageWithInfo:(SBIconImageInfo *)a3 imageAppearance:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [a1 realGenericImageWithInfo:v15 imageAppearance:a4 options:{v13, v12, v11, v10}];
  if (!v16)
  {
    v16 = [a1 fallbackGenericImageWithInfo:v15 imageAppearance:a4 options:{v13, v12, v11, v10}];
  }

  v17 = SBHIconServicesAddDebugImageOverlayWithImageAppearance(v16);

  return v17;
}

- (UIImage)genericImage
{
  v3 = +[SBHIconImageAppearance defaultAppearance];
  v4 = [(SBHIconImageCache *)self genericImageWithImageAppearance:v3 options:0];

  return v4;
}

- (id)genericImageWithImageAppearance:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBHIconImageCache *)self variantCacheForOptions:a4];
  v8 = [(SBHIconImageVariantCache *)v7 genericImageWithImageAppearance:v6 options:a4];

  return v8;
}

+ (id)tintingBackgroundImageWithInfo:(SBIconImageInfo *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = (v3 * v5);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = CGBitmapContextCreate(0, v9, v9, 8uLL, v9, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextClear();
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  v13 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:Image scale:v6];
  CGImageRelease(Image);
  v14 = objc_alloc(MEMORY[0x1E69A8A00]);
  v22[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v16 = [v14 initWithImages:v15];

  v17 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v7, v6}];
  [v17 setAppearance:2];
  v18 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:12];
  [v17 setTintColor:v18];

  v19 = [v16 prepareImageForDescriptor:v17];
  v20 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:objc_msgSend(v19 scale:"CGImage") orientation:{0, v6}];

  return v20;
}

- (UIImage)tintingBackgroundImage
{
  tintingBackgroundImage = self->_tintingBackgroundImage;
  if (!tintingBackgroundImage)
  {
    [(SBHIconImageCache *)self iconImageInfo];
    v8 = [objc_opt_class() tintingBackgroundImageWithInfo:{v4, v5, v6, v7}];
    v9 = self->_tintingBackgroundImage;
    self->_tintingBackgroundImage = v8;

    tintingBackgroundImage = self->_tintingBackgroundImage;
  }

  return tintingBackgroundImage;
}

- (id)cachingPlaceholderImageWithImageAppearance:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBHIconImageCache *)self variantCacheForOptions:a4];
  v8 = [(SBHIconImageVariantCache *)v7 cachingPlaceholderImageWithImageAppearance:v6 options:a4];

  return v8;
}

+ (id)overlayImageWithInfo:(SBIconImageInfo *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = objc_alloc(MEMORY[0x1E69A8A00]);
  v10 = [v9 initWithImages:MEMORY[0x1E695E0F0]];
  v11 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v7, v6}];
  v12 = [v10 prepareImageForDescriptor:v11];
  v13 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v14 = [v12 CGImage];
  [v12 scale];
  v15 = [v13 initWithCGImage:v14 scale:0 orientation:?];

  return v15;
}

- (UIImage)overlayImage
{
  overlayImage = self->_overlayImage;
  if (!overlayImage)
  {
    [(SBHIconImageCache *)self iconImageInfo];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = objc_alloc(MEMORY[0x1E69A8A00]);
    v11 = [v10 initWithImages:MEMORY[0x1E695E0F0]];
    v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v5 scale:{v7, v9}];
    v13 = [v11 prepareImageForDescriptor:v12];
    v14 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v15 = [v13 CGImage];
    [v13 scale];
    v16 = [v14 initWithCGImage:v15 scale:0 orientation:?];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __33__SBHIconImageCache_overlayImage__block_invoke;
    v21[3] = &unk_1E8088EC8;
    v23 = 0;
    v24 = 0;
    v22 = v16;
    v25 = v5;
    v26 = v7;
    v17 = v16;
    v18 = [(SBHIconImageCache *)self memoryMappedIconImageOfSize:v21 scale:v5 withDrawing:v7, v9];
    v19 = self->_overlayImage;
    self->_overlayImage = v18;

    overlayImage = self->_overlayImage;
  }

  return overlayImage;
}

uint64_t __33__SBHIconImageCache_overlayImage__block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawInRect:17 blendMode:*(a1 + 40) alpha:{*(a1 + 48), *(a1 + 56), *(a1 + 64), 1.0}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 drawInRect:0 blendMode:v3 alpha:{v4, v5, v6, 0.75}];
}

+ (id)unmaskedOverlayImageWithInfo:(SBIconImageInfo *)a3
{
  v3 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:0 scale:0 type:&__block_literal_global_38 pool:1.0 drawing:1.0];
  v4 = [v3 sbf_imageByTilingCenterPixel];

  return v4;
}

void __50__SBHIconImageCache_unmaskedOverlayImageWithInfo___block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  [v0 setFill];

  v1 = 0;
  v2 = 0;
  v3 = 1.0;
  v4 = 1.0;

  UIRectFill(*&v1);
}

- (UIImage)unmaskedOverlayImage
{
  unmaskedOverlayImage = self->_unmaskedOverlayImage;
  if (!unmaskedOverlayImage)
  {
    [(SBHIconImageCache *)self iconImageInfo];
    v4 = [(SBHIconImageCache *)self memoryMappedIconImageOfSize:&__block_literal_global_40 scale:1.0 withDrawing:1.0];
    v5 = [v4 sbf_imageByTilingCenterPixel];
    v6 = self->_unmaskedOverlayImage;
    self->_unmaskedOverlayImage = v5;

    unmaskedOverlayImage = self->_unmaskedOverlayImage;
  }

  return unmaskedOverlayImage;
}

void __41__SBHIconImageCache_unmaskedOverlayImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  [v0 setFill];

  v1 = 0;
  v2 = 0;
  v3 = 1.0;
  v4 = 1.0;

  UIRectFill(*&v1);
}

- (BOOL)_canPoolImageForIcon:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() supportsMemoryPooling] && (objc_msgSend(v4, "hasExternalIconCaching") & 1) == 0)
  {
    add_explicit = atomic_fetch_add_explicit(&_canPoolImageForIcon____poolOptOutCount, 1uLL, memory_order_relaxed);
    v5 = add_explicit >= [(SBHIconImageCache *)self poolingBypassCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_iconImageOfSize:(CGSize)a3 scale:(double)a4 failGracefully:(BOOL)a5 drawing:(id)a6
{
  v6 = a5;
  height = a3.height;
  width = a3.width;
  v22 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = [(SBHIconImageCache *)self iconImagesMemoryPool];
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

- (id)_pooledIconImageForIconImage:(id)a3 icon:(id)a4 allowingOptOut:(BOOL)a5
{
  v5 = a5;
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if (v5 && ![(SBHIconImageCache *)self _canPoolImageForIcon:v9])
    {
LABEL_8:
      v11 = v8;
      goto LABEL_12;
    }

    v10 = [(SBHIconImageCache *)self iconImagesMemoryPool];
    v11 = [v8 sbf_memoryMappedImageWithPool:v10];

    if (!v11)
    {
      v12 = SBLogIconImageCache();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 134217984;
        v16 = v8;
        _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_INFO, "Icon image %p could not be pooled as BGRA without color clamping, returning original image instead", &v15, 0xCu);
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v8)
  {
    v13 = [v8 sbh_iconImageIdentity];
    [v11 sbh_setIconImageIdentity:v13];
  }

LABEL_12:

  return v11;
}

- (id)memoryMappedIconImageOfSize:(CGSize)a3 scale:(double)a4 withDrawing:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [(SBHIconImageCache *)self _iconImageOfSize:1 scale:v9 failGracefully:width drawing:height, a4];
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

- (void)beginObservingIconIfNecessary:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_observedIcons containsObject:v4])
  {
    [(NSHashTable *)self->_observedIcons addObject:v4];
    [v4 addObserver:self];
    v5 = SBLogIconImageCache();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBHIconImageCache beginObservingIconIfNecessary:];
    }

    v6 = [(SBHIconImageCache *)self cachedImageForIcon:v4 compatibleWithTraitCollection:0 options:0];
    if (v6)
    {
      v7 = +[SBHIconImageAppearance lightAppearance];
      memset(v8, 0, sizeof(v8));
      [(SBHIconImageCache *)self notifyObserversOfUpdateForIcon:v4 imageAppearance:v7 context:v8];
    }
  }
}

- (void)endObservingIcon:(id)a3
{
  observedIcons = self->_observedIcons;
  v5 = a3;
  [(NSHashTable *)observedIcons removeObject:v5];
  [v5 removeObserver:self];
}

- (void)endObservingAllIcons
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observedIcons;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeObserver:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSHashTable *)self->_observedIcons removeAllObjects];
}

- (void)enumerateVariantCachesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = 0;
  v4[2](v4, self->_maskedCache, &v5);
  if ((v5 & 1) == 0)
  {
    v4[2](v4, self->_unmaskedCache, &v5);
  }
}

- (void)finishedAsynchronousLoadOfIcon:(id)a3 imageAppearance:(id)a4 variant:(int64_t)a5 context:(SBHIconImageCacheRequestResultContext *)a6
{
  if (!a5)
  {
    v10 = v6;
    v11 = v7;
    v8 = *&a6->var2;
    v9[0] = *&a6->var0;
    v9[1] = v8;
    [(SBHIconImageCache *)self notifyObserversOfUpdateForIcon:a3 imageAppearance:a4 context:v9];
  }
}

- (void)performBackgroundCachingActivityUsingPriority:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  -[SBHIconImageCache performBackgroundCachingActivityUsingQOSClass:block:](self, "performBackgroundCachingActivityUsingQOSClass:block:", [objc_opt_class() qosClassForPriority:a3], v6);
}

- (void)performBackgroundCachingActivityUsingQOSClass:(unsigned int)a3 block:(id)a4
{
  block = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, a4);
  v4 = [objc_opt_class() _workQueue];
  dispatch_async(v4, block);
}

+ (unsigned)qosClassForPriority:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1BEE854A0[a3];
  }
}

- (unint64_t)imageGenerationForCachedImage:(id)a3
{
  v3 = [a3 sbh_iconImageIdentity];
  v4 = [v3 imageGeneration];

  return v4;
}

- (void)iconImageDidUpdate:(id)a3
{
  v4 = a3;
  v5 = SBLogIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBHIconImageCache *)v4 iconImageDidUpdate:v5];
  }

  [(SBHIconImageCache *)self updateImageForIcon:v4];
}

- (void)updateImageForIcon:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SBHIconImageCache_updateImageForIcon___block_invoke;
  v6[3] = &unk_1E8088E00;
  v7 = v4;
  v5 = v4;
  [(SBHIconImageCache *)self enumerateVariantCachesUsingBlock:v6];
  [(SBHIconImageCache *)self beginObservingIconIfNecessary:v5];
  [(SBHIconImageCache *)self recacheImagesForIcon:v5 completionHandler:0];
}

- (id)succinctDescription
{
  v2 = [(SBHIconImageCache *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconImageCache *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)unmaskedImageForIcon:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  BSDispatchQueueAssertMain();
  unmaskedCache = self->_unmaskedCache;
  v8 = +[SBHIconImageAppearance defaultAppearance];
  v9 = [(SBHIconImageVariantCache *)unmaskedCache realImageForIcon:v6 imageAppearance:v8 options:a4];

  [(SBHIconImageCache *)self beginObservingIconIfNecessary:v6];

  return v9;
}

- (id)finalizeRequestBuilder:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6[4];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 identifier];
  v11 = [[SBHIconImageCacheResult alloc] initWithRequestIdentifier:v10];
  if (v6)
  {
    v12 = v6[1];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 bs_compactMap:&__block_literal_global_19];
  [v9 setRequestedImageIdentities:v14];
  [(SBHIconImageCache *)self submitRequests:v13];
  if (v7)
  {
    if (v6)
    {
      v15 = v6[6];
    }

    else
    {
      v15 = 0;
    }

    OUTLINED_FUNCTION_0();
    v20 = 3221225472;
    v21 = __62__SBHIconImageCache_finalizeRequestBuilder_completionHandler___block_invoke_2;
    v22 = &unk_1E8088DD8;
    v23 = v9;
    v24 = v11;
    v25 = v7;
    v16 = v15;
    dispatch_group_notify(v16, MEMORY[0x1E69E96A0], block);
  }

  v17 = v9;

  return v9;
}

id __62__SBHIconImageCache_finalizeRequestBuilder_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 120);
  }

  else
  {
    return 0;
  }
}

- (void)submitRequest:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(SBHIconImageCache *)self beginObservingIconIfNecessary:v6];
  if (v9)
  {
    v7 = v9[14];
    if (v7 == 1)
    {
      unmaskedCache = self->_unmaskedCache;
      goto LABEL_11;
    }

    if (v7)
    {
      goto LABEL_6;
    }
  }

  unmaskedCache = self->_maskedCache;
LABEL_11:
  [(SBHIconImageVariantCache *)&unmaskedCache->super.isa submitRequest:v9];
LABEL_6:
}

uint64_t __39__SBHIconImageCache_hasCachingRequests__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (v5 && [v5[3] count])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)numberOfCachedImages
{
  maskedCache = self->_maskedCache;
  if (maskedCache)
  {
    return OUTLINED_FUNCTION_3(maskedCache);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)numberOfUnmaskedCachedImages
{
  unmaskedCache = self->_unmaskedCache;
  if (unmaskedCache)
  {
    return OUTLINED_FUNCTION_3(unmaskedCache);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)numberOfCachedImagesForAppearance:(id)a3 options:(unint64_t)a4
{
  v4 = a3;
  v5 = [OUTLINED_FUNCTION_6() variantCacheForOptions:?];
  v6 = v5;
  if (v5)
  {
    v7 = [*(v5 + 8) numberOfCachedImagesForAppearance:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)numberOfCachedImagesForAppearanceType:(int64_t)a3 options:(unint64_t)a4
{
  v5 = [(SBHIconImageCache *)self variantCacheForOptions:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [*(v5 + 8) numberOfCachedImagesForAppearanceType:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)cachingRequestCount
{
  maskedCache = self->_maskedCache;
  if (maskedCache)
  {
    v4 = [(NSMutableArray *)maskedCache->_cachingRequests count];
  }

  else
  {
    v4 = 0;
  }

  unmaskedCache = self->_unmaskedCache;
  if (unmaskedCache)
  {
    v6 = [(NSMutableArray *)unmaskedCache->_cachingRequests count];
  }

  else
  {
    v6 = 0;
  }

  return v6 + v4;
}

- (id)activityDescription
{
  v3 = MEMORY[0x1E696AEC0];
  maskedCache = self->_maskedCache;
  if (maskedCache)
  {
    v5 = [(NSMutableArray *)maskedCache->_cachingRequests count];
    v6 = self->_maskedCache;
    if (v6)
    {
      v7 = [(SBHIconImageAppearanceStore *)v6->_images numberOfCachedImages];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
LABEL_4:
  unmaskedCache = self->_unmaskedCache;
  if (!unmaskedCache)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v9 = [(NSMutableArray *)unmaskedCache->_cachingRequests count];
  v10 = self->_unmaskedCache;
  if (!v10)
  {
LABEL_11:
    v11 = 0;
    return [v3 stringWithFormat:@"Masked:\n\tRequests: %lu\n\tCached: %lu\nUnmasked:\n\tRequests: %lu\n\tCached: %lu", v5, v7, v9, v11];
  }

  v11 = [(SBHIconImageAppearanceStore *)v10->_images numberOfCachedImages];
  return [v3 stringWithFormat:@"Masked:\n\tRequests: %lu\n\tCached: %lu\nUnmasked:\n\tRequests: %lu\n\tCached: %lu", v5, v7, v9, v11];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconImageCache *)self succinctDescriptionBuilder];
  v5 = [(SBHIconImageCache *)self name];
  v6 = [v4 appendObject:v5 withName:@"name"];

  [(SBHIconImageCache *)self iconImageInfo];
  v8 = v7;
  v9 = [v4 appendSize:@"imageSize" withName:?];
  v10 = [v4 appendFloat:@"imageScale" withName:v8];
  v11 = [v4 appendUnsignedInteger:-[SBHIconImageCache numberOfCachedImages](self withName:{"numberOfCachedImages"), @"cachedImageCount"}];
  v12 = [v4 appendUnsignedInteger:-[SBHIconImageCache numberOfUnmaskedCachedImages](self withName:{"numberOfUnmaskedCachedImages"), @"cachedUnmaskedImageCount"}];
  maskedCache = self->_maskedCache;
  if (maskedCache)
  {
    v14 = [(NSHashTable *)maskedCache->_failedIcons count];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 appendUnsignedInteger:v14 withName:@"failedIconsCount"];

  return v4;
}

- (void)beginObservingIconIfNecessary:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(&dword_1BEB18000, v0, v1, "began observing icon %@", v2);
}

- (void)iconImageDidUpdate:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(&dword_1BEB18000, a2, v4, "observed update to icon %@", v5);
}

@end