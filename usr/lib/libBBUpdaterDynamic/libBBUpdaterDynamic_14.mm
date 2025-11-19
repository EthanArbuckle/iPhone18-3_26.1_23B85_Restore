void sub_1E52F5F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52F5F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 63) < 0)
      {
        operator delete(*(v2 + 40));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v14 = *a1;
    *a1 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v4 = operator new(8 * a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
    v4 = *a1;
  }

  *(a1 + 8) = a2;
  bzero(v4, 8 * a2);
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  if (v8)
  {
    v9 = v6[1];
    v10 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v11 = v9 & v10;
      *(v4 + v11) = v7;
      while (1)
      {
        v12 = *v6;
        if (!*v6)
        {
          break;
        }

        v13 = v12[1] & v10;
        if (v13 == v11)
        {
          v6 = *v6;
        }

        else if (*(v4 + v13))
        {
          *v6 = *v12;
          *v12 = **(v4 + v13);
          **(v4 + v13) = v12;
        }

        else
        {
          *(v4 + v13) = v6;
          v6 = v12;
          v11 = v13;
        }
      }

      return;
    }

    if (v9 >= a2)
    {
      v9 %= a2;
    }

    *(v4 + v9) = v7;
    v15 = *v6;
    if (*v6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 >= a2)
        {
          v16 %= a2;
        }

        if (v16 == v9)
        {
          goto LABEL_23;
        }

        if (*(v4 + v16))
        {
          *v6 = *v15;
          *v15 = **(v4 + v16);
          **(v4 + v16) = v15;
          v15 = v6;
LABEL_23:
          v6 = v15;
          v15 = *v15;
          if (!v15)
          {
            return;
          }
        }

        else
        {
          *(v4 + v16) = v6;
          v6 = v15;
          v15 = *v15;
          v9 = v16;
          if (!v15)
          {
            return;
          }
        }
      }
    }
  }
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],std::string&,0>(std::string *a1, char *__s, __int128 *a3)
{
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
      v11 = 25;
    }

    else
    {
      v11 = (v6 | 7) + 1;
    }

    v8 = operator new(v11);
    a1->__r_.__value_.__l.__size_ = v7;
    a1->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    a1->__r_.__value_.__r.__words[0] = v8;
LABEL_10:
    memmove(v8, __s, v7);
    *(v8 + v7) = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  *(&a1->__r_.__value_.__s + 23) = v6;
  v8 = a1;
  if (v6)
  {
    goto LABEL_10;
  }

  a1->__r_.__value_.__s.__data_[0] = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
LABEL_5:
    v9 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v9;
    return a1;
  }

LABEL_11:
  std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  return a1;
}

void sub_1E52F623C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_NS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_S8_EEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(*(a1 + 32), __p);
  v2 = v6;
  if (v6)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v15 = *v4;
      if (*(v4 + 63) < 0)
      {
        operator delete(v4[5]);
        if (*(v4 + 39) < 0)
        {
LABEL_16:
          operator delete(v4[2]);
        }
      }

      else if (*(v4 + 39) < 0)
      {
        goto LABEL_16;
      }

      operator delete(v4);
      v4 = v15;
    }

    while (v15);
  }

  *(a1 + 16) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    bzero(*a1, 8 * v5);
  }

  *(a1 + 24) = 0;
LABEL_6:
  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_NS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_S8_EEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(*(a1 + 32), __p);
  v2 = v6;
  if (v6)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

__n128 ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

__n128 ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

uint64_t __cxx_global_var_init_21()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUFusing::BBUFusing(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F5F03778;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 55) = 0;
  *(result + 32) = 0;
  *(result + 79) = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUFusing.cpp", 0x13u, "Failed to get feedback", v4, v5, v6, v7);
  }

  return result;
}

void sub_1E52F6748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

void BBUFusing::~BBUFusing(void **this)
{
  *this = &unk_1F5F03778;
  if ((*(this + 79) & 0x80000000) == 0)
  {
    if ((*(this + 55) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[4]);
    return;
  }

  operator delete(this[7]);
  if (*(this + 55) < 0)
  {
    goto LABEL_5;
  }
}

_DWORD *BBUFusing::create(capabilities::updater *a1, uint64_t a2)
{
  FusingType = capabilities::updater::getFusingType(a1);
  if (FusingType == 1)
  {
    v6 = operator new(0x60uLL);
    v7 = BBUFusing::BBUFusing(v6, a1, a2);
    *v6 = &unk_1F5F02F38;
    v8 = capabilities::fusing::modeSetTimeout(v7);
    v6[21] = v8;
    v6[22] = capabilities::fusing::commandTimeout(v8);
    *v6 = &unk_1F5F068C8;
    return v6;
  }

  else
  {
    if (!FusingType || FusingType == 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUFusing.cpp", 0x26u, "Unrecognized radio type!", v10, v11, v12, v13);
    }

    return 0;
  }
}

void sub_1E52F691C(_Unwind_Exception *a1)
{
  BBUFusing::~BBUFusing(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void DaleTransport_BootLoader::create(int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x10uLL);
  *v4 = a1;
  *(v4 + 1) = 0;
  v5 = DaleTransport_BootLoader::init(v4);
  if (v5)
  {
    *a2 = v4;
  }

  else
  {
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
    v6 = *(v4 + 1);
    *(v4 + 1) = 0;
    if (v6)
    {
      support::transport::airship::~airship(v6);
      operator delete(v7);
    }

    operator delete(v4);
  }
}

void sub_1E52F6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<DaleTransport_BootLoader>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<DaleTransport_BootLoader>::~unique_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

uint64_t DaleTransport_BootLoader::init(support::transport::airship **this)
{
  ACFULogging::getLogInstance(this);
  v2 = *this;
  if (v2 <= 3)
  {
    v3 = off_1E876E838[v2];
  }

  ACFULogging::handleMessage();
  v4 = *this;
  if (*this <= 1)
  {
    if (v4 == 1)
    {
      v6 = *this;
    }

    else
    {
      v6 = 0;
      if (!v4)
      {
        ACFULogging::getLogInstance(0);
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (v4 == 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  support::transport::airship::create(v6, &v12);
  v7 = v12;
  v12 = 0;
  v8 = this[1];
  this[1] = v7;
  if (v8)
  {
    support::transport::airship::~airship(v8);
    operator delete(v9);
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      support::transport::airship::~airship(v8);
      operator delete(v10);
    }

    v7 = this[1];
  }

  if (v7)
  {
    return 1;
  }

  ACFULogging::getLogInstance(v8);
LABEL_21:
  ACFULogging::handleMessage();
  return 0;
}

void **std::unique_ptr<DaleTransport_BootLoader>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL DaleTransport_BootLoader::write(DaleTransport_BootLoader *this, const DaleImage *a2)
{
  if (a2)
  {
    v3 = this;
    this = DaleImage::getSize(a2);
    if (this)
    {
      v4 = this;
      v5 = 0;
      while (1)
      {
        v6 = v4 == 0;
        if (!v4)
        {
          return v6;
        }

        v7 = v4 >= 0x800000 ? 0x800000 : v4;
        v18 = 0xAAAAAAAAAAAAAAAALL;
        DaleImage::getData(a2, v5, v7, &v18);
        if (!v18)
        {
          break;
        }

        v8 = *(v3 + 1);
        DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(v18);
        v10 = support::transport::airship::write(v8, DataPtr, v7);
        if ((v10 & 1) == 0)
        {
          ACFULogging::getLogInstance(v10);
LABEL_15:
          ACFULogging::handleMessage();
          v14 = 0;
          v15 = v18;
          v18 = 0;
          if (!v15)
          {
            goto LABEL_4;
          }

LABEL_12:
          v16 = MEMORY[0x1E69262B0](v15, v11, v12, v13);
          operator delete(v16);
          goto LABEL_4;
        }

        v5 += v7;
        v4 -= v7;
        v14 = 1;
        v15 = v18;
        v18 = 0;
        if (v15)
        {
          goto LABEL_12;
        }

LABEL_4:
        if ((v14 & 1) == 0)
        {
          return v6;
        }
      }

      ACFULogging::getLogInstance(0);
      goto LABEL_15;
    }
  }

  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  return 0;
}

void sub_1E52F6D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUMatureProvisioningData::~BBUMatureProvisioningData(BBUMatureProvisioningData *this)
{
  *this = &unk_1F5F037C0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  *this = &unk_1F5F037C0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  operator delete(this);
}

uint64_t BBUMatureProvisioningData::loadDataSourceToData(uint64_t a1, const void **a2, uint64_t a3)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = a1;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a1 = v15;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    _BBULog(20, 0, v5, "", "\n", v6, v7, v8, v23);
  }

LABEL_5:
  v9 = (*(*a3 + 24))(a3);
  v10 = operator new[](v9);
  v24 = -1431655766;
  (*(*a3 + 16))(a3, v10, v9, &v24, 0);
  if (v24 != v9)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUMatureProvisioningData.cpp", 0x30u, "Assertion failure(amountCopied == dataSize && Unable to copy manifest data to finish provisioning.)", v17, v18, v19, v23);
    goto LABEL_14;
  }

  v11 = CFDataCreate(*MEMORY[0x1E695E480], v10, v9);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUMatureProvisioningData.cpp", 0x33u, "Assertion failure(success && Unable to copy manifest data to finish provisioning.)", v20, v21, v22, v23);
LABEL_14:
  }

  v12 = v11;
  v13 = *a2;
  *a2 = v12;
  if (v13)
  {
    CFRelease(v13);
  }

  operator delete[](v10);
  return 0;
}

_DWORD *BBUProvisioner::create(BBUProvisioner *this, BBUFeedback *a2)
{
  result = capabilities::updater::getProvisionerType(this);
  if (result)
  {
    if (result == 1)
    {
      result = operator new(0x18uLL);
      result[4] = 0;
      *(result + 20) = 1;
      *result = &unk_1F5F03FF0;
      *(result + 1) = this;
    }

    else if (result == 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioner.cpp", 0x1Au, "Assertion failure(false && Unrecognized radio type.)", v6, v7, v8, v9);
    }
  }

  else
  {
    v4 = operator new(0x20uLL);
    BBUEURProvisioner::BBUEURProvisioner(v4, this, 0);
    result = v4;
    *v4 = &unk_1F5F03800;
  }

  return result;
}

unint64_t BBUProvisioner::begin(uint64_t a1, char **lpsrc, uint64_t a3, capabilities::euicc *a4)
{
  if (lpsrc)
  {
    v7 = **lpsrc;
    result = eUICC::getEID(a4, a3, *(a1 + 8));
    if (result == 126)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    result = eUICC::getEID(a4, a3, *(a1 + 8));
    if (result == 126)
    {
      return result;
    }
  }

  if (*(a1 + 16) != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioner.cpp", 0x3Bu, "Assertion failure(false && Invalid BBU provisionin support type.)", v12, v13, v14, v15);
  }

  v10 = *(*a1 + 48);

  return v10(a1, v8, a3, a4);
}

uint64_t BBUProvisioner::finish(_DWORD *a1, char **lpsrc)
{
  if (lpsrc)
  {
    v2 = **lpsrc;
    v3 = a1;
    a1 = v3;
  }

  if (a1[4] != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioner.cpp", 0x4Fu, "Assertion failure(false && Invalid BBU provisionin support type.)", v7, v8, v9, v10);
  }

  v4 = *(*a1 + 56);

  return v4();
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void support::transport::getLogClient(support::transport *this)
{
  if ((atomic_load_explicit(&qword_1ED948EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EE0))
  {
    std::string::basic_string[abi:ne200100]<0>(&v2, "com.apple.telephony.basebandservices");
    std::string::basic_string[abi:ne200100]<0>(&__p, "airship");
    support::log::client::client(qword_1ED948EF8, &v2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2.__r_.__value_.__l.__data_);
    }

    __cxa_guard_release(&qword_1ED948EE0);
  }
}

void sub_1E52F758C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&qword_1ED948EE0);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  __cxa_guard_abort(&qword_1ED948EE0);
  _Unwind_Resume(a1);
}

void support::transport::airship::create(int a1@<W0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v3 = operator new(0x50uLL);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *v3 = dispatch_queue_create("com.apple.telephony.basebandservices.airship", v4);
  *(v3 + 2) = a1;
  if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
  {
    v14 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v14);
    qword_1ED948EE8 = v14;
    __cxa_guard_release(&qword_1ED948EF0);
  }

  v5 = atomic_load((qword_1ED948EE8 + 22664));
  *(v3 + 24) = 0u;
  v6 = (v3 + 24);
  *(v3 + 2) = v5;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  v3[72] = 0;
  if (atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) != -1)
  {
    *buf = &v17;
    __p[0] = buf;
    std::__call_once(&_MergedGlobals_4, __p, std::__call_once_proxy[abi:ne200100]<std::tuple<support::transport::airship::airship(support::transport::airship::protocol)::$_1 &&>>);
  }

  v16 = 10;
  strcpy(__p, "airship.io");
  *buf = &unk_1F5F038D0;
  v19 = v3;
  v20 = buf;
  support::misc::safe_timer::create(__p, 10000, buf, QOS_CLASS_UTILITY, &v17);
  v7 = v17;
  v17 = 0;
  v8 = *v6;
  *v6 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v17;
    v17 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v20;
  if (v20 == buf)
  {
    v10 = (*(*v20 + 32))(v20);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (v20)
  {
    v10 = (*(*v20 + 40))();
  }

  if (v16 < 0)
  {
LABEL_15:
    operator delete(__p[0]);
  }

LABEL_11:
  support::transport::getLogClient(v10);
  v11 = *qword_1ED948F28;
  if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E5234000, v11, OS_LOG_TYPE_ERROR, "error: airship not supported", buf, 2u);
  }

  support::transport::airship::~airship(v3);
  operator delete(v12);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E52F78EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  operator delete(v20);
  __cxa_guard_abort(&qword_1ED948EF0);
  if (*v18)
  {
    dispatch_release(*v18);
  }

  operator delete(v18);
  std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

support::transport::airship **std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](support::transport::airship **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    support::transport::airship::~airship(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void support::transport::airship::~airship(support::transport::airship *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = support::transport::airship::stop(this);
  if ((v2 & 1) == 0 && (support::transport::getLogClient(v2), v3 = *qword_1ED948F28, v2 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR), v2))
  {
    LOWORD(v11) = 0;
    _os_log_error_impl(&dword_1E5234000, v3, OS_LOG_TYPE_ERROR, "error: failed to stop", &v11, 2u);
    if (atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else if (atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire))
  {
    goto LABEL_4;
  }

  v2 = __cxa_guard_acquire(&qword_1ED948EF0);
  if (v2)
  {
    v10 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v10);
    qword_1ED948EE8 = v10;
    __cxa_guard_release(&qword_1ED948EF0);
  }

LABEL_4:
  v4 = atomic_load((qword_1ED948EE8 + 22664));
  if (*(this + 2) < v4)
  {
    support::transport::getLogClient(v2);
    v5 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4 - *(this + 2);
      v11 = 134218242;
      v12 = v6;
      v13 = 2080;
      v14 = "???";
      _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_DEFAULT, "warning: memory pool dynamic allocation count increased by %zu for %s", &v11, 0x16u);
    }
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (*this)
  {
    dispatch_release(*this);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E52F7C1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete(v2);
    __cxa_guard_abort(&qword_1ED948EF0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::transport::airship::stop(support::transport::airship *this)
{
  v10 = *MEMORY[0x1E69E9840];
  support::transport::getLogClient(this);
  v2 = *qword_1ED948F28;
  v3 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v8 = 136315138;
    v9 = "???";
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEFAULT, "%s stopping...", &v8, 0xCu);
  }

  v4 = *(this + 72);
  if (!*(this + 72))
  {
    support::transport::getLogClient(v3);
    v5 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_DEFAULT, "already stopped", &v8, 2u);
    }
  }

  result = v4 == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t support::transport::airship::read(support::misc::safe_timer **this, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  v73 = *MEMORY[0x1E69E9840];
  if (this[5] < a3)
  {
    v6 = dispatch_group_create();
    *&v68.__state_ = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v68.__gate2_.__cv_.__opaque[8] = v7;
    *&v68.__gate2_.__cv_.__opaque[24] = v7;
    *&v68.__gate1_.__cv_.__opaque[24] = v7;
    *&v68.__gate2_.__cv_.__sig = v7;
    *&v68.__gate1_.__cv_.__sig = v7;
    *&v68.__gate1_.__cv_.__opaque[8] = v7;
    *&v68.__mut_.__m_.__opaque[24] = v7;
    *&v68.__mut_.__m_.__opaque[40] = v7;
    *&v68.__mut_.__m_.__sig = v7;
    *&v68.__mut_.__m_.__opaque[8] = v7;
    object = v6;
    std::__shared_mutex_base::__shared_mutex_base(&v68);
    v65.__cv_.__sig = 1018212795;
    memset(v65.__cv_.__opaque, 0, sizeof(v65.__cv_.__opaque));
    v8 = operator new(0x58uLL);
    v8[3] = 850045863;
    v8[1] = 0;
    v8[2] = 0;
    *v8 = &unk_1F5F03880;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    v8[10] = 0;
    v66 = (v8 + 3);
    v67 = v8;
    v60 = 0;
    v59 = 1;
    if (*(v5 + 72) == 1)
    {
      if (v4)
      {
        if (v6)
        {
          v9 = *(v5 + 3);
          v10 = *(v9 + 23);
          if (v10 == dispatch_get_specific("CurrentQueue"))
          {
            v6 = object;
            support::misc::safe_timer::start_sync(v9);
          }

          else
          {
            *block = MEMORY[0x1E69E9820];
            *&block[8] = 0x40000000;
            *&block[16] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
            v70 = &__block_descriptor_tmp_8_0;
            v71 = v9;
            dispatch_sync(v10, block);
            v6 = object;
          }

          v26 = 0;
          v57 = v5;
          while (1)
          {
            v27 = atomic_load(&v59);
            if ((v27 & 1) == 0)
            {
              break;
            }

            v28 = *(v5 + 10);
            if (v28 >= v3)
            {
              v29 = v3;
            }

            else
            {
              v29 = v28;
            }

            if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
            {
              v41 = operator new(0x5890uLL);
              support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v41);
              qword_1ED948EE8 = v41;
              __cxa_guard_release(&qword_1ED948EF0);
              v5 = v57;
            }

            v30 = qword_1ED948EE8;
            *block = 0;
            if (!boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>((qword_1ED948EE8 + 22528), block))
            {
              *block = aligned_alloc(8uLL, 0x58uLL);
              if (!*block)
              {
                exception = __cxa_allocate_exception(8uLL);
                v56 = std::bad_alloc::bad_alloc(exception);
                __cxa_throw(v56, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
              }

              atomic_fetch_add((v30 + 22664), 1uLL);
            }

            v31 = *block;
            if (*(v5 + 5) <= v29)
            {
              v33 = 0;
              v32 = 0xAAAAAAAAAAAAAA00;
              v34 = 0xAAAAAAAAAAAAAAAALL;
              v35 = 0xAAAAAAAAAAAAAAAALL;
            }

            else
            {
              v32 = *(v5 + 6);
              v33 = 1;
              v34 = v4;
              v35 = v29;
            }

            v6 = object;
            dispatch_retain(object);
            *v31 = v26;
            *(v31 + 8) = v29;
            *(v31 + 16) = v32;
            *(v31 + 24) = v34;
            *(v31 + 32) = v35;
            *(v31 + 40) = v33;
            *(v31 + 41) = -1431655766;
            *(v31 + 44) = -1431655766;
            *(v31 + 48) = object;
            dispatch_retain(object);
            v36 = *(v31 + 48);
            if (v36)
            {
              dispatch_group_enter(v36);
            }

            *(v31 + 56) = &v68;
            *(v31 + 64) = &v65;
            *(v31 + 72) = &v60;
            *(v31 + 80) = &v59;
            dispatch_release(object);
            support::transport::getLogClient(v37);
            v5 = v57;
            v38 = *qword_1ED948F28;
            v39 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
            if (v39)
            {
              *block = 67109120;
              *&block[4] = v29;
              _os_log_debug_impl(&dword_1E5234000, v38, OS_LOG_TYPE_DEBUG, "reading %u byte(s)", block, 8u);
            }

            support::transport::getLogClient(v39);
            v40 = *qword_1ED948F28;
            if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG))
            {
              *block = 134218240;
              *&block[4] = v26;
              *&block[12] = 2048;
              *&block[14] = v3;
              _os_log_debug_impl(&dword_1E5234000, v40, OS_LOG_TYPE_DEBUG, "read scheduled for tid %zu, remaining %zu bytes...", block, 0x16u);
              v4 += v29;
              ++v26;
              v3 -= v29;
              if (!v3)
              {
                break;
              }
            }

            else
            {
              v4 += v29;
              ++v26;
              v3 -= v29;
              if (!v3)
              {
                break;
              }
            }
          }

          support::misc::safe_timer::stop(*(v5 + 3));
          v42 = *(v5 + 3);
          v61 = 0;
          v62 = &v61;
          v63 = 0x2000000000;
          v64 = 0;
          v43 = *(v42 + 184);
          *block = MEMORY[0x1E69E9820];
          *&block[8] = 1107296256;
          *&block[16] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
          v70 = &__block_descriptor_tmp_12_0;
          v71 = &v61;
          v72 = v42;
          dispatch_sync(v43, block);
          v44 = *(v62 + 24);
          _Block_object_dispose(&v61, 8);
          if (v44 != 1)
          {
            v25 = 1;
LABEL_55:
            support::misc::safe_timer::stop(*(v5 + 3));
            dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
            if (v25)
            {
              LOBYTE(v25) = atomic_load(&v59);
            }

            v46 = v67;
            if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v46->__on_zero_shared)(v46);
              std::__shared_weak_count::__release_weak(v46);
            }

            std::condition_variable::~condition_variable(&v65);
            std::condition_variable::~condition_variable(&v68.__gate2_);
            std::condition_variable::~condition_variable(&v68.__gate1_);
            std::mutex::~mutex(&v68.__mut_);
            if (v6)
            {
              dispatch_release(v6);
            }

            goto LABEL_62;
          }

          support::transport::getLogClient(v45);
          v53 = *qword_1ED948F28;
          if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
          {
            *block = 0;
            v54 = "error: read failed (timeout)";
            goto LABEL_79;
          }

LABEL_80:
          v25 = 0;
          goto LABEL_55;
        }

        support::transport::getLogClient(v8);
        v53 = *qword_1ED948F28;
        if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_80;
        }

        *block = 0;
        v54 = "error: failed to create dispatch group";
      }

      else
      {
        support::transport::getLogClient(v8);
        v53 = *qword_1ED948F28;
        if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_80;
        }

        *block = 0;
        v54 = "error: invalid dest address";
      }
    }

    else
    {
      support::transport::getLogClient(v8);
      v53 = *qword_1ED948F28;
      if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      *block = 0;
      v54 = "error: invalid state";
    }

