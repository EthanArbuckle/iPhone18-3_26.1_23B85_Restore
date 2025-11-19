void re::StackScratchAllocator::FreePersistentBlocks(re::StackScratchAllocator *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
  {
    for (i = 0; i < v7; ++i)
    {
      v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = re::globalAllocators(v1);
        v1 = (*(*v6[2] + 40))(v6[2], v5);
        v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      }

      *(v4 + 8) = 0;
      v7 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
    }
  }

  atomic_store(0, &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

re::StackScratchAllocator *re::StackScratchAllocator::StackScratchAllocator(re::StackScratchAllocator *this)
{
  *(this + 16) = 0;
  *this = &unk_2873F3A70;
  *(this + 1) = "Thread-local Scratch Allocator";
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 108) = 0x7FFFFFFFLL;
  {
    v7 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
    _tlv_atexit(re::StackScratchAllocator::Root::~Root, v7);
  }

  v3 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
  v4 = *v3;
  if (*v3)
  {
    *(this + 6) = v4;
    *(this + 24) = *(v4 + 24);
    v5 = v3[1];
  }

  else
  {
    v5 = v3[1];
    if (!v5)
    {
      goto LABEL_6;
    }

    v8 = v5 + *(v5 + 8);
    *(this + 3) = v5 + 16;
    *(this + 4) = v8;
  }

  *(this + 5) = v5;
LABEL_6:
  *v3 = this;
  *(this + 7) = v3;
  return this;
}

void re::StackScratchAllocator::Root::~Root(re::StackScratchAllocator::Root *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = re::globalAllocators(v2);
    (*(*v4[2] + 40))(v4[2], v3);
    v6 = &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount;
    if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
    {
      v8 = 0;
      v9 = re::StackScratchAllocator::s_rootsWithPersistentBlocks;
      while (re::StackScratchAllocator::s_rootsWithPersistentBlocks[v8] != this)
      {
        ++v8;
        v10 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
        if (v8 >= v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Can't find allocated block", "!Unreachable code", "~Root", 193);
      _os_crash();
      __break(1u);
    }

    atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = atomic_load(v6);
    v12 = v9[v8];
    v9[v8] = v9[v11];
    v9[v11] = v12;
  }

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

void re::StackScratchAllocator::~StackScratchAllocator(re::StackScratchAllocator *this)
{
  v1 = this;
  *this = &unk_2873F3A70;
  v2 = *(this + 7);
  v3 = v2 + 1;
  v4 = v2[1];
  for (i = *(this + 5); v4 != i && *v4; i = *(v1 + 5))
  {
    *v3 = *v4;
    v6 = re::globalAllocators(this);
    this = (*(*v6[2] + 40))(v6[2], v4);
    v2 = *(v1 + 7);
    v3 = v2 + 1;
    v4 = v2[1];
  }

  *v2 = *(v1 + 6);
  re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v1 + 9);

  re::Allocator::~Allocator(v1);
}

{
  re::StackScratchAllocator::~StackScratchAllocator(this);

  JUMPOUT(0x266708EC0);
}

re::StackScratchAllocator **re::StackScratchAllocator::alloc(re::StackScratchAllocator ***this, uint64_t a2, unint64_t a3)
{
  if (*this[7] != this)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to allocate from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "alloc", 93);
    _os_crash();
    __break(1u);
LABEL_7:
    re::StackScratchAllocator::growAndAlign(v3, v4, a3);
    result = v3[3];
    goto LABEL_5;
  }

  v4 = a2;
  v3 = this;
  if (a3 <= 1)
  {
    a3 = 1;
  }

  v5 = this[4];
  result = ((this[3] + a3 - 1) & -a3);
  v3[3] = result;
  if (result + a2 > v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v3[3] = (result + v4);
  return result;
}

void re::StackScratchAllocator::growAndAlign(re::StackScratchAllocator *this, uint64_t a2, uint64_t a3)
{
  if ((a3 + a2) <= 0x2000)
  {
    v5 = 0x4000;
  }

  else
  {
    v5 = a3 + a2 + 0x4000;
  }

  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], v5, 0);
  v8 = *(this + 7);
  *v7 = *(v8 + 8);
  v7[1] = v5;
  if (*(this + 3))
  {
    goto LABEL_7;
  }

  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  add = atomic_fetch_add(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount, 1uLL);
  if (add < 0x100)
  {
    re::StackScratchAllocator::s_rootsWithPersistentBlocks[add] = *(this + 7);
    std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
    v8 = *(this + 7);
LABEL_7:
    *(v8 + 8) = v7;
    *(this + 3) = (v7 + a3 + 15) & -a3;
    *(this + 4) = v7 + v5;
    return;
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < MAX_THREADS", "growAndAlign", 161);
  _os_crash();
  __break(1u);
}

uint64_t re::StackScratchAllocator::free(uint64_t this, uint64_t a2)
{
  if (**(this + 56) != this)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to free from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "free", 124, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

double re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 6;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t *re::globalAllocators(re *this)
{
  {
    if (v2)
    {
      re::globalAllocators(void)::s_instance = &unk_2873F3B10;
      byte_2810C54A0 = 0;
      unk_2810C54B0 = 0u;
      unk_2810C54C0 = 0u;
      re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
    }
  }

  return &re::globalAllocators(void)::s_instance;
}

void anonymous namespace::internalSystemAllocator(_anonymous_namespace_ *this)
{
  {
    byte_2810C54E0 = 0;
    *algn_2810C54D8 = "System allocator";
  }
}

_anonymous_namespace_ *re::initGlobalAllocators(re *this)
{
  result = re::globalAllocators(this);
  if ((byte_2810C54A0 & 1) == 0)
  {
    re::globalAllocators(result);

    return re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
  }

  return result;
}

_anonymous_namespace_ *re::GlobalAllocators::init(_anonymous_namespace_ *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v1 = this;
    re::globalMemoryTracker(this);
    if ((re::globalMemoryTracker(void)::s_instance & 1) == 0)
    {
      qword_2810C5460[0] = *(v1 + 2);
      re::DynamicArray<re::Allocator const*>::setCapacity(qword_2810C5460, 0x400uLL);
      ++dword_2810C5478;
      re::globalMemoryTracker(void)::s_instance = 1;
    }

    re::MemoryTracker::track(&re::globalMemoryTracker(void)::s_instance, *(v1 + 2));
    v2 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v3 = re::Allocator::Allocator(v2, "SIMD-aligned allocator", 1);
    *v3 = &unk_2873F3BB0;
    *(v3 + 3) = 16;
    *(v1 + 3) = v3;
    v4 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v5 = re::Allocator::Allocator(v4, "Cache-aligned allocator", 1);
    *v5 = &unk_2873F3BB0;
    *(v5 + 3) = 128;
    *(v1 + 4) = v5;
    v6 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v7 = re::Allocator::Allocator(v6, "TLB-aligned allocator", 1);
    *v7 = &unk_2873F3BB0;
    *(v7 + 3) = 0x4000;
    *(v1 + 5) = v7;
    v8 = (*(**(v1 + 2) + 32))(*(v1 + 2), 5304, 8);
    *v8 = 0;
    *(v8 + 88) = 0;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 68) = 0u;
    *(v8 + 108) = 0x1FFFFFFFFLL;
    *(v8 + 120) = 0;
    *(v8 + 136) = 0;
    *(v8 + 144) = 0;
    *(v8 + 128) = 0;
    *(v8 + 152) = 0;
    bzero((v8 + 160), 0x1418uLL);
    *(v1 + 6) = v8;
    this = re::PerFrameAllocatorManager::init(v8);
    *(v1 + 8) = 1;
  }

  return this;
}

void re::deinitGlobalAllocators(re *this)
{
  v1 = re::globalAllocators(this);
  if (byte_2810C54A0 == 1)
  {
    re::globalAllocators(v1);

    re::GlobalAllocators::deinit(&re::globalAllocators(void)::s_instance);
  }
}

void re::GlobalAllocators::deinit(re **this)
{
  if (*(this + 8) == 1)
  {
    re::StackScratchAllocator::FreePersistentBlocks(this);
    re::globalMemoryTracker(v2);
    re::PerFrameAllocatorManager::deinit(this[6]);
    v3 = this[2];
    v4 = this[6];
    if (v4)
    {
      v5 = 5120;
      do
      {
        *(v4 + v5 + 128) = 0;
        v5 -= 40;
      }

      while (v5);
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = *(v4 + 20);
        if (v7)
        {
          v8 = *(v4 + 18);
          if (v8)
          {
            v9 = 88 * v8;
            v10 = v7 + 48;
            do
            {
              re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v10);
              re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v10 - 40);
              v10 += 88;
              v9 -= 88;
            }

            while (v9);
            v6 = *(v4 + 16);
            v7 = *(v4 + 20);
          }

          (*(*v6 + 40))(v6, v7);
        }

        *(v4 + 20) = 0;
        *(v4 + 17) = 0;
        *(v4 + 18) = 0;
        *(v4 + 16) = 0;
        ++*(v4 + 38);
      }

      re::DataArray<re::PerFrameAllocatorImpl>::deinit(v4 + 56);
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v4 + 56);
      v11 = *(v4 + 4);
      if (v11)
      {
        if (*(v4 + 5))
        {
          (*(*v11 + 40))(v11, *(v4 + 6));
          *(v4 + 5) = 0;
          *(v4 + 6) = 0;
        }

        *(v4 + 4) = 0;
      }

      v12 = *(v4 + 1);
      if (v12)
      {
        if (*(v4 + 2))
        {
          (*(*v12 + 40))(v12, *(v4 + 3));
          *(v4 + 2) = 0;
          *(v4 + 3) = 0;
        }

        *(v4 + 1) = 0;
      }

      (*(*v3 + 40))(v3, v4);
      v3 = this[2];
    }

    this[6] = 0;
    v13 = this[5];
    if (v13)
    {
      (**v13)(this[5]);
      (*(*v3 + 40))(v3, v13);
      v3 = this[2];
    }

    this[5] = 0;
    v14 = this[4];
    if (v14)
    {
      (**v14)(this[4]);
      (*(*v3 + 40))(v3, v14);
      v3 = this[2];
    }

    this[4] = 0;
    v15 = this[3];
    if (v15)
    {
      (**v15)(this[3]);
      (*(*v3 + 40))(v3, v15);
      v3 = this[2];
    }

    this[3] = 0;
    re::MemoryTracker::untrack(&re::globalMemoryTracker(void)::s_instance, v3);
    if (re::globalMemoryTracker(void)::s_instance == 1)
    {
      v16 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(qword_2810C5460);
      re::globalMemoryTracker(void)::s_instance = 0;
    }

    *(this + 8) = 0;
  }
}

void re::GlobalAllocators::~GlobalAllocators(re **this)
{
  *this = &unk_2873F3B10;
  re::GlobalAllocators::deinit(this);
}

{
  *this = &unk_2873F3B10;
  re::GlobalAllocators::deinit(this);

  JUMPOUT(0x266708EC0);
}

char *re::globalMemoryTracker(re *this)
{
  {
    if (v2)
    {
      re::globalMemoryTracker(void)::s_instance = 0;
      qword_2810C5480 = 0;
      *&algn_2810C5459[3] = 0u;
      unk_2810C546C = 0u;
      re::DynamicArray<re::Allocator const*>::setCapacity(qword_2810C5460, 0x400uLL);
      ++dword_2810C5478;
      re::globalMemoryTracker(void)::s_instance = 1;
    }
  }

  return &re::globalMemoryTracker(void)::s_instance;
}

