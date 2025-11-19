uint64_t lsl::Vector<dyld_aot_image_info>::insert<std::__wrap_iter<dyld_aot_image_info const*>>(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a2 - *(a1 + 8);
  v8 = a4 - a3;
  v9 = 0x6DB6DB6DB6DB6DB7 * ((a4 - a3) >> 3);
  lsl::Vector<dyld_aot_image_info>::reserve(a1, *(a1 + 16) + v9);
  v10 = 56 * *(a1 + 16);
  if (v10 != v7)
  {
    memmove((*(a1 + 8) + v8 + v7), (*(a1 + 8) + v7), v10 - v7);
  }

  if (a4 != a3)
  {
    memmove((*(a1 + 8) + v7), a3, v8);
  }

  v11 = *(a1 + 8);
  *(a1 + 16) += v9;
  return v11 + v7;
}

uint64_t dyld4::ExternallyViewableState::removeRosettaImages(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  *(v3 + 328) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = *a2 + 8 * v4;
    do
    {
      v7 = *(a1 + 56);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = *(v7 + 8);
        v10 = 56 * v8 - 56;
        while (v9[1] != *v5)
        {
          v10 -= 56;
          v9 += 7;
          if (v10 == -56)
          {
            goto LABEL_11;
          }
        }

        if (v10)
        {
          memmove(v9, v9 + 7, v10);
          v8 = *(v7 + 16);
        }

        *(v7 + 16) = v8 - 1;
      }

LABEL_11:
      ++v5;
    }

    while (v5 != v6);
    v3 = *(a1 + 32);
  }

  *(v3 + 324) = *(*(a1 + 56) + 16);
  result = mach_absolute_time();
  v12 = *(a1 + 32);
  *(v12 + 328) = *(*(a1 + 56) + 8);
  *(v12 + 336) = result;
  return result;
}

BOOL dyld4::ExternallyViewableState::completeAllImageInfoTransition(dyld4::ExternallyViewableState *this, lsl::Allocator *a2, const dyld3::MachOFile *a3)
{
  v3 = sProcessInfo;
  v4 = *(&stru_20.fileoff + sProcessInfo);
  *(&stru_20.fileoff + sProcessInfo) = 0;
  v5 = *(&stru_108.offset + v3);
  if (!v5)
  {
    sProcessInfo = *(v4 + 32);
  }

  return v5 != 0;
}

void dyld4::setExternallyViewableStateToTerminated(dyld4 *this, const char *a2)
{
  if (dyld4::sExternallyViewableState)
  {
    v2 = lsl::MemoryManager::memoryManager(this);
    v3 = *(v2 + 48);
    if (v3 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v3))
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v10 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v10 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v11 = MEMORY[0xFFFFFC0D0];
            if (v11 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v12 = *(v2 + 48);
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 0x40000000;
              v22[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld438setExternallyViewableStateToTerminatedEPKcE3__0EEvT__block_invoke;
              v22[3] = &__block_descriptor_tmp_47_0;
              lsl::ProtectedStack::withNestedProtectedStack(v12, v22, v4, v5, v6, v7, v8, v9, v21);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v13 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v13 & 0xFE) == 2)
                  {
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v14 = MEMORY[0xFFFFFC0D8];
                    if (v14 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_38:
      __break(1u);
      return;
    }

    if (*(v2 + 33) == 1)
    {
      if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_38;
      }

      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        if ((dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating & 1) == 0)
        {
          dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating = 1;
          dyld4::ExternallyViewableState::setDyldState(dyld4::sExternallyViewableState, 96);
        }
      }

      else
      {
        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_38;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_38;
        }

        v15 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v15 & 0xFE) != 2)
        {
          goto LABEL_38;
        }

        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
        __isb(0xFu);
        v16 = MEMORY[0xFFFFFC0D0];
        if (v16 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_38;
        }

        if ((dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating & 1) == 0)
        {
          dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating = 1;
          dyld4::ExternallyViewableState::setDyldState(dyld4::sExternallyViewableState, 96);
        }

        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_38;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_38;
        }

        v17 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v17 & 0xFE) != 2)
        {
          goto LABEL_38;
        }

        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v18 = MEMORY[0xFFFFFC0D8];
        if (v18 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      lsl::MemoryManager::lockGuard(v2, v22);
      v19 = *(v2 + 24);
      if (!v19)
      {
        lsl::MemoryManager::writeProtect(v2, 0);
        v19 = *(v2 + 24);
      }

      *(v2 + 24) = v19 + 1;
      lsl::Lock::unlock(v22[0]);
      if ((dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating & 1) == 0)
      {
        dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating = 1;
        dyld4::ExternallyViewableState::setDyldState(dyld4::sExternallyViewableState, 96);
      }

      lsl::MemoryManager::lockGuard(v2, v22);
      v20 = *(v2 + 24) - 1;
      *(v2 + 24) = v20;
      if (!v20)
      {
        lsl::MemoryManager::writeProtect(v2, 1);
      }

      lsl::Lock::unlock(v22[0]);
    }
  }
}

uint64_t lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::deallocate(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 8 * (v4 + 1);
    v6 = (a1 + 168);
    do
    {
      v7 = *v6++;
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::deallocate(v7, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return lsl::Allocator::free(a2, a1);
}

uint64_t lsl::Vector<dyld_aot_image_info>::reserve(uint64_t result, unint64_t a2)
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

    return lsl::Vector<dyld_aot_image_info>::reserveExact(result, v2);
  }

  return result;
}

uint64_t lsl::Vector<dyld_aot_image_info>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 56 * a2);
    if ((result & 1) == 0)
    {
      result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 56 * a2);
      v4 = result;
      if (*(v3 + 16))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = result + v5;
          v8 = (*(v3 + 8) + v5);
          v9 = *v8;
          v10 = v8[1];
          v11 = v8[2];
          *(v7 + 48) = *(v8 + 6);
          *(v7 + 16) = v10;
          *(v7 + 32) = v11;
          *v7 = v9;
          ++v6;
          v12 = *(v3 + 16);
          v5 += 56;
        }

        while (v12 > v6);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v3 + 8);
      if (v13)
      {
        result = lsl::Allocator::free(*v3, v13);
        v12 = *(v3 + 16);
      }

      if (v12 >= a2)
      {
        v14 = a2;
      }

      else
      {
        v14 = v12;
      }

      *(v3 + 8) = v4;
      *(v3 + 16) = v14;
    }

    *(v3 + 24) = a2;
  }

  return result;
}

void ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld438setExternallyViewableStateToTerminatedEPKcE3__0EEvT__block_invoke()
{
  if ((dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating & 1) == 0)
  {
    dyld4::setExternallyViewableStateToTerminated(char const*)::$_0::operator() const(void)::sAlreadyTerminating = 1;
    dyld4::ExternallyViewableState::setDyldState(dyld4::sExternallyViewableState, 96);
  }
}

int fprintf(FILE *a1, const char *a2, ...)
{
  va_start(va, a2);
  _simple_vdprintf(2, a2, va);
  return 0;
}

uint64_t DyldSharedCache::numSubCaches(DyldSharedCache *this)
{
  if (*(this + 4) >= 0x18Du)
  {
    return *(this + 99);
  }

  else
  {
    return 0;
  }
}

uint64_t DyldSharedCache::forEachPrewarmingEntry(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 >= 0x221)
  {
    v3 = result;
    v4 = *(result + 536);
    if (*(result + v4) == 1)
    {
      v5 = *(result + v4 + 4);
      if (v5)
      {
        v7 = *(result + v2);
        v8 = 8 * v5;
        v9 = (v4 + result + 8);
        do
        {
          v10 = *v9++;
          result = (*(a2 + 16))(a2, v3 + (v10 & 0xFFFFFFFFFFLL), (v10 & 0xFFFFFFFFFFLL) + v7, (v10 >> 26) & 0xFFFFC000);
          v8 -= 8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t DyldSharedCache::forEachRegion(uint64_t a1, uint64_t a2)
{
  result = _platform_strncmp(a1, "dyld_v1", 7uLL);
  if (!result)
  {
    v5 = *(a1 + 16);
    if (v5 <= 0x400)
    {
      v6 = *(a1 + 20);
      if (v6 <= 0x14)
      {
        if (v5 > 0x138)
        {
          if (v6)
          {
            v10 = a1 + *(a1 + 312);
            v11 = v10 + 56 * v6;
            v12 = a1 - *v10;
            do
            {
              v13[0] = 0;
              result = (*(a2 + 16))(a2, v12 + *v10, *v10, *(v10 + 8), *(v10 + 52), *(v10 + 48), *(v10 + 40), *(v10 + 16), v13);
              if (v13[0])
              {
                break;
              }

              v10 += 56;
            }

            while (v10 < v11);
          }
        }

        else if (v6)
        {
          v7 = a1 + v5 + 32 * v6;
          v8 = v5 + a1 + 32;
          do
          {
            v13[1] = 0;
            result = (*(a2 + 16))(a2, a1 + *(v8 - 16), *(v8 - 32), *(v8 - 24), *(v8 - 4), *(v8 - 8), 0);
            v9 = v8 >= v7;
            v8 += 32;
          }

          while (!v9);
        }
      }
    }
  }

  return result;
}

unsigned int *DyldSharedCache::forEachDylib(unsigned int *result, uint64_t a2)
{
  v4 = (result + result[4]);
  if (!v4[2])
  {
    v14 = v2;
    v15 = v3;
    v5 = result;
    if (result[113])
    {
      v7 = 0;
      v8 = *v4;
      v9 = result + result[112] + 16;
      do
      {
        v10 = *(v9 - 8);
        v11 = *(v9 - 16) - v8;
        v12 = *(v9 + 8);
        v13 = 0;
        result = (*(a2 + 16))(a2, v5 + v11, v5 + v12, v7, *v9, v10, &v13);
        if (v13)
        {
          break;
        }

        v9 += 32;
        ++v7;
      }

      while (v7 < v5[113]);
    }
  }

  return result;
}

uint64_t DyldSharedCache::getIndexedImageEntry(DyldSharedCache *this, int a2)
{
  v2 = *(this + 4);
  v3 = 24;
  if (v2 > 0x1C3)
  {
    v3 = 448;
  }

  return this + *(this + 32 * a2 + *(this + v3)) - *(this + v2);
}

uint64_t DyldSharedCache::getImageFromPath(DyldSharedCache *this, const char *a2)
{
  v3 = *(this + 4);
  v4 = 24;
  if (v3 > 0x1C3)
  {
    v4 = 448;
  }

  v5 = *(this + v4);
  v7 = 0;
  if (DyldSharedCache::hasImagePath(this, a2, &v7))
  {
    return this + *(this + 32 * v7 + v5) - *(this + v3);
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZNK15DyldSharedCache10mappedSizeEv_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(result + 32) + 8);
  if (!*(v4 + 24))
  {
    *(v4 + 24) = a3;
  }

  v5 = *(*(result + 40) + 8);
  if ((a4 + a3) > *(v5 + 24))
  {
    *(v5 + 24) = a4 + a3;
  }

  return result;
}

mach_o::Header *DyldSharedCache::oldObjcOpt(DyldSharedCache *this)
{
  v14 = 0;
  if (!DyldSharedCache::hasImagePath(this, "/usr/lib/libobjc.A.dylib", &v14))
  {
    return 0;
  }

  v2 = *(this + 4);
  v3 = 24;
  if (v2 > 0x1C3)
  {
    v3 = 448;
  }

  v4 = this + *(this + 32 * v14 + *(this + v3));
  v5 = *(this + v2);
  v6 = (v4 - v5);
  if (v4 != v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZNK15DyldSharedCache10oldObjcOptEv_block_invoke;
    v9[3] = &unk_A33C0;
    v9[4] = &v10;
    v9[5] = mach_o::Header::getSlide(v6);
    mach_o::Header::forEachSection(v6, v9);
    v7 = v11[3];
    if (v7)
    {
      if ((*v7 - 15) >= 2)
      {
        v6 = 0;
      }

      else
      {
        v6 = v11[3];
      }
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

uint64_t ___ZNK15DyldSharedCache10oldObjcOptEv_block_invoke(uint64_t result, void *a2)
{
  if (a2[3] == 6)
  {
    v2 = a2[2];
    v3 = *v2;
    v4 = *(v2 + 2);
    v5 = v3 == 1163157343 && v4 == 21592;
    v6 = !v5;
    if (!v6 && a2[1] == 13 && **a2 == 0x6F5F636A626F5F5FLL && *(*a2 + 5) == 0x6F725F74706F5F63)
    {
      *(*(*(result + 32) + 8) + 24) = *(result + 40) + a2[7];
    }
  }

  return result;
}

uint64_t DyldSharedCache::patchInfoVersion(DyldSharedCache *this)
{
  v1 = *(this + 4);
  if (v1 >= 0x181)
  {
    return *(this + *(this + 19) - *(this + v1));
  }

  else
  {
    return 1;
  }
}

uint64_t DyldSharedCache::forEachPatchableGOTUseOfExport(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(result + 152);
  if (v6)
  {
    v7 = *(result + 16);
    if (v7 >= 0x181)
    {
      v8 = (v6 + result - *(result + v7));
      if (*v8 != 1)
      {
        v9[2] = v4;
        v9[3] = v5;
        v9[0] = v8;
        v9[1] = v6;
        return PatchTable::forEachPatchableGOTUseOfExport(v9, a2, a3, a4);
      }
    }
  }

  return result;
}

mach_o::Header *DyldSharedCache::forEachPatchableUseOfExport(mach_o::Header *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(result + 19);
  if (v4)
  {
    v8 = result;
    v9 = *(result + 4);
    if (v9 > 0x180)
    {
      v10 = *(result + v4 - *(result + v9));
      DyldSharedCache::forEachPatchableGOTUseOfExport(result, a2, a3, a4);
      if (v10 != 1)
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 0x40000000;
        v37[2] = ___ZNK15DyldSharedCache27forEachPatchableUseOfExportEjjU13block_pointerFvyN5dyld39MachOFile15PointerMetaDataEybE_block_invoke;
        v37[3] = &__block_descriptor_tmp_23_1;
        v37[4] = v8;
        v32 = *(v8 + 19);
        v33 = *(v8 + *(v8 + 4));
        v36[0] = v8 + v32 - v33;
        v36[1] = v32;
        return PatchTable::forEachPatchableCacheUseOfExport(v36, a2, a3, v33, v37, a4);
      }
    }

    else
    {
      DyldSharedCache::forEachPatchableGOTUseOfExport(result, a2, a3, a4);
    }

    v11 = *(v8 + 4);
    v12 = 24;
    if (v11 > 0x1C3)
    {
      v12 = 448;
    }

    v13 = v8 + *(v8 + 32 * a2 + *(v8 + v12));
    v14 = *(v8 + v11);
    result = (v13 - v14);
    if (v13 != v14)
    {
      v15 = *(v8 + v11);
      v16 = a2;
      result = mach_o::Header::preferredLoadAddress(result);
      v17 = *(v8 + *(v8 + 4));
      v18 = (v8 + *(v8 + 19) - v17);
      if (v18[1] >= v16)
      {
        v19 = v8 - v17;
        v20 = (v8 + 8 * v16 + *v18 - v17);
        v21 = v20[1];
        if (v18[3] >= (v21 + *v20))
        {
          if (v21)
          {
            v22 = 0;
            v23 = result - v15 + a3;
            v24 = &v19[v18[2]];
            v34 = &v19[v18[4]];
            v35 = v23;
            do
            {
              v25 = &v24[16 * v22 + 16 * *v20];
              if (*v25 == v23)
              {
                v26 = *(v25 + 2);
                if (v18[5] < (v26 + *(v25 + 1)))
                {
                  return result;
                }

                if (v26)
                {
                  v27 = 0;
                  v28 = v34;
                  do
                  {
                    v29 = &v28[8 * *(v25 + 1)];
                    dyld3::MachOFile::PointerMetaData::PointerMetaData(v36);
                    v30 = *(v29 + 1);
                    v31 = vandq_s8(vshlq_u32(vdupq_n_s32(v30), xmmword_8C9D0), xmmword_8C9E0);
                    *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
                    LODWORD(v36[0]) = v31.i32[0] | v36[0] & 0xF0000000 | v31.i32[1] | HIWORD(v30);
                    result = (*(a4 + 16))(a4, *v29);
                    ++v27;
                    v28 += 8;
                  }

                  while (v27 != *(v25 + 2));
                  v21 = v20[1];
                  v23 = v35;
                }
              }

              ++v22;
            }

            while (v22 != v21);
          }
        }
      }
    }
  }

  return result;
}

mach_o::Header *___ZNK15DyldSharedCache27forEachPatchableUseOfExportEjjU13block_pointerFvyN5dyld39MachOFile15PointerMetaDataEybE_block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = 24;
  if (v3 > 0x1C3)
  {
    v4 = 448;
  }

  v5 = *(v2 + *(v2 + v4) + 32 * a2) + v2;
  v6 = *(v3 + v2);
  result = (v5 - v6);
  if (v5 != v6)
  {
    return mach_o::Header::preferredLoadAddress(result);
  }

  return result;
}

mach_o::Header *DyldSharedCache::forEachPatchableExport(mach_o::Header *result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 19);
  if (v3)
  {
    v5 = result;
    v6 = *(result + 4);
    if (v6 < 0x181 || *(result + v3 - *(result + v6)) == 1)
    {
      v7 = 24;
      if (v6 > 0x1C3)
      {
        v7 = 448;
      }

      v8 = result + *(result + 32 * a2 + *(result + v7));
      v9 = *(result + v6);
      result = (v8 - v9);
      if (v8 != v9)
      {
        v10 = a2;
        result = mach_o::Header::preferredLoadAddress(result);
        v11 = *(v5 + *(v5 + 4));
        v12 = v5 - v11;
        v13 = (v5 + *(v5 + 19) - v11);
        if (v13[1] >= v10)
        {
          v14 = &v12[8 * v10 + *v13];
          v15 = *(v14 + 1);
          if (v13[3] >= (v15 + *v14))
          {
            if (v15)
            {
              v16 = 0;
              v17 = &v12[v13[2]];
              v18 = &v12[v13[6]];
              v19 = v11 - result;
              do
              {
                v20 = &v17[16 * *v14];
                v21 = *(v20 + 3);
                if (v13[7] <= v21)
                {
                  v22 = &unk_91735;
                }

                else
                {
                  v22 = &v18[v21];
                }

                result = (*(a3 + 16))(a3, (*v20 + v19), v22, 0);
                ++v16;
                v17 += 16;
              }

              while (v16 != *(v14 + 1));
            }
          }
        }
      }
    }

    else
    {
      v23[0] = result + v3 - *(result + v6);
      v23[1] = v3;
      return PatchTable::forEachPatchableExport(v23, a2, a3);
    }
  }

  return result;
}

BOOL DyldSharedCache::shouldPatchClientOfImage(DyldSharedCache *this, unsigned int a2, int a3)
{
  v5 = *(this + 19);
  if (!v5)
  {
    return 0;
  }

  v6 = *(this + 4);
  if (v6 < 0x181)
  {
    return 0;
  }

  v7 = (this + v5 - *(this + v6));
  if (*v7 == 1)
  {
    return 0;
  }

  v9[2] = v3;
  v9[3] = v4;
  v9[0] = v7;
  v9[1] = v5;
  return PatchTable::imageHasClient(v9, a2, a3);
}

void DyldSharedCache::forEachPatchableUseOfExportInImage(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 152);
  if (v5)
  {
    v9 = *(a1 + 16);
    if (v9 < 0x181 || *(v5 + a1 - *(a1 + v9)) == 1)
    {
      v10 = 24;
      if (v9 > 0x1C3)
      {
        v10 = 448;
      }

      v11 = *(a1 + *(a1 + v10) + 32 * a2) + a1;
      v12 = *(v9 + a1);
      if (v11 != v12)
      {
        v13 = *(a1 + v9);
        v14 = a2;
        Address = mach_o::Header::preferredLoadAddress((v11 - v12));
        v16 = *(a1 + *(a1 + 16));
        v17 = (*(a1 + 152) + a1 - v16);
        if (v17[1] >= v14)
        {
          v18 = a1 - v16;
          v19 = (a1 - v16 + *v17 + 8 * v14);
          v20 = v19[1];
          if (v17[3] >= (v20 + *v19))
          {
            v55 = 0;
            v56 = &v55;
            v57 = 0x5002000000;
            v58 = __Block_byref_object_copy__6;
            v59 = __Block_byref_object_dispose__6;
            v60 = v65;
            v61 = 8;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v51 = 0;
            v52 = &v51;
            v53 = 0x2000000000;
            v54 = 0;
            v47 = 0;
            v48 = &v47;
            v49 = 0x2000000000;
            v50 = -1;
            if (v20)
            {
              v21 = 0;
              v22 = Address - v13 + a3;
              v23 = v18 + v17[2];
              v24 = v18 + v17[4];
              v42 = v19;
              v43 = v17;
              v41 = v22;
              v40 = v23;
              do
              {
                v25 = (v23 + 16 * v21 + 16 * *v19);
                if (*v25 == v22)
                {
                  v26 = v25[2];
                  if (v17[5] < (v26 + v25[1]))
                  {
                    break;
                  }

                  if (v26)
                  {
                    v27 = 0;
                    do
                    {
                      v28 = (v24 + 8 * v27 + 8 * v25[1]);
                      v29 = v52[3];
                      v30 = v56;
                      if (v29 && (v31 = v56[7]) != 0)
                      {
                        v32 = *v28;
                        v33 = (v56[5] + 8);
                        v34 = 16 * v31;
                        while (*(v33 - 1) > v32 || *v33 <= v32)
                        {
                          v33 += 2;
                          v34 -= 16;
                          if (!v34)
                          {
                            goto LABEL_21;
                          }
                        }
                      }

                      else
                      {
LABEL_21:
                        v52[3] = 0;
                        *(v48 + 6) = -1;
                        v30[7] = 0;
                        v46[0] = _NSConcreteStackBlock;
                        v46[1] = 0x40000000;
                        v46[2] = ___ZNK15DyldSharedCache34forEachPatchableUseOfExportInImageEjjjU13block_pointerFvjN5dyld39MachOFile15PointerMetaDataEybE_block_invoke;
                        v46[3] = &unk_A3430;
                        v46[7] = v13;
                        v46[8] = v28;
                        v46[4] = &v55;
                        v46[5] = &v51;
                        v46[6] = &v47;
                        DyldSharedCache::forEachDylib(a1, v46);
                        v29 = v52[3];
                      }

                      if (!v29)
                      {
                        DyldSharedCache::forEachPatchableUseOfExportInImage();
                      }

                      v35 = *(v48 + 6);
                      if (v35 == -1)
                      {
                        DyldSharedCache::forEachPatchableUseOfExportInImage();
                      }

                      if (!v56[7])
                      {
                        DyldSharedCache::forEachPatchableUseOfExportInImage();
                      }

                      if (v35 == a4)
                      {
                        v36 = v13 + *v28;
                        v37 = v36 - mach_o::Header::preferredLoadAddress(v29);
                        dyld3::MachOFile::PointerMetaData::PointerMetaData(&v45);
                        v38 = v28[1];
                        v39 = vandq_s8(vshlq_u32(vdupq_n_s32(v38), xmmword_8C9D0), xmmword_8C9E0);
                        *v39.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
                        v45 = v39.i32[0] | v45 & 0xF0000000 | v39.i32[1] | HIWORD(v38);
                        (*(a5 + 16))(a5, v37);
                      }

                      ++v27;
                    }

                    while (v27 != v25[2]);
                    v19 = v42;
                    v17 = v43;
                    v20 = v42[1];
                    v22 = v41;
                    v23 = v40;
                  }
                }

                ++v21;
              }

              while (v21 != v20);
            }

            _Block_object_dispose(&v47, 8);
            _Block_object_dispose(&v51, 8);
            _Block_object_dispose(&v55, 8);
            v62 = 0;
            if (v63)
            {
              vm_deallocate(mach_task_self_, v63, v64);
            }
          }
        }
      }
    }

    else
    {
      v65[0] = v5 + a1 - *(a1 + v9);
      v65[1] = v5;
      PatchTable::forEachPatchableUseOfExportInImage(v65, a2, a3, a4, a5);
    }
  }
}

double __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__6(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

void ___ZNK15DyldSharedCache34forEachPatchableUseOfExportInImageEjjjU13block_pointerFvjN5dyld39MachOFile15PointerMetaDataEybE_block_invoke(uint64_t a1, mach_o::Error *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = ___ZNK15DyldSharedCache34forEachPatchableUseOfExportInImageEjjjU13block_pointerFvjN5dyld39MachOFile15PointerMetaDataEybE_block_invoke_2;
  v17[3] = &unk_A3408;
  v11 = *(a1 + 56);
  v17[4] = *(a1 + 32);
  v17[5] = v11;
  mach_o::Header::forEachSegment(a2, v17);
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 56);
  if (v13)
  {
    v14 = **(a1 + 64);
    v15 = (*(v12 + 40) + 8);
    v16 = 16 * v13;
    while (*(v15 - 1) > v14 || *v15 <= v14)
    {
      v15 += 2;
      v16 -= 16;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 48) + 8) + 24) = a4;
    *a7 = 1;
  }

  else
  {
LABEL_6:
    *(v12 + 56) = 0;
  }
}

void *___ZNK15DyldSharedCache34forEachPatchableUseOfExportInImageEjjjU13block_pointerFvjN5dyld39MachOFile15PointerMetaDataEybE_block_invoke_2(void *result, uint64_t a2)
{
  if ((*(a2 + 47) & 2) != 0)
  {
    v2 = *(result + 5);
    v3 = *(*(result + 4) + 8);
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56) + 1;
    if (v7 > v6)
    {
      v8 = *(v3 + 64);
      v9 = *(v3 + 72);
      v10 = 2 * v6;
      if (v10 > v7)
      {
        v7 = v10;
      }

      v11 = (vm_page_size + 16 * v7 - 1) & -vm_page_size;
      *(v3 + 72) = v11;
      v12 = vm_allocate(mach_task_self_, (v3 + 64), v11, 1006632961);
      if (v12)
      {
        ___ZNK15DyldSharedCache34forEachPatchableUseOfExportInImageEjjjU13block_pointerFvjN5dyld39MachOFile15PointerMetaDataEybE_block_invoke_2_cold_1(v17, (v3 + 72), v12);
      }

      result = memmove(*(v3 + 64), *(v3 + 40), 16 * *(v3 + 56));
      v13 = *(v3 + 72) >> 4;
      *(v3 + 40) = *(v3 + 64);
      *(v3 + 48) = v13;
      if (v8)
      {
        result = vm_deallocate(mach_task_self_, v8, v9);
      }
    }

    v14 = *(v3 + 40);
    v15 = *(v3 + 56);
    *(v3 + 56) = v15 + 1;
    v16 = (v14 + 16 * v15);
    *v16 = v5 - v2;
    v16[1] = v5 - v2 + v4;
  }

  return result;
}

