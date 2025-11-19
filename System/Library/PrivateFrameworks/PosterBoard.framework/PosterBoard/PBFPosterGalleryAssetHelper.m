@interface PBFPosterGalleryAssetHelper
- (BOOL)_kickoffPreviewGeneratorForPosterPreview:(id)a3 context:(id)a4;
- (BOOL)_setupHeroShotsForPosterPreview:(id)a3 context:(id)a4;
- (BOOL)_setupLiveDisplayStyleForPreview:(id)a3;
- (BOOL)_sizeContainerView:(id)a3 forPreview:(id)a4 displayContext:(id)a5;
- (BOOL)_updateHydrationStateIfNeeded;
- (BOOL)_updateHydrationStateTo:(int64_t)a3 reason:(id)a4;
- (BOOL)updatePosterPreview:(id)a3 isVisible:(BOOL)a4;
- (CGSize)_contentSizeForPreview:(id)a3;
- (NSSet)knownDisplayContexts;
- (PBFExtensionProviding)extensionProvider;
- (PBFPosterGalleryAssetHelper)initWithPreviewGenerator:(id)a3 extensionProvider:(id)a4;
- (PBFPosterGalleryAssetHelperDelegate)delegate;
- (PBFPosterPreviewGenerator)previewGenerator;
- (id)_dequeueViewOfClass:(Class)a3;
- (id)_newImageViewWithImage:(id)a3 posterPreview:(id)a4;
- (id)assetsForPosterPreview:(id)a3;
- (id)knownDisplayContextWithoutActiveDisplayContext;
- (id)sizedDebugViewForPosterPreview:(id)a3 reason:(id)a4;
- (void)_invalidateAllHistogramCache;
- (void)_noteInteractionAssertionsWereUpdated;
- (void)_receiveUpdatedAssetForPosterPreview:(id)a3 snapshotContext:(id)a4 snapshotBundle:(id)a5 fetchError:(id)a6;
- (void)_recycleView:(id)a3;
- (void)_resetHydrationState;
- (void)_sizeAssetsForActiveDisplayContext;
- (void)_stateWasUpdated:(BOOL)a3;
- (void)_stateWasUpdatedForPosterPreviews:(id)a3;
- (void)_teardownLiveViewControllerForState:(id)a3 invalidate:(BOOL)a4;
- (void)_teardownState:(id)a3;
- (void)_teardownStateForPosterPreviews:(id)a3;
- (void)_updateActivePosters;
- (void)_updateActivePostersAfterFinishingExecuting:(id)a3 successfully:(BOOL)a4;
- (void)_updateHistogramCacheIfNeeded;
- (void)_updateHydrationStateIfNeeded;
- (void)cancel;
- (void)cancelPrefetchForPosterPreviews:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)prefetchPosterPreviews:(id)a3;
- (void)resetKnownDisplayContexts;
- (void)setActiveDisplayContext:(id)a3;
- (void)setKnownDisplayContexts:(id)a3;
- (void)setPosterPreviews:(id)a3;
- (void)setSuspended:(BOOL)a3;
@end

@implementation PBFPosterGalleryAssetHelper

- (PBFPosterGalleryAssetHelper)initWithPreviewGenerator:(id)a3 extensionProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PBFPosterGalleryAssetHelper initWithPreviewGenerator:a2 extensionProvider:?];
  }

  v9 = v8;
  if (!v8)
  {
    [PBFPosterGalleryAssetHelper initWithPreviewGenerator:a2 extensionProvider:?];
  }

  v35.receiver = self;
  v35.super_class = PBFPosterGalleryAssetHelper;
  v10 = [(PBFPosterGalleryAssetHelper *)&v35 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_previewGenerator, v7);
    objc_storeWeak(&v11->_extensionProvider, v9);
    v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    visibleStatesWithLivePreviewEnabled = v11->_visibleStatesWithLivePreviewEnabled;
    v11->_visibleStatesWithLivePreviewEnabled = v12;

    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    alreadyPlayedLivePosters = v11->_alreadyPlayedLivePosters;
    v11->_alreadyPlayedLivePosters = v14;

    v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    successfullyPlayedLivePosters = v11->_successfullyPlayedLivePosters;
    v11->_successfullyPlayedLivePosters = v16;

    v18 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    previewToState = v11->_previewToState;
    v11->_previewToState = v18;

    v20 = [MEMORY[0x277CBEB98] set];
    knownDisplayContexts = v11->_knownDisplayContexts;
    v11->_knownDisplayContexts = v20;

    v22 = objc_opt_new();
    executingLivePosterStates = v11->_executingLivePosterStates;
    v11->_executingLivePosterStates = v22;

    v24 = [MEMORY[0x277CBEB38] dictionary];
    displayContextHistogramCache = v11->_displayContextHistogramCache;
    v11->_displayContextHistogramCache = v24;

    v26 = [MEMORY[0x277CBEB58] set];
    previewsRequiringHistogramCacheInvalidation = v11->_previewsRequiringHistogramCacheInvalidation;
    v11->_previewsRequiringHistogramCacheInvalidation = v26;

    objc_initWeak(&location, v11);
    v28 = MEMORY[0x277CF0BD0];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke;
    v32[3] = &unk_2782C70E8;
    objc_copyWeak(&v33, &location);
    v29 = [v28 assertionWithIdentifier:@"galleryInteractionCompoundAssertion" stateDidChangeHandler:v32];
    galleryInteractionAssertion = v11->_galleryInteractionAssertion;
    v11->_galleryInteractionAssertion = v29;

    v11->_isSuspended = 1;
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke_2;
  block[3] = &unk_2782C6D48;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteInteractionAssertionsWereUpdated];
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_galleryInteractionAssertion invalidate];
  galleryInteractionAssertion = self->_galleryInteractionAssertion;
  self->_galleryInteractionAssertion = 0;

  v4.receiver = self;
  v4.super_class = PBFPosterGalleryAssetHelper;
  [(PBFPosterGalleryAssetHelper *)&v4 dealloc];
}

- (void)setPosterPreviews:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v5 = PBFLogAssetHelper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = self;
      v6 = "(%p) bail setPosterPreviews; invalidated";
LABEL_7:
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, v6, &v12, 0xCu);
    }
  }

  else if (BSEqualSets())
  {
    v5 = PBFLogAssetHelper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = self;
      v6 = "(%p) bail setPosterPreviews; same poster previews, no need to do anything";
      goto LABEL_7;
    }
  }

  else
  {
    [(PBFPosterGalleryAssetHelper *)self _resetHydrationState];
    v5 = [v4 mutableCopy];
    [v5 minusSet:self->_posterPreviews];
    v7 = [(NSSet *)self->_posterPreviews mutableCopy];
    [v7 minusSet:v4];
    v8 = PBFLogAssetHelper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 134218242;
      v13 = self;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) added poster previews: %{public}@", &v12, 0x16u);
    }

    v9 = PBFLogAssetHelper();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 134218242;
      v13 = self;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "(%p) added poster removed: %{public}@", &v12, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
    v10 = [v4 copy];
    posterPreviews = self->_posterPreviews;
    self->_posterPreviews = v10;

    [(PBFPosterGalleryAssetHelper *)self _teardownStateForPosterPreviews:v7];
    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v5];
  }
}

- (void)setActiveDisplayContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v6 = PBFLogAssetHelper();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = self;
      v7 = "(%p) bail setActiveDisplayContext; invalidated";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
      _os_log_impl(&dword_21B526000, v8, v9, v7, &v19, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = BSEqualObjects();
  v11 = PBFLogAssetHelper();
  v6 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218242;
      v20 = self;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%p) updating active display context: %{public}@", &v19, 0x16u);
    }

    objc_storeStrong(&self->_activeDisplayContext, a3);
    if (self->_activeDisplayContext)
    {
      v12 = [PBFPosterGalleryViewSpec specForDisplayContext:?];
      activeDisplayContextSpec = self->_activeDisplayContextSpec;
      self->_activeDisplayContextSpec = v12;

      v14 = PBFLogAssetHelper();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        activeDisplayContext = self->_activeDisplayContext;
        v19 = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = activeDisplayContext;
        v16 = "(%p) updating spec for active display context: %{public}@";
LABEL_16:
        _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, v16, &v19, 0x16u);
      }
    }

    else
    {
      v17 = self->_activeDisplayContextSpec;
      self->_activeDisplayContextSpec = 0;

      v14 = PBFLogAssetHelper();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_activeDisplayContext;
        v19 = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v18;
        v16 = "(%p) clearing spec for active display context: %{public}@";
        goto LABEL_16;
      }
    }

    [(PBFPosterGalleryAssetHelper *)self _resetHydrationState];
    [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
    goto LABEL_18;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = 134217984;
    v20 = self;
    v7 = "(%p) abort updating active display context; same as existing context";
    v8 = v6;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_7;
  }

LABEL_8:

LABEL_18:
}

- (void)setKnownDisplayContexts:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isInvalidated)
  {
    v5 = PBFLogAssetHelper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%p) bail setKnownDisplayContexts; invalidated", &v11, 0xCu);
    }
  }

  else if (![(NSSet *)self->_knownDisplayContexts isEqualToSet:v4])
  {
    v6 = [v4 copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB98] set];
    }

    knownDisplayContexts = self->_knownDisplayContexts;
    self->_knownDisplayContexts = v8;

    [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
    v10 = PBFLogAssetHelper();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "(%p) updated known display context: %{public}@", &v11, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
  }
}

- (void)resetKnownDisplayContexts
{
  v15 = *MEMORY[0x277D85DE8];
  isInvalidated = self->_isInvalidated;
  v4 = PBFLogAssetHelper();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isInvalidated)
  {
    if (v5)
    {
      v13 = 134217984;
      v14 = self;
      v6 = "(%p) bail resetKnownDisplayContexts; invalidated";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
      _os_log_impl(&dword_21B526000, v7, v8, v6, &v13, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v13 = 134217984;
    v14 = self;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) resetting known display context", &v13, 0xCu);
  }

  v9 = [MEMORY[0x277CBEB98] set];
  knownDisplayContexts = self->_knownDisplayContexts;
  self->_knownDisplayContexts = v9;

  [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
  assetHydrationState = self->_assetHydrationState;
  v12 = PBFLogAssetHelper();
  v4 = v12;
  if (assetHydrationState < 3)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = self;
      v6 = "(%p) bail reset hydration state after resetKnownDisplayContexts";
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = self;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) known display context was reset during asset hydration state of alternate display context - resetting hydration state", &v13, 0xCu);
  }

  [(PBFPosterGalleryAssetHelper *)self _resetHydrationState];
  [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
}

