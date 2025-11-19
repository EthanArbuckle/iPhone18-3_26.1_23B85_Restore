BOOL dyld4::APIs::dyld_program_sdk_at_least(uint64_t a1, uint64_t a2)
{
  v4 = !mach_o::Platform::empty((*(a1 + 8) + 96));
  v5 = *(a1 + 8);
  if (a2 == -1)
  {
    v7 = *(v5 + 84);
  }

  else
  {
    mach_o::Platform::Platform(&v9, a2);
    if (*(v5 + 96) == v9 && *(v5 + 104) == v10 || (v6 = *(a1 + 8), mach_o::Platform::Platform(&v9, a2), *(v6 + 112) == v9) && *(v6 + 120) == v10)
    {
      v7 = *(*(a1 + 8) + 80);
    }

    else
    {
      v7 = 0;
      v4 = 0;
    }
  }

  return v7 >= HIDWORD(a2) && v4;
}

uint64_t dyld4::APIs::dyld_get_active_platform(dyld4::APIs *this)
{
  v2 = mach_o::Platform::value((*(this + 1) + 112));
  v3 = v2;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_active_platform() => %d\n", v2);
  }

  return v3;
}

uint64_t mach_o::Platform::value(mach_o::Platform *this)
{
  v2 = *this;
  v1 = this + 8;
  v3 = (v2 + 48);
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return *v4;
}

dyld3::MachOLoaded *dyld4::APIs::dyld_image_header_containing_address(dyld4::APIs *this, char *a2)
{
  v5 = 0;
  dyld4::APIs::findImageMappedAt(this, a2, &v5, 0, 0, 0, 0, 0, 0);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_image_header_containing_address(%p) =>%p\n", a2, v5);
  }

  return v5;
}

uint64_t mach_o::Platform::Platform(uint64_t this, int a2)
{
  v2 = 0;
  *this = 0;
  *(this + 8) = 0;
  while (1)
  {
    v3 = mach_o::PlatformInfo::knownPlatformInfos[v2];
    v4 = *(v3 + 12);
    if (!v4)
    {
      mach_o::Platform::Platform();
    }

    if (v4 == a2)
    {
      break;
    }

    if (++v2 == 31)
    {
      *(this + 8) = a2;
      return this;
    }
  }

  *this = v3;
  return this;
}

uint64_t dyld4::APIs::findImageMappedAt(dyld4::APIs *this, char *a2, const dyld3::MachOLoaded **a3, BOOL *a4, const char **a5, void **a6, unint64_t *a7, unsigned __int8 *a8, const dyld4::Loader **a9)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v15 = *(this + 1);
  v16 = *(v15 + 368);
  if (v16)
  {
    v18 = v16 >= a2;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v16 + DyldSharedCache::mappedSize(*(v15 + 368)) <= a2)
  {
    v20 = 0;
  }

  else
  {
    v19 = v16 - DyldSharedCache::unslidLoadAddress(v16);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = 0;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 0x40000000;
    v35[2] = ___ZN5dyld44APIs17findImageMappedAtEPKvPPKN5dyld311MachOLoadedEPbPPKcPS2_PyPhPPKNS_6LoaderE_block_invoke;
    v35[3] = &unk_A2248;
    v35[4] = &v36;
    v35[5] = a2 - v19;
    DyldSharedCache::forEachRange(v16, v35, 0);
    if (*(v37 + 6) == 5)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 0x40000000;
      v34[2] = ___ZN5dyld44APIs17findImageMappedAtEPKvPPKN5dyld311MachOLoadedEPbPPKcPS2_PyPhPPKNS_6LoaderE_block_invoke_2;
      v34[3] = &unk_A2270;
      v34[6] = a3;
      v34[7] = v19;
      v34[8] = a4;
      v34[9] = a5;
      v34[10] = a6;
      v34[11] = a7;
      v34[12] = a8;
      v34[13] = a9;
      v34[4] = &v40;
      v34[5] = a2 - v19;
      DyldSharedCache::forEachImageTextSegment(v16, v34);
      if (v41[3])
      {
        _Block_object_dispose(&v36, 8);
        goto LABEL_28;
      }
    }

    _Block_object_dispose(&v36, 8);
    v20 = 1;
  }

  v36 = 0;
  v33 = 0;
  if (dyld4::RuntimeState::inPermanentRange(this, a2, (a2 + 1), &v33, &v36))
  {
    if (a3)
    {
      *a3 = dyld4::Loader::loadAddress(v36, this);
    }

    if (a4)
    {
      *a4 = 1;
    }

    if (a5)
    {
      *a5 = dyld4::Loader::path(v36, this);
    }

    if (a6 | a7)
    {
      v31 = 0;
      v32 = 0;
      v30 = 0;
      if (dyld4::Loader::contains(v36, this, a2, &v32, &v31, &v30))
      {
        if (a6)
        {
          *a6 = v32;
        }

        if (a7)
        {
          *a7 = v31;
        }
      }
    }

    if (a8)
    {
      *a8 = v33;
    }

    if (a9)
    {
      *a9 = v36;
    }

    goto LABEL_28;
  }

  v21 = *(this + 14);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 0x40000000;
  v28[2] = ___ZN5dyld44APIs17findImageMappedAtEPKvPPKN5dyld311MachOLoadedEPbPPKcPS2_PyPhPPKNS_6LoaderE_block_invoke_3;
  v28[3] = &unk_A2298;
  v29 = v20;
  v28[6] = a2;
  v28[7] = a3;
  v28[8] = a4;
  v28[9] = a5;
  v28[10] = a6;
  v28[11] = a7;
  v28[12] = a8;
  v28[13] = a9;
  v28[4] = &v40;
  v28[5] = this;
  dyld4::RuntimeLocks::withLoadersReadLock(v21, v28);
  if (v41[3])
  {
LABEL_28:
    ImageMappedAt = 1;
    goto LABEL_29;
  }

  v24 = *(this + 36);
  if (v24)
  {
    v25 = (*(this + 35) + 8);
    v26 = 16 * v24;
    while (*(v25 - 1) != a2)
    {
      v25 += 2;
      v26 -= 16;
      if (!v26)
      {
        goto LABEL_34;
      }
    }

    ImageMappedAt = dyld4::APIs::findImageMappedAt(this, *v25, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
LABEL_34:
    ImageMappedAt = 0;
  }

LABEL_29:
  _Block_object_dispose(&v40, 8);
  return ImageMappedAt;
}

uint64_t ___ZNK15DyldSharedCache12forEachRangeEU13block_pointerFvPKcyyjyjjRbEU13block_pointerFvPKS_jE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK15DyldSharedCache12forEachRangeEU13block_pointerFvPKcyyjyjjRbEU13block_pointerFvPKS_jE_block_invoke_2;
  v8[3] = &unk_A3348;
  v6 = a1[6];
  v8[4] = a1[4];
  v8[5] = v6;
  v8[6] = a3;
  result = DyldSharedCache::forEachRegion(a2, v8);
  if ((*a3 & 1) == 0)
  {
    result = a1[5];
    if (result)
    {
      result = (*(result + 16))(result, a2, *(*(a1[6] + 8) + 24));
    }

    ++*(*(a1[6] + 8) + 24);
  }

  return result;
}

void DyldSharedCache::forEachRange(char *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK15DyldSharedCache12forEachRangeEU13block_pointerFvPKcyyjyjjRbEU13block_pointerFvPKS_jE_block_invoke;
  v3[3] = &unk_A3370;
  v3[5] = a3;
  v3[6] = v4;
  v3[4] = a2;
  DyldSharedCache::forEachCache(a1, v3);
  _Block_object_dispose(v4, 8);
}

uint64_t DyldSharedCache::mappedSize(DyldSharedCache *this)
{
  if (*(this + 4) >= 0x18Cu)
  {
    return *(this + 29);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK15DyldSharedCache10mappedSizeEv_block_invoke;
  v3[3] = &unk_A3398;
  v3[4] = &v8;
  v3[5] = &v4;
  DyldSharedCache::forEachRegion(this, v3);
  v1 = v5[3] - v9[3];
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v8, 8);
  return v1;
}

uint64_t DyldSharedCache::forEachCache(char *a1, uint64_t a2)
{
  v10 = 0;
  result = (*(a2 + 16))(a2, a1, &v10);
  if ((v10 & 1) == 0 && *(a1 + 4) >= 0x18Du && *(a1 + 99))
  {
    v5 = 0;
    do
    {
      v6 = &a1[*(a1 + 98)];
      v7 = &v6[24 * v5 + 16];
      v8 = &v6[56 * v5 + 16];
      if (*(a1 + 4) >= 0x1C9u)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      result = (*(a2 + 16))(a2, &a1[*v9], &v10);
      if (v10 == 1)
      {
        break;
      }

      ++v5;
    }

    while (v5 != *(a1 + 99));
  }

  return result;
}

uint64_t ___ZNK15DyldSharedCache12forEachRangeEU13block_pointerFvPKcyyjyjjRbEU13block_pointerFvPKS_jE_block_invoke_2(uint64_t a1, int a2, int a3, int a4, int a5, DyldSharedCache *this, char a7, int a8, uint64_t a9)
{
  DyldSharedCache::mappingName(this, a7);
  v10 = *(*(*(a1 + 40) + 8) + 24);
  return (*(*(a1 + 32) + 16))(*(a1 + 32));
}

int _platform_strncmp(const char *__s1, const char *__s2, size_t __n)
{
  v3 = 0;
  if (!__n)
  {
    return v3;
  }

  while ((__s1 & 0xF) != 0)
  {
    v5 = *__s1++;
    v4 = v5;
    v6 = *__s2++;
    v3 = v4 - v6;
    if (v4 == v6 && v4 != 0)
    {
      if (--__n)
      {
        continue;
      }
    }

    return v3;
  }

  if ((__s2 & 0xF) == 0)
  {
    goto LABEL_30;
  }

  v9 = -__s2 & 0xFF0;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (__n > v9)
  {
    v10 = __n - v9;
    while (1)
    {
      v11 = *__s1;
      __s1 += 16;
      v12 = v11;
      v13 = *__s2;
      __s2 += 16;
      v15 = vceqq_s8(v12, v13);
      v14 = vandq_s8(v12, v15);
      v15.i8[0] = vminvq_u8(v14);
      if (!v15.i32[0])
      {
        break;
      }

      v9 -= 16;
      if (!v9)
      {
        __n = v10;
LABEL_16:
        while (1)
        {
          v17 = *__s1++;
          v16 = v17;
          v18 = *__s2++;
          v3 = v16 - v18;
          if (v16 != v18 || v16 == 0)
          {
            return v3;
          }

          if (!--__n)
          {
            return v3;
          }

          if ((__s1 & 0xF) == 0)
          {
            v9 = 4080;
            goto LABEL_11;
          }
        }
      }
    }
  }

  else
  {
LABEL_30:
    while (1)
    {
      v20 = *__s1;
      __s1 += 16;
      v21 = v20;
      v22 = *__s2;
      __s2 += 16;
      v15 = vceqq_s8(v21, v22);
      v14 = vandq_s8(v21, v15);
      v15.i8[0] = vminvq_u8(v14);
      if (!v15.i32[0])
      {
        break;
      }

      v23 = __n > 0x10;
      __n -= 16;
      if (!v23)
      {
        return 0;
      }
    }
  }

  v24 = vorrq_s8(vcgtq_u8(v14, veorq_s8(v15, v15)), xmmword_1A60);
  v24.i8[0] = vminvq_u8(v24);
  if (v24.u32[0] >= __n)
  {
    return 0;
  }

  else
  {
    return __s1[v24.u32[0] - 16] - __s2[v24.u32[0] - 16];
  }
}

unint64_t objc::lookup8(objc *this, const unsigned __int8 *a2, unint64_t a3)
{
  v3 = 0x9E3779B97F4A7C13;
  if (a2 < 0x18)
  {
    v5 = a3;
    v4 = a2;
  }

  else
  {
    v4 = a2;
    v5 = a3;
    do
    {
      v6 = a3 + (*(this + 14) << 48) + (*(this + 2) | (*(this + 12) << 32) | (*(this + 13) << 40)) + (*(this + 15) << 56);
      v7 = v3 + (*(this + 22) << 48) + (*(this + 4) | (*(this + 20) << 32) | (*(this + 21) << 40)) + (*(this + 23) << 56);
      v8 = (v5 + (*(this + 6) << 48) + (*this | (*(this + 4) << 32) | (*(this + 5) << 40)) + (*(this + 7) << 56) - (v6 + v7)) ^ (v7 >> 43);
      v9 = (v6 - v7 - v8) ^ (v8 << 9);
      v10 = (v7 - v8 - v9) ^ (v9 >> 8);
      v11 = (v8 - v9 - v10) ^ (v10 >> 38);
      v12 = (v9 - v10 - v11) ^ (v11 << 23);
      v13 = (v10 - v11 - v12) ^ (v12 >> 5);
      v14 = (v11 - v12 - v13) ^ (v13 >> 35);
      v15 = (v12 - v13 - v14) ^ (v14 << 49);
      v16 = (v13 - v14 - v15) ^ (v15 >> 11);
      v5 = (v14 - v15 - v16) ^ (v16 >> 12);
      a3 = (v15 - v16 - v5) ^ (v5 << 18);
      v3 = (v16 - v5 - a3) ^ (a3 >> 22);
      this = (this + 24);
      v4 -= 24;
    }

    while (v4 > 0x17);
  }

  v17 = &a2[v3];
  switch(v4)
  {
    case 1uLL:
      goto LABEL_29;
    case 2uLL:
      goto LABEL_28;
    case 3uLL:
      goto LABEL_27;
    case 4uLL:
      goto LABEL_26;
    case 5uLL:
      goto LABEL_25;
    case 6uLL:
      goto LABEL_24;
    case 7uLL:
      goto LABEL_23;
    case 8uLL:
      goto LABEL_22;
    case 9uLL:
      goto LABEL_21;
    case 0xAuLL:
      goto LABEL_20;
    case 0xBuLL:
      goto LABEL_19;
    case 0xCuLL:
      goto LABEL_18;
    case 0xDuLL:
      goto LABEL_17;
    case 0xEuLL:
      goto LABEL_16;
    case 0xFuLL:
      goto LABEL_15;
    case 0x10uLL:
      goto LABEL_14;
    case 0x11uLL:
      goto LABEL_13;
    case 0x12uLL:
      goto LABEL_12;
    case 0x13uLL:
      goto LABEL_11;
    case 0x14uLL:
      goto LABEL_10;
    case 0x15uLL:
      goto LABEL_9;
    case 0x16uLL:
      goto LABEL_8;
    case 0x17uLL:
      v17 += *(this + 22) << 56;
LABEL_8:
      v17 += *(this + 21) << 48;
LABEL_9:
      v17 += *(this + 20) << 40;
LABEL_10:
      v17 += *(this + 19) << 32;
LABEL_11:
      v17 += *(this + 18) << 24;
LABEL_12:
      v17 += *(this + 17) << 16;
LABEL_13:
      v17 += *(this + 16) << 8;
LABEL_14:
      a3 += *(this + 15) << 56;
LABEL_15:
      a3 += *(this + 14) << 48;
LABEL_16:
      a3 += *(this + 13) << 40;
LABEL_17:
      a3 += *(this + 12) << 32;
LABEL_18:
      a3 += *(this + 11) << 24;
LABEL_19:
      a3 += *(this + 10) << 16;
LABEL_20:
      a3 += *(this + 9) << 8;
LABEL_21:
      a3 += *(this + 8);
LABEL_22:
      v5 += *(this + 7) << 56;
LABEL_23:
      v5 += *(this + 6) << 48;
LABEL_24:
      v5 += *(this + 5) << 40;
LABEL_25:
      v5 += *(this + 4) << 32;
LABEL_26:
      v5 += *(this + 3) << 24;
LABEL_27:
      v5 += *(this + 2) << 16;
LABEL_28:
      v5 += *(this + 1) << 8;
LABEL_29:
      v5 += *this;
      break;
    default:
      break;
  }

  v18 = (v5 - a3 - v17) ^ (v17 >> 43);
  v19 = (a3 - v17 - v18) ^ (v18 << 9);
  v20 = (v17 - v18 - v19) ^ (v19 >> 8);
  v21 = (v18 - v19 - v20) ^ (v20 >> 38);
  v22 = (v19 - v20 - v21) ^ (v21 << 23);
  v23 = (v20 - v21 - v22) ^ (v22 >> 5);
  v24 = (v21 - v22 - v23) ^ (v23 >> 35);
  v25 = (v22 - v23 - v24) ^ (v24 << 49);
  v26 = (v23 - v24 - v25) ^ (v25 >> 11);
  v27 = (v24 - v25 - v26) ^ (v26 >> 12);
  return (v26 - v27 - ((v25 - v26 - v27) ^ (v27 << 18))) ^ (((v25 - v26 - v27) ^ (v27 << 18)) >> 22);
}

void _Block_object_dispose(const void *a1, const int a2)
{
  if (a2 != 8)
  {
    dyld4::halt("_Block_object_dispose()");
  }
}

uint64_t objc::StringHashTable::tryGetIndex(objc::StringHashTable *this, char *__s)
{
  v4 = _platform_strlen(__s);
  v5 = v4;
  v6 = objc::lookup8(__s, v4, *(this + 3));
  v7 = *(this + 3);
  v8 = *(this + 4);
  if (v7 == 64)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 >> v7;
  }

  v10 = v9 ^ *(this + *(this + (v6 & v8) + 1056) + 8);
  v11 = this + (v8 + 1) + 1056;
  if (v11[v10] != (v5 & 0x1F | (32 * *__s)))
  {
LABEL_7:
    LODWORD(v12) = 0;
    goto LABEL_8;
  }

  v12 = *&v11[4 * v10 + *(this + 1)];
  if (v12)
  {
    if (!_platform_strcmp(__s, this + v12))
    {
      v14 = v10 & 0xFFFFFF00;
      LODWORD(v12) = v10;
      v13 = 0x100000000;
      return v13 | v14 | v12;
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = 0;
  v14 = 0;
  return v13 | v14 | v12;
}

unint64_t *dyld4::APIs::_dyld_get_objc_selector(dyld4::APIs *this, char *__s)
{
  v4 = *(this + 1);
  v5 = *(v4 + 432);
  if (v5)
  {
    Index = objc::StringHashTable::tryGetIndex(*(v4 + 432), __s);
    if ((Index & 0x100000000) != 0)
    {
      Selector = (v5 + *(v5 + *(v5 + 4) + (*(v5 + 16) + 1) + 4 * Index + 1056));
LABEL_6:
      if (*(*(this + 1) + 324) == 1)
      {
        dyld4::RuntimeState::log(this, "_dyld_get_objc_selector(%s) => %s\n", __s, Selector);
      }

      return Selector;
    }
  }

  if (*(this + 122))
  {
    Selector = prebuilt_objc::findSelector(this, this + 53, __s);
    goto LABEL_6;
  }

  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_objc_selector(%s) => nullptr\n", __s);
  }

  return 0;
}

size_t _platform_strnlen(const char *__s1, size_t __n)
{
  if ((__n & 0x8000000000000000) != 0)
  {
    return _platform_strlen(__s1);
  }

  if (!__n)
  {
    return 0;
  }

  v3 = __s1 & 0xFFFFFFFFFFFFFFF0;
  v4 = &algn_20B0[-(__s1 & 0xF)];
  v5 = *v4;
  v6 = vorrq_s8(*(__s1 & 0xFFFFFFFFFFFFFFF0), *v4);
  v7 = __n + (__s1 & 0xF);
  while (1)
  {
    v5.i8[0] = vminvq_u8(v6);
    if (!v5.i32[0])
    {
      break;
    }

    v9 = v7 > 0x10;
    v7 -= 16;
    if (!v9)
    {
      return v3 - __s1 + v7 + 16;
    }

    v8 = *(v3 + 16);
    v3 += 16;
    v6 = v8;
  }

  v10 = veorq_s8(v5, v5);
  v10.i8[0] = vminvq_u8(vorrq_s8(vcgtq_u8(v6, v10), xmmword_20A0));
  v11 = v3 - __s1;
  if (v7 >= v10.u32[0])
  {
    v7 = v10.u32[0];
  }

  return v11 + v7;
}

size_t _platform_strlen(const char *__s)
{
  v1 = __s & 0xFFFFFFFFFFFFFFF0;
  v2 = &algn_20B0[-(__s & 0xF)];
  v3 = *v2;
  for (i = vorrq_s8(*(__s & 0xFFFFFFFFFFFFFFF0), *v2); ; i = v5)
  {
    v3.i8[0] = vminvq_u8(i);
    if (!v3.i32[0])
    {
      break;
    }

    v5 = *(v1 + 16);
    v1 += 16;
  }

  v6 = veorq_s8(v3, v3);
  v6.i8[0] = vminvq_u8(vorrq_s8(vcgtq_u8(i, v6), xmmword_20A0));
  return v1 - __s + v6.u32[0];
}

int _platform_strcmp(const char *__s1, const char *__s2)
{
  if (_gUseInstrumentedStringRoutines)
  {
    return _platform_strcmp_VARIANT_MTE(__s1, __s2);
  }

  else
  {
    return _platform_strcmp_noMTE(__s1, __s2);
  }
}

