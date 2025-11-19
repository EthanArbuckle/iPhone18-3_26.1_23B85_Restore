uint64_t dyld3::open(dyld3 *this, const char *a2, uint64_t a3)
{
  v4 = a2;
  for (result = open(this, a2, a3); result == -1; result = open(this, v4, a3))
  {
    if (*__error() != 35 && *__error() != 4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

_DWORD *dyld3::FatFile::isFatFile(_DWORD *this, const void *a2)
{
  if ((*this | 0x1000000) != 0xBFBAFECA)
  {
    return 0;
  }

  return this;
}

BOOL dyld3::FatFile::isValidSlice(dyld3::FatFile *this, Diagnostics *a2, unint64_t a3, unsigned int a4, int a5, int a6, unint64_t a7, unint64_t a8)
{
  if (a3 < a7 || a3 - a7 < a8)
  {
    Diagnostics::error(a2, "slice %d extends beyond end of file");
  }

  else
  {
    v12 = this + a7;
    result = dyld3::MachOFile::isMachO((this + a7), a2, a8);
    if (!result)
    {
      return result;
    }

    if (*(v12 + 1) == a5)
    {
      v14 = *(v12 + 2);
      if (((v14 ^ a6) & 0xFFFFFF) != 0)
      {
        v16 = *(v12 + 2);
        Diagnostics::error(a2, "cpu subtype in slice (0x%08X) does not match fat header (0x%08X)");
      }

      else
      {
        if (a5 == 33554444 || a5 == 16777228 || (v15 = 4095, a5 == 12) && v14 == 12 && *(v12 + 3) != 11)
        {
          v15 = 0x3FFFLL;
        }

        if ((v15 & a7) == 0)
        {
          return 1;
        }

        if (!strncmp(v12, "!<arch>", 7uLL))
        {
          Diagnostics::error(a2, "file is static library");
        }

        else
        {
          Diagnostics::error(a2, "slice is not page aligned");
        }
      }
    }

    else
    {
      v17 = *(v12 + 1);
      Diagnostics::error(a2, "cpu type in slice (0x%08X) does not match fat header (0x%08X)");
    }
  }

  return 0;
}

BOOL dyld3::MachOFile::isMachO(dyld3::MachOFile *this, Diagnostics *a2, unint64_t a3)
{
  if (a3 <= 0x1B)
  {
    Diagnostics::error(a2, "MachO header exceeds file length");
    return 0;
  }

  v5 = *this;
  if (*this >> 1 != 2138504551)
  {
    if ((v5 & 0xFEFFFFFF) != 0xCEFAEDFE)
    {
      Diagnostics::error(a2, "file does not start with MH_MAGIC[_64]");
    }

    return 0;
  }

  v6 = v5 == -17958193;
  v7 = 28;
  if (v6)
  {
    v7 = 32;
  }

  if (v7 + *(this + 5) > a3)
  {
    Diagnostics::error(a2, "load commands exceed length of first segment");
    return 0;
  }

  dyld3::MachOFile::forEachLoadCommand(this, a2, &__block_literal_global_2);

  return Diagnostics::noError(a2);
}

void dyld3::FatFile::forEachSlice(dyld3::FatFile *this, Diagnostics *a2, unint64_t a3, int a4, uint64_t a5)
{
  if (*this == -1078264118)
  {
    v10 = *(this + 1);
    v11 = bswap32(v10);
    if (v11 >= 0x80)
    {
      Diagnostics::error(a2, "fat header too large: %u entries", v11);
      return;
    }

    if (((32 * v11) | 8u) <= a3)
    {
      v38[0] = 0;
      if (v10)
      {
        v20 = 0;
        v21 = v11 - 1;
        v22 = this + 12;
        do
        {
          v23 = bswap32(*(v22 - 1));
          v24 = bswap32(*v22);
          v25 = bswap64(*(v22 + 4));
          v26 = bswap64(*(v22 + 12));
          if (!a4 || dyld3::FatFile::isValidSlice(this, a2, a3, v20, v23, v24, v25, v26))
          {
            (*(a5 + 16))(a5, v23, v24, this + v25, v26, v38);
          }

          if (v38[0])
          {
            break;
          }

          v22 += 32;
        }

        while (v21 != v20++);
      }

      return;
    }

    goto LABEL_21;
  }

  if (*this != -1095041334)
  {
    v12 = "not a fat file";
LABEL_22:

    Diagnostics::error(a2, v12);
    return;
  }

  v8 = *(this + 1);
  v9 = bswap32(v8);
  if (v9 >= 0xCD)
  {
    Diagnostics::error(a2, "fat header too large: %u entries", v9);
    return;
  }

  if ((20 * v9 + 28) > a3)
  {
LABEL_21:
    v12 = "fat header malformed, architecture slices extend beyond end of file";
    goto LABEL_22;
  }

  v39 = 0;
  if (!v8)
  {
    goto LABEL_36;
  }

  v33 = v8;
  v13 = 0;
  v14 = (this + 20);
  while (1)
  {
    v15 = bswap32(*(v14 - 3));
    v16 = bswap32(*(v14 - 2));
    v17 = bswap32(*(v14 - 1));
    v18 = bswap32(*v14);
    Diagnostics::Diagnostics(v38);
    if (!a4 || dyld3::FatFile::isValidSlice(this, v38, a3, v13, v15, v16, v17, v18))
    {
      (*(a5 + 16))(a5, v15, v16, this + v17, v18, &v39);
    }

    if (v39)
    {
      break;
    }

    if (Diagnostics::hasError(v38))
    {
      v19 = Diagnostics::errorMessage(v38);
      Diagnostics::appendError(a2, "%s, ", v19);
    }

    v14 += 5;
    Diagnostics::~Diagnostics(v38);
    if (v9 == ++v13)
    {
      goto LABEL_35;
    }
  }

  Diagnostics::~Diagnostics(v38);
LABEL_35:
  if (v33 != -872415232)
  {
LABEL_36:
    v28 = (this + 20 * v9 + 8);
    v29 = bswap32(v28[1]);
    if (*v28 == 201326593 && v29 <= 1)
    {
      v31 = bswap32(v28[3]);
      v32 = bswap32(v28[2]);
      if (!a4 || dyld3::FatFile::isValidSlice(this, a2, a3, v9, 16777228, v29, v32, v31))
      {
        (*(a5 + 16))(a5, 16777228, v29, this + v32, v31, &v39);
      }
    }
  }
}

uint64_t dyld3::MachOFile::pointerSize(dyld3::MachOFile *this)
{
  if (*this == -17958193)
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

unsigned int *dyld3::MachOFile::forEachLoadCommand(unsigned int *result, Diagnostics *this, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  if (*result == -17958193)
  {
    v7 = 8;
  }

  else
  {
    if (v6 != -17958194)
    {
      if ((v6 & 0xFEFFFFFF) != 0xCEFAEDFE)
      {
        v16 = *result;
        v17 = result[1];
        return Diagnostics::error(this, "file does not start with MH_MAGIC[_64]: 0x%08X 0x%08X");
      }

      return result;
    }

    v7 = 7;
  }

  if (result[3] < 0xD)
  {
    if (result[4])
    {
      v8 = 0;
      v9 = &result[v7];
      v10 = &result[v7] + result[5];
      v11 = &result[v7];
      while (1)
      {
        if (v11 > v10 - 8)
        {
          return Diagnostics::error(this, "malformed load command #%u of %u at %p with mh=%p, extends past sizeofcmds");
        }

        v12 = *(v11 + 4);
        if (v12 <= 7)
        {
          return Diagnostics::error(this, "malformed load command #%u of %u at %p with mh=%p, size (0x%X) too small");
        }

        if ((v12 & 3) != 0)
        {
          break;
        }

        v13 = v11 + v12;
        if (v11 + v12 > v10 || v13 < v9)
        {
          v18 = *(v11 + 4);
          return Diagnostics::error(this, "malformed load command #%u of %u at %p with mh=%p, size (0x%X) is too large, load commands end at %p");
        }

        result = (*(a3 + 16))(a3);
        ++v8;
        v11 = v13;
        if (v8 >= v5[4])
        {
          return result;
        }
      }

      return Diagnostics::error(this, "malformed load command #%u of %u at %p with mh=%p, size (0x%X) not multiple of 4");
    }
  }

  else
  {
    v15 = result[3];
    return Diagnostics::error(this, "unknown mach-o filetype (%u)");
  }

  return result;
}

uint64_t deviceSupportsMTE()
{
  if (deviceSupportsMTE::onceToken != -1)
  {
    deviceSupportsMTE_cold_1();
  }

  return deviceSupportsMTE::result;
}

uint64_t __deviceSupportsMTE_block_invoke()
{
  v3 = 8;
  v4 = 0;
  result = sysctlbyname("hw.optional.arm.FEAT_MTE4", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = v4 == 1;
  }

  v2 = v1;
  deviceSupportsMTE::result = v2;
  return result;
}

uint64_t vm_read_safe(vm_map_read_t a1, uint64_t a2, mach_vm_size_t a3, vm_address_t *a4, mach_msg_type_number_t *a5)
{
  data = 0;
  v7 = 0xFFFFFFFFFFFFFFLL;
  if (mach_task_self_ == a1)
  {
    v7 = -1;
  }

  v8 = mach_vm_read(a1, v7 & a2, a3, &data, a5);
  if (!v8)
  {
    v9 = vm_allocate(mach_task_self_, a4, *a5, 1);
    if (v9)
    {
      v8 = v9;
      MEMORY[0x1865C8D90](mach_task_self_, data, *a5);
    }

    else
    {
      if (deviceSupportsMTE::onceToken != -1)
      {
        vm_read_safe_cold_1();
      }

      if (deviceSupportsMTE::result == 1)
      {
        __asm { MSR             TCO, #1 }
      }

      memcpy(*a4, data, *a5);
      if (deviceSupportsMTE::onceToken != -1)
      {
        vm_read_safe_cold_1();
      }

      if (deviceSupportsMTE::result == 1)
      {
        __asm { MSR             TCO, #0 }
      }

      MEMORY[0x1865C8D90](mach_task_self_, data, *a5);
      return 0;
    }
  }

  return v8;
}

void SafeRemoteBuffer::SafeRemoteBuffer(SafeRemoteBuffer *this, vm_map_read_t a2, uint64_t a3, mach_vm_size_t a4, int *a5)
{
  *this = 0;
  *(this + 2) = 0;
  safe = vm_read_safe(a2, a3, a4, this, this + 2);
  *a5 = safe;
  if (safe)
  {
    *this = 0;
    *(this + 2) = 0;
  }
}

void SafeRemoteBuffer::~SafeRemoteBuffer(SafeRemoteBuffer *this)
{
  if (*this)
  {
    if (*(this + 2))
    {
      MEMORY[0x1865C8D90](mach_task_self_);
    }
  }
}

void dyld4::Atlas::Mapper::mapperForSharedCacheLocals(dyld4::Atlas::Mapper *this, lsl::Allocator *a2, dyld4::FileRecord *a3)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v6 = v5;
  v7 = dyld4::FileRecord::open(v3, 0);
  if (v7 == -1)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = dyld4::FileRecord::size(v4);
  if (!v8)
  {
    goto LABEL_7;
  }

  v11 = v9;
  if (!v12)
  {
    dyld4::FileRecord::close(v4);
LABEL_7:
    *v6 = 0;
    *(v6 + 8) = 0;
    return;
  }

  v13 = lsl::MemoryManager::memoryManager(v12);
  v23 = lsl::MemoryManager::defaultAllocator(v13);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserve(&v23, 1uLL);
  v14 = v24 + 32 * v25;
  *v14 = 0;
  *(v14 + 8) = v11;
  *(v14 + 16) = 0;
  *(v14 + 24) = v8;
  ++v25;
  v16 = lsl::MemoryManager::memoryManager(v15);
  v17 = lsl::MemoryManager::defaultAllocator(v16);
  v18 = lsl::MemoryManager::memoryManager(v17);
  v19 = lsl::MemoryManager::defaultAllocator(v18);
  lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&,lsl::Vector<dyld4::Atlas::Mapper::Mapping> &>(v17, v19, &v23, &v22);
  *v6 = 0;
  v21 = v22;
  if (&v22 == v6)
  {
    *(v6 + 8) = 0;
    if (v21)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v21, v20);
    }
  }

  else
  {
    *v6 = v22;
    *(v6 + 8) = 0;
  }

  if (v24)
  {
    lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(&v23, 0);
  }
}

void dyld4::Atlas::Mapper::mapperForMachO(dyld4::FileRecord *this@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  Path = dyld4::FileRecord::getPath(this);
  v8 = dyld3::open(Path, 0, 0);
  if (v8 == -1)
  {
    goto LABEL_11;
  }

  v9 = v8;
  if (fstat(v8, &v36) == -1 || (v10 = mmap(0, v36.st_size, 1, 8194, v9, 0), v10 == -1))
  {
    v8 = v9;
LABEL_11:
    close(v8);
    *a4 = 0;
    return;
  }

  v12 = v10;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  Uuid = dyld3::FatFile::isFatFile(v10, v11);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2000000000;
  v31[3] = 0;
  if (Uuid)
  {
    v14 = Uuid;
    st_size = v36.st_size;
    Diagnostics::Diagnostics(&v40);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 0x40000000;
    v30[2] = ___ZN5dyld45Atlas6Mapper14mapperForMachOERN3lsl9AllocatorERNS_10FileRecordERKNS2_4UUIDENS0_11SafePointerE_block_invoke;
    v30[3] = &unk_1EEE9C1B0;
    v30[4] = &v32;
    v30[5] = v31;
    v30[6] = a2;
    v30[7] = v14;
    dyld3::FatFile::forEachSlice(v14, &v40, st_size, v30);
    Diagnostics::clearError(&v40);
    Diagnostics::~Diagnostics(&v40);
  }

  if (!v33[3])
  {
    Uuid = mach_o::Header::isMachO(v12, v36.st_size);
    if (Uuid)
    {
      v23 = Uuid;
      v40 = 0uLL;
      Uuid = mach_o::Header::getUuid(Uuid, &v40);
      v24 = 0;
      v37 = v40;
      do
      {
        v25 = *(a2 + v24);
        v26 = *(&v37 + v24);
      }

      while (v25 == v26 && v24++ != 15);
      if (v25 == v26)
      {
        v33[3] = v23;
      }
    }
  }

  if (v33[3])
  {
    *&v40 = 0;
    *(&v40 + 1) = &v40;
    v41 = 0x4802000000;
    v42 = __Block_byref_object_copy__1;
    v43 = __Block_byref_object_dispose__1;
    v16 = lsl::MemoryManager::memoryManager(Uuid);
    v44 = lsl::MemoryManager::defaultAllocator(v16);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    *&v37 = 0;
    *(&v37 + 1) = &v37;
    v38 = 0x2000000000;
    v39 = 0;
    v17 = v33[3];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 0x40000000;
    v28[2] = ___ZN5dyld45Atlas6Mapper14mapperForMachOERN3lsl9AllocatorERNS_10FileRecordERKNS2_4UUIDENS0_11SafePointerE_block_invoke_3;
    v28[3] = &unk_1EEE9C1D8;
    v28[4] = &v37;
    v28[5] = &v40;
    v28[6] = v31;
    v28[7] = a3;
    v29 = v9;
    mach_o::Header::forEachSegment(v17, v28);
    v18 = munmap(v12, v36.st_size);
    v19 = lsl::MemoryManager::memoryManager(v18);
    v20 = lsl::MemoryManager::defaultAllocator(v19);
    v21 = lsl::MemoryManager::memoryManager(v20);
    v22 = lsl::MemoryManager::defaultAllocator(v21);
    lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&,lsl::Vector<dyld4::Atlas::Mapper::Mapping> &>(v20, v22, *(&v40 + 1) + 40, a4);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v40, 8);
    if (v45)
    {
      lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(&v44, 0);
    }
  }

  else
  {
    munmap(v12, v36.st_size);
    close(v9);
    *a4 = 0;
  }

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v32, 8);
}

uint64_t ___ZN5dyld45Atlas6Mapper14mapperForMachOERN3lsl9AllocatorERNS_10FileRecordERKNS2_4UUIDENS0_11SafePointerE_block_invoke(void *a1, int a2, int a3, mach_o::Header *this, uint64_t a5, _BYTE *a6)
{
  memset(v15, 0, sizeof(v15));
  result = mach_o::Header::getUuid(this, v15);
  v10 = 0;
  v14 = *v15;
  do
  {
    v11 = *(a1[6] + v10);
    v12 = v15[v10 - 8];
  }

  while (v11 == v12 && v10++ != 15);
  if (v11 == v12)
  {
    *(*(a1[4] + 8) + 24) = this;
    *(*(a1[5] + 8) + 24) = this - a1[7];
    *a6 = 1;
  }

  return result;
}

uint64_t *__Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0u;
  v2 = a1 + 40;
  *(v2 + 16) = 0u;
  return lsl::Vector<dyld4::Atlas::Mapper::Mapping>::swap(v2, (a2 + 40));
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 48))
  {
    lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(a1 + 40, 0);
  }
}

void ___ZN5dyld45Atlas6Mapper14mapperForMachOERN3lsl9AllocatorERNS_10FileRecordERKNS2_4UUIDENS0_11SafePointerE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 6 && **a2 == 1163157343 && *(*a2 + 4) == 21592)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 56) - *(a2 + 16);
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(*(*(a1 + 48) + 8) + 24) + *(a2 + 32);
  v5 = *(a2 + 24);
  v6 = *(*(*(a1 + 32) + 8) + 24) + *(a2 + 16);
  v7 = *(a1 + 64);
  lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserve(v3 + 40, *(v3 + 56) + 1);
  v8 = *(v3 + 48) + 32 * *(v3 + 56);
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  ++*(v3 + 56);
}

uint64_t dyld4::Atlas::Mapper::pin(dyld4::Atlas::Mapper *this)
{
  if (*(this + 4))
  {
    dyld4::Atlas::Mapper::pin();
  }

  if (vm_allocate(mach_task_self_, this + 4, *(*(this + 1) + 32 * *(this + 2) - 16) - *(*(this + 1) + 16) + *(*(this + 1) + 32 * *(this + 2) - 24), 1))
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 1) + 16;
    for (i = 32 * v3; i; i -= 32)
    {
      v6 = *v4 - *(*(this + 1) + 16);
      v7 = *(this + 4);
      v8 = *(v4 + 8);
      if (v8 == -1)
      {
        if (vm_copy(mach_task_self_, *v4, *(v4 - 8), v6 + v7))
        {
LABEL_12:
          dyld4::Atlas::Mapper::unpin(this);
          return 0;
        }
      }

      else if (mmap((v6 + v7), *(v4 - 8), 1, 18, v8, *(v4 - 16)) == -1)
      {
        goto LABEL_12;
      }

      v4 += 32;
    }
  }

  return 1;
}

uint64_t dyld4::Atlas::Mapper::unpin(dyld4::Atlas::Mapper *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    dyld4::Atlas::Mapper::unpin();
  }

  result = MEMORY[0x1865C8D90](mach_task_self_, v1, *(*(this + 1) + 32 * *(this + 2) - 16) - *(*(this + 1) + 16) + *(*(this + 1) + 32 * *(this + 2) - 24));
  *(this + 4) = 0;
  return result;
}