- (NSSet)knownDisplayContexts
{
  activeDisplayContext = self->_activeDisplayContext;
  knownDisplayContexts = self->_knownDisplayContexts;
  if (activeDisplayContext)
  {
    v4 = [(NSSet *)knownDisplayContexts setByAddingObject:?];
  }

  else
  {
    v4 = [(NSSet *)knownDisplayContexts copy];
  }

  return v4;
}

- (id)knownDisplayContextWithoutActiveDisplayContext
{
  v3 = [(NSSet *)self->_knownDisplayContexts mutableCopy];
  [v3 removeObject:self->_activeDisplayContext];

  return v3;
}

- (void)setSuspended:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_isInvalidated)
  {
    v4 = PBFLogAssetHelper();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = self;
      v5 = "(%p) bail setSuspended; invalidated";
      v6 = v4;
      v7 = 12;
LABEL_7:
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = a3;
  isSuspended = self->_isSuspended;
  v4 = PBFLogAssetHelper();
  v10 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSuspended == v8)
  {
    if (v10)
    {
      v11 = 134218240;
      v12 = self;
      v13 = 1024;
      v14 = v8;
      v5 = "(%p) bail update suspended; isSuspended is already %{BOOL}u";
      v6 = v4;
      v7 = 18;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if (v10)
  {
    v11 = 134218240;
    v12 = self;
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) update suspended: %{BOOL}u", &v11, 0x12u);
  }

  self->_isSuspended = v8;
  [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
}

- (BOOL)updatePosterPreview:(id)a3 isVisible:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v7 = PBFLogAssetHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = self;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "(%p) bail updatePosterPreview; invalidated", &v15, 0xCu);
    }

LABEL_13:
    v13 = 0;
    goto LABEL_16;
  }

  v7 = [(NSMapTable *)self->_previewToState objectForKey:v6];
  if ([v7 isVisible]== v4)
  {
    v12 = PBFLogAssetHelper();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PBFPosterGalleryAssetHelper updatePosterPreview:isVisible:];
    }

    goto LABEL_13;
  }

  [(PBFPosterGalleryAssetHelper *)self _invalidateHistogramCacheForPosterPreview:v6];
  v8 = PBFLogAssetHelper();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v15 = 134218498;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) updatePosterPreview for posterPreview %{public}@; marking visible as %{BOOL}u", &v15, 0x1Cu);
  }

  [v7 setVisible:v4];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v9];

  if ([v7 willUseLivePreview])
  {
    visibleStatesWithLivePreviewEnabled = self->_visibleStatesWithLivePreviewEnabled;
    v11 = [v7 preview];
    if (v4)
    {
      [(NSMapTable *)visibleStatesWithLivePreviewEnabled setObject:v7 forKey:v11];
    }

    else
    {
      [(NSMapTable *)visibleStatesWithLivePreviewEnabled removeObjectForKey:v11];

      [(NSHashTable *)self->_alreadyPlayedLivePosters removeObject:v7];
      [(NSHashTable *)self->_successfullyPlayedLivePosters removeObject:v7];
    }
  }

  [(PBFPosterGalleryAssetHelper *)self _updateActivePosters];
  v13 = 1;
LABEL_16:

  return v13;
}

- (void)prefetchPosterPreviews:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v5 = PBFLogAssetHelper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%p) bail prefetchPosterPreviews; invalidated", buf, 0xCu);
    }
  }

  else
  {
    v6 = [v4 mutableCopy];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __54__PBFPosterGalleryAssetHelper_prefetchPosterPreviews___block_invoke;
    v11 = &unk_2782C7760;
    v12 = self;
    v5 = v6;
    v13 = v5;
    [v4 enumerateObjectsUsingBlock:&v8];
    v7 = PBFLogAssetHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v15 = self;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_INFO, "(%p) prefetchPosterPreviews: %{public}@", buf, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v5, v8, v9, v10, v11, v12];
  }
}

void __54__PBFPosterGalleryAssetHelper_prefetchPosterPreviews___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKey:?];
  if ([v3 shouldPrefetch])
  {
    [*(a1 + 40) removeObject:v4];
  }

  else
  {
    [v3 setShouldPrefetch:1];
    [*(a1 + 32) _invalidateHistogramCacheForPosterPreview:v4];
  }
}

- (void)cancelPrefetchForPosterPreviews:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v5 = PBFLogAssetHelper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%p) bail cancelPrefetchForPosterPreviews; invalidated", buf, 0xCu);
    }
  }

  else
  {
    v6 = [v4 mutableCopy];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __63__PBFPosterGalleryAssetHelper_cancelPrefetchForPosterPreviews___block_invoke;
    v11 = &unk_2782C7760;
    v12 = self;
    v5 = v6;
    v13 = v5;
    [v4 enumerateObjectsUsingBlock:&v8];
    v7 = PBFLogAssetHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v15 = self;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "(%p) cancelPrefetchForPosterPreviews: %{public}@", buf, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v5, v8, v9, v10, v11, v12];
  }
}

void __63__PBFPosterGalleryAssetHelper_cancelPrefetchForPosterPreviews___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKey:?];
  if ([v3 shouldPrefetch])
  {
    [v3 setShouldPrefetch:0];
    [*(a1 + 32) _invalidateHistogramCacheForPosterPreview:v4];
  }

  else
  {
    [*(a1 + 40) removeObject:v4];
  }
}

- (id)assetsForPosterPreview:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v5 = PBFLogAssetHelper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134217984;
      v29 = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%p) bail assetsForPosterPreview; invalidated", &v28, 0xCu);
    }

LABEL_17:
    v7 = 0;
    goto LABEL_34;
  }

  v6 = [(NSMapTable *)self->_previewToState objectForKey:v4];
  v5 = v6;
  if (!v6)
  {
    v22 = PBFLogAssetHelper();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134218242;
      v29 = self;
      v30 = 2114;
      v31 = v4;
      _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "(%p) assetsForPosterPreview: %{public}@ -- no state found; not tracking poster preview?", &v28, 0x16u);
    }

    goto LABEL_17;
  }

  v7 = [v6 asset];
  v8 = [v4 type];
  v9 = PBFPreviewTypeHero;

  if (v8 == v9)
  {
    v10 = [v5 heroMicaPackageView];
    v23 = [v5 heroImageView];
    v14 = v23;
    if (v10 && (v24 = v10, v23) || (([(PBFPosterGalleryAssetHelper *)self _setupHeroShotsForPosterPreview:v4 context:self->_activeDisplayContext], v10) ? (v24 = v10) : (v24 = v14), v10 | v14))
    {
      [v7 setHeroView:v24];
    }

    goto LABEL_33;
  }

  v10 = [v5 snapshotBundleLayoutView];
  if ([v5 willUseLivePreview])
  {
    v11 = [v7 assetViewController];

    if (!v11)
    {
      [(PBFPosterGalleryAssetHelper *)self _setupLiveDisplayStyleForPreview:v4];
    }

    v12 = [v7 assetViewController];
    v13 = [v12 viewIfLoaded];
    [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v13 forPreview:v4 displayContext:self->_activeDisplayContext];
  }

  v14 = [v7 assetViewController];
  activeDisplayContext = self->_activeDisplayContext;
  v16 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v4];
  v17 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:activeDisplayContext definition:v16];

  v18 = [v5 snapshotCollection];
  v19 = [v18 receivedSnapshotBundleForContext:v17];

  if (v19)
  {
    if (v10)
    {
      goto LABEL_12;
    }

    if (([v5 willUseLivePreview]& 1) != 0)
    {
      v10 = 0;
    }

    else
    {
      v25 = objc_opt_self();
      v10 = [(PBFPosterGalleryAssetHelper *)self _dequeueViewOfClass:v25];

      [v5 setSnapshotBundleLayoutView:v10];
      if (v10)
      {
LABEL_12:
        v20 = [v10 snapshotBundle];
        v21 = [v19 isEqual:v20];

        if ((v21 & 1) == 0)
        {
          [v10 setSnapshotBundle:v19];
          [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v10 forPreview:v4 displayContext:self->_activeDisplayContext];
        }
      }
    }
  }

  v26 = [v7 snapshotBundleLayoutView];

  if (v26 != v10)
  {
    [v7 setSnapshotBundleLayoutView:v10];
  }

  if (v14)
  {
    [v14 setSnapshotBundle:v19 forDisplayContext:self->_activeDisplayContext];
  }

LABEL_33:
LABEL_34:

  return v7;
}

- (id)sizedDebugViewForPosterPreview:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  BSDispatchQueueAssertMain();
  v8 = [v7 posterDescriptorLookupInfo];
  v9 = [v8 posterDescriptorPath];
  v10 = [v9 identityPathComponent];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ for descriptor instance: %@", v6, v10];

  v12 = objc_opt_new();
  [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v12 forPreview:v7 displayContext:self->_activeDisplayContext];
  v13 = MEMORY[0x277D3EF48];
  [v12 frame];
  v14 = [v13 uiViewWithMessage:v11 level:16 frame:0 location:?];
  [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v14 forPreview:v7 displayContext:self->_activeDisplayContext];

  return v14;
}

- (void)_noteInteractionAssertionsWereUpdated
{
  if (([(BSCompoundAssertion *)self->_galleryInteractionAssertion isActive]& 1) == 0)
  {

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
  }
}

- (void)_invalidateAllHistogramCache
{
  [(NSMutableDictionary *)self->_displayContextHistogramCache removeAllObjects];
  previewsRequiringHistogramCacheInvalidation = self->_previewsRequiringHistogramCacheInvalidation;

  [(NSMutableSet *)previewsRequiringHistogramCacheInvalidation removeAllObjects];
}

- (void)_updateHistogramCacheIfNeeded
{
  if ([(NSMutableSet *)self->_previewsRequiringHistogramCacheInvalidation count])
  {
    previewsRequiringHistogramCacheInvalidation = self->_previewsRequiringHistogramCacheInvalidation;

    [(NSMutableSet *)previewsRequiringHistogramCacheInvalidation removeAllObjects];
  }
}

