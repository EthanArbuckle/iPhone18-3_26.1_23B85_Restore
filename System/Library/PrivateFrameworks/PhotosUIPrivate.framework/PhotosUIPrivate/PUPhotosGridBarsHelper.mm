@interface PUPhotosGridBarsHelper
- (NSArray)leftBarButtonItems;
- (NSArray)rightBarButtonItems;
- (NSString)prompt;
- (NSString)title;
- (PUPhotosGridBarsHelper)init;
- (PUPhotosGridBarsHelperDelegate)delegate;
- (void)_handleItemsWithCountUpdateWithTitle:(id)title shouldReloadAllItems:(BOOL)items;
- (void)_notifyBarItemsDidChange;
- (void)_setPhotoSelectionManager:(id)manager;
- (void)_setShouldUpdateBarItemsLazily:(BOOL)lazily;
- (void)_startUpdatingItemsWithCountIfNeeded;
- (void)_stopUpdatingItemsWithCount;
- (void)_updateAllBarItems;
- (void)_updateBarItemsIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateItemsWithCountInBackgroundWithDelegate:(id)delegate photoSelectionManagerSnapshot:(id)snapshot;
- (void)_updatePhotoSelectionManagerIfNeeded;
- (void)_updateShouldUpdateBarItemsLazilyIfNeeded;
- (void)setDelegate:(id)delegate;
- (void)setSwipeSelecting:(BOOL)selecting;
@end

@implementation PUPhotosGridBarsHelper

- (PUPhotosGridBarsHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleItemsWithCountUpdateWithTitle:(id)title shouldReloadAllItems:(BOOL)items
{
  itemsCopy = items;
  titleCopy = title;
  if ([(PUPhotosGridBarsHelper *)self _shouldUpdateBarItemsLazily])
  {
    if (itemsCopy)
    {
      [(PUPhotosGridBarsHelper *)self _updateAllBarItems];
    }

    else
    {
      [(PUPhotosGridBarsHelper *)self _setTitle:titleCopy];
    }

    [(PUPhotosGridBarsHelper *)self _notifyBarItemsDidChange];
  }

  [(PUPhotosGridBarsHelper *)self _setUpdatingItemsWithCount:0];
  [(PUPhotosGridBarsHelper *)self _startUpdatingItemsWithCountIfNeeded];
}

- (void)_updateItemsWithCountInBackgroundWithDelegate:(id)delegate photoSelectionManagerSnapshot:(id)snapshot
{
  delegateCopy = delegate;
  snapshotCopy = snapshot;
  _hadSelectionOnLastUpdate = [(PUPhotosGridBarsHelper *)self _hadSelectionOnLastUpdate];
  isAnyAssetSelected = [snapshotCopy isAnyAssetSelected];
  [(PUPhotosGridBarsHelper *)self _setHadSelectionOnLastUpdate:isAnyAssetSelected];
  v10 = isAnyAssetSelected & _hadSelectionOnLastUpdate;
  if (v10 == 1)
  {
    v11 = [delegateCopy photosGridBarsHelper:self titleForPhotoSelectionManager:snapshotCopy];
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
  _queue = [(PUPhotosGridBarsHelper *)self _queue];
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
      delegate = [(PUPhotosGridBarsHelper *)self delegate];
      _photoSelectionManager = [(PUPhotosGridBarsHelper *)self _photoSelectionManager];
      v5 = [_photoSelectionManager copy];

      objc_initWeak(&location, self);
      _queue = [(PUPhotosGridBarsHelper *)self _queue];
      objc_copyWeak(&v9, &location);
      v7 = delegate;
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
  delegate = [(PUPhotosGridBarsHelper *)self delegate];
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  _photoSelectionManager = [(PUPhotosGridBarsHelper *)self _photoSelectionManager];
  [delegate photosGridBarsHelper:self getTitle:&v15 prompt:&v14 shouldHideBackButton:&v16 leftBarButtonItems:&v13 rightBarButtonItems:&v12 forPhotoSelectionManager:_photoSelectionManager];
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
    isSwipeSelecting = [(PUPhotosGridBarsHelper *)self isSwipeSelecting];

    [(PUPhotosGridBarsHelper *)self _setShouldUpdateBarItemsLazily:isSwipeSelecting];
  }
}

- (void)_updatePhotoSelectionManagerIfNeeded
{
  if (self->_needsUpdateFlags.photoSelectionManager)
  {
    self->_needsUpdateFlags.photoSelectionManager = 0;
    delegate = [(PUPhotosGridBarsHelper *)self delegate];
    v5 = [delegate photosGridBarsHelperPhotoSelectionManager:self];

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
  delegate = [(PUPhotosGridBarsHelper *)self delegate];
  [delegate photosGridBarsHelper:self didChange:1];
}

- (void)_setShouldUpdateBarItemsLazily:(BOOL)lazily
{
  if (self->__shouldUpdateBarItemsLazily != lazily)
  {
    self->__shouldUpdateBarItemsLazily = lazily;
    if (!lazily)
    {
      [(PUPhotosGridBarsHelper *)self _notifyBarItemsDidChange];
      [(PUPhotosGridBarsHelper *)self _stopUpdatingItemsWithCount];

      [(PUPhotosGridBarsHelper *)self _invalidateBarItems];
    }
  }
}

- (void)_setPhotoSelectionManager:(id)manager
{
  managerCopy = manager;
  photoSelectionManager = self->__photoSelectionManager;
  if (photoSelectionManager != managerCopy)
  {
    v7 = managerCopy;
    [(PUPhotoSelectionManager *)photoSelectionManager unregisterChangeObserver:self];
    objc_storeStrong(&self->__photoSelectionManager, manager);
    [(PUPhotoSelectionManager *)self->__photoSelectionManager registerChangeObserver:self];
    photoSelectionManager = [(PUPhotosGridBarsHelper *)self _invalidateBarItems];
    managerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](photoSelectionManager, managerCopy);
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

- (void)setSwipeSelecting:(BOOL)selecting
{
  if (self->_swipeSelecting != selecting)
  {
    self->_swipeSelecting = selecting;
    [(PUPhotosGridBarsHelper *)self _invalidateShouldUpdateBarItemsLazily];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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