char *dyld4::Atlas::Image::ml(dyld4::Atlas::Image *this)
{
  if (*(this + 186))
  {
    return 0;
  }

  v24[7] = v1;
  v24[8] = v2;
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

  v8 = lsl::MemoryManager::memoryManager(0);
  lsl::MemoryManager::defaultAllocator(v8);
  dyld4::Atlas::Mapper::mapperForMachO((this + 8), this + 96, *(this + 20), v24);
  if (v24 != v6)
  {
    v10 = *v6;
    *v6 = v24[0];
    v24[0] = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = v24[0];
  if (v24[0])
  {
LABEL_8:
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v10, v9);
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
  v11 = *(v5 + 1);
  if (!v11)
  {
    goto LABEL_20;
  }

  result = dyld4::Atlas::Mapper::map(*(v5 + 1), v7, 4096);
  v12 = *(this + 15);
  v13 = *(this + 16);
  *(this + 14) = v11;
  *(this + 15) = 4096;
  *(this + 16) = result;
  v14 = *(this + 136);
  *(this + 136) = v15;
  if (v13 && v14)
  {
    munmap((v13 & -vm_page_size), v12 + v13 - (v13 & -vm_page_size));
    result = *(this + 16);
  }

  if (!result)
  {
    goto LABEL_21;
  }

  v16 = *(result + 5);
  v17 = 28;
  if (*result == -17958193)
  {
    v17 = 32;
  }

  v18 = v17 + v16;
  if ((v17 + v16) > 0x1000)
  {
    v19 = *v6 ? *(*v6 + 1) : 0;
    result = dyld4::Atlas::Mapper::map(v19, v7, v18);
    v20 = *(this + 15);
    v21 = *(this + 16);
    *(this + 14) = v19;
    *(this + 15) = v18;
    *(this + 16) = result;
    v22 = *(this + 136);
    *(this + 136) = v23;
    if (v21)
    {
      if (v22)
      {
        munmap((v21 & -vm_page_size), v20 + v21 - (v21 & -vm_page_size));
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

uint64_t dyld4::Atlas::Image::uuid(dyld4::Atlas::Image *this)
{
  if ((*(this + 184) & 1) == 0)
  {
    memset(v5, 0, sizeof(v5));
    v2 = dyld4::Atlas::Image::ml(this);
    if (v2)
    {
      v3 = v2;
      if (mach_o::Header::hasMachOMagic(v2))
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

uint64_t dyld4::Atlas::Image::installname(dyld4::Atlas::Image *this)
{
  if ((*(this + 185) & 1) == 0)
  {
    if (dyld4::Atlas::Image::ml(this))
    {
      v2 = dyld4::Atlas::Image::ml(this);
      *(this + 22) = mach_o::Header::installName(v2);
    }

    *(this + 185) = 1;
  }

  return *(this + 22);
}

uint64_t dyld4::Atlas::Image::filename(dyld4::Atlas::Image *this)
{
  if (*(this + 21))
  {
    return 0;
  }

  else
  {
    return dyld4::FileRecord::getPath((this + 8));
  }
}

char *dyld4::Atlas::Image::pointerSize(dyld4::Atlas::Image *this)
{
  result = dyld4::Atlas::Image::ml(this);
  if (result)
  {
    v3 = dyld4::Atlas::Image::ml(this);

    return dyld3::MachOFile::pointerSize(v3);
  }

  return result;
}

BOOL dyld4::Atlas::Image::forEachSegment(dyld4::Atlas::Image *a1, uint64_t a2)
{
  v4 = dyld4::Atlas::Image::ml(a1);
  if (v4)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2000000000;
    v5 = *(a1 + 20);
    v6 = dyld4::Atlas::Image::ml(a1);
    v10[3] = v5 - mach_o::Header::preferredLoadAddress(v6);
    v7 = dyld4::Atlas::Image::ml(a1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN5dyld45Atlas5Image14forEachSegmentEU13block_pointerFvPKcyyiE_block_invoke;
    v9[3] = &unk_1EEE9C200;
    v9[5] = v10;
    v9[6] = a1;
    v9[4] = a2;
    mach_o::Header::forEachSegment(v7, v9);
    _Block_object_dispose(v10, 8);
  }

  return v4 != 0;
}

uint64_t ___ZN5dyld45Atlas5Image14forEachSegmentEU13block_pointerFvPKcyyiE_block_invoke(void *a1, uint64_t *a2)
{
  v4 = a1[6];
  if (v4[152] == 1)
  {
    v5 = v4 + 144;
  }

  else
  {
    v6 = dyld4::Atlas::Image::ml(v4);
    if (dyld3::MachOFile::isMainExecutable(v6))
    {
      result = std::string_view::starts_with[abi:nn200100](a2, "__PAGEZERO");
      if (result)
      {
        return result;
      }
    }

    v5 = (*(a1[5] + 8) + 24);
  }

  v8 = *a2;
  v9 = a2[3];
  v10 = *(a1[4] + 16);
  v11 = *(a2 + 47);
  v12 = *v5 + a2[2];

  return v10();
}

BOOL dyld4::Atlas::Image::forEachSection(dyld4::Atlas::Image *a1, uint64_t a2)
{
  v4 = dyld4::Atlas::Image::ml(a1);
  if (v4)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2000000000;
    v5 = *(a1 + 20);
    v6 = dyld4::Atlas::Image::ml(a1);
    v10[3] = v5 - mach_o::Header::preferredLoadAddress(v6);
    v7 = dyld4::Atlas::Image::ml(a1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN5dyld45Atlas5Image14forEachSectionEU13block_pointerFvPKcS3_yyE_block_invoke;
    v9[3] = &unk_1EEE9C228;
    v9[5] = v10;
    v9[6] = a1;
    v9[4] = a2;
    mach_o::Header::forEachSection(v7, v9);
    _Block_object_dispose(v10, 8);
  }

  return v4 != 0;
}

uint64_t ___ZN5dyld45Atlas5Image14forEachSectionEU13block_pointerFvPKcS3_yyE_block_invoke(void *a1, uint64_t *a2)
{
  v2 = a1[6];
  if (*(v2 + 152) == 1)
  {
    v3 = (v2 + 144);
  }

  else
  {
    v3 = (*(a1[5] + 8) + 24);
  }

  v4 = *v3;
  v5 = a2[2];
  v6 = *a2;
  v7 = a2[8];
  v8 = v4 + a2[7];
  return (*(a1[4] + 16))();
}

uint64_t dyld4::Atlas::Image::contentForSegment(dyld4::Atlas::Image *a1, uint64_t a2, uint64_t a3)
{
  if (dyld4::Atlas::Image::ml(a1))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2000000000;
    v6 = *(a1 + 20);
    v7 = dyld4::Atlas::Image::ml(a1);
    v12[3] = v6 - mach_o::Header::preferredLoadAddress(v7);
    v8 = dyld4::Atlas::Image::ml(a1);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___ZN5dyld45Atlas5Image17contentForSegmentEPKcU13block_pointerFvPKvyyE_block_invoke;
    v11[3] = &unk_1EEE9C250;
    v11[7] = a1;
    v11[8] = a2;
    v11[4] = a3;
    v11[5] = v12;
    v11[6] = &v13;
    mach_o::Header::forEachSegment(v8, v11);
    v9 = *(v14 + 24);
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t ___ZN5dyld45Atlas5Image17contentForSegmentEPKcU13block_pointerFvPKvyyE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a2 + 8);
  v7 = a1[7];
  v8 = a1[8];
  result = strlen(v8);
  if (v6 == result)
  {
    result = memcmp(*a2, v8, v6);
    if (!result)
    {
      if (*(v7 + 152) == 1)
      {
        v10 = (v7 + 144);
      }

      else
      {
        v11 = dyld4::Atlas::Image::ml(v7);
        if (dyld3::MachOFile::isMainExecutable(v11))
        {
          result = std::string_view::starts_with[abi:nn200100](a2, "__PAGEZERO");
          if (result)
          {
            return result;
          }
        }

        v10 = (*(a1[5] + 8) + 24);
      }

      v12 = *v10;
      v13 = *(a2 + 24);
      if (v13)
      {
        v14 = *(v7 + 88);
        if (v14)
        {
          v15 = *(v14 + 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = dyld4::Atlas::Mapper::map(v15, v12 + *(a2 + 16), *(a2 + 24));
        v18 = v17;
        v19 = *(a2 + 24);
        result = (*(a1[4] + 16))();
        if (v16)
        {
          if (v18)
          {
            result = munmap((v16 & -vm_page_size), &v16[v13 - (v16 & -vm_page_size)]);
          }
        }
      }

      else
      {
        result = (*(a1[4] + 16))();
      }

      *(*(a1[6] + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t dyld4::Atlas::Image::contentForSection(dyld4::Atlas::Image *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v8 = *(a1 + 20);
  v9 = dyld4::Atlas::Image::ml(a1);
  v14[3] = v8 - mach_o::Header::preferredLoadAddress(v9);
  v10 = dyld4::Atlas::Image::ml(a1);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = ___ZN5dyld45Atlas5Image17contentForSectionEPKcS3_U13block_pointerFvPKvyyE_block_invoke;
  v13[3] = &unk_1EEE9C278;
  v13[8] = a2;
  v13[9] = a3;
  v13[4] = a4;
  v13[5] = v14;
  v13[6] = &v15;
  v13[7] = a1;
  mach_o::Header::forEachSection(v10, v13);
  v11 = *(v16 + 24);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t ___ZN5dyld45Atlas5Image17contentForSectionEPKcS3_U13block_pointerFvPKvyyE_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a2 + 24);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  result = strlen(v7);
  if (v6 == result)
  {
    result = memcmp(*(a2 + 16), v7, v6);
    if (!result)
    {
      v10 = *(a2 + 8);
      result = strlen(*(a1 + 72));
      if (v10 == result)
      {
        result = memcmp(*a2, *(a1 + 72), v10);
        if (!result)
        {
          if (*(v8 + 152) == 1)
          {
            v11 = (v8 + 144);
          }

          else
          {
            v11 = (*(*(a1 + 40) + 8) + 24);
          }

          v12 = *v11;
          v13 = *(a2 + 64);
          if (v13)
          {
            v14 = *(v8 + 88);
            if (v14)
            {
              v15 = *(v14 + 8);
            }

            else
            {
              v15 = 0;
            }

            v16 = dyld4::Atlas::Mapper::map(v15, v12 + *(a2 + 56), *(a2 + 64));
            v18 = v17;
            v19 = *(a2 + 64);
            result = (*(*(a1 + 32) + 16))();
            if (v16)
            {
              if (v18)
              {
                result = munmap((v16 & -vm_page_size), &v16[v13 - (v16 & -vm_page_size)]);
              }
            }
          }

          else
          {
            result = (*(*(a1 + 32) + 16))();
          }

          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a3 = 1;
        }
      }
    }
  }

  return result;
}

atomic_uint **dyld4::Atlas::SharedCacheLocals::SharedCacheLocals(atomic_uint **a1, atomic_uint **a2, char a3)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    v5 = *a1;
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = a3;
    if (v5)
    {
      v6 = *(v5 + 1);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
    *(a1 + 32) = 0;
    a1[3] = 0;
    *(a1 + 40) = a3;
  }

  v7 = dyld4::Atlas::Mapper::map(v6, 0, 552);
  v8 = v7;
  v10 = v9;
  if (*a1)
  {
    v11 = *(*a1 + 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v7 + 10);
  v13 = dyld4::Atlas::Mapper::map(v11, *(v7 + 9), v12);
  v14 = a1[2];
  v15 = a1[3];
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  v16 = *(a1 + 32);
  *(a1 + 32) = v17;
  if (v15 && v16)
  {
    munmap((v15 & -vm_page_size), v15 + v14 - (v15 & -vm_page_size));
  }

  if (v8 && (v10 & 1) != 0)
  {
    munmap((v8 & -vm_page_size), &v8[-(v8 & -vm_page_size) + 552]);
  }

  return a1;
}

void dyld4::Atlas::SharedCache::forEachInstalledCacheWithSystemPath(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v9 = 0;
  v35 = 0;
  v36 = v1;
  v37 = 0;
  v38 = 0;
  do
  {
    v30[0] = 0;
    if ((!v5 || dyld4::Utils::concatenatePaths(v30, v5, 0x400) <= 0x3FF) && dyld4::Utils::concatenatePaths(v30, dyld4::Atlas::SharedCache::forEachInstalledCacheWithSystemPath(lsl::Allocator &,dyld4::FileManager &,char const*,void({block_pointer})(dyld4::Atlas::SharedCache*))::cacheDirPaths[v9], 0x400) <= 0x3FF)
    {
      __source[0] = 0;
      if (realpath_DARWIN_EXTSN(v30, __source))
      {
        if (dyld4::Utils::concatenatePaths(__source, "/", 0x400) <= 0x3FF)
        {
          v23 = lsl::Allocator::strdup(v8, __source);
          lsl::OrderedSet<char const*,lsl::ConstCharStarCompare>::insert(&v35, &v23, v27);
          if (v27[104])
          {
            v10 = opendir(__source);
            if (v10)
            {
              v11 = v10;
              v22 = 0;
              __dst[0] = 0;
              while (!readdir_r(v11, &v26, &v22) && v22)
              {
                if (v22->d_type == 8 && !DyldSharedCache::isSubCachePath(v22->d_name, v12) && strlcpy(__dst, __source, 0x400uLL) <= 0x3FF && dyld4::Utils::concatenatePaths(__dst, v22->d_name, 0x400) <= 0x3FF)
                {
                  dyld4::FileManager::fileRecordForPath(v7, v8, __dst, v24);
                  dyld4::Atlas::SharedCache::createForFileRecord(v8, v24, &v21);
                  v13 = v21;
                  if (v21)
                  {
                    (*(v3 + 16))(v3);
                  }

                  lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(&v21, v13);
                  dyld4::FileRecord::~FileRecord(v24);
                }
              }

              closedir(v11);
            }
          }

          else
          {
            lsl::Allocator::free(v8, v23);
          }
        }
      }
    }

    ++v9;
  }

  while (v9 != 17);
  v26.d_ino = &v35;
  memset(&v26.d_seekoff, 0, 91);
  v14 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v26);
  v15 = *v14;
  v31[0] = *(v14 + 1);
  v16 = *(v14 + 9);
  v17 = *(v14 + 7);
  v18 = *(v14 + 5);
  v31[1] = *(v14 + 3);
  v31[2] = v18;
  v31[3] = v17;
  v31[4] = v16;
  v19 = v14[11];
  v33 = *(v14 + 48);
  v20 = *(v14 + 98);
  v32 = v19;
  *v30 = v15;
  v34 = v20;
  v29 = 0u;
  memset(&v26.d_seekoff, 0, 91);
  v26.d_ino = &v35;
  while (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(v30, &v26))
  {
    lsl::Allocator::free(v8, *(*(v31 + v34 - 1) + 8 * *(&v32 + v34 - 1)));
    lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(v30);
  }

  if (v35)
  {
    lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::deallocate(v35, v36);
  }
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

void dyld4::Atlas::SharedCache::createForFileRecord(uint64_t a1@<X0>, dyld4::FileRecord *a2@<X1>, void *a3@<X8>)
{
  dyld4::Atlas::Mapper::mapperForSharedCache();
  v7 = v12;
  if (!v12)
  {
    *a3 = 0;
    return;
  }

  if (!*(v12 + 1))
  {
    *a3 = 0;
    goto LABEL_7;
  }

  v8 = lsl::MemoryManager::memoryManager(v12);
  v9 = lsl::MemoryManager::defaultAllocator(v8);
  v10 = *(*(*(v12 + 1) + 8) + 16);
  v11 = lsl::Allocator::aligned_alloc(v9, 8uLL, 0xB0uLL);
  dyld4::Atlas::SharedCache::SharedCache(v11, a1, a2, &v12, v10, 1);
  v7 = v12;
  *a3 = v11;
  if (v7)
  {
LABEL_7:
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v7, v6);
  }
}

uint64_t dyld4::Atlas::SharedCache::forEachFilePath(uint64_t a1, uint64_t a2)
{
  Path = dyld4::FileRecord::getPath((a1 + 8));
  result = (*(a2 + 16))(a2, Path);
  v6 = *(a1 + 128);
  v7 = *(v6 + 16);
  if (v7 >= 0x18C)
  {
    if (v7 > 0x1C8)
    {
      if (*(v6 + 396))
      {
        v10 = 0;
        v11 = (*(v6 + 392) + v6 + 24);
        do
        {
          v12 = dyld4::FileRecord::getPath((a1 + 8));
          snprintf(__str, 0x400uLL, "%s%s", v12, v11);
          result = (*(a2 + 16))(a2, __str);
          ++v10;
          v6 = *(a1 + 128);
          v11 += 56;
        }

        while (v10 < *(v6 + 396));
      }
    }

    else if (*(v6 + 396))
    {
      v8 = 0;
      do
      {
        v9 = dyld4::FileRecord::getPath((a1 + 8));
        snprintf(__str, 0x400uLL, "%s.%u", v9, ++v8);
        result = (*(a2 + 16))(a2, __str);
        v6 = *(a1 + 128);
      }

      while (v8 < *(v6 + 396));
    }

    if (*(v6 + 16) >= 0x190u)
    {
      result = uuid_is_null((v6 + 400));
      if (!result)
      {
        v13 = dyld4::FileRecord::getPath((a1 + 8));
        strlcpy(__str, v13, 0x400uLL);
        if (strstr(__str, ".development"))
        {
          __str[strlen(__str) - 12] = 0;
        }

        strlcat(__str, ".symbols", 0x400uLL);
        return (*(a2 + 16))(a2, __str);
      }
    }
  }

  return result;
}

void dyld4::Atlas::SharedCache::forEachImage(void *a1, uint64_t a2)
{
  v2 = a1[16];
  v3 = *(v2 + 144);
  if (v3)
  {
    v6 = (*(v2 + 136) + v2 + 16);
    v7 = 32 * v3;
    v8 = 0uLL;
    do
    {
      v10 = *v6;
      v6 += 4;
      v9 = v10;
      v14 = *a1;
      v15[0] = v8;
      v15[1] = v8;
      v15[2] = v8;
      v15[3] = v8;
      v16 = 0x1FFFFFFFFLL;
      v17 = 0;
      v18 = 1;
      v12 = a1[18];
      v11 = a1[19];
      v19 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(v12, 1u, memory_order_relaxed);
      }

      *&v21[9] = v8;
      v20 = v8;
      *v21 = v8;
      v22 = v11;
      v23 = 1;
      v24 = v11 + v9;
      v25 = a1;
      v26[0] = 0;
      *(v26 + 7) = 0;
      (*(a2 + 16))(a2, &v14);
      if (*&v21[16] && v21[24] == 1)
      {
        munmap((*&v21[16] & -vm_page_size), *&v21[8] + *&v21[16] - (*&v21[16] & -vm_page_size));
      }

      if (v19)
      {
        lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v19, v13);
      }

      dyld4::FileRecord::~FileRecord(v15);
      v7 -= 32;
      v8 = 0uLL;
    }

    while (v7);
  }
}

void dyld4::Atlas::SharedCache::withImageForIndex(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1[16] + *(a1[16] + 136) + 32 * a2 + 16);
  v7 = *a1;
  memset(v8, 0, sizeof(v8));
  v9 = 0x1FFFFFFFFLL;
  v10 = 0;
  v11 = 1;
  v5 = a1[18];
  v4 = a1[19];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  }

  memset(v14, 0, 25);
  v13 = 0uLL;
  v14[4] = v4;
  v15 = 1;
  v16 = v4 + v3;
  v17 = a1;
  v18[0] = 0;
  *(v18 + 7) = 0;
  (*(a3 + 16))(a3, &v7);
  if (v14[2] && LOBYTE(v14[3]) == 1)
  {
    munmap((v14[2] & -vm_page_size), v14[1] + v14[2] - (v14[2] & -vm_page_size));
  }

  if (v12)
  {
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v12, v6);
  }

  dyld4::FileRecord::~FileRecord(v8);
}

void dyld4::Atlas::SharedCache::localSymbols(dyld4::Atlas::SharedCache *this@<X0>, atomic_uint ***a2@<X8>)
{
  Path = dyld4::FileRecord::getPath((this + 8));
  strlcpy(__dst, Path, 0x400uLL);
  v5 = *(this + 16);
  v6 = *(v5 + 16);
  if (v6 < 0x190)
  {
    if (*(v5 + 80) && *(v5 + 72))
    {
      goto LABEL_8;
    }

LABEL_12:
    *a2 = 0;
    return;
  }

  if (uuid_is_null((v5 + 400)))
  {
    goto LABEL_12;
  }

  if (strstr(__dst, ".development"))
  {
    __dst[strlen(__dst) - 12] = 0;
  }

  strlcat(__dst, ".symbols", 0x400uLL);
LABEL_8:
  v7 = dyld4::FileRecord::fileManager((this + 8));
  dyld4::FileManager::fileRecordForPath(v7, *this, __dst, v17);
  dyld4::Atlas::Mapper::mapperForSharedCacheLocals(v8, v17, v9);
  v11 = v16;
  if (v16)
  {
    if (*(v16 + 1))
    {
      v12 = v6 > 0x18F;
      v13 = lsl::MemoryManager::memoryManager(v16);
      v14 = lsl::MemoryManager::defaultAllocator(v13);
      v15 = lsl::Allocator::aligned_alloc(v14, 8uLL, 0x30uLL);
      dyld4::Atlas::SharedCacheLocals::SharedCacheLocals(v15, &v16, v12);
      v11 = v16;
      *a2 = v15;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 0;
    }

    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v11, v10);
  }

  else
  {
    *a2 = 0;
  }

LABEL_16:
  dyld4::FileRecord::~FileRecord(v17);
}

uint64_t dyld4::Atlas::SharedCache::pin(dyld4::Atlas::SharedCache *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    return dyld4::Atlas::Mapper::pin(*(v1 + 8));
  }

  else
  {
    return dyld4::Atlas::Mapper::pin(0);
  }
}

uint64_t dyld4::Atlas::SharedCache::unpin(dyld4::Atlas::SharedCache *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    return dyld4::Atlas::Mapper::unpin(*(v1 + 8));
  }

  else
  {
    return dyld4::Atlas::Mapper::unpin(0);
  }
}

dyld4::Atlas::Process *dyld4::Atlas::Process::Process(dyld4::Atlas::Process *this, lsl::Allocator *a2, dyld4::FileManager *a3, int a4, int *a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 4) = a4;
  *(this + 5) = 0;
  v7 = dispatch_queue_create("com.apple.dyld.introspection", 0);
  *(this + 3) = v7;
  *(this + 4) = 0;
  *(this + 10) = 0;
  v8 = lsl::MemoryManager::memoryManager(v7);
  v9 = lsl::MemoryManager::defaultAllocator(v8);
  *(this + 6) = 0;
  *(this + 7) = v9;
  *(this + 9) = 0;
  *(this + 80) = 0;
  v10 = lsl::MemoryManager::memoryManager(v9);
  v11 = lsl::MemoryManager::defaultAllocator(v10);
  *(this + 11) = 0;
  *(this + 12) = v11;
  *(this + 14) = 0;
  *(this + 120) = 0;
  *(this + 16) = 0;
  v12 = (this + 128);
  *(this + 34) = 1;
  dyld4::Atlas::Process::getSnapshot(this, a5, &v16);
  if (&v16 != (this + 128))
  {
    v14 = *v12;
    *v12 = v16;
    v16 = v14;
  }

  lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v16, v13);
  return this;
}

NSObject *dyld4::Atlas::Process::teardownNotifications(dispatch_queue_t *this)
{
  if (dispatch_get_current_queue() != this[3])
  {
    dyld4::Atlas::Process::teardownNotifications();
  }

  if (*(this + 10) != 1)
  {
    dyld4::Atlas::Process::teardownNotifications();
  }

  result = this[4];
  if (result)
  {
    dispatch_source_cancel(result);
    *(this + 5) = 0;
    this[4] = 0;
    *(this + 10) = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    memset(v46, 0, 24);
    v38 = (this + 11);
    v3 = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v38);
    v4 = *v3;
    v5 = *(v3 + 13);
    v6 = *(v3 + 11);
    v7 = v3[15];
    v8 = v3[16];
    v33 = *(v3 + 9);
    v34 = v6;
    v35 = v5;
    *v36 = v7;
    v9 = *(v3 + 7);
    v10 = *(v3 + 5);
    v11 = *(v3 + 3);
    v29 = *(v3 + 1);
    v30 = v11;
    v31 = v10;
    v32 = v9;
    *&v36[15] = *(v3 + 135);
    *&v36[8] = v8;
    LOBYTE(v7) = *(v3 + 143);
    v28 = v4;
    v36[23] = v7;
    v54 = 0u;
    memset(v55, 0, 23);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = (this + 11);
    memset(v46, 0, 24);
    while (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v28, &v38))
    {
      v12 = *(&v29 + v36[23] - 1) + 24 * v36[v36[23] + 7];
      if (!*v12)
      {
        dyld4::Atlas::Process::teardownNotifications();
      }

      v13 = *(v12 + 8);
      if (v13)
      {
        dispatch_release(v13);
        *(v12 + 8) = 0;
      }

      v14 = *(v12 + 16);
      if (v14)
      {
        _Block_release(v14);
        *(v12 + 16) = 0;
      }

      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v28);
    }

    v15 = (this + 6);
    v38 = v15;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v47 = 0;
    v16 = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v38);
    v17 = *v16;
    v18 = *(v16 + 15);
    v19 = *(v16 + 13);
    v20 = *(v16 + 11);
    v33 = *(v16 + 9);
    v34 = v20;
    v35 = v19;
    *v36 = v18;
    v21 = *(v16 + 7);
    v22 = *(v16 + 5);
    v23 = *(v16 + 3);
    v29 = *(v16 + 1);
    v30 = v23;
    v31 = v22;
    v32 = v21;
    *&v36[16] = *(v16 + 17);
    v24 = *(v16 + 152);
    v28 = v17;
    v37 = v24;
    memset(v55, 0, sizeof(v55));
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v38 = v15;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v47 = 0;
    for (result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v28, &v38); result; result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v28, &v38))
    {
      v25 = *(&v29 + v37 - 1) + 32 * v36[v37 + 15];
      if (!*v25)
      {
        dyld4::Atlas::Process::teardownNotifications();
      }

      v26 = *(v25 + 8);
      if (v26)
      {
        dispatch_release(v26);
        *(v25 + 8) = 0;
      }

      v27 = *(v25 + 16);
      if (v27)
      {
        _Block_release(v27);
        *(v25 + 16) = 0;
      }

      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v28);
    }
  }

  return result;
}