- (void)_stateWasUpdated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  isInvalidated = self->_isInvalidated;
  v6 = PBFLogAssetHelper();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (isInvalidated)
  {
    if (v7)
    {
      [PBFPosterGalleryAssetHelper _stateWasUpdated:];
    }
  }

  else
  {
    if (v7)
    {
      [PBFPosterGalleryAssetHelper _stateWasUpdated:];
    }

    v6 = [(PBFPosterGalleryAssetHelper *)self posterPreviews];
    v8 = [(PBFPosterGalleryAssetHelper *)self _updateHydrationStateIfNeeded];
    v9 = PBFLogAssetHelper();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 || v3)
    {
      if (v10)
      {
        v11 = 134218498;
        v12 = self;
        v13 = 1024;
        v14 = v3;
        v15 = 2114;
        v16 = v6;
        _os_log_debug_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEBUG, "(%p) _stateWasUpdated:%{BOOL}u; update hydration state was needed for poster previews: %{public}@", &v11, 0x1Cu);
      }

      [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v6];
    }

    else
    {
      if (v10)
      {
        [PBFPosterGalleryAssetHelper _stateWasUpdated:];
      }
    }

    [(PBFPosterGalleryAssetHelper *)self _sizeAssetsForActiveDisplayContext];
    [(PBFPosterGalleryAssetHelper *)self _updateActivePosters];
  }
}

- (BOOL)_updateHydrationStateIfNeeded
{
  v70 = *MEMORY[0x277D85DE8];
  if (self->_isInvalidated)
  {
    v3 = PBFLogAssetHelper();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
    }

    return 0;
  }

  [(PBFPosterGalleryAssetHelper *)self _updateHistogramCacheIfNeeded];
  p_assetHydrationState = &self->_assetHydrationState;
  if (self->_assetHydrationState)
  {
    v6 = [(PBFPosterGalleryAssetHelper *)self posterPreviews];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PBFPosterGalleryAssetHelper__updateHydrationStateIfNeeded__block_invoke;
    aBlock[3] = &unk_2782C7788;
    aBlock[4] = self;
    v7 = v6;
    v63 = v7;
    v8 = _Block_copy(aBlock);
    v9 = self->_assetHydrationState - 1;
    if (v9 > 3)
    {
      v10 = @"PBFPosterGalleryAssetHydrationStateDefault";
    }

    else
    {
      v10 = off_2782C7840[v9];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) ", v10];
    if (!-[NSMapTable count](self->_previewToState, "count") && ![v7 count])
    {
      goto LABEL_25;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v8[2](&v56, v8, self->_activeDisplayContext);
    if (v57 != 0)
    {
      v13 = *p_assetHydrationState;
      v14 = PBFLogAssetHelper();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

      if (v13 == 1)
      {
        if (v15)
        {
          v16 = PBFLogAssetHelper();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
          }

LABEL_24:
          v4 = 0;
LABEL_77:

          goto LABEL_78;
        }

        goto LABEL_25;
      }

      if (v15)
      {
        v20 = PBFLogAssetHelper();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
        }
      }

      v16 = [v12 stringByAppendingString:@"outstanding active display context foreground hydration transitioning back to initial hydration state to finish those up"];;
      v21 = self;
      v22 = 1;
      goto LABEL_76;
    }

    if (v59 != 0)
    {
      v17 = *p_assetHydrationState;
      v18 = PBFLogAssetHelper();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

      if (v17 == 2)
      {
        if (v19)
        {
          v16 = PBFLogAssetHelper();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
          }

          goto LABEL_24;
        }

LABEL_25:
        v4 = 0;
LABEL_78:

        return v4;
      }

      if (v19)
      {
        v40 = PBFLogAssetHelper();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
        }
      }

      v16 = [v12 stringByAppendingString:@"outstanding active display context BACKGROUND hydration transitioning back to initial hydration state to finish those up"];;
      v21 = self;
      v22 = 2;
LABEL_76:
      v4 = [(PBFPosterGalleryAssetHelper *)v21 _updateHydrationStateTo:v22 reason:v16];
      goto LABEL_77;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v23 = [(PBFPosterGalleryAssetHelper *)self knownDisplayContexts];
    v24 = [v23 countByEnumeratingWithState:&v52 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v51 = v12;
      v26 = 0;
      v27 = *v53;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(v23);
          }

          if (*(*(&v52 + 1) + 8 * i) != self->_activeDisplayContext)
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            memset(buf, 0, sizeof(buf));
            (v8[2])(buf, v8);
            v26 += *(&v68 + 1);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v52 objects:v69 count:16];
      }

      while (v25);

      v12 = v51;
      if (v26)
      {
        v29 = PBFLogAssetHelper();
        v30 = os_signpost_id_generate(v29);

        v31 = PRIsLowQualityDevice();
        v32 = PBFLogAssetHelper();
        v33 = v32;
        v34 = v30 - 1;
        if (!v31)
        {
          if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21B526000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v30, "HighQualityGalleryHydration", "", buf, 2u);
          }

          v44 = PBFLogAssetHelper();
          v45 = v44;
          if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21B526000, v45, OS_SIGNPOST_INTERVAL_END, v30, "HighQualityGalleryHydration", "", buf, 2u);
          }

          v46 = PBFLogAssetHelper();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = *p_assetHydrationState - 1;
            if (v47 > 3)
            {
              v48 = @"PBFPosterGalleryAssetHydrationStateDefault";
            }

            else
            {
              v48 = off_2782C7840[v47];
            }

            *buf = 134218498;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v48;
            *&buf[22] = 2114;
            *&buf[24] = @"PBFPosterGalleryAssetHydrationStateAlternateDisplayContextHydration";
            _os_log_impl(&dword_21B526000, v46, OS_LOG_TYPE_INFO, "(%p) _updateHydrationStateIfNeeded; executing transitioning from %{public}@ -> %{public}@", buf, 0x20u);
          }

          v16 = [v51 stringByAppendingString:@"Outstanding display context fetches are needed after initial hydration"];
          v21 = self;
          v22 = 3;
          goto LABEL_76;
        }

        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v30, "LowQualityGalleryHydration", "", buf, 2u);
        }

        v35 = PBFLogAssetHelper();
        v36 = v35;
        if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v36, OS_SIGNPOST_INTERVAL_END, v30, "LowQualityGalleryHydration", "", buf, 2u);
        }

        v37 = PBFLogAssetHelper();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = *p_assetHydrationState - 1;
          if (v38 > 3)
          {
            v39 = @"PBFPosterGalleryAssetHydrationStateDefault";
          }

          else
          {
            v39 = off_2782C7840[v38];
          }

          *buf = 134218498;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          *&buf[22] = 2114;
          *&buf[24] = @"PBFPosterGalleryAssetHydrationStateComplete";
          _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_INFO, "(%p) _updateHydrationStateIfNeeded; executing transitioning from %{public}@ -> %{public}@", buf, 0x20u);
        }

        v49 = @"Low quality device; marking as complete...";
        goto LABEL_75;
      }
    }

    else
    {
    }

    v41 = PBFLogAssetHelper();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = *p_assetHydrationState - 1;
      if (v42 > 3)
      {
        v43 = @"PBFPosterGalleryAssetHydrationStateDefault";
      }

      else
      {
        v43 = off_2782C7840[v42];
      }

      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      *&buf[22] = 2114;
      *&buf[24] = @"PBFPosterGalleryAssetHydrationStateComplete";
      _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_INFO, "(%p) _updateHydrationStateIfNeeded; executing transitioning from %{public}@ -> %{public}@", buf, 0x20u);
    }

    v49 = @"All requests for active display context as well as other display contexts are complete.";
LABEL_75:
    v16 = [v12 stringByAppendingString:v49];
    v21 = self;
    v22 = 4;
    goto LABEL_76;
  }

  v11 = PBFLogAssetHelper();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
  }

  return [(PBFPosterGalleryAssetHelper *)self _updateHydrationStateTo:1 reason:@"Initial Default->Initial transition."];
}

void __60__PBFPosterGalleryAssetHelper__updateHydrationStateIfNeeded__block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (![*(*(a1 + 32) + 88) count])
  {
    v23 = [*(*(a1 + 32) + 80) objectForKey:v5];
    if (v23)
    {
      v24 = v23;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      [v23 getValue:a3 size:96];

      goto LABEL_33;
    }
  }

  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  v8 = *v29;
  v26 = v5;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      v11 = [*(*(a1 + 32) + 8) objectForKey:v10];
      v12 = [v10 type];
      v13 = PBFPreviewTypeHero;

      if (v12 != v13)
      {
        v14 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v10];
        v15 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:v5 definition:v14];
        if ([v11 isVisible])
        {
          v16 = 1;
        }

        else
        {
          v16 = [v11 shouldPrefetch];
        }

        v27 = 0;
        v17 = [v11 snapshotCollection];
        v18 = [v17 snapshotFutureForContext:v15 outStatus:&v27];

        if (v27 > 1)
        {
          v5 = v26;
          if (v27 == 2)
          {
            ++*(a3 + 72);
            v20 = v16 == 0;
            v19 = 40;
            v21 = 8;
            goto LABEL_24;
          }

          if (v27 != 3)
          {
            goto LABEL_27;
          }

          ++*(a3 + 64);
          v19 = 32;
          if (v16)
          {
            v19 = 0;
          }
        }

        else
        {
          v5 = v26;
          if (v27)
          {
            if (v27 == 1)
            {
              ++*(a3 + 80);
              v19 = 16;
              if (!v16)
              {
                v19 = 48;
              }

              goto LABEL_26;
            }

LABEL_27:

            goto LABEL_28;
          }

          ++*(a3 + 88);
          v20 = v16 == 0;
          v19 = 56;
          v21 = 24;
LABEL_24:
          if (!v20)
          {
            v19 = v21;
          }
        }

LABEL_26:
        ++*(a3 + v19);
        goto LABEL_27;
      }

LABEL_28:
    }

    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);
LABEL_30:

  v22 = [MEMORY[0x277CCAE60] valueWithBytes:a3 objCType:"{?={?=QQQQ}{?=QQQQ}{?=QQQQ}}"];
  [*(*(a1 + 32) + 80) setObject:v22 forKey:v5];

LABEL_33:
}