unint64_t _platform_strcmp_noMTE(int8x16_t *a1, int8x16_t *a2)
{
  while ((a1 & 0xF) != 0)
  {
    v3 = a1->u8[0];
    a1 = (a1 + 1);
    v2 = v3;
    v4 = a2->u8[0];
    a2 = (a2 + 1);
    v5 = v2 - v4;
    if (v2 != v4 || v2 == 0)
    {
      return v5;
    }
  }

  if ((a2 & 0xF) != 0)
  {
    v8 = -a2 & 0xFF0;
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_10:
    while (1)
    {
      v9 = *a1++;
      v10 = v9;
      v11 = *a2++;
      v13 = vceqq_s8(v10, v11);
      v12 = vandq_s8(v10, v13);
      v13.i8[0] = vminvq_u8(v12);
      if (!v13.i32[0])
      {
        break;
      }

      v8 -= 16;
      if (!v8)
      {
LABEL_12:
        while (1)
        {
          v15 = a1->u8[0];
          a1 = (a1 + 1);
          v14 = v15;
          v16 = a2->u8[0];
          a2 = (a2 + 1);
          v5 = v14 - v16;
          if (v14 != v16 || v14 == 0)
          {
            return v5;
          }

          if ((a1 & 0xF) == 0)
          {
            v8 = 4080;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    do
    {
      v18 = *a1++;
      v19 = v18;
      v20 = *a2++;
      v13 = vceqq_s8(v19, v20);
      v12 = vandq_s8(v19, v13);
      v13.i8[0] = vminvq_u8(v12);
    }

    while (v13.i32[0]);
  }

  v21 = vorrq_s8(vcgtq_u8(v12, veorq_s8(v13, v13)), xmmword_21C0);
  v21.i8[0] = vminvq_u8(v21);
  return a1[-1].u8[v21.u32[0]] - a2[-1].u8[v21.u32[0]];
}

void dyld3::MultiMapBase<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation,prebuilt_objc::HashObjCStringKeyOnDisk,prebuilt_objc::EqualObjCStringKeyOnDisk>::forEachEntry<char const*>(uint64_t a1, void *a2, uint64_t *a3, dyld4::RuntimeState *a4, const char **a5, uint64_t a6)
{
  if (a3[2])
  {
    v11 = *a5;
    v12 = _platform_strlen(*a5);
    v13 = murmurHash(v11, v12, 0);
    v14 = a2[2];
    v15 = (v14 - 1) & v13;
    if (v14 <= v15)
    {
LABEL_8:
      dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
    }

    v16 = 1;
    while (1)
    {
      v17 = *(*a2 + 8 * v15);
      if (v17 == -1)
      {
        break;
      }

      if (a3[2] <= v17)
      {
        dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
      }

      v18 = (*a3 + 24 * v17);
      v38 = *a5;
      v39.i64[0] = _platform_strlen(v38);
      if (prebuilt_objc::EqualObjCStringKeyOnDisk::equal(v18, &v38, a4))
      {
        v20 = a3[2];
        if (v20 <= v17)
        {
          dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
        }

        v21 = *a3 + 24 * v17;
        v22 = *(v21 + 16);
        if ((v22 & 7) != 0)
        {
          if (v20 <= v22 >> 3)
          {
LABEL_15:
            dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
          }

          v23 = v22 >> 3;
          v24 = 2;
          while (1)
          {
            v25 = *(*a3 + 24 * v23 + 16);
            if ((v25 & 3) == 0)
            {
              break;
            }

            v23 = v25 >> 3;
            ++v24;
            if (v20 <= v25 >> 3)
            {
              goto LABEL_15;
            }
          }

          __chkstk_darwin();
          v28 = &v37 - v27;
          if (v26 >= 0x200)
          {
            v29 = 512;
          }

          else
          {
            v29 = v26;
          }

          bzero(&v37 - v27, v29);
          *v28 = v21 + 8;
          v30 = a3[2];
          v31 = *(v21 + 16);
          if (v30 <= v31 >> 3)
          {
LABEL_23:
            dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
          }

          v32 = v31 >> 3;
          v33 = *a3;
          v34 = 2;
          while (1)
          {
            v35 = v33 + 24 * v32;
            v36 = *(v35 + 16);
            *&v28[8 * v34 - 8] = v35 + 8;
            if ((v36 & 3) == 0)
            {
              break;
            }

            v32 = v36 >> 3;
            ++v34;
            if (v30 <= v36 >> 3)
            {
              goto LABEL_23;
            }
          }

          v38 = v28;
          v39.i64[0] = v34;
          v39.i64[1] = v34;
          (*(a6 + 16))(a6, &v38);
        }

        else
        {
          v40 = v21 + 8;
          v38 = &v40;
          v39 = vdupq_n_s64(1uLL);
          (*(a6 + 16))(a6, &v38);
        }

        return;
      }

      v19 = a2[2];
      v15 = (v19 - 1) & (v15 + v16++);
      if (v19 <= v15)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t objc::ObjectHashTable::forEachObject(unsigned int *a1, char *a2, uint64_t a3)
{
  result = objc::StringHashTable::tryGetIndex(a1, a2);
  if ((result & 0x100000000) != 0)
  {
    v6 = a1[1];
    v7 = &a1[v6 + 264] + v6 + a1[4] + 1;
    v8 = *(v7 + 8 * result);
    if (v8)
    {
      if (HIWORD(v8))
      {
        v9 = (v7 + 8 * v6 + 8 * ((v8 >> 1) & 0x7FFFFFFFFFFFLL) + 4);
        v10 = HIWORD(v8) - 1;
        do
        {
          v11 = v10;
          v13 = 0;
          v12 = *v9++;
          result = (*(a3 + 16))(a3, (v12 >> 1) & 0x7FFFFFFFFFFFLL, HIWORD(v12), &v13);
          if (v13)
          {
            break;
          }

          v10 = v11 - 1;
        }

        while (v11);
      }
    }

    else
    {
      v14 = 0;
      return (*(a3 + 16))(a3, (v8 >> 1) & 0x7FFFFFFFFFFFLL, HIWORD(v8), &v14);
    }
  }

  return result;
}

uint64_t ___ZN5dyld44APIs17findImageMappedAtEPKvPPKN5dyld311MachOLoadedEPbPPKcPS2_PyPhPPKNS_6LoaderE_block_invoke(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, _BYTE *a9)
{
  v9 = *(result + 40);
  if (v9 >= a3 && v9 < a4 + a3)
  {
    *(*(*(result + 32) + 8) + 24) = a7;
    *a9 = 1;
  }

  return result;
}

const char *DyldSharedCache::mappingName(DyldSharedCache *this, char a2)
{
  if ((this & 4) != 0)
  {
    if ((a2 & 8) != 0)
    {
      return "__TEXT_STUBS";
    }

    else
    {
      return "__TEXT";
    }
  }

  else
  {
    if ((this & 2) != 0)
    {
      v2 = "__DATA_DIRTY";
      v6 = "__TPRO_CONST";
      v7 = "__DATA_CONST";
      if ((a2 & 4) == 0)
      {
        v7 = "__DATA";
      }

      if ((a2 & 0x40) == 0)
      {
        v6 = v7;
      }

      if ((a2 & 2) == 0)
      {
        v2 = v6;
      }

      v3 = "__AUTH_DIRTY";
      v8 = "__AUTH_TPRO_CONST";
      v9 = "__AUTH_CONST";
      if ((a2 & 4) == 0)
      {
        v9 = "__AUTH";
      }

      if ((a2 & 0x40) == 0)
      {
        v8 = v9;
      }

      if ((a2 & 2) == 0)
      {
        v3 = v8;
      }

      v4 = (a2 & 1) == 0;
    }

    else
    {
      v2 = "*unknown*";
      v3 = "__READ_ONLY";
      if ((a2 & 0x20) == 0)
      {
        v3 = "__LINKEDIT";
      }

      v4 = (this & 1) == 0;
    }

    if (v4)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t DyldSharedCache::forEachImageTextSegment(uint64_t result, uint64_t a2)
{
  if (*(result + 16) >= 0x89u)
  {
    v11 = v2;
    v12 = v3;
    v4 = result;
    v5 = *(result + 144);
    if (v5)
    {
      v7 = result + *(result + 136);
      v8 = 32 * v5 - 32;
      do
      {
        v10 = 0;
        result = (*(a2 + 16))(a2, *(v7 + 16), *(v7 + 24), v7, v4 + *(v7 + 28), &v10);
        if (v10)
        {
          break;
        }

        v7 += 32;
        v9 = v8;
        v8 -= 32;
      }

      while (v9);
    }
  }

  return result;
}

void *___ZN5dyld44APIs17findImageMappedAtEPKvPPKN5dyld311MachOLoadedEPbPPKcPS2_PyPhPPKNS_6LoaderE_block_invoke_2(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = result[5];
  if (v6 >= a2 && v6 < a3 + a2)
  {
    v8 = result[6];
    if (v8)
    {
      *v8 = result[7] + a2;
    }

    v9 = result[8];
    if (v9)
    {
      *v9 = 1;
    }

    v10 = result[9];
    if (v10)
    {
      *v10 = a5;
    }

    v11 = result[10];
    if (v11)
    {
      *v11 = result[7] + a2;
    }

    v12 = result[11];
    if (v12)
    {
      *v12 = a3;
    }

    v13 = result[12];
    if (v13)
    {
      *v13 = 5;
    }

    v14 = result[13];
    if (v14)
    {
      *v14 = 0;
    }

    *a6 = 1;
    *(*(result[4] + 8) + 24) = 1;
  }

  return result;
}

uint64_t ___ZN5dyld44APIs25_dyld_is_memory_immutableEPKvm_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN5dyld44APIs25_dyld_is_memory_immutableEPKvm_block_invoke_2;
  v5[3] = &unk_A22C0;
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = a3;
  return DyldSharedCache::forEachRegion(a2, v5);
}

uint64_t ___ZN5dyld44APIs25_dyld_is_memory_immutableEPKvm_block_invoke_2(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v9 = *(result + 40);
  if (v9 > a2 && v9 + *(result + 48) < a2 + a4)
  {
    if ((a6 & 2) == 0)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
    }

    *a9 = 1;
    **(result + 56) = 1;
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_is_memory_immutable(dyld4::APIs *this, char *a2, uint64_t a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v6 = *(this + 1);
  v7 = *(v6 + 368);
  if (v7)
  {
    v8 = v7 >= a2;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && &v7[DyldSharedCache::mappedSize(*(v6 + 368))] > a2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = ___ZN5dyld44APIs25_dyld_is_memory_immutableEPKvm_block_invoke;
    v15[3] = &unk_A22E8;
    v15[5] = a2;
    v15[6] = a3;
    v15[4] = &v16;
    DyldSharedCache::forEachCache(v7, v15);
  }

  v9 = v17;
  if ((v17[3] & 1) == 0)
  {
    v14 = 0;
    v13 = 0;
    v10 = dyld4::RuntimeState::inPermanentRange(this, a2, &a2[a3], &v13, &v14);
    v9 = v17;
    if (v10)
    {
      *(v17 + 24) = ((v13 >> 1) & 1) == 0;
    }
  }

  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_is_memory_immutable(%p, %lu) => %d\n", a2, a3, *(v9 + 24));
    v9 = v17;
  }

  v11 = *(v9 + 24);
  _Block_object_dispose(&v16, 8);
  return v11;
}

void *lsl::MemoryManager::memoryManager(lsl::MemoryManager *this)
{
  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager();
  }

  return &lsl::sMemoryManagerBuffer;
}

BOOL lsl::ProtectedStack::onStackInCurrentFrame(lsl::ProtectedStack *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(this + 1);
  if (v9)
  {
    v10 = *(this + 1);
    if (&a9 < v9)
    {
      return 0;
    }
  }

  if (*this)
  {
    v12 = *this;
  }

  return &a9 < *this;
}

uint64_t objc::objc_headeropt_rw_t<unsigned long>::isLoaded(unsigned int *a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    objc::objc_headeropt_rw_t<unsigned long>::isLoaded();
  }

  return *(a1 + a1[1] * a2 + 8) & 1;
}

void prebuilt_objc::forEachClass(dyld4::RuntimeState *a1, void *a2, const char *a3, uint64_t a4)
{
  v5 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN13prebuilt_objc12forEachClassEPN5dyld412RuntimeStateERKN5dyld312MultiMapViewINS_19ObjCStringKeyOnDiskENS_24ObjCObjectOnDiskLocationENS_23HashObjCStringKeyOnDiskENS_24EqualObjCStringKeyOnDiskEEEPKcU13block_pointerFvRKNS3_5ArrayIPKNS0_14PrebuiltLoader13BindTargetRefEEEE_block_invoke;
  v4[3] = &unk_A2CF0;
  v4[4] = a4;
  dyld3::MultiMapBase<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation,prebuilt_objc::HashObjCStringKeyOnDisk,prebuilt_objc::EqualObjCStringKeyOnDisk>::forEachEntry<char const*>(a2, a2, a2 + 3, a1, &v5, v4);
}

void dyld4::APIs::_dyld_for_each_objc_class(dyld4::RuntimeState *a1, char *a2, uint64_t a3)
{
  if (*(*(a1 + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(a1, "_dyld_get_objc_class(%s)\n", a2);
  }

  if (!*(a1 + 122))
  {
    goto LABEL_5;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZN5dyld44APIs25_dyld_for_each_objc_classEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke;
  v9[3] = &unk_A24C0;
  v9[5] = a1;
  v9[6] = a3;
  v9[4] = &v10;
  prebuilt_objc::forEachClass(a1, a1 + 59, a2, v9);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  if ((v6 & 1) == 0)
  {
LABEL_5:
    v7 = *(*(a1 + 1) + 440);
    if (v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZN5dyld44APIs25_dyld_for_each_objc_classEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke_2;
      v8[3] = &__block_descriptor_tmp_136_0;
      v8[4] = a1;
      v8[5] = a3;
      objc::ObjectHashTable::forEachObject(v7, a2, v8);
    }
  }
}

uint64_t ___ZN5dyld44APIs25_dyld_for_each_objc_classEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  result = objc::objc_headeropt_rw_t<unsigned long>::isLoaded(*(*(v7 + 8) + 424), a3);
  if (result)
  {
    v12 = 0;
    v11 = *(*(v7 + 8) + 368) + a2;
    v10 = 1;
    v9 = &v12;
    result = dyld4::ReadOnlyCallback<void({block_pointer})(void *,BOOL,BOOL *)>::operator()<unsigned char *,BOOL,BOOL *>((a1 + 40), &v11, &v10, &v9);
    if (v12 == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t dyld4::ReadOnlyCallback<void({block_pointer})(void *,BOOL,BOOL *)>::operator()<unsigned char *,BOOL,BOOL *>(lsl::MemoryManager *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v15 = lsl::MemoryManager::memoryManager(a1);
  result = v15[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v8, v9, v10, v11, v12, v13, v14, v35[0]);
    if (result)
    {
      v23 = v15[6];
      v35[1] = 0x40000000;
      v35[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPvbPbEEclIJPhbS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESH__block_invoke;
      v35[3] = &__block_descriptor_tmp_242;
      v35[4] = a1;
      v35[5] = a2;
      v35[6] = a3;
      v35[7] = a4;
      return lsl::ProtectedStack::withNestedRegularStack(v23, v35, v17, v18, v19, v20, v21, v22, _NSConcreteStackBlock);
    }
  }

  if (*(v15 + 33) != 1)
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
        v28 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v28 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v29 = MEMORY[0xFFFFFC0D8];
          if (v29 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v30 = *a2;
            v31 = *a3;
            v32 = *a4;
            result = (*(*a1 + 16))();
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v33 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v33 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v34 = MEMORY[0xFFFFFC0D0];
                  if (v34 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
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
  v24 = *a2;
  v25 = *a3;
  v26 = *a4;
  v27 = *(*a1 + 16);

  return v27();
}

uint64_t dyld3::MachOFile::hasLoadCommand(dyld3::MachOFile *this, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  Diagnostics::Diagnostics(v8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK5dyld39MachOFile14hasLoadCommandEj_block_invoke;
  v6[3] = &unk_A3600;
  v7 = a2;
  v6[4] = &v9;
  dyld3::MachOFile::forEachLoadCommand(this, v8, v6);
  v4 = *(v10 + 24);
  Diagnostics::~Diagnostics(v8);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t ___ZNK5dyld39MachOFile14hasLoadCommandEj_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t kdebug_trace(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = kdebug_is_enabled(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {

    return __kdebug_trace64(a1, a2, a3, a4, a5, v14, v15, v16);
  }

  return result;
}

uint64_t __kdebug_trace64(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kdebug_trace64, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void start(dyld4::KernelArgs *a1, uint64_t a2, const char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a1;
  v224 = a1;
  dyld3::kdebug_trace_dyld_marker(0x1F070034, 0, 0, 0, 0, 0, 0, a8, 0, 0);
  v223 = &dword_0;
  if ((dyld3::MachOFile::inDyldCache(&dword_0) & 1) == 0)
  {
    if ((dyld3::MachOFile::hasChainedFixups(&dword_0) & 1) == 0)
    {
      __assert_rtn("rebaseSelf", "dyldMain.cpp", 1277, "dyldMA->hasChainedFixups()");
    }

    Slide = dyld3::MachOLoaded::getSlide(&dword_0);
    v249[0] = 0;
    v249[1] = v249;
    v250 = 0x3802000000;
    v251 = __Block_byref_object_copy_;
    *&v252[0] = __Block_byref_object_dispose_;
    Diagnostics::Diagnostics((v252 + 8));
    v240[0] = _NSConcreteStackBlock;
    v240[1] = 0x40000000;
    *&v241 = ___ZN5dyld4L10rebaseSelfEPKN5dyld313MachOAnalyzerE_block_invoke;
    *(&v241 + 1) = &unk_A0098;
    *&v242 = v249;
    *(&v242 + 1) = &dword_0;
    *&v243 = Slide;
    dyld3::MachOAnalyzer::withChainStarts(&dword_0, (v249[1] + 40), 0, v240);
    Diagnostics::assertNoError(v249[1] + 5);
    v236[0] = _NSConcreteStackBlock;
    v236[1] = 0x40000000;
    *&v237 = ___ZN5dyld4L10rebaseSelfEPKN5dyld313MachOAnalyzerE_block_invoke_2;
    *(&v237 + 1) = &__block_descriptor_tmp_5;
    *&v238 = Slide;
    mach_o::Header::forEachSegment(&dword_0, v236);
    _Block_object_dispose(v249, 8);
    Diagnostics::~Diagnostics((v252 + 8));
    a3 = 0;
    a2 = 0;
    v10 = v224;
  }

  mach_init();
  Apple = dyld4::KernelArgs::findApple(v10);
  v240[0] = Apple;
  v13 = _simple_getenv(Apple, "vm_force_4k_pages");
  if (v13 && *v13 == 49)
  {
    vm_page_size = 4096;
  }

  Envp = dyld4::KernelArgs::findEnvp(v10);
  lsl::MemoryManager::init(Envp, Apple, a3, v15);
  v17 = lsl::MemoryManager::memoryManager(v16);
  v18 = *(v17 + 6);
  if (v18 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v18))
  {
    Apple = 0xFFFFFC10CLL;
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_246;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    v25 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v25 & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v26 = MEMORY[0xFFFFFC0D0];
    if (v26 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_246;
    }

    v27 = *(v17 + 6);
    v249[0] = _NSConcreteStackBlock;
    v249[1] = 0x40000000;
    v250 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld4L14initializeLibcEPNS2_10KernelArgsEPvE3__0EEvT__block_invoke;
    v251 = &__block_descriptor_tmp_8;
    *&v252[0] = v240;
    lsl::ProtectedStack::withNestedProtectedStack(v27, v249, v19, v20, v21, v22, v23, v24, cur_protection);
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_246;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    v28 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v28 & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v29 = MEMORY[0xFFFFFC0D8];
    if (v29 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_246;
    }

    Apple = v240[0];
  }

  else if (*(v17 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      __guard_setup(Apple);
    }

    else
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v30 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v30 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v31 = MEMORY[0xFFFFFC0D0];
      if (v31 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }

      __guard_setup(Apple);
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v32 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v32 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v33 = MEMORY[0xFFFFFC0D8];
      if (v33 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v17, v249);
    v34 = *(v17 + 3);
    if (!v34)
    {
      lsl::MemoryManager::writeProtect(v17, 0);
      v34 = *(v17 + 3);
    }

    *(v17 + 3) = v34 + 1;
    lsl::Lock::unlock(v249[0]);
    __guard_setup(Apple);
    lsl::MemoryManager::lockGuard(v17, v249);
    v35 = *(v17 + 3) - 1;
    *(v17 + 3) = v35;
    if (!v35)
    {
      lsl::MemoryManager::writeProtect(v17, 1);
    }

    lsl::Lock::unlock(v249[0]);
  }

  _subsystem_init(Apple);
  v36 = dyld4::KernelArgs::findApple(v224);
  v37 = _simple_getenv(v36, "has_sec_transition");
  if (v37)
  {
    Apple = lsl::MemoryManager::memoryManager(v37);
    v37 = *(Apple + 48);
    if (v37 && (v37 = lsl::ProtectedStack::onStackInAnyFrameInThisThread(v37), v37))
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v44 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v44 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v45 = MEMORY[0xFFFFFC0D0];
      if (v45 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }

      v46 = *(Apple + 48);
      v249[0] = _NSConcreteStackBlock;
      v249[1] = 0x40000000;
      v250 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld45startEPNS2_10KernelArgsEPvS5_E3__0EEvT__block_invoke;
      v251 = &__block_descriptor_tmp_28;
      lsl::ProtectedStack::withNestedProtectedStack(v46, v249, v38, v39, v40, v41, v42, v43, cur_protection);
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v47 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v47 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v37 = MEMORY[0xFFFFFC0D8];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v48 = MEMORY[0xFFFFFC0D8];
      if (v48 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }
    }

    else if (*(Apple + 33) == 1)
    {
      if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        _gUseInstrumentedStringRoutines = 1;
      }

      else
      {
        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_246;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        v49 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v49 & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
        __isb(0xFu);
        v50 = MEMORY[0xFFFFFC0D0];
        if (v50 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_246;
        }

        _gUseInstrumentedStringRoutines = 1;
        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_246;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        v51 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v51 & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        v37 = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v52 = MEMORY[0xFFFFFC0D8];
        if (v52 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_246;
        }
      }
    }

    else
    {
      lsl::MemoryManager::lockGuard(Apple, v249);
      v53 = *(Apple + 24);
      if (!v53)
      {
        lsl::MemoryManager::writeProtect(Apple, 0);
        v53 = *(Apple + 24);
      }

      *(Apple + 24) = v53 + 1;
      lsl::Lock::unlock(v249[0]);
      _gUseInstrumentedStringRoutines = 1;
      lsl::MemoryManager::lockGuard(Apple, v249);
      v54 = *(Apple + 24) - 1;
      *(Apple + 24) = v54;
      if (!v54)
      {
        lsl::MemoryManager::writeProtect(Apple, 1);
      }

      v37 = lsl::Lock::unlock(v249[0]);
    }
  }

  Apple = lsl::MemoryManager::defaultAllocator(v37);
  v55 = v224;
  v254 = v224;
  v255 = v223;
  bzero(v249, 0x400uLL);
  v56 = dyld4::KernelArgs::findApple(v224);
  v57 = _simple_getenv(v56, "dyld_file");
  if (v57)
  {
    if (*v57 == 48)
    {
      v57 += 2 * (v57[1] == 120);
    }

    v60 = 0;
    v59 = 0;
    do
    {
      v61 = v57[v60];
      v62 = v61 - 48;
      if ((v61 - 48) >= 0xA)
      {
        if ((v61 - 65) > 5)
        {
          if ((v61 - 97) > 5)
          {
            break;
          }

          v62 = v61 - 87;
        }

        else
        {
          v62 = v61 - 55;
        }
      }

      v59 = 16 * v59 + v62;
      ++v60;
    }

    while (v60 != 16);
    v63 = &v57[v60];
    v64 = &v57[v60];
    v66 = *(v64 + 1);
    v65 = v64 + 1;
    if (v66 == 48)
    {
      v65 += 2 * (v63[2] == 120);
    }

    v67 = 0;
    v58 = 0;
    do
    {
      v68 = v65[v67];
      v69 = v68 - 48;
      if ((v68 - 48) >= 0xA)
      {
        if ((v68 - 65) > 5)
        {
          if ((v68 - 97) > 5)
          {
            break;
          }

          v69 = v68 - 87;
        }

        else
        {
          v69 = v68 - 55;
        }
      }

      v58 = 16 * v58 + v69;
      ++v67;
    }

    while (v67 != 16);
    FileIdTuple::FileIdTuple(v240, v59, v58);
    if (!FileIdTuple::getPath(v240, v249))
    {
      v58 = 0;
      v59 = 0;
      strcpy(v249, "/usr/lib/dyld");
    }

    v55 = v254;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    strcpy(v249, "/usr/lib/dyld");
  }

  v70 = dyld4::KernelArgs::findApple(v55);
  v71 = _simple_getenv(v70, "executable_path");
  v247 = 0;
  v248 = v71;
  bzero(v246, 0x10uLL);
  hasExistingDyldCache = dyld4::SyscallDelegate::hasExistingDyldCache(&dyld4::sSyscallDelegate, &v247, v246);
  v73 = dyld3::MachOFile::inDyldCache(v255);
  if (v73)
  {
    v74 = mach_port_mod_refs(mach_task_self_, mach_task_self_, 0, -1);
    v227[0] = 0;
    LOBYTE(v228) = 0;
    v75 = lsl::MemoryManager::memoryManager(v74);
    v76 = *(v75 + 6);
    if (v76 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v76))
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v83 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v83 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v84 = MEMORY[0xFFFFFC0D0];
      if (v84 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }

      v85 = *(v75 + 6);
      v240[0] = _NSConcreteStackBlock;
      v240[1] = 0x40000000;
      *&v241 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld4L17handleDyldInCacheERNS_9AllocatorEPKN6mach_o6HeaderEPKNS2_10KernelArgsES8_E3__0EEvT__block_invoke;
      *(&v241 + 1) = &__block_descriptor_tmp_20;
      *&v242 = v227;
      *(&v242 + 1) = Apple;
      *&v243 = &v228;
      *(&v243 + 1) = &v255;
      *&v244 = &v254;
      *(&v244 + 1) = &v248;
      v245 = &v247;
      lsl::ProtectedStack::withNestedProtectedStack(v85, v240, v77, v78, v79, v80, v81, v82, cur_protection);
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v92 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v92 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v93 = 0xFFFFFC0D8;
      v94 = MEMORY[0xFFFFFC0D8];
      if (v94 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }
    }

    else if (*(v75 + 33) == 1)
    {
      if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        v159 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x40uLL);
        v227[0] = dyld4::ExternallyViewableState::ExternallyViewableState(v159, Apple);
        LOBYTE(v228) = dyld4::ExternallyViewableState::completeAllImageInfoTransition(v227[0], Apple, v255);
        dyld4::ExternallyViewableState::createMinimalInfo(v159, Apple, v255, "/usr/lib/dyld", *v254, v248, v247);
      }

      else
      {
        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_246;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        v107 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v107 & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
        __isb(0xFu);
        v108 = MEMORY[0xFFFFFC0D0];
        if (v108 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_246;
        }

        v109 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x40uLL);
        v227[0] = dyld4::ExternallyViewableState::ExternallyViewableState(v109, Apple);
        LOBYTE(v228) = dyld4::ExternallyViewableState::completeAllImageInfoTransition(v227[0], Apple, v255);
        dyld4::ExternallyViewableState::createMinimalInfo(v109, Apple, v255, "/usr/lib/dyld", *v254, v248, v247);
        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_246;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        v110 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v110 & 0xFE) != 2)
        {
          goto LABEL_246;
        }

        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v93 = 0xFFFFFC0D8;
        v111 = MEMORY[0xFFFFFC0D8];
        if (v111 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_246;
        }
      }
    }

    else
    {
      lsl::MemoryManager::lockGuard(v75, v240);
      v117 = *(v75 + 3);
      if (!v117)
      {
        lsl::MemoryManager::writeProtect(v75, 0);
        v117 = *(v75 + 3);
      }

      *(v75 + 3) = v117 + 1;
      lsl::Lock::unlock(*v240);
      v118 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x40uLL);
      v227[0] = dyld4::ExternallyViewableState::ExternallyViewableState(v118, Apple);
      LOBYTE(v228) = dyld4::ExternallyViewableState::completeAllImageInfoTransition(v227[0], Apple, v255);
      dyld4::ExternallyViewableState::createMinimalInfo(v118, Apple, v255, "/usr/lib/dyld", *v254, v248, v247);
      lsl::MemoryManager::lockGuard(v75, v240);
      v119 = *(v75 + 3) - 1;
      *(v75 + 3) = v119;
      if (!v119)
      {
        lsl::MemoryManager::writeProtect(v75, 1);
      }

      lsl::Lock::unlock(*v240);
    }

    if (kdebug_is_enabled(0x1F050014u, v93, v86, v87, v88, v89, v90, v91))
    {
      v240[0] = 0;
      v240[1] = 0;
      mach_o::Header::getUuid(v255, v240);
      mach_o::Header::arch(a2, v236);
      v127 = v59;
      v128 = a2;
      dyld3::kdebug_trace_dyld_image((&dword_4 + 1), v249, v240, v58, v127, v128, HIDWORD(v236[0]), v129, cur_protection);
    }

    if (kdebug_is_enabled(0x1F050000u, v120, v121, v122, v123, v124, v125, v126))
    {
      v240[0] = 0;
      v240[1] = 0;
      mach_o::Header::getUuid(v255, v240);
      v130 = v255;
      mach_o::Header::arch(v255, v236);
      v131 = 0;
      v132 = v130;
      dyld3::kdebug_trace_dyld_image(0, "/usr/lib/dyld", v240, 0, v131, v132, HIDWORD(v236[0]), v133, cur_protection);
    }

    v236[0] = 0;
    v236[1] = v236;
    *&v237 = 0x4002000000;
    *(&v237 + 1) = __Block_byref_object_copy__11;
    *&v238 = __Block_byref_object_dispose__12;
    *(&v238 + 1) = v240;
    v239 = xmmword_8BFC0;
    v134 = dyld3::MachOLoaded::getSlide(a2);
    v229 = _NSConcreteStackBlock;
    v230 = 0x40000000;
    v231 = ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke;
    v232 = &unk_A0100;
    v235 = v228;
    v233 = v236;
    v234 = v134;
    mach_o::Header::forEachSegment(a2, &v229);
    v135 = *(v236[1] + 7);
    if (v135)
    {
      v136 = *(v236[1] + 5);
      v137 = v136 + 16 * v135;
      do
      {
        v138 = *v136;
        v139 = *(v136 + 8);
        v136 += 16;
        munmap(v138, v139);
      }

      while (v136 != v137);
    }

    if (v228)
    {
      v140 = *(v236[1] + 7);
      if (!v140)
      {
        __assert_rtn("back", "Array.h", 62, "_usedCount > 0");
      }

      if ((v140 & 0xFFFFFFFFFFFFFFFLL) != 0)
      {
        v141 = *(v236[1] + 5);
        v142 = v141[2 * v140 - 1] + v141[2 * v140 - 2];
        v143 = 16 * v140 - 16;
        do
        {
          v144 = *v141;
          v141 += 2;
          address = v144;
          if (mach_vm_map(mach_task_self_, &address, v142 - v144, vm_page_mask, 0, 0, 0, 0, 0, 0, 1u))
          {
            v145 = v143 == 0;
          }

          else
          {
            v145 = 1;
          }

          v143 -= 16;
        }

        while (!v145);
      }
    }

    v146 = v227[0];
    _Block_object_dispose(v236, 8);
LABEL_223:
    v229 = v146;
    dyld4::RuntimeLocks::RuntimeLocks(v236);
    v246[0] = 0;
    v227[0] = 0;
    a2 = lsl::MemoryManager::memoryManager(v188);
    v240[0] = Apple;
    v240[1] = &v224;
    *&v241 = v246;
    *(&v241 + 1) = v236;
    *&v242 = &v229;
    *(&v242 + 1) = v227;
    *&v243 = &v223;
    v189 = *(a2 + 48);
    if (v189 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v189))
    {
      Apple = 0xFFFFFC10CLL;
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v196 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v196 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v197 = MEMORY[0xFFFFFC0D0];
            if (v197 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v198 = *(a2 + 48);
              v249[0] = _NSConcreteStackBlock;
              v249[1] = 0x40000000;
              v250 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld45startEPNS2_10KernelArgsEPvS5_E3__1EEvT__block_invoke;
              v251 = &__block_descriptor_tmp_29;
              v252[0] = *v240[0].val;
              v252[1] = v241;
              v252[2] = v242;
              v253 = v243;
              lsl::ProtectedStack::withNestedProtectedStack(v198, v249, v190, v191, v192, v193, v194, v195, cur_protection);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v199 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v199 & 0xFE) == 2)
                  {
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v200 = MEMORY[0xFFFFFC0D8];
                    if (v200 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
LABEL_252:
                      for (i = (v227[0])(*(*(v246[0] + 1) + 168), *(*(v246[0] + 1) + 176), *(*(v246[0] + 1) + 184), *(*(v246[0] + 1) + 192)); ; i = (v227[0])(*(*(v246[0] + 1) + 168), *(*(v246[0] + 1) + 176), *(*(v246[0] + 1) + 184), *(*(v246[0] + 1) + 192)))
                      {
                        dyld4::LibSystemHelpersWrapper::exit((v246[0] + 160), i);
LABEL_254:
                        lsl::Allocator::setBestFit(Apple, 1);
                        v215 = lsl::Allocator::aligned_alloc(Apple, 0x10uLL, 0x2F0uLL);
                        dyld4::ProcessConfig::ProcessConfig(v215, v224, &dyld4::sSyscallDelegate, Apple);
                        v216 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x498uLL);
                        v217 = dyld4::RuntimeState::RuntimeState(v216, v215, v236, Apple);
                        *v217 = off_A25B8;
                        v246[0] = v217;
                        v218 = lsl::MemoryManager::memoryManager(v217);
                        lsl::MemoryManager::setProtectedStack(v218, (v246[0] + 1128));
                        v219 = v229;
                        v220 = v246[0];
                        *(v246[0] + 77) = v229;
                        dyld4::ExternallyViewableState::setRuntimeState(v219, v220);
                        v227[0] = dyld4::prepare(v246[0], v223, v221);
                      }
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
      if (*(a2 + 33) != 1)
      {
LABEL_247:
        lsl::MemoryManager::lockGuard(a2, v249);
        v205 = *(a2 + 24);
        if (!v205)
        {
          lsl::MemoryManager::writeProtect(a2, 0);
          v205 = *(a2 + 24);
        }

        *(a2 + 24) = v205 + 1;
        lsl::Lock::unlock(v249[0]);
        lsl::Allocator::setBestFit(Apple, 1);
        v206 = lsl::Allocator::aligned_alloc(Apple, 0x10uLL, 0x2F0uLL);
        dyld4::ProcessConfig::ProcessConfig(v206, v224, &dyld4::sSyscallDelegate, Apple);
        v207 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x498uLL);
        v208 = dyld4::RuntimeState::RuntimeState(v207, v206, v236, Apple);
        *v208 = off_A25B8;
        v246[0] = v208;
        v209 = lsl::MemoryManager::memoryManager(v208);
        lsl::MemoryManager::setProtectedStack(v209, (v246[0] + 1128));
        v210 = v229;
        v211 = v246[0];
        *(v246[0] + 77) = v229;
        dyld4::ExternallyViewableState::setRuntimeState(v210, v211);
        v227[0] = dyld4::prepare(v246[0], v223, v212);
        lsl::MemoryManager::lockGuard(a2, v249);
        v213 = *(a2 + 24) - 1;
        *(a2 + 24) = v213;
        if (!v213)
        {
          lsl::MemoryManager::writeProtect(a2, 1);
        }

        lsl::Lock::unlock(v249[0]);
        goto LABEL_252;
      }

      a2 = 0xFFFFFC10CLL;
      if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
        {
          goto LABEL_254;
        }

        if (MEMORY[0xFFFFFC10C])
        {
          if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
          {
            v201 = MEMORY[0xFFFFFC10C];
            __dmb(0xAu);
            if ((v201 & 0xFE) == 2)
            {
              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
              __isb(0xFu);
              v202 = MEMORY[0xFFFFFC0D0];
              if (v202 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                dyld4::start(dyld4::KernelArgs *,void *,void *)::$_1::operator()(v240);
                if (MEMORY[0xFFFFFC10C])
                {
                  if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                  {
                    v203 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v203 & 0xFE) == 2)
                    {
                      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                      __isb(0xFu);
                      v204 = MEMORY[0xFFFFFC0D8];
                      if (v204 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                      {
                        goto LABEL_252;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  v228 = 0;
  a2 = lsl::MemoryManager::memoryManager(v73);
  v95 = *(a2 + 48);
  if (v95 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v95))
  {
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_246;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    v102 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v102 & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v103 = MEMORY[0xFFFFFC0D0];
    if (v103 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_246;
    }

    v104 = *(a2 + 48);
    v240[0] = _NSConcreteStackBlock;
    v240[1] = 0x40000000;
    *&v241 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld4L17handleDyldInCacheERNS_9AllocatorEPKN6mach_o6HeaderEPKNS2_10KernelArgsES8_E3__1EEvT__block_invoke;
    *(&v241 + 1) = &__block_descriptor_tmp_24;
    *&v242 = &v228;
    *(&v242 + 1) = Apple;
    *&v243 = &v255;
    *(&v243 + 1) = v249;
    *&v244 = &v254;
    *(&v244 + 1) = &v248;
    lsl::ProtectedStack::withNestedProtectedStack(v104, v240, v96, v97, v98, v99, v100, v101, cur_protection);
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_246;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    v105 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v105 & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v106 = MEMORY[0xFFFFFC0D8];
    if (v106 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_246;
    }
  }

  else if (*(a2 + 33) == 1)
  {
    a2 = 0xFFFFFC10CLL;
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_246;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      v160 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x40uLL);
      v228 = dyld4::ExternallyViewableState::ExternallyViewableState(v160, Apple);
      dyld4::ExternallyViewableState::createMinimalInfo(v228, Apple, v255, v249, *v254, v248, 0);
    }

    else
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v112 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v112 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v113 = MEMORY[0xFFFFFC0D0];
      if (v113 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }

      v114 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x40uLL);
      v228 = dyld4::ExternallyViewableState::ExternallyViewableState(v114, Apple);
      dyld4::ExternallyViewableState::createMinimalInfo(v228, Apple, v255, v249, *v254, v248, 0);
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_246;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      v115 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v115 & 0xFE) != 2)
      {
        goto LABEL_246;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v116 = MEMORY[0xFFFFFC0D8];
      if (v116 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_246;
      }
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(a2, v240);
    v147 = *(a2 + 24);
    if (!v147)
    {
      lsl::MemoryManager::writeProtect(a2, 0);
      v147 = *(a2 + 24);
    }

    *(a2 + 24) = v147 + 1;
    lsl::Lock::unlock(*v240);
    v148 = lsl::Allocator::aligned_alloc(Apple, 8uLL, 0x40uLL);
    v228 = dyld4::ExternallyViewableState::ExternallyViewableState(v148, Apple);
    dyld4::ExternallyViewableState::createMinimalInfo(v228, Apple, v255, v249, *v254, v248, 0);
    lsl::MemoryManager::lockGuard(a2, v240);
    v149 = *(a2 + 24) - 1;
    *(a2 + 24) = v149;
    if (!v149)
    {
      lsl::MemoryManager::writeProtect(a2, 1);
    }

    lsl::Lock::unlock(*v240);
  }

  v150 = dyld4::KernelArgs::findEnvp(v254);
  if (!_simple_getenv(v150, "DYLD_SHARED_REGION"))
  {
    v229 = 0;
    v230 = 0;
    if ((mach_o::Header::getUuid(v255, &v229) & hasExistingDyldCache) == 1)
    {
      a2 = v247;
      v151 = DyldSharedCache::dynamicRegion(v247);
      bzero(v227, 0x10uLL);
      if (v151)
      {
        DyldSharedCache::DynamicRegion::getDyldCacheFileID(v151, v227);
      }

      v152 = DyldSharedCache::slide(a2);
      v153 = *(a2 + 120);
      if (v153)
      {
        v154 = v152;
        address = 0;
        v226 = 0;
        v156 = 0;
        if (mach_o::Header::getUuid((v153 + v152), &address))
        {
          if (v229 == address && v230 == v226)
          {
            v156 = 1;
          }
        }

        v157 = dyld4::SyscallDelegate::internalInstall(&dyld4::sSyscallDelegate);
        if (!v157 || (v158 = dyld4::KernelArgs::findEnvp(v254), (v157 = _simple_getenv(v158, "DYLD_IN_CACHE")) == 0))
        {
          if (!v156)
          {
            goto LABEL_222;
          }

LABEL_192:
          v163 = lsl::MemoryManager::memoryManager(v157);
          v236[0] = &v228;
          v236[1] = Apple;
          *&v237 = &v255;
          *(&v237 + 1) = v249;
          *&v238 = &v254;
          *(&v238 + 1) = &v248;
          *&v239 = &v247;
          v164 = *(v163 + 6);
          if (v164 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v164))
          {
            if (!MEMORY[0xFFFFFC10C])
            {
              goto LABEL_246;
            }

            if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
            {
              goto LABEL_246;
            }

            v171 = MEMORY[0xFFFFFC10C];
            __dmb(0xAu);
            if ((v171 & 0xFE) != 2)
            {
              goto LABEL_246;
            }

            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v172 = MEMORY[0xFFFFFC0D0];
            if (v172 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              goto LABEL_246;
            }

            v173 = *(v163 + 6);
            v240[0] = _NSConcreteStackBlock;
            v240[1] = 0x40000000;
            *&v241 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld4L17handleDyldInCacheERNS_9AllocatorEPKN6mach_o6HeaderEPKNS2_10KernelArgsES8_E3__2EEvT__block_invoke;
            *(&v241 + 1) = &__block_descriptor_tmp_25;
            v242 = *v236;
            v243 = v237;
            v244 = v238;
            v245 = v239;
            lsl::ProtectedStack::withNestedProtectedStack(v173, v240, v165, v166, v167, v168, v169, v170, cur_protection);
            if (!MEMORY[0xFFFFFC10C])
            {
              goto LABEL_246;
            }

            if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
            {
              goto LABEL_246;
            }

            v174 = MEMORY[0xFFFFFC10C];
            __dmb(0xAu);
            if ((v174 & 0xFE) != 2)
            {
              goto LABEL_246;
            }

            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
            __isb(0xFu);
            v175 = MEMORY[0xFFFFFC0D8];
            if (v175 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              goto LABEL_246;
            }
          }

          else if (*(v163 + 33) == 1)
          {
            if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
            {
              goto LABEL_246;
            }

            if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
            {
              dyld4::handleDyldInCache(lsl::Allocator &,mach_o::Header const*,dyld4::KernelArgs const*,mach_o::Header const*)::$_2::operator()(v236);
            }

            else
            {
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_246;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_246;
              }

              v176 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v176 & 0xFE) != 2)
              {
                goto LABEL_246;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
              __isb(0xFu);
              v177 = MEMORY[0xFFFFFC0D0];
              if (v177 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_246;
              }

              dyld4::handleDyldInCache(lsl::Allocator &,mach_o::Header const*,dyld4::KernelArgs const*,mach_o::Header const*)::$_2::operator()(v236);
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_246;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_246;
              }

              v178 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v178 & 0xFE) != 2)
              {
                goto LABEL_246;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
              __isb(0xFu);
              v179 = MEMORY[0xFFFFFC0D8];
              if (v179 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_246;
              }
            }
          }

          else
          {
            lsl::MemoryManager::lockGuard(v163, v240);
            v180 = *(v163 + 3);
            if (!v180)
            {
              lsl::MemoryManager::writeProtect(v163, 0);
              v180 = *(v163 + 3);
            }

            *(v163 + 3) = v180 + 1;
            lsl::Lock::unlock(*v240);
            dyld4::handleDyldInCache(lsl::Allocator &,mach_o::Header const*,dyld4::KernelArgs const*,mach_o::Header const*)::$_2::operator()(v236);
            lsl::MemoryManager::lockGuard(v163, v240);
            v181 = *(v163 + 3) - 1;
            *(v163 + 3) = v181;
            if (!v181)
            {
              lsl::MemoryManager::writeProtect(v163, 1);
            }

            lsl::Lock::unlock(*v240);
          }

          dyld4::ExternallyViewableState::prepareInCacheDyldAllImageInfos(v228, (v153 + v154));
          v182 = FileIdTuple::inode(v227);
          v183 = FileIdTuple::fsID(v227);
          dyld3::kdebug_trace_dyld_cache(v182, v183, v247, (a2 + 88), v184, v185, v186, v187);
          dyld4::restartWithDyldInCache(v254, v255, a2, (*(a2 + 128) + v154));
          goto LABEL_222;
        }

        v161 = *v157;
        if (v161 == 49)
        {
          v162 = v157[1] == 0;
        }

        else
        {
          if (v161 == 48 && !v157[1])
          {
            goto LABEL_222;
          }

          v162 = 0;
        }

        if (v156 || v162)
        {
          goto LABEL_192;
        }
      }
    }
  }

LABEL_222:
  v146 = v228;
  goto LABEL_223;
}

BOOL kdebug_is_enabled(unsigned int a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!MEMORY[0xFFFFFC100])
  {
    return 0;
  }

  if ((MEMORY[0xFFFFFC100] & 2) == 0)
  {
    return 1;
  }

  v9 = kdebug_typefilter_typefilter;
  if (!kdebug_typefilter_typefilter)
  {
    v12 = 0;
    address = 0;
    if (!__kdebug_typefilter(&address, &v12, a3, a4, a5, a6, a7, a8) && address)
    {
      v11 = 0;
      atomic_compare_exchange_strong(&kdebug_typefilter_typefilter, &v11, address);
      if (v11)
      {
        mach_vm_deallocate(mach_task_self_, address, 0x2000uLL);
      }
    }

    v9 = kdebug_typefilter_typefilter;
    if (!kdebug_typefilter_typefilter)
    {
      return 1;
    }
  }

  return ((*(v9 + (a1 >> 19)) >> (BYTE2(a1) & 7)) & 1) != 0;
}

uint64_t __kdebug_typefilter(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kdebug_typefilter, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t dyld3::kdebug_trace_dyld_marker(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = a6;
  v13 = a4;
  v15 = a2;
  result = kdebug_is_enabled(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  if (a3)
  {
    v23 = kdebug_trace_string(a1, 0, a3, v18, v19, v20, v21, v22);
    if (v23 == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v23;
    }
  }

  if (a5)
  {
    v24 = kdebug_trace_string(a1, 0, a5, v18, v19, v20, v21, v22);
    if (v24 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v24;
    }
  }

  if (a7)
  {
    v25 = kdebug_trace_string(a1, 0, a7, v18, v19, v20, v21, v22);
    if (v25 == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v25;
    }
  }

  if (a10)
  {
    v26 = kdebug_trace_string(a1, 0, a10, v18, v19, v20, v21, v22);
    if (v26 == -1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v26;
    }

    result = kdebug_trace(a1, v15, v13, v11, v30, v27, v28, v29);
    if (v30)
    {
      result = kdebug_trace_string(a1, v30, 0, v31, v32, v33, v34, v35);
    }

    if (!a7)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  result = kdebug_trace(a1, v15, v13, v11, a9, v20, v21, v22);
  if (a7)
  {
LABEL_23:
    if (v11)
    {
      result = kdebug_trace_string(a1, v11, 0, v31, v32, v33, v34, v35);
    }
  }

LABEL_25:
  if (a5 && v13)
  {
    result = kdebug_trace_string(a1, v13, 0, v31, v32, v33, v34, v35);
  }

  if (a3 && v15)
  {

    return kdebug_trace_string(a1, v15, 0, v31, v32, v33, v34, v35);
  }

  return result;
}

uint64_t dyld4::objc_headeropt_rw_t::isLoaded(dyld4::objc_headeropt_rw_t *this, unsigned int a2)
{
  if (*this <= a2)
  {
    dyld4::objc_headeropt_rw_t::isLoaded();
  }

  return *(this + *(this + 1) * a2 + 8) & 1;
}

uint64_t dyld4::APIs::_dyld_find_foreign_type_protocol_conformance(dyld4::APIs *this, char *a2, const char *a3, uint64_t a4)
{
  v8 = *(this + 1);
  if (*(v8 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_find_protocol_conformance(%p, %s)\n", a2, a3);
    v8 = *(this + 1);
  }

  v9 = *(v8 + 424);
  v10 = *(v8 + 472);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 2;
  }

  v12 = *(v10 + 24);
  if (!v12)
  {
    return 2;
  }

  v13 = *(v8 + 368);
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = &a2[-v13];
  Potential = SwiftHashTable::getPotentialTarget<SwiftForeignTypeProtocolConformanceLookupKey,SwiftForeignTypeProtocolConformanceLocationKey>((v13 + v12), v24, v13);
  if (Potential == *(v13 + v12 + 16))
  {
    return 2;
  }

  v16 = Potential;
  v17 = v13 + v12 + Potential;
  v19 = *(v17 + 16);
  v18 = (v17 + 16);
  isLoaded = dyld4::objc_headeropt_rw_t::isLoaded(v9, HIWORD(v19));
  if (v19)
  {
    if ((isLoaded & 1) == 0)
    {
      v21 = v12 + v16 + v13 + 40;
      while ((*(v21 - 24) & 1) != 0)
      {
        v22 = dyld4::objc_headeropt_rw_t::isLoaded(v9, *(v21 + 6));
        v21 += 24;
        if (v22)
        {
          v18 = (v21 - 24);
          goto LABEL_19;
        }
      }

      return 2;
    }

LABEL_19:
    result = 0;
    v23 = *(*(this + 1) + 368) + ((*v18 >> 1) & 0x7FFFFFFFFFFFLL);
    return result;
  }

  if (isLoaded)
  {
    goto LABEL_19;
  }

  return 2;
}

uint64_t SwiftHashTable::getIndex<SwiftForeignTypeProtocolConformanceLookupKey,SwiftForeignTypeProtocolConformanceLocationKey>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = SwiftHashTable::hash<SwiftForeignTypeProtocolConformanceLookupKey>(a1, a2);
  if (*a1 <= v6)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v7 = v6;
  v8 = *(a1 + a1[5] + v6 + 1056);
  if (v8 != SwiftHashTable::checkbyte<SwiftForeignTypeProtocolConformanceLookupKey>(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9 <= v7)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v10 = *(&a1[v7 + 264] + a1[5] + v9);
  if (v10 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (SwiftHashTable::equal<SwiftForeignTypeProtocolConformanceLookupKey,SwiftForeignTypeProtocolConformanceLocationKey>(a1, (a1 + v10), a2, a3))
  {
    return v7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t SwiftHashTable::hash<SwiftForeignTypeProtocolConformanceLookupKey>(uint64_t a1, uint64_t a2)
{
  v4 = objc::lookup8(*a2, *(a2 + 8), *(a1 + 24));
  v5 = objc::lookup8((a2 + 16), &dword_8, *(a1 + 24));
  v6 = *(a1 + 8);
  if (v6 == 64)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 ^ v4) >> v6;
  }

  return v7 ^ *(a1 + 4 * *(a1 + ((v5 ^ v4) & *(a1 + 12)) + 1056) + 32);
}

uint64_t SwiftHashTable::getPotentialTarget<SwiftForeignTypeProtocolConformanceLookupKey,SwiftForeignTypeProtocolConformanceLocationKey>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = SwiftHashTable::getIndex<SwiftForeignTypeProtocolConformanceLookupKey,SwiftForeignTypeProtocolConformanceLocationKey>(a1, a2, a3);
  if (v4 == -1)
  {
    v6 = a1 + 4;
  }

  else
  {
    v5 = *a1;
    if (v5 <= v4)
    {
      dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
    }

    v6 = (&a1[v4 + 264] + a1[5] + v5);
  }

  return *v6;
}

uint64_t dyld4::APIs::_dyld_find_protocol_conformance(dyld4::APIs *this, char *a2, char *a3, char *a4)
{
  v8 = *(this + 1);
  if (*(v8 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_find_protocol_conformance(%p, %p, %p)\n", a2, a3, a4);
    v8 = *(this + 1);
  }

  v9 = *(v8 + 424);
  v10 = *(v8 + 472);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 2;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v12 = *(v10 + 8);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(v8 + 368);
  v37 = &a4[-v13];
  v38 = &a2[-v13];
  Potential = SwiftHashTable::getPotentialTarget<SwiftTypeProtocolConformanceLocationKey,SwiftTypeProtocolConformanceLocationKey>((v13 + v12), &v37);
  if (Potential == *(v13 + v12 + 16))
  {
    goto LABEL_10;
  }

  v19 = Potential;
  v20 = v13 + v12 + Potential;
  v22 = *(v20 + 16);
  v21 = (v20 + 16);
  isLoaded = dyld4::objc_headeropt_rw_t::isLoaded(v9, HIWORD(v22));
  if (v22)
  {
    if (isLoaded)
    {
LABEL_25:
      result = 0;
      v31 = *(*(this + 1) + 368);
      v32 = *v21;
      return result;
    }

    v29 = v12 + v19 + v13 + 40;
    while ((*(v29 - 24) & 1) != 0)
    {
      v30 = dyld4::objc_headeropt_rw_t::isLoaded(v9, *(v29 + 6));
      v29 += 24;
      if (v30)
      {
        v21 = (v29 - 24);
        goto LABEL_25;
      }
    }
  }

  else if (isLoaded)
  {
    goto LABEL_25;
  }

LABEL_10:
  if (!a3)
  {
    return 2;
  }

  v15 = *(v10 + 16);
  if (!v15)
  {
    return 2;
  }

  v16 = *(*(this + 1) + 368);
  v37 = &a3[-v16];
  v38 = &a2[-v16];
  v17 = SwiftHashTable::getPotentialTarget<SwiftTypeProtocolConformanceLocationKey,SwiftTypeProtocolConformanceLocationKey>((v16 + v15), &v37);
  if (v17 == *(v16 + v15 + 16))
  {
    return 2;
  }

  v24 = v17;
  v25 = v16 + v15 + v17;
  v27 = *(v25 + 16);
  v26 = (v25 + 16);
  v28 = dyld4::objc_headeropt_rw_t::isLoaded(v9, HIWORD(v27));
  if (v27)
  {
    if ((v28 & 1) == 0)
    {
      v33 = v15 + v24 + v16 + 40;
      while ((*(v33 - 24) & 1) != 0)
      {
        v34 = dyld4::objc_headeropt_rw_t::isLoaded(v9, *(v33 + 6));
        v33 += 24;
        if (v34)
        {
          v26 = (v33 - 24);
          goto LABEL_31;
        }
      }

      return 2;
    }
  }

  else if ((v28 & 1) == 0)
  {
    return 2;
  }

LABEL_31:
  result = 0;
  v35 = *(*(this + 1) + 368);
  v36 = *v26;
  return result;
}

uint64_t SwiftHashTable::getPotentialTarget<SwiftTypeProtocolConformanceLocationKey,SwiftTypeProtocolConformanceLocationKey>(unsigned int *a1, objc *a2)
{
  v3 = SwiftHashTable::getIndex<SwiftTypeProtocolConformanceLocationKey,SwiftTypeProtocolConformanceLocationKey>(a1, a2);
  if (v3 == -1)
  {
    v5 = a1 + 4;
  }

  else
  {
    v4 = *a1;
    if (v4 <= v3)
    {
      dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
    }

    v5 = (&a1[v3 + 264] + a1[5] + v4);
  }

  return *v5;
}

uint64_t dyld4::Loader::loadAddress(dyld4::Loader *this, const dyld4::RuntimeState *a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::loadAddress();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::loadAddress(this, a2);
  }

  else
  {

    return dyld4::JustInTimeLoader::mf(this, a2);
  }
}

uint64_t dyld4::PrebuiltLoader::loadAddress(dyld4::PrebuiltLoader *this, const dyld4::RuntimeState *a2)
{
  v3 = *(this + 3);
  if (*(this + 3) < 0)
  {
    return dyld4::RuntimeState::appLoadAddress(a2, v3 & 0x7FFF);
  }

  else
  {
    return dyld4::RuntimeState::cachedDylibLoadAddress(a2, v3);
  }
}

BOOL prebuilt_objc::EqualObjCStringKeyOnDisk::equal(unint64_t *a1, uint64_t a2, dyld4::RuntimeState *a3)
{
  v4 = dyld4::PrebuiltLoader::BindTargetRef::value(a1, a3);
  v5 = _platform_strlen(v4);
  return v5 == *(a2 + 8) && _platform_memcmp(v4, *a2, v5) == 0;
}

uint64_t dyld4::APIs::_dyld_objc_class_count(dyld4::APIs *this)
{
  v1 = *(this + 1);
  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_objc_class_count()\n");
    v1 = *(this + 1);
  }

  v3 = *(v1 + 440);
  if (v3)
  {
    return *(&v3[2 * v3[1] + 264 + v3[1]] + v3[1] + v3[4] + 1) + v3[2];
  }

  else
  {
    return 0;
  }
}

int _platform_memcmp(const void *__s1, const void *__s2, size_t __n)
{
  v3 = __n >= 0x10;
  v4 = __n - 16;
  if (!v3)
  {
    v3 = __CFADD__(v4, 8);
    v17 = v4 + 8;
    if (v3)
    {
      v19 = *__s1;
      __s1 = __s1 + 8;
      v18 = v19;
      v21 = *__s2;
      __s2 = __s2 + 8;
      v20 = v21;
      v22 = v18 - v21;
      if (v18 != v21)
      {
        goto LABEL_18;
      }

      v17 -= 8;
    }

    v3 = __CFADD__(v17, 4);
    v23 = v17 + 4;
    if (!v3)
    {
      v23 += 4;
      LODWORD(v22) = 0;
      goto LABEL_20;
    }

    v24 = *__s1;
    __s1 = __s1 + 4;
    v18 = v24;
    v25 = *__s2;
    __s2 = __s2 + 4;
    v20 = v25;
    v22 = v18 - v25;
    if (v18 == v25)
    {
      do
      {
LABEL_20:
        v3 = v23-- != 0;
        if (!v3)
        {
          break;
        }

        v28 = *__s1;
        __s1 = __s1 + 1;
        v27 = v28;
        v29 = *__s2;
        __s2 = __s2 + 1;
        LODWORD(v22) = v27 - v29;
      }

      while (v27 == v29);
      return v22;
    }

LABEL_18:
    v26 = __clz(bswap64(v22)) & 0xFFFFFFFFFFFFFFF8;
    return (v18 >> v26) - (v20 >> v26);
  }

  if (v4)
  {
    v5 = __s1 + v4;
    v6 = __s2 + v4;
    while (1)
    {
      v7 = *__s1;
      __s1 = __s1 + 16;
      v8 = v7;
      v9 = *__s2;
      __s2 = __s2 + 16;
      v10 = vceqq_s8(v8, v9);
      v8.i8[0] = vminvq_u8(v10);
      if (!v8.i32[0])
      {
        break;
      }

      v11 = v4 > 0x10;
      v4 -= 16;
      if (!v11)
      {
        __s1 = v5;
        __s2 = v6;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = *__s1;
    __s1 = __s1 + 16;
    v13 = v12;
    v14 = *__s2;
    __s2 = __s2 + 16;
    v10 = vceqq_s8(v13, v14);
    v13.i8[0] = vminvq_u8(v10);
    if (v13.i32[0])
    {
      return 0;
    }
  }

  v16 = vorrq_s8(v10, xmmword_5980);
  v16.i8[0] = vminvq_u8(v16);
  return *(__s1 + v16.u32[0] - 16) - *(__s2 + v16.u32[0] - 16);
}

unint64_t murmurHash(uint64_t *a1, int a2, uint64_t a3)
{
  v3 = (0xC6A4A7935BD1E995 * a2) ^ a3;
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 7;
  }

  if ((a2 + 7) >= 0xF)
  {
    v5 = 8 * (v4 >> 3);
    v6 = &a1[v4 >> 3];
    do
    {
      v7 = *a1++;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v7) ^ ((0xC6A4A7935BD1E995 * v7) >> 47))) ^ v3);
      v5 -= 8;
    }

    while (v5);
    a1 = v6;
  }

  v8 = a2 & 7;
  if (v8 > 3)
  {
    if ((a2 & 7u) > 5)
    {
      if (v8 != 6)
      {
        v3 ^= *(a1 + 6) << 48;
      }

      v3 ^= *(a1 + 5) << 40;
    }

    else if (v8 == 4)
    {
      goto LABEL_21;
    }

    v3 ^= *(a1 + 4) << 32;
LABEL_21:
    v3 ^= *(a1 + 3) << 24;
LABEL_22:
    v3 ^= *(a1 + 2) << 16;
    goto LABEL_23;
  }

  if ((a2 & 7u) <= 1)
  {
    if ((a2 & 7) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v8 != 2)
  {
    goto LABEL_22;
  }

LABEL_23:
  v3 ^= *(a1 + 1) << 8;
LABEL_24:
  v3 ^= *a1;
LABEL_25:
  v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47));
  return v9 ^ (v9 >> 47);
}