LABEL_79:
    _os_log_error_impl(&dword_1E5234000, v53, OS_LOG_TYPE_ERROR, v54, block, 2u);
    goto LABEL_80;
  }

  if (*(this + 72) != 1)
  {
    support::transport::getLogClient(this);
    v52 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    LOWORD(v68.__mut_.__m_.__sig) = 0;
    v49 = "error: invalid state";
    goto LABEL_83;
  }

  if (!a2)
  {
    support::transport::getLogClient(this);
    v52 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    LOWORD(v68.__mut_.__m_.__sig) = 0;
    v49 = "error: invalid dest address";
    goto LABEL_83;
  }

  v11 = this[3];
  v12 = *(v11 + 23);
  if (v12 != dispatch_get_specific("CurrentQueue"))
  {
    v68.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
    *v68.__mut_.__m_.__opaque = 0x40000000;
    *&v68.__mut_.__m_.__opaque[8] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    *&v68.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_8_0;
    *&v68.__mut_.__m_.__opaque[24] = v11;
    dispatch_sync(v12, &v68);
    if (v3)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  support::misc::safe_timer::start_sync(v11);
  if (!v3)
  {
LABEL_26:
    support::misc::safe_timer::stop(*(v5 + 3));
    v21 = *(v5 + 3);
    v65.__cv_.__sig = 0;
    *v65.__cv_.__opaque = &v65;
    *&v65.__cv_.__opaque[8] = 0x2000000000;
    v65.__cv_.__opaque[16] = 0;
    v22 = *(v21 + 184);
    v68.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
    *v68.__mut_.__m_.__opaque = 1107296256;
    *&v68.__mut_.__m_.__opaque[8] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
    *&v68.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_12_0;
    *&v68.__mut_.__m_.__opaque[24] = &v65;
    *&v68.__mut_.__m_.__opaque[32] = v21;
    dispatch_sync(v22, &v68);
    v23 = *(*v65.__cv_.__opaque + 24);
    _Block_object_dispose(&v65, 8);
    if (v23 != 1)
    {
      LOBYTE(v25) = 1;
      goto LABEL_28;
    }

    support::transport::getLogClient(v24);
    v52 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    LOWORD(v68.__mut_.__m_.__sig) = 0;
    v49 = "error: read failed (timeout)";
LABEL_83:
    v50 = v52;
    v51 = 2;
    goto LABEL_66;
  }

  while (1)
  {
LABEL_15:
    v14 = *(v5 + 5);
    if (v14 >= v3)
    {
      v15 = v3;
    }

    else
    {
      v15 = *(v5 + 5);
    }

    support::transport::getLogClient(v13);
    v16 = *qword_1ED948F28;
    v17 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      LODWORD(v68.__mut_.__m_.__sig) = 67109120;
      HIDWORD(v68.__mut_.__m_.__sig) = v15;
      _os_log_debug_impl(&dword_1E5234000, v16, OS_LOG_TYPE_DEBUG, "reading %u byte(s)", &v68, 8u);
    }

    support::transport::getLogClient(v17);
    v18 = *qword_1ED948F28;
    v19 = *qword_1ED948F28;
    if (v14 > v3)
    {
      break;
    }

    v13 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      LODWORD(v68.__mut_.__m_.__sig) = 134217984;
      *(&v68.__mut_.__m_.__sig + 4) = v3;
      _os_log_debug_impl(&dword_1E5234000, v18, OS_LOG_TYPE_DEBUG, "read success, remaining %zu bytes...", &v68, 0xCu);
      v20 = v14;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_23:
      v13 = memmove(v4, *(v5 + 6), v20);
      goto LABEL_14;
    }

    v20 = v14;
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_14:
    v4 += v20;
    v3 -= v20;
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_64;
  }

  LODWORD(v68.__mut_.__m_.__sig) = 67109376;
  HIDWORD(v68.__mut_.__m_.__sig) = v15;
  *v68.__mut_.__m_.__opaque = 1024;
  *&v68.__mut_.__m_.__opaque[2] = v14;
  v49 = "error: read size mismatch; expected: %u, actual: %u";
  v50 = v18;
  v51 = 14;
LABEL_66:
  _os_log_error_impl(&dword_1E5234000, v50, OS_LOG_TYPE_ERROR, v49, &v68, v51);
LABEL_64:
  LOBYTE(v25) = 0;
LABEL_28:
  support::misc::safe_timer::stop(*(v5 + 3));
LABEL_62:
  v47 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

void sub_1E52F8744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::condition_variable *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  operator delete(v31);
  __cxa_guard_abort(&qword_1ED948EF0);
  std::condition_variable_any::~condition_variable_any(&a23);
  std::shared_mutex::~shared_mutex[abi:ne200100](&a31);
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void std::condition_variable_any::~condition_variable_any(std::condition_variable_any *this)
{
  cntrl = this->__mut_.__cntrl_;
  if (cntrl && !atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
    this = v2;
  }

  std::condition_variable::~condition_variable(&this->__cv_);
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t support::transport::airship::write(support::misc::safe_timer **this, void *a2, unint64_t a3)
{
  v3 = a3;
  v62 = *MEMORY[0x1E69E9840];
  if (this[4] >= a3)
  {
    if (*(this + 72) != 1)
    {
      support::transport::getLogClient(this);
      v42 = *qword_1ED948F28;
      if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      LOWORD(v57.__mut_.__m_.__sig) = 0;
      v43 = "error: invalid state";
      goto LABEL_73;
    }

    if (!a2)
    {
      support::transport::getLogClient(this);
      v42 = *qword_1ED948F28;
      if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      LOWORD(v57.__mut_.__m_.__sig) = 0;
      v43 = "error: invalid source address";
      goto LABEL_73;
    }

    v11 = this[3];
    v12 = *(v11 + 23);
    if (v12 == dispatch_get_specific("CurrentQueue"))
    {
      support::misc::safe_timer::start_sync(v11);
      if (!v3)
      {
LABEL_22:
        support::misc::safe_timer::stop(this[3]);
        v18 = this[3];
        v54.__cv_.__sig = 0;
        *v54.__cv_.__opaque = &v54;
        *&v54.__cv_.__opaque[8] = 0x2000000000;
        v54.__cv_.__opaque[16] = 0;
        v19 = *(v18 + 23);
        v57.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
        *v57.__mut_.__m_.__opaque = 1107296256;
        *&v57.__mut_.__m_.__opaque[8] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
        *&v57.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_12_0;
        *&v57.__mut_.__m_.__opaque[24] = &v54;
        *&v57.__mut_.__m_.__opaque[32] = v18;
        dispatch_sync(v19, &v57);
        v20 = *(*v54.__cv_.__opaque + 24);
        _Block_object_dispose(&v54, 8);
        if (v20 != 1)
        {
          LOBYTE(v22) = 1;
LABEL_24:
          support::misc::safe_timer::stop(this[3]);
          goto LABEL_55;
        }

        support::transport::getLogClient(v21);
        v42 = *qword_1ED948F28;
        if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
        {
LABEL_67:
          LOBYTE(v22) = 0;
          goto LABEL_24;
        }

        LOWORD(v57.__mut_.__m_.__sig) = 0;
        v43 = "error: write failed (timeout)";
LABEL_73:
        _os_log_error_impl(&dword_1E5234000, v42, OS_LOG_TYPE_ERROR, v43, &v57, 2u);
        goto LABEL_67;
      }
    }

    else
    {
      v57.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
      *v57.__mut_.__m_.__opaque = 0x40000000;
      *&v57.__mut_.__m_.__opaque[8] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
      *&v57.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_8_0;
      *&v57.__mut_.__m_.__opaque[24] = v11;
      dispatch_sync(v12, &v57);
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    do
    {
      if (*(this + 8) >= v3)
      {
        v14 = v3;
      }

      else
      {
        v14 = *(this + 8);
      }

      support::transport::getLogClient(v13);
      v15 = *qword_1ED948F28;
      v16 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        LODWORD(v57.__mut_.__m_.__sig) = 67109120;
        HIDWORD(v57.__mut_.__m_.__sig) = v14;
        _os_log_debug_impl(&dword_1E5234000, v15, OS_LOG_TYPE_DEBUG, "writing %u byte(s)", &v57, 8u);
      }

      support::transport::getLogClient(v16);
      v17 = *qword_1ED948F28;
      v13 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        LODWORD(v57.__mut_.__m_.__sig) = 134217984;
        *(&v57.__mut_.__m_.__sig + 4) = v3;
        _os_log_debug_impl(&dword_1E5234000, v17, OS_LOG_TYPE_DEBUG, "write success, remaining %zu bytes...", &v57, 0xCu);
      }

      v3 -= v14;
    }

    while (v3);
    goto LABEL_22;
  }

  v6 = dispatch_group_create();
  *&v57.__state_ = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v57.__gate2_.__cv_.__opaque[8] = v7;
  *&v57.__gate2_.__cv_.__opaque[24] = v7;
  *&v57.__gate1_.__cv_.__opaque[24] = v7;
  *&v57.__gate2_.__cv_.__sig = v7;
  *&v57.__gate1_.__cv_.__sig = v7;
  *&v57.__gate1_.__cv_.__opaque[8] = v7;
  *&v57.__mut_.__m_.__opaque[24] = v7;
  *&v57.__mut_.__m_.__opaque[40] = v7;
  *&v57.__mut_.__m_.__sig = v7;
  *&v57.__mut_.__m_.__opaque[8] = v7;
  std::__shared_mutex_base::__shared_mutex_base(&v57);
  v54.__cv_.__sig = 1018212795;
  memset(v54.__cv_.__opaque, 0, sizeof(v54.__cv_.__opaque));
  v8 = operator new(0x58uLL);
  v8[3] = 850045863;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_1F5F03880;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  v8[10] = 0;
  v55 = (v8 + 3);
  v56 = v8;
  v49 = 0;
  v48 = 1;
  if (*(this + 72) != 1)
  {
    support::transport::getLogClient(v8);
    v44 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *block = 0;
    v45 = "error: invalid state";
LABEL_70:
    _os_log_error_impl(&dword_1E5234000, v44, OS_LOG_TYPE_ERROR, v45, block, 2u);
    goto LABEL_71;
  }

  if (!a2)
  {
    support::transport::getLogClient(v8);
    v44 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *block = 0;
    v45 = "error: invalid source address";
    goto LABEL_70;
  }

  if (!v6)
  {
    support::transport::getLogClient(v8);
    v44 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *block = 0;
    v45 = "error: failed to create dispatch group";
    goto LABEL_70;
  }

  v9 = this[3];
  v10 = *(v9 + 23);
  if (v10 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v9);
  }

  else
  {
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 0x40000000;
    *&block[16] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v59 = &__block_descriptor_tmp_8_0;
    v60 = v9;
    dispatch_sync(v10, block);
  }

  v23 = 0;
  while (1)
  {
    v24 = atomic_load(&v48);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(this + 8);
    if (v25 >= v3)
    {
      v26 = v3;
    }

    else
    {
      v26 = v25;
    }

    if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
    {
      v34 = operator new(0x5890uLL);
      support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v34);
      qword_1ED948EE8 = v34;
      __cxa_guard_release(&qword_1ED948EF0);
    }

    v27 = qword_1ED948EE8;
    *block = 0;
    if (!boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>((qword_1ED948EE8 + 22528), block))
    {
      *block = aligned_alloc(8uLL, 0x58uLL);
      if (!*block)
      {
        exception = __cxa_allocate_exception(8uLL);
        v47 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v47, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
      }

      atomic_fetch_add((v27 + 22664), 1uLL);
    }

    v28 = *block;
    dispatch_retain(v6);
    *v28 = v23;
    *(v28 + 8) = v26;
    *(v28 + 16) = 0;
    *(v28 + 40) = 0;
    *(v28 + 48) = v6;
    dispatch_retain(v6);
    v29 = *(v28 + 48);
    if (v29)
    {
      dispatch_group_enter(v29);
    }

    *(v28 + 56) = &v57;
    *(v28 + 64) = &v54;
    *(v28 + 72) = &v49;
    *(v28 + 80) = &v48;
    dispatch_release(v6);
    support::transport::getLogClient(v30);
    v31 = *qword_1ED948F28;
    v32 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
    if (v32)
    {
      *block = 67109120;
      *&block[4] = v26;
      _os_log_debug_impl(&dword_1E5234000, v31, OS_LOG_TYPE_DEBUG, "writing %u byte(s)", block, 8u);
    }

    support::transport::getLogClient(v32);
    v33 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG))
    {
      *block = 134218240;
      *&block[4] = v23;
      *&block[12] = 2048;
      *&block[14] = v3;
      _os_log_debug_impl(&dword_1E5234000, v33, OS_LOG_TYPE_DEBUG, "write scheduled for tid %zu, remaining %zu bytes...", block, 0x16u);
      ++v23;
      v3 -= v26;
      if (!v3)
      {
        break;
      }
    }

    else
    {
      ++v23;
      v3 -= v26;
      if (!v3)
      {
        break;
      }
    }
  }

  support::misc::safe_timer::stop(this[3]);
  v35 = this[3];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  v36 = *(v35 + 23);
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 1107296256;
  *&block[16] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v59 = &__block_descriptor_tmp_12_0;
  v60 = &v50;
  v61 = v35;
  dispatch_sync(v36, block);
  v37 = *(v51 + 24);
  _Block_object_dispose(&v50, 8);
  if (v37 == 1)
  {
    support::transport::getLogClient(v38);
    v44 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      *block = 0;
      v45 = "error: write failed (timeout)";
      goto LABEL_70;
    }

LABEL_71:
    v22 = 0;
    goto LABEL_48;
  }

  v22 = 1;
LABEL_48:
  support::misc::safe_timer::stop(this[3]);
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (v22)
  {
    LOBYTE(v22) = atomic_load(&v48);
  }

  v39 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  std::condition_variable::~condition_variable(&v54);
  std::condition_variable::~condition_variable(&v57.__gate2_);
  std::condition_variable::~condition_variable(&v57.__gate1_);
  std::mutex::~mutex(&v57.__mut_);
  if (v6)
  {
    dispatch_release(v6);
  }

LABEL_55:
  v40 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