- (BOOL)_updateHydrationStateTo:(int64_t)a3 reason:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_isInvalidated)
  {
    v7 = PBFLogAssetHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = self;
      v8 = "(%p) bail _updateHydrationStateTo; invalidated";
      v9 = v7;
      v10 = 12;
LABEL_13:
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, v8, &v19, v10);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  assetHydrationState = self->_assetHydrationState;
  v7 = PBFLogAssetHelper();
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (assetHydrationState == a3)
  {
    if (v12)
    {
      if ((a3 - 1) > 3)
      {
        v13 = @"PBFPosterGalleryAssetHydrationStateDefault";
      }

      else
      {
        v13 = off_2782C7840[a3 - 1];
      }

      v19 = 134218498;
      v20 = self;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v6;
      v8 = "(%p) bail _updateHydrationStateTo; state is same '%{public}@' / reason %{public}@";
      v9 = v7;
      v10 = 32;
      goto LABEL_13;
    }

LABEL_14:

    v16 = 0;
    goto LABEL_21;
  }

  if (v12)
  {
    v14 = self->_assetHydrationState - 1;
    if (v14 > 3)
    {
      v15 = @"PBFPosterGalleryAssetHydrationStateDefault";
    }

    else
    {
      v15 = off_2782C7840[v14];
    }

    if ((a3 - 1) > 3)
    {
      v17 = @"PBFPosterGalleryAssetHydrationStateDefault";
    }

    else
    {
      v17 = off_2782C7840[a3 - 1];
    }

    v19 = 134218754;
    v20 = self;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_INFO, "(%p) bail _updateHydrationStateTo; updating state from %{public}@ to '%{public}@' / reason %{public}@", &v19, 0x2Au);
  }

  self->_assetHydrationState = a3;
  v16 = 1;
LABEL_21:

  return v16;
}

- (void)_sizeAssetsForActiveDisplayContext
{
  v64 = *MEMORY[0x277D85DE8];
  if (self->_isInvalidated)
  {
    v3 = PBFLogAssetHelper();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v58 = self;
      v4 = "(%p) bail _sizeAssetsForActiveDisplayContext; invalidated";
      v5 = v3;
      v6 = OS_LOG_TYPE_DEFAULT;
LABEL_32:
      _os_log_impl(&dword_21B526000, v5, v6, v4, buf, 0xCu);
    }
  }

  else
  {
    activeDisplayContext = self->_activeDisplayContext;
    v3 = PBFLogAssetHelper();
    v8 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (activeDisplayContext)
    {
      if (v8)
      {
        v9 = self->_activeDisplayContext;
        *buf = 134218242;
        v58 = self;
        v59 = 2114;
        v60 = v9;
        _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_INFO, "(%p) _sizeAssetsForActiveDisplayContext for %{public}@", buf, 0x16u);
      }

      v10 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = [(PBFPosterGalleryAssetHelper *)self posterPreviews];
      v44 = v10;
      v47 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v47)
      {
        v46 = *v53;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v53 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v52 + 1) + 8 * i);
            v13 = [(NSMapTable *)self->_previewToState objectForKey:v12, v44];
            v14 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v12];
            v15 = [v13 asset];
            v16 = [v15 assetViewController];

            if (v16)
            {
              v17 = [v13 asset];
              v18 = [v17 assetViewController];
              [v18 setDisplayContext:self->_activeDisplayContext];

              v19 = [v13 asset];
              v20 = [v19 assetViewController];
              v21 = [v20 view];
              v22 = [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v21 forPreview:v12 displayContext:self->_activeDisplayContext];

              if (v22)
              {
                [v10 addObject:v12];
              }
            }

            else
            {
              v23 = [v13 snapshotBundleLayoutView];

              if (v23)
              {
                v24 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:self->_activeDisplayContext definition:v14];
                v25 = [v13 snapshotBundleLayoutView];
                v26 = [v13 snapshotCollection];
                v27 = [v26 receivedSnapshotBundleForContext:v24];

                if (v27 && v25)
                {
                  v28 = [v25 snapshotBundle];
                  v29 = [v28 isEqual:v27];

                  if ((v29 & 1) == 0)
                  {
                    [v44 addObject:v12];
                    [v25 setSnapshotBundle:v27];
                    if ([(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v25 forPreview:v12 displayContext:self->_activeDisplayContext])
                    {
                      [v44 addObject:v12];
                    }
                  }

                  v10 = v44;
                }

                else
                {
                }
              }
            }
          }

          v47 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
        }

        while (v47);
      }

      v30 = [v10 count];
      v31 = PBFLogAssetHelper();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
      if (v30)
      {
        if (v32)
        {
          v33 = self->_activeDisplayContext;
          *buf = 134218498;
          v58 = self;
          v59 = 2114;
          v60 = v33;
          v61 = 2114;
          v62 = v44;
          _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_INFO, "(%p) _sizeAssetsForActiveDisplayContext for %{public}@; notify delegate of updated assets: %{public}@", buf, 0x20u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v35 = objc_opt_respondsToSelector();

        if (v35)
        {
          v31 = objc_loadWeakRetained(&self->_delegate);
          v36 = [v44 copy];
          [v31 assetHelper:self didUpdateAssetsForPosterPreviews:v36];
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v31 = v44;
          v38 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v49;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v49 != v40)
                {
                  objc_enumerationMutation(v31);
                }

                v42 = *(*(&v48 + 1) + 8 * j);
                v43 = objc_loadWeakRetained(&self->_delegate);
                [v43 assetHelper:self didUpdateAssetsForPosterPreview:v42];
              }

              v39 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v39);
          }
        }
      }

      else if (v32)
      {
        v37 = self->_activeDisplayContext;
        *buf = 134218242;
        v58 = self;
        v59 = 2114;
        v60 = v37;
        _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_INFO, "(%p) bail _sizeAssetsForActiveDisplayContext for %{public}@; no updated poster previews to notify delegate of", buf, 0x16u);
      }

      v3 = v44;
    }

    else if (v8)
    {
      *buf = 134217984;
      v58 = self;
      v4 = "(%p) bail _sizeAssetsForActiveDisplayContext; null active display context";
      v5 = v3;
      v6 = OS_LOG_TYPE_INFO;
      goto LABEL_32;
    }
  }
}

- (void)_stateWasUpdatedForPosterPreviews:(id)a3
{
  v171 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v5 = PBFLogAssetHelper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v158 = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_INFO, "(%p) bail _stateWasUpdatedForPosterPreviews; invalidated", buf, 0xCu);
    }

    goto LABEL_177;
  }

  if ([(PBFPosterGalleryAssetHelper *)self isSuspended])
  {
    v6 = PBFLogAssetHelper();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v158 = self;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_INFO, "(%p) bail _stateWasUpdatedForPosterPreviews; is suspended", buf, 0xCu);
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v5 = v4;
    v7 = [v5 countByEnumeratingWithState:&v151 objects:v170 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v152;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v152 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMapTable *)self->_previewToState objectForKey:*(*(&v151 + 1) + 8 * i)];
          v12 = v11;
          if (v11)
          {
            [v11 setVisible:0];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v151 objects:v170 count:16];
      }

      while (v8);
    }

    goto LABEL_177;
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v147 objects:v169 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v148;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v148 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(PBFPosterGalleryAssetHelper *)self _invalidateHistogramCacheForPosterPreview:*(*(&v147 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v147 objects:v169 count:16];
    }

    while (v15);
  }

  v121 = v4;

  v122 = objc_opt_new();
  v18 = [(PBFPosterGalleryAssetHelper *)self activeDisplayContext];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = v13;
  v19 = [obj countByEnumeratingWithState:&v143 objects:v168 count:16];
  v123 = v18;
  if (v19)
  {
    v21 = v19;
    v126 = *v144;
    *&v20 = 134219010;
    v120 = v20;
    do
    {
      v22 = 0;
      v124 = v21;
      do
      {
        if (*v144 != v126)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v143 + 1) + 8 * v22);
        v24 = [(NSMapTable *)self->_previewToState objectForKey:v23, v120];
        if (!v24)
        {
          v24 = [[_PBFPosterGalleryAssetState alloc] initWithPreview:v23];
          [(NSMapTable *)self->_previewToState setObject:v24 forKey:v23];
          if (!v18)
          {
            goto LABEL_140;
          }

LABEL_33:
          v25 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v23];
          v129 = [(_PBFPosterGalleryAssetState *)v24 snapshotCollection];
          v127 = v25;
          v128 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:self->_activeDisplayContext definition:v25];
          v26 = [(_PBFPosterGalleryAssetState *)v24 isVisible];
          v27 = [(_PBFPosterGalleryAssetState *)v24 shouldPrefetch];
          if ([(_PBFPosterGalleryAssetState *)v24 willUseLivePreview])
          {
            v28 = [(_PBFPosterGalleryAssetState *)v24 asset];
            v29 = [v28 assetViewController];

            if (v27)
            {
              if (!v29)
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (v29)
              {
                v30 = 0;
              }

              else
              {
                v30 = v26;
              }

              if (v30)
              {
LABEL_41:
                [(PBFPosterGalleryAssetHelper *)self _setupLiveDisplayStyleForPreview:v23];
                v31 = [(_PBFPosterGalleryAssetState *)v24 asset];
                v32 = [v31 assetViewController];

                v29 = v32;
              }
            }

            v21 = v124;
            if (v26 & 1 | !-[PBFPosterGalleryAssetHelper _galleryInteractionsAreOngoing](self, "_galleryInteractionsAreOngoing") || ([v29 isVisible] & 1) == 0)
            {
              [v29 setVisible:v26];
            }

            [v29 setDisplayContext:self->_activeDisplayContext];
          }

          v33 = PBFLogAssetHelper();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v76 = self->_assetHydrationState - 1;
            v77 = @"PBFPosterGalleryAssetHydrationStateDefault";
            if (v76 <= 3)
            {
              v77 = off_2782C7840[v76];
            }

            *buf = 134218498;
            v158 = self;
            v159 = 2114;
            v160 = v77;
            v161 = 2114;
            v162 = v23;
            _os_log_debug_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEBUG, "(%p; %{public}@) _stateWasUpdatedForPosterPreviews for %{public}@", buf, 0x20u);
          }

          assetHydrationState = self->_assetHydrationState;
          if (assetHydrationState > 2)
          {
            if (assetHydrationState != 3)
            {
              if (assetHydrationState != 4)
              {
                goto LABEL_104;
              }

              v45 = PBFLogAssetHelper();
              v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);

              if (!v46)
              {
                goto LABEL_104;
              }

              v35 = PBFLogAssetHelper();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v47 = self->_assetHydrationState - 1;
                v48 = @"PBFPosterGalleryAssetHydrationStateDefault";
                if (v47 <= 3)
                {
                  v48 = off_2782C7840[v47];
                }

                *buf = 134218498;
                v158 = self;
                v159 = 2114;
                v160 = v48;
                v161 = 2114;
                v162 = v23;
                _os_log_debug_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@'", buf, 0x20u);
              }

              goto LABEL_103;
            }

            if (((v26 | v27) & 1) == 0)
            {
              goto LABEL_104;
            }

            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v35 = [(PBFPosterGalleryAssetHelper *)self knownDisplayContextWithoutActiveDisplayContext];
            v64 = [v35 countByEnumeratingWithState:&v134 objects:v156 count:16];
            if (!v64)
            {
              goto LABEL_103;
            }

            v65 = v64;
            v66 = *v135;
            do
            {
              v67 = 0;
              do
              {
                if (*v135 != v66)
                {
                  objc_enumerationMutation(v35);
                }

                v68 = *(*(&v134 + 1) + 8 * v67);
                v69 = PBFLogAssetHelper();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                {
                  v70 = self->_assetHydrationState - 1;
                  v71 = @"PBFPosterGalleryAssetHydrationStateDefault";
                  if (v70 <= 3)
                  {
                    v71 = off_2782C7840[v70];
                  }

                  *buf = 134218754;
                  v158 = self;
                  v159 = 2114;
                  v160 = v71;
                  v161 = 2114;
                  v162 = v23;
                  v163 = 2114;
                  v164 = v68;
                  _os_log_debug_impl(&dword_21B526000, v69, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews kickOffPreviewGenerator for posterPreview '%{public}@' w/ display context: %{public}@;", buf, 0x2Au);
                }

                [(PBFPosterGalleryAssetHelper *)self _kickoffPreviewGeneratorForPosterPreview:v23 context:v68];
                ++v67;
              }

              while (v65 != v67);
              v72 = [v35 countByEnumeratingWithState:&v134 objects:v156 count:16];
              v65 = v72;
            }

            while (v72);
          }

          else
          {
            if (assetHydrationState >= 2)
            {
              if (assetHydrationState != 2)
              {
                goto LABEL_104;
              }

              v35 = [v129 invalidateAndRemoveInProgressRequestsNotMatchingDisplayContext:v18];
              v138 = 0;
              v49 = [v129 snapshotFutureForContext:v128 outStatus:&v138];
              if (v138 != 3)
              {
                if (v138 == 2)
                {
                  v86 = PBFLogAssetHelper();
                  v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG);

                  v39 = v127;
                  if (!v87)
                  {
                    goto LABEL_138;
                  }

                  v40 = PBFLogAssetHelper();
                  if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_137;
                  }

                  v88 = self->_assetHydrationState - 1;
                  v81 = @"PBFPosterGalleryAssetHydrationStateDefault";
                  if (v88 <= 3)
                  {
                    v81 = off_2782C7840[v88];
                  }

                  goto LABEL_114;
                }

                if (v138 != 1)
                {
                  if ([(PBFPosterGalleryAssetHelper *)self _kickoffPreviewGeneratorForPosterPreview:v23 context:v18])
                  {
                    v95 = PBFLogAssetHelper();
                    v96 = os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG);

                    if (v96)
                    {
                      if (v35)
                      {
                        v97 = PBFLogAssetHelper();
                        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                        {
                          v105 = self->_assetHydrationState - 1;
                          v106 = @"PBFPosterGalleryAssetHydrationStateDefault";
                          if (v105 <= 3)
                          {
                            v106 = off_2782C7840[v105];
                          }

                          *buf = v120;
                          v158 = self;
                          v159 = 2114;
                          v160 = v106;
                          v161 = 2114;
                          v162 = v23;
                          v163 = 2114;
                          v164 = v18;
                          v165 = 1024;
                          v166 = v26;
                          _os_log_debug_impl(&dword_21B526000, v97, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews kickOffPreviewGenerator for posterPreview '%{public}@' w/ activeDisplayContext: %{public}@; notifyUpdatedContent? %{BOOL}u", buf, 0x30u);
                        }
                      }
                    }
                  }

                  goto LABEL_103;
                }

                v50 = PBFLogAssetHelper();
                v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG);

                v39 = v127;
                if (!v51)
                {
                  goto LABEL_138;
                }

                v40 = PBFLogAssetHelper();
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_137;
                }

                v52 = self->_assetHydrationState - 1;
                v42 = @"PBFPosterGalleryAssetHydrationStateDefault";
                if (v52 <= 3)
                {
                  v42 = off_2782C7840[v52];
                }

