uint64_t std::future<BOOL>::get(atomic_ullong **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<BOOL>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  return v3;
}

void sub_299FB9144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
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

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
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
        MEMORY[0x29C2B8CD0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2B8CE0](v7);
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

void std::__assoc_state<BOOL>::set_value<BOOL>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(uint64_t a1, uint64_t *a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = *a2;
  m = (a1 + 24);
  v15.__m_ = (a1 + 24);
  v15.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  v7 = *(a1 + 136);
  if ((v7 & 8) != 0)
  {
    v13 = 2;
    goto LABEL_26;
  }

  if ((v7 & 4) != 0)
  {
    goto LABEL_24;
  }

  v8 = v4.__d_.__rep_ + 1000000000 * v5;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v8)
  {
    if (v8 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v10.__d_.__rep_)
        {
          if (v10.__d_.__rep_ < 1)
          {
            if (v10.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_14;
            }

            v11 = 0x8000000000000000;
          }

          else
          {
            if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_15;
            }

LABEL_14:
            v11 = 1000 * v10.__d_.__rep_;
LABEL_15:
            if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
LABEL_18:
        std::condition_variable::__do_timed_wait((a1 + 88), &v15, v12);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v7 = *(a1 + 136);
    if ((v7 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v7 = *(a1 + 136);
LABEL_24:
  v13 = ((v7 >> 2) & 1) == 0;
  if (v15.__owns_)
  {
    m = v15.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v13;
}

void std::__assoc_state<BOOL>::move(uint64_t a1)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v2 = *(a1 + 16);
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (v2)
  {
    std::exception_ptr::exception_ptr(&v5, (a1 + 16));
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_299FB9654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void getVinylTatsuTagToFileNameMap(uint64_t a1@<X8>)
{
  v5[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v4, &kVinylGold, "euig");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v5, &kVinylMain, "euim");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v4, 2);
  for (i = 0; i != -8; i -= 4)
  {
    if (SHIBYTE(v5[i + 3]) < 0)
    {
      operator delete(v5[i + 1]);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_299FB9750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = v16 + 40;
  v19 = -64;
  while (1)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 32;
    v19 += 32;
    if (!v19)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}

uint64_t std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_299FB9B88(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void VinylTransport::createTransport(uint64_t *a1@<X0>, uint64_t a2@<X1>, ACFUTransport **a3@<X8>)
{
  v6 = operator new(0x28uLL);
  ACFUTransport::ACFUTransport(v6);
  *v6 = &unk_2A2031C98;
  *a3 = v6;
  v7 = *a1;
  v8 = a1[1];
  v12[0] = v7;
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = VinylTransport::init(v6, v12, a2);
  v10 = v9;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 1) == 0)
  {
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    *a3 = 0;
    v11 = *(*v6 + 64);

    v11(v6);
  }
}

void sub_299FB9D20(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 64))(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylTransport::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a3;
  if (*a2)
  {
    *(a1 + 32) = ACFUDiagnostics::copyDiagnosticsPath(*a2);
    v5 = *(a1 + 24);
    AMSupportSafeRetain();
    v6 = *(a1 + 32);
    AMSupportSafeRetain();
    v7 = *(a2 + 8);
    v10 = *a2;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = ACFUTransport::init();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    VinylTransport::init(0);
    return 0;
  }

  return v8;
}

void sub_299FB9E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylTransport::getBoardParameters@<X0>(VinylTransport *this@<X0>, uint64_t a2@<X8>)
{
  ACFULogging::getLogInstance(this);
  result = ACFULogging::handleMessage();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t VinylTransport::getPersoParameters@<X0>(const __CFDictionary **this@<X0>, uint64_t a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    result = VinylTransport::getPersoParameters(0);
LABEL_9:
    v16 = 0;
    goto LABEL_5;
  }

  v5 = VinylController::create(0, 0);
  if (!v5)
  {
    result = VinylTransport::getPersoParameters(0);
    goto LABEL_9;
  }

  v6 = v5;
  ParamUpdateOperation = VinylController::getParamUpdateOperation(v5, Mutable, this[3]);
  result = VinylControllerObjDestroy(v6, v8, v9, v10, v11, v12, v13, v14, v17);
  if (ParamUpdateOperation)
  {
    result = VinylTransport::getPersoParameters(ParamUpdateOperation);
    goto LABEL_9;
  }

  v16 = 1;
LABEL_5:
  *a2 = Mutable;
  *(a2 + 8) = v16;
  return result;
}

BOOL VinylTransport::checkVinylPresence(const __CFDictionary **this, char a2)
{
  v16 = 0;
  v4 = VinylController::create(0, 0);
  if (v4)
  {
    v5 = v4;
    VinylController::checkVinylPresence(v4, this[3], &v16, a2);
    VinylControllerObjDestroy(v5, v6, v7, v8, v9, v10, v11, v12, v15);
    return v16;
  }

  else
  {
    VinylTransport::checkVinylPresence(0);
    return 0;
  }
}

uint64_t VinylTransport::createGoldFw(VinylTransport *this, CFDictionaryRef theDict, VinylFirmware **a3)
{
  v37 = 0;
  v38 = 0;
  error = 0;
  Value = CFDictionaryGetValue(theDict, @"eUICC,Ticket");
  v6 = Value;
  if (!Value || (v7 = CFGetTypeID(Value), Value = CFDataGetTypeID(), v7 != Value))
  {
    ACFULogging::getLogInstance(Value);
LABEL_36:
    ACFULogging::handleMessage();
    goto LABEL_37;
  }

  ACFULogging::getLogInstance(Value);
  std::string::basic_string[abi:ne200100]<0>(&v33, "VinylTransport");
  v8 = std::string::append(&v33, "::", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v34, "createGoldFw", 0xCuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v12 = CFDictionaryGetValue(theDict, @"FirmwareData");
  if (!v12)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_36;
  }

  v13 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v12, 0, 0, &error);
  v14 = v13;
  v37 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    TypeID = CFDictionaryGetTypeID();
    if (v15 == TypeID)
    {
      __p.__r_.__value_.__r.__words[0] = v14;
      v17 = ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(&v38, &__p.__r_.__value_.__l.__data_);
      if (v38)
      {
        ACFULogging::getLogInstance(v17);
        std::string::basic_string[abi:ne200100]<0>(&v33, "VinylTransport");
        v18 = std::string::append(&v33, "::", 2uLL);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        v20 = std::string::append(&v34, "createGoldFw", 0xCuLL);
        v21 = *&v20->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v17 = CFDictionaryGetValue(v38, @"eUICC,Im4pGold");
        v22 = v17;
        if (v17)
        {
          v23 = CFGetTypeID(v17);
          v17 = CFDataGetTypeID();
          if (v23 == v17)
          {
            v17 = CFDictionaryGetValue(v38, @"eUICC,InfoPlistDataGold");
            v24 = v17;
            if (v17)
            {
              v25 = CFGetTypeID(v17);
              v17 = CFDataGetTypeID();
              if (v25 == v17)
              {
                v17 = CFDictionaryGetValue(v38, @"eUICC,ProfileDataGold");
                v26 = v17;
                if (v17)
                {
                  v27 = CFGetTypeID(v17);
                  v17 = CFDataGetTypeID();
                  if (v27 == v17)
                  {
                    v17 = CFDictionaryGetValue(v38, @"eUICC,Gold");
                    v28 = v17;
                    if (v17)
                    {
                      v29 = CFGetTypeID(v17);
                      v17 = CFDataGetTypeID();
                      if (v29 == v17)
                      {
                        v30 = CFDictionaryGetValue(v38, @"eUICC,GoldRecoveryFw");
                        v31 = 0;
                        *a3 = VinylFirmwareCreate(v28, v30, v22, v24, v26, v6);
LABEL_28:
                        CFRelease(v14);
                        goto LABEL_29;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      ACFULogging::getLogInstance(v17);
      ACFULogging::handleMessage();
    }

    else
    {
      ACFULogging::getLogInstance(TypeID);
      std::string::basic_string[abi:ne200100]<0>(&v33, "VinylTransport");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("::", &v33, &v34);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("createGoldFw", &v34, &__p);
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    v31 = 1;
    goto LABEL_28;
  }

  ACFULogging::getLogInstance(0);
  std::string::basic_string[abi:ne200100]<0>(&v33, "VinylTransport");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("::", &v33, &v34);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("createGoldFw", &v34, &__p);
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

LABEL_37:
  v31 = 1;
LABEL_29:
  if (v38)
  {
    CFRelease(v38);
  }

  return v31;
}

void sub_299FBA514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 96));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v30 - 88));
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t VinylTransport::createMainFw(VinylTransport *this, CFDictionaryRef theDict, VinylFirmware **a3)
{
  v33 = 0;
  v34 = 0;
  error = 0;
  Value = CFDictionaryGetValue(theDict, @"eUICC,Ticket");
  v6 = Value;
  if (!Value || (v7 = CFGetTypeID(Value), Value = CFDataGetTypeID(), v7 != Value))
  {
    ACFULogging::getLogInstance(Value);
LABEL_30:
    ACFULogging::handleMessage();
    goto LABEL_31;
  }

  ACFULogging::getLogInstance(Value);
  std::string::basic_string[abi:ne200100]<0>(&v29, "VinylTransport");
  v8 = std::string::append(&v29, "::", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v30, "createMainFw", 0xCuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v12 = CFDictionaryGetValue(theDict, @"FirmwareData");
  if (!v12)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_30;
  }

  v13 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v12, 0, 0, &error);
  v14 = v13;
  v33 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    TypeID = CFDictionaryGetTypeID();
    if (v15 == TypeID)
    {
      __p.__r_.__value_.__r.__words[0] = v14;
      ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(&v34, &__p.__r_.__value_.__l.__data_);
      if (v34)
      {
        v17 = CFDictionaryGetValue(v34, @"eUICC,Im4pMain");
        v18 = v17;
        if (v17)
        {
          v19 = CFGetTypeID(v17);
          v17 = CFDataGetTypeID();
          if (v19 == v17)
          {
            v17 = CFDictionaryGetValue(v34, @"eUICC,InfoPlistDataMain");
            v20 = v17;
            if (v17)
            {
              v21 = CFGetTypeID(v17);
              v17 = CFDataGetTypeID();
              if (v21 == v17)
              {
                v17 = CFDictionaryGetValue(v34, @"eUICC,ProfileDataMain");
                v22 = v17;
                if (v17)
                {
                  v23 = CFGetTypeID(v17);
                  v17 = CFDataGetTypeID();
                  if (v23 == v17)
                  {
                    v17 = CFDictionaryGetValue(v34, @"eUICC,Main");
                    v24 = v17;
                    if (v17)
                    {
                      v25 = CFGetTypeID(v17);
                      v17 = CFDataGetTypeID();
                      if (v25 == v17)
                      {
                        v26 = CFDictionaryGetValue(v34, @"eUICC,MainRecoveryFw");
                        v27 = 0;
                        *a3 = VinylFirmwareCreate(v24, v26, v18, v20, v22, v6);
LABEL_22:
                        CFRelease(v14);
                        goto LABEL_23;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ACFULogging::getLogInstance(v17);
      }

      else
      {
        ACFULogging::getLogInstance(0);
      }

      ACFULogging::handleMessage();
    }

    else
    {
      ACFULogging::getLogInstance(TypeID);
      std::string::basic_string[abi:ne200100]<0>(&v29, "VinylTransport");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("::", &v29, &v30);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("createMainFw", &v30, &__p);
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    v27 = 1;
    goto LABEL_22;
  }

  ACFULogging::getLogInstance(0);
  std::string::basic_string[abi:ne200100]<0>(&v29, "VinylTransport");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("::", &v29, &v30);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("createMainFw", &v30, &__p);
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_31:
  v27 = 1;
LABEL_23:
  if (v34)
  {
    CFRelease(v34);
  }

  return v27;
}

void sub_299FBAB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 96));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v30 - 88));
  _Unwind_Resume(a1);
}

ACFULogging *VinylTransport::updateFw(const __CFDictionary **this, const __CFDictionary *a2)
{
  v20 = 0;
  v21 = 0;
  v4 = VinylTransport::createGoldFw(this, a2, &v20);
  v5 = v4;
  if (v4 || (v6 = v20) == 0)
  {
    VinylTransport::updateFw(v4);
    return v5;
  }

  v7 = VinylTransport::createMainFw(v4, a2, &v21);
  v5 = v7;
  if (v7 || (v8 = v21) == 0)
  {
    VinylTransport::updateFw(v7);
    return v5;
  }

  v9 = VinylController::create(0, 0);
  if (!v9)
  {
    VinylTransport::updateFw(0);
    return 1;
  }

  v10 = v9;
  updated = VinylController::updateFw(v9, v6, v8, this[3]);
  VinylControllerObjDestroy(v10, v12, v13, v14, v15, v16, v17, v18, v20);
  if (updated)
  {
    VinylTransport::updateFw(updated);
    return 1;
  }

  return 0;
}

uint64_t VinylTransport::setNonce(VinylTransport *this, void *a2)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  return 2;
}

uint64_t VinylTransport::pushFirmware(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  return 2;
}

uint64_t VinylTransport::pingCheck(VinylTransport *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  return 2;
}

uint64_t VinylTransport::reset(VinylTransport *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  return 2;
}

uint64_t VinylTransport::getDebugInfo(const __CFString **a1, uint64_t a2, int a3)
{
  if (a3)
  {
    cf = 0;
    v3 = BBUpdaterCommon::collectCoreDump(&cf, a1[4], 1, 0);
    a1 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v3)
    {
      return 0;
    }
  }

  VinylTransport::getDebugInfo(a1);
  return 1;
}

void VinylTransport::~VinylTransport(VinylTransport *this)
{
  *this = &unk_2A2031C98;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
    *(this + 4) = 0;
  }

  ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage();

  MEMORY[0x2A1C5F0F8](this);
}

{
  VinylTransport::~VinylTransport(this);

  operator delete(v1);
}

uint64_t ErrnoToBBUReturn(int a1)
{
  if (a1 == 35)
  {
    return 13;
  }

  else
  {
    return 3;
  }
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
  *a1 = &unk_2A2031D10;
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
  eUICC::eUICCVinylValve::hardwareHasESIM = (*(*a1 + 144))(a1, &eUICC::eUICCVinylValve::simSKUID);
  v13 = dispatch_semaphore_create(0);
  v14 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v24 = &unk_2A2031E38;
  v25 = a1;
  v26 = v14;
  v27 = &v24;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v24);
  v24 = &unk_2A2031EC8;
  v25 = a1;
  v27 = &v24;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v24);
  v24 = &unk_2A2031F48;
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

void sub_299FBB1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
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

  *(v12 + 41) = &unk_2A2031E08;
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

  eUICC::eUICCVinylValve::~eUICCVinylValve(v12);
  _Unwind_Resume(a1);
}

void abb::router::Client::~Client(abb::router::Client *this)
{
  *this = &unk_2A2031E08;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2031E08;
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
    *v20 = &unk_2A2031FE8;
    v20[1] = this;
    v20[2] = &v44;
    v20[3] = v14;
    v46[3] = v20;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v46, (v19 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v46);
    MEMORY[0x29C2B81A0](&__ns);
    v21 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v14, v21) && (gBBULogMaskGet(), _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Status Req.\n", v22, v23, v24, v39), !*(this + 37)))
    {
      v30 = gBBULogMaskGet();
      if (VinylDaleCommunication::createTransport(v30))
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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

  v24[0] = &unk_2A2032068;
  v24[1] = this;
  v24[2] = v7;
  v24[3] = v24;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v24, (v12 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v24);
  MEMORY[0x29C2B81A0](v23);
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

void sub_299FBBA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
  v18 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(v43);
    v19 = v43[0];
    v43[0] = 0uLL;
    v20 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (*(&v43[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43[0] + 1));
      }
    }

    v18 = xmmword_2A14F5908;
  }

  v21 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v22 = BBUCapabilities::supportsEuiccViaEOS(v18);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v22)
  {
    result = (*(*this + 152))(this);
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

  v44[0] = &unk_2A2032138;
  v44[1] = this;
  v44[2] = v28;
  v44[3] = v44;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v44, (v33 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v44);
  MEMORY[0x29C2B81A0](v43);
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

void sub_299FBBF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
    *v18 = &unk_2A20321B8;
    v18[1] = a1;
    v18[2] = &v30;
    v18[3] = v12;
    v32[3] = v18;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v32, (v17 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v32);
    MEMORY[0x29C2B81A0](v31);
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

void sub_299FBC308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
    *v27 = &unk_2A2032238;
    v27[1] = this;
    v27[2] = &v45;
    v27[3] = v20;
    v49[3] = v27;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v49, (v26 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v49);
    MEMORY[0x29C2B81A0](&v46);
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

    MEMORY[0x29C2B8650](v38);
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

void sub_299FBC81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (v45 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  MEMORY[0x29C2B8650](&a24);
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
    *v31 = &unk_2A20322B8;
    v31[1] = a1;
    v31[2] = a3;
    v31[3] = &v48;
    v31[4] = a4;
    v31[5] = v24;
    v52[3] = v31;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v52, (v30 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v52);
    MEMORY[0x29C2B81A0](&v49);
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

    MEMORY[0x29C2B8650](v42);
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

void sub_299FBCD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (v43 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  MEMORY[0x29C2B8650](&a24);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylDALValve::InstallTicket(_DWORD *a1, CFDataRef *a2)
{
  v57[4] = *MEMORY[0x29EDCA608];
  v55 = 1;
  BytePtr = CFDataGetBytePtr(*a2);
  Length = CFDataGetLength(*a2);
  if (!*a2)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "installTicket");
    goto LABEL_6;
  }

  if ((a1[88] & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::InstallTicket(Length, v6, v7, v8, v9, v10, v11, v12, v45);
    goto LABEL_13;
  }

  v13 = Length;
  gBBULogMaskGet();
  if (v13 >= 3585)
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Ticket provided is larger than spec. [ %ld (lenth) > %d (spec max) ] \n", v14, v15, v16, v13);
LABEL_6:
    v20 = 2;
    goto LABEL_7;
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "eUICCVinylDALValve::InstallTicket\n", v14, v15, v16, v45);
  (*(*a1 + 8))(__src, a1);
  memcpy(a1 + 2, __src, 0x11BuLL);
  if (a1[2] != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "outData.Valid()");
LABEL_13:
    v20 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 31) && (v20 = (*(*a1 + 16))(a1, 0, 0), (v55 = v20) != 0))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "kBBUReturnSuccess == ret");
  }

  else
  {
    mipc::dale_vinyl::Install_Vad_Req::Install_Vad_Req();
    if (a1[73] == 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    v51[10] = v29;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v48, BytePtr, &BytePtr[v13], v13);
    memset(__src, 0, 24);
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__src, v48, v49, v49 - v48);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v54, __src);
    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    v30 = operator new(2uLL);
    *v30 = 1;
    v31 = __p;
    __p = v30;
    if (v31)
    {
      operator delete(v31);
    }

    v32 = operator new(2uLL);
    *v32 = 0;
    v33 = v53;
    v53 = v32;
    if (v33)
    {
      operator delete(v33);
    }

    v34 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v38 = v54;
      if (v54)
      {
        stringifyDataBuffer(*v54, v54[1] - *v54, &v47);
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Vad_Req sent: Msg=0x%x fTlv_Payload = %s\n", v35, v36, v37, 5);
      if (v38 && SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Install_Vad_Req>(v51, (a1 + 82), __src);
    v39 = abb::router::SendProxy::timeout();
    if (v34)
    {
      dispatch_retain(v34);
    }

    v40 = operator new(0x20uLL);
    *v40 = &unk_2A2032338;
    v40[1] = a1;
    v40[2] = &v55;
    v40[3] = v34;
    v57[3] = v40;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v57, (v39 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v57);
    MEMORY[0x29C2B81A0](__src);
    v41 = dispatch_time(0, 7500000000);
    if (dispatch_semaphore_wait(v34, v41))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on install vad req.\n", v42, v43, v44, v46);
    }

    if (v34)
    {
      dispatch_release(v34);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    mipc::dale_vinyl::Install_Vad_Req::~Install_Vad_Req(v51);
    v20 = v55;
  }

LABEL_7:
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

void sub_299FBD2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (v38)
  {
    dispatch_release(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mipc::dale_vinyl::Install_Vad_Req::~Install_Vad_Req(&a22);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_vinyl::Install_Vad_Req>@<X0>(mipc::dale_vinyl::Install_Vad_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Install_Vad_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::StreamFirmware(eUICC::eUICCVinylDALValve *this, __CFData *a2)
{
  v87[4] = *MEMORY[0x29EDCA608];
  v85 = 18;
  VinylFirmware::getFirmwareAPDUs(a2, &v83);
  v4 = v83;
  v3 = v84;
  mipc::dale_vinyl::Install_Fw_Req::Install_Fw_Req();
  v75 = 0;
  v76 = 0;
  v77 = 0;
  if (*(this + 352))
  {
    (*(*this + 8))(v86, this);
    memcpy(this + 8, v86, 0x11BuLL);
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (*(this + 2) != (RadioVendor - 5) < 0xFFFFFFFD)
    {
      gBBULogMaskGet();
      v9 = "outData.Valid()";
      goto LABEL_7;
    }

    if (*(this + 31) != 1)
    {
      RadioVendor = (*(*this + 16))(this, 1, 0);
      v85 = RadioVendor;
      if (RadioVendor)
      {
        gBBULogMaskGet();
        v9 = "kBBUReturnSuccess == ret";
LABEL_7:
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, v9);
        goto LABEL_53;
      }
    }

    v10 = (v3 - v4) >> 5;
    v11 = *(this + 304);
    v71 = v10;
    if (v10 % v11)
    {
      v12 = v10 / v11 + 1;
    }

    else
    {
      v12 = v10 / v11;
    }

    if (v12)
    {
      v72 = 0;
      v73 = 0;
      v13 = 0;
      if (*(this + 73) == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v78[10] = v14;
      v70[0] = v12;
      while (1)
      {
        v70[1] = v70;
        v15 = *(this + 304);
        v16 = v71 - v13 * v15 >= v15 ? *(this + 304) : v71 - v13 * v15;
        MEMORY[0x2A1C7C4A8](RadioVendor);
        v18 = v70 - v17;
        bzero(v70 - v17, v19);
        v20 = v18;
        if (v16)
        {
          break;
        }

LABEL_26:
        v27 = v13 + 1;
        v28 = v70[0];
        if (!v13 || v70[0] == v27)
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v29, v30, v31, v13 + 1);
        }

        v32 = operator new(2uLL);
        *v32 = v28;
        v33 = v79;
        v79 = v32;
        if (v33)
        {
          operator delete(v33);
        }

        v34 = operator new(2uLL);
        *v34 = v13;
        v35 = v80;
        v80 = v34;
        if (v35)
        {
          operator delete(v35);
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v75, v18, v20, v20 - v18);
        mipc::tlv<mipc::mipc_byte_array_t<3930ul,false>,true>::operator=<std::vector<unsigned char> &>(&v82, &v75);
        v36 = operator new(2uLL);
        *v36 = v16;
        v37 = v81;
        v81 = v36;
        if (v37)
        {
          operator delete(v37);
        }

        v38 = dispatch_semaphore_create(0);
        if ((*(gBBULogMaskGet() + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
        {
          v42 = v82;
          if (v82)
          {
            stringifyDataBuffer(*v82, v82[1] - *v82, &v74);
          }

          _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Fw_Req sent: Msg=0x%x fTlv_Payload = %s\n", v39, v40, v41, 6);
          if (v42 && SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }
        }

        abb::router::Client::send<mipc::dale_vinyl::Install_Fw_Req>(v78, (this + 328), v86);
        v43 = abb::router::SendProxy::timeout();
        if (v38)
        {
          dispatch_retain(v38);
        }

        v44 = operator new(0x20uLL);
        *v44 = &unk_2A20323B8;
        v44[1] = this;
        v44[2] = &v85;
        v44[3] = v38;
        v87[3] = v44;
        std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v87, (v43 + 152));
        std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v87);
        MEMORY[0x29C2B81A0](v86);
        v45 = dispatch_time(0, 7500000000);
        RadioVendor = dispatch_semaphore_wait(v38, v45);
        if (RadioVendor)
        {
          gBBULogMaskGet();
          RadioVendor = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on install fw req.\n", v46, v47, v48, v70[0]);
        }

        v49 = v85;
        if (v38)
        {
          dispatch_release(v38);
        }

        if (!v49)
        {
          --v72;
          v73 += 32;
          ++v13;
          if (v28 > v27)
          {
            continue;
          }
        }

        goto LABEL_53;
      }

      v21 = &v83[v73 * *(this + 304) + 24];
      if (v71 + v72 * v15 < v15)
      {
        v15 = v71 + v72 * v15;
      }

      v20 = v18;
      while (1)
      {
        v22 = *(v21 - 2);
        if (v22 > 5 || *v21 >= 0x100)
        {
          break;
        }

        v23 = &v20[v22 + *v21];
        *v20 = v22;
        memcpy(v20 + 1, *(v21 - 3), *(v21 - 2));
        v20[*(v21 - 2) + 1] = *v21;
        v24 = *(v21 - 1);
        v25 = &v20[*(v21 - 2)];
        v26 = *v21;
        v21 += 4;
        memcpy(v25 + 2, v24, v26);
        v20 = v23 + 2;
        if (!--v15)
        {
          goto LABEL_26;
        }
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", v50, v51, v52, "f.header.length <= 5 && f.data.length <= 255");
      gBBULogMaskGet();
      v69 = *v21;
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Firmware APDU not within expected bounds : received (header - 5 : %zu data- 255 : %zu\n", v53, v54, v55, *(v21 - 2));
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", v56, v57, v58, "apduSetCount");
      v85 = 15;
    }
  }

  else
  {
    v62 = gBBULogMaskGet();
    if (VinylDaleCommunication::createTransport(v62))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "No transport available.. bail out\n", v66, v67, v68, v70[0]);
  }

LABEL_53:
  v59 = v85;
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  MEMORY[0x29C2B8440](v78);
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  v60 = *MEMORY[0x29EDCA608];
  return v59;
}

void sub_299FBDB70(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v1[8];
  if (v4)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  MEMORY[0x29C2B8440](v1 + 11);
  v5 = v1[26];
  if (v5)
  {
    v1[27] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3930ul,false>,true>::operator=<std::vector<unsigned char> &>(void ***a1, uint64_t a2)
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

uint64_t abb::router::Client::send<mipc::dale_vinyl::Install_Fw_Req>@<X0>(mipc::dale_vinyl::Install_Fw_Req *this@<X1>, const abb::router::Client *a2@<X0>, abb::router::SendProxy *a3@<X8>)
{
  mipc::dale_vinyl::Install_Fw_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
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
    *v22 = &unk_2A2032438;
    v22[1] = a1;
    v22[2] = a3;
    v22[3] = &v35;
    v22[4] = v16;
    v37[3] = v22;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v37, (v21 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v37);
    MEMORY[0x29C2B81A0](v36);
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

void sub_299FBE010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
    *v22 = &unk_2A20324B8;
    v22[1] = a1;
    v22[2] = a3;
    v22[3] = &v35;
    v22[4] = v16;
    v37[3] = v22;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v37, (v21 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v37);
    MEMORY[0x29C2B81A0](v36);
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

void sub_299FBE480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
    *v21 = &unk_2A2032538;
    v21[1] = a1;
    v21[2] = &v34;
    v21[3] = v15;
    v36[3] = v21;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v36, (v20 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v36);
    MEMORY[0x29C2B81A0](v35);
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

void sub_299FBE870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
    *v22 = &unk_2A20325B8;
    v22[1] = a1;
    v22[2] = a3;
    v22[3] = &v35;
    v22[4] = v16;
    v37[3] = v22;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v37, (v21 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v37);
    MEMORY[0x29C2B81A0](v36);
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

void sub_299FBEC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
    if (VinylDaleCommunication::createTransport(v39))
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
  v70[0] = &unk_2A2032638;
  v70[1] = a1;
  v70[2] = &v66;
  v70[3] = v70;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v70, (v28 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v70);
  MEMORY[0x29C2B81A0](&v67);
  v29 = dispatch_time(0, 7500000000);
  if (dispatch_semaphore_wait(*(a1 + 360), v29))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on InstallPairingMSM Sep_Cmd_Req\n", v30, v31, v32, v59);
  }

  if ((v66 & 1) == 0)
  {
    v46 = gBBULogMaskGet();
    if (VinylDaleCommunication::createTransport(v46))
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
    if (VinylDaleCommunication::createTransport(v54))
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
  MEMORY[0x29C2B8350](v63);
LABEL_30:
  v37 = *MEMORY[0x29EDCA608];
  return v36;
}

void sub_299FBF270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (v42)
  {
    if (a24 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2B8350](&a25);
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
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a3, a2, v7);
  MEMORY[0x29C2B8180](v7);
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
  v55[0] = &unk_2A20326B8;
  v55[1] = a1;
  v55[2] = &v53;
  v55[3] = v55;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v55, (v24 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v55);
  MEMORY[0x29C2B81A0](v54);
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
    if (VinylDaleCommunication::createTransport(v43))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v42 = "ManagePairingGetNonce Sep_Cmd_Ind fail\n";
  }

  else
  {
    v35 = gBBULogMaskGet();
    if (VinylDaleCommunication::createTransport(v35))
    {
      _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
    }

    gBBULogMaskGet();
    v42 = "ManagePairingGetNonce Sep_Cmd_Cnf fail\n";
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", v42, v39, v40, v41, v48);
  v32 = 1;
LABEL_23:
  MEMORY[0x29C2B8350](v51);
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
    if (VinylDaleCommunication::createTransport(v44))
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
    if (VinylDaleCommunication::createTransport(v52))
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
    if (VinylDaleCommunication::createTransport(v60))
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
  *v33 = &unk_2A2032738;
  v33[1] = a1;
  v33[2] = &v82 + 1;
  v33[3] = &v82;
  v86[3] = v33;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v86, (v32 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v86);
  MEMORY[0x29C2B81A0](&v83);
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
        MEMORY[0x29C2B8350](v78);
        goto LABEL_39;
      }

      v68 = gBBULogMaskGet();
      if (VinylDaleCommunication::createTransport(v68))
      {
        _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp");
      }

      gBBULogMaskGet();
      v59 = "ManagePairingAuthenticate Sep_Cmd_Ind Sep_Cmd_Cnf\n";
    }

    else
    {
      v64 = gBBULogMaskGet();
      if (VinylDaleCommunication::createTransport(v64))
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

  MEMORY[0x29C2B8350](v78);
  v35 = 0;
LABEL_39:
  v42 = *MEMORY[0x29EDCA608];
  return v35;
}

void sub_299FBFDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
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

  MEMORY[0x29C2B8350](&a32);
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
  *this = &unk_2A2031D10;
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

  *(this + 41) = &unk_2A2031E08;
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

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
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

void sub_299FC0088(_Unwind_Exception *exception_object)
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
  *a1 = &unk_2A2031E38;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A2031E38;
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
  *v2 = &unk_2A2031E38;
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
  *a2 = &unk_2A2031E38;
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
  *result = &unk_2A2031EC8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2031EC8;
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
  *result = &unk_2A2031F48;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2031F48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(uint64_t a1, abb::router::Message *this)
{
  abb::router::Message::getRawMsg(&v75, this);
  v4 = *v75;
  abb::router::Message::getRawMsg(&v72, this);
  MEMORY[0x29C2B8320](v62, v4, v72[1] - *v72);
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
    if (VinylDaleCommunication::createTransport(v30))
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
    if (VinylDaleCommunication::createTransport(v37))
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
    if (VinylDaleCommunication::createTransport(v42))
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
    if (VinylDaleCommunication::createTransport(v19))
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
    if (VinylDaleCommunication::createTransport(v26))
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
    if (VinylDaleCommunication::createTransport(v49))
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
  if (VinylDaleCommunication::createTransport(v53))
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

  return MEMORY[0x29C2B8330](v62);
}

void sub_299FC0AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B8330](&a14);
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
    result = (off_2A2031FC8[v2])(&v3, result);
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
  *a1 = &unk_2A2031FE8;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2031FE8;
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
  *v2 = &unk_2A2031FE8;
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
  *a2 = &unk_2A2031FE8;
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
    MEMORY[0x29C2B8670](v20, &v28, 1);
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
    MEMORY[0x29C2B8680](v20, v6, *(*&v26.__val_ + 8) - **&v26.__val_);
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
      v17 = off_29F293A08[(*v22 + 4)];
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
  return MEMORY[0x29C2B8690](v20);
}

void sub_299FC11AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 89) < 0)
  {
    operator delete(*(v6 - 112));
  }

  MEMORY[0x29C2B8690](va);
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

