uint64_t sendProvisionPing(ACFULogging *a1, uint64_t *a2, ACFUFirmware **a3, BOOL *a4, uint64_t *a5)
{
  v48 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v47, 0, sizeof(v47));
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  *v52 = 0u;
  v45 = 0;
  cf = 0;
  theDict = 0;
  ACFULogging::getLogInstance(a1);
  v10 = ACFULogging::handleMessage();
  if (!a1 || !*a2 || !*a3)
  {
    ACFULogging::getLogInstance(v10);
    goto LABEL_45;
  }

  v11 = configureProvisioner(&v47, a1);
  if ((v11 & 1) == 0)
  {
    ACFULogging::getLogInstance(v11);
    goto LABEL_45;
  }

  ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage();
  APProvisioningInfo = createAPProvisioningInfo(&cf);
  if ((APProvisioningInfo & 1) == 0 || (v13 = cf) == 0)
  {
    ACFULogging::getLogInstance(APProvisioningInfo);
    goto LABEL_45;
  }

  CFRetain(cf);
  v14 = v52[0];
  v52[0] = v13;
  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v13);
  ACFULogging::getLogInstance(v15);
  v16 = operator new(0x30uLL);
  strcpy(v16, "BasebandProvisioning::sendProvisionPing");
  HIBYTE(v35[1]) = 0;
  strcpy(v35, "sendProvisionPinProvisioning::");
  __p = v16;
  v43 = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  operator delete(__p);
  v18 = a2[1];
  v40 = *a2;
  v41 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a3[1];
  v38 = *a3;
  v39 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = a5[1];
  v36 = *a5;
  v37 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = createBasebandProvInfo(0, &v40, &v38, &v45, v17, a1);
  v22 = v21;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v23 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_42;
  }

  v25 = v45;
  if (!v45)
  {
    goto LABEL_42;
  }

  CFRetain(v45);
  v26 = v52[1];
  v52[1] = v25;
  if (v26)
  {
    CFRelease(v26);
  }

  CFRelease(v25);
  ACFULogging::getLogInstance(v27);
  v28 = operator new(0x30uLL);
  *v28 = 0x646E616265736142;
  *(v28 + 10) = 14906;
  *(v28 + 4) = DWORD2(v35[1]);
  *(v28 + 1) = *&v35[1];
  *(v28 + 19) = 103;
  *(v28 + 22) = v35[0];
  __p = v28;
  v43 = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  v21 = BasebandProvisioning::sendServerReq(&v47, @"1", a1, &theDict);
  if ((v21 & 1) == 0)
  {
LABEL_42:
    ACFULogging::getLogInstance(v21);
    goto LABEL_45;
  }

  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"STATUS"), (v30 = Value) == 0))
  {
    ACFULogging::getLogInstance(0);
LABEL_45:
    ACFULogging::handleMessage();
    v32 = 0;
    v33 = theDict;
    if (!theDict)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  ACFULogging::getLogInstance(Value);
  v31 = operator new(0x30uLL);
  *v31 = 0x646E616265736142;
  *(v31 + 10) = 14906;
  *(v31 + 4) = DWORD2(v35[1]);
  *(v31 + 1) = *&v35[1];
  *(v31 + 19) = 103;
  *(v31 + 22) = v35[0];
  __p = v31;
  v43 = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  *a4 = CFStringCompare(v30, @"0", 0) == kCFCompareEqualTo;
  v32 = 1;
  v33 = theDict;
  if (theDict)
  {
LABEL_36:
    CFRelease(v33);
  }

LABEL_37:
  BasebandProvisioning::~BasebandProvisioning(&v47);
  return v32;
}

void sub_1E5297D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a28 < 0)
  {
    operator delete(__p);
    BasebandProvisioning::~BasebandProvisioning(&a32);
    _Unwind_Resume(a1);
  }

  BasebandProvisioning::~BasebandProvisioning(&a32);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
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

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

  if (v8)
  {
    if (v8 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v9 = operator new(48 * v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = &v9[48 * v3];
  v15 = &v9[48 * v8];
  std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1, v14, a2, a3);
  v10 = *(a1 + 8) - *a1;
  v11 = v14 - v10;
  memcpy(v14 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v14 + 2;
  *(a1 + 16) = v15;
  if (v12)
  {
    operator delete(v12);
  }

  return v14 + 2;
}

void sub_1E5297F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(int a1, std::string *this, __int128 *a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    v7 = *a4;
    v8 = *(a4 + 8) - *a4;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v6 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    v7 = *a4;
    v8 = *(a4 + 8) - *a4;
    if (!v8)
    {
      return;
    }
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = operator new(v8);
  this[1].__r_.__value_.__r.__words[0] = v9;
  this[1].__r_.__value_.__l.__size_ = v9;
  v10 = v9 + v8;
  this[1].__r_.__value_.__r.__words[2] = v9 + v8;
  memcpy(v9, v7, v8);
  this[1].__r_.__value_.__l.__size_ = v10;
}

void sub_1E529804C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v14 = this;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v4[1].__r_.__value_.__r.__words[0] = 0;
      v4[1].__r_.__value_.__l.__size_ = 0;
      v4[1].__r_.__value_.__r.__words[2] = 0;
      v9 = *(v6 + 3);
      v8 = *(v6 + 4);
      v10 = v8 - v9;
      if (v8 != v9)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v11 = operator new(v8 - v9);
        v4[1].__r_.__value_.__r.__words[0] = v11;
        v4[1].__r_.__value_.__l.__size_ = v11;
        v12 = &v11[v10];
        v4[1].__r_.__value_.__r.__words[2] = &v11[v10];
        memcpy(v11, v9, v10);
        v4[1].__r_.__value_.__l.__size_ = v12;
      }

      v6 += 3;
      v4 = v14 + 2;
      v14 += 2;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_1E529820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 32) = v12;
    operator delete(v12);
    if ((*(v9 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v9 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v9);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v8 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 6;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v7 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
            operator delete(*v7);
          }

          v4 -= 6;
        }

        while (v7 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::~basic_format(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::~locale((a1 + 192));
    *(a1 + 184) = 0;
  }

  *(a1 + 96) = &unk_1F5F00840;
  if (*(a1 + 168) == 1)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 153) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 104));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = *a1;
    if (v4 == v3)
    {
LABEL_21:
      *(a1 + 8) = v3;
      operator delete(v5);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v4[-4].__locale_) == 1)
      {
        std::locale::~locale(v4 - 3);
        LOBYTE(v4[-4].__locale_) = 0;
        if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_15:
          if (SHIBYTE(v4[-12].__locale_) < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_12;
        }
      }

      else if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v4[-11].__locale_);
      if (SHIBYTE(v4[-12].__locale_) < 0)
      {
LABEL_19:
        operator delete(v4[-14].__locale_);
      }

LABEL_12:
      v4 -= 15;
      if (v4 == v3)
      {
        v5 = *a1;
        goto LABEL_21;
      }
    }
  }

  return a1;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(uint64_t a1)
{
  *a1 = &unk_1F5F00840;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F5F00840;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(char *a1)
{
  *a1 = &unk_1F5F00840;
  if (a1[72] == 1)
  {
    operator delete(*(a1 + 2));
  }

  *(a1 + 57) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 1) = 0u;
  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(a1 + 1);

  operator delete(a1);
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if ((a4 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if (a3 == 2)
      {
        v7 = 8;
      }

      else
      {
        if (a3 == 1)
        {
          if ((a4 & 0x10) != 0)
          {
            goto LABEL_25;
          }

          v12 = v6 + a2;
          if (a1[2] > (v6 + a2))
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (a3)
        {
LABEL_25:
          v8 = -1;
          goto LABEL_26;
        }

        v7 = 2;
      }

      a2 = a2 - v6 + a1[v7];
      v12 = v6 + a2;
      if (a1[2] <= (v6 + a2))
      {
LABEL_24:
        if (v12 > a1[8])
        {
          goto LABEL_25;
        }

        v9 = v6 + a2;
        a1[3] = v9;
        if ((a4 & 0x10) == 0 || !v5)
        {
LABEL_31:
          v8 = a2;
          goto LABEL_26;
        }

        LODWORD(v9) = v9 - v5;
LABEL_30:
        a1[6] = v5 + v9;
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  v8 = -1;
  if ((a4 & 0x10) != 0 && v5)
  {
    if (!a3)
    {
      v11 = a1[5];
      v9 = v11 - v5 + a2;
      v10 = v11 + a2;
      if (v11 > v11 + a2)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (a3 == 2)
    {
      v9 = a1[8] - v5 + a2;
      v10 = a1[8] + a2;
      if (a1[5] > v10)
      {
        goto LABEL_25;
      }

LABEL_17:
      a2 = v9;
      if (v10 <= a1[8])
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v8;
  return result;
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 128);
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if (v4 == -1)
  {
LABEL_16:
    v10 = -1;
    goto LABEL_17;
  }

  if ((a3 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        v7 = a1[2];
        if (v4 <= a1[8] - v7)
        {
          v8 = v6 + v4 - v6 + v7;
          a1[3] = v8;
          if ((a3 & 0x10) == 0 || !v5)
          {
            goto LABEL_20;
          }

          v9 = v8 - v5;
LABEL_19:
          a1[6] = v5 + v9;
LABEL_20:
          v10 = v4;
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

  v10 = -1;
  if ((a3 & 0x10) != 0 && v5 && (v4 & 0x8000000000000000) == 0)
  {
    v11 = a1[2];
    if (v4 <= a1[8] - v11)
    {
      v9 = v4 - v5 + v11;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_17:
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = v10;
  return result;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 < *(a1 + 32))
  {
    return *v1;
  }

  if ((*(a1 + 76) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 64);
  if (v1 >= v3 && v1 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 < v3)
  {
    *(a1 + 64) = v3;
    v4 = v3;
  }

  *(a1 + 32) = v4;
  return *v1;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 16) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 != -1 && (*(a1 + 76) & 0x10) == 0)
  {
    v4 = *(v2 - 1);
    v3 = (v2 - 1);
    if (v4 == a2)
    {
      *(a1 + 24) = v3;
      *v3 = a2;
      return a2;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = (v2 - 1);
  *(a1 + 24) = v6;
  if (a2 == -1)
  {
    return 0;
  }

  *v6 = a2;
  return a2;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::overflow(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v3 < v4)
    {
      *(a1 + 48) = v3 + 1;
      *v3 = a2;
      return a2;
    }

    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 16);
    v6 = v4 - v7;
  }

  else
  {
    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 0;
    v7 = *(a1 + 16);
  }

  v8 = v6 >> 1;
  if (v6 >> 1 <= 0x100)
  {
    v8 = 256;
  }

  while (__CFADD__(v8, v6))
  {
    v10 = v8 >= 2;
    v8 >>= 1;
    if (!v10)
    {
      v11 = 0;
      v12 = v6;
LABEL_18:
      memmove(v11, v7, v6);
      v13 = 0;
      v14 = a1;
      if (*(a1 + 72) != 1)
      {
        goto LABEL_20;
      }

LABEL_19:
      operator delete(v7);
      v14 = a1;
      goto LABEL_20;
    }
  }

  v12 = v8 + v6;
  v11 = operator new(v8 + v6);
  if (v6)
  {
    goto LABEL_18;
  }

  v13 = 1;
  v14 = a1;
  if (*(a1 + 72) == 1)
  {
    goto LABEL_19;
  }

LABEL_20:
  *(v14 + 72) = 1;
  if (v13)
  {
    v15 = &v11[v12];
    *(v14 + 40) = v11;
    *(v14 + 48) = v11;
    *(v14 + 56) = &v11[v12];
    *(v14 + 64) = v11;
    if ((*(v14 + 76) & 8) != 0)
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = v11;
      *(v14 + 32) = v11 + 1;
      if (v11 == v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = 0;
      *(v14 + 32) = v11;
      if (v11 == v15)
      {
LABEL_23:
        (*(*v14 + 104))(v14, a2);
        return a2;
      }
    }
  }

  else
  {
    v16 = &v11[*(v14 + 64) - v7];
    v17 = *(v14 + 40);
    v18 = *(v14 + 48) - v17;
    v19 = v17 - v7;
    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    v22 = &v11[v19];
    v23 = &v11[v12];
    *(v14 + 56) = &v11[v12];
    *(v14 + 64) = v16;
    v24 = &v22[v18];
    *(v14 + 40) = v22;
    *(v14 + 48) = v24;
    if ((*(v14 + 76) & 8) != 0)
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = &v11[v20 - v21];
      v11 = &v22[v18];
      *(v14 + 32) = v24 + 1;
      if (v24 == v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = 0;
      v25 = v11;
      v11 = &v22[v18];
      *(v14 + 32) = v25;
      if (v24 == v23)
      {
        goto LABEL_23;
      }
    }
  }

  *(v14 + 48) = v11 + 1;
  *v11 = a2;
  return a2;
}

void **std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v3[-4].__locale_) == 1)
      {
        std::locale::~locale(v3 - 3);
        LOBYTE(v3[-4].__locale_) = 0;
        if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_7:
          if (SHIBYTE(v3[-12].__locale_) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(v3[-11].__locale_);
      if (SHIBYTE(v3[-12].__locale_) < 0)
      {
LABEL_11:
        operator delete(v3[-14].__locale_);
      }

LABEL_4:
      v3 -= 15;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

uint64_t boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::~format_item(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  std::locale::~locale((a1 + 96));
  *(a1 + 88) = 0;
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

const __CFString *copy_mac_address_existence(const __CFString *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_18;
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v1 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
LABEL_18:
      v3 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = a1;
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    a1 = v9;
    v1 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_18;
    }
  }

  v2 = a1;
  v3 = v1();
  if (v3)
  {
    v23 = -1431655766;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v4;
    v22 = v4;
    v19 = v4;
    v20 = v4;
    v18 = v4;
    *buffer = v4;
    v16 = -1431655766;
    v14 = v4;
    v15 = v4;
    v12 = v4;
    v13 = v4;
    *__s = v4;
    v11 = v4;
    CFStringGetCString(v2, buffer, 100, 0x600u);
    CString = CFStringGetCString(v3, __s, 100, 0x600u);
    ACFULogging::getLogInstance(CString);
    ACFULogging::handleMessage();
    v6 = CFStringCompare(v3, @"00:00:00:00:00:00", 1uLL);
    if (!v6)
    {
      goto LABEL_17;
    }

    v6 = CFStringCompare(v3, @"BA:BA:BA:BA:BA:BA", 1uLL);
    if (!v6)
    {
      goto LABEL_17;
    }

    v6 = CFStringCompare(v3, @"DE:AD:BE:FF:00:00", 1uLL);
    if (!v6 || (v6 = CFStringCompare(v3, @"DE:AD:BE:FF:00:01", 1uLL)) == 0 || (v6 = CFStringCompare(v3, @"DF:AD:BE:FF:00:00", 1uLL)) == 0 || (v6 = CFStringCompare(v3, @"88:88:88:88:88:88", 1uLL)) == 0 || (v6 = CFStringCompare(v3, @"99:99:99:99:99:99", 1uLL)) == 0 || (v6 = CFStringCompare(v3, @"02:88:88:88:88:88", 1uLL)) == 0 || (v6 = CFStringCompare(v3, @"02:99:99:99:99:99", 1uLL)) == 0 || strlen(__s) > 2 && (v6 = AMSupportHexAsciiToNumeric(), !v6))
    {
LABEL_17:
      ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage();
      CFRelease(v3);
      goto LABEL_18;
    }
  }

LABEL_19:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

void BasebandProvisioning::~BasebandProvisioning(BasebandProvisioning *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(this + 7);
    v7 = *(this + 6);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 3);
        if (v8)
        {
          *(v6 - 2) = v8;
          operator delete(v8);
        }

        v9 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
          operator delete(*v9);
        }

        v6 -= 6;
      }

      while (v9 != v5);
      v7 = *(this + 6);
    }

    *(this + 7) = v5;
    operator delete(v7);
  }

  v10 = *(this + 5);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
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
    v1 = *(a1 + 152);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v2;
      }
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void *std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x1E6926F80](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x1E69E5508] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x1E6926F90](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x1E6926F80](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x1E69E53B0], MEMORY[0x1E69E52C8]);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

void *dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>@<X0>(atomic_ullong **a1@<X0>, void **a2@<X8>)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3812000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v9[5] = "";
  v4 = operator new(0xA0uLL);
  *(v4 + 3) = 850045863;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_1F5F008D8;
  v10 = v4;
  std::mutex::lock((v4 + 24));
  v5 = *(v4 + 34);
  if ((v5 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  *(v4 + 34) = v5 | 2;
  std::mutex::unlock((v4 + 24));
  v6 = *a1;
  *a1 = v4;
  if (v6 && !atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v6 + 16))(v6);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3254779904;
  v8[2] = ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke;
  v8[3] = &__block_descriptor_40_e8_32r_e82_v24__0_shared_ptr_ctu::Http::HttpResponse____HttpResponse_____shared_weak_count__8l;
  v8[4] = v9;
  *a2 = _Block_copy(v8);
  _Block_object_dispose(v9, 8);
  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v10);
}

void sub_1E52996DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::mutex::unlock(v14);
  _Block_object_dispose(&a14, 8);
  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v15 + 48));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 48);
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
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
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