LABEL_57:
                *buf = 134218498;
                v158 = self;
                v159 = 2114;
                v160 = v42;
                v161 = 2114;
                v162 = v23;
                v43 = v40;
                v44 = "(%p; %{public}@) bail _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@' because request is in flight";
LABEL_136:
                _os_log_debug_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEBUG, v44, buf, 0x20u);
                goto LABEL_137;
              }

              v92 = PBFLogAssetHelper();
              v93 = os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG);

              v39 = v127;
              if (!v93)
              {
                goto LABEL_138;
              }

              v40 = PBFLogAssetHelper();
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_137;
              }

              v94 = self->_assetHydrationState - 1;
              v85 = @"PBFPosterGalleryAssetHydrationStateDefault";
              if (v94 <= 3)
              {
                v85 = off_2782C7840[v94];
              }

LABEL_135:
              *buf = 134218498;
              v158 = self;
              v159 = 2114;
              v160 = v85;
              v161 = 2114;
              v162 = v23;
              v43 = v40;
              v44 = "(%p; %{public}@) bail _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@' because request is hydrated";
              goto LABEL_136;
            }

            v35 = [v129 invalidateAndRemoveInProgressRequestsNotMatchingDisplayContext:v18];
            if ((v26 | v27))
            {
              v138 = 0;
              v36 = [v129 snapshotFutureForContext:v128 outStatus:&v138];
              if (v138 != 3)
              {
                if (v138 != 2)
                {
                  if (v138 == 1)
                  {
                    v37 = PBFLogAssetHelper();
                    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);

                    v39 = v127;
                    if (v38)
                    {
                      v40 = PBFLogAssetHelper();
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                      {
                        v41 = self->_assetHydrationState - 1;
                        v42 = @"PBFPosterGalleryAssetHydrationStateDefault";
                        if (v41 <= 3)
                        {
                          v42 = off_2782C7840[v41];
                        }

                        goto LABEL_57;
                      }

LABEL_137:
                    }

LABEL_138:

LABEL_139:
                    goto LABEL_140;
                  }

                  if ([(PBFPosterGalleryAssetHelper *)self _kickoffPreviewGeneratorForPosterPreview:v23 context:v18])
                  {
                    v89 = PBFLogAssetHelper();
                    v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG);

                    if (v90 && v35)
                    {
                      v91 = PBFLogAssetHelper();
                      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
                      {
                        v103 = self->_assetHydrationState - 1;
                        v104 = @"PBFPosterGalleryAssetHydrationStateDefault";
                        if (v103 <= 3)
                        {
                          v104 = off_2782C7840[v103];
                        }

                        *buf = v120;
                        v158 = self;
                        v159 = 2114;
                        v160 = v104;
                        v161 = 2114;
                        v162 = v23;
                        v163 = 2114;
                        v164 = v18;
                        v165 = 1024;
                        v166 = v26;
                        _os_log_debug_impl(&dword_21B526000, v91, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews kickOffPreviewGenerator for posterPreview '%{public}@' w/ activeDisplayContext: %{public}@; notifyUpdatedContent? %{BOOL}u", buf, 0x30u);
                      }

                      if (v26)
                      {
                        goto LABEL_151;
                      }
                    }

                    else
                    {

                      if (v26)
                      {
LABEL_151:
                        v100 = PBFLogAssetHelper();
                        v101 = os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG);

                        v39 = v127;
                        if (v101)
                        {
                          v102 = PBFLogAssetHelper();
                          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                          {
                            v107 = self->_assetHydrationState - 1;
                            v108 = @"PBFPosterGalleryAssetHydrationStateDefault";
                            if (v107 <= 3)
                            {
                              v108 = off_2782C7840[v107];
                            }

                            *buf = 134218498;
                            v158 = self;
                            v159 = 2114;
                            v160 = v108;
                            v161 = 2114;
                            v162 = v23;
                            _os_log_debug_impl(&dword_21B526000, v102, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews will notifyUpdatedContent for posterPreview '%{public}@'", buf, 0x20u);
                          }
                        }

                        [v122 addObject:v23];
                        goto LABEL_139;
                      }
                    }

LABEL_104:
                    v73 = PBFLogAssetHelper();
                    v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);

                    v39 = v127;
                    if (v74)
                    {
                      v75 = PBFLogAssetHelper();
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                      {
                        v98 = self->_assetHydrationState - 1;
                        v99 = @"PBFPosterGalleryAssetHydrationStateDefault";
                        if (v98 <= 3)
                        {
                          v99 = off_2782C7840[v98];
                        }

                        *buf = 134218498;
                        v158 = self;
                        v159 = 2114;
                        v160 = v99;
                        v161 = 2114;
                        v162 = v23;
                        _os_log_debug_impl(&dword_21B526000, v75, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews will *NOT* notifyUpdatedContent for posterPreview '%{public}@'", buf, 0x20u);
                      }
                    }

                    goto LABEL_139;
                  }

LABEL_103:

                  goto LABEL_104;
                }

                v78 = PBFLogAssetHelper();
                v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG);

                v39 = v127;
                if (!v79)
                {
                  goto LABEL_138;
                }

                v40 = PBFLogAssetHelper();
                if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_137;
                }

                v80 = self->_assetHydrationState - 1;
                v81 = @"PBFPosterGalleryAssetHydrationStateDefault";
                if (v80 <= 3)
                {
                  v81 = off_2782C7840[v80];
                }

LABEL_114:
                *buf = 134218498;
                v158 = self;
                v159 = 2114;
                v160 = v81;
                v161 = 2114;
                v162 = v23;
                v43 = v40;
                v44 = "(%p; %{public}@) bail _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@' because request was failed";
                goto LABEL_136;
              }

              v82 = PBFLogAssetHelper();
              v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG);

              v39 = v127;
              if (!v83)
              {
                goto LABEL_138;
              }

              v40 = PBFLogAssetHelper();
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_137;
              }

              v84 = self->_assetHydrationState - 1;
              v85 = @"PBFPosterGalleryAssetHydrationStateDefault";
              if (v84 <= 3)
              {
                v85 = off_2782C7840[v84];
              }

              goto LABEL_135;
            }

            v53 = PBFLogAssetHelper();
            v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG);

            if (!v54 || !v35)
            {
              goto LABEL_103;
            }

            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v35 = v35;
            v55 = [v35 countByEnumeratingWithState:&v139 objects:v167 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v140;
              do
              {
                v58 = 0;
                do
                {
                  if (*v140 != v57)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v59 = *(*(&v139 + 1) + 8 * v58);
                  v60 = PBFLogAssetHelper();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    v61 = self->_assetHydrationState - 1;
                    v62 = @"PBFPosterGalleryAssetHydrationStateDefault";
                    if (v61 <= 3)
                    {
                      v62 = off_2782C7840[v61];
                    }

                    *buf = 134218754;
                    v158 = self;
                    v159 = 2114;
                    v160 = v62;
                    v161 = 2114;
                    v162 = v23;
                    v163 = 2114;
                    v164 = v59;
                    _os_log_debug_impl(&dword_21B526000, v60, OS_LOG_TYPE_DEBUG, "(%p; %{public}@) _stateWasUpdatedForPosterPreviews invalidating request for posterPreview '%{public}@' because of non-activeDisplayContext %{public}@", buf, 0x2Au);
                  }

                  ++v58;
                }

                while (v56 != v58);
                v63 = [v35 countByEnumeratingWithState:&v139 objects:v167 count:16];
                v56 = v63;
              }

              while (v63);
            }
          }

          v18 = v123;
          v21 = v124;
          goto LABEL_103;
        }

        if (v18)
        {
          goto LABEL_33;
        }

