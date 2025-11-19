void HSampleTiledNoise::~HSampleTiledNoise(HGNode *this)
{
  HgcSampleTiledNoise::~HgcSampleTiledNoise(this);

  HGObject::operator delete(v1);
}

uint64_t FxColorDescription::FxColorDescription(uint64_t a1, CGColorSpace *a2, int a3, void *a4, char a5)
{
  PCColorDescription::PCColorDescription(space, a2, a3, a4);
  v7 = space[0];
  *a1 = space[0];
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  *(a1 + 8) = space[1];
  *(a1 + 16) = v10;
  *(a1 + 24) = a5;
  PCCFRef<CGColorSpace *>::~PCCFRef(space);
  return a1;
}

void sub_25FF09470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t FxColorDescription::FxColorDescription(uint64_t a1, uint64_t a2, int a3)
{
  result = PCColorDescription::PCColorDescription(a1, a2, a3);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t FxGetDefaultWorkingColorDescription@<X0>(uint64_t a1@<X8>)
{
  v2 = PCGetGamutColorSpace();
  v4 = 4;
  return FxColorDescription::FxColorDescription(a1, v2, 0, &v4, 1);
}

int8x8_t *FxHashColorDescription(int8x8_t *a1, const FxColorDescription *a2)
{
  PCHashColorDescription(a1, &a2->_pcColorDesc);
  isPremultiplied = a2->_isPremultiplied;

  return PCHashWriteStream::writeValue(a1, isPremultiplied);
}

void HGaussianBlur::HGaussianBlur(HGaussianBlur *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287258088;
  v1[51] = 0;
  v1[52] = 0;
}

void HGaussianBlur::~HGaussianBlur(HGNode *this)
{
  *this = &unk_287258088;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  HGaussianBlur::~HGaussianBlur(this);

  HGObject::operator delete(v1);
}

HConvolvePass8Tap8Bit *HGaussianBlur::init(HGaussianBlur *this, float a2, float a3, float a4, char a5, int a6, char a7)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v11 = a2 / 1.3;
    v12 = v11;
    if (a2 >= 1.3)
    {
      v19 = v11;
      v20 = (logf(v19) / 1.0397) + 1.0;
      if (v20 < 0.0)
      {
        v20 = 0.0;
      }

      v13 = 2 * v20 + 2;
      if (v13 < 1)
      {
        result = *(this + 52);
        if (!result)
        {
          return result;
        }

        v22 = 0;
        v34 = (this + 416);
        goto LABEL_47;
      }

      v35 = this;
      v12 = v20 - v20;
    }

    else
    {
      v35 = this;
      v13 = 2;
    }

    v21 = 0;
    v22 = 0;
    do
    {
      memset_pattern16(__b, &unk_26084A410, 0x20uLL);
      if (v21 == v13 - 1 || v21 == v13 - 2)
      {
        v24 = v12;
      }

      else
      {
        v24 = 1.0;
      }

      v25 = v24 * (1 << (v21 >> 1));
      v26 = v25 * a4;
      if (v21)
      {
        v26 = 0.0;
      }

      v27 = v25 * a3;
      if ((v21 & 1) == 0)
      {
        v27 = 0.0;
      }

      v38[0] = vmulq_n_f32(xmmword_26084A3F0, v27);
      v38[1] = vmulq_n_f32(xmmword_26084A400, v27);
      v37[0] = vmulq_n_f32(xmmword_26084A3F0, v26);
      v37[1] = vmulq_n_f32(xmmword_26084A400, v26);
      if (!a6)
      {
        v29 = HGObject::operator new(0x1A0uLL);
        HgcConvolvePass8tap::HgcConvolvePass8tap(v29);
      }

      v28 = HGObject::operator new(0x1A0uLL);
      HConvolvePass8Tap8Bit::HConvolvePass8Tap8Bit(v28);
      for (i = 0; i != 8; ++i)
      {
        (*(*v28 + 96))(v28, i, -*(v38 + i), -*(v37 + i), 0.0, 0.0);
        (*(*v28 + 96))(v28, i | 8, __b[i], __b[i], __b[i], __b[i]);
      }

      v31 = *v28;
      if (v22)
      {
        (*(v31 + 120))(v28, 0, v22);
        v32 = (*(*v28 + 128))(v28, 0);
        *(v32 + 16) |= 2u;
        if (v22 != v28)
        {
          (*(*v22 + 24))(v22);
          v22 = v28;
          (*(*v28 + 16))(v28);
        }
      }

      else
      {
        (*(v31 + 16))(v28);
        v33 = *(v35 + 51);
        v22 = v28;
        if (v33 != v28)
        {
          if (v33)
          {
            (*(*v33 + 24))(v33);
          }

          *(v35 + 51) = v28;
          (*(*v28 + 16))(v28);
          v22 = v28;
        }
      }

      (*(*v28 + 24))(v28);
      ++v21;
    }

    while (v21 != v13);
    result = *(v35 + 52);
    if (result == v22)
    {
      return (*(*v22 + 24))(v22);
    }

    v34 = (v35 + 416);
    if (!result)
    {
      *v34 = v22;
LABEL_48:
      (*(*v22 + 16))(v22);
      return (*(*v22 + 24))(v22);
    }

LABEL_47:
    result = (*(*result + 24))(result);
    *v34 = v22;
    if (!v22)
    {
      return result;
    }

    goto LABEL_48;
  }

  v15 = HGObject::operator new(0x220uLL);
  HGBlur::HGBlur(v15);
  (*(*v15 + 96))(v15, 0, fabsf(a2 * a3), fabsf(a2 * a4), 0.0, 0.0);
  if ((a7 & 1) == 0)
  {
    (*(*v15 + 96))(v15, 2, 1.0, 0.0, 0.0, 0.0);
  }

  v16 = *(this + 51);
  if (v16 != v15)
  {
    if (v16)
    {
      (*(*v16 + 24))(v16);
    }

    *(this + 51) = v15;
    (*(*v15 + 16))(v15);
  }

  v17 = *(this + 52);
  if (v17 != v15)
  {
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    *(this + 52) = v15;
    (*(*v15 + 16))(v15);
  }

  return (*(*v15 + 24))(v15);
}

uint64_t HGaussianBlur::GetOutput(HGNode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  return *(this + 52);
}

void *FxDeviceMakeSetByAddingDeviceToSet(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a1)
  {
    __p = a2;
    if (a1 + 8 != std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::find<FxDevice const*>(a1, &__p))
    {
      return v3;
    }

    deviceSetToRegistryList(v3, &__p);
  }

  else
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
  }

  v11.n128_u64[0] = FxDeviceGetDeviceKey(a2);
  v11.n128_u64[1] = v4;
  v6 = __p;
  v5 = v13;
  if (v13 != __p)
  {
    v7 = (v13 - __p) >> 4;
    do
    {
      v8 = &v6[v7 >> 1];
      v9 = operator<(v8, &v11);
      if (v9)
      {
        v7 += ~(v7 >> 1);
      }

      else
      {
        v7 >>= 1;
      }

      if (v9)
      {
        v6 = (v8 + 16);
      }
    }

    while (v7);
    v5 = v6;
  }

  std::vector<FxDeviceKey>::insert(&__p, v5, &v11);
  v3 = findOrAddSetToSingletonMap(&__p, v3, a2);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_25FF0A008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void deviceSetToRegistryList(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      DeviceKey = FxDeviceGetDeviceKey(v3[4]);
      v7 = v6;
      v9 = *(a2 + 8);
      v8 = *(a2 + 16);
      if (v9 >= v8)
      {
        v11 = (v9 - *a2) >> 4;
        v12 = v11 + 1;
        if ((v11 + 1) >> 60)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - *a2;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<FxDeviceKey>>(a2, v14);
        }

        v15 = (16 * v11);
        *v15 = DeviceKey;
        v15[1] = v7;
        v10 = 16 * v11 + 16;
        v16 = *(a2 + 8) - *a2;
        v17 = (16 * v11 - v16);
        memcpy(v17, *a2, v16);
        v18 = *a2;
        *a2 = v17;
        *(a2 + 8) = v10;
        *(a2 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = DeviceKey;
        v9[1] = v6;
        v10 = (v9 + 2);
      }

      *(a2 + 8) = v10;
      v19 = v3[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v3[2];
          v21 = *v20 == v3;
          v3 = v20;
        }

        while (!v21);
      }

      v3 = v20;
    }

    while (v20 != v2);
  }
}

void sub_25FF0A16C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 *std::vector<FxDeviceKey>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FxDeviceKey>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<FxDeviceKey>::emplace_back<FxDeviceKey const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_25FF0A328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t findOrAddSetToSingletonMap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  {
    operator new();
  }

  v11 = getSingletonLock(void)::mutex;
  PCMutex::lock(getSingletonLock(void)::mutex);
  v12 = 1;
  {
    operator new();
  }

  v6 = getSingletonMap(void)::result;
  v7 = std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::find<std::vector<FxDeviceKey>>(getSingletonMap(void)::result, a1);
  if (v6 + 8 == v7)
  {
    if (a2)
    {
      std::set<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::set[abi:ne200100](&v9, a2);
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10[0] = 0;
      v10[1] = 0;
      v9 = v10;
      if (!a3)
      {
LABEL_9:
        v7 = std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::__emplace_unique_key_args<std::vector<FxDeviceKey>,std::vector<FxDeviceKey> const&,FxDeviceSetObj>(v6, a1);
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v9, v10[0]);
        goto LABEL_10;
      }
    }

    v13 = a3;
    std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__emplace_unique_key_args<FxDevice const*,FxDevice const* const&>(&v9, &v13);
    goto LABEL_9;
  }

LABEL_10:
  if (v11 && v12 == 1)
  {
    PCMutex::unlock(v11);
  }

  return v7 + 56;
}

void sub_25FF0A50C(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x1081C4076DFA842);
  _Unwind_Resume(a1);
}

void *FxDeviceGetAllGPUs(HGComputeDeviceManager *a1)
{
  GPUComputeDeviceList = HGComputeDeviceManager::GetGPUComputeDeviceList(a1);
  v2 = *GPUComputeDeviceList;
  v3 = GPUComputeDeviceList[1];
  if (*GPUComputeDeviceList == v3)
  {
    return 0;
  }

  SetByAddingDeviceToSet = 0;
  do
  {
    v5 = v2[1];
    v8 = *v2;
    v9 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    DeviceForHGDevice = FxDeviceGetDeviceForHGDevice(&v8);
    SetByAddingDeviceToSet = FxDeviceMakeSetByAddingDeviceToSet(SetByAddingDeviceToSet, DeviceForHGDevice);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v2 += 2;
  }

  while (v2 != v3);
  return SetByAddingDeviceToSet;
}

void sub_25FF0A61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *FxDeviceComputeActiveGPUsSet(HGComputeDeviceManager *a1)
{
  AllGPUs = FxDeviceGetAllGPUs(a1);
  if (!AllGPUs)
  {
    return 0;
  }

  v2 = AllGPUs + 1;
  v3 = *AllGPUs;
  if (*AllGPUs == AllGPUs + 1)
  {
    return 0;
  }

  SetByAddingDeviceToSet = 0;
  do
  {
    v5 = v3[4];
    if (FxDeviceIsSharedGPU(v5))
    {
      SetByAddingDeviceToSet = FxDeviceMakeSetByAddingDeviceToSet(SetByAddingDeviceToSet, v5);
    }

    v6 = v3[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v3[2];
        v8 = *v7 == v3;
        v3 = v7;
      }

      while (!v8);
    }

    v3 = v7;
  }

  while (v7 != v2);
  return SetByAddingDeviceToSet;
}

uint64_t logGPUList(const char *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v4 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, a1, v4);
  if (a2)
  {
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      v8 = ": ";
      do
      {
        v9 = v6[4];
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v8, 2);
        FxDeviceGetLogStdString(v9);
        if ((v19 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v12 = v19;
        }

        else
        {
          v12 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        v13 = v6[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v6[2];
            v15 = *v14 == v6;
            v6 = v14;
          }

          while (!v15);
        }

        v8 = ", ";
        v6 = v14;
      }

      while (v14 != v5);
    }
  }

  std::stringbuf::str();
  if ((v19 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  NSLog(&cfstr_S_5.isa, v16);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = *MEMORY[0x277D82828];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v24);
}