uint64_t re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    if (*(a1 + 32))
    {
      result = (*(*result + 40))(result);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::deinit(uint64_t result)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::PerFrameAllocatorImpl>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v1);
    *(v1 + 11) = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double re::DataArray<re::PerFrameAllocatorImpl>::clear(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::DataArrayIterator(v12, a1, 0);
  if (*&v12[0] != a1 || DWORD2(v12[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(v12);
      re::DataArray<re::PerFrameAllocatorImpl>::destroy(a1, v3);
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(v12);
    }

    while (*&v12[0] != a1 || WORD4(v12[0]) != 0xFFFF || WORD5(v12[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v12, 0, sizeof(v12));
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (***re::DataArray<re::PerFrameAllocatorImpl>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v8 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 16;
  result = re::DataArray<re::PerFrameAllocatorImpl>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(unsigned __int16 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  if (*(*a1 + 16) <= v1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return (v1 << 16) | ((*(*(*(*a1 + 32) + 16 * v1 + 8) + 4 * a1[4]) & 0xFFFFFF) << 32) | a1[4];
}

uint64_t re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::removeAt(uint64_t result, unint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2 - 1;
  if (v2 - 1 > a2)
  {
    *(*(result + 32) + 16 * a2) = *(*(result + 32) + 16 * v2 - 16);
    v3 = *(result + 16) - 1;
  }

  *(result + 16) = v3;
  ++*(result + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::DataArrayIterator(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  if ((a3 & 1) != 0 || !*(a2 + 40))
  {
    *(a1 + 8) = -1;
  }

  else
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(a1);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

_WORD *re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(_WORD *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  v2 = *(*result + 16);
  v3 = v2 - 1;
  v4 = result[4];
  v5 = result[5];
  while (1)
  {
    ++v4;
    if (v5 < v3 && *(v1 + 44) <= v4)
    {
      v4 = 0;
      result[5] = ++v5;
    }

    if (v5 == v3 && *(v1 + 48) <= v4)
    {
      break;
    }

    if (v2 <= v5)
    {
      result[4] = v4;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(*(v1 + 32) + 16 * v5 + 8) + 4 * v4))
    {
      result[4] = v4;
      goto LABEL_11;
    }
  }

  *(result + 2) = -1;
LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 184 * a2;
  }

  else
  {
    return 0;
  }
}

void re::StringID::init(re::StringID *this, re::Allocator *a2, const char *a3, size_t a4)
{
  if (!a3)
  {
    re::StringID::invalid(v14);
    v12 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    if ((v14[0] & 1) == 0)
    {
      return;
    }

LABEL_12:
    return;
  }

  if (!a4)
  {
    v14[0] = 0;
    v14[1] = "";
    v13 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a3;
  v8 = a4 - 1;
  if (a4 != 1)
  {
    v9 = a3 + 1;
    do
    {
      v10 = *v9++;
      v7 = v10 - v7 + 32 * v7;
      --v8;
    }

    while (v8);
  }

  *this = *this & 1 | (2 * v7);
  v11 = (*(*a2 + 32))(a2, a4 + 1, 0);
  memcpy(v11, a3, a4);
  *(v11 + a4) = 0;
  *this |= 1uLL;
  *(this + 1) = v11;
}

unint64_t *re::StringID::StringID(unint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  if (*a2)
  {
    v5 = a2[1];
    v6 = strlen(v5);
    memcpy(v7, v5, v6);
    *(v7 + v6) = 0;
    v8 = *a1 | 1;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v7 = a2[1];
  }

  *a1 = v8;
  a1[1] = v7;
  return a1;
}

void re::StringID::destroyString(re::StringID *this)
{
  if (*this)
  {
    if (*this)
    {
      v2 = *(this + 1);
    }
  }

  *this = 0;
  *(this + 1) = "";
}

unint64_t *re::StringID::operator=(unint64_t *a1, uint64_t *a2)
{
  re::StringID::destroyString(a1);
  v5 = *a2;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  v6 = *a2;
  *a1 = v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  if (v6)
  {
    v7 = a2[1];
    v8 = strlen(v7);
    memcpy(v9, v7, v8);
    *(v9 + v8) = 0;
  }

  else
  {
    v9 = a2[1];
  }

  a1[1] = v9;
  return a1;
}

_anonymous_namespace_ *re::StringID::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = "";
  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = v3;
  *(a1 + 1) = v4;
  if (v5)
  {
  }

  return a1;
}

unint64_t *re::StringID::invalid@<X0>(unint64_t *a1@<X8>)
{
  v3 = a1;
  {
    v3 = a1;
    if (v5)
    {
      re::StringID::invalid(void)::invalid = -2;
      *algn_27FEB7A08 = "";
      v3 = a1;
    }
  }

  return re::StringID::StringID(v3, &re::StringID::invalid(void)::invalid);
}

BOOL re::StringID::operator==(void *a1, void *a2)
{
  if ((*a2 ^ *a1) > 1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return v2 == v3 || strcmp(v2, v3) == 0;
}

re::MallocZoneAllocator *re::MallocZoneAllocator::MallocZoneAllocator(re::MallocZoneAllocator *this, const char *a2, int a3)
{
  *re::Allocator::Allocator(this, a2, a3) = &unk_2873F3B40;
  zone = malloc_create_zone(0, 0);
  *(this + 3) = zone;
  malloc_set_zone_name(zone, a2);
  return this;
}

void re::MallocZoneAllocator::~MallocZoneAllocator(malloc_zone_t **this)
{
  *this = &unk_2873F3B40;
  malloc_destroy_zone(this[3]);
  this[3] = 0;

  re::Allocator::~Allocator(this);
}

{
  *this = &unk_2873F3B40;
  malloc_destroy_zone(this[3]);
  this[3] = 0;
  re::Allocator::~Allocator(this);

  JUMPOUT(0x266708EC0);
}

void *re::MallocZoneAllocator::alloc(malloc_zone_t **this, size_t size, unint64_t a3)
{
  v3 = 16;
  if (a3 > 0x10)
  {
    v3 = a3;
  }

  return malloc_type_zone_memalign(this[3], (v3 + 7) & 0xFFFFFFFFFFFFFFF8, size, 0xCBDF958BuLL);
}

void re::MallocZoneAllocator::free(malloc_zone_t **this, void *a2)
{
  if (a2)
  {
    malloc_zone_free(this[3], a2);
  }
}

void re::MemoryTracker::track(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::Allocator const*>::add(&this[2]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 1);
}

void *re::DynamicArray<re::Allocator const*>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Allocator const*>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::MemoryTracker::untrack(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::Allocator const*>::removeStable(&this[2]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 1);
}

uint64_t re::DynamicArray<re::Allocator const*>::removeStable(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[2];
  if (v3)
  {
    v4 = 8 * v3;
    for (i = a1[4]; *i != *a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = a1[4];
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::DynamicArray<re::Allocator const*>::removeStableAt(a1, (i - v2) >> 3);
  return 1;
}

void *re::DynamicArray<re::Allocator const*>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Allocator const*>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Allocator const*>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Allocator const*>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Allocator const*>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Allocator const*>::removeStableAt(void *result, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = result[2];
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = result;
  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v5 = result[4];
    result = (v5 + 8 * a2);
    v6 = (v5 + 8 * v2);
    if (v6 != (result + 1))
    {
      result = memmove(result, result + 1, v6 - (result + 1));
      v4 = v3[2] - 1;
    }
  }

  v3[2] = v4;
  ++*(v3 + 6);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

id *re::ObjCObject::operator=(id *location, id *a2)
{
  if (location != a2)
  {
    objc_storeStrong(location, *a2);
  }

  return location;
}

void **re::ObjCObject::operator=(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (*a1 != v3)
  {
    *a1 = v3;

    v3 = 0;
  }

  return a1;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  re::DynamicString::setCapacity(this, 0);
  return this;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const char *__s, re::Allocator *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  v6 = strlen(__s);
  if (v6)
  {
    v7 = v6;
    *this = a3;
    re::DynamicString::setCapacity(this, v6 + 1);
    re::DynamicString::assign(this, __s, v7);
  }

  else
  {
    *this = a3;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::assign(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = *(this + 3);
  }

  else
  {
    v7 = 23;
  }

  if (v7 <= __len)
  {
    re::DynamicString::growCapacity(this, __len + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v8 = *(this + 2);
  }

  else
  {
    v8 = this + 9;
  }

  result = memmove(v8, __src, __len);
  if (*(this + 8))
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  v10[__len] = 0;
  if (*(this + 8))
  {
    *(this + 1) = (2 * __len) | 1;
  }

  else
  {
    *(this + 8) = 2 * __len;
  }

  return result;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const re::DynamicString *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    *this = *a2;
    re::DynamicString::setCapacity(this, v5 + 1);
    re::DynamicString::copy(this, a2);
  }

  else
  {
    v6 = *a2;
    if (!*a2)
    {
    }

    *this = v6;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::copy(void *this, const re::DynamicString *a2)
{
  v2 = this;
  v3 = *(a2 + 1);
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    v4 = v3 >> 1;
  }

  v5 = this[1];
  if (v4)
  {
    if (v5)
    {
      v7 = this[3];
    }

    else
    {
      v7 = 23;
    }

    if (v4 >= v7)
    {
      re::DynamicString::setCapacity(this, v4 + 1);
      v5 = v2[1];
    }

    if (v5)
    {
      v9 = v2[2];
    }

    else
    {
      v9 = v2 + 9;
    }

    v10 = *(a2 + 1);
    if (v10)
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = a2 + 9;
    }

    v12 = v10 >> 1;
    v13 = v10 >> 1;
    if (*(a2 + 1))
    {
      v13 = v12;
    }

    this = memmove(v9, v11, v13 + 1);
    v14 = *(a2 + 1);
    if (v2[1])
    {
      v15 = 254;
      if (v14)
      {
        v15 = -2;
      }

      v2[1] = v15 & v14 | 1;
    }

    else
    {
      *(v2 + 8) = v14 & 0xFE;
    }
  }

  else
  {
    if (v5)
    {
      this[1] = 1;
      v8 = this[2];
    }

    else
    {
      *(this + 8) = 0;
      v8 = this + 9;
    }

    *v8 = 0;
  }

  return this;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    if (!*this)
    {
      re::DynamicString::setCapacity(this, v3 + 1);
    }

    re::DynamicString::assign(this, *a2, v3);
  }

  else
  {
    if (*(this + 8))
    {
      *(this + 1) = 1;
      v5 = *(this + 2);
    }

    else
    {
      *(this + 8) = 0;
      v5 = this + 9;
    }

    *v5 = 0;
  }

  return this;
}

void *re::DynamicString::setCapacity(void *this, size_t __n)
{
  v3 = this;
  v4 = this[1];
  if (__n <= 0x17)
  {
    if ((v4 & 1) == 0)
    {
      return this;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    v5 = 0;
    v6 = this[3];
    goto LABEL_7;
  }

  v5 = 1;
  v6 = 23;
LABEL_7:
  if (v6 != __n)
  {
    v7 = v5 ? v4 >> 1 : v4 >> 1;
    if (v7 < __n)
    {
      if (__n > 0x16)
      {
        v10 = *this;
        this = (*(**v3 + 32))();
        if (!this)
        {
          re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "newBuffer", "setCapacity", 455);
          this = _os_crash();
          __break(1u);
          return this;
        }

        v12 = this;
        *this = 0;
        v13 = v3[1];
        v14 = v13 >> 1;
        if ((v13 & 1) == 0)
        {
          v14 = v13 >> 1;
        }

        if (v14)
        {
          if (v13)
          {
            v15 = v3[2];
          }

          else
          {
            v15 = v3 + 9;
          }

          this = memcpy(this, v15, v14 + 1);
          v13 = v3[1];
        }

        if (v13)
        {
          this = (*(**v3 + 40))(*v3, v3[2]);
          v16 = v3[1];
        }

        else
        {
          v16 = v13 & 0xFE;
        }

        v3[2] = v12;
        v3[3] = __n;
        v9 = v16 | 1;
      }

      else
      {
        v8 = this[2];
        *(this + 8) = v4;
        memcpy(this + 9, v8, __n);
        this = (*(**v3 + 40))(*v3, v8);
        v9 = v3[1] & 0xFFFFFFFFFFFFFFFELL;
      }

      v3[1] = v9;
    }
  }

  return this;
}

double re::DynamicString::deinit(re::DynamicString *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 8))
    {
      (*(*v2 + 40))(v2, *(this + 2));
    }

    result = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  return result;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, re::DynamicString *a2)
{
  if (this == a2)
  {
    return this;
  }

  v4 = *a2;
  if (!*this)
  {
    if (!v4)
    {
      return this;
    }

    v6 = *(a2 + 1);
    if (v6)
    {
      v7 = v6 >> 1;
    }

    else
    {
      v7 = v6 >> 1;
    }

    *this = v4;
    re::DynamicString::setCapacity(this, v7 + 1);
LABEL_11:
    re::DynamicString::copy(this, a2);
    return this;
  }

  if (v4)
  {
    goto LABEL_11;
  }

  if (*(this + 8))
  {
    *(this + 1) = 1;
    v5 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v5 = this + 9;
  }

  *v5 = 0;
  return this;
}

{
  if (this != a2)
  {
    v3 = *this;
    v4 = *a2;
    if (*this)
    {
      v5 = v3 == v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *this = v4;
      *a2 = v3;
      v6 = *(this + 3);
      *(this + 3) = *(a2 + 3);
      *(a2 + 3) = v6;
      v8 = *(this + 1);
      v7 = *(this + 2);
      v9 = *(a2 + 2);
      *(this + 1) = *(a2 + 1);
      *(this + 2) = v9;
      *(a2 + 1) = v8;
      *(a2 + 2) = v7;
    }

    else if (v4)
    {
      re::DynamicString::copy(this, a2);
    }

    else
    {
      if (*(this + 8))
      {
        *(this + 1) = 1;
        v10 = *(this + 2);
      }

      else
      {
        *(this + 8) = 0;
        v10 = this + 9;
      }

      *v10 = 0;
    }
  }

  return this;
}

BOOL re::DynamicString::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) == 0;
}

void *re::DynamicString::append(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  v8 = v7 + __len;
  if (v6)
  {
    v9 = *(this + 3);
  }

  else
  {
    v9 = 23;
  }

  if (v8 >= v9)
  {
    re::DynamicString::growCapacity(this, v8 + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  if (v6)
  {
    v11 = v6 >> 1;
  }

  else
  {
    v11 = v6 >> 1;
  }

  result = memmove(&v10[v11], __src, __len);
  v13 = *(this + 1);
  if (v13)
  {
    v14 = v13 + 2 * __len;
    *(this + 1) = v14;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 8) = v13 + 2 * __len;
    v14 = *(this + 1);
    if (v14)
    {
LABEL_16:
      v15 = *(this + 2);
      goto LABEL_19;
    }
  }

  v15 = this + 9;
LABEL_19:
  if (v14)
  {
    v16 = v14 >> 1;
  }

  else
  {
    v16 = v14 >> 1;
  }

  v15[v16] = 0;
  return result;
}

void *re::DynamicString::growCapacity(void *this, size_t a2)
{
  if (this[1])
  {
    v3 = this[3];
    if (v3 >= a2)
    {
      return this;
    }

    v2 = 2 * v3;
  }

  else
  {
    if (a2 <= 0x17)
    {
      return this;
    }

    v2 = 64;
  }

  if (v2 > a2)
  {
    a2 = v2;
  }

  return re::DynamicString::setCapacity(this, a2);
}

uint64_t re::DynamicString::vappendf(re::DynamicString *this, const char *__format, va_list a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v5 >> 1;
    v8 = *(this + 3);
    v7 = (*(this + 2) + (v5 >> 1));
  }

  else
  {
    v6 = v5 >> 1;
    v7 = this + v6 + 9;
    v8 = 23;
  }

  result = vsnprintf(v7, v8 - v6, __format, a3);
  v10 = *(this + 1);
  if ((result & 0x80000000) == 0)
  {
    v11 = v10 >> 1;
    v12 = v10 >> 1;
    if (v10)
    {
      v12 = v10 >> 1;
    }

    v13 = v12 + result;
    if (v10)
    {
      if (v13 >= *(this + 3))
      {
        v14 = *(this + 2);
        if (!v14)
        {
LABEL_16:
          re::DynamicString::growCapacity(this, result + v11 + 1);
          v17 = *(this + 1);
          if (v17)
          {
            v18 = v17 >> 1;
            v20 = *(this + 3);
            v19 = (*(this + 2) + (v17 >> 1));
          }

          else
          {
            v18 = v17 >> 1;
            v19 = this + v18 + 9;
            v20 = 23;
          }

          result = vsnprintf(v19, v20 - v18, __format, a3);
          goto LABEL_25;
        }

LABEL_14:
        v14[v12] = 0;
        v16 = *(this + 1);
        v11 = v16 >> 1;
        if ((v16 & 1) == 0)
        {
          v11 = v16 >> 1;
        }

        goto LABEL_16;
      }
    }

    else if (v13 >= 0x17)
    {
      v14 = this + 9;
      goto LABEL_14;
    }

LABEL_25:
    v22 = *(this + 1);
    if (v22)
    {
      *(this + 1) = v22 + 2 * result;
    }

    else
    {
      *(this + 8) = v22 + 2 * result;
    }

    return result;
  }

  if (v10)
  {
    v15 = *(this + 2);
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    v15 = this + 9;
  }

  if (v10)
  {
    v21 = v10 >> 1;
  }

  else
  {
    v21 = v10 >> 1;
  }

  v15[v21] = 0;
  return result;
}

uint64_t re::DynamicString::vassignf(re::DynamicString *this, const char *__format, va_list a3)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v3 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v3 = this + 9;
  }

  *v3 = 0;
  return re::DynamicString::vappendf(this, __format, a3);
}

void *re::DynamicString::resize(void *this, unint64_t a2, int a3)
{
  v3 = this[1];
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4 != a2)
  {
    v7 = this;
    this = re::DynamicString::growCapacity(this, a2 + 1);
    v8 = v7[1];
    v9 = v8 >> 1;
    if ((v8 & 1) == 0)
    {
      v9 = v8 >> 1;
    }

    if (a2 > v9)
    {
      if (v8)
      {
        v10 = v7[2];
      }

      else
      {
        v10 = v7 + 9;
      }

      this = memset(&v10[v9], a3, a2 - v9);
      v8 = v7[1];
    }

    if (v8)
    {
      v11 = v7[2];
    }

    else
    {
      v11 = v7 + 9;
    }

    v11[a2] = 0;
    if (v7[1])
    {
      v7[1] = (2 * a2) | 1;
    }

    else
    {
      *(v7 + 8) = 2 * a2;
    }
  }

  return this;
}

void *re::DynamicString::substr@<X0>(re::DynamicString *this@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, re::DynamicString *a4@<X8>)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (v7 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "substr", 610, a2, v7);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (v7 - a2 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v7 - a2;
    }

    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    re::DynamicString::setCapacity(a4, 0);
    *a4 = *this;
    re::DynamicString::setCapacity(a4, v9);
    if (*(this + 8))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = this + 9;
    }

    return re::DynamicString::assign(a4, &v10[a2], v9);
  }

  return result;
}

uint64_t re::DynamicString::rfind@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 8);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    return re::DynamicString::rfind(this, a2, v4 - 1, a3);
  }

  *a3 = 0;
  return this;
}

uint64_t re::DynamicString::rfind@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 <= a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset < size()", "rfind", 667, a3, v5);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = *(this + 16);
    }

    else
    {
      v6 = this + 9;
    }

    v7 = this + 9;
    v8 = a3 + v6;
    v9 = -(a3 + v6);
    v10 = v8 + 1;
    while (*(v10 - 1) != a2)
    {
      v11 = this + 9;
      if (v4)
      {
        v11 = *(this + 16);
      }

      ++v9;
      if (--v10 == v11)
      {
        *a4 = 0;
        return this;
      }
    }

    if (v4)
    {
      v7 = *(this + 16);
    }

    *a4 = 1;
    *(a4 + 8) = -(v7 + v9);
  }

  return this;
}

uint64_t re::DynamicString::format@<X0>(re::DynamicString *this@<X0>, re::DynamicString *a2@<X8>, ...)
{
  va_start(va, a2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);
  return re::DynamicString::vassignf(a2, this, va);
}

uint64_t *re::foundationCoreLogObjects(re *this)
{
  {
    re::foundationCoreLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Core");
  }

  return &re::foundationCoreLogObjects(void)::logObjects;
}

uint64_t re::internal::enableSignposts(re::internal *this, unsigned int a2)
{
  {
    v4 = a2;
    v5 = this;
    LOBYTE(a2) = v4;
    LOBYTE(this) = v5;
    if (v3)
    {
      re::Defaults::intValue("enableSignposts", v4, v6);
      re::internal::enableSignposts(BOOL,BOOL)::value = v6[0] ^ 1 | (v7 != 0);
      LOBYTE(a2) = v4;
      LOBYTE(this) = v5;
    }
  }

  if (this)
  {
    re::internal::enableSignposts(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableSignposts(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

uint64_t re::internal::enableHighFrequencyNetworkTracing(re::internal *this, unsigned int a2)
{
  {
    v5 = a2;
    v6 = this;
    LOBYTE(a2) = v5;
    LOBYTE(this) = v6;
    if (v3)
    {
      re::Defaults::intValue("enableHighFrequencyNetworkTracing", v5, v7);
      v4 = v7[0];
      if (!v8)
      {
        v4 = 0;
      }

      re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value = v4;
      LOBYTE(a2) = v5;
      LOBYTE(this) = v6;
    }
  }

  if (this)
  {
    re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

void re::Defaults::intValue(re::Defaults *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a3 + 4) = [v4 intValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

id anonymous namespace::getValue(_anonymous_namespace_ *this, const char *a2)
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s", "com.apple.re", this];
  v5 = [v3 objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v7 = [v3 objectForKey:v6];
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v8 = [v4 rangeOfString:@"." options:4];
      v9 = [v4 substringToIndex:v8];
      v10 = [v4 substringFromIndex:v8 + 1];

      if ([(__CFString *)v9 isEqualToString:@"com.apple.re.network.multipeerservice"])
      {

        v9 = @"com.apple.renetwork.multipeerservice";
      }

      v11 = [v3 dictionaryForKey:v9];
      v5 = [v11 objectForKey:v10];

      if (!v5)
      {
        goto LABEL_11;
      }

      v6 = v10;
    }

    v12 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v10 = v6;
LABEL_11:
  }

  return v5;
}

void re::Defaults::BOOLValue(re::Defaults *this@<X0>, const char *a2@<X1>, char *a3@<X8>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    a3[1] = [v4 BOOLValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

void re::Defaults::uintValue(re::Defaults *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a3 + 4) = [v4 unsignedIntValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

void re::AlignedAllocator::~AlignedAllocator(re::AlignedAllocator *this)
{
  *(this + 3) = 0;
  re::Allocator::~Allocator(this);
}

{
  *(this + 3) = 0;
  re::Allocator::~Allocator(this);

  JUMPOUT(0x266708EC0);
}

void *re::AlignedAllocator::alloc(re::AlignedAllocator *this, size_t size)
{
  v2 = *(this + 3) + 7;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, v2 & 0xFFFFFFFFFFFFFFF8, size, 0xAE8B065EuLL);
  result = memptr;
  __dmb(0xBu);
  return result;
}

re::Allocator *re::Allocator::Allocator(re::Allocator *this, const char *a2, int a3)
{
  *this = &unk_2873F3C20;
  *(this + 1) = a2;
  *(this + 16) = a3;
  if (a3)
  {
    v4 = re::globalMemoryTracker(this);
    if (*v4 == 1)
    {
      v5 = re::globalMemoryTracker(v4);
      re::MemoryTracker::track(v5, this);
    }
  }

  return this;
}

void re::Allocator::~Allocator(re::Allocator *this)
{
  *this = &unk_2873F3C20;
  if (*(this + 16) == 1)
  {
    v2 = re::globalMemoryTracker(this);
    if (*v2 == 1)
    {
      v3 = re::globalMemoryTracker(v2);
      re::MemoryTracker::untrack(v3, this);
    }
  }
}

_anonymous_namespace_ *re::PerFrameAllocatorManager::init(_anonymous_namespace_ *this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v1 = *MEMORY[0x277D85DE8];
    return this;
  }

  v2 = this;
  *(v2 + 2) = 16;
  *(v2 + 3) = v3;
  if (!v3)
  {
    goto LABEL_31;
  }

  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v2 + 5) = 16;
  *(v2 + 6) = v5;
  if (!v5)
  {
    goto LABEL_32;
  }

  v7 = 0;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *v2 = 1;
  do
  {
    if (*(v2 + 5) <= v7)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_32:
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    *(*(v2 + 6) + 8 * v7) = 0;
    if (*(v2 + 2) <= v7)
    {
      goto LABEL_30;
    }

    *(*(v2 + 3) + 8 * v7++) = 0;
  }

  while (v7 != 16);
  v8 = *(v2 + 18);
  if (v8 > 0xE)
  {
    if (v8 != 15)
    {
      v13 = 15;
      v14 = 1328;
      do
      {
        v15 = *(v2 + 20) + v14;
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v15 + 40);
        v5 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v15);
        ++v13;
        v14 += 88;
      }

      while (v13 < *(v2 + 18));
      goto LABEL_19;
    }
  }

  else
  {
    if (*(v2 + 17) > 0xEuLL || (v5 = re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(v2 + 16), v8 = *(v2 + 18), v8 <= 0xE))
    {
      v9 = v8 - 15;
      v10 = 88 * v8;
      do
      {
        v11 = *(v2 + 20) + v10;
        *(v11 + 80) = 0;
        *v11 = 0uLL;
        *(v11 + 16) = 0uLL;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0uLL;
        *(v11 + 56) = 0uLL;
        *(v11 + 72) = 0;
        v10 += 88;
      }

      while (!__CFADD__(v9++, 1));
    }

LABEL_19:
    *(v2 + 18) = 15;
    ++*(v2 + 38);
  }

  v16 = 0;
  v17 = xmmword_261710400;
  v18 = vdupq_n_s64(0xFuLL);
  v19 = *(v2 + 20);
  v20 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v18, v17)).u8[0])
    {
      *v19 = 0x10000 << v16;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v17)).i32[1])
    {
      v19[11] = 0x20000 << v16;
    }

    v16 += 2;
    v17 = vaddq_s64(v17, v20);
    v19 += 22;
  }

  while (v16 != 16);
  v21 = v2 + 56;
  re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(v21, 0);
  ++*(v21 + 6);
  *(v21 + 11) = 16;
  v22 = *MEMORY[0x277D85DE8];

  return re::DataArray<re::PerFrameAllocatorImpl>::allocBlock(v21);
}

