void *lsl::MemoryManager::Buffer::consumeSpace(void *this, unint64_t a2)
{
  v2 = this[1];
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    lsl::MemoryManager::Buffer::consumeSpace();
  }

  if ((a2 & 0xF) != 0)
  {
    lsl::MemoryManager::Buffer::consumeSpace();
  }

  *this += a2;
  this[1] = v4;
  return this;
}

uint64_t mach_o::Header::getUuid(mach_o::Header *this, unsigned __int8 *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header7getUuidEPh_block_invoke;
  v6[3] = &unk_A5198;
  v6[4] = &v7;
  v6[5] = a2;
  mach_o::Header::forEachLoadCommand(this, v6, &v11);
  mach_o::Error::~Error(&v11);
  v3 = v8;
  if (v8[3])
  {
    v4 = 1;
  }

  else
  {
    bzero(a2, 0x10uLL);
    v4 = *(v3 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

uint64_t mach_absolute_time(void)
{
  if (!MEMORY[0xFFFFFC090])
  {
    return mach_absolute_time_kernel();
  }

  if (MEMORY[0xFFFFFC090] == 2)
  {
    do
    {
      v3 = MEMORY[0xFFFFFC088];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
    }

    while (v3 != MEMORY[0xFFFFFC088]);
    return StatusReg + v3;
  }

  else if (MEMORY[0xFFFFFC090] == 3)
  {
    do
    {
      v5 = MEMORY[0xFFFFFC088];
      v6 = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
    }

    while (v5 != MEMORY[0xFFFFFC088]);
    return v6 + v5;
  }

  else
  {
    __isb(0xFu);
    do
    {
      v1 = MEMORY[0xFFFFFC088];
      v2 = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
    }

    while (v1 != MEMORY[0xFFFFFC088]);
    return v2 + v1;
  }
}

_DWORD *mach_o::Header::isMachO(_DWORD *result, unint64_t a2)
{
  if (a2 < 0x1C || !result || *result >> 1 != 2138504551)
  {
    return 0;
  }

  return result;
}

__n128 ___ZNK6mach_o6Header7getUuidEPh_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 27)
  {
    result = *(a2 + 8);
    **(a1 + 40) = result;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

lsl::Allocator::Pool **lsl::SharedPtr<dyld4::Atlas::Mapper>::SharedPtr(lsl::Allocator::Pool **a1, lsl::Allocator::AllocationMetadata *this)
{
  *a1 = 0;
  v4 = lsl::Allocator::AllocationMetadata::forPtr(this, this);
  v5 = lsl::Allocator::AllocationMetadata::pool(v4, 1);
  v6 = lsl::Allocator::Pool::allocator(v5);
  v7 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x10uLL);
  *v7 = 0;
  *(v7 + 1) = this;
  *a1 = v7;
  return a1;
}

uint64_t lsl::Allocator::Pool::Pool(lsl::Allocator::Pool *this, lsl::Allocator *a2, lsl::Allocator::Pool *a3, uint64_t a4, int a5)
{
  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager(this);
  }

  v5 = a5;
  bytes = lsl::MemoryManager::vm_allocate_bytes(&lsl::sMemoryManagerBuffer, a4, a5);
  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager(bytes);
  }

  result = lsl::Allocator::Pool::Pool(this, a2, a3, bytes, v10, bytes, v10, v5, byte_AC02B);
  *(this + 56) = 1;
  return result;
}

mach_vm_address_t lsl::MemoryManager::vm_allocate_bytes(lsl::MemoryManager *this, uint64_t a2, int a3)
{
  v4 = a2 + 0x3FFF;
  address = 0x100000000;
  if (a3)
  {
    v5 = 4096;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 35))
  {
    v6 = v5 | 0x2000;
  }

  else
  {
    v6 = v5;
  }

  if (mach_vm_map(mach_task_self_, &address, v4 & 0xFFFFFFFFFFFFC000, vm_page_mask, v6 | 0x3C000001, 0, 0, 0, 3, 7, 1u))
  {
    if (*(this + 35))
    {
      v7 = v5 | 0x2000;
    }

    else
    {
      v7 = v5;
    }

    v8 = vm_allocate(mach_task_self_, &address, v4 & 0xFFFFFFFFFFFFC000, v7 | 0x3C000001);
    if (v8)
    {
      lsl::MemoryManager::vm_allocate_bytes(v13, v4 & 0xFFFFFFFFFFFFC000, this, v8, v9, v10);
    }
  }

  return address;
}

double dyld4::FileManager::fileRecordForPath@<D0>(dyld4::FileManager *this@<X0>, lsl::Allocator::Pool **a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v6 = lsl::Allocator::strdup(a2, a3);
  }

  else
  {
    v6 = 0;
  }

  *a4 = this;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 40) = v6;
  *&result = 0x1FFFFFFFFLL;
  *(a4 + 64) = 0x1FFFFFFFFLL;
  *(a4 + 72) = 0;
  *(a4 + 74) = 1;
  return result;
}

char *lsl::Allocator::strdup(lsl::Allocator::Pool **this, const char *__s)
{
  v4 = _platform_strlen(__s);
  v5 = lsl::Allocator::aligned_alloc(this, 0x10uLL, v4 + 1);
  strlcpy(v5, __s, v4 + 1);
  return v5;
}

uint64_t dyld4::FileRecord::FileRecord(uint64_t a1, dyld4::FileRecord *a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 74) = 1;
  dyld4::FileRecord::swap(a1, a2);
  return a1;
}

__n128 dyld4::FileRecord::swap(dyld4::FileRecord *this, dyld4::FileRecord *a2)
{
  v4 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 5);
  *(this + 5) = 0;
  v8 = *(a2 + 5);
  if (a2 == this)
  {
    *(a2 + 5) = v7;
    if (v8)
    {
      lsl::Allocator::freeObject(v8, a2);
    }
  }

  else
  {
    *(this + 5) = v8;
    *(a2 + 5) = v7;
  }

  v9 = *this;
  *this = *a2;
  *a2 = v9;
  result = *(a2 + 3);
  v11 = *(this + 3);
  *(this + 3) = result;
  *(a2 + 3) = v11;
  LODWORD(v9) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  LODWORD(v9) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v9;
  LOWORD(v9) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v9;
  LOBYTE(v9) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v9;
  return result;
}

uint64_t *dyld4::Atlas::Mapper::Pointer<dyld3::MachOLoaded>::swap(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = *result;
    v3 = result[1];
    v4 = a2[1];
    *result = *a2;
    result[1] = v4;
    *a2 = v2;
    a2[1] = v3;
    v5 = result[2];
    result[2] = a2[2];
    a2[2] = v5;
    LOBYTE(v5) = *(result + 24);
    *(result + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
  }

  return result;
}

double lsl::OrderedSet<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>>::insert@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::const_iterator::const_iterator(v19, a1, a2);
  lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::insert_internal(a1, v19, a2, &v9);
  v6 = v9;
  *(a3 + 24) = v11;
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  *(a3 + 72) = v14;
  result = *&v10;
  *(a3 + 8) = v10;
  *(a3 + 88) = v15;
  *(a3 + 96) = v16;
  v8 = v17;
  *a3 = v6;
  *(a3 + 98) = v8;
  *(a3 + 104) = v18;
  return result;
}

uint64_t lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::const_iterator::const_iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 83) = 0u;
  if (*(a2 + 32))
  {
    v7 = 0;
    v8 = *a2;
    v9 = a1 + 88;
    do
    {
      v10 = v9 + 8 * v7;
      *(v10 - 80) = v8;
      v11 = lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::lower_bound_index(v8, a3);
      *(v9 + v7) = v11;
      v12 = *(v10 - 80);
      v13 = *(v12 + 248);
      if (v11 != (v13 & 0x7F) && *(*(v12 + 8 * v11) + 160) < *(*a3 + 160))
      {
        *(a1 + 98) = v7 + 1;
        return a1;
      }

      v14 = *(a2 + 32);
      if (v7 + 1 != v14)
      {
        if (v13 < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v8 = *(v12 + 8 * v11 + 120);
      }

      ++v7;
    }

    while (v7 < v14);
    for (*(a1 + 98) = v14; v14; *(a1 + 98) = v14)
    {
      if (*(v9 + v14 - 1) != (*(*(v4 + 8 * v14 - 8) + 248) & 0x7F))
      {
        break;
      }

      LOBYTE(v14) = v14 - 1;
    }
  }

  return a1;
}

uint64_t lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::insert_internal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v18 = a1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    memset(v23, 0, sizeof(v23));
    result = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(a2, &v18);
    if (result && (v9 = *(a2 + 98), *(*a3 + 160) >= *(*(*(a2 + 8 + 8 * (v9 - 1)) + 8 * *(a2 + 88 + v9 - 1)) + 160)))
    {
      v14 = 0;
      v16 = *(a2 + 8);
      *(a4 + 24) = *(a2 + 24);
      v17 = *(a2 + 56);
      *(a4 + 40) = *(a2 + 40);
      *(a4 + 56) = v17;
      *(a4 + 72) = *(a2 + 72);
      *a4 = *a2;
      *(a4 + 8) = v16;
      *(a4 + 88) = *(a2 + 88);
      *(a4 + 96) = *(a2 + 96);
      *(a4 + 98) = v9;
    }

    else
    {
      v18 = a1;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      memset(v23, 0, sizeof(v23));
      if (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(a2, &v18) && *(a2 + 98) == *(a1 + 32))
      {
        lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::const_iterator::prepareForInsertion(a2);
        v10 = a2 + 88;
        v11 = *(a2 + 98) - 1;
        v12 = *(a2 + 88 + v11);
      }

      else
      {
        lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator--(a2);
        lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::const_iterator::prepareForInsertion(a2);
        v10 = a2 + 88;
        v15 = *(a2 + 98) + a2 + 88;
        v12 = *(v15 - 1) + 1;
        *(v15 - 1) = v12;
        v11 = *(a2 + 98) - 1;
      }

      result = lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::insert(*(a2 + 8 + 8 * v11), v12, a3);
      ++*(a1 + 24);
      *a4 = *a2;
      *(a4 + 24) = *(a2 + 24);
      *(a4 + 40) = *(a2 + 40);
      *(a4 + 56) = *(a2 + 56);
      *(a4 + 72) = *(a2 + 72);
      *(a4 + 8) = *(a2 + 8);
      *(a4 + 88) = *v10;
      *(a4 + 96) = *(v10 + 8);
      *(a4 + 98) = *(a2 + 98);
      v14 = 1;
    }
  }

  else
  {
    v13 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    *(v13 + 248) = 0x80;
    *v13 = 0u;
    *(v13 + 1) = 0u;
    *(v13 + 2) = 0u;
    *(v13 + 3) = 0u;
    *(v13 + 4) = 0u;
    *(v13 + 5) = 0u;
    *(v13 + 6) = 0u;
    *(v13 + 7) = 0u;
    *(v13 + 8) = 0u;
    *(v13 + 9) = 0u;
    *(v13 + 10) = 0u;
    *(v13 + 11) = 0u;
    *(v13 + 12) = 0u;
    *(v13 + 13) = 0u;
    *(v13 + 14) = 0u;
    *(v13 + 30) = 0;
    *a1 = v13;
    v14 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v13;
    *(a2 + 98) = 1;
    result = lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::insert(v13, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 96) = *(a2 + 96);
    *(a4 + 98) = *(a2 + 98);
  }

  *(a4 + 104) = v14;
  return result;
}

void dyld4::FileRecord::~FileRecord(dyld4::FileRecord *this, void *a2)
{
  v3 = *(this + 16);
  if (v3 != -1)
  {
    close(v3);
    *(this + 16) = -1;
  }

  v4 = *(this + 5);
  if (v4)
  {
    lsl::Allocator::freeObject(v4, a2);
  }
}

uint64_t lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::insert(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v3 = *(result + 248);
  if (v3 >= 0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 31;
  }

  if ((v3 & 0x7F) == v4)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  if (8 * a2 != 8 * (v3 & 0x7F))
  {
    v5 = (result + 8 * (v3 & 0x7F));
    v6 = v5 + 1;
    do
    {
      v7 = v5;
      v8 = v6;
      --v5;
      --v6;
      if (v7 != v8)
      {
        v9 = *v6;
        *v6 = *v5;
        *v5 = v9;
      }
    }

    while (v5 != (result + 8 * a2));
  }

  *(result + 248) = v3 + 1;
  v10 = (result + 8 * a2);
  if (v10 != a3)
  {
    v11 = *v10;
    *v10 = *a3;
    *a3 = v11;
  }

  return result;
}

uint64_t *lsl::UniquePtr<dyld4::Atlas::Image>::~UniquePtr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 128);
    if (v3 && *(v2 + 136) == 1)
    {
      dyld4::Atlas::Mapper::unmap(*(v2 + 112), v3, *(v2 + 120));
    }

    v4 = *(v2 + 88);
    if (v4)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v4, v3);
    }

    dyld4::FileRecord::~FileRecord((v2 + 8));
    lsl::Allocator::freeObject(*a1, v5);
  }

  return a1;
}

uint64_t lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 98);
  v3 = *(a1 + 98);
  if (v2 >= v3)
  {
    v4 = *(a1 + 98);
  }

  else
  {
    v4 = *(a2 + 98);
  }

  if (v4)
  {
    v5 = (a1 + 88);
    v6 = (a2 + 88);
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      v10 = v7 >= v9;
      if (v7 != v9)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    if (v10)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
LABEL_8:
    v11 = v3 == v2;
    if (v3 < v2)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

unint64_t dyld4::Atlas::ProcessSnapshot::Serializer::serialize@<X0>(dyld4::Atlas::ProcessSnapshot::Serializer *this@<X0>, uint64_t *a2@<X8>)
{
  *(this + 25) = mach_absolute_time();
  ++*(this + 52);
  v4 = *(this + 1);
  *a2 = v4;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v104 = 0;
  v105 = v4;
  v106 = 0;
  v107 = 0;
  v100 = 0;
  v101 = v4;
  v102 = 0;
  v103 = 0;
  if (vm_page_size == 0x4000)
  {
    *(this + 27) |= 4uLL;
  }

  v5 = **(this + 4);
  if (v5)
  {
    *(this + 27) |= 1uLL;
    if (dyld4::FileRecord::persistent((v5 + 8)))
    {
      v6 = dyld4::FileRecord::volume((v5 + 8));
      lsl::OrderedSet<lsl::UUID,std::less<lsl::UUID>>::insert(&v100, v6, &v94);
    }

    else
    {
      Path = dyld4::FileRecord::getPath((v5 + 8));
      if (Path)
      {
        lsl::OrderedSet<char const*,lsl::ConstCharStarCompare>::insert(&v104, &Path, &v94);
      }

      else
      {
        *&v108[0] = "???";
        lsl::OrderedSet<char const*,lsl::ConstCharStarCompare>::insert(&v104, v108, &v94);
      }
    }
  }

  v94 = *(this + 3);
  v7 = v94;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v99, 0, 27);
  v8 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v94);
  v9 = *v8;
  v85 = *(v8 + 1);
  v10 = *(v8 + 9);
  v11 = *(v8 + 7);
  v12 = *(v8 + 5);
  v86 = *(v8 + 3);
  v87 = v12;
  v88 = v11;
  v89 = v10;
  v13 = v8[11];
  WORD4(v90) = *(v8 + 48);
  *&v90 = v13;
  LOBYTE(v13) = *(v8 + 98);
  Path = v9;
  BYTE10(v90) = v13;
  *(v99 + 2) = 0u;
  memset(v108 + 8, 0, 91);
  *&v108[0] = v7;
  while (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&Path, v108))
  {
    v14 = *(*(&v85 + BYTE10(v90) - 1) + 8 * *(&v90 + BYTE10(v90) - 1));
    if (dyld4::FileRecord::persistent((v14 + 8)))
    {
      v15 = dyld4::FileRecord::volume((v14 + 8));
      lsl::OrderedSet<lsl::UUID,std::less<lsl::UUID>>::insert(&v100, v15, &v94);
    }

    else
    {
      v83 = dyld4::FileRecord::getPath((v14 + 8));
      if (v83)
      {
        lsl::OrderedSet<char const*,lsl::ConstCharStarCompare>::insert(&v104, &v83, &v94);
      }

      else
      {
        v82 = "???";
        lsl::OrderedSet<char const*,lsl::ConstCharStarCompare>::insert(&v104, &v82, &v94);
      }
    }

    lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&Path);
  }

  v94 = &v100;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v99, 0, 45);
  v16 = lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator++(&v94);
  v17 = *v16;
  v18 = *(v16 + 11);
  v19 = *(v16 + 9);
  v20 = *(v16 + 7);
  v87 = *(v16 + 5);
  v88 = v20;
  v89 = v19;
  v90 = v18;
  v21 = *(v16 + 3);
  v85 = *(v16 + 1);
  v86 = v21;
  v22 = v16[13];
  v92 = *(v16 + 28);
  v91 = v22;
  LOBYTE(v22) = *(v16 + 116);
  Path = v17;
  v93 = v22;
  memset(v108, 0, 108);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v99, 0, 45);
  v94 = &v100;
  v23 = lsl::Vector<lsl::UUID>::Vector<lsl::OrderedSet<lsl::UUID,std::less<lsl::UUID>>::const_iterator>(v108, &Path, &v94, *(this + 1));
  if ((this + 48) != v108)
  {
    v24 = v108[1];
    v108[1] = *(this + 4);
    v26 = *(this + 6);
    v25 = *(this + 7);
    *(this + 3) = v108[0];
    *(this + 4) = v24;
    *&v108[0] = v26;
    *(&v108[0] + 1) = v25;
    if (!v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(&v108[0] + 1))
  {
LABEL_18:
    lsl::Vector<AAREncoder::Link>::resize(v23, 0);
  }

LABEL_19:
  v94 = &v104;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v99, 0, 27);
  v27 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v94);
  v28 = *v27;
  v85 = *(v27 + 1);
  v29 = *(v27 + 9);
  v30 = *(v27 + 7);
  v31 = *(v27 + 5);
  v86 = *(v27 + 3);
  v87 = v31;
  v88 = v30;
  v89 = v29;
  v32 = v27[11];
  WORD4(v90) = *(v27 + 48);
  *&v90 = v32;
  LOBYTE(v32) = *(v27 + 98);
  Path = v28;
  BYTE10(v90) = v32;
  *(&v108[4] + 10) = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v99, 0, 27);
  v94 = &v104;
  while (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&Path, &v94))
  {
    v33 = BYTE10(v90) - 1;
    v34 = *(&v85 + v33);
    v35 = *(&v90 + v33);
    v36 = *(this + 16);
    lsl::Vector<unsigned int>::reserve(this + 144, *(this + 20) + 1);
    v37 = *(this + 19);
    v38 = *(this + 20);
    *(this + 20) = v38 + 1;
    *(v37 + 4 * v38) = v36;
    v39 = *(v34 + 8 * v35);
    if (*v39)
    {
      v40 = 1;
      do
      {
        lsl::Vector<std::byte>::reserve(this + 112, *(this + 16) + 1);
        v41 = *v39;
        v42 = *(this + 15);
        v43 = *(this + 16);
        *(this + 16) = v43 + 1;
        *(v42 + v43) = v41;
        v39 = (*(v34 + 8 * v35) + v40++);
      }

      while (*v39);
    }

    lsl::Vector<std::byte>::reserve(this + 112, *(this + 16) + 1);
    v44 = *(this + 15);
    v45 = *(this + 16);
    *(this + 16) = v45 + 1;
    *(v44 + v45) = 0;
    lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&Path);
  }

  v46 = *(this + 20);
  if (v46)
  {
    v47 = *(this + 19);
    v48 = *(this + 12);
    v49 = 4 * v46;
    do
    {
      v50 = *v47++;
      v51 = *(this + 15) + v50;
      lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(this + 80, v48 + 1);
      v52 = *(this + 11);
      v53 = *(this + 12);
      v48 = v53 + 1;
      *(this + 12) = v53 + 1;
      *(v52 + 8 * v53) = v51;
      v49 -= 4;
    }

    while (v49);
  }

  dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned int>(this, *(this + 44), a2);
  dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned int>(this, *(this + 45), a2);
  dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned long long>(this, *(this + 23), a2);
  dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned int>(this, *(this + 48), a2);
  dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned int>(this, *(this + 52), a2);
  dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned long long>(this, *(this + 25), a2);
  dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned int>(this, *(this + 53), a2);
  lsl::emitPVLEUInt64(*(this + 27), a2);
  lsl::emitPVLEUInt64(**(this + 28), a2);
  lsl::emitPVLEUInt64(**(this + 29), a2);
  lsl::emitPVLEUInt64(**(this + 30), a2);
  lsl::emitPVLEUInt64(*(this + 8), a2);
  v54 = *(this + 8);
  if (v54)
  {
    v55 = *(this + 7);
    v56 = 16 * v54;
    do
    {
      v57 = v55 + 16;
      std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v94, v55, v55 + 16, a2);
      v55 = v57;
      v56 -= 16;
    }

    while (v56);
  }

  lsl::emitPVLEUInt64(*(this + 16), a2);
  std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v94, *(this + 15), (*(this + 15) + *(this + 16)), a2);
  if (*(this + 27))
  {
    v58 = 14;
    if ((*(this + 27) & 4) == 0)
    {
      v58 = 12;
    }

    dyld4::Atlas::ProcessSnapshot::Serializer::emitMappedFileInfo(this, *(**(this + 4) + 160) >> v58, (**(this + 4) + 88), (**(this + 4) + 8), a2);
    lsl::emitPVLEUInt64(*(**(this + 5) + 16), a2);
    v59 = **(this + 5);
    if (*(v59 + 16))
    {
      std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v94, *(v59 + 8), (*(v59 + 8) + *(v59 + 24)), a2);
    }
  }

  lsl::emitPVLEUInt64(*(*(this + 3) + 24), a2);
  v94 = *(this + 3);
  v60 = v94;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v99, 0, 27);
  v61 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v94);
  v62 = *v61;
  v85 = *(v61 + 1);
  v63 = *(v61 + 9);
  v64 = *(v61 + 7);
  v65 = *(v61 + 5);
  v86 = *(v61 + 3);
  v87 = v65;
  v88 = v64;
  v89 = v63;
  v66 = v61[11];
  WORD4(v90) = *(v61 + 48);
  *&v90 = v66;
  LOBYTE(v66) = *(v61 + 98);
  Path = v62;
  BYTE10(v90) = v66;
  *(&v108[4] + 10) = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v99, 0, 27);
  v94 = v60;
  if (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&Path, &v94))
  {
    v67 = 0;
    do
    {
      v68 = BYTE10(v90) - 1;
      v69 = *(&v85 + v68);
      v70 = *(&v90 + v68);
      v71 = *(v69 + 8 * v70);
      v72 = *(v71 + 20);
      v73 = v72 - v67;
      if ((*(this + 27) & 4) != 0)
      {
        v74 = 14;
      }

      else
      {
        v74 = 12;
      }

      v75 = v73 >> v74;
      v76 = dyld4::Atlas::Image::uuid(v71);
      dyld4::Atlas::ProcessSnapshot::Serializer::emitMappedFileInfo(this, v75, v76, (*(v69 + 8 * v70) + 8), a2);
      lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&Path);
      v77 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&Path, &v94);
      v67 = v72;
    }

    while (v77);
  }

  while (1)
  {
    v80 = a2[2];
    if ((v80 & 0xF) == 0)
    {
      break;
    }

    lsl::Vector<std::byte>::reserve(a2, v80 + 1);
    v78 = a2[1];
    v79 = a2[2];
    a2[2] = v79 + 1;
    *(v78 + v79) = 0;
  }

  lsl::CRC32c::CRC32c(&v94);
  lsl::CRC32c::operator()(&v94, a2[1], a2[2]);
  *(a2[1] + 32) = lsl::CRC32c::operator unsigned int(&v94);
  if (v100)
  {
    lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::deallocate(v100, v101);
  }

  result = v104;
  if (v104)
  {
    return lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::deallocate(v104, v105);
  }

  return result;
}

uint64_t *dyld4::Atlas::ProcessSnapshot::serialize@<X0>(dyld4::Atlas::ProcessSnapshot *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = this;
  v5 = this + 16;
  v6 = this + 64;
  v7 = this + 56;
  v24 = -1491447450;
  v4 = *this;
  v8 = v4;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = v4;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = v4;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = v4;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v26 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = this + 80;
  v31 = this + 88;
  v32 = this + 96;
  result = dyld4::Atlas::ProcessSnapshot::Serializer::serialize(&v3, a2);
  if (v21)
  {
    result = lsl::Vector<unsigned int>::resize(&v20, 0);
  }

  if (v17)
  {
    result = lsl::Vector<std::byte>::resize(&v16, 0);
  }

  if (v13)
  {
    result = lsl::Vector<char const*>::resize(&v12, 0);
  }

  if (v9)
  {
    return lsl::Vector<AAREncoder::Link>::resize(&v8, 0);
  }

  return result;
}

BOOL dyld4::FileRecord::persistent(dyld4::FileRecord *this)
{
  v1 = 0;
  v2 = this + 24;
  do
  {
    v3 = v2[v1];
    if (v2[v1])
    {
      v4 = 1;
    }

    else
    {
      v4 = v1 == 15;
    }

    ++v1;
  }

  while (!v4);
  return v3 && *(this + 1) != 0;
}

uint64_t **lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(uint64_t **result)
{
  v1 = *(result + 98);
  v2 = *result;
  if (*(result + 98))
  {
    v3 = *(v2 + 32);
    v4 = result + 11;
    ++*(result + (v1 - 1) + 88);
    if (v1 == v3)
    {
      v5 = *(v2 + 32);
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*(v4 + (v5 + ~i)) != (result[(v5 + ~i) + 1][31] & 0x7F))
          {
            break;
          }

          *(result + 98) = v5 + ~i;
        }
      }
    }

    else
    {
      v13 = *(result + 98);
      if (v13 != *(v2 + 32))
      {
        v14 = result + 1;
        do
        {
          v15 = v14[v13 - 1];
          if (v15[31] < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          v14[v13] = v15[*(v4 + v13 - 1) + 15];
          *(v4 + v13) = 0;
          LOBYTE(v13) = *(result + 98) + 1;
          *(result + 98) = v13;
        }

        while (*(v2 + 32) != v13);
      }
    }
  }

  else if (*(v2 + 32))
  {
    v7 = 0;
    v8 = *v2;
    v9 = result + 1;
    do
    {
      v9[v7] = v8;
      *(result + v7 + 88) = 0;
      v10 = *(result + 98);
      v11 = *(v2 + 32);
      if (v10 + 1 != v11)
      {
        v12 = v9[v10];
        if (v12[31] < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v8 = v12[15];
      }

      v7 = v10 + 1;
      *(result + 98) = v7;
    }

    while (v11 > v7);
  }

  return result;
}

