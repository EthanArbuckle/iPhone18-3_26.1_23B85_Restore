__n128 _tlv_get_addr(unsigned int *a1, __n128 result)
{
  v2 = a1[2];
  v3 = *((_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) & 0xFFFFFFFFFFFFFFF8) + 8 * v2);
  if (v3)
  {
    v4 = v3 + a1[3];
  }

  else
  {
    v6 = result;
    v5 = dyld::ThreadLocalVariables::instantiateVariable(a1) + a1[3];
    return v6;
  }

  return result;
}

void dyld4::LibSystemHelpers::setDefaultProgramVars(uint64_t a1, void *a2)
{
  a2[1] = &NXArgc;
  a2[2] = &NXArgv;
  a2[3] = &environ;
  a2[4] = &__progname;
}

uint64_t _dyld_initializer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  lsl::MemoryManager::init(0, 0, 0, a4);
  dyld::ThreadLocalVariables::initialize(&dyld::sThreadLocalVariables);
  v4 = *(*dyld4::gAPIs + 8);

  return v4();
}

uint64_t ___ZNK6mach_o6Header14forEachSegmentEU13block_pointerFvRKNS0_11SegmentInfoERbE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    v11 = strnlen((a2 + 8), 0x10uLL);
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

    v6 = strnlen((a2 + 8), 0x10uLL);
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

void mach_o::Header::forEachSection(mach_o::Error *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header14forEachSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke;
  v2[3] = &unk_1EEE9C980;
  v2[4] = a2;
  v2[5] = v3;
  mach_o::Header::forEachLoadCommand(a1, v2, v5);
  mach_o::Error::~Error(v5);
  _Block_object_dispose(v3, 8);
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

void dyld::ThreadLocalVariables::forEachThunkSpan(mach_o::Header *this@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN4dyld20ThreadLocalVariables16forEachThunkSpanEPKN6mach_o6HeaderEU13block_pointerFNS1_5ErrorENSt3__14spanINS0_5ThunkELm18446744073709551615EEEE_block_invoke;
  v6[3] = &unk_1EEE9BB18;
  v6[5] = &v7;
  v6[6] = mach_o::Header::getSlide(this);
  v6[4] = a2;
  mach_o::Header::forEachSection(this, v6);
  mach_o::Error::Error(a3, v8 + 5);
  _Block_object_dispose(&v7, 8);
  mach_o::Error::~Error(&v12);
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
  v2[3] = &unk_1EEE9C958;
  v2[4] = a2;
  v2[5] = v3;
  mach_o::Header::forEachLoadCommand(a1, v2, v5);
  mach_o::Error::~Error(v5);
  _Block_object_dispose(v3, 8);
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
  v3[3] = &unk_1EEE9C930;
  v3[4] = &v4;
  mach_o::Header::forEachSegment(this, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void dyld::ThreadLocalVariables::initializeThunksInDyldCache(const DyldSharedCache *a1@<X1>, const mach_o::Header *a2@<X2>, mach_o::Error *a3@<X8>)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN4dyld20ThreadLocalVariables27initializeThunksInDyldCacheEPK15DyldSharedCachePKN6mach_o6HeaderE_block_invoke;
  v7[3] = &unk_1EEE9BB60;
  v7[4] = &v9;
  v7[5] = a1;
  v7[6] = a2;
  dyld::ThreadLocalVariables::forEachThunkSpan(a2, v7, &v8);
  if (*(v10 + 24) == 1)
  {
    dyld::ThreadLocalVariables::initializeThunksFromDisk(a2, a3);
  }

  else if (v8)
  {
    mach_o::Error::Error(a3, &v8);
  }

  else if ((*(a1 + 221) & 0x10) != 0)
  {
    *a3 = 0;
  }

  else
  {
    mach_o::Error::Error(a3, "dyld cache thread-local format too old");
  }

  mach_o::Error::~Error(&v8);
  _Block_object_dispose(&v9, 8);
}

void dyld::ThreadLocalVariables::setUpImage(const DyldSharedCache *a1@<X1>, const mach_o::Header *a2@<X2>, mach_o::Error *a3@<X8>)
{
  if (mach_o::Header::inDyldCache(a2))
  {
    dyld::ThreadLocalVariables::initializeThunksInDyldCache(a1, a2, a3);
  }

  else
  {
    dyld::ThreadLocalVariables::initializeThunksFromDisk(a2, a3);
  }

  if (!*a3)
  {
    mach_o::Error::~Error(a3);
    *a3 = 0;
  }
}

double lsl::MemoryManager::init(lsl::MemoryManager *this, const char **a2, const char **a3, void *a4)
{
  if (lsl::sMemoryManagerInitialized == 1)
  {
    lsl::MemoryManager::init();
  }

  result = 0.0;
  unk_1ED3F7310 = 0u;
  unk_1ED3F7300 = 0u;
  lsl::sMemoryManagerBuffer = 0u;
  *&qword_1ED3F72E8 = 0u;
  unk_1ED3F72F7 = 0;
  qword_1ED3F72E8 = &lsl::sAllocatorBuffer;
  lsl::sMemoryManagerInitialized = 1;
  return result;
}

void *dyld::ThreadLocalVariables::instantiateVariable(unsigned int *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  v4 = a1[2];
  v5 = a1[5];
  if (v2)
  {
    v6 = malloc_type_malloc(v5, 0xC89D1C79uLL);
    memcpy(v6, v3 + a1[4], a1[5]);
  }

  else
  {
    v6 = malloc_type_calloc(v5, 1uLL, 0x8A8BFD38uLL);
  }

  pthread_setspecific(v4, v6);
  return v6;
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
          v29 = strnlen(v27, 0x10uLL);
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
          v31 = strnlen((v27 + 16), 0x10uLL);
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
    result = strnlen((a2 + 8), 0x10uLL);
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
        v10 = strnlen((a2 + v8 + 88), 0x10uLL);
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
        v13 = strnlen((a2 + v8 + 72), 0x10uLL);
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

void ___ZN4dyld20ThreadLocalVariables16forEachThunkSpanEPKN6mach_o6HeaderEU13block_pointerFNS1_5ErrorENSt3__14spanINS0_5ThunkELm18446744073709551615EEEE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 44) == 19)
  {
    v11[3] = v3;
    v11[4] = v4;
    v7 = *(a2 + 64);
    if (v7 % 0x18)
    {
      mach_o::Error::Error(v11, "size (%llu) of thread-locals section %.*s is not a multiple of %lu", v7, *(a2 + 8), *a2, 24);
      mach_o::Error::operator=((*(a1[5] + 8) + 40), v11);
      mach_o::Error::~Error(v11);
      *a3 = 1;
    }

    else if (v7 >= 0x18)
    {
      v8 = a1[6];
      v9 = a1[4];
      v10 = v8 + *(a2 + 56);
      (*(a1[4] + 16))(v11);
      mach_o::Error::operator=((*(a1[5] + 8) + 40), v11);
      mach_o::Error::~Error(v11);
    }
  }
}

uint64_t ___ZN4dyld20ThreadLocalVariables27initializeThunksInDyldCacheEPK15DyldSharedCachePKN6mach_o6HeaderE_block_invoke@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  v7 = *(*(result + 40) + 221);
  if (*(a2 + 8))
  {
    result = pthread_key_init_np();
    if (a3)
    {
      v8 = 24 * a3;
      do
      {
        if (*v5 != _tlv_get_addr)
        {
          *v5 = _tlv_get_addr;
        }

        v5 += 3;
        v8 -= 24;
      }

      while (v8);
    }
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 0;
  return result;
}

void *mach_o::Error::operator=(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void *mach_o::Error::Error(void *result, void *a2)
{
  *result = 0;
  *result = *a2;
  *a2 = 0;
  return result;
}

uint64_t _dyld_objc_register_callbacks(void *a1)
{
  if (*a1 == 4)
  {
    v5[0] = 4;
    if (a1[1])
    {
      v1 = a1[1];
    }

    v5[1] = a1[1];
    if (a1[2])
    {
      v2 = a1[2];
    }

    v5[2] = a1[2];
    if (a1[3])
    {
      v3 = a1[3];
    }

    v5[3] = a1[3];
    v5[4] = a1[4];
  }

  else
  {
    v5[0] = *a1;
  }

  return (*(*dyld4::gAPIs + 856))(dyld4::gAPIs, v5);
}

uint64_t macho_dylib_install_name(mach_o::Header *a1)
{
  if (!mach_o::Header::hasMachOMagic(a1))
  {
    return 0;
  }

  return mach_o::Header::installName(a1);
}

uint64_t mach_o::Header::getDylibInstallName(mach_o::Error *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header19getDylibInstallNameEPPKcPNS_9Version32ES5__block_invoke;
  v6[3] = &unk_1EEE9C790;
  v6[6] = a4;
  v6[7] = a2;
  v6[4] = &v7;
  v6[5] = a3;
  mach_o::Header::forEachLoadCommand(a1, v6, v11);
  mach_o::Error::~Error(v11);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t mach_o::Header::installName(mach_o::Header *this)
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

void dyld::ThreadLocalVariables::addTermFunc(pthread_key_t *this, void (*a2)(void *), void *a3)
{
  v6 = pthread_getspecific(*this);
  if (!v6)
  {
    v6 = malloc_type_malloc(0x80uLL, 0x10A004075203F2EuLL);
    bzero(v6, 0x80uLL);
    pthread_setspecific(*this, v6);
  }

  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
  v8 = v7[1];
  if (v8 == 7)
  {
    v9 = malloc_type_malloc(0x80uLL, 0x10A004075203F2EuLL);
    bzero(v9, 0x80uLL);
    *v7 = v9;
    v8 = v9[1];
    v7 = v9;
  }

  v7[1] = v8 + 1;
  v10 = &v7[2 * v8];
  v10[2] = a2;
  v10[3] = a3;
}

uint64_t *dyld::ThreadLocalVariables::exit(pthread_key_t *this)
{
  result = pthread_getspecific(*this);
  if (result)
  {
    v3 = result;
    pthread_setspecific(*this, 0);

    return dyld::ThreadLocalVariables::finalizeList(this, v3);
  }

  return result;
}

uint64_t dyldFrameworkIntrospectionVtable(void)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  return dyldFrameworkIntrospectionVtable(void)::vtable;
}

uint64_t _dyld_process_info_create(RemoteBuffer *a1, uint64_t a2, unsigned int *a3)
{
  v6 = dyldFrameworkIntrospectionVtable();
  if (!v6)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v23 = 0;
    if (!a3)
    {
      a3 = &v23;
    }

    *a3 = 0;
    task_info_outCnt = 5;
    v9 = task_info(a1, 0x11u, task_info_out, &task_info_outCnt);
    if (v9)
    {
      v10 = 0;
      v11 = v9 | 0xFF000000;
    }

    else
    {
      if (*task_info_out)
      {
        v12 = 10;
        do
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 0x40000000;
          v16[2] = ___dyld_process_info_create_block_invoke;
          v16[3] = &unk_1EEE9BC88;
          v17 = *task_info_out;
          v18 = v22;
          v19 = a1;
          v16[5] = a2;
          v16[6] = a3;
          v16[4] = &v24;
          withRemoteBuffer(a1, *task_info_out, *&task_info_out[2], 0, a3, v16);
          if (!*a3)
          {
            break;
          }

          v13 = 5;
          if (!task_info(a1, 0x11u, v14, &v13))
          {
            *task_info_out = *v14;
            v22 = v15;
          }

          --v12;
        }

        while (v12);
        v10 = v25[3];
        goto LABEL_17;
      }

      v10 = 0;
      v11 = -33554427;
    }

    *a3 = v11;
LABEL_17:
    _Block_object_dispose(&v24, 8);
    return v10;
  }

  v7 = *(v6 + 248);

  return v7(a1, a2, a3);
}

__n128 _dyld_process_info_get_state(uint64_t a1, __n128 *a2)
{
  v4 = dyldFrameworkIntrospectionVtable();
  if (v4)
  {
    v5 = *(v4 + 256);

    v5(a1, a2);
  }

  else
  {
    v7 = (a1 + *(a1 + 12));
    result = *v7;
    a2[1].n128_u64[0] = v7[1].n128_u64[0];
    *a2 = result;
  }

  return result;
}

__n128 _dyld_process_info_get_cache(uint64_t a1, _OWORD *a2)
{
  v4 = dyldFrameworkIntrospectionVtable();
  if (v4)
  {
    v5 = *(v4 + 264);

    v5(a1, a2);
  }

  else
  {
    v7 = a1 + *(a1 + 4);
    result = *v7;
    v8 = *(v7 + 16);
    *a2 = *v7;
    a2[1] = v8;
  }

  return result;
}

__n128 _dyld_process_info_get_aot_cache(uint64_t a1, __n128 *a2)
{
  v4 = dyldFrameworkIntrospectionVtable();
  if (v4)
  {
    v5 = *(v4 + 272);

    v5(a1, a2);
  }

  else
  {
    v7 = (a1 + *(a1 + 8));
    result = *v7;
    a2[1].n128_u64[0] = v7[1].n128_u64[0];
    *a2 = result;
  }

  return result;
}

uint64_t _dyld_process_info_for_each_image(uint64_t a1, uint64_t a2)
{
  v4 = dyldFrameworkIntrospectionVtable();
  if (v4)
  {
    v5 = *(v4 + 304);

    return v5(a1, a2);
  }

  else
  {

    return dyld_process_info_base::forEachImage(a1, a2);
  }
}

void _dyld_process_info_release(void *a1)
{
  v2 = dyldFrameworkIntrospectionVtable();
  if (v2)
  {
    v3 = *(v2 + 296);

    v3(a1);
  }

  else if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {

    free(a1);
  }
}

uint64_t _dyld_process_info_get_platform(uint64_t a1)
{
  v2 = dyldFrameworkIntrospectionVtable();
  if (!v2)
  {
    return *(a1 + 40);
  }

  v3 = *(v2 + 288);

  return v3(a1);
}

uint64_t dyld_process_create_for_task(lsl::MemoryManager *this, int *a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 8);

    return v4(this, a2);
  }

  else
  {
    v6 = lsl::MemoryManager::memoryManager(this);
    v7 = lsl::MemoryManager::defaultAllocator(v6);
    v8 = lsl::MemoryManager::memoryManager(v7);
    v9 = lsl::MemoryManager::defaultAllocator(v8);
    if (defaultFileManager(void)::onceToken != -1)
    {
      dyld_process_create_for_task_cold_2();
    }

    v10 = defaultFileManager(void)::sFileManager;
    v11 = lsl::Allocator::aligned_alloc(v7, 8uLL, 0x90uLL);

    return dyld4::Atlas::Process::Process(v11, v9, v10, this, a2);
  }
}

void *dyld_process_snapshot_create_for_process(dyld4::Atlas::Process *this, int *a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 32);

    return v4(this, a2);
  }

  else
  {
    dyld4::Atlas::Process::getSnapshot(this, a2, &v8);
    v6 = v8;
    v8 = 0;
    lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v8, v7);
    return v6;
  }
}

uint64_t dyld_process_snapshot_get_shared_cache(dyld4::Atlas::ProcessSnapshot *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 96);

    return v2(this);
  }

  else if (dyld4::Atlas::ProcessSnapshot::valid(this))
  {
    return *dyld4::Atlas::ProcessSnapshot::sharedCache(this);
  }

  else
  {
    return 0;
  }
}

uint64_t dyld_shared_cache_get_base_address(dyld4::Atlas::SharedCache *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 80);

    return v2(this);
  }

  else
  {

    return dyld4::Atlas::SharedCache::rebasedAddress(this);
  }
}

uint64_t dyld_shared_cache_get_mapped_size(dyld4::Atlas::SharedCache *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 88);

    return v2(this);
  }

  else
  {

    return dyld4::Atlas::SharedCache::size(this);
  }
}

__n128 dyld_shared_cache_copy_uuid(dyld4::Atlas::SharedCache *this, __n128 *a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 112);

    v4(this, a2);
  }

  else
  {
    v6 = dyld4::Atlas::SharedCache::uuid(this);
    result = *v6;
    *a2 = *v6;
  }

  return result;
}

void **dyld_process_snapshot_dispose(dyld4::Atlas::ProcessSnapshot *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 48);

    return v2(this);
  }

  else
  {
    result = dyld4::Atlas::ProcessSnapshot::valid(this);
    if (result)
    {
      v5 = this;
      return lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v5, v4);
    }
  }

  return result;
}

void dyld_process_dispose(dyld4::Atlas::Process *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 24);

    v2(this);
  }

  else if (this)
  {
    dyld4::Atlas::Process::~Process(this);

    lsl::Allocator::freeObject(v3, v4);
  }
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
        return off_1EEE9C4F8[v6];
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

const char *__cdecl macho_arch_name_for_cpu_type(cpu_type_t type, cpu_subtype_t subtype)
{
  LODWORD(v4[0]) = type;
  HIDWORD(v4[0]) = subtype;
  v2 = mach_o::Architecture::name(v4);
  if (!strcmp(v2, "unknown"))
  {
    return 0;
  }

  v4[0] = v2;
  v4[1] = strlen(v2);
  if (std::string_view::starts_with[abi:nn200100](v4, "arm64e"))
  {
    return "arm64e";
  }

  else
  {
    return v2;
  }
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

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
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

void dyld::ThreadLocalVariables::findInitialContent(mach_o::Header *a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN4dyld20ThreadLocalVariables18findInitialContentEPKN6mach_o6HeaderERNSt3__14spanIKhLm18446744073709551615EEERb_block_invoke;
  v4[3] = &__block_descriptor_tmp;
  v4[4] = a3;
  v4[5] = a2;
  v4[6] = mach_o::Header::getSlide(a1);
  mach_o::Header::forEachSection(a1, v4);
}

uint64_t ___ZN4dyld20ThreadLocalVariables18findInitialContentEPKN6mach_o6HeaderERNSt3__14spanIKhLm18446744073709551615EEERb_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (v2 != 18)
  {
    if (v2 != 17)
    {
      return result;
    }

    **(result + 32) = 0;
  }

  v3 = *(result + 40);
  v4 = *(a2 + 56);
  if (v3[1])
  {
    v5 = *(a2 + 64) + v4 + *(result + 48) - *v3;
  }

  else
  {
    v6 = *(result + 48) + v4;
    v5 = *(a2 + 64);
    *v3 = v6;
  }

  v3[1] = v5;
  return result;
}

void dyld::ThreadLocalVariables::initializeThunksFromDisk(const mach_o::Header *a1@<X1>, mach_o::Error *a2@<X8>)
{
  v12 = 0;
  if (pthread_key_create(&v12, &_free))
  {
    mach_o::Error::Error(a2, "pthread_key_create() failed");
  }

  else
  {
    v11 = 0uLL;
    v10 = 0;
    dyld::ThreadLocalVariables::findInitialContent(a1, &v11, &v10);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = ___ZN4dyld20ThreadLocalVariables24initializeThunksFromDiskEPKN6mach_o6HeaderE_block_invoke;
    v5[3] = &__block_descriptor_tmp_8;
    v6 = v11;
    v9 = v10;
    v7 = v12;
    v8 = a1;
    dyld::ThreadLocalVariables::forEachThunkSpan(a1, v5, a2);
  }
}

