@interface PUSessionInfo
- (PUSessionInfo)init;
- (PXPhotosViewDelegate)photosViewDelegate;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)photoSelectionManagerSelectionDidChange:(id)a3;
- (void)removeSessionInfoObserver:(id)a3;
- (void)setBannerGenerator:(id)a3;
- (void)setPhotoSelectionManager:(id)a3;
- (void)setStatus:(int64_t)a3;
@end

@implementation PUSessionInfo

- (PXPhotosViewDelegate)photosViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosViewDelegate);

  return WeakRetained;
}

- (void)photoSelectionManagerSelectionDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PUSessionInfo_photoSelectionManagerSelectionDidChange___block_invoke;
  v3[3] = &unk_1E7B7E0D8;
  v3[4] = self;
  [(PUSessionInfo *)self _enumerateObserversWithBlock:v3];
}

void __57__PUSessionInfo_photoSelectionManagerSelectionDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sessionInfoPhotoSelectionDidChange:*(a1 + 32)];
  }
}

- (void)setBannerGenerator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_bannerGenerator == v4)
    {
      goto LABEL_6;
    }

    v7 = v4;
  }

  else
  {
    v7 = 0;
    v4 = &__block_literal_global_79696;
  }

  v5 = [v4 copy];
  bannerGenerator = self->_bannerGenerator;
  self->_bannerGenerator = v5;

  v4 = v7;
LABEL_6:
}

- (void)_enumerateObserversWithBlock:(id)a3
{
  v6 = a3;
  if ([(NSPointerArray *)self->_observers count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSPointerArray *)self->_observers pointerAtIndex:v4];
      v6[2](v6, v5);

      ++v4;
    }

    while (v4 < [(NSPointerArray *)self->_observers count]);
  }
}

- (void)setPhotoSelectionManager:(id)a3
{
  v5 = a3;
  photoSelectionManager = self->_photoSelectionManager;
  if (photoSelectionManager != v5)
  {
    v7 = v5;
    [(PUPhotoSelectionManager *)photoSelectionManager unregisterChangeObserver:self];
    objc_storeStrong(&self->_photoSelectionManager, a3);
    photoSelectionManager = [(PUPhotoSelectionManager *)self->_photoSelectionManager registerChangeObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](photoSelectionManager, v5);
}

- (void)setStatus:(int64_t)a3
{
  if (self->_status != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_status = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__PUSessionInfo_setStatus___block_invoke;
    v5[3] = &unk_1E7B7E0D8;
    v5[4] = self;
    [(PUSessionInfo *)self _enumerateObserversWithBlock:v5];
  }
}

void __27__PUSessionInfo_setStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sessionInfoStatusDidChange:*(a1 + 32)];
  }
}

- (void)removeSessionInfoObserver:(id)a3
{
  v5 = a3;
  if ([(NSPointerArray *)self->_observers count])
  {
    v4 = 0;
    while ([(NSPointerArray *)self->_observers pointerAtIndex:v4]!= v5)
    {
      if (++v4 >= [(NSPointerArray *)self->_observers count])
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_observers removePointerAtIndex:v4];
  }

LABEL_7:
}

- (PUSessionInfo)init
{
  v6.receiver = self;
  v6.super_class = PUSessionInfo;
  v2 = [(PUSessionInfo *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_allowsSwipeToSelect = 1;
    [(PUSessionInfo *)v2 setBannerGenerator:0];
  }

  return v2;
}

@end