double lsl::OrderedSet<char const*,lsl::ConstCharStarCompare>::insert@<D0>(uint64_t *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a2;
  lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::const_iterator(v19, a1, &v8);
  lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::insert_internal(a1, v19, &v8, &v9);
  v5 = v9;
  *(a3 + 24) = v11;
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  *(a3 + 72) = v14;
  result = *&v10;
  *(a3 + 8) = v10;
  *(a3 + 88) = v15;
  *(a3 + 96) = v16;
  v7 = v17;
  *a3 = v5;
  *(a3 + 98) = v7;
  *(a3 + 104) = v18;
  return result;
}

{
  lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::const_iterator(v19, a1, a2);
  lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::insert_internal(a1, v19, a2, &v9);
  v6 = v9;
  *(a3 + 24) = v11;
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  *(a3 + 72) = v14;
  result = *&v10;
  *(a3 + 8) = v10;
  *(a3 + 88) = v15;
  *(a3 + 96) = v16;
  v8 = v17;
  *a3 = v6;
  *(a3 + 98) = v8;
  *(a3 + 104) = v18;
  return result;
}

uint64_t lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::insert_internal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v25 = a1;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    result = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(a2, &v25);
    if (result && (v9 = *(a2 + 98), v10 = *(*(a2 + 8 + 8 * (v9 - 1)) + 8 * *(a2 + 88 + v9 - 1)), v11 = **a3, v11 >= *v10))
    {
      v12 = *v10;
      v13 = v10 + 1;
      v14 = *a3 + 1;
      while (v12 && v12 >= v11)
      {
        if (v11)
        {
          v15 = *v14++;
          v11 = v15;
          v16 = *v13++;
          v12 = v16;
          if (v11 >= v16)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      v21 = 0;
      v23 = *(a2 + 8);
      *(a4 + 24) = *(a2 + 24);
      v24 = *(a2 + 56);
      *(a4 + 40) = *(a2 + 40);
      *(a4 + 56) = v24;
      *(a4 + 72) = *(a2 + 72);
      *a4 = *a2;
      *(a4 + 8) = v23;
      *(a4 + 88) = *(a2 + 88);
      *(a4 + 96) = *(a2 + 96);
      *(a4 + 98) = v9;
    }

    else
    {
LABEL_9:
      v25 = a1;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      memset(v30, 0, sizeof(v30));
      if (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(a2, &v25) && *(a2 + 98) == *(a1 + 32))
      {
        lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::prepareForInsertion(a2);
        v17 = a2 + 88;
        v18 = *(a2 + 98) - 1;
        v19 = *(a2 + 88 + v18);
      }

      else
      {
        lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator--(a2);
        lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::prepareForInsertion(a2);
        v17 = a2 + 88;
        v20 = *(a2 + 98) + a2 + 88;
        v19 = *(v20 - 1) + 1;
        *(v20 - 1) = v19;
        v18 = *(a2 + 98) - 1;
      }

      result = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::insert(*(a2 + 8 + 8 * v18), v19, a3);
      ++*(a1 + 24);
      *a4 = *a2;
      *(a4 + 24) = *(a2 + 24);
      *(a4 + 40) = *(a2 + 40);
      *(a4 + 56) = *(a2 + 56);
      *(a4 + 72) = *(a2 + 72);
      *(a4 + 8) = *(a2 + 8);
      *(a4 + 88) = *v17;
      *(a4 + 96) = *(v17 + 8);
      *(a4 + 98) = *(a2 + 98);
      v21 = 1;
    }
  }

  else
  {
    v22 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    *(v22 + 248) = 0x80;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    *(v22 + 2) = 0u;
    *(v22 + 3) = 0u;
    *(v22 + 4) = 0u;
    *(v22 + 5) = 0u;
    *(v22 + 6) = 0u;
    *(v22 + 7) = 0u;
    *(v22 + 8) = 0u;
    *(v22 + 9) = 0u;
    *(v22 + 10) = 0u;
    *(v22 + 11) = 0u;
    *(v22 + 12) = 0u;
    *(v22 + 13) = 0u;
    *(v22 + 14) = 0u;
    *(v22 + 30) = 0;
    *a1 = v22;
    v21 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v22;
    *(a2 + 98) = 1;
    result = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::insert(v22, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 96) = *(a2 + 96);
    *(a4 + 98) = *(a2 + 98);
  }

  *(a4 + 104) = v21;
  return result;
}

uint64_t dyld4::FileRecord::getPath(dyld4::FileRecord *this)
{
  if (!*(this + 5))
  {
    v2 = *(this + 2);
    if (v2)
    {
      dyld4::FileManager::getPath(*this, v2, *(this + 1), &v6);
    }

    else
    {
      dyld4::FileManager::getPath(*this, (this + 24), *(this + 1), &v6);
    }

    v4 = *(this + 5);
    *(this + 5) = v6;
    if (v4)
    {
      lsl::Allocator::freeObject(v4, v3);
    }
  }

  return *(this + 5);
}

uint64_t lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::const_iterator(uint64_t a1, uint64_t *a2, void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 83) = 0u;
  if (*(a2 + 32))
  {
    v7 = 0;
    v8 = *a2;
    v9 = a1 + 88;
    do
    {
      *(v4 + 8 * v7) = v8;
      v10 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,char const**,char const*,std::__identity,lsl::ConstCharStarCompare>(v8, a3, *(v8 + 248) & 0x7F);
      v11 = v10 - v8;
      v12 = (v10 - v8) >> 3;
      *(v9 + v7) = v12;
      v13 = *(v4 + 8 * v7);
      if ((*(v13 + 248) & 0x7F) != v12)
      {
        v15 = *(v13 + (v11 & 0x7F8));
        v16 = *v15;
        if (v16 < **a3)
        {
LABEL_15:
          *(a1 + 98) = v7 + 1;
          return a1;
        }

        v17 = **a3;
        v18 = (*a3 + 1);
        v19 = v15 + 1;
        while (v17 && v17 >= v16)
        {
          if (v16)
          {
            v20 = *v19++;
            v16 = v20;
            v21 = *v18++;
            v17 = v21;
            if (v16 >= v21)
            {
              continue;
            }
          }

          goto LABEL_15;
        }
      }

      v14 = *(a2 + 32);
      if (v7 + 1 != v14)
      {
        if ((*(v13 + 248) & 0x80) != 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v8 = *(v13 + (v11 & 0x7F8) + 120);
      }

      ++v7;
    }

    while (v7 < v14);
    for (*(a1 + 98) = v14; v14; *(a1 + 98) = v14)
    {
      if (*(v9 + v14 - 1) != (*(*(v4 + 8 * v14 - 8) + 248) & 0x7F))
      {
        break;
      }

      LOBYTE(v14) = v14 - 1;
    }
  }

  return a1;
}

char *lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::insert(char *result, unsigned int a2, void *a3)
{
  v3 = result[248];
  if (v3 >= 0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 31;
  }

  if ((v3 & 0x7F) == v4)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  v7 = result;
  if (8 * a2 != 8 * (v3 & 0x7F))
  {
    result = memmove(&result[8 * a2 + 8], &result[8 * a2], 8 * (v3 & 0x7F) - 8 * a2);
    LOBYTE(v3) = v7[248];
  }

  v7[248] = v3 + 1;
  *&v7[8 * a2] = *a3;
  return result;
}

void *std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,char const**,char const*,std::__identity,lsl::ConstCharStarCompare>(void *result, void *a2, unint64_t a3)
{
  if (a3)
  {
    do
    {
      v3 = a3 >> 1;
      v4 = &result[a3 >> 1];
      v5 = **v4;
      if (v5 < **a2)
      {
LABEL_8:
        result = v4 + 1;
        v3 = a3 + ~v3;
      }

      else
      {
        v6 = (*v4 + 1);
        v7 = (*a2 + 1);
        v8 = **a2;
        while (v8 && v8 >= v5)
        {
          if (v5)
          {
            v9 = *v6++;
            v5 = v9;
            v10 = *v7++;
            v8 = v10;
            if (v5 >= v10)
            {
              continue;
            }
          }

          goto LABEL_8;
        }
      }

      a3 = v3;
    }

    while (v3);
  }

  return result;
}

void *lsl::Vector<lsl::UUID>::Vector<lsl::OrderedSet<lsl::UUID,std::less<lsl::UUID>>::const_iterator>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v12 = *a2;
  v13[2] = *(a2 + 40);
  v13[3] = *(a2 + 56);
  v13[4] = *(a2 + 72);
  v13[5] = *(a2 + 88);
  v13[0] = *(a2 + 8);
  v13[1] = *(a2 + 24);
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 116);
  while (lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator<=>(&v12, a3))
  {
    v6 = v16 - 1;
    v7 = *(v13 + v6);
    v8 = *(&v14 + v6);
    lsl::Vector<dyld4::InterposeTupleAll>::reserve(a1, a1[2] + 1);
    v9 = a1[1];
    v10 = a1[2];
    a1[2] = v10 + 1;
    *(v9 + 16 * v10) = *(v7 + 16 * v8);
    lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator++(&v12);
  }

  return a1;
}

uint64_t **lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator++(uint64_t **result)
{
  v1 = *(result + 116);
  v2 = *result;
  if (*(result + 116))
  {
    v3 = *(v2 + 32);
    v4 = result + 13;
    ++*(result + (v1 - 1) + 104);
    if (v1 == v3)
    {
      v5 = *(v2 + 32);
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*(v4 + (v5 + ~i)) != (result[(v5 + ~i) + 1][31] & 0x7F))
          {
            break;
          }

          *(result + 116) = v5 + ~i;
        }
      }
    }

    else
    {
      v13 = *(result + 116);
      if (v13 != *(v2 + 32))
      {
        v14 = result + 1;
        do
        {
          v15 = v14[v13 - 1];
          if (v15[31] < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          v14[v13] = v15[*(v4 + v13 - 1) + 20];
          *(v4 + v13) = 0;
          LOBYTE(v13) = *(result + 116) + 1;
          *(result + 116) = v13;
        }

        while (*(v2 + 32) != v13);
      }
    }
  }

  else if (*(v2 + 32))
  {
    v7 = 0;
    v8 = *v2;
    v9 = result + 1;
    do
    {
      v9[v7] = v8;
      *(result + v7 + 104) = 0;
      v10 = *(result + 116);
      v11 = *(v2 + 32);
      if (v10 + 1 != v11)
      {
        v12 = v9[v10];
        if (v12[31] < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v8 = v12[20];
      }

      v7 = v10 + 1;
      *(result + 116) = v7;
    }

    while (v11 > v7);
  }

  return result;
}

uint64_t lsl::Vector<unsigned int>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    return lsl::Vector<unsigned int>::reserveExact(result, v2);
  }

  return result;
}

uint64_t lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator<=>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 116);
  v3 = *(a1 + 116);
  if (v2 >= v3)
  {
    v4 = *(a1 + 116);
  }

  else
  {
    v4 = *(a2 + 116);
  }

  if (v4)
  {
    v5 = (a1 + 104);
    v6 = (a2 + 104);
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      v10 = v7 >= v9;
      if (v7 != v9)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    if (v10)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
LABEL_8:
    v11 = v3 == v2;
    if (v3 < v2)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t lsl::Vector<unsigned int>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 4 * a2);
    if (result)
    {
LABEL_12:
      *(v3 + 24) = a2;
      return result;
    }

    result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 4 * a2);
    v4 = result;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = result;
      v8 = *(v3 + 8);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v6;
      }

      while (v6);
    }

    else if (!v5)
    {
      v10 = 0;
      goto LABEL_9;
    }

    result = lsl::Allocator::free(*v3, v5);
    v10 = *(v3 + 16);
LABEL_9:
    if (v10 >= a2)
    {
      v10 = a2;
    }

    *(v3 + 8) = v4;
    *(v3 + 16) = v10;
    goto LABEL_12;
  }

  return result;
}

uint64_t lsl::Vector<std::byte>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    return lsl::Vector<std::byte>::reserveExact(result, v2);
  }

  return result;
}

dyld4::FileManager *dyld4::FileManager::FileManager(dyld4::FileManager *this, lsl::Allocator::Pool **a2)
{
  *this = 0;
  *(this + 1) = a2;
  v4 = lsl::Allocator::aligned_alloc(a2, 8uLL, 0x28uLL);
  *v4 = 0;
  *(v4 + 1) = a2;
  *(v4 + 3) = 0;
  *(v4 + 32) = 0;
  *(this + 2) = v4;
  return this;
}

uint64_t dyld4::Atlas::Image::Image(uint64_t a1, uint64_t a2, dyld4::FileRecord *a3, atomic_uint **a4, uint64_t a5, _OWORD *a6)
{
  *a1 = a2;
  dyld4::FileRecord::FileRecord(a1 + 8, a3);
  v10 = *a4;
  *(a1 + 88) = *a4;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
  }

  *(a1 + 96) = *a6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a5;
  *(a1 + 183) = 0;
  return a1;
}

uint64_t *dyld4::Atlas::ProcessSnapshot::addImage(lsl::Allocator::Pool ***a1, void *a2)
{
  v2 = (a1 + 2);
  lsl::Allocator::makeUnique<dyld4::Atlas::Image,dyld4::Atlas::Image>(*a1, a2, &v4);
  lsl::OrderedSet<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>>::insert(v2, &v4, v5);
  return lsl::UniquePtr<dyld4::Atlas::Image>::~UniquePtr(&v4);
}

void dyld4::Atlas::Image::swap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 96) = v4;
    dyld4::Atlas::Mapper::Pointer<dyld3::MachOLoaded>::swap((a1 + 112), (a2 + 112));
    std::optional<unsigned long long>::swap[abi:nn200100]((a1 + 144), (a2 + 144));
    v5 = *(a1 + 88);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 88) = v5;
    v6 = *(a1 + 160);
    v7 = *(a1 + 168);
    v8 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v8;
    *(a2 + 160) = v6;
    *(a2 + 168) = v7;
    v9 = *(a1 + 176);
    *(a1 + 176) = *(a2 + 176);
    *(a2 + 176) = v9;
    dyld4::FileRecord::swap((a1 + 8), (a2 + 8));
    v10 = *(a1 + 184);
    *(a1 + 184) = *(a2 + 184);
    *(a2 + 184) = v10;
    v11 = *(a1 + 185);
    *(a1 + 185) = *(a2 + 185);
    *(a2 + 185) = v11;
    v12 = *(a1 + 186);
    *(a1 + 186) = *(a2 + 186);
    *(a2 + 186) = v12;
  }
}

uint64_t *std::optional<unsigned long long>::swap[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  if (*(result + 8) == *(a2 + 8))
  {
    if (*(result + 8))
    {
      v2 = *result;
      *result = *a2;
      *a2 = v2;
    }
  }

  else if (*(result + 8))
  {
    *a2 = *result;
    *(a2 + 8) = 1;
    if (*(result + 8) == 1)
    {
      *(result + 8) = 0;
    }
  }

  else
  {
    *result = *a2;
    *(result + 8) = 1;
    if (*(a2 + 8) == 1)
    {
      *(a2 + 8) = 0;
    }
  }

  return result;
}

void lsl::Allocator::makeUnique<dyld4::Atlas::Image,dyld4::Atlas::Image>(lsl::Allocator::Pool **a1@<X0>, void *a2@<X1>, lsl::Allocator::Pool **a3@<X8>)
{
  v5 = lsl::Allocator::aligned_alloc(a1, 8uLL, 0xC0uLL);
  *v5 = *a2;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0x1FFFFFFFFLL;
  *(v5 + 40) = 0;
  *(v5 + 82) = 1;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 183) = 0;
  *(v5 + 21) = 0;
  *(v5 + 22) = 0;
  *(v5 + 20) = 0;
  dyld4::Atlas::Image::swap(v5, a2);
  *a3 = v5;
}

uint64_t lsl::Vector<std::byte>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), a2);
    if ((result & 1) == 0)
    {
      result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, a2);
      v4 = result;
      v5 = *(v3 + 16);
      if (v5)
      {
        for (i = 0; i < v5; ++i)
        {
          *(result + i) = *(*(v3 + 8) + i);
          v5 = *(v3 + 16);
        }
      }

      v7 = *(v3 + 8);
      if (v7)
      {
        result = lsl::Allocator::free(*v3, v7);
        v5 = *(v3 + 16);
      }

      if (v5 >= a2)
      {
        v5 = a2;
      }

      *(v3 + 8) = v4;
      *(v3 + 16) = v5;
    }

    *(v3 + 24) = a2;
  }

  return result;
}

uint64_t dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned int>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  v9 = a2;
  do
  {
    result = lsl::Vector<std::byte>::reserve(a3, *(a3 + 16) + 1);
    v6 = *(&v9 + v4);
    v7 = *(a3 + 8);
    v8 = *(a3 + 16);
    *(a3 + 16) = v8 + 1;
    *(v7 + v8) = v6;
    ++v4;
  }

  while (v4 != 4);
  return result;
}

unsigned __int8 *lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[98];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 248) >= 0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 31;
  }

  if ((*(*&result[8 * v1] + 248) & 0x7F) == v4)
  {
    if (!result[98])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v3[v5] + 248) >= 0)
      {
        v7 = 15;
      }

      else
      {
        v7 = 31;
      }

      if ((*(v3[v5] + 248) & 0x7F) != v7)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (v1 != v5);
    if (!v6)
    {
LABEL_15:
      if (*(*v3 + 248) >= 0)
      {
        v8 = 15;
      }

      else
      {
        v8 = 31;
      }

      if ((*(*v3 + 248) & 0x7F) == v8)
      {
        v9 = lsl::Allocator::aligned_alloc(*(*result + 8), 0x100uLL, 0x100uLL);
        result = lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::NodeCore(v9, **v2);
        **v2 = result;
        if (v2[98] && (result = memmove(v2 + 89, v2 + 88, v2[98]), v2[98]))
        {
          result = memmove(v3 + 1, v3, 8 * v2[98]);
          LOBYTE(v1) = v2[98] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[88] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[98] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 88;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::splitChild(v3[v12], v11[v12], *(*v2 + 8));
        v14 = v3[v12];
        if (*(v14 + 248) < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 120);
        v17 = v2[v12 + 89];
        if (v17 > (*(v16 + 248) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 89] = v17 + (~*(v16 + 248) | 0x80);
          v19 = v3[v12];
          if (*(v19 + 248) < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 120);
        }

        ++v12;
      }

      while (v13 + 2 < v2[98]);
    }
  }

  return result;
}

uint64_t dyld4::Atlas::ProcessSnapshot::Serializer::emit<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v9 = a2;
  do
  {
    result = lsl::Vector<std::byte>::reserve(a3, *(a3 + 16) + 1);
    v6 = *(&v9 + v4);
    v7 = *(a3 + 8);
    v8 = *(a3 + 16);
    *(a3 + 16) = v8 + 1;
    *(v7 + v8) = v6;
    ++v4;
  }

  while (v4 != 8);
  return result;
}

uint64_t lsl::Allocator::AllocationMetadata::consumeFromNext(lsl::Allocator::AllocationMetadata *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  if ((v2 & 2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    return 0;
  }

  _X20 = this + a2 + 16;
  v8 = &_X20[-v3];
  v9 = (v5 & 0xFFFFFFFFFFFFFFFCLL) - v4;
  v10 = v9 - 16 - v8;
  if (v9 - 16 >= v8)
  {
    if (*(lsl::Allocator::AllocationMetadata::pool(this, 1) + 57) == 1)
    {
      __asm { STG             X20, [X20] }
    }

    v16 = *(this + 1);
    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    if ((v16 & 2) != 0)
    {
      v17 = 0;
    }

    lsl::Allocator::AllocationMetadata::AllocationMetadata(_X20, this, v10, *(v17 + 8) & 3, *(this + 1) & 3);
    return 1;
  }

  result = 0;
  if ((v5 & 2) == 0 && v8 == v9)
  {
    *(this + 1) = v5 | 1;
    *v5 = this;
    return 1;
  }

  return result;
}

char *lsl::emitPVLEUInt64(unint64_t a1, uint64_t a2)
{
  v10 = a1;
  v3 = 64 - __clz(a1);
  if (!a1)
  {
    v3 = 1;
  }

  if (v3 < 0x39u)
  {
    v8 = (((v3 + 6 - ((37 * (v3 + 6)) >> 8)) >> 1) + ((37 * (v3 + 6)) >> 8)) >> 2;
    v10 = (a1 << v8) | (1 << (v8 - 1));
    v6 = &v11 + 7;
    v7 = &v10 + v8;
  }

  else
  {
    lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a2 + 16) = v5 + 1;
    *(v4 + v5) = 0;
    v6 = &v11 + 6;
    v7 = &v11;
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(v6, &v10, v7, a2);
}

char *std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      lsl::Vector<std::byte>::reserve(a4, *(a4 + 16) + 1);
      v7 = *v5++;
      v8 = *(a4 + 8);
      v9 = *(a4 + 16);
      *(a4 + 16) = v9 + 1;
      *(v8 + v9) = v7;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t dyld4::Atlas::Image::uuid(dyld4::Atlas::Image *this)
{
  if ((*(this + 184) & 1) == 0)
  {
    memset(v5, 0, sizeof(v5));
    v2 = dyld4::Atlas::Image::ml(this);
    if (v2)
    {
      v3 = v2;
      if (dyld3::MachOFile::hasMachOMagic(v2))
      {
        if (mach_o::Header::getUuid(v3, v5))
        {
          *(this + 6) = *v5;
        }
      }
    }

    *(this + 184) = 1;
  }

  return this + 96;
}

char *dyld4::Atlas::Image::ml(dyld4::Atlas::Image *this)
{
  if (*(this + 186))
  {
    return 0;
  }

  v23[7] = v1;
  v23[8] = v2;
  result = *(this + 16);
  if (result)
  {
    return result;
  }

  v6 = (this + 88);
  v5 = *(this + 11);
  v7 = *(this + 20);
  if (v5 && *(v5 + 1))
  {
    goto LABEL_10;
  }

  dyld4::Atlas::Mapper::mapperForMachO((this + 8), *this, this + 96, *(this + 20), v23);
  if (v23 != v6)
  {
    v9 = *v6;
    *v6 = v23[0];
    v23[0] = v9;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = v23[0];
  if (v23[0])
  {
LABEL_8:
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v9, v8);
  }

LABEL_9:
  v5 = *v6;
  if (!*v6)
  {
LABEL_20:
    result = 0;
LABEL_21:
    *(this + 186) = 1;
    return result;
  }

LABEL_10:
  v10 = *(v5 + 1);
  if (!v10)
  {
    goto LABEL_20;
  }

  result = dyld4::Atlas::Mapper::map(*(v5 + 1), v7, 4096);
  v11 = *(this + 15);
  v12 = *(this + 16);
  *(this + 14) = v10;
  *(this + 15) = 4096;
  *(this + 16) = result;
  v13 = *(this + 136);
  *(this + 136) = v14;
  if (v12 && v13)
  {
    munmap((v12 & -vm_page_size), v11 + v12 - (v12 & -vm_page_size));
    result = *(this + 16);
  }

  if (!result)
  {
    goto LABEL_21;
  }

  v15 = *(result + 5);
  v16 = 28;
  if (*result == -17958193)
  {
    v16 = 32;
  }

  v17 = v16 + v15;
  if ((v16 + v15) > 0x1000)
  {
    v18 = *v6 ? *(*v6 + 1) : 0;
    result = dyld4::Atlas::Mapper::map(v18, v7, v17);
    v19 = *(this + 15);
    v20 = *(this + 16);
    *(this + 14) = v18;
    *(this + 15) = v17;
    *(this + 16) = result;
    v21 = *(this + 136);
    *(this + 136) = v22;
    if (v20)
    {
      if (v21)
      {
        munmap((v20 & -vm_page_size), v19 + v20 - (v20 & -vm_page_size));
        result = *(this + 16);
      }
    }

    if (!result)
    {
      goto LABEL_21;
    }
  }

  return result;
}

char *dyld4::Atlas::ProcessSnapshot::Serializer::emitMappedFileInfo(uint64_t a1, unint64_t a2, char *a3, dyld4::FileRecord *this, uint64_t a5)
{
  v10 = 0;
  do
  {
    v11 = a3[v10];
    if (a3[v10])
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 15;
    }

    ++v10;
  }

  while (!v12);
  v13 = 4 * (v11 != 0);
  if (dyld4::FileRecord::persistent(this))
  {
    v13 |= 1uLL;
  }

  else if (dyld4::FileRecord::getPath(this))
  {
    v13 |= 2uLL;
  }

  lsl::emitPVLEUInt64(v13, a5);
  result = lsl::emitPVLEUInt64(a2, a5);
  if ((v13 & 4) != 0)
  {
    result = std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v31, a3, a3 + 16, a5);
  }

  if (v13)
  {
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = dyld4::FileRecord::volume(this);
    if (v16)
    {
      do
      {
        v18 = 0;
        v19 = v16 >> 1;
        v20 = v15 + 16 * (v16 >> 1);
        while (1)
        {
          v21 = *(v20 + v18);
          v22 = *(v17 + v18);
          if (v21 < v22)
          {
            break;
          }

          if (v22 < v21 || v18++ == 15)
          {
            goto LABEL_24;
          }
        }

        v15 = v20 + 16;
        v19 = v16 + ~v19;
LABEL_24:
        v16 = v19;
      }

      while (v19);
    }

    if (v15 == *(a1 + 56) + 16 * *(a1 + 64))
    {
      dyld4::Atlas::ProcessSnapshot::Serializer::emitMappedFileInfo();
    }

    v24 = dyld4::FileRecord::volume(this);
    v25 = 0;
    do
    {
      v26 = *(v15 + v25);
      v27 = *(v24 + v25);
    }

    while (v26 == v27 && v25++ != 15);
    if (v26 != v27)
    {
      dyld4::Atlas::ProcessSnapshot::Serializer::emitMappedFileInfo();
    }

    lsl::emitPVLEUInt64(((v15 - *(a1 + 56)) >> 4), a5);
    v29 = dyld4::FileRecord::objectID(this);
    result = lsl::emitPVLEUInt64(v29, a5);
  }

  if ((v13 & 2) != 0)
  {
    Path = dyld4::FileRecord::getPath(this);
    return dyld4::Atlas::ProcessSnapshot::Serializer::emitStringRef(a1, Path, a5);
  }

  return result;
}

char *dyld4::Atlas::ProcessSnapshot::Serializer::emitStringRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v12 = 0;
  v7 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,char const**,char const*,std::__identity,lsl::ConstCharStarCompare>(v5, &v11, v6);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  if (v7 == &v8[v9])
  {
    v13 = 0;
    v7 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,char const**,char [4],std::__identity,lsl::ConstCharStarCompare>(v8, "???", v9);
  }

  return lsl::emitPVLEUInt64((*v7 - *(a1 + 120)), a3);
}

uint64_t lsl::CRC32c::CRC32c(uint64_t this)
{
  *this = &lsl::sCRC32cSW;
  *(this + 8) = -1;
  return this;
}

uint64_t lsl::CRC32c::operator()(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  result = (*(**a1 + 32))(*a1, a1[2], a2, a3);
  a1[2] = result;
  return result;
}