uint64_t DyldSharedCache::addressInText(DyldSharedCache *this, uint64_t a2, unsigned int *a3)
{
  v3 = *(this + 18);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(this + *(this + 4)) + a2;
  v6 = this + *(this + 17);
  v7 = &v6[32 * v3];
  while (1)
  {
    v8 = *(v6 + 2);
    if (v8 <= v5 && v5 < v8 + *(v6 + 6))
    {
      break;
    }

    v6 += 32;
    ++v4;
    if (v6 >= v7)
    {
      return 0;
    }
  }

  *a3 = v4;
  return 1;
}

BOOL DyldSharedCache::findMachHeaderImageIndex(DyldSharedCache *this, const mach_header *a2, unsigned int *a3)
{
  v3 = *(this + 4);
  if (v3 <= 0x1C3)
  {
    v4 = 24;
  }

  else
  {
    v4 = 448;
  }

  v5 = 28;
  if (v3 > 0x1C3)
  {
    v5 = 452;
  }

  v6 = *(this + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = a2 - this + *(this + v3);
  v8 = *(this + v4);
  if (*(this + v8) != v7)
  {
    v9 = 0;
    v11 = (this + v8 + 32);
    while (v6 - 1 != v9)
    {
      v12 = *v11;
      v11 += 4;
      ++v9;
      if (v12 == v7)
      {
        result = v9 < v6;
        goto LABEL_13;
      }
    }

    return 0;
  }

  LODWORD(v9) = 0;
  result = 1;
LABEL_13:
  *a3 = v9;
  return result;
}

uint64_t DyldSharedCache::objcOptPtrs(DyldSharedCache *this)
{
  v14 = 0;
  if (!DyldSharedCache::hasImagePath(this, "/usr/lib/libobjc.A.dylib", &v14))
  {
    return 0;
  }

  v2 = *(this + 4);
  v3 = 24;
  if (v2 > 0x1C3)
  {
    v3 = 448;
  }

  v4 = (this + *(this + 32 * v14 + *(this + v3)) - *(this + v2));
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  Slide = mach_o::Header::getSlide(v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK15DyldSharedCache11objcOptPtrsEv_block_invoke;
  v8[3] = &unk_A3458;
  v9 = dyld3::MachOFile::pointerSize(v4);
  v8[4] = &v10;
  v8[5] = Slide;
  mach_o::Header::forEachSection(v4, v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

BOOL ___ZNK15DyldSharedCache11objcOptPtrsEv_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = std::string_view::starts_with[abi:nn200100](a2 + 2, "__DATA");
  if ((result || (result = std::string_view::starts_with[abi:nn200100](a2 + 2, "__AUTH"))) && a2[1] == 15 && **a2 == 0x6F5F636A626F5F5FLL && *(*a2 + 7) == 0x737274705F74706FLL)
  {
    if (a2[8] == *(a1 + 48))
    {
      *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) + a2[7];
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

char *DyldSharedCache::DynamicRegion::make(DyldSharedCache::DynamicRegion *this)
{
  if (this)
  {
    result = mmap(this, 0x4000uLL, 3, 4114, -1, 0);
    if (result == -1)
    {
      return 0;
    }
  }

  else
  {
    address = 0;
    if (vm_allocate(mach_task_self_, &address, 0x4000uLL, 1))
    {
      return 0;
    }

    result = address;
  }

  strcpy(result, "dyld_data    v3");
  return result;
}

uint64_t DyldSharedCache::DynamicRegion::setDyldCacheFileID(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

size_t DyldSharedCache::DynamicRegion::setCachePath(DyldSharedCache::DynamicRegion *this, const char *a2)
{
  if (*(this + 9))
  {
    DyldSharedCache::DynamicRegion::setCachePath();
  }

  if (*(this + 8))
  {
    v3 = 89;
  }

  else
  {
    v3 = 80;
  }

  *(this + 9) = v3;
  v4 = this + v3;

  return strlcpy(v4, a2, 0x4000 - v3);
}

uint64_t DyldSharedCache::DynamicRegion::osCryptexPath(DyldSharedCache::DynamicRegion *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

void DyldSharedCache::fixupDataPages(DyldSharedCache *this@<X0>, uint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  v4 = a3;
  v60 = this;
  v5 = *(this + 79);
  if (v5 >= 2)
  {
    v7 = (this + *(this + 78));
    v8 = &v7[7 * v5];
    v58 = v8;
    v59 = v4;
    while (!v7[4])
    {
LABEL_48:
      v7 += 7;
      if (v7 == v8)
      {
        goto LABEL_52;
      }
    }

    v9 = v60 - *(v60 + *(v60 + 4));
    v10 = &v9[v7[3] - *(v8 - 5) + *(v8 - 7)];
    if (v10)
    {
      v11 = &v9[*v7];
      v12 = *v10;
      if (*v10 == 5)
      {
        v48 = *(v10 + 2);
        if (v48)
        {
          v49 = 0;
          v50 = *(v10 + 1);
          do
          {
            v51 = *&v10[2 * v49 + 24];
            if (v51 != 0xFFFF)
            {
              v52 = &v11[(v50 * v49)];
              v53 = v51 >> 3;
              do
              {
                v52 += v53;
                v54 = *v52;
                v61 = v54;
                v55 = a2 + *(v10 + 2);
                if ((v54 & 0x8000000000000000) != 0)
                {
                  v56 = mach_o::ChainedFixupPointerOnDisk::Cache64e::signPointer(&v61, v52, ((v54 & 0x3FFFFFFFFLL) + v55));
                }

                else
                {
                  v56 = mach_o::ChainedFixupPointerOnDisk::Cache64e::high8(&v61) | ((v54 & 0x3FFFFFFFFLL) + v55);
                }

                v53 = (v54 >> 52) & 0x7FF;
                *v52 = v56;
              }

              while (v53);
              v48 = *(v10 + 2);
            }

            ++v49;
          }

          while (v49 < v48);
        }
      }

      else if (v12 == 3)
      {
        v39 = *(v10 + 2);
        if (v39)
        {
          v40 = 0;
          v41 = *(v10 + 1);
          do
          {
            v42 = *&v10[2 * v40 + 24];
            if (v42 != 0xFFFF)
            {
              v43 = &v11[(v41 * v40)];
              v44 = v42 >> 3;
              do
              {
                v43 += v44;
                v45 = *v43;
                if (*v43 < 0)
                {
                  v47 = *(v10 + 2);
                  v61 = *v43;
                  v46 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(&v61, v43, (a2 + v45 + v47));
                }

                else
                {
                  v61 = *v43;
                  v46 = mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget(&v61) + a2;
                }

                v44 = (v45 >> 51) & 0x7FF;
                *v43 = v46;
              }

              while (v44);
              v39 = *(v10 + 2);
            }

            ++v40;
          }

          while (v40 < v39);
        }
      }

      else
      {
        if (v12 != 2)
        {
          v57 = mach_o::Error::Error(v59, "invalid slide info in cache file");
          if (*v57)
          {
            return;
          }

          goto LABEL_47;
        }

        v13 = *(v10 + 3);
        if (v13)
        {
          v14 = 0;
          v15 = *(v10 + 1);
          v16 = &v10[*(v10 + 2)];
          v17 = &v10[*(v10 + 4)];
          do
          {
            v18 = *&v16[2 * v14];
            if (v18 != 0x4000)
            {
              v19 = &v11[(v15 * v14)];
              v21 = *(v10 + 3);
              v20 = *(v10 + 4);
              v22 = ~v21;
              v23 = __clz(__rbit64(v21)) + 4294967294u;
              if (v18 < 0)
              {
                v31 = v18 & 0x3FFF;
                v32 = v20 + a2;
                do
                {
                  v33 = *&v17[2 * v31];
                  v34 = 4 * (v33 & 0x3FFF);
                  do
                  {
                    v35 = *&v19[v34];
                    v36 = (v35 & v21) >> v23;
                    v37 = v35 & v22;
                    v28 = v37 == 0;
                    v38 = v32 + v37;
                    if (v28)
                    {
                      v38 = 0;
                    }

                    *&v19[v34] = v38;
                    v34 += v36;
                  }

                  while (v36);
                  ++v31;
                }

                while ((v33 & 0x80000000) == 0);
              }

              else
              {
                v24 = 4 * (v18 & 0x3FFF);
                v25 = v20 + a2;
                do
                {
                  v26 = *&v19[v24];
                  v27 = (v26 & v21) >> v23;
                  v29 = v26 & v22;
                  v28 = v29 == 0;
                  v30 = v25 + v29;
                  if (v28)
                  {
                    v30 = 0;
                  }

                  *&v19[v24] = v30;
                  v24 += v27;
                }

                while (v27);
              }
            }

            ++v14;
          }

          while (v14 != v13);
        }
      }
    }

    v57 = v59;
    *v59 = 0;
LABEL_47:
    mach_o::Error::~Error(v57);
    v8 = v58;
    goto LABEL_48;
  }

LABEL_52:
  *v4 = 0;
}

uint64_t objc_visitor::Class::getISA@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X2>, void *a4@<X8>)
{
  v7 = lsl::Allocator::Pool::allocator((a1 + 8));
  metadata_visitor::Visitor::getField(a2, v7, v9);
  return metadata_visitor::Visitor::resolveBindOrRebase(a2, v9, a3, a4);
}

uint64_t objc_visitor::Class::getSuperclassField@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator((a1 + 8));
  v7 = 8;
  if (v5 == 4)
  {
    v7 = 4;
  }

  return metadata_visitor::Visitor::getField(a2, (v6 + v7), a3);
}

uint64_t objc_visitor::Class::isUnfixedBackwardDeployingStableSwift(uint64_t a1, int *a2)
{
  result = objc_visitor::Class::isSwiftLegacy(a1, a2);
  if (result)
  {
    v5 = objc_visitor::Class::swiftClassFlags(a1, a2);
    return (v5 & 0x100000000) != 0 && (v5 & 1) == 0;
  }

  return result;
}

uint64_t objc_visitor::Class::isSwiftLegacy(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = lsl::Allocator::Pool::allocator((a1 + 8));
  v5 = 16;
  if (v3 != 4)
  {
    v5 = 32;
  }

  metadata_visitor::Visitor::getField(a2, (v4 + v5), v10);
  metadata_visitor::Visitor::resolveRebase(a2, v10, v9);
  v6 = metadata_visitor::ResolvedValue::vmAddress(v9);
  if ((v7 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return v6 & 1;
}

uint64_t objc_visitor::Class::swiftClassFlags(uint64_t a1, int *a2)
{
  if ((objc_visitor::Class::isSwiftStable(a1, a2) & 1) == 0 && !objc_visitor::Class::isSwiftLegacy(a1, a2))
  {
    return 0;
  }

  v4 = *a2;
  v5 = lsl::Allocator::Pool::allocator((a1 + 8));
  v6 = 40;
  if (v4 == 4)
  {
    v6 = 20;
  }

  return *(v5 + v6) | 0x100000000;
}

uint64_t objc_visitor::Class::isSwiftStable(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = lsl::Allocator::Pool::allocator((a1 + 8));
  v5 = 16;
  if (v3 != 4)
  {
    v5 = 32;
  }

  metadata_visitor::Visitor::getField(a2, (v4 + v5), v10);
  metadata_visitor::Visitor::resolveRebase(a2, v10, v9);
  v6 = metadata_visitor::ResolvedValue::vmAddress(v9);
  if ((v7 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return (v6 >> 1) & 1;
}

uint64_t objc_visitor::Class::getClassData@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator((a1 + 8));
  v7 = 16;
  if (v5 != 4)
  {
    v7 = 32;
  }

  metadata_visitor::Visitor::getField(a2, (v6 + v7), v16);
  metadata_visitor::Visitor::resolveRebase(a2, v16, &v14);
  result = metadata_visitor::ResolvedValue::vmAddress(&v14);
  if ((v9 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v10 = 4294967292;
  if (*a2 != 4)
  {
    v10 = 0x7FFFFFFFFFF8;
  }

  v11 = v10 & result;
  v12 = v11 - result;
  if (v11 == result)
  {
    *a3 = v14;
    a3[2] = v15;
  }

  else
  {
    v13 = lsl::Allocator::Pool::allocator(&v14);
    return metadata_visitor::Visitor::getField(a2, (v13 + v12), a3);
  }

  return result;
}

uint64_t objc_visitor::Class::getName(uint64_t a1, int *a2)
{
  objc_visitor::Class::getClassData(a1, a2, v9);
  v3 = *a2;
  v4 = lsl::Allocator::Pool::allocator(v9);
  v5 = 16;
  if (v3 != 4)
  {
    v5 = 24;
  }

  metadata_visitor::Visitor::getField(a2, (v4 + v5), v8);
  metadata_visitor::Visitor::resolveRebase(a2, v8, v7);
  return lsl::Allocator::Pool::allocator(v7);
}

uint64_t objc_visitor::Class::getNameVMAddr(uint64_t a1, int *a2)
{
  objc_visitor::Class::getClassData(a1, a2, v9);
  v3 = *a2;
  v4 = lsl::Allocator::Pool::allocator(v9);
  v5 = 16;
  if (v3 != 4)
  {
    v5 = 24;
  }

  metadata_visitor::Visitor::getField(a2, (v4 + v5), v8);
  metadata_visitor::Visitor::resolveRebase(a2, v8, v7);
  return metadata_visitor::ResolvedValue::vmAddress(v7);
}

uint64_t objc_visitor::Class::getBaseMethods@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  objc_visitor::Class::getClassData(a1, a2, v10);
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator(v10);
  v7 = 20;
  if (v5 != 4)
  {
    v7 = 32;
  }

  metadata_visitor::Visitor::getField(a2, (v6 + v7), v9);
  return metadata_visitor::Visitor::resolveOptionalRebase(a2, v9, a3);
}

uint64_t objc_visitor::Category::getInstanceMethods@<X0>(lsl::Allocator::Pool *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator(a1);
  v7 = 8;
  if (v5 != 4)
  {
    v7 = 16;
  }

  metadata_visitor::Visitor::getField(a2, (v6 + v7), v9);
  return metadata_visitor::Visitor::resolveOptionalRebase(a2, v9, a3);
}

uint64_t objc_visitor::Protocol::getISAVMAddr@<X0>(lsl::Allocator::Pool *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = lsl::Allocator::Pool::allocator(a1);
  metadata_visitor::Visitor::getField(a2, v5, v10);
  result = metadata_visitor::Visitor::resolveOptionalRebase(a2, v10, v9);
  if (v9[24] == 1)
  {
    result = metadata_visitor::ResolvedValue::vmAddress(v9);
    *a3 = result;
    *(a3 + 8) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v8;
  return result;
}

uint64_t objc_visitor::Protocol::getName(lsl::Allocator::Pool *a1, int *a2)
{
  v3 = *a2;
  v4 = lsl::Allocator::Pool::allocator(a1);
  v5 = 4;
  if (v3 != 4)
  {
    v5 = 8;
  }

  metadata_visitor::Visitor::getField(a2, (v4 + v5), v8);
  metadata_visitor::Visitor::resolveRebase(a2, v8, v7);
  return lsl::Allocator::Pool::allocator(v7);
}

uint64_t objc_visitor::Protocol::getNameVMAddr(lsl::Allocator::Pool *a1, int *a2)
{
  v3 = *a2;
  v4 = lsl::Allocator::Pool::allocator(a1);
  v5 = 4;
  if (v3 != 4)
  {
    v5 = 8;
  }

  metadata_visitor::Visitor::getField(a2, (v4 + v5), v8);
  metadata_visitor::Visitor::resolveRebase(a2, v8, v7);
  return metadata_visitor::ResolvedValue::vmAddress(v7);
}

_DWORD *objc_visitor::Method::getNameSelRefVMAddr(_DWORD *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    if (v2 == 1)
    {
      objc_visitor::Method::getNameSelRefVMAddr();
    }

    if (v2 == 2)
    {
      objc_visitor::Method::getNameSelRefVMAddr();
    }
  }

  else
  {
    v4 = result;
    v5 = *lsl::Allocator::Pool::allocator((result + 2));
    v6 = metadata_visitor::ResolvedValue::vmAddress((v4 + 2));
    if ((v7 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    metadata_visitor::Visitor::getValueFor(a2, v6 + v5, 1, v8);
    return metadata_visitor::ResolvedValue::vmAddress(v8);
  }

  return result;
}

uint64_t objc_visitor::ProtocolList::numProtocols(lsl::Allocator::Pool *a1, _DWORD *a2)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = lsl::Allocator::Pool::allocator(a1);
  if (!v3)
  {
    objc_visitor::ProtocolList::numProtocols();
  }

  if (*a2 == 4)
  {
    return *v3;
  }

  else
  {
    return *v3;
  }
}

uint64_t objc_visitor::ProtocolList::getProtocolField@<X0>(lsl::Allocator::Pool *a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    objc_visitor::ProtocolList::getProtocolField();
  }

  if (objc_visitor::ProtocolList::numProtocols(a1, a2) <= a3)
  {
    objc_visitor::ProtocolList::getProtocolField();
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = lsl::Allocator::Pool::allocator(a1);
  if (!v8)
  {
    objc_visitor::ProtocolList::getProtocolField();
  }

  if (*a2 == 4)
  {
    v9 = (v8 + 4 * a3 + 4);
  }

  else
  {
    v9 = (v8 + 8 * a3 + 8);
  }

  return metadata_visitor::Visitor::getField(a2, v9, a4);
}

size_t objc_visitor::ProtocolList::dump(lsl::Allocator::Pool *a1, _DWORD *a2)
{
  if (*(a1 + 24))
  {
    v4 = objc_visitor::ProtocolList::numProtocols(a1, a2);
    v5 = __stdoutp;
    v6 = metadata_visitor::ResolvedValue::vmAddress(a1);
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = v6;
    v9 = lsl::Allocator::Pool::allocator(a1);
    result = fprintf(v5, "Protocol list (count %lld): vmAddr 0x%llx at %p\n", v4, v8, v9);
    if (v4)
    {
      v11 = 0;
      while (1)
      {
        objc_visitor::ProtocolList::getProtocolField(a1, a2, v11, v19);
        metadata_visitor::Visitor::resolveRebase(a2, v19, v18);
        v12 = __stdoutp;
        v13 = metadata_visitor::ResolvedValue::vmAddress(v18);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v15 = v13;
        v16 = lsl::Allocator::Pool::allocator(v18);
        result = fprintf(v12, "  Protocol[%lld]: vmAddr 0x%llx at %p\n", v11++, v15, v16);
        if (v4 == v11)
        {
          return result;
        }
      }

LABEL_11:
      std::__throw_bad_optional_access[abi:nn200100]();
    }
  }

  else
  {
    v17 = __stdoutp;

    return fwrite("no value\n", 9uLL, 1uLL, v17);
  }

  return result;
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t objc_visitor::Visitor::forEachClass(unsigned int *a1, int a2, lsl::Allocator::Pool *this, uint64_t a4)
{
  v4 = *(this + 3);
  v5 = *a1;
  v6 = v4 / v5;
  if (v4 % v5)
  {
    objc_visitor::Visitor::forEachClass();
  }

  result = lsl::Allocator::Pool::allocator(this);
  if (v4 >= v5)
  {
    v11 = result;
    v12 = 0;
    v13 = a2 ^ 1;
    do
    {
      while (1)
      {
        metadata_visitor::Visitor::getField(a1, (v11 + v12 * *a1), v27);
        v26 = 0;
        metadata_visitor::Visitor::resolveBindOrRebase(a1, v27, &v26, &v24);
        v22 = v24;
        v23 = v25;
        v21[0] = 0;
        v21[1] = v26;
        v20 = 0;
        result = (*(a4 + 16))(a4, v21, 0, &v20);
        if (((v13 | v20) & 1) == 0)
        {
          break;
        }

        if (++v12 == v6 || v20)
        {
          return result;
        }
      }

      v19 = 0;
      objc_visitor::Class::getISA(v21, a1, &v19, &v17);
      v15 = v17;
      v16 = v18;
      v14[0] = 1;
      v14[1] = v19;
      result = (*(a4 + 16))(a4, v14, 1, &v20);
      ++v12;
    }

    while (v12 != v6 && (v20 & 1) == 0);
  }

  return result;
}

void objc_visitor::Visitor::forEachClass(unsigned int *a1, int a2, uint64_t a3)
{
  objc_visitor::Visitor::findSection(a1, objc_visitor::Visitor::findObjCDataSection(char const*)const::objcDataSegments, 3, "__objc_classlist", v6);
  if (v6[32] == 1)
  {
    objc_visitor::Visitor::forEachClass(a1, a2, v6, a3);
  }
}

void objc_visitor::Visitor::forEachClass(unsigned int *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN12objc_visitor7Visitor12forEachClassEU13block_pointerFvRKNS_5ClassERbE_block_invoke;
  v2[3] = &unk_A34A8;
  v2[4] = a2;
  objc_visitor::Visitor::forEachClass(a1, 0, v2);
}

void objc_visitor::Visitor::forEachClassAndMetaClass(unsigned int *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN12objc_visitor7Visitor24forEachClassAndMetaClassEU13block_pointerFvRKNS_5ClassERbE_block_invoke;
  v2[3] = &unk_A34D0;
  v2[4] = a2;
  objc_visitor::Visitor::forEachClass(a1, 1, v2);
}

void objc_visitor::Visitor::forEachCategory(unsigned int *a1, uint64_t a2)
{
  v4 = 0;
  v24 = 256;
  do
  {
    v5 = *(&v24 + v4);
    if (v5)
    {
      v6 = "__objc_catlist2";
    }

    else
    {
      v6 = "__objc_catlist";
    }

    objc_visitor::Visitor::findSection(a1, objc_visitor::Visitor::findObjCDataSection(char const*)const::objcDataSegments, 3, v6, v21);
    if (v23 == 1)
    {
      v7 = v22;
      v8 = *a1;
      v9 = v22 / v8;
      if (v22 % v8)
      {
        objc_visitor::Visitor::forEachCategory();
      }

      v10 = lsl::Allocator::Pool::allocator(v21);
      if (v7 >= v8)
      {
        v11 = v10;
        v12 = 0;
        v13 = v9 - 1;
        do
        {
          metadata_visitor::Visitor::getField(a1, (v11 + v12 * *a1), v20);
          metadata_visitor::Visitor::resolveRebase(a1, v20, &v18);
          v15 = v18;
          v16 = v19;
          v17 = v5;
          v14 = 0;
          (*(a2 + 16))(a2, &v15, &v14);
          if (v13 == v12)
          {
            break;
          }

          ++v12;
        }

        while ((v14 & 1) == 0);
      }
    }

    ++v4;
  }

  while (v4 != 2);
}

void metadata_visitor::SwiftVisitor::forEachProtocolConformance(metadata_visitor::SwiftVisitor *a1, uint64_t a2)
{
  metadata_visitor::SwiftVisitor::getSwiftConformances(a1, v9);
  if (v10)
  {
    v4 = 0;
    v5 = v10 - 1;
    do
    {
      metadata_visitor::SwiftConformanceList::getConformance(v9, a1, v4, v8);
      v7 = 0;
      (*(a2 + 16))(a2, v8, &v7);
      if (v7)
      {
        break;
      }
    }

    while (v5 != v4++);
  }
}

void metadata_visitor::SwiftVisitor::getSwiftConformances(metadata_visitor::SwiftVisitor *this@<X0>, uint64_t a2@<X8>)
{
  metadata_visitor::SwiftVisitor::findSection(this, "__TEXT", "__swift5_proto", &v5);
  if (v8)
  {
    if ((v7 & 3) != 0)
    {
      metadata_visitor::SwiftVisitor::getSwiftConformances();
    }

    v3 = v7 >> 2;
    *a2 = v5;
    *(a2 + 16) = v6;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    LODWORD(v3) = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
}

uint64_t metadata_visitor::SwiftConformanceList::getConformance@<X0>(metadata_visitor::SwiftConformanceList *this@<X0>, const metadata_visitor::Visitor *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v8 = *(lsl::Allocator::Pool::allocator(this) + 4 * a3);
  v9 = metadata_visitor::ResolvedValue::vmAddress(this);
  if ((v10 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return metadata_visitor::Visitor::getValueFor(a2, v8 + 4 * a3 + v9, 1, a4);
}

void metadata_visitor::SwiftVisitor::findSection(metadata_visitor::SwiftVisitor *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x5002000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK16metadata_visitor12SwiftVisitor11findSectionEPKcS2__block_invoke;
  v8[3] = &unk_A3520;
  v8[6] = a2;
  v8[7] = a3;
  v8[4] = &v9;
  v8[5] = this;
  mach_o::Header::forEachSection(v5, v8);
  v6 = v10;
  v7 = *(v10 + 7);
  *a4 = *(v10 + 5);
  *(a4 + 16) = v7;
  *(a4 + 32) = v6[9];
  _Block_object_dispose(&v9, 8);
}

__n128 __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

double ___ZNK16metadata_visitor12SwiftVisitor11findSectionEPKcS2__block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a3 + 24);
  v9 = a1[5];
  v8 = a1[6];
  if (v7 == _platform_strlen(v8) && !_platform_memcmp(*(a3 + 16), v8, v7))
  {
    v11 = *(a3 + 8);
    v12 = a1[7];
    if (v11 == _platform_strlen(v12) && !_platform_memcmp(*a3, v12, v11))
    {
      v13 = *(a3 + 56);
      Slide = dyld3::MachOLoaded::getSlide(*(v9 + 8));
      metadata_visitor::ResolvedValue::ResolvedValue(&v17, Slide + v13, *(a3 + 56), 1);
      v15 = *(a1[4] + 8);
      v16 = v18;
      result = *&v17;
      *(v15 + 40) = v17;
      *(v15 + 56) = v16;
      *(v15 + 64) = 0;
      *(v15 + 72) = 1;
      *(*(a1[4] + 8) + 64) = *(a3 + 64);
      *a4 = 1;
    }
  }

  return result;
}

uint64_t metadata_visitor::SwiftConformance::getProtocolPointer@<X0>(metadata_visitor::SwiftConformance *this@<X0>, const metadata_visitor::SwiftVisitor *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = lsl::Allocator::Pool::allocator(this);
  metadata_visitor::Visitor::getField(a2, v5, &v9);
  v7 = v9;
  v8 = v10;
  return metadata_visitor::SwiftConformance::SwiftRelativePointer::getTargetPointer(&v7, a2, a3);
}

uint64_t metadata_visitor::SwiftConformance::SwiftRelativePointer::getTargetPointer@<X0>(metadata_visitor::SwiftConformance::SwiftRelativePointer *this@<X0>, const metadata_visitor::SwiftVisitor *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *lsl::Allocator::Pool::allocator(this);
  v7 = metadata_visitor::ResolvedValue::vmAddress(this);
  if (v6)
  {
    if (v8)
    {
      v9 = 0;
      v6 &= ~1u;
      goto LABEL_6;
    }

LABEL_7:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = 1;
LABEL_6:
  *a3 = v9;
  return metadata_visitor::Visitor::getValueFor(a2, v7 + v6, 1, (a3 + 8));
}

uint64_t metadata_visitor::SwiftConformance::getProtocolConformanceFlags@<X0>(metadata_visitor::SwiftConformance *this@<X0>, const metadata_visitor::SwiftVisitor *a2@<X1>, void *a3@<X8>)
{
  v5 = (lsl::Allocator::Pool::allocator(this) + 12);

  return metadata_visitor::Visitor::getField(a2, v5, a3);
}

double metadata_visitor::SwiftConformance::getTypeRef@<D0>(metadata_visitor::SwiftConformance *this@<X0>, const metadata_visitor::SwiftVisitor *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = lsl::Allocator::Pool::allocator(this);
  metadata_visitor::Visitor::getField(a2, (v6 + 4), &v11);
  v7 = lsl::Allocator::Pool::allocator(this);
  metadata_visitor::Visitor::getField(a2, (v7 + 12), v10);
  v8 = (*lsl::Allocator::Pool::allocator(v10) >> 3) & 7;
  result = *&v11;
  *a3 = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v8;
  return result;
}

uint64_t metadata_visitor::SwiftConformance::SwiftTypeRefPointer::getClassName(metadata_visitor::SwiftConformance::SwiftTypeRefPointer *this, const metadata_visitor::SwiftVisitor *a2)
{
  if (*(this + 6) != 2)
  {
    metadata_visitor::SwiftConformance::SwiftTypeRefPointer::getClassName();
  }

  v4 = *lsl::Allocator::Pool::allocator(this);
  v5 = metadata_visitor::ResolvedValue::vmAddress(this);
  if ((v6 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  metadata_visitor::Visitor::getValueFor(a2, v5 + v4, 1, v8);
  return lsl::Allocator::Pool::allocator(v8);
}

metadata_visitor::ResolvedValue *metadata_visitor::SwiftConformance::SwiftTypeRefPointer::getTargetPointer@<X0>(metadata_visitor::ResolvedValue *this@<X0>, const metadata_visitor::SwiftVisitor *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v6 = *(this + 6);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return this;
      }

      goto LABEL_7;
    }

LABEL_9:
    v11 = *lsl::Allocator::Pool::allocator(this);
    v8 = metadata_visitor::ResolvedValue::vmAddress(v4);
    if (v12)
    {
      v10 = 1;
      goto LABEL_11;
    }

LABEL_13:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  if (v6 == 2)
  {
    goto LABEL_9;
  }

  if (v6 != 3)
  {
    return this;
  }

LABEL_7:
  v7 = *lsl::Allocator::Pool::allocator(this);
  v8 = metadata_visitor::ResolvedValue::vmAddress(v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = 0;
  v11 = v7 & 0xFFFFFFFE;
LABEL_11:
  *a3 = v10;
  return metadata_visitor::Visitor::getValueFor(a2, v8 + v11, 1, (a3 + 8));
}

uint64_t metadata_visitor::SwiftConformance::TypeContextDescriptor::getName@<X0>(metadata_visitor::SwiftConformance::TypeContextDescriptor *this@<X0>, const metadata_visitor::SwiftVisitor *a2@<X1>, void *a3@<X8>)
{
  v5 = lsl::Allocator::Pool::allocator(this);
  metadata_visitor::Visitor::getField(a2, (v5 + 8), v10);
  v6 = *lsl::Allocator::Pool::allocator(v10);
  v7 = metadata_visitor::ResolvedValue::vmAddress(v10);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return metadata_visitor::Visitor::getValueFor(a2, v7 + v6, 1, a3);
}

uint64_t dyld3::fstatat(dyld3 *this, const char *a2, stat *a3, stat *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = this;
  while (1)
  {
    result = fstatat64(this, a2, a3, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 35 && *__error() != 4)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(this) = v7;
    a2 = v6;
    a3 = v5;
    LODWORD(a4) = v4;
  }

  return result;
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

        if (_platform_strncmp(v12, "!<arch>", 7uLL))
        {
          Diagnostics::error(a2, "slice is not page aligned");
        }

        else
        {
          Diagnostics::error(a2, "file is static library");
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

uint64_t dyld3::MachOFile::hasOpcodeFixups(dyld3::MachOFile *this)
{
  if (dyld3::MachOFile::hasLoadCommand(this, -2147483614))
  {
    return 1;
  }

  return dyld3::MachOFile::hasLoadCommand(this, 34);
}

uint64_t dyld3::MachOFile::read_sleb128(dyld3::MachOFile *this, const unsigned __int8 ***a2, const unsigned __int8 **a3, const unsigned __int8 *a4)
{
  v4 = *a2;
  if (*a2 == a3)
  {
    v6 = 0;
    v7 = 0;
    v9 = 0;
LABEL_7:
    Diagnostics::error(this, "malformed sleb128");
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -7 * v4 - a3 + 8 * a3;
    while (1)
    {
      v8 = (v4 + 1);
      *a2 = (v4 + 1);
      v9 = *v4;
      v6 |= (v9 & 0x7F) << v5;
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v4 = (v4 + 1);
      if (v8 == a3)
      {
        goto LABEL_7;
      }
    }

    v7 = v5 + 7;
  }

  if (((v7 < 64) & (v9 >> 6)) != 0)
  {
    v10 = -1 << v7;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v6;
}

uint64_t dyld3::MachOFile::dependentDylibCount(dyld3::MachOFile *this, BOOL *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld39MachOFile19dependentDylibCountEPb_block_invoke;
  v5[3] = &unk_A3650;
  v5[4] = &v10;
  v5[5] = &v6;
  dyld3::MachOFile::forEachDependentDylib(this, v5);
  if (a2)
  {
    *a2 = *(v7 + 24);
  }

  v3 = *(v11 + 6);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t ___ZNK5dyld39MachOFile19dependentDylibCountEPb_block_invoke(uint64_t result, uint64_t a2, char a3, char a4, int a5)
{
  ++*(*(*(result + 32) + 8) + 24);
  if ((a3 & 1) != 0 || (a4 & 1) != 0 || a5)
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  return result;
}

uint64_t dyld3::MachOFile::getFixupsLoadCommandFileOffset(dyld3::MachOFile *this)
{
  Diagnostics::Diagnostics(v9);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5dyld39MachOFile30getFixupsLoadCommandFileOffsetEv_block_invoke;
  v4[3] = &unk_A3678;
  v4[4] = &v5;
  v4[5] = this;
  dyld3::MachOFile::forEachLoadCommand(this, v9, v4);
  v2 = 0;
  if (!Diagnostics::hasError(v9))
  {
    v2 = *(v6 + 6);
  }

  _Block_object_dispose(&v5, 8);
  Diagnostics::~Diagnostics(v9);
  return v2;
}

uint64_t ___ZNK5dyld39MachOFile30getFixupsLoadCommandFileOffsetEv_block_invoke(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 == -2147483614 || (v2 != 34 ? (v3 = v2 == -2147483596) : (v3 = 1), v3))
  {
    *(*(*(result + 32) + 8) + 24) = a2 - *(result + 40);
  }

  return result;
}

uint64_t dyld3::MachOFile::hasInitializer(dyld3::MachOFile *this, Diagnostics *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK5dyld39MachOFile14hasInitializerER11Diagnostics_block_invoke;
  v8[3] = &unk_A36A0;
  v8[4] = &v9;
  dyld3::MachOFile::forEachLoadCommand(this, a2, v8);
  if (v10[3] & 1) != 0 || (v7[0] = _NSConcreteStackBlock, v7[1] = 0x40000000, v7[2] = ___ZNK5dyld39MachOFile14hasInitializerER11Diagnostics_block_invoke_2, v7[3] = &unk_A36C8, v7[4] = &v9, dyld3::MachOFile::forEachInitializerPointerSection(this, a2, v7), (v10[3]))
  {
    v4 = 1;
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZNK5dyld39MachOFile14hasInitializerER11Diagnostics_block_invoke_3;
    v6[3] = &unk_A36F0;
    v6[4] = &v9;
    mach_o::Header::forEachSection(this, v6);
    v4 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v4 & 1;
}

uint64_t ___ZNK5dyld39MachOFile14hasInitializerER11Diagnostics_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 26 || *a2 == 17)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZNK5dyld39MachOFile14hasInitializerER11Diagnostics_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

uint64_t ___ZNK5dyld39MachOFile14hasInitializerER11Diagnostics_block_invoke_3(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 44) == 22)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t dyld3::hash_rank_watchOS_dylibs(dyld3 *this, const CS_CodeDirectory *a2)
{
  v2 = 0;
  while (dyld3::hashPriorities_watchOS_dylibs[v2] != *(this + 37))
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  return (v2 + 1);
}

uint64_t dyld3::hash_rank(dyld3 *this, const CS_CodeDirectory *a2)
{
  v2 = 0;
  while (dyld3::hashPriorities[v2] != *(this + 37))
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  return (v2 + 1);
}

uint64_t dyld3::MachOFile::forEachTreatAsWeakDef(uint64_t a1)
{
  for (i = 0; i != 22; ++i)
  {
    result = (*(a1 + 16))(a1, dyld3::sTreatAsWeak[i]);
  }

  return result;
}

size_t ___ZN5dyld3L12getArchNamesERKN6mach_o19GradedArchitecturesEbPc_block_invoke(uint64_t a1, mach_o::Architecture *this)
{
  v3 = *(a1 + 32);
  if (*v3)
  {
    strlcat(*(a1 + 32), "' or '", 0x100uLL);
    v3 = *(a1 + 32);
  }

  v5 = mach_o::Architecture::name(this);

  return strlcat(v3, v5, 0x100uLL);
}

uint64_t dyld3::MachOLoaded::hasExportedSymbol(unsigned int *a1, const unsigned __int8 *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  Diagnostics::Diagnostics(v18);
  ExportedSymbol = dyld3::MachOLoaded::findExportedSymbol(a1, v18, a2, 0, &v14, a3);
  if (ExportedSymbol)
  {
    switch(v14)
    {
      case 2:
        *a4 = ((v15 + v17))();
        *a5 = 1;
        break;
      case 1:
        *a4 = v16;
        *a5 = 0;
        break;
      case 0:
        v11 = v15;
        *a4 = v15 + v16;
        *a5 = 0;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 0x40000000;
        v13[2] = ___ZNK5dyld311MachOLoaded17hasExportedSymbolEPKcU13block_pointerFPKS0_S4_jEPPvPb_block_invoke;
        v13[3] = &__block_descriptor_tmp_35_0;
        v13[4] = dyld3::MachOLoaded::getSlide(v11);
        v13[5] = a4;
        v13[6] = a5;
        dyld3::MachOFile::forEachSection(v15, v13);
        break;
    }
  }

  Diagnostics::~Diagnostics(v18);
  return ExportedSymbol;
}

uint64_t dyld3::MachOLoaded::findExportedSymbol(unsigned int *a1, Diagnostics *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, v48);
  if (Diagnostics::hasError(a2))
  {
    goto LABEL_2;
  }

  if (*(&v48[0] + 1))
  {
    v15 = (*(&v48[0] + 1) + 12);
    v16 = (*(&v48[0] + 1) + 8);
    if (!a1)
    {
LABEL_18:
      *(a5 + 8) = 0;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 0x40000000;
      v34 = v48[3];
      v35 = v48[4];
      v36 = v49;
      v37 = v50;
      v31 = v48[0];
      v32 = v48[1];
      v30[2] = ___ZNK5dyld311MachOLoaded18findExportedSymbolER11DiagnosticsPKcbRNS0_11FoundSymbolEU13block_pointerFPKS0_S8_jE_block_invoke_2;
      v30[3] = &__block_descriptor_tmp_42_2;
      v30[4] = a1;
      v30[5] = a3;
      v30[6] = a5;
      v33 = v48[2];
      dyld3::MachOLoaded::forEachGlobalSymbol(a1, a2, v30);
      if (*(a5 + 8))
      {
        ExportedSymbol = 1;
      }

      else
      {
        v44 = 0;
        v45 = &v44;
        v46 = 0x2000000000;
        v47 = 0;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 0x40000000;
        v28[2] = ___ZNK5dyld311MachOLoaded18findExportedSymbolER11DiagnosticsPKcbRNS0_11FoundSymbolEU13block_pointerFPKS0_S8_jE_block_invoke_3;
        v28[3] = &unk_A39B0;
        v28[4] = a6;
        v28[5] = &v44;
        v28[6] = a1;
        v28[7] = a2;
        v29 = a4;
        v28[8] = a3;
        v28[9] = a5;
        dyld3::MachOFile::forEachDependentDylib(a1, v28);
        _Block_object_dispose(&v44, 8);
        ExportedSymbol = *(a5 + 8) != 0;
      }

      return ExportedSymbol & 1;
    }
  }

  else
  {
    if (!*&v48[0])
    {
      goto LABEL_18;
    }

    v15 = (*&v48[0] + 44);
    v16 = (*&v48[0] + 40);
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  v17 = (a1 + *(&v49 + 1) - v49 + (*v16 - v50));
  v18 = *v15;
  v19 = dyld3::MachOFile::trieWalk(a2, v17, (v17 + v18), a3, v12);
  if (!v19)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = 0;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 0x40000000;
    v38[2] = ___ZNK5dyld311MachOLoaded18findExportedSymbolER11DiagnosticsPKcbRNS0_11FoundSymbolEU13block_pointerFPKS0_S8_jE_block_invoke;
    v38[3] = &unk_A3968;
    v38[4] = a6;
    v38[5] = &v44;
    v38[8] = a2;
    v38[9] = a3;
    v39 = a4;
    v38[10] = a5;
    v38[6] = &v40;
    v38[7] = a1;
    dyld3::MachOFile::forEachDependentDylib(a1, v38);
    ExportedSymbol = *(v41 + 24);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
    return ExportedSymbol & 1;
  }

  v44 = v19;
  v22 = dyld3::MachOFile::read_uleb128(a2, &v44, (v17 + v18), v20);
  if ((v22 & 8) != 0)
  {
    if (a6)
    {
      v24 = dyld3::MachOFile::read_uleb128(a2, &v44, (v17 + v18), v21);
      v25 = v24;
      if (*v44)
      {
        v26 = v44;
      }

      else
      {
        v26 = a3;
      }

      if (v24 && v24 <= dyld3::MachOFile::dependentDylibCount(a1, 0))
      {
        v27 = (*(a6 + 16))(a6, a1, (v25 - 1));
        if (v27)
        {
          ExportedSymbol = dyld3::MachOLoaded::findExportedSymbol(v27, a2, v26, a4, a5, a6);
          return ExportedSymbol & 1;
        }

        if ((a4 & 1) == 0)
        {
          Diagnostics::error(a2, "dependent dylib %lld not found for re-exported symbol %s");
        }
      }

      else
      {
        Diagnostics::error(a2, "re-export ordinal %lld out of range for %s");
      }
    }

    goto LABEL_2;
  }

  *a5 = 0;
  *(a5 + 4) = 0;
  *(a5 + 8) = a1;
  *(a5 + 16) = dyld3::MachOFile::read_uleb128(a2, &v44, (v17 + v18), v21);
  *(a5 + 24) = 0;
  *(a5 + 32) = a3;
  if (Diagnostics::hasError(a2))
  {
LABEL_2:
    ExportedSymbol = 0;
    return ExportedSymbol & 1;
  }

  if ((v22 & 3u) > 1uLL)
  {
    if ((v22 & 3) == 2)
    {
      ExportedSymbol = 1;
      *a5 = 1;
      return ExportedSymbol & 1;
    }

    Diagnostics::error(a2, "unsupported exported symbol kind. flags=%llu at node offset=0x%0lX");
    goto LABEL_2;
  }

  if ((v22 & 3) != 0)
  {
    ExportedSymbol = 1;
    *(a5 + 4) = 1;
  }

  else
  {
    *a5 = 0;
    if ((v22 & 0x10) != 0)
    {
      *(a5 + 24) = dyld3::MachOFile::read_uleb128(a2, &v44, (v17 + v18), v23);
    }

    ExportedSymbol = 1;
    if ((v22 & 4) != 0)
    {
      *(a5 + 5) = 1;
    }
  }

  return ExportedSymbol & 1;
}

uint64_t ___ZNK5dyld311MachOLoaded17hasExportedSymbolEPKcU13block_pointerFPKS0_S4_jEPPvPb_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 32) + *(a2 + 56);
  v4 = **(result + 40);
  if (v3 <= v4 && *(a2 + 64) + v3 > v4)
  {
    **(result + 48) = (*(a2 + 44) & 0x80000400) != 0;
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZNK5dyld311MachOLoaded18findExportedSymbolER11DiagnosticsPKcbRNS0_11FoundSymbolEU13block_pointerFPKS0_S8_jE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = result;
  if (a4)
  {
    result = *(result + 32);
    if (result)
    {
      result = (*(result + 16))(result, *(v8 + 56), *(*(*(v8 + 40) + 8) + 24));
      if (result)
      {
        result = dyld3::MachOLoaded::findExportedSymbol(result, *(v8 + 64), *(v8 + 72), *(v8 + 88), *(v8 + 80), *(v8 + 32));
        if (result)
        {
          *a8 = 1;
          *(*(*(v8 + 48) + 8) + 24) = 1;
        }
      }
    }
  }

  ++*(*(*(v8 + 40) + 8) + 24);
  return result;
}

uint64_t dyld3::MachOLoaded::forEachGlobalSymbol(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, v21);
  result = Diagnostics::hasError(a2);
  if ((result & 1) == 0)
  {
    result = dyld3::MachOFile::is64(a1);
    if (v22)
    {
      v7 = result;
      if (v23)
      {
        v8 = *(v23 + 16);
        v9 = (v23 + 20);
      }

      else
      {
        v8 = 0;
        v9 = v22 + 3;
      }

      v10 = *v9;
      v11 = v22[5];
      if (v10)
      {
        v12 = v24 + v25 + (v22[4] - v26);
        v13 = v24 + v25 + (v22[2] - v26);
        for (i = 1; ; ++i)
        {
          v15 = v8;
          if (v7)
          {
            v16 = (v13 + 16 * v8);
            v17 = *v16;
            if (v17 <= v11 && (v16[1] & 0xEF) == 0xF)
            {
              v18 = *(v16 + 1);
LABEL_15:
              v19 = *(v16 + 5);
              v20 = *(v16 + 3);
              result = (*(a3 + 16))(a3, v12 + v17, v18);
            }
          }

          else
          {
            v16 = (v13 + 12 * v8);
            v17 = *v16;
            if (v17 <= v11 && (v16[1] & 0xEF) == 0xF)
            {
              v18 = v16[2];
              goto LABEL_15;
            }
          }

          if (i >= v10)
          {
            return result;
          }

          v8 = v15 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t ___ZNK5dyld311MachOLoaded18findExportedSymbolER11DiagnosticsPKcbRNS0_11FoundSymbolEU13block_pointerFPKS0_S8_jE_block_invoke_2(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = _platform_strcmp(__s1, *(a1 + 40));
  if (!result)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    *v12 = 0;
    *(v12 + 4) = 0;
    *(v12 + 8) = v11;
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    *(v13 + 16) = a3 - *(a1 + 136);
    *(v13 + 24) = 0;
    *(v13 + 32) = v14;
    *a7 = 1;
  }

  return result;
}

uint64_t ___ZNK5dyld311MachOLoaded18findExportedSymbolER11DiagnosticsPKcbRNS0_11FoundSymbolEU13block_pointerFPKS0_S8_jE_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = result;
  if (a4)
  {
    result = *(result + 32);
    if (result)
    {
      result = (*(result + 16))(result, *(v8 + 48), *(*(*(v8 + 40) + 8) + 24));
      if (result)
      {
        result = dyld3::MachOLoaded::findExportedSymbol(result, *(v8 + 56), *(v8 + 64), *(v8 + 80), *(v8 + 72), *(v8 + 32));
        if (result)
        {
          *a8 = 1;
        }
      }
    }
  }

  ++*(*(*(v8 + 40) + 8) + 24);
  return result;
}

uint64_t dyld3::MachOLoaded::segmentName(dyld3::MachOLoaded *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__9;
  v12 = 0;
  v13 = 0;
  v11 = __Block_byref_object_dispose__9;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld311MachOLoaded11segmentNameEj_block_invoke;
  v5[3] = &unk_A3A00;
  v6 = a2;
  v5[4] = &v7;
  mach_o::Header::forEachSegment(this, v5);
  v2 = v8[5];
  v3 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v2;
}

__n128 __Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 ___ZNK5dyld311MachOLoaded11segmentNameEj_block_invoke(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  if (*(a1 + 40) == a2[2].n128_u16[6])
  {
    result = *a2;
    *(*(*(a1 + 32) + 8) + 40) = *a2;
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Layout::textUnslidVMAddr(mach_o::Layout *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 1);
  v3 = 48 * v1;
  while (v2[11] != 1)
  {
    v2 += 12;
    v3 -= 48;
    if (!v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t mach_o::SymbolTable::forEachGlobalSymbol(dyld3::MachOFile ***a1, uint64_t a2, uint64_t a3)
{
  result = dyld3::MachOFile::is64(**a1);
  v6 = (*a1)[3];
  if (*(v6 + 220) == 1)
  {
    v7 = result;
    if (*(v6 + 156) == 1)
    {
      v8 = *(v6 + 37);
      v9 = (v6 + 152);
    }

    else
    {
      v8 = 0;
      v9 = (v6 + 216);
    }

    v10 = *v9;
    v11 = *(v6 + 60);
    v12 = *(v6 + 29);
    v13 = *(v6 + 25);
    v21 = 0;
    if (v10)
    {
      v14 = 1;
      while (1)
      {
        v15 = v8;
        if (v7)
        {
          v16 = (v13 + 16 * v8);
          v17 = *v16;
          if (v17 > v11 || (v16[1] & 0xEF) != 0xF)
          {
            goto LABEL_15;
          }

          v18 = *(v16 + 1);
        }

        else
        {
          v16 = (v13 + 12 * v8);
          v17 = *v16;
          if (v17 > v11 || (v16[1] & 0xEF) != 0xF)
          {
            goto LABEL_15;
          }

          v18 = v16[2];
        }

        v19 = *(v16 + 5);
        v20 = *(v16 + 3);
        result = (*(a3 + 16))(a3, v12 + v17, v18);
LABEL_15:
        if (v14 < v10)
        {
          v8 = v15 + 1;
          ++v14;
          if ((v21 & 1) == 0)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

void mach_o::Fixups::forEachBindTarget_Opcodes(dyld3::MachOFile ***a1, Diagnostics *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = -1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = -1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Fixups25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke;
  v6[3] = &unk_A3BD0;
  v6[4] = a4;
  v6[5] = v9;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK6mach_o6Fixups25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke_2;
  v5[3] = &unk_A3BF8;
  v5[4] = a5;
  v5[5] = v7;
  mach_o::Fixups::forEachBindUnified_Opcodes(a1, a2, a3, v6, v5);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v9, 8);
}

uint64_t ___ZNK6mach_o6Fixups31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v7 = *(*(*(v4 + 8) + 8) + 24);
  v8 = -3;
  v9 = a2;
  v10 = 0;
  v11 = 0;
  v6 = 0;
  result = (*(v3 + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t mach_o::Fixups::parseOrgArm64eChainedFixups(dyld3::MachOFile ***a1, Diagnostics *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = 0;
  result = dyld3::MachOFile::dependentDylibCount(**a1, 0);
  v11 = (*a1)[3];
  if (*(v11 + 316) == 1)
  {
    v26 = result;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v12 = 0;
    v29 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v31 = *(v11 + 37);
    v16 = (v31 + *(v11 + 76));
    while (1)
    {
      if (!Diagnostics::noError(a2))
      {
        return Diagnostics::hasError(a2);
      }

      v18 = v31;
      if (v31 >= v16)
      {
        return Diagnostics::hasError(a2);
      }

      v19 = v31 + 1;
      v20 = *v31;
      v21 = v20 & 0xF;
      v31 = (v31 + 1);
      v22 = v20 >> 4;
      if (v20 >> 4 > 4)
      {
        if (v20 >> 4 > 6)
        {
          if (v22 == 7)
          {
            v28 = dyld3::MachOFile::read_uleb128(a2, &v31, v16, v17);
            LOBYTE(v27) = v21;
            BYTE4(v27) = 1;
            goto LABEL_43;
          }

          if (v22 == 9)
          {
            if (a4)
            {
              (*(a4 + 16))(a4, v13 & 1, v26, v14, v30, v15, v29, v12 & 1, &v32);
            }

            goto LABEL_43;
          }

          if (v22 != 13)
          {
            goto LABEL_39;
          }

          if (v21 == 1)
          {
            if (a5)
            {
              (*(a5 + 16))(a5, v27, BYTE4(v27) & 1, v28, 1, &v32);
            }

            goto LABEL_43;
          }

          if ((v20 & 0xF) != 0)
          {
            Diagnostics::error(a2, "bad BIND_OPCODE_THREADED sub-opcode 0x%02X");
            goto LABEL_43;
          }

          v25 = dyld3::MachOFile::read_uleb128(a2, &v31, v16, v17);
          if (v25 < 0x10000)
          {
            if (a3)
            {
              (*(a3 + 16))(a3, v25, &v32);
            }

            goto LABEL_43;
          }

          Diagnostics::error(a2, "BIND_SUBOPCODE_THREADED_SET_BIND_ORDINAL_TABLE_SIZE_ULEB size too large");
LABEL_29:
          v32 = 1;
          goto LABEL_43;
        }

        if (v22 == 5)
        {
          v30 = v20 & 0xF;
        }

        else
        {
          if (v22 != 6)
          {
            goto LABEL_39;
          }

          v29 = dyld3::MachOFile::read_sleb128(a2, &v31, v16, v17);
        }
      }

      else if (v20 >> 4 <= 1)
      {
        if (!v22)
        {
          goto LABEL_29;
        }

        if (v22 != 1)
        {
          goto LABEL_39;
        }

        v13 = 1;
        v14 = v20 & 0xF;
      }

      else
      {
        switch(v22)
        {
          case 2u:
            v14 = dyld3::MachOFile::read_uleb128(a2, &v31, v16, v17);
            break;
          case 3u:
            if ((v20 & 0xF) != 0)
            {
              v14 = v20 | 0xFFFFFFF0;
            }

            else
            {
              v14 = 0;
            }

            break;
          case 4u:
            if (*v19)
            {
              v23 = (v18 + 2);
              do
              {
                v31 = v23;
                v24 = *v23;
                v23 = (v23 + 1);
              }

              while (v24);
              v18 = (v23 - 2);
            }

            v12 = v20 & 1;
            v31 = (v18 + 2);
            v15 = v19;
            goto LABEL_43;
          default:
LABEL_39:
            Diagnostics::error(a2, "bad bind opcode 0x%02X");
            goto LABEL_43;
        }

        v13 = 1;
      }

LABEL_43:
      if (v32 == 1)
      {
        return Diagnostics::hasError(a2);
      }
    }
  }

  return result;
}

void mach_o::Fixups::forEachBindUnified_Opcodes(dyld3::MachOFile ***a1, Diagnostics *a2, char a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4802000000;
  v15 = __Block_byref_object_copy__61;
  v16 = __Block_byref_object_dispose__62;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZNK6mach_o6Fixups26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyjRKNS0_14BindTargetInfoERbES8__block_invoke;
  v10[3] = &unk_A3B40;
  v10[6] = &v17;
  v10[7] = a1;
  v11 = a3;
  v10[4] = a4;
  v10[5] = &v12;
  if ((mach_o::Fixups::forEachBind_OpcodesRegular(a1, a2, v10) & 1) == 0)
  {
    v8 = mach_o::Fixups::forEachBind_OpcodesLazy(a1, a2, v10);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v17, 8);
    if (v8)
    {
      return;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x4802000000;
    v15 = __Block_byref_object_copy__61;
    v16 = __Block_byref_object_dispose__62;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZNK6mach_o6Fixups26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyjRKNS0_14BindTargetInfoERbES8__block_invoke_2;
    v9[3] = &unk_A3B68;
    v9[6] = &v17;
    v9[7] = a1;
    v9[4] = a5;
    v9[5] = &v12;
    mach_o::Fixups::forEachBind_OpcodesWeak(a1, a2, v9, &__block_literal_global_3);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v17, 8);
}

__n128 __Block_byref_object_copy__61(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK6mach_o6Fixups26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyjRKNS0_14BindTargetInfoERbES8__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16)
{
  v16 = **(a1 + 56);
  v18 = *(v16 + 8);
  v17 = *(v16 + 16);
  if (v17)
  {
    v17 *= 48;
    v19 = v18;
    while (*(v19 + 11) != 1)
    {
      v19 += 6;
      v17 -= 48;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v17 = *v19;
  }

LABEL_7:
  v20 = v18[6 * a8];
  if (a15)
  {
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 24);
    *(v21 + 24) = v22 + 1;
    *(*(*(a1 + 40) + 8) + 40) = v22;
    *(*(*(a1 + 40) + 8) + 44) = a6;
    *(*(*(a1 + 40) + 8) + 48) = a11;
    *(*(*(a1 + 40) + 8) + 56) = a14;
    *(*(*(a1 + 40) + 8) + 64) = a12;
    if (a13)
    {
      v23 = *(a1 + 64);
    }

    else
    {
      v23 = 0;
    }

    *(*(*(a1 + 40) + 8) + 65) = v23 & 1;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v20 + a9 - v17, a8, *(*(a1 + 40) + 8) + 40, a16);
}

uint64_t mach_o::Fixups::forEachBind_OpcodesRegular(dyld3::MachOFile ***a1, Diagnostics *a2, uint64_t a3)
{
  if (*((*a1)[3] + 316) == 1)
  {
    v5 = dyld3::MachOFile::pointerSize(**a1);
    v39 = 0;
    v34 = dyld3::MachOFile::dependentDylibCount(**a1, 0);
    v35 = 0;
    v36 = 0;
    v6 = 0;
    v37 = 0;
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (*a1)[3];
    v38 = *(v12 + 37);
    v33 = (v38 + *(v12 + 76));
    v13 = a2;
    do
    {
      if (!Diagnostics::noError(v13))
      {
        break;
      }

      v15 = v38;
      if ((v38 >= v33) | v7 & 1)
      {
        break;
      }

      v16 = v38 + 1;
      v17 = *v38;
      v38 = (v38 + 1);
      v18 = v17 & 0xF;
      LOBYTE(v7) = 1;
      switch(v17 >> 4)
      {
        case 0u:
          break;
        case 1u:
          LOBYTE(v7) = 0;
          v9 = 1;
          v10 = v17 & 0xF;
          break;
        case 2u:
          v10 = dyld3::MachOFile::read_uleb128(v13, &v38, v33, v14);
          LOBYTE(v7) = 0;
          goto LABEL_23;
        case 3u:
          LOBYTE(v7) = 0;
          if ((v17 & 0xF) != 0)
          {
            v10 = v17 | 0xFFFFFFF0;
          }

          else
          {
            v10 = 0;
          }

LABEL_23:
          v9 = 1;
          break;
        case 4u:
          if (*v16)
          {
            v19 = (v15 + 2);
            do
            {
              v38 = v19;
              v20 = *v19;
              v19 = (v19 + 1);
            }

            while (v20);
            v15 = (v19 - 2);
          }

          LOBYTE(v7) = 0;
          LOBYTE(v35) = v17 & 1;
          v38 = (v15 + 2);
          v8 = 1;
          v11 = v16;
          break;
        case 5u:
          LOBYTE(v7) = 0;
          BYTE4(v36) = v17 & 0xF;
          break;
        case 6u:
          v37 = dyld3::MachOFile::read_sleb128(v13, &v38, v33, v14);
          LOBYTE(v7) = 0;
          v8 = 1;
          break;
        case 7u:
          v6 = dyld3::MachOFile::read_uleb128(v13, &v38, v33, v14);
          LOBYTE(v7) = 0;
          BYTE4(v35) = v18;
          LOBYTE(v36) = 1;
          break;
        case 8u:
          LOBYTE(v7) = 0;
          v6 += dyld3::MachOFile::read_uleb128(v13, &v38, v33, v14);
          break;
        case 9u:
          LOBYTE(v31) = v8;
          LOWORD(v30) = v35 & 1;
          LOBYTE(v29) = BYTE4(v36);
          (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND", v36 & 1, v9 & 1, v34, v10, v5, BYTE4(v35), v6, v29, v11, v30, v37, v31, &v39);
          v8 = 0;
          LOBYTE(v7) = 0;
          v6 += v5;
          break;
        case 0xAu:
          LOBYTE(v31) = v8;
          LOWORD(v30) = v35 & 1;
          LOBYTE(v29) = BYTE4(v36);
          (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB", v36 & 1, v9 & 1, v34, v10, v5, BYTE4(v35), v6, v29, v11, v30, v37, v31, &v39);
          v8 = 0;
          LOBYTE(v7) = 0;
          v6 += v5 + dyld3::MachOFile::read_uleb128(v13, &v38, v33, v26);
          break;
        case 0xBu:
          LOBYTE(v31) = v8;
          LOWORD(v30) = v35 & 1;
          LOBYTE(v29) = BYTE4(v36);
          (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED", v36 & 1, v9 & 1, v34, v10, v5, BYTE4(v35), v6, v29, v11, v30, v37, v31, &v39);
          v8 = 0;
          LOBYTE(v7) = 0;
          v6 += v5 + v5 * v18;
          break;
        case 0xCu:
          v7 = dyld3::MachOFile::read_uleb128(v13, &v38, v33, v14);
          v22 = dyld3::MachOFile::read_uleb128(v13, &v38, v33, v21);
          if (v7)
          {
            v23 = v22 + v5;
            v24 = 1;
            do
            {
              LOBYTE(v31) = v8;
              LOWORD(v30) = v35 & 1;
              LOBYTE(v29) = BYTE4(v36);
              (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB", v36 & 1, v9 & 1, v34, v10, v5, BYTE4(v35), v6, v29, v11, v30, v37, v31, &v39);
              v8 = 0;
              v6 += v23;
              if (v39)
              {
                break;
              }

              v25 = v24++;
            }

            while (v7 > v25);
            LOBYTE(v7) = 0;
            v13 = a2;
          }

          break;
        default:
          Diagnostics::error(v13, "bad bind opcode 0x%02X", *v16);
          LOBYTE(v7) = 0;
          break;
      }
    }

    while (v39 != 1);
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t mach_o::Fixups::forEachBind_OpcodesLazy(dyld3::MachOFile ***a1, Diagnostics *a2, uint64_t a3)
{
  if (*((*a1)[3] + 380) != 1)
  {
    v23 = 0;
    return v23 & 1;
  }

  v6 = dyld3::MachOFile::pointerSize(**a1);
  v32 = 0;
  v28 = dyld3::MachOFile::dependentDylibCount(**a1, 0);
  v7 = 0;
  v29 = 0;
  v30 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = (*a1)[3];
  v13 = (*(v12 + 45) + *(v12 + 92));
  v31 = *(v12 + 45);
  do
  {
    if (!Diagnostics::noError(a2))
    {
      break;
    }

    v15 = v31;
    if (v31 >= v13)
    {
      break;
    }

    v17 = v31 + 1;
    v16 = *v31;
    v18 = *v31 & 0xF;
    v31 = (v31 + 1);
    v19 = v16 >> 4;
    if (v19 > 3)
    {
      if ((v16 >> 4) > 6u)
      {
        if (v19 == 7)
        {
          v11 = dyld3::MachOFile::read_uleb128(a2, &v31, v13, v14);
          LOBYTE(v29) = v18;
          BYTE4(v29) = 1;
        }

        else
        {
          if (v19 != 9)
          {
            goto LABEL_29;
          }

          LOBYTE(v27) = 1;
          BYTE1(v26) = 1;
          LOBYTE(v26) = v7 & 1;
          LOBYTE(v25) = 1;
          (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND", BYTE4(v29) & 1, v8 & 1, v28, v9, v6, v29, v11, v25, v10, v26, v30, v27, &v32);
          v11 += v6;
        }
      }

      else
      {
        if (v19 == 4)
        {
          if (*v17)
          {
            v21 = (v15 + 2);
            do
            {
              v31 = v21;
              v22 = *v21;
              v21 = (v21 + 1);
            }

            while (v22);
            v15 = (v21 - 2);
          }

          v7 = v16 & 1;
          v31 = (v15 + 2);
          v10 = v17;
          continue;
        }

        if (v19 != 6)
        {
LABEL_29:
          Diagnostics::error(a2, "bad lazy bind opcode 0x%02X", v16 & 0xF0);
          continue;
        }

        v30 = dyld3::MachOFile::read_sleb128(a2, &v31, v13, v14);
      }
    }

    else
    {
      if ((v16 >> 4) <= 1u)
      {
        if (v16 >> 4)
        {
          v8 = 1;
          v9 = v16 & 0xF;
        }

        continue;
      }

      if (v19 == 2)
      {
        v9 = dyld3::MachOFile::read_uleb128(a2, &v31, v13, v14);
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_29;
        }

        v20 = *&v16 | 0xFFFFFFF0;
        if (v18)
        {
          v9 = v20;
        }

        else
        {
          v9 = 0;
        }
      }

      v8 = 1;
    }
  }

  while (v32 != 1);
  v23 = v32;
  return v23 & 1;
}

uint64_t ___ZNK6mach_o6Fixups26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyjRKNS0_14BindTargetInfoERbES8__block_invoke_2(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, char *__s1, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = **(a1 + 56);
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 48 * v18;
    v20 = v17;
    while (*(v20 + 11) != 1)
    {
      v20 += 6;
      v19 -= 48;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    v21 = *v20;
  }

LABEL_7:
  v22 = v17[6 * a8];
  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 48);
  if (v24 != __s1 || _platform_strcmp(__s1, v24) || *(v23 + 56) != a13)
  {
    v25 = *(*(a1 + 48) + 8);
    v26 = *(v25 + 24);
    *(v25 + 24) = v26 + 1;
    *(*(*(a1 + 40) + 8) + 40) = v26;
    *(*(*(a1 + 40) + 8) + 44) = -3;
    *(*(*(a1 + 40) + 8) + 48) = __s1;
    *(*(*(a1 + 40) + 8) + 56) = a13;
    *(*(*(a1 + 40) + 8) + 64) = 0;
    *(*(*(a1 + 40) + 8) + 65) = 0;
    v27 = *(*(a1 + 40) + 8);
  }

  v28 = *(*(a1 + 32) + 16);

  return v28();
}

uint64_t mach_o::Fixups::forEachBind_OpcodesWeak(dyld3::MachOFile ***a1, Diagnostics *a2, uint64_t a3, uint64_t a4)
{
  if (*((*a1)[3] + 348) != 1)
  {
    v31 = 0;
    return v31 & 1;
  }

  v8 = dyld3::MachOFile::pointerSize(**a1);
  v43 = 0;
  v38 = dyld3::MachOFile::dependentDylibCount(**a1, 0);
  v39 = 0;
  v9 = 0;
  v40 = 0;
  v41 = 0;
  v10 = 0;
  v11 = 0;
  v12 = (*a1)[3];
  v36 = a4;
  v37 = (*(v12 + 41) + *(v12 + 84));
  v42 = *(v12 + 41);
  v13 = 1;
  v14 = 1;
  do
  {
    if (!Diagnostics::noError(a2))
    {
      break;
    }

    v16 = v42;
    if ((v42 >= v37) | v9 & 1)
    {
      break;
    }

    v18 = v42 + 1;
    v17 = *v42;
    v19 = v17 & 0xF;
    v42 = (v42 + 1);
    v20 = v17 >> 4;
    if (v17 >> 4 <= 5)
    {
      if (v17 >> 4 > 3)
      {
        if (v20 == 4)
        {
          if (*v18)
          {
            v28 = (v16 + 2);
            do
            {
              v42 = v28;
              v29 = *v28;
              v28 = (v28 + 1);
            }

            while (v29);
            v16 = (v28 - 2);
          }

          v39 = v17 & 1;
          v42 = (v16 + 2);
          if (v19 >= 8)
          {
            (*(v36 + 16))(v36, v18);
          }

          v9 = 0;
          v14 = 1;
          v11 = v18;
          continue;
        }

        if (v20 != 5)
        {
          goto LABEL_40;
        }

        v9 = 0;
        v13 = v17 & 0xF;
      }

      else
      {
        if (v20 - 1 < 3)
        {
          Diagnostics::error(a2, "unexpected dylib ordinal in weak_bind");
          goto LABEL_41;
        }

        if (v20)
        {
          goto LABEL_40;
        }

        v9 = 1;
      }
    }

    else if (v17 >> 4 <= 8)
    {
      switch(v20)
      {
        case 6u:
          v41 = dyld3::MachOFile::read_sleb128(a2, &v42, v37, v15);
          v9 = 0;
          v14 = 1;
          break;
        case 7u:
          v10 = dyld3::MachOFile::read_uleb128(a2, &v42, v37, v15);
          v9 = 0;
          LOBYTE(v40) = v19;
          BYTE4(v40) = 1;
          break;
        case 8u:
          v9 = 0;
          v10 += dyld3::MachOFile::read_uleb128(a2, &v42, v37, v15);
          break;
        default:
          goto LABEL_40;
      }
    }

    else
    {
      if (v17 >> 4 <= 0xA)
      {
        LOBYTE(v35) = v14;
        LOWORD(v34) = v39 & 1;
        LOBYTE(v33) = v13;
        if (v20 == 9)
        {
          (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND", BYTE4(v40) & 1, 1, v38, 4294967293, v8, v40, v10, v33, v11, v34, v41, v35, &v43);
          v14 = 0;
          v9 = 0;
          v10 += v8;
        }

        else
        {
          (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB", BYTE4(v40) & 1, 1, v38, 4294967293, v8, v40, v10, v33, v11, v34, v41, v35, &v43);
          v14 = 0;
          v9 = 0;
          v10 += v8 + dyld3::MachOFile::read_uleb128(a2, &v42, v37, v21);
        }

        continue;
      }

      if (v20 != 11)
      {
        if (v20 == 12)
        {
          v22 = dyld3::MachOFile::read_uleb128(a2, &v42, v37, v15);
          v24 = dyld3::MachOFile::read_uleb128(a2, &v42, v37, v23);
          if (v22)
          {
            v25 = v24 + v8;
            v26 = 1;
            do
            {
              LOBYTE(v35) = v14;
              LOWORD(v34) = v39 & 1;
              LOBYTE(v33) = v13;
              (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB", BYTE4(v40) & 1, 1, v38, 4294967293, v8, v40, v10, v33, v11, v34, v41, v35, &v43);
              v14 = 0;
              v10 += v25;
              if (v43)
              {
                break;
              }

              v27 = v26++;
            }

            while (v22 > v27);
            v9 = 0;
            continue;
          }
        }

        else
        {
LABEL_40:
          v30 = *v18;
          Diagnostics::error(a2, "bad bind opcode 0x%02X");
        }

LABEL_41:
        v9 = 0;
        continue;
      }

      LOBYTE(v35) = v14;
      LOWORD(v34) = v39 & 1;
      LOBYTE(v33) = v13;
      (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED", BYTE4(v40) & 1, 1, v38, 4294967293, v8, v40, v10, v33, v11, v34, v41, v35, &v43);
      v14 = 0;
      v9 = 0;
      v10 += v8 + v8 * v19;
    }
  }

  while (v43 != 1);
  v31 = v43;
  return v31 & 1;
}

uint64_t ___ZNK6mach_o6Fixups25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (*(*(*(result + 40) + 8) + 24) != *a4)
  {
    v5 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v5 + 40) + 8) + 24) = *a4;
  }

  return result;
}

uint64_t ___ZNK6mach_o6Fixups25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (*(*(*(result + 40) + 8) + 24) != *a4)
  {
    v5 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v5 + 40) + 8) + 24) = *a4;
  }

  return result;
}

unint64_t mach_o::ChainedFixupPointerOnDisk::Arm64e::signExtendedAddend(mach_o::ChainedFixupPointerOnDisk::Arm64e *this)
{
  v1 = *this;
  if ((*this & 0x4000000000000000) == 0)
  {
    mach_o::ChainedFixupPointerOnDisk::Arm64e::signExtendedAddend();
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    mach_o::ChainedFixupPointerOnDisk::Arm64e::signExtendedAddend();
  }

  return ((v1 << 13) >> 63) & 0xFFFFFFFFFFFC0000 | HIDWORD(v1) & 0x3FFFF;
}

char *mach_o::ChainedFixupPointerOnDisk::Arm64e::keyName(mach_o::ChainedFixupPointerOnDisk::Arm64e *this)
{
  if (this >= 4)
  {
    mach_o::ChainedFixupPointerOnDisk::Arm64e::keyName();
  }

  return mach_o::ChainedFixupPointerOnDisk::Kernel64::keyName(void)const::names[this];
}

unint64_t mach_o::ChainedFixupPointerOnDisk::Cache64e::high8(mach_o::ChainedFixupPointerOnDisk::Cache64e *this)
{
  if ((*this & 0x8000000000000000) != 0)
  {
    mach_o::ChainedFixupPointerOnDisk::Cache64e::high8();
  }

  return (*this << 22) & 0xFF00000000000000;
}

uint64_t mach_o::ChainedFixupPointerOnDisk::Cache64e::signPointer(uint64_t this, unint64_t a2, void *a3, BOOL a4, int a5)
{
  if (this)
  {
    if (a5 == 1)
    {
      return this;
    }

    if (a5)
    {
      mach_o::ChainedFixupPointerOnDisk::Cache64e::signPointer();
    }

    return this;
  }

  return this;
}

uint64_t mach_o::ChainedFixupPointerOnDisk::Cache64e::signPointer(mach_o::ChainedFixupPointerOnDisk::Cache64e *this, unint64_t a2, mach_o::ChainedFixupPointerOnDisk::Cache64e *a3)
{
  v4 = *this;
  if ((*this & 0x8000000000000000) == 0)
  {
    mach_o::ChainedFixupPointerOnDisk::Cache64e::signPointer();
  }

  return mach_o::ChainedFixupPointerOnDisk::Cache64e::signPointer(a3, a2, ((v4 >> 50) & 1), v4 >> 34, (v4 >> 51) & 1);
}

uint64_t mach_o::ChainedFixupPointerOnDisk::isRebase(mach_o::ChainedFixupPointerOnDisk *this, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2 <= 4)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        goto LABEL_21;
      }

      if (a2 != 3)
      {
LABEL_30:
        mach_o::ChainedFixupPointerOnDisk::isRebase();
      }

      v8 = *this;
      if ((*this & 0x80000000) != 0)
      {
        return 0;
      }

LABEL_28:
      v7 = (v8 & 0x3FFFFFF) - a3;
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (a2 > 0xD)
  {
LABEL_19:
    if (a2 != 5)
    {
      if (a2 == 6)
      {
LABEL_21:
        v10 = *this;
        if ((*this & 0x8000000000000000) == 0)
        {
          v11 = v10 >> 36;
          v12 = v10 & 0xFFFFFFFFFLL;
          if (a2 == 2)
          {
            v13 = a3;
          }

          else
          {
            v13 = 0;
          }

          v7 = v12 - v13 + (v11 << 56);
          goto LABEL_29;
        }

        return 0;
      }

      goto LABEL_30;
    }

    v8 = *this;
    goto LABEL_28;
  }

  if (((1 << a2) & 0x1680) != 0)
  {
LABEL_11:
    v9 = *this;
    if ((*this & 0x4000000000000000) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        v7 = v9;
      }

      else
      {
        v7 = mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget(this);
        if (a2 == 10 || a2 == 1)
        {
          v7 -= a3;
        }
      }

      goto LABEL_29;
    }

    return 0;
  }

  if (((1 << a2) & 0x900) == 0)
  {
    if (a2 == 13)
    {
      v7 = *this & 0x3FFFFFFFFLL;
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v7 = *this & 0x3FFFFFFFLL;
LABEL_29:
  *a4 = v7;
  return 1;
}

uint64_t mach_o::ChainedFixupPointerOnDisk::isBind(mach_o::ChainedFixupPointerOnDisk *this, int a2, unsigned int *a3, unint64_t *a4)
{
  *a4 = 0;
  if (a2 > 5)
  {
    if (a2 <= 0xC)
    {
      if (((1 << a2) & 0x1680) != 0)
      {
        goto LABEL_4;
      }

      if (((1 << a2) & 0x900) != 0)
      {
        return 0;
      }

      if (a2 == 6)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_22;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
LABEL_17:
      if ((*this & 0x8000000000000000) != 0)
      {
        *a3 = *this & 0xFFFFFF;
        v7 = *(this + 3);
        goto LABEL_20;
      }

      return 0;
    }

    if (a2 == 3)
    {
      if ((*this & 0x80000000) != 0)
      {
        *a3 = *this & 0xFFFFF;
        v7 = (*this >> 20) & 0x3F;
        goto LABEL_20;
      }

      return 0;
    }

LABEL_22:
    mach_o::ChainedFixupPointerOnDisk::isBind();
  }

LABEL_4:
  v5 = *this;
  if ((*this & 0x4000000000000000) == 0)
  {
    return 0;
  }

  if (a2 == 12)
  {
    v6 = 0xFFFFFF;
  }

  else
  {
    v6 = 0xFFFF;
  }

  *a3 = v6 & v5;
  if (v5 < 0)
  {
    return 1;
  }

  v7 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signExtendedAddend(this);
LABEL_20:
  *a4 = v7;
  return 1;
}

size_t dyld4::Utils::concatenatePaths(dyld4::Utils *this, char *a2, const char *a3)
{
  if (*(this + _platform_strlen(this) - 1) == 47 && *a2 == 47)
  {
    v6 = a2 + 1;
    v7 = this;
  }

  else
  {
    v7 = this;
    v6 = a2;
  }

  return strlcat(v7, v6, a3);
}

BOOL dyld3::MachOAnalyzer::isOSBinary(dyld3::MachOAnalyzer *this, int a2, uint64_t a3)
{
  if (a2 == -1)
  {
    return 0;
  }

  *v10 = 0;
  hasCodeSignature = mach_o::Header::hasCodeSignature(this, &v10[1], v10);
  result = 0;
  if (!hasCodeSignature)
  {
    return result;
  }

  v11[0] = a3;
  v11[1] = v10[1];
  v11[2] = v10[0];
  if (fcntl(a2, 97, v11) == -1)
  {
    return 0;
  }

  v9 = 1;
  v8 = a3;
  return fcntl(a2, 105, &v8) != -1 && HIDWORD(v9) != 0;
}

__n128 ___ZNK5dyld313MachOAnalyzer19getAllSegmentsInfosER11DiagnosticsPN6mach_o6Header11SegmentInfoE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) + 48 * *(a2 + 44);
  result = *a2;
  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  *v2 = result;
  return result;
}

uint64_t dyld3::MachOAnalyzer::forEachRebase(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  v4 = a2;
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, v48);
  result = Diagnostics::hasError(v4);
  if ((result & 1) == 0)
  {
    __chkstk_darwin(result);
    v9 = (&v39 - 2 * v8);
    if ((v10 & 1) == 0)
    {
      bzero(&v39 - 2 * v8, 48 * ((48 * v7 - 48) / 0x30) + 48);
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 0x40000000;
    v50[2] = ___ZNK5dyld313MachOAnalyzer19getAllSegmentsInfosER11DiagnosticsPN6mach_o6Header11SegmentInfoE_block_invoke;
    v50[3] = &__block_descriptor_tmp_57_1;
    v50[4] = v9;
    mach_o::Header::forEachSegment(a1, v50);
    result = Diagnostics::hasError(v4);
    if ((result & 1) == 0)
    {
      result = dyld3::MachOFile::is64(a1);
      if (result)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (v48[0])
      {
        v41 = v11;
        v44 = &v39;
        LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, &v49, *(v48[0] + 8));
        v13 = *(v48[0] + 12);
        v14 = (LinkEditContent + v13);
        v43 = LinkEditContent;
        v50[0] = LinkEditContent;
        v15 = dyld3::MachOFile::pointerSize(a1);
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v47 = 0;
        v46 = a3 + 16;
        v20 = v15;
        v42 = v13;
        v21 = v14;
        v45 = v14;
        while (1)
        {
          result = Diagnostics::noError(v4);
          if (!result || v50[0] >= v21)
          {
            return result;
          }

          v25 = *v50[0];
          v24 = v50[0] + 1;
          v23 = *v50[0];
          v26 = *v50[0]++ & 0xF;
          v27 = v25 >> 4;
          if (v27 <= 3)
          {
            if (v27 > 1)
            {
              if (v27 == 2)
              {
                result = dyld3::MachOFile::read_uleb128(v4, v50, v21, v22);
                v18 = result;
                v17 = 1;
                v19 = v26;
              }

              else
              {
                result = dyld3::MachOFile::read_uleb128(v4, v50, v21, v22);
                v18 += result;
              }
            }

            else if (v27)
            {
              switch(v26)
              {
                case 1u:
                  v16 = v41;
                  break;
                case 3u:
                  v16 = 3;
                  break;
                case 2u:
                  v16 = 4;
                  break;
                default:
                  v16 = 0;
                  break;
              }
            }

            else
            {
              if (v21 - v24 >= 16)
              {
                result = Diagnostics::error(v4, "rebase opcodes terminated early at offset %d of %d", v24 - v43, v42);
              }

              v47 = 1;
            }

            goto LABEL_53;
          }

          if (v27 <= 5)
          {
            if (v27 == 4)
            {
              v18 += v20 * v26;
              goto LABEL_53;
            }

            if (v26)
            {
              v33 = 1;
              do
              {
                result = (*(a3 + 16))(a3, "REBASE_OPCODE_DO_REBASE_IMM_TIMES", v48, v9, v17 & 1, v20, v19, v18, v16, &v47);
                v18 += v20;
                if (v47)
                {
                  break;
                }
              }

              while (v33++ < v26);
              goto LABEL_46;
            }
          }

          else
          {
            if (v27 != 6)
            {
              if (v27 == 7)
              {
                (*(a3 + 16))(a3, "REBASE_OPCODE_DO_REBASE_ADD_ADDR_ULEB", v48, v9, v17 & 1, v20, v19, v18, v16, &v47);
                result = dyld3::MachOFile::read_uleb128(v4, v50, v21, v38);
                v18 += v20 + result;
                goto LABEL_53;
              }

              if (v27 != 8)
              {
                result = Diagnostics::error(v4, "unknown rebase opcode 0x%02X", v23 & 0xF0);
                goto LABEL_53;
              }

              uleb128 = dyld3::MachOFile::read_uleb128(v4, v50, v21, v22);
              result = Diagnostics::hasError(v4);
              if (result)
              {
                goto LABEL_53;
              }

              result = dyld3::MachOFile::read_uleb128(v4, v50, v21, v29);
              if (!uleb128)
              {
                goto LABEL_53;
              }

              v40 = v4;
              v30 = result + v20;
              v31 = 1;
              do
              {
                result = (*(a3 + 16))(a3, "REBASE_OPCODE_DO_REBASE_ULEB_TIMES_SKIPPING_ULEB", v48, v9, v17 & 1, v20, v19, v18, v16, &v47);
                v18 += v30;
                if (v47)
                {
                  break;
                }

                v32 = v31++;
              }

              while (uleb128 > v32);
              v4 = v40;
              goto LABEL_46;
            }

            result = dyld3::MachOFile::read_uleb128(v4, v50, v21, v22);
            if (result)
            {
              v35 = result;
              v36 = 1;
              do
              {
                result = (*(a3 + 16))(a3, "REBASE_OPCODE_DO_REBASE_ADD_ADDR_ULEB", v48, v9, v17 & 1, v20, v19, v18, v16, &v47);
                v18 += v20;
                if (v47)
                {
                  break;
                }

                v37 = v36++;
              }

              while (v35 > v37);
LABEL_46:
              v21 = v45;
            }
          }

LABEL_53:
          if (v47 == 1)
          {
            return result;
          }
        }
      }

      if (v48[2])
      {
        return dyld3::MachOFile::isFileSet(a1);
      }
    }
  }

  return result;
}

void dyld3::MachOAnalyzer::forEachRebase(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5dyld313MachOAnalyzer13forEachRebaseER11DiagnosticsU13block_pointerFvybRbE_block_invoke;
  v7[3] = &unk_A3C60;
  v7[4] = v11;
  v7[5] = v10;
  v7[6] = v9;
  v7[7] = v8;
  dyld3::MachOFile::forEachSection(a1, v7);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK5dyld313MachOAnalyzer13forEachRebaseER11DiagnosticsU13block_pointerFvybRbE_block_invoke_2;
  v6[3] = &unk_A3C88;
  v6[6] = v12;
  v6[7] = v11;
  v6[8] = v10;
  v6[9] = v9;
  v6[10] = v8;
  v6[11] = a1;
  v6[4] = a3;
  v6[5] = v13;
  dyld3::MachOAnalyzer::forEachRebase(a1, a2, v6);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
}

uint64_t ___ZNK5dyld313MachOAnalyzer13forEachRebaseER11DiagnosticsU13block_pointerFvybRbE_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 44) == 7)
  {
    v2 = 40;
    v3 = 32;
LABEL_3:
    v4 = *(a2 + 56);
    *(*(*(result + v3) + 8) + 24) = v4;
    *(*(*(result + v2) + 8) + 24) = *(a2 + 64) + v4;
    return result;
  }

  if ((*(a2 + 44) & 0x80000000) != 0 && *(a2 + 8) == 13 && **a2 == 0x685F627574735F5FLL && *(*a2 + 5) == 0x7265706C65685F62)
  {
    v2 = 56;
    v3 = 48;
    goto LABEL_3;
  }

  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer13forEachRebaseER11DiagnosticsU13block_pointerFvybRbE_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, unsigned int a9)
{
  if (a9 > 4 || ((1 << a9) & 0x19) == 0)
  {
    v10 = result;
    v11 = *(result + 88);
    if (a7 && (*(*(v10[5] + 8) + 24) & 1) == 0)
    {
      v12 = (a4 + 16);
      v13 = a7;
      while (1)
      {
        if (*(v12 - 1) == 6)
        {
          v14 = *(v12 - 2);
          v15 = *v14;
          v16 = *(v14 + 2);
          if (v15 == 1163157343 && v16 == 21592)
          {
            break;
          }
        }

        v12 += 6;
        if (!--v13)
        {
          goto LABEL_17;
        }
      }

      *(*(v10[6] + 8) + 24) = *v12;
      *(*(v10[5] + 8) + 24) = 1;
    }

LABEL_17:
    v18 = *(a4 + 48 * a7 + 16) + a8;
    if (v18 >= *(*(v10[7] + 8) + 24) && v18 < *(*(v10[8] + 8) + 24))
    {
      v19 = *(*(v10[6] + 8) + 24);
      v20 = v18 - v19;
      v21 = a6 == 8 ? *(v11 + v20) : *(v11 + v20);
      if (v21 >= *(*(v10[9] + 8) + 24) && v21 < *(*(v10[10] + 8) + 24))
      {
        dyld3::MachOAnalyzer::contentIsRegularStub(v11, v11 + v21 - v19);
      }
    }

    v22 = v18 - *(*(v10[6] + 8) + 24);
    v23 = *(v10[4] + 16);

    return v23();
  }

  return result;
}

BOOL dyld3::MachOAnalyzer::contentIsRegularStub(dyld3::MachOAnalyzer *this, const unsigned __int8 *a2)
{
  result = 0;
  v4 = *(this + 1);
  if (v4 > 16777222)
  {
    if (v4 == 16777228)
    {
      if (*a2 == 80 && !a2[1] && !a2[2])
      {
        v5 = 24;
        goto LABEL_20;
      }

      return 0;
    }

    if (v4 != 16777223)
    {
      return result;
    }

    if (*a2 != 104)
    {
      return 0;
    }

    v5 = 233;
    v6 = 5;
  }

  else
  {
    if (v4 != 7)
    {
      if (v4 != 12)
      {
        return result;
      }

      if (!*a2 && a2[1] == 192 && a2[2] == 159)
      {
        v5 = 229;
LABEL_20:
        v6 = 3;
        return a2[v6] == v5;
      }

      return 0;
    }

    if (*a2 != 104 || a2[5] != 255)
    {
      return 0;
    }

    v5 = 38;
    v6 = 2;
  }

  return a2[v6] == v5;
}

void dyld3::MachOAnalyzer::forEachRebase(unsigned int *a1, Diagnostics *a2, char a3, uint64_t a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5dyld313MachOAnalyzer13forEachRebaseER11DiagnosticsbU13block_pointerFvyRbE_block_invoke;
  v4[3] = &unk_A3CB0;
  v5 = a3;
  v4[4] = a4;
  dyld3::MachOAnalyzer::forEachRebase(a1, a2, v4);
}

uint64_t ___ZNK5dyld313MachOAnalyzer13forEachRebaseER11DiagnosticsbU13block_pointerFvyRbE_block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (!a3 || (*(result + 40) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t dyld3::MachOAnalyzer::forEachBind(dyld3::MachOFile *a1, Diagnostics *a2, uint64_t a3, uint64_t a4)
{
  v93 = dyld3::MachOFile::pointerSize(a1);
  v96 = 0;
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, v94);
  result = Diagnostics::hasError(a2);
  if ((result & 1) == 0)
  {
    __chkstk_darwin(result);
    v11 = &(&v81)[-2 * v10];
    if ((v12 & 1) == 0)
    {
      bzero(&(&v81)[-2 * v10], 48 * ((48 * v9 - 48) / 0x30) + 48);
    }

    v97[0] = _NSConcreteStackBlock;
    v97[1] = 0x40000000;
    v97[2] = ___ZNK5dyld313MachOAnalyzer19getAllSegmentsInfosER11DiagnosticsPN6mach_o6Header11SegmentInfoE_block_invoke;
    v97[3] = &__block_descriptor_tmp_57_1;
    v97[4] = v11;
    mach_o::Header::forEachSegment(a1, v97);
    result = Diagnostics::hasError(a2);
    if ((result & 1) == 0)
    {
      result = dyld3::MachOFile::dependentDylibCount(a1, 0);
      v92 = result;
      if (v94[0])
      {
        v84 = &v81;
        LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, v95, *(v94[0] + 16));
        v97[0] = LinkEditContent;
        v82 = a4;
        if ((v96 & 1) == 0)
        {
          v14 = 0;
          v15 = 0;
          LODWORD(v87) = 0;
          v85 = 0;
          uleb128 = 0;
          LODWORD(v88) = 0;
          LODWORD(v86) = 0;
          sleb128 = 0;
          LODWORD(v90) = 0;
          v16 = (LinkEditContent + *(v94[0] + 20));
          v83 = v93;
          do
          {
            if (!Diagnostics::noError(a2))
            {
              break;
            }

            v18 = v97[0];
            if (v97[0] >= v16)
            {
              break;
            }

            v19 = v97[0] + 1;
            v20 = *v97[0]++;
            v21 = v20 & 0xF;
            switch(v20 >> 4)
            {
              case 0u:
                v96 = 1;
                goto LABEL_38;
              case 1u:
                LODWORD(v90) = 1;
                v19 = (v20 & 0xF);
                v34 = &v99;
                goto LABEL_33;
              case 2u:
                uleb128 = dyld3::MachOFile::read_uleb128(a2, v97, v16, v17);
                goto LABEL_26;
              case 3u:
                LODWORD(v26) = v20 | 0xFFFFFFF0;
                if ((v20 & 0xF) != 0)
                {
                  v26 = v26;
                }

                else
                {
                  v26 = 0;
                }

                uleb128 = v26;
LABEL_26:
                LODWORD(v90) = 1;
                goto LABEL_38;
              case 4u:
                if (*v19)
                {
                  v35 = (v18 + 2);
                  do
                  {
                    v97[0] = v35;
                    v36 = *v35;
                    v35 = (v35 + 1);
                  }

                  while (v36);
                  v18 = (v35 - 2);
                }

                LODWORD(v86) = v20 & 1;
                v97[0] = (v18 + 2);
                v34 = &v98;
LABEL_33:
                *(v34 - 32) = v19;
                goto LABEL_38;
              case 5u:
                break;
              case 6u:
                sleb128 = dyld3::MachOFile::read_sleb128(a2, v97, v16, v17);
                goto LABEL_38;
              case 7u:
                v15 = dyld3::MachOFile::read_uleb128(a2, v97, v16, v17);
                LODWORD(v88) = 1;
                LODWORD(v87) = v21;
                goto LABEL_38;
              case 8u:
                v15 += dyld3::MachOFile::read_uleb128(a2, v97, v16, v17);
                goto LABEL_38;
              case 9u:
                LOWORD(v80) = v86 & 1;
                LOBYTE(v79) = v14;
                BYTE4(v78) = v87;
                LODWORD(v78) = v93;
                (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND", v94, v11, v88 & 1, v90 & 1, v92, uleb128, v78, v15, v79, v85, v80, sleb128, &v96);
                v25 = v83;
                goto LABEL_23;
              case 0xAu:
                LOWORD(v80) = v86 & 1;
                LOBYTE(v79) = v14;
                BYTE4(v78) = v87;
                LODWORD(v78) = v93;
                (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB", v94, v11, v88 & 1, v90 & 1, v92, uleb128, v78, v15, v79, v85, v80, sleb128, &v96);
                v38 = dyld3::MachOFile::read_uleb128(a2, v97, v16, v37);
                v15 += v83 + v38;
                goto LABEL_38;
              case 0xBu:
                LOWORD(v80) = v86 & 1;
                LOBYTE(v79) = v14;
                BYTE4(v78) = v87;
                v22 = v16;
                v23 = v11;
                v24 = v93;
                LODWORD(v78) = v93;
                (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED", v94, v23, v88 & 1, v90 & 1, v92, uleb128, v78, v15, v79, v85, v80, sleb128, &v96);
                v25 = v24 + v24 * v21;
                v11 = v23;
                v16 = v22;
LABEL_23:
                v15 += v25;
                goto LABEL_38;
              case 0xCu:
                v27 = dyld3::MachOFile::read_uleb128(a2, v97, v16, v17);
                v29 = dyld3::MachOFile::read_uleb128(a2, v97, v16, v28);
                if (!v27)
                {
                  goto LABEL_38;
                }

                v81 = v16;
                v30 = v11;
                v31 = v29 + v83;
                v32 = 1;
                do
                {
                  LOWORD(v80) = v86 & 1;
                  LOBYTE(v79) = v14;
                  BYTE4(v78) = v87;
                  LODWORD(v78) = v93;
                  (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB", v94, v30, v88 & 1, v90 & 1, v92, uleb128, v78, v15, v79, v85, v80, sleb128, &v96);
                  v15 += v31;
                  if (v96)
                  {
                    break;
                  }

                  v33 = v32++;
                }

                while (v27 > v33);
                v21 = v14;
                v11 = v30;
                v16 = v81;
                break;
              default:
                Diagnostics::error(a2, "bad bind opcode 0x%02X", *v19);
LABEL_38:
                v21 = v14;
                break;
            }

            v14 = v21;
          }

          while (v96 != 1);
        }

        result = Diagnostics::hasError(a2);
        if ((result & 1) == 0)
        {
          uleb128 = v11;
          if (*(v94[0] + 36))
          {
            v39 = dyld3::MachOLoaded::getLinkEditContent(a1, v95, *(v94[0] + 32));
            v40 = 0;
            LODWORD(v88) = 0;
            v41 = 0;
            v42 = 0;
            LODWORD(sleb128) = 0;
            v43 = 0;
            v90 = 0;
            v44 = 0;
            v97[0] = v39;
            v45 = (v39 + *(v94[0] + 36));
            v96 = 0;
            v87 = a3 + 16;
            v86 = v93;
            do
            {
              if (!Diagnostics::noError(a2))
              {
                break;
              }

              v47 = v97[0];
              if (v97[0] >= v45)
              {
                break;
              }

              v49 = v97[0] + 1;
              v48 = *v97[0];
              v50 = *v97[0]++ & 0xF;
              v51 = v48 >> 4;
              if (v51 > 3)
              {
                if ((v48 >> 4) > 6u)
                {
                  if (v51 == 7)
                  {
                    v40 = dyld3::MachOFile::read_uleb128(a2, v97, v45, v46);
                    LODWORD(sleb128) = 1;
                    LODWORD(v88) = v50;
                  }

                  else
                  {
                    if (v51 != 9)
                    {
                      goto LABEL_69;
                    }

                    BYTE1(v80) = 1;
                    LOBYTE(v80) = v43 & 1;
                    LOBYTE(v79) = 1;
                    BYTE4(v78) = v88;
                    LODWORD(v78) = v93;
                    (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND", v94, uleb128, sleb128 & 1, v44 & 1, v92, v42, v78, v40, v79, v41, v80, v90, &v96);
                    v40 += v86;
                  }
                }

                else
                {
                  if (v51 == 4)
                  {
                    if (*v49)
                    {
                      v53 = (v47 + 2);
                      do
                      {
                        v97[0] = v53;
                        v54 = *v53;
                        v53 = (v53 + 1);
                      }

                      while (v54);
                      v47 = (v53 - 2);
                    }

                    v43 = v48 & 1;
                    v97[0] = (v47 + 2);
                    v41 = v49;
                    continue;
                  }

                  if (v51 != 6)
                  {
LABEL_69:
                    Diagnostics::error(a2, "bad lazy bind opcode 0x%02X", v48 & 0xF0);
                    continue;
                  }

                  v90 = dyld3::MachOFile::read_sleb128(a2, v97, v45, v46);
                }
              }

              else
              {
                if ((v48 >> 4) <= 1u)
                {
                  if (v48 >> 4)
                  {
                    v44 = 1;
                    v42 = v48 & 0xF;
                  }

                  continue;
                }

                if (v51 == 2)
                {
                  v42 = dyld3::MachOFile::read_uleb128(a2, v97, v45, v46);
                }

                else
                {
                  if (v51 != 3)
                  {
                    goto LABEL_69;
                  }

                  v52 = *&v48 | 0xFFFFFFF0;
                  if (v50)
                  {
                    v42 = v52;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }

                v44 = 1;
              }
            }

            while (v96 != 1);
          }

          result = Diagnostics::hasError(a2);
          if ((result & 1) == 0)
          {
            if (*(v94[0] + 28))
            {
              v55 = dyld3::MachOLoaded::getLinkEditContent(a1, v95, *(v94[0] + 24));
              v56 = 0;
              v57 = 0;
              v58 = 0;
              LODWORD(sleb128) = 0;
              v59 = 0;
              v90 = 0;
              v97[0] = v55;
              v60 = (v55 + *(v94[0] + 28));
              v96 = 0;
              v88 = a3 + 16;
              v87 = v93;
              v86 = v82 + 16;
              v61 = 1;
              do
              {
                result = Diagnostics::noError(a2);
                if (!result)
                {
                  return result;
                }

                v63 = v97[0];
                if (v97[0] >= v60)
                {
                  return result;
                }

                v65 = v97[0] + 1;
                v64 = *v97[0];
                v66 = v64 & 0xF;
                ++v97[0];
                v67 = v64 >> 4;
                if (v64 >> 4 <= 5)
                {
                  if (v64 >> 4 > 3)
                  {
                    if (v67 == 4)
                    {
                      if (*v65)
                      {
                        v76 = (v63 + 2);
                        do
                        {
                          v97[0] = v76;
                          v77 = *v76;
                          v76 = (v76 + 1);
                        }

                        while (v77);
                        v63 = (v76 - 2);
                      }

                      v59 = v64 & 1;
                      v97[0] = (v63 + 2);
                      if (v66 >= 8)
                      {
                        result = (*(v82 + 16))(v82, v65);
                      }

                      v58 = v65;
                      continue;
                    }

                    if (v67 != 5)
                    {
                      goto LABEL_112;
                    }

                    v61 = v64 & 0xF;
                  }

                  else if (v67 - 1 >= 3)
                  {
                    if (v67)
                    {
                      goto LABEL_112;
                    }

                    v96 = 1;
                  }

                  else
                  {
                    result = Diagnostics::error(a2, "unexpected dylib ordinal in weak_bind");
                  }
                }

                else if (v64 >> 4 <= 8)
                {
                  switch(v67)
                  {
                    case 6u:
                      result = dyld3::MachOFile::read_sleb128(a2, v97, v60, v62);
                      v90 = result;
                      break;
                    case 7u:
                      result = dyld3::MachOFile::read_uleb128(a2, v97, v60, v62);
                      v56 = result;
                      LODWORD(sleb128) = 1;
                      v57 = v66;
                      break;
                    case 8u:
                      result = dyld3::MachOFile::read_uleb128(a2, v97, v60, v62);
                      v56 += result;
                      break;
                    default:
                      goto LABEL_112;
                  }
                }

                else
                {
                  if (v64 >> 4 > 0xA)
                  {
                    if (v67 != 11)
                    {
                      if (v67 == 12)
                      {
                        v69 = dyld3::MachOFile::read_uleb128(a2, v97, v60, v62);
                        result = dyld3::MachOFile::read_uleb128(a2, v97, v60, v70);
                        if (v69)
                        {
                          v85 = v60;
                          v71 = result + v87;
                          v72 = 1;
                          do
                          {
                            LOWORD(v80) = v59 & 1;
                            LOBYTE(v79) = v61;
                            BYTE4(v78) = v57;
                            LODWORD(v78) = v93;
                            result = (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB", v94, uleb128, sleb128 & 1, 1, v92, 4294967293, v78, v56, v79, v58, v80, v90, &v96);
                            v56 += v71;
                            if (v96)
                            {
                              break;
                            }

                            v73 = v72++;
                          }

                          while (v69 > v73);
                          v60 = v85;
                        }

                        continue;
                      }

LABEL_112:
                      result = Diagnostics::error(a2, "bad bind opcode 0x%02X", *v65);
                      continue;
                    }

                    LOWORD(v80) = v59 & 1;
                    LOBYTE(v79) = v61;
                    BYTE4(v78) = v57;
                    v75 = v93;
                    LODWORD(v78) = v93;
                    result = (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED", v94, uleb128, sleb128 & 1, 1, v92, 4294967293, v78, v56, v79, v58, v80, v90, &v96);
                    v74 = v75 + v75 * v66;
                    goto LABEL_102;
                  }

                  if (v67 == 9)
                  {
                    LOWORD(v80) = v59 & 1;
                    LOBYTE(v79) = v61;
                    BYTE4(v78) = v57;
                    LODWORD(v78) = v93;
                    result = (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND", v94, uleb128, sleb128 & 1, 1, v92, 4294967293, v78, v56, v79, v58, v80, v90, &v96);
                    v74 = v87;
LABEL_102:
                    v56 += v74;
                    continue;
                  }

                  LOWORD(v80) = v59 & 1;
                  LOBYTE(v79) = v61;
                  BYTE4(v78) = v57;
                  LODWORD(v78) = v93;
                  (*(a3 + 16))(a3, "BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB", v94, uleb128, sleb128 & 1, 1, v92, 4294967293, v78, v56, v79, v58, v80, v90, &v96);
                  result = dyld3::MachOFile::read_uleb128(a2, v97, v60, v68);
                  v56 += v87 + result;
                }
              }

              while (v96 != 1);
            }
          }
        }
      }
    }
  }

  return result;
}

void dyld3::MachOAnalyzer::forEachBind(dyld3::MachOFile *a1, Diagnostics *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld313MachOAnalyzer11forEachBindER11DiagnosticsU13block_pointerFvyihPKcbbyRbEU13block_pointerFvS4_E_block_invoke;
  v5[3] = &unk_A3CD8;
  v5[5] = v7;
  v5[6] = v6;
  v5[4] = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5dyld313MachOAnalyzer11forEachBindER11DiagnosticsU13block_pointerFvyihPKcbbyRbEU13block_pointerFvS4_E_block_invoke_2;
  v4[3] = &unk_A3D00;
  v4[4] = a4;
  dyld3::MachOAnalyzer::forEachBind(a1, a2, v5, v4);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);
}

uint64_t ___ZNK5dyld313MachOAnalyzer11forEachBindER11DiagnosticsU13block_pointerFvyihPKcbbyRbEU13block_pointerFvS4_E_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned __int8 a10, uint64_t a11)
{
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v11 = a10 + 1;
    v12 = (a4 + 16);
    while (1)
    {
      if (*(v12 - 1) == 6)
      {
        v13 = *(v12 - 2);
        v14 = *v13;
        v15 = *(v13 + 2);
        if (v14 == 1163157343 && v15 == 21592)
        {
          break;
        }
      }

      v12 += 6;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    *(*(a1[6] + 8) + 24) = *v12;
    *(*(a1[5] + 8) + 24) = 1;
  }

LABEL_11:
  v17 = *(a4 + 48 * a10 + 16) + a11 - *(*(a1[6] + 8) + 24);
  return (*(a1[4] + 16))(a1[4]);
}

uint64_t dyld3::MachOAnalyzer::parseOrgArm64eChainedFixups(unsigned int *a1, Diagnostics *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = 0;
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, v41);
  result = Diagnostics::hasError(a2);
  if ((result & 1) == 0)
  {
    __chkstk_darwin();
    v13 = (&v30 - 2 * v12);
    if ((v14 & 1) == 0)
    {
      bzero(&v30 - 2 * v12, 48 * ((48 * v11 - 48) / 0x30) + 48);
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 0x40000000;
    v44[2] = ___ZNK5dyld313MachOAnalyzer19getAllSegmentsInfosER11DiagnosticsPN6mach_o6Header11SegmentInfoE_block_invoke;
    v44[3] = &__block_descriptor_tmp_57_1;
    v44[4] = v13;
    mach_o::Header::forEachSegment(a1, v44);
    result = Diagnostics::hasError(a2);
    if ((result & 1) == 0)
    {
      result = dyld3::MachOFile::dependentDylibCount(a1, 0);
      if (v41[0])
      {
        v33 = result;
        LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, &v42, *(v41[0] + 16));
        v40 = 0;
        uleb128 = 0;
        v38 = 0;
        sleb128 = 0;
        v16 = 0;
        v35 = 0;
        v17 = 0;
        v37 = 0;
        v34 = 0;
        v44[0] = LinkEditContent;
        v18 = (LinkEditContent + *(v41[0] + 20));
        v31 = a5 + 16;
        v30 = a3 + 16;
        v32 = a4 + 16;
        while (1)
        {
          if (!Diagnostics::noError(a2))
          {
            return Diagnostics::hasError(a2);
          }

          v20 = v44[0];
          if (v44[0] >= v18)
          {
            return Diagnostics::hasError(a2);
          }

          v21 = v44[0] + 1;
          v22 = *v44[0];
          v23 = v22 & 0xF;
          ++v44[0];
          v24 = v22 >> 4;
          if (v22 >> 4 > 4)
          {
            if (v22 >> 4 > 6)
            {
              if (v24 == 7)
              {
                uleb128 = dyld3::MachOFile::read_uleb128(a2, v44, v18, v19);
                v35 = 1;
                v28 = &v45;
                goto LABEL_37;
              }

              if (v24 == 9)
              {
                if (a4)
                {
                  LOBYTE(v29) = v38 & 1;
                  (*(a4 + 16))(a4, v41, v13, v16 & 1, v33, v17, v40, v37, sleb128, v29, &v43);
                }

                goto LABEL_48;
              }

              if (v24 != 13)
              {
                goto LABEL_44;
              }

              if (v23 == 1)
              {
                if (a5)
                {
                  (*(a5 + 16))(a5, v41, v13, v34, v35 & 1, uleb128, 1, &v43, v30, v31, v32);
                }

                goto LABEL_48;
              }

              if ((v22 & 0xF) != 0)
              {
                Diagnostics::error(a2, "bad BIND_OPCODE_THREADED sub-opcode 0x%02X");
                goto LABEL_48;
              }

              v27 = dyld3::MachOFile::read_uleb128(a2, v44, v18, v19);
              if (v27 < 0x10000)
              {
                if (a3)
                {
                  (*(a3 + 16))(a3, v27, &v43);
                }

                goto LABEL_48;
              }

              Diagnostics::error(a2, "BIND_SUBOPCODE_THREADED_SET_BIND_ORDINAL_TABLE_SIZE_ULEB size too large");
LABEL_33:
              v43 = 1;
              goto LABEL_48;
            }

            if (v24 == 5)
            {
              v28 = &v46 + 4;
LABEL_37:
              *(v28 - 64) = v23;
              goto LABEL_48;
            }

            if (v24 != 6)
            {
              goto LABEL_44;
            }

            sleb128 = dyld3::MachOFile::read_sleb128(a2, v44, v18, v19);
          }

          else if (v22 >> 4 <= 1)
          {
            if (!v24)
            {
              goto LABEL_33;
            }

            if (v24 != 1)
            {
              goto LABEL_44;
            }

            v16 = 1;
            v17 = v22 & 0xF;
          }

          else
          {
            switch(v24)
            {
              case 2u:
                v17 = dyld3::MachOFile::read_uleb128(a2, v44, v18, v19);
                break;
              case 3u:
                if ((v22 & 0xF) != 0)
                {
                  v17 = v22 | 0xFFFFFFF0;
                }

                else
                {
                  v17 = 0;
                }

                break;
              case 4u:
                if (*v21)
                {
                  v25 = (v20 + 2);
                  do
                  {
                    v44[0] = v25;
                    v26 = *v25;
                    v25 = (v25 + 1);
                  }

                  while (v26);
                  v20 = (v25 - 2);
                }

                v38 = v22 & 1;
                v44[0] = (v20 + 2);
                v37 = v21;
                goto LABEL_48;
              default:
LABEL_44:
                Diagnostics::error(a2, "bad bind opcode 0x%02X");
                goto LABEL_48;
            }

            v16 = 1;
          }

LABEL_48:
          if (v43 == 1)
          {
            return Diagnostics::hasError(a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t dyld3::MachOAnalyzer::forEachChainedFixupTarget(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, &v14);
  result = Diagnostics::hasError(a2);
  if ((result & 1) == 0)
  {
    __chkstk_darwin(result);
    v9 = &v13[-2 * v8 - 1];
    if ((v10 & 1) == 0)
    {
      bzero(&v13[-2 * v8 - 1], 48 * ((48 * v7 - 48) / 0x30) + 48);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = ___ZNK5dyld313MachOAnalyzer19getAllSegmentsInfosER11DiagnosticsPN6mach_o6Header11SegmentInfoE_block_invoke;
    v17[3] = &__block_descriptor_tmp_57_1;
    v17[4] = v9;
    mach_o::Header::forEachSegment(a1, v17);
    result = Diagnostics::hasError(a2);
    if ((result & 1) == 0)
    {
      if (v14)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 0x40000000;
        v13[2] = ___ZNK5dyld313MachOAnalyzer25forEachChainedFixupTargetER11DiagnosticsU13block_pointerFviPKcybRbE_block_invoke;
        v13[3] = &unk_A3D28;
        v13[4] = a3;
        return dyld3::MachOAnalyzer::parseOrgArm64eChainedFixups(a1, a2, 0, v13, 0);
      }

      else if (v15)
      {
        LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, &v16, *(v15 + 8));
        return dyld3::MachOFile::forEachChainedFixupTarget(a2, LinkEditContent, v15, a3);
      }
    }
  }

  return result;
}

double __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  return result;
}

void *__Block_byref_object_dispose__10(void *result)
{
  result[10] = 0;
  v1 = result[11];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[12]);
  }

  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke_3(uint64_t result, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = result;
  v6 = (*(result + 48) + a2);
  v7 = (v6 + a3);
  if (*(result + 80) == 8)
  {
    if (!a3)
    {
      return result;
    }

    while (1)
    {
      v8 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(*(v5 + 56), *v6);
      v9 = *(*(v5 + 40) + 8);
      v10 = *(v9 + 80);
      if (!v10)
      {
        break;
      }

      v11 = *(v9 + 64);
      v12 = 24 * v10;
      v13 = (v11 + 8);
      while (*(v13 - 1) > v8 || *v13 <= v8)
      {
        v13 += 3;
        v12 -= 24;
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      result = (*(*(v5 + 32) + 16))(*(v5 + 32), (v8 - *(v5 + 72)));
      if (++v6 >= v7)
      {
        return result;
      }
    }

LABEL_20:
    result = Diagnostics::error(*(v5 + 64), "initializer 0x%0llX does not point within executable segment");
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    while (1)
    {
      v14 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(*(v5 + 56), *v6);
      v15 = *(*(v5 + 40) + 8);
      v16 = *(v15 + 80);
      if (!v16)
      {
        break;
      }

      v17 = *(v15 + 64);
      v18 = 24 * v16;
      v19 = (v17 + 8);
      while (*(v19 - 1) > v14 || *v19 <= v14)
      {
        v19 += 3;
        v18 -= 24;
        if (!v18)
        {
          goto LABEL_21;
        }
      }

      result = (*(*(v5 + 32) + 16))(*(v5 + 32), v14 - *(v5 + 72));
      v6 = (v6 + 4);
      if (v6 >= v7)
      {
        return result;
      }
    }

LABEL_21:
    result = Diagnostics::error(*(v5 + 64), "initializer 0x%0X does not point within executable segment");
  }

  *a4 = 1;
  return result;
}

void dyld3::MachOAnalyzer::forEachCDHash(unsigned int *a1, uint64_t a2)
{
  Diagnostics::Diagnostics(v8);
  dyld3::MachOLoaded::getLinkEditPointers(a1, v8, &v5);
  if (!Diagnostics::hasError(v8) && v6)
  {
    LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, &v7, *(v6 + 8));
    dyld3::MachOFile::forEachCDHashOfCodeSignature(a1, LinkEditContent, *(v6 + 12), a2);
  }

  Diagnostics::~Diagnostics(v8);
}

void *___ZNK5dyld313MachOAnalyzer15withChainStartsER11DiagnosticsyU13block_pointerFvPK28dyld_chained_starts_in_imageE_block_invoke(void *result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  if (*(*(result[4] + 8) + 24) != a4)
  {
    v6 = *(*(result[5] + 8) + 24);
    if (*(*(result[4] + 8) + 24))
    {
      v7 = result[6];
      v8 = v6 + 2 * *(v6 + 20) - result[7] + 22;
      *(v7 + 4 * a4 + 4) = v8;
      *(*(result[5] + 8) + 24) = v7 + v8;
      v9 = *(*(result[5] + 8) + 24);
      if (v9 >= result[8])
      {
        ___ZNK5dyld313MachOAnalyzer15withChainStartsER11DiagnosticsyU13block_pointerFvPK28dyld_chained_starts_in_imageE_block_invoke_cold_1();
      }
    }

    else
    {
      *(result[6] + 4 * a4 + 4) = v6 - *(result + 14);
      v9 = *(*(result[5] + 8) + 24);
    }

    *(v9 + 20) = 0;
    *(*(result[4] + 8) + 24) = a4;
  }

  v10 = a6 >> 12;
  v11 = *(*(result[5] + 8) + 24);
  v12 = *(v11 + 20);
  v13 = result[8];
  if (v12 != (a6 >> 12))
  {
    do
    {
      v14 = (v11 + 2 * v12 + 22);
      if (v14 >= v13)
      {
        ___ZNK5dyld313MachOAnalyzer15withChainStartsER11DiagnosticsyU13block_pointerFvPK28dyld_chained_starts_in_imageE_block_invoke_cold_2();
      }

      *v14 = -1;
      v15 = *(*(result[5] + 8) + 24);
      ++*(v15 + 20);
      v11 = *(*(result[5] + 8) + 24);
      v12 = *(v11 + 20);
    }

    while (v12 != v10);
  }

  *v11 = 2 * (a6 >> 12) + 22;
  *(*(*(result[5] + 8) + 24) + 4) = 4096;
  *(*(*(result[5] + 8) + 24) + 6) = 1;
  *(*(*(result[5] + 8) + 24) + 8) = *(a3 + 48 * a4 + 16) - result[9];
  *(*(*(result[5] + 8) + 24) + 16) = 0;
  *(*(*(result[5] + 8) + 24) + 20) = v10 + 1;
  v16 = (*(*(result[5] + 8) + 24) + 2 * v10 + 22);
  if (v16 >= v13)
  {
    ___ZNK5dyld313MachOAnalyzer15withChainStartsER11DiagnosticsyU13block_pointerFvPK28dyld_chained_starts_in_imageE_block_invoke_cold_3();
  }

  *v16 = a6 & 0xFFF;
  return result;
}

uint64_t dyld3::MachOAnalyzer::ObjCClassInfo::getReadOnlyDataField(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 24);
  v4 = (*(a1 + 48) + v3);
  if (a3 != 8)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v5 = *(v4 + 5);
        return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
      }

      if (a2 == 3)
      {
        v5 = *(v4 + 9);
        return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
      }

LABEL_9:
      if (a2 == 4)
      {
        return *v4;
      }

      return v3;
    }

    if (!a2)
    {
      v5 = *(v4 + 4);
      return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
    }

    if (a2 == 1)
    {
      v5 = *(v4 + 6);
      return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
    }

    return v3;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      v5 = v4[3];
      return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
    }

    if (a2 == 1)
    {
      v5 = v4[5];
      return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
    }

    return v3;
  }

  if (a2 == 2)
  {
    v5 = v4[4];
    return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
  }

  if (a2 != 3)
  {
    goto LABEL_9;
  }

  v5 = v4[8];
  return dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a1 + 40, v5);
}

void dyld3::MachOAnalyzer::forEachObjCClass(dyld3::MachOFile *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (dyld3::MachOFile::pointerSize(a1) == 8)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    if (a3)
    {
      v10 = a3 - 1;
      do
      {
        v11 = v10;
        v12 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, *(a1 + a2));
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 0x40000000;
        v19[2] = ___ZNK5dyld313MachOAnalyzer16forEachObjCClassEyyRKNS0_15VMAddrConverterERU13block_pointerFvyyyRKNS0_13ObjCClassInfoEbRbE_block_invoke;
        v19[3] = &unk_A3EE0;
        v19[6] = a5;
        v19[7] = v12;
        v19[4] = &v20;
        v19[5] = a1;
        v19[8] = a4;
        memset(&v19[9], 0, 24);
        dyld3::MachOAnalyzer::parseObjCClass(a1, a4, v12, v13, v19);
        if (v21[3])
        {
          break;
        }

        v10 = v11 - 1;
        a2 += 8;
      }

      while (v11);
    }
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    if (a3)
    {
      v14 = a3 - 1;
      do
      {
        v15 = v14;
        v16 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, *(a1 + a2));
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 0x40000000;
        v18[2] = ___ZNK5dyld313MachOAnalyzer16forEachObjCClassEyyRKNS0_15VMAddrConverterERU13block_pointerFvyyyRKNS0_13ObjCClassInfoEbRbE_block_invoke_3;
        v18[3] = &unk_A3F30;
        v18[6] = a5;
        v18[7] = v16;
        v18[4] = &v20;
        v18[5] = a1;
        v18[8] = a4;
        memset(&v18[9], 0, 24);
        dyld3::MachOAnalyzer::parseObjCClass(a1, a4, v16, v17, v18);
        if (v21[3])
        {
          break;
        }

        v14 = v15 - 1;
        a2 += 4;
      }

      while (v15);
    }
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t dyld3::MachOAnalyzer::parseObjCClass(dyld3::MachOFile *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = dyld3::MachOFile::pointerSize(a1);
  memset(v21, 0, sizeof(v21));
  v10 = (dyld3::MachOLoaded::getSlide(a1) + a3);
  if (v9 != 8)
  {
    v11 = a3 + 4;
    v12 = a3 + 16;
    *v21 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, *v10);
    *&v21[8] = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, v10[1]);
    v15 = v10[3];
    if (v15)
    {
      v16 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, v15);
    }

    else
    {
      v16 = 0;
    }

    *&v21[16] = v16;
    *&v21[24] = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, v10[4]) & 0xFFFFFFFCLL;
    *v22 = *a2;
    *&v22[15] = *(a2 + 15);
    v19 = v10[4];
    v21[36] = v19 & 1;
    v21[37] = (v19 & 2) != 0;
    if (v19 & 2) != 0 || (v19)
    {
      v18 = v10[5];
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v11 = a3 + 8;
  v12 = a3 + 32;
  *v21 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, *v10);
  *&v21[8] = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, *(v10 + 1));
  v13 = *(v10 + 3);
  if (v13)
  {
    v14 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, v13);
  }

  else
  {
    v14 = 0;
  }

  *&v21[16] = v14;
  *&v21[24] = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a2, *(v10 + 4)) & 0x7FFFFFFFFFF8;
  *v22 = *a2;
  *&v22[15] = *(a2 + 15);
  v17 = *(v10 + 4);
  v21[36] = v17 & 1;
  v21[37] = (v17 & 2) != 0;
  if ((v17 & 2) == 0 && (v17 & 1) == 0)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_15;
  }

  v18 = v10[10];
LABEL_15:
  *&v21[32] = v18;
  return (*(a5 + 16))(a5, v11, v12, v21);
}

uint64_t ___ZNK5dyld313MachOAnalyzer16forEachObjCClassEyyRKNS0_15VMAddrConverterERU13block_pointerFvyyyRKNS0_13ObjCClassInfoEbRbE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  result = (*(**(a1 + 48) + 16))();
  v11 = *(a1 + 32);
  if ((*(*(v11 + 8) + 24) & 1) == 0)
  {
    v12 = *a4;
    v13 = *(a1 + 64);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___ZNK5dyld313MachOAnalyzer16forEachObjCClassEyyRKNS0_15VMAddrConverterERU13block_pointerFvyyyRKNS0_13ObjCClassInfoEbRbE_block_invoke_2;
    v14[3] = &unk_A3EB8;
    v14[5] = *(a1 + 48);
    v14[6] = v12;
    v14[4] = v11;
    return dyld3::MachOAnalyzer::parseObjCClass(v7, v13, v12, v10, v14);
  }

  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer16forEachObjCClassEyyRKNS0_15VMAddrConverterERU13block_pointerFvyyyRKNS0_13ObjCClassInfoEbRbE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  result = (*(**(a1 + 48) + 16))();
  v11 = *(a1 + 32);
  if ((*(*(v11 + 8) + 24) & 1) == 0)
  {
    v12 = *a4;
    v13 = *(a1 + 64);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___ZNK5dyld313MachOAnalyzer16forEachObjCClassEyyRKNS0_15VMAddrConverterERU13block_pointerFvyyyRKNS0_13ObjCClassInfoEbRbE_block_invoke_4;
    v14[3] = &unk_A3F08;
    v14[5] = *(a1 + 48);
    v14[6] = v12;
    v14[4] = v11;
    return dyld3::MachOAnalyzer::parseObjCClass(v7, v13, v12, v10, v14);
  }

  return result;
}

BOOL dyld3::MachOAnalyzer::isSwiftClass(dyld3::MachOAnalyzer *this, _BYTE *a2)
{
  if (dyld3::MachOFile::pointerSize(this) == 8)
  {
    v3 = a2[32];
  }

  else
  {
    v3 = a2[16];
  }

  return (v3 & 3) != 0;
}

uint64_t dyld3::MachOAnalyzer::forEachObjCCategory(dyld3::MachOFile *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = dyld3::MachOFile::pointerSize(a1);
  result = dyld3::MachOLoaded::getSlide(a1);
  v12 = result;
  v13 = (a1 + a2);
  if (v10 == 8)
  {
    v28 = 0;
    if (a3)
    {
      v14 = a3 - 1;
      do
      {
        v15 = v14;
        v16 = *v13++;
        v17 = (dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v16) + v12);
        v22 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, *v17);
        v23 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[1]);
        v24 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[2]);
        v25 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[3]);
        v26 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[4]);
        v27 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[5]);
        result = (*(*a5 + 16))();
        if (v28)
        {
          break;
        }

        v14 = v15 - 1;
      }

      while (v15);
    }
  }

  else
  {
    v28 = 0;
    if (a3)
    {
      v18 = a3 - 1;
      do
      {
        v19 = v18;
        v20 = *v13;
        v13 = (v13 + 4);
        v21 = (dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v20) + v12);
        v22 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, *v21);
        v23 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[1]);
        v24 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[2]);
        v25 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[3]);
        v26 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[4]);
        v27 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[5]);
        result = (*(*a5 + 16))();
        if (v28)
        {
          break;
        }

        v18 = v19 - 1;
      }

      while (v19);
    }
  }

  return result;
}