re *re::PerFrameAllocatorManager::deinit(re *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    v1 = this;
    this = re::DataArray<re::PerFrameAllocatorImpl>::deinit(this + 56);
    v2 = *(v1 + 18);
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(v1 + 20) + 88 * i;
        v5 = *(v4 + 64);
        if (v5)
        {
          for (j = 0; j < v5; ++j)
          {
            v7 = **(*(v4 + 80) + 8 * j);
            if (v7)
            {
              v8 = re::globalAllocators(this);
              (*(*v8[2] + 40))(v8[2], v7);
              v5 = *(v4 + 64);
            }

            if (v5 <= j)
            {
              os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_20:
              os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_21:
              os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_22:
              os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            this = re::internal::destroyPersistent<re::internal::PerFrameAllocatorChunk>(*(*(v4 + 80) + 8 * j));
            v5 = *(v4 + 64);
            if (v5 <= j)
            {
              goto LABEL_20;
            }

            *(*(v4 + 80) + 8 * j) = 0;
          }

          v2 = *(v1 + 18);
        }

        *(v4 + 64) = 0;
        ++*(v4 + 72);
        *(v4 + 24) = 0;
        ++*(v4 + 32);
      }
    }

    for (k = 0; k != 16; ++k)
    {
      if (*(v1 + 5) <= k)
      {
        goto LABEL_21;
      }

      *(*(v1 + 6) + 8 * k) = 0;
      if (*(v1 + 2) <= k)
      {
        goto LABEL_22;
      }

      *(*(v1 + 3) + 8 * k) = 0;
    }

    *v1 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return this;
}

re *re::internal::destroyPersistent<re::internal::PerFrameAllocatorChunk>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v1 + 10);
    re::Allocator::~Allocator((v1 + 16));
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void *re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(void *result)
{
  if (result[1] != 15)
  {
    v1 = result;
    if (result[2] <= 0xFuLL)
    {
      v2 = *result;
      if (*v1)
      {
        result = (*(*v2 + 32))(v2, 1320, 8);
        if (result)
        {
          v4 = result;
          if (v1[1])
          {
            v5 = v1[4];
            v6 = v1[2];
            if (v6)
            {
              v7 = v5 + 88 * v6;
              v8 = result;
              do
              {
                v9 = *v5;
                v8[5] = 0;
                *v8 = v9;
                v8[1] = 0;
                *(v8 + 8) = 0;
                v8[2] = 0;
                v8[3] = 0;
                v10 = v5 + 8;
                v11 = *(v5 + 16);
                v8[1] = *(v5 + 8);
                *(v5 + 8) = 0;
                v8[2] = v11;
                *(v5 + 16) = 0;
                v12 = v8[3];
                v8[3] = *(v5 + 24);
                *(v5 + 24) = v12;
                v13 = v8[5];
                v8[5] = *(v5 + 40);
                *(v5 + 40) = v13;
                ++*(v5 + 32);
                ++*(v8 + 8);
                v8[10] = 0;
                v8[7] = 0;
                v8[8] = 0;
                v8[6] = 0;
                *(v8 + 18) = 0;
                v14 = *(v5 + 48);
                v15 = *(v5 + 56);
                v16 = v5 + 48;
                v8[6] = v14;
                v8[7] = v15;
                *v16 = 0;
                *(v16 + 8) = 0;
                v17 = v8[8];
                v8[8] = *(v16 + 16);
                *(v16 + 16) = v17;
                v18 = v8[10];
                v8[10] = *(v16 + 32);
                *(v16 + 32) = v18;
                ++*(v16 + 24);
                ++*(v8 + 18);
                re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v16);
                re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v10);
                v8 += 11;
                v5 = v16 + 40;
              }

              while (v5 != v7);
              v5 = v1[4];
            }

            result = (*(**v1 + 40))(*v1, v5);
          }

          v1[4] = v4;
          v1[1] = 15;
        }

        else
        {
          re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 1320, *(*v1 + 8));
          result = _os_crash();
          __break(1u);
        }
      }

      else
      {
        result = re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(v1);
        ++*(v1 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DataArray<re::PerFrameAllocatorImpl>::allocBlock(void *a1)
{
  v3 = 184 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void *re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 16 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::InlineString<32ul>::vappendf(unint64_t *a1, char *__format, va_list a3)
{
  v4 = a1 + 1;
  result = vsnprintf(a1 + *a1 + 8, 32 - *a1, __format, a3);
  if ((result & 0x80000000) != 0)
  {
    *(v4 + *a1) = 0;
  }

  else
  {
    v7 = *a1 + result;
    if (v7 >= 0x20)
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "m_length + result < m_capacity", "vappendf", 446, a3, a3);
      result = _os_crash();
      __break(1u);
    }

    else
    {
      *a1 = v7;
    }
  }

  return result;
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(a1 + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(a1 + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v12 = *(a1 + 32);
      v4 = *a2;
    }

    *(a1 + 32) = v12 + 1;
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(a1 + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  *(*(a1 + 16) + 24 * v11 + 8) = *(*(a1 + 16) + 24 * v11 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v8);
  *(*(a1 + 16) + 24 * v11) = v6;
  *(*(a1 + 16) + 24 * v11 + 16) = v4;
  *(*(a1 + 8) + 4 * v8) = v11;
  ++*(a1 + 28);
  ++*(a1 + 40);
}

uint64_t re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = (v3 ^ (v3 >> 31)) % v2;
    v5 = *(result + 8);
    v6 = *(v5 + 4 * v4);
    if (v6 != 0x7FFFFFFF)
    {
      v7 = *(result + 16);
      if (*(v7 + 24 * v6 + 16) == a2)
      {
        *(v5 + 4 * v4) = *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
LABEL_8:
        v9 = *(result + 16);
        v10 = v9 + 24 * v6;
        v13 = *(v10 + 8);
        v12 = (v10 + 8);
        v11 = v13;
        if (v13 < 0)
        {
          *v12 = v11 & 0x7FFFFFFF;
          v9 = *(result + 16);
          v11 = *(v9 + 24 * v6 + 8);
        }

        v14 = *(result + 40);
        *(v9 + 24 * v6 + 8) = *(result + 36) | v11 & 0x80000000;
        --*(result + 28);
        *(result + 36) = v6;
        *(result + 40) = v14 + 1;
      }

      else
      {
        while (1)
        {
          v8 = v6;
          LODWORD(v6) = *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
          if (v6 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v7 + 24 * v6 + 16) == a2)
          {
            *(v7 + 24 * v8 + 8) = *(v7 + 24 * v8 + 8) & 0x80000000 | *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
            goto LABEL_8;
          }
        }
      }
    }
  }

  return result;
}

re::ThreadSafeAutoFreeAllocator *re::ThreadSafeAutoFreeAllocator::ThreadSafeAutoFreeAllocator(re::ThreadSafeAutoFreeAllocator *this, const char *a2, re::Allocator *a3)
{
  *(this + 16) = 0;
  *this = &unk_2873F3C88;
  *(this + 1) = a2;
  *(this + 3) = a3;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 2) = 0u;
  *(this + 68) = 0x7FFFFFFFLL;
  *(this + 20) = 0;
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(this + 32, a3, 3);
  return this;
}

void re::ThreadSafeAutoFreeAllocator::~ThreadSafeAutoFreeAllocator(re::ThreadSafeAutoFreeAllocator *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 6) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::ThreadSafeAutoFreeAllocator::free(this, *(*(this + 6) + 24 * v3 + 16));
    v6 = *(this + 16);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 6) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 32);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 4);

  re::Allocator::~Allocator(this);
}

{
  re::ThreadSafeAutoFreeAllocator::~ThreadSafeAutoFreeAllocator(this);

  JUMPOUT(0x266708EC0);
}

uint64_t re::ThreadSafeAutoFreeAllocator::free(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 20);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(&this[8], a2);
  os_unfair_lock_unlock(this + 20);
  v4 = *(**&this[6]._os_unfair_lock_opaque + 40);

  return v4();
}

uint64_t re::ThreadSafeAutoFreeAllocator::alloc(re::ThreadSafeAutoFreeAllocator *this, uint64_t a2)
{
  v3 = (*(**(this + 3) + 32))(*(this + 3), a2, 0);
  v5 = v3;
  os_unfair_lock_lock(this + 20);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(this + 32, &v5);
  os_unfair_lock_unlock(this + 20);
  return v3;
}

double re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v24, 0, 36);
      *&v24[36] = 0x7FFFFFFFLL;
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(v24, v4, a2);
      v5 = *a1;
      *a1 = *v24;
      v6 = *(a1 + 16);
      v7 = *&v24[8];
      *v24 = v5;
      *&v24[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v24[24];
      *&v24[24] = *(a1 + 24);
      v8 = *&v24[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = 0;
        v13 = v7;
        v14 = DWORD1(v9);
        do
        {
          v15 = (*&v24[16] + v11);
          if ((*(*&v24[16] + v11 + 8) & 0x80000000) != 0)
          {
            v16 = *v15;
            v17 = *(a1 + 24);
            v18 = *v15 % v17;
            v19 = *(a1 + 36);
            if (v19 == 0x7FFFFFFF)
            {
              v19 = *(a1 + 32);
              v20 = v19;
              if (v19 == v17)
              {
                re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(a1, (2 * v14));
                v18 = v16 % *(a1 + 24);
                v20 = *(a1 + 32);
                v13 = *(a1 + 8);
              }

              *(a1 + 32) = v20 + 1;
              v21 = *(a1 + 16);
              v22 = *(v21 + 24 * v19 + 8);
            }

            else
            {
              v21 = *(a1 + 16);
              v22 = *(v21 + 24 * v19 + 8);
              *(a1 + 36) = v22 & 0x7FFFFFFF;
            }

            *(v21 + 24 * v19 + 8) = v22 | 0x80000000;
            *(*(a1 + 16) + 24 * v19 + 8) = *(*(a1 + 16) + 24 * v19 + 8) & 0x80000000 | *(v13 + 4 * v18);
            *(*(a1 + 16) + 24 * v19) = v16;
            *(*(a1 + 16) + 24 * v19 + 16) = v15[2];
            v13 = *(a1 + 8);
            *(v13 + 4 * v18) = v19;
            v14 = *(a1 + 28) + 1;
            *(a1 + 28) = v14;
            v10 = *&v24[32];
          }

          ++v12;
          v11 += 24;
        }

        while (v12 < v10);
      }

      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v24);
    }
  }

  else
  {
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = 3;
    }
  }
}

uint64_t MurmurHash3_x64_128(uint64_t result, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v4 = a3;
  v5 = a3;
  while (2)
  {
    v8 = (result + (a2 & 0xFFFFFFFFFFFFFFF0));
    v9 = 0;
    switch(a2)
    {
      case 0uLL:
        goto LABEL_20;
      case 1uLL:
        goto LABEL_19;
      case 2uLL:
        goto LABEL_18;
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        goto LABEL_16;
      case 5uLL:
        goto LABEL_15;
      case 6uLL:
        goto LABEL_14;
      case 7uLL:
        goto LABEL_13;
      case 8uLL:
        goto LABEL_12;
      case 9uLL:
        goto LABEL_11;
      case 0xAuLL:
        goto LABEL_10;
      case 0xBuLL:
        goto LABEL_9;
      case 0xCuLL:
        goto LABEL_8;
      case 0xDuLL:
        goto LABEL_7;
      case 0xEuLL:
        goto LABEL_6;
      case 0xFuLL:
        v9 = v8[14] << 48;
LABEL_6:
        v9 |= v8[13] << 40;
LABEL_7:
        v9 ^= v8[12] << 32;
LABEL_8:
        v9 ^= v8[11] << 24;
LABEL_9:
        v9 ^= v8[10] << 16;
LABEL_10:
        v9 ^= v8[9] << 8;
LABEL_11:
        v5 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v9 ^ v8[8])) | ((0x4CF5AD432745937FLL * (v9 ^ v8[8])) >> 31));
LABEL_12:
        v9 = v8[7] << 56;
LABEL_13:
        v9 |= v8[6] << 48;
LABEL_14:
        v9 ^= v8[5] << 40;
LABEL_15:
        v9 ^= v8[4] << 32;
LABEL_16:
        v9 ^= v8[3] << 24;
LABEL_17:
        v9 ^= v8[2] << 16;
LABEL_18:
        v9 ^= v8[1] << 8;
LABEL_19:
        v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v9 ^ *v8)) | ((0x87C37B91114253D5 * (v9 ^ *v8)) >> 33));
LABEL_20:
        v10 = (v4 ^ a2) + (v5 ^ a2);
        v11 = v10 + (v5 ^ a2);
        v12 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
        v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
        v14 = v13 ^ (v13 >> 33);
        v15 = v14 + (v12 ^ (v12 >> 33));
        *a4 = v15;
        a4[1] = v15 + v14;
        return result;
      default:
        v6 = a2 >> 4;
        v7 = (result + 8);
        v5 = v4;
        do
        {
          v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v7 - 1)) | ((0x87C37B91114253D5 * *(v7 - 1)) >> 33))) ^ v4, 37) + v5) + 1390208809;
          v5 = 5 * (v4 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v7) | ((0x4CF5AD432745937FLL * *v7) >> 31))) ^ v5, 33)) + 944331445;
          v7 += 2;
          --v6;
        }

        while (v6);
        continue;
    }
  }
}

uint64_t re::SharedObjectBase::dispose(re::SharedObjectBase *this)
{
  v2 = (*(*this + 24))(this);
  (**this)(this);
  v3 = *(*v2 + 40);

  return v3(v2, this);
}

uint64_t re::SharedObject::dispose(re::SharedObject *this)
{
  v2 = *(this + 2);
  (**this)(this);
  v3 = *(*v2 + 40);

  return v3(v2, this);
}

void re::MallocAllocator::~MallocAllocator(re::MallocAllocator *this)
{
  re::Allocator::~Allocator(this);

  JUMPOUT(0x266708EC0);
}

void *re::MallocAllocator::alloc(re::MallocAllocator *this, size_t size, unint64_t a3)
{
  v3 = 16;
  if (a3 > 0x10)
  {
    v3 = a3;
  }

  memptr = 0;
  malloc_type_posix_memalign(&memptr, (v3 + 7) & 0xFFFFFFFFFFFFFFF8, size, 0xAE8B065EuLL);
  return memptr;
}

uint64_t ArcObjectDestroy(char *a1, objc_selector *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 16))();
}

void ArcSharedObject::ArcSharedObject(ArcSharedObject *this, Class cls)
{
  v2 = cls;
  *this = &unk_2873F3D98;
  if (!cls)
  {
    v4 = 0x2810C5000uLL;
    {
      v4 = 0x2810C5000;
      if (v5)
      {
        ArcObjectClass(void)::cls = ArcObjectClass(void)::$_0::operator()();
        v4 = 0x2810C5000;
      }
    }

    v2 = *(v4 + 1256);
  }

  *(this + 1) = 0;
  objc_constructInstance(v2, this + 8);
}