void sub_299FC1500(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032068;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032068;
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
  *v2 = &unk_2A2032068;
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
  *a2 = &unk_2A2032068;
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
    MEMORY[0x29C2B8450](v33, &v42, 1);
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
    MEMORY[0x29C2B8460](v33, v6, *(*&v52.__val_ + 8) - **&v52.__val_);
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
  return MEMORY[0x29C2B8470](v33);
}

void sub_299FC1B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
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

  MEMORY[0x29C2B8470](&a17);
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
  *a1 = &unk_2A20320D8;
  v4 = *a2;
  v5 = *a3;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a1 + 24), v4, v5, v5 - v4);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20320D8;
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
  *a1 = &unk_2A2032138;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032138;
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
  *v2 = &unk_2A2032138;
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
  *a2 = &unk_2A2032138;
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
    MEMORY[0x29C2B82A0](v45, &v60, 1);
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
    MEMORY[0x29C2B82B0](v45, v6, *(*&v70.__val_ + 8) - **&v70.__val_);
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
  return MEMORY[0x29C2B82C0](v45);
}

void sub_299FC25EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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

  MEMORY[0x29C2B82C0](&a18);
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
  *a1 = &unk_2A20320D8;
  std::vector<unsigned char>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_299FC28C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A20321B8;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20321B8;
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
  *v2 = &unk_2A20321B8;
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
  *a2 = &unk_2A20321B8;
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
    MEMORY[0x29C2B84F0](v20, &v24, 1);
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
    MEMORY[0x29C2B8500](v20, v6, *(v29 + 8) - *v29);
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