void sub_1E52998BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(uint64_t a1, const char *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 88) = -1;
  *(a1 + 96) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69272B0](a1 + 104);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = &unk_1F5F00840;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 24;
  *(a1 + 184) = 0;
  if (!a2)
  {
    return a1;
  }

  v4 = strlen(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v10 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_10;
  }

  HIBYTE(v10) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_10:
    memcpy(v6, a2, v5);
  }

  *(v5 + v6) = 0;
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::parse(a1, __dst);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_1E5299A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (*(v15 + 184) != 1)
    {
LABEL_3:
      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v16);
      if ((*(v15 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*(v15 + 184) != 1)
  {
    goto LABEL_3;
  }

  std::locale::~locale((v15 + 192));
  *(v15 + 184) = 0;
  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v16);
  if ((*(v15 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    v19 = *(v15 + 24);
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*v17);
  v19 = *(v15 + 24);
  if (!v19)
  {
LABEL_5:
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~vector[abi:ne200100](v15);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v19);
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~vector[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::parse(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v57, (a1 + 192));
  }

  else
  {
    MEMORY[0x1E69272B0](&v57);
  }

  v4 = std::locale::use_facet(&v57, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v57);
  v54 = &v4->__vftable;
  __c = (v4->__vftable[2].~facet_0)(v4, 37);
  v5 = boost::io::detail::upper_bound_from_fstring<std::string,std::ctype<char>>(a2, __c, v4, *(a1 + 88));
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::make_or_reuse_data(a1, v5);
  v56 = 0;
  v6 = *(a2 + 23);
  v7 = *(a2 + 23);
  v8 = v6 >> 31;
  v9 = *(a2 + 8);
  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (!v10 || ((v11 = *a2, v6 >= 0) ? (v12 = a2) : (v12 = *a2), (v13 = memchr(v12, __c, v10), v14 = &v13[-v12], v13) ? (v15 = v14 == -1) : (v15 = 1), v15))
  {
    v24 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 1;
    v52 = -1;
LABEL_17:
    v16 = a1 + 64;
    goto LABEL_18;
  }

  v23 = v13;
  v24 = 0;
  v25 = 0;
  v53 = 0;
  v52 = -1;
  v50 = 0;
  v51 = 1;
  do
  {
    v26 = a1 + 64;
    if (v25)
    {
      v26 = *a1 + 120 * v25 - 88;
    }

    v27 = v14 + 1;
    if (v8)
    {
      v28 = v11;
    }

    else
    {
      v28 = a2;
    }

    if (*(v28 + v27) == *(v28 + v14))
    {
      std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v26, &v24[v12], v23 + 1);
      v24 = (v14 + 2);
      v29 = (v14 + 2);
      goto LABEL_66;
    }

    if (v14 != v24)
    {
      std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v26, &v24[v12], v23);
      v7 = *(a2 + 23);
    }

    if ((v7 & 0x80) != 0)
    {
      v30 = *a2;
      v7 = *(a2 + 8);
    }

    else
    {
      v30 = a2;
    }

    v56 = (v27 + v30);
    v57.__locale_ = (v30 + v7);
    v31 = boost::io::detail::parse_printf_directive<char,std::char_traits<char>,std::allocator<char>,std::__wrap_iter<char const*>,std::ctype<char>>(&v56, &v57, *a1 + 120 * v25, v54, (v14 + 1), *(a1 + 88));
    if (*(a2 + 23) >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    v29 = &v56[-v32];
    if (!v31)
    {
      v24 = v14;
      goto LABEL_66;
    }

    v33 = *a1 + 120 * v25;
    v34 = *(v33 + 112);
    if ((v34 & 1) == 0)
    {
      goto LABEL_51;
    }

    v35 = *(v33 + 76);
    if ((v35 & 0x20) == 0)
    {
      v34 &= ~2u;
      *(v33 + 112) = v34;
      *(v33 + 72) = 48;
      *(v33 + 76) = v35 & 0xFFFFFF4F | 0x10;
LABEL_51:
      if ((v34 & 2) != 0)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    v34 &= ~1u;
    *(v33 + 112) = v34;
    if ((v34 & 2) != 0)
    {
LABEL_52:
      if ((*(v33 + 77) & 8) != 0)
      {
        *(v33 + 112) = v34 & 0xFFFFFFFD;
      }
    }

LABEL_56:
    v36 = *v33;
    if (v36 != -3)
    {
      if (v36 == -1)
      {
        v51 = 0;
        v37 = v53;
      }

      else
      {
        v37 = v53;
        if (v36 == -2)
        {
          v50 = 1;
        }

        else
        {
          v38 = v52;
          if (v36 > v52)
          {
            v38 = v36;
          }

          v52 = v38;
        }
      }

      v53 = v37 + 1;
      ++v25;
    }

    v24 = v29;
LABEL_66:
    v39 = *(a2 + 23);
    v7 = *(a2 + 23);
    v8 = v39 >> 31;
    v9 = *(a2 + 8);
    if (v39 >= 0)
    {
      v40 = *(a2 + 23);
    }

    else
    {
      v40 = *(a2 + 8);
    }

    if (v40 <= v29)
    {
      break;
    }

    v11 = *a2;
    v12 = v39 >= 0 ? a2 : *a2;
    v41 = memchr(&v29[v12], __c, v40 - v29);
    if (!v41)
    {
      break;
    }

    v23 = v41;
    v14 = &v41[-v12];
  }

  while (&v41[-v12] != -1);
  if (!v25)
  {
    goto LABEL_17;
  }

  v16 = *a1 + 120 * v25 - 88;
LABEL_18:
  if (v8)
  {
    v17 = v9;
  }

  else
  {
    v17 = v7;
  }

  v18 = *a2;
  if (!v8)
  {
    v18 = a2;
  }

  std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v16, &v24[v18], (v17 + v18));
  if (v51)
  {
    v19 = v54;
  }

  else
  {
    v19 = v54;
    if (v52 & 0x80000000) == 0 && (*(a1 + 88))
    {
      v57.__locale_ = &unk_1F5F00A40;
      v58[0] = v52;
      v58[1] = 0;
      boost::throw_exception<boost::io::bad_format_string>(&v57);
    }

    if (v53 < 1)
    {
      v42 = -1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
      v22 = v53;
      do
      {
        if (*v21 == -1)
        {
          *v21 = v20++;
        }

        v21 += 30;
        --v22;
      }

      while (v22);
      v42 = v20 - 1;
    }

    v52 = v42;
  }

  v43 = (*(*v19 + 56))(v19, 32);
  LODWORD(v57.__locale_) = -1;
  v66 = 0;
  *v58 = 0u;
  *__p = 0u;
  v60 = 0u;
  v61 = 0;
  v62 = 6;
  v63 = v43;
  v65 = 0;
  v64 = 4098;
  v67[1].__locale_ = 0x7FFFFFFFFFFFFFFFLL;
  v68 = 0;
  v44 = *(a1 + 8);
  v45 = 0xEEEEEEEEEEEEEEEFLL * ((v44 - *a1) >> 3);
  if (v53 > v45)
  {
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(a1, v53 - v45, &v57);
    goto LABEL_94;
  }

  if (v53 < v45)
  {
    v46 = *a1 + 120 * v53;
    while (1)
    {
      if (v44 == v46)
      {
        *(a1 + 8) = v46;
        break;
      }

      if (*(v44 - 32) == 1)
      {
        std::locale::~locale((v44 - 24));
        *(v44 - 32) = 0;
        if ((*(v44 - 65) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((*(v44 - 65) & 0x80000000) == 0)
      {
LABEL_91:
        if ((*(v44 - 89) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_92;
      }

      operator delete(*(v44 - 88));
      if ((*(v44 - 89) & 0x80000000) == 0)
      {
        goto LABEL_85;
      }

LABEL_92:
      operator delete(*(v44 - 112));
LABEL_85:
      v44 -= 120;
    }
  }

LABEL_94:
  if (v66 == 1)
  {
    std::locale::~locale(v67);
    v66 = 0;
    if (SHIBYTE(v60) < 0)
    {
      goto LABEL_96;
    }

LABEL_100:
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

LABEL_97:
    operator delete(v58[0]);
    v47 = *(a1 + 48);
    if ((v50 & 1) == 0)
    {
      goto LABEL_103;
    }

LABEL_102:
    v47 |= 4u;
    *(a1 + 48) = v47;
    goto LABEL_103;
  }

  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_96:
  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_97;
  }

LABEL_101:
  v47 = *(a1 + 48);
  if (v50)
  {
    goto LABEL_102;
  }

LABEL_103:
  *(a1 + 56) = v52 + 1;
  *(a1 + 48) = v47 & 0xFFFFFFFE | v51 & 1;
  v48 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E529A0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::~format_item(va);
  _Unwind_Resume(a1);
}

uint64_t boost::io::detail::upper_bound_from_fstring<std::string,std::ctype<char>>(uint64_t a1, int __c, uint64_t a3, char a4)
{
  v4 = *(a1 + 23);
  v5 = *(a1 + 8);
  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = *a1;
    if (v4 >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    v14 = *(a3 + 16);
    while (1)
    {
      v15 = memchr(&v10[v13], __c, v6 - v10);
      if (!v15)
      {
        return v11;
      }

      v16 = &v15[-v13];
      if (&v15[-v13] == -1)
      {
        return v11;
      }

      v17 = v16 + 1;
      if ((v16 + 1) >= v6)
      {
        if (a4)
        {
          v25[0] = &unk_1F5F00A40;
          v25[1] = &v15[-v13];
          v25[2] = v6;
          boost::throw_exception<boost::io::bad_format_string>(v25);
        }

        return (v11 + 1);
      }

      v18 = v17[v13];
      if ((v4 & 0x80) != 0)
      {
        v19 = v12;
        v20 = v5;
        if (v18 == v16[v12])
        {
          goto LABEL_9;
        }

LABEL_17:
        v21 = &v17[v19];
        if (v17 != v20)
        {
          v22 = &v20[v19];
          while (1)
          {
            v23 = *v21;
            if (v23 < 0 || (*(v14 + 4 * v23) & 0x400) == 0)
            {
              break;
            }

            if (++v21 == v22)
            {
              v21 = v22;
              break;
            }
          }
        }

        v10 = &v21[-v13];
        if (v10 < v6 && v10[v13] == __c)
        {
          ++v10;
        }

        v11 = (v11 + 1);
        if (v6 <= v10)
        {
          return v11;
        }
      }

      else
      {
        v19 = a1;
        v20 = v4;
        if (v18 != v16[a1])
        {
          goto LABEL_17;
        }

LABEL_9:
        v10 = v16 + 2;
        if (v6 <= v10)
        {
          return v11;
        }
      }
    }
  }

  return 0;
}

void boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::make_or_reuse_data(uint64_t a1, unint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v18, (a1 + 192));
  }

  else
  {
    MEMORY[0x1E69272B0](&v18);
  }

  v4 = std::locale::use_facet(&v18, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 32);
  std::locale::~locale(&v18);
  v6 = *(a1 + 8) - *a1;
  if (!v6)
  {
    LODWORD(v18.__locale_) = -1;
    v27 = 0;
    *v19 = 0u;
    *__p = 0u;
    v21 = 0u;
    v22 = 0;
    v23 = 6;
    v24 = v5;
    v26 = 0;
    v25 = 4098;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = 0;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::assign(a1, a2, &v18);
    if (v27 == 1)
    {
      std::locale::~locale(&v28);
      v27 = 0;
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_25:
        operator delete(v19[0]);
        goto LABEL_26;
      }
    }

    else if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v7 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  if (a2 > v7)
  {
    LODWORD(v18.__locale_) = -1;
    v27 = 0;
    *v19 = 0u;
    *__p = 0u;
    v21 = 0u;
    v22 = 0;
    v23 = 6;
    v24 = v5;
    v26 = 0;
    v25 = 4098;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = 0;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(a1, a2 - v7, &v18);
    if (v27 == 1)
    {
      std::locale::~locale(&v28);
      v27 = 0;
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
LABEL_8:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
LABEL_9:
          std::vector<BOOL>::resize(a1 + 24, 0, 0);
LABEL_15:
          v8 = 56;
          while (1)
          {
            v10 = *a1;
            v11 = *a1 + v8;
            *(v11 - 56) = -1;
            *(v11 + 48) = 0x7FFFFFFFFFFFFFFFLL;
            *(v11 + 56) = 0;
            v12 = (v11 - 48);
            if (*(v11 - 25) < 0)
            {
              v15 = *v12;
              *(v11 - 40) = 0;
              *v15 = 0;
              v13 = v10 + v8;
              v14 = (v10 + v8 - 24);
              if (*(v10 + v8 - 1) < 0)
              {
LABEL_22:
                v14 = *v14;
                *(v13 - 16) = 0;
                goto LABEL_17;
              }
            }

            else
            {
              *(v11 - 25) = 0;
              *v12 = 0;
              v13 = v10 + v8;
              v14 = (v10 + v8 - 24);
              if (*(v10 + v8 - 1) < 0)
              {
                goto LABEL_22;
              }
            }

            *(v13 - 1) = 0;
LABEL_17:
            *v14 = 0;
            v9 = v10 + v8;
            *v9 = xmmword_1E5391360;
            *(v9 + 16) = v5;
            *(v9 + 28) = 0;
            v8 += 120;
            *(v9 + 20) = 4098;
            if (!--a2)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_32:
        operator delete(v19[0]);
        goto LABEL_9;
      }
    }

    else if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  std::vector<BOOL>::resize(a1 + 24, 0, 0);
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (*(a1 + 87) < 0)
  {
    v16 = *(a1 + 64);
    *(a1 + 72) = 0;
  }

  else
  {
    v16 = (a1 + 64);
    *(a1 + 87) = 0;
  }

  *v16 = 0;
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t boost::io::detail::parse_printf_directive<char,std::char_traits<char>,std::allocator<char>,std::__wrap_iter<char const*>,std::ctype<char>>(char **a1, char **a2, uint64_t a3, void *a4, char *a5, uint64_t a6)
{
  *a3 = -1;
  v8 = *a1;
  v9 = &a5[*a2 - *a1];
  if (*a2 <= *a1)
  {
    if (a6)
    {
      v59 = &unk_1F5F00A40;
      v60 = a5;
      v61 = v9;
      boost::throw_exception<boost::io::bad_format_string>(&v59);
    }

    return 0;
  }

  v14 = *v8;
  v15 = (*(*a4 + 56))(a4, 124);
  v16 = *a1;
  if (v14 == v15)
  {
    *a1 = ++v16;
    if (v16 >= *a2)
    {
      if (a6)
      {
        v59 = &unk_1F5F00A40;
        v60 = &v16[a5 - v8];
        v61 = v9;
        boost::throw_exception<boost::io::bad_format_string>(&v59);
      }

      return 0;
    }
  }

  v57 = v15;
  v58 = v14;
  v17 = *v16;
  v18 = (*(*a4 + 56))(a4, 48);
  v19 = *a1;
  if (v17 != v18)
  {
    v20 = *v19;
    if ((v20 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v20) & 0x400) != 0)
    {
      v56 = v9;
      if (*a2 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          v22 = *v19;
          if (v22 < 0)
          {
            break;
          }

          if ((*(a4[2] + 4 * v22) & 0x400) == 0)
          {
            break;
          }

          v21 = (*(*a4 + 72))(a4) + 10 * v21 - 48;
          ++v19;
        }

        while (v19 != *a2);
      }

      *a1 = v19;
      if (*a2 > v19)
      {
        v24 = *v19;
        if (v24 == (*(*a4 + 56))(a4, 37))
        {
          *a3 = v21 - 1;
          v25 = *a1 + 1;
          *a1 = v25;
          if (v58 == v57)
          {
            goto LABEL_95;
          }

          return 1;
        }

        v26 = **a1;
        if (v26 == (*(*a4 + 56))(a4, 36))
        {
          *a3 = v21 - 1;
          v19 = *a1 + 1;
          *a1 = v19;
          v9 = v56;
          goto LABEL_29;
        }

        *(a3 + 56) = v21;
        *a3 = -1;
        v31 = *a1;
        v9 = v56;
        goto LABEL_61;
      }

      if (a6)
      {
        v59 = &unk_1F5F00A40;
        v60 = &v19[a5 - v8];
        v61 = v56;
        boost::throw_exception<boost::io::bad_format_string>(&v59);
      }

      return 0;
    }
  }

  while (1)
  {
LABEL_29:
    if (v19 == *a2)
    {
      if (a6)
      {
        v59 = &unk_1F5F00A40;
        v60 = &v19[a5 - v8];
        v61 = v9;
        boost::throw_exception<boost::io::bad_format_string>(&v59);
      }

      return 1;
    }

    v28 = (*(*a4 + 72))(a4, *v19, 0);
    if (v28 > 0x2C)
    {
      break;
    }

    if (v28 <= 38)
    {
      if (v28 != 32)
      {
        if (v28 != 35)
        {
          goto LABEL_49;
        }

        *(a3 + 76) |= 0x600u;
        goto LABEL_28;
      }

      v27 = *(a3 + 112) | 2;
LABEL_27:
      *(a3 + 112) = v27;
      goto LABEL_28;
    }

    if (v28 != 39)
    {
      if (v28 != 43)
      {
        goto LABEL_49;
      }

      *(a3 + 76) |= 0x800u;
    }

LABEL_28:
    v19 = *a1 + 1;
    *a1 = v19;
  }

  if (v28 <= 60)
  {
    if (v28 != 45)
    {
      if (v28 != 48)
      {
        goto LABEL_49;
      }

      v27 = *(a3 + 112) | 1;
      goto LABEL_27;
    }

    *(a3 + 76) |= 0x20u;
    goto LABEL_28;
  }

  if (v28 == 61)
  {
    v27 = *(a3 + 112) | 4;
    goto LABEL_27;
  }

  if (v28 == 95)
  {
    *(a3 + 76) |= 0x10u;
    goto LABEL_28;
  }

LABEL_49:
  v29 = **a1;
  v30 = (*(*a4 + 56))(a4, 42);
  v31 = *a1;
  if (v29 == v30)
  {
    ++v31;
    goto LABEL_51;
  }

  if (v31 != *a2)
  {
    v32 = *v31;
    if ((v32 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v32) & 0x400) != 0)
    {
      *(a3 + 56) = 0;
      do
      {
        v33 = *v31;
        if (v33 < 0)
        {
          break;
        }

        if ((*(a4[2] + 4 * v33) & 0x400) == 0)
        {
          break;
        }

        *(a3 + 56) = 10 * *(a3 + 56) + (*(*a4 + 72))(a4) - 48;
        ++v31;
      }

      while (v31 != *a2);
LABEL_51:
      *a1 = v31;
    }
  }

LABEL_61:
  if (v31 >= *a2)
  {
    if (a6)
    {
      v59 = &unk_1F5F00A40;
      v60 = &v31[a5 - v8];
      v61 = v9;
      boost::throw_exception<boost::io::bad_format_string>(&v59);
    }

    return 1;
  }

  v34 = *v31;
  v35 = (*(*a4 + 56))(a4, 46);
  v36 = *a1;
  if (v34 == v35)
  {
    *a1 = ++v36;
    if (v36 != *a2)
    {
      v37 = *v36;
      v38 = (*(*a4 + 56))(a4, 42);
      v36 = *a1;
      if (v37 == v38)
      {
        v39 = 0;
        *a1 = ++v36;
        v56 = v9;
        if (v36 == *a2)
        {
          goto LABEL_109;
        }

        goto LABEL_75;
      }

      if (v36 != *a2)
      {
        v40 = *v36;
        if ((v40 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v40) & 0x400) != 0)
        {
          v36 = boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(a1, a2, (a3 + 64), a4);
          *a1 = v36;
          v39 = 1;
          v56 = v9;
          if (v36 == *a2)
          {
            goto LABEL_109;
          }

          goto LABEL_75;
        }
      }
    }

    v39 = 0;
    *(a3 + 64) = 0;
    v56 = v9;
    if (v36 == *a2)
    {
      goto LABEL_109;
    }

    goto LABEL_75;
  }

  v39 = 0;
  v56 = v9;
  if (v36 == *a2)
  {
LABEL_109:
    if (a6)
    {
      v59 = &unk_1F5F00A40;
      v60 = &v36[a5 - v8];
      v61 = v56;
      boost::throw_exception<boost::io::bad_format_string>(&v59);
    }

    return 1;
  }

LABEL_75:
  v41 = 0;
  while (2)
  {
    v42 = (*(*a4 + 72))(a4, *v36, 0);
    if (v42 <= 0x35)
    {
      switch(v42)
      {
        case '2':
          if (v41 != 51)
          {
            goto LABEL_94;
          }

          break;
        case '3':
          if (v41 != 73)
          {
            goto LABEL_94;
          }

          v41 = 51;
          goto LABEL_78;
        case '4':
          if (v41 != 54)
          {
LABEL_94:
            v25 = *a1;
            goto LABEL_95;
          }

          break;
        default:
          goto LABEL_96;
      }

      v41 = 0;
LABEL_78:
      v36 = *a1 + 1;
      *a1 = v36;
      if (v36 == *a2)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  if (v42 - 73 <= 0x31)
  {
    if (((1 << (v42 - 73)) & 0x2400A80000008) != 0)
    {
      goto LABEL_78;
    }

    if (v42 == 73)
    {
      v41 = 73;
      goto LABEL_78;
    }
  }

  if (v42 == 54)
  {
    if (v41 != 73)
    {
      goto LABEL_94;
    }

    v41 = 54;
    goto LABEL_78;
  }

LABEL_96:
  v36 = *a1;
  v43 = v41 == 73 || v41 == 0;
  v44 = !v43;
  if (v36 >= *a2 || v44)
  {
    goto LABEL_109;
  }

  v45 = v58;
  if (v58 == v57 && (v46 = *v36, v47 = (*(*a4 + 56))(a4, 124), v36 = *a1, v43 = v46 == v47, v45 = v58, v43))
  {
    v48 = v36 + 1;
LABEL_140:
    *a1 = v48;
  }

  else
  {
    switch((*(*a4 + 72))(a4, *v36, 0))
    {
      case 'A':
        v51 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v51;
        goto LABEL_130;
      case 'C':
      case 'c':
        *(a3 + 104) = 1;
        goto LABEL_136;
      case 'E':
        v52 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v52;
        goto LABEL_133;
      case 'F':
        v53 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v53;
        v50 = v53 | 4;
        goto LABEL_134;
      case 'G':
        *(a3 + 76) |= 0x4000u;
        goto LABEL_136;
      case 'S':
      case 's':
        if (v39)
        {
          *(a3 + 104) = *(a3 + 64);
        }

        *(a3 + 64) = 6;
        goto LABEL_135;
      case 'T':
        v49 = *a1 + 1;
        *a1 = v49;
        if (v49 >= *a2)
        {
          boost::io::detail::maybe_throw_exception(a6, &v49[a5 - v8], v56);
          return 0;
        }

        *(a3 + 72) = *v49;
        *(a3 + 112) |= 8u;
        *a3 = -2;
LABEL_135:
        v45 = v58;
LABEL_136:
        v25 = *a1 + 1;
        *a1 = v25;
        if (v45 != v57)
        {
          return 1;
        }

        if (v25 != *a2)
        {
          v54 = *v25;
          v55 = (*(*a4 + 56))(a4, 124);
          v25 = *a1;
          if (v54 == v55)
          {
            v48 = v25 + 1;
            goto LABEL_140;
          }
        }

        break;
      case 'X':
        *(a3 + 76) |= 0x4000u;
        goto LABEL_122;
      case 'a':
        v51 = *(a3 + 76);
LABEL_130:
        v50 = v51 & 0xFFFFFEB1 | 0x104;
        goto LABEL_134;
      case 'b':
        *(a3 + 76) |= 1u;
        goto LABEL_136;
      case 'd':
      case 'g':
      case 'i':
      case 'u':
        goto LABEL_136;
      case 'e':
        v52 = *(a3 + 76);
LABEL_133:
        v50 = v52 | 0x100;
        goto LABEL_134;
      case 'f':
        v50 = *(a3 + 76) | 4;
LABEL_134:
        *(a3 + 76) = v50;
        goto LABEL_135;
      case 'n':
        *a3 = -3;
        goto LABEL_136;
      case 'o':
        *(a3 + 76) = *(a3 + 76) & 0xFFFFFFB5 | 0x40;
        goto LABEL_136;
      case 'p':
      case 'x':
LABEL_122:
        *(a3 + 76) = *(a3 + 76) & 0xFFFFFFB5 | 8;
        goto LABEL_136;
      case 't':
        *(a3 + 72) = (*(*a4 + 56))(a4, 32);
        *(a3 + 112) |= 8u;
        *a3 = -2;
        goto LABEL_136;
      default:
        boost::io::detail::maybe_throw_exception(a6, &(*a1)[a5 - v8], v56);
        goto LABEL_136;
    }

LABEL_95:
    boost::io::detail::maybe_throw_exception(a6, &v25[a5 - v8], v56);
  }

  return 1;
}

void boost::throw_exception<boost::io::bad_format_string>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(exception, a1);
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::assign(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v6 - *a1) >> 3) >= a2)
  {
    v10 = (a1[1] - v7) >> 3;
    v11 = 0xEEEEEEEEEEEEEEEFLL * v10;
    if (0xEEEEEEEEEEEEEEEFLL * v10 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xEEEEEEEEEEEEEEEFLL * v10;
    }

    for (; v12; --v12)
    {
      boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::operator=(v7, a3);
      v7 += 120;
    }

    if (a2 > v11)
    {
      v13 = a1[1];
      v14 = v13 + 120 * (a2 - v11);
      v15 = 120 * a2 - 120 * v11;
      do
      {
        std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v13, a3);
        v13 += 120;
        v15 -= 120;
      }

      while (v15);
      a1[1] = v14;
      return;
    }

    v16 = a1[1];
    v17 = *a1 + 120 * a2;
    while (1)
    {
      if (v16 == v17)
      {
        a1[1] = v17;
        return;
      }

      if (*(v16 - 32) == 1)
      {
        std::locale::~locale((v16 - 24));
        *(v16 - 32) = 0;
        if (*(v16 - 65) < 0)
        {
LABEL_30:
          operator delete(*(v16 - 88));
          if ((*(v16 - 89) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_31;
        }
      }

      else if (*(v16 - 65) < 0)
      {
        goto LABEL_30;
      }

      if ((*(v16 - 89) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_31:
      operator delete(*(v16 - 112));
LABEL_23:
      v16 -= 120;
    }
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = a1[1];
  v9 = *a1;
  if (v8 != v7)
  {
    while (1)
    {
      if (*(v8 - 32) == 1)
      {
        std::locale::~locale((v8 - 24));
        *(v8 - 32) = 0;
        if ((*(v8 - 65) & 0x80000000) == 0)
        {
LABEL_8:
          if (*(v8 - 89) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }
      }

      else if ((*(v8 - 65) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v8 - 88));
      if (*(v8 - 89) < 0)
      {
LABEL_12:
        operator delete(*(v8 - 112));
      }

LABEL_5:
      v8 -= 120;
      if (v8 == v7)
      {
        v9 = *a1;
        break;
      }
    }
  }

  a1[1] = v7;
  operator delete(v9);
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
LABEL_35:
  if (a2 > 0x222222222222222)
  {
    goto LABEL_45;
  }

  v18 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  v19 = 2 * v18;
  if (2 * v18 <= a2)
  {
    v19 = a2;
  }

  v20 = v18 >= 0x111111111111111 ? 0x222222222222222 : v19;
  if (v20 > 0x222222222222222)
  {
LABEL_45:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v21 = 120 * v20;
  v22 = operator new(120 * v20);
  *a1 = v22;
  a1[1] = v22;
  a1[2] = &v22[v21];
  v23 = 120 * a2;
  v24 = &v22[120 * a2];
  do
  {
    std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v22, a3);
    v22 += 120;
    v23 -= 120;
  }

  while (v23);
  a1[1] = v24;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 << 6;
  if (v6 << 6 < v4 || v3 > (v6 << 6) - v4)
  {
    __dst = 0;
    v25 = 0;
    v26 = 0;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&__dst, v11);
    v12 = a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v14 + v4;
    v25 = v14 + v4;
    v16 = __dst;
    if (v14 < 1)
    {
      LODWORD(v18) = 0;
      v17 = __dst;
    }

    else
    {
      v18 = v14 >> 6;
      if (v14 >= 0x40)
      {
        memmove(__dst, v13, 8 * v18);
        v12 = a1;
      }

      v17 = &v16[8 * v18];
      if ((v14 & 0x3F) != 0)
      {
        *v17 = *v17 & ~(0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F)) | *(v13 + v18) & (0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F));
        LODWORD(v18) = v14 & 0x3F;
      }

      else
      {
        LODWORD(v18) = 0;
      }

      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = __dst;
      v15 = v25;
    }

    *v12 = v16;
    *(v12 + 8) = v15;
    __dst = v13;
    v25 = v14;
    v19 = *(v12 + 16);
    *(v12 + 16) = v26;
    v26 = v19;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v17 = (*a1 + 8 * (v3 >> 6));
    v18 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
  }

  if (v4)
  {
    if (a3)
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v20 = v4;
        }

        else
        {
          v20 = (64 - v18);
        }

        *v17 |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v20)) & (-1 << v18);
        v17 += 8;
        v4 -= v20;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        memset(v17, 255, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] | (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
LABEL_44:
        *&v17[8 * v21] = v22;
      }
    }

    else
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v23 = v4;
        }

        else
        {
          v23 = (64 - v18);
        }

        *v17 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v23)) & (-1 << v18));
        v17 += 8;
        v4 -= v23;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        bzero(v17, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
        goto LABEL_44;
      }
    }
  }
}

