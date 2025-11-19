CFTypeRef IR::IRData::Implementation::getFilePlistDict@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 37);
  if (v3)
  {
    this = CFRetain(*(this + 37));
  }

  *a2 = v3;
  return this;
}

CFTypeRef IR::IRData::Implementation::getUserData@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 38);
  if (v3)
  {
    this = CFRetain(*(this + 38));
  }

  *a2 = v3;
  return this;
}

void IR::IRData::getCoordinateTree(IR::IRData::Implementation **this@<X0>, uint64_t a2@<X8>)
{
  IR::IRData::Implementation::getCoordinateTree(*this, a2);
}

{
  IR::IRData::Implementation::getCoordinateTree(*this, a2);
}

uint64_t IR::IRData::getBooleanFromDictionary(CFTypeRef *a1, const __CFString *a2, int a3)
{
  v5 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v8 = v5;
  BooleanFromDictionary = IR::IRData::Implementation::getBooleanFromDictionary(&v8, a2, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return BooleanFromDictionary;
}

void sub_296BB31CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::createSerializedIRData(uint64_t *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SerializedIRData = IR::IRData::Implementation::createSerializedIRData(v4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return SerializedIRData;
}

void sub_296BB3238(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void IR::IRData::loadSerializedIRData(IR::IRData *this@<X0>, const applesauce::CF::DataRef *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = IR::IRDataLoader::instance(this);
  std::string::basic_string[abi:ne200100]<0>(v10, "");
  v8 = *this;
  if (v8)
  {
    CFRetain(v8);
  }

  cf = v8;
  IR::IRDataLoader::load(v7, v10, a2, &cf, &v12);
  *a3 = v12;
  v12 = 0uLL;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_296BB3320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::DataRef::~DataRef(&a13);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void IR::IRData::loadSerializedIRData(IR::IRData *this@<X0>, const __CFData *const *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = IR::IRDataLoader::instance(this);
  std::string::basic_string[abi:ne200100]<0>(v12, "");
  v8 = *this;
  if (v8)
  {
    CFRetain(v8);
    cf = v8;
    v9 = CFGetTypeID(v8);
    if (v9 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  IR::IRDataLoader::load(v7, v12, a2, &cf, &v14);
  *a3 = v14;
  v14 = 0uLL;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_296BB346C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
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

void sub_296BB3554(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

IR::IRData::Implementation *std::unique_ptr<IR::IRData::Implementation>::reset[abi:ne200100](IR::IRData::Implementation **a1, IR::IRData::Implementation *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IR::IRData::Implementation::~Implementation(result);

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

void IR::IRData::Implementation::~Implementation(IR::IRData::Implementation *this)
{
  v13 = (this + 512);
  std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__destroy_vector::operator()[abi:ne200100](&v13);
  IR::IRDataAttributes::~IRDataAttributes((this + 344));
  v13 = (this + 312);
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&v13);
  v2 = *(this + 38);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 37);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    *(this + 27) = v6;
    operator delete(v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    *(this + 21) = v8;
    operator delete(v8);
  }

  v9 = *(this + 17);
  if (v9)
  {
    *(this + 18) = v9;
    operator delete(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    *(this + 15) = v10;
    operator delete(v10);
  }

  v11 = *(this + 11);
  if (v11)
  {
    *(this + 12) = v11;
    operator delete(v11);
  }

  v12 = *(this + 6);
  if (v12)
  {
    *(this + 7) = v12;
    operator delete(v12);
  }
}

uint64_t std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType*,IR::IRCoordinateType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB382C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB38E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod*,IR::IRInterpolationMethod*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB3960(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::IRDataAttributes::IRDataAttributes(uint64_t a1, applesauce::CF **a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8, float a9)
{
  *a1 = 0;
  *(a1 + 8) = a9;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 17) = 0;
  *(a1 + 20) = a7;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a8;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 200;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 200;
  *(a1 + 112) = 1;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (*a2)
  {
    applesauce::CF::get_absolute_path(*a2, &v12);
    v10 = *a1;
    *a1 = v12;
    v12 = v10;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return a1;
}

void sub_296BB3A3C(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(v3);
  applesauce::CF::URLRef::~URLRef(v1 + 11);
  applesauce::CF::URLRef::~URLRef(v2);
  applesauce::CF::URLRef::~URLRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::get_absolute_path@<X0>(applesauce::CF *this@<X0>, void *a2@<X8>)
{
  result = CFURLCopyAbsoluteURL(this);
  *a2 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFURLGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }
  }

  return result;
}

void sub_296BB3AEC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void IR::IRDataAttributes::~IRDataAttributes(IR::IRDataAttributes *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<std::unique_ptr<IR::FFTFilterKernel<float>>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::unique_ptr<IR::FFTFilterKernel<float>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<IR::FFTFilterKernel<float>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_296BB3ED0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t std::unique_ptr<IR::FFTFilterKernel<float>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IR::FFTFilterKernel<float>::~FFTFilterKernel();
  }

  return result;
}

void std::vector<std::vector<std::list<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

IR::IRDataAttributes *IR::IRDataAttributes::IRDataAttributes(IR::IRDataAttributes *this, const IR::IRDataAttributes *a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *this = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v7;
  *(this + 24) = v6;
  *(this + 8) = v5;
  v8 = *(a2 + 8);
  if (v8)
  {
    CFRetain(*(a2 + 8));
  }

  *(this + 8) = v8;
  *(this + 72) = *(a2 + 72);
  v9 = *(a2 + 11);
  if (v9)
  {
    CFRetain(*(a2 + 11));
  }

  *(this + 11) = v9;
  v10 = *(a2 + 6);
  *(this + 105) = *(a2 + 105);
  *(this + 6) = v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    CFRetain(*(a2 + 16));
  }

  *(this + 16) = v11;
  v12 = *(a2 + 17);
  *(this + 36) = *(a2 + 36);
  *(this + 17) = v12;
  return this;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_296BB4414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *applesauce::CF::URLRef_proxy::URLRef_proxy(void *this, const applesauce::CF::URLRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

const void *applesauce::CF::get_filesystem_path@<X0>(applesauce::CF *this@<X0>, void *a2@<X8>)
{
  result = CFURLCopyFileSystemPath(this, kCFURLPOSIXPathStyle);
  *a2 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }
  }

  return result;
}

void sub_296BB46B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(void *this, const applesauce::CF::ArrayRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

const __CFArray *applesauce::CF::get_size(const __CFArray *this, const __CFArray *a2)
{
  if (this)
  {
    return CFArrayGetCount(this);
  }

  return this;
}

void std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        std::__list_imp<int>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__list_imp<int>::clear(void *result)
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

void sub_296BB48B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::vector<short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      v2[2] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

uint64_t std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IR::DelayLine<float>::~DelayLine();

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

IR::IRDirectivityMagnitude *std::unique_ptr<IR::IRDirectivityMagnitude>::reset[abi:ne200100](IR::IRDirectivityMagnitude **a1, IR::IRDirectivityMagnitude *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IR::IRDirectivityMagnitude::~IRDirectivityMagnitude(result);

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

void IR::IRDirectivityMagnitude::~IRDirectivityMagnitude(IR::IRDirectivityMagnitude *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(void vdsp::DFT_DestroySetup<float>(vdsp::detail_DFT_Setup<float>::type))>>::reset[abi:ne200100](this + 1, 0);
}

void std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(void vdsp::DFT_DestroySetup<float>(vdsp::detail_DFT_Setup<float>::type))>>::reset[abi:ne200100](vDSP_DFT_SetupStruct **a1, vDSP_DFT_SetupStruct *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    vDSP_DFT_DestroySetup(v3);
  }
}

void std::vector<IR::IRDataNode>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 112;
    do
    {
      v6 = *(v5 + 88);
      if (v6)
      {
        *(v5 + 96) = v6;
        operator delete(v6);
      }

      v10 = (v5 + 64);
      std::vector<IR::IRDataNode>::__destroy_vector::operator()[abi:ne200100](&v10);
      v7 = *(v5 + 40);
      if (v7)
      {
        *(v5 + 48) = v7;
        operator delete(v7);
      }

      v8 = *(v5 + 32);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v10 = v5;
      std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](&v10);
      v9 = v5 - 8;
      v5 -= 120;
    }

    while (v9 != a2);
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<IR::IRDataNode>>::destroy[abi:ne200100]<IR::IRDataNode,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    *(a2 + 104) = v3;
    operator delete(v3);
  }

  v6 = (a2 + 72);
  std::vector<IR::IRDataNode>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(a2 + 48);
  if (v4)
  {
    *(a2 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = (a2 + 8);
  std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_296BB4ECC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_296BB5164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
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

uint64_t std::vector<IR::IRDataNode>::__emplace_back_slow_path<IR::IRDataNode>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<IR::IRDataNode>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  std::allocator_traits<std::allocator<IR::IRDataNode>>::construct[abi:ne200100]<IR::IRDataNode,IR::IRDataNode,void,0>(a1, 120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = a1[1];
  v8 = 120 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRDataNode>,IR::IRDataNode*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<IR::IRDataNode>::~__split_buffer(&v13);
  return v12;
}

void sub_296BB53FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<IR::IRDataNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<IR::IRDataNode>>::construct[abi:ne200100]<IR::IRDataNode,IR::IRDataNode,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a2 + 32) = *(a3 + 32);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  result = *(a3 + 96);
  *(a2 + 96) = result;
  *(a2 + 112) = *(a3 + 112);
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  return result;
}

void std::allocator<IR::IRDataNode>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRDataNode>,IR::IRDataNode*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<IR::IRDataNode>>::construct[abi:ne200100]<IR::IRDataNode,IR::IRDataNode,void,0>(a1, a4, v7);
      v7 += 120;
      a4 = v12 + 120;
      v12 += 120;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<IR::IRDataNode>>::destroy[abi:ne200100]<IR::IRDataNode,void,0>(a1, v5);
      v5 += 120;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRDataNode>,IR::IRDataNode*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRDataNode>,IR::IRDataNode*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRDataNode>,IR::IRDataNode*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRDataNode>,IR::IRDataNode*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      std::allocator_traits<std::allocator<IR::IRDataNode>>::destroy[abi:ne200100]<IR::IRDataNode,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<IR::IRDataNode>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<IR::IRDataNode>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<IR::IRDataNode>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    std::allocator_traits<std::allocator<IR::IRDataNode>>::destroy[abi:ne200100]<IR::IRDataNode,void,0>(v5, v4 - 120);
  }
}

void std::vector<IR::IRDataNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<IR::IRDataNode>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<IR::IRDataNode>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<std::allocator<IR::IRDataNode>>::construct[abi:ne200100]<IR::IRDataNode,IR::IRDataNode,void,0>(a1, v8, v10);
      v10 += 120;
      v8 += 120;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRDataNode *,IR::IRDataNode *,IR::IRDataNode *>(&v12, a2, v7, v6);
}

void std::__split_buffer<IR::IRDataNode>::emplace_back<IR::IRDataNode>(void *a1, uint64_t a2)
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
        v9 = 1;
      }

      else
      {
        v9 = 0xDDDDDDDDDDDDDDDELL * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v11[4] = a1[4];
      std::allocator<IR::IRDataNode>::allocate_at_least[abi:ne200100](v10, v9);
    }

    v7 = -120 * ((0xEEEEEEEEEEEEEEEFLL * (v6 >> 3) + 1 + ((0xEEEEEEEEEEEEEEEFLL * (v6 >> 3) + 1) >> 63)) >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRDataNode *,IR::IRDataNode *,IR::IRDataNode *>(v11, v5, v4, v5 - 120 * ((0xEEEEEEEEEEEEEEEFLL * (v6 >> 3) + 1 + ((0xEEEEEEEEEEEEEEEFLL * (v6 >> 3) + 1) >> 63)) >> 1));
    v4 = v8;
    a1[1] += v7;
    a1[2] = v8;
  }

  std::allocator_traits<std::allocator<IR::IRDataNode>>::construct[abi:ne200100]<IR::IRDataNode,IR::IRDataNode,void,0>(a1[4], v4, a2);
  a1[2] += 120;
}

void sub_296BB593C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<IR::IRDataNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<IR::IRDataNode>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRDataNode>,IR::IRDataNode*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRDataNode>,IR::IRDataNode*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRDataNode *,IR::IRDataNode *,IR::IRDataNode *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(a4 + v7 - 120) = *(a3 + v7 - 120);
      std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__vdeallocate((a4 + v7 - 112));
      *(v9 - 112) = *(a3 + v7 - 112);
      *(v9 - 96) = *(a3 + v7 - 96);
      *(v8 - 112) = 0;
      *(v8 - 104) = 0;
      v10 = *(a3 + v7 - 88);
      *(v8 - 96) = 0;
      *(v8 - 88) = 0;
      *(v8 - 80) = 0;
      v11 = *(a4 + v7 - 80);
      *(v9 - 88) = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      std::vector<float>::__move_assign(v9 - 72, (v8 - 72));
      std::vector<IR::IRDataNode>::__vdeallocate((v9 - 48));
      *(v9 - 48) = *(v8 - 48);
      *(v9 - 32) = *(v8 - 32);
      *(v8 - 48) = 0;
      *(v8 - 40) = 0;
      *(v8 - 32) = 0;
      std::vector<float>::__move_assign(v9 - 24, (v8 - 24));
      v7 -= 120;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void std::vector<IR::IRDataNode>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<IR::IRDataNode>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRDataNode *,IR::IRDataNode *,IR::IRDataNode *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  do
  {
    v6 = a4;
    *a4 = *v4;
    v7 = a4 + 8;
    std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__vdeallocate((a4 + 8));
    *(v6 + 8) = *(v4 + 8);
    *(v6 + 24) = *(v4 + 24);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v8 = *(v4 + 32);
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    v9 = *(v6 + 40);
    *(v6 + 32) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    std::vector<float>::__move_assign(v7 + 40, (v4 + 48));
    std::vector<IR::IRDataNode>::__vdeallocate((v7 + 64));
    *(v6 + 72) = *(v4 + 72);
    *(v6 + 88) = *(v4 + 88);
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    std::vector<float>::__move_assign(v7 + 88, (v4 + 96));
    v4 += 120;
    a4 = v7 + 112;
  }

  while (v4 != v5);
  return v5;
}

