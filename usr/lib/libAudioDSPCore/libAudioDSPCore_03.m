void *applesauce::CF::URLRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

uint64_t IR::IRDataLoader::Implementation::getCustomLayoutFromTag@<X0>(IR::IRDataLoader::Implementation *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 27);
  result = this + 216;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = result;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != result && *(v7 + 32) <= a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a3, *(v7 + 40), *(v7 + 48), *(v7 + 48) - *(v7 + 40));
    v11 = 1;
  }

  else
  {
LABEL_9:
    v11 = 0;
    *a3 = 0;
  }

  *(a3 + 24) = v11;
  return result;
}

uint64_t IR::IRDataLoader::Implementation::getTagFromCustomLayout(uint64_t a1, int **a2)
{
  v2 = *(a1 + 208);
  if (v2 != (a1 + 216))
  {
    v3 = *a2;
    v4 = **a2;
    do
    {
      v5 = v2[5];
      if (*v5 == v4)
      {
        if (v4 == 0x10000)
        {
          if (v5[1] == v3[1])
          {
LABEL_29:
            v14 = *(v2 + 8);
            v13 = 0x100000000;
            return v14 | v13;
          }
        }

        else
        {
          if (v4)
          {
            goto LABEL_29;
          }

          v6 = v5[2];
          if (v6 == v3[2])
          {
            if (!v6)
            {
              goto LABEL_29;
            }

            v7 = v5 + 3;
            v8 = (*a2 + 3);
            while (*v7 == *v8)
            {
              if (*v7 == 100)
              {
                v9 = *v7 == *v8 && *(v7 + 1) == *(v8 + 8);
                if (!v9 || v7[4] != *(v8 + 16))
                {
                  break;
                }
              }

              v8 += 20;
              v7 += 5;
              if (!--v6)
              {
                goto LABEL_29;
              }
            }
          }
        }
      }

      v11 = v2[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2[2];
          v9 = *v12 == v2;
          v2 = v12;
        }

        while (!v9);
      }

      v2 = v12;
    }

    while (v12 != (a1 + 216));
  }

  v13 = 0;
  v14 = 0;
  return v14 | v13;
}

uint64_t IR::IRDataLoader::Implementation::registerCustomLayoutIfNecessary(IR::IRDataLoader::Implementation *this, const AudioChannelLayout *a2)
{
  mChannelLayoutTag = a2->mChannelLayoutTag;
  if ((mChannelLayoutTag & 0xFFFEFFFF) != 0)
  {
    return mChannelLayoutTag;
  }

  if (!*(this + 28))
  {
    v30 = -268435456;
    mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
    if (mNumberChannelDescriptions <= 1)
    {
      mNumberChannelDescriptions = 1;
    }

    std::vector<char>::vector[abi:ne200100](__dst, 20 * mNumberChannelDescriptions + 12);
    memcpy(*__dst, a2, 20 * a2->mNumberChannelDescriptions + 12);
    __p[0] = &v30;
    v24 = std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 208, &v30);
    v25 = v24[5];
    if (v25)
    {
      v24[6] = v25;
      operator delete(v25);
      v24[5] = 0;
      v24[6] = 0;
      v24[7] = 0;
    }

    *(v24 + 5) = *__dst;
    v24[7] = *&__dst[16];
    return v30;
  }

  v6 = *(this + 26);
  v7 = (this + 216);
  if (v6 == (this + 216))
  {
LABEL_33:
    v20 = *v7;
    if (*v7)
    {
      do
      {
        v21 = v20;
        v20 = *(v20 + 8);
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v7[2];
        v14 = *v21 == v7;
        v7 = v21;
      }

      while (v14);
    }

    mChannelLayoutTag = (*(v21 + 32) + 1);
    v22 = a2->mNumberChannelDescriptions;
    if (v22 <= 1)
    {
      v22 = 1;
    }

    std::vector<char>::vector[abi:ne200100](__p, 20 * v22 + 12);
    memcpy(__p[0], a2, 20 * a2->mNumberChannelDescriptions + 12);
    *__dst = mChannelLayoutTag;
    *&__dst[8] = *__p;
    v29 = v27;
    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,CA::ChannelLayout>>(this + 208, __dst);
    if (*&__dst[8])
    {
      *&__dst[16] = *&__dst[8];
      operator delete(*&__dst[8]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return mChannelLayoutTag;
  }

  while (1)
  {
    v8 = a2->mNumberChannelDescriptions;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    std::vector<char>::vector[abi:ne200100](__dst, 20 * v8 + 12);
    memcpy(*__dst, a2, 20 * a2->mNumberChannelDescriptions + 12);
    v9 = v6[5];
    v10 = *v9;
    if (*v9 != **__dst)
    {
      goto LABEL_25;
    }

    if (v10 != 0x10000)
    {
      break;
    }

    v16 = v9[1];
    v17 = *(*__dst + 4);
    *&__dst[8] = *__dst;
    operator delete(*__dst);
    if (v16 == v17)
    {
      return *(v6 + 8);
    }

LABEL_27:
    v18 = v6[1];
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = v6[2];
        v14 = *v19 == v6;
        v6 = v19;
      }

      while (!v14);
    }

    v6 = v19;
    if (v19 == v7)
    {
      goto LABEL_33;
    }
  }

  if (v10)
  {
    goto LABEL_48;
  }

  v11 = v9[2];
  if (v11 != *(*__dst + 8))
  {
LABEL_25:
    *&__dst[8] = *__dst;
    operator delete(*__dst);
    goto LABEL_27;
  }

  if (v11)
  {
    v12 = v9 + 3;
    v13 = *__dst + 12;
    while (*v12 == *v13)
    {
      if (*v12 == 100)
      {
        v14 = *v12 == *v13 && *(v12 + 1) == *(v13 + 8);
        if (!v14 || v12[4] != *(v13 + 16))
        {
          break;
        }
      }

      v13 += 20;
      v12 += 5;
      if (!--v11)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_25;
  }

LABEL_48:
  *&__dst[8] = *__dst;
  operator delete(*__dst);
  return *(v6 + 8);
}

void sub_296BD21F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::IRDataLoader::Implementation::getFilterLength(IR::IRDataLoader::Implementation *a1, int a2, float a3)
{
  IR::getPresetDataAttributes(a2, &v7);
  v8 = a3;
  FilterLength = IR::IRDataLoader::Implementation::getFilterLength(a1, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return FilterLength;
}

void sub_296BD22CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::getFilterLength(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2)
{
  std::recursive_mutex::lock((this + 24));
  FilterLengthPrivate = IR::IRDataLoader::Implementation::getFilterLengthPrivate(this, a2);
  std::recursive_mutex::unlock((this + 24));
  return FilterLengthPrivate;
}

uint64_t IR::IRDataLoader::Implementation::getFilterLengthPrivate(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRDataLoader::Implementation::getLoadedIR(this, a2, 0, &v8);
  if (v8)
  {
    FilterLength = IR::IRData::getFilterLength(v8);
  }

  else
  {
    IR::IRDataLoader::Implementation::cacheMiss("getFilterLengthPrivate", v3);
    FilterLength = IR::IRData::getFilterLength(a2, v5);
  }

  v6 = FilterLength;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

void sub_296BD23A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IR::IRDataLoader::Implementation::cacheMiss(IR::IRDataLoader::Implementation *this, const char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    atomic_fetch_add(IR::IRDataLoader::Implementation::cacheMiss(char const*)::sCacheMisses, 1u);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      v3 = atomic_load(IR::IRDataLoader::Implementation::cacheMiss(char const*)::sCacheMisses);
      v4 = 136315394;
      v5 = this;
      v6 = 1024;
      v7 = v3;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "IRDataLoader: cache miss in %s, total = %u", &v4, 0x12u);
    }
  }
}

uint64_t IR::IRDataLoader::Implementation::getNumSpatialPoints(IR::IRDataLoader::Implementation *a1, int a2, float a3)
{
  IR::getPresetDataAttributes(a2, &v7);
  v8 = a3;
  NumSpatialPoints = IR::IRDataLoader::Implementation::getNumSpatialPoints(a1, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return NumSpatialPoints;
}

void sub_296BD2530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::getNumSpatialPoints(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2)
{
  std::recursive_mutex::lock((this + 24));
  IR::IRDataLoader::Implementation::getLoadedIR(this, a2, 0, &v9);
  if (v9)
  {
    NumSpatialPoints = IR::IRData::getNumSpatialPoints(v9);
  }

  else
  {
    IR::IRDataLoader::Implementation::cacheMiss("getNumSpatialPoints", v4);
    NumSpatialPoints = IR::IRData::getNumSpatialPoints(a2, v6);
  }

  v7 = NumSpatialPoints;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::recursive_mutex::unlock((this + 24));
  return v7;
}

uint64_t IR::IRDataLoader::Implementation::getNumFiltersPerSpatialPoint(IR::IRDataLoader::Implementation *a1, int a2, float a3)
{
  IR::getPresetDataAttributes(a2, &v7);
  v8 = a3;
  NumFiltersPerSpatialPoint = IR::IRDataLoader::Implementation::getNumFiltersPerSpatialPoint(a1, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return NumFiltersPerSpatialPoint;
}

void sub_296BD268C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::getNumFiltersPerSpatialPoint(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2)
{
  std::recursive_mutex::lock((this + 24));
  IR::IRDataLoader::Implementation::getLoadedIR(this, a2, 0, &v9);
  if (v9)
  {
    NumFiltersPerSpatialPoint = IR::IRData::getNumFiltersPerSpatialPoint(v9);
  }

  else
  {
    IR::IRDataLoader::Implementation::cacheMiss("getNumFiltersPerSpatialPoint", v4);
    NumFiltersPerSpatialPoint = IR::IRData::getNumFiltersPerSpatialPoint(a2, v6);
  }

  v7 = NumFiltersPerSpatialPoint;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::recursive_mutex::unlock((this + 24));
  return v7;
}

uint64_t IR::IRDataLoader::Implementation::getModelingDelay(IR::IRDataLoader::Implementation *a1, int a2, float a3)
{
  IR::getPresetDataAttributes(a2, &v7);
  v8 = a3;
  ModelingDelay = IR::IRDataLoader::Implementation::getModelingDelay(a1, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return ModelingDelay;
}

void sub_296BD27E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::getModelingDelay(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2)
{
  std::recursive_mutex::lock((this + 24));
  IR::IRDataLoader::Implementation::getLoadedIR(this, a2, 0, &v9);
  if (v9)
  {
    ModelingDelay = IR::IRData::getModelingDelay(v9);
  }

  else
  {
    IR::IRDataLoader::Implementation::cacheMiss("getModelingDelay", v4);
    ModelingDelay = IR::IRData::getModelingDelay(a2, v6);
  }

  v7 = ModelingDelay;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::recursive_mutex::unlock((this + 24));
  return v7;
}

void IR::IRDataLoader::Implementation::getUserData(IR::IRDataLoader::Implementation *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  IR::getPresetDataAttributes(a2, v5);
  IR::IRDataLoader::Implementation::getUserData(a1, v5, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5[0])
  {
    CFRelease(v5[0]);
  }
}

void sub_296BD2934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::getUserData(IR::IRDataLoader::Implementation *this@<X0>, const IR::IRDataAttributes *a2@<X1>, void *a3@<X8>)
{
  std::recursive_mutex::lock((this + 24));
  IR::IRDataLoader::Implementation::getLoadedIR(this, a2, &v15);
  if (!v15)
  {
LABEL_15:
    IR::IRDataLoader::Implementation::cacheMiss("getUserData", v6);
    IR::IRData::getUserData(a2, v8);
    goto LABEL_16;
  }

  IR::IRData::getFilePlistDict(v15, &cf);
  v13 = 0;
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v11 = v7;
  IR::IRData::extractIRDataTypePlist(&v11, *(a2 + 10), &v13, &v12);
  if (v11)
  {
    CFRelease(v11);
  }

  if (!v12)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_15;
  }

  v9 = 0;
  v10 = @"UserData";
  applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(v12, &v10, &v9, a3);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::recursive_mutex::unlock((this + 24));
}

void sub_296BD2A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a14);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::recursive_mutex::unlock((v16 + 24));
  _Unwind_Resume(a1);
}

applesauce::CF::DictionaryRef *applesauce::CF::DictionaryRef::DictionaryRef(applesauce::CF::DictionaryRef *this, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *this = v3;
  return this;
}

void IR::IRDataLoader::Implementation::getGlobalUserData(IR::IRDataLoader::Implementation *a1, int a2)
{
  IR::getPresetDataAttributes(a2, v3);
  IR::IRDataLoader::Implementation::getGlobalUserData(a1, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3[0])
  {
    CFRelease(v3[0]);
  }
}

void sub_296BD2B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::getGlobalUserData(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2)
{
  std::recursive_mutex::lock((this + 24));
  IR::IRData::getGlobalUserData(a2, v4);

  std::recursive_mutex::unlock((this + 24));
}

void IR::IRDataLoader::Implementation::getIRDataTypes(IR::IRDataLoader::Implementation *a1, int a2)
{
  IR::getPresetDataAttributes(a2, v3);
  IR::IRDataLoader::Implementation::getIRDataTypes(a1, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3[0])
  {
    CFRelease(v3[0]);
  }
}

void sub_296BD2C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::getIRDataTypes(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2)
{
  std::recursive_mutex::lock((this + 24));
  IR::IRData::getIRDataTypes(a2, v4);

  std::recursive_mutex::unlock((this + 24));
}

uint64_t IR::IRDataLoader::Implementation::getAudioChannelLayoutTag(IR::IRDataLoader::Implementation *a1, int a2)
{
  IR::getPresetDataAttributes(a2, v5);
  AudioChannelLayoutTag = IR::IRDataLoader::Implementation::getAudioChannelLayoutTag(a1, v5, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5[0])
  {
    CFRelease(v5[0]);
  }

  return AudioChannelLayoutTag;
}

void sub_296BD2D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::getAudioChannelLayoutTag(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2, int a3)
{
  std::recursive_mutex::lock((this + 24));
  AudioChannelLayoutTagPrivate = IR::IRDataLoader::Implementation::getAudioChannelLayoutTagPrivate(this, a2, a3);
  std::recursive_mutex::unlock((this + 24));
  return AudioChannelLayoutTagPrivate;
}

uint64_t IR::IRDataLoader::Implementation::getAudioChannelLayoutTagPrivate(IR::IRDataLoader::Implementation *this, const IR::IRDataAttributes *a2, int a3)
{
  IR::IRDataLoader::Implementation::getLoadedIR(this, a2, 0, &v10);
  if (v10)
  {
    if (a3)
    {
      OriginalAudioChannelLayoutTag = IR::IRData::getOriginalAudioChannelLayoutTag(v10);
    }

    else
    {
      OriginalAudioChannelLayoutTag = IR::IRData::getAudioChannelLayoutTag(v10);
    }
  }

  else
  {
    IR::IRDataLoader::Implementation::cacheMiss("getAudioChannelLayoutTagPrivate", v5);
    OriginalAudioChannelLayoutTag = IR::IRData::getAudioChannelLayoutTag(a2, v7);
  }

  v8 = OriginalAudioChannelLayoutTag;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8;
}