uint64_t dyld3::MachOAnalyzer::forEachObjCDuplicateClassToIgnore(dyld3::MachOFile *a1, uint64_t a2)
{
  v4 = dyld3::MachOFile::pointerSize(a1);
  v9 = 0;
  result = dyld3::MachOLoaded::findSectionContent(a1, "__DATA", "__objc_dupclass", &v9);
  if (result)
  {
    if (v9 % v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v9 == 0;
    }

    if (!v6)
    {
      v7 = result;
      v8 = 0;
      do
      {
        result = (*(a2 + 16))(a2, *(v7 + v8) + 8);
        v8 += v4;
      }

      while (v8 != v9);
    }
  }

  return result;
}

void dyld3::MachOAnalyzer::forEachBindTarget(unsigned int *a1, Diagnostics *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!dyld3::MachOFile::isPreload(a1))
  {
    if (dyld3::MachOFile::hasChainedFixups(a1))
    {

      dyld3::MachOAnalyzer::forEachBindTarget_ChainedFixups(a1, a2, a4);
    }

    else if (dyld3::MachOFile::hasOpcodeFixups(a1))
    {

      dyld3::MachOAnalyzer::forEachBindTarget_Opcodes(a1, a2, a3, a4, a5);
    }
  }
}

void dyld3::MachOAnalyzer::forEachBindTarget_ChainedFixups(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5dyld313MachOAnalyzer31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke;
  v7[3] = &unk_A4038;
  v7[4] = a3;
  v7[5] = v8;
  dyld3::MachOAnalyzer::forEachChainedFixupTarget(a1, a2, v7);
  if (Diagnostics::noError(a2) && dyld3::MachOFile::isMainExecutable(a1) && dyld3::MachOFile::hasWeakDefs(a1))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZNK5dyld313MachOAnalyzer31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke_2;
    v6[3] = &unk_A4060;
    v6[4] = a3;
    v6[5] = v8;
    dyld3::MachOFile::forEachTreatAsWeakDef(v6);
  }

  _Block_object_dispose(v8, 8);
}

