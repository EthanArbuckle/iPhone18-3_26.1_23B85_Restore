@interface ISScrollViewVitalityController
- (CGPoint)targetContentOffset;
- (ISScrollViewVitalityController)init;
- (UIScrollView)_scrollView;
- (id)_newVitalityFilter;
- (void)_updateVitalityFilters;
- (void)addPlayerView:(id)a3;
- (void)performChanges:(id)a3;
- (void)removePlayerView:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation ISScrollViewVitalityController

- (CGPoint)targetContentOffset
{
  x = self->_targetContentOffset.x;
  y = self->_targetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIScrollView)_scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->__scrollView);

  return WeakRetained;
}

- (void)_updateVitalityFilters
{
  v3 = [(ISScrollViewVitalityController *)self _scrollView];
  v4 = [(ISScrollViewVitalityController *)self isScrolling];
  v5 = [(ISScrollViewVitalityController *)self isDecelerating];
  [(ISScrollViewVitalityController *)self targetContentOffset];
  v7 = v6;
  v9 = v8;
  v10 = [(ISScrollViewVitalityController *)self estimatedScrollEndDate];
  v11 = [(ISScrollViewVitalityController *)self hasTargetContentOffset];
  v12 = [(ISScrollViewVitalityController *)self _playerViews];
  v13 = [v12 allObjects];

  if ([(ISScrollViewVitalityController *)self canPerformVitality])
  {
    v14 = [(ISScrollViewVitalityController *)self isEnabled];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(ISScrollViewVitalityController *)self visibilityOffsetHelper];
  [v15 setDirection:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__ISScrollViewVitalityController__updateVitalityFilters__block_invoke;
  v18[3] = &unk_279A29FA8;
  v22 = v14;
  v19 = v13;
  v20 = self;
  v23 = v11;
  v21 = v10;
  v24 = v4;
  v25 = v5;
  v16 = v10;
  v17 = v13;
  [v15 computeVisibilityOffsetsInScrollView:v3 withTargetContentOffset:v18 usingBlock:{v7, v9}];
}

void __56__ISScrollViewVitalityController__updateVitalityFilters__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v24 = 0;
        v22 = 0;
        v23 = 0;
        [v3 getVisibility:&v24 offset:&v23 targetVisibilityOffset:&v22 forView:v9];
        v10 = [v9 livePhotoPlayer];
        v11 = [v10 vitalityFilter];
        v12 = v11;
        if (*(a1 + 56) == 1)
        {
          if (!v11)
          {
            v12 = [*(a1 + 40) _newVitalityFilter];
            [v10 setVitalityFilter:v12];
          }

          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __56__ISScrollViewVitalityController__updateVitalityFilters__block_invoke_2;
          v14[3] = &unk_279A29F80;
          v12 = v12;
          v15 = v12;
          v19 = v24;
          v20 = *(a1 + 57);
          v17 = v23;
          v18 = v22;
          v16 = *(a1 + 48);
          v21 = *(a1 + 58);
          [v12 performInputChanges:v14];
        }

        else
        {
          [v10 setVitalityFilter:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __56__ISScrollViewVitalityController__updateVitalityFilters__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setVisible:*(a1 + 64)];
  [*(a1 + 32) setVisibilityOffset:*(a1 + 48)];
  [*(a1 + 32) setHasTargetVisibilityOffset:*(a1 + 65)];
  [*(a1 + 32) setTargetVisibilityOffset:*(a1 + 56)];
  [*(a1 + 32) setEstimatedScrollEndDate:*(a1 + 40)];
  [*(a1 + 32) setScrolling:*(a1 + 66)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 67);

  return [v2 setDecelerating:v3];
}

- (id)_newVitalityFilter
{
  v2 = +[ISVitalitySettings sharedInstance];
  v3 = [v2 oneUpSettings];

  v4 = [(ISLivePhotoVitalityFilter *)[ISLivePhotoAutoplayVitalityFilter alloc] initWithSettings:v3];
  return v4;
}

- (void)performChanges:(id)a3
{
  v5 = a3;
  v4 = [(ISScrollViewVitalityController *)self _isPerformingChanges];
  [(ISScrollViewVitalityController *)self _setPerformingChanges:1];
  if (v5)
  {
    v5[2](v5);
  }

  [(ISScrollViewVitalityController *)self _setPerformingChanges:v4];
  if (!v4)
  {
    [(ISScrollViewVitalityController *)self _updateVitalityFilters];
  }
}

- (void)removePlayerView:(id)a3
{
  v4 = a3;
  v5 = [(ISScrollViewVitalityController *)self _playerViews];
  [v5 removeObject:v4];
}

- (void)addPlayerView:(id)a3
{
  v4 = a3;
  v5 = [(ISScrollViewVitalityController *)self _playerViews];
  [v5 addObject:v4];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__ISScrollViewVitalityController_setEnabled___block_invoke;
    v5[3] = &unk_279A2A4D8;
    v5[4] = self;
    v6 = a3;
    [(ISScrollViewVitalityController *)self performChanges:v5];
  }
}

- (ISScrollViewVitalityController)init
{
  v6.receiver = self;
  v6.super_class = ISScrollViewVitalityController;
  v2 = [(ISScrollViewVitalityController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    playerViews = v2->__playerViews;
    v2->__playerViews = v3;

    v2->_enabled = 1;
  }

  return v2;
}

@end