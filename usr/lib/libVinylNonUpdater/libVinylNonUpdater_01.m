void sub_29827BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *aBlock, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v25 - 48);
  if (v28)
  {
    if (!atomic_fetch_add(v28 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v28 + 16))(v28);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v25 - 40));
  _Unwind_Resume(a1);
}

void eUICC::Perso::PersoImplementation::logTransactionCFData(uint64_t a1, __int128 *a2, CFDataRef *a3)
{
  if (*a3)
  {
    BytePtr = CFDataGetBytePtr(*a3);
    Length = CFDataGetLength(*a3);
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, BytePtr, &BytePtr[Length], Length);
    v8 = *(a1 + 40);
    if (v8 >= *(a1 + 48))
    {
      v9 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, &__p);
    }

    else
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, &__p);
      v9 = v8 + 2;
      *(a1 + 40) = v8 + 2;
    }

    *(a1 + 40) = v9;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

void sub_29827BD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(uint64_t *a1, __CFError **a2)
{
  v41 = 0;
  v42 = 0;
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "inData");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create data\n", v13, v14, v15, v36);
LABEL_12:
    v9 = 11;
    goto LABEL_20;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v42;
  v6 = CFPropertyListCreateWithData(v5, v3, 0, 0, error);
  v41 = v6;
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "outPlist");
    gBBULogMaskGet();
    ctu::cf::show(1, *a1, v19);
    v20 = v40;
    v21 = error[0];
    ctu::cf::show(__p, v42, v22);
    v26 = error;
    if (v20 < 0)
    {
      LOBYTE(v26) = v21;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to deserialize dictionary %s error %s\n", v23, v24, v25, v26);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (v40 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_12;
  }

  v7 = CFGetTypeID(v6);
  if (v7 == CFDictionaryGetTypeID())
  {
    __p[0] = v6;
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(error, __p);
    v8 = *a2;
    *a2 = error[0];
    error[0] = v8;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(error);
    v9 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()");
    gBBULogMaskGet();
    ctu::cf::show(error, v6, v30);
    if (v40 >= 0)
    {
      v34 = error;
    }

    else
    {
      LOBYTE(v34) = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Deserialized plist data is not a dictionary: %s\n", v31, v32, v33, v34);
    if (v40 < 0)
    {
      operator delete(error[0]);
    }

    v9 = 11;
  }

  CFRelease(v6);
LABEL_20:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v42);
  return v9;
}

void sub_29827C03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void sub_29827C17C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<BOOL>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29827C328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(const void **a1)
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

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = v9 + 2 * v3;
  v18 = v17;
  v19 = &v9[2 * v8];
  std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(v17, a2, a3);
  v10 = v17 + 2;
  v11 = *(a1 + 8) - *a1;
  v12 = v17 - v11;
  memcpy(v17 - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v10;
}

void sub_29827C4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  return this;
}

void sub_29827C540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

uint64_t std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(v6, a2, a3, v6->__r_.__value_.__l.__size_);
    v6->__r_.__value_.__l.__size_ = result;
  }

  return result;
}

void sub_29827C690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[48 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](this, v6);
      v6 += 3;
      this += 2;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_29827C75C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *(a2 + 3), *(a2 + 4), *(a2 + 4) - *(a2 + 3));
  return this;
}

void sub_29827C7EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB2AF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29827C944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 32);
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a2 + 16));
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a2 + 8));
    if (*a2)
    {
      dispatch_release(*a2);
    }

    operator delete(a2);
  }
}

void *ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(a1, v5);
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

uint64_t *std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2869C0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2869D0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>@<X0>(atomic_ullong **a1@<X0>, void **a2@<X8>)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3002000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v4 = operator new(0xA0uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A1EB2B70;
  v9 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  v5 = *a1;
  *a1 = v4;
  if (v5 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke;
  aBlock[3] = &unk_29EE8E7B0;
  aBlock[4] = v8;
  *a2 = _Block_copy(aBlock);
  _Block_object_dispose(v8, 8);
  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v9);
}

void sub_29827CF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v7 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::set_value(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(v3, a2);
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_29827D11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(a1, v5);
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_94()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t VinylDaleCommunication::startRouterServer(VinylDaleCommunication *this)
{
  v2 = *(this + 8);
  gBBULogMaskGet();
  if (v2)
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server starting.\n", v3, v4, v5, v16);
    v6 = dispatch_group_create();
    v7 = v6;
    v8 = *(this + 8);
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v7);
    }

    abb::router::Server::start();
    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    v9 = dispatch_time(0, 15000000000);
    v10 = dispatch_group_wait(v7, v9);
    gBBULogMaskGet();
    if (v10)
    {
      v14 = "Failed to start router server due to timeout\n";
    }

    else
    {
      v14 = "Router server started.\n";
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", v14, v11, v12, v13, v17);
    if (v7)
    {
      dispatch_release(v7);
    }

    if (v10)
    {
      return 0;
    }
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server was not instantiated by VinylRestore to start it.\n", v3, v4, v5, v16);
  }

  return 1;
}

void sub_29827D354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::stopRouterServer(VinylDaleCommunication *this)
{
  v2 = *(this + 8);
  gBBULogMaskGet();
  if (v2)
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server stopping.\n", v3, v4, v5, v16);
    v6 = dispatch_group_create();
    v7 = v6;
    v8 = *(this + 8);
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v7);
    }

    abb::router::Server::stop();
    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    v9 = dispatch_time(0, 2000000000);
    v10 = dispatch_group_wait(v7, v9);
    gBBULogMaskGet();
    if (v10)
    {
      v14 = "Failed to stop router server due to timeout\n";
    }

    else
    {
      v14 = "Router server stopped.\n";
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", v14, v11, v12, v13, v17);
    if (v7)
    {
      dispatch_release(v7);
    }

    if (v10)
    {
      return 0;
    }
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server was not instantiated by VinylRestore to stop it.\n", v3, v4, v5, v16);
  }

  return 1;
}

void sub_29827D4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::createTransport(uint64_t a1)
{
  v42[4] = *MEMORY[0x29EDCA608];
  if ((BBUpdaterCommon::inRestoreOS(a1) & 1) == 0)
  {
    result = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    if (!result)
    {
      goto LABEL_36;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](result);
    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(&v37, "router.server");
  std::string::basic_string[abi:ne200100]<0>(&v28, "com.apple.router.abb");
  std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.telephony.control-msg.xpc.allow");
  v32 = xmmword_2982BFEF0;
  v33 = 0;
  v34 = 0;
  v35 = xmmword_2982BFF00;
  v36 = 5;
  abb::router::Server::create();
  v2 = v40;
  v40 = 0uLL;
  v3 = *(a1 + 72);
  *(a1 + 64) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v40 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
    }
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  if (*(a1 + 64))
  {
    object = dispatch_queue_create("link.accepter.local", 0);
    abb::link::LocalLinkAccepter::create();
    if (object)
    {
      dispatch_release(object);
    }

    if (!v37)
    {
      v12 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v12))
      {
        _BBULog(1, 6, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n", v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Dale/VinylDaleCommunication.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "link accepted failed. t\n", v16, v17, v18, v24);
      v9 = 0;
LABEL_29:
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_35:
      result = 0;
      goto LABEL_36;
    }

    v4 = *(a1 + 64);
    v26 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    abb::router::Server::addLocalLinkAccepter();
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v5 = *(a1 + 64);
    _ZNSt3__115allocate_sharedB8ne200100I18VinylMipcTransportNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v40);
    v25 = *(&v40 + 1);
    v40 = 0uLL;
    abb::router::Server::addTransport();
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (*(&v40 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
    }

    v41 = 1;
    v6 = *(a1 + 64);
    v42[0] = &unk_2A1EB2C68;
    v42[1] = &v41;
    v42[3] = v42;
    abb::router::Server::registerErrorHandler();
    std::__function::__value_func<void ()(abb::router::Error,std::string const&)>::~__value_func[abi:ne200100](v42);
    abb::router::Server::createLocalLink(&v40, *(a1 + 64));
    v7 = v40;
    v40 = 0uLL;
    v8 = *(a1 + 56);
    *(a1 + 48) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v40 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
      }
    }

    if (VinylDaleCommunication::startRouterServer(a1))
    {
      if (v41)
      {
        v9 = 1;
        goto LABEL_29;
      }

      v23 = gBBULogMaskGet();
      if ((VinylController::performNonUpdateOperation(v23) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v19 = gBBULogMaskGet();
      if ((VinylController::performNonUpdateOperation(v19) & 1) == 0)
      {
LABEL_45:
        v9 = 0;
        goto LABEL_29;
      }
    }

    _BBULog(1, 6, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n", v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Dale/VinylDaleCommunication.cpp");
    goto LABEL_45;
  }

  VinylDaleCommunication::createTransport();
LABEL_32:
  result = 3;
LABEL_36:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29827D868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 112);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::openChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  VinylDaleCommunication::openChannel(a1, a2, a3, a4, a5, a6, a7, a8, v8);
  return 3;
}

uint64_t VinylDaleCommunication::freeTransport(VinylDaleCommunication *a1)
{
  v2 = VinylDaleCommunication::stopRouterServer(a1);
  v3 = *(a1 + 9);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 7);
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v2;
}

void VinylDaleCommunication::~VinylDaleCommunication(VinylDaleCommunication *this)
{
  VinylDaleCommunication::~VinylDaleCommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB2BB8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  VinylCommunication::~VinylCommunication(this);
}

uint64_t VinylDaleCommunication::get_transport_wrapper@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void abb::router::Config::~Config(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void _ZNSt3__115allocate_sharedB8ne200100I18VinylMipcTransportNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0xB8uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A1EB2C18;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  v2[3] = &unk_2A1EB36F0;
  v2[20] = 0;
  v2[21] = 0;
  v2[22] = 0;
  *(v2 + 176) = 0;
  *a1 = v2 + 3;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  std::shared_ptr<VinylMipcTransport>::__enable_weak_this[abi:ne200100]<VinylMipcTransport,VinylMipcTransport,0>(a1, v2 + 4, (v2 + 3));
}

void std::__shared_ptr_emplace<VinylMipcTransport>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB2C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::shared_ptr<VinylMipcTransport>::__enable_weak_this[abi:ne200100]<VinylMipcTransport,VinylMipcTransport,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void *std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EB2C68;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EB2C68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  gBBULogMaskGet();
  if (*(a3 + 23) >= 0)
  {
    LOBYTE(v8) = a3;
  }

  else
  {
    v8 = *a3;
  }

  result = _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server eror: %s\n", v5, v6, v7, v8);
  **(a1 + 8) = 0;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(abb::router::Error,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _BBUFSDebugPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (sDelegate)
  {
    return sDelegate(result, a2, &a9);
  }

  return result;
}