mach_o::Error *___ZN4dyld20ThreadLocalVariables24initializeThunksFromDiskEPKN6mach_o6HeaderE_block_invoke@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mach_o::Error *a4@<X8>)
{
  if (a3)
  {
    v4 = *(result + 5);
    v5 = 24 * a3;
    v6 = (a2 + 20);
    v7 = -16 - a2;
    while (1)
    {
      v8 = *(v6 - 1);
      if (v8 > v4)
      {
        v10 = *(v6 - 1);
        return mach_o::Error::Error(a4, "malformed thread-local, offset=0x%lX is larger than total size=0x%lX");
      }

      if (HIDWORD(v4))
      {
        break;
      }

      v9 = *(result + 6);
      if (HIDWORD(v9))
      {
        v11 = *(result + 6);
        return mach_o::Error::Error(a4, "thread_key_t %lu, larger than uint32_t");
      }

      *(v6 - 5) = _tlv_get_addr;
      *(v6 - 3) = v9;
      *(v6 - 2) = v8;
      *(v6 - 1) = v7 + *(result + 8);
      *v6 = v4;
      if (*(result + 64) == 1)
      {
        *(v6 - 1) = 0;
      }

      v6 += 6;
      v7 -= 24;
      v5 -= 24;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    return mach_o::Error::Error(a4, "unsupported thread-local, larger than 4GB");
  }

  else
  {
LABEL_9:
    *a4 = 0;
  }

  return result;
}

const char *dyld_process_info_base::addInfoFromLoadCommands(const char *this, const mach_header *a2)
{
  v3 = this;
  if (a2->magic == -17958193)
  {
    v4 = 32;
  }

  else
  {
    if (a2->magic != -17958194)
    {
      return this;
    }

    v4 = 28;
  }

  if (a2->ncmds)
  {
    v5 = 0;
    v6 = a2 + v4;
    v7 = a2 + v4 + a2->sizeofcmds;
    v8 = a2 + v4;
    do
    {
      v9 = *(v8 + 1);
      v10 = &v8[v9];
      v12 = v9 >= 8 && v10 <= v7 && v10 >= v6;
      if (!v12)
      {
        return this;
      }

      v13 = *v8;
      if (*v8 == 1)
      {
        v18 = *(v3 + 32);
        v12 = v18 >= 0x18;
        v19 = v18 - 24;
        if (!v12)
        {
          return this;
        }

        *(v3 + 32) = v19;
        this = dyld_process_info_base::copySegmentName(v3, v8 + 8);
        v16 = *(v3 + 88);
        *v16 = this;
        v20 = *(v8 + 3);
        *&v21 = v20;
        *(&v21 + 1) = HIDWORD(v20);
        v17 = v21;
      }

      else
      {
        if (v13 != 25)
        {
          if (v13 == 27)
          {
            **(v3 + 56) = *(v8 + 8);
          }

          goto LABEL_26;
        }

        v14 = *(v3 + 32);
        v12 = v14 >= 0x18;
        v15 = v14 - 24;
        if (!v12)
        {
          return this;
        }

        *(v3 + 32) = v15;
        this = dyld_process_info_base::copySegmentName(v3, v8 + 8);
        v16 = *(v3 + 88);
        *v16 = this;
        v17 = *(v8 + 24);
      }

      *(v16 + 8) = v17;
      *(v3 + 88) = v16 + 24;
      ++*(v3 + 96);
LABEL_26:
      ++v5;
      v8 = v10;
    }

    while (v5 < a2->ncmds);
  }

  return this;
}

uint64_t ___ZNK15DyldSharedCache12forEachRangeEU13block_pointerFvPKcyyjyjjRbEU13block_pointerFvPKS_jE_block_invoke_2(uint64_t a1, int a2, int a3, int a4, int a5, DyldSharedCache *this, char a7, int a8, uint64_t a9)
{
  DyldSharedCache::mappingName(this, a7);
  v10 = *(*(*(a1 + 40) + 8) + 24);
  return (*(*(a1 + 32) + 16))(*(a1 + 32));
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

const char *dyld_process_info_base::copySegmentName(dyld_process_info_base *this, const char *__s1)
{
  v4 = "__TEXT";
  v5 = off_1EEE9BC38;
  do
  {
    if (!strcmp(__s1, v4))
    {
      return v4;
    }

    v6 = *v5++;
    v4 = v6;
  }

  while (v6);

  return dyld_process_info_base::addString(this, __s1, 0x10uLL);
}

uint64_t DyldSharedCache::inCache(DyldSharedCache *this, DyldSharedCache *a2, uint64_t a3, BOOL *a4)
{
  if (a2 >= this)
  {
    v5 = a2 - this + *(this + *(this + 4));
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___ZNK15DyldSharedCache7inCacheEPKvmRb_block_invoke;
    v7[3] = &unk_1EEE9C148;
    v7[4] = &v8;
    v7[5] = v5;
    v7[6] = a3;
    v7[7] = a4;
    DyldSharedCache::forEachRange(this, v7, 0);
    v4 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ___ZNK15DyldSharedCache7inCacheEPKvmRb_block_invoke(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, _BYTE *a9)
{
  v9 = *(result + 40);
  if (v9 >= a3 && *(result + 48) + v9 < a4 + a3)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    **(result + 56) = (a8 & 2) == 0;
    *a9 = 1;
  }

  return result;
}

const char *checkPath(const char *result, uint64_t a2, int a3)
{
  if (*result != 47)
  {
    v3 = result;
    snprintf(sCrashReporterInfo, 0x1000uLL, "dyld: found non-UTF8 string on image[%d]: 0x%llx [ ", a3, a2);
    v4 = strnlen(v3, 8uLL);
    if (v4)
    {
      v5 = v4;
      do
      {
        v7 = *v3++;
        v6 = v7;
        v8 = (v7 >> 4) | 0x30;
        v9 = (v7 >> 4) + 87;
        if (v7 < 0xA0)
        {
          LOBYTE(v9) = v8;
        }

        v10 = v6 & 0xF;
        v11 = v6 & 0xF | 0x30;
        v12 = (v6 & 0xF) + 87;
        __source[0] = v9;
        if (v10 < 0xA)
        {
          v12 = v11;
        }

        __source[1] = v12;
        __source[2] = 0;
        strlcat(sCrashReporterInfo, __source, 0x1000uLL);
        strlcat(sCrashReporterInfo, " ", 0x1000uLL);
        --v5;
      }

      while (v5);
    }

    result = strlcat(sCrashReporterInfo, " ]\n", 0x1000uLL);
    qword_1EA79C5D0 = sCrashReporterInfo;
  }

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

uint64_t lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(a1 + 80);
  if (v2 >= v3)
  {
    v4 = *(a1 + 80);
  }

  else
  {
    v4 = *(a2 + 80);
  }

  if (v4)
  {
    v5 = (a1 + 72);
    v6 = (a2 + 72);
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

uint64_t dyld_process_info_base::addImage(dyld_process_info_base *this, RemoteBuffer *a2, int a3, DyldSharedCache *a4, unint64_t a5, mach_header *a6, DyldSharedCache *a7, const char *__s1, unsigned int a9)
{
  v14 = this;
  v22 = 0;
  v15 = *(this + 7);
  *(v15 + 16) = a6;
  *(v15 + 32) = *(this + 24);
  if (__s1)
  {
    v16 = __s1;
LABEL_3:
    v17 = dyld_process_info_base::addString(this, v16, 0x400uLL);
LABEL_4:
    *(*(v14 + 7) + 24) = v17;
    goto LABEL_5;
  }

  if (a4)
  {
    if (a3)
    {
      if (DyldSharedCache::inCache(a4, a7, 1, &v22))
      {
        v17 = a7;
        if (v22)
        {
          goto LABEL_4;
        }
      }
    }
  }

  if (!a7)
  {
    v16 = "/<unknown>";
    this = v14;
    goto LABEL_3;
  }

  v21 = 0;
  v17 = dyld_process_info_base::copyPath(v14, a2, &v21, a7);
  *(*(v14 + 7) + 24) = v17;
  Commands = v21;
  if (v21)
  {
    return Commands;
  }

LABEL_5:
  checkPath(v17, a7, a9);
  if (a4 && a3 && DyldSharedCache::inCache(a4, a6, 0x8000, &v22))
  {
    dyld_process_info_base::addInfoFromLoadCommands(v14, a6);
LABEL_10:
    Commands = 0;
    v19 = *(v14 + 7);
    *(v19 + 36) = *(v14 + 24) - *(v19 + 32);
    *(v14 + 7) = v19 + 40;
    return Commands;
  }

  Commands = dyld_process_info_base::addInfoFromRemoteLoadCommands(v14, a2, a6);
  if (!Commands)
  {
    goto LABEL_10;
  }

  return Commands;
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
  v3[3] = &unk_1EEE9C120;
  v3[5] = a3;
  v3[6] = v4;
  v3[4] = a2;
  DyldSharedCache::forEachCache(a1, v3);
  _Block_object_dispose(v4, 8);
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

void dyld4::Atlas::Mapper::mapperForSharedCache()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  *&v119[1] = 0;
  v113 = v6;
  Path = dyld4::FileRecord::getPath(v6);
  v119[0] = open(Path, 0);
  if (v119[0] == -1)
  {
    *v5 = 0;
    return;
  }

  v141 = 0;
  v142 = v3;
  v143 = 0;
  v144 = 0;
  lsl::OrderedSet<int,std::less<int>>::insert(&v141, v119, v140);
  if (!v9)
  {
    *__dst = &v141;
    memset(&__dst[8], 0, 32);
    v131 = 0u;
    memset(v132, 0, 25);
    v17 = lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(__dst);
    v18 = *v17;
    v19 = *(v17 + 7);
    v20 = *(v17 + 5);
    v21 = *(v17 + 3);
    v134 = *(v17 + 1);
    v135 = v21;
    v136 = v20;
    v137 = v19;
    v22 = v17[9];
    v23 = *(v17 + 80);
    v133 = v18;
    v138 = v22;
    v139 = v23;
    v131 = 0u;
    memset(v132, 0, 25);
    memset(&__dst[8], 0, 32);
    *__dst = &v141;
    while (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v133, __dst))
    {
      close(*(*(&v134 + v139 - 1) + 4 * *(&v138 + v139 - 1)));
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v133);
    }

    *v5 = 0;
    goto LABEL_77;
  }

  v10 = v9;
  v145 = *(v9 + 88);
  shared_cache_range = _dyld_get_shared_cache_range(&v119[1]);
  v110 = v5;
  v114 = shared_cache_range;
  if (shared_cache_range)
  {
    v12 = 0;
    *__dst = *(shared_cache_range + 88);
    do
    {
      v13 = __dst[v12];
      v14 = *(&v145 + v12);
      v15 = v13 == v14;
    }

    while (v13 == v14 && v12++ != 15);
  }

  else
  {
    v15 = 0;
  }

  if (v2)
  {
    v24 = v2 - *(v10 + 28);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v10 + 4);
  if (v25 <= 0x18B)
  {
    v26 = *(v10 + 6) + 32 * *(v10 + 7);
  }

  else
  {
    if (!*(v10 + 113))
    {
      *__dst = &v141;
      memset(&__dst[8], 0, 32);
      v131 = 0u;
      memset(v132, 0, 25);
      v94 = lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(__dst);
      v95 = *v94;
      v96 = *(v94 + 7);
      v97 = *(v94 + 5);
      v98 = *(v94 + 3);
      v134 = *(v94 + 1);
      v135 = v98;
      v136 = v97;
      v137 = v96;
      v99 = v94[9];
      v100 = *(v94 + 80);
      v133 = v95;
      v138 = v99;
      v139 = v100;
      v131 = 0u;
      memset(v132, 0, 25);
      memset(&__dst[8], 0, 32);
      *__dst = &v141;
      while (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v133, __dst))
      {
        close(*(*(&v134 + v139 - 1) + 4 * *(&v138 + v139 - 1)));
        lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v133);
      }

      goto LABEL_76;
    }

    v26 = *(v10 + 98) + 56 * *(v10 + 99);
  }

  v27 = mmap(0, v26, 1, 2, v119[0], 0);
  v112 = v27;
  if (v27 == -1)
  {
    *__dst = &v141;
    memset(&__dst[8], 0, 32);
    v131 = 0u;
    memset(v132, 0, 25);
    v87 = lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(__dst);
    v88 = *v87;
    v89 = *(v87 + 7);
    v90 = *(v87 + 5);
    v91 = *(v87 + 3);
    v134 = *(v87 + 1);
    v135 = v91;
    v136 = v90;
    v137 = v89;
    v92 = v87[9];
    v93 = *(v87 + 80);
    v133 = v88;
    v138 = v92;
    v139 = v93;
    v131 = 0u;
    memset(v132, 0, 25);
    memset(&__dst[8], 0, 32);
    *__dst = &v141;
    while (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v133, __dst))
    {
      close(*(*(&v134 + v139 - 1) + 4 * *(&v138 + v139 - 1)));
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v133);
    }

LABEL_76:
    *v110 = 0;
    goto LABEL_77;
  }

  v108 = v26;
  v28 = *(v10 + 78);
  v29 = lsl::MemoryManager::memoryManager(v27);
  v115 = lsl::MemoryManager::defaultAllocator(v29);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  if (*(v10 + 79))
  {
    v30 = 0;
    v31 = 0;
    v32 = v112 + v28;
    do
    {
      if (!v15 || (v32[48] & 2) != 0)
      {
        v35 = v119[0];
        v34 = *(v32 + 2);
        v33 = *v32;
      }

      else
      {
        v33 = *v32;
        v34 = *v32 + v114 - *(v10 + 28);
        v35 = -1;
      }

      v36 = *(v32 + 1);
      v37 = v33 + v24;
      lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserve(&v115, v30 + 1);
      v38 = &v116[2 * v117];
      *v38 = v34;
      *(v38 + 1) = v36;
      *(v38 + 2) = v37;
      *(v38 + 6) = v35;
      v30 = ++v117;
      ++v31;
      v32 += 56;
    }

    while (v31 < *(v10 + 79));
  }

  if (v25 <= 0x18B || !*(v10 + 99))
  {
LABEL_63:
    if (v117)
    {
      v71 = v116;
      v72 = 32 * v117;
      do
      {
        v73 = *v71;
        v74 = v71[1];
        v71 += 2;
        *__dst = v73;
        *&__dst[16] = v74;
        lsl::BTree<int,std::less<int>,false>::erase(&v141, &__dst[24]);
        v72 -= 32;
      }

      while (v72);
    }

    *__dst = &v141;
    memset(&__dst[8], 0, 32);
    v131 = 0u;
    memset(v132, 0, 25);
    v75 = lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(__dst);
    v76 = *v75;
    v77 = *(v75 + 7);
    v78 = *(v75 + 5);
    v79 = *(v75 + 3);
    v134 = *(v75 + 1);
    v135 = v79;
    v136 = v78;
    v137 = v77;
    v80 = v75[9];
    v81 = *(v75 + 80);
    v133 = v76;
    v138 = v80;
    v139 = v81;
    v131 = 0u;
    memset(v132, 0, 25);
    memset(&__dst[8], 0, 32);
    *__dst = &v141;
    while (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v133, __dst))
    {
      close(*(*(&v134 + v139 - 1) + 4 * *(&v138 + v139 - 1)));
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v133);
    }

    v82 = munmap(v112, v108);
    v83 = lsl::MemoryManager::memoryManager(v82);
    v84 = lsl::MemoryManager::defaultAllocator(v83);
    v85 = lsl::MemoryManager::memoryManager(v84);
    v86 = lsl::MemoryManager::defaultAllocator(v85);
    lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&,lsl::Vector<dyld4::Atlas::Mapper::Mapping> &>(v84, v86, &v115, v110);
    goto LABEL_69;
  }

  v39 = 0;
  v109 = v112 + *(v10 + 98);
  while (1)
  {
    if (*(v10 + 4) > 0x1C8u)
    {
      v40 = dyld4::FileRecord::getPath(v113);
      v42 = dyld4::Utils::strrstr(v40, ".development", v41);
      if (v42)
      {
        v43 = v42 - v40;
        strncpy(__dst, v40, v42 - v40);
        __dst[v43] = 0;
      }

      else
      {
        strcpy(__dst, v40);
      }

      snprintf(&v133, 0x400uLL, "%s%s");
    }

    else
    {
      dyld4::FileRecord::getPath(v113);
      snprintf(&v133, 0x400uLL, "%s.%u");
    }

    v119[0] = open(&v133, 0);
    lsl::OrderedSet<int,std::less<int>>::insert(&v141, v119, __dst);
    if (v119[0] == -1)
    {
      goto LABEL_63;
    }

    if (!v45)
    {
      v146 = &v141;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      memset(v150, 0, sizeof(v150));
      v64 = lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v146);
      v65 = *v64;
      v66 = *(v64 + 7);
      v67 = *(v64 + 5);
      v68 = *(v64 + 3);
      v124 = *(v64 + 1);
      v125 = v68;
      v126 = v67;
      v127 = v66;
      v69 = v64[9];
      v70 = *(v64 + 80);
      v123 = v65;
      v128 = v69;
      v129 = v70;
      memset(v150, 0, sizeof(v150));
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = &v141;
      while (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v123, &v146))
      {
        close(*(*(&v124 + v129 - 1) + 4 * *(&v128 + v129 - 1)));
        lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v123);
      }

      goto LABEL_62;
    }

    v46 = v45;
    v47 = 0;
    v48 = &v45[*(v45 + 78)];
    v49 = *(v45 + 88);
    v50 = v112 + *(v10 + 98);
    v51 = &v50[56 * v39];
    v52 = &v50[24 * v39];
    if (*(v10 + 4) < 0x1C9u)
    {
      v51 = v52;
    }

    v121 = *v51;
    v122 = v49;
    v120 = v121;
    do
    {
      v53 = *(&v122 + v47);
      v54 = *(&v120 + v47);
    }

    while (v53 == v54 && v47++ != 15);
    if (v53 != v54)
    {
      break;
    }

    v111 = v39;
    if (*(v45 + 79))
    {
      v56 = 0;
      while (v15)
      {
        v57 = v117;
        if ((v48[48] & 2) != 0)
        {
          goto LABEL_57;
        }

        v58 = *v48;
        v59 = *v48 + v114 - *(v10 + 28);
        v60 = -1;
LABEL_58:
        v61 = *(v48 + 1);
        v62 = v58 + v24;
        lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserve(&v115, v57 + 1);
        v63 = &v116[2 * v117];
        *v63 = v59;
        *(v63 + 1) = v61;
        *(v63 + 2) = v62;
        *(v63 + 6) = v60;
        ++v117;
        ++v56;
        v48 += 56;
        if (v56 >= *(v46 + 79))
        {
          goto LABEL_59;
        }
      }

      v57 = v117;
LABEL_57:
      v60 = v119[0];
      v59 = *(v48 + 2);
      v58 = *v48;
      goto LABEL_58;
    }

LABEL_59:
    v39 = v111;
LABEL_62:
    if (++v39 >= *(v10 + 99))
    {
      goto LABEL_63;
    }
  }

  v146 = &v141;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  memset(v150, 0, sizeof(v150));
  v101 = lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v146);
  v102 = *v101;
  v103 = *(v101 + 7);
  v104 = *(v101 + 5);
  v105 = *(v101 + 3);
  v124 = *(v101 + 1);
  v125 = v105;
  v126 = v104;
  v127 = v103;
  v106 = v101[9];
  v107 = *(v101 + 80);
  v123 = v102;
  v128 = v106;
  v129 = v107;
  v149 = 0u;
  memset(v150, 0, sizeof(v150));
  v147 = 0u;
  v148 = 0u;
  v146 = &v141;
  while (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v123, &v146))
  {
    close(*(*(&v124 + v129 - 1) + 4 * *(&v128 + v129 - 1)));
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(&v123);
  }

  *v110 = 0;
LABEL_69:
  if (v116)
  {
    lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(&v115, 0);
  }

LABEL_77:
  if (v141)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::deallocate(v141, v142);
  }
}

const char *dyld4::Utils::strrstr(dyld4::Utils *this, const char *__s, const char *a3)
{
  v5 = strlen(__s);
  v6 = strlen(this);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  for (i = this + v6; strncmp(i, __s, v5); --i)
  {
    if (!--v7)
    {
      return 0;
    }
  }

  return i;
}

void lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserve(uint64_t a1, unint64_t a2)
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

    lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserveExact(a1, v2);
  }
}

uint64_t lsl::BTree<int,std::less<int>,false>::insert_internal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v17 = a1;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    result = lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(a2, &v17);
    if (result && (v9 = *(a2 + 80), *a3 >= *(*(a2 + 8 + 8 * (v9 - 1)) + 4 * *(a2 + v9 - 1 + 72))))
    {
      v13 = 0;
      *a4 = *a2;
      v15 = *(a2 + 24);
      *(a4 + 8) = *(a2 + 8);
      *(a4 + 24) = v15;
      v16 = *(a2 + 56);
      *(a4 + 40) = *(a2 + 40);
      *(a4 + 56) = v16;
      *(a4 + 72) = *(a2 + 72);
      *(a4 + 80) = v9;
    }

    else
    {
      v17 = a1;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      memset(v21, 0, sizeof(v21));
      if (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(a2, &v17) && *(a2 + 80) == *(a1 + 32))
      {
        lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion(a2);
        v10 = *(a2 + 80) - 1;
        v11 = *(a2 + v10 + 72);
      }

      else
      {
        lsl::BTree<int,std::less<int>,false>::const_iterator::operator--(a2);
        lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion(a2);
        v14 = *(a2 + 80) + a2;
        v11 = *(v14 + 71) + 1;
        *(v14 + 71) = v11;
        v10 = *(a2 + 80) - 1;
      }

      result = lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert(*(a2 + 8 + 8 * v10), v11, a3);
      ++*(a1 + 24);
      *a4 = *a2;
      *(a4 + 8) = *(a2 + 8);
      *(a4 + 24) = *(a2 + 24);
      *(a4 + 40) = *(a2 + 40);
      *(a4 + 56) = *(a2 + 56);
      *(a4 + 72) = *(a2 + 72);
      *(a4 + 80) = *(a2 + 80);
      v13 = 1;
    }
  }

  else
  {
    v12 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    v12[248] = 0x80;
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
    *(v12 + 30) = 0;
    *a1 = v12;
    v13 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v12;
    *(a2 + 80) = 1;
    result = lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert(v12, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 80) = *(a2 + 80);
  }

  *(a4 + 88) = v13;
  return result;
}

double lsl::OrderedSet<int,std::less<int>>::insert@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a2;
  lsl::BTree<int,std::less<int>,false>::const_iterator::const_iterator(v18, a1, &v9);
  lsl::BTree<int,std::less<int>,false>::insert_internal(a1, v18, &v9, &v10);
  v5 = v10;
  *(a3 + 8) = v11;
  *(a3 + 24) = v12;
  *(a3 + 40) = v13;
  result = *&v14;
  *(a3 + 56) = v14;
  v7 = v15;
  v8 = v16;
  *a3 = v5;
  *(a3 + 72) = v7;
  *(a3 + 80) = v8;
  *(a3 + 88) = v17;
  return result;
}

