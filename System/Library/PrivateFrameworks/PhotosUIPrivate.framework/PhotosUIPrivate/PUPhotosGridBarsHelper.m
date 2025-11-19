@interface PUPhotosGridBarsHelper
- (NSArray)leftBarButtonItems;
- (NSArray)rightBarButtonItems;
- (NSString)prompt;
- (NSString)title;
- (PUPhotosGridBarsHelper)init;
- (PUPhotosGridBarsHelperDelegate)delegate;
- (void)_handleItemsWithCountUpdateWithTitle:(id)a3 shouldReloadAllItems:(BOOL)a4;
- (void)_notifyBarItemsDidChange;
- (void)_setPhotoSelectionManager:(id)a3;
- (void)_setShouldUpdateBarItemsLazily:(BOOL)a3;
- (void)_startUpdatingItemsWithCountIfNeeded;
- (void)_stopUpdatingItemsWithCount;
- (void)_updateAllBarItems;
- (void)_updateBarItemsIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateItemsWithCountInBackgroundWithDelegate:(id)a3 photoSelectionManagerSnapshot:(id)a4;
- (void)_updatePhotoSelectionManagerIfNeeded;
- (void)_updateShouldUpdateBarItemsLazilyIfNeeded;
- (void)setDelegate:(id)a3;
- (void)setSwipeSelecting:(BOOL)a3;
@end

@implementation PUPhotosGridBarsHelper

- (PUPhotosGridBarsHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleItemsWithCountUpdateWithTitle:(id)a3 shouldReloadAllItems:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(PUPhotosGridBarsHelper *)self _shouldUpdateBarItemsLazily])
  {
    if (v4)
    {
      [(PUPhotosGridBarsHelper *)self _updateAllBarItems];
    }

    else
    {
      [(PUPhotosGridBarsHelper *)self _setTitle:v6];
    }

    [(PUPhotosGridBarsHelper *)self _notifyBarItemsDidChange];
  }

  [(PUPhotosGridBarsHelper *)self _setUpdatingItemsWithCount:0];
  [(PUPhotosGridBarsHelper *)self _startUpdatingItemsWithCountIfNeeded];
}

- (void)_updateItemsWithCountInBackgroundWithDelegate:(id)a3 photoSelectionManagerSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotosGridBarsHelper *)self _hadSelectionOnLastUpdate];
  v9 = [v7 isAnyAssetSelected];
  [(PUPhotosGridBarsHelper *)self _setHadSelectionOnLastUpdate:v9];
  v10 = v9 & v8;
  if (v10 == 1)
  {
    v11 = [v6 photosGridBarsHelper:self titleForPhotoSelectionManager:v7];
  }

  else
  {
    v11 = 0;
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v14, &location);
  v13 = v11;
  v15 = v10 ^ 1;
  pl_dispatch_async();

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __102__PUPhotosGridBarsHelper__updateItemsWithCountInBackgroundWithDelegate_photoSelectionManagerSnapshot___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleItemsWithCountUpdateWithTitle:*(a1 + 32) shouldReloadAllItems:*(a1 + 48)];
}

- (void)_stopUpdatingItemsWithCount
{
  [(PUPhotosGridBarsHelper *)self _setShouldUpdateItemsWithCount:0];
  objc_initWeak(&location, self);
  v3 = [(PUPhotosGridBarsHelper *)self _queue];
  objc_copyWeak(&v4, &location);
  pl_dispatch_async();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __53__PUPhotosGridBarsHelper__stopUpdatingItemsWithCount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setHadSelectionOnLastUpdate:0];
}