uint64_t eUICC::getSIMId(eUICC *this)
{
  if (this == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t eUICC::eUICCVinylDALValve::eUICCVinylDALValve(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5)
{
  v28 = *MEMORY[0x29EDCA608];
  *(a1 + 275) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v10 = (a1 + 328);
  *a1 = &unk_2A1EB2CF8;
  v11 = dispatch_queue_create("com.apple.VinylCommunication", 0);
  v12 = a5[1];
  v21 = *a5;
  v22 = v12;
  object = v11;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abb::router::Client::create();
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 296) = a2;
  *(a1 + 292) = a3;
  *(a1 + 291) = a4;
  *(a1 + 304) = 8;
  eUICC::eUICCVinylValve::hardwareHasESIM = (*(*a1 + 128))(a1, &eUICC::eUICCVinylValve::simSKUID);
  v13 = dispatch_semaphore_create(0);
  v14 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v24 = &unk_2A1EB2E10;
  v25 = a1;
  v26 = v14;
  v27 = &v24;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v24);
  v24 = &unk_2A1EB2EA0;
  v25 = a1;
  v27 = &v24;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v24);
  v24 = &unk_2A1EB2F20;
  v25 = a1;
  v27 = &v24;
  abb::router::Client::regIndHandlerInternal();
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](&v24);
  abb::router::Client::start(v10);
  v15 = dispatch_time(0, 7500000000);
  if (dispatch_semaphore_wait(v14, v15))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for mipc client start.\n", v16, v17, v18, v21);
    *(a1 + 352) = 0;
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  v19 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29827E160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](&a12);
  if (v13)
  {
    dispatch_release(v13);
  }

  v15 = *(v12 + 47);
  if (v15)
  {
    *(v12 + 48) = v15;
    operator delete(v15);
  }

  v16 = *(v12 + 45);
  if (v16)
  {
    dispatch_release(v16);
  }

  *(v12 + 41) = &unk_2A1EB2DE0;
  v17 = *(v12 + 43);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(v12 + 40);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  VinylCommunication::~VinylCommunication(v12);
  _Unwind_Resume(a1);
}

void abb::router::Client::~Client(abb::router::Client *this)
{
  *this = &unk_2A1EB2DE0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A1EB2DE0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(this);
}