void sub_296BD2E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::IRDataLoader::Implementation::getAudioChannelLayoutTag(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = v2;
  IR::IRDataAttributes::IRDataAttributes(v7, &v6, 0, 0, 2, 0, 0.0);
  AudioChannelLayoutTag = IR::IRData::getAudioChannelLayoutTag(v7, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7[0])
  {
    CFRelease(v7[0]);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return AudioChannelLayoutTag;
}

void sub_296BD2F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  IR::IRDataAttributes::~IRDataAttributes(&a10);
  applesauce::CF::URLRef::~URLRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::isConsolidatedIR(uint64_t a1, int a2)
{
  IR::getPresetDataAttributes(a2, v5);
  isConsolidatedIR = IR::IRData::isConsolidatedIR(v5, v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5[0])
  {
    CFRelease(v5[0]);
  }

  return isConsolidatedIR;
}

void sub_296BD300C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::hasType(uint64_t a1, int a2, uint64_t a3)
{
  IR::getPresetDataAttributes(a2, v6);
  hasType = IR::IRData::hasType(v6, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6[0])
  {
    CFRelease(v6[0]);
  }

  return hasType;
}

void sub_296BD30A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

BOOL IR::IRDataLoader::Implementation::fileExists(uint64_t a1, int a2)
{
  IR::getPresetDataAttributes(a2, v5);
  v3 = IR::IRDataLoader::Implementation::fileExists(v2, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5[0])
  {
    CFRelease(v5[0]);
  }

  return v3;
}

void sub_296BD313C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

BOOL IR::IRDataLoader::Implementation::fileExists(IR::IRDataLoader::Implementation *this, CFTypeRef *a2)
{
  IR::getFilePtr(a2, 0, v4);
  v2 = v4[0];
  if (v4[0])
  {
    (v4[1])(v4[0]);
  }

  return v2 != 0;
}

BOOL IR::IRDataLoader::Implementation::fileExists(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = v2;
  v3 = IR::IRDataAttributes::IRDataAttributes(v7, &v6, 0, 0, 2, 0, 0.0);
  v4 = IR::IRDataLoader::Implementation::fileExists(v3, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7[0])
  {
    CFRelease(v7[0]);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

void sub_296BD3260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  IR::IRDataAttributes::~IRDataAttributes(&a10);
  applesauce::CF::URLRef::~URLRef(&a9);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::loadAndDecode(IR::IRDataAttributes *a1@<X2>, IR::IRDataLoader::Implementation *a2@<X0>, char *a3@<X1>, void *a4@<X8>)
{
  v83 = *MEMORY[0x29EDCA608];
  IR::IRDataAttributes::IRDataAttributes(&v70, a1);
  v8 = cf;
  cf = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v74 = 0;
  v73 = 0;
  v9 = v75;
  v75 = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v76 = 0;
  v77 = 0;
  std::string::basic_string[abi:ne200100]<0>(v79, "");
  v67 = 0;
  memset(__p, 0, 24);
  IR::IRDataLoader::Implementation::load(&v68, a2, v79, &v70, &v67, __p);
  if (__p[0].__r_.__value_.__r.__words[0])
  {
    __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79[2]) < 0)
  {
    operator delete(v79[0]);
  }

  AudioChannelLayoutTagPrivate = IR::IRDataLoader::Implementation::getAudioChannelLayoutTagPrivate(a2, &v70, 0);
  IsSupportedHOA = ChannelLayoutTagIsSupportedHOA(AudioChannelLayoutTagPrivate);
  if (!IsSupportedHOA)
  {
    IRDataLog = IR::getIRDataLog(IsSupportedHOA);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_ERROR))
    {
      if (a3[23] >= 0)
      {
        v31 = a3;
      }

      else
      {
        v31 = *a3;
      }

      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](exception, "Could not construct");
      }

      applesauce::CF::get_filesystem_path(*a1, __p);
      CStringPtr = CFStringGetCStringPtr(__p[0].__r_.__value_.__l.__data_, 0x8000100u);
      LODWORD(v79[0]) = 136315650;
      *(v79 + 4) = v31;
      WORD2(v79[1]) = 2080;
      *(&v79[1] + 6) = "loadAndDecode";
      HIWORD(v79[2]) = 2080;
      v79[3] = CStringPtr;
      _os_log_error_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_ERROR, "%s%s: Not HOA IR: %s, ", v79, 0x20u);
      if (__p[0].__r_.__value_.__r.__words[0])
      {
        CFRelease(__p[0].__r_.__value_.__l.__data_);
      }
    }

    v66 = 0;
    memset(v79, 0, 24);
    IR::IRDataLoader::Implementation::loadPrivate(a2, a3, &v70, &v66, v79);
    if (v79[0])
    {
      v79[1] = v79[0];
      operator delete(v79[0]);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    goto LABEL_113;
  }

  AudioChannelLayoutTagAmbisonicOrder = GetAudioChannelLayoutTagAmbisonicOrder(AudioChannelLayoutTagPrivate);
  Normalization = HOA::getNormalization(AudioChannelLayoutTagPrivate);
  v65 = 0uLL;
  v14 = *(a1 + 11);
  if (v14)
  {
    CFRetain(*(a1 + 11));
  }

  v56 = v14;
  IR::IRDataAttributes::IRDataAttributes(v57, &v56, 128, 1, *(a1 + 5), 0, *(a1 + 2));
  v15 = v56;
  if (v56)
  {
    CFRelease(v56);
  }

  if (v57[0])
  {
    v16 = *(a1 + 8);
    if (v16)
    {
      CFRetain(*(a1 + 8));
      v55 = v16;
      IR::IRDataAttributes::IRDataAttributes(v79, &v55, 128, 1, *(a1 + 5), 0, *(a1 + 2));
      if (v55)
      {
        CFRelease(v55);
      }

      v17 = IR::IRDataLoader::Implementation::getAudioChannelLayoutTagPrivate(a2, v79, 1);
      if (ChannelLayoutTagIsSupportedHOA(v17))
      {
        v58 = *(a1 + 72);
        v18 = v57[0];
        v19 = *(a1 + 8);
        v57[0] = v19;
        if (v19)
        {
          CFRetain(v19);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        v20 = v63;
        v21 = *(a1 + 11);
        v63 = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

      if (v82)
      {
        CFRelease(v82);
      }

      if (v81)
      {
        CFRelease(v81);
      }

      if (v80)
      {
        CFRelease(v80);
      }

      if (v79[0])
      {
        CFRelease(v79[0]);
      }
    }

    else
    {
      v59 = *(a1 + 24);
    }

    v60 = *(a1 + 26);
    v61 = *(a1 + 112);
    v54 = 0;
    memset(v79, 0, 24);
    IR::IRDataLoader::Implementation::loadPrivate(a2, a3, v57, &v54, v79);
    v26 = *&__p[0].__r_.__value_.__l.__data_;
    *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
    v27 = *(&v65 + 1);
    v65 = v26;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      if (__p[0].__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
      }
    }

    if (v79[0])
    {
      v79[1] = v79[0];
      operator delete(v79[0]);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    v28 = v65;
    if (!v65)
    {
      v29 = IR::getIRDataLog(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        IR::IRDataLoader::Implementation::loadAndDecode();
      }

LABEL_60:
      *a4 = 0;
      a4[1] = 0;
      goto LABEL_103;
    }

LABEL_102:
    NumFiltersPerSpatialPoint = IR::IRData::getNumFiltersPerSpatialPoint(v28);
    IR::HOA2BinauralIRRenderer::HOA2BinauralIRRenderer(__p, v57, &v70, NumFiltersPerSpatialPoint);
    SampleRate = IR::IRData::getSampleRate(v65);
    FilterLengthPrivate = IR::IRDataLoader::Implementation::getFilterLengthPrivate(a2, &v70);
    IR::HOA2BinauralIRRenderer::initialize(__p, AudioChannelLayoutTagAmbisonicOrder, SampleRate, 1, Normalization, FilterLengthPrivate, *(a1 + 11));
  }

  v23 = *(a1 + 25);
  if (!v23)
  {
    v30 = IR::getIRDataLog(v15);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::Implementation::loadAndDecode();
    }

    goto LABEL_60;
  }

  v24 = *(a2 + 27);
  if (!v24)
  {
LABEL_46:
    GetStringFromAudioChannelLayoutTag(*(a1 + 25), __p);
    goto LABEL_68;
  }

  while (1)
  {
    v25 = *(v24 + 8);
    if (v23 >= v25)
    {
      break;
    }

LABEL_45:
    v24 = *v24;
    if (!v24)
    {
      goto LABEL_46;
    }
  }

  if (v25 < v23)
  {
    ++v24;
    goto LABEL_45;
  }

  std::to_string(__p, *(a1 + 25));
LABEL_68:
  v33 = std::string::insert(__p, 0, "/", 1uLL);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v79[2] = v33->__r_.__value_.__r.__words[2];
  *v79 = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79[2]) >= 0)
  {
    v35 = v79;
  }

  else
  {
    v35 = v79[0];
  }

  if (SHIBYTE(v79[2]) >= 0)
  {
    v36 = HIBYTE(v79[2]);
  }

  else
  {
    v36 = v79[1];
  }

  v37 = CFURLCreateWithBytes(0, v35, v36, 0, 0);
  __p[0].__r_.__value_.__r.__words[0] = v37;
  if (!v37)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v52, "Could not construct");
  }

  v38 = v57[0];
  v57[0] = v37;
  __p[0].__r_.__value_.__r.__words[0] = v38;
  if (v38)
  {
    CFRelease(v38);
  }

  IR::IRDataLoader::Implementation::getLoadedIR(a2, v57, 0, __p);
  v40 = *(&v65 + 1);
  v65 = *&__p[0].__r_.__value_.__l.__data_;
  if (!v40)
  {
    if (!__p[0].__r_.__value_.__r.__words[0])
    {
      goto LABEL_83;
    }

LABEL_99:
    if (SHIBYTE(v79[2]) < 0)
    {
      operator delete(v79[0]);
    }

    v28 = v65;
    goto LABEL_102;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  if (v65)
  {
    goto LABEL_99;
  }

LABEL_83:
  IR::IRData::Implementation::generatePanningIRData(v23, v71, 1, AudioChannelLayoutTagAmbisonicOrder, Normalization, v39, __p);
  v41 = *&__p[0].__r_.__value_.__l.__data_;
  *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
  size = *(&v65 + 1);
  v65 = v41;
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
    size = __p[0].__r_.__value_.__l.__size_;
    if (__p[0].__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
    }

    if (v65)
    {
LABEL_87:
      v43 = *(a2 + 1);
      if (v43 >= *(a2 + 2))
      {
        v46 = std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__emplace_back_slow_path<IR::IRDataAttributes&,std::shared_ptr<IR::IRData const> &>(a2, v57, &v65);
      }

      else
      {
        v44 = IR::IRDataAttributes::IRDataAttributes(v43, v57);
        v45 = *(&v65 + 1);
        *(v44 + 19) = v65;
        *(v44 + 20) = v45;
        if (v45)
        {
          atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
        }

        v46 = v44 + 168;
      }

      *(a2 + 1) = v46;
      goto LABEL_99;
    }
  }

  else if (v41)
  {
    goto LABEL_87;
  }

  v47 = IR::getIRDataLog(size);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    IR::IRDataLoader::Implementation::loadAndDecode();
  }

  *a4 = 0;
  a4[1] = 0;
  if (SHIBYTE(v79[2]) < 0)
  {
    operator delete(v79[0]);
  }

LABEL_103:
  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v57[0])
  {
    CFRelease(v57[0]);
  }

  if (*(&v65 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v65 + 1));
  }

LABEL_113:
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v70)
  {
    CFRelease(v70);
  }
}

void sub_296BD4318(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (STACK[0x5D8])
  {
    CFRelease(STACK[0x5D8]);
  }

  if (STACK[0x5B0])
  {
    CFRelease(STACK[0x5B0]);
  }

  if (STACK[0x598])
  {
    CFRelease(STACK[0x598]);
  }

  if (STACK[0x558])
  {
    CFRelease(STACK[0x558]);
  }

  if (STACK[0x5F8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x5F8]);
  }

  if (STACK[0x618])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x618]);
  }

  if (STACK[0x6A0])
  {
    CFRelease(STACK[0x6A0]);
  }

  if (STACK[0x678])
  {
    CFRelease(STACK[0x678]);
  }

  if (STACK[0x660])
  {
    CFRelease(STACK[0x660]);
  }

  if (STACK[0x620])
  {
    CFRelease(STACK[0x620]);
  }

  _Unwind_Resume(a1);
}

