@interface PUAirPlayContentRegistry
- (PHAirPlayControllerContentProvider)currentContentProvider;
- (PUAirPlayContentRegistry)init;
- (id)contentForController:(id)a3;
- (unint64_t)_indexOfContentProvider:(id)a3;
- (void)addContentProvider:(id)a3;
- (void)removeContentProvider:(id)a3;
@end

@implementation PUAirPlayContentRegistry

- (id)contentForController:(id)a3
{
  v4 = a3;
  v5 = [(PUAirPlayContentRegistry *)self _cachedCurrentContent];
  if (!v5)
  {
    v6 = [(PUAirPlayContentRegistry *)self currentContentProvider];
    v5 = [v6 contentViewControllerForAirPlayController:v4];
    [(PUAirPlayContentRegistry *)self _setCachedCurrentContent:v5];
  }

  return v5;
}

- (PHAirPlayControllerContentProvider)currentContentProvider
{
  v3 = [(PUAirPlayContentRegistry *)self _contentProviders];
  v4 = [v3 count];
  if (v4 - 1 < 0)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    v5 = v4;
    while (1)
    {
      v6 = [v3 pointerAtIndex:--v5];
      if (v6)
      {
        break;
      }

      v7 = PXAssertGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "An AirPlay content provider deallocated without deregistering as a provider.", v10, 2u);
      }

      if (v5 <= 0)
      {
        goto LABEL_7;
      }
    }

    v8 = v6;
  }

  if ([(PUAirPlayContentRegistry *)self lastContentProviderPtr]!= v8)
  {
    [(PUAirPlayContentRegistry *)self setLastContentProviderPtr:v8];
    [(PUAirPlayContentRegistry *)self _invalidateCurrentContent];
  }

  return v8;
}

- (unint64_t)_indexOfContentProvider:(id)a3
{
  v4 = a3;
  v5 = [(PUAirPlayContentRegistry *)self _contentProviders];
  v6 = [v5 allObjects];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PUAirPlayContentRegistry__indexOfContentProvider___block_invoke;
  v10[3] = &unk_1E7B74BF8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 indexOfObjectWithOptions:2 passingTest:v10];

  return v8;
}

BOOL __52__PUAirPlayContentRegistry__indexOfContentProvider___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = *(a1 + 32) == a2;
  *a4 = result;
  return result;
}

- (void)removeContentProvider:(id)a3
{
  v7 = a3;
  v4 = [(PUAirPlayContentRegistry *)self _indexOfContentProvider:v7];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if ([(PUAirPlayContentRegistry *)self isCurrentContentProvider:v7])
    {
      [(PUAirPlayContentRegistry *)self _invalidateCurrentContent];
    }

    v6 = [(PUAirPlayContentRegistry *)self _contentProviders];
    [v6 removePointerAtIndex:v5];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addContentProvider:(id)a3
{
  v5 = a3;
  if ([(PUAirPlayContentRegistry *)self _indexOfContentProvider:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(PUAirPlayContentRegistry *)self _contentProviders];
    [v4 addPointer:v5];

    [(PUAirPlayContentRegistry *)self _invalidateCurrentContent];
  }
}

- (PUAirPlayContentRegistry)init
{
  v5.receiver = self;
  v5.super_class = PUAirPlayContentRegistry;
  v2 = [(PUAirPlayContentRegistry *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [(PUAirPlayContentRegistry *)v2 _setContentProviders:v3];
  }

  return v2;
}

@end