uint64_t dyld4::RuntimeState::inPermanentRange(dyld4::RuntimeState *this, unint64_t a2, unint64_t a3, unsigned __int8 *a4, const Loader **a5)
{
  explicit = *(this + 126);
  if (!explicit)
  {
    return 0;
  }

  while (1)
  {
    v6 = explicit[1];
    if (v6)
    {
      v7 = explicit + 5;
      v8 = 1;
      v9 = explicit[1];
      v10 = 1;
      while (*(v7 - 3) > a2 || *(v7 - 2) <= a3)
      {
        v10 = v8++ < v6;
        v7 += 4;
        if (!--v9)
        {
          goto LABEL_9;
        }
      }

      *a4 = *v7;
      *a5 = *(v7 - 1);
      if (v10)
      {
        return 1;
      }
    }

LABEL_9:
    explicit = atomic_load_explicit(explicit, memory_order_acquire);
    if (!explicit)
    {
      return 0;
    }
  }
}

void dyld3::MachOLoaded::getLinkEditPointers(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  dyld3::MachOLoaded::getLinkEditLoadCommands(a1, a2, a3);
  if (Diagnostics::noError(a2))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZNK5dyld311MachOLoaded13getLayoutInfoERNS0_10LayoutInfoE_block_invoke;
    v6[3] = &__block_descriptor_tmp_34_0;
    v6[4] = a1;
    v6[5] = a3 + 72;
    mach_o::Header::forEachSegment(a1, v6);
  }
}