void sub_1E52F917C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::condition_variable *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  operator delete(v28);
  __cxa_guard_abort(&qword_1ED948EF0);
  std::condition_variable_any::~condition_variable_any(&a19);
  std::shared_mutex::~shared_mutex[abi:ne200100](&a27);
  if (v27)
  {
    dispatch_release(v27);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(void *a1)
{
  a1[2816] = 0;
  a1[2824] = 0;
  v2 = a1 + 2832;
  a1[2832] = 0;
  v3 = 257;
  do
  {
    v4 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    v23 = *v2 & 0xFFFF000000000000 | v4 & 0xFFFFFFFFFFFFLL;
    *(v4 & 0xFFFFFFFFFFFFLL) = *(v4 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | *v2 & 0xFFFFFFFFFFFFLL;
    *v2 = v23;
    --v3;
  }

  while (v3);
  explicit = atomic_load_explicit(v2, memory_order_acquire);
  if ((explicit & 0xFFFFFFFFFFFFLL) != 0)
  {
    while (1)
    {
      v5 = explicit;
      v6 = explicit;
      atomic_compare_exchange_strong(v2, &v6, (explicit & 0xFFFF000000000000 | *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
      if (v6 == v5)
      {
        break;
      }

      explicit = v6;
      if ((v6 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_6;
      }
    }

    v7 = explicit & 0xFFFFFFFFFFFFLL;
    if ((explicit & 0xFFFFFFFFFFFFLL) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
LABEL_6:
    v7 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  *v7 = 0;
  v8 = v7 & 0xFFFFFFFFFFFFLL;
LABEL_9:
  v9 = 0;
  a1[2816] = v8;
  atomic_store(v8, a1 + 2824);
  a1[2833] = 0;
  do
  {
    v10 = atomic_load_explicit(a1 + 2832, memory_order_acquire);
    do
    {
      v26 = v10;
      if ((v10 & 0xFFFFFFFFFFFFLL) == 0)
      {
        v12 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
        *v12 = 0u;
        *(v12 + 16) = 0u;
        goto LABEL_16;
      }

      v11 = v10;
      atomic_compare_exchange_strong(v2, &v10, (v10 & 0xFFFF000000000000 | *(v10 & 0xFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
    }

    while (v10 != v11);
    v12 = v26 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0xFFFFFFFFFFFFLL) == 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v22 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v22, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

LABEL_16:
    *(v12 + 8) = &a1[11 * v9];
    atomic_store((*v12 & 0xFFFF000000000000) + 0x1000000000000, v12);
    v13 = v12 & 0xFFFFFFFFFFFFLL;
    do
    {
      while (1)
      {
        do
        {
          v27 = atomic_load_explicit(a1 + 2824, memory_order_acquire);
          v15 = atomic_load_explicit((v27 & 0xFFFFFFFFFFFFLL), memory_order_acquire);
          v24 = v15;
        }

        while (v27 != atomic_load_explicit(a1 + 2824, memory_order_acquire));
        v16 = v15 & 0xFFFFFFFFFFFFLL;
        if (!v16)
        {
          break;
        }

        v14 = v27;
        atomic_compare_exchange_strong(a1 + 2824, &v14, (v27 & 0xFFFF000000000000 | v16) + 0x1000000000000);
      }

      v17 = v24;
      v18 = v24;
      atomic_compare_exchange_strong((v27 & 0xFFFFFFFFFFFFLL), &v18, (v24 & 0xFFFF000000000000 | v13) + 0x1000000000000);
    }

    while (v18 != v17);
    v19 = v27;
    atomic_compare_exchange_strong(a1 + 2824, &v19, (v27 & 0xFFFF000000000000 | v13) + 0x1000000000000);
    ++v9;
  }

  while (v9 != 256);
  return a1;
}

void *boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate()
{
  __space = 120;
  v0 = malloc(0x80uLL);
  if (!v0 || (v1 = v0, v3 = v0 + 8, std::align(0x40uLL, 0x40uLL, &v3, &__space), *(v3 - 1) = v1, (result = v3) == 0))
  {
    std::bad_alloc::bad_alloc(&__space);
    boost::alignment::detail::throw_exception<std::bad_alloc>();
  }

  return result;
}

void boost::alignment::detail::throw_exception<std::bad_alloc>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55E0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
}

unint64_t *boost::lockfree::detail::freelist_stack<boost::lockfree::queue<support::transport::io_async_cb *>::node,boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>>::~freelist_stack(unint64_t *a1)
{
  v2 = atomic_load(a1);
  v5 = v2;
  while ((v5 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v3 = v5 & 0xFFFFFFFFFFFFLL;
    v5 = *(v5 & 0xFFFFFFFFFFFFLL);
    free(*(v3 - 8));
  }

  return a1;
}

unint64_t *boost::lockfree::queue<support::transport::io_async_cb *>::~queue(unint64_t *a1)
{
  while (1)
  {
    while (1)
    {
      v8 = *a1;
      v7 = a1[8];
      v6 = *(*a1 & 0xFFFFFFFFFFFFLL);
      v2 = v6 & 0xFFFFFFFFFFFFLL;
      if (((v7 ^ *a1) & 0xFFFFFFFFFFFFLL) == 0)
      {
        break;
      }

      if (v2)
      {
        atomic_store((v8 & 0xFFFF000000000000 | v6 & 0xFFFFFFFFFFFFLL) + 0x1000000000000, a1);
        v9 = a1[16] & 0xFFFF000000000000 | v8 & 0xFFFFFFFFFFFFLL;
        *(v9 & 0xFFFFFFFFFFFFLL) = *(v8 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | a1[16] & 0xFFFFFFFFFFFFLL;
        a1[16] = v9;
      }
    }

    if (!v2)
    {
      break;
    }

    atomic_store((v7 & 0xFFFF000000000000 | v6 & 0xFFFFFFFFFFFFLL) + 0x1000000000000, a1 + 8);
  }

  v10 = a1[16] & 0xFFFF000000000000 | *a1 & 0xFFFFFFFFFFFFLL;
  *(v10 & 0xFFFFFFFFFFFFLL) = *(*a1 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | a1[16] & 0xFFFFFFFFFFFFLL;
  a1[16] = v10;
  v3 = atomic_load(a1 + 16);
  v11 = v3;
  while ((v11 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v4 = v11 & 0xFFFFFFFFFFFFLL;
    v11 = *(v11 & 0xFFFFFFFFFFFFLL);
    free(*(v4 - 8));
  }

  return a1;
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F03880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<support::transport::airship::airship(support::transport::airship::protocol)::$_1 &&>>()
{
  if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
  {
    v0 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v0);
    qword_1ED948EE8 = v0;

    __cxa_guard_release(&qword_1ED948EF0);
  }
}

void sub_1E52F98A8(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_1ED948EF0);
  _Unwind_Resume(a1);
}

void *std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F038D0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F038D0;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::operator()(support::transport *a1)
{
  v1 = *(a1 + 1);
  support::transport::getLogClient(a1);
  v2 = *qword_1ED948F28;
  if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
  {
    return support::transport::airship::stop(v1);
  }

  *v4 = 0;
  _os_log_error_impl(&dword_1E5234000, v2, OS_LOG_TYPE_ERROR, "error: io timeout, aborting...", v4, 2u);
  return support::transport::airship::stop(v1);
}

uint64_t std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7support9transport7airshipC1ENS1_8protocolEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    while (1)
    {
      do
      {
        explicit = atomic_load_explicit(a1, memory_order_acquire);
        v11 = atomic_load_explicit(a1 + 8, memory_order_acquire);
        v2 = atomic_load_explicit((explicit & 0xFFFFFFFFFFFFLL), memory_order_acquire);
      }

      while (explicit != atomic_load_explicit(a1, memory_order_acquire));
      v3 = v2 & 0xFFFFFFFFFFFFLL;
      if (((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0)
      {
        break;
      }

      if (!v3)
      {
        return ((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0;
      }

      v6 = v11;
      atomic_compare_exchange_strong(a1 + 8, &v6, (v11 & 0xFFFF000000000000 | v2 & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
    }

    if (v3)
    {
      *a2 = *((v2 & 0xFFFFFFFFFFFFLL) + 8);
      v4 = explicit;
      v5 = explicit;
      atomic_compare_exchange_strong(a1, &v5, (explicit & 0xFFFF000000000000 | v2 & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v13 = atomic_load_explicit(a1 + 16, memory_order_acquire);
  *(explicit & 0xFFFFFFFFFFFFLL) = *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | v13 & 0xFFFFFFFFFFFFLL;
  v7 = v13;
  v8 = v13;
  atomic_compare_exchange_strong(a1 + 16, &v8, v13 & 0xFFFF000000000000 | explicit & 0xFFFFFFFFFFFFLL);
  if (v8 != v7)
  {
    do
    {
      *(explicit & 0xFFFFFFFFFFFFLL) = *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | v8 & 0xFFFFFFFFFFFFLL;
      v9 = v8;
      atomic_compare_exchange_strong(a1 + 16, &v8, v8 & 0xFFFF000000000000 | explicit & 0xFFFFFFFFFFFFLL);
    }

    while (v8 != v9);
  }

  return ((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0;
}

uint64_t __cxx_global_var_init_24()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t eUICC::ClearMetadata::GetListOfIccids(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Requesting Profile List\n", a6, a7, a8, v38);
  v11 = operator new(7uLL);
  v56 = v11 + 7;
  v57 = v11 + 7;
  *v11 = 1543777727;
  v11[2] = 23042;
  *(v11 + 6) = -107;
  v54 = 0;
  v55 = v11;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50 = 0;
  (*(**a3 + 48))(*a3, &v55, &v52, &v50);
  __p = 0;
  v48 = 0;
  v49 = 0;
  v12 = v52;
  v13 = v53 - v52;
  if (v53 != v52)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v53 - v52);
    v49 = __p + v13;
    memcpy(__p, v12, v13);
    v48 = __p + v13;
  }

  *&v41 = 0;
  if (ctu::cf::convert_copy())
  {
    v17 = v41;
    v51 = v41;
    v18 = __p;
    if (!__p)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v17 = 0;
  v18 = __p;
  if (__p)
  {
LABEL_10:
    v48 = v18;
    operator delete(v18);
  }

LABEL_11:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Extracting Profile List\n", v14, v15, v16, v39);
  memset(v46, 170, sizeof(v46));
  v45 = 0xAAAAAAAAAAAAAAAALL;
  Length = CFDataGetLength(v17);
  v20 = *MEMORY[0x1E695E480];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], Length, v17);
  v44[2] = MutableCopy;
  v44[0] = CFDataGetMutableBytePtr(MutableCopy);
  v44[1] = CFDataGetLength(MutableCopy);
  if (DERDecodeSeqContentInit(v44, &v46[2]))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_15:
      v25 = "DR_Success == der_ret";
LABEL_16:
      _BBULog(25, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v22, v23, v24, v25);
      v26 = 1;
      goto LABEL_17;
    }

LABEL_71:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    goto LABEL_15;
  }

  if (DERDecodeSeqNext(&v46[2], &v45) || v45 != 0xA00000000000002DLL)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v25 = "DR_Success == der_ret && TAG_PILR == dec.tag";
    goto LABEL_16;
  }

  if (DERDecodeSeqContentInit(v46, &v46[2]))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_71;
  }

  if (DERDecodeSeqNext(&v46[2], &v45) || v45 != 0xA000000000000000)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v25 = "DR_Success == der_ret && TAG_PILR_OK == dec.tag";
    goto LABEL_16;
  }

  if (DERDecodeSeqContentInit(v46, &v46[2]))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_71;
  }

  v26 = 0;
  while (DERDecodeSeqNext(&v46[2], &v45) != 1)
  {
    memset(v43, 170, sizeof(v43));
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41 = v31;
    v42 = v31;
    if (DERDecodeSeqContentInit(v46, &v43[1]))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v35 = 0;
      goto LABEL_48;
    }

    if (v45 != 0xE000000000000003)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v35 = 0;
      v36 = "DR_Success == der_ret && TAG_PI == dec.tag";
LABEL_49:
      _BBULog(25, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v32, v33, v34, v36);
      v26 = 1;
      v37 = 1;
      if (!v35)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v35 = 0;
LABEL_48:
      v36 = "DR_Success == der_ret";
      goto LABEL_49;
    }

    v35 = CFDataCreate(v20, v41, *(&v41 + 1));
    v58 = 0;
    ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v58);
    if (DERParseInteger(&v42, v43))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      goto LABEL_48;
    }

    if (!a1 || v43[0] == 1)
    {
      std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(a2, v35);
    }

    v37 = 0;
    if (!v35)
    {
      goto LABEL_42;
    }

LABEL_41:
    CFRelease(v35);
LABEL_42:
    if (v37)
    {
      goto LABEL_17;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Successfully populated ICCID list!\n", v28, v29, v30, v40);
LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  return v26;
}

void sub_1E52FA25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a24);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v31 - 152));
  v34 = *(v31 - 144);
  if (v34)
  {
    *(v31 - 136) = v34;
    operator delete(v34);
    v33 = *(v31 - 120);
    if (v33)
    {
LABEL_6:
      *(v31 - 112) = v33;
      operator delete(v33);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v33 = *(v31 - 120);
    if (v33)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::ClearMetadata::ClearMetadataForIccids(CFDataRef **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v13 = xmmword_1E5393160;
    do
    {
      v5 = operator new(0x15uLL);
      v19 = v5 + 21;
      v20 = v5 + 21;
      *v5 = v13;
      *(v5 + 13) = 0x8002E100000000;
      v18 = v5;
      BytePtr = CFDataGetBytePtr(*v2);
      v7 = v18;
      v8 = *BytePtr;
      *(v18 + 13) = *(BytePtr + 2);
      *(v7 + 5) = v8;
      __p = 0;
      v16 = 0;
      v17 = 0;
      v14 = 0;
      (*(**a2 + 48))(*a2, &v18, &__p, &v14);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::ClearMetadataForIccids: Attempted metadata clear for ICCID\n", v9, v10, v11, v13);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

void sub_1E52FA4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::ClearMetadata::Perform(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::Perform: onlyBootstrap=%d\n", a6, a7, a8, a1);
  __p = 0;
  v21 = 0;
  v22 = 0;
  eUICC::ClearMetadata::GetListOfIccids(a1, &__p, a2, v10, v11, v12, v13, v14);
  eUICC::ClearMetadata::ClearMetadataForIccids(&__p, a2);
  v15 = __p;
  if (__p)
  {
    for (i = v21; i != v15; i -= 8)
    {
      v18 = *(i - 1);
      v17 = v18;
      if (v18)
      {
        CFRelease(v17);
      }
    }

    operator delete(v15);
  }

  return 0;
}

void sub_1E52FA5D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v5 = v4 + 8;
    goto LABEL_32;
  }

  v6 = *a1;
  v7 = &v4[-*a1];
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v13 = 0;
    v14 = (8 * v8);
    *(8 * v8) = cf;
    if (cf)
    {
      goto LABEL_14;
    }

LABEL_17:
    v15 = v7 >> 3;
    v16 = &v14[-8 * v8];
    if (v6 == v4)
    {
      goto LABEL_30;
    }

LABEL_18:
    v17 = v4 - v6 - 8;
    v18 = v6;
    v19 = v16;
    if (v17 < 0x98)
    {
      goto LABEL_37;
    }

    if (v16 < v6 + (v17 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v18 = v6;
      v19 = v16;
      if (v6 < &v13[v7 + (v17 & 0xFFFFFFFFFFFFFFF8) - 8 * v15 + 8])
      {
        goto LABEL_37;
      }
    }

    v20 = (v17 >> 3) + 1;
    v21 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    v18 = &v6[v21];
    v19 = (v16 + v21 * 8);
    v22 = &v13[8 * v8 + 16 + -8 * v15];
    v23 = (v6 + 2);
    v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25 = *v23;
      *(v22 - 1) = *(v23 - 1);
      *v22 = v25;
      *(v23 - 1) = 0uLL;
      *v23 = 0uLL;
      v22 += 32;
      v23 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_37:
      do
      {
        *v19++ = *v18;
        *v18++ = 0;
      }

      while (v18 != v4);
    }

    do
    {
      if (*v6)
      {
        CFRelease(*v6);
      }

      ++v6;
    }

    while (v6 != v4);
    v6 = *a1;
    goto LABEL_30;
  }

  if (v11 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = cf;
  v13 = operator new(8 * v11);
  cf = v12;
  v14 = &v13[8 * v8];
  *v14 = cf;
  if (!cf)
  {
    goto LABEL_17;
  }

LABEL_14:
  CFRetain(cf);
  v6 = *a1;
  v4 = *(a1 + 8);
  v15 = &v4[-*a1] >> 3;
  v16 = &v14[-8 * v15];
  if (*a1 != v4)
  {
    goto LABEL_18;
  }

LABEL_30:
  v26 = &v13[8 * v11];
  v5 = v14 + 8;
  *a1 = v16;
  *(a1 + 8) = v14 + 8;
  *(a1 + 16) = v26;
  if (v6)
  {
    operator delete(v6);
  }

LABEL_32:
  *(a1 + 8) = v5;
}

void **std::vector<ctu::cf::CFSharedRef<__CFData const>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void BasebandRestore::create(BasebandRestore *this@<X0>, ACFULogging **a2@<X8>)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x238uLL);
  ACFURestore::ACFURestore(v5);
  *(v5 + 45) = 0;
  *(v5 + 46) = 0;
  *v5 = &unk_1F5F03950;
  *(v5 + 99) = 0;
  *(v5 + 200) = 0;
  *(v5 + 408) = 0;
  *(v5 + 416) = 0;
  *(v5 + 55) = 0;
  *(v5 + 56) = 0;
  *(v5 + 54) = 0;
  *(v5 + 106) = 0;
  *(v5 + 214) = 0;
  *(v5 + 47) = 0;
  *(v5 + 48) = 0;
  *(v5 + 392) = 0;
  *(v5 + 228) = 514;
  *(v5 + 69) = 0;
  *(v5 + 560) = 0;
  *(v5 + 272) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 33) = 0u;
  *(v5 + 30) = 0u;
  *(v5 + 31) = 0u;
  *(v5 + 29) = 0u;
  *a2 = v5;
  v6 = operator new(0x20uLL);
  v6[2] = 0;
  v6[1] = 0;
  *v6 = &unk_1F5F03A48;
  v6[3] = v5;
  a2[1] = v6;
  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
  *(v5 + 45) = v5;
  *(v5 + 46) = v6;
  if (!atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v6;
    (*(*v6 + 16))(v6, v7, v8);
    std::__shared_weak_count::__release_weak(v12);
    v9 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    return;
  }

  v9 = *a2;
  if (!*a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v10 = (*(*v9 + 40))(v9, this, @"Cellular1,Ticket");
  if (v10)
  {
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    v11 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);

        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void sub_1E52FAAF0(_Unwind_Exception *a1)
{
  BasebandRestore::~BasebandRestore(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void BasebandRestore::~BasebandRestore(BasebandRestore *this)
{
  *this = &unk_1F5F03950;
  v2 = *(this + 69);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 67);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 66);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 65);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 63);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 61);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 59);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((*(this + 455) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (*(this + 455) < 0)
  {
LABEL_20:
    operator delete(*(this + 54));
  }

LABEL_21:
  v10 = *(this + 48);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 46);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  MEMORY[0x1EEDED2F8](this);
}

{
  BasebandRestore::~BasebandRestore(this);

  operator delete(v1);
}

uint64_t BasebandRestore::init(BasebandRestore *this, const __CFDictionary *a2, const void *a3)
{
  v224 = *MEMORY[0x1E69E9840];
  v219 = 0;
  valuePtr = 0;
  v6 = operator new(0x28uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_1F5F03A98;
  v7 = MEMORY[0x1E6926D60](v6 + 3, @"BasebandRestore");
  v8 = *(this + 48);
  *(this + 47) = v7;
  *(this + 48) = v6;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  ACFULogging::getLogInstance(v7);
  v9 = ACFULogging::handleMessage();
  if (!a2)
  {
    ACFULogging::getLogInstance(v9);
LABEL_356:
    ACFULogging::handleMessage();
    v41 = 1;
    goto LABEL_326;
  }

  if (CFDictionaryGetValue(a2, @"Options"))
  {
    v194 = 0;
    MutableCopy = a2;
    goto LABEL_10;
  }

  v11 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
  if (!MutableCopy)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_356;
  }

  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    v41 = 1;
    CFRelease(MutableCopy);
    goto LABEL_326;
  }

  CFDictionaryAddValue(MutableCopy, @"Options", Mutable);
  CFRelease(Mutable);
  v194 = MutableCopy;
LABEL_10:
  v13 = ACFURestore::init(this, MutableCopy, a3);
  if (!v13)
  {
    ParseUpdaterDebugArgs(MutableCopy, (this + 392));
    UpdaterDebugArgs::print((this + 392));
    v13 = (*(*this + 136))(this);
    if (!v13)
    {
      cf = CFDictionaryGetValue(a2, @"BootMode");
      if (!cf)
      {
        goto LABEL_15;
      }

      AMSupportSafeRetain();
      v14 = CFGetTypeID(cf);
      TypeID = CFNumberGetTypeID();
      if (v14 == TypeID)
      {
        Value = CFNumberGetValue(cf, kCFNumberIntType, &valuePtr + 4);
        if (Value)
        {
LABEL_15:
          if (CFDictionaryContainsKey(*(this + 15), @"skipCoredump"))
          {
            v17 = CFDictionaryGetValue(*(this + 15), @"skipCoredump");
            v18 = v17;
            if (!v17)
            {
              goto LABEL_342;
            }

            v19 = CFGetTypeID(v17);
            v20 = CFBooleanGetTypeID();
            if (v19 != v20)
            {
              goto LABEL_343;
            }

            v21 = CFBooleanGetValue(v18) == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!ACFURestore::isInternalBuild(this))
          {
            v27 = 0;
            if (!v21)
            {
              goto LABEL_51;
            }

            goto LABEL_29;
          }

          if (!CFDictionaryContainsKey(*(this + 15), @"noTimeout"))
          {
            v27 = *(this + 392);
            if (!v21)
            {
              goto LABEL_51;
            }

            goto LABEL_29;
          }

          v22 = CFDictionaryGetValue(*(this + 15), @"noTimeout");
          v23 = v22;
          if (v22)
          {
            v24 = CFGetTypeID(v22);
            v20 = CFBooleanGetTypeID();
            if (v24 == v20)
            {
              v25 = CFBooleanGetValue(v23);
              v26 = v25;
              ACFULogging::getLogInstance(v25);
              v27 = v26 != 0;
              ACFULogging::handleMessage();
              if (!v21)
              {
                goto LABEL_51;
              }

LABEL_29:
              if ((HIDWORD(valuePtr) - 1) > 1)
              {
                goto LABEL_51;
              }

              v223.__r_.__value_.__r.__words[0] = 0;
              v28 = CFDictionaryContainsKey(*(this + 15), @"coreDumpPath");
              v29 = *(this + 15);
              if (v28)
              {
                v30 = CFDictionaryGetValue(v29, @"coreDumpPath");
                v31 = v30;
                if (!v30)
                {
                  goto LABEL_369;
                }

                v32 = CFGetTypeID(v30);
                v33 = CFStringGetTypeID();
                if (v32 != v33)
                {
LABEL_370:
                  ACFULogging::getLogInstance(v33);
                  ACFULogging::handleMessage();
                  v40 = 0;
                  v41 = 4002;
LABEL_144:
                  if (v223.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v223.__r_.__value_.__l.__data_);
                  }

                  if ((v40 & 1) == 0)
                  {
                    v102 = 0;
                    v85 = 0;
                    v195 = 0;
                    goto LABEL_316;
                  }

LABEL_52:
                  if (ACFURestore::isInternalBuild(this) && CFDictionaryContainsKey(*(this + 15), @"askToReset"))
                  {
                    v51 = CFDictionaryGetValue(*(this + 15), @"askToReset");
                    v52 = v51;
                    if (!v51)
                    {
LABEL_361:
                      ACFULogging::getLogInstance(0);
                      ACFULogging::handleMessage();
                      goto LABEL_362;
                    }

                    v53 = CFGetTypeID(v51);
                    v54 = CFBooleanGetTypeID();
                    if (v53 != v54)
                    {
LABEL_363:
                      ACFULogging::getLogInstance(v54);
                      ACFULogging::handleMessage();
                      goto LABEL_364;
                    }

                    v55 = (CFBooleanGetValue(v52) != 0) << 8;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  if (!CFDictionaryContainsKey(*(this + 15), @"skipReset"))
                  {
                    v59 = 0;
LABEL_63:
                    v195 = CFDictionaryGetValue(a2, @"ImageTransferSegmentSizeBytes");
                    if (v195)
                    {
                      AMSupportSafeRetain();
                      v60 = CFGetTypeID(v195);
                      v61 = CFNumberGetTypeID();
                      if (v60 != v61)
                      {
                        goto LABEL_352;
                      }

                      v61 = CFNumberGetValue(v195, kCFNumberSInt32Type, &valuePtr);
                      if (!v61)
                      {
                        goto LABEL_352;
                      }

                      ACFULogging::getLogInstance(v61);
                      ACFULogging::handleMessage();
                    }

                    if (CFDictionaryContainsKey(*(this + 15), @"BBUtilCmd"))
                    {
                      v62 = CFDictionaryGetValue(*(this + 15), @"BBUtilCmd");
                      v63 = v62;
                      if (!v62)
                      {
                        goto LABEL_351;
                      }

                      v64 = CFGetTypeID(v62);
                      v61 = CFBooleanGetTypeID();
                      if (v64 != v61)
                      {
                        goto LABEL_352;
                      }

                      *(this + 544) = CFBooleanGetValue(v63) != 0;
                    }

                    if (CFDictionaryContainsKey(*(this + 15), @"ccBoot"))
                    {
                      v65 = CFDictionaryGetValue(*(this + 15), @"ccBoot");
                      v66 = v65;
                      if (!v65)
                      {
                        goto LABEL_351;
                      }

                      v67 = CFGetTypeID(v65);
                      v61 = CFBooleanGetTypeID();
                      if (v67 != v61)
                      {
                        goto LABEL_352;
                      }

                      *(this + 545) = CFBooleanGetValue(v66) != 0;
                    }

                    if (!CFDictionaryContainsKey(*(this + 15), @"crashContextData"))
                    {
LABEL_80:
                      if (*(this + 429) == 1)
                      {
                        KTLDebugRegisterDelegate();
                        KTLDebugSetFlags();
                      }

                      isPreflight = ACFURestore::isPreflight(this);
                      if (isPreflight)
                      {
                        ACFULogging::getLogInstance(isPreflight);
                        ACFULogging::handleMessage();
                        isInternalBuild = ACFURestore::isInternalBuild(this);
                        v75 = valuePtr;
                        v76 = *(this + 24);
                        v77 = 0x1000000;
                        if ((v27 & 1) == 0)
                        {
                          v77 = 0;
                        }

                        v199 = *(this + 23);
                        v200 = v76;
                        if (v76)
                        {
                          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        v78 = *(this + 46);
                        v79 = isInternalBuild | (v75 << 32);
                        v80 = v77 | v55;
                        v197 = *(this + 45);
                        v198 = v78;
                        if (v78)
                        {
                          atomic_fetch_add_explicit(&v78->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                        }

                        BasebandUpdaterTransport::create(&v199, &v197, v79 | 0xAAAAAA00, v80 | v21, v221);
                        v81 = *v221;
                        if (*v221)
                        {
                          v82 = operator new(0x20uLL);
                          *v82 = &unk_1F5F03B88;
                          v82[1] = 0;
                          v82[2] = 0;
                          v82[3] = v81;
                          *v221 = 0;
                          v83 = *(this + 22);
                          *(this + 21) = v81;
                          *(this + 22) = v82;
                          if (!v83)
                          {
                            goto LABEL_110;
                          }
                        }

                        else
                        {
                          *v221 = 0;
                          v83 = *(this + 22);
                          *(this + 21) = 0;
                          *(this + 22) = 0;
                          if (!v83)
                          {
                            goto LABEL_110;
                          }
                        }

                        if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v83->__on_zero_shared)(v83);
                          std::__shared_weak_count::__release_weak(v83);
                        }

LABEL_110:
                        v99 = *v221;
                        *v221 = 0;
                        if (v99)
                        {
                          (*(*v99 + 64))(v99);
                        }

                        v100 = v198;
                        if (v198)
                        {
                          std::__shared_weak_count::__release_weak(v198);
                        }

                        v101 = v200;
                        if (v200 && !atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v101->__on_zero_shared)(v101);
                          std::__shared_weak_count::__release_weak(v101);
                        }

                        if (!*(this + 21))
                        {
                          ACFULogging::getLogInstance(v100);
                          ACFULogging::handleMessage();
                          v102 = 0;
                          v85 = 0;
                          v41 = 4008;
                          goto LABEL_316;
                        }

                        v102 = 0;
                        v85 = 0;
                        v103 = *(this + 60);
                        v104 = *(this + 61);
                        v223.__r_.__value_.__r.__words[0] = v103;
                        v223.__r_.__value_.__l.__size_ = v104;
                        if (!v104)
                        {
                          goto LABEL_119;
                        }

LABEL_236:
                        atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
                        LOWORD(v223.__r_.__value_.__r.__words[2]) = 0;
                        v223.__r_.__value_.__s.__data_[18] = 1;
                        *&v221[8] = v103;
                        *&v221[16] = v104;
                        atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
                        v103 = *(this + 60);
                        v154 = *(this + 61);
                        *v221 = 0;
                        *&v221[24] = v223.__r_.__value_.__r.__words[2];
                        v221[26] = v223.__r_.__value_.__s.__data_[18];
                        __t.__r_.__value_.__r.__words[0] = v103;
                        __t.__r_.__value_.__l.__size_ = v154;
                        if (v154)
                        {
                          atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
                          LOWORD(__t.__r_.__value_.__r.__words[2]) = 0;
                          __t.__r_.__value_.__s.__data_[18] = 0;
                          *v222 = 3;
                          *&v222[8] = v103;
                          *&v222[16] = v154;
                          atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
                          goto LABEL_239;
                        }

LABEL_238:
                        LOWORD(__t.__r_.__value_.__r.__words[2]) = 0;
                        __t.__r_.__value_.__s.__data_[18] = 0;
                        *v222 = 3;
                        *&v222[8] = v103;
                        *&v222[16] = 0;
LABEL_239:
                        *&v222[24] = __t.__r_.__value_.__r.__words[2];
                        v222[26] = __t.__r_.__value_.__s.__data_[18];
                        v193 = v85;
                        if (!*(this + 5))
                        {
                          goto LABEL_250;
                        }

                        v156 = (this + 32);
                        v155 = *(this + 4);
                        v157 = *(this + 3);
                        *(this + 3) = this + 32;
                        *(v155 + 16) = 0;
                        *(this + 4) = 0;
                        *(this + 5) = 0;
                        v158 = *(v157 + 8) ? *(v157 + 8) : v157;
                        if (v158)
                        {
                          v159 = v158[2];
                          if (v159)
                          {
                            v160 = *v159;
                            v161 = v102;
                            if (*v159 == v158)
                            {
                              *v159 = 0;
                              while (1)
                              {
                                v191 = v159[1];
                                if (!v191)
                                {
                                  break;
                                }

                                do
                                {
                                  v159 = v191;
                                  v191 = *v191;
                                }

                                while (v191);
                              }
                            }

                            else
                            {
                              for (v159[1] = 0; v160; v160 = v159[1])
                              {
                                do
                                {
                                  v159 = v160;
                                  v160 = *v160;
                                }

                                while (v160);
                              }
                            }
                          }

                          else
                          {
                            v161 = v102;
                          }

                          v173 = 0;
                          while (1)
                          {
                            while (1)
                            {
                              i = v159;
                              v175 = &v221[v173];
                              v176 = *v156;
                              if (!*v156)
                              {
                                break;
                              }

                              v177 = *v175;
                              while (1)
                              {
                                while (1)
                                {
                                  v178 = v176;
                                  v179 = *(v176 + 32);
                                  if (v177 >= v179)
                                  {
                                    break;
                                  }

                                  v176 = *v178;
                                  if (!*v178)
                                  {
                                    v180 = v178;
                                    goto LABEL_281;
                                  }
                                }

                                if (v179 >= v177)
                                {
                                  break;
                                }

                                v176 = v178[1];
                                if (!v176)
                                {
                                  v180 = v178 + 1;
                                  goto LABEL_281;
                                }
                              }

                              v173 += 32;
                              if (v173 == 64)
                              {
LABEL_299:
                                std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(v158);
                                if (!v159)
                                {
                                  goto LABEL_303;
                                }

                                v184 = v159[2];
                                for (i = v159; v184; v184 = v184[2])
                                {
                                  i = v184;
                                }

LABEL_302:
                                std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(i);
                                goto LABEL_303;
                              }
                            }

                            v177 = *v175;
                            v180 = (this + 32);
                            v178 = (this + 32);
LABEL_281:
                            *(v158 + 8) = v177;
                            RestoreStep::operator=();
                            *v158 = 0;
                            v158[1] = 0;
                            v158[2] = v178;
                            *v180 = v158;
                            v181 = **(this + 3);
                            if (v181)
                            {
                              *(this + 3) = v181;
                            }

                            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 4), v158);
                            ++*(this + 5);
                            if (!v159)
                            {
                              break;
                            }

                            v159 = v159[2];
                            if (v159)
                            {
                              v182 = *v159;
                              if (*v159 == i)
                              {
                                *v159 = 0;
                                while (1)
                                {
                                  v183 = v159[1];
                                  if (!v183)
                                  {
                                    break;
                                  }

                                  do
                                  {
                                    v159 = v183;
                                    v183 = *v183;
                                  }

                                  while (v183);
                                }
                              }

                              else
                              {
                                for (v159[1] = 0; v182; v182 = v159[1])
                                {
                                  do
                                  {
                                    v159 = v182;
                                    v182 = *v182;
                                  }

                                  while (v182);
                                }
                              }

                              v158 = i;
                              v173 += 32;
                              if (v173 == 64)
                              {
                                goto LABEL_299;
                              }
                            }

                            else
                            {
                              v173 += 32;
                              v158 = i;
                              if (v173 == 64)
                              {
                                goto LABEL_302;
                              }
                            }
                          }

                          v162 = v173 + 32;
                          if (v173 != 32)
                          {
                            goto LABEL_251;
                          }
                        }

                        else
                        {
LABEL_250:
                          v161 = v102;
                          v162 = 0;
LABEL_251:
                          v163 = (this + 32);
                          do
                          {
                            v164 = &v221[v162];
                            v165 = *v163;
                            if (*v163)
                            {
                              v166 = *v164;
                              do
                              {
                                while (1)
                                {
                                  v167 = v165;
                                  v168 = *(v165 + 32);
                                  if (v166 < v168)
                                  {
                                    break;
                                  }

                                  if (v168 >= v166)
                                  {
                                    goto LABEL_253;
                                  }

                                  v165 = v167[1];
                                  if (!v165)
                                  {
                                    v169 = v167 + 1;
                                    goto LABEL_263;
                                  }
                                }

                                v165 = *v167;
                              }

                              while (*v167);
                              v169 = v167;
                            }

                            else
                            {
                              v166 = *v164;
                              v169 = (this + 32);
                              v167 = (this + 32);
                            }

LABEL_263:
                            v170 = operator new(0x40uLL);
                            v170[8] = v166;
                            v171 = *(v164 + 2);
                            *(v170 + 5) = *(v164 + 1);
                            *(v170 + 6) = v171;
                            if (v171)
                            {
                              atomic_fetch_add_explicit((v171 + 8), 1uLL, memory_order_relaxed);
                            }

                            *(v170 + 28) = *(v164 + 12);
                            *(v170 + 58) = v164[26];
                            *v170 = 0;
                            *(v170 + 1) = 0;
                            *(v170 + 2) = v167;
                            *v169 = v170;
                            v172 = **(this + 3);
                            if (v172)
                            {
                              *(this + 3) = v172;
                            }

                            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 4), v170);
                            ++*(this + 5);
LABEL_253:
                            v162 += 32;
                          }

                          while (v162 != 64);
                        }

LABEL_303:
                        v185 = *&v222[16];
                        if (*&v222[16] && !atomic_fetch_add((*&v222[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v185->__on_zero_shared)(v185);
                          std::__shared_weak_count::__release_weak(v185);
                        }

                        v186 = *&v221[16];
                        v102 = v161;
                        if (*&v221[16] && !atomic_fetch_add((*&v221[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v186->__on_zero_shared)(v186);
                          std::__shared_weak_count::__release_weak(v186);
                        }

                        size = __t.__r_.__value_.__l.__size_;
                        v85 = v193;
                        if (__t.__r_.__value_.__l.__size_ && !atomic_fetch_add((__t.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (size->__on_zero_shared)(size);
                          std::__shared_weak_count::__release_weak(size);
                        }

                        v188 = v223.__r_.__value_.__l.__size_;
                        if (v223.__r_.__value_.__l.__size_ && !atomic_fetch_add((v223.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v188->__on_zero_shared)(v188);
                          std::__shared_weak_count::__release_weak(v188);
                        }

                        ACFUError::createAppendedDomain(*(this + 13), @"BasebandRestore");
                        v41 = 0;
LABEL_316:
                        if (!cf)
                        {
                          goto LABEL_318;
                        }

                        goto LABEL_317;
                      }

                      if ((HIDWORD(valuePtr) - 1) < 2)
                      {
                        v85 = CFDictionaryGetValue(a2, @"firmwareDataFolder");
                        if (v85)
                        {
                          AMSupportSafeRetain();
                          v86 = CFGetTypeID(v85);
                          v87 = CFStringGetTypeID();
                          if (v86 != v87)
                          {
                            ACFULogging::getLogInstance(v87);
                            ACFULogging::handleMessage();
                            v102 = 0;
                            v41 = 4002;
                            goto LABEL_316;
                          }

                          GetBasebandTatsuTagToFileNameMap(v213);
                          RTKitFirmware::create();
                          v88 = *v221;
                          if (*v221)
                          {
                            v89 = operator new(0x20uLL);
                            *v89 = &unk_1F5F03B38;
                            v89[1] = 0;
                            v89[2] = 0;
                            v89[3] = v88;
                            *v221 = 0;
                            v90 = *(this + 20);
                            *(this + 19) = v88;
                            *(this + 20) = v89;
                            if (!v90)
                            {
                              goto LABEL_133;
                            }
                          }

                          else
                          {
                            *v221 = 0;
                            v90 = *(this + 20);
                            *(this + 19) = 0;
                            *(this + 20) = 0;
                            if (!v90)
                            {
LABEL_133:
                              v114 = *v221;
                              *v221 = 0;
                              if (v114)
                              {
                                (*(*v114 + 56))(v114);
                              }

                              std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v213, v214);
                              if (!*(this + 19))
                              {
                                ACFULogging::getLogInstance(v115);
                                ACFULogging::handleMessage();
                                v102 = 0;
                                v41 = 1000;
                                goto LABEL_316;
                              }

                              v102 = 0;
LABEL_188:
                              v132 = ACFURestore::isInternalBuild(this);
                              v133 = valuePtr;
                              v134 = 0x1000000;
                              v135 = *(this + 24);
                              if ((v27 & 1) == 0)
                              {
                                v134 = 0;
                              }

                              v136 = v134 | v59;
                              v209 = *(this + 23);
                              v210 = v135;
                              if (v135)
                              {
                                atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v137 = *(this + 46);
                              v138 = v132 | (v133 << 32);
                              v207 = *(this + 45);
                              v208 = v137;
                              if (v137)
                              {
                                atomic_fetch_add_explicit(&v137->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                              }

                              BasebandUpdaterTransport::create(&v209, &v207, v138 | 0xAAAAAA00, v136 | v21 | v55, v221);
                              v139 = *v221;
                              if (*v221)
                              {
                                v140 = operator new(0x20uLL);
                                *v140 = &unk_1F5F03B88;
                                v140[1] = 0;
                                v140[2] = 0;
                                v140[3] = v139;
                                *v221 = 0;
                                v141 = *(this + 22);
                                *(this + 21) = v139;
                                *(this + 22) = v140;
                                if (!v141)
                                {
                                  goto LABEL_200;
                                }
                              }

                              else
                              {
                                *v221 = 0;
                                v141 = *(this + 22);
                                *(this + 21) = 0;
                                *(this + 22) = 0;
                                if (!v141)
                                {
                                  goto LABEL_200;
                                }
                              }

                              if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v141->__on_zero_shared)(v141);
                                std::__shared_weak_count::__release_weak(v141);
                              }

LABEL_200:
                              v142 = *v221;
                              *v221 = 0;
                              if (v142)
                              {
                                (*(*v142 + 64))(v142);
                              }

                              v143 = v208;
                              if (v208)
                              {
                                std::__shared_weak_count::__release_weak(v208);
                              }

                              v144 = v210;
                              if (v210 && !atomic_fetch_add(&v210->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v144->__on_zero_shared)(v144);
                                std::__shared_weak_count::__release_weak(v144);
                              }

                              v145 = *(this + 21);
                              if (!v145)
                              {
                                goto LABEL_358;
                              }

                              LOWORD(__t.__r_.__value_.__l.__data_) = 256;
                              v146 = *(this + 22);
                              v205 = v145;
                              v206 = v146;
                              if (v146)
                              {
                                atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v147 = *(this + 20);
                              v203 = *(this + 19);
                              v204 = v147;
                              if (v147)
                              {
                                atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v148 = *(this + 24);
                              v201 = *(this + 23);
                              v202 = v148;
                              if (v148)
                              {
                                atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v143 = ACFURTKitROM::create();
                              v149 = *v221;
                              *v221 = 0;
                              *&v221[8] = 0;
                              v150 = *(this + 61);
                              *(this + 30) = v149;
                              if (v150 && !atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v150->__on_zero_shared)(v150);
                                std::__shared_weak_count::__release_weak(v150);
                              }

                              v151 = *&v221[8];
                              if (*&v221[8] && !atomic_fetch_add((*&v221[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v151->__on_zero_shared)(v151);
                                std::__shared_weak_count::__release_weak(v151);
                              }

                              if (v202 && !atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v202->__on_zero_shared)(v202);
                                std::__shared_weak_count::__release_weak(v202);
                              }

                              if (v204 && !atomic_fetch_add(&v204->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v204->__on_zero_shared)(v204);
                                std::__shared_weak_count::__release_weak(v204);
                              }

                              if (v206 && !atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v206->__on_zero_shared)(v206);
                                std::__shared_weak_count::__release_weak(v206);
                              }

                              if (!*(this + 60))
                              {
LABEL_358:
                                ACFULogging::getLogInstance(v143);
                                ACFULogging::handleMessage();
                                v41 = 4008;
                                goto LABEL_316;
                              }

                              v152 = this + 280;
                              *v221 = &unk_1F5F03BD8;
                              *&v221[8] = this;
                              *&v221[24] = v221;
                              if (v221 == this + 280)
                              {
                                unk_1F5F03BF8(v221);
                                v103 = *(this + 60);
                                v104 = *(this + 61);
                                v223.__r_.__value_.__r.__words[0] = v103;
                                v223.__r_.__value_.__l.__size_ = v104;
                                if (v104)
                                {
                                  goto LABEL_236;
                                }

                                goto LABEL_119;
                              }

                              v153 = *(this + 38);
                              if (v153 == v152)
                              {
                                v223.__r_.__value_.__l.__size_ = this;
                                v223.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
                                v223.__r_.__value_.__r.__words[0] = &unk_1F5F03BD8;
                                *&v221[24] = 0;
                                (*(*v153 + 24))(v153, v221);
                                (*(**(this + 38) + 32))(*(this + 38));
                                *(this + 38) = 0;
                                *&v221[24] = v221;
                                (*(v223.__r_.__value_.__r.__words[0] + 24))(&v223, this + 280);
                                (*(v223.__r_.__value_.__r.__words[0] + 32))(&v223);
                                *(this + 38) = v152;
                                v153 = *&v221[24];
                                if (*&v221[24] != v221)
                                {
LABEL_233:
                                  if (v153)
                                  {
                                    (*(*v153 + 40))(v153);
                                  }

                                  v103 = *(this + 60);
                                  v104 = *(this + 61);
                                  v223.__r_.__value_.__r.__words[0] = v103;
                                  v223.__r_.__value_.__l.__size_ = v104;
                                  if (v104)
                                  {
                                    goto LABEL_236;
                                  }

LABEL_119:
                                  LOWORD(v223.__r_.__value_.__r.__words[2]) = 0;
                                  v223.__r_.__value_.__s.__data_[18] = 1;
                                  *&v221[8] = v103;
                                  *&v221[16] = 0;
                                  *v221 = 0;
                                  *&v221[24] = 0;
                                  v221[26] = 1;
                                  *&__t.__r_.__value_.__l.__data_ = v103;
                                  goto LABEL_238;
                                }
                              }

                              else
                              {
                                *(this + 35) = &unk_1F5F03BD8;
                                *(this + 36) = this;
                                *&v221[24] = v153;
                                *(this + 38) = v152;
                                if (v153 != v221)
                                {
                                  goto LABEL_233;
                                }
                              }

                              (*(*v153 + 32))(v153);
                              v103 = *(this + 60);
                              v104 = *(this + 61);
                              v223.__r_.__value_.__r.__words[0] = v103;
                              v223.__r_.__value_.__l.__size_ = v104;
                              if (v104)
                              {
                                goto LABEL_236;
                              }

                              goto LABEL_119;
                            }
                          }

                          if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v90->__on_zero_shared)(v90);
                            std::__shared_weak_count::__release_weak(v90);
                          }

                          goto LABEL_133;
                        }

                        *v221 = 0xAAAAAAAAAAAAAAAALL;
                        *v221 = ACFUDataAccess::createPersonalizedFirmwarePath(@"Baseband", v84);
                        if (!*v221)
                        {
                          ACFULogging::getLogInstance(0);
                          ACFULogging::handleMessage();
                          v192 = v221;
                          goto LABEL_378;
                        }

                        GetBasebandTatsuTagToFileNameMap(v211);
                        RTKitFirmware::create();
                        v105 = v223.__r_.__value_.__r.__words[0];
                        if (v223.__r_.__value_.__r.__words[0])
                        {
                          v106 = operator new(0x20uLL);
                          *v106 = &unk_1F5F03B38;
                          v106[1] = 0;
                          v106[2] = 0;
                          v106[3] = v105;
                          v223.__r_.__value_.__r.__words[0] = 0;
                          v107 = *(this + 20);
                          *(this + 19) = v105;
                          *(this + 20) = v106;
                          if (!v107)
                          {
                            goto LABEL_151;
                          }
                        }

                        else
                        {
                          v223.__r_.__value_.__r.__words[0] = 0;
                          v107 = *(this + 20);
                          *(this + 19) = 0;
                          *(this + 20) = 0;
                          if (!v107)
                          {
LABEL_151:
                            v118 = v223.__r_.__value_.__r.__words[0];
                            v223.__r_.__value_.__r.__words[0] = 0;
                            if (v118)
                            {
                              (*(*v118 + 56))(v118);
                            }

                            std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v211, v212);
                            if (*(this + 19))
                            {
                              if (*v221)
                              {
                                CFRelease(*v221);
                              }

LABEL_176:
                              v102 = 0;
LABEL_187:
                              v85 = 0;
                              goto LABEL_188;
                            }

                            ACFULogging::getLogInstance(v119);
                            ACFULogging::handleMessage();
                            v41 = 1000;
                            v192 = v221;
LABEL_378:
                            ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&v192->__r_.__value_.__l.__data_);
                            v102 = 0;
                            v85 = 0;
                            goto LABEL_316;
                          }
                        }

                        if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v107->__on_zero_shared)(v107);
                          std::__shared_weak_count::__release_weak(v107);
                        }

                        goto LABEL_151;
                      }

                      if (!HIDWORD(valuePtr))
                      {
                        if (ACFURestore::isPostSealing(this))
                        {
                          v215.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
                          v91 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/%@/", *(this + 44), @"/usr/standalone/firmware/Baseband/");
                          v215.__r_.__value_.__r.__words[0] = v91;
                          if (!v91)
                          {
                            ACFULogging::getLogInstance(0);
                            ACFULogging::handleMessage();
LABEL_377:
                            v192 = &v215;
                            goto LABEL_378;
                          }

                          ACFULogging::getLogInstance(v91);
                          *(&__t.__r_.__value_.__s + 23) = 15;
                          strcpy(&__t, "BasebandRestore");
                          v92 = std::string::append(&__t, "::", 2uLL);
                          v93 = *&v92->__r_.__value_.__l.__data_;
                          v223.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
                          *&v223.__r_.__value_.__l.__data_ = v93;
                          v92->__r_.__value_.__l.__size_ = 0;
                          v92->__r_.__value_.__r.__words[2] = 0;
                          v92->__r_.__value_.__r.__words[0] = 0;
                          v94 = std::string::append(&v223, "init", 4uLL);
                          v95 = *&v94->__r_.__value_.__l.__data_;
                          *&v221[16] = *(&v94->__r_.__value_.__l + 2);
                          *v221 = v95;
                          v94->__r_.__value_.__l.__size_ = 0;
                          v94->__r_.__value_.__r.__words[2] = 0;
                          v94->__r_.__value_.__r.__words[0] = 0;
                          ACFULogging::handleMessageCFType();
                          if (v221[23] < 0)
                          {
                            operator delete(*v221);
                            if ((SHIBYTE(v223.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
LABEL_103:
                              if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
                                goto LABEL_104;
                              }

LABEL_167:
                              operator delete(__t.__r_.__value_.__l.__data_);
LABEL_104:
                              GetBasebandTatsuTagToFileNameMap(v216);
                              RTKitFirmware::create();
                              v96 = *v221;
                              if (*v221)
                              {
                                v97 = operator new(0x20uLL);
                                *v97 = &unk_1F5F03B38;
                                v97[1] = 0;
                                v97[2] = 0;
                                v97[3] = v96;
                                *v221 = 0;
                                v98 = *(this + 20);
                                *(this + 19) = v96;
                                *(this + 20) = v97;
                                if (!v98)
                                {
                                  goto LABEL_171;
                                }
                              }

                              else
                              {
                                *v221 = 0;
                                v98 = *(this + 20);
                                *(this + 19) = 0;
                                *(this + 20) = 0;
                                if (!v98)
                                {
LABEL_171:
                                  v129 = *v221;
                                  *v221 = 0;
                                  if (v129)
                                  {
                                    (*(*v129 + 56))(v129);
                                  }

                                  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v216, v217);
                                  if (*(this + 19))
                                  {
                                    if (v215.__r_.__value_.__r.__words[0])
                                    {
                                      CFRelease(v215.__r_.__value_.__l.__data_);
                                    }

                                    goto LABEL_176;
                                  }

                                  ACFULogging::getLogInstance(v130);
                                  ACFULogging::handleMessage();
                                  v41 = 1000;
                                  goto LABEL_377;
                                }
                              }

                              if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v98->__on_zero_shared)(v98);
                                std::__shared_weak_count::__release_weak(v98);
                              }

                              goto LABEL_171;
                            }
                          }

                          else if ((SHIBYTE(v223.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_103;
                          }

                          operator delete(v223.__r_.__value_.__l.__data_);
                          if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_104;
                          }

                          goto LABEL_167;
                        }

                        v102 = CFDictionaryGetValue(a2, @"firmwareSaveFolder");
                        if (!v102)
                        {
                          URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(*(this + 44), @"/usr/standalone/firmware/Baseband/", v108);
                          v113 = v219;
                          v219 = URLByAppendingStrings;
                          if (!v113)
                          {
                            goto LABEL_158;
                          }

                          goto LABEL_157;
                        }

                        AMSupportSafeRetain();
                        v109 = CFGetTypeID(v102);
                        v110 = CFStringGetTypeID();
                        if (v109 == v110)
                        {
                          v111 = *MEMORY[0x1E695E480];
                          URLByAppendingStrings = AMSupportCreateURLFromString();
                          v113 = v219;
                          v219 = URLByAppendingStrings;
                          if (!v113)
                          {
                            goto LABEL_158;
                          }

LABEL_157:
                          CFRelease(v113);
LABEL_158:
                          if (!URLByAppendingStrings)
                          {
                            ACFULogging::getLogInstance(v113);
                            ACFULogging::handleMessage();
                            v85 = 0;
                            v41 = 4000;
                            goto LABEL_316;
                          }

                          *&v120 = 0xAAAAAAAAAAAAAAAALL;
                          *(&v120 + 1) = 0xAAAAAAAAAAAAAAAALL;
                          *&v221[4] = -1431655766;
                          *&v221[24] = 0xAAAAAAAAAAAAAAAALL;
                          *v222 = v120;
                          *v221 = 1;
                          *&v221[8] = @"Cellular1,Ticket";
                          *&v221[16] = URLByAppendingStrings;
                          GetBasebandTatsuTagToFileNameMap(&v221[24]);
                          ACFULogging::getLogInstance(v121);
                          *(&v215.__r_.__value_.__s + 23) = 15;
                          strcpy(&v215, "BasebandRestore");
                          v122 = std::string::append(&v215, "::", 2uLL);
                          v123 = *&v122->__r_.__value_.__l.__data_;
                          __t.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
                          *&__t.__r_.__value_.__l.__data_ = v123;
                          v122->__r_.__value_.__l.__size_ = 0;
                          v122->__r_.__value_.__r.__words[2] = 0;
                          v122->__r_.__value_.__r.__words[0] = 0;
                          v124 = std::string::append(&__t, "init", 4uLL);
                          v125 = *&v124->__r_.__value_.__l.__data_;
                          v223.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
                          *&v223.__r_.__value_.__l.__data_ = v125;
                          v124->__r_.__value_.__l.__size_ = 0;
                          v124->__r_.__value_.__r.__words[2] = 0;
                          v124->__r_.__value_.__r.__words[0] = 0;
                          ACFULogging::handleMessageCFType();
                          if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v223.__r_.__value_.__l.__data_);
                            if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
LABEL_161:
                              if ((SHIBYTE(v215.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
                                goto LABEL_162;
                              }

LABEL_179:
                              operator delete(v215.__r_.__value_.__l.__data_);
LABEL_162:
                              RTKitFirmware::create();
                              v126 = v223.__r_.__value_.__r.__words[0];
                              if (v223.__r_.__value_.__r.__words[0])
                              {
                                v127 = operator new(0x20uLL);
                                *v127 = &unk_1F5F03B38;
                                v127[1] = 0;
                                v127[2] = 0;
                                v127[3] = v126;
                                v223.__r_.__value_.__r.__words[0] = 0;
                                v128 = *(this + 20);
                                *(this + 19) = v126;
                                *(this + 20) = v127;
                                if (!v128)
                                {
                                  goto LABEL_183;
                                }
                              }

                              else
                              {
                                v223.__r_.__value_.__r.__words[0] = 0;
                                v128 = *(this + 20);
                                *(this + 19) = 0;
                                *(this + 20) = 0;
                                if (!v128)
                                {
LABEL_183:
                                  v131 = v223.__r_.__value_.__r.__words[0];
                                  v223.__r_.__value_.__r.__words[0] = 0;
                                  if (v131)
                                  {
                                    v131 = (*(*v131 + 56))(v131);
                                  }

                                  if (!*(this + 19))
                                  {
                                    ACFULogging::getLogInstance(v131);
                                    ACFULogging::handleMessage();
                                    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v221[24], *v222);
                                    v85 = 0;
                                    v41 = 1000;
                                    goto LABEL_316;
                                  }

                                  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v221[24], *v222);
                                  goto LABEL_187;
                                }
                              }

                              if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v128->__on_zero_shared)(v128);
                                std::__shared_weak_count::__release_weak(v128);
                              }

                              goto LABEL_183;
                            }
                          }

                          else if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_161;
                          }

                          operator delete(__t.__r_.__value_.__l.__data_);
                          if ((SHIBYTE(v215.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_162;
                          }

                          goto LABEL_179;
                        }

                        ACFULogging::getLogInstance(v110);
                        ACFULogging::handleMessage();
LABEL_353:
                        v85 = 0;
                        v41 = 4002;
                        goto LABEL_316;
                      }

                      ACFULogging::getLogInstance(isPreflight);
                      ACFULogging::handleMessage();
LABEL_121:
                      v102 = 0;
                      v85 = 0;
                      v41 = 1005;
                      goto LABEL_316;
                    }

                    v68 = CFDictionaryGetValue(*(this + 15), @"crashContextData");
                    v69 = v68;
                    if (v68)
                    {
                      v70 = CFGetTypeID(v68);
                      v61 = CFDataGetTypeID();
                      if (v70 == v61)
                      {
                        Copy = CFDataCreateCopy(*MEMORY[0x1E695E480], v69);
                        v72 = *(this + 67);
                        *(this + 67) = Copy;
                        if (v72)
                        {
                          CFRelease(v72);
                        }

                        goto LABEL_80;
                      }

LABEL_352:
                      ACFULogging::getLogInstance(v61);
                      ACFULogging::handleMessage();
                      v102 = 0;
                      goto LABEL_353;
                    }

LABEL_351:
                    ACFULogging::getLogInstance(0);
                    ACFULogging::handleMessage();
                    goto LABEL_121;
                  }

                  v56 = CFDictionaryGetValue(*(this + 15), @"skipReset");
                  v57 = v56;
                  if (v56)
                  {
                    v58 = CFGetTypeID(v56);
                    v54 = CFBooleanGetTypeID();
                    if (v58 == v54)
                    {
                      v59 = (CFBooleanGetValue(v57) != 0) << 16;
                      goto LABEL_63;
                    }

                    goto LABEL_363;
                  }

                  goto LABEL_361;
                }

                v34 = CFGetTypeID(v31);
                v35 = CFStringGetTypeID();
                if (v34 != v35)
                {
                  v223.__r_.__value_.__r.__words[0] = 0;
                  ACFULogging::getLogInstance(v35);
                  ACFULogging::handleMessage();
                  goto LABEL_43;
                }

                CFRetain(v31);
                v223.__r_.__value_.__r.__words[0] = v31;
                v29 = *(this + 15);
              }

              else
              {
                v31 = 0;
              }

              if (!CFDictionaryContainsKey(v29, @"coreDumpPathNoTimestamp"))
              {
                if (v31)
                {
                  goto LABEL_45;
                }

                goto LABEL_51;
              }

              v36 = CFDictionaryGetValue(*(this + 15), @"coreDumpPathNoTimestamp");
              v37 = v36;
              if (v36)
              {
                v38 = CFGetTypeID(v36);
                v33 = CFBooleanGetTypeID();
                if (v38 == v33)
                {
                  v39 = CFBooleanGetValue(v37);
                  if (v31)
                  {
                    if (v39)
                    {
LABEL_46:
                      ACFULogging::getLogInstance(v39);
                      strcpy(v221, "BasebandRestore::init");
                      *&v221[22] = 5376;
                      LODWORD(__t.__r_.__value_.__l.__data_) = 0;
                      *(__t.__r_.__value_.__r.__words + 3) = 0;
                      v45 = ACFULogging::handleMessageCFType();
                      if (v221[23] < 0)
                      {
                        operator delete(*v221);
                      }

                      ACFULogging::getLogInstance(v45);
                      ACFULogging::handleMessage();
                      ACFUDiagnostics::create(v223.__r_.__value_.__l.__data_, 0);
                      v48 = *v221;
                      if (*v221)
                      {
                        v49 = operator new(0x20uLL);
                        *v49 = &unk_1F5F03AE8;
                        v49[1] = 0;
                        v49[2] = 0;
                        v49[3] = v48;
                        *v221 = 0;
                        v50 = *(this + 24);
                        *(this + 23) = v48;
                        *(this + 24) = v49;
                        if (!v50)
                        {
                          goto LABEL_140;
                        }
                      }

                      else
                      {
                        *v221 = 0;
                        v50 = *(this + 24);
                        *(this + 23) = 0;
                        *(this + 24) = 0;
                        if (!v50)
                        {
LABEL_140:
                          v116 = *v221;
                          *v221 = 0;
                          if (v116)
                          {
                            v117 = MEMORY[0x1E6926260](v116, v46, v47);
                            operator delete(v117);
                          }

                          if (*(this + 23))
                          {
                            v41 = 0;
                            v40 = 1;
                            goto LABEL_144;
                          }

                          ACFULogging::getLogInstance(v116);
                          ACFULogging::handleMessage();
LABEL_43:
                          v40 = 0;
                          v41 = 4008;
                          goto LABEL_144;
                        }
                      }

                      if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v50->__on_zero_shared)(v50);
                        std::__shared_weak_count::__release_weak(v50);
                      }

                      goto LABEL_140;
                    }

LABEL_45:
                    *&v42 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *&v222[12] = v42;
                    *&v221[16] = v42;
                    *v222 = v42;
                    *v221 = v42;
                    __t.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
                    v215.__r_.__value_.__r.__words[0] = std::chrono::system_clock::to_time_t(&__t);
                    v43 = __t.__r_.__value_.__r.__words[0];
                    v44 = localtime(&v215);
                    strftime(v221, 0x3CuLL, "%Y-%m-%d-%H-%M-%S", v44);
                    v223.__r_.__value_.__r.__words[0] = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/log-bb-%s-%u-cd/", v31, v221, ((v43 / 1000) % 1000));
                    CFRelease(v31);
                    goto LABEL_46;
                  }

LABEL_51:
                  v41 = 0;
                  goto LABEL_52;
                }

                goto LABEL_370;
              }

LABEL_369:
              ACFULogging::getLogInstance(0);
              ACFULogging::handleMessage();
              v40 = 0;
              v41 = 1005;
              goto LABEL_144;
            }