void **dyld4::Atlas::Process::synthesizeSnapshot@<X0>(mach_port_name_t *this@<X0>, unsigned int *a2@<X1>, void **a3@<X8>)
{
  v6 = lsl::MemoryManager::memoryManager(this);
  v7 = lsl::MemoryManager::defaultAllocator(v6);
  v8 = *this;
  v9 = *(this + 1);
  v10 = lsl::Allocator::aligned_alloc(v7, 8uLL, 0x70uLL);
  v52 = dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(v10, v8, v9, 0);
  x = 0;
  v11 = pid_for_task(this[4], &x);
  if (a2)
  {
    *a2 = v11;
    if (v11)
    {
      v13 = -352321536;
LABEL_9:
      v14 = v13 & 0xFF000000 | v11 & 0xFFFFFF;
      goto LABEL_10;
    }

    task_info_outCnt = 12;
    v11 = task_info(this[4], 0x14u, task_info_out, &task_info_outCnt);
    *a2 = v11;
    if (v11)
    {
      v13 = -385875968;
      goto LABEL_9;
    }
  }

  else
  {
    if (v11)
    {
      goto LABEL_11;
    }

    task_info_outCnt = 12;
    if (task_info(this[4], 0x14u, task_info_out, &task_info_outCnt))
    {
      goto LABEL_11;
    }
  }

  address = 0;
  size = 0;
  infoCnt = 9;
  object_name = 0;
  v16 = 0;
  if (!mach_vm_region(this[4], &address, &size, 10, info, &infoCnt, &object_name))
  {
    v18 = 0;
    v17 = 0;
    while (info[0] != 5)
    {
LABEL_57:
      address += size;
      infoCnt = 9;
      object_name = 0;
      if (mach_vm_region(this[4], &address, &size, 10, info, &infoCnt, &object_name))
      {
        goto LABEL_15;
      }
    }

    v19 = lsl::Allocator::malloc(*this, size);
    outsize = 0;
    v20 = mach_vm_read_overwrite(this[4], address, size, v19, &outsize);
    if (a2)
    {
      *a2 = v20;
      if (v20)
      {
        *a2 = v20 & 0xFFFFFF | 0xE8000000;
        goto LABEL_49;
      }
    }

    else
    {
      if (v20)
      {
        v16 = v20 & 0xFFFFFF | 0xE8000000;
        goto LABEL_49;
      }

      v16 = 0;
    }

    v21 = mach_o::Header::isMachO(v19, outsize);
    if (v21)
    {
      v22 = v21;
      if (dyld3::MachOFile::isMainExecutable(v21))
      {
        v23 = proc_regionfilename(x, address, buffer, 0x400u);
        if (v23)
        {
          buffer[v23] = 0;
        }

        v24 = *(this + 1);
        v25 = lsl::MemoryManager::memoryManager(v23);
        v26 = lsl::MemoryManager::defaultAllocator(v25);
        dyld4::FileManager::fileRecordForPath(v24, v26, buffer, v70);
        v69 = 0uLL;
        Uuid = mach_o::Header::getUuid(v22, &v69);
        v68 = v69;
        v28 = v52;
        v29 = lsl::MemoryManager::memoryManager(Uuid);
        v30 = lsl::MemoryManager::defaultAllocator(v29);
        v31 = address;
        v55 = v30;
        dyld4::FileRecord::FileRecord(v56, v70);
        v57 = 0;
        v58 = v68;
        v60 = 0;
        v61 = 0;
        v59 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = v31;
        v66 = 0;
        v67[0] = 0;
        *(v67 + 7) = 0;
        dyld4::Atlas::ProcessSnapshot::addImage(v28, &v55);
        if (v61 && v62 == 1)
        {
          munmap((v61 & -vm_page_size), v60 + v61 - (v61 & -vm_page_size));
        }

        if (v57)
        {
          lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v57, v32);
        }

        dyld4::FileRecord::~FileRecord(v56);
        dyld4::FileRecord::~FileRecord(v70);
        v17 = 1;
      }

      else if (mach_o::Header::isDylinker(v22))
      {
        v33 = proc_regionfilename(x, address, buffer, 0x400u);
        if (v33)
        {
          buffer[v33] = 0;
        }

        v34 = *(this + 1);
        v35 = lsl::MemoryManager::memoryManager(v33);
        v36 = lsl::MemoryManager::defaultAllocator(v35);
        dyld4::FileManager::fileRecordForPath(v34, v36, buffer, v70);
        v69 = 0uLL;
        v37 = mach_o::Header::getUuid(v22, &v69);
        v68 = v69;
        v38 = v52;
        v39 = lsl::MemoryManager::memoryManager(v37);
        v40 = lsl::MemoryManager::defaultAllocator(v39);
        v41 = address;
        v55 = v40;
        dyld4::FileRecord::FileRecord(v56, v70);
        v57 = 0;
        v58 = v68;
        v60 = 0;
        v61 = 0;
        v59 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = v41;
        v66 = 0;
        v67[0] = 0;
        *(v67 + 7) = 0;
        dyld4::Atlas::ProcessSnapshot::addImage(v38, &v55);
        if (v61 && v62 == 1)
        {
          munmap((v61 & -vm_page_size), v60 + v61 - (v61 & -vm_page_size));
        }

        if (v57)
        {
          lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v57, v42);
        }

        dyld4::FileRecord::~FileRecord(v56);
        dyld4::FileRecord::~FileRecord(v70);
        if (v17)
        {
LABEL_51:
          *a3 = 0;
          v43 = 0;
          if (&v52 != a3)
          {
            *a3 = v52;
            v52 = 0;
          }

          v18 = 1;
          v17 = 1;
          if (!v19)
          {
LABEL_56:
            if (!v43)
            {
              return lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v52, v12);
            }

            goto LABEL_57;
          }

LABEL_55:
          lsl::Allocator::freeObject(v19, v12);
          goto LABEL_56;
        }

        goto LABEL_48;
      }
    }

LABEL_49:
    if ((v18 & 1) == 0)
    {
      v18 = 0;
LABEL_54:
      v43 = 1;
      if (!v19)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    if (v17)
    {
      goto LABEL_51;
    }

LABEL_48:
    v17 = 0;
    v18 = 1;
    goto LABEL_54;
  }

  v17 = 0;
LABEL_15:
  if (a2)
  {
    v16 = *a2;
  }

  if (v16)
  {
    goto LABEL_11;
  }

  if ((v17 & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v14 = 5;
LABEL_10:
    *a2 = v14;
LABEL_11:
    *a3 = 0;
    return lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v52, v12);
  }

  *a3 = 0;
  if (&v52 != a3)
  {
    *a3 = v52;
    v52 = 0;
  }

  return lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v52, v12);
}

void dyld4::Atlas::Process::setupNotifications(dyld4::Atlas::Process *this, int *a2)
{
  if (dispatch_get_current_queue() != *(this + 3))
  {
    dyld4::Atlas::Process::setupNotifications();
  }

  if (!a2)
  {
    dyld4::Atlas::Process::setupNotifications();
  }

  if (*(this + 10))
  {
    dyld4::Atlas::Process::setupNotifications();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_180110290;
  v4 = mach_port_construct(mach_task_self_, &options, this, this + 5);
  *a2 = v4;
  if (!v4)
  {
    previous = 0;
    v5 = mach_port_request_notification(mach_task_self_, *(this + 5), 70, 1u, *(this + 5), 0x15u, &previous);
    *a2 = v5;
    if (v5 | previous || (v6 = task_dyld_process_info_notify_register(*(this + 4), *(this + 5)), (*a2 = v6) != 0) || (v7 = dispatch_source_create(&_dispatch_source_type_mach_recv, *(this + 5), 0, *(this + 3)), (*(this + 4) = v7) == 0))
    {
      mach_port_destruct(mach_task_self_, *(this + 5), 0, this);
    }

    else
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___ZN5dyld45Atlas7Process18setupNotificationsEPi_block_invoke;
      handler[3] = &__block_descriptor_tmp_47;
      handler[4] = this;
      dispatch_source_set_event_handler(v7, handler);
      v8 = *(this + 4);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = ___ZN5dyld45Atlas7Process18setupNotificationsEPi_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_48;
      v9[6] = *(this + 2);
      v9[4] = this;
      v9[5] = v8;
      dispatch_source_set_cancel_handler(v8, v9);
      dispatch_activate(*(this + 4));
      *(this + 10) = 1;
    }
  }
}

void dyld4::Atlas::Process::handleNotifications(dyld4::Atlas::Process *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  if (*(v1 + 40) == 1)
  {
    v2 = v1;
    bzero(&msg, 0x8000uLL);
    if (mach_msg(&msg, 50333698, 0, 0x7FCCu, *(v2 + 20), 0, 0) || (msg.msgh_bits & 0x80000000) != 0)
    {
      v3 = __stderrp;
      msgh_id = msg.msgh_id;
    }

    else
    {
      msgh_id = msg.msgh_id;
      if ((msg.msgh_id & 0xFFFFF000) == 0x4000)
      {
        if (msg.msgh_size == 24)
        {
          if ((msg.msgh_id & 0xFFF) != 0)
          {
            *&v24.msgh_bits = v2 + 48;
            *&v24.msgh_remote_port = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0;
            v5 = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v24);
            v6 = *v5;
            v7 = *(v5 + 15);
            v8 = *(v5 + 13);
            v9 = *(v5 + 11);
            v20[4] = *(v5 + 9);
            v20[5] = v9;
            v20[6] = v8;
            v20[7] = v7;
            v10 = *(v5 + 7);
            v11 = *(v5 + 5);
            v12 = *(v5 + 3);
            v20[0] = *(v5 + 1);
            v20[1] = v12;
            v20[2] = v11;
            v20[3] = v10;
            v21 = *(v5 + 17);
            v13 = *(v5 + 152);
            *v19 = v6;
            v22 = v13;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v34 = 0u;
            *&v24.msgh_bits = v2 + 48;
            *&v24.msgh_remote_port = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0;
            while (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(v19, &v24))
            {
              v14 = *(v20 + v22 - 1) + 32 * *(&v21 + v22 - 1);
              if ((msg.msgh_id & 0xFFF) == *(v14 + 24))
              {
                dispatch_async_and_wait(*(v14 + 8), *(v14 + 16));
              }

              lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(v19);
            }
          }

          else
          {
            v19[0] = 0;
            dyld4::Atlas::Process::getSnapshot(v2, v19, &v24);
            if (!v19[0])
            {
              lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::withUnsafe<dyld4::Atlas::Process::handleNotifications(void)::$_0>(&v24, v2);
              lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::withUnsafe<dyld4::Atlas::Process::handleNotifications(void)::$_1>((v2 + 128), &v24, v2);
            }

            v17 = (v2 + 128);
            if (&v24 != (v2 + 128))
            {
              v18 = *v17;
              *v17 = *&v24.msgh_bits;
              *&v24.msgh_bits = v18;
            }

            lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v24, v16);
          }
        }

        else
        {
          dyld4::Atlas::Process::teardownNotifications(v2);
        }

        *&v24.msgh_voucher_port = 0;
        v24.msgh_remote_port = msg.msgh_remote_port;
        v24.msgh_local_port = 0;
        v24.msgh_bits = msg.msgh_bits & 0x1F;
        v24.msgh_size = 24;
        if (!mach_msg(&v24, 1, 0x18u, 0, 0, 0, 0))
        {
          msg.msgh_remote_port = 0;
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      if (msg.msgh_id >= 0x2000)
      {
        if (msg.msgh_id == 0x2000 || msg.msgh_id == 12288)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (msg.msgh_id == 70)
        {
          v15 = (&msg.msgh_bits + ((msg.msgh_size + 3) & 0x1FFFFFFFCLL));
          if (*v15 || v15[1] < 0x34u || v15[10])
          {
            goto LABEL_5;
          }

LABEL_34:
          dyld4::Atlas::Process::teardownNotifications(v2);
          goto LABEL_5;
        }

        if (msg.msgh_id == 4096)
        {
LABEL_5:
          mach_msg_destroy(&msg);
          return;
        }
      }

      v3 = __stderrp;
    }

    fprintf(v3, "dyld: received unknown message id=0x%X, size=%d\n", msgh_id, msg.msgh_size);
    goto LABEL_5;
  }
}

void ___ZN5dyld45Atlas7Process18setupNotificationsEPi_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  task_dyld_process_info_notify_deregister(*(a1 + 48), *(a1 + 52));
  mach_port_destruct(mach_task_self_, *(a1 + 52), 0, v2);
  v3 = *(a1 + 40);

  dispatch_release(v3);
}

void lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::withUnsafe<dyld4::Atlas::Process::handleNotifications(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 128);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZZN5dyld45Atlas7Process19handleNotificationsEvENK3__0clEPNS0_15ProcessSnapshotE_block_invoke;
  v4[3] = &__block_descriptor_tmp_76;
  v4[4] = a2;
  dyld4::Atlas::ProcessSnapshot::forEachImageNotIn(v3, v2, v4);
}

void lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::withUnsafe<dyld4::Atlas::Process::handleNotifications(void)::$_1>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZZN5dyld45Atlas7Process19handleNotificationsEvENK3__1clEPNS0_15ProcessSnapshotE_block_invoke;
  v5[3] = &__block_descriptor_tmp_78;
  v5[4] = a3;
  dyld4::Atlas::ProcessSnapshot::forEachImageNotIn(v4, v3, v5);
}

uint64_t dyld4::Atlas::Process::registerAtlasChangedEventHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN5dyld45Atlas7Process32registerAtlasChangedEventHandlerEPiP16dispatch_queue_sU13block_pointerFvPNS0_5ImageEbE_block_invoke;
  block[3] = &unk_1EEE9C3B0;
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[4] = a4;
  block[5] = &v8;
  dispatch_async_and_wait(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void ___ZN5dyld45Atlas7Process32registerAtlasChangedEventHandlerEPiP16dispatch_queue_sU13block_pointerFvPNS0_5ImageEbE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (*(v3 + 40))
  {
    if (*v2)
    {
      v4 = *(a1 + 48);

      dyld4::Atlas::Process::teardownNotifications(v4);
      return;
    }
  }

  else
  {
    dyld4::Atlas::Process::setupNotifications(*(a1 + 48), v2);
    if (**(a1 + 56))
    {
      return;
    }
  }

  v5 = *(v3 + 128);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZN5dyld45Atlas7Process32registerAtlasChangedEventHandlerEPiP16dispatch_queue_sU13block_pointerFvPNS0_5ImageEbE_block_invoke_2;
  v12[3] = &unk_1EEE9C388;
  v12[4] = *(a1 + 32);
  dyld4::Atlas::ProcessSnapshot::forEachImage(v5, v12);
  if (*(v3 + 40) != 1)
  {
    ___ZN5dyld45Atlas7Process32registerAtlasChangedEventHandlerEPiP16dispatch_queue_sU13block_pointerFvPNS0_5ImageEbE_block_invoke_cold_1();
  }

  dispatch_retain(*(a1 + 64));
  v6 = *(v3 + 136);
  *(v3 + 136) = v6 + 1;
  *(*(*(a1 + 40) + 8) + 24) = v6;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(a1 + 64);
  v10 = _Block_copy(v7);
  v13 = *(v8 + 24);
  v14 = v9;
  v15 = v10;
  v11 = *(v3 + 104);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::const_iterator(v17, (v3 + 88), &v13);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::insert_internal(v3 + 88, v17, &v13, v16);
}

void dyld4::Atlas::ProcessSnapshot::forEachImage(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = (a1 + 16);
  v28 = (a1 + 16);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, 27);
  v4 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v28);
  v5 = *v4;
  v24[0] = *(v4 + 1);
  v6 = *(v4 + 9);
  v7 = *(v4 + 7);
  v8 = *(v4 + 5);
  v24[1] = *(v4 + 3);
  v24[2] = v8;
  v24[3] = v7;
  v24[4] = v6;
  v9 = v4[11];
  v26 = *(v4 + 48);
  v25 = v9;
  LOBYTE(v9) = *(v4 + 98);
  v23 = v5;
  v27 = v9;
  v35 = 0u;
  v28 = v3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, 27);
  if (!lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&v23, &v28))
  {
    v11 = (a1 + 64);
    v19 = *(a1 + 64);
    if (!v19)
    {
      return;
    }

    goto LABEL_17;
  }

  v10 = 0;
  v11 = (a1 + 64);
  do
  {
    v12 = v27 - 1;
    v13 = *(v24 + v12);
    v14 = *(&v25 + v12);
    v15 = *v11;
    v16 = *(v13 + 8 * v14);
    if (*v11 && *(v16 + 160) >= v15[20])
    {
      if ((v10 & 1) == 0 && *(v15[16] + 144))
      {
        v17 = 0;
        do
        {
          if (lsl::Bitmap::checkBit(*(a1 + 56), v17))
          {
            v18 = *v11;
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 0x40000000;
            v34[2] = ___ZZN5dyld45Atlas15ProcessSnapshot12forEachImageEU13block_pointerFvPNS0_5ImageEEENK3__0clEv_block_invoke;
            v34[3] = &__block_descriptor_tmp_81;
            v34[4] = &v22;
            dyld4::Atlas::SharedCache::withImageForIndex(v18, v17, v34);
          }

          ++v17;
        }

        while (*(*(*v11 + 128) + 144) > v17);
      }

      v16 = *(v13 + 8 * v14);
      v10 = 1;
    }

    (*(v22 + 16))(v22, v16);
    lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v23);
  }

  while (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&v23, &v28));
  v19 = *v11;
  if (*v11 && (v10 & 1) == 0)
  {
LABEL_17:
    if (*(*(v19 + 128) + 144))
    {
      v20 = 0;
      do
      {
        if (lsl::Bitmap::checkBit(*(a1 + 56), v20))
        {
          v21 = *v11;
          v28 = _NSConcreteStackBlock;
          *&v29 = 0x40000000;
          *(&v29 + 1) = ___ZZN5dyld45Atlas15ProcessSnapshot12forEachImageEU13block_pointerFvPNS0_5ImageEEENK3__0clEv_block_invoke;
          *&v30 = &__block_descriptor_tmp_81;
          *(&v30 + 1) = &v22;
          dyld4::Atlas::SharedCache::withImageForIndex(v21, v20, &v28);
        }

        ++v20;
      }

      while (*(*(*v11 + 128) + 144) > v20);
    }
  }
}

uint64_t dyld4::Atlas::Process::registerEventHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v5 = *(a1 + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZN5dyld45Atlas7Process20registerEventHandlerEPijP16dispatch_queue_sU13block_pointerFvvE_block_invoke;
  v8[3] = &unk_1EEE9C3D8;
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a4;
  v8[4] = a5;
  v8[5] = &v10;
  v9 = a3;
  dispatch_async_and_wait(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void ___ZN5dyld45Atlas7Process20registerEventHandlerEPijP16dispatch_queue_sU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (!v3)
  {
    dyld4::Atlas::Process::setupNotifications(*(a1 + 48), *(a1 + 56));
    if (**(a1 + 56))
    {
      return;
    }

    v3 = *(v2 + 40);
  }

  if (v3 != 1)
  {
    ___ZN5dyld45Atlas7Process20registerEventHandlerEPijP16dispatch_queue_sU13block_pointerFvvE_block_invoke_cold_1();
  }

  dispatch_retain(*(a1 + 64));
  v4 = *(v2 + 136);
  *(v2 + 136) = v4 + 1;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(a1 + 64);
  v7 = _Block_copy(*(a1 + 32));
  v8 = *(a1 + 72);
  v10 = *(v5 + 24);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v9 = *(v2 + 64);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::const_iterator(v15, (v2 + 48), &v10);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::insert_internal(v2 + 48, v15, &v10, v14);
}

void dyld4::Atlas::Process::unregisterEventHandler(dyld4::Atlas::Process *this, int a2)
{
  v2 = *(this + 3);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZN5dyld45Atlas7Process22unregisterEventHandlerEj_block_invoke;
  v3[3] = &__block_descriptor_tmp_57;
  v3[4] = this;
  v4 = a2;
  dispatch_async_and_wait(v2, v3);
}

double ___ZN5dyld45Atlas7Process22unregisterEventHandlerEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v34[8] = 0;
  *&v34[16] = 0;
  *v34 = *(a1 + 40);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::find(v2 + 88, v34, &v36);
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  *&v32[15] = *(v44 + 15);
  *v32 = v44[0];
  v33 = BYTE7(v44[1]);
  memset(v34, 0, 135);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v2 + 88;
  memset(v44, 0, 24);
  if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v24, &v36))
  {
    v3 = v33;
    v4 = v33 - 1;
    v5 = *(&v25 + v4) + 24 * v32[v4 + 8];
    if (!*(v5 + 16))
    {
      ___ZN5dyld45Atlas7Process22unregisterEventHandlerEj_block_invoke_cold_1();
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      dispatch_release(v6);
      v3 = v33;
      v4 = v33 - 1;
    }

    v7 = *(*(&v25 + v4) + 24 * v32[v4 + 8] + 16);
    if (v7)
    {
      _Block_release(v7);
      v3 = v33;
    }

    *&v34[72] = v29;
    *&v34[88] = v30;
    *&v34[104] = v31;
    *&v34[8] = v25;
    *&v34[24] = v26;
    *&v34[40] = v27;
    *&v34[56] = v28;
    *&v34[135] = *&v32[15];
    *&v34[120] = *v32;
    *&v34[128] = *&v32[8];
    *v34 = v24;
    v34[143] = v3;
    *&result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::erase(v2 + 88, v34, &v36).n128_u64[0];
  }

  else
  {
    memset(&v34[8], 0, 24);
    *v34 = *(a1 + 40);
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::find(v2 + 48, v34, &v36);
    v13 = v36;
    v18 = v41;
    v19 = v42;
    v20 = v43;
    v21 = v44[0];
    v14 = v37;
    v15 = v38;
    v16 = v39;
    v17 = v40;
    v22 = v44[1];
    v23 = v45;
    memset(v34, 0, 144);
    v36 = v2 + 48;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    v45 = 0;
    if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v13, &v36))
    {
      v9 = v23;
      v10 = v23 - 1;
      v11 = *(*(&v14 + v10) + 32 * *(&v22 + v10) + 8);
      if (v11)
      {
        dispatch_release(v11);
        v9 = v23;
        v10 = v23 - 1;
      }

      v12 = *(*(&v14 + v10) + 32 * *(&v22 + v10) + 16);
      if (v12)
      {
        _Block_release(v12);
        v9 = v23;
      }

      *&v34[72] = v18;
      *&v34[88] = v19;
      *&v34[104] = v20;
      *&v34[120] = v21;
      *&v34[8] = v14;
      *&v34[24] = v15;
      *&v34[40] = v16;
      *&v34[56] = v17;
      *&v34[136] = v22;
      *v34 = v13;
      v35 = v9;
      *&result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::erase(v2 + 48, v34, &v36).n128_u64[0];
    }
  }

  return result;
}

dyld4::Atlas::ProcessSnapshot *dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(dyld4::Atlas::ProcessSnapshot *this, lsl::Allocator *a2, dyld4::FileManager *a3, char a4)
{
  *this = a2;
  *(this + 1) = a3;
  v6 = lsl::MemoryManager::memoryManager(this);
  v7 = lsl::MemoryManager::defaultAllocator(v6);
  *(this + 2) = 0;
  *(this + 3) = v7;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v8 = lsl::MemoryManager::memoryManager(v7);
  v9 = lsl::MemoryManager::defaultAllocator(v8);
  v10 = lsl::MemoryManager::memoryManager(v9);
  v11 = lsl::MemoryManager::defaultAllocator(v10);
  lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&>(v9, v11, this + 9);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 104) = a4;
  *(this + 105) = 1;
  return this;
}

void *lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&>@<X0>(lsl::Allocator *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = lsl::Allocator::aligned_alloc(a1, 8uLL, 0x30uLL);
  *v5 = a2;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 5) = a2;
  result = malloc_type_aligned_alloc(8uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  *result = 0;
  result[1] = v5;
  *a3 = result;
  return result;
}

void *___ZN5dyld45Atlas15ProcessSnapshotC2ERN3lsl9AllocatorERNS_11FileManagerEbNSt3__14spanISt4byteLm18446744073709551615EEE_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/Dyld.framework/Dyld", 2);
  result = dlsym(v0, "unwrapCompactInfo");
  dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(lsl::Allocator &,dyld4::FileManager &,BOOL,std::span<std::byte,18446744073709551615ul>)::unwrapCompactInfoPtr = result;
  return result;
}

