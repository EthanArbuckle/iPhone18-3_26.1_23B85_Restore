@interface PVRenderEffectLoader
- (PVRenderEffectLoader)init;
- (void)_loadEffects_noLock:(id)a3;
- (void)_removeTimedOutEffects_noLock;
- (void)_removeUnusedEffects_noLock:(id)a3;
- (void)ageOutEffects;
- (void)dealloc;
- (void)loadEffectsForGraphs:(id)a3 loadContext:(HGRef<PVInstructionGraphContext>)a4;
- (void)unloadEffects;
@end

@implementation PVRenderEffectLoader

- (PVRenderEffectLoader)init
{
  v4.receiver = self;
  v4.super_class = PVRenderEffectLoader;
  v2 = [(PVRenderEffectLoader *)&v4 init];
  if (v2)
  {
    v2->_unusedEffectTimeout = 1.0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(PVRenderEffectLoader *)self unloadEffects];
  loadedEffects = self->_loadedEffects;
  if (loadedEffects)
  {
    v4 = std::deque<PVLoadedEffectItem>::~deque[abi:ne200100](loadedEffects);
    MEMORY[0x2666E9F00](v4, 0x1080C40BE8D5F09);
  }

  lock = self->_lock;
  if (lock)
  {
    (*(lock->var0 + 1))(lock);
  }

  v6.receiver = self;
  v6.super_class = PVRenderEffectLoader;
  [(PVRenderEffectLoader *)&v6 dealloc];
}

- (void)loadEffectsForGraphs:(id)a3 loadContext:(HGRef<PVInstructionGraphContext>)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (HGLogger::getLevel("PVSignPost", v7) >= 1)
  {
    kdebug_trace();
  }

  lock = self->_lock;
  v30 = lock;
  v31 = 0;
  HGSynchronizable::Lock(lock);
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = *a4.m_Obj;
        v25 = v15;
        if (v15)
        {
          (*(*v15 + 16))(v15);
        }

        [v14 loadIGNode:&v25 returnLoadedEffects:v9];
        if (v25)
        {
          (*(*v25 + 24))(v25);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v11);
  }

  [(PVRenderEffectLoader *)self _removeUnusedEffects_noLock:v9];
  [(PVRenderEffectLoader *)self _loadEffects_noLock:v9];
  [(PVRenderEffectLoader *)self _removeTimedOutEffects_noLock];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v17)
  {
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * j) unloadIGNode];
      }

      v17 = [v16 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v17);
  }

  if (HGLogger::getLevel("PVSignPost", v20) >= 1)
  {
    kdebug_trace();
  }

  HGSynchronizable::Unlock(lock);
}

- (void)unloadEffects
{
  lock = self->_lock;
  v9 = lock;
  LOBYTE(v10) = 0;
  HGSynchronizable::Lock(lock);
  while (1)
  {
    loadedEffects = self->_loadedEffects;
    v5 = loadedEffects[5];
    if (!v5)
    {
      break;
    }

    v6 = (*(loadedEffects[1] + (((v5 + loadedEffects[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v5 + *(loadedEffects + 32) - 1));
    v7 = *v6;
    v8 = v6[1];
    [v7 releaseEffect];
    std::deque<PVLoadedEffectItem>::pop_back(self->_loadedEffects);
  }

  HGSynchronizable::Unlock(lock);
}

- (void)ageOutEffects
{
  lock = self->_lock;
  LOBYTE(v4) = 0;
  HGSynchronizable::Lock(lock);
  [(PVRenderEffectLoader *)self _removeTimedOutEffects_noLock:lock];
  HGSynchronizable::Unlock(lock);
}

- (void)_removeUnusedEffects_noLock:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  loadedEffects = self->_loadedEffects;
  if (loadedEffects[5])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(loadedEffects[1] + (((loadedEffects[4] + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(loadedEffects + 32) + v7));
      v9 = *v8;
      v10 = v8[1];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = *v24;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v11);
            }

            if (v9 == *(*(&v23 + 1) + 8 * v14))
            {

              ++v7;
              goto LABEL_16;
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v15 = self->_loadedEffects;
      v16 = v15[2].u64[0];
      v17 = v15->i64[1];
      v18 = (v17 + 8 * (v16 >> 8));
      if (v15[1].i64[0] == v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v18 + 16 * v16;
      }

      v22[0] = v18;
      v22[1] = v19;
      v20 = std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>::operator+[abi:ne200100](v22, v7);
      std::deque<PVLoadedEffectItem>::erase(v15, v20, v21);
      v6 = 1;
LABEL_16:

      loadedEffects = self->_loadedEffects;
    }

    while (v7 < loadedEffects[5]);
    if ((v6 & 1) != 0 && self->_flushesOnEffectStackChanges)
    {
      +[PVEffectResources flushEngine];
    }
  }
}

- (void)_loadEffects_noLock:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        PVLoadedEffectItem::PVLoadedEffectItem(v22, *(*(&v23 + 1) + 8 * i));
        loadedEffects = self->_loadedEffects;
        v9 = loadedEffects[4];
        v10 = loadedEffects[1];
        v11 = (v10 + 8 * (v9 >> 8));
        if (loadedEffects[2] == v10)
        {
          v12 = 0;
          v15 = 0;
          v14 = (v10 + 8 * ((loadedEffects[5] + v9) >> 8));
        }

        else
        {
          v12 = (*v11 + 16 * v9);
          v13 = loadedEffects[5] + v9;
          v14 = (v10 + 8 * (v13 >> 8));
          v15 = (*v14 + 16 * v13);
        }

        v17 = std::__find_segment_if[abi:ne200100]<std::__deque_iterator<PVLoadedEffectItem,PVLoadedEffectItem*,PVLoadedEffectItem&,PVLoadedEffectItem**,long,256l>,std::__find_segment<PVLoadedEffectItem>,std::__identity>(v11, v12, v14, v15, v22);
        v18 = self->_loadedEffects;
        v19 = v18->i64[1];
        if (v18[1].i64[0] == v19)
        {
          v21 = 0;
        }

        else
        {
          v20 = v18[2].i64[1] + v18[2].i64[0];
          v21 = *(v19 + ((v20 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v20;
        }

        if (v21 == v16)
        {
          [v22[0] loadEffect];
        }

        else
        {
          std::deque<PVLoadedEffectItem>::erase(v18, v17, v16);
        }

        std::deque<PVLoadedEffectItem>::push_front(self->_loadedEffects, v22);
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

- (void)_removeTimedOutEffects_noLock
{
  v11 = [MEMORY[0x277CBEAA8] date];
  while (1)
  {
    loadedEffects = self->_loadedEffects;
    v4 = loadedEffects[5];
    if (!v4)
    {
      break;
    }

    v5 = (*(loadedEffects[1] + (((v4 + loadedEffects[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + *(loadedEffects + 32) - 1));
    v6 = *v5;
    v7 = v5[1];
    [v11 timeIntervalSinceDate:v7];
    v9 = v8;

    [(PVRenderEffectLoader *)self unusedEffectTimeout];
    if (v9 <= v10)
    {

      break;
    }

    [v6 releaseEffect];
    std::deque<PVLoadedEffectItem>::pop_back(self->_loadedEffects);
  }
}

@end