void sub_1E529B6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v9 = (a2 + 8);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v10 = *(a2 + 31);
      }

      else
      {
        v10 = *(a2 + 16);
      }

      std::string::__assign_no_alias<false>(v4, v9, v10);
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v4, *(a2 + 8), *(a2 + 16));
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
LABEL_16:
        if ((v8 & 0x80u) == 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *(a2 + 32);
        }

        if ((v8 & 0x80u) == 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *(a2 + 40);
        }

        std::string::__assign_no_alias<false>((a1 + 32), v12, v13);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v8 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v11 = *v7;
      *(a1 + 48) = v7[2];
      *(a1 + 32) = v11;
    }
  }

LABEL_24:
  v14 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v14;
  v15 = *(a2 + 88);
  if (*(a1 + 88) == 1)
  {
    v16 = (a1 + 96);
    if (*(a2 + 88))
    {
      std::locale::operator=(v16, (a2 + 96));
    }

    else
    {
      std::locale::~locale(v16);
      *(a1 + 88) = 0;
    }
  }

  else if (*(a2 + 88))
  {
    std::locale::locale((a1 + 96), (a2 + 96));
    *(a1 + 88) = 1;
  }

  v17 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v17;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    std::locale::locale((a1 + 96), (a2 + 96));
    *(a1 + 88) = 1;
  }

  v7 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v7;
  return a1;
}

void sub_1E529B910(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2 > *(a1 + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v3 = ((a2 - 1) >> 6) + 1;
    v4 = operator new(8 * v3);
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = (v6 - 1) >> 6;
    if (v6 < 0x41)
    {
      v7 = 0;
    }

    v4[v7] = 0;
    if (v6 > 0x3F || (v6 & 0x3F) != 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      v11 = v5;
      v12 = v5;
      do
      {
        v13 = 1 << v8;
        if ((*v12 >> v9))
        {
          v14 = *v10 | v13;
        }

        else
        {
          v14 = *v10 & ~v13;
        }

        *v10 = v14;
        if (v9 == 63)
        {
          v11 = ++v12;
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        v10 += v8 == 63;
        if (v8 == 63)
        {
          v12 = v11;
          v8 = 0;
        }

        else
        {
          ++v8;
        }
      }

      while (v9 != (v6 & 0x3F) || v12 != &v5[v6 >> 6]);
    }

    *a1 = v4;
    *(a1 + 16) = v3;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

unint64_t std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(unint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = *(a1 + 23);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return a1;
    }

    v8 = *(a1 + 8);
    v10 = *(a1 + 16);
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = *a1;
    v6 = v10 >> 63;
    if (*a1 > a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return a1;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    v8 = *(a1 + 23);
    v9 = a1;
    if (a1 > a2)
    {
LABEL_11:
      if (v7 - v8 >= v5)
      {
        v15 = a1;
        if (v6)
        {
          v15 = *a1;
        }

        goto LABEL_22;
      }

      v12 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - v7 >= v8 + v5 - v7)
      {
        v13 = a1;
        if ((v4 & 0x80000000) != 0)
        {
          v13 = *a1;
          v14 = a2;
          if (v7 > 0x3FFFFFFFFFFFFFF2)
          {
LABEL_15:
            v15 = operator new(0x7FFFFFFFFFFFFFF7uLL);
            if (!v8)
            {
LABEL_17:
              if (v7 != 22)
              {
                operator delete(v13);
              }

              *(a1 + 8) = v8;
              *(a1 + 16) = v12 | 0x8000000000000000;
              *a1 = v15;
              a2 = v14;
LABEL_22:
              memmove(&v15[v8], a2, v5);
              v15[v8 + v5] = 0;
              v16 = v8 + v5;
              if (*(a1 + 23) < 0)
              {
                *(a1 + 8) = v16;
              }

              else
              {
                *(a1 + 23) = v16 & 0x7F;
              }

              return a1;
            }

LABEL_16:
            memmove(v15, v13, v8);
            goto LABEL_17;
          }
        }

        else
        {
          v14 = a2;
          if (v7 > 0x3FFFFFFFFFFFFFF2)
          {
            goto LABEL_15;
          }
        }

        v23 = 2 * v7;
        if (v8 + v5 > 2 * v7)
        {
          v23 = v8 + v5;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v12 = v24;
        }

        else
        {
          v12 = 23;
        }

        v15 = operator new(v12);
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_49:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (&v9[v8 + 1] <= a2)
  {
    goto LABEL_11;
  }

  memset(__dst, 170, sizeof(__dst));
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_49;
  }

  if (v5 > 0x16)
  {
    if ((v5 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v5 | 7) + 1;
    }

    v18 = a2;
    v19 = operator new(v17);
    a2 = v18;
    v11 = v19;
    __dst[1] = v5;
    __dst[2] = (v17 | 0x8000000000000000);
    __dst[0] = v19;
  }

  else
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v11 = __dst;
  }

  memmove(v11, a2, v5);
  *(v11 + v5) = 0;
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v20 = __dst;
  }

  else
  {
    v20 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v21 = HIBYTE(__dst[2]);
  }

  else
  {
    v21 = __dst[1];
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_1E529BCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::io::detail::maybe_throw_exception(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (this)
  {
    v3[0] = &unk_1F5F00A40;
    v3[1] = a2;
    v3[2] = a3;
    boost::throw_exception<boost::io::bad_format_string>(v3);
  }

  return this;
}

char *boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(char **a1, char **a2, void *a3, void *a4)
{
  *a3 = 0;
  for (i = *a1; i != *a2; ++i)
  {
    v8 = *i;
    if (v8 < 0)
    {
      break;
    }

    if ((*(a4[2] + 4 * v8) & 0x400) == 0)
    {
      break;
    }

    *a3 = 10 * *a3 + (*(*a4 + 72))(a4) - 48;
  }

  return i;
}

__n128 boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F5EFF798;
  a1->n128_u64[1] = &unk_1F5F00A40;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F5F009C8;
  a1->n128_u64[1] = &unk_1F5F009F8;
  a1[2].n128_u64[0] = &unk_1F5F00A20;
  a1[2].n128_u64[1] = 0;
  return result;
}

std::exception *boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void *boost::wrapexcept<boost::io::bad_format_string>::clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5EFF798;
  v2[1] = &unk_1F5F00A40;
  *(v2 + 1) = *(a1 + 16);
  v3 = *(a1 + 40);
  v2[4] = &unk_1F5EFF7F0;
  v2[5] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 3) = *(a1 + 48);
  *(v2 + 16) = *(a1 + 64);
  *v2 = &unk_1F5F009C8;
  v2[1] = &unk_1F5F009F8;
  v2[4] = &unk_1F5F00A20;
  boost::exception_detail::copy_boost_exception((v2 + 4), a1 + 32);
  return v2;
}

void sub_1E529C054(_Unwind_Exception *a1)
{
  std::exception::~exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::bad_format_string>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(std::exception *a1)
{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  v4 = a1 - 1;
  std::exception::~exception(a1);

  operator delete(v4);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete(&a1[-4]);
}

void boost::io::bad_format_string::~bad_format_string(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

__n128 boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EFF798;
  *(a1 + 8) = &unk_1F5F00A40;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &unk_1F5EFF7F0;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &unk_1F5F009C8;
  *(a1 + 8) = &unk_1F5F009F8;
  *(a1 + 32) = &unk_1F5F00A20;
  return result;
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 3) < a2)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v6 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0x222222222222222)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x111111111111111)
    {
      v10 = 0x222222222222222;
    }

    else
    {
      v10 = v8;
    }

    v24 = a1;
    if (v10)
    {
      if (v10 > 0x222222222222222)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v11 = a2;
      v12 = operator new(120 * v10);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v15 = &v12[120 * v7];
    __p = v12;
    v21 = v15;
    v22 = v15;
    v23 = &v12[120 * v10];
    v16 = 120 * a2;
    v17 = v15 + 120 * a2;
    do
    {
      std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v15, a3);
      v15 += 120;
      v16 -= 120;
    }

    while (v16);
    v22 = v17;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__swap_out_circular_buffer(a1, &__p);
    v18 = v21;
    while (1)
    {
      while (1)
      {
        v19 = v22;
        if (v22 == v18)
        {
          if (__p)
          {
            operator delete(__p);
          }

          return;
        }

        v22 -= 120;
        if (*(v19 - 32) != 1)
        {
          break;
        }

        std::locale::~locale((v19 - 24));
        *(v19 - 32) = 0;
        if ((*(v19 - 65) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_27:
        operator delete(*(v19 - 88));
        if (*(v19 - 89) < 0)
        {
          goto LABEL_28;
        }
      }

      if (*(v19 - 65) < 0)
      {
        goto LABEL_27;
      }

LABEL_24:
      if (*(v19 - 89) < 0)
      {
LABEL_28:
        operator delete(*(v19 - 112));
      }
    }
  }

  if (a2)
  {
    v13 = v6 + 120 * a2;
    v14 = 120 * a2;
    do
    {
      std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v6, a3);
      v6 += 120;
      v14 -= 120;
    }

    while (v14);
    v6 = v13;
  }

  *(a1 + 8) = v6;
}

void sub_1E529C740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1E529C75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__swap_out_circular_buffer(std::locale **a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a2[1] + *a1 - v5);
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = &v4[v7];
      v10 = &v6[v7];
      LODWORD(v10->__locale_) = v4[v7].__locale_;
      v11 = *&v4[v7 + 1].__locale_;
      v10[3].__locale_ = v4[v7 + 3];
      *&v10[1].__locale_ = v11;
      v9[2].__locale_ = 0;
      v9[3].__locale_ = 0;
      v9[1].__locale_ = 0;
      v12 = *&v4[v7 + 4].__locale_;
      v10[6].__locale_ = v4[v7 + 6];
      *&v10[4].__locale_ = v12;
      v9[5].__locale_ = 0;
      v9[6].__locale_ = 0;
      v9[4].__locale_ = 0;
      v13 = *&v4[v7 + 7].__locale_;
      *&v10[9].__locale_ = *&v4[v7 + 9].__locale_;
      *&v10[7].__locale_ = v13;
      LOBYTE(v10[11].__locale_) = 0;
      if (LOBYTE(v4[v7 + 11].__locale_) == 1)
      {
        std::locale::locale(v10 + 12, v9 + 12);
        LOBYTE(v10[11].__locale_) = 1;
      }

      locale = v9[13].__locale_;
      LODWORD(v10[14].__locale_) = v9[14].__locale_;
      v10[13].__locale_ = locale;
      v7 += 15;
    }

    while (&v9[15] != v5);
    v14 = v4 + 12;
    while (1)
    {
      if (LOBYTE(v14[-1].__locale_) == 1)
      {
        std::locale::~locale(v14);
        LOBYTE(v14[-1].__locale_) = 0;
        if ((SHIBYTE(v14[-6].__locale_) & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v14[-9].__locale_) < 0)
          {
            goto LABEL_14;
          }

          goto LABEL_7;
        }
      }

      else if ((SHIBYTE(v14[-6].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v14[-8].__locale_);
      if (SHIBYTE(v14[-9].__locale_) < 0)
      {
LABEL_14:
        operator delete(v14[-11].__locale_);
      }

LABEL_7:
      v15 = v14 + 3;
      v14 += 15;
      if (v15 == v5)
      {
        v4 = *a1;
        break;
      }
    }
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    if (*(i - 32) == 1)
    {
      std::locale::~locale((i - 24));
      *(i - 32) = 0;
      if (*(i - 65) < 0)
      {
LABEL_9:
        operator delete(*(i - 88));
        if ((*(i - 89) & 0x80000000) == 0)
        {
          continue;
        }

        goto LABEL_10;
      }
    }

    else if (*(i - 65) < 0)
    {
      goto LABEL_9;
    }

    if ((*(i - 89) & 0x80000000) == 0)
    {
      continue;
    }

LABEL_10:
    operator delete(*(i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(uint64_t a1, void *a2)
{
  if (*(a1 + 60) == 1)
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    if (v3 != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (!*(a1 + 32) || (v8 = *(v4 + v5), (v8 & 0x80000000) != 0) || ((*(*(a1 + 24) + ((v8 >> 3) & 0x1FFFFFF8)) >> v8) & 1) == 0)
        {
          v9 = v4 + v5;
          v7 = (v9 + 8);
          if (*(v9 + 31) < 0)
          {
            v7 = *v7;
            *(v9 + 16) = 0;
          }

          else
          {
            *(v9 + 31) = 0;
          }

          *v7 = 0;
          v4 = *a1;
          v3 = *(a1 + 8);
        }

        ++v6;
        v5 += 120;
      }

      while (v6 < 0xEEEEEEEEEEEEEEEFLL * ((v3 - v4) >> 3));
    }

    *(a1 + 52) = 0;
    *(a1 + 60) = 0;
    if (*(a1 + 32))
    {
      v10 = *(a1 + 56);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = *(a1 + 24);
        do
        {
          if (((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            break;
          }

          *(a1 + 52) = ++v11;
        }

        while (v10 != v11);
      }
    }
  }

  boost::io::detail::distribute<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(a1, a2);
  v13 = *(a1 + 52);
  v14 = v13 + 1;
  *(a1 + 52) = v13 + 1;
  if (*(a1 + 32))
  {
    v15 = *(a1 + 56);
    if (v14 < v15)
    {
      v16 = *(a1 + 24);
      v17 = v13 + 2;
      do
      {
        if (((*(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          break;
        }

        ++v14;
        *(a1 + 52) = v17++;
      }

      while (v15 != v14);
    }
  }

  return a1;
}

uint64_t boost::io::detail::distribute<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 52);
  v4 = *(result + 56);
  if (v3 >= v4)
  {
    if ((*(result + 88) & 4) != 0)
    {
      v11[0] = &unk_1F5F00B40;
      v11[1] = v3;
      v11[2] = v4;
      boost::throw_exception<boost::io::too_many_args>(v11);
    }
  }

  else
  {
    v6 = *result;
    v5 = *(result + 8);
    if (v5 != *result)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (*(v6 + v8) == *(v2 + 52))
        {
          if (*(v2 + 184))
          {
            v10 = (v2 + 192);
          }

          else
          {
            v10 = 0;
          }

          result = boost::io::detail::put<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(a2, v6 + v8, (v6 + v8 + 8), (v2 + 96), v10);
          v6 = *v2;
          v5 = *(v2 + 8);
        }

        ++v9;
        v8 += 120;
      }

      while (v9 < 0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 3));
    }
  }

  return result;
}