void dyld3::MachOAnalyzer::forEachBindTarget_Opcodes(unsigned int *a1, Diagnostics *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = -1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = -1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK5dyld313MachOAnalyzer25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke;
  v6[3] = &unk_A3FE8;
  v6[4] = a4;
  v6[5] = v9;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld313MachOAnalyzer25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke_2;
  v5[3] = &unk_A4010;
  v5[4] = a5;
  v5[5] = v7;
  dyld3::MachOAnalyzer::forEachBindUnified_Opcodes(a1, a2, a3, v6, v5);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v9, 8);
}

void dyld3::MachOAnalyzer::forEachBindUnified_Opcodes(unsigned int *a1, Diagnostics *a2, char a3, uint64_t a4, uint64_t a5)
{
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, &v43);
  hasError = Diagnostics::hasError(a2);
  if (!hasError)
  {
    __chkstk_darwin(hasError);
    v13 = &v17[-2 * v12 - 1];
    if ((v14 & 1) == 0)
    {
      bzero(&v17[-2 * v12 - 1], 48 * ((48 * v11 - 48) / 0x30) + 48);
    }

    v34 = _NSConcreteStackBlock;
    v35 = 0x40000000;
    v36 = ___ZNK5dyld313MachOAnalyzer19getAllSegmentsInfosER11DiagnosticsPN6mach_o6Header11SegmentInfoE_block_invoke;
    v37 = &__block_descriptor_tmp_57_1;
    v38 = v13;
    mach_o::Header::forEachSegment(a1, &v34);
    if (!Diagnostics::hasError(a2))
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2000000000;
      v42 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x4802000000;
      v37 = __Block_byref_object_copy__235;
      v38 = __Block_byref_object_dispose__236;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 0x40000000;
      v25[2] = ___ZNK5dyld313MachOAnalyzer26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyRKNS0_14BindTargetInfoERbES8__block_invoke;
      v25[3] = &unk_A3F58;
      v28 = v45;
      v27 = v44;
      v26 = v43;
      v32 = v49;
      v31 = v48;
      v30 = v47;
      v29 = v46;
      v25[5] = &v34;
      v25[6] = &v39;
      v33 = a3;
      v25[4] = a4;
      if ((dyld3::MachOAnalyzer::forEachBind_OpcodesRegular(a1, a2, &v43, v13, v25) & 1) == 0)
      {
        v15 = dyld3::MachOAnalyzer::forEachBind_OpcodesLazy(a1, a2, &v43, v13, v25);
        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v39, 8);
        if (v15)
        {
          return;
        }

        v39 = 0;
        v40 = &v39;
        v41 = 0x2000000000;
        v42 = 0;
        v34 = 0;
        v35 = &v34;
        v36 = 0x4802000000;
        v37 = __Block_byref_object_copy__235;
        v38 = __Block_byref_object_dispose__236;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 0x40000000;
        v17[2] = ___ZNK5dyld313MachOAnalyzer26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyRKNS0_14BindTargetInfoERbES8__block_invoke_2;
        v17[3] = &unk_A3F80;
        v19 = v44;
        v18 = v43;
        v24 = v49;
        v23 = v48;
        v22 = v47;
        v20 = v45;
        v21 = v46;
        v17[6] = &v34;
        v17[7] = v13;
        v17[4] = a5;
        v17[5] = &v39;
        dyld3::MachOAnalyzer::forEachBind_OpcodesWeak(a1, a2, &v43, v13, v17, &__block_literal_global_242);
      }

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v39, 8);
    }
  }
}