void sub_25FF0A938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a9 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a10, MEMORY[0x277D82828]);
  MEMORY[0x2666E9E10](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::find<FxDevice const*>(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = FxDeviceSortOrder(*(v3 + 32), *a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || FxDeviceSortOrder(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FxDeviceKey>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::find<std::vector<FxDeviceKey>>(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::__lower_bound<std::vector<FxDeviceKey>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  if (std::__lexicographical_compare[abi:ne200100]<FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,std::__identity,std::__identity,std::__less<void,void>>(*a2, a2[1], *(v5 + 32), *(v5 + 40)))
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::__lower_bound<std::vector<FxDeviceKey>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = std::__lexicographical_compare[abi:ne200100]<FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,std::__identity,std::__identity,std::__less<void,void>>(*(v5 + 32), *(v5 + 40), *a2, a2[1]);
      if (v7)
      {
        v8 = 8;
      }

      else
      {
        v8 = 0;
      }

      if (!v7)
      {
        a4 = v5;
      }

      v5 = *(v5 + v8);
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__lexicographical_compare[abi:ne200100]<FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,std::__identity,std::__identity,std::__less<void,void>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  v5 = a3;
  while (a1 != a2 && !operator<(a1, v5))
  {
    v8 = operator<(v5, a1);
    result = 0;
    if (!v8)
    {
      a1 += 16;
      v5 += 16;
      if (v5 != a4)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

void *std::set<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::insert[abi:ne200100]<std::__tree_const_iterator<FxDevice const*,std::__tree_node<FxDevice const*,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::insert[abi:ne200100]<std::__tree_const_iterator<FxDevice const*,std::__tree_node<FxDevice const*,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__emplace_hint_unique_key_args<FxDevice const*,FxDevice const* const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__emplace_hint_unique_key_args<FxDevice const*,FxDevice const* const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__find_equal<FxDevice const*>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__find_equal<FxDevice const*>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !FxDeviceSortOrder(*a5, a2[4]))
  {
    if (!FxDeviceSortOrder(a2[4], *a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!FxDeviceSortOrder(*a5, v15[4]))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (FxDeviceSortOrder(v12[4], *a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__find_equal<FxDevice const*>(a1, a3, a5);
}

void *std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__find_equal<FxDevice const*>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!FxDeviceSortOrder(*a3, v4[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!FxDeviceSortOrder(v7[4], *a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__emplace_unique_key_args<FxDevice const*,FxDevice const* const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<FxDevice const*,FxDeviceSortOrderFunctor,std::allocator<FxDevice const*>>::__find_equal<FxDevice const*>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::__emplace_unique_key_args<std::vector<FxDeviceKey>,std::vector<FxDeviceKey> const&,FxDeviceSetObj>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::__find_equal<std::vector<FxDeviceKey>>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::__construct_node<std::vector<FxDeviceKey> const&,FxDeviceSetObj>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::__map_value_compare<std::vector<FxDeviceKey>,std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,std::less<std::vector<FxDeviceKey>>,true>,std::allocator<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>>>::__find_equal<std::vector<FxDeviceKey>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::__lexicographical_compare[abi:ne200100]<FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,std::__identity,std::__identity,std::__less<void,void>>(*a3, a3[1], v4[4], v4[5]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::__lexicographical_compare[abi:ne200100]<FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,FxDeviceKey const*,std::__identity,std::__identity,std::__less<void,void>>(v7[4], v7[5], *a3, a3[1]))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<FxDeviceKey>,FxDeviceSetObj const>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<FxDeviceKey> const,FxDeviceSetObj const>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::pair<std::vector<FxDeviceKey> const,FxDeviceSetObj const>::pair[abi:ne200100]<std::vector<FxDeviceKey> const&,FxDeviceSetObj,0>(void *a1, uint64_t *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<FxDeviceKey>::__init_with_size[abi:ne200100]<FxDeviceKey*,FxDeviceKey*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = *a3;
  v5 = a3 + 1;
  v6 = a3[1];
  a1[4] = v6;
  v7 = a1 + 4;
  v8 = a3[2];
  a1[5] = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *a3 = v5;
    *v5 = 0;
    a3[2] = 0;
  }

  else
  {
    a1[3] = v7;
  }

  return a1;
}

uint64_t std::vector<FxDeviceKey>::__init_with_size[abi:ne200100]<FxDeviceKey*,FxDeviceKey*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<FxDeviceKey>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FF0B2DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<FxDeviceKey>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FxDeviceKey>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<FxDeviceKey> const,FxDeviceSetObj const>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

__n128 std::__split_buffer<FxDeviceKey>::emplace_back<FxDeviceKey const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<FxDeviceKey>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

HGNode *applyColorSpaceConform@<X0>(CGColorSpaceRef space@<X1>, CGColorSpace *a2@<X3>, uint64_t *a3@<X0>, CGColorSpace *a4@<X2>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (PCColorSpaceHandle::isSameColorSpace(space, a2, a4))
  {

    return applyPremultiplyOnly(a3, a4, a5, a6);
  }

  else
  {
    RGBNCLCFromRGBColorSpace = getRGBNCLCFromRGBColorSpace(space);
    v18 = v13;
    if (PCNCLCCodeIsKnownRGB(&RGBNCLCFromRGBColorSpace) && (*buf = getRGBNCLCFromRGBColorSpace(a2), *&buf[8] = v14, PCNCLCCodeIsKnownRGB(buf)))
    {
      return applyNCLCConform(a3, &RGBNCLCFromRGBColorSpace, a4, buf, a5, a6);
    }

    else
    {
      v15 = CFCopyDescription(space);
      v16 = CFCopyDescription(a2);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v15;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported color space arguments in FxApplyColorConform(): %@ and %@", buf, 0x16u);
      }

      CFRelease(v15);
      CFRelease(v16);
      return applyPremultiplyOnly(a3, a4, a5, a6);
    }
  }
}

HGNode *FxApplyColorConform@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v16 = PCMakeRGBNCLCCode(a2);
  v17 = v11;
  v14 = PCMakeRGBNCLCCode(a4);
  v15 = v12;
  return applyNCLCConform(a1, &v16, a3, &v14, a5, a6);
}

HGNode *applyNCLCConform@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  if (operator==(a2, a4))
  {

    return applyPremultiplyOnly(a1, a3, a5, a6);
  }

  else
  {
    v13 = *a2 - 5;
    if (v13 > 7)
    {
      v33 = 0;
    }

    else
    {
      v33 = dword_26084A440[v13];
    }

    v14 = a2[1] - 8;
    if (v14 > 0xA)
    {
      v15 = 1;
    }

    else
    {
      v15 = dword_26084A460[v14];
    }

    v32 = v15;
    v16 = a2[2] - 1;
    if (v16 > 8)
    {
      v17 = 0;
    }

    else
    {
      v17 = dword_26084A48C[v16];
    }

    v18 = *a4 - 5;
    if (v18 > 7)
    {
      v19 = 0;
    }

    else
    {
      v19 = dword_26084A440[v18];
    }

    v20 = a4[1] - 8;
    if (v20 > 0xA)
    {
      v21 = 1;
    }

    else
    {
      v21 = dword_26084A460[v20];
    }

    v22 = a4[2] - 1;
    if (v22 > 8)
    {
      v23 = 0;
    }

    else
    {
      v23 = dword_26084A48C[v22];
    }

    FxSupport::newHGRefWithInput<HGColorConform>(*a1, &v34);
    HGColorConform::SetPremultiplyState(v34, a3, a5);
    if ((HGColorConform::SetConversion(v34, v33, v32, v17, v19, v21, v23) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *a2;
      v26 = a2[1];
      v27 = a2[2];
      v28 = *a4;
      v29 = a4[1];
      v30 = a4[2];
      *buf = 67110400;
      v36 = v25;
      v37 = 1024;
      v38 = v26;
      v39 = 1024;
      v40 = v27;
      v41 = 1024;
      v42 = v28;
      v43 = 1024;
      v44 = v29;
      v45 = 1024;
      v46 = v30;
      _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported nclc arguments in FxApplyColorConform(): (%d-%d-%d) and (%d-%d-%d)", buf, 0x26u);
    }

    HGColorConform::SetToneQualityMode(v34, 2, v24);
    result = HGColorConform::SetAntiSymmetricToneCurves(v34, 1, v31);
    *a6 = v34;
  }

  return result;
}

void sub_25FF0B978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

HGNode *FxApplyColorConform@<X0>(uint64_t *a1@<X0>, FxColorDescription *a2@<X1>, FxColorDescription *a3@<X2>, uint64_t *a4@<X8>)
{
  if (!operator==(a2, a3, a3) && FxColorDescription::isColorManaged(a2) && (FxColorDescription::isColorManaged(a3) & 1) != 0)
  {
    if (FxColorDescriptionCanToneMap(a2))
    {
      isSDR = FxColorDescription::isSDR(a2);
      if (isSDR == FxColorDescription::isSDR(a3) || (isHDR = FxColorDescription::isHDR(a2), isHDR == FxColorDescription::isHDR(a3)))
      {
        DynamicRange = FxColorDescription::getDynamicRange(a2);
        FxColorDescription::setDynamicRange(a3, DynamicRange);
        ToneMapMethod = FxColorDescription::getToneMapMethod(a2);
        FxColorDescription::setToneMapMethod(a3, ToneMapMethod);
      }

      else
      {
        if (FxColorDescription::isSDR(a2) && FxColorDescription::isHDR(a3))
        {

          return conformInverseToneMap(a1, a2, a3, a4);
        }

        if (FxColorDescription::isHDR(a2) && FxColorDescription::isSDR(a3))
        {

          return conformToneMap(a1, a2, a3, a4);
        }
      }
    }

    CGColorSpace = FxColorDescription::getCGColorSpace(a2);
    isPremultiplied = FxColorDescription::isPremultiplied(a2);
    v16 = FxColorDescription::getCGColorSpace(a3);
    v17 = FxColorDescription::isPremultiplied(a3);

    return applyColorSpaceConform(CGColorSpace, v16, a1, isPremultiplied, v17, a4);
  }

  else
  {
    result = *a1;
    *a4 = *a1;
    if (result)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  return result;
}

uint64_t conformInverseToneMap@<X0>(uint64_t *a1@<X0>, FxColorDescription *a2@<X1>, FxColorDescription *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
  ToneMapMethod = FxColorDescription::getToneMapMethod(a2);
  if ((PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 4 || PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 5) && FxColorDescription::isPremultiplied(a2) && FxColorDescription::isPremultiplied(a3))
  {
    CGColorSpace = FxColorDescription::getCGColorSpace(a2);
    if (PCColorSpaceHandle::isSameColorSpace(CGColorSpace, v8, v11))
    {
      v12 = FxColorDescription::getCGColorSpace(a3);
      if (PCColorSpaceHandle::isSameColorSpace(v12, v8, v13))
      {
        Size = PVPerfStats::FrameStats::GetSize(ToneMapMethod);
        if (Size == 5)
        {
          Gain = PCToneMapMethod::getGain(ToneMapMethod);
        }

        else
        {
          PCColorUtil::getHLGDiffuseWhiteGain(Size);
        }

        return FxApplyGain(a1, a4, Gain);
      }
    }
  }

  *a4 = 0;
  if (PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 6)
  {
    v16 = FxColorDescription::getCGColorSpace(a2);
    isPremultiplied = FxColorDescription::isPremultiplied(a2);
    applyColorSpaceConform(v16, v8, a1, isPremultiplied, 0, &v67);
    v18 = *a4;
    v19 = v67;
    if (*a4 == v67)
    {
      if (v18)
      {
        (*(*v67 + 24))(v67);
      }
    }

    else
    {
      if (v18)
      {
        (*(*v18 + 24))(v18);
      }

      *a4 = v19;
    }

    FxApplyInverseSimpleToneCurve(a4, &v67, 0.7, 12.0);
    v28 = *a4;
    v29 = v67;
    if (*a4 == v67)
    {
      if (v28)
      {
        (*(*v67 + 24))(v67);
      }
    }

    else
    {
      if (v28)
      {
        (*(*v28 + 24))(v28);
        v29 = v67;
      }

      *a4 = v29;
    }

    v30 = FxColorDescription::getCGColorSpace(a3);
    v31 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v8, v30, a4, 0, v31, &v67);
    result = *a4;
    v33 = v67;
    if (*a4 != v67)
    {
      if (result)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (!result)
    {
      return result;
    }

    return (*(*v67 + 24))(v67);
  }

  if (PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 4)
  {
    v20 = FxColorDescription::getCGColorSpace(a2);
    v21 = FxColorDescription::isPremultiplied(a2);
    applyColorSpaceConform(v20, v8, a1, v21, 0, &v67);
    v22 = *a4;
    v23 = v67;
    if (*a4 == v67)
    {
      if (v22)
      {
        v22 = (*(*v67 + 24))(v67);
      }
    }

    else
    {
      if (v22)
      {
        v22 = (*(*v22 + 24))(v22);
      }

      *a4 = v23;
    }

    PCColorUtil::getHLGDiffuseWhiteGain(v22);
    FxApplyGain(a4, &v67, v37);
    v38 = *a4;
    v39 = v67;
    if (*a4 == v67)
    {
      if (v38)
      {
        (*(*v67 + 24))(v67);
      }
    }

    else
    {
      if (v38)
      {
        (*(*v38 + 24))(v38);
        v39 = v67;
      }

      *a4 = v39;
    }

    v40 = FxColorDescription::getCGColorSpace(a3);
    v41 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v8, v40, a4, 0, v41, &v67);
    result = *a4;
    v33 = v67;
    if (*a4 != v67)
    {
      if (result)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (!result)
    {
      return result;
    }

    return (*(*v67 + 24))(v67);
  }

  if (PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 5)
  {
    v24 = FxColorDescription::getCGColorSpace(a2);
    v25 = FxColorDescription::isPremultiplied(a2);
    applyColorSpaceConform(v24, v8, a1, v25, 0, &v67);
    v26 = *a4;
    v27 = v67;
    if (*a4 == v67)
    {
      if (v26)
      {
        (*(*v67 + 24))(v67);
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 24))(v26);
      }

      *a4 = v27;
    }

    v50 = PCToneMapMethod::getGain(ToneMapMethod);
    FxApplyGain(a4, &v67, v50);
    v51 = *a4;
    v52 = v67;
    if (*a4 == v67)
    {
      if (v51)
      {
        (*(*v67 + 24))(v67);
      }
    }

    else
    {
      if (v51)
      {
        (*(*v51 + 24))(v51);
        v52 = v67;
      }

      *a4 = v52;
    }

    v53 = FxColorDescription::getCGColorSpace(a3);
    v54 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v8, v53, a4, 0, v54, &v67);
    result = *a4;
    v33 = v67;
    if (*a4 != v67)
    {
      if (result)
      {
LABEL_78:
        result = (*(*result + 24))(result);
      }

LABEL_79:
      *a4 = v33;
      return result;
    }

    if (!result)
    {
      return result;
    }

    return (*(*v67 + 24))(v67);
  }

  v34 = FxColorDescription::isPremultiplied(a2);
  applyPremultiplyOnly(a1, v34, 0, &v67);
  v35 = *a4;
  v36 = v67;
  if (*a4 == v67)
  {
    if (v35)
    {
      (*(*v67 + 24))(v67);
    }
  }

  else
  {
    if (v35)
    {
      (*(*v35 + 24))(v35);
    }

    *a4 = v36;
  }

  v42 = FxColorDescription::getCGColorSpace(a2);
  v67 = PCGetNCLCCodeForColorSpace(v42);
  v68 = v43;
  v44 = PVPerfStats::FrameStats::GetSize(ToneMapMethod);
  if (v44 == 3)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  if (v44 == 1)
  {
    v45 = 0;
  }

  v65 = 0;
  v66 = v45;
  if (v44 != 3)
  {
    if (PCNCLCCodeCompareRGB(&v67, &kPCNCLC_Rec709))
    {
      v65 = 0;
      goto LABEL_91;
    }

    if (PCNCLCCodeCompareRGB(&v67, kPCNCLC_P3_D65))
    {
      v65 = 1;
      goto LABEL_91;
    }

    v65 = 2;
    v61 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020);
    v62 = FxColorDescription::getCGColorSpace(a2);
    applyColorSpaceConform(v62, v61, a4, 0, 0, &v64);
    v48 = *a4;
    v49 = v64;
    if (*a4 != v64)
    {
      if (!v48)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (!v48)
    {
      goto LABEL_91;
    }

LABEL_90:
    (*(*v64 + 24))(v64);
    goto LABEL_91;
  }

  v46 = PCGetNCLCColorSpace(&kPCNCLC_Rec709);
  v47 = FxColorDescription::getCGColorSpace(a2);
  applyColorSpaceConform(v47, v46, a4, 0, 0, &v64);
  v48 = *a4;
  v49 = v64;
  if (*a4 == v64)
  {
    if (!v48)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (v48)
  {
LABEL_64:
    (*(*v48 + 24))(v48);
  }

LABEL_65:
  *a4 = v49;
  v64 = 0;
LABEL_91:
  FxSupport::newHGRefWithInput<HGHLG::SDRToHLG,HGHLG::SDRToHLG::SDRInputType &,HGHLG::SDRToHLG::ConversionMethod const&>(*a4, &v65, &v66, &v64);
  HGHLG::HLGToSDR::SetToneQualityMode(v64, 2);
  v55 = *a4;
  v56 = v64;
  if (*a4 != v64)
  {
    if (v55)
    {
      (*(*v55 + 24))(*a4);
      v56 = v64;
    }

    *a4 = v56;
    if (v56)
    {
      (*(*v56 + 16))(v56);
    }
  }

  v57 = FxColorDescription::getCGColorSpace(a3);
  v58 = FxColorDescription::isPremultiplied(a3);
  applyColorSpaceConform(v8, v57, a4, 0, v58, &v63);
  v59 = *a4;
  v60 = v63;
  if (*a4 == v63)
  {
    if (v59)
    {
      (*(*v63 + 24))(v63);
    }
  }

  else
  {
    if (v59)
    {
      (*(*v59 + 24))(v59);
    }

    *a4 = v60;
  }

  result = v64;
  if (v64)
  {
    return (*(*v64 + 24))(v64);
  }

  return result;
}

void sub_25FF0C618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  if (*v13)
  {
    (*(**v13 + 24))(*v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t conformToneMap@<X0>(uint64_t *a1@<X0>, FxColorDescription *a2@<X1>, FxColorDescription *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
  ToneMapMethod = FxColorDescription::getToneMapMethod(a2);
  if ((PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 4 || PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 5) && FxColorDescription::isPremultiplied(a2) && FxColorDescription::isPremultiplied(a3))
  {
    CGColorSpace = FxColorDescription::getCGColorSpace(a2);
    if (PCColorSpaceHandle::isSameColorSpace(CGColorSpace, v8, v11))
    {
      v12 = FxColorDescription::getCGColorSpace(a3);
      if (PCColorSpaceHandle::isSameColorSpace(v12, v8, v13))
      {
        Size = PVPerfStats::FrameStats::GetSize(ToneMapMethod);
        if (Size == 5)
        {
          Gain = PCToneMapMethod::getGain(ToneMapMethod);
        }

        else
        {
          PCColorUtil::getHLGDiffuseWhiteGain(Size);
        }

        v52 = 1.0 / Gain;

        return FxApplyGain(a1, a4, v52);
      }
    }
  }

  v16 = FxColorDescription::getCGColorSpace(a2);
  isPremultiplied = FxColorDescription::isPremultiplied(a2);
  applyColorSpaceConform(v16, v8, a1, isPremultiplied, 0, a4);
  if (PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 6)
  {
    FxApplySimpleToneCurve(a4, &v54, 0.7, 12.0);
    v18 = *a4;
    v19 = v54;
    if (*a4 == v54)
    {
      if (v18)
      {
        (*(*v54 + 24))(v54);
      }
    }

    else
    {
      if (v18)
      {
        (*(*v18 + 24))(v18);
        v19 = v54;
      }

      *a4 = v19;
    }

    v27 = FxColorDescription::getCGColorSpace(a3);
    v28 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v8, v27, a4, 0, v28, &v54);
    result = *a4;
    v30 = v54;
    if (*a4 != v54)
    {
      if (result)
      {
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (!result)
    {
      return result;
    }

    return (*(*v54 + 24))(v54);
  }

  v20 = PVPerfStats::FrameStats::GetSize(ToneMapMethod);
  if (v20 == 4)
  {
    PCColorUtil::getHLGDiffuseWhiteGain(v20);
    FxApplyGain(a4, &v54, 1.0 / v21);
    v22 = *a4;
    v23 = v54;
    if (*a4 == v54)
    {
      if (v22)
      {
        (*(*v54 + 24))(v54);
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 24))(v22);
        v23 = v54;
      }

      *a4 = v23;
    }

    v38 = FxColorDescription::getCGColorSpace(a3);
    v39 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v8, v38, a4, 0, v39, &v54);
    result = *a4;
    v30 = v54;
    if (*a4 != v54)
    {
      if (result)
      {
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (!result)
    {
      return result;
    }

    return (*(*v54 + 24))(v54);
  }

  if (PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 5)
  {
    v24 = PCToneMapMethod::getGain(ToneMapMethod);
    FxApplyGain(a4, &v54, 1.0 / v24);
    v25 = *a4;
    v26 = v54;
    if (*a4 == v54)
    {
      if (v25)
      {
        (*(*v54 + 24))(v54);
      }
    }

    else
    {
      if (v25)
      {
        (*(*v25 + 24))(v25);
        v26 = v54;
      }

      *a4 = v26;
    }

    v45 = FxColorDescription::getCGColorSpace(a3);
    v46 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v8, v45, a4, 0, v46, &v54);
    result = *a4;
    v30 = v54;
    if (*a4 != v54)
    {
      if (result)
      {
LABEL_59:
        result = (*(*result + 24))(result);
      }

LABEL_60:
      *a4 = v30;
      return result;
    }

    if (!result)
    {
      return result;
    }

    return (*(*v54 + 24))(v54);
  }

  if (PVPerfStats::FrameStats::GetSize(ToneMapMethod) == 3)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v58 = v31;
  FxSupport::newHGRefWithInput<HGHLG::HLGToSDR,HGHLG::HLGToSDR::ConversionMethod const&>(*a4, &v58, &v57);
  HGHLG::HLGToSDR::SetToneQualityMode(v57, 2);
  HGHLG::HLGToSDR::SetMinimumInputValueZero(v57, 1);
  if (v58 != 1)
  {
    HGHLG::HLGToSDR::SetOutputIsRec709Gamma(v57, 0);
    v40 = v57;
    v56 = v57;
    if (v57)
    {
      (*(*v57 + 16))(v57);
    }

    v41 = FxColorDescription::getCGColorSpace(a3);
    v42 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v8, v41, &v56, 0, v42, &v54);
    v43 = *a4;
    v44 = v54;
    if (*a4 == v54)
    {
      if (v43)
      {
        (*(*v54 + 24))(v54);
      }
    }

    else
    {
      if (v43)
      {
        (*(*v43 + 24))(v43);
      }

      *a4 = v44;
      v54 = 0;
    }

    if (v40)
    {
      (*(*v40 + 24))(v40);
    }

    goto LABEL_86;
  }

  HGHLG::HLGToSDR::SetOutputIsRec709Gamma(v57, 1);
  v32 = FxColorDescription::getCGColorSpace(a3);
  v54 = PCGetNCLCCodeForColorSpace(v32);
  v55 = v33;
  if (PCNCLCCodeCompareRGB(&v54, &kPCNCLC_Rec709))
  {
    v34 = v57;
    v53 = v57;
    if (v57)
    {
      (*(*v57 + 16))(v57);
    }

    v35 = FxColorDescription::isPremultiplied(a3);
    applyPremultiplyOnly(&v53, 0, v35, &v56);
    v36 = *a4;
    v37 = v56;
    if (*a4 == v56)
    {
      if (v36)
      {
        (*(*v56 + 24))(v56);
      }
    }

    else
    {
      if (v36)
      {
        (*(*v36 + 24))(v36);
      }

      *a4 = v37;
      v56 = 0;
    }

    if (!v34)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v47 = PCGetNCLCColorSpace(&kPCNCLC_Rec709);
    v34 = v57;
    v53 = v57;
    if (v57)
    {
      (*(*v57 + 16))(v57);
    }

    v48 = FxColorDescription::getCGColorSpace(a3);
    v49 = FxColorDescription::isPremultiplied(a3);
    applyColorSpaceConform(v47, v48, &v53, 0, v49, &v56);
    v50 = *a4;
    v51 = v56;
    if (*a4 == v56)
    {
      if (v50)
      {
        (*(*v56 + 24))(v56);
      }
    }

    else
    {
      if (v50)
      {
        (*(*v50 + 24))(v50);
      }

      *a4 = v51;
      v56 = 0;
    }

    if (!v34)
    {
      goto LABEL_86;
    }
  }

  (*(*v34 + 24))(v34);
LABEL_86:
  result = v57;
  if (v57)
  {
    return (*(*v57 + 24))(v57);
  }

  return result;
}

void sub_25FF0D298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  if (*v13)
  {
    (*(**v13 + 24))(*v13);
  }

  _Unwind_Resume(exception_object);
}

void FxConvertHLGToPQ(uint64_t *a1, CGColorSpace *a2, CGColorSpace *a3)
{
  v6 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
  applyColorSpaceConform(a2, v6, a1, a3, 0, &v8);
  v7 = 1;
  FxSupport::newHGRefWithInput<HGHLG::OOTF,HGHLG::OOTF::ColorPrimaries const&>();
}

void sub_25FF0D838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applyPremultiplyOnly@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 != a3)
  {
    if (a2)
    {
      FxSupport::newHGRefWithInput<HGUnpremultiply>();
    }

    FxSupport::newHGRefWithInput<HGPremultiply>();
  }

  result = *a1;
  *a4 = result;
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

unint64_t getRGBNCLCFromRGBColorSpace(CGColorSpace *a1)
{
  v3 = PCGetNCLCCodeForColorSpace(a1);
  v4 = v1;
  if (PCNCLCCodeIsKnownRGB(&v3))
  {
    return PCMakeRGBNCLCCode(v3, HIDWORD(v3));
  }

  else
  {
    return 0x200000002;
  }
}

uint64_t FxSupport::newHGRefWithInput<HGColorConform>@<X0>(uint64_t a1@<X0>, HGColorConform **a2@<X8>)
{
  v4 = HGObject::operator new(0x320uLL);
  HGColorConform::HGColorConform(v4);
  *a2 = v4;
  return (*(*v4 + 120))(v4, 0, a1);
}

uint64_t FxSupport::newHGRefWithInput<HGHLG::SDRToHLG,HGHLG::SDRToHLG::SDRInputType &,HGHLG::SDRToHLG::ConversionMethod const&>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  v8 = HGObject::operator new(0x1B0uLL);
  HGHLG::SDRToHLG::SDRToHLG(v8, *a2, *a3);
  *a4 = v8;
  return (*(*v8 + 120))(v8, 0, a1);
}

uint64_t FxSupport::newHGRefWithInput<HGHLG::HLGToSDR,HGHLG::HLGToSDR::ConversionMethod const&>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v6 = HGObject::operator new(0x1B0uLL);
  HGHLG::HLGToSDR::HLGToSDR(v6, *a2);
  *a3 = v6;
  return (*(*v6 + 120))(v6, 0, a1);
}

uint64_t FxSupport::newHGRefWithInput<HGPQ::InverseOOTF>@<X0>(uint64_t a1@<X0>, HGPQ::InverseOOTF **a2@<X8>)
{
  v4 = HGObject::operator new(0x1B0uLL);
  HGPQ::InverseOOTF::InverseOOTF(v4, 1, 100.0, 100.0);
  *a2 = v4;
  return (*(*v4 + 120))(v4, 0, a1);
}

uint64_t FxSupport::makeHeliumFormat(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_26084A4F8[a1 - 1];
  }
}

uint64_t FxSupport::createTextureHandleNode@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, HGBitmapLoader **a5@<X8>)
{
  Name = ProGL::TextureHandle::getName(a1);
  Width = ProGL::TextureHandle::getWidth(a1);
  Height = ProGL::TextureHandle::getHeight(a1);
  v13 = HGRectMake4i(*a4, a4[1], *a4 + Width, a4[1] + Height);
  v15 = v14;
  v16 = HGObject::operator new(0xC8uLL);
  HGGLTexture::HGGLTexture(v16, v13, v15, a2, a3, Name, 1);
  v17 = HGObject::operator new(0x20uLL);
  HGObject::HGObject(v17);
  *v17 = &unk_2872582F0;
  v18 = *(a1 + 8);
  *(v17 + 2) = *a1;
  *(v17 + 3) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  HGBitmap::SetStorage(v16, v17);
  v19 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v19, v16);
  *a5 = v19;
  result = (*(*v17 + 24))(v17);
  if (v16)
  {
    return (*(*v16 + 24))(v16);
  }

  return result;
}

void sub_25FF0E21C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

HGBitmapLoader *FxSupport::createBitmapNode@<X0>(PCBitmap **a1@<X0>, unsigned int *a2@<X1>, HGBitmapLoader **a3@<X8>)
{
  FxSupport::pcBitmapToHGBitmap(a1, a2, &v7);
  v4 = v7;
  v5 = HGObject::operator new(0x1F0uLL);
  result = HGBitmapLoader::HGBitmapLoader(v5, v4);
  *a3 = v5;
  if (v4)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

void sub_25FF0E344(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t FxSupport::pcBitmapToHGBitmap@<X0>(PCBitmap **a1@<X0>, unsigned int *a2@<X1>, HGBitmap **a3@<X8>)
{
  v6 = (*(**(*a1 + 8) + 48))(*(*a1 + 8));
  HeliumFormat = FxSupport::makeHeliumFormat(v6);
  v8 = (*(**a1 + 16))();
  v9 = (*(**a1 + 24))();
  v10 = HGRectMake4i(*a2, a2[1], *a2 + v8, a2[1] + v9);
  v12 = v11;
  v13 = HGObject::operator new(0x20uLL);
  HGObject::HGObject(v13);
  *v13 = &unk_287258340;
  v14 = a1[1];
  *(v13 + 2) = *a1;
  *(v13 + 3) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  v15 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
  BytesPerRow = PCBitmap::getBytesPerRow(*a1);
  AllocationSize = PCBitmap::getAllocationSize(*a1);
  v18 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v18, v10, v12, HeliumFormat, v15, BytesPerRow, AllocationSize);
  *a3 = v18;
  HGBitmap::SetStorage(v18, v13);
  return (*(*v13 + 24))(v13);
}

void sub_25FF0E56C(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

void anonymous namespace::TextureHandleStorage::~TextureHandleStorage(_anonymous_namespace_::TextureHandleStorage *this)
{
  *this = &unk_2872582F0;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HGObject::~HGObject(this);
}

{

  HGObject::operator delete(v1);
}

void anonymous namespace::BitmapStorage::~BitmapStorage(_anonymous_namespace_::BitmapStorage *this)
{
  *this = &unk_287258340;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HGObject::~HGObject(this);
}

{

  HGObject::operator delete(v1);
}

double FxDeviceGetComputeDeviceForRenderer@<D0>(const HGRenderer *a1@<X0>, void *a2@<X8>)
{
  {
    GPUComputeDeviceList = HGComputeDeviceManager::GetGPUComputeDeviceList(a1);
    v6 = **GPUComputeDeviceList;
    v5 = *(*GPUComputeDeviceList + 8);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *a2 = v6;
    a2[1] = v5;
  }

  else
  {
    HGComputeDeviceManager::GetCPUComputeDevice(a1, &v7);
    result = *&v7;
    *a2 = v7;
  }

  return result;
}

uint64_t FxDeviceGetVirtualScreenForComputeDevice(uint64_t a1)
{
  v2 = *a1;
  if (!v2[2])
  {
    return 0xFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 0;
  }

  GLVirtualScreen = HGGPUComputeDevice::GetGLVirtualScreen(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return GLVirtualScreen;
}

void sub_25FF0E85C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FxDeviceIsCPU(const void **a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *a1;
    {
      v3 = *(v1 + 8);
      v1 = 1;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t FxDeviceIsGPU(const void **a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *a1;
    {
      v3 = *(v1 + 8);
      v1 = 1;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void *FxDeviceGetHGDeviceForGPU@<X0>(void *result@<X0>, void *a2@<X8>)
{
  {
    v4 = v3[1];
    *a2 = result;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t *FxDeviceGetName(char **a1)
{
  if (a1)
  {
    if (FxDeviceIsGPU(a1))
    {
      v2 = *a1;
      if (!*a1)
      {
        return (v2 + 64);
      }

LABEL_8:
      if (v2)
      {
        v4 = a1[1];
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          v5 = v2 + 64;
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          return v5;
        }
      }

      return (v2 + 64);
    }

    if (FxDeviceIsCPU(a1))
    {
      v2 = *a1;
      if (!*a1)
      {
        return (v2 + 64);
      }

      goto LABEL_8;
    }
  }

  if (atomic_load_explicit(&_MergedGlobals_28, memory_order_acquire))
  {
    return &qword_280C5E6E8;
  }

  FxDeviceGetName(&v7);
  return v7;
}

uint64_t FxDeviceGetMemorySize(uint64_t a1)
{
  if (!FxDeviceIsGPU(a1))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2[14];
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v4 = v2[14];
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

uint64_t FxDeviceIsHeadless(uint64_t a1)
{
  if (FxDeviceIsGPU(a1))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = v2[154];
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v4 = v2[154];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t FxDeviceIsRemovable(uint64_t a1)
{
  if (FxDeviceIsGPU(a1))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = v2[153];
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v4 = v2[153];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t FxDeviceIsDisplayAttached(uint64_t a1)
{
  if (!FxDeviceIsGPU(a1))
  {
    return 0;
  }

  v2 = *a1;
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = TXParagraphStyleFolder_Factory::version(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void sub_25FF0EDF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL operator<(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return 0;
  }

  if (*a1)
  {
    return 1;
  }

  return *(a1 + 8) < *(a2 + 8);
}

uint64_t makeDeviceKeyForFxDevice(uint64_t a1)
{
  if (!FxDeviceIsGPU(a1))
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return 0;
}

uint64_t FxDeviceSortOrder(uint64_t a1, uint64_t a2)
{
  DeviceKeyForFxDevice = makeDeviceKeyForFxDevice(a1);
  v5 = v4;
  v6 = makeDeviceKeyForFxDevice(a2);
  v8 = DeviceKeyForFxDevice | (v5 < v7);
  if (v6)
  {
    v8 = 0;
  }

  return v8 & 1;
}

_DWORD *FxDeviceGetDeviceForHGDevice(void *a1)
{
  result = *a1;
  if (result)
  {
    if (result[2] == 1)
    {
      *&v4 = 0;
      *(&v4 + 1) = v3;
    }

    else
    {
      v4 = xmmword_26034A350;
    }

    return getFxDeviceForDeviceKey(&v4, a1);
  }

  return result;
}

uint64_t getFxDeviceForDeviceKey(uint64_t a1, uint64_t a2)
{
  {
    operator new();
  }

  v9 = getSingletonLock(void)::mutex;
  PCMutex::lock(getSingletonLock(void)::mutex);
  {
    operator new();
  }

  v4 = getSingletonMap(void)::result;
  v5 = std::__tree<std::__value_type<FxDeviceKey,FxDeviceObj const>,std::__map_value_compare<FxDeviceKey,std::__value_type<FxDeviceKey,FxDeviceObj const>,std::less<FxDeviceKey>,true>,std::allocator<std::__value_type<FxDeviceKey,FxDeviceObj const>>>::find<FxDeviceKey>(getSingletonMap(void)::result, a1);
  if (v4 + 8 == v5)
  {
    v6 = *(a2 + 8);
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = std::__tree<std::__value_type<FxDeviceKey,FxDeviceObj const>,std::__map_value_compare<FxDeviceKey,std::__value_type<FxDeviceKey,FxDeviceObj const>,std::less<FxDeviceKey>,true>,std::allocator<std::__value_type<FxDeviceKey,FxDeviceObj const>>>::__emplace_unique_key_args<FxDeviceKey,FxDeviceKey const&,FxDeviceObj>(v4, a1);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v9)
  {
    PCMutex::unlock(v9);
  }

  return v5 + 48;
}

void sub_25FF0F164(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x1081C4076DFA842);
  _Unwind_Resume(a1);
}

uint64_t FxDeviceGetVirtualScreen(const void **a1)
{
  if (!FxDeviceIsGPU(a1))
  {
    return 0xFFFFFFFFLL;
  }

  FxDeviceGetHGDeviceForGPU(a1, &v4);
  GLVirtualScreen = HGGPUComputeDevice::GetGLVirtualScreen(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return GLVirtualScreen;
}

void sub_25FF0F238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FxDeviceGetLogStdString(char **a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  Name = FxDeviceGetName(a1);
  v3 = *(Name + 23);
  if (v3 >= 0)
  {
    v4 = Name;
  }

  else
  {
    v4 = *Name;
  }

  if (v3 >= 0)
  {
    v5 = *(Name + 23);
  }

  else
  {
    v5 = Name[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v4, v5);
  if (FxDeviceIsGPU(a1))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, " (", 2);
    MemorySize = FxDeviceGetMemorySize(a1);
    v7 = MemorySize >> 10;
    v8 = "KB";
    v9 = MemorySize >> 20;
    v10 = "MB";
    if (MemorySize >> 20 >= 0x401)
    {
      v9 = MemorySize >> 30;
      v10 = "GB";
    }

    if (v7 >= 0x401)
    {
      v7 = v9;
      v8 = v10;
    }

    if (MemorySize >= 0x401)
    {
      v11 = v7;
    }

    else
    {
      v11 = MemorySize;
    }

    if (MemorySize >= 0x401)
    {
      v12 = v8;
    }

    else
    {
      v12 = "B";
    }

    v13 = MEMORY[0x2666E9BA0](&v23, v11);
    v14 = strlen(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, ", ", 2);
    if (FxDeviceIsRemovable(a1))
    {
      v15 = "external";
    }

    else
    {
      v15 = "internal";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v15, 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, ", ", 2);
    if (FxDeviceIsDisplayAttached(a1))
    {
      v16 = "has display";
      v17 = 11;
    }

    else
    {
      IsHeadless = FxDeviceIsHeadless(a1);
      if (IsHeadless)
      {
        v16 = "headless";
      }

      else
      {
        v16 = "no display";
      }

      if (IsHeadless)
      {
        v17 = 8;
      }

      else
      {
        v17 = 10;
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, ", virtual screen ", 17);
    VirtualScreen = FxDeviceGetVirtualScreen(a1);
    v21 = MEMORY[0x2666E9B50](v19, VirtualScreen);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")", 1);
  }

  else
  {
    FxDeviceIsCPU(a1);
  }

  std::stringbuf::str();
  v23 = *MEMORY[0x277D82828];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x277D82828] + 24);
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v27);
}

void sub_25FF0F570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x2666E9E10](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<FxDeviceKey,FxDeviceObj const>,std::__map_value_compare<FxDeviceKey,std::__value_type<FxDeviceKey,FxDeviceObj const>,std::less<FxDeviceKey>,true>,std::allocator<std::__value_type<FxDeviceKey,FxDeviceObj const>>>::find<FxDeviceKey>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 8);
  v6 = v2;
  do
  {
    if (*a2)
    {
      v6 = v3;
    }

    else if (*(v3 + 32) == 1)
    {
      ++v3;
    }

    else
    {
      v7 = v3[5];
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 += v9;
    }

    v3 = *v3;
  }

  while (v3);
  if (v6 == v2 || (v6[4] & 1) == 0 && ((*a2 & 1) != 0 || v5 < v6[5]))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<FxDeviceKey,FxDeviceObj const>,std::__map_value_compare<FxDeviceKey,std::__value_type<FxDeviceKey,FxDeviceObj const>,std::less<FxDeviceKey>,true>,std::allocator<std::__value_type<FxDeviceKey,FxDeviceObj const>>>::__emplace_unique_key_args<FxDeviceKey,FxDeviceKey const&,FxDeviceObj>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<FxDeviceKey,FxDeviceObj const>,std::__map_value_compare<FxDeviceKey,std::__value_type<FxDeviceKey,FxDeviceObj const>,std::less<FxDeviceKey>,true>,std::allocator<std::__value_type<FxDeviceKey,FxDeviceObj const>>>::__find_equal<FxDeviceKey>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<FxDeviceKey,FxDeviceObj const>,std::__map_value_compare<FxDeviceKey,std::__value_type<FxDeviceKey,FxDeviceObj const>,std::less<FxDeviceKey>,true>,std::allocator<std::__value_type<FxDeviceKey,FxDeviceObj const>>>::__find_equal<FxDeviceKey>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(a3 + 8);
    while (1)
    {
      v7 = v4;
      if (*(v4 + 32))
      {
        break;
      }

      if ((*a3 & 1) != 0 || (v8 = *(v4 + 40), v6 < v8))
      {
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v8 >= v6)
        {
          goto LABEL_14;
        }

LABEL_5:
        result = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_14;
        }
      }
    }

    if (*a3)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v7 = result;
LABEL_14:
  *a2 = v7;
  return result;
}

void FxDeviceGetName(void *a1)
{
  if (__cxa_guard_acquire(&_MergedGlobals_28))
  {
    qword_280C5E6F0 = 0;
    unk_280C5E6F8 = 0;
    qword_280C5E6E8 = 0;
    __cxa_atexit(MEMORY[0x277D82640], &qword_280C5E6E8, &dword_25F8F0000);
    __cxa_guard_release(&_MergedGlobals_28);
  }

  *a1 = &qword_280C5E6E8;
}

void HSmearToRect::~HSmearToRect(HGNode *this)
{
  *this = &unk_287258390;
  v2 = *(this + 56);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HgcSmearToRect::~HgcSmearToRect(this);
}

{
  HSmearToRect::~HSmearToRect(this);

  HGObject::operator delete(v1);
}

uint64_t HSmearToRect::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v18 = v4;
  v19 = v5;
  Input = HGRenderer::GetInput(a2, this, a3);
  *&v15[0].var0 = HGRenderer::GetDOD(a2, Input);
  *&v15[0].var2 = v10;
  Effect_toPCRecti(v15, &v16);
  v11 = vadd_s32(v16, -1);
  v12.i64[0] = v11.i32[0];
  v12.i64[1] = v11.i32[1];
  v13 = vcvtq_f64_s64(v12);
  v14 = vadd_s32(v17, 0x200000002);
  v12.i64[0] = v14.i32[0];
  v12.i64[1] = v14.i32[1];
  v15[0] = v13;
  v15[1] = vcvtq_f64_s64(v12);
  if (PCRect<double>::contains(this + 52, &v15[0].var0))
  {
    return HGRectMake4i(v16.u32[0], v16.u32[1], v17.i32[0] + v16.i32[0], v17.i32[1] + v16.i32[1]);
  }

  else
  {
    return 0x8000000080000000;
  }
}

BOOL PCRect<double>::contains(double *a1, double *a2)
{
  v2 = a2[2];
  v3 = 1;
  if (v2 >= 0.0)
  {
    v4 = a2[3];
    if (v4 >= 0.0)
    {
      v5 = a1[2];
      if (v5 >= 0.0 && (v6 = a1[3], v6 >= 0.0) && *a1 <= *a2 && v5 + *a1 >= v2 + *a2 && (v7 = a1[1], v8 = a2[1], v7 <= v8))
      {
        return v7 + v6 >= v8 + v4;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t HSmearToRect::GetROI(HSmearToRect *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v27 = v4;
  v28 = v5;
  v8 = *(this + 52);
  v7 = *(this + 53);
  v9 = vcvtmd_s64_f64(v8 + 0.0000001);
  v10 = vcvtpd_s64_f64(v8 + *(this + 54));
  v11 = v7 + *(this + 55);
  v26 = a4;
  if (v10 - 2 < a4.var0)
  {
    v26.var0 = v10 - 2;
  }

  v12 = vcvtpd_s64_f64(v11);
  if (v9 + 2 > a4.var2)
  {
    v26.var2 = v9 + 2;
  }

  v13 = vcvtmd_s64_f64(v7 + 0.0000001);
  if (v12 - 2 < a4.var1)
  {
    v26.var1 = v12 - 2;
  }

  if (v13 + 2 > a4.var3)
  {
    v26.var3 = v13 + 2;
  }

  Effect_toPCRecti(&v26, &v23);
  if (v23.i32[0] <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v23.i32[0];
  }

  if (v24 + v23.i32[0] >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v24 + v23.i32[0];
  }

  if (v23.i32[1] <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v23.u32[1];
  }

  if (v25 + v23.i32[1] >= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v25 + v23.i32[1];
  }

  v18 = HGRectMake4i(v14, v16, v15, v17);
  v20 = v19;
  v22 = HGRectMake4f(v21, -1.0, -1.0, 1.0, 1.0);
  return HGRectGrow(v18, v20, v22);
}

HGNode *HSmearToRect::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  *&v24.var0 = HGRenderer::GetDOD(a2, Input);
  *&v24.var2 = v5;
  Effect_toPCRecti(&v24, &v27);
  v6 = vadd_s32(v27, -1);
  v7 = vadd_s32(v28, 0x200000002);
  *&v24.var0 = v27.i32[0];
  *&v24.var2 = v27.i32[1];
  v25 = v28.i32[0];
  v26 = v28.i32[1];
  v8.i64[0] = v6.i32[0];
  v8.i64[1] = v6.i32[1];
  v9 = vcvtq_f64_s64(v8);
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  v23[0] = v9;
  v23[1] = vcvtq_f64_s64(v8);
  if (!PCRect<double>::contains(this + 52, v23))
  {
    if (PCRect<double>::contains(&v24.var0, this + 52) && (v10 = *(this + 52), v11 = vcvtmd_s64_f64(v10 + 0.5 + 0.0000001), vabdd_f64(v10, v11) < 0.0000001) && vabdd_f64(v10 + *(this + 54), v11 + (vcvtmd_s64_f64(v10 + *(this + 54) + 0.5 + 0.0000001) - v11)) < 0.0000001 && (v12 = *(this + 53), v13 = vcvtmd_s64_f64(v12 + 0.5 + 0.0000001), vabdd_f64(v12 + *(this + 55), v13 + (vcvtmd_s64_f64(v12 + *(this + 55) + 0.5 + 0.0000001) - v13)) < 0.0000001) && vabdd_f64(v12, v13) < 0.0000001)
    {
      v14 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v14);
      v15 = *(this + 52);
      v16 = *(this + 53);
      v17 = v15;
      v18 = v16;
      *&v15 = v15 + *(this + 54);
      *&v16 = v16 + *(this + 55);
      (*(*v14 + 96))(v14, 0, v17, v18, *&v15, *&v16);
      (*(*v14 + 120))(v14, 0, Input);
      v19 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v19);
      v20 = *(this + 56);
      if (v20 == v19)
      {
        if (v19)
        {
          (*(*v19 + 24))(v19);
          v20 = *(this + 56);
        }
      }

      else
      {
        if (v20)
        {
          (*(*v20 + 24))(v20);
        }

        *(this + 56) = v19;
        v20 = v19;
      }

      (*(*v20 + 120))(v20, 0, v14);
      HGTextureWrap::SetTextureWrapMode(*(this + 56), 1, v22);
      Input = *(this + 56);
      (*(*v14 + 24))(v14);
    }

    else
    {
      return this;
    }
  }

  return Input;
}

void sub_25FF0FDB0(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t HSmearToRect::setRect(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  a1[26] = *a2;
  a1[27] = v2;
  v3 = *(a2 + 8);
  v4 = *a2 + 0.5;
  *&v2 = v3 + 0.5;
  v5 = *a2 + *(a2 + 16) + -0.5;
  *&v3 = v3 + *(a2 + 24) + -0.5;
  return (*(*a1 + 96))(a1, 0, v4, *&v2, v5, *&v3);
}

HGColorGamma *PAECreateGammaEncodingNode(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, char a5, char a6)
{
  v12 = HGObject::operator new(0x4A0uLL);
  HGColorGamma::HGColorGamma(v12);
  if (a1)
  {
    (*(*v12 + 120))(v12, 0, a1);
  }

  if (a4 == 3)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v19 = v12;
    v20 = 15;
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v19 = v12;
    v20 = 16;
LABEL_7:
    HGColorGamma::SetGammaFunction(v19, v20, v13, _Q0, 0, 0, 0, 0, 0, 0);
    goto LABEL_18;
  }

  if (a2 > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = dword_26084A56C[a2];
  }

  if (a3 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = dword_26084A56C[a3];
  }

  if (a4 > 4)
  {
    v23 = 1;
  }

  else
  {
    v23 = dword_26084A558[a4];
  }

  HGColorGamma::SetConversion(v12, v21, 8, 0, v22, v23, 0);
LABEL_18:
  HGColorGamma::SetPremultiplyState(v12, a5, a6);
  return v12;
}

HGColorGamma *PAECreateGammaDecodingNode(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, char a5, char a6)
{
  v12 = HGObject::operator new(0x4A0uLL);
  HGColorGamma::HGColorGamma(v12);
  if (a1)
  {
    (*(*v12 + 120))(v12, 0, a1);
  }

  if (a4 == 3)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v19 = v12;
    v20 = 14;
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v19 = v12;
    v20 = 17;
LABEL_7:
    HGColorGamma::SetGammaFunction(v19, v20, v13, _Q0, 0, 0, 0, 0, 0, 0);
    goto LABEL_18;
  }

  if (a2 > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = dword_26084A56C[a2];
  }

  if (a4 > 4)
  {
    v22 = 1;
  }

  else
  {
    v22 = dword_26084A558[a4];
  }

  if (a3 > 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_26084A56C[a3];
  }

  HGColorGamma::SetConversion(v12, v21, v22, 0, v23, 8, 0);
LABEL_18:
  HGColorGamma::SetPremultiplyState(v12, a5, a6);
  return v12;
}

uint64_t PAEUploadBitmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HGObject::operator new(0x80uLL);
  HGTexture::HGTexture(v6, *(a1 + 20), a1);
  v7 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v7, v6);
  (*(*v6 + 24))(v6);
  (*(*a2 + 120))(a2, a3, v7);
  v8 = *(*v7 + 24);

  return v8(v7);
}

void PAEUpload3DLUTEvaluator(uint64_t a1)
{
  v2 = (*(*a1 + 24))(a1);
  v3 = (*(*a1 + 32))(a1);
  v4 = (*(*a1 + 40))(a1) - v3;
  v5 = HGObject::operator new(0x210uLL);
  HGApply3DLUT::HGApply3DLUT(v5, v2, 0x19u, 1, 0, 1, 1, 1, v4, v3, 0.0, 1.0, 0.0, 0.0, 0);
}

void sub_25FF1057C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::Evaluate3DIndex(_anonymous_namespace_ *this, _DWORD *a2, float a3, float a4, float a5, float *a6, float *a7, float *a8, float *a9)
{
  *&v13 = __PAIR64__(LODWORD(a4), LODWORD(a3));
  *(&v13 + 1) = LODWORD(a5);
  v17 = v13;
  v16 = 0uLL;
  (*(*this + 16))(this, &v17, &v16, a7, a8, a9);
  v14 = v16;
  *a2 = v16;
  *a6 = *(&v14 + 1);
  *a7 = *(&v14 + 2);
  *a8 = 1.0;
  return 0;
}

void NewEquirectWrapNode(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X2>, float32x2_t *a4@<X3>, float32x2_t *a5@<X4>, HGNode **a6@<X8>)
{
  v12 = HGObject::operator new(0x1B0uLL);
  HGNode::HGNode(v12);
  *v12 = &unk_287259200;
  *(v12 + 51) = 0;
  *(v12 + 52) = 0;
  HEquirectWrap::init(v12, a1, a2, a3, a4, a5);
  *a6 = v12;
}

uint64_t FxBalancedBlendRecord::FxBalancedBlendRecord(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  *(a1 + 8) = a3;
  return a1;
}

uint64_t FxBalancedBlendRecord::node@<X0>(FxBalancedBlendRecord *this@<X0>, void *a2@<X8>)
{
  result = *this;
  *a2 = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t FxSupport::makeHeliumXForm@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  if (PCMatrix44Tmpl<double>::is2Didentity(a1))
  {
    result = *a2;
    *a5 = *a2;
    if (result)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  else
  {
    v12 = HGObject::operator new(0x90uLL);
    HGTransform::HGTransform(v12);
    v13 = *(a1 + 5);
    v29 = *(a1 + 4);
    v30 = v13;
    v14 = *(a1 + 7);
    v31 = *(a1 + 6);
    v32 = v14;
    v15 = *(a1 + 1);
    v24 = *a1;
    v25 = v15;
    v16 = *(a1 + 3);
    v26 = *(a1 + 2);
    v17 = *(&v24 + 1);
    v18 = v25;
    v19 = *(&v29 + 1);
    *(&v24 + 1) = v26;
    *&v25 = v29;
    v20 = *(&v30 + 1);
    *(&v25 + 1) = v31;
    *&v26 = v17;
    *&v29 = v18;
    *(&v29 + 1) = v16;
    v27 = v19;
    v28 = *(&v31 + 1);
    *(&v30 + 1) = v32;
    *&v31 = *(&v18 + 1);
    *(&v31 + 1) = *(&v16 + 1);
    *&v32 = v20;
    (*(*v12 + 72))(v12, &v24);
    v21 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v21);
    (*(*v21 + 576))(v21, v12);
    v23 = *v21;
    if (a3)
    {
      if (a4)
      {
        v22.n128_u32[0] = 8.0;
      }

      else
      {
        (*(v23 + 592))(v21, 0, 1.0);
        v23 = *v21;
        v22.n128_u64[0] = 0;
      }

      (*(v23 + 632))(v21, v22);
    }

    else
    {
      (*(v23 + 592))(v21, 0, 0.0);
    }

    if (*a2)
    {
      (*(*v21 + 120))(v21, 0);
    }

    *a5 = v21;
    return (*(*v12 + 24))(v12);
  }

  return result;
}

void sub_25FF10A70(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t PCMatrix44Tmpl<double>::eigen22(uint64_t a1, PCMath *this, double *a3, double a4, double a5, double a6, int8x16_t a7)
{
  v9 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v10 = vaddq_f64(*a1, v9);
  *v10.i64 = -*v10.i64;
  v11 = vmulq_f64(*a1, v9);
  a7.i64[0] = 0x3E7AD7F29ABCAF48;
  result = PCMath::quadratic(this, 1.0, v10, vsubq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0], a3, a3, a7);
  if (result == 1)
  {
    *a3 = *this;
    return 2;
  }

  return result;
}

uint64_t HContrastBezierRGB::GetDOD(HContrastBezierRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HContrastBezierRGB::GetROI(HContrastBezierRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    v5 = HGRectMake4i(0, 0, 0x400u, 1u);
    v7 = v6;
    v8 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v5, v7, v8);
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HContrastBezierLuma::GetDOD(HContrastBezierLuma *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HContrastBezierLuma::GetROI(HContrastBezierLuma *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    v5 = HGRectMake4i(0, 0, 0x400u, 1u);
    v7 = v6;
    v8 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v5, v7, v8);
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HContrastBezierRGB::~HContrastBezierRGB(HGNode *this)
{
  HgcContrastBezierRGB::~HgcContrastBezierRGB(this);

  HGObject::operator delete(v1);
}

void HContrastBezierLuma::~HContrastBezierLuma(HGNode *this)
{
  HgcContrastBezierLuma::~HgcContrastBezierLuma(this);

  HGObject::operator delete(v1);
}

uint64_t applyAlphaIgnore@<X0>(void *a1@<X0>, HgcStripAlpha **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HgcStripAlpha::HgcStripAlpha(v4);
  *a2 = v4;
  return (*(*v4 + 120))(v4, 0, *a1);
}

uint64_t applyAlphaInvert@<X0>(void *a1@<X0>, HGInvertAlpha **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HGInvertAlpha::HGInvertAlpha(v4);
  *a2 = v4;
  return (*(*v4 + 120))(v4, 0, *a1);
}

uint64_t applyClamp@<X0>(void *a1@<X0>, HgcClampToAlpha **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HgcClampToAlpha::HgcClampToAlpha(v4);
  *a2 = v4;
  return (*(*v4 + 120))(v4, 0, *a1);
}

HGInvertAlpha **FxApplyAlphaRequest@<X0>(HGInvertAlpha **result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, HGInvertAlpha **a5@<X8>)
{
  v9 = *result;
  *a5 = *result;
  if (v9)
  {
    result = (*(*v9 + 16))(v9);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a3)
        {
          applyAlphaInvert(a5, &v14);
          v10 = v14;
          if (v9 == v14)
          {
            if (v9)
            {
              (*(*v14 + 24))(v14);
            }
          }

          else
          {
            if (v9)
            {
              (*(*v9 + 24))(v9);
            }

            *a5 = v10;
          }
        }

        applyPremultiply();
      }

      goto LABEL_37;
    }

    result = applyAlphaIgnore(a5, &v14);
    v12 = v14;
    if (v9 != v14)
    {
      if (!v9)
      {
LABEL_35:
        *a5 = v12;
        goto LABEL_36;
      }

LABEL_20:
      result = (*(*v9 + 24))(v9);
      goto LABEL_35;
    }

    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  if (a2 == 2)
  {
    if (!a3)
    {
      goto LABEL_37;
    }

    result = applyAlphaInvert(a5, &v14);
    v12 = v14;
    if (v9 != v14)
    {
      if (!v9)
      {
        goto LABEL_35;
      }

      goto LABEL_20;
    }

    if (v9)
    {
LABEL_26:
      result = (*(*v14 + 24))(v14);
      v12 = v9;
LABEL_36:
      v9 = v12;
      goto LABEL_37;
    }

LABEL_45:
    v12 = 0;
    goto LABEL_36;
  }

  if (a2 == 3)
  {
    if (a3)
    {
      applyAlphaInvert(a5, &v14);
      v11 = v14;
      if (v9 == v14)
      {
        if (v9)
        {
          (*(*v14 + 24))(v14);
        }
      }

      else
      {
        if (v9)
        {
          (*(*v9 + 24))(v9);
        }

        *a5 = v11;
      }
    }

    applyPremultiplyWhiteToBlack();
  }

LABEL_37:
  if (a4)
  {
    result = applyClamp(a5, &v14);
    v13 = v14;
    if (v9 == v14)
    {
      if (v9)
      {
        return (*(*v14 + 24))(v14);
      }
    }

    else
    {
      if (v9)
      {
        result = (*(*v9 + 24))(v9);
      }

      *a5 = v13;
    }
  }

  return result;
}

void sub_25FF115A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF11D54(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25FF11D48);
}

void sub_25FF12300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PAEGenerateNoise(double a1, double a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v11 = (a2 + a2);
  v36 = 0;
  v37 = 0;
  if (a7)
  {
    v12 = (a2 + a2);
  }

  else
  {
    v12 = a8;
  }

  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        goto LABEL_25;
      }

      {
      }

      v13 = v12;
      v14 = getWhiteNoiseBitmap(int)::bitmaps;
    }

    else
    {
      {
      }

      v13 = v12;
      v14 = getTVNoiseBitmap(int)::bitmaps;
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        {
        }

        v13 = v12;
        v14 = getGaussianNoiseBitmap(int)::bitmaps;
        break;
      case 3:
        {
        }

        v13 = v12;
        v14 = getBlueNoiseBitmap(int)::bitmaps;
        break;
      case 4:
        {
        }

        v13 = v12;
        v14 = getPinkNoiseBitmap(int)::bitmaps;
        break;
      default:
        goto LABEL_25;
    }
  }

  v16 = v14;
  v15 = *v14;
  v17 = (v16[1] - v15) >> 4;
  v18 = v12 - v13 / v17 * v17;
  if (v18 >= 0)
  {
    LODWORD(v17) = 0;
  }

  v19 = v15 + 16 * (v17 + v18);
  v21 = *v19;
  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v36 = v21;
  v37 = v20;