void boost::throw_exception<boost::io::too_many_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_many_args>::wrapexcept(exception, a1);
}

uint64_t boost::io::detail::put<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(void *a1, uint64_t a2, std::string *a3, void *a4, const std::locale *a5)
{
  v83 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v10;
  v70[9] = v10;
  v70[7] = v10;
  v70[5] = v10;
  v70[6] = v10;
  v70[3] = v10;
  v70[4] = v10;
  v70[1] = v10;
  v70[2] = v10;
  v69 = v10;
  v70[0] = v10;
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(&v69, a4);
  if (a5)
  {
    v11 = (&v70[-1] + *(v69 - 24));
    v68.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(v11);
    std::ios_base::imbue(v11, a5);
    std::locale::~locale(v71);
    rdbuf = v11->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a5);
      v82.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&v82, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, a5);
      std::locale::~locale(&v82);
    }

    std::locale::~locale(&v68);
  }

  boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(a2 + 56, (&v70[-1] + *(v69 - 24)), a5);
  (a1[1])(&v69, *a1);
  v13 = v69;
  v14 = &v70[-1] + *(v69 - 24);
  v15 = *(v14 + 2);
  __n = *(v14 + 3);
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = a3->__r_.__value_.__r.__words[0];
    a3->__r_.__value_.__l.__size_ = 0;
    *v16 = 0;
    if ((v15 & 0x10) == 0)
    {
LABEL_19:
      if (__n >= 1)
      {
        *(v70 + *(v13 - 24) + 8) = 0;
      }

      (a1[2])(&v69, *a1);
      v29 = a4[5];
      if ((*(a2 + 112) & 2) == 0)
      {
        goto LABEL_25;
      }

      if (a4[6] == v29)
      {
        goto LABEL_27;
      }

      v30 = *v29;
      std::ios_base::getloc((&v70[-1] + *(v69 - 24)));
      v31 = std::locale::use_facet(v71, MEMORY[0x1E69E5318]);
      v32 = (v31->__vftable[2].~facet_0)(v31, 43);
      std::locale::~locale(v71);
      if (v30 == v32)
      {
        goto LABEL_25;
      }

      v33 = *v29;
      std::ios_base::getloc((&v70[-1] + *(v69 - 24)));
      v34 = std::locale::use_facet(v71, MEMORY[0x1E69E5318]);
      v35 = (v34->__vftable[2].~facet_0)(v34, 45);
      std::locale::~locale(v71);
      if (v33 != v35)
      {
LABEL_27:
        std::ios_base::getloc((&v70[-1] + *(v69 - 24)));
        v37 = std::locale::use_facet(v71, MEMORY[0x1E69E5318]);
        v36 = (v37->__vftable[2].~facet_0)(v37, 32);
        std::locale::~locale(v71);
      }

      else
      {
LABEL_25:
        v36 = 0;
      }

      v38 = a4[5];
      if (a4[6] - v38 >= *(a2 + 104) - (v36 != 0))
      {
        v39 = *(a2 + 104) - (v36 != 0);
      }

      else
      {
        v39 = a4[6] - v38;
      }

      v40 = &v70[-1] + *(v69 - 24);
      v41 = *(v40 + 36);
      if (v41 == -1)
      {
        std::ios_base::getloc((&v70[-1] + *(v69 - 24)));
        v42 = std::locale::use_facet(v71, MEMORY[0x1E69E5318]);
        v41 = (v42->__vftable[2].~facet_0)(v42, 32);
        std::locale::~locale(v71);
        *(v40 + 36) = v41;
      }

      boost::io::detail::mk_str<char,std::char_traits<char>,std::allocator<char>>(a3, v29, v39, __n, v41, v15, v36, (*(a2 + 112) >> 2) & 1);
LABEL_34:
      v43 = a4[6];
      if (!v43)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    }
  }

  else
  {
    *(&a3->__r_.__value_.__s + 23) = 0;
    a3->__r_.__value_.__s.__data_[0] = 0;
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!__n)
  {
    goto LABEL_19;
  }

  (a1[2])(&v69, *a1);
  v18 = a4[5];
  v17 = a4[6];
  v19 = v17 - v18;
  if ((*(a2 + 112) & 2) == 0)
  {
    goto LABEL_14;
  }

  if (v17 == v18)
  {
    goto LABEL_36;
  }

  v66 = v17 - v18;
  v20 = *v18;
  std::ios_base::getloc((&v70[-1] + *(v69 - 24)));
  v21 = std::locale::use_facet(v71, MEMORY[0x1E69E5318]);
  v22 = (v21->__vftable[2].~facet_0)(v21, 43);
  std::locale::~locale(v71);
  v19 = v66;
  if (v20 == v22)
  {
    goto LABEL_14;
  }

  v23 = *v18;
  std::ios_base::getloc((&v70[-1] + *(v69 - 24)));
  v24 = std::locale::use_facet(v71, MEMORY[0x1E69E5318]);
  v25 = (v24->__vftable[2].~facet_0)(v24, 45);
  std::locale::~locale(v71);
  v19 = v66;
  if (v23 != v25)
  {
LABEL_36:
    v26 = (a2 + 104);
    v28 = 1;
  }

  else
  {
LABEL_14:
    v26 = (a2 + 104);
    if (v19 == __n && __n <= *(a2 + 104))
    {
      std::string::__assign_external(a3, v18, __n);
      goto LABEL_34;
    }

    v28 = 0;
  }

  v44 = v18;
  v45 = v19;
  std::string::__assign_external(a3, v44, v19);
  v46 = a4[6];
  if (v46 && v46 != a4[5])
  {
    *&v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    *&v71[0].__locale_ = 0u;
    v72 = 0u;
    (*(*a4 + 40))(&v82, a4, v71, 16);
  }

  v47 = a4[3];
  if (v47 && v47 != a4[2])
  {
    *&v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    *&v71[0].__locale_ = 0u;
    v72 = 0u;
    (*(*a4 + 40))(&v82, a4, v71, 8);
  }

  *&v48 = 0xAAAAAAAAAAAAAAAALL;
  *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v80 = v48;
  v81 = v48;
  v78 = v48;
  v79 = v48;
  v76 = v48;
  v77 = v48;
  v74 = v48;
  v75 = v48;
  v72 = v48;
  v73 = v48;
  *&v71[0].__locale_ = v48;
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(v71, a4);
  boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(a2 + 56, (v71 + *(v71[0].__locale_ - 3)), a5);
  (a1[1])(v71, *a1);
  *(&v72 + *(v71[0].__locale_ - 3) + 8) = 0;
  if (v28)
  {
    LOBYTE(v82.__locale_) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, &v82, 1);
  }

  (a1[2])(v71, *a1);
  v50 = a4[5];
  v49 = a4[6];
  if (v49 == v50 && (*(a2 + 112) & 2) != 0)
  {
    LOBYTE(v82.__locale_) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, &v82, 1);
    v50 = a4[5];
    v49 = a4[6];
    v28 = 1;
  }

  v51 = v49 - v50;
  if (v51 >= *v26)
  {
    v52 = *v26;
  }

  else
  {
    v52 = v51;
  }

  if (__n <= v52)
  {
    std::string::__assign_external(a3, v50, v52);
  }

  else
  {
    v53 = v45 + v28;
    if (v52 < v53)
    {
      v53 = v52;
    }

    v54 = v28;
    if (v53 > v28)
    {
      v55 = a3->__r_.__value_.__r.__words[0];
      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = a3;
      }

      v54 = v28;
      while (1)
      {
        v56 = v55->__r_.__value_.__s.__data_[0];
        v55 = (v55 + 1);
        if (v50[v54] != v56)
        {
          break;
        }

        if (v53 == ++v54)
        {
          v54 = v53;
          break;
        }
      }
    }

    if (v54 >= v52)
    {
      v57 = v28;
    }

    else
    {
      v57 = v54;
    }

    std::string::__assign_external(a3, v50, v57);
    v58 = v71 + *(v71[0].__locale_ - 3);
    v59 = *(v58 + 36);
    if (v59 == -1)
    {
      std::ios_base::getloc((v71 + *(v71[0].__locale_ - 3)));
      v60 = std::locale::use_facet(&v82, MEMORY[0x1E69E5318]);
      v59 = (v60->__vftable[2].~facet_0)(v60, 32);
      std::locale::~locale(&v82);
      *(v58 + 36) = v59;
    }

    std::string::append(a3, __n - v52, v59);
    std::string::append(a3, &v50[v57], v52 - v57);
  }

  std::ostream::~ostream();
  v61 = v72;
  if (v72)
  {
    if (atomic_fetch_add((v72 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v61 + 16))(v61);
      if (atomic_fetch_add(v61 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v61 + 24))(v61);
      }
    }
  }

  MEMORY[0x1E69273B0](&v72 + 8);
  v43 = a4[6];
  if (v43)
  {
LABEL_73:
    if (v43 != a4[5])
    {
      *&v79 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      *&v71[0].__locale_ = 0u;
      v72 = 0u;
      (*(*a4 + 40))(&v82, a4, v71, 16);
    }
  }

LABEL_75:
  v62 = a4[3];
  if (v62 && v62 != a4[2])
  {
    *&v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    *&v71[0].__locale_ = 0u;
    v72 = 0u;
    (*(*a4 + 40))(&v82, a4, v71, 8);
  }

  std::ostream::~ostream();
  v63 = *&v70[0];
  if (*&v70[0])
  {
    if (atomic_fetch_add((*&v70[0] + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v63 + 16))(v63);
      if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v63 + 24))(v63);
      }
    }
  }

  result = MEMORY[0x1E69273B0](v70 + 8);
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E529D700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::locale::~locale((v35 - 240));
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(&a35);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(&a13);
  _Unwind_Resume(a1);
}

void sub_1E529D724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::locale a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E529D7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, char a13)
{
  std::locale::~locale(&a12);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(&a13);
  _Unwind_Resume(a1);
}

void sub_1E529D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  _Unwind_Resume(a1);
}

void sub_1E529D808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  _Unwind_Resume(a1);
}

void sub_1E529D81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  _Unwind_Resume(a1);
}

__n128 boost::wrapexcept<boost::io::too_many_args>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F5EFF798;
  a1->n128_u64[1] = &unk_1F5F00B40;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F5F00AC8;
  a1->n128_u64[1] = &unk_1F5F00AF8;
  a1[2].n128_u64[0] = &unk_1F5F00B20;
  a1[2].n128_u64[1] = 0;
  return result;
}

std::exception *boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void *boost::wrapexcept<boost::io::too_many_args>::clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5EFF798;
  v2[1] = &unk_1F5F00B40;
  *(v2 + 1) = *(a1 + 16);
  v3 = *(a1 + 40);
  v2[4] = &unk_1F5EFF7F0;
  v2[5] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 3) = *(a1 + 48);
  *(v2 + 16) = *(a1 + 64);
  *v2 = &unk_1F5F00AC8;
  v2[1] = &unk_1F5F00AF8;
  v2[4] = &unk_1F5F00B20;
  boost::exception_detail::copy_boost_exception((v2 + 4), a1 + 32);
  return v2;
}

void sub_1E529DA98(_Unwind_Exception *a1)
{
  std::exception::~exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::too_many_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_many_args>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_many_args>::~wrapexcept(std::exception *a1)
{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  v4 = a1 - 1;
  std::exception::~exception(a1);

  operator delete(v4);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete(&a1[-4]);
}

void boost::io::too_many_args::~too_many_args(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

__n128 boost::wrapexcept<boost::io::too_many_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EFF798;
  *(a1 + 8) = &unk_1F5F00B40;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &unk_1F5EFF7F0;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &unk_1F5F00AC8;
  *(a1 + 8) = &unk_1F5F00AF8;
  *(a1 + 32) = &unk_1F5F00B20;
  return result;
}

uint64_t boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(uint64_t a1, void *a2)
{
  *(a1 + 8) = a2;
  v4 = (a1 + 24);
  *(a1 + 72) = 0;
  v5 = MEMORY[0x1E69E5590] + 16;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  v6 = operator new(0x20uLL);
  v6[1] = 0x100000001;
  *v6 = &unk_1F5F00C70;
  v6[2] = a2;
  *a1 = &unk_1F5F00BE0;
  *(a1 + 16) = v6;
  *(a1 + 24) = &unk_1F5F00C08;
  std::ios_base::init(v4, a2);
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *a1 = &unk_1F5F00B70;
  *(a1 + 24) = &unk_1F5F00B98;
  return a1;
}

void sub_1E529E0B0(_Unwind_Exception *a1)
{
  boost::shared_ptr<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>>::~shared_ptr(v2);
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

void sub_1E529E0D8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

void boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(uint64_t a1, std::ios_base *this, const std::locale *a3)
{
  if (*(a1 + 32) == 1)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(this);
    std::ios_base::imbue(this, (a1 + 40));
    std::locale::~locale(&v16);
    rdbuf = this->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(this->__rdbuf_, a1 + 40);
      v15.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&v15, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 40));
      std::locale::~locale(&v15);
    }

    v6 = &v14;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    v13 = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(this);
    std::ios_base::imbue(this, a3);
    std::locale::~locale(&v16);
    v8 = this->__rdbuf_;
    if (v8)
    {
      (*(v8->__locale_ + 2))(this->__rdbuf_, a3);
      v15.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&v15, v8 + 1);
      std::locale::operator=(v8 + 1, a3);
      std::locale::~locale(&v15);
    }

    v6 = &v13;
  }

  std::locale::~locale(v6);
LABEL_10:
  if (*a1 != -1)
  {
    this->__width_ = *a1;
  }

  v9 = *(a1 + 8);
  if (v9 != -1)
  {
    this->__precision_ = v9;
  }

  v10 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (this[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(this);
      v11 = std::locale::use_facet(&v16, MEMORY[0x1E69E5318]);
      v12 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v16);
      this[1].__fmtflags_ = v12;
    }

    this[1].__fmtflags_ = v10;
  }

  this->__fmtflags_ = *(a1 + 20);
  std::ios_base::clear(this, *(a1 + 24));
  this->__exceptions_ = *(a1 + 28);
  std::ios_base::clear(this, this->__rdstate_);
}