uint64_t lsl::BTree<int,std::less<int>,false>::const_iterator::const_iterator(uint64_t result, uint64_t *a2, _DWORD *a3)
{
  *(result + 8) = 0u;
  v3 = result + 8;
  *result = a2;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 65) = 0u;
  if (*(a2 + 32))
  {
    v4 = 0;
    v5 = *a2;
    v6 = result + 72;
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
          v10 = &v8[v7 >> 1];
          v12 = *v10;
          v11 = v10 + 1;
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
        v8 = (v5 + 4 * v7);
      }

      v13 = v8 - v5;
      v14 = (v8 - v5) >> 2;
      *(v6 + v4) = v14;
      v15 = *(v3 + 8 * v4);
      if ((*(v15 + 248) & 0x7F) != v14 && *(v15 + (v13 & 0x3FC)) < *a3)
      {
        *(result + 80) = v4 + 1;
        return result;
      }

      v16 = *(a2 + 32);
      if (v4 + 1 != v16)
      {
        if ((*(v15 + 248) & 0x80) != 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v5 = *(v15 + 8 * v14 + 80);
      }

      ++v4;
    }

    while (v4 < v16);
    for (*(result + 80) = v16; v16; *(result + 80) = v16)
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

unsigned __int8 *lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[80];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 248) >= 0)
  {
    v4 = 20;
  }

  else
  {
    v4 = 62;
  }

  if ((*(*&result[8 * v1] + 248) & 0x7F) == v4)
  {
    if (!result[80])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v3[v5] + 248) >= 0)
      {
        v7 = 20;
      }

      else
      {
        v7 = 62;
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
        v8 = 20;
      }

      else
      {
        v8 = 62;
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
        *(result + 10) = v9;
        **v2 = result;
        if (v2[80] && (result = memmove(v2 + 73, v2 + 72, v2[80]), v2[80]))
        {
          result = memmove(v3 + 1, v3, 8 * v2[80]);
          LOBYTE(v1) = v2[80] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[72] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[80] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 72;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild(v3[v12], v11[v12], *(*v2 + 8));
        v14 = v3[v12];
        if (*(v14 + 248) < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 80);
        v17 = v2[v12 + 73];
        if (v17 > (*(v16 + 248) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 73] = v17 + (~*(v16 + 248) | 0x80);
          v19 = v3[v12];
          if (*(v19 + 248) < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 80);
        }

        ++v12;
      }

      while (v13 + 2 < v2[80]);
    }
  }

  return result;
}

unsigned __int8 *lsl::BTree<int,std::less<int>,false>::const_iterator::operator--(unsigned __int8 *result)
{
  v1 = result[80];
  v2 = *result;
  if (result[80])
  {
    if (v1 == *(*result + 32))
    {
      v3 = result + 72;
      v4 = v1 - 1;
      v5 = &result[v1 + 71];
      v6 = *v5;
      if (!result[(v1 - 1) + 72])
      {
        if (!*v5)
        {
          do
          {
            LODWORD(v1) = v1 - 1;
            result[80] = v1;
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
      v16 = result + 72;
      do
      {
        v17 = *&v15[8 * v1 - 8];
        if (*(v17 + 248) < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v18 = *(v17 + 8 * v16[v1 - 1] + 80);
        *&v15[8 * v1] = v18;
        v16[v1] = *(v18 + 248) & 0x7F;
        LOBYTE(v1) = result[80] + 1;
        result[80] = v1;
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
        result[v7 + 72] = *(v8 + 248) & 0x7F;
        v10 = result[80];
        v11 = *(v2 + 32);
        if (v10 + 1 != v11)
        {
          v12 = *&v9[8 * v10];
          v13 = *(v12 + 248);
          if (v13 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v8 = *(v12 + 8 * v13 + 80);
        }

        v7 = v10 + 1;
        result[80] = v7;
      }

      while (v11 > v7);
      v14 = v7 - 1;
    }

    else
    {
      v14 = -1;
    }

    v5 = &result[v14 + 72];
    v6 = *v5;
  }

  *v5 = v6 - 1;
  return result;
}

void *anonymous namespace::cacheFilePeek(_anonymous_namespace_ *this, void *a2, unsigned __int8 *a3)
{
  v4 = pread(this, a2, 0x4000uLL, 0);
  result = 0;
  if (v4 == 0x4000)
  {
    if (!strncmp(a2, "dyld_v1", 7uLL))
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert(char *result, unsigned int a2, _DWORD *a3)
{
  v3 = result[248];
  if (v3 >= 0)
  {
    v4 = 20;
  }

  else
  {
    v4 = 62;
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
  if (4 * a2 != 4 * (v3 & 0x7F))
  {
    result = memmove(&result[4 * a2 + 4], &result[4 * a2], 4 * (v3 & 0x7F) - 4 * a2);
    LOBYTE(v3) = v7[248];
  }

  v7[248] = v3 + 1;
  *&v7[4 * a2] = *a3;
  return result;
}

void lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 32 * a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = &v4[v7];
          v10 = (*(a1 + 8) + v7);
          v11 = v10[1];
          *v9 = *v10;
          *(v9 + 1) = v11;
          v6 = *(a1 + 16);
          v7 += 32;
        }
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        lsl::Allocator::free(*a1, v12);
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

void *lsl::Allocator::aligned_alloc(lsl::Allocator *this, unint64_t a2, unint64_t a3)
{
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    lsl::Allocator::aligned_alloc();
  }

  v4 = 16;
  if (a2 <= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = a2;
  }

  if (a3 > 0x10)
  {
    v4 = a3;
  }

  return malloc_type_aligned_alloc(v5, (v5 + v4 - 1) & -v5, 0xC4FC5F7FuLL);
}

void lsl::Allocator::free(lsl::Allocator *this, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

char *lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator *this)
{
  v3 = *(a1 + 248);
  if (v3 < 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 248);
  if (v4 >= 0x14u)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v6 = a1 + 80;
  v7 = (a1 + 80 + 8 * a2);
  v8 = *(*v7 + 248);
  v9 = v8;
  v10 = v8 & 0x7F;
  if (v8 >= 0)
  {
    v11 = 20;
  }

  else
  {
    v11 = 62;
  }

  if (v10 != v11)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  v13 = a2;
  if (v9 >= 0)
  {
    v14 = 10;
  }

  else
  {
    v14 = 31;
  }

  if (4 * a2 != 4 * v3)
  {
    memmove((a1 + 4 * a2 + 4), (a1 + 4 * a2), 4 * v3 - 4 * a2);
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
  *(a1 + 4 * v13) = *(*v7 + 4 * v14);
  result = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v19 = result;
  v20 = *v7;
  v21 = *(*v7 + 248);
  result[248] = v21 & 0x80;
  if (v21 < 0)
  {
    *(result + 30) = 0;
    v22 = 0uLL;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
  }

  else
  {
    v22 = 0uLL;
  }

  *(result + 3) = v22;
  *(result + 4) = v22;
  *(result + 1) = v22;
  *(result + 2) = v22;
  *result = v22;
  if (*(a1 + 248) < 0)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
  }

  v23 = v10 + ~v14;
  v7[1] = result;
  if (v23)
  {
    result = memmove(result, (v20 + 4 * v14 + 4), 4 * v23);
    v20 = *v7;
  }

  v24 = *(v20 + 248);
  if ((v24 & 0x80000000) == 0)
  {
    if (v19[248] < 0)
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
    }

    result = memmove(v19 + 80, (v20 + 8 * v14 + 88), 8 * v23 + 8);
    v20 = *v7;
    LOBYTE(v24) = *(*v7 + 248);
  }

  *(v20 + 248) = v24 + ~v23;
  v25 = v19[248] + v23;
  v19[248] = v25;
  if (v25 >= 0)
  {
    v26 = 20;
  }

  else
  {
    v26 = 62;
  }

  if ((v25 & 0x7F) == v26 || ((v27 = *(v20 + 248), v28 = v27, v29 = v27 & 0x7F, v28 >= 0) ? (v30 = 20) : (v30 = 62), v29 == v30))
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild();
  }

  return result;
}

uint64_t ___ZNK15DyldSharedCache12forEachRangeEU13block_pointerFvPKcyyjyjjRbEU13block_pointerFvPKS_jE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK15DyldSharedCache12forEachRangeEU13block_pointerFvPKcyyjyjjRbEU13block_pointerFvPKS_jE_block_invoke_2;
  v8[3] = &unk_1EEE9C0F8;
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

void ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_6418dyld_image_info_64EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke(uint64_t a1, uint64_t a2)
{
  ProcessDyldInfo = getProcessDyldInfo();
  if (!ProcessDyldInfo || (v5 = *(a1 + 40), !*(v5 + 176)) || !*(ProcessDyldInfo + 176) || (*(v5 + 24) & 1) != 0 || (*(ProcessDyldInfo + 24) & 1) != 0 || (*(ProcessDyldInfo + 160) == *(v5 + 160) ? (v6 = *(ProcessDyldInfo + 168) == *(v5 + 168)) : (v6 = 0), !v6))
  {
    v7 = 0;
LABEL_11:
    v8 = *(a1 + 80) + 1;
    v9 = v8;
    goto LABEL_12;
  }

  v41 = *(ProcessDyldInfo + 152);
  v42 = *(v5 + 152);
  v7 = v41 == v42;
  v43 = *(a1 + 48);
  if (v41 != v42 || v43 == 0)
  {
    goto LABEL_11;
  }

  v49 = 0;
  if (*(a1 + 80))
  {
    v45 = 0;
    v9 = 0;
    v46 = (a2 + 8);
    do
    {
      v47 = *v46;
      v46 += 3;
      if (!DyldSharedCache::inCache(v43, v47, 1, &v49) || !v49)
      {
        ++v9;
      }

      ++v45;
      v48 = *(a1 + 80);
    }

    while (v45 < v48);
    v8 = v48 + 1;
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  v7 = 1;
LABEL_12:
  v10 = *(*(a1 + 40) + 324);
  if (v10 >= 0x2000)
  {
    v11 = 458752;
  }

  else
  {
    v11 = 56 * v10;
  }

  v12 = ((v9 << 10) | 0xC0) + 40 * v8 + 240 * v8;
  v13 = malloc_type_malloc(v12 + v11, 0xD86E44E9uLL);
  if (!v13)
  {
    **(a1 + 56) = 3;
    v38 = *(*(a1 + 32) + 8);
    v14 = *(v38 + 40);
    *(v38 + 40) = 0;
    if (!v14)
    {
      return;
    }

    goto LABEL_51;
  }

  v14 = v13;
  v15 = 40 * v8;
  dyld_process_info_base::dyld_process_info_base(v13, *(*(a1 + 40) + 320), v8, *(*(a1 + 40) + 324), v12 + v11);
  v18 = *(v17 + 32);
  if (v18 <= 0xBF)
  {
    v19 = v18 >= v15;
  }

  else
  {
    v18 -= 192;
    v19 = 1;
  }

  if (v19)
  {
    if (v18 < v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = 40 * v8;
    }

    *(v14 + 4) = v18 - v20;
  }

  v21 = 0;
  v22 = v14 + *(v14 + 1);
  *v22 = *(*(a1 + 40) + 160);
  v23 = *(a1 + 40);
  *(v22 + 2) = *(v23 + 176);
  v22[25] = *(v23 + 24);
  v22[24] = 1;
  do
  {
    if (v22[v21])
    {
      v22[24] = 0;
    }

    ++v21;
  }

  while (v21 != 16);
  v24 = v14 + *(v14 + 2);
  *v24 = *(v23 + 352);
  v25 = *(a1 + 40);
  *(v24 + 2) = *(v25 + 344);
  v26 = v14 + *(v14 + 3);
  *v26 = *(a1 + 64);
  v27 = *(v25 + 112);
  *(v26 + 2) = v8;
  *(v26 + 3) = v27 + 1;
  v26[16] = 16;
  if (*(v25 + 25))
  {
    if (v27 == *(a1 + 80))
    {
      v28 = 48;
    }

    else
    {
      v28 = 80;
    }

    v26[16] = v28;
    v25 = *(a1 + 40);
  }

  if (*(v25 + 56))
  {
    if (*(v25 + 64))
    {
      v29 = 32;
    }

    else
    {
      v29 = 96;
    }

    v26[16] = v29;
  }

  v30 = *(v25 + 192);
  if (v30)
  {
    v31 = dyld_process_info_base::addDyldImage(v14, *(a1 + 84), *(v25 + 32), v30, 0);
    v32 = *(a1 + 56);
    *v32 = v31;
    if (v31)
    {
      goto LABEL_47;
    }
  }

  if (*(a1 + 80))
  {
    v33 = 0;
    v34 = (a2 + 8);
    do
    {
      v35 = dyld_process_info_base::addImage(v14, *(a1 + 84), v7, *(a1 + 48), v16, *(v34 - 1), *v34, 0, v33);
      **(a1 + 56) = v35;
      if (v35)
      {
        goto LABEL_48;
      }

      v34 += 3;
    }

    while (++v33 < *(a1 + 80));
  }

  if (*(v14 + 13) < *(v14 + 11))
  {
    v32 = *(a1 + 56);
LABEL_47:
    *v32 = 5;
LABEL_48:
    v36 = *(*(a1 + 32) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = 0;
    if (v37)
    {
      free(v37);
    }

    goto LABEL_51;
  }

  v39 = *(*(a1 + 32) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v14;
  v14 = v40;
  if (v40)
  {
LABEL_51:
    free(v14);
  }
}

uint64_t dyld_process_info_base::forEachImage(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2 < *(result + 56))
  {
    v4 = result;
    v5 = qword_1EA79C5B8;
    do
    {
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (!v6 || !v7)
      {
        if (v7)
        {
          v8 = *(v2 + 24);
        }

        else
        {
          v8 = "(null)";
        }

        snprintf(__str, 0x400uLL, "Bad dyld_proces_info image info for\n\tplatform: %u\n\taddress = 0x%llx\n\tpath = %s\n", *(v4 + 40), *(v2 + 16), v8);
        qword_1EA79C5B8 = __str;
        v6 = *(v2 + 16);
        v7 = *(v2 + 24);
      }

      result = (*(a2 + 16))(a2, v6, v2, v7);
      qword_1EA79C5B8 = v5;
      v2 += 40;
    }

    while (v2 < *(v4 + 56));
  }

  return result;
}

uint64_t dyld_process_info_base::copyPath(dyld_process_info_base *this, RemoteBuffer *a2, int *a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = &unk_1801109D5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN22dyld_process_info_base8copyPathEjPiy_block_invoke;
  v6[3] = &unk_1EEE9BBC8;
  v6[4] = &v7;
  v6[5] = this;
  withRemoteBuffer(a2, a4, 0x400uLL, 1, a3, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t dyld_process_info_base::addInfoFromRemoteLoadCommands(dyld_process_info_base *this, RemoteBuffer *a2, uint64_t a3)
{
  v19 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZN22dyld_process_info_base29addInfoFromRemoteLoadCommandsEjy_block_invoke;
  v10[3] = &unk_1EEE9BBF0;
  v10[6] = this;
  v10[7] = a3;
  v10[4] = &v15;
  v10[5] = &v11;
  withRemoteBuffer(a2, a3, 0x1000uLL, 1, &v19, v10);
  if (v12[3])
  {
    goto LABEL_4;
  }

  v6 = v19;
  if (!v19)
  {
    v7 = v16[3];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN22dyld_process_info_base29addInfoFromRemoteLoadCommandsEjy_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_4;
    v9[4] = this;
    v9[5] = a3;
    withRemoteBuffer(a2, a3, v7, 0, &v19, v9);
LABEL_4:
    v6 = v19;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t dyld_process_info_base::addDyldImage(dyld_process_info_base *this, RemoteBuffer *a2, uint64_t a3, uint64_t a4, const char *__s1)
{
  v13 = 0;
  v9 = *(this + 7);
  *(v9 + 16) = a3;
  *(v9 + 32) = *(this + 24);
  if (__s1)
  {
    v10 = dyld_process_info_base::addString(this, __s1, 0x400uLL);
    *(*(this + 7) + 24) = v10;
  }

  else
  {
    v10 = dyld_process_info_base::copyPath(this, a2, &v13, a4);
    *(*(this + 7) + 24) = v10;
    result = v13;
    if (v13)
    {
      return result;
    }
  }

  checkPath(v10, a4, -1);
  result = dyld_process_info_base::addInfoFromRemoteLoadCommands(this, a2, a3);
  if (!result)
  {
    v12 = *(this + 7);
    *(v12 + 36) = *(this + 24) - *(v12 + 32);
    *(this + 7) = v12 + 40;
  }

  return result;
}

void withRemoteBuffer(RemoteBuffer *a1, uint64_t a2, mach_vm_size_t a3, int a4, _DWORD *a5, uint64_t a6)
{
  RemoteBuffer::create(a1, a2, a3, a4, v10);
  v8 = v11;
  if (a5)
  {
    *a5 = v11;
  }

  v9 = v10[0];
  if (v8)
  {
    if (!v10[0])
    {
      return;
    }
  }

  else
  {
    (*(a6 + 16))(a6, v10[0], v10[1]);
    if (!v9)
    {
      return;
    }
  }

  free(v9);
}

void *___ZN22dyld_process_info_base8copyPathEjPiy_block_invoke(uint64_t a1, const char *a2, size_t a3)
{
  result = dyld_process_info_base::addString(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const char *___ZN22dyld_process_info_base29addInfoFromRemoteLoadCommandsEjy_block_invoke(const char *result, const mach_header *a2, unint64_t a3)
{
  if (a3 >= 0x1D)
  {
    v3 = result;
    result = *(result + 6);
    *(*(*(v3 + 4) + 8) + 24) = a2->sizeofcmds + 28;
    if (*(*(*(v3 + 4) + 8) + 24) <= a3)
    {
      result = dyld_process_info_base::addInfoFromLoadCommands(result, a2);
      *(*(*(v3 + 5) + 8) + 24) = 1;
    }
  }

  return result;
}

void *RemoteBuffer::map(vm_map_read_t src_task, uint64_t a2, mach_vm_size_t a3)
{
  cur_protection = 0;
  v13 = 1;
  if (!a3)
  {
    return 0;
  }

  target_address = 0;
  if (mach_vm_remap_new(mach_task_self_, &target_address, a3, 0, 97, src_task, a2 & 0xFFFFFFFFFFFFFFLL, 1, &cur_protection, &v13, 2u))
  {
    return 0;
  }

  v4 = malloc_type_malloc(a3 + 1, 0x92509850uLL);
  if (v4)
  {
    if (deviceSupportsMTE())
    {
      __asm { MSR             TCO, #1 }
    }

    memcpy(v4, target_address, a3);
    if (deviceSupportsMTE())
    {
      __asm { MSR             TCO, #0 }
    }

    *(v4 + a3) = 0;
    MEMORY[0x1865C8D90](mach_task_self_, target_address, a3);
  }

  else
  {
    MEMORY[0x1865C8D90](mach_task_self_, target_address, a3);
  }

  return v4;
}

void *RemoteBuffer::create@<X0>(RemoteBuffer *this@<X0>, uint64_t a2@<X1>, mach_vm_size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = this;
  result = RemoteBuffer::map(this, a2, a3);
  if (v11)
  {
    if (!a4 || (result = RemoteBuffer::map(v8, a2, 4096 - (a2 & 0xFFF)), v11))
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = v11;
      return result;
    }

    *a5 = result;
    *(a5 + 8) = 4096 - (a2 & 0xFFF);
  }

  else
  {
    *a5 = result;
    *(a5 + 8) = a3;
  }

  *(a5 + 16) = 0;
  return result;
}

void dyld_process_info_base::dyld_process_info_base(dyld_process_info_base *this, int a2, int a3, int a4, uint64_t a5)
{
  *this = xmmword_180110230;
  *(this + 4) = 192;
  v5 = 40 * a3 + 192;
  if ((40 * a3) >= 0xFFFFFF40)
  {
    dyld_process_info_base::dyld_process_info_base();
  }

  *(this + 5) = v5;
  v6 = v5 + 56 * a4;
  if (__CFADD__(v5, 56 * a4))
  {
    dyld_process_info_base::dyld_process_info_base();
  }

  *(this + 6) = v6;
  *(this + 4) = a5;
  *(this + 10) = a2;
  *(this + 6) = this + 192;
  *(this + 7) = this + 192;
  v7 = this + v5;
  *(this + 8) = v7;
  *(this + 9) = v7;
  v8 = this + v6;
  *(this + 10) = v8;
  *(this + 11) = v8;
  *(this + 24) = 0;
  *(this + 13) = this + a5;
}

void *dyld_process_info_base::addString(dyld_process_info_base *this, const char *__s1, size_t __n)
{
  v5 = strnlen(__s1, __n);
  v6 = v5 + 1;
  v7 = *(this + 4);
  v8 = v7 >= v5 + 1;
  v9 = v7 - (v5 + 1);
  if (!v8)
  {
    return &unk_1801109D5;
  }

  *(this + 4) = v9;
  v11 = (*(this + 13) + ~v5);
  *(this + 13) = v11;
  strlcpy(v11, __s1, v6);
  return *(this + 13);
}

void dyld_process_info_base::make<dyld_all_image_infos_64,dyld_image_info_64>(RemoteBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3002000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  if (*a2 <= 0xEu)
  {
    v7 = 5;
    goto LABEL_3;
  }

  v10 = *(a2 + 184);
  v11 = *(a2 + 8);
  if (!v10 || v11)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (a3 && v10 == a3)
    {
      *a4 = 0;
      goto LABEL_4;
    }

    if (!v11)
    {
      usleep(0xC350u);
      v7 = 19;
      goto LABEL_3;
    }

    if (*(a2 + 4) >= 0x2000u)
    {
      v18 = 0x2000;
    }

    else
    {
      v18 = *(a2 + 4);
    }

    v29 = 0;
    shared_cache_range = _dyld_get_shared_cache_range(&v29);
    v26[0] = _NSConcreteStackBlock;
    v20 = v29 + shared_cache_range;
    v26[1] = 0x40000000;
    v26[2] = ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_6418dyld_image_info_64EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke;
    v26[3] = &unk_1EEE9BD50;
    if (!shared_cache_range)
    {
      v20 = 0;
    }

    v26[6] = shared_cache_range;
    v26[7] = a4;
    v26[4] = &v30;
    v26[5] = a2;
    v27 = v18;
    v28 = a1;
    v26[8] = v10;
    v26[9] = v20;
    withRemoteBuffer(a1, v11, (24 * v18), 0, a4, v26);
    v21 = *(a2 + 328);
    v16 = v31;
    if (v21 && v31[5])
    {
      v22 = *(a2 + 324);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 0x40000000;
      v24[2] = ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_6418dyld_image_info_64EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke_2;
      v24[3] = &unk_1EEE9BD78;
      v25 = v22;
      v24[4] = &v30;
      v24[5] = a4;
      withRemoteBuffer(a1, v21, 56 * v22, 0, a4, v24);
      v16 = v31;
    }

    v17 = v16[5];
    goto LABEL_29;
  }

  v12 = *(a2 + 176);
  if (!v12 || *(a2 + 32) <= v12)
  {
    goto LABEL_16;
  }

LABEL_9:
  dyld_process_info_base::makeSuspended<dyld_all_image_infos_64>(a1, a2, *(a2 + 184), a4, &v29);
  v13 = v29;
  v29 = 0;
  v14 = v31[5];
  v31[5] = v13;
  if (v14)
  {
    free(v14);
    v15 = v29;
    v29 = 0;
    if (v15)
    {
      free(v15);
    }
  }

  v16 = v31;
  v17 = v31[5];
  if (!v17)
  {
    usleep(0xC350u);
    if (*a4)
    {
      goto LABEL_4;
    }

    v7 = 6;
LABEL_3:
    *a4 = v7;
LABEL_4:
    *a5 = 0;
    goto LABEL_30;
  }

LABEL_29:
  v16[5] = 0;
  *a5 = v17;
LABEL_30:
  _Block_object_dispose(&v30, 8);
  v23 = v35;
  v35 = 0;
  if (v23)
  {
    free(v23);
  }
}

void ___dyld_process_info_create_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72))
  {
    dyld_process_info_base::make<dyld_all_image_infos_64,dyld_image_info_64>(*(a1 + 76), a2, *(a1 + 40), *(a1 + 48), &v6);
  }

  else
  {
    dyld_process_info_base::make<dyld_all_image_infos_32,dyld_image_info_32>(*(a1 + 76), a2, *(a1 + 40), *(a1 + 48), &v6);
  }

  v3 = v6;
  if (v6)
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      free(v5);
      v4 = *(*(a1 + 32) + 8);
    }

    *(v4 + 24) = v3;
  }
}

__n128 lsl::BTree<int,std::less<int>,false>::find@<Q0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  lsl::BTree<int,std::less<int>,false>::const_iterator::const_iterator(&v16, a1, a2);
  v11 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  if (lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v16, &v11) && (v7 = v21, *a2 >= *(*(v17 + v21 - 1) + 4 * *(&v20 + v21 - 1))))
  {
    v8 = v20;
    *a3 = v16;
    v9 = v17[1];
    *(a3 + 8) = v17[0];
    *(a3 + 24) = v9;
    result = v18;
    v10 = v19;
    *(a3 + 40) = v18;
    *(a3 + 56) = v10;
    *(a3 + 72) = v8;
    *(a3 + 80) = v7;
  }

  else
  {
    *a3 = a1;
    result.n128_u64[0] = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 65) = 0u;
  }

  return result;
}

char *lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 248);
  if ((v2 & 0x80000000) == 0)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase();
  }

  if ((v2 & 0x7Fu) <= a2)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase();
  }

  result = (a1 + 4 * a2);
  v5 = (a1 + 4 * (v2 & 0x7F));
  if (result + 4 != v5)
  {
    result = memmove(result, result + 4, v5 - (result + 4));
    LOBYTE(v2) = *(a1 + 248);
  }

  *(a1 + 248) = v2 - 1;
  return result;
}