void ArcSharedObject::~ArcSharedObject(ArcSharedObject *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void ArcSharedObject::dispose(ArcSharedObject *this)
{
  (**this)(this);

  free(this);
}

Class ArcObjectClass(void)::$_0::operator()()
{
  v0 = objc_opt_class();
  ClassPair = objc_allocateClassPair(v0, "_REArcObject", 0);
  if (ClassPair)
  {
    v2 = ClassPair;
    class_addMethod(ClassPair, sel_dealloc, ArcObjectDestroy, "");
    objc_registerClassPair(v2);
    return v2;
  }

  else
  {

    return objc_getClass("_REArcObject");
  }
}

re::TypeBuilder *re::TypeBuilder::TypeBuilder(re::TypeBuilder *this, re::Allocator *a2)
{
  *this = 0;
  re::StringID::invalid(this + 1);
  *(this + 6) = -1;
  *(this + 28) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 50) = 0;
  *(this + 408) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 122) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 0;
  *(this + 98) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 492) = 0x7FFFFFFFLL;
  *(this + 26) = a2;
  re::DynamicArray<re::EnumConstant>::setCapacity(this + 26, 0);
  ++*(this + 58);
  *(this + 31) = a2;
  re::DynamicArray<re::EnumConstant>::setCapacity(this + 31, 0);
  ++*(this + 68);
  *(this + 36) = a2;
  re::DynamicArray<re::Allocator const*>::setCapacity(this + 36, 0);
  ++*(this + 78);
  *(this + 41) = a2;
  re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this + 41, 0);
  ++*(this + 88);
  *(this + 46) = a2;
  re::DynamicArray<re::RenamedObjectMember>::setCapacity(this + 46, 0);
  ++*(this + 98);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(this + 456, a2, 3);
  return this;
}

void re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_0, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void re::TypeBuilder::~TypeBuilder(re::TypeBuilder *this, uint64_t a2)
{
  re::TypeBuilder::reset(this, a2);
  re::DynamicArray<re::EnumConstant>::deinit(this + 208);
  re::DynamicArray<re::EnumConstant>::deinit(this + 248);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 288);
  re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(this + 328);
  re::DynamicArray<re::RenamedObjectMember>::deinit(this + 368);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(this + 57);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(this + 57);
  if (*(this + 408) == 1)
  {
    re::StringID::destroyString((this + 424));
  }

  re::DynamicArray<re::RenamedObjectMember>::deinit(this + 368);
  re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(this + 328);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 288);
  re::DynamicArray<re::EnumConstant>::deinit(this + 248);
  re::DynamicArray<re::EnumConstant>::deinit(this + 208);
  re::StringID::destroyString((this + 8));
}

void re::TypeBuilder::reset(re::TypeBuilder *this, uint64_t a2)
{
  v3 = *this;
  if (v3 <= 2)
  {
    if (!*this)
    {
      return;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v8 = *(this + 28);
        *(this + 28) = 0;
        if (v8)
        {
          v9 = 24 * v8;
          v10 = (*(this + 30) + 8);
          do
          {
            re::StringID::destroyString(v10);
            v10 = (v10 + 24);
            v9 -= 24;
          }

          while (v9);
        }

        ++*(this + 58);
        v11 = *(this + 33);
        *(this + 33) = 0;
        if (v11)
        {
          v12 = 24 * v11;
          v13 = (*(this + 35) + 8);
          do
          {
            re::StringID::destroyString(v13);
            v13 = (v13 + 24);
            v12 -= 24;
          }

          while (v12);
        }

        ++*(this + 68);
        goto LABEL_3;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (*this < 7u)
    {
      goto LABEL_3;
    }

    switch(v3)
    {
      case 7u:
        *(this + 38) = 0;
        ++*(this + 78);
        break;
      case 8u:
LABEL_32:
        re::StringID::destroyString((this + 144));
        v14 = *(this + 43);
        *(this + 43) = 0;
        if (v14)
        {
          v15 = 40 * v14;
          v16 = (*(this + 45) + 8);
          do
          {
            re::StringID::destroyString(v16);
            v16 = (v16 + 40);
            v15 -= 40;
          }

          while (v15);
        }

        ++*(this + 88);
        v17 = *(this + 48);
        *(this + 48) = 0;
        if (v17)
        {
          v18 = *(this + 50);
          v19 = 24 * v17;
          do
          {
            re::StringID::destroyString(v18);
            v18 = (v18 + 24);
            v19 -= 24;
          }

          while (v19);
        }

        ++*(this + 98);
        LOBYTE(v21) = 0;
        v20 = re::Optional<re::internal::ObjectMemberInfo>::operator=(this + 408, &v21);
        if (v21 == 1 && (v22 & 1) != 0)
        {
        }

        break;
      case 9u:
        break;
      default:
LABEL_31:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown type category.", "!Unreachable code", "reset", 77);
        _os_crash();
        __break(1u);
        goto LABEL_32;
    }
  }

LABEL_3:
  *this = 0;
  re::StringID::invalid(&v21);
  v4 = re::StringID::operator=((this + 8), &v21);
  if (v21)
  {
    if (v21)
    {
    }
  }

  *(this + 6) = -1;
  if (*(this + 28) == 1)
  {
    *(this + 28) = 0;
  }

  if (*(this + 121))
  {
    v5 = *(this + 120);
    if (v5)
    {
      memset_pattern16(*(this + 58), &memset_pattern_0, 4 * v5);
    }

    v6 = *(this + 122);
    if (v6)
    {
      v7 = *(this + 59);
      do
      {
        if ((*v7 & 0x80000000) != 0)
        {
          *v7 &= ~0x80000000;
        }

        v7 += 14;
        --v6;
      }

      while (v6);
    }

    *(this + 123) = 0x7FFFFFFF;
    *(this + 484) = 0;
    ++*(this + 124);
  }
}

uint64_t re::DynamicArray<re::EnumConstant>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        v6 = (v3 + 8);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 24);
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = (v3 + 8);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 40);
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenamedObjectMember>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 24);
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 14;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::Optional<re::internal::ObjectMemberInfo>::operator=(uint64_t a1, char *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::StringID::destroyString((a1 + 16));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 1);
    re::StringID::operator=((a1 + 16), a2 + 2);
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 1);
    v5 = *(a2 + 2);
    *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
    *(a1 + 16) = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
    *(a1 + 24) = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = "";
LABEL_6:
    v6 = *(a2 + 4);
    *(a1 + 40) = *(a2 + 10);
    *(a1 + 32) = v6;
  }

  return a1;
}

void re::TypeBuilder::commitTo(re::TypeBuilder *this@<X0>, re::TypeRegistry *a2@<X1>, void *a3@<X8>)
{
  if (*this)
  {
    re::TypeRegistry::declareType((this + 8), a2, *this, *(this + 6), 0, a3);
    if (*a3)
    {
      v5 = *a3;
      re::TypeBuilder::commitTo(this, &v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "commitTo", 102);
    _os_crash();
    __break(1u);
  }
}

void re::TypeBuilder::commitTo(unsigned __int8 *a1, uint64_t *a2)
{
  v271 = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
LABEL_326:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling commitTo().", "isBuilding()", "commitTo", 118);
    _os_crash();
    __break(1u);
    goto LABEL_327;
  }

  v4 = a2;
  v2 = *a2;
  if (!*a2)
  {
LABEL_327:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "commitTo", 119);
    _os_crash();
    __break(1u);
LABEL_328:
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Type version mismatch.", "m_version == registry->typeVersion(typeID)", "commitTo", 124);
    _os_crash();
    __break(1u);
LABEL_329:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid member type.", "memberType", "commitTo", 345);
    _os_crash();
    __break(1u);
LABEL_330:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid member type.", "memberType", "commitTo", 316);
    _os_crash();
    __break(1u);
LABEL_331:
    v257 = 0;
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    *buf = 0u;
    v9 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v258 = 136315906;
    v259 = "operator[]";
    v260 = 1024;
    v261 = 789;
    v262 = 2048;
    v263 = v5;
    v264 = 2048;
    v265 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_332:
    re::TypeRegistry::typeName(v2, *v6);
    v249 = re::TypeRegistry::typeName(v2, *v6);
    re::internal::assertLog(6, v250, "assertion failure: '%s' (%s:line %i) Duplicate custom class IDs in inheritance tree. Classes %s and %s.", "objectType.customClassID.value() != m_objectTypeInfo.customClassID.value()", "commitTo", 375, v249[1], *(v9 + 2));
    _os_crash();
    __break(1u);
    goto LABEL_333;
  }

  v9 = a1;
  v3 = *(a1 + 6);
  v10 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(v2 + 96, a2[1]);
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = -1;
  }

  if (v3 != v12)
  {
    goto LABEL_328;
  }

  v13 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v4 + 8));
  v15 = *v9;
  if (v15 > 9)
  {
    goto LABEL_350;
  }

  v3 = v13;
  if (((1 << v15) & 0x2FA) != 0)
  {
    goto LABEL_9;
  }

  if (v15 != 2)
  {
    if (v15 == 8)
    {
      re::TypeRegistry::makeStringID(v2, v9 + 18, buf);
      v13 = re::StringID::operator=((v9 + 144), buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v40 = *(v9 + 43);
      if (v40)
      {
        v7 = 40 * v40;
        v6 = *(v9 + 45) + 8;
        do
        {
          re::TypeRegistry::makeStringID(v2, v6, buf);
          v13 = re::StringID::operator=(v6, buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v6 += 40;
          v7 -= 40;
        }

        while (v7);
      }

      v41 = *(v9 + 48);
      if (v41)
      {
        v6 = *(v9 + 50);
        v7 = 24 * v41;
        do
        {
          re::TypeRegistry::makeStringID(v2, v6, buf);
          v13 = re::StringID::operator=(v6, buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v6 += 24;
          v7 -= 24;
        }

        while (v7);
      }

      goto LABEL_9;
    }

LABEL_350:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Unexpected type category.", "!Unreachable code", "internStrings", 1125);
    _os_crash();
    __break(1u);
    return;
  }

  v50 = *(v9 + 28);
  if (v50)
  {
    v7 = 24 * v50;
    v51 = (*(v9 + 30) + 8);
    do
    {
      re::TypeRegistry::makeStringID(v2, v51, buf);
      v13 = re::StringID::operator=(v51, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v51 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  v52 = *(v9 + 33);
  if (v52)
  {
    v7 = 24 * v52;
    v53 = (*(v9 + 35) + 8);
    do
    {
      re::TypeRegistry::makeStringID(v2, v53, buf);
      v13 = re::StringID::operator=(v53, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v53 += 3;
      v7 -= 24;
    }

    while (v7);
  }

LABEL_9:
  if (*(v9 + 6))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v9 + 7) == 0;
  }

  *(v9 + 4) = *(v4 + 8);
  v16 = *v9;
  if (v16 <= 4)
  {
    if (*v9 <= 2u)
    {
      if (v16 == 1)
      {
        *(v9 + 20) |= v5 | 2;
        *v3 = *(v2 + 264) & 0xFFFFFF | (*(v3 + 3) << 24);
        v54 = *(v2 + 256);
        v55 = *(v2 + 264);
        if (v55 >= v54)
        {
          v56 = v55 + 1;
          if (v54 < v55 + 1)
          {
            if (*(v2 + 248))
            {
              v57 = 2 * v54;
              v21 = v54 == 0;
              v58 = 8;
              if (!v21)
              {
                v58 = v57;
              }

              if (v58 <= v56)
              {
                v59 = v56;
              }

              else
              {
                v59 = v58;
              }

              re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity((v2 + 248), v59);
            }

            else
            {
              re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity((v2 + 248), v56);
              ++*(v2 + 272);
            }
          }

          v55 = *(v2 + 264);
        }

        v177 = *(v2 + 280) + 88 * v55;
        v178 = *(v9 + 3);
        *v177 = *(v9 + 2);
        *(v177 + 16) = v178;
        v179 = *(v9 + 4);
        v180 = *(v9 + 5);
        v181 = *(v9 + 6);
        *(v177 + 80) = *(v9 + 14);
        *(v177 + 48) = v180;
        *(v177 + 64) = v181;
        *(v177 + 32) = v179;
        ++*(v2 + 264);
        ++*(v2 + 272);
        goto LABEL_301;
      }

      if (v16 == 2)
      {
        if (!*(v9 + 28))
        {
          v4 = *re::foundationIntrospectionLogObjects(v13);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v9 + 2);
            *buf = 136315138;
            *&buf[4] = v24;
            _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Creating enum type %s without values.", buf, 0xCu);
          }
        }

        v25 = *(v9 + 33);
        if (v25)
        {
          v26 = *(v9 + 35);
          v27 = *(v9 + 28);
          if (!v27)
          {
LABEL_333:
            re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) New value of renamed enum constant (old name = %s) is missing.", "found", "commitTo", 168, v26[2]);
            _os_crash();
            __break(1u);
            goto LABEL_334;
          }

          v28 = &v26[3 * v25];
          v29 = 24 * v27;
          do
          {
            v30 = v29;
            v31 = *(v9 + 30);
            while (*v26 != *v31)
            {
              v31 += 3;
              v30 -= 24;
              if (!v30)
              {
                goto LABEL_333;
              }
            }

            v26 += 3;
          }

          while (v26 != v28);
        }

        v32 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
        *(v9 + 20) |= v5 | 2;
        *v3 = *(v2 + 304) & 0xFFFFFF | (*(v3 + 3) << 24);
        v33 = *(v9 + 28);
        *(v9 + 30) = *(v2 + 344);
        *(v9 + 31) = v33;
        *(v9 + 32) = *(v9 + 33);
        v34 = *(v2 + 296);
        v35 = *(v2 + 304);
        if (v35 >= v34)
        {
          v36 = v35 + 1;
          if (v34 < v35 + 1)
          {
            if (*(v2 + 288))
            {
              v37 = 2 * v34;
              v21 = v34 == 0;
              v38 = 8;
              if (!v21)
              {
                v38 = v37;
              }

              if (v38 <= v36)
              {
                v39 = v36;
              }

              else
              {
                v39 = v38;
              }

              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 288), v39);
            }

            else
            {
              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 288), v36);
              ++*(v2 + 312);
            }
          }

          v35 = *(v2 + 304);
        }

        v216 = *(v2 + 320) + 104 * v35;
        v217 = *(v9 + 2);
        v218 = *(v9 + 4);
        *(v216 + 16) = *(v9 + 3);
        *(v216 + 32) = v218;
        *v216 = v217;
        v219 = *(v9 + 5);
        v220 = *(v9 + 6);
        v221 = *(v9 + 7);
        *(v216 + 96) = *(v9 + 16);
        *(v216 + 64) = v220;
        *(v216 + 80) = v221;
        *(v216 + 48) = v219;
        ++*(v2 + 304);
        ++*(v2 + 312);
        re::DynamicArray<re::EnumConstant>::copy((v2 + 328), *(v9 + 30), *(v9 + 30), *(v9 + 28));
        re::DynamicArray<re::EnumConstant>::copy((v2 + 328), *(v9 + 28) + *(v9 + 30), *(v9 + 35), *(v9 + 33));
        goto LABEL_301;
      }