void boost::io::detail::mk_str<char,std::char_traits<char>,std::allocator<char>>(std::string *__dst, std::string::value_type *__s, std::string::size_type __n, uint64_t a4, std::string::value_type __c, char a6, int a7, int a8)
{
  if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
  {
    v13 = __dst->__r_.__value_.__r.__words[0];
    __dst->__r_.__value_.__l.__size_ = 0;
    *v13 = 0;
    if (a4 < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = 0;
    __dst->__r_.__value_.__s.__data_[0] = 0;
    if (a4 < 1)
    {
LABEL_19:
      if (a7)
      {
        v23 = __n + 1;
      }

      else
      {
        v23 = __n;
      }

      if (v23 <= 0x7FFFFFFFFFFFFFF7)
      {
        v24 = 22;
        if ((__dst->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = (__dst->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v24 < v23)
        {
          v25 = v23 | 7;
          if ((v23 | 7) == 0x17)
          {
            v25 = 24;
          }

          if (v23 <= 0x16)
          {
            v26 = 22;
          }

          else
          {
            v26 = v25;
          }

          std::string::__shrink_or_extend[abi:ne200100](__dst, v26);
        }

        if (a7)
        {
          std::string::append(__dst, 1uLL, a7);
        }

        if (__n)
        {

          std::string::append(__dst, __s, __n);
        }

        return;
      }

LABEL_52:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  v14 = a4 - __n;
  if (a4 <= __n)
  {
    goto LABEL_19;
  }

  if (a4 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_52;
  }

  v16 = 22;
  if ((__dst->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = (__dst->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v16 < a4)
  {
    v17 = a4 | 7;
    if ((a4 | 7) == 0x17)
    {
      v17 = 24;
    }

    if (a4 <= 0x16)
    {
      v18 = 22;
    }

    else
    {
      v18 = v17;
    }

    v19 = a6;
    v20 = a8;
    std::string::__shrink_or_extend[abi:ne200100](__dst, v18);
    a8 = v20;
    a6 = v19;
  }

  v15 = a7 != 0;
  v21 = v14 - v15;
  if (a8)
  {
    v22 = v21 / 2;
    v21 -= v21 / 2;
    if (!v21)
    {
      goto LABEL_41;
    }

LABEL_40:
    std::string::append(__dst, v21, __c);
    goto LABEL_41;
  }

  if ((a6 & 0x20) != 0)
  {
    v22 = v14 - v15;
    if (!a7)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v22 = 0;
  if (v21)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (a7)
  {
LABEL_42:
    std::string::append(__dst, 1uLL, a7);
  }

LABEL_43:
  if (__n)
  {
    std::string::append(__dst, __s, __n);
  }

  if (v22)
  {

    std::string::append(__dst, v22, __c);
  }
}

uint64_t boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(uint64_t a1)
{
  v2 = *(std::ostream::~ostream() + 16);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  MEMORY[0x1E69273B0](a1 + 24);
  return a1;
}

void boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(char *a1)
{
  v2 = *(std::ostream::~ostream() + 16);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  MEMORY[0x1E69273B0](a1 + 24);

  operator delete(a1);
}

void virtual thunk toboost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  v2 = *(v1 + 2);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  JUMPOUT(0x1E69273B0);
}

{
  v1 = (a1 + *(*a1 - 24));
  std::ostream::~ostream();
  v2 = v1[2];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  MEMORY[0x1E69273B0](v1 + 3);

  operator delete(v1);
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_pd<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>> *,boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::No_Op>::get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E539165CLL)
  {
    return a1 + 24;
  }

  if (((v2 & 0x80000001E539165CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539165CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539165CLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t boost::shared_ptr<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void std::string::__shrink_or_extend[abi:ne200100](_BYTE *__dst, unint64_t a2)
{
  v4 = __dst[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 22;
    LOBYTE(v6) = __dst[23];
    v7 = v6;
    v8 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v5 >= a2)
    {
      v13 = operator new(a2 + 1);
      v10 = v13;
      if ((v4 & 0x80000000) == 0 || (v14 = *(__dst + 2), (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1 < a2))
      {

        operator delete(v13);
        return;
      }

      v6 = HIBYTE(v14);
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = operator new(a2 + 1);
      if ((v6 & 0x80) == 0)
      {
LABEL_8:
        v9 = __dst;
        goto LABEL_9;
      }
    }

    v9 = *__dst;
    goto LABEL_23;
  }

  v7 = *(__dst + 1);
  v11 = *(__dst + 2);
  v5 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v6 = HIBYTE(v11);
  v8 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = *__dst;
  v10 = __dst;
  if ((v6 & 0x80) != 0)
  {
LABEL_23:
    v15 = *(__dst + 1);
    v8 = 1;
    v12 = v15 + 1;
    if (v15 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = v6 + 1;
LABEL_10:
  memmove(v10, v9, v12);
LABEL_11:
  if (v8)
  {
    operator delete(v9);
    if (a2 < 0x17)
    {
      goto LABEL_13;
    }
  }

  else if (a2 < 0x17)
  {
LABEL_13:
    __dst[23] = v7 & 0x7F;
    return;
  }

  *(__dst + 1) = v7;
  *(__dst + 2) = (a2 + 1) | 0x8000000000000000;
  *__dst = v10;
}

void sub_1E529EBDC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>(void *a1, uint64_t a2)
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

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, a2, v3);
}

void boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  if (v4 == *a1)
  {
    if (*(a1 + 87) < 0)
    {
      v30 = a1[8];
      v31 = a1[9];

      std::string::__init_copy_ctor_external(a2, v30, v31);
    }

    else
    {
      *a2 = *(a1 + 4);
      *(a2 + 16) = a1[10];
    }

    return;
  }

  v7 = *(a1 + 13);
  v8 = *(a1 + 14);
  if (v7 < v8 && (a1[11] & 2) != 0)
  {
    v32[0] = &unk_1F5F00DB8;
    v32[1] = v7;
    v32[2] = v8;
    boost::throw_exception<boost::io::too_few_args>(v32);
  }

  v9 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = *(a1 + 87);
  if (v10 < 0)
  {
    v11 = a1[9];
  }

  else
  {
    v11 = *(a1 + 87);
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  v12 = (v5 + 56);
  do
  {
    while (1)
    {
      v14 = *(v12 - 25);
      if (v14 < 0)
      {
        v15 = *(v12 - 5) + v11;
        if (*(v12 - 14) != -2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = v14 + v11;
        if (*(v12 - 14) != -2)
        {
          goto LABEL_12;
        }
      }

      if (v15 <= *v12)
      {
        v15 = *v12;
      }

LABEL_12:
      v13 = *(v12 - 1);
      if (v13 < 0)
      {
        break;
      }

      v11 = v13 + v15;
      v12 += 15;
      if (!--v9)
      {
        goto LABEL_23;
      }
    }

    v11 = *(v12 - 2) + v15;
    v12 += 15;
    --v9;
  }

  while (v9);
LABEL_23:
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v16 = 24;
    }

    else
    {
      v16 = v11 | 7;
    }

    std::string::__shrink_or_extend[abi:ne200100](a2, v16);
    LOBYTE(v10) = *(a1 + 87);
  }

  if ((v10 & 0x80u) == 0)
  {
    v17 = (a1 + 8);
  }

  else
  {
    v17 = a1[8];
  }

  if ((v10 & 0x80u) == 0)
  {
    v18 = v10;
  }

  else
  {
    v18 = a1[9];
  }

  std::string::append(a2, v17, v18);
  v19 = *a1;
  if (a1[1] != *a1)
  {
    v20 = 0;
    v21 = 40;
    while (1)
    {
      v22 = *(v19 + v21 - 9);
      if (v22 >= 0)
      {
        v23 = (v19 + v21 - 32);
      }

      else
      {
        v23 = *(v19 + v21 - 32);
      }

      if (v22 >= 0)
      {
        v24 = *(v19 + v21 - 9);
      }

      else
      {
        v24 = *(v19 + v21 - 24);
      }

      std::string::append(a2, v23, v24);
      if (*(v19 + v21 - 40) != -2)
      {
        goto LABEL_49;
      }

      v25 = *(v19 + v21 + 16);
      v26 = *(a2 + 23);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      v26 = *(a2 + 8);
      if (v25 > v26)
      {
        goto LABEL_48;
      }

LABEL_49:
      v27 = *(v19 + v21 + 15);
      if (v27 >= 0)
      {
        v28 = (v19 + v21 - 8);
      }

      else
      {
        v28 = *(v19 + v21 - 8);
      }

      if (v27 >= 0)
      {
        v29 = *(v19 + v21 + 15);
      }

      else
      {
        v29 = *(v19 + v21);
      }

      std::string::append(a2, v28, v29);
      ++v20;
      v19 = *a1;
      v21 += 120;
      if (v20 >= 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3))
      {
        goto LABEL_56;
      }
    }

    if (v25 <= v26)
    {
      goto LABEL_49;
    }

LABEL_48:
    std::string::append(a2, v25 - v26, *(v19 + v21 + 32));
    goto LABEL_49;
  }

LABEL_56:
  *(a1 + 60) = 1;
}

void sub_1E529EF14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::throw_exception<boost::io::too_few_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_few_args>::wrapexcept(exception, a1);
}

__n128 boost::wrapexcept<boost::io::too_few_args>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F5EFF798;
  a1->n128_u64[1] = &unk_1F5F00DB8;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F5F00D40;
  a1->n128_u64[1] = &unk_1F5F00D70;
  a1[2].n128_u64[0] = &unk_1F5F00D98;
  a1[2].n128_u64[1] = 0;
  return result;
}

std::exception *boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void *boost::wrapexcept<boost::io::too_few_args>::clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5EFF798;
  v2[1] = &unk_1F5F00DB8;
  *(v2 + 1) = *(a1 + 16);
  v3 = *(a1 + 40);
  v2[4] = &unk_1F5EFF7F0;
  v2[5] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 3) = *(a1 + 48);
  *(v2 + 16) = *(a1 + 64);
  *v2 = &unk_1F5F00D40;
  v2[1] = &unk_1F5F00D70;
  v2[4] = &unk_1F5F00D98;
  boost::exception_detail::copy_boost_exception((v2 + 4), a1 + 32);
  return v2;
}

void sub_1E529F1FC(_Unwind_Exception *a1)
{
  std::exception::~exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::too_few_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_few_args>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_few_args>::~wrapexcept(std::exception *a1)
{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  v4 = a1 - 1;
  std::exception::~exception(a1);

  operator delete(v4);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete(&a1[-4]);
}

void boost::io::too_few_args::~too_few_args(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

__n128 boost::wrapexcept<boost::io::too_few_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EFF798;
  *(a1 + 8) = &unk_1F5F00DB8;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &unk_1F5EFF7F0;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &unk_1F5F00D40;
  *(a1 + 8) = &unk_1F5F00D70;
  *(a1 + 32) = &unk_1F5F00D98;
  return result;
}

uint64_t __cxx_global_var_init_296()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_297()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void DaleTransport_BootLogger_UART::start_pl_log(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v5;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  WORD2(v27) = 1;
  memset(&v26, 0, sizeof(v26));
  v30 = 0;
  v31 = 0xAAAAAAAAAAAA0000;
  LODWORD(v27) = 921600;
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v27 + 1) = v6;
  std::function<void ()(unsigned char *,long)>::operator=<std::function<void ()(unsigned char const*,long)> &,void>(&v28, a3);
  std::string::__assign_external(&v26, "/dev/tty.baseband-boot-logger", 0x1DuLL);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v26;
  }

  v20 = v27;
  v21 = WORD2(v27);
  v22 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    dispatch_retain(*(&v27 + 1));
  }

  v7 = v30;
  if (v30)
  {
    if (v30 == &v28)
    {
      v24 = v23;
      (*(*v30 + 24))();
      goto LABEL_13;
    }

    v7 = (*(*v30 + 16))();
  }

  v24 = v7;
LABEL_13:
  v25 = v31;
  std::allocate_shared[abi:ne200100]<UART,std::allocator<UART>,UART::_Config &,0>(&v19, &v18);
  v8 = v18;
  v18 = 0uLL;
  v9 = *(a1 + 152);
  *(a1 + 144) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v24;
    if (v24 != v23)
    {
LABEL_19:
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      v12 = v22;
      if (v22)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = v24;
    if (v24 != v23)
    {
      goto LABEL_19;
    }
  }

  (*(*v11 + 32))(v11);
  v12 = v22;
  if (v22)
  {
LABEL_22:
    dispatch_release(v12);
  }

LABEL_23:
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v13 = *(a1 + 144);
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_28:
    v15 = **(a1 + 112);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to create UART object", &v18, 2u);
      v14 = v30;
      if (v30 == &v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = v30;
      if (v30 == &v28)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_30;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  v13 = *(a1 + 144);
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_25:
  UART::startAsyncRead(v13);
  v14 = v30;
  if (v30 == &v28)
  {
LABEL_41:
    (*(*v14 + 32))(v14);
    v16 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      goto LABEL_34;
    }

LABEL_33:
    dispatch_release(v16);
    goto LABEL_34;
  }

LABEL_30:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v16 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E529FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

void sub_1E529FB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      UART::_Config::~_Config(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  UART::_Config::~_Config(&a27);
  _Unwind_Resume(a1);
}

void sub_1E529FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  UART::_Config::~_Config(va);
  UART::_Config::~_Config(va1);
  _Unwind_Resume(a1);
}

void sub_1E529FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(unsigned char *,long)>::operator=<std::function<void ()(unsigned char const*,long)> &,void>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2[3];
  if (!v3)
  {
    v11 = 0;
    v13 = 0;
    if (v12 != a1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v3 != a2)
  {
    v4 = (*(*v3 + 16))(v3);
    v11 = v4;
    v13 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v11 = v10;
  (*(*v3 + 24))(v3, v10);
  v4 = v11;
  v13 = 0;
  if (!v11)
  {
LABEL_9:
    v3 = 0;
    if (v12 != a1)
    {
      goto LABEL_13;
    }

LABEL_10:
    v5 = v3;
    goto LABEL_15;
  }

LABEL_4:
  v3 = operator new(0x28uLL);
  *v3 = &unk_1F5F00E38;
  if (v4 == v10)
  {
    v3[4] = v3 + 1;
    v6 = v3;
    (*(*v4 + 24))(v4);
    v3 = v6;
  }

  else
  {
    v3[4] = v4;
    v11 = 0;
  }

  v13 = v3;
  if (v12 == a1)
  {
    goto LABEL_10;
  }

LABEL_13:
  v5 = *(a1 + 24);
  if (v5 == a1)
  {
    (*(*v5 + 24))(*(a1 + 24), v12);
    (*(**(a1 + 24) + 32))(*(a1 + 24));
    *(a1 + 24) = v13;
    v13 = v12;
    v5 = v12;
  }

  else
  {
    v13 = *(a1 + 24);
    *(a1 + 24) = v3;
    if (v5 != v12)
    {
LABEL_15:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      v7 = v11;
      if (v11 != v10)
      {
        goto LABEL_18;
      }

LABEL_22:
      (*(*v7 + 32))(v7);
      goto LABEL_23;
    }
  }

  (*(*v5 + 32))(v5);
  v7 = v11;
  if (v11 == v10)
  {
    goto LABEL_22;
  }

LABEL_18:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

LABEL_23:
  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E529FEA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E529FEC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(unsigned char const*,long)>::~function(va);
  _Unwind_Resume(a1);
}

void DaleTransport_BootLogger_UART::stop_pl_log(uint64_t a1)
{
  *(a1 + 144) = 0;
  v1 = (a1 + 144);
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (!v2)
  {
    *v1 = 0;
    *(a1 + 152) = 0;
    return;
  }

  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(a1 + 152);
    *v1 = 0;
    *(a1 + 152) = 0;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 152);
    *v1 = 0;
    v1[1] = 0;
    if (!v3)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void DaleTransport_BootLogger_UART::start_rom_log(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v5;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  WORD2(v27) = 1;
  memset(&v26, 0, sizeof(v26));
  v30 = 0;
  v31 = 0xAAAAAAAAAAAA0000;
  LODWORD(v27) = 115200;
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v27 + 1) = v6;
  std::function<void ()(unsigned char *,long)>::operator=<std::function<void ()(unsigned char const*,long)> &,void>(&v28, a3);
  std::string::__assign_external(&v26, "/dev/tty.baseband-boot-logger", 0x1DuLL);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v26;
  }

  v20 = v27;
  v21 = WORD2(v27);
  v22 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    dispatch_retain(*(&v27 + 1));
  }

  v7 = v30;
  if (v30)
  {
    if (v30 == &v28)
    {
      v24 = v23;
      (*(*v30 + 24))();
      goto LABEL_13;
    }

    v7 = (*(*v30 + 16))();
  }

  v24 = v7;
LABEL_13:
  v25 = v31;
  std::allocate_shared[abi:ne200100]<UART,std::allocator<UART>,UART::_Config &,0>(&v19, &v18);
  v8 = v18;
  v18 = 0uLL;
  v9 = *(a1 + 152);
  *(a1 + 144) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v24;
    if (v24 != v23)
    {
LABEL_19:
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      v12 = v22;
      if (v22)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = v24;
    if (v24 != v23)
    {
      goto LABEL_19;
    }
  }

  (*(*v11 + 32))(v11);
  v12 = v22;
  if (v22)
  {
LABEL_22:
    dispatch_release(v12);
  }

LABEL_23:
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v13 = *(a1 + 144);
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_28:
    v15 = **(a1 + 112);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to create UART object", &v18, 2u);
      v14 = v30;
      if (v30 == &v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = v30;
      if (v30 == &v28)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_30;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  v13 = *(a1 + 144);
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_25:
  UART::startAsyncRead(v13);
  v14 = v30;
  if (v30 == &v28)
  {
LABEL_41:
    (*(*v14 + 32))(v14);
    v16 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      goto LABEL_34;
    }

LABEL_33:
    dispatch_release(v16);
    goto LABEL_34;
  }

LABEL_30:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v16 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E52A039C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

void sub_1E52A03B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      UART::_Config::~_Config(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  UART::_Config::~_Config(&a27);
  _Unwind_Resume(a1);
}

void sub_1E52A03F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  UART::_Config::~_Config(va);
  UART::_Config::~_Config(va1);
  _Unwind_Resume(a1);
}

void sub_1E52A0414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

void DaleTransport_BootLogger_UART::stop_rom_log(uint64_t a1)
{
  *(a1 + 144) = 0;
  v1 = (a1 + 144);
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (!v2)
  {
    *v1 = 0;
    *(a1 + 152) = 0;
    return;
  }

  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(a1 + 152);
    *v1 = 0;
    *(a1 + 152) = 0;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 152);
    *v1 = 0;
    v1[1] = 0;
    if (!v3)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void DaleTransport_BootLogger_UART::~DaleTransport_BootLogger_UART(DaleTransport_BootLogger_UART *this)
{
  *this = &unk_1F5F00DE0;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
}

{
  *this = &unk_1F5F00DE0;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
  }

  else
  {
    DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
  }

  operator delete(v2);
}

void *std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::~__func(void *a1)
{
  *a1 = &unk_1F5F00E38;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::~__func(char *__p)
{
  *__p = &unk_1F5F00E38;
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void *std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F5F00E38;
  v3 = v2 + 1;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 != a1 + 8)
  {
    v4 = (*(*v4 + 16))(v4, v3);
LABEL_4:
    v2[4] = v4;
    return v2;
  }

  v2[4] = v3;
  (*(*v4 + 24))(v4);
  return v2;
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F5F00E38;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v6 = *a3;
  v7 = v3;
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v7, &v6);
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E539178ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E539178ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539178ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539178ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<void ()(unsigned char const*,long)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUFileDataSource::~BBUFileDataSource(BBUFileDataSource *this)
{
  *this = &unk_1F5F00F28;
  v2 = *(this + 4);
  if (v2)
  {
    fclose(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5F00F28;
  v2 = *(this + 4);
  if (v2)
  {
    fclose(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  operator delete(v3);
}

uint64_t BBUFileDataSource::init(uint64_t a1, const char *a2, int a3)
{
  *(a1 + 44) = a3;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_8;
    }
  }

  if (gBBULogVerbosity >= 7)
  {
    v5 = (*(*a1 + 56))(a1);
    if (a2[23] >= 0)
    {
      LOBYTE(v9) = a2;
    }

    else
    {
      v9 = *a2;
    }

    _BBULog(15, 7, v5, "", "Opening %s\n", v6, v7, v8, v9);
  }

LABEL_8:
  if (a2[23] >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = fopen(v10, "r");
  *(a1 + 32) = v11;
  if (!v11)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v20 = (*(*a1 + 56))(a1);
    if (a2[23] >= 0)
    {
      LOBYTE(v24) = a2;
    }

    else
    {
      v24 = *a2;
    }

    _BBULog(15, 0, v20, "", "Failed to open file %s\n", v21, v22, v23, v24);
    return 35;
  }

  if (fseek(v11, 0, 2))
  {
    v12 = *__error();
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
LABEL_15:
      if (gBBULogVerbosity < 0)
      {
        return result;
      }

      v14 = (*(*a1 + 56))(a1);
      v15 = strerror(v12);
      v19 = "Failed to seek, err = %s (%u)\n";
      goto LABEL_17;
    }

    return result;
  }

  v25 = MEMORY[0x1E69279A0](*(a1 + 32));
  if ((v25 & 0x8000000000000000) == 0)
  {
    *(a1 + 40) = v25;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_30:
        if (gBBULogVerbosity >= 7)
        {
          v26 = (*(*a1 + 56))(a1);
          _BBULog(15, 7, v26, "", "File size is %u\n", v27, v28, v29, *(a1 + 40));
        }
      }
    }

    if (!fseek(*(a1 + 32), 0, 0))
    {
      if ((a1 + 8) != a2)
      {
        v32 = a2[23];
        if (*(a1 + 31) < 0)
        {
          if (v32 >= 0)
          {
            v34 = a2;
          }

          else
          {
            v34 = *a2;
          }

          if (v32 >= 0)
          {
            v35 = *(a2 + 23);
          }

          else
          {
            v35 = *(a2 + 1);
          }

          std::string::__assign_no_alias<false>((a1 + 8), v34, v35);
        }

        else
        {
          if ((a2[23] & 0x80) == 0)
          {
            result = 0;
            v33 = *a2;
            *(a1 + 24) = *(a2 + 2);
            *(a1 + 8) = v33;
            return result;
          }

          std::string::__assign_no_alias<true>((a1 + 8), *a2, *(a2 + 1));
        }
      }

      return 0;
    }

    v30 = *__error();
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v14 = (*(*a1 + 56))(a1);
    v15 = strerror(v30);
    v19 = "Failed to re-seek, err = %s (%u)\n";
LABEL_17:
    _BBULog(15, 0, v14, "", v19, v16, v17, v18, v15);
    return 35;
  }

  v31 = *__error();
  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v14 = (*(*a1 + 56))(a1);
    v15 = strerror(v31);
    v19 = "Failed to tell, err = %s (%u)\n";
    goto LABEL_17;
  }

  return result;
}