void **std::__split_buffer<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__vdeallocate(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<IR::FFTFilterKernel<float>>::reset[abi:ne200100](--v3, 0);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<IR::IRCoordinateTree>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<IR::IRCoordinateTree>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      v8 = v5;
      std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v8);
      v6 = *(v5 - 24);
      if (v6)
      {
        *(v5 - 16) = v6;
        operator delete(v6);
      }

      v7 = v5 - 32;
      v5 -= 56;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<IR::IRCoordinateTree>>::destroy[abi:ne200100]<IR::IRCoordinateTree,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 32);
  std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;
    operator delete(v3);
  }
}

uint64_t std::vector<IR::IRCoordinateTree>::__emplace_back_slow_path<IR::IRCoordinateTree>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<IR::IRCoordinateTree>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *&v16 = 56 * v2 + 56;
  v8 = a1[1];
  v9 = 56 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<IR::IRCoordinateTree>::~__split_buffer(&v14);
  return v13;
}

void sub_296BB5F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<IR::IRCoordinateTree>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<IR::IRCoordinateTree>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<IR::IRCoordinateTree>>::destroy[abi:ne200100]<IR::IRCoordinateTree,void,0>(a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator_traits<std::allocator<IR::IRCoordinateTree>>::destroy[abi:ne200100]<IR::IRCoordinateTree,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<IR::IRCoordinateTree>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<IR::IRCoordinateTree>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<IR::IRCoordinateTree>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 56;
    std::allocator_traits<std::allocator<IR::IRCoordinateTree>>::destroy[abi:ne200100]<IR::IRCoordinateTree,void,0>(v5, v4 - 56);
  }
}

float std::__split_buffer<float>::emplace_back<float const&>(void *a1, float *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::allocator<float>::allocate_at_least[abi:ne200100](a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 4;
  return result;
}

uint64_t std::vector<IR::IRCoordinateTree>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v8 + 8) = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      v9 += 56;
      v8 += 56;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRCoordinateTree *,IR::IRCoordinateTree *,IR::IRCoordinateTree *>(&v11, a2, v7, v6);
}

__n128 std::__split_buffer<IR::IRCoordinateTree>::emplace_back<IR::IRCoordinateTree>(void *a1, uint64_t a2)
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
        v9 = 1;
      }

      else
      {
        v9 = 0xDB6DB6DB6DB6DB6ELL * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v13 = a1[4];
      std::allocator<IR::IRCoordinateTree>::allocate_at_least[abi:ne200100](v10, v9);
    }

    v7 = -56 * ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1) >> 63)) >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRCoordinateTree *,IR::IRCoordinateTree *,IR::IRCoordinateTree *>(&v12, v5, v4, v5 - 56 * ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1) >> 63)) >> 1));
    v4 = v8;
    a1[1] += v7;
    a1[2] = v8;
  }

  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = *(a2 + 32);
  *(v4 + 32) = result;
  *(v4 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  a1[2] += 56;
  return result;
}

uint64_t std::vector<IR::IRCoordinateTree>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::IRCoordinateTree>,IR::IRCoordinateTree*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRCoordinateTree *,IR::IRCoordinateTree *,IR::IRCoordinateTree *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(a4 + v7 - 56) = *(a3 + v7 - 56);
      std::vector<float>::__move_assign(a4 + v7 - 48, (a3 + v7 - 48));
      std::vector<IR::IRCoordinateTree>::__vdeallocate((a4 + v7 - 24));
      *(v9 - 24) = *(a3 + v7 - 24);
      *(v9 - 8) = *(a3 + v7 - 8);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      v7 -= 56;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void std::vector<IR::IRCoordinateTree>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<IR::IRCoordinateTree>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<IR::IRCoordinateTree *,IR::IRCoordinateTree *,IR::IRCoordinateTree *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::vector<float>::__move_assign(a4 + 8, (v5 + 8));
    std::vector<IR::IRCoordinateTree>::__vdeallocate((a4 + 32));
    *(a4 + 32) = *(v5 + 32);
    *(a4 + 48) = *(v5 + 48);
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    a4 += 56;
    v5 += 56;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::__split_buffer<IR::IRCoordinateTree>::__construct_at_end_with_size<std::move_iterator<IR::IRCoordinateTree*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = v3 + 56 * a3;
    do
    {
      *v3 = *a2;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 8) = 0;
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v3 += 56;
      a2 += 56;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(result + 16) = v3;
  return result;
}

void std::allocator<IR::IRCoordinates>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<IR::FFTFilterKernel<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<IR::FFTFilterKernel<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<IR::FFTFilterKernel<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::allocator<IR::FFTFilterKernel<float>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

uint64_t std::optional<applesauce::CF::NumberRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::BooleanRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB6C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB6CA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod const*,IR::IRInterpolationMethod const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB6D18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::vector<float>,std::vector<float>,std::vector<float>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

IR::IRData::Implementation *IR::IRData::Implementation::Implementation(IR::IRData::Implementation *this, const IR::IRData::Implementation *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  *(this + 28) = *(a2 + 28);
  *this = v4;
  *(this + 1) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
  v6 = *(a2 + 72);
  *(this + 11) = 0;
  *(this + 72) = v6;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType*,IR::IRCoordinateType*>(this + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 2);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 136, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType*,IR::IRCoordinateType*>(this + 160, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 2);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 184, *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 2);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod*,IR::IRInterpolationMethod*>(this + 208, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 2);
  v7 = *(a2 + 232);
  v8 = *(a2 + 248);
  *(this + 66) = *(a2 + 66);
  *(this + 248) = v8;
  *(this + 232) = v7;
  v9 = *(a2 + 35);
  *(this + 34) = *(a2 + 34);
  *(this + 35) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 36);
  if (v10)
  {
    CFRetain(*(a2 + 36));
  }

  *(this + 36) = v10;
  v11 = *(a2 + 37);
  if (v11)
  {
    CFRetain(*(a2 + 37));
  }

  *(this + 37) = v11;
  v12 = *(a2 + 38);
  if (v12)
  {
    CFRetain(*(a2 + 38));
  }

  *(this + 38) = v12;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  std::vector<IR::FFTFilterKernel<float>>::__init_with_size[abi:ne200100]<IR::FFTFilterKernel<float>*,IR::FFTFilterKernel<float>*>(this + 312, *(a2 + 39), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 39)) >> 3));
  *(this + 336) = *(a2 + 336);
  IR::IRDataAttributes::IRDataAttributes((this + 344), (a2 + 344));
  v13 = *(a2 + 62);
  *(this + 126) = *(a2 + 126);
  *(this + 62) = v13;
  *(this + 64) = 0;
  *(this + 66) = 0;
  *(this + 65) = 0;
  std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__init_with_size[abi:ne200100]<std::shared_ptr<IR::VBAPTriangulationKernel>*,std::shared_ptr<IR::VBAPTriangulationKernel>*>(this + 512, *(a2 + 64), *(a2 + 65), (*(a2 + 65) - *(a2 + 64)) >> 4);
  return this;
}

void sub_296BB6FC0(_Unwind_Exception *a1, void **a2, ...)
{
  va_start(va, a2);
  IR::IRDataAttributes::~IRDataAttributes((v2 + 344));
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](va);
  applesauce::CF::DictionaryRef::~DictionaryRef((v2 + 304));
  applesauce::CF::DictionaryRef::~DictionaryRef((v2 + 296));
  applesauce::CF::StringRef::~StringRef((v2 + 288));
  v10 = *(v2 + 280);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *v8;
  if (*v8)
  {
    *(v2 + 216) = v11;
    operator delete(v11);
  }

  v12 = *v7;
  if (*v7)
  {
    *(v2 + 192) = v12;
    operator delete(v12);
  }

  v13 = *v6;
  if (*v6)
  {
    *(v2 + 168) = v13;
    operator delete(v13);
  }

  v14 = *v5;
  if (*v5)
  {
    *(v2 + 144) = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    *(v2 + 120) = v15;
    operator delete(v15);
  }

  v16 = *v3;
  if (*v3)
  {
    *(v2 + 96) = v16;
    operator delete(v16);
  }

  v17 = *a2;
  if (*a2)
  {
    *(v2 + 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB7110(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB718C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<IR::FFTFilterKernel<float>>::__init_with_size[abi:ne200100]<IR::FFTFilterKernel<float>*,IR::FFTFilterKernel<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::FFTFilterKernel<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB7210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<IR::FFTFilterKernel<float>>,IR::FFTFilterKernel<float>*,IR::FFTFilterKernel<float>*,IR::FFTFilterKernel<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    IR::FFTFilterKernel<float>::FFTFilterKernel();
  }

  return a4;
}

void sub_296BB7290(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    IR::FFTFilterKernel<float>::~FFTFilterKernel();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__init_with_size[abi:ne200100]<std::shared_ptr<IR::VBAPTriangulationKernel>*,std::shared_ptr<IR::VBAPTriangulationKernel>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BB731C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>,std::shared_ptr<IR::VBAPTriangulationKernel>*,std::shared_ptr<IR::VBAPTriangulationKernel>*,std::shared_ptr<IR::VBAPTriangulationKernel>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>,std::shared_ptr<IR::VBAPTriangulationKernel>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>,std::shared_ptr<IR::VBAPTriangulationKernel>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>,std::shared_ptr<IR::VBAPTriangulationKernel>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>,std::shared_ptr<IR::VBAPTriangulationKernel>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C25F9C0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C25F9D0](v13);
  return a1;
}

void sub_296BB7604(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C25F9D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296BB75E4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      std::string::basic_string[abi:ne200100](__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_296BB77D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_296BB7954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(uint64_t a1)
{
  result = CFArrayCreate(0, *a1, (*(a1 + 8) - *a1) >> 3, MEMORY[0x29EDB9000]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_296BB7A50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<void const*>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(a1) <= a2)
  {
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_7:
    v9 = 0;
    *a3 = 0;
    goto LABEL_8;
  }

  *a3 = v7;
  v9 = 1;
LABEL_8:
  a3[8] = v9;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[13]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[13]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[13]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB7CC8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB7C74);
}

uint64_t applesauce::CF::convert_as<float,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<float>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = COERCE_UNSIGNED_INT(CFBooleanGetValue(a1));
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

unint64_t applesauce::CF::details::number_convert_as<float>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_24;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_22;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v16 = SLOBYTE(valuePtr);
      goto LABEL_20;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v14, v15, &valuePtr);
      v16 = SLOWORD(valuePtr);
LABEL_20:
      v17 = v16;
      goto LABEL_25;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_24:
      Value = CFNumberGetValue(v12, v13, &valuePtr);
      v17 = SLODWORD(valuePtr);
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_22;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_22;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_26;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_22;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_22:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v17 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v10, v11, &valuePtr);
      v17 = valuePtr;
LABEL_25:
      v9 = LODWORD(v17);
LABEL_26:
      v18 = v9 | 0x100000000;
      if (!Value)
      {
        v18 = 0;
      }

      v19 = v18 & 0x100000000;
      break;
    default:
      v19 = 0;
      LODWORD(v18) = 0;
      break;
  }

  return v18 | v19;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[11]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[11]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[11]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB80B8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB8064);
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

const __CFDictionary *applesauce::CF::details::at_key<__CFString const*>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return CFDictionaryGetValue(result, v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::DictionaryRef::from_get(ValueAtIndex, a3);
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<unsigned int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<unsigned int>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    Value = CFBooleanGetValue(a1);
    v4 = 0x100000000;
  }

  else
  {
    Value = 0;
    v4 = 0;
  }

  return v4 | Value;
}

uint64_t applesauce::CF::details::number_convert_as<unsigned int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_296C19AF0);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_296C19B00), xmmword_296C19B10);
  return v18.i64[0] | v14 | v18.i64[1];
}