LABEL_25:
  v41 = 0;
  FxSupport::createBitmapNode(&v36, &v41, v38);
  if (a7)
  {
    v22 = v11 + 12321 * a8;
  }

  else
  {
    v22 = a8;
  }

  std::vector<unsigned char>::vector[abi:ne200100](&v41, 256);
  v23 = v22 ^ (a6 << 31 >> 31);
  if (v41 != v42)
  {
    v24 = vdupq_n_s64(v42 - v41 - 1);
    v25 = -((v42 - v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v41 + 7;
    v27 = 15;
    do
    {
      v28 = v27 - 15;
      v29 = vdupq_n_s64(v27 - 15);
      v30 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_260343E00)));
      if (vuzp1_s8(vuzp1_s16(v30, *v24.i8), *v24.i8).u8[0])
      {
        *(v26 - 7) = v28;
      }

      if (vuzp1_s8(vuzp1_s16(v30, *&v24), *&v24).i8[1])
      {
        *(v26 - 6) = v28 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_260343DF0)))), *&v24).i8[2])
      {
        *(v26 - 5) = v28 | 2;
        *(v26 - 4) = v28 | 3;
      }

      v31 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_2603490E0)));
      if (vuzp1_s8(*&v24, vuzp1_s16(v31, *&v24)).i32[1])
      {
        *(v26 - 3) = v28 | 4;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(v31, *&v24)).i8[5])
      {
        *(v26 - 2) = v28 | 5;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_2603490D0))))).i8[6])
      {
        *(v26 - 1) = v28 | 6;
        *v26 = v28 | 7;
      }

      v32 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_2603490C0)));
      if (vuzp1_s8(vuzp1_s16(v32, *v24.i8), *v24.i8).u8[0])
      {
        v26[1] = v28 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v24), *&v24).i8[1])
      {
        v26[2] = v28 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_2603490B0)))), *&v24).i8[2])
      {
        v26[3] = v28 | 0xA;
        v26[4] = v28 | 0xB;
      }

      v33 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_2603490A0)));
      if (vuzp1_s8(*&v24, vuzp1_s16(v33, *&v24)).i32[1])
      {
        v26[5] = v28 | 0xC;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(v33, *&v24)).i8[5])
      {
        v26[6] = v28 | 0xD;
      }

      if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v29, xmmword_260349090))))).i8[6])
      {
        v26[7] = v28 | 0xE;
        v26[8] = v28 | 0xF;
      }

      v27 += 16;
      v26 += 16;
    }

    while (v25 + v27 != 15);
  }

  LODWORD(v38[0]) = v23;
  v34 = 1;
  v35 = v23;
  do
  {
    v35 = v34 + 1812433253 * (v35 ^ (v35 >> 30));
    *(v38 + v34++) = v35;
  }

  while (v34 != 624);
  v39 = 0u;
  v40 = -1;
  PCRandomShuffle<std::__wrap_iter<unsigned char *>,Rand>(v41, v42, v38);
  PCCreateBitmap(256, 1, 5u);
}

