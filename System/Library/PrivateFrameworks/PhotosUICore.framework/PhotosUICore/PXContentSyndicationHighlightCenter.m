@interface PXContentSyndicationHighlightCenter
+ (id)shared;
- (PXContentSyndicationHighlightCenter)init;
- (id)_allObservers;
- (void)_updateValue;
- (void)highlightCenterSettingsEnablementHasChanged:(id)a3;
- (void)registerObserver:(id)a3;
@end

@implementation PXContentSyndicationHighlightCenter

void __45__PXContentSyndicationHighlightCenter_shared__block_invoke()
{
  v0 = objc_alloc_init(PXContentSyndicationHighlightCenter);
  v1 = shared_shared;
  shared_shared = v0;
}

- (PXContentSyndicationHighlightCenter)init
{
  v8.receiver = self;
  v8.super_class = PXContentSyndicationHighlightCenter;
  v2 = [(PXContentSyndicationHighlightCenter *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    [(PXContentSyndicationHighlightCenter *)v2 _updateValue];
    v5 = objc_alloc_init(MEMORY[0x1E69D3818]);
    socialLayerHighlightCenter = v2->_socialLayerHighlightCenter;
    v2->_socialLayerHighlightCenter = v5;

    [(SLHighlightCenter *)v2->_socialLayerHighlightCenter setDelegate:v2];
  }

  return v2;
}

- (void)_updateValue
{
  v3 = [MEMORY[0x1E69D3818] isAutomaticSharingEnabled];

  [(PXContentSyndicationHighlightCenter *)self setIsAutomaticSharingEnabled:v3];
}

+ (id)shared
{
  if (shared_onceToken_154404 != -1)
  {
    dispatch_once(&shared_onceToken_154404, &__block_literal_global_154405);
  }

  v3 = shared_shared;

  return v3;
}

- (void)highlightCenterSettingsEnablementHasChanged:(id)a3
{
  [(PXContentSyndicationHighlightCenter *)self _updateValue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PXContentSyndicationHighlightCenter_highlightCenterSettingsEnablementHasChanged___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__PXContentSyndicationHighlightCenter_highlightCenterSettingsEnablementHasChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) _allObservers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) contentSyndicationHighlightCenterDidChange:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_allObservers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSHashTable *)v2->_observers allObjects];
  objc_sync_exit(v2);

  return v3;
}

- (void)registerObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers addObject:v5];
  objc_sync_exit(v4);
}

@end