void sub_299FC2D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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
  *a1 = &unk_2A2032238;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032238;
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
  *v2 = &unk_2A2032238;
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
  *a2 = &unk_2A2032238;
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
    MEMORY[0x29C2B85E0](v19, &v23, 1);
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
    MEMORY[0x29C2B85F0](v19, v6, *(v28 + 8) - *v28);
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

void sub_299FC3310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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
  *a1 = &unk_2A20322B8;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20322B8;
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
  *v2 = &unk_2A20322B8;
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
  *a2 = &unk_2A20322B8;
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
    MEMORY[0x29C2B8610](v25, &v32, 1);
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
    MEMORY[0x29C2B8620](v25, v6, *(v38 + 8) - *v38);
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
  return MEMORY[0x29C2B8630](v25);
}

void sub_299FC3944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
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

  MEMORY[0x29C2B8630](&a14);
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

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032338;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032338;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2032338;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032338;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v27 = 0;
    v28 = 0;
    v25 = v5;
    MEMORY[0x29C2B84A0](v21, &v25, 1);
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
    MEMORY[0x29C2B84B0](v21, v6, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
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
      stringifyVal(*v23, &v25);
    }

    v11 = v24;
    if (v24)
    {
      stringifyVal(*v24, &v30);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Vad_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", v7, v8, v9, 5);
    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v25);
    }
  }

  if (mipc::operator==())
  {
    v12 = *v23;
    if (*v23)
    {
      gBBULogMaskGet();
      v20 = *v24;
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallTicket result 0x%x sw1_sw2 0x%hx\n", v13, v14, v15, *v23);
      v12 = 16;
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = v22;
    }

    v19 = &v29;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v19) = v29.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Install_Vad_Req returned error[%s].\n", v16, v17, v18, v19);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v12 = 11;
  }

  **(a1 + 16) = v12;
  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Install_Vad_Cnf::~Install_Vad_Cnf(v21);
}