LABEL_349:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Unknown type category.", "!Unreachable code", "commitTo", 462);
      _os_crash();
      __break(1u);
      goto LABEL_350;
    }

    if (v16 == 3)
    {
      v60 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
      *v3 = *(v2 + 384) & 0xFFFFFF | (*(v3 + 3) << 24);
      v61 = *(v2 + 376);
      v62 = *(v2 + 384);
      if (v62 >= v61)
      {
        v63 = v62 + 1;
        if (v61 < v62 + 1)
        {
          if (*(v2 + 368))
          {
            v64 = 2 * v61;
            v21 = v61 == 0;
            v65 = 8;
            if (!v21)
            {
              v65 = v64;
            }

            if (v65 <= v63)
            {
              v66 = v63;
            }

            else
            {
              v66 = v65;
            }

            re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 368), v66);
          }

          else
          {
            re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 368), v63);
            ++*(v2 + 392);
          }
        }

        v62 = *(v2 + 384);
      }

      v182 = *(v2 + 400) + 104 * v62;
      v183 = *(v9 + 2);
      v184 = *(v9 + 4);
      *(v182 + 16) = *(v9 + 3);
      *(v182 + 32) = v184;
      *v182 = v183;
      v185 = *(v9 + 5);
      v186 = *(v9 + 6);
      v187 = *(v9 + 7);
      *(v182 + 96) = *(v9 + 16);
      *(v182 + 64) = v186;
      *(v182 + 80) = v187;
      *(v182 + 48) = v185;
      ++*(v2 + 384);
      ++*(v2 + 392);
      goto LABEL_301;
    }

    if (v16 != 4)
    {
      goto LABEL_349;
    }

    v42 = v5 ^ 1;
    if ((*(v9 + 31) & 0xFFFFFF) != 0)
    {
      v42 = 1;
    }

    if (v42)
    {
      if ((*(v9 + 31) & 0xFFFFFF) != 0)
      {
LABEL_146:
        *v3 = *(v2 + 424) & 0xFFFFFF | (*(v3 + 3) << 24);
        v83 = *(v2 + 416);
        v84 = *(v2 + 424);
        if (v84 >= v83)
        {
          v85 = v84 + 1;
          if (v83 < v84 + 1)
          {
            if (*(v2 + 408))
            {
              v86 = 2 * v83;
              v21 = v83 == 0;
              v87 = 8;
              if (!v21)
              {
                v87 = v86;
              }

              if (v87 <= v85)
              {
                v88 = v85;
              }

              else
              {
                v88 = v87;
              }

              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 408), v88);
            }

            else
            {
              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 408), v85);
              ++*(v2 + 432);
            }
          }

          v84 = *(v2 + 424);
        }

        v210 = *(v2 + 440) + 104 * v84;
        v211 = *(v9 + 2);
        v212 = *(v9 + 4);
        *(v210 + 16) = *(v9 + 3);
        *(v210 + 32) = v212;
        *v210 = v211;
        v213 = *(v9 + 5);
        v214 = *(v9 + 6);
        v215 = *(v9 + 7);
        *(v210 + 96) = *(v9 + 16);
        *(v210 + 64) = v214;
        *(v210 + 80) = v215;
        *(v210 + 48) = v213;
        ++*(v2 + 424);
        ++*(v2 + 432);
        goto LABEL_301;
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
      if ((buf[0] & 1) == 0)
      {
LABEL_347:
        re::internal::assertLog(4, v43, "assertion failure: '%s' (%s:line %i) Element type must be registered before the array type.", "elementType", "commitTo", 221);
        _os_crash();
        __break(1u);
LABEL_348:
        re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v99, v8, v7);
        _os_crash();
        __break(1u);
      }

      if (*(*(&v267 + 1) + 48))
      {
        *(v9 + 20) |= 1u;
      }
    }

    v13 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
    if ((*(*(&v267 + 1) + 48) & 3) != 0)
    {
      *(v9 + 20) |= 2u;
    }

    goto LABEL_146;
  }

  if (*v9 <= 6u)
  {
    if (v16 == 5)
    {
      *v3 = *(v2 + 464) & 0xFFFFFF | (*(v3 + 3) << 24);
      v67 = *(v2 + 456);
      v68 = *(v2 + 464);
      if (v68 >= v67)
      {
        v69 = v68 + 1;
        if (v67 < v68 + 1)
        {
          if (*(v2 + 448))
          {
            v70 = 2 * v67;
            v21 = v67 == 0;
            v71 = 8;
            if (!v21)
            {
              v71 = v70;
            }

            if (v71 <= v69)
            {
              v72 = v69;
            }

            else
            {
              v72 = v71;
            }

            re::DynamicArray<re::internal::ListTypeInfo>::setCapacity((v2 + 448), v72);
          }

          else
          {
            re::DynamicArray<re::internal::ListTypeInfo>::setCapacity((v2 + 448), v69);
            ++*(v2 + 472);
          }
        }

        v68 = *(v2 + 464);
      }

      v188 = *(v2 + 480) + 136 * v68;
      *v188 = *(v9 + 2);
      v189 = *(v9 + 3);
      v190 = *(v9 + 4);
      v191 = *(v9 + 6);
      *(v188 + 48) = *(v9 + 5);
      *(v188 + 64) = v191;
      *(v188 + 16) = v189;
      *(v188 + 32) = v190;
      v192 = *(v9 + 7);
      v193 = *(v9 + 8);
      v194 = *(v9 + 9);
      *(v188 + 128) = *(v9 + 20);
      *(v188 + 96) = v193;
      *(v188 + 112) = v194;
      *(v188 + 80) = v192;
      ++*(v2 + 464);
      ++*(v2 + 472);
      goto LABEL_301;
    }

    if (v16 == 6)
    {
      *v3 = *(v2 + 504) & 0xFFFFFF | (*(v3 + 3) << 24);
      v44 = *(v2 + 496);
      v45 = *(v2 + 504);
      if (v45 >= v44)
      {
        v46 = v45 + 1;
        if (v44 < v45 + 1)
        {
          if (*(v2 + 488))
          {
            v47 = 2 * v44;
            v21 = v44 == 0;
            v48 = 8;
            if (!v21)
            {
              v48 = v47;
            }

            if (v48 <= v46)
            {
              v49 = v46;
            }

            else
            {
              v49 = v48;
            }

            re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity((v2 + 488), v49);
          }

          else
          {
            re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity((v2 + 488), v46);
            ++*(v2 + 512);
          }
        }

        v45 = *(v2 + 504);
      }

      v195 = *(v2 + 520) + 168 * v45;
      v196 = *(v9 + 2);
      v197 = *(v9 + 4);
      *(v195 + 16) = *(v9 + 3);
      *(v195 + 32) = v197;
      *v195 = v196;
      v198 = *(v9 + 5);
      v199 = *(v9 + 6);
      v200 = *(v9 + 8);
      *(v195 + 80) = *(v9 + 7);
      *(v195 + 96) = v200;
      *(v195 + 48) = v198;
      *(v195 + 64) = v199;
      v201 = *(v9 + 9);
      v202 = *(v9 + 10);
      v203 = *(v9 + 11);
      *(v195 + 160) = *(v9 + 24);
      *(v195 + 128) = v202;
      *(v195 + 144) = v203;
      *(v195 + 112) = v201;
      ++*(v2 + 504);
      ++*(v2 + 512);
      goto LABEL_301;
    }

    goto LABEL_349;
  }

  if (v16 == 7)
  {
    v73 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), &v254);
    if (v254)
    {
      if (BYTE4(v255) == 2)
      {
        if (!*(v9 + 6))
        {
          if (!*(v9 + 7))
          {
            v74 = *(v9 + 38);
            *(v9 + 31) = *(v2 + 584);
            *(v9 + 32) = v74;
            *v3 = *(v2 + 544) & 0xFFFFFF | (*(v3 + 3) << 24);
            v75 = *(v2 + 544);
            v76 = *(v2 + 536);
            if (v75 >= v76)
            {
              v77 = v75 + 1;
              if (v76 < v75 + 1)
              {
                v4 = v2 + 528;
                if (*(v2 + 528))
                {
                  v78 = 2 * v76;
                  v21 = v76 == 0;
                  v79 = 8;
                  if (!v21)
                  {
                    v79 = v78;
                  }

                  if (v79 <= v77)
                  {
                    v80 = v77;
                  }

                  else
                  {
                    v80 = v79;
                  }

                  v73 = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 528), v80);
                }

                else
                {
                  v73 = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 528), v77);
                  ++*(v2 + 552);
                }
              }

              v75 = *(v2 + 544);
            }

            v222 = *(v2 + 560) + 104 * v75;
            v223 = *(v9 + 2);
            v224 = *(v9 + 4);
            *(v222 + 16) = *(v9 + 3);
            *(v222 + 32) = v224;
            *v222 = v223;
            v225 = *(v9 + 5);
            v226 = *(v9 + 6);
            v227 = *(v9 + 7);
            *(v222 + 96) = *(v9 + 16);
            *(v222 + 64) = v226;
            *(v222 + 80) = v227;
            *(v222 + 48) = v225;
            ++*(v2 + 544);
            ++*(v2 + 552);
            v7 = *(v9 + 38);
            if (!v7)
            {
              goto LABEL_301;
            }

            v6 = *(v9 + 31);
            v228 = *(v2 + 584);
            v3 = v228 + 1;
            if (v228 + 1 > v6)
            {
              v3 = v6 + v7;
              if (!__CFADD__(v6, v7))
              {
                v229 = *(v9 + 40);
                if (v228 >= v3)
                {
                  memmove((*(v2 + 600) + 8 * v6), *(v9 + 40), 8 * v7);
                }

                else
                {
                  v230 = *(v2 + 576);
                  if (v230 < v3)
                  {
                    if (*(v2 + 568))
                    {
                      v231 = 2 * v230;
                      v21 = v230 == 0;
                      v232 = 8;
                      if (!v21)
                      {
                        v232 = v231;
                      }

                      if (v232 <= v3)
                      {
                        v233 = v6 + v7;
                      }

                      else
                      {
                        v233 = v232;
                      }

                      re::DynamicArray<re::Allocator const*>::setCapacity((v2 + 568), v233);
                    }

                    else
                    {
                      re::DynamicArray<re::Allocator const*>::setCapacity((v2 + 568), v6 + v7);
                      ++*(v2 + 592);
                    }
                  }

                  v234 = *(v2 + 584);
                  v235 = v234 - v6;
                  v236 = &v229[8 * (v234 - v6)];
                  if (v234 != v6)
                  {
                    memmove((*(v2 + 600) + 8 * v6), v229, 8 * v235);
                    v6 = *(v2 + 584);
                  }

                  memcpy((*(v2 + 600) + 8 * v6), v236, 8 * (v7 - v235));
                  *(v2 + 584) = v3;
                }

                ++*(v2 + 592);
                goto LABEL_301;
              }

              goto LABEL_340;
            }

LABEL_339:
            v252 = 0;
            v269 = 0u;
            v270 = 0u;
            v267 = 0u;
            v268 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            v258 = 136315906;
            v259 = "copy";
            v260 = 1024;
            v261 = 643;
            v262 = 2048;
            v263 = v6;
            v264 = 2048;
            v265 = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_340:
            re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v228, v6, v7);
            _os_crash();
            __break(1u);
            goto LABEL_341;
          }

          goto LABEL_337;
        }

LABEL_336:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Tagged unions don't support custom constructors.", "!sharedTypeInfo().constructor", "commitTo", 265);
        _os_crash();
        __break(1u);
LABEL_337:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Tagged unions don't support custom destructors.", "!sharedTypeInfo().destructor", "commitTo", 266);
        _os_crash();
        __break(1u);
LABEL_338:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid super class type.", "superClass", "commitTo", 303);
        _os_crash();
        __break(1u);
        goto LABEL_339;
      }

LABEL_335:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Union tag type must be an enum type.", "tagType.value().isEnum()", "commitTo", 264);
      _os_crash();
      __break(1u);
      goto LABEL_336;
    }