void *eUICC::eUICCVinylDALValve::GetVinylType@<X0>(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 288) = 1;
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylDALValve::waitForeSIMBoot(eUICC::eUICCVinylDALValve *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46[4] = *MEMORY[0x29EDCA608];
  v44 = 0;
  if ((*(this + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::waitForeSIMBoot(this, a2, a3, a4, a5, a6, a7, a8, v39);
    v12 = 0;
    goto LABEL_34;
  }

  mipc::sim::Status_Req::Status_Req();
  if (*(this + 73) == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v42[10] = v9;
  v10 = operator new(1uLL);
  *v10 = 0;
  v11 = __p;
  __p = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = 0;
  v13 = 15;
  do
  {
    v14 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v18 = __p;
      if (__p)
      {
        stringifyVal(*__p, &v40);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Status_Req sent: Msg=0x%x fTlv_Mode = %s\n", v15, v16, v17, 15);
      if (v18 && v41 < 0)
      {
        operator delete(v40);
      }
    }

    abb::router::Client::send<mipc::sim::Status_Req>(v42, (this + 328), &__ns);
    v19 = abb::router::SendProxy::timeout();
    if (v14)
    {
      dispatch_retain(v14);
    }

    v20 = operator new(0x20uLL);
    *v20 = &unk_2A1EB2FC0;
    v20[1] = this;
    v20[2] = &v44;
    v20[3] = v14;
    v46[3] = v20;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v46, (v19 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v46);
    MEMORY[0x29C285FB0](&__ns);
    v21 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v14, v21) && (gBBULogMaskGet(), _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Status Req.\n", v22, v23, v24, v39), !*(this + 37)))
    {
      v30 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v30))
      {
        _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "No transport available.. bail out\n", v34, v35, v36, v39);
      v25 = 1;
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v25 = 1;
      if (v44 - 20 >= 2 && v44 != 253)
      {
        gBBULogMaskGet();
        --v13;
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM Status Req attempt %d failed.\n", v26, v27, v28, 15 - v13);
        __ns.__rep_ = 1000000000;
        std::this_thread::sleep_for (&__ns);
        v25 = 0;
        if (!v14)
        {
          goto LABEL_25;
        }

LABEL_24:
        dispatch_release(v14);
        goto LABEL_25;
      }

      v12 = 1;
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    if (v13)
    {
      v29 = v25;
    }

    else
    {
      v29 = 1;
    }
  }

  while (v29 != 1);
  mipc::sim::Status_Req::~Status_Req(v42);
LABEL_34:
  v37 = *MEMORY[0x29EDCA608];
  return v12 & 1;
}

uint64_t abb::router::Client::send<mipc::sim::Status_Req>@<X0>(mipc::sim::Status_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::sim::Status_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

void eUICC::eUICCVinylDALValve::GetData_EoS(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>)
{
  v24[4] = *MEMORY[0x29EDCA608];
  mipc::dale_vinyl::Eos_Getdata_Req::Eos_Getdata_Req();
  if (*(this + 73) == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v21[10] = v4;
  v5 = operator new(1uLL);
  *v5 = 0;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = dispatch_semaphore_create(0);
  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v11 = __p;
    if (__p)
    {
      stringifyVal(*__p, &v19);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "EoS_Getdata_Req sent: Msg=0x%x fTlv_Is_Num_Of_Profile_Needed = %s\n", v8, v9, v10, 3);
    if (v11 && v20 < 0)
    {
      operator delete(v19);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Eos_Getdata_Req>(v21, (this + 328), v23);
  v12 = abb::router::SendProxy::timeout();
  if (v7)
  {
    dispatch_retain(v7);
  }

  v24[0] = &unk_2A1EB3040;
  v24[1] = this;
  v24[2] = v7;
  v24[3] = v24;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v24, (v12 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v24);
  MEMORY[0x29C285FB0](v23);
  v13 = dispatch_time(0, 7500000000);
  if (dispatch_semaphore_wait(v7, v13))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on EoS Get Data Req.\n", v14, v15, v16, v18);
  }

  memcpy(a2, this + 8, 0x11BuLL);
  if (v7)
  {
    dispatch_release(v7);
  }

  mipc::dale_vinyl::Eos_Getdata_Req::~Eos_Getdata_Req(v21);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_29827E978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  mipc::dale_vinyl::Eos_Getdata_Req::~Eos_Getdata_Req(&a18);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Eos_Getdata_Req>@<X0>(mipc::dale_vinyl::Eos_Getdata_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Eos_Getdata_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

void *eUICC::eUICCVinylDALValve::GetData@<X0>(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>)
{
  v44[4] = *MEMORY[0x29EDCA608];
  v4 = (this + 8);
  if (*(this + 290) == 1)
  {
    gBBULogMaskGet();
    v8 = "eUICCVinylData cache is valid. Using cached data!\n";
    v9 = 22;
LABEL_17:
    _BBULog(v9, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", v8, v5, v6, v7, v38);
    goto LABEL_18;
  }

  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *v4 = 0u;
  *(this + 275) = 0u;
  RadioVendor = TelephonyRadiosGetRadioVendor();
  *(this + 2) = (RadioVendor - 2) < 3;
  if ((*(this + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::GetData(RadioVendor, v11, v12, v13, v14, v15, v16, v17, v38);
    goto LABEL_18;
  }

  if ((eUICC::eUICCVinylDALValve::waitForeSIMBoot(this, v11, v12, v13, v14, v15, v16, v17) & 1) == 0)
  {
    gBBULogMaskGet();
    v8 = "SIM status req failed even after several retries.\n";
    v9 = 0;
    goto LABEL_17;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v18 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(v43);
    v19 = v43[0];
    v43[0] = 0uLL;
    v20 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (*(&v43[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43[0] + 1));
      }
    }

    v18 = xmmword_2A13A8CA0;
  }

  v21 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v22 = BBUCapabilities::supportsEuiccViaEOS(v18);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v22)
  {
    result = (*(*this + 136))(this);
    goto LABEL_21;
  }

  mipc::dale_vinyl::Getdata_Req::Getdata_Req();
  if (*(this + 73) == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v41[10] = v25;
  v26 = operator new(1uLL);
  *v26 = 0;
  v27 = __p;
  __p = v26;
  if (v27)
  {
    operator delete(v27);
  }

  v28 = dispatch_semaphore_create(0);
  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v32 = __p;
    if (__p)
    {
      stringifyVal(*__p, &v39);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Getdata_Req sent: Msg=0x%x fTlv_Is_Num_Of_Profile_Needed = %s\n", v29, v30, v31, 2);
    if (v32 && v40 < 0)
    {
      operator delete(v39);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Getdata_Req>(v41, (this + 328), v43);
  v33 = abb::router::SendProxy::timeout();
  if (v28)
  {
    dispatch_retain(v28);
  }

  v44[0] = &unk_2A1EB3110;
  v44[1] = this;
  v44[2] = v28;
  v44[3] = v44;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v44, (v33 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v44);
  MEMORY[0x29C285FB0](v43);
  v34 = dispatch_time(0, 7500000000);
  if (dispatch_semaphore_wait(v28, v34))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Get Data Req.\n", v35, v36, v37, v38);
  }

  if (v28)
  {
    dispatch_release(v28);
  }

  mipc::dale_vinyl::Getdata_Req::~Getdata_Req(v41);
LABEL_18:
  if (*(this + 290) == 1)
  {
    eUICC::logEUICCData(v4);
  }

  result = memcpy(a2, v4, 0x11BuLL);
LABEL_21:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29827EE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  mipc::dale_vinyl::Getdata_Req::~Getdata_Req(&a18);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Getdata_Req>@<X0>(mipc::dale_vinyl::Getdata_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Getdata_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::SetCardMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32[4] = *MEMORY[0x29EDCA608];
  v30 = 18;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Switch_Mode_Req::Switch_Mode_Req();
    if (*(a1 + 292) == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v28[10] = v9;
    v10 = operator new(1uLL);
    *v10 = 1;
    v11 = __p;
    __p = v10;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v16 = __p;
      if (__p)
      {
        stringifyVal(*__p, &v26);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Switch_Mode_Req sent: Msg=0x%x fTlv_Is_Reset_Req = %s\n", v13, v14, v15, 4);
      if (v16 && v27 < 0)
      {
        operator delete(v26);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Switch_Mode_Req>(v28, (a1 + 328), v31);
    v17 = abb::router::SendProxy::timeout();
    if (v12)
    {
      dispatch_retain(v12);
    }

    v18 = operator new(0x20uLL);
    *v18 = &unk_2A1EB3190;
    v18[1] = a1;
    v18[2] = &v30;
    v18[3] = v12;
    v32[3] = v18;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v32, (v17 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v32);
    MEMORY[0x29C285FB0](v31);
    v19 = dispatch_time(0, 11500000000);
    if (dispatch_semaphore_wait(v12, v19))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Switch Mode Req.\n", v20, v21, v22, v25);
    }

    if (v12)
    {
      dispatch_release(v12);
    }

    mipc::dale_vinyl::Switch_Mode_Req::~Switch_Mode_Req(v28);
    result = v30;
  }

  else
  {
    eUICC::eUICCVinylDALValve::SetCardMode(a1, a2, a3, a4, a5, a6, a7, a8, v25);
    result = 18;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29827F278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (v30)
  {
    dispatch_release(v30);
  }

  mipc::dale_vinyl::Switch_Mode_Req::~Switch_Mode_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Switch_Mode_Req>@<X0>(mipc::dale_vinyl::Switch_Mode_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Switch_Mode_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ResetCard(eUICC::eUICCVinylDALValve *this)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "eUICCVinylDALValve::ResetCard not supported\n", v1, v2, v3, vars0);
  return 9;
}

uint64_t eUICC::eUICCVinylDALValve::DeleteProfile(eUICC::eUICCVinylDALValve *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49[4] = *MEMORY[0x29EDCA608];
  v45 = 18;
  if (*(this + 352))
  {
    v8 = a2;
    v44[0] = 0xBFD00402820434BFLL;
    *(v44 + 6) = 0xD80302820434BFD0;
    mipc::dale_vinyl::Cmd_Req::Cmd_Req();
    if (*(this + 73) == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v38[10] = v10;
    v11 = operator new(4uLL);
    *v11 = 16;
    v12 = __p;
    __p = v11;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = operator new(1uLL);
    *v13 = 1;
    v14 = v40;
    v40 = v13;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = operator new(2uLL);
    *v15 = 1;
    v16 = v41;
    v41 = v15;
    if (v16)
    {
      operator delete(v16);
    }

    v17 = operator new(2uLL);
    *v17 = 0;
    v18 = v42;
    v42 = v17;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = &v44[v8] - v8;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v46, v19, (v19 + 7), 7uLL);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v43, &v46);
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    v20 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v24 = __p;
      if (__p)
      {
        stringifyVal(*__p, &v36);
      }

      v25 = v43;
      if (v43)
      {
        stringifyDataBuffer(*v43, v43[1] - *v43, &v35);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Delete Profile Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Payload = %s\n", v21, v22, v23, 1);
      if (v25 && SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (v24 && v37 < 0)
      {
        operator delete(v36);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>(v38, (this + 328), &v46);
    v26 = abb::router::SendProxy::timeout();
    if (v20)
    {
      dispatch_retain(v20);
    }

    v27 = operator new(0x20uLL);
    *v27 = &unk_2A1EB3210;
    v27[1] = this;
    v27[2] = &v45;
    v27[3] = v20;
    v49[3] = v27;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v49, (v26 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v49);
    MEMORY[0x29C285FB0](&v46);
    v28 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v20, v28))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Cmd Req Delete Profile.\n", v29, v30, v31, v34);
    }

    if (v20)
    {
      dispatch_release(v20);
    }

    MEMORY[0x29C2863E0](v38);
    result = v45;
  }

  else
  {
    eUICC::eUICCVinylDALValve::DeleteProfile(this, a2, a3, a4, a5, a6, a7, a8, v34);
    result = 18;
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29827F78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (v45 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  MEMORY[0x29C2863E0](&a24);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>@<X0>(mipc::dale_vinyl::Cmd_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Cmd_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::StoreData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52[4] = *MEMORY[0x29EDCA608];
  v48 = 18;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Cmd_Req::Cmd_Req();
    if (*(a1 + 292) == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v42[10] = v12;
    v13 = operator new(4uLL);
    *v13 = 5;
    v14 = __p;
    __p = v13;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = operator new(1uLL);
    *v15 = 1;
    v16 = v44;
    v44 = v15;
    if (v16)
    {
      operator delete(v16);
    }

    v17 = operator new(2uLL);
    *v17 = 1;
    v18 = v45;
    v45 = v17;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = operator new(2uLL);
    *v19 = 0;
    v20 = v46;
    v46 = v19;
    if (v20)
    {
      operator delete(v20);
    }

    v21 = *a2;
    v22 = a2[1];
    v23 = &v22[-*a2];
    v50 = 0;
    v51 = 0;
    v49 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v49, v21, v22, v23);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v47, &v49);
    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    v24 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v28 = __p;
      if (__p)
      {
        stringifyVal(*__p, &v40);
      }

      v29 = v47;
      if (v47)
      {
        stringifyDataBuffer(*v47, v47[1] - *v47, &v39);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Store data Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Payload = %s\n", v25, v26, v27, 1);
      if (v29 && SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (v28 && v41 < 0)
      {
        operator delete(v40);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>(v42, (a1 + 328), &v49);
    v30 = abb::router::SendProxy::timeout();
    if (v24)
    {
      dispatch_retain(v24);
    }

    v31 = operator new(0x30uLL);
    *v31 = &unk_2A1EB3290;
    v31[1] = a1;
    v31[2] = a3;
    v31[3] = &v48;
    v31[4] = a4;
    v31[5] = v24;
    v52[3] = v31;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v52, (v30 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v52);
    MEMORY[0x29C285FB0](&v49);
    v32 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v24, v32))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indications on Cmd Req store data.\n", v33, v34, v35, v38);
    }

    if (v24)
    {
      dispatch_release(v24);
    }

    MEMORY[0x29C2863E0](v42);
    result = v48;
  }

  else
  {
    eUICC::eUICCVinylDALValve::StoreData(a1, a2, a3, a4, a5, a6, a7, a8, v38);
    result = 18;
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29827FCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (v43 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  MEMORY[0x29C2863E0](&a24);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylDALValve::InitPerso(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37[4] = *MEMORY[0x29EDCA608];
  v35 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Init_Perso_Req::Init_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v31[10] = v11;
    v12 = operator new(1uLL);
    *v12 = 0;
    v13 = __p;
    __p = v12;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = operator new(1uLL);
    *v14 = 0;
    v15 = v33;
    v33 = v14;
    if (v15)
    {
      operator delete(v15);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v34, a2);
    v16 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v20 = v34;
      if (v34)
      {
        stringifyDataBuffer(*v34, v34[1] - *v34, &v30);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Init_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", v17, v18, v19, 7);
      if (v20 && SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Init_Perso_Req>(v31, (a1 + 328), v36);
    v21 = abb::router::SendProxy::timeout();
    if (v16)
    {
      dispatch_retain(v16);
    }

    v22 = operator new(0x28uLL);
    *v22 = &unk_2A1EB3310;
    v22[1] = a1;
    v22[2] = a3;
    v22[3] = &v35;
    v22[4] = v16;
    v37[3] = v22;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v37, (v21 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v37);
    MEMORY[0x29C285FB0](v36);
    v23 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v16, v23))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Init Perso Req.\n", v24, v25, v26, v29);
    }

    if (v16)
    {
      dispatch_release(v16);
    }

    mipc::dale_vinyl::Init_Perso_Req::~Init_Perso_Req(v31);
    result = v35;
  }

  else
  {
    eUICC::eUICCVinylDALValve::InitPerso(a1, a2, a3, a4, a5, a6, a7, a8, v29);
    result = 1;
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298280030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Init_Perso_Req::~Init_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Init_Perso_Req>@<X0>(mipc::dale_vinyl::Init_Perso_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Init_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::AuthPerso(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37[4] = *MEMORY[0x29EDCA608];
  v35 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Auth_Perso_Req::Auth_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v31[10] = v11;
    v12 = operator new(1uLL);
    *v12 = 0;
    v13 = __p;
    __p = v12;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = operator new(1uLL);
    *v14 = 0;
    v15 = v33;
    v33 = v14;
    if (v15)
    {
      operator delete(v15);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v34, a2);
    v16 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v20 = v34;
      if (v34)
      {
        stringifyDataBuffer(*v34, v34[1] - *v34, &v30);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Auth_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", v17, v18, v19, 8);
      if (v20 && SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Auth_Perso_Req>(v31, (a1 + 328), v36);
    v21 = abb::router::SendProxy::timeout();
    if (v16)
    {
      dispatch_retain(v16);
    }

    v22 = operator new(0x28uLL);
    *v22 = &unk_2A1EB3390;
    v22[1] = a1;
    v22[2] = a3;
    v22[3] = &v35;
    v22[4] = v16;
    v37[3] = v22;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v37, (v21 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v37);
    MEMORY[0x29C285FB0](v36);
    v23 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v16, v23))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Auth Perso Req.\n", v24, v25, v26, v29);
    }

    if (v16)
    {
      dispatch_release(v16);
    }

    mipc::dale_vinyl::Auth_Perso_Req::~Auth_Perso_Req(v31);
    result = v35;
  }

  else
  {
    eUICC::eUICCVinylDALValve::AuthPerso(a1, a2, a3, a4, a5, a6, a7, a8, v29);
    result = 1;
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2982804A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Auth_Perso_Req::~Auth_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Auth_Perso_Req>@<X0>(mipc::dale_vinyl::Auth_Perso_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Auth_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::FinalizePerso(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36[4] = *MEMORY[0x29EDCA608];
  v34 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Finalize_Perso_Req::Finalize_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v30[10] = v10;
    v11 = operator new(1uLL);
    *v11 = 0;
    v12 = __p;
    __p = v11;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = operator new(1uLL);
    *v13 = 0;
    v14 = v32;
    v32 = v13;
    if (v14)
    {
      operator delete(v14);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v33, a2);
    v15 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v19 = v33;
      if (v33)
      {
        stringifyDataBuffer(*v33, v33[1] - *v33, &v29);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Finalize_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", v16, v17, v18, 9);
      if (v19 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Finalize_Perso_Req>(v30, (a1 + 328), v35);
    v20 = abb::router::SendProxy::timeout();
    if (v15)
    {
      dispatch_retain(v15);
    }

    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1EB3410;
    v21[1] = a1;
    v21[2] = &v34;
    v21[3] = v15;
    v36[3] = v21;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v36, (v20 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v36);
    MEMORY[0x29C285FB0](v35);
    v22 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v15, v22))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Finalize Perso Req.\n", v23, v24, v25, v28);
    }

    if (v15)
    {
      dispatch_release(v15);
    }

    mipc::dale_vinyl::Finalize_Perso_Req::~Finalize_Perso_Req(v30);
    result = v34;
  }

  else
  {
    eUICC::eUICCVinylDALValve::FinalizePerso(a1, a2, a3, a4, a5, a6, a7, a8, v28);
    result = 1;
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298280890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Finalize_Perso_Req::~Finalize_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Finalize_Perso_Req>@<X0>(mipc::dale_vinyl::Finalize_Perso_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Finalize_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ValidatePerso(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37[4] = *MEMORY[0x29EDCA608];
  v35 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Validate_Perso_Req::Validate_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v31[10] = v11;
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v34, a2);
    v12 = operator new(2uLL);
    *v12 = 1;
    v13 = __p;
    __p = v12;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = operator new(2uLL);
    *v14 = 0;
    v15 = v33;
    v33 = v14;
    if (v15)
    {
      operator delete(v15);
    }

    v16 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v20 = v34;
      if (v34)
      {
        stringifyDataBuffer(*v34, v34[1] - *v34, &v30);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Validate_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", v17, v18, v19, 10);
      if (v20 && SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Validate_Perso_Req>(v31, (a1 + 328), v36);
    v21 = abb::router::SendProxy::timeout();
    if (v16)
    {
      dispatch_retain(v16);
    }

    v22 = operator new(0x28uLL);
    *v22 = &unk_2A1EB3490;
    v22[1] = a1;
    v22[2] = a3;
    v22[3] = &v35;
    v22[4] = v16;
    v37[3] = v22;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v37, (v21 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v37);
    MEMORY[0x29C285FB0](v36);
    v23 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v16, v23))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Validate Perso Req.\n", v24, v25, v26, v29);
    }

    if (v16)
    {
      dispatch_release(v16);
    }

    mipc::dale_vinyl::Validate_Perso_Req::~Validate_Perso_Req(v31);
    result = v35;
  }

  else
  {
    eUICC::eUICCVinylDALValve::ValidatePerso(a1, a2, a3, a4, a5, a6, a7, a8, v29);
    result = 1;
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298280C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Validate_Perso_Req::~Validate_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Validate_Perso_Req>@<X0>(mipc::dale_vinyl::Validate_Perso_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Validate_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::InstallPairingMSM(uint64_t a1, char **a2)
{
  v70[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet();
  v7 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In InstallPairingMSM...\n", v4, v5, v6, v58);
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::InstallPairingMSM(v7, v8, v9, v10, v11, v12, v13, v14, v59);
    v36 = 1;
    goto LABEL_30;
  }

  *(a1 + 368) = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = *(a1 + 360);
  *(a1 + 360) = v15;
  if (v16)
  {
    dispatch_release(v16);
  }

  v66 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v63[10] = v17;
  v18 = operator new(4uLL);
  *v18 = 2;
  v19 = __p;
  __p = v18;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *a2;
  v21 = a2[1];
  v22 = v21 - *a2;
  if (v22 >= 0xE01)
  {
    v39 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v39))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input signed auth size = %zu, should < %d\n", v43, v44, v45, *(a2 + 8) - *a2);
    goto LABEL_42;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v67, v20, v21, v22);
  mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v65, &v67);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v26 = __p;
    if (__p)
    {
      stringifyVal(*__p, &v61);
    }

    v27 = v65;
    if (v65)
    {
      stringifyDataBuffer(*v65, v65[1] - *v65, &v60);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Msm = %s\n", v23, v24, v25, 16);
    if (v27 && SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (v26 && v62 < 0)
    {
      operator delete(v61);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(v63, (a1 + 328), &v67);
  v28 = abb::router::SendProxy::timeout();
  v70[0] = &unk_2A1EB3510;
  v70[1] = a1;
  v70[2] = &v66;
  v70[3] = v70;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v70, (v28 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v70);
  MEMORY[0x29C285FB0](&v67);
  v29 = dispatch_time(0, 7500000000);
  if (dispatch_semaphore_wait(*(a1 + 360), v29))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on InstallPairingMSM Sep_Cmd_Req\n", v30, v31, v32, v59);
  }

  if ((v66 & 1) == 0)
  {
    v46 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v46))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v53 = "InstallPairingMSM Sep_Cmd_Cnf fail\n";
    goto LABEL_41;
  }

  if ((*(a1 + 368) & 1) == 0)
  {
    v54 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v54))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v53 = "InstallPairingMSM Sep_Cmd_Ind Fail\n";
LABEL_41:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", v53, v50, v51, v52, v59);
LABEL_42:
    v36 = 1;
    goto LABEL_29;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM succeed\n", v33, v34, v35, v59);
  v36 = 0;
LABEL_29:
  MEMORY[0x29C286180](v63);
LABEL_30:
  v37 = *MEMORY[0x29EDCA608];
  return v36;
}

void sub_298281290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (v42)
  {
    if (a24 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C286180](&a25);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>@<X0>(mipc::dale_vinyl::Sep_Cmd_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Sep_Cmd_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingGetNonce(uint64_t a1, void *a2)
{
  v55[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet();
  v7 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In ManagePairingGetNonce...\n", v4, v5, v6, v47);
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::ManagePairingGetNonce(v7, v8, v9, v10, v11, v12, v13, v14, v48);
    v32 = 1;
    goto LABEL_24;
  }

  *(a1 + 384) = *(a1 + 376);
  *(a1 + 368) = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = *(a1 + 360);
  *(a1 + 360) = v15;
  if (v16)
  {
    dispatch_release(v16);
  }

  v53 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v51[10] = v17;
  v18 = operator new(4uLL);
  *v18 = 0;
  v19 = __p;
  __p = v18;
  if (v19)
  {
    operator delete(v19);
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v23 = __p;
    if (__p)
    {
      stringifyVal(*__p, &v49);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s\n", v20, v21, v22, 16);
    if (v23 && v50 < 0)
    {
      operator delete(v49);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(v51, (a1 + 328), v54);
  v24 = abb::router::SendProxy::timeout();
  v55[0] = &unk_2A1EB3590;
  v55[1] = a1;
  v55[2] = &v53;
  v55[3] = v55;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v55, (v24 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v55);
  MEMORY[0x29C285FB0](v54);
  v25 = dispatch_time(0, 7500000000);
  if (dispatch_semaphore_wait(*(a1 + 360), v25))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on ManagePairingGetNonce Sep_Cmd_Req\n", v26, v27, v28, v48);
  }

  if (v53)
  {
    if (*(a1 + 368))
    {
      if ((a1 + 376) != a2)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(a1 + 376), *(a1 + 384), *(a1 + 384) - *(a1 + 376));
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce succeed\n", v29, v30, v31, v48);
      v32 = 0;
      goto LABEL_23;
    }

    v43 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v43))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v42 = "ManagePairingGetNonce Sep_Cmd_Ind fail\n";
  }

  else
  {
    v35 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v35))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v42 = "ManagePairingGetNonce Sep_Cmd_Cnf fail\n";
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", v42, v39, v40, v41, v48);
  v32 = 1;
LABEL_23:
  MEMORY[0x29C286180](v51);
LABEL_24:
  v33 = *MEMORY[0x29EDCA608];
  return v32;
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(uint64_t a1, char **a2, char **a3)
{
  v86[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet();
  v9 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In ManagePairingAuthenticate...\n", v6, v7, v8, v72);
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(v9, v10, v11, v12, v13, v14, v15, v16, v73);
    v35 = 1;
    goto LABEL_39;
  }

  *(a1 + 368) = 0;
  v17 = dispatch_semaphore_create(0);
  v18 = *(a1 + 360);
  *(a1 + 360) = v17;
  if (v18)
  {
    dispatch_release(v18);
  }

  v82 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v78[10] = v19;
  v20 = operator new(4uLL);
  *v20 = 1;
  v21 = __p;
  __p = v20;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *a2;
  v23 = a2[1];
  v24 = v23 - *a2;
  if (v24 >= 0x49)
  {
    v44 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v44))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v51 = "ManagePairingAuthenticate input signed auth size = %zu, should < %d\n";
    goto LABEL_50;
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v83, v22, v23, v24);
  mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v80, &v83);
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  v25 = a3[1];
  if (*a3 == v25)
  {
    v52 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v52))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v59 = "ManagePairingAuthenticate input nonce is empty\n";
LABEL_57:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", v59, v56, v57, v58, v73);
    goto LABEL_58;
  }

  if (v25 - *a3 != 16)
  {
    v60 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v60))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v51 = "ManagePairingAuthenticate input nonce size = %zu, should be %d\n";
    a2 = a3;
LABEL_50:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", v51, v48, v49, v50, *(a2 + 8) - *a2);
LABEL_58:
    v35 = 1;
    goto LABEL_38;
  }

  mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,false>::operator=<std::vector<unsigned char> const&>(&v81, a3);
  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v29 = __p;
    if (__p)
    {
      stringifyVal(*__p, &v76);
    }

    v30 = v80;
    if (v80)
    {
      stringifyDataBuffer(*v80, v80[1] - *v80, &v75);
    }

    v31 = v81;
    if (v81)
    {
      stringifyDataBuffer(*v81, v81[1] - *v81, &v74);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Signed_Auth = %s fTlv_Nonce = %s\n", v26, v27, v28, 16);
    if (v31 && SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (v30 && SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (v29 && v77 < 0)
    {
      operator delete(v76);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(v78, (a1 + 328), &v83);
  v32 = abb::router::SendProxy::timeout();
  v33 = operator new(0x20uLL);
  *v33 = &unk_2A1EB3610;
  v33[1] = a1;
  v33[2] = &v82 + 1;
  v33[3] = &v82;
  v86[3] = v33;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v86, (v32 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v86);
  MEMORY[0x29C285FB0](&v83);
  v34 = dispatch_time(0, 7500000000);
  if (!dispatch_semaphore_wait(*(a1 + 360), v34))
  {
LABEL_35:
    if ((v82 & 0x100) != 0)
    {
      if (*(a1 + 368))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate succeed\n", v39, v40, v41, v73);
        v35 = 0;
LABEL_38:
        MEMORY[0x29C286180](v78);
        goto LABEL_39;
      }

      v68 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v68))
      {
        _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
      }

      gBBULogMaskGet();
      v59 = "ManagePairingAuthenticate Sep_Cmd_Ind Sep_Cmd_Cnf\n";
    }

    else
    {
      v64 = gBBULogMaskGet();
      if (VinylController::performNonUpdateOperation(v64))
      {
        _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
      }

      gBBULogMaskGet();
      v59 = "ManagePairingAuthenticate Sep_Cmd_Cnf fail\n";
    }

    goto LABEL_57;
  }

  if ((v82 & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on ManagePairingAuthenticate Sep_Cmd_Req\n", v36, v37, v38, v73);
    goto LABEL_35;
  }

  MEMORY[0x29C286180](v78);
  v35 = 0;
LABEL_39:
  v42 = *MEMORY[0x29EDCA608];
  return v35;
}

void sub_298281DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (v50 && a25 < 0)
  {
    operator delete(__p);
  }

  if (v49)
  {
    if (a31 < 0)
    {
      operator delete(a26);
    }
  }

  MEMORY[0x29C286180](&a32);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,false>::operator=<std::vector<unsigned char> const&>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

void eUICC::eUICCVinylDALValve::~eUICCVinylDALValve(eUICC::eUICCVinylDALValve *this)
{
  *this = &unk_2A1EB2CF8;
  if (*(this + 352) == 1)
  {
    abb::router::Client::stop((this + 328));
  }

  v2 = *(this + 47);
  if (v2)
  {
    *(this + 48) = v2;
    operator delete(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(this + 41) = &unk_2A1EB2DE0;
  v4 = *(this + 43);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  VinylCommunication::~VinylCommunication(this);
}

{
  eUICC::eUICCVinylDALValve::~eUICCVinylDALValve(this);

  operator delete(v1);
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_2982820A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB2E10;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1EB2E10;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1EB2E10;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1EB2E10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  *(v2 + 352) = 1;
  return dispatch_semaphore_signal(v1);
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EB2EA0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EB2EA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EB2F20;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EB2F20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(uint64_t a1, abb::router::Message *this)
{
  abb::router::Message::getRawMsg(&v75, this);
  v4 = *v75;
  abb::router::Message::getRawMsg(&v72, this);
  MEMORY[0x29C286150](v62, v4, v72[1] - *v72);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  v5 = *(a1 + 8);
  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v64;
    if (v64)
    {
      stringifyVal(*v64, &v75);
    }

    v10 = v65;
    if (v65)
    {
      stringifyVal(*v65, &v72);
    }

    v11 = v66;
    if (v66)
    {
      stringifyVal(*v66, &v70);
    }

    v12 = v67;
    if (v67)
    {
      stringifyDataBuffer(*v67, *(v67 + 8) - *v67, &v69);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Sep_Cmd_Ind received: Msg=%04x fTlv_Cmd_Id = %s fTlv_Result = %s fTlv_Sw = %s fTlv_Nonce = %s\n", v6, v7, v8, 131);
    if (v12 && SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (v11 && v71 < 0)
    {
      operator delete(v70);
    }

    if (v10 && v74 < 0)
    {
      operator delete(v72);
    }

    if (v9 && v77 < 0)
    {
      operator delete(v75);
    }
  }

  if (!v64)
  {
    v30 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v30))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind doesn't have fTlv_Cmd_Id\n", v34, v35, v36, v61);
    goto LABEL_39;
  }

  v13 = *v64;
  if (*v64 >= 3)
  {
    v37 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v37))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v41 = "Sep_Cmd_Ind Cmd_Id %u not supported\n";
    goto LABEL_65;
  }

  if ((mipc::operator==() & 1) == 0)
  {
    v42 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v42))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
    }

    else
    {
      v68 = v63;
    }

    v60 = &v68;
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v60) = v68.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind returned error[%s].\n", v46, v47, v48, v60);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

  if (!v65 || *v65)
  {
    v19 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v19))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    if (v65)
    {
      v13 = *v65;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    v41 = "Sep_Cmd_Ind failed, result 0x%x\n";
    goto LABEL_65;
  }

  if (!v66 || *v66 != -28672)
  {
    v26 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v26))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    if (v66)
    {
      LOWORD(v13) = *v66;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    v41 = "Sep_Cmd_Ind failed, status word from UICC sw 0x%hx\n";
    goto LABEL_65;
  }

  if (v13 > 1)
  {
LABEL_38:
    *(v5 + 368) = 1;
    goto LABEL_39;
  }

  if (!v67)
  {
    v49 = gBBULogMaskGet();
    if (VinylController::performNonUpdateOperation(v49))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v41 = "Sep_Cmd_Ind Cmd_id %u should have fTlv_Nonce\n";
LABEL_65:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", v41, v23, v24, v25, v13);
    goto LABEL_39;
  }

  if (*(v67 + 8) - *v67 == 16)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 376), *v67, (*v67 + 16), 0x10uLL);
    goto LABEL_38;
  }

  v53 = gBBULogMaskGet();
  if (VinylController::performNonUpdateOperation(v53))
  {
    _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind nonce size = %zu, should be %d\n", v57, v58, v59, *(v67 + 8) - *v67);
LABEL_39:
  v14 = *(v5 + 360);
  if (v14)
  {
    dispatch_semaphore_signal(v14);
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind sepIndSem_ is NULL because of an unexpected baseband indication but that's fine\n", v15, v16, v17, v61);
  }

  return MEMORY[0x29C286160](v62);
}

void sub_298282AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C286160](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != -1)
  {
    result = (off_2A1EB2FA0[v2])(&v3, result);
  }

  *(v1 + 48) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 31) < 0)
  {
    v4 = *(a2 + 8);

    operator delete(v4);
  }
}