__n128 lsl::BTree<int,std::less<int>,false>::erase@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 80);
  v7 = *(a1 + 32);
  if (v6 == v7)
  {
    v8 = v6 - 1;
  }

  else
  {
    v9 = *(a2 + 8 + 8 * (v6 - 1));
    v10 = *(a2 + 72 + v6 - 1);
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(a2);
    v8 = *(a2 + 80) - 1;
    v11 = *(a2 + 8 + 8 * v8);
    v12 = *(a2 + 72 + v8);
    v13 = *(v9 + 4 * v10);
    *(v9 + 4 * v10) = *(v11 + 4 * v12);
    *(v11 + 4 * v12) = v13;
  }

  v14 = *(a2 + 8 + 8 * v8);
  if ((*(v14 + 248) & 0x80000000) == 0)
  {
    lsl::BTree<int,std::less<int>,false>::erase();
  }

  lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase(v14, *(a2 + v8 + 72));
  lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure(a2);
  if (v6 != v7)
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::operator--(a2);
  }

  --*(a1 + 24);
  v15 = *(a2 + 24);
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = v15;
  result = *(a2 + 40);
  v17 = *(a2 + 56);
  *(a3 + 40) = result;
  *a3 = *a2;
  *(a3 + 56) = v17;
  *(a3 + 72) = *(a2 + 72);
  *(a3 + 80) = *(a2 + 80);
  return result;
}

uint64_t lsl::BTree<int,std::less<int>,false>::erase(uint64_t *a1, _DWORD *a2)
{
  lsl::BTree<int,std::less<int>,false>::find(a1, a2, &v10);
  v5 = a1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v9, 0, 25);
  if (!lsl::BTree<int,std::less<int>,false>::const_iterator::operator<=>(&v10, &v5))
  {
    return 0;
  }

  v5 = v10;
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9[0] = v14;
  *&v9[1] = v15;
  BYTE8(v9[1]) = v16;
  lsl::BTree<int,std::less<int>,false>::erase(a1, &v5, &v4);
  return 1;
}

void lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure(_BYTE *a1)
{
  v1 = a1[80];
  v2 = *a1;
  if (v1 != *(*a1 + 32))
  {
    lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure();
  }

  if (v1 >= 2)
  {
    v4 = 0;
    v5 = a1 + 8;
    v6 = a1 + 72;
    do
    {
      v7 = (v1 - v4 - 2);
      v8 = v7 + 1;
      if (*(*&v5[8 * v7 + 8] + 248) >= 0)
      {
        v9 = 10;
      }

      else
      {
        v9 = 31;
      }

      if ((*(*&v5[8 * v7 + 8] + 248) & 0x7Fu) >= v9)
      {
        break;
      }

      v10 = v6[v7];
      v11 = *&v5[8 * v7];
      v12 = *(v11 + 248);
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

        v18 = *(*(v11 + 8 * v10 + 88) + 248);
        v19 = v18 & 0x7F;
        if (v18 >= 0)
        {
          v20 = -10;
        }

        else
        {
          v20 = -31;
        }

        v13 = (v20 + v19);
        if (v6[v7])
        {
LABEL_10:
          if (v12 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v14 = *(*(v11 + 8 * v10 + 72) + 248);
          v15 = v14 & 0x7F;
          if (v14 >= 0)
          {
            v16 = -10;
          }

          else
          {
            v16 = -31;
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
            v6[v8] += (*(*(v11 + 8 * (v10 - 1) + 80) + 248) & 0x7F) + 1;
            lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge(*&v5[8 * v7], *(v2 + 8), (v10 - 1));
            v23 = *&v5[8 * v7];
            if (*(v23 + 248) < 0)
            {
              lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
            }

            *&v5[8 * v8] = *(v23 + 8 * v6[v7] + 80);
          }

          else
          {
            lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge(v11, *(v2 + 8), v10);
          }
        }

        else
        {
          if (v12 < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v21 = *(*(v11 + 8 * v10 + 80) + 248);
          lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::rotateFromLeft(v11, v6[v7]);
          v22 = *&v5[8 * v7];
          if (*(v22 + 248) < 0)
          {
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
          }

          v6[v8] += (*(*(v22 + 8 * v6[v7] + 80) + 248) & 0x7F) - (v21 & 0x7F);
        }
      }

      else
      {
        lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::rotateFromRight(v11, v6[v7]);
      }

      ++v4;
      v2 = *a1;
      v1 = *(*a1 + 32);
    }

    while ((v1 - 1) > v4);
  }

  v24 = a1 + 8;
  if ((*(*(a1 + 1) + 248) & 0x7F) != 0)
  {
    v25 = *(v2 + 32);
  }

  else
  {
    if (a1[72])
    {
      lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure();
    }

    v26 = a1[80];
    if (v26 == 1 || (memmove(a1 + 72, a1 + 73, v26 - 1), v27 = a1[80], v27 == 1))
    {
      v28 = 0;
    }

    else
    {
      memmove(a1 + 8, a1 + 16, 8 * v27 - 8);
      v28 = a1[80] - 1;
    }

    a1[80] = v28;
    lsl::Allocator::free(*(v2 + 8), *v2);
    v29 = *a1;
    v25 = *(*a1 + 32) - 1;
    *(*a1 + 32) = v25;
    if (a1[80])
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
      if ((*(v24[(v25 + ~v30)] + 248) & 0x7F) != a1[(v25 + ~v30) + 72])
      {
        break;
      }

      --a1[80];
      ++v30;
    }

    while (v25 != v30);
  }
}

uint64_t **lsl::BTree<int,std::less<int>,false>::const_iterator::operator++(uint64_t **result)
{
  v1 = *(result + 80);
  v2 = *result;
  if (*(result + 80))
  {
    v3 = *(v2 + 32);
    v4 = result + 9;
    ++*(result + (v1 - 1) + 72);
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

          *(result + 80) = v5 + ~i;
        }
      }
    }

    else
    {
      v13 = *(result + 80);
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

          v14[v13] = v15[*(v4 + v13 - 1) + 10];
          *(v4 + v13) = 0;
          LOBYTE(v13) = *(result + 80) + 1;
          *(result + 80) = v13;
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
      *(result + v7 + 72) = 0;
      v10 = *(result + 80);
      v11 = *(v2 + 32);
      if (v10 + 1 != v11)
      {
        v12 = v9[v10];
        if (v12[31] < 0)
        {
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
        }

        v8 = v12[10];
      }

      v7 = v10 + 1;
      *(result + 80) = v7;
    }

    while (v11 > v7);
  }

  return result;
}

uint64_t dyld_shared_cache_is_mapped_private(dyld4::Atlas::SharedCache *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 104);

    return v2(this);
  }

  else
  {

    return dyld4::Atlas::SharedCache::isPrivateMapped(this);
  }
}

void lsl::Allocator::freeObject(void *this, void *a2)
{
  if (this)
  {
    free(this);
  }
}

void **lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(void **a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 9);
    if (v4)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v4, a2);
    }

    lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(v3 + 8, a2);
    lsl::UniquePtr<lsl::Bitmap>::~UniquePtr(v3 + 7, v5);
    v7 = *(v3 + 2);
    if (v7)
    {
      lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::deallocate(v7, *(v3 + 3));
      *(v3 + 2) = 0;
    }

    *(v3 + 5) = 0;
    *(v3 + 48) = 0;
    lsl::Allocator::freeObject(*a1, v6);
  }

  return a1;
}

void **lsl::UniquePtr<dyld4::Atlas::Image>::~UniquePtr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 16);
    if (v3 && v2[136] == 1)
    {
      dyld4::Atlas::Mapper::unmap(*(v2 + 14), v3, *(v2 + 15));
    }

    v4 = *(v2 + 11);
    if (v4)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v4, v3);
    }

    dyld4::FileRecord::~FileRecord((v2 + 8));
    lsl::Allocator::freeObject(*a1, v5);
  }

  return a1;
}

void lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::deallocate(char *a1, lsl::Allocator *a2)
{
  v4 = a1[248];
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
    if (a1[248] >= 0)
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

  lsl::Allocator::free(a2, a1);
}

void **lsl::UniquePtr<lsl::Bitmap>::~UniquePtr(void **a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    lsl::Bitmap::~Bitmap(v3, a2);
    lsl::Allocator::freeObject(*a1, v4);
  }

  return a1;
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

void **lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(void **a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 18);
    if (v4)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v4, a2);
    }

    v5 = *(v3 + 16);
    if (v5 && v3[136] == 1)
    {
      dyld4::Atlas::Mapper::unmap(*(v3 + 14), v5, *(v3 + 15));
    }

    dyld4::FileRecord::~FileRecord((v3 + 8));
    lsl::Allocator::freeObject(*a1, v6);
  }

  return a1;
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

void lsl::Vector<unsigned int>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (lsl::Allocator::realloc(*a1, *(a1 + 8)))
    {
LABEL_12:
      *(a1 + 24) = a2;
      return;
    }

    v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 4 * a2);
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v4;
      v9 = *(a1 + 8);
      do
      {
        v10 = *v9++;
        *v8++ = v10;
        --v7;
      }

      while (v7);
    }

    else if (!v6)
    {
      v11 = 0;
      goto LABEL_9;
    }

    lsl::Allocator::free(*a1, v6);
    v11 = *(a1 + 16);
LABEL_9:
    if (v11 >= a2)
    {
      v11 = a2;
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v11;
    goto LABEL_12;
  }
}

void lsl::Vector<unsigned int>::reserve(uint64_t a1, unint64_t a2)
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

    lsl::Vector<unsigned int>::reserveExact(a1, v2);
  }
}

void lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(lsl::Allocator *this, void *a2)
{
  if (!atomic_fetch_add(this, 0xFFFFFFFF))
  {
    v4 = *(this + 1);
    if (v4)
    {
      dyld4::Atlas::Mapper::~Mapper(v4);
      lsl::Allocator::freeObject(*(this + 1), v5);
    }

    lsl::Allocator::freeObject(this, a2);
  }
}

void dyld4::Atlas::Process::~Process(dyld4::Atlas::Process *this)
{
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN5dyld45Atlas7ProcessD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_43;
  block[4] = this;
  dispatch_async_and_wait(v2, block);
  dispatch_release(*(this + 3));
  lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(this + 16, v3);
  v4 = *(this + 11);
  if (v4)
  {
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessUpdateRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<10u,7u>::deallocate(v4, *(this + 12));
    *(this + 11) = 0;
  }

  *(this + 14) = 0;
  *(this + 120) = 0;
  v5 = *(this + 6);
  if (v5)
  {
    lsl::BTree<std::pair<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord>,lsl::OrderedMap<unsigned int,dyld4::Atlas::Process::ProcessNotifierRecord,std::less<unsigned int>>::value_compare,false>::NodeCore<7u,6u>::deallocate(v5, *(this + 7));
    *(this + 6) = 0;
  }

  *(this + 9) = 0;
  *(this + 80) = 0;
}

void dyld4::Atlas::Process::getSnapshot(dyld4::Atlas::Process *this@<X0>, int *a2@<X1>, void **a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = &v32;
  }

  task_info_outCnt = 5;
  v32 = 0;
  v6 = task_info(*(this + 4), 0x11u, task_info_out, &task_info_outCnt);
  *v5 = v6;
  if (v6)
  {
    v7 = v6 & 0xFFFFFF | 0xEF000000;
LABEL_6:
    *v5 = v7;
    *a3 = 0;
    return;
  }

  if (!*task_info_out)
  {
    v7 = -301989888;
    goto LABEL_6;
  }

  v8 = 0;
  while (1)
  {
    SafeRemoteBuffer::SafeRemoteBuffer(v27, *(this + 4), *task_info_out, v29, v5);
    if (*v5)
    {
      *v5 = *v5 & 0xFFFFFF | 0xED000000;
      *a3 = 0;
      goto LABEL_28;
    }

    v9 = v30;
    v10 = SafeRemoteBuffer::data(v27);
    if (!v9)
    {
      break;
    }

    v12 = *(v10 + 304);
    v11 = *(v10 + 312);
    if (!v11)
    {
      goto LABEL_27;
    }

LABEL_14:
    SafeRemoteBuffer::SafeRemoteBuffer(v26, *(this + 4), v12, v11, v5);
    if (*v5)
    {
      *v5 = *v5 & 0xFFFFFF | 0xEC000000;
      if (v12 == v8)
      {
        v14 = 0;
        *a3 = 0;
      }

      else
      {
        v14 = 1;
        v8 = v12;
      }
    }

    else
    {
      v15 = lsl::MemoryManager::memoryManager(v13);
      v16 = lsl::MemoryManager::defaultAllocator(v15);
      v17 = *this;
      v18 = *(this + 1);
      v19 = SafeRemoteBuffer::data(v26);
      v21 = v20;
      v22 = lsl::Allocator::aligned_alloc(v16, 8uLL, 0x70uLL);
      v23 = dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(v22, v17, v18, 0, v19, v21);
      v25 = v23;
      if (*(v23 + 105))
      {
        *a3 = 0;
        if (&v25 != a3)
        {
          *a3 = v23;
          v25 = 0;
        }
      }

      else
      {
        *v5 = -352321531;
        *a3 = 0;
      }

      lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v25, v24);
      v14 = 0;
    }

    SafeRemoteBuffer::~SafeRemoteBuffer(v26);
    SafeRemoteBuffer::~SafeRemoteBuffer(v27);
    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v12 = *(v10 + 168);
  v11 = *(v10 + 172);
  if (*(v10 + 172))
  {
    goto LABEL_14;
  }

LABEL_27:
  dyld4::Atlas::Process::synthesizeSnapshot(this, v5, a3);
LABEL_28:
  SafeRemoteBuffer::~SafeRemoteBuffer(v27);
}

void lsl::Vector<char>::resize(uint64_t a1, unint64_t a2)
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
    lsl::Vector<char>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

__int128 *dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(__int128 *a1, uint64_t a2, uint64_t a3, char a4, const void *a5, unint64_t a6)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  v10 = lsl::MemoryManager::memoryManager(a1);
  v11 = lsl::MemoryManager::defaultAllocator(v10);
  *(a1 + 2) = 0;
  v12 = (a1 + 1);
  *(a1 + 3) = v11;
  *(a1 + 5) = 0;
  *(a1 + 48) = 0;
  *(a1 + 8) = 0;
  v13 = (a1 + 4);
  *(a1 + 7) = 0;
  v14 = lsl::MemoryManager::memoryManager(v11);
  v15 = lsl::MemoryManager::defaultAllocator(v14);
  v16 = lsl::MemoryManager::memoryManager(v15);
  v17 = lsl::MemoryManager::defaultAllocator(v16);
  lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&>(v15, v17, a1 + 9);
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 11) = 0;
  *(a1 + 104) = a4;
  *(a1 + 105) = 1;
  v30 = a1;
  v31 = *a1;
  v32 = a1 + 1;
  v33 = a1 + 4;
  v34 = a1 + 56;
  v35 = v31;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = v31;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = v31;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v47 = v31;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = -1491447450;
  v53 = 0;
  v52 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = a1 + 5;
  v58 = a1 + 88;
  v59 = a1 + 6;
  v18 = dyld4::Atlas::ProcessSnapshot::Serializer::deserialize(&v30, a5, a6);
  if ((v18 & 1) == 0)
  {
    if (dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(lsl::Allocator &,dyld4::FileManager &,BOOL,std::span<std::byte,18446744073709551615ul>)::onceToken != -1)
    {
      dyld4::Atlas::ProcessSnapshot::ProcessSnapshot();
    }

    if (dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(lsl::Allocator &,dyld4::FileManager &,BOOL,std::span<std::byte,18446744073709551615ul>)::unwrapCompactInfoPtr)
    {
      v20 = lsl::MemoryManager::memoryManager(v18);
      v21 = lsl::MemoryManager::defaultAllocator(v20);
      v22 = lsl::Allocator::malloc(v21, a6);
      v23 = v22;
      if (a6)
      {
        memmove(v22, a5, a6);
      }

      v29 = a6;
      if (dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(lsl::Allocator &,dyld4::FileManager &,BOOL,std::span<std::byte,18446744073709551615ul>)::unwrapCompactInfoPtr(v23, &v29))
      {
        v24 = dyld4::Atlas::ProcessSnapshot::Serializer::deserialize(&v30, v23, v29);
        free(v23);
        if (v24)
        {
          goto LABEL_19;
        }
      }

      else
      {
        free(v23);
      }
    }

    if (*v12)
    {
      lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::deallocate(*v12, *(a1 + 3));
      *(a1 + 2) = 0;
    }

    *(a1 + 5) = 0;
    *(a1 + 48) = 0;
    v25 = *(a1 + 7);
    if (v25)
    {
      v25[2] = 0;
      v25[3] = 0;
      v26 = v25[1];
      v25[1] = 0;
      if (v26)
      {
        lsl::Allocator::freeObject(v26, v19);
      }
    }

    v29 = 0;
    if (&v29 != v13)
    {
      v27 = *v13;
      *v13 = 0;
      v29 = v27;
    }

    lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(&v29, v19);
    *(a1 + 105) = 0;
    *(a1 + 11) = 0;
    *(a1 + 12) = 0;
    *(a1 + 10) = 0;
  }