void IR::IRDataAttributes::description(IR::IRDataAttributes *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v237 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    LODWORD(v228.__r_.__value_.__l.__data_) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v228.__r_.__value_.__s.__data_[8], "Bilinear");
    v229 = 1;
    std::string::basic_string[abi:ne200100]<0>(v230, "VBAP");
    v231 = 2;
    std::string::basic_string[abi:ne200100]<0>(v232, "Auto");
    std::map<IR::IRSphericalInterpolation,std::string>::map[abi:ne200100](&v227, &v228, 3);
    for (i = 0; i != -96; i -= 32)
    {
      if (v232[i + 23] < 0)
      {
        operator delete(*&v232[i]);
      }
    }

    LODWORD(v228.__r_.__value_.__l.__data_) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v228.__r_.__value_.__s.__data_[8], "Unknown");
    v229 = 1;
    std::string::basic_string[abi:ne200100]<0>(v230, "DirectIR");
    v231 = 2;
    std::string::basic_string[abi:ne200100]<0>(v232, "RoomIR");
    v233 = 3;
    std::string::basic_string[abi:ne200100]<0>(v234, "EarlyRoomIR");
    v235 = 4;
    std::string::basic_string[abi:ne200100]<0>(v236, "DirectivityIR");
    std::map<IR::IRDataType,std::string>::map[abi:ne200100](&v226, &v228, 5);
    for (j = 0; j != -160; j -= 32)
    {
      if (v236[j + 23] < 0)
      {
        operator delete(*&v236[j]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v187, "URL: ");
    v7 = CFCopyDescription(*this);
    v184.__r_.__value_.__r.__words[0] = v7;
    applesauce::CF::details::CFString_get_value<true>(v7, v185);
    if (v7)
    {
      CFRelease(v7);
    }

    if ((v186 & 0x80u) == 0)
    {
      v8 = v185;
    }

    else
    {
      v8 = v185[0];
    }

    if ((v186 & 0x80u) == 0)
    {
      v9 = v186;
    }

    else
    {
      v9 = v185[1];
    }

    v10 = std::string::append(&v187, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v188.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v188.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v188, ", Sample rate: ", 0xFuLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v189.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v189.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v184, *(this + 2));
    if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v184;
    }

    else
    {
      v14 = v184.__r_.__value_.__r.__words[0];
    }

    if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v184.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v184.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v189, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v190.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v190.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v190, ", fftBlockSize: ", 0x10uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v191.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v191.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v183, *(this + 3));
    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v183;
    }

    else
    {
      v20 = v183.__r_.__value_.__r.__words[0];
    }

    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v183.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v191, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v192.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v192.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v192, ", Mixed TF: ", 0xCuLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v193.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v193.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v182, *(this + 16));
    if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v182;
    }

    else
    {
      v26 = v182.__r_.__value_.__r.__words[0];
    }

    if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v182.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v182.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v193, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v194.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v194.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v194, ", sphereInterp: ", 0x10uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v195.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v195.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::map<IR::IRSphericalInterpolation,std::string>::at(&v227, this + 5);
    v33 = *(v32 + 23);
    if (v33 >= 0)
    {
      v34 = v32;
    }

    else
    {
      v34 = *v32;
    }

    if (v33 >= 0)
    {
      v35 = *(v32 + 23);
    }

    else
    {
      v35 = v32[1];
    }

    v36 = std::string::append(&v195, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v196.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v196.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v196, ", Window: (", 0xBuLL);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v197.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v197.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    IR::IRDataWindow::description((this + 24), &v181);
    if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v181;
    }

    else
    {
      v40 = v181.__r_.__value_.__r.__words[0];
    }

    if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v41 = v181.__r_.__value_.__l.__size_;
    }

    v42 = std::string::append(&v197, v40, v41);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v198.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v198.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v198, ")", 1uLL);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v199.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v199.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v199, ", irType: ", 0xAuLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v200.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v200.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::map<IR::IRSphericalInterpolation,std::string>::at(&v226, this + 10);
    v49 = *(v48 + 23);
    if (v49 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = *v48;
    }

    if (v49 >= 0)
    {
      v51 = *(v48 + 23);
    }

    else
    {
      v51 = v48[1];
    }

    v52 = std::string::append(&v200, v50, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v201.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v201.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v201, ", orientation: ", 0xFuLL);
    v55 = *&v54->__r_.__value_.__l.__data_;
    v202.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v202.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v180, *(this + 11));
    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v180;
    }

    else
    {
      v56 = v180.__r_.__value_.__r.__words[0];
    }

    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v180.__r_.__value_.__l.__size_;
    }

    v58 = std::string::append(&v202, v56, v57);
    v59 = *&v58->__r_.__value_.__l.__data_;
    v203.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
    *&v203.__r_.__value_.__l.__data_ = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    v60 = std::string::append(&v203, ", personalizedHRIR: (", 0x15uLL);
    v61 = *&v60->__r_.__value_.__l.__data_;
    v204.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&v204.__r_.__value_.__l.__data_ = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    IR::PersonalizedHRIRFetchingParams::description((this + 48), &v179);
    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v179;
    }

    else
    {
      v62 = v179.__r_.__value_.__r.__words[0];
    }

    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = v179.__r_.__value_.__l.__size_;
    }

    v64 = std::string::append(&v204, v62, v63);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v205.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v205.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v205, ")", 1uLL);
    v67 = *&v66->__r_.__value_.__l.__data_;
    v206.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&v206.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    v68 = std::string::append(&v206, ", hoaHOADecoderURL: ", 0x14uLL);
    v69 = *&v68->__r_.__value_.__l.__data_;
    v207.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
    *&v207.__r_.__value_.__l.__data_ = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    v70 = *(this + 8);
    if (v70)
    {
      v71 = CFCopyDescription(v70);
      v176.__r_.__value_.__r.__words[0] = v71;
      applesauce::CF::details::CFString_get_value<true>(v71, v177);
      if (v71)
      {
        CFRelease(v71);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v177, "nullptr");
    }

    if ((v178 & 0x80u) == 0)
    {
      v109 = v177;
    }

    else
    {
      v109 = v177[0];
    }

    if ((v178 & 0x80u) == 0)
    {
      v110 = v178;
    }

    else
    {
      v110 = v177[1];
    }

    v111 = std::string::append(&v207, v109, v110);
    v112 = *&v111->__r_.__value_.__l.__data_;
    v208.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
    *&v208.__r_.__value_.__l.__data_ = v112;
    v111->__r_.__value_.__l.__size_ = 0;
    v111->__r_.__value_.__r.__words[2] = 0;
    v111->__r_.__value_.__r.__words[0] = 0;
    v113 = std::string::append(&v208, ", hoaHOADecoderIRWindow: (", 0x1AuLL);
    v114 = *&v113->__r_.__value_.__l.__data_;
    v209.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
    *&v209.__r_.__value_.__l.__data_ = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    IR::IRDataWindow::description((this + 72), &v176);
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = &v176;
    }

    else
    {
      v115 = v176.__r_.__value_.__r.__words[0];
    }

    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v116 = v176.__r_.__value_.__l.__size_;
    }

    v117 = std::string::append(&v209, v115, v116);
    v118 = *&v117->__r_.__value_.__l.__data_;
    v210.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
    *&v210.__r_.__value_.__l.__data_ = v118;
    v117->__r_.__value_.__l.__size_ = 0;
    v117->__r_.__value_.__r.__words[2] = 0;
    v117->__r_.__value_.__r.__words[0] = 0;
    v119 = std::string::append(&v210, ")", 1uLL);
    v120 = *&v119->__r_.__value_.__l.__data_;
    v211.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
    *&v211.__r_.__value_.__l.__data_ = v120;
    v119->__r_.__value_.__l.__size_ = 0;
    v119->__r_.__value_.__r.__words[2] = 0;
    v119->__r_.__value_.__r.__words[0] = 0;
    v121 = std::string::append(&v211, ", hoaDecoderURL: ", 0x11uLL);
    v122 = *&v121->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v122;
    v121->__r_.__value_.__l.__size_ = 0;
    v121->__r_.__value_.__r.__words[2] = 0;
    v121->__r_.__value_.__r.__words[0] = 0;
    v123 = *(this + 11);
    if (v123)
    {
      v124 = CFCopyDescription(v123);
      v173.__r_.__value_.__r.__words[0] = v124;
      applesauce::CF::details::CFString_get_value<true>(v124, v174);
      if (v124)
      {
        CFRelease(v124);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v174, "nullptr");
    }

    if ((v175 & 0x80u) == 0)
    {
      v125 = v174;
    }

    else
    {
      v125 = v174[0];
    }

    if ((v175 & 0x80u) == 0)
    {
      v126 = v175;
    }

    else
    {
      v126 = v174[1];
    }

    v127 = std::string::append(&__p, v125, v126);
    v128 = *&v127->__r_.__value_.__l.__data_;
    v213.__r_.__value_.__r.__words[2] = v127->__r_.__value_.__r.__words[2];
    *&v213.__r_.__value_.__l.__data_ = v128;
    v127->__r_.__value_.__l.__size_ = 0;
    v127->__r_.__value_.__r.__words[2] = 0;
    v127->__r_.__value_.__r.__words[0] = 0;
    v129 = std::string::append(&v213, ", hoaDecoderACLTag: ", 0x14uLL);
    v130 = *&v129->__r_.__value_.__l.__data_;
    v214.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
    *&v214.__r_.__value_.__l.__data_ = v130;
    v129->__r_.__value_.__l.__size_ = 0;
    v129->__r_.__value_.__r.__words[2] = 0;
    v129->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v173, *(this + 25));
    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v131 = &v173;
    }

    else
    {
      v131 = v173.__r_.__value_.__r.__words[0];
    }

    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v132 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v132 = v173.__r_.__value_.__l.__size_;
    }

    v133 = std::string::append(&v214, v131, v132);
    v134 = *&v133->__r_.__value_.__l.__data_;
    v215.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
    *&v215.__r_.__value_.__l.__data_ = v134;
    v133->__r_.__value_.__l.__size_ = 0;
    v133->__r_.__value_.__r.__words[2] = 0;
    v133->__r_.__value_.__r.__words[0] = 0;
    v135 = std::string::append(&v215, ", hoaDecoderPersonalizedHRIR: (", 0x1FuLL);
    v136 = *&v135->__r_.__value_.__l.__data_;
    v216.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
    *&v216.__r_.__value_.__l.__data_ = v136;
    v135->__r_.__value_.__l.__size_ = 0;
    v135->__r_.__value_.__r.__words[2] = 0;
    v135->__r_.__value_.__r.__words[0] = 0;
    IR::PersonalizedHRIRFetchingParams::description((this + 104), &v172);
    if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v137 = &v172;
    }

    else
    {
      v137 = v172.__r_.__value_.__r.__words[0];
    }

    if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v138 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v138 = v172.__r_.__value_.__l.__size_;
    }

    v139 = std::string::append(&v216, v137, v138);
    v140 = *&v139->__r_.__value_.__l.__data_;
    v217.__r_.__value_.__r.__words[2] = v139->__r_.__value_.__r.__words[2];
    *&v217.__r_.__value_.__l.__data_ = v140;
    v139->__r_.__value_.__l.__size_ = 0;
    v139->__r_.__value_.__r.__words[2] = 0;
    v139->__r_.__value_.__r.__words[0] = 0;
    v141 = std::string::append(&v217, ")", 1uLL);
    v142 = *&v141->__r_.__value_.__l.__data_;
    v218.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
    *&v218.__r_.__value_.__l.__data_ = v142;
    v141->__r_.__value_.__l.__size_ = 0;
    v141->__r_.__value_.__r.__words[2] = 0;
    v141->__r_.__value_.__r.__words[0] = 0;
    v143 = std::string::append(&v218, ", expDecayCoeff: ", 0x11uLL);
    v144 = *&v143->__r_.__value_.__l.__data_;
    v219.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
    *&v219.__r_.__value_.__l.__data_ = v144;
    v143->__r_.__value_.__l.__size_ = 0;
    v143->__r_.__value_.__r.__words[2] = 0;
    v143->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v171, *(this + 29));
    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v145 = &v171;
    }

    else
    {
      v145 = v171.__r_.__value_.__r.__words[0];
    }

    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = HIBYTE(v171.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v146 = v171.__r_.__value_.__l.__size_;
    }

    v147 = std::string::append(&v219, v145, v146);
    v148 = *&v147->__r_.__value_.__l.__data_;
    v220.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
    *&v220.__r_.__value_.__l.__data_ = v148;
    v147->__r_.__value_.__l.__size_ = 0;
    v147->__r_.__value_.__r.__words[2] = 0;
    v147->__r_.__value_.__r.__words[0] = 0;
    v149 = std::string::append(&v220, ", computeAverageIR: ", 0x14uLL);
    v150 = *&v149->__r_.__value_.__l.__data_;
    v221.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
    *&v221.__r_.__value_.__l.__data_ = v150;
    v149->__r_.__value_.__l.__size_ = 0;
    v149->__r_.__value_.__r.__words[2] = 0;
    v149->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v170, *(this + 120));
    if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v151 = &v170;
    }

    else
    {
      v151 = v170.__r_.__value_.__r.__words[0];
    }

    if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v152 = HIBYTE(v170.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v152 = v170.__r_.__value_.__l.__size_;
    }

    v153 = std::string::append(&v221, v151, v152);
    v154 = *&v153->__r_.__value_.__l.__data_;
    v222.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
    *&v222.__r_.__value_.__l.__data_ = v154;
    v153->__r_.__value_.__l.__size_ = 0;
    v153->__r_.__value_.__r.__words[2] = 0;
    v153->__r_.__value_.__r.__words[0] = 0;
    v155 = std::string::append(&v222, ", Bake Delays: ", 0xFuLL);
    v156 = *&v155->__r_.__value_.__l.__data_;
    v223.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
    *&v223.__r_.__value_.__l.__data_ = v156;
    v155->__r_.__value_.__l.__size_ = 0;
    v155->__r_.__value_.__r.__words[2] = 0;
    v155->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v169, *(this + 17));
    if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v157 = &v169;
    }

    else
    {
      v157 = v169.__r_.__value_.__r.__words[0];
    }

    if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v158 = HIBYTE(v169.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v158 = v169.__r_.__value_.__l.__size_;
    }

    v159 = std::string::append(&v223, v157, v158);
    v160 = *&v159->__r_.__value_.__l.__data_;
    v224.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
    *&v224.__r_.__value_.__l.__data_ = v160;
    v159->__r_.__value_.__l.__size_ = 0;
    v159->__r_.__value_.__r.__words[2] = 0;
    v159->__r_.__value_.__r.__words[0] = 0;
    v161 = std::string::append(&v224, ", convolutionOptimizationParameters: (", 0x26uLL);
    v162 = *&v161->__r_.__value_.__l.__data_;
    v225.__r_.__value_.__r.__words[2] = v161->__r_.__value_.__r.__words[2];
    *&v225.__r_.__value_.__l.__data_ = v162;
    v161->__r_.__value_.__l.__size_ = 0;
    v161->__r_.__value_.__r.__words[2] = 0;
    v161->__r_.__value_.__r.__words[0] = 0;
    IR::FFTFilterOptimizationParameters::description((this + 136), &v168);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v163 = &v168;
    }

    else
    {
      v163 = v168.__r_.__value_.__r.__words[0];
    }

    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v164 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v164 = v168.__r_.__value_.__l.__size_;
    }

    v165 = std::string::append(&v225, v163, v164);
    v166 = *&v165->__r_.__value_.__l.__data_;
    v228.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
    *&v228.__r_.__value_.__l.__data_ = v166;
    v165->__r_.__value_.__l.__size_ = 0;
    v165->__r_.__value_.__r.__words[2] = 0;
    v165->__r_.__value_.__r.__words[0] = 0;
    v167 = std::string::append(&v228, ")", 1uLL);
    *a3 = *v167;
    v167->__r_.__value_.__l.__size_ = 0;
    v167->__r_.__value_.__r.__words[2] = 0;
    v167->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v168.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v224.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v169.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v223.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v221.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v220.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v171.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v219.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v172.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v173.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v214.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v213.__r_.__value_.__l.__data_);
    }

    if (v175 < 0)
    {
      operator delete(v174[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v211.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v210.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v176.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v209.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v208.__r_.__value_.__l.__data_);
    }

    if (v178 < 0)
    {
      operator delete(v177[0]);
    }

    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v205.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v203.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v180.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v202.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v201.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v200.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v199.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v198.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v181.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v196.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v195.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v194.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v182.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v193.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v192.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v183.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v191.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v184.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (v186 < 0)
    {
      operator delete(v185[0]);
    }

    if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v187.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::destroy(&v226, v226.__r_.__value_.__l.__size_);
    std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::destroy(&v227, v227.__r_.__value_.__l.__size_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v217, "Sample rate: ");
    std::to_string(&v216, *(this + 2));
    if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v216;
    }

    else
    {
      v72 = v216.__r_.__value_.__r.__words[0];
    }

    if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = HIBYTE(v216.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v73 = v216.__r_.__value_.__l.__size_;
    }

    v74 = std::string::append(&v217, v72, v73);
    v75 = *&v74->__r_.__value_.__l.__data_;
    v218.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
    *&v218.__r_.__value_.__l.__data_ = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    v76 = std::string::append(&v218, ", Partition length: ", 0x14uLL);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v219.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v219.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v215, *(this + 3));
    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v215;
    }

    else
    {
      v78 = v215.__r_.__value_.__r.__words[0];
    }

    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v215.__r_.__value_.__l.__size_;
    }

    v80 = std::string::append(&v219, v78, v79);
    v81 = *&v80->__r_.__value_.__l.__data_;
    v220.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
    *&v220.__r_.__value_.__l.__data_ = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    v82 = std::string::append(&v220, ", Mixed TF: ", 0xCuLL);
    v83 = *&v82->__r_.__value_.__l.__data_;
    v221.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
    *&v221.__r_.__value_.__l.__data_ = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v214, *(this + 16));
    if ((v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = &v214;
    }

    else
    {
      v84 = v214.__r_.__value_.__r.__words[0];
    }

    if ((v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = HIBYTE(v214.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v85 = v214.__r_.__value_.__l.__size_;
    }

    v86 = std::string::append(&v221, v84, v85);
    v87 = *&v86->__r_.__value_.__l.__data_;
    v222.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
    *&v222.__r_.__value_.__l.__data_ = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    v88 = std::string::append(&v222, ", Bake Delays: ", 0xFuLL);
    v89 = *&v88->__r_.__value_.__l.__data_;
    v223.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
    *&v223.__r_.__value_.__l.__data_ = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v213, *(this + 17));
    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = &v213;
    }

    else
    {
      v90 = v213.__r_.__value_.__r.__words[0];
    }

    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(v213.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = v213.__r_.__value_.__l.__size_;
    }

    v92 = std::string::append(&v223, v90, v91);
    v93 = *&v92->__r_.__value_.__l.__data_;
    v224.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v224.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    v94 = std::string::append(&v224, ", Window: (", 0xBuLL);
    v95 = *&v94->__r_.__value_.__l.__data_;
    v225.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
    *&v225.__r_.__value_.__l.__data_ = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    IR::IRDataWindow::description((this + 24), &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v97 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v97 = __p.__r_.__value_.__l.__size_;
    }

    v98 = std::string::append(&v225, p_p, v97);
    v99 = *&v98->__r_.__value_.__l.__data_;
    v226.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
    *&v226.__r_.__value_.__l.__data_ = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    v100 = std::string::append(&v226, ")", 1uLL);
    v101 = *&v100->__r_.__value_.__l.__data_;
    v227.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v227.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = std::string::append(&v227, ", Sphere interpolation: ", 0x18uLL);
    v103 = *&v102->__r_.__value_.__l.__data_;
    v228.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
    *&v228.__r_.__value_.__l.__data_ = v103;
    v102->__r_.__value_.__l.__size_ = 0;
    v102->__r_.__value_.__r.__words[2] = 0;
    v102->__r_.__value_.__r.__words[0] = 0;
    v104 = "Auto";
    v105 = *(this + 5);
    if (v105 == 1)
    {
      v104 = "VBAP";
    }

    if (v105)
    {
      v106 = v104;
    }

    else
    {
      v106 = "Bilinear";
    }

    if (v105)
    {
      v107 = 4;
    }

    else
    {
      v107 = 8;
    }

    v108 = std::string::append(&v228, v106, v107);
    *a3 = *v108;
    v108->__r_.__value_.__l.__size_ = 0;
    v108->__r_.__value_.__r.__words[2] = 0;
    v108->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v224.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v213.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v223.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v214.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v221.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v220.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v219.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }
  }
}

void sub_296BD5B28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_296BD6084()
{
  if (*(v0 - 201) < 0)
  {
    operator delete(*(v0 - 224));
  }

  if (*(v0 - 233) < 0)
  {
    operator delete(*(v0 - 256));
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x657]) < 0)
  {
    operator delete(STACK[0x640]);
  }

  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x5F7]) < 0)
  {
    operator delete(STACK[0x5E0]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(STACK[0x580]);
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  if (SLOBYTE(STACK[0x537]) < 0)
  {
    operator delete(STACK[0x520]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  JUMPOUT(0x296BD5F3CLL);
}

void sub_296BD621C()
{
  v1 = v0 + 136;
  v2 = -160;
  while (1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    v1 -= 32;
    v2 += 32;
    if (!v2)
    {
      JUMPOUT(0x296BD5F30);
    }
  }
}

void sub_296BD6250()
{
  while (1)
  {
    if (*(v0 - 1) < 0)
    {
      operator delete(*(v0 - 24));
    }

    v0 -= 32;
    if (v0 == v1 - 224)
    {
      JUMPOUT(0x296BD5F30);
    }
  }
}

void sub_296BD62B4()
{
  v1 = v0 + 72;
  v2 = -96;
  while (1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    v1 -= 32;
    v2 += 32;
    if (!v2)
    {
      JUMPOUT(0x296BD5F3CLL);
    }
  }
}

void sub_296BD62E8()
{
  while (1)
  {
    if (*(v0 - 1) < 0)
    {
      operator delete(*(v0 - 24));
    }

    v0 -= 32;
    if (v0 == v1 - 224)
    {
      JUMPOUT(0x296BD5F3CLL);
    }
  }
}

void IR::generateGrid(IR *this@<X0>, int a2@<W1>, float *a3@<X4>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    LODWORD(v16) = 0;
    memset(&v20, 0, sizeof(v20));
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, &v16, &v16 + 4, 1uLL);
    LODWORD(__p) = 0;
    memset(&v19, 0, sizeof(v19));
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v19, &__p, &__p + 4, 1uLL);
    LOBYTE(v15) = 0;
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_bEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_bEJEJEJRKS6_SA_RKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(a4, &v20, &v19, &v15);
    goto LABEL_5;
  }

  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  TDesign = HOA::getTDesign(this, 0, 0, 0, a3);
  if (TDesign >= 2)
  {
    v7 = TDesign;
    std::vector<float>::resize(&v20, TDesign);
    std::vector<float>::resize(&v19, v7);
    HOA::getTDesign(this, v20.__begin_, v19.__begin_, 0, v8);
    LOBYTE(v16) = 1;
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_bEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_bEJEJEJRS6_S9_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a4, &v20, &v19, &v16);
LABEL_5:
    begin = v19.__begin_;
    if (!v19.__begin_)
    {
      goto LABEL_12;
    }

    v19.__end_ = v19.__begin_;
    goto LABEL_11;
  }

  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v16, &v15, &v16, 1uLL);
  v11 = 0;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v11, &__p, 1uLL);
  v10 = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_bEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_bEJEJEJRKS6_SA_RKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(a4, &v16, &__p, &v10);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  begin = v16;
  if (v16)
  {
    v17 = v16;
LABEL_11:
    operator delete(begin);
  }

LABEL_12:
  if (v20.__begin_)
  {
    v20.__end_ = v20.__begin_;
    operator delete(v20.__begin_);
  }
}