LABEL_334:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Union tag type must be registered before the union type.", "tagType", "commitTo", 263);
    _os_crash();
    __break(1u);
    goto LABEL_335;
  }

  if (v16 != 8)
  {
    if (v16 == 9)
    {
      *v3 = *(v2 + 744) & 0xFFFFFF | (*(v3 + 3) << 24);
      v17 = *(v2 + 744);
      v18 = *(v2 + 736);
      if (v17 >= v18)
      {
        v19 = v17 + 1;
        if (v18 < v17 + 1)
        {
          if (*(v2 + 728))
          {
            v20 = 2 * v18;
            v21 = v18 == 0;
            v22 = 8;
            if (!v21)
            {
              v22 = v20;
            }

            if (v22 <= v19)
            {
              v23 = v19;
            }

            else
            {
              v23 = v22;
            }

            re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity((v2 + 728), v23);
          }

          else
          {
            re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity((v2 + 728), v19);
            ++*(v2 + 752);
          }
        }

        v17 = *(v2 + 744);
      }

      v204 = (*(v2 + 760) + 112 * v17);
      v205 = *(v9 + 2);
      v206 = *(v9 + 4);
      v204[1] = *(v9 + 3);
      v204[2] = v206;
      *v204 = v205;
      v207 = *(v9 + 5);
      v208 = *(v9 + 6);
      v209 = *(v9 + 8);
      v204[5] = *(v9 + 7);
      v204[6] = v209;
      v204[3] = v207;
      v204[4] = v208;
      ++*(v2 + 744);
      ++*(v2 + 752);
      goto LABEL_301;
    }

    goto LABEL_349;
  }

  LOBYTE(v254) = 0;
  v81 = *(v9 + 29);
  v4 = v81 & 0xFFFFFF;
  if ((v81 & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
    re::Optional<re::TypeInfo>::operator=(&v254, buf);
    if ((v254 & 1) == 0)
    {
      goto LABEL_338;
    }
  }

  if (v4)
  {
    v82 = *(v256 + 48) & 1;
  }

  else
  {
    v82 = 1;
  }

  if ((v5 & (*(v9 + 23) == 0) & ((v9[408] | v9[160]) ^ 1) & v82) == 1)
  {
    v89 = *(v9 + 43);
    if (v89)
    {
      v4 = *(v9 + 45);
      v5 = 40 * v89;
      do
      {
        re::TypeRegistry::typeInfo(v2, *v4, buf);
        if ((buf[0] & 1) == 0)
        {
          goto LABEL_330;
        }

        if ((*(*(&v267 + 1) + 48) & 1) == 0)
        {
          goto LABEL_163;
        }

        v4 += 40;
        v5 -= 40;
      }

      while (v5);
    }

    *(v9 + 20) |= 1u;
  }

LABEL_163:
  if ((v254 != 1 || (*(v256 + 48) & 2) != 0) && (v9[28] != 1 || v9[29] == 1))
  {
    v90 = *(v9 + 43);
    if (v90)
    {
      v4 = *(v9 + 45);
      v5 = 40 * v90;
      do
      {
        re::TypeRegistry::typeInfo(v2, *v4, buf);
        if ((buf[0] & 1) == 0)
        {
          goto LABEL_329;
        }

        if ((*(*(&v267 + 1) + 48) & 2) == 0)
        {
          goto LABEL_173;
        }

        v4 += 40;
        v5 -= 40;
      }

      while (v5);
    }

    *(v9 + 20) |= 2u;
  }

LABEL_173:
  if (v9[160] == 1 && v254 == 1)
  {
    re::TypeInfo::rootClass((&v254 + 8), &v252);
    v91 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *v253);
    v92 = *(v253 + 88);
    if (v92)
    {
      v93 = *v91 & 0xFFFFFF;
      v4 = *(v2 + 624);
      do
      {
        v5 = v93;
        if (v4 <= v93)
        {
          goto LABEL_331;
        }

        v6 = *(v2 + 640) + 176 * v93;
        if (*(v6 + 128) == 1 && *(v6 + 136) == *(v9 + 21))
        {
          goto LABEL_332;
        }

        ++v93;
      }

      while (--v92);
    }
  }

  if (v9[408] == 1)
  {
    *(v9 + 44) = *(v2 + 664);
    re::DynamicArray<re::internal::ObjectMemberInfo>::add((v2 + 648), (v9 + 416));
  }

  v94 = *(v2 + 664);
  v7 = *(v9 + 43);
  *(v9 + 31) = v94;
  *(v9 + 32) = v7;
  v6 = *(v9 + 45);
  if ((v9[80] & 0x10) != 0)
  {
LABEL_188:
    if (v7)
    {
      v8 = v94;
      v99 = *(v2 + 664);
      v4 = v99 + 1;
      if (v99 + 1 <= v8)
      {
LABEL_346:
        v252 = 0;
        v269 = 0u;
        v270 = 0u;
        v267 = 0u;
        v268 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        v258 = 136315906;
        v259 = "copy";
        v260 = 1024;
        v261 = 643;
        v262 = 2048;
        v263 = v8;
        v264 = 2048;
        v265 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_347;
      }

      v100 = v8 + v7;
      if (__CFADD__(v8, v7))
      {
        goto LABEL_348;
      }

      if (v99 >= v100)
      {
        v5 = v6 + 40 * v7;
        v113 = (*(v2 + 680) + 40 * v8 + 8);
        v114 = v6 + 8;
        do
        {
          *(v113 - 1) = *(v114 - 8);
          v115 = re::StringID::operator=(v113, v114);
          v116 = *(v114 + 16);
          *(v115 + 6) = *(v114 + 24);
          v115[2] = v116;
          v113 = v115 + 5;
          v117 = v114 + 32;
          v114 += 40;
        }

        while (v117 != v5);
      }

      else
      {
        re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity((v2 + 648), v8 + v7);
        v101 = *(v2 + 664);
        v102 = *(v2 + 680);
        v103 = v8;
        v104 = v101 - v8;
        if (v101 != v8)
        {
          v251 = *(v2 + 664);
          v105 = (v102 + 40 * v8 + 8);
          v5 = v6 + 8;
          do
          {
            *(v105 - 1) = *(v5 - 8);
            v106 = re::StringID::operator=(v105, v5);
            v107 = *(v5 + 16);
            *(v106 + 6) = *(v5 + 24);
            v106[2] = v107;
            v105 = v106 + 5;
            v108 = v5 + 32;
            v5 += 40;
          }

          while (v108 != v6 + 40 * v104);
          v102 = *(v2 + 680);
          v103 = *(v2 + 664);
          v101 = v251;
        }

        if (v104 != v7)
        {
          v7 = v6 + 40 * v7;
          v5 = 40 * v101 - 40 * v8 + v6 + 8;
          v109 = (v102 + 40 * v103 + 8);
          do
          {
            *(v109 - 1) = *(v5 - 8);
            v110 = re::StringID::StringID(v109, v5);
            v111 = *(v5 + 16);
            *(v110 + 6) = *(v5 + 24);
            v110[2] = v111;
            v112 = v5 + 32;
            v5 += 40;
            v109 = v110 + 5;
          }

          while (v112 != v7);
        }

        *(v2 + 664) = v100;
      }

      ++*(v2 + 672);
    }
  }

  else if (v7)
  {
    v95 = 0;
    v96 = (v6 + 32);
    v97 = 40 * v7;
    while (1)
    {
      v98 = *v96;
      if (v98 <= v95)
      {
        goto LABEL_324;
      }

      v96 += 10;
      v95 = v98;
      v97 -= 40;
      if (!v97)
      {
        goto LABEL_188;
      }
    }
  }

  v118 = *(v2 + 704);
  v8 = *(v9 + 48);
  *(v9 + 33) = v118;
  *(v9 + 34) = v8;
  if (v8)
  {
    v7 = v118;
    v119 = *(v2 + 704);
    v4 = v119 + 1;
    if (v119 + 1 <= v7)
    {
LABEL_341:
      v252 = 0;
      v269 = 0u;
      v270 = 0u;
      v267 = 0u;
      v268 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v258 = 136315906;
      v259 = "copy";
      v260 = 1024;
      v261 = 643;
      v262 = 2048;
      v263 = v7;
      v264 = 2048;
      v265 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_342;
    }

    v4 = v7 + v8;
    if (__CFADD__(v7, v8))
    {
LABEL_342:
      re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v119, v7, v8);
      _os_crash();
      __break(1u);
LABEL_343:
      v252 = 0;
      v269 = 0u;
      v270 = 0u;
      v267 = 0u;
      v268 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v258 = 136315906;
      v259 = "operator[]";
      v260 = 1024;
      v261 = 789;
      v262 = 2048;
      v263 = v4;
      v264 = 2048;
      v265 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_344;
    }

    v120 = *(v9 + 50);
    if (v119 >= v4)
    {
      v131 = (*(v2 + 720) + 24 * v7);
      v132 = 24 * v8;
      do
      {
        v133 = re::StringID::operator=(v131, v120);
        *(v133 + 4) = *(v120 + 16);
        v120 += 24;
        v131 = v133 + 3;
        v132 -= 24;
      }

      while (v132);
    }

    else
    {
      re::DynamicArray<re::RenamedObjectMember>::growCapacity((v2 + 688), v7 + v8);
      v121 = *(v2 + 704);
      v122 = *(v2 + 720);
      v123 = v7;
      v124 = v121 - v7;
      if (v121 != v7)
      {
        v125 = (v122 + 24 * v7);
        v126 = 24 * v121 - 24 * v7;
        v6 = v120;
        do
        {
          v127 = re::StringID::operator=(v125, v6);
          *(v127 + 4) = *(v6 + 16);
          v6 += 24;
          v125 = v127 + 3;
          v126 -= 24;
        }

        while (v126);
        v122 = *(v2 + 720);
        v123 = *(v2 + 704);
        v124 = v121 - v7;
      }

      if (v124 != v8)
      {
        v128 = v120 + 24 * v124;
        v129 = (v122 + 24 * v123);
        v6 = 24 * v8 + 24 * v7 - 24 * v121;
        do
        {
          v130 = re::StringID::StringID(v129, v128);
          *(v130 + 4) = *(v128 + 16);
          v128 += 24;
          v129 = v130 + 3;
          v6 -= 24;
        }

        while (v6);
      }

      *(v2 + 704) = v4;
    }

    ++*(v2 + 712);
  }

  if ((*(v9 + 29) & 0xFFFFFF) == 0)
  {
    *v3 = *(v2 + 624) & 0xFFFFFF | (*(v3 + 3) << 24);
    v159 = *(v2 + 624);
    if (v159 >= *(v2 + 616))
    {
      re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity((v2 + 608), v159 + 1);
      v159 = *(v2 + 624);
    }

    v160 = *(v2 + 640) + 176 * v159;
    *v160 = *(v9 + 2);
    v161 = *(v9 + 3);
    v162 = *(v9 + 4);
    v163 = *(v9 + 6);
    *(v160 + 48) = *(v9 + 5);
    *(v160 + 64) = v163;
    *(v160 + 16) = v161;
    *(v160 + 32) = v162;
    v164 = *(v9 + 7);
    *(v160 + 92) = *(v9 + 124);
    *(v160 + 80) = v164;
    re::StringID::StringID((v160 + 112), v9 + 18);
    v165 = v9[160];
    *(v160 + 128) = v165;
    if (v165 == 1)
    {
      *(v160 + 136) = *(v9 + 21);
    }

    v166 = *(v9 + 12);
    *(v160 + 144) = *(v9 + 11);
    *(v160 + 160) = v166;
    ++*(v2 + 624);
    ++*(v2 + 632);
    goto LABEL_301;
  }

  v4 = *re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v9 + 14)) & 0xFFFFFFLL;
  v5 = *(v2 + 624);
  if (v5 <= v4)
  {
    goto LABEL_343;
  }

  v5 = (*(*(v2 + 640) + 176 * v4 + 88) + v4);
  *v3 = (*(*(v2 + 640) + 176 * v4 + 88) + v4) & 0xFFFFFF | (*(v3 + 3) << 24);
  v134 = *(v2 + 624);
  v3 = v134 + 1;
  if (v134 + 1 <= v5)
  {
LABEL_344:
    v252 = 0;
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v258 = 136315906;
    v259 = "insert";
    v260 = 1024;
    v261 = 855;
    v262 = 2048;
    v263 = v5;
    v264 = 2048;
    v265 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_345:
    v252 = 0;
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v258 = 136315906;
    v259 = "operator[]";
    v260 = 1024;
    v261 = 789;
    v262 = 2048;
    v263 = v4;
    v264 = 2048;
    v265 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_346;
  }

  if (v134 >= *(v2 + 616))
  {
    re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity((v2 + 608), v134 + 1);
    v134 = *(v2 + 624);
  }

  v135 = *(v2 + 640) + 176 * v134;
  if (v134 > v5)
  {
    v136 = *(v135 - 128);
    *(v135 + 32) = *(v135 - 144);
    *(v135 + 48) = v136;
    v137 = *(v135 - 160);
    *v135 = *(v135 - 176);
    *(v135 + 16) = v137;
    v138 = *(v135 - 96);
    *(v135 + 64) = *(v135 - 112);
    *(v135 + 80) = v138;
    v139 = *(v135 - 84);
    v140 = *(v135 - 56);
    *(v135 + 112) = *(v135 - 64);
    *(v135 + 120) = v140;
    *(v135 + 92) = v139;
    *(v135 - 64) = 0;
    *(v135 - 56) = "";
    v141 = *(v135 - 48);
    *(v135 + 128) = v141;
    if (v141 == 1)
    {
      *(v135 + 136) = *(v135 - 40);
    }

    v142 = *(v135 - 16);
    *(v135 + 144) = *(v135 - 32);
    *(v135 + 160) = v142;
    v143 = *(v2 + 640);
    v144 = *(v2 + 624);
    if (v143 + 176 * v144 - 176 != v143 + 176 * v5)
    {
      v145 = 176 * v144;
      v7 = 176 * v5 + 176;
      v8 = 1;
      while (1)
      {
        v146 = v143 + v145;
        v147 = *(v143 + v145 - 304);
        *(v146 - 144) = *(v143 + v145 - 320);
        *(v146 - 128) = v147;
        v148 = *(v143 + v145 - 288);
        v149 = *(v143 + v145 - 336);
        *(v146 - 176) = *(v143 + v145 - 352);
        *(v146 - 160) = v149;
        v150 = *(v143 + v145 - 272);
        *(v146 - 112) = v148;
        *(v146 - 96) = v150;
        *(v146 - 84) = *(v143 + v145 - 260);
        re::StringID::operator=((v143 + v145 - 64), (v143 + v145 - 240));
        v151 = *(v143 + v145 - 224);
        if (*(v143 + v145 - 48))
        {
          if (*(v143 + v145 - 224))
          {
            goto LABEL_233;
          }

          *(v146 - 48) = 0;
        }

        else if (*(v143 + v145 - 224))
        {
          *(v146 - 48) = 1;
LABEL_233:
          *(v143 + v145 - 40) = *(v143 + v145 - 216);
        }

        v152 = v143 + v145;
        v153 = *(v143 + v145 - 192);
        *(v152 - 32) = *(v143 + v145 - 208);
        *(v152 - 16) = v153;
        v143 -= 176;
        v7 += 176;
        if (v145 == v7)
        {
          v143 = *(v2 + 640);
          break;
        }
      }
    }

    v135 = v143 + 176 * v5;
    *v135 = *(v9 + 2);
    v154 = *(v9 + 3);
    v155 = *(v9 + 4);
    v156 = *(v9 + 6);
    *(v135 + 48) = *(v9 + 5);
    *(v135 + 64) = v156;
    *(v135 + 16) = v154;
    *(v135 + 32) = v155;
    v157 = *(v9 + 7);
    *(v135 + 92) = *(v9 + 124);
    *(v135 + 80) = v157;
    re::StringID::operator=((v135 + 112), v9 + 18);
    v158 = v9[160];
    if (*(v135 + 128))
    {
      if ((v9[160] & 1) == 0)
      {
        *(v135 + 128) = 0;
        goto LABEL_249;
      }
    }

    else
    {
      if ((v9[160] & 1) == 0)
      {
        goto LABEL_249;
      }

      *(v135 + 128) = 1;
    }

    goto LABEL_248;
  }

  *v135 = *(v9 + 2);
  v167 = *(v9 + 3);
  v168 = *(v9 + 4);
  v169 = *(v9 + 6);
  *(v135 + 48) = *(v9 + 5);
  *(v135 + 64) = v169;
  *(v135 + 16) = v167;
  *(v135 + 32) = v168;
  v170 = *(v9 + 7);
  *(v135 + 92) = *(v9 + 124);
  *(v135 + 80) = v170;
  re::StringID::StringID((v135 + 112), v9 + 18);
  v171 = v9[160];
  *(v135 + 128) = v171;
  if (v171 == 1)
  {
LABEL_248:
    *(v135 + 136) = *(v9 + 21);
  }

LABEL_249:
  v172 = *(v9 + 12);
  *(v135 + 144) = *(v9 + 11);
  *(v135 + 160) = v172;
  v6 = *(v2 + 624) + 1;
  *(v2 + 624) = v6;
  ++*(v2 + 632);
  v3 = (v5 + 1);
  if (v3 < v6)
  {
    v6 = v6;
    v7 = 176 * v3;
    do
    {
      v5 = *(v2 + 624);
      if (v5 <= v3)
      {
        goto LABEL_325;
      }

      v173 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(*(v2 + 640) + v7));
      *v173 = v3++ & 0xFFFFFF | (*(v173 + 3) << 24);
      v7 += 176;
    }

    while (v3 < v6);
    v6 = *(v2 + 624);
  }

  if (v6 <= v4)
  {
    goto LABEL_345;
  }

  v174 = *(v2 + 640) + 176 * v4;
  v175 = *(v174 + 84);
  ++*(v174 + 88);
  if ((v175 & 0xFFFFFF) != 0)
  {
    v5 = 176;
    while (1)
    {
      v3 = *re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v174 + 80)) & 0xFFFFFFLL;
      v4 = *(v2 + 624);
      if (v4 <= v3)
      {
        break;
      }

      v174 = *(v2 + 640) + 176 * v3;
      v176 = *(v174 + 84);
      ++*(v174 + 88);
      if ((v176 & 0xFFFFFF) == 0)
      {
        goto LABEL_301;
      }
    }

    v252 = 0;
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v258 = 136315906;
    v259 = "operator[]";
    v260 = 1024;
    v261 = 789;
    v262 = 2048;
    v263 = v3;
    v264 = 2048;
    v265 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_324:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Object member %s has invalid numeric tag %d. Tags need to be unique and greater than 1. Object members need to be sorted by tag.", "member.serializationTag > tag", "commitTo", 395, *(v96 - 2), v98);
    _os_crash();
    __break(1u);
LABEL_325:
    v252 = 0;
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v258 = 136315906;
    v259 = "operator[]";
    v260 = 1024;
    v261 = 789;
    v262 = 2048;
    v263 = v3;
    v264 = 2048;
    v265 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_326;
  }

LABEL_301:
  if (v9[28] == 1)
  {
    if (v9[29])
    {
      v237 = 2;
    }

    else
    {
      v237 = 0;
    }

    *(v9 + 20) = *(v9 + 20) & 0xFFFFFFFD | v237;
  }

  v238 = *(v9 + 122);
  if (v238)
  {
    v239 = 0;
    v240 = *(v9 + 59);
    while (1)
    {
      v241 = *v240;
      v240 += 14;
      if (v241 < 0)
      {
        break;
      }

      if (v238 == ++v239)
      {
        LODWORD(v239) = *(v9 + 122);
        break;
      }
    }
  }

  else
  {
    LODWORD(v239) = 0;
  }

  while (v239 != v238)
  {
    v242 = *(v9 + 59);
    v243 = v242 + 56 * v239;
    v244 = *(v243 + 24);
    v254 = *(v243 + 8);
    *(&v254 + 1) = *(v9 + 4);
    v255 = v244;
    memset(buf, 0, sizeof(buf));
    *&v267 = 0;
    v245 = re::Hash<re::internal::TypeAttributeKey>::operator()(&v258, &v254);
    re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(v2 + 768, &v254, v245, buf);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      v246 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(v2 + 768, *&buf[8], *buf);
      *(v246 + 8) = v254;
      *(v246 + 24) = v255;
      *(v246 + 32) = *(v242 + 56 * v239 + 32);
      ++*(v2 + 808);
    }

    v247 = *(v9 + 122);
    if (v247 <= v239 + 1)
    {
      v247 = v239 + 1;
    }

    while (v247 - 1 != v239)
    {
      LODWORD(v239) = v239 + 1;
      if ((*(*(v9 + 59) + 56 * v239) & 0x80000000) != 0)
      {
        goto LABEL_321;
      }
    }

    LODWORD(v239) = v247;
LABEL_321:
    ;
  }

  ++*(v2 + 24);
  re::TypeBuilder::reset(v9, v14);
  v248 = *MEMORY[0x277D85DE8];
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::get(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 4 * a2;
}

unint64_t *re::DynamicArray<re::EnumConstant>::copy(unint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_26;
  }

  v5 = a2;
  v6 = result;
  v7 = result[2];
  if (v7 + 1 <= a2)
  {
    v27 = 0;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v28) = 136315906;
    *(&v28 + 4) = "copy";
    WORD6(v28) = 1024;
    HIWORD(v28) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v27, v28);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_28;
  }

  if (v7 >= v8)
  {
    result = (result[4] + 24 * a2 + 8);
    v15 = 24 * a4;
    v16 = (a3 + 8);
    do
    {
      *(result - 1) = *(v16 - 1);
      result = re::StringID::operator=(result, v16) + 3;
      v16 += 3;
      v15 -= 24;
    }

    while (v15);
  }

  else
  {
    v10 = result[1];
    if (v10 < v8)
    {
      if (*result)
      {
        v11 = 2 * v10;
        v12 = v10 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v8)
        {
          v14 = a2 + a4;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::EnumConstant>::setCapacity(result, v14);
      }

      else
      {
        result = re::DynamicArray<re::EnumConstant>::setCapacity(v6, v8);
        ++*(v6 + 6);
      }
    }

    v17 = v6[2];
    v18 = v6[4];
    v19 = 3 * v5;
    v20 = v17 - v5;
    if (v17 != v5)
    {
      result = (v18 + 24 * v5 + 8);
      v21 = 24 * v17 - 24 * v5;
      v22 = (a3 + 8);
      do
      {
        *(result - 1) = *(v22 - 1);
        result = re::StringID::operator=(result, v22) + 3;
        v22 += 3;
        v21 -= 24;
      }

      while (v21);
      v18 = v6[4];
      v5 = v6[2];
    }

    if (v20 != v4)
    {
      v23 = 24 * v4 + 8 * v19 - 24 * v17;
      v24 = (24 * v17 - 8 * v19 + a3 + 8);
      result = (v18 + 24 * v5 + 8);
      do
      {
        *(result - 1) = *(v24 - 1);
        v25 = re::StringID::StringID(result, v24);
        v24 += 3;
        result = v25 + 3;
        v23 -= 24;
      }

      while (v23);
    }

    v6[2] = v8;
  }

  ++*(v6 + 6);
LABEL_26:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *re::Optional<re::TypeInfo>::operator=(_BYTE *a1, char *a2)
{
  v3 = *a2;
  if (*a1)
  {
    if (*a2)
    {
      re::TypeInfo::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::TypeInfo::TypeInfo((a1 + 8), (a2 + 8));
  }

  return a1;
}

unint64_t *re::DynamicArray<re::internal::ObjectMemberInfo>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = *a2;
  result = re::StringID::StringID((v5 + 8), (a2 + 8));
  v7 = *(a2 + 24);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 24) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::TypeBuilder::setSharedInfo(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5, unint64_t a6, unint64_t a7)
{
  v8 = a6;
  if (HIDWORD(a6))
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Size (%zu) exceeds limit.", "size <= std::numeric_limits<uint32_t>::max()", "setSharedInfo", 493, a6);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = a7;
    if (!HIDWORD(a7))
    {
      *a1 = a2;
      result = re::StringID::operator=((a1 + 8), a3);
      *(a1 + 24) = a4;
      *(a1 + 40) = v8;
      *(a1 + 44) = v7;
      *(a1 + 72) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 96) = a5;
      return result;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Alignment (%zu) exceeds limit.", "alignment <= std::numeric_limits<uint32_t>::max()", "setSharedInfo", 494, v7);
  result = _os_crash();
  __break(1u);
  return result;
}

_BYTE *re::TypeBuilder::setHasKnownSize(_BYTE *this, uint64_t a2)
{
  if (*this)
  {
    if ((this[28] & 1) == 0)
    {
      this[28] = 1;
    }

    this[29] = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setHasKnownSize", 570, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::beginObjectType(uint64_t a1, uint64_t *a2, int a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (*a7 && (re::TypeRegistry::typeInfo(*a7, a7, v17), (v17[0] & 1) == 0))
  {
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Super class type is missing in type registry. Super classes need to be registered before their sub-classes.", "typeRegistry->typeInfo(superClass)", "beginObjectType", 889);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
    *(a1 + 32) = -1;
    *(a1 + 36) = 0u;
    *(a1 + 52) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 88) = 0xFFFFFFFFLL;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0;
    re::StringID::invalid((a1 + 144));
    *(a1 + 160) = 0;
    *(a1 + 176) = -1;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    result = re::TypeBuilder::setSharedInfo(a1, 8, a2, a3, a4, a5, a6);
    if (*a7)
    {
      v15 = *(a7 + 8);
    }

    *(a1 + 112) = v15;
    *(a1 + 120) = 1;
  }

  return result;
}

