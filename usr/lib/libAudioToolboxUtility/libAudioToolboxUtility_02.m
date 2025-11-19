const __CFArray *CACFArray::InsertUInt32(CACFArray *this, unsigned int a2, int a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return inserted;
}

void sub_1DE1F0334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertSInt64(CACFArray *this, unsigned int a2, uint64_t a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return inserted;
}

void sub_1DE1F03DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertUInt64(CACFArray *this, unsigned int a2, uint64_t a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return inserted;
}

void sub_1DE1F0484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertFloat32(CACFArray *this, unsigned int a2, float a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return inserted;
}

void sub_1DE1F052C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertFloat64(CACFArray *this, unsigned int a2, double a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  CACFNumber::~CACFNumber(&v8);
  return inserted;
}

void sub_1DE1F05D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetBool(const __CFArray **this, unsigned int a2, int a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  v9 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  v10 = *v9;
  v11 = v10;
  v12 = 1;
  if (v10)
  {
    CFRetain(v10);
    v7 = CACFArray::SetCFType(this, a2, v10);
  }

  else
  {
    v7 = 0;
  }

  CACFBoolean::~CACFBoolean(&v11);
  return v7;
}

const __CFArray *CACFArray::SetCFType(CFMutableArrayRef *this, unsigned int a2, const void *a3)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1 && CFArrayGetCount(result) >= a2)
    {
      CFArraySetValueAtIndex(*this, a2, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *CACFArray::SetSInt32(const __CFArray **this, unsigned int a2, int a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  CACFNumber::~CACFNumber(&v10);
  return v7;
}

void sub_1DE1F07E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetUInt32(const __CFArray **this, unsigned int a2, int a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  CACFNumber::~CACFNumber(&v10);
  return v7;
}

void sub_1DE1F08A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetSInt64(const __CFArray **this, unsigned int a2, uint64_t a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  CACFNumber::~CACFNumber(&v10);
  return v7;
}

void sub_1DE1F0960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetUInt64(const __CFArray **this, unsigned int a2, uint64_t a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  CACFNumber::~CACFNumber(&v10);
  return v7;
}

void sub_1DE1F0A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetFloat32(const __CFArray **this, unsigned int a2, float a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  CACFNumber::~CACFNumber(&v10);
  return v7;
}

void sub_1DE1F0AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetFloat64(const __CFArray **this, unsigned int a2, double a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  CACFNumber::~CACFNumber(&v10);
  return v7;
}

void sub_1DE1F0BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void CACFArray::PrintToLog(CACFArray *this, const __CFArray *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(this);
  if (a2)
  {
    v5 = a2;
    memset(__b, 9, a2);
  }

  else
  {
    v5 = 0;
  }

  __b[v5] = 0;
  if (Count >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E9C10];
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = "CACFArray.cpp";
        v15 = 1024;
        v16 = 795;
        v17 = 2080;
        v18 = __b;
        v19 = 1024;
        v20 = v6;
        _os_log_impl(&dword_1DE1D2000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  %sitem %d", buf, 0x22u);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(this, v6);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFBooleanGetTypeID())
      {
        CACFBoolean::PrintToLog(ValueAtIndex, a2);
      }

      else if (v9 == CFNumberGetTypeID())
      {
        CACFNumber::PrintToLog(ValueAtIndex, a2);
      }

      else if (v9 == CFStringGetTypeID())
      {
        CACFString::PrintToLog(ValueAtIndex, a2);
      }

      else if (v9 == CFDictionaryGetTypeID())
      {
        CACFDictionary::PrintToLog(ValueAtIndex, (a2 + 1), v10);
      }

      else if (v9 == CFArrayGetTypeID())
      {
        CACFArray::PrintToLog(ValueAtIndex, (a2 + 1), v11);
      }

      ++v6;
    }

    while (Count != v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

unint64_t MultiRadixFFT::NearestSupportedSizes(MultiRadixFFT *this)
{
  if (this >= 0x11)
  {
    if (this >> 20)
    {
      LODWORD(this) = 0x100000;
      v1 = 0x100000;
    }

    else
    {
      v2 = 1 << (__clz(this) ^ 0x1F);
      v3 = (1 << -__clz(this - 1));
      if (v2 >= v3)
      {
        LODWORD(this) = v2;
        v1 = v3;
      }

      else
      {
        v4 = __clz(this / 0xF);
        v5 = 15 << ~v4;
        v6 = __clz(this / 5);
        v7 = 5 << ~v6;
        v8 = __clz(this / 3);
        if (v7 <= 3 << ~v8)
        {
          v7 = 3 << ~v8;
        }

        if (v5 <= v7)
        {
          v5 = v7;
        }

        if (v2 <= v5)
        {
          v2 = v5;
        }

        v1 = this;
        if (v2 != this)
        {
          v9 = 30 << (31 - v4);
          v10 = 10 << (31 - v6);
          v11 = 6 << (31 - v8);
          if (v11 < v10)
          {
            v10 = v11;
          }

          if (v10 < v9)
          {
            v9 = v10;
          }

          if (v9 >= v3)
          {
            v1 = v3;
          }

          else
          {
            v1 = v9;
          }

          LODWORD(this) = v2;
        }
      }
    }
  }

  else
  {
    LODWORD(this) = 16;
    v1 = 16;
  }

  return this | (v1 << 32);
}

uint64_t MultiRadixFFT::Initialize(MultiRadixFFT *this, unsigned int a2)
{
  {
    operator new();
  }

  v4 = DFTSetupList<true>::instance(void)::global;
  os_unfair_lock_lock(DFTSetupList<true>::instance(void)::global);
  v5 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(*(v4 + 8), *(v4 + 16));
  std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase((v4 + 8), v5, *(v4 + 16));
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  while (1)
  {
    if (v6 == v7)
    {
      Setup = vDSP_DFT_zop_CreateSetup(0, a2, vDSP_DFT_FORWARD);
      if (Setup)
      {
        vDSP_DFT_zop_CreateSetup(Setup, a2, vDSP_DFT_INVERSE);
      }

      operator new();
    }

    v8 = v6[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        break;
      }
    }

LABEL_9:
    v6 += 2;
  }

  v10 = v9;
  if (!*v6 || (v11 = *(*v6 + 16), *v11 != a2))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  os_unfair_lock_unlock(v4);
  if (*(v11 + 8) && *(v11 + 16))
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    v13 = 0;
    v14 = 0;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v14 = 1936292453;
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    v11 = 0;
    v10 = 0;
    v13 = 1;
  }

  v15 = *(this + 1);
  *this = v11;
  *(this + 1) = v10;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v14;
}

void std::allocator<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F595E508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BF450);
}