LABEL_343:
            ACFULogging::getLogInstance(v20);
            ACFULogging::handleMessage();
LABEL_364:
            v102 = 0;
            v85 = 0;
            v195 = 0;
            v41 = 4002;
            goto LABEL_316;
          }

LABEL_342:
          ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage();
LABEL_362:
          v102 = 0;
          v85 = 0;
          v195 = 0;
          v41 = 1005;
          goto LABEL_316;
        }

        ACFULogging::getLogInstance(Value);
      }

      else
      {
        ACFULogging::getLogInstance(TypeID);
      }

      ACFULogging::handleMessage();
      v195 = 0;
      v85 = 0;
      v102 = 0;
      v41 = 4002;
LABEL_317:
      CFRelease(cf);
LABEL_318:
      if (v85)
      {
        CFRelease(v85);
      }

      if (v102)
      {
        CFRelease(v102);
      }

      if (v195)
      {
        CFRelease(v195);
      }

      if (v194)
      {
        goto LABEL_325;
      }

      goto LABEL_326;
    }
  }

  ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage();
  v41 = 4000;
  if (v194)
  {
LABEL_325:
    CFRelease(v194);
  }

LABEL_326:
  if (v219)
  {
    CFRelease(v219);
  }

  v189 = *MEMORY[0x1E69E9840];
  return v41;
}