void dyld4::Atlas::ProcessSnapshot::forEachImageNotIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v4 = (a2 + 16);
  v50 = (a2 + 16);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, 27);
  v5 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v50);
  v6 = *v5;
  v46[0] = *(v5 + 1);
  v7 = *(v5 + 9);
  v8 = *(v5 + 7);
  v9 = *(v5 + 5);
  v46[1] = *(v5 + 3);
  v46[2] = v9;
  v46[3] = v8;
  v46[4] = v7;
  v10 = v5[11];
  v48 = *(v5 + 48);
  v11 = *(v5 + 98);
  v47 = v10;
  v45 = v6;
  v49 = v11;
  *&v42[2] = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, 27);
  v50 = v4;
  if (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&v45, &v50))
  {
    v12 = *(*(*(v46 + v49 - 1) + 8 * *(&v47 + v49 - 1)) + 160);
  }

  else
  {
    v12 = -1;
  }

  v50 = (a1 + 16);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, 27);
  v13 = lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v50);
  v14 = *v13;
  v41[0] = *(v13 + 1);
  v15 = *(v13 + 9);
  v16 = *(v13 + 7);
  v17 = *(v13 + 5);
  v41[1] = *(v13 + 3);
  v41[2] = v17;
  v41[3] = v16;
  *v42 = v15;
  v18 = v13[11];
  v43 = *(v13 + 48);
  v19 = *(v13 + 98);
  *&v42[16] = v18;
  v40 = v14;
  v44 = v19;
  *&v38[1] = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, 27);
  v50 = (a1 + 16);
  while (lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&v40, &v50))
  {
    v20 = v44 - 1;
    v21 = *(v41 + v20);
    v22 = v42[v20 + 16];
    v23 = *(a1 + 64);
    v24 = *(v21 + 8 * v22);
    if (v23 && *(v24 + 160) >= *(v23 + 160))
    {
      if (*(*(v23 + 128) + 144))
      {
        v25 = 0;
        do
        {
          if (lsl::Bitmap::checkBit(*(a1 + 56), v25) && (!*(a2 + 64) || (lsl::Bitmap::checkBit(*(a2 + 56), v25) & 1) == 0))
          {
            v26 = *(a1 + 64);
            v33 = _NSConcreteStackBlock;
            *&v34 = 0x40000000;
            *(&v34 + 1) = ___ZZN5dyld45Atlas15ProcessSnapshot17forEachImageNotInERKS1_U13block_pointerFvPNS0_5ImageEEENK3__0clEv_block_invoke;
            *&v35 = &__block_descriptor_tmp_84;
            *(&v35 + 1) = &v32;
            dyld4::Atlas::SharedCache::withImageForIndex(v26, v25, &v33);
          }

          ++v25;
        }

        while (*(*(*(a1 + 64) + 128) + 144) > v25);
      }

      v24 = *(v21 + 8 * v22);
    }

    while (1)
    {
      v27 = *(v24 + 160);
      if (v27 <= v12)
      {
        break;
      }

      v56 = 0u;
      v33 = v4;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      memset(v38, 0, sizeof(v38));
      v39 = 0;
      if (!lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator<=>(&v45, &v33))
      {
        v27 = *(*(v21 + 8 * v22) + 160);
        v12 = -1;
        break;
      }

      v12 = *(*(*(v46 + v49 - 1) + 8 * *(&v47 + v49 - 1)) + 160);
      lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v45);
      v24 = *(v21 + 8 * v22);
    }

    if (v27 != v12)
    {
      (*(v32 + 16))();
    }

    lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::operator++(&v40);
  }

  v28 = *(a1 + 64);
  if (v28 && *(*(v28 + 128) + 144))
  {
    v29 = 0;
    do
    {
      if (lsl::Bitmap::checkBit(*(a1 + 56), v29) && (!*(a2 + 64) || (lsl::Bitmap::checkBit(*(a2 + 56), v29) & 1) == 0))
      {
        v30 = *(a1 + 64);
        v50 = _NSConcreteStackBlock;
        *&v51 = 0x40000000;
        *(&v51 + 1) = ___ZZN5dyld45Atlas15ProcessSnapshot17forEachImageNotInERKS1_U13block_pointerFvPNS0_5ImageEEENK3__0clEv_block_invoke;
        *&v52 = &__block_descriptor_tmp_84;
        *(&v52 + 1) = &v32;
        dyld4::Atlas::SharedCache::withImageForIndex(v30, v29, &v50);
      }

      ++v29;
    }

    while (*(*(*(a1 + 64) + 128) + 144) > v29);
  }
}

void **dyld4::Atlas::ProcessSnapshot::addImage(lsl::MemoryManager *a1, dyld4::Atlas::Image *a2)
{
  v4 = lsl::MemoryManager::memoryManager(a1);
  v5 = lsl::MemoryManager::defaultAllocator(v4);
  lsl::Allocator::makeUnique<dyld4::Atlas::Image,dyld4::Atlas::Image>(v5, a2, &v7);
  lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::const_iterator::const_iterator(v9, a1 + 16, &v7);
  lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::insert_internal(a1 + 16, v9, &v7, v8);
  return lsl::UniquePtr<dyld4::Atlas::Image>::~UniquePtr(&v7);
}

void lsl::Vector<char>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
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

    lsl::Vector<char>::reserveExact(a1, v2);
  }
}

void lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::deallocate(char *a1, lsl::Allocator *a2)
{
  v4 = a1[248];
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

  lsl::Allocator::free(a2, a1);
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::deallocate(char *a1, lsl::Allocator *a2)
{
  v4 = a1[240];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 8 * (v4 + 1);
    v6 = (a1 + 168);
    do
    {
      v7 = *v6++;
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::deallocate(v7, a2);
      v5 -= 8;
    }

    while (v5);
  }

  lsl::Allocator::free(a2, a1);
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::deallocate(char *a1, lsl::Allocator *a2)
{
  v4 = a1[248];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 8 * (v4 + 1);
    v6 = (a1 + 192);
    do
    {
      v7 = *v6++;
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::deallocate(v7, a2);
      v5 -= 8;
    }

    while (v5);
  }

  lsl::Allocator::free(a2, a1);
}

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 143);
  v3 = *(a1 + 143);
  if (v2 >= v3)
  {
    v4 = *(a1 + 143);
  }

  else
  {
    v4 = *(a2 + 143);
  }

  if (v4)
  {
    v5 = (a1 + 128);
    v6 = (a2 + 128);
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

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 152);
  v3 = *(a1 + 152);
  if (v2 >= v3)
  {
    v4 = *(a1 + 152);
  }

  else
  {
    v4 = *(a2 + 152);
  }

  if (v4)
  {
    v5 = (a1 + 136);
    v6 = (a2 + 136);
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

uint64_t ___ZZN5dyld45Atlas7Process19handleNotificationsEvENK3__0clEPNS0_15ProcessSnapshotE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v24 = 0u;
  v25 = 0u;
  v4 = (v3 + 88);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v23 = (v3 + 88);
  v5 = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v23);
  v6 = *v5;
  v7 = *(v5 + 13);
  v8 = *(v5 + 11);
  v9 = v5[15];
  v10 = v5[16];
  v19[4] = *(v5 + 9);
  v19[5] = v8;
  v19[6] = v7;
  v20 = v9;
  v11 = *(v5 + 7);
  v12 = *(v5 + 5);
  v13 = *(v5 + 3);
  v19[0] = *(v5 + 1);
  v19[1] = v13;
  v19[2] = v12;
  v19[3] = v11;
  *&v21[7] = *(v5 + 135);
  *v21 = v10;
  LOBYTE(v9) = *(v5 + 143);
  v18 = v6;
  v22 = v9;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v4;
  memset(v31, 0, sizeof(v31));
  for (result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v18, &v23); result; result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v18, &v23))
  {
    v15 = *(v19 + v22 - 1) + 24 * v21[v22 - 1];
    v16 = *(v15 + 8);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = ___ZZN5dyld45Atlas7Process19handleNotificationsEvENK3__0clEPNS0_15ProcessSnapshotE_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_75;
    v17[4] = v15;
    v17[5] = a2;
    dispatch_async_and_wait(v16, v17);
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v18);
  }

  return result;
}

uint64_t ___ZZN5dyld45Atlas7Process19handleNotificationsEvENK3__1clEPNS0_15ProcessSnapshotE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v24 = 0u;
  v25 = 0u;
  v4 = (v3 + 88);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v23 = (v3 + 88);
  v5 = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v23);
  v6 = *v5;
  v7 = *(v5 + 13);
  v8 = *(v5 + 11);
  v9 = v5[15];
  v10 = v5[16];
  v19[4] = *(v5 + 9);
  v19[5] = v8;
  v19[6] = v7;
  v20 = v9;
  v11 = *(v5 + 7);
  v12 = *(v5 + 5);
  v13 = *(v5 + 3);
  v19[0] = *(v5 + 1);
  v19[1] = v13;
  v19[2] = v12;
  v19[3] = v11;
  *&v21[7] = *(v5 + 135);
  *v21 = v10;
  LOBYTE(v9) = *(v5 + 143);
  v18 = v6;
  v22 = v9;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v4;
  memset(v31, 0, sizeof(v31));
  for (result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v18, &v23); result; result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v18, &v23))
  {
    v15 = *(v19 + v22 - 1) + 24 * v21[v22 - 1];
    v16 = *(v15 + 8);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = ___ZZN5dyld45Atlas7Process19handleNotificationsEvENK3__1clEPNS0_15ProcessSnapshotE_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_77;
    v17[4] = v15;
    v17[5] = a2;
    dispatch_async_and_wait(v16, v17);
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v18);
  }

  return result;
}

void lsl::Vector<unsigned int>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<unsigned int>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<char const*>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<char const*>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<char const*>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
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

    lsl::Vector<char const*>::reserveExact(a1, v2);
  }
}

void lsl::Vector<char const*>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 8 * a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v4;
        do
        {
          *v8++ = *(*(a1 + 8) + 8 * v7++);
        }

        while (v6 != v7);
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        lsl::Allocator::free(*a1, v9);
        v6 = *(a1 + 16);
      }

      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
    }

    *(a1 + 24) = a2;
  }
}

uint64_t lsl::Bitmap::checkBit(lsl::Bitmap *this, unint64_t a2)
{
  if (*(this + 2) <= a2)
  {
    lsl::Bitmap::checkBit();
  }

  return (*(*(this + 1) + (a2 >> 3)) >> (a2 & 7)) & 1;
}

char *std::__copy_impl::operator()[abi:nn200100]<unsigned char *,unsigned char *,std::back_insert_iterator<lsl::Vector<char>>>(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      lsl::Vector<char>::reserve(a4, *(a4 + 16) + 1);
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

_DWORD *lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::rotateFromRight(_DWORD *result, int a2)
{
  if (result[62] < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v2 = &result[2 * a2];
  v4 = *(v2 + 10);
  v3 = *(v2 + 11);
  v5 = *(v4 + 248) & 0x7F;
  v6 = v3[248] & 0x7F;
  v7 = v6 + v5;
  v8 = (v4 + 4 * v5);
  *v8 = result[a2];
  v9 = (v6 - (v7 >> 1));
  v10 = &v3[4 * v9];
  result[a2] = *(v10 - 1);
  v11 = v6;
  if (v6 != v7 >> 1)
  {
    result = memmove(v8 + 1, v3, 4 * v9);
    v11 = v3[248] & 0x7F;
  }

  v12 = &v3[4 * v11];
  if (v10 != v12)
  {
    result = memmove(v3, &v3[4 * (v6 - (v7 >> 1))], v12 - v10);
  }

  v13 = *(v4 + 248);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v3[248];
    if (v14 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    v15 = v3 + 80;
    if (v6 != v7 >> 1)
    {
      result = memmove((v4 + 8 * (v13 + 1) + 80), v3 + 80, 8 * v9);
      v14 = v3[248];
      if (v14 < 0)
      {
        lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
      }
    }

    v16 = &v15[8 * v9];
    v17 = &v15[8 * (v14 + 1)];
    if (v16 != v17)
    {
      result = memmove(v3 + 80, v16, v17 - v16);
    }
  }

  *(v4 + 248) += v9;
  v3[248] -= v9;
  return result;
}

void *lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::rotateFromLeft(void *result, unsigned int a2)
{
  if (result[31] < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v2 = result;
  v3 = a2 - 1;
  v4 = result[v3 + 10];
  v5 = result[a2 + 10];
  LOBYTE(v6) = *(v4 + 248);
  v7 = v6 & 0x7F;
  v8 = v5[248] & 0x7F;
  v9 = v8 + v7;
  v10 = ((v6 & 0x7F) - ((v8 + v7) >> 1));
  v11 = 4 * v10;
  if ((v5[248] & 0x7F) != 0)
  {
    result = memmove(&v5[v11], v5, 4 * v8);
    LOBYTE(v6) = *(v4 + 248);
  }

  v12 = (v4 + 4 * (v6 & 0x7F));
  v13 = &v12[-v11 + 4];
  if (v13 != v12)
  {
    result = memmove(v5, v13, v11 - 4);
    LOBYTE(v6) = *(v4 + 248);
  }

  v14 = v5[248];
  *&v5[4 * v10 - 4] = *(v2 + v3);
  *(v2 + v3) = *(v4 + 4 * ((v6 & 0x7F) - v10));
  if ((v6 & 0x80) == 0)
  {
    if ((v14 & 0x80) != 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove(&v5[8 * v10 + 80], v5 + 80, 8 * v14 + 8);
    v6 = *(v4 + 248);
    if (v6 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    if (v5[248] < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    if (v7 != v9 >> 1)
    {
      result = memmove(v5 + 80, (v4 + 8 * (v6 + 1) - 8 * v10 + 80), 8 * v10);
      LOBYTE(v6) = *(v4 + 248);
    }
  }

  *(v4 + 248) = v6 - v10;
  v5[248] += v10;
  return result;
}

void lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge(uint64_t a1, lsl::Allocator *this, unsigned int a3)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge();
  }

  v5 = *(a1 + 248);
  if (v5 <= a3)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge();
  }

  v8 = a1 + 80;
  v9 = (a1 + 80 + 8 * a3);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + 4 * a3);
  *(*v9 + 4 * (*(*v9 + 248) & 0x7F)) = *v12;
  v13 = (a1 + 4 * v3);
  if (v12 + 1 != v13)
  {
    memmove(v12, v12 + 1, v13 - (v12 + 1));
    v5 = *(a1 + 248);
    if ((v5 & 0x80) != 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }
  }

  v14 = v5 + 1;
  v15 = v8 + 8 * a3;
  v16 = v8 + 8 * v14;
  if (v15 + 16 != v16)
  {
    memmove((v15 + 8), (v15 + 16), v16 - (v15 + 16));
  }

  v17 = v10[248];
  v18 = *(v11 + 248);
  if ((v17 & 0x7F) != 0)
  {
    memmove((v11 + 4 * (v18 & 0x7F) + 4), v10, 4 * (v10[248] & 0x7F));
    v18 = *(v11 + 248);
    v17 = v10[248];
  }

  if ((v18 & 0x80) == 0)
  {
    if (v17 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    memmove((v11 + 8 * (v18 + 1) + 80), v10 + 80, 8 * (v17 + 1));
    v17 = v10[248];
    v18 = *(v11 + 248);
  }

  *(v11 + 248) = (v17 & 0x7F) + v18 + 1;
  --*(a1 + 248);

  lsl::Allocator::free(this, v10);
}

uint64_t *lsl::Vector<dyld4::Atlas::Mapper::Mapping>::swap(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = *result;
    *result = *a2;
    *a2 = v2;
    v4 = result[1];
    v3 = result[2];
    v5 = a2[2];
    result[1] = a2[1];
    result[2] = v5;
    a2[2] = v3;
    v6 = result[3];
    result[3] = a2[3];
    a2[3] = v6;
    a2[1] = v4;
  }

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
    v22[248] = 0x80;
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
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
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

unsigned __int8 *lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[98];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion();
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
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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

char *lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator *this)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 248);
  if (v4 >= 0xFu)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v6 = a1 + 120;
  v7 = (a1 + 120 + 8 * a2);
  v8 = *(*v7 + 248);
  v9 = v8;
  v10 = v8 & 0x7F;
  if (v8 >= 0)
  {
    v11 = 15;
  }

  else
  {
    v11 = 31;
  }

  if (v10 != v11)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v13 = a2;
  if (v9 >= 0)
  {
    v14 = 7;
  }

  else
  {
    v14 = 15;
  }

  if (8 * a2 != 8 * v3)
  {
    memmove((a1 + 8 * a2 + 8), (a1 + 8 * a2), 8 * v3 - 8 * a2);
    v4 = *(a1 + 248);
    if (v4 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }
  }

  v15 = v4 + 1;
  v16 = (v6 + 8 * v13 + 8);
  v17 = (v6 + 8 * v15);
  if (v16 != v17)
  {
    memmove((v6 + 8 * v13 + 16), v16, v17 - v16);
    v15 = *(a1 + 248) + 1;
  }

  *(a1 + 248) = v15;
  *(a1 + 8 * v13) = *(*v7 + 8 * v14);
  result = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v19 = result;
  v20 = *(*v7 + 248);
  result[248] = v20 & 0x80;
  if (v20 < 0)
  {
    *(result + 30) = 0;
    v21 = 0uLL;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    *(result + 14) = 0;
    v21 = 0uLL;
  }

  *(result + 5) = v21;
  *(result + 6) = v21;
  *(result + 3) = v21;
  *(result + 4) = v21;
  *(result + 1) = v21;
  *(result + 2) = v21;
  *result = v21;
  if (*(a1 + 248) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v22 = v10 + ~v14;
  v7[1] = result;
  v23 = 8 * v14;
  v24 = 8 * v22;
  if (v24)
  {
    result = memmove(result, (v23 + *v7 + 8), 8 * v22);
  }

  v25 = *v7;
  v26 = *(*v7 + 248);
  if ((v26 & 0x80000000) == 0)
  {
    if (v19[248] < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove(v19 + 120, (v25 + v23 + 128), v24 + 8);
    v25 = *v7;
    LOBYTE(v26) = *(*v7 + 248);
  }

  *(v25 + 248) = v26 + ~v22;
  v27 = v19[248] + v22;
  v19[248] = v27;
  if (v27 >= 0)
  {
    v28 = 15;
  }

  else
  {
    v28 = 31;
  }

  if ((v27 & 0x7F) == v28 || ((v29 = *(v25 + 248), v30 = v29, v31 = v29 & 0x7F, v30 >= 0) ? (v32 = 15) : (v32 = 31), v31 == v32))
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  return result;
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
      v10 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<char const**>,char const*,std::__identity,lsl::ConstCharStarCompare>(v8, a3, *(v8 + 248) & 0x7F);
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
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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

void *std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<char const**>,char const*,std::__identity,lsl::ConstCharStarCompare>(void *result, void *a2, unint64_t a3)
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
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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

uint64_t **lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(uint64_t **result)
{
  v1 = *(result + 143);
  v2 = *result;
  if (*(result + 143))
  {
    v3 = *(v2 + 32);
    v4 = result + 16;
    ++*(result + (v1 - 1) + 128);
    if (v1 == v3)
    {
      v5 = *(v2 + 32);
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*(v4 + (v5 + ~i)) != (result[(v5 + ~i) + 1][30] & 0x7F))
          {
            break;
          }

          *(result + 143) = v5 + ~i;
        }
      }
    }

    else
    {
      v13 = *(result + 143);
      if (v13 != *(v2 + 32))
      {
        v14 = result + 1;
        do
        {
          v15 = v14[v13 - 1];
          if (v15[30] < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v14[v13] = v15[*(v4 + v13 - 1) + 21];
          *(v4 + v13) = 0;
          LOBYTE(v13) = *(result + 143) + 1;
          *(result + 143) = v13;
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
      *(result + v7 + 128) = 0;
      v10 = *(result + 143);
      v11 = *(v2 + 32);
      if (v10 + 1 != v11)
      {
        v12 = v9[v10];
        if (v12[30] < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v8 = v12[21];
      }

      v7 = v10 + 1;
      *(result + 143) = v7;
    }

    while (v11 > v7);
  }

  return result;
}

uint64_t **lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(uint64_t **result)
{
  v1 = *(result + 152);
  v2 = *result;
  if (*(result + 152))
  {
    v3 = *(v2 + 32);
    v4 = result + 17;
    ++*(result + (v1 - 1) + 136);
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

          *(result + 152) = v5 + ~i;
        }
      }
    }

    else
    {
      v13 = *(result + 152);
      if (v13 != *(v2 + 32))
      {
        v14 = result + 1;
        do
        {
          v15 = v14[v13 - 1];
          if (v15[31] < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v14[v13] = v15[*(v4 + v13 - 1) + 24];
          *(v4 + v13) = 0;
          LOBYTE(v13) = *(result + 152) + 1;
          *(result + 152) = v13;
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
      *(result + v7 + 136) = 0;
      v10 = *(result + 152);
      v11 = *(v2 + 32);
      if (v10 + 1 != v11)
      {
        v12 = v9[v10];
        if (v12[31] < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v8 = v12[24];
      }

      v7 = v10 + 1;
      *(result + 152) = v7;
    }

    while (v11 > v7);
  }

  return result;
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::insert_internal(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v26 = a1;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(a2, &v26))
    {
      v8 = *(a2 + 143);
      if (*a3 >= *(*(a2 + 8 + 8 * (v8 - 1)) + 24 * *(a2 + 128 + v8 - 1)))
      {
        v15 = 0;
        v21 = *(a2 + 88);
        *(a4 + 72) = *(a2 + 72);
        *(a4 + 88) = v21;
        *(a4 + 104) = *(a2 + 104);
        v22 = *(a2 + 24);
        *(a4 + 8) = *(a2 + 8);
        *(a4 + 24) = v22;
        v23 = *(a2 + 56);
        *(a4 + 40) = *(a2 + 40);
        *a4 = *a2;
        *(a4 + 135) = *(a2 + 135);
        v24 = *(a2 + 120);
        *(a4 + 56) = v23;
        v25 = *(a2 + 128);
        *(a4 + 120) = v24;
        *(a4 + 128) = v25;
        *(a4 + 143) = v8;
        goto LABEL_13;
      }
    }

    v26 = a1;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(a2, &v26) && *(a2 + 143) == *(a1 + 32))
    {
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 128);
      v10 = *(a2 + 143) - 1;
      v11 = *(a2 + 128 + v10);
    }

    else
    {
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator--(a2);
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 128);
      v18 = *(a2 + 143) + a2 + 128;
      v11 = *(v18 - 1) + 1;
      *(v18 - 1) = v11;
      v10 = *(a2 + 143) - 1;
    }

    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::insert(*(a2 + 8 + 8 * v10), v11, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    v19 = *(a2 + 120);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    v20 = *v9;
    *(a4 + 135) = *(v9 + 7);
    *(a4 + 120) = v19;
    *(a4 + 128) = v20;
    v17 = *(a2 + 143);
    v15 = 1;
  }

  else
  {
    v12 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    v13 = 0;
    v12[240] = 0x80;
    do
    {
      v14 = &v12[v13];
      *v14 = 0;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      v13 += 24;
    }

    while (v13 != 240);
    *a1 = v12;
    v15 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v12;
    *(a2 + 143) = 1;
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::insert(v12, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 135) = *(a2 + 135);
    v16 = *(a2 + 128);
    *(a4 + 120) = *(a2 + 120);
    *(a4 + 128) = v16;
    v17 = *(a2 + 143);
  }

  *(a4 + 143) = v17;
LABEL_13:
  *(a4 + 144) = v15;
}

__n128 lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::insert(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  if (v3 >= 0)
  {
    v4 = 7;
  }

  else
  {
    v4 = 10;
  }

  if ((v3 & 0x7F) == v4)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  if (24 * a2 != 24 * (v3 & 0x7F))
  {
    v5 = a1 + 24 * (v3 & 0x7F);
    v6 = v5;
    do
    {
      v7 = *(v6 - 24);
      v6 -= 24;
      *v5 = v7;
      *(v5 + 8) = *(v6 + 8);
      v5 -= 24;
    }

    while (v6 != a1 + 24 * a2);
    LOBYTE(v3) = *(a1 + 240);
  }

  *(a1 + 240) = v3 + 1;
  v8 = a1 + 24 * a2;
  *v8 = *a3;
  result = *(a3 + 8);
  *(v8 + 8) = result;
  return result;
}

unsigned __int8 *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator--(unsigned __int8 *result)
{
  v1 = result[143];
  v2 = *result;
  if (result[143])
  {
    if (v1 == *(*result + 32))
    {
      v3 = result + 128;
      v4 = v1 - 1;
      v5 = &result[v1 + 127];
      v6 = *v5;
      if (!result[(v1 - 1) + 128])
      {
        if (!*v5)
        {
          do
          {
            LODWORD(v1) = v1 - 1;
            result[143] = v1;
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
      v16 = result + 128;
      do
      {
        v17 = *&v15[8 * v1 - 8];
        if (*(v17 + 240) < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v18 = *(v17 + 8 * v16[v1 - 1] + 168);
        *&v15[8 * v1] = v18;
        v16[v1] = *(v18 + 240) & 0x7F;
        LOBYTE(v1) = result[143] + 1;
        result[143] = v1;
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
        result[v7 + 128] = *(v8 + 240) & 0x7F;
        v10 = result[143];
        v11 = *(v2 + 32);
        if (v10 + 1 != v11)
        {
          v12 = *&v9[8 * v10];
          v13 = *(v12 + 240);
          if (v13 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v8 = *(v12 + 8 * v13 + 168);
        }

        v7 = v10 + 1;
        result[143] = v7;
      }

      while (v11 > v7);
      v14 = v7 - 1;
    }

    else
    {
      v14 = -1;
    }

    v5 = &result[v14 + 128];
    v6 = *v5;
  }

  *v5 = v6 - 1;
  return result;
}

unsigned __int8 *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[143];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 240) >= 0)
  {
    v4 = 7;
  }

  else
  {
    v4 = 10;
  }

  if ((*(*&result[8 * v1] + 240) & 0x7F) == v4)
  {
    if (!result[143])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v3[v5] + 240) >= 0)
      {
        v7 = 7;
      }

      else
      {
        v7 = 10;
      }

      if ((*(v3[v5] + 240) & 0x7F) != v7)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (v1 != v5);
    if (!v6)
    {
LABEL_15:
      if (*(*v3 + 240) >= 0)
      {
        v8 = 7;
      }

      else
      {
        v8 = 10;
      }

      if ((*(*v3 + 240) & 0x7F) == v8)
      {
        v9 = lsl::Allocator::aligned_alloc(*(*result + 8), 0x100uLL, 0x100uLL);
        result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::NodeCore(v9, **v2);
        **v2 = result;
        if (v2[143] && (result = memmove(v2 + 129, v2 + 128, v2[143]), v2[143]))
        {
          result = memmove(v3 + 1, v3, 8 * v2[143]);
          LOBYTE(v1) = v2[143] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[128] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[143] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 128;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::splitChild(v3[v12], v11[v12], *(*v2 + 8));
        v14 = v3[v12];
        if (*(v14 + 240) < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 168);
        v17 = v2[v12 + 129];
        if (v17 > (*(v16 + 240) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 129] = v17 + (~*(v16 + 240) | 0x80);
          v19 = v3[v12];
          if (*(v19 + 240) < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 168);
        }

        ++v12;
      }

      while (v13 + 2 < v2[143]);
    }
  }

  return result;
}

void *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator *this)
{
  v3 = *(a1 + 240);
  if (v3 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 240);
  if (v4 >= 7u)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v6 = a1 + 168;
  v7 = (a1 + 168 + 8 * a2);
  v8 = *(*v7 + 240);
  v9 = v8;
  v10 = v8 & 0x7F;
  if (v8 >= 0)
  {
    v11 = 7;
  }

  else
  {
    v11 = 10;
  }

  if (v10 != v11)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  if (v9 >= 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = 5;
  }

  v15 = 3 * v3;
  if (24 * a2 != 8 * v15)
  {
    v16 = a1 + 8 * v15;
    v17 = v16;
    do
    {
      v18 = *(v17 - 24);
      v17 -= 24;
      *v16 = v18;
      *(v16 + 8) = *(v17 + 8);
      v16 -= 24;
    }

    while (v17 != a1 + 24 * a2);
    v4 = *(a1 + 240);
    if (v4 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }
  }

  v19 = v4 + 1;
  v20 = v6 + 8 * a2 + 8;
  v21 = v6 + 8 * v19;
  if (v20 != v21)
  {
    memmove((v20 + 8), v20, v21 - v20);
    v19 = *(a1 + 240) + 1;
  }

  *(a1 + 240) = v19;
  v22 = *v7 + 24 * v14;
  v23 = a1 + 24 * a2;
  *v23 = *v22;
  *(v23 + 8) = *(v22 + 8);
  result = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v25 = result;
  v26 = *(*v7 + 240);
  *(result + 240) = v26 & 0x80;
  if (v26 < 0)
  {
    v29 = result + 1;
    v30 = 240;
    do
    {
      *(v29 - 2) = 0;
      *v29 = 0;
      v29[1] = 0;
      v29 += 3;
      v30 -= 24;
    }

    while (v30);
  }

  else
  {
    v27 = result + 1;
    v28 = 168;
    do
    {
      *(v27 - 2) = 0;
      *v27 = 0;
      v27[1] = 0;
      v27 += 3;
      v28 -= 24;
    }

    while (v28);
  }

  if (*(a1 + 240) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v31 = v10 + ~v14;
  v7[1] = result;
  v32 = *v7;
  if (v31)
  {
    v33 = v32 + 24 * v14 + 24;
    v34 = v33 + 24 * v31;
    v35 = result;
    do
    {
      *v35 = *v33;
      *(v35 + 8) = *(v33 + 8);
      v33 += 24;
      v35 += 24;
    }

    while (v33 != v34);
    v32 = *v7;
  }

  v36 = *(v32 + 240);
  if ((v36 & 0x80000000) == 0)
  {
    if (result[30] < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove(result + 21, (v32 + 8 * v14 + 176), 8 * v31 + 8);
    v32 = *v7;
    LOBYTE(v36) = *(*v7 + 240);
  }

  *(v32 + 240) = v36 + ~v31;
  v37 = v25[240] + v31;
  v25[240] = v37;
  if (v37 >= 0)
  {
    v38 = 7;
  }

  else
  {
    v38 = 10;
  }

  if ((v37 & 0x7F) == v38 || ((v39 = *(v32 + 240), v40 = v39, v41 = v39 & 0x7F, v40 >= 0) ? (v42 = 7) : (v42 = 10), v41 == v42))
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  return result;
}

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::NodeCore(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *(result + 240) = 0;
  do
  {
    v3 = result + v2;
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v2 += 24;
  }

  while (v2 != 168);
  if (*(result + 240) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  *(result + 168) = a2;
  return result;
}

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::const_iterator(uint64_t result, uint64_t *a2, unsigned int *a3)
{
  *result = a2;
  *(result + 8) = 0u;
  v3 = result + 8;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0;
  if (*(a2 + 32))
  {
    v4 = 0;
    v5 = *a2;
    v6 = result + 128;
    do
    {
      *(v3 + 8 * v4) = v5;
      v7 = *(v5 + 240) & 0x7F;
      if ((*(v5 + 240) & 0x7F) != 0)
      {
        v8 = v5;
        do
        {
          v9 = v7 >> 1;
          v10 = &v8[6 * (v7 >> 1)];
          v12 = *v10;
          v11 = v10 + 6;
          v7 += ~(v7 >> 1);
          if (v12 < *a3)
          {
            v8 = v11;
          }

          else
          {
            v7 = v9;
          }
        }

        while (v7);
      }

      else
      {
        v8 = (v5 + 24 * (*(v5 + 240) & 0x7F));
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v5) >> 3);
      *(v6 + v4) = v13;
      v14 = *(v3 + 8 * v4);
      if ((*(v14 + 240) & 0x7F) != v13 && *(v14 + 24 * v13) < *a3)
      {
        *(result + 143) = v4 + 1;
        return result;
      }

      v15 = *(a2 + 32);
      if (v4 + 1 != v15)
      {
        if ((*(v14 + 240) & 0x80) != 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v5 = *(v14 + 8 * v13 + 168);
      }

      ++v4;
    }

    while (v4 < v15);
    for (*(result + 143) = v15; v15; *(result + 143) = v15)
    {
      if (*(v6 + v15 - 1) != (*(*(result + 8 * v15) + 240) & 0x7F))
      {
        break;
      }

      LOBYTE(v15) = v15 - 1;
    }
  }

  return result;
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::insert_internal(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v22 = a1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(a2, &v22))
    {
      v8 = *(a2 + 152);
      if (*a3 >= *(*(a2 + 8 + 8 * (v8 - 1)) + 32 * *(a2 + 136 + v8 - 1)))
      {
        v15 = 0;
        v18 = *(a2 + 88);
        *(a4 + 72) = *(a2 + 72);
        *(a4 + 88) = v18;
        v19 = *(a2 + 120);
        *(a4 + 104) = *(a2 + 104);
        *(a4 + 120) = v19;
        v20 = *(a2 + 24);
        *(a4 + 8) = *(a2 + 8);
        *(a4 + 24) = v20;
        v21 = *(a2 + 56);
        *(a4 + 40) = *(a2 + 40);
        *a4 = *a2;
        *(a4 + 56) = v21;
        *(a4 + 136) = *(a2 + 136);
        *(a4 + 152) = v8;
        goto LABEL_13;
      }
    }

    v22 = a1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(a2, &v22) && *(a2 + 152) == *(a1 + 32))
    {
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 136);
      v10 = *(a2 + 152) - 1;
      v11 = *(a2 + 136 + v10);
    }

    else
    {
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator--(a2);
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 136);
      v17 = *(a2 + 152) + a2 + 136;
      v11 = *(v17 - 1) + 1;
      *(v17 - 1) = v11;
      v10 = *(a2 + 152) - 1;
    }

    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::insert(*(a2 + 8 + 8 * v10), v11, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    *(a4 + 120) = *(a2 + 120);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 136) = *v9;
    v16 = *(a2 + 152);
    v15 = 1;
  }

  else
  {
    v12 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    v13 = 0;
    v12[248] = 0x80;
    do
    {
      v14 = &v12[v13];
      *v14 = 0;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 1) = 0;
      v13 += 32;
    }

    while (v13 != 224);
    *a1 = v12;
    v15 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v12;
    *(a2 + 152) = 1;
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::insert(v12, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    *(a4 + 120) = *(a2 + 120);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 136) = *(a2 + 136);
    v16 = *(a2 + 152);
  }

  *(a4 + 152) = v16;
LABEL_13:
  *(a4 + 160) = v15;
}