uint64_t lsl::CRC32cSW::checksum(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  for (result = a2; a4; --a4)
  {
    v5 = *a3++;
    result = lsl::CRC32cSW::sCRC32cTable[(v5 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t lsl::Allocator::free(uint64_t this, unint64_t a2)
{
  if (a2)
  {
    *(this + 16) += (a2 & 0xF0FFFFFFFFFFFFFFLL) - (*((a2 & 0xF0FFFFFFFFFFFFFFLL) - 8) & 0xFFFFFFFFFFFFFFFCLL);
    return lsl::Allocator::AllocationMetadata::deallocate(((a2 & 0xF0FFFFFFFFFFFFFFLL) - 16));
  }

  return this;
}

char *dyld4::Atlas::Mapper::map(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  if (v3)
  {
    return (v3 + a2 - *(a1[1] + 16));
  }

  v5 = a1[2];
  if (v5)
  {
    v6 = a1[1];
    v7 = 32 * v5;
    while (1)
    {
      v8 = *(v6 + 16);
      v9 = a2 - v8;
      if (a2 >= v8)
      {
        v10 = *(v6 + 8) + v8;
        if (v10 > a2)
        {
          break;
        }
      }

      v6 += 32;
      v7 -= 32;
      if (!v7)
      {
        return 0;
      }
    }

    v11 = *(v6 + 24);
    if (v11 == -1)
    {
      return (v9 + *v6);
    }

    else
    {
      if (a3 + a2 > v10)
      {
        dyld4::Atlas::Mapper::map();
      }

      v12 = *v6 + v9;
      v13 = v12 & -vm_page_size;
      v14 = v12 - v13;
      v15 = mmap(0, v12 - v13 + a3, 1, 2, v11, v13);
      if (v15 == -1)
      {
        return 0;
      }

      else
      {
        return &v15[v14];
      }
    }
  }

  return a2;
}

uint64_t lsl::Allocator::AllocationMetadata::deallocate(lsl::Allocator::AllocationMetadata *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    lsl::Allocator::AllocationMetadata::deallocate();
  }

  v2 = lsl::Allocator::AllocationMetadata::pool(this, 1);
  *(this + 1) &= 0xFFFFFFFFFFFFFFFCLL;

  return lsl::Allocator::AllocationMetadata::coalesce(this, v2);
}

uint64_t lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::lower_bound_index(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248) & 0x7F;
  if ((*(a1 + 248) & 0x7F) != 0)
  {
    v3 = a1;
    do
    {
      v4 = v2 >> 1;
      v5 = &v3[v2 >> 1];
      v7 = *v5;
      v6 = v5 + 1;
      v2 += ~(v2 >> 1);
      if (*(v7 + 160) < *(*a2 + 160))
      {
        v3 = v6;
      }

      else
      {
        v2 = v4;
      }
    }

    while (v2);
  }

  else
  {
    LODWORD(v3) = a1 + 8 * v2;
  }

  return ((v3 - a1) >> 3);
}

uint64_t lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::deallocate(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 248);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 8 * (v4 + 1);
    v6 = (a1 + 120);
    do
    {
      v7 = *v6++;
      lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::deallocate(v7, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return lsl::Allocator::free(a2, a1);
}

uint64_t *lsl::Vector<unsigned int>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (result[3] >= a2)
  {
    if (a2)
    {
      result[2] = a2;
      result[3] = a2;
      v4 = *result;
      v5 = v3[1];

      return lsl::Allocator::realloc(v4, v5, 4 * a2);
    }

    else
    {
      v7 = result + 1;
      v6 = result[1];
      if (v6)
      {
        result = lsl::Allocator::free(*result, v6);
      }

      *v7 = 0;
      v3[2] = 0;
      v3[3] = 0;
    }
  }

  else
  {
    result = lsl::Vector<unsigned int>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

void *PropertyList::PropertyList(void *result, uint64_t a2)
{
  result[2] = 0x1FFFFFFFFFFFFFFELL;
  result[3] = a2;
  *result = a2;
  result[1] = &off_A41D0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = a2;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  return result;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Flags<long long>>(uint64_t a1, const void *a2, size_t a3)
{
  v5 = a1 + 48;
  v6 = *(a1 + 48);
  v7 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x18uLL);
  PropertyList::String::String(v7, v6, a2, a3);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v5 - 32, *(v5 - 16) + 1);
  v8 = *(v5 - 24);
  v9 = *(v5 - 16);
  *(v5 - 16) = v9 + 1;
  *(v8 + 8 * v9) = v7;
  v10 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x18uLL);
  *PropertyList::Integer::Integer(v10, v6, 0) = &off_A3310;
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v5, *(v5 + 16) + 1);
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  *(v5 + 16) = v12 + 1;
  *(v11 + 8 * v12) = v10;
  return v10;
}

lsl::Allocator::Pool *dyld4::ExternallyViewableState::gatherAtlasProcessInfo(dyld4::ExternallyViewableState *this, _DWORD *a2, const DyldSharedCache *a3, PropertyList::Dictionary *a4)
{
  v17 = *(PropertyList::Dictionary::addObjectForKey<PropertyList::Flags<long long>>(a4, "flag", 4uLL) + 8);
  v16[1] = &off_A3310;
  PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(a4, "time", 4uLL, this + 3);
  v18[0].n128_u32[0] = getpid();
  PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int>(a4, "proc", 4uLL, v18);
  PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned char const&>(a4, "stat", 4uLL, this + 16);
  v18[0].n128_u32[0] = 1;
  PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int>(a4, "init", 4uLL, v18);
  v8 = *(this + 1);
  if (v8)
  {
    v18[0].n128_u64[0] = mach_o::Platform::value((*(v8 + 8) + 112));
    v9 = v18;
  }

  else
  {
    v10 = mach_o::Header::isMachO(a2, 0x1CuLL);
    mach_o::Header::platformAndVersions(v10, v18);
    v16[0] = mach_o::Platform::value(v18);
    v9 = v16;
  }

  PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(a4, "plat", 4uLL, v9);
  if (vm_page_size == 4096)
  {
    *(&v17 + 1) |= 1uLL;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = DyldSharedCache::dynamicRegion(a3);
  v16[0] = a3;
  v12 = PropertyList::Dictionary::addObjectForKey<PropertyList::Dictionary>(a4, "dsc1", 4uLL);
  v18[0].n128_u64[0] = *(a3 + 18);
  v13 = PropertyList::Dictionary::addObjectForKey<PropertyList::Bitmap,unsigned long>(v12, "bitm", 4uLL, v18);
  v18[0].n128_u64[0] = DyldSharedCache::DynamicRegion::cachePath(v11);
  PropertyList::Dictionary::addObjectForKey<PropertyList::String,char const*&>(v12, "file", 4uLL, v18);
  PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(v12, "addr", 4uLL, v16);
  v18[0] = 0uLL;
  DyldSharedCache::getUUID(a3, v18);
  PropertyList::Dictionary::addObjectForKey<PropertyList::UUID,unsigned char (&)[16]>(v12, "uuid", 4uLL, v18);
  v14 = *(this + 4);
  if (*(v14 + 344))
  {
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(v12, "aadr", 4uLL, (v14 + 344));
    PropertyList::Dictionary::addObjectForKey<PropertyList::UUID,unsigned char (&)[16]>(v12, "aadr", 4uLL, (*(this + 4) + 352));
  }

  return v13;
}

void *PropertyList::Array::Array(void *result, uint64_t a2)
{
  *result = &off_A41B0;
  result[1] = 0x17FFFFFFFFFFFFFELL;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void mach_o::Header::platformAndVersions(mach_o::Header *this@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4802000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  v12 = 0;
  *&v3 = 0x1000000010000;
  *(&v3 + 1) = 0x1000000010000;
  v13 = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK6mach_o6Header19platformAndVersionsEv_block_invoke;
  v5[3] = &unk_A4F30;
  v5[4] = &v6;
  mach_o::Header::forEachPlatformLoadCommand(this, v5);
  v4 = v7;
  *a2 = v7[5];
  *(a2 + 8) = *(v4 + 12);
  *(a2 + 16) = *(v4 + 7);
  _Block_object_dispose(&v6, 8);
}

void mach_o::Header::forEachPlatformLoadCommand(mach_o::Error *a1, uint64_t a2)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header26forEachPlatformLoadCommandEU13block_pointerFvNS_8PlatformENS_9Version32ES2_E_block_invoke;
  v3[3] = &unk_A50E8;
  v3[5] = &v4;
  v3[6] = a1;
  v3[4] = a2;
  mach_o::Header::forEachLoadCommand(a1, v3, &v8);
  mach_o::Error::~Error(&v8);
  if ((v5[3] & 1) == 0 && (gHeaderAddImplicitPlatform & 1) == 0 && *(a1 + 3) == 2)
  {
    mach_o::Header::hasLoadCommand(a1, 14);
  }

  _Block_object_dispose(&v4, 8);
}

void *PropertyList::Integer::Integer(void *result, uint64_t a2, uint64_t a3)
{
  *result = &off_A4150;
  result[1] = 0xFFFFFFFFFFFFFFELL;
  result[2] = a3;
  return result;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::Integer::Integer(v12, v8, *a4);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

pid_t getpid(void)
{
  result = _current_pid;
  if (_current_pid <= 0)
  {
    return cerror_nocancel(mac_syscall(SYS_getpid));
  }

  return result;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int>(uint64_t a1, const void *a2, size_t a3, int *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::Integer::Integer(v12, v8, *a4);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void dyld4::LibSystemHelpersWrapper::setUpThreadLocals(dyld4::LibSystemHelpersWrapper *this@<X0>, const DyldSharedCache *a2@<X1>, const mach_o::Header *a3@<X2>, mach_o::Error *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v13 = lsl::MemoryManager::memoryManager(this);
  v14 = *(v13 + 6);
  if (v14 && lsl::ProtectedStack::onStackInCurrentFrame(v14, v6, v7, v8, v9, v10, v11, v12, v33))
  {
    v21 = *(v13 + 6);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 0x40000000;
    v37[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper17setUpThreadLocalsEPK15DyldSharedCachePKN6mach_o6HeaderEEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESE__block_invoke;
    v37[3] = &__block_descriptor_tmp_164;
    v37[4] = this;
    v37[5] = &v36;
    v37[6] = &v35;
    v22 = lsl::ProtectedStack::withNestedRegularStack(v21, v37, v15, v16, v17, v18, v19, v20, v34);
    if (!v22)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (*(v13 + 33) != 1)
  {
LABEL_9:
    (*(**this + 192))(v37);
    if (v37[0])
    {
      v23 = mach_o::Error::message(v37);
      v24 = _platform_strlen(v23);
      v22 = (*(**this + 8))(*this, v24 + 1);
      v25 = mach_o::Error::message(v37);
      memmove(v22, v25, v24 + 1);
    }

    else
    {
      v22 = 0;
    }

    mach_o::Error::~Error(v37);
    if (!v22)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
  {
    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
    {
      goto LABEL_9;
    }

    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v26 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v26 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v27 = MEMORY[0xFFFFFC0D8];
          if (v27 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            (*(**this + 192))(v37);
            if (v37[0])
            {
              v28 = mach_o::Error::message(v37);
              v29 = _platform_strlen(v28);
              v22 = (*(**this + 8))(*this, v29 + 1);
              v30 = mach_o::Error::message(v37);
              memmove(v22, v30, v29 + 1);
            }

            else
            {
              v22 = 0;
            }

            mach_o::Error::~Error(v37);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v31 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v31 & 0xFE) == 2)
                {
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v32 = MEMORY[0xFFFFFC0D0];
                  if (v32 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    if (!v22)
                    {
LABEL_26:
                      *a4 = 0;
                      return;
                    }

LABEL_13:
                    mach_o::Error::Error(a4, "%s", v22);
                    dyld4::LibSystemHelpersWrapper::free(this, v22);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
}

double dyld4::RuntimeState::initialize(dyld4::RuntimeState *this)
{
  *(this + 1114) = 1;
  v17 = -1;
  v2 = dyld4::LibSystemHelpersWrapper::pthread_key_create_free((this + 160), &v17);
  *(this + 137) = v17;
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 5);
    v5 = 8 * v3;
    v6 = v4;
    do
    {
      if ((*(*v6 + 2) & 0x1000) != 0)
      {
        v7 = *v6;
        v8 = dyld4::Loader::analyzer(*v6, this);
        dyld4::LibSystemHelpersWrapper::setUpThreadLocals((this + 160), *(*(this + 1) + 368), v8, &v15);
        if (v15.n128_u64[0])
        {
          v12 = dyld4::Loader::path(v7, this);
          v13 = mach_o::Error::message(&v15);
          mach_o::Error::Error(v16, "failed to set up thread local variables for '%s': %s", v12, v13);
          v14 = mach_o::Error::message(v16);
          dyld4::halt(v14, 0);
        }

        mach_o::Error::~Error(&v15);
      }

      ++v6;
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v9 = *(this + 14) + 40;
  v15.n128_u64[0] = this;
  v15.n128_u64[1] = v9;
  v10 = lsl::MemoryManager::memoryManager(v2);
  *&result = lsl::MemoryManager::adoptLock(v10, &v15).n128_u64[0];
  return result;
}

__n128 lsl::MemoryManager::adoptLock(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

const os_unfair_lock *dyld4::RuntimeState::setObjCNotifiers(lsl::MemoryManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a2;
  v34 = a5;
  v35 = a4;
  v10 = lsl::MemoryManager::memoryManager(a1);
  v11 = *(v10 + 6);
  if (v11 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v11))
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v18 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v18 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v19 = MEMORY[0xFFFFFC0D0];
          if (v19 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v20 = *(v10 + 6);
            v38 = _NSConcreteStackBlock;
            v39 = 0x40000000;
            v40 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeState16setObjCNotifiersENS2_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS4_IPFvS9_PvS9_PKvEEENS4_IPFvPK29_dyld_objc_notify_mapped_infoEEENS4_IPFvjSL_U13block_pointerFvjEEEEE3__0EEvT__block_invoke;
            v41 = &__block_descriptor_tmp_200;
            v42 = a1;
            v43 = &v37;
            v44 = &v36;
            v45 = &v35;
            v46 = &v34;
            lsl::ProtectedStack::withNestedProtectedStack(v20, &v38, v12, v13, v14, v15, v16, v17, v33);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v21 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v21 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D8];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v23 = MEMORY[0xFFFFFC0D8];
                  if (v23 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_31:
    __break(1u);
    JUMPOUT(0x11DCCLL);
  }

  if (*(v10 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      *(a1 + 89) = a2;
      *(a1 + 87) = a3;
      *(a1 + 88) = a4;
      *(a1 + 86) = a5;
      v32 = *(a1 + 14);
      v38 = _NSConcreteStackBlock;
      v39 = 0x40000000;
      v40 = ___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke;
      v41 = &__block_descriptor_tmp_207;
      v42 = a1;
      return dyld4::RuntimeLocks::withLoadersReadLock(v32, &v38);
    }

    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_31;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    v24 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v24 & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v25 = MEMORY[0xFFFFFC0D0];
    if (v25 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_31;
    }

    *(a1 + 89) = a2;
    *(a1 + 87) = a3;
    *(a1 + 88) = a4;
    *(a1 + 86) = a5;
    v26 = *(a1 + 14);
    v38 = _NSConcreteStackBlock;
    v39 = 0x40000000;
    v40 = ___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke;
    v41 = &__block_descriptor_tmp_207;
    v42 = a1;
    dyld4::RuntimeLocks::withLoadersReadLock(v26, &v38);
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_31;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    v27 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v27 & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    result = MEMORY[0xFFFFFC0D8];
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v28 = MEMORY[0xFFFFFC0D8];
    if (v28 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_31;
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v10, &v38);
    v29 = *(v10 + 3);
    if (!v29)
    {
      lsl::MemoryManager::writeProtect(v10, 0);
      v29 = *(v10 + 3);
    }

    *(v10 + 3) = v29 + 1;
    lsl::Lock::unlock(v38);
    *(a1 + 89) = a2;
    *(a1 + 87) = a3;
    *(a1 + 88) = a4;
    *(a1 + 86) = a5;
    v30 = *(a1 + 14);
    v38 = _NSConcreteStackBlock;
    v39 = 0x40000000;
    v40 = ___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke;
    v41 = &__block_descriptor_tmp_207;
    v42 = a1;
    dyld4::RuntimeLocks::withLoadersReadLock(v30, &v38);
    lsl::MemoryManager::lockGuard(v10, &v38);
    v31 = *(v10 + 3) - 1;
    *(v10 + 3) = v31;
    if (!v31)
    {
      lsl::MemoryManager::writeProtect(v10, 1);
    }

    return lsl::Lock::unlock(v38);
  }

  return result;
}

void dyld4::APIs::_dyld_objc_register_callbacks(dyld4::RuntimeState *a1, void *a2)
{
  if (*(*(a1 + 1) + 324) == 1)
  {
    v4 = a2[31];
    dyld4::RuntimeState::log(a1, "_dyld_objc_register_callbacks(%lu, %p, %p, %p, %p)\n", *a2, a2[1], a2[2], v4, a2[4]);
  }

  v5 = *a2;
  if (*a2 != 4)
  {
    switch(v5)
    {
      case 3:
        v7 = "_dyld_objc_register_callbacks v3 is no longer supported";
        break;
      case 2:
        v7 = "_dyld_objc_register_callbacks v2 is no longer supported";
        break;
      case 1:
        v7 = "_dyld_objc_register_callbacks v1 is no longer supported";
        break;
      default:
        v7 = "_dyld_objc_register_callbacks unknown version";
        break;
    }

    dyld4::halt(v7, 0);
  }

  dyld4::RuntimeState::setObjCNotifiers(a1, a2[3], a2[4], a2[2], a2[1]);
  v6 = *(a1 + 122);
  if (v6)
  {

    dyld4::PrebuiltLoaderSet::logDuplicateObjCClasses(v6, a1);
  }
}

void ___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke(unint64_t *a1)
{
  v1 = a1[4];
  if (*(v1 + 87) && *(v1 + 40))
  {
    a1 = dyld4::RuntimeState::setDyldPatchedObjCClasses(a1[4]);
    v2 = *(v1 + 40);
    if (v2)
    {
      v3 = (*(v1 + 39) + 16);
      v4 = 32 * v2;
      do
      {
        v78 = *(v3 - 1);
        v74 = v3[1];
        a1 = dyld4::ReadOnlyCallback<void (*)(mach_header const*,void *,mach_header const*,void const*)>::operator()<mach_header const* const&,void *,mach_header const* const&,void const*>((v1 + 696), v3 - 2, &v78, v3, &v74);
        v3 += 4;
        v4 -= 32;
      }

      while (v4);
    }

    if (*(*(v1 + 1) + 325))
    {
      dyld4::RuntimeState::log(v1, "objc-patch-class-notifier called with %lld patches:\n", *(v1 + 40));
    }

    *(v1 + 40) = 0;
  }

  v5 = lsl::MemoryManager::memoryManager(a1);
  v6 = v5[33];
  v7 = 8 * *(v1 + 6);
  __chkstk_darwin(v5, v8, v9, v10, v11, v12, v13, v14, v65);
  __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22, v65);
  __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30, v65);
  v78 = 0;
  v79 = &v78;
  v80 = 0x4002000000;
  v81 = __Block_byref_object_copy__201;
  v82 = __Block_byref_object_dispose__202;
  v83 = &v65 - (v34 & 0xFFFFFFFFFFFFFFE0 | 0x10);
  v84 = v35;
  v85 = 0;
  v66 = v35;
  if (v35)
  {
    v68 = v33;
    v67 = v32;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = *(v1 + 5);
    HIDWORD(v65) = 2 * v31;
    LODWORD(v65) = (2 * (v31 & 1)) | 4;
    v40 = v39;
    do
    {
      v41 = *v40;
      Address = dyld4::Loader::loadAddress(*v40, v1);
      if ((*(v41 + 2) & 4) != 0)
      {
        v43 = Address;
        DoesObjCFixups = dyld4::Loader::dyldDoesObjCFixups(v41);
        v45 = dyld4::Loader::path(v41, v1);
        v46 = v66;
        if (v38 >= v66)
        {
          ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
        }

        v68[v38] = v45;
        if (v37 >= v46)
        {
          ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
        }

        v67[v37] = v43;
        v47 = v1;
        v48 = v79;
        v74 = v43;
        v49 = v47;
        v75 = dyld4::Loader::path(v41, v47);
        v76 = v41;
        v50 = dyld4::Loader::dyldDoesObjCFixups(v41);
        v51 = HIDWORD(v65);
        if (DoesObjCFixups)
        {
          v51 = v65;
        }

        v77 = v51 | v50;
        dyld3::Array<_dyld_objc_notify_mapped_info>::push_back(v48 + 5, &v74);
        hasConstantSegmentsToProtect = dyld4::Loader::hasConstantSegmentsToProtect(v41);
        v53 = *(v41 + 2);
        v1 = v49;
        if (hasConstantSegmentsToProtect && (v53 & 0x80) != 0)
        {
          dyld4::Loader::makeSegmentsReadWrite(v41, v49);
          v53 = *(v41 + 2);
        }

        ++v38;
        ++v37;
        v36 |= (v53 & 2) >> 1;
      }

      ++v40;
      ++v39;
      v7 -= 8;
    }

    while (v7);
    v54 = v67;
    v55 = v68;
    if (v37)
    {
      LOBYTE(v75) = 0;
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 0x40000000;
      v71[2] = ___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke_203;
      v71[3] = &unk_A1300;
      v72 = v36 & 1;
      v71[4] = &v78;
      v71[5] = &v74;
      v73 = v71;
      v74 = v1;
      v56 = v79[7];
      if (!v56)
      {
        ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
      }

      v70 = v79[5];
      v69 = v56;
      dyld4::ReadOnlyCallback<void (*)(unsigned int,_dyld_objc_notify_mapped_info const*,void({block_pointer}))>::operator()<unsigned int &,_dyld_objc_notify_mapped_info const*&,void({block_pointer}&)>((v1 + 688), &v69, &v70, &v73);
      if (*(*(v1 + 1) + 325) == 1)
      {
        dyld4::RuntimeState::log(v1, "objc-mapped-notifier called with %lld images:\n", v37);
        do
        {
          if (!v38)
          {
            ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
          }

          v58 = *v54++;
          v57 = v58;
          v59 = *v55++;
          dyld4::RuntimeState::log(v1, " objc-mapped: %p %s\n", v57, v59);
          --v38;
          --v37;
        }

        while (v37);
      }

      v60 = *(v1 + 6);
      if (v60)
      {
        v61 = *(v1 + 5);
        v62 = 8 * v60;
        v63 = v61;
        do
        {
          if ((*(*v63 + 2) & 4) != 0)
          {
            v64 = *v63;
            if (dyld4::Loader::hasConstantSegmentsToProtect(*v63) && (*(v64 + 2) & 0x80) != 0)
            {
              dyld4::Loader::makeSegmentsReadOnly(v64, v1);
            }
          }

          ++v63;
          ++v61;
          v62 -= 8;
        }

        while (v62);
      }

      if (v75 == 1)
      {
        dyld4::ProcessConfig::DyldCache::makeDataConstWritable((*(v74 + 1) + 368), *(v74 + 1) + 320, *(v74 + 1), 0);
      }
    }
  }

  _Block_object_dispose(&v78, 8);
}

uint64_t dyld4::Loader::dyldDoesObjCFixups(dyld4::Loader *this)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::dyldDoesObjCFixups();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::dyldDoesObjCFixups(this);
  }

  else
  {

    return dyld4::JustInTimeLoader::dyldDoesObjCFixups(this);
  }
}

BOOL dyld4::PrebuiltLoader::dyldDoesObjCFixups(dyld4::PrebuiltLoader *this)
{
  v1 = *(this + 14);
  if (this && v1)
  {
    return *(this + v1) != 0;
  }

  else
  {
    return (*(this + 2) >> 1) & 1;
  }
}

void dyld4::Loader::makeSegmentsReadWrite(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  Address = dyld4::Loader::loadAddress(this, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld46Loader21makeSegmentsReadWriteERNS_12RuntimeStateE_block_invoke;
  v5[3] = &__block_descriptor_tmp_128_0;
  v5[4] = this;
  v5[5] = dyld3::MachOLoaded::getSlide(Address);
  v5[6] = a2;
  mach_o::Header::forEachSegment(Address, v5);
}

uint64_t dyld4::RuntimeState::cachedDylibLoadAddress(dyld4::RuntimeState *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (*(v2 + 532) <= a2)
  {
    dyld4::RuntimeState::cachedDylibLoadAddress();
  }

  v4 = 0;
  v5 = 0;
  return DyldSharedCache::getIndexedImageEntry(*(v2 + 368), a2, &v5, &v4);
}

uint64_t DyldSharedCache::getIndexedImageEntry(DyldSharedCache *this, int a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(this + 4);
  v5 = 24;
  if (v4 > 0x1C3)
  {
    v5 = 448;
  }

  v6 = (this + 32 * a2 + *(this + v5));
  *a3 = v6[1];
  *a4 = v6[2];
  return this + *v6 - *(this + v4);
}

BOOL lsl::ProtectedStack::onStackInAnyFrameInThisThread(lsl::ProtectedStack *this)
{
  if (*this)
  {
    v1 = *this;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 3);
  }

  return v1 != v2 && *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) == *(this + 5);
}

uint64_t dyld4::RuntimeLocks::withLoadersReadLock(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    (*(*v4 + 96))(v4, a1 + 2, 0);
    (*(a2 + 16))(a2);
    v5 = *(**a1 + 104);

    return v5();
  }

  else
  {
    v7 = *(a2 + 16);

    return v7(a2);
  }
}

uint64_t dyld4::Loader::path(dyld4::Loader *this, const dyld4::RuntimeState *a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::path();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::path(this, a2);
  }

  else
  {

    return dyld4::JustInTimeLoader::path(this, a2);
  }
}

uint64_t dyld4::PrebuiltLoader::path(dyld4::PrebuiltLoader *this, const dyld4::RuntimeState *a2)
{
  if ((*(this + 2) & 2) == 0)
  {
    v2 = *(this + 3) & 0x7FFF;
    if (*(a2 + 48) > v2)
    {
      return *(*(a2 + 47) + 8 * v2);
    }
  }

  if (*(this + 16))
  {
    return this + *(this + 16);
  }

  return 0;
}

const void *dyld4::APIs::_dyld_get_prog_image_header(dyld4::APIs *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 16);
  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_prog_image_header() => %p\n", v2);
  }

  return v2;
}

uint64_t dyld4::PrebuiltLoaderSet::swiftTypeProtocolTable(dyld4::PrebuiltLoaderSet *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

uint64_t dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::find(vm_address_t *a1, uint64_t a2)
{
  v4 = a1[12];
  v5 = (a1[4] - 1) & dyld4::HashTypeConformanceKey::hash(a2);
  v6 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](a1 + 2, v5);
  if (v6 == -1)
  {
    return a1[7] + 32 * a1[9];
  }

  for (i = 1; ; ++i)
  {
    v8 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[](a1 + 7, v6);
    v9 = a1[12];
    if (dyld4::EqualTypeConformanceKey::equal(v8, a2))
    {
      break;
    }

    v5 = (a1[4] - 1) & (v5 + i);
    v6 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](a1 + 2, v5);
    if (v6 == -1)
    {
      return a1[7] + 32 * a1[9];
    }
  }

  return dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[](a1 + 7, v6);
}