__n128 __Block_byref_object_copy__235(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyRKNS0_14BindTargetInfoERbES8__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18)
{
  v18 = *(a4 + 48 * a10 + 16);
  v19 = *(a1 + 136);
  if (a17)
  {
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 24);
    *(v20 + 24) = v21 + 1;
    *(*(*(a1 + 40) + 8) + 40) = v21;
    *(*(*(a1 + 40) + 8) + 44) = a8;
    *(*(*(a1 + 40) + 8) + 48) = a13;
    *(*(*(a1 + 40) + 8) + 56) = a16;
    *(*(*(a1 + 40) + 8) + 64) = a14;
    if (a15)
    {
      v22 = *(a1 + 168);
    }

    else
    {
      v22 = 0;
    }

    *(*(*(a1 + 40) + 8) + 65) = v22 & 1;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v18 + a11 - v19, *(*(a1 + 40) + 8) + 40, a18);
}

uint64_t dyld3::MachOAnalyzer::forEachBind_OpcodesRegular(dyld3::MachOFile *a1, Diagnostics *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if (*a3)
  {
    LODWORD(v5) = *(v5 + 20);
    if (v5)
    {
      v10 = dyld3::MachOFile::pointerSize(a1);
      v46[0] = 0;
      v39 = dyld3::MachOFile::dependentDylibCount(a1, 0);
      LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, (a3 + 9), *(*a3 + 16));
      v41 = 0;
      v42 = 0;
      v12 = 0;
      v43 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v40 = 0;
      v45 = LinkEditContent;
      v38 = (LinkEditContent + *(*a3 + 20));
      v17 = v10;
      do
      {
        if (!Diagnostics::noError(a2))
        {
          break;
        }

        v19 = v45;
        if ((v45 >= v38) | v13 & 1)
        {
          break;
        }

        v20 = v45 + 1;
        v21 = *v45;
        v45 = (v45 + 1);
        v22 = v21 & 0xF;
        v13 = 1;
        switch(v21 >> 4)
        {
          case 0u:
            break;
          case 1u:
            v13 = 0;
            v15 = 1;
            v16 = v21 & 0xF;
            break;
          case 2u:
            v16 = dyld3::MachOFile::read_uleb128(a2, &v45, v38, v18);
            v13 = 0;
            goto LABEL_24;
          case 3u:
            v13 = 0;
            if ((v21 & 0xF) != 0)
            {
              v16 = v21 | 0xFFFFFFF0;
            }

            else
            {
              v16 = 0;
            }

LABEL_24:
            v15 = 1;
            break;
          case 4u:
            if (*v20)
            {
              v23 = (v19 + 2);
              do
              {
                v45 = v23;
                v24 = *v23;
                v23 = (v23 + 1);
              }

              while (v24);
              v19 = (v23 - 2);
            }

            v13 = 0;
            LOBYTE(v41) = v21 & 1;
            v45 = (v19 + 2);
            v14 = 1;
            v40 = v20;
            break;
          case 5u:
            v13 = 0;
            BYTE4(v42) = v21 & 0xF;
            break;
          case 6u:
            v43 = dyld3::MachOFile::read_sleb128(a2, &v45, v38, v18);
            v13 = 0;
            v14 = 1;
            break;
          case 7u:
            v12 = dyld3::MachOFile::read_uleb128(a2, &v45, v38, v18);
            v13 = 0;
            BYTE4(v41) = v22;
            LOBYTE(v42) = 1;
            break;
          case 8u:
            v13 = 0;
            v12 += dyld3::MachOFile::read_uleb128(a2, &v45, v38, v18);
            break;
          case 9u:
            LOBYTE(v36) = v14;
            LOWORD(v35) = v41 & 1;
            LOBYTE(v34) = BYTE4(v42);
            BYTE4(v33) = BYTE4(v41);
            LODWORD(v33) = v17;
            (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND", a3, a4, v42 & 1, v15 & 1, v39, v16, v33, v12, v34, v40, v35, v43, v36, v46);
            v14 = 0;
            v13 = 0;
            v12 += v17;
            break;
          case 0xAu:
            LOBYTE(v36) = v14;
            LOWORD(v35) = v41 & 1;
            LOBYTE(v34) = BYTE4(v42);
            BYTE4(v33) = BYTE4(v41);
            LODWORD(v33) = v17;
            (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB", a3, a4, v42 & 1, v15 & 1, v39, v16, v33, v12, v34, v40, v35, v43, v36, v46);
            v14 = 0;
            v13 = 0;
            v12 += v17 + dyld3::MachOFile::read_uleb128(a2, &v45, v38, v31);
            break;
          case 0xBu:
            LOBYTE(v36) = v14;
            LOWORD(v35) = v41 & 1;
            LOBYTE(v34) = BYTE4(v42);
            BYTE4(v33) = BYTE4(v41);
            LODWORD(v33) = v17;
            (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED", a3, a4, v42 & 1, v15 & 1, v39, v16, v33, v12, v34, v40, v35, v43, v36, v46);
            v14 = 0;
            v13 = 0;
            v12 += (v17 + v17 * v22);
            break;
          case 0xCu:
            v25 = dyld3::MachOFile::read_uleb128(a2, &v45, v38, v18);
            v27 = dyld3::MachOFile::read_uleb128(a2, &v45, v38, v26);
            if (!v25)
            {
              goto LABEL_28;
            }

            v37 = a2;
            v28 = v27 + v17;
            v29 = 1;
            do
            {
              LOBYTE(v36) = v14;
              LOWORD(v35) = v41 & 1;
              LOBYTE(v34) = BYTE4(v42);
              BYTE4(v33) = BYTE4(v41);
              LODWORD(v33) = v17;
              (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB", a3, a4, v42 & 1, v15 & 1, v39, v16, v33, v12, v34, v40, v35, v43, v36, v46);
              v14 = 0;
              v12 += v28;
              if (v46[0])
              {
                break;
              }

              v30 = v29++;
            }

            while (v25 > v30);
            v13 = 0;
            a2 = v37;
            break;
          default:
            Diagnostics::error(a2, "bad bind opcode 0x%02X", *v20);
LABEL_28:
            v13 = 0;
            break;
        }
      }

      while (v46[0] != 1);
      LOBYTE(v5) = v46[0];
    }
  }

  return v5 & 1;
}

uint64_t dyld3::MachOAnalyzer::forEachBind_OpcodesLazy(dyld3::MachOFile *a1, Diagnostics *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if (*a3)
  {
    LODWORD(v5) = *(v5 + 36);
    if (v5)
    {
      v10 = dyld3::MachOFile::pointerSize(a1);
      v38 = 0;
      v33 = dyld3::MachOFile::dependentDylibCount(a1, 0);
      LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, (a3 + 9), *(*a3 + 32));
      v12 = 0;
      v35 = 0;
      v36 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v37 = LinkEditContent;
      v17 = (LinkEditContent + *(*a3 + 36));
      v32 = v10;
      while (1)
      {
        if (!Diagnostics::noError(a2) || (v19 = v37, v37 >= v17))
        {
LABEL_32:
          LOBYTE(v5) = v38;
          return v5 & 1;
        }

        v21 = v37 + 1;
        v20 = *v37;
        v22 = *v37 & 0xF;
        v37 = (v37 + 1);
        v23 = v20 >> 4;
        if (v23 > 3)
        {
          if ((v20 >> 4) > 6u)
          {
            if (v23 == 7)
            {
              v16 = dyld3::MachOFile::read_uleb128(a2, &v37, v17, v18);
              LOBYTE(v35) = v22;
              BYTE4(v35) = 1;
            }

            else
            {
              if (v23 != 9)
              {
                goto LABEL_30;
              }

              LOBYTE(v31) = 1;
              BYTE1(v30) = 1;
              LOBYTE(v30) = v12 & 1;
              LOBYTE(v29) = 1;
              BYTE4(v28) = v35;
              LODWORD(v28) = v32;
              (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND", a3, a4, BYTE4(v35) & 1, v13 & 1, v33, v14, v28, v16, v29, v15, v30, v36, v31, &v38);
              v16 += v32;
            }
          }

          else
          {
            if (v23 == 4)
            {
              if (*v21)
              {
                v25 = (v19 + 2);
                do
                {
                  v37 = v25;
                  v26 = *v25;
                  v25 = (v25 + 1);
                }

                while (v26);
                v19 = (v25 - 2);
              }

              v12 = v20 & 1;
              v37 = (v19 + 2);
              v15 = v21;
              goto LABEL_31;
            }

            if (v23 != 6)
            {
LABEL_30:
              Diagnostics::error(a2, "bad lazy bind opcode 0x%02X", v20 & 0xF0);
              goto LABEL_31;
            }

            v36 = dyld3::MachOFile::read_sleb128(a2, &v37, v17, v18);
          }
        }

        else
        {
          if ((v20 >> 4) <= 1u)
          {
            if (v20 >> 4)
            {
              v13 = 1;
              v14 = v20 & 0xF;
            }

            goto LABEL_31;
          }

          if (v23 == 2)
          {
            v14 = dyld3::MachOFile::read_uleb128(a2, &v37, v17, v18);
          }

          else
          {
            if (v23 != 3)
            {
              goto LABEL_30;
            }

            v24 = *&v20 | 0xFFFFFFF0;
            if (v22)
            {
              v14 = v24;
            }

            else
            {
              v14 = 0;
            }
          }

          v13 = 1;
        }

LABEL_31:
        if (v38 == 1)
        {
          goto LABEL_32;
        }
      }
    }
  }

  return v5 & 1;
}

uint64_t ___ZNK5dyld313MachOAnalyzer26forEachBindUnified_OpcodesER11DiagnosticsbU13block_pointerFvyRKNS0_14BindTargetInfoERbES8__block_invoke_2(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, char *__s1, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a1[7] + 48 * a10 + 16);
  v19 = a1[18];
  v20 = *(a1[5] + 8);
  v21 = *(v20 + 24);
  if (!v21 || (v22 = *(a1[6] + 8), v23 = *(v22 + 48), v23 != __s1) || _platform_strcmp(__s1, v23) || *(v22 + 56) != a15)
  {
    *(v20 + 24) = v21 + 1;
    *(*(a1[6] + 8) + 40) = v21;
    *(*(a1[6] + 8) + 44) = -3;
    *(*(a1[6] + 8) + 48) = __s1;
    *(*(a1[6] + 8) + 56) = a15;
    *(*(a1[6] + 8) + 64) = 0;
    *(*(a1[6] + 8) + 65) = 0;
    v24 = *(a1[6] + 8);
  }

  v25 = *(a1[4] + 16);

  return v25();
}

uint64_t dyld3::MachOAnalyzer::forEachBind_OpcodesWeak(dyld3::MachOFile *a1, Diagnostics *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  if (*a3)
  {
    LODWORD(v6) = *(v6 + 28);
    if (v6)
    {
      v12 = dyld3::MachOFile::pointerSize(a1);
      v47[0] = 0;
      v40 = dyld3::MachOFile::dependentDylibCount(a1, 0);
      v13 = 0;
      v43 = 0;
      v44 = 0;
      v14 = 0;
      v15 = 0;
      LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, (a3 + 9), *(*a3 + 24));
      v38 = a6;
      v39 = (LinkEditContent + *(*a3 + 28));
      v41 = 1;
      v42 = 0;
      v16 = 1;
      while (1)
      {
        if (!Diagnostics::noError(a2) || (v18 = LinkEditContent, (LinkEditContent >= v39) | v13 & 1))
        {
LABEL_44:
          LOBYTE(v6) = v47[0];
          return v6 & 1;
        }

        v20 = LinkEditContent + 1;
        v19 = *LinkEditContent;
        v21 = v19 & 0xF;
        LinkEditContent = (LinkEditContent + 1);
        v22 = v19 >> 4;
        if (v19 >> 4 <= 5)
        {
          if (v19 >> 4 > 3)
          {
            if (v22 == 4)
            {
              if (*v20)
              {
                v30 = (v18 + 2);
                do
                {
                  LinkEditContent = v30;
                  v31 = *v30;
                  v30 = (v30 + 1);
                }

                while (v31);
                v18 = (v30 - 2);
              }

              v42 = v19 & 1;
              LinkEditContent = (v18 + 2);
              if (v21 >= 8)
              {
                (*(v38 + 16))(v38, v20);
              }

              v13 = 0;
              v16 = 1;
              v15 = v20;
              goto LABEL_43;
            }

            if (v22 != 5)
            {
              goto LABEL_41;
            }

            v13 = 0;
            v41 = v19 & 0xF;
          }

          else
          {
            if (v22 - 1 < 3)
            {
              Diagnostics::error(a2, "unexpected dylib ordinal in weak_bind");
              goto LABEL_42;
            }

            if (v22)
            {
              goto LABEL_41;
            }

            v13 = 1;
          }
        }

        else if (v19 >> 4 <= 8)
        {
          switch(v22)
          {
            case 6u:
              v44 = dyld3::MachOFile::read_sleb128(a2, &LinkEditContent, v39, v17);
              v13 = 0;
              v16 = 1;
              break;
            case 7u:
              v14 = dyld3::MachOFile::read_uleb128(a2, &LinkEditContent, v39, v17);
              v13 = 0;
              LOBYTE(v43) = v21;
              BYTE4(v43) = 1;
              break;
            case 8u:
              v13 = 0;
              v14 += dyld3::MachOFile::read_uleb128(a2, &LinkEditContent, v39, v17);
              break;
            default:
              goto LABEL_41;
          }
        }

        else
        {
          if (v19 >> 4 <= 0xA)
          {
            LOBYTE(v37) = v16;
            LOWORD(v36) = v42 & 1;
            LOBYTE(v35) = v41;
            BYTE4(v34) = v43;
            LODWORD(v34) = v12;
            if (v22 == 9)
            {
              (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND", a3, a4, BYTE4(v43) & 1, 1, v40, 4294967293, v34, v14, v35, v15, v36, v44, v37, v47);
              v16 = 0;
              v13 = 0;
              v14 += v12;
            }

            else
            {
              (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB", a3, a4, BYTE4(v43) & 1, 1, v40, 4294967293, v34, v14, v35, v15, v36, v44, v37, v47);
              v16 = 0;
              v13 = 0;
              v14 += v12 + dyld3::MachOFile::read_uleb128(a2, &LinkEditContent, v39, v23);
            }

            goto LABEL_43;
          }

          if (v22 != 11)
          {
            if (v22 == 12)
            {
              v24 = dyld3::MachOFile::read_uleb128(a2, &LinkEditContent, v39, v17);
              v26 = dyld3::MachOFile::read_uleb128(a2, &LinkEditContent, v39, v25);
              if (v24)
              {
                v27 = v26 + v12;
                v28 = 1;
                do
                {
                  LOBYTE(v37) = v16;
                  LOWORD(v36) = v42 & 1;
                  LOBYTE(v35) = v41;
                  BYTE4(v34) = v43;
                  LODWORD(v34) = v12;
                  (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB", a3, a4, BYTE4(v43) & 1, 1, v40, 4294967293, v34, v14, v35, v15, v36, v44, v37, v47);
                  v16 = 0;
                  v14 += v27;
                  if (v47[0])
                  {
                    break;
                  }

                  v29 = v28++;
                }

                while (v24 > v29);
                v13 = 0;
                goto LABEL_43;
              }
            }

            else
            {
LABEL_41:
              v32 = *v20;
              Diagnostics::error(a2, "bad bind opcode 0x%02X");
            }

LABEL_42:
            v13 = 0;
            goto LABEL_43;
          }

          LOBYTE(v37) = v16;
          LOWORD(v36) = v42 & 1;
          LOBYTE(v35) = v41;
          BYTE4(v34) = v43;
          LODWORD(v34) = v12;
          (*(a5 + 16))(a5, "BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED", a3, a4, BYTE4(v43) & 1, 1, v40, 4294967293, v34, v14, v35, v15, v36, v44, v37, v47);
          v16 = 0;
          v13 = 0;
          v14 += v12 + v12 * v21;
        }

LABEL_43:
        if (v47[0] == 1)
        {
          goto LABEL_44;
        }
      }
    }
  }

  return v6 & 1;
}

uint64_t ___ZNK5dyld313MachOAnalyzer25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(*(*(result + 40) + 8) + 24) != *a3)
  {
    v4 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v4 + 40) + 8) + 24) = *a3;
  }

  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer25forEachBindTarget_OpcodesER11DiagnosticsbU13block_pointerFvRKNS0_14BindTargetInfoERbES8__block_invoke_2(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(*(*(result + 40) + 8) + 24) != *a3)
  {
    v4 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v4 + 40) + 8) + 24) = *a3;
  }

  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v10[0] = *(*(*(v8 + 8) + 8) + 24);
  v10[1] = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = 0;
  result = (*(v7 + 16))(v7, v10, a6, a4);
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v7 = *(*(*(v4 + 8) + 8) + 24);
  v8 = -3;
  v9 = a2;
  v10 = 0;
  v11 = 0;
  v6 = 0;
  result = (*(v3 + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void dyld3::MachOAnalyzer::forEachBindLocation_Opcodes(unsigned int *a1, Diagnostics *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld313MachOAnalyzer27forEachBindLocation_OpcodesER11DiagnosticsU13block_pointerFvyjRbES5__block_invoke;
  v5[3] = &unk_A4088;
  v5[4] = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5dyld313MachOAnalyzer27forEachBindLocation_OpcodesER11DiagnosticsU13block_pointerFvyjRbES5__block_invoke_2;
  v4[3] = &unk_A40B0;
  v4[4] = a4;
  dyld3::MachOAnalyzer::forEachBindUnified_Opcodes(a1, a2, 0, v5, v4);
}

uint64_t dyld3::MachOAnalyzer::forEachRebaseLocation_Opcodes(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  dyld3::MachOLoaded::getLinkEditPointers(a1, a2, v21);
  hasError = Diagnostics::hasError(a2);
  if (hasError)
  {
    return 0;
  }

  __chkstk_darwin(hasError);
  v10 = &v13[-2 * v9 - 1];
  if ((v11 & 1) == 0)
  {
    bzero(&v13[-2 * v9 - 1], 48 * ((48 * v8 - 48) / 0x30) + 48);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 0x40000000;
  v22[2] = ___ZNK5dyld313MachOAnalyzer19getAllSegmentsInfosER11DiagnosticsPN6mach_o6Header11SegmentInfoE_block_invoke;
  v22[3] = &__block_descriptor_tmp_57_1;
  v22[4] = v10;
  mach_o::Header::forEachSegment(a1, v22);
  if (Diagnostics::hasError(a2))
  {
    return 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = ___ZNK5dyld313MachOAnalyzer29forEachRebaseLocation_OpcodesER11DiagnosticsU13block_pointerFvyRbE_block_invoke;
  v13[3] = &unk_A40D8;
  v17 = v21[3];
  v18 = v21[4];
  v19 = v21[5];
  v20 = v21[6];
  v14 = v21[0];
  v15 = v21[1];
  v16 = v21[2];
  v13[4] = a3;
  return dyld3::MachOAnalyzer::forEachRebase_Opcodes(a1, a2, v21, v10, v13);
}

uint64_t dyld3::MachOAnalyzer::forEachRebase_Opcodes(dyld3::MachOFile *a1, Diagnostics *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (dyld3::MachOFile::is64(a1))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v42 = v10;
  if (!*a3)
  {
    dyld3::MachOAnalyzer::forEachRebase_Opcodes();
  }

  LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, a3 + 72, *(*a3 + 8));
  v12 = *(*a3 + 12);
  v44 = LinkEditContent;
  v45 = (LinkEditContent + v12);
  v48 = LinkEditContent;
  v13 = 0;
  v14 = 0;
  v46 = 0;
  v15 = 0;
  v47 = 0;
  v16 = dyld3::MachOFile::pointerSize(a1);
  v43 = v12;
  v17 = v45;
  while (Diagnostics::noError(a2) && v48 < v17)
  {
    v21 = *v48;
    v20 = v48 + 1;
    v19 = *v48;
    v22 = *v48 & 0xF;
    v48 = (v48 + 1);
    v23 = v21 >> 4;
    if (v23 <= 3)
    {
      if (v23 <= 1)
      {
        if (v23)
        {
          switch(v22)
          {
            case 1u:
              v13 = v42;
              break;
            case 3u:
              v13 = 3;
              break;
            case 2u:
              v13 = 4;
              break;
            default:
              v13 = 0;
              break;
          }
        }

        else
        {
          if (v17 - v20 >= 16)
          {
            Diagnostics::error(a2, "rebase opcodes terminated early at offset %d of %d", v20 - v44, v43);
          }

          v47 = 1;
        }

        goto LABEL_51;
      }

      if (v23 == 2)
      {
        v15 = dyld3::MachOFile::read_uleb128(a2, &v48, v17, v18);
        v46 = 1;
        v14 = v22;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_47;
        }

        v15 += dyld3::MachOFile::read_uleb128(a2, &v48, v17, v18);
      }
    }

    else if (v23 <= 5)
    {
      if (v23 == 4)
      {
        v15 += v16 * v22;
        goto LABEL_51;
      }

      if (v23 != 5)
      {
LABEL_47:
        Diagnostics::error(a2, "unknown rebase opcode 0x%02X", v19 & 0xF0);
        goto LABEL_51;
      }

      if (v22)
      {
        v32 = 1;
        do
        {
          LODWORD(v40) = v13;
          (*(a5 + 16))(a5, "REBASE_OPCODE_DO_REBASE_IMM_TIMES", a3, a4, v46 & 1, v16, v14, v15, v40, &v47);
          v15 += v16;
          if (v47)
          {
            break;
          }
        }

        while (v32++ < v22);
        goto LABEL_44;
      }
    }

    else
    {
      if (v23 != 6)
      {
        if (v23 == 7)
        {
          LODWORD(v40) = v13;
          (*(a5 + 16))(a5, "REBASE_OPCODE_DO_REBASE_ADD_ADDR_ULEB", a3, a4, v46 & 1, v16, v14, v15, v40, &v47);
          v15 += v16 + dyld3::MachOFile::read_uleb128(a2, &v48, v17, v38);
          goto LABEL_51;
        }

        if (v23 != 8)
        {
          goto LABEL_47;
        }

        v24 = dyld3::MachOFile::read_uleb128(a2, &v48, v17, v18);
        if (Diagnostics::hasError(a2))
        {
          goto LABEL_51;
        }

        v26 = dyld3::MachOFile::read_uleb128(a2, &v48, v17, v25);
        if (!v24)
        {
          goto LABEL_51;
        }

        v41 = a2;
        v27 = a3;
        v28 = a4;
        v29 = v26 + v16;
        v30 = 1;
        do
        {
          (*(a5 + 16))(a5, "REBASE_OPCODE_DO_REBASE_ULEB_TIMES_SKIPPING_ULEB", v27, v28, v46 & 1, v16, v14, v15, v13, &v47);
          v15 += v29;
          if (v47)
          {
            break;
          }

          v31 = v30++;
        }

        while (v24 > v31);
        a4 = v28;
        a3 = v27;
        a2 = v41;
        goto LABEL_44;
      }

      v34 = dyld3::MachOFile::read_uleb128(a2, &v48, v17, v18);
      if (v34)
      {
        v35 = v34;
        v36 = 1;
        do
        {
          LODWORD(v40) = v13;
          (*(a5 + 16))(a5, "REBASE_OPCODE_DO_REBASE_ULEB_TIMES", a3, a4, v46 & 1, v16, v14, v15, v40, &v47);
          v15 += v16;
          if (v47)
          {
            break;
          }

          v37 = v36++;
        }

        while (v35 > v37);
LABEL_44:
        v17 = v45;
      }
    }

LABEL_51:
    if (v47 == 1)
    {
      return v47 & 1;
    }
  }

  return v47 & 1;
}

void *dyld3::OverflowSafeArray<dyld3::SegmentRanges::SegmentRange,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 24 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  v8 = vm_allocate(mach_task_self_, address + 3, v7, 1006632961);
  if (v8)
  {
    ___ZNK15DyldSharedCache34forEachPatchableUseOfExportInImageEjjjU13block_pointerFvjN5dyld39MachOFile15PointerMetaDataEybE_block_invoke_2_cold_1(v12, v5, v8);
  }

  result = memmove(address[3], *address, 24 * address[2]);
  v10 = address[4] / 0x18;
  *address = address[3];
  address[1] = v10;
  if (v3)
  {
    v11 = mach_task_self_;

    return vm_deallocate(v11, v3, v4);
  }

  return result;
}

uint64_t metadata_visitor::Visitor::getValueFor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((a3 & 1) == 0 || (*(result + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  *a4 = *(result + 8) + a2 - *(result + 16);
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double Diagnostics::Diagnostics(double *a1, double *a2)
{
  *a1 = 0.0;
  a1[1] = 0.0;
  if (*a2)
  {
    v2 = *a2;
  }

  *a1 = *a2;
  result = a2[1];
  a1[1] = result;
  *a2 = 0.0;
  a2[1] = 0.0;
  return result;
}

void *Diagnostics::errorMessage(Diagnostics *this)
{
  v1 = *this;
  result = &unk_91735;
  if (v1)
  {
    return v1;
  }

  return result;
}

void *PropertyList::Data::Data(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a1 = &off_A4170;
  a1[1] = 0x27FFFFFFFFFFFFFELL;
  a1[2] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  lsl::Vector<std::byte>::insert<std::byte*>((a1 + 2), 0, a3, &a3[a4]);
  return a1;
}

void *PropertyList::Array::deallocate(void *this)
{
  if ((this[1] & 0x8000000000000000) == 0)
  {
    v1 = this[4];
    if (v1)
    {
      v2 = this[3];
      v3 = 8 * v1;
      do
      {
        v4 = *v2++;
        this = (*(*v4 + 8))(v4);
        v3 -= 8;
      }

      while (v3);
    }
  }

  return this;
}

void *PropertyList::Dictionary::deallocate(void *this)
{
  if ((this[1] & 0x8000000000000000) == 0)
  {
    v1 = this;
    v2 = this[4];
    if (v2)
    {
      v3 = this[3];
      v4 = 8 * v2;
      do
      {
        v5 = *v3++;
        this = (*(*v5 + 8))(v5);
        v4 -= 8;
      }

      while (v4);
    }

    v6 = v1[8];
    if (v6)
    {
      v7 = v1[7];
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        this = (*(*v9 + 8))(v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return this;
}

uint64_t *lsl::Vector<unsigned short>::resize(uint64_t *result, unint64_t a2)
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

      return lsl::Allocator::realloc(v4, v5, 2 * a2);
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
    result = lsl::Vector<unsigned short>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

uint64_t lsl::Vector<unsigned short>::reserve(uint64_t result, unint64_t a2)
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

    return lsl::Vector<unsigned short>::reserveExact(result, v2);
  }

  return result;
}

uint64_t lsl::Vector<unsigned short>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 2 * a2);
    if (result)
    {
LABEL_12:
      *(v3 + 24) = a2;
      return result;
    }

    result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 2 * a2);
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

uint64_t dyld4::FileManager::fsidForUUID(dyld4::FileManager *this, const UUID *a2)
{
  v4 = *(this + 2);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v45 = v4;
  v5 = lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++(&v45);
  v6 = *v5;
  v7 = *(v5 + 13);
  v8 = *(v5 + 11);
  v9 = v5[15];
  v10 = v5[16];
  v39 = *(v5 + 9);
  v40 = v8;
  v41 = v7;
  v42 = v9;
  v11 = *(v5 + 7);
  v12 = *(v5 + 5);
  v13 = *(v5 + 3);
  v35 = *(v5 + 1);
  v36 = v13;
  v37 = v12;
  v38 = v11;
  *&v43[7] = *(v5 + 135);
  *v43 = v10;
  LOBYTE(v9) = *(v5 + 143);
  v34 = v6;
  v44 = v9;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = v4;
  memset(v53, 0, sizeof(v53));
  if (lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v34, &v45))
  {
    while (1)
    {
      v14 = 0;
      v15 = *(&v35 + v44 - 1) + 24 * v43[v44 - 1];
      do
      {
        v16 = *(v15 + 8 + v14);
        v17 = (*a2)[v14];
      }

      while (v16 == v17 && v14++ != 15);
      if (v16 == v17)
      {
        break;
      }

      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++(&v34);
      if (!lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v34, &v45))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    dyld4::FileManager::reloadFSInfos(this);
    v19 = *(this + 2);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    memset(v53, 0, sizeof(v53));
    v45 = v19;
    v20 = lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++(&v45);
    v21 = *v20;
    v22 = *(v20 + 13);
    v23 = *(v20 + 11);
    v24 = v20[15];
    v25 = v20[16];
    v39 = *(v20 + 9);
    v40 = v23;
    v41 = v22;
    v42 = v24;
    v26 = *(v20 + 7);
    v27 = *(v20 + 5);
    v28 = *(v20 + 3);
    v35 = *(v20 + 1);
    v36 = v28;
    v37 = v27;
    v38 = v26;
    *&v43[7] = *(v20 + 135);
    *v43 = v25;
    LOBYTE(v24) = *(v20 + 143);
    v34 = v21;
    v44 = v24;
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v45 = v19;
    memset(v53, 0, sizeof(v53));
    if (!lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v34, &v45))
    {
      return 0;
    }

    while (1)
    {
      v29 = 0;
      v15 = *(&v35 + v44 - 1) + 24 * v43[v44 - 1];
      do
      {
        v30 = *(v15 + 8 + v29);
        v31 = (*a2)[v29];
      }

      while (v30 == v31 && v29++ != 15);
      if (v30 == v31)
      {
        break;
      }

      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++(&v34);
      if (!lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v34, &v45))
      {
        return 0;
      }
    }
  }

  return *v15;
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
    v6 = this;
    if (dyld4::SyscallDelegate::fsgetpath(*this, __s, 0x400uLL, a2, a3) == -1)
    {
      this = 0;
    }

    else
    {
      this = lsl::Allocator::strdup(*(v6 + 1), __s);
    }

    *a4 = this;
  }

  else
  {
    *a4 = 0;
  }

  return this;
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
      this = stat64(Path, &v11);
    }

    else
    {
      this = fstat64(v4, &v11);
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

uint64_t **lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++(uint64_t **result)
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
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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

lsl::Allocator::Pool **lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&,lsl::Vector<dyld4::Atlas::Mapper::Mapping> &>@<X0>(lsl::Allocator::Pool **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, lsl::Allocator::Pool **a4@<X8>)
{
  v7 = lsl::Allocator::aligned_alloc(a1, 8uLL, 0x30uLL);
  v8 = lsl::Vector<dyld4::Atlas::Mapper::Mapping>::Vector(v7, a3, a2);
  v8[4] = 0;
  v8[5] = a2;

  return lsl::SharedPtr<dyld4::Atlas::Mapper>::SharedPtr(a4, v7);
}

void dyld4::Atlas::Mapper::mapperForMachO(dyld4::FileRecord *this@<X1>, lsl::Allocator::Pool **a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, lsl::Allocator::Pool **a5@<X8>)
{
  Path = dyld4::FileRecord::getPath(this);
  v10 = dyld3::open(Path, 0, 0);
  if (v10 == -1)
  {
    goto LABEL_20;
  }

  v11 = v10;
  if (fstat64(v10, &v35) == -1 || (v12 = mmap(0, v35.st_size, 1, 8194, v11, 0), v12 == -1))
  {
    v10 = v11;
LABEL_20:
    close(v10);
    *a5 = 0;
    return;
  }

  v14 = v12;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v15 = dyld3::FatFile::isFatFile(v12, v13);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2000000000;
  v30[3] = 0;
  v16 = &loc_8B000;
  if (v15)
  {
    v17 = v15;
    st_size = v35.st_size;
    Diagnostics::Diagnostics(&v39);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 0x40000000;
    v29[2] = ___ZN5dyld45Atlas6Mapper14mapperForMachOERN3lsl9AllocatorERNS_10FileRecordERKNS2_4UUIDENS0_11SafePointerE_block_invoke;
    v29[3] = &unk_A4260;
    v29[4] = &v31;
    v29[5] = v30;
    v29[6] = a3;
    v29[7] = v17;
    v19 = st_size;
    v16 = &loc_8B000;
    dyld3::FatFile::forEachSlice(v17, &v39, v19, v29);
    Diagnostics::clearError(&v39);
    Diagnostics::~Diagnostics(&v39);
  }

  if (!v32[3])
  {
    v20 = mach_o::Header::isMachO(v14, v35.st_size);
    if (v20)
    {
      v21 = v20;
      v39 = 0uLL;
      mach_o::Header::getUuid(v20, &v39);
      v22 = 0;
      v36 = v39;
      do
      {
        v23 = *(a3 + v22);
        v24 = *(&v36 + v22);
      }

      while (v23 == v24 && v22++ != 15);
      if (v23 == v24)
      {
        v32[3] = v21;
      }
    }
  }

  v26 = v32[3];
  if (v26)
  {
    *&v39 = 0;
    *(&v39 + 1) = &v39;
    v40 = 0x4802000000;
    v41 = __Block_byref_object_copy__11;
    v42 = __Block_byref_object_dispose__11;
    v43 = a2;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    *&v36 = 0;
    *(&v36 + 1) = &v36;
    v37 = 0x2000000000;
    v38 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = v16[501];
    v27[2] = ___ZN5dyld45Atlas6Mapper14mapperForMachOERN3lsl9AllocatorERNS_10FileRecordERKNS2_4UUIDENS0_11SafePointerE_block_invoke_3;
    v27[3] = &unk_A4288;
    v27[4] = &v36;
    v27[5] = &v39;
    v27[6] = v30;
    v27[7] = a4;
    v28 = v11;
    mach_o::Header::forEachSegment(v26, v27);
    munmap(v14, v35.st_size);
    lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&,lsl::Vector<dyld4::Atlas::Mapper::Mapping> &>(a2, a2, *(&v39 + 1) + 40, a5);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v39, 8);
    if (v44)
    {
      lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(&v43, 0);
    }
  }

  else
  {
    munmap(v14, v35.st_size);
    close(v11);
    *a5 = 0;
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v31, 8);
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

uint64_t *__Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0u;
  result = (a1 + 40);
  *(result + 1) = 0u;
  v3 = (a2 + 40);
  if (result != v3)
  {
    v4 = *result;
    *result = *v3;
    *v3 = v4;
    v6 = result[1];
    v5 = result[2];
    v7 = v3[2];
    result[1] = v3[1];
    result[2] = v7;
    v3[2] = v5;
    v8 = result[3];
    result[3] = v3[3];
    v3[3] = v8;
    v3[1] = v6;
  }

  return result;
}