void mipc::Error::~Error(mipc::Error *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB2FC0;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB2FC0;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB2FC0;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB2FC0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v26.__val_, this);
    if ((v27 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v32 = v26;
    v5 = mipc::toErrorCode(v26.__val_, v4);
    std::error_code::message(&v28.__r_.__value_.__r.__words[1], &v32);
    v30 = 0;
    v31 = 0;
    v28.__r_.__value_.__r.__words[0] = v5;
    MEMORY[0x29C286400](v20, &v28, 1);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v29 < 0)
    {
      operator delete(v28.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v28, this);
    v6 = *v28.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(&v26.__val_, this);
    MEMORY[0x29C286410](v20, v6, *(*&v26.__val_ + 8) - **&v26.__val_);
    if (v26.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26.__cat_);
    }

    if (v28.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28.__r_.__value_.__l.__size_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    if (v23 && *(v23 + 23) < 0)
    {
      v10 = *v23;
    }

    if (v24 && *(v24 + 23) < 0)
    {
      v11 = *v24;
    }

    if (v25 && *(v25 + 23) < 0)
    {
      v12 = *v25;
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Status_Cnf received: Msg=0x%x fTlv_Eid = %s fTlv_Iccid = %s fTlv_Atr = %s\n", v7, v8, v9, 16);
  }

  v13 = mipc::operator==();
  gBBULogMaskGet();
  if (v13)
  {
    if ((*v22 + 4) > 0x19u)
    {
      v17 = "Unknown sim status";
    }

    else
    {
      v17 = off_29EE8E7D0[(*v22 + 4)];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM status: %s(%d).\n", v14, v15, v16, v17);
    **(a1 + 16) = *v22;
  }

  else
  {
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v21;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v18) = v28.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Status_Cnf returned error[%s].\n", v14, v15, v16, v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  return MEMORY[0x29C286420](v20);
}

void sub_2982831CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 89) < 0)
  {
    operator delete(*(v6 - 112));
  }

  MEMORY[0x29C286420](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9480], MEMORY[0x29EDC9368]);
}