unint64_t dyld4::HashTypeConformanceKey::hash(uint64_t a1)
{
  v5 = dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset(a1) & 0xFFF;
  v4 = dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset((a1 + 8)) & 0xFFF;
  v2 = murmurHash(&v5, 8, 0);
  return murmurHash(&v4, 8, 0) ^ v2;
}

unint64_t *dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(unint64_t *this, uint64_t a2)
{
  v2 = __ROR8__(a2, 56) & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
  *this = v2;
  v3 = v2 >> 8;
  v4 = (v2 >> 8) & 0x3FFFFFFFFFFFFFLL;
  v5 = v3 | 0xC0000000000000;
  if ((a2 & 0x20000000000000) == 0)
  {
    v5 = v4;
  }

  if ((v5 | a2 & 0xFF00000000000000) != a2)
  {
    dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef();
  }

  return this;
}

unint64_t dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset(dyld4::PrebuiltLoader::BindTargetRef *this)
{
  v1 = *this;
  v2 = (*this >> 24) | 0xFFFFC000000000;
  if ((*this & 0x2000000000000000) == 0)
  {
    v2 = (*this >> 24) & 0x3FFFFFFFFFLL;
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFLL | (BYTE2(*this) << 56);
  v4 = (v1 >> 8) | 0xC0000000000000;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = (v1 >> 8) & 0x3FFFFFFFFFFFFFLL;
  }

  v5 = v4 | (v1 << 56);
  if (*this >> 62 == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](vm_address_t *a1, vm_address_t a2)
{
  v4 = a1[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && a1[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(a1, a2 + 1);
    }

    a1[2] = v5;
  }

  return *a1 + 8 * a2;
}

BOOL dyld4::EqualTypeConformanceKey::equal(uint64_t a1, uint64_t a2)
{
  v4 = dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset(a1);
  if (((dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset(a2) ^ v4) & 0xFFF) != 0)
  {
    return 0;
  }

  v6 = dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset((a1 + 8));
  return ((dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset((a2 + 8)) ^ v6) & 0xFFFLL) == 0;
}

uint64_t dyld4::PrebuiltLoaderSet::swiftMetadataProtocolTable(dyld4::PrebuiltLoaderSet *this)
{
  v1 = *(this + 17);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

uint64_t dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[](vm_address_t *a1, vm_address_t a2)
{
  v4 = a1[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && a1[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::growTo(a1, a2 + 1);
    }

    a1[2] = v5;
  }

  return *a1 + 32 * a2;
}

uint64_t dyld4::APIs::_NSGetExecutablePath(dyld4::APIs *this, char *a2, unsigned int *a3)
{
  v5 = *(this + 1);
  if (*(v5 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_NSGetExecutablePath(%p, %p)\n", a2, a3);
    v5 = *(this + 1);
  }

  v7 = *(v5 + 32);
  if (*(v5 + 112) == &mach_o::PlatformInfo_macOS::singleton && !*(v5 + 120))
  {
    v7 = *(v5 + 40);
  }

  v8 = _platform_strlen(v7);
  v9 = *a3;
  if (v8 + 1 <= v9)
  {
    strlcpy(a2, v7, v9);
    return 0;
  }

  else
  {
    *a3 = v8 + 1;
    return 0xFFFFFFFFLL;
  }
}

uint64_t dyld4::APIs::findImageContaining(dyld4::APIs *this, const void *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 14);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN5dyld44APIs19findImageContainingEPKv_block_invoke;
  v5[3] = &unk_A2338;
  v5[5] = this;
  v5[6] = a2;
  v5[4] = &v6;
  dyld4::RuntimeLocks::withLoadersReadLock(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t dyld4::Loader::contains(dyld4::Loader *this, dyld4::RuntimeState *a2, char *a3, const void **a4, unint64_t *a5, unsigned __int8 *a6)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::contains();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::contains(this, a2, a3, a4, a5, a6);
  }

  else
  {

    return dyld4::JustInTimeLoader::contains(this, a2, a3, a4, a5, a6);
  }
}

uint64_t ___ZN5dyld44APIs19findImageContainingEPKv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 6);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 5);
    v5 = 8 * v2;
    v6 = v4;
    while (1)
    {
      v7 = *v6;
      v10 = 0;
      v11 = 0;
      v9 = 0;
      v8 = v7;
      result = dyld4::Loader::contains(v7, v1, *(v3 + 48), &v11, &v10, &v9);
      if (result)
      {
        break;
      }

      ++v6;
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }

    *(*(*(v3 + 32) + 8) + 24) = v8;
  }

  return result;
}

uint64_t dyld4::PrebuiltLoader::contains(dyld4::PrebuiltLoader *this, dyld4::RuntimeState *a2, char *a3, const void **a4, unint64_t *a5, unsigned __int8 *a6)
{
  Address = dyld4::PrebuiltLoader::loadAddress(this, a2);
  if (Address > a3)
  {
    return 0;
  }

  v12 = *(this + 22);
  if (v12 < 0x10)
  {
    return 0;
  }

  v13 = &a3[-Address];
  v14 = this + *(this + 23);
  v15 = 16 * (v12 >> 4);
  while (1)
  {
    v16 = *v14 & 0x7FFFFFFFFFFFFFFLL;
    if (v13 >= v16)
    {
      v17 = *(v14 + 3);
      if (v13 < v16 + v17)
      {
        break;
      }
    }

    v14 += 16;
    v15 -= 16;
    if (!v15)
    {
      return 0;
    }
  }

  *a4 = (Address + v16);
  *a5 = v17;
  *a6 = (*v14 >> 59) & 7;
  return 1;
}

void os_unfair_lock_assert_not_owner(const os_unfair_lock *lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  os_unfair_lock_opaque = lock->_os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque | 1) == v1)
  {
    os_unfair_lock_assert_not_owner_cold_1(os_unfair_lock_opaque);
  }
}

void os_unfair_lock_assert_owner(const os_unfair_lock *lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  os_unfair_lock_opaque = lock->_os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque | 1) != v1)
  {
    os_unfair_lock_assert_owner_cold_1(os_unfair_lock_opaque);
  }
}

void dyld4::halt(char *__source, char **a2)
{
  strlcpy(dyld4::error_string, __source, 0x400uLL);
  qword_A82F8 = dyld4::error_string;
  dyld4::console("%s\n", v4, __source);
  dyld4::setExternallyViewableStateToTerminated(dyld4::error_string, v5);
  v12 = 1;
  v14 = 0;
  v13 = 0;
  if (a2)
  {
    v7 = *a2;
    if (*a2 == &dword_4 || v7 == &dword_0 + 1)
    {
      LODWORD(v13) = 1;
    }

    v8 = a2[2];
    v6 = 20;
    if (v8)
    {
      HIDWORD(v13) = 20;
      v6 = strlcpy(v15, v8, 0x7ECuLL) + 21;
    }

    v9 = a2[1];
    if (v9)
    {
      LODWORD(v14) = v6;
      v6 = v6 + strlcpy(&v12 + v6, v9, 2048 - v6) + 1;
    }

    v10 = a2[3];
    if (v10)
    {
      HIDWORD(v14) = v6;
      v6 = v6 + strlcpy(&v12 + v6, v10, 2048 - v6) + 1;
    }
  }

  else
  {
    v6 = 20;
    v7 = (&dword_8 + 1);
  }

  strlcpy(__dst, __source, 0x400uLL);
  abort_with_payload(&dword_4 + 2, v7, &v12, v6, __dst, 0);
}

uint64_t dyld4::APIs::_dyld_image_count(dyld4::APIs *this)
{
  v1 = *(this + 12);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_image_count() => %d\n", *(this + 12));
  }

  return v1;
}

uint64_t dyld4::APIs::_dyld_get_image_header(dyld4::APIs *this, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(this + 14);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN5dyld44APIs22_dyld_get_image_headerEj_block_invoke;
  v7[3] = &unk_A20F8;
  v8 = a2;
  v7[4] = &v9;
  v7[5] = this;
  dyld4::RuntimeLocks::withLoadersReadLock(v4, v7);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_image_header(%u) => %p\n", a2, v10[3]);
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN5dyld44APIs22_dyld_get_image_headerEj_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  if (*(v1 + 6) > v2)
  {
    v3 = result;
    result = dyld4::Loader::loadAddress(*(*(v1 + 5) + 8 * v2), v1);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t dyld4::APIs::dyld_shared_cache_some_image_overridden(dyld4::APIs *this)
{
  v1 = *(this + 1110);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_shared_cache_some_image_overridden() => %d\n", *(this + 1110));
  }

  return v1;
}

char *dyld4::APIs::dyld_image_path_containing_address(dyld4::APIs *this, char *a2)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  dyld4::APIs::findImageMappedAt(this, a2, &v7, &v6, &v5, 0, 0, 0, 0);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_image_path_containing_address(%p) => '%s'\n", a2, v5);
  }

  return v5;
}

BOOL dyld4::APIs::_dyld_get_shared_cache_uuid(dyld4::APIs *this, __n128 *a2)
{
  v3 = *(this + 1);
  if (*(v3 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_shared_cache_uuid(%p)\n", a2);
    v3 = *(this + 1);
  }

  v5 = *(v3 + 368);
  if (v5)
  {
    DyldSharedCache::getUUID(*(v3 + 368), a2);
  }

  return v5 != 0;
}

uint64_t dyld4::APIs::_dyld_register_func_for_add_image(dyld4::RuntimeState *a1, const void *a2)
{
  if (*(*(a1 + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(a1, "_dyld_register_func_for_add_image(%p)\n", a2);
  }

  v4 = *(a1 + 14);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 0x40000000;
  v33[2] = ___ZN5dyld44APIs33_dyld_register_func_for_add_imageENS_16ReadOnlyCallbackIPFvPK11mach_headerlEEE_block_invoke;
  v33[3] = &__block_descriptor_tmp_35;
  v33[4] = a1;
  v33[5] = a2;
  dyld4::RuntimeLocks::withLoadersReadLock(v4, v33);
  ImageContaining = dyld4::APIs::findImageContaining(a1, a2);
  v6 = *(a1 + 14);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 0x40000000;
  v28 = ___ZN5dyld44APIs33_dyld_register_func_for_add_imageENS_16ReadOnlyCallbackIPFvPK11mach_headerlEEE_block_invoke_2;
  v29 = &__block_descriptor_tmp_36;
  v30 = a1;
  v31 = ImageContaining;
  v32 = a2;
  v34 = v27;
  v7 = lsl::MemoryManager::memoryManager(ImageContaining);
  result = *(v7 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInAnyFrameInThisThread(result);
    if (result)
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v15 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v15 & 0xFE) == 2)
          {
            result = MEMORY[0xFFFFFC0D0];
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v16 = MEMORY[0xFFFFFC0D0];
            if (v16 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v17 = *(v7 + 6);
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 0x40000000;
              v35[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks22withNotifiersWriteLockIU13block_pointerFvvEEEvT_EUlvE_EEvS7__block_invoke;
              v35[3] = &__block_descriptor_tmp_216;
              v35[4] = v6;
              v35[5] = &v34;
              result = lsl::ProtectedStack::withNestedProtectedStack(v17, v35, v9, v10, v11, v12, v13, v14, v26);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v18 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v18 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v19 = MEMORY[0xFFFFFC0D8];
                    if (v19 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_40:
      __break(1u);
      return result;
    }
  }

  if (*(v7 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_40;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      if (*v6)
      {
        (*(**v6 + 96))(*v6, v6 + 24, 0);
        v28(v27);
        return (*(**v6 + 104))(*v6, v6 + 24);
      }

      else
      {
        return v28(v27);
      }
    }

    else
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_40;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      v20 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v20 & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      result = MEMORY[0xFFFFFC0D0];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v21 = MEMORY[0xFFFFFC0D0];
      if (v21 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_40;
      }

      if (*v6)
      {
        (*(**v6 + 96))(*v6, v6 + 24, 0);
        v28(v27);
        result = (*(**v6 + 104))(*v6, v6 + 24);
      }

      else
      {
        result = v28(v27);
      }

      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_40;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      v24 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v24 & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      result = MEMORY[0xFFFFFC0D8];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v25 = MEMORY[0xFFFFFC0D8];
      if (v25 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v7, v35);
    v22 = *(v7 + 3);
    if (!v22)
    {
      lsl::MemoryManager::writeProtect(v7, 0);
      v22 = *(v7 + 3);
    }

    *(v7 + 3) = v22 + 1;
    lsl::Lock::unlock(v35[0]);
    if (*v6)
    {
      (*(**v6 + 96))(*v6, v6 + 24, 0);
      v28(v27);
      (*(**v6 + 104))(*v6, v6 + 24);
    }

    else
    {
      v28(v27);
    }

    lsl::MemoryManager::lockGuard(v7, v35);
    v23 = *(v7 + 3) - 1;
    *(v7 + 3) = v23;
    if (!v23)
    {
      lsl::MemoryManager::writeProtect(v7, 1);
    }

    return lsl::Lock::unlock(v35[0]);
  }

  return result;
}

void ___ZN5dyld44APIs33_dyld_register_func_for_add_imageENS_16ReadOnlyCallbackIPFvPK11mach_headerlEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  v11 = 8 * v10;
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v12 = (&v28 - ((8 * v10 + 15) & 0xFFFFFFFF0));
  __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20, v28);
  v22 = (&v28 - v21);
  if (v10)
  {
    if (v11 >= 0x200)
    {
      v23 = 512;
    }

    else
    {
      v23 = 8 * v10;
    }

    bzero(v12, v23);
    v24 = 0;
    do
    {
      Address = dyld4::Loader::loadAddress(*(*(v9 + 40) + v24), v9);
      v12[v24 / 8] = Address;
      if ((*(*(*(v9 + 40) + v24) + 4) & 2) != 0)
      {
        Slide = *(*(v9 + 8) + 392);
      }

      else
      {
        Slide = dyld3::MachOLoaded::getSlide(Address);
      }

      v22[v24 / 8] = Slide;
      v24 += 8;
    }

    while (v11 != v24);
    do
    {
      if (*(*(v9 + 8) + 325) == 1)
      {
        v27 = *(a1 + 40);
        dyld4::RuntimeState::log(v9, "add notifier %p called with mh=%p\n", v27, *v12);
      }

      dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<mach_header const*&,long &>((a1 + 40), v12++, v22++);
      --v10;
    }

    while (v10);
  }
}

uint64_t dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<mach_header const*&,long &>(lsl::MemoryManager *a1, void *a2, void *a3)
{
  v13 = lsl::MemoryManager::memoryManager(a1);
  result = v13[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v6, v7, v8, v9, v10, v11, v12, v29);
    if (result)
    {
      v21 = v13[6];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 0x40000000;
      v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerlEEclIJRS6_RlEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESJ__block_invoke;
      v31[3] = &__block_descriptor_tmp_215;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      return lsl::ProtectedStack::withNestedRegularStack(v21, v31, v15, v16, v17, v18, v19, v20, v30);
    }
  }

  if (*(v13 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v25 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v25 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v26 = MEMORY[0xFFFFFC0D8];
          if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v27 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v27 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v28 = MEMORY[0xFFFFFC0D0];
                  if (v28 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v22 = *a1;
  v23 = *a2;
  v24 = *a3;

  return v22(v23, v24);
}

uint64_t dyld4::RuntimeState::addNotifyAddFunc(void *a1, uint64_t a2, uint64_t a3)
{
  result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 90), a1[92] + 1);
  v7 = a1[91];
  v8 = a1[92];
  a1[92] = v8 + 1;
  *(v7 + 8 * v8) = a3;
  if (a2)
  {
    if ((*(a2 + 4) & 0x20) == 0)
    {
      result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 132), a1[134] + 1);
      v9 = a1[133];
      v10 = a1[134];
      a1[134] = v10 + 1;
      *(v9 + 8 * v10) = a2;
    }
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_register_func_for_remove_image(lsl::Lock **this, void *a2)
{
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_register_func_for_remove_image(%p)\n", a2);
  }

  ImageContaining = dyld4::APIs::findImageContaining(this, a2);
  v5 = this[14];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 0x40000000;
  v27 = ___ZN5dyld44APIs36_dyld_register_func_for_remove_imageENS_16ReadOnlyCallbackIPFvPK11mach_headerlEEE_block_invoke;
  v28 = &__block_descriptor_tmp_38_0;
  v29 = this;
  v30 = ImageContaining;
  v31 = a2;
  v32 = v26;
  v6 = lsl::MemoryManager::memoryManager(ImageContaining);
  result = *(v6 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInAnyFrameInThisThread(result);
    if (result)
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v14 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v14 & 0xFE) == 2)
          {
            result = MEMORY[0xFFFFFC0D0];
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v15 = MEMORY[0xFFFFFC0D0];
            if (v15 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v16 = *(v6 + 6);
              v33[0] = _NSConcreteStackBlock;
              v33[1] = 0x40000000;
              v33[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks22withNotifiersWriteLockIU13block_pointerFvvEEEvT_EUlvE_EEvS7__block_invoke;
              v33[3] = &__block_descriptor_tmp_216;
              v33[4] = v5;
              v33[5] = &v32;
              result = lsl::ProtectedStack::withNestedProtectedStack(v16, v33, v8, v9, v10, v11, v12, v13, v25);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v17 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v17 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v18 = MEMORY[0xFFFFFC0D8];
                    if (v18 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_40:
      __break(1u);
      return result;
    }
  }

  if (*(v6 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_40;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      if (*v5)
      {
        (*(**v5 + 96))(*v5, v5 + 24, 0);
        v27(v26);
        return (*(**v5 + 104))(*v5, v5 + 24);
      }

      else
      {
        return v27(v26);
      }
    }

    else
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_40;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      v19 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v19 & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      result = MEMORY[0xFFFFFC0D0];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v20 = MEMORY[0xFFFFFC0D0];
      if (v20 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_40;
      }

      if (*v5)
      {
        (*(**v5 + 96))(*v5, v5 + 24, 0);
        v27(v26);
        result = (*(**v5 + 104))(*v5, v5 + 24);
      }

      else
      {
        result = v27(v26);
      }

      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_40;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      v23 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v23 & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      result = MEMORY[0xFFFFFC0D8];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v24 = MEMORY[0xFFFFFC0D8];
      if (v24 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v6, v33);
    v21 = *(v6 + 3);
    if (!v21)
    {
      lsl::MemoryManager::writeProtect(v6, 0);
      v21 = *(v6 + 3);
    }

    *(v6 + 3) = v21 + 1;
    lsl::Lock::unlock(v33[0]);
    if (*v5)
    {
      (*(**v5 + 96))(*v5, v5 + 24, 0);
      v27(v26);
      (*(**v5 + 104))(*v5, v5 + 24);
    }

    else
    {
      v27(v26);
    }

    lsl::MemoryManager::lockGuard(v6, v33);
    v22 = *(v6 + 3) - 1;
    *(v6 + 3) = v22;
    if (!v22)
    {
      lsl::MemoryManager::writeProtect(v6, 1);
    }

    return lsl::Lock::unlock(v33[0]);
  }

  return result;
}

uint64_t dyld4::RuntimeState::addNotifyRemoveFunc(void *a1, uint64_t a2, uint64_t a3)
{
  result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 94), a1[96] + 1);
  v7 = a1[95];
  v8 = a1[96];
  a1[96] = v8 + 1;
  *(v7 + 8 * v8) = a3;
  if (a2)
  {
    if ((*(a2 + 4) & 0x20) == 0)
    {
      result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 132), a1[134] + 1);
      v9 = a1[133];
      v10 = a1[134];
      a1[134] = v10 + 1;
      *(v9 + 8 * v10) = a2;
    }
  }

  return result;
}

void dyld4::RuntimeState::vlog(dyld4::RuntimeState *this, char *a2, const char **a3)
{
  os_unfair_lock_lock((*(this + 14) + 44));
  if ((*(this + 1109) & 1) == 0)
  {
    dyld4::RuntimeState::setUpLogging(this);
  }

  if (*(this + 1108) == 1)
  {
    if (snprintf(__str, 0x800uLL, "<%d>%s[%d]: ", 13, *(*(this + 1) + 200), *(*(this + 1) + 216)) >= 1)
    {
      v12 = _platform_strlen(__str);
      if (vsnprintf(&__str[v12], 2048 - v12, a2, a3) >= 1)
      {
        v13 = *(this + 276);
        v14 = _platform_strlen(__str);
        sendto(v13, __str, v14, 0, 0, 0);
      }
    }
  }

  else
  {
    v15 = *(this + 276);
    if (v15 != -1)
    {
      _simple_dprintf(v15, "dyld[%d]: ", v6, v7, v8, v9, v10, v11, *(*(this + 1) + 216));
      _simple_vdprintf(*(this + 276), a2, a3);
    }
  }

  os_unfair_lock_unlock((*(this + 14) + 44));
}

void os_unfair_lock_lock(os_unfair_lock_t lock)
{
  v5 = 0;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(lock, &v5, v6, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    _os_unfair_lock_lock_slow(lock, 0, 0, v6, v1, v2, v3, v4);
  }
}

void dyld_halt(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v10 = _simple_salloc();
  if (v10)
  {
    v12 = v10;
    _simple_vsprintf(v10, a1, &a9);
    v11 = _simple_string(v12);
  }

  else
  {
    v11 = "panic: [failed to allocate panic message]";
  }

  if (getpid() == 1)
  {
    syscall(55, 3072, v11);
  }

  qword_A82F8 = v11;
  __break(1u);
}

unint64_t dyld4::ProcessConfig::evaluateProcessorSpecificFunctionVariantFlags()
{
  v5 = 0;
  v6 = 0;
  v4 = 16;
  if (sysctlbyname("hw.optional.arm.caps", &v5, &v4, 0, 0))
  {
    return 0;
  }

  v1 = 3;
  if ((v5 & 1) == 0)
  {
    v1 = 1;
  }

  v2 = v1 & 0xFFFFFFC000000003 | (4 * ((v5 >> 1) & 0xFFFFFFFFFLL));
  v3 = v5 & 0xFFFFFFE000000000;
  if (!(v5 & 0xFFFFFFE000000000 ^ 0x2000000000 | v6))
  {
    v2 |= 0x4000000000uLL;
  }

  if (!(v3 ^ 0x4000000000 | v6))
  {
    v2 |= 0x8000000000uLL;
  }

  if (!(v3 ^ 0x6000000000 | v6))
  {
    v2 |= 0x10000000000uLL;
  }

  if (!(v3 ^ 0x8000000000 | v6))
  {
    v2 |= 0x20000000000uLL;
  }

  if (!(v3 ^ 0xA000000000 | v6))
  {
    v2 |= 0x40000000000uLL;
  }

  if (v3 ^ 0xC000000000 | v6)
  {
    return (v5 >> 4) & 0x3F000000000000 | (((v5 >> 40) & 0xF) << 44) & 0xFE3FFFFFFFFFFFFFLL | (((v5 >> 49) & 7) << 54) | (v5 >> 58 << 57) | v2;
  }

  else
  {
    return (v5 >> 4) & 0x3F000000000000 | (((v5 >> 40) & 0xF) << 44) & 0xFE3FFFFFFFFFFFFFLL | (((v5 >> 49) & 7) << 54) | (v5 >> 58 << 57) | v2 | 0x8000000000000000;
  }
}

char *dyld4::ProcessConfig::PathOverrides::addEnvVar(char **this, const dyld4::ProcessConfig::Process *a2, const dyld4::ProcessConfig::Security *a3, lsl::Allocator::Pool **a4, char *__s, int a6, char *a7)
{
  result = _platform_strchr(__s, 61);
  if (!result)
  {
    return result;
  }

  v15 = result + 1;
  v42 = __s;
  v43 = &result[~__s + 1];
  result = std::string_view::starts_with[abi:nn200100](&v42, "DYLD_");
  if (!result)
  {
    return result;
  }

  if (a6 && _platform_strchr(v15, 64))
  {
    v16 = _platform_strlen(__s);
    __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23, v37);
    v25 = &v38[-1] - ((v24 + 1039) & 0xFFFFFFFFFFFFFFF0);
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2000000000;
    v41 = 0;
    *v25 = 0;
    v39 = 0;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 0x40000000;
    v38[2] = ___ZN5dyld413ProcessConfig13PathOverrides9addEnvVarERKNS0_7ProcessERKNS0_8SecurityERN3lsl9AllocatorEPKcbPc_block_invoke;
    v38[3] = &unk_A0478;
    v38[4] = v40;
    v38[5] = a3;
    v38[6] = v25;
    v38[7] = v26;
    v38[8] = a2;
    dyld4::ProcessConfig::PathOverrides::forEachInColonList(v15, 0, &v39, v38);
    v15 = lsl::Allocator::strdup(a4, v25);
    _Block_object_dispose(v40, 8);
  }

  result = v42;
  v27 = v43;
  if (v43 > 25)
  {
    if (v43 > 27)
    {
      if (v43 == 28)
      {
        result = _platform_memcmp(v42, "DYLD_FALLBACK_FRAMEWORK_PATH", 0x1CuLL);
        if (result)
        {
          goto LABEL_49;
        }

        v31 = a6 == 0;
        v30 = 24;
        v32 = 72;
      }

      else
      {
        if (v43 != 29)
        {
          goto LABEL_57;
        }

        result = _platform_memcmp(v42, "DYLD_VERSIONED_FRAMEWORK_PATH", 0x1DuLL);
        if (result)
        {
          goto LABEL_49;
        }

        v31 = a6 == 0;
        v30 = 40;
        v32 = 80;
      }
    }

    else if (v43 == 26)
    {
      result = _platform_memcmp(v42, "DYLD_FALLBACK_LIBRARY_PATH", 0x1AuLL);
      if (result)
      {
        goto LABEL_49;
      }

      v31 = a6 == 0;
      v30 = 16;
      v32 = 64;
    }

    else
    {
      result = _platform_memcmp(v42, "DYLD_VERSIONED_LIBRARY_PATH", 0x1BuLL);
      if (result)
      {
        goto LABEL_49;
      }

      v31 = a6 == 0;
      v30 = 32;
      v32 = 88;
    }

    goto LABEL_46;
  }

  if (v43 > 18)
  {
    if (v43 != 19)
    {
      if (v43 == 21)
      {
        result = _platform_memcmp(v42, "DYLD_INSERT_LIBRARIES", 0x15uLL);
        if (!result)
        {
          result = dyld4::ProcessConfig::PathOverrides::setString(result, a4, this + 12, v15);
          v33 = this[12];
          if (*v33)
          {
            v34 = 1;
            *(this + 37) = 1;
            while (1)
            {
              if (*v33 == 58)
              {
                *(this + 37) = ++v34;
              }

              else if (!*v33)
              {
                goto LABEL_49;
              }

              ++v33;
            }
          }
        }

        goto LABEL_49;
      }

      goto LABEL_57;
    }

    result = _platform_memcmp(v42, "DYLD_FRAMEWORK_PATH", 0x13uLL);
    if (result)
    {
      goto LABEL_49;
    }

    v31 = a6 == 0;
    v30 = 8;
    v32 = 56;
LABEL_46:
    if (!v31)
    {
      v30 = v32;
    }

    goto LABEL_48;
  }

  if (v43 == 14)
  {
    result = _platform_memcmp(v42, "DYLD_ROOT_PATH", 0xEuLL);
    if (result)
    {
      goto LABEL_49;
    }

    result = mach_o::Platform::isSimulator((a2 + 96));
    if (result)
    {
      v30 = 120;
      goto LABEL_48;
    }

    v27 = v43;
  }

  else if (v43 == 17)
  {
    if (*v42 == 0x42494C5F444C5944 && *(v42 + 1) == 0x5441505F59524152 && v42[16] == 72)
    {
      v30 = 48;
      if (!a6)
      {
        v30 = 0;
      }

      goto LABEL_48;
    }

    result = _platform_memcmp(v42, "DYLD_IMAGE_SUFFIX", 0x11uLL);
    if (!result)
    {
      v30 = 104;
LABEL_48:
      result = dyld4::ProcessConfig::PathOverrides::setString(result, a4, (this + v30), v15);
      goto LABEL_49;
    }

LABEL_58:
    v36 = *v42 == 0x45564F5F444C5944 && *(v42 + 1) == 0x5441505F59414C52 && v42[16] == 72;
    if (!v36 || *a3 != 1)
    {
      goto LABEL_49;
    }

    v30 = 112;
    goto LABEL_48;
  }