void sub_296BD64E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  v20 = *(v18 - 56);
  if (v20)
  {
    *(v18 - 48) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::IRDataLoader::writeIRFile(uint64_t *a1, CFURLRef *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = IR::IRDataLoader::writeIRFile(&v7, a2, a3, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_296BD65B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::IRDataLoader::writeIRFile(uint64_t a1, CFURLRef *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  CFURLGetFileSystemRepresentation(*a2, 1u, buffer, 1024);
  SerializedIRData = IR::IRData::createSerializedIRData(a1, a3, a4);
  if (!SerializedIRData)
  {
    return 4294956425;
  }

  v9 = fopen(buffer, "wb");
  BytePtr = CFDataGetBytePtr(SerializedIRData);
  Length = CFDataGetLength(SerializedIRData);
  fwrite(BytePtr, Length, 1uLL, v9);
  CFRelease(SerializedIRData);
  if (v9)
  {
    fclose(v9);
  }

  IsReachable = CFURLResourceIsReachable(*a2, 0);
  v13 = IsReachable == 0;
  IRDataLog = IR::getIRDataLog(IsReachable);
  if (v13)
  {
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::writeIRFile();
    }

    return 4294956425;
  }

  result = os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    IR::IRDataLoader::writeIRFile();
    return 0;
  }

  return result;
}

void sub_296BD670C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    fclose(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::IRDataLoader::writeIRFile(IR *a1, CFURLRef *a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int a6, uint64_t *a7, uint64_t a8, float a9, uint64_t *a10, CFTypeRef *a11, _DWORD *a12, uint64_t a13, uint64_t a14, CFTypeRef *a15)
{
  v126 = *MEMORY[0x29EDCA608];
  v107 = a9;
  v106 = a6;
  v15 = *a1;
  v16 = *(a1 + 1);
  if (*a1 == v16 || (v18 = *a3, v19 = *(a3 + 8), *a3 == v19) || !a6 || (v21 = *a4, v22 = a4[1], *a4 == v22) || (v24 = *a7, v25 = a7[1], *a7 == v25) || (v27 = a1, a1 = *a8, v28 = *(a8 + 8), a1 == v28) || (v29 = *a10, v30 = a10[1], *a10 == v30))
  {
    IRDataLog = IR::getIRDataLog(a1);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::writeIRFile();
    }

    return 4294956425;
  }

  v32 = (v15[1] - *v15) >> 2;
  if (v32 % a6)
  {
    v33 = IR::getIRDataLog(a1);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::writeIRFile();
    }

    return 4294956425;
  }

  v37 = v16 - v15;
  v105 = 0xAAAAAAAAAAAAAAABLL * (v37 >> 3);
  if (v19 - v18 != v37 || (v38 = v22 - v21, v30 - v29 != v22 - v21) || v28 - a1 != v38 || v25 - v24 != v38 || v18[1] - *v18 != v38)
  {
    v41 = IR::getIRDataLog(a1);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::writeIRFile();
    }

    return 4294956425;
  }

  v39 = *a5;
  v40 = *(a5 + 8);
  if (*a5 != v40 && (v40 - v39 != v37 || a6 != (v39[1] - *v39) >> 2))
  {
    v42 = IR::getIRDataLog(a1);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::writeIRFile();
    }

    return 4294956425;
  }

  v104 = v32 / a6;
  v103 = 0.0;
  v81 = a2;
  if (*a12)
  {
    v103 = 1.0;
  }

  else
  {
    v43 = 0;
    __C[0] = 0.0;
    v44 = 0.0;
    v45 = 1;
    do
    {
      vDSP_maxmgv(v15[3 * v43], 1, __C, (v15[3 * v43 + 1] - v15[3 * v43]) >> 2);
      if (__C[0] > v44)
      {
        v44 = __C[0];
      }

      v43 = v45;
      v15 = *v27;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v27 + 1) - *v27) >> 3) > v45++);
    v103 = v44 * 0.000030518;
    a2 = v81;
  }

  CFURLGetFileSystemRepresentation(*a2, 1u, __C, 1024);
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v84 = v38 >> 2;
  v82 = fopen(__C, "wb");
  if (v38 >> 2 >= 1)
  {
    v47 = 0;
    do
    {
      IR::IRCoordinates::getParameterString(*(*a4 + 4 * v47), __p);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],std::string>(&v110, "Name", __p);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float const&>(v112, "Periodicity", (*a7 + 4 * v47));
      LODWORD(__ptr[0]) = *(*a8 + 4 * v47);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[14],int>(v113, "Interpolation", __ptr);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],float const&>(v114, "DefaultValue", (*a10 + 4 * v47));
      __D = &v110;
      v92 = 4;
      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&__D);
      v49 = v102;
      v102 = CFDictionaryRef;
      if (v49)
      {
        CFRelease(v49);
      }

      for (i = 0; i != -64; i -= 16)
      {
        v51 = *&v114[i + 8];
        if (v51)
        {
          CFRelease(v51);
        }

        v52 = *&v114[i];
        if (v52)
        {
          CFRelease(v52);
        }
      }

      if (v98 < 0)
      {
        operator delete(__p[0]);
      }

      v53 = v100;
      if (v100 >= v101)
      {
        v55 = v100 - v99;
        if ((v55 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v56 = (v101 - v99) >> 2;
        if (v56 <= v55 + 1)
        {
          v56 = v55 + 1;
        }

        if (v101 - v99 >= 0x7FFFFFFFFFFFFFF8)
        {
          v57 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v56;
        }

        v113[0] = &v99;
        if (v57)
        {
          std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](&v99, v57);
        }

        v58 = (8 * v55);
        v110 = 0;
        v111 = v58;
        v112[1] = 0;
        std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v58, &v102);
        v112[0] = v58 + 1;
        std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v99, &v110);
        v54 = v100;
        std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v110);
      }

      else
      {
        std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v100, &v102);
        v54 = v53 + 1;
      }

      v100 = v54;
      ++v47;
    }

    while (v47 != v84);
  }

  v96 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v99);
  if (*a12)
  {
    v59 = "float32";
  }

  else
  {
    v59 = "int16";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v59);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],std::string>(&v110, "CoefficientFormat", __p);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],long &>(v112, "FilterLength", &v104);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float &>(v113, "SampleRate", &v107);
  std::string::basic_string[abi:ne200100]<0>(&__D, "float32");
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],std::string>(v114, "DelayFormat", &__D);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[20],long &>(&v115, "TotalNumCoordinates", &v105);
  v60 = *a11;
  if (*a11)
  {
    applesauce::CF::DictionaryRef::DictionaryRef(&v90, a11);
  }

  else
  {
    v88 = 0;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[1],int>(v109, "", &v88);
    v89[0] = v109;
    v89[1] = 1;
    v90 = applesauce::CF::details::make_CFDictionaryRef(v89);
  }

  applesauce::CF::TypeRef::TypeRef(&v116, "UserData");
  applesauce::CF::DictionaryRef::operator applesauce::CF::TypeRef(&v90, &v117);
  applesauce::CF::TypeRef::TypeRef(&v118, "Dimensions");
  applesauce::CF::ArrayRef::operator applesauce::CF::TypeRef(&v96, &v119);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],float &>(&v120, "FilterScaleFactor", &v103);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],unsigned int &>(&v121, "NumChannels", &v106);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],std::string const&>(&v122, "Description", a14);
  v61 = *a15;
  if (*a15)
  {
    applesauce::CF::DictionaryRef::DictionaryRef(&v87, a15);
  }

  else
  {
    v85 = 0;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[1],int>(v108, "", &v85);
    __B[0] = v108;
    __B[1] = 1;
    v87 = applesauce::CF::details::make_CFDictionaryRef(__B);
  }

  applesauce::CF::TypeRef::TypeRef(v123, "TriangulationData");
  applesauce::CF::DictionaryRef::operator applesauce::CF::TypeRef(&v87, &v124);
  __ptr[0] = &v110;
  __ptr[1] = 11;
  v62 = 0;
  propertyList = applesauce::CF::details::make_CFDictionaryRef(__ptr);
  do
  {
    v63 = *&__C[v62 - 2];
    if (v63)
    {
      CFRelease(v63);
    }

    v64 = *&v123[v62 * 4];
    if (v64)
    {
      CFRelease(v64);
    }

    v62 -= 4;
  }

  while (v62 != -44);
  applesauce::CF::DictionaryRef::~DictionaryRef(&v87);
  if (!v61)
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v108);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&v90);
  if (!v60)
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v109);
  }

  if (v93 < 0)
  {
    operator delete(__D);
  }

  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v66 = Data;
  if (Data)
  {
    Length = CFDataGetLength(Data);
    std::vector<unsigned char>::vector[abi:ne200100](&v110, Length);
    v127.length = CFDataGetLength(v66);
    v127.location = 0;
    CFDataGetBytes(v66, v127, v110);
    __ptr[0] = v111 - v110;
    fwrite(__ptr, 4uLL, 1uLL, v82);
    fwrite(v110, 1uLL, __ptr[0], v82);
    std::vector<short>::vector[abi:ne200100](__p, v104);
    cf = v66;
    std::vector<float>::vector[abi:ne200100](&__D, v104);
    LODWORD(v89[0]) = 1191181824;
    LODWORD(__B[0]) = -956301312;
    v68 = 0.0;
    if (v103 != 0.0)
    {
      v68 = 1.0 / v103;
    }

    v103 = v68;
    if (v105 >= 1)
    {
      for (j = 0; j < v105; ++j)
      {
        if (v84 >= 1)
        {
          v70 = 0;
          v71 = v84;
          do
          {
            fwrite((*(*a3 + 24 * j) + v70), 4uLL, 1uLL, v82);
            v70 += 4;
            --v71;
          }

          while (v71);
        }

        if (v106)
        {
          v72 = 0;
          for (k = 0; k < v106; ++k)
          {
            v74 = v104;
            v75 = (*(*v27 + 24 * j) + 4 * v104 * k);
            if (*a12)
            {
              v76 = 4;
            }

            else
            {
              MEMORY[0x29C260530](v75, 1, &v103, __D, 1);
              vDSP_vclip(__D, 1, __B, v89, __D, 1, v104);
              vDSP_vfix16(__D, 1, __p[0], 1, v104);
              v75 = __p[0];
              v74 = v104;
              v76 = 2;
            }

            fwrite(v75, v76, v74, v82);
            if (*a5 == *(a5 + 8))
            {
              LODWORD(v90) = 0;
              fwrite(&v90, 4uLL, 1uLL, v82);
            }

            else
            {
              fwrite((*(*a5 + 24 * j) + v72), 4uLL, 1uLL, v82);
            }

            v72 += 4;
          }
        }
      }
    }

    CFRelease(cf);
    IsReachable = CFURLResourceIsReachable(*v81, 0);
    if (IsReachable)
    {
      v78 = IR::getIRDataLog(IsReachable);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        IR::IRDataLoader::writeIRFile();
      }

      v35 = 0;
    }

    else
    {
      v80 = IR::getIRDataLog(IsReachable);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        IR::IRDataLoader::writeIRFile();
      }

      v35 = 4294956425;
    }

    if (__D)
    {
      v92 = __D;
      operator delete(__D);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }
  }

  else
  {
    v79 = IR::getIRDataLog(0);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::writeIRFile();
    }

    v35 = 4294956418;
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&propertyList);
  applesauce::CF::ArrayRef::~ArrayRef(&v96);
  v110 = &v99;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&v110);
  applesauce::CF::DictionaryRef::~DictionaryRef(&v102);
  if (v82)
  {
    fclose(v82);
  }

  return v35;
}

void sub_296BD71E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, FILE *a10, uint64_t a11, uint64_t a12, uint64_t a13, applesauce::CF::TypeRefPair *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, const void *a33, const void *a34, char *a35, char *a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, const void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  v55 = *(v53 + 96);
  if (v55)
  {
    *(v53 + 104) = v55;
    operator delete(v55);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  a35 = &a41;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a35);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a44);
  if (a10)
  {
    fclose(a10);
  }

  _Unwind_Resume(a1);
}

void sub_296BD74D4(_Unwind_Exception *a1)
{
  MEMORY[0x29C25FC20](v2, 0x10A0C40E6A02A0DLL);
  std::unique_ptr<IR::IRDataLoader::Implementation>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::~IRDataLoader(IR::IRDataLoader::Implementation **this)
{
  std::unique_ptr<IR::IRDataLoader::Implementation>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<IR::IRDataLoader::Implementation>::reset[abi:ne200100](this, 0);
}

void *IR::IRDataLoader::instance(IR::IRDataLoader *this)
{
  {
    IR::IRDataLoader::IRDataLoader(&IR::IRDataLoader::instance(void)::global);
  }

  return &IR::IRDataLoader::instance(void)::global;
}

void IR::IRDataLoader::load(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>, float a5@<S0>)
{
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  IR::IRDataLoader::Implementation::load(v9, __p, a2, a3, &v12, a5);
  *a4 = v12;
  v12 = 0uLL;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296BD7680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IR::IRDataLoader::load(uint64_t *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v8 = *a3;
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = v8;
  IR::IRDataLoader::Implementation::load(v7, __p, a2, &v9, &v12);
  *a4 = v12;
  v12 = 0uLL;
  if (v8)
  {
    CFRelease(v8);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296BD775C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::DataRef::~DataRef(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void IR::IRDataLoader::load(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFTypeRef *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *a4;
  if (*a4)
  {
    CFRetain(*a4);
  }

  v10 = v9;
  IR::IRDataLoader::Implementation::load(v8, a2, a3, &v10, a5);
  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_296BD780C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DataRef::~DataRef(va);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::create(uint64_t *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15, int a16)
{
  v20 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  IR::IRDataLoader::Implementation::create(a9, v20, __p, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16);
}

void sub_296BD792C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::IRDataLoader::getAudioChannelLayoutTag(CFTypeRef a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    a1 = CFRetain(*a2);
  }

  v5 = v2;
  AudioChannelLayoutTag = IR::IRDataLoader::Implementation::getAudioChannelLayoutTag(a1, &v5);
  if (v2)
  {
    CFRelease(v2);
  }

  return AudioChannelLayoutTag;
}

void sub_296BD7A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

BOOL IR::IRDataLoader::fileExists(CFTypeRef a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    a1 = CFRetain(*a2);
  }

  v5 = v2;
  v3 = IR::IRDataLoader::Implementation::fileExists(a1, &v5);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void sub_296BD7B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::addToPersonalizedHRTFCallbackPool(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::__value_func[abi:ne200100](v8, a3);
  IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(v6, &__p, v8, a4);
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void IR::IRDataLoader::removeFromPersonalizedHRTFCallbackPool(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  IR::IRDataLoader::Implementation::removeFromPersonalizedHRTFCallbackPool(v2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_296BD7CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IR::IRDataLoader::addIRDataToCache(uint64_t *a1, IR::IRDataAttributes *a2, uint64_t a3)
{
  v5 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v6 = *(a3 + 8);
  v7 = *a3;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IR::IRDataLoader::Implementation::addIRDataToCache(v5, __p, a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296BD7D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 = (v4 - 168);
        std::__destroy_at[abi:ne200100]<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>,0>(IR::IRDataAttributes *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  IR::IRDataAttributes::~IRDataAttributes(this);
}

uint64_t *std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = *(a2 + 1);
  v5 = *(a2 + 3);
  v6 = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 5) = v6;
  *(a1 + 3) = v5;
  *(a1 + 1) = v4;
  v7 = a1[8];
  a1[8] = a2[8];
  a2[8] = v7;
  *(a1 + 9) = *(a2 + 9);
  v8 = a1[11];
  a1[11] = a2[11];
  a2[11] = v8;
  v9 = *(a2 + 6);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 6) = v9;
  v10 = a1[16];
  a1[16] = a2[16];
  a2[16] = v10;
  v11 = a2[17];
  *(a1 + 36) = *(a2 + 36);
  a1[17] = v11;
  v12 = *(a2 + 19);
  a2[19] = 0;
  a2[20] = 0;
  v13 = a1[20];
  *(a1 + 19) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  return a1;
}

BOOL applesauce::CF::operator==(const void **a1, const void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return CFEqual(v2, v3) != 0;
  }

  return v4;
}

{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return CFEqual(v2, v3) != 0;
  }

  return v4;
}

uint64_t IR::IRDataAttributes::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (!(*a1 | *a2))
  {
    return 1;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 12) != *(a2 + 12) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  result = 0;
  if (!v2)
  {
    return result;
  }

  if (*(a1 + 20) != *(a2 + 20))
  {
    return result;
  }

  if (!*a2)
  {
    return result;
  }

  result = applesauce::CF::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v6 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!v6)
    {
      return 0;
    }

    result = applesauce::CF::operator==((a1 + 64), (a2 + 64));
    if (!result)
    {
      return result;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || *(a1 + 76) != *(a2 + 76) || *(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84))
  {
    return 0;
  }

  v7 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (!v7)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  result = applesauce::CF::operator==((a1 + 88), (a2 + 88));
  if (!result)
  {
    return result;
  }

LABEL_28:
  if (*(a1 + 100) != *(a2 + 100) || *(a1 + 104) != *(a2 + 104) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 116) != *(a2 + 116) || *(a1 + 40) != *(a2 + 40) || *(a1 + 136) != *(a2 + 136) || *(a1 + 140) != *(a2 + 140) || *(a1 + 144) != *(a2 + 144) || *(a1 + 17) != *(a2 + 17) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  return applesauce::CF::operator==((a1 + 128), (a2 + 128));
}

uint64_t IR::IRDataAttributes::equalsExceptSampleRate(IR::IRDataAttributes *this, const IR::IRDataAttributes *a2)
{
  IR::IRDataAttributes::IRDataAttributes(&v5, this);
  v6 = *(a2 + 2);
  v3 = IR::IRDataAttributes::operator==(&v5, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

void sub_296BD825C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__emplace_back_slow_path<IR::IRDataAttributes&,std::shared_ptr<IR::IRData const> const&>(uint64_t a1, const IR::IRDataAttributes *a2, void *a3)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x186186186186186)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v8 = 0x186186186186186;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v17 = 0;
  v18 = 168 * v3;
  *(&v19 + 1) = 0;
  v9 = IR::IRDataAttributes::IRDataAttributes((168 * v3), a2);
  v10 = a3[1];
  *(v9 + 19) = *a3;
  *(v9 + 20) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *&v19 = v9 + 168;
  v11 = *(a1 + 8);
  v12 = v9 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>,std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::~__split_buffer(&v17);
  return v16;
}

void sub_296BD850C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>,std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>*>(int a1, IR::IRDataAttributes *this, IR::IRDataAttributes *a3, uint64_t a4)
{
  if (this != a3)
  {
    v5 = this;
    v6 = this;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      *(a4 + 8) = v7;
      *(a4 + 64) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 11);
      *(v6 + 11) = 0;
      v10 = *(v6 + 6);
      *(a4 + 105) = *(v6 + 105);
      *(a4 + 96) = v10;
      *(a4 + 128) = *(v6 + 16);
      *(v6 + 16) = 0;
      v11 = *(v6 + 17);
      *(a4 + 144) = *(v6 + 36);
      *(a4 + 136) = v11;
      *(a4 + 152) = *(v6 + 152);
      *(v6 + 19) = 0;
      *(v6 + 20) = 0;
      v6 = (v6 + 168);
      a4 += 168;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>,0>(v5);
      v5 = (v5 + 168);
    }
  }
}

uint64_t std::__split_buffer<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    std::__destroy_at[abi:ne200100]<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>,0>((i - 168));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__emplace_back_slow_path<IR::IRDataAttributes const&,std::shared_ptr<IR::IRData const> const&>(uint64_t a1, const IR::IRDataAttributes *a2, void *a3)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x186186186186186)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v8 = 0x186186186186186;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v17 = 0;
  v18 = 168 * v3;
  *(&v19 + 1) = 0;
  v9 = IR::IRDataAttributes::IRDataAttributes((168 * v3), a2);
  v10 = a3[1];
  *(v9 + 19) = *a3;
  *(v9 + 20) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *&v19 = v9 + 168;
  v11 = *(a1 + 8);
  v12 = v9 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>,std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::~__split_buffer(&v17);
  return v16;
}