void *re::DynamicArray<re::EnumConstant>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::EnumConstant>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = "";
          re::StringID::destroyString(v12);
          v11 += 3;
          v8 = v12 + 2;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = "";
          v14 = v12[2];
          *(v11 + 8) = *(v12 + 6);
          v11[3] = v14;
          re::StringID::destroyString(v12);
          v11 += 5;
          v8 = v12 + 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RenamedObjectMember>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenamedObjectMember>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = "";
          *(v11 + 4) = *(v8 + 4);
          re::StringID::destroyString(v8);
          v8 += 3;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 88 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 104 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 136 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 168 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenamedObjectMember>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenamedObjectMember>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenamedObjectMember>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 176 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 64);
          *(v11 + 3) = *(v8 + 48);
          *(v11 + 4) = v14;
          *(v11 + 1) = v12;
          *(v11 + 2) = v13;
          v15 = *(v8 + 80);
          *(v11 + 92) = *(v8 + 92);
          *(v11 + 5) = v15;
          v16 = *(v8 + 112);
          v11[14] = v11[14] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[14] = *(v8 + 112) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[15] = *(v8 + 120);
          *(v8 + 112) = 0;
          *(v8 + 120) = "";
          LODWORD(v16) = *(v8 + 128);
          *(v11 + 128) = v16;
          if (v16 == 1)
          {
            v11[17] = *(v8 + 136);
          }

          v17 = *(v8 + 160);
          *(v11 + 9) = *(v8 + 144);
          *(v11 + 10) = v17;
          re::StringID::destroyString((v8 + 112));
          v11 += 22;
          v8 += 176;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 112 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v8) = 0;
    goto LABEL_6;
  }

  v7 = result;
  v8 = a3 % *(result + 24);
  v9 = *(*(result + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_6:
    v9 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  result = re::internal::TypeAttributeKey::operator==((*(result + 16) + 56 * v9 + 8), a2);
  if (result)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v11 = *(v7 + 16);
  v12 = *(v11 + 56 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = re::internal::TypeAttributeKey::operator==((v11 + 56 * v12 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v7 + 16);
      v12 = *(v11 + 56 * v13) & 0x7FFFFFFF;
      v9 = v13;
      if (v12 == 0x7FFFFFFF)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    v6 = v13;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 12) = v6;
  *(a4 + 16) = v9;
  return result;
}

BOOL re::internal::TypeAttributeKey::operator==(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 == *a2 && a1[1] == WORD1(v2) && ((*(a1 + 1) ^ HIDWORD(v2)) & 0xFFFFFF) == 0 && (v3 = a2[1], a1[4] == v3) && a1[5] == WORD1(v3) && ((*(a1 + 3) ^ HIDWORD(v3)) & 0xFFFFFF) == 0)
  {
    return *(a1 + 4) == *(a2 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Hash<re::internal::TypeAttributeKey>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*(a2 + 8) ^ (*(a2 + 8) >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = 73244475 * (*(a2 + 16) ^ HIWORD(*(a2 + 16)));
  return ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (((v5 << 6) + (v5 >> 2) + ((73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16)) - 0x61C8864680B583E9) ^ v5)) ^ v3;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::move(a1, v9);
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 24);
        *(result + 8) = *(v8 + 8);
        *(result + 24) = v9;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

void re::internal::typeRegistryAllocator(re::internal *this)
{
  if ((atomic_load_explicit(&qword_27FEB83F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FEB83F8))
  {
    byte_27FEB8420 = 0;
    qword_27FEB8410 = &unk_2873F3D28;
    unk_27FEB8418 = "TypeInfo allocator";

    __cxa_guard_release(&qword_27FEB83F8);
  }
}

void anonymous namespace::getOrCreateGlobalTypeRegistry(_anonymous_namespace_ *this, const re::IntrospectionBase *a2, char a3)
{
  v4 = a2;
  v5 = this;
  if ((atomic_load_explicit(&qword_27FEB8400, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
    if ((v5 & 1) != 0 || v4)
    {
      if (_MergedGlobals_0)
      {
        return;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(&v39);
      v6 = _MergedGlobals_0;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(&v39);
      if (v6)
      {
        return;
      }
    }

    if ((a3 & 1) == 0)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to create the global type registry when it cannot be created.", "canCreateRegistry", "getOrCreateGlobalTypeRegistry", 44);
      _os_crash();
      __break(1u);
      goto LABEL_51;
    }

    if (v5)
    {
      goto LABEL_11;
    }

    if (!v4)
    {
      break;
    }

LABEL_51:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to lock introspectionSharedMutex when it is already locked. Forcing a crash because this would hang otherwise.", "!threadOwnsSharedLock", "getOrCreateGlobalTypeRegistry", 49);
    _os_crash();
    __break(1u);
LABEL_52:
    this = __cxa_guard_acquire(&qword_27FEB8400);
    if (this)
    {
      re::internal::typeRegistryAllocator(this);
      __cxa_guard_release(&qword_27FEB8400);
    }
  }

  v7 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v7);
LABEL_11:
  if ((_MergedGlobals_0 & 1) == 0)
  {
    _MergedGlobals_0 = 1;
    re::introspect_BOOL(1, a2);
    re::introspect_char(1, v8);
    re::introspect_double(1, v9);
    re::introspect_float(1, v10);
    re::introspect_short(1, v11);
    re::introspect_int(1, v12);
    re::introspect_long(1, v13);
    re::introspect_size_t(1, v14);
    re::introspect_int64_t(1, v15);
    re::introspect_uint8_t(1, v16);
    re::introspect_uint16_t(1, v17);
    re::introspect_uint32_t(1, v18);
    re::introspect_uint64_t(1, v19);
    if ((atomic_load_explicit(&qword_27FEB8408, memory_order_acquire) & 1) == 0)
    {
      v34 = __cxa_guard_acquire(&qword_27FEB8408);
      if (v34)
      {
        re::IntrospectionPointer::IntrospectionPointer(v34);
        __cxa_guard_release(&qword_27FEB8408);
      }
    }

    if ((byte_27FEB83F1 & 1) == 0)
    {
      byte_27FEB83F1 = 1;
      v21 = re::introspect_char(1, v20);
      ArcSharedObject::ArcSharedObject(qword_27FEB8428, 0);
      qword_27FEB8428[2] = 0x800000001;
      LODWORD(qword_27FEB8428[3]) = 8;
      WORD2(qword_27FEB8428[3]) = 0;
      *&xmmword_27FEB8448 = 0;
      *(&xmmword_27FEB8448 + 1) = 0xFFFFFFFFLL;
      qword_27FEB8428[0] = &unk_2873F3DD0;
      unk_27FEB8458 = v21;
      unk_27FEB8460 = 0;
      re::IntrospectionRegistry::add(v22, v23);
      re::getPrettyTypeName(qword_27FEB8428, &v39);
      if (BYTE8(v39))
      {
        v25 = v40;
      }

      else
      {
        v25 = &v39 + 9;
      }

      if (v39 && (BYTE8(v39) & 1) != 0)
      {
        (*(*v39 + 40))();
      }

      if (v41 >> 1 == 94623636 && (v42 == "char*" || !strcmp(v42, "char*")))
      {
        v27 = v39;
      }

      else
      {
        v39 = *(v21 + 32);
        v27 = v43;
      }

      xmmword_27FEB8448 = v27;
      if (v41)
      {
        if (v41)
        {
        }
      }
    }

    v41 = 218827000;
    v42 = "short";
    *&v43 = 0x2CE93A4A92;
    *(&v43 + 1) = "int16_t";
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v41)
    {
      if (v41)
      {
      }
    }

    v41 = 208862;
    v42 = "int";
    *&v43 = 0x2CE93BFE06;
    *(&v43 + 1) = "int32_t";
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v41)
    {
      if (v41)
      {
      }
    }

    re::StackScratchAllocator::StackScratchAllocator(&v41);
    re::TypeBuilder::TypeBuilder(&v39, &v41);
    *&v43 = 0x258C98EAAF29A10ALL;
    *(&v43 + 1) = "CallbackSerializerAttribute";
    v38[0] = 0;
    v38[1] = 0xFFFFFFFFLL;
    v30 = re::TypeBuilder::beginObjectType(&v39, &v43, 1, 1, 8uLL, 8uLL, v38);
    if (v43)
    {
      if (v43)
      {
      }
    }

    *&v43 = 0xAE8345F9D646D604;
    *(&v43 + 1) = "ComplexVersioningAttribute";
    v36[0] = 0;
    v36[1] = 0xFFFFFFFFLL;
    v31 = re::TypeBuilder::beginObjectType(&v39, &v43, 1, 1, 8uLL, 8uLL, v36);
    if (v43)
    {
      if (v43)
      {
      }
    }

    re::TypeBuilder::~TypeBuilder(&v39, v32);
    re::StackScratchAllocator::~StackScratchAllocator(&v41);
  }

  if ((v5 & 1) == 0)
  {
    v33 = re::introspectionSharedMutex(this);
    std::__shared_mutex_base::unlock(v33);
  }
}

re::IntrospectionSharedLock *re::IntrospectionSharedLock::IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v2 = re::IntrospectionSharedLock::m_sharedLockLevel();
  v3 = v2;
  v4 = *v2;
  if (!*v2)
  {
    v5 = re::introspectionSharedMutex(v2);
    std::__shared_mutex_base::lock_shared(v5);
    v4 = *v3;
  }

  *v3 = v4 + 1;
  return this;
}

void re::IntrospectionSharedLock::~IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v1 = re::IntrospectionSharedLock::m_sharedLockLevel();
  if ((*v1)-- == 1)
  {
    v3 = re::introspectionSharedMutex(v1);
    std::__shared_mutex_base::unlock_shared(v3);
  }
}

uint64_t re::IntrospectionPointer::IntrospectionPointer(re::IntrospectionPointer *this)
{
  ArcSharedObject::ArcSharedObject(&unk_27FEB8428, 0);
  *(v1 + 22) = 0;
  v1[2] = 0;
  v1[4] = 0;
  v1[5] = 0xFFFFFFFFLL;
  *v1 = &unk_2873F3DD0;
  v1[7] = 0;
  v2 = (v1 + 6);

  return re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
}

void re::IntrospectionPointer::~IntrospectionPointer(re::IntrospectionPointer *this)
{
  *this = &unk_2873F3DD0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3DD0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::IntrospectionPointer::childInfo(re::IntrospectionPointer *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 976, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::SerializedReference<re::IntrospectionBase const*>::reset(uint64_t result)
{
  *result = 0;
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    v4 = re::DynamicString::deinit(*(result + 8));
    result = (*(*v3 + 40))(v3, v1, v4);
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t *re::foundationIntrospectionLogObjects(re *this)
{
  {
    re::foundationIntrospectionLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Introspection");
  }

  return &re::foundationIntrospectionLogObjects(void)::logObjects;
}

uint64_t re::TypeInfo::TypeInfo(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = a2;
  *(result + 12) = a3;
  *(result + 8) = *(a2 + 24);
  if ((a3 - 1) >= 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "TypeInfo", 46, v4, v5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result + 16) = a4;
  }

  return result;
}

uint64_t re::TypeInfo::TypeInfo(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v4 = *(a2 + 12);
  *(result + 12) = v4;
  if ((v4 - 1) >= 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "TypeInfo", 66, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

uint64_t re::TypeInfo::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    v4 = *(a2 + 12);
    *(result + 12) = v4;
    if ((v4 - 1) >= 9)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "operator=", 91, v2, v3);
      result = _os_crash();
      __break(1u);
    }

    else
    {
      *(result + 16) = *(a2 + 16);
    }
  }

  return result;
}

void re::TypeInfo::construct(re::TypeInfo *this, void *a2, re::Allocator *a3, void *a4)
{
  *&v32[9] = *MEMORY[0x277D85DE8];
  v8 = *(this + 2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *MEMORY[0x277D85DE8];

    v9(a2, this);
    return;
  }

  v11 = *(this + 12);
  if (v11 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v11 != 3)
      {
        if (v11 == 4)
        {
          re::TypeInfo::TypeInfo(v29, this);
          re::TypeRegistry::typeInfo(v29[0], *(v30 + 80), buf);
          re::TypeInfo::TypeInfo(v28, &v32[1]);
          if ((*(v30 + 92) & 0xFFFFFF) != 0)
          {
            re::ArrayAccessor::reset(v29, a2, a3, 0);
          }

          else
          {
            v23 = re::ArrayAccessor::size(v29, a2);
            if (v23)
            {
              v24 = v23;
              for (i = 0; i != v24; ++i)
              {
                v26 = re::ArrayAccessor::elementAtUnchecked(v29, a2, i);
                re::TypeInfo::construct(v28, v26, a3, a4);
              }
            }
          }

          goto LABEL_37;
        }

LABEL_40:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "construct", 385);
        _os_crash();
        __break(1u);
        return;
      }
    }

    else if (v11 != 1)
    {
      if (v11 != 2)
      {
        goto LABEL_40;
      }

      v15 = re::TypeInfo::enumConstants(this);
      if (v16)
      {
        v17 = v15;
        v18 = 0;
        while (*(v15 + v18))
        {
          v18 += 24;
          if (24 * v16 == v18)
          {
            re::Slice<re::EnumConstant>::first(v16, v16);
            v19 = *(*(this + 2) + 8);
            v20 = *MEMORY[0x277D85DE8];

            memcpy(a2, v17, v19);
            return;
          }
        }
      }

      v8 = *(this + 2);
    }
  }

  else
  {
    if (*(this + 12) <= 7u)
    {
      if (v11 - 5 < 2)
      {
        v12 = *re::foundationIntrospectionLogObjects(this);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(*this + 96, **(this + 2));
          if (!v13)
          {
          }

          v14 = v13[1];
          *buf = 136315138;
          *v32 = v14;
          _os_log_impl(&dword_26168F000, v12, OS_LOG_TYPE_DEFAULT, "No explicit constructor set for %s.", buf, 0xCu);
        }

        bzero(a2, *(*(this + 2) + 8));
LABEL_37:
        v27 = *MEMORY[0x277D85DE8];
        return;
      }

      if (v11 == 7)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Tagged unions can't be created directly. They need to be embedded in a class/struct.", "!Unreachable code", "construct", 375);
        _os_crash();
        __break(1u);
      }

      goto LABEL_40;
    }

    if (v11 != 8 && v11 != 9)
    {
      goto LABEL_40;
    }
  }

  v21 = *(v8 + 8);
  v22 = *MEMORY[0x277D85DE8];

  bzero(a2, v21);
}

void re::TypeInfo::releaseInstance(re::TypeInfo *this, void **a2, re::Allocator *a3, void *a4)
{
  v5 = *(this + 2);
  if ((*(v5 + 49) & 2) != 0)
  {
    v9 = *(v5 + 40);
    if (v9)
    {

      v9(a2);
    }
  }

  else
  {
    re::TypeInfo::destruct(this, a2, a3, a4);
    if ((*(*(this + 2) + 48) & 0x20) != 0)
    {

      free(a2);
    }

    else
    {
      v8 = *(*a3 + 40);

      v8(a3, a2);
    }
  }
}

void re::TypeInfo::destruct(re::TypeInfo *this, void **a2, re::Allocator *a3, void *a4)
{
  *&v23[9] = *MEMORY[0x277D85DE8];
  v8 = *(*(this + 2) + 24);
  if (!v8)
  {
    v10 = *(this + 12);
    if (v10 > 4)
    {
      if (v10 - 5 < 2)
      {
        v11 = *re::foundationIntrospectionLogObjects(this);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(*this + 96, **(this + 2));
          if (!v12)
          {
          }

          v13 = v12[1];
          *buf = 136315138;
          *v23 = v13;
          _os_log_impl(&dword_26168F000, v11, OS_LOG_TYPE_DEFAULT, "No explicit destructor set for %s.", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v10 - 8 < 2)
      {
        goto LABEL_20;
      }

      if (v10 != 7)
      {
        goto LABEL_25;
      }

      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Tagged unions can't be created directly. They need to be embedded in a class/struct.", "!Unreachable code", "destruct", 471);
      _os_crash();
      __break(1u);
    }

    if (v10 - 1 >= 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {
          re::TypeInfo::TypeInfo(v20, this);
          re::TypeRegistry::typeInfo(v20[0], *(v21 + 80), buf);
          re::TypeInfo::TypeInfo(v19, &v23[1]);
          if ((*(v21 + 92) & 0xFFFFFF) != 0)
          {
            re::ArrayAccessor::reset(v20, a2, a3, 0);
          }

          else
          {
            v15 = re::ArrayAccessor::size(v20, a2);
            if (v15)
            {
              v16 = v15;
              for (i = 0; i != v16; ++i)
              {
                v18 = re::ArrayAccessor::elementAtUnchecked(v20, a2, i);
                re::TypeInfo::destruct(v19, v18, a3, a4);
              }
            }
          }

          goto LABEL_20;
        }

LABEL_25:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "destruct", 481);
        _os_crash();
        __break(1u);
        return;
      }

      re::TypeInfo::TypeInfo(buf, this);
      (*(*&v23[3] + 96))(a2, 0);
    }

LABEL_20:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *MEMORY[0x277D85DE8];

  v8(a2, this);
}