LABEL_140:

        ++v22;
      }

      while (v22 != v21);
      v109 = [obj countByEnumeratingWithState:&v143 objects:v168 count:16];
      v21 = v109;
    }

    while (v109);
  }

  v5 = v122;
  v4 = v121;
  if ([v122 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v111 = objc_opt_respondsToSelector();

    if (v111)
    {
      v112 = objc_loadWeakRetained(&self->_delegate);
      v113 = [v122 copy];
      [v112 assetHelper:self didUpdateAssetsForPosterPreviews:v113];
    }

    else
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v112 = v122;
      v114 = [v112 countByEnumeratingWithState:&v130 objects:v155 count:16];
      if (v114)
      {
        v115 = v114;
        v116 = *v131;
        do
        {
          for (k = 0; k != v115; ++k)
          {
            if (*v131 != v116)
            {
              objc_enumerationMutation(v112);
            }

            v118 = *(*(&v130 + 1) + 8 * k);
            v119 = objc_loadWeakRetained(&self->_delegate);
            [v119 assetHelper:self didUpdateAssetsForPosterPreview:v118];
          }

          v115 = [v112 countByEnumeratingWithState:&v130 objects:v155 count:16];
        }

        while (v115);
      }
    }
  }

LABEL_177:
}

- (BOOL)_setupHeroShotsForPosterPreview:(id)a3 context:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  if (!self->_isInvalidated)
  {
    v10 = [(NSMapTable *)self->_previewToState objectForKey:v6];
    v8 = v10;
    if (!v10)
    {
      v11 = PBFLogAssetHelper();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v61 = self;
        _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_INFO, "(%p) bail _setupHeroShotsForPosterPreview; no state", buf, 0xCu);
      }

      LOBYTE(v9) = 0;
      goto LABEL_56;
    }

    v11 = [v10 galleryOptions];
    v57 = [v11 galleryAssetLookupInfo];
    v12 = [v6 posterDescriptorLookupInfo];
    v13 = [v8 heroMicaPackageView];
    v58 = [v8 heroImageView];
    v14 = [v8 heroImage];
    activeDisplayContext = self->_activeDisplayContext;
    LOBYTE(v9) = 0;
    v55 = v13;
    v56 = v12;
    if (PUIFeatureEnabled() && !v13)
    {
      v53 = v11;
      v15 = [v12 posterDescriptorExtension];
      v16 = [v15 posterExtensionBundle];
      v59 = 0;
      v9 = [v57 pbf_micaViewFromBundle:v16 error:&v59];
      v17 = v59;

      if (v9 || ([MEMORY[0x277CF0D48] pbf_galleryHeroMicaViewForExtension:v15], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [(PBFPosterGalleryAssetHelper *)self _contentSizeForPreview:v6, activeDisplayContext];
        v19 = v18;
        v21 = v20;
        v22 = objc_opt_self();
        v23 = [(PBFPosterGalleryAssetHelper *)self _dequeueViewOfClass:v22];

        [v23 updatePackageView:v9 contentSize:{v19, v21}];
        [v8 setHeroMicaPackageView:v23];
        v24 = [v8 asset];
        [v24 setHeroView:v23];

        LODWORD(v9) = 1;
      }

      v11 = v53;
      if (v9)
      {
        v12 = v56;
        if (v14)
        {
          LOBYTE(v9) = 1;
LABEL_55:

LABEL_56:
          goto LABEL_57;
        }
      }

      else
      {
        v12 = v56;
      }
    }

    v25 = PBFLogAssetHelper();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
    }

    v26 = [v12 posterDescriptorPath];
    v27 = [v12 posterDescriptorExtension];
    v54 = v26;
    v52 = [v26 descriptorIdentifier];
    v28 = [MEMORY[0x277D755B8] pbf_galleryHeroSnapshotForExtension:v27 descriptorIdentifier:? displayContext:?];

    v14 = v28;
    if (!v28)
    {
      v36 = PBFLogAssetHelper();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);

      if (v37)
      {
        v38 = PBFLogAssetHelper();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
        }
      }

      if (!v11 || ([v27 posterExtensionBundle], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "pbf_imageFromBundle:displayContext:error:", v39, v7, 0), v14 = objc_claimAutoreleasedReturnValue(), v39, !v14))
      {
        v49 = PBFLogAssetHelper();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
        }

        v14 = 0;
        goto LABEL_54;
      }

      v40 = PBFLogAssetHelper();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
      }
    }

    v29 = PBFLogAssetHelper();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);

    v31 = v58;
    if (v30)
    {
      v32 = PBFLogAssetHelper();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        v61 = self;
        v62 = 2114;
        v63 = v6;
        v64 = 2114;
        v65 = v7;
        v66 = 1024;
        v67 = activeDisplayContext == v7;
        _os_log_debug_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; hero image hydrated already for %{public}@ && context %{public}@; isActiveContext: %{BOOL}u", buf, 0x26u);
      }
    }

    [v8 setHeroImage:v14, activeDisplayContext];
    if (v58)
    {
      v33 = PBFLogAssetHelper();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);

      if (v34)
      {
        v35 = PBFLogAssetHelper();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v61 = self;
          v62 = 2114;
          v63 = v6;
          v64 = 2114;
          v65 = v7;
          _os_log_debug_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; updating image view for %{public}@ && context %{public}@;", buf, 0x20u);
        }
      }

      [(PBFPosterGalleryAssetHelper *)self _contentSizeForPreview:v6];
      [v58 updateImage:v14 imageSize:?];
    }

    else
    {
      v31 = [(PBFPosterGalleryAssetHelper *)self _newImageViewWithImage:v14 posterPreview:v6];
      [v8 setHeroImageView:v31];
      v41 = [v8 asset];
      [v41 setHeroView:v31];

      v42 = PBFLogAssetHelper();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);

      if (v43)
      {
        v44 = PBFLogAssetHelper();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v61 = self;
          v62 = 2114;
          v63 = v6;
          v64 = 2114;
          v65 = v7;
          _os_log_debug_impl(&dword_21B526000, v44, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; new image view created for %{public}@ && context %{public}@;", buf, 0x20u);
        }
      }
    }

    v58 = v31;
    v45 = [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v31 forPreview:v6 displayContext:v7];
    v46 = PBFLogAssetHelper();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);

    if (v47)
    {
      v48 = PBFLogAssetHelper();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        v61 = self;
        v62 = 2114;
        v63 = v6;
        v64 = 2114;
        v65 = v7;
        v66 = 1024;
        v67 = v45;
        _os_log_debug_impl(&dword_21B526000, v48, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; finished updating image view for %{public}@ && context %{public}@; notifyDidUpdateContent: %{BOOL}u", buf, 0x26u);
      }
    }

    v49 = PBFLogAssetHelper();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v61 = self;
      v62 = 2114;
      v63 = v6;
      v64 = 2114;
      v65 = v7;
      _os_log_debug_impl(&dword_21B526000, v49, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; stashing generated image for %{public}@ && context %{public}@; and marking notifyDidUpdateContent", buf, 0x20u);
    }

    LOBYTE(v9) = 1;
LABEL_54:

    v12 = v56;
    goto LABEL_55;
  }

  v8 = PBFLogAssetHelper();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v61 = self;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) bail _setupHeroShotsForPosterPreview; invalidated", buf, 0xCu);
  }

  LOBYTE(v9) = 0;
LABEL_57:

  return v9;
}

- (BOOL)_kickoffPreviewGeneratorForPosterPreview:(id)a3 context:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v8 = PBFLogAssetHelper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v30 = self;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) bail _kickoffPreviewGeneratorForPosterPreview; invalidated", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = [(NSMapTable *)self->_previewToState objectForKey:v6];
    v8 = v10;
    if (v10)
    {
      v11 = [v10 snapshotCollection];
      v12 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v6];
      activeDisplayContext = self->_activeDisplayContext;
      v14 = [v6 type];
      v15 = [v14 isEqual:PBFPreviewTypeHero];

      if (v15)
      {
        v9 = [(PBFPosterGalleryAssetHelper *)self _setupHeroShotsForPosterPreview:v6 context:v7];
      }

      else
      {
        v16 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:v7 definition:v12];
        if ([v11 shouldProceedFetchingSnapshotForContext:v16 maxNumberOfRetryAfterErrors:3])
        {
          v17 = PBFLogAssetHelper();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 134218754;
            v30 = self;
            v31 = 2114;
            v32 = v6;
            v33 = 2114;
            v34 = v7;
            v35 = 1024;
            v36 = activeDisplayContext == v7;
            _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_INFO, "(%p) _kickoffPreviewGeneratorForPosterPreview; no image found for %{public}@ / default definition; kicking off image request for display context %{public}@, isActiveDisplayContext? %{BOOL}u", buf, 0x26u);
          }

          objc_initWeak(buf, self);
          v23 = [PBFPosterSnapshotRequest snapshotRequestForPreview:v6 context:v7 definition:v12];
          WeakRetained = objc_loadWeakRetained(&self->_previewGenerator);
          v19 = [WeakRetained snapshotBundleForRequest:v23];

          v20 = [v11 trackRequestForContext:v16 future:v19];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __80__PBFPosterGalleryAssetHelper__kickoffPreviewGeneratorForPosterPreview_context___block_invoke;
          v24[3] = &unk_2782C77B0;
          objc_copyWeak(&v28, buf);
          v25 = v6;
          v26 = v7;
          v27 = v16;
          v21 = [MEMORY[0x277D3EC60] mainThreadScheduler];
          [v20 addCompletionBlock:v24 scheduler:v21];

          objc_destroyWeak(&v28);
          objc_destroyWeak(buf);
        }

        v9 = 0;
      }
    }

    else
    {
      v11 = PBFLogAssetHelper();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v30 = self;
        _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_INFO, "(%p) bail _kickoffPreviewGeneratorForPosterPreview; no state", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

void __80__PBFPosterGalleryAssetHelper__kickoffPreviewGeneratorForPosterPreview_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = PBFLogAssetHelper();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        v14 = 134219010;
        v15 = WeakRetained;
        v16 = 2114;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        v20 = 2114;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_21B526000, v9, OS_LOG_TYPE_ERROR, "(%p) _kickoffPreviewGeneratorForPosterPreview; request failed for %{public}@ && context %{public}@; snapshotBundle: %{public}@ error: %{public}@", &v14, 0x34u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = 134218754;
      v15 = WeakRetained;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "(%p) _kickoffPreviewGeneratorForPosterPreview; request finished for %{public}@ && context %{public}@; snapshotBundle: %{public}@", &v14, 0x2Au);
    }

    [WeakRetained _receiveUpdatedAssetForPosterPreview:*(a1 + 32) snapshotContext:*(a1 + 48) snapshotBundle:v5 fetchError:v6];
  }
}

