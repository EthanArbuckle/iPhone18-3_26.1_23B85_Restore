@interface CachedShouldRequestWGS84Elevations
- (CachedShouldRequestWGS84Elevations)init;
- (void)dealloc;
@end

@implementation CachedShouldRequestWGS84Elevations

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = CachedShouldRequestWGS84Elevations;
  [(CachedShouldRequestWGS84Elevations *)&v3 dealloc];
}

- (CachedShouldRequestWGS84Elevations)init
{
  v10.receiver = self;
  v10.super_class = CachedShouldRequestWGS84Elevations;
  v2 = [(CachedShouldRequestWGS84Elevations *)&v10 init];
  if (v2)
  {
    v2->_shouldRequestWGS84Elevations = GEOConfigGetBOOL();
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v8, &location);
    v4 = _GEOConfigAddBlockListenerForKey();
    subscription = v2->_subscription;
    v2->_subscription = v4;

    v6 = v2;
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__CachedShouldRequestWGS84Elevations_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[8] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

@end