void *amber::NBitVector<1u>::~NBitVector(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = &unk_2A1DE0AA8;
  amber::Buffer::~Buffer((a1 + 2), a2, a3, a4, a5, a6, a7);
  return a1;
}

uint64_t amber::SharedBlockCache::Shard::writeSync(amber::BlockCache **this, uint64_t a2, const amber::Range *a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v17 = &off_2A1DDFC68;
  v18 = *(a4 + 8);
  v7 = *a3;
  if (*a3 >= *(a3 + 1))
  {
    return 0;
  }

  v10 = a2 << 48;
  while (1)
  {
    v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v7 | v10)) ^ ((0xC6A4A7935BD1E995 * (v7 | v10)) >> 47));
    if ((((v11 >> 47) ^ v11) & 0xF) == *(this + 2))
    {
      if ((amber::BlockCache::write(this[6], v7 | v10, &v17) & 0x80000000) != 0)
      {
        v14 = "mem cache write";
        v15 = 732;
        goto LABEL_11;
      }

      if ((amber::BlockCache::write(this[11], v7 | v10, &v17) & 0x80000000) != 0)
      {
        break;
      }
    }

    v12 = *(this + 4);
    if (*(&v18 + 1) < v12)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    *&v18 = v18 + v12;
    *(&v18 + 1) -= v12;
    if (++v7 >= *(a3 + 1))
    {
      return 0;
    }
  }

  v14 = "file cache write";
  v15 = 734;
LABEL_11:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "writeSync", v15, 0, v14, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::SharedBlockCache::Shard::removeSync(amber::SharedBlockCache::Shard *this, int a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  amber::BlockCache::appendIndices(*(this + 6), &__p);
  amber::BlockCache::appendIndices(*(this + 11), &__p);
  v4 = __p;
  v5 = v11;
  if (__p == v11)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      if (a2 == HIWORD(*v4))
      {
        if ((amber::BlockCache::remove(*(this + 6), *v4) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "removeSync", 0x2F2, 0, "mem cache remove", v6);
          goto LABEL_9;
        }

        if ((amber::BlockCache::remove(*(this + 11), *v4) & 0x80000000) != 0)
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        goto LABEL_6;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "removeSync", 0x2F3, 0, "file cache remove", v7);
LABEL_9:
    v8 = 0xFFFFFFFFLL;
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_296968450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::SharedBlockCache::Shard::run(amber::SharedBlockCache::Shard *this)
{
  if (*(this + 56) != *(this + 55))
  {
    v14 = *(this + 55);
    amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::insertFirst(this + 136);
  }

  v14 = 0;
  if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 288, &v14) & 0x80000000) != 0)
  {
    v11 = "queue";
    v12 = 776;
LABEL_20:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "run", v12, 0, v11, v4);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "run", 0x318, 0, "Shard thread terminating with internal error", v13);
    return;
  }

  v5 = *v14;
  if (*v14 <= 2)
  {
    if (v5 == 1)
    {
      Sync = amber::SharedBlockCache::Shard::readSync(this, *(v14 + 4), (v14 + 56), v14 + 8, (v14 + 72), *(v14 + 88), *(v14 + 96));
      goto LABEL_11;
    }

    if (v5 == 2)
    {
      Sync = amber::SharedBlockCache::Shard::writeSync(this, *(v14 + 4), (v14 + 56), (v14 + 32), v2, v3, v4);
LABEL_11:
      v7 = v14;
      if (Sync < 0)
      {
        v8 = *(v14 + 112);
        if (v8)
        {
          v9 = 0;
          atomic_compare_exchange_strong(v8, &v9, 1u);
          v7 = v14;
        }
      }

      v10 = *(v7 + 104);
      if (v10)
      {
        amber::Sem::release(v10);
        v7 = v14;
      }

      *v7 = 0;
      amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::insertFirst(this + 136);
    }

LABEL_19:
    v11 = "invalid command";
    v12 = 783;
    goto LABEL_20;
  }

  if (v5 == 3)
  {
    Sync = amber::SharedBlockCache::Shard::removeSync(this, *(v14 + 4));
    goto LABEL_11;
  }

  if (v5 != 4)
  {
    goto LABEL_19;
  }
}

uint64_t AmberSharedCacheCreate(amber::SharedBlockCache *a1, uint64_t a2)
{
  v3 = amber::SharedBlockCache::create(a1, a2);
  if (!v3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "AmberSharedCacheCreate", 0x325, 0, "AmberSharedCacheCreate", v2);
  }

  return v3;
}

uint64_t AmberSharedCacheDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t amber::SharedBlockCache::SharedBlockCache(uint64_t this, int a2, unsigned int a3)
{
  *this = &unk_2A1DE08E0;
  *(this + 8) = &unk_2A1DE0918;
  *(this + 16) = a2;
  *(this + 24) = 0;
  *(this + 32) = a3;
  *(this + 40) = 0;
  *(this + 64) = 0;
  *(this + 56) = 0;
  *(this + 48) = this + 56;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 850045863;
  *(this + 128) = 0u;
  *(this + 144) = 0u;
  *(this + 160) = 0u;
  *(this + 176) = 0;
  *(this + 184) = &unk_2A1DE09B8;
  *(this + 192) = 0;
  *(this + 200) = this + 200;
  *(this + 208) = this + 200;
  *(this + 216) = xmmword_296A14210;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0;
  *(this + 288) = 1018212795;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0;
  *(this + 336) = &unk_2A1DE09B8;
  *(this + 344) = 0;
  *(this + 352) = this + 352;
  *(this + 360) = this + 352;
  *(this + 368) = xmmword_296A14210;
  *(this + 384) = 0u;
  *(this + 400) = 0u;
  *(this + 416) = 0u;
  *(this + 432) = 0;
  *(this + 440) = 1018212795;
  v3 = __clz(__rbit64(a3));
  if (1 << v3 != a3)
  {
    v3 = -1;
  }

  if (!a3)
  {
    v3 = -1;
  }

  *(this + 512) = 0;
  *(this + 480) = 0uLL;
  *(this + 496) = 0uLL;
  *(this + 448) = 0uLL;
  *(this + 464) = 0uLL;
  *(this + 36) = v3;
  return this;
}

void amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::ConstMemoryView::operator+@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  v4 = *(result + 16);
  if (v4 < a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "operator+", 0xFC, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = *(result + 8);
  *a4 = &off_2A1DDFC68;
  a4[1] = v5 + a2;
  a4[2] = v4 - a2;
  if ((v4 - a2) < 0 || (v4 != a2 ? (v6 = v5 == 0) : (v6 = 0), v6))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_10;
  }

  return result;
}

uint64_t amber::Buffer::operator=(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  std::swap[abi:ne200100]<amber::MemorySegment>((a2 + 8), (a1 + 8), a3, a4, a5, a6, a7);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if (a1 != a2)
  {
    v11 = *(a1 + 48);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 48) = v11;
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  v12 = *(a2 + 64);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = v12;
  v13 = *(a2 + 80);
  *(a2 + 80) = *(a1 + 80);
  *(a1 + 80) = v13;
  v14 = *(a2 + 88);
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = v14;
  LOBYTE(v14) = *(a2 + 96);
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 96) = v14;
  LOBYTE(v14) = *(a2 + 97);
  *(a2 + 97) = *(a1 + 97);
  *(a1 + 97) = v14;
  LOBYTE(v14) = *(a2 + 98);
  *(a2 + 98) = *(a1 + 98);
  *(a1 + 98) = v14;
  return a1;
}

void std::swap[abi:ne200100]<amber::MemorySegment>(void (***a1)(amber::MemorySegment *__hidden this), void (***a2)(amber::MemorySegment *__hidden this), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a1[1];
  v9 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  v13 = off_2A1DDFD48;
  v14 = v8;
  v15 = v9;
  if (a2 != a1)
  {
    v10 = a2[1];
    v11 = a2[2];
    a2[1] = 0;
    a2[2] = 0;
    a1[1] = v10;
    a1[2] = v11;
  }

  if (&v13 != a2)
  {
    if (a2[1])
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemorySegment.hpp", "operator=", 0xD9, 0, "memory invalid state", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid state");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v14 = 0;
    v15 = 0;
    a2[1] = v8;
    a2[2] = v9;
    v8 = 0;
  }

  free(v8);
}

void sub_296968B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  __cxa_free_exception(v11);
  free(a11);
  _Unwind_Resume(a1);
}

uint64_t amber::SharedBlockCache::Shard::Shard(uint64_t this, int a2, int a3, unsigned int a4)
{
  *this = &unk_2A1DE0940;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = a4;
  *(this + 24) = off_2A1DDFD48;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = -1;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = &unk_2A1DE09E8;
  *(this + 144) = 0;
  *(this + 152) = this + 152;
  *(this + 160) = this + 152;
  *(this + 168) = xmmword_296A14210;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0;
  *(this + 240) = 1018212795;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0;
  *(this + 288) = &unk_2A1DE09E8;
  *(this + 296) = 0;
  *(this + 304) = this + 304;
  *(this + 312) = this + 304;
  *(this + 320) = xmmword_296A14210;
  *(this + 336) = 0u;
  *(this + 352) = 0u;
  *(this + 368) = 0u;
  *(this + 384) = 0;
  *(this + 392) = 1018212795;
  v4 = __clz(__rbit64(a4));
  if (1 << v4 != a4)
  {
    v4 = -1;
  }

  if (!a4)
  {
    v4 = -1;
  }

  *(this + 464) = 0;
  *(this + 432) = 0uLL;
  *(this + 448) = 0uLL;
  *(this + 400) = 0uLL;
  *(this + 416) = 0uLL;
  *(this + 20) = v4;
  return this;
}

void amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

void amber::MemoryBlockCache::~MemoryBlockCache(amber::MemoryBlockCache *this)
{
  amber::BlockCache::~BlockCache(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::MemoryBlockCache::dataRead(amber::MemoryBlockCache *this, const amber::MutableMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::MutableMemoryView::operator+(this + 184, a3, a7, &v15);
  v18 = &off_2A1DDFC68;
  v19 = v16;
  v20 = v17;
  if ((v17 & 0x8000000000000000) != 0 || (!v16 ? (v10 = v17 == 0) : (v10 = 1), !v10))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v9);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
LABEL_14:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v11 = *(this + 4);
  if (v17 < v11 || *(a2 + 2) < v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v9);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    goto LABEL_14;
  }

  memcpy(*(a2 + 1), v16, v11);
  return 0;
}

uint64_t amber::MemoryBlockCache::dataWrite(amber::MemoryBlockCache *this, const amber::ConstMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::MutableMemoryView::operator+(this + 184, a3, a7, v14);
  v10 = *(this + 4);
  if (*(a2 + 2) < v10 || v14[2] < v10)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v9);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(v14[1], *(a2 + 1), v10);
  return 0;
}

void amber::FileBlockCache::~FileBlockCache(amber::FileBlockCache *this)
{
  amber::BlockCache::~BlockCache(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::FileBlockCache::dataRead(amber::FileBlockCache *this, void **a2, off_t a3)
{
  v3 = *(this + 4);
  if (pread(*(this + 46), a2[1], v3, a3) == v3)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././BlockCache.hpp", "dataRead", 0xE2, 0, "cache read", v4);
  return 0xFFFFFFFFLL;
}

uint64_t amber::FileBlockCache::dataWrite(amber::FileBlockCache *this, const void **a2, off_t a3)
{
  v3 = *(this + 4);
  if (pwrite(*(this + 46), a2[1], v3, a3) == v3)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././BlockCache.hpp", "dataWrite", 0xEA, 0, "cache write", v4);
  return 0xFFFFFFFFLL;
}

void std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<amber::SharedBlockCache::Client>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = v3 - 280;
      v6 = v3 - 280;
      do
      {
        *v6 = &unk_2A1DDFDD8;
        *(v6 + 8) = &unk_2A1DDFE08;
        *(v6 + 36) = 0uLL;
        *(v6 + 52) = 0uLL;
        *(v6 + 68) = 0uLL;
        *(v6 + 84) = 0uLL;
        *(v6 + 100) = 0uLL;
        *(v6 + 116) = 0uLL;
        *(v6 + 132) = 0uLL;
        *(v6 + 148) = 0uLL;
        *(v6 + 164) = 0uLL;
        *(v6 + 180) = 0uLL;
        *(v6 + 196) = 0uLL;
        *(v6 + 212) = 0uLL;
        *(v6 + 228) = 0uLL;
        v7 = (v6 - 8);
        *(v6 + 244) = 0uLL;
        v5 -= 288;
        *(v6 + 20) = 0uLL;
        *(v6 + 260) = 0uLL;
        v6 -= 288;
      }

      while (v7 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE09B8;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

void *std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::vector<amber::SharedBlockCache::WriteTask>::__destroy_vector::operator()[abi:ne200100](void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *a1;
  v8 = **a1;
  if (v8)
  {
    v10 = v7[1];
    v11 = **a1;
    if (v10 != v8)
    {
      do
      {
        v12 = v10 - 128;
        amber::Buffer::~Buffer((v10 - 120), a2, a3, a4, a5, a6, a7);
        v10 = v12;
      }

      while (v12 != v8);
      v11 = **a1;
    }

    v7[1] = v8;

    operator delete(v11);
  }
}

uint64_t amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE09E8;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

uint64_t std::vector<amber::SharedBlockCache::WriteTask>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 7)
  {

    return std::vector<amber::SharedBlockCache::WriteTask>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 7);
    if (v7 >> 57)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 7;
    v9 = v4 - *a1;
    if (v9 >> 6 > v7)
    {
      v7 = v9 >> 6;
    }

    if (v9 >= 0x7FFFFFFFFFFFFF80)
    {
      v10 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v25 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::SharedBlockCache::WriteTask>>(a1, v10);
    }

    v22 = 0;
    v23 = (v8 << 7);
    v24 = (v8 << 7);
    std::__split_buffer<amber::SharedBlockCache::WriteTask>::__construct_at_end(&v22, a2);
    v12 = *(a1 + 8);
    v13 = &v23[*a1 - v12];
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::WriteTask>,amber::SharedBlockCache::WriteTask*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v24;
    *&v24 = v14;
    *(&v24 + 1) = v15;
    v22 = v14;
    v23 = v14;
    return std::__split_buffer<amber::SharedBlockCache::WriteTask>::~__split_buffer(&v22, v16, v17, v18, v19, v20, v21);
  }
}

void sub_296969458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<amber::SharedBlockCache::WriteTask>::~__split_buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t std::vector<amber::SharedBlockCache::WriteTask>::__construct_at_end(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = v2 + 64;
    v4 = v2 + (a2 << 7);
    do
    {
      *v2 = 0uLL;
      *(v2 + 16) = 0uLL;
      *(v2 + 32) = 0uLL;
      *(v2 + 48) = 0uLL;
      *(v2 + 64) = 0uLL;
      *(v2 + 80) = 0uLL;
      *(v2 + 96) = 0uLL;
      *v2 = -1;
      *(v2 + 8) = &unk_2A1DDFD28;
      *(v2 + 16) = off_2A1DDFD48;
      *(v2 + 24) = 0;
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      *(v2 + 32) = 0;
      *(v2 + 40) = &off_2A1DDFDA8;
      *(v2 + 64) = &off_2A1DDFC68;
      *(v2 + 72) = 0uLL;
      *(v2 + 88) = 0uLL;
      *(v2 + 104) = 1;
      *(v2 + 112) = 0;
      *(v2 + 120) = 0;
      v2 += 128;
      v3 += 128;
    }

    while (v2 != v4);
    v2 = v4;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t std::__split_buffer<amber::SharedBlockCache::WriteTask>::__construct_at_end(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (a2)
  {
    v3 = v2 + 64;
    v4 = v2 + (a2 << 7);
    do
    {
      *v2 = 0uLL;
      *(v2 + 16) = 0uLL;
      *(v2 + 32) = 0uLL;
      *(v2 + 48) = 0uLL;
      *(v2 + 64) = 0uLL;
      *(v2 + 80) = 0uLL;
      *(v2 + 96) = 0uLL;
      *v2 = -1;
      *(v2 + 8) = &unk_2A1DDFD28;
      *(v2 + 16) = off_2A1DDFD48;
      *(v2 + 24) = 0;
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      *(v2 + 32) = 0;
      *(v2 + 40) = &off_2A1DDFDA8;
      *(v2 + 64) = &off_2A1DDFC68;
      *(v2 + 72) = 0uLL;
      *(v2 + 88) = 0uLL;
      *(v2 + 104) = 1;
      *(v2 + 112) = 0;
      *(v2 + 120) = 0;
      v2 += 128;
      v3 += 128;
    }

    while (v2 != v4);
    v2 = v4;
  }

  *(result + 16) = v2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::SharedBlockCache::WriteTask>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::WriteTask>,amber::SharedBlockCache::WriteTask*>(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a2 + 8);
    v7 = (a4 + 8);
    do
    {
      v7[-1].n128_u32[2] = v6[-1].n128_u32[2];
      amber::Buffer::Buffer(v7, v6);
      v15 = v6[6].n128_u64[1];
      v16 = v6[7].n128_u64[0];
      if (v15 >= v16)
      {
        v15 = 0;
        v16 = 0;
      }

      v8[6].n128_u64[1] = v15;
      v8[7].n128_u64[0] = v16;
      v17 = &v6[7].n128_i8[8];
      v6 += 8;
      v7 = v8 + 8;
    }

    while (v17 != a3);
    while (v5 != a3)
    {
      amber::Buffer::~Buffer((v5 + 8), v9, v10, v11, v12, v13, v14);
      v5 += 128;
    }
  }
}

__n128 amber::Buffer::Buffer(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &unk_2A1DDFD28;
  a1->n128_u64[1] = off_2A1DDFD48;
  v2 = a2[1].n128_u64[0];
  v3 = a2[1].n128_u64[1];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v3;
  v4 = a2[2].n128_u64[1];
  v5 = a2[3].n128_u64[0];
  a2[2].n128_u64[1] = 0;
  a1[2].n128_u64[0] = &off_2A1DDFDA8;
  a1[2].n128_u64[1] = v4;
  a2[3].n128_u64[0] = 0;
  a1[3].n128_u64[0] = v5;
  a1[3].n128_u64[1] = &off_2A1DDFC68;
  result = a2[4];
  a1[4] = result;
  a1[5].n128_u64[0] = a2[5].n128_u64[0];
  a1[5].n128_u64[1] = a2[5].n128_u64[1];
  LOBYTE(v4) = a2[6].n128_u8[0];
  a2[6].n128_u8[0] = 0;
  a1[6].n128_u8[0] = v4;
  LOBYTE(v4) = a2[6].n128_u8[1];
  a2[6].n128_u8[1] = 0;
  a1[6].n128_u8[1] = v4;
  LOBYTE(v4) = a2[6].n128_u8[2];
  a2[6].n128_u8[2] = 0;
  a1[6].n128_u8[2] = v4;
  return result;
}

uint64_t std::__split_buffer<amber::SharedBlockCache::WriteTask>::~__split_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(a1 + 8);
  for (i = *(a1 + 16); i != v9; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    amber::Buffer::~Buffer((i - 120), a2, a3, a4, a5, a6, a7);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(uint64_t a1, void *a2)
{
  v10.__m_ = (a1 + 40);
  v10.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 8);
  if (v4 <= 0)
  {
    do
    {
      std::condition_variable::wait((a1 + 104), &v10);
      v4 = *(a1 + 8);
    }

    while (v4 < 1);
  }

  *(a1 + 8) = v4 - 1;
  v5 = *(a1 + 32);
  *a2 = *(*(a1 + 24) + 16);
  v6 = *(a1 + 24);
  v8 = *v6;
  v7 = v6[1];
  *(v8 + 8) = v7;
  *v7 = v8;
  *(a1 + 32) = v5 - 1;
  operator delete(v6);
  if (v10.__owns_)
  {
    std::mutex::unlock(v10.__m_);
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::find<amber::CryptoBlobBase<256u>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a1 + 8;
  v8 = *(a1 + 8);
  if (!v8)
  {
    return v7;
  }

  v11 = a1 + 8;
  do
  {
    v12 = std::less<amber::CryptoBlobBase<256u>>::operator()[abi:ne200100](a1, v8 + 32, a2, a4, a5, a6, a7);
    if (v12)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    if (!v12)
    {
      v11 = v8;
    }

    v8 = *(v8 + v13);
  }

  while (v8);
  if (v11 == v7 || std::less<amber::CryptoBlobBase<256u>>::operator()[abi:ne200100](a1, a2, v11 + 32, a4, a5, a6, a7))
  {
    return v7;
  }

  return v11;
}

uint64_t std::less<amber::CryptoBlobBase<256u>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 16);
  v11 = *(a3 + 16);
  if (v8 != v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "compare", 0x68, 0, "memory invalid range", a7, &off_2A1DDFC68, a3 + 20, v11, &off_2A1DDFC68, a2 + 20, v8);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return memcmp((a2 + 20), (a3 + 20), v8) >> 31;
}

uint64_t std::vector<amber::SharedBlockCache::Client>::__emplace_back_slow_path<amber::SharedBlockCache::Client const&>(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 5);
  v8 = v7 + 1;
  if (v7 + 1 > 0xE38E38E38E38E3)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5) > v8)
  {
    v8 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v11 = 0xE38E38E38E38E3;
  }

  else
  {
    v11 = v8;
  }

  v24 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::SharedBlockCache::Client>>(a1, v11);
  }

  v21 = 0;
  v22 = 288 * v7;
  v23 = 288 * v7;
  *v22 = *a2;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(288 * v7 + 8, (a2 + 7), a2[6], a4, a5, a6, a7);
  *&v23 = v23 + 288;
  v12 = *(a1 + 8);
  v13 = v22 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::Client>,amber::SharedBlockCache::Client*>(a1, *a1, v12, v13, v14, v15, v16);
  v17 = *a1;
  *a1 = v13;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<amber::SharedBlockCache::Client>::~__split_buffer(&v21);
  return v20;
}

void sub_296969CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<amber::SharedBlockCache::Client>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::SharedBlockCache::Client>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::Client>,amber::SharedBlockCache::Client*>(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 != a3)
  {
    v9 = a2;
    v10 = 0;
    v11 = (a2 + 28);
    do
    {
      v12 = v11 - 28;
      *(a4 + v10) = *(v11 - 28);
      result = amber::CryptoBlobBase<256u>::CryptoBlobBase(a4 + v10 + 8, v11, *(v11 - 4), a4, a5, a6, a7);
      v11 += 288;
      v10 += 288;
    }

    while ((v12 + 288) != a3);
    if (v9 != a3)
    {
      v14 = v9 + 16;
      do
      {
        *(v9 + 28) = 0uLL;
        v15 = v9 + 28;
        *(v15 - 20) = &unk_2A1DDFDD8;
        *(v15 - 12) = &unk_2A1DDFE08;
        v15[1] = 0uLL;
        v15[2] = 0uLL;
        v15[3] = 0uLL;
        v15[4] = 0uLL;
        v15[5] = 0uLL;
        v15[6] = 0uLL;
        v15[7] = 0uLL;
        v15[8] = 0uLL;
        v15[9] = 0uLL;
        v15[10] = 0uLL;
        v15[11] = 0uLL;
        v15[12] = 0uLL;
        v15[13] = 0uLL;
        v15[14] = 0uLL;
        v15[15] = 0uLL;
        v9 = v15 + 260;
        v14 += 288;
      }

      while (v9 != a3);
    }
  }

  return result;
}