- (id)_newImageViewWithImage:(id)a3 posterPreview:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_isInvalidated)
  {
    v8 = PBFLogAssetHelper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = self;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) bail _newImageViewWithImage; invalidated", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    [(PBFPosterGalleryAssetHelper *)self _contentSizeForPreview:v7];
    v11 = v10;
    v13 = v12;
    v14 = [(PBFPosterGalleryAssetHelper *)self reusableViewMap];
    v15 = objc_opt_self();
    v9 = [v14 viewOfClass:v15];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 updateImage:v6 imageSize:{v11, v13}];
    v8 = [v7 posterDescriptorLookupInfo];
    v16 = [v8 posterDescriptorExtension];
    v17 = [v16 posterExtensionBundleIdentifier];

    v18 = [v8 posterDescriptorPath];
    v19 = [v18 descriptorIdentifier];

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v17, v19];
    [v9 setAccessibilityIdentifier:v20];
    v21 = PBFLogAssetHelper();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

    if (v22)
    {
      v23 = PBFLogAssetHelper();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v35.width = v11;
        v35.height = v13;
        v25 = NSStringFromCGSize(v35);
        *buf = 134218754;
        v27 = self;
        v28 = 2114;
        v29 = v7;
        v30 = 2114;
        v31 = v20;
        v32 = 2114;
        v33 = v25;
        _os_log_debug_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEBUG, "(%p) _newImageViewWithImage; building new image view for %{public}@/%{public}@; size: %{public}@", buf, 0x2Au);
      }
    }
  }

  return v9;
}

- (CGSize)_contentSizeForPreview:(id)a3
{
  v4 = [a3 type];
  v5 = [v4 isEqual:PBFPreviewTypeHero];

  activeDisplayContextSpec = self->_activeDisplayContextSpec;
  if (v5)
  {
    v7 = self->_activeDisplayContextSpec;

    [(PBFPosterGalleryViewSpec *)v7 posterHeroContentSize];
  }

  else
  {
    v10 = [(PBFDisplayContext *)self->_activeDisplayContext pbf_interfaceOrientation];

    [(PBFPosterGalleryViewSpec *)activeDisplayContextSpec posterContentSizeForOrientation:v10];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)_sizeContainerView:(id)a3 forPreview:(id)a4 displayContext:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (self->_isInvalidated)
    {
      v12 = PBFLogAssetHelper();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        v25 = self;
        _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%p) bail _sizeContainerView; invalidated", &v24, 0xCu);
      }
    }

    else if (self->_activeDisplayContext == v10)
    {
      v13 = [v9 type];
      v14 = [v13 isEqual:PBFPreviewTypeHero];

      activeDisplayContextSpec = self->_activeDisplayContextSpec;
      if (v14)
      {
        [(PBFPosterGalleryViewSpec *)activeDisplayContextSpec posterHeroContentSize];
      }

      else
      {
        [(PBFPosterGalleryViewSpec *)activeDisplayContextSpec posterContentSizeForOrientation:[(PBFDisplayContext *)v11 pbf_interfaceOrientation]];
      }

      v18 = v16;
      v19 = v17;
      [v8 frame];
      if (v21 != v18 || v20 != v19)
      {
        [v8 setFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v18, v19}];
        [v8 setNeedsLayout];
        v22 = 1;
        goto LABEL_13;
      }
    }
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (void)_receiveUpdatedAssetForPosterPreview:(id)a3 snapshotContext:(id)a4 snapshotBundle:(id)a5 fetchError:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  BSDispatchQueueAssertMain();
  if (!self->_isInvalidated)
  {
    v14 = [(NSMapTable *)self->_previewToState objectForKey:v10];
    if (!v14)
    {
      v15 = PBFLogAssetHelper();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v53 = self;
        _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_INFO, "(%p) bail _receiveUpdatedAssetForPosterPreview; no state", buf, 0xCu);
      }

      goto LABEL_48;
    }

    [(PBFPosterGalleryAssetHelper *)self _invalidateHistogramCacheForPosterPreview:v10];
    v15 = [v11 displayContext];
    v16 = [v14 snapshotCollection];
    v51 = 0;
    v17 = [v16 snapshotFutureForContext:v11 outStatus:&v51];
    if (v51 != 3)
    {
      v23 = PBFLogAssetHelper();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v53 = self;
        _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_INFO, "(%p) bail _receiveUpdatedAssetForPosterPreview; request was cancelled", buf, 0xCu);
      }

      goto LABEL_47;
    }

    v50 = v16;
    if (!v12 || v13)
    {
      v24 = [v13 pbf_isGeneralCancelledError];
      v25 = PBFLogAssetHelper();
      v26 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v53 = self;
          v54 = 2114;
          v55 = v10;
          v56 = 2114;
          v57 = v13;
          _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%p) _receiveUpdatedAssetForPosterPreview; request was cancelled for preview %{public}@: %{public}@", buf, 0x20u);
        }

        v26 = [MEMORY[0x277CBEB98] setWithObject:v10];
        [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v26];
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v53 = self;
        v54 = 2114;
        v55 = v10;
        v56 = 2114;
        v57 = v13;
        _os_log_error_impl(&dword_21B526000, v26, OS_LOG_TYPE_ERROR, "(%p) _receiveUpdatedAssetForPosterPreview; request failed for preview %{public}@ with error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      activeDisplayContext = self->_activeDisplayContext;
      v19 = PBFLogAssetHelper();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v53 = self;
        v54 = 2114;
        v55 = v10;
        v56 = 2114;
        v57 = v12;
        _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_INFO, "(%p) _receiveUpdatedAssetForPosterPreview; preview %{public}@ received snapshot bundle %{public}@", buf, 0x20u);
      }

      if (v15 == activeDisplayContext)
      {
        v20 = PBFLogAssetHelper();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v53 = self;
          v54 = 2114;
          v55 = v10;
          _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_INFO, "(%p) _receiveUpdatedAssetForPosterPreview; preview %{public}@ received active display context image; updating image views", buf, 0x16u);
        }

        v21 = [v14 snapshotBundleLayoutView];
        v22 = [v14 snapshotBundleLayoutView];
        if (v22)
        {
        }

        else if (([v14 willUseLivePreview]& 1) == 0)
        {
          v44 = objc_opt_self();
          v45 = [(PBFPosterGalleryAssetHelper *)self _dequeueViewOfClass:v44];

          if (!v45)
          {
            v45 = objc_opt_new();
          }

          [v14 setSnapshotBundleLayoutView:v45];
          v43 = v45;
          goto LABEL_57;
        }

        v49 = v21;
        v38 = [v14 snapshotBundleLayoutView];
        v39 = [v38 snapshotBundle];
        v40 = [v39 isEqual:v12];

        if (v40)
        {
          v41 = 0;
          goto LABEL_58;
        }

        v42 = [v14 snapshotBundleLayoutView];
        [v42 setSnapshotBundle:v12];

        v43 = v49;
LABEL_57:
        v49 = v43;
        [PBFPosterGalleryAssetHelper _sizeContainerView:"_sizeContainerView:forPreview:displayContext:" forPreview:? displayContext:?];
        v41 = 1;
LABEL_58:
        v46 = [v14 asset];
        v47 = [v46 assetViewController];

        if (v47 && [v47 setSnapshotBundle:v12 forDisplayContext:v15])
        {
          v48 = [v47 view];
          [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v48 forPreview:v10 displayContext:v15];

          v41 = 1;
        }

        v27 = v41 ^ 1;
LABEL_28:
        v28 = PBFLogAssetHelper();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

        if (v29)
        {
          v30 = PBFLogAssetHelper();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:];
          }
        }

        if ([v14 isVisible]&& (v15 != self->_activeDisplayContext ? (v31 = 1) : (v31 = v27), (v31 & 1) == 0))
        {
          v35 = PBFLogAssetHelper();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);

          v16 = v50;
          if (v36)
          {
            v37 = PBFLogAssetHelper();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [PBFPosterGalleryAssetHelper _receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:];
            }
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained assetHelper:self didUpdateAssetsForPosterPreview:v10];
        }

        else
        {
          v32 = PBFLogAssetHelper();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);

          v16 = v50;
          if (!v33)
          {
LABEL_46:
            [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:0];
LABEL_47:

LABEL_48:
            goto LABEL_49;
          }

          WeakRetained = PBFLogAssetHelper();
          if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:];
          }
        }

        goto LABEL_46;
      }
    }

    v27 = 1;
    goto LABEL_28;
  }

  v14 = PBFLogAssetHelper();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v53 = self;
    _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(%p) bail _receiveUpdatedAssetForPosterPreview; invalidated", buf, 0xCu);
  }

LABEL_49:
}