LABEL_19:
  if (v48)
  {
    lsl::Vector<unsigned int>::resize(&v47, 0);
  }

  if (v44)
  {
    lsl::Vector<char>::resize(&v43, 0);
  }

  if (v40)
  {
    lsl::Vector<char const*>::resize(&v39, 0);
  }

  if (v36)
  {
    lsl::Vector<lsl::UUID>::resize(&v35, 0);
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
    v13[248] = 0x80;
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
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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

void dyld4::Atlas::Image::~Image(dyld4::Atlas::Image *this)
{
  dyld4::Atlas::Mapper::Pointer<dyld3::MachOLoaded>::~Pointer(this + 112);
  v3 = *(this + 11);
  if (v3)
  {
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v3, v2);
  }

  dyld4::FileRecord::~FileRecord((this + 8));
}

uint64_t dyld4::Atlas::ProcessSnapshot::Serializer::deserialize(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 - 36;
  if (a3 < 0x24)
  {
    return 0;
  }

  v4 = 0;
  v8 = *a2;
  *(a1 + 44) = *a2;
  v9 = *(a2 + 4);
  *(a1 + 45) = v9;
  a1[23] = *(a2 + 8);
  *(a1 + 48) = *(a2 + 16);
  *(a1 + 52) = *(a2 + 20);
  a1[25] = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = a2 + 36;
  __src = (a2 + 36);
  v69 = a3 - 36;
  *(a1 + 53) = v10;
  if (v8 != -1491447450)
  {
    return v4;
  }

  if (v9)
  {
    return v4;
  }

  lsl::CRC32c::CRC32c(v67);
  lsl::CRC32c::operator()(v67, a2, 32);
  lsl::CRC32c::operator()(v67, 0);
  lsl::CRC32c::operator()(v67, v11, v3);
  v12 = *(a1 + 53);
  v4 = 0;
  if (v12 != lsl::CRC32c::operator unsigned int(v67))
  {
    return v4;
  }

  __dst = 0;
  if (!lsl::readPVLEUInt64(&__src, a1 + 27))
  {
    return 0;
  }

  if (!lsl::readPVLEUInt64(&__src, a1[28]))
  {
    return 0;
  }

  if (!lsl::readPVLEUInt64(&__src, a1[29]))
  {
    return 0;
  }

  if (!lsl::readPVLEUInt64(&__src, a1[30]))
  {
    return 0;
  }

  if (!lsl::readPVLEUInt64(&__src, &__dst))
  {
    return 0;
  }

  v13 = v69;
  v14 = __dst;
  if (v69 < 16 * __dst)
  {
    return 0;
  }

  if (__dst)
  {
    v15 = 0;
    for (i = 0; i < __dst; ++i)
    {
      v70[0] = *(__src + v15);
      lsl::Vector<lsl::UUID>::reserve((a1 + 6), a1[8] + 1);
      v17 = a1[7];
      v18 = a1[8];
      a1[8] = v18 + 1;
      *(v17 + 16 * v18) = v70[0];
      v15 += 16;
    }

    v13 = v69;
    v14 = 16 * __dst;
  }

  v19 = v13 - v14;
  __src = __src + v13 - v19;
  v69 = v19;
  v65 = 0;
  if ((lsl::readPVLEUInt64(&__src, &v65) & 1) == 0 || v69 < v65)
  {
    return 0;
  }

  lsl::Vector<char>::reserve((a1 + 14), v65);
  std::__copy_impl::operator()[abi:nn200100]<unsigned char *,unsigned char *,std::back_insert_iterator<lsl::Vector<char>>>(v70, __src, __src + v65, (a1 + 14));
  __src = __src + v65;
  v69 -= v65;
  if ((a1[27] & 1) == 0)
  {
    goto LABEL_20;
  }

  v85[0] = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0x1FFFFFFFFLL;
  v72 = 0;
  v73 = 1;
  MappedFileInfo = dyld4::Atlas::ProcessSnapshot::Serializer::readMappedFileInfo(a1, &__src, v85, v89, v70);
  if (!MappedFileInfo)
  {
    goto LABEL_56;
  }

  v35 = 14;
  if ((a1[27] & 4) == 0)
  {
    v35 = 12;
  }

  v85[0] <<= v35;
  *&v88 = 0;
  if (*(*a1 + 104) != 1)
  {
    v39 = lsl::MemoryManager::memoryManager(MappedFileInfo);
    lsl::MemoryManager::defaultAllocator(v39);
    dyld4::Atlas::Mapper::mapperForSharedCache();
    v38 = v88;
    *&v88 = v64;
    v64 = v38;
    if (!v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v36 = *(*a1 + 72);
  if (!v36)
  {
    goto LABEL_56;
  }

  atomic_fetch_add_explicit(v36, 1u, memory_order_relaxed);
  v37 = v88;
  *&v88 = v36;
  if (v37)
  {
    v38 = v37;
LABEL_45:
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v38, v34);
LABEL_46:
    v36 = v88;
    if (!v88)
    {
      goto LABEL_56;
    }
  }

  if (!*(v36 + 8))
  {
LABEL_55:
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v36, v34);
    goto LABEL_56;
  }

  v40 = lsl::MemoryManager::memoryManager(v36);
  v41 = lsl::MemoryManager::defaultAllocator(v40);
  v42 = lsl::MemoryManager::memoryManager(v41);
  v43 = lsl::MemoryManager::defaultAllocator(v42);
  v63 = a1[27] & 2;
  lsl::Allocator::makeUnique<dyld4::Atlas::SharedCache,lsl::Allocator&,dyld4::FileRecord,lsl::SharedPtr<dyld4::Atlas::Mapper> &,unsigned long long &,unsigned long long>(v41, v43, v70, &v88, v85, &v63, &v64);
  v45 = a1[4];
  if (&v64 != v45)
  {
    v46 = *v45;
    *v45 = v64;
    v64 = v46;
  }

  lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(&v64, v44);
  v64 = 0;
  PVLEUInt64 = lsl::readPVLEUInt64(&__src, &v64);
  if (!PVLEUInt64)
  {
    v36 = v88;
    if (v88)
    {
      goto LABEL_55;
    }

LABEL_56:
    v57 = v70;
    goto LABEL_57;
  }

  v48 = lsl::MemoryManager::memoryManager(PVLEUInt64);
  v49 = lsl::MemoryManager::defaultAllocator(v48);
  v50 = lsl::MemoryManager::memoryManager(v49);
  v51 = lsl::MemoryManager::defaultAllocator(v50);
  v52 = v64;
  v53 = lsl::Allocator::aligned_alloc(v49, 8uLL, 0x20uLL);
  v55 = *(lsl::Bitmap::Bitmap(v53, v51, v52) + 3);
  if (v55)
  {
    memmove(v53[1], __src, v55);
    v56 = v53[3];
  }

  else
  {
    v56 = 0;
  }

  v58 = v69 - v56;
  __src = __src + v69 - v58;
  v69 = v58;
  v63 = v53;
  v59 = a1[5];
  if (&v63 != v59)
  {
    v60 = *v59;
    *v59 = v53;
    v63 = v60;
  }

  lsl::UniquePtr<lsl::Bitmap>::~UniquePtr(&v63, v54);
  v4 = *(*a1[5] + 16);
  if (v88)
  {
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v88, v61);
  }

  dyld4::FileRecord::~FileRecord(v70);
  if (v4)
  {
LABEL_20:
    v64 = 0;
    if (!lsl::readPVLEUInt64(&__src, &v64))
    {
      return 0;
    }

    v4 = 1;
    if (!v64)
    {
      return v4;
    }

    v20 = 0;
    v21 = 0;
    while (1)
    {
      v63 = 0;
      v88 = 0uLL;
      memset(v85, 0, 64);
      v85[8] = 0x1FFFFFFFFLL;
      v86 = 0;
      v87 = 1;
      v22 = dyld4::Atlas::ProcessSnapshot::Serializer::readMappedFileInfo(a1, &__src, &v63, &v88, v85);
      if (!v22)
      {
        break;
      }

      if ((a1[27] & 4) != 0)
      {
        v23 = 14;
      }

      else
      {
        v23 = 12;
      }

      v21 += v63 << v23;
      v63 = v21;
      if (*(*a1 + 104) == 1)
      {
        v24 = *(*a1 + 72);
        if (v24)
        {
          atomic_fetch_add_explicit(v24, 1u, memory_order_relaxed);
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = lsl::MemoryManager::memoryManager(v22);
      v26 = lsl::MemoryManager::defaultAllocator(v25);
      v27 = v63;
      *&v70[0] = v26;
      v28 = dyld4::FileRecord::FileRecord(v70 + 8, v85);
      v74 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 1u, memory_order_relaxed);
      }

      v75 = v88;
      v77 = 0;
      v78 = 0;
      v76 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = v27;
      v83 = 0;
      v84[0] = 0;
      *(v84 + 7) = 0;
      v29 = a1[3];
      v30 = lsl::MemoryManager::memoryManager(v28);
      v31 = lsl::MemoryManager::defaultAllocator(v30);
      lsl::Allocator::makeUnique<dyld4::Atlas::Image,dyld4::Atlas::Image>(v31, v70, &v62);
      lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::insert(v29, &v62, v89);
      lsl::UniquePtr<dyld4::Atlas::Image>::~UniquePtr(&v62);
      dyld4::Atlas::Image::~Image(v70);
      if (v24)
      {
        lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v24, v32);
      }

      dyld4::FileRecord::~FileRecord(v85);
      if (v64 <= ++v20)
      {
        return 1;
      }
    }

    v57 = v85;
LABEL_57:
    dyld4::FileRecord::~FileRecord(v57);
    return 0;
  }

  return v4;
}

void dyld4::Atlas::Image::swap(dyld4::Atlas::Image *this, dyld4::Atlas::Image *a2)
{
  if (this != a2)
  {
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    dyld4::Atlas::Mapper::Pointer<dyld3::MachOLoaded>::swap(this + 14, a2 + 14);
    std::optional<unsigned long long>::swap[abi:nn200100](this + 18, a2 + 18);
    v5 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(this + 20);
    v7 = *(this + 21);
    v8 = *(a2 + 21);
    *(this + 20) = *(a2 + 20);
    *(this + 21) = v8;
    *(a2 + 20) = v6;
    *(a2 + 21) = v7;
    v9 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v9;
    dyld4::FileRecord::swap((this + 8), (a2 + 8));
    v10 = *(this + 184);
    *(this + 184) = *(a2 + 184);
    *(a2 + 184) = v10;
    v11 = *(this + 185);
    *(this + 185) = *(a2 + 185);
    *(a2 + 185) = v11;
    v12 = *(this + 186);
    *(this + 186) = *(a2 + 186);
    *(a2 + 186) = v12;
  }
}