void *std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298283520(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3040;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3040;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1EB3040;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1EB3040;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v52.__val_, this);
    if ((v53 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v50 = v52;
    v5 = mipc::toErrorCode(v52.__val_, v4);
    std::error_code::message(&__p, &v50);
    v44 = 0;
    v45 = 0;
    v42 = v5;
    MEMORY[0x29C286230](v33, &v42, 1);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v42, this);
    v6 = *v42;
    abb::router::Message::getRawMsg(&v52.__val_, this);
    MEMORY[0x29C286240](v33, v6, *(*&v52.__val_ + 8) - **&v52.__val_);
    if (v52.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52.__cat_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = *(a1 + 8);
  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v11 = v35;
    if (v35)
    {
      stringifyVal(*v35, &v42);
    }

    v32 = v36;
    if (v36)
    {
      stringifyVal(*v36, &v52);
    }

    v12 = v37;
    if (v37)
    {
      stringifyVal(*v37, &v50);
    }

    v13 = v41;
    if (v41)
    {
      stringifyVal(*v41, &v48);
    }

    v14 = v38;
    if (v38)
    {
      stringifyDataBuffer(*v38, v38[1] - *v38, &v47);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Is_Not_Personalized = %s fTlv_Sw = %s fTlv_Chip_Id = %s fTlv_Eid = %s\n", v8, v9, v10, 3);
    if (v14 && SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (v13 && v49 < 0)
    {
      operator delete(v48);
    }

    if (v12 && v51 < 0)
    {
      operator delete(*&v50.__val_);
    }

    if (v32 && v54 < 0)
    {
      operator delete(*&v52.__val_);
    }

    if (v11 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v42);
    }
  }

  if (mipc::operator==())
  {
    if (*v35)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf not successful, result 0x%x ", v15, v16, v17, *v35);
      v18 = v37;
      gBBULogMaskGet();
      if (v18)
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "sw1_sw2 0x%hx\n", v19, v20, v21, *v37);
      }

      else
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "\n", v19, v20, v21, v31);
      }
    }

    else
    {
      *(v7 + 8) = 0;
      if (v37)
      {
        *(v7 + 13) = *v37;
      }

      if (v38)
      {
        *(v7 + 15) = **v38;
      }

      if (v39)
      {
        v25 = (*v39)[1];
        *(v7 + 32) = **v39;
        *(v7 + 48) = v25;
      }

      if (v40)
      {
        mipc::getBuf<3ul,true>(v40, &v46);
        size = v46.__r_.__value_.__l.__size_;
        v27 = *(*v46.__r_.__value_.__l.__data_ + 2);
        *(v7 + 248) = **v46.__r_.__value_.__l.__data_;
        *(v7 + 250) = v27;
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      if (v36)
      {
        *(v7 + 12) = *v36;
      }

      if (v41)
      {
        *(v7 + 283) = *v41;
      }

      v28 = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v7 + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v7 + 286) = eUICC::eUICCVinylValve::simSKUID;
      *(v7 + 287) = v28 ^ 1;
      *(v7 + 290) = 1;
      eUICC::logEUICCData((v7 + 8));
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    }

    else
    {
      v46 = v34;
    }

    v29 = &v46;
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v29) = v46.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf returned error[%s].\n", v22, v23, v24, v29);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 16));
  return MEMORY[0x29C286250](v33);
}

void sub_298283BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v43 && *(v44 - 145) < 0)
  {
    operator delete(*(v44 - 168));
  }

  if (v42 && *(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (a16 && *(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (a15)
  {
    if (a42 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C286250](&a17);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mipc::getBuf<3ul,true>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  if (*result == v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v7[2] = v2;
    v7[3] = v3;
    v6 = v5;
    v7[0] = v4;
    return std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(v7, &v6, a2);
  }

  return result;
}

uint64_t std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>@<X0>(char **a1@<X1>, char **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,std::allocator<std::vector<unsigned char>>,0>(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,std::allocator<std::vector<unsigned char>>,0>(uint64_t a1, char **a2, char **a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A1EB30B0;
  v4 = *a2;
  v5 = *a3;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a1 + 24), v4, v5, v5 - v4);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB30B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3110;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3110;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1EB3110;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1EB3110;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v70.__val_, this);
    if ((v71 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v68 = v70;
    v5 = mipc::toErrorCode(v70.__val_, v4);
    std::error_code::message(&__p, &v68);
    v62 = 0;
    v63 = 0;
    v60 = v5;
    MEMORY[0x29C2860D0](v45, &v60, 1);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v60, this);
    v6 = *v60;
    abb::router::Message::getRawMsg(&v70.__val_, this);
    MEMORY[0x29C2860E0](v45, v6, *(*&v70.__val_ + 8) - **&v70.__val_);
    if (v70.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70.__cat_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = *(a1 + 8);
  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v11 = v47;
    if (v47)
    {
      stringifyVal(*v47, &v60);
    }

    v44 = v48;
    if (v48)
    {
      stringifyVal(*v48, &v70);
    }

    v12 = v49;
    if (v49)
    {
      stringifyVal(*v49, &v68);
    }

    v13 = v58;
    if (v58)
    {
      stringifyVal(*v58, &v66);
    }

    v14 = v50;
    if (v50)
    {
      stringifyDataBuffer(*v50, v50[1] - *v50, &v65);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Getdata_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Is_Not_Personalized = %s fTlv_Sw = %s fTlv_Chip_Id = %s fTlv_Eid = %s\n", v8, v9, v10, 2);
    if (v14 && SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v13 && v67 < 0)
    {
      operator delete(v66);
    }

    if (v12 && v69 < 0)
    {
      operator delete(*&v68.__val_);
    }

    if (v44 && v72 < 0)
    {
      operator delete(*&v70.__val_);
    }

    if (v11 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v60);
    }
  }

  if (mipc::operator==())
  {
    if (*v47)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Getdata_Cnf not successful, result 0x%x ", v15, v16, v17, *v47);
      v18 = v49;
      gBBULogMaskGet();
      if (v18)
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "sw1_sw2 0x%hx\n", v19, v20, v21, *v49);
      }

      else
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "\n", v19, v20, v21, v43);
      }
    }

    else
    {
      *(v7 + 8) = 0;
      if (v49)
      {
        *(v7 + 13) = *v49;
      }

      if (v50)
      {
        *(v7 + 15) = **v50;
      }

      if (v51)
      {
        *(v7 + 31) = *v51;
      }

      if (v54)
      {
        v25 = (*v54)[1];
        *(v7 + 32) = **v54;
        *(v7 + 48) = v25;
      }

      if (v52)
      {
        *(v7 + 64) = **v52;
      }

      if (v53)
      {
        *(v7 + 72) = **v53;
      }

      if (v55)
      {
        mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf(&v55, &v64);
        size = v64.__r_.__value_.__l.__size_;
        v27 = *v64.__r_.__value_.__l.__data_;
        *(v7 + 80) = **v64.__r_.__value_.__l.__data_;
        v29 = v27[2];
        v28 = v27[3];
        v30 = v27[1];
        *(v7 + 139) = *(v27 + 59);
        *(v7 + 112) = v29;
        *(v7 + 128) = v28;
        *(v7 + 96) = v30;
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      if (v56)
      {
        mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf(&v56, &v64);
        v31 = v64.__r_.__value_.__l.__size_;
        v32 = *v64.__r_.__value_.__l.__data_;
        *(v7 + 155) = **v64.__r_.__value_.__l.__data_;
        v34 = v32[2];
        v33 = v32[3];
        v35 = *(v32 + 59);
        *(v7 + 171) = v32[1];
        *(v7 + 214) = v35;
        *(v7 + 203) = v33;
        *(v7 + 187) = v34;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }
      }

      if (v57)
      {
        mipc::getBuf<3ul,true>(v57, &v64);
        v36 = v64.__r_.__value_.__l.__size_;
        v37 = *(*v64.__r_.__value_.__l.__data_ + 2);
        *(v7 + 248) = **v64.__r_.__value_.__l.__data_;
        *(v7 + 250) = v37;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }
      }

      if (v59)
      {
        mipc::getBuf<3ul,true>(v59, &v64);
        v38 = v64.__r_.__value_.__l.__size_;
        v39 = *(*v64.__r_.__value_.__l.__data_ + 16);
        *(v7 + 251) = **v64.__r_.__value_.__l.__data_;
        *(v7 + 267) = v39;
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }
      }

      if (v48)
      {
        *(v7 + 12) = *v48;
      }

      if (v58)
      {
        *(v7 + 283) = *v58;
      }

      v40 = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v7 + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v7 + 286) = eUICC::eUICCVinylValve::simSKUID;
      *(v7 + 287) = v40 ^ 1;
      *(v7 + 290) = 1;
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      v64 = v46;
    }

    v41 = &v64;
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v41) = v64.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Getdata_Cnf returned error[%s].\n", v22, v23, v24, v41);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 16));
  return MEMORY[0x29C2860F0](v45);
}