uint64_t re::TypeInfo::enumConstants(re::TypeInfo *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (*(v1 + 92))
  {
    v2 = *(v1 + 88);
    if (*(*this + 344) <= v2)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = *(*this + 360) + 24 * v2;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::Slice<re::EnumConstant>::first(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeInfo::rootClass@<X0>(re::TypeInfo *this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  for (i = *this; (*(v4 + 84) & 0xFFFFFF) != 0; v4 = i[80] + 176 * v6)
  {
    v6 = *re::DataArray<re::internal::TypeInfoIndex>::get((i + 4), *(v4 + 80)) & 0xFFFFFFLL;
    i = *this;
    if (*(*this + 624) <= v6)
    {
      memset(v9, 0, sizeof(v9));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  re::TypeRegistry::typeInfo(i, *v4, v9);
  result = re::TypeInfo::TypeInfo(a2, v9 + 8);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (a1[1])
    {
      result = (*(*result + 40))(result, a1[2]);
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = 0;
  }

  return result;
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 4 * a2;
  }

  else
  {
    return 0;
  }
}

void globalIntrospectionTable(void)
{
  {
    if (v0)
    {
    }
  }
}

BOOL re::IntrospectionRegistry::add(unint64_t this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  v14 = 0;
  v15 = 0;
  v12 = re::introspectionAllocator(v3);
  v13 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::appendPrettyTypeName(this, &v12, v4);
  os_unfair_lock_lock(&dword_27FEB7E18);
  v5 = re::Hash<re::DynamicString>::operator()(&v16, &v12);
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&globalIntrospectionTable(void)::table, &v12, v5, &v16);
  v6 = v17;
  if (v17 != 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v16 = this;
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(&globalIntrospectionTable(void)::table, &v12, &v16);
  v16 = this;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (!dword_27FEB7E00)
  {
    LODWORD(v9) = 0;
    goto LABEL_9;
  }

  v9 = v8 % dword_27FEB7E00;
  v10 = *(qword_27FEB7DF0 + 4 * v9);
  if (v10 == 0x7FFFFFFF)
  {
LABEL_9:
    re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(&unk_27FEB7DE8, v9, v8, &v16, &v16);
    ++dword_27FEB7E10;
    goto LABEL_10;
  }

  while (*(qword_27FEB7DF8 + 24 * v10 + 16) != this)
  {
    LODWORD(v10) = *(qword_27FEB7DF8 + 24 * v10 + 8) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  os_unfair_lock_unlock(&dword_27FEB7E18);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  return v6 == 0x7FFFFFFF;
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

void re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

void anonymous namespace::IntrospectionRegistryTable::IntrospectionRegistryTable(_anonymous_namespace_::IntrospectionRegistryTable *this)
{
  v1 = re::introspectionAllocator(this);
  globalIntrospectionTable(void)::table = 0u;
  unk_27FEB7DC8 = 0u;
  dword_27FEB7DD8 = 0;
  unk_27FEB7DDC = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&globalIntrospectionTable(void)::table, v1, 3);
  v3 = re::introspectionAllocator(v2);
  unk_27FEB7DE8 = 0u;
  *&qword_27FEB7DF8 = 0u;
  dword_27FEB7E08 = 0;
  *algn_27FEB7E0C = 0x7FFFFFFFLL;
  re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(&unk_27FEB7DE8, v3, 3);
  dword_27FEB7E18 = 0;
}

void re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 56 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 56 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

unint64_t re::Hash<re::DynamicString>::operator()(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    v5 = a2 + 9;
    v6 = *(a2 + 16);
    if (v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    MurmurHash3_x64_128(v7, v4, 0, v10);
    result = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 != *(a1 + 24))
    {
LABEL_29:
      *(a1 + 32) = v6 + 1;
      v30 = *(a1 + 16);
      v31 = *(v30 + 56 * v5);
      goto LABEL_30;
    }

    v7 = *(a1 + 28);
    v8 = 2 * v7;
    v9 = *a1;
    if (!*a1)
    {
      if (v8)
      {
        v32 = 2 * v7;
      }

      else
      {
        v32 = 3;
      }

      goto LABEL_28;
    }

    if (v8)
    {
      v10 = v5 == v8;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && (v7 & 0x80000000) == 0)
    {
      memset(v36, 0, 36);
      *&v36[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v36, v9, v8);
      v11 = *a1;
      v12 = *v36;
      *v36 = *a1;
      *a1 = v12;
      v13 = *&v36[16];
      v14 = *(a1 + 16);
      *&v36[16] = v14;
      *(a1 + 16) = v13;
      v15 = *&v36[24];
      *&v36[24] = *(a1 + 24);
      DWORD2(v12) = *&v36[32];
      *(a1 + 24) = v15;
      ++*&v36[40];
      v16 = DWORD2(v12);
      if (DWORD2(v12))
      {
        v17 = 0;
        v18 = 0;
        do
        {
          if ((*(v14 + v17) & 0x80000000) != 0)
          {
            v19 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v14 + v17 + 48) % *(a1 + 24));
            v20 = (*&v36[16] + v17);
            *(v19 + 24) = 0u;
            *(v19 + 8) = 0u;
            *(v19 + 32) = v20[4];
            v21 = v20[2];
            *(v19 + 8) = v20[1];
            v20[1] = 0;
            v22 = v20[3];
            v20[4] = 0;
            v24 = *(v19 + 16);
            v23 = *(v19 + 24);
            *(v19 + 16) = v21;
            *(v19 + 24) = v22;
            v20[2] = v24;
            v20[3] = v23;
            v14 = *&v36[16];
            *(v19 + 40) = *(*&v36[16] + v17 + 40);
            v16 = *&v36[32];
          }

          ++v18;
          v17 += 56;
        }

        while (v18 < v16);
        v25 = *v36;
        if (!*v36)
        {
          goto LABEL_28;
        }

        if (v16)
        {
          v26 = 0;
          for (i = 0; i < v16; ++i)
          {
            v28 = *&v36[16];
            v29 = *(*&v36[16] + v26);
            if (v29 < 0)
            {
              *(*&v36[16] + v26) = v29 & 0x7FFFFFFF;
              re::DynamicString::deinit((v28 + v26 + 8));
              v16 = *&v36[32];
            }

            v26 += 56;
          }

          v25 = *v36;
        }

        goto LABEL_27;
      }

      v25 = v11;
      if (v11)
      {
LABEL_27:
        (*(*v25 + 40))(v25, *&v36[8]);
      }
    }

LABEL_28:
    a2 = a3 % *(a1 + 24);
    v6 = *(a1 + 32);
    goto LABEL_29;
  }

  v30 = *(a1 + 16);
  v31 = *(v30 + 56 * v5);
  *(a1 + 36) = v31 & 0x7FFFFFFF;
LABEL_30:
  v33 = v30 + 56 * v5;
  *v33 = v31 | 0x80000000;
  v34 = *(a1 + 8);
  *v33 = *(v34 + 4 * a2) | 0x80000000;
  *(v34 + 4 * a2) = v5;
  *(v33 + 48) = a3;
  ++*(a1 + 28);
  return v30 + 56 * v5;
}

uint64_t re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, *&v13[16] + v10 + 16);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

re::IntrospectionBasic *re::IntrospectionBasic::IntrospectionBasic(re::IntrospectionBasic *this, const char *a2, int a3, int a4, char a5, char a6)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v12 + 16) = 0;
  *(v12 + 20) = a3;
  *(v12 + 24) = a4;
  *(v12 + 28) = a5;
  *(v12 + 29) = a5 & a6;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xFFFFFFFFLL;
  *v12 = &unk_2873F3E40;
  *(v12 + 48) = a2;
  *(v12 + 56) = 0;
  if (!strcmp(a2, "BOOL"))
  {
    v14 = 1;
    goto LABEL_26;
  }

  if (!strcmp(a2, "char"))
  {
    v14 = 2;
    goto LABEL_26;
  }

  if (!strcmp(a2, "short"))
  {
    v14 = 3;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int"))
  {
    v14 = 4;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int64_t"))
  {
    v14 = 5;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint8_t"))
  {
    v14 = 6;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint16_t"))
  {
    v14 = 7;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint32_t"))
  {
    v14 = 8;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint64_t"))
  {
    v14 = 9;
    goto LABEL_26;
  }

  if (!strcmp(a2, "float"))
  {
    v14 = 10;
    goto LABEL_26;
  }

  if (!strcmp(a2, "double"))
  {
    v14 = 11;
    goto LABEL_26;
  }

  v13 = a3 - 1;
  if (a3 - 1) <= 7 && ((0x8Bu >> v13))
  {
    v14 = dword_261710680[v13];
LABEL_26:
    *(this + 14) = v14;
  }

  return this;
}

void *re::introspect_BOOL(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_BOOL(BOOL)::info, "BOOL", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_BOOL(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  re::introspect_BOOL(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_BOOL(BOOL)::info, a2);
  v8[0] = 6059476;
  v8[1] = "BOOL";
  xmmword_27FEB7E48 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_BOOL(BOOL)::info;
}

std::__shared_mutex_base *re::introspectionSharedMutex(re *this)
{
  {
    std::__shared_mutex_base::__shared_mutex_base(&re::introspectionSharedMutex(void)::mutex);
  }

  return &re::introspectionSharedMutex(void)::mutex;
}

void re::TypeBuilderHelper::registerBasic<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x100000001uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_char(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_char(BOOL)::info, "char", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_char(BOOL)::isInitialized)
    {
      return &re::introspect_char(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_char(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_char(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_char(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_char(BOOL)::info;
    }
  }

  re::introspect_char(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_char(BOOL)::info, a2);
  v7[0] = 6104748;
  v7[1] = "char";
  xmmword_27FEB7E98 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_char(BOOL)::info;
}

void *re::introspect_float(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_float(BOOL)::info, "float", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_float(BOOL)::isInitialized)
    {
      return &re::introspect_float(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_float(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_float(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_float(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_float(BOOL)::info;
    }
  }

  re::introspect_float(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_float(BOOL)::info, a2);
  v8[0] = 195052728;
  v8[1] = "float";
  xmmword_27FEB7EE8 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_float(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_double(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_double(BOOL)::info, "double", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_double(BOOL)::isInitialized)
    {
      return &re::introspect_double(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_double(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_double(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_double(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_double(BOOL)::info;
    }
  }

  re::introspect_double(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_double(BOOL)::info, a2);
  v8[0] = 0x161EEF7A2;
  v8[1] = "double";
  xmmword_27FEB7F38 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_double(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_short(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_short(BOOL)::info, "short", 2, 2, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_short(BOOL)::isInitialized)
    {
      return &re::introspect_short(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_short(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_short(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_short(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_short(BOOL)::info;
    }
  }

  re::introspect_short(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_short(BOOL)::info, a2);
  v8[0] = 218827000;
  v8[1] = "short";
  xmmword_27FEB7F88 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_short(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<short>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x200000002uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_int(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int(BOOL)::info, "int", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int(BOOL)::isInitialized)
    {
      return &re::introspect_int(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_int(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_int(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int(BOOL)::info;
    }
  }

  re::introspect_int(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int(BOOL)::info, a2);
  v8[0] = 208862;
  v8[1] = "int";
  xmmword_27FEB7FD8 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_long(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_long(BOOL)::info, "long", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_long(BOOL)::isInitialized)
    {
      return &re::introspect_long(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_long(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_long(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_long(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_long(BOOL)::info;
    }
  }

  re::introspect_long(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_long(BOOL)::info, a2);
  v8[0] = 6655224;
  v8[1] = "long";
  xmmword_27FEB8028 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_long(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_size_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_size_t(BOOL)::info, "size_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_size_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_size_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  re::introspect_size_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_size_t(BOOL)::info, a2);
  v8[0] = 0x1947BDF6CLL;
  v8[1] = "size_t";
  xmmword_27FEB8078 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_size_t(BOOL)::info;
}

void *re::introspect_int64_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int64_t(BOOL)::info, "int64_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_int64_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  re::introspect_int64_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int64_t(BOOL)::info, a2);
  v8[0] = 0x2CE93EC744;
  v8[1] = "int64_t";
  xmmword_27FEB80C8 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int64_t(BOOL)::info;
}

void *re::introspect_uint8_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint8_t(BOOL)::info, "uint8_t", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint8_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  re::introspect_uint8_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint8_t(BOOL)::info, a2);
  v8[0] = 0x31CD534126;
  v8[1] = "uint8_t";
  xmmword_27FEB8118 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint8_t(BOOL)::info;
}

void *re::introspect_uint16_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint16_t(BOOL)::info, "uint16_t", 2, 2, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint16_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint16_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint16_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint16_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint16_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint16_t(BOOL)::info;
    }
  }

  re::introspect_uint16_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint16_t(BOOL)::info, a2);
  v8[0] = 0x607DD0D4E68;
  v8[1] = "uint16_t";
  xmmword_27FEB8168 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint16_t(BOOL)::info;
}

void *re::introspect_uint32_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint32_t(BOOL)::info, "uint32_t", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint32_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint32_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint32_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint32_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint32_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint32_t(BOOL)::info;
    }
  }

  re::introspect_uint32_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint32_t(BOOL)::info, a2);
  v8[0] = 0x607DD0F01DCLL;
  v8[1] = "uint32_t";
  xmmword_27FEB81B8 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint32_t(BOOL)::info;
}

void *re::introspect_uint64_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint64_t(BOOL)::info, "uint64_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint64_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint64_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint64_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint64_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint64_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint64_t(BOOL)::info;
    }
  }

  re::introspect_uint64_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint64_t(BOOL)::info, a2);
  v8[0] = 0x607DD11CB1ALL;
  v8[1] = "uint64_t";
  xmmword_27FEB8208 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint64_t(BOOL)::info;
}

uint64_t re::appendPrettyTypeName(uint64_t a1, const re::IntrospectionBase *a2, re::DynamicString *a3)
{
  switch(*(a1 + 16))
  {
    case 0:
    case 8:
    case 9:
    case 0xB:
      v5 = *(a1 + 48);
      v6 = strlen(v5);
      v7 = a2;
      v8 = v5;
      goto LABEL_15;
    case 1:
      re::appendPrettyTypeName(*(a1 + 48), a2, a3);
      v8 = "*";
      goto LABEL_14;
    case 2:
      re::appendPrettyTypeName(*(a1 + 48), a2, a3);
      return re::DynamicString::appendf(a2, "[%d]", *(a1 + 64));
    case 3:
      v9 = "DynamicArray<";
      v10 = a2;
      v11 = 13;
      goto LABEL_12;
    case 4:
      v9 = "FixedArray<";
      v10 = a2;
      v11 = 11;
      goto LABEL_12;
    case 5:
      v9 = "DataArray<";
      v10 = a2;
      v11 = 10;
      goto LABEL_12;
    case 6:
      v8 = "DynamicString";
      v7 = a2;
      v6 = 13;
      goto LABEL_15;
    case 7:
      re::DynamicString::append(a2, "HashTable<", 0xAuLL);
      re::appendPrettyTypeName(*(a1 + 48), a2, v12);
      re::DynamicString::append(a2, ",", 1uLL);
      v14 = *(a1 + 64);
      goto LABEL_13;
    case 0xA:
      v8 = "StringID";
      v7 = a2;
      v6 = 8;
      goto LABEL_15;
    case 0xD:
      v9 = "Optional<";
      v10 = a2;
      v11 = 9;
LABEL_12:
      re::DynamicString::append(v10, v9, v11);
      v14 = *(a1 + 48);
LABEL_13:
      re::appendPrettyTypeName(v14, a2, v13);
      v8 = ">";
LABEL_14:
      v7 = a2;
      v6 = 1;
LABEL_15:

      result = re::DynamicString::append(v7, v8, v6);
      break;
    default:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "appendPrettyTypeName", 618);
      result = _os_crash();
      __break(1u);
      break;
  }

  return result;
}

uint64_t re::getPrettyTypeName@<X0>(_anonymous_namespace_ *a1@<X0>, const re::IntrospectionBase *a2@<X8>)
{
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);

  return re::appendPrettyTypeName(a1, a2, v4);
}

re::IntrospectionBase *re::introspectionAllocPointer(re *a1, _anonymous_namespace_ *a2, re::Allocator *a3)
{
  v6 = *(a3 + 5);
  v7 = *(a3 + 6);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = (*(*a1 + 32))(a1, v6, v7);
  re::introspectionCallConstructor(a2, a3, v8);
  re::introspectionInitElement(a1, v9, a3, v8);
  return v8;
}

void re::introspectionDestroyAllocatedMemory(re::DynamicString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (v7 <= 4)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v13 = *a1;
        if (*a1)
        {
          v14 = *(a4 + 48);

          re::introspectionReleasePointer();
        }
      }

      else if (v7 == 2 && *(a4 + 64) >= 1)
      {
        v9 = 0;
        do
        {
          re::introspectionDestroyAllocatedMemory(a1 + *(*(a4 + 48) + 20) * v9++, a2, a3);
        }

        while (v9 < *(a4 + 64));
      }

      return;
    }

    if (v7 == 3)
    {
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;
    }

    else
    {
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;
    }

LABEL_36:
    v10(v11, v12);
    return;
  }

  if (v7 <= 6)
  {
    if (v7 != 5)
    {

      re::DynamicString::deinit(a1);
      return;
    }

    v10 = *(*a4 + 56);
    v11 = a4;
    v12 = a1;

    goto LABEL_36;
  }

  switch(v7)
  {
    case 7:
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;

      goto LABEL_36;
    case 8:
      v15 = *(a4 + 96);
      if (v15)
      {

        v15();
      }

      else
      {
        re::PolymorphicData::makeWithPointer(a4, a1, &__src);
        v16 = v24;
        v17 = a4;
        if (v24)
        {
          v17 = a4;
          if (v23)
          {
            v17 = a4;
            if (__src)
            {
              v21 = 0;
              memcpy(&v21, __src, *(v23 + 20));
              v18 = *v16;
              v17 = a4;
              if (v18)
              {
                v19 = (*(v16 + 1) + 24);
                while (*v19 != v21)
                {
                  v19 += 5;
                  if (!--v18)
                  {
                    v17 = a4;
                    goto LABEL_50;
                  }
                }

                v17 = *(v19 - 2);
              }
            }
          }
        }

LABEL_50:
        v20 = *(v17 + 80);
        if (v20)
        {
          v20(a4, a3, a1);
        }
      }

      break;
    case 10:

      re::StringID::destroyString(a1);
      break;
  }
}