uint64_t BBUFileDataSource::copyData(FILE **this, unsigned __int8 *a2, int a3, unsigned int *a4, unsigned int a5)
{
  LODWORD(v7) = a3;
  if (((*this)->_bf._base)(this) < a5)
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  v11 = ((*this)->_bf._base)(this) - a5;
  if (v11 >= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = v11;
  }

  if (fseek(this[4], a5, 0))
  {
    v12 = *__error();
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v13 = ((*this)->_close)(this);
      strerror(v12);
      _BBULog(15, 0, v13, "", "Failed to seek to %u, err = %s (%u)\n", v14, v15, v16, a5);
      return 35;
    }
  }

  else
  {
    v17 = fread(a2, 1uLL, v7, this[4]);
    *a4 = v17;
    if (v7 <= v17)
    {
      return 0;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v18 = ((*this)->_close)(this);
      _BBULog(15, 0, v18, "", "Read only %u of %u bytes\n", v19, v20, v21, *a4);
      return 35;
    }
  }

  return result;
}

void *BBUFileDataSource::getNameAsString@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 31);
  if (v3 >= 0)
  {
    v4 = *(this + 31);
  }

  else
  {
    v4 = this[2];
  }

  v5 = v4 + 5;
  if (v4 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = this;
  if (v5 < 0x17)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 23) = v5;
    *(a2 + 4) = 32;
    v9 = (a2 + 5);
    *a2 = 1701603654;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v5 | 7) + 1;
    }

    v8 = operator new(v7);
    *(a2 + 8) = v5;
    *(a2 + 16) = v7 | 0x8000000000000000;
    *a2 = v8;
    *v8 = 1701603654;
    v9 = v8 + 5;
    v8[4] = 32;
  }

  if (v3 >= 0)
  {
    v10 = (v6 + 8);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  this = memmove(v9, v10, v4);
LABEL_15:
  *(v9 + v4) = 0;
  return this;
}

BOOL BBUEUR20HashData::compare(BBUEUR20HashData *this, BBUFeedback *a2, char **lpsrc)
{
  v4 = this;
  if (lpsrc)
  {
    v5 = **lpsrc;
    v6 = this;
    if (this)
    {
      this = BBUHashData::compareHash(v4, a2, v4 + 8, this + 8, "SBL1");
      if (this)
      {
        v7 = BBUHashData::compareHash(v4, a2, v4 + 56, v6 + 56, "ACDB");
        v8 = v7;
        if (!capabilities::updater::supportsBbcfgImage(v7))
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = 0;
  if (!capabilities::updater::supportsBbcfgImage(this))
  {
LABEL_5:
    if (v8)
    {
      goto LABEL_11;
    }

    return 0;
  }

LABEL_9:
  if (!v8 || !BBUHashData::compareHash(v4, a2, v4 + 104, v6 + 104, "BBCFG"))
  {
    return 0;
  }

LABEL_11:

  return BBUHashData::compareHash(v4, a2, v4 + 152, v6 + 152, "OEMMisc");
}

void BBUEUR20HashData::showHashes(BBUEUR20HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "SBL1_HASH", &__p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "ACDB_HASH", p_p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v9 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "BBCFG_HASH", v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v9 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "OEMMisc_HASH", v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52A19CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BasebandUpdater::BasebandUpdater(BasebandUpdater *this, const void *a2, const __CFDictionary *a3)
{
  *this = &unk_1F5F00FE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  capabilities::radio::vendor(this);
  BasebandRestore::create(a3, &v8);
  v5 = v8;
  v8 = 0uLL;
  v6 = *(this + 3);
  *(this + 1) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void BasebandUpdater::~BasebandUpdater(BasebandUpdater *this)
{
  *this = &unk_1F5F00FE0;
  v1 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = this;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      this = v2;
    }

    v3 = *(this + 3);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

{
  *this = &unk_1F5F00FE0;
  v1 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = this;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    this = v4;
  }

  else
  {
LABEL_6:
  }

  operator delete(this);
}

BOOL BBUEUR25HashData::compare(BBUEUR25HashData *this, BBUFeedback *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v5 = **lpsrc;
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!BBUHashData::compareHash(this, a2, this + 8, v6 + 8, "XBLsc") || !BBUHashData::compareHash(this, a2, this + 56, v7 + 56, "ACDB") || !BBUHashData::compareHash(this, a2, this + 104, v7 + 104, "BBCFG"))
  {
    return 0;
  }

  return BBUHashData::compareHash(this, a2, this + 152, v7 + 152, "OEMMisc");
}

void BBUEUR25HashData::showHashes(BBUEUR25HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "XBLsc_HASH", &__p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "ACDB_HASH", p_p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "BBCFG_HASH", v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "OEMMisc_HASH", v6);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "SignedFirmwareSOCView_HASH", v7);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52A2154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR20UpdateSource::BBUEUR20UpdateSource(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F5F03CB8;
  *(a1 + 8) = a3;
  *(a1 + 64) = a2;
  v7 = operator new(0x20uLL);
  *v7 = &unk_1F5F011C0;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = a2;
  *(a1 + 72) = v7;
  *(a1 + 103) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *a1 = &unk_1F5F01088;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  v8 = operator new(0x18uLL);
  *(a1 + 240) = v8 + 3;
  *(a1 + 248) = v8 + 3;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(a1 + 232) = v8;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = a4;
  return a1;
}

void sub_1E52A22B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<BBUZipFile>::~unique_ptr[abi:ne200100](va);
  BBUUpdateSource::~BBUUpdateSource(v2);
  _Unwind_Resume(a1);
}

void BBUEURUpdateSource::~BBUEURUpdateSource(void **this)
{
  *this = &unk_1F5F03CB8;
  if (*(this + 103) < 0)
  {
    v1 = this;
    operator delete(this[10]);
    this = v1;
  }

  v2 = this[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = this;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    this = v3;
  }

  BBUUpdateSource::~BBUUpdateSource(this);
}

uint64_t BBUEUR20UpdateSource::BBUEUR20UpdateSource(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F5F03CB8;
  *(a1 + 8) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v6;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *a1 = &unk_1F5F01088;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  v7 = operator new(0x18uLL);
  *(a1 + 240) = v7 + 3;
  *(a1 + 248) = v7 + 3;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  *(a1 + 232) = v7;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = a4;
  return a1;
}

void sub_1E52A24A8(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  BBUUpdateSource::~BBUUpdateSource(v1);
  _Unwind_Resume(a1);
}

void BBUEUR20UpdateSource::~BBUEUR20UpdateSource(BBUEUR20UpdateSource *this)
{
  *this = &unk_1F5F01088;
  v2 = *(this + 50);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 25);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 22);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 32);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 33);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 34);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 35);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 36);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 37);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 38);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 39);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 40);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 29);
  v22 = *(this + 30);
  while (v21 != v22)
  {
    if (*v21)
    {
      (*(**v21 + 8))(*v21);
    }

    ++v21;
  }

  v23 = *(this + 19);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 41);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 42);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 43);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 44);
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 45);
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(this + 46);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 47);
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 48);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(this + 49);
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 29);
  if (v33)
  {
    *(this + 30) = v33;
    operator delete(v33);
  }

  *this = &unk_1F5F03CB8;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v34 = *(this + 9);
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    v35 = this;
  }

  else
  {
    v35 = this;
  }

  BBUUpdateSource::~BBUUpdateSource(v35);
}

{
  BBUEUR20UpdateSource::~BBUEUR20UpdateSource(this);

  operator delete(v1);
}

CFMutableDictionaryRef BBUEUR20UpdateSource::copyBasebandMigrationData(BBUEUR20UpdateSource *this, BBUFeedback *a2)
{
  memset(&v78, 170, sizeof(v78));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v3 = off_1ED944170;
  if (!off_1ED944170)
  {
    v4 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v4);
    *&v79.st_dev = v4;
    v5 = operator new(0x20uLL);
    *v5 = &unk_1F5F05A00;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
    v6 = off_1ED944178;
    off_1ED944170 = v4;
    off_1ED944178 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_1ED944170;
  }

  v7 = off_1ED944178;
  *&v69 = v3;
  *(&v69 + 1) = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v3, &v78);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v78;
    }

    else
    {
      v15 = v78.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_29:
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v9, v10, v11, v12, v13, v14, 0);
    goto LABEL_30;
  }

  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v78;
  }

  else
  {
    v15 = v78.__r_.__value_.__r.__words[0];
  }

  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_14:
  if (bbufs::prepareDestination(v15, v8))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v77 = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v76[7] = v23;
    v76[8] = v23;
    v76[5] = v23;
    v76[6] = v23;
    v76[3] = v23;
    v76[4] = v23;
    v76[1] = v23;
    v76[2] = v23;
    v75 = v23;
    v76[0] = v23;
    *v73 = v23;
    v74 = v23;
    v71 = v23;
    v72 = v23;
    v69 = v23;
    v70 = v23;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v69);
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v78;
    }

    else
    {
      v24 = v78.__r_.__value_.__r.__words[0];
    }

    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v78.__r_.__value_.__l.__size_;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v24, size);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "efs", 3);
    v28 = MEMORY[0x1E69270E0](v27, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ".bin", 4);
    if ((BYTE8(v75) & 0x10) != 0)
    {
      v32 = v75;
      if (v75 < *(&v72 + 1))
      {
        *&v75 = *(&v72 + 1);
        v32 = *(&v72 + 1);
      }

      v33 = v72;
      v29 = v32 - v72;
      if ((v32 - v72) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if ((BYTE8(v75) & 8) == 0)
      {
        v29 = 0;
        HIBYTE(v68) = 0;
        v30 = __dst;
        goto LABEL_44;
      }

      v33 = *(&v70 + 1);
      v29 = *(&v71 + 1) - *(&v70 + 1);
      if (*(&v71 + 1) - *(&v70 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_63:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v29 >= 0x17)
    {
      if ((v29 | 7) == 0x17)
      {
        v34 = 25;
      }

      else
      {
        v34 = (v29 | 7) + 1;
      }

      v30 = operator new(v34);
      __dst[1] = v29;
      v68 = v34 | 0x8000000000000000;
      __dst[0] = v30;
    }

    else
    {
      HIBYTE(v68) = v29;
      v30 = __dst;
      if (!v29)
      {
LABEL_44:
        *(v30 + v29) = 0;
        v35.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v35.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v79.st_blksize = v35;
        *v79.st_qspare = v35;
        v79.st_birthtimespec = v35;
        *&v79.st_size = v35;
        v79.st_mtimespec = v35;
        v79.st_ctimespec = v35;
        *&v79.st_uid = v35;
        v79.st_atimespec = v35;
        *&v79.st_dev = v35;
        if (v68 >= 0)
        {
          v36 = __dst;
        }

        else
        {
          v36 = __dst[0];
        }

        v37 = stat(v36, &v79);
        if (SHIBYTE(v68) < 0)
        {
          v40 = v37;
          operator delete(__dst[0]);
          if (v40)
          {
LABEL_49:
            if ((BYTE8(v75) & 0x10) != 0)
            {
              v43 = v75;
              if (v75 < *(&v72 + 1))
              {
                *&v75 = *(&v72 + 1);
                v43 = *(&v72 + 1);
              }

              v44 = v72;
              v38 = v43 - v72;
              if ((v43 - v72) > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_81;
              }
            }

            else
            {
              if ((BYTE8(v75) & 8) == 0)
              {
                v38 = 0;
                HIBYTE(v79.st_gid) = 0;
                v39 = &v79;
                goto LABEL_69;
              }

              v44 = *(&v70 + 1);
              v38 = *(&v71 + 1) - *(&v70 + 1);
              if (*(&v71 + 1) - *(&v70 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
              {
LABEL_81:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            if (v38 >= 0x17)
            {
              if ((v38 | 7) == 0x17)
              {
                v45 = 25;
              }

              else
              {
                v45 = (v38 | 7) + 1;
              }

              v39 = operator new(v45);
              v79.st_ino = v38;
              *&v79.st_uid = v45 | 0x8000000000000000;
              *&v79.st_dev = v39;
            }

            else
            {
              HIBYTE(v79.st_gid) = v38;
              v39 = &v79;
              if (!v38)
              {
                goto LABEL_69;
              }
            }

            memmove(v39, v44, v38);
LABEL_69:
            *(v39 + v38) = 0;
            v46 = &v79;
            if ((v79.st_gid & 0x80000000) != 0)
            {
              v46 = *&v79.st_dev;
            }

            BBUFeedback::handleComment(this, "Failed to locate %s while copying baseband migration data\n", v46);
LABEL_72:
            if (SHIBYTE(v79.st_gid) < 0)
            {
              operator delete(*&v79.st_dev);
            }

            goto LABEL_121;
          }
        }

        else if (v37)
        {
          goto LABEL_49;
        }

        if ((BYTE8(v75) & 0x10) != 0)
        {
          v47 = v75;
          if (v75 < *(&v72 + 1))
          {
            *&v75 = *(&v72 + 1);
            v47 = *(&v72 + 1);
          }

          v48 = v72;
          v41 = v47 - v72;
          if ((v47 - v72) > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_102;
          }
        }

        else
        {
          if ((BYTE8(v75) & 8) == 0)
          {
            v41 = 0;
            HIBYTE(v79.st_gid) = 0;
            v42 = &v79;
            goto LABEL_87;
          }

          v48 = *(&v70 + 1);
          v41 = *(&v71 + 1) - *(&v70 + 1);
          if (*(&v71 + 1) - *(&v70 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
          {
LABEL_102:
            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        if (v41 >= 0x17)
        {
          if ((v41 | 7) == 0x17)
          {
            v49 = 25;
          }

          else
          {
            v49 = (v41 | 7) + 1;
          }

          v42 = operator new(v49);
          v79.st_ino = v41;
          *&v79.st_uid = v49 | 0x8000000000000000;
          *&v79.st_dev = v42;
        }

        else
        {
          HIBYTE(v79.st_gid) = v41;
          v42 = &v79;
          if (!v41)
          {
LABEL_87:
            v42[v41] = 0;
            v50 = operator new(0x30uLL);
            *v50 = &unk_1F5F00F28;
            *(v50 + 8) = 0u;
            *(v50 + 24) = 0u;
            if (BBUFileDataSource::init(v50, &v79, 0))
            {
              (*(*v50 + 8))(v50);
              v50 = 0;
            }

            if (SHIBYTE(v79.st_gid) < 0)
            {
              operator delete(*&v79.st_dev);
            }

            if (v50)
            {
              if ((BYTE8(v75) & 0x10) != 0)
              {
                v55 = v75;
                if (v75 < *(&v72 + 1))
                {
                  *&v75 = *(&v72 + 1);
                  v55 = *(&v72 + 1);
                }

                v56 = &v72;
              }

              else
              {
                if ((BYTE8(v75) & 8) == 0)
                {
                  v51 = 0;
                  HIBYTE(v66) = 0;
                  v52 = __p;
                  goto LABEL_116;
                }

                v56 = &v70 + 1;
                v55 = *(&v71 + 1);
              }

              v59 = *v56;
              v51 = v55 - *v56;
              if (v51 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v51 >= 0x17)
              {
                if ((v51 | 7) == 0x17)
                {
                  v60 = 25;
                }

                else
                {
                  v60 = (v51 | 7) + 1;
                }

                v52 = operator new(v60);
                __p[1] = v51;
                v66 = v60 | 0x8000000000000000;
                __p[0] = v52;
              }

              else
              {
                HIBYTE(v66) = v55 - *v56;
                v52 = __p;
                if (!v51)
                {
                  goto LABEL_116;
                }
              }

              memmove(v52, v59, v51);
LABEL_116:
              *(v52 + v51) = 0;
              BBUDataSource::createData(v50, &v79);
              ctu::cf::insert<std::string,__CFData const*>(Mutable, __p, *&v79.st_dev);
              if (*&v79.st_dev)
              {
                CFRelease(*&v79.st_dev);
              }

              if (SHIBYTE(v66) < 0)
              {
                operator delete(__p[0]);
              }

              (*(*v50 + 8))(v50);
LABEL_121:
              *&v69 = *MEMORY[0x1E69E54E8];
              *(&v69 + *(v69 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
              *(&v69 + 1) = MEMORY[0x1E69E5548] + 16;
              if (SHIBYTE(v74) < 0)
              {
                operator delete(v73[1]);
              }

              *(&v69 + 1) = MEMORY[0x1E69E5538] + 16;
              std::locale::~locale(&v70);
              std::ostream::~ostream();
              MEMORY[0x1E69273B0](v76);
              if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_31;
              }

              return Mutable;
            }

            if ((BYTE8(v75) & 0x10) != 0)
            {
              v57 = v75;
              if (v75 < *(&v72 + 1))
              {
                *&v75 = *(&v72 + 1);
                v57 = *(&v72 + 1);
              }

              v58 = &v72;
            }

            else
            {
              if ((BYTE8(v75) & 8) == 0)
              {
                v53 = 0;
                HIBYTE(v79.st_gid) = 0;
                v54 = &v79;
                goto LABEL_135;
              }

              v58 = &v70 + 1;
              v57 = *(&v71 + 1);
            }

            v61 = *v58;
            v53 = v57 - *v58;
            if (v53 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v53 >= 0x17)
            {
              if ((v53 | 7) == 0x17)
              {
                v62 = 25;
              }

              else
              {
                v62 = (v53 | 7) + 1;
              }

              v54 = operator new(v62);
              v79.st_ino = v53;
              *&v79.st_uid = v62 | 0x8000000000000000;
              *&v79.st_dev = v54;
            }

            else
            {
              HIBYTE(v79.st_gid) = v57 - *v58;
              v54 = &v79;
              if (!v53)
              {
                goto LABEL_135;
              }
            }

            memmove(v54, v61, v53);
LABEL_135:
            *(v54 + v53) = 0;
            v63 = &v79;
            if ((v79.st_gid & 0x80000000) != 0)
            {
              v63 = *&v79.st_dev;
            }

            BBUFeedback::handleComment(this, "Failed generating data source for %s while copying baseband migration data\n", v63);
            goto LABEL_72;
          }
        }

        memmove(v42, v48, v41);
        goto LABEL_87;
      }
    }

    memmove(v30, v33, v29);
    goto LABEL_44;
  }

  _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v16, v17, v18, v19, v20, v21, v64);
LABEL_30:
  BBUFeedback::handleComment(this, "Failed preparing baseband filesystem directory for copying baseband migration data\n");
  Mutable = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_31:
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  return Mutable;
}

void sub_1E52A3450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (*(v23 - 201) < 0)
  {
    operator delete(*(v23 - 224));
  }

  std::ostringstream::~ostringstream(&a23);
  if (*(v23 - 225) < 0)
  {
    operator delete(*(v23 - 248));
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<std::string,__CFData const*>(uint64_t a1, uint64_t a2, const void *a3)
{
  ctu::cf::convert_copy();
  if (a3)
  {
    CFRetain(a3);
    CFRelease(a3);
  }

  return 0;
}

void sub_1E52A35E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR20UpdateSource::restoreBasebandMigrationData(BBUEUR20UpdateSource *this, BBUFeedback *a2, const __CFDictionary *a3)
{
  memset(&__p, 170, sizeof(__p));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v5 = off_1ED944170;
  if (!off_1ED944170)
  {
    v6 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v6);
    context.__r_.__value_.__r.__words[0] = v6;
    v7 = operator new(0x20uLL);
    *v7 = &unk_1F5F05A00;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    v8 = off_1ED944178;
    off_1ED944170 = v6;
    off_1ED944178 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_1ED944170;
  }

  v9 = off_1ED944178;
  *v47 = v5;
  *&v47[8] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v5, &__p);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (p_p)
    {
      goto LABEL_14;
    }

LABEL_21:
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v11, v12, v13, v14, v15, v16, 0);
    goto LABEL_22;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!p_p)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (bbufs::prepareDestination(p_p, v10))
  {
    v24 = 1;
    goto LABEL_23;
  }

  _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v18, v19, v20, v21, v22, v23, v44);
LABEL_22:
  BBUFeedback::handleComment(this, "Failed preparing baseband filesystem directory for copying baseband migration data");
  v24 = 0;
LABEL_23:
  *(&v48 + 1) = 0;
  v49 = 0;
  *&v48 = &v48 + 8;
  *&v47[8] = 0uLL;
  *v47 = &v47[8];
  context.__r_.__value_.__r.__words[0] = v47;
  context.__r_.__value_.__l.__size_ = &v47[8];
  if (!a2)
  {
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(v47, 0);
    v30 = v48;
    if (v48 == (&v48 + 8))
    {
      goto LABEL_81;
    }

    goto LABEL_31;
  }

  CFDictionaryApplyFunction(a2, ctu::cf::_Applier_InsertMapDefault<std::string,__CFData const*,std::insert_iterator<std::map<std::string,__CFData const*>>>, &context);
  v25 = v48;
  v48 = *v47;
  *v47 = v25;
  v26 = v49;
  v49 = *&v47[16];
  *&v47[16] = v26;
  v27 = &v48;
  if (v49)
  {
    v27 = (*(&v48 + 1) + 16);
  }

  *v27 = &v48 + 8;
  v28 = v26 == 0;
  v29 = v47;
  if (!v28)
  {
    v29 = (*(&v25 + 1) + 16);
  }

  *v29 = &v47[8];
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(v47, *(&v25 + 1));
  v30 = v48;
  if (v48 != (&v48 + 8))
  {
LABEL_31:
    v31 = *MEMORY[0x1E695E480];
    do
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v47 = v32;
      *&v47[16] = v32;
      if (*(v30 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v47, *(v30 + 4), *(v30 + 5));
      }

      else
      {
        *v47 = v30[2];
        *&v47[16] = *(v30 + 6);
      }

      *&v47[24] = *(v30 + 7);
      if ((v47[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v45, *v47, *&v47[8]);
      }

      else
      {
        v45 = *v47;
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v52, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
      }

      else
      {
        v52 = v45;
      }

      v51 = 0;
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&context, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        context = v52;
      }

      v54 = 0;
      if (ctu::cf::convert_copy())
      {
        v33 = v54;
      }

      else
      {
        v33 = 0;
      }

      if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(context.__r_.__value_.__l.__data_);
        v46 = v33;
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_65:
          operator delete(v52.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v46 = v33;
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_65;
        }
      }

      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

LABEL_66:
      operator delete(v45.__r_.__value_.__l.__data_);
LABEL_51:
      v34 = CFURLCreateWithFileSystemPath(v31, v33, kCFURLPOSIXPathStyle, 0);
      if (!v34)
      {
        if (v47[23] >= 0)
        {
          v35 = v47;
        }

        else
        {
          v35 = *v47;
        }

        BBUFeedback::handleComment(this, "Failed creating CFURLRef for %s while restoring baseband migration data", v35);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (v34)
      {
        context.__r_.__value_.__r.__words[0] = v34;
        v52.__r_.__value_.__r.__words[0] = 0;
        v36 = CFWriteStreamCreateWithFile(0, v34);
        v37 = v36;
        v52.__r_.__value_.__r.__words[0] = v36;
        if (v36)
        {
          if (CFWriteStreamOpen(v36))
          {
            BytePtr = CFDataGetBytePtr(*&v47[24]);
            Length = CFDataGetLength(*&v47[24]);
            v40 = CFWriteStreamWrite(v37, BytePtr, Length);
            if (v40 <= 0)
            {
              BBUFeedback::handleComment(this, "Failed writing to stream for restoring baseband migration data");
            }

            CFWriteStreamClose(v37);
            v24 = v24 & (v40 > 0);
          }

          else
          {
            BBUFeedback::handleComment(this, "Failed opening stream for restoring baseband migration data");
            v24 = 0;
          }

          CFRelease(v37);
        }

        else
        {
          BBUFeedback::handleComment(this, "Failed creating CFWriteStremRef for restoring baseband migration data");
          v24 = 0;
        }

        CFRelease(v34);
      }

      else
      {
        v24 = 0;
      }

      if ((v47[23] & 0x80000000) != 0)
      {
        operator delete(*v47);
        v41 = *(v30 + 1);
        if (v41)
        {
          do
          {
LABEL_76:
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
          goto LABEL_32;
        }
      }

      else
      {
        v41 = *(v30 + 1);
        if (v41)
        {
          goto LABEL_76;
        }
      }

      do
      {
        v42 = *(v30 + 2);
        v28 = *v42 == v30;
        v30 = v42;
      }

      while (!v28);
LABEL_32:
      v30 = v42;
    }

    while (v42 != (&v48 + 8));
  }

LABEL_81:
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&v48, *(&v48 + 1));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_1E52A3BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v41 - 128));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E52A3D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a14);
  if ((a20 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E52A3CF8);
  }

  JUMPOUT(0x1E52A3CF0);
}

void BBUEUR20UpdateSource::init(BBUEUR20UpdateSource *this)
{
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    v335.__r_.__value_.__r.__words[0] = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  v336.__r_.__value_.__r.__words[0] = v2;
  v336.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v2, &__p);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if (p_p)
  {
    if ((bbufs::prepareDestination(p_p, v7) & 1) == 0)
    {
      _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v15, v16, v17, v18, v19, v20, v331);
    }
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v8, v9, v10, v11, v12, v13, 0);
  }

  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