__n128 lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::insert(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 248);
  v4 = v3;
  v5 = v3 & 0x7F;
  if (v3 >= 0)
  {
    v6 = 6;
  }

  else
  {
    v6 = 7;
  }

  if (v5 == v6)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  if (a2 == v6)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  v7 = a1 + 32 * a2;
  if (32 * a2 != 32 * v5)
  {
    v8 = a1 + 32 * v5;
    v9 = v8;
    do
    {
      v10 = *(v9 - 32);
      v9 -= 32;
      *v8 = v10;
      v11 = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 8) = v11;
      v8 -= 32;
    }

    while (v9 != v7);
    v4 = *(a1 + 248);
  }

  *(a1 + 248) = v4 + 1;
  *v7 = *a3;
  result = *(a3 + 8);
  *(v7 + 24) = *(a3 + 24);
  *(v7 + 8) = result;
  return result;
}

unsigned __int8 *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator--(unsigned __int8 *result)
{
  v1 = result[152];
  v2 = *result;
  if (result[152])
  {
    if (v1 == *(*result + 32))
    {
      v3 = result + 136;
      v4 = v1 - 1;
      v5 = &result[v1 + 135];
      v6 = *v5;
      if (!result[(v1 - 1) + 136])
      {
        if (!*v5)
        {
          do
          {
            LODWORD(v1) = v1 - 1;
            result[152] = v1;
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
      v16 = result + 136;
      do
      {
        v17 = *&v15[8 * v1 - 8];
        if (*(v17 + 248) < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v18 = *(v17 + 8 * v16[v1 - 1] + 192);
        *&v15[8 * v1] = v18;
        v16[v1] = *(v18 + 248) & 0x7F;
        LOBYTE(v1) = result[152] + 1;
        result[152] = v1;
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
        result[v7 + 136] = *(v8 + 248) & 0x7F;
        v10 = result[152];
        v11 = *(v2 + 32);
        if (v10 + 1 != v11)
        {
          v12 = *&v9[8 * v10];
          v13 = *(v12 + 248);
          if (v13 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v8 = *(v12 + 8 * v13 + 192);
        }

        v7 = v10 + 1;
        result[152] = v7;
      }

      while (v11 > v7);
      v14 = v7 - 1;
    }

    else
    {
      v14 = -1;
    }

    v5 = &result[v14 + 136];
    v6 = *v5;
  }

  *v5 = v6 - 1;
  return result;
}

unsigned __int8 *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[152];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 248) >= 0)
  {
    v4 = 6;
  }

  else
  {
    v4 = 7;
  }

  if ((*(*&result[8 * v1] + 248) & 0x7F) == v4)
  {
    if (!result[152])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v3[v5] + 248) >= 0)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
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
        v8 = 6;
      }

      else
      {
        v8 = 7;
      }

      if ((*(*v3 + 248) & 0x7F) == v8)
      {
        v9 = lsl::Allocator::aligned_alloc(*(*result + 8), 0x100uLL, 0x100uLL);
        result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::NodeCore(v9, **v2);
        **v2 = result;
        if (v2[152] && (result = memmove(v2 + 137, v2 + 136, v2[152]), v2[152]))
        {
          result = memmove(v3 + 1, v3, 8 * v2[152]);
          LOBYTE(v1) = v2[152] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[136] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[152] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 136;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::splitChild(v3[v12], v11[v12], *(*v2 + 8));
        v14 = v3[v12];
        if (*(v14 + 248) < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 192);
        v17 = v2[v12 + 137];
        if (v17 > (*(v16 + 248) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 137] = v17 + (~*(v16 + 248) | 0x80);
          v19 = v3[v12];
          if (*(v19 + 248) < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 192);
        }

        ++v12;
      }

      while (v13 + 2 < v2[152]);
    }
  }

  return result;
}

void *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator *this)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 248);
  if (v4 >= 6u)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v6 = a1 + 192;
  v7 = (a1 + 192 + 8 * a2);
  v8 = *(*v7 + 248);
  v9 = v8 & 0x7F;
  if (v8 >= 0)
  {
    v10 = 6;
  }

  else
  {
    v10 = 7;
  }

  if (v9 != v10)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v12 = a1 + 32 * a2;
  if (32 * a2 != 32 * v3)
  {
    v13 = a1 + 32 * v3;
    v14 = v13;
    do
    {
      v15 = *(v14 - 32);
      v14 -= 32;
      *v13 = v15;
      v16 = *(v14 + 8);
      *(v13 + 24) = *(v14 + 24);
      *(v13 + 8) = v16;
      v13 -= 32;
    }

    while (v14 != v12);
    v4 = *(a1 + 248);
    if (v4 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }
  }

  v17 = v4 + 1;
  v18 = v6 + 8 * a2 + 8;
  v19 = v6 + 8 * v17;
  if (v18 != v19)
  {
    memmove((v18 + 8), v18, v19 - v18);
    v17 = *(a1 + 248) + 1;
  }

  *(a1 + 248) = v17;
  v20 = *v7;
  *v12 = *(*v7 + 96);
  v21 = *(v20 + 104);
  *(v12 + 24) = *(v20 + 120);
  *(v12 + 8) = v21;
  result = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v23 = result;
  v24 = *(*v7 + 248);
  *(result + 248) = v24 & 0x80;
  if (v24 < 0)
  {
    v27 = result + 1;
    v28 = 224;
    do
    {
      *(v27 - 2) = 0;
      v27[1] = 0;
      v27[2] = 0;
      *v27 = 0;
      v27 += 4;
      v28 -= 32;
    }

    while (v28);
  }

  else
  {
    v25 = result + 1;
    v26 = 192;
    do
    {
      *(v25 - 2) = 0;
      v25[1] = 0;
      v25[2] = 0;
      *v25 = 0;
      v25 += 4;
      v26 -= 32;
    }

    while (v26);
  }

  if (*(a1 + 248) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v29 = v9 - 4;
  v7[1] = result;
  v30 = *v7;
  v31 = (v9 - 4);
  if (v9 != 4)
  {
    v32 = v30 + 128;
    v33 = v32 + 32 * v31;
    v34 = result;
    do
    {
      *v34 = *v32;
      v35 = *(v32 + 8);
      *(v34 + 24) = *(v32 + 24);
      *(v34 + 8) = v35;
      v32 += 32;
      v34 += 32;
    }

    while (v32 != v33);
    v30 = *v7;
  }

  v36 = *(v30 + 248);
  if ((v36 & 0x80000000) == 0)
  {
    if (result[31] < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove(result + 24, (v30 + 224), 8 * v31 + 8);
    v30 = *v7;
    LOBYTE(v36) = *(*v7 + 248);
  }

  *(v30 + 248) = v36 + ~v29;
  v37 = v23[248] + v29;
  v23[248] = v37;
  if (v37 >= 0)
  {
    v38 = 6;
  }

  else
  {
    v38 = 7;
  }

  if ((v37 & 0x7F) == v38 || ((v39 = *(v30 + 248), v40 = v39, v41 = v39 & 0x7F, v40 >= 0) ? (v42 = 6) : (v42 = 7), v41 == v42))
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  return result;
}

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::NodeCore(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *(result + 248) = 0;
  do
  {
    v3 = result + v2;
    *v3 = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    v2 += 32;
  }

  while (v2 != 192);
  if (*(result + 248) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  *(result + 192) = a2;
  return result;
}

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::const_iterator(uint64_t result, uint64_t *a2, unsigned int *a3)
{
  *result = a2;
  *(result + 8) = 0u;
  v3 = result + 8;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0u;
  *(result + 152) = 0;
  if (*(a2 + 32))
  {
    v4 = 0;
    v5 = *a2;
    v6 = result + 136;
    do
    {
      *(v3 + 8 * v4) = v5;
      v7 = *(v5 + 248) & 0x7F;
      if ((*(v5 + 248) & 0x7F) != 0)
      {
        v8 = v5;
        do
        {
          v9 = v7 >> 1;
          v10 = &v8[8 * (v7 >> 1)];
          v12 = *v10;
          v11 = v10 + 8;
          v7 += ~(v7 >> 1);
          if (v12 < *a3)
          {
            v8 = v11;
          }

          else
          {
            v7 = v9;
          }
        }

        while (v7);
      }

      else
      {
        v8 = (v5 + 32 * v7);
      }

      v13 = v8 - v5;
      v14 = (v8 - v5) >> 5;
      *(v6 + v4) = v14;
      v15 = *(v3 + 8 * v4);
      if ((*(v15 + 248) & 0x7F) != v14 && *(v15 + (v13 & 0x1FE0)) < *a3)
      {
        *(result + 152) = v4 + 1;
        return result;
      }

      v16 = *(a2 + 32);
      if (v4 + 1 != v16)
      {
        if ((*(v15 + 248) & 0x80) != 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v5 = *(v15 + 8 * v14 + 192);
      }

      ++v4;
    }

    while (v4 < v16);
    for (*(result + 152) = v16; v16; *(result + 152) = v16)
    {
      if (*(v6 + v16 - 1) != (*(*(result + 8 * v16) + 248) & 0x7F))
      {
        break;
      }

      LOBYTE(v16) = v16 - 1;
    }
  }

  return result;
}

double lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::find@<D0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::const_iterator(&v24, a1, a2);
  v14 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v24, &v14) && (v7 = v33, *a2 >= *(*(v25 + v33 - 1) + 24 * v32[v33 - 1])))
  {
    v9 = v29;
    *(a3 + 72) = v28;
    *(a3 + 88) = v9;
    *(a3 + 104) = v30;
    v10 = v25[1];
    *(a3 + 8) = v25[0];
    *(a3 + 24) = v10;
    result = *&v26;
    v11 = v27;
    *(a3 + 40) = v26;
    *a3 = v24;
    v12 = v31;
    *(a3 + 56) = v11;
    *(a3 + 135) = *&v32[7];
    v13 = *v32;
    *(a3 + 120) = v12;
    *(a3 + 128) = v13;
    *(a3 + 143) = v7;
  }

  else
  {
    *a3 = a1;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0;
  }

  return result;
}