void sub_299FC3EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Install_Vad_Cnf::~Install_Vad_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A20323B8;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20323B8;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A20323B8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20323B8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v27 = 0;
    v28 = 0;
    v25 = v5;
    MEMORY[0x29C2B8400](v21, &v25, 1);
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
    MEMORY[0x29C2B8410](v21, v6, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
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
      stringifyVal(*v23, &v25);
    }

    v11 = v24;
    if (v24)
    {
      stringifyVal(*v24, &v30);
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Fw_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", v7, v8, v9, 6);
    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v25);
    }
  }

  if (mipc::operator==())
  {
    v12 = *v23;
    if (*v23)
    {
      gBBULogMaskGet();
      v20 = *v24;
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Install_Fw_Cnf result 0x%x sw1_sw2 0x%hx\n", v13, v14, v15, *v23);
      v12 = 16;
    }
  }

  else
  {
    gBBULogMaskGet();
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = v22;
    }

    v19 = &v29;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v19) = v29.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Install_Fw_Req returned error[%s].\n", v16, v17, v18, v19);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v12 = 11;
  }

  **(a1 + 16) = v12;
  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Install_Fw_Cnf::~Install_Fw_Cnf(v21);
}

void sub_299FC4430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Install_Fw_Cnf::~Install_Fw_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_2A2032438;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032438;
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
  *v2 = &unk_2A2032438;
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
  *a2 = &unk_2A2032438;
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
    MEMORY[0x29C2B83B0](v21, &v26, 1);
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
    MEMORY[0x29C2B83C0](v21, v6, *(v32 + 8) - *v32);
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