uint64_t ___ZNK5dyld311MachOLoaded23getLinkEditLoadCommandsER11DiagnosticsRNS0_12LinkEditInfoE_block_invoke(uint64_t a1, int *a2)
{
  result = *(a1 + 56);
  v5 = *a2;
  if (*a2 <= 33)
  {
    if (v5 > 10)
    {
      if (v5 <= 28)
      {
        if (v5 != 11)
        {
          if (v5 != 27)
          {
            return result;
          }

          if (a2[1] == 24)
          {
            if (*(*(*(a1 + 32) + 8) + 24) == 1)
            {
              result = Diagnostics::error(*(a1 + 64), "multiple LC_UUID load commands");
            }
          }

          else
          {
            result = Diagnostics::error(*(a1 + 64), "LC_UUID load command size wrong");
          }

          v7 = *(a1 + 32);
          goto LABEL_89;
        }

        if (a2[1] == 80)
        {
          if (*(*(a1 + 72) + 32))
          {
            result = Diagnostics::error(*(a1 + 64), "multiple LC_DYSYMTAB load commands");
          }
        }

        else
        {
          result = Diagnostics::error(*(a1 + 64), "LC_DYSYMTAB load command size wrong");
        }

        *(*(a1 + 72) + 32) = a2;
      }

      else
      {
        switch(v5)
        {
          case 29:
            if (a2[1] == 16)
            {
              if (*(*(a1 + 72) + 64))
              {
                result = Diagnostics::error(*(a1 + 64), "multiple LC_CODE_SIGNATURE load commands");
              }
            }

            else
            {
              result = Diagnostics::error(*(a1 + 64), "LC_CODE_SIGNATURE load command size wrong");
            }

            *(*(a1 + 72) + 64) = a2;
            break;
          case 30:
            if (a2[1] == 16)
            {
              if (*(*(a1 + 72) + 40))
              {
                result = Diagnostics::error(*(a1 + 64), "multiple LC_SEGMENT_SPLIT_INFO load commands");
              }
            }

            else
            {
              result = Diagnostics::error(*(a1 + 64), "LC_SEGMENT_SPLIT_INFO load command size wrong");
            }

            *(*(a1 + 72) + 40) = a2;
            break;
          case 33:
            if (a2[1] == 20)
            {
              if (*(*(*(a1 + 48) + 8) + 24))
              {
                result = Diagnostics::error(*(a1 + 64), "multiple LC_ENCRYPTION_INFO load commands");
              }

              else
              {
                result = dyld3::MachOFile::is64(result);
                if (result)
                {
                  result = Diagnostics::error(*(a1 + 64), "LC_ENCRYPTION_INFO found in 64-bit mach-o");
                }
              }
            }

            else
            {
              result = Diagnostics::error(*(a1 + 64), "LC_ENCRYPTION_INFO load command size wrong");
            }

LABEL_88:
            v7 = *(a1 + 48);
LABEL_89:
            *(*(v7 + 8) + 24) = 1;
            return result;
          default:
            return result;
        }
      }

      return result;
    }

    if (v5 > -2147483597)
    {
      if (v5 == -2147483596)
      {
        if (a2[1] == 16)
        {
          if (*(*(a1 + 72) + 16))
          {
            result = Diagnostics::error(*(a1 + 64), "multiple LC_DYLD_CHAINED_FIXUPS load commands");
          }
        }

        else
        {
          result = Diagnostics::error(*(a1 + 64), "LC_DYLD_CHAINED_FIXUPS load command size wrong");
        }

        *(*(a1 + 72) + 16) = a2;
      }

      else if (v5 == 2)
      {
        if (a2[1] == 24)
        {
          if (*(*(a1 + 72) + 24))
          {
            result = Diagnostics::error(*(a1 + 64), "multiple LC_SYMTAB load commands");
          }
        }

        else
        {
          result = Diagnostics::error(*(a1 + 64), "LC_SYMTAB load command size wrong");
        }

        *(*(a1 + 72) + 24) = a2;
      }

      return result;
    }

    if (v5 != -2147483614)
    {
      if (v5 == -2147483597)
      {
        if (a2[1] == 16)
        {
          if (*(*(a1 + 72) + 8))
          {
            result = Diagnostics::error(*(a1 + 64), "multiple LC_DYLD_EXPORTS_TRIE load commands");
          }
        }

        else
        {
          result = Diagnostics::error(*(a1 + 64), "LC_DYLD_EXPORTS_TRIE load command size wrong");
        }

        *(*(a1 + 72) + 8) = a2;
      }

      return result;
    }

LABEL_48:
    if (a2[1] == 48)
    {
      if (**(a1 + 72))
      {
        result = Diagnostics::error(*(a1 + 64), "multiple LC_DYLD_INFO load commands");
      }
    }

    else
    {
      result = Diagnostics::error(*(a1 + 64), "LC_DYLD_INFO load command size wrong");
    }

    **(a1 + 72) = a2;
    return result;
  }

  if (v5 <= 40)
  {
    if ((v5 - 36) >= 2)
    {
      if (v5 != 34)
      {
        if (v5 == 38)
        {
          if (a2[1] == 16)
          {
            if (*(*(a1 + 72) + 48))
            {
              result = Diagnostics::error(*(a1 + 64), "multiple LC_FUNCTION_STARTS load commands");
            }
          }

          else
          {
            result = Diagnostics::error(*(a1 + 64), "LC_FUNCTION_STARTS load command size wrong");
          }

          *(*(a1 + 72) + 48) = a2;
        }

        return result;
      }

      goto LABEL_48;
    }

LABEL_30:
    if (a2[1] == 16)
    {
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        result = Diagnostics::error(*(a1 + 64), "multiple LC_VERSION_MIN_* load commands");
      }
    }

    else
    {
      result = Diagnostics::error(*(a1 + 64), "LC_VERSION_* load command size wrong");
    }

    v7 = *(a1 + 40);
    goto LABEL_89;
  }

  if (v5 > 46)
  {
    if ((v5 - 47) >= 2)
    {
      if (v5 == 50 && 8 * a2[5] + 24 != a2[1])
      {
        v6 = *(a1 + 64);

        return Diagnostics::error(v6, "LC_BUILD_VERSION load command size wrong");
      }

      return result;
    }

    goto LABEL_30;
  }

  if (v5 != 41)
  {
    if (v5 != 44)
    {
      return result;
    }

    if (a2[1] == 24)
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        result = Diagnostics::error(*(a1 + 64), "multiple LC_ENCRYPTION_INFO_64 load commands");
      }

      else
      {
        result = dyld3::MachOFile::is64(result);
        if ((result & 1) == 0)
        {
          result = Diagnostics::error(*(a1 + 64), "LC_ENCRYPTION_INFO_64 found in 32-bit mach-o");
        }
      }
    }

    else
    {
      result = Diagnostics::error(*(a1 + 64), "LC_ENCRYPTION_INFO_64 load command size wrong");
    }

    goto LABEL_88;
  }

  if (a2[1] == 16)
  {
    if (*(*(a1 + 72) + 56))
    {
      result = Diagnostics::error(*(a1 + 64), "multiple LC_DATA_IN_CODE load commands");
    }
  }

  else
  {
    result = Diagnostics::error(*(a1 + 64), "LC_DATA_IN_CODE load command size wrong");
  }

  *(*(a1 + 72) + 56) = a2;
  return result;
}

void dyld3::MachOAnalyzer::withChainStarts(unsigned int *a1, Diagnostics *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = *(a4 + 16);

    v6(a4, a1 + a3);
  }

  else
  {
    dyld3::MachOLoaded::getLinkEditPointers(a1, a2, &v22);
    if (!Diagnostics::hasError(a2))
    {
      if (v23)
      {
        LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(a1, &v24, *(v23 + 8));
        (*(a4 + 16))(a4, LinkEditContent + *(LinkEditContent + 4));
      }

      else if (v22 && a1[1] == 16777228 && dyld3::MachOFile::maskedCpuSubtype(a1) == 2)
      {
        Address = mach_o::Header::preferredLoadAddress(a1);
        v10 = dyld3::MachOFile::mappedSize(a1);
        v11 = *(v22 + 20) + 2 * (v10 >> 12);
        __chkstk_darwin();
        v13 = &v18[-1] - v12;
        v15 = &v18[-1] + v14 - v12;
        v16 = v25;
        *(&v18[-1] - v12) = v25;
        if (v16)
        {
          bzero(v13 + 4, 4 * v16);
        }

        else
        {
          v16 = 0;
        }

        v20[0] = 0;
        v20[1] = v20;
        v20[2] = 0x2000000000;
        v21 = 0;
        v19[0] = 0;
        v19[1] = v19;
        v19[2] = 0x2000000000;
        v19[3] = &v13[4 * v16 + 4];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 0x40000000;
        v18[2] = ___ZNK5dyld313MachOAnalyzer15withChainStartsER11DiagnosticsyU13block_pointerFvPK28dyld_chained_starts_in_imageE_block_invoke;
        v18[3] = &unk_A3E90;
        v18[4] = v20;
        v18[5] = v19;
        v18[6] = v13;
        v18[7] = v13;
        v18[8] = v15;
        v18[9] = Address;
        dyld3::MachOAnalyzer::parseOrgArm64eChainedFixups(a1, a2, 0, 0, v18);
        (*(a4 + 16))(a4, v13);
        _Block_object_dispose(v19, 8);
        _Block_object_dispose(v20, 8);
      }

      else
      {
        Diagnostics::error(a2, "image does not use chained fixups");
      }
    }
  }
}

uint64_t ___ZNK5dyld311MachOLoaded8getSlideEv_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(result + 40);
  if (*a2 == 1)
  {
    result = _platform_strcmp((a2 + 8), "__TEXT");
    if (result)
    {
      return result;
    }

    v7 = *(a2 + 24);
    goto LABEL_7;
  }

  if (*a2 == 25)
  {
    result = _platform_strcmp((a2 + 8), "__TEXT");
    if (!result)
    {
      v7 = *(a2 + 24);
LABEL_7:
      *(*(*(v5 + 32) + 8) + 24) = v6 - v7;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t dyld3::MachOLoaded::getSlide(dyld3::MachOLoaded *this)
{
  Diagnostics::Diagnostics(v9);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5dyld311MachOLoaded8getSlideEv_block_invoke;
  v4[3] = &unk_A39D8;
  v4[4] = &v5;
  v4[5] = this;
  dyld3::MachOFile::forEachLoadCommand(this, v9, v4);
  Diagnostics::assertNoError(v9);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  Diagnostics::~Diagnostics(v9);
  return v2;
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

uint64_t dyld3::MachOFile::hasChainedFixups(dyld3::MachOFile *this)
{
  if (*(this + 1) == 16777228 && (*(this + 2) & 0xFFFFFF) == 2 && (dyld3::MachOFile::hasLoadCommand(this, -2147483614) & 1) != 0)
  {
    return 1;
  }

  return dyld3::MachOFile::hasLoadCommand(this, -2147483596);
}

uint64_t ___ZNK6mach_o6Header14forEachSegmentEU13block_pointerFvRKNS0_11SegmentInfoERbE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    v11 = _platform_strnlen((a2 + 8), 0x10uLL);
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *&v14 = v12;
    *(&v14 + 1) = HIDWORD(v12);
    v18 = v14;
    if (v11 >= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = v11;
    }

    v16 = a2 + 8;
    v17 = v15;
    v19 = v13;
    v20 = *(a2 + 52);
    v8 = *(v5 + 32);
    v21 = *(*(*(v5 + 40) + 8) + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 44);
  }

  else
  {
    if (*a2 != 25)
    {
      return result;
    }

    v6 = _platform_strnlen((a2 + 8), 0x10uLL);
    if (v6 >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v6;
    }

    v16 = a2 + 8;
    v17 = v7;
    v18 = *(a2 + 24);
    v19 = vmovn_s64(*(a2 + 40));
    v20 = *(a2 + 68);
    v8 = *(v5 + 32);
    v21 = *(*(*(v5 + 40) + 8) + 24);
    v9 = *(a2 + 56);
    v10 = *(a2 + 60);
  }

  v22 = v9;
  v23 = v10;
  result = (*(v8 + 16))(v8, &v16, a3);
  ++*(*(*(v5 + 40) + 8) + 24);
  return result;
}

void dyld3::MachOLoaded::getLinkEditLoadCommands(unsigned int *a1, Diagnostics *a2, uint64_t a3)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld311MachOLoaded23getLinkEditLoadCommandsER11DiagnosticsRNS0_12LinkEditInfoE_block_invoke;
  v5[3] = &unk_A3900;
  v5[8] = a2;
  v5[9] = a3;
  v5[4] = v10;
  v5[5] = v8;
  v5[6] = v6;
  v5[7] = a1;
  dyld3::MachOFile::forEachLoadCommand(a1, a2, v5);
  if (Diagnostics::noError(a2) && *(a3 + 32) && !*(a3 + 24))
  {
    Diagnostics::error(a2, "LC_DYSYMTAB but no LC_SYMTAB load command");
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

mach_o::Error *mach_o::Header::forEachLoadCommand@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  v4 = result;
  v6 = *result;
  if (*result == -17958193)
  {
    v7 = 32;
  }

  else
  {
    if (v6 != -17958194)
    {
      if ((v6 & 0xFEFFFFFF) == 0xCEFAEDFE)
      {

        return mach_o::Error::Error(a3, "big endian mach-o file");
      }

      else
      {
        v16 = *result;
        v17 = *(result + 1);
        return mach_o::Error::Error(a3, "file does not start with MH_MAGIC[_64]: 0x%08X 0x%08X");
      }
    }

    v7 = 28;
  }

  if (*(result + 3) < 0xDu)
  {
    if (*(result + 4))
    {
      v8 = result + v7;
      v9 = result + v7 + *(result + 5);
      v10 = 1;
      for (i = result + v7; ; i = v13)
      {
        if (i >= v9)
        {
          return mach_o::Error::Error(a3, "malformed load command (%d of %d) at %p with mh=%p, off end of load commands");
        }

        v12 = *(i + 1);
        if (v12 <= 7)
        {
          break;
        }

        v13 = &i[v12];
        if (&i[v12] > v9 || v13 < v8)
        {
          v18 = *(i + 1);
          return mach_o::Error::Error(a3, "malformed load command (%d of %d) at %p with mh=%p, size (0x%X) is too large, load commands end at %p");
        }

        result = (*(a2 + 16))(a2);
        if (++v10 > *(v4 + 4))
        {
          goto LABEL_18;
        }
      }

      return mach_o::Error::Error(a3, "malformed load command (%d of %d) at %p with mh=%p, size (0x%X) too small");
    }

    else
    {
LABEL_18:
      *a3 = 0;
    }
  }

  else
  {
    v15 = *(result + 3);
    return mach_o::Error::Error(a3, "unknown mach-o filetype (%u)");
  }

  return result;
}

void mach_o::Header::forEachSegment(mach_o::Error *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header14forEachSegmentEU13block_pointerFvRKNS0_11SegmentInfoERbE_block_invoke;
  v2[3] = &unk_A5450;
  v2[4] = a2;
  v2[5] = v3;
  mach_o::Header::forEachLoadCommand(a1, v2, &v5);
  mach_o::Error::~Error(&v5);
  _Block_object_dispose(v3, 8);
}

const char **Diagnostics::assertNoError(const char **this)
{
  if (*this)
  {
    abort_report_np("%s", *this);
  }

  return this;
}

const os_unfair_lock *lsl::Lock::unlock(lsl::Lock *this)
{
  result = *(this + 1);
  if (result)
  {
    os_unfair_lock_assert_owner(result);
    if (!*this)
    {
      lsl::Lock::unlock();
    }

    v3 = *(this + 1);
    v4 = *(**(*this + 160) + 168);

    return v4();
  }

  return result;
}

dyld4::ExternallyViewableState *dyld4::ExternallyViewableState::ExternallyViewableState(dyld4::ExternallyViewableState *this, lsl::Allocator::Pool **a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  v4 = lsl::Allocator::malloc(a2, 0x20uLL);
  *v4 = a2;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(this + 5) = v4;
  v5 = lsl::Allocator::malloc(a2, 0x20uLL);
  *v5 = a2;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(this + 6) = v5;
  v6 = lsl::Allocator::malloc(a2, 0x20uLL);
  *v6 = a2;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(this + 7) = v6;
  dyld4::sExternallyViewableState = this;
  *(this + 4) = sProcessInfo;
  *(this + 16) = 16;
  return this;
}

ssize_t fsgetpath(char *a1, size_t a2, fsid_t *a3, uint64_t a4)
{
  result = mac_syscall(SYS_fsgetpath, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

BOOL dyld4::SyscallDelegate::hasExistingDyldCache(dyld4::SyscallDelegate *this, unint64_t *a2, FileIdTuple *a3)
{
  result = 0;
  if (!__shared_region_check_np(a2))
  {
    v6 = DyldSharedCache::dynamicRegion(*a2);
    if (v6)
    {
      if (DyldSharedCache::DynamicRegion::getDyldCacheFileID(v6, a3))
      {
        return 1;
      }
    }
  }

  return result;
}

int __shared_region_check_np(uint64_t *a1)
{
  result = mac_syscall(SYS_shared_region_check_np, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

lsl::Allocator::Pool *lsl::Allocator::aligned_alloc(lsl::Allocator::Pool **this, unint64_t a2, unint64_t a3)
{
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    lsl::Allocator::aligned_alloc();
  }

  v5 = 16;
  if (a2 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = a2;
  }

  if (a3 > 0x10)
  {
    v5 = a3;
  }

  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager(this);
  }

  v8 = (v6 + v5 - 1) & -v6;
  lsl::Lock::lock(&lsl::sMemoryManagerBuffer);
  qword_AC040 = a2;
  unk_AC048 = a3;
  qword_AC050 = v6;
  unk_AC058 = v8;
  v9 = this[1];
  if (*(this + 32) == 1)
  {
    v10 = lsl::Allocator::Pool::aligned_alloc_best_fit(v9, v6, v8);
  }

  else
  {
    v10 = lsl::Allocator::Pool::aligned_alloc(v9, v6, v8);
  }

  v11 = v10;
  if (!v10)
  {
    v12 = v6 + v8 + 16479;
    if (v12 >= 0x20000)
    {
      v14 = v12 & 0xFFFFFFFFFFFFC000;
    }

    else
    {
      v14 = 0x20000;
    }

    v13 = this[1];
    *(v13 + 1) = lsl::Allocator::Pool::Pool(*(v13 + 1), this, v13, v14, *(v13 + 58));
    v15 = *(this[1] + 1);
    this[1] = v15;
    v11 = lsl::Allocator::Pool::aligned_alloc(v15, v6, v8);
    if (!v11)
    {
      lsl::Allocator::aligned_alloc();
    }
  }

  this[2] = (this[2] + v8);
  lsl::Lock::unlock(&lsl::sMemoryManagerBuffer);
  return v11;
}

const os_unfair_lock *lsl::Lock::lock(lsl::Lock *this)
{
  result = *(this + 1);
  if (result)
  {
    os_unfair_lock_assert_not_owner(result);
    if (!*this)
    {
      lsl::Lock::lock();
    }

    v3 = *(this + 1);
    v4 = *(**(*this + 160) + 160);

    return v4();
  }

  return result;
}

uint64_t DyldSharedCache::DynamicRegion::getDyldCacheFileID(DyldSharedCache::DynamicRegion *this, FileIdTuple *a2)
{
  if (!*(this + 4) || !*(this + 6))
  {
    return 0;
  }

  *a2 = *(this + 1);
  return 1;
}

void mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer()
{
  __assert_rtn("signPointer", "MachOLayout.cpp", 2026, "this->authBind.auth == 1");
}

{
  __assert_rtn("signPointer", "MachOLayout.cpp", 2017, "0 && invalid signing key");
}

_DWORD *mach_o::Platform::basePlatform@<X0>(_DWORD *this@<X0>, uint64_t a2@<X8>)
{
  if (*this)
  {
    *a2 = *(*this + 8);
LABEL_3:
    *(a2 + 8) = 0;
    return this;
  }

  v2 = this[2];
  *a2 = 0;
  if (!v2)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = v2;
  return this;
}

void __assert_rtn(const char *a1, const char *a2, int a3, const char *a4)
{
  if (!a1)
  {
    abort_report_np("Assertion failed: (%s), file %s, line %d.\n", a4, a2, a3);
  }

  abort_report_np("Assertion failed: (%s), function %s, file %s, line %d.\n", a4, a1, a2, a3);
}

unint64_t *dyld4::PrebuiltLoader::BindTargetRef::value(unint64_t *this, dyld4::RuntimeState *a2)
{
  v3 = this;
  v4 = *this;
  v5 = *this >> 62;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v5 == 1)
      {
        dyld4::PrebuiltLoader::BindTargetRef::value();
      }

      v12[0] = *this;
      v9 = dyld4::Loader::LoaderRef::loader(v12, a2);
      Address = dyld4::Loader::loadAddress(v9, a2);
      FileIdTuple::FileIdTuple(v12, ((*v3 >> 26) & 0xFFFFFFFFFLL) + Address, 0x4000);
      return (dyld4::ProcessConfig::Process::selectFromFunctionVariants((*(a2 + 1) + 16), v12, *(v3 + 2) & 0x3FF) + Address);
    }
  }

  else if (v5)
  {
    v11 = (v4 >> 8) | 0xC0000000000000;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v11 = (v4 >> 8) & 0x3FFFFFFFFFFFFFLL;
    }

    return (v11 | (v4 << 56));
  }

  else
  {
    if (v5 == 1)
    {
      dyld4::PrebuiltLoader::BindTargetRef::value();
    }

    v12[0] = *this;
    v6 = dyld4::Loader::LoaderRef::loader(v12, a2);
    v7 = dyld4::Loader::loadAddress(v6, a2);
    v8 = (*v3 >> 24) | 0xFFFFC000000000;
    if ((*v3 & 0x2000000000000000) == 0)
    {
      v8 = (*v3 >> 24) & 0x3FFFFFFFFFLL;
    }

    return (v7 + (*v3 >> 16 << 56) + v8);
  }

  return this;
}

uint64_t dyld4::Loader::LoaderRef::loader(dyld4::Loader::LoaderRef *this, const dyld4::RuntimeState *a2)
{
  v2 = *this;
  v3 = *this;
  if (v2 < 0)
  {
    v4 = *(a2 + 122);
    v2 = v3 & 0x7FFF;
    if (*(v4 + 12) <= v2)
    {
      dyld4::RuntimeState::findPrebuiltLoader();
    }
  }

  else
  {
    v4 = *(a2 + 119);
    if (*(v4 + 12) <= v3)
    {
      dyld4::RuntimeState::findPrebuiltLoader();
    }
  }

  return v4 + *(v4 + *(v4 + 16) + 4 * v2);
}

uint64_t dyld4::RuntimeState::appLoadAddress(dyld4::RuntimeState *this, unsigned int a2)
{
  v2 = *(this + 122);
  if (!v2)
  {
    dyld4::RuntimeState::appLoadAddress();
  }

  if (*(v2 + 12) <= a2)
  {
    dyld4::RuntimeState::appLoadAddress();
  }

  return *(*(this + 124) + 8 * a2);
}