void std::__shared_ptr_emplace<std::vector<IR::IRDataNode>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DEBF20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[14]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[14]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[14]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB87B8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB8764);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[21]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[21]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[21]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB88F0(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB889CLL);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[13]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[13]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[18]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[18]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[18]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB8B54(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB8B00);
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const __CFDictionary *applesauce::CF::details::at_key<__CFString const*&>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return CFDictionaryGetValue(result, v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float &>(void *a1, CFTypeRef *a2, int *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BB8CC4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int &>(void *a1, CFTypeRef *a2, int *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BB8DA8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

const __CFDictionary *applesauce::CF::details::has_key<__CFString const*>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return (CFDictionaryContainsKey(result, v2) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t applesauce::CF::details::find_at_key<unsigned int,char const(&)[22]>(const __CFDictionary *a1, const UInt8 *a2)
{
  v2 = applesauce::CF::details::at_key<char const(&)[22]>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<unsigned int,0>(v2);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[22]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB8F5C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB8F08);
}

uint64_t applesauce::CF::convert_to<unsigned int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<unsigned int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[12]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[12]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[12]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB9110(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB90BCLL);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[20]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[20]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[20]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB9248(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB91F4);
}

void applesauce::CF::at_or<std::string,char const(&)[18]>(const __CFDictionary *a1@<X0>, const UInt8 *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<std::string,char const(&)[18]>(a1, a2, __p);
  if ((v8 & 1) == 0)
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    return;
  }

  if (SHIBYTE(v7) < 0)
  {
    std::string::__init_copy_ctor_external(a4, __p[0], __p[1]);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *__p;
    a4->__r_.__value_.__r.__words[2] = v7;
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<std::string,char const(&)[18]>@<X0>(const __CFDictionary *a1@<X0>, const UInt8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = applesauce::CF::details::at_key<char const(&)[18]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<std::string,0>(result, a3);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

CFTypeID applesauce::CF::convert_as<std::string,0>@<X0>(CFTypeID result@<X0>, uint64_t a2@<X8>)
{
  if (result && (v3 = result, TypeID = CFStringGetTypeID(), result = CFGetTypeID(v3), TypeID == result))
  {
    result = applesauce::CF::details::CFString_get_value<false>(v3, &v5);
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

_BYTE *applesauce::CF::details::CFString_get_value<false>@<X0>(const __CFString *a1@<X0>, UInt8 *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v9.location = 0;
  v9.length = Length;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  std::string::basic_string[abi:ne200100](a2, maxBufLen, 0);
  if ((a2[23] & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v10.location = 0;
  v10.length = Length;
  return CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void applesauce::CF::at_or<std::string,char const(&)[12]>(const __CFDictionary *a1@<X0>, const UInt8 *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<std::string,char const(&)[12]>(a1, a2, __p);
  if ((v8 & 1) == 0)
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    return;
  }

  if (SHIBYTE(v7) < 0)
  {
    std::string::__init_copy_ctor_external(a4, __p[0], __p[1]);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *__p;
    a4->__r_.__value_.__r.__words[2] = v7;
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<std::string,char const(&)[12]>@<X0>(const __CFDictionary *a1@<X0>, const UInt8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = applesauce::CF::details::at_key<char const(&)[12]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<std::string,0>(result, a3);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void applesauce::CF::at_or<std::string,char const(&)[5]>(const __CFDictionary *a1@<X0>, const UInt8 *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<std::string,char const(&)[5]>(a1, a2, __p);
  if ((v8 & 1) == 0)
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    return;
  }

  if (SHIBYTE(v7) < 0)
  {
    std::string::__init_copy_ctor_external(a4, __p[0], __p[1]);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *__p;
    a4->__r_.__value_.__r.__words[2] = v7;
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<std::string,char const(&)[5]>@<X0>(const __CFDictionary *a1@<X0>, const UInt8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = applesauce::CF::details::at_key<char const(&)[5]>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<std::string,0>(result, a3);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[5]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BB9858(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BB9804);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<float,char const(&)[12]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[12]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[14]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[14]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

__n128 applesauce::CF::at_or<std::vector<float>,__CFString const*&>@<Q0>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<std::vector<float>,__CFString const*&>(a1, a2, &__p);
  if (v9 == 1)
  {
    a4->n128_u64[0] = 0;
    a4->n128_u64[1] = 0;
    a4[1].n128_u64[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a4, __p, v8, (v8 - __p) >> 2);
    if (v9)
    {
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    result = *a3;
    *a4 = *a3;
    a4[1].n128_u64[0] = a3[1].n128_u64[0];
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
  }

  return result;
}

void applesauce::CF::details::find_at_key_or_optional<std::vector<float>,__CFString const*&>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (v4)
  {

    applesauce::CF::convert_as<std::vector<float>,0>(v4, a3);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }
}

void applesauce::CF::convert_as<std::vector<float>,0>(const __CFArray *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(a1)))
  {

    applesauce::CF::details::CFArray_get_value_as<std::vector<float>>(a1, a2);
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }
}

void applesauce::CF::details::CFArray_get_value_as<std::vector<float>>(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  memset(&v18, 0, sizeof(v18));
  std::vector<IR::IRDataType>::reserve(&v18, Count);
  if (Count <= 0)
  {
    end = v18.__end_;
LABEL_19:
    value = v18.__end_cap_.__value_;
    *a2 = v18.__begin_;
    *(a2 + 8) = end;
    *(a2 + 16) = value;
    *(a2 + 24) = 1;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      v7 = applesauce::CF::convert_as<float,0>(ValueAtIndex);
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }

      v8 = v18.__end_;
      if (v18.__end_ >= v18.__end_cap_.__value_)
      {
        begin = v18.__begin_;
        v11 = v18.__end_ - v18.__begin_;
        v12 = v18.__end_ - v18.__begin_;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v14 = v18.__end_cap_.__value_ - v18.__begin_;
        if ((v18.__end_cap_.__value_ - v18.__begin_) >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::allocator<float>::allocate_at_least[abi:ne200100](&v18, v15);
        }

        *(4 * v12) = v7;
        end = (4 * v12 + 4);
        memcpy(0, begin, v11);
        v16 = v18.__begin_;
        v18.__begin_ = 0;
        v18.__end_ = end;
        v18.__end_cap_.__value_ = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v18.__end_ = v7;
        end = v8 + 1;
      }

      v18.__end_ = end;
      if ((Count & 0x7FFFFFFF) == ++v5)
      {
        goto LABEL_19;
      }
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    if (v18.__begin_)
    {
      v18.__end_ = v18.__begin_;
      operator delete(v18.__begin_);
    }
  }
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*&>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*>(const __CFDictionary *a1, const void **a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFNumber *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = a1;
  TypeID = CFBooleanGetTypeID();
  if (TypeID != CFGetTypeID(v1))
  {
    v4 = CFNumberGetTypeID();
    if (v4 == CFGetTypeID(v1))
    {
      LOWORD(a1) = applesauce::CF::details::number_convert_as<BOOL>(v1);
      v3 = BYTE1(a1);
      return a1 | (v3 << 8);
    }

    LOBYTE(a1) = 0;
LABEL_7:
    v3 = 0;
    return a1 | (v3 << 8);
  }

  LOBYTE(a1) = CFBooleanGetValue(v1) != 0;
  v3 = 1;
  return a1 | (v3 << 8);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[22]>(const __CFDictionary *a1, const UInt8 *a2)
{
  result = applesauce::CF::details::at_key<char const(&)[22]>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::StringRef,char const* const&>(const __CFDictionary *a1@<X0>, const char **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,char const* const&>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,char const* const&>(const __CFDictionary *a1@<X0>, const char **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<char const* const&>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

const UInt8 *applesauce::CF::details::at_key<char const* const&>(const __CFDictionary *a1, const char **a2)
{
  Value = *a2;
  v4 = strlen(*a2);
  if (!Value)
  {
    v5 = 0;
    cf = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  Value = CFDictionaryGetValue(a1, v5);
  v5 = cf;
  if (cf)
  {
LABEL_8:
    CFRelease(v5);
  }

LABEL_9:
  if (!a1)
  {
    return 0;
  }

  return Value;
}

void sub_296BBA0B8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BBA064);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_296BBA1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<std::string,char const* const&>(const __CFDictionary *a1@<X0>, const char **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<std::string,char const* const&>(a1, a2, __p);
  if ((v8 & 1) == 0)
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    return;
  }

  if (SHIBYTE(v7) < 0)
  {
    std::string::__init_copy_ctor_external(a4, __p[0], __p[1]);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *__p;
    a4->__r_.__value_.__r.__words[2] = v7;
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<std::string,char const* const&>@<X0>(const __CFDictionary *a1@<X0>, const char **a2@<X1>, _BYTE *a3@<X8>)
{
  result = applesauce::CF::details::at_key<char const* const&>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<std::string,0>(result, a3);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void std::vector<std::vector<std::vector<float>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::vector<float>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void std::vector<std::vector<std::vector<float>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

__n128 std::__function::__func<void IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(std::vector<std::vector<float>> &,std::vector<std::vector<float>> &,std::vector<std::vector<std::vector<float>>> &)::{lambda(IR::IRDataNode &,unsigned int)#1},std::allocator<void IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(std::vector<std::vector<float>> &,std::vector<std::vector<float>> &,std::vector<std::vector<std::vector<float>>> &)::{lambda(IR::IRDataNode &,unsigned int)#1}>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC038;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(std::vector<std::vector<float>> &,std::vector<std::vector<float>> &,std::vector<std::vector<std::vector<float>>> &)::{lambda(IR::IRDataNode &,unsigned int)#1}::operator()(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 24);
  *(**a1 + 4 * a3) = *a2;
  if (*(a2 + 16) != *(a2 + 8))
  {
    std::vector<std::vector<float>>::push_back[abi:ne200100](*(a1 + 8), (a2 + 48));
    std::vector<std::vector<float>>::push_back[abi:ne200100](*(a1 + 16), *a1);
    std::vector<std::vector<float>>::vector[abi:ne200100](v10, *(v3 + 32));
    if (*(v3 + 32))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = **(*(a2 + 8) + 8 * v7);
        std::vector<float>::resize((v10[0] + v6), *(v3 + 8));
        v9 = *(v3 + 8);
        if (v9)
        {
          memmove(*(v10[0] + v6), v8, 4 * v9);
        }

        ++v7;
        v6 += 24;
      }

      while (v7 < *(v3 + 32));
    }

    std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](*(a1 + 32), v10);
    v11 = v10;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

void sub_296BBA760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void **std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

uint64_t std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_296BBAA70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(std::vector<std::vector<float>> &,std::vector<std::vector<float>> &,std::vector<std::vector<std::vector<float>>> &)::{lambda(IR::IRDataNode &,unsigned int)#2},std::allocator<void IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(std::vector<std::vector<float>> &,std::vector<std::vector<float>> &,std::vector<std::vector<std::vector<float>>> &)::{lambda(IR::IRDataNode &,unsigned int)#2}>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC080;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

char **IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(std::vector<std::vector<float>> &,std::vector<std::vector<float>> &,std::vector<std::vector<std::vector<float>>> &)::{lambda(IR::IRDataNode &,unsigned int)#2}::operator()(char **result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = *result;
  v6 = *(*result + 14);
  if (a3 < ((*(*result + 15) - v6) >> 2))
  {
    *(*result[1] + 4 * *(v6 + 4 * a3)) = *a2;
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = *(v7 + 40);
    if (*(v7 + 48) != v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v4[1];
        v12 = *v11;
        *(*v11 + 4 * v5[126]) = *(*(v7 + 64) + 4 * v9);
        *(v12 + 4 * v5[125]) = *(v8 + 4 * v9);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v4[2], v11);
        std::vector<std::vector<float>>::vector[abi:ne200100](v18, v5[8]);
        if (v5[8])
        {
          v13 = 0;
          v14 = 0;
          v15 = 24 * v9;
          do
          {
            v16 = **(*(*(*(a2 + 32) + 88) + v15) + 8 * v14);
            std::vector<float>::resize((v18[0] + v13), v5[2]);
            v17 = v5[2];
            if (v17)
            {
              memmove(*(v18[0] + v13), v16, 4 * v17);
            }

            ++v14;
            v13 += 24;
          }

          while (v14 < v5[8]);
        }

        std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](v4[3], v18);
        v19 = v18;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
        v7 = *(a2 + 32);
        v8 = *(v7 + 40);
        v9 = ++v10;
      }

      while (v10 < ((*(v7 + 48) - v8) >> 2));
    }

    return std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(v4[4], *(v4[4] + 1), *(v7 + 112), *(v7 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 120) - *(v7 + 112)) >> 3));
  }

  return result;
}

void sub_296BBAD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

char **std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(void *a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<float>>::__move_range(a1, a2, a1[1], (a2 + 24 * a5));
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::vector<float>>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    std::__split_buffer<std::vector<float>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<float>*>>(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    std::__split_buffer<std::vector<float>>::~__split_buffer(&v27);
    return v19;
  }

  return v5;
}

void std::vector<std::vector<float>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = a4 - v4;
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      std::vector<float>::__move_assign(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

uint64_t std::__split_buffer<std::vector<float>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<float>*>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],std::vector<std::vector<std::vector<float>>> &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  *(a1 + 1) = applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<float>>>(a3);
  return a1;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<std::vector<float>>>(uint64_t **a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v14, v2);
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 3)
  {
    memset(v13, 0, sizeof(v13));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, *v4, v4[1], 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3));
    v5 = v15;
    if (v15 >= v16)
    {
      v7 = (v15 - v14) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v8 = (v16 - v14) >> 2;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (v16 - v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      v20 = &v14;
      if (v9)
      {
        std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](&v14, v9);
      }

      v10 = (8 * v7);
      v17[0] = 0;
      v17[1] = v10;
      v18 = v10;
      v19 = 0;
      *v10 = applesauce::CF::details::make_CFArrayRef<std::vector<float>>(v13);
      v18 = v10 + 1;
      std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(&v14, v17);
      v6 = v15;
      std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(v17);
    }

    else
    {
      *v5 = applesauce::CF::details::make_CFArrayRef<std::vector<float>>(v13);
      v6 = v5 + 1;
    }

    v15 = v6;
    v17[0] = v13;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(&v14);
  v17[0] = &v14;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](v17);
  return v11;
}

void sub_296BBB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::ArrayRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_296BBB544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_296BBB5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BBB780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<float>>(uint64_t **a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v16, v2);
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 3)
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
    v5 = v17;
    if (v17 >= v18)
    {
      v7 = (v17 - v16) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v8 = (v18 - v16) >> 2;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      v22 = &v16;
      if (v9)
      {
        std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](&v16, v9);
      }

      v10 = (8 * v7);
      v19[0] = 0;
      v19[1] = v10;
      v20 = v10;
      v21 = 0;
      *v10 = applesauce::CF::details::make_CFArrayRef<float>(&__p);
      v20 = v10 + 1;
      std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(&v16, v19);
      v6 = v17;
      std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(v19);
    }

    else
    {
      *v5 = applesauce::CF::details::make_CFArrayRef<float>(&__p);
      v6 = v5 + 1;
    }

    v17 = v6;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(&v16);
  v19[0] = &v16;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](v19);
  return v11;
}

void sub_296BBB918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a13;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<float>(int **a1)
{
  v2 = a1[1] - *a1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v11, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v12;
    do
    {
      v14 = *v3;
      if (v5 >= v13)
      {
        v6 = (v5 - v11) >> 3;
        if ((v6 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v7 = (v13 - v11) >> 2;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v13 - v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v8 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v18 = &v11;
        if (v8)
        {
          std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](&v11, v8);
        }

        v15[0] = 0;
        v15[1] = (8 * v6);
        v16 = 8 * v6;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>(&v11, (8 * v6), &v14);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v11, v15);
        v5 = v12;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>(&v11, v5++, &v14);
      }

      v12 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v9 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v11);
  v15[0] = &v11;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v9;
}

void sub_296BBBAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::NumberRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_296BBBB8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_296BBBC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>(uint64_t a1, CFNumberRef *a2, int *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return result;
}

void std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],std::vector<std::vector<float>> &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  *(a1 + 1) = applesauce::CF::details::make_CFArrayRef<std::vector<float>>(a3);
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],std::vector<std::vector<float>> &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  *(a1 + 1) = applesauce::CF::details::make_CFArrayRef<std::vector<float>>(a3);
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_296BBC048(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],std::vector<unsigned int> &>(applesauce::CF::TypeRef *a1, char *a2, int **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  *(a1 + 1) = applesauce::CF::details::make_CFArrayRef<unsigned int>(a3);
  return a1;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<unsigned int>(int **a1)
{
  v2 = a1[1] - *a1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v11, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v12;
    do
    {
      v14 = *v3;
      if (v5 >= v13)
      {
        v6 = (v5 - v11) >> 3;
        if ((v6 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v7 = (v13 - v11) >> 2;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v13 - v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v8 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v18 = &v11;
        if (v8)
        {
          std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](&v11, v8);
        }

        v15[0] = 0;
        v15[1] = (8 * v6);
        v16 = 8 * v6;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(&v11, (8 * v6), &v14);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v11, v15);
        v5 = v12;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(&v11, v5++, &v14);
      }

      v12 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v9 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v11);
  v15[0] = &v11;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v9;
}

void sub_296BBC228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(uint64_t a1, CFNumberRef *a2, int *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return result;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],std::vector<unsigned int> &>(applesauce::CF::TypeRef *a1, char *a2, int **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  *(a1 + 1) = applesauce::CF::details::make_CFArrayRef<unsigned int>(a3);
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[19],std::vector<float> &>(applesauce::CF::TypeRef *a1, char *a2, int **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  *(a1 + 1) = applesauce::CF::details::make_CFArrayRef<float>(a3);
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[29],std::vector<float> const&>(applesauce::CF::TypeRef *a1, char *a2, int **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  *(a1 + 1) = applesauce::CF::details::make_CFArrayRef<float>(a3);
  return a1;
}

__n128 std::__function::__func<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_0,std::allocator<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_0,std::allocator<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::operator()(uint64_t result, uint64_t a2, unsigned int *a3)
{
  *(**(result + 8) + 4 * *a3) = *a2;
  if (*(a2 + 16) != *(a2 + 8))
  {
    v5 = result;
    v6 = **(result + 16);
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = **(v5 + 24);
        if (v8)
        {
          memmove((**(v5 + 32) + 4 * (v8 * i)), **(*(a2 + 8) + 8 * i), 4 * v8);
          v6 = **(v5 + 16);
        }
      }
    }

    std::vector<std::vector<float>>::push_back[abi:ne200100](*(v5 + 40), *(v5 + 32));
    std::vector<std::vector<float>>::push_back[abi:ne200100](*(v5 + 48), (a2 + 48));
    v9 = *(v5 + 56);
    v10 = *(v5 + 8);

    return std::vector<std::vector<float>>::push_back[abi:ne200100](v9, v10);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_1,std::allocator<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_1>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC6E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_1,std::allocator<IR::IRData::Implementation::createSerializedIRData(IR::IRData const&,BOOL,IR::IRCoeffFormat)::$_1>,void ()(IR::IRDataNode &,unsigned int)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = *(**(a1 + 8) + 112);
  if (v5 < (*(**(a1 + 8) + 120) - v6) >> 2)
  {
    *(**(a1 + 16) + 4 * *(v6 + 4 * v5)) = *a2;
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = *(v7 + 40);
    if (*(v7 + 48) != v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(*(v7 + 64) + 4 * v9);
        v12 = *(a1 + 16);
        v13 = **(a1 + 8);
        v14 = *v12;
        *(*v12 + 4 * *(v13 + 504)) = v11;
        *(v14 + 4 * *(v13 + 500)) = *(v8 + 4 * v9);
        std::vector<std::vector<float>>::push_back[abi:ne200100](*(a1 + 24), v12);
        v15 = **(a1 + 32);
        if (v15)
        {
          v16 = 0;
          v17 = 24 * v9;
          do
          {
            v18 = **(a1 + 40);
            if (v18)
            {
              memmove((**(a1 + 48) + 4 * (v18 * v16)), **(*(*(*(a2 + 32) + 88) + v17) + 8 * v16), 4 * v18);
              v15 = **(a1 + 32);
            }

            ++v16;
          }

          while (v16 < v15);
        }

        std::vector<std::vector<float>>::push_back[abi:ne200100](*(a1 + 56), *(a1 + 48));
        v7 = *(a2 + 32);
        v8 = *(v7 + 40);
        v9 = ++v10;
      }

      while (v10 < ((*(v7 + 48) - v8) >> 2));
    }

    std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(*(a1 + 64), *(*(a1 + 64) + 8), *(v7 + 112), *(v7 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 120) - *(v7 + 112)) >> 3));
    v19 = **(a2 + 32);
    v38 = 0;
    v39 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v19 + 80), *(v19 + 88), (*(v19 + 88) - *(v19 + 80)) >> 2);
    v20 = __p;
    v21 = (((v38 - __p) >> 2) / 3uLL);
    if ((((v38 - __p) >> 2) / 3uLL))
    {
      v22 = *(a2 + 32);
      v23 = (v22[6] - v22[5]) >> 2;
      if (0xAAAAAAAAAAAAAAABLL * ((v22[12] - v22[11]) >> 3) >= v23 + (((v38 - __p) >> 2) / 3uLL))
      {
        v24 = 0;
        do
        {
          v25 = *(__p + (3 * v24));
          v26 = *(__p + (3 * v24 + 1));
          v27 = *(__p + (3 * v24 + 2));
          v28 = atan2f(v26, v25) * 57.296;
          v29 = hypotf(v25, v26);
          v30 = atan2f(-v27, v29);
          v31 = *(a1 + 16);
          v32 = **(a1 + 8);
          v33 = *v31;
          *(*v31 + 4 * *(v32 + 504)) = v30 * -57.296;
          *(v33 + 4 * *(v32 + 500)) = v28;
          std::vector<std::vector<float>>::push_back[abi:ne200100](*(a1 + 24), v31);
          v34 = **(a1 + 32);
          if (v34)
          {
            for (i = 0; i < v34; ++i)
            {
              v36 = **(a1 + 40);
              if (v36)
              {
                memmove((**(a1 + 48) + 4 * (v36 * i)), **(*(*(*(a2 + 32) + 88) + 24 * (v24 + v23)) + 8 * i), 4 * v36);
                v34 = **(a1 + 32);
              }
            }
          }

          std::vector<std::vector<float>>::push_back[abi:ne200100](*(a1 + 56), *(a1 + 48));
          ++v24;
        }

        while (v24 != v21);
        v20 = __p;
      }
    }

    if (v20)
    {
      v38 = v20;
      operator delete(v20);
    }
  }
}