uint64_t MultiRadixFFT::Size(MultiRadixFFT *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t MultiRadixRealFFT::Size(MultiRadixRealFFT *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t MultiRadixFFT::CplxOutOfPlaceTransform(MultiRadixFFT *this, const DSPSplitComplex *a2, DSPSplitComplex *a3, int a4)
{
  if (!*this)
  {
    abort();
  }

  v4 = 16;
  if (a4 == 1)
  {
    v4 = 8;
  }

  vDSP_DFT_Execute(*(*this + v4), a2->realp, a2->imagp, a3->realp, a3->imagp);
  return 0;
}

uint64_t MultiRadixFFT_Dispose(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }

    JUMPOUT(0x1E12BF450);
  }

  return result;
}

unsigned int **MultiRadixFFT_Size(unsigned int **result)
{
  if (result)
  {
    if (*result)
    {
      return **result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiRadixFFT_CplxInPlaceTransform(MultiRadixFFT *a1, DSPSplitComplex *a2, int a3)
{
  if (!a1)
  {
    return 561214580;
  }

  MultiRadixFFT::CplxOutOfPlaceTransform(a1, a2, a2, a3);
  return 0;
}

uint64_t MultiRadixFFT_CplxOutOfPlaceTransform(MultiRadixFFT *a1, const DSPSplitComplex *a2, DSPSplitComplex *a3, int a4)
{
  if (!a1)
  {
    return 561214580;
  }

  MultiRadixFFT::CplxOutOfPlaceTransform(a1, a2, a3, a4);
  return 0;
}

uint64_t MultiRadixRealFFT_Dispose(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }

    JUMPOUT(0x1E12BF450);
  }

  return result;
}

unsigned int **MultiRadixRealFFT_Size(unsigned int **result)
{
  if (result)
  {
    if (*result)
    {
      return **result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiRadixRealFFT_RealInPlaceTransform(MultiRadixRealFFT *a1, DSPSplitComplex *a2, int a3)
{
  if (!a1)
  {
    return 561214580;
  }

  MultiRadixRealFFT::RealInPlaceTransform(a1, a2, a3, 1.0);
  return 0;
}

uint64_t MultiRadixRealFFT_RealOutOfPlaceForwardTransform(MultiRadixRealFFT *a1, DSPComplex *__C, DSPSplitComplex *a3)
{
  if (!a1)
  {
    return 561214580;
  }

  vDSP_ctoz(__C, 2, a3, 1, **a1 >> 1);
  MultiRadixRealFFT::RealInPlaceTransform(a1, a3, 1, 1.0);
  return 0;
}

uint64_t MultiRadixRealFFT_RealOutOfPlaceInverseTransform(MultiRadixRealFFT *a1, const DSPSplitComplex *a2, DSPComplex *a3)
{
  if (!a1)
  {
    return 561214580;
  }

  MultiRadixRealFFT::RealOutOfPlaceInverseTransform(a1, a2, a3);
  return 0;
}

float realFFTMultiply(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6, unsigned int a7)
{
  __A.realp = a1;
  __A.imagp = a2;
  __B.realp = a3;
  __B.imagp = a4;
  v13.realp = a5;
  v13.imagp = a6;
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  vDSP_zvmul(&__A, 1, &__B, 1, &v13, 1, a7 >> 1, 1);
  imagp = v13.imagp;
  *v13.realp = v7 * v9;
  result = v8 * v10;
  *imagp = v8 * v10;
  return result;
}

void realFFTZeroPad(const DSPComplex *a1, float *a2, float *a3, unsigned int a4, int a5, MultiRadixRealFFT *a6)
{
  v11.realp = a2;
  v11.imagp = a3;
  v9 = a4 >> 1;
  vDSP_ctoz(a1, 2, &v11, 1, v9);
  if (a5 - a4 >= 2)
  {
    v10 = 4 * (((a5 - a4) >> 1) - 1);
    bzero(&v11.realp[v9], v10 + 4);
    bzero(&v11.imagp[v9], v10 + 4);
  }

  if (a6)
  {
    MultiRadixRealFFT::RealInPlaceTransform(a6, &v11, 1, 1.0);
  }
}

uint64_t realIFFTUnload(float *a1, float *a2, DSPComplex *__C, unsigned int a4, unsigned int a5, MultiRadixRealFFT *this, float a7)
{
  v12.realp = a1;
  v12.imagp = a2;
  v11 = a7;
  __Z.realp = &a1[a5 >> 1];
  __Z.imagp = &a2[a5 >> 1];
  if (this)
  {
    MultiRadixRealFFT::RealInPlaceTransform(this, &v12, -1, 1.0);
  }

  vDSP_ztoc(&__Z, 1, __C, 2, a4 >> 1);
  return MEMORY[0x1E12BFD70](__C, 1, &v11, __C, 1, a4);
}

uint64_t CADeprecated::XThread::Stop(CADeprecated::XThread *this)
{
  v2 = *(this + 123);
  *(this + 123) = 0;
    ;
  }

  if (v2)
  {
    v5 = *(*this + 8);

    return v5(this);
  }

  return result;
}

void XPC_Dictionary::~XPC_Dictionary(XPC_Dictionary *this)
{
  XPC_Object::~XPC_Object(this);

  JUMPOUT(0x1E12BF450);
}

uint64_t XPC_Dictionary::GetArray(uint64_t a1, char *key, uint64_t a3)
{
  if (*(a3 + 8))
  {
    v6 = atomic_load((a3 + 16));
    if (v6)
    {
      xpc_release(*(a3 + 8));
    }

    *(a3 + 8) = 0;
    atomic_store(0, (a3 + 16));
  }

  result = *(a1 + 8);
  if (result)
  {
    result = xpc_dictionary_get_value(result, key);
    if (result)
    {
      v8 = result;
      if (MEMORY[0x1E12BFF40]() == MEMORY[0x1E69E9E50])
      {
        if (*(a3 + 8))
        {
          v9 = atomic_load((a3 + 16));
          if (v9)
          {
            xpc_release(*(a3 + 8));
          }
        }

        *(a3 + 8) = v8;
        atomic_store(0, (a3 + 16));
        v10 = atomic_load((a3 + 16));
        if (v10)
        {
          xpc_retain(*(a3 + 8));
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t XPC_Dictionary::GetDictionary(XPC_Dictionary *this, const char *key, XPC_Dictionary *a3)
{
  if (*(a3 + 1))
  {
    v6 = atomic_load(a3 + 16);
    if (v6)
    {
      xpc_release(*(a3 + 1));
    }

    *(a3 + 1) = 0;
    atomic_store(0, a3 + 16);
  }

  result = *(this + 1);
  if (result)
  {
    result = xpc_dictionary_get_value(result, key);
    if (result)
    {
      v8 = result;
      if (MEMORY[0x1E12BFF40]() == MEMORY[0x1E69E9E80])
      {
        if (*(a3 + 1))
        {
          v9 = atomic_load(a3 + 16);
          if (v9)
          {
            xpc_release(*(a3 + 1));
          }
        }

        *(a3 + 1) = v8;
        atomic_store(0, a3 + 16);
        v10 = atomic_load(a3 + 16);
        if (v10)
        {
          xpc_retain(*(a3 + 1));
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t MemoryStream::Skip(uint64_t this, uint64_t a2)
{
  v2 = *(this + 24);
  v3 = *(this + 32);
  v4 = -v3;
  v5 = v2 - v3;
  v6 = v3 + a2;
  if (v5 > a2)
  {
    v2 = v6;
  }

  if (v4 >= a2)
  {
    v2 = 0;
  }

  *(this + 32) = v2;
  return this;
}

uint64_t MemoryStream::Seek(uint64_t this, uint64_t a2)
{
  if (a2 < 0)
  {
    *(this + 32) = 0;
  }

  else
  {
    v2 = *(this + 24);
    if (v2 <= a2)
    {
      *(this + 32) = v2;
    }

    else
    {
      *(this + 32) = a2;
    }
  }

  return this;
}

size_t MemoryStream::Write(MemoryStream *this, void *__src, size_t __n)
{
  v6 = *(this + 2);
  if (v6)
  {
    if (*(this + 41))
    {
      v8 = this + 32;
      v7 = *(this + 4);
      if (*(this + 3) - v7 >= __n)
      {
        memcpy((v6 + v7), __src, __n);
        v9 = v8;
        goto LABEL_8;
      }

      CAVerboseAbort();
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = -54;
  }

  Length = CFDataGetLength(*(this + 1));
  v9 = (this + 32);
  v11.location = *(this + 4);
  if (v11.location == Length)
  {
    CFDataAppendBytes(*(this + 1), __src, __n);
    *(this + 3) = CFDataGetLength(*(this + 1));
  }

  else
  {
    v11.length = __n;
    CFDataReplaceBytes(*(this + 1), v11, __src, __n);
  }

LABEL_8:
  *v9 += __n;
  return __n;
}

size_t MemoryStream::Read(MemoryStream *this, void *__dst, size_t a3)
{
  v3 = *(this + 4);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 3) - v3 >= a3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
  }

  memcpy(__dst, (v4 + v3), a3);
  *(this + 4) += a3;
  return a3;
}

void MemoryStream::~MemoryStream(MemoryStream *this)
{
  MemoryStream::~MemoryStream(this);

  JUMPOUT(0x1E12BF450);
}

{
  *this = &unk_1F595E560;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  else
  {
    v3 = *(this + 2);
    if (v3)
    {
      if (*(this + 40) == 1)
      {
        free(v3);
      }
    }
  }
}

void MemoryStream::MemoryStream(MemoryStream *this, TStream *a2, int a3)
{
  v5 = a3;
  v6 = malloc_type_malloc(a3, 0x100004077774924uLL);
  *(this + 2) = v6;
  *(this + 3) = v5;
  *(this + 4) = 0;
  *this = &unk_1F595E560;
  *(this + 1) = 0;
  *(this + 40) = 1;
  if (v6)
  {
    (*(*a2 + 16))(a2, v6, v5);
  }
}

{
  v5 = a3;
  v6 = malloc_type_malloc(a3, 0x100004077774924uLL);
  *(this + 2) = v6;
  *(this + 3) = v5;
  *(this + 4) = 0;
  *this = &unk_1F595E560;
  *(this + 1) = 0;
  *(this + 40) = 1;
  if (v6)
  {
    (*(*a2 + 16))(a2, v6, v5);
  }
}

uint64_t MemoryStream::MemoryStream(uint64_t a1, void *a2, int a3)
{
  v5 = a3;
  v6 = malloc_type_malloc(a3, 0x100004077774924uLL);
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *a1 = &unk_1F595E560;
  *(a1 + 8) = 0;
  *(a1 + 40) = 1;
  if (v6)
  {
    (*(**a2 + 16))(*a2, v6, v5);
  }

  return a1;
}

{
  v5 = a3;
  v6 = malloc_type_malloc(a3, 0x100004077774924uLL);
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *a1 = &unk_1F595E560;
  *(a1 + 8) = 0;
  *(a1 + 40) = 1;
  if (v6)
  {
    (*(**a2 + 16))(*a2, v6, v5);
  }

  return a1;
}

void MemoryStream::MemoryStream(MemoryStream *this, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  *this = &unk_1F595E560;
  *(this + 2) = BytePtr;
  *(this + 3) = Length;
  *(this + 4) = 0;
  *(this + 1) = CFRetain(theData);
  *(this + 40) = 1;
}

{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  *this = &unk_1F595E560;
  *(this + 2) = BytePtr;
  *(this + 3) = Length;
  *(this + 4) = 0;
  *(this + 1) = CFRetain(theData);
  *(this + 40) = 1;
}

void MemoryStream::MemoryStream(MemoryStream *this)
{
  *this = &unk_1F595E560;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 1) = CFDataCreateMutable(0, 0);
  *(this + 40) = 1;
}

{
  *this = &unk_1F595E560;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 1) = CFDataCreateMutable(0, 0);
  *(this + 40) = 1;
}

void CASmartPreferences::RereadPrefs(CASmartPreferences *this)
{
  std::mutex::lock(this);
  CFSetApplyFunction(*(this + 8), SynchronizePrefDomain, 0);
  v2 = *(this + 9);
  v3 = *(this + 10);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(this);
}

uint64_t CACFPreferencesGetAppFourCCValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (!v4)
  {
    v8 = 0;
    v9 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFStringGetTypeID())
  {
    CFStringGetCString(v5, buffer, 64, 0x600u);
    v7 = strlen(buffer);
    v8 = v7 == 4;
    if (v7 == 4)
    {
      v9 = bswap32(*buffer);
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_9:
  CFRelease(v5);
  if (a3)
  {
LABEL_10:
    *a3 = v8;
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void *CASharedLibrary::LoadLibraryAndGetRoutineAddress(CASharedLibrary *this, const char *a2, const char *__path, const char *a4)
{
  result = dlopen(__path, 1);
  if (result)
  {

    return dlsym(result, this + 1);
  }

  return result;
}

void *CASharedLibrary::GetRoutineAddressIfLibraryLoaded(CASharedLibrary *this, const char *a2, const char *__path, const char *a4)
{
  result = dlopen(__path, 17);
  if (result)
  {

    return dlsym(result, this + 1);
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(v3);
      MEMORY[0x1E12BF450](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v5 = *(a1 + 24);
    if (v5)
    {
      for (i = *(a1 + 32); i != v5; std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(i))
      {
        --i;
      }

      *(a1 + 32) = v5;
      operator delete(*(a1 + 24));
    }

    return a1;
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(result);

    JUMPOUT(0x1E12BF450);
  }

  return result;
}

uint64_t OpaqueObjectMgr::lookup(OpaqueObjectMgr *this, unsigned int a2)
{
  result = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(this, a2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void BaseOpaqueObject::BaseOpaqueObject(BaseOpaqueObject *this, unsigned int a2)
{
  *this = &unk_1F595E5E8;
  *(this + 2) = a2;
  v3 = OpaqueObjectMgrInstance();
  caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::_addOrReplace(v3, a2);
}

float DFT_split_180_execute(vDSP_DFT_SetupStruct *__Setup, float32x2_t *a2, float32x2_t *a3, float *a4, float *a5, vDSP_DFT_Direction a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, uint64_t a45, uint64_t a46)
{
  v47 = 0;
  if (a6 == vDSP_DFT_INVERSE)
  {
    v48 = a4;
  }

  else
  {
    v48 = a5;
  }

  if (a6 == vDSP_DFT_INVERSE)
  {
    v49 = a5;
  }

  else
  {
    v49 = a4;
  }

  if (a6 == vDSP_DFT_INVERSE)
  {
    v50 = a2;
  }

  else
  {
    v50 = a3;
  }

  if (a6 == vDSP_DFT_INVERSE)
  {
    v51 = a3;
  }

  else
  {
    v51 = a2;
  }

  v52 = -8;
  do
  {
    v54 = *&v51[v47 / 4];
    v53 = *&v51[v47 / 4 + 4];
    v56 = *v50[v47 / 8].f32;
    v55 = *v50[v47 / 8 + 2].f32;
    v58 = *&v51[v47 / 4 + 90];
    v57 = *&v51[v47 / 4 + 94];
    v60 = *v50[v47 / 8 + 45].f32;
    v59 = *v50[v47 / 8 + 47].f32;
    v62 = *(&DFT_split_180_execute(vDSP_DFT_SetupStruct *,float const*,float const*,float *,float *,vDSP_DFT_Direction)::kCos_2PiOver180 + v47);
    v61 = *(&DFT_split_180_execute(vDSP_DFT_SetupStruct *,float const*,float const*,float *,float *,vDSP_DFT_Direction)::kCos_2PiOver180 + v47 + 16);
    v63 = *(&DFT_split_180_execute(vDSP_DFT_SetupStruct *,float const*,float const*,float *,float *,vDSP_DFT_Direction)::kSin_2PiOver180 + v47);
    v64 = *(&DFT_split_180_execute(vDSP_DFT_SetupStruct *,float const*,float const*,float *,float *,vDSP_DFT_Direction)::kSin_2PiOver180 + v47 + 16);
    v65 = (&STACK[0x890] + v47);
    *v65 = vaddq_f32(v54, v58);
    v65[1] = vaddq_f32(v53, v57);
    v66 = (&v89 + v47);
    *v66 = vaddq_f32(v56, v60);
    v66[1] = vaddq_f32(v55, v59);
    v67 = vsubq_f32(v53, v57);
    v68 = vsubq_f32(v54, v58);
    v69 = vsubq_f32(v56, v60);
    v70 = vsubq_f32(v55, v59);
    v71 = (&STACK[0x890] + v47 + 360);
    *v71 = vmlaq_f32(vmulq_f32(v69, v63), v62, v68);
    v71[1] = vmlaq_f32(vmulq_f32(v70, v64), v61, v67);
    v72 = (&a44 + v47);
    *v72 = vmlaq_f32(vmulq_f32(v63, vnegq_f32(v68)), v62, v69);
    v72[1] = vmlaq_f32(vmulq_f32(v64, vnegq_f32(v67)), v61, v70);
    v52 += 8;
    v47 += 32;
  }

  while (v52 < 0x4B);
  v73 = *(v51 + 88);
  v74 = *(v51 + 178);
  v75 = vsub_f32(v73, v74);
  v76 = vsub_f32(v50[44], v50[89]);
  STACK[0x9F0] = vadd_f32(v73, v74);
  STACK[0xB58] = vmla_f32(vmul_f32(v76, 0x3D0EF2AD3D8EDC7BLL), 0xBF7FD814BF7F605CLL, v75);
  STACK[0x878] = vmla_f32(vmul_f32(v75, 0xBD0EF2ADBD8EDC7BLL), 0xBF7FD814BF7F605CLL, v76);
  vDSP_DFT_Execute(__Setup, &STACK[0x890], &v89, &STACK[0x890], &v89);
  vDSP_DFT_Execute(__Setup, &STACK[0x9F8], &a44, &STACK[0x9F8], &a44);
  v77 = 0;
  v78 = -8;
  v79 = v49;
  v80 = v48;
  do
  {
    v91.val[0] = *(&STACK[0x890] + v77);
    v90.val[0] = *(&STACK[0x890] + v77 + 16);
    v91.val[1] = *(&STACK[0x890] + v77 + 360);
    v90.val[1] = *(&STACK[0x890] + v77 + 376);
    v93.val[0] = *(&v89 + v77);
    v92.val[0] = *(&v89 + v77 + 16);
    v93.val[1] = *(&a44 + v77);
    v92.val[1] = *(&a46 + v77);
    v81 = v79 + 16;
    vst2q_f32(v79, v91);
    v82 = v79 + 8;
    vst2q_f32(v82, v90);
    v83 = v80 + 16;
    vst2q_f32(v80, v93);
    v84 = v80 + 8;
    vst2q_f32(v84, v92);
    v78 += 8;
    v77 += 32;
    v79 = v81;
    v80 = v83;
  }

  while (v78 < 0x4B);
  v85 = 0;
  v86 = v48 + 177;
  v87 = v49 + 177;
  do
  {
    *(v87 - 1) = *(&STACK[0x890] + v85 + 352);
    *(v86 - 1) = *(&v89 + v85 + 352);
    *v87 = *(&STACK[0x890] + v85 + 712);
    v87 += 2;
    result = *(&STACK[0x878] + v85);
    *v86 = result;
    v86 += 2;
    v85 += 4;
  }

  while (v85 != 8);
  return result;
}

uint64_t CADeprecated::CAGuard::WaitUntil(CADeprecated::CAGuard *this, unint64_t a2)
{
  mach_absolute_time();
  v4 = __udivti3();
  if (a2 <= v4)
  {
    return 1;
  }

  v5 = *(*this + 64);

  return v5(this, a2 - v4);
}

void XPC_Array::~XPC_Array(XPC_Array *this)
{
  XPC_Object::~XPC_Object(this);

  JUMPOUT(0x1E12BF450);
}

uint64_t XPC_Array::GetArray(XPC_Array *this, size_t a2, XPC_Array *a3)
{
  if (*(a3 + 1))
  {
    v6 = atomic_load(a3 + 16);
    if (v6)
    {
      xpc_release(*(a3 + 1));
    }

    *(a3 + 1) = 0;
    atomic_store(0, a3 + 16);
  }

  result = *(this + 1);
  if (result)
  {
    if (xpc_array_get_count(result) <= a2)
    {
      return 0;
    }

    result = xpc_array_get_value(*(this + 1), a2);
    if (!result)
    {
      return result;
    }

    v8 = result;
    if (MEMORY[0x1E12BFF40]() == MEMORY[0x1E69E9E50])
    {
      if (*(a3 + 1))
      {
        v9 = atomic_load(a3 + 16);
        if (v9)
        {
          xpc_release(*(a3 + 1));
        }
      }

      *(a3 + 1) = v8;
      atomic_store(0, a3 + 16);
      v10 = atomic_load(a3 + 16);
      if (v10)
      {
        xpc_retain(*(a3 + 1));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t XPC_Array::GetDictionary(XPC_Array *this, size_t a2, XPC_Dictionary *a3)
{
  if (*(a3 + 1))
  {
    v6 = atomic_load(a3 + 16);
    if (v6)
    {
      xpc_release(*(a3 + 1));
    }

    *(a3 + 1) = 0;
    atomic_store(0, a3 + 16);
  }

  result = *(this + 1);
  if (result)
  {
    if (xpc_array_get_count(result) <= a2)
    {
      return 0;
    }

    result = xpc_array_get_value(*(this + 1), a2);
    if (!result)
    {
      return result;
    }

    v8 = result;
    if (MEMORY[0x1E12BFF40]() == MEMORY[0x1E69E9E80])
    {
      if (*(a3 + 1))
      {
        v9 = atomic_load(a3 + 16);
        if (v9)
        {
          xpc_release(*(a3 + 1));
        }
      }

      *(a3 + 1) = v8;
      atomic_store(0, a3 + 16);
      v10 = atomic_load(a3 + 16);
      if (v10)
      {
        xpc_retain(*(a3 + 1));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *CAAudioChannelLayout::Create(CAAudioChannelLayout *this)
{
  v1 = this;
  v2 = caulk::numeric::exceptional_mul<unsigned int>(this);
  v3 = caulk::numeric::exceptional_add<unsigned int>(v2);
  v4 = malloc_type_malloc(v3, 0x9403E489uLL);
  v5 = v4;
  if (v3 && !v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v4, v3);
  if (v5)
  {
    *v5 = 0;
    *(v5 + 2) = v1;
    if (v1)
    {
      v6 = v1;
      v7 = v5 + 16;
      do
      {
        *(v7 - 1) = -1;
        *v7 = 0;
        v7[1] = 0;
        v7 = (v7 + 20);
        --v6;
      }

      while (v6);
    }
  }

  return v5;
}

uint64_t CAAudioChannelLayout::SetAllToUnknown(uint64_t this, AudioChannelLayout *a2)
{
  *this = 0;
  *(this + 8) = a2;
  if (a2)
  {
    v2 = a2;
    v3 = (this + 16);
    do
    {
      *(v3 - 1) = -1;
      *v3 = 0;
      v3[1] = 0;
      v3 = (v3 + 20);
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t CAAudioChannelLayout::NumberChannels(CAAudioChannelLayout *this, const AudioChannelLayout *a2)
{
  if (*this == 0x10000)
  {
    v3 = vcnt_s8(*(this + 1));
    v3.i16[0] = vaddlv_u8(v3);
    return v3.u32[0];
  }

  else if (*this)
  {
    return *this;
  }

  else
  {
    return *(this + 2);
  }
}

size_t CAShowAudioChannelLayout(FILE *__stream, _DWORD *a2)
{
  if (a2)
  {
    fprintf(__stream, "\tTag=0x%X, ", *a2);
    if (*a2 == 0x10000)
    {
      return fprintf(__stream, "Using Bitmap:0x%X\n", a2[1]);
    }

    else
    {
      result = fprintf(__stream, "Num Chan Descs=%d\n", a2[2]);
      if (a2[2])
      {
        v5 = 0;
        v6 = (a2 + 3);
        do
        {
          fprintf(__stream, "\t\tLabel=%d, Flags=0x%X, ", *v6, *(v6 + 1));
          result = fprintf(__stream, "[az=%f,el=%f,dist=%f]\n", v6[2], v6[3], v6[4]);
          ++v5;
          v6 += 5;
        }

        while (v5 < a2[2]);
      }
    }
  }

  else
  {

    return fwrite("\tNULL layout\n", 0xDuLL, 1uLL, __stream);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}