void sub_299FC49FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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
  *a1 = &unk_2A20324B8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20324B8;
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
  *v2 = &unk_2A20324B8;
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
  *a2 = &unk_2A20324B8;
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
    MEMORY[0x29C2B8360](v21, &v26, 1);
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
    MEMORY[0x29C2B8370](v21, v6, *(v32 + 8) - *v32);
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

void sub_299FC4FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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
  *a1 = &unk_2A2032538;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032538;
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
  *v2 = &unk_2A2032538;
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
  *a2 = &unk_2A2032538;
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
    MEMORY[0x29C2B8540](v20, &v24, 1);
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
    MEMORY[0x29C2B8550](v20, v6, *(v29 + 8) - *v29);
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

void sub_299FC558C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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
  *a1 = &unk_2A20325B8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20325B8;
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
  *v2 = &unk_2A20325B8;
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
  *a2 = &unk_2A20325B8;
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
    MEMORY[0x29C2B8590](v21, &v26, 1);
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
    MEMORY[0x29C2B85A0](v21, v6, *(v32 + 8) - *v32);
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

void sub_299FC5B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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
  *v2 = &unk_2A2032638;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032638;
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
    MEMORY[0x29C2B82F0](v22, &v25, 1);
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
    MEMORY[0x29C2B8300](v22, v6, *(v30.__r_.__value_.__r.__words[0] + 8) - *v30.__r_.__value_.__l.__data_);
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

void sub_299FC5F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  *v2 = &unk_2A20326B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20326B8;
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
    MEMORY[0x29C2B82F0](v22, &v25, 1);
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
    MEMORY[0x29C2B8300](v22, v6, *(v30.__r_.__value_.__r.__words[0] + 8) - *v30.__r_.__value_.__l.__data_);
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

void sub_299FC638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  *v2 = &unk_2A2032738;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032738;
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
    MEMORY[0x29C2B82F0](v26, &v29, 1);
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
    MEMORY[0x29C2B8300](v26, v6, *(v34.__r_.__value_.__r.__words[0] + 8) - *v34.__r_.__value_.__l.__data_);
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

void sub_299FC67DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_75()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

void *vinyl_zipOpen2(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v68 = *MEMORY[0x29EDCA608];
  memset(__src, 0, 512);
  if (v2)
  {
    v8 = v2[1];
    __src[0] = *v2;
    __src[1] = v8;
    v9 = v2[3];
    __src[2] = v2[2];
    __src[3] = v9;
  }

  else
  {
    vinyl_fill_fopen_filefunc(__src);
  }

  if (v6)
  {
    v10 = 7;
  }

  else
  {
    v10 = 11;
  }

  v11 = (*&__src[0])(*(&__src[3] + 1), v7, v10, 1000);
  *&__src[4] = v11;
  if (!v11)
  {
    goto LABEL_75;
  }

  *&__src[1044] = (*(&__src[1] + 1))(*(&__src[3] + 1), v11);
  LODWORD(__src[13]) = 0;
  v12 = malloc(0x4160uLL);
  *(&__src[4] + 8) = 0u;
  DWORD2(__src[5]) = 0;
  *(&__src[1044] + 8) = 0u;
  if (v12)
  {
    *(&__src[1045] + 1) = 0;
    if (v6 == 2)
    {
      v65 = 0;
      v66 = 0;
      v62 = 0;
      v63 = 0;
      v60 = 0;
      v61 = 0;
      v59 = 0;
      v13 = *&__src[4];
      v53 = v4;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], 0, 2) || ((v16 = (*(&__src[1] + 1))(*(&__src[3] + 1), v13), v17 = v16, v16 >= 0xFFFF) ? (v18 = 0xFFFFLL) : (v18 = v16), (v19 = malloc(0x404uLL)) == 0))
      {
        v14 = 0;
        v57 = 0;
      }

      else
      {
        v20 = v19;
        if (v17 >= 5)
        {
          v21 = 4;
          while (2)
          {
            v22 = v21 + 1024;
            if (v21 + 1024 >= v18)
            {
              v21 = v18;
            }

            else
            {
              v21 += 1024;
            }

            v23 = v21 >= 0x404 ? 1028 : v21;
            if (!(*&__src[2])(*(&__src[3] + 1), v13, v17 - v21, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v13, v20, v23) == v23)
            {
              v24 = (v23 - 4);
              v25 = v21 - v17 - v24;
              v26 = v23 - 3;
              v27 = &v20[v24 + 1];
              while (*(v27 - 1) != 80 || *v27 != 75 || v27[1] != 5 || v27[2] != 6)
              {
                ++v25;
                --v27;
                v28 = __OFSUB__(v26--, 1);
                if ((v26 < 0) ^ v28 | (v26 == 0))
                {
                  goto LABEL_40;
                }
              }

              if (v25)
              {
                v14 = -v25;
                v57 = 1;
                goto LABEL_45;
              }

LABEL_40:
              if (v22 < v18)
              {
                continue;
              }
            }

            break;
          }
        }

        v14 = 0;
        v57 = 0;
LABEL_45:
        free(v20);
      }

      v54 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v14, 0);
      HIDWORD(v55) = unzlocal_getLong(__src, *&__src[4], &v64);
      LODWORD(v55) = unzlocal_getShort(__src, *&__src[4], &v63);
      Short = unzlocal_getShort(__src, *&__src[4], &v62);
      v29 = unzlocal_getShort(__src, *&__src[4], &v61);
      v30 = unzlocal_getShort(__src, *&__src[4], &v60);
      v31 = v61;
      v58 = v60;
      v32 = v62;
      v33 = v63;
      Long = unzlocal_getLong(__src, *&__src[4], &v66);
      v35 = unzlocal_getLong(__src, *&__src[4], &v65);
      v36 = unzlocal_getShort(__src, *&__src[4], &v59);
      v37 = v66;
      v52 = v65;
      v38 = v14 >= v66 + v65;
      v39 = v14 - (v66 + v65);
      if (!v38 || v35 | Long | v36 || v58 != v31 || v32 || v33 || !v57 || v30 || v29 || Short || v55 || v54)
      {
        (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_74:
        free(v12);
LABEL_75:
        v12 = 0;
        goto LABEL_76;
      }

      v40 = v59;
      if (v59)
      {
        v41 = malloc(v59 + 1);
        *(&__src[1045] + 1) = v41;
        if (v41)
        {
          v42 = (*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v41, v40);
          *(*(&__src[1045] + 1) + v42) = 0;
        }
      }

      *(&__src[1044] + 1) = v39;
      v43 = malloc(0xFF0uLL);
      v44 = v39;
      v45 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v39 + v52, 0);
      if (v45)
      {
        v46 = -1;
      }

      else
      {
        v46 = 0;
      }

      if (v37 && !v45)
      {
        while (1)
        {
          v47 = v37 >= 0xFF0 ? 4080 : v37;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v43, v47) != v47)
          {
            break;
          }

          v48 = add_data_in_datablock(&__src[4] + 1, v43, v47);
          v46 = v48;
          v37 -= v47;
          if (!v37 || v48)
          {
            goto LABEL_78;
          }
        }

        v46 = -1;
      }