void sub_296BD87F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BD886C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_296BD88E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<BOOL,applesauce::CF::DataRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::map<IR::IRSphericalInterpolation,std::string>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void IR::IRDataWindow::description(IR::IRDataWindow *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v29, "start: ");
  std::to_string(&v28, *this);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v28;
  }

  else
  {
    v4 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v29, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v30, ", fade-in: ", 0xBuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v27, *(this + 1));
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v27;
  }

  else
  {
    v10 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v27.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v31, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v32, ", length: ", 0xAuLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v26, *(this + 2));
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v26;
  }

  else
  {
    v16 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v26.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v33, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v34, ", fade-out: ", 0xCuLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v25, *(this + 3));
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v25;
  }

  else
  {
    v22 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v25.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&v35, v22, v23);
  *a2 = *v24;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_296BD8C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v52 - 121) < 0)
  {
    operator delete(*(v52 - 144));
  }

  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void IR::PersonalizedHRIRFetchingParams::description(IR::PersonalizedHRIRFetchingParams *this@<X0>, std::string *a2@<X8>)
{
  v36 = *MEMORY[0x29EDCA608];
  LODWORD(v29.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29.__r_.__value_.__s.__data_[8], "kPersonalizedHRIRType_NoPersonalization");
  v30 = 1;
  std::string::basic_string[abi:ne200100]<0>(v31, "kPersonalizedHRIRType_General");
  v32 = 2;
  std::string::basic_string[abi:ne200100]<0>(v33, "kPersonalizedHRIRType_Movie");
  v34 = 3;
  std::string::basic_string[abi:ne200100]<0>(v35, "kPersonalizedHRIRType_NumTypes");
  std::map<PersonalizedHRIRType,std::string>::map[abi:ne200100](v28, &v29, 4);
  for (i = 0; i != -128; i -= 32)
  {
    if (v35[i + 23] < 0)
    {
      operator delete(*&v35[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v24, "type: ");
  v5 = std::map<IR::IRSphericalInterpolation,std::string>::at(v28, this);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = v5[1];
  }

  v9 = std::string::append(&v24, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v25, ", timeoutMS: ", 0xDuLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v23, *(this + 1));
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v23;
  }

  else
  {
    v13 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v26, v13, size);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v27, ", allowExternalAPIAccess: ", 0x1AuLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v22, *(this + 8));
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v22;
  }

  else
  {
    v19 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v22.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v29, v19, v20);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::destroy(v28, v28[1]);
}

void sub_296BD9008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, char *a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::destroy(&a48, a49);
  _Unwind_Resume(a1);
}

void IR::FFTFilterOptimizationParameters::description(IR::FFTFilterOptimizationParameters *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v22, "absoluteThreshold: ");
  std::to_string(&v21, *this);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v21;
  }

  else
  {
    v4 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v22, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v23, ", relativeThreshold: ", 0x15uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, *(this + 1));
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v20;
  }

  else
  {
    v10 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v20.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v24, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v25, ", maxNumBins: ", 0xEuLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(this + 2));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v26, p_p, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_296BD9320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<IR::IRSphericalInterpolation,std::string>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::__emplace_hint_unique_key_args<IR::IRSphericalInterpolation,std::pair<IR::IRSphericalInterpolation const,std::string> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::__emplace_hint_unique_key_args<IR::IRSphericalInterpolation,std::pair<IR::IRSphericalInterpolation const,std::string> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::__find_equal<IR::IRSphericalInterpolation>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::__construct_node<std::pair<IR::IRSphericalInterpolation const,std::string> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::__find_equal<IR::IRSphericalInterpolation>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_296BD972C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IR::IRSphericalInterpolation,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IR::IRSphericalInterpolation,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void *std::map<IR::IRDataType,std::string>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<IR::IRDataType,std::string>,std::__map_value_compare<IR::IRDataType,std::__value_type<IR::IRDataType,std::string>,std::less<IR::IRDataType>,true>,std::allocator<std::__value_type<IR::IRDataType,std::string>>>::__emplace_hint_unique_key_args<IR::IRDataType,std::pair<IR::IRDataType const,std::string> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<IR::IRDataType,std::string>,std::__map_value_compare<IR::IRDataType,std::__value_type<IR::IRDataType,std::string>,std::less<IR::IRDataType>,true>,std::allocator<std::__value_type<IR::IRDataType,std::string>>>::__emplace_hint_unique_key_args<IR::IRDataType,std::pair<IR::IRDataType const,std::string> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::__find_equal<IR::IRSphericalInterpolation>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<IR::IRDataType,std::string>,std::__map_value_compare<IR::IRDataType,std::__value_type<IR::IRDataType,std::string>,std::less<IR::IRDataType>,true>,std::allocator<std::__value_type<IR::IRDataType,std::string>>>::__construct_node<std::pair<IR::IRDataType const,std::string> const&>();
  }

  return result;
}

void sub_296BD99B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IR::IRSphericalInterpolation,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

_BYTE *applesauce::CF::details::CFString_get_value<true>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    maxBufLen = 0;
    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v7 = maxBufLen;
    if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (maxBufLen >= 0x17)
    {
      operator new();
    }

    a2[23] = maxBufLen;
    if (v7)
    {
      bzero(a2, v7);
    }

    a2[v7] = 0;
    if (a2[23] >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v12.location = 0;
    v12.length = Length;
    return CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
  }
}

void sub_296BD9B34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void *std::map<PersonalizedHRIRType,std::string>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<PersonalizedHRIRType,std::string>,std::__map_value_compare<PersonalizedHRIRType,std::__value_type<PersonalizedHRIRType,std::string>,std::less<PersonalizedHRIRType>,true>,std::allocator<std::__value_type<PersonalizedHRIRType,std::string>>>::__emplace_hint_unique_key_args<PersonalizedHRIRType,std::pair<PersonalizedHRIRType const,std::string> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PersonalizedHRIRType,std::string>,std::__map_value_compare<PersonalizedHRIRType,std::__value_type<PersonalizedHRIRType,std::string>,std::less<PersonalizedHRIRType>,true>,std::allocator<std::__value_type<PersonalizedHRIRType,std::string>>>::__emplace_hint_unique_key_args<PersonalizedHRIRType,std::pair<PersonalizedHRIRType const,std::string> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<IR::IRSphericalInterpolation,std::string>,std::__map_value_compare<IR::IRSphericalInterpolation,std::__value_type<IR::IRSphericalInterpolation,std::string>,std::less<IR::IRSphericalInterpolation>,true>,std::allocator<std::__value_type<IR::IRSphericalInterpolation,std::string>>>::__find_equal<IR::IRSphericalInterpolation>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<PersonalizedHRIRType,std::string>,std::__map_value_compare<PersonalizedHRIRType,std::__value_type<PersonalizedHRIRType,std::string>,std::less<PersonalizedHRIRType>,true>,std::allocator<std::__value_type<PersonalizedHRIRType,std::string>>>::__construct_node<std::pair<PersonalizedHRIRType const,std::string> const&>();
  }

  return result;
}

void sub_296BD9D80(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IR::IRSphericalInterpolation,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_bEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_bEJEJEJRS6_S9_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 24, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 48) = *a4;
  return a1;
}

void sub_296BD9E10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_bEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_bEJEJEJRKS6_SA_RKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 24, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 48) = *a4;
  return a1;
}

void sub_296BD9EA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__emplace_back_slow_path<IR::IRDataAttributes&,std::shared_ptr<IR::IRData const> &>(uint64_t a1, const IR::IRDataAttributes *a2, void *a3)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x186186186186186)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v8 = 0x186186186186186;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v17 = 0;
  v18 = 168 * v3;
  *(&v19 + 1) = 0;
  v9 = IR::IRDataAttributes::IRDataAttributes((168 * v3), a2);
  v10 = a3[1];
  *(v9 + 19) = *a3;
  *(v9 + 20) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *&v19 = v9 + 168;
  v11 = *(a1 + 8);
  v12 = v9 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>,std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::~__split_buffer(&v17);
  return v16;
}

void sub_296BDA008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

IR::HOA2BinauralIRRenderer *IR::HOA2BinauralIRRenderer::HOA2BinauralIRRenderer(IR::HOA2BinauralIRRenderer *this, const IR::IRDataAttributes *a2, const IR::IRDataAttributes *a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v10 = 2;
  *(this + 3) = 0;
  v8 = this + 24;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(v8, &v10, &v11, 1uLL);
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  IR::IRDataAttributes::IRDataAttributes((this + 120), a3);
  IR::IRDataAttributes::IRDataAttributes((this + 272), a2);
  *(this + 54) = 0;
  *(this + 110) = a4;
  *(this + 460) = 1;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 70) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 95) = 0;
  *(this + 106) = 0;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  return this;
}

void sub_296BDA108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void *std::vector<float *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_296BDA40C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<float *>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::allocator<float *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void IR::HOA2BinauralIRRenderer::~HOA2BinauralIRRenderer(vDSP_DFT_Setup *this)
{
  vDSP_DFT_DestroySetup(this[73]);
  vDSP_DFT_DestroySetup(this[74]);
  v2 = this[104];
  if (v2)
  {
    this[105] = v2;
    operator delete(v2);
  }

  v18 = (this + 101);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 98);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v3 = this[93];
  if (v3)
  {
    this[94] = v3;
    operator delete(v3);
  }

  v4 = this[90];
  if (v4)
  {
    this[91] = v4;
    operator delete(v4);
  }

  v5 = this[87];
  if (v5)
  {
    this[88] = v5;
    operator delete(v5);
  }

  v18 = (this + 84);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 81);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 78);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 75);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v6 = this[68];
  if (v6)
  {
    this[69] = v6;
    operator delete(v6);
  }

  v7 = this[65];
  if (v7)
  {
    this[66] = v7;
    operator delete(v7);
  }

  v8 = this[64];
  this[64] = 0;
  if (v8)
  {
    v9 = *(v8 + 3);
    if (v9)
    {
      *(v8 + 4) = v9;
      operator delete(v9);
    }

    v10 = *v8;
    if (*v8)
    {
      *(v8 + 1) = v10;
      operator delete(v10);
    }

    MEMORY[0x29C25FC20](v8, 0x10A0C40B42DDE52);
  }

  v11 = this[61];
  if (v11)
  {
    this[62] = v11;
    operator delete(v11);
  }

  v18 = (this + 58);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v12 = this[54];
  this[54] = 0;
  if (v12)
  {
    HOA::~HOA(v12);
    MEMORY[0x29C25FC20]();
  }

  IR::IRDataAttributes::~IRDataAttributes((this + 34));
  IR::IRDataAttributes::~IRDataAttributes((this + 15));
  v13 = this[12];
  if (v13)
  {
    this[13] = v13;
    operator delete(v13);
  }

  v14 = this[9];
  if (v14)
  {
    this[10] = v14;
    operator delete(v14);
  }

  v15 = this[6];
  if (v15)
  {
    this[7] = v15;
    operator delete(v15);
  }

  v16 = this[3];
  if (v16)
  {
    this[4] = v16;
    operator delete(v16);
  }

  v17 = *this;
  if (*this)
  {
    this[1] = v17;
    operator delete(v17);
  }
}

IR::IRDataLoader::Implementation *IR::IRDataLoader::Implementation::Implementation(IR::IRDataLoader::Implementation *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  MEMORY[0x29C25FA70](this + 24);
  MEMORY[0x29C25FA70](this + 88);
  *(this + 152) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "IRDataLoader");
  IR::PersonalizedIRData::PersonalizedIRData(this + 160, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 50) = 1065353216;
  *(this + 28) = 0;
  *(this + 27) = 0;
  *(this + 26) = this + 216;
  return this;
}

void sub_296BDA72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::~recursive_mutex((v15 + 88));
  std::recursive_mutex::~recursive_mutex((v15 + 24));
  __p = v15;
  std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

IR::IRDataLoader::Implementation *std::unique_ptr<IR::IRDataLoader::Implementation>::reset[abi:ne200100](IR::IRDataLoader::Implementation **a1, IR::IRDataLoader::Implementation *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IR::IRDataLoader::Implementation::~Implementation(result);

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,0>(uint64_t a1)
{
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<IR::IRData>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::vector<float>> const&,std::vector<std::vector<float>> const&,std::vector<IR::IRCoordinateType> const&,std::vector<std::vector<float>> const&,float &,unsigned int &,std::vector<float> const&,std::vector<IR::IRInterpolationMethod> const&,applesauce::CF::DictionaryRef const&,std::string const&,unsigned int &,BOOL &,unsigned int &,IR::IRSphericalInterpolation &,std::vector<float> const&,std::allocator<IR::IRData>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEBF90;
  IR::IRData::IRData(a1 + 3);
}

void std::shared_ptr<IR::IRData>::shared_ptr[abi:ne200100]<IR::IRData,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_296BDAB6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<IR::IRData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

IR::IRData::Implementation ***std::unique_ptr<IR::IRData>::~unique_ptr[abi:ne200100](IR::IRData::Implementation ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    IR::IRData::~IRData(v2);
    MEMORY[0x29C25FC20]();
  }

  return a1;
}

void std::__shared_ptr_pointer<IR::IRData *,std::shared_ptr<IR::IRData>::__shared_ptr_default_delete<IR::IRData,IR::IRData>,std::allocator<IR::IRData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

IR::IRData::Implementation **std::__shared_ptr_pointer<IR::IRData *,std::shared_ptr<IR::IRData>::__shared_ptr_default_delete<IR::IRData,IR::IRData>,std::allocator<IR::IRData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    IR::IRData::~IRData(result);

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void (IR::IRDataLoader::Implementation::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),IR::IRDataLoader::Implementation*,IR::PersonalizedIRData::DataStatus,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (IR::IRDataLoader::Implementation::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),IR::IRDataLoader::Implementation*,IR::PersonalizedIRData::DataStatus,std::placeholders::__ph<1> const&>>,void ()(IR::PersonalizedIRData::DataValidity)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DECC58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (IR::IRDataLoader::Implementation::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),IR::IRDataLoader::Implementation*,IR::PersonalizedIRData::DataStatus,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (IR::IRDataLoader::Implementation::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),IR::IRDataLoader::Implementation*,IR::PersonalizedIRData::DataStatus,std::placeholders::__ph<1> const&>>,void ()(IR::PersonalizedIRData::DataValidity)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = (*(a1 + 24) + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *(a1 + 32), *a2);
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_296BDB638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::$_0 &&>>(uint64_t ***a1)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v1 = ***a1;
  v3[0] = &unk_2A1DECCA0;
  v3[1] = v1;
  v3[3] = v3;
  IR::PersonalizedIRData::RegisterObservers((v1 + 160), v3, 0);
  return std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::~__value_func[abi:ne200100](v3);
}

void sub_296BDBB50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::$_0::operator() const(void)::{lambda(IR::PersonalizedIRData::DataStatus)#1},std::allocator<IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::$_0::operator() const(void)::{lambda(IR::PersonalizedIRData::DataStatus)#1}>,void ()(IR::PersonalizedIRData::DataStatus)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DECCA0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::$_0::operator() const(void)::{lambda(IR::PersonalizedIRData::DataStatus)#1},std::allocator<IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::$_0::operator() const(void)::{lambda(IR::PersonalizedIRData::DataStatus)#1}>,void ()(IR::PersonalizedIRData::DataStatus)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    IR::IRDataLoader::Implementation::executePersonalizedHRTFCallbacks(v2, 1, 0);
  }

  else
  {
    IR::IRDataLoader::Implementation::rebuildPersonalizedHRTFCache(v2);
  }
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

uint64_t *std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

void sub_296BDC07C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,CA::ChannelLayout>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_296BDC0FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,CA::ChannelLayout>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,CA::ChannelLayout>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