void sub_296BBC9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],std::string>(applesauce::CF::TypeRef *a1, char *a2, uint64_t a3)
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

void sub_296BBCAB4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_296BBCB80(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[14],int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_296BBCC4C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],float>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_296BBCD18(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],std::string>(applesauce::CF::TypeRef *a1, char *a2, uint64_t a3)
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

void sub_296BBCDF0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],unsigned int &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_296BBCEBC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],char const(&)[8]>(applesauce::CF::TypeRef *a1, char *a2, char *a3)
{
  v5 = applesauce::CF::TypeRef::TypeRef(a1, a2);
  applesauce::CF::TypeRef::TypeRef((v5 + 8), a3);
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[20],unsigned long &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
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

void sub_296BBCFD4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],float &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_296BBD0A0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],unsigned int &>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
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

void sub_296BBD16C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(int a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

void *_ZNSt3__120__shared_ptr_emplaceIN2IR23VBAPTriangulationKernelENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEBFC8;
  IR::VBAPTriangulationKernel::VBAPTriangulationKernel((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<IR::VBAPTriangulationKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DEBFC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

void std::__shared_ptr_emplace<IR::VBAPTriangulationKernel>::__on_zero_shared(uint64_t a1)
{
  v6 = (a1 + 208);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 136);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 112);
  std::vector<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

IR::VBAPTriangulationKernel *IR::VBAPTriangulationKernel::VBAPTriangulationKernel(IR::VBAPTriangulationKernel *this)
{
  *(this + 1) = 0u;
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 17) = 0xFFFFFFFFLL;
  IR::IRCoordinates::IRCoordinates((this + 144));
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  return this;
}

void sub_296BBD48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 112);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 88);
  std::vector<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v13 = *(v10 + 64);
  if (v13)
  {
    *(v10 + 72) = v13;
    operator delete(v13);
  }

  IR::VBAPTriangulationKernel::VBAPTriangulationKernel((v10 + 40), v11, v10);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

__n128 std::__function::__func<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_0,std::allocator<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC728;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_0,std::allocator<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::operator()(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = *(a1[1] + 88);
  if (v5 < (*(a1[1] + 96) - v6) >> 2)
  {
    IR::IRCoordinates::set(a1[2], *(v6 + 4 * v5), *a2);
  }

  if (*(a2 + 16) != *(a2 + 8))
  {
    v8 = a1[2];
    v7 = a1[3];

    std::vector<IR::IRCoordinates>::push_back[abi:ne200100](v7, v8);
  }
}

void std::vector<IR::IRCoordinates>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    v10 = v9 + 1;
    if (v9 + 1 > 0x71C71C71C71C71CLL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 2);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x38E38E38E38E38ELL)
    {
      v12 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<IR::IRCoordinates>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = 36 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 8);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 36 * v9 + 36;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 8);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 36;
  }

  *(a1 + 8) = v8;
}

__n128 std::__function::__func<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_1,std::allocator<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_1>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC770;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_1,std::allocator<IR::IRData::Implementation::createSizeDimension(std::vector<float> const&,applesauce::CF::ArrayRef,IR::DynamicSizeDesignGrid)::$_1>,void ()(IR::IRDataNode &,unsigned int)>::operator()(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = a1[1];
  v7 = *(v6 + 88);
  if (v5 < (*(v6 + 96) - v7) >> 2)
  {
    IR::IRCoordinates::set(a1[2], *(v7 + 4 * v5), *a2);
  }

  v8 = *(a2 + 32);
  if (v8 && v8[6] != v8[5])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      IR::IRCoordinates::set(a1[2], *(*(v6 + 88) + 4 * *(v6 + 504)), *(v8[8] + 4 * v9));
      IR::IRCoordinates::set(a1[2], *(*(v6 + 88) + 4 * *(v6 + 500)), *(*(*(a2 + 32) + 40) + 4 * v9));
      std::vector<IR::IRCoordinates>::push_back[abi:ne200100](a1[3], a1[2]);
      v9 = v10;
      v8 = *(a2 + 32);
      ++v10;
    }

    while (v9 < (v8[6] - v8[5]) >> 2);
  }
}

uint64_t applesauce::CF::details::at_as<unsigned int>(const __CFArray *a1, unint64_t a2)
{
  if (a1 && CFArrayGetCount(a1) > a2 && (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) != 0)
  {
    v5 = applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex);
    v6 = v5 & 0xFF00000000;
    v7 = v5 & 0xFFFFFF00;
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = 0;
  }

  return v8 | v6 | v7;
}

float applesauce::CF::details::at_to<float>(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<float,0>(ValueAtIndex);
}