LABEL_78:
      if (v43)
      {
        free(v43);
      }

      *&__src[1044] = v44;
      *&__src[1045] = v58;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], v44 + v52, 0))
      {
        v51 = 0;
      }

      else
      {
        v51 = v46 == 0;
      }

      v15 = v51;
      v4 = v53;
      if (!v53)
      {
LABEL_15:
        if (v15)
        {
          memcpy(v12, __src, 0x4160uLL);
          goto LABEL_76;
        }

        if (*(&__src[1045] + 1))
        {
          free(*(&__src[1045] + 1));
        }

        goto LABEL_74;
      }
    }

    else
    {
      v15 = 1;
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    *v4 = *(&__src[1045] + 1);
    goto LABEL_15;
  }

  (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_76:
  v49 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t add_data_in_datablock(void *a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967192;
  }

  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v8 = malloc(0x1010uLL);
  if (v8)
  {
    v6 = v8;
    *v8 = 0;
    *(v8 + 8) = xmmword_299FE49D0;
    *a1 = v8;
    a1[1] = v8;
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v9 = v6[1];
    while (1)
    {
      if (v9)
      {
        v10 = v6[2];
      }

      else
      {
        v11 = malloc(0x1010uLL);
        if (!v11)
        {
          *v6 = 0;
          return 4294967192;
        }

        v10 = 0;
        *v11 = 0;
        *(v11 + 8) = xmmword_299FE49D0;
        *v6 = v11;
        v9 = 4080;
        v6 = v11;
        a1[1] = v11;
      }

      if (v9 >= v3)
      {
        v12 = v3;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = v6 + v10 + 32;
        v14 = v12;
        v15 = a2;
        do
        {
          v16 = *v15++;
          *v13++ = v16;
          --v14;
        }

        while (v14);
        v9 = v6[1];
        v10 = v6[2];
      }

      v9 -= v12;
      v6[1] = v9;
      v6[2] = v10 + v12;
      a2 += v12;
      v3 -= v12;
      if (!v3)
      {
        return 0;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return 4294967192;
}

uint64_t vinyl_zipOpenNewFileInZip3(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, unsigned int a7, char *__s, int a9, int a10, int a11, int a12, int a13, int a14, _BYTE *a15, uint64_t a16)
{
  v101 = *MEMORY[0x29EDCA608];
  result = 4294967194;
  if (!a1)
  {
    goto LABEL_94;
  }

  if ((a9 & 0xFFFFFFF7) != 0)
  {
    goto LABEL_94;
  }

  if (*(a1 + 88) == 1)
  {
    result = vinyl_zipCloseFileInZipRaw(a1, 0, 0);
    if (result)
    {
      goto LABEL_94;
    }
  }

  v95 = a4;
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = "-";
  }

  v96 = a5;
  if (__s)
  {
    v26 = strlen(__s);
  }

  else
  {
    v26 = 0;
  }

  v27 = strlen(v25);
  if (a3)
  {
    v28 = *(a3 + 24);
    if (!v28)
    {
      v29 = *(a3 + 20);
      v30 = v29 - 80;
      if (v29 <= 0x50)
      {
        v30 = *(a3 + 20);
      }

      if (v29 <= 0x7BC)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29 - 1980;
      }

      v28 = ((32 * *(a3 + 4) + (*a3 >> 1)) + (*(a3 + 8) << 11)) | (((*(a3 + 12) + 32 * *(a3 + 16) + 32) << 16) + (v31 << 25));
    }
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 16640) = v28;
  v32 = 2 * ((a10 & 0xFFFFFFFE) == 8);
  *(a1 + 240) = v32;
  if (a10 == 2)
  {
    v32 = 4;
  }

  else
  {
    if (a10 != 1)
    {
      goto LABEL_25;
    }

    v32 = 6;
  }

  *(a1 + 240) = v32;
LABEL_25:
  if (a15)
  {
    *(a1 + 240) = v32 | 1;
  }

  *(a1 + 16648) = 0;
  *(a1 + 16656) = 0;
  *(a1 + 208) = 0;
  *(a1 + 248) = a9;
  *(a1 + 252) = a11;
  v33 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  *(a1 + 216) = v33;
  v34 = a7 + v26 + v27 + 46;
  *(a1 + 232) = v34;
  v35 = malloc(v34);
  *(a1 + 224) = v35;
  *v35 = 33639248;
  v35[1] = 1310720;
  v36 = *(a1 + 240);
  *(v35 + 4) = v36;
  if (v36 >= 0x10000)
  {
    *(v35 + 4) = -1;
  }

  v37 = *(a1 + 248);
  *(v35 + 5) = v37;
  if (v37 >= 0x10000)
  {
    *(v35 + 5) = -1;
  }

  v38 = 0;
  v39 = v35 + 3;
  v40 = *(a1 + 16640);
  do
  {
    v41 = v40;
    *(v39 + v38) = v40;
    v40 >>= 8;
    ++v38;
  }

  while (v38 != 4);
  if (v41 >= 0x100)
  {
    *v39 = -1;
  }

  *(v35 + 2) = 0;
  v35[6] = 0;
  *(v35 + 14) = v27;
  if (v27 >= 0x10000uLL)
  {
    *(v35 + 14) = -1;
  }

  *(v35 + 15) = a7;
  if (a7 >= 0x10000)
  {
    *(v35 + 15) = -1;
  }

  *(v35 + 16) = v26;
  if (v26 >= 0x10000)
  {
    *(v35 + 16) = -1;
  }

  *(v35 + 17) = 0;
  v42 = v26;
  if (a3)
  {
    v43 = *(a3 + 32);
    *(v35 + 18) = v43;
    if (v43 >= 0x10000)
    {
      *(v35 + 18) = -1;
    }

    v44 = 0;
    v45 = (v35 + 38);
    v46 = *(a3 + 40);
    do
    {
      v47 = v46;
      *(v45 + v44) = v46;
      v46 >>= 8;
      ++v44;
    }

    while (v44 != 4);
    if (v47 >= 0x100)
    {
      *v45 = -1;
    }
  }

  else
  {
    *(v35 + 18) = 0;
    *(v35 + 38) = 0;
  }

  v48 = 0;
  v49 = (v35 + 42);
  v50 = v33 - *(a1 + 16712);
  do
  {
    v51 = v50;
    *(v49 + v48) = v50;
    v50 >>= 8;
    ++v48;
  }

  while (v48 != 4);
  if (v51 >= 0x100)
  {
    *v49 = -1;
  }

  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      *(*(a1 + 224) + i + 46) = v25[i];
    }
  }

  if (a7)
  {
    v53 = v27 + 46;
    v54 = a7;
    do
    {
      v55 = *a6++;
      *(*(a1 + 224) + v53++) = v55;
      --v54;
    }

    while (v54);
  }

  if (v26)
  {
    v56 = a7 + v27 + 46;
    do
    {
      v57 = *__s++;
      *(*(a1 + 224) + v56++) = v57;
      --v42;
    }

    while (v42);
  }

  if (!*(a1 + 224))
  {
    result = 4294967192;
    goto LABEL_94;
  }

  v97[0] = 67324752;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  LOWORD(v97[0]) = 20;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v58 = *(a1 + 64);
  v59 = *(a1 + 240);
  LOWORD(v97[0]) = v59;
  if (v59 >= 0x10000)
  {
    LOWORD(v97[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v58, v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v60 = *(a1 + 64);
  v61 = *(a1 + 248);
  LOWORD(v97[0]) = v61;
  if (v61 >= 0x10000)
  {
    LOWORD(v97[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v60, v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v62 = 0;
  v63 = *(a1 + 64);
  v64 = *(a1 + 16640);
  do
  {
    v65 = v64;
    *(v97 + v62) = v64;
    v64 >>= 8;
    ++v62;
  }

  while (v62 != 4);
  if (v65 >= 0x100)
  {
    v97[0] = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v63, v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v97[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v97[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v97[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v66 = *(a1 + 64);
  LOWORD(v97[0]) = v27;
  if (v27 >= 0x10000uLL)
  {
    LOWORD(v97[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v66, v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v67 = *(a1 + 64);
  LOWORD(v97[0]) = v96;
  if (v96 >= 0x10000)
  {
    LOWORD(v97[0]) = -1;
  }

  v68 = (*(a1 + 16))(*(a1 + 56), v67, v97, 2);
  v69 = v68 != 2;
  if (v68 == 2 && v27)
  {
    v69 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v25, v27) != v27;
  }

  v70 = v96;
  if (v96 && !v69)
  {
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v95, v96) == v70)
    {
      *(a1 + 104) = 0;
      *(a1 + 128) = 0x4000;
      *(a1 + 112) = 0;
      *(a1 + 120) = a1 + 256;
      *(a1 + 136) = 0;
      v71 = a1 + 0x4000;
      v72 = a15;
      goto LABEL_97;
    }

LABEL_91:
    *(a1 + 104) = 0;
    *(a1 + 128) = 0x4000;
    *(a1 + 112) = 0;
    *(a1 + 120) = a1 + 256;
    result = 0xFFFFFFFFLL;
    *(a1 + 136) = 0;
    v71 = a1 + 0x4000;
    goto LABEL_92;
  }

  *(a1 + 104) = 0;
  *(a1 + 128) = 0x4000;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 256;
  *(a1 + 136) = 0;
  v71 = a1 + 0x4000;
  v72 = a15;
  if (v69)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_92;
  }

LABEL_97:
  if (*(a1 + 248) != 8 || *(a1 + 252))
  {
    goto LABEL_99;
  }

  if (a12 < 0)
  {
    v94 = a12;
  }

  else
  {
    v94 = -a12;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = deflateInit2_((a1 + 96), a10, 8, v94, a13, a14, "1.2.12", 112);
  if (result)
  {
LABEL_92:
    *(v71 + 312) = 0;
    goto LABEL_94;
  }

  *(a1 + 208) = 1;
  v72 = a15;
LABEL_99:
  *(v71 + 312) = 0;
  if (!v72)
  {
    goto LABEL_107;
  }

  *(v71 + 272) = 1;
  crc_table = get_crc_table();
  *(a1 + 16688) = crc_table;
  if (!crypthead_calls++)
  {
    v76 = time(0);
    srand(v76 ^ 0xBB40E64E);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  for (j = 0; j != 10; v100[j++] = (((v79 & 0xFFFD ^ 3) * (v79 | 2)) >> 8) ^ (v78 >> 7))
  {
    v78 = rand();
    v79 = *(a1 + 16680);
    v80 = crc_table[(*(a1 + 16664) ^ (v78 >> 7))] ^ (*(a1 + 16664) >> 8);
    *(a1 + 16664) = v80;
    v81 = 134775813 * (*(a1 + 16672) + v80) + 1;
    *(a1 + 16672) = v81;
    *(a1 + 16680) = crc_table[(v79 ^ BYTE3(v81))] ^ (v79 >> 8);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  v82 = 0;
  v83 = *(a1 + 16680);
  v84 = *(a1 + 16664);
  v85 = *(a1 + 16672);
  do
  {
    v86 = (v83 & 0xFFFD ^ 3) * (v83 | 2);
    v87 = v100[v82];
    v84 = crc_table[(v87 ^ v84)] ^ (v84 >> 8);
    *(a1 + 16664) = v84;
    v85 = 134775813 * (v85 + v84) + 1;
    *(a1 + 16672) = v85;
    v83 = crc_table[(v83 ^ BYTE3(v85))] ^ (v83 >> 8);
    *(a1 + 16680) = v83;
    *(v97 + v82++) = v87 ^ HIBYTE(v86);
  }

  while (v82 != 10);
  v88 = ((v83 & 0xFFFFFFFD ^ 3) * (v83 | 2)) >> 8;
  v89 = crc_table[(v84 ^ BYTE2(a16))] ^ (v84 >> 8);
  *(a1 + 16664) = v89;
  v90 = 134775813 * (v85 + v89) + 1;
  *(a1 + 16672) = v90;
  v91 = crc_table[(v83 ^ BYTE3(v90))] ^ (v83 >> 8);
  *(a1 + 16680) = v91;
  v98 = v88 ^ BYTE2(a16);
  v92 = crc_table[v89 ^ BYTE3(a16)] ^ (v89 >> 8);
  *(a1 + 16664) = v92;
  v93 = 134775813 * (v90 + v92) + 1;
  *(a1 + 16672) = v93;
  *(a1 + 16680) = crc_table[(v91 ^ BYTE3(v93))] ^ (v91 >> 8);
  v99 = (((v91 & 0xFFFD ^ 3) * (v91 | 2)) >> 8) ^ BYTE3(a16);
  *(a1 + 16696) = 12;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 12) != 12)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_107:
    result = 0;
    *(a1 + 88) = 1;
  }

LABEL_94:
  v73 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t vinyl_zipWriteInFileInZip(uint64_t a1, const Bytef *a2, uInt a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 16648) = crc32(*(a1 + 16648), a2, a3);
  while (*(a1 + 104))
  {
    v4 = *(a1 + 128);
    if (v4 || (result = zipFlushWriteBuffer(a1), v4 = 0x4000, *(a1 + 128) = 0x4000, *(a1 + 120) = a1 + 256, result != -1))
    {
      if (*(a1 + 248) == 8 && !*(a1 + 252))
      {
        v10 = *(a1 + 136);
        result = deflate((a1 + 96), 0);
        LODWORD(v7) = *(a1 + 136) - v10;
      }

      else
      {
        v6 = *(a1 + 104);
        v7 = v6 >= v4 ? v4 : v6;
        if (v6)
        {
          v8 = 0;
          do
          {
            *(*(a1 + 120) + v8) = *(*(a1 + 96) + v8);
            ++v8;
          }

          while (v7 != v8);
          v6 = *(a1 + 104);
          v4 = *(a1 + 128);
        }

        result = 0;
        *(a1 + 104) = v6 - v7;
        *(a1 + 128) = v4 - v7;
        *(a1 + 96) += v7;
        v9 = *(a1 + 120) + v7;
        *(a1 + 112) += v7;
        *(a1 + 120) = v9;
        *(a1 + 136) += v7;
      }

      *(a1 + 212) += v7;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t zipFlushWriteBuffer(uint64_t a1)
{
  v2 = *(a1 + 212);
  if (*(a1 + 16656) && v2)
  {
    v3 = (a1 + 256);
    v4 = *(a1 + 212);
    do
    {
      v5 = *(a1 + 16680);
      v6 = *(a1 + 16688);
      v7 = *(v6 + 8 * (*v3 ^ *(a1 + 16664))) ^ (*(a1 + 16664) >> 8);
      *(a1 + 16664) = v7;
      v8 = 134775813 * (*(a1 + 16672) + v7) + 1;
      *(a1 + 16672) = v8;
      *(a1 + 16680) = *(v6 + 8 * (v5 ^ BYTE3(v8))) ^ (v5 >> 8);
      *v3++ ^= ((v5 & 0xFFFD ^ 3) * (v5 | 2)) >> 8;
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), a1 + 256, v2) == *(a1 + 212))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(a1 + 212) = 0;
  return result;
}

uint64_t vinyl_zipCloseFileInZipRaw(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 104) = 0;
  if (*(a1 + 248) == 8 && !*(a1 + 252))
  {
    do
    {
      if (!*(a1 + 128))
      {
        v33 = zipFlushWriteBuffer(a1);
        *(a1 + 128) = 0x4000;
        *(a1 + 120) = a1 + 256;
        if (v33 == -1)
        {
          v6 = 0xFFFFFFFFLL;
          goto LABEL_10;
        }
      }

      v34 = *(a1 + 136);
      v35 = deflate((a1 + 96), 4);
      *(a1 + 212) += *(a1 + 136) - v34;
    }

    while (!v35);
    if (v35 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v35;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 212))
  {
    if (zipFlushWriteBuffer(a1) == -1)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_10:
  if (*(a1 + 248) == 8 && !(*(a1 + 252) | v6))
  {
    v6 = deflateEnd((a1 + 96));
    *(a1 + 208) = 0;
  }

  if (!*(a1 + 252))
  {
    a3 = *(a1 + 16648);
    a2 = *(a1 + 112);
  }

  v7 = 0;
  v8 = *(a1 + 136);
  v9 = *(a1 + 16696);
  v10 = (*(a1 + 224) + 16);
  v11 = a3;
  do
  {
    v12 = v11;
    *(v10 + v7) = v11;
    v11 >>= 8;
    ++v7;
  }

  while (v7 != 4);
  v13 = v8 + v9;
  if (v12 >= 0x100)
  {
    *v10 = -1;
  }

  v14 = 0;
  v15 = (*(a1 + 224) + 20);
  v16 = v8 + v9;
  do
  {
    v17 = v16;
    *(v15 + v14) = v16;
    v16 >>= 8;
    ++v14;
  }

  while (v14 != 4);
  if (v17 >= 0x100)
  {
    *v15 = -1;
  }

  if (*(a1 + 184) == 1)
  {
    *(*(a1 + 224) + 36) = 1;
  }

  v18 = 0;
  v19 = (*(a1 + 224) + 24);
  v20 = a2;
  do
  {
    v21 = v20;
    *(v19 + v18) = v20;
    v20 >>= 8;
    ++v18;
  }

  while (v18 != 4);
  if (v21 >= 0x100)
  {
    *v19 = -1;
  }

  if (v6)
  {
    free(*(a1 + 224));
  }

  else
  {
    v6 = add_data_in_datablock((a1 + 72), *(a1 + 224), *(a1 + 232));
    free(*(a1 + 224));
    if (!v6)
    {
      v22 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 216) + 14, 0))
      {
        goto LABEL_59;
      }

      v23 = 0;
      v24 = *(a1 + 64);
      do
      {
        v25 = a3;
        *(&v37 + v23) = a3;
        a3 >>= 8;
        ++v23;
      }

      while (v23 != 4);
      if (v25 >= 0x100)
      {
        v37 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v24, &v37, 4) != 4)
      {
        goto LABEL_59;
      }

      v26 = 0;
      v27 = *(a1 + 64);
      do
      {
        v28 = v13;
        *(&v38 + v26) = v13;
        v13 >>= 8;
        ++v26;
      }

      while (v26 != 4);
      if (v28 >= 0x100)
      {
        v38 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v27, &v38, 4) == 4)
      {
        v29 = 0;
        v30 = *(a1 + 64);
        do
        {
          v31 = a2;
          *(&v39 + v29) = a2;
          a2 >>= 8;
          ++v29;
        }

        while (v29 != 4);
        if (v31 >= 0x100)
        {
          v39 = -1;
        }

        if ((*(a1 + 16))(*(a1 + 56), v30, &v39, 4) == 4)
        {
          v32 = 0;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
LABEL_59:
        v32 = -1;
      }

      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v22, 0))
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = v32;
      }
    }
  }

  ++*(a1 + 16720);
  *(a1 + 88) = 0;
  return v6;
}

uint64_t vinyl_zipClose(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a2;
  if (*(a1 + 88) != 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = strlen(v2);
    goto LABEL_9;
  }

  v4 = vinyl_zipCloseFileInZipRaw(a1, 0, 0);
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v2 = *(a1 + 16728);
  if (v2)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  v7 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  if (!v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v8 = 0;
      v4 = 0;
      do
      {
        v10 = v9[2];
        if (v4)
        {
          v4 = -1;
        }

        else if (v10)
        {
          v11 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v9 + 4);
          v10 = v9[2];
          if (v11 == v10)
          {
            v4 = 0;
          }

          else
          {
            v4 = -1;
          }
        }

        else
        {
          v4 = 0;
        }

        v8 += v10;
        v9 = *v9;
      }

      while (v9);
      goto LABEL_21;
    }

    v4 = 0;
  }

  v8 = 0;
LABEL_21:
  v12 = *(a1 + 72);
  if (v12)
  {
    do
    {
      v13 = *v12;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  if (!v4)
  {
    v31 = 101010256;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 16720);
    LOWORD(v31) = v15;
    if (v15 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v14, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 16720);
    LOWORD(v31) = v17;
    if (v17 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v16, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v18 = 0;
    v19 = *(a1 + 64);
    do
    {
      v20 = v8;
      *(&v31 + v18) = v8;
      v8 >>= 8;
      ++v18;
    }

    while (v18 != 4);
    if (v20 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v19, &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    v21 = 0;
    v22 = *(a1 + 64);
    v23 = v7 - *(a1 + 16712);
    do
    {
      v24 = v23;
      *(&v31 + v21) = v23;
      v23 >>= 8;
      ++v21;
    }

    while (v21 != 4);
    if (v24 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v22, &v31, 4) == 4)
    {
      v25 = *(a1 + 64);
      LOWORD(v31) = v6;
      if (v6 >= 0x10000)
      {
        LOWORD(v31) = -1;
      }

      v26 = (*(a1 + 16))(*(a1 + 56), v25, &v31, 2);
      if (v26 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }

      if (v26 == 2 && v6)
      {
        if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v2, v6) == v6)
        {
          v4 = 0;
        }

        else
        {
          v4 = -1;
        }
      }
    }

    else
    {
LABEL_53:
      v4 = -1;
    }
  }

  v27 = (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = -1;
  }

  if (v27)
  {
    v5 = v28;
  }

  else
  {
    v5 = v4;
  }

  v29 = *(a1 + 16728);
  if (v29)
  {
    free(v29);
  }

  free(a1);
  return v5;
}

_BYTE *init_keys(_BYTE *result, void *a2, uint64_t a3)
{
  *a2 = xmmword_299FE2E80;
  a2[2] = 878082192;
  v3 = *result;
  if (*result)
  {
    v6 = result + 1;
    do
    {
      result = update_keys(a2, a3, v3);
      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t update_keys(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  v4 = 134775813 * (a1[1] + v3) + 1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(v4))) ^ (a1[2] >> 8);
  return a3;
}

uint64_t Options::Options(uint64_t a1, const __CFDictionary **a2)
{
  v74 = *MEMORY[0x29EDCA608];
  *a1 = 255;
  *(a1 + 4) = 0;
  v4 = (a1 + 4);
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "");
  *(a1 + 80) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 88), "");
  v5 = (a1 + 112);
  std::string::basic_string[abi:ne200100]<0>((a1 + 112), "");
  *(a1 + 136) = 0;
  v6 = (a1 + 144);
  std::string::basic_string[abi:ne200100]<0>((a1 + 144), "");
  *(a1 + 168) = 0;
  if (*a2)
  {
    ctu::cf::dict_adapter::dict_adapter(v64, *a2);
    Value = CFDictionaryGetValue(*a2, @"BasebandUpdater");
    ctu::cf::dict_adapter::dict_adapter(v63, Value);
    v8 = *(a1 + 11);
    *(a1 + 11) = ctu::cf::map_adapter::getBool(v63, @"VinylForceGold");
    v9 = *(a1 + 10);
    *(a1 + 10) = ctu::cf::map_adapter::getBool(v63, @"VinylForceMain");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = *__p;
    *(a1 + 40) = v66;
    v10 = *(a1 + 20);
    *(a1 + 20) = ctu::cf::map_adapter::getInt(v63, @"BypassPairing");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *__p;
    *(a1 + 72) = v66;
    v11 = *(a1 + 80);
    *(a1 + 80) = ctu::cf::map_adapter::getBool(v64, @"VinylTwoPhasePresenceCheck");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 88) = *__p;
    *(a1 + 104) = v66;
    ctu::cf::map_adapter::getString();
    if (*(a1 + 135) < 0)
    {
      operator delete(*v5);
    }

    *v5 = *__p;
    *(a1 + 128) = v66;
    v12 = *(a1 + 135);
    if (v12 < 0)
    {
      v13 = *(a1 + 112);
      v12 = *(a1 + 120);
    }

    else
    {
      v13 = (a1 + 112);
    }

    v14 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(v13, &v13[v12], isblank);
    v15 = *(a1 + 135);
    if (v15 < 0)
    {
      v17 = *(a1 + 112);
      v16 = (v17 + *(a1 + 120));
    }

    else
    {
      v16 = v5 + v15;
      v17 = a1 + 112;
    }

    std::string::erase((a1 + 112), &v14[-v17], v16 - v14);
    v18 = *(a1 + 135);
    if (v18 < 0)
    {
      v19 = *(a1 + 112);
      v18 = *(a1 + 120);
    }

    else
    {
      v19 = (a1 + 112);
    }

    v20 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(v19, &v19[v18], iscntrl);
    v21 = *(a1 + 135);
    if (v21 < 0)
    {
      v23 = *(a1 + 112);
      v22 = (v23 + *(a1 + 120));
    }

    else
    {
      v22 = v5 + v21;
      v23 = a1 + 112;
    }

    std::string::erase((a1 + 112), &v20[-v23], v22 - v20);
    v24 = *(a1 + 136);
    *(a1 + 136) = ctu::cf::map_adapter::getBool(v64, @"VinylSkipProvisioning");
    v25 = *(a1 + 137);
    *(a1 + 137) = ctu::cf::map_adapter::getBool(v64, @"OptimizeRefurbFirmwareUpdatePath");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 167) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *__p;
    *(a1 + 160) = v66;
    v26 = *(a1 + 167);
    if (v26 < 0)
    {
      v27 = *(a1 + 144);
      v28 = *(a1 + 152);
    }

    else
    {
      v27 = (a1 + 144);
      v28 = *(a1 + 167);
    }

    v29 = &v27[v28];
    if (v28 >= 2)
    {
      v30 = v27;
      do
      {
        v31 = memchr(v30, 45, v28 - 1);
        if (!v31)
        {
          break;
        }

        if (*v31 == 26157)
        {
          goto LABEL_33;
        }

        v30 = v31 + 1;
        v28 = v29 - v30;
      }

      while (v29 - v30 > 1);
    }

    v31 = v29;