void *std::__shared_ptr_emplace<IR::IRData>::__shared_ptr_emplace[abi:ne200100]<IR::IRDataAttributes const&,applesauce::CF::DataRef &,std::vector<float> const&,std::allocator<IR::IRData>,0>(void *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEBF90;
  std::construct_at[abi:ne200100]<IR::IRData,IR::IRDataAttributes const&,applesauce::CF::DataRef &,std::vector<float> const&,IR::IRData*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<IR::IRData,IR::IRDataAttributes const&,applesauce::CF::DataRef &,std::vector<float> const&,IR::IRData*>(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  cf = v7;
  IR::IRData::IRData(a1, a2, &cf, a4);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

void sub_296BDC3B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DataRef::~DataRef(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<IR::IRData>::__shared_ptr_emplace[abi:ne200100]<IR::IRDataAttributes &,applesauce::CF::DataRef &,std::vector<float> const&,std::allocator<IR::IRData>,0>(void *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEBF90;
  std::construct_at[abi:ne200100]<IR::IRData,IR::IRDataAttributes &,applesauce::CF::DataRef &,std::vector<float> const&,IR::IRData*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<IR::IRData,IR::IRDataAttributes &,applesauce::CF::DataRef &,std::vector<float> const&,IR::IRData*>(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  cf = v7;
  IR::IRData::IRData(a1, a2, &cf, a4);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

void sub_296BDC524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DataRef::~DataRef(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<IR::IRData>::__shared_ptr_emplace[abi:ne200100]<float,unsigned int,unsigned int &,float,BOOL &,unsigned int,unsigned int,unsigned int,std::vector<IR::IRCoordinateType> &,std::vector<float> &,std::vector<IR::IRInterpolationMethod> &,IR::IRSphericalInterpolation,applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef,std::allocator<IR::IRData>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEBF90;
  std::construct_at[abi:ne200100]<IR::IRData,float,unsigned int,unsigned int &,float,BOOL &,unsigned int,unsigned int,unsigned int,std::vector<IR::IRCoordinateType> &,std::vector<float> &,std::vector<IR::IRInterpolationMethod> &,IR::IRSphericalInterpolation,applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef,IR::IRData*>(a1 + 3, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void std::construct_at[abi:ne200100]<IR::IRData,float,unsigned int,unsigned int &,float,BOOL &,unsigned int,unsigned int,unsigned int,std::vector<IR::IRCoordinateType> &,std::vector<float> &,std::vector<IR::IRInterpolationMethod> &,IR::IRSphericalInterpolation,applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef,IR::IRData*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  *a14 = 0;
  *a15 = 0;
  IR::IRData::IRData(a1);
}

void sub_296BDC750(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 - 32));
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 - 24));
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float const&>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDC804(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],float const&>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDC8D0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[1],int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDC99C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],long &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDCA68(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDCB34(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],std::string>(applesauce::CF::TypeRef *a1, char *a2, uint64_t a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *(a1 + 1) = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDCC0C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[20],long &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDCCD8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

CFTypeRef *applesauce::CF::DictionaryRef::operator applesauce::CF::TypeRef@<X0>(CFTypeRef *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a2 = v3;
  return result;
}

CFTypeRef *applesauce::CF::ArrayRef::operator applesauce::CF::TypeRef@<X0>(CFTypeRef *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a2 = v3;
  return result;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],std::string const&>(applesauce::CF::TypeRef *a1, char *a2, uint64_t a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *(a1 + 1) = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BDCE20(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t IR::MatrixResampler<float>::MatrixResampler(uint64_t a1, unsigned int a2, float a3, float a4)
{
  IR::DataResampler<float>::DataResampler(a1, a2, a3, a4);
  *v6 = &unk_2A1DECCE8;
  *(v6 + 40) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 68) = 0x1400000005;
  if (a2 <= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid input length, must be > 2)");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
  }

  return a1;
}

void sub_296BDCF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *a10;
  if (*a10)
  {
    *(v10 + 48) = v12;
    operator delete(v12);
  }

  IR::DataResampler<float>::~DataResampler(v10);
  _Unwind_Resume(a1);
}

uint64_t IR::MatrixResampler<float>::Initialize(uint64_t a1, unsigned int a2, int a3, long double a4)
{
  v4 = *&a4;
  v5 = 0;
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  v8 = *(a1 + 16) / *(a1 + 12);
  v9 = a3 + a2 + vcvtps_u32_f32(v8 * v6);
  *(a1 + 64) = v9;
  *(a1 + 68) = a2;
  v10 = (a1 + 64);
  *(a1 + 72) = a3;
  LODWORD(__P) = 15728640;
  do
  {
    v12 = __P;
    LODWORD(a4) = dword_296C19D60[v5];
    v13 = *&a4;
    v14 = 4;
    do
    {
      a4 = exp2(v14) * v13;
      v15 = a4;
    }

    while (v9 + 256 > a4 && v14++ < 0x14);
    if (v15 >= v12)
    {
      __P = v12;
    }

    else
    {
      __P = v15;
    }

    ++v5;
  }

  while (v5 != 4);
  if (__P <= 0xF)
  {
    IR::MatrixResampler<float>::Initialize();
  }

  v17 = __P >> 1;
  if (v6 >= v9)
  {
    v18 = v7;
  }

  else
  {
    v18 = v10;
  }

  v19 = (*v18 * __P);
  LODWORD(v93) = 0;
  std::vector<float>::vector[abi:ne200100](&v95, v19);
  std::vector<float>::vector[abi:ne200100](&v93, __P >> 1);
  v20 = __P;
  LODWORD(__A) = 0;
  *__B = v8 / __P;
  vDSP_vramp(&__A, __B, v93, 1, v94 - v93);
  v21 = *v7;
  LODWORD(__B[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&__A, v21);
  LODWORD(__B[0]) = 0;
  LODWORD(v89[0]) = -1060565029;
  vDSP_vramp(__B, v89, __A, 1, v92 - __A);
  vDSP_mmul(v93, 1, __A, 1, v95, 1, __P >> 1, *v7, 1uLL);
  if (v8 > 1.0)
  {
    if (v94 == v93)
    {
      v23 = v94;
    }

    else
    {
      v22 = v94 - v93;
      v23 = v93;
      do
      {
        v24 = v22 >> 1;
        v25 = &v23[v22 >> 1];
        v27 = *v25;
        v26 = v25 + 1;
        v22 += ~(v22 >> 1);
        if (v27 > 0.5)
        {
          v22 = v24;
        }

        else
        {
          v23 = v26;
        }
      }

      while (v22);
    }

    if (v94 == v23)
    {
      v66 = 0;
      goto LABEL_67;
    }

    v28 = *v7 * ((v23 - v93) >> 2);
    vDSP_vclr(&v95[v28], 1, v96 - v95 - v28);
  }

  v29 = *v7 * v17;
  LODWORD(v89[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__B, (2 * v29));
  std::vector<float>::vector[abi:ne200100](v89, (2 * v29));
  LODWORD(__Or[0]) = v29;
  vvsincosf(v89[0], __B[0], v95, __Or);
  v30 = *v7;
  __N = __P >> 1;
  v72 = v17 + 1;
  v31 = v17 - 1;
  if (v17 != 1)
  {
    v32 = v30 * (v17 + 1);
    v33 = v17 - 1;
    v34 = v30 * v31;
    do
    {
      memcpy(__B[0] + 4 * v32, __B[0] + 4 * v34, 4 * v30);
      v35 = *v7;
      LODWORD(__Or[0]) = -1082130432;
      MEMORY[0x29C260530](v89[0] + 4 * v34, 1, __Or, v89[0] + 4 * v32, 1, v35);
      v30 = *v7;
      v34 -= *v7;
      v32 += *v7;
      --v33;
    }

    while (v33);
  }

  v88.realp = __B[0];
  v88.imagp = v89[0];
  if (v30 < 3)
  {
    __assert_rtn("Initialize", "MatrixResampler.cpp", 126, "mNumInputFrames > 2");
  }

  v36 = v95;
  LODWORD(__Or[0]) = 1065353216;
  vDSP_vfill(__Or, v95, 1, __N);
  if (v8 <= 1.0)
  {
    v41 = __N * v4;
    v42 = ceilf(v41);
    v43 = (__N - v42);
    if (v43)
    {
      v44 = v42;
      do
      {
        *(&v36->real + v44) = fmaxf(1.0 - ((v44 - v41) * (1.0 / (__N - v41))), 0.0001);
        ++v44;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    v37 = (v4 / v8) * __N;
    v38 = __N / v8;
    v39 = (floorf(v38) - ceilf(v37));
    for (i = vcvtps_u32_f32(v37); v39; --v39)
    {
      *(&v36->real + i) = fmaxf(1.0 - ((i - v37) * (1.0 / (v38 - v37))), 0.0001);
      ++i;
    }

    if (i < __N)
    {
      LODWORD(__Or[0]) = 953267991;
      vDSP_vfill(__Or, v36 + i, 1, __N - i);
    }
  }

  *(&v36->real + __N) = 953267991;
  Setup = vDSP_DFT_zrop_CreateSetup(0, __P, vDSP_DFT_FORWARD);
  __Setup = vDSP_DFT_zrop_CreateSetup(Setup, __P, vDSP_DFT_INVERSE);
  LODWORD(__Oi[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__Or, __P);
  std::vector<float>::vector[abi:ne200100](__Oi, __P);
  __Z.realp = __Or[0];
  __Z.imagp = __Oi[0];
  LODWORD(v82) = v72;
  vvlogf(__Or[0], v36, &v82);
  *&v82 = 1.0 / v20;
  MEMORY[0x29C260530](__Or[0], 1, &v82, __Or[0], 1, v72);
  v46 = __Or[0];
  v47 = __Oi[0];
  *__Oi[0] = __Or[0][__N];
  vDSP_DFT_Execute(__Setup, v46, v47, v46, v47);
  vDSP_ztoc(&__Z, 1, v36, 2, __N);
  v48 = v36 + __P;
  vDSP_vclr(v48, 1, __P);
  *v48 = 1.0;
  LODWORD(v82) = 0x40000000;
  vDSP_vfill(&v82, v48 + 1, 1, v31);
  v48[__N] = 1.0;
  MEMORY[0x29C260480](v36, 1, v48, 1, v36, 1, __P);
  LODWORD(v82) = 1056964608;
  MEMORY[0x29C260530](v36, 1, &v82, v36, 1, __P);
  vDSP_ctoz(v36, 2, &__Z, 1, __N);
  vDSP_DFT_Execute(Setup, __Or[0], __Oi[0], __Or[0], __Oi[0]);
  v49 = __Oi[0];
  __Or[0][__N] = *__Oi[0];
  v49[__N] = 0.0;
  *v49 = 0.0;
  vDSP_DFT_DestroySetup(Setup);
  vDSP_DFT_DestroySetup(__Setup);
  LODWORD(v82) = v72;
  vvexpf(v36, __Or[0], &v82);
  LODWORD(v82) = v72;
  vvsincosf(v48, __Or[0], __Oi[0], &v82);
  MEMORY[0x29C260480](v36, 1, __Or[0], 1, __Or[0], 1, v72);
  MEMORY[0x29C260480](v36, 1, v48, 1, __Oi[0], 1, v72);
  if (v72 < __P)
  {
    v50 = __Or[0];
    v51 = __Oi[0];
    v52 = &__Or[0][(__P >> 1) + 1];
    v53 = &__Oi[0][(__P >> 1) + 1];
    if (v12 >= v15)
    {
      v54 = v15;
    }

    else
    {
      v54 = v12;
    }

    v55 = ~(__P >> 1) + v54;
    do
    {
      *v52++ = v50[v31];
      *v53++ = -v51[v31];
      LODWORD(v31) = v31 - 1;
      --v55;
    }

    while (v55);
  }

  v56 = a2 * -6.28318531 / __P;
  LODWORD(v82) = 0;
  *&v80 = v56;
  vDSP_vramp(&v82, &v80, v36, 1, __P);
  LODWORD(v82) = __P;
  vvsincosf(v36 + (2 * __P), v36 + __P, v36, &v82);
  v84.realp = v36 + __P;
  v84.imagp = v36 + (2 * __P);
  vDSP_zvmul(&__Z, 1, &v84, 1, &__Z, 1, __P, 1);
  LODWORD(v80) = 0;
  std::vector<float>::vector[abi:ne200100](&v82, __P);
  LODWORD(v80) = 0;
  *&v78 = 1.0 / v20;
  vDSP_vramp(&v80, &v78, v82, 1, v83 - v82);
  v57 = *v10;
  LODWORD(v78) = 0;
  std::vector<float>::vector[abi:ne200100](&v80, v57);
  LODWORD(v78) = 0;
  LODWORD(v76) = 1086918619;
  vDSP_vramp(&v78, &v76, v80, 1, v81 - v80);
  v58 = *v10;
  vDSP_mmul(v80, 1, v82, 1, v95, 1, *v10, __P, 1uLL);
  v59 = (v58 * __P);
  LODWORD(v76) = 0;
  std::vector<float>::vector[abi:ne200100](&v78, v59);
  std::vector<float>::vector[abi:ne200100](&v76, v59);
  LODWORD(v75.realp) = v59;
  vvsincosf(v76, v78, v95, &v75);
  *&v75.realp = 1.0 / v20;
  MEMORY[0x29C260530](v78, 1, &v75, v78, 1, v79 - v78);
  *&v75.realp = 1.0 / v20;
  MEMORY[0x29C260530](v76, 1, &v75, v76, 1, v77 - v76);
  v75.realp = v78;
  v75.imagp = v76;
  LODWORD(v61) = *v10;
  if (*v10)
  {
    v62 = 0;
    v63 = 0;
    if (v12 >= v15)
    {
      v64 = v15;
    }

    else
    {
      v64 = v12;
    }

    do
    {
      __C.realp = &v78[v62];
      __C.imagp = &v76[v62];
      vDSP_zvmul(&__C, 1, &__Z, 1, &__C, 1, __P, 1);
      ++v63;
      v61 = *v10;
      v62 += v64;
    }

    while (v63 < v61);
  }

  v65 = (*(a1 + 8) * v61);
  LODWORD(v73.realp) = 0;
  std::vector<float>::resize((a1 + 40), v65, &v73, v60);
  v73.realp = *(a1 + 40);
  v73.imagp = v95;
  vDSP_zmmul(&v75, 1, &v88, 1, &v73, 1, *v10, *v7, __P);
  v66 = *v10;
  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (__Oi[0])
  {
    __Oi[1] = __Oi[0];
    operator delete(__Oi[0]);
  }

  if (__Or[0])
  {
    __Or[1] = __Or[0];
    operator delete(__Or[0]);
  }

  if (v89[0])
  {
    v89[1] = v89[0];
    operator delete(v89[0]);
  }

  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

LABEL_67:
  if (__A)
  {
    v92 = __A;
    operator delete(__A);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  return v66;
}

void sub_296BDD9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  v43 = *(v41 - 240);
  if (v43)
  {
    *(v41 - 232) = v43;
    operator delete(v43);
  }

  v44 = *(v41 - 216);
  if (v44)
  {
    *(v41 - 208) = v44;
    operator delete(v44);
  }

  v45 = *(v41 - 192);
  if (v45)
  {
    *(v41 - 184) = v45;
    operator delete(v45);
  }

  v46 = *(v41 - 168);
  if (v46)
  {
    *(v41 - 160) = v46;
    operator delete(v46);
  }

  v47 = *(v41 - 144);
  if (v47)
  {
    *(v41 - 136) = v47;
    operator delete(v47);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::MatrixResampler<float>::Process(uint64_t a1, const float *__B, unsigned int a3, float *__C, unsigned int a5, vDSP_Length __N)
{
  v8 = a1 + 40;
  v7 = *(a1 + 40);
  v9 = a5 / __N;
  if (v9 * (a3 / __N) > ((*(v8 + 8) - v7) >> 2) || a3 / __N != *(a1 + 8) || v9 > *(a1 + 64))
  {
    return 104;
  }

  vDSP_mmul(v7, 1, __B, 1, __C, 1, v9, __N, a3 / __N);
  return 0;
}

uint64_t IR::MatrixResampler<float>::Initialize(uint64_t a1, const __CFDictionary **a2, long double a3)
{
  *(a1 + 20) = 0;
  if (*a2)
  {
    v5 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(*a2, IR::kIRDataResamplerConfigQualityKey);
    if ((v5 & 0x100000000) != 0)
    {
      v6 = *&v5;
    }

    else
    {
      v6 = 0.92;
    }

    if (v6 > 1.0 || v6 < 0.0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid Quality index");
    }

    if (!*a2)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(v14);
    }

    v7 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(*a2, IR::kMatrixResamplerConfigLatencySamplesKey);
    v8 = *a2;
    if (!*a2)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(v15);
    }

    if ((v7 & 0x100000000) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 5;
    }

    v10 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(v8, IR::kMatrixResamplerConfigPostRingSamplesKey);
    if ((v10 & 0x100000000) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 20;
    }
  }

  else
  {
    v11 = 20;
    v9 = 5;
    v6 = 0.92;
  }

  *&a3 = v6;
  LODWORD(result) = IR::MatrixResampler<float>::Initialize(a1, v9, v11, a3);
  *(a1 + 20) = 1;
  return result;
}

uint64_t IR::MatrixResampler<float>::CleanUp(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 48) = *(result + 40);
  return result;
}

uint64_t IR::MatrixResampler<float>::~MatrixResampler(void *a1)
{
  *a1 = &unk_2A1DECCE8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return IR::DataResampler<float>::~DataResampler(a1);
}

void IR::MatrixResampler<float>::~MatrixResampler(void *a1)
{
  *a1 = &unk_2A1DECCE8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  IR::DataResampler<float>::~DataResampler(a1);

  JUMPOUT(0x29C25FC20);
}

void std::allocator<double>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CFURLRef IR::copyHRTFBinURL(IR *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v7, "/System/Library/Audio/Tunings/IRs");
  v1 = std::string::append(&v7, "/HRTF.bin", 9uLL);
  v2 = *&v1->__r_.__value_.__l.__data_;
  v9 = v1->__r_.__value_.__r.__words[2];
  *__p = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v9 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v9 >= 0)
  {
    v4 = HIBYTE(v9);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x29EDB8ED8], v3, v4, 1u);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_296BDDF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IR::getProductTypeXTCIRFullPath(uint64_t a1@<X8>)
{
  v3 = applesauce::gestalt::query_as<unsigned int,0>();
  if ((v3 & 0x100000000) != 0 && v3)
  {
    v4 = PlatformUtilities_iOS::CopyAcousticIDFilePrefix(v3);
    v35 = v4;
    if (v4)
    {
      v5 = CFGetTypeID(v4);
      if (v5 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](exception, "Could not construct");
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v32, "/System/Library/Audio/Tunings/IRs");
    v6 = std::string::append(&v32, "/", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (!v35)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v25, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(v35, &__p);
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v9 = v31;
    }

    else
    {
      v9 = v30;
    }

    v10 = std::string::append(&v33, p_p, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v34, "/", 1uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v12->__r_.__value_.__l + 2);
    *a1 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v35)
    {
      CFRelease(v35);
    }
  }

  else
  {
    ProductType = PlatformUtilities_iOS::GetProductType(v3);
    if (ProductType)
    {
      v15 = PlatformUtilities::CopyHardwareModelShortName(ProductType);
      v35 = v15;
      if (v15)
      {
        v16 = CFGetTypeID(v15);
        if (v16 != CFStringGetTypeID())
        {
          v28 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25F8D0](v28, "Could not construct");
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v32, "/System/Library/Audio/Tunings/IRs");
      v17 = std::string::append(&v32, "/", 1uLL);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (!v35)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v27, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(v35, &__p);
      if ((v31 & 0x80u) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p;
      }

      if ((v31 & 0x80u) == 0)
      {
        v20 = v31;
      }

      else
      {
        v20 = v30;
      }

      v21 = std::string::append(&v33, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v34, "/", 1uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      *(a1 + 16) = *(&v23->__r_.__value_.__l + 2);
      *a1 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v31 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    else
    {

      std::string::basic_string[abi:ne200100]<0>(a1, "");
    }
  }
}

void sub_296BDE2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v27 - 24));
  _Unwind_Resume(a1);
}

void IR::getProductTypeXTCIRFilePrefix(uint64_t a1@<X8>)
{
  v3 = applesauce::gestalt::query_as<unsigned int,0>();
  if ((v3 & 0x100000000) != 0 && v3 || (ProductType = PlatformUtilities_iOS::GetProductType(v3)) == 0)
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }

  else
  {
    v5 = PlatformUtilities_iOS::CopyProductTypeFilePrefix(ProductType);
    cf = v5;
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    if (!cf)
    {
LABEL_15:
      v9 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v9, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(cf, &__p);
    v7 = std::string::append(&__p, "_", 1uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v7->__r_.__value_.__l + 2);
    *a1 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_296BDE524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  __cxa_free_exception(v15);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a15);
  _Unwind_Resume(a1);
}

void IR::getPresetDataAttributes(int a1@<W0>, uint64_t a2@<X8>)
{
  v80 = MEMORY[0x29C25F3C0](0, "/System/Library/Audio/Tunings/IRs", 33, 1, 0);
  if (!v80)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  v79 = MEMORY[0x29C25F3C0](0, "/System/Library/Audio/Tunings/IRs/Generic", 41, 1, 0);
  if (!v79)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v13, "Could not construct");
  }

  switch(a1)
  {
    case 1:
      applesauce::CF::URLRef::URLRef(&v75);
      IR::IRDataAttributes::IRDataAttributes(a2, &v75, 128, 1, 2, 0, 0.0);
      v4 = &v75;
      goto LABEL_66;
    case 2:
      __break(1u);
      return;
    case 3:
      IR::getProductTypeXTCIRFullPath(&v74);
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v74, ""))
      {
        v69 = 0;
        IR::IRDataAttributes::IRDataAttributes(a2, &v69, 0, 0, 2, 0, 0.0);
        v5 = &v69;
      }

      else
      {
        IR::getProductTypeXTCIRFilePrefix(&v71);
        v6 = std::string::append(&v71, "XTCIR_default.ir", 0x10uLL);
        v7 = *&v6->__r_.__value_.__l.__data_;
        v73 = v6->__r_.__value_.__r.__words[2];
        v72 = v7;
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v8 = &v72;
        }

        else
        {
          v8 = v72;
        }

        if (v73 >= 0)
        {
          v9 = HIBYTE(v73);
        }

        else
        {
          v9 = *(&v72 + 1);
        }

        std::string::append(&v74, v8, v9);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v74;
        }

        else
        {
          v10 = v74.__r_.__value_.__r.__words[0];
        }

        if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v74.__r_.__value_.__l.__size_;
        }

        applesauce::CF::URLRef::URLRef(&v72, v10, size, 0);
        applesauce::CF::URLRef::URLRef(&v70, &v72);
        IR::IRDataAttributes::IRDataAttributes(a2, &v70, 128, 1, 2, 0, 0.0);
        applesauce::CF::URLRef::~URLRef(&v70);
        v5 = &v72;
      }

      applesauce::CF::URLRef::~URLRef(v5);
      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      goto LABEL_67;
    case 4:
      applesauce::CF::URLRef::URLRef(&v68, "Reverb_00_SmallRoom.ir", 22, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v68, 1024, 1, 2, 0, 0.0);
      v4 = &v68;
      goto LABEL_66;
    case 5:
      applesauce::CF::URLRef::URLRef(&v67, "Reverb_01_MediumRoom.ir", 23, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v67, 1024, 1, 2, 0, 0.0);
      v4 = &v67;
      goto LABEL_66;
    case 6:
      applesauce::CF::URLRef::URLRef(&v66, "Reverb_02_LargeRoom.ir", 22, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v66, 1024, 1, 2, 0, 0.0);
      v4 = &v66;
      goto LABEL_66;
    case 7:
      applesauce::CF::URLRef::URLRef(&v65, "Reverb_03_MediumHall.ir", 23, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v65, 1024, 1, 2, 0, 0.0);
      v4 = &v65;
      goto LABEL_66;
    case 8:
      applesauce::CF::URLRef::URLRef(&v64, "Reverb_04_LargeHall.ir", 22, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v64, 1024, 1, 2, 0, 0.0);
      v4 = &v64;
      goto LABEL_66;
    case 9:
      applesauce::CF::URLRef::URLRef(&v63, "Reverb_05_Plate.ir", 18, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v63, 1024, 1, 2, 0, 0.0);
      v4 = &v63;
      goto LABEL_66;
    case 10:
      applesauce::CF::URLRef::URLRef(&v62, "Reverb_06_MediumChamber.ir", 26, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v62, 1024, 1, 2, 0, 0.0);
      v4 = &v62;
      goto LABEL_66;
    case 11:
      applesauce::CF::URLRef::URLRef(&v61, "Reverb_07_LargeChamber.ir", 25, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v61, 1024, 1, 2, 0, 0.0);
      v4 = &v61;
      goto LABEL_66;
    case 12:
      applesauce::CF::URLRef::URLRef(&v60, "Reverb_08_Cathedral.ir", 22, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v60, 1024, 1, 2, 0, 0.0);
      v4 = &v60;
      goto LABEL_66;
    case 13:
      applesauce::CF::URLRef::URLRef(&v59, "Reverb_09_LargeRoom2.ir", 23, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v59, 1024, 1, 2, 0, 0.0);
      v4 = &v59;
      goto LABEL_66;
    case 14:
      applesauce::CF::URLRef::URLRef(&v58, "Reverb_10_MediumHall2.ir", 24, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v58, 1024, 1, 2, 0, 0.0);
      v4 = &v58;
      goto LABEL_66;
    case 15:
      applesauce::CF::URLRef::URLRef(&v57, "Reverb_11_MediumHall3.ir", 24, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v57, 1024, 1, 2, 0, 0.0);
      v4 = &v57;
      goto LABEL_66;
    case 16:
      applesauce::CF::URLRef::URLRef(&v56, "Reverb_12_LargeHall2.ir", 23, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v56, 1024, 1, 2, 0, 0.0);
      v4 = &v56;
      goto LABEL_66;
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      cf = 0;
      IR::IRDataAttributes::IRDataAttributes(a2, &cf, 1024, 1, 2, 0, 0.0);
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_67;
    case 28:
      applesauce::CF::URLRef::URLRef(&v54, "HOAReverb_00_SmallRoom.ir", 25, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v54, 0, 1, 2, 0, 0.0);
      v4 = &v54;
      goto LABEL_66;
    case 29:
      applesauce::CF::URLRef::URLRef(&v53, "HOAReverb_01_MediumRoom.ir", 26, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v53, 0, 1, 2, 0, 0.0);
      v4 = &v53;
      goto LABEL_66;
    case 30:
      applesauce::CF::URLRef::URLRef(&v52, "HOAReverb_02_LargeRoom.ir", 25, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v52, 0, 1, 2, 0, 0.0);
      v4 = &v52;
      goto LABEL_66;
    case 31:
      applesauce::CF::URLRef::URLRef(&v51, "HOAReverb_03_MediumHall.ir", 26, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v51, 0, 1, 2, 0, 0.0);
      v4 = &v51;
      goto LABEL_66;
    case 32:
      applesauce::CF::URLRef::URLRef(&v50, "HOAReverb_04_LargeHall.ir", 25, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v50, 0, 1, 2, 0, 0.0);
      v4 = &v50;
      goto LABEL_66;
    case 33:
      applesauce::CF::URLRef::URLRef(&v49, "", 0, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v49, 0, 1, 2, 0, 0.0);
      v4 = &v49;
      goto LABEL_66;
    case 34:
      applesauce::CF::URLRef::URLRef(&v48, "HOAReverb_06_MediumChamber.ir", 29, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v48, 0, 1, 2, 0, 0.0);
      v4 = &v48;
      goto LABEL_66;
    case 35:
      applesauce::CF::URLRef::URLRef(&v47, "HOAReverb_07_LargeChamber.ir", 28, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v47, 0, 1, 2, 0, 0.0);
      v4 = &v47;
      goto LABEL_66;
    case 36:
      applesauce::CF::URLRef::URLRef(&v46, "HOAReverb_08_Cathedral.ir", 25, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v46, 0, 1, 2, 0, 0.0);
      v4 = &v46;
      goto LABEL_66;
    case 37:
      applesauce::CF::URLRef::URLRef(&v45, "HOAReverb_09_LargeRoom2.ir", 26, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v45, 0, 1, 2, 0, 0.0);
      v4 = &v45;
      goto LABEL_66;
    case 38:
      applesauce::CF::URLRef::URLRef(&v44, "HOAReverb_10_MediumHall2.ir", 27, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v44, 0, 1, 2, 0, 0.0);
      v4 = &v44;
      goto LABEL_66;
    case 39:
      applesauce::CF::URLRef::URLRef(&v43, "HOAReverb_11_MediumHall3.ir", 27, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v43, 0, 1, 2, 0, 0.0);
      v4 = &v43;
      goto LABEL_66;
    case 40:
      applesauce::CF::URLRef::URLRef(&v42, "HOAReverb_12_LargeHall2.ir", 26, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v42, 0, 1, 2, 0, 0.0);
      v4 = &v42;
      goto LABEL_66;
    case 41:
      applesauce::CF::URLRef::URLRef(&v41, "HOAReverb_13_Outside.ir", 23, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v41, 0, 1, 2, 0, 0.0);
      v4 = &v41;
      goto LABEL_66;
    case 42:
      applesauce::CF::URLRef::URLRef(&v40, "HOAReverb_14_OutsidePark.ir", 27, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v40, 0, 1, 2, 0, 0.0);
      v4 = &v40;
      goto LABEL_66;
    case 43:
      applesauce::CF::URLRef::URLRef(&v39, "HOAReverb_15_Office_50m3.ir", 27, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v39, 0, 1, 2, 0, 0.0);
      v4 = &v39;
      goto LABEL_66;
    case 44:
      applesauce::CF::URLRef::URLRef(&v38, "HOAReverb_16_TreatedRoom_133m3.ir", 33, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v38, 0, 1, 2, 0, 0.0);
      v4 = &v38;
      goto LABEL_66;
    case 45:
      applesauce::CF::URLRef::URLRef(&v37, "HOAReverb_17_Studio_200m3.ir", 28, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v37, 0, 1, 2, 0, 0.0);
      v4 = &v37;
      goto LABEL_66;
    case 46:
      applesauce::CF::URLRef::URLRef(&v36, "HOAReverb_18_TreatedRoom_500m3.ir", 33, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v36, 0, 1, 2, 0, 0.0);
      v4 = &v36;
      goto LABEL_66;
    case 47:
      applesauce::CF::URLRef::URLRef(&v35, "HOAReverb_19_LargeRoom_800m3.ir", 31, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v35, 0, 1, 2, 0, 0.0);
      v4 = &v35;
      goto LABEL_66;
    case 48:
      applesauce::CF::URLRef::URLRef(&v34, "HOAReverb_20_EmptyRoom.ir", 25, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v34, 0, 1, 2, 0, 0.0);
      v4 = &v34;
      goto LABEL_66;
    case 49:
      applesauce::CF::URLRef::URLRef(&v33, "HOAReverb_21_OfficeHallway.ir", 29, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v33, 0, 1, 2, 0, 0.0);
      v4 = &v33;
      goto LABEL_66;
    case 50:
      applesauce::CF::URLRef::URLRef(&v32, "HOAReverb_22_SmallTiledRoom.ir", 30, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v32, 0, 1, 2, 0, 0.0);
      v4 = &v32;
      goto LABEL_66;
    case 51:
      applesauce::CF::URLRef::URLRef(&v31, "HOAReverb_23_MediumTiledRoom.ir", 31, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v31, 0, 1, 2, 0, 0.0);
      v4 = &v31;
      goto LABEL_66;
    case 52:
      applesauce::CF::URLRef::URLRef(&v26, "ReverbBaseLibrary/ReverbBase_Small.ir", 37, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v26, 0, 1, 2, 0, 0.0);
      v4 = &v26;
      goto LABEL_66;
    case 53:
      applesauce::CF::URLRef::URLRef(&v25, "ReverbBaseLibrary/ReverbBase_Medium.ir", 38, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v25, 0, 1, 2, 0, 0.0);
      v4 = &v25;
      goto LABEL_66;
    case 54:
      applesauce::CF::URLRef::URLRef(&v24, "ReverbBaseLibrary/ReverbBase_Large.ir", 37, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v24, 0, 1, 2, 0, 0.0);
      v4 = &v24;
      goto LABEL_66;
    case 55:
      applesauce::CF::URLRef::URLRef(&v30, "HOA_Source_Extent.ir", 20, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v30, 0, 1, 2, 0, 0.0);
      v4 = &v30;
      goto LABEL_66;
    case 56:
      applesauce::CF::URLRef::URLRef(&v28, "Binaural_Source_Extent.ir", 25, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v28, 0, 1, 2, 0, 0.0);
      v4 = &v28;
      goto LABEL_66;
    case 57:
      applesauce::CF::URLRef::URLRef(&v27, "XTC_Source_Extent.ir", 20, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v27, 0, 1, 2, 0, 0.0);
      v4 = &v27;
      goto LABEL_66;
    case 58:
      v23 = 0;
      IR::IRDataAttributes::IRDataAttributes(a2, &v23, 0, 1, 2, 0, 0.0);
      v4 = &v23;
      goto LABEL_66;
    case 59:
      applesauce::CF::URLRef::URLRef(&v22, "SourceDirectivity_01_Person.ir", 30, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v22, 0, 1, 2, 4, 0.0);
      v4 = &v22;
      goto LABEL_66;
    case 60:
      applesauce::CF::URLRef::URLRef(&v21, "SourceDirectivity_02_Singer.ir", 30, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v21, 0, 1, 2, 4, 0.0);
      v4 = &v21;
      goto LABEL_66;
    case 61:
      applesauce::CF::URLRef::URLRef(&v20, "SourceDirectivity_03_Studio_Monitor_2_Way.ir", 44, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v20, 0, 1, 2, 4, 0.0);
      v4 = &v20;
      goto LABEL_66;
    case 62:
      applesauce::CF::URLRef::URLRef(&v19, "SourceDirectivity_04_Cardioid_Speaker_Array.ir", 46, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v19, 0, 1, 2, 4, 0.0);
      v4 = &v19;
      goto LABEL_66;
    case 63:
      applesauce::CF::URLRef::URLRef(&v18, "SourceDirectivity_05_Hyper_Cardioid.ir", 38, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v18, 0, 1, 2, 4, 0.0);
      v4 = &v18;
      goto LABEL_66;
    case 64:
      applesauce::CF::URLRef::URLRef(&v17, "SourceDirectivity_06_Acoustic_Guitar.ir", 39, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v17, 0, 1, 2, 4, 0.0);
      v4 = &v17;
      goto LABEL_66;
    case 65:
      applesauce::CF::URLRef::URLRef(&v16, "SourceDirectivity_07_Violin.ir", 30, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v16, 0, 1, 2, 4, 0.0);
      v4 = &v16;
      goto LABEL_66;
    case 66:
      applesauce::CF::URLRef::URLRef(&v15, "SourceDirectivity_08_Cello.ir", 29, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v15, 0, 1, 2, 4, 0.0);
      v4 = &v15;
      goto LABEL_66;
    case 67:
      applesauce::CF::URLRef::URLRef(&v14, "SourceDirectivity_09_Clarinet.ir", 32, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v14, 0, 1, 2, 4, 0.0);
      v4 = &v14;
      goto LABEL_66;
    case 68:
      applesauce::CF::URLRef::URLRef(&v29, "HOA_Near_Field_Compensation.ir", 30, v80);
      IR::IRDataAttributes::IRDataAttributes(a2, &v29, 128, 1, 2, 0, 0.0);
      v4 = &v29;
      goto LABEL_66;
    case 69:
      applesauce::CF::URLRef::URLRef(&v77);
      IR::IRDataAttributes::IRDataAttributes(a2, &v77, 128, 1, 2, 0, 0.0);
      v4 = &v77;
      goto LABEL_66;
    case 70:
      applesauce::CF::URLRef::URLRef(&v76);
      IR::IRDataAttributes::IRDataAttributes(a2, &v76, 128, 1, 2, 0, 0.0);
      v4 = &v76;
      goto LABEL_66;
    default:
      applesauce::CF::URLRef::URLRef(&v78);
      IR::IRDataAttributes::IRDataAttributes(a2, &v78, 128, 1, 2, 0, 0.0);
      v4 = &v78;