void sub_1E52FD210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v44 - 192));
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef((v44 - 208));
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::initBBUCapabilities(BasebandRestore *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v16[0] = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v16, v1);
    memset(v15, 170, sizeof(v15));
    __p = operator new(0x28uLL);
    strcpy(__p, "/private/var/wireless/baseband_data");
    ctu::cf::map_adapter::getString();
    operator delete(__p);
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v3 = off_1ED944170;
    if (!off_1ED944170)
    {
      v4 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v4);
      v16[2] = v4;
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
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v8 = v3[1];
    if (!v8)
    {
LABEL_15:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v9 = *(v8 + 8);
        if (v9 < 3)
        {
          break;
        }

        v8 = *v8;
        if (!v8)
        {
          goto LABEL_15;
        }
      }

      if (v9 == 2)
      {
        break;
      }

      v8 = v8[1];
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    v10 = (v8 + 5);
    if (v8 + 5 != v15)
    {
      if (*(v8 + 63) < 0)
      {
        if (SHIBYTE(v15[2]) >= 0)
        {
          v11 = v15;
        }

        else
        {
          v11 = v15[0];
        }

        if (SHIBYTE(v15[2]) >= 0)
        {
          v12 = HIBYTE(v15[2]);
        }

        else
        {
          v12 = v15[1];
        }

        std::string::__assign_no_alias<false>(v10, v11, v12);
      }

      else if ((HIBYTE(v15[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v10, v15[0], v15[1]);
      }

      else
      {
        *v10 = *v15;
        v8[7] = v15[2];
      }
    }

    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
LABEL_32:
      MEMORY[0x1E69265E0](v16);
      return 0;
    }

    operator delete(v15[0]);
    goto LABEL_32;
  }

  return 0;
}

void sub_1E52FD8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v23 - 40));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69265E0](v23 - 56);
  _Unwind_Resume(a1);
}

CFComparisonResult BasebandRestore::basebandRestoreCommand(CFStringRef theString2, const __CFString *a2)
{
  result = CFStringCompare(@"performBootup", theString2, 0);
  if (result)
  {
    if (CFStringCompare(@"performCoreDump", theString2, 0))
    {
      if (CFStringCompare(@"requireSystemPartitionMount", theString2, 0) && CFStringCompare(@"requirePartitionMount", theString2, 0))
      {
        if (CFStringCompare(@"copyBasebandMigrationData", theString2, 0))
        {
          if (CFStringCompare(@"restoreBasebandMigrationData", theString2, 0))
          {
            if (CFStringCompare(@"CopyIdentifier", theString2, 0))
            {
              if (CFStringCompare(@"ping", theString2, 0))
              {
                if (CFStringCompare(@"performManifestCheck", theString2, 0))
                {
                  if (CFStringCompare(@"provision", theString2, 0))
                  {
                    if (CFStringCompare(@"performFusing", theString2, 0))
                    {
                      if (CFStringCompare(@"verifyFusing", theString2, 0))
                      {
                        if (CFStringCompare(@"downloadFusingProgram", theString2, 0))
                        {
                          return 0xFFFFFFFFLL;
                        }

                        else
                        {
                          return 11;
                        }
                      }

                      else
                      {
                        return 10;
                      }
                    }

                    else
                    {
                      return 9;
                    }
                  }

                  else
                  {
                    return 8;
                  }
                }

                else
                {
                  return 7;
                }
              }

              else
              {
                return 5;
              }
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BasebandRestore *BasebandRestore::gatherPreflightParameters(BasebandRestore *this)
{
  v24 = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0;
  if (*(this + 544) != 1)
  {
    if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
    {
      v8 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
      if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
      v8 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
      if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
      {
LABEL_10:
        this = v8(@"FirmwarePreflightInfo", 0);
        v9 = this;
        if (this)
        {
          v10 = CFGetTypeID(this);
          TypeID = CFDictionaryGetTypeID();
          if (v10 != TypeID)
          {
            ACFULogging::getLogInstance(TypeID);
            ACFULogging::handleMessage();
          }

LABEL_21:
          v15 = v24;
          if (!v24)
          {
            return v9;
          }

          goto LABEL_22;
        }
      }
    }

    ACFULogging::getLogInstance(this);
    goto LABEL_27;
  }

  v1 = this;
  v2 = *(this + 21);
  if (!v2)
  {
    ACFULogging::getLogInstance(0);
LABEL_27:
    ACFULogging::handleMessage();
    goto LABEL_28;
  }

  v3 = (**v2)(&v20);
  v4 = v20;
  v5 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v21;
    v23 = v4;
    v24 = v5;
    v7 = v22;
    LODWORD(v25) = v22;
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v7 = v25;
    }
  }

  else
  {
    v23 = v20;
    v24 = 0;
    v7 = v22;
    LODWORD(v25) = v22;
  }

  if (v7)
  {
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
  }

  else
  {
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
    v12 = v23;
    v13 = v24;
    v20 = v23;
    v21 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ParametersDictionary = ACFUCommon::PersonalizeParams::getParametersDictionary(v12);
    v9 = ParametersDictionary;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v9)
    {
      goto LABEL_21;
    }

    ACFULogging::getLogInstance(ParametersDictionary);
    ACFULogging::handleMessage();
    v17 = *(v1 + 13);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to create personalization parameters dictionary");
    ACFUError::addError();
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_28:
  v9 = 0;
  v15 = v24;
  if (!v24)
  {
    return v9;
  }

LABEL_22:
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return v9;
}

void sub_1E52FDEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::performCmd(BasebandRestore *this)
{
  ACFULogging::getLogInstance(this);
  ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getStepName();
  ACFULogging::handleMessage();
  if ((v5 & 0x80000000) == 0)
  {
    CurrentUpdateStep = ACFURestore::getCurrentUpdateStep(this);
    if (CurrentUpdateStep)
    {
      goto LABEL_3;
    }

    return (*(*this + 152))(this);
  }

  operator delete(__p);
  CurrentUpdateStep = ACFURestore::getCurrentUpdateStep(this);
  if (!CurrentUpdateStep)
  {
    return (*(*this + 152))(this);
  }

LABEL_3:
  if (CurrentUpdateStep == 3)
  {
    return 1;
  }

  else
  {
    return ACFURestore::performCmd(this);
  }
}

void sub_1E52FE03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::FWUpdatePerform(BasebandRestore *this)
{
  v248 = *MEMORY[0x1E69E9840];
  result = ACFURestore::performCmd(this);
  if (!result)
  {
    goto LABEL_267;
  }

  isInternalBuild = ACFURestore::isInternalBuild(this);
  if (isInternalBuild)
  {
    if ((*(this + 401) & 1) != 0 || (isInternalBuild = *(this + 16)) != 0 && (isInternalBuild = CFDictionaryGetValue(isInternalBuild, @"BypassNVMSync")) != 0 && (v4 = isInternalBuild, v5 = CFGetTypeID(isInternalBuild), isInternalBuild = CFBooleanGetTypeID(), v5 == isInternalBuild) && (isInternalBuild = CFBooleanGetValue(v4), isInternalBuild == 1))
    {
      ACFULogging::getLogInstance(isInternalBuild);
      ACFULogging::handleMessage();
      goto LABEL_116;
    }
  }

  ACFULogging::getLogInstance(isInternalBuild);
  ACFULogging::handleMessage();
  memset(&v205, 170, sizeof(v205));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v6 = off_1ED944170;
  if (!off_1ED944170)
  {
    v7 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v7);
    *&__src[0] = v7;
    v8 = operator new(0x20uLL);
    *v8 = &unk_1F5F05A00;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    v9 = off_1ED944178;
    off_1ED944170 = v7;
    off_1ED944178 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_1ED944170;
  }

  v10 = off_1ED944178;
  *&value = v6;
  *(&value + 1) = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v6, &v205);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage();
  if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v205;
  }

  else
  {
    v19 = v205.__r_.__value_.__r.__words[0];
  }

  if (!v19)
  {
    HardwareConfig = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v13, v14, v15, v16, v17, v18, 0);
    goto LABEL_247;
  }

  if ((bbufs::prepareDestination(v19, v12) & 1) == 0)
  {
    HardwareConfig = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v20, v21, v22, v23, v24, v25, "BasebandRestore");
    goto LABEL_247;
  }

  ValueIfPresent = *(this + 16);
  *&value = 0;
  if (!ValueIfPresent || (ValueIfPresent = CFDictionaryGetValueIfPresent(ValueIfPresent, @"NVRestoreSetting", &value), !ValueIfPresent) || (LODWORD(__src[0]) = -1431655766, (v27 = value) == 0) || (v28 = CFGetTypeID(value), ValueIfPresent = CFNumberGetTypeID(), v28 != ValueIfPresent) || (ValueIfPresent = ctu::cf::assign(__src, v27, v29), (ValueIfPresent & 1) == 0) || (v30 = __src[0], (LODWORD(__src[0]) - 6) <= 0xFFFFFFFA))
  {
    ACFULogging::getLogInstance(ValueIfPresent);
LABEL_31:
    v30 = 3;
    goto LABEL_32;
  }

  ACFULogging::getLogInstance(ValueIfPresent);
  if (v30 == 3)
  {
    goto LABEL_31;
  }

LABEL_32:
  ACFULogging::handleMessage();
  *&value = 0xAAAAAAAAAAAAAAAALL;
  support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, &value);
  v32 = value;
  if (!value)
  {
    ACFULogging::getLogInstance(v31);
    v35 = ACFULogging::handleMessage();
    goto LABEL_243;
  }

  if (v30 <= 3)
  {
    if (v30 == 1 || v30 == 2)
    {
      goto LABEL_40;
    }

LABEL_39:
    ACFULogging::getLogInstance(v31);
    ACFULogging::handleMessage();
    goto LABEL_42;
  }

  if (v30 != 4 && v30 != 5)
  {
    goto LABEL_39;
  }

LABEL_40:
  ACFULogging::getLogInstance(v31);
  ACFULogging::handleMessage();
  v33 = v32[3];
  v34 = KTLBspSetNvItemsToState();
  if (!v34)
  {
    ACFULogging::getLogInstance(v34);
    v200 = off_1E876E858[v30 - 1];
    ACFULogging::handleMessage();
    v35 = (*(*v32 + 8))(v32);
LABEL_243:
    ACFULogging::getLogInstance(v35);
    BBUNVRestoreSettingAsString(v30);
    v117 = ACFULogging::handleMessage();
    goto LABEL_248;
  }

  ACFULogging::getLogInstance(v34);
  v199 = off_1E876E858[v30 - 1];
  ACFULogging::handleMessage();