LABEL_57:
  if (v27 == 17)
  {
    goto LABEL_58;
  }

LABEL_49:
  if (a7)
  {
    result = _platform_strncmp(__s, "DYLD_", 5uLL);
    if (!result)
    {
      strlcat(a7, __s, 0x800uLL);
      return strlcat(a7, " ", 0x800uLL);
    }
  }

  return result;
}

uint64_t std::string_view::compare[abi:nn200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    abort();
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = _platform_memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void (*dyld4::prepare(dyld4 *this, dyld4::APIs *a2, const mach_o::Header *a3))(dyld4 *this, int a2, const char *const *a3, const char *const *a4, const char *const *a5)
{
  v5 = dyld3::kdebug_trace_dyld_enabled(0x1F070004, a2);
  if (v5)
  {
    v6 = *(this + 1);
    v7 = v6[223];
    if (v6[224])
    {
      v7 |= 2uLL;
    }

    if (v6[225])
    {
      v8 = v7 | 4;
    }

    else
    {
      v8 = v7;
    }

    if (*(lsl::MemoryManager::memoryManager(v5) + 35))
    {
      v10 = (v8 | 8);
    }

    else
    {
      v10 = v8;
    }

    v171 = dyld3::kdebug_trace_dyld_duration_start(0x1F070004, *(*(this + 1) + 24), 0, v10, 0, 0, 0, v9);
  }

  else
  {
    v171 = 0;
  }

  v11 = *(this + 1);
  if (*(v11 + 328) == 1)
  {
    if ((*(v11 + 306) & 1) == 0)
    {
      dyld4::RuntimeState::log(this, "Note: DYLD_PRINT_* disabled by AMFI\n");
      v11 = *(this + 1);
    }

    if ((*(v11 + 311) & 1) == 0)
    {
      dyld4::RuntimeState::log(this, "Note: interposing disabled by AMFI\n");
      v11 = *(this + 1);
    }
  }

  if (*(v11 + 330) == 1)
  {
    v12 = *(v11 + 184);
    v13 = *v12;
    if (*v12)
    {
      v14 = v12 + 1;
      do
      {
        dyld4::RuntimeState::log(this, "%s\n", v13);
        v15 = *v14++;
        v13 = v15;
      }

      while (v15);
    }
  }

  LaunchLoader = 0;
  dyld4::RuntimeState::initializeClosureMode(this);
  v16 = *(this + 122);
  if (v16)
  {
    if (!*(v16 + 12))
    {
      __assert_rtn("atIndex", "PrebuiltLoader.h", 346, "loaderIndex < loadersArrayCount");
    }

    v17 = (v16 + *(v16 + *(v16 + 16)));
    LaunchLoader = v17;
  }

  else
  {
    if (*(this + 7) <= 0x1FFuLL)
    {
      lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserveExact(this + 32, 0x200uLL);
    }

    Diagnostics::Diagnostics(&v174);
    LaunchLoader = dyld4::JustInTimeLoader::makeLaunchLoader(&v174, this, v18);
    if (Diagnostics::hasError(&v174))
    {
      v169 = Diagnostics::errorMessage(&v174);
      dyld4::RuntimeState::log(this, "%s in %s\n", v169, *(*(this + 1) + 32));
      v163 = &v174;
      goto LABEL_146;
    }

    Diagnostics::~Diagnostics(&v174);
    v17 = LaunchLoader;
  }

  dyld4::RuntimeState::setMainLoader(this, v17);
  dyld4::RuntimeState::notifyDebuggerLoad(this, LaunchLoader);
  if (*(LaunchLoader + 2))
  {
    v19 = 0;
  }

  else if (*(this + 1000))
  {
    v19 = 1;
  }

  else
  {
    v19 = *(this + 1001);
  }

  v193[0] = &v200;
  v193[1] = 16;
  v195 = 0;
  v196 = 0;
  v194 = 0;
  dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v193, &LaunchLoader);
  dyld4::RuntimeState::loadInsertedLibraries(this, v193, LaunchLoader, &v174);
  if (*&v174.st_dev)
  {
    goto LABEL_148;
  }

  mach_o::Error::~Error(&v174);
  v187 = 0;
  v188 = &v187;
  v189 = 0x4002000000;
  v190 = __Block_byref_object_copy__34;
  v191 = __Block_byref_object_dispose__35;
  memset(v192, 0, sizeof(v192));
  v186[0] = _NSConcreteStackBlock;
  v186[1] = 0x40000000;
  v186[2] = ___ZN5dyld4L7prepareERNS_4APIsEPKN6mach_o6HeaderE_block_invoke;
  v186[3] = &unk_A0200;
  v186[4] = &v187;
  v20 = *(this + 1);
  v21 = *(v20 + 368);
  if (v21)
  {
    dyld4::ExternallyViewableState::setSharedCacheAddress(*(this + 77), *(v20 + 392), v21);
  }

  v185[0] = 0;
  v185[1] = LaunchLoader;
  Diagnostics::Diagnostics(v184);
  *&v180 = 0x100000000000101;
  DWORD2(v180) = 0;
  v182 = 0;
  v183 = 0;
  v181 = v185;
  if (v19)
  {
    v183 = v186;
  }

  if (v194)
  {
    v23 = v193[0];
    v24 = 8 * v194;
    while (1)
    {
      dyld4::Loader::loadDependents(*v23, v184, this, &v180);
      hasError = Diagnostics::hasError(v184);
      if (hasError)
      {
        break;
      }

      ++v23;
      v24 -= 8;
      if (!v24)
      {
        v25 = v194;
        goto LABEL_44;
      }
    }

    v158 = v194;
    v159 = 8 * *(this + 6) - v194;
    __chkstk_darwin(hasError);
    v161 = (&v170 - v160);
    bzero(&v170 - v160, v159 + 336);
    *&v174.st_dev = __stackAllocatorInternal(v161, v159 + 336);
    memset(&v174.st_ino, 0, 24);
    lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v174, *(this + 6) - v158);
    if (v158 == *(this + 6))
    {
      v162 = *&v174.st_uid;
    }

    else
    {
      v162 = *&v174.st_uid;
      do
      {
        v164 = *(*(this + 5) + 8 * v158);
        lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v174, v162 + 1);
        v165 = *&v174.st_uid;
        v162 = ++*&v174.st_uid;
        *(v174.st_ino + 8 * v165) = v164;
        ++v158;
      }

      while (v158 != *(this + 6));
    }

    st_ino = v174.st_ino;
    v178 = v162;
    dyld4::RuntimeState::notifyDebuggerLoad(this, &st_ino);
    dyld4::ExternallyViewableState::setDyldState(*(this + 77), 32);
    dyld4::ExternallyViewableState::disableCrashReportBacktrace(*(this + 77));
    v163 = v184;
LABEL_146:
    v166 = Diagnostics::errorMessage(v163);
    dyld4::halt(v166, this + 82);
  }

  v25 = 0;
LABEL_44:
  v26 = 8 * *(this + 6);
  __chkstk_darwin(hasError);
  v28 = *(this + 6);
  st_ino = &v170 - ((v27 + 23) & 0xFFFFFFFFFFFFFFF0);
  v178 = v28;
  v179 = 0;
  if (v28)
  {
    v29 = 0;
    v30 = *(this + 5);
    v31 = 8 * v28;
    v32 = v30;
    do
    {
      v33 = *v32;
      if ((*(*v32 + 4) & 2) == 0)
      {
        if (v29 >= v28)
        {
LABEL_138:
          __assert_rtn("push_back", "Array.h", 68, "_usedCount < _allocCount");
        }

        v179 = v29 + 1;
        *&st_ino[8 * v29++] = v33;
      }

      ++v32;
      ++v30;
      v31 -= 8;
    }

    while (v31);
  }

  v173 = v19;
  dyld4::RuntimeState::addPermanentRanges(this, &st_ino);
  if (*(*(this + 1) + 226))
  {
    v34 = lsl::Allocator::malloc(*(this + 2), 0x60uLL);
    v35 = dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::Map(v34);
    *(this + 52) = v35;
    v36 = 8 * *(this + 6);
    __chkstk_darwin(v35);
    bzero(&v170 - ((v36 + 351) & 0xFFFFFFFFFFFFFFF0), v36 + 336);
    v37 = __stackAllocatorInternal((&v170 - ((v36 + 351) & 0xFFFFFFFFFFFFFFF0)), v36 + 336);
    *&v174.st_dev = v37;
    memset(&v174.st_ino, 0, 24);
    lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v174, *(this + 6));
    v38 = *(this + 6);
    v39 = *&v174.st_uid;
    if (v38)
    {
      v40 = *(this + 5);
      v41 = 8 * v38;
      v42 = v40;
      do
      {
        v43 = *v42++;
        lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v174, v39 + 1);
        v44 = *&v174.st_uid;
        v39 = ++*&v174.st_uid;
        *(v174.st_ino + 8 * v44) = v43;
        ++v40;
        v41 -= 8;
      }

      while (v41);
    }

    v198 = v174.st_ino;
    v199 = v39;
    dyld4::Loader::addWeakDefsToMap(this, &v198);
    if (v174.st_ino)
    {
      lsl::Vector<char const*>::resize(&v174.st_dev, 0);
    }

    lsl::Allocator::~Allocator(v37);
  }

  dyld4::RuntimeState::buildInterposingTables(this);
  v174.st_dev = 520552460;
  memset(&v174.st_ino, 0, 104);
  dyld3::ScopedTimer::startTimer(&v174, v45, v46, v47, v48, v49, v50, v51);
  dyld4::DyldCacheDataConstLazyScopedWriter::DyldCacheDataConstLazyScopedWriter(&v198, this);
  dyld4::JustInTimeLoader::handleStrongWeakDefOverrides(this, &v198, v52);
  v53 = *(this + 6);
  if (v53)
  {
    v54 = *(this + 5);
    v55 = 8 * v53;
    v56 = v54;
    while (1)
    {
      v57 = *v56;
      Diagnostics::Diagnostics(v176);
      dyld4::Loader::applyFixups(v57);
      if (Diagnostics::hasError(v176))
      {
        break;
      }

      dyld4::Loader::applyCachePatches(v57, this, &v198);
      Diagnostics::~Diagnostics(v176);
      ++v56;
      ++v54;
      v55 -= 8;
      if (!v55)
      {
        goto LABEL_61;
      }
    }

    v163 = v176;
    goto LABEL_146;
  }

LABEL_61:
  dyld4::RuntimeState::doSingletonPatching(this, &v198);
  dyld4::DyldCacheDataConstLazyScopedWriter::~DyldCacheDataConstLazyScopedWriter(&v198);
  dyld3::ScopedTimer::endTimer(&v174);
  if (*(this + 24))
  {
    dyld4::Loader::applyInterposingToDyldCache(this, v58);
  }

  dyld4::Loader::adjustFunctionVariantsInDyldCache(this, v58);
  if (*(LaunchLoader + 2))
  {
    dyld4::DyldCacheDataConstLazyScopedWriter::DyldCacheDataConstLazyScopedWriter(&v174, this);
    v66 = *(this + 122);
    v175[0] = _NSConcreteStackBlock;
    v175[1] = 0x40000000;
    v175[2] = ___ZN5dyld4L7prepareERNS_4APIsEPKN6mach_o6HeaderE_block_invoke_2;
    v175[3] = &__block_descriptor_tmp_42;
    v175[4] = this;
    v175[5] = &v174;
    dyld4::PrebuiltLoaderSet::forEachCachePatch(v66, v175);
    dyld4::DyldCacheDataConstLazyScopedWriter::~DyldCacheDataConstLazyScopedWriter(&v174);
  }

  if (kdebug_is_enabled(0x1F050000u, v59, v60, v61, v62, v63, v64, v65) && (dyld3::MachOFile::inDyldCache(a2) & 1) == 0)
  {
    v198 = 0;
    v199 = 0;
    mach_o::Header::getUuid(a2, &v198);
    v68 = dyld3::stat(*(*(this + 1) + 128), &v174, v67);
    if (v68)
    {
      v69 = 0;
    }

    else
    {
      v69 = v174.st_ino;
    }

    if (v68)
    {
      st_dev = 0;
    }

    else
    {
      st_dev = v174.st_dev;
    }

    v71 = *(*(this + 1) + 128);
    mach_o::Header::arch(a2, v176);
    v72 = st_dev;
    v73 = a2;
    dyld3::kdebug_trace_dyld_image(0, v71, &v198, v69, v72, v73, v176[0].u32[1], v74, v170);
  }

  v75 = *(this + 13);
  if (!v75)
  {
    v168 = "libdyld.dylib not found";
    goto LABEL_151;
  }

  v76 = dyld4::Loader::analyzer(v75, this);
  SectionContent = mach_o::Header::findSectionContent(v76, "__TPRO_CONST", 12, "__dyld_apis", 11, 1);
  v79 = v78;
  if (v78 == 8)
  {
    *SectionContent = this;
  }

  v80 = mach_o::Header::findSectionContent(v76, "__DATA_CONST", 12, "__helper", 8, 1);
  if (v81 != 8 || (v82 = v80, v83 = lsl::MemoryManager::memoryManager(v80), *(this + 20) = v82, *(this + 21) = v83, v84 = (**v82)(v82), v79 != 8) || v84 <= 6)
  {
    v167 = dyld4::Loader::path(*(this + 13), this);
    mach_o::Error::Error(&v174, "'%s' not compatible with '%s'", v167, *(*(this + 1) + 128));
LABEL_148:
    v168 = mach_o::Error::message(&v174);
    goto LABEL_151;
  }

  v85 = (*(**(this + 20) + 176))(*(this + 20), this + 120);
  v86 = *(this + 1);
  *(this + 15) = *(v86 + 16);
  **(this + 19) = *(v86 + 200);
  v87 = *(this + 1);
  **(this + 16) = *(v87 + 168);
  **(this + 17) = *(v87 + 176);
  **(this + 18) = *(*(this + 1) + 184);
  if (!*(this + 12))
  {
    v168 = "program does not link with libSystem.B.dylib";
    goto LABEL_151;
  }

  v88 = *(this + 6);
  __chkstk_darwin(v85);
  v91 = (&v170 - ((v90 + 23) & 0xFFFFFFFFFFFFFFF0));
  if (!v89)
  {
    __assert_rtn("operator[]", "Array.h", 60, "idx < _usedCount");
  }

  v92 = 0;
  v93 = *(this + 5);
  v94 = v93;
  do
  {
    if (v89 == v92)
    {
      goto LABEL_138;
    }

    v95 = v92 + 1;
    v91[v92] = *(v93 + 8 * v92);
    v94 += 8;
    ++v92;
    v90 -= 8;
  }

  while (v90);
  if (v25 == -1)
  {
    v96 = v95;
  }

  else
  {
    v96 = v25;
  }

  dyld4::RuntimeState::partitionDelayLoads(this, v91, v95, v91, v96, 0);
  if (*(*(this + 1) + 352))
  {
    v104 = v96 == 0;
  }

  else
  {
    v104 = 1;
  }

  if (!v104)
  {
    v105 = 8 * v96;
    do
    {
      v107 = *v91++;
      v106 = v107;
      v108 = dyld4::Loader::mf(v107, this);
      if (dyld3::MachOFile::isMainExecutable(v108))
      {
        v109 = "main";
      }

      else
      {
        v109 = "insert";
      }

      dyld4::Loader::logChainToLinksWith(v106, this, v109);
      v105 -= 8;
    }

    while (v105);
  }

  v172 = v25;
  is_enabled = kdebug_is_enabled(0x1F050000u, v97, v98, v99, v100, v101, v102, v103);
  if (is_enabled)
  {
    v118 = *(this + 6);
    if (v118)
    {
      v119 = *(this + 5);
      v120 = 8 * v118;
      v121 = v119;
      do
      {
        v122 = *v121;
        Address = dyld4::Loader::loadAddress(*v121, this);
        if ((*(v122 + 2) & 2) != 0 || (v124 = dyld4::Loader::path(v122, this), dyld3::stat(v124, &v174, v125)))
        {
          v126 = 0;
          v127 = 0;
        }

        else
        {
          v127 = v174.st_ino;
          v126 = v174.st_dev;
        }

        v128 = dyld4::Loader::path(v122, this);
        v129 = v126;
        v130 = Address;
        is_enabled = dyld3::kdebug_trace_dyld_image(0, v128, v122 + 1, v127, v129, v130, *(v122 + 6), v131, v170);
        ++v121;
        ++v119;
        v120 -= 8;
      }

      while (v120);
    }
  }

  if (v173)
  {
    v174.st_dev = 520552468;
    memset(&v174.st_ino, 0, 104);
    dyld3::ScopedTimer::startTimer(&v174, v111, v112, v113, v114, v115, v116, v117);
    if (*(*(this + 1) + 327) == 1)
    {
      dyld4::RuntimeState::log(this, "building PrebuiltLoaderSet for main executable\n");
    }

    Diagnostics::Diagnostics(&v198);
    LaunchSet = dyld4::PrebuiltLoaderSet::makeLaunchSet(&v198, this, (v188 + 5), v132);
    if (LaunchSet && (v134 = LaunchSet, Diagnostics::noError(&v198)))
    {
      if (*(this + 1001) == 1)
      {
        v168 = "dyld: PrebuiltLoaderSet expected but not found";
        goto LABEL_151;
      }

      if (dyld4::RuntimeState::saveAppPrebuiltLoaderSet(this, v134))
      {
        *(this + 1112) = 1;
      }

      dyld4::PrebuiltLoaderSet::deallocate(v134);
      *&v174.st_mtimespec.tv_nsec = xmmword_8BFD0;
    }

    else if (*(*(this + 1) + 327) == 1)
    {
      v135 = Diagnostics::errorMessage(&v198);
      dyld4::RuntimeState::log(this, "could not build PrebuiltLoaderSet: %s\n", v135);
    }

    Diagnostics::~Diagnostics(&v198);
    is_enabled = dyld3::ScopedTimer::endTimer(&v174);
  }

  v136 = dyld4::fake_main;
  if (*(*(this + 1) + 316))
  {
    goto LABEL_127;
  }

  v137 = 8 * *(this + 6);
  __chkstk_darwin(is_enabled);
  bzero(&v170 - ((v137 + 351) & 0xFFFFFFFFFFFFFFF0), v137 + 336);
  v138 = __stackAllocatorInternal((&v170 - ((v137 + 351) & 0xFFFFFFFFFFFFFFF0)), v137 + 336);
  *&v174.st_dev = v138;
  memset(&v174.st_ino, 0, 24);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v174, *(this + 6));
  v139 = *(this + 6);
  v140 = *&v174.st_uid;
  if (v139)
  {
    v141 = *(this + 5);
    v142 = 8 * v139;
    v143 = v141;
    do
    {
      v144 = *v143++;
      lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v174, v140 + 1);
      v145 = *&v174.st_uid;
      v140 = ++*&v174.st_uid;
      *(v174.st_ino + 8 * v145) = v144;
      ++v141;
      v142 -= 8;
    }

    while (v142);
  }

  v198 = v174.st_ino + 8 * v172;
  v199 = v140 - v172;
  dyld4::RuntimeState::notifyDebuggerLoad(this, &v198);
  v176[0] = v174.st_ino;
  v176[1] = *&v174.st_uid;
  dyld4::RuntimeState::notifyDtrace(this, v176);
  if (v174.st_ino)
  {
    lsl::Vector<char const*>::resize(&v174.st_dev, 0);
  }

  lsl::Allocator::~Allocator(v138);
  dyld4::ExternallyViewableState::notifyMonitorOfDyldBeforeInitializers(*(this + 77), v146, v147, v148, v149, v150, v151, v152);
  (*(*this + 816))(this);
  dyld4::ExternallyViewableState::notifyMonitorOfMainCalled(*(this + 77));
  if (dyld3::kdebug_trace_dyld_enabled(0x1F070004, v153))
  {
    dyld3::kdebug_trace_dyld_duration_end(v171, 0x1F070004, 0, 0, 0, 0, 0, 0);
  }

  dyld4::ExternallyViewableState::setDyldState(*(this + 77), 80);
  v154 = *(this + 1);
  v136 = dyld4::fake_main;
  if (*(v154 + 315))
  {
    goto LABEL_127;
  }

  if (*(v154 + 112) == &mach_o::PlatformInfo_driverKit::singleton && !*(v154 + 120))
  {
    v136 = *(this + 127);
    if (v136)
    {
      v156 = *(this + 127);
LABEL_127:
      v155 = v136;
      goto LABEL_135;
    }

    v168 = "DriverKit main entry point not set";
LABEL_151:
    dyld4::halt(v168, 0);
  }

  *&v174.st_dev = 0;
  LOBYTE(v198) = 0;
  if ((mach_o::Header::getEntry(*(v154 + 24), &v174, &v198) & 1) == 0)
  {
    v168 = "main executable has no entry point";
    goto LABEL_151;
  }

  if (v198 == 1)
  {
    v168 = "main executable is missing LC_MAIN";
    goto LABEL_151;
  }

  v155 = (*&v174.st_dev + *(*(this + 1) + 16));
LABEL_135:
  Diagnostics::~Diagnostics(v184);
  _Block_object_dispose(&v187, 8);
  dyld4::BumpAllocator::~BumpAllocator(v192);
  v194 = 0;
  if (v195)
  {
    vm_deallocate(mach_task_self_, v195, v196);
  }

  return v155;
}