uint64_t *__Block_byref_object_dispose__11(uint64_t *result)
{
  if (result[6])
  {
    return lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(result + 5, 0);
  }

  return result;
}

uint64_t ___ZN5dyld45Atlas6Mapper14mapperForMachOERN3lsl9AllocatorERNS_10FileRecordERKNS2_4UUIDENS0_11SafePointerE_block_invoke_3(uint64_t a1, uint64_t a2)
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
  result = lsl::Vector<dyld4::ObjCClassReplacement>::reserve(v3 + 40, *(v3 + 56) + 1);
  v9 = *(v3 + 48) + 32 * *(v3 + 56);
  *v9 = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  ++*(v3 + 56);
  return result;
}

uint64_t dyld4::Atlas::Image::Image(uint64_t a1, uint64_t a2, dyld4::FileRecord *a3, atomic_uint **a4, uint64_t a5)
{
  *a1 = a2;
  dyld4::FileRecord::FileRecord(a1 + 8, a3);
  v8 = *a4;
  *(a1 + 88) = *a4;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 1u, memory_order_relaxed);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a5;
  *(a1 + 183) = 0;
  return a1;
}

void *std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,char const**,char [4],std::__identity,lsl::ConstCharStarCompare>(void *result, unsigned __int8 *a2, unint64_t a3)
{
  if (a3)
  {
    v5 = *a2;
    v3 = a2 + 1;
    v4 = v5;
    do
    {
      v6 = a3 >> 1;
      v7 = &result[a3 >> 1];
      v8 = **v7;
      if (v8 < v4)
      {
LABEL_9:
        result = v7 + 1;
        v6 = a3 + ~v6;
      }

      else
      {
        v9 = (*v7 + 1);
        v10 = v3;
        v11 = v4;
        while (v11 && v11 >= v8)
        {
          if (v8)
          {
            v12 = *v9++;
            v8 = v12;
            v13 = *v10++;
            v11 = v13;
            if (v8 >= v13)
            {
              continue;
            }
          }

          goto LABEL_9;
        }
      }

      a3 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(uint64_t *result, unint64_t a2)
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

      return lsl::Allocator::realloc(v4, v5, 32 * a2);
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
    result = lsl::Vector<dyld4::ObjCClassReplacement>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

void *lsl::Vector<dyld4::Atlas::Mapper::Mapping>::Vector(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = 0;
  v5 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  lsl::Vector<dyld4::ObjCClassReplacement>::reserve(a1, *(a2 + 16));
  v6 = *(a2 + 16);
  a1[2] = v6;
  if (v6)
  {
    memmove(*v5, *(a2 + 8), 32 * v6);
  }

  return a1;
}

char *lsl::BTree<char const*,lsl::ConstCharStarCompare,false>::NodeCore<31u,15u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator::Pool **this)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 248);
  if (v4 >= 0xFu)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
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
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
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
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  return result;
}