void sub_25FF13050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

_anonymous_namespace_::Bitmaps *anonymous namespace::Bitmaps::Bitmaps(_anonymous_namespace_::Bitmaps *this, const char *a2)
{
  std::vector<std::shared_ptr<PCBitmap>>::vector[abi:ne200100](this, 3uLL);
  v4 = NSClassFromString(&cfstr_Pveffectassets.isa);
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      PCLoadBitmap([v5 URLForResource:objc_msgSend(MEMORY[0x277CCACA8] withExtension:{"stringWithFormat:", @"%s%u", a2, v9), @"tiff"}], &v14);
      v10 = *this + v8;
      v11 = v14;
      v14 = 0uLL;
      v12 = *(v10 + 8);
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }

      v8 += 16;
      v9 = (v9 + 1);
    }

    while (v8 != 48);
  }

  return this;
}

void sub_25FF133D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<PCBitmap>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::shared_ptr<PCBitmap>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::shared_ptr<PCBitmap>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t PCRandomShuffle<std::__wrap_iter<unsigned char *>,Rand>(uint64_t result, char *a2, uint64_t a3)
{
  if (result != a2)
  {
    v11[8] = v3;
    v11[9] = v4;
    v6 = result;
    v7 = (result + 1);
    if ((result + 1) != a2)
    {
      v9 = (v7 << 32) - (result << 32) + 0x100000000;
      do
      {
        v11[0] = 0;
        v11[1] = (v9 >> 32) - 1;
        result = std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(a3 + 2504, a3, v11);
        v10 = *v7;
        *v7++ = *(result + v6);
        *(result + v6) = v10;
        v9 += 0x100000000;
      }

      while (v7 != a2);
    }
  }

  return result;
}

uint64_t std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

BOOL Effect_toPCRecti@<W0>(const HGRect *a1@<X0>, int32x2_t *a2@<X8>)
{
  *a2 = 0;
  result = HGRectIsNull(*&a1->var0, *&a1->var2);
  if (result)
  {
    v5 = -1;
  }

  else
  {
    v6 = vmax_s32(*&a1->var0, vdup_n_s32(0xC0000001));
    v7 = vmin_s32(*&a1->var2, vdup_n_s32(0x3FFFFFFEu));
    *a2 = v6;
    v5 = vsub_s32(v7, v6);
  }

  a2[1] = v5;
  return result;
}

uint64_t FxSupport::makeHeliumCrop@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, HGCrop **a3@<X8>)
{
  v6 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v6);
  (*(*v6 + 120))(v6, 0, *a2);
  v7 = HGRectMake4i(*a1, a1[1], a1[2] + *a1, a1[3] + a1[1]);
  result = (*(*v6 + 96))(v6, 0, v7, SHIDWORD(v7), v8, v9);
  *a3 = v6;
  return result;
}

__int128 *getFxTimeZero(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_29, memory_order_acquire) & 1) == 0)
  {
    getFxTimeZero();
  }

  return &xmmword_280C5E710;
}

__int128 *getFxTimeInvalid(void)
{
  if ((atomic_load_explicit(&qword_280C5E708, memory_order_acquire) & 1) == 0)
  {
    getFxTimeInvalid();
  }

  return &xmmword_280C5E728;
}

void sub_25FF13D2C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_25FF145F4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF14794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF149E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 232);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF14A90(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(exception_object);
}

void getFxTimeZero()
{
  if (__cxa_guard_acquire(&_MergedGlobals_29))
  {
    xmmword_280C5E710 = *MEMORY[0x277CC08F0];
    qword_280C5E720 = *(MEMORY[0x277CC08F0] + 16);

    __cxa_guard_release(&_MergedGlobals_29);
  }
}

void getFxTimeInvalid()
{
  if (__cxa_guard_acquire(&qword_280C5E708))
  {
    xmmword_280C5E728 = *MEMORY[0x277CC0898];
    qword_280C5E738 = *(MEMORY[0x277CC0898] + 16);

    __cxa_guard_release(&qword_280C5E708);
  }
}

int *Interval::pixelToFloat@<X0>(int *this@<X0>, double *a2@<X8>)
{
  v4 = this[1];
  v5 = this[2];
  v6 = this[3];
  v7 = *this + 0.5;
  v8 = v5 + -0.5;
  if (v8 >= v7)
  {
    v9 = *this + 0.5;
  }

  else
  {
    v9 = v5 + -0.5;
  }

  if (v7 >= v8)
  {
    v10 = *this + 0.5;
  }

  else
  {
    v10 = v5 + -0.5;
  }

  v11 = v4 + 0.5;
  v12 = v6 + -0.5;
  if (v12 >= v11)
  {
    v13 = v4 + 0.5;
  }

  else
  {
    v13 = v6 + -0.5;
  }

  if (v11 >= v12)
  {
    v14 = v4 + 0.5;
  }

  else
  {
    v14 = v6 + -0.5;
  }

  if (v9 > v10)
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  if (v13 > v14)
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v13;
  a2[3] = v14;
  return this;
}

unint64_t Interval::floatToPixel(double *a1)
{
  v1 = "nnel2DOverRange";
  LODWORD(v1) = vcvtmd_s64_f64(*a1 + -0.51);
  if (fabs(*a1) == INFINITY)
  {
    v1 = 0x80000000;
  }

  v2 = a1[2];
  v3 = vcvtmd_s64_f64(v2 + -0.51) << 32;
  if (fabs(v2) == INFINITY)
  {
    v3 = 0x8000000000000000;
  }

  return v3 | v1;
}

float64x2_t Interval::normalized@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = *a1;
  v3 = sqrt(vaddvq_f64(vmulq_f64(v2, v2)));
  if (fabs(v3) < 0.000000100000001)
  {
    v3 = 1.0;
  }

  result = vdivq_f64(v2, vdupq_lane_s64(*&v3, 0));
  *a2 = result;
  return result;
}

double Interval::eightPointDOD@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (***a3)(float64x2_t *__return_ptr, void, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  v8 = fegetround();
  fesetround(0x400000);
  v35.f64[0] = 0.0;
  *(a4 + 16) = -0.0;
  *(a4 + 24) = 0;
  fesetround(v8);
  v9 = *(a1 + 16);
  *&v34 = *a1;
  *(&v34 + 1) = v9;
  (**a3)(&v35, a3, &v34);
  v28 = v35;
  v10 = *(a1 + 24);
  *&v34 = *a1;
  *(&v34 + 1) = v10;
  (**a3)(&v35, a3, &v34);
  v21 = vbslq_s8(vcgtq_f64(v28, v35), v35, v28);
  v22 = vbslq_s8(vcgtq_f64(v35, v28), v35, v28);
  v34 = *(a1 + 8);
  (**a3)(&v35, a3, &v34);
  v11 = vbslq_s8(vcgtq_f64(v35, v22), v35, v22);
  v23 = vbslq_s8(vcgtq_f64(v21, v35), v35, v21);
  v29 = v11;
  v12 = *(a1 + 24);
  *&v34 = *(a1 + 8);
  *(&v34 + 1) = v12;
  (**a3)(&v35, a3, &v34);
  v13 = vbslq_s8(vcgtq_f64(v35, v29), v35, v29);
  v14 = vbslq_s8(vcgtq_f64(v23, v35), v35, v23);
  *a4 = v14.i64[0];
  *(&v15 + 1) = v14.i64[1];
  *&v15 = v13.i64[0];
  *(a4 + 8) = v15;
  *(a4 + 24) = v13.i64[1];
  if (*a1 <= *a2 && *a2 <= *(a1 + 8))
  {
    v16 = *(a1 + 16);
    *&v34 = *a2;
    *(&v34 + 1) = v16;
    v24 = v13;
    v30 = v14;
    (**a3)(&v35, a3, &v34);
    v25 = vbslq_s8(vcgtq_f64(v35, v24), v35, v24);
    v31 = vbslq_s8(vcgtq_f64(v30, v35), v35, v30);
    v17 = *(a1 + 24);
    *&v34 = *a2;
    *(&v34 + 1) = v17;
    (**a3)(&v35, a3, &v34);
    v13 = vbslq_s8(vcgtq_f64(v35, v25), v35, v25);
    v14 = vbslq_s8(vcgtq_f64(v31, v35), v35, v31);
    *a4 = v14.i64[0];
    *(&v18 + 1) = v14.i64[1];
    *&v18 = v13.i64[0];
    *(a4 + 8) = v18;
    *(a4 + 24) = v13.i64[1];
  }

  result = *(a2 + 8);
  if (*(a1 + 16) <= result && result <= *(a1 + 24))
  {
    *&v34 = *a1;
    *(&v34 + 1) = result;
    v26 = v13;
    v32 = v14;
    (**a3)(&v35, a3, &v34);
    v27 = vbslq_s8(vcgtq_f64(v35, v26), v35, v26);
    v33 = vbslq_s8(vcgtq_f64(v32, v35), v35, v32);
    v20 = *(a2 + 8);
    *&v34 = *(a1 + 8);
    *(&v34 + 1) = v20;
    (**a3)(&v35, a3, &v34);
    result = v35.f64[0];
    v36.val[1] = vbslq_s8(vcgtq_f64(v35, v27), v35, v27);
    v36.val[0] = vbslq_s8(vcgtq_f64(v33, v35), v35, v33);
    vst2q_f64(a4, v36);
  }

  return result;
}

void NewEquirectProjectNode()
{
  v0 = HGObject::operator new(0x1B0uLL);
  *v0 = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  *(v0 + 10) = 0u;
  *(v0 + 11) = 0u;
  *(v0 + 12) = 0u;
  *(v0 + 13) = 0u;
  *(v0 + 14) = 0u;
  *(v0 + 15) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 17) = 0u;
  *(v0 + 18) = 0u;
  *(v0 + 19) = 0u;
  *(v0 + 20) = 0u;
  *(v0 + 21) = 0u;
  *(v0 + 22) = 0u;
  *(v0 + 23) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 25) = 0u;
  *(v0 + 26) = 0u;
  LiHgcEquirectProject::LiHgcEquirectProject(v0);
}

uint64_t RetimeAddBlend2::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

uint64_t RetimeAddBlend6::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void FxSupport::makeRetimeAddBlend2(FxSupport *this)
{
  v1 = HGObject::operator new(0x1A0uLL);
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 12) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 25) = 0u;
  HgcRetimeAddBlend2::HgcRetimeAddBlend2(v1);
}

void FxSupport::makeRetimeAddBlend6(FxSupport *this)
{
  v1 = HGObject::operator new(0x1A0uLL);
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 12) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 25) = 0u;
  HgcRetimeAddBlend6::HgcRetimeAddBlend6(v1);
}

void RetimeAddBlend2::~RetimeAddBlend2(HGNode *this)
{
  HgcRetimeAddBlend2::~HgcRetimeAddBlend2(this);

  HGObject::operator delete(v1);
}

void RetimeAddBlend6::~RetimeAddBlend6(HGNode *this)
{
  HgcRetimeAddBlend6::~HgcRetimeAddBlend6(this);

  HGObject::operator delete(v1);
}

void sub_25FF15DF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

FxMatrix44 *FxMatrixFromPCMatrix(uint64_t a1)
{
  v1 = [[FxMatrix44 alloc] initWithMatrix44Data:a1];

  return v1;
}

__n128 FxMatrixToPCMatrix@<Q0>(FxMatrix44 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [(FxMatrix44 *)a1 matrix];
  v4 = *&(*v3)[2][2];
  *(a2 + 64) = *&(*v3)[2][0];
  *(a2 + 80) = v4;
  v5 = *&(*v3)[3][2];
  *(a2 + 96) = *&(*v3)[3][0];
  *(a2 + 112) = v5;
  v6 = *&(*v3)[0][2];
  *a2 = *v3;
  *(a2 + 16) = v6;
  result = *&(*v3)[1][0];
  v8 = *&(*v3)[1][2];
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

uint64_t FxApplySDRToHDR@<X0>(CGColorSpace *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v22 = 0;
  v20 = PCGetNCLCCodeForColorSpace(a1);
  v21 = v10;
  if (operator==(&v20, &kPCNCLC_Rec709) || operator==(&v20, &kPCNCLC_sRGB))
  {
    v11 = PCGetNCLCColorSpace(&kPCNCLC_Rec709);
    v22 = 0;
  }

  else
  {
    if (operator==(&v20, kPCNCLC_P3_D65))
    {
      v11 = PCGetNCLCColorSpace(kPCNCLC_P3_D65);
      v12 = 1;
    }

    else
    {
      v11 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020);
      v12 = 2;
    }

    v22 = v12;
  }

  FxApplyColorConform(a2, a1, 1, v11, 0);
  v19 = a4 != 0;
  FxSupport::newHGRefWithInput<HGHLG::SDRToHLG,HGHLG::SDRToHLG::SDRInputType &,HGHLG::SDRToHLG::ConversionMethod const&>(*a5, &v22, &v19, &v18);
  v13 = *a5;
  v14 = v18;
  if (*a5 == v18)
  {
    if (v13)
    {
      (*(*v18 + 24))(v18);
    }
  }

  else
  {
    if (v13)
    {
      (*(*v13 + 24))(v13);
      v14 = v18;
    }

    *a5 = v14;
  }

  v15 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
  FxApplyColorConform(a5, v15, 0, a3, 1);
  result = *a5;
  v17 = v18;
  if (*a5 == v18)
  {
    if (result)
    {
      return (*(*v18 + 24))(v18);
    }
  }

  else
  {
    if (result)
    {
      result = (*(*result + 24))(result);
      v17 = v18;
    }

    *a5 = v17;
  }

  return result;
}

void sub_25FF161F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (*v9)
  {
    (*(**v9 + 24))(*v9);
  }

  _Unwind_Resume(exception_object);
}

CGColorSpace **FxApplyBT2446A@<X0>(float *a1@<X0>, float *a2@<X8>)
{
  v4 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020);

  return FxApplyBT2446A(a1, v4, v4, a2);
}

CGColorSpace **FxApplyBT2446A@<X0>(float *a1@<X0>, CGColorSpace *a2@<X1>, CGColorSpace *a3@<X2>, float *a4@<X8>)
{
  PCColor::PCColor(&v41, *a1, a1[1], a1[2], a2);
  v6 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020);
  v40 = 0;
  v39 = 0.0;
  PCColor::getRGB(&v41, &v40 + 1, &v40, &v39, v6);
  v38[0] = *(&v40 + 1);
  LODWORD(v38[1]) = v40;
  v38[2] = v39;
  getRec2020RGBToYCbCrMatrix();
  operator*<float>(&xmmword_280C5E760, v38, &v37.var0.var0);
  var0 = v37.var0.var0;
  v7 = *(&v37.var0.var0 + 1);
  v9 = *v37.var0.var1;
  v10 = powf(*&v37.var0.var0 * 255.0, flt_26034C7B0[(*&v37.var0.var0 * 255.0) > 70.0] + ((*&v37.var0.var0 * 255.0) * (flt_26034C7A8[(*&v37.var0.var0 * 255.0) > 70.0] + ((*&v37.var0.var0 * 255.0) * flt_26034C7A0[(*&v37.var0.var0 * 255.0) > 70.0]))));
  v11 = 1.0;
  if (*&var0 > 0.0)
  {
    v11 = (v10 / *&var0) * 1.075;
  }

  v12 = v7 * v11;
  v13 = v9 * v11;
  v14 = v10 + (v13 * 1.4746);
  if (v14 <= 1000.0)
  {
    v15 = v10 + (v13 * 1.4746);
  }

  else
  {
    v15 = 1000.0;
  }

  v16 = v15 / 1000.0;
  if (v14 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = powf(v17, 2.4);
  v19 = (v10 + (v12 * -0.16455)) + (v13 * -0.57135);
  if (v19 <= 1000.0)
  {
    v20 = (v10 + (v12 * -0.16455)) + (v13 * -0.57135);
  }

  else
  {
    v20 = 1000.0;
  }

  v21 = v20 / 1000.0;
  if (v19 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = powf(v22, 2.4);
  v24 = v10 + (v12 * 1.8814);
  if (v24 <= 1000.0)
  {
    v25 = v10 + (v12 * 1.8814);
  }

  else
  {
    v25 = 1000.0;
  }

  v26 = v25 / 1000.0;
  if (v24 >= 0.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = powf(v27, 2.4);
  if ((atomic_load_explicit(&qword_280C5E748, memory_order_acquire) & 1) == 0)
  {
    FxApplyBT2446A();
  }

  v29 = *&dword_280C5E750;
  v30 = qword_280C5E754;
  v31 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
  v32 = ((v18 * v29) + (v23 * *&v30)) + (v28 * *(&v30 + 1));
  v33 = powf(v32, -0.16667) * 12.0;
  if (v32 <= 0.0)
  {
    v33 = 0.0;
  }

  PCColor::PCColor(&v37, v18 * v33, v23 * v33, v28 * v33, v31);
  PCColor::getRGB(&v37, &v40 + 1, &v40, &v39, a3);
  v34 = v40;
  v35 = v39;
  *a4 = *(&v40 + 1);
  *(a4 + 1) = v34;
  a4[2] = v35;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v37.var1._obj);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v41.var1._obj);
}

void sub_25FF165B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, CGColorSpace *a26)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v26 + 48));
  PCCFRef<CGColorSpace *>::~PCCFRef(&a26);
  _Unwind_Resume(a1);
}

float operator*<float>@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = a2[1];
  v4 = a2[2];
  result = ((*a1 * *a2) + (a1[1] * v3)) + (a1[2] * v4);
  v6 = ((*a2 * a1[3]) + (v3 * a1[4])) + (v4 * a1[5]);
  v7 = ((*a2 * a1[6]) + (v3 * a1[7])) + (v4 * a1[8]);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

void getRec2020RGBToYCbCrMatrix(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_30, memory_order_acquire) & 1) == 0)
  {
    getRec2020RGBToYCbCrMatrix();
  }
}

__n128 makeRec2020RGBToYCbCrMatrix(void)
{
  result = xmmword_260391A80;
  result.n128_u32[3] = -1106314449;
  xmmword_280C5E760 = result;
  unk_280C5E770 = vextq_s8(vextq_s8(dword_260391A90, dword_260391A90, 0xCuLL), xmmword_260391AA0, 8uLL);
  unk_280C5E780 = -1121667137;
  return result;
}

void FxApplyBT2446A()
{
  if (__cxa_guard_acquire(&qword_280C5E748))
  {
    getRec2020RGBToYCbCrMatrix();
    v0 = xmmword_280C5E760;
    getRec2020RGBToYCbCrMatrix();
    v1 = DWORD1(xmmword_280C5E760);
    getRec2020RGBToYCbCrMatrix();
    dword_280C5E750 = v0;
    qword_280C5E754 = __PAIR64__(DWORD2(xmmword_280C5E760), v1);
    __cxa_guard_release(&qword_280C5E748);
  }
}

void getRec2020RGBToYCbCrMatrix()
{
  if (__cxa_guard_acquire(&_MergedGlobals_30))
  {
    makeRec2020RGBToYCbCrMatrix();
    __cxa_atexit(OZChannelBase::setRangeName, &xmmword_280C5E760, &dword_25F8F0000);

    __cxa_guard_release(&_MergedGlobals_30);
  }
}

CGColorSpace **FxGetRGBAForRenderingCGI(PCColor *a1, FxColorDescription *this, float *a3, float *a4, float *a5, float *a6)
{
  CGColorSpace = FxColorDescription::getCGColorSpace(this);
  if (FxColorDescription::isHDR(this))
  {
    v14 = *FxColorDescription::getToneMapMethod(this);
    if (a6)
    {
      return PCColor::getRGBA(&a1->var0.var0, a3, a4, a5, a6, CGColorSpace, 1, &v14);
    }

    else
    {
      return PCColor::getRGB(&a1->var0.var0, a3, a4, a5, CGColorSpace, 1, &v14);
    }
  }

  else if (a6)
  {

    return PCColor::getRGBA(a1, a3, a4, a5, a6, CGColorSpace);
  }

  else
  {

    return PCColor::getRGB(a1, a3, a4, a5, CGColorSpace);
  }
}

uint64_t createContrastLumaNode@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, HgcContrastLuma **a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = HGObject::operator new(0x1A0uLL);
  HgcContrastLuma::HgcContrastLuma(v14);
  (*(*v14 + 120))(v14, 0, *a1);
  v15 = a5;
  (*(*v14 + 96))(v14, 1, v15, 0.0, 0.0, 0.0);
  v16 = a6;
  (*(*v14 + 96))(v14, 0, v16, 0.0, 0.0, 0.0);
  if (a2)
  {
    v17.n128_f32[0] = 1.0;
  }

  else
  {
    v17.n128_f32[0] = 0.0;
  }

  (*(*v14 + 96))(v14, 3, v17, 0.0, 0.0, 0.0);
  v18.n128_u64[0] = 0;
  if (a3)
  {
    v18.n128_f32[0] = 1.0;
  }

  (*(*v14 + 96))(v14, 4, v18, 0.0, 0.0, 0.0);
  v19 = a7;
  result = (*(*v14 + 96))(v14, 2, v19, 0.0, 0.0, 0.0);
  *a4 = v14;
  return result;
}

uint64_t createContrastRGBNode@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, HgcContrastRGB **a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = HGObject::operator new(0x1A0uLL);
  HgcContrastRGB::HgcContrastRGB(v14);
  (*(*v14 + 120))(v14, 0, *a1);
  v15 = a5;
  (*(*v14 + 96))(v14, 1, v15, 0.0, 0.0, 0.0);
  v16 = a6;
  (*(*v14 + 96))(v14, 0, v16, 0.0, 0.0, 0.0);
  if (a2)
  {
    v17.n128_f32[0] = 1.0;
  }

  else
  {
    v17.n128_f32[0] = 0.0;
  }

  (*(*v14 + 96))(v14, 3, v17, 0.0, 0.0, 0.0);
  v18.n128_u64[0] = 0;
  if (a3)
  {
    v18.n128_f32[0] = 1.0;
  }

  (*(*v14 + 96))(v14, 4, v18, 0.0, 0.0, 0.0);
  v19 = a7;
  result = (*(*v14 + 96))(v14, 2, v19, 0.0, 0.0, 0.0);
  *a4 = v14;
  return result;
}

uint64_t HConvolvePass8Tap::GetOutput(HConvolvePass8Tap *this, HGRenderer *a2)
{
  (*(*this + 136))(this, 0xFFFFFFFFLL, 32);

  return HgcConvolvePass8tap::GetOutput(this, a2);
}

void HConvolvePass8Tap::~HConvolvePass8Tap(HGNode *this)
{
  HgcConvolvePass8tap::~HgcConvolvePass8tap(this);

  HGObject::operator delete(v1);
}