void dyld4::RuntimeState::initializeClosureMode(dyld4::RuntimeState *this)
{
  v2 = (this + 952);
  v3 = 0uLL;
  *(this + 952) = 0u;
  v4 = *(this + 1);
  v5 = *(v4 + 368);
  if (v5)
  {
    if (*(v5 + 16) >= 0x170u)
    {
      v6 = (*(v4 + 392) + *(v5 + 328));
      valid = dyld4::PrebuiltLoaderSet::validHeader(v6, this);
      v3 = 0uLL;
      if (valid)
      {
        *(this + 119) = v6;
        v8 = lsl::Allocator::malloc(*(this + 2), v6[3]);
        *(this + 120) = v8;
        bzero(v8, *(*(this + 119) + 12));
        v3 = 0uLL;
      }
    }
  }

  *(this + 121) = 0;
  *(this + 1000) = 0;
  *(this + 984) = v3;
  v9 = *(this + 1);
  if (!*(v9 + 368))
  {
    if (*(v9 + 327))
    {
      dyld4::RuntimeState::log(this, "PrebuiltLoaders not being used because there is no dyld shared cache\n");
    }

    goto LABEL_39;
  }

  if (dyld4::ProcessConfig::PathOverrides::dontUsePrebuiltForApp((v9 + 592)))
  {
    if (*(*(this + 1) + 327))
    {
      dyld4::RuntimeState::log(this, "PrebuiltLoaders not being used because DYLD_ env vars are set\n");
    }

    goto LABEL_39;
  }

  if (!*v2 || !*(this + 120))
  {
LABEL_39:
    v41 = 0;
    v42 = 0;
    v43 = (this + 976);
    goto LABEL_40;
  }

  LaunchLoaderSet = DyldSharedCache::findLaunchLoaderSet(*(*(this + 1) + 368), *(*(this + 1) + 32));
  if (LaunchLoaderSet)
  {
    v11 = LaunchLoaderSet;
  }

  else
  {
    v12 = *(this + 1);
    v13 = *(v12 + 32);
    if (_platform_strncmp(v13, "/System/", 8uLL))
    {
      if (!_platform_strncmp(v13, "/private/var/containers/Bundle/Application/", 0x2BuLL))
      {
        v14 = *(v12 + 368);
        v15 = dyld4::ProcessConfig::Process::appleParam((v12 + 16), "executable_cdhash");
        LaunchLoaderSetWithCDHash = DyldSharedCache::findLaunchLoaderSetWithCDHash(v14, v15);
        if (LaunchLoaderSetWithCDHash)
        {
          v11 = LaunchLoaderSetWithCDHash;
          if (!*(LaunchLoaderSetWithCDHash + 3))
          {
            dyld4::RuntimeState::findPrebuiltLoader();
          }

          v17 = dyld4::PrebuiltLoader::path(&LaunchLoaderSetWithCDHash[*&LaunchLoaderSetWithCDHash[*(LaunchLoaderSetWithCDHash + 4)]], this);
          if (!_platform_strncmp(v17, "/private/var/staged_system_apps/", 0x20uLL))
          {
            v18 = *(*(this + 1) + 32);
            v19 = _platform_strchr((v18 + 44), 47) + 1;
            if (!_platform_strcmp(v17 + 32, v19))
            {
              if (*(v11 + 3))
              {
                v20 = 0;
                v21 = &v19[-v18];
                do
                {
                  v22 = dyld4::PrebuiltLoader::path((v11 + *(v11 + 4 * v20 + *(v11 + 4))), this);
                  if (!_platform_strncmp(v22, "/private/var/staged_system_apps/", 0x20uLL))
                  {
                    strlcpy(__dst, *(*(this + 1) + 32), 0x400uLL);
                    __dst[v21] = 0;
                    strlcat(__dst, v22 + 32, 0x400uLL);
                    v22 = lsl::Allocator::strdup(*(this + 2), __dst);
                  }

                  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(this + 368, *(this + 48) + 1);
                  v23 = *(this + 47);
                  v24 = *(this + 48);
                  *(this + 48) = v24 + 1;
                  *(v23 + 8 * v24) = v22;
                  ++v20;
                }

                while (*(v11 + 3) > v20);
              }

              goto LABEL_32;
            }
          }
        }
      }
    }

    else
    {
      v25 = *(v12 + 368);
      v26 = dyld4::ProcessConfig::Process::appleParam((v12 + 16), "executable_cdhash");
      v27 = DyldSharedCache::findLaunchLoaderSetWithCDHash(v25, v26);
      if (v27)
      {
        v11 = v27;
        v29 = dyld4::Loader::leafName(*(*(this + 1) + 32), v28);
        if (!*(v11 + 3))
        {
          dyld4::RuntimeState::findPrebuiltLoader();
        }

        v30 = v29;
        v31 = dyld4::PrebuiltLoader::path((v11 + *(v11 + *(v11 + 4))), this);
        v33 = dyld4::Loader::leafName(v31, v32);
        if (!_platform_strcmp(v30, v33))
        {
          goto LABEL_32;
        }
      }
    }

    v34 = *(this + 1);
    v35 = *(v34 + 368);
    v36 = dyld4::ProcessConfig::Process::appleParam((v34 + 16), "executable_cdhash");
    if (!DyldSharedCache::hasLaunchLoaderSetWithCDHash(v35, v36))
    {
      v37 = dyld4::RuntimeState::allowNonOsProgramsToSaveUpdatedClosures(this);
      v11 = 0;
      goto LABEL_33;
    }

    v11 = 0;
  }

LABEL_32:
  v37 = 0;
LABEL_33:
  v38 = *(this + 1);
  if (*(v38 + 289) != 1)
  {
    goto LABEL_86;
  }

  v39 = dyld4::ProcessConfig::Process::environ((v38 + 16), "DYLD_USE_CLOSURES");
  if (!v39)
  {
    goto LABEL_86;
  }

  v40 = *v39;
  if (v40 == 50)
  {
    if (!v39[1])
    {
      if (!dyld4::RuntimeState::allowNonOsProgramsToSaveUpdatedClosures(this) && *(*(this + 1) + 327) == 1)
      {
        dyld4::RuntimeState::log(this, "PrebuiltLoaders cannot be used with unsigned or old format programs\n");
      }

      v41 = 0;
      v42 = 1;
LABEL_88:
      dyld4::RuntimeState::buildAppPrebuiltLoaderSetPath(this, 0);
      if (*(this + 121))
      {
        dyld4::RuntimeState::loadAppPrebuiltLoaderSet(this);
        goto LABEL_99;
      }

      goto LABEL_98;
    }

    goto LABEL_86;
  }

  if (v40 != 49)
  {
    if (v40 == 48 && !v39[1])
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

  if (v39[1])
  {
LABEL_86:
    v42 = 0;
    if (!v37)
    {
      v41 = 0;
      goto LABEL_99;
    }

    v41 = 1;
    goto LABEL_88;
  }

  if (dyld4::RuntimeState::allowNonOsProgramsToSaveUpdatedClosures(this))
  {
    v42 = 0;
    v41 = 1;
    goto LABEL_99;
  }

  if (*(*(this + 1) + 327) == 1)
  {
    dyld4::RuntimeState::log(this, "PrebuiltLoaders cannot be used with unsigned or old format programs\n");
  }

  v42 = 0;
LABEL_98:
  v41 = 0;
LABEL_99:
  v43 = (this + 976);
  v44 = *(this + 122);
  if (!v11 || v44)
  {
    goto LABEL_41;
  }

  if (!dyld4::PrebuiltLoaderSet::validHeader(v11, this))
  {
    goto LABEL_40;
  }

  dyld4::RuntimeState::allocateProcessArrays(this, *(v11 + 3));
  **(this + 124) = *(*(this + 1) + 16);
  if (!*(v11 + 3))
  {
    dyld4::RuntimeState::findPrebuiltLoader();
  }

  v80 = (v11 + *(v11 + *(v11 + 4)));
  v81 = *(this + 1);
  if (*(v81 + 327) == 1)
  {
    dyld4::RuntimeState::log(this, "PrebuiltLoader %p found for %s in the dyld cache\n", v11 + *(v11 + *(v11 + 4)), *(v81 + 32));
    v81 = *(this + 1);
  }

  v82 = dyld4::ProcessConfig::Process::appleParam((v81 + 16), "executable_cdhash");
  if (!v82)
  {
    goto LABEL_125;
  }

  LOBYTE(v83) = *v82;
  if (!*v82)
  {
    goto LABEL_119;
  }

  v84 = 0;
  v85 = (v82 + 1);
  v86 = 1;
  do
  {
    v87 = v83 - 48;
    if ((v83 - 48) < 0xAu)
    {
      goto LABEL_111;
    }

    if ((v83 - 65) <= 5u)
    {
      v87 = v83 - 55;
LABEL_111:
      if ((v86 & 1) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_112;
    }

    if ((v83 - 97) > 5u)
    {
      goto LABEL_125;
    }

    v87 = v83 - 87;
    if ((v86 & 1) == 0)
    {
LABEL_115:
      v89 = v84 + 1;
      v88 = __dst[v84] | v87;
      goto LABEL_116;
    }

LABEL_112:
    v88 = 16 * v87;
    v89 = v84;
LABEL_116:
    __dst[v84] = v88;
    v90 = *v85++;
    v83 = v90;
    if (!v90)
    {
      break;
    }

    v86 ^= 1u;
    v84 = v89;
  }

  while (v89 < 0x15);
  if (v83)
  {
    goto LABEL_125;
  }

LABEL_119:
  if (!dyld4::PrebuiltLoader::recordedCdHashIs(v80, __dst))
  {
LABEL_125:
    if (*(*(this + 1) + 327) == 1)
    {
      dyld4::RuntimeState::log(this, "PrebuiltLoader %p not used because cdHash does not match\n", v80);
    }

    goto LABEL_40;
  }

  *(this + 122) = v11;
  if ((dyld4::PrebuiltLoaderSet::isValid(v11, this) & 1) == 0)
  {
    if (*(*(this + 1) + 327) == 1)
    {
      v91 = dyld4::PrebuiltLoader::path(v80, this);
      dyld4::RuntimeState::log(this, "PrebuiltLoader %p not used because Loader for %s is invalid\n", v11, v91);
    }

    *(this + 122) = 0;
    *(this + 1000) = v41;
    if ((v41 & 1) == 0)
    {
      v75 = 0;
      LOBYTE(v41) = 0;
      goto LABEL_72;
    }

LABEL_68:
    dyld4::RuntimeState::buildAppPrebuiltLoaderSetPath(this, 1);
    *(this + 1001) = 0;
    if (v42)
    {
      v76 = this + 1001;
      LOBYTE(v41) = 1;
      if (!*v43)
      {
        goto LABEL_74;
      }
    }

    return;
  }

LABEL_40:
  v44 = *v43;
LABEL_41:
  if (v44)
  {
    v45 = dyld4::PrebuiltLoaderSet::objcSelectorMap(v44);
    if (v45)
    {
      v46 = *v45;
      v47 = v45 + 4 * *v45;
      v48 = *(v47 + 1);
      *(this + 53) = v45 + 1;
      *(this + 54) = v46;
      *(this + 55) = v46;
      *(this + 56) = v47 + 16;
      *(this + 57) = v48;
      *(this + 58) = v48;
    }

    v49 = dyld4::PrebuiltLoaderSet::objcClassMap(*v43);
    if (v49)
    {
      v50 = *v49;
      v51 = &v49[*v49];
      v52 = v51[1];
      *(this + 59) = v49 + 1;
      *(this + 60) = v50;
      *(this + 61) = v50;
      *(this + 62) = v51 + 2;
      *(this + 63) = v52;
      *(this + 64) = v52;
    }

    v53 = dyld4::PrebuiltLoaderSet::objcProtocolMap(*v43);
    if (v53)
    {
      v54 = *v53;
      v55 = &v53[*v53];
      v56 = v55[1];
      *(this + 65) = v53 + 1;
      *(this + 66) = v54;
      *(this + 67) = v54;
      *(this + 68) = v55 + 2;
      *(this + 69) = v56;
      *(this + 70) = v56;
    }

    v57 = dyld4::PrebuiltLoaderSet::swiftTypeProtocolTable(*v43);
    if (v57)
    {
      v58 = v57;
      v59 = lsl::Allocator::malloc(*(this + 2), 0x68uLL);
      *(v59 + 3) = 0u;
      *(v59 + 4) = 0u;
      *(v59 + 5) = 0u;
      *(v59 + 1) = 0u;
      *(v59 + 2) = 0u;
      *v59 = *v58;
      *(v59 + 1) = v58[1];
      v60 = v58[2];
      *(v59 + 2) = v58 + 3;
      *(v59 + 3) = v60;
      if (v60)
      {
        *(v59 + 4) = v60;
      }

      v61 = &v58[v60 + 3];
      v62 = *v61;
      *(v59 + 7) = v61 + 1;
      *(v59 + 8) = v62;
      if (v62)
      {
        *(v59 + 9) = v62;
      }

      *(v59 + 12) = this;
      *(this + 71) = v59;
    }

    v63 = dyld4::PrebuiltLoaderSet::swiftMetadataProtocolTable(*v43);
    if (v63)
    {
      v64 = v63;
      v65 = lsl::Allocator::malloc(*(this + 2), 0x68uLL);
      *(v65 + 3) = 0u;
      *(v65 + 4) = 0u;
      *(v65 + 5) = 0u;
      *(v65 + 1) = 0u;
      *(v65 + 2) = 0u;
      *v65 = *v64;
      *(v65 + 1) = v64[1];
      v66 = v64[2];
      *(v65 + 2) = v64 + 3;
      *(v65 + 3) = v66;
      if (v66)
      {
        *(v65 + 4) = v66;
      }

      v67 = &v64[v66 + 3];
      v68 = *v67;
      *(v65 + 7) = v67 + 1;
      *(v65 + 8) = v68;
      if (v68)
      {
        *(v65 + 9) = v68;
      }

      *(v65 + 12) = this;
      *(this + 72) = v65;
    }

    v69 = dyld4::PrebuiltLoaderSet::swiftForeignTypeProtocolTable(*v43);
    if (v69)
    {
      v70 = v69;
      v71 = lsl::Allocator::malloc(*(this + 2), 0x68uLL);
      *(v71 + 3) = 0u;
      *(v71 + 4) = 0u;
      *(v71 + 5) = 0u;
      *(v71 + 1) = 0u;
      *(v71 + 2) = 0u;
      *v71 = *v70;
      *(v71 + 1) = v70[1];
      v72 = v70[2];
      *(v71 + 2) = v70 + 3;
      *(v71 + 3) = v72;
      if (v72)
      {
        *(v71 + 4) = v72;
      }

      v73 = &v70[v72 + 3];
      v74 = *v73;
      *(v71 + 7) = v73 + 1;
      *(v71 + 8) = v74;
      if (v74)
      {
        *(v71 + 9) = v74;
      }

      *(v71 + 12) = this;
      *(this + 73) = v71;
    }
  }

  v75 = *v43;
  if (!*v43)
  {
    *(this + 1000) = v41;
    if (v41)
    {
      goto LABEL_68;
    }

    v75 = 0;
  }

LABEL_72:
  *(this + 1001) = 0;
  if (v42)
  {
    v76 = this + 1001;
    if (!v75)
    {
LABEL_74:
      v77 = *(this + 1);
      v78 = v41 ^ 1;
      if (!*(v77 + 368))
      {
        v78 = 1;
      }

      if ((v78 & 1) == 0)
      {
        v79 = *(this + 121);
        if (v79)
        {
          *v76 = 1;
          if (*(v77 + 327) == 1)
          {
            dyld4::RuntimeState::log(this, "PrebuiltLoaderSet required for '%s' but not found at '%s'\n", *(v77 + 200), v79);
          }
        }
      }
    }
  }
}

uint64_t dyld4::PrebuiltLoaderSet::validHeader(dyld4::PrebuiltLoaderSet *this, dyld4::RuntimeState *a2)
{
  if (*this == 1936733284)
  {
    if (*(this + 1) == 799169347)
    {
      return 1;
    }

    if (*(*(a2 + 1) + 327) == 1)
    {
      dyld4::console("not using PrebuiltLoaderSet %p because versionHash (0x%08X) does not match dyld (0x%08X)\n", a2, this, *(this + 1), 799169347);
    }
  }

  else if (*(*(a2 + 1) + 327) == 1)
  {
    dyld4::console("not using PrebuiltLoaderSet %p because magic at start does not match\n", a2, this);
  }

  return 0;
}

char *DyldSharedCache::findLaunchLoaderSet(DyldSharedCache *this, const char *a2)
{
  v2 = *(this + 4);
  if (v2 < 0x168)
  {
    return 0;
  }

  v4 = *(this + 44);
  if (!v4)
  {
    return 0;
  }

  v6 = this - *(this + v2);
  v7 = &v6[v4];
  v8 = *(this + 90);
  v9 = *(this + 42);
  Diagnostics::Diagnostics(v16);
  v15 = dyld3::MachOFile::trieWalk(v16, v7, (v7 + v8), a2, v10);
  if (v15 && (v12 = dyld3::MachOFile::read_uleb128(v16, &v15, (v7 + v8), v11), v12 < *(this + 43)))
  {
    v13 = &v6[v9 + v12];
  }

  else
  {
    v13 = 0;
  }

  Diagnostics::~Diagnostics(v16);
  return v13;
}

mach_o::Error *mach_o::Error::Error(mach_o::Error *this, char *__s, ...)
{
  va_start(va, __s);
  *this = 0;
  v4 = _simple_salloc();
  *this = v4;
  _simple_vsprintf(v4, __s, va);
  return this;
}

uint64_t DyldSharedCache::dynamicRegion(DyldSharedCache *this)
{
  if (*(this + *(this + 62)) ^ 0x7461645F646C7964 | *(this + *(this + 62) + 6) ^ 0x7620202020617461)
  {
    return 0;
  }

  else
  {
    return this + *(this + 62);
  }
}

uint64_t DyldSharedCache::DynamicRegion::cachePath(DyldSharedCache::DynamicRegion *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

uint64_t dyld4::Atlas::SharedCache::SharedCache(uint64_t a1, uint64_t a2, dyld4::FileRecord *a3, atomic_uint **a4, unint64_t a5, char a6)
{
  *a1 = a2;
  dyld4::FileRecord::FileRecord(a1 + 8, a3);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  v10 = *a4;
  *(a1 + 144) = *a4;
  if (!v10)
  {
    *(a1 + 152) = 0;
    *(a1 + 160) = a5;
    *(a1 + 168) = a6;
    goto LABEL_58;
  }

  atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
  v11 = *(a1 + 144);
  *(a1 + 152) = 0;
  *(a1 + 160) = a5;
  *(a1 + 168) = a6;
  if (!v11 || (v12 = *(v11 + 8)) == 0)
  {
LABEL_58:
    dyld4::Atlas::SharedCache::SharedCache();
  }

  v13 = vm_page_size;
  v14 = dyld4::Atlas::Mapper::map(v12, a5, vm_page_size);
  v15 = *(a1 + 120);
  v16 = *(a1 + 128);
  *(a1 + 112) = v12;
  *(a1 + 120) = v13;
  *(a1 + 128) = v14;
  v17 = *(a1 + 136);
  *(a1 + 136) = v18;
  v55 = a5;
  if (v16 && v17)
  {
    munmap((v16 & -vm_page_size), v15 + v16 - (v16 & -vm_page_size));
    v14 = *(a1 + 128);
  }

  v19 = *(v14 + 4);
  if (v19 < 0x18C)
  {
    v20 = *(v14 + 6) + 32 * *(v14 + 7);
  }

  else
  {
    v20 = *(v14 + 98) + 56 * *(v14 + 99);
  }

  if (v20 > vm_page_size)
  {
    v21 = *(a1 + 144);
    v22 = v21 ? *(v21 + 8) : 0;
    v14 = dyld4::Atlas::Mapper::map(v22, *(a1 + 160), v20);
    v23 = *(a1 + 120);
    v24 = *(a1 + 128);
    *(a1 + 112) = v22;
    *(a1 + 120) = v20;
    *(a1 + 128) = v14;
    v25 = *(a1 + 136);
    *(a1 + 136) = v26;
    if (v24)
    {
      if (v25)
      {
        munmap((v24 & -vm_page_size), v23 + v24 - (v24 & -vm_page_size));
        v14 = *(a1 + 128);
      }
    }
  }

  *(a1 + 88) = *(v14 + 88);
  v27 = *(v14 + 28);
  *(a1 + 152) = *(a1 + 160) - v27;
  if (*(v14 + 4) < 0x18Cu)
  {
    v29 = *(v14 + 79);
    if (v29)
    {
      v30 = 0;
      v31 = &v14[*(v14 + 78) + 8];
      do
      {
        if (v30 <= *v31 + *(v31 - 1))
        {
          v30 = *v31 + *(v31 - 1);
        }

        v31 += 56;
        --v29;
      }

      while (v29);
    }

    else
    {
      v30 = 0;
    }

    if (v19 >= 0x18C && *(v14 + 99))
    {
      v32 = 0;
      v33 = v14;
      do
      {
        v34 = *(v33 + 4);
        v35 = &v14[*(v33 + 98)];
        v36 = &v35[24 * v32 + 16];
        v37 = &v35[56 * v32 + 16];
        if (v34 < 0x1C9)
        {
          v37 = v36;
        }

        v38 = *(a1 + 144);
        if (v38)
        {
          v39 = *(v38 + 8);
        }

        else
        {
          v39 = 0;
        }

        v40 = *v37;
        v41 = vm_page_size;
        v42 = dyld4::Atlas::Mapper::map(v39, *v37 + v55, vm_page_size);
        v44 = v42;
        v45 = v43;
        if (*(v42 + 4) < 0x18Cu)
        {
          v46 = *(v42 + 6) + 32 * *(v42 + 7);
        }

        else
        {
          v46 = *(v42 + 98) + 56 * *(v42 + 99);
        }

        if (v46 <= vm_page_size)
        {
          v46 = v41;
          v49 = v42;
          v50 = v43;
        }

        else
        {
          v47 = *(a1 + 144);
          if (v47)
          {
            v48 = *(v47 + 8);
          }

          else
          {
            v48 = 0;
          }

          v49 = dyld4::Atlas::Mapper::map(v48, v40 + v55, v46);
          v50 = v51;
          if (v44 && (v45 & 1) != 0)
          {
            munmap((v44 & -vm_page_size), &v44[v41 - (v44 & -vm_page_size)]);
          }
        }

        v52 = *(v49 + 79);
        if (v52)
        {
          v53 = &v49[*(v49 + 78) + 8];
          do
          {
            if (v30 <= *v53 + *(v53 - 1))
            {
              v30 = *v53 + *(v53 - 1);
            }

            v53 += 56;
            --v52;
          }

          while (v52);
        }

        if (v49 && (v50 & 1) != 0)
        {
          munmap((v49 & -vm_page_size), &v49[v46 - (v49 & -vm_page_size)]);
        }

        ++v32;
        v33 = *(a1 + 128);
      }

      while (v32 < *(v33 + 99));
      v27 = *(v33 + 28);
    }

    v28 = v30 - v27;
  }

  else
  {
    v28 = *(v14 + 29);
  }

  *(a1 + 104) = v28;
  return a1;
}

lsl::Bitmap *dyld4::Atlas::ProcessSnapshot::addSharedCache(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 64);
  lsl::Allocator::makeUnique<dyld4::Atlas::SharedCache,dyld4::Atlas::SharedCache>(*a1, a2, &v13);
  if (&v13 != v3)
  {
    v5 = *v3;
    *v3 = v13;
    v13 = v5;
  }

  lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(&v13, v4);
  v6 = *a1;
  v7 = *(*(*(a1 + 64) + 128) + 144);
  v8 = lsl::Allocator::aligned_alloc(*a1, 8uLL, 0x20uLL);
  lsl::Bitmap::Bitmap(v8, v6, v7);
  result = *(a1 + 56);
  *(a1 + 56) = v8;
  if (result)
  {
    lsl::Bitmap::~Bitmap(result, v9);
    return lsl::Allocator::freeObject(v11, v12);
  }

  return result;
}

__n128 lsl::Allocator::makeUnique<dyld4::Atlas::SharedCache,dyld4::Atlas::SharedCache>@<Q0>(lsl::Allocator::Pool **a1@<X0>, uint64_t a2@<X1>, lsl::Allocator::Pool **a3@<X8>)
{
  v5 = lsl::Allocator::aligned_alloc(a1, 8uLL, 0xB0uLL);
  *v5 = *a2;
  dyld4::FileRecord::FileRecord(v5 + 8, (a2 + 8));
  v6 = *(a2 + 88);
  *(v5 + 13) = *(a2 + 104);
  *(v5 + 88) = v6;
  *(v5 + 15) = 0;
  *(v5 + 16) = 0;
  *(v5 + 136) = 0;
  *(v5 + 14) = 0;
  dyld4::Atlas::Mapper::Pointer<dyld3::MachOLoaded>::swap(v5 + 14, (a2 + 112));
  *(v5 + 18) = 0;
  if (v5 != a2)
  {
    *(v5 + 18) = *(a2 + 144);
    *(a2 + 144) = 0;
  }

  result = *(a2 + 152);
  *(v5 + 168) = *(a2 + 168);
  *(v5 + 152) = result;
  *a3 = v5;
  return result;
}

uint64_t *lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 144);
    if (v4)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v4, a2);
    }

    v5 = *(v3 + 128);
    if (v5 && *(v3 + 136) == 1)
    {
      dyld4::Atlas::Mapper::unmap(*(v3 + 112), v5, *(v3 + 120));
    }

    dyld4::FileRecord::~FileRecord((v3 + 8));
    lsl::Allocator::freeObject(*a1, v6);
  }

  return a1;
}

unsigned __int8 *lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[98];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 248) >= 0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 31;
  }

  if ((*(*&result[8 * v1] + 248) & 0x7F) == v4)
  {
    if (!result[98])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v3[v5] + 248) >= 0)
      {
        v7 = 15;
      }

      else
      {
        v7 = 31;
      }

      if ((*(v3[v5] + 248) & 0x7F) != v7)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (v1 != v5);
    if (!v6)
    {
LABEL_15:
      if (*(*v3 + 248) >= 0)
      {
        v8 = 15;
      }

      else
      {
        v8 = 31;
      }

      if ((*(*v3 + 248) & 0x7F) == v8)
      {
        result = lsl::Allocator::aligned_alloc(*(*result + 8), 0x100uLL, 0x100uLL);
        v9 = **v2;
        result[248] = 0;
        *result = 0u;
        *(result + 1) = 0u;
        *(result + 2) = 0u;
        *(result + 3) = 0u;
        *(result + 4) = 0u;
        *(result + 5) = 0u;
        *(result + 6) = 0u;
        *(result + 14) = 0;
        *(result + 15) = v9;
        **v2 = result;
        if (v2[98] && (result = memmove(v2 + 89, v2 + 88, v2[98]), v2[98]))
        {
          result = memmove(v3 + 1, v3, 8 * v2[98]);
          LOBYTE(v1) = v2[98] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[88] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[98] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 88;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::splitChild(v3[v12], v11[v12], *(*v2 + 8));
        v14 = v3[v12];
        if (*(v14 + 248) < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 120);
        v17 = v2[v12 + 89];
        if (v17 > (*(v16 + 248) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 89] = v17 + (~*(v16 + 248) | 0x80);
          v19 = v3[v12];
          if (*(v19 + 248) < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 120);
        }

        ++v12;
      }

      while (v13 + 2 < v2[98]);
    }
  }

  return result;
}

uint64_t lsl::Allocator::freeObject(uint64_t this, void *a2)
{
  if (this)
  {
    v2 = this & 0xF0FFFFFFFFFFFFFFLL;
    v3 = ((this & 0xF0FFFFFFFFFFFFFFLL) - 16);
    v4 = lsl::Allocator::AllocationMetadata::pool(v3, 1);
    *(*v4 + 16) += v3 - (*(v2 - 8) & 0xFFFFFFFFFFFFFFFCLL) + 16;

    return lsl::Allocator::AllocationMetadata::deallocate(v3);
  }

  return this;
}

uint64_t lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(uint64_t this, void *a2)
{
  if (!atomic_fetch_add(this, 0xFFFFFFFF))
  {
    v3 = this;
    v4 = *(this + 8);
    if (v4)
    {
      dyld4::Atlas::Mapper::~Mapper(v4);
      lsl::Allocator::freeObject(*(v3 + 8), v5);
    }

    return lsl::Allocator::freeObject(v3, a2);
  }

  return this;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Dictionary>(uint64_t a1, const void *a2, size_t a3)
{
  v5 = a1 + 48;
  v6 = *(a1 + 48);
  v7 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x18uLL);
  PropertyList::String::String(v7, v6, a2, a3);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v5 - 32, *(v5 - 16) + 1);
  v8 = *(v5 - 24);
  v9 = *(v5 - 16);
  *(v5 - 16) = v9 + 1;
  *(v8 + 8 * v9) = v7;
  v10 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x50uLL);
  PropertyList::Dictionary::Dictionary(v10, v6);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v5, *(v5 + 16) + 1);
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  *(v5 + 16) = v12 + 1;
  *(v11 + 8 * v12) = v10;
  return v10;
}

PropertyList::Bitmap *PropertyList::Bitmap::Bitmap(PropertyList::Bitmap *this, lsl::Allocator *a2, uint64_t a3)
{
  *this = &off_A4170;
  *(this + 1) = 0x27FFFFFFFFFFFFFELL;
  *(this + 2) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  v5 = 0;
  lsl::Vector<std::byte>::insert(this + 16, 0, (a3 + 7) >> 3, &v5);
  *this = &off_A4210;
  return this;
}

