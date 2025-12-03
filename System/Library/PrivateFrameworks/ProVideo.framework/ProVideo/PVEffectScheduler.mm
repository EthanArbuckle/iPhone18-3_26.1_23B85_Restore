@interface PVEffectScheduler
- (BOOL)loadTimeIsNearEnd:(id *)end;
- (BOOL)previousLoadedIteratorIsLastInList;
- (PVEffectScheduler)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)loadEffects:(id *)effects playerRate:(float)rate;
- (void)releaseAllUnusedEffects:(id *)effects;
- (void)resetSchedule:(id)schedule;
- (void)resetSearchPoint;
- (void)setEffectLoadingRenderContext:(HGRef<PVInstructionGraphContext>)context;
- (void)unloadInstructionFromPreviousSchedule;
@end

@implementation PVEffectScheduler

- (PVEffectScheduler)init
{
  v7.receiver = self;
  v7.super_class = PVEffectScheduler;
  v2 = [(PVEffectScheduler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ProVideo.EffectScheduler", 0);
    loadQueue = v2->_loadQueue;
    v2->_loadQueue = v3;

    v5 = MEMORY[0x277CC08F0];
    *&v2->_endTime.value = *MEMORY[0x277CC08F0];
    v2->_endTime.epoch = *(v5 + 16);
    *&v2->_loadedFinalInstructions = 0;
    atomic_store(0, &v2->_isScheduling);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  begin_node = self->_effectSchedule.__tree_.__begin_node_;
  p_end_node = &self->_effectSchedule.__tree_.__end_node_;
  if (begin_node != &self->_effectSchedule.__tree_.__end_node_)
  {
    do
    {
      v5 = begin_node->_previousScheduleToUnload.__tree_.__begin_node_;
      if (*(v5 + 12) == 1)
      {
        [v5[2] unloadInstructionGraphNodes];
        *(v5 + 12) = 0;
      }

      isa = begin_node->_effectSchedule.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_effectSchedule.__tree_.__end_node_.__left_;
          v8 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v8);
      }

      begin_node = left;
    }

    while (left != p_end_node);
  }

  effectScheduleLock = self->_effectScheduleLock;
  if (effectScheduleLock)
  {
    (*(effectScheduleLock->var0 + 1))(effectScheduleLock, a2);
  }

  v10.receiver = self;
  v10.super_class = PVEffectScheduler;
  [(PVEffectScheduler *)&v10 dealloc];
}