BOOL dyld4::APIs::dyld_sdk_at_least(dyld4::APIs *a1, const mach_o::Header *a2, unint64_t a3)
{
  v6 = *(a1 + 1);
  v16 = *(v6 + 112);
  v17 = *(v6 + 120);
  v7 = dyld4::APIs::mapFromVersionSet(a1, a3, &v16);
  dyld4::APIs::getImagePlatformAndVersions(a1, a2, v8, &v16);
  mach_o::Platform::basePlatform(&v16, &v14);
  mach_o::Platform::Platform(v11, v7);
  mach_o::Platform::basePlatform(v11, &v12);
  v9 = v14 == v12 && v15 == v13 && (mach_o::Platform::basePlatform(&v16, &v14), !mach_o::Platform::empty(&v14)) && v18 >= HIDWORD(v7);
  if (*(*(a1 + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(a1, "dyld_sdk_at_least(%p, <%d,0x%08X>) => %d\n", a2, a3, HIDWORD(a3), v9);
  }

  return v9;
}

unint64_t dyld4::APIs::mapFromVersionSet(int a1, unint64_t a2, mach_o::Platform *this)
{
  v5 = HIDWORD(a2);
  if (a2 == -1)
  {
    v17 = v3;
    v18 = v4;
    v7 = &dword_8CA40;
    v8 = 2240;
    while (*(v7 - 4) < HIDWORD(a2))
    {
      v7 += 10;
      v8 -= 40;
      if (!v8)
      {
        LODWORD(a2) = 0;
LABEL_6:
        v5 = 0;
        return a2 | (v5 << 32);
      }
    }

    mach_o::Platform::basePlatform(this, &v15);
    v9 = v15;
    *this = v15;
    v10 = v16;
    *(this + 2) = v16;
    if (v9 == &mach_o::PlatformInfo_macOS::singleton && v10 == 0)
    {
      v5 = *(v7 - 3);
      LODWORD(a2) = 1;
    }

    else if (v9 == &mach_o::PlatformInfo_iOS::singleton && v10 == 0)
    {
      v5 = *(v7 - 2);
      LODWORD(a2) = 2;
    }

    else if (v9 == &mach_o::PlatformInfo_watchOS::singleton && v10 == 0)
    {
      v5 = *(v7 - 1);
      LODWORD(a2) = 4;
    }

    else if (v9 != &mach_o::PlatformInfo_tvOS::singleton || v10)
    {
      if (v9 != &mach_o::PlatformInfo_bridgeOS::singleton || v10)
      {
        if (v9 != &mach_o::PlatformInfo_visionOS::singleton || v10)
        {
          LODWORD(a2) = mach_o::Platform::value(this);
          goto LABEL_6;
        }

        v5 = v7[3];
        LODWORD(a2) = 11;
      }

      else
      {
        v5 = v7[1];
        LODWORD(a2) = 5;
      }
    }

    else
    {
      v5 = *v7;
      LODWORD(a2) = 3;
    }
  }

  return a2 | (v5 << 32);
}

BOOL DyldSharedCache::inDyldCache(DyldSharedCache *this, const DyldSharedCache *a2, const mach_o::Header *a3)
{
  v5 = dyld3::MachOFile::inDyldCache(a2);
  result = 0;
  if (a2 >= this && this)
  {
    if (v5)
    {
      return (this + DyldSharedCache::mappedSize(this)) > a2;
    }
  }

  return result;
}

void dyld4::APIs::getImagePlatformAndVersions(dyld4::APIs *this@<X0>, const mach_o::Header *a2@<X1>, const mach_o::Header *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 1);
  if (*(v5 + 24) == a2)
  {
    *a4 = *(v5 + 112);
    *(a4 + 8) = *(v5 + 120);
    v10 = *(v5 + 88);
    v9 = *(v5 + 80);
    *(a4 + 16) = v10;
    goto LABEL_5;
  }

  if (DyldSharedCache::inDyldCache(*(v5 + 368), a2, a3))
  {
    v8 = *(this + 1);
    *a4 = *(v8 + 512);
    *(a4 + 8) = *(v8 + 520);
    v9 = *(v8 + 528);
    *(a4 + 16) = v9;
LABEL_5:
    *(a4 + 20) = v9;
    *(a4 + 24) = 0x1000000010000;
    return;
  }

  if (dyld3::MachOFile::hasMachOMagic(a2))
  {
    mach_o::Header::validStructureLoadCommands(a2, 0x10000uLL, &v11);
    if (v11)
    {
      mach_o::Platform::Platform(a4, 0);
      *(a4 + 16) = xmmword_8CA20;
      mach_o::Error::~Error(&v11);
    }

    else
    {
      mach_o::Error::~Error(&v11);
      dyld4::APIs::getPlatformAndVersions(a2, a4);
    }
  }

  else
  {
    mach_o::Platform::Platform(a4, 0);
    *(a4 + 16) = xmmword_8CA20;
  }
}

void abort_report_np(char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x400uLL, __format, va);
  dyld4::halt(__str, 0);
}

vm_address_t _simple_salloc()
{
  if (vm_allocate(mach_task_self_, &address, vm_page_size, 1))
  {
    return 0;
  }

  v1 = address + 40;
  *address = address + 40;
  result = address;
  v2 = address + vm_page_size - 1;
  *(address + 8) = v1;
  *(result + 16) = v2;
  *(result + 32) = _enlarge;
  return result;
}

int vsnprintf(char *__str, size_t __size, const char *__format, va_list a4)
{
  v8 = _simple_salloc();
  LODWORD(a4) = _simple_vsprintf(v8, __format, a4);
  v9 = _simple_string(v8);
  strlcpy(__str, v9, __size);
  _simple_sfree(v8);
  return a4;
}

int mprotect(void *a1, size_t a2, int a3)
{
  result = mac_syscall(SYS_mprotect, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int64_t _pthread_set_self_dyld(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = __thread_selfid(a1, a2, a3, a4, a5, a6, a7, a8);
  qword_ADF18 = result;
  if (result == -1)
  {
    qword_A82F8 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
  }

  else
  {
    qword_ADF20 = &_main_thread;
    unk_ADF28 = &unk_ADEEC;

    return _thread_set_tsd_base(&qword_ADF20);
  }

  return result;
}

uint64_t _pthread_set_self(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    result = __thread_selfid(a1, a2, a3, a4, a5, a6, a7, a8);
    a1[27] = result;
    if (result == -1)
    {
      qword_A82F8 = "BUG IN LIBPTHREAD: failed to set thread_id";
      __break(0xB001u);
    }

    else
    {

      return _thread_set_tsd_base(a1 + 28);
    }
  }

  else
  {

    return _pthread_set_self_dyld(0, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t __thread_selfid(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_thread_selfid, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror(result);
  }

  return result;
}

uint64_t ___ZNK5dyld311MachOLoaded13getLayoutInfoERNS0_10LayoutInfoE_block_invoke(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 == (&dword_8 + 2))
  {
    v9 = *v2;
    v10 = *(v2 + 4);
    if (v9 == 0x44454B4E494C5F5FLL && v10 == 21577)
    {
      v12 = *(result + 40);
      *(v12 + 16) = a2[2];
      *(v12 + 24) = a2[4];
      *(v12 + 32) = *(a2 + 22);
    }
  }

  else if (v3 == (&dword_4 + 2))
  {
    v4 = *v2;
    v5 = *(v2 + 2);
    if (v4 == 1163157343 && v5 == 21592)
    {
      v7 = a2[2];
      v8 = *(result + 40);
      *v8 = *(result + 32) - v7;
      v8[1] = v7;
    }
  }

  *(*(result + 40) + 36) = *(a2 + 22);
  return result;
}

uint64_t dyld3::MachOFile::walkChain(Diagnostics *a1, unsigned int *a2, mach_o::ChainedFixupPointerOnDisk *this, char a4, unsigned int a5, uint64_t a6)
{
  v8 = this;
  v10 = mach_o::ChainedFixupPointerOnDisk::strideSize(this);
  v21 = 0;
  while (1)
  {
    v11 = *a2;
    v12 = a2[1];
    (*(a6 + 16))(a6, a2, &v21);
    result = v21;
    if (v21)
    {
      goto LABEL_29;
    }

    if (v8 > 4)
    {
      break;
    }

    if (v8 == 1)
    {
LABEL_15:
      v14 = (v12 >> 19) & 0x7FF;
      if (!v14)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v8 == 2)
    {
      goto LABEL_27;
    }

    if (v8 != 3)
    {
      goto LABEL_34;
    }

    v15 = (v11 >> 26) & 0x1F;
    if (!v15)
    {
      return 0;
    }

    a2 += v15;
    if (a4)
    {
      result = 0;
    }

    else
    {
      for (result = 0; ; result = 0)
      {
        v17 = *a2;
        if ((*a2 & 0x80000000) != 0 || (v17 & 0x3FFFFFF) <= a5)
        {
          break;
        }

        a2 = (a2 + (HIBYTE(v17) & 0x7CLL));
      }
    }

LABEL_29:
    if (result)
    {
      return result;
    }
  }

  if (v8 <= 0xD)
  {
    if (((1 << v8) & 0x1680) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v8) & 0x900) != 0)
    {
      v14 = (v12 >> 19) & 0xFFF;
      if (!v14)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v8 == 13)
    {
      v14 = (v12 >> 20) & 0x7FF;
      if (!v14)
      {
        return 0;
      }

LABEL_16:
      result = 0;
      v16 = v14 * v10;
LABEL_17:
      a2 = (a2 + v16);
      goto LABEL_29;
    }
  }

  if (v8 == 5)
  {
    if (!(v11 >> 26))
    {
      return 0;
    }

    result = 0;
    v16 = BYTE3(v11) & 0xFC;
    goto LABEL_17;
  }

  if (v8 == 6)
  {
LABEL_27:
    v18 = (v12 >> 19) & 0xFFF;
    if (!v18)
    {
      return 0;
    }

    result = 0;
    a2 += v18;
    goto LABEL_29;
  }

LABEL_34:
  Diagnostics::error(a1, "unknown pointer format 0x%04X", v8);
  return 1;
}

uint64_t dyld3::MachOLoaded::forEachFixupInSegmentChains(uint64_t result, Diagnostics *a2, uint64_t a3, char a4, uint64_t a5)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___ZNK5dyld311MachOLoaded27forEachFixupInSegmentChainsER11DiagnosticsPK30dyld_chained_starts_in_segmentbU13block_pointerFvPN6mach_o25ChainedFixupPointerOnDiskES5_RbE_block_invoke;
  v14[3] = &unk_A3AA0;
  v14[4] = a5;
  v14[5] = a3;
  if (*(a3 + 20))
  {
    v8 = result;
    v9 = 0;
    v10 = a3 + 22;
    do
    {
      v11 = *(v10 + 2 * v9);
      if (v11 == 0xFFFF)
      {
        result = 0;
      }

      else if ((v11 & 0x8000) != 0)
      {
        v12 = v11 & 0x7FFF;
        do
        {
          v13 = *(v10 + 2 * v12);
          result = dyld3::MachOFile::walkChain(a2, (v8 + *(a3 + 8) + v9 * *(a3 + 4) + (v13 & 0x7FFF)), *(a3 + 6), a4, *(a3 + 16), v14);
          if (v13 < 0)
          {
            break;
          }

          ++v12;
        }

        while ((result & 1) == 0);
      }

      else
      {
        result = dyld3::MachOFile::walkChain(a2, (v8 + *(a3 + 8) + v9 * *(a3 + 4) + v11), *(a3 + 6), a4, *(a3 + 16), v14);
      }

      ++v9;
    }

    while (v9 < *(a3 + 20) && (result & 1) == 0);
  }

  return result;
}

uint64_t dyld3::MachOLoaded::fixupAllChainedFixups(uint64_t a1, Diagnostics *a2, unsigned int *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5dyld311MachOLoaded21fixupAllChainedFixupsER11DiagnosticsPK28dyld_chained_starts_in_imagemNS_5ArrayIPKvEEU13block_pointerFvPvSA_E_block_invoke;
  v7[3] = &unk_A3A78;
  v8 = *a5;
  v9 = *(a5 + 2);
  v10 = a2;
  v11 = a4;
  v7[4] = a6;
  v7[5] = a1;
  return dyld3::MachOLoaded::forEachFixupInAllChains(a1, a2, a3, 1, v7);
}

uint64_t ___ZN5dyld4L10rebaseSelfEPKN5dyld313MachOAnalyzerE_block_invoke(void *a1, unsigned int *a2)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = a1[6];
  v6 = 0uLL;
  v7 = 0;
  return dyld3::MachOLoaded::fixupAllChainedFixups(v2, (v3 + 40), a2, v4, &v6, 0);
}

uint64_t dyld3::MachOLoaded::forEachFixupInAllChains(uint64_t result, Diagnostics *a2, unsigned int *a3, char a4, uint64_t a5)
{
  v5 = *a3;
  if (v5)
  {
    v10 = result;
    v11 = 1;
    do
    {
      v12 = a3[v11];
      if (v12)
      {
        result = dyld3::MachOLoaded::forEachFixupInSegmentChains(v10, a2, a3 + v12, a4, a5);
        v5 = *a3;
      }

      ++v11;
    }

    while (v11 - 1 < v5);
  }

  return result;
}

uint64_t mach_o::ChainedFixupPointerOnDisk::strideSize(mach_o::ChainedFixupPointerOnDisk *this)
{
  if ((this - 1) >= 0xD)
  {
    mach_o::ChainedFixupPointerOnDisk::strideSize();
  }

  return dword_8D310[(this - 1)];
}

uint64_t mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(mach_o::ChainedFixupPointerOnDisk::Arm64e *this, unint64_t a2, mach_o::ChainedFixupPointerOnDisk::Arm64e *a3)
{
  v4 = *this;
  if ((*this & 0x8000000000000000) == 0)
  {
    mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer();
  }

  return mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(a3, a2, (HIWORD(v4) & 1), SBYTE4(v4), (v4 >> 49) & 3);
}

uint64_t ___ZNK5dyld311MachOLoaded21fixupAllChainedFixupsER11DiagnosticsPK28dyld_chained_starts_in_imagemNS_5ArrayIPKvEEU13block_pointerFvPvSA_E_block_invoke(uint64_t a1, mach_o::ChainedFixupPointerOnDisk::Arm64e *this, uint64_t a3, _BYTE *a4)
{
  v6 = *(a3 + 6);
  if (v6 > 0xC)
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 40);
  if (((1 << v6) & 0x1282) == 0)
  {
    if (((1 << v6) & 0x44) != 0)
    {
      v11 = *this;
      if ((*this & 0x8000000000000000) == 0)
      {
        if (v6 == 2)
        {
          v10 = mach_o::ChainedFixupPointerOnDisk::Generic64::unpackedTarget(this);
          goto LABEL_11;
        }

        v23 = mach_o::ChainedFixupPointerOnDisk::Generic64::unpackedTarget(this);
LABEL_30:
        v12 = v23 + v8;
        goto LABEL_31;
      }

      if ((v11 & 0xFFFFFFuLL) < *(a1 + 64))
      {
        v17 = *(*(a1 + 48) + 8 * (v11 & 0xFFFFFF));
        v18 = mach_o::ChainedFixupPointerOnDisk::Generic64::signExtendedAddend(this);
        goto LABEL_27;
      }

      v22 = *(a1 + 72);
      goto LABEL_35;
    }

LABEL_18:
    v24 = *(a3 + 6);
    result = Diagnostics::error(*(a1 + 72), "unsupported pointer chain format: 0x%04X");
LABEL_36:
    *a4 = 1;
    return result;
  }

  v9 = *this;
  if ((*this & 0x8000000000000000) != 0)
  {
    if ((v9 & 0x4000000000000000) != 0)
    {
      v14 = v6 == 12;
      v20 = 0xFFFFLL;
      if (v14)
      {
        v20 = 0xFFFFFFLL;
      }

      v21 = v9 & v20;
      if (v21 >= *(a1 + 64))
      {
LABEL_24:
        v22 = *(a1 + 72);
LABEL_35:
        result = Diagnostics::error(v22, "out of range bind ordinal %d (max %llu)");
        goto LABEL_36;
      }

      v13 = *(*(a1 + 48) + 8 * v21);
      if (!v13)
      {
        v12 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = (v8 + v9);
    }

    v12 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(this, this, v13);
    goto LABEL_31;
  }

  if (v9 >> 62)
  {
    v14 = v6 == 12;
    v15 = 0xFFFFLL;
    if (v14)
    {
      v15 = 0xFFFFFFLL;
    }

    v16 = v9 & v15;
    if (v16 < *(a1 + 64))
    {
      v17 = *(*(a1 + 48) + 8 * v16);
      v18 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signExtendedAddend(this);
LABEL_27:
      v12 = v18 + v17;
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  if (v6 != 1)
  {
    v23 = mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget(this);
    goto LABEL_30;
  }

  v10 = mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget(this);
LABEL_11:
  v12 = *(a1 + 80) + v10;
LABEL_31:
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, this, v12);
  }

  *this = v12;
  return result;
}

uint64_t mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(uint64_t this, unint64_t a2, void *a3, BOOL a4, int a5)
{
  if (this)
  {
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        return this;
      }

      if (a5 == 3)
      {
        return this;
      }
    }

    else
    {
      if (!a5)
      {
        return this;
      }

      if (a5 == 1)
      {
        return this;
      }
    }

    mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer();
  }

  return this;
}

unint64_t mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget(mach_o::ChainedFixupPointerOnDisk::Arm64e *this)
{
  v1 = *this;
  if ((*this & 0x4000000000000000) != 0)
  {
    mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget();
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget();
  }

  return v1 & 0x7FFFFFFFFFFLL | ((v1 >> 43) << 56);
}

uint64_t ___ZN5dyld4L10rebaseSelfEPKN5dyld313MachOAnalyzerE_block_invoke_2(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 0x10) != 0)
  {
    return dyld4::SyscallDelegate::mprotect(&dyld4::sSyscallDelegate, (*(result + 32) + *(a2 + 16)), *(a2 + 24), 1);
  }

  return result;
}

uint64_t mach_init()
{
  if ((mach_init_mach_init_inited & 1) == 0)
  {
    mach_task_self_ = task_self_trap();
    _task_reply_port = mach_reply_port();
    if (!vm_kernel_page_shift)
    {
      vm_kernel_page_shift = MEMORY[0xFFFFF4037];
    }

    if (!vm_page_shift)
    {
      vm_page_shift = MEMORY[0xFFFFF4025];
      vm_page_size = 1 << MEMORY[0xFFFFF4025];
      vm_page_mask = vm_page_size - 1;
    }

    _pthread_set_self(0, v0, v1, v2, v3, v4, v5, v6);
    mach_init_mach_init_inited = 1;
  }

  return 0;
}

uint64_t lsl::Allocator::AllocationMetadata::setPoolHint(uint64_t this, lsl::Allocator::Pool *a2)
{
  v2 = *(this + 8);
  if ((v2 & 1) == 0)
  {
    v3 = this;
    if ((((v2 & 0xFFFFFFFFFFFFFFFCLL) - this) & 0xFFFFFFFFFFFFFFF8) != 0x10)
    {
      v4 = a2;
      if (!a2)
      {
        v5 = (*this & 1) != 0 ? 0 : *this;
        v4 = lsl::Allocator::AllocationMetadata::pool(v5, 1);
        if (!v4)
        {
          lsl::Allocator::AllocationMetadata::setPoolHint();
        }
      }

      this = lsl::Allocator::AllocationMetadata::firstAddress(v3);
      _X21 = this;
      if (*(v4 + 57) == 1)
      {
        _X21 = (this & 0xFFFFFFFFFFFFFFLL);
        __asm { STG             X21, [X21] }

        if ((*(v3 + 1) & 0xFFFFFFFFFFFFFFFCLL) - v3 - 48 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          this = lsl::Allocator::AllocationMetadata::firstAddress(v3);
          _X8 = this + 16;
          _X9 = 1;
          __asm
          {
            IRG             X8, X8, X9
            STG             X8, [X8]
          }
        }
      }

      *_X21 = v4;
    }
  }

  return this;
}

uint64_t lsl::Allocator::AllocationMetadata::AllocationMetadata(uint64_t this, lsl::Allocator::AllocationMetadata *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = 0;
  *(this + 8) = 0;
  v10 = lsl::Allocator::AllocationMetadata::pool(a2, 1);
  if (!v10)
  {
    lsl::Allocator::AllocationMetadata::AllocationMetadata();
  }

  v11 = v10;
  *this = a2;
  if ((a4 & 2) != 0)
  {
    *(v10 + 3) = this;
  }

  else
  {
    v12 = *(a2 + 1);
    if ((v12 & 2) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    }

    *v13 = this;
  }

  *(a2 + 1) = this | a5;
  *(this + 8) = (this + a3 + 16) | a4;
  lsl::Allocator::AllocationMetadata::setPoolHint(this, v10);
  v14 = *(this + 8);
  if ((v14 & 2) == 0)
  {
    *(v14 & 0xFFFFFFFFFFFFFFFCLL) = this;
  }

  if (v14 & 1) != 0 && (*(v11 + 57))
  {
    _X0 = lsl::Allocator::AllocationMetadata::firstAddress(this);
    _X8 = 1;
    __asm { IRG             X8, X0, X8 }

    if (-16 - this + (*(this + 8) & 0xFFFFFFFFFFFFFFFCLL))
    {
      v22 = 0;
      do
      {
        __asm { STG             X8, [X8],#0x10 }

        v22 += 16;
      }

      while (-16 - this + (*(this + 8) & 0xFFFFFFFFFFFFFFFCLL) > v22);
    }
  }

  return this;
}

uint64_t __guard_setup(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    v3 = __stack_chk_guard;
    while (1)
    {
      result = _platform_strncmp(v1, "stack_guard=", 0xCuLL);
      if (!result)
      {
        v5 = *(v1 + 12);
        if (v5)
        {
          v6 = (v1 + 13);
          do
          {
            v7 = v5;
            v8 = (v5 - 97);
            v9 = v7 - 48;
            if ((v7 - 48) >= 0xA)
            {
              v9 = 0;
            }

            if ((v7 - 65) <= 5)
            {
              v10 = v7 - 55;
            }

            else
            {
              v10 = v9;
            }

            v11 = v7 - 87;
            if (v8 <= 5)
            {
              v12 = v11;
            }

            else
            {
              v12 = v10;
            }

            v3 = v12 | (16 * v3);
            __stack_chk_guard = v3;
            v13 = *v6++;
            v5 = v13;
          }

          while (v13);
        }

        if (v3)
        {
          break;
        }
      }

      v14 = v2[1];
      ++v2;
      v1 = v14;
      if (!v14)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v15 = arc4random();
    result = arc4random();
    __stack_chk_guard = result | (v15 << 32);
  }

  return result;
}

void bzero(void *a1, size_t a2)
{
  v3 = veorq_s8(v2, v2);
  if (a2 < 0x40)
  {
    JUMPOUT(0x8A14);
  }

  if (a2 < 0x8000)
  {
    JUMPOUT(0x89CCLL);
  }

  *a1 = v3;
  *(a1 + 1) = v3;
  *(a1 + 2) = v3;
  *(a1 + 3) = v3;
  v4 = (a1 + 64) & 0xFFFFFFFFFFFFFFC0;
  v5 = a1 + a2 - v4 - 64;
  if (a1 + a2 > v4 + 64)
  {
    do
    {
      __asm { DC              ZVA, X3 }

      v4 += 64;
      v10 = v5 > 0x40;
      v5 -= 64;
    }

    while (v10);
  }

  v11 = &v5[v4];
  *v11 = v3;
  v11[1] = v3;
  v11[2] = v3;
  v11[3] = v3;
}

void *__cdecl _platform_memset(void *__b, int __c, size_t __len)
{
  v3 = 0x101010101010101 * __c;
  v4 = vdupq_n_s64(v3);
  v5 = __b;
  if (__len < 0x40)
  {
    while (1)
    {
      v15 = __len >= 8;
      __len -= 8;
      if (!v15)
      {
        break;
      }

      *v5++ = v3;
    }

    for (i = __len + 8; i; --i)
    {
      *v5 = v3;
      v5 = (v5 + 1);
    }
  }

  else if (__len < 0x8000)
  {
    *__b = v4;
    *(__b + 1) = v4;
    *(__b + 2) = v4;
    *(__b + 3) = v4;
    v11 = ((__b + 64) & 0xFFFFFFFFFFFFFFC0);
    v12 = __b + __len;
    v8 = v12 > v11 + 64;
    for (j = v12 - (v11 + 64); v8; j -= 64)
    {
      *v11 = v4;
      *(v11 + 1) = v4;
      *(v11 + 2) = v4;
      *(v11 + 3) = v4;
      v11 += 64;
      v8 = j > 0x40;
    }

    v14 = &v11[j];
    *v14 = v4;
    v14[1] = v4;
    v14[2] = v4;
    v14[3] = v4;
  }

  else
  {
    if (!v3)
    {
      JUMPOUT(0x8920);
    }

    *__b = v4;
    *(__b + 1) = v4;
    *(__b + 2) = v4;
    *(__b + 3) = v4;
    v6 = ((__b + 64) & 0xFFFFFFFFFFFFFFC0);
    v7 = __b + __len;
    v8 = v7 > v6 + 64;
    for (k = v7 - (v6 + 64); v8; k -= 64)
    {
      *v6 = v4;
      *(v6 + 1) = v4;
      *(v6 + 2) = v4;
      *(v6 + 3) = v4;
      v6 += 64;
      v8 = k > 0x40;
    }

    v10 = &v6[k];
    *v10 = v4;
    v10[1] = v4;
    v10[2] = v4;
    v10[3] = v4;
  }

  return __b;
}

const char *_subsystem_init(const char **a1)
{
  result = _simple_getenv(a1, "subsystem_root_path");
  if (result)
  {
    subsystem_root_path = result;
  }

  return result;
}

uint64_t lsl::MemoryManager::defaultAllocator(lsl::MemoryManager *this)
{
  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager();
  }

  return qword_AC018;
}