unsigned __int8 *lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator--(unsigned __int8 *result)
{
  v1 = result[98];
  v2 = *result;
  if (result[98])
  {
    if (v1 == *(*result + 32))
    {
      v3 = result + 88;
      v4 = v1 - 1;
      v5 = &result[v1 + 87];
      v6 = *v5;
      if (!result[(v1 - 1) + 88])
      {
        if (!*v5)
        {
          do
          {
            LODWORD(v1) = v1 - 1;
            result[98] = v1;
            v4 = v1 - 1;
            v6 = v3[v4];
          }

          while (!v6);
        }

        v5 = &v3[v4];
      }
    }

    else
    {
      v15 = result + 8;
      v16 = result + 88;
      do
      {
        v17 = *&v15[8 * v1 - 8];
        if (*(v17 + 248) < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v18 = *(v17 + 8 * v16[v1 - 1] + 120);
        *&v15[8 * v1] = v18;
        v16[v1] = *(v18 + 248) & 0x7F;
        LOBYTE(v1) = result[98] + 1;
        result[98] = v1;
      }

      while (*(v2 + 32) != v1);
      v19 = &v16[v1];
      v20 = *(v19 - 1);
      v5 = v19 - 1;
      v6 = v20;
    }
  }

  else
  {
    if (*(*result + 32))
    {
      v7 = 0;
      v8 = *v2;
      v9 = result + 8;
      do
      {
        *&v9[8 * v7] = v8;
        result[v7 + 88] = *(v8 + 248) & 0x7F;
        v10 = result[98];
        v11 = *(v2 + 32);
        if (v10 + 1 != v11)
        {
          v12 = *&v9[8 * v10];
          v13 = *(v12 + 248);
          if (v13 < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          v8 = *(v12 + 8 * v13 + 120);
        }

        v7 = v10 + 1;
        result[98] = v7;
      }

      while (v11 > v7);
      v14 = v7 - 1;
    }

    else
    {
      v14 = -1;
    }

    v5 = &result[v14 + 88];
    v6 = *v5;
  }

  *v5 = v6 - 1;
  return result;
}

uint64_t lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::deallocate(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 248);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 8 * (v4 + 1);
    v6 = (a1 + 120);
    do
    {
      v7 = *v6++;
      lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::deallocate(v7, a2);
      v5 -= 8;
    }

    while (v5);
  }

  v8 = 0;
  v9 = a1;
  do
  {
    v10 = lsl::UniquePtr<dyld4::Atlas::Image>::~UniquePtr(v9);
    ++v8;
    if (*(a1 + 248) >= 0)
    {
      v11 = 15;
    }

    else
    {
      v11 = 31;
    }

    v9 = v10 + 1;
  }

  while (v8 < v11);

  return lsl::Allocator::free(a2, a1);
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Bitmap,unsigned long>(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x30uLL);
  PropertyList::Bitmap::Bitmap(v12, v8, *a4);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void dyld4::Atlas::Mapper::~Mapper(dyld4::Atlas::Mapper *this)
{
  if (*(this + 4))
  {
    dyld4::Atlas::Mapper::~Mapper();
  }

  v14 = *(this + 5);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 + 32 * v2;
    do
    {
      v7 = *(v3 + 24);
      if (v7 != -1)
      {
        v8 = v5;
        if (v4)
        {
          v9 = 4 * v4;
          v8 = v5;
          while (*v8 != v7)
          {
            ++v8;
            v9 -= 4;
            if (!v9)
            {
              goto LABEL_11;
            }
          }
        }

        if (v8 == &v5[v4])
        {
LABEL_11:
          lsl::Vector<unsigned int>::reserve(&v14, v4 + 1);
          v10 = *(v3 + 24);
          v5 = v15;
          v11 = v16;
          v4 = ++v16;
          v15[v11] = v10;
        }
      }

      v3 += 32;
    }

    while (v3 != v6);
    if (v4)
    {
      v12 = 4 * v4;
      do
      {
        v13 = *v5++;
        close(v13);
        v12 -= 4;
      }

      while (v12);
      v5 = v15;
    }

    if (v5)
    {
      lsl::Vector<unsigned int>::resize(&v14, 0);
    }

    v3 = *(this + 1);
  }

  if (v3)
  {
    lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(this, 0);
  }
}

void lsl::Bitmap::~Bitmap(lsl::Bitmap *this, void *a2)
{
  *(this + 3) = 0;
  v3 = *(this + 1);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v3)
  {
    lsl::Allocator::freeObject(v3, a2);
    v5 = *(this + 1);
    if (v5)
    {
      lsl::Allocator::freeObject(v5, v4);
    }
  }
}

unint64_t dyld4::ProcessConfig::Security::getAMFI(dyld4::ProcessConfig::Security *this, const dyld4::ProcessConfig::Process *a2, dyld4::SyscallDelegate *a3)
{
  *v21 = 0;
  isRestricted = mach_o::Header::isRestricted(*(a2 + 1));
  isFairPlayEncrypted = mach_o::Header::isFairPlayEncrypted(*(a2 + 1), &v21[1], v21);
  v13 = dyld4::SyscallDelegate::amfiFlags(a3, isRestricted, isFairPlayEncrypted, v8, v9, v10, v11, v12);
  v14 = *(a2 + 18);
  v15 = _simple_getenv(*(a2 + 21), "DYLD_AMFI_FAKE");
  if (v15)
  {
    v16 = (v14 & 2) == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && *(this + 1) == 1)
  {
    if (*v15 == 48)
    {
      v15 += 2 * (v15[1] == 120);
    }

    v17 = 0;
    v13 = 0;
    do
    {
      v18 = v15[v17];
      v19 = v18 - 48;
      if ((v18 - 48) >= 0xA)
      {
        if ((v18 - 65) > 5)
        {
          if ((v18 - 97) > 5)
          {
            return v13;
          }

          v19 = v18 - 87;
        }

        else
        {
          v19 = v18 - 55;
        }
      }

      v13 = 16 * v13 + v19;
      ++v17;
    }

    while (v17 != 16);
  }

  return v13;
}