- (void)resetSchedule:(id)schedule
{
  v27 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  effectScheduleLock = self->_effectScheduleLock;
  v25 = 0;
  HGSynchronizable::Lock(effectScheduleLock);
  begin_node = self->_effectSchedule.__tree_.__begin_node_;
  p_end_node = &self->_effectSchedule.__tree_.__end_node_;
  if (begin_node != &self->_effectSchedule.__tree_.__end_node_)
  {
    do
    {
      std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::__emplace_unique_key_args<HGRef<LoadableInstruction>,HGRef<LoadableInstruction> const&>(&self->_previousScheduleToUnload, begin_node + 4);
      v7 = begin_node[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = v7->__left_;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = begin_node[2];
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }

  std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::destroy(&self->_effectSchedule, self->_effectSchedule.__tree_.__end_node_.__left_);
  self->_effectSchedule.__tree_.__end_node_.__left_ = 0;
  self->_effectSchedule.__tree_.__size_ = 0;
  self->_effectSchedule.__tree_.__begin_node_ = p_end_node;
  self->_lastLoadedEffectSetIterator.__ptr_ = p_end_node;
  self->_loadedFinalInstructions = 0;
  [scheduleCopy instructions];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v10 = v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (v14)
        {
          [*(*(&v20 + 1) + 8 * i) timeRange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        time = range.duration;
        if (CMTimeGetSeconds(&time) > 0.0)
        {
          v15 = HGObject::operator new(0xB0uLL);
          LoadableInstruction::LoadableInstruction(v15, v14, self->_isExporting);
          v17 = v15;
          std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::__emplace_unique_key_args<HGRef<LoadableInstruction>,HGRef<LoadableInstruction> const&>(&self->_effectSchedule, &v17);
          memset(&time, 0, sizeof(time));
          if (v14)
          {
            [(PVVideoCompositionInstruction *)v14 timeRange];
          }

          else
          {
            memset(&range, 0, sizeof(range));
          }

          CMTimeRangeGetEnd(&time, &range);
          *&range.start.value = *&self->_endTime.value;
          range.start.epoch = self->_endTime.epoch;
          v16 = time;
          if (CMTimeCompare(&range.start, &v16) < 0)
          {
            self->_endTime = time;
          }

          if (v17)
          {
            (*(*v17 + 24))(v17);
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }

  if ((v25 & 1) == 0)
  {
    HGSynchronizable::Unlock(effectScheduleLock);
  }
}

- (void)resetSearchPoint
{
  loadQueue = self->_loadQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __37__PVEffectScheduler_resetSearchPoint__block_invoke;
  block[3] = &unk_279AA4DD8;
  block[4] = self;
  dispatch_async(loadQueue, block);
}

- (void)setEffectLoadingRenderContext:(HGRef<PVInstructionGraphContext>)context
{
  effectScheduleLock = self->_effectScheduleLock;
  HGSynchronizable::Lock(effectScheduleLock);
  m_Obj = self->_effectLoadRenderContext.m_Obj;
  v7 = *context.m_Obj;
  if (m_Obj != *context.m_Obj)
  {
    if (m_Obj)
    {
      (*(*m_Obj + 24))(self->_effectLoadRenderContext.m_Obj);
      v7 = *context.m_Obj;
    }

    self->_effectLoadRenderContext.m_Obj = v7;
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }
  }

  HGSynchronizable::Unlock(effectScheduleLock);
}

- (void)loadEffects:(id *)effects playerRate:(float)rate
{
  if (rate != 0.0 || (v6 = atomic_load(&self->_isScheduling), (v6 & 1) == 0))
  {
    v11 = v4;
    v12 = v5;
    loadQueue = self->_loadQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *"";
    block[2] = __44__PVEffectScheduler_loadEffects_playerRate___block_invoke;
    block[3] = &unk_279AA57D0;
    block[4] = self;
    v9 = *effects;
    v10 = rate == 0.0;
    dispatch_async(loadQueue, block);
  }
}

HGSynchronizable *__44__PVEffectScheduler_loadEffects_playerRate___block_invoke(uint64_t a1, const char *a2)
{
  if (HGLogger::getLevel("PVSignPost", a2) >= 1)
  {
    kdebug_trace();
  }

  v3 = *(*(a1 + 32) + 112);
  v26[1] = v3;
  v27 = 0;
  HGSynchronizable::Lock(v3);
  atomic_store(1u, (*(a1 + 32) + 104));
  v4 = *(a1 + 32);
  if (!*(v4 + 24))
  {
    goto LABEL_49;
  }

  time1 = *(a1 + 40);
  [v4 releaseAllUnusedEffects:&time1];
  v5 = *(a1 + 32);
  if ((*(a1 + 64) & 1) != 0 || (v6 = *(v5 + 56), v6 == (v5 + 16)))
  {
    v6 = *(v5 + 8);
LABEL_21:
    *(v5 + 88) = 0;
    goto LABEL_22;
  }

  if (*(v5 + 88))
  {
    goto LABEL_21;
  }

  v7 = [v5 previousLoadedIteratorIsLastInList];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  if (!v7)
  {
    goto LABEL_21;
  }

  if ((v5 + 16) != v6)
  {
    do
    {
      v8 = *(v6 + 4);
      v9 = *(v5 + 120);
      v26[0] = v9;
      if (v9)
      {
        (*(*v9 + 16))(v9);
      }

      LoadableInstruction::LoadInstructionGraphNodes(v8, v26);
      if (v26[0])
      {
        (*(*v26[0] + 24))(v26[0]);
      }

      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v5 = *(a1 + 32);
      v6 = v11;
    }

    while (v11 != (v5 + 16));
  }

  *(v5 + 88) = 1;
  *(*(a1 + 32) + 56) = *(*(a1 + 32) + 8);
  v6 = *(*(a1 + 32) + 8);
LABEL_22:
  v13 = *(a1 + 32);
  if (v6 == v13 + 16)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(v6 + 4);
    if (v15)
    {
      (*(*v15 + 16))(*(v6 + 4));
    }

    time1 = *(a1 + 40);
    time2 = *(*(a1 + 32) + 64);
    if (!LoadableInstruction::ShouldLoadForTime(v15, &time1, &time2, *(a1 + 64)))
    {
      if (*(a1 + 64))
      {
        v18 = 76;
      }

      else
      {
        v18 = 28;
      }

      v19 = v15 + v18;
      v20 = *v19;
      time1.epoch = *(v19 + 2);
      *&time1.value = v20;
      time2 = *(a1 + 40);
      v17 = CMTimeCompare(&time1, &time2) != 1;
LABEL_36:
      (*(*v15 + 24))(v15);
      goto LABEL_37;
    }

    v16 = *(*(a1 + 32) + 120);
    v25 = v16;
    if (v16)
    {
      (*(*v16 + 16))(v16);
    }

    LoadableInstruction::LoadInstructionGraphNodes(v15, &v25);
    if (v25)
    {
      (*(*v25 + 24))(v25);
    }

    *(*(a1 + 32) + 56) = v6;
    v17 = 1;
    if (v15)
    {
      goto LABEL_36;
    }

LABEL_37:
    objc_autoreleasePoolPop(v14);
    if (!v17)
    {
      break;
    }

    v21 = *(v6 + 1);
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = *(v6 + 2);
        v12 = *v22 == v6;
        v6 = v22;
      }

      while (!v12);
    }

    v13 = *(a1 + 32);
    v6 = v22;
    if (v22 == v13 + 16)
    {
      goto LABEL_46;
    }
  }

  v13 = *(a1 + 32);
LABEL_46:
  [v13 unloadInstructionFromPreviousSchedule];
  if (HGLogger::getLevel("PVSignPost", v23) >= 1)
  {
    kdebug_trace();
  }

  v4 = *(a1 + 32);
LABEL_49:
  atomic_store(0, (v4 + 104));
  return HGSynchronizable::Unlock(v3);
}

- (void)releaseAllUnusedEffects:(id *)effects
{
  begin_node = self->_effectSchedule.__tree_.__begin_node_;
  p_end_node = &self->_effectSchedule.__tree_.__end_node_;
  if (begin_node != &self->_effectSchedule.__tree_.__end_node_)
  {
    v7 = 0;
    do
    {
      v8 = begin_node->_previousScheduleToUnload.__tree_.__begin_node_;
      v14 = *effects;
      endTime = self->_endTime;
      if (LoadableInstruction::ShouldReleaseForTime(v8, &v14, &endTime))
      {
        v9 = begin_node->_previousScheduleToUnload.__tree_.__begin_node_;
        if (*(v9 + 12) == 1)
        {
          [v9[2] unloadInstructionGraphNodes];
          *(v9 + 12) = 0;
        }

        v7 = 1;
      }

      isa = begin_node->_effectSchedule.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_effectSchedule.__tree_.__end_node_.__left_;
          v12 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v12);
      }

      begin_node = left;
    }

    while (left != p_end_node);
    if (v7)
    {
      [PVInstructionGraphImageSourceNode purgeBitmapCache:0];
    }
  }
}