void __chkstk_darwin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (___chkstk_darwin)
  {
    ___chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    __chkstk_darwin_probe(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void __chkstk_darwin_probe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  if (v9 >= 0x1000)
  {
    do
    {
      v10 -= 4096;
      v11 = *v10;
      v9 -= 4096;
    }

    while (v9 > 0x1000);
  }

  v12 = v10[-v9];
}

void *__cdecl memmove(void *__dst, const void *__src, size_t __n)
{
  if (__dst - __src < __n)
  {
    if (__dst != __src)
    {
      v34 = __dst + __n;
      v35 = __src + __n;
      if (__n < 0x40)
      {
        while (1)
        {
          v31 = __n >= 8;
          __n -= 8;
          if (!v31)
          {
            break;
          }

          v50 = *(v35 - 1);
          v35 -= 8;
          *(v34 - 1) = v50;
          v34 -= 8;
        }

        for (i = __n + 8; i; --i)
        {
          v52 = *--v35;
          *--v34 = v52;
        }
      }

      else
      {
        if (__n < 0x4000)
        {
          v47 = *(v35 - 2);
          v48 = *(v35 - 1);
          v38 = (v34 - 1) & 0xFFFFFFFFFFFFFFE0;
          v49 = v35 - &v34[-v38];
          v40 = *(v49 - 32);
          v41 = *(v49 - 16);
          *(v34 - 2) = v47;
          *(v34 - 1) = v48;
          v42 = v49 - 32;
          v43 = v38 - __dst - 64;
          if (v38 - __dst > 0x40)
          {
            do
            {
              *(v38 - 32) = v40;
              *(v38 - 16) = v41;
              v38 -= 32;
              v40 = *(v42 - 32);
              v41 = *(v42 - 16);
              v42 -= 32;
              v12 = v43 > 0x20;
              v43 -= 32;
            }

            while (v12);
          }
        }

        else
        {
          v36 = *(v35 - 2);
          v37 = *(v35 - 1);
          v38 = (v34 - 1) & 0xFFFFFFFFFFFFFFE0;
          v39 = v35 - &v34[-v38];
          v40 = *(v39 - 32);
          v41 = *(v39 - 16);
          *(v34 - 2) = v36;
          *(v34 - 1) = v37;
          v42 = v39 - 32;
          v43 = v38 - __dst - 64;
          if (v38 - __dst > 0x40)
          {
            do
            {
              *(v38 - 32) = v40;
              *(v38 - 16) = v41;
              v38 -= 32;
              v40 = *(v42 - 32);
              v41 = *(v42 - 16);
              v42 -= 32;
              v12 = v43 > 0x20;
              v43 -= 32;
            }

            while (v12);
          }
        }

        v44 = v42 - v43;
        v45 = *(v44 - 32);
        v46 = *(v44 - 16);
        *(v38 - 32) = v40;
        *(v38 - 16) = v41;
        *__dst = v45;
        *(__dst + 1) = v46;
      }
    }
  }

  else
  {
    v3 = __dst;
    if (__n < 0x40)
    {
      while (1)
      {
        v31 = __n >= 8;
        __n -= 8;
        if (!v31)
        {
          break;
        }

        v30 = *__src;
        __src = __src + 8;
        *v3++ = v30;
      }

      for (j = __n + 8; j; --j)
      {
        v33 = *__src;
        __src = __src + 1;
        *v3 = v33;
        v3 = (v3 + 1);
      }
    }

    else
    {
      if (__src - __dst < __n)
      {
        if (__n < 0x4000)
        {
          v4 = ((__dst + 32) & 0xFFFFFFFFFFFFFFE0);
          v22 = *__src;
          v23 = *(__src + 1);
          v24 = (__src + v4 - __dst);
          v8 = *v24;
          v9 = v24[1];
          v10 = v24 + 2;
          v25 = __n - (v4 - __dst);
          *__dst = v22;
          *(__dst + 1) = v23;
          v12 = v25 > 0x40;
          for (k = v25 - 64; v12; k -= 32)
          {
            *v4 = v8;
            *(v4 + 1) = v9;
            v4 += 32;
            v8 = *v10;
            v9 = v10[1];
            v10 += 2;
            v12 = k > 0x20;
          }
        }

        else
        {
          v4 = ((__dst + 32) & 0xFFFFFFFFFFFFFFE0);
          v18 = *__src;
          v19 = *(__src + 1);
          v20 = (__src + v4 - __dst);
          v8 = *v20;
          v9 = v20[1];
          v10 = v20 + 2;
          v21 = __n - (v4 - __dst);
          *__dst = v18;
          *(__dst + 1) = v19;
          v12 = v21 > 0x40;
          for (k = v21 - 64; v12; k -= 32)
          {
            *v4 = v8;
            *(v4 + 1) = v9;
            v4 += 32;
            v8 = *v10;
            v9 = v10[1];
            v10 += 2;
            v12 = k > 0x20;
          }
        }
      }

      else if (__n < 0x4000)
      {
        v4 = ((__dst + 32) & 0xFFFFFFFFFFFFFFE0);
        v14 = *__src;
        v15 = *(__src + 1);
        v16 = (__src + v4 - __dst);
        v8 = *v16;
        v9 = v16[1];
        v10 = v16 + 2;
        v17 = __n - (v4 - __dst);
        *__dst = v14;
        *(__dst + 1) = v15;
        v12 = v17 > 0x40;
        for (k = v17 - 64; v12; k -= 32)
        {
          *v4 = v8;
          *(v4 + 1) = v9;
          v4 += 32;
          v8 = *v10;
          v9 = v10[1];
          v10 += 2;
          v12 = k > 0x20;
        }
      }

      else
      {
        v4 = ((__dst + 32) & 0xFFFFFFFFFFFFFFE0);
        v5 = *__src;
        v6 = *(__src + 1);
        v7 = (__src + v4 - __dst);
        v8 = *v7;
        v9 = v7[1];
        v10 = v7 + 2;
        v11 = __n - (v4 - __dst);
        *__dst = v5;
        *(__dst + 1) = v6;
        v12 = v11 > 0x40;
        for (k = v11 - 64; v12; k -= 32)
        {
          *v4 = v8;
          *(v4 + 1) = v9;
          v4 += 32;
          v8 = *v10;
          v9 = v10[1];
          v10 += 2;
          v12 = k > 0x20;
        }
      }

      v26 = (v10 + k);
      v27 = *v26;
      v28 = v26[1];
      *v4 = v8;
      *(v4 + 1) = v9;
      v29 = &v4[k];
      *(v29 + 2) = v27;
      *(v29 + 3) = v28;
    }
  }

  return __dst;
}

unint64_t lsl::Allocator::AllocationMetadata::pool(lsl::Allocator::AllocationMetadata *this, int a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = (*this & 1) == 0;
    *this;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v5 = this;
    do
    {
      if (a2)
      {
        v6 = *(v5 + 1);
        if ((v6 & 1) == 0 && (((v6 & 0xFFFFFFFFFFFFFFFCLL) - v5) & 0xFFFFFFFFFFFFFFF8) != 0x10)
        {
          result = *lsl::Allocator::AllocationMetadata::firstAddress(v5);
          if (result)
          {
            return result;
          }

          v2 = *v5;
        }
      }

      v5 = v2;
      v2 = *v2;
      if (v2)
      {
        v8 = (v2 & 1) == 0;
      }

      else
      {
        v8 = 0;
      }
    }

    while (v8);
  }

  return v2 & 0xFFFFFFFFFFFFFFFELL;
}

uint64_t lsl::Allocator::AllocationMetadata::firstAddress(lsl::Allocator::AllocationMetadata *this)
{
  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager(this);
  }

  result = this + 16;
  if (byte_AC02B == 1 && (*(this + 1) & 0xFFFFFFFFFFFFFFFCLL) - this != 16)
  {
    __asm { LDG             X0, [X0] }
  }

  return result;
}

uint64_t lsl::Allocator::AllocationMetadata::reserve(lsl::Allocator::AllocationMetadata *this, uint64_t a2, unsigned int a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    lsl::Allocator::AllocationMetadata::reserve();
  }

  v6 = this + a2;
  _X21 = this + a2 + 16;
  if (*(lsl::Allocator::AllocationMetadata::pool(this, 1) + 57) == 1)
  {
    __asm { STG             X21, [X21] }
  }

  return lsl::Allocator::AllocationMetadata::AllocationMetadata(_X21, this, (v3 & 0xFFFFFFFFFFFFFFFCLL) - v6 - 32, 2, a3);
}

lsl::Allocator::Pool *lsl::Allocator::Pool::aligned_alloc(lsl::Allocator::Pool *this, uint64_t a2, uint64_t a3)
{
  if (lsl::Allocator::AllocationMetadata::pool(*(this + 3), 1) != this)
  {
    lsl::Allocator::Pool::aligned_alloc();
  }

  Address = lsl::Allocator::AllocationMetadata::firstAddress(*(this + 3));
  v7 = *(this + 3);
  v8 = (*(v7 + 1) & 0xFFFFFFFFFFFFFFFCLL) - v7 - 16;
  _CF = v8 >= a3 + 16;
  v10 = v8 - (a3 + 16);
  if (!_CF)
  {
    return 0;
  }

  v11 = (Address + a2 - 1) & -a2;
  if (v11 - Address > v10)
  {
    return 0;
  }

  if (lsl::Allocator::AllocationMetadata::firstAddress(v7) != v11)
  {
    v13 = lsl::Allocator::AllocationMetadata::firstAddress(*(this + 3));
    lsl::Allocator::AllocationMetadata::reserve(*(this + 3), (v11 - v13 - 16), 0);
  }

  v14 = *(this + 3);
  lsl::Allocator::AllocationMetadata::reserve(v14, a3, 1u);
  _X20 = lsl::Allocator::AllocationMetadata::firstAddress(v14);
  if (*(this + 57) == 1)
  {
    _X8 = 1;
    __asm { IRG             X20, X20, X8 }

    if (-16 - v14 + (*(v14 + 1) & 0xFFFFFFFFFFFFFFFCLL))
    {
      v19 = 0;
      _X10 = _X20;
      do
      {
        __asm { STG             X10, [X10],#0x10 }

        v19 += 16;
      }

      while (-16 - v14 + (*(v14 + 1) & 0xFFFFFFFFFFFFFFFCLL) > v19);
    }
  }

  if (lsl::Allocator::AllocationMetadata::firstAddress(*(this + 3)) > *(this + 6))
  {
    v21 = lsl::Allocator::AllocationMetadata::firstAddress(*(this + 3));
    v22 = v21 & 0xFFFFFFFFFFFFFFLL;
    if ((((*(*(this + 3) + 8) & 0xFFFFFFFFFFFFFFFCLL) - *(this + 3)) & 0xFFFFFFFFFFFFFFF0) != 0x10)
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFFLL) + 16;
    }

    *(this + 6) = v22;
  }

  if (_X20 == this)
  {
    lsl::Allocator::Pool::aligned_alloc();
  }

  return _X20;
}

void *dyld4::KernelArgs::findApple(dyld4::KernelArgs *this)
{
  result = (this + 8 * *(this + 1) + 24);
    ;
  }

  return result;
}

const char *_simple_getenv(const char **a1, char *__s)
{
  v4 = _platform_strlen(__s);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  result = *a1;
  if (!*a1)
  {
    return result;
  }

  while (1)
  {
    if (_platform_strlen(result) >= v5)
    {
      v7 = *a1;
      if (v5)
      {
        v8 = v5;
        v9 = *a1;
        v10 = __s;
        while (*v9 == *v10)
        {
          ++v10;
          ++v9;
          if (!--v8)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_9;
      }

LABEL_8:
      if (v7[v5] == 61)
      {
        return &v7[v5 + 1];
      }
    }

LABEL_9:
    v11 = a1[1];
    ++a1;
    result = v11;
    if (!v11)
    {
      return result;
    }
  }
}

void lsl::MemoryManager::init(lsl::MemoryManager *this, const char **a2, const char **a3, void *a4)
{
  v28 = a2;
  v29 = this;
  v27 = a3;
  if (lsl::sMemoryManagerInitialized == 1)
  {
    lsl::MemoryManager::init();
  }

  lsl::MemoryManager::MemoryManager(v23, a2, a2, a3, 0);
  *&v21 = &v29;
  *(&v21 + 1) = v23;
  *&v22 = &v27;
  *(&v22 + 1) = &v28;
  if (v26 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v26))
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v11 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v11 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v12 = MEMORY[0xFFFFFC0D0];
          if (v12 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 0x40000000;
            v30[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZNS0_4initEPPKcS4_PvE3__0EEvT__block_invoke;
            v30[3] = &__block_descriptor_tmp_42_0;
            v31 = v21;
            v32 = v22;
            lsl::ProtectedStack::withNestedProtectedStack(v26, v30, v5, v6, v7, v8, v9, v10, v21);
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

LABEL_33:
    __break(1u);
    return;
  }

  if (v25 == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_33;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      lsl::MemoryManager::init(char const**,char const**,void *)::$_0::operator()(&v21, v4);
      return;
    }

    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_33;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_33;
    }

    v15 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v15 & 0xFE) != 2)
    {
      goto LABEL_33;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v16 = MEMORY[0xFFFFFC0D0];
    if (v16 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_33;
    }

    lsl::MemoryManager::init(char const**,char const**,void *)::$_0::operator()(&v21, 0xFFFFFC0D0);
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_33;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_33;
    }

    v17 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v17 & 0xFE) != 2)
    {
      goto LABEL_33;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v18 = MEMORY[0xFFFFFC0D8];
    if (v18 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_33;
    }
  }

  else
  {
    lsl::Lock::lock(v23);
    v19 = v24;
    if (!v24)
    {
      lsl::MemoryManager::writeProtect(v23, 0);
      v19 = v24;
    }

    v24 = v19 + 1;
    lsl::Lock::unlock(v23);
    lsl::MemoryManager::init(char const**,char const**,void *)::$_0::operator()(&v21, v20);
    lsl::Lock::lock(v23);
    if (!--v24)
    {
      lsl::MemoryManager::writeProtect(v23, 1);
    }

    lsl::Lock::unlock(v23);
  }
}

kern_return_t vm_allocate(vm_map_t target_task, vm_address_t *address, vm_size_t size, int flags)
{
  v15 = *address;
  v8 = _kernelrpc_mach_vm_allocate_trap(target_task, &v15, size, flags);
  v9 = v15;
  if (v8 == 268435459)
  {
    v17 = 0x100000000;
    *&v18 = v15;
    *(&v18 + 1) = size;
    v19 = flags;
    reply_port = mig_get_reply_port();
    *&v16.msgh_bits = 0x3400001513;
    *&v16.msgh_remote_port = __PAIR64__(reply_port, target_task);
    *&v16.msgh_voucher_port = 0x12C000000000;
    v11 = mach_msg2_internal(&v16, 0x200000003, 0x3400001513, __PAIR64__(reply_port, target_task), 0x12C000000000, (reply_port << 32), &stru_20.segname[12], 0);
    v12 = v11;
    if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
    {
      goto LABEL_23;
    }

    if (v11)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
LABEL_23:
      v9 = v15;
      goto LABEL_24;
    }

    if (v16.msgh_id == 71)
    {
      v12 = -308;
    }

    else if (v16.msgh_id == 4900)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size == 44)
        {
          if (!v16.msgh_remote_port)
          {
            v12 = v18;
            if (!v18)
            {
              v15 = *(&v18 + 4);
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        else if (v16.msgh_size == 36)
        {
          if (v16.msgh_remote_port)
          {
            v13 = 1;
          }

          else
          {
            v13 = v18 == 0;
          }

          if (v13)
          {
            v12 = -300;
          }

          else
          {
            v12 = v18;
          }

          goto LABEL_22;
        }
      }

      v12 = -300;
    }

    else
    {
      v12 = -301;
    }

LABEL_22:
    mach_msg_destroy(&v16);
    goto LABEL_23;
  }

  v12 = v8;
LABEL_24:
  *address = v9;
  return v12;
}