uint64_t mach_o::Header::hasSection(mach_o::Error *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK6mach_o6Header10hasSectionE7CStringS1_b_block_invoke;
  v8[3] = &unk_A5518;
  v9 = a6;
  v8[6] = a5;
  v8[7] = a2;
  v8[8] = a3;
  v8[4] = &v10;
  v8[5] = a4;
  mach_o::Header::forEachSection(a1, v8);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t ___ZNK6mach_o6Header10hasSectionE7CStringS1_b_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 8);
  if (v4 == *(result + 48))
  {
    v6 = result;
    result = _platform_memcmp(*a2, *(result + 40), v4);
    if (!result)
    {
      if (*(v6 + 72) == 1 && (v7 = *(v6 + 64), *(a2 + 24) >= v7) && (result = std::string_view::compare[abi:nn200100]((a2 + 16), 0, v7, *(v6 + 56), *(v6 + 64)), !result) || (v8 = *(a2 + 24), v8 == *(v6 + 64)) && (result = _platform_memcmp(*(a2 + 16), *(v6 + 56), v8), !result))
      {
        *(*(*(v6 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t mach_o::Header::findFairPlayEncryptionLoadCommand(mach_o::Header *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header33findFairPlayEncryptionLoadCommandEv_block_invoke;
  v3[3] = &unk_A5590;
  v3[4] = &v4;
  mach_o::Header::forEachLoadCommand(this, v3, &v8);
  mach_o::Error::~Error(&v8);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t mach_o::Header::isFairPlayEncrypted(mach_o::Header *this, unsigned int *a2, unsigned int *a3)
{
  result = mach_o::Header::findFairPlayEncryptionLoadCommand(this);
  if (result)
  {
    v6 = *(result + 16);
    *a2 = *(result + 8);
    v7 = *(result + 12);
    result = v6 == 1;
  }

  else
  {
    v7 = 0;
    *a2 = 0;
  }

  *a3 = v7;
  return result;
}

void *boot_destroy(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*result)
  {
    v9 = result;
    for (i = 0; i != 9; ++i)
    {
      v11 = __roots[i];
      v12 = v11[2];
      if ((v12 & 0x8000000000000000) != 0)
      {
        dyld_halt("invalid offset: %lld", a2, a3, a4, a5, a6, a7, a8, v11[2]);
      }

      closefd_optional((v8 + v12), *v11);
    }

    result = ignition_test_BRA(4);
    *v9 = 0;
  }

  return result;
}

uint64_t dyld3::reuseExistingCache(uint64_t a1, uint64_t a2)
{
  __s1 = 0;
  if (__shared_region_check_np(&__s1))
  {
    return 0;
  }

  v5 = __s1;
  if (_platform_strcmp(__s1, "dyld_v1  arm64e"))
  {
    result = 0;
    *(a2 + 16) = "existing shared cache in memory is not compatible";
  }

  else
  {
    *a2 = v5;
    *(a2 + 8) = DyldSharedCache::slide(v5);
    v6 = *(v5 + 13);
    v7 = v6 == 2 && *(v5 + 114) == 0;
    *(a2 + 25) = v6 == 0 || v7;
    v8 = DyldSharedCache::dynamicRegion(v5);
    if (v8)
    {
      v10 = v8;
      DyldSharedCache::DynamicRegion::getDyldCacheFileID(v8, (a2 + 28));
      if (*(a1 + 6) == 1)
      {
        v11 = DyldSharedCache::DynamicRegion::osCryptexPath(v10);
        dyld4::console("re-using existing shared cache (%s):\n", v12, v11);
        dyld3::verboseSharedCacheMappings(v5, v13);
      }
    }

    else
    {
      dyld4::console("mapped cache does not contain dynamic config data\n", v9);
    }

    return 1;
  }

  return result;
}

char *dyld3::loadDyldCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 4) == 1)
  {

    return dyld3::mapSplitCachePrivate(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (dyld3::reuseExistingCache(a1, a2))
  {
    return (a2[2] == 0);
  }

  else
  {

    return dyld3::mapSplitCacheSystemWide(a1, a2, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t dyld3::kdebug_trace_dyld_cache(unsigned __int8 (*this)[16], fsobj_id a2, void *a3, void *a4, unsigned __int8 *a5, void *a6, void *a7, void *a8)
{
  v14 = a2;
  result = kdebug_is_enabled(0x1F050028u, *&a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    result = dyld3::MachOFile::inDyldCache(&dword_0);
    if ((result & 1) == 0)
    {
      bzero(v15, 0x400uLL);
      if (fsgetpath(v15, 0x400uLL, &v14, this) == -1)
      {
        v15[0] = 0;
      }

      v12 = v14;
      v13 = a3;
      return dyld3::kdebug_trace_dyld_region((&dword_8 + 2), 0, 0, v15, a4, this, v12, v13, *&v14);
    }
  }

  return result;
}

DyldSharedCache *dyld4::SyscallDelegate::getDyldCache(uint64_t a1, uint64_t a2, DyldSharedCache **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 6);
  v10 = *(a2 + 16);
  v18[0] = *a2;
  *(v18 + 6) = v9;
  v18[2] = v10;
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  BYTE5(v18[0]) = 0;
  dyld3::loadDyldCache(v18, a3, a3, a4, a5, a6, a7, a8);
  result = *a3;
  if (*a3)
  {
    v21 = 0uLL;
    DyldSharedCache::getUUID(result, &v21);
    v12 = FileIdTuple::inode((a3 + 28));
    v13 = FileIdTuple::fsID((a3 + 28));
    return dyld3::kdebug_trace_dyld_cache(v12, v13, *a3, &v21, v14, v15, v16, v17);
  }

  return result;
}

ssize_t dyld4::ProcessConfig::DyldCache::setPlatformOSVersion(DyldSharedCache **this, const dyld4::ProcessConfig::Process *a2)
{
  v4 = *this;
  if (*(v4 + 4) < 0x170u)
  {
    if (*(a2 + 26))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 12) == &mach_o::PlatformInfo_driverKit::singleton;
    }

    if (v7)
    {
      v8 = "/System/DriverKit/usr/lib/system/libdyld.dylib";
    }

    else
    {
      v8 = "/usr/lib/system/libdyld.dylib";
    }

    ImageFromPath = DyldSharedCache::getImageFromPath(v4, v8);
    if (ImageFromPath)
    {
      mach_o::Header::platformAndVersions(ImageFromPath, &v12);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = ___ZN5dyld413ProcessConfig9DyldCache20setPlatformOSVersionERKNS0_7ProcessE_block_invoke;
      v11[3] = &__block_descriptor_tmp_73;
      v11[4] = this;
      v11[5] = a2;
      return mach_o::PlatformAndVersions::unzip(&v12, v11);
    }

    else
    {

      return dyld4::console("initializeCachePlatformOSVersion(): libdyld.dylib not found for OS version info\n", v10);
    }
  }

  else
  {
    mach_o::Platform::Platform(&v12, *(v4 + 54));
    if (*(a2 + 12) == v12 && *(a2 + 26) == v13)
    {
      result = mach_o::Platform::Platform(&v12, *(*this + 54));
      this[18] = v12;
      *(this + 38) = v13;
      v6 = *(*this + 91);
    }

    else
    {
      result = mach_o::Platform::Platform(&v12, *(*this + 92));
      this[18] = v12;
      *(this + 38) = v13;
      v6 = *(*this + 93);
    }

    *(this + 40) = v6;
  }

  return result;
}

mach_o::Header *DyldSharedCache::objcHeaderInfoRO(DyldSharedCache *this)
{
  if (*(this + 4) >= 0x1D9u)
  {
    v3 = *(this + *(this + 58) + 8);
    if (v3)
    {
      return (this + v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = DyldSharedCache::oldObjcOpt(this);
    if (result)
    {
      v2 = *(result + 3);
      if (v2)
      {
        return (result + v2);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

mach_o::Header *DyldSharedCache::objcHeaderInfoRW(DyldSharedCache *this)
{
  if (*(this + 4) >= 0x1D9u)
  {
    v3 = *(this + *(this + 58) + 16);
    if (v3)
    {
      return (this + v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = DyldSharedCache::oldObjcOpt(this);
    if (result)
    {
      v2 = *(result + 6);
      if (v2)
      {
        return (result + v2);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t DyldSharedCache::swiftOpt(DyldSharedCache *this)
{
  if (*(this + 4) < 0x181u)
  {
    return 0;
  }

  v2 = *(this + 47);
  if (v2)
  {
    return this + v2;
  }

  else
  {
    return 0;
  }
}

mach_o::Header *DyldSharedCache::objcClassHashTable(DyldSharedCache *this)
{
  if (*(this + 4) >= 0x1D9u)
  {
    v3 = *(this + *(this + 58) + 32);
    if (v3)
    {
      return (this + v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = DyldSharedCache::oldObjcOpt(this);
    if (result)
    {
      v2 = *(result + 8);
      if (v2)
      {
        return (result + v2);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

mach_o::Header *DyldSharedCache::objcProtocolHashTable(DyldSharedCache *this)
{
  if (*(this + 4) >= 0x1D9u)
  {
    v3 = *(this + *(this + 58) + 40);
    if (v3)
    {
      return (this + v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = DyldSharedCache::oldObjcOpt(this);
    if (result)
    {
      v2 = *(result + 9);
      if (v2)
      {
        return (result + v2);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

mach_o::Header *DyldSharedCache::objcSelectorHashTable(DyldSharedCache *this)
{
  if (*(this + 4) >= 0x1D9u)
  {
    v3 = *(this + *(this + 58) + 24);
    if (v3)
    {
      return (this + v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = DyldSharedCache::oldObjcOpt(this);
    if (result)
    {
      v2 = *(result + 2);
      if (v2)
      {
        return (result + v2);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t DyldSharedCache::imagesCount(DyldSharedCache *this)
{
  v1 = 28;
  if (*(this + 4) > 0x1C3u)
  {
    v1 = 452;
  }

  return *(this + v1);
}

int **jettison(int **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*result)
  {
    v9 = result;
    v10 = *v8;
    if (*v8 > 2)
    {
      if (v10 != 3)
      {
        if (v10 != 4)
        {
          if (v10 != 5)
          {
            goto LABEL_17;
          }

          closefd_optional(v8 + 8, "supplemental graft point");
        }

        closefd_optional(v8 + 7, "prereboot os graft point");
      }

      closefd_optional(v8 + 6, "group dir");
    }

    else
    {
      if (!v10)
      {
LABEL_15:
        closefd_optional(v8 + 1, "preboot");
        result = closefd(v8 + 2, "shared cache");
        *v9 = 0;
        return result;
      }

      if (v10 == 1)
      {
LABEL_14:
        closefd_optional(v8 + 3, "xART");
        goto LABEL_15;
      }

      if (v10 != 2)
      {
LABEL_17:
        dyld_halt("unsupported payload version: 0x%x", a2, a3, a4, a5, a6, a7, a8, *v8);
      }
    }

    closefd_optional(v8 + 4, "os graft point");
    closefd_optional(v8 + 5, "app graft point");
    goto LABEL_14;
  }

  return result;
}

void dyld4::CacheFinder::~CacheFinder(dyld4::SyscallDelegate **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 52) == 1)
  {
    v8 = (this + 2);
    jettison(&v8, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (*this != -1)
  {
    dyld4::SyscallDelegate::close(this[1], *this);
  }
}

uint64_t closefd(int *a1, const char *a2)
{
  result = close(*a1);
  if (result)
  {
    v5 = boot_get();
    v6 = (*v5)[1];
    v7 = (*v5)[2];
    v8 = *__error();
    v13 = *__error();
    ignition_halt(v6, v8, v7, "failed to close %s: fd = %d: %d", v9, v10, v11, v12, a2);
  }

  *a1 = -1;
  return result;
}

dyld4::ProcessConfig::PathOverrides *dyld4::ProcessConfig::PathOverrides::PathOverrides(dyld4::ProcessConfig::PathOverrides *this, const dyld4::ProcessConfig::Process *a2, const dyld4::ProcessConfig::Security *a3, const dyld4::ProcessConfig::Logging *a4, const dyld4::ProcessConfig::DyldCache *a5, dyld4::SyscallDelegate *a6, lsl::Allocator::Pool **a7)
{
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 36) = *(a3 + 21) ^ 1;
  if (*(a3 + 19) == 1)
  {
    strcpy(&__s, "dyld config: ");
    v14 = *(a2 + 21);
    v15 = *v14;
    if (*v14)
    {
      v16 = v14 + 1;
      do
      {
        dyld4::ProcessConfig::PathOverrides::addEnvVar(this, a2, a3, a7, v15, 0, &__s);
        v17 = *v16++;
        v15 = v17;
      }

      while (v17);
    }

    if (_platform_strlen(&__s) > 0xF)
    {
      qword_A8310 = lsl::Allocator::strdup(a7, &__s);
    }
  }

  else if (*(a4 + 8) == 1)
  {
    v18 = *(a2 + 21);
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      v21 = v18 + 1;
      do
      {
        v20 |= _platform_strncmp(v19, "DYLD_", 5uLL) == 0;
        v22 = *v21++;
        v19 = v22;
      }

      while (v22);
      if (v20)
      {
        dyld4::console("Note: DYLD_*_PATH env vars disabled by AMFI\n", a2);
      }
    }
  }

  if (*(a3 + 24) == 1)
  {
    v23 = *(a2 + 1);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 0x40000000;
    v28[2] = ___ZN5dyld413ProcessConfig13PathOverridesC2ERKNS0_7ProcessERKNS0_8SecurityERKNS0_7LoggingERKNS0_9DyldCacheERNS_15SyscallDelegateERN3lsl9AllocatorE_block_invoke;
    v28[3] = &__block_descriptor_tmp_89;
    v28[4] = this;
    v28[5] = a2;
    v28[6] = a3;
    v28[7] = a7;
    mach_o::Header::forDyldEnv(v23, v28);
  }

  else if (*(a4 + 8) == 1)
  {
    *&__s = 0;
    *(&__s + 1) = &__s;
    v30 = 0x2000000000;
    v31 = 0;
    v24 = *(a2 + 1);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 0x40000000;
    v27[2] = ___ZN5dyld413ProcessConfig13PathOverridesC2ERKNS0_7ProcessERKNS0_8SecurityERKNS0_7LoggingERKNS0_9DyldCacheERNS_15SyscallDelegateERN3lsl9AllocatorE_block_invoke_2;
    v27[3] = &unk_A0368;
    v27[4] = &__s;
    mach_o::Header::forDyldEnv(v24, v27);
    if (*(*(&__s + 1) + 24) == 1)
    {
      dyld4::console("Note: LC_DYLD_ENVIRONMENT env vars disabled by AMFI\n", v25);
    }

    _Block_object_dispose(&__s, 8);
  }

  if (*(a5 + 12))
  {
    *(this + 16) = *(a5 + 11);
  }

  *&__s = *(a2 + 12);
  DWORD2(__s) = *(a2 + 26);
  dyld4::ProcessConfig::PathOverrides::processVersionedPaths(this, a2, a6, a5, &__s, *(a2 + 24), a7);
  return this;
}

uint64_t dyld4::ProcessConfig::PathOverrides::processVersionedPaths(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v13 = a1[4];
  v14 = a1[11];
  if (v13 | v14)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1174405120;
    v20[2] = ___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke;
    v20[3] = &__block_descriptor_tmp_101;
    v20[4] = a1;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a7;
    v20[8] = *a5;
    v21 = *(a5 + 8);
    v22 = a6;
    dyld4::ProcessConfig::PathOverrides::forEachInColonList(v13, v14, &v23, v20);
  }

  result = a1[5];
  v16 = a1[10];
  if (result | v16)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1174405120;
    v17[2] = ___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke_102;
    v17[3] = &__block_descriptor_tmp_110;
    v17[4] = a1;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = a7;
    v17[8] = *a5;
    v18 = *(a5 + 8);
    v19 = a6;
    return dyld4::ProcessConfig::PathOverrides::forEachInColonList(result, v16, &v23, v17);
  }

  return result;
}

unint64_t dyld4::ProcessConfig::Process::evaluateFunctionVariantFlags(void *a1, uint64_t a2)
{
  if (*(a2 + 220))
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = _simple_getenv(*(a2 + 184), "LIBPLATFORM_NO_OVERREAD");
  v6 = v4 | 8;
  if (!v5)
  {
    v6 = v4;
  }

  if (*(a2 + 227))
  {
    v6 |= 4uLL;
  }

  a1[28] = v6;
  a1[29] = 0;
  v7 = *(a2 + 368);
  if (v7 && DyldSharedCache::dynamicRegion(v7) && (v8 = DyldSharedCache::dynamicRegion(*(a2 + 368)), DyldSharedCache::DynamicRegion::version(v8)))
  {
    v9 = DyldSharedCache::dynamicRegion(*(a2 + 368));
    a1[30] = DyldSharedCache::DynamicRegion::getSystemWideFunctionVariantFlags(v9);
    a1[31] = v10;
    v11 = DyldSharedCache::dynamicRegion(*(a2 + 368));
    result = DyldSharedCache::DynamicRegion::getProcessorFunctionVariantFlags(v11);
  }

  else
  {
    v14 = 5;
    if (*(a2 + 289))
    {
      v14 = 3;
    }

    if (*(a2 + 304))
    {
      v14 |= 8uLL;
    }

    a1[30] = v14;
    a1[31] = 0;
    result = dyld4::ProcessConfig::evaluateProcessorSpecificFunctionVariantFlags();
  }

  a1[32] = result;
  a1[33] = v13;
  return result;
}

uint64_t mach_o::Header::hasLoadCommand(mach_o::Header *this, int a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header14hasLoadCommandEj_block_invoke;
  v4[3] = &unk_A50C0;
  v5 = a2;
  v4[4] = &v6;
  mach_o::Header::forEachLoadCommand(this, v4, &v10);
  mach_o::Error::~Error(&v10);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t ___ZNK6mach_o6Header14hasLoadCommandEj_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

dyld4::RuntimeState *dyld4::RuntimeState::RuntimeState(dyld4::RuntimeState *this, const dyld4::ProcessConfig *a2, dyld4::RuntimeLocks *a3, lsl::Allocator::Pool **a4)
{
  *this = &off_A01F0;
  *(this + 1) = a2;
  *(this + 2) = a4;
  *(this + 3) = 0;
  *(this + 4) = a4;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 8) = a4;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 14) = a3;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 22) = a4;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  *(this + 26) = a4;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  *(this + 30) = a4;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 34) = a4;
  *(this + 280) = 0u;
  *(this + 37) = 0;
  *(this + 38) = a4;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  *(this + 42) = a4;
  *(this + 344) = 0u;
  *(this + 45) = 0;
  *(this + 46) = a4;
  *(this + 73) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 376) = 0u;
  dyld4::FileManager::FileManager((this + 592), a4, a2);
  *(this + 78) = a4;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 89) = 0;
  *(this + 90) = a4;
  *(this + 91) = 0;
  *(this + 46) = 0u;
  *(this + 94) = a4;
  *(this + 95) = 0;
  *(this + 48) = 0u;
  *(this + 98) = a4;
  *(this + 99) = 0;
  *(this + 50) = 0u;
  *(this + 102) = a4;
  *(this + 824) = 0u;
  *(this + 105) = 0;
  *(this + 106) = a4;
  *(this + 856) = 0u;
  *(this + 109) = 0;
  *(this + 110) = a4;
  *(this + 888) = 0u;
  *(this + 113) = 0;
  *(this + 114) = a4;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 920) = 0u;
  *(this + 63) = 0u;
  *(this + 128) = a4;
  *(this + 131) = 0;
  *(this + 1032) = 0u;
  *(this + 132) = a4;
  *(this + 135) = 0;
  *(this + 272) = 0;
  *(this + 1064) = 0u;
  *(this + 137) = -1;
  *(this + 276) = -1;
  *(this + 140) = 0;
  *(this + 1108) = 0;
  lsl::ProtectedStack::ProtectedStack((this + 1128), *(*(this + 1) + 225));
  return this;
}

dyld4::FileManager *dyld4::FileManager::FileManager(dyld4::FileManager *this, lsl::Allocator::Pool **a2, const dyld4::SyscallDelegate *a3)
{
  *this = a3;
  *(this + 1) = a2;
  v5 = lsl::Allocator::aligned_alloc(a2, 8uLL, 0x28uLL);
  *v5 = 0;
  *(v5 + 1) = a2;
  *(v5 + 3) = 0;
  *(v5 + 32) = 0;
  *(this + 2) = v5;
  return this;
}

void *lsl::ProtectedStack::allocateStack(lsl::ProtectedStack *this)
{
  address = 0;
  if (vm_allocate(mach_task_self_, &address, 0x84000uLL, 1006632961))
  {
    v8 = "failed to allocate stack";
    goto LABEL_16;
  }

  if (mmap(address, 0x4000uLL, 0, 4114, -1, 0) == -1)
  {
    v8 = "failed to protect guard page";
    goto LABEL_16;
  }

  v2 = address + 0x4000;
  result = mmap((address + 0x4000), 0x80000uLL, 3, 528402, -1, 0);
  if (result == -1)
  {
    v8 = "failed to mmap ";
LABEL_16:
    dyld4::halt(v8, 0);
  }

  v4 = (this + 8);
  if (v2)
  {
    *v4 = v2;
    v5 = v2 + 0x80000;
    if (v2 == -524288)
    {
      v6 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    *v4 = 0;
    v5 = 0x80000;
  }

  v6 = v5;
LABEL_9:
  *this = v6;
  *(this + 2) = address;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(this + 3) = v7;
  *(this + 4) = 0;
  return result;
}

lsl::ProtectedStack *lsl::ProtectedStack::ProtectedStack(lsl::ProtectedStack *this, int a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    lsl::ProtectedStack::allocateStack(this);
  }

  return this;
}

void *__cdecl mmap(void *a1, size_t a2, int a3, int a4, int a5, off_t a6)
{
  if ((a4 & 2) != 0)
  {
    if (!a2)
    {
LABEL_4:
      cerror_nocancel(22);
      return -1;
    }
  }

  else if (!a2 || (a4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v8 = a4 | 0x40000;

  return __mmap(a1, a2, a3, v8, a5, a6);
}

void *__mmap(void *a1, size_t a2, int a3, int a4, int a5, off_t a6)
{
  result = mac_syscall(SYS_mmap, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t lsl::MemoryManager::setDyldCacheAddr(uint64_t this, void *a2)
{
  *(this + 40) = a2;
  if ((*(this + 33) & 1) == 0)
  {
    return lsl::MemoryManager::writeProtect(this, 0);
  }

  return this;
}

uint64_t dyld4::ExternallyViewableState::setRuntimeState(dyld4::ExternallyViewableState *this, dyld4::RuntimeState *a2)
{
  *(this + 1) = a2;
  result = mach_o::Platform::value((*(a2 + 1) + 112));
  *(*(this + 4) + 320) = result;
  return result;
}

uint64_t lsl::Vector<std::byte>::insert(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = a2 - *(a1 + 8);
  lsl::Vector<std::byte>::reserve(a1, *(a1 + 16) + a3);
  v8 = *(a1 + 16);
  if (v8 != v7)
  {
    memmove((*(a1 + 8) + a3 + v7), (*(a1 + 8) + v7), v8 - v7);
  }

  if (a3)
  {
    v9 = *a4;
    v10 = a3;
    v11 = v7;
    do
    {
      *(*(a1 + 8) + v11++) = v9;
      --v10;
    }

    while (v10);
  }

  v12 = *(a1 + 8);
  *(a1 + 16) += a3;
  return v12 + v7;
}

uint64_t lsl::Vector<unsigned long long>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    return lsl::Vector<unsigned long long>::reserveExact(result, v2);
  }

  return result;
}

char *ByteStream::push_back(char *this, int a2, unint64_t a3)
{
  v3 = a3;
  v4 = this;
  if (a2 > 3)
  {
    if (a2 == 4)
    {

      return ByteStream::push_back<unsigned int>(this, a3);
    }

    else if (a2 == 8)
    {

      return ByteStream::push_back<unsigned long long>(this, a3);
    }
  }

  else if (a2 == 1)
  {
    this = lsl::Vector<std::byte>::reserve(this, *(this + 2) + 1);
    v5 = *(v4 + 1);
    v6 = *(v4 + 2);
    *(v4 + 2) = v6 + 1;
    *(v5 + v6) = v3;
  }

  else if (a2 == 2)
  {

    return ByteStream::push_back<unsigned short>(this, a3);
  }

  return this;
}

char *ByteStream::push_back<unsigned short>(uint64_t a1, __int16 a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v3 = __rev16(a2);
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v5, &v3, &v4, a1);
}

uint64_t anonymous namespace::quickSort<PropertyList::Data **>(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + ((4 * (a2 - v3 + ((a2 - v3) >> 63))) & 0xFFFFFFFFFFFFFFF8));
      v5 = a2;
      v6 = v3;
      while (2)
      {
        while (1)
        {
          v7 = *v6;
          if ((PropertyList::Data::operator<=>(*v6, v4) & 0x80) == 0)
          {
            break;
          }

          if (++v6 == v5)
          {
            goto LABEL_12;
          }
        }

        do
        {
          if (--v5 == v6)
          {
            v5 = v6;
            goto LABEL_12;
          }

          v8 = *v5;
        }

        while ((PropertyList::Data::operator<=>(*v5, v4) & 0x80) == 0);
        *v6++ = v8;
        *v5 = v7;
        if (v5 != v6)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v9 = v5;
      if (v5 != a2)
      {
        v9 = a2;
        v10 = v5;
        while (2)
        {
          while (1)
          {
            v11 = *v10;
            if ((PropertyList::Data::operator<=>(v4, *v10) & 0x80) != 0)
            {
              break;
            }

            if (++v10 == v9)
            {
              goto LABEL_22;
            }
          }

          do
          {
            if (--v9 == v10)
            {
              v9 = v10;
              goto LABEL_22;
            }

            v12 = *v9;
          }

          while ((PropertyList::Data::operator<=>(v4, *v9) & 0x80) != 0);
          *v10++ = v12;
          *v9 = v11;
          if (v9 != v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
      v3 = v9;
    }

    while (v9 != a2);
  }

  return result;
}

char *ByteStream::push_back<unsigned int>(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v3 = bswap32(a2);
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v5, &v3, v4, a1);
}

uint64_t PropertyList::Data::operator<=>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3 < v4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == v4)
  {
    v6 = _platform_memcmp(*(a1 + 24), *(a2 + 24), v3);
    if (v6 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v6)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *ByteStream::push_back<unsigned long long>(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v3 = bswap64(a2);
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v5, &v3, v4, a1);
}

uint64_t PropertyList::Bitmap::setBit(uint64_t this, unint64_t a2)
{
  if (a2 >= 8 * *(this + 32))
  {
    PropertyList::Bitmap::setBit();
  }

  *(*(this + 24) + (a2 >> 3)) |= 1 << (a2 & 7);
  return this;
}

uint64_t PropertyList::Dictionary::emit(PropertyList::Dictionary *this, int a2, ByteStream *a3)
{
  v6 = *(this + 4);
  if (v6 >= 0xF)
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v10 = *(a3 + 1);
    v11 = *(a3 + 2);
    *(a3 + 2) = v11 + 1;
    *(v10 + v11) = -33;
    v14[0] = &off_A4150;
    v14[1] = 0xFFFFFFFFFFFFFFELL;
    v14[2] = v6;
    PropertyList::Integer::emit(v14, 0, a3);
  }

  else
  {
    result = lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v8 = *(a3 + 1);
    v9 = *(a3 + 2);
    *(a3 + 2) = v9 + 1;
    *(v8 + v9) = v6 | 0xD0;
    if (!v6)
    {
      return result;
    }
  }

  for (i = 0; i != v6; ++i)
  {
    ByteStream::push_back(a3, a2, *(*(*(this + 3) + 8 * i) + 8) & 0x7FFFFFFFFFFFFFFLL);
  }

  for (j = 0; j != v6; ++j)
  {
    result = ByteStream::push_back(a3, a2, *(*(*(this + 7) + 8 * j) + 8) & 0x7FFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t *lsl::Vector<unsigned long long>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (result[3] >= a2)
  {
    if (a2)
    {
      result[2] = a2;
      result[3] = a2;
      v4 = *result;
      v5 = v3[1];

      return lsl::Allocator::realloc(v4, v5, 8 * a2);
    }

    else
    {
      v7 = result + 1;
      v6 = result[1];
      if (v6)
      {
        result = lsl::Allocator::free(*result, v6);
      }

      *v7 = 0;
      v3[2] = 0;
      v3[3] = 0;
    }
  }

  else
  {
    result = lsl::Vector<unsigned long long>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

uint64_t AAREncoder::encodeFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = cksum(*(a2 + 8), *(a2 + 16));
  *(a3 + 32) = 0;
  v6 = lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "AA01", "");
  v7 = AAREncoder::headerSize(v6, a2);
  ByteStream::push_back<unsigned short>(a3, v7);
  lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "TYP1F", "");
  lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "PATP", "");
  v8 = _platform_strlen(*a2);
  ByteStream::push_back<unsigned short>(a3, v8);
  v9 = *a2;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = _platform_strlen(*a2);
  lsl::Vector<std::byte>::insert<std::byte*>(a3, v10 + v11, v9, &v9[v12]);
  lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "CKSF", "");
  ByteStream::push_back<unsigned int>(a3, v5);
  v13 = 1;
  while (*(a2 + 16) >> (8 * v13))
  {
    v14 = v13 > 3;
    v13 *= 2;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v13 - 1 < 2)
  {
    lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "DATA", "");
    ByteStream::push_back<unsigned short>(a3, *(a2 + 16));
  }

  else
  {
    if (v13 != 4)
    {
      if (v13 != 8)
      {
        AAREncoder::encodeFile();
      }

LABEL_9:
      lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "DATC", "");
      ByteStream::push_back<unsigned long long>(a3, *(a2 + 16));
      goto LABEL_12;
    }

    lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "DATB", "");
    ByteStream::push_back<unsigned int>(a3, *(a2 + 16));
  }

LABEL_12:
  v15 = *(a2 + 8);
  v16 = *(a3 + 8) + *(a3 + 16);
  v17 = &v15[*(a2 + 16)];

  return lsl::Vector<std::byte>::insert<std::byte*>(a3, v16, v15, v17);
}

uint64_t *AAREncoder::encode(__int128 **this, ByteStream *a2)
{
  v3 = this;
  v14 = *this;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v4 = this[7];
  if (v4)
  {
    v5 = this[6];
    v6 = 16 * v4;
    do
    {
      v7 = *v5++;
      v12 = v7;
      this = AAREncoder::encodeLink(this, &v12, &v14);
      v6 -= 16;
    }

    while (v6);
  }

  v8 = *(v3 + 3);
  if (v8)
  {
    v9 = *(v3 + 2);
    v10 = 24 * v8;
    do
    {
      v12 = *v9;
      v13 = *(v9 + 2);
      this = AAREncoder::encodeFile(this, &v12, &v14);
      v9 = (v9 + 24);
      v10 -= 24;
    }

    while (v10);
  }

  result = lsl::Vector<std::byte>::insert<std::byte*>(a2, *(a2 + 1) + *(a2 + 2), v15, &v15[v16]);
  if (v15)
  {
    return lsl::Vector<std::byte>::resize(&v14, 0);
  }

  return result;
}

uint64_t cksum(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *a1++;
    v2 = crcTable[v4 ^ HIBYTE(v2)] ^ (v2 << 8);
    v5 = a2 > v3++;
  }

  while (v5);
  do
  {
    v2 = crcTable[a2 ^ HIBYTE(v2)] ^ (v2 << 8);
    v5 = a2 > 0xFF;
    a2 >>= 8;
  }

  while (v5);
  return ~v2;
}

uint64_t AAREncoder::headerSize(uint64_t a1, uint64_t a2)
{
  v3 = _platform_strlen(*a2);
  v4 = 1;
  while (*(a2 + 16) >> (8 * v4))
  {
    v5 = v4 > 3;
    v4 *= 2;
    if (v5)
    {
      LOWORD(v4) = 8;
      return (v3 + v4 + 29);
    }
  }

  if (v4 < 3)
  {
    LOWORD(v4) = 2;
  }

  return (v3 + v4 + 29);
}

unint64_t lsl::Allocator::size(unint64_t this, const void *a2)
{
  if (this)
  {
    return (*((this & 0xF0FFFFFFFFFFFFFFLL) - 8) & 0xFFFFFFFFFFFFFFFCLL) - (this & 0xF0FFFFFFFFFFFFFFLL);
  }

  return this;
}

void *dyld3::ScopedTimer::startTimer(dyld3::ScopedTimer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = dyld3::kdebug_trace_dyld_duration_start(*this, *(this + 1), *(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 6), a8);
  *(this + 13) = result;
  return result;
}

mach_port_name_array_t dyld4::RemoteNotificationResponder::RemoteNotificationResponder(mach_port_name_array_t names_addr, int a2)
{
  *names_addr = 0u;
  *(names_addr + 1) = 0u;
  *(names_addr + 4) = names_addr;
  names_addr[10] = 8;
  v3 = names_addr + 10;
  *(names_addr + 6) = 0;
  if (a2 != 1229016646)
  {
    goto LABEL_10;
  }

  v4 = task_dyld_process_info_notify_get(names_addr, names_addr + 10);
  while (v4 == 3)
  {
    v5 = 2 * names_addr[10];
    if (v5 <= 0x10)
    {
      v5 = 16;
    }

    names_addr[10] = v5;
    v6 = 4 * v5;
    *(names_addr + 6) = v6;
    if (vm_allocate(mach_task_self_, names_addr + 4, v6, 1))
    {
      goto LABEL_10;
    }

    v4 = task_dyld_process_info_notify_get(*(names_addr + 4), v3);
    if (v4)
    {
      vm_deallocate(mach_task_self_, *(names_addr + 4), *(names_addr + 6));
      *(names_addr + 6) = 0;
    }
  }

  if (v4)
  {
LABEL_10:
    *v3 = 0;
  }

  return names_addr;
}

BOOL dyld4::RemoteNotificationResponder::active(dyld4::RemoteNotificationResponder *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (*v2)
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (v1 == v4)
    {
      break;
    }
  }

  while (!v2[v4++]);
  return v5 < v1;
}

void dyld4::RemoteNotificationResponder::~RemoteNotificationResponder(dyld4::RemoteNotificationResponder *this)
{
  if (*(this + 10))
  {
    v2 = 0;
    do
    {
      mach_port_deallocate(mach_task_self_, *(*(this + 4) + 4 * v2++));
    }

    while (v2 < *(this + 10));
    v3 = *(this + 6);
    if (v3)
    {
      vm_deallocate(mach_task_self_, *(this + 4), v3);
    }
  }
}

uint64_t *lsl::UniquePtr<lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>>::~UniquePtr(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    if (*v3)
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::deallocate(*v3, *(v3 + 8));
      *v3 = 0;
      v4 = *a1;
    }

    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    lsl::Allocator::freeObject(v4, a2);
  }

  return a1;
}

void AAREncoder::~AAREncoder(AAREncoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = 24 * v2;
    do
    {
      v5 = *v3;
      v3 += 3;
      lsl::Allocator::free(*this, v5);
      v4 -= 24;
    }

    while (v4);
  }

  v6 = *(this + 6);
  v7 = *(this + 7);
  if (v7)
  {
    v8 = (v6 + 8);
    v9 = 16 * v7;
    do
    {
      lsl::Allocator::free(*this, *v8);
      lsl::Allocator::free(*this, *(v8 - 1));
      v8 += 2;
      v9 -= 16;
    }

    while (v9);
    v6 = *(this + 6);
  }

  if (v6)
  {
    lsl::Vector<AAREncoder::Link>::resize(this + 5, 0);
  }

  if (*(this + 2))
  {
    lsl::Vector<AAREncoder::File>::resize(this + 1, 0);
  }
}

uint64_t *lsl::Vector<AAREncoder::File>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (result[3] >= a2)
  {
    if (a2)
    {
      result[2] = a2;
      result[3] = a2;
      v4 = *result;
      v5 = v3[1];

      return lsl::Allocator::realloc(v4, v5, 24 * a2);
    }

    else
    {
      v7 = result + 1;
      v6 = result[1];
      if (v6)
      {
        result = lsl::Allocator::free(*result, v6);
      }

      *v7 = 0;
      v3[2] = 0;
      v3[3] = 0;
    }
  }

  else
  {
    result = lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

uint64_t ___ZN3lsl9AllocatorD2Ev_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 56) == 1)
  {
    if ((lsl::sMemoryManagerInitialized & 1) == 0)
    {
      lsl::MemoryManager::memoryManager(result);
    }

    v3 = *(a2 + 40);
    v4 = mach_task_self_;
    v5 = *(a2 + 32);

    return vm_deallocate(v4, v5, v3);
  }

  return result;
}

void lsl::Allocator::~Allocator(lsl::Allocator *this)
{
  for (i = *(this + 1); i; i = *(i + 16))
  {
    this = ___ZN3lsl9AllocatorD2Ev_block_invoke(this, i);
  }
}

kern_return_t mach_vm_deallocate(vm_map_t target, mach_vm_address_t address, mach_vm_size_t size)
{
  v6 = _kernelrpc_mach_vm_deallocate_trap(target, address, size);
  if (v6 == 268435459)
  {
    v12 = 0x100000000;
    v13 = address;
    v14 = size;
    reply_port = mig_get_reply_port();
    *&v11.msgh_bits = 0x3000001513;
    *&v11.msgh_remote_port = __PAIR64__(reply_port, target);
    *&v11.msgh_voucher_port = 0x12C100000000;
    v8 = mach_msg2_internal(&v11, 0x200000003, 0x3000001513, __PAIR64__(reply_port, target), 0x12C100000000, (reply_port << 32), &stru_20.segname[4], 0);
    v6 = v8;
    if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
    {
      if (v8)
      {
        mig_dealloc_reply_port(v11.msgh_local_port);
        return v6;
      }

      if (v11.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v11.msgh_id == 4901)
      {
        v6 = -300;
        if ((v11.msgh_bits & 0x80000000) == 0 && *&v11.msgh_size == 36)
        {
          v6 = v13;
          if (!v13)
          {
            return v6;
          }
        }
      }

      else
      {
        v6 = -301;
      }

      mach_msg_destroy(&v11);
    }
  }

  return v6;
}

uint64_t dyld4::ExternallyViewableState::prepareInCacheDyldAllImageInfos(dyld4::ExternallyViewableState *this, const mach_o::Header *a2)
{
  *(&stru_20.cmd + sProcessInfo) = a2;
  v16 = 0;
  SectionContent = dyld3::MachOLoaded::findSectionContent(a2, "__DATA", "__all_image_info", &v16);
  if (!SectionContent)
  {
    SectionContent = dyld3::MachOLoaded::findSectionContent(a2, "__DATA_DIRTY", "__all_image_info", &v16);
  }

  v5 = atomic_load(sProcessInfo + 23);
  atomic_store(v5, (SectionContent + 184));
  v6 = sProcessInfo;
  *(SectionContent + 200) = *&stru_B8.segname[sProcessInfo];
  *(SectionContent + 304) = *(&stru_108.size + v6);
  *(SectionContent + 112) = *&stru_68.segname[v6 - 8];
  *(SectionContent + 152) = *(&stru_68.offset + v6);
  *(SectionContent + 176) = *(&stru_68.reserved2 + v6);
  *(SectionContent + 288) = *&stru_108.segname[v6 + 8];
  *(SectionContent + 24) = *(&dword_18 + v6);
  v7 = *(&stru_20.nsects + v6);
  *(SectionContent + 88) = *(&stru_20.maxprot + v6);
  *(SectionContent + 96) = v7;
  *(SectionContent + 4) = *(&dword_4 + v6);
  v8 = atomic_load(v6 + 1);
  atomic_store(v8, (SectionContent + 8));
  v9 = sProcessInfo;
  *(SectionContent + 160) = *(&stru_68.reloff + sProcessInfo);
  *&stru_20.segname[v9 + 8] = "cache";
  *(&stru_20.cmd + v9) = a2;
  v15[0] = a2;
  v15[1] = "/usr/lib/dyld";
  v15[2] = 0;
  if (proc_set_dyld_all_image_info(SectionContent, &stru_158.segname[8]))
  {
    *(SectionContent + 200) = 0;
    *(SectionContent + 312) = 0;
    v10 = *(&dword_10 + sProcessInfo);
    *(&dword_10 + sProcessInfo) = *(SectionContent + 16);
    result = v10(3, 1, v15);
  }

  else
  {
    (*(&dword_10 + sProcessInfo))(3, 1, v15);
    v12 = *(SectionContent + 16);
    v13 = *(&dword_4 + sProcessInfo);
    v14 = atomic_load(sProcessInfo + 1);
    result = v12(0, v13, v14);
  }

  *(SectionContent + 72) = this;
  return result;
}

uint64_t dyld3::MachOLoaded::findSectionContent(dyld3::MachOLoaded *this, const char *a2, const char *a3, unint64_t *a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK5dyld311MachOLoaded18findSectionContentEPKcS2_Ry_block_invoke;
  v6[3] = &unk_A3A50;
  v6[6] = a3;
  v6[7] = a2;
  v6[8] = a4;
  v6[4] = &v7;
  v6[5] = this;
  dyld3::MachOFile::forEachSection(this, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t ___ZNK5dyld311MachOLoaded18findSectionContentEPKcS2_Ry_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  result = _platform_strlen(v8);
  if (v6 == result)
  {
    result = _platform_memcmp(*a2, v8, v6);
    if (!result)
    {
      v10 = *(a2 + 24);
      v11 = *(a1 + 56);
      result = _platform_strlen(v11);
      if (v10 == result)
      {
        result = _platform_memcmp(*(a2 + 16), v11, v10);
        if (!result)
        {
          **(a1 + 64) = *(a2 + 64);
          result = dyld3::MachOFile::isPreload(v7);
          if (result)
          {
            v12 = v7 + *(a2 + 72);
          }

          else
          {
            v13 = *(a2 + 56);
            result = dyld3::MachOLoaded::getSlide(v7);
            v12 = (result + v13);
          }

          *(*(*(a1 + 32) + 8) + 24) = v12;
          *a3 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t __kdebug_trace_string(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kdebug_trace_string, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

uint64_t ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke(uint64_t result, void *a2)
{
  if ((*(result + 48) & 1) != 0 || a2[1] != 12 || (**a2 == 0x445F415441445F5FLL ? (v2 = *(*a2 + 8) == 1498698313) : (v2 = 0), !v2))
  {
    v3 = *(*(result + 32) + 8);
    v4 = v3[7];
    if (v4 >= v3[6])
    {
      ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
    }

    v5 = a2[3];
    v6 = *(result + 40) + a2[2];
    v7 = v3[5];
    v3[7] = v4 + 1;
    v8 = (v7 + 16 * v4);
    *v8 = v6;
    v8[1] = v5;
  }

  return result;
}

int __munmap(void *a1, size_t a2)
{
  result = mac_syscall(SYS_munmap, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int64_t mach_msg2_internal(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v14 = a2;
  result = mach_msg2_trap(a1, (a2 & 0xFFFFFFFFFFFFFBBFLL), a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if ((v14 & 0x40) == 0)
    {
      while (result == 268435463)
      {
        result = mach_msg2_trap(a1, (v14 & 0xFFFFFFFFFFFFFBBFLL), a3, a4, a5, a6, a7, a8);
      }
    }

    if ((v14 & 0x400) == 0 && result == 268451845)
    {
      if ((~v14 & 3) == 0)
      {
        v14 &= 0xFFFFFFFFFFFFBBBELL;
      }

      do
      {
        result = mach_msg2_trap(a1, (v14 & 0xFFFFFFFFFFFFFBBELL), a3, a4, a5, a6, a7, a8);
      }

      while (result == 268451845);
    }
  }

  return result;
}

kern_return_t mach_port_construct(ipc_space_t task, mach_port_options_ptr_t options, mach_port_context_t context, mach_port_name_t *name)
{
  v8 = _kernelrpc_mach_port_construct_trap(task, options, context, name);
  if (v8 == 268435459)
  {
    v14 = 1;
    v15 = options;
    v16 = 0x1801000100;
    v17 = 0x100000000;
    v18 = context;
    reply_port = mig_get_reply_port();
    *&v13.msgh_bits = 0x3C80001513;
    *&v13.msgh_remote_port = __PAIR64__(reply_port, task);
    *&v13.msgh_voucher_port = 0xC9F00000000;
    v10 = mach_msg2_internal(&v13, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, task), 0xC9F00000000, ((reply_port << 32) | 1), &stru_20.segname[8], 0);
    v8 = v10;
    if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
    {
      if (!v10)
      {
        if (v13.msgh_id == 71)
        {
          v8 = -308;
        }

        else if (v13.msgh_id == 3331)
        {
          if ((v13.msgh_bits & 0x80000000) == 0)
          {
            if (v13.msgh_size == 40)
            {
              if (!v13.msgh_remote_port)
              {
                v8 = HIDWORD(v15);
                if (!HIDWORD(v15))
                {
                  *name = v16;
                  return v8;
                }

                goto LABEL_21;
              }
            }

            else if (v13.msgh_size == 36)
            {
              if (v13.msgh_remote_port)
              {
                v11 = 1;
              }

              else
              {
                v11 = HIDWORD(v15) == 0;
              }

              if (v11)
              {
                v8 = -300;
              }

              else
              {
                v8 = HIDWORD(v15);
              }

              goto LABEL_21;
            }
          }

          v8 = -300;
        }

        else
        {
          v8 = -301;
        }

LABEL_21:
        mach_msg_destroy(&v13);
        return v8;
      }

      mig_dealloc_reply_port(v13.msgh_local_port);
    }
  }

  return v8;
}

void mach_msg_destroy(mach_msg_header_t *a1)
{
  msgh_bits = a1->msgh_bits;
  mach_msg_destroy_port(a1->msgh_remote_port, a1->msgh_bits & 0x1F);
  mach_msg_destroy_port(a1->msgh_voucher_port, HIWORD(msgh_bits) & 0x1F);
  if ((msgh_bits & 0x80000000) != 0)
  {
    v3 = a1[1].msgh_bits;
    if (v3)
    {
      v4 = 0;
      p_msgh_size = &a1[1].msgh_size;
      do
      {
        v6 = p_msgh_size[2];
        v7 = HIBYTE(v6);
        if (HIBYTE(v6) <= 1u)
        {
          if (v7)
          {
            if (v7 == 1)
            {
              if (!p_msgh_size[2])
              {
                goto LABEL_36;
              }

              v13 = p_msgh_size[3];
              if (!v13)
              {
                goto LABEL_36;
              }

LABEL_31:
              mach_vm_deallocate(mach_task_self_, *p_msgh_size, v13);
LABEL_36:
              p_msgh_size += 4;
            }
          }

          else
          {
            v18 = *p_msgh_size;
            p_msgh_size += 3;
            mach_msg_destroy_port(v18, BYTE2(v6));
          }
        }

        else
        {
          switch(v7)
          {
            case 2u:
              if (p_msgh_size[3])
              {
                v14 = 0;
                v15 = *p_msgh_size;
                do
                {
                  mach_msg_destroy_port(*(v15 + 4 * v14), *(p_msgh_size + 10));
                  v16 = p_msgh_size[3];
                  ++v14;
                }

                while (v16 > v14);
                p_msgh_size[3];
                if (p_msgh_size[3] && *(p_msgh_size + 8) != 0)
                {
                  v13 = 4 * v16;
                  goto LABEL_31;
                }
              }

              goto LABEL_36;
            case 3u:
              goto LABEL_36;
            case 4u:
              if ((v6 & 2) == 0)
              {
                v8 = mach_task_self_;
                v9 = p_msgh_size[3];
                v10 = *p_msgh_size;
                if (_kernelrpc_mach_port_unguard_trap(mach_task_self_, v9, *p_msgh_size) == 268435459)
                {
                  v20 = 0x100000000;
                  v21 = v9;
                  v22 = v10;
                  reply_port = mig_get_reply_port();
                  *&v19.msgh_bits = 0x2C00001513;
                  *&v19.msgh_remote_port = __PAIR64__(reply_port, v8);
                  *&v19.msgh_voucher_port = 0xCA200000000;
                  v12 = mach_msg2_internal(&v19, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, v8), 0xCA200000000, (reply_port << 32), &stru_20.segname[4], 0);
                  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
                  {
                    if (v12)
                    {
                      mig_dealloc_reply_port(v19.msgh_local_port);
                    }

                    else if (v19.msgh_id != 3334 || (v19.msgh_bits & 0x80000000) != 0 || *&v19.msgh_size != 36 || v21)
                    {
                      mach_msg_destroy(&v19);
                    }
                  }
                }

                v6 = p_msgh_size[2];
              }

              mach_msg_destroy_port(p_msgh_size[3], BYTE2(v6));
              goto LABEL_36;
          }
        }

        ++v4;
      }

      while (v4 != v3);
    }
  }
}