LABEL_33:
    v33 = v31 != v29 && v31 - v27 != -1;
    *(a1 + 168) = v33;
    if ((v26 & 0x80000000) != 0)
    {
      v34 = *(a1 + 144);
      v26 = *(a1 + 152);
    }

    else
    {
      v34 = (a1 + 144);
    }

    v35 = &v34[v26];
    if (v26 >= 2)
    {
      v36 = v34;
      do
      {
        v37 = memchr(v36, 45, v26 - 1);
        if (!v37)
        {
          break;
        }

        if (*v37 == 25389)
        {
          goto LABEL_48;
        }

        v36 = v37 + 1;
        v26 = v35 - v36;
      }

      while (v35 - v36 > 1);
    }

    v37 = v35;
LABEL_48:
    v39 = v37 != v35 && v37 - v34 != -1;
    *(a1 + 169) = v39;
    v40 = *(a1 + 8);
    if (ctu::cf::map_adapter::getBool(v63, @"VinylSkipAll"))
    {
      v41 = 1;
    }

    else
    {
      v41 = ctu::cf::map_adapter::getBool(v64, @"UpdateBaseband") ^ 1;
    }

    *(a1 + 8) = v41;
    v42 = *(a1 + 9);
    *(a1 + 9) = ctu::cf::map_adapter::getBool(v63, @"VinylOnlyPerso");
    if (ctu::cf::map_adapter::getBool(v63, @"VinylUse4FF"))
    {
      *a1 = 1;
    }

    if (BBUpdaterCommon::isNVRAMKeyPresent(@"VinylForceGenericUpdate", v43))
    {
      *(a1 + 10) = 257;
    }

    v44 = *(a1 + 13);
    *(a1 + 13) = ctu::cf::map_adapter::getBool(v64, @"VinylVerifyPairing");
    v45 = *(a1 + 12);
    *(a1 + 12) = ctu::cf::map_adapter::getBool(v64, @"VinylInstallSealingManifest");
    v46 = *(a1 + 16);
    *(a1 + 16) = ctu::cf::map_adapter::getInt(v64, @"VinylPairingAuthTest");
    __p[0] = 0;
    __p[1] = 0;
    v66 = 0;
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }

    v47 = v62;
    v48 = v62;
    if ((v62 & 0x80u) != 0)
    {
      v47 = v61[1];
    }

    if (v47)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Bootstrap");
      v67 = 1;
      std::string::basic_string[abi:ne200100]<0>(v68, "All");
      v69 = 2;
      std::string::basic_string[abi:ne200100]<0>(v70, "Bootstrap Preferences");
      v71 = 3;
      std::string::basic_string[abi:ne200100]<0>(v72, "All Preferences");
      v73 = 4;
      std::map<std::string,VinylRefurbAction,BBUpdaterCommon::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,VinylRefurbAction>>>::map[abi:ne200100](v59, __p, 4);
      for (i = 0; i != -16; i -= 4)
      {
        if (SHIBYTE(v72[i + 2]) < 0)
        {
          operator delete(v72[i]);
        }
      }

      v50 = std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::find<std::string>(v59, v61);
      if (&v60 == v50)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        v57 = exception;
        v58 = v61;
        if ((v62 & 0x80u) != 0)
        {
          LOBYTE(v58) = v61[0];
        }

        _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Options/eUICCOptions.cpp", 0x57u, "Invalid Refurb Option %s", v54, v55, v56, v58);
      }

      *v4 = *(v50 + 56);
      std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(v59, v60);
      v48 = v62;
    }

    if ((v48 & 0x80) != 0)
    {
      operator delete(v61[0]);
    }

    MEMORY[0x29C2B8210](v63);
    MEMORY[0x29C2B8210](v64);
  }

  v51 = *MEMORY[0x29EDCA608];
  return a1;
}