LABEL_42:
  (*(*v32 + 8))(v32);
  v36 = 0xFFFFFFFFLL;
  LODWORD(__src[0]) = -1;
  TypeID = *(this + 16);
  if (TypeID)
  {
    *&value = 0xAAAAAAAAAAAAAAAALL;
    TypeID = CFDictionaryGetValueIfPresent(TypeID, @"IMEISwVersion", &value);
    if (TypeID && (v38 = value) != 0 && (v39 = CFGetTypeID(value), TypeID = CFNumberGetTypeID(), v39 == TypeID))
    {
      TypeID = ctu::cf::assign(__src, v38, v40);
      if (TypeID)
      {
        v36 = LODWORD(__src[0]);
      }

      else
      {
        v36 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v36 = 0xFFFFFFFFLL;
    }
  }

  ACFULogging::getLogInstance(TypeID);
  ACFULogging::handleMessage();
  if (((*(*this + 144))(this, v36) & 1) == 0)
  {
    HardwareConfig = TelephonyRadiosGetHardwareConfig();
    if (HardwareConfig == 2 && (*(this + 424) & 1) == 0)
    {
      goto LABEL_247;
    }

    ACFULogging::getLogInstance(HardwareConfig);
    ACFULogging::handleMessage();
  }

  *&v244 = 0;
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  value = 0u;
  memset(__src, 0, sizeof(__src));
  memset(&v206, 170, sizeof(v206));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v42 = off_1ED944170;
  if (!off_1ED944170)
  {
    v43 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v43);
    v209 = v43;
    v44 = operator new(0x20uLL);
    *v44 = &unk_1F5F05A00;
    v44[1] = 0;
    v44[2] = 0;
    v44[3] = v43;
    v45 = off_1ED944178;
    off_1ED944170 = v43;
    off_1ED944178 = v44;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    v42 = off_1ED944170;
  }

  v46 = off_1ED944178;
  __dst[0] = v42;
  __dst[1] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v42, &v206);
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  ACFULogging::getLogInstance(v47);
  v48 = &v206;
  ACFULogging::handleMessage();
  if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v48 = v206.__r_.__value_.__r.__words[0];
  }

  if (!v48)
  {
    v69 = _BBUFSDebugPrint("BBUFSServerParametersInit", "invalid parameters specified: parameters = %p, destination = %s\n", v49, v50, v51, v52, v53, v54, __src);
    goto LABEL_85;
  }

  memset(__src, 0, sizeof(__src));
  v55 = strnlen(v48, 0x100uLL);
  v56 = TelephonyUtilStrlcpy();
  if (v56 != v55 || (v56 + 1) >= 0x101)
  {
    v69 = _BBUFSDebugPrint("BBUFSServerParametersInit", "required path length = %zu, copied = %zu, max length = %zu\n", v57, v58, v59, v60, v61, v62, v55 + 1);
    *(&__src[22] + 1) = 0;
    goto LABEL_85;
  }

  *(&__src[22] + 1) = 0;
  memcpy(__dst, __src, sizeof(__dst));
  v69 = BBUFSServerCreate(&value, __dst, v63, v64, v65, v66, v67, v68);
  if ((v69 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (!sBBUFSServerSetConfig)
  {
    v69 = _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n", v70, v71, v72, v73, v74, v75, "BasebandRestore");
    goto LABEL_85;
  }

  v69 = (sBBUFSServerSetConfig)(&value, "ForceSync", 0xAAAAAAAA00000000);
  if ((v69 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (!sBBUFSServerSetConfig)
  {
    v69 = _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n", v76, v77, v78, v79, v80, v81, "BasebandRestore");
    goto LABEL_85;
  }

  v69 = (sBBUFSServerSetConfig)(&value, "ShutdownSync", 0xAAAAAAAA00000000);
  if ((v69 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (!sBBUFSServerStart)
  {
    v69 = _BBUFSDebugPrint("BBUFSServerStart", "sBBUFSServerStart function not initialized\n", v82, v83, v84, v85, v86, v87, "BasebandRestore");
    goto LABEL_85;
  }

  v69 = (sBBUFSServerStart)(&value);
  if ((v69 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (!sBBUFSServerFlush)
  {
    v69 = _BBUFSDebugPrint("BBUFSServerFlush", "sBBUFSServerFlush function not initialized\n", v88, v89, v90, v91, v92, v93, "BasebandRestore");
    goto LABEL_85;
  }

  v69 = sBBUFSServerFlush(&value);
  if ((v242 & 1) == 0 || (v69 & 1) == 0)
  {
LABEL_85:
    ACFULogging::getLogInstance(v69);
    v198 = "BasebandRestore";
    ACFULogging::handleMessage();
    v100 = 0;
    v101 = &unk_1ECFD5000;
    if (v242 != 1)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

  ACFULogging::getLogInstance(v69);
  v198 = "BasebandRestore";
  ACFULogging::handleMessage();
  v100 = 1;
  v101 = &unk_1ECFD5000;
  if (v242 != 1)
  {
    goto LABEL_91;
  }

LABEL_86:
  v102 = v101[276];
  if (!v102)
  {
    v103 = _BBUFSDebugPrint("BBUFSServerStop", "sBBUFSServerStop function not initialized\n", v94, v95, v96, v97, v98, v99, "BasebandRestore");
    goto LABEL_90;
  }

  v103 = v102(&value);
  if ((v103 & 1) == 0)
  {
LABEL_90:
    ACFULogging::getLogInstance(v103);
    v198 = "BasebandRestore";
    ACFULogging::handleMessage();
  }

LABEL_91:
  if (*(&v241 + 1))
  {
    _BBUFSDebugPrint("BBUFSServerRelease", "BBUFSServer releasing registry\n", v94, v95, v96, v97, v98, v99, "BasebandRestore");
    v104 = *(&v241 + 1);
    if (*(&v241 + 1))
    {
      v105 = *(*(&v241 + 1) + 8);
      if (v105)
      {
        std::__shared_weak_count::__release_weak(v105);
      }

      operator delete(v104);
    }

    *(&v241 + 1) = 0;
  }

  sBBUFSServerStart = 0;
  v101[276] = 0;
  sBBUFSServerFlush = 0;
  sBBUFSServerFlushInProgress = 0;
  sBBUFSServerSetConfig = 0;
  sBBUFSServerSetConfigDefaults = 0;
  HardwareConfig = _BBUFSDebugPrint("BBUFSServerRelease", "BBUFSServer destroyed\n", v94, v95, v96, v97, v98, v99, v198);
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  if (v100)
  {
    __dst[0] = 0xAAAAAAAAAAAAAAAALL;
    support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, __dst);
    v107 = __dst[0];
    if (__dst[0])
    {
      *&v222 = 0xAAAAAAAAAAAAAAAALL;
      *&v108 = 0xAAAAAAAAAAAAAAAALL;
      *(&v108 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v220 = v108;
      v221 = v108;
      value = v108;
      *(&v222 + 1) = 0xAAAAAAAAFFFFFFFFLL;
      v109 = *(__dst[0] + 3);
      Bsp::ARICommandDriver::ARICommandDriver();
      *&v110 = 0xAAAAAAAAAAAAAAAALL;
      *(&v110 + 1) = 0xAAAAAAAAAAAAAAAALL;
      __src[2] = v110;
      __src[3] = v110;
      __src[0] = v110;
      __src[1] = v110;
      AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK::ARI_FactoryGetNvItemsSettingReq_SDK(__src);
      v206.__r_.__value_.__r.__words[0] = 0;
      NvItemsSetting = Bsp::ARICommandDriver::GetNvItemsSetting();
      v112 = v206.__r_.__value_.__r.__words[0];
      if (v206.__r_.__value_.__r.__words[0])
      {
        v113 = NvItemsSetting;
      }

      else
      {
        v113 = 0;
      }

      if (v113)
      {
        if (**(v206.__r_.__value_.__r.__words[0] + 64))
        {
          ACFULogging::getLogInstance(v206.__r_.__value_.__l.__data_);
          v202 = **(v206.__r_.__value_.__r.__words[0] + 64);
          ACFULogging::handleMessage();
        }

        else
        {
          v114 = **(v206.__r_.__value_.__r.__words[0] + 72);
          if (v114 < 4)
          {
            if (v114 > 3)
            {
              v30 = 6;
            }

            else
            {
              v30 = dword_1E5391EE0[v114];
            }

            v115 = **(v206.__r_.__value_.__r.__words[0] + 80);
            NvItemsSetting = 1;
            goto LABEL_111;
          }

          ACFULogging::getLogInstance(v206.__r_.__value_.__l.__data_);
          v203 = **(v206.__r_.__value_.__r.__words[0] + 72);
          v204 = **(v206.__r_.__value_.__r.__words[0] + 80);
          ACFULogging::handleMessage();
        }

        NvItemsSetting = 0;
      }

      else
      {
        ACFULogging::getLogInstance(v206.__r_.__value_.__l.__data_);
        ACFULogging::handleMessage();
      }

      v112 = v206.__r_.__value_.__r.__words[0];
      if (!v206.__r_.__value_.__r.__words[0])
      {
LABEL_112:
        MEMORY[0x1E6926C30](__src);
        Bsp::ARICommandDriver::~ARICommandDriver(&value);
        HardwareConfig = (*(*v107 + 8))(v107);
        if (NvItemsSetting)
        {
          ACFULogging::getLogInstance(HardwareConfig);
          v201 = off_1E876E880[v30 - 1];
          v116 = ACFULogging::handleMessage();
          ACFULogging::getLogInstance(v116);
          v117 = ACFULogging::handleMessage();
          v118 = 1;
          if ((SHIBYTE(v205.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }

        goto LABEL_247;
      }

LABEL_111:
      (*(*v112 + 16))(v112);
      goto LABEL_112;
    }

    ACFULogging::getLogInstance(v106);
    HardwareConfig = ACFULogging::handleMessage();
  }

LABEL_247:
  ACFULogging::getLogInstance(HardwareConfig);
  v117 = ACFULogging::handleMessage();
LABEL_248:
  v118 = 0;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_114:
    operator delete(v205.__r_.__value_.__l.__data_);
  }

LABEL_115:
  if (!v118)
  {
    goto LABEL_288;
  }

LABEL_116:
  v206.__r_.__value_.__r.__words[0] = 0;
  if (!*(this + 18))
  {
    goto LABEL_134;
  }

  v247 = 0xAAAAAAAAAAAAAAAALL;
  *&v119 = 0xAAAAAAAAAAAAAAAALL;
  *(&v119 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v245 = v119;
  v246 = v119;
  v243 = v119;
  v244 = v119;
  v241 = v119;
  v242 = v119;
  v239 = v119;
  v240 = v119;
  v237 = v119;
  v238 = v119;
  v235 = v119;
  v236 = v119;
  v233 = v119;
  v234 = v119;
  v231 = v119;
  v232 = v119;
  v229 = v119;
  v230 = v119;
  v227 = v119;
  v228 = v119;
  v225 = v119;
  v226 = v119;
  v223 = v119;
  v224 = v119;
  v221 = v119;
  v222 = v119;
  value = v119;
  v220 = v119;
  isPostSealing = ACFURestore::isPostSealing(this);
  if (isPostSealing)
  {
    goto LABEL_134;
  }

  ACFULogging::getLogInstance(isPostSealing);
  v121 = ACFULogging::handleMessage();
  *(this + 25) = 0;
  v122 = *(this + 18);
  *(this + 26) = v122;
  *(this + 27) = @"Baseband";
  *(this + 28) = @"scrt";
  *(this + 58) = 2;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 264) = 0;
  *(this + 34) = 0;
  if (!v122)
  {
    goto LABEL_278;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_121;
    }

LABEL_281:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_123;
    }

LABEL_122:
    if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
    {
      goto LABEL_123;
    }

LABEL_278:
    ACFULogging::getLogInstance(v121);
LABEL_287:
    v117 = ACFULogging::handleMessage();
    goto LABEL_288;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_281;
  }

LABEL_121:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
  {
    goto LABEL_122;
  }

LABEL_123:
  Manifest = ACFUFirmware::getManifest(*(this + 19));
  v124 = Manifest;
  if (!Manifest)
  {
    goto LABEL_286;
  }

  Length = CFDataGetLength(Manifest);
  if (Length <= 0)
  {
    ACFULogging::getLogInstance(Length);
    CFDataGetLength(v124);
    v117 = ACFULogging::handleMessage();
    goto LABEL_288;
  }

  ACFULogging::getLogInstance(Length);
  v126 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v126);
  qmemcpy(__dst, "Restore::", 9);
  v127 = operator new(0x30uLL);
  v128 = __dst[0];
  *v127 = 0x646E616265736142;
  *(v127 + 1) = v128;
  *(v127 + 16) = __dst[1];
  strcpy(v127 + 17, "handleCertification");
  *__dst = xmmword_1E5393180;
  *&__src[0] = v127;
  *(__src + 8) = xmmword_1E5393180;
  CFDataGetBytePtr(v124);
  CFDataGetLength(v124);
  ACFULogging::handleMessageBinary();
  if (SBYTE7(__src[1]) < 0)
  {
    operator delete(*&__src[0]);
  }

  BytePtr = CFDataGetBytePtr(v124);
  v130 = CFDataGetLength(v124);
  inited = Img4DecodeInitManifest(BytePtr, v130, &value);
  if (inited)
  {
    ACFULogging::getLogInstance(inited);
    v117 = ACFULogging::handleMessage();
    goto LABEL_288;
  }

  v132 = CFDataGetLength(v124);
  ACFULogging::getLogInstance(v132);
  ACFULogging::handleMessage();
  v133 = CFDataGetBytePtr(v124);
  v134 = *(&v235 + 1);
  v135 = v236;
  ACFULogging::getLogInstance(v133);
  v136 = (v134 + v135);
  v137 = v132 + v133 - v136;
  v138 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v138);
  v139 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v139);
  qmemcpy(__dst, "Restore::", 9);
  v140 = operator new(0x30uLL);
  v141 = __dst[0];
  *v140 = 0x646E616265736142;
  *(v140 + 1) = v141;
  *(v140 + 16) = __dst[1];
  strcpy(v140 + 17, "handleCertification");
  *__dst = xmmword_1E5393180;
  *&__src[0] = v140;
  *(__src + 8) = xmmword_1E5393180;
  ACFULogging::handleMessageBinary();
  if (SBYTE7(__src[1]) < 0)
  {
    operator delete(*&__src[0]);
  }

  v142 = CFDataCreate(*MEMORY[0x1E695E480], v136, v137);
  v143 = v142;
  v206.__r_.__value_.__r.__words[0] = v142;
  if (!v142)
  {
LABEL_286:
    ACFULogging::getLogInstance(0);
    goto LABEL_287;
  }

  *(this + 32) = v142;
  v144 = (*(**(this + 60) + 32))(*(this + 60), this + 200, *(this + 17), *(this + 15), 1);
  v145 = v144;
  if (v144)
  {
    ACFULogging::getLogInstance(v144);
    ACFULogging::handleMessage();
  }

  CFRelease(v143);
  if (v145)
  {
    goto LABEL_288;
  }

LABEL_134:
  v215 = 0;
  v216 = 0;
  cf = 0;
  v214 = 0;
  v212 = 1;
  v211 = 0;
  v146 = *(this + 17);
  if (v146)
  {
    v146 = CFDictionaryGetValue(v146, @"BasebandEnableProvisioning");
    v147 = v146;
    if (v146)
    {
      v148 = CFGetTypeID(v146);
      v149 = CFBooleanGetTypeID();
      if (v148 != v149)
      {
        goto LABEL_220;
      }

      CFRetain(v147);
      v216 = v147;
      v146 = CFBooleanGetValue(v147);
      LODWORD(v147) = v146 != 0;
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

  ACFULogging::getLogInstance(v146);
  ACFULogging::handleMessage();
  if (!v147)
  {
    goto LABEL_259;
  }

  v150 = CFDictionaryGetValue(*(this + 17), @"ForceServerProvisioning");
  v151 = v150;
  if (v150 && (v152 = CFGetTypeID(v150), v150 = CFBooleanGetTypeID(), v152 == v150))
  {
    CFRetain(v151);
    v215 = v151;
    v150 = CFBooleanGetValue(v151);
    v153 = v150 != 0;
  }

  else
  {
    v153 = 0;
    v215 = 0;
  }

  ACFULogging::getLogInstance(v150);
  ACFULogging::handleMessage();
  v149 = (*(*this + 88))(this, &v212);
  if ((v149 & 1) == 0)
  {
    goto LABEL_220;
  }

  ACFULogging::getLogInstance(v149);
  v154 = ACFULogging::handleMessage();
  if (v153 || (v212 & 1) == 0)
  {
    ACFULogging::getLogInstance(v154);
    ACFULogging::handleMessage();
    v155 = *(this + 17);
    v156 = *(this + 22);
    *&value = *(this + 21);
    *(&value + 1) = v156;
    if (v156)
    {
      atomic_fetch_add_explicit((v156 + 8), 1uLL, memory_order_relaxed);
    }

    v157 = *(this + 20);
    *&__src[0] = *(this + 19);
    *(&__src[0] + 1) = v157;
    if (v157)
    {
      atomic_fetch_add_explicit((v157 + 8), 1uLL, memory_order_relaxed);
    }

    v158 = *(this + 59);
    __dst[0] = *(this + 58);
    __dst[1] = v158;
    if (v158)
    {
      atomic_fetch_add_explicit((v158 + 8), 1uLL, memory_order_relaxed);
    }

    v149 = provisionBaseband(v155, &value, __src, &v214, __dst);
    v159 = v149;
    v160 = __dst[1];
    if (__dst[1] && !atomic_fetch_add(__dst[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v160->__on_zero_shared)(v160);
      std::__shared_weak_count::__release_weak(v160);
    }

    v161 = *(&__src[0] + 1);
    if (*(&__src[0] + 1) && !atomic_fetch_add((*(&__src[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v161->__on_zero_shared)(v161);
      std::__shared_weak_count::__release_weak(v161);
    }

    v162 = *(&value + 1);
    if (*(&value + 1) && !atomic_fetch_add((*(&value + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v162->__on_zero_shared)(v162);
      std::__shared_weak_count::__release_weak(v162);
    }

    if (v159)
    {
LABEL_162:
      if (v214)
      {
        v163 = *(this + 69);
        *(this + 69) = v214;
        if (!v163)
        {
          goto LABEL_165;
        }

        goto LABEL_164;
      }

      ACFULogging::getLogInstance(v149);
      ACFULogging::handleMessage();
LABEL_259:
      v191 = 1;
      v192 = cf;
      if (!cf)
      {
        goto LABEL_261;
      }

      goto LABEL_260;
    }

    goto LABEL_220;
  }

  ACFULogging::getLogInstance(v154);
  ACFULogging::handleMessage();
  v170 = *(this + 17);
  v171 = *(this + 22);
  *&value = *(this + 21);
  *(&value + 1) = v171;
  if (v171)
  {
    atomic_fetch_add_explicit((v171 + 8), 1uLL, memory_order_relaxed);
  }

  v172 = *(this + 20);
  *&__src[0] = *(this + 19);
  *(&__src[0] + 1) = v172;
  if (v172)
  {
    atomic_fetch_add_explicit((v172 + 8), 1uLL, memory_order_relaxed);
  }

  v173 = *(this + 59);
  __dst[0] = *(this + 58);
  __dst[1] = v173;
  if (v173)
  {
    atomic_fetch_add_explicit((v173 + 8), 1uLL, memory_order_relaxed);
  }

  v149 = sendProvisionPing(v170, &value, __src, &v211, __dst);
  v174 = v149;
  v175 = __dst[1];
  if (__dst[1] && !atomic_fetch_add(__dst[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v175->__on_zero_shared)(v175);
    std::__shared_weak_count::__release_weak(v175);
  }

  v176 = *(&__src[0] + 1);
  if (*(&__src[0] + 1) && !atomic_fetch_add((*(&__src[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v176->__on_zero_shared)(v176);
    std::__shared_weak_count::__release_weak(v176);
  }

  v177 = *(&value + 1);
  if (*(&value + 1) && !atomic_fetch_add((*(&value + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v177->__on_zero_shared)(v177);
    std::__shared_weak_count::__release_weak(v177);
  }

  if ((v174 & 1) == 0)
  {
LABEL_220:
    ACFULogging::getLogInstance(v149);
    goto LABEL_293;
  }

  if (!v211)
  {
    ACFULogging::getLogInstance(v149);
    ACFULogging::handleMessage();
    v183 = *(this + 17);
    v184 = *(this + 22);
    v206.__r_.__value_.__r.__words[0] = *(this + 21);
    v206.__r_.__value_.__l.__size_ = v184;
    if (v184)
    {
      atomic_fetch_add_explicit((v184 + 8), 1uLL, memory_order_relaxed);
    }

    v185 = *(this + 20);
    v205.__r_.__value_.__r.__words[0] = *(this + 19);
    v205.__r_.__value_.__l.__size_ = v185;
    if (v185)
    {
      atomic_fetch_add_explicit((v185 + 8), 1uLL, memory_order_relaxed);
    }

    v186 = *(this + 59);
    v209 = *(this + 58);
    p_cf = v186;
    if (v186)
    {
      atomic_fetch_add_explicit(v186 + 1, 1uLL, memory_order_relaxed);
    }

    v149 = provisionBaseband(v183, &v206, &v205, &v214, &v209);
    v187 = v149;
    v188 = p_cf;
    if (p_cf && !atomic_fetch_add(p_cf + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v188->__on_zero_shared)(v188);
      std::__shared_weak_count::__release_weak(v188);
    }

    size = v205.__r_.__value_.__l.__size_;
    if (v205.__r_.__value_.__l.__size_ && !atomic_fetch_add((v205.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v190 = v206.__r_.__value_.__l.__size_;
    if (v206.__r_.__value_.__l.__size_ && !atomic_fetch_add((v206.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v190->__on_zero_shared)(v190);
      std::__shared_weak_count::__release_weak(v190);
    }

    if (v187)
    {
      goto LABEL_162;
    }

    goto LABEL_220;
  }

  v178 = *(this + 22);
  v206.__r_.__value_.__r.__words[0] = *(this + 21);
  v206.__r_.__value_.__l.__size_ = v178;
  if (v178)
  {
    atomic_fetch_add_explicit((v178 + 8), 1uLL, memory_order_relaxed);
  }

  v179 = *(this + 20);
  v205.__r_.__value_.__r.__words[0] = *(this + 19);
  v205.__r_.__value_.__l.__size_ = v179;
  if (v179)
  {
    atomic_fetch_add_explicit((v179 + 8), 1uLL, memory_order_relaxed);
  }

  v209 = 0;
  p_cf = &cf;
  v180 = *(this + 59);
  v207 = *(this + 58);
  v208 = v180;
  if (v180)
  {
    atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v181 = createBasebandProvInfo(0, &v206, &v205, &v209, &v207, *(this + 17));
  v182 = v208;
  if (v208 && !atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v182->__on_zero_shared)(v182);
    std::__shared_weak_count::__release_weak(v182);
  }

  v149 = *p_cf;
  if (v209)
  {
    *p_cf = v209;
    if (v149)
    {
      goto LABEL_225;
    }
  }

  else
  {
    *p_cf = 0;
    if (v149)
    {
LABEL_225:
      CFRelease(v149);
    }
  }

  v193 = v205.__r_.__value_.__l.__size_;
  if (v205.__r_.__value_.__l.__size_ && !atomic_fetch_add((v205.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v193->__on_zero_shared)(v193);
    std::__shared_weak_count::__release_weak(v193);
  }

  v194 = v206.__r_.__value_.__l.__size_;
  if (v206.__r_.__value_.__l.__size_ && !atomic_fetch_add((v206.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v194->__on_zero_shared)(v194);
    std::__shared_weak_count::__release_weak(v194);
  }

  if ((v181 & 1) == 0 || !cf)
  {
    goto LABEL_220;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v214 = Mutable;
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
LABEL_293:
    ACFULogging::handleMessage();
    v191 = 0;
    v192 = cf;
    if (!cf)
    {
      goto LABEL_261;
    }

LABEL_260:
    CFRelease(v192);
    goto LABEL_261;
  }

  CFDictionaryAddValue(Mutable, @"BasebandProvInfo", cf);
  v163 = *(this + 69);
  *(this + 69) = v214;
  if (v163)
  {
LABEL_164:
    CFRelease(v163);
  }

LABEL_165:
  v165 = (this + 32);
  v164 = *(this + 4);
  if (v164)
  {
    while (1)
    {
      while (1)
      {
        v166 = v164;
        v167 = *(v164 + 32);
        if (v167 < 4)
        {
          break;
        }

        v164 = *v166;
        v165 = v166;
        if (!*v166)
        {
          goto LABEL_172;
        }
      }

      if (v167 == 3)
      {
        break;
      }

      v164 = v166[1];
      if (!v164)
      {
        v165 = v166 + 1;
        goto LABEL_172;
      }
    }

    v168 = v166;
  }

  else
  {
    v166 = (this + 32);
LABEL_172:
    v168 = operator new(0x40uLL);
    v168[8] = 3;
    *(v168 + 6) = 0;
    *(v168 + 7) = 0;
    *(v168 + 5) = 0;
    *v168 = 0;
    *(v168 + 1) = 0;
    *(v168 + 2) = v166;
    *v165 = v168;
    v169 = **(this + 3);
    if (v169)
    {
      *(this + 3) = v169;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 4), v168);
    ++*(this + 5);
  }

  v191 = 1;
  *(v168 + 58) = 1;
  v192 = cf;
  if (cf)
  {
    goto LABEL_260;
  }

LABEL_261:
  if (v215)
  {
    CFRelease(v215);
  }

  v117 = v216;
  if (v216)
  {
    CFRelease(v216);
  }

  if (v191)
  {
    result = 1;
LABEL_267:
    v196 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_288:
  ACFULogging::getLogInstance(v117);
  ACFULogging::handleMessage();
  result = 0;
  v197 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E52FFE3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::addEntitlements(CFDictionaryRef *this, __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(this[17], @"BasebandEnableCalibration");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbCalibrationEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  v7 = CFDictionaryGetValue(this[17], @"BasebandEnableFactoryDebug");
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbFactoryDebugEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  v10 = CFDictionaryGetValue(this[17], @"BasebandEnableActivationBypass");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbActivationBypassEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  v13 = CFDictionaryGetValue(this[16], @"BasebandHardwareConfigLockOverride");
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == CFBooleanGetTypeID() && CFBooleanGetValue(v14) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,HardwareConfigLockOverride", *MEMORY[0x1E695E4D0]);
    }
  }

  v16 = CFDictionaryGetValue(this[17], @"BasebandFactoryActivationKeyID");
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = v16;
  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  v18 = CFGetTypeID(v17);
  if (v18 != CFStringGetTypeID())
  {
    goto LABEL_29;
  }

  v40.isa = 0;
  v40.info = &v40.data;
  v40.data = 0;
  v20 = support::cf::copyDataFromHexString(v17, &v40, v19);
  v21 = *v40.info;
  if (v40.isa)
  {
    *v40.info = v40.isa;
    if (v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v40.info = 0;
    if (v21)
    {
LABEL_23:
      CFRelease(v21);
    }
  }

  if (v20)
  {
    if (!v40.data)
    {
      goto LABEL_29;
    }

    ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage();
    CFDictionarySetValue(a2, @"Cellular1,BbFactoryActivationManifestKeyHash", v40.data);
  }

  if (v40.data)
  {
    CFRelease(v40.data);
  }

LABEL_29:
  v22 = CFDictionaryGetValue(this[17], @"FDRAllowUnsealedData");
  if (v22)
  {
    v23 = v22;
    v24 = CFGetTypeID(v22);
    if (v24 == CFBooleanGetTypeID() && CFBooleanGetValue(v23) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,FDRAllowUnsealed", *MEMORY[0x1E695E4D0]);
    }
  }

  v25 = CFDictionaryGetValue(this[17], @"FDRSkipSealing");
  if (v25)
  {
    v26 = v25;
    v27 = CFGetTypeID(v25);
    if (v27 == CFBooleanGetTypeID() && CFBooleanGetValue(v26) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,FDRAllowUnsealed", *MEMORY[0x1E695E4D0]);
    }
  }

  v28 = CFDictionaryGetValue(this[17], @"BbRequestEntries");
  if (!v28)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_51;
  }

  v29 = v28;
  v30 = CFGetTypeID(v28);
  if (v30 != CFDictionaryGetTypeID())
  {
    v37 = CFGetTypeID(v29);
    TypeID = CFDictionaryGetTypeID();
    if (v37 == TypeID)
    {
      goto LABEL_52;
    }

    ACFULogging::getLogInstance(TypeID);
LABEL_51:
    ACFULogging::handleMessage();
    goto LABEL_52;
  }

  AMSupportSafeRetain();
  v31 = CFDictionaryGetValue(v29, @"BbFATPCalibrationEnable");
  if (v31)
  {
    v32 = v31;
    v33 = CFGetTypeID(v31);
    if (v33 == CFBooleanGetTypeID() && CFBooleanGetValue(v32) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbFATPCalibrationEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  v34 = CFDictionaryGetValue(v29, @"BbProvisioningEnable");
  if (v34)
  {
    v35 = v34;
    v36 = CFGetTypeID(v34);
    if (v36 == CFBooleanGetTypeID() && CFBooleanGetValue(v35) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbProvisioningEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  CFRelease(v29);
LABEL_52:
  CFDictionarySetValue(a2, @"LocalSigningID", *MEMORY[0x1E695E4C0]);
  return 1;
}

void sub_1E5300510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5300524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  ctu::cf::detail::TakeOwnershipProxy<__CFData const>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void BasebandRestore::queryCmd(const __CFDictionary **this@<X0>, uint64_t a2@<X8>)
{
  ACFULogging::getLogInstance(this);
  CurrentUpdateStep = ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getStepName();
  if (SHIBYTE(__p[2]) >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v32 = v5;
  ACFULogging::handleMessage();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v6 = ACFURestore::getCurrentUpdateStep(this);
    if (!v6)
    {
LABEL_16:
      if (ACFURestore::isNeRDOS(this))
      {
        isPreflighted = ACFURestore::isPreflighted(this);
        if (isPreflighted)
        {
          ACFULogging::getLogInstance(isPreflighted);
          ACFULogging::handleMessage();
          v15 = this[21];
          if (!v15)
          {
            ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage();
            goto LABEL_48;
          }

          memset(__p, 170, sizeof(__p));
          v16 = (**v15)(__p);
          if (LODWORD(__p[2]))
          {
            ACFULogging::getLogInstance(v16);
            ACFULogging::handleMessage();
          }

          else
          {
            ACFULogging::getLogInstance(v16);
            ACFULogging::handleMessage();
            v17 = __p[0];
            v18 = __p[1];
            *v35 = __p[0];
            *&v35[8] = __p[1];
            if (__p[1])
            {
              atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
            }

            ParametersDictionary = ACFUCommon::PersonalizeParams::getParametersDictionary(v17);
            v20 = ParametersDictionary;
            if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v18->__on_zero_shared)(v18);
              std::__shared_weak_count::__release_weak(v18);
            }

            if (v20)
            {
              ACFULogging::getLogInstance(ParametersDictionary);
              *(&v33 + 3) = 1701998452;
              LODWORD(v33) = 1953719634;
              HIBYTE(v33) = 58;
              v21 = operator new(0x30uLL);
              *v21 = 0x646E616265736142;
              *(v21 + 1) = v33;
              strcpy(v21 + 16, ":FWUpdateQuery");
              *v35 = v21;
              *&v35[8] = xmmword_1E53931A0;
              ACFULogging::handleMessageCFType();
              operator delete(*v35);
              v22 = 1;
              v23 = __p[1];
              if (__p[1])
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            }

            ACFULogging::getLogInstance(ParametersDictionary);
            ACFULogging::handleMessage();
            v31 = this[13];
            std::string::basic_string[abi:ne200100]<0>(v35, "Failed to create personalization parameters dictionary");
            ACFUError::addError();
            if ((v35[23] & 0x80000000) != 0)
            {
              operator delete(*v35);
            }
          }

          v22 = 0;
          v20 = 0;
          v23 = __p[1];
          if (__p[1])
          {
LABEL_27:
            if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v23->__on_zero_shared)(v23);
              std::__shared_weak_count::__release_weak(v23);
            }
          }

LABEL_45:
          if ((v22 & 1) != 0 || !v20)
          {
            goto LABEL_49;
          }

          CFRelease(v20);
LABEL_48:
          v22 = 0;
          v20 = 0;
LABEL_49:
          *a2 = v20;
          *(a2 + 8) = v22;
          return;
        }
      }

      memset(v35, 170, 16);
      ACFURestore::queryCmd(v35, this);
      if ((v35[8] & 1) == 0)
      {
        v20 = 0;
        v22 = 0;
        goto LABEL_45;
      }

      v20 = *v35;
      if (*v35)
      {
        v24 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"BundleOverrides", @"BasebandFirmware", CurrentUpdateStep, v32);
        if (v24)
        {
          v25 = this[17];
          ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
          v27 = ValueForKeyPathInDict;
          if (ValueForKeyPathInDict)
          {
            TypeID = CFStringGetTypeID();
            v29 = CFGetTypeID(v27);
            if (TypeID != v29)
            {
              ACFULogging::getLogInstance(v29);
              CFGetTypeID(v27);
              ACFULogging::handleMessage();
              goto LABEL_61;
            }

            CFDictionarySetValue(v20, @"ACFUFirmware", v27);
          }

          if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
          {
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
            {
              goto LABEL_37;
            }
          }

          else
          {
            dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
            {
LABEL_37:
              if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_39;
            }
          }

          dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
          if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
          {
LABEL_38:
            if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
            {
LABEL_41:
              ACFULogging::getLogInstance(ValueForKeyPathInDict);
              *(&v34 + 3) = 1701998452;
              LODWORD(v34) = 1953719634;
              HIBYTE(v34) = 58;
              v30 = operator new(0x30uLL);
              *v30 = 0x646E616265736142;
              *(v30 + 1) = v34;
              strcpy(v30 + 16, ":FWUpdateQuery");
              __p[0] = v30;
              *&__p[1] = xmmword_1E53931A0;
              ACFULogging::handleMessageCFType();
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              v22 = 1;
              goto LABEL_44;
            }
          }

LABEL_39:
          if (this[17])
          {
            ValueForKeyPathInDict = (*(*this + 16))(this, v20);
            if (ValueForKeyPathInDict)
            {
              goto LABEL_41;
            }
          }

          ACFULogging::getLogInstance(ValueForKeyPathInDict);
          ACFULogging::handleMessage();
LABEL_61:
          v22 = 0;
LABEL_44:
          CFRelease(v24);
          goto LABEL_45;
        }

        ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage();
      }

      v22 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v6 = ACFURestore::getCurrentUpdateStep(this);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  if (v6 == 2)
  {
    goto LABEL_16;
  }

  if (v6 == 3)
  {
    v7 = this[69];
    if (v7)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
      v9 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryAddValue(MutableCopy, @"LocalSigningID", *MEMORY[0x1E695E4D0]);
        ACFULogging::getLogInstance(v10);
        qmemcpy(v35, "Restore::", 9);
        v11 = operator new(0x30uLL);
        v12 = *v35;
        *v11 = 0x646E616265736142;
        *(v11 + 1) = v12;
        *(v11 + 16) = v35[8];
        strcpy(v11 + 17, "ProvisionQuery");
        *v35 = xmmword_1E5393190;
        __p[0] = v11;
        *&__p[1] = xmmword_1E5393190;
        ACFULogging::handleMessageCFType();
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v13 = 1;
      }

      else
      {
        ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage();
        v13 = 0;
      }
    }

    else
    {
      ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage();
      v9 = 0;
      v13 = 0;
    }

    *a2 = v9;
    *(a2 + 8) = v13;
  }

  else
  {
    ACFURestore::queryCmd(a2, this);
  }
}

void sub_1E5300D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::bootInternal(ACFURTKitROM **this)
{
  __p.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = this[19];
  if (!v2)
  {
    ACFULogging::getLogInstance(0);
LABEL_184:
    ACFULogging::handleMessage();
LABEL_185:
    v57 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v57;
    }

    goto LABEL_174;
  }

  if (!this[21] || !this[60])
  {
    ACFULogging::getLogInstance(v2);
    goto LABEL_184;
  }

  if ((*(this + 545) & 1) == 0)
  {
    goto LABEL_159;
  }

  memset(&v71, 0, sizeof(v71));
  v70.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  v70.__r_.__value_.__r.__words[2] = 0x5AAAAAAAAAAAAAALL;
  v70.__r_.__value_.__r.__words[0] = 0xAAAA003A57464242;
  *(&__dst.__r_.__value_.__s + 23) = 4;
  strcpy(&__dst, "bver");
  Length = ACFUFirmware::copyFWDataByFileName();
  v4 = Length;
  cf = Length;
  if (!Length)
  {
    goto LABEL_182;
  }

  BytePtr = CFDataGetBytePtr(Length);
  if (!BytePtr)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_29;
  }

  Length = CFDataGetLength(v4);
  if (Length <= 0)
  {
LABEL_182:
    ACFULogging::getLogInstance(Length);
    goto LABEL_29;
  }

  v6 = std::string::__assign_external(&v71, BytePtr);
  v7 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  size = v71.__r_.__value_.__l.__size_;
  v9 = v71.__r_.__value_.__r.__words[0];
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v71;
  }

  else
  {
    v10 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v71.__r_.__value_.__l.__size_;
  }

  if (v11 < 5)
  {
    goto LABEL_28;
  }

  v12 = v10 + v11;
  v6 = v10;
  while (1)
  {
    v6 = memchr(v6, v70.__r_.__value_.__s.__data_[0], v11 - 4);
    if (!v6)
    {
      goto LABEL_28;
    }

    if (*v6 == LODWORD(v70.__r_.__value_.__l.__data_) && v6[4] == v70.__r_.__value_.__s.__data_[4])
    {
      break;
    }

    ++v6;
    v11 = v12 - v6;
    if (v12 - v6 < 5)
    {
      goto LABEL_28;
    }
  }

  if (v6 == v12 || v6 - v10 == -1)
  {
LABEL_28:
    ACFULogging::getLogInstance(v6);
    goto LABEL_29;
  }

  v14 = v6 - v10 + 5;
  if ((v7 & 0x80) == 0)
  {
    if (v14 <= v7)
    {
      v9 = &v71;
      size = v7;
      goto LABEL_34;
    }

LABEL_190:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (size < v14)
  {
    goto LABEL_190;
  }

LABEL_34:
  v17 = size - v14;
  if (size - v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v17 | 7) + 1;
    }

    p_dst = operator new(v19);
    __dst.__r_.__value_.__l.__size_ = v17;
    __dst.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = size - v14;
    p_dst = &__dst;
    if (size == v14)
    {
      goto LABEL_43;
    }
  }

  v6 = memmove(p_dst, v9 + v14, v17);
LABEL_43:
  p_dst->__r_.__value_.__s.__data_[v17] = 0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v71 = __dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v71;
  }

  else
  {
    v20 = v71.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v71.__r_.__value_.__l.__size_;
  }

  if (v21 >= 1)
  {
    v22 = v20 + v21;
    v23 = v21;
    v6 = v20;
    while (1)
    {
      v6 = memchr(v6, 124, v23);
      if (!v6)
      {
        goto LABEL_65;
      }

      if (*v6 == 124)
      {
        break;
      }

      ++v6;
      v23 = v22 - v6;
      if (v22 - v6 < 1)
      {
        goto LABEL_65;
      }
    }

    if (v6 == v22 || v6 - v20 == -1)
    {
      goto LABEL_65;
    }

    if (v21 >= v6 - v20)
    {
      v21 = v6 - v20;
    }

    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v21 >= 0x17)
    {
      if ((v21 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v21 | 7) + 1;
      }

      v24 = operator new(v25);
      __dst.__r_.__value_.__l.__size_ = v21;
      __dst.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v24;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v21;
      v24 = &__dst;
      if (v6 == v20)
      {
LABEL_71:
        v24->__r_.__value_.__s.__data_[v21] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __dst;
        v15 = 1;
        if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_74;
      }
    }

    memmove(v24, v20, v21);
    goto LABEL_71;
  }

LABEL_65:
  ACFULogging::getLogInstance(v6);
LABEL_29:
  ACFULogging::handleMessage();
  v15 = 0;
  if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_75:
    operator delete(v71.__r_.__value_.__l.__data_);
    v16 = cf;
    if (!cf)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_74:
  operator delete(v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_75;
  }

LABEL_31:
  v16 = cf;
  if (cf)
  {
LABEL_76:
    CFRelease(v16);
  }

LABEL_77:
  if ((v15 & 1) == 0)
  {
    ACFULogging::getLogInstance(v16);
    goto LABEL_184;
  }

  v71.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  v71.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
  v71.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v26 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&v70);
    v27 = *&v70.__r_.__value_.__l.__data_;
    *&v70.__r_.__value_.__l.__data_ = 0uLL;
    v28 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v27;
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v29 = v70.__r_.__value_.__l.__size_;
    if (v70.__r_.__value_.__l.__size_ && !atomic_fetch_add((v70.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v26 = off_1ECFD4E60;
  }

  v30 = *(&off_1ECFD4E60 + 1);
  __dst.__r_.__value_.__r.__words[0] = v26;
  __dst.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v70.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  v60 = xmmword_1E5391A10;
  *&v70.__r_.__value_.__r.__words[1] = xmmword_1E5391A10;
  strcpy(v70.__r_.__value_.__l.__data_, "Baseband firmware version");
  qmemcpy(v59, "firmware versionBaseband firmwar", sizeof(v59));
  SharedData::getPreference<std::string>(v26, &v70);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = __p.__r_.__value_.__l.__size_;
  }

  v32 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  v33 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v71.__r_.__value_.__l.__size_;
  }

  if (v31 == v32)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v71;
    }

    else
    {
      v35 = v71.__r_.__value_.__r.__words[0];
    }

    v36 = memcmp(p_p, v35, v31) != 0;
    if ((v33 & 0x80000000) == 0)
    {
LABEL_106:
      if (!v36)
      {
        goto LABEL_159;
      }

      goto LABEL_110;
    }
  }

  else
  {
    v36 = 1;
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_106;
    }
  }

  operator delete(v71.__r_.__value_.__l.__data_);
  if (!v36)
  {
    goto LABEL_159;
  }

LABEL_110:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v37 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&v71);
    v38 = *&v71.__r_.__value_.__l.__data_;
    *&v71.__r_.__value_.__l.__data_ = 0uLL;
    v39 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v38;
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    v40 = v71.__r_.__value_.__l.__size_;
    if (v71.__r_.__value_.__l.__size_ && !atomic_fetch_add((v71.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    v37 = off_1ECFD4E60;
  }

  v41 = *(&off_1ECFD4E60 + 1);
  v70.__r_.__value_.__r.__words[0] = v37;
  v70.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v71.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
  *&v71.__r_.__value_.__r.__words[1] = xmmword_1E5391A20;
  strcpy(v71.__r_.__value_.__l.__data_, "Firmware version changed since last commcenter launch");
  SharedData::setPreference<BOOL>(v37, &v71, 1);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v42 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&v71);
    v43 = *&v71.__r_.__value_.__l.__data_;
    *&v71.__r_.__value_.__l.__data_ = 0uLL;
    v44 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v43;
    if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }

    v45 = v71.__r_.__value_.__l.__size_;
    if (v71.__r_.__value_.__l.__size_ && !atomic_fetch_add((v71.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    v42 = off_1ECFD4E60;
  }

  cf = v42;
  v67 = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v46 = operator new(0x20uLL);
  __dst.__r_.__value_.__r.__words[0] = v46;
  *&__dst.__r_.__value_.__r.__words[1] = v60;
  *v46 = v59[1];
  *(v46 + 9) = v59[0];
  v46[25] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = __p;
  }

  os_unfair_lock_lock(v42 + 10);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v65;
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v70;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &__dst;
  }

  else
  {
    v47 = __dst.__r_.__value_.__r.__words[0];
  }

  ctu::cf::plist_adapter::set<std::string>(v42, &v71, v47);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_149:
      os_unfair_lock_unlock(v42 + 10);
      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_155;
    }
  }

  else if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_149;
  }

  operator delete(v70.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v42 + 10);
  if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_150:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_156;
  }

LABEL_155:
  operator delete(v65.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_151:
    v48 = v67;
    if (!v67)
    {
      goto LABEL_159;
    }

    goto LABEL_157;
  }

LABEL_156:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v48 = v67;
  if (!v67)
  {
    goto LABEL_159;
  }

LABEL_157:
  if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
  }

LABEL_159:
  v49 = (*(*this[21] + 32))(this[21]);
  if (v49)
  {
    ACFULogging::getLogInstance(v49);
LABEL_181:
    ACFULogging::handleMessage();
    goto LABEL_185;
  }

  v50 = this[22];
  v63 = this[21];
  v64 = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(v50 + 1, 1uLL, memory_order_relaxed);
  }

  v51 = this[20];
  v61 = this[19];
  v62 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
  }

  v52 = this[38];
  if (!v52)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v53 = (*(*v52 + 48))(v52, &v63, &v61);
  v54 = v53;
  v55 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
  }

  v56 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  if (v54 || (v53 = ACFURTKitROM::bootFirmware(this[60]), v53))
  {
    ACFULogging::getLogInstance(v53);
    goto LABEL_181;
  }

  ACFULogging::getLogInstance(v53);
  ACFULogging::handleMessage();
  v57 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_174:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v57;
}

void sub_1E53019E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
    if ((*(v34 - 89) & 0x80000000) == 0)
    {
LABEL_7:
      ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a27);
      if (a34 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }

  else if ((*(v34 - 89) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(v34 - 112));
  goto LABEL_7;
}

ACFULogging *BasebandRestore::bootCmd(BasebandRestore *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = BasebandRestore::bootInternal(this);
  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  if (!v2)
  {
    BasebandRestore::coredumpInternal(this);
  }

  return v2;
}

uint64_t BasebandRestore::coredumpInternal(CFDictionaryRef *this)
{
  v38 = 0;
  ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage();
  if (!this[19] || !this[21])
  {
    ACFULogging::getLogInstance(v2);
LABEL_61:
    ACFULogging::handleMessage();
LABEL_14:
    v14 = 0;
    v15 = v38;
    if (!v38)
    {
      return v14;
    }

    goto LABEL_54;
  }

  if (!CFDictionaryContainsKey(this[15], @"coreDumpReason"))
  {
    goto LABEL_47;
  }

  Value = CFDictionaryGetValue(this[15], @"coreDumpReason");
  v4 = Value;
  if (!Value)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_13;
  }

  v5 = CFGetTypeID(Value);
  TypeID = CFStringGetTypeID();
  if (v5 != TypeID)
  {
    ACFULogging::getLogInstance(TypeID);
    goto LABEL_13;
  }

  v7 = CFGetTypeID(v4);
  v8 = CFStringGetTypeID();
  if (v7 != v8)
  {
    v38 = 0;
    ACFULogging::getLogInstance(v8);
LABEL_13:
    ACFULogging::handleMessage();
    goto LABEL_14;
  }

  CFRetain(v4);
  v38 = v4;
  memset(&__dst, 170, sizeof(__dst));
  v9 = [v4 UTF8String];
  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v10 | 7) + 1;
    }

    p_dst = operator new(v16);
    __dst.__r_.__value_.__l.__size_ = v11;
    __dst.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v10;
    p_dst = &__dst;
    if (!v10)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v13 = this[21];
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }
  }

  memmove(p_dst, v9, v11);
  p_dst->__r_.__value_.__s.__data_[v11] = 0;
  v13 = this[21];
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_21:
  v17 = **v13;
  if (v18)
  {
    v19 = v18;
    v20 = this[22];
    v35 = v18;
    v36 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_26:
  v19 = 0;
  v35 = 0;
  v36 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_27:
    std::string::__init_copy_ctor_external(&v34, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    goto LABEL_28;
  }

LABEL_25:
  v34 = __dst;
LABEL_28:
  v21 = (v19 + 208);
  if (v19 + 208 != &v34)
  {
    if (v19[231] < 0)
    {
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v34;
      }

      else
      {
        v22 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(v21, v22, size);
    }

    else if ((*(&v34.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v21, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    }

    else
    {
      *v21 = *&v34.__r_.__value_.__l.__data_;
      *(v19 + 28) = *(&v34.__r_.__value_.__l + 2);
    }
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    v24 = v36;
    if (!v36)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v24 = v36;
    if (!v36)
    {
LABEL_45:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_45;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_46:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_47:
  v26 = this[20];
  v25 = this[21];
  v32 = this[19];
  v33 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  v27 = (*(*v25 + 40))(v25, &v32, 1);
  v28 = v33;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v27;
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    v27 = v29;
  }

  if (v27)
  {
    ACFULogging::getLogInstance(v27);
    goto LABEL_61;
  }

  v30 = ACFUDiagnostics::perform(this[23]);
  ACFULogging::getLogInstance(v30);
  ACFULogging::handleMessage();
  v14 = 1;
  v15 = v38;
  if (v38)
  {
LABEL_54:
    CFRelease(v15);
  }

  return v14;
}

void sub_1E5302084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  operator delete(v9);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v10 - 72));
  _Unwind_Resume(a1);
}