- (void)_teardownStateForPosterPreviews:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = v4;
  v5 = [v4 copy];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_previewToState objectForKey:v10];
        if (v11)
        {
          [(PBFPosterGalleryAssetHelper *)self _teardownState:v11];
          [(NSMapTable *)self->_previewToState removeObjectForKey:v10];
        }

        else
        {
          v12 = PBFLogAssetHelper();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v19 = self;
            v20 = 2114;
            v21 = v10;
            _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_INFO, "(%p) bail _teardownStateForPosterPreviews; bail teardown for %{public}@; no state", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)_teardownState:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = PBFLogAssetHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 preview];
    v21 = 134218242;
    v22 = self;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_INFO, "(%p) bail _teardownState; %{public}@", &v21, 0x16u);
  }

  if ([v4 willUseLivePreview])
  {
    v7 = PBFLogAssetHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 preview];
      v21 = 134218242;
      v22 = self;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_INFO, "(%p) _teardownState; %{public}@; tearing down live view controller", &v21, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _teardownLiveViewControllerForState:v4 invalidate:1];
  }

  v9 = [v4 heroImageView];

  if (v9)
  {
    v10 = PBFLogAssetHelper();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v4 preview];
      v21 = 134218242;
      v22 = self;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_INFO, "(%p) _teardownState; %{public}@; tearing down previewImageView", &v21, 0x16u);
    }

    v12 = [v4 heroImageView];
    [v12 updateImage:0 imageSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

    v13 = [v4 heroImageView];
    [(PBFPosterGalleryAssetHelper *)self _recycleView:v13];
    [v4 setHeroImageView:0];
  }

  v14 = [v4 snapshotBundleLayoutView];

  if (v14)
  {
    v15 = PBFLogAssetHelper();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v4 preview];
      v21 = 134218242;
      v22 = self;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_INFO, "(%p) _teardownState; %{public}@; tearing down previewImageView", &v21, 0x16u);
    }

    v17 = [v4 snapshotBundleLayoutView];
    [(PBFPosterGalleryAssetHelper *)self _recycleView:v17];

    [v4 setSnapshotBundleLayoutView:0];
  }

  v18 = [v4 snapshotCollection];
  [v18 cancel];

  visibleStatesWithLivePreviewEnabled = self->_visibleStatesWithLivePreviewEnabled;
  v20 = [v4 preview];
  [(NSMapTable *)visibleStatesWithLivePreviewEnabled removeObjectForKey:v20];

  [(NSHashTable *)self->_alreadyPlayedLivePosters removeObject:v4];
  [(NSHashTable *)self->_successfullyPlayedLivePosters removeObject:v4];
  [(PBFPosterGalleryAssetHelper *)self _updateActivePosters];
}

- (void)_resetHydrationState
{
  v12 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = PBFLogAssetHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_assetHydrationState - 1;
    v5 = @"PBFPosterGalleryAssetHydrationStateDefault";
    if (v4 <= 3)
    {
      v5 = off_2782C7840[v4];
    }

    v6 = 134218498;
    v7 = self;
    v8 = 2114;
    v9 = v5;
    v10 = 2114;
    v11 = @"PBFPosterGalleryAssetHydrationStateDefault";
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "(%p) _resetHydrationState; going from %{public}@ -> %{public}@", &v6, 0x20u);
  }

  self->_assetHydrationState = 0;
  [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
}

- (void)_updateActivePosters
{
  OUTLINED_FUNCTION_4();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_2_1(&dword_21B526000, v0, v1, "(%p) _updateActivePosters; failed to play any of %li demos.", v2, v3);
}

void __51__PBFPosterGalleryAssetHelper__updateActivePosters__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateActivePostersAfterFinishingExecuting:*(a1 + 32) successfully:a3 == 0];
}

- (void)_updateActivePostersAfterFinishingExecuting:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(NSHashTable *)self->_alreadyPlayedLivePosters addObject:v6];
    [(NSMutableSet *)self->_executingLivePosterStates removeObject:v6];
    if (v4)
    {
      [(NSHashTable *)self->_successfullyPlayedLivePosters addObject:v6];
    }
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__updateActivePosters object:0];
  [(PBFPosterGalleryAssetHelper *)self performSelector:sel__updateActivePosters withObject:0 afterDelay:0.0];
}

- (id)_dequeueViewOfClass:(Class)a3
{
  v4 = [(PBFPosterGalleryAssetHelper *)self reusableViewMap];
  v5 = v4;
  if (!v4 || ([v4 viewOfClass:a3], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (void)_recycleView:(id)a3
{
  v4 = a3;
  v5 = [(PBFPosterGalleryAssetHelper *)self reusableViewMap];
  [v5 recycleView:v4];
}

- (BOOL)_setupLiveDisplayStyleForPreview:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!self->_isInvalidated)
  {
    v6 = [v4 type];
    v7 = [v6 isEqual:PBFPreviewTypeHero];

    if (v7)
    {
      v5 = PBFLogAssetHelper();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
      }

      goto LABEL_7;
    }

    v9 = [(NSMapTable *)self->_previewToState objectForKey:v4];
    v5 = v9;
    if (v9)
    {
      if (([v9 willUseLivePreview]& 1) != 0)
      {
        v10 = [v5 asset];
        v11 = [v10 assetViewController];

        v12 = PBFLogAssetHelper();
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
          }
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v30 = self;
            v31 = 2114;
            v32 = v4;
            _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_INFO, "(%p) _setupLiveDisplayStyleForPreview: %{public}@; setting Up vc", buf, 0x16u);
          }

          v13 = +[PBFPosterSnapshotDefinition gallerySnapshotKeyFrameDefinition];
          v14 = [[PBFPosterAssetViewController alloc] initWithPreview:v4 definition:v13];
          [(PBFPosterAssetViewController *)v14 setDisplayContext:self->_activeDisplayContext];
          v15 = [(PBFPosterAssetViewController *)v14 view];
          [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v15 forPreview:v4 displayContext:self->_activeDisplayContext];

          v16 = [v4 posterDescriptorLookupInfo];
          v17 = [v16 posterDescriptorExtension];
          v18 = [v17 posterExtensionBundleIdentifier];

          v19 = [v16 posterDescriptorPath];
          v20 = [v19 descriptorIdentifier];

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:livePoster", v18, v20];
          v22 = [(PBFPosterAssetViewController *)v14 view];
          [v22 setAccessibilityIdentifier:v21];

          WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);
          [(PBFPosterAssetViewController *)v14 setExtensionProvider:WeakRetained];

          v24 = objc_loadWeakRetained(&self->_previewGenerator);
          [(PBFPosterAssetViewController *)v14 setComplicationPreviewGenerator:v24];

          [(PBFPosterAssetViewController *)v14 setReusableViewMap:self->_reusableViewMap];
          [(PBFPosterAssetViewController *)v14 setVisible:[v5 isVisible]];
          v25 = [v5 asset];
          [v25 setAssetViewController:v14];

          v26 = [(PBFPosterGalleryAssetHelper *)self delegate];
          [v26 assetHelper:self prepareForPosterPreview:v4 movingToLive:v14];

          v27 = [(PBFPosterGalleryAssetHelper *)self delegate];
          [v27 assetHelper:self didUpdateAssetsForPosterPreview:v4];
        }

        v8 = 1;
        goto LABEL_22;
      }

      v13 = PBFLogAssetHelper();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
      }
    }

    else
    {
      v13 = PBFLogAssetHelper();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
      }
    }

    v8 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v5 = PBFLogAssetHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = self;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%p) bail _setupLiveDisplayStyleForPreview; invalidated", buf, 0xCu);
  }

LABEL_7:
  v8 = 0;
LABEL_23:

  return v8;
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  isInvalidated = self->_isInvalidated;
  v4 = PBFLogAssetHelper();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isInvalidated)
  {
    if (v5)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) bail invalidate; invalidated", &v7, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) invalidate: invalidating...", &v7, 0xCu);
    }

    self->_isInvalidating = 1;
    [(PBFPosterGalleryAssetHelper *)self cancel];
    reusableViewMap = self->_reusableViewMap;
    self->_reusableViewMap = 0;

    self->_isInvalidated = 1;
  }
}

- (void)cancel
{
  v23 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = PBFLogAssetHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = self;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "(%p) cancelling...", buf, 0xCu);
  }

  [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMapTable *)self->_previewToState copy];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    *&v7 = 134218242;
    v13 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(NSMapTable *)self->_previewToState objectForKey:*(*(&v14 + 1) + 8 * v10), v13];
        v12 = PBFLogAssetHelper();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = self;
          v20 = 2114;
          v21 = v11;
          _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%p) cancelling... tearing down %{public}@", buf, 0x16u);
        }

        [(PBFPosterGalleryAssetHelper *)self _teardownState:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }

  [(NSMapTable *)self->_previewToState removeAllObjects];
}

- (void)_teardownLiveViewControllerForState:(id)a3 invalidate:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [v6 asset];
  v8 = [v7 assetViewController];

  v9 = PBFLogAssetHelper();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v19 = 134218498;
      v20 = self;
      v21 = 2114;
      v22 = v8;
      v23 = 1024;
      v24 = v4;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(%p) _teardownLiveViewController; gallery poster vc %{public}@ shouldInvalidate? %{BOOL}u", &v19, 0x1Cu);
    }

    v9 = [v6 preview];
    [(NSMapTable *)self->_visibleStatesWithLivePreviewEnabled removeObjectForKey:v9];
    [(NSHashTable *)self->_alreadyPlayedLivePosters removeObject:v6];
    [(NSHashTable *)self->_successfullyPlayedLivePosters removeObject:v6];
    v11 = [v8 view];
    [v11 removeFromSuperview];

    [v8 removeFromParentViewController];
    [v8 invalidate];
    v12 = [v6 asset];
    v13 = [v12 assetViewController];
    [v13 setReusableViewMap:0];

    v14 = [v6 asset];
    v15 = [v14 assetViewController];
    [v15 setComplicationPreviewGenerator:0];

    v16 = [v6 asset];
    v17 = [v16 assetViewController];
    [v17 setExtensionProvider:0];

    v18 = [v6 asset];
    [v18 setAssetViewController:0];
  }

  else if (v10)
  {
    v19 = 134217984;
    v20 = self;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(%p) bail _teardownLiveViewController; no gallery poster vc?", &v19, 0xCu);
  }
}

- (PBFPosterPreviewGenerator)previewGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_previewGenerator);

  return WeakRetained;
}

- (PBFExtensionProviding)extensionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);

  return WeakRetained;
}

- (PBFPosterGalleryAssetHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithPreviewGenerator:(char *)a1 extensionProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extensionProvider", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPreviewGenerator:(char *)a1 extensionProvider:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"previewGenerator", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterPreview:isVisible:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateWasUpdated:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_stateWasUpdated:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_updateHydrationStateIfNeeded
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupHeroShotsForPosterPreview:context:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupHeroShotsForPosterPreview:context:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupHeroShotsForPosterPreview:context:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupLiveDisplayStyleForPreview:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end