void sub_29828460C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (v51 && *(v52 - 161) < 0)
  {
    operator delete(*(v52 - 184));
  }

  if (v50 && *(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  if (a17 && *(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (a16)
  {
    if (a50 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2860F0](&a18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v8 = 69;
    result = std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v8, a2);
    v4 = **a2;
    v6 = *(v3 + 32);
    v5 = *(v3 + 48);
    v7 = *(v3 + 16);
    *(v4 + 61) = *(v3 + 61);
    *(v4 + 32) = v6;
    *(v4 + 48) = v5;
    *(v4 + 16) = v7;
    *v4 = *v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>@<X0>(size_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::allocator<std::vector<unsigned char>>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::allocator<std::vector<unsigned char>>,0>(void *a1, size_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EB30B0;
  std::vector<unsigned char>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3190;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3190;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3190;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3190;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v29, this);
    if ((v30 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v28.__r_.__value_.__l.__data_ = v29;
    v5 = mipc::toErrorCode(v29, v4);
    std::error_code::message(&__p, &v28);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C286280](v20, &v24, 1);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v6 = *v24;
    abb::router::Message::getRawMsg(&v29, this);
    MEMORY[0x29C286290](v20, v6, *(v29 + 8) - *v29);
    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v22;
    if (v22)
    {
      stringifyVal(*v22, &v24);
    }

    v11 = v23;
    if (v23)
    {
      stringifyVal(*v23, &v29);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Switch_Mode_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", v7, v8, v9, 4);
    if (v11 && v31 < 0)
    {
      operator delete(v29);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  if (mipc::operator==())
  {
    if (*v22)
    {
      gBBULogMaskGet();
      v19 = *v23;
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Switch_Mode_Cnf not successful, result 0x%x sw1_sw2 0x%hx\n", v12, v13, v14, *v22);
    }

    else
    {
      **(a1 + 16) = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v21;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v18) = v28.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Switch_Mode_Req returned error[%s].\n", v15, v16, v17, v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Switch_Mode_Cnf::~Switch_Mode_Cnf(v20);
}

void sub_298284D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Switch_Mode_Cnf::~Switch_Mode_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3210;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3210;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3210;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3210;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v28, this);
    if ((v29 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v27.__r_.__value_.__l.__data_ = v28;
    v5 = mipc::toErrorCode(v28, v4);
    std::error_code::message(&__p, &v27);
    v25 = 0;
    v26 = 0;
    v23 = v5;
    MEMORY[0x29C286370](v19, &v23, 1);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v23, this);
    v6 = *v23;
    abb::router::Message::getRawMsg(&v28, this);
    MEMORY[0x29C286380](v19, v6, *(v28 + 8) - *v28);
    if (*(&v28 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v21;
    if (v21)
    {
      stringifyVal(*v21, &v23);
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(*v22, &v28);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Delete Profile Cmd_Cnf received: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Result = %s\n", v7, v8, v9, 1);
    if (v11 && v30 < 0)
    {
      operator delete(v28);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v23);
    }
  }

  if (mipc::operator==())
  {
    if (*v22)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Delete Profile Cmd_Cnf not successful, result 0x%x\n", v12, v13, v14, *v22);
    }

    else
    {
      **(a1 + 16) = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v20;
    }

    v18 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v18) = v27.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Delete Profile Cmd_Req returned error[%s].\n", v15, v16, v17, v18);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Cmd_Cnf::~Cmd_Cnf(v19);
}

void sub_2982852BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Cmd_Cnf::~Cmd_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3290;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3290;
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1EB3290;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  v3 = *(a1 + 40);
  *(v2 + 5) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3290;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 40);
  *(a2 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v38, this);
    if ((v39 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v37.__r_.__value_.__l.__data_ = v38;
    v5 = mipc::toErrorCode(v38, v4);
    std::error_code::message(&__p, &v37);
    v34 = 0;
    v35 = 0;
    v32 = v5;
    MEMORY[0x29C2863A0](v25, &v32, 1);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v32, this);
    v6 = *v32;
    abb::router::Message::getRawMsg(&v38, this);
    MEMORY[0x29C2863B0](v25, v6, *(v38 + 8) - *v38);
    if (*(&v38 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v27;
    if (v27)
    {
      stringifyVal(*v27, &v32);
    }

    v11 = v28;
    if (v28)
    {
      stringifyVal(*v28, &v38);
    }

    v12 = v31;
    if (v31)
    {
      stringifyDataBuffer(*v31, *(v31 + 8) - *v31, &v37);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Store data Cmd_Ind received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", v7, v8, v9, 128);
    if (v12 && SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (v11 && v40 < 0)
    {
      operator delete(v38);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v32);
    }
  }

  if (mipc::operator==())
  {
    if (*v27)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Store data Cmd_Ind not successful, result 0x%x\n", v13, v14, v15, *v27);
    }

    else if (*v29 < 2u)
    {
      **(a1 + 32) = *v28;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v31, *(v31 + 8), *(v31 + 8) - *v31);
      **(a1 + 24) = 0;
    }

    else
    {
      gBBULogMaskGet();
      v24 = *v29;
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Not support for concatenated indications currently, segment 0x%x/0x%x\n", v19, v20, v21, *v30);
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    }

    else
    {
      v36 = v26;
    }

    v22 = &v36;
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v22) = v36.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Store data Cmd_Req returned error[%s].\n", v16, v17, v18, v22);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  return MEMORY[0x29C2863C0](v25);
}

void sub_2982858F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v37 && *(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (v36)
  {
    if (a36 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2863C0](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3310;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3310;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A1EB3310;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3310;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v32, this);
    if ((v33 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v31.__r_.__value_.__l.__data_ = v32;
    v5 = mipc::toErrorCode(v32, v4);
    std::error_code::message(&__p, &v31);
    v28 = 0;
    v29 = 0;
    v26 = v5;
    MEMORY[0x29C2861E0](v21, &v26, 1);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v26, this);
    v6 = *v26;
    abb::router::Message::getRawMsg(&v32, this);
    MEMORY[0x29C2861F0](v21, v6, *(v32 + 8) - *v32);
    if (*(&v32 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v23;
    if (v23)
    {
      stringifyVal(*v23, &v26);
    }

    v11 = v24;
    if (v24)
    {
      stringifyVal(*v24, &v32);
    }

    v12 = v25;
    if (v25)
    {
      stringifyDataBuffer(*v25, *(v25 + 8) - *v25, &v31);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Init_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", v7, v8, v9, 7);
    if (v12 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v11 && v34 < 0)
    {
      operator delete(v32);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v26);
    }
  }

  if ((mipc::operator==() & 1) == 0)
  {
    gBBULogMaskGet();
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v22;
    }

    v20 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v20) = v30.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Init_Perso_Cnf returned error[%s].\n", v16, v17, v18, v20);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

  if (*v23)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Init_Perso_Req not successful, result 0x%x", v13, v14, v15, *v23);
LABEL_39:
    v19 = 1;
    goto LABEL_40;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v25, *(v25 + 8), *(v25 + 8) - *v25);
  v19 = 0;
LABEL_40:
  **(a1 + 24) = v19;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Init_Perso_Cnf::~Init_Perso_Cnf(v21);
}

void sub_298285ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Init_Perso_Cnf::~Init_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3390;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3390;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A1EB3390;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v32, this);
    if ((v33 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v31.__r_.__value_.__l.__data_ = v32;
    v5 = mipc::toErrorCode(v32, v4);
    std::error_code::message(&__p, &v31);
    v28 = 0;
    v29 = 0;
    v26 = v5;
    MEMORY[0x29C286190](v21, &v26, 1);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v26, this);
    v6 = *v26;
    abb::router::Message::getRawMsg(&v32, this);
    MEMORY[0x29C2861A0](v21, v6, *(v32 + 8) - *v32);
    if (*(&v32 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v23;
    if (v23)
    {
      stringifyVal(*v23, &v26);
    }

    v11 = v24;
    if (v24)
    {
      stringifyVal(*v24, &v32);
    }

    v12 = v25;
    if (v25)
    {
      stringifyDataBuffer(*v25, *(v25 + 8) - *v25, &v31);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Auth_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", v7, v8, v9, 8);
    if (v12 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v11 && v34 < 0)
    {
      operator delete(v32);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v26);
    }
  }

  if ((mipc::operator==() & 1) == 0)
  {
    gBBULogMaskGet();
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v22;
    }

    v20 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v20) = v30.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Auth_Perso_Cnf returned error[%s].\n", v16, v17, v18, v20);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

  if (*v23)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Auth_Perso_Req not successful, result 0x%x", v13, v14, v15, *v23);
LABEL_39:
    v19 = 1;
    goto LABEL_40;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v25, *(v25 + 8), *(v25 + 8) - *v25);
  v19 = 0;
LABEL_40:
  **(a1 + 24) = v19;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Auth_Perso_Cnf::~Auth_Perso_Cnf(v21);
}

void sub_2982864C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Auth_Perso_Cnf::~Auth_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3410;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3410;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3410;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3410;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v29, this);
    if ((v30 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v28.__r_.__value_.__l.__data_ = v29;
    v5 = mipc::toErrorCode(v29, v4);
    std::error_code::message(&__p, &v28);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C2862D0](v20, &v24, 1);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v6 = *v24;
    abb::router::Message::getRawMsg(&v29, this);
    MEMORY[0x29C2862E0](v20, v6, *(v29 + 8) - *v29);
    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v22;
    if (v22)
    {
      stringifyVal(*v22, &v24);
    }

    v11 = v23;
    if (v23)
    {
      stringifyVal(*v23, &v29);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Finalize_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", v7, v8, v9, 9);
    if (v11 && v31 < 0)
    {
      operator delete(v29);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  if ((mipc::operator==() & 1) == 0)
  {
    gBBULogMaskGet();
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v21;
    }

    v19 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v19) = v28.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Finalize_Perso_Cnf returned error[%s].\n", v15, v16, v17, v19);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_36;
  }

  if (*v22)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Finalize_Perso_Req not successful, result 0x%x", v12, v13, v14, *v22);
LABEL_36:
    v18 = 1;
    goto LABEL_37;
  }

  if (*v23 != 36864)
  {
    printf("Finalize perso failed with sw = %02X.\n", *v23);
    goto LABEL_36;
  }

  v18 = 0;
LABEL_37:
  **(a1 + 16) = v18;
  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Finalize_Perso_Cnf::~Finalize_Perso_Cnf(v20);
}

void sub_298286A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Finalize_Perso_Cnf::~Finalize_Perso_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3490;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3490;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A1EB3490;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3490;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v32, this);
    if ((v33 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v31.__r_.__value_.__l.__data_ = v32;
    v5 = mipc::toErrorCode(v32, v4);
    std::error_code::message(&__p, &v31);
    v28 = 0;
    v29 = 0;
    v26 = v5;
    MEMORY[0x29C286320](v21, &v26, 1);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v26, this);
    v6 = *v26;
    abb::router::Message::getRawMsg(&v32, this);
    MEMORY[0x29C286330](v21, v6, *(v32 + 8) - *v32);
    if (*(&v32 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v23;
    if (v23)
    {
      stringifyVal(*v23, &v26);
    }

    v11 = v24;
    if (v24)
    {
      stringifyVal(*v24, &v32);
    }

    v12 = v25;
    if (v25)
    {
      stringifyDataBuffer(*v25, *(v25 + 8) - *v25, &v31);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Validate_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", v7, v8, v9, 10);
    if (v12 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v11 && v34 < 0)
    {
      operator delete(v32);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v26);
    }
  }

  if ((mipc::operator==() & 1) == 0)
  {
    gBBULogMaskGet();
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v22;
    }

    v20 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v20) = v30.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Validate_Perso_Cnf returned error[%s].\n", v16, v17, v18, v20);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

  if (*v23)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Validate_Perso_Req not successful, result 0x%x\n", v13, v14, v15, *v23);
LABEL_39:
    v19 = 1;
    goto LABEL_40;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v25, *(v25 + 8), *(v25 + 8) - *v25);
  v19 = 0;
LABEL_40:
  **(a1 + 24) = v19;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Validate_Perso_Cnf::~Validate_Perso_Cnf(v21);
}

void sub_298287034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Validate_Perso_Cnf::~Validate_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1EB3510;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3510;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v30.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v29 = *&v30.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v30.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v29);
    v27 = 0;
    v28 = 0;
    v25 = v5;
    MEMORY[0x29C286120](v22, &v25, 1);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v25, this);
    v6 = *v25;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C286130](v22, v6, *(v30.__r_.__value_.__r.__words[0] + 8) - *v30.__r_.__value_.__l.__data_);
    if (v30.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30.__r_.__value_.__l.__size_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v24;
    if (v24)
    {
      stringifyVal(*v24, &v25);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", v7, v8, v9, 16);
    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v25);
    }
  }

  if (mipc::operator==())
  {
    if (v24)
    {
      if (*v24)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf failed, result 0x%x\n", v11, v12, v13, *v24);
      }

      else
      {
        **(a1 + 16) = 1;
      }
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf has no fTlv_Result\n", v17, v18, v19, v21);
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v23;
    }

    v20 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v20) = v30.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf returned error[%s]\n", v14, v15, v16, v20);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v22);
}