LABEL_66:
      applesauce::CF::URLRef::~URLRef(v4);
LABEL_67:
      if (v79)
      {
        CFRelease(v79);
      }

      if (v80)
      {
        CFRelease(v80);
      }

      return;
  }
}

void sub_296BDF69C(_Unwind_Exception *a1)
{
  applesauce::CF::URLRef::~URLRef((v1 - 160));
  applesauce::CF::URLRef::~URLRef((v1 - 128));
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  applesauce::CF::URLRef::~URLRef((v1 - 48));
  applesauce::CF::URLRef::~URLRef((v1 - 40));
  _Unwind_Resume(a1);
}

uint64_t *applesauce::CF::URLRef::URLRef(uint64_t *a1)
{
  v2 = MEMORY[0x29C25F3C0](0);
  *a1 = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

CFURLRef *applesauce::CF::URLRef::URLRef(CFURLRef *a1, const UInt8 *a2, CFIndex a3, CFURLRef baseURL)
{
  v5 = CFURLCreateWithBytes(0, a2, a3, 0, baseURL);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

applesauce::CF::URLRef *applesauce::CF::URLRef::URLRef(applesauce::CF::URLRef *this, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *this = v3;
  return this;
}

uint64_t applesauce::gestalt::query_as<unsigned int,0>()
{
  v0 = MGCopyAnswerWithError();
  v1 = v0;
  if (v0)
  {
    v2 = applesauce::CF::convert_as<unsigned int,0>(v0);
    v3 = v2;
    v4 = v2 & 0xFFFFFF00;
    v5 = v2 & 0xFFFFFFFF00000000;
    CFRelease(v1);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
  }

  return v5 & 0xFF00000000 | v4 & 0xFFFFFF00 | v3;
}

_BYTE *applesauce::CF::convert_to<std::string,0>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

unsigned int *IR::FFTSubFilterData<float>::FFTSubFilterData(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 10) = 0u;
  v4 = a1 + 10;
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  *(a1 + 2) = 0uLL;
  *(a1 + 18) = 0uLL;
  *(a1 + 14) = 0uLL;
  *(a1 + 6) = 0uLL;
  v6 = a3 / v5;
  if (a3 / v5 * v5 < a3)
  {
    ++v6;
  }

  *a1 = v5;
  a1[1] = v6;
  v7 = v6 * v5;
  a1[3] = v7;
  std::vector<float>::resize((a1 + 4), (2 * v7));
  std::vector<DSPSplitComplex>::resize(v4, a1[1]);
  std::vector<float>::resize((a1 + 16), a1[1]);
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = *(a1 + 2);
    v12 = *a1;
    v13 = 2 * *a1;
    do
    {
      *v8 = v11 + 4 * v10;
      v8[1] = v11 + 4 * (v12 + v10);
      v8 += 2;
      v10 += v13;
    }

    while (v8 != v9);
  }

  return a1;
}