float applesauce::CF::convert_to<float,0>(const __CFNumber *a1)
{
  v1 = applesauce::CF::convert_as<float,0>(a1);
  if ((v1 & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return *&v1;
}

uint64_t std::__function::__func<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_0,std::allocator<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DEC7B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_0,std::allocator<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::operator()(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 72);
  v4 = *(a2 + 80);
  if (v3 != v4)
  {
    v5 = *a3;
    v6 = *(result + 8);
    v7 = v6[14];
    if (((v6[15] - v7) >> 2) - 1 > v5)
    {
      v8 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v3) >> 3);
      v9 = *(v7 + 4 * (v5 + 1));
      v10 = v6[23];
      if (v8 > *(v10 + 4 * v9))
      {
        *(v10 + 4 * v9) = v8;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_1,std::allocator<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_1>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DEC800;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_1,std::allocator<IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(void)::$_1>,void ()(IR::IRDataNode &,unsigned int)>::operator()(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 72);
  v4 = *(a2 + 80);
  if (v3 != v4)
  {
    v5 = *a3;
    v6 = *(*(result + 8) + 184);
    if (((*(*(result + 8) + 192) - v6) >> 2) - 1 > v5)
    {
      v7 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v3) >> 3);
      if (v7 > *(v6 + 4 * (v5 + 1)))
      {
        *(v6 + 4 * (v5 + 1)) = v7;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<IR::IRData::Implementation::estimateAverageDelay(void)::$_0,std::allocator<IR::IRData::Implementation::estimateAverageDelay(void)::$_0>,void ()(IR::IRDataNode const&,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC848;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<IR::IRData::Implementation::estimateAverageDelay(void)::$_0,std::allocator<IR::IRData::Implementation::estimateAverageDelay(void)::$_0>,void ()(IR::IRDataNode const&,unsigned int)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56) - v2;
  if (v3)
  {
    v4 = v3 >> 2;
    v6 = *(result + 8);
    v5 = *(result + 16);
    v7 = *v6;
    v8 = *v5;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v9 = v4;
    do
    {
      v10 = *v2++;
      v7 = v7 + v10;
      *v6 = v7;
      --v9;
    }

    while (v9);
    *v5 = v8 + v4;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<IR::IRData::Implementation::computeAverageIR(void)::$_0,std::allocator<IR::IRData::Implementation::computeAverageIR(void)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1DEC890;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<IR::IRData::Implementation::computeAverageIR(void)::$_0,std::allocator<IR::IRData::Implementation::computeAverageIR(void)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 16) - *(a2 + 8)) >> 3;
  if (*(*(result + 8) + 32) < v2)
  {
    LODWORD(v2) = *(*(result + 8) + 32);
  }

  if (v2)
  {
    IR::FFTFilterKernel<float>::accumulate();
  }

  return result;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,std::string const&>(const __CFDictionary *a1@<X0>, const __CFString *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<std::string const&>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFBooleanGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

const void *applesauce::CF::details::at_key<std::string const&>(const __CFDictionary *a1, CFStringRef a2)
{
  v3 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (!a2)
  {
    cf = 0;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  info = v3->info;
  if ((data_high & 0x80u) == 0)
  {
    v7 = data_high;
  }

  else
  {
    v7 = info;
  }

  a2 = CFStringCreateWithBytes(0, a2, v7, 0x8000100u, 0);
  cf = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_9:
  Value = CFDictionaryGetValue(a1, a2);
  a2 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(a2);
  }

LABEL_14:
  if (!a1)
  {
    return 0;
  }

  return Value;
}

void sub_296BBE0A8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BBE054);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,std::string const&>(const __CFDictionary *a1@<X0>, const __CFString *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<std::string const&>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFNumberGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

uint64_t std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
}

uint64_t std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<IR::IRData::Implementation::printNodes(void)::$_0,std::allocator<IR::IRData::Implementation::printNodes(void)::$_0>,void ()(IR::IRDataNode &,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = MEMORY[0x29EDC93C8];
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\t", 1);
      --v3;
    }

    while (v3);
  }

  v5 = std::ostream::operator<<();
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v8);
  std::ostream::put();
  return std::ostream::flush();
}

void std::__shared_ptr_emplace<IR::IRData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DEBF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

void std::__shared_ptr_emplace<IR::IRData const>::__shared_ptr_emplace[abi:ne200100]<float &,int,int,float,BOOL,unsigned int,unsigned int,unsigned int &,std::vector<IR::IRCoordinateType>,std::vector<float>,std::vector<IR::IRInterpolationMethod>,IR::IRSphericalInterpolation,applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef,std::allocator<IR::IRData>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEC920;
  std::construct_at[abi:ne200100]<IR::IRData,float &,int,int,float,BOOL,unsigned int,unsigned int,unsigned int &,std::vector<IR::IRCoordinateType>,std::vector<float>,std::vector<IR::IRInterpolationMethod>,IR::IRSphericalInterpolation,applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef,IR::IRData*>(a1 + 3, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void std::__shared_ptr_emplace<IR::IRData const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DEC920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

void std::construct_at[abi:ne200100]<IR::IRData,float &,int,int,float,BOOL,unsigned int,unsigned int,unsigned int &,std::vector<IR::IRCoordinateType>,std::vector<float>,std::vector<IR::IRInterpolationMethod>,IR::IRSphericalInterpolation,applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef,IR::IRData*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  *a14 = 0;
  *a15 = 0;
  IR::IRData::IRData(a1);
}

void sub_296BBE798(_Unwind_Exception *a1)
{
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 - 32));
  applesauce::CF::DictionaryRef::~DictionaryRef((v1 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unsigned int a9)
{
  v45[4] = *MEMORY[0x29EDCA608];
  v15 = *(a1 + 496);
  if (v15 == 1)
  {
    if (*(a1 + 512) == *(a1 + 520))
    {
      IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
    }
  }

  else if (*(*(a1 + 272) + 8) == **(a1 + 272))
  {
    IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  if (a6 != a8)
  {
    IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  if (a6 < a4)
  {
    IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  result = 1667786857;
  v17 = *(a1 + 32);
  if (a4 <= v17)
  {
    if (a4)
    {
      v18 = 0;
      while (*(a3 + 4 * v18) < v17)
      {
        if (++v18 >= a4)
        {
          v19 = a4;
          goto LABEL_14;
        }
      }
    }

    else
    {
      v19 = 0;
LABEL_14:
      if (a6 < v19)
      {
        v19 = a6;
      }

      if (v19)
      {
        if ((*(a1 + 24) & 1) != 0 || !*(a1 + 16))
        {
          v28 = v19;
          if (a6)
          {
            v20 = 0;
            v21 = 1;
            do
            {
              v22 = a5 + 24 * v20;
              v23 = *(v22 + 8) - *v22;
              if (v23 >= 1)
              {
                bzero(*v22, v23);
              }

              *(a7 + 4 * v20) = 0;
              v20 = v21;
            }

            while (a6 > v21++);
          }

          v43 = 0;
          if (v15)
          {
            v25 = *(a2 + 16);
            v38 = *a2;
            v30 = a1;
            v31 = a5;
            v32 = a6;
            v33 = a7;
            v34 = a6;
            v35 = a3;
            v36 = a4;
            v37 = a9;
            v39 = v25;
            v40 = *(a2 + 32);
            v41 = v28;
            v42 = &v43;
            v26 = *(a1 + 272);
            v45[0] = &unk_2A1DEC9E8;
            v45[1] = &v30;
            v45[3] = v45;
            IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v26, a9, v45, 1.0);
            std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v45);
            return v43;
          }

          else
          {
            v30 = a5;
            v31 = a6;
            v32 = a7;
            v33 = a6;
            v34 = a3;
            v35 = a4;
            LODWORD(v36) = v28;
            v27 = *(a1 + 272);
            v44[0] = &unk_2A1DECA30;
            v44[1] = &v30;
            v44[3] = v44;
            IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v27, a9, v44, 1.0);
            std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v44);
            return 0;
          }
        }

        else
        {
          return 1852793702;
        }
      }

      else if (v17)
      {
        return 1701671028;
      }

      else
      {
        return 1852793972;
      }
    }
  }

  return result;
}

void IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(IR::IRData::Implementation *a1, uint64_t a2, unsigned int a3, float **a4, uint64_t a5, uint64_t a6, float a7)
{
  v57 = *MEMORY[0x29EDCA608];
  v7 = *a4;
  if (*a4 == a4[1])
  {
    return;
  }

  v11 = *(a1 + 14);
  if (v11 == *(a1 + 15))
  {
    EmptyIRDataNode = IR::IRData::Implementation::getEmptyIRDataNode(a1);
    v32 = 0.0;
    v33 = a6;
    v34 = v7;
    v35 = a7;
    goto LABEL_59;
  }

  v17 = IR::IRCoordinates::get(a2, *(*(a1 + 11) + 4 * *(v11 + 4 * a3)));
  v18 = *(a1 + 14);
  v19 = *(v18 + 4 * a3);
  v20 = *(a1 + 17);
  v21 = *(v20 + 4 * v19);
  if (v21 != 0.0)
  {
    v17 = fmodf(v17, *(v20 + 4 * v19));
    if (v17 < 0.0)
    {
      v17 = v21 + v17;
    }
  }

  v23 = *a4;
  v22 = a4[1];
  v24 = v22 - *a4;
  if (v22 == *a4)
  {
    v26 = a4[1];
  }

  else
  {
    v25 = 0xEEEEEEEEEEEEEEEFLL * (v24 >> 3);
    v26 = *a4;
    do
    {
      v27 = v25 >> 1;
      v28 = &v26[30 * (v25 >> 1)];
      v30 = *v28;
      v29 = v28 + 30;
      v25 += ~(v25 >> 1);
      if (v30 < v17)
      {
        v26 = v29;
      }

      else
      {
        v25 = v27;
      }
    }

    while (v25);
  }

  if (v22 == v26)
  {
    v36 = -286331153 * (v24 >> 3) - 1;
    if (v21 == 0.0)
    {
      goto LABEL_27;
    }

    LODWORD(v37) = 0;
    v38 = v23[30 * v36];
    v39 = v17 - v38;
  }

  else
  {
    if (*v26 == v17)
    {
      v36 = -286331153 * ((v26 - v23) >> 3);
LABEL_27:
      LODWORD(v37) = -1;
      v41 = 1.0;
      v42 = 1.0;
      goto LABEL_28;
    }

    if (v23 != v26)
    {
      v37 = 0xEEEEEEEEEEEEEEEFLL * ((v26 - v23) >> 3);
      v36 = v37 - 1;
      v38 = v23[30 * (v37 - 1)];
      v39 = v17 - v38;
      v40 = v23[30 * v37];
      goto LABEL_23;
    }

    if (v21 == 0.0)
    {
      v36 = 0;
      goto LABEL_27;
    }

    LODWORD(v37) = 0;
    v36 = -286331153 * (v24 >> 3) - 1;
    v38 = v23[30 * v36];
    v39 = v21 + (v17 - v38);
  }

  v40 = v21 + *v23;
LABEL_23:
  v41 = v39 / (v40 - v38);
  v42 = 1.0 - v41;
LABEL_28:
  v43 = a5;
  if (a5 == 3)
  {
    v43 = *(*(a1 + 26) + 4 * v19);
  }

  v44 = sqrtf(v42);
  v45 = sqrtf(v41);
  if (v41 <= v42)
  {
    v46 = v36;
  }

  else
  {
    v46 = v37;
  }

  v47 = 1.0;
  v48 = 0.0;
  if (v37 == -1)
  {
    v48 = v41;
    v47 = v42;
    v46 = v36;
  }

  if (v43)
  {
    v49 = v37;
  }

  else
  {
    v41 = v48;
    v42 = v47;
    v49 = -1;
  }

  if (v43)
  {
    v46 = v36;
  }

  if (v43 == 2)
  {
    v41 = v45;
    v42 = v44;
    v50 = v37;
  }

  else
  {
    v50 = v49;
  }

  if (v43 == 2)
  {
    v51 = v36;
  }

  else
  {
    v51 = v46;
  }

  v52 = v42 * a7;
  v53 = v41 * a7;
  v54 = 0xEEEEEEEEEEEEEEEFLL * (v24 >> 3);
  if (((*(a1 + 15) - v18) >> 2) - 1 > a3)
  {
    if (v54 > v51)
    {
      std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__value_func[abi:ne200100](v56, a6);
      IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, a3 + 1, &v23[30 * v51 + 18], a5, v56, v52);
      std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v56);
      v23 = *a4;
      v54 = 0xEEEEEEEEEEEEEEEFLL * ((a4[1] - *a4) >> 3);
    }

    if (v54 > v50)
    {
      std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__value_func[abi:ne200100](v55, a6);
      IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, a3 + 1, &v23[30 * v50 + 18], a5, v55, v53);
      std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v55);
    }

    return;
  }

  if (v54 <= v51)
  {
    if (v54 <= v50)
    {
      return;
    }

    v34 = IR::IRData::Implementation::getEmptyIRDataNode(v16);
    EmptyIRDataNode = &(*a4)[30 * v50];
    v35 = 0.0;
    v33 = a6;
  }

  else
  {
    if (v54 <= v50)
    {
      EmptyIRDataNode = IR::IRData::Implementation::getEmptyIRDataNode(v16);
      v32 = 0.0;
      v33 = a6;
      v34 = &v23[30 * v51];
      v35 = v52;
      goto LABEL_59;
    }

    EmptyIRDataNode = &v23[30 * v50];
    v33 = a6;
    v34 = &v23[30 * v51];
    v35 = v52;
  }

  v32 = v53;
LABEL_59:

  std::function<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::operator()(v33, v34, EmptyIRDataNode, v35, v32);
}

void sub_296BBEFCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, _DWORD *a7, uint64_t a8, unsigned int a9)
{
  v47[4] = *MEMORY[0x29EDCA608];
  v14 = *(a1 + 496);
  if (v14 == 1)
  {
    if (*(a1 + 512) == *(a1 + 520))
    {
      IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
    }
  }

  else if (*(*(a1 + 272) + 8) == **(a1 + 272))
  {
    IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  if (a6 != a8)
  {
    IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  if (a6 < a4)
  {
    IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  result = 1667786857;
  v16 = *(a1 + 32);
  if (a4 <= v16)
  {
    if (a4)
    {
      v17 = 0;
      while (*(a3 + 4 * v17) < v16)
      {
        if (++v17 >= a4)
        {
          v18 = a4;
          goto LABEL_14;
        }
      }
    }

    else
    {
      v18 = 0;
LABEL_14:
      if (a6 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = a6;
      }

      if (v19)
      {
        if ((*(a1 + 24) & 1) != 0 || !*(a1 + 16))
        {
          if (a6)
          {
            v20 = (a5 + 8);
            v21 = 1;
            v22 = a7;
            v23 = (a5 + 8);
            do
            {
              v25 = *v23;
              v23 += 2;
              v24 = v25;
              if (v25 >= 1)
              {
                bzero(*(v20 - 1), 4 * v24);
              }

              *v22++ = 0;
              v26 = a6 > v21++;
              v20 = v23;
            }

            while (v26);
          }

          v45 = 0;
          if (v14)
          {
            v27 = *(a2 + 16);
            v40 = *a2;
            v32 = a1;
            v33 = a5;
            v34 = a6;
            v35 = a7;
            v36 = a6;
            v37 = a3;
            v38 = a4;
            v39 = a9;
            v41 = v27;
            v42 = *(a2 + 32);
            v43 = v19;
            v44 = &v45;
            v28 = *(a1 + 272);
            v47[0] = &unk_2A1DECA78;
            v47[1] = &v32;
            v47[3] = v47;
            IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v28, a9, v47, 1.0);
            std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v47);
            return v45;
          }

          else
          {
            v32 = a5;
            v33 = a6;
            v34 = a7;
            v35 = a6;
            v36 = a3;
            v37 = a4;
            LODWORD(v38) = v19;
            v29 = *(a1 + 272);
            v46[0] = &unk_2A1DECAC0;
            v46[1] = &v32;
            v46[3] = v46;
            IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v29, a9, v46, 1.0);
            std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v46);
            return 0;
          }
        }

        else
        {
          return 1852793702;
        }
      }

      else if (v16)
      {
        return 1701671028;
      }

      else
      {
        return 1852793972;
      }
    }
  }

  return result;
}