- (void)unloadInstructionFromPreviousSchedule
{
  p_previousScheduleToUnload = &self->_previousScheduleToUnload;
  begin_node = self->_previousScheduleToUnload.__tree_.__begin_node_;
  p_end_node = &self->_previousScheduleToUnload.__tree_.__end_node_;
  if (begin_node != &self->_previousScheduleToUnload.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node->_previousScheduleToUnload.__tree_.__begin_node_;
      if (*(v6 + 12) == 1)
      {
        [v6[2] unloadInstructionGraphNodes];
        *(v6 + 12) = 0;
      }

      isa = begin_node->_effectSchedule.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_effectSchedule.__tree_.__end_node_.__left_;
          v9 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v9);
      }

      begin_node = left;
    }

    while (left != p_end_node);
  }

  std::__tree<HGRef<LoadableInstruction>,LoadableInstructionCompare,std::allocator<HGRef<LoadableInstruction>>>::destroy(p_previousScheduleToUnload, self->_previousScheduleToUnload.__tree_.__end_node_.__left_);
  self->_previousScheduleToUnload.__tree_.__end_node_.__left_ = 0;
  self->_previousScheduleToUnload.__tree_.__size_ = 0;
  self->_previousScheduleToUnload.__tree_.__begin_node_ = p_end_node;
}

- (BOOL)loadTimeIsNearEnd:(id *)end
{
  memset(&v11, 0, sizeof(v11));
  v5 = +[PVDeviceCharacteristics isLowMemDevice];
  v6 = 0.9;
  if (!v5)
  {
    v6 = 3.0;
  }

  CMTimeMakeWithSeconds(&v11, v6, 30);
  memset(&v10, 0, sizeof(v10));
  lhs = *end;
  endTime = v11;
  CMTimeAdd(&v10, &lhs, &endTime);
  lhs = v10;
  endTime = self->_endTime;
  return CMTimeCompare(&lhs, &endTime) >= 0;
}

- (BOOL)previousLoadedIteratorIsLastInList
{
  ptr = self->_lastLoadedEffectSetIterator.__ptr_;
  v3 = *(ptr + 1);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = v3->__left_;
    }

    while (v3);
  }

  else
  {
    do
    {
      v4 = *(ptr + 2);
      v5 = v4->__left_ == ptr;
      ptr = v4;
    }

    while (!v5);
  }

  return v4 == &self->_effectSchedule.__tree_.__end_node_;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  *(self + 15) = 0;
  return self;
}

@end