uint64_t dyld4::APIs::_dyld_find_protocol_conformance_on_disk(dyld4::APIs *this, dyld4::PrebuiltLoader::BindTargetRef *a2, dyld4::PrebuiltLoader::BindTargetRef *a3, dyld4::PrebuiltLoader::BindTargetRef *a4)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_find_protocol_conformance_on_disk(%p, %p, %p)\n", a2, a3, a4);
  }

  v8 = *(this + 122);
  if (!v8 || !dyld4::PrebuiltLoaderSet::hasOptimizedSwift(*(this + 122)))
  {
    return 2;
  }

  v9 = dyld4::PrebuiltLoaderSet::swiftTypeProtocolTable(v8);
  if (a4)
  {
    if (v9)
    {
      if (*(this + 71))
      {
        Absolute = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(a4);
        v22 = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(a2);
        v10 = dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::find(*(this + 71), &Absolute);
        if (v10 != (*(*(this + 71) + 56) + 32 * *(*(this + 71) + 72)))
        {
          v11 = v10;
          if (dyld4::EqualTypeConformanceLookupKey::equal(v10, a4, a2, this))
          {
LABEL_12:
            v13 = dyld4::PrebuiltLoader::BindTargetRef::loaderRef((v11 + 2)) & 0x7FFF;
            if (*(v8 + 3) <= v13)
            {
              dyld4::RuntimeState::findPrebuiltLoader();
            }

            dyld4::PrebuiltLoader::loadAddress((v8 + *(v8 + 4 * v13 + *(v8 + 4))), this);
            v14 = (v11 + 2);
            goto LABEL_23;
          }

          while (1)
          {
            v12 = v11[3];
            if ((v12 & 3) == 0)
            {
              break;
            }

            v11 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((*(this + 71) + 56), v12 >> 3);
            if (dyld4::EqualTypeConformanceLookupKey::equal(v11, a4, a2, this))
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  v15 = dyld4::PrebuiltLoaderSet::swiftMetadataProtocolTable(v8);
  result = 2;
  if (a3 && v15)
  {
    if (*(this + 72))
    {
      Absolute = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(a3);
      v22 = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(a2);
      v17 = dyld3::MultiMap<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::find(*(this + 72), &Absolute);
      if (v17 != *(*(this + 72) + 56) + 32 * *(*(this + 72) + 72))
      {
        for (i = v17; !dyld4::EqualMetadataConformanceLookupKey::equal(i, a3, a2, this); i = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((*(this + 72) + 56), v19 >> 3))
        {
          v19 = i[3];
          if ((v19 & 3) == 0)
          {
            return 2;
          }
        }

        v20 = dyld4::PrebuiltLoader::BindTargetRef::loaderRef((i + 2)) & 0x7FFF;
        if (*(v8 + 3) <= v20)
        {
          dyld4::RuntimeState::findPrebuiltLoader();
        }

        dyld4::PrebuiltLoader::loadAddress((v8 + *(v8 + 4 * v20 + *(v8 + 4))), this);
        v14 = (i + 2);
LABEL_23:
        dyld4::PrebuiltLoader::BindTargetRef::offset(v14);
        return 0;
      }
    }

    return 2;
  }

  return result;
}

uint64_t SwiftHashTable::getIndex<SwiftTypeProtocolConformanceLocationKey,SwiftTypeProtocolConformanceLocationKey>(unsigned int *a1, objc *a2)
{
  v4 = SwiftHashTable::hash<SwiftTypeProtocolConformanceLocationKey>(a1, a2);
  if (*a1 <= v4)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v5 = v4;
  v6 = *(a1 + a1[5] + v4 + 1056);
  if (v6 != SwiftHashTable::checkbyte<SwiftTypeProtocolConformanceLocationKey>(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  if (v7 <= v5)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v8 = *(&a1[v5 + 264] + a1[5] + v7);
  if (v8 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (SwiftHashTable::equal<SwiftTypeProtocolConformanceLocationKey,SwiftTypeProtocolConformanceLocationKey>(a1, (a1 + v8), a2))
  {
    return v5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t SwiftHashTable::hash<SwiftTypeProtocolConformanceLocationKey>(uint64_t a1, objc *this)
{
  v4 = objc::lookup8(this, &dword_8, *(a1 + 24));
  v5 = objc::lookup8((this + 8), &dword_8, *(a1 + 24));
  v6 = *(a1 + 8);
  if (v6 == 64)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 ^ v4) >> v6;
  }

  return v7 ^ *(a1 + 4 * *(a1 + ((v5 ^ v4) & *(a1 + 12)) + 1056) + 32);
}

uint64_t DyldSharedCache::hasImagePath(DyldSharedCache *this, const char *__s2, unsigned int *a3)
{
  v5 = *(this + 4);
  if (*(this + v5 + 16))
  {
    return 0;
  }

  v20 = v3;
  v21 = v4;
  if (v5 < 0x118)
  {
    v14 = *(this + 7);
    if (v14)
    {
      v15 = 0;
      v16 = (this + *(this + 6) + 24);
      while (1)
      {
        v17 = *v16;
        v16 += 8;
        if (!_platform_strcmp(this + v17, __s2))
        {
          break;
        }

        if (v14 == ++v15)
        {
          return 0;
        }
      }

      *a3 = v15;
      return 1;
    }

    return 0;
  }

  v10 = *(this + 34);
  v11 = (this + *(this + 33) - *(this + v5));
  Diagnostics::Diagnostics(v19);
  v18 = dyld3::MachOFile::trieWalk(v19, v11, (v11 + v10), __s2, v12);
  if (!v18)
  {
    Diagnostics::~Diagnostics(v19);
    return 0;
  }

  *a3 = dyld3::MachOFile::read_uleb128(v19, &v18, (v11 + v10), v13);
  Diagnostics::~Diagnostics(v19);
  return 1;
}

BOOL dyld4::APIs::_dyld_shared_cache_contains_path(DyldSharedCache ***this, const char *a2)
{
  v4 = dyld4::ProcessConfig::canonicalDylibPathInCache(this[1], a2);
  v5 = v4;
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_shared_cache_contains_path(%s) => %d\n", a2, v4 != 0);
  }

  return v5 != 0;
}

DyldSharedCache *dyld4::ProcessConfig::DyldCache::getCanonicalPath(DyldSharedCache **this, const char *a2)
{
  result = *this;
  if (result)
  {
    v4 = 0;
    if (DyldSharedCache::hasImagePath(result, a2, &v4))
    {
      return DyldSharedCache::getIndexedImagePath(*this, v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dyld3::MapBase<prebuilt_objc::ObjCStringKeyOnDisk,void,prebuilt_objc::HashObjCStringKeyOnDisk,prebuilt_objc::EqualObjCStringKeyOnDisk>::const_find<char const*>(uint64_t a1, void *a2, void *a3, dyld4::RuntimeState *a4, const char **a5)
{
  if (!a3[2])
  {
    return *a3;
  }

  v9 = *a5;
  v10 = _platform_strlen(*a5);
  v11 = murmurHash(v9, v10, 0);
  v12 = a2[2];
  v13 = (v12 - 1) & v11;
  if (v12 <= v13)
  {
LABEL_8:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v14 = 1;
  while (1)
  {
    v15 = *(*a2 + 4 * v13);
    v16 = a3[2];
    if (v15 == -1)
    {
      return *a3 + 8 * v16;
    }

    if (v16 <= v15)
    {
      dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
    }

    v17 = (*a3 + 8 * v15);
    v20[0] = *a5;
    v20[1] = _platform_strlen(v20[0]);
    if (prebuilt_objc::EqualObjCStringKeyOnDisk::equal(v17, v20, a4))
    {
      break;
    }

    v18 = a2[2];
    v13 = (v18 - 1) & (v13 + v14++);
    if (v18 <= v13)
    {
      goto LABEL_8;
    }
  }

  if (a3[2] <= v15)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  return *a3 + 8 * v15;
}

unint64_t *prebuilt_objc::findSelector(dyld4::RuntimeState *a1, void *a2, const char *a3)
{
  v7 = a3;
  v5 = dyld3::MapBase<prebuilt_objc::ObjCStringKeyOnDisk,void,prebuilt_objc::HashObjCStringKeyOnDisk,prebuilt_objc::EqualObjCStringKeyOnDisk>::const_find<char const*>(a2, a2, a2 + 3, a1, &v7);
  if (v5 == (a2[3] + 8 * a2[5]))
  {
    return 0;
  }

  else
  {
    return dyld4::PrebuiltLoader::BindTargetRef::value(v5, a1);
  }
}

__n128 DyldSharedCache::getUUID(DyldSharedCache *this, __n128 *a2)
{
  result = *(this + 88);
  *a2 = result;
  return result;
}

lsl::Allocator::Pool *lsl::Allocator::Pool::aligned_alloc_best_fit(lsl::Allocator::Pool *this, uint64_t a2, unint64_t a3)
{
  if (a2 == 16 && (v5 = **(this + 3), (v5 & 1) == 0) && v5)
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = *(v5 + 1);
      if ((v8 & 1) == 0)
      {
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) - v5 - 16;
        if (v9 >= a3)
        {
          if (v9 - a3 < v7)
          {
            v6 = v5;
            v7 = v9 - a3;
          }

          if (v9 == a3)
          {
            v6 = v5;
            goto LABEL_18;
          }
        }
      }

      v5 = *v5;
    }

    while ((v5 & 1) == 0 && v5);
    if (!v6)
    {
      a2 = 16;
      goto LABEL_14;
    }

LABEL_18:
    Address = lsl::Allocator::AllocationMetadata::firstAddress(v6);
    v12 = *(v6 + 1);
    if (v12)
    {
      lsl::Allocator::Pool::aligned_alloc_best_fit();
    }

    _X22 = Address;
    *(v6 + 1) = v12 | 1;
    if (*(this + 57))
    {
      _X8 = 1;
      __asm { IRG             X22, X22, X8 }

      v19 = *(v6 + 1) & 0xFFFFFFFFFFFFFFFCLL;
      if (-16 - v6 + v19)
      {
        v20 = 0;
        _X11 = _X22;
        do
        {
          __asm { STG             X11, [X11],#0x10 }

          v20 += 16;
          v19 = *(v6 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        }

        while (-16 - v6 + v19 > v20);
      }
    }

    else
    {
      v19 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v19 - v6 - 16 > a3)
    {
      lsl::Allocator::AllocationMetadata::returnToNext(v6, a3);
    }

    if (_X22 == this)
    {
      lsl::Allocator::Pool::aligned_alloc_best_fit();
    }

    return _X22;
  }

  else
  {
LABEL_14:

    return lsl::Allocator::Pool::aligned_alloc(this, a2, a3);
  }
}

uint64_t lsl::Allocator::AllocationMetadata::returnToNext(lsl::Allocator::AllocationMetadata *this, uint64_t a2)
{
  v4 = lsl::Allocator::AllocationMetadata::pool(this, 1);
  _X0 = this + a2 + 16;
  v6 = *(this + 1);
  if (*(v4 + 57) == 1)
  {
    __asm { STG             X0, [X0] }

    v6 = *(this + 1);
  }

  lsl::Allocator::AllocationMetadata::AllocationMetadata(_X0, this, (*(this + 1) & 0xFFFFFFFFFFFFFFFCLL) - (this + a2) - 32, 0, v6 & 3);
  v11 = *(this + 1);
  if ((v11 & 2) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  }

  return lsl::Allocator::AllocationMetadata::coalesce(v12, v4);
}

uint64_t dyld3::kdebug_trace_dyld_duration_end(uint64_t result, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!result)
  {
    return result;
  }

  v11 = a5;
  v13 = a3;
  v15 = result;
  result = kdebug_is_enabled(a2, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  if (a4)
  {
    v21 = kdebug_trace_string(a2, 0, a4, v16, v17, v18, v19, v20);
    if (v21 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v21;
    }
  }

  if (a6)
  {
    v22 = kdebug_trace_string(a2, 0, a6, v16, v17, v18, v19, v20);
    if (v22 == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v22;
    }
  }

  if (a8)
  {
    v23 = kdebug_trace_string(a2, 0, a8, v16, v17, v18, v19, v20);
    if (v23 == -1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v23;
    }

    result = kdebug_trace((a2 | 2), v15, v13, v11, v27, v24, v25, v26);
    if (v27)
    {
      result = kdebug_trace_string(a2, v27, 0, v28, v29, v30, v31, v32);
    }

    if (!a6)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  result = kdebug_trace((a2 | 2), v15, v13, v11, a7, v18, v19, v20);
  if (a6)
  {
LABEL_20:
    if (v11)
    {
      result = kdebug_trace_string(a2, v11, 0, v28, v29, v30, v31, v32);
    }
  }

LABEL_22:
  if (a4 && v13)
  {

    return kdebug_trace_string(a2, v13, 0, v28, v29, v30, v31, v32);
  }

  return result;
}

size_t ___ZNK6mach_o6Header14forEachSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke(size_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    if ((*a3 & 1) == 0)
    {
      v25 = *(a2 + 48);
      if (v25)
      {
        v26 = a2 + 68 * v25 + 56;
        v27 = a2 + 56;
        v28 = a2 + 72;
        do
        {
          v29 = _platform_strnlen(v27, 0x10uLL);
          if (v29 >= 0x10)
          {
            v30 = 16;
          }

          else
          {
            v30 = v29;
          }

          v39 = v28 - 16;
          v40 = v30;
          v31 = _platform_strnlen((v27 + 16), 0x10uLL);
          if (v31 >= 0x10)
          {
            v32 = 16;
          }

          else
          {
            v32 = v31;
          }

          *&v41 = v28;
          *(&v41 + 1) = v32;
          v33 = *(v5 + 32);
          v42 = *(*(*(v5 + 40) + 8) + 24);
          v43 = *(a2 + 40);
          v35 = *(v27 + 40);
          v34 = *(v27 + 44);
          v44 = *(v27 + 56);
          v45 = v34;
          v36 = *(v27 + 32);
          *&v37 = v36;
          *(&v37 + 1) = HIDWORD(v36);
          v46 = v37;
          v47 = v35;
          *&v38 = *(v27 + 48);
          *(&v38 + 1) = *(v27 + 60);
          v48 = v38;
          result = (*(v33 + 16))();
          if (*a3)
          {
            break;
          }

          v27 += 68;
          v28 += 68;
        }

        while (v27 < v26);
      }
    }
  }

  else
  {
    if (*a2 != 25)
    {
      return result;
    }

    v6 = *(a2 + 64);
    result = _platform_strnlen((a2 + 8), 0x10uLL);
    if (result >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = result;
    }

    v50[0] = a2 + 8;
    v50[1] = v7;
    if ((*a3 & 1) == 0 && v6)
    {
      v8 = 0;
      do
      {
        v9 = a2 + v8;
        v10 = _platform_strnlen((a2 + v8 + 88), 0x10uLL);
        v11 = v10;
        if (v10 >= 0x10)
        {
          v12 = 16;
        }

        else
        {
          v12 = v10;
        }

        v49[0] = a2 + v8 + 88;
        v49[1] = v12;
        v13 = _platform_strnlen((a2 + v8 + 72), 0x10uLL);
        if (v13 >= 0x10)
        {
          v19 = 16;
        }

        else
        {
          v19 = v13;
        }

        v39 = a2 + v8 + 72;
        v40 = v19;
        v20 = v49;
        if (!v11)
        {
          v20 = v50;
        }

        v41 = *v20;
        v21 = *(v5 + 32);
        v42 = *(*(*(v5 + 40) + 8) + 24);
        v43 = *(a2 + 56);
        v23 = *(v9 + 120);
        v22 = *(v9 + 124);
        v44 = *(v9 + 136);
        v45 = v22;
        v46 = *(v9 + 104);
        v47 = v23;
        *&v24 = *(v9 + 128);
        *(&v24 + 1) = *(v9 + 140);
        v48 = v24;
        result = (*(v21 + 16))(v21, &v39, a3, v14, v15, v16, v17, v18);
        if (*a3)
        {
          break;
        }

        v8 += 80;
      }

      while (v9 + 152 < a2 + 80 * v6 + 72);
    }
  }

  ++*(*(*(v5 + 40) + 8) + 24);
  return result;
}

void mach_o::Header::forEachSection(mach_o::Error *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header14forEachSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke;
  v2[3] = &unk_A5478;
  v2[4] = a2;
  v2[5] = v3;
  mach_o::Header::forEachLoadCommand(a1, v2, &v5);
  mach_o::Error::~Error(&v5);
  _Block_object_dispose(v3, 8);
}

{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header14forEachSectionEU13block_pointerFvRKNS0_11SegmentInfoERKNS0_11SectionInfoERbE_block_invoke;
  v2[3] = &unk_A54A0;
  v2[4] = a2;
  v2[5] = v3;
  mach_o::Header::forEachLoadCommand(a1, v2, &v5);
  mach_o::Error::~Error(&v5);
  _Block_object_dispose(v3, 8);
}

const char *mach_o::Architecture::name(mach_o::Architecture *this)
{
  v1 = *this;
  if (*this <= 23)
  {
    if (v1 == 7)
    {
      if ((*(this + 1) & 0xFFFFFF) == 3)
      {
        return "i386";
      }
    }

    else if (v1 == 12)
    {
      v6 = (*(this + 1) & 0xFFFFFF) - 6;
      if (v6 < 0xE)
      {
        return off_A4E78[v6];
      }
    }

    else if (v1 == 18 && (*(this + 1) & 0xFFFFFF) == 0)
    {
      return "ppc";
    }

    return "unknown";
  }

  if (v1 > 16777227)
  {
    if (v1 != 16777228)
    {
      if (v1 == 33554444 && (*(this + 1) & 0xFFFFFE) == 0)
      {
        return "arm64_32";
      }

      return "unknown";
    }

    v5 = *(this + 1);
    if (v5 == -2147483646)
    {
      return "arm64e";
    }

    if (v5)
    {
      if ((v5 & 0xFFFFFF) == 2)
      {
        if (v5 <= -1056964607)
        {
          if (v5 == -2130706430)
          {
            return "arm64e.v1";
          }

          if (v5 == -1073741822)
          {
            return "arm64e.kernel";
          }
        }

        else
        {
          switch(v5)
          {
            case -1056964606:
              return "arm64e.kernel.v1";
            case -1040187390:
              return "arm64e.kernel.v2";
            case 2:
              return "arm64e.old";
          }
        }

        return "unknown";
      }

      if ((v5 & 0xFFFFFF) != 1 || v5 != 1)
      {
        return "unknown";
      }
    }

    return "arm64";
  }

  if (v1 == 24)
  {
    if ((*(this + 1) & 0xFFFFFF) == 0)
    {
      return "riscv32";
    }

    return "unknown";
  }

  if (v1 != 16777223)
  {
    return "unknown";
  }

  v2 = *(this + 1) & 0xFFFFFF;
  v3 = "unknown";
  if (v2 == 8)
  {
    v3 = "x86_64h";
  }

  if (v2 == 3)
  {
    return "x86_64";
  }

  else
  {
    return v3;
  }
}

lsl::Bitmap *lsl::Bitmap::Bitmap(lsl::Bitmap *this, lsl::Allocator::Pool **a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = 0;
  v5 = (a3 + 7) >> 3;
  *(this + 2) = a3;
  *(this + 3) = v5;
  v6 = lsl::Allocator::malloc(a2, v5);
  bzero(v6, *(this + 3));
  v8 = *(this + 1);
  *(this + 1) = v6;
  if (v8)
  {
    lsl::Allocator::freeObject(v8, v7);
  }

  return this;
}

uint64_t dyld4::Atlas::ProcessSnapshot::addSharedCacheImage(dyld4::Atlas::ProcessSnapshot *this, const mach_header *a2)
{
  if ((a2->flags & 0x80000000) == 0)
  {
    dyld4::Atlas::ProcessSnapshot::addSharedCacheImage();
  }

  v2 = *(*(this + 8) + 160);
  v3 = *(v2 + 18);
  v4 = &v2[*(v2 + 17)];
  v5 = &v4[32 * v3];
  if (v3)
  {
    v6 = (a2 - v2 + *(v2 + 28));
    v7 = 32 * v3;
    v8 = &v2[*(v2 + 17)];
    while (*(v8 + 2) != v6)
    {
      v8 += 32;
      v7 -= 32;
      if (!v7)
      {
        v8 = v5;
        break;
      }
    }
  }

  else
  {
    v8 = &v2[*(v2 + 17)];
  }

  if (v5 == v8)
  {
    dyld4::Atlas::ProcessSnapshot::addSharedCacheImage();
  }

  v9 = *(this + 7);

  return lsl::Bitmap::setBit(v9, (v8 - v4) >> 5);
}

uint64_t lsl::Bitmap::setBit(uint64_t this, unint64_t a2)
{
  if (*(this + 16) <= a2)
  {
    lsl::Bitmap::setBit();
  }

  *(*(this + 8) + (a2 >> 3)) |= 1 << (a2 & 7);
  return this;
}

const unsigned __int8 **dyld3::MachOFile::trieWalk(dyld3::MachOFile *this, const unsigned __int8 **a2, Diagnostics *a3, const unsigned __int8 *a4, const char *a5)
{
  v32[0] = &v36;
  v32[1] = 128;
  address = 0;
  size = 0;
  v33 = 0;
  LODWORD(v31) = 0;
  dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v32, &v31);
  if (a2 >= a3)
  {
    goto LABEL_36;
  }

  v10 = a2;
  while (2)
  {
    v11 = *v10;
    v31 = (v10 + 1);
    if (v11 < 0)
    {
      v31 = v10;
      v11 = dyld3::MachOFile::read_uleb128(this, &v31, a3, v9);
      if (Diagnostics::hasError(this))
      {
        goto LABEL_36;
      }
    }

    v12 = v31;
    if (*a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13)
    {
      break;
    }

    v14 = v31 + v11;
    if (v31 + v11 > a3)
    {
      goto LABEL_36;
    }

    v17 = *v14;
    v15 = (v14 + 1);
    v16 = v17;
    v31 = v15;
    if (!v17)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v18 = *v15;
      if (!*v15)
      {
        break;
      }

      v19 = 0;
      v20 = (v15 + 1);
      v21 = (v15 + 2);
      v22 = a4;
      do
      {
        v15 = v21;
        if (v19)
        {
          v19 = 1;
        }

        else
        {
          v23 = *v22++;
          v19 = v18 != v23;
        }

        v31 = v20;
        v24 = *v20;
        v20 = (v20 + 1);
        v18 = v24;
        v21 = (v21 + 1);
      }

      while (v24);
      if (!v19)
      {
        v15 = (v20 - 1);
        a4 = v22;
        break;
      }

      do
      {
        v25 = *v15;
        v15 = (v15 + 1);
      }

      while (v25 < 0);
      v31 = v15;
      if (v15 > a3)
      {
        Diagnostics::error(this, "malformed trie node, child node extends past end of trie\n");
        goto LABEL_36;
      }

      if (!--v16)
      {
        goto LABEL_36;
      }
    }

    v31 = (v15 + 1);
    v26 = dyld3::MachOFile::read_uleb128(this, &v31, a3, v9);
    if (Diagnostics::hasError(this))
    {
      goto LABEL_36;
    }

    if (!v26 || (v10 = (a2 + v26), a2 + v26 > a3) || v26 > a3 - a2)
    {
      Diagnostics::error(this, "malformed trie child, nodeOffset=0x%llX out of range\n");
LABEL_36:
      v12 = 0;
      break;
    }

    if (v33)
    {
      v27 = v32[0];
      v28 = 4 * v33;
      while (v26 != *v27)
      {
        ++v27;
        v28 -= 4;
        if (!v28)
        {
          goto LABEL_32;
        }
      }

      Diagnostics::error(this, "malformed trie child, cycle to nodeOffset=0x%llX\n");
      goto LABEL_36;
    }

LABEL_32:
    v30 = v26;
    dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v32, &v30);
    v12 = 0;
    v31 = v10;
    if (v10 < a3)
    {
      continue;
    }

    break;
  }

  v33 = 0;
  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }

  return v12;
}

vm_address_t *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(vm_address_t *result, int *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = v4 + 1;
  if (v4 + 1 > result[1])
  {
    result = dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(result, v5);
    v4 = v3[2];
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *v3;
  v3[2] = v5;
  *(v7 + 4 * v4) = v6;
  return result;
}

uint64_t dyld3::MachOFile::read_uleb128(dyld3::MachOFile *this, const unsigned __int8 ***a2, const unsigned __int8 **a3, const unsigned __int8 *a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *a2;
  v8 = "malformed uleb128";
  while (v7 != a3)
  {
    if (v5 > 0x3F)
    {
      v8 = "uleb128 too big for uint64";
      break;
    }

    v6 |= (*v7 & 0x7F) << v5;
    v5 += 7;
    *a2 = (v7 + 1);
    v9 = *v7;
    v7 = (v7 + 1);
    if ((v9 & 0x80000000) == 0)
    {
      return v6;
    }
  }

  Diagnostics::error(this, v8);
  return v6;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(uint64_t a1, const void *a2, size_t a3)
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
  v10 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x30uLL);
  PropertyList::Array::Array(v10, v6);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v5, *(v5 + 16) + 1);
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  *(v5 + 16) = v12 + 1;
  *(v11 + 8 * v12) = v10;
  return v10;
}

uint64_t *lsl::Vector<char const*>::resize(uint64_t *result, unint64_t a2)
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
    result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

uint64_t ___ZNK6mach_o6Header26forEachPlatformLoadCommandEU13block_pointerFvNS_8PlatformENS_9Version32ES2_E_block_invoke(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 48);
  v5 = *a2;
  if (*a2 <= 46)
  {
    if (v5 == 36)
    {
      v10 = a2[2];
      v11 = a2[3];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v7 = *(result + 32);
      v14 = &mach_o::PlatformInfo_macOS::singleton;
      v15 = 0;
      goto LABEL_23;
    }

    if (v5 != 37)
    {
      return result;
    }

    v7 = *(result + 32);
    if ((*(v4 + 4) | 0x1000000) == 0x1000007)
    {
      v8 = &mach_o::Platform::iOS_simulator;
    }

    else
    {
      v8 = &mach_o::Platform::iOS;
    }
  }

  else
  {
    if (v5 == 47)
    {
      v7 = *(result + 32);
      if (*(v4 + 4) == 16777223)
      {
        v9 = &mach_o::Platform::tvOS_simulator;
      }

      else
      {
        v9 = &mach_o::Platform::tvOS;
      }

      v14 = *v9;
      v15 = *(v9 + 2);
      v10 = a2[2];
      v12 = a2[3];
      v13 = *(v7 + 16);
      goto LABEL_24;
    }

    if (v5 != 48)
    {
      if (v5 != 50)
      {
        return result;
      }

      v6 = *(result + 32);
      mach_o::Platform::Platform(&v14, a2[2]);
      result = (*(v6 + 16))(v6, &v14, a2[3], a2[4]);
      goto LABEL_25;
    }

    v7 = *(result + 32);
    if ((*(v4 + 4) | 0x1000000) == 0x1000007)
    {
      v8 = &mach_o::Platform::watchOS_simulator;
    }

    else
    {
      v8 = &mach_o::Platform::watchOS;
    }
  }

  v14 = *v8;
  v15 = *(v8 + 2);
  v10 = a2[2];
  v12 = a2[3];
LABEL_23:
  v13 = *(v7 + 16);
LABEL_24:
  result = v13(v7, &v14, v10, v12);
LABEL_25:
  *(*(*(v3 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t AAREncoder::addFile(uint64_t a1, const void *a2, size_t a3, lsl::Allocator::Pool *a4, lsl::Allocator::Pool *a5)
{
  v10 = lsl::Allocator::malloc(*a1, a3 + 1);
  memmove(v10, a2, a3);
  *(v10 + a3) = 0;
  result = lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(a1 + 8, *(a1 + 24) + 1);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 24) = v13 + 1;
  v14 = (v12 + 24 * v13);
  *v14 = v10;
  v14[1] = a4;
  v14[2] = a5;
  return result;
}

void *PropertyList::String::String(void *a1, lsl::Allocator::Pool **this, const void *a3, size_t a4)
{
  *a1 = &off_A4190;
  a1[1] = 0x7FFFFFFFFFFFFFELL;
  v7 = lsl::Allocator::malloc(this, a4 + 1);
  memmove(v7, a3, a4);
  *(v7 + a4) = 0;
  a1[2] = v7;
  return a1;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned char const&>(uint64_t a1, const void *a2, size_t a3, unsigned __int8 *a4)
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

void ___ZNK6mach_o6Header19platformAndVersionsEv_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a3;
  v8 = a4;
  v9 = 0x1000000010000;
  mach_o::PlatformAndVersions::zip((v4 + 40), &v5, &v10);
  mach_o::Error::~Error(&v10);
}

void mach_o::PlatformAndVersions::zip(uint64_t *a1@<X0>, uint64_t *a2@<X1>, mach_o::Error *a3@<X8>)
{
  if (!*a1 && !*(a1 + 2))
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    goto LABEL_30;
  }

  if (*a2)
  {
    v15 = 0;
  }

  else
  {
    mach_o::Error::Error(&v15, "unknown platform");
    if (v15)
    {
      mach_o::Error::Error(a3, "can't zip with invalid platform");
      mach_o::Error::~Error(&v15);
      return;
    }
  }

  mach_o::Error::~Error(&v15);
  v6 = *a1;
  v7 = *a2;
  if (*a1 == *a2)
  {
    v8 = *(a1 + 2);
    if (v8 == *(a2 + 2))
    {
      *a1 = v7;
      *(a1 + 2) = v8;
LABEL_30:
      v11 = *(a2 + 1);
LABEL_31:
      *(a1 + 1) = v11;
LABEL_32:
      *a3 = 0;
      return;
    }
  }

  if (v6 == &mach_o::PlatformInfo_macOS::singleton && v7 == &mach_o::PlatformInfo_macCatalyst::singleton && !*(a1 + 2))
  {
    if (!*(a2 + 2))
    {
      *a1 = &mach_o::PlatformInfo_zippered::singleton;
LABEL_41:
      v14 = a2[2];
      *(a1 + 2) = 0;
      a1[3] = v14;
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v7 == &mach_o::PlatformInfo_macOS::singleton && v6 == &mach_o::PlatformInfo_macCatalyst::singleton && !*(a2 + 2))
  {
    if (*(a1 + 2))
    {
      goto LABEL_34;
    }

    v11 = *(a2 + 1);
    v12 = a1[2];
    *a1 = &mach_o::PlatformInfo_zippered::singleton;
LABEL_45:
    *(&v11 + 1) = v12;
    goto LABEL_31;
  }

  if (v6 == &mach_o::PlatformInfo_zippered::singleton)
  {
    if (!*(a1 + 2))
    {
      v13 = *(a2 + 2);
      if (v7 == &mach_o::PlatformInfo_macCatalyst::singleton && !v13)
      {
        *a1 = &mach_o::PlatformInfo_zippered::singleton;
        goto LABEL_41;
      }

      if (v7 == &mach_o::PlatformInfo_macOS::singleton && !v13)
      {
        v11 = *(a2 + 1);
        v12 = a1[3];
        *a1 = &mach_o::PlatformInfo_zippered::singleton;
        *(a1 + 2) = 0;
        goto LABEL_45;
      }
    }
  }

  else if (!v6)
  {
    if (*(a1 + 2))
    {
      v9 = "future";
    }

    else
    {
      v9 = "unknown";
    }

    if (v7)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (*(a2 + 2))
    {
      v10 = "future";
    }

    else
    {
      v10 = "unknown";
    }

    goto LABEL_36;
  }

LABEL_34:
  v9 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_35:
  v10 = *(v7 + 16);
LABEL_36:
  mach_o::Error::Error(a3, "incompatible platforms: %s - %s", v9, v10);
}

lsl::Allocator::Pool *PropertyList::Array::addObject<PropertyList::Dictionary>(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(a1 + 16);
  v3 = lsl::Allocator::aligned_alloc(v2, 8uLL, 0x50uLL);
  PropertyList::Dictionary::Dictionary(v3, v2);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v1, *(v1 + 16) + 1);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *(v1 + 16) = v5 + 1;
  *(v4 + 8 * v5) = v3;
  return v3;
}

void *PropertyList::Dictionary::Dictionary(void *result, uint64_t a2)
{
  *result = &off_A41D0;
  result[1] = 0x1FFFFFFFFFFFFFFELL;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  return result;
}

void dyld4::ExternallyViewableState::atlasAddImage(dyld4::ExternallyViewableState *this, PropertyList::Dictionary *a2, _DWORD *a3, const char *a4)
{
  v12 = a4;
  v13 = a3;
  PropertyList::Dictionary::addObjectForKey<PropertyList::String,char const*&>(a2, "file", 4uLL, &v12);
  v6 = mach_o::Header::isMachO(a3, 0x1CuLL);
  if (v6)
  {
    v7 = v6;
    if ((dyld3::MachOFile::inDyldCache(v6) & 1) == 0)
    {
      PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(a2, "addr", 4uLL, &v13);
      Address = mach_o::Header::preferredLoadAddress(v7);
      if (Address)
      {
        PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(a2, "padr", 4uLL, &Address);
      }

      v10 = mach_o::Header::installName(v7);
      if (v10)
      {
        PropertyList::Dictionary::addObjectForKey<PropertyList::String,char const*&>(a2, "name", 4uLL, &v10);
      }

      *v14 = 0;
      v15 = 0;
      if (mach_o::Header::getUuid(v7, v14))
      {
        PropertyList::Dictionary::addObjectForKey<PropertyList::UUID,unsigned char (&)[16]>(a2, "uuid", 4uLL, v14);
      }

      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x2000000000;
      v9[3] = 0;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZN5dyld423ExternallyViewableState13atlasAddImageERN12PropertyList10DictionaryEyPKc_block_invoke;
      v8[3] = &unk_A32E0;
      v8[4] = v9;
      v8[5] = a2;
      mach_o::Header::forEachSegment(v7, v8);
      _Block_object_dispose(v9, 8);
    }
  }
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::String,char const*&>(uint64_t a1, const void *a2, size_t a3, const char **a4)
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
  v13 = *a4;
  v14 = _platform_strlen(v13);
  PropertyList::String::String(v12, v8, v13, v14);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7, *(v7 + 16) + 1);
  v15 = *(v7 + 8);
  v16 = *(v7 + 16);
  *(v7 + 16) = v16 + 1;
  *(v15 + 8 * v16) = v12;
  return v12;
}

uint64_t mach_o::Header::preferredLoadAddress(mach_o::Header *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header20preferredLoadAddressEv_block_invoke;
  v3[3] = &unk_A5400;
  v3[4] = &v4;
  mach_o::Header::forEachSegment(this, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t *lsl::Vector<std::byte>::resize(uint64_t *result, unint64_t a2)
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

      return lsl::Allocator::realloc(v4, v5, a2);
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
    result = lsl::Vector<std::byte>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

uint64_t ___ZNK6mach_o6Header20preferredLoadAddressEv_block_invoke(uint64_t result, void *a2, _BYTE *a3)
{
  if (a2[1] == 6 && **a2 == 1163157343 && *(*a2 + 4) == 21592)
  {
    *(*(*(result + 32) + 8) + 24) = a2[2];
    *a3 = 1;
  }

  return result;
}

char *mach_o::Header::installName(mach_o::Header *this)
{
  v4 = 0;
  v2 = 0x10000;
  v3 = 0x10000;
  if (mach_o::Header::getDylibInstallName(this, &v4, &v3, &v2))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t mach_o::Header::getDylibInstallName(mach_o::Header *this, const char **a2, mach_o::Version32 *a3, mach_o::Version32 *a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header19getDylibInstallNameEPPKcPNS_9Version32ES5__block_invoke;
  v6[3] = &unk_A5170;
  v6[6] = a4;
  v6[7] = a2;
  v6[4] = &v7;
  v6[5] = a3;
  mach_o::Header::forEachLoadCommand(this, v6, &v11);
  mach_o::Error::~Error(&v11);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t ___ZNK6mach_o6Header19getDylibInstallNameEPPKcPNS_9Version32ES5__block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if ((*a2 | 2) == 0xF)
  {
    v3 = *(result + 48);
    **(result + 40) = a2[5];
    *v3 = a2[4];
    **(result + 56) = a2 + a2[2];
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::UUID,unsigned char (&)[16]>(uint64_t a1, const void *a2, size_t a3, unsigned __int8 *a4)
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
  PropertyList::UUID::UUID(v12, v8, a4);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

PropertyList::UUID *PropertyList::UUID::UUID(PropertyList::UUID *this, lsl::Allocator *a2, unsigned __int8 *a3)
{
  *this = &off_A4170;
  *(this + 1) = 0x27FFFFFFFFFFFFFELL;
  *(this + 2) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  lsl::Vector<std::byte>::insert<std::byte*>(this + 16, 0, a3, a3 + 16);
  *this = &off_A41F0;
  return this;
}

lsl::Allocator::Pool *___ZN5dyld423ExternallyViewableState13atlasAddImageERN12PropertyList10DictionaryEyPKc_block_invoke(lsl::Allocator::Pool *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8) != 10 || (**a2 == 0x455A454741505F5FLL ? (v4 = *(*a2 + 8) == 20306) : (v4 = 0), !v4))
  {
    v5 = *(*(*(result + 4) + 8) + 24);
    if (!v5)
    {
      *(*(*(v3 + 4) + 8) + 24) = PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(*(v3 + 5), "segs", 4uLL);
      v5 = *(*(*(v3 + 4) + 8) + 24);
    }

    v6 = PropertyList::Array::addObject<PropertyList::Dictionary>(v5);
    PropertyList::Dictionary::addObjectForKey<PropertyList::String,std::string_view const&>(v6, "name", 4uLL, a2);
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(v6, "padr", 4uLL, (a2 + 16));
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(v6, "size", 4uLL, (a2 + 24));
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned int const&>(v6, "foff", 4uLL, (a2 + 32));
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned int const&>(v6, "fsze", 4uLL, (a2 + 36));

    return PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned char const&>(v6, "perm", 4uLL, (a2 + 47));
  }

  return result;
}

uint64_t lsl::Vector<std::byte>::insert<std::byte*>(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a2 - *(a1 + 8);
  v8 = a4 - a3;
  lsl::Vector<std::byte>::reserve(a1, *(a1 + 16) + a4 - a3);
  v9 = *(a1 + 16);
  if (v9 != v7)
  {
    memmove((*(a1 + 8) + v8 + v7), (*(a1 + 8) + v7), v9 - v7);
  }

  if (a4 != a3)
  {
    memmove((*(a1 + 8) + v7), a3, v8);
  }

  v10 = *(a1 + 8);
  *(a1 + 16) += v8;
  return v10 + v7;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::String,std::string_view const&>(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
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
  PropertyList::String::String(v12, v8, *a4, *(a4 + 8));
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned int const&>(uint64_t a1, const void *a2, size_t a3, unsigned int *a4)
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

uint64_t *PropertyList::encode(uint64_t *a1, uint64_t a2)
{
  v99 = *a2;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v4 = a1 + 1;
  v95 = *a1;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v91 = v95;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v87 = v95;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v83 = v95;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v80 = v95;
  v81 = 0;
  v82 = 0;
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v80, 1uLL);
  v5 = v81;
  v6 = __CFADD__(v81, 1);
  v7 = ++v81;
  *(*(&v80 + 1) + 8 * v5) = v4;
  if (!v6)
  {
    do
    {
      v76 = *a1;
      v78 = 0;
      v79 = 0;
      v77 = 0;
      v8 = *(&v80 + 1);
      v9 = 8 * v7;
      do
      {
        v10 = *v8;
        v11 = *(*v8 + 8);
        if ((v11 & 0x4000000000000000) != 0)
        {
          goto LABEL_16;
        }

        *(v10 + 8) = v11 | 0x4000000000000000;
        v12 = (v11 >> 59) & 7;
        if (v12 <= 1)
        {
          if (v12)
          {
            lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v91, v93 + 1);
            v13 = v92;
            v14 = v93++;
          }

          else
          {
            lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v95, v97 + 1);
            v13 = v96;
            v14 = v97++;
          }
        }

        else
        {
          if (v12 == 2)
          {
            lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v83, v85 + 1);
            v15 = v85++;
            v84[v15] = v10;
            v16 = *(v10 + 24);
            v17 = *(v10 + 32);
LABEL_13:
            std::__copy_impl::operator()[abi:nn200100]<PropertyList::Object **,PropertyList::Object **,std::back_insert_iterator<lsl::Vector<PropertyList::Object *>>>(&v103, v16, &v16[v17], &v76);
            goto LABEL_16;
          }

          if (v12 == 3)
          {
            lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v83, v85 + 1);
            v18 = v85++;
            v84[v18] = v10;
            std::__copy_impl::operator()[abi:nn200100]<PropertyList::Object **,PropertyList::Object **,std::back_insert_iterator<lsl::Vector<PropertyList::Object *>>>(&v103, *(v10 + 24), (*(v10 + 24) + 8 * *(v10 + 32)), &v76);
            v16 = *(v10 + 56);
            v17 = *(v10 + 64);
            goto LABEL_13;
          }

          if (v12 != 4)
          {
            goto LABEL_16;
          }

          lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v87, v89 + 1);
          v13 = v88;
          v14 = v89++;
        }

        *&v13[8 * v14] = v10;
LABEL_16:
        ++v8;
        v9 -= 8;
      }

      while (v9);
      lsl::Vector<PropertyList::Object *>::operator=(&v80, &v76);
      if (v77)
      {
        lsl::Vector<char const*>::resize(&v76, 0);
      }

      v7 = v81;
    }

    while (v81);
  }

  *(a2 + 32) = 1;
  lsl::Vector<std::byte>::insert<std::byte*>(a2, *(a2 + 8) + *(a2 + 16), "bplist00", "");
  if (v97)
  {
    if (v97)
    {
      v19 = 0;
      v20 = 0;
      v21 = v101;
      do
      {
        v22 = *&v96[8 * v19];
        if (v20 && !_platform_strcmp(*(v22 + 16), *(v20 + 16)))
        {
          v25 = *(v20 + 8);
          (*(*v22 + 8))(v22);
          *(v22 + 8) = *(v22 + 8) & 0x7800000000000000 | v25 & 0x7FFFFFFFFFFFFFFLL | 0x8000000000000000;
        }

        else
        {
          *(v22 + 8) = *(v22 + 8) & 0xF800000000000000 | v21 & 0x7FFFFFFFFFFFFFFLL;
          v20 = *&v96[8 * v19];
          v23 = *(a2 + 16);
          lsl::Vector<unsigned long long>::reserve(&v99, v101 + 1);
          v24 = v101++;
          *(v100 + 8 * v24) = v23;
          (**v20)(v20, 0, a2);
          ++v21;
        }

        ++v19;
      }

      while (v97 > v19);
    }
  }

  if (v93)
  {
    if (v93)
    {
      v26 = 0;
      v27 = 0;
      v28 = v101;
      do
      {
        v29 = *&v92[8 * v26];
        if (v27 && v29[2] == *(v27 + 16))
        {
          v30 = *(v27 + 8);
          (*(*v29 + 8))(*&v92[8 * v26]);
          v29[1] = v29[1] & 0x7800000000000000 | v30 & 0x7FFFFFFFFFFFFFFLL | 0x8000000000000000;
        }

        else
        {
          v29[1] = v29[1] & 0xF800000000000000 | v28 & 0x7FFFFFFFFFFFFFFLL;
          v27 = *&v92[8 * v26];
          v31 = *(a2 + 16);
          lsl::Vector<unsigned long long>::reserve(&v99, v101 + 1);
          v32 = v101++;
          *(v100 + 8 * v32) = v31;
          (**v27)(v27, 0, a2);
          ++v28;
        }

        ++v26;
      }

      while (v93 > v26);
    }
  }

  if (v89)
  {
    if (v89)
    {
      v33 = 0;
      v34 = 0;
      v35 = v101;
      do
      {
        v36 = *&v88[8 * v33];
        if (v34 && !PropertyList::Data::operator<=>(*&v88[8 * v33], v34))
        {
          v39 = *(v34 + 8);
          (*(*v36 + 8))(v36);
          v36[1] = v36[1] & 0x7800000000000000 | v39 & 0x7FFFFFFFFFFFFFFLL | 0x8000000000000000;
        }

        else
        {
          v36[1] = v36[1] & 0xF800000000000000 | v35 & 0x7FFFFFFFFFFFFFFLL;
          v34 = *&v88[8 * v33];
          v37 = *(a2 + 16);
          lsl::Vector<unsigned long long>::reserve(&v99, v101 + 1);
          v38 = v101++;
          *(v100 + 8 * v38) = v37;
          (**v34)(v34, 0, a2);
          ++v35;
        }

        ++v33;
      }

      while (v89 > v33);
    }
  }

  v40 = v101;
  v41 = v85 + v101;
  v42 = 1;
  while (v41 >> (8 * (v42 & 0x1Fu)))
  {
    v43 = v42;
    v42 *= 2;
    if (v43 >= 4)
    {
      v42 = 8;
      break;
    }
  }

  if (v85)
  {
    v44 = v84;
    v45 = 8 * v85;
    v46 = v101;
    do
    {
      v47 = *v44++;
      v48 = *(v47 + 8) & 0xF800000000000000 | v46++ & 0x7FFFFFFFFFFFFFFLL;
      *(v47 + 8) = v48;
      v45 -= 8;
    }

    while (v45);
    if (v85)
    {
      v49 = v84;
      v50 = 8 * v85;
      do
      {
        v51 = *v49++;
        v52 = *(a2 + 16);
        lsl::Vector<unsigned long long>::reserve(&v99, v101 + 1);
        v53 = v101++;
        *(v100 + 8 * v53) = v52;
        (**v51)(v51, v42, a2);
        v50 -= 8;
      }

      while (v50);
    }
  }

  v54 = *(a2 + 16);
  v55 = 1;
  while (v54 >> (8 * (v55 & 0x1Fu)))
  {
    v56 = v55;
    v55 *= 2;
    if (v56 >= 4)
    {
      v55 = 8;
      break;
    }
  }

  v57 = *(a2 + 16);
  if (v101)
  {
    for (i = 0; i < v101; ++i)
    {
      ByteStream::push_back(a2, v55, *(v100 + 8 * i));
    }

    v57 = *(a2 + 16);
  }

  lsl::Vector<std::byte>::reserve(a2, v57 + 1);
  v59 = *(a2 + 8);
  v60 = *(a2 + 16);
  *(a2 + 16) = v60 + 1;
  *(v59 + v60) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v61 = *(a2 + 8);
  v62 = *(a2 + 16);
  *(a2 + 16) = v62 + 1;
  *(v61 + v62) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v63 = *(a2 + 8);
  v64 = *(a2 + 16);
  *(a2 + 16) = v64 + 1;
  *(v63 + v64) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v65 = *(a2 + 8);
  v66 = *(a2 + 16);
  *(a2 + 16) = v66 + 1;
  *(v65 + v66) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v67 = *(a2 + 8);
  v68 = *(a2 + 16);
  *(a2 + 16) = v68 + 1;
  *(v67 + v68) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v69 = *(a2 + 8);
  v70 = *(a2 + 16);
  *(a2 + 16) = v70 + 1;
  *(v69 + v70) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v71 = *(a2 + 8);
  v72 = *(a2 + 16);
  *(a2 + 16) = v72 + 1;
  *(v71 + v72) = v55;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v73 = *(a2 + 8);
  v74 = *(a2 + 16);
  *(a2 + 16) = v74 + 1;
  *(v73 + v74) = v42;
  ByteStream::push_back<unsigned long long>(a2, v41);
  ByteStream::push_back<unsigned long long>(a2, v40);
  result = ByteStream::push_back<unsigned long long>(a2, v54);
  if (*(&v80 + 1))
  {
    result = lsl::Vector<char const*>::resize(&v80, 0);
  }

  if (v84)
  {
    result = lsl::Vector<char const*>::resize(&v83, 0);
  }

  if (v88)
  {
    result = lsl::Vector<char const*>::resize(&v87, 0);
  }

  if (v92)
  {
    result = lsl::Vector<char const*>::resize(&v91, 0);
  }

  if (v96)
  {
    result = lsl::Vector<char const*>::resize(&v95, 0);
  }

  if (v100)
  {
    return lsl::Vector<unsigned long long>::resize(&v99, 0);
  }

  return result;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<PropertyList::Object **,PropertyList::Object **,std::back_insert_iterator<lsl::Vector<PropertyList::Object *>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 16);
    do
    {
      lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(a4, v7 + 1);
      v8 = *v5++;
      v9 = *(a4 + 8);
      v10 = *(a4 + 16);
      v7 = v10 + 1;
      *(a4 + 16) = v10 + 1;
      *(v9 + 8 * v10) = v8;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__int128 *lsl::Vector<PropertyList::Object *>::operator=(__int128 *a1, uint64_t a2)
{
  lsl::Vector<PropertyList::Object *>::Vector(&v7, a2);
  if (&v7 == a1)
  {
    if (!*(&v7 + 1))
    {
      return a1;
    }

    goto LABEL_3;
  }

  v3 = v8;
  v8 = a1[1];
  v5 = *a1;
  v4 = *(a1 + 1);
  *a1 = v7;
  a1[1] = v3;
  *&v7 = v5;
  *(&v7 + 1) = v4;
  if (v4)
  {
LABEL_3:
    lsl::Vector<char const*>::resize(&v7, 0);
  }

  return a1;
}

uint64_t *lsl::Vector<PropertyList::Object *>::Vector(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  if (!v2)
  {
    lsl::Vector<PropertyList::Object *>::Vector();
  }

  lsl::Vector<char const*>::resize(a1, 0);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(a1, *(a2 + 16));
  v6 = *(a2 + 16);
  a1[2] = v6;
  if (v6)
  {
    memmove(*v3, *(a2 + 8), 8 * v6);
  }

  return a1;
}

size_t _platform_strlcpy(void *a1, char *__s, size_t a3)
{
  v6 = _platform_strlen(__s);
  v7 = v6;
  if (v6 >= a3)
  {
    if (a3)
    {
      v8 = a3 - 1;
      memmove(a1, __s, v8);
      *(a1 + v8) = 0;
    }
  }

  else
  {
    memmove(a1, __s, v6 + 1);
  }

  return v7;
}

uint64_t lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(uint64_t result, unint64_t a2)
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

    return lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(result, v2);
  }

  return result;
}

uint64_t lsl::Allocator::realloc(lsl::Allocator *this, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  _X19 = a2;
  v5 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v6 = ((a2 & 0xF0FFFFFFFFFFFFFFLL) - 16);
  v7 = 16;
  if (a3 > 0x10)
  {
    v7 = a3;
  }

  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (*(v5 - 8) & 0xFFFFFFFFFFFFFFFCLL) - v6;
  if (v9 - 16 >= v8)
  {
    if (v9 - 16 > v8)
    {
      lsl::Allocator::AllocationMetadata::returnToNext(((a2 & 0xF0FFFFFFFFFFFFFFLL) - 16), v8);
    }

    goto LABEL_10;
  }

  if (lsl::Allocator::AllocationMetadata::consumeFromNext(((a2 & 0xF0FFFFFFFFFFFFFFLL) - 16), v8))
  {
LABEL_10:
    *(this + 2) += v8 - v9 + 16;
    v10 = 1;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:
  if (*(lsl::Allocator::AllocationMetadata::pool(v6, 1) + 57) == 1 && -16 - v6 + (*(v5 - 8) & 0xFFFFFFFFFFFFFFFCLL))
  {
    v11 = 0;
    do
    {
      __asm { STG             X19, [X19],#0x10 }

      v11 += 16;
    }

    while (-16 - v6 + (*(v5 - 8) & 0xFFFFFFFFFFFFFFFCLL) > v11);
  }

  return v10;
}

uint64_t lsl::Allocator::AllocationMetadata::coalesce(lsl::Allocator::AllocationMetadata *this, lsl::Allocator::Pool *a2)
{
  v3 = *(this + 1);
  if ((v3 & 2) == 0 && (v3 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    if ((v4 & 1) == 0)
    {
      *(this + 1) = v4;
      if ((v4 & 2) == 0)
      {
        *v4 = this;
      }

      v3 = v4;
    }
  }

  v5 = *this;
  if (*this)
  {
    v6 = (*this & 1) == 0;
    *this;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || (*(v5 + 8) & 1) != 0)
  {
    v5 = this;
  }

  else
  {
    *(v5 + 1) = v3;
    if ((v3 & 2) == 0)
    {
      v7 = *(this + 1);
      if ((v7 & 2) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      }

      *v8 = v5;
    }
  }

  result = lsl::Allocator::AllocationMetadata::setPoolHint(v5, a2);
  if ((*(v5 + 8) & 2) != 0)
  {
    *(a2 + 3) = v5;
  }

  return result;
}

uint64_t *__stackAllocatorInternal(uint64_t *a1, uint64_t a2)
{
  v6 = a1;
  v7 = a2;
  if ((lsl::MemoryManager::Buffer::align(&v6, 16, 0x30uLL) & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  v2 = v6;
  lsl::MemoryManager::Buffer::consumeSpace(&v6, 0x30uLL);
  if ((lsl::MemoryManager::Buffer::align(&v6, 16, 0x40uLL) & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  v3 = v6;
  lsl::MemoryManager::Buffer::consumeSpace(&v6, 0x40uLL);
  v4 = lsl::MemoryManager::Buffer::align(&v6, 16, v7 - 16);
  if ((v4 & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  lsl::MemoryManager::memoryManager(v4);
  lsl::Allocator::Allocator(v2);
  lsl::Allocator::Pool::Pool(v3, v2, 0, v6, v7, v6, v7, 0, 0);
  lsl::Allocator::setInitialPool(v2, v3);
  return v2;
}

uint64_t *__stackAllocatorInternal(uint64_t *a1)
{
  v5 = a1;
  v6 = 272;
  if ((lsl::MemoryManager::Buffer::align(&v5, 16, 0x30uLL) & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  v1 = v5;
  lsl::MemoryManager::Buffer::consumeSpace(&v5, 0x30uLL);
  if ((lsl::MemoryManager::Buffer::align(&v5, 16, 0x40uLL) & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  v2 = v5;
  lsl::MemoryManager::Buffer::consumeSpace(&v5, 0x40uLL);
  v3 = lsl::MemoryManager::Buffer::align(&v5, 16, v6 - 16);
  if ((v3 & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  lsl::MemoryManager::memoryManager(v3);
  lsl::Allocator::Allocator(v1);
  lsl::Allocator::Pool::Pool(v2, v1, 0, v5, v6, v5, v6, 0, 0);
  lsl::Allocator::setInitialPool(v1, v2);
  return v1;
}

void dyld4::ExternallyViewableState::createMinimalInfo(dyld4::ExternallyViewableState *this, lsl::Allocator *a2, _DWORD *a3, const char *a4, mach_o::Header *a5, mach_o::Header *a6, const DyldSharedCache *a7)
{
  memset(v90, 0, sizeof(v90));
  v13 = __stackAllocatorInternal(v90);
  v14 = mach_absolute_time();
  v15 = *(this + 3);
  v16 = *(this + 4);
  if (v14 <= v15)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = v14;
  }

  *(this + 3) = v17;
  *(v16 + 112) = 1;
  *(*(this + 5) + 16) = 0;
  *(*(this + 6) + 16) = 0;
  v18 = mach_o::Header::isMachO(a3, 0x1CuLL);
  if ((mach_o::Header::getUuid(v18, &v116 + 8) & 1) == 0)
  {
    goto LABEL_62;
  }

  v85 = v13;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  AAREncoder::AAREncoder(v84, v13);
  if ((dyld3::MachOFile::inDyldCache(v18) & 1) == 0)
  {
    *&v116 = a3;
    v19 = *(this + 6);
    lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(v19, *(v19 + 16) + 1);
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    *(v19 + 16) = v21 + 1;
    v22 = v20 + 24 * v21;
    v23 = v116;
    *(v22 + 16) = v117;
    *v22 = v23;
  }

  v24 = mach_o::Header::isMachO(a5, 0x1CuLL);
  if (mach_o::Header::getUuid(v24, &v114 + 8))
  {
    *&v114 = a5;
    v25 = *(this + 6);
    lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(v25, *(v25 + 16) + 1);
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    *(v25 + 16) = v27 + 1;
    v28 = v26 + 24 * v27;
    v29 = v114;
    *(v28 + 16) = v115;
    *v28 = v29;
  }

  v30 = *(this + 5);
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(v30, *(v30 + 16) + 1);
  v31 = *(v30 + 8);
  v32 = *(v30 + 16);
  *(v30 + 16) = v32 + 1;
  v33 = (v31 + 24 * v32);
  *v33 = a5;
  v33[1] = a6;
  v33[2] = 0;
  v34 = *(this + 4);
  *(v34 + 4) = *(*(this + 5) + 16);
  atomic_store(0, (v34 + 8));
  v35 = *(this + 4);
  *(v35 + 96) = 0;
  v36 = *(this + 5);
  *(v35 + 4) = *(v36 + 16);
  *(v35 + 88) = *(*(this + 6) + 16);
  atomic_store(*(v36 + 8), (v35 + 8));
  *(*(this + 4) + 96) = *(*(this + 6) + 8);
  dyld4::FileManager::FileManager(v82, v13);
  dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(v108, v13, (*(this + 1) + 592), 1);
  dyld4::Atlas::ProcessSnapshot::setInitialImageCount(v108, 1);
  dyld4::Atlas::ProcessSnapshot::setDyldState(v108, 16);
  if (a7)
  {
    v37 = DyldSharedCache::dynamicRegion(a7);
    v38 = DyldSharedCache::DynamicRegion::cachePath(v37);
    dyld4::FileManager::fileRecordForPath(v82, v13, v38, v107);
    v39 = dyld4::Atlas::ProcessSnapshot::identityMapper(v108);
    dyld4::Atlas::SharedCache::SharedCache(&v96, v13, v107, v39, a7, 0);
    dyld4::Atlas::ProcessSnapshot::addSharedCache(v108, &v96);
    v40 = *(a7 + 15);
    v41 = DyldSharedCache::slide(a7);
    dyld4::Atlas::ProcessSnapshot::addSharedCacheImage(v108, (v41 + v40));
    if (v105)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v105, v42);
    }

    if (v103 && v104 == 1)
    {
      dyld4::Atlas::Mapper::unmap(v101, v103, v102);
    }

    dyld4::FileRecord::~FileRecord(v97);
    dyld4::FileRecord::~FileRecord(v107);
  }

  v106 = 0uLL;
  if ((dyld3::MachOFile::inDyldCache(v18) & 1) == 0)
  {
    dyld4::FileManager::fileRecordForPath(v82, v13, a4, v107);
    v91 = 0uLL;
    if (mach_o::Header::getUuid(v18, &v106))
    {
      v91 = v106;
      v43 = dyld4::Atlas::ProcessSnapshot::identityMapper(v108);
      dyld4::Atlas::Image::Image(&v96, v13, v107, v43, &dword_0, &v91);
      dyld4::Atlas::ProcessSnapshot::addImage(v108, &v96);
      v44 = v103;
      if (v103 && v104 == 1)
      {
        dyld4::Atlas::Mapper::unmap(v101, v103, v102);
      }

      if (v100)
      {
        lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v100, v44);
      }

      dyld4::FileRecord::~FileRecord(v97);
      dyld4::FileRecord::~FileRecord(v107);
      goto LABEL_24;
    }

LABEL_62:
    dyld4::halt("dyld must have a UUID", 0);
  }

LABEL_24:
  dyld4::FileManager::fileRecordForPath(v82, v13, a4, v107);
  v95 = 0uLL;
  if (mach_o::Header::getUuid(a5, &v106))
  {
    v95 = v106;
    v45 = dyld4::Atlas::ProcessSnapshot::identityMapper(v108);
    dyld4::Atlas::Image::Image(&v96, v13, v107, v45, a5, &v95);
  }

  else
  {
    v46 = dyld4::Atlas::ProcessSnapshot::identityMapper(v108);
    dyld4::Atlas::Image::Image(&v96, v13, v107, v46, a5);
  }

  dyld4::Atlas::ProcessSnapshot::addImage(v108, &v96);
  v47 = v103;
  if (v103 && v104 == 1)
  {
    dyld4::Atlas::Mapper::unmap(v101, v103, v102);
  }

  if (v100)
  {
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v100, v47);
  }

  dyld4::FileRecord::~FileRecord(v97);
  dyld4::Atlas::ProcessSnapshot::serialize(v108, &v79);
  AAREncoder::addFile(v84, "process.cinfo", 0xDuLL, v80, v81);
  PropertyList::PropertyList(&v96, v13);
  v48 = PropertyList::rootDictionary(&v96);
  v49 = PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(v48, "imgs", 4uLL);
  v50 = dyld4::ExternallyViewableState::gatherAtlasProcessInfo(this, a5, a7, v48);
  v51 = PropertyList::Array::addObject<PropertyList::Dictionary>(v49);
  dyld4::ExternallyViewableState::atlasAddImage(v51, v51, a5, a6);
  if ((dyld3::MachOFile::inDyldCache(v18) & 1) == 0)
  {
    v52 = PropertyList::Array::addObject<PropertyList::Dictionary>(v49);
    dyld4::ExternallyViewableState::atlasAddImage(v52, v52, a3, a4);
  }

  if (v50)
  {
    v53 = *(a7 + 18);
    if (v53)
    {
      v54 = 0;
      v55 = (a7 + *(a7 + 17) + 28);
      v56 = 32 * v53;
      while (1)
      {
        v57 = *v55;
        v55 += 8;
        if (!_platform_strcmp(a7 + v57, "/usr/lib/dyld"))
        {
          break;
        }

        v54 += 32;
        v56 -= 32;
        if (!v56)
        {
          goto LABEL_41;
        }
      }

      PropertyList::Bitmap::setBit(v50, v54 >> 5);
    }
  }

LABEL_41:
  v91 = v13;
  v93 = 0;
  v92 = 0;
  v94 = 0;
  v74 = v13;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  PropertyList::encode(&v96, &v74);
  AAREncoder::addFile(v84, "process.plist", 0xDuLL, v75, v76);
  AAREncoder::encode(v84, &v91);
  dyld4::ExternallyViewableState::activateAtlas(this, a2, &v91);
  AAREncoder::encode(v84, &v85);
  v69 = v13;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  lsl::Vector<std::byte>::insert<std::byte*>(&v69, 0, v86, &v86[v87]);
  dyld4::ExternallyViewableState::activateAtlas(this, a2, &v69);
  v58 = *(this + 4);
  v59 = *(v58 + 4);
  v60 = atomic_load((v58 + 8));
  dyld4::ExternallyViewableState::triggerNotifications(this, 0, v59, v60, v61, v62, v63, v64);
  if (v70)
  {
    lsl::Vector<std::byte>::resize(&v69, 0);
  }

  if (v75)
  {
    lsl::Vector<std::byte>::resize(&v74, 0);
  }

  if (*(&v91 + 1))
  {
    lsl::Vector<std::byte>::resize(&v91, 0);
  }

  v97[0] = &off_A41D0;
  if (v99[1])
  {
    lsl::Vector<char const*>::resize(v99, 0);
  }

  if (v98[1])
  {
    lsl::Vector<char const*>::resize(v98, 0);
  }

  if (v80)
  {
    lsl::Vector<std::byte>::resize(&v79, 0);
  }

  dyld4::FileRecord::~FileRecord(v107);
  if (v113)
  {
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v113, v65);
  }

  lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(&v112, v65);
  if (v111)
  {
    lsl::Bitmap::~Bitmap(v111, v66);
    lsl::Allocator::freeObject(v111, v67);
  }

  if (v109)
  {
    lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::deallocate(v109, v110);
  }

  lsl::UniquePtr<lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>>::~UniquePtr(&v83, v66);
  AAREncoder::~AAREncoder(v84);
  if (v86)
  {
    lsl::Vector<std::byte>::resize(&v85, 0);
  }

  lsl::Allocator::~Allocator(v13);
}

uint64_t lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 8 * a2);
    if ((result & 1) == 0)
    {
      result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 8 * a2);
      v4 = result;
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = 0;
        v7 = result;
        do
        {
          *v7++ = *(*(v3 + 8) + 8 * v6++);
        }

        while (v5 != v6);
      }

      v8 = *(v3 + 8);
      if (v8)
      {
        result = lsl::Allocator::free(*v3, v8);
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

uint64_t lsl::MemoryManager::Buffer::align(lsl::MemoryManager::Buffer *this, uint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 < a3)
  {
    return 0;
  }

  v4 = (*this + a2 - 1) & -a2;
  v5 = v4 - *this;
  if (v5 > v3 - a3)
  {
    return 0;
  }

  *this = v4;
  *(this + 1) = v3 - v5;
  return 1;
}

double lsl::Allocator::Allocator(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *lsl::Allocator::setInitialPool(void *this, lsl::Allocator::Pool *a2)
{
  if (*this)
  {
    lsl::Allocator::setInitialPool();
  }

  if (this[1])
  {
    lsl::Allocator::setInitialPool();
  }

  *this = a2;
  this[1] = a2;
  return this;
}

uint64_t lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(uint64_t result, unint64_t a2)
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

    return lsl::Vector<dyld4::RuntimeState::MissingFlatSymbol>::reserveExact(result, v2);
  }

  return result;
}

void *AAREncoder::AAREncoder(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a2;
  result[7] = 0;
  result[8] = 0;
  result[6] = 0;
  return result;
}

uint64_t lsl::Vector<dyld4::RuntimeState::MissingFlatSymbol>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 24 * a2);
    if ((result & 1) == 0)
    {
      result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 24 * a2);
      v4 = result;
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          v8 = result + v6;
          v9 = (*(v3 + 8) + v6);
          v10 = *v9;
          *(v8 + 16) = *(v9 + 2);
          *v8 = v10;
          v5 = *(v3 + 16);
          v6 += 24;
        }
      }

      v11 = *(v3 + 8);
      if (v11)
      {
        result = lsl::Allocator::free(*v3, v11);
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

dyld4::Atlas::ProcessSnapshot *dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(dyld4::Atlas::ProcessSnapshot *this, lsl::Allocator::Pool **a2, dyld4::FileManager *a3, char a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v7 = lsl::Allocator::aligned_alloc(a2, 8uLL, 0x30uLL);
  *v7 = a2;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 5) = a2;
  lsl::SharedPtr<dyld4::Atlas::Mapper>::SharedPtr(this + 9, v7);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 104) = a4;
  *(this + 105) = 1;
  return this;
}

kern_return_t mach_vm_map(vm_map_t target_task, mach_vm_address_t *address, mach_vm_size_t size, mach_vm_offset_t mask, int flags, mem_entry_name_port_t object, memory_object_offset_t offset, BOOLean_t copy, vm_prot_t cur_protection, vm_prot_t max_protection, vm_inherit_t inheritance)
{
  v12 = target_task;
  if (object)
  {
    goto LABEL_9;
  }

  if (max_protection != 7 || inheritance != 1)
  {
    goto LABEL_9;
  }

  v14 = address;
  v15 = size;
  v16 = mask;
  v17 = flags;
  v18 = copy;
  v19 = offset;
  v20 = _kernelrpc_mach_vm_map_trap(target_task, address, size, mask, flags, cur_protection);
  size = v15;
  mask = v16;
  flags = v17;
  offset = v19;
  v12 = target_task;
  copy = v18;
  address = v14;
  v21 = v20;
  if (v20 == 268435459)
  {
LABEL_9:
    v30 = 1;
    v31 = object;
    *&v32 = 0x13000000000000;
    v22 = address;
    v23 = *address;
    *(&v32 + 1) = 0x100000000;
    v33 = v23;
    v34 = size;
    v35 = mask;
    v36 = flags;
    v37 = offset;
    v38 = copy;
    v39 = cur_protection;
    v40 = max_protection;
    v41 = inheritance;
    reply_port = mig_get_reply_port();
    *&v29.msgh_bits = 0x6480001513;
    *&v29.msgh_remote_port = __PAIR64__(reply_port, v12);
    *&v29.msgh_voucher_port = 0x12CB00000000;
    v25 = mach_msg2_internal(&v29, 0x200000003, 0x6480001513, __PAIR64__(reply_port, v12), 0x12CB00000000, ((reply_port << 32) | 1), &stru_20.segname[12], 0);
    v21 = v25;
    if ((v25 - 268435458) > 0xE || ((1 << (v25 - 2)) & 0x4003) == 0)
    {
      if (!v25)
      {
        if (v29.msgh_id == 71)
        {
          v21 = -308;
        }

        else if (v29.msgh_id == 4911)
        {
          if ((v29.msgh_bits & 0x80000000) == 0)
          {
            if (v29.msgh_size == 44)
            {
              if (!v29.msgh_remote_port)
              {
                v21 = v32;
                if (!v32)
                {
                  *v22 = *(&v32 + 4);
                  return v21;
                }

                goto LABEL_27;
              }
            }

            else if (v29.msgh_size == 36)
            {
              if (v29.msgh_remote_port)
              {
                v26 = 1;
              }

              else
              {
                v26 = v32 == 0;
              }

              if (v26)
              {
                v21 = -300;
              }

              else
              {
                v21 = v32;
              }

              goto LABEL_27;
            }
          }

          v21 = -300;
        }

        else
        {
          v21 = -301;
        }

LABEL_27:
        mach_msg_destroy(&v29);
        return v21;
      }

      mig_dealloc_reply_port(v29.msgh_local_port);
    }
  }

  return v21;
}