void lsl::Allocator::makeUnique<dyld4::Atlas::Image,dyld4::Atlas::Image>(lsl::Allocator *a1@<X0>, dyld4::Atlas::Image *a2@<X1>, void *a3@<X8>)
{
  v5 = lsl::Allocator::aligned_alloc(a1, 8uLL, 0xC0uLL);
  *v5 = *a2;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0x1FFFFFFFFLL;
  *(v5 + 40) = 0;
  v5[82] = 1;
  v5[144] = 0;
  v5[152] = 0;
  v5[136] = 0;
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

uint64_t dyld4::Atlas::ProcessSnapshot::Serializer::readMappedFileInfo(uint64_t a1, uint64_t *a2, uint64_t *a3, _OWORD *a4, dyld4::FileRecord *a5)
{
  __dst = 0;
  result = lsl::readPVLEUInt64(a2, &__dst);
  if (result)
  {
    result = lsl::readPVLEUInt64(a2, a3);
    if (result)
    {
      v11 = __dst;
      if ((__dst & 4) != 0)
      {
        if (a2[1] < 0x10)
        {
          return 0;
        }

        *a4 = **a2;
        v12 = a2[1] - 16;
        *a2 += 16;
        a2[1] = v12;
      }

      if ((v11 & 1) == 0)
      {
        if ((v11 & 2) == 0)
        {
          return 1;
        }

        goto LABEL_13;
      }

      v13 = 0;
      v14 = 0;
      if (lsl::readPVLEUInt64(a2, &v14) && lsl::readPVLEUInt64(a2, &v13) && v14 < *(a1 + 64))
      {
        dyld4::FileManager::fileRecordForVolumeUUIDAndObjID(*(a1 + 16), (*(a1 + 56) + 16 * v14), v13, v16);
        dyld4::FileRecord::operator=(a5, v16);
        dyld4::FileRecord::~FileRecord(v16);
        if ((__dst & 2) == 0)
        {
          return 1;
        }

LABEL_13:
        v14 = 0;
        if (lsl::readPVLEUInt64(a2, &v14) && v14 < *(a1 + 128))
        {
          dyld4::FileManager::fileRecordForPath(*(a1 + 16), *(a1 + 8), (*(a1 + 120) + v14), v16);
          dyld4::FileRecord::operator=(a5, v16);
          dyld4::FileRecord::~FileRecord(v16);
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

char *lsl::Allocator::strdup(lsl::Allocator *this, const char *__s)
{
  v3 = strlen(__s);
  v4 = v3 + 1;
  v5 = 16;
  if (v3 + 1 > 0x10)
  {
    v5 = v3 + 1;
  }

  v6 = malloc_type_aligned_alloc(0x10uLL, (v5 + 15) & 0xFFFFFFFFFFFFFFF0, 0xC4FC5F7FuLL);
  strlcpy(v6, __s, v4);
  return v6;
}

uint64_t lsl::readPVLEUInt64(uint64_t *a1, uint64_t *__dst)
{
  *__dst = 0;
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = **a1;
  v6 = __clz(__rbit32(v5 | 0x100));
  v7 = (v6 + 1);
  if (v2 < v7)
  {
    return 0;
  }

  if (**a1)
  {
    v10 = 7 - v6;
    v11 = (v5 >> (v6 + 1)) & ~(-1 << (7 - v6));
    if (v6)
    {
      memmove(__dst, v4 + 1, v6);
      v12 = *__dst;
      v4 = *a1;
      v2 = a1[1];
    }

    else
    {
      v12 = 0;
    }

    *__dst = (v12 << v10) | v11;
    v13 = &v2[-v7];
    v14 = &v4[v7];
  }

  else
  {
    *__dst = *(v4 + 1);
    v13 = a1[1] - 9;
    v14 = *a1 + 9;
  }

  *a1 = v14;
  a1[1] = v13;
  return 1;
}

lsl::Bitmap *lsl::Bitmap::Bitmap(lsl::Bitmap *this, lsl::Allocator *a2, uint64_t a3)
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

uint64_t lsl::Allocator::makeUnique<dyld4::Atlas::SharedCache,lsl::Allocator&,dyld4::FileRecord,lsl::SharedPtr<dyld4::Atlas::Mapper> &,unsigned long long &,unsigned long long>@<X0>(lsl::Allocator *a1@<X0>, uint64_t a2@<X1>, dyld4::FileRecord *a3@<X2>, atomic_uint **a4@<X3>, unint64_t *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = lsl::Allocator::aligned_alloc(a1, 8uLL, 0xB0uLL);
  result = dyld4::Atlas::SharedCache::SharedCache(v13, a2, a3, a4, *a5, *a6 != 0);
  *a7 = result;
  return result;
}

void lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::deallocate(char *a1, lsl::Allocator *a2)
{
  v4 = a1[248];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 8 * (v4 + 1);
    v6 = (a1 + 80);
    do
    {
      v7 = *v6++;
      lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::deallocate(v7, a2);
      v5 -= 8;
    }

    while (v5);
  }

  lsl::Allocator::free(a2, a1);
}

void lsl::Vector<dyld4::Atlas::Mapper::Mapping>::resize(uint64_t a1, unint64_t a2)
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
    lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void *lsl::Vector<dyld4::Atlas::Mapper::Mapping>::Vector(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = 0;
  v5 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  lsl::Vector<dyld4::Atlas::Mapper::Mapping>::reserve(a1, *(a2 + 16));
  v6 = *(a2 + 16);
  a1[2] = v6;
  if (v6)
  {
    memmove(*v5, *(a2 + 8), 32 * v6);
  }

  return a1;
}

void *lsl::Allocator::makeShared<dyld4::Atlas::Mapper,lsl::Allocator&,lsl::Vector<dyld4::Atlas::Mapper::Mapping> &>@<X0>(lsl::Allocator *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = lsl::Allocator::aligned_alloc(a1, 8uLL, 0x30uLL);
  v8 = lsl::Vector<dyld4::Atlas::Mapper::Mapping>::Vector(v7, a3, a2);
  v8[4] = 0;
  v8[5] = a2;
  result = malloc_type_aligned_alloc(8uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  *result = 0;
  result[1] = v7;
  *a4 = result;
  return result;
}

double dyld4::FileManager::fileRecordForPath@<D0>(dyld4::FileManager *this@<X0>, lsl::Allocator *a2@<X1>, const char *__s@<X2>, uint64_t a4@<X8>)
{
  if (__s)
  {
    v6 = lsl::Allocator::strdup(a2, __s);
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

unsigned __int8 *lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
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
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert();
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

uint64_t lsl::MemoryManager::defaultAllocator(lsl::MemoryManager *this)
{
  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager();
  }

  return qword_1ED3F72E8;
}

__int128 *lsl::MemoryManager::memoryManager(lsl::MemoryManager *this)
{
  if ((lsl::sMemoryManagerInitialized & 1) == 0)
  {
    lsl::MemoryManager::memoryManager();
  }

  return &lsl::sMemoryManagerBuffer;
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

void *lsl::Allocator::malloc(lsl::Allocator *this, unint64_t a2)
{
  v2 = 16;
  if (a2 > 0x10)
  {
    v2 = a2;
  }

  return malloc_type_aligned_alloc(0x10uLL, (v2 + 15) & 0xFFFFFFFFFFFFFFF0, 0xC4FC5F7FuLL);
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

uint64_t dyld4::Atlas::Mapper::Pointer<dyld3::MachOLoaded>::~Pointer(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    munmap((v2 & -vm_page_size), *(a1 + 8) + v2 - (v2 & -vm_page_size));
  }

  return a1;
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
          lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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
            lsl::BTree<int,std::less<int>,false>::const_iterator::operator--();
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

NSObject *___ZN5dyld45Atlas7ProcessD2Ev_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (LODWORD(result[5].isa) == 1)
  {
    return dyld4::Atlas::Process::teardownNotifications(result);
  }

  return result;
}

uint64_t _dyld_pseudodylib_register_callbacks(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == 3)
  {
    v7 = 3;
    v4 = *(a1 + 24);
    v8 = *(a1 + 8);
    v9 = v4;
    v5 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = v5;
  }

  else if (v1 == 2)
  {
    v7 = 2;
    v3 = *(a1 + 24);
    v8 = *(a1 + 8);
    v9 = v3;
    v10 = *(a1 + 40);
    *&v11 = *(a1 + 56);
  }

  else if (v1 == 1)
  {
    v7 = 1;
    v2 = *(a1 + 24);
    v8 = *(a1 + 8);
    v9 = v2;
    v10 = *(a1 + 40);
  }

  else
  {
    v7 = *a1;
  }

  return (*(*dyld4::gAPIs + 896))(dyld4::gAPIs, &v7);
}

uint64_t dyld::ThreadLocalVariables::finalizeList(dyld::ThreadLocalVariables *this, uint64_t *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN4dyld20ThreadLocalVariables12finalizeListEPv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12;
  v4[4] = this;
  dyld::ThreadLocalVariables::TerminatorList::reverseWalkChain(a2, v4);
  return dyld::ThreadLocalVariables::TerminatorList::reverseWalkChain(a2, &__block_literal_global);
}

uint64_t dyld::ThreadLocalVariables::TerminatorList::reverseWalkChain(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    dyld::ThreadLocalVariables::TerminatorList::reverseWalkChain(v4, a2);
  }

  v5 = *(a2 + 16);

  return v5(a2, a1);
}

void *___ZN4dyld20ThreadLocalVariables12finalizeListEPv_block_invoke(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(result + 4);
    v4 = (a2 + 16 * v2 + 8);
    do
    {
      v5 = *(v4 - 1);
      if (v5)
      {
        v5(*v4);
      }

      result = pthread_getspecific(*v3);
      if (result)
      {
        v6 = result;
        pthread_setspecific(*v3, 0);
        result = dyld::ThreadLocalVariables::finalizeList(v3, v6);
      }

      v4 -= 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t dyld4::LibSystemHelpers::run_async(dyld4::LibSystemHelpers *this, void *(__cdecl *a2)(void *), void *a3)
{
  v4 = 0;
  pthread_create(&v4, 0, a2, a3);
  return pthread_detach(v4);
}

void RemoteBuffer::RemoteBuffer(RemoteBuffer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
}

void RemoteBuffer::~RemoteBuffer(void **this)
{
  v1 = *this;
  if (v1)
  {
    free(v1);
  }
}

void *dyld_process_info_base::forEachSegment(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[6];
  v3 = result[7];
  if (v4 < v3)
  {
    v7 = result;
    while (*(v4 + 16) != a2)
    {
      v4 += 40;
      if (v4 >= v3)
      {
        return result;
      }
    }

    v8 = *(v4 + 36);
    if (v8)
    {
      v9 = result[10];
      v10 = *(v4 + 32);
      while (1)
      {
        v11 = v9 + 24 * v10;
        if (!strcmp(*v11, "__TEXT"))
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          v12 = 0;
          goto LABEL_12;
        }
      }

      v12 = a2 - *(v11 + 8);
LABEL_12:
      v13 = 0;
      do
      {
        v14 = (v7[10] + 24 * (v13 + *(v4 + 32)));
        result = (*(a3 + 16))(a3, v14[1] + v12, v14[2], *v14);
        ++v13;
      }

      while (v13 < *(v4 + 36));
    }
  }

  return result;
}

void dyld_process_info_base::make<dyld_all_image_infos_32,dyld_image_info_32>(RemoteBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3002000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  if (*a2 <= 0xEu)
  {
    v7 = 5;
    goto LABEL_3;
  }

  v10 = *(a2 + 104);
  v11 = *(a2 + 8);
  if (!v10 || v11)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (a3 && v10 == a3)
    {
      *a4 = 0;
      goto LABEL_4;
    }

    if (!v11)
    {
      usleep(0xC350u);
      v7 = 19;
      goto LABEL_3;
    }

    if (*(a2 + 4) >= 0x2000u)
    {
      v18 = 0x2000;
    }

    else
    {
      v18 = *(a2 + 4);
    }

    v29 = 0;
    shared_cache_range = _dyld_get_shared_cache_range(&v29);
    v26[0] = _NSConcreteStackBlock;
    v20 = v29 + shared_cache_range;
    v26[1] = 0x40000000;
    v26[2] = ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_3218dyld_image_info_32EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke;
    v26[3] = &unk_1EEE9BCB0;
    if (!shared_cache_range)
    {
      v20 = 0;
    }

    v26[4] = &v30;
    v26[5] = a2;
    v26[6] = a4;
    v26[7] = v10;
    v27 = v18;
    v28 = a1;
    v26[8] = shared_cache_range;
    v26[9] = v20;
    withRemoteBuffer(a1, v11, (12 * v18), 0, a4, v26);
    v21 = *(a2 + 184);
    v16 = v31;
    if (v21 && v31[5])
    {
      v22 = *(a2 + 180);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 0x40000000;
      v24[2] = ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_3218dyld_image_info_32EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke_2;
      v24[3] = &unk_1EEE9BCD8;
      v25 = v22;
      v24[4] = &v30;
      v24[5] = a4;
      withRemoteBuffer(a1, v21, 56 * v22, 0, a4, v24);
      v16 = v31;
    }

    v17 = v16[5];
    goto LABEL_29;
  }

  v12 = *(a2 + 100);
  if (!v12 || *(a2 + 20) <= v12)
  {
    goto LABEL_16;
  }

LABEL_9:
  dyld_process_info_base::makeSuspended<dyld_all_image_infos_32>(a1, a2, *(a2 + 104), a4, &v29);
  v13 = v29;
  v29 = 0;
  v14 = v31[5];
  v31[5] = v13;
  if (v14)
  {
    free(v14);
    v15 = v29;
    v29 = 0;
    if (v15)
    {
      free(v15);
    }
  }

  v16 = v31;
  v17 = v31[5];
  if (!v17)
  {
    usleep(0xC350u);
    if (*a4)
    {
      goto LABEL_4;
    }

    v7 = 6;
LABEL_3:
    *a4 = v7;
LABEL_4:
    *a5 = 0;
    goto LABEL_30;
  }

LABEL_29:
  v16[5] = 0;
  *a5 = v17;
LABEL_30:
  _Block_object_dispose(&v30, 8);
  v23 = v35;
  v35 = 0;
  if (v23)
  {
    free(v23);
  }
}

uint64_t _dyld_process_info_retain(atomic_uint *a1)
{
  result = dyldFrameworkIntrospectionVtable();
  if (result)
  {
    v3 = *(result + 280);

    return v3(a1);
  }

  else
  {
    atomic_fetch_add(a1, 1u);
  }

  return result;
}

void *_dyld_process_info_for_each_segment(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = dyldFrameworkIntrospectionVtable();
  if (v6)
  {
    v7 = *(v6 + 312);

    return v7(a1, a2, a3);
  }

  else
  {

    return dyld_process_info_base::forEachSegment(a1, a2, a3);
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    free(v2);
  }
}

void dyld_process_info_base::makeSuspended<dyld_all_image_infos_32>(RemoteBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, dyld_process_info_base **a5@<X8>)
{
  x = 0;
  v10 = pid_for_task(a1, &x);
  *a4 = v10;
  if (v10)
  {
    goto LABEL_5;
  }

  task_info_outCnt = 12;
  v11 = task_info(a1, 0x14u, task_info_out, &task_info_outCnt);
  *a4 = v11;
  if (v11)
  {
    v12 = -67108861;
LABEL_4:
    *a4 = v12;
LABEL_5:
    *a5 = 0;
    return;
  }

  if (!task_info_out[11])
  {
    kcd_addr_begin[0] = 0;
    kcd_size[0] = 0;
    v15 = task_map_corpse_info_64(mach_task_self_, a1, kcd_addr_begin, kcd_size);
    *a4 = v15;
    if (v15)
    {
      v12 = v15 & 0xFFFFFF | 0xFB000000;
      goto LABEL_4;
    }

    MEMORY[0x1865C8D90](mach_task_self_, kcd_addr_begin[0], kcd_size[0]);
  }

  v31 = a2;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2000000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = kcd_addr_begin;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = kcd_size;
  address = 0;
  size = 0;
  LOBYTE(kcd_addr_begin[0]) = 0;
  LOBYTE(kcd_size[0]) = 0;
  infoCnt = 9;
  for (object_name = 0; !mach_vm_region(a1, &address, &size, 10, info, &infoCnt, &object_name); object_name = 0)
  {
    if (info[0] == 5)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 0x40000000;
      v32[2] = ___ZN22dyld_process_info_base13makeSuspendedI23dyld_all_image_infos_32EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke;
      v32[3] = &unk_1EEE9BD00;
      v33 = x;
      v32[4] = &v51;
      v32[5] = &v39;
      v32[6] = &v55;
      v32[7] = &v47;
      v32[8] = &v43;
      v32[9] = address;
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 0x40000000;
      v62[2] = ___Z16withRemoteObjectI14mach_header_64EvjyPiU13block_pointerFvT_E_block_invoke;
      v62[3] = &unk_1EEE9BD28;
      v62[4] = v32;
      withRemoteBuffer(a1, address, 0x20uLL, 0, 0, v62);
    }

    address += size;
    infoCnt = 9;
  }

  v13 = v56;
  if (v48[3])
  {
    v14 = *(v56 + 6);
  }

  else
  {
    v48[3] = *(a2 + 20);
    strcpy(kcd_addr_begin, "/usr/lib/dyld");
    v14 = *(v13 + 6) + 1;
  }

  if (v14 >= 0x2000)
  {
    v14 = 0x2000;
  }

  *(v13 + 6) = v14;
  v16 = 1304 * v14 + 192;
  v17 = malloc_type_malloc(v16, 0x3AAD518DuLL);
  if (!v17)
  {
    *a4 = -100663293;
    *a5 = 0;
    goto LABEL_32;
  }

  v18 = v17;
  dyld_process_info_base::dyld_process_info_base(v17, 0, *(v56 + 6), 0, v16);
  v20 = *(v19 + 32);
  v21 = v20 >= 0xC0;
  v22 = v20 - 192;
  if (v21)
  {
    *(v18 + 4) = v22;
  }

  v23 = v18 + *(v18 + 1);
  bzero(v23, 0x10uLL);
  *(v23 + 2) = 0;
  *(v23 + 12) = 1;
  v24 = (v18 + *(v18 + 2));
  bzero(v24, 0x10uLL);
  v24[2] = 0;
  v26 = v18 + *(v18 + 3);
  *v26 = a3;
  *(v26 + 2) = *(v56 + 6);
  *(v26 + 3) = *(v56 + 6);
  v26[16] = 0;
  v27 = v48[3];
  if (v27 && (v28 = dyld_process_info_base::addDyldImage(v18, a1, v27, 0, v44[3]), (*a4 = v28) != 0) || (v29 = v52[3]) != 0 && (v30 = dyld_process_info_base::addImage(v18, a1, 0, 0, v25, v29, 0, v40[3], 0), (*a4 = v30) != 0))
  {
LABEL_31:
    *a5 = 0;
    free(v18);
    goto LABEL_32;
  }

  if (*(v31 + 104) != a3)
  {
    *a4 = 18;
    goto LABEL_31;
  }

  *a5 = v18;
LABEL_32:
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

void ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_3218dyld_image_info_32EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke(uint64_t a1, uint64_t a2)
{
  ProcessDyldInfo = getProcessDyldInfo();
  v5 = *(a1 + 40);
  v7 = ProcessDyldInfo && *(v5 + 100) && *(ProcessDyldInfo + 176) && (*(v5 + 16) & 1) == 0 && (*(ProcessDyldInfo + 24) & 1) == 0 && (*(ProcessDyldInfo + 160) == *(v5 + 84) ? (v6 = *(ProcessDyldInfo + 168) == *(v5 + 92)) : (v6 = 0), v6) && *(ProcessDyldInfo + 152) == *(v5 + 80);
  v8 = (*(a1 + 80) + 1);
  v9 = *(v5 + 180);
  if (v9 >= 0x2000)
  {
    v10 = 458752;
  }

  else
  {
    v10 = 56 * v9;
  }

  v11 = 40 * (*(a1 + 80) + 1);
  v12 = v11 + 240 * v8 + (v8 << 10) + v10;
  v13 = malloc_type_malloc(v12 + 192, 0xD86E44E9uLL);
  if (!v13)
  {
    **(a1 + 48) = 3;
    v37 = *(*(a1 + 32) + 8);
    v14 = *(v37 + 40);
    *(v37 + 40) = 0;
    if (!v14)
    {
      return;
    }

    goto LABEL_50;
  }

  v14 = v13;
  dyld_process_info_base::dyld_process_info_base(v13, *(*(a1 + 40) + 176), v8, *(*(a1 + 40) + 180), v12 + 192);
  v17 = *(v16 + 32);
  if (v17 <= 0xBF)
  {
    v18 = v17 >= v11;
  }

  else
  {
    v17 -= 192;
    v18 = 1;
  }

  if (v18)
  {
    if (v17 < v11)
    {
      v19 = 0;
    }

    else
    {
      v19 = 8 * (v8 + 4 * v8);
    }

    *(v14 + 4) = v17 - v19;
  }

  v20 = 0;
  v21 = v14 + *(v14 + 1);
  *v21 = *(*(a1 + 40) + 84);
  v22 = *(a1 + 40);
  *(v21 + 2) = *(v22 + 100);
  v21[25] = *(v22 + 16);
  v21[24] = 1;
  do
  {
    if (v21[v20])
    {
      v21[24] = 0;
    }

    ++v20;
  }

  while (v20 != 16);
  v23 = v14 + *(v14 + 2);
  *v23 = *(v22 + 208);
  v24 = *(a1 + 40);
  *(v23 + 2) = *(v24 + 200);
  v25 = v14 + *(v14 + 3);
  *v25 = *(a1 + 56);
  v26 = *(v24 + 60);
  *(v25 + 2) = v8;
  *(v25 + 3) = v26 + 1;
  v25[16] = 16;
  if (*(v24 + 17))
  {
    if (v26 == *(a1 + 80))
    {
      v27 = 48;
    }

    else
    {
      v27 = 80;
    }

    v25[16] = v27;
    v24 = *(a1 + 40);
  }

  if (*(v24 + 32))
  {
    if (*(v24 + 36))
    {
      v28 = 32;
    }

    else
    {
      v28 = 96;
    }

    v25[16] = v28;
  }

  v29 = *(v24 + 112);
  if (!v29 || (v30 = dyld_process_info_base::addDyldImage(v14, *(a1 + 84), *(v24 + 20), v29, 0), v31 = *(a1 + 48), (*v31 = v30) == 0))
  {
    if (*(a1 + 80))
    {
      v32 = 0;
      v33 = (a2 + 4);
      do
      {
        v34 = dyld_process_info_base::addImage(v14, *(a1 + 84), v7, *(a1 + 64), v15, *(v33 - 1), *v33, 0, v32);
        **(a1 + 48) = v34;
        if (v34)
        {
          goto LABEL_47;
        }

        v33 += 3;
      }

      while (++v32 < *(a1 + 80));
    }

    if (*(v14 + 13) >= *(v14 + 11))
    {
      v38 = *(*(a1 + 32) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v14;
      v14 = v39;
      if (!v39)
      {
        return;
      }

      goto LABEL_50;
    }

    v31 = *(a1 + 48);
  }

  *v31 = 5;
LABEL_47:
  v35 = *(*(a1 + 32) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = 0;
  if (v36)
  {
    free(v36);
  }

LABEL_50:

  free(v14);
}

void ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_3218dyld_image_info_32EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    for (i = (a2 + 24); ; i = (i + 56))
    {
      v4 = *(*(*(a1 + 32) + 8) + 40);
      v5 = *(i - 24);
      v6 = *(i - 1);
      v11 = *i;
      v12 = i[1];
      v7 = *(v4 + 32);
      if (v7 <= 0x37)
      {
        break;
      }

      *(v4 + 32) = v7 - 56;
      v8 = *(v4 + 72);
      *v8 = v5;
      *(v8 + 24) = v11;
      *(v8 + 16) = v6;
      *(v8 + 40) = v12;
      *(v4 + 72) += 56;
      **(a1 + 40) = 0;
      if (++v2 >= *(a1 + 48))
      {
        return;
      }
    }

    **(a1 + 40) = 3;
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
    if (v10)
    {

      free(v10);
    }
  }
}

uint64_t ___ZN22dyld_process_info_base13makeSuspendedI23dyld_all_image_infos_32EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 >> 1 == 2138504551)
  {
    v2 = result;
    v3 = a2[3];
    if (v3 == 7)
    {
      *(*(*(result + 56) + 8) + 24) = *(result + 72);
      result = proc_regionfilename(*(result + 80), *(*(*(result + 56) + 8) + 24), *(*(*(result + 64) + 8) + 24), 0x400u);
      if (result <= 0)
      {
        strcpy(*(*(v2[8] + 8) + 24), "/dyld_path_missing");
      }
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      *(*(*(result + 32) + 8) + 24) = *(result + 72);
      result = proc_regionfilename(*(result + 80), *(*(*(result + 32) + 8) + 24), *(*(*(result + 40) + 8) + 24), 0x400u);
      if (result <= 0)
      {
        strcpy(*(*(v2[5] + 8) + 24), "/main_executable_path_missing");
      }
    }

    ++*(*(v2[6] + 8) + 24);
  }

  return result;
}

uint64_t ___Z16withRemoteObjectI14mach_header_64EvjyPiU13block_pointerFvT_E_block_invoke(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return (*(v4 + 16))(v4, v7, a3, a4);
}

void dyld_process_info_base::makeSuspended<dyld_all_image_infos_64>(RemoteBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, dyld_process_info_base **a5@<X8>)
{
  x = 0;
  v10 = pid_for_task(a1, &x);
  *a4 = v10;
  if (v10)
  {
    goto LABEL_5;
  }

  task_info_outCnt = 12;
  v11 = task_info(a1, 0x14u, task_info_out, &task_info_outCnt);
  *a4 = v11;
  if (v11)
  {
    v12 = -67108861;
LABEL_4:
    *a4 = v12;
LABEL_5:
    *a5 = 0;
    return;
  }

  if (!task_info_out[11])
  {
    kcd_addr_begin[0] = 0;
    kcd_size[0] = 0;
    v15 = task_map_corpse_info_64(mach_task_self_, a1, kcd_addr_begin, kcd_size);
    *a4 = v15;
    if (v15)
    {
      v12 = v15 & 0xFFFFFF | 0xFB000000;
      goto LABEL_4;
    }

    MEMORY[0x1865C8D90](mach_task_self_, kcd_addr_begin[0], kcd_size[0]);
  }

  v31 = a2;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2000000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = kcd_addr_begin;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = kcd_size;
  address = 0;
  size = 0;
  LOBYTE(kcd_addr_begin[0]) = 0;
  LOBYTE(kcd_size[0]) = 0;
  infoCnt = 9;
  for (object_name = 0; !mach_vm_region(a1, &address, &size, 10, info, &infoCnt, &object_name); object_name = 0)
  {
    if (info[0] == 5)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 0x40000000;
      v32[2] = ___ZN22dyld_process_info_base13makeSuspendedI23dyld_all_image_infos_64EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke;
      v32[3] = &unk_1EEE9BDA0;
      v33 = x;
      v32[4] = &v51;
      v32[5] = &v39;
      v32[6] = &v55;
      v32[7] = &v47;
      v32[8] = &v43;
      v32[9] = address;
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 0x40000000;
      v62[2] = ___Z16withRemoteObjectI14mach_header_64EvjyPiU13block_pointerFvT_E_block_invoke;
      v62[3] = &unk_1EEE9BD28;
      v62[4] = v32;
      withRemoteBuffer(a1, address, 0x20uLL, 0, 0, v62);
    }

    address += size;
    infoCnt = 9;
  }

  v13 = v56;
  if (v48[3])
  {
    v14 = *(v56 + 6);
  }

  else
  {
    v48[3] = *(a2 + 32);
    strcpy(kcd_addr_begin, "/usr/lib/dyld");
    v14 = *(v13 + 6) + 1;
  }

  if (v14 >= 0x2000)
  {
    v14 = 0x2000;
  }

  *(v13 + 6) = v14;
  v16 = 1304 * v14 + 192;
  v17 = malloc_type_malloc(v16, 0x3AAD518DuLL);
  if (!v17)
  {
    *a4 = -100663293;
    *a5 = 0;
    goto LABEL_32;
  }

  v18 = v17;
  dyld_process_info_base::dyld_process_info_base(v17, 0, *(v56 + 6), 0, v16);
  v20 = *(v19 + 32);
  v21 = v20 >= 0xC0;
  v22 = v20 - 192;
  if (v21)
  {
    *(v18 + 4) = v22;
  }

  v23 = v18 + *(v18 + 1);
  bzero(v23, 0x10uLL);
  *(v23 + 2) = 0;
  *(v23 + 12) = 1;
  v24 = (v18 + *(v18 + 2));
  bzero(v24, 0x10uLL);
  v24[2] = 0;
  v26 = v18 + *(v18 + 3);
  *v26 = a3;
  *(v26 + 2) = *(v56 + 6);
  *(v26 + 3) = *(v56 + 6);
  v26[16] = 0;
  v27 = v48[3];
  if (v27 && (v28 = dyld_process_info_base::addDyldImage(v18, a1, v27, 0, v44[3]), (*a4 = v28) != 0) || (v29 = v52[3]) != 0 && (v30 = dyld_process_info_base::addImage(v18, a1, 0, 0, v25, v29, 0, v40[3], 0), (*a4 = v30) != 0))
  {
LABEL_31:
    *a5 = 0;
    free(v18);
    goto LABEL_32;
  }

  if (*(v31 + 184) != a3)
  {
    *a4 = 18;
    goto LABEL_31;
  }

  *a5 = v18;
LABEL_32:
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

void ___ZN22dyld_process_info_base4makeI23dyld_all_image_infos_6418dyld_image_info_64EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    for (i = (a2 + 24); ; i = (i + 56))
    {
      v4 = *(*(*(a1 + 32) + 8) + 40);
      v5 = *(i - 24);
      v6 = *(i - 1);
      v11 = *i;
      v12 = i[1];
      v7 = *(v4 + 32);
      if (v7 <= 0x37)
      {
        break;
      }

      *(v4 + 32) = v7 - 56;
      v8 = *(v4 + 72);
      *v8 = v5;
      *(v8 + 24) = v11;
      *(v8 + 16) = v6;
      *(v8 + 40) = v12;
      *(v4 + 72) += 56;
      **(a1 + 40) = 0;
      if (++v2 >= *(a1 + 48))
      {
        return;
      }
    }

    **(a1 + 40) = 3;
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
    if (v10)
    {

      free(v10);
    }
  }
}

uint64_t ___ZN22dyld_process_info_base13makeSuspendedI23dyld_all_image_infos_64EENSt3__110unique_ptrIS_25dyld_process_info_deleterEEjRKT_yPi_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 >> 1 == 2138504551)
  {
    v2 = result;
    v3 = a2[3];
    if (v3 == 7)
    {
      *(*(*(result + 56) + 8) + 24) = *(result + 72);
      result = proc_regionfilename(*(result + 80), *(*(*(result + 56) + 8) + 24), *(*(*(result + 64) + 8) + 24), 0x400u);
      if (result <= 0)
      {
        strcpy(*(*(v2[8] + 8) + 24), "/dyld_path_missing");
      }
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      *(*(*(result + 32) + 8) + 24) = *(result + 72);
      result = proc_regionfilename(*(result + 80), *(*(*(result + 32) + 8) + 24), *(*(*(result + 40) + 8) + 24), 0x400u);
      if (result <= 0)
      {
        strcpy(*(*(v2[5] + 8) + 24), "/main_executable_path_missing");
      }
    }

    ++*(*(v2[6] + 8) + 24);
  }

  return result;
}