void HEquirectWrap::init(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6)
{
  v70 = 0x3FF0000000000000;
  v66 = 0;
  v67 = 0x3FF0000000000000;
  v65 = 0;
  v68 = 0u;
  v69 = 0u;
  v10 = vcvtq_f64_f32(a3[1]);
  v64[0] = vcvtq_f64_f32(*a3);
  v64[1] = v10;
  v11 = vcvtq_f64_f32(a4[1]);
  v64[2] = vcvtq_f64_f32(*a4);
  v64[3] = v11;
  HGTransform::HGTransform(v63);
  HGTransform::LoadMatrixd(v63, v64);
  HGTransform::Transpose(v63);
  v62 = 0x3FF0000000000000;
  v59 = 0x3FF0000000000000;
  v58 = 0;
  v57 = 0;
  v60 = 0u;
  v61 = 0u;
  v12 = vcvtq_f64_f32(a5[1]);
  v56[0] = vcvtq_f64_f32(*a5);
  v56[1] = v12;
  v13 = vcvtq_f64_f32(a6[1]);
  v56[2] = vcvtq_f64_f32(*a6);
  v56[3] = v13;
  HGTransform::HGTransform(v55);
  HGTransform::LoadMatrixd(v55, v56);
  HGTransform::Transpose(v55);
  v14 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v14);
  __asm { FMOV            V1.2D, #-0.5 }

  v20 = vcvtq_f64_f32(*a2);
  v47 = _Q1;
  v53 = vmulq_f64(v20, _Q1);
  v54 = v20;
  PCMatrix44Tmpl<double>::transformRect<double>(v56, v53.f64, &v53);
  v21 = v53.f64[0];
  v22 = v53.f64[1];
  v23 = v53.f64[0] + v54.f64[0];
  v24 = v53.f64[1] + v54.f64[1];
  v26 = HGRectMake4f(v25, v21, v22, v23, v24);
  (*(*v14 + 96))(v14, 0, v26, SHIDWORD(v26), v27, v28);
  v29 = *(a1 + 408);
  if (v29 != v14)
  {
    if (v29)
    {
      (*(*v29 + 24))(v29);
    }

    *(a1 + 408) = v14;
    (*(*v14 + 16))(v14);
  }

  HGTransform::HGTransform(v52);
  HGTransform::Multiply(v52, v63);
  HGTransform::Scale(v52, 1.0, -1.0, 1.0);
  HGTransform::Translate(v52, a2->f32[0] * -0.5, a2->f32[1], 0.0);
  HGTransform::Multiply(v52, v55);
  HGTransform::HGTransform(v51);
  HGTransform::Multiply(v51, v63);
  HGTransform::Scale(v51, 1.0, -1.0, 1.0);
  HGTransform::Translate(v51, a2->f32[0] * 0.5, a2->f32[1], 0.0);
  HGTransform::Multiply(v51, v55);
  v30 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v30);
  (*(*v30 + 576))(v30, v52);
  (*(*v30 + 120))(v30, 0, v14);
  v31 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v31);
  (*(*v31 + 576))(v31, v51);
  (*(*v31 + 120))(v31, 0, v14);
  v32 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v32);
  (*(*v32 + 120))(v32, 0, v30);
  (*(*v32 + 120))(v32, 1, v31);
  (*(*v32 + 120))(v32, 2, v14);
  v33 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v33);
  v34 = COERCE_FLOAT(*a2);
  v35 = COERCE_FLOAT(HIDWORD(*a2));
  v48 = vmulq_f64(vcvtq_f64_f32(*a2), v47);
  v49 = v34;
  v50 = v35 + v35;
  PCMatrix44Tmpl<double>::transformRect<double>(v56, v48.f64, &v48);
  v36 = v48.f64[0];
  v37 = v48.f64[1];
  v38 = v48.f64[0] + v49;
  v39 = v48.f64[1] + v50;
  v41 = HGRectMake4f(v40, v36, v37, v38, v39);
  (*(*v33 + 96))(v33, 0, v41, SHIDWORD(v41), v42, v43);
  (*(*v33 + 120))(v33, 0, v32);
  v44 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v44);
  HGTextureWrap::SetTextureWrapMode(v44, 3, v45);
  (*(*v44 + 120))(v44, 0, v33);
  v46 = *(a1 + 416);
  if (v46 != v44)
  {
    if (v46)
    {
      (*(*v46 + 24))(v46);
    }

    *(a1 + 416) = v44;
    (*(*v44 + 16))(v44);
  }

  (*(*v44 + 24))(v44);
  (*(*v33 + 24))(v33);
  (*(*v32 + 24))(v32);
  (*(*v31 + 24))(v31);
  (*(*v30 + 24))(v30);
  HGTransform::~HGTransform(v51);
  HGTransform::~HGTransform(v52);
  (*(*v14 + 24))(v14);
  HGTransform::~HGTransform(v55);
  HGTransform::~HGTransform(v63);
}

void sub_25FF179F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (v57)
  {
    (*(*v57 + 24))(v57);
  }

  (*(*v60 + 24))(v60);
  (*(*v59 + 24))(v59);
  (*(*v58 + 24))(v58);
  (*(*v56 + 24))(v56);
  HGTransform::~HGTransform(&a15);
  HGTransform::~HGTransform(&a33);
  (*(*v55 + 24))(v55);
  HGTransform::~HGTransform(&a55);
  HGTransform::~HGTransform(&STACK[0x280]);
  _Unwind_Resume(a1);
}

uint64_t HEquirectWrap::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(**(this + 51) + 120))(*(this + 51), 0, Input);
  return *(this + 52);
}

void HEquirectWrap::~HEquirectWrap(HGNode *this)
{
  HEquirectWrap::~HEquirectWrap(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_287259200;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

void sub_25FF18988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCAutoreleasePool::~PCAutoreleasePool(va);
  _Unwind_Resume(a1);
}

void HRenderToEquirect::~HRenderToEquirect(HGNode *this)
{
  *this = &unk_2872596D0;
  HgcRenderToEquirect::~HgcRenderToEquirect(this);
}

{
  *this = &unk_2872596D0;
  HgcRenderToEquirect::~HgcRenderToEquirect(this);

  HGObject::operator delete(v1);
}

uint64_t HRenderToEquirect::SetXPlusPT(double *a1, double *a2)
{
  v3 = a1 + 52;
  if (a1 + 52 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v3[j] = a2[j];
      }

      v3 += 4;
      a2 += 4;
    }
  }

  v6 = a1[52];
  v7 = a1[53];
  v8 = a1[54];
  v9 = a1[55];
  v10 = a1[56];
  v11 = a1[57];
  v12 = a1[58];
  v13 = a1[59];
  (*(*a1 + 96))(a1, 13, v6, v7, v8, v9);
  v14 = *(*a1 + 96);
  v15.n128_f32[0] = v10;
  v16.n128_f32[0] = v11;
  v17.n128_f32[0] = v12;
  v18.n128_f32[0] = v13;

  return v14(a1, 14, v15, v16, v17, v18);
}

uint64_t HRenderToEquirect::SetXMinusPT(double *a1, double *a2)
{
  v3 = a1 + 68;
  if (a1 + 68 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v3[j] = a2[j];
      }

      v3 += 4;
      a2 += 4;
    }
  }

  v6 = a1[68];
  v7 = a1[69];
  v8 = a1[70];
  v9 = a1[71];
  v10 = a1[72];
  v11 = a1[73];
  v12 = a1[74];
  v13 = a1[75];
  (*(*a1 + 96))(a1, 15, v6, v7, v8, v9);
  v14 = *(*a1 + 96);
  v15.n128_f32[0] = v10;
  v16.n128_f32[0] = v11;
  v17.n128_f32[0] = v12;
  v18.n128_f32[0] = v13;

  return v14(a1, 16, v15, v16, v17, v18);
}

uint64_t HRenderToEquirect::SetYPlusPT(double *a1, double *a2)
{
  v3 = a1 + 84;
  if (a1 + 84 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v3[j] = a2[j];
      }

      v3 += 4;
      a2 += 4;
    }
  }

  v6 = a1[84];
  v7 = a1[85];
  v8 = a1[86];
  v9 = a1[87];
  v10 = a1[88];
  v11 = a1[89];
  v12 = a1[90];
  v13 = a1[91];
  (*(*a1 + 96))(a1, 9, v6, v7, v8, v9);
  v14 = *(*a1 + 96);
  v15.n128_f32[0] = v10;
  v16.n128_f32[0] = v11;
  v17.n128_f32[0] = v12;
  v18.n128_f32[0] = v13;

  return v14(a1, 10, v15, v16, v17, v18);
}

uint64_t HRenderToEquirect::SetYMinusPT(double *a1, double *a2)
{
  v3 = a1 + 100;
  if (a1 + 100 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v3[j] = a2[j];
      }

      v3 += 4;
      a2 += 4;
    }
  }

  v6 = a1[100];
  v7 = a1[101];
  v8 = a1[102];
  v9 = a1[103];
  v10 = a1[104];
  v11 = a1[105];
  v12 = a1[106];
  v13 = a1[107];
  (*(*a1 + 96))(a1, 11, v6, v7, v8, v9);
  v14 = *(*a1 + 96);
  v15.n128_f32[0] = v10;
  v16.n128_f32[0] = v11;
  v17.n128_f32[0] = v12;
  v18.n128_f32[0] = v13;

  return v14(a1, 12, v15, v16, v17, v18);
}

uint64_t HRenderToEquirect::SetZPlusPT(double *a1, double *a2)
{
  v3 = a1 + 116;
  if (a1 + 116 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v3[j] = a2[j];
      }

      v3 += 4;
      a2 += 4;
    }
  }

  v6 = a1[116];
  v7 = a1[117];
  v8 = a1[118];
  v9 = a1[119];
  v10 = a1[120];
  v11 = a1[121];
  v12 = a1[122];
  v13 = a1[123];
  (*(*a1 + 96))(a1, 5, v6, v7, v8, v9);
  v14 = *(*a1 + 96);
  v15.n128_f32[0] = v10;
  v16.n128_f32[0] = v11;
  v17.n128_f32[0] = v12;
  v18.n128_f32[0] = v13;

  return v14(a1, 6, v15, v16, v17, v18);
}

uint64_t HRenderToEquirect::SetZMinusPT(double *a1, double *a2)
{
  v3 = a1 + 132;
  if (a1 + 132 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v3[j] = a2[j];
      }

      v3 += 4;
      a2 += 4;
    }
  }

  v6 = a1[132];
  v7 = a1[133];
  v8 = a1[134];
  v9 = a1[135];
  v10 = a1[136];
  v11 = a1[137];
  v12 = a1[138];
  v13 = a1[139];
  (*(*a1 + 96))(a1, 7, v6, v7, v8, v9);
  v14 = *(*a1 + 96);
  v15.n128_f32[0] = v10;
  v16.n128_f32[0] = v11;
  v17.n128_f32[0] = v12;
  v18.n128_f32[0] = v13;

  return v14(a1, 8, v15, v16, v17, v18);
}

uint64_t HRenderToEquirect::GetDOD(HRenderToEquirect *this, HGRenderer *a2, int a3, HGRect a4)
{
  v28 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 1, v19, *&a4.var0, *&a4.var2);
  v15 = *v19;
  (*(*this + 104))(this, 2, v19);
  v14 = *v19;
  (*(*this + 104))(this, 3, v19);
  v5 = v19[0];
  (*(*this + 104))(this, 4, v19);
  v6 = vcvtq_f64_f32(*&v19[0]);
  v7 = vcvtq_f64_f32(*(v19 + 8));
  v20 = 0;
  v21 = 0;
  v22 = 0x3FF0000000000000;
  v23 = 0;
  v19[1] = vcvtq_f64_f32(*(&v5 + 8));
  v19[0] = vcvtq_f64_f32(*&v5);
  v19[2] = v6;
  v19[3] = v7;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0x3FF0000000000000;
  PCMatrix44Tmpl<double>::invert(v19, v19, 0.0);
  __asm { FMOV            V2.2D, #-0.5 }

  v16 = vmulq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v14), LODWORD(v15))), _Q2);
  v17 = v15;
  v18 = v14;
  PCMatrix44Tmpl<double>::transformRect<double>(v19, v16.f64, &v16);
  return HGRectMake4i(vcvtmd_s64_f64(v16.f64[0]), vcvtmd_s64_f64(v16.f64[1]), vcvtpd_s64_f64(v16.f64[0] + v17), vcvtpd_s64_f64(v16.f64[1] + v18));
}

uint64_t *HRenderToEquirect::getInputPixelTransform(HRenderToEquirect *this, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return (this + 800);
      case 4:
        return (this + 928);
      case 5:
        return (this + 1056);
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return (this + 416);
      case 1:
        return (this + 544);
      case 2:
        return (this + 672);
    }
  }

  if (atomic_load_explicit(&_MergedGlobals_31, memory_order_acquire))
  {
    return &qword_280C5E790;
  }

  v5[1] = v2;
  v5[2] = v3;
  HRenderToEquirect::getInputPixelTransform(v5);
  return v5[0];
}

uint64_t HRenderToEquirect::GetROI(HRenderToEquirect *this, HGRenderer *a2, int a3, HGRect a4)
{
  v17 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 0, &v13, *&a4.var0, *&a4.var2);
  v6 = *&v13;
  v13 = *&v13 * -0.5;
  v14 = v13;
  v15 = v6;
  v16 = v6;
  InputPixelTransform = HRenderToEquirect::getInputPixelTransform(this, a3);
  PCMatrix44Tmpl<double>::transformRect<double>(InputPixelTransform, &v13, &v13);
  v8 = HGRectMake4i(vcvtmd_s64_f64(v13), vcvtmd_s64_f64(v14), vcvtpd_s64_f64(v13 + v15), vcvtpd_s64_f64(v14 + v16));
  v10 = v9;
  v11 = HGRectMake4i(0xFFFFFFFE, 0xFFFFFFFE, 2u, 2u);
  return HGRectGrow(v8, v10, v11);
}

void HRenderToEquirect::getInputPixelTransform(void *a1)
{
  if (__cxa_guard_acquire(&_MergedGlobals_31))
  {
    qword_280C5E808 = 0x3FF0000000000000;
    qword_280C5E7E0 = 0x3FF0000000000000;
    qword_280C5E7B8 = 0x3FF0000000000000;
    qword_280C5E790 = 0x3FF0000000000000;
    xmmword_280C5E798 = 0u;
    unk_280C5E7A8 = 0u;
    unk_280C5E7C0 = 0u;
    unk_280C5E7D0 = 0u;
    xmmword_280C5E7E8 = 0u;
    unk_280C5E7F8 = 0u;
    __cxa_atexit(OZChannelBase::setRangeName, &qword_280C5E790, &dword_25F8F0000);
    __cxa_guard_release(&_MergedGlobals_31);
  }

  *a1 = &qword_280C5E790;
}

uint64_t FxBitmapRepHGBitmap::FxBitmapRepHGBitmap(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = &unk_287259938;
  *(a1 + 8) = v3;
  (*(*v3 + 16))(v3);
  v4 = *(*(a1 + 8) + 16);
  if (v4 <= 0x1D && ((0x3BC800ABu >> v4) & 1) != 0)
  {
    *(a1 + 16) = dword_26084A698[v4];
  }

  return a1;
}

void FxBitmapRepHGBitmap::~FxBitmapRepHGBitmap(FxBitmapRepHGBitmap *this)
{
  FxBitmapRepHGBitmap::~FxBitmapRepHGBitmap(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287259938;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }
}

void HSimpleBorder::~HSimpleBorder(HGNode *this)
{
  *this = &unk_2872599A8;
  HgcSimpleBorder::~HgcSimpleBorder(this);
}

{
  *this = &unk_2872599A8;
  HgcSimpleBorder::~HgcSimpleBorder(this);

  HGObject::operator delete(v1);
}

uint64_t HSimpleBorder::GetROI(HSimpleBorder *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

HGNode *fxSimpleBorder@<X0>(float64x2_t *a1@<X1>, double *a2@<X3>, int a3@<W4>, HGNode **a4@<X8>, unsigned int a5@<S0>, unsigned int a6@<S1>)
{
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  if (!PCMatrix44Tmpl<double>::planarInverseZ(&v36, a2, 0.0))
  {
    v19 = HGObject::operator new(0x1A0uLL);
    result = HGNode::HGNode(v19);
    goto LABEL_11;
  }

  v10 = a1[1];
  v34 = *a1;
  v35 = v10;
  if (a3 == 2)
  {
    v21 = vcvtq_f64_f32(__PAIR64__(a6, a5));
    v34.f64[0] = v34.f64[0] - v21.f64[0];
    v34.f64[1] = v34.f64[1] - v21.f64[1];
    v18 = vaddq_f64(vaddq_f64(v21, v21), v35);
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v11 = vcvtq_f64_f32(__PAIR64__(a6, a5));
    __asm { FMOV            V1.2D, #-0.5 }

    v17 = vaddq_f64(v34, vmulq_f64(v11, _Q1));
    v18 = vaddq_f64(v35, v11);
    v34 = v17;
LABEL_7:
    v35 = v18;
  }

  v31 = 0.0;
  v32 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v33 = _Q0;
  if (PCMatrix44Tmpl<double>::transformRect<double>(a2, v34.f64, &v31))
  {
    v23 = v31;
    v24 = v32;
    v25 = v31 + *&v33;
    v26 = v32 + *(&v33 + 1);
    HGRectf::Init(&v30, v23, v24, v25, v26);
    v27 = HGObject::operator new(0x240uLL);
    HgcSimpleBorder::HgcSimpleBorder(v27);
  }

  v19 = HGObject::operator new(0x1A0uLL);
  result = HGNode::HGNode(v19);
LABEL_11:
  *a4 = v19;
  return result;
}

float32_t OMUtil::computeAverageOfVec3fSample@<S0>(void *a1@<X0>, float32x2_t *a2@<X8>, double a3@<D2>)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  if (a1[1] == *a1)
  {
    v6 = 0;
    v7 = 0.0;
  }

  else
  {
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
    }

    v5 = (*a1 + 8);
    v6 = 0;
    v7 = 0.0;
    do
    {
      a3 = *(v5 - 1);
      v6 = vadd_f32(v6, *&a3);
      v8 = *v5;
      v5 += 3;
      v7 = v7 + v8;
      --v4;
    }

    while (v4);
  }

  *&a3 = v3;
  *a2 = vdiv_f32(v6, vdup_lane_s32(*&a3, 0));
  result = v7 / v3;
  a2[1].f32[0] = result;
  return result;
}

uint64_t OMUtil::getBoundingBox(float32x2_t **a1, uint64_t a2, int a3, float32x2_t *a4)
{
  v8 = vdup_n_s32(0x3B83126Fu);
  *v49[0].f32 = vadd_f32(*a4, v8);
  v49[0].f32[2] = a4[1].f32[0] + 0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  *v49[0].f32 = vadd_f32(*a4, v8);
  v49[0].f32[2] = a4[1].f32[0] + -0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  *v49[0].f32 = vadd_f32(*a4, 0xBB83126F3B83126FLL);
  v49[0].f32[2] = a4[1].f32[0] + 0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  *v49[0].f32 = vadd_f32(*a4, 0xBB83126F3B83126FLL);
  v49[0].f32[2] = a4[1].f32[0] + -0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  *v49[0].f32 = vadd_f32(*a4, 0x3B83126FBB83126FLL);
  v49[0].f32[2] = a4[1].f32[0] + 0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  *v49[0].f32 = vadd_f32(*a4, 0x3B83126FBB83126FLL);
  v49[0].f32[2] = a4[1].f32[0] + -0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  v9 = vdup_n_s32(0xBB83126F);
  *v49[0].f32 = vadd_f32(*a4, v9);
  v49[0].f32[2] = a4[1].f32[0] + 0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  *v49[0].f32 = vadd_f32(*a4, v9);
  v49[0].f32[2] = a4[1].f32[0] + -0.004;
  std::vector<Vec3f>::push_back[abi:ne200100](a1, v49);
  v47 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v17 = a1 + 1;
  v18 = a1;
  if (a3)
  {
    OMUtil::reduceSample(a1, &v47, 5.62950094e14);
    v17 = v48;
    v18 = &v47;
    OMUtil::computeAverageOfVec3fSample(&v47, v49, v19);
    HIDWORD(v10) = v49[0].i32[1];
    *a4 = *v49[0].f32;
    LODWORD(v10) = v49[0].i32[2];
    a4[1].i32[0] = v49[0].i32[2];
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v21 = PCPrincipalComponentAnalysisCompute<Vec3f,std::vector<Vec3f>>(v18, a4, v10, v11, v12, v13, v14, v15, v16, v49, &v44);
  if (!v21)
  {
    v23 = *(v44 + 2);
    *v22.i32 = sqrtf(vaddv_f32(vmul_f32(*v44, *v44)) + (v23 * v23));
    v24 = vdiv_f32(*v44, vdup_lane_s32(v22, 0));
    *v49[0].f32 = v24;
    v25 = v23 / *v22.i32;
    v22.i32[0] = *(v44 + 5);
    v26 = *(v44 + 12);
    *v24.i32 = sqrtf(vaddv_f32(vmul_f32(v26, v26)) + (*v22.i32 * *v22.i32));
    v49[0].f32[2] = v25;
    *v42[0].f32 = vdiv_f32(v26, vdup_lane_s32(v24, 0));
    v42[0].f32[2] = *v22.i32 / *v24.i32;
    v27 = *(v44 + 8);
    v28 = *(v44 + 24);
    *v22.i32 = sqrtf(vaddv_f32(vmul_f32(v28, v28)) + (v27 * v27));
    *v41[0].f32 = vdiv_f32(v28, vdup_lane_s32(v22, 0));
    v41[0].f32[2] = v27 / *v22.i32;
    OMUtil::setBwMatrixWithDirectionalVector(v49, v42, v41, &v43, v20);
    inv(&v43, v49);
    v29 = *v18;
    v30 = vdup_n_s32(0x49742400u);
    v31 = vdup_n_s32(0xC9742400);
    v32 = -1000000.0;
    if (*v18 == *v17)
    {
      v33 = 1000000.0;
    }

    else
    {
      v33 = 1000000.0;
      do
      {
        *v41[0].f32 = *v29;
        v41[0].i32[2] = v29[1].i32[0];
        v41[0].i32[3] = 1065353216;
        operator*(v49, v41, v42);
        proj(v42, v39, v34);
        v30 = vbsl_s8(vcgt_f32(v30, *v39[0].f32), *v39[0].f32, v30);
        v31 = vbsl_s8(vcgt_f32(*v39[0].f32, v31), *v39[0].f32, v31);
        if (v39[0].f32[2] < v33)
        {
          v33 = v39[0].f32[2];
        }

        if (v39[0].f32[2] > v32)
        {
          v32 = v39[0].f32[2];
        }

        v29 = (v29 + 12);
      }

      while (v29 != *v17);
    }

    v35 = vmul_f32(vsub_f32(v31, v30), 0x3F0000003F000000);
    v36 = (v32 - v33) * 0.5;
    *v40.var0 = vadd_f32(v30, v35);
    v40.var0[2] = v33 + v36;
    Mat4f::MakeHTrans(v41, &v40);
    Mat4f::operator*(v43.var0, v41, v42);
    *v38.var0 = v35;
    v38.var0[2] = v36;
    Mat4f::MakeHScale(v39, &v38);
    Mat4f::operator*(v42[0].f32, v39, v49);
    Mat4f::operator=(a2, v49);
  }

  a1[1] -= 12;
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48[0] = v47;
    operator delete(v47);
  }

  return v21;
}

void sub_25FF1A7A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 208);
  if (v3)
  {
    *(v1 - 200) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 184);
  if (v4)
  {
    *(v1 - 176) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void OMUtil::reduceSample(uint64_t *a1, float **a2, double a3)
{
  a2[1] = *a2;
  std::vector<Vec3f>::reserve(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
  v5 = *a1;
  if ((-1431655765 * ((a1[1] - *a1) >> 2)) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = vdup_lane_s32(*&a3, 0);
    do
    {
      v9 = (v5 + v6);
      v10 = rintf(v9[1].f32[0] * *&a3) / *&a3;
      v25 = vdiv_f32(vrndx_f32(vmul_n_f32(*v9, *&a3)), v8);
      v26 = v10;
      std::vector<Vec3f>::push_back[abi:ne200100](a2, &v25);
      ++v7;
      v5 = *a1;
      v6 += 12;
    }

    while (v7 < (-1431655765 * ((a1[1] - *a1) >> 2)));
  }

  v11 = a2[1];
  v12 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v11 - *a2));
  if (v11 == *a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v15 = *a2;
  v14 = a2[1];
  if (*a2 != v14)
  {
    v16 = v15 + 3;
    if (v15 + 3 != v14)
    {
      v17 = *v15;
      while (1)
      {
        v18 = v17;
        v17 = *v16;
        if (vabds_f32(v18, *v16) < 0.00001 && vabds_f32(*(v16 - 2), v16[1]) < 0.00001 && vabds_f32(*(v16 - 1), v16[2]) < 0.00001)
        {
          break;
        }

        v16 += 3;
        if (v16 == v14)
        {
          return;
        }
      }

      v19 = v16 - 3;
      if (v16 - 3 != v14)
      {
        v20 = v16 + 3;
        if (v20 != v14)
        {
          v21 = *v19;
          do
          {
            v22 = *v20;
            if (vabds_f32(v21, *v20) >= 0.00001 || vabds_f32(v19[1], v20[1]) >= 0.00001 || vabds_f32(v19[2], v20[2]) >= 0.00001)
            {
              v19[3] = v22;
              v19 += 3;
              v19[1] = v20[1];
              v19[2] = v20[2];
              v21 = v22;
            }

            v20 += 3;
          }

          while (v20 != v14);
        }

        v23 = v19 + 3;
        if (v23 != v14)
        {
          a2[1] = v23;
        }
      }
    }
  }
}

float OMUtil::setBwMatrixWithDirectionalVector(OMUtil *this, const Vec3f *a2, const Vec3f *a3, const Vec3f *a4, Mat4f *a5)
{
  Mat4f::MakeDiag(a4, 1.0);
  v9 = *(this + 2);
  *a4->var0 = *this;
  a4->var0[2] = v9;
  a4[1].var0[0] = 0.0;
  v10 = a2->var0[2];
  *&a4[1].var0[1] = *a2->var0;
  a4[2].var0[0] = v10;
  a4[2].var0[1] = 0.0;
  v11 = a3->var0[2];
  *&a4[2].var0[2] = *a3->var0;
  a4[3].var0[1] = v11;
  a4[3].var0[2] = 0.0;
  trans(a4, v13);
  return Mat4f::operator=(a4, v13);
}

void *std::vector<Vec3f>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Vec3f>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25FF1ABB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OMUtil::findIntersectionOfLineSegment(float *a1, float *a2, float *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2] - *a1;
  v6 = a2[1];
  v7 = a2[3] - v6;
  v8 = a1[3] - v4;
  v9 = a2[2] - *a2;
  v10 = 0;
  if (vabds_f32(v5 * v7, v8 * v9) >= 0.000001)
  {
    v11 = (v5 * v7) - (v8 * v9);
    v12 = v4 - v6;
    v13 = v3 - *a2;
    v14 = ((v12 * v9) - (v7 * v13)) / v11;
    if (v14 >= -0.0000001 && v14 <= 1.0)
    {
      v15 = ((v5 * v12) - (v8 * v13)) / v11;
      if (v15 <= 1.0 && v15 >= -0.0000001)
      {
        *a3 = v3 + (v5 * v14);
        a3[1] = a1[1] + (v14 * (a1[3] - a1[1]));
        return 1;
      }
    }
  }

  return v10;
}