LABEL_20:
    v21 = *(this + 103);
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (*(this + 11))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  v21 = *(this + 103);
  if (v21 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v21)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x109u, "Assertion failure(( !fFirmwareFolder.empty() || fZipFile) && Firmware data source error!)", v324, v325, v326, v331);
LABEL_498:
  }

LABEL_26:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "restoresbl1.mbn");
  v22 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v31 = v22;
    operator delete(*&__p.st_dev);
    if (v31)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_41;
    }

    v25 = (**this)(this);
    v29 = "File not present: %s\n";
    v331 = "restoresbl1.mbn";
    v30 = 1;
    goto LABEL_40;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (*(this + 20))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x10Eu, "Assertion failure(fRestoreSBLImage == __null)", v318, v319, v320, v331);
    goto LABEL_498;
  }

  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "restoresbl1.mbn");
  DataSource = BBUEURUpdateSource::createDataSource(this, &__p, 704643072);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v24 = operator new(0x58uLL);
  BBUEURMIImage::BBUEURMIImage(v24, DataSource, 0);
  *v24 = &unk_1F5F01210;
  *(v24 + 10) = 0;
  *(v24 + 74) = 0;
  *(v24 + 36) = 19522;
  *(v24 + 8) = *"restoreSBL";
  v24[87] = 10;
  *(this + 20) = v24;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_33:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_41;
    }

    v25 = (**this)(this);
    v29 = "Loaded restoreSBL1\n";
    v30 = 0;
LABEL_40:
    _BBULog(3, v30, v25, "", v29, v26, v27, v28, v331);
  }

LABEL_41:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "sbl1.mbn");
  v32 = BBUEURUpdateSource::containsFile(this, &__p);
  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    if (v32)
    {
      goto LABEL_43;
    }

LABEL_51:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_56;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_56;
    }

    v35 = (**this)(this);
    v39 = "File not present: %s\n";
    v331 = "sbl1.mbn";
    v40 = 1;
    v41 = 1;
    goto LABEL_55;
  }

  v42 = v32;
  operator delete(*&__p.st_dev);
  if (!v42)
  {
    goto LABEL_51;
  }

LABEL_43:
  if (*(this + 21))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x11Du, "Assertion failure(fSBLImage == __null)", v321, v322, v323, v331);
    goto LABEL_498;
  }

  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "sbl1.mbn");
  v33 = BBUEURUpdateSource::createDataSource(this, &__p, 704643072);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v34 = operator new(0x58uLL);
  BBUEURMIImage::BBUEURMIImage(v34, v33, 0);
  *v34 = &unk_1F5F01210;
  *(v34 + 75) = 0;
  *(v34 + 67) = 0;
  *(v34 + 83) = 0;
  *(v34 + 32) = 16979;
  v34[66] = 76;
  v34[87] = 3;
  *(this + 21) = v34;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_48;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_48:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_56;
    }

    v35 = (**this)(this);
    v39 = "Loaded SBL1\n";
    v40 = 3;
    v41 = 0;
LABEL_55:
    _BBULog(v40, v41, v35, "", v39, v36, v37, v38, v331);
  }

LABEL_56:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v43 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v53 = v43;
    operator delete(*&__p.st_dev);
    if (v53)
    {
      goto LABEL_58;
    }

LABEL_65:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_70;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_70;
    }

    v47 = (**this)(this);
    v51 = "File not present: %s\n";
    v331 = "apps.mbn";
    v52 = 1;
    goto LABEL_69;
  }

  if (!v43)
  {
    goto LABEL_65;
  }

LABEL_58:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v44 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v45 = operator new(0x20uLL);
  *v45 = &unk_1F5F014B0;
  v45[1] = v44;
  v45[2] = 0;
  *(v45 + 6) = 0;
  v46 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v46, v44, 0);
  v45[2] = v46;
  *v45 = &unk_1F5F00210;
  *(this + 26) = v45;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_62;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_62:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_70;
    }

    v47 = (**this)(this);
    v51 = "Loaded APPS\n";
    v52 = 0;
LABEL_69:
    _BBULog(3, v52, v47, "", v51, v48, v49, v50, v331);
  }

LABEL_70:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v54 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v64 = v54;
    operator delete(*&__p.st_dev);
    if (v64)
    {
      goto LABEL_72;
    }

LABEL_79:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_84;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_84;
    }

    v58 = (**this)(this);
    v62 = "File not present: %s\n";
    v331 = "qdsp6sw.mbn";
    v63 = 1;
    goto LABEL_83;
  }

  if (!v54)
  {
    goto LABEL_79;
  }

LABEL_72:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v55 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v56 = operator new(0x20uLL);
  *v56 = &unk_1F5F014B0;
  v56[1] = v55;
  v56[2] = 0;
  *(v56 + 6) = 0;
  v57 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v57, v55, 0);
  v56[2] = v57;
  *v56 = &unk_1F5F00280;
  *(this + 27) = v56;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_76:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_84;
    }

    v58 = (**this)(this);
    v62 = "Loaded QDSP6SW\n";
    v63 = 0;
LABEL_83:
    _BBULog(3, v63, v58, "", v62, v59, v60, v61, v331);
  }

LABEL_84:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v65 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v75 = v65;
    operator delete(*&__p.st_dev);
    if (v75)
    {
      goto LABEL_86;
    }

LABEL_93:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_98;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v69 = (**this)(this);
      v73 = "File not present: %s\n";
      v331 = "tz.mbn";
      v74 = 1;
      goto LABEL_97;
    }

    goto LABEL_98;
  }

  if (!v65)
  {
    goto LABEL_93;
  }

LABEL_86:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v66 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v67 = operator new(0x20uLL);
  *v67 = &unk_1F5F014B0;
  v67[1] = v66;
  v67[2] = 0;
  *(v67 + 6) = 0;
  v68 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v68, v66, 0);
  v67[2] = v68;
  *v67 = &unk_1F5F002F0;
  *(this + 28) = v67;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_98;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_98;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v69 = (**this)(this);
    v73 = "Loaded TZ\n";
    v74 = 0;
LABEL_97:
    _BBULog(3, v74, v69, "", v73, v70, v71, v72, v331);
  }

LABEL_98:
  memset(&v336, 170, sizeof(v336));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v76 = off_1ED944170;
  if (!off_1ED944170)
  {
    v77 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v77);
    v335.__r_.__value_.__r.__words[0] = v77;
    v78 = operator new(0x20uLL);
    *v78 = &unk_1F5F05A00;
    v78[1] = 0;
    v78[2] = 0;
    v78[3] = v77;
    v79 = off_1ED944178;
    off_1ED944170 = v77;
    off_1ED944178 = v78;
    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v79->__on_zero_shared)(v79);
      std::__shared_weak_count::__release_weak(v79);
    }

    v76 = off_1ED944170;
  }

  v80 = off_1ED944178;
  *&__p.st_dev = v76;
  __p.st_ino = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v76, &v336);
  if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v80->__on_zero_shared)(v80);
    std::__shared_weak_count::__release_weak(v80);
  }

  for (i = 0; i != 3; ++i)
  {
    memset(&__p, 170, 24);
    v82 = SHIBYTE(v336.__r_.__value_.__r.__words[2]);
    if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v336.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v336.__r_.__value_.__l.__size_;
    }

    v84 = size + 3;
    if (size + 3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v85 = this;
    if (v84 < 0x17)
    {
      memset(&v334, 0, sizeof(v334));
      v87 = &v334;
      *(&v334.__r_.__value_.__s + 23) = size + 3;
      if (!size)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if ((v84 | 7) == 0x17)
      {
        v86 = 25;
      }

      else
      {
        v86 = (v84 | 7) + 1;
      }

      v87 = operator new(v86);
      v334.__r_.__value_.__l.__size_ = size + 3;
      v334.__r_.__value_.__r.__words[2] = v86 | 0x8000000000000000;
      v334.__r_.__value_.__r.__words[0] = v87;
    }

    if (v82 >= 0)
    {
      v88 = &v336;
    }

    else
    {
      v88 = v336.__r_.__value_.__r.__words[0];
    }

    memmove(v87, v88, size);
LABEL_124:
    v89 = &unk_1ED949000;
    *&v87[size] = 7562853;
    std::to_string(&v333, i + 1);
    if ((v333.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = &v333;
    }

    else
    {
      v90 = v333.__r_.__value_.__r.__words[0];
    }

    if ((v333.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(v333.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = v333.__r_.__value_.__l.__size_;
    }

    v92 = std::string::append(&v334, v90, v91);
    this = v85;
    v93 = *&v92->__r_.__value_.__l.__data_;
    v335.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v335.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    v94 = SHIBYTE(v335.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v335.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v335.__r_.__value_.__r.__words[2]) - 19) < 4)
      {
        v95 = SHIBYTE(v335.__r_.__value_.__r.__words[2]) + 4;
        v96 = &v335;
        v97 = 22;
LABEL_136:
        v98 = 2 * v97;
        if (v95 > 2 * v97)
        {
          v98 = v95;
        }

        if ((v98 | 7) == 0x17)
        {
          v99 = 25;
        }

        else
        {
          v99 = (v98 | 7) + 1;
        }

        if (v98 >= 0x17)
        {
          v100 = v99;
        }

        else
        {
          v100 = 23;
        }

        v101 = v97 == 22;
        goto LABEL_145;
      }

      v105 = &v335;
      *(&v335.__r_.__value_.__l.__data_ + SHIBYTE(v335.__r_.__value_.__r.__words[2])) = 1852400174;
      v106 = v94 + 4;
      if ((SHIBYTE(v335.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_153;
    }

    v94 = v335.__r_.__value_.__l.__size_;
    v97 = (v335.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v97 - v335.__r_.__value_.__l.__size_ >= 4)
    {
      v105 = v335.__r_.__value_.__r.__words[0];
      *(v335.__r_.__value_.__r.__words[0] + v335.__r_.__value_.__l.__size_) = 1852400174;
      v106 = v94 + 4;
      if ((SHIBYTE(v335.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_151:
        *(&v335.__r_.__value_.__s + 23) = v106 & 0x7F;
LABEL_154:
        v104 = v105 + v106;
        goto LABEL_155;
      }

LABEL_153:
      v335.__r_.__value_.__l.__size_ = v106;
      goto LABEL_154;
    }

    v95 = v335.__r_.__value_.__l.__size_ + 4;
    if (0x7FFFFFFFFFFFFFF7 - (v335.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v335.__r_.__value_.__l.__size_ + 4 - v97)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v96 = v335.__r_.__value_.__r.__words[0];
    if (v97 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_136;
    }

    v101 = 0;
    v100 = 0x7FFFFFFFFFFFFFF7;
LABEL_145:
    v102 = operator new(v100);
    v103 = v102;
    if (v94)
    {
      memmove(v102, v96, v94);
    }

    *(v103 + v94) = 1852400174;
    if (!v101)
    {
      operator delete(v96);
    }

    v335.__r_.__value_.__l.__size_ = v95;
    v335.__r_.__value_.__r.__words[2] = v100 | 0x8000000000000000;
    v335.__r_.__value_.__r.__words[0] = v103;
    v104 = (v103 + v95);
    this = v85;
    v89 = &unk_1ED949000;
LABEL_155:
    *v104 = 0;
    *&__p.st_dev = *&v335.__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&v335.__r_.__value_.__l + 2);
    memset(&v335, 0, sizeof(v335));
    if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v333.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v334.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_157;
      }
    }

    else if ((SHIBYTE(v334.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    operator delete(v334.__r_.__value_.__l.__data_);
LABEL_157:
    v107 = operator new(0x30uLL);
    *v107 = &unk_1F5F00F28;
    *(v107 + 8) = 0u;
    *(v107 + 24) = 0u;
    v108 = BBUFileDataSource::init(v107, &__p, 0);
    v109 = *v107;
    if (!v108)
    {
      if ((*(v109 + 24))(v107) >= 0x29)
      {
        v111 = operator new(0x58uLL);
        BBUEUREFSImage::BBUEUREFSImage(v111, v107, i + 1, 0);
        v112 = (*(*v107 + 24))(v107);
        v113 = (*(*v111 + 72))(v111, v112);
        (*(*v111 + 8))(v111);
        if (v113)
        {
          v107 = operator new(0x30uLL);
          *v107 = &unk_1F5F00F28;
          *(v107 + 8) = 0u;
          *(v107 + 24) = 0u;
          if (BBUFileDataSource::init(v107, &__p, 0))
          {
            (*(*v107 + 8))(v107);
            v107 = 0;
          }

          v110 = 1;
          goto LABEL_169;
        }

        v107 = 0;
      }

      v110 = 0;
LABEL_169:
      BBUFeedback::handleComment(*(this + 1), "EFS file verify status: %d", v110);
      goto LABEL_170;
    }

    (*(v109 + 8))(v107);
    v107 = 0;
    v110 = 1;
LABEL_170:
    if (i | v107 && v110)
    {
      if (!v107)
      {
        goto LABEL_193;
      }
    }

    else
    {
      memset(&v335, 170, sizeof(v335));
      if (v107)
      {
        v114 = (*(*v107 + 24))(v107);
        std::to_string(&v335, v114);
        v115 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v115 = *&__p.st_dev;
        }

        v116 = &v335;
        if ((v335.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v116 = v335.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        *(&v335.__r_.__value_.__s + 23) = 4;
        strcpy(&v335, "NULL");
        v115 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v115 = *&__p.st_dev;
        }

        v116 = &v335;
      }

      BBUFeedback::handleComment(*(this + 1), "Failed to load %s (size %s), creating empty file (size %u)", v115, v116, 0x100000);
      if (v107)
      {
        (*(*v107 + 8))(v107);
      }

      if (BBUScratchFile::createWithFile(&__p, 0x100000))
      {
        v312 = __cxa_allocate_exception(0x210uLL);
        v310 = v312;
        v316 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          LOBYTE(v316) = __p.st_dev;
        }

        _BBUException::_BBUException(v312, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x17Bu, "Failed to create scratch %s (%d)", v313, v314, v315, v316);
LABEL_492:
      }

      v107 = operator new(0x30uLL);
      *v107 = &unk_1F5F00F28;
      *(v107 + 8) = 0u;
      *(v107 + 24) = 0u;
      if (BBUFileDataSource::init(v107, &__p, 0))
      {
        (*(*v107 + 8))(v107);
        v306 = __cxa_allocate_exception(0x210uLL);
        v310 = v306;
        v311 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          LOBYTE(v311) = __p.st_dev;
        }

        _BBUException::_BBUException(v306, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x17Eu, "Failed to create data source from fresh scratch file %s (%d)", v307, v308, v309, v311);
        goto LABEL_492;
      }

      if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v335.__r_.__value_.__l.__data_);
      }
    }

    v117 = operator new(0x58uLL);
    BBUEUREFSImage::BBUEUREFSImage(v117, v107, i + 1, 0);
    *(*(this + 29) + 8 * i) = v117;
    if (v89[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_193;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_193;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v118 = (**this)(this);
      _BBULog(3, 0, v118, "", "Loaded EFS%u\n", v119, v120, v121, i + 1);
    }

LABEL_193:
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "acdb.mbn");
  v122 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v129 = v122;
    operator delete(*&__p.st_dev);
    if (!v129)
    {
      goto LABEL_206;
    }

LABEL_199:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "acdb.mbn");
    v123 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v124 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v124, v123, 0);
    *v124 = &unk_1F5F00360;
    *(this + 32) = v124;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_210;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_210;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v125 = (**this)(this);
      _BBULog(3, 0, v125, "", "Loaded ACDB\n", v126, v127, v128, v331);
    }
  }

  else
  {
    if (v122)
    {
      goto LABEL_199;
    }

LABEL_206:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_208:
        if (gBBULogVerbosity >= 1)
        {
          v130 = (**this)(this);
          _BBULog(3, 1, v130, "", "File not present: %s\n", v131, v132, v133, "acdb.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_208;
      }
    }
  }