__n128 lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::erase@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 143);
  v7 = *(a1 + 32);
  v8 = v6;
  if (v6 != v7)
  {
    v9 = *(a2 + 8 + 8 * (v6 - 1)) + 24 * *(a2 + 128 + v6 - 1);
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(a2);
    v10 = *(a2 + 8 + 8 * (*(a2 + 143) - 1)) + 24 * *(a2 + 128 + *(a2 + 143) - 1);
    v11 = *v9;
    *v9 = *v10;
    *v10 = v11;
    v12 = *(v9 + 8);
    *(v9 + 8) = *(v10 + 8);
    *(v10 + 8) = v12;
    v8 = *(a2 + 143);
  }

  v13 = v8 - 1;
  v14 = *(a2 + 8 + 8 * v13);
  if ((*(v14 + 240) & 0x80000000) == 0)
  {
    lsl::BTree<int,std::less<int>,false>::erase();
  }

  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::erase(v14, *(a2 + 128 + v13));
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::rebalanceFromErasure(a2);
  if (v6 != v7)
  {
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator--(a2);
  }

  --*(a1 + 24);
  v15 = *(a2 + 88);
  *(a3 + 72) = *(a2 + 72);
  *(a3 + 88) = v15;
  *(a3 + 104) = *(a2 + 104);
  v16 = *(a2 + 24);
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = v16;
  result = *(a2 + 40);
  v18 = *(a2 + 56);
  *(a3 + 40) = result;
  *a3 = *a2;
  v19 = *(a2 + 120);
  *(a3 + 56) = v18;
  v20 = *(a2 + 128);
  *(a3 + 120) = v19;
  *(a3 + 128) = v20;
  *(a3 + 135) = *(a2 + 135);
  *(a3 + 143) = *(a2 + 143);
  return result;
}

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::erase(uint64_t result, unsigned int a2)
{
  v2 = *(result + 240);
  if ((v2 & 0x80000000) == 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase();
  }

  if ((v2 & 0x7Fu) <= a2)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase();
  }

  v3 = result + 24 * a2;
  v4 = v3 + 24;
  v5 = result + 24 * (v2 & 0x7F);
  if (v3 + 24 != v5)
  {
    do
    {
      *v3 = *v4;
      *(v3 + 8) = *(v4 + 8);
      v4 += 24;
      v3 += 24;
    }

    while (v4 != v5);
    LOBYTE(v2) = *(result + 240);
  }

  *(result + 240) = v2 - 1;
  return result;
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::rebalanceFromErasure(_BYTE *a1)
{
  v1 = a1[143];
  v2 = *a1;
  if (v1 != *(*a1 + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure();
  }

  if (v1 >= 2)
  {
    v4 = 0;
    v5 = a1 + 8;
    v6 = a1 + 128;
    do
    {
      v7 = (v1 - v4 - 2);
      v8 = v7 + 1;
      if (*(*&v5[8 * v7 + 8] + 240) >= 0)
      {
        v9 = 3;
      }

      else
      {
        v9 = 5;
      }

      if ((*(*&v5[8 * v7 + 8] + 240) & 0x7Fu) >= v9)
      {
        break;
      }

      v10 = v6[v7];
      v11 = *&v5[8 * v7];
      v12 = *(v11 + 240);
      if (v10 == (v12 & 0x7F))
      {
        v13 = 0;
        if (v6[v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v12 < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v18 = *(*(v11 + 8 * v10 + 176) + 240);
        v19 = v18 & 0x7F;
        if (v18 >= 0)
        {
          v20 = -3;
        }

        else
        {
          v20 = -5;
        }

        v13 = (v20 + v19);
        if (v6[v7])
        {
LABEL_10:
          if (v12 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v14 = *(*(v11 + 8 * v10 + 160) + 240);
          v15 = v14 & 0x7F;
          if (v14 >= 0)
          {
            v16 = -3;
          }

          else
          {
            v16 = -5;
          }

          v17 = (v16 + v15);
          goto LABEL_21;
        }
      }

      v17 = 0;
LABEL_21:
      if (v13 < 1 || v13 < v17)
      {
        if (v17 < 1 || v13 >= v17)
        {
          if (v10 == (v12 & 0x7F))
          {
            if (v12 < 0)
            {
              lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
            }

            v6[v7] = v10 - 1;
            v6[v8] += (*(*(v11 + 8 * (v10 - 1) + 168) + 240) & 0x7F) + 1;
            lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::merge(*&v5[8 * v7], *(v2 + 8), (v10 - 1));
            v23 = *&v5[8 * v7];
            if (*(v23 + 240) < 0)
            {
              lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
            }

            *&v5[8 * v8] = *(v23 + 8 * v6[v7] + 168);
          }

          else
          {
            lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::merge(v11, *(v2 + 8), v10);
          }
        }

        else
        {
          if (v12 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v21 = *(*(v11 + 8 * v10 + 168) + 240);
          lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::rotateFromLeft(v11, v6[v7]);
          v22 = *&v5[8 * v7];
          if (*(v22 + 240) < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v6[v8] += (*(*(v22 + 8 * v6[v7] + 168) + 240) & 0x7F) - (v21 & 0x7F);
        }
      }

      else
      {
        lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::rotateFromRight(v11, v6[v7]);
      }

      ++v4;
      v2 = *a1;
      v1 = *(*a1 + 32);
    }

    while ((v1 - 1) > v4);
  }

  v24 = a1 + 8;
  if ((*(*(a1 + 1) + 240) & 0x7F) != 0)
  {
    v25 = *(v2 + 32);
  }

  else
  {
    if (a1[128])
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure();
    }

    v26 = a1[143];
    if (v26 == 1 || (memmove(a1 + 128, a1 + 129, v26 - 1), v27 = a1[143], v27 == 1))
    {
      v28 = 0;
    }

    else
    {
      memmove(a1 + 8, a1 + 16, 8 * v27 - 8);
      v28 = a1[143] - 1;
    }

    a1[143] = v28;
    lsl::Allocator::free(*(v2 + 8), *v2);
    v29 = *a1;
    v25 = *(*a1 + 32) - 1;
    *(*a1 + 32) = v25;
    if (a1[143])
    {
      *v29 = *v24;
    }

    else
    {
      *v29 = 0;
    }
  }

  if (v25)
  {
    v30 = 0;
    do
    {
      if ((*(v24[(v25 + ~v30)] + 240) & 0x7F) != a1[(v25 + ~v30) + 128])
      {
        break;
      }

      --a1[143];
      ++v30;
    }

    while (v25 != v30);
  }
}

char *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::rotateFromRight(char *result, int a2)
{
  if (result[240] < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v2 = &result[8 * a2];
  v4 = *(v2 + 21);
  v3 = *(v2 + 22);
  v5 = *(v3 + 240) & 0x7F;
  v6 = v5 + (*(v4 + 240) & 0x7F);
  v7 = &result[24 * a2];
  v8 = v4 + 24 * (*(v4 + 240) & 0x7F);
  *v8 = *v7;
  *(v8 + 8) = *(v7 + 8);
  v9 = (v5 - (v6 >> 1));
  v10 = v3 + 24 * v9;
  *v7 = *(v10 - 24);
  *(v7 + 8) = *(v10 - 16);
  if (v5 != v6 >> 1)
  {
    v11 = v4 + 24 * (*(v4 + 240) & 0x7F) + 24;
    v12 = v3;
    do
    {
      *v11 = *v12;
      *(v11 + 8) = *(v12 + 8);
      v12 += 24;
      v11 += 24;
    }

    while (v12 != v10);
  }

  v13 = v3 + 24 * (*(v3 + 240) & 0x7F);
  if (v10 != v13)
  {
    v14 = v3;
    do
    {
      *v14 = *v10;
      *(v14 + 8) = *(v10 + 8);
      v10 += 24;
      v14 += 24;
    }

    while (v10 != v13);
  }

  v15 = *(v4 + 240);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = *(v3 + 240);
    if (v16 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    v17 = v3 + 168;
    if (v5 != v6 >> 1)
    {
      result = memmove((v4 + 8 * (v15 + 1) + 168), (v3 + 168), 8 * v9);
      v16 = *(v3 + 240);
      if (v16 < 0)
      {
        lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
      }
    }

    v18 = (v17 + 8 * v9);
    v19 = (v17 + 8 * (v16 + 1));
    if (v18 != v19)
    {
      result = memmove((v3 + 168), v18, v19 - v18);
    }
  }

  *(v4 + 240) += v9;
  *(v3 + 240) -= v9;
  return result;
}

void *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::rotateFromLeft(void *result, unsigned int a2)
{
  if (result[30] < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v2 = a2 - 1;
  v3 = result[v2 + 21];
  v4 = result[a2 + 21];
  v5 = *(v3 + 240) & 0x7F;
  v6 = *(v4 + 240) & 0x7F;
  v7 = v6 + v5;
  v8 = (v5 - ((v6 + v5) >> 1));
  if ((*(v4 + 240) & 0x7F) != 0)
  {
    v9 = v4 + 24 * (*(v4 + 240) & 0x7F) - 24;
    v10 = v9 + 24 * (v5 - ((v6 + v5) >> 1));
    v11 = -24 * v6;
    do
    {
      *v10 = *v9;
      *(v10 + 8) = *(v9 + 8);
      v10 -= 24;
      v9 -= 24;
      v11 += 24;
    }

    while (v11);
    v12 = *(v3 + 240) & 0x7F;
  }

  else
  {
    v12 = *(v3 + 240) & 0x7F;
  }

  if (-24 * v8 != -24)
  {
    v13 = v3 + 24 * v12;
    v14 = -24 * v8 + 24 + v13;
    v15 = v4;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = *(v14 + 8);
      v14 += 24;
      v15 += 24;
    }

    while (v14 != v13);
  }

  v16 = &result[3 * v2];
  v17 = v4 + 24 * v8;
  *(v17 - 24) = *v16;
  *(v17 - 16) = *(v16 + 8);
  v18 = v3 + 24 * ((*(v3 + 240) & 0x7F) - v8);
  *v16 = *v18;
  *(v16 + 8) = *(v18 + 8);
  v19 = *(v3 + 240);
  if ((v19 & 0x80000000) == 0)
  {
    if (*(v4 + 240) < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove((v4 + 168 + 8 * v8), (v4 + 168), 8 * *(v4 + 240) + 8);
    v19 = *(v3 + 240);
    if (v19 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    if (*(v4 + 240) < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    if (v5 != v7 >> 1)
    {
      result = memmove((v4 + 168), (v3 + 8 * (v19 + 1) - 8 * v8 + 168), 8 * v8);
      LOBYTE(v19) = *(v3 + 240);
    }
  }

  *(v3 + 240) = v19 - v8;
  *(v4 + 240) += v8;
  return result;
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::merge(uint64_t a1, lsl::Allocator *this, unsigned int a3)
{
  if (*(a1 + 240) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge();
  }

  if (*(a1 + 240) <= a3)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge();
  }

  v5 = a1 + 168;
  v6 = (a1 + 168 + 8 * a3);
  v8 = *v6;
  v7 = v6[1];
  v9 = a1 + 24 * a3;
  v10 = v8 + 24 * (*(v8 + 240) & 0x7F);
  *v10 = *v9;
  *(v10 + 8) = *(v9 + 8);
  v11 = *(a1 + 240);
  v12 = v9 + 24;
  v13 = a1 + 24 * (v11 & 0x7F);
  if (v9 + 24 != v13)
  {
    do
    {
      *v9 = *v12;
      *(v9 + 8) = *(v12 + 8);
      v12 += 24;
      v9 += 24;
    }

    while (v12 != v13);
    v11 = *(a1 + 240);
  }

  if (v11 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v14 = v5 + 8 * a3;
  v15 = v5 + 8 * (v11 + 1);
  if (v14 + 16 != v15)
  {
    memmove((v14 + 8), (v14 + 16), v15 - (v14 + 16));
  }

  v16 = v7[240];
  v17 = *(v8 + 240);
  if ((v16 & 0x7F) != 0)
  {
    v18 = &v7[24 * (v7[240] & 0x7F)];
    v19 = v8 + 24 * (*(v8 + 240) & 0x7F) + 24;
    v20 = v7;
    do
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      v20 += 24;
      v19 += 24;
    }

    while (v20 != v18);
    v17 = *(v8 + 240);
    v16 = v7[240];
  }

  if ((v17 & 0x80) == 0)
  {
    if (v16 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    memmove((v8 + 8 * (v17 + 1) + 168), v7 + 168, 8 * (v16 + 1));
    v16 = v7[240];
    v17 = *(v8 + 240);
  }

  *(v8 + 240) = (v16 & 0x7F) + v17 + 1;
  --*(a1 + 240);

  lsl::Allocator::free(this, v7);
}

__n128 lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::find@<Q0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::const_iterator(&v24, a1, a2);
  v13 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v24, &v13) && (v8 = v27, *a2 >= *(*(v25 + v27 - 1) + 32 * v26.n128_u8[v27 - 1])))
  {
    v9 = v25[5];
    *(a3 + 72) = v25[4];
    *(a3 + 88) = v9;
    v10 = v25[7];
    *(a3 + 104) = v25[6];
    *(a3 + 120) = v10;
    v11 = v25[1];
    *(a3 + 8) = v25[0];
    *(a3 + 24) = v11;
    v12 = v25[3];
    *(a3 + 40) = v25[2];
    *a3 = v24;
    *(a3 + 56) = v12;
    result = v26;
    *(a3 + 136) = v26;
    *(a3 + 152) = v8;
  }

  else
  {
    *a3 = a1;
    result.n128_u64[0] = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
  }

  return result;
}

__n128 lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::erase@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 152);
  v7 = *(a1 + 32);
  v8 = v6;
  if (v6 != v7)
  {
    v9 = *(a2 + 8 + 8 * (v6 - 1)) + 32 * *(a2 + 136 + v6 - 1);
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(a2);
    v10 = *(a2 + 8 + 8 * (*(a2 + 152) - 1)) + 32 * *(a2 + 136 + *(a2 + 152) - 1);
    v11 = *v9;
    *v9 = *v10;
    *v10 = v11;
    v12 = *(v9 + 24);
    v13 = *(v9 + 8);
    v14 = *(v10 + 24);
    *(v9 + 8) = *(v10 + 8);
    *(v9 + 24) = v14;
    *(v10 + 8) = v13;
    *(v10 + 24) = v12;
    v8 = *(a2 + 152);
  }

  v15 = v8 - 1;
  v16 = *(a2 + 8 + 8 * v15);
  if ((*(v16 + 248) & 0x80000000) == 0)
  {
    lsl::BTree<int,std::less<int>,false>::erase();
  }

  v17 = (a2 + 136);
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::erase(v16, *(a2 + 136 + v15));
  lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::rebalanceFromErasure(a2);
  if (v6 != v7)
  {
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator--(a2);
  }

  --*(a1 + 24);
  v18 = *(a2 + 88);
  *(a3 + 72) = *(a2 + 72);
  *(a3 + 88) = v18;
  v19 = *(a2 + 120);
  *(a3 + 104) = *(a2 + 104);
  *(a3 + 120) = v19;
  v20 = *(a2 + 24);
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = v20;
  v21 = *(a2 + 56);
  *(a3 + 40) = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 56) = v21;
  result = *v17;
  *(a3 + 136) = *v17;
  *(a3 + 152) = *(a2 + 152);
  return result;
}

uint64_t lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::erase(uint64_t result, unsigned int a2)
{
  v2 = *(result + 248);
  if ((v2 & 0x80000000) == 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase();
  }

  if ((v2 & 0x7Fu) <= a2)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase();
  }

  v3 = result + 32 * a2;
  v4 = v3 + 32;
  v5 = result + 32 * (*(result + 248) & 0x7F);
  if (v3 + 32 != v5)
  {
    do
    {
      *v3 = *v4;
      v6 = *(v4 + 8);
      *(v3 + 24) = *(v4 + 24);
      *(v3 + 8) = v6;
      v4 += 32;
      v3 += 32;
    }

    while (v4 != v5);
    LOBYTE(v2) = *(result + 248);
  }

  *(result + 248) = v2 - 1;
  return result;
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::rebalanceFromErasure(_BYTE *a1)
{
  v1 = a1[152];
  v2 = *a1;
  if (v1 != *(*a1 + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure();
  }

  if (v1 >= 2)
  {
    v4 = 0;
    v5 = a1 + 8;
    v6 = a1 + 136;
    do
    {
      v7 = (v1 - v4 - 2);
      v8 = v7 + 1;
      if ((*(*&v5[8 * v7 + 8] + 248) & 0x7Fu) > 2)
      {
        break;
      }

      v9 = v6[v7];
      v10 = *&v5[8 * v7];
      v11 = *(v10 + 248);
      if (v9 == (v11 & 0x7F))
      {
        v12 = 0;
        if (v6[v7])
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v11 < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v12 = (*(*(v10 + 8 * v9 + 200) + 248) & 0x7F) - 3;
        if (v6[v7])
        {
LABEL_7:
          if (v11 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v13 = (*(*(v10 + 8 * v9 + 184) + 248) & 0x7F) - 3;
          goto LABEL_12;
        }
      }

      v13 = 0;
LABEL_12:
      if (v12 < 1 || v12 < v13)
      {
        if (v13 < 1 || v12 >= v13)
        {
          if (v9 == (v11 & 0x7F))
          {
            if (v11 < 0)
            {
              lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
            }

            v6[v7] = v9 - 1;
            v6[v8] += (*(*(v10 + 8 * (v9 - 1) + 192) + 248) & 0x7F) + 1;
            lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::merge(*&v5[8 * v7], *(v2 + 8), (v9 - 1));
            v16 = *&v5[8 * v7];
            if (*(v16 + 248) < 0)
            {
              lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
            }

            *&v5[8 * v8] = *(v16 + 8 * v6[v7] + 192);
          }

          else
          {
            lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::merge(v10, *(v2 + 8), v9);
          }
        }

        else
        {
          if (v11 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v14 = *(*(v10 + 8 * v9 + 192) + 248);
          lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::rotateFromLeft(v10, v6[v7]);
          v15 = *&v5[8 * v7];
          if (*(v15 + 248) < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v6[v8] += (*(*(v15 + 8 * v6[v7] + 192) + 248) & 0x7F) - (v14 & 0x7F);
        }
      }

      else
      {
        lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::rotateFromRight(v10, v6[v7]);
      }

      ++v4;
      v2 = *a1;
      v1 = *(*a1 + 32);
    }

    while ((v1 - 1) > v4);
  }

  v17 = a1 + 8;
  if ((*(*(a1 + 1) + 248) & 0x7F) != 0)
  {
    v18 = *(v2 + 32);
  }

  else
  {
    if (a1[136])
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure();
    }

    v19 = a1[152];
    if (v19 == 1 || (memmove(a1 + 136, a1 + 137, v19 - 1), v20 = a1[152], v20 == 1))
    {
      v21 = 0;
    }

    else
    {
      memmove(a1 + 8, a1 + 16, 8 * v20 - 8);
      v21 = a1[152] - 1;
    }

    a1[152] = v21;
    lsl::Allocator::free(*(v2 + 8), *v2);
    v22 = *a1;
    v18 = *(*a1 + 32) - 1;
    *(*a1 + 32) = v18;
    if (a1[152])
    {
      *v22 = *v17;
    }

    else
    {
      *v22 = 0;
    }
  }

  if (v18)
  {
    v23 = 0;
    do
    {
      if ((*(v17[(v18 + ~v23)] + 248) & 0x7F) != a1[(v18 + ~v23) + 136])
      {
        break;
      }

      --a1[152];
      ++v23;
    }

    while (v18 != v23);
  }
}

char *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::rotateFromRight(char *result, int a2)
{
  if (result[248] < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v2 = &result[8 * a2];
  v4 = *(v2 + 24);
  v3 = *(v2 + 25);
  v5 = *(v4 + 248) & 0x7F;
  v6 = *(v3 + 248) & 0x7F;
  v7 = v6 + v5;
  v8 = &result[32 * a2];
  v9 = v4 + 32 * v5;
  *v9 = *v8;
  v10 = *(v8 + 3);
  *(v9 + 8) = *(v8 + 8);
  *(v9 + 24) = v10;
  v11 = (v6 - (v7 >> 1));
  v12 = v3 + 32 * v11;
  *v8 = *(v12 - 32);
  v13 = *(v12 - 24);
  *(v8 + 3) = *(v12 - 8);
  *(v8 + 8) = v13;
  if (v6 != v7 >> 1)
  {
    v14 = v4 + 32 * (*(v4 + 248) & 0x7F) + 32;
    v15 = v3;
    do
    {
      *v14 = *v15;
      v16 = *(v15 + 8);
      *(v14 + 24) = *(v15 + 24);
      *(v14 + 8) = v16;
      v15 += 32;
      v14 += 32;
    }

    while (v15 != v12);
  }

  v17 = v3 + 32 * (*(v3 + 248) & 0x7F);
  if (v12 != v17)
  {
    v18 = v3;
    do
    {
      *v18 = *v12;
      v19 = *(v12 + 8);
      *(v18 + 24) = *(v12 + 24);
      *(v18 + 8) = v19;
      v12 += 32;
      v18 += 32;
    }

    while (v12 != v17);
  }

  v20 = *(v4 + 248);
  if ((v20 & 0x80000000) == 0)
  {
    v21 = *(v3 + 248);
    if (v21 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    v22 = v3 + 192;
    if (v6 != v7 >> 1)
    {
      result = memmove((v4 + 8 * (v20 + 1) + 192), (v3 + 192), 8 * v11);
      v21 = *(v3 + 248);
      if (v21 < 0)
      {
        lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
      }
    }

    v23 = (v22 + 8 * v11);
    v24 = (v22 + 8 * (v21 + 1));
    if (v23 != v24)
    {
      result = memmove((v3 + 192), v23, v24 - v23);
    }
  }

  *(v4 + 248) += v11;
  *(v3 + 248) -= v11;
  return result;
}

void *lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::rotateFromLeft(void *result, unsigned int a2)
{
  if (result[31] < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v2 = a2 - 1;
  v3 = result[v2 + 24];
  v4 = result[a2 + 24];
  v5 = *(v3 + 248) & 0x7F;
  v6 = *(v4 + 248) & 0x7F;
  v7 = v6 + v5;
  v8 = (v5 - ((v6 + v5) >> 1));
  v9 = 32 * v8;
  if ((*(v4 + 248) & 0x7F) != 0)
  {
    v10 = v4 + 32 * v6 - 32;
    v11 = v10 + v9;
    v12 = -32 * v6;
    do
    {
      *v11 = *v10;
      v13 = *(v10 + 8);
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 8) = v13;
      v11 -= 32;
      v10 -= 32;
      v12 += 32;
    }

    while (v12);
    v14 = *(v3 + 248) & 0x7F;
  }

  else
  {
    v14 = *(v3 + 248) & 0x7F;
  }

  v15 = v3 + 32 * v14;
  v16 = v15 - v9 + 32;
  if (v16 != v15)
  {
    v17 = v4;
    do
    {
      *v17 = *v16;
      v18 = *(v16 + 8);
      *(v17 + 24) = *(v16 + 24);
      *(v17 + 8) = v18;
      v16 += 32;
      v17 += 32;
    }

    while (v16 != v15);
  }

  v19 = &result[4 * v2];
  v20 = v4 + 32 * v8;
  *(v20 - 32) = *v19;
  v21 = *(v19 + 8);
  *(v20 - 8) = *(v19 + 3);
  *(v20 - 24) = v21;
  v22 = v3 + 32 * ((*(v3 + 248) & 0x7F) - v8);
  *v19 = *v22;
  v23 = *(v22 + 8);
  *(v19 + 3) = *(v22 + 24);
  *(v19 + 8) = v23;
  v24 = *(v3 + 248);
  if ((v24 & 0x80000000) == 0)
  {
    if (*(v4 + 248) < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove((v4 + 192 + 8 * v8), (v4 + 192), 8 * *(v4 + 248) + 8);
    v24 = *(v3 + 248);
    if (v24 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    if (*(v4 + 248) < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    if (v5 != v7 >> 1)
    {
      result = memmove((v4 + 192), (v3 + 8 * (v24 + 1) - 8 * v8 + 192), 8 * v8);
      LOBYTE(v24) = *(v3 + 248);
    }
  }

  *(v3 + 248) = v24 - v8;
  *(v4 + 248) += v8;
  return result;
}

void lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::merge(uint64_t a1, lsl::Allocator *this, unsigned int a3)
{
  if (*(a1 + 248) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge();
  }

  if (*(a1 + 248) <= a3)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge();
  }

  v5 = a1 + 192;
  v6 = (a1 + 192 + 8 * a3);
  v8 = *v6;
  v7 = v6[1];
  v9 = a1 + 32 * a3;
  v10 = v8 + 32 * (*(v8 + 248) & 0x7F);
  *v10 = *v9;
  v11 = *(v9 + 24);
  *(v10 + 8) = *(v9 + 8);
  *(v10 + 24) = v11;
  v12 = *(a1 + 248);
  v13 = v9 + 32;
  v14 = a1 + 32 * (v12 & 0x7F);
  if (v9 + 32 != v14)
  {
    do
    {
      *v9 = *v13;
      v15 = *(v13 + 8);
      *(v9 + 24) = *(v13 + 24);
      *(v9 + 8) = v15;
      v13 += 32;
      v9 += 32;
    }

    while (v13 != v14);
    v12 = *(a1 + 248);
  }

  if (v12 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v16 = v5 + 8 * a3;
  v17 = v5 + 8 * (v12 + 1);
  if (v16 + 16 != v17)
  {
    memmove((v16 + 8), (v16 + 16), v17 - (v16 + 16));
  }

  v18 = v7[248];
  if ((v18 & 0x7F) != 0)
  {
    v19 = &v7[32 * (v18 & 0x7F)];
    v20 = v8 + 32 * (*(v8 + 248) & 0x7F) + 32;
    v21 = v7;
    do
    {
      *v20 = *v21;
      v22 = *(v21 + 8);
      *(v20 + 24) = *(v21 + 3);
      *(v20 + 8) = v22;
      v21 += 32;
      v20 += 32;
    }

    while (v21 != v19);
    v18 = v7[248];
  }

  v23 = *(v8 + 248);
  if ((v23 & 0x80000000) == 0)
  {
    if (v18 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    memmove((v8 + 8 * (v23 + 1) + 192), v7 + 192, 8 * (v18 + 1));
    v18 = v7[248];
    LOBYTE(v23) = *(v8 + 248);
  }

  *(v8 + 248) = (v18 & 0x7F) + v23 + 1;
  --*(a1 + 248);

  lsl::Allocator::free(this, v7);
}

void lsl::Vector<lsl::UUID>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<lsl::UUID>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<lsl::UUID>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
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

    lsl::Vector<lsl::UUID>::reserveExact(a1, v2);
  }
}

void lsl::Vector<lsl::UUID>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 16 * a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          *&v4[v7] = *(*(a1 + 8) + v7);
          v6 = *(a1 + 16);
          v7 += 16;
        }
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        lsl::Allocator::free(*a1, v9);
        v6 = *(a1 + 16);
      }

      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
    }

    *(a1 + 24) = a2;
  }
}

char *lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator *this)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v4 = *(a1 + 248);
  if (v4 >= 0xFu)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v6 = (a1 + 120 + 8 * a2);
  v7 = *(*v6 + 248);
  v8 = v7;
  v9 = v7 & 0x7F;
  if (v7 >= 0)
  {
    v10 = 15;
  }

  else
  {
    v10 = 31;
  }

  if (v9 != v10)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v12 = v8 < 0;
  v13 = 8 * a2;
  if (v12)
  {
    v14 = 15;
  }

  else
  {
    v14 = 7;
  }

  v15 = (a1 + 8 * a2);
  if (v13 != 8 * v3)
  {
    v16 = (a1 + 8 * v3);
    v17 = v16 + 1;
    do
    {
      v18 = v16;
      v19 = v17;
      --v16;
      --v17;
      if (v18 != v19)
      {
        v20 = *v17;
        *v17 = *v16;
        *v16 = v20;
      }
    }

    while (v16 != v15);
  }

  if (v13 != 8 * v3)
  {
    memmove((a1 + 128 + v13 + 8), (a1 + 128 + v13), 8 * v3 - v13);
    v4 = *(a1 + 248);
  }

  *(a1 + 248) = v4 + 1;
  v21 = (*v6 + 8 * v14);
  if (v21 != v15)
  {
    v22 = *v15;
    *v15 = *v21;
    *v21 = v22;
  }

  result = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v24 = result;
  v25 = *(*v6 + 248);
  result[248] = *(*v6 + 248) & 0x80;
  if (v25 < 0)
  {
    *(result + 30) = 0;
    v26 = 0uLL;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    *(result + 14) = 0;
    v26 = 0uLL;
  }

  *(result + 5) = v26;
  *(result + 6) = v26;
  *(result + 3) = v26;
  *(result + 4) = v26;
  *(result + 1) = v26;
  *(result + 2) = v26;
  *result = v26;
  if (*(a1 + 248) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v27 = v9 + ~v14;
  v6[1] = result;
  v28 = *v6;
  v29 = 8 * v27;
  if (v29)
  {
    v30 = (v28 + 8 * v14 + 8);
    v31 = &v30[v29 / 8];
    v32 = result;
    do
    {
      if (v30 != v32)
      {
        v33 = *v32;
        *v32 = *v30;
        *v30 = v33;
      }

      ++v30;
      ++v32;
    }

    while (v30 != v31);
    v28 = *v6;
  }

  v34 = *(v28 + 248);
  if ((v34 & 0x80000000) == 0)
  {
    if (v25 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove(result + 120, (v28 + 8 * v14 + 128), v29 + 8);
    v28 = *v6;
    LOBYTE(v34) = *(*v6 + 248);
  }

  *(v28 + 248) = v34 + ~v27;
  v35 = v24[248] + v27;
  v24[248] = v35;
  if (v35 >= 0)
  {
    v36 = 15;
  }

  else
  {
    v36 = 31;
  }

  if ((v35 & 0x7F) == v36 || ((v37 = *(v28 + 248), v38 = v37, v39 = v37 & 0x7F, v38 >= 0) ? (v40 = 15) : (v40 = 31), v39 == v40))
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  return result;
}

uint64_t lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::NodeCore(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *(result + 248) = 0;
  v3 = vdupq_n_s64(0xFuLL);
  do
  {
    v4 = vorrq_s8(vdupq_n_s64(v2), xmmword_180110280);
    if (vmovn_s64(vcgtq_u64(v3, v4)).u8[0])
    {
      *(result + 8 * v2) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), v4)).i32[1])
    {
      *(result + 8 * v2 + 8) = 0;
    }

    v2 += 2;
  }

  while (v2 != 16);
  if (*(result + 248) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  *(result + 120) = a2;
  return result;
}

void lsl::Vector<char>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          v4[i] = *(*(a1 + 8) + i);
          v6 = *(a1 + 16);
        }
      }

      v8 = *(a1 + 8);
      if (v8)
      {
        lsl::Allocator::free(*a1, v8);
        v6 = *(a1 + 16);
      }

      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
    }

    *(a1 + 24) = a2;
  }
}