void sub_1E53020A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, void *a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a20);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a20);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_3:
      ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v23 - 72));
      _Unwind_Resume(a1);
    }
  }

  operator delete(a22);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v23 - 72));
  _Unwind_Resume(a1);
}

void sub_1E5302108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v3 - 72));
  _Unwind_Resume(a1);
}

ACFULogging *BasebandRestore::coredumpCmd(BasebandRestore *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = BasebandRestore::coredumpInternal(this);
  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  return v2;
}

uint64_t BasebandRestore::performFusingCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  return 0;
}

uint64_t BasebandRestore::verifyFusingCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  return 0;
}

uint64_t BasebandRestore::downloadFusingProgramCmd(BasebandRestore *this)
{
  ACFULogging::getLogInstance(this);
  v1 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v1);
  ACFULogging::handleMessage();
  return 0;
}

BOOL BasebandRestore::requirePartitionMountsCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  v3 = capabilities::updater::BBUFSPartitionSizeMB(this);
  ACFULogging::getLogInstance(v3);
  v4 = ACFULogging::handleMessage();
  if (a2)
  {
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = ctu::cf::insert<__CFString const*,BOOL>(Mutable, @"requireSystemPartitionMount", 1);
    ACFULogging::getLogInstance(v7);
    CFStringGetCStringPtr(@"requireSystemPartitionMount", 0x8000100u);
    v8 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
    v9 = ctu::cf::insert<__CFString const*,BOOL>(Mutable, @"requireUserPartitionMount", 1);
    ACFULogging::getLogInstance(v9);
    CFStringGetCStringPtr(@"requireUserPartitionMount", 0x8000100u);
    ACFULogging::handleMessage();
    CFRetain(@"requestedBasebandFSPartitionMountSize");
    valuePtr = v3;
    v10 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
    if (v10)
    {
      CFDictionaryAddValue(Mutable, @"requestedBasebandFSPartitionMountSize", v10);
      CFRelease(v10);
    }

    CFRelease(@"requestedBasebandFSPartitionMountSize");
    ACFULogging::getLogInstance(v11);
    CFStringGetCStringPtr(@"requestedBasebandFSPartitionMountSize", 0x8000100u);
    v12 = ACFULogging::handleMessage();
    *a2 = Mutable;
    ACFULogging::getLogInstance(v12);
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

  ACFULogging::handleMessage();
  return a2 != 0;
}