void sub_296BDFE70(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  IR::FFTSubFilterData<float>::FFTSubFilterData(v2, (v1 + 16), v1);
  _Unwind_Resume(a1);
}

uint64_t IR::FFTSubFilterData<float>::FFTSubFilterData(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  IR::FFTSubFilterData<float>::operator=(a1, a2);
  return a1;
}

void sub_296BDFEEC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  IR::FFTSubFilterData<float>::FFTSubFilterData((v1 + 40), v2, v1);
  _Unwind_Resume(a1);
}

int *IR::FFTSubFilterData<float>::operator=(int *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 8, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 2, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    std::vector<IR::SplitComplex<float>>::__assign_with_size[abi:ne200100]<IR::SplitComplex<float>*,IR::SplitComplex<float>*>(a1 + 5, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 4);
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    if (v4 != v5)
    {
      v6 = 0;
      v7 = *(a1 + 2);
      v8 = *a1;
      v9 = 2 * *a1;
      do
      {
        *v4 = v7 + 4 * v6;
        v4[1] = v7 + 4 * (v8 + v6);
        v4 += 2;
        v6 += v9;
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t IR::FFTSubFilterData<float>::setFilter(unsigned int *a1, uint64_t a2, unsigned int a3, MultiRadixRealFFT *this, uint64_t a5, unsigned int a6, float a7)
{
  v38 = a2;
  v42 = *MEMORY[0x29EDCA608];
  if (a1[3] < a3)
  {
    return 4294967246;
  }

  v13 = a3 % *a1;
  if (v13)
  {
    v14 = a3 / *a1 + 1;
  }

  else
  {
    v14 = a3 / *a1;
  }

  a1[2] = v14;
  v40 = 0;
  if (!this || MultiRadixRealFFT::Size(this) != 2 * *a1)
  {
    operator new();
  }

  v15 = MultiRadixRealFFT::Size(this);
  LODWORD(v16) = a1[2];
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = a5;
    v20 = a7 / v15;
    v21 = v13 >> 1;
    v22 = *&v19 != 0.0;
    if (*(&v19 + 1) != 0.0)
    {
      v22 = 1;
    }

    if (a6)
    {
      v22 = 1;
    }

    v36 = v13 - 1;
    v37 = v22;
    do
    {
      v23 = (v38 + 4 * v18);
      __Z.realp = 0;
      __Z.imagp = 0;
      __Z = *(*(a1 + 5) + 16 * v17);
      if (v13 && v17 == v16 - 1)
      {
        vDSP_ctoz(v23, 2, &__Z, 1, v13 >> 1);
        bzero((*(*(a1 + 5) + 16 * v17) + 4 * v21), 4 * (*a1 - v21));
        bzero((*(*(a1 + 5) + 16 * v17 + 8) + 4 * v21), 4 * (*a1 - v21));
        if (v13)
        {
          *(*(*(a1 + 5) + 16 * v17) + 4 * v21) = *(v38 + 4 * (v36 + v18));
        }
      }

      else
      {
        vDSP_ctoz(v23, 2, &__Z, 1, *a1 >> 1);
        bzero((*(*(a1 + 5) + 16 * v17) + ((2 * *a1) & 0x1FFFFFFFCLL)), 2 * *a1);
        bzero((*(*(a1 + 5) + 16 * v17 + 8) + ((2 * *a1) & 0x1FFFFFFFCLL)), 2 * *a1);
      }

      v24 = MultiRadixRealFFT::RealInPlaceTransform(this, &__Z, 1, v20);
      v25 = *a1;
      if (v37)
      {
        MEMORY[0x2A1C7C4A8](v24);
        v27 = &v36 - ((v26 + 15) & 0x7FFFFFFF0);
        vDSP_zvmags(&__Z, 1, v27, 1, *a1);
        v28 = 0.0;
        if (*(&v19 + 1) > 0.0)
        {
          v29 = *a1 - 1;
          __C = 0.0;
          vDSP_maxv(v27 + 1, 1, &__C, v29);
          v28 = (*(&v19 + 1) * *(&v19 + 1)) * __C;
        }

        LODWORD(v30) = *a1;
        if (*a1 >= a6)
        {
          v31 = a6;
        }

        else
        {
          v31 = *a1;
        }

        if (a6)
        {
          v30 = v31;
        }

        else
        {
          v30 = v30;
        }

        if (v30)
        {
          while (1)
          {
            v32 = *&v27[4 * v30];
            if (v32 > (v20 * ((*&v19 * *&v19) * v20)) && v32 > v28)
            {
              break;
            }

            if (!--v30)
            {
              goto LABEL_40;
            }
          }

          if (v30 < 2)
          {
            LODWORD(v30) = 0;
          }
        }

LABEL_40:
        *(*(a1 + 8) + 4 * v17) = v30;
      }

      else
      {
        *(*(a1 + 8) + 4 * v17) = v25;
      }

      v18 += v25;
      ++v17;
      v16 = a1[2];
    }

    while (v17 < v16);
  }

  v7 = 0;
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](&v40, v34);
  }

  return v7;
}

void sub_296BE0384(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  *(v1 - 136) = 0;
  if (v3)
  {
    std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v1 - 136, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::FFTSubFilterData<float>::accumulate(uint64_t a1, uint64_t a2, float a3)
{
  if (*a2 == *a1)
  {
    if (*(a2 + 8) >= *(a1 + 4))
    {
      v5 = *(a1 + 4);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      v7 = 0;
      v8 = *(a2 + 64);
      v9 = 8;
      do
      {
        v10 = *(*(a2 + 40) + v9 - 8);
        v11 = *(*(a1 + 40) + v9 - 8);
        v12 = *(v8 + v7);
        v19 = a3;
        MEMORY[0x29C260500](v10, 1, &v19, v11, 1, v11, 1, v12);
        v13 = *(*(a2 + 40) + v9);
        v14 = *(*(a1 + 40) + v9);
        v15 = *(*(a2 + 64) + v7);
        v20 = a3;
        MEMORY[0x29C260500](v13, 1, &v20, v14, 1, v14, 1, v15);
        v16 = *(a1 + 64);
        v8 = *(a2 + 64);
        v17 = *(v16 + v7);
        if (v17 <= *(v8 + v7))
        {
          v17 = *(v8 + v7);
        }

        *(v16 + v7) = v17;
        v9 += 16;
        v7 += 4;
      }

      while (4 * v5 != v7);
    }

    result = 0;
    if (v5 > *(a1 + 8))
    {
      *(a1 + 8) = v5;
    }
  }

  else
  {
    bzero(*(a1 + 16), *(a1 + 24) - *(a1 + 16));
    *(a1 + 8) = 0;
    return 4294967246;
  }

  return result;
}

uint64_t IR::FFTSubFilterData<float>::overwrite(unsigned int *a1, uint64_t a2, float a3)
{
  if (*a2 == *a1)
  {
    v5 = *(a2 + 8);
    v6 = a1[1];
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(*(a2 + 40) + v10 - 8);
        v12 = *(*(a1 + 5) + v10 - 8);
        v13 = *a1;
        v20 = a3;
        MEMORY[0x29C260530](v11, 1, &v20, v12, 1, v13);
        v14 = *(*(a2 + 40) + v10);
        v15 = *(*(a1 + 5) + v10);
        v16 = *a1;
        v21 = a3;
        MEMORY[0x29C260530](v14, 1, &v21, v15, 1, v16);
        *(*(a1 + 8) + v9) = *(*(a2 + 64) + v9);
        v10 += 16;
        v9 += 4;
      }

      while (4 * v7 != v9);
      v6 = a1[1];
    }

    if (v7 < v6)
    {
      v17 = 16 * v7;
      v18 = v7;
      do
      {
        bzero(*(*(a1 + 5) + v17), 8 * *a1);
        ++v18;
        v17 += 16;
      }

      while (v18 < a1[1]);
    }

    result = 0;
  }

  else
  {
    bzero(*(a1 + 2), *(a1 + 3) - *(a1 + 2));
    LODWORD(v7) = 0;
    result = 4294967246;
  }

  a1[2] = v7;
  return result;
}

uint64_t IR::FFTSubFilterData<float>::scale(unsigned int *a1, float a2)
{
  if (a1[1])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 5) + v4);
      v7 = *a1;
      v11 = a2;
      MEMORY[0x29C260530](v6, 1, &v11, v6, 1, v7);
      v8 = *(*(a1 + 5) + v4 + 8);
      v9 = *a1;
      v12 = a2;
      MEMORY[0x29C260530](v8, 1, &v12, v8, 1, v9);
      ++v5;
      v4 += 16;
    }

    while (v5 < a1[1]);
  }

  return 0;
}

unsigned int *_ZN2IR16FFTSubFilterDataIDF16_EC2Ejj(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 10) = 0u;
  v4 = a1 + 10;
  *(a1 + 22) = 0u;
  v5 = (a1 + 22);
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 2) = 0uLL;
  *(a1 + 13) = 0;
  *(a1 + 18) = 0uLL;
  *(a1 + 14) = 0uLL;
  *(a1 + 6) = 0uLL;
  v7 = a3 / v6;
  if (a3 / v6 * v6 < a3)
  {
    ++v7;
  }

  *a1 = v6;
  a1[1] = v7;
  v8 = v7 * v6;
  a1[3] = v8;
  std::vector<short>::resize(a1 + 2, (2 * v8));
  std::vector<DSPSplitComplex>::resize(v4, a1[1]);
  std::vector<float>::resize((a1 + 16), a1[1]);
  std::vector<float>::resize(v5, 2 * *a1);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = *(a1 + 2);
    v13 = *a1;
    v14 = 2 * *a1;
    do
    {
      *v9 = v12 + 2 * v11;
      v9[1] = v12 + 2 * (v13 + v11);
      v9 += 2;
      v11 += v14;
    }

    while (v9 != v10);
  }

  return a1;
}

void sub_296BE081C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  _ZN2IR16FFTSubFilterDataIDF16_EC2Ejj_cold_1(v1 + 64);
  _Unwind_Resume(a1);
}

uint64_t _ZN2IR16FFTSubFilterDataIDF16_EC2ERKS1_(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  _ZN2IR16FFTSubFilterDataIDF16_EaSERKS1_(a1, a2);
  return a1;
}

void sub_296BE08A0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 88);
  if (v4)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  _ZN2IR16FFTSubFilterDataIDF16_EC2Ejj_cold_1(v2);
  _Unwind_Resume(a1);
}

int *_ZN2IR16FFTSubFilterDataIDF16_EaSERKS1_(int *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 8, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE18__assign_with_sizeB8ne200100IPDF16_S5_EEvT_T0_l(a1 + 2, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 1);
    std::vector<IR::SplitComplex<float>>::__assign_with_size[abi:ne200100]<IR::SplitComplex<float>*,IR::SplitComplex<float>*>(a1 + 5, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 4);
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    if (v4 != v5)
    {
      v6 = 0;
      v7 = *(a1 + 2);
      v8 = *a1;
      v9 = 2 * *a1;
      do
      {
        *v4 = v7 + 2 * v6;
        v4[1] = v7 + 2 * (v8 + v6);
        v4 += 2;
        v6 += v9;
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t _ZN2IR16FFTSubFilterDataIDF16_E9setFilterEPKDF16_jDF16_P17MultiRadixRealFFTNS_31FFTFilterOptimizationParametersE(unsigned int *a1, uint64_t a2, unsigned int a3, MultiRadixRealFFT *this, uint64_t a5, unsigned int a6, __n128 a7)
{
  v49 = a2;
  v52[1] = *MEMORY[0x29EDCA608];
  if (a1[3] < a3)
  {
    return 4294967246;
  }

  v11 = *a7.n128_u16;
  v13 = a3 % *a1;
  if (v13)
  {
    v14 = a3 / *a1 + 1;
  }

  else
  {
    v14 = a3 / *a1;
  }

  a1[2] = v14;
  v52[0] = 0;
  if (!this || MultiRadixRealFFT::Size(this) != 2 * *a1)
  {
    operator new();
  }

  v15 = MultiRadixRealFFT::Size(this);
  LODWORD(v16) = a1[2];
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = a5;
    _H1 = v11 / v15;
    v21 = v13 >> 1;
    __asm { FCVT            S8, H1 }

    v27 = *&v19 != 0.0;
    if (*(&v19 + 1) != 0.0)
    {
      v27 = 1;
    }

    if (a6)
    {
      v27 = 1;
    }

    v47 = v13 - 1;
    v48 = v27;
    _S0 = ((*&v19 * *&v19) * _S8) * _S8;
    __asm { FCVT            H11, S0 }

    do
    {
      v30 = v49 + 2 * v18;
      v51 = 0uLL;
      v51 = *(*(a1 + 5) + 16 * v17);
      if (v13 && v17 == v16 - 1)
      {
        vDSP_ctoz_fp16(v30, 2, &v51, 1, v13 >> 1);
        bzero((*(*(a1 + 5) + 16 * v17) + 2 * v21), 2 * (*a1 - v21));
        bzero((*(*(a1 + 5) + 16 * v17 + 8) + 2 * v21), 2 * (*a1 - v21));
        if (v13)
        {
          *(*(*(a1 + 5) + 16 * v17) + 2 * v21) = *(v49 + 2 * (v47 + v18));
        }
      }

      else
      {
        vDSP_ctoz_fp16(v30, 2, &v51, 1, *a1 >> 1);
        bzero((*(*(a1 + 5) + 16 * v17) + (*a1 & 0xFFFFFFFE)), *a1);
        bzero((*(*(a1 + 5) + 16 * v17 + 8) + (*a1 & 0xFFFFFFFE)), *a1);
      }

      v31 = *a1;
      v50.realp = *(a1 + 11);
      v50.imagp = &v50.realp[v31];
      vDSP_vhpsp(v51, 1, v50.realp, 1, v31);
      vDSP_vhpsp(*(&v51 + 1), 1, v50.imagp, 1, *a1);
      MultiRadixRealFFT::RealInPlaceTransform(this, &v50, 1, _S8);
      vDSP_vsphp(v50.realp, 1, v51, 1, *a1);
      vDSP_vsphp(v50.imagp, 1, *(&v51 + 1), 1, *a1);
      v33 = *a1;
      if (v48)
      {
        MEMORY[0x2A1C7C4A8](v32);
        v35 = &v47 - ((v34 + 15) & 0x3FFFFFFF0);
        vDSP_zvmags_fp16(&v51, 1, v35, 1, *a1);
        LOWORD(_H0) = 0;
        if (*(&v19 + 1) > 0.0)
        {
          v37 = *a1 - 1;
          LOWORD(v50.realp) = 0;
          vDSP_maxv_fp16(v35 + 1, 1, &v50, v37);
          _H0 = v50.realp;
          __asm { FCVT            S0, H0 }

          _S0 = (*(&v19 + 1) * *(&v19 + 1)) * _S0;
          __asm { FCVT            H0, S0 }
        }

        LODWORD(v41) = *a1;
        if (*a1 >= a6)
        {
          v42 = a6;
        }

        else
        {
          v42 = *a1;
        }

        if (a6)
        {
          v41 = v42;
        }

        else
        {
          v41 = v41;
        }

        if (v41)
        {
          while (1)
          {
            v43 = *&v35[2 * v41];
            if (v43 > _H11 && v43 > _H0)
            {
              break;
            }

            if (!--v41)
            {
              goto LABEL_40;
            }
          }

          if (v41 < 2)
          {
            LODWORD(v41) = 0;
          }
        }

LABEL_40:
        *(*(a1 + 8) + 4 * v17) = v41;
      }

      else
      {
        *(*(a1 + 8) + 4 * v17) = v33;
      }

      v18 += v33;
      ++v17;
      v16 = a1[2];
    }

    while (v17 < v16);
  }

  v7 = 0;
  v45 = v52[0];
  v52[0] = 0;
  if (v45)
  {
    std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v52, v45);
  }

  return v7;
}

void sub_296BE0DB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  *(v1 - 144) = 0;
  if (v3)
  {
    std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v1 - 144, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN2IR16FFTSubFilterDataIDF16_E10accumulateERKS1_DF16_(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*a2 == *a1)
  {
    if (*(a2 + 8) >= *(a1 + 4))
    {
      v5 = *(a1 + 4);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      v6 = a3.n128_u16[0];
      v7 = 0;
      v8 = *(a2 + 64);
      v9 = 8;
      do
      {
        v10 = *(*(a2 + 40) + v9 - 8);
        v11 = *(*(a1 + 40) + v9 - 8);
        v12 = *(v8 + v7);
        v19 = v6;
        vDSP_vsma_fp16(v10, 1, &v19, v11, 1, v11, 1, v12);
        v13 = *(*(a2 + 40) + v9);
        v14 = *(*(a1 + 40) + v9);
        v15 = *(*(a2 + 64) + v7);
        v20 = v6;
        vDSP_vsma_fp16(v13, 1, &v20, v14, 1, v14, 1, v15);
        v16 = *(a1 + 64);
        v8 = *(a2 + 64);
        v17 = *(v16 + v7);
        if (v17 <= *(v8 + v7))
        {
          v17 = *(v8 + v7);
        }

        *(v16 + v7) = v17;
        v9 += 16;
        v7 += 4;
      }

      while (4 * v5 != v7);
    }

    result = 0;
    if (v5 > *(a1 + 8))
    {
      *(a1 + 8) = v5;
    }
  }

  else
  {
    bzero(*(a1 + 16), *(a1 + 24) - *(a1 + 16));
    *(a1 + 8) = 0;
    return 4294967246;
  }

  return result;
}