char *lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator::Pool **this)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  v4 = *(a1 + 248);
  if (v4 >= 0xFu)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
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
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
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
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
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
    v4 = vorrq_s8(vdupq_n_s64(v2), xmmword_8C9A0);
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
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
  }

  *(result + 120) = a2;
  return result;
}

unsigned __int8 *lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator--(unsigned __int8 *result)
{
  v1 = result[116];
  v2 = *result;
  if (result[116])
  {
    if (v1 == *(*result + 32))
    {
      v3 = result + 104;
      v4 = v1 - 1;
      v5 = &result[v1 + 103];
      v6 = *v5;
      if (!result[(v1 - 1) + 104])
      {
        if (!*v5)
        {
          do
          {
            LODWORD(v1) = v1 - 1;
            result[116] = v1;
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
      v16 = result + 104;
      do
      {
        v17 = *&v15[8 * v1 - 8];
        if (*(v17 + 248) < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v18 = *(v17 + 8 * v16[v1 - 1] + 160);
        *&v15[8 * v1] = v18;
        v16[v1] = *(v18 + 248) & 0x7F;
        LOBYTE(v1) = result[116] + 1;
        result[116] = v1;
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
        result[v7 + 104] = *(v8 + 248) & 0x7F;
        v10 = result[116];
        v11 = *(v2 + 32);
        if (v10 + 1 != v11)
        {
          v12 = *&v9[8 * v10];
          v13 = *(v12 + 248);
          if (v13 < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          v8 = *(v12 + 8 * v13 + 160);
        }

        v7 = v10 + 1;
        result[116] = v7;
      }

      while (v11 > v7);
      v14 = v7 - 1;
    }

    else
    {
      v14 = -1;
    }

    v5 = &result[v14 + 104];
    v6 = *v5;
  }

  *v5 = v6 - 1;
  return result;
}

unsigned __int8 *lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[116];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 248) >= 0)
  {
    v4 = 10;
  }

  else
  {
    v4 = 15;
  }

  if ((*(*&result[8 * v1] + 248) & 0x7F) == v4)
  {
    if (!result[116])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v3[v5] + 248) >= 0)
      {
        v7 = 10;
      }

      else
      {
        v7 = 15;
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
        v8 = 10;
      }

      else
      {
        v8 = 15;
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
        *(result + 7) = 0u;
        *(result + 8) = 0u;
        *(result + 9) = 0u;
        *(result + 20) = v9;
        **v2 = result;
        if (v2[116] && (result = memmove(v2 + 105, v2 + 104, v2[116]), v2[116]))
        {
          result = memmove(v3 + 1, v3, 8 * v2[116]);
          LOBYTE(v1) = v2[116] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[104] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[116] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 104;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::splitChild(v3[v12], v11[v12], *(*v2 + 8));
        v14 = v3[v12];
        if (*(v14 + 248) < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 160);
        v17 = v2[v12 + 105];
        if (v17 > (*(v16 + 248) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 105] = v17 + (~*(v16 + 248) | 0x80);
          v19 = v3[v12];
          if (*(v19 + 248) < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 160);
        }

        ++v12;
      }

      while (v13 + 2 < v2[116]);
    }
  }

  return result;
}

