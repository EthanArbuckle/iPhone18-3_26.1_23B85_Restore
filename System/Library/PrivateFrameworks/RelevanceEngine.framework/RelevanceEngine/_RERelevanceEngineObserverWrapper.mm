@interface _RERelevanceEngineObserverWrapper
- (BOOL)relevanceEngine:(id)engine isElementAtPathVisible:(id)visible;
- (RERelevanceEngineObserver)observer;
- (_RERelevanceEngineObserverWrapper)initWithObserver:(id)observer;
- (void)relevanceEngine:(id)engine didInsertElement:(id)element atPath:(id)path;
- (void)relevanceEngine:(id)engine didMoveElement:(id)element fromPath:(id)path toPath:(id)toPath;
- (void)relevanceEngine:(id)engine didReloadElement:(id)element atPath:(id)path;
- (void)relevanceEngine:(id)engine didRemoveElement:(id)element atPath:(id)path;
- (void)relevanceEngine:(id)engine didUpdateRelevanceForElement:(id)element;
- (void)relevanceEngine:(id)engine performBatchUpdateBlock:(id)block completion:(id)completion;
- (void)relevanceEngineDidBeginUpdatingRelevance:(id)relevance;
- (void)relevanceEngineDidFinishUpdatingRelevance:(id)relevance;
- (void)relevanceEngineDidUpdateElementRankings:(id)rankings;
@end

@implementation _RERelevanceEngineObserverWrapper

- (_RERelevanceEngineObserverWrapper)initWithObserver:(id)observer
{
  observerCopy = observer;
  v17.receiver = self;
  v17.super_class = _RERelevanceEngineObserverWrapper;
  v5 = [(_RERelevanceEngineObserverWrapper *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
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

- (void)relevanceEngine:(id)engine performBatchUpdateBlock:(id)block completion:(id)completion
{
  engineCopy = engine;
  blockCopy = block;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v11 = WeakRetained;
  if (WeakRetained && (*&self->_observerCallbacks & 1) != 0)
  {
    [WeakRetained relevanceEngine:engineCopy performBatchUpdateBlock:blockCopy completion:completionCopy];
  }

  else
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)relevanceEngine:(id)engine didReloadElement:(id)element atPath:(id)path
{
  if ((*&self->_observerCallbacks & 2) != 0)
  {
    pathCopy = path;
    elementCopy = element;
    engineCopy = engine;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:engineCopy didReloadElement:elementCopy atPath:pathCopy];
  }
}

- (void)relevanceEngine:(id)engine didRemoveElement:(id)element atPath:(id)path
{
  if ((*&self->_observerCallbacks & 4) != 0)
  {
    pathCopy = path;
    elementCopy = element;
    engineCopy = engine;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:engineCopy didRemoveElement:elementCopy atPath:pathCopy];
  }
}

- (void)relevanceEngine:(id)engine didInsertElement:(id)element atPath:(id)path
{
  if ((*&self->_observerCallbacks & 8) != 0)
  {
    pathCopy = path;
    elementCopy = element;
    engineCopy = engine;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:engineCopy didInsertElement:elementCopy atPath:pathCopy];
  }
}

- (void)relevanceEngine:(id)engine didMoveElement:(id)element fromPath:(id)path toPath:(id)toPath
{
  if ((*&self->_observerCallbacks & 0x10) != 0)
  {
    toPathCopy = toPath;
    pathCopy = path;
    elementCopy = element;
    engineCopy = engine;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:engineCopy didMoveElement:elementCopy fromPath:pathCopy toPath:toPathCopy];
  }
}

- (BOOL)relevanceEngine:(id)engine isElementAtPathVisible:(id)visible
{
  engineCopy = engine;
  visibleCopy = visible;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v9 = WeakRetained;
  if (WeakRetained && (*&self->_observerCallbacks & 0x20) != 0)
  {
    v10 = [WeakRetained relevanceEngine:engineCopy isElementAtPathVisible:visibleCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)relevanceEngine:(id)engine didUpdateRelevanceForElement:(id)element
{
  if ((*&self->_observerCallbacks & 0x40) != 0)
  {
    elementCopy = element;
    engineCopy = engine;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngine:engineCopy didUpdateRelevanceForElement:elementCopy];
  }
}

- (void)relevanceEngineDidBeginUpdatingRelevance:(id)relevance
{
  if ((*&self->_observerCallbacks & 0x80) != 0)
  {
    relevanceCopy = relevance;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngineDidBeginUpdatingRelevance:relevanceCopy];
  }
}

- (void)relevanceEngineDidFinishUpdatingRelevance:(id)relevance
{
  if ((*&self->_observerCallbacks & 0x100) != 0)
  {
    relevanceCopy = relevance;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngineDidFinishUpdatingRelevance:relevanceCopy];
  }
}

- (void)relevanceEngineDidUpdateElementRankings:(id)rankings
{
  if ((*&self->_observerCallbacks & 0x200) != 0)
  {
    rankingsCopy = rankings;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained relevanceEngineDidUpdateElementRankings:rankingsCopy];
  }
}

- (RERelevanceEngineObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end