LABEL_210:
  HIBYTE(__p.st_gid) = 9;
  strcpy(&__p, "bbcfg.mbn");
  v134 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v141 = v134;
    operator delete(*&__p.st_dev);
    if (!v141)
    {
      goto LABEL_219;
    }

LABEL_212:
    HIBYTE(__p.st_gid) = 9;
    strcpy(&__p, "bbcfg.mbn");
    v135 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v136 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v136, v135, 0);
    *v136 = &unk_1F5F003D8;
    *(this + 33) = v136;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_223;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_223;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v137 = (**this)(this);
      _BBULog(3, 0, v137, "", "Loaded BBCFG\n", v138, v139, v140, v331);
    }
  }

  else
  {
    if (v134)
    {
      goto LABEL_212;
    }

LABEL_219:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_221:
        if (gBBULogVerbosity >= 1)
        {
          v142 = (**this)(this);
          _BBULog(3, 1, v142, "", "File not present: %s\n", v143, v144, v145, "bbcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_221;
      }
    }
  }

LABEL_223:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apdp.mbn");
  v146 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v154 = v146;
    operator delete(*&__p.st_dev);
    if (!v154)
    {
      goto LABEL_232;
    }

LABEL_225:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "apdp.mbn");
    v147 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v148 = operator new(0x20uLL);
    *v148 = &unk_1F5F014B0;
    v148[1] = v147;
    v148[2] = 0;
    *(v148 + 6) = 0;
    v149 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v149, v147, 0);
    v148[2] = v149;
    *v148 = &unk_1F5F00450;
    *(this + 34) = v148;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_236;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_236;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v150 = (**this)(this);
      _BBULog(3, 0, v150, "", "Loaded APDP\n", v151, v152, v153, v331);
    }
  }

  else
  {
    if (v146)
    {
      goto LABEL_225;
    }

LABEL_232:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_234:
        if (gBBULogVerbosity >= 1)
        {
          v155 = (**this)(this);
          _BBULog(3, 1, v155, "", "File not present: %s\n", v156, v157, v158, "apdp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_234;
      }
    }
  }

LABEL_236:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "devcfg.mbn");
  v159 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v167 = v159;
    operator delete(*&__p.st_dev);
    if (!v167)
    {
      goto LABEL_245;
    }

LABEL_238:
    HIBYTE(__p.st_gid) = 10;
    strcpy(&__p, "devcfg.mbn");
    v160 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v161 = operator new(0x20uLL);
    *v161 = &unk_1F5F014B0;
    v161[1] = v160;
    v161[2] = 0;
    *(v161 + 6) = 0;
    v162 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v162, v160, 0);
    v161[2] = v162;
    *v161 = &unk_1F5F004C0;
    *(this + 35) = v161;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_249;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_249;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v163 = (**this)(this);
      _BBULog(3, 0, v163, "", "Loaded DEVCFG\n", v164, v165, v166, v331);
    }
  }

  else
  {
    if (v159)
    {
      goto LABEL_238;
    }

LABEL_245:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_247:
        if (gBBULogVerbosity >= 1)
        {
          v168 = (**this)(this);
          _BBULog(3, 1, v168, "", "File not present: %s\n", v169, v170, v171, "devcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_247;
      }
    }
  }

LABEL_249:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "hyp.mbn");
  v172 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v180 = v172;
    operator delete(*&__p.st_dev);
    if (!v180)
    {
      goto LABEL_258;
    }

LABEL_251:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "hyp.mbn");
    v173 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v174 = operator new(0x20uLL);
    *v174 = &unk_1F5F014B0;
    v174[1] = v173;
    v174[2] = 0;
    *(v174 + 6) = 0;
    v175 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v175, v173, 0);
    v174[2] = v175;
    *v174 = &unk_1F5F00530;
    *(this + 36) = v174;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_262;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_262;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v176 = (**this)(this);
      _BBULog(3, 0, v176, "", "Loaded HYP\n", v177, v178, v179, v331);
    }
  }

  else
  {
    if (v172)
    {
      goto LABEL_251;
    }

LABEL_258:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_260:
        if (gBBULogVerbosity >= 1)
        {
          v181 = (**this)(this);
          _BBULog(3, 1, v181, "", "File not present: %s\n", v182, v183, v184, "hyp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_260;
      }
    }
  }

LABEL_262:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "aop.mbn");
  v185 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v193 = v185;
    operator delete(*&__p.st_dev);
    if (!v193)
    {
      goto LABEL_271;
    }

LABEL_264:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "aop.mbn");
    v186 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v187 = operator new(0x20uLL);
    *v187 = &unk_1F5F014B0;
    v187[1] = v186;
    v187[2] = 0;
    *(v187 + 6) = 0;
    v188 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v188, v186, 0);
    v187[2] = v188;
    *v187 = &unk_1F5F005A0;
    *(this + 37) = v187;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_275;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_275;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v189 = (**this)(this);
      _BBULog(3, 0, v189, "", "Loaded AOP\n", v190, v191, v192, v331);
    }
  }

  else
  {
    if (v185)
    {
      goto LABEL_264;
    }

LABEL_271:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_273:
        if (gBBULogVerbosity >= 1)
        {
          v194 = (**this)(this);
          _BBULog(3, 1, v194, "", "File not present: %s\n", v195, v196, v197, "aop.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_273;
      }
    }
  }

LABEL_275:
  memset(&v335, 170, sizeof(v335));
  v198 = SHIBYTE(v336.__r_.__value_.__r.__words[2]);
  if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v199 = HIBYTE(v336.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v199 = v336.__r_.__value_.__l.__size_;
  }

  v200 = v199 + 1;
  if (v199 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v200 < 0x17)
  {
    memset(&__p, 0, 24);
    v202 = &__p;
    HIBYTE(__p.st_gid) = v199 + 1;
    if (v199)
    {
      goto LABEL_285;
    }
  }

  else
  {
    if ((v200 | 7) == 0x17)
    {
      v201 = 25;
    }

    else
    {
      v201 = (v200 | 7) + 1;
    }

    v202 = operator new(v201);
    __p.st_ino = v199 + 1;
    *&__p.st_uid = v201 | 0x8000000000000000;
    *&__p.st_dev = v202;
LABEL_285:
    if (v198 >= 0)
    {
      v203 = &v336;
    }

    else
    {
      v203 = v336.__r_.__value_.__r.__words[0];
    }

    memmove(v202, v203, v199);
  }

  *(&v202->st_dev + v199) = 47;
  st_gid_high = SHIBYTE(__p.st_gid);
  if ((SHIBYTE(__p.st_gid) & 0x8000000000000000) != 0)
  {
    st_gid_high = __p.st_ino;
    v207 = (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v207 - __p.st_ino >= 0xA)
    {
      v217 = *&__p.st_dev;
      goto LABEL_311;
    }

    v205 = __p.st_ino + 10;
    if (0x7FFFFFFFFFFFFFF7 - (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < __p.st_ino + 10 - v207)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v206 = *&__p.st_dev;
    if (v207 >= 0x3FFFFFFFFFFFFFF3)
    {
      v211 = 0;
      v210 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
LABEL_295:
      v208 = 2 * v207;
      if (v205 > 2 * v207)
      {
        v208 = v205;
      }

      if ((v208 | 7) == 0x17)
      {
        v209 = 25;
      }

      else
      {
        v209 = (v208 | 7) + 1;
      }

      if (v208 >= 0x17)
      {
        v210 = v209;
      }

      else
      {
        v210 = 23;
      }

      v211 = v207 == 22;
    }

    v212 = v210;
    v213 = operator new(v210);
    v214 = v213;
    if (st_gid_high)
    {
      memmove(v213, v206, st_gid_high);
    }

    v215 = &v214[st_gid_high];
    *v215 = *"mdmddr.mbn";
    *(v215 + 4) = 28258;
    if (!v211)
    {
      operator delete(v206);
    }

    __p.st_ino = v205;
    *&__p.st_uid = v212 | 0x8000000000000000;
    *&__p.st_dev = v214;
    v216 = &v214[v205];
  }

  else
  {
    if ((SHIBYTE(__p.st_gid) - 13) < 0xA)
    {
      v205 = SHIBYTE(__p.st_gid) + 10;
      v206 = &__p;
      v207 = 22;
      goto LABEL_295;
    }

    v217 = &__p;
LABEL_311:
    v218 = v217 + st_gid_high;
    *v218 = *"mdmddr.mbn";
    *(v218 + 4) = 28258;
    v219 = st_gid_high + 10;
    if (SHIBYTE(__p.st_gid) < 0)
    {
      __p.st_ino = st_gid_high + 10;
    }

    else
    {
      HIBYTE(__p.st_gid) = v219 & 0x7F;
    }

    v216 = v217 + v219;
  }

  *v216 = 0;
  *&v335.__r_.__value_.__l.__data_ = *&__p.st_dev;
  v335.__r_.__value_.__r.__words[2] = *&__p.st_uid;
  v220 = *&__p.st_dev;
  v221 = SHIBYTE(__p.st_gid);
  v222.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v222.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__p.st_blksize = v222;
  *__p.st_qspare = v222;
  __p.st_birthtimespec = v222;
  *&__p.st_size = v222;
  __p.st_mtimespec = v222;
  __p.st_ctimespec = v222;
  __p.st_atimespec = v222;
  *&__p.st_dev = v222;
  *&__p.st_uid = v222;
  if (v221 >= 0)
  {
    v223 = &v335;
  }

  else
  {
    v223 = v220;
  }

  if (stat(v223, &__p))
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    v334.__r_.__value_.__r.__words[0] = Mutable;
    *&__p.st_dev = xmmword_1E53918B0;
    memset(&__p.st_uid, 0, 24);
    CFDataAppendBytes(Mutable, &__p, 40);
    v225 = operator new(0x18uLL);
    v225[4] = 0;
    *v225 = &unk_1F5F04B00;
    *(v225 + 1) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    v226 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v226, v225, 0);
    *v226 = &unk_1F5F01288;
    *(this + 38) = v226;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_323:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v227 = (**this)(this);
          _BBULog(3, 0, v227, "", "created dummy MDMDDR\n", v228, v229, v230, v331);
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_323;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v231 = operator new(0x30uLL);
    *v231 = &unk_1F5F00F28;
    *(v231 + 8) = 0u;
    *(v231 + 24) = 0u;
    if (BBUFileDataSource::init(v231, &v335, 0))
    {
      (*(*v231 + 8))(v231);
      v327 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v327, 120, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x1D6u, "Assertion failure(dataSource && Failed creating data source from file for MDMDDR)", v328, v329, v330, v331);
    }

    v232 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v232, v231, 0);
    *v232 = &unk_1F5F01288;
    *(this + 38) = v232;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_332;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_332;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v233 = (**this)(this);
      _BBULog(3, 0, v233, "", "Loaded MDMDDR\n", v234, v235, v236, v331);
    }
  }

LABEL_332:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "multi_image.mbn");
  v237 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v245 = v237;
    operator delete(*&__p.st_dev);
    if (!v245)
    {
      goto LABEL_341;
    }

LABEL_334:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "multi_image.mbn");
    v238 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v239 = operator new(0x20uLL);
    *v239 = &unk_1F5F014B0;
    v239[1] = v238;
    v239[2] = 0;
    *(v239 + 6) = 0;
    v240 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v240, v238, 0);
    v239[2] = v240;
    *v239 = &unk_1F5F00610;
    *(this + 39) = v239;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_345;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_345;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v241 = (**this)(this);
      _BBULog(3, 0, v241, "", "Loaded OEMMisc\n", v242, v243, v244, v331);
    }
  }

  else
  {
    if (v237)
    {
      goto LABEL_334;
    }

LABEL_341:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_343:
        if (gBBULogVerbosity >= 1)
        {
          v246 = (**this)(this);
          _BBULog(3, 1, v246, "", "File not present: %s\n", v247, v248, v249, "multi_image.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_343;
      }
    }
  }

LABEL_345:
  HIBYTE(__p.st_gid) = 19;
  strcpy(&__p, "multi_image_qti.mbn");
  v250 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v258 = v250;
    operator delete(*&__p.st_dev);
    if (!v258)
    {
      goto LABEL_354;
    }

LABEL_347:
    HIBYTE(__p.st_gid) = 19;
    strcpy(&__p, "multi_image_qti.mbn");
    v251 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v252 = operator new(0x20uLL);
    *v252 = &unk_1F5F014B0;
    v252[1] = v251;
    v252[2] = 0;
    *(v252 + 6) = 0;
    v253 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v253, v251, 0);
    v252[2] = v253;
    *v252 = &unk_1F5F00680;
    *(this + 40) = v252;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_358;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_358;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v254 = (**this)(this);
      _BBULog(3, 0, v254, "", "Loaded QTIMisc\n", v255, v256, v257, v331);
    }
  }

  else
  {
    if (v250)
    {
      goto LABEL_347;
    }

LABEL_354:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_356:
        if (gBBULogVerbosity >= 1)
        {
          v259 = (**this)(this);
          _BBULog(3, 1, v259, "", "File not present: %s\n", v260, v261, v262, "multi_image_qti.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_356;
      }
    }
  }

LABEL_358:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "xbl_cfg.elf");
  v263 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v271 = v263;
    operator delete(*&__p.st_dev);
    if (!v271)
    {
      goto LABEL_367;
    }

LABEL_360:
    HIBYTE(__p.st_gid) = 11;
    strcpy(&__p, "xbl_cfg.elf");
    v264 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v265 = operator new(0x20uLL);
    *v265 = &unk_1F5F014B0;
    v265[1] = v264;
    v265[2] = 0;
    *(v265 + 6) = 0;
    v266 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v266, v264, 0);
    v265[2] = v266;
    *v265 = &unk_1F5F006F0;
    *(this + 41) = v265;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_371;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_371;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v267 = (**this)(this);
      _BBULog(3, 0, v267, "", "Loaded XBL Config\n", v268, v269, v270, v331);
    }
  }

  else
  {
    if (v263)
    {
      goto LABEL_360;
    }

LABEL_367:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_369:
        if (gBBULogVerbosity >= 1)
        {
          v272 = (**this)(this);
          _BBULog(3, 1, v272, "", "File not present: %s\n", v273, v274, v275, "xbl_cfg.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_369;
      }
    }
  }

LABEL_371:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "uefi.elf");
  v276 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v284 = v276;
    operator delete(*&__p.st_dev);
    if (!v284)
    {
      goto LABEL_380;
    }

LABEL_373:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "uefi.elf");
    v277 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v278 = operator new(0x20uLL);
    *v278 = &unk_1F5F014B0;
    v278[1] = v277;
    v278[2] = 0;
    *(v278 + 6) = 0;
    v279 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v279, v277, 0);
    v278[2] = v279;
    *v278 = &unk_1F5F00760;
    *(this + 42) = v278;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_384;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_384;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v280 = (**this)(this);
      _BBULog(3, 0, v280, "", "Loaded UEFI\n", v281, v282, v283, v331);
    }
  }

  else
  {
    if (v276)
    {
      goto LABEL_373;
    }

LABEL_380:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_382:
        if (gBBULogVerbosity >= 1)
        {
          v285 = (**this)(this);
          _BBULog(3, 1, v285, "", "File not present: %s\n", v286, v287, v288, "uefi.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_382;
      }
    }
  }

LABEL_384:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "xbl_support.elf");
  v289 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v297 = v289;
    operator delete(*&__p.st_dev);
    if (!v297)
    {
      goto LABEL_393;
    }

LABEL_386:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "xbl_support.elf");
    v290 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v291 = operator new(0x20uLL);
    *v291 = &unk_1F5F014B0;
    v291[1] = v290;
    v291[2] = 0;
    *(v291 + 6) = 0;
    v292 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v292, v290, 0);
    v291[2] = v292;
    *v291 = &unk_1F5F007D0;
    *(this + 43) = v291;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_397;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_397;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v293 = (**this)(this);
      _BBULog(3, 0, v293, "", "Loaded XBL Support\n", v294, v295, v296, v331);
    }
  }

  else
  {
    if (v289)
    {
      goto LABEL_386;
    }

LABEL_393:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_395:
        if (gBBULogVerbosity >= 1)
        {
          v298 = (**this)(this);
          _BBULog(3, 1, v298, "", "File not present: %s\n", v299, v300, v301, "xbl_support.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_395;
      }
    }
  }

LABEL_397:
  HIBYTE(__p.st_gid) = 13;
  strcpy(&__p, "Options.plist");
  v302 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v303 = v302;
    operator delete(*&__p.st_dev);
    if (!v303)
    {
      goto LABEL_411;
    }
  }

  else if (!v302)
  {
    goto LABEL_411;
  }

  HIBYTE(__p.st_gid) = 13;
  strcpy(&__p, "Options.plist");
  v304 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  *&__p.st_dev = 0xAAAAAAAAAAAAAAAALL;
  BBUDataSource::createData(v304, &__p);
  if (v304)
  {
    (*(*v304 + 8))(v304);
  }

  v305 = *&__p.st_dev;
  v332 = *&__p.st_dev;
  if (*&__p.st_dev)
  {
    CFRetain(*&__p.st_dev);
  }

  BBUUpdateSource::loadOptions(this, &v332);
  if (v305)
  {
    CFRelease(v305);
  }

  if (*&__p.st_dev)
  {
    CFRelease(*&__p.st_dev);
  }

LABEL_411:
  (*(*this + 264))(this);
  if ((SHIBYTE(v335.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v336.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_415:
    operator delete(v336.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v335.__r_.__value_.__l.__data_);
  if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_415;
  }
}