void sub_29828746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 41) < 0)
  {
    operator delete(*(v3 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1EB3590;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3590;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v30.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v29 = *&v30.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v30.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v29);
    v27 = 0;
    v28 = 0;
    v25 = v5;
    MEMORY[0x29C286120](v22, &v25, 1);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v25, this);
    v6 = *v25;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C286130](v22, v6, *(v30.__r_.__value_.__r.__words[0] + 8) - *v30.__r_.__value_.__l.__data_);
    if (v30.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30.__r_.__value_.__l.__size_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v24;
    if (v24)
    {
      stringifyVal(*v24, &v25);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", v7, v8, v9, 16);
    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v25);
    }
  }

  if (mipc::operator==())
  {
    if (v24)
    {
      if (*v24)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf failed, result 0x%x\n", v11, v12, v13, *v24);
      }

      else
      {
        **(a1 + 16) = 1;
      }
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf has no fTlv_Result\n", v17, v18, v19, v21);
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v23;
    }

    v20 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v20) = v30.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf returned error[%s]\n", v14, v15, v16, v20);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v22);
}

void sub_298287868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 41) < 0)
  {
    operator delete(*(v3 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3610;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3610;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v34, this);
    if ((v34.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v33 = *&v34.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v34.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v33);
    v31 = 0;
    v32 = 0;
    v29 = v5;
    MEMORY[0x29C286120](v26, &v29, 1);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v29, this);
    v6 = *v29;
    abb::router::Message::getRawMsg(&v34, this);
    MEMORY[0x29C286130](v26, v6, *(v34.__r_.__value_.__r.__words[0] + 8) - *v34.__r_.__value_.__l.__data_);
    if (v34.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34.__r_.__value_.__l.__size_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v28;
    if (v28)
    {
      stringifyVal(*v28, &v29);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", v7, v8, v9, 16);
    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v29);
    }
  }

  if (mipc::operator==())
  {
    if (v28)
    {
      if (*v28)
      {
        if (*v28 != 8)
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf failed, result 0x%x\n", v22, v23, v24, *v28);
          goto LABEL_34;
        }

        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate has cached succeed result, no following indication\n", v11, v12, v13, v25);
        **(a1 + 16) = 1;
        v14 = *(a1 + 24);
      }

      else
      {
        v14 = *(a1 + 16);
      }

      *v14 = 1;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf has no fTlv_Result\n", v18, v19, v20, v25);
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v34, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v34 = v27;
    }

    v21 = &v34;
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v21) = v34.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf returned error[%s]\n", v15, v16, v17, v21);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

LABEL_34:
  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v26);
}

void sub_298287CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 41) < 0)
  {
    operator delete(*(v3 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_61()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t VinylMipcTransport::open(uint64_t a1, uint64_t a2, NSObject **a3)
{
  if (!*(a2 + 24) || !*a3)
  {
    return 0;
  }

  std::function<void ()(unsigned char const*,unsigned long)>::operator=((a1 + 112), a2);
  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 144);
  *(a1 + 144) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  TelephonyBasebandPCITransportInitParameters();
  v16 = *(a1 + 144);
  v22 = 0;
  v23 = 0;
  v18 = 0x200001B58;
  v20 = 0xF0000000000FLL;
  v15 = 30;
  v19 |= 5u;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_9;
  v13[4] = v7;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v13;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1;
  v11[3] = &__block_descriptor_tmp_3;
  v11[4] = a1;
  v11[5] = v7;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  v21 = v11;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v9 = TelephonyBasebandPCITransportCreate();
  *(a1 + 152) = v9;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return v9;
}

void sub_298287FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(unsigned char const*,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

uint64_t __copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1(void *a1, int a2, void *a3, unsigned int a4)
{
  if (a3)
  {
    v6 = a1[6];
    if (v6 && (v9 = a1[4], (v10 = std::__shared_weak_count::lock(v6)) != 0))
    {
      v11 = v10;
      if (a2 || !a1[5])
      {
        free(a3);
      }

      else
      {
        std::function<void ()(unsigned char const*,unsigned long)>::operator()(v9 + 112, a3, a4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {

      free(a3);
    }
  }
}

uint64_t std::function<void ()(unsigned char const*,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t VinylMipcTransport::close(VinylMipcTransport *this)
{
  v2 = *(this + 10);
  if (v2 && v2(this + 24))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v3(this + 24);
    }

    TelephonyUtilTransportFree();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 152) = 0;
  return 1;
}

uint64_t VinylMipcTransport::write(VinylMipcTransport *this, const unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*(this + 152) != 1)
    {
      return 0;
    }

    v7 = *(this + 10);
    if (!v7)
    {
      return 0;
    }

    result = v7(this + 24);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v10 = *(this + 3);
    if (v10)
    {
      result = v10(this + 24, a2, a3, &v11, 1, 10000, 0);
      if (a4)
      {
        if (result)
        {
          *a4 = v11;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VinylMipcTransport::isReady(VinylMipcTransport *this)
{
  if (*(this + 152) == 1 && (v1 = *(this + 10)) != 0)
  {
    return v1(this + 24);
  }

  else
  {
    return 0;
  }
}

void VinylMipcTransport::~VinylMipcTransport(VinylMipcTransport *this)
{
  VinylMipcTransport::~VinylMipcTransport(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB36F0;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](this + 112);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298288780(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

unint64_t eUICC::GetSIMSKUID::Perform(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (ETLFrameCreateUplink() && (ETLMaverickAddBSPCommandHeader() & 1) != 0)
    {
      v3 = *(a1 + 8);
      if (ETLSendCommand() && (v4 = *(a1 + 8), (ETLSubsysFindMatchingResponse() & 1) != 0))
      {
        v1 = MEMORY[0] << 32;
        if (MEMORY[4] == 1)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "success");
        v1 = 0;
        v5 = 5;
      }
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "success");
      v1 = 0;
      v5 = 12;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "transport");
    v5 = 22;
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return v5 | v1;
}

uint64_t eUICC::LETOMuxSwitch::Perform(uint64_t a1)
{
  v27[4] = *MEMORY[0x29EDCA608];
  LODWORD(v24) = -1;
  v25 = 0;
  v26 = -1;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v27[0] = &unk_2A1EB3788;
  v27[3] = v27;
  if (*a1)
  {
    if (ETLFrameCreateUplink() && ETLMaverickAddBSPCommandHeader() && (v2 = *(a1 + 8), HDLCFrameInjectUnsignedChar()) && (v3 = *(a1 + 9), (HDLCFrameInjectUnsignedChar() & 1) != 0))
    {
      v4 = *(a1 + 12);
      if (ETLSendCommand() & 1) != 0 && (v5 = *(a1 + 12), (ETLSubsysFindMatchingResponse()))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "sizeof(result) == HDLCFrameGetPayloadLength(&rsp)");
        v20 = 40;
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
        v20 = 5;
      }
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "success");
      v20 = 12;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "transport");
    v20 = 22;
  }

  LODWORD(v24) = v20;
  HDLCFrameFree();
  HDLCFrameFree();
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v27);
  result = v24;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298288D40(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v1 - 88);
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v1 - 56);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::LETOMuxSwitch::Response::Contents>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *a2 = 0;
  *(a2 + 8) = 0;
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    if (!ETLSendCommand() || (ETLSubsysFindMatchingResponse() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v15, v16, v17, "success");
      v14 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint();
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v12.__d_.__rep_ > 1000000 * a4)
    {
      v14 = 60;
      goto LABEL_12;
    }
  }

  v13 = *(a7 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v13 + 48))(v13, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = 0;
LABEL_12:
  HDLCFrameFree();
  return v14;
}

uint64_t eUICC::VinylManagePairing::Perform@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v22[4] = *MEMORY[0x29EDCA608];
  *a2 = -1;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v15, v16, v17, "transport");
    v14 = 22;
    goto LABEL_11;
  }

  if (!ETLFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader() || (v5 = *(a1 + 8), !HDLCFrameInjectUnsignedChar()) || (v6 = *(a1 + 9), !HDLCFrameInjectUnsignedChar()) || (v7 = *(a1 + 24), !HDLCFrameInjectUnsignedShort()) || (v8 = *(a1 + 16), v9 = *(a1 + 24), (HDLCFrameInject() & 1) == 0))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "success");
    v14 = 12;
LABEL_11:
    *a2 = v14;
    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v22[0] = &unk_2A1EB3818;
  v22[3] = v22;
  *a2 = eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(v20, a2 + 1, v3, v10, 1, 9, v22);
  std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](v22);
LABEL_12:
  result = HDLCFrameFree();
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2982890D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  bzero(a2, 0x1779uLL);
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    if (!ETLSendCommand() || (ETLSubsysFindMatchingResponse() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
      v13 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint();
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v11.__d_.__rep_ > 1000000 * a4)
    {
      v13 = 60;
      goto LABEL_12;
    }
  }

  v12 = *(a7 + 24);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v12 + 48))(v12, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_12:
  HDLCFrameFree();
  return v13;
}