uint64_t IR::IRData::Implementation::getInterpolatedCoeffs(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unsigned int a9)
{
  v34[4] = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 496);
  if (v10 == 1)
  {
    if (*(a1 + 512) == *(a1 + 520))
    {
      IR::IRData::Implementation::getInterpolatedCoeffs();
    }
  }

  else if (*(*(a1 + 272) + 8) == **(a1 + 272))
  {
    IR::IRData::Implementation::getInterpolatedCoeffs();
  }

  if (a6 != a8)
  {
    IR::IRData::Implementation::getInterpolatedCoeffs();
  }

  if (a6 < a4)
  {
    IR::IRData::Implementation::getInterpolatedCoeffs();
  }

  result = 1667786857;
  v12 = *(a1 + 32);
  if (a4 <= v12)
  {
    if (a4)
    {
      v13 = 0;
      while (*(a3 + 4 * v13) < v12)
      {
        if (++v13 >= a4)
        {
          v14 = a4;
          goto LABEL_14;
        }
      }
    }

    else
    {
      v14 = 0;
LABEL_14:
      if (a6 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = a6;
      }

      if (v15)
      {
        if (a6)
        {
          IR::FFTFilterKernel<float>::reset();
        }

        v32 = 0;
        if (v10)
        {
          v16 = *(a2 + 16);
          v26 = *a2;
          v27 = v16;
          v19 = a1;
          v20 = a5;
          v21 = 0;
          v22 = a3;
          v23 = a4;
          v24 = a7;
          v25 = 0;
          v28 = *(a2 + 32);
          v29 = a9;
          v30 = v15;
          v31 = &v32;
          v17 = *(a1 + 272);
          v34[0] = &unk_2A1DEC958;
          v34[1] = &v19;
          v34[3] = v34;
          IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v17, a9, v34, 1.0);
          std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v34);
          return v32;
        }

        else
        {
          v19 = a5;
          v20 = 0;
          v21 = a7;
          v22 = 0;
          v23 = a3;
          v24 = a4;
          LODWORD(v25) = v15;
          v18 = *(a1 + 272);
          v33[0] = &unk_2A1DEC9A0;
          v33[1] = &v19;
          v33[3] = v33;
          IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v18, a9, v33, 1.0);
          std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v33);
          return 0;
        }
      }

      else if (v12)
      {
        return 1701671028;
      }

      else
      {
        return 1852793972;
      }
    }
  }

  return result;
}

uint64_t IR::IRData::Implementation::getInterpolatedAuxData(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v26[4] = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 496);
  if (v10 == 1)
  {
    if (*(a1 + 512) == *(a1 + 520))
    {
      IR::IRData::Implementation::getInterpolatedAuxData();
    }
  }

  else if (*(*(a1 + 272) + 8) == **(a1 + 272))
  {
    IR::IRData::Implementation::getInterpolatedAuxData();
  }

  if (!*(a1 + 32))
  {
    return 1852793972;
  }

  if (4 * a4 >= 1)
  {
    bzero(a3, 4 * a4);
  }

  v24 = 0;
  if (v10)
  {
    v11 = *(a2 + 16);
    v20 = *a2;
    v16 = a1;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v21 = v11;
    v22 = *(a2 + 32);
    v23 = &v24;
    v12 = *(a1 + 272);
    v26[0] = &unk_2A1DECB08;
    v26[1] = &v16;
    v26[3] = v26;
    IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v12, a5, v26, 1.0);
    v13 = v26;
  }

  else
  {
    v16 = a3;
    v17 = a4;
    v15 = *(a1 + 272);
    v25[0] = &unk_2A1DECB50;
    v25[1] = &v16;
    v25[3] = v25;
    IR::IRData::Implementation::getNearbyNodesAndInterpolationWeights(a1, a2, 0, v15, a5, v25, 1.0);
    v13 = v25;
  }

  std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](v13);
  return 0;
}

void sub_296BBF7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, a2, a3, &v8, &v7);
}

uint64_t IR::IRData::getInterpolatedCoeffs(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = *a1;
  v8 = a3;
  return IR::IRData::Implementation::getInterpolatedCoeffs(v6, a2, &v8, 1uLL, a4, 1uLL, a5, 1, a6);
}

uint64_t IR::IRData::getInterpolatedTimeDomainCoeffs(unint64_t *a1, uint64_t a2, int a3, void *a4, _DWORD *a5, unsigned int a6)
{
  v6 = *a1;
  v7 = (a4[1] - *a4) >> 2;
  v10[0] = *a4;
  v10[1] = v7;
  v9 = a3;
  return IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(v6, a2, &v9, 1uLL, v10, 1uLL, a5, 1, a6);
}

uint64_t IR::IRData::getInterpolatedTimeDomainCoeffs(unint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6, unsigned int a7)
{
  v7 = *a1;
  v10[0] = a4;
  v10[1] = a5;
  v9 = a3;
  return IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(v7, a2, &v9, 1uLL, v10, 1uLL, a6, 1, a7);
}

BOOL IR::IRData::canInterpolateInDimension(uint64_t a1, int a2)
{
  v2 = *(*a1 + 160);
  v3 = *(*a1 + 168);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(*a1 + 168);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DEC958;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, float *a4, float *a5)
{
  v7 = *(result + 8);
  v8 = *a5;
  v9 = *v7;
  if (*a4 != 0.0 && *(a2 + 32))
  {
    v10 = *(v7 + 72);
    v17 = *(v7 + 56);
    v18 = v10;
    v11 = *(v7 + 92);
    v19 = *(v7 + 88);
    result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v9, &v17, v11, &v22, &v21, &v20, *(v9 + 500), (a2 + 32));
    **(v7 + 104) = result;
    if (result)
    {
      return result;
    }

    if (*(v7 + 96))
    {
      IR::FFTFilterKernel<float>::accumulate();
    }
  }

  if (v8 != 0.0)
  {
    v14 = *(a3 + 32);
    v13 = (a3 + 32);
    v12 = v14;
    if (v14)
    {
      if (*v12 == **(a2 + 32) || (v15 = *(v7 + 72), v17 = *(v7 + 56), v18 = v15, v16 = *(v7 + 92), v19 = *(v7 + 88), result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v9, &v17, v16, &v22, &v21, &v20, *(v9 + 500), v13), (**(v7 + 104) = result) == 0))
      {
        if (*(v7 + 96))
        {
          IR::FFTFilterKernel<float>::accumulate();
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DEC9A0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedCoeffs(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<IR::FFTFilterKernel<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, float *a4, float *a5)
{
  v5 = *(result + 8);
  if (*(v5 + 48))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*a4 != 0.0)
      {
        IR::FFTFilterKernel<float>::accumulate();
      }

      if (*a5 != 0.0)
      {
        IR::FFTFilterKernel<float>::accumulate();
      }

      ++v7;
      v6 += 40;
    }

    while (v7 < *(v5 + 48));
  }

  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::vector<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#1}>,std::allocator<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::vector<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#1}>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DEC9E8;
  a2[1] = *(result + 8);
  return result;
}

uint64_t IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::vector<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)const::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#1}::operator()(uint64_t result, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v8 = result;
  v9 = *result;
  if (a4 != 0.0)
  {
    v10 = (a2 + 32);
    if (*(a2 + 32))
    {
      v12 = *(result + 76);
      v49 = *(result + 60);
      v50 = v12;
      v51 = *(result + 92);
      result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v9, &v49, *(result + 56), &v58, &v55, &v52, *(v9 + 500), (a2 + 32));
      **(v8 + 104) = result;
      if (result)
      {
        return result;
      }

      if (*(v8 + 96))
      {
        v13 = 0;
        v14 = 0;
        v15 = *v10;
        v16 = v58;
        v17 = *(v8 + 40);
        do
        {
          v18 = *(*(v15 + 88) + 24 * v16);
          v19 = (*(*(v8 + 8) + v13 + 8) - *(*(v8 + 8) + v13)) >> 2;
          v20 = *(v18 + 8 * *(v17 + 4 * v14));
          v21 = *v20;
          v22 = (v20[1] - *v20) >> 2;
          if (v22 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v22;
          }

          *&v49 = v55 * a4;
          MEMORY[0x29C260500](v21);
          *&v49 = v56 * a4;
          MEMORY[0x29C260500](**(*(*(*v10 + 88) + 24 * v59) + 8 * *(*(v8 + 40) + 4 * v14)), 1, &v49, *(*(v8 + 8) + v13), 1, *(*(v8 + 8) + v13), 1, v23);
          *&v49 = v57 * a4;
          result = MEMORY[0x29C260500](**(*(*(*v10 + 88) + 24 * v60) + 8 * *(*(v8 + 40) + 4 * v14)), 1, &v49, *(*(v8 + 8) + v13), 1, *(*(v8 + 8) + v13), 1, v23);
          v15 = *v10;
          v16 = v58;
          v24 = *(*v10 + 112);
          v17 = *(v8 + 40);
          v25 = *(v17 + 4 * v14);
          v26 = *(v8 + 24);
          v27 = *(v26 + 4 * v14) + ((*(*(v24 + 24 * v58) + 4 * v25) * v52) * a4);
          *(v26 + 4 * v14) = v27;
          v28 = v27 + ((*(*(v24 + 24 * v59) + 4 * v25) * v53) * a4);
          *(v26 + 4 * v14) = v28;
          *(v26 + 4 * v14++) = v28 + ((*(*(v24 + 24 * v60) + 4 * v25) * v54) * a4);
          v13 += 24;
        }

        while (v14 < *(v8 + 96));
      }
    }
  }

  if (a5 != 0.0)
  {
    v31 = *(a3 + 32);
    v30 = (a3 + 32);
    v29 = v31;
    if (v31)
    {
      if (*v29 == **(a2 + 32) || (v32 = *(v8 + 76), v49 = *(v8 + 60), v50 = v32, v51 = *(v8 + 92), result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v9, &v49, *(v8 + 56), &v58, &v55, &v52, *(v9 + 500), v30), (**(v8 + 104) = result) == 0))
      {
        if (*(v8 + 96))
        {
          v33 = 0;
          v34 = 0;
          v35 = *v30;
          v36 = v58;
          v37 = *(v8 + 40);
          do
          {
            v38 = *(v35[11] + 3 * v36);
            v39 = (*(*(v8 + 8) + v33 + 8) - *(*(v8 + 8) + v33)) >> 2;
            v40 = *(v38 + 8 * *(v37 + 4 * v34));
            v41 = *v40;
            v42 = (v40[1] - *v40) >> 2;
            if (v42 >= v39)
            {
              v43 = v39;
            }

            else
            {
              v43 = v42;
            }

            *&v49 = v55 * a5;
            MEMORY[0x29C260500](v41);
            *&v49 = v56 * a5;
            MEMORY[0x29C260500](**(*((*v30)[11] + 3 * v59) + 8 * *(*(v8 + 40) + 4 * v34)), 1, &v49, *(*(v8 + 8) + v33), 1, *(*(v8 + 8) + v33), 1, v43);
            *&v49 = v57 * a5;
            result = MEMORY[0x29C260500](**(*((*v30)[11] + 3 * v60) + 8 * *(*(v8 + 40) + 4 * v34)), 1, &v49, *(*(v8 + 8) + v33), 1, *(*(v8 + 8) + v33), 1, v43);
            v35 = *v30;
            v36 = v58;
            v44 = (*v30)[14];
            v37 = *(v8 + 40);
            v45 = *(v37 + 4 * v34);
            v46 = *(v8 + 24);
            v47 = *(v46 + 4 * v34) + ((*(*(v44 + 3 * v58) + 4 * v45) * v52) * a5);
            *(v46 + 4 * v34) = v47;
            v48 = v47 + ((*(*(v44 + 3 * v59) + 4 * v45) * v53) * a5);
            *(v46 + 4 * v34) = v48;
            *(v46 + 4 * v34++) = v48 + ((*(*(v44 + 3 * v60) + 4 * v45) * v54) * a5);
            v33 += 24;
          }

          while (v34 < *(v8 + 96));
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::vector<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#2}>,std::allocator<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::vector<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#2}>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DECA30;
  a2[1] = *(result + 8);
  return result;
}

uint64_t IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::vector<float>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)const::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4, float a5)
{
  v11 = a4.n128_f32[0];
  if (*(result + 48))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      a4.n128_f32[0] = v11;
      if (v11 != 0.0)
      {
        result = MEMORY[0x29C260500](a4);
        *(*(v7 + 16) + 4 * v9) = *(*(v7 + 16) + 4 * v9) + (*(*(a2 + 48) + 4 * *(*(v7 + 32) + 4 * v9)) * v11);
      }

      a4.n128_f32[0] = a5;
      if (a5 != 0.0)
      {
        result = MEMORY[0x29C260500](a4);
        *(*(v7 + 16) + 4 * v9) = *(*(v7 + 16) + 4 * v9) + (*(*(a3 + 48) + 4 * *(*(v7 + 32) + 4 * v9)) * a5);
      }

      ++v9;
      v8 += 24;
    }

    while (v9 < *(v7 + 48));
  }

  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::span<float,18446744073709551615ul>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#1}>,std::allocator<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::span<float,18446744073709551615ul>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#1}>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DECA78;
  a2[1] = *(result + 8);
  return result;
}