uint64_t dyld4::FileManager::FileManager(uint64_t a1, lsl::Allocator *this, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = this;
  v5 = lsl::Allocator::aligned_alloc(this, 8uLL, 0x28uLL);
  *v5 = 0;
  v5[1] = this;
  v5[3] = 0;
  *(v5 + 32) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  return a1;
}

double dyld4::FileManager::fileRecordForVolumeUUIDAndObjID@<D0>(dyld4::FileManager *this@<X0>, const UUID *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = *a2;
  *a4 = this;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0u;
  *&result = 0x1FFFFFFFFLL;
  *(a4 + 64) = 0x1FFFFFFFFLL;
  *(a4 + 72) = 0;
  *(a4 + 74) = 1;
  return result;
}

void dyld4::FileManager::reloadFSInfos(dyld4::FileManager *this)
{
  v2 = lsl::MemoryManager::defaultAllocator(this);
  v3 = getfsstat(0, 0, 2);
  if (v3 != -1)
  {
    LODWORD(v4) = v3;
    while (1)
    {
      v5 = lsl::Allocator::malloc(v2, 2168 * v4);
      if (getfsstat(v5, 2168 * v4, 2) == v4)
      {
        break;
      }

      lsl::Allocator::free(v2, v5);
      LODWORD(v4) = getfsstat(0, 0, 2);
      if (v4 == -1)
      {
        return;
      }
    }

    if (v4 >= 1)
    {
      _X21 = v5;
      v4 = v4;
      do
      {
        __asm { PRFM            #0, [X21,#0x1998] }

        v12 = _X21->f_fsid.val[0];
        v13 = *(this + 2);
        *&v38 = 0;
        v37 = v12;
        lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v13, &v37, &v19);
        v30 = v19;
        v33[2] = v24;
        v33[3] = v25;
        v33[4] = v26;
        v31 = v20;
        v32 = v21;
        v33[0] = v22;
        v33[1] = v23;
        *&v35[7] = *&v28[7];
        v34 = v27;
        *v35 = *v28;
        v36 = v29;
        v14 = *(this + 2);
        v43 = 0u;
        memset(v44, 0, sizeof(v44));
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v19 = v14;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0;
        memset(v28, 0, sizeof(v28));
        v29 = 0;
        if (!lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v30, &v19))
        {
          if ((_X21->f_flags & 0x4000) != 0)
          {
            LODWORD(v37) = 5;
            HIDWORD(v37) = 0;
            *&v38 = 0;
            *(&v37 + 4) = 0x8006000000000006;
            if (!getattrlist(_X21->f_mntonname, &v37, &v30, 0x40uLL, 0) && (BYTE8(v31) & 1) != 0)
            {
              v15 = *(this + 2);
              v17 = v12;
              v18 = *(v33 + 8);
            }

            else
            {
              v15 = *(this + 2);
              v18 = 0uLL;
              v17 = v12;
            }

            v16 = &v17;
          }

          else
          {
            v15 = *(this + 2);
            v31 = 0uLL;
            v30 = v12;
            v16 = &v30;
          }

          lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::insert(v15, v16, &v19);
        }

        ++_X21;
        --v4;
      }

      while (v4);
    }

    lsl::Allocator::free(v2, v5);
  }
}

double lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::insert@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v5 = *(a1 + 16);
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::const_iterator(v23, a1, &v10);
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::insert_internal(a1, v23, &v10, &v12);
  v6 = v12;
  *(a3 + 72) = v17;
  *(a3 + 88) = v18;
  *(a3 + 104) = v19;
  *(a3 + 8) = v13;
  *(a3 + 24) = v14;
  *(a3 + 40) = v15;
  result = *&v16;
  *(a3 + 56) = v16;
  *(a3 + 135) = *&v21[7];
  v8 = *v21;
  *(a3 + 120) = v20;
  *(a3 + 128) = v8;
  v9 = v22;
  *a3 = v6;
  *(a3 + 143) = v9;
  return result;
}

uint64_t dyld4::FileManager::uuidForFileSystem(os_unfair_lock_s *this, unsigned int a2)
{
  os_unfair_lock_lock(this + 6);
  v4 = *&this[4]._os_unfair_lock_opaque;
  *&v26[8] = 0;
  *&v26[16] = 0;
  *v26 = a2;
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v4, v26, &v15);
  v29[4] = v20;
  v29[5] = v21;
  v29[6] = v22;
  v28 = v15;
  v29[0] = v16;
  v29[1] = v17;
  v29[2] = v18;
  v29[3] = v19;
  *&v31[7] = *&v24[7];
  v30 = v23;
  *v31 = *v24;
  v32 = v25;
  v5 = *&this[4]._os_unfair_lock_opaque;
  memset(v26, 0, 135);
  v15 = v5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  if (!lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v28, &v15))
  {
    dyld4::FileManager::reloadFSInfos(this);
    v6 = *&this[4]._os_unfair_lock_opaque;
    v34 = 0;
    v35 = 0;
    v33 = a2;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v6, &v33, &v15);
    *&v26[72] = v20;
    *&v26[88] = v21;
    *&v26[104] = v22;
    *v26 = v15;
    *&v26[8] = v16;
    *&v26[24] = v17;
    *&v26[40] = v18;
    *&v26[56] = v19;
    *&v26[135] = *&v24[7];
    *&v26[120] = v23;
    *&v26[128] = *v24;
    v27 = v25;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::swap(&v28, v26);
  }

  v7 = *&this[4]._os_unfair_lock_opaque;
  memset(v26, 0, 135);
  v15 = v7;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  if (!lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v28, &v15))
  {
    v8 = *&this[4]._os_unfair_lock_opaque;
    *&v26[8] = 0;
    *&v26[16] = 0;
    *v26 = a2;
    lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::insert(v8, v26, &v15);
    v9 = *&this[4]._os_unfair_lock_opaque;
    v34 = 0;
    v35 = 0;
    v33 = a2;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v9, &v33, &v15);
    *&v26[72] = v20;
    *&v26[88] = v21;
    *&v26[104] = v22;
    *v26 = v15;
    *&v26[8] = v16;
    *&v26[24] = v17;
    *&v26[40] = v18;
    *&v26[56] = v19;
    *&v26[135] = *&v24[7];
    *&v26[120] = v23;
    *&v26[128] = *v24;
    v27 = v25;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::swap(&v28, v26);
  }

  v10 = *&this[4]._os_unfair_lock_opaque;
  memset(v26, 0, 135);
  v15 = v10;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  if (!lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v28, &v15))
  {
    dyld4::FileManager::uuidForFileSystem();
  }

  v11 = *(v29 + v32 - 1) + 24 * v31[v32 - 1];
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  os_unfair_lock_unlock(this + 6);
  return v12;
}

uint64_t dyld4::FileManager::fsidForUUID(os_unfair_lock_s *this, const UUID *a2)
{
  os_unfair_lock_lock(this + 6);
  v4 = *&this[4]._os_unfair_lock_opaque;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v46 = v4;
  v5 = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v46);
  v6 = *v5;
  v7 = *(v5 + 13);
  v8 = *(v5 + 11);
  v9 = v5[15];
  v10 = v5[16];
  v40 = *(v5 + 9);
  v41 = v8;
  v42 = v7;
  v43 = v9;
  v11 = *(v5 + 7);
  v12 = *(v5 + 5);
  v13 = *(v5 + 3);
  v36 = *(v5 + 1);
  v37 = v13;
  v38 = v12;
  v39 = v11;
  *&v44[7] = *(v5 + 135);
  *v44 = v10;
  LOBYTE(v9) = *(v5 + 143);
  v35 = v6;
  v45 = v9;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = v4;
  memset(v54, 0, sizeof(v54));
  while (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v35, &v46))
  {
    v14 = 0;
    v15 = (*(&v36 + v45 - 1) + 24 * v44[v45 - 1]);
    do
    {
      v16 = *(v15 + v14 + 8);
      v17 = (*a2)[v14];
    }

    while (v16 == v17 && v14++ != 15);
    if (v16 == v17)
    {
      goto LABEL_20;
    }

    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v35);
  }

  dyld4::FileManager::reloadFSInfos(this);
  v19 = *&this[4]._os_unfair_lock_opaque;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v46 = v19;
  v20 = lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v46);
  v21 = *v20;
  v22 = *(v20 + 13);
  v23 = *(v20 + 11);
  v24 = v20[15];
  v25 = v20[16];
  v40 = *(v20 + 9);
  v41 = v23;
  v42 = v22;
  v43 = v24;
  v26 = *(v20 + 7);
  v27 = *(v20 + 5);
  v28 = *(v20 + 3);
  v36 = *(v20 + 1);
  v37 = v28;
  v38 = v27;
  v39 = v26;
  *&v44[7] = *(v20 + 135);
  *v44 = v25;
  LOBYTE(v24) = *(v20 + 143);
  v35 = v21;
  v45 = v24;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = v19;
  memset(v54, 0, sizeof(v54));
  if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v35, &v46))
  {
    while (1)
    {
      v29 = 0;
      v15 = (*(&v36 + v45 - 1) + 24 * v44[v45 - 1]);
      do
      {
        v30 = *(v15 + v29 + 8);
        v31 = (*a2)[v29];
      }

      while (v30 == v31 && v29++ != 15);
      if (v30 == v31)
      {
        break;
      }

      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator++(&v35);
      if (!lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v35, &v46))
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    v33 = *v15;
    goto LABEL_21;
  }

LABEL_19:
  v33 = 0;
LABEL_21:
  os_unfair_lock_unlock(this + 6);
  return v33;
}

char *dyld4::FileManager::getPath@<X0>(char *this@<X0>, const UUID *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v5 = this;
  v7 = 0;
  do
  {
    v8 = (*a2)[v7];
    if ((*a2)[v7])
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 15;
    }

    ++v7;
  }

  while (!v9);
  if (v8)
  {
    v10 = dyld4::FileManager::fsidForUUID(this, a2);

    return dyld4::FileManager::getPath(v5, v10, a3, a4);
  }

  else
  {
    *a4 = 0;
  }

  return this;
}

char *dyld4::FileManager::getPath@<X0>(char *this@<X0>, fsid_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  if (*&a2 && a3)
  {
    v5 = this;
    v6 = a2;
    if (fsgetpath(__s, 0x400uLL, &v6, a3) == -1)
    {
      this = 0;
    }

    else
    {
      this = lsl::Allocator::strdup(*(v5 + 8), __s);
    }

    *a4 = this;
  }

  else
  {
    *a4 = 0;
  }

  return this;
}

uint64_t dyld4::FileRecord::close(dyld4::FileRecord *this)
{
  result = *(this + 16);
  if (result != -1)
  {
    result = close(result);
    *(this + 16) = -1;
  }

  return result;
}

uint64_t dyld4::FileRecord::open(dyld4::FileRecord *this, int a2)
{
  if (*(this + 16) != -1)
  {
    dyld4::FileRecord::open();
  }

  v4 = 24;
  do
  {
    v5 = *(this + v4);
    if (*(this + v4))
    {
      break;
    }
  }

  while (v4++ != 39);
  if (v5 && dyld4::FileManager::fsidForUUID(*this, (this + 24)) && *(this + 1))
  {
    result = openbyid_np();
    *(this + 16) = result;
  }

  else
  {
    result = *(this + 16);
  }

  if (result == -1)
  {
    Path = dyld4::FileRecord::getPath(this);
    result = open(Path, a2);
    *(this + 16) = result;
  }

  return result;
}

uint64_t dyld4::FileRecord::stat(uint64_t this)
{
  if (*(this + 68) == 1)
  {
    v12 = v1;
    v13 = v2;
    v3 = this;
    v4 = *(this + 64);
    if (v4 == -1)
    {
      Path = dyld4::FileRecord::getPath(v3);
      this = stat(Path, &v11);
    }

    else
    {
      this = fstat(v4, &v11);
    }

    *(v3 + 68) = this;
    if (!this)
    {
      tv_sec = v11.st_mtimespec.tv_sec;
      *(v3 + 48) = v11.st_size;
      *(v3 + 56) = tv_sec;
      *(v3 + 72) = v11.st_mode;
      if (!*(v3 + 8))
      {
        v7 = 24;
        do
        {
          v8 = *(v3 + v7);
          if (*(v3 + v7))
          {
            break;
          }
        }

        while (v7++ != 39);
        if (!v8)
        {
          *(v3 + 8) = v11.st_ino;
          this = dyld4::FileManager::uuidForFileSystem(*v3, v11.st_dev);
          *(v3 + 24) = this;
          *(v3 + 32) = v10;
        }
      }
    }
  }

  return this;
}

uint64_t dyld4::FileRecord::size(dyld4::FileRecord *this)
{
  result = *(this + 6);
  if (!result)
  {
    dyld4::FileRecord::stat(this);
    return *(this + 6);
  }

  return result;
}

uint64_t *lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  for (i = 1; i != 16; ++i)
  {
    v4 = result[i];
    result[i] = a2[i];
    a2[i] = v4;
  }

  v5 = 0;
  v6 = result + 16;
  v7 = a2 + 16;
  do
  {
    v8 = *(v6 + v5);
    *(v6 + v5) = *(v7 + v5);
    *(v7 + v5++) = v8;
  }

  while (v5 != 15);
  v9 = *(result + 143);
  *(result + 143) = *(a2 + 143);
  *(a2 + 143) = v9;
  return result;
}

double lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::const_iterator(&v24, a1, a2);
  v14 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(&v24, &v14) && (v7 = v33, *a2 >= *(*(v25 + v33 - 1) + 24 * v32[v33 - 1])))
  {
    v9 = v29;
    *(a3 + 72) = v28;
    *(a3 + 88) = v9;
    *(a3 + 104) = v30;
    v10 = v25[1];
    *(a3 + 8) = v25[0];
    *(a3 + 24) = v10;
    result = *&v26;
    v11 = v27;
    *(a3 + 40) = v26;
    *a3 = v24;
    v12 = v31;
    *(a3 + 56) = v11;
    *(a3 + 135) = *&v32[7];
    v13 = *v32;
    *(a3 + 120) = v12;
    *(a3 + 128) = v13;
    *(a3 + 143) = v7;
  }

  else
  {
    *a3 = a1;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0;
  }

  return result;
}

uint64_t lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::const_iterator(uint64_t result, uint64_t *a2, unint64_t *a3)
{
  *result = a2;
  *(result + 8) = 0u;
  v3 = result + 8;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0;
  if (*(a2 + 32))
  {
    v4 = 0;
    v5 = *a2;
    v6 = result + 128;
    do
    {
      *(v3 + 8 * v4) = v5;
      v7 = *(v5 + 240) & 0x7F;
      if ((*(v5 + 240) & 0x7F) != 0)
      {
        v8 = v5;
        do
        {
          v9 = v7 >> 1;
          v10 = &v8[3 * (v7 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v7 += ~(v7 >> 1);
          if (v12 < *a3)
          {
            v8 = v11;
          }

          else
          {
            v7 = v9;
          }
        }

        while (v7);
      }

      else
      {
        v8 = (v5 + 24 * (*(v5 + 240) & 0x7F));
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v5) >> 3);
      *(v6 + v4) = v13;
      v14 = *(v3 + 8 * v4);
      if ((*(v14 + 240) & 0x7F) != v13 && *(v14 + 24 * v13) < *a3)
      {
        *(result + 143) = v4 + 1;
        return result;
      }

      v15 = *(a2 + 32);
      if (v4 + 1 != v15)
      {
        if ((*(v14 + 240) & 0x80) != 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v5 = *(v14 + 8 * v13 + 168);
      }

      ++v4;
    }

    while (v4 < v15);
    for (*(result + 143) = v15; v15; *(result + 143) = v15)
    {
      if (*(v6 + v15 - 1) != (*(*(result + 8 * v15) + 240) & 0x7F))
      {
        break;
      }

      LOBYTE(v15) = v15 - 1;
    }
  }

  return result;
}

void lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::insert_internal(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v24 = a1;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(a2, &v24))
    {
      v8 = *(a2 + 143);
      if (*a3 >= *(*(a2 + 8 + 8 * (v8 - 1)) + 24 * *(a2 + 128 + v8 - 1)))
      {
        v13 = 0;
        v19 = *(a2 + 88);
        *(a4 + 72) = *(a2 + 72);
        *(a4 + 88) = v19;
        *(a4 + 104) = *(a2 + 104);
        v20 = *(a2 + 24);
        *(a4 + 8) = *(a2 + 8);
        *(a4 + 24) = v20;
        v21 = *(a2 + 56);
        *(a4 + 40) = *(a2 + 40);
        *a4 = *a2;
        *(a4 + 135) = *(a2 + 135);
        v22 = *(a2 + 120);
        *(a4 + 56) = v21;
        v23 = *(a2 + 128);
        *(a4 + 120) = v22;
        *(a4 + 128) = v23;
        *(a4 + 143) = v8;
        goto LABEL_11;
      }
    }

    v24 = a1;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    if (lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator<=>(a2, &v24) && *(a2 + 143) == *(a1 + 32))
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 128);
      v10 = *(a2 + 143) - 1;
      v11 = *(a2 + 128 + v10);
    }

    else
    {
      lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::const_iterator::operator--(a2);
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 128);
      v16 = *(a2 + 143) + a2 + 128;
      v11 = *(v16 - 1) + 1;
      *(v16 - 1) = v11;
      v10 = *(a2 + 143) - 1;
    }

    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert(*(a2 + 8 + 8 * v10), v11, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    v17 = *(a2 + 120);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    v18 = *v9;
    *(a4 + 135) = *(v9 + 7);
    *(a4 + 120) = v17;
    *(a4 + 128) = v18;
    v15 = *(a2 + 143);
    v13 = 1;
  }

  else
  {
    v12 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    v12[240] = 0x80;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 7) = 0u;
    *(v12 + 8) = 0u;
    *(v12 + 9) = 0u;
    *(v12 + 10) = 0u;
    *(v12 + 11) = 0u;
    *(v12 + 12) = 0u;
    *(v12 + 13) = 0u;
    *(v12 + 14) = 0u;
    *a1 = v12;
    v13 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v12;
    *(a2 + 143) = 1;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert(v12, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 135) = *(a2 + 135);
    v14 = *(a2 + 128);
    *(a4 + 120) = *(a2 + 120);
    *(a4 + 128) = v14;
    v15 = *(a2 + 143);
  }

  *(a4 + 143) = v15;
LABEL_11:
  *(a4 + 144) = v13;
}

__n128 lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  if (v3 >= 0)
  {
    v4 = 7;
  }

  else
  {
    v4 = 10;
  }

  if ((v3 & 0x7F) == v4)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  if (24 * a2 != 24 * (v3 & 0x7F))
  {
    v5 = a1 + 24 * (v3 & 0x7F);
    v6 = v5;
    do
    {
      v7 = *(v6 - 24);
      v6 -= 24;
      *v5 = v7;
      *(v5 + 8) = *(v6 + 8);
      v5 -= 24;
    }

    while (v6 != a1 + 24 * a2);
    LOBYTE(v3) = *(a1 + 240);
  }

  *(a1 + 240) = v3 + 1;
  v8 = a1 + 24 * a2;
  *v8 = *a3;
  result = *(a3 + 8);
  *(v8 + 8) = result;
  return result;
}