BOOL OMUtil::findIntersectionOfLineSegment(float *a1, float *a2)
{
  v2 = a1[1];
  v3 = a1[2] - *a1;
  v4 = a2[1];
  v5 = a2[3] - v4;
  v6 = a1[3] - v2;
  v7 = a2[2] - *a2;
  if (vabds_f32(v3 * v5, v6 * v7) >= 0.000001)
  {
    v9 = (v3 * v5) - (v6 * v7);
    v10 = v2 - v4;
    v11 = *a1 - *a2;
    v12 = ((v10 * v7) - (v5 * v11)) / v9;
    v13 = ((v3 * v10) - (v6 * v11)) / v9;
    v14 = fmaxf(v12, v13);
    v15 = fminf(v12, v13);
    return v14 <= 1.0 && v15 >= -0.0000001;
  }

  else
  {
    return 0;
  }
}

BOOL OMUtil::findIntersectionOfLineSegmentExclusive(float *a1, float *a2)
{
  v2 = a1[1];
  v3 = a1[2] - *a1;
  v4 = a2[1];
  v5 = a2[3] - v4;
  v6 = a1[3] - v2;
  v7 = a2[2] - *a2;
  if (vabds_f32(v3 * v5, v6 * v7) >= 0.000001)
  {
    v9 = (v3 * v5) - (v6 * v7);
    v10 = v2 - v4;
    v11 = *a1 - *a2;
    v12 = ((v10 * v7) - (v5 * v11)) / v9;
    v13 = ((v3 * v10) - (v6 * v11)) / v9;
    v14 = fmaxf(v12, v13);
    v15 = fminf(v12, v13);
    return v14 <= 0.9999 && v15 >= 0.0001;
  }

  else
  {
    return 0;
  }
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void OMUtilErf::errorFunction(OMUtilErf *this, float a2, float a3, float a4)
{
  if (a2 >= 1.0)
  {
    if (a2 >= 4.0)
    {
      erff(((a3 + -0.5) - a4) * a2);
    }

    else
    {
      erff(((a3 + -0.5) - a4) * 4.0);
    }
  }

  else
  {
    powf(a3, a2 + 1.0);
    powf(1.0 - a3, a2 + 1.0);
  }
}

void OMUtilErf::setSigma(OMUtilErf *this, float a2, float a3, int a4)
{
  *(this + 1) = *this;
  if (a4 >= 1)
  {
    v18 = v9;
    v19 = v8;
    v20 = v7;
    v21 = v6;
    v22 = v4;
    v23 = v5;
    v14 = 0;
    v15 = (a4 - 1);
    do
    {
      OMUtilErf::errorFunction(this, a2, v14 / v15, a3);
      v17 = v16;
      std::vector<float>::push_back[abi:ne200100](this, &v17);
      ++v14;
    }

    while (a4 != v14);
  }
}

uint64_t PCPrincipalComponentAnalysisCompute<Vec3f,std::vector<Vec3f>>(float32x2_t **a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int32x4_t a9, uint64_t a10, void *a11)
{
  v38 = *MEMORY[0x277D85DE8];
  __lda = 3;
  __n = 3;
  __lwork = -1;
  __work = 0.0;
  v28 = -1;
  __iwork = 0;
  __info = 0;
  v11 = 0uLL;
  *__a = 0u;
  v36 = 0u;
  v37 = 0.0;
  a11[1] = *a11;
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v14 = *a2;
    v15 = a2[1].f32[0];
    v16 = 0.0;
    v17 = 0uLL;
    do
    {
      *&v18 = v12[1].f32[0] - v15;
      v19 = *v12;
      v12 = (v12 + 12);
      *a9.i8 = vsub_f32(v19, v14);
      v20 = vdupq_lane_s32(__PAIR64__(a9.u32[1], v18), 0);
      v20.i32[0] = a9.i32[1];
      v21 = vextq_s8(vzip1q_s32(a9, a9), a9, 8uLL);
      v22 = vmul_n_f32(*a9.i8, *a9.i32);
      v23 = vmulq_f32(v21, v20);
      *v24.f32 = v22;
      v24.i64[1] = __PAIR64__(v22.u32[1], vextq_s8(v23, v23, 8uLL).u32[0]);
      v11 = vaddq_f32(v24, v11);
      v17 = vaddq_f32(v23, v17);
      *__a = v11;
      v36 = v17;
      v16 = (*&v18 * *&v18) + v16;
      v37 = v16;
    }

    while (v12 != v13);
  }

  v25 = ssyevd_("Vectors", "Upper", &__n, __a, &__lda, __w, &__work, &__lwork, &__iwork, &v28, &__info);
  if (!(v25 | __info))
  {
    __lwork = __work;
    operator new[]();
  }

  return __info | v25;
}

void std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::CVec3LessThan &,Vec3f *,false>(float *a1, float *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  i = a1;
  v153 = a2;
  while (1)
  {
    a1 = i;
    v12 = a2 - i;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - i);
    v14 = v13 - 2;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          return;
        case 4:

          return;
        case 5:

          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        {
          v80 = *(a1 + 2);
          v81 = *a1;
          *a1 = *(a2 - 3);
          a1[1] = *(a2 - 2);
          a1[2] = *(a2 - 1);
          *(a2 - 3) = v81;
          *(a2 - 1) = v80;
        }

        return;
      }
    }

    if (v12 <= 287)
    {
      break;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v99 = v14 >> 1;
        v100 = v14 >> 1;
        do
        {
          v101 = v100;
          if (v99 >= v100)
          {
            v102 = (2 * v100) | 1;
            v103 = &a1[3 * v102];
            {
              v103 += 3;
              v102 = 2 * v101 + 2;
            }

            v104 = &a1[3 * v101];
            {
              v105 = *v104;
              v106 = v104[1];
              v107 = v104[2];
              *v104 = *v103;
              v104[1] = v103[1];
              v104[2] = v103[2];
              while (v99 >= v102)
              {
                v108 = v103;
                v109 = 2 * v102;
                v102 = (2 * v102) | 1;
                v103 = &a1[3 * v102];
                v110 = v109 + 2;
                {
                  v103 += 3;
                  v102 = v110;
                }

                v111 = *v103;
                a2 = v153;
                if (vabds_f32(*v103, v105) >= 0.00001)
                {
                  if (v111 < v105)
                  {
                    goto LABEL_232;
                  }
                }

                else
                {
                  v112 = v103[1];
                  if (vabds_f32(v112, v106) >= 0.00001)
                  {
                    if (v112 < v106)
                    {
                      goto LABEL_232;
                    }
                  }

                  else
                  {
                    v113 = v103[2];
                    if (vabds_f32(v113, v107) >= 0.00001 && v113 < v107)
                    {
LABEL_232:
                      v103 = v108;
                      break;
                    }
                  }
                }

                *v108 = v111;
                v108[1] = v103[1];
                v108[2] = v103[2];
              }

              *v103 = v105;
              v103[1] = v106;
              v103[2] = v107;
            }
          }

          v100 = v101 - 1;
        }

        while (v101);
        v115 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v116 = a2;
          v117 = 0;
          v119 = *a1;
          v118 = *(a1 + 1);
          v120 = *(a1 + 2);
          v121 = a1;
          do
          {
            v122 = &v121[3 * v117];
            v123 = v122 + 3;
            v124 = (2 * v117) | 1;
            v125 = 2 * v117 + 2;
            if (v125 < v115)
            {
              v126 = v122 + 6;
              {
                v123 = v126;
                v124 = v125;
              }
            }

            *v121 = *v123;
            v121[1] = v123[1];
            v121[2] = v123[2];
            v121 = v123;
            v117 = v124;
          }

          while (v124 <= ((v115 - 2) >> 1));
          if (v123 == v116 - 3)
          {
            *v123 = v119;
            *(v123 + 1) = v118;
            *(v123 + 2) = v120;
            goto LABEL_260;
          }

          *v123 = *(v116 - 3);
          v123[1] = *(v116 - 2);
          v123[2] = *(v116 - 1);
          *(v116 - 3) = v119;
          *(v116 - 2) = v118;
          *(v116 - 1) = v120;
          v127 = v123 - a1 + 12;
          if (v127 >= 13)
          {
            v128 = -2 - 0x5555555555555555 * (v127 >> 2);
            v129 = v128 >> 1;
            v130 = &a1[3 * (v128 >> 1)];
            {
              v131 = *v123;
              v132 = v123[1];
              v133 = v123[2];
              *v123 = *v130;
              v123[1] = v130[1];
              v123[2] = v130[2];
              if (v128 < 2)
              {
                goto LABEL_259;
              }

              while (1)
              {
                v134 = v130;
                v135 = v129 - 1;
                v129 = (v129 - 1) >> 1;
                v130 = &a1[3 * v129];
                v136 = *v130;
                if (vabds_f32(*v130, v131) >= 0.00001)
                {
                  if (v136 >= v131)
                  {
                    goto LABEL_258;
                  }

                  v137 = v130[1];
                }

                else
                {
                  v137 = v130[1];
                  if (vabds_f32(v137, v132) >= 0.00001)
                  {
                    if (v137 >= v132)
                    {
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    v138 = v130[2];
                    if (vabds_f32(v138, v133) < 0.00001 || v138 >= v133)
                    {
LABEL_258:
                      v130 = v134;
LABEL_259:
                      *v130 = v131;
                      v130[1] = v132;
                      v130[2] = v133;
                      break;
                    }
                  }
                }

                *v134 = v136;
                v134[1] = v137;
                v134[2] = v130[2];
                if (v135 <= 1)
                {
                  goto LABEL_259;
                }
              }
            }
          }

LABEL_260:
          a2 = v116 - 3;
        }

        while (v115-- > 2);
      }

      return;
    }

    v15 = v13 >> 1;
    v16 = &a1[3 * (v13 >> 1)];
    if (v12 < 0x601)
    {
    }

    else
    {
      v17 = 3 * v15;
      v18 = &a1[3 * v15 - 3];
      v19 = &a1[v17 + 3];
      a2 = v153;
      v20 = *(a1 + 2);
      a1[2] = v16[2];
      v21 = *a1;
      *a1 = *v16;
      *v16 = v21;
      *(v16 + 2) = v20;
    }

    --a3;
    {
      v51 = *a1;
      v52 = a1[1];
      v53 = a1[2];
      v54 = *v8;
      if (vabds_f32(*a1, *v8) >= 0.00001)
      {
        if (v51 < v54)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v55 = *(a2 - 2);
        if (vabds_f32(v52, v55) >= 0.00001)
        {
          if (v52 < v55)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v56 = *(a2 - 1);
          if (vabds_f32(v53, v56) >= 0.00001 && v53 < v56)
          {
LABEL_98:
            for (i = a1 + 3; ; i += 3)
            {
              if (vabds_f32(v51, *i) >= 0.00001)
              {
                if (v51 < *i)
                {
                  goto LABEL_126;
                }
              }

              else
              {
                v57 = i[1];
                if (vabds_f32(v52, v57) >= 0.00001)
                {
                  if (v52 < v57)
                  {
                    goto LABEL_126;
                  }
                }

                else
                {
                  v58 = i[2];
                  if (vabds_f32(v53, v58) >= 0.00001 && v53 < v58)
                  {
                    goto LABEL_126;
                  }
                }
              }
            }
          }
        }
      }

      for (i = a1 + 3; i < a2; i += 3)
      {
        if (vabds_f32(v51, *i) >= 0.00001)
        {
          if (v51 < *i)
          {
            break;
          }
        }

        else
        {
          v60 = i[1];
          if (vabds_f32(v52, v60) >= 0.00001)
          {
            if (v52 < v60)
            {
              break;
            }
          }

          else
          {
            v61 = i[2];
            if (vabds_f32(v53, v61) >= 0.00001 && v53 < v61)
            {
              break;
            }
          }
        }
      }

LABEL_126:
      j = a2;
      if (i < a2)
      {
        for (j = v8; ; j -= 3)
        {
          if (vabds_f32(v51, v54) >= 0.00001)
          {
            if (v51 >= v54)
            {
              break;
            }
          }

          else
          {
            v64 = j[1];
            if (vabds_f32(v52, v64) >= 0.00001)
            {
              if (v52 >= v64)
              {
                break;
              }
            }

            else
            {
              v65 = j[2];
              if (vabds_f32(v53, v65) < 0.00001 || v53 >= v65)
              {
                break;
              }
            }
          }

          v67 = *(j - 3);
          v54 = v67;
        }
      }

      if (i < j)
      {
        v68 = *i;
        v69 = *j;
        do
        {
          *i = v69;
          v70 = *(i + 1);
          i[1] = j[1];
          i[2] = j[2];
          *j = v68;
          *(j + 1) = v70;
          do
          {
            while (1)
            {
              while (1)
              {
                v71 = i[3];
                i += 3;
                v68 = v71;
                if (vabds_f32(v51, v71) < 0.00001)
                {
                  break;
                }

                if (v51 < v68)
                {
                  goto LABEL_157;
                }
              }

              v72 = i[1];
              if (vabds_f32(v52, v72) < 0.00001)
              {
                break;
              }

              if (v52 < v72)
              {
                goto LABEL_157;
              }
            }

            v73 = i[2];
          }

          while (vabds_f32(v53, v73) < 0.00001 || v53 >= v73);
          do
          {
            while (1)
            {
LABEL_157:
              while (1)
              {
                v75 = *(j - 3);
                j -= 3;
                v69 = v75;
                if (vabds_f32(v51, v75) < 0.00001)
                {
                  break;
                }

                if (v51 >= v69)
                {
                  goto LABEL_163;
                }
              }

              v76 = j[1];
              if (vabds_f32(v52, v76) < 0.00001)
              {
                break;
              }

              if (v52 >= v76)
              {
                goto LABEL_163;
              }
            }

            v77 = j[2];
          }

          while (vabds_f32(v53, v77) >= 0.00001 && v53 < v77);
LABEL_163:
          ;
        }

        while (i < j);
      }

      if (i - 3 != a1)
      {
        *a1 = *(i - 3);
        a1[1] = *(i - 2);
        a1[2] = *(i - 1);
      }

      a4 = 0;
      *(i - 3) = v51;
      *(i - 2) = v52;
      *(i - 1) = v53;
      continue;
    }

    v22 = 0;
    v23 = *a1;
    v24 = a1[1];
    v25 = a1[2];
    while (1)
    {
      v26 = a1[v22 + 3];
      if (vabds_f32(v26, v23) >= 0.00001)
      {
        if (v26 >= v23)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v27 = a1[v22 + 4];
      if (vabds_f32(v27, v24) < 0.00001)
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_28;
      }

LABEL_27:
      v22 += 3;
    }

    v28 = a1[v22 + 5];
    if (vabds_f32(v28, v25) >= 0.00001 && v28 < v25)
    {
      goto LABEL_27;
    }

LABEL_28:
    v30 = &a1[v22 + 3];
    k = v8;
    if (v22 * 4)
    {
      while (1)
      {
        if (vabds_f32(*k, v23) >= 0.00001)
        {
          if (*k < v23)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v32 = k[1];
          if (vabds_f32(v32, v24) >= 0.00001)
          {
            if (v32 < v24)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v33 = k[2];
            if (vabds_f32(v33, v25) >= 0.00001 && v33 < v25)
            {
              goto LABEL_59;
            }
          }
        }

        k -= 3;
      }
    }

    k = a2;
    if (v30 < a2)
    {
      for (k = v8; ; k -= 3)
      {
        if (vabds_f32(*k, v23) >= 0.00001)
        {
          if (*k < v23 || v30 >= k)
          {
            break;
          }
        }

        else
        {
          v35 = k[1];
          if (vabds_f32(v35, v24) >= 0.00001)
          {
            if (v30 >= k || v35 < v24)
            {
              break;
            }
          }

          else
          {
            v36 = k[2];
            v37 = vabds_f32(v36, v25) < 0.00001;
            if (v36 >= v25)
            {
              v37 = 1;
            }

            if (v30 >= k || !v37)
            {
              break;
            }
          }
        }
      }
    }

LABEL_59:
    if (v30 >= k)
    {
      i = v30;
    }

    else
    {
      v39 = *k;
      i = v30;
      v40 = k;
      do
      {
        *i = v39;
        v41 = *(i + 1);
        i[1] = v40[1];
        i[2] = v40[2];
        *v40 = v26;
        *(v40 + 1) = v41;
        do
        {
          while (1)
          {
            while (1)
            {
              v42 = i[3];
              i += 3;
              v26 = v42;
              if (vabds_f32(v42, v23) < 0.00001)
              {
                break;
              }

              if (v26 >= v23)
              {
                goto LABEL_76;
              }
            }

            v43 = i[1];
            if (vabds_f32(v43, v24) < 0.00001)
            {
              break;
            }

            if (v43 >= v24)
            {
              goto LABEL_76;
            }
          }

          v44 = i[2];
        }

        while (vabds_f32(v44, v25) >= 0.00001 && v44 < v25);
        do
        {
          while (1)
          {
LABEL_76:
            while (1)
            {
              v46 = *(v40 - 3);
              v40 -= 3;
              v39 = v46;
              if (vabds_f32(v46, v23) < 0.00001)
              {
                break;
              }

              if (v39 < v23)
              {
                goto LABEL_83;
              }
            }

            v47 = v40[1];
            if (vabds_f32(v47, v24) < 0.00001)
            {
              break;
            }

            if (v47 < v24)
            {
              goto LABEL_83;
            }
          }

          v48 = v40[2];
        }

        while (vabds_f32(v48, v25) < 0.00001 || v48 >= v25);
LABEL_83:
        ;
      }

      while (i < v40);
    }

    if (i - 3 != a1)
    {
      *a1 = *(i - 3);
      a1[1] = *(i - 2);
      a1[2] = *(i - 1);
    }

    *(i - 3) = v23;
    *(i - 2) = v24;
    *(i - 1) = v25;
    if (v30 < k)
    {
LABEL_91:
      a4 = 0;
    }

    else
    {
      {
        a2 = i - 3;
        if (v50)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v50)
      {
        goto LABEL_91;
      }
    }
  }

  v82 = a1 + 3;
  v84 = a1 == a2 || v82 == a2;
  if ((a4 & 1) == 0)
  {
    if (v84)
    {
      return;
    }

    for (m = a1 + 1; ; m += 3)
    {
      v142 = v82;
      {
        break;
      }

LABEL_279:
      v82 = v142 + 3;
      a1 = v142;
      if (v142 + 3 == a2)
      {
        return;
      }
    }

    v143 = *v142;
    v144 = a1[4];
    v145 = a1[5];
    v146 = m;
    v147 = *a1;
    while (1)
    {
      v148 = *v146;
      v149 = *(v146 + 1);
      v146[2] = v147;
      v146[3] = v148;
      *(v146 + 4) = v149;
      v147 = *(v146 - 4);
      if (vabds_f32(v143, v147) >= 0.00001)
      {
        if (v143 >= v147)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v150 = *(v146 - 3);
        if (vabds_f32(v144, v150) >= 0.00001)
        {
          if (v144 >= v150)
          {
            goto LABEL_278;
          }
        }

        else
        {
          v151 = *(v146 - 2);
          if (vabds_f32(v145, v151) < 0.00001 || v145 >= v151)
          {
LABEL_278:
            *(v146 - 1) = v143;
            *v146 = v144;
            v146[1] = v145;
            goto LABEL_279;
          }
        }
      }

      v146 -= 3;
    }
  }

  if (v84)
  {
    return;
  }

  v85 = 0;
  v86 = a1;
  while (2)
  {
    v87 = v82;
    {
      goto LABEL_206;
    }

    v88 = v86[3];
    v89 = v86[4];
    v90 = v86[5];
    v91 = *(v86 + 1);
    v86[3] = *v86;
    *(v87 + 1) = v91;
    v87[2] = v86[2];
    v92 = a1;
    if (v86 == a1)
    {
      goto LABEL_205;
    }

    v93 = v85;
    while (2)
    {
      v94 = *(a1 + v93 - 12);
      if (vabds_f32(v88, v94) >= 0.00001)
      {
        if (v88 >= v94)
        {
          goto LABEL_204;
        }

        v95 = *(a1 + v93 - 8);
        goto LABEL_202;
      }

      v95 = *(a1 + v93 - 8);
      if (vabds_f32(v89, v95) < 0.00001)
      {
        v92 = (a1 + v93);
        v96 = *(a1 + v93 - 4);
        if (vabds_f32(v90, v96) < 0.00001 || v90 >= v96)
        {
          goto LABEL_205;
        }

LABEL_202:
        v86 -= 3;
        v98 = (a1 + v93);
        *v98 = v94;
        v98[1] = v95;
        v98[2] = *(a1 + v93 - 4);
        v93 -= 12;
        if (!v93)
        {
          v92 = a1;
          goto LABEL_205;
        }

        continue;
      }

      break;
    }

    if (v89 < v95)
    {
      goto LABEL_202;
    }

LABEL_204:
    v92 = v86;
LABEL_205:
    *v92 = v88;
    v92[1] = v89;
    v92[2] = v90;
LABEL_206:
    v82 = v87 + 3;
    v85 += 12;
    v86 = v87;
    if (v87 + 3 != a2)
    {
      continue;
    }

    break;
  }
}