uint64_t eUICC::VinylValidatePerso::Perform@<X0>(uint64_t a1@<X0>, int **a2@<X8>)
{
  v23[4] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x1780uLL);
  bzero(v4, 0x1780uLL);
  *v4 = -1;
  std::shared_ptr<eUICC::VinylValidatePerso::Response>::shared_ptr[abi:ne200100]<eUICC::VinylValidatePerso::Response,0>(a2, v4);
  ETLDebugRemoveFlags();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v5 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "transport");
    v14 = *a2;
    v15 = 22;
    goto LABEL_10;
  }

  if (!ETLFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader() || (v6 = *(a1 + 8), !HDLCFrameInjectUnsignedChar()) || (v7 = *(a1 + 10), !HDLCFrameInjectUnsignedShort()) || (v8 = *(a1 + 10), (HDLCFrameInject() & 1) == 0))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "success");
    v14 = *a2;
    v15 = 12;
LABEL_10:
    *v14 = v15;
    goto LABEL_11;
  }

  ETLDebugAddFlags();
  v9 = *a2;
  v10 = *(a1 + 132);
  v23[0] = &unk_2A1EB3920;
  v23[3] = v23;
  **a2 = eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(v21, v9 + 1, v5, v10, 1, 5, v23);
  std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](v23);
LABEL_11:
  ETLDebugAddFlags();
  result = HDLCFrameFree();
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2982894A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](va);
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  bzero(a2, 0x1779uLL);
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    if (!ETLSendCommand() || (ETLSubsysFindMatchingResponse() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
      v13 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint();
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v11.__d_.__rep_ > 1000000 * a4)
    {
      v13 = 60;
      goto LABEL_12;
    }
  }

  v12 = *(a7 + 24);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v12 + 48))(v12, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_12:
  HDLCFrameFree();
  return v13;
}

void *std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EB3788;
  return result;
}

uint64_t std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9) - 5 < 2)
  {
    return *(a2 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0>,BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EB3818;
  return result;
}

uint64_t std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0>,BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::shared_ptr<eUICC::VinylValidatePerso::Response>::shared_ptr[abi:ne200100]<eUICC::VinylValidatePerso::Response,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB38A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_298289A08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0>,BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EB3920;
  return result;
}

uint64_t std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0>,BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void stringifyVal(unsigned int a1@<W0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  v9[1] = 0;
  v9[2] = 6;
  v8[2] = 6;
  v9[0] = a1;
  v10 = v14;
  *__len = xmmword_2982C1B50;
  v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v13 = 0;
  __src = v14;
  v8[0] = 1;
  v8[1] = v9;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v10, "0x{:02x}", 8, v8);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a2[1] = v3;
    a2[2] = v5 | 0x8000000000000000;
    *a2 = v6;
    a2 = v6;
    goto LABEL_9;
  }

  *(a2 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
  if (__src != v14)
  {
    operator delete(__src);
  }

  v7 = *MEMORY[0x29EDCA608];
}

{
  v16 = *MEMORY[0x29EDCA608];
  v9[1] = 0;
  v9[2] = 6;
  v8[2] = 6;
  v9[0] = a1;
  v10 = v14;
  *__len = xmmword_2982C1B50;
  v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v13 = 0;
  __src = v14;
  v8[0] = 1;
  v8[1] = v9;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v10, "0x{:04x}", 8, v8);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a2[1] = v3;
    a2[2] = v5 | 0x8000000000000000;
    *a2 = v6;
    a2 = v6;
    goto LABEL_9;
  }

  *(a2 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
  if (__src != v14)
  {
    operator delete(__src);
  }

  v7 = *MEMORY[0x29EDCA608];
}

{
  v16 = *MEMORY[0x29EDCA608];
  v9[1] = 0;
  v9[2] = 6;
  v8[2] = 6;
  v9[0] = a1;
  v10 = v14;
  *__len = xmmword_2982C1B50;
  v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v13 = 0;
  __src = v14;
  v8[0] = 1;
  v8[1] = v9;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v10, "0x{:08x}", 8, v8);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a2[1] = v3;
    a2[2] = v5 | 0x8000000000000000;
    *a2 = v6;
    a2 = v6;
    goto LABEL_9;
  }

  *(a2 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
  if (__src != v14)
  {
    operator delete(__src);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_298289D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_298289E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_298289FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void stringifyDataBuffer(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    for (i = a2; i; --i)
    {
      v6 = *a1++;
      v18[1] = 0;
      v18[2] = 6;
      v17[2] = 6;
      v18[0] = v6;
      v19 = v23;
      *__len = xmmword_2982C1B50;
      v21 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v22 = 0;
      __src = v23;
      v17[0] = 1;
      v17[1] = v18;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v19, "{:02x}", 6, v17);
      v7 = __len[1];
      if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v8 = __src;
      if (__len[1] >= 0x17)
      {
        if ((__len[1] | 7) == 0x17)
        {
          v10 = 25;
        }

        else
        {
          v10 = (__len[1] | 7) + 1;
        }

        p_dst = operator new(v10);
        v15 = v7;
        v16 = v10 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v16) = __len[1];
        p_dst = &__dst;
        if (!__len[1])
        {
          goto LABEL_12;
        }
      }

      memmove(p_dst, v8, v7);
LABEL_12:
      *(p_dst + v7) = 0;
      if (__src != v23)
      {
        operator delete(__src);
      }

      if (v16 >= 0)
      {
        v11 = &__dst;
      }

      else
      {
        v11 = __dst;
      }

      if (v16 >= 0)
      {
        v12 = HIBYTE(v16);
      }

      else
      {
        v12 = v15;
      }

      std::string::append(a3, v11, v12);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__dst);
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_29828A1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  if (__p != v62)
  {
    operator delete(__p);
  }

  if (*(v61 + 23) < 0)
  {
    operator delete(*v61);
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyAsCFString()
{
  v0 = *MEMORY[0x29EDB8ED8];
  if ((ctu::cf::convert_copy() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 32, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCCommon.cpp", 0x2Cu, "Assertion failure(success && Unrecognized radio type.)", v3, v4, v5, v6);
  }

  return 0;
}

void eUICC::VinylFactory::GetValve(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, eUICC::eUICCVinylICEValve **a5@<X8>)
{
  *a5 = 0;
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v12 = operator new(0x140uLL);
    eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v12, a1, a2, a3);
  }

  else if (RadioVendor == 1)
  {
    v12 = operator new(0x138uLL);
    eUICC::eUICCVinylMAVValve::eUICCVinylMAVValve(v12, a1, a2, a3);
  }

  else
  {
    if (RadioVendor != 4)
    {
      return;
    }

    v11 = operator new(0x190uLL);
    v12 = v11;
    v13 = a4[1];
    v14 = *a4;
    v15 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    eUICC::eUICCVinylDALValve::eUICCVinylDALValve(v11, a1, a2, a3, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  *a5 = v12;
}

void sub_29828A3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  *v10 = 0;
  _Unwind_Resume(a1);
}

uint64_t eUICC::getPairingIdentifier(eUICC *this, const __CFDictionary **a2)
{
  if (this)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v7 = *gBBULogMaskGet() & (gBBULogVerbosity > 0);
    if (Mutable)
    {
      if (v7)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Return 16 byte zero EID as pairing identifier\n", v4, v5, v6, v13);
      }

      CFDictionarySetValue(Mutable, @"EID", @"00000000000000000000000000000000");
      v8 = 0;
      *this = Mutable;
    }

    else
    {
      if (v7)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Failed to allocate shared info dict\n", v4, v5, v6, v13);
      }

      return 19;
    }
  }

  else
  {
    v8 = 1;
    if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
    {
      _BBULog(0, 1, "eUICCVinylFactory", "", "Client rsp data is not valid\n", v9, v10, v11, v13);
    }
  }

  return v8;
}

uint64_t eUICC::getEID()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v35 = *MEMORY[0x29EDCA608];
  (*(**v1 + 8))(v33);
  if (LODWORD(v33[0]) == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    stringifyDataBuffer(v33 + 7, 16, &__p);
    gBBULogMaskGet();
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "EID: %s\n", v2, v3, v4, p_p);
    v6 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v29 = __p;
      }

      v13 = copyAsCFString();
      v30 = v13;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      CFDictionarySetValue(Mutable, @"EID", v13);
      *v0 = Mutable;
      v14 = CFStringCreateWithFormat(v6, 0, @"%@", Mutable);
      v15 = v14;
      if (v14)
      {
        if (CFStringGetCString(v14, buffer, 0x2000, 0x8000100u))
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "client rsp data: %s\n", v16, v17, v18, buffer);
        }

        CFRelease(v15);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      v20 = gBBULogMaskGet();
      if (eUICC::getEID(v20))
      {
        _BBULog(1, 6, "eUICCVinylFactory", "", "check failed: %s, %d, assertion: %s\n", v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCCommon.cpp");
      }

      if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Failed to allocate shared info dict\n", v24, v25, v26, v28);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_21;
  }

  v8 = v34;
  gBBULogMaskGet();
  if (v8)
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "eUICC not stuffed but that's ok!\n", v9, v10, v11, v27);
LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "Error: GetData() output not valid and isAbsentOK = false. kBBUReturnGetEIDFailure will be reported as kVinylResultDataMissing!\n", v9, v10, v11, v27);
  result = 107;
LABEL_22:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29828A868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::checkEOSDev(_BYTE *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v4 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(v16);
    v5 = v16[0];
    v16[0] = 0uLL;
    v6 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v16[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16[0] + 1));
      }
    }

    v4 = xmmword_2A13A8CA0;
  }

  v7 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v8 = BBUCapabilities::supportsEuiccViaEOS(v4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v8)
  {
    (*(**a2 + 8))(v16);
    if (LODWORD(v16[0]) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      result = 107;
      goto LABEL_20;
    }

    stringifyDataBuffer(v16 + 7, 16, &__p);
    gBBULogMaskGet();
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "EID: %s\n", v9, v10, v11, p_p);
    if (HIBYTE(v16[0]) == 99)
    {
      *a1 = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  result = 0;
LABEL_20:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](uint64_t a1, size_t __sz)
{
  if (__sz >= 0x100)
  {
    v4 = operator new(__sz);
    v5 = v4;
    v6 = *(a1 + 296);
    v7 = *(a1 + 16);
    if (v7)
    {
      memmove(v4, *(a1 + 296), v7);
    }

    if (v6 != (a1 + 40))
    {
      operator delete(v6);
    }

    *(a1 + 296) = v5;
    *a1 = v5;
    *(a1 + 8) = __sz;
  }
}

uint64_t std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_29828AC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1EB39C8;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
  }

  return std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
}

void *std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v27 = *a1;
        v28 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:ne200100]<char>(v60, "a character");
        *v27 = v28;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v30 = *a1;
        v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v30 = v31;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v17 = *a1;
        v18 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v17 = v18;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v37 = *a1;
        v38 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v37 = v38;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v33 = *a1;
        v34 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v33 = v34;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v43 = *a1;
        v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v43 = v44;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v24 = *a1;
        v25 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v24 = v25;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = *(a1 + 8);
        v54 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = *(a1 + 8);
        v58 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = *(a1 + 8);
      v56 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v49 = *a1;
        *v49 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      v13 = *v6;
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = *(a1 + 8);

      return v52(v50, v53, v51);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unsigned __int8 *std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = std::__format::__parse_number[abi:ne200100]<char const*>(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5);
  }
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}