unsigned __int8 *lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[143];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 240) >= 0)
  {
    v4 = 7;
  }

  else
  {
    v4 = 10;
  }

  if ((*(*&result[8 * v1] + 240) & 0x7F) == v4)
  {
    if (!result[143])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v3[v5] + 240) >= 0)
      {
        v7 = 7;
      }

      else
      {
        v7 = 10;
      }

      if ((*(v3[v5] + 240) & 0x7F) != v7)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (v1 != v5);
    if (!v6)
    {
LABEL_15:
      if (*(*v3 + 240) >= 0)
      {
        v8 = 7;
      }

      else
      {
        v8 = 10;
      }

      if ((*(*v3 + 240) & 0x7F) == v8)
      {
        result = lsl::Allocator::aligned_alloc(*(*result + 8), 0x100uLL, 0x100uLL);
        v9 = **v2;
        result[240] = 0;
        *result = 0u;
        *(result + 1) = 0u;
        *(result + 2) = 0u;
        *(result + 3) = 0u;
        *(result + 4) = 0u;
        *(result + 5) = 0u;
        *(result + 6) = 0u;
        *(result + 7) = 0u;
        *(result + 8) = 0u;
        *(result + 9) = 0u;
        *(result + 20) = 0;
        *(result + 21) = v9;
        **v2 = result;
        if (v2[143] && (result = memmove(v2 + 129, v2 + 128, v2[143]), v2[143]))
        {
          result = memmove(v3 + 1, v3, 8 * v2[143]);
          LOBYTE(v1) = v2[143] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[128] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[143] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 128;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild(v3[v12], v11[v12], *(*v2 + 8));
        v14 = v3[v12];
        if (*(v14 + 240) < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 168);
        v17 = v2[v12 + 129];
        if (v17 > (*(v16 + 240) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 129] = v17 + (~*(v16 + 240) | 0x80);
          v19 = v3[v12];
          if (*(v19 + 240) < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 168);
        }

        ++v12;
      }

      while (v13 + 2 < v2[143]);
    }
  }

  return result;
}

char *lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator *this)
{
  v3 = *(a1 + 240);
  if (v3 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 240);
  if (v4 >= 7u)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v6 = a1 + 168;
  v7 = (a1 + 168 + 8 * a2);
  v8 = *(*v7 + 240);
  v9 = v8;
  v10 = v8 & 0x7F;
  if (v8 >= 0)
  {
    v11 = 7;
  }

  else
  {
    v11 = 10;
  }

  if (v10 != v11)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  if (v9 >= 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = 5;
  }

  v15 = 3 * v3;
  if (24 * a2 != 8 * v15)
  {
    v16 = a1 + 8 * v15;
    v17 = v16;
    do
    {
      v18 = *(v17 - 24);
      v17 -= 24;
      *v16 = v18;
      *(v16 + 8) = *(v17 + 8);
      v16 -= 24;
    }

    while (v17 != a1 + 24 * a2);
    v4 = *(a1 + 240);
    if (v4 < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }
  }

  v19 = v4 + 1;
  v20 = v6 + 8 * a2 + 8;
  v21 = v6 + 8 * v19;
  if (v20 != v21)
  {
    memmove((v20 + 8), v20, v21 - v20);
    v19 = *(a1 + 240) + 1;
  }

  *(a1 + 240) = v19;
  v22 = *v7 + 24 * v14;
  v23 = a1 + 24 * a2;
  *v23 = *v22;
  *(v23 + 8) = *(v22 + 8);
  result = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v25 = result;
  v26 = *(*v7 + 240);
  result[240] = v26 & 0x80;
  if (v26 < 0)
  {
    v27 = 0uLL;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 10) = 0u;
  }

  else
  {
    *(result + 20) = 0;
    v27 = 0uLL;
  }

  *(result + 8) = v27;
  *(result + 9) = v27;
  *(result + 6) = v27;
  *(result + 7) = v27;
  *(result + 4) = v27;
  *(result + 5) = v27;
  *(result + 2) = v27;
  *(result + 3) = v27;
  *result = v27;
  *(result + 1) = v27;
  if (*(a1 + 240) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v28 = v10 + ~v14;
  v7[1] = result;
  v29 = *v7;
  if (v28)
  {
    v30 = v29 + 24 * v14 + 24;
    v31 = v30 + 24 * v28;
    v32 = result;
    do
    {
      *v32 = *v30;
      *(v32 + 8) = *(v30 + 8);
      v30 += 24;
      v32 += 24;
    }

    while (v30 != v31);
    v29 = *v7;
  }

  v33 = *(v29 + 240);
  if ((v33 & 0x80000000) == 0)
  {
    if (result[240] < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove(result + 168, (v29 + 8 * v14 + 176), 8 * v28 + 8);
    v29 = *v7;
    LOBYTE(v33) = *(*v7 + 240);
  }

  *(v29 + 240) = v33 + ~v28;
  v34 = v25[240] + v28;
  v25[240] = v34;
  if (v34 >= 0)
  {
    v35 = 7;
  }

  else
  {
    v35 = 10;
  }

  if ((v34 & 0x7F) == v35 || ((v36 = *(v29 + 240), v37 = v36, v38 = v36 & 0x7F, v37 >= 0) ? (v39 = 7) : (v39 = 10), v38 == v39))
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  return result;
}

uint64_t lsl::CRC32c::CRC32c(uint64_t this)
{
  *this = &lsl::sCRC32cSW;
  *(this + 8) = -1;
  return this;
}

uint64_t lsl::CRC32c::operator()(unsigned int *a1, uint64_t a2)
{
  result = (*(**a1 + 16))(*a1, a1[2], a2);
  a1[2] = result;
  return result;
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

int8x8_t mach_o::Architecture::Architecture(int8x8_t *this, const mach_header *a2)
{
  result = *&a2->cputype;
  *this = result;
  if ((a2->magic | 0x1000000) == 0xCFFAEDFE)
  {
    result = vrev32_s8(result);
    *this = result;
  }

  return result;
}

int8x8_t mach_o::Architecture::Architecture(int8x8_t *this, const fat_arch *a2)
{
  result = vrev32_s8(*&a2->cputype);
  *this = result;
  return result;
}

uint64_t mach_o::Architecture::byName@<X0>(uint64_t __s1@<X0>, int64_t __n@<X1>, unint64_t *a3@<X8>)
{
  v4 = __s1;
  if (__n > 7)
  {
    if (__n <= 12)
    {
      if (__n != 8)
      {
        if (__n != 9)
        {
          if (__n == 11)
          {
            __s1 = memcmp(__s1, "armv8m.main", 0xBuLL);
            if (!__s1)
            {
LABEL_64:
              v6 = 0x110000000CLL;
              goto LABEL_63;
            }
          }

          goto LABEL_62;
        }

        __s1 = memcmp(__s1, "thumbv7em", 9uLL);
        if (!__s1)
        {
          goto LABEL_42;
        }

LABEL_62:
        v6 = 0;
        goto LABEL_63;
      }

      __s1 = memcmp(__s1, "arm64_32", 8uLL);
      if (!__s1)
      {
        v6 = 0x10200000CLL;
        goto LABEL_63;
      }

      __s1 = memcmp(v4, "thumbv6m", 8uLL);
      if (__s1)
      {
        __s1 = memcmp(v4, "thumbv7k", 8uLL);
        if (__s1)
        {
          __s1 = memcmp(v4, "thumbv7m", 8uLL);
          if (__s1)
          {
            v9 = "thumbv7s";
LABEL_54:
            __s1 = memcmp(v4, v9, __n);
            if (!__s1)
            {
              v6 = 0xB0000000CLL;
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          goto LABEL_76;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    switch(__n)
    {
      case 13:
        __s1 = memcmp(__s1, "arm64e.kernel", 0xDuLL);
        if (!__s1)
        {
          v6 = 0xC00000020100000CLL;
          goto LABEL_63;
        }

        __s1 = memcmp(v4, "thumbv8m.main", 0xDuLL);
        if (!__s1)
        {
          goto LABEL_64;
        }

        if (*v4 != 0x6D312E38766D7261 || *(v4 + 5) != 0x6E69616D2E6D312ELL)
        {
          goto LABEL_62;
        }

        break;
      case 15:
        __s1 = memcmp(__s1, "thumbv8.1m.main", 0xFuLL);
        if (__s1)
        {
          goto LABEL_62;
        }

        break;
      case 16:
        __s1 = memcmp(__s1, "arm64e.kernel.v1", 0x10uLL);
        if (!__s1)
        {
          v6 = 0xC10000020100000CLL;
          goto LABEL_63;
        }

        if (*v4 != 0x6B2E6534366D7261 || v4[1] != 0x32762E6C656E7265)
        {
          goto LABEL_62;
        }

        v6 = 0xC20000020100000CLL;
        goto LABEL_63;
      default:
        goto LABEL_62;
    }

    v6 = 0x130000000CLL;
    goto LABEL_63;
  }

  if (__n <= 4)
  {
    if (__n == 3)
    {
      __s1 = memcmp(__s1, "ppc", 3uLL);
      if (__s1)
      {
        goto LABEL_62;
      }

      v6 = 18;
    }

    else
    {
      if (__n != 4)
      {
        goto LABEL_62;
      }

      __s1 = memcmp(__s1, "i386", 4uLL);
      if (__s1)
      {
        goto LABEL_62;
      }

      v6 = 0x300000007;
    }

    goto LABEL_63;
  }

  if (__n == 5)
  {
    __s1 = memcmp(__s1, "arm64", 5uLL);
    if (!__s1)
    {
      v6 = 16777228;
      goto LABEL_63;
    }

    __s1 = memcmp(v4, "armv6", 5uLL);
    if (!__s1)
    {
      v6 = 0x60000000CLL;
      goto LABEL_63;
    }

    __s1 = memcmp(v4, "armv7", 5uLL);
    if (__s1)
    {
      goto LABEL_62;
    }

    goto LABEL_48;
  }

  if (__n == 6)
  {
    if (*__s1 == 1597388920 && *(__s1 + 4) == 13366)
    {
      v6 = 0x301000007;
      goto LABEL_63;
    }

    __s1 = memcmp(__s1, "arm64e", 6uLL);
    if (!__s1)
    {
      v6 = 0x800000020100000CLL;
      goto LABEL_63;
    }

    __s1 = memcmp(v4, "armv6m", 6uLL);
    if (__s1)
    {
      __s1 = memcmp(v4, "armv7k", 6uLL);
      if (__s1)
      {
        __s1 = memcmp(v4, "armv7m", 6uLL);
        if (__s1)
        {
          v9 = "armv7s";
          goto LABEL_54;
        }

LABEL_76:
        v6 = 0xF0000000CLL;
        goto LABEL_63;
      }

LABEL_73:
      v6 = 0xC0000000CLL;
      goto LABEL_63;
    }

LABEL_66:
    v6 = 0xE0000000CLL;
    goto LABEL_63;
  }

  __s1 = memcmp(__s1, "x86_64h", 7uLL);
  if (!__s1)
  {
    v6 = 0x801000007;
    goto LABEL_63;
  }

  __s1 = memcmp(v4, "armv7em", 7uLL);
  if (!__s1)
  {
LABEL_42:
    v6 = 0x100000000CLL;
    goto LABEL_63;
  }

  __s1 = memcmp(v4, "thumbv7", 7uLL);
  if (!__s1)
  {
LABEL_48:
    v6 = 0x90000000CLL;
    goto LABEL_63;
  }

  __s1 = memcmp(v4, "riscv32", 7uLL);
  if (__s1)
  {
    goto LABEL_62;
  }

  v6 = 24;
LABEL_63:
  *a3 = v6;
  return __s1;
}

BOOL mach_o::Architecture::operator==(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v5 = *a1 != 16777228 || v2 == v3;
  return ((v3 ^ v2) & 0xFFFFFF) == 0 && v5;
}

mach_o::Error *mach_o::Error::Error(mach_o::Error *this, const char *a2, ...)
{
  *this = 0;
  *this = _simple_salloc();
  _simple_vsprintf();
  return this;
}

void mach_o::Error::~Error(mach_o::Error *this)
{
  if (*this)
  {
    _simple_sfree();
  }

  *this = 0;
}

uint64_t mach_o::GradedArchitectures::hasCompatibleSlice(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unsigned int *a5)
{
  if (*(a1 + 12) == 1 && a4 == 0)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  while (!a3)
  {
LABEL_12:
    result = 0;
    if (++v11 >= v7)
    {
      return result;
    }
  }

  v12 = 0;
  v13 = 0;
  while (!mach_o::Architecture::operator==((a2 + 8 * v12), *(*a1 + 8 * v11)))
  {
    v12 = ++v13;
    if (a3 <= v13)
    {
      v7 = *(a1 + 8);
      goto LABEL_12;
    }
  }

  *a5 = v13;
  return 1;
}

BOOL mach_o::GradedArchitectures::isCompatible(uint64_t a1, _DWORD *a2, int a3)
{
  if (*(a1 + 12) == 1 && a3 == 0)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = 0;
  do
  {
    result = mach_o::Architecture::operator==(a2, *(*a1 + 8 * v6));
    if (result)
    {
      break;
    }

    ++v6;
  }

  while (v6 < *(a1 + 8));
  return result;
}

uint64_t ***mach_o::GradedArchitectures::currentLoad(mach_o::GradedArchitectures *this, int a2)
{
  v2 = &mach_o::GradedArchitectures::load_arm64e_osBinaryOnly;
  if (this)
  {
    v2 = &mach_o::GradedArchitectures::load_arm64e_keysOff_osBinaryOnly;
  }

  v3 = &mach_o::GradedArchitectures::load_arm64e;
  if (this)
  {
    v3 = &mach_o::GradedArchitectures::load_arm64e_keysOff;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

char *mach_o::LinkedDylibAttributes::toString(char *this, char *__dst)
{
  v3 = this;
  *__dst = 0;
  v4 = *this;
  if (*this)
  {
    strcpy(__dst, "weak-link");
    v4 = *this;
    if ((*this & 4) == 0)
    {
      goto LABEL_6;
    }

    strlcat(__dst, ",", 0x40uLL);
  }

  else if ((*this & 4) == 0)
  {
    goto LABEL_6;
  }

  this = strlcat(__dst, "upward", 0x40uLL);
  v4 = *v3;
LABEL_6:
  if ((v4 & 8) != 0)
  {
    if (*__dst)
    {
      strlcat(__dst, ",", 0x40uLL);
    }

    this = strlcat(__dst, "delay-init", 0x40uLL);
    v4 = *v3;
  }

  if ((v4 & 2) != 0)
  {
    if (*__dst)
    {
      strlcat(__dst, ",", 0x40uLL);
    }

    return strlcat(__dst, "re-export", 0x40uLL);
  }

  return this;
}

BOOL mach_o::Header::uses16KPages(mach_o::Header *this)
{
  v1 = *(this + 1);
  if (v1 == 33554444 || v1 == 16777228)
  {
    return 1;
  }

  if (v1 == 12)
  {
    return *(this + 2) == 12;
  }

  return 0;
}

BOOL mach_o::Header::isArch(mach_header *this, const char *a2)
{
  mach_o::Architecture::Architecture(&v5, this);
  v3 = mach_o::Architecture::name(&v5);
  return strcmp(a2, v3) == 0;
}

uint64_t mach_o::Header::isDyldManaged(mach_o::Header *this)
{
  v1 = *(this + 3);
  if (v1 == 8 || v1 == 6)
  {
    return 1;
  }

  if (v1 == 2)
  {
    return (*(this + 24) >> 2) & 1;
  }

  return 0;
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
  v4[3] = &unk_1EEE9C740;
  v5 = a2;
  v4[4] = &v6;
  mach_o::Header::forEachLoadCommand(this, v4, v10);
  mach_o::Error::~Error(v10);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

_DWORD *mach_o::Header::isMachO(_DWORD *result, unint64_t a2)
{
  if (a2 < 0x1C || !result || *result >> 1 != 2138504551)
  {
    return 0;
  }

  return result;
}

BOOL mach_o::Header::mayHaveTextFixups(mach_o::Header *this)
{
  v1 = *(this + 1);
  if (v1 == 7)
  {
    return 1;
  }

  return v1 == 16777223 && *(this + 3) == 11;
}

void mach_o::Header::platformAndVersions(mach_o::Header *this@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4802000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v12 = 0;
  *&v3 = 0x1000000010000;
  *(&v3 + 1) = 0x1000000010000;
  v13 = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK6mach_o6Header19platformAndVersionsEv_block_invoke;
  v5[3] = &unk_1EEE9C5B0;
  v5[4] = &v6;
  mach_o::Header::forEachPlatformLoadCommand(this, v5);
  v4 = v7;
  *a2 = v7[5];
  *(a2 + 8) = *(v4 + 12);
  *(a2 + 16) = *(v4 + 7);
  _Block_object_dispose(&v6, 8);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
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
  v3[3] = &unk_1EEE9C768;
  v3[5] = &v4;
  v3[6] = a1;
  v3[4] = a2;
  mach_o::Header::forEachLoadCommand(a1, v3, v8);
  mach_o::Error::~Error(v8);
  if ((v5[3] & 1) == 0 && (gHeaderAddImplicitPlatform & 1) == 0 && *(a1 + 3) == 2)
  {
    mach_o::Header::hasLoadCommand(a1, 14);
  }

  _Block_object_dispose(&v4, 8);
}

void ___ZNK6mach_o6Header19platformAndVersionsEv_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a3;
  v8 = a4;
  v9 = 0x1000000010000;
  mach_o::PlatformAndVersions::zip((v4 + 40), &v5, v10);
  mach_o::Error::~Error(v10);
}

void mach_o::Header::validSemanticsPlatform(mach_o::Header *this@<X0>, mach_o::Error *a2@<X8>)
{
  if (*(this + 3) == 12)
  {
    *a2 = 0;
    return;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x4802000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v19 = 0;
  *&v4 = 0x1000000010000;
  *(&v4 + 1) = 0x1000000010000;
  v20 = v4;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__20;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header22validSemanticsPlatformEv_block_invoke;
  v6[3] = &unk_1EEE9C5D8;
  v6[4] = &v7;
  v6[5] = &v13;
  mach_o::Header::forEachPlatformLoadCommand(this, v6);
  if (!v8[5])
  {
    if (mach_o::Platform::empty((v14 + 5)) && gHeaderAllowEmptyPlatform == 1)
    {
      goto LABEL_9;
    }

    v5 = *(this + 3);
    if (v5 == 2)
    {
      if ((mach_o::Header::hasLoadCommand(this, 14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v5 == 5)
    {
LABEL_9:
      *a2 = 0;
      goto LABEL_12;
    }

    mach_o::Platform::valid((v14 + 5), a2);
    goto LABEL_12;
  }

  mach_o::Error::Error(a2, v8 + 5);
LABEL_12:
  _Block_object_dispose(&v7, 8);
  mach_o::Error::~Error(&v12);
  _Block_object_dispose(&v13, 8);
}

void ___ZNK6mach_o6Header22validSemanticsPlatformEv_block_invoke(uint64_t a1, mach_o::Platform *this, int a3, int a4)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    mach_o::Platform::valid(this, &v10);
    if (v10)
    {
      mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v10);
      v8 = &v10;
    }

    else
    {
      mach_o::Error::~Error(&v10);
      v9 = *(*(a1 + 40) + 8);
      v10 = *this;
      v11 = *(this + 2);
      v12 = a3;
      v13 = a4;
      v14 = 0x1000000010000;
      mach_o::PlatformAndVersions::zip((v9 + 40), &v10, &v15);
      mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v15);
      v8 = &v15;
    }

    mach_o::Error::~Error(v8);
  }
}

uint64_t mach_o::Header::isStaticExecutable(mach_o::Header *this)
{
  if (*(this + 3) == 2)
  {
    return mach_o::Header::hasLoadCommand(this, 14) ^ 1;
  }

  else
  {
    return 0;
  }
}

void mach_o::Header::valid(mach_o::Header *this@<X0>, unint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  if (a2 <= 0x1B)
  {
    mach_o::Error::Error(a3, "file is too small (length=%llu)", a2);
    return;
  }

  if (*this >> 1 == 2138504551)
  {
    mach_o::Header::validStructureLoadCommands(this, a2, a3);
    if (!*a3)
    {
      mach_o::Error::~Error(a3);
      mach_o::Header::validSemanticsPlatform(this, a3);
      if (!*a3)
      {
        mach_o::Error::~Error(a3);
        mach_o::Architecture::Architecture(&v7, this);
        mach_o::Header::platformAndVersions(this, v6);
        mach_o::Policy::Policy(v8, &v7, v6, *(this + 3), 0, 0, 0);
        mach_o::Header::validSemanticsUUID(this, v8, a3);
        if (!*a3)
        {
          mach_o::Error::~Error(a3);
          mach_o::Header::validSemanticsInstallName(this, a3);
          if (!*a3)
          {
            mach_o::Error::~Error(a3);
            mach_o::Header::validSemanticsLinkedDylibs(this, v8, a3);
            if (!*a3)
            {
              mach_o::Error::~Error(a3);
              mach_o::Header::validSemanticsRPath(this, v8, a3);
              if (!*a3)
              {
                mach_o::Error::~Error(a3);
                mach_o::Header::validSemanticsSegments(this, v8, a2, a3);
                if (!*a3)
                {
                  mach_o::Error::~Error(a3);
                  mach_o::Header::validSemanticsLinkerOptions(this, a3);
                  if (!*a3)
                  {
                    mach_o::Error::~Error(a3);
                    if (*(this + 3) == 2)
                    {
                      mach_o::Header::validSemanticsMain(this, v8, a3);
                      if (*a3)
                      {
                        return;
                      }

                      mach_o::Error::~Error(a3);
                    }

                    *a3 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {

    mach_o::Error::Error(a3, "not a mach-o file (start is no MH_MAGIC[_64])");
  }
}

void mach_o::Header::validStructureLoadCommands(mach_o::Header *this@<X0>, unint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  if (*this == -17958193)
  {
    v4 = 32;
  }

  else
  {
    v4 = 28;
  }

  if ((v4 + *(this + 5)) <= a2)
  {
    v5 = *(this + 3);
    if (v5 > 0xC || ((1 << v5) & 0x1BE6) == 0)
    {
      v7 = *(this + 3);
      mach_o::Error::Error(a3, "unknown filetype %d");
    }

    else
    {
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2000000000;
      v16 = 1;
      v9 = 0;
      v10 = &v9;
      v11 = 0x3002000000;
      v12 = __Block_byref_object_copy__19;
      v13 = __Block_byref_object_dispose__20;
      v14 = 0;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZNK6mach_o6Header26validStructureLoadCommandsEy_block_invoke;
      v8[3] = &unk_1EEE9C600;
      v8[4] = &v9;
      v8[5] = v15;
      mach_o::Header::forEachLoadCommand(this, v8, a3);
      if (!*a3)
      {
        mach_o::Error::~Error(a3);
        if (v10[5])
        {
          mach_o::Error::Error(a3, v10 + 5);
        }

        else
        {
          *a3 = 0;
        }
      }

      _Block_object_dispose(&v9, 8);
      mach_o::Error::~Error(&v14);
      _Block_object_dispose(v15, 8);
    }
  }

  else
  {
    mach_o::Error::Error(a3, "load commands length (%llu) exceeds length of file (%llu)");
  }
}