mach_port_context_t dyld_process_info_notify_base::dyld_process_info_notify_base(mach_port_context_t a1, uint64_t a2, const void *a3, const void *a4, int a5, kern_return_t *a6)
{
  RemoteBuffer::RemoteBuffer(a1);
  *(v12 + 24) = 0;
  *(v12 + 32) = a2;
  *(a1 + 40) = _Block_copy(a3);
  v13 = _Block_copy(a4);
  *(a1 + 76) = 0;
  *(a1 + 48) = v13;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = a5;
  *(a1 + 80) = 0;
  if (!a6)
  {
    dyld_process_info_notify_base::dyld_process_info_notify_base();
  }

  dispatch_retain(*(a1 + 32));
  *&options.flags = xmmword_180110240;
  options.reserved[1] = 0;
  v14 = mach_port_construct(mach_task_self_, &options, a1, (a1 + 76));
  *a6 = v14;
  if (v14 || (previous = 0, v15 = mach_port_request_notification(mach_task_self_, *(a1 + 76), 70, 1u, *(a1 + 76), 0x15u, &previous), *a6 = v15, v15 | previous) || (v16 = task_dyld_process_info_notify_register(*(a1 + 72), *(a1 + 76)), (*a6 = v16) != 0) || (v18 = dispatch_source_create(&_dispatch_source_type_mach_recv, *(a1 + 76), 0, *(a1 + 32)), (*(a1 + 64) = v18) == 0))
  {
    dyld_process_info_notify_base::teardownMachPorts(a1);
  }

  else
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN29dyld_process_info_notify_baseC2EP16dispatch_queue_sU13block_pointerFvbyyPKhPKcEU13block_pointerFvvEjPi_block_invoke;
    handler[3] = &__block_descriptor_tmp_1;
    handler[4] = a1;
    dispatch_source_set_event_handler(v18, handler);
    v19 = *(a1 + 64);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v20[2] = ___ZN29dyld_process_info_notify_baseC2EP16dispatch_queue_sU13block_pointerFvbyyPKhPKcEU13block_pointerFvvEjPi_block_invoke_2;
    v20[3] = &__block_descriptor_tmp_3_0;
    v20[4] = a1;
    dispatch_source_set_cancel_handler(v19, v20);
    dispatch_activate(*(a1 + 64));
    atomic_store(1u, (a1 + 80));
  }

  return a1;
}

mach_port_context_t dyld_process_info_notify_base::teardownMachPorts(mach_port_context_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    v2 = this;
    this = task_dyld_process_info_notify_deregister(*(this + 72), v1);
    if (!this)
    {
      this = mach_port_destruct(mach_task_self_, *(v2 + 76), 0, v2);
    }

    *(v2 + 76) = 0;
  }

  return this;
}

void dyld_process_info_notify_base::handleEvent(dyld_process_info_notify_base *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v2 = atomic_load((v1 + 80));
  if (v2)
  {
    v3 = v1;
    bzero(&msg, 0x8000uLL);
    if (mach_msg(&msg, 50333698, 0, 0x7FCCu, *(v3 + 76), 0, 0) || (msg.msgh_bits & 0x80000000) != 0)
    {
      v4 = __stderrp;
      msgh_id = msg.msgh_id;
      goto LABEL_4;
    }

    msgh_id = msg.msgh_id;
    if (msg.msgh_id >= 0x2000)
    {
      if (msg.msgh_id == 12288)
      {
        if (msg.msgh_size == 24)
        {
          v10 = *(v3 + 56);
          if (v10)
          {
            (*(v10 + 16))();
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (msg.msgh_id != 0x2000)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (msg.msgh_id == 70)
      {
        v9 = (&msg.msgh_bits + ((msg.msgh_size + 3) & 0x1FFFFFFFCLL));
        if (*v9 || v9[1] < 0x34u || v9[10])
        {
          goto LABEL_5;
        }

        goto LABEL_27;
      }

      if (msg.msgh_id != 4096)
      {
LABEL_11:
        if ((msg.msgh_id & 0x4000) != 0)
        {
          goto LABEL_5;
        }

        v4 = __stderrp;
LABEL_4:
        fprintf(v4, "dyld: received unknown message id=0x%X, size=%d\n", msgh_id, msg.msgh_size);
LABEL_5:
        mach_msg_destroy(&msg);
        return;
      }
    }

    if (msg.msgh_size >= 0x30 && msg.msgh_size >= v13 && v14 <= msg.msgh_size && msg.msgh_size - v13 >= 32 * v12)
    {
      if (!v12)
      {
LABEL_32:
        dyld_process_info_notify_base::replyToMonitoredProcess(v3, &msg);
        goto LABEL_5;
      }

      v6 = 0;
      v7 = &msg + v13;
      while (*(v7 + 6) <= msg.msgh_size - v14)
      {
        v8 = *(v7 + 2);
        (*(*(v3 + 40) + 16))();
        ++v6;
        v7 += 32;
        if (v6 >= v12)
        {
          goto LABEL_32;
        }
      }

LABEL_31:
      dyld_process_info_notify_base::disconnect(v3);
      goto LABEL_32;
    }

LABEL_27:
    dyld_process_info_notify_base::disconnect(v3);
    goto LABEL_5;
  }
}

void dyld_process_info_notify_base::~dyld_process_info_notify_base(dyld_process_info_notify_base *this)
{
  v2 = atomic_load(this + 80);
  if (v2)
  {
    fwrite("dyld: ~dyld_process_info_notify_base called while still connected\n", 0x42uLL, 1uLL, __stderrp);
  }

  _Block_release(*(this + 5));
  _Block_release(*(this + 7));
  _Block_release(*(this + 6));
  dispatch_release(*(this + 4));

  RemoteBuffer::~RemoteBuffer(this);
}

void dyld_process_info_notify_base::disconnect(dyld_process_info_notify_base *this)
{
  v1 = atomic_load(this + 80);
  if (v1)
  {
    atomic_store(0, this + 80);
    v3 = *(this + 8);
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_release(*(this + 8));
      *(this + 8) = 0;
    }

    if (*(this + 6))
    {
      v4 = *(this + 4);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = ___ZN29dyld_process_info_notify_base10disconnectEv_block_invoke;
      block[3] = &__block_descriptor_tmp_5;
      block[4] = this;
      dispatch_async(v4, block);
    }
  }
}

void dyld_process_info_notify_base::release(atomic_uint *this)
{
  if (!atomic_fetch_add(this + 6, 0xFFFFFFFF))
  {
    block[7] = v1;
    block[8] = v2;
    dyld_process_info_notify_base::disconnect(this);
    v4 = *(this + 4);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZN29dyld_process_info_notify_base7releaseEv_block_invoke;
    block[3] = &__block_descriptor_tmp_6;
    block[4] = this;
    dispatch_async(v4, block);
  }
}

void ___ZN29dyld_process_info_notify_base7releaseEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dyld_process_info_notify_base::~dyld_process_info_notify_base(v1);

    free(v2);
  }
}

void dyld_process_info_notify_base::replyToMonitoredProcess(dyld_process_info_notify_base *this, mach_msg_header_t *a2)
{
  v4 = a2->msgh_bits & 0x1F;
  msgh_remote_port = a2->msgh_remote_port;
  *&msg.msgh_voucher_port = 0;
  msg.msgh_remote_port = msgh_remote_port;
  msg.msgh_local_port = 0;
  msg.msgh_bits = v4;
  msg.msgh_size = 24;
  if (mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0))
  {
    dyld_process_info_notify_base::disconnect(this);
  }

  else
  {
    a2->msgh_remote_port = 0;
  }
}

unsigned __int8 *_dyld_process_info_notify(uint64_t a1, uint64_t a2, const void *a3, const void *a4, kern_return_t *a5)
{
  v10 = dyldFrameworkIntrospectionVtable();
  if (v10)
  {
    v11 = *(v10 + 320);

    return v11(a1, a2, a3, a4, a5);
  }

  else
  {
    v16 = 0;
    if (!a5)
    {
      a5 = &v16;
    }

    *a5 = 0;
    v13 = malloc_type_malloc(0x58uLL, 0xB9E3D5DuLL);
    result = dyld_process_info_notify_base::dyld_process_info_notify_base(v13, a2, a3, a4, a1, a5);
    v14 = atomic_load(result + 80);
    if ((v14 & 1) == 0)
    {
      dyld_process_info_notify_base::~dyld_process_info_notify_base(result);
      free(v15);
      return 0;
    }
  }

  return result;
}

void *_dyld_process_info_notify_main(uint64_t a1, const void *a2)
{
  v4 = dyldFrameworkIntrospectionVtable();
  if (v4)
  {
    v5 = *(v4 + 328);

    return v5(a1, a2);
  }

  else
  {

    return dyld_process_info_notify_base::setNotifyMain(a1, a2);
  }
}

void *dyld_process_info_notify_base::setNotifyMain(uint64_t a1, const void *a2)
{
  result = *(a1 + 56);
  if (result != a2)
  {
    _Block_release(result);
    result = _Block_copy(a2);
    *(a1 + 56) = result;
  }

  return result;
}

uint64_t _dyld_process_info_notify_retain(uint64_t a1)
{
  result = dyldFrameworkIntrospectionVtable();
  if (result)
  {
    v3 = *(result + 336);

    return v3(a1);
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void _dyld_process_info_notify_release(atomic_uint *a1)
{
  v2 = dyldFrameworkIntrospectionVtable();
  if (v2)
  {
    v3 = *(v2 + 344);

    v3(a1);
  }

  else
  {

    dyld_process_info_notify_base::release(a1);
  }
}

BOOL macho_cpu_type_for_arch_name(const char *archName, cpu_type_t *type, cpu_subtype_t *subtype)
{
  v6 = strlen(archName);
  mach_o::Architecture::byName(archName, v6, &v10);
  v7 = mach_o::Architecture::operator==(&v10, mach_o::Architecture::invalid);
  if (!v7)
  {
    v8 = HIDWORD(v10);
    *type = v10;
    *subtype = v8;
  }

  return !v7;
}

const char *__cdecl macho_arch_name_for_mach_header(const mach_header *mh)
{
  if (!mh)
  {
    mh = _dyld_get_prog_image_header();
  }

  cpusubtype = mh->cpusubtype;
  cputype = mh->cputype;

  return macho_arch_name_for_cpu_type(cputype, cpusubtype);
}

int macho_for_each_slice(const char *path, void *callback)
{
  v3 = open(path, 0, 0);
  if (v3 == -1)
  {
    return *__error();
  }

  v4 = v3;
  v5 = macho_for_each_slice_in_fd(v3, callback);
  close(v4);
  return v5;
}

int macho_for_each_slice_in_fd(int fd, void *callback)
{
  if (fstat(fd, &v14) == -1)
  {
    return *__error();
  }

  if ((v14.st_mode & 0x104) == 0 && !geteuid())
  {
    return 13;
  }

  v4 = mmap(0, v14.st_size, 1, 2, fd, 0);
  if (v4 == -1)
  {
    return *__error();
  }

  v5 = v4;
  st_size = v14.st_size;
  v7 = mach_o::Universal::isUniversal(v4, v14.st_size);
  if (!v7)
  {
    v10 = mach_o::Header::isMachO(v5, st_size);
    if (!v10)
    {
      v9 = 79;
      goto LABEL_16;
    }

    LOBYTE(v13) = 0;
    if (callback)
    {
      (*(callback + 2))(callback, v10, 0, st_size, &v13);
    }

LABEL_14:
    v9 = 0;
LABEL_16:
    munmap(v5, v14.st_size);
    return v9;
  }

  v8 = v7;
  mach_o::Universal::valid(v7, st_size, &v13);
  if (!v13)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = __macho_for_each_slice_in_fd_block_invoke;
    v12[3] = &unk_1EEE9BE48;
    v12[4] = callback;
    v12[5] = v5;
    v12[6] = st_size;
    mach_o::Universal::forEachSlice(v8, v12);
    mach_o::Error::~Error(&v13);
    goto LABEL_14;
  }

  mach_o::Error::~Error(&v13);
  return 88;
}

uint64_t __macho_for_each_slice_in_fd_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a2 + 8), *(a2 + 8) - *(a1 + 40), *(a2 + 16), a3);
  }

  return result;
}

int macho_best_slice(const char *path, void *bestSlice)
{
  v3 = open(path, 0, 0);
  if (v3 == -1)
  {
    return *__error();
  }

  v4 = v3;
  v5 = macho_best_slice_in_fd(v3, bestSlice);
  close(v4);
  return v5;
}

int macho_best_slice_in_fd(int fd, void *bestSlice)
{
  mach_o::Platform::current(&v10);
  v5 = mach_o::GradedArchitectures::currentLaunch(0, v4);
  v6 = mach_o::GradedArchitectures::currentLoad(1, 0);
  v8 = v10;
  v9 = v11;
  return macho_best_slice_fd_internal(fd, &v8, v5, v6, 0, bestSlice);
}

uint64_t macho_best_slice_fd_internal(int a1, int8x8_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (fstat(a1, &v31) == -1)
  {
    return *__error();
  }

  v12 = mmap(0, v31.st_size, 1, 2, a1, 0);
  if (v12 == -1)
  {
    return *__error();
  }

  v13 = v12;
  st_size = v31.st_size;
  v15 = mach_o::Universal::isUniversal(v12, v31.st_size);
  if (!v15)
  {
    v17 = mach_o::Header::isMachO(v13, st_size);
    if (v17)
    {
      v18 = v17;
      if (dyld3::MachOFile::isMainExecutable(v17) && (mach_o::Header::arch(v18, &v27), mach_o::GradedArchitectures::isCompatible(a3, &v27, a5)) && (mach_o::Platform::current(&v27), mach_o::Header::builtForPlatform(v18, &v27, 0)) || (mach_o::Header::arch(v18, &v27), mach_o::GradedArchitectures::isCompatible(a4, &v27, a5)) && (v27 = *a2, LODWORD(v28) = a2[1].i32[0], mach_o::Header::loadableIntoProcess(v18, &v27, &unk_1801109D5, 0)))
      {
        if (a6)
        {
          (*(a6 + 16))(a6, v18, 0, st_size);
          a6 = 0;
        }
      }

      else
      {
        a6 = 86;
      }
    }

    else
    {
      a6 = 79;
    }

    goto LABEL_28;
  }

  v16 = v15;
  mach_o::Universal::valid(v15, st_size, &v30);
  if (!v30)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    mach_o::Universal::bestSlice(v16, a3, a5, &v27);
    mach_o::Universal::bestSlice(v16, a4, a5, &v24);
    v19 = mach_o::Header::isMachO(v28, v29);
    v20 = mach_o::Header::isMachO(v25, v26);
    if (v19 && dyld3::MachOFile::isMainExecutable(v19))
    {
      if (a6)
      {
        v21 = &v28;
        v22 = &v29;
LABEL_26:
        (*(a6 + 16))(a6, *v21, *v21 - v13, *v22);
        a6 = 0;
      }
    }

    else if (v20 && !dyld3::MachOFile::isMainExecutable(v20))
    {
      if (a6)
      {
        v21 = &v25;
        v22 = &v26;
        goto LABEL_26;
      }
    }

    else
    {
      a6 = 86;
    }

    mach_o::Error::~Error(&v30);
LABEL_28:
    munmap(v13, v31.st_size);
    return a6;
  }

  mach_o::Error::~Error(&v30);
  return 88;
}

uint64_t macho_for_each_dependent_dylib(mach_header *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    mach_o::Image::Image(v12, a1, a2, 0);
    if (!mach_o::Header::hasMachOMagic(v12[0]))
    {
      return 79;
    }

    mach_o::Image::validate(v12, &v7);
    v4 = v7;
    mach_o::Error::~Error(&v7);
    if (v4)
    {
      return 88;
    }

    v6 = v12[0];
    v7 = _NSConcreteStackBlock;
    v8 = 0x40000000;
  }

  else
  {
    mach_o::Image::Image(v12, a1);
    v6 = v12[0];
    v7 = _NSConcreteStackBlock;
    v8 = 0x40000000;
  }

  v9 = ___ZL19iterateDependenciesRKN6mach_o5ImageEU13block_pointerFvPKcS4_PbE_block_invoke;
  v10 = &unk_1EEE9BEC0;
  v11 = a3;
  mach_o::Header::forEachLinkedDylib(v6, &v7);
  return 0;
}

uint64_t macho_for_each_imported_symbol(mach_header *this, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    mach_o::Image::Image(v8, this, a2, 0);
    if (mach_o::Header::hasMachOMagic(v8[0]))
    {
      mach_o::Image::validate(v8, &v7);
      v5 = v7;
      mach_o::Error::~Error(&v7);
      if (v5)
      {
        return 88;
      }

      goto LABEL_7;
    }
  }

  else if (mach_o::Header::hasMachOMagic(this))
  {
    mach_o::Image::Image(v8, this);
LABEL_7:
    iterateImportedSymbols(v8, a3);
    return 0;
  }

  return 79;
}

void iterateImportedSymbols(void *a1, uint64_t a2)
{
  v4 = a1[10];
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZL22iterateImportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_bPbE_block_invoke;
    v9[3] = &unk_1EEE9BEE8;
    v9[4] = a2;
    v9[5] = a1;
    mach_o::ChainedFixups::forEachBindTarget(v4, v9);
  }

  else
  {
    v5 = a1[7];
    if (v5)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZL22iterateImportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_bPbE_block_invoke_2;
      v8[3] = &unk_1EEE9BF10;
      v8[4] = a2;
      v8[5] = a1;
      mach_o::BindOpcodes::forEachBindTarget(v5, v8, &__block_literal_global_0);
    }

    v6 = a1[8];
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 0x40000000;
      v7[2] = ___ZL22iterateImportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_bPbE_block_invoke_4;
      v7[3] = &unk_1EEE9BF58;
      v7[4] = a2;
      v7[5] = a1;
      mach_o::BindOpcodes::forEachBindTarget(v6, v7, &__block_literal_global_21);
    }
  }
}

uint64_t macho_for_each_exported_symbol(mach_header *this, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    mach_o::Image::Image(v8, this, a2, 0);
    if (mach_o::Header::hasMachOMagic(v8[0]))
    {
      mach_o::Image::validate(v8, &v7);
      v5 = v7;
      mach_o::Error::~Error(&v7);
      if (v5)
      {
        return 88;
      }

      goto LABEL_7;
    }
  }

  else if (mach_o::Header::hasMachOMagic(this))
  {
    mach_o::Image::Image(v8, this);
LABEL_7:
    iterateExportedSymbols(v8, a3);
    return 0;
  }

  return 79;
}

void iterateExportedSymbols(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5[5] = _NSConcreteStackBlock;
    v5[6] = 0x40000000;
    v5[7] = ___ZL22iterateExportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_PbE_block_invoke;
    v5[8] = &unk_1EEE9BFA0;
    v5[9] = a2;
    mach_o::ExportsTrie::forEachExportedSymbol(v3);
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 0x40000000;
      v5[2] = ___ZL22iterateExportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_PbE_block_invoke_2;
      v5[3] = &unk_1EEE9BFC8;
      v5[4] = a2;
      mach_o::NListSymbolTable::forEachExportedSymbol(v4, v5);
    }
  }
}