void sub_1E530257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_1E530259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::copyBasebandMigrationDataCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  memset(&v68, 170, sizeof(v68));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v3 = off_1ED944170;
  if (!off_1ED944170)
  {
    v4 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v4);
    v66 = v4;
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
  *&__p.st_dev = v3;
  __p.st_ino = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v3, &v68);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  ACFULogging::getLogInstance(v8);
  v9 = ACFULogging::handleMessage();
  if (!a2)
  {
    goto LABEL_104;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v10 = off_1ED944170;
  if (!off_1ED944170)
  {
    v11 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v11);
    __dst.__r_.__value_.__r.__words[0] = v11;
    v12 = operator new(0x20uLL);
    *v12 = &unk_1F5F05A00;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v11;
    v13 = off_1ED944178;
    off_1ED944170 = v11;
    off_1ED944178 = v12;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_1ED944170;
  }

  v14 = off_1ED944178;
  v66 = v10;
  v67[0] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v10, &__p);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if (!p_p)
  {
    v9 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v16, v17, v18, v19, v20, v21, 0);
    goto LABEL_28;
  }

  v9 = bbufs::prepareDestination(p_p, v15);
  if ((v9 & 1) == 0)
  {
    v9 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v23, v24, v25, v26, v27, v28, "BasebandRestore");
LABEL_28:
    v29 = 0;
    if (SHIBYTE(__p.st_gid) < 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v29 = 1;
  if (SHIBYTE(__p.st_gid) < 0)
  {
LABEL_31:
    operator delete(*&__p.st_dev);
    if (!v14)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (!v14)
  {
LABEL_33:
    if (v29)
    {
      goto LABEL_34;
    }

LABEL_104:
    ACFULogging::getLogInstance(v9);
    goto LABEL_106;
  }

LABEL_32:
  if (atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (!v29)
  {
    goto LABEL_104;
  }

LABEL_34:
  v30 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
LABEL_106:
    ACFULogging::handleMessage();
    result = 0;
    *a2 = 0;
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_107;
  }

  v61 = Mutable;
  GetBasebandNVM4ccToFileNameMap(&v66);
  v32 = v66;
  if (v66 != v67)
  {
    while (1)
    {
      memset(&__dst, 170, sizeof(__dst));
      pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
      v33 = off_1ED944170;
      if (off_1ED944170)
      {
        break;
      }

      v50 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v50);
      v69 = v50;
      v51 = operator new(0x20uLL);
      *v51 = &unk_1F5F05A00;
      v51[1] = 0;
      v51[2] = 0;
      v51[3] = v50;
      v52 = off_1ED944178;
      off_1ED944170 = v50;
      off_1ED944178 = v51;
      if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v52->__on_zero_shared)(v52);
        std::__shared_weak_count::__release_weak(v52);
        v33 = off_1ED944170;
        v34 = off_1ED944178;
        v63 = off_1ED944170;
        v64 = off_1ED944178;
        if (off_1ED944178)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v33 = off_1ED944170;
        v34 = off_1ED944178;
        v63 = off_1ED944170;
        v64 = off_1ED944178;
        if (off_1ED944178)
        {
          goto LABEL_40;
        }
      }

LABEL_41:
      pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
      BBUPartitionManager::getBBUFSPath(v33, &__p);
      if ((__p.st_gid & 0x80000000) == 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = *&__p.st_dev;
      }

      v36 = strlen(v35);
      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v37 = v36;
      if (v36 >= 0x17)
      {
        if ((v36 | 7) == 0x17)
        {
          v40 = 25;
        }

        else
        {
          v40 = (v36 | 7) + 1;
        }

        p_dst = operator new(v40);
        __dst.__r_.__value_.__l.__size_ = v37;
        __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v36;
        p_dst = &__dst;
        if (!v36)
        {
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_55;
        }
      }

      memmove(p_dst, v35, v37);
      p_dst->__r_.__value_.__s.__data_[v37] = 0;
      if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
      {
LABEL_48:
        v39 = v64;
        if (!v64)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(*&__p.st_dev);
      v39 = v64;
      if (!v64)
      {
        goto LABEL_58;
      }

LABEL_56:
      if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v39->__on_zero_shared)(v39);
        std::__shared_weak_count::__release_weak(v39);
      }

LABEL_58:
      v41 = *(v32 + 79);
      if (v41 >= 0)
      {
        v42 = (v32 + 7);
      }

      else
      {
        v42 = v32[7];
      }

      if (v41 >= 0)
      {
        v43 = *(v32 + 79);
      }

      else
      {
        v43 = v32[8];
      }

      std::string::append(&__dst, v42, v43);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__dst;
      }

      else
      {
        v44 = __dst.__r_.__value_.__r.__words[0];
      }

      v45 = CFStringCreateWithCString(v30, v44, 0x8000100u);
      v63 = v45;
      v46.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v46.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__p.st_blksize = v46;
      *__p.st_qspare = v46;
      __p.st_birthtimespec = v46;
      *&__p.st_size = v46;
      __p.st_mtimespec = v46;
      __p.st_ctimespec = v46;
      *&__p.st_uid = v46;
      __p.st_atimespec = v46;
      *&__p.st_dev = v46;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__dst;
      }

      else
      {
        v47 = __dst.__r_.__value_.__r.__words[0];
      }

      v48 = stat(v47, &__p);
      if (v48)
      {
        ACFULogging::getLogInstance(v48);
LABEL_72:
        ACFULogging::handleMessage();
        goto LABEL_90;
      }

      FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(v45, v49);
      *&__p.st_dev = FileDatafromFilePath;
      if (!FileDatafromFilePath)
      {
        ACFULogging::getLogInstance(0);
        goto LABEL_72;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v62 = __dst;
      }

      v54 = ctu::cf::insert<std::string,__CFData const*>(v61, &v62, FileDatafromFilePath);
      if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (v54)
        {
          goto LABEL_89;
        }

LABEL_88:
        ACFULogging::getLogInstance(v54);
        ACFULogging::handleMessage();
        goto LABEL_89;
      }

      v55 = v54;
      operator delete(v62.__r_.__value_.__l.__data_);
      v54 = v55;
      if ((v55 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_89:
      CFRelease(FileDatafromFilePath);
LABEL_90:
      if (v45)
      {
        CFRelease(v45);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v56 = v32[1];
        if (v56)
        {
          do
          {
LABEL_96:
            v57 = v56;
            v56 = *v56;
          }

          while (v56);
          goto LABEL_37;
        }
      }

      else
      {
        v56 = v32[1];
        if (v56)
        {
          goto LABEL_96;
        }
      }

      do
      {
        v57 = v32[2];
        v58 = *v57 == v32;
        v32 = v57;
      }

      while (!v58);
LABEL_37:
      v32 = v57;
      if (v57 == v67)
      {
        goto LABEL_101;
      }
    }

    v34 = off_1ED944178;
    v63 = off_1ED944170;
    v64 = off_1ED944178;
    if (!off_1ED944178)
    {
      goto LABEL_41;
    }

LABEL_40:
    atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_41;
  }

LABEL_101:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v66, v67[0]);
  result = 1;
  *a2 = v61;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_107:
    v60 = result;
    operator delete(v68.__r_.__value_.__l.__data_);
    return v60;
  }

  return result;
}

void sub_1E5302DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::restoreBasebandMigrationDataCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  *(&v49 + 1) = 0;
  v50 = 0;
  *&v49 = &v49 + 8;
  ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage();
  if (!a2)
  {
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
    v24 = 0;
    goto LABEL_76;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v4 = off_1ED944170;
  if (!off_1ED944170)
  {
    v5 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v5);
    v48[0] = v5;
    v6 = operator new(0x20uLL);
    *v6 = &unk_1F5F05A00;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v5;
    v7 = off_1ED944178;
    off_1ED944170 = v5;
    off_1ED944178 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_1ED944170;
  }

  v8 = off_1ED944178;
  context.__r_.__value_.__r.__words[0] = v4;
  context.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v4, &v53);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v53;
  }

  else
  {
    v16 = v53.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    v17 = bbufs::prepareDestination(v16, v9);
    if (v17)
    {
      v24 = 1;
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v17 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v18, v19, v20, v21, v22, v23, "BasebandRestore");
  }

  else
  {
    v17 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v10, v11, v12, v13, v14, v15, 0);
  }

  v24 = 0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_20:
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v24)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if ((v24 & 1) == 0)
  {
LABEL_24:
    ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage();
  }

LABEL_25:
  v48[0] = 0xAAAAAAAAAAAAAAAALL;
  v48[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v48, *a2);
  v25 = (*v48[0])(v48, @"MigrationData");
  v26 = v25;
  if (v25 && ((v27 = CFGetTypeID(v25), v27 != CFDictionaryGetTypeID()) ? (v28 = 0) : (v28 = v26), CFRelease(v26), v28))
  {
    *&v53.__r_.__value_.__r.__words[1] = 0uLL;
    v53.__r_.__value_.__r.__words[0] = &v53.__r_.__value_.__l.__size_;
    context.__r_.__value_.__r.__words[0] = &v53;
    context.__r_.__value_.__l.__size_ = &v53.__r_.__value_.__l.__size_;
    CFDictionaryApplyFunction(v28, ctu::cf::_Applier_InsertMapDefault<std::string,__CFData const*,std::insert_iterator<std::map<std::string,__CFData const*>>>, &context);
    v29 = v49;
    v49 = *&v53.__r_.__value_.__l.__data_;
    *&v53.__r_.__value_.__l.__data_ = v29;
    v30 = v50;
    v50 = v53.__r_.__value_.__r.__words[2];
    v31 = v53.__r_.__value_.__r.__words[2];
    v53.__r_.__value_.__r.__words[2] = v30;
    v32 = v31 == 0;
    v33 = &v49;
    if (!v32)
    {
      v33 = (*(&v49 + 1) + 16);
    }

    *v33 = &v49 + 8;
    if (v30)
    {
      v34 = (*(&v29 + 1) + 16);
    }

    else
    {
      v34 = &v53;
    }

    v34->__r_.__value_.__r.__words[0] = &v53.__r_.__value_.__l.__size_;
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&v53, *(&v29 + 1));
    v35 = v49;
    if (v49 != (&v49 + 8))
    {
      v36 = *MEMORY[0x1E695E480];
      do
      {
        v37 = v35 + 2;
        if (*(v35 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v46, *(v35 + 4), *(v35 + 5));
        }

        else
        {
          *&v46.__r_.__value_.__l.__data_ = *v37;
          v46.__r_.__value_.__r.__words[2] = *(v35 + 6);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&context, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
        }

        else
        {
          context = v46;
        }

        v51 = 0;
        if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v53, context.__r_.__value_.__l.__data_, context.__r_.__value_.__l.__size_);
        }

        else
        {
          v53 = context;
        }

        v54 = 0;
        if (ctu::cf::convert_copy())
        {
          v38 = v54;
        }

        else
        {
          v38 = 0;
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
          cf = v38;
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_59:
            operator delete(context.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_60;
          }
        }

        else
        {
          cf = v38;
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_60:
        operator delete(v46.__r_.__value_.__l.__data_);
LABEL_53:
        v53.__r_.__value_.__r.__words[0] = AMSupportCreateURLFromString();
        if (!v53.__r_.__value_.__r.__words[0])
        {
          ACFULogging::getLogInstance(0);
          if (*(v35 + 55) < 0)
          {
            v42 = *v37;
          }

          goto LABEL_63;
        }

        v39 = *(v35 + 7);
        v40 = AMSupportWriteDataToFileURL();
        if (v40)
        {
          ACFULogging::getLogInstance(v40);
          if (*(v35 + 55) < 0)
          {
            v41 = *v37;
          }

LABEL_63:
          ACFULogging::handleMessage();
          v24 = 0;
        }

        if (v53.__r_.__value_.__r.__words[0])
        {
          CFRelease(v53.__r_.__value_.__l.__data_);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v43 = *(v35 + 1);
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = *(v35 + 2);
            v32 = *v44 == v35;
            v35 = v44;
          }

          while (!v32);
        }

        v35 = v44;
      }

      while (v44 != (&v49 + 8));
    }
  }

  else
  {
    ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage();
    v24 = 1;
  }

  MEMORY[0x1E69265E0](v48);
LABEL_76:
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&v49, *(&v49 + 1));
  return v24 & 1;
}

void sub_1E5303500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, char **a21, uint64_t a22, char a23, char *a24, uint64_t a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](&a21);
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::pingCmd(std::__shared_weak_count **this, const __CFDictionary **a2)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v4 = this[21];
  if (!v4)
  {
    ACFULogging::getLogInstance(0);
LABEL_10:
    ACFULogging::handleMessage();
    return 0;
  }

  v5 = v4->~__shared_weak_count;
  if (v6)
  {
    v7 = this[22];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
  }

  FWVersion = BasebandUpdaterTransport::pingAndGetFWVersion(v6, a2);
  v9 = FWVersion;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    ACFULogging::getLogInstance(v11);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    ACFULogging::getLogInstance(FWVersion);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  ACFULogging::handleMessage();
  return 1;
}

void sub_1E5303800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::performManifestCheckCmd(BasebandRestore *this)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = BasebandRestore::bootInternal(this);
  if (v2 && (support::transport::ARI::create("BasebandUpdaterTransport", 0x2710, 0, 0, &v10), (v3 = v10) != 0))
  {
    v4 = *(v10 + 3);
    v5 = KTLGetManifestStatus();
    if (v5)
    {
      logManifestStatus(v11);
      if (!(WORD2(v11[0]) | WORD4(v11[0])))
      {
        v5 = capabilities::updater::supportsFATPCalibrationManifestStatus(v5);
        v6 = WORD3(v11[0]) ? v5 : 0;
        if (v6 != 1)
        {
          v7 = 1;
LABEL_12:
          (*(*v3 + 8))(v3);
          result = v7;
          goto LABEL_13;
        }
      }
    }

    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
  }

  else
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
    v3 = 0;
  }

  BasebandRestore::coredumpInternal(this);
  v7 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E53039E4(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(exception_object);
}

void logManifestStatus(unsigned __int16 *a1)
{
  ACFULogging::getLogInstance(a1);
  if (a1)
  {
    v16 = a1[4];
    v17 = a1[5];
    v14 = a1[2];
    v15 = a1[3];
    v13 = *a1;
    v2 = ACFULogging::handleMessage();
    LODWORD(v3) = a1[5];
    if (a1[5])
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v4 + v3;
        if (v6 >= 0x10)
        {
          v7 = 16;
        }

        else
        {
          v7 = v6;
        }

        ACFULogging::getLogInstance(v2);
        ctu::hex(&a1[v5 / 2 + 6], v7);
        v2 = ACFULogging::handleMessage();
        if (v19 < 0)
        {
          operator delete(__p);
        }

        v5 += 16;
        v3 = a1[5];
        v4 -= 16;
      }

      while (v5 < v3);
    }

    LODWORD(v8) = a1[70];
    if (a1[70])
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v9 + v8;
        if (v11 >= 0x10)
        {
          v12 = 16;
        }

        else
        {
          v12 = v11;
        }

        ACFULogging::getLogInstance(v2);
        ctu::hex(&a1[v10 / 2 + 71], v12);
        v2 = ACFULogging::handleMessage();
        if (v19 < 0)
        {
          operator delete(__p);
        }

        v10 += 16;
        v8 = a1[70];
        v9 -= 16;
      }

      while (v10 < v8);
    }
  }

  else
  {
    ACFULogging::handleMessage();
  }
}

void sub_1E5303C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::copyIdentifierCmd(std::__shared_weak_count **this, const __CFDictionary **a2)
{
  v46 = 0;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  cf = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 1;
  ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage();
  if (!a2)
  {
    goto LABEL_51;
  }

  v5 = this[21];
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = **v5;
  if (!v7)
  {
    v39 = 0;
    v40 = 0;
    ACFULogging::getLogInstance(0);
    goto LABEL_15;
  }

  v8 = this[22];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v7;
  v40 = v8;
  v9 = v7[20];
  Reset = TelephonyBasebandGetReset();
  if ((Reset & 1) == 0)
  {
    ACFULogging::getLogInstance(Reset);
    v35 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v35);
    goto LABEL_15;
  }

  v11 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  v42 = Controller;
  if (!Controller)
  {
LABEL_52:
    ACFULogging::getLogInstance(0);
    goto LABEL_15;
  }

  ACFULogging::getLogInstance(Controller);
  ACFULogging::handleMessage();
  v4 = TelephonyBasebandPowercycleModem();
  if ((v4 & 1) == 0)
  {
LABEL_51:
    ACFULogging::getLogInstance(v4);
    goto LABEL_15;
  }

  TypeID = (this[21]->~__shared_weak_count)(&__p);
  v14 = __p;
  v15 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    v16 = v37;
    v45 = v14;
    v46 = v15;
    v17 = DWORD2(v37);
    LODWORD(v47) = DWORD2(v37);
    if (v37)
    {
      if (!atomic_fetch_add((v37 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = v47;
    }
  }

  else
  {
    v45 = __p;
    v46 = 0;
    v17 = DWORD2(v37);
    LODWORD(v47) = DWORD2(v37);
  }

  if (v17)
  {
    goto LABEL_62;
  }

  ACFULogging::getLogInstance(TypeID);
  ACFULogging::handleMessage();
  v20 = v45;
  v21 = v46;
  __p = v45;
  *&v37 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TypeID = (**v20)(v20);
  v22 = TypeID;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (!v22)
  {
    goto LABEL_62;
  }

  Value = CFDictionaryGetValue(v22, @"Cellular1,ChipID");
  v24 = Value;
  if (!Value)
  {
    goto LABEL_55;
  }

  v25 = CFGetTypeID(Value);
  TypeID = CFDataGetTypeID();
  if (v25 != TypeID)
  {
    goto LABEL_62;
  }

  TypeID = support::cf::createNum64Num32FromData(v24, &v44);
  if ((TypeID & 1) == 0)
  {
    goto LABEL_62;
  }

  CFDictionaryAddValue(v22, @"ChipID", v44);
  v26 = CFDictionaryGetValue(v22, @"Cellular1,ECID");
  v27 = v26;
  if (!v26)
  {
LABEL_55:
    ACFULogging::getLogInstance(0);
    goto LABEL_15;
  }

  v28 = CFGetTypeID(v26);
  TypeID = CFDataGetTypeID();
  if (v28 != TypeID || (TypeID = support::cf::createByteSwappedData(v27, &v43), (TypeID & 1) == 0))
  {
LABEL_62:
    ACFULogging::getLogInstance(TypeID);
LABEL_15:
    ACFULogging::handleMessage();
    v18 = 0;
    v19 = v40;
    if (v40)
    {
      goto LABEL_36;
    }

LABEL_37:
    v32 = cf;
    if (!cf)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  CFDictionaryAddValue(v22, @"ChipSerialNo", v43);
  if (cf)
  {
    CFDictionaryAddValue(v22, @"CertificationPublicKey", cf);
  }

  ACFULogging::getLogInstance(v29);
  v30 = operator new(0x30uLL);
  strcpy(v30, "BasebandRestore::copyIdentifierCmd");
  __p = v30;
  v37 = xmmword_1E5391310;
  v31 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }

  *a2 = v22;
  ACFULogging::getLogInstance(v31);
  ACFULogging::handleMessage();
  v18 = 1;
  v19 = v40;
  if (!v40)
  {
    goto LABEL_37;
  }

LABEL_36:
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_37;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  v32 = cf;
  if (cf)
  {
LABEL_38:
    CFRelease(v32);
  }

LABEL_39:
  if (v42)
  {
    CFRelease(v42);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  v33 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  return v18;
}

void sub_1E53043E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, const void *a23, const void *a24)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a23);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(&a24);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v24 - 88));
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef((v24 - 80));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v24 - 72);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::provisionCmd(const __CFDictionary **this, const __CFDictionary **a2)
{
  v41 = 0;
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v4 = this[17];
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"EnablePing");
    if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()))
    {
      v8 = CFBooleanGetValue(v6);
      if (v8 != 1)
      {
        return 1;
      }

      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
      v9 = this[17];
      v10 = this[22];
      v39 = this[21];
      v40 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = this[20];
      v37 = this[19];
      v38 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = 0;
      v36 = 0;
      v12 = sendProvisionPing(v9, &v39, &v37, &v41, &v35);
      v13 = v12;
      v14 = v36;
      if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v15 = v38;
      if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v40;
      if (v40)
      {
        if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      ACFULogging::getLogInstance(v12);
      if (v13)
      {
        ACFULogging::handleMessage();
        return 1;
      }
    }

    else
    {
      v17 = this[17];
      v18 = this[22];
      v33 = this[21];
      v34 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = this[20];
      v31 = this[19];
      v32 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = 0;
      v30 = 0;
      v20 = provisionBaseband(v17, &v33, &v31, a2, &v29);
      v21 = v20;
      v22 = v30;
      if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }

      v23 = v32;
      if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      v24 = v34;
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }

      ACFULogging::getLogInstance(v20);
      if (v21)
      {
        v25 = operator new(0x30uLL);
        strcpy(v25, "BasebandRestore::provisionCmd");
        __p = v25;
        v26 = *a2;
        ACFULogging::handleMessageCFType();
        operator delete(__p);
        return 1;
      }
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
  }

  ACFULogging::handleMessage();
  return 0;
}