void *lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator::Pool **this)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 248);
  if (v4 >= 0xAu)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  v6 = a1 + 160;
  v7 = (a1 + 160 + 8 * a2);
  v8 = *(*v7 + 248);
  v9 = v8;
  v10 = v8 & 0x7F;
  if (v8 >= 0)
  {
    v11 = 10;
  }

  else
  {
    v11 = 15;
  }

  if (v10 != v11)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  v13 = a2;
  if (v9 >= 0)
  {
    v14 = 5;
  }

  else
  {
    v14 = 7;
  }

  if (16 * a2 != 16 * v3)
  {
    memmove((a1 + 16 * a2 + 16), (a1 + 16 * a2), 16 * v3 - 16 * a2);
    v4 = *(a1 + 248);
    if (v4 < 0)
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
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
  *(a1 + 16 * v13) = *(*v7 + 16 * v14);
  v18 = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v19 = v18;
  v20 = *(*v7 + 248);
  *(v18 + 248) = v20 & 0x80;
  if (v20 < 0)
  {
    *(v18 + 13) = 0uLL;
    *(v18 + 14) = 0uLL;
    *(v18 + 11) = 0uLL;
    *(v18 + 12) = 0uLL;
    *(v18 + 10) = 0uLL;
  }

  *(v18 + 8) = 0uLL;
  *(v18 + 9) = 0uLL;
  *(v18 + 6) = 0uLL;
  *(v18 + 7) = 0uLL;
  *(v18 + 4) = 0uLL;
  *(v18 + 5) = 0uLL;
  *(v18 + 2) = 0uLL;
  *(v18 + 3) = 0uLL;
  *v18 = 0uLL;
  *(v18 + 1) = 0uLL;
  if (*(a1 + 248) < 0)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
  }

  v21 = v10 + ~v14;
  v7[1] = v18;
  result = memmove(v18, (*v7 + 16 * v14 + 16), 16 * v21);
  v23 = *v7;
  v24 = *(*v7 + 248);
  if ((v24 & 0x80000000) == 0)
  {
    if (*(v19 + 248) < 0)
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
    }

    result = memmove(v19 + 160, (v23 + 8 * v14 + 168), 8 * v21 + 8);
    v23 = *v7;
    LOBYTE(v24) = *(*v7 + 248);
  }

  *(v23 + 248) = v24 + ~v21;
  v25 = *(v19 + 248) + v21;
  *(v19 + 248) = v25;
  if (v25 >= 0)
  {
    v26 = 10;
  }

  else
  {
    v26 = 15;
  }

  if ((v25 & 0x7F) == v26 || ((v27 = *(v23 + 248), v28 = v27, v29 = v27 & 0x7F, v28 >= 0) ? (v30 = 10) : (v30 = 15), v29 == v30))
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  return result;
}

uint64_t amfi_load_trust_cache(char a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v11 = -1431655766;
  v14 = -1431655766;
  LOBYTE(v9[0]) = a1;
  v9[1] = a2;
  v10 = a3;
  v12 = a4;
  v13 = a5;
  v15 = a6;
  v17 = -1431655766;
  v16 = a7;
  return __sandbox_ms("AMFI", &stru_20.flags + 1, v9, a4, a5, a6, a7, a8);
}

uint32_t arc4random(void)
{
  os_unfair_lock_lock(&arc4_lock);
  v0 = arc4_count;
  if (arc4_count > 0)
  {
    v1 = rs_stired;
  }

  else
  {
    v1 = 0;
  }

  if ((v1 & 1) == 0)
  {
    arc4_stir();
    v0 = arc4_count;
  }

  v2 = rs;
  v3 = (rs + 1);
  v4 = byte_A802A[v3];
  v5 = byte_A8029 + v4;
  v6 = (byte_A8029 + v4);
  v7 = byte_A802A[v6];
  byte_A802A[v3] = v7;
  byte_A802A[v6] = v4;
  v8 = byte_A802A[(v7 + v4)];
  v9 = (v2 + 2);
  v10 = byte_A802A[v9];
  v11 = v10 + v5;
  v12 = byte_A802A[v11];
  byte_A802A[v9] = v12;
  byte_A802A[v11] = v10;
  v13 = byte_A802A[(v12 + v10)];
  v14 = (v2 + 3);
  v15 = byte_A802A[v14];
  v16 = v15 + v11;
  v17 = byte_A802A[v16];
  byte_A802A[v14] = v17;
  byte_A802A[v16] = v15;
  v18 = byte_A802A[(v17 + v15)];
  rs = v2 + 4;
  v19 = (v2 + 4);
  LOBYTE(v14) = byte_A802A[v19];
  byte_A8029 = v14 + v16;
  v20 = (v14 + v16);
  v21 = byte_A802A[v20];
  byte_A802A[v19] = v21;
  byte_A802A[v20] = v14;
  v22 = byte_A802A[(v21 + v14)];
  arc4_count = v0 - 4;
  os_unfair_lock_unlock(&arc4_lock);
  if ((v1 & 1) == 0)
  {
    arc4_fetch();
    rs_data_available = 1;
    __dmb(0xBu);
  }

  return (v8 << 24) | (v13 << 16) | (v18 << 8) | v22;
}

uint64_t arc4_fetch()
{
  result = getentropy(&rdat, 0x80uLL);
  if (result)
  {
    v1 = open("/dev/random", 0, 0);
    if (v1 == -1 || (v2 = v1, v3 = read(v1, &rdat, 0x80uLL), v3 == -1))
    {
LABEL_8:
      abort();
    }

    v4 = &rdat;
    v5 = 128;
    while (1)
    {
      v6 = v5 > v3;
      v5 -= v3;
      if (!v6)
      {
        break;
      }

      v4 += v3;
      v3 = read(v2, v4, v5);
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    return close(v2);
  }

  return result;
}

uint64_t arc4_stir()
{
  if (!rs_data_available)
  {
    result = arc4_fetch();
  }

  v1 = 0;
  rs_data_available = 0;
  __dmb(0xBu);
  v2 = rs - 1;
  v3 = byte_A8029;
  do
  {
    v4 = byte_A802A[++v2];
    v3 += v4 + rdat[v1 & 0x7F];
    byte_A802A[v2] = byte_A802A[v3];
    byte_A802A[v3] = v4;
    ++v1;
  }

  while (v1 != 256);
  v5 = 1024;
  v6 = v2;
  do
  {
    v7 = byte_A802A[++v6];
    v2 += v7;
    byte_A802A[v6] = byte_A802A[v2];
    byte_A802A[v2] = v7;
    --v5;
  }

  while (v5);
  rs = v6;
  byte_A8029 = v2;
  arc4_count = 1600000;
  rs_stired = 1;
  return result;
}

_BYTE *extract_next_subsystem_root_path(void *a1, char *__s)
{
  v4 = _platform_strlen(__s);
  v5 = _platform_memchr(__s, 58, v4);
  if (v5)
  {
    v4 = v5 - __s;
  }

  if (v4 > 0x3FF)
  {
    return 0;
  }

  v7 = v5;
  memmove(a1, __s, v4);
  *(a1 + v4) = 0;
  if (v7)
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

char *__cdecl strcat(char *__s1, const char *__s2)
{
  v4 = _platform_strlen(__s1);
  v5 = _platform_strlen(__s2);
  memmove(&__s1[v4], __s2, v5 + 1);
  return __s1;
}

uint64_t cryptex_graft_failure_exists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = configuration(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8 == 37 && (*(v10 + 7034) & 1) != 0)
  {
    v8 = 0;
    *(a1 + 120) = 0;
  }

  return v8;
}

uint64_t cryptex_spec_next(void *a1)
{
  if (*a1 > 2uLL)
  {
    return 0;
  }

  v2 = *a1 - 3;
  while (1)
  {
    v3 = __specs[(*a1)++];
    result = (*(v3 + 16))();
    if (result)
    {
      break;
    }

    if (__CFADD__(v2++, 1))
    {
      return 0;
    }
  }

  return result;
}

uint64_t _graft_fire(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v113[0] = 0;
  v5 = cryptex_spec_next(v113);
  if (!v5)
  {
    trust_cache = 0xFFFFFFFFLL;
LABEL_22:
    dyld_halt("error not set to valid posix code: %d", v6, v7, v8, v9, v10, v11, v12, trust_cache);
  }

  v13 = v5;
  trust_cache = 0xFFFFFFFFLL;
  do
  {
    bzero(v107, 0x488uLL);
    v108 = -1;
    v109 = -1;
    v110 = -1;
    v111 = -1;
    v112 = -1;
    v106 = 0;
    v104 = -1;
    v105 = -1;
    v15 = *(v13 + 152);
    if (v15)
    {
      if (!v15())
      {
        goto LABEL_16;
      }

      v16 = getpid();
      v97 = *v13;
      v90 = *a1;
      dlog(-1, "libignition: %d: %12s: determined device is eligible for optional cryptex %s, attempting to discover: %d\n", v17, v18, v19, v20, v21, v22, v16);
    }

    v106 = cryptex_init(v107, v13, a3, a1);
    v29 = cryptex_open(v106, &v104, v23, v24, v25, v26, v27, v28);
    if (v29)
    {
      trust_cache = v29;
      v37 = getpid();
      v98 = *v13;
      v91 = *a1;
      dlog(-1, "libignition: %d: %12s: failed to open %s cryptex: %d\n", v38, v39, v40, v41, v42, v43, v37);
    }

    else
    {
      v44 = v106;
      trust_cache = cryptex_load_trust_cache(v106, v30, v31, v32, v33, v34, v35, v36);
      v45 = getpid();
      if (trust_cache)
      {
        v99 = **v44;
        v92 = *a1;
        dlog(-1, "libignition: %d: %12s: failed to load trust cache: cryptex = %s: %d\n", v46, v47, v48, v49, v50, v51, v45);
        if (trust_cache >= 0x6B)
        {
          goto LABEL_22;
        }

        v52 = getpid();
        v100 = *v13;
        v93 = *a1;
        dlog(-1, "libignition: %d: %12s: failed to load trust cache for %s cryptex: %d\n", v53, v54, v55, v56, v57, v58, v52);
      }

      else
      {
        v94 = *a1;
        v101 = **v44;
        dlog(-1, "libignition: %d: %12s: loaded trust cache: cryptex = %s\n", v46, v47, v48, v49, v50, v51, v45);
        trust_cache = cryptex_graft(v106, &v105, v59, v60, v61, v62, v63, v64);
        if (trust_cache)
        {
          v70 = getpid();
          v102 = *v13;
          v95 = *a1;
          dlog(-1, "libignition: %d: %12s: failed to graft %s cryptex: %d\n", v71, v72, v73, v74, v75, v76, v70);
        }

        else
        {
          boot_set_root(a3, *(v13 + 80), &v105, v65, v66, v67, v68, v69);
          boot_set_root(a3, *(v13 + 88), &v104, v84, v85, v86, v87, v88);
        }
      }
    }

    closefd_optional(&v104, "canonical root");
    closefd_optional(&v105, "graft point");
    cryptex_destroy(&v106);
    if (trust_cache)
    {
      if ((*(v13 + 144) & 1) == 0)
      {
        break;
      }

      v77 = getpid();
      v103 = *v13;
      v96 = *a1;
      dlog(-1, "libignition: %d: %12s: failed to graft optional cryptex: %s, continuing: %d\n", v78, v79, v80, v81, v82, v83, v77);
      trust_cache = 0;
    }

LABEL_16:
    v13 = cryptex_spec_next(v113);
  }

  while (v13);
  if (trust_cache >= 0x6B)
  {
    goto LABEL_22;
  }

  return trust_cache;
}