uint64_t macho_for_each_defined_rpath(mach_header *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    mach_o::Image::Image(v11, a1, a2, 0);
    if (!mach_o::Header::hasMachOMagic(v11[0]))
    {
      return 79;
    }

    mach_o::Image::validate(v11, &v9);
    v4 = v9;
    mach_o::Error::~Error(&v9);
    if (v4)
    {
      return 88;
    }

    v6 = v11[0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = __macho_for_each_defined_rpath_block_invoke_2;
    v8[3] = &unk_1EEE9BE98;
    v8[4] = a3;
    v7 = v8;
  }

  else
  {
    mach_o::Image::Image(v11, a1);
    v6 = v11[0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = __macho_for_each_defined_rpath_block_invoke;
    v10[3] = &unk_1EEE9BE70;
    v10[4] = a3;
    v7 = v10;
  }

  mach_o::Header::forEachRPath(v6, v7);
  return 0;
}

uint64_t macho_source_version(mach_o::Header *a1, void *a2)
{
  result = mach_o::Header::hasMachOMagic(a1);
  if (result)
  {
    v5 = 0;
    result = mach_o::Header::sourceVersion(a1, &v5);
    if (result)
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t macho_for_each_runnable_arch_name(uint64_t a1)
{
  v5 = 0;
  if (hasFile("/System/Cryptexes/OS/System/Library/Caches/com.apple.dyld/dyld_shared_cache_arm64e"))
  {
    result = (*(a1 + 16))(a1, "arm64e", &v5);
  }

  else
  {
    v3 = hasFile("/System/Cryptexes/OS/System/Library/Caches/com.apple.dyld/dyld_shared_cache_arm64");
    v4 = *(a1 + 16);
    if (v3)
    {
      return v4(a1, "arm64", &v5);
    }

    result = v4(a1, "arm64e", &v5);
  }

  if (v5)
  {
    return result;
  }

  v4 = *(a1 + 16);
  return v4(a1, "arm64", &v5);
}

BOOL hasFile(const char *a1)
{
  if (!stat(a1, &v3))
  {
    return 1;
  }

  strlcpy(__dst, a1, 0x400uLL);
  strlcat(__dst, ".development", 0x400uLL);
  return stat(__dst, &v3) == 0;
}

uint64_t ___ZL19iterateDependenciesRKN6mach_o5ImageEU13block_pointerFvPKcS4_PbE_block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  mach_o::LinkedDylibAttributes::toString(&v5, __dst);
  return (*(*(a1 + 32) + 16))();
}

uint64_t ___ZL22iterateImportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_bPbE_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 32);
  v7 = mach_o::Header::libOrdinalName(**(a1 + 40), *(a2 + 4));
  v8 = *(v6 + 16);
  v9 = *(a2 + 20);

  return v8(v6, v5, v7, v9, a3);
}

uint64_t ___ZL22iterateImportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_bPbE_block_invoke_2(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 32);
  v7 = mach_o::Header::libOrdinalName(**(a1 + 40), *(a2 + 4));
  v8 = *(v6 + 16);
  v9 = *(a2 + 20);

  return v8(v6, v5, v7, v9, a3);
}

uint64_t ___ZL22iterateImportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_bPbE_block_invoke_4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 32);
  v7 = mach_o::Header::libOrdinalName(**(a1 + 40), *(a2 + 4));
  v8 = *(v6 + 16);
  v9 = *(a2 + 20);

  return v8(v6, v5, v7, v9, a3);
}

uint64_t ___ZL22iterateExportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_PbE_block_invoke(uint64_t a1, mach_o::Symbol *this, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *this;
  v6 = exportSymbolAttrString(this);
  v7 = *(v4 + 16);

  return v7(v4, v5, v6, a3);
}

const char *exportSymbolAttrString(const mach_o::Symbol *this)
{
  if (*(this + 35))
  {
    return "weak-def";
  }

  v5[3] = v1;
  v5[4] = v2;
  if (*(this + 32) == 5)
  {
    return "thread-local";
  }

  v5[0] = 0;
  if (mach_o::Symbol::isDynamicResolver(this, v5))
  {
    return "dynamic-resolver";
  }

  if (mach_o::Symbol::isAbsolute(this, v5))
  {
    return "absolute";
  }

  return &unk_1801109D5;
}

uint64_t ___ZL22iterateExportedSymbolsRKN6mach_o5ImageEU13block_pointerFvPKcS4_PbE_block_invoke_2(uint64_t a1, mach_o::Symbol *this, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *this;
  v7 = exportSymbolAttrString(this);
  v8 = *(v5 + 16);

  return v8(v5, v6, v7, a4);
}

uint64_t ___Z32dyldFrameworkIntrospectionVtablev_block_invoke()
{
  bufsize = 4096;
  _NSGetExecutablePath(buf, &bufsize);
  v0 = basename(buf);
  if (!strcmp(v0, "ReportCrash"))
  {
    v2 = MEMORY[0xFFFFF4084];
    v1 = v2 & (arc4random_uniform(0x64u) < 0x15);
  }

  else
  {
    v1 = 1;
  }

  if (!strcmp(v0, "com.apple.dt.instruments.dtsecurity") || !strcmp(v0, "DTServiceHub") || !strcmp(v0, "trace") || !strcmp(v0, "trace_internal") || !strcmp(v0, "apple-hwtrace") || !strcmp(v0, "Xcode"))
  {
    v1 = 0;
  }

  v3 = ((*(*dyld4::gAPIs + 1040))(dyld4::gAPIs) & 0x80000) == 0;
  result = (*(*dyld4::gAPIs + 1040))();
  if ((result & 0x40000) != 0 || (v3 & v1) != 0)
  {
    v5 = dlopen("/System/Library/PrivateFrameworks/Dyld.framework/Dyld", 4);
    result = dlsym(v5, "_dyld_legacy_introspection_vtable");
    dyldFrameworkIntrospectionVtable(void)::vtable = result;
  }

  return result;
}

uint64_t dyld_process_create_for_current_task()
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v0 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 16);

    return v0();
  }

  else
  {
    v2 = mach_task_self_;

    return dyld_process_create_for_task(v2, 0);
  }
}

uint64_t dyld_process_register_for_image_notifications(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v8 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 224);

    return v8(a1, a2, a3, a4);
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = &v11;
    }

    return dyld4::Atlas::Process::registerAtlasChangedEventHandler(a1, v10, a3, a4);
  }
}

uint64_t dyld_process_register_for_event_notification(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v10 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 232);

    return v10(a1, a2, a3, a4, a5);
  }

  else
  {
    v13 = 0;
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = &v13;
    }

    return dyld4::Atlas::Process::registerEventHandler(a1, v12, a3, a4, a5);
  }
}

void dyld_process_unregister_for_notification(dyld4::Atlas::Process *this, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 240);

    v4(this, a2);
  }

  else
  {

    dyld4::Atlas::Process::unregisterEventHandler(this, a2);
  }
}

void *dyld_process_snapshot_create_from_data(lsl::MemoryManager *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v8 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 40);

    return v8(this, a2, a3, a4);
  }

  else
  {
    if (a3)
    {
      dyld_process_snapshot_create_from_data_cold_2();
    }

    if (a4)
    {
      dyld_process_snapshot_create_from_data_cold_3();
    }

    v10 = lsl::MemoryManager::defaultAllocator(this);
    v11 = lsl::MemoryManager::memoryManager(v10);
    v12 = lsl::MemoryManager::defaultAllocator(v11);
    if (defaultFileManager(void)::onceToken != -1)
    {
      dyld_process_create_for_task_cold_2();
    }

    v13 = defaultFileManager(void)::sFileManager;
    v14 = lsl::Allocator::aligned_alloc(v12, 8uLL, 0x70uLL);
    dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(v14, v10, v13, 0, this, a2);
    v16 = 0;
    lsl::UniquePtr<dyld4::Atlas::ProcessSnapshot>::~UniquePtr(&v16, v15);
    return v14;
  }
}

void dyld_process_snapshot_for_each_image(dyld4::Atlas::ProcessSnapshot *this, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 56);

    v4(this, a2);
  }

  else if (dyld4::Atlas::ProcessSnapshot::valid(this))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = __dyld_process_snapshot_for_each_image_block_invoke;
    v5[3] = &unk_1EEE9C010;
    v5[4] = a2;
    dyld4::Atlas::ProcessSnapshot::forEachImage(this, v5);
  }
}

uint64_t dyld_shared_cache_pin_mapping(dyld4::Atlas::SharedCache *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 64);

    return v2(this);
  }

  else
  {

    return dyld4::Atlas::SharedCache::pin(this);
  }
}

uint64_t dyld_shared_cache_unpin_mapping(dyld4::Atlas::SharedCache *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 72);

    return v2(this);
  }

  else
  {

    return dyld4::Atlas::SharedCache::unpin(this);
  }
}

uint64_t dyld_shared_cache_for_each_file(uint64_t a1, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 120);

    return v4(a1, a2);
  }

  else
  {

    return dyld4::Atlas::SharedCache::forEachFilePath(a1, a2);
  }
}

void dyld_shared_cache_for_each_image(void *a1, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 128);

    v4(a1, a2);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = __dyld_shared_cache_for_each_image_block_invoke;
    v5[3] = &unk_1EEE9C038;
    v5[4] = a2;
    dyld4::Atlas::SharedCache::forEachImage(a1, v5);
  }
}

void dyld_for_each_installed_shared_cache_with_system_path(lsl::MemoryManager *this, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 136);

    v4(this, a2);
  }

  else
  {
    v5 = lsl::MemoryManager::defaultAllocator(this);
    if (defaultFileManager(void)::onceToken != -1)
    {
      dyld_process_create_for_task_cold_2();
    }

    dyld4::Atlas::SharedCache::forEachInstalledCacheWithSystemPath(v5);
  }
}

void dyld_for_each_installed_shared_cache(lsl::MemoryManager *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 144);

    v2(this);
  }

  else
  {
    v3 = lsl::MemoryManager::defaultAllocator(this);
    if (defaultFileManager(void)::onceToken != -1)
    {
      dyld_process_create_for_task_cold_2();
    }

    dyld4::Atlas::SharedCache::forEachInstalledCacheWithSystemPath(v3);
  }
}

uint64_t dyld_shared_cache_for_file(lsl::MemoryManager *this, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 152);

    return v4(this, a2);
  }

  else
  {
    v6 = lsl::MemoryManager::defaultAllocator(this);
    if (defaultFileManager(void)::onceToken != -1)
    {
      dyld_process_create_for_task_cold_2();
    }

    dyld4::FileManager::fileRecordForPath(defaultFileManager(void)::sFileManager, v6, this, v10);
    dyld4::Atlas::SharedCache::createForFileRecord(v6, v10, &v9);
    v8 = v9;
    if (v9)
    {
      (*(a2 + 16))(a2, v9);
    }

    lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(&v9, v7);
    dyld4::FileRecord::~FileRecord(v10);
    return v8 != 0;
  }
}

uint64_t dyld_image_content_for_segment(dyld4::Atlas::Image *a1, uint64_t a2, uint64_t a3)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v6 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 160);

    return v6(a1, a2, a3);
  }

  else
  {

    return dyld4::Atlas::Image::contentForSegment(a1, a2, a3);
  }
}

uint64_t dyld_image_content_for_section(dyld4::Atlas::Image *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v8 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 168);

    return v8(a1, a2, a3, a4);
  }

  else
  {

    return dyld4::Atlas::Image::contentForSection(a1, a2, a3, a4);
  }
}

uint64_t dyld_image_copy_uuid(dyld4::Atlas::Image *this, __int128 *a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 176);

    return v4(this, a2);
  }

  else
  {
    v6 = dyld4::Atlas::Image::uuid(this);
    v10 = *v6;
    if (v10)
    {
      goto LABEL_13;
    }

    v7 = 0;
    do
    {
      v8 = v7;
      if (v7 == 15)
      {
        break;
      }

      v9 = *(&v10 + ++v7);
    }

    while (!*(&v10 + v8 + 1));
    if (v8 <= 0xE)
    {
LABEL_13:
      *a2 = *v6;
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t dyld_image_for_each_segment_info(dyld4::Atlas::Image *a1, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 184);

    return v4(a1, a2);
  }

  else
  {

    return dyld4::Atlas::Image::forEachSegment(a1, a2);
  }
}

uint64_t dyld_image_for_each_section_info(dyld4::Atlas::Image *a1, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 192);

    return v4(a1, a2);
  }

  else
  {

    return dyld4::Atlas::Image::forEachSection(a1, a2);
  }
}

uint64_t dyld_image_get_installname(dyld4::Atlas::Image *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 200);

    return v2(this);
  }

  else
  {

    return dyld4::Atlas::Image::installname(this);
  }
}

uint64_t dyld_image_get_file_path(dyld4::Atlas::Image *this)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v2 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 208);

    return v2(this);
  }

  else
  {

    return dyld4::Atlas::Image::filename(this);
  }
}

uint64_t dyld_image_local_nlist_content_4Symbolication(dyld4::Atlas::Image *this, uint64_t a2)
{
  if (dyldFrameworkIntrospectionVtable(void)::onceToken != -1)
  {
    dyldFrameworkIntrospectionVtable();
  }

  if (dyldFrameworkIntrospectionVtable(void)::vtable)
  {
    v4 = *(dyldFrameworkIntrospectionVtable(void)::vtable + 216);

    return v4(this, a2);
  }

  else
  {
    v6 = dyld4::Atlas::Image::sharedCache(this);
    if (v6)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2000000000;
      v28 = 1;
      dyld4::Atlas::SharedCache::localSymbols(v6, &v24);
      if (v24)
      {
        v7 = dyld4::Atlas::Image::sharedCacheVMOffset(this);
        v8 = dyld4::Atlas::SharedCacheLocals::localInfo(v24);
        v9 = dyld4::Atlas::SharedCacheLocals::use64BitDylibOffsets(v24);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 0x40000000;
        v17 = __dyld_image_local_nlist_content_4Symbolication_block_invoke;
        v18 = &unk_1EEE9C0B0;
        v21 = v7;
        v22 = this;
        v23 = v8;
        v19 = a2;
        v20 = &v25;
        v10 = *(v8 + 16);
        if (v9)
        {
          v29 = 0;
          if (*(v8 + 20))
          {
            v11 = 0;
            v12 = (v10 + v8 + 12);
            do
            {
              v17(v16, *(v12 - 3), *(v12 - 1), *v12, &v29);
              if (v29 == 1)
              {
                break;
              }

              v12 += 4;
              ++v11;
            }

            while (v11 < *(v8 + 20));
          }
        }

        else
        {
          v29 = 0;
          if (*(v8 + 20))
          {
            v14 = 0;
            v15 = (v10 + v8 + 8);
            do
            {
              v17(v16, *(v15 - 2), *(v15 - 1), *v15, &v29);
              if (v29 == 1)
              {
                break;
              }

              v15 += 3;
              ++v14;
            }

            while (v14 < *(v8 + 20));
          }
        }

        v13 = *(v26 + 24);
        lsl::UniquePtr<dyld4::Atlas::SharedCacheLocals>::~UniquePtr(&v24);
      }

      else
      {
        lsl::UniquePtr<dyld4::Atlas::SharedCacheLocals>::~UniquePtr(&v24);
        v13 = *(v26 + 24);
      }

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v13 = 0;
    }

    return v13 & 1;
  }
}

char *__dyld_image_local_nlist_content_4Symbolication_block_invoke(char *result, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 6) == a2)
  {
    v7 = result;
    if (dyld4::Atlas::Image::pointerSize(*(result + 7)) == 8)
    {
      v8 = *(v7 + 8);
      v9 = &v8[4 * a3] + *v8;
    }

    else
    {
      result = dyld4::Atlas::Image::pointerSize(*(v7 + 7));
      if (result != 4)
      {
        *(*(*(v7 + 5) + 8) + 24) = 0;
        goto LABEL_8;
      }

      v8 = *(v7 + 8);
      v10 = &v8[3 * a3] + *v8;
    }

    v11 = v8 + v8[2];
    result = (*(*(v7 + 4) + 16))();
LABEL_8:
    *a5 = 1;
  }

  return result;
}

uint64_t ___ZL18defaultFileManagerv_block_invoke(lsl::MemoryManager *a1)
{
  v1 = lsl::MemoryManager::memoryManager(a1);
  v2 = lsl::MemoryManager::defaultAllocator(v1);
  v3 = lsl::MemoryManager::memoryManager(v2);
  v4 = lsl::MemoryManager::defaultAllocator(v3);
  v5 = lsl::Allocator::aligned_alloc(v2, 8uLL, 0x20uLL);
  result = dyld4::FileManager::FileManager(v5, v4, 0);
  defaultFileManager(void)::sFileManager = result;
  return result;
}

void **lsl::UniquePtr<dyld4::Atlas::SharedCacheLocals>::~UniquePtr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[3];
    if (v3 && *(v2 + 32) == 1)
    {
      dyld4::Atlas::Mapper::unmap(v2[1], v3, v2[2]);
    }

    if (*v2)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(*v2, v3);
    }

    lsl::Allocator::freeObject(*a1, v3);
  }

  return a1;
}

void *Diagnostics::clearError(void *this)
{
  v1 = this;
  if (*this)
  {
    this = MEMORY[0x1865C8D90](mach_task_self_, *this, *(this + 2));
  }

  *v1 = 0;
  v1[1] = 0;
  return this;
}

uint64_t Diagnostics::error(uint64_t a1, const char *a2, va_list a3)
{
  v14 = a3;
  Diagnostics::clearError(a1);
  v13 = v14;
  __str = 0;
  v5 = vsnprintf(&__str, 1uLL, a2, v14);
  if (v5 <= -2)
  {
    Diagnostics::error();
  }

  v6 = v5;
  v7 = (vm_page_size + v5) & -vm_page_size;
  v11 = 0;
  if (vm_allocate(mach_task_self_, &v11, v7, 1006632961))
  {
    Diagnostics::error();
  }

  v8 = v11;
  if (v11)
  {
    *a1 = v11;
    v9 = v8;
  }

  else
  {
    v9 = 0;
    *a1 = 0;
  }

  result = vsnprintf(v9, v7, a2, v13);
  if ((result & 0x80000000) != 0)
  {
    Diagnostics::error();
  }

  if (result != v6)
  {
    Diagnostics::error();
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v6 + 1;
  return result;
}

uint64_t Diagnostics::appendError(Diagnostics *this, const char *__format, ...)
{
  va_start(va, __format);
  if (*this && (v4 = *this, *(this + 3)) && *(this + 2))
  {
    va_copy(v16, va);
    va_copy(v17, va);
    __str = 0;
    v5 = vsnprintf(&__str, 1uLL, __format, va);
    if (v5 <= -2)
    {
      Diagnostics::appendError();
    }

    v6 = v5;
    v7 = *(this + 3);
    v8 = *(this + 2) - v7;
    if (v8 >= v5 + 1)
    {
      v12 = *this;
    }

    else
    {
      v9 = (v7 + v5 + vm_page_size) & -vm_page_size;
      __dst = 0;
      if (vm_allocate(mach_task_self_, &__dst, v9, 1006632961))
      {
        Diagnostics::appendError();
      }

      if (*this)
      {
        v10 = *this;
      }

      else
      {
        v10 = 0;
      }

      memcpy(__dst, v10, *(this + 2));
      if (*this)
      {
        v13 = *this;
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x1865C8D90](mach_task_self_, v13, *(this + 2));
      if (__dst)
      {
        v12 = __dst;
      }

      else
      {
        v12 = 0;
      }

      *this = v12;
      *(this + 2) = v9;
      LODWORD(v7) = *(this + 3);
      v8 = v9 - v7;
    }

    result = vsnprintf(&v12[(v7 - 1)], v8, __format, v16);
    if ((result & 0x80000000) != 0)
    {
      Diagnostics::appendError();
    }

    if (result != v6)
    {
      Diagnostics::appendError();
    }

    *(this + 3) += v6;
  }

  else
  {
    va_copy(v17, va);
    return Diagnostics::error(this, __format, va);
  }

  return result;
}

void *Diagnostics::errorMessage(Diagnostics *this)
{
  v1 = *this;
  result = &unk_1801109D5;
  if (v1)
  {
    return v1;
  }

  return result;
}

size_t dyld4::Utils::concatenatePaths(dyld4::Utils *this, char *a2, const char *a3)
{
  if (*(this + strlen(this) - 1) == 47 && *a2 == 47)
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

void *dyld3::OverflowSafeArray<char,4294967295ull>::resize(void *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    if (v2 <= a2)
    {
      v5 = result[1];
      if (v5 < a2)
      {
        v6 = result[3];
        v7 = result[4];
        v8 = 2 * v5;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        v9 = (v8 + vm_page_size - 1) & -vm_page_size;
        result[4] = v9;
        v10 = vm_allocate(mach_task_self_, result + 3, v9, 1006632961);
        if (v10)
        {
          dyld3::OverflowSafeArray<char,4294967295ull>::resize(v12, v4 + 4, v10);
        }

        result = memcpy(v4[3], *v4, v4[2]);
        v11 = v4[4];
        *v4 = v4[3];
        v4[1] = v11;
        if (v6)
        {
          result = MEMORY[0x1865C8D90](mach_task_self_, v6, v7);
        }
      }
    }

    v4[2] = a2;
  }

  return result;
}

uint64_t DyldSharedCache::forEachRegion(uint64_t a1, uint64_t a2)
{
  result = strncmp(a1, "dyld_v1", 7uLL);
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