BOOL anonymous namespace::CVec3LessThan::operator()(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (vabds_f32(*a1, *a2) >= 0.00001)
  {
    return v2 < v3;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (vabds_f32(v2, v3) >= 0.00001)
  {
    return v2 < v3;
  }

  v4 = a1[2];
  v5 = a2[2];
  return vabds_f32(v4, v5) >= 0.00001 && v4 < v5;
}

BOOL std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::CVec3LessThan &,Vec3f *,0>(float *a1, float *a2, float *a3)
{
  if (v6)
  {
    v9 = *a1;
    v8 = *(a1 + 1);
    v10 = *(a1 + 2);
    if (result)
    {
      *a1 = *a3;
      a1[1] = a3[1];
      a1[2] = a3[2];
    }

    else
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      *a2 = v9;
      *(a2 + 1) = v8;
      *(a2 + 2) = v10;
      if (!result)
      {
        return result;
      }

      *a2 = *a3;
      a2[1] = a3[1];
      a2[2] = a3[2];
    }

    *a3 = v9;
    *(a3 + 1) = v8;
    *(a3 + 2) = v10;
  }

  else if (result)
  {
    v11 = *(a2 + 2);
    v12 = *a2;
    *a2 = *a3;
    a2[1] = a3[1];
    a2[2] = a3[2];
    *a3 = v12;
    *(a3 + 2) = v11;
    if (result)
    {
      v13 = *(a1 + 2);
      v14 = *a1;
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      *a2 = v14;
      *(a2 + 2) = v13;
    }
  }

  return result;
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::CVec3LessThan &,Vec3f *,0>(float *a1, float *a2, float *a3, float *a4)
{
  {
    v9 = *(a3 + 2);
    v10 = *a3;
    *a3 = *a4;
    a3[1] = a4[1];
    a3[2] = a4[2];
    *a4 = v10;
    *(a4 + 2) = v9;
    {
      v11 = *(a2 + 2);
      v12 = *a2;
      *a2 = *a3;
      a2[1] = a3[1];
      a2[2] = a3[2];
      *a3 = v12;
      *(a3 + 2) = v11;
      {
        result = a1[2];
        v13 = *a1;
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        *a2 = v13;
        a2[2] = result;
      }
    }
  }

  return result;
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::CVec3LessThan &,Vec3f *,0>(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  {
    v11 = *(a4 + 2);
    v12 = *a4;
    *a4 = *a5;
    a4[1] = a5[1];
    a4[2] = a5[2];
    *a5 = v12;
    *(a5 + 2) = v11;
    {
      v13 = *(a3 + 2);
      v14 = *a3;
      *a3 = *a4;
      a3[1] = a4[1];
      a3[2] = a4[2];
      *a4 = v14;
      *(a4 + 2) = v13;
      {
        v15 = *(a2 + 2);
        v16 = *a2;
        *a2 = *a3;
        a2[1] = a3[1];
        a2[2] = a3[2];
        *a3 = v16;
        *(a3 + 2) = v15;
        {
          result = a1[2];
          v17 = *a1;
          *a1 = *a2;
          a1[1] = a2[1];
          a1[2] = a2[2];
          *a2 = v17;
          a2[2] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::CVec3LessThan &,Vec3f *>(uint64_t *a1, float *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      {
        v5 = *(a1 + 2);
        v6 = *a1;
        *a1 = *(a2 - 3);
        *(a1 + 1) = *(a2 - 2);
        *(a1 + 2) = *(a2 - 1);
        *(a2 - 3) = v6;
        *(a2 - 1) = v5;
      }

      return 1;
    }
  }

  v7 = (a1 + 3);
  v8 = a1 + 9;
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (2)
  {
    {
      goto LABEL_29;
    }

    v11 = *v8;
    v12 = v8[1];
    v13 = v8[2];
    *v8 = *v7;
    v8[1] = v7[1];
    v8[2] = v7[2];
    v14 = v9;
    while (1)
    {
      v15 = a1 + v14;
      v16 = *(a1 + v14 + 12);
      if (vabds_f32(v11, v16) >= 0.00001)
      {
        if (v11 >= v16)
        {
          goto LABEL_27;
        }

        v17 = *(a1 + v14 + 16);
        goto LABEL_25;
      }

      v17 = *(v15 + 16);
      if (vabds_f32(v12, v17) < 0.00001)
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_27;
      }

LABEL_25:
      *(v15 + 24) = v16;
      v20 = a1 + v14;
      v21 = *(a1 + v14 + 20);
      *(v20 + 28) = v17;
      *(v20 + 32) = v21;
      v14 -= 12;
      if (v14 == -24)
      {
        v22 = a1;
        goto LABEL_28;
      }
    }

    v18 = *(a1 + v14 + 20);
    if (vabds_f32(v13, v18) >= 0.00001 && v13 < v18)
    {
      goto LABEL_25;
    }

LABEL_27:
    v22 = (a1 + v14 + 24);
LABEL_28:
    *v22 = v11;
    v22[1] = v12;
    v22[2] = v13;
    if (++v10 != 8)
    {
LABEL_29:
      v7 = v8;
      v9 += 12;
      v8 += 3;
      if (v8 == a2)
      {
        return 1;
      }

      continue;
    }

    return v8 + 3 == a2;
  }
}

BOOL OMRect::pickInside(OMRect *this, const Vec2f *a2)
{
  (*(*this + 16))(&v10);
  (*(*this + 24))(&v9, this);
  if (a2->var0[0] < *&v10 || a2->var0[0] > *&v9)
  {
    return 0;
  }

  else
  {
    v6 = a2->var0[1];
    return v6 <= *(&v9 + 1) && v6 >= *(&v10 + 1);
  }
}

float32x2_t OMRect::move(OMRect *this, int a2, const Vec2f *a3, float32x2_t result)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    if (a2 != v4)
    {
      result = vceq_f32(*(*(this + 3) + 8 * v4), *(*(this + 3) + 8 * a2));
      if (result.i8[0])
      {
        v6 = v4;
      }

      if (result.i8[4])
      {
        v5 = v4;
      }
    }

    ++v4;
  }

  while (v4 != 4);
  result.i32[0] = LODWORD(a3->var0[0]);
  v7 = *(this + 3);
  v8 = (v7 + 8 * v5);
  if (a3->var0[0] != v8->f32[0])
  {
    v9 = (v7 + 8 * v6);
    if (a3->var0[1] != v9->f32[1])
    {
      v10 = *(v7 + 8 * a2);
      result.i32[1] = LODWORD(a3->var0[1]);
      v11 = vsub_f32(result, v10);
      *(v7 + 8 * a2) = vadd_f32(v10, v11);
      *v9 = vadd_f32(v11.u32[0], *v9);
      v11.i32[0] = 0;
      result = vadd_f32(v11, *v8);
      *v8 = result;
    }
  }

  return result;
}

uint64_t OMRect::getBottom@<X0>(uint64_t this@<X0>, float32x2_t *a2@<X8>)
{
  v2 = 0;
  v3 = vdup_n_s32(0x47C35000u);
  do
  {
    v3 = vbsl_s8(vcgt_f32(v3, *(*(this + 24) + v2)), *(*(this + 24) + v2), v3);
    v2 += 8;
  }

  while (v2 != 32);
  *a2 = v3;
  return this;
}

uint64_t OMRect::getTop@<X0>(uint64_t this@<X0>, float32x2_t *a2@<X8>)
{
  v2 = 0;
  v3 = vdup_n_s32(0xC7C35000);
  do
  {
    v3 = vbsl_s8(vcgt_f32(*(*(this + 24) + v2), v3), *(*(this + 24) + v2), v3);
    v2 += 8;
  }

  while (v2 != 32);
  *a2 = v3;
  return this;
}

void OMRect::~OMRect(OMRect *this)
{
  OMSamplesElem::~OMSamplesElem(this);

  JUMPOUT(0x2666E9F00);
}

void OMSamplesElem::~OMSamplesElem(OMSamplesElem *this)
{
  *this = &unk_287259C78;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

void sub_25FF1C96C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25FF1C94CLL);
}

float cross@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a3[2];
  v9 = a3[3];
  v10 = (v6 * v9) - (v8 * v7);
  v11 = (v8 * v5) - (v4 * v9);
  v12 = (v4 * v7) - (v6 * v5);
  v14 = *a1;
  v13 = a1[1];
  v16 = *a2;
  v15 = a2[1];
  v18 = *a3;
  v17 = a3[1];
  v19 = (v17 * v12) + ((v13 * v10) + (v15 * v11));
  v20 = -(((*a1 * v10) + (v11 * *a2)) + (v12 * *a3));
  *a4 = v19;
  a4[1] = v20;
  result = -(((((v15 * v8) - (v17 * v6)) * v14) + (((v17 * v4) - (v13 * v8)) * v16)) + (((v13 * v6) - (v15 * v4)) * v18));
  a4[2] = ((v14 * ((v15 * v9) - (v17 * v7))) + (((v17 * v5) - (v13 * v9)) * v16)) + (((v13 * v7) - (v15 * v5)) * v18);
  a4[3] = result;
  return result;
}

float proj@<S0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>, double a3@<D1>)
{
  v3 = a1[1].f32[0];
  LODWORD(a3) = a1[1].i32[1];
  *a2 = vdiv_f32(*a1, vdup_lane_s32(*&a3, 0));
  result = v3 / *&a3;
  a2[1].f32[0] = v3 / *&a3;
  return result;
}

Mat2f *Mat2f::MakeRot(Mat2f *this, double a2)
{
  v3 = __sincos_stret(a2);
  sinval = v3.__sinval;
  cosval = v3.__cosval;
  *this = cosval;
  *(this + 1) = -sinval;
  *(this + 2) = sinval;
  *(this + 3) = cosval;
  return this;
}

void Mat4f::Mat4f(Mat4f *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
  *(this + 6) = a8;
  *(this + 7) = a9;
  *(this + 2) = a17;
  *(this + 3) = a18;
}

float Mat4f::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 60);
  *(a1 + 60) = result;
  return result;
}

float32x4_t Mat4f::operator*@<Q0>(float *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*a2, a1[4]), vmulq_n_f32(v4, a1[5])), vmulq_n_f32(v5, a1[6])), vmulq_n_f32(v6, a1[7]));
  *a3 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*a2, *a1), vmulq_n_f32(v4, a1[1])), vmulq_n_f32(v5, a1[2])), vmulq_n_f32(v6, a1[3]));
  a3[1] = v7;
  result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v3, a1[8]), vmulq_n_f32(v4, a1[9])), vmulq_n_f32(v5, a1[10])), vmulq_n_f32(v6, a1[11]));
  v9 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v3, a1[12]), vmulq_n_f32(v4, a1[13])), vmulq_n_f32(v5, a1[14])), vmulq_n_f32(v6, a1[15]));
  a3[2] = result;
  a3[3] = v9;
  return result;
}

float32x4_t Mat4f::operator/=(float32x4_t *a1, int32x2_t a2)
{
  v2 = vdupq_lane_s32(a2, 0);
  v3 = vdivq_f32(a1[1], v2);
  *a1 = vdivq_f32(*a1, v2);
  a1[1] = v3;
  v4 = vdivq_f32(a1[2], v2);
  result = vdivq_f32(a1[3], v2);
  a1[2] = v4;
  a1[3] = result;
  return result;
}

float32x4_t operator*@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v3.i32[1] = *(a1 + 16);
  v3.i32[2] = *(a1 + 32);
  v3.i32[3] = *(a1 + 48);
  v4.i32[1] = *(a1 + 20);
  v4.i32[2] = *(a1 + 36);
  v4.i32[3] = *(a1 + 52);
  v5.i32[1] = *(a1 + 24);
  v5.i32[2] = *(a1 + 40);
  v5.i32[3] = *(a1 + 56);
  v6.i32[1] = *(a1 + 28);
  v6.i32[2] = *(a1 + 44);
  v6.i32[3] = *(a1 + 60);
  result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*a2)), vmulq_n_f32(v4, COERCE_FLOAT(*(a2 + 4)))), vmulq_n_f32(v5, COERCE_FLOAT(*(a2 + 8)))), vmulq_n_f32(v6, *(a2 + 12)));
  *a3 = result;
  return result;
}

float trans@<S0>(const Mat4f *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  *a2 = *a1;
  *(a2 + 4) = v3;
  v5 = *(a1 + 9);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = v6;
  *(a2 + 16) = v2;
  *(a2 + 20) = v4;
  *(a2 + 24) = v5;
  *(a2 + 28) = v7;
  v8 = *(a1 + 3);
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 36) = v9;
  result = *(a1 + 10);
  v12 = *(a1 + 11);
  v13 = *(a1 + 14);
  v14 = *(a1 + 15);
  *(a2 + 40) = result;
  *(a2 + 44) = v13;
  *(a2 + 48) = v8;
  *(a2 + 52) = v10;
  *(a2 + 56) = v12;
  *(a2 + 60) = v14;
  return result;
}

float32x4_t adj@<Q0>(const Mat4f *a1@<X0>, float32x4_t *a2@<X8>)
{
  cross(a1 + 4, a1 + 8, a1 + 12, v5.f32);
  *a2 = v5;
  cross(a1, a1 + 8, a1 + 12, v5.f32);
  a2[1] = vnegq_f32(v5);
  cross(a1, a1 + 4, a1 + 12, v5.f32);
  a2[2] = v5;
  cross(a1, a1 + 4, a1 + 8, v5.f32);
  result = vnegq_f32(v5);
  a2[3] = result;
  return result;
}

double inv@<D0>(const Mat4f *a1@<X0>, float32x4_t *a2@<X8>)
{
  v18 = adj(a1, &v20);
  v5 = *(v20.i64 + 4);
  v4 = v20.i32[3];
  v6 = v21;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v17 = v32;
  v18.f32[0] = (((v20.f32[0] * *a1) + (v20.f32[1] * *(a1 + 1))) + (v20.f32[2] * *(a1 + 2))) + (v20.f32[3] * *(a1 + 3));
  a2->i32[0] = v20.i32[0];
  a2->i32[1] = v6;
  a2->i32[2] = v10;
  a2->i32[3] = v14;
  a2[1].i32[0] = v5;
  a2[1].i32[1] = v7;
  a2[1].i32[2] = v11;
  a2[1].i32[3] = v15;
  a2[2].i32[0] = HIDWORD(v5);
  a2[2].i32[1] = v8;
  a2[2].i32[2] = v12;
  a2[2].i32[3] = v16;
  a2[3].i32[0] = v4;
  a2[3].i32[1] = v9;
  a2[3].i32[2] = v13;
  a2[3].i32[3] = v17;

  *&result = Mat4f::operator/=(a2, *v18.f32).u64[0];
  return result;
}

uint64_t Mat4f::MakeDiag(uint64_t this, float a2)
{
  v2 = 0;
  v3 = this;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      if (v2 == i)
      {
        *(this + 16 * v2 + 4 * v2) = a2;
      }

      else
      {
        *(v3 + 4 * i) = 0;
      }
    }

    ++v2;
    v3 += 16;
  }

  while (v2 != 4);
  return this;
}

float Mat4f::MakeHRot(float *a1, float *a2)
{
  v2 = 0;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a1;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      if (v2 == i)
      {
        a1[4 * v2 + v2] = 1.0;
      }

      else
      {
        v7[i] = 0.0;
      }
    }

    ++v2;
    v7 += 4;
  }

  while (v2 != 4);
  v9 = v5 + v5;
  v10 = (v5 + v5) * v6;
  v11 = v3 + v3;
  v12 = (v3 + v3) * v6;
  v13 = v4 + v4;
  v14 = v13 * v6;
  v15 = (v3 + v3) * v5;
  v16 = v13 * v5;
  v17 = v13 * v3;
  v18 = v13 * *a2;
  v19 = v11 * a2[1];
  v20 = v9 * a2[2];
  *a1 = (1.0 - v19) - v20;
  a1[1] = v17 - v10;
  a1[2] = v16 + v12;
  v21 = 1.0 - v18;
  a1[4] = v17 + v10;
  a1[5] = v21 - v20;
  a1[6] = v15 - v14;
  a1[8] = v16 - v12;
  a1[9] = v15 + v14;
  result = v21 - v19;
  a1[10] = v21 - v19;
  return result;
}

float Mat4f::MakeHRot(Mat4f *this, const Vec3f *a2, double a3)
{
  v5 = __sincos_stret(a3 * 0.5);
  sinval = v5.__sinval;
  v9 = vmul_n_f32(*a2->var0, sinval);
  cosval = v5.__cosval;
  v10 = a2->var0[2] * sinval;
  v11 = cosval;
  return Mat4f::MakeHRot(this, &v9);
}

float Mat4f::MakeHScale(Mat4f *this, const Vec3f *a2)
{
  v2 = 0;
  v3 = this;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      if (v2 == i)
      {
        *(this + 4 * v2 + v2) = 1065353216;
      }

      else
      {
        *(v3 + i) = 0;
      }
    }

    ++v2;
    v3 = (v3 + 16);
  }

  while (v2 != 4);
  *this = a2->var0[0];
  *(this + 5) = LODWORD(a2->var0[1]);
  result = a2->var0[2];
  *(this + 10) = result;
  return result;
}

float Mat4f::MakeHTrans(Mat4f *this, const Vec3f *a2)
{
  v2 = 0;
  v3 = this;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      if (v2 == i)
      {
        *(this + 4 * v2 + v2) = 1065353216;
      }

      else
      {
        *(v3 + i) = 0;
      }
    }

    ++v2;
    v3 = (v3 + 16);
  }

  while (v2 != 4);
  *(this + 3) = LODWORD(a2->var0[0]);
  *(this + 7) = LODWORD(a2->var0[1]);
  result = a2->var0[2];
  *(this + 11) = result;
  return result;
}

uint64_t FxApplySimpleToneCurve@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  FxSupport::newHGRefWithInput<HgcSimpleToneCurve>(*a1, &v9);
  v7 = powf(a4, a3);
  (*(*v9 + 96))(v9, 0, 1.0 / v7, 0.0, 0.0, 0.0);
  result = (*(*v9 + 96))(v9, 1, a3, 0.0, 0.0, 0.0);
  *a2 = v9;
  return result;
}

void sub_25FF1D218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FxApplyInverseSimpleToneCurve@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  FxSupport::newHGRefWithInput<HgcInverseSimpleToneCurve>(*a1, &v9);
  v7 = powf(a4, a3);
  (*(*v9 + 96))(v9, 0, 1.0 / (1.0 / v7), 0.0, 0.0, 0.0);
  result = (*(*v9 + 96))(v9, 1, 1.0 / a3, 0.0, 0.0, 0.0);
  *a2 = v9;
  return result;
}

void sub_25FF1D32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FxApplyGain@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, float a3@<S0>)
{
  if (fabsf(a3 + -1.0) >= 0.00001)
  {
    FxSupport::newHGRefWithInput<HGColorMatrix>();
  }

  result = *a1;
  *a2 = result;
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

void sub_25FF1D50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FxSupport::newHGRefWithInput<HgcSimpleToneCurve>@<X0>(uint64_t a1@<X0>, HgcSimpleToneCurve **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HgcSimpleToneCurve::HgcSimpleToneCurve(v4);
  *a2 = v4;
  return (*(*v4 + 120))(v4, 0, a1);
}

uint64_t FxSupport::newHGRefWithInput<HgcInverseSimpleToneCurve>@<X0>(uint64_t a1@<X0>, HgcInverseSimpleToneCurve **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HgcInverseSimpleToneCurve::HgcInverseSimpleToneCurve(v4);
  *a2 = v4;
  return (*(*v4 + 120))(v4, 0, a1);
}

float FxConvertPCNCLCCodeToFxNCLCValue(uint32x2_t *a1)
{
  v1 = vand_s8(vshl_u32(*a1, 0x800000010), 0xFF0000FF0000);
  LODWORD(result) = vorr_s8(vdup_lane_s32(v1, 1), v1).u32[0];
  return result;
}

uint64_t OMKeyer2D::getAlphaLuma(OMKeyer2D *this, float a2)
{
  (*(*this + 32))(this);
  (*(*this + 40))(this);
  (*(*this + 48))(this);
  return (*(*this + 56))(this);
}

void OMKeyer2D::~OMKeyer2D(OMKeyer2D *this)
{
  *this = &unk_287259CB8;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }
}