void sub_296969E58(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::Client>,amber::SharedBlockCache::Client*>(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<amber::SharedBlockCache::Client>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 288;
    *(i - 280) = &unk_2A1DDFDD8;
    *(i - 272) = &unk_2A1DDFE08;
    *(i - 260) = 0uLL;
    *(i - 244) = 0uLL;
    *(i - 228) = 0uLL;
    *(i - 212) = 0uLL;
    *(i - 196) = 0uLL;
    *(i - 180) = 0uLL;
    *(i - 164) = 0uLL;
    *(i - 148) = 0uLL;
    *(i - 132) = 0uLL;
    *(i - 116) = 0uLL;
    *(i - 100) = 0uLL;
    *(i - 84) = 0uLL;
    *(i - 68) = 0uLL;
    *(i - 52) = 0uLL;
    *(i - 36) = 0uLL;
    *(i - 20) = 0uLL;
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__emplace_unique_key_args<amber::CryptoBlobBase<256u>,std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<256u> const&>,std::tuple<>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  result = *std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__find_equal<amber::CryptoBlobBase<256u>>(a1, &v8, a2, a4, a5, a6, a7);
  if (!result)
  {
    std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<256u> const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__find_equal<amber::CryptoBlobBase<256u>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (v8)
  {
    do
    {
      while (1)
      {
        v12 = v8;
        if (!std::less<amber::CryptoBlobBase<256u>>::operator()[abi:ne200100](a1, a3, (v8 + 4), a4, a5, a6, a7))
        {
          break;
        }

        v8 = *v12;
        v9 = v12;
        if (!*v12)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<amber::CryptoBlobBase<256u>>::operator()[abi:ne200100](a1, (v12 + 4), a3, a4, a5, a6, a7))
      {
        break;
      }

      v9 = v12 + 1;
      v8 = v12[1];
    }

    while (v8);
  }

  else
  {
    v12 = (a1 + 8);
  }

LABEL_9:
  *a2 = v12;
  return v9;
}

void sub_29696A0F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t amber::BufferProtocol<amber::Buffer>::assignZero(amber::Buffer *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::Buffer::resize(a1, 0, a3, a4, a5, a6, a7))
  {
    return 0xFFFFFFFFLL;
  }

  if (amber::BufferProtocol<amber::Buffer>::appendValue(a1, 0, a2, v9, v10, v11, v12))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__erase_unique<amber::CryptoBlobBase<256u>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::find<amber::CryptoBlobBase<256u>>(a1, a2, a3, a4, a5, a6, a7);
  if (a1 + 1 == v8)
  {
    return 0;
  }

  v9 = v8;
  std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(a1, v8);
  operator delete(v9);
  return 1;
}

void std::vector<amber::SharedBlockCache::Shard::Command>::__append(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 120 * a2;
      v11 = v4 + 32;
      do
      {
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *v4 = 0xFFFFFFFF00000000;
        *(v4 + 8) = &off_2A1DDFDA8;
        *(v4 + 32) = &off_2A1DDFC68;
        *(v4 + 40) = 0uLL;
        *(v4 + 56) = 0uLL;
        *(v4 + 72) = 0uLL;
        *(v4 + 88) = 0uLL;
        *(v4 + 104) = 0uLL;
        v4 += 120;
        v11 += 120;
      }

      while (v4 != v10);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x222222222222222)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x111111111111111)
    {
      v9 = 0x222222222222222;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::SharedBlockCache::Shard::Command>>(a1, v9);
    }

    v12 = 120 * v6;
    v13 = 120 * v6 + 120 * a2;
    v14 = v12 + 32;
    v15 = v12;
    do
    {
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *v15 = 0xFFFFFFFF00000000;
      *(v15 + 8) = &off_2A1DDFDA8;
      *(v15 + 32) = &off_2A1DDFC68;
      *(v15 + 40) = 0uLL;
      *(v15 + 56) = 0uLL;
      *(v15 + 72) = 0uLL;
      *(v15 + 88) = 0uLL;
      *(v15 + 104) = 0uLL;
      v15 += 120;
      v14 += 120;
    }

    while (v15 != v13);
    v16 = a1[1];
    v17 = v12 + *a1 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::Shard::Command>,amber::SharedBlockCache::Shard::Command*>(a1, *a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    a1[1] = v13;
    a1[2] = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void sub_29696A3D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::SharedBlockCache::Shard::Command>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::Shard::Command>,amber::SharedBlockCache::Shard::Command*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4 + 32;
    do
    {
      *a4 = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      *(a4 + 8) = &off_2A1DDFDA8;
      *(a4 + 16) = v5;
      *(a4 + 24) = v6;
      *(a4 + 32) = &off_2A1DDFC68;
      *(a4 + 40) = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 64);
      if (v7 >= v8)
      {
        v7 = 0;
        v8 = 0;
      }

      *(a4 + 56) = v7;
      *(a4 + 64) = v8;
      v9 = *(a2 + 72);
      v10 = *(a2 + 80);
      if (v9 >= v10)
      {
        v9 = 0;
        v10 = 0;
      }

      *(a4 + 72) = v9;
      *(a4 + 80) = v10;
      result = *(a2 + 88);
      *(a4 + 104) = *(a2 + 104);
      *(a4 + 88) = result;
      a2 += 120;
      a4 += 120;
      v4 += 120;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t amber::NBitVector<1u>::NBitVector(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = &unk_2A1DE0AA8;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2A1DDFD28;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = off_2A1DDFD48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &off_2A1DDFDA8;
  *(a1 + 72) = &off_2A1DDFC68;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 114) = 0;
  if ((amber::NBitVector<1u>::resize(a1, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "NBitVector::NBitVector";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  return a1;
}

uint64_t amber::NBitVector<1u>::resize(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 < 0x100000000000001)
  {
    v9 = (a2 & 0x1FFFFFFFFFFFFF0) + 16;
    if ((a2 & 0xF) == 0)
    {
      v9 = a2;
    }

    if ((amber::Buffer::resize((a1 + 16), v9 >> 3, a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 8) = a2;
      return result;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././NBitVector.hpp", "resize", 0x127, 0, "invalid block count", a7);
  }

  return 0xFFFFFFFFLL;
}

void amber::NBitVector<1u>::~NBitVector(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = &unk_2A1DE0AA8;
  amber::Buffer::~Buffer((a1 + 2), a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

void amber::BlockPermutation::~BlockPermutation(amber::BlockPermutation *this)
{
  *this = &unk_2A1DE0AD8;
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(this + 160, *(this + 21));
  amber::KeyValueBlob::~KeyValueBlob((this + 24), v2, v3, v4, v5, v6, v7);
}

{
  *this = &unk_2A1DE0AD8;
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(this + 160, *(this + 21));
  amber::KeyValueBlob::~KeyValueBlob((this + 24), v2, v3, v4, v5, v6, v7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::BlockPermutation::createWithStream(amber::BlockPermutation *this, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v22[3] = *MEMORY[0x29EDCA608];
  v16[0] = &unk_2A1DDFD28;
  v16[2] = 0;
  v16[3] = 0;
  v16[1] = off_2A1DDFD48;
  v16[5] = 0;
  v16[6] = 0;
  v16[4] = &off_2A1DDFDA8;
  v16[7] = &off_2A1DDFC68;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0;
  v21[0] = &off_2A1DDFDA8;
  v21[1] = v22;
  v21[2] = 24;
  if ((amber::Stream::readExpected(this, v21, a3, a4, a5, a6, a7) & 0x8000000000000000) == 0 && v22[0] == 0x314D5245504B4C42 && v22[1] <= 0x1000000000000uLL)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "createWithStream", 0x27, 0, "invalid header", v7);
  amber::Buffer::~Buffer(v16, v8, v9, v10, v11, v12, v13);
  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29696AD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::BlockPermutation::createWithRanges(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  if (a1 && !(a1 % a2))
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "createWithRanges", 0x52, 0, "image size is not a non zero multiple of block size", a7);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(&v8, v9[0]);
  return 0;
}

uint64_t amber::BlockPermutation::serializeToStream(amber::BlockPermutation *this, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v106 = *MEMORY[0x29EDCA608];
  v95[0] = &unk_2A1DDFD28;
  v95[2] = 0;
  v95[3] = 0;
  v95[1] = off_2A1DDFD48;
  v95[5] = 0;
  v95[6] = 0;
  v95[4] = &off_2A1DDFDA8;
  v95[7] = &off_2A1DDFC68;
  v96 = 0u;
  v97 = 0u;
  v98 = 1;
  v99 = 0;
  v9 = amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(this + 24, a2, a3, a4, a5, a6, a7);
  if (HIDWORD(v9))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "serializeToStream", 0xB6, 0, "invalid user data size", v14);
    goto LABEL_60;
  }

  v21 = *(this + 1);
  v103[0] = 0x314D5245504B4C42;
  v103[1] = v21;
  v104 = *(this + 4);
  v105 = v9;
  v92 = &off_2A1DDFDA8;
  v93 = v103;
  v94 = 24;
  v100 = &off_2A1DDFC68;
  v101 = v103;
  v102 = 24;
  if ((amber::Stream::writeExpected(a2, &v100, v10, v11, v12, v13, v14) & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "serializeToStream", 0xBD, 0, "write header", v22);
    goto LABEL_60;
  }

  amber::Buffer::constBuf(this + 56, v22, &v100);
  amber::ConstMemoryView::view(&v100, *(this + 17), *(this + 18) - *(this + 17), v23, &v92);
  if ((amber::Stream::writeExpected(a2, &v92, v24, v25, v26, v27, v28) & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "serializeToStream", 0xC0, 0, "write user data", v33);
    goto LABEL_60;
  }

  v34 = this + 168;
  v35 = *(this + 20);
  if ((this + 168) != v35)
  {
    v36 = (this + 168);
    do
    {
      v37 = *v36;
      v38 = *v36;
      v39 = v36;
      if (*v36)
      {
        do
        {
          v40 = v38;
          v38 = *(v38 + 1);
        }

        while (v38);
      }

      else
      {
        do
        {
          v40 = *(v39 + 2);
          v41 = *v40 == v39;
          v39 = v40;
        }

        while (v41);
      }

      v42 = *v36;
      v43 = v36;
      if (v37)
      {
        do
        {
          v44 = v42;
          v42 = *(v42 + 1);
        }

        while (v42);
      }

      else
      {
        do
        {
          v44 = *(v43 + 2);
          v41 = *v44 == v43;
          v43 = v44;
        }

        while (v41);
      }

      if (*(v40 + 4) != *(v44 + 5))
      {
        break;
      }

      v45 = *v36;
      v46 = v36;
      if (v37)
      {
        do
        {
          v47 = v45;
          v45 = *(v45 + 1);
        }

        while (v45);
      }

      else
      {
        do
        {
          v47 = *(v46 + 2);
          v41 = *v47 == v46;
          v46 = v47;
        }

        while (v41);
      }

      if (v37)
      {
        do
        {
          v48 = v37;
          v37 = *(v37 + 1);
        }

        while (v37);
      }

      else
      {
        do
        {
          v48 = *(v36 + 2);
          v41 = *v48 == v36;
          v36 = v48;
        }

        while (v41);
      }

      v21 = *(v47 + 4);
      v36 = v48;
    }

    while (v48 != v35);
  }

  if ((amber::Buffer::reserve(v95, 0x10108uLL, v29, v30, v31, v32, v33) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "serializeToStream", 0xCA, 0, "malloc", v53);
    goto LABEL_60;
  }

  v54 = *(this + 20);
  if (v54 != v34)
  {
    do
    {
      v55 = *(v54 + 4);
      if (v55 >= v21)
      {
        break;
      }

      v56 = *(v54 + 1);
      v57 = v56;
      v58 = v54;
      if (v56)
      {
        do
        {
          v59 = v57;
          v57 = *v57;
        }

        while (v57);
      }

      else
      {
        do
        {
          v59 = *(v58 + 2);
          v41 = *v59 == v58;
          v58 = v59;
        }

        while (!v41);
      }

      v60 = v21;
      if (v59 != v34)
      {
        v60 = *(v59 + 4);
      }

      v61 = v60 - v55;
      if (v60 != v55)
      {
        v62 = *(v54 + 5);
        while (1)
        {
          if (v61 >= 0x10000)
          {
            v63 = 0x10000;
          }

          else
          {
            v63 = v61;
          }

          v91 = (v63 - 1) | (v62 << 16);
          v92 = &off_2A1DDFDA8;
          v93 = &v91;
          v94 = 8;
          v100 = &off_2A1DDFC68;
          v101 = &v91;
          v102 = 8;
          if ((amber::BufferProtocol<amber::Buffer>::append(v95, &v100, v49, v50, v51, v52, v53) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "serializeToStream", 0xD8, 0, "malloc", v69);
            goto LABEL_60;
          }

          if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(v95, v64, v65, v66, v67, v68, v69) >= 0x10000)
          {
            amber::Buffer::constBuf(v95, v53, &v100);
            amber::ConstMemoryView::view(&v100, v97, *(&v97 + 1) - v97, v70, &v92);
            if ((amber::Stream::writeExpected(a2, &v92, v71, v72, v73, v74, v75) & 0x8000000000000000) != 0)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "serializeToStream", 0xDC, 0, "write mappings", v80);
              goto LABEL_60;
            }

            amber::Buffer::resize(v95, 0, v76, v77, v78, v79, v80);
          }

          v62 += v63;
          v61 -= v63;
          if (!v61)
          {
            v56 = *(v54 + 1);
            v34 = this + 168;
            break;
          }
        }
      }

      if (v56)
      {
        do
        {
          v81 = v56;
          v56 = *v56;
        }

        while (v56);
      }

      else
      {
        do
        {
          v81 = *(v54 + 2);
          v41 = *v81 == v54;
          v54 = v81;
        }

        while (!v41);
      }

      v54 = v81;
    }

    while (v81 != v34);
  }

  amber::Buffer::constBuf(v95, v53, &v100);
  amber::ConstMemoryView::view(&v100, v97, *(&v97 + 1) - v97, v82, &v92);
  if ((amber::Stream::writeExpected(a2, &v92, v83, v84, v85, v86, v87) & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "serializeToStream", 0xE6, 0, "write mappings", v20);
LABEL_60:
    v88 = 0xFFFFFFFFLL;
  }

  else
  {
    v88 = 0;
  }

  amber::Buffer::~Buffer(v95, v15, v16, v17, v18, v19, v20);
  v89 = *MEMORY[0x29EDCA608];
  return v88;
}

void sub_29696B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(a1 + 32, a7, v11);
  amber::ConstMemoryView::view(v11, *(a1 + 112), *(a1 + 120) - *(a1 + 112), v8, v10);
  return v10[2];
}

uint64_t amber::BlockPermutation::appendMappedRange(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    return 0;
  }

  v41 = v7;
  v42 = v8;
  v13 = *(a1 + 16);
  v14 = v10 / v13;
  if (v10 / v13 * v13 != v10 || (v15 = v9 / v13, v9 / v13 * v13 != v9))
  {
    v16 = "query range is not aligned";
    v17 = 290;
    goto LABEL_9;
  }

  if (v14 > v15 || v15 > *(a1 + 8))
  {
    v16 = "invalid range";
    v17 = 291;
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "appendMappedRange", v17, 0, v16, a7);
    return 0xFFFFFFFFLL;
  }

  v20 = (a1 + 168);
  v19 = *(a1 + 168);
  if (!v19)
  {
    v21 = (a1 + 168);
LABEL_22:
    v26 = v21;
    do
    {
      v21 = v26[2];
      v27 = *v21 == v26;
      v26 = v21;
    }

    while (v27);
    goto LABEL_24;
  }

  v21 = (a1 + 168);
  do
  {
    v22 = v19[4];
    v23 = v22 >= v14;
    v24 = v22 < v14;
    if (v23)
    {
      v21 = v19;
    }

    v19 = v19[v24];
  }

  while (v19);
  if (v21 == v20 || v21[4] > v14)
  {
    v25 = *v21;
    if (*v21)
    {
      do
      {
        v21 = v25;
        v25 = v25[1];
      }

      while (v25);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_24:
  if (v14 < v15)
  {
    while (v21 != v20)
    {
      v28 = v21[1];
      v29 = v21;
      if (v28)
      {
        do
        {
          v30 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v30 = v29[2];
          v27 = *v30 == v29;
          v29 = v30;
        }

        while (!v27);
      }

      v31 = v15;
      if (v30 != v20)
      {
        v32 = v30[4];
        if (v32 >= v15)
        {
          v31 = v15;
        }

        else
        {
          v31 = v32;
        }
      }

      v34 = v21[4];
      v33 = v21[5];
      v35 = *(a1 + 16);
      v36 = (v33 + v14 - v34) * v35;
      v37 = (v33 - v34 + v31) * v35;
      if (v36 >= v37)
      {
        v36 = 0;
        v37 = 0;
      }

      v40.i64[0] = v36;
      v40.i64[1] = v37;
      std::vector<amber::Range>::push_back[abi:ne200100](a3, &v40);
      v38 = v21[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v21[2];
          v27 = *v39 == v21;
          v21 = v39;
        }

        while (!v27);
      }

      result = 0;
      v14 = v31;
      v21 = v39;
      if (v31 >= v15)
      {
        return result;
      }
    }

    v16 = "invalid state";
    v17 = 297;
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::vector<amber::Range>::push_back[abi:ne200100](uint64_t a1, int64x2_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<amber::Range>::__emplace_back_slow_path<amber::Range const&>(a1, a2);
  }

  else
  {
    v4 = a2->i64[0];
    v5 = a2->u64[1];
    if (a2->i64[0] >= v5)
    {
      v4 = 0;
      v5 = 0;
    }

    *v3 = v4;
    v3[1] = v5;
    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<amber::Range>::__emplace_back_slow_path<amber::Range>(a1, a2);
  }

  else
  {
    v4 = a2->i64[0];
    v5 = a2->u64[1];
    if (a2->i64[0] >= v5)
    {
      v4 = 0;
      v5 = 0;
    }

    *v3 = v4;
    v3[1] = v5;
    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t amber::BlockPermutation::appendMappedRanges(uint64_t a1, unint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    return 0;
  }

  while ((amber::BlockPermutation::appendMappedRange(a1, v7, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    v7 += 2;
    if (v7 == v8)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "appendMappedRanges", 0x144, 0, "mapping range", a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KeyValueBlob::getEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::KeyValueBlob::keyIndex(a1, a2, a3, a4, a5, a6, a7);
  if ((v9 & 0x80000000) != 0)
  {
    return 0;
  }

  v14[0] = 0;
  v14[1] = 0;
  return (amber::KeyValueBlob::getEntryAtIndex(a1, v9, v14, a3, v10, v11, v12) >> 31) | 1u;
}

uint64_t amber::KeyValueBlob::removeEntry(amber::KeyValueBlob *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = amber::KeyValueBlob::keyIndex(a1, a2, a3, a4, a5, a6, a7);
  if ((v8 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return (amber::KeyValueBlob::removeEntryAtIndex(a1, v8, v9, v10, v11, v12, v13) >> 31) | 1u;
  }
}

uint64_t amber::BlockPermutation::getAttribute(amber::BlockPermutation *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    if (a2 == 1002)
    {
      v17 = *(this + 4);
      LODWORD(v18) = v17;
      v19 = &off_2A1DDFDA8;
      v20 = &v18;
      v21 = 4;
      v22 = &off_2A1DDFC68;
      v23 = &v18;
      v24 = 4;
      *a5 = 4;
      v14 = *(a4 + 2);
      if (v14)
      {
        if (v14 > 3)
        {
          result = 0;
          **(a4 + 1) = v17;
          return result;
        }

        v15 = 4;
        goto LABEL_13;
      }

      return 0;
    }

    if (a2 == 1001)
    {
      v13 = *(this + 1) * *(this + 4);
      v18 = v13;
      v19 = &off_2A1DDFDA8;
      v20 = &v18;
      v21 = 8;
      v22 = &off_2A1DDFC68;
      v23 = &v18;
      v24 = 8;
      *a5 = 8;
      v14 = *(a4 + 2);
      if (v14)
      {
        if (v14 > 7)
        {
          result = 0;
          **(a4 + 1) = v13;
          return result;
        }

        v15 = 8;
LABEL_13:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v12, v15, v14);
        return 0xFFFFFFFFLL;
      }

      return 0;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "getAttribute", 0x177, 0, "invalid attribute encoding %u, %u", v12, a2, a3);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::BlockPermutation::createWithPrefetchSequence(uint64_t a1, char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unint64_t a6, const char *a7)
{
  __p = 0;
  v47 = 0;
  v48 = 0;
  if (!a2 || (v9 = a3, a2 % a3))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "createWithPrefetchSequence", 0x196, 0, "image size is not a non zero multiple of block size", a7);
    goto LABEL_76;
  }

  if (!a4 || a4 % a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "createWithPrefetchSequence", 0x197, 0, "request alignment is not a non zero multiple of block size", a7);
    goto LABEL_76;
  }

  if (a6 >> 62)
  {
    amber::logSize("image size", a2, 1u);
    amber::logSize("block size", v9, 1u);
    amber::logSize("alignment", a4, 1u);
    amber::logSize("merge window length", a5, 1u);
    amber::logValue("input ranges in sequence", (0x2FC962FC962FC963 * ((*(a1 + 24) - *(a1 + 16)) >> 3)));
  }

  v15 = *(a1 + 16);
  for (i = *(a1 + 24); v15 != i; v15 += 600)
  {
    v16 = *(v15 + 592);
    if (v16)
    {
      v17 = *(v15 + 584);
      v18 = (v17 + v16);
      v19 = v17 / a4 * a4;
      if (v18 % a4)
      {
        v20 = &v18[a4 - v18 % a4];
      }

      else
      {
        v20 = v18;
      }

      if (v20 >= a2)
      {
        v20 = a2;
      }

      if (v20 < v19)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "createWithPrefetchSequence", 0x1AB, 0, "invalid object store path", a7);
        goto LABEL_76;
      }

      if (v19 >= v20)
      {
        v19 = 0;
        v20 = 0;
      }

      v45.i64[0] = v19;
      v45.i64[1] = v20;
      std::vector<amber::Range>::push_back[abi:ne200100](&__p, &v45);
    }
  }

  if (a5)
  {
    v21 = __p;
    v22 = v47;
    if (__p != v47)
    {
      while (1)
      {
        v23 = v21[1];
        v24 = v23 - *v21;
        if (v23 != *v21 && v24 < a5)
        {
          break;
        }

LABEL_58:
        v21 += 2;
        if (v21 == v22)
        {
          goto LABEL_65;
        }
      }

      v25 = v21 + 2;
      while (1)
      {
        v22 = v47;
        if (v25 == v47)
        {
          goto LABEL_58;
        }

        v27 = *v25;
        v26 = v25[1];
        if (v26 != *v25)
        {
          v24 += v26 - *v25;
          v29 = *v21;
          v28 = v21[1];
          if (*v21 == v28)
          {
            if (v29 != v26 && v28 != v27)
            {
              goto LABEL_56;
            }

            if (v26 <= v27)
            {
              v27 = 0;
              v26 = 0;
            }
          }

          else
          {
            if (v29 <= v27)
            {
              v31 = *v25;
            }

            else
            {
              v31 = *v21;
            }

            if (v26 >= v28)
            {
              v32 = v21[1];
            }

            else
            {
              v32 = v25[1];
            }

            if (v31 >= v32 && v29 != v26 && v28 != v27)
            {
              goto LABEL_56;
            }

            if (v27 >= v29)
            {
              v27 = *v21;
            }

            if (v28 > v26)
            {
              v26 = v21[1];
            }

            if (v27 >= v26)
            {
              v27 = 0;
              v26 = 0;
            }
          }

          *v21 = v27;
          v21[1] = v26;
          *v25 = 0;
          v25[1] = 0;
        }

LABEL_56:
        v25 += 2;
        if (v24 >= a5)
        {
          v22 = v47;
          goto LABEL_58;
        }
      }
    }

    v22 = __p;
  }

  else
  {
    v22 = v47;
  }

LABEL_65:
  v35 = __p;
  if (v22 == __p)
  {
    v38 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    do
    {
      if (*&v35[v36] != *&v35[v36 + 8])
      {
        if (v37 != v38)
        {
          *&v35[16 * v38] = *&v35[v36];
          v35 = __p;
          v22 = v47;
        }

        ++v38;
      }

      ++v37;
      v36 += 16;
    }

    while (v37 < (v22 - v35) >> 4);
  }

  std::vector<amber::Range>::resize(&__p, v38);
  v43 = amber::BlockPermutation::createWithRanges(a2, a3, &__p, a6, v39, v40, v41);
  if (!v43)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "createWithPrefetchSequence", 0x1D0, 0, "creating permutation", v42);
LABEL_76:
    v43 = 0;
  }

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  return v43;
}

void sub_29696C290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<amber::Range>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<amber::Range>::__append(a1, a2 - v2);
  }
}

uint64_t AmberBlockPermutationCreateWithPrefetchSequence(uint64_t a1, char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unint64_t a6, const char *a7)
{
  if (a1)
  {
    result = amber::BlockPermutation::createWithPrefetchSequence(a1, a2, a3, a4, a5, a6, a7);
    if (result)
    {
      return result;
    }

    v8 = "creating permutation";
    v9 = 484;
  }

  else
  {
    v8 = "invalid prefetch sequence";
    v9 = 482;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "AmberBlockPermutationCreateWithPrefetchSequence", v9, 0, v8, a7);
  return 0;
}

void sub_29696C504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AmberBlockPermutationDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberBlockPermutationUserDataClear(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  a1[5] = a1[4];
  amber::Buffer::resize((a1 + 7), 0, a3, a4, a5, a6, a7);
  return 0;
}

uint64_t AmberBlockPermutationUserDataGetEntryAtIndex(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, void *a5, unint64_t a6, char *a7, unsigned __int8 *a8)
{
  if (a2 >> 31)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "AmberBlockPermutationUserDataGetEntryAtIndex", 0x22A, 0, "invalid index", a7);
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0;
    v21[1] = 0;
    v21[2] = 0;
    v21[0] = &off_2A1DDFC68;
    if ((amber::KeyValueBlob::getEntryAtIndex(a1 + 24, a2, v22, v21, a5, a6, a7) & 0x80000000) == 0 && (amber::cReturnString(a3, a4, a5, v22, v14, v15, v16) & 0x80000000) == 0)
    {
      return (amber::cReturnBytes(a6, a7, a8, v21, v17, v18, v19) >> 31);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::cReturnString(unint64_t a1, char *__dst, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a3)
  {
    *a3 = *(a4 + 8);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = *(a4 + 8);
  if (v9 + 1 > a1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "cReturnString", 0xE1, 0, "insufficient string buffer capacity", a7);
    return 0xFFFFFFFFLL;
  }

  if ((a1 & 0x8000000000000000) != 0 || !__dst)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v11 = *a4;
  v16 = *a4;
  v17 = *(a4 + 8);
  if ((v9 & 0x8000000000000000) != 0 || v9 && !v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7, &off_2A1DDFC68, v16, v9, &off_2A1DDFDA8, __dst, a1);
    v13 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v13, "memory invalid args");
    __cxa_throw(v13, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (a1 < v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "cReturnString", 0xE3, 0, "storing string", a7, &off_2A1DDFC68, v16, v9, &off_2A1DDFDA8, __dst, a1);
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, v11, v9);
  if (a1 == v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "set", 0x4A, 0, "memory invalid range", v12, &off_2A1DDFC68, v16, v9, &off_2A1DDFDA8, &__dst[v9], a1 - v9);
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v15, "memory invalid range");
    __cxa_throw(v15, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = 0;
  __dst[v9] = 0;
  return result;
}

unint64_t amber::cReturnBytes(unint64_t this, void *__dst, unsigned __int8 *a3, unint64_t *a4, const amber::ConstMemoryView *a5, uint64_t a6, const char *a7)
{
  if (a3)
  {
    *a3 = a4[2];
  }

  if (this)
  {
    v7 = a4[2];
    if (v7 <= this)
    {
      if ((this & 0x8000000000000000) != 0 || !__dst)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid args");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      memcpy(__dst, a4[1], v7);
      return 0;
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "cReturnBytes", 0xF0, 0, "insufficient byte buffer capacity", a7);
      return 0xFFFFFFFFLL;
    }
  }

  return this;
}

uint64_t AmberBlockPermutationUserDataGetEntry(uint64_t a1, char *__s, unint64_t a3, void *a4, unsigned __int8 *a5)
{
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = &off_2A1DDFC68;
  v19[0] = __s;
  v19[1] = strlen(__s);
  Entry = amber::KeyValueBlob::getEntry(a1 + 24, v19, v20, v9, v10, v11, v12);
  if ((Entry & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = Entry;
  if ((amber::cReturnBytes(a3, a4, a5, v20, v14, v15, v16) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v17;
  }
}

uint64_t AmberBlockPermutationUserDataSetEntry(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  v19[0] = __s;
  v19[1] = strlen(__s);
  v18[0] = &off_2A1DDFC68;
  v18[1] = a3;
  v18[2] = a4;
  if (a4 < 0 || !a3 && a4)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v11);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v12 = amber::KeyValueBlob::keyIndex(a1 + 24, v19, v7, v8, v9, v10, v11);
  return amber::KeyValueBlob::setEntryAtIndex((a1 + 24), v12, v19, v18, v13, v14, v15);
}

uint64_t AmberBlockPermutationUserDataRemoveEntry(uint64_t a1, char *__s)
{
  v9[0] = __s;
  v9[1] = strlen(__s);
  return amber::KeyValueBlob::removeEntry((a1 + 24), v9, v3, v4, v5, v6, v7);
}

uint64_t AmberBlockPermutationCreateWithStream(amber::BlockPermutation *a1, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = amber::BlockPermutation::createWithStream(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockPermutation.cpp", "AmberBlockPermutationCreateWithStream", 0x25C, 0, "permutation parse error", v7);
  }

  return v8;
}

double amber::KeyValueBlob::KeyValueBlob(amber::KeyValueBlob *this)
{
  *this = &unk_2A1DE0B20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = off_2A1DDFD48;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = &off_2A1DDFDA8;
  *(this + 11) = &off_2A1DDFC68;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 64) = 257;
  *(this + 130) = 0;
  *(this + 4) = off_2A1DDFC98;
  return result;
}

void amber::KeyValueBlob::~KeyValueBlob(amber::KeyValueBlob *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::KeyValueBlob::~KeyValueBlob(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE0B20;
  amber::Buffer::~Buffer((this + 32), a2, a3, a4, a5, a6, a7);
  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

void *std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<amber::Range>::__emplace_back_slow_path<amber::Range const&>(uint64_t a1, int64x2_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::Range>>(a1, v7);
  }

  __p = 0;
  v13 = (16 * v2);
  v8 = vdup_lane_s32(vmovn_s64(vcgtq_u64(vdupq_laneq_s64(*a2, 1), *a2)), 0);
  v9.i64[0] = v8.i32[0];
  v9.i64[1] = v8.i32[1];
  *v13 = vandq_s8(*a2, v9);
  v14 = 16 * v2 + 16;
  v15 = 0;
  std::vector<amber::Range>::__swap_out_circular_buffer(a1, &__p);
  v10 = *(a1 + 8);
  if (v14 != v13)
  {
    v14 += (&v13->u64[1] - v14 + 7) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_29696CFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t **std::vector<amber::Range>::__swap_out_circular_buffer(unint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5;
      v8 = v5[1];
      v5 += 2;
      if (v7 >= v8)
      {
        v7 = 0;
        v8 = 0;
      }

      *v6 = v7;
      v6[1] = v8;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v9 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v9;
  v10 = result[1];
  result[1] = a2[2];
  a2[2] = v10;
  v11 = result[2];
  result[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::Range>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<amber::Range>::__emplace_back_slow_path<amber::Range>(uint64_t a1, int64x2_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::Range>>(a1, v7);
  }

  __p = 0;
  v13 = (16 * v2);
  v8 = vdup_lane_s32(vmovn_s64(vcgtq_u64(vdupq_laneq_s64(*a2, 1), *a2)), 0);
  v9.i64[0] = v8.i32[0];
  v9.i64[1] = v8.i32[1];
  *v13 = vandq_s8(*a2, v9);
  v14 = 16 * v2 + 16;
  v15 = 0;
  std::vector<amber::Range>::__swap_out_circular_buffer(a1, &__p);
  v10 = *(a1 + 8);
  if (v14 != v13)
  {
    v14 += (&v13->u64[1] - v14 + 7) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_29696D1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<amber::Range>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::Range>>(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    std::vector<amber::Range>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_29696D2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::NBDClientEndpoint::connectToServer(amber::NBDClientEndpoint *this, amber::NetworkEndpoint *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v37[0] = 0;
  v37[1] = 0x20000000001;
  v38 = 0x400000;
  v39 = 0;
  if (this)
  {
    v40 = 3;
    if ((amber::nbdClientHandshake(this, &v40, a3, a4, a5, a6, a7) & 0x80000000) != 0)
    {
      v15 = "client handshake";
      v16 = 15;
    }

    else if (v40)
    {
      v17 = amber::nbdClientOptionSupported(this, 8, v10, v11, v12, v13, v14);
      if (v17 < 0)
      {
        v15 = "server failed structured replies support";
        v16 = 22;
      }

      else
      {
        BYTE6(v38) = v17 != 0;
        v22 = amber::nbdClientOptionSupported(this, 0x10000, v18, v19, v20, v21, v14);
        if (v22 < 0)
        {
          v15 = "server failed Amber extended requests support";
          v16 = 27;
        }

        else
        {
          HIBYTE(v38) = v22 != 0;
          v27 = amber::nbdClientOptionSupported(this, 0x20000, v23, v24, v25, v26, v14);
          if (v27 < 0)
          {
            v15 = "server failed prefetch sequence support";
            v16 = 32;
          }

          else
          {
            v39 = v27 != 0;
            if ((amber::nbdClientOptionInfoGo(this, a2, v37, a3, v28, v29, v14) & 0x80000000) == 0)
            {
              operator new();
            }

            v15 = "server failed info/go request";
            v16 = 37;
          }
        }
      }
    }

    else
    {
      v15 = "HANDSHAKE_FLAG_FIXED_NEWSTYLE missing";
      v16 = 18;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDClientEndpoint.cpp", "connectToServer", v16, 0, v15, v14);
    amber::nbdClientOptionAbort(this, v30, v31, v32, v33, v34, v35);
    (*(*this + 8))(this);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDClientEndpoint.cpp", "connectToServer", 0xB, 0, "NBDClientEndpoint: invalid endpoint", a7);
  }

  return 0;
}

void amber::NBDClientEndpoint::~NBDClientEndpoint(amber::NBDClientEndpoint *this, amber::NetworkEndpoint *a2, uint64_t a3, const amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7, const void *a8)
{
  *this = &unk_2A1DE0B68;
  v9 = *(this + 1);
  if (v9)
  {
    if (*(this + 48) == 1)
    {
      if ((amber::nbdClientSendSimpleRequest(v9, 0, 2, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 0, a8) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      v11 = "NBD DISC request";
      v12 = 88;
    }

    else
    {
      if ((amber::nbdClientOptionAbort(v9, a2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      v11 = "NBD ABORT request";
      v12 = 96;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDClientEndpoint.cpp", "~NBDClientEndpoint", v12, 0, v11, v10);
LABEL_8:
    v13 = *(this + 1);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }
}

{
  amber::NBDClientEndpoint::~NBDClientEndpoint(this, a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::NBDClientEndpoint::sendRequest(amber::NBDClientEndpoint *this, amber::NetworkEndpoint *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, const char *a7, const amber::ObjectStorePath *a8, const amber::ObjectStorePath *a9, unint64_t a10, unint64_t a11)
{
  v11 = *(this + 39);
  if (*(a8 + 8))
  {
    v12 = *(a8 + 78) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && *(a8 + 148) != 0)
  {
    if ((*(this + 39) & 1) == 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDClientEndpoint.cpp", "sendRequest", 0x72, 0, "NBDClientEndpoint: Amber extended requests not supported", a7);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_14;
  }

  if (*(this + 39))
  {
LABEL_14:
    v16 = *(this + 1);

    return amber::nbdClientSendExtendedRequest(v16, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  v14 = *(this + 1);

  return amber::nbdClientSendSimpleRequest(v14, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t amber::NBDClientEndpoint::receiveReply(amber::NBDClientEndpoint *this, amber::NetworkEndpoint *a2, unsigned int *a3, unint64_t *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 38);
  v8 = *(this + 1);
  if (v7 == 1)
  {
    return amber::nbdClientReceiveStructuredReply(v8, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return amber::nbdClientReceiveSimpleReply(v8, a2, a3, a4, a5, a6, a7);
  }
}

void amber::RadosBlockDevice::~RadosBlockDevice(amber::RadosBlockDevice *this)
{
  *this = &unk_2A1DE0B98;
  amber::SyncBlockDevice::terminateThreads(this);
  v8 = *(this + 61);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::RadosBlockDevice::~RadosBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::RadosBlockDevice::getAttribute(amber::RadosBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RadosBlockDevice.cpp", "getAttribute", 0x66, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 203)
  {
    if (a2 == 204)
    {
      v14 = *(this + 120);
    }

    else
    {
      if (a2 != 205)
      {
        goto LABEL_14;
      }

      v16 = *(this + 120);
      do
      {
        v14 = v16;
        v16 *= 2;
      }

      while (v14 < 0x40000);
    }

LABEL_21:
    *a5 = 4;
    v18 = *(a4 + 2);
    if (v18)
    {
      if (v18 > 3)
      {
        result = 0;
        **(a4 + 1) = v14;
        return result;
      }

      v19 = 4;
LABEL_24:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, v19, v18);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  if (a2 == 201)
  {
    v17 = *(this + 59);
    *a5 = 8;
    v18 = *(a4 + 2);
    if (v18)
    {
      if (v18 > 7)
      {
        result = 0;
        **(a4 + 1) = v17;
        return result;
      }

      v19 = 8;
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 == 202)
  {
    v14 = *(this + 121);
    goto LABEL_21;
  }

LABEL_14:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::RadosBlockDevice::executeRead(amber::RadosImage **this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a3 + 14);
  v13 = amber::RadosImage::read(this[61], *(a3 + 8), v8, *(a3 + 6), a5, a6, a7);
  if (v13 == v8)
  {
    if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v9, v10, v11, v12) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RadosBlockDevice.cpp", "executeRead", 0x88, 0, "reply data", v18);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RadosBlockDevice.cpp", "executeRead", 0x87, 0, "rbd read", v12);
    amber::BlockDeviceRequest::sendReply(a3, -2147483643, 0, v14, v15, v16, v17);
  }

  if (v13 == v8)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::RadosBlockDevice::executeWrite(amber::RadosImage **this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(a3 + 14);
  if (amber::RadosImage::write(this[61], *(a3 + 8), v9, *(a3 + 6), a5, a6, a7) != v9)
  {
    v17 = -2147483643;
    v18 = "rbd write";
    v19 = 156;
LABEL_6:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RadosBlockDevice.cpp", "executeWrite", v19, 0, v18, v15);
    v16 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if ((*(a3 + 24) & 1) != 0 && (amber::RadosImage::flush(this[61], v10, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    v17 = -2147483643;
    v18 = "rbd sync";
    v19 = 159;
    goto LABEL_6;
  }

  v16 = 0;
  v17 = 1;
LABEL_7:
  amber::BlockDeviceRequest::sendReply(a3, v17, 0, v12, v13, v14, v15);
  return v16;
}

uint64_t amber::RadosBlockDevice::executeFlush(amber::RadosImage **this, uint64_t a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::RadosImage::flush(this[61], a2, a3, a4, a5, a6, a7);
  if (v9 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RadosBlockDevice.cpp", "executeFlush", 0xAF, 0, "rbd sync", v8);
    amber::BlockDeviceRequest::sendReply(a3, -2147483643, 0, v10, v11, v12, v13);
  }

  return (v9 >> 31);
}

void sub_29696DED8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29696DEB4);
}

uint64_t amber::KnoxPointerCreationAttributes::jsonParse(amber::KnoxPointerCreationAttributes *this, __n128 *a2)
{
  amber::KnoxPointerCreationAttributes::clear(this);
  v40 = -1;
  *__s1 = 0u;
  v42 = 0u;
  if ((amber::JSONInputStream::read(a2, &v40, v4, v5, v6, v7, v8) & 0x80000000) == 0)
  {
    v14 = -1;
    do
    {
      if (v14 == -1)
      {
        v14 = v43;
      }

      if (v43 == v14)
      {
        if (!v40)
        {
          goto LABEL_24;
        }

        if (v40 == 2)
        {
          return 0;
        }
      }

      if (v43 != v14 + 1)
      {
        goto LABEL_26;
      }

      if (v40 == 3)
      {
        v26 = __s1[0];
        if (!__s1[0])
        {
          goto LABEL_26;
        }

        v27 = strcmp(__s1[0], "pointer_name");
        v28 = this + 120;
        if (v27)
        {
          v29 = strcmp(v26, "file_name");
          v28 = this + 120;
          if (v29)
          {
            v30 = strcmp(v26, "file_digest");
            v28 = this + 144;
            if (v30)
            {
              goto LABEL_26;
            }
          }
        }

        MEMORY[0x29C25BF00](v28, *(&v42 + 1));
      }

      else
      {
        if (v40)
        {
          goto LABEL_26;
        }

        v15 = __s1[0];
        if (!__s1[0])
        {
          goto LABEL_26;
        }

        if (strcmp(__s1[0], "upload_attributes"))
        {
          if (strcmp(v15, "pointer_fields") && strcmp(v15, "fields"))
          {
LABEL_26:
            v39 = v44;
            v36 = "invalid KnoxPointerCreationAttributes line %d";
            v37 = 56;
            goto LABEL_27;
          }

          amber::JSONInputStream::unread(a2, &v40, v21, v22, v23, v24, v13);
          if ((v25 & 0x80000000) == 0)
          {
            amber::JSONInputStream::captureDict();
          }

          v36 = "parsing fields";
          v37 = 38;
          goto LABEL_27;
        }

        amber::JSONInputStream::unread(a2, &v40, v16, v17, v18, v19, v20);
        if (v35 < 0 || (amber::KnoxUploadAttributes::jsonParse((this + 8), a2, v31, v32, v33, v34, v13) & 0x80000000) != 0)
        {
          v36 = "parsing upload attributes";
          v37 = 30;
          goto LABEL_27;
        }
      }

LABEL_24:
      v40 = -1;
      *__s1 = 0u;
      v42 = 0u;
    }

    while ((amber::JSONInputStream::read(a2, &v40, v9, v10, v11, v12, v13) & 0x80000000) == 0);
  }

  v36 = "read token";
  v37 = 14;
LABEL_27:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "jsonParse", v37, 0, v36, v13, v39);
  amber::KnoxPointerCreationAttributes::clear(this);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxPointerCreationAttributes::clear(uint64_t this)
{
  if (*(this + 39) < 0)
  {
    **(this + 16) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 16) = 0;
    *(this + 39) = 0;
  }

  *(this + 48) = *(this + 40);
  *(this + 72) = *(this + 64);
  *(this + 88) = -1;
  if (*(this + 119) < 0)
  {
    **(this + 96) = 0;
    *(this + 104) = 0;
  }

  else
  {
    *(this + 96) = 0;
    *(this + 119) = 0;
  }

  if (*(this + 143) < 0)
  {
    **(this + 120) = 0;
    *(this + 128) = 0;
  }

  else
  {
    *(this + 120) = 0;
    *(this + 143) = 0;
  }

  if (*(this + 167) < 0)
  {
    **(this + 144) = 0;
    *(this + 152) = 0;
  }

  else
  {
    *(this + 144) = 0;
    *(this + 167) = 0;
  }

  return this;
}

uint64_t amber::KnoxPointerCreationAttributes::jsonSerialize(amber::KnoxPointerCreationAttributes *this, const void **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginDict(a2, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0 || ((*(*(this + 1) + 24))(this + 8, a2, "upload_attributes") & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  v15 = this + 96;
  if (*(this + 119) < 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_9;
    }

    v15 = *v15;
  }

  else if (!*(this + 119))
  {
    goto LABEL_9;
  }

  v27[0] = v15;
  v27[1] = strlen(v15);
  if ((amber::JSONOutputStream::appendJSON(a2, "pointer_fields", v27, v16, v17, v18, v19) & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v20 = (this + 120);
  v21 = *(this + 143);
  if (v21 < 0)
  {
    v21 = *(this + 16);
    if (!v21)
    {
      goto LABEL_15;
    }

    v20 = *v20;
  }

  else if (!*(this + 143))
  {
    goto LABEL_15;
  }

  v26[0] = v20;
  v26[1] = v21;
  if ((amber::JSONOutputStream::append(a2, "pointer_name", v26, v12, v13, v14, v9) & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v22 = (this + 144);
  v23 = *(this + 167);
  if (v23 < 0)
  {
    v23 = *(this + 19);
    if (!v23)
    {
      goto LABEL_21;
    }

    v22 = *v22;
LABEL_20:
    v25[0] = v22;
    v25[1] = v23;
    if ((amber::JSONOutputStream::append(a2, "file_digest", v25, v12, v13, v14, v9) & 0x80000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (*(this + 167))
  {
    goto LABEL_20;
  }

LABEL_21:
  if ((amber::JSONOutputStream::end(a2, v10, v11, v12, v13, v14, v9) & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_23:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "jsonSerialize", 0x48, 0, "serialize KnoxPointerCreationAttributes", v9);
  return 0xFFFFFFFFLL;
}

uint64_t amber::fromAmberObject(uint64_t a1, uint64_t a2)
{
  MEMORY[0x29C25BF00](a1 + 96, a2 + 4376);
  MEMORY[0x29C25BF00](a1 + 120, a2 + 6424);
  MEMORY[0x29C25BF00](a1 + 144, a2 + 7448);
  if ((amber::fromAmberObject((a1 + 8), a2) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "fromAmberObject", 0x51, 0, "invalid attributes", v4);
  return 0xFFFFFFFFLL;
}

{
  MEMORY[0x29C25BF00](a1 + 96, a2 + 4376);
  MEMORY[0x29C25BF00](a1 + 120, a2 + 6424);
  MEMORY[0x29C25BF00](a1 + 152, a2 + 7456);
  MEMORY[0x29C25BF00](a1 + 176, a2 + 7712);
  MEMORY[0x29C25BF00](a1 + 200, a2 + 7968);
  *(a1 + 224) = *(a2 + 8224);
  *(a1 + 144) = *(a2 + 7448);
  if ((amber::fromAmberObject((a1 + 8), a2) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "fromAmberObject", 0xDD, 0, "invalid attributes", v4);
  return 0xFFFFFFFFLL;
}

{
  *(a1 + 216) = *(a2 + 8216);
  MEMORY[0x29C25BF00](a1 + 96, a2 + 4376);
  MEMORY[0x29C25BF00](a1 + 120, a2 + 6424);
  MEMORY[0x29C25BF00](a1 + 144, a2 + 7448);
  MEMORY[0x29C25BF00](a1 + 168, a2 + 7704);
  MEMORY[0x29C25BF00](a1 + 192, a2 + 7960);
  if ((amber::fromAmberObject((a1 + 8), a2) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "fromAmberObject", 0x6C, 0, "invalid attributes", v4);
  return 0xFFFFFFFFLL;
}

uint64_t amber::toAmberObject(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 143) < 0 && *(a1 + 128) > 0x3FFuLL || *(a1 + 167) < 0 && *(a1 + 152) > 0xFFuLL || *(a1 + 119) < 0 && *(a1 + 104) > 0x7FFuLL)
  {
    v9 = 90;
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "toAmberObject", v9, 0, "invalid AmberKnoxPointerCreationAttributes capacity", a7);
    return 0xFFFFFFFFLL;
  }

  v11 = (a1 + 120);
  v12 = (a1 + 144);
  amber::zero(void *,unsigned long)::memset_func(a2, 0, 7704);
  v15 = *(a1 + 96);
  v14 = a1 + 96;
  v13 = v15;
  if (*(v14 + 23) >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  strlcpy(a2 + 4376, v16, 0x800uLL);
  if (*(v14 + 47) >= 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v14 + 24);
  }

  strlcpy(a2 + 6424, v17, 0x400uLL);
  if (*(v14 + 71) >= 0)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v14 + 48);
  }

  strlcpy(a2 + 7448, v18, 0x100uLL);
  v24 = amber::toAmberObject(v14 - 88, a2, v19, v20, v21, v22, v23);
  result = 0;
  if (v24 < 0)
  {
    v9 = 96;
    goto LABEL_8;
  }

  return result;
}

uint64_t amber::KnoxPointer::jsonParse(amber::KnoxPointer *this, __n128 *a2)
{
  amber::KnoxPointer::clear(this);
  LODWORD(v41) = -1;
  *__s1 = 0u;
  v43 = 0u;
  if ((amber::JSONInputStream::read(a2, &v41, v4, v5, v6, v7, v8) & 0x80000000) == 0)
  {
    v14 = -1;
    while (1)
    {
      if (v14 == -1)
      {
        v14 = v46;
      }

      if (v46 == v14)
      {
        if (!v41)
        {
          goto LABEL_39;
        }

        if (v41 == 2)
        {
          return 0;
        }
      }

      if (v46 != v14 + 1)
      {
        goto LABEL_44;
      }

      if (v41 == 4)
      {
        break;
      }

      if (v41 == 3)
      {
        v26 = __s1[0];
        if (!__s1[0])
        {
          goto LABEL_44;
        }

        if (!strcmp(__s1[0], "pointer_name") || !strcmp(v26, "file_name"))
        {
          v27 = *(&v43 + 1);
          v28 = this + 120;
          goto LABEL_30;
        }

        if (!strcmp(v26, "file_digest"))
        {
          v27 = *(&v43 + 1);
          v28 = this + 152;
          goto LABEL_30;
        }

        if (!strcmp(v26, "file_digest_algorithm"))
        {
          v27 = *(&v43 + 1);
          v28 = this + 176;
          goto LABEL_30;
        }

        if (!strcmp(v26, "file_mime_type"))
        {
          v27 = *(&v43 + 1);
          v28 = this + 200;
LABEL_30:
          MEMORY[0x29C25BF00](v28, v27);
          goto LABEL_39;
        }

LABEL_37:
        if (strcmp(v26, "pointer_creation_time"))
        {
          goto LABEL_44;
        }

        v36 = amber::JSONInputStream::Token::parseTime(&v41);
        *(this + 18) = v36;
        if (v36 == -1)
        {
          v37 = "invalid time format";
          v38 = 180;
          goto LABEL_45;
        }

        goto LABEL_39;
      }

      if (v41)
      {
        goto LABEL_44;
      }

      v15 = __s1[0];
      if (!__s1[0])
      {
        goto LABEL_44;
      }

      if (strcmp(__s1[0], "upload_attributes"))
      {
        if (strcmp(v15, "pointer_fields") && strcmp(v15, "fields"))
        {
LABEL_44:
          v40 = v47;
          v37 = "invalid KnoxPointer line %d";
          v38 = 186;
          goto LABEL_45;
        }

        amber::JSONInputStream::unread(a2, &v41, v21, v22, v23, v24, v13);
        if ((v25 & 0x80000000) == 0)
        {
          amber::JSONInputStream::captureDict();
        }

        v37 = "parsing fields";
        v38 = 135;
        goto LABEL_45;
      }

      amber::JSONInputStream::unread(a2, &v41, v16, v17, v18, v19, v20);
      if (v35 < 0 || (amber::KnoxUploadAttributes::jsonParse((this + 8), a2, v31, v32, v33, v34, v13) & 0x80000000) != 0)
      {
        v37 = "parsing upload attributes";
        v38 = 127;
        goto LABEL_45;
      }

LABEL_39:
      LODWORD(v41) = -1;
      *__s1 = 0u;
      v43 = 0u;
      if ((amber::JSONInputStream::read(a2, &v41, v9, v10, v11, v12, v13) & 0x80000000) != 0)
      {
        goto LABEL_43;
      }
    }

    v26 = __s1[0];
    if (!__s1[0])
    {
      goto LABEL_44;
    }

    v29 = strcmp(__s1[0], "file_size");
    v30 = v45;
    if (!v29 && (v45 & 0x80000000) == 0)
    {
      *(this + 28) = v44;
      goto LABEL_39;
    }

    if (!strcmp(v26, "file_encrypted_size") && (v30 & 0x80000000) == 0)
    {
      *(this + 29) = v44;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_43:
  v37 = "read token";
  v38 = 111;
LABEL_45:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "jsonParse", v38, 0, v37, v13, v40);
  amber::KnoxPointer::clear(this);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxPointer::clear(uint64_t this)
{
  if (*(this + 39) < 0)
  {
    **(this + 16) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 16) = 0;
    *(this + 39) = 0;
  }

  *(this + 48) = *(this + 40);
  *(this + 72) = *(this + 64);
  *(this + 88) = -1;
  if (*(this + 119) < 0)
  {
    **(this + 96) = 0;
    *(this + 104) = 0;
  }

  else
  {
    *(this + 96) = 0;
    *(this + 119) = 0;
  }

  if (*(this + 143) < 0)
  {
    **(this + 120) = 0;
    *(this + 128) = 0;
  }

  else
  {
    *(this + 120) = 0;
    *(this + 143) = 0;
  }

  if (*(this + 175) < 0)
  {
    **(this + 152) = 0;
    *(this + 160) = 0;
  }

  else
  {
    *(this + 152) = 0;
    *(this + 175) = 0;
  }

  if (*(this + 199) < 0)
  {
    **(this + 176) = 0;
    *(this + 184) = 0;
  }

  else
  {
    *(this + 176) = 0;
    *(this + 199) = 0;
  }

  if (*(this + 223) < 0)
  {
    **(this + 200) = 0;
    *(this + 208) = 0;
  }

  else
  {
    *(this + 200) = 0;
    *(this + 223) = 0;
  }

  *(this + 144) = 0;
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

uint64_t amber::KnoxPointer::jsonSerialize(amber::KnoxPointer *this, const void **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginDict(a2, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0 || ((*(*(this + 1) + 24))(this + 8, a2, "upload_attributes") & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v14 = this + 96;
  if (*(this + 119) < 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_9;
    }

    v14 = *v14;
  }

  else if (!*(this + 119))
  {
    goto LABEL_9;
  }

  v35[0] = v14;
  v35[1] = strlen(v14);
  if ((amber::JSONOutputStream::appendJSON(a2, "pointer_fields", v35, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_9:
  v19 = (this + 120);
  v20 = *(this + 143);
  if (v20 < 0)
  {
    v20 = *(this + 16);
    if (!v20)
    {
      goto LABEL_15;
    }

    v19 = *v19;
  }

  else if (!*(this + 143))
  {
    goto LABEL_15;
  }

  v34[0] = v19;
  v34[1] = v20;
  if ((amber::JSONOutputStream::append(a2, "pointer_name", v34, v11, v12, v13, v9) & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_15:
  v21 = *(this + 18);
  if (v21 && (amber::JSONOutputStream::appendTime(a2, "pointer_creation_time", v21) & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v22 = (this + 152);
  v23 = *(this + 175);
  if (v23 < 0)
  {
    v23 = *(this + 20);
    if (!v23)
    {
      goto LABEL_23;
    }

    v22 = *v22;
  }

  else if (!*(this + 175))
  {
    goto LABEL_23;
  }

  v33[0] = v22;
  v33[1] = v23;
  if ((amber::JSONOutputStream::append(a2, "file_digest", v33, v11, v12, v13, v9) & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_23:
  v24 = (this + 176);
  v25 = *(this + 199);
  if (v25 < 0)
  {
    v25 = *(this + 23);
    if (!v25)
    {
      goto LABEL_29;
    }

    v24 = *v24;
  }

  else if (!*(this + 199))
  {
    goto LABEL_29;
  }

  v32[0] = v24;
  v32[1] = v25;
  if ((amber::JSONOutputStream::append(a2, "file_digest_algorithm", v32, v11, v12, v13, v9) & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_29:
  v26 = (this + 200);
  v27 = *(this + 223);
  if (v27 < 0)
  {
    v27 = *(this + 26);
    if (!v27)
    {
      goto LABEL_35;
    }

    v26 = *v26;
LABEL_34:
    v31[0] = v26;
    v31[1] = v27;
    if ((amber::JSONOutputStream::append(a2, "file_mime_type", v31, v11, v12, v13, v9) & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (*(this + 223))
  {
    goto LABEL_34;
  }

LABEL_35:
  v28 = *(this + 28);
  if (!v28 || (amber::JSONOutputStream::append(a2, "file_size", 1, v28, 0, v13, v9) & 0x80000000) == 0)
  {
    v29 = *(this + 29);
    if ((!v29 || (amber::JSONOutputStream::append(a2, "file_encrypted_size", 1, v29, 0, v13, v9) & 0x80000000) == 0) && (amber::JSONOutputStream::end(a2, v10, v21, v29, v12, v13, v9) & 0x80000000) == 0)
    {
      return 0;
    }
  }

LABEL_41:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "jsonSerialize", 0xCF, 0, "serialize KnoxPointer", v9);
  return 0xFFFFFFFFLL;
}

uint64_t amber::toAmberObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 143) < 0 && *(a1 + 128) > 0x3FFuLL || *(a1 + 175) < 0 && *(a1 + 160) > 0xFFuLL || *(a1 + 199) < 0 && *(a1 + 184) > 0xFFuLL || *(a1 + 223) < 0 && *(a1 + 208) > 0xFFuLL || *(a1 + 119) < 0 && *(a1 + 104) > 0x7FFuLL)
  {
    v9 = 232;
LABEL_12:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "toAmberObject", v9, 0, "invalid AmberKnoxPointer capacity", a7);
    return 0xFFFFFFFFLL;
  }

  v11 = (a1 + 120);
  v12 = (a1 + 152);
  v13 = (a1 + 176);
  v14 = (a1 + 200);
  amber::zero(void *,unsigned long)::memset_func(a2, 0, 8240);
  v17 = *(a1 + 96);
  v16 = a1 + 96;
  v15 = v17;
  if (*(v16 + 23) >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  strlcpy((a2 + 4376), v18, 0x800uLL);
  if (*(v16 + 47) >= 0)
  {
    v19 = v11;
  }

  else
  {
    v19 = *(v16 + 24);
  }

  strlcpy((a2 + 6424), v19, 0x400uLL);
  if (*(v16 + 79) >= 0)
  {
    v20 = v12;
  }

  else
  {
    v20 = *(v16 + 56);
  }

  strlcpy((a2 + 7456), v20, 0x100uLL);
  if (*(v16 + 103) >= 0)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v16 + 80);
  }

  strlcpy((a2 + 7712), v21, 0x100uLL);
  if (*(v16 + 127) >= 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = *(v16 + 104);
  }

  strlcpy((a2 + 7968), v22, 0x100uLL);
  *(a2 + 8224) = *(v16 + 128);
  *(a2 + 7448) = *(v16 + 48);
  v28 = amber::toAmberObject(v16 - 88, a2, v23, v24, v25, v26, v27);
  result = 0;
  if (v28 < 0)
  {
    v9 = 243;
    goto LABEL_12;
  }

  return result;
}

{
  if (*(a1 + 31) < 0 && *(a1 + 16) > 0xFFuLL || *(a1 + 40) - *(a1 + 32) > 0x800uLL || *(a1 + 64) - *(a1 + 56) >= 0x801uLL)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadAttributes.cpp", "toAmberObject", 0x71, 0, "invalid internal KnoxUploadAttributes", a7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    amber::zero(void *,unsigned long)::memset_func(a2, 0, 4376);
    if (*(a1 + 31) >= 0)
    {
      v10 = (a1 + 8);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    strlcpy(a2, v10, 0x100uLL);
    v11 = *(a1 + 32);
    v12 = (*(a1 + 40) - v11) >> 3;
    *(a2 + 2304) = v12;
    v13 = v12;
    if (v12)
    {
      v14 = (a2 + 256);
      do
      {
        v15 = *v11++;
        *v14++ = v15;
        --v13;
      }

      while (v13);
    }

    v16 = *(a1 + 56);
    v17 = (*(a1 + 64) - v16) >> 3;
    *(a2 + 4360) = v17;
    v18 = v17;
    if (v17)
    {
      v19 = (a2 + 2312);
      do
      {
        v20 = *v16++;
        *v19++ = v20;
        --v18;
      }

      while (v18);
    }

    result = 0;
    *(a2 + 4368) = *(a1 + 80);
  }

  return result;
}

{
  if (*(a1 + 143) < 0 && *(a1 + 128) > 0x3FFuLL || *(a1 + 167) < 0 && *(a1 + 152) > 0xFFuLL || *(a1 + 191) < 0 && *(a1 + 176) > 0xFFuLL || *(a1 + 215) < 0 && *(a1 + 200) > 0xFFuLL || *(a1 + 119) < 0 && *(a1 + 104) >= 0x800uLL)
  {
    v9 = "invalid AmberKnoxFileCreationAttributes capacity";
    v10 = 119;
LABEL_12:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "toAmberObject", v10, 0, v9, a7);
    return 0xFFFFFFFFLL;
  }

  amber::zero(void *,unsigned long)::memset_func(a2, 0, 8224);
  if (*(a1 + 119) >= 0)
  {
    v12 = (a1 + 96);
  }

  else
  {
    v12 = *(a1 + 96);
  }

  strlcpy((a2 + 4376), v12, 0x800uLL);
  if (*(a1 + 143) >= 0)
  {
    v13 = (a1 + 120);
  }

  else
  {
    v13 = *(a1 + 120);
  }

  strlcpy((a2 + 6424), v13, 0x400uLL);
  if (*(a1 + 167) >= 0)
  {
    v14 = (a1 + 144);
  }

  else
  {
    v14 = *(a1 + 144);
  }

  strlcpy((a2 + 7448), v14, 0x100uLL);
  if (*(a1 + 191) >= 0)
  {
    v15 = (a1 + 168);
  }

  else
  {
    v15 = *(a1 + 168);
  }

  strlcpy((a2 + 7704), v15, 0x100uLL);
  if (*(a1 + 215) >= 0)
  {
    v16 = (a1 + 192);
  }

  else
  {
    v16 = *(a1 + 192);
  }

  strlcpy((a2 + 7960), v16, 0x100uLL);
  if ((amber::toAmberObject(a1 + 8, a2, v17, v18, v19, v20, v21) & 0x80000000) != 0)
  {
    v9 = "invalid AmberKnoxUploadAttributes capacity";
    v10 = 127;
    goto LABEL_12;
  }

  result = 0;
  *(a2 + 8216) = *(a1 + 216);
  return result;
}

{
  if (*(a1 + 32) <= 0x100u && *(a1 + 312) < 0x101u)
  {
    amber::zero(void *,unsigned long)::memset_func(a2, 0, 544);
    v11 = *(a1 + 32);
    if (v11 >= 0x101)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v10, &off_2A1DDFC68, a1 + 36, v11, &off_2A1DDFDA8, a2, 256);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memcpy(a2, (a1 + 36), v11);
    *(a2 + 256) = *(a1 + 32);
    v13 = *(a1 + 312);
    if (v13 >= 0x101)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v12, &off_2A1DDFC68, a1 + 316, v13, &off_2A1DDFDA8, a2 + 260, 256);
      v15 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v15, "memory invalid range");
      __cxa_throw(v15, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memcpy((a2 + 260), (a1 + 316), v13);
    result = 0;
    *(a2 + 516) = *(a1 + 312);
    *(a2 + 520) = *(a1 + 576);
    *(a2 + 528) = *(a1 + 584);
    *(a2 + 536) = *(a1 + 592);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "toAmberObject", 0x13, 0, "attribute size mismatch", a7);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t amber::KnoxContext::pointerCreate(amber::KnoxContext *this, const amber::KnoxPointerCreationAttributes *a2, amber::KnoxPointer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v36[0] = &unk_2A1DDFD28;
  v36[2] = 0;
  v36[3] = 0;
  v36[1] = off_2A1DDFD48;
  v36[5] = 0;
  v36[6] = 0;
  v36[4] = &off_2A1DDFDA8;
  v36[7] = &off_2A1DDFC68;
  v37 = 0u;
  v38 = 0u;
  v39 = 1;
  v40 = 0;
  v31[0] = &unk_2A1DDFD28;
  v31[2] = 0;
  v31[3] = 0;
  v31[1] = off_2A1DDFD48;
  v31[5] = 0;
  v31[6] = 0;
  v31[4] = &off_2A1DDFDA8;
  v31[7] = &off_2A1DDFC68;
  v32 = 0u;
  v33 = 0u;
  v34 = 1;
  v35 = 0;
  v7 = *(a2 + 119);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 13);
  }

  if (v7)
  {
    v9 = *(a2 + 167);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 19);
    }

    if (v9)
    {
      v10 = *(a2 + 39);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a2 + 3);
      }

      if (v10 && *(a2 + 8) != *(a2 + 9))
      {
        amber::KnoxPointer::clear(a3);
        std::string::operator=((a3 + 16), (a2 + 16));
        if (a3 != a2)
        {
          std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a3 + 5, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
          std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a3 + 8, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
        }

        *(a3 + 11) = *(a2 + 11);
        std::string::operator=(a3 + 4, a2 + 4);
        std::string::operator=(a3 + 5, a2 + 5);
        std::string::operator=((a3 + 152), a2 + 6);
        amber::Buffer::resize(v31, 0, v12, v13, v14, v15, v16);
        amber::JSONOutputStream::JSONOutputStream(v30, v31);
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "pointerCreate", 0x108, 0, "incomplete pointer creation attributes", a7);
  amber::Buffer::~Buffer(v31, v17, v18, v19, v20, v21, v22);
  amber::Buffer::~Buffer(v36, v23, v24, v25, v26, v27, v28);
  return 0xFFFFFFFFLL;
}

void sub_29696F5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  amber::JSONInputStream::~JSONInputStream(&a25);
  amber::Buffer::~Buffer(&a58, v60, v61, v62, v63, v64, v65);
  amber::Buffer::~Buffer((v58 - 192), v66, v67, v68, v69, v70, v71);
  _Unwind_Resume(a1);
}

uint64_t amber::JSONOutputStream::append(amber::JSONOutputStream *this, const char *a2, const char *__s)
{
  v10[0] = __s;
  v10[1] = strlen(__s);
  return amber::JSONOutputStream::append(this, a2, v10, v5, v6, v7, v8);
}

uint64_t amber::JSONOutputStream::append(amber::JSONOutputStream *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a3;
  if (a3 < 0)
  {
    v8 = -a3;
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 1;
  }

  return amber::JSONOutputStream::append(this, a2, v9, v8, a4, a6, a7);
}

{
  v7 = a5;
  v9 = a3;
  amber::Buffer::resize((this + 56), 0, a3, a4, a5, a6, a7);
  if ((amber::JSONOutputStream::pushLabel(this, a2, v12, v13, v14, v15, v16) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 32, v17, v18, v19, v20, v21) & 0x80000000) == 0)
  {
    v26 = v7 ? "" : "";
    v48[0] = v26;
    v48[1] = v7;
    if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v48, v22, v23, v24, v25, v21) & 0x80000000) == 0)
    {
      v31 = "-";
      if (v9 >= 0)
      {
        v31 = "";
      }

      v47[0] = v31;
      v47[1] = v9 >> 31;
      if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v47, v27, v28, v29, v30, v21) & 0x80000000) == 0 && (jsonPrintf((this + 56), "%llu", v32, v33, v34, v35, v21, a4) & 0x80000000) == 0)
      {
        v46[0] = v26;
        v46[1] = v7;
        if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v46, v36, v37, v38, v39, v21) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v40, v41, v42, v43, v44, v21) & 0x80000000) == 0)
        {
          return 0;
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "append", 0x3B, 0, "JSON append", v21);
  return 0xFFFFFFFFLL;
}

{
  v7 = a3;
  if (a3)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  amber::Buffer::resize((this + 56), 0, a3, a4, a5, a6, a7);
  if ((amber::JSONOutputStream::pushLabel(this, a2, v11, v12, v13, v14, v15) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 32, v16, v17, v18, v19, v20) & 0x80000000) == 0)
  {
    v25 = 4;
    if (!v7)
    {
      v25 = 5;
    }

    v32[0] = v10;
    v32[1] = v25;
    if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v32, v21, v22, v23, v24, v20) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v26, v27, v28, v29, v30, v20) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "append", 0x47, 0, "JSON append", v20);
  return 0xFFFFFFFFLL;
}

{
  amber::Buffer::resize((this + 56), 0, a3, a4, a5, a6, a7);
  if ((amber::JSONOutputStream::pushLabel(this, a2, v9, v10, v11, v12, v13) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 32, v14, v15, v16, v17, v18) & 0x80000000) == 0)
  {
    v29[0] = "null";
    v29[1] = 4;
    if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v29, v19, v20, v21, v22, v18) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v23, v24, v25, v26, v27, v18) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "append", 0x84, 0, "JSON append", v18);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxContext::pointerSearch(amber::KnoxContext *a1, const std::string::value_type *a2, const std::string::value_type *a3)
{
  memset(&v40, 0, sizeof(v40));
  v35[0] = &unk_2A1DDFD28;
  v35[2] = 0;
  v35[3] = 0;
  v35[1] = off_2A1DDFD48;
  v35[5] = 0;
  v35[6] = 0;
  v35[4] = &off_2A1DDFDA8;
  v35[7] = &off_2A1DDFC68;
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  v39 = 0;
  v19[0] = &unk_2A1DE0CE8;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  __src = 0u;
  v19[1] = &unk_2A1DE1008;
  v24 = 0;
  v25 = -1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  MEMORY[0x29C25BF00](&v40, "pointers?type=");
  std::string::append(&v40, a2);
  std::string::append(&v40, "&");
  std::string::append(&v40, a3);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v40;
  }

  else
  {
    v6 = v40.__r_.__value_.__r.__words[0];
  }

  v18[1] = 0;
  v18[2] = 0;
  v18[0] = &off_2A1DDFC68;
  if ((amber::KnoxContext::knoxPerform(a1, 1u, v6, v18, v35) & 0x80000000) == 0)
  {
    amber::Buffer::constBuf(v35, v7, &v16);
    amber::ConstMemoryView::view(&v16, v37, *(&v37 + 1) - v37, v8, v17);
    amber::JSONInputStream::JSONInputStream(v18, v17);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "pointerSearch", 0x191, 0, "Knox search failed", v7);
  amber::KnoxPointer::~KnoxPointer(v19);
  amber::Buffer::~Buffer(v35, v9, v10, v11, v12, v13, v14);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  return 0xFFFFFFFFLL;
}

void sub_296970074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  amber::JSONInputStream::~JSONInputStream(&a31);
  amber::KnoxPointer::~KnoxPointer(&a58);
  amber::Buffer::~Buffer((v58 - 216), v60, v61, v62, v63, v64, v65);
  if (*(v58 - 89) < 0)
  {
    operator delete(*(v58 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContext::pointerFieldValuesString(amber::KnoxContext *a1, const std::string::value_type *a2, const std::string::value_type *a3, void ***a4)
{
  memset(&v24, 0, sizeof(v24));
  v19[0] = &unk_2A1DDFD28;
  v19[2] = 0;
  v19[3] = 0;
  v19[1] = off_2A1DDFD48;
  v19[5] = 0;
  v19[6] = 0;
  v19[4] = &off_2A1DDFDA8;
  v19[7] = &off_2A1DDFC68;
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  v23 = 0;
  std::vector<std::string>::clear[abi:ne200100](a4);
  std::string::append(&v24, "types/");
  std::string::append(&v24, a2);
  std::string::append(&v24, "/fields/");
  std::string::append(&v24, a3);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24.__r_.__value_.__r.__words[0];
  }

  v18[1] = 0;
  v18[2] = 0;
  v18[0] = &off_2A1DDFC68;
  if ((amber::KnoxContext::knoxPerform(a1, 1u, v7, v18, v19) & 0x80000000) == 0)
  {
    amber::Buffer::constBuf(v19, v8, v17);
    amber::ConstMemoryView::view(v17, v21, *(&v21 + 1) - v21, v9, &v25);
    amber::JSONInputStream::JSONInputStream(v18, &v25);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "pointerFieldValuesString", 0x264, 0, "Knox query", v8);
  amber::Buffer::~Buffer(v19, v10, v11, v12, v13, v14, v15);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return 0xFFFFFFFFLL;
}

void sub_29697052C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  amber::JSONInputStream::~JSONInputStream(&a25);
  amber::Buffer::~Buffer((v25 - 256), v27, v28, v29, v30, v31, v32);
  if (*(v25 - 129) < 0)
  {
    operator delete(*(v25 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t AmberKnoxPointerArrayGetEntryAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 16);
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 24) - v7) >> 4) <= a2)
  {
    v9 = "index out of range";
    v10 = 668;
  }

  else
  {
    if ((amber::toAmberObject(v7 + 240 * a2, a3, a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v9 = "invalid KnoxPointer";
    v10 = 669;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerArrayGetEntryAtIndex", v10, 0, v9, a7);
  return 0xFFFFFFFFLL;
}

uint64_t AmberKnoxPointerArrayAppendEntry(uint64_t a1, uint64_t a2)
{
  v8[0] = &unk_2A1DE0CE8;
  v8[1] = &unk_2A1DE1008;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = -1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  if ((amber::fromAmberObject(v8, a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerArrayAppendEntry", 0x2A7, 0, "invalid KnoxPointer", v3);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4 >= *(a1 + 32))
    {
      v5 = std::vector<amber::KnoxPointer>::__emplace_back_slow_path<amber::KnoxPointer const&>(a1 + 16, v8);
    }

    else
    {
      amber::KnoxPointer::KnoxPointer(*(a1 + 24), v8);
      v5 = v4 + 240;
      *(a1 + 24) = v4 + 240;
    }

    v6 = 0;
    *(a1 + 24) = v5;
  }

  amber::KnoxPointer::~KnoxPointer(v8);
  return v6;
}

void sub_2969707DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 24) = v10;
  amber::KnoxPointer::~KnoxPointer(&a9);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxPointerArrayDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberKnoxPointerCreationAttributesParseJSON(char *a1, amber::Stream *a2)
{
  v12[0] = &unk_2A1DE0CA0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12[1] = &unk_2A1DE1008;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = 0;
  v18 = -1;
  v23 = 0;
  amber::JSONInputStream::JSONInputStream(v11, a2);
  if ((amber::KnoxPointerCreationAttributes::jsonParse(v12, v11) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerCreationAttributesParseJSON", 0x2B9, 0, "JSON parse AmberKnoxPointerCreationAttributes", v7);
LABEL_6:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if ((amber::toAmberObject(v12, a1, v3, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerCreationAttributesParseJSON", 0x2BA, 0, "invalid object", v8);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:
  amber::JSONInputStream::~JSONInputStream(v11);
  amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes(v12);
  return v9;
}

void sub_296970950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::JSONInputStream::~JSONInputStream(&a9);
  amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes((v9 - 184));
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxPointerCreationAttributesSerializeJSON(uint64_t a1, amber::Stream *a2)
{
  v12[0] = &unk_2A1DE0CA0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12[1] = &unk_2A1DE1008;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = 0;
  v18 = -1;
  v23 = 0;
  if ((amber::fromAmberObject(v12, a1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerCreationAttributesSerializeJSON", 0x2C1, 0, "invalid object", v3);
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    amber::JSONOutputStream::JSONOutputStream(v11, a2, 1);
    if ((amber::KnoxPointerCreationAttributes::jsonSerialize(v12, v11, 0, v4, v5, v6, v7) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerCreationAttributesSerializeJSON", 0x2C5, 0, "JSON serializate AmberKnoxPointerCreationAttributes", v8);
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
    }

    amber::JSONOutputStream::~JSONOutputStream(v11);
  }

  amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes(v12);
  return v9;
}

void sub_296970AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::JSONOutputStream::~JSONOutputStream(&a9);
  amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes((v9 - 184));
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxPointerParseJSON(uint64_t a1, amber::Stream *a2)
{
  v12[0] = &unk_2A1DE0CE8;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12[1] = &unk_2A1DE1008;
  v17 = 0;
  v18 = -1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  amber::JSONInputStream::JSONInputStream(v11, a2);
  if ((amber::KnoxPointer::jsonParse(v12, v11) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerParseJSON", 0x2CF, 0, "JSON parse AmberKnoxPointer", v7);
LABEL_6:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if ((amber::toAmberObject(v12, a1, v3, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerParseJSON", 0x2D0, 0, "invalid object", v8);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:
  amber::JSONInputStream::~JSONInputStream(v11);
  amber::KnoxPointer::~KnoxPointer(v12);
  return v9;
}

void sub_296970C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  amber::JSONInputStream::~JSONInputStream(&a10);
  amber::KnoxPointer::~KnoxPointer(&a37);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxPointerSerializeJSON(uint64_t a1, amber::Stream *a2)
{
  v12[0] = &unk_2A1DE0CE8;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12[1] = &unk_2A1DE1008;
  v17 = 0;
  v18 = -1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if ((amber::fromAmberObject(v12, a1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerSerializeJSON", 0x2D7, 0, "invalid object", v3);
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    amber::JSONOutputStream::JSONOutputStream(v11, a2, 1);
    if ((amber::KnoxPointer::jsonSerialize(v12, v11, 0, v4, v5, v6, v7) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerSerializeJSON", 0x2DB, 0, "JSON serialization", v8);
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
    }

    amber::JSONOutputStream::~JSONOutputStream(v11);
  }

  amber::KnoxPointer::~KnoxPointer(v12);
  return v9;
}

void sub_296970D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  amber::KnoxPointer::~KnoxPointer((v2 - 256));
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxPointerArrayParseJSON(uint64_t a1, amber::Stream *a2)
{
  amber::JSONInputStream::JSONInputStream(v6, a2);
  if (((*(*a1 + 32))(a1, v6) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerArrayParseJSON", 0x2E5, 0, "JSON parse AmberKnoxPointerArray", v3);
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  amber::JSONInputStream::~JSONInputStream(v6);
  return v4;
}

void sub_296970E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONInputStream::~JSONInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxPointerArraySerializeJSON(uint64_t a1, amber::Stream *a2)
{
  amber::JSONOutputStream::JSONOutputStream(v6, a2, 1);
  if (((*(*a1 + 40))(a1, v6, 0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxPointerArraySerializeJSON", 0x2EF, 0, "JSON serialization", v3);
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  amber::JSONOutputStream::~JSONOutputStream(v6);
  return v4;
}

void sub_296970F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxContextPointerCreate(amber::KnoxContext *a1, uint64_t a2, uint64_t a3)
{
  v33[0] = &unk_2A1DE0CA0;
  v33[1] = &unk_2A1DE1008;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v39 = -1;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v17[0] = &unk_2A1DE0CE8;
  v17[1] = &unk_2A1DE1008;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v23 = -1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  if ((amber::fromAmberObject(v33, a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxContextPointerCreate", 0x2FD, 0, "invalid AmberKnoxPointerCreationAttributes", v8);
LABEL_8:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if ((amber::KnoxContext::pointerCreate(a1, v33, v17, v5, v6, v7, v8) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxContextPointerCreate", 0x2FE, 0, "pointer creation failed", v13);
    goto LABEL_8;
  }

  if ((amber::toAmberObject(v17, a3, v9, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxPointer.cpp", "AmberKnoxContextPointerCreate", 0x2FF, 0, "invalid KnoxPointer", v14);
    goto LABEL_8;
  }

  v15 = 0;
LABEL_9:
  amber::KnoxPointer::~KnoxPointer(v17);
  amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes(v33);
  return v15;
}

void sub_29697110C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::KnoxPointer::~KnoxPointer(va);
  amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes((v2 - 200));
  _Unwind_Resume(a1);
}

void amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes(void **this)
{
  amber::KnoxPointerCreationAttributes::~KnoxPointerCreationAttributes(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE0CA0;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  this[1] = &unk_2A1DE1008;
  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  amber::JSONCodable::~JSONCodable((this + 1));

  amber::JSONCodable::~JSONCodable(this);
}

void amber::KnoxPointer::~KnoxPointer(void **this)
{
  amber::KnoxPointer::~KnoxPointer(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE0CE8;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  this[1] = &unk_2A1DE1008;
  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  amber::JSONCodable::~JSONCodable((this + 1));

  amber::JSONCodable::~JSONCodable(this);
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<DERNode>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<amber::KnoxPointer>::__emplace_back_slow_path<amber::KnoxPointer const&>(uint64_t a1, const amber::KnoxPointer *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::KnoxPointer>>(a1, v6);
  }

  v13 = 0;
  v14 = 240 * v2;
  amber::KnoxPointer::KnoxPointer((240 * v2), a2);
  v15 = 240 * v2 + 240;
  v7 = *(a1 + 8);
  v8 = 240 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::KnoxPointer>,amber::KnoxPointer*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<amber::KnoxPointer>::~__split_buffer(&v13);
  return v12;
}

void sub_2969716F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<amber::KnoxPointer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

amber::KnoxPointer *amber::KnoxPointer::KnoxPointer(amber::KnoxPointer *this, const amber::KnoxPointer *a2)
{
  *this = &unk_2A1DE0CE8;
  amber::KnoxUploadAttributes::KnoxUploadAttributes((this + 8), (a2 + 8));
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v4 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v4;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v5;
  }

  *(this + 18) = *(a2 + 18);
  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v6 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v6;
  }

  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v7 = *(a2 + 11);
    *(this + 24) = *(a2 + 24);
    *(this + 11) = v7;
  }

  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v8 = *(a2 + 200);
    *(this + 27) = *(a2 + 27);
    *(this + 200) = v8;
  }

  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_29697183C(_Unwind_Exception *a1)
{
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  amber::KnoxUploadAttributes::~KnoxUploadAttributes(v2);
  amber::JSONCodable::~JSONCodable(v1);
  _Unwind_Resume(a1);
}

amber::KnoxUploadAttributes *amber::KnoxUploadAttributes::KnoxUploadAttributes(amber::KnoxUploadAttributes *this, const amber::KnoxUploadAttributes *a2)
{
  *this = &unk_2A1DE1008;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(this + 10) = *(a2 + 10);
  return this;
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296971A20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::KnoxPointer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::KnoxPointer>,amber::KnoxPointer*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6 * 8;
      *v7 = &unk_2A1DE0CE8;
      *(v7 + 8) = &unk_2A1DE1008;
      v8 = &a2[v6];
      v9 = *&a2[v6 + 2];
      *(v7 + 32) = a2[v6 + 4];
      *(v7 + 16) = v9;
      v8[3] = 0;
      v8[4] = 0;
      v8[2] = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = *&a2[v6 + 5];
      *(v7 + 56) = a2[v6 + 7];
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = *&a2[v6 + 8];
      v10 = a2[v6 + 11];
      *(v7 + 80) = a2[v6 + 10];
      v8[8] = 0;
      v8[9] = 0;
      v8[10] = 0;
      *(v7 + 88) = v10;
      v11 = *&a2[v6 + 12];
      *(v7 + 112) = a2[v6 + 14];
      *(v7 + 96) = v11;
      v8[13] = 0;
      v8[14] = 0;
      v8[12] = 0;
      v12 = *&a2[v6 + 15];
      *(v7 + 136) = a2[v6 + 17];
      *(v7 + 120) = v12;
      v8[16] = 0;
      v8[17] = 0;
      v8[15] = 0;
      *(v7 + 144) = a2[v6 + 18];
      v13 = *&a2[v6 + 19];
      *(v7 + 168) = a2[v6 + 21];
      *(v7 + 152) = v13;
      v8[20] = 0;
      v8[21] = 0;
      v8[19] = 0;
      v14 = *&a2[v6 + 22];
      *(v7 + 192) = a2[v6 + 24];
      *(v7 + 176) = v14;
      v8[23] = 0;
      v8[24] = 0;
      v8[22] = 0;
      v15 = *&a2[v6 + 25];
      *(v7 + 216) = a2[v6 + 27];
      *(v7 + 200) = v15;
      v8[26] = 0;
      v8[27] = 0;
      v8[25] = 0;
      *(v7 + 224) = *&a2[v6 + 28];
      v6 += 30;
    }

    while (&a2[v6] != a3);
    if (a2 != a3)
    {
      v16 = a2;
      v17 = a2;
      do
      {
        v18 = *v17;
        v17 += 30;
        (*v18)(v5);
        v16 += 30;
        v5 = v17;
      }

      while (v17 != a3);
    }
  }
}

uint64_t std::__split_buffer<amber::KnoxPointer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 240);
    *(a1 + 16) = i - 240;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void amber::ArrayObject<amber::KnoxPointer>::~ArrayObject(uint64_t a1)
{
  amber::ArrayObject<amber::KnoxPointer>::~ArrayObject(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::ArrayObject<amber::KnoxPointer>::jsonParse(void *a1, amber::JSONInputStream *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v35[0] = &unk_2A1DE0CE8;
  v35[1] = &unk_2A1DE1008;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  v41 = -1;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = a1[2];
  v9 = a1[3];
  v10 = (a1 + 2);
  if (v9 != v11)
  {
    v12 = v9 - 30;
    v13 = v9 - 30;
    v14 = v9 - 30;
    do
    {
      v15 = *v14;
      v14 -= 30;
      (*v15)(v13);
      v12 -= 30;
      v16 = v13 == v11;
      v13 = v14;
    }

    while (!v16);
  }

  a1[3] = v11;
  v17 = -1;
  while (1)
  {
    while (1)
    {
      v31 = -1;
      v32 = 0u;
      v33 = 0u;
      if ((amber::JSONInputStream::read(this, &v31, a3, a4, a5, a6, a7) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././ArrayObject.hpp", "jsonParse", 0x2B, 0, "read token", a7);
        goto LABEL_22;
      }

      if (v17 == -1)
      {
        v17 = v34;
      }

      if (v34 != v17)
      {
        break;
      }

      if (v31 != 1)
      {
        if (v31 == 2)
        {
          v29 = 0;
          goto LABEL_27;
        }

        break;
      }
    }

    if (v34 != v17 + 1)
    {
      break;
    }

    *&v19 = amber::JSONInputStream::unread(this, &v31, a3, a4, a5, a6, a7).n128_u64[0];
    if (v20 < 0 || (amber::KnoxPointer::jsonParse(v35, this) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././ArrayObject.hpp", "jsonParse", 0x37, 0, "invalid o", v18, v19);
      goto LABEL_22;
    }

    v21 = a1[3];
    if (v21 >= a1[4])
    {
      v22 = std::vector<amber::KnoxPointer>::__emplace_back_slow_path<amber::KnoxPointer const&>(v10, v35);
    }

    else
    {
      amber::KnoxPointer::KnoxPointer(a1[3], v35);
      v22 = v21 + 240;
      a1[3] = v21 + 240;
    }

    a1[3] = v22;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././ArrayObject.hpp", "jsonParse", 0x3C, 0, "invalid Array", a7);
LABEL_22:
  v24 = a1[2];
  v23 = a1[3];
  if (v23 != v24)
  {
    v25 = v23 - 30;
    v26 = v23 - 30;
    v27 = v23 - 30;
    do
    {
      v28 = *v27;
      v27 -= 30;
      (*v28)(v26);
      v25 -= 30;
      v16 = v26 == v24;
      v26 = v27;
    }

    while (!v16);
  }

  a1[3] = v24;
  v29 = 0xFFFFFFFFLL;
LABEL_27:
  amber::KnoxPointer::~KnoxPointer(v35);
  return v29;
}

void sub_296971FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::KnoxPointer::~KnoxPointer(va);
  _Unwind_Resume(a1);
}

uint64_t amber::ArrayObject<amber::KnoxPointer>::jsonSerialize(uint64_t a1, amber::JSONOutputStream *this, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginArray(this, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v18 = "serialize array";
    v19 = 70;
  }

  else
  {
    v15 = *(a1 + 16);
    if (v15 == *(a1 + 24))
    {
LABEL_6:
      if ((amber::JSONOutputStream::end(this, v9, v10, v11, v12, v13, v14) & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = "serialize array";
      v19 = 75;
    }

    else
    {
      v16 = *(a1 + 16);
      while (((*(*v16 + 24))(v16, this, 0) & 0x80000000) == 0)
      {
        v16 += 240;
        v15 += 240;
        if (v16 == *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      v18 = "serialize entry";
      v19 = 73;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././ArrayObject.hpp", "jsonSerialize", v19, 0, v18, v14);
  return 0xFFFFFFFFLL;
}

void non-virtual thunk toamber::ArrayObject<amber::KnoxPointer>::~ArrayObject(uint64_t a1)
{
  amber::ArrayObject<amber::KnoxPointer>::~ArrayObject(a1 - 8);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::ArrayObject<amber::KnoxPointer>::~ArrayObject(uint64_t a1)
{
  *a1 = &unk_2A1DE0D30;
  v2 = (a1 + 8);
  *(a1 + 8) = &unk_2A1DE0D70;
  v4 = (a1 + 16);
  std::vector<amber::KnoxPointer>::__destroy_vector::operator()[abi:ne200100](&v4);
  amber::JSONCodable::~JSONCodable(v2);
  return a1;
}

void std::vector<amber::KnoxPointer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 240;
      v7 = v4 - 240;
      v8 = v4 - 240;
      do
      {
        v9 = *v8;
        v8 -= 240;
        (*v9)(v7);
        v6 -= 240;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2969723F8(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 72));
  std::mutex::~mutex((v1 | 8));
  _Unwind_Resume(a1);
}

void amber::SharedMemoryMessagingBlockDevice::~SharedMemoryMessagingBlockDevice(amber::SharedMemoryMessagingBlockDevice *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 53))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "~SharedMemoryMessagingBlockDevice", 0xF4, 0, "SharedMemoryMessagingBlockDevice messages in flight in destructor", a7);
  }

  v8 = *(this + 37);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::condition_variable::~condition_variable((this + 512));
  std::mutex::~mutex(this + 7);
  std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(this + 400);
  std::mutex::~mutex((this + 336));

  amber::BlockDevice::~BlockDevice(this);
}

{
  amber::SharedMemoryMessagingBlockDevice::~SharedMemoryMessagingBlockDevice(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

void non-virtual thunk toamber::SharedMemoryMessagingBlockDevice::~SharedMemoryMessagingBlockDevice(amber::SharedMemoryMessagingBlockDevice *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::SharedMemoryMessagingBlockDevice::~SharedMemoryMessagingBlockDevice((this - 280), a2, a3, a4, a5, a6, a7);
}

{
  amber::SharedMemoryMessagingBlockDevice::~SharedMemoryMessagingBlockDevice((this - 280), a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedMemoryMessagingBlockDevice::setAttribute(amber::SharedMemoryMessagingBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {

    return amber::BlockDevice::setAttribute(this, a2, a3, a4, v11, v12, v13);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "setAttribute", 0xFE, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::SharedMemoryMessagingBlockDevice::getAttribute(amber::SharedMemoryMessagingBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "getAttribute", 0x10B, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 203)
  {
    if (a2 == 204)
    {
      v14 = *(this + 78);
    }

    else
    {
      if (a2 != 205)
      {
        goto LABEL_12;
      }

      v14 = *(this + 79);
    }

LABEL_19:
    LODWORD(v19) = v14;
    v20 = &off_2A1DDFDA8;
    v21 = &v19;
    v22 = 4;
    v23 = &off_2A1DDFC68;
    v24 = &v19;
    v25 = 4;
    *a5 = 4;
    v17 = *(a4 + 2);
    if (v17)
    {
      if (v17 > 3)
      {
        result = 0;
        **(a4 + 1) = v14;
        return result;
      }

      v18 = 4;
LABEL_22:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, v18, v17);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  if (a2 == 201)
  {
    v16 = *(this + 38);
    v19 = v16;
    v20 = &off_2A1DDFDA8;
    v21 = &v19;
    v22 = 8;
    v23 = &off_2A1DDFC68;
    v24 = &v19;
    v25 = 8;
    *a5 = 8;
    v17 = *(a4 + 2);
    if (v17)
    {
      if (v17 > 7)
      {
        result = 0;
        **(a4 + 1) = v16;
        return result;
      }

      v18 = 8;
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 == 202)
  {
    v14 = *(this + 80);
    goto LABEL_19;
  }

LABEL_12:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::SharedMemoryMessagingBlockDevice::enqueueRequest(amber::SharedMemoryMessagingBlockDevice *this, amber::BlockDeviceRequest *a2)
{
  amber::BlockDeviceEvent::BlockDeviceEvent(v21, 11, a2);
  amber::BlockDeviceEvent::send(v21);
  v7 = *(a2 + 5);
  if (v7 == 8)
  {
    if ((amber::BlockDevice::executeLogStats(this, *(a2 + 14) >> 3, *(a2 + 8), *(a2 + 161), v4, v5, v6) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "enqueueRequest", 0x12A, 0, "executeLogStats", v18);
      v19 = -2147483626;
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_18;
  }

  if (v7 == 11)
  {
    v14 = *(a2 + 161);
    if ((amber::BlockDevice::executePrefetchSequence(this, *(a2 + 14), 2u) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "enqueueRequest", 0x132, 0, "executePrefetchSequence", v18);
      v19 = -2147483626;
    }

    else
    {
      v19 = 1;
    }

LABEL_18:
    amber::BlockDeviceRequest::sendReply(a2, v19, 0, v15, v16, v17, v18);
    (*(*a2 + 8))(a2);
    v13 = 0;
    goto LABEL_19;
  }

  if (v7 != 10)
  {
    amber::Sem::acquire((this + 440));
    amber::SharedMemoryMessagingBlockDevice::clientSendExecuteRequest(this, a2, 0);
  }

  v8 = 32;
  do
  {
    amber::Sem::acquire((this + 440));
    --v8;
  }

  while (v8);
  amber::BlockDeviceRequest::sendReply(a2, 1, 0, v9, v10, v11, v12);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  LODWORD(v13) = 32;
  do
  {
    amber::Sem::release((this + 440));
    v13 = (v13 - 1);
  }

  while (v13);
LABEL_19:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v21);
  return v13;
}

void amber::SharedMemoryMessagingBlockDevice::clientSendExecuteRequest(amber::SharedMemoryMessagingBlockDevice *this, amber::BlockDeviceRequest *a2, amber::Sem *a3)
{
  v5[2] = -1;
  v6 = 0;
  amber::BlockDeviceEvent::BlockDeviceEvent(v5, 33, a2);
  amber::BlockDeviceEvent::sendBegin(v5);
  amber::SharedMemoryMessagingBlockDevice::clientCreateMessage(this, a3);
}

void sub_296972E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

void amber::SharedMemoryMessagingBlockDevice::clientCreateMessage(amber::SharedMemoryMessagingBlockDevice *this, amber::Sem *a2)
{
  std::mutex::lock((this + 336));
  add_explicit = atomic_fetch_add_explicit(this + 41, 1uLL, memory_order_relaxed);
  operator new();
}

uint64_t amber::SharedMemoryMessagingBlockDevice::destroyMessage(amber::SharedMemoryMessagingBlockDevice *this, amber::SharedMemoryMessagingBlockDevice::Message *a2)
{
  v2 = a2;
  if (a2)
  {
    std::mutex::lock((this + 336));
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(this + 50, v2);
    if (v4)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::erase(this + 50, v4);
      amber::SharedMemoryMessagingBlockDevice::Message::~Message(v2, v6, v7, v8, v9, v10, v11);
      MEMORY[0x29C25C000]();
      v2 = 0;
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "destroyMessage", 0x1EF, 0, "invalid message ID", v5);
      v2 = 0xFFFFFFFFLL;
    }

    std::mutex::unlock((this + 336));
  }

  return v2;
}

uint64_t amber::SharedMemoryMessagingBlockDevice::serverReplyExecuteRequest(amber::SharedMemoryMessagingBlockDevice *this, amber::BlockDeviceRequest *a2)
{
  v3 = *(a2 + 5);
  v4 = amber::SharedMemoryMessagingBlockDevice::lookupMessage(this, v3);
  if (v4)
  {
    v7 = v3;
    v8 = 2;
    v9 = *(a2 + 28);
    if (*(a2 + 5) == 1)
    {
      amber::ConstMemoryViewConvertible<amber::MemorySegment>::zConstMemoryView(v4 + 40, v5, &v10);
    }

    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "serverReplyExecuteRequest", 0x1A5, 0, "invalid message ID in data device request", v5);
  return 0;
}

uint64_t amber::SharedMemoryMessagingBlockDevice::lookupMessage(amber::SharedMemoryMessagingBlockDevice *this, unint64_t a2)
{
  v7 = a2;
  std::mutex::lock((this + 336));
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(this + 50, &v7);
  if (v3)
  {
    v5 = v3[3];
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "lookupMessage", 0x1E6, 0, "invalid message ID", v4);
    v5 = 0;
  }

  std::mutex::unlock((this + 336));
  return v5;
}

void amber::SharedMemoryMessagingBlockDevice::serverReplyExecuteRequestError(amber::SharedMemoryMessagingBlockDevice *this, amber::SharedMemoryMessagingBlockDevice::Message *a2)
{
  v2 = *a2;
  v3 = 2;
  v4 = 2147483653;
  operator new();
}

uint64_t amber::SharedMemoryMessagingBlockDevice::serverCreateMessage(amber::SharedMemoryMessagingBlockDevice *this, unint64_t a2)
{
  v5 = a2;
  std::mutex::lock((this + 336));
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(this + 50, &v5))
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "serverCreateMessage", 0x1DC, 0, "invalid message ID", v3);
  std::mutex::unlock((this + 336));
  return 0;
}

void amber::SharedMemoryMessagingBlockDevice::ServerReceiver::receiveMessageBegin(amber::SharedMemoryMessagingBlockDevice **this, const amber::ConstMemoryView *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (v7 <= 0xF)
  {
    v8 = "truncated message";
    v9 = 518;
LABEL_20:

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessageBegin", v9, 0, v8, a7);
    return;
  }

  v12 = *(a2 + 1);
  v13 = *(v12 + 8);
  if (v13 != 2)
  {
    if (v13 == 1)
    {
      v14 = *v12;
      amber::SharedMemoryMessagingBlockDevice::serverReplyGetDeviceAttributes(this[6]);
    }

    v8 = "invalid message";
    v9 = 542;
    goto LABEL_20;
  }

  if (v7 <= 0x37)
  {
    v8 = "truncated message";
    v9 = 531;
    goto LABEL_20;
  }

  Message = amber::SharedMemoryMessagingBlockDevice::serverCreateMessage(this[6], *v12);
  this[7] = Message;
  if (!Message)
  {
    v8 = "invalid message ID";
    v9 = 534;
    goto LABEL_20;
  }

  v21 = Message;
  if ((amber::MemorySegment::allocate((Message + 16), *(a2 + 2), v17, v18, v19, v20, a7) & 0x80000000) != 0 || (memcpy(*(v21 + 24), *(a2 + 1), *(a2 + 2)), (amber::MemorySegment::allocate((this[7] + 40), a3, v22, v23, v24, v25, v26) & 0x80000000) != 0))
  {
    v8 = "malloc";
    v9 = 538;
    goto LABEL_20;
  }

  v27 = this[7];
  v28 = *(v27 + 6);
  v29 = *(v27 + 7);
  v31[0] = &off_2A1DDFDA8;
  v31[1] = v28;
  v31[2] = v29;
  if (v29 < 0 || !v28 && v29)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v31 != (v27 + 64))
  {
    *(v27 + 9) = v28;
    *(v27 + 10) = v29;
  }
}

void amber::SharedMemoryMessagingBlockDevice::ServerReceiver::receiveMessagePayload(amber::SharedMemoryMessagingBlockDevice::ServerReceiver *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 7);
  if (v7)
  {
    v8 = *(a2 + 2);
    if (v8 <= *(v7 + 80))
    {
      memcpy(*(v7 + 72), *(a2 + 1), v8);
      v11 = *(v7 + 80) - v8;
      *(v7 + 72) += v8;
      *(v7 + 80) = v11;
      return;
    }

    v9 = "payload size mismatch";
    v10 = 549;
  }

  else
  {
    v9 = "no Message";
    v10 = 548;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessagePayload", v10, 0, v9, a7);
}

void amber::SharedMemoryMessagingBlockDevice::ServerReceiver::receiveMessageEnd(amber::SharedMemoryMessagingBlockDevice::ServerReceiver *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 7);
  if (v7)
  {
    if (!v7[10])
    {
      v8 = v7[4];
      if (v8 <= 0xF)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemorySegment.hpp", "operator amber::SMMRequestHeader *", 0xE4, 0, "memory invalid range", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
      }

      else
      {
        v9 = v7[3];
        if (v9[2] != 2)
        {
          return;
        }

        if (v8 > 0x37)
        {
          if (v9[4] != 1 || (amber::MemorySegment::allocate((v7 + 5), v9[8], a3, a4, a5, a6, a7) & 0x80000000) == 0)
          {
            operator new();
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessageEnd", 0x238, 0, "malloc", v11);
          v12 = *(this + 6);
          v13 = *(this + 7);

          amber::SharedMemoryMessagingBlockDevice::serverReplyExecuteRequestError(v12, v13);
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemorySegment.hpp", "operator amber::SMMExecuteRequestRequestHeader *", 0xE4, 0, "memory invalid range", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
      }

      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessageEnd", 0x22B, 0, "truncated payload (server)", a7);
  }
}

double amber::SharedMemoryMessagingBlockDevice::ClientReceiver::receiveMessageBegin(amber::SharedMemoryMessagingBlockDevice **this, const amber::ConstMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a2 + 2) > 0xFuLL)
  {
    v11 = *(a2 + 1);
    v12 = amber::SharedMemoryMessagingBlockDevice::lookupMessage(this[6], *v11);
    this[7] = v12;
    if (v12)
    {
      v17 = *(v11 + 8);
      if (v17 == 2)
      {
        if (*(a2 + 2) > 0x17uLL)
        {
          v21 = v12;
          v22 = *(a2 + 1);
          if ((amber::MemorySegment::allocate((v12 + 16), 0x18uLL, v13, v14, v15, v16, a7) & 0x80000000) == 0)
          {
            memcpy(*(v21 + 24), v22, 0x18uLL);
          }

          operator new();
        }

        v7 = "truncated message";
        v8 = 626;
      }

      else if (v17 == 1)
      {
        if (*(a2 + 2) > 0x27uLL)
        {
          v19 = *(a2 + 1);
          v20 = this[6];
          *(v20 + 38) = *(v19 + 16);
          result = *(v19 + 28);
          *(v20 + 39) = result;
          *(v20 + 80) = *(v19 + 24);
          return result;
        }

        v7 = "truncated message";
        v8 = 616;
      }

      else
      {
        v7 = "invalid message";
        v8 = 638;
      }
    }

    else
    {
      v7 = "invalid message ID in reply";
      v8 = 610;
    }
  }

  else
  {
    v7 = "truncated message";
    v8 = 604;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessageBegin", v8, 0, v7, a7);
  return result;
}

void amber::SharedMemoryMessagingBlockDevice::ClientReceiver::receiveMessagePayload(amber::SharedMemoryMessagingBlockDevice::ClientReceiver *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 7);
  if (v7)
  {
    v8 = *(a2 + 2);
    if (v8 <= *(v7 + 80))
    {
      memcpy(*(v7 + 72), *(a2 + 1), v8);
      v11 = *(v7 + 80) - v8;
      *(v7 + 72) += v8;
      *(v7 + 80) = v11;
      return;
    }

    v9 = "payload size mismatch";
    v10 = 645;
  }

  else
  {
    v9 = "no Message";
    v10 = 644;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessagePayload", v10, 0, v9, a7);
}

void amber::SharedMemoryMessagingBlockDevice::ClientReceiver::receiveMessageEnd(amber::SharedMemoryMessagingBlockDevice::ClientReceiver *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 7);
  if (!v7)
  {
    return;
  }

  if (*(v7 + 80))
  {

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessageEnd", 0x28B, 0, "truncated payload (client)", a7);
    return;
  }

  v9 = *(v7 + 96);
  if (v9)
  {
    amber::BlockDeviceEvent::sendEnd(v9);
    v7 = *(this + 7);
    v10 = *(v7 + 96);
    if (v10)
    {
      amber::BlockDeviceEvent::~BlockDeviceEvent(v10);
      MEMORY[0x29C25C000]();
      v7 = *(this + 7);
    }

    *(v7 + 96) = 0;
  }

  amber::ConstMemoryViewConvertible<amber::MemorySegment>::zConstMemoryView(v7 + 16, a7, v23);
  v15 = *(this + 7);
  if (v23[2])
  {
    v16 = *(v15 + 32);
    if (v16 <= 0xF)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemorySegment.hpp", "operator const amber::SMMReplyHeader *", 0xE4, 0, "memory invalid range", v14);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      goto LABEL_25;
    }

    v17 = *(v15 + 24);
    if (v17[2] == 2)
    {
      if (v16 > 0x17)
      {
        if ((amber::BlockDeviceRequest::sendReply(*(v15 + 8), v17[4], v17[5], v11, v12, v13, v14) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "receiveMessageEnd", 0x29C, 0, "sendReply", v18);
        }

        v19 = *(this + 7);
        v20 = *(v19 + 8);
        if (v20)
        {
          (*(*v20 + 8))(v20);
          v19 = *(this + 7);
        }

        *(v19 + 8) = 0;
        amber::Sem::release((*(this + 6) + 440));
        v15 = *(this + 7);
        goto LABEL_19;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemorySegment.hpp", "operator const amber::SMMExecuteRequestReplyHeader *", 0xE4, 0, "memory invalid range", v14);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_25:
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

LABEL_19:
  v21 = *(v15 + 88);
  if (v21)
  {
    amber::Sem::release(v21);
    v15 = *(this + 7);
  }

  amber::SharedMemoryMessagingBlockDevice::destroyMessage(*(this + 6), v15);
  *(this + 7) = 0;
}

uint64_t AmberSharedMemoryMessagingInitialize(uint64_t a1, uint64_t a2, amber::MutableMemoryView *a3, amber::SharedMemoryFixedSizeQueue *a4, unsigned int a5, amber::SharedMemoryFixedSizeQueue *a6, const char *a7)
{
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a1;
  v9[2] = a2;
  if (a2 < 0 || !a1 && a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::SharedMemoryMessaging::initialize(v9, a3, a4, a5, a6, a7);
}

void AmberSharedMemoryMessagingClientBlockDeviceOpen(uint64_t a1, uint64_t a2, amber::BlockDevice *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8[0] = &off_2A1DDFDA8;
  v8[1] = a1;
  v8[2] = a2;
  if ((a2 & 0x8000000000000000) == 0 && (a1 || !a2))
  {
    amber::SharedMemoryMessagingBlockDevice::create(v8, 0, a3);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](exception, "memory invalid args");
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

uint64_t AmberSharedMemoryMessagingServerBlockDeviceOpen(amber::MutableMemoryView *a1, uint64_t a2, uint64_t a3, amber::BlockDevice *a4, unsigned int a5, uint64_t a6, const char *a7)
{
  if (a1)
  {
    v9[0] = &off_2A1DDFDA8;
    v9[1] = a2;
    v9[2] = a3;
    if ((a3 & 0x8000000000000000) == 0 && (a2 || !a3))
    {
      amber::SharedMemoryMessagingBlockDevice::create(v9, a1, a4);
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "AmberSharedMemoryMessagingServerBlockDeviceOpen", 0x2E2, 0, "invalid data device", a7);
  return 0;
}

void amber::SharedMemoryMessagingBlockDevice::ClientReceiver::~ClientReceiver(amber::SharedMemoryMessagingBlockDevice::ClientReceiver *this)
{
  amber::JSONCodable::~JSONCodable(this);

  JUMPOUT(0x29C25C000);
}

void amber::SharedMemoryMessagingBlockDevice::ServerReceiver::~ServerReceiver(amber::SharedMemoryMessagingBlockDevice::ServerReceiver *this)
{
  amber::JSONCodable::~JSONCodable(this);

  JUMPOUT(0x29C25C000);
}

double amber::SharedMemoryMessagingBlockDevice::SharedMemoryMessagingBlockDevice(amber::SharedMemoryMessagingBlockDevice *this, amber::BlockDevice *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = "SharedMemoryMessagingServer";
  }

  else
  {
    v5 = "SharedMemoryMessagingClient";
  }

  v6 = amber::BlockDevice::BlockDevice(this, a3, v5);
  *v6 = &unk_2A1DE0E78;
  *(v6 + 35) = &unk_2A1DE0F30;
  *(v6 + 36) = a2;
  *(v6 + 38) = 0;
  *(v6 + 39) = 0;
  *(v6 + 37) = 0;
  *(v6 + 80) = 0;
  *(v6 + 41) = 0;
  *(v6 + 42) = 850045863;
  result = 0.0;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0u;
  *(v6 + 53) = 0;
  *(v6 + 108) = 1065353216;
  *(v6 + 55) = 32;
  *(v6 + 56) = 850045863;
  *(v6 + 472) = 0u;
  *(v6 + 488) = 0u;
  *(v6 + 456) = 0u;
  *(v6 + 63) = 0;
  *(v6 + 64) = 1018212795;
  *(v6 + 69) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  return result;
}

void amber::SharedMemoryMessagingBlockDevice::Message::~Message(amber::SharedMemoryMessagingBlockDevice::Message *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 1))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedMemoryMessagingBlockDevice.cpp", "~Message", 0x5B, 0, "Message still owning request in destructor", a7);
  }

  free(*(this + 6));
  free(*(this + 3));
}

uint64_t amber::ConstMemoryViewConvertible<amber::MemorySegment>::zConstMemoryView@<X0>(uint64_t result@<X0>, const char *a2@<X6>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  *a3 = &off_2A1DDFC68;
  a3[1] = v3;
  a3[2] = v4;
  if (v4 < 0 || (!v3 ? (v5 = v4 == 0) : (v5 = 1), !v5))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t amber::stringToInt(void *a1, int a2, int a3, int a4, int *a5, unint64_t *a6)
{
  v6 = a1[1];
  if (!v6)
  {
    return -1;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = MEMORY[0x29EDCA600];
  v14 = 10;
  while (1)
  {
    v15 = *(*a1 + v10);
    v16 = *(*a1 + v10);
    if (a4)
    {
      if ((v15 & 0x80000000) != 0)
      {
        v30 = a2;
        v29 = *(*a1 + v10);
        v17 = __maskrune(*(*a1 + v10), 0x4000uLL);
        v16 = v29;
        a2 = v30;
        if (v17)
        {
          goto LABEL_54;
        }
      }

      else if ((*(v13 + 4 * v15 + 60) & 0x4000) != 0)
      {
        goto LABEL_54;
      }

      if (v16 == 95)
      {
        goto LABEL_54;
      }
    }

    if ((a2 & (v15 == 43)) != 0)
    {
      a2 = 0;
      v12 = 1;
      goto LABEL_54;
    }

    if ((a2 & (v16 == 45)) != 0)
    {
      a2 = 0;
      v12 = -1;
      goto LABEL_54;
    }

    if (v11)
    {
      break;
    }

    if (v15 != 48 || v14 != 10)
    {
      break;
    }

    if (v10 + 1 >= v6)
    {
      goto LABEL_31;
    }

    v19 = *(*a1 + v10 + 1);
    switch(v19)
    {
      case 'b':
        a2 = 0;
        v14 = 2;
        break;
      case 'o':
        a2 = 0;
        v14 = 8;
        break;
      case 'x':
        a2 = 0;
        v14 = 16;
        break;
      default:
        goto LABEL_31;
    }

    ++v10;
LABEL_54:
    if (++v10 >= v6)
    {
      goto LABEL_55;
    }
  }

  if (v14 == 16)
  {
    if ((v16 & 0x80000000) != 0 || (*(v13 + 4 * v15 + 60) & 0x10000) == 0)
    {
      goto LABEL_60;
    }

    if ((v16 - 48) >= 0xAu)
    {
      if (v15 - 65 >= 6)
      {
        if ((v16 - 97) > 5u)
        {
          return -1;
        }

        v20 = -87;
      }

      else
      {
        v20 = -55;
      }
    }

    else
    {
      v20 = -48;
    }

    if (v9 >> 60)
    {
      return -1;
    }

    v22 = v20 + v15;
    v21 = __CFADD__(v22, 16 * v9);
    v9 = v22 + 16 * v9;
    if (v21)
    {
      return -1;
    }

    a2 = 0;
    v14 = 16;
    goto LABEL_53;
  }

  if (v14 == 10)
  {
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_31:
    if ((*(v13 + 4 * v15 + 60) & 0x400) == 0)
    {
      goto LABEL_60;
    }

    if (!is_mul_ok(v9, 0xAuLL))
    {
      return -1;
    }

    v21 = __CFADD__(10 * v9, v16 - 48);
    v9 = 10 * v9 + v16 - 48;
    if (v21)
    {
      return -1;
    }

    a2 = 0;
    v14 = 10;
LABEL_53:
    v11 = 1;
    goto LABEL_54;
  }

  if (v14 == 8 && (v16 & 0xFFFFFFF8) == 0x30)
  {
    if (v9 >> 61)
    {
      return -1;
    }

    a2 = 0;
    v9 = (v15 - 48) | (8 * v9);
    v14 = 8;
    goto LABEL_53;
  }

  if (v14 == 2 && (v15 & 0xFFFFFFFE) == 0x30)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      return -1;
    }

    a2 = 0;
    v9 = (v15 - 48) | (2 * v9);
    v14 = 2;
    goto LABEL_53;
  }

LABEL_60:
  if ((v11 & a3) != 1)
  {
LABEL_55:
    if ((v11 & 1) == 0)
    {
      return -1;
    }

    goto LABEL_56;
  }

  if (v15 > 0x6Au)
  {
    if (v15 == 109)
    {
      v24 = 0x100000;
    }

    else
    {
      if (v15 != 107)
      {
        goto LABEL_56;
      }

      v24 = 1024;
    }
  }

  else if (v15 == 98)
  {
    v24 = 1;
  }

  else
  {
    if (v15 != 103)
    {
      goto LABEL_56;
    }

    v24 = 0x40000000;
  }

  if (!is_mul_ok(v9, v24))
  {
    return -1;
  }

  v9 *= v24;
  ++v10;
LABEL_56:
  *a6 = v9;
  if (v9)
  {
    v23 = v12;
  }

  else
  {
    v23 = 0;
  }

  *a5 = v23;
  return v10;
}

uint64_t amber::hexStringToBytes(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = a1[1];
  v11 = *(a2 + 8);
  v10 = *(a2 + 16);
  *a3 = 0;
  if (v9 < 2)
  {
    goto LABEL_22;
  }

  v12 = 0;
  v8 = 0;
  while (1)
  {
    v13 = *(*a1 + v12);
    if (!*(*a1 + v12))
    {
      break;
    }

    v14 = v13 - 48;
    if ((v13 - 48) >= 0xA)
    {
      if ((v13 - 97) > 5)
      {
        if ((v13 - 65) > 5)
        {
          break;
        }

        v14 = v13 - 55;
      }

      else
      {
        v14 = v13 - 87;
      }
    }

    v15 = *(*a1 + v12 + 1);
    if (!*(*a1 + v12 + 1))
    {
      break;
    }

    v16 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 97) > 5)
      {
        if ((v15 - 65) > 5)
        {
          break;
        }

        v16 = v15 - 55;
      }

      else
      {
        v16 = v15 - 87;
      }
    }

    if (v8 < v10)
    {
      *(v11 + v8) = v16 + 16 * v14;
    }

    ++v8;
    v7 = v12 + 2;
    v17 = v12 + 4;
    v12 += 2;
    if (v17 > v9)
    {
      goto LABEL_20;
    }
  }

  v7 = v12;
LABEL_20:
  if (v8 <= v10)
  {
LABEL_22:
    *a3 = v8;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "hexStringToBytes", 0x7D, 0, "insufficient capacity", a7);
    return -1;
  }

  return v7;
}

uint64_t amber::base64StringToBytes(void *a1, int a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a1[1];
  v10 = *(a3 + 8);
  v9 = *(a3 + 16);
  *a4 = 0;
  if (!v8)
  {
    v14 = 0;
    v12 = 0;
    goto LABEL_41;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = MEMORY[0x29EDCA600];
  do
  {
    v18 = *(*a1 + v14);
    if (!*(*a1 + v14))
    {
      break;
    }

    v19 = v18 - 65;
    if (v18 - 65 > 0x19)
    {
      if (v18 - 97 > 0x19)
      {
        if (v18 - 48 > 9)
        {
          if (v18 == 43)
          {
            v19 = 62;
          }

          else
          {
            if (*(*a1 + v14) == 61)
            {
              v21 = 0;
              v20 = 1;
              goto LABEL_12;
            }

            if (*(*a1 + v14) != 47)
            {
              if ((v18 & 0x80000000) != 0)
              {
                v28 = a2;
                v24 = __maskrune(v18, 0x4000uLL);
                v17 = MEMORY[0x29EDCA600];
                a2 = v28;
                if (!v28)
                {
                  break;
                }
              }

              else
              {
                v24 = *(v17 + 4 * v18 + 60) & 0x4000;
                if (!a2)
                {
                  break;
                }
              }

              if (!v24)
              {
                break;
              }

              goto LABEL_34;
            }

            v19 = 63;
          }
        }

        else
        {
          v19 = v18 + 4;
        }
      }

      else
      {
        v19 = v18 - 71;
      }
    }

    if ((v19 & 0x80000000) == 0 && v15 > 0)
    {
      goto LABEL_38;
    }

    v20 = v19 >> 31;
    v21 = v19 & ~(v19 >> 31);
LABEL_12:
    v16 = v21 + (v16 << 6);
    v15 += v20;
    v13 += 6;
    if (v13 == 24)
    {
      if (v12 < v9)
      {
        *(v10 + v12) = BYTE2(v16);
      }

      v22 = v12 + 1;
      if (v15 <= 1)
      {
        if (v22 < v9)
        {
          *(v10 + v22) = BYTE1(v16);
        }

        v22 = v12 + 2;
        if (!v15)
        {
          if (v22 < v9)
          {
            *(v10 + v22) = v16;
          }

          v22 = v12 + 3;
        }
      }

      v13 = 0;
      v16 = 0;
      v23 = v15 < 1;
      v12 = v22;
      goto LABEL_35;
    }

LABEL_34:
    v23 = 1;
LABEL_35:
    ++v14;
  }

  while (v14 < v8 && v23);
  if (v13)
  {
LABEL_38:
    v25 = "invalid base64 data";
    v26 = 183;
LABEL_39:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "base64StringToBytes", v26, 0, v25, a7);
    return -1;
  }

  if (v12 > v9)
  {
    v25 = "insufficient capacity";
    v26 = 184;
    goto LABEL_39;
  }

LABEL_41:
  *a4 = v12;
  return v14;
}

uint64_t amber::hexBytesToString(amber *this, const amber::ConstMemoryView *a2, uint64_t a3, char *a4)
{
  v4 = *(this + 2);
  if (a2 <= 2 * v4)
  {
    return -1;
  }

  if (v4)
  {
    v5 = 0;
    v6 = (a3 + 1);
    do
    {
      v7 = *(*(this + 1) + v5);
      *(v6 - 1) = amber::hexBytesToString(amber::ConstMemoryView const&,unsigned long,char *)::digit[v7 >> 4];
      *v6 = amber::hexBytesToString(amber::ConstMemoryView const&,unsigned long,char *)::digit[v7 & 0xF];
      v6 += 2;
      ++v5;
      v8 = *(this + 2);
    }

    while (v5 < v8);
    v4 = 2 * v8;
  }

  *(a3 + v4) = 0;
  return 2 * *(this + 2);
}

uint64_t amber::base64BytesToString(amber *this, const amber::ConstMemoryView *a2, _BYTE *a3, char *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 2);
  if (((2 * (((v7 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL) >= a2)
  {
    return -1;
  }

  if (v7 >= 3)
  {
    v11 = 0;
    result = 0;
    v12 = a3;
    while (v7 > v11 && v7 > v11 + 1 && v7 > v11 + 2)
    {
      v13 = *(this + 1);
      v14 = *(v13 + v11);
      v15 = v13 + v11;
      v16 = *(v15 + 1);
      LODWORD(v15) = *(v15 + 2);
      *v12 = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[v14 >> 2];
      v12[1] = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[(((v14 << 16) | (v16 << 8)) >> 12) & 0x3F];
      v12[2] = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[((v15 & 0xFFFF00FF | (v16 << 8)) >> 6) & 0x3F];
      v12[3] = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[v15 & 0x3F];
      result += 4;
      v7 = *(this + 2);
      v10 = v11 + 3;
      v17 = v11 + 6;
      v12 += 4;
      v11 += 3;
      if (v17 > v7)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_19;
  }

  result = 0;
  v10 = 0;
LABEL_10:
  v18 = v10 + 1;
  if (v10 + 1 == v7)
  {
    if (v7 > v10)
    {
      v19 = *(*(this + 1) + v10);
      v20 = &a3[result];
      *v20 = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[v19 >> 2];
      v20[1] = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[16 * (v19 & 3)];
      v21 = 61;
LABEL_17:
      v25 = &a3[result];
      v25[2] = v21;
      v25[3] = 61;
      result += 4;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v10 + 2 == v7)
  {
    if (v7 > v10 && v7 > v18)
    {
      v22 = *(this + 1);
      v23 = *(v22 + v10);
      LOBYTE(v22) = *(v22 + v18);
      v24 = &a3[result];
      *v24 = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[v23 >> 2];
      v24[1] = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[((((v22 & 0xF0) << 8) | (v23 << 16)) >> 12) & 0x3F];
      v21 = amber::base64BytesToString(amber::ConstMemoryView const&,unsigned long,char *)::table[4 * (v22 & 0xF)];
      goto LABEL_17;
    }

LABEL_19:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "operator[]", 0xE9, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

LABEL_18:
  a3[result] = 0;
  return result;
}

uint64_t amber::hexBytesToStringEnd(amber *a1, std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = 2 * *(a1 + 2);
  v38[0] = &unk_2A1DDFD28;
  v38[2] = 0;
  v38[3] = 0;
  v38[1] = off_2A1DDFD48;
  v38[5] = 0;
  v38[6] = 0;
  v38[4] = &off_2A1DDFDA8;
  v38[7] = &off_2A1DDFC68;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v42 = 0;
  if ((amber::Buffer::reserve(v38, v9 + 2, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::Buffer::buf(v38, v10, v44), amber::MutableMemoryView::operator+(v44, *(&v40 + 1), v11, v43), v12 = v43[2], amber::Buffer::buf(v38, v13, v44), amber::MutableMemoryView::operator+(v44, *(&v40 + 1), v14, v43), v16 = amber::hexBytesToString(a1, v12, v43[1], v15), v16 < 0) || (amber::Buffer::grow(v38, v16, v17, v18, v19, v20, v10) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendValue(v38, 0, 1, v21, v22, v23, v10) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "hexBytesToStringEnd", 0x101, 0, "base64 capacity", v10);
    v36 = -1;
  }

  else
  {
    v29 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v38, v24, v25, v26, v27, v28, v10);
    std::string::append(a2, v29);
    v36 = 0;
  }

  amber::Buffer::~Buffer(v38, v30, v31, v32, v33, v34, v35);
  return v36;
}

void sub_296975C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::base64BytesToStringEnd(amber *a1, std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = 4 * *(a1 + 2) / 3uLL;
  v41[0] = &unk_2A1DDFD28;
  v41[2] = 0;
  v41[3] = 0;
  v41[1] = off_2A1DDFD48;
  v41[5] = 0;
  v41[6] = 0;
  v41[4] = &off_2A1DDFDA8;
  v41[7] = &off_2A1DDFC68;
  v42 = 0u;
  v43 = 0u;
  v44 = 1;
  v45 = 0;
  if ((amber::Buffer::reserve(v41, v9 + 4, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::Buffer::buf(v41, v10, v47), amber::MutableMemoryView::operator+(v47, *(&v43 + 1), v11, v46), v12 = v46[2], amber::Buffer::buf(v41, v13, v47), amber::MutableMemoryView::operator+(v47, *(&v43 + 1), v14, v46), v19 = amber::base64BytesToString(a1, v12, v46[1], v15, v16, v17, v18), v19 < 0) || (amber::Buffer::grow(v41, v19, v20, v21, v22, v23, v10) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendValue(v41, 0, 1, v24, v25, v26, v10) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "base64BytesToStringEnd", 0x10F, 0, "base64 capacity", v10);
    v39 = -1;
  }

  else
  {
    v32 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v41, v27, v28, v29, v30, v31, v10);
    std::string::append(a2, v32);
    v39 = 0;
  }

  amber::Buffer::~Buffer(v41, v33, v34, v35, v36, v37, v38);
  return v39;
}

void sub_296975E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::defaultThreadCount(amber *this)
{
  v5 = 0;
  v4 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v5, &v4, 0, 0))
  {
    return v5;
  }

  v1 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "defaultThreadCount", 0x121, *v1, "sysctlbyname", v2);
  return 1;
}

uint64_t amber::captureCommandOutput(amber *this, char *a2, amber::Buffer *a3)
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v67, this);
  amber::Buffer::resize(a2, 0, v6, v7, v8, v9, v10);
  if (!v3 || *this == 47)
  {
    v11 = 1;
    goto LABEL_4;
  }

  v38 = strlen(this);
  v39 = strchr(this, 32);
  v40 = v39;
  if (v39)
  {
    v41 = v39 - this;
  }

  else
  {
    v41 = v38;
  }

  std::string::basic_string[abi:ne200100](&__dst, this, v41);
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v42);
  if (std::string::find(&__dst, 47, 0) != -1)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "captureCommandOutput", 0x15C, 0, "can't resolve relative path with directories: %s", v43, p_dst);
LABEL_30:
    v45 = 0;
    v11 = 0;
    goto LABEL_75;
  }

  v50 = getenv("PATH");
  if (v50)
  {
    v51 = v50;
    while (*v51)
    {
      v52 = strchr(v51, 58);
      v53 = v52;
      if (v52)
      {
        std::string::basic_string[abi:ne200100](&v63, v51, v52 - v51);
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        v67 = v63;
      }

      else
      {
        MEMORY[0x29C25BF00](&v67, v51);
      }

      std::string::append(&v67, "/");
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &__dst;
      }

      else
      {
        v54 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(&v67, v54, size);
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v67;
      }

      else
      {
        v56 = v67.__r_.__value_.__r.__words[0];
      }

      if (!stat(v56, &v66))
      {
        if ((v65 & 0x80u) == 0)
        {
          v59 = __p;
        }

        else
        {
          v59 = __p[0];
        }

        if ((v65 & 0x80u) == 0)
        {
          v60 = v65;
        }

        else
        {
          v60 = __p[1];
        }

        std::string::append(&v67, v59, v60);
        break;
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        *v67.__r_.__value_.__l.__data_ = 0;
        v67.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v67.__r_.__value_.__s.__data_[0] = 0;
        *(&v67.__r_.__value_.__s + 23) = 0;
      }

      v51 = v53 + 1;
      if (!v53)
      {
        break;
      }
    }
  }

  v61 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v61 = v67.__r_.__value_.__l.__size_;
  }

  if (!v61)
  {
    v62 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = __dst.__r_.__value_.__r.__words[0];
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "captureCommandOutput", 0x16D, 0, "could not find command in PATH: %s", v37, v62);
    goto LABEL_30;
  }

  v45 = 1;
  v11 = 1;
LABEL_75:
  if (v65 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v45 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v45 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_4:
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v67;
  }

  else
  {
    v12 = v67.__r_.__value_.__r.__words[0];
  }

  v18 = popen(v12, "r");
  if (!v18)
  {
    v30 = *__error();
    v32 = &v67;
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v67.__r_.__value_.__r.__words[0];
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "captureCommandOutput", 0x171, v30, "%s", v31, v32);
    goto LABEL_36;
  }

  do
  {
    while (1)
    {
      if ((amber::Buffer::reserveEndCapacity(a2, 0x10000, v13, v14, v15, v16, v17) & 0x80000000) != 0)
      {
        v46 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "captureCommandOutput", 0x174, *v46, "malloc", v47);
        goto LABEL_32;
      }

      amber::Buffer::buf(a2, v19, &v66);
      amber::MutableMemoryView::operator+(&v66, *(a2 + 11), v20, &__dst);
      v21 = __dst.__r_.__value_.__r.__words[2];
      amber::Buffer::buf(a2, v22, &v66);
      amber::MutableMemoryView::operator+(&v66, *(a2 + 11), v23, &__dst);
      v29 = fread(__dst.__r_.__value_.__l.__size_, 1uLL, v21, v18);
      if (!v29)
      {
        break;
      }

LABEL_14:
      if ((amber::Buffer::grow(a2, v29, v24, v25, v26, v27, v28) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "captureCommandOutput", 0x17D, 0, "grow", v17);
        goto LABEL_32;
      }
    }

    if (feof(v18))
    {
      goto LABEL_33;
    }
  }

  while (ferror(v18) && *__error() == 4);
  if (!ferror(v18))
  {
    goto LABEL_14;
  }

  v57 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Utils.cpp", "captureCommandOutput", 0x17B, *v57, "fread", v58);
LABEL_32:
  v11 = 0;
LABEL_33:
  pclose(v18);
LABEL_34:
  if (v11)
  {
    v48 = 0;
    goto LABEL_37;
  }

LABEL_36:
  amber::Buffer::resize(a2, 0, v33, v34, v35, v36, v37);
  v48 = 0xFFFFFFFFLL;
LABEL_37:
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  return v48;
}

void sub_296976394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 65) < 0)
  {
    operator delete(*(v19 - 88));
  }

  if (*(v19 - 89) < 0)
  {
    operator delete(*(v19 - 112));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t AmberParseBytesFromHexString(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10[0] = a4;
  v10[1] = a5;
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a2;
  v9[2] = a1;
  if (a1 < 0 || a1 && !a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::hexStringToBytes(v10, v9, a3, a4, a5, a6, a7);
}

uint64_t AmberSerializeBytesToHexString(uint64_t a1, uint64_t a2, amber::ConstMemoryView *a3, char *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFC68;
  v9[1] = a1;
  v9[2] = a2;
  if (a2 < 0 || !a1 && a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::hexBytesToString(v9, a3, a4, a4);
}

uint64_t AmberParseBytesFromBase64String(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10[0] = a4;
  v10[1] = a5;
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a2;
  v9[2] = a1;
  if (a1 < 0 || a1 && !a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::base64StringToBytes(v10, 1, v9, a3, a5, a6, a7);
}

uint64_t AmberSerializeBytesToBase64String(uint64_t a1, uint64_t a2, amber::ConstMemoryView *a3, char *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFC68;
  v9[1] = a1;
  v9[2] = a2;
  if (a2 < 0 || !a1 && a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::base64BytesToString(v9, a3, a4, a4, a5, a6, a7);
}

void sub_296976928(_Unwind_Exception *a1)
{
  *(v1 + 584) = v2;
  *(v1 + 592) = v3;
  *(v1 + 604) = 0u;
  *(v1 + 620) = 0u;
  *(v1 + 636) = 0u;
  *(v1 + 652) = 0u;
  *(v1 + 668) = 0u;
  *(v1 + 684) = 0u;
  *(v1 + 700) = 0u;
  *(v1 + 716) = 0u;
  *(v1 + 732) = 0u;
  *(v1 + 748) = 0u;
  *(v1 + 764) = 0u;
  *(v1 + 780) = 0u;
  *(v1 + 796) = 0u;
  *(v1 + 812) = 0u;
  *(v1 + 828) = 0u;
  *(v1 + 844) = 0u;
  amber::HTTPContext::~HTTPContext(v1);
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPContext::setAppID(uint64_t this, const char *a2)
{
  if (a2 && *a2)
  {
    JUMPOUT(0x29C25BF00);
  }

  if (*(this + 263) < 0)
  {
    **(this + 240) = 0;
    *(this + 248) = 0;
  }

  else
  {
    *(this + 240) = 0;
    *(this + 263) = 0;
  }

  return this;
}

uint64_t amber::HTTPContext::setRealm(uint64_t this, const char *a2)
{
  if (a2 && *a2)
  {
    JUMPOUT(0x29C25BF00);
  }

  if (*(this + 287) < 0)
  {
    **(this + 264) = 0;
    *(this + 272) = 0;
  }

  else
  {
    *(this + 264) = 0;
    *(this + 287) = 0;
  }

  return this;
}

uint64_t amber::HTTPContext::setS3Profile(uint64_t this, const char *a2)
{
  if (a2 && *a2)
  {
    JUMPOUT(0x29C25BF00);
  }

  if (*(this + 335) < 0)
  {
    **(this + 312) = 0;
    *(this + 320) = 0;
  }

  else
  {
    *(this + 312) = 0;
    *(this + 335) = 0;
  }

  return this;
}

void amber::S3Context::~S3Context(amber::S3Context *this)
{
  *this = &unk_2A1DE0FA0;
  *(this + 73) = &unk_2A1DDFDD8;
  *(this + 74) = &unk_2A1DDFE08;
  *(this + 604) = 0u;
  *(this + 620) = 0u;
  *(this + 636) = 0u;
  *(this + 652) = 0u;
  *(this + 668) = 0u;
  *(this + 684) = 0u;
  *(this + 700) = 0u;
  *(this + 716) = 0u;
  *(this + 732) = 0u;
  *(this + 748) = 0u;
  *(this + 764) = 0u;
  *(this + 780) = 0u;
  *(this + 796) = 0u;
  *(this + 812) = 0u;
  *(this + 828) = 0u;
  *(this + 844) = 0u;
  amber::HTTPContext::~HTTPContext(this);
}

{
  *this = &unk_2A1DE0FA0;
  *(this + 73) = &unk_2A1DDFDD8;
  *(this + 74) = &unk_2A1DDFE08;
  *(this + 604) = 0u;
  *(this + 620) = 0u;
  *(this + 636) = 0u;
  *(this + 652) = 0u;
  *(this + 668) = 0u;
  *(this + 684) = 0u;
  *(this + 700) = 0u;
  *(this + 716) = 0u;
  *(this + 732) = 0u;
  *(this + 748) = 0u;
  *(this + 764) = 0u;
  *(this + 780) = 0u;
  *(this + 796) = 0u;
  *(this + 812) = 0u;
  *(this + 828) = 0u;
  *(this + 844) = 0u;
  amber::HTTPContext::~HTTPContext(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::S3Context::refreshS3CredentialsIfNeeded(amber::S3Context *this)
{
  v113 = *MEMORY[0x29EDCA608];
  result = amber::HTTPContext::refreshS3CredentialsIfNeeded(this);
  if (result >= 1)
  {
    v36 = 0;
    time(&v36);
    gmtime_r(&v36, &v35);
    snprintf(this + 536, 0x10uLL, "%04d%02d%02d", v35.tm_year + 1900, v35.tm_mon + 1, v35.tm_mday);
    snprintf(this + 552, 0x20uLL, "%sT%02d%02d%02dZ", this + 536, v35.tm_hour, v35.tm_min, v35.tm_sec);
    v94 = &unk_2A1DDFDD8;
    v95 = &unk_2A1DDFE08;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
    v76[0] = &unk_2A1DDFDD8;
    v76[1] = &unk_2A1DDFE08;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0;
    v58[0] = &unk_2A1DDFDD8;
    v58[1] = &unk_2A1DDFE08;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    v40[0] = &unk_2A1DDFDD8;
    v40[1] = &unk_2A1DDFE08;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v95, "AWS4", v3, v4, v5, v6, v7);
    v13 = *(this + 495);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = *(this + 59);
      v13 = *(this + 60);
    }

    else
    {
      v14 = (this + 472);
    }

    v37 = v14;
    v38 = v13;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v95, &v37, v8, v9, v10, v11, v12);
    v15 = strlen(this + 536);
    v37 = &off_2A1DDFC68;
    v38 = this + 536;
    v39 = v15;
    if ((v15 & 0x8000000000000000) == 0)
    {
      if ((amber::HMAC_SHA256(v76, &v94, &v37, v16, v17, v18, v19) & 0x80000000) != 0)
      {
        goto LABEL_20;
      }

      v23 = *(this + 447);
      v24 = v23 < 0;
      if (v23 >= 0)
      {
        v25 = this + 424;
      }

      else
      {
        v25 = *(this + 53);
      }

      if (v24)
      {
        v26 = *(this + 54);
      }

      else
      {
        v26 = *(this + 447);
      }

      v37 = &off_2A1DDFC68;
      v38 = v25;
      v39 = v26;
      if ((v26 & 0x8000000000000000) == 0 && (v25 || !v26))
      {
        if ((amber::HMAC_SHA256(v58, v76, &v37, v20, v21, v22, v19) & 0x80000000) == 0)
        {
          v37 = &off_2A1DDFC68;
          v38 = "s3";
          v39 = 2;
          if ((amber::HMAC_SHA256(v40, v58, &v37, v27, v28, v29, v19) & 0x80000000) == 0)
          {
            v37 = &off_2A1DDFC68;
            v38 = "aws4_request";
            v39 = 12;
            if ((amber::HMAC_SHA256(this + 584, v40, &v37, v30, v31, v32, v19) & 0x80000000) == 0)
            {
              result = 0;
              goto LABEL_21;
            }
          }
        }

LABEL_20:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "refreshS3CredentialsIfNeeded", 0x4F, 0, "key derivation failed", v19);
        result = 0xFFFFFFFFLL;
        goto LABEL_21;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v19);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

LABEL_21:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 8) = 0;
  v17[0] = &off_2A1DDFDA8;
  v17[1] = a1 + 12;
  v17[2] = 256;
  amber::MutableMemoryView::operator+(v17, 0, a7, &v18);
  bzero(v19, v20);
  if (a2)
  {
    v14 = strlen(a2);
    v18 = &off_2A1DDFC68;
    v19 = a2;
    v20 = v14;
    if ((v14 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v13);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v18 = &off_2A1DDFC68;
  }

  if (amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(a1, &v18, v9, v10, v11, v12, v13))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *a2;
  v8 = a2[1];
  v12[0] = &off_2A1DDFC68;
  v12[1] = v7;
  v12[2] = v8;
  if (v8 < 0 || (!v7 ? (v9 = v8 == 0) : (v9 = 1), !v9))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(a1, v12, a3, a4, a5, a6, a7);
}

uint64_t amber::S3Context::sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v122 = *MEMORY[0x29EDCA608];
  v112[0] = &unk_2A1DDFD28;
  v112[3] = 0;
  v112[1] = off_2A1DDFD48;
  v112[2] = 0;
  v112[6] = 0;
  v112[4] = &off_2A1DDFDA8;
  v112[5] = 0;
  v112[7] = &off_2A1DDFC68;
  v113 = 0u;
  v114 = 0u;
  v115 = 1;
  v116 = 0;
  v107[0] = &unk_2A1DDFD28;
  v107[3] = 0;
  v107[1] = off_2A1DDFD48;
  v107[2] = 0;
  v107[6] = 0;
  v107[4] = &off_2A1DDFDA8;
  v107[5] = 0;
  v107[7] = &off_2A1DDFC68;
  v108 = 0u;
  v109 = 0u;
  v110 = 1;
  v111 = 0;
  v102[0] = &unk_2A1DDFD28;
  v102[2] = 0;
  v102[3] = 0;
  v102[1] = off_2A1DDFD48;
  v102[5] = 0;
  v102[6] = 0;
  v102[4] = &off_2A1DDFDA8;
  v102[7] = &off_2A1DDFC68;
  v103 = 0u;
  v104 = 0u;
  v105 = 1;
  v106 = 0;
  v96 = 0;
  v97[0] = &unk_2A1DDFD28;
  v97[2] = 0;
  v97[3] = 0;
  v97[1] = off_2A1DDFD48;
  v97[5] = 0;
  v97[6] = 0;
  v97[4] = &off_2A1DDFDA8;
  v97[7] = &off_2A1DDFC68;
  v98 = 0u;
  v99 = 0u;
  v100 = 1;
  v101 = 0;
  v95[0] = 0;
  v95[1] = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  memset(&v88, 0, sizeof(v88));
  memset(&v87, 0, sizeof(v87));
  v84 = 0;
  v85 = 0;
  v86 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v80[0] = v80;
  v80[1] = v80;
  v80[2] = 0;
  if (((*(*a1 + 56))(a1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "sign", 0x67, 0, "refresh S3 credentials", v9);
    goto LABEL_11;
  }

  v10 = strlen(a3);
  if (v10 < 7)
  {
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "sign", 0x6F, 0, "Invalid URL: %s", v11, a3);
    goto LABEL_11;
  }

  v12 = *a3 == 1886680168 && *(a3 + 3) == 791624304;
  if (v12)
  {
    v39 = 7;
  }

  else
  {
    if (v10 == 7 || *a3 != 0x2F2F3A7370747468)
    {
      goto LABEL_9;
    }

    v39 = 8;
  }

  v40 = a3 + v39;
  v41 = strchr((a3 + v39), 47);
  if (!v41)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "sign", 0x71, 0, "Invalid URL: %s", v42, a3);
    goto LABEL_11;
  }

  v43 = v41;
  MEMORY[0x29C25BF10](v95, v40, &v41[-v40]);
  v79 = a5;
  v44 = strchr(v43, 63);
  if (v44)
  {
    v45 = v44;
    MEMORY[0x29C25BF10](&v92, v43, v44 - v43);
    v43 = v45 + 1;
    v46 = &v89;
  }

  else
  {
    v46 = &v92;
  }

  MEMORY[0x29C25BF00](v46, v43);
  v47 = HIBYTE(v94);
  if (v94 < 0)
  {
    v47 = v93;
  }

  if (!v47)
  {
    MEMORY[0x29C25BF00](&v92, "/");
  }

  *&v120[8] = 0uLL;
  *v120 = &v120[8];
  if (v91 >= 0)
  {
    v48 = HIBYTE(v91);
  }

  else
  {
    v48 = v90;
  }

  if (v48)
  {
    if (v91 >= 0)
    {
      v49 = &v89;
    }

    else
    {
      v49 = v89;
    }

    while (1)
    {
      v118 = 0;
      v117 = 0;
      v50 = memchr(v49, 61, v48);
      if (!v50 || (v51 = v50 - v49, v50 - v49 == -1))
      {
        v55 = 0;
        v54 = 0;
        v117 = v49;
        v118 = v48;
      }

      else
      {
        if (v48 >= v51)
        {
          v52 = (v50 - v49);
        }

        else
        {
          v52 = v48;
        }

        v117 = v49;
        v118 = v52;
        if (v48 <= v51)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v53 = v51 + 1;
        v54 = &v49[v53];
        v55 = (v48 - v53);
        if (v48 != v53)
        {
          v56 = memchr(&v49[v53], 38, v48 - v53);
          v49 = 0;
          if (!v56 || (v57 = (v56 - v54), v56 - v54 == -1))
          {
            v48 = 0;
          }

          else
          {
            if (v55 <= v57)
            {
              std::__throw_out_of_range[abi:ne200100]("string_view::substr");
            }

            v49 = v56 + 1;
            v48 = v55 - (v57 + 1);
            v55 = (v56 - v54);
          }

          goto LABEL_58;
        }
      }

      v49 = 0;
      v48 = 0;
LABEL_58:
      v58 = std::__tree<std::__value_type<std::string_view,std::string_view>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::string_view>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::string_view>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(v120, &v117);
      *(v58 + 48) = v54;
      *(v58 + 56) = v55;
      if (!v48)
      {
        v59 = *v120;
        if (*v120 != &v120[8])
        {
          v60 = 1;
          do
          {
            if ((v60 & 1) == 0)
            {
              std::string::push_back(&v88, 38);
            }

            v61 = std::string::append(&v88, *(v59 + 4), *(v59 + 5));
            v62 = std::string::append(v61, "=");
            std::string::append(v62, *(v59 + 6), *(v59 + 7));
            v63 = *(v59 + 1);
            if (v63)
            {
              do
              {
                v64 = v63;
                v63 = *v63;
              }

              while (v63);
            }

            else
            {
              do
              {
                v64 = *(v59 + 2);
                v12 = *v64 == v59;
                v59 = v64;
              }

              while (!v12);
            }

            v60 = 0;
            v59 = v64;
          }

          while (v64 != &v120[8]);
        }

        break;
      }
    }
  }

  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v120, *&v120[8]);
  *v120 = &unk_2A1DDFDD8;
  *&v120[8] = &unk_2A1DDFE08;
  memset(&v120[16], 0, 256);
  v121 = 0;
  if ((amber::digest_SHA256(v120, a4, v65, v66, v67, v68, v69) & 0x80000000) != 0 || (v117 = &off_2A1DDFC68, v118 = &v120[20], v119 = *&v120[16], amber::hexBytesToStringEnd(&v117, &v87, v70, v71, v72, v73, v74) < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "hexSHA256", 0x17, 0, "hexSHA256", v74);
  }

  if ((amber::HTTPHeadersAppendWithFormat(a5, "X-Amz-Date: %s", (a1 + 552)) & 0x80000000) == 0)
  {
    v75 = (a1 + 496);
    if (*(a1 + 519) < 0)
    {
      if (!*(a1 + 504))
      {
LABEL_81:
        v76 = &v87;
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v76 = v87.__r_.__value_.__r.__words[0];
        }

        if ((amber::HTTPHeadersAppendWithFormat(a5, "X-Amz-Content-Sha256: %s", v76) & 0x80000000) == 0)
        {
          for (i = *(a5 + 8); i != v79; i = *(i + 8))
          {
            v78 = (i + 16);
            if (*(i + 39) < 0)
            {
              v78 = *(i + 16);
            }

            if (!strncasecmp(v78, "x-amz-", 6uLL))
            {
              std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
            }
          }

          std::__list_imp<std::string>::__create_node[abi:ne200100]<char const(&)[6]>();
        }

        goto LABEL_11;
      }

      v75 = *v75;
    }

    else if (!*(a1 + 519))
    {
      goto LABEL_81;
    }

    if ((amber::HTTPHeadersAppendWithFormat(a5, "X-Amz-Security-Token: %s", v75) & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_81;
  }

LABEL_11:
  std::__list_imp<std::string>::clear(v80);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v84);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(v92);
  }

  if (SHIBYTE(v96) < 0)
  {
    operator delete(v95[0]);
  }

  amber::Buffer::~Buffer(v97, v13, v14, v15, v16, v17, v18);
  amber::Buffer::~Buffer(v102, v19, v20, v21, v22, v23, v24);
  amber::Buffer::~Buffer(v107, v25, v26, v27, v28, v29, v30);
  amber::Buffer::~Buffer(v112, v31, v32, v33, v34, v35, v36);
  v37 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_296978328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  std::__list_imp<std::string>::clear(&a29);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  amber::Buffer::~Buffer(&a73, v75, v76, v77, v78, v79, v80);
  amber::Buffer::~Buffer(&a74, v81, v82, v83, v84, v85, v86);
  amber::Buffer::~Buffer(&STACK[0x230], v87, v88, v89, v90, v91, v92);
  amber::Buffer::~Buffer(&STACK[0x298], v93, v94, v95, v96, v97, v98);
  _Unwind_Resume(a1);
}

void hexSHA256(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v17 = *MEMORY[0x29EDCA608];
  v15[0] = &unk_2A1DDFDD8;
  v15[1] = &unk_2A1DDFE08;
  memset(&v15[2], 0, 256);
  v16 = 0;
  if ((amber::digest_SHA256(v15, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (v14[0] = &off_2A1DDFC68, v14[1] = &v15[2] + 4, v14[2] = LODWORD(v15[2]), amber::hexBytesToStringEnd(v14, a1, v8, v9, v10, v11, v12) < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "hexSHA256", 0x17, 0, "hexSHA256", v12);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t hexHMAC_SHA256(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v18 = *MEMORY[0x29EDCA608];
  v16[0] = &unk_2A1DDFDD8;
  v16[1] = &unk_2A1DDFE08;
  memset(&v16[2], 0, 256);
  v17 = 0;
  if ((amber::HMAC_SHA256(v16, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (v15[0] = &off_2A1DDFC68, v15[1] = &v16[2] + 4, v15[2] = LODWORD(v16[2]), amber::hexBytesToStringEnd(v15, a1, v8, v9, v10, v11, v12) < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "hexHMAC_SHA256", 0x21, 0, "hexHMAC_SHA256", v12);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::operator std::string_view(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(a1, a7, v11);
  amber::ConstMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v8, v10);
  return v10[1];
}

uint64_t amber::S3Context::s3Perform(uint64_t a1, uint64_t a2, const std::string::value_type *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(&v18, 0, sizeof(v18));
  if ((amber::BaseObject::getAttributeString(a1, 414, &v18) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "s3Perform", 0x131, 0, "invalid S3 endpoint", v12);
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*a3 != 47)
    {
      std::string::append(&v18, "/");
    }

    std::string::append(&v18, a3);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    v17[0] = v17;
    v17[1] = v17;
    v17[2] = 0;
    v15 = amber::HTTPContext::httpPerformBase(a1, a2, v14, v17, a4, a5, a6, &amber::HTTPContext::FullRange, 1u);
    std::__list_imp<std::string>::clear(v17);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_29697894C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__list_imp<std::string>::clear(&a11);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::S3Context::s3Enqueue(uint64_t a1, uint64_t a2, const std::string::value_type *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(&v21, 0, sizeof(v21));
  if ((amber::BaseObject::getAttributeString(a1, 414, &v21) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "s3Enqueue", 0x147, 0, "invalid S3 endpoint", v14);
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*a3 != 47)
    {
      std::string::append(&v21, "/");
    }

    std::string::append(&v21, a3);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v21;
    }

    else
    {
      v16 = v21.__r_.__value_.__r.__words[0];
    }

    v20[0] = v20;
    v20[1] = v20;
    v20[2] = 0;
    v19 = xmmword_296A14BA0;
    v17 = amber::HTTPContext::httpEnqueue(a1, a2, v16, v20, a4, a5, &v19, 1, a6, a7);
    std::__list_imp<std::string>::clear(v20);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_296978ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__list_imp<std::string>::clear(&a13);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::S3Context::enqueueGetObject(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &off_2A1DDFC68;
  return amber::S3Context::s3Enqueue(a1, 1, a2, v6, a3, a4, a5);
}

uint64_t amber::S3Context::putObject(amber::S3Context *this, const char *a2, const amber::ConstMemoryView *a3)
{
  v7[0] = v7;
  v7[1] = v7;
  v7[2] = 0;
  v8 = 0;
  v9 = -1;
  if ((amber::S3Context::s3Perform(this, 2, a2, a3, 0, v7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "putObject", 0x173, 0, "PutObject %s -> %3d", v4, a2, v9);
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  std::__list_imp<std::string>::clear(v7);
  return v5;
}

void sub_296978C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<std::string>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t amber::S3Context::getObject(amber::S3Context *this, const char *a2, amber::Buffer *a3)
{
  v8[0] = v8;
  v8[1] = v8;
  v8[2] = 0;
  v9 = 0;
  v10 = -1;
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = &off_2A1DDFC68;
  if ((amber::S3Context::s3Perform(this, 1, a2, v7, a3, v8) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "getObject", 0x180, 0, "GetObject %s -> %3d", v4, a2, v10);
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  std::__list_imp<std::string>::clear(v8);
  return v5;
}

void sub_296978CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__list_imp<std::string>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t amber::S3Context::listObjects(uint64_t a1, std::string::value_type *__s, const char *a3)
{
  v47 = *MEMORY[0x29EDCA608];
  memset(&v43, 0, sizeof(v43));
  __p = 0;
  v41 = 0;
  v42 = 0;
  if (*__s != 47)
  {
    std::string::append(&v43, "/");
  }

  std::string::append(&v43, __s);
  std::string::append(&v43, "?list-type=2");
  if (a3)
  {
    if (*a3)
    {
      std::string::append(&v43, "&prefix=");
      v5 = strlen(a3);
      if (v5)
      {
        v6 = v5;
        do
        {
          v7 = *a3;
          if ((v7 & 0x80000000) != 0)
          {
            v8 = __maskrune(*a3, 0x500uLL);
          }

          else
          {
            v8 = *(MEMORY[0x29EDCA600] + 4 * v7 + 60) & 0x500;
          }

          if (v8 || v7 - 45 < 2 || v7 == 126 || v7 == 95)
          {
            std::string::push_back(&v43, v7);
          }

          else
          {
            snprintf(__str, 8uLL, "%%%02X", v7);
            std::string::append(&v43, __str);
          }

          ++a3;
          --v6;
        }

        while (v6);
      }
    }
  }

  v35[0] = &unk_2A1DDFD28;
  v35[1] = off_2A1DDFD48;
  v35[2] = 0;
  v35[3] = 0;
  v35[5] = 0;
  v35[6] = 0;
  v35[4] = &off_2A1DDFDA8;
  v35[7] = &off_2A1DDFC68;
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  v39 = 0;
  v32[0] = v32;
  v32[1] = v32;
  v32[2] = 0;
  v33 = 0;
  v34 = -1;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v43;
  }

  v9 = HIBYTE(v42);
  if (v42 < 0)
  {
    v9 = v41;
  }

  v10 = MEMORY[0x29EDCA600];
  if (v9)
  {
    std::string::append(&v31, "&continuation-token=");
    v11 = v42 >= 0 ? &__p : __p;
    v12 = strlen(v11);
    if (v12)
    {
      v13 = v12;
      do
      {
        v14 = *v11;
        if ((v14 & 0x80000000) != 0)
        {
          v15 = __maskrune(*v11, 0x500uLL);
        }

        else
        {
          v15 = *(v10 + 4 * v14 + 60) & 0x500;
        }

        if (v15 || v14 - 45 < 2 || v14 == 126 || v14 == 95)
        {
          std::string::push_back(&v31, v14);
        }

        else
        {
          snprintf(__str, 8uLL, "%%%02X", v14);
          std::string::append(&v31, __str);
        }

        ++v11;
        --v13;
      }

      while (v13);
    }
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v31;
  }

  else
  {
    v16 = v31.__r_.__value_.__r.__words[0];
  }

  *__str = &off_2A1DDFC68;
  v45 = 0;
  v46 = 0;
  if ((amber::S3Context::s3Perform(a1, 1, v16, __str, v35, v32) & 0x80000000) == 0)
  {
    if (SHIBYTE(v42) < 0)
    {
      *__p = 0;
      v41 = 0;
    }

    else
    {
      LOBYTE(__p) = 0;
      HIBYTE(v42) = 0;
    }

    amber::XMLInputStream::XMLInputStream(__str, v35, 1, v17, v18, v19, v20);
  }

  v21 = &v31;
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v31.__r_.__value_.__r.__words[0];
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Context.cpp", "listObjects", 0x1B1, 0, "ListObjects %s -> %3d", v20, v21, v34);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  std::__list_imp<std::string>::clear(v32);
  amber::Buffer::~Buffer(v35, v22, v23, v24, v25, v26, v27);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_296979704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  amber::XMLInputStream::~XMLInputStream(&a67);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<std::string>::clear(&a38);
  amber::Buffer::~Buffer(&a42, v68, v69, v70, v71, v72, v73);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  _Unwind_Resume(a1);
}

uint64_t AmberS3ContextDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string_view,std::string_view>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::string_view>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::string_view>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view,std::string_view>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::string_view>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::string_view>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string_view,std::string_view>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::string_view>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::string_view>>>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string_view>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string_view>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::less<std::string_view>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t *std::list<std::string>::__sort<std::__less<void,void>>(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if (std::less<std::string>::operator()[abi:ne200100](a4, *a2 + 2, (a1 + 16)))
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        *(v11 + 8) = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = *(v15 + 8);
        --v14;
      }

      while (v14 > 1);
      v16 = std::list<std::string>::__sort<std::__less<void,void>>(a1, v15, a3 >> 1, a4);
      v4 = std::list<std::string>::__sort<std::__less<void,void>>(v15, a2, a3 - v13, a4);
      if (std::less<std::string>::operator()[abi:ne200100](a4, (v4 + 16), (v16 + 16)))
      {
          ;
        }

        v19 = *i;
        v20 = *(*i + 8);
        v21 = *v4;
        *(v21 + 8) = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = *(v16 + 8);
        *(v22 + 8) = v4;
        *v4 = v22;
        *v16 = v19;
        *(v19 + 8) = v16;
      }

      else
      {
        v18 = *(v16 + 8);
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if (std::less<std::string>::operator()[abi:ne200100](a4, (i + 16), v18 + 2))
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            *(v27 + 8) = v26;
            *v26 = v27;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v28 = v18[1];
            v29[1] = i;
            *i = v29;
            *v18 = v25;
            *(v25 + 8) = v18;
            v18 = v28;
            i = j;
          }

          else
          {
            v18 = v18[1];
          }
        }

        while (v18 != v23 && i != a2);
      }
    }
  }

  return v4;
}

uint64_t amber::KnoxUploadAttributes::jsonParse(amber::KnoxUploadAttributes *this, amber::JSONInputStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  *(this + 5) = *(this + 4);
  v26 = (this + 56);
  *(this + 8) = *(this + 7);
  *(this + 10) = -1;
  v27 = -1;
  *__s1 = 0u;
  v29 = 0u;
  if ((amber::JSONInputStream::read(a2, &v27, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = -1;
    do
    {
      v17 = v32;
      v18 = v27;
      if (v16 == -1)
      {
        v16 = v32;
      }

      if (v32 == v16)
      {
        if (!v27)
        {
          goto LABEL_38;
        }

        if (v27 == 2)
        {
          return 0;
        }
      }

      if (v32 != v16 + 1)
      {
        goto LABEL_27;
      }

      if (v27 > 2)
      {
        if (v27 == 4)
        {
          if (__s1[0] && !strcmp(__s1[0], "expiration"))
          {
            if (v31 < 0)
            {
              v21 = -1;
            }

            else
            {
              v21 = v30;
            }

            *(this + 10) = v21;
            goto LABEL_38;
          }

LABEL_27:
          if (v17 != v16 + 2 || v18 != 4)
          {
LABEL_45:
            v25 = v33;
            v22 = "invalid KnoxUploadAttributes line %d";
            v23 = 75;
            goto LABEL_46;
          }

          if ((v14 & (v31 >= 0)) != 1)
          {
            if ((v15 & (v31 >= 0)) != 1)
            {
              goto LABEL_45;
            }

            std::vector<unsigned long long>::push_back[abi:ne200100](v26, &v30);
LABEL_37:
            v15 = 1;
            goto LABEL_38;
          }

          std::vector<unsigned long long>::push_back[abi:ne200100](this + 4, &v30);
LABEL_34:
          v14 = 1;
          goto LABEL_38;
        }

        if (v27 != 3 || !__s1[0] || strcmp(__s1[0], "pointer_type"))
        {
          goto LABEL_45;
        }

        MEMORY[0x29C25BF00](this + 8, *(&v29 + 1));
      }

      else
      {
        if (v27 == 1)
        {
          v19 = __s1[0];
          if (!__s1[0])
          {
            goto LABEL_45;
          }

          if (!strcmp(__s1[0], "read_access_groups"))
          {
            goto LABEL_37;
          }

          if (strcmp(v19, "admin_access_groups"))
          {
            goto LABEL_45;
          }

          goto LABEL_34;
        }

        if (v27 != 2)
        {
          goto LABEL_45;
        }

        v15 = 0;
        v14 = 0;
      }

LABEL_38:
      v27 = -1;
      *__s1 = 0u;
      v29 = 0u;
    }

    while ((amber::JSONInputStream::read(a2, &v27, v9, v10, v11, v12, v13) & 0x80000000) == 0);
  }

  v22 = "read token";
  v23 = 16;
LABEL_46:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadAttributes.cpp", "jsonParse", v23, 0, v22, v13, v25);
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  *(this + 5) = *(this + 4);
  *(this + 8) = *(this + 7);
  *(this + 10) = -1;
  return 0xFFFFFFFFLL;
}