uint64_t IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::span<float,18446744073709551615ul>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)const::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#1}::operator()(uint64_t result, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v8 = result;
  v9 = *result;
  if (a4 != 0.0)
  {
    v10 = (a2 + 32);
    if (*(a2 + 32))
    {
      v12 = *(result + 76);
      v47 = *(result + 60);
      v48 = v12;
      v49 = *(result + 92);
      result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v9, &v47, *(result + 56), &v56, &v53, &v50, *(v9 + 500), (a2 + 32));
      **(v8 + 104) = result;
      if (result)
      {
        return result;
      }

      if (*(v8 + 96))
      {
        v13 = 0;
        v14 = 0;
        v15 = *v10;
        v16 = v56;
        v17 = *(v8 + 40);
        do
        {
          v18 = *(*(v8 + 8) + v13 + 8);
          v19 = *(*(*(v15 + 88) + 24 * v16) + 8 * *(v17 + 4 * v14));
          v20 = *v19;
          v21 = (v19[1] - *v19) >> 2;
          if (v21 >= v18)
          {
            v22 = v18;
          }

          else
          {
            v22 = v21;
          }

          *&v47 = v53 * a4;
          MEMORY[0x29C260500](v20);
          *&v47 = v54 * a4;
          MEMORY[0x29C260500](**(*(*(*v10 + 88) + 24 * v57) + 8 * *(*(v8 + 40) + 4 * v14)), 1, &v47, *(*(v8 + 8) + v13), 1, *(*(v8 + 8) + v13), 1, v22);
          *&v47 = v55 * a4;
          result = MEMORY[0x29C260500](**(*(*(*v10 + 88) + 24 * v58) + 8 * *(*(v8 + 40) + 4 * v14)), 1, &v47, *(*(v8 + 8) + v13), 1, *(*(v8 + 8) + v13), 1, v22);
          v15 = *v10;
          v16 = v56;
          v23 = *(*v10 + 112);
          v17 = *(v8 + 40);
          v24 = *(v17 + 4 * v14);
          v25 = *(v8 + 24);
          v26 = *(v25 + 4 * v14) + ((*(*(v23 + 24 * v56) + 4 * v24) * v50) * a4);
          *(v25 + 4 * v14) = v26;
          v27 = v26 + ((*(*(v23 + 24 * v57) + 4 * v24) * v51) * a4);
          *(v25 + 4 * v14) = v27;
          *(v25 + 4 * v14++) = v27 + ((*(*(v23 + 24 * v58) + 4 * v24) * v52) * a4);
          v13 += 16;
        }

        while (v14 < *(v8 + 96));
      }
    }
  }

  if (a5 != 0.0)
  {
    v30 = *(a3 + 32);
    v29 = (a3 + 32);
    v28 = v30;
    if (v30)
    {
      if (*v28 == **(a2 + 32) || (v31 = *(v8 + 76), v47 = *(v8 + 60), v48 = v31, v49 = *(v8 + 92), result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v9, &v47, *(v8 + 56), &v56, &v53, &v50, *(v9 + 500), v29), (**(v8 + 104) = result) == 0))
      {
        if (*(v8 + 96))
        {
          v32 = 0;
          v33 = 0;
          v34 = *v29;
          v35 = v56;
          v36 = *(v8 + 40);
          do
          {
            v37 = *(*(v8 + 8) + v32 + 8);
            v38 = *(*(v34[11] + 3 * v35) + 8 * *(v36 + 4 * v33));
            v39 = *v38;
            v40 = (v38[1] - *v38) >> 2;
            if (v40 >= v37)
            {
              v41 = v37;
            }

            else
            {
              v41 = v40;
            }

            *&v47 = v53 * a5;
            MEMORY[0x29C260500](v39);
            *&v47 = v54 * a5;
            MEMORY[0x29C260500](**(*((*v29)[11] + 3 * v57) + 8 * *(*(v8 + 40) + 4 * v33)), 1, &v47, *(*(v8 + 8) + v32), 1, *(*(v8 + 8) + v32), 1, v41);
            *&v47 = v55 * a5;
            result = MEMORY[0x29C260500](**(*((*v29)[11] + 3 * v58) + 8 * *(*(v8 + 40) + 4 * v33)), 1, &v47, *(*(v8 + 8) + v32), 1, *(*(v8 + 8) + v32), 1, v41);
            v34 = *v29;
            v35 = v56;
            v42 = (*v29)[14];
            v36 = *(v8 + 40);
            v43 = *(v36 + 4 * v33);
            v44 = *(v8 + 24);
            v45 = *(v44 + 4 * v33) + ((*(*(v42 + 3 * v56) + 4 * v43) * v50) * a5);
            *(v44 + 4 * v33) = v45;
            v46 = v45 + ((*(*(v42 + 3 * v57) + 4 * v43) * v51) * a5);
            *(v44 + 4 * v33) = v46;
            *(v44 + 4 * v33++) = v46 + ((*(*(v42 + 3 * v58) + 4 * v43) * v52) * a5);
            v32 += 16;
          }

          while (v33 < *(v8 + 96));
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::span<float,18446744073709551615ul>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#2}>,std::allocator<std::reference_wrapper<int IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::span<float,18446744073709551615ul>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#2}>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DECAC0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::span<float,18446744073709551615ul>>(IR::IRCoordinates const&,std::span<unsigned int const,18446744073709551615ul>,std::span<std::span<float,18446744073709551615ul>,18446744073709551615ul>,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)const::{lambda(IR::IRDataNode const&,IR::IRDataNode const&,float,float)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4, float a5)
{
  v11 = a4.n128_f32[0];
  if (*(result + 48))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      a4.n128_f32[0] = v11;
      if (v11 != 0.0)
      {
        result = MEMORY[0x29C260500](a4);
        *(*(v7 + 16) + 4 * v9) = *(*(v7 + 16) + 4 * v9) + (*(*(a2 + 48) + 4 * *(*(v7 + 32) + 4 * v9)) * v11);
      }

      a4.n128_f32[0] = a5;
      if (a5 != 0.0)
      {
        result = MEMORY[0x29C260500](a4);
        *(*(v7 + 16) + 4 * v9) = *(*(v7 + 16) + 4 * v9) + (*(*(a3 + 48) + 4 * *(*(v7 + 32) + 4 * v9)) * a5);
      }

      ++v9;
      v8 += 16;
    }

    while (v9 < *(v7 + 48));
  }

  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DECB08;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_0>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, float *a4, float *a5)
{
  v7 = *(result + 8);
  v8 = *a4;
  v9 = *a5;
  v10 = *v7;
  if (*a4 != 0.0)
  {
    v11 = a2 + 32;
    if (*(a2 + 32))
    {
      v12 = *(v7 + 28);
      v13 = *(v7 + 44);
      v29 = *(v7 + 60);
      v27 = v12;
      v28 = v13;
      result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v10, &v27, *(v7 + 24), &v34, &v31, v30, *(v10 + 500), (a2 + 32));
      **(v7 + 64) = result;
      if (result)
      {
        return result;
      }

      v14 = (*(*v11 + 184) + 24 * v34);
      v15 = *v14;
      v16 = (v14[1] - *v14) >> 2;
      if (v16 >= *(v7 + 16))
      {
        v17 = *(v7 + 16);
      }

      else
      {
        v17 = v16;
      }

      *&v27 = v8 * v31;
      MEMORY[0x29C260500](v15);
      *&v27 = v8 * v32;
      MEMORY[0x29C260500](*(*(*v11 + 184) + 24 * v35), 1, &v27, *(v7 + 8), 1, *(v7 + 8), 1, v17);
      *&v27 = v8 * v33;
      result = MEMORY[0x29C260500](*(*(*v11 + 184) + 24 * v36), 1, &v27, *(v7 + 8), 1, *(v7 + 8), 1, v17);
    }
  }

  if (v9 != 0.0)
  {
    v20 = *(a3 + 32);
    v19 = (a3 + 32);
    v18 = v20;
    if (v20)
    {
      if (*v18 != **(a2 + 32))
      {
        v21 = *(v7 + 28);
        v22 = *(v7 + 44);
        v29 = *(v7 + 60);
        v27 = v21;
        v28 = v22;
        result = IR::IRData::Implementation::getTriangleIndicesAndCoordinates(v10, &v27, *(v7 + 24), &v34, &v31, v30, *(v10 + 500), v19);
        **(v7 + 64) = result;
        if (result)
        {
          return result;
        }

        v18 = *v19;
      }

      v23 = (v18[23] + 24 * v34);
      v24 = *v23;
      v25 = (v23[1] - *v23) >> 2;
      if (v25 >= *(v7 + 16))
      {
        v26 = *(v7 + 16);
      }

      else
      {
        v26 = v25;
      }

      *&v27 = v9 * v31;
      MEMORY[0x29C260500](v24);
      *&v27 = v9 * v32;
      MEMORY[0x29C260500](*((*v19)[23] + 3 * v35), 1, &v27, *(v7 + 8), 1, *(v7 + 8), 1, v26);
      *&v27 = v9 * v33;
      return MEMORY[0x29C260500](*((*v19)[23] + 3 * v36), 1, &v27, *(v7 + 8), 1, *(v7 + 8), 1, v26);
    }
  }

  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1DECB50;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>,std::allocator<std::reference_wrapper<IR::IRData::Implementation::getInterpolatedAuxData(IR::IRCoordinates const&,std::span<float,18446744073709551615ul>,IR::IRInterpolationMethod)::$_1>>,void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, float *a4, float *a5)
{
  v6 = *(result + 8);
  v7 = *a4;
  v8 = *a5;
  v13 = *a5;
  v14 = v7;
  if (v7 != 0.0)
  {
    v9 = *(a2 + 96);
    if (((*(a2 + 104) - v9) >> 2) >= v6[1])
    {
      v10 = v6[1];
    }

    else
    {
      v10 = (*(a2 + 104) - v9) >> 2;
    }

    result = MEMORY[0x29C260500](v9, 1, &v14, *v6, 1, *v6, 1, v10);
  }

  if (v8 != 0.0)
  {
    v11 = *(a3 + 96);
    if (((*(a3 + 104) - v11) >> 2) >= v6[1])
    {
      v12 = v6[1];
    }

    else
    {
      v12 = (*(a3 + 104) - v11) >> 2;
    }

    return MEMORY[0x29C260500](v11, 1, &v13, *v6, 1, *v6, 1, v12);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(IR::IRDataNode const&,IR::IRDataNode const&,float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_296BC1790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef((v26 - 48));
  applesauce::CF::DataRef::~DataRef((v26 - 40));

  _Unwind_Resume(a1);
}

void applesauce::CF::DataRef::from_ns_noexcept(applesauce::CF::DataRef *this@<X0>, applesauce::CF::DataRef **a2@<X8>)
{
  v4 = this;
  if (!v4 || (cf = v4, CFRetain(v4), v5 = CFGetTypeID(cf), v6 = v5 == CFDataGetTypeID(), v4 = cf, v6))
  {
    *a2 = v4;
  }

  else
  {
    *a2 = 0;
    CFRelease(cf);
    v4 = cf;
  }
}

uint64_t IR::IRDataAttributes::IRDataAttributes(uint64_t a1, CFTypeRef *a2, int a3, char a4, int a5, int a6, float a7)
{
  v13 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf = v13;
  IR::IRDataAttributes::IRDataAttributes(a1, &cf, a3, a4, 0, 0, a5, a6, a7);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

void sub_296BC197C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

os_log_t ___ZN2IR28getHOA2BinauralIRRendererLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "HOA2BinauralIRRenderer");
  IR::getHOA2BinauralIRRendererLog(void)::gLog = result;
  return result;
}

HOA *std::unique_ptr<HOA>::reset[abi:ne200100](HOA **a1, HOA *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HOA::~HOA(result);

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

uint64_t *std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

uint64_t IR::HOA2BinauralIRRenderer::setEnvironment(IR::HOA2BinauralIRRenderer *this, unsigned int a2, BOOL a3, unsigned int a4)
{
  v6 = a2;
  *(this + 32) = a2;
  *(this + 33) = 0;
  *(this + 136) = 0;
  v7 = IR::IRDataLoader::instance(this);
  std::string::basic_string[abi:ne200100]<0>(&__p, "HOA2BinauralIRRenderer|");
  v154 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  IR::IRDataLoader::load(&v155, v7, &__p, this + 120, &v154, &v151);
  if (v151)
  {
    v152 = v151;
    operator delete(v151);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (SHIBYTE(v141) < 0)
  {
    operator delete(__p);
  }

  if (!v155)
  {
    if (IR::getHOA2BinauralIRRendererLog(void)::onceToken != -1)
    {
      IR::HOA2BinauralIRRenderer::setEnvironment();
    }

    v16 = IR::getHOA2BinauralIRRendererLog(void)::gLog;
    if (os_log_type_enabled(IR::getHOA2BinauralIRRendererLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::HOA2BinauralIRRenderer::setEnvironment(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_17;
  }

  if (IR::IRData::getNumFiltersPerSpatialPoint(v155) < *(this + 113))
  {
    if (IR::getHOA2BinauralIRRendererLog(void)::onceToken != -1)
    {
      IR::HOA2BinauralIRRenderer::setEnvironment();
    }

    v8 = IR::getHOA2BinauralIRRendererLog(void)::gLog;
    if (os_log_type_enabled(IR::getHOA2BinauralIRRendererLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::HOA2BinauralIRRenderer::setEnvironment(v8, v9, v10, v11, v12, v13, v14, v15);
    }

LABEL_17:
    v24 = 4294956425;
    goto LABEL_124;
  }

  FilterLength = IR::IRData::getFilterLength(v155);
  if (FilterLength >= a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = FilterLength;
  }

  if (!a4)
  {
    v26 = FilterLength;
  }

  *(this + 111) = v26;
  IR::IRCoordinates::IRCoordinates(&v151);
  v27 = *(this + 113);
  std::vector<float>::vector[abi:ne200100](&__p, *(this + 111));
  std::vector<std::vector<float>>::vector[abi:ne200100](v150, v27);
  if (__p)
  {
    v140 = __p;
    operator delete(__p);
  }

  std::vector<float>::vector[abi:ne200100](v149, *(this + 113));
  v28 = (this + 48);
  *(this + 7) = *(this + 6);
  v128 = (this + 72);
  *(this + 10) = *(this + 9);
  v127 = (this + 96);
  *(this + 13) = *(this + 12);
  PeriodForCyclicalDimensions = IR::IRData::getPeriodForCyclicalDimensions(v155);
  v146 = 0;
  v147 = 0;
  v148 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v146, *PeriodForCyclicalDimensions, PeriodForCyclicalDimensions[1], (PeriodForCyclicalDimensions[1] - *PeriodForCyclicalDimensions) >> 2);
  InterpolationMethod = IR::IRData::getInterpolationMethod(v155);
  v143 = 0;
  v144 = 0;
  v145 = 0;
  std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod*,IR::IRInterpolationMethod*>(&v143, *InterpolationMethod, InterpolationMethod[1], (InterpolationMethod[1] - *InterpolationMethod) >> 2);
  DataLayout = IR::IRData::getDataLayout(v155);
  v32 = *DataLayout;
  v33 = DataLayout[1];
  if (*DataLayout != v33)
  {
    v34 = 0;
    do
    {
      v35 = *v32;
      v36 = *(this + 3);
      v37 = *(this + 4);
      if (v36 != v37)
      {
        while (*v36 != v35)
        {
          if (++v36 == v37)
          {
            goto LABEL_66;
          }
        }
      }

      if (v36 != v37)
      {
        v39 = *(this + 7);
        v38 = *(this + 8);
        if (v39 >= v38)
        {
          v41 = *v28;
          v42 = v39 - *v28;
          v43 = v42 >> 2;
          v44 = (v42 >> 2) + 1;
          if (v44 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v45 = v38 - v41;
          if (v45 >> 1 > v44)
          {
            v44 = v45 >> 1;
          }

          v46 = v45 >= 0x7FFFFFFFFFFFFFFCLL;
          v47 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v46)
          {
            v47 = v44;
          }

          if (v47)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](this + 48, v47);
          }

          *(4 * v43) = v35;
          v40 = 4 * v43 + 4;
          memcpy(0, v41, v42);
          v48 = *(this + 6);
          *(this + 6) = 0;
          *(this + 7) = v40;
          *(this + 8) = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v39 = v35;
          v40 = (v39 + 4);
        }

        *(this + 7) = v40;
        v50 = *(this + 10);
        v49 = *(this + 11);
        if (v50 >= v49)
        {
          v52 = *v128;
          v53 = v50 - *v128;
          v54 = (v53 >> 2) + 1;
          if (v54 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v55 = v49 - v52;
          if (v55 >> 1 > v54)
          {
            v54 = v55 >> 1;
          }

          v46 = v55 >= 0x7FFFFFFFFFFFFFFCLL;
          v56 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v46)
          {
            v56 = v54;
          }

          if (v56)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](v128, v56);
          }

          v57 = (4 * (v53 >> 2));
          *v57 = v146[v34];
          v51 = v57 + 1;
          memcpy(0, v52, v53);
          v58 = *(this + 9);
          *(this + 9) = 0;
          *(this + 10) = v51;
          *(this + 11) = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v50 = v146[v34];
          v51 = v50 + 1;
        }

        *(this + 10) = v51;
        v60 = *(this + 13);
        v59 = *(this + 14);
        if (v60 >= v59)
        {
          v62 = *v127;
          v63 = v60 - *v127;
          v64 = (v63 >> 2) + 1;
          if (v64 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v65 = v59 - v62;
          if (v65 >> 1 > v64)
          {
            v64 = v65 >> 1;
          }

          v46 = v65 >= 0x7FFFFFFFFFFFFFFCLL;
          v66 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v46)
          {
            v66 = v64;
          }

          if (v66)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](v127, v66);
          }

          v67 = (4 * (v63 >> 2));
          *v67 = v143[v34];
          v61 = v67 + 1;
          memcpy(0, v62, v63);
          v68 = *(this + 12);
          *(this + 12) = 0;
          *(this + 13) = v61;
          *(this + 14) = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }

        else
        {
          *v60 = v143[v34];
          v61 = v60 + 1;
        }

        *(this + 13) = v61;
      }

LABEL_66:
      ++v34;
      ++v32;
    }

    while (v32 != v33);
  }

  IR::IRData::getCoordinateTree(v155, &__p);
  IR::HOA2BinauralIRRenderer::flattenIRCoordinateTree(this, &__p, &__A);
  v69 = *this;
  if (*this)
  {
    *(this + 1) = v69;
    operator delete(v69);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  v70 = __A;
  *this = __A;
  v129 = v138;
  *(this + 8) = v138;
  v71 = (*(this + 113) * *(this + 111));
  LODWORD(v131) = 0;
  std::vector<float>::vector[abi:ne200100](&__A, v71);
  std::vector<std::vector<float>>::assign(this + 58, 0x8E38E38E38E38E39 * ((v129 - v70) >> 2), &__A);
  if (__A)
  {
    *&v138 = __A;
    operator delete(__A);
  }

  if (*(this + 1) != *this)
  {
    IR::IRData::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
  }

  HOA::createSphericalGridDecoder(*(this + 54), 0);
  v72 = *(*(this + 54) + 24);
  *(this + 114) = v72;
  v73 = (*(this + 113) * v72);
  LODWORD(__A) = 0;
  std::vector<float>::resize(this + 61, v73, &__A, v74);
  v75 = *(this + 54);
  v138 = 0uLL;
  __A = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__A, *(v75 + 56), *(v75 + 64), (*(v75 + 64) - *(v75 + 56)) >> 2);
  vDSP_mtrans(__A, 1, *(this + 61), 1, *(this + 114), *(this + 113));
  if (__A)
  {
    *&v138 = __A;
    operator delete(__A);
  }

  v77 = (*(this + 113) * *(this + 113));
  LODWORD(__A) = 0;
  std::vector<float>::resize(this + 65, v77, &__A, v76);
  v130 = *(this + 54);
  *(this + 70) = v6;
  v79 = IR::IRDataLoader::instance(v78);
  std::string::basic_string[abi:ne200100]<0>(&__A, "HOA2BinauralIRRenderer|");
  v133 = 0;
  cf = 0;
  v131 = 0;
  v132 = 0;
  IR::IRDataLoader::load(&v135, v79, &__A, this + 272, &cf, &v131);
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v138) < 0)
  {
    operator delete(__A);
  }

  if (v135)
  {
    v80 = IR::IRData::getFilterLength(v135);
    IR::IRData::getMaxDelay(v135);
    v81 = *(this + 111) + v80;
    v82 = v81 - 1;
    *(this + 112) = v81 - 1;
    if (v80 == 1)
    {
      *(this + 460) = 0;
      v83 = *(this + 110);
      v84 = *(this + 114);
      LODWORD(v131) = 0;
      std::vector<float>::vector[abi:ne200100](&__A, v84);
      std::vector<std::vector<float>>::assign(this + 98, v83, &__A);
      if (__A)
      {
        *&v138 = __A;
        operator delete(__A);
      }

      v86 = *(this + 110);
      v87 = 1;
    }

    else
    {
      *(this + 460) = 1;
      if (v82)
      {
        *(this + 112) = v81;
        v82 = v81;
      }

      v96 = vcvtps_u32_f32(log2f(v82));
      *(this + 142) = 1 << v96;
      *(this + 143) = (1 << v96) >> 1;
      v97 = 1.0 / (4 << v96);
      *(this + 144) = v97;
      vDSP_DFT_DestroySetup(*(this + 73));
      *(this + 73) = vDSP_DFT_zrop_CreateSetup(0, *(this + 142), vDSP_DFT_FORWARD);
      vDSP_DFT_DestroySetup(*(this + 74));
      *(this + 74) = vDSP_DFT_zrop_CreateSetup(*(this + 73), *(this + 142), vDSP_DFT_INVERSE);
      v98 = *(this + 110);
      v99 = *(this + 114);
      std::vector<float>::vector[abi:ne200100](&v131, *(this + 143));
      std::vector<std::vector<float>>::vector[abi:ne200100](&__A, v99);
      std::vector<std::vector<std::vector<float>>>::assign(this + 600, v98, &__A);
      v157[0] = &__A;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v157);
      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      v100 = *(this + 110);
      v101 = *(this + 114);
      std::vector<float>::vector[abi:ne200100](&v131, *(this + 143));
      std::vector<std::vector<float>>::vector[abi:ne200100](&__A, v101);
      std::vector<std::vector<std::vector<float>>>::assign(this + 624, v100, &__A);
      v157[0] = &__A;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v157);
      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      v102 = *(this + 110);
      std::vector<DSPSplitComplex>::vector[abi:ne200100](&__A, *(this + 114));
      std::vector<std::vector<DSPSplitComplex>>::resize(this + 81, v102, &__A);
      if (__A)
      {
        *&v138 = __A;
        operator delete(__A);
      }

      v103 = *(this + 110);
      v104 = *(this + 114);
      LODWORD(v131) = 0;
      std::vector<float>::vector[abi:ne200100](&__A, v104);
      std::vector<std::vector<float>>::assign(this + 84, v103, &__A);
      if (__A)
      {
        *&v138 = __A;
        operator delete(__A);
      }

      v106 = *(this + 143);
      LODWORD(__A) = 0;
      std::vector<float>::assign(this + 90, v106, &__A, v105);
      v107 = *(this + 143);
      LODWORD(__A) = 0;
      std::vector<float>::assign(this + 93, v107, &__A, v108);
      *(this + 96) = *(this + 90);
      *(this + 97) = *(this + 93);
      v109 = *(this + 110);
      v110 = *(this + 143);
      LODWORD(v131) = 0;
      std::vector<float>::vector[abi:ne200100](&__A, v110);
      std::vector<std::vector<float>>::assign(this + 98, v109, &__A);
      if (__A)
      {
        *&v138 = __A;
        operator delete(__A);
      }

      v111 = *(this + 110);
      v112 = *(this + 143);
      LODWORD(v131) = 0;
      std::vector<float>::vector[abi:ne200100](&__A, v112);
      std::vector<std::vector<float>>::assign(this + 101, v111, &__A);
      if (__A)
      {
        *&v138 = __A;
        operator delete(__A);
      }

      std::vector<DSPSplitComplex>::resize(this + 104, *(this + 110));
      v87 = (v80 & 1) + v80;
      v86 = *(this + 110);
      if (v86)
      {
        v113 = *(this + 98);
        v114 = *(this + 101);
        v115 = (*(this + 104) + 8);
        v116 = *(this + 110);
        do
        {
          v117 = *v113;
          v113 += 3;
          *(v115 - 1) = v117;
          v118 = *v114;
          v114 += 3;
          *v115 = v118;
          v115 += 2;
          --v116;
        }

        while (v116);
      }
    }

    LODWORD(__A) = 0;
    std::vector<float>::assign(v149, v86, &__A, v85);
    v119 = *(this + 110);
    LODWORD(v131) = 0;
    std::vector<float>::vector[abi:ne200100](&__A, v87);
    std::vector<std::vector<float>>::assign(v150, v119, &__A);
    if (__A)
    {
      *&v138 = __A;
      operator delete(__A);
    }

    if (*(this + 114))
    {
      v121 = (**(v130 + 128) * 180.0) / 3.14159265;
      v122 = **(v130 + 152);
      IR::IRCoordinates::set(&v151, 0, v121);
      v123 = (v122 * 180.0) / 3.14159265;
      IR::IRCoordinates::set(&v151, 1u, v123);
      IR::IRCoordinates::set(&v151, 2u, 1.0);
      IR::IRCoordinates::set(&v151, 5u, *(this + 106));
      IR::IRData::getInterpolatedTimeDomainCoeffs<std::vector<float>>();
    }

    LODWORD(__A) = 0;
    std::vector<float>::assign(this + 87, 0, &__A, v120);
    v124 = (*(this + 113) * *(this + 114));
    LODWORD(__A) = 0;
    std::vector<float>::assign(this + 68, v124, &__A, v125);
    v24 = 0;
  }

  else
  {
    if (IR::getHOA2BinauralIRRendererLog(void)::onceToken != -1)
    {
      IR::HOA2BinauralIRRenderer::setEnvironment();
    }

    v88 = IR::getHOA2BinauralIRRendererLog(void)::gLog;
    if (os_log_type_enabled(IR::getHOA2BinauralIRRendererLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::HOA2BinauralIRRenderer::setEnvironment(v88, v89, v90, v91, v92, v93, v94, v95);
    }

    v24 = 4294956425;
  }

  if (v136)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
  }

  __A = &v142;
  std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&__A);
  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  if (v149[0])
  {
    v149[1] = v149[0];
    operator delete(v149[0]);
  }

  __p = v150;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_124:
  if (v156)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v156);
  }

  return v24;
}