void OMKeyer2D::tolAdd(float32x2_t *a1, uint64_t *a2, void *a3, int a4, float *a5, float *a6, float *a7)
{
  v240 = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    if (a4)
    {
      goto LABEL_4;
    }

    v9 = a1[9];
    if (*v9 != 0.0)
    {
      goto LABEL_4;
    }

    v152 = v9 + 1;
    v153 = -1;
    do
    {
      if (v153 == 253)
      {
        return;
      }

      v154 = *v152++;
      ++v153;
    }

    while (v154 == 0.0);
    if (v153 <= 0xFD)
    {
LABEL_4:
      v204[0].var0[0] = 0.0;
      std::vector<int>::vector[abi:ne200100](v228, 0x168uLL);
      v196 = a1;
      v225 = 0;
      v226 = 0;
      v227 = 0;
      v11 = *a2;
      v10 = a2[1];
      if ((-1431655765 * ((v10 - *a2) >> 2)) < 1)
      {
        v17 = 1000.0;
        v18 = -1000.0;
        v15 = -1000.0;
        v16 = 1000.0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = -1000.0;
        v16 = 1000.0;
        v17 = 1000.0;
        v18 = -1000.0;
        do
        {
          v19 = *a3;
          if (a4)
          {
            v20 = v19 + v12;
            v21 = *(v19 + v12 + 4);
            v22 = __sincosf_stret(*(v19 + v12) * 6.2832);
            v23.f32[0] = v21 * v22.__cosval;
            v204[0].var0[0] = v21 * v22.__cosval;
            v204[0].var0[1] = v21 * v22.__sinval;
            v24 = *(v20 + 8);
            if (v24 > v18)
            {
              *a6 = v21;
              v18 = v24;
            }

            if (v24 < v17)
            {
              *a5 = v21;
              v17 = v24;
            }
          }

          else
          {
            v25 = (v19 + v12);
            v26 = *(v19 + v12 + 8) * 255.0;
            v27 = v26;
            if (v26 > 255.0)
            {
              v27 = 255;
            }

            if (v26 >= 0.0)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            v200 = v25[1];
            v29 = __sincosf_stret(*v25 * 6.2832);
            v23 = vsub_f32(vmul_n_f32(__PAIR64__(LODWORD(v29.__sinval), LODWORD(v29.__cosval)), v200), vmul_n_f32(v196[7], *(*&v196[9] + 4 * v28)));
            v204[0] = v23;
            v30 = v25[2];
            if (v30 > v18)
            {
              v18 = v25[2];
            }

            if (v30 < v17)
            {
              v17 = v25[2];
            }
          }

          if (v13 >= v227)
          {
            v13 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&v225, v204);
            v31 = v204[0].var0[1];
            v11 = *a2;
            v10 = a2[1];
          }

          else
          {
            *v13 = v23.i32[0];
            v31 = v204[0].var0[1];
            *(v13 + 4) = v204[0].var0[1];
            v13 += 8;
          }

          v226 = v13;
          v32 = sqrtf((v204[0].var0[0] * v204[0].var0[0]) + (v31 * v31));
          v33 = atan2f(v31, v204[0].var0[0]);
          if (v33 < 0.0)
          {
            v33 = v33 + 6.2832;
          }

          *(v228[0] + ((v33 / 6.2832) * 360.0)) = 1;
          if (v32 > v15)
          {
            v15 = v32;
          }

          if (v32 < v16)
          {
            v16 = v32;
          }

          ++v14;
          v12 += 12;
        }

        while (v14 < (-1431655765 * ((v10 - v11) >> 2)));
      }

      v204[0].var0[0] = NAN;
      std::vector<int>::vector[abi:ne200100](v224, 0x168uLL);
      v204[0].var0[0] = NAN;
      std::vector<int>::vector[abi:ne200100](v223, 0x168uLL);
      v35 = 0;
      v36 = 0;
      v37 = v224[0];
      v38 = 10000;
      v39 = v223[0];
      while (1)
      {
        v40 = v228[0];
        v41 = v223[0];
        v42 = 360;
        v43 = v35;
        do
        {
          v44 = v43 - 360;
          if (v43 <= 0x167)
          {
            v44 = v43;
          }

          v45 = v40[v44];
          if ((v37[v35] & 0x80000000) != 0)
          {
            if (!v45)
            {
              goto LABEL_42;
            }

            v37[v35] = v44;
LABEL_41:
            v41[v35] = v44;
            goto LABEL_42;
          }

          if (v45)
          {
            goto LABEL_41;
          }

LABEL_42:
          ++v43;
          --v42;
        }

        while (v42);
        v46 = v39[v35];
        v47 = v37[v35];
        if (v46 <= v47)
        {
          v46 += 360;
        }

        v48 = v46 - v47;
        if (v48 < v38)
        {
          v36 = v35;
          v38 = v48;
        }

        if (++v35 == 360)
        {
          v34.n128_f64[0] = v16;
          v49 = v16 >= 0.1 || v38 <= 90;
          if (v49 && v34.n128_f64[0] >= 0.01)
          {
            v50 = (*(v223[0] + v36) + 1.0) / 360.0;
            v201 = v50;
            v51 = v37[v36] / 360.0;
            v52 = (v51 + v51) * 3.14159265;
            v53 = __sincosf_stret(v52);
            v54 = v15 * v53.__cosval;
            v55 = v15 * v53.__sinval;
            v204[0].var0[0] = v15 * v53.__cosval;
            v204[0].var0[1] = v15 * v53.__sinval;
            v56 = (v201 + v201) * 3.14159265;
            v58 = __sincosf_stret(v56);
            v232.var0[0] = v15 * v58.__cosval;
            v232.var0[1] = v15 * v58.__sinval;
            if (sqrtf(((v54 - v232.var0[0]) * (v54 - v232.var0[0])) + ((v55 - v232.var0[1]) * (v55 - v232.var0[1]))) >= 0.05 && sqrtf(((v54 - (v16 * v53.__cosval)) * (v54 - (v16 * v53.__cosval))) + ((v55 - (v16 * v53.__sinval)) * (v55 - (v16 * v53.__sinval)))) >= 0.05)
            {
              v59 = 0.01;
            }

            else
            {
              v59 = 0.05;
            }

            *&v229 = 1065353216;
            OMUtil::angle2PI(&v229, v204, v57);
            v156 = v155;
            *&v229 = 1065353216;
            OMUtil::angle2PI(&v229, &v232, v157);
            v159 = v158;
            v160 = sqrtf((v204[0].var0[0] * v204[0].var0[0]) + (v204[0].var0[1] * v204[0].var0[1]));
            v161 = __sincosf_stret(v156 - v59);
            v204[0].var0[0] = v161.__cosval * ((v59 + 1.0) * v160);
            v204[0].var0[1] = v161.__sinval * ((v59 + 1.0) * v160);
            v162 = sqrtf((v232.var0[0] * v232.var0[0]) + (v232.var0[1] * v232.var0[1]));
            v163 = __sincosf_stret(v59 + v159);
            v164 = (v59 + 1.0) * v162;
            v232.var0[0] = v163.__cosval * v164;
            v232.var0[1] = v163.__sinval * v164;
            v165 = *((*(*v196 + 96))(v196) + 40);
            *v165 = v204[0];
            v166 = (*(*v196 + 96))(v196);
            *(*(v166 + 40) + 16) = v232;
            *(*((*(*v196 + 96))(v196) + 40) + 8) = 0;
            v167 = (*(*v196 + 96))(v196);
            v168 = 1.0 - v59;
            v169 = sqrtf(((v16 * v53.__cosval) * (v16 * v53.__cosval)) + ((v16 * v53.__sinval) * (v16 * v53.__sinval))) * v168;
            v170 = *(v167 + 40);
            *(v170 + 24) = v169 * v161.__cosval;
            *(v170 + 28) = v169 * v161.__sinval;
            v171 = (*(*v196 + 96))(v196);
            v172 = sqrtf(((v16 * v58.__cosval) * (v16 * v58.__cosval)) + ((v16 * v58.__sinval) * (v16 * v58.__sinval))) * v168;
            v173 = *(v171 + 40);
            *(v173 + 32) = v172 * v163.__cosval;
            *(v173 + 36) = v172 * v163.__sinval;
          }

          else
          {
            v220 = 0;
            v221 = 0;
            v222 = 0;
            v61 = v60;
            v62 = (v60 - 1);
            if (v60 <= 1)
            {
              v73 = &v196[26];
              v81 = v196[26];
              v196[27] = v81;
              v219 = 0.0;
              v218.i32[1] = 0;
              v85 = 0.0;
              v83 = 0.0;
              v84 = 0.0;
              v82 = v81;
            }

            else
            {
              v63 = (v220 + 8);
              v64 = *v220;
              v65 = 10000.0;
              v66 = (v60 - 1);
              do
              {
                v67 = *v63++;
                v68 = v67;
                v69 = vsub_f32(v67, v64);
                v70 = sqrtf(vaddv_f32(vmul_f32(v69, v69)));
                if (v70 >= v65)
                {
                  v71 = v65;
                }

                else
                {
                  v71 = v70;
                }

                if (v70 >= 0.0001)
                {
                  v65 = v71;
                }

                v64 = v68;
                --v66;
              }

              while (v66);
              v72 = 0;
              v73 = &v196[26];
              v196[27] = v196[26];
              v218 = 0;
              v219 = 0.0;
              do
              {
                v74 = v72++;
                v75 = vsub_f32(*(v220 + 8 * v72), *(v220 + 8 * v74));
                v76 = sqrtf(vaddv_f32(vmul_f32(v75, v75)));
                if (v76 != 0.0)
                {
                  v204[0] = *(v220 + 8 * v74);
                  v204[1].var0[0] = 0.0;
                  std::vector<Vec3f>::push_back[abi:ne200100](&v196[26], v204);
                  *&v77 = v65;
                  if (v65 < v76)
                  {
                    do
                    {
                      v78 = *(v220 + 8 * v74);
                      v79 = vsub_f32(*(v220 + 8 * v72), v78);
                      v80 = vmul_f32(v79, v79);
                      v80.f32[0] = sqrtf(vaddv_f32(v80));
                      v202 = v77;
                      v204[0] = vadd_f32(v78, vmul_n_f32(vdiv_f32(v79, vdup_lane_s32(v80, 0)), *&v77));
                      v204[1].var0[0] = 0.0;
                      std::vector<Vec3f>::push_back[abi:ne200100](&v196[26], v204);
                      v218 = vadd_f32(v218, v204[0]);
                      v219 = v219 + v204[1].var0[0];
                      v77 = v202;
                      *&v77 = v65 + *&v202;
                    }

                    while ((v65 + *&v202) < v76);
                  }
                }
              }

              while (v72 != v62);
              v81 = v196[26];
              v82 = v196[27];
              v83 = v218.f32[1];
              v84 = v218.f32[0];
              v85 = v219;
            }

            v86 = 0xAAAAAAAAAAAAAAABLL * ((*&v82 - *&v81) >> 2);
            v218.f32[0] = v84 / v86;
            v218.f32[1] = v83 / v86;
            v219 = v85 / v86;
            OMUtil::getBoundingBox(v73, &v196[18], 1, &v218);
            v229 = xmmword_260344950;
            operator*(&v196[18], &v229, v204);
            proj(v204, &v215, v87);
            v232 = v215;
            v233 = v216.i32[0];
            v229 = xmmword_26084A7B0;
            operator*(&v196[18], &v229, v204);
            proj(v204, &v215, v88);
            v234 = v215;
            v235 = v216.i32[0];
            v229 = xmmword_26084A7C0;
            operator*(&v196[18], &v229, v204);
            proj(v204, &v215, v89);
            v236 = v215;
            v237 = v216.i32[0];
            v229 = xmmword_26084A7D0;
            operator*(&v196[18], &v229, v204);
            proj(v204, &v215, v90);
            v91 = 0;
            v238 = v215;
            v239 = v216.i32[0];
            v92 = &v234 + 1;
            do
            {
              v241.val[0].i32[0] = *(v92 - 4);
              v241.val[0].i32[1] = *(v92 - 1);
              v241.val[1].i32[0] = *(v92 - 3);
              v241.val[1].i32[1] = *v92;
              v93 = (&v229 + v91);
              vst2_f32(v93, v241);
              v91 += 16;
              v92 += 6;
            }

            while (v91 != 32);
            v94 = 0;
            v95 = 0;
            v96 = 1000.0;
            do
            {
              v97 = sqrtf(vaddv_f32(vmul_f32(*(&v229 + 8 * v94), *(&v229 + 8 * v94))));
              if (v97 < v96)
              {
                v95 = v94;
                v96 = v97;
              }

              ++v94;
            }

            while (v94 != 4);
            if (v95 <= 2)
            {
              v98 = v95 + 1;
            }

            else
            {
              v98 = 0;
            }

            v99 = v95 - 1;
            if (v95 < 1)
            {
              v99 = 3;
            }

            if (sqrtf((*(&v229 + 2 * v98) * *(&v229 + 2 * v98)) + (*(&v229 + 2 * v98 + 1) * *(&v229 + 2 * v98 + 1))) < sqrtf((*(&v229 + 2 * v99) * *(&v229 + 2 * v99)) + (*(&v229 + 2 * v99 + 1) * *(&v229 + 2 * v99 + 1))))
            {
              v99 = v95;
              v95 = v98;
            }

            if (v95 <= 2)
            {
              v100 = v95 + 1;
            }

            else
            {
              v100 = 0;
            }

            if (v100 <= 2)
            {
              v101 = v100 + 1;
            }

            else
            {
              v101 = 0;
            }

            v189 = *(&v229 + 8 * v95);
            v102 = vmul_f32(vadd_f32(*(&v229 + 8 * v99), v189), 0x3F0000003F000000);
            v191 = *(&v229 + 8 * v101);
            v193 = *(&v229 + 8 * v100);
            v103 = vsub_f32(v102, vmul_f32(vadd_f32(v193, v191), 0x3F0000003F000000));
            v104 = *(&v229 + 8);
            v190 = v229;
            v105 = v231;
            v188 = *(&v229 + v99);
            *&_Q1 = v188;
            *(&_Q1 + 1) = vadd_f32(v102, vmul_f32(v103, vdup_n_s32(0x3E4CCCCDu)));
            v203 = *(&_Q1 + 8);
            *v204[0].var0 = _Q1;
            __asm { FMOV            V1.2S, #0.25 }

            v110 = vmul_f32(vadd_f32(vadd_f32(vadd_f32(*&v229, *(&v229 + 8)), v230), v231), *&_Q1);
            v215 = 0;
            v216 = v110;
            v217 = *(&_Q1 + 8);
            if (OMUtil::findIntersectionOfLineSegment(v204, &v215) || (*&v111 = v203, *(&v111 + 1) = v189, v214 = v111, v213[0] = 0, v213[1] = v110, OMUtil::findIntersectionOfLineSegment(&v214, v213)) || (*&v112 = v189, *(&v112 + 1) = v193, v212 = v112, v211[0] = 0, v211[1] = v110, OMUtil::findIntersectionOfLineSegment(&v212, v211)) || (*&v113 = v193, *(&v113 + 1) = v191, v210 = v113, v209[0] = 0, v209[1] = v110, OMUtil::findIntersectionOfLineSegment(&v210, v209)) || (*&v114 = v191, *(&v114 + 1) = v188, v208 = v114, v207[0] = 0, v207[1] = v110, OMUtil::findIntersectionOfLineSegment(&v208, v207)))
            {
              v115 = vmul_f32(v103, v103);
              v115.f32[0] = sqrtf(vaddv_f32(v115));
              v203 = vmul_f32(vdiv_f32(v103, vdup_lane_s32(v115, 0)), vdup_n_s32(0x3C23D70Au));
              v217 = v203;
            }

            if (v15 == 0.0)
            {
              v116 = 0.01;
            }

            else
            {
              v116 = v15;
            }

            v117 = vmul_f32(v191, v191);
            v117.f32[0] = sqrtf(vaddv_f32(v117));
            v118 = vdiv_f32(v191, vdup_lane_s32(v117, 0));
            v192 = v116;
            v215 = vmul_n_f32(v118, v116);
            v119 = vmul_f32(v193, v193);
            v119.f32[0] = sqrtf(vaddv_f32(v119));
            *&v214 = vmul_n_f32(vdiv_f32(v193, vdup_lane_s32(v119, 0)), v192);
            v120 = vsub_f32(vdup_lane_s32(v190, 0), vzip1_s32(v104, v105));
            v121 = vsub_f32(vdup_lane_s32(v190, 1), vzip2_s32(v104, v105));
            v122 = vsqrt_f32(vadd_f32(vmul_f32(v120, v120), vmul_f32(v121, v121)));
            v123 = vdiv_f32(v122, vdup_lane_s32(v122, 1)).f32[0];
            if (v123 > 0.8 && v123 < 1.2 && sqrtf(vaddv_f32(vmul_f32(v110, v110))) < 0.02)
            {
              OMPie::OMPie(v204, 0);
              v124 = __p;
              *__p = v215;
              v124[2] = v214;
              v124[1] = 0;
              v124[3] = 0;
              v124[4] = 0;
              OMPie::computeOppositeArc(v204, v125, v126);
              OMPie::getArcOut(v204, 0.6, v213);
              v215 = v213[0];
              OMPie::getArcOut(v204, 0.4, v213);
              *&v214 = v213[0];
              OMPie::getArcOut(v204, 0.5, v213);
              v203 = v213[0];
              v217 = v213[0];
              if (__p)
              {
                v206 = __p;
                operator delete(__p);
              }
            }

            v127 = (*(*v196 + 96))(v196);
            **(v127 + 40) = v215;
            v128 = (*(*v196 + 96))(v196);
            *(*(v128 + 40) + 16) = v214;
            *(*((*(*v196 + 96))(v196) + 40) + 8) = v203;
            *(*((*(*v196 + 96))(v196) + 40) + 24) = v203;
            *(*((*(*v196 + 96))(v196) + 40) + 32) = v203;
            v129 = (*(*v196 + 96))(v196);
            OMPie::computeArc(v129, v130, v131);
            v132 = (*(*v196 + 96))(v196);
            OMPie::getArcOut(v132, -0.01, v204);
            v133 = (*(*v196 + 96))(v196);
            OMPie::getArcOut(v133, 1.01, v213);
            v134 = vsub_f32(v204[0], v203);
            v135 = vmul_f32(v134, v134);
            v135.f32[0] = sqrtf(vaddv_f32(v135));
            v136 = vmul_n_f32(vdiv_f32(v134, vdup_lane_s32(v135, 0)), v135.f32[0]);
            v137 = vdup_n_s32(0x3F851EB8u);
            v204[0] = vadd_f32(v203, vmul_f32(v136, v137));
            v138 = vsub_f32(v213[0], v203);
            v139 = vmul_f32(v138, v138);
            v139.f32[0] = sqrtf(vaddv_f32(v139));
            v213[0] = vadd_f32(v203, vmul_f32(vmul_n_f32(vdiv_f32(v138, vdup_lane_s32(v139, 0)), v139.f32[0]), v137));
            v140 = (*(*v196 + 96))(v196);
            OMPie::getArcOut(v140, 0.5, &v212);
            v141 = v212;
            v215 = v204[0];
            *&v214 = v213[0];
            v142 = (*(*v196 + 96))(v196);
            **(v142 + 40) = v215;
            v143 = (*(*v196 + 96))(v196);
            *(*(v143 + 40) + 16) = v214;
            v144 = (*(*v196 + 96))(v196);
            v145 = sqrtf(((v203.f32[0] - *&v141) * (v203.f32[0] - *&v141)) + ((v203.f32[1] - *(&v141 + 1)) * (v203.f32[1] - *(&v141 + 1))));
            v146 = sqrtf(((*&v141 - v203.f32[0]) * (*&v141 - v203.f32[0])) + ((*(&v141 + 1) - v203.f32[1]) * (*(&v141 + 1) - v203.f32[1])));
            v147 = *&v141 + ((v146 * ((v203.f32[0] - *&v141) / v145)) * 1.04);
            v148 = *(&v141 + 1) + ((v146 * ((v203.f32[1] - *(&v141 + 1)) / v145)) * 1.04);
            v149 = *(v144 + 40);
            *(v149 + 8) = v147;
            *(v149 + 12) = v148;
            v150 = *((*(*v196 + 96))(v196) + 40);
            *(v150 + 24) = v147;
            *(v150 + 28) = v148;
            v151 = *((*(*v196 + 96))(v196) + 40);
            *(v151 + 32) = v147;
            *(v151 + 36) = v148;
            if (v220)
            {
              v221 = v220;
              operator delete(v220);
            }
          }

          v174 = *((*(*v196 + 96))(v196) + 40);
          v175 = *((*(*v196 + 96))(v196) + 40);
          v176 = *v174;
          v177 = vmul_f32(v176, v176);
          v177.f32[0] = sqrtf(vaddv_f32(v177));
          v178 = v175[2];
          v179 = vmul_f32(v178, v178);
          v179.f32[0] = sqrtf(vaddv_f32(v179));
          if (v177.f32[0] >= v179.f32[0])
          {
            if (v177.f32[0] > v179.f32[0])
            {
              v175[2] = vmul_n_f32(vdiv_f32(v178, vdup_lane_s32(v179, 0)), v177.f32[0]);
            }
          }

          else
          {
            *v174 = vmul_n_f32(vdiv_f32(v176, vdup_lane_s32(v177, 0)), v179.f32[0]);
          }

          (*(*v196 + 72))(v196, (v17 + v17) + -1.0);
          (*(*v196 + 80))(v196, (v18 + v18) + -1.0);
          if (a4)
          {
            if (v38 <= 179 && (v180 = (*(*v196 + 96))(v196), OMPie::isQuadActive(v180)))
            {
              *a7 = 1.0;
              v181 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
              if (v181 >= 1)
              {
                v182 = v181 & 0x7FFFFFFF;
                v183 = (*a3 + 8);
                v184 = 1.0;
                do
                {
                  v185 = *(v183 - 1);
                  if (*v183 > (v17 + ((v18 - v17) * 0.45)) && *v183 < (v17 + ((v18 - v17) * 0.55)) && v185 < v184)
                  {
                    *a7 = v185;
                    v184 = v185;
                  }

                  v183 += 3;
                  --v182;
                }

                while (v182);
              }
            }

            else
            {
              *a5 = 0.0;
              *a6 = 0.0;
              *a7 = 0.0;
            }

            OMKeyer2D::computeSatOffsetVector(v196);
          }

          if (v223[0])
          {
            v223[1] = v223[0];
            operator delete(v223[0]);
          }

          if (v224[0])
          {
            v224[1] = v224[0];
            operator delete(v224[0]);
          }

          if (v225)
          {
            v226 = v225;
            operator delete(v225);
          }

          if (v228[0])
          {
            v228[1] = v228[0];
            operator delete(v228[0]);
          }

          return;
        }
      }
    }
  }
}

void sub_25FF1ECCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (a64)
  {
    operator delete(a64);
  }

  if (a67)
  {
    operator delete(a67);
  }

  if (a70)
  {
    operator delete(a70);
  }

  _Unwind_Resume(a1);
}

unint64_t anonymous namespace::chainHull_2D(float32x2_t **a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (v4 == v5)
  {
    return 0;
  }

  v7 = vadd_f32(*v4, vdup_n_s32(0x3A83126Fu));
  v76 = v7;
  v8 = a1[2];
  if (v5 >= v8)
  {
    v9 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a1, &v76);
    v4 = *a1;
    v8 = a1[2];
  }

  else
  {
    *v5 = v7;
    v9 = v5 + 1;
  }

  a1[1] = v9;
  v11 = vadd_f32(*v4, 0x3A83126FBA83126FLL);
  v76 = v11;
  if (v9 >= v8)
  {
    v12 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a1, &v76);
    v4 = *a1;
    v8 = a1[2];
  }

  else
  {
    v9->i32[0] = v11;
    v9->i32[1] = HIDWORD(v76);
    v12 = v9 + 1;
  }

  a1[1] = v12;
  v13 = vadd_f32(*v4, vdup_n_s32(0xBA83126F));
  v76 = v13;
  if (v12 >= v8)
  {
    v14 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a1, &v76);
    v4 = *a1;
    v8 = a1[2];
  }

  else
  {
    v12->i32[0] = v13;
    v12->i32[1] = HIDWORD(v76);
    v14 = v12 + 1;
  }

  a1[1] = v14;
  a3.n128_u64[0] = vadd_f32(*v4, 0xBA83126F3A83126FLL);
  v76 = a3.n128_u64[0];
  if (v14 >= v8)
  {
    v15 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a1, &v76);
    v4 = *a1;
  }

  else
  {
    v14->i32[0] = a3.n128_u32[0];
    a3.n128_u32[0] = HIDWORD(v76);
    v14->i32[1] = HIDWORD(v76);
    v15 = &v14[1];
  }

  v16 = 126 - 2 * __clz((v15 - v4) >> 3);
  a1[1] = v15;
  if (v15 == v4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,false>(v4, v15, &v76, v17, 1, a3);
  if (a2 != a1)
  {
    std::vector<Vec2f>::__assign_with_size[abi:ne200100]<Vec2f*,Vec2f*>(a2, *a1, a1[1], a1[1] - *a1);
  }

  v18 = *a1;
  v19 = a1[1] - *a1;
  v20 = v19 >> 3;
  v21 = (*a1)->f32[0];
  v22 = (v19 >> 3) - 2;
  if ((v19 >> 3) >= 2)
  {
    v23 = (v19 >> 3) & 0x7FFFFFFF;
    v24 = &v18[1];
    v25 = 1;
    while (*v24 == v21)
    {
      ++v25;
      v24 += 2;
      if (v23 == v25)
      {
        v26 = v20 - 1;
        goto LABEL_28;
      }
    }

    v26 = v25 - 1;
    if (v20 == v25)
    {
      goto LABEL_28;
    }

    v31 = v20 - 1;
    v32 = &v18[v31];
    v37 = (v20 - 2);
    v38 = v37 + 1;
    v39 = &v18[v37];
    while (*v39 == v32->f32[0])
    {
      v39 -= 2;
      if (v38-- <= 1)
      {
        v22 = -1;
        goto LABEL_41;
      }
    }

    v22 = v38 - 1;
LABEL_41:
    v41 = 0;
    v42 = v22 + 1;
    v43 = *a2;
    *v43 = v21;
    *(v43 + 1) = v18->i32[1];
    v44 = v26;
LABEL_42:
    v45 = v44;
    v46 = &v18[v44 + 1];
    while (v45 <= v22)
    {
      v44 = v45 + 1;
      v47 = *v46++;
      v48 = v47;
      if (v45 < v22)
      {
        v49 = vmul_f32(vrev64_s32(vsub_f32(v48, *v18)), vsub_f32(v18[v42], *v18));
        ++v45;
        if (vsub_f32(v49, vdup_lane_s32(v49, 1)).f32[0] >= 0.0)
        {
          continue;
        }
      }

      v50 = v41 & (v41 >> 31);
      v51 = &v43[8 * v41];
      while (1)
      {
        v52 = __OFSUB__(v41--, 1);
        if (v41 < 0 != v52)
        {
          break;
        }

        v53 = *v51;
        v54 = v51[-1];
        --v51;
        v55 = vmul_f32(vrev64_s32(vsub_f32(v48, v54)), vsub_f32(v53, v54));
        if (vcgt_f32(v55, vdup_lane_s32(v55, 1)).u8[0])
        {
          v50 = v41 + 1;
          break;
        }
      }

      v41 = v50 + 1;
      v56 = &v43[8 * v50 + 8];
      *v56 = v48.i32[0];
      *(v56 + 1) = v46[-1].i32[1];
      goto LABEL_42;
    }

    if (v31 == v42)
    {
      v57 = v41;
    }

    else
    {
      v57 = ++v41;
      v58 = &v43[8 * v41];
      *v58 = v32->i32[0];
      *(v58 + 1) = v32->i32[1];
    }

    v59 = v41;
LABEL_55:
    v60 = v42;
    v61 = &v18[v42] + 1;
    while (v60 >= v25)
    {
      v42 = v60 - 1;
      v62 = *(v61 - 3);
      v61 -= 2;
      if (v60 > v25)
      {
        v63 = vmul_f32(vrev64_s32(vsub_f32(v62, *v32)), vsub_f32(v18[v26], *v32));
        --v60;
        if (vsub_f32(v63, vdup_lane_s32(v63, 1)).f32[0] >= 0.0)
        {
          continue;
        }
      }

      v64 = v59;
      if (v59 >= v41)
      {
        v65 = v41;
      }

      else
      {
        v65 = v59;
      }

      v66 = v59 + 1;
      v67 = &v43[8 * v59];
      while (v64 > v57)
      {
        --v64;
        v68 = *v67;
        v69 = v67[-1];
        --v67;
        v70 = vmul_f32(vrev64_s32(vsub_f32(v62, v69)), vsub_f32(v68, v69));
        --v66;
        if (vcgt_f32(v70, vdup_lane_s32(v70, 1)).u8[0])
        {
          goto LABEL_67;
        }
      }

      v66 = v65;
LABEL_67:
      v59 = v66 + 1;
      v71 = &v43[8 * v66 + 8];
      *v71 = v62.i32[0];
      *(v71 + 1) = *v61;
      goto LABEL_55;
    }

    if (v26)
    {
      v72 = v59 + 1;
      v73 = &v43[8 * v72];
      *v73 = v18->i32[0];
      *(v73 + 1) = v18->i32[1];
    }

    else
    {
      v72 = v59;
    }

    v74 = &v43[8 * v72 + 8];
    v75 = *(a2 + 8);
    if (v74 != v75)
    {
      *(a2 + 8) = v74;
      v75 = v74;
    }

    v36 = v75 - v43;
    return v36 >> 3;
  }

  if (v20 != 1)
  {
    v26 = 0;
    v31 = v20 - 1;
    v32 = &v18[v31];
    LODWORD(v25) = 1;
    goto LABEL_41;
  }

  v26 = 0;
LABEL_28:
  v27 = *a2;
  *v27 = v21;
  v28 = v18->f32[1];
  *(v27 + 1) = v28;
  v29 = &v18[v26];
  if (v29->f32[1] == v28)
  {
    v30 = 1;
  }

  else
  {
    *(v27 + 2) = v29->i32[0];
    *(v27 + 3) = v29->i32[1];
    v30 = 2;
  }

  v33 = &v27[8 * v30];
  *v33 = v18->i32[0];
  *(v33 + 1) = v18->i32[1];
  v34 = v33 + 8;
  v35 = *(a2 + 8);
  if (v34 != v35)
  {
    *(a2 + 8) = v34;
    v35 = v34;
  }

  v36 = v35 - v27;
  return v36 >> 3;
}