- (void)_startUpdatingItemsWithCountIfNeeded
{
  if ([(PUPhotosGridBarsHelper *)self _shouldUpdateItemsWithCount])
  {
    if (![(PUPhotosGridBarsHelper *)self _isUpdatingItemsWithCount])
    {
      [(PUPhotosGridBarsHelper *)self _setShouldUpdateItemsWithCount:0];
      [(PUPhotosGridBarsHelper *)self _setUpdatingItemsWithCount:1];
      v3 = [(PUPhotosGridBarsHelper *)self delegate];
      v4 = [(PUPhotosGridBarsHelper *)self _photoSelectionManager];
      v5 = [v4 copy];

      objc_initWeak(&location, self);
      v6 = [(PUPhotosGridBarsHelper *)self _queue];
      objc_copyWeak(&v9, &location);
      v7 = v3;
      v8 = v5;
      pl_dispatch_async();

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __62__PUPhotosGridBarsHelper__startUpdatingItemsWithCountIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateItemsWithCountInBackgroundWithDelegate:*(a1 + 32) photoSelectionManagerSnapshot:*(a1 + 40)];
}

- (void)_updateAllBarItems
{
  v16 = 0;
  v3 = [(PUPhotosGridBarsHelper *)self delegate];
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v4 = [(PUPhotosGridBarsHelper *)self _photoSelectionManager];
  [v3 photosGridBarsHelper:self getTitle:&v15 prompt:&v14 shouldHideBackButton:&v16 leftBarButtonItems:&v13 rightBarButtonItems:&v12 forPhotoSelectionManager:v4];
  v5 = v14;
  v6 = v15;
  v7 = v13;
  v8 = v12;
  v9 = v7;
  v10 = v5;
  v11 = v6;

  [(PUPhotosGridBarsHelper *)self _setTitle:v11];
  [(PUPhotosGridBarsHelper *)self _setPrompt:v10];
  [(PUPhotosGridBarsHelper *)self _setShouldHideBackButton:v16];
  [(PUPhotosGridBarsHelper *)self _setLeftBarButtonItems:v9];
  [(PUPhotosGridBarsHelper *)self _setRightBarButtonItems:v8];
}

- (void)_updateBarItemsIfNeeded
{
  if (self->_needsUpdateFlags.barItems)
  {
    self->_needsUpdateFlags.barItems = 0;
    if ([(PUPhotosGridBarsHelper *)self _shouldUpdateBarItemsLazily])
    {
      [(PUPhotosGridBarsHelper *)self _setShouldUpdateItemsWithCount:1];

      [(PUPhotosGridBarsHelper *)self _startUpdatingItemsWithCountIfNeeded];
    }

    else
    {

      [(PUPhotosGridBarsHelper *)self _updateAllBarItems];
    }
  }
}

- (void)_updateShouldUpdateBarItemsLazilyIfNeeded
{
  if (self->_needsUpdateFlags.shouldUpdateBarItemsLazily)
  {
    self->_needsUpdateFlags.shouldUpdateBarItemsLazily = 0;
    v4 = [(PUPhotosGridBarsHelper *)self isSwipeSelecting];

    [(PUPhotosGridBarsHelper *)self _setShouldUpdateBarItemsLazily:v4];
  }
}

- (void)_updatePhotoSelectionManagerIfNeeded
{
  if (self->_needsUpdateFlags.photoSelectionManager)
  {
    self->_needsUpdateFlags.photoSelectionManager = 0;
    v4 = [(PUPhotosGridBarsHelper *)self delegate];
    v5 = [v4 photosGridBarsHelperPhotoSelectionManager:self];

    [(PUPhotosGridBarsHelper *)self _setPhotoSelectionManager:v5];
  }
}

- (void)_updateIfNeeded
{
  if ([(PUPhotosGridBarsHelper *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PUPhotosGridBarsHelper *)self _updatePhotoSelectionManagerIfNeeded];
    [(PUPhotosGridBarsHelper *)self _updateShouldUpdateBarItemsLazilyIfNeeded];
    [(PUPhotosGridBarsHelper *)self _updateBarItemsIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
  }
}

- (void)_notifyBarItemsDidChange
{
  v3 = [(PUPhotosGridBarsHelper *)self delegate];
  [v3 photosGridBarsHelper:self didChange:1];
}

- (void)_setShouldUpdateBarItemsLazily:(BOOL)a3
{
  if (self->__shouldUpdateBarItemsLazily != a3)
  {
    self->__shouldUpdateBarItemsLazily = a3;
    if (!a3)
    {
      [(PUPhotosGridBarsHelper *)self _notifyBarItemsDidChange];
      [(PUPhotosGridBarsHelper *)self _stopUpdatingItemsWithCount];

      [(PUPhotosGridBarsHelper *)self _invalidateBarItems];
    }
  }
}

- (void)_setPhotoSelectionManager:(id)a3
{
  v5 = a3;
  photoSelectionManager = self->__photoSelectionManager;
  if (photoSelectionManager != v5)
  {
    v7 = v5;
    [(PUPhotoSelectionManager *)photoSelectionManager unregisterChangeObserver:self];
    objc_storeStrong(&self->__photoSelectionManager, a3);
    [(PUPhotoSelectionManager *)self->__photoSelectionManager registerChangeObserver:self];
    photoSelectionManager = [(PUPhotosGridBarsHelper *)self _invalidateBarItems];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](photoSelectionManager, v5);
}

- (NSArray)rightBarButtonItems
{
  [(PUPhotosGridBarsHelper *)self _updateIfNeeded];
  rightBarButtonItems = self->_rightBarButtonItems;

  return rightBarButtonItems;
}

- (NSArray)leftBarButtonItems
{
  [(PUPhotosGridBarsHelper *)self _updateIfNeeded];
  leftBarButtonItems = self->_leftBarButtonItems;

  return leftBarButtonItems;
}

- (NSString)prompt
{
  [(PUPhotosGridBarsHelper *)self _updateIfNeeded];
  prompt = self->_prompt;

  return prompt;
}

- (NSString)title
{
  [(PUPhotosGridBarsHelper *)self _updateIfNeeded];
  title = self->_title;

  return title;
}

- (void)setSwipeSelecting:(BOOL)a3
{
  if (self->_swipeSelecting != a3)
  {
    self->_swipeSelecting = a3;
    [(PUPhotosGridBarsHelper *)self _invalidateShouldUpdateBarItemsLazily];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PUPhotosGridBarsHelper *)self _invalidatePhotoSelectionManager];
    v5 = obj;
  }
}

- (PUPhotosGridBarsHelper)init
{
  v7.receiver = self;
  v7.super_class = PUPhotosGridBarsHelper;
  v2 = [(PUPhotosGridBarsHelper *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.PUPhotosGridBarsHelper", v3);
    queue = v2->__queue;
    v2->__queue = v4;
  }

  return v2;
}

@end