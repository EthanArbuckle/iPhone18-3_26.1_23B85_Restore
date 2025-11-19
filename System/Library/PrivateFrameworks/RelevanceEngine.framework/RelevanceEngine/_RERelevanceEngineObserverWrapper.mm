@interface _RERelevanceEngineObserverWrapper
- (BOOL)relevanceEngine:(id)a3 isElementAtPathVisible:(id)a4;
- (RERelevanceEngineObserver)observer;
- (_RERelevanceEngineObserverWrapper)initWithObserver:(id)a3;
- (void)relevanceEngine:(id)a3 didInsertElement:(id)a4 atPath:(id)a5;
- (void)relevanceEngine:(id)a3 didMoveElement:(id)a4 fromPath:(id)a5 toPath:(id)a6;
- (void)relevanceEngine:(id)a3 didReloadElement:(id)a4 atPath:(id)a5;
- (void)relevanceEngine:(id)a3 didRemoveElement:(id)a4 atPath:(id)a5;
- (void)relevanceEngine:(id)a3 didUpdateRelevanceForElement:(id)a4;
- (void)relevanceEngine:(id)a3 performBatchUpdateBlock:(id)a4 completion:(id)a5;
- (void)relevanceEngineDidBeginUpdatingRelevance:(id)a3;
- (void)relevanceEngineDidFinishUpdatingRelevance:(id)a3;
- (void)relevanceEngineDidUpdateElementRankings:(id)a3;
@end

@implementation _RERelevanceEngineObserverWrapper

- (_RERelevanceEngineObserverWrapper)initWithObserver:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _RERelevanceEngineObserverWrapper;
  v5 = [(_RERelevanceEngineObserverWrapper *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, v4);
    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFFFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFFFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFFF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFFEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFFDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFFBF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 128;
    }

    else
    {
      v13 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFF7F | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFEFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    *&v6->_observerCallbacks = *&v6->_observerCallbacks & 0xFDFF | v15;
  }

  return v6;
}

- (void)relevanceEngine:(id)a3 performBatchUpdateBlock:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v11 = WeakRetained;
  if (WeakRetained && (*&self->_observerCallbacks & 1) != 0)
  {
    [WeakRetained relevanceEngine:v12 performBatchUpdateBlock:v8 completion:v9];
  }

  else
  {
    if (v8)
    {
      v8[2](v8);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

- (void)relevanceEngine:(id)a3 didReloadElement:(id)a4 atPath:(id)a5
{
  if ((*&self->_observerCallbacks & 2) != 0)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:v11 didReloadElement:v10 atPath:v9];
  }
}

- (void)relevanceEngine:(id)a3 didRemoveElement:(id)a4 atPath:(id)a5
{
  if ((*&self->_observerCallbacks & 4) != 0)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:v11 didRemoveElement:v10 atPath:v9];
  }
}

- (void)relevanceEngine:(id)a3 didInsertElement:(id)a4 atPath:(id)a5
{
  if ((*&self->_observerCallbacks & 8) != 0)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:v11 didInsertElement:v10 atPath:v9];
  }
}

- (void)relevanceEngine:(id)a3 didMoveElement:(id)a4 fromPath:(id)a5 toPath:(id)a6
{
  if ((*&self->_observerCallbacks & 0x10) != 0)
  {
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:v14 didMoveElement:v13 fromPath:v12 toPath:v11];
  }
}

- (BOOL)relevanceEngine:(id)a3 isElementAtPathVisible:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v9 = WeakRetained;
  if (WeakRetained && (*&self->_observerCallbacks & 0x20) != 0)
  {
    v10 = [WeakRetained relevanceEngine:v6 isElementAtPathVisible:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)relevanceEngine:(id)a3 didUpdateRelevanceForElement:(id)a4
{
  if ((*&self->_observerCallbacks & 0x40) != 0)
  {
    v7 = a4;
    v8 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:v8 didUpdateRelevanceForElement:v7];
  }
}

- (void)relevanceEngineDidBeginUpdatingRelevance:(id)a3
{
  if ((*&self->_observerCallbacks & 0x80) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngineDidBeginUpdatingRelevance:v5];
  }
}

- (void)relevanceEngineDidFinishUpdatingRelevance:(id)a3
{
  if ((*&self->_observerCallbacks & 0x100) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngineDidFinishUpdatingRelevance:v5];
  }
}

- (void)relevanceEngineDidUpdateElementRankings:(id)a3
{
  if ((*&self->_observerCallbacks & 0x200) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngineDidUpdateElementRankings:v5];
  }
}

- (RERelevanceEngineObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end