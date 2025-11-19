void BasebandUpdaterTransport::runCertification(int a1@<W1>, uint64_t a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[0] = v4;
  v34[1] = v4;
  v33 = v4;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAFFFFFFFFLL;
  security::ARICommandDriver::ARICommandDriver();
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[2] = v5;
  v32[3] = v5;
  v32[0] = v5;
  v32[1] = v5;
  AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK::ARI_CsiSecCollectScrtBlobReq_SDK(v32);
  v31 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[2] = v6;
  v30[3] = v6;
  v30[0] = v6;
  v30[1] = v6;
  AriSdk::ARI_CsiSecReadSikPKeyReq_SDK::ARI_CsiSecReadSikPKeyReq_SDK(v30);
  v29 = 0;
  support::transport::ARI::create("BasebandUpdaterTransport", 0x2710, 0, 0, __p);
  v8 = __p[0];
  if (!__p[0])
  {
    ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage();
    *a2 = 0;
    *(a2 + 8) = 3019;
    goto LABEL_18;
  }

  v9 = *(__p[0] + 3);
  security::ARICommandDriver::ARICommandDriver();
  *&v34[0] = v26;
  LODWORD(v36) = v28;
  std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *> *>>(v34 + 8, v27);
  security::ARICommandDriver::~ARICommandDriver(__p);
  if (a1 == 1)
  {
    SikPKey = security::ARICommandDriver::CsiSecReadSikPKey();
    if (SikPKey)
    {
      v17 = **(v29 + 88);
      ACFULogging::getLogInstance(SikPKey);
      SikPKey = ACFULogging::handleMessage();
      if ((v17 - 133) > 0xFFFFFF7B)
      {
        v18 = *(v29 + 64);
        v14 = operator new(v17);
        memmove(v14, v18, v17);
        v15 = CFDataCreate(*MEMORY[0x1E695E480], v14, v17);
        v16 = v15;
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    ACFULogging::getLogInstance(SikPKey);
    ACFULogging::handleMessage();
    v16 = 0;
    v21 = 1;
    goto LABEL_17;
  }

  if (!a1)
  {
    SikPKey = security::ARICommandDriver::CsiSecCollectScrtBlob();
    if (SikPKey)
    {
      v12 = **(v31 + 64);
      ACFULogging::getLogInstance(SikPKey);
      SikPKey = ACFULogging::handleMessage();
      if ((v12 - 4097) > 0xFFFFEFFF)
      {
        v13 = *(v31 + 72);
        v14 = operator new(v12);
        memmove(v14, v13, v12);
        v15 = CFDataCreate(*MEMORY[0x1E695E480], v14, v12);
        v16 = v15;
        if (v15)
        {
LABEL_11:
          ACFULogging::getLogInstance(v15);
          v19 = ACFULogging::handleMessage();
          ACFULogging::getLogInstance(v19);
          v20 = operator new(0x20uLL);
          strcpy(v20, "BasebandUpdaterTransport::");
          v23 = v20;
          v22 = operator new(0x40uLL);
          memmove(v22, v23, 0x1AuLL);
          strcpy(v22 + 26, "runCertification");
          operator delete(v23);
          v24[1] = 42;
          v24[0] = v22;
          *__p = *v24;
          v26 = 0x8000000000000040;
          CFDataGetBytePtr(v16);
          CFDataGetLength(v16);
          ACFULogging::handleMessageBinary();
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          v21 = 0;
          goto LABEL_16;
        }

LABEL_21:
        ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage();
        v16 = 0;
        v21 = 4000;
LABEL_16:
        operator delete(v14);
        goto LABEL_17;
      }
    }

    goto LABEL_20;
  }

  ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage();
  v16 = 0;
  v21 = 1010;
LABEL_17:
  *a2 = v16;
  *(a2 + 8) = v21;
  (*(*v8 + 8))(v8);
LABEL_18:
  MEMORY[0x1E6926AF0](v30);
  MEMORY[0x1E6926BD0](v32);
  security::ARICommandDriver::~ARICommandDriver(&v33);
}

void sub_1E536F070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  MEMORY[0x1E6926AF0](&a33);
  MEMORY[0x1E6926BD0](&a43);
  security::ARICommandDriver::~ARICommandDriver((v43 - 160));
  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterTransport::retrieveChipRev(BasebandUpdaterTransport *this, unsigned __int8 *a2)
{
  v12 = 4;
  *v13 = 0;
  v4 = *(this + 23);
  ctu::AdaptiveTimerService::getScaledTime();
  v5 = operator new(0x20uLL);
  *(v5 + 1) = 0;
  *v5 = &unk_1F5F05FE8;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  v6 = BasebandUpdaterTransport::IOACIPCHelper::init(v5, "rom");
  if (v6)
  {
    v14 = *(v5 + 1);
    if (v14)
    {
      v7 = ACFUACIPCTransport::readRegister(this, &v14, 2, v13, &v12);
      if (v7)
      {
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();
        v8 = 3025;
      }

      else
      {
        v8 = 0;
        *a2 = v13[1];
      }
    }

    else
    {
      ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage();
      v8 = 3000;
    }

    (*(*v5 + 8))(v5);
  }

  else
  {
    v10 = (*(*v5 + 8))(v5);
    ACFULogging::getLogInstance(v10);
    v11 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage();
    return 3019;
  }

  return v8;
}

void BasebandUpdaterTransport::~BasebandUpdaterTransport(void **this)
{
  *this = &unk_1F5F05ED8;
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v2 = this[24];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[22];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[20];
  if (v4)
  {
    CFRelease(v4);
  }

  MEMORY[0x1EEDED400](this);
}

{
  BasebandUpdaterTransport::~BasebandUpdaterTransport(this);

  operator delete(v1);
}

void **std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](void **a1)
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
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void BasebandUpdaterTransport::IOACIPCHelper::~IOACIPCHelper(BasebandUpdaterTransport::IOACIPCHelper *this)
{
  *this = &unk_1F5F05FE8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::mutex::~mutex((v2 + 48));
    std::condition_variable::~condition_variable(v2);
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F05FE8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::mutex::~mutex((v2 + 48));
    std::condition_variable::~condition_variable(v2);
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *> *>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 && (bzero(*a1, 8 * v4), v5 = *(a1 + 16), *(a1 + 16) = 0, *(a1 + 24) = 0, v5))
  {
    while (a2)
    {
      v5[4] = *(a2 + 4);
      v6 = a2[3];
      if (v6)
      {
        v6 = _Block_copy(v6);
      }

      v7 = *(v5 + 3);
      *(v5 + 3) = v6;
      if (v7)
      {
        _Block_release(v7);
      }

      v8 = *v5;
      std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__node_insert_multi(a1, v5);
      a2 = *a2;
      v5 = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    do
    {
      v12 = *v5;
      v13 = *(v5 + 3);
      if (v13)
      {
        _Block_release(v13);
      }

      operator delete(v5);
      v5 = v12;
    }

    while (v12);
  }

  else
  {
LABEL_9:
    while (a2)
    {
      v9 = operator new(0x20uLL);
      *v9 = 0;
      v9[1] = 0;
      v10 = *(a2 + 4);
      *(v9 + 4) = v10;
      v11 = a2[3];
      if (v11)
      {
        v11 = _Block_copy(v11);
        v10 = *(v9 + 4);
      }

      v9[3] = v11;
      v9[1] = v10;
      std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__node_insert_multi(a1, v9);
      a2 = *a2;
    }
  }
}

void sub_1E536F7C8(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__deallocate_node(v1);
  __cxa_rethrow();
}

void sub_1E536F7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 8) = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (v5 && (v7 * v5) >= v6)
  {
    goto LABEL_42;
  }

  v8 = 1;
  if (v5 >= 3)
  {
    v8 = (v5 & (v5 - 1)) != 0;
  }

  v9 = v8 | (2 * v5);
  v10 = vcvtps_u32_f32(v6 / v7);
  if (v9 <= v10)
  {
    prime = v10;
  }

  else
  {
    prime = v9;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v5 = *(a1 + 8);
  }

  if (prime <= v5)
  {
    if (prime >= v5)
    {
      goto LABEL_42;
    }

    v23 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v5 < 3 || (v24 = vcnt_s8(v5), v24.i16[0] = vaddlv_u8(v24), v24.u32[0] > 1uLL))
    {
      v44 = std::__next_prime(v23);
      if (prime <= v44)
      {
        prime = v44;
      }

      if (prime >= v5)
      {
LABEL_36:
        v5 = *(a1 + 8);
        v26 = vcnt_s8(v5);
        v26.i16[0] = vaddlv_u8(v26);
        v27 = v26.u32[0];
        if (v26.u32[0] < 2uLL)
        {
          goto LABEL_43;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v25 = 1 << -__clz(v23 - 1);
      if (v23 >= 2)
      {
        v23 = v25;
      }

      if (prime <= v23)
      {
        prime = v23;
      }

      if (prime >= v5)
      {
        goto LABEL_36;
      }
    }

    if (prime)
    {
      goto LABEL_13;
    }

    v45 = *a1;
    *a1 = 0;
    if (v45)
    {
      operator delete(v45);
    }

    v5 = 0;
    *(a1 + 8) = 0;
    v46 = vcnt_s8(0);
    v46.i16[0] = vaddlv_u8(v46);
    v27 = v46.u32[0];
    if (v46.u32[0] < 2uLL)
    {
      goto LABEL_43;
    }

LABEL_72:
    v47 = v4;
    if (v5 <= v4)
    {
      v47 = v4 % v5;
    }

    v31 = *a1;
    v48 = *(*a1 + 8 * v47);
    if (!v48)
    {
      v36 = 0;
      v40 = *(a2 + 8);
      if (v40 < v5)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    v49 = 0;
    do
    {
      v36 = v48;
      v48 = *v48;
      if (!v48)
      {
        break;
      }

      v53 = v48[1];
      v54 = v53;
      if (v53 >= v5)
      {
        v54 = v53 % v5;
      }

      if (v54 != v47)
      {
        break;
      }

      v50 = v53 == v4 && *(v48 + 4) == *(a2 + 16);
      v51 = v50 != (v49 & 1);
      v52 = v49 & v51;
      v49 |= v51;
    }

    while (v52 != 1);
    goto LABEL_50;
  }

LABEL_13:
  if (prime >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = operator new(8 * prime);
  v13 = *a1;
  *a1 = v12;
  if (v13)
  {
    operator delete(v13);
    v12 = *a1;
  }

  *(a1 + 8) = prime;
  bzero(v12, 8 * prime);
  v15 = a1 + 16;
  v14 = *(a1 + 16);
  if (v14)
  {
    v16 = v14[1];
    v17 = prime - 1;
    if ((prime & (prime - 1)) != 0)
    {
      if (v16 >= prime)
      {
        v16 %= prime;
      }

      v12[v16] = v15;
      for (i = *v14; *v14; i = *v14)
      {
        v41 = i[1];
        if (v41 >= prime)
        {
          v41 %= prime;
        }

        if (v41 == v16)
        {
          v14 = i;
        }

        else
        {
          v42 = i;
          if (v12[v41])
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42 && *(i + 4) == *(v42 + 4));
            *v14 = v42;
            *v43 = *v12[v41];
            *v12[v41] = i;
          }

          else
          {
            v12[v41] = v14;
            v14 = i;
            v16 = v41;
          }
        }
      }
    }

    else
    {
      v18 = v16 & v17;
      v12[v18] = v15;
      for (j = *v14; *v14; j = *v14)
      {
        v20 = j[1] & v17;
        if (v20 == v18)
        {
          v14 = j;
        }

        else
        {
          v21 = j;
          if (v12[v20])
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21 && *(j + 4) == *(v21 + 4));
            *v14 = v21;
            *v22 = *v12[v20];
            *v12[v20] = j;
          }

          else
          {
            v12[v20] = v14;
            v14 = j;
            v18 = v20;
          }
        }
      }
    }
  }

  v5 = prime;
LABEL_42:
  v29 = vcnt_s8(v5);
  v29.i16[0] = vaddlv_u8(v29);
  v27 = v29.u32[0];
  if (v29.u32[0] >= 2uLL)
  {
    goto LABEL_72;
  }

LABEL_43:
  v30 = (v5 - 1) & v4;
  v31 = *a1;
  v32 = *(*a1 + 8 * v30);
  if (!v32)
  {
    v36 = 0;
    v40 = *(a2 + 8);
    goto LABEL_64;
  }

  v33 = 0;
  while (1)
  {
    v36 = v32;
    v32 = *v32;
    if (!v32)
    {
      break;
    }

    v37 = v32[1];
    if ((v37 & (v5 - 1)) != v30)
    {
      break;
    }

    if (v37 == v4)
    {
      v34 = (*(v32 + 4) == *(a2 + 16)) != (v33 & 1);
      v35 = v33 & v34;
      v33 |= v34;
      if (v35)
      {
        break;
      }
    }

    else
    {
      v38 = (v33 & 1) != 0;
      v39 = v33 & v38;
      v33 |= v38;
      if (v39)
      {
        break;
      }
    }
  }

LABEL_50:
  v40 = *(a2 + 8);
  if (v27 <= 1)
  {
LABEL_64:
    v40 &= v5 - 1;
    goto LABEL_86;
  }

  if (v40 >= v5)
  {
LABEL_85:
    v40 %= v5;
  }

LABEL_86:
  if (!v36)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v31[v40] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_100;
    }

    v55 = *(*a2 + 8);
    if (v27 > 1)
    {
      if (v55 >= v5)
      {
        v55 %= v5;
      }
    }

    else
    {
      v55 &= v5 - 1;
    }

LABEL_99:
    v31[v55] = a2;
    goto LABEL_100;
  }

  *a2 = *v36;
  *v36 = a2;
  if (*a2)
  {
    v55 = *(*a2 + 8);
    if (v27 > 1)
    {
      if (v55 >= v5)
      {
        v55 %= v5;
      }
    }

    else
    {
      v55 &= v5 - 1;
    }

    if (v55 != v40)
    {
      goto LABEL_99;
    }
  }

LABEL_100:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__deallocate_node(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[3];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        _Block_release(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void Bsp::BspCommandDriver::~BspCommandDriver(Bsp::BspCommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x1E69E54D0];
  v2 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1E6926FD0](a1 + 1);

  return std::ostream::~ostream();
}

void *std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0>,__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F06018;
  return result;
}

ACFULogging *std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0>,__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v19 = *a2;
  v2 = *a2;
  v20 = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (!v2)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    v6 = 0;
    if (!v3)
    {
      return v6;
    }

    goto LABEL_34;
  }

  v4 = **v2;
  v5 = __dynamic_cast(v2, MEMORY[0x1E698C0F0], MEMORY[0x1E698C100], 0);
  if (v5)
  {
    v24 = v5;
    v25 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  GetBasebandTatsuTagToFileNameMap(v21);
  v7 = v22;
  if (!v22)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v8 = *(v7 + 4);
      if (v8 <= @"Cellular1,LLB")
      {
        break;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    if (v8 >= @"Cellular1,LLB")
    {
      break;
    }

    v7 = *(v7 + 1);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  RTKitFirmware::getFileOffsetByFileName();
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v21, v22);
  if ((v23 & 0x100000000) == 0)
  {
    goto LABEL_31;
  }

  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  v10 = v24;
  GetBasebandTatsuTagToFileNameMap(v21);
  v11 = v22;
  if (!v22)
  {
LABEL_22:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v12 = *(v11 + 4);
      if (v12 <= @"Cellular1,LLB")
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_22;
      }
    }

    if (v12 >= @"Cellular1,LLB")
    {
      break;
    }

    v11 = *(v11 + 1);
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  v13 = (*(*v10 + 40))(v10, v11 + 40);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v21, v22);
  if (!v13)
  {
LABEL_31:
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    v6 = 0;
    v17 = v25;
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_32:
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v3 = v20;
      if (!v20)
      {
        return v6;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

  ACFULogging::getLogInstance(v9);
  v14 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage();
  TypeID = ACFUFirmware::copyFWContainerFromOffset(v19);
  v6 = TypeID;
  if (TypeID && (v16 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v16 == TypeID))
  {
    ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage();
  }

  else
  {
    ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage();
    v6 = 0;
  }

  v17 = v25;
  if (v25)
  {
    goto LABEL_32;
  }

LABEL_33:
  v3 = v20;
  if (!v20)
  {
    return v6;
  }

LABEL_34:
  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return v6;
}

void sub_1E5370330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v5 - 48);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5370374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, char *a16)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a15, a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 - 48);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0>,__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F060A8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F060A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, BasebandRestore *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 176);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v5);
  v7 = v5;
  if (!v5 || (v5 = *(v4 + 168)) == 0)
  {
LABEL_6:
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
    *a3 = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_7;
  }

  BasebandRestore::handleRTIClientImage(v5, a2, a3);
LABEL_7:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1E5370598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F06138;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E53953ECLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E53953ECLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53953ECLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53953ECLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F061B8;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E53954A1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E53954A1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53954A1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53954A1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F06238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5F06288;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::~__func(void *__p)
{
  *__p = &unk_1F5F06288;
  v2 = __p[1];
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F5F06288;
  v2[1] = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v2[2] = *(a1 + 16);
  return v2;
}

CFTypeRef std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::__clone(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  *a2 = &unk_1F5F06288;
  a2[1] = result;
  if (result)
  {
    result = CFRetain(result);
  }

  a2[2] = *(a1 + 16);
  return result;
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::operator()(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v147 = *MEMORY[0x1E69E9840];
  size = a1->__r_.__value_.__l.__size_;
  v4 = a1->__r_.__value_.__r.__words[2];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  memset(&v102, 0, sizeof(v102));
  if (!size)
  {
    goto LABEL_7;
  }

  v7 = *(a2 + 23);
  v8 = v7;
  v9 = *(a2 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (v10 != 4)
  {
    if (!v10)
    {
LABEL_7:
      *(&v102.__r_.__value_.__s + 23) = 12;
      LODWORD(v102.__r_.__value_.__r.__words[1]) = 1953391981;
      v102.__r_.__value_.__r.__words[0] = *"Bad argument";
      goto LABEL_206;
    }

LABEL_11:
    if (*(v4 + 24))
    {
      goto LABEL_134;
    }

    bzero(buffer, 0x400uLL);
    CFStringGetCString(size, buffer, 1024, 0x8000100u);
    memset(__dst, 170, sizeof(__dst));
    v12 = strlen(buffer);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v12 | 7) + 1;
      }

      v14 = operator new(v15);
      __dst[1] = v13;
      __dst[2] = (v15 | 0x8000000000000000);
      __dst[0] = v14;
    }

    else
    {
      HIBYTE(__dst[2]) = v12;
      v14 = __dst;
      if (!v12)
      {
LABEL_25:
        *(v13 + v14) = 0;
        memset(__b, 170, sizeof(__b));
        v16 = SHIBYTE(__dst[2]);
        if (SHIBYTE(__dst[2]) >= 0)
        {
          v17 = HIBYTE(__dst[2]);
        }

        else
        {
          v17 = __dst[1];
        }

        v18 = v17 + 1;
        if (v17 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v18 < 0x17)
        {
          *&v128 = 0;
          v127[1] = 0;
          v127[0] = 0;
          v20 = v127;
          BYTE7(v128) = v17 + 1;
          if (!v17)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if ((v18 | 7) == 0x17)
          {
            v19 = 25;
          }

          else
          {
            v19 = (v18 | 7) + 1;
          }

          v20 = operator new(v19);
          *&v128 = v19 | 0x8000000000000000;
          v127[0] = v20;
          v127[1] = (v17 + 1);
        }

        if (v16 >= 0)
        {
          v21 = __dst;
        }

        else
        {
          v21 = __dst[0];
        }

        memmove(v20, v21, v17);
LABEL_39:
        *&v20[v17] = 47;
        v22 = SBYTE7(v128);
        if ((SBYTE7(v128) & 0x8000000000000000) != 0)
        {
          v22 = v127[1];
          v24 = (v128 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v24 - v127[1] < 7)
          {
            v18 = v127[1] + 7;
            if ((0x7FFFFFFFFFFFFFF7 - (v128 & 0x7FFFFFFFFFFFFFFFLL)) < v127[1] - v24 + 7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v23 = v127[0];
            if (v24 > 0x3FFFFFFFFFFFFFF2)
            {
              v28 = 0;
              v27 = 0x7FFFFFFFFFFFFFF7;
LABEL_54:
              v29 = operator new(v27);
              v30 = v29;
              if (v22)
              {
                memmove(v29, v23, v22);
              }

              v31 = &v30[v22];
              *(v31 + 3) = 1852400174;
              *v31 = 779383908;
              if (!v28)
              {
                operator delete(v23);
              }

              *&v128 = v27 | 0x8000000000000000;
              v127[0] = v30;
              v127[1] = v18;
              v32 = &v30[v18];
LABEL_65:
              *v32 = 0;
              *__p = *v127;
              *&v106 = v128;
              *&v128 = 0;
              v127[0] = 0;
              v127[1] = 0;
              std::ifstream::basic_ifstream(__b, __p);
              if (SBYTE7(v106) < 0)
              {
                operator delete(__p[0]);
                if ((SBYTE7(v128) & 0x80000000) == 0)
                {
LABEL_67:
                  if (__b[5].__r_.__value_.__r.__words[2])
                  {
LABEL_68:
                    v135 = 0xAAAAAAAAAAAAAAAALL;
                    *&v36 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v133 = v36;
                    v134 = v36;
                    v131 = v36;
                    v132 = v36;
                    v129 = v36;
                    v130 = v36;
                    *v127 = v36;
                    v128 = v36;
                    std::istream::tellg();
                    std::istream::seekg();
                    v126 = 0xAAAAAAAAAAAAAAAALL;
                    *&v37 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v124 = v37;
                    v125 = v37;
                    v122 = v37;
                    v123 = v37;
                    v120 = v37;
                    v121 = v37;
                    v118 = v37;
                    v119 = v37;
                    std::istream::tellg();
                    v38 = v126;
                    v39 = v135;
                    std::istream::seekg();
                    v40 = (v38 - v39) / 0x24;
                    if ((v38 - v39) % 0x24)
                    {
                      if (!*(v4 + 24))
                      {
LABEL_80:
                        std::string::__assign_external(&v102, "Invalid coredump translation table file", 0x27uLL);
                        goto LABEL_81;
                      }

                      v41 = *(v4 + 16);
                      if (!v41)
                      {
LABEL_77:
                        *(v4 + 16) = 0;
                        v43 = *(v4 + 8);
                        if (v43)
                        {
                          bzero(*v4, 8 * v43);
                        }

                        *(v4 + 24) = 0;
                        goto LABEL_80;
                      }

                      while (1)
                      {
                        v42 = *v41;
                        if (v41[63] < 0)
                        {
                          operator delete(*(v41 + 5));
                          if ((v41[39] & 0x80000000) == 0)
                          {
                            goto LABEL_73;
                          }

LABEL_76:
                          operator delete(*(v41 + 2));
                          operator delete(v41);
                          v41 = v42;
                          if (!v42)
                          {
                            goto LABEL_77;
                          }
                        }

                        else
                        {
                          if (v41[39] < 0)
                          {
                            goto LABEL_76;
                          }

LABEL_73:
                          operator delete(v41);
                          v41 = v42;
                          if (!v42)
                          {
                            goto LABEL_77;
                          }
                        }
                      }
                    }

                    if (v40 < 1)
                    {
LABEL_126:
                      v44 = 1;
                      goto LABEL_127;
                    }

                    v45 = 0;
                    while (1)
                    {
                      v117 = 0;
                      memset(&v116[1], 0, 32);
                      std::istream::read();
                      if ((*(&__b[1].__r_.__value_.__r.__words[1] + *(__b[0].__r_.__value_.__r.__words[0] - 24)) & 5) != 0)
                      {
                        v114 = 0xAAAAAAAAAAAAAAAALL;
                        *&v93 = 0xAAAAAAAAAAAAAAAALL;
                        *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
                        v113[7] = v93;
                        v113[8] = v93;
                        v113[5] = v93;
                        v113[6] = v93;
                        v113[3] = v93;
                        v113[4] = v93;
                        v113[1] = v93;
                        v113[2] = v93;
                        v112 = v93;
                        v113[0] = v93;
                        *v110 = v93;
                        v111 = v93;
                        v108 = v93;
                        v109 = v93;
                        v106 = v93;
                        v107 = v93;
                        *__p = v93;
                        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
                        v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "Failed to read coredump translation table entry instance ", 57);
                        MEMORY[0x1E69270D0](v94, v45);
                        if ((BYTE8(v112) & 0x10) != 0)
                        {
                          v97 = v112;
                          if (v112 < *(&v109 + 1))
                          {
                            *&v112 = *(&v109 + 1);
                            v97 = *(&v109 + 1);
                          }

                          v98 = &v109;
                        }

                        else
                        {
                          if ((BYTE8(v112) & 8) == 0)
                          {
                            v95 = 0;
                            *(&v104.__r_.__value_.__s + 23) = 0;
                            v96 = &v104;
                            goto LABEL_229;
                          }

                          v98 = &v107 + 1;
                          v97 = *(&v108 + 1);
                        }

                        v99 = *v98;
                        v95 = v97 - *v98;
                        if (v95 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        if (v95 >= 0x17)
                        {
                          if ((v95 | 7) == 0x17)
                          {
                            v100 = 25;
                          }

                          else
                          {
                            v100 = (v95 | 7) + 1;
                          }

                          v96 = operator new(v100);
                          v104.__r_.__value_.__l.__size_ = v95;
                          v104.__r_.__value_.__r.__words[2] = v100 | 0x8000000000000000;
                          v104.__r_.__value_.__r.__words[0] = v96;
                        }

                        else
                        {
                          *(&v104.__r_.__value_.__s + 23) = v97 - *v98;
                          v96 = &v104;
                          if (!v95)
                          {
LABEL_229:
                            v96->__r_.__value_.__s.__data_[v95] = 0;
                            if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v102.__r_.__value_.__l.__data_);
                            }

                            v102 = v104;
                            __p[0] = *MEMORY[0x1E69E54D8];
                            v101 = *(MEMORY[0x1E69E54D8] + 72);
                            *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
                            *&v106 = v101;
                            *(&v106 + 1) = MEMORY[0x1E69E5548] + 16;
                            if (SHIBYTE(v111) < 0)
                            {
                              operator delete(v110[1]);
                            }

                            *(&v106 + 1) = MEMORY[0x1E69E5538] + 16;
                            std::locale::~locale(&v107);
                            std::iostream::~basic_iostream();
                            MEMORY[0x1E69273B0](v113);
LABEL_81:
                            v44 = 0;
LABEL_127:
                            if (!std::filebuf::close())
                            {
                              std::ios_base::clear((__b + *(__b[0].__r_.__value_.__r.__words[0] - 24)), *(&__b[1].__r_.__value_.__r.__words[1] + *(__b[0].__r_.__value_.__r.__words[0] - 24)) | 4);
                            }

LABEL_129:
                            __b[0].__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54C8];
                            *(__b[0].__r_.__value_.__r.__words + *(__b[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
                            MEMORY[0x1E6926FD0](&__b[0].__r_.__value_.__r.__words[2]);
                            std::istream::~istream();
                            a1 = MEMORY[0x1E69273B0](&__b[17].__r_.__value_.__r.__words[2]);
                            if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
                            {
                              if (!v44)
                              {
                                goto LABEL_206;
                              }

LABEL_133:
                              v7 = *(a2 + 23);
                              v9 = *(a2 + 8);
                              v8 = *(a2 + 23);
LABEL_134:
                              if (v8 >= 0)
                              {
                                v57 = a2;
                              }

                              else
                              {
                                v57 = *a2;
                              }

                              if (v8 >= 0)
                              {
                                v58 = v7;
                              }

                              else
                              {
                                v58 = v9;
                              }

                              v59 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](buffer, v57, v58);
                              v60 = *(v4 + 8);
                              if (v60)
                              {
                                v61 = v59;
                                v62 = vcnt_s8(v60);
                                v62.i16[0] = vaddlv_u8(v62);
                                if (v62.u32[0] > 1uLL)
                                {
                                  v63 = v59;
                                  if (v59 >= *&v60)
                                  {
                                    v63 = v59 % *&v60;
                                  }
                                }

                                else
                                {
                                  v63 = (*&v60 - 1) & v59;
                                }

                                v64 = *(*v4 + 8 * v63);
                                if (v64)
                                {
                                  v65 = *v64;
                                  if (*v64)
                                  {
                                    v66 = *(a2 + 23);
                                    if (v66 >= 0)
                                    {
                                      v67 = *(a2 + 23);
                                    }

                                    else
                                    {
                                      v67 = *(a2 + 8);
                                    }

                                    if (v66 >= 0)
                                    {
                                      v68 = a2;
                                    }

                                    else
                                    {
                                      v68 = *a2;
                                    }

                                    if (v62.u32[0] < 2uLL)
                                    {
                                      v69 = *&v60 - 1;
                                      while (1)
                                      {
                                        v74 = v65[1];
                                        if (v74 == v61)
                                        {
                                          v75 = *(v65 + 39);
                                          v76 = v75;
                                          if (v75 < 0)
                                          {
                                            v75 = v65[3];
                                          }

                                          if (v75 == v67)
                                          {
                                            v77 = v76 >= 0 ? (v65 + 2) : v65[2];
                                            if (!memcmp(v77, v68, v67))
                                            {
                                              goto LABEL_178;
                                            }
                                          }
                                        }

                                        else if ((v74 & v69) != v63)
                                        {
                                          goto LABEL_181;
                                        }

                                        v65 = *v65;
                                        if (!v65)
                                        {
                                          goto LABEL_181;
                                        }
                                      }
                                    }

                                    do
                                    {
                                      v70 = v65[1];
                                      if (v70 == v61)
                                      {
                                        v71 = *(v65 + 39);
                                        v72 = v71;
                                        if (v71 < 0)
                                        {
                                          v71 = v65[3];
                                        }

                                        if (v71 == v67)
                                        {
                                          v73 = v72 >= 0 ? (v65 + 2) : v65[2];
                                          if (!memcmp(v73, v68, v67))
                                          {
LABEL_178:
                                            *buffer = a2;
                                            v78 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, a2, buffer);
                                            if (v78 + 5 != a3)
                                            {
                                              if (*(v78 + 63) < 0)
                                              {
                                                std::string::__assign_no_alias<true>(a3, v78[5], v78[6]);
                                              }

                                              else
                                              {
                                                v79 = *(v78 + 5);
                                                a3[2] = v78[7];
                                                *a3 = v79;
                                              }
                                            }

                                            goto LABEL_207;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        if (v70 >= *&v60)
                                        {
                                          v70 %= *&v60;
                                        }

                                        if (v70 != v63)
                                        {
                                          break;
                                        }
                                      }

                                      v65 = *v65;
                                    }

                                    while (v65);
                                  }
                                }
                              }

LABEL_181:
                              v146 = 0xAAAAAAAAAAAAAAAALL;
                              *&v80 = 0xAAAAAAAAAAAAAAAALL;
                              *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
                              v145[8] = v80;
                              v145[7] = v80;
                              v145[6] = v80;
                              v145[5] = v80;
                              v145[4] = v80;
                              v145[3] = v80;
                              v145[2] = v80;
                              v145[1] = v80;
                              v145[0] = v80;
                              v144 = v80;
                              v143 = v80;
                              *v142 = v80;
                              v141 = v80;
                              v140 = v80;
                              v139 = v80;
                              v138 = v80;
                              *buffer = v80;
                              std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buffer);
                              v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v138, "Tag (", 5);
                              v82 = *(a2 + 23);
                              if (v82 >= 0)
                              {
                                v83 = a2;
                              }

                              else
                              {
                                v83 = *a2;
                              }

                              if (v82 >= 0)
                              {
                                v84 = *(a2 + 23);
                              }

                              else
                              {
                                v84 = *(a2 + 8);
                              }

                              v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v83, v84);
                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, ") not found in coredump translation table", 41);
                              if ((BYTE8(v144) & 0x10) != 0)
                              {
                                v88 = v144;
                                if (v144 < *(&v141 + 1))
                                {
                                  *&v144 = *(&v141 + 1);
                                  v88 = *(&v141 + 1);
                                }

                                v89 = v141;
                                v86 = v88 - v141;
                                if ((v88 - v141) > 0x7FFFFFFFFFFFFFF7)
                                {
                                  goto LABEL_211;
                                }
                              }

                              else
                              {
                                if ((BYTE8(v144) & 8) == 0)
                                {
                                  v86 = 0;
                                  *(&__b[0].__r_.__value_.__s + 23) = 0;
                                  v87 = __b;
                                  goto LABEL_201;
                                }

                                v89 = *(&v139 + 1);
                                v86 = *(&v140 + 1) - *(&v139 + 1);
                                if (*(&v140 + 1) - *(&v139 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                {
LABEL_211:
                                  std::string::__throw_length_error[abi:ne200100]();
                                }
                              }

                              if (v86 >= 0x17)
                              {
                                if ((v86 | 7) == 0x17)
                                {
                                  v90 = 25;
                                }

                                else
                                {
                                  v90 = (v86 | 7) + 1;
                                }

                                v87 = operator new(v90);
                                __b[0].__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
                                __b[0].__r_.__value_.__r.__words[0] = v87;
                                __b[0].__r_.__value_.__l.__size_ = v86;
                              }

                              else
                              {
                                *(&__b[0].__r_.__value_.__s + 23) = v86;
                                v87 = __b;
                                if (!v86)
                                {
                                  goto LABEL_201;
                                }
                              }

                              memmove(v87, v89, v86);
LABEL_201:
                              v87->__r_.__value_.__s.__data_[v86] = 0;
                              if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v102.__r_.__value_.__l.__data_);
                              }

                              v102 = __b[0];
                              *buffer = *MEMORY[0x1E69E54D8];
                              v91 = *(MEMORY[0x1E69E54D8] + 72);
                              *&buffer[*(*buffer - 24)] = *(MEMORY[0x1E69E54D8] + 64);
                              *&v138 = v91;
                              *(&v138 + 1) = MEMORY[0x1E69E5548] + 16;
                              if (SHIBYTE(v143) < 0)
                              {
                                operator delete(v142[1]);
                              }

                              *(&v138 + 1) = MEMORY[0x1E69E5538] + 16;
                              std::locale::~locale(&v139);
                              std::iostream::~basic_iostream();
                              a1 = MEMORY[0x1E69273B0](v145);
                              goto LABEL_206;
                            }

                            operator delete(__dst[0]);
                            if (v44)
                            {
                              goto LABEL_133;
                            }

LABEL_206:
                            ACFULogging::getLogInstance(a1);
                            ACFULogging::handleMessage();
                            goto LABEL_207;
                          }
                        }

                        memmove(v96, v99, v95);
                        goto LABEL_229;
                      }

                      __p[1] = 0xAAAAAAAAAAAAAAAALL;
                      *&v106 = 0x4AAAAAAAAAAAAAALL;
                      __p[0] = (LODWORD(v116[1]) | 0xAAAAAA0000000000);
                      if (LOBYTE(v116[1]) != 67)
                      {
                        __p[0] = (v18 & 0xFFFFFF0000000000 | bswap32(v116[1]));
                        v18 = __p[0] & 0xFFFFFF00FFFFFF00;
                      }

                      memset(&v104, 170, sizeof(v104));
                      v46 = strlen(&v116[1] + 4);
                      if (v46 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v47 = v46;
                      if (v46 >= 0x17)
                      {
                        if ((v46 | 7) == 0x17)
                        {
                          v52 = 25;
                        }

                        else
                        {
                          v52 = (v46 | 7) + 1;
                        }

                        v48 = operator new(v52);
                        v104.__r_.__value_.__l.__size_ = v47;
                        v104.__r_.__value_.__r.__words[2] = v52 | 0x8000000000000000;
                        v104.__r_.__value_.__r.__words[0] = v48;
                      }

                      else
                      {
                        *(&v104.__r_.__value_.__s + 23) = v46;
                        v48 = &v104;
                        if (!v46)
                        {
                          v104.__r_.__value_.__s.__data_[0] = 0;
                          v49 = SHIBYTE(v104.__r_.__value_.__r.__words[2]);
                          if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_96;
                          }

                          goto LABEL_110;
                        }
                      }

                      memcpy(v48, &v116[1] + 4, v47);
                      v48->__r_.__value_.__s.__data_[v47] = 0;
                      v49 = SHIBYTE(v104.__r_.__value_.__r.__words[2]);
                      if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_96:
                        if (v49 == 17)
                        {
                          v50 = v104.__r_.__value_.__r.__words[0] == 0x65725F6873617263 && v104.__r_.__value_.__l.__size_ == 0x6F736A2E74726F70;
                          if (v50 && v104.__r_.__value_.__s.__data_[16] == 110)
                          {
                            goto LABEL_119;
                          }
                        }

                        v103 = v104;
                        goto LABEL_120;
                      }

LABEL_110:
                      if (v104.__r_.__value_.__l.__size_ == 17)
                      {
                        v53 = *v104.__r_.__value_.__l.__data_ == 0x65725F6873617263 && *(v104.__r_.__value_.__r.__words[0] + 8) == 0x6F736A2E74726F70;
                        if (v53 && *(v104.__r_.__value_.__r.__words[0] + 16) == 110)
                        {
LABEL_119:
                          *(&v103.__r_.__value_.__s + 23) = 11;
                          strcpy(&v103, "report.json");
                          goto LABEL_120;
                        }
                      }

                      std::string::__init_copy_ctor_external(&v103, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
LABEL_120:
                      v116[0] = __p;
                      v55 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, __p, v116);
                      if (*(v55 + 63) < 0)
                      {
                        v56 = v55;
                        operator delete(v55[5]);
                        *(v56 + 5) = v103;
                        if (v49 < 0)
                        {
                          goto LABEL_87;
                        }

LABEL_124:
                        if ((SBYTE7(v106) & 0x80000000) == 0)
                        {
                          goto LABEL_88;
                        }

LABEL_125:
                        operator delete(__p[0]);
                        v45 = (v45 + 1);
                        if (v40 == v45)
                        {
                          goto LABEL_126;
                        }
                      }

                      else
                      {
                        *(v55 + 5) = v103;
                        if ((v49 & 0x80000000) == 0)
                        {
                          goto LABEL_124;
                        }

LABEL_87:
                        operator delete(v104.__r_.__value_.__l.__data_);
                        if (SBYTE7(v106) < 0)
                        {
                          goto LABEL_125;
                        }

LABEL_88:
                        v45 = (v45 + 1);
                        if (v40 == v45)
                        {
                          goto LABEL_126;
                        }
                      }
                    }
                  }

LABEL_84:
                  v44 = 1;
                  goto LABEL_129;
                }
              }

              else if ((SBYTE7(v128) & 0x80000000) == 0)
              {
                goto LABEL_67;
              }

              operator delete(v127[0]);
              if (__b[5].__r_.__value_.__r.__words[2])
              {
                goto LABEL_68;
              }

              goto LABEL_84;
            }

LABEL_45:
            v25 = 2 * v24;
            if (v18 > 2 * v24)
            {
              v25 = v18;
            }

            if ((v25 | 7) == 0x17)
            {
              v26 = 25;
            }

            else
            {
              v26 = (v25 | 7) + 1;
            }

            if (v25 >= 0x17)
            {
              v27 = v26;
            }

            else
            {
              v27 = 23;
            }

            v28 = v24 == 22;
            goto LABEL_54;
          }

          v33 = v127[0];
        }

        else
        {
          if ((SBYTE7(v128) - 16) < 7)
          {
            v18 = SBYTE7(v128) + 7;
            v23 = v127;
            v24 = 22;
            goto LABEL_45;
          }

          v33 = v127;
        }

        v34 = (v33 + v22);
        *(v34 + 3) = 1852400174;
        *v34 = 779383908;
        v35 = v22 + 7;
        if (SBYTE7(v128) < 0)
        {
          v127[1] = (v22 + 7);
        }

        else
        {
          BYTE7(v128) = v35 & 0x7F;
        }

        v32 = v33 + v35;
        goto LABEL_65;
      }
    }

    memcpy(v14, buffer, v13);
    goto LABEL_25;
  }

  v11 = *a2;
  if ((v7 & 0x80u) == 0)
  {
    v11 = a2;
  }

  if (*v11 != 808469571)
  {
    goto LABEL_11;
  }

  if (a3 != "dtt.bin")
  {
    a3[2] = 0x700000000000000;
    *a3 = *"dtt.bin";
  }

  if (*(v4 + 24))
  {
    a1 = std::string::__assign_external(&v102, "Duplicate coredump translation file received", 0x2CuLL);
    goto LABEL_206;
  }

LABEL_207:
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v92 = *MEMORY[0x1E69E9840];
}

void sub_1E5371AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  std::ifstream::~ifstream(&STACK[0x300]);
  MEMORY[0x1E69273B0](&STACK[0x4A8]);
  if (a67 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_6:
      operator delete(a13);
      if ((*(v67 + 23) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      operator delete(*v67);
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_6;
  }

  if ((*(v67 + 23) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v43, a2, v7);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v4[23];
        if (v15 >= 0)
        {
          v16 = v4[23];
        }

        else
        {
          v16 = *(v4 + 1);
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? v14 + 2 : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return v14;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? v14 + 2 : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return v14;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v25 = operator new(0x40uLL);
  v43[0] = v25;
  v43[1] = a1;
  v44 = 0;
  *v25 = 0;
  *(v25 + 1) = v9;
  v26 = *a3;
  if (*(*a3 + 23) < 0)
  {
    v28 = v25;
    std::string::__init_copy_ctor_external((v25 + 16), *v26, *(v26 + 1));
    v25 = v28;
  }

  else
  {
    v27 = *v26;
    *(v25 + 4) = *(v26 + 2);
    *(v25 + 1) = v27;
  }

  *(v25 + 5) = 0;
  *(v25 + 6) = 0;
  *(v25 + 7) = 0;
  LOBYTE(v44) = 1;
  v29 = (*(a1 + 24) + 1);
  v30 = *(a1 + 32);
  if (v10 && (v30 * v10) >= v29)
  {
    goto LABEL_74;
  }

  v31 = 1;
  if (v10 >= 3)
  {
    v31 = (v10 & (v10 - 1)) != 0;
  }

  v32 = v31 | (2 * v10);
  v33 = vcvtps_u32_f32(v29 / v30);
  if (v32 <= v33)
  {
    prime = v33;
  }

  else
  {
    prime = v32;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v35 = *(a1 + 8);
  if (prime > *&v35)
  {
    goto LABEL_58;
  }

  if (prime < *&v35)
  {
    v36 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v35 < 3uLL || (v37 = vcnt_s8(v35), v37.i16[0] = vaddlv_u8(v37), v37.u32[0] > 1uLL))
    {
      v36 = std::__next_prime(v36);
    }

    else
    {
      v38 = 1 << -__clz(v36 - 1);
      if (v36 >= 2)
      {
        v36 = v38;
      }
    }

    if (prime <= v36)
    {
      prime = v36;
    }

    if (prime < *&v35)
    {
LABEL_58:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }

  v10 = *(a1 + 8);
  if ((v10 & (v10 - 1)) != 0)
  {
    if (v9 >= v10)
    {
      v12 = v9 % v10;
      v39 = *a1;
      v40 = *(*a1 + 8 * (v9 % v10));
      if (!v40)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

    v12 = v9;
LABEL_74:
    v39 = *a1;
    v40 = *(*a1 + 8 * v12);
    if (!v40)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  v12 = (v10 - 1) & v9;
  v39 = *a1;
  v40 = *(*a1 + 8 * v12);
  if (!v40)
  {
LABEL_79:
    v14 = v43[0];
    *v43[0] = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v39 + 8 * v12) = a1 + 16;
    if (*v14)
    {
      v42 = *(*v14 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v42 >= v10)
        {
          v42 %= v10;
        }

        *(v39 + 8 * v42) = v14;
      }

      else
      {
        *(v39 + 8 * (v42 & (v10 - 1))) = v14;
      }
    }

    goto LABEL_76;
  }

LABEL_75:
  v14 = v43[0];
  *v43[0] = *v40;
  *v40 = v14;
LABEL_76:
  ++*(a1 + 24);
  return v14;
}

void sub_1E53720E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E53720F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x1E69E54C8];
  v2 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1E6926FD0](a1 + 2);

  return std::istream::~istream();
}

uint64_t __cxx_global_var_init_44()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void *getReverseProxySettings@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3812000000;
  v19[3] = __Block_byref_object_copy__4;
  v19[4] = __Block_byref_object_dispose__4;
  v19[5] = "";
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_1F5F05418;
  v20[0] = v4;
  std::mutex::lock((v4 + 24));
  v5 = *(v4 + 34);
  if ((v5 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  *(v4 + 34) = v5 | 2;
  std::mutex::unlock((v4 + 24));
  cf = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a1, *(a1 + 8));
  }

  else
  {
    v17 = *a1;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v17;
  }

  v20[1] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v21;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v22;
  }

  v6 = *MEMORY[0x1E695E480];
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (ctu::cf::convert_copy())
  {
    v7 = CFURLCreateWithString(v6, v24, 0);
    CFRelease(v24);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    cf = v7;
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_40:
  operator delete(v22.__r_.__value_.__l.__data_);
  cf = v7;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }

LABEL_18:
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_42:
  operator delete(v17.__r_.__value_.__l.__data_);
LABEL_19:
  v8 = RPRegisterForAvailability();
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a1 + 8);
    }

    if (v10 && cf && (RPRegistrationResume(), v23.__r_.__value_.__r.__words[0] = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000, v11 = std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v4, &v23), v8 = RPRegistrationInvalidate(), !v11))
    {
      std::__assoc_state<BOOL>::move(v4);
      if (!atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        v13 = v12;
        (*(*v4 + 16))(v4);
        v12 = v13;
      }

      if (v12)
      {
        v14 = RPCopyProxyDictionary();
        v15 = *a2;
        *a2 = v14;
        if (v15)
        {
          CFRelease(v15);
        }
      }

      else
      {
        ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage();
      }

      v4 = 0;
    }

    else
    {
      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
    }

    CFRelease(v9);
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v4 && !atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v4 + 16))(v4);
  }

  _Block_object_dispose(v19, 8);
  return std::promise<BOOL>::~promise(v20);
}

void sub_1E53726EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a23);
  _Block_object_dispose(&a24, 8);
  std::promise<BOOL>::~promise((v40 + 48));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v39);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void ___Z23getReverseProxySettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(ACFULogging *a1, int a2)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage();
      v3 = *(*(*(a1 + 4) + 8) + 48);
      if (!v3)
      {
        std::__throw_future_error[abi:ne200100](3u);
      }

      std::mutex::lock((v3 + 24));
      if ((*(v3 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(v3 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
      {
        std::__throw_future_error[abi:ne200100](2u);
      }

      *(v3 + 140) = 1;
      *(v3 + 136) |= 5u;
      std::condition_variable::notify_all((v3 + 88));
      std::mutex::unlock((v3 + 24));
    }

    else
    {
      ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage();
    }
  }
}

uint64_t createPostBodyFromDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFData **a3)
{
  if (!a2)
  {
    ACFULogging::getLogInstance(a1);
LABEL_27:
    ACFULogging::handleMessage();
    return 0;
  }

  v3 = a3;
  if (!a3)
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    return v3;
  }

  Mutable = CFStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_27;
  }

  v7 = Mutable;
  Count = CFDictionaryGetCount(a2);
  v9 = malloc(8 * Count);
  v10 = malloc(8 * Count);
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      ACFULogging::getLogInstance(0);
      goto LABEL_22;
    }

    CFDictionaryGetKeysAndValues(a2, v9, v10);
    if (Count >= 1)
    {
      v13 = 0;
      while (1)
      {
        v14 = v9[v13];
        if (!v14 || !v11[v13])
        {
          break;
        }

        CFStringAppend(v7, v14);
        CFStringAppend(v7, @"=");
        CFStringAppend(v7, v11[v13]);
        if (v13 < Count - 1)
        {
          CFStringAppend(v7, @"&");
        }

        if (Count == ++v13)
        {
          goto LABEL_13;
        }
      }

      ACFULogging::getLogInstance(v12);
LABEL_22:
      ACFULogging::handleMessage();
      v17 = 0;
      v3 = 0;
      CFRelease(v7);
      free(v9);
      if (!v11)
      {
        goto LABEL_18;
      }

LABEL_17:
      free(v11);
      goto LABEL_18;
    }

LABEL_13:
    ACFULogging::getLogInstance(v12);
    v15 = operator new(0x38uLL);
    strcpy(v15, "BasebandHttpCommon::createPostBodyFromDictionary");
    __p = v15;
    ACFULogging::handleMessageCFType();
    operator delete(__p);
    Length = CFStringGetLength(v7);
    v17 = malloc(Length + 1);
    if (v17)
    {
      CString = CFStringGetCString(v7, v17, Length + 1, 0x8000100u);
      if (!CString)
      {
        ACFULogging::getLogInstance(CString);
        goto LABEL_34;
      }

      v19 = CFDataCreate(a1, v17, Length);
      if (v19)
      {
        v20 = v19;
        *v3 = CFRetain(v19);
        CFRelease(v7);
        v3 = 1;
        CFRelease(v20);
        free(v9);
        if (!v11)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    ACFULogging::getLogInstance(0);
LABEL_34:
    ACFULogging::handleMessage();
    v3 = 0;
    CFRelease(v7);
    free(v9);
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage();
  CFRelease(v7);
  v17 = 0;
  v3 = 0;
  if (v11)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v17)
  {
    free(v17);
  }

  return v3;
}

void sub_1E5372DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t setHttpUriEscapedValue(const __CFAllocator *a1, __CFDictionary *a2, const __CFString *a3, CFStringRef theString)
{
  value = 0;
  result = 1005;
  if (a2 && a3 && theString)
  {
    v8 = escapeHttpUriString(a1, theString, &value);
    if (v8)
    {
      v10 = v8;
      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
      result = v10;
    }

    else if (value)
    {
      CFDictionarySetValue(a2, a3, value);
      result = 0;
    }

    else
    {
      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
      result = 1;
    }
  }

  if (value)
  {
    v9 = result;
    CFRelease(value);
    return v9;
  }

  return result;
}

uint64_t escapeHttpUriString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3)
{
  if (theString && a3)
  {
    MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
    if (MutableCopy)
    {
      v5 = MutableCopy;
      v6 = off_1E876EE90;
      v7 = 33;
      do
      {
        v8 = *(v6 - 1);
        v9 = *v6;
        v11.length = CFStringGetLength(v5);
        v11.location = 0;
        CFStringFindAndReplace(v5, v8, v9, v11, 0);
        v6 += 2;
        --v7;
      }

      while (v7);
      *a3 = CFRetain(v5);
      CFRelease(v5);
      return 0;
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      return 1;
    }
  }

  else
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    return 1005;
  }
}

uint64_t setHttpBase64EncodedValue(const __CFAllocator *a1, __CFDictionary *a2, const __CFString *a3, CFDataRef theData)
{
  cf = 0;
  if (a2)
  {
    if (a3 && theData)
    {
      v7 = encodeBase64(a1, theData, &cf);
      if (v7)
      {
        v10 = v7;
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();
        result = v10;
      }

      else if (cf)
      {
        result = setHttpUriEscapedValue(a1, a2, a3, cf);
      }

      else
      {
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();
        result = 1;
      }
    }

    else
    {
      ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage();
      result = 1005;
    }

    if (cf)
    {
      v9 = result;
      CFRelease(cf);
      return v9;
    }
  }

  else
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    return 1005;
  }

  return result;
}

uint64_t encodeBase64(const __CFAllocator *Length, CFDataRef theData, CFTypeRef *a3)
{
  if (!theData)
  {
    goto LABEL_16;
  }

  v5 = Length;
  Length = CFDataGetLength(theData);
  if (!Length)
  {
    ACFULogging::getLogInstance(0);
LABEL_17:
    ACFULogging::handleMessage();
    return 1005;
  }

  if (!a3)
  {
LABEL_16:
    ACFULogging::getLogInstance(Length);
    goto LABEL_17;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetLength(theData);
  if (!BytePtr)
  {
    goto LABEL_12;
  }

  v8 = v7;
  if (v7 < 1)
  {
    goto LABEL_12;
  }

  v9 = v7 / 3;
  if (v7 != 3 * (v7 / 3))
  {
    ++v9;
  }

  v10 = (4 * v9) | 1;
  v7 = malloc(v10);
  if (v7)
  {
    v11 = v7;
    b64_ntop(BytePtr, v8 & 0x7FFFFFFF, v7, v10);
    v12 = strlen(v11);
    if (v12)
    {
      v12 = CFStringCreateWithBytes(v5, v11, v12, 0x8000100u, 0);
      if (v12)
      {
        v13 = v12;
        *a3 = CFRetain(v12);
        free(v11);
        CFRelease(v13);
        return 0;
      }
    }

    ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage();
    free(v11);
  }

  else
  {
LABEL_12:
    ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage();
  }

  return 1;
}

uint64_t decodeBase64(const __CFAllocator *Length, CFStringRef theString, CFTypeRef *a3)
{
  if (!theString)
  {
    goto LABEL_30;
  }

  v5 = Length;
  Length = CFStringGetLength(theString);
  if (!Length)
  {
    ACFULogging::getLogInstance(0);
LABEL_31:
    ACFULogging::handleMessage();
    return 1005;
  }

  if (!a3)
  {
LABEL_30:
    ACFULogging::getLogInstance(Length);
    goto LABEL_31;
  }

  v6 = CFStringGetLength(theString);
  v7 = v6 + 1;
  v8 = malloc(v7);
  if (v8)
  {
    v9 = v8;
    CString = CFStringGetCString(theString, v8, v7, 0x8000100u);
    if (!CString)
    {
      goto LABEL_33;
    }

    if (v6 < -1)
    {
      CString = strlen(v9);
      v7 = CString;
    }

    v11 = v9;
    if (v7 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = v9;
      v11 = v9;
      do
      {
        v16 = *v14;
        if (v16 == 10 || v16 == 13)
        {
          v15 = 0;
          v12 = 0;
        }

        else
        {
          v15 = b64decode_table[*v14];
          if (v15 == -1)
          {
            v15 = v13;
          }

          else if (v12 > 1)
          {
            if (v12 == 2)
            {
              *v11++ = (16 * v13) | (v15 >> 2) & 0xF;
              v12 = 3;
            }

            else
            {
              v12 = 0;
              *v11++ = v15 | (v13 << 6);
            }
          }

          else if (v12)
          {
            *v11++ = (4 * v13) | (v15 >> 4) & 3;
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }
        }

        ++v14;
        v13 = v15;
      }

      while (v14 < &v9[v7]);
    }

    *v11 = 0;
    if (v11 - v9 > 0)
    {
      v18 = CFDataCreate(v5, v9, (v11 - v9) & 0x7FFFFFFF);
      if (v18)
      {
        v19 = v18;
        *a3 = CFRetain(v18);
        free(v9);
        CFRelease(v19);
        return 0;
      }

      ACFULogging::getLogInstance(0);
    }

    else
    {
LABEL_33:
      ACFULogging::getLogInstance(CString);
    }

    ACFULogging::handleMessage();
    free(v9);
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  return 1;
}

void BBUICEInitializer::~BBUICEInitializer(BBUICEInitializer *this)
{
  *this = &unk_1F5F02D68;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F02D68;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 2));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t BBUICEInitializer::prepare(uint64_t a1, uint64_t a2, int a3)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
    {
LABEL_3:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v5 = (**a1)(a1);
        v6 = BBUStageAsString(a3);
        _BBULog(4, 0, v5, "", "Preparing at %s with reset requested %u\n", v7, v8, v9, v6);
      }
    }
  }

  if (a3 != 2)
  {
    return 0;
  }

  if (*(a1 + 40) == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
LABEL_9:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v10 = (**a1)(a1);
          _BBULog(4, 0, v10, "", "Powering on modem. It is NOOP if BB is already on\n", v11, v12, v13, v19);
        }
      }
    }

    TelephonyBasebandPowerOnModem();
    result = 0;
    *(a1 + 40) = 0;
    return result;
  }

  *(a1 + 40) = 0;
  BBUFeedback::handleComment(*(a1 + 8), "%s: Start resetting modem", "prepare");
  if (TelephonyBasebandResetModem())
  {
    return 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v15 = (**a1)(a1);
    _BBULog(4, 0, v15, "", "Failed to prep\n", v16, v17, v18, v20);
    return 73;
  }

  return result;
}

uint64_t BBUICEInitializer::finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 > 4 || ((1 << a4) & 0x1A) == 0 || (result = (*(*a1 + 240))(a1, a2), !result))
  {
    result = (*(*a1 + 232))(a1, a2, a4);
    if (!result)
    {
      v10 = (*(*a1 + 200))(a1);
      result = (*(*a1 + 224))(a1, a2, a5, v10);
      if (!result)
      {
        v11 = *(*a1 + 280);

        return v11(a1, a2, 0, 0);
      }
    }
  }

  return result;
}

uint64_t BBUICEInitializer::crashBaseband(uint64_t a1)
{
  TelephonyBasebandGetReset();
  BBUFeedback::handleComment(*(a1 + 8), "modem %s reset", "is not");
  if (capabilities::coredump::supportsGPIOSignalling(v2))
  {
    TelephonyBasebandSetModemCoredumpGPIO();
    usleep(0xF4240u);
    TelephonyBasebandSetModemCoredumpGPIO();
    BBUFeedback::handleComment(*(a1 + 8), "Coredump GPIO signalled");
  }

  BBUFeedback::handleComment(*(a1 + 8), "resetting modem... may take several seconds for safe reset");
  TelephonyBasebandResetModem();
  return 0;
}

uint64_t BBUICEInitializer::getVersion(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Initialization/ICE/BBUICEInitializer.cpp", 0xA1u, "Assertion failure(transport && TelephonyUtilTransport Error.)", v8, v9, v10, v11);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *a3 = 0;
  IceAriGetContext();
  v4 = KTLGetFirmwareVersion();
  BBUFeedback::handleComment(*(a1 + 8), "Baseband firmware version size is: %u", 128);
  if (v4)
  {
    result = 0;
  }

  else
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get baseband firmware version.");
    result = 62;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BBUICEInitializer::gatherPersonalizationParameters(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[0] = v6;
  v44[1] = v6;
  v42[1] = v6;
  v43 = v6;
  *v41 = v6;
  v42[0] = v6;
  IceAriGetContext();
  v7 = KTLGetPersonalizationInfo();
  memset(v40, 170, sizeof(v40));
  ctu::hex(v42, HIDWORD(v41[0]));
  memset(v39, 170, sizeof(v39));
  ctu::hex(&v43, LODWORD(v41[1]));
  memset(v38, 170, sizeof(v38));
  ctu::hex(v44, HIDWORD(v41[1]));
  v8 = v40;
  if (SHIBYTE(v40[2]) < 0)
  {
    v8 = v40[0];
  }

  v9 = v39;
  if (SHIBYTE(v39[2]) < 0)
  {
    v9 = v39[0];
  }

  if (SHIBYTE(v38[2]) >= 0)
  {
    v10 = v38;
  }

  else
  {
    v10 = v38[0];
  }

  BBUFeedback::handleComment(a1[1], "Personalization info: \n \t\t\t\t\t\t\t chipId     : 0x%x \n \t\t\t\t\t\t\t nonceSize  : %u \n \t\t\t\t\t\t\t snumSize   : %u \n \t\t\t\t\t\t\t pkHashSize : %u \n \t\t\t\t\t\t\t nonce      : %s \n \t\t\t\t\t\t\t snum       : %s \n \t\t\t\t\t\t\t pkHash     : %s \n", LODWORD(v41[0]), HIDWORD(v41[0]), LODWORD(v41[1]), HIDWORD(v41[1]), v8, v9, v10);
  if (!v7)
  {
    BBUFeedback::handleComment(a1[1], "Failed to gather personalization information.");
    v32 = 64;
    if (SHIBYTE(v38[2]) < 0)
    {
      goto LABEL_42;
    }

LABEL_38:
    if (SHIBYTE(v39[2]) < 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v11 = HIDWORD(v41[0]);
  v12 = operator new(0x10uLL);
  *v12 = &unk_1F5F06660;
  v12[1] = 0;
  v13 = *MEMORY[0x1E695E480];
  v12[1] = CFDataCreate(*MEMORY[0x1E695E480], v42, v11);
  v14 = *(a3 + 8);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a3 + 8) = v12;
  v15 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(&v43, (8 * LODWORD(v41[1])));
  (*(*a3 + 16))(a3, v15);
  v16 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(LODWORD(v41[0]));
  v17 = *(a3 + 16);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  *(a3 + 16) = v16;
  v18 = HIDWORD(v41[1]);
  v19 = operator new(0x10uLL);
  *v19 = &unk_1F5F06780;
  v19[1] = 0;
  v19[1] = CFDataCreate(v13, v44, v18);
  (*(*a3 + 24))(a3, v19);
  if (v15 && v16)
  {
    v20 = a1[1];
    (*(*v15 + 24))(__p, v15);
    if (v37 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_20;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_20:
    v22 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
    v23 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
    v24 = (*(*v16 + 24))(v16);
    if ((v22 | v23))
    {
      v25 = v21;
    }

    else
    {
      v25 = "<< SNUM >>";
    }

    BBUFeedback::handleComment(v20, "   SNUM: 0x%s / CHIPID: 0x%08x", v25, v24);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v26 = a1[1];
  (*(*v12 + 24))(__p, v12);
  if (v37 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  BBUFeedback::handleComment(v26, "   NONCE: %s", v27);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v28 = a1[1];
  (*(*v19 + 24))(__p, v19);
  if (v37 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  BBUFeedback::handleComment(v28, "   PUBLIC_KEY_HASH: %s", v29);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = a1[1];
  v31 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v30, "   CertID: %u", v31);
  v32 = (*(*a1 + 26))(a1, a2, a3, 0);
  if ((SHIBYTE(v38[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_42:
  operator delete(v38[0]);
  if (SHIBYTE(v39[2]) < 0)
  {
LABEL_43:
    operator delete(v39[0]);
    if (SHIBYTE(v40[2]) < 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (SHIBYTE(v40[2]) < 0)
  {
LABEL_44:
    operator delete(v40[0]);
    v35 = *MEMORY[0x1E69E9840];
    return v32;
  }

LABEL_40:
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

void sub_1E5374378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if (a34 < 0)
    {
      goto LABEL_7;
    }
  }

  else if (a34 < 0)
  {
LABEL_7:
    operator delete(a29);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a35);
  goto LABEL_9;
}

uint64_t BBUICEInitializer::overridePersonalizationParameters(BBUFeedback **this, BBUPersonalizationParameters *a2, const __CFDictionary *a3)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  BBUFeedback::handleComment(this[1], "Overriding with preflight information:");
  if (CFDictionaryGetValueIfPresent(a3, @"ChipID", &value))
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v7 = value;
      v8 = operator new(0x10uLL);
      *v8 = &unk_1F5F066F0;
      v8[1] = v7;
      CFRetain(v7);
      v9 = *(a2 + 2);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(a2 + 2) = v8;
      v10 = this[1];
      v11 = (*(*v8 + 24))(v8);
      v12 = (*(*v8 + 24))(v8);
      BBUFeedback::handleComment(v10, "   ChipID: %u (0x%08x)", v11, v12);
    }
  }

  if (!CFDictionaryGetValueIfPresent(a3, @"ChipSerialNo", &value))
  {
    goto LABEL_12;
  }

  v13 = CFGetTypeID(value);
  if (v13 != CFDataGetTypeID())
  {
    goto LABEL_12;
  }

  v14 = value;
  v15 = operator new(0x10uLL);
  *v15 = &unk_1F5F06690;
  v15[1] = v14;
  CFRetain(v14);
  (*(*a2 + 16))(a2, v15);
  v16 = this[1];
  (*(*v15 + 24))(__p, v15);
  v17 = v31 >= 0 ? __p : __p[0];
  BBUFeedback::handleComment(v16, "   ChipSerialNo: %s", v17);
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_12:
    if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
    {
      goto LABEL_20;
    }
  }

  v18 = CFGetTypeID(value);
  if (v18 == CFDataGetTypeID())
  {
    v19 = value;
    v20 = operator new(0x10uLL);
    *v20 = &unk_1F5F06780;
    v20[1] = v19;
    CFRetain(v19);
    (*(*a2 + 24))(a2, v20);
    v21 = this[1];
    (*(*v20 + 24))(__p, v20);
    v22 = v31 >= 0 ? __p : __p[0];
    BBUFeedback::handleComment(v21, "   CertHash: %s", v22);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_20:
  if (CFDictionaryGetValueIfPresent(a3, @"Nonce", &value))
  {
    v23 = CFGetTypeID(value);
    if (v23 == CFDataGetTypeID())
    {
      v24 = value;
      v25 = operator new(0x10uLL);
      *v25 = &unk_1F5F06660;
      v25[1] = v24;
      CFRetain(v24);
      v26 = *(a2 + 1);
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      *(a2 + 1) = v25;
      v27 = this[1];
      (*(*v25 + 24))(__p, v25);
      if (v31 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      BBUFeedback::handleComment(v27, "   Nonce: %s", v28);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return 0;
}

void sub_1E537489C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEInitializer::gatherProvisioningParameters(BBUFeedback **a1, capabilities::euicc *a2, uint64_t a3)
{
  v6 = (*(*a1 + 31))(a1);
  if (!v6)
  {
    v6 = (*(*a1 + 32))(a1, a2, a3);
  }

  eUICC::getEID(a2, a3, a1[1]);
  return v6;
}

uint64_t BBUICEInitializer::getProvisioningStatus(BBUFeedback **a1, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *a4 = 1;
  if ((*(*a1 + 26))(a1, a2, a3, 0))
  {
    result = 0;
    *a5 = 0;
    return result;
  }

  v10 = *(a3 + 48);
  if (!v10)
  {
    return 3;
  }

  v11 = (*(*v10 + 24))(v10);
  v12 = v11;
  v13 = v11 == 1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v15 = 0;
        v14 = "Ignoring ART mismatch";
        goto LABEL_14;
      }

LABEL_13:
      v15 = 0;
      v14 = "bringup";
      goto LABEL_14;
    }

LABEL_12:
    v15 = v11 != 2;
    v14 = "mature";
    goto LABEL_14;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  if (v11 != 1)
  {
    goto LABEL_13;
  }

  *a4 = 0;
  v14 = "mature";
  v15 = 1;
LABEL_14:
  *a5 = v15;
  BBUFeedback::handleComment(a1[1], v14);
  v16 = a1[1];
  StateAsString = ETLProvisionGetStateAsString();
  BBUFeedback::handleComment(v16, "Provisioning state %s(%u), mismatched %u", StateAsString, v12, v13);
  return 0;
}

uint64_t BBUICEInitializer::gatherManifestInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  memset(v51, 0, 144);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v43 = 0u;
  v5 = (a1 + 8);
  BBUFeedback::handleComment(*(a1 + 8), "Getting manifest information from BB");
  IceAriGetContext();
  v6 = KTLGetManifestStatus();
  BBUFeedback::handleComment(*v5, "Manifest status: \n\t\t\t  status             : %u\n \t\t\t  provision_status   : %u\n \t\t\t  fatp_cal_status    : %u\n \t\t\t  calibration_status : %u\n \t\t\t  skey_hash length   : %u", LODWORD(v43[0]), WORD2(v43[0]), HIWORD(v43[0]), LOWORD(v43[1]), WORD1(v43[1]));
  memset(__p, 170, 24);
  ctu::hex((v43 | 0xC), *(v43 | 0xA));
  v7 = *(v43 | 0xA);
  if (*(v43 | 0xA))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v8 + v7;
      if (v10 >= 16)
      {
        v10 = 16;
      }

      ctu::hex(((v43 | 0xC) + v9), v10);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v41;
      __p[2] = v41[2];
      if (SHIBYTE(v41[2]) >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = v41[0];
      }

      BBUFeedback::handleComment(*(a1 + 8), "  skey_hash    [0x%02x]: %s", v9, v11);
      v9 += 16;
      v7 = WORD1(v43[1]);
      v8 -= 16;
    }

    while (v9 < WORD1(v43[1]));
  }

  memset(v41, 170, sizeof(v41));
  ctu::hex((&v51[3] + 2), LOWORD(v51[3]));
  BBUFeedback::handleComment(*(a1 + 8), "  ckey_hash length   : %u", LOWORD(v51[3]));
  v12 = v41;
  if (SHIBYTE(v41[2]) < 0)
  {
    v12 = v41[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "  ckey_hash          : %s", v12);
  if (!v6)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to gather manifest info.");
    v15 = 63;
    if (SHIBYTE(v41[2]) < 0)
    {
      goto LABEL_52;
    }

    goto LABEL_19;
  }

  v13 = 0;
  v14 = WORD2(v43[0]) - 4;
  if (v14 > 0x3C)
  {
    goto LABEL_24;
  }

  if (((1 << (BYTE4(v43[0]) - 4)) & 0x3000004) != 0)
  {
    v13 = 2;
    goto LABEL_26;
  }

  if (((1 << (BYTE4(v43[0]) - 4)) & 0x801) != 0)
  {
    v13 = 1;
    goto LABEL_26;
  }

  if (v14 != 60)
  {
LABEL_24:
    if (WORD2(v43[0]))
    {
      v13 = 3;
    }
  }

LABEL_26:
  v18 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(v13);
  v19 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(WORD2(v43[0]));
  v20 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(LOWORD(v43[1]));
  v21 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(HIWORD(v43[0]));
  v22 = a3[6];
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  a3[6] = v18;
  v23 = a3[8];
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  a3[8] = v19;
  v24 = a3[9];
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  a3[9] = v20;
  v25 = a3[10];
  if (v25)
  {
    v25 = (*(*v25 + 8))(v25);
  }

  a3[10] = v21;
  if (WORD2(v43[0]) > 0xFu || ((1 << SBYTE4(v43[0])) & 0x8011) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "BB has no provisioning manifest");
    v15 = 0;
    if (SHIBYTE(v41[2]) < 0)
    {
      goto LABEL_52;
    }

    goto LABEL_19;
  }

  DigestType = capabilities::updater::getDigestType(v25);
  if (DigestType == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_47;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      goto LABEL_47;
    }

    v27 = (**a1)(a1);
    v31 = "SHA256 detected\n";
    goto LABEL_46;
  }

  if (DigestType != 2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 63, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Initialization/ICE/BBUICEInitializer.cpp", 0x1CBu, "Assertion failure(false && Unsupported hash digest type.)", v37, v38, v39, v40);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
  {
LABEL_40:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_47;
    }

    v27 = (**a1)(a1);
    v31 = "SHA384 detected\n";
LABEL_46:
    _BBULog(4, 0, v27, "", v31, v28, v29, v30, v40);
  }

LABEL_47:
  v32 = WORD1(v43[1]);
  v33 = operator new(0x10uLL);
  *v33 = &unk_1F5F06750;
  v33[1] = 0;
  v33[1] = CFDataCreate(*MEMORY[0x1E695E480], (v43 | 0xC), v32);
  v34 = a3[7];
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v15 = 0;
  a3[7] = v33;
  if (SHIBYTE(v41[2]) < 0)
  {
LABEL_52:
    operator delete(v41[0]);
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_53;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_53:
    operator delete(__p[0]);
    v35 = *MEMORY[0x1E69E9840];
    return v15;
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1E5375100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v25);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::pingAndCheckForResponse(uint64_t a1)
{
  v2 = TelephonyUtilSystemMachTime();
  while (1)
  {
    IceAriGetContext();
    v3 = KTLPing();
    BBUFeedback::handleComment(*(a1 + 8), "ping returned %d, psReady %u", v3, 0);
    if (v3)
    {
      break;
    }

    BBUFeedback::handleComment(*(a1 + 8), "Retrying ping\n");
    usleep(0x7A120u);
    if ((TelephonyUtilSystemMachTime() - v2) >= 0x5DD)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Timeout on ping attemps\n");
      return 46;
    }
  }

  BBUFeedback::handleComment(*(a1 + 8), "ping success but PS Ready false, treating as not ready and sleeping 1s");
  usleep(0xF4240u);
  return 6;
}

void sub_1E5375344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEInitializer::restoreNVItems(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to Factory defaults");
      IceAriGetContext();
      if (KTLBspSetNvItemsToState())
      {
        return 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to Shipping defaults");
      IceAriGetContext();
      if (KTLBspSetNvItemsToState())
      {
        return 0;
      }
    }

LABEL_15:
    BBUFeedback::handleComment(*(a1 + 8), "Failed to restore NV items to state: %d", a3);
    return 58;
  }

  if (a3 == 4)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to FATP defaults");
    IceAriGetContext();
    if (KTLBspSetNvItemsToState())
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (a3 == 5)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to OQC defaults");
    IceAriGetContext();
    if (KTLBspSetNvItemsToState())
    {
      return 0;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t BBUICEInitializer::fusingCheck(uint64_t a1)
{
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Fusing check");
  IceAriGetContext();
  FusingState = KTLSecGetFusingState();
  if (FusingState)
  {
    capabilities::updater::shouldAllowUnfused(FusingState);
  }

  (*(**(a1 + 8) + 24))(*(a1 + 8), 24);
  BBUFeedback::handleComment(*(a1 + 8), "Fusing state: %d", 0);
  BBUFeedback::handleComment(*(a1 + 8), "Failed fusing check.");
  return 24;
}

uint64_t BBUICEInitializer::updateIMEISvn(uint64_t a1, uint64_t a2, unsigned int a3)
{
  BBUFeedback::handleComment(*(a1 + 8), "IMEI-SVN Check and Update: %d", a3);
  if (a3 == -1)
  {
    return 0;
  }

  if (a3 > 0x62)
  {
    return 2;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v6 = (**a1)(a1);
    _BBULog(20, 0, v6, "", "Getting current SVN\n", v7, v8, v9, v38);
  }

LABEL_8:
  IceAriGetContext();
  Svn = KTLCpsGetSvn();
  BBUFeedback::handleComment(*(a1 + 8), "Current SVN: %d", 170);
  if (!Svn)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v17 = (**a1)(a1);
      _BBULog(20, 0, v17, "", "Trying to set SVN\n", v18, v19, v20, v39);
    }

LABEL_18:
    IceAriGetContext();
    v21 = KTLCpsSetSvn();
    if (gBBULogMaskGet(void)::once != -1)
    {
      v36 = v21;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v21 = v36;
    }

    v22 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
    if (v21)
    {
      if (v22)
      {
        v23 = (**a1)(a1);
        _BBULog(20, 0, v23, "", "SVN set: %d\n", v24, v25, v26, a3);
      }

      return 0;
    }

    goto LABEL_32;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
  if (a3 == 170)
  {
    if (v11)
    {
      v12 = (**a1)(a1);
      v16 = "No need to update SVN\n";
LABEL_30:
      _BBULog(20, 0, v12, "", v16, v13, v14, v15, v39);
      return 0;
    }

    return 0;
  }

  if (v11)
  {
    v27 = (**a1)(a1);
    _BBULog(20, 0, v27, "", "Trying to set new SVN\n", v28, v29, v30, v39);
  }

  IceAriGetContext();
  v31 = KTLCpsSetSvn();
  if (gBBULogMaskGet(void)::once != -1)
  {
    v37 = v31;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v31 = v37;
  }

  v22 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
  if (v31)
  {
    if (v22)
    {
      v12 = (**a1)(a1);
      v16 = "SVN changed from %d to %d\n";
      v39 = -86;
      goto LABEL_30;
    }

    return 0;
  }

LABEL_32:
  if (v22)
  {
    v32 = (**a1)(a1);
    _BBULog(20, 0, v32, "", "Could not set SVN\n", v33, v34, v35, v39);
  }

  return 59;
}

uint64_t BBUICEInitializer::getIMEI(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v5;
  v31 = v5;
  v28 = v5;
  v29 = v5;
  __src = v5;
  IceAriGetContext();
  v6 = KTLGetIMEI_V2();
  BBUFeedback::handleComment(*(a1 + 8), "IMEI1: %s", &__src);
  if (capabilities::updater::supportsDualIMEIProvision(v7))
  {
    BBUFeedback::handleComment(*(a1 + 8), "IMEI2: %s", &v28 + 4);
  }

  if (v6)
  {
    memset(__dst, 170, sizeof(__dst));
    v8 = (v28 - 1);
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v8 | 7) + 1;
      }

      v9 = operator new(v11);
      *&__dst[16] = v11 | 0x8000000000000000;
      *__dst = v9;
      *&__dst[8] = v8;
    }

    else
    {
      __dst[23] = v28 - 1;
      v9 = __dst;
      if (v28 == 1)
      {
LABEL_13:
        v9[v8] = 0;
        valid = KTLIsValidIMEIString();
        if (valid)
        {
          v13 = operator new(0x18uLL);
          v14 = v13;
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v13, *__dst, *&__dst[8]);
          }

          else
          {
            *&v13->__r_.__value_.__l.__data_ = *__dst;
            v13->__r_.__value_.__r.__words[2] = *&__dst[16];
          }

          valid = *a3;
          if (*a3)
          {
            if (*(valid + 23) < 0)
            {
              v15 = *a3;
              operator delete(*valid);
              valid = v15;
            }

            operator delete(valid);
          }

          *a3 = v14;
        }

        v16 = capabilities::updater::supportsDualIMEIProvision(valid);
        if (DWORD1(v29))
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if (v17 != 1)
        {
          goto LABEL_44;
        }

        v18 = (DWORD1(v29) - 1);
        memset(__p, 170, sizeof(__p));
        if (DWORD1(v29) >= 0x18)
        {
          if ((v18 | 7) == 0x17)
          {
            v20 = 25;
          }

          else
          {
            v20 = (v18 | 7) + 1;
          }

          v19 = operator new(v20);
          __p[1] = v18;
          __p[2] = (v20 | 0x8000000000000000);
          __p[0] = v19;
        }

        else
        {
          HIBYTE(__p[2]) = BYTE4(v29) - 1;
          v19 = __p;
          if (DWORD1(v29) == 1)
          {
LABEL_34:
            *(v19 + v18) = 0;
            if (KTLIsValidIMEIString())
            {
              v21 = operator new(0x18uLL);
              v22 = v21;
              if (SHIBYTE(__p[2]) < 0)
              {
                std::string::__init_copy_ctor_external(v21, __p[0], __p[1]);
              }

              else
              {
                *&v21->__r_.__value_.__l.__data_ = *__p;
                v21->__r_.__value_.__r.__words[2] = __p[2];
              }

              v23 = a3[1];
              if (v23)
              {
                if (*(v23 + 23) < 0)
                {
                  operator delete(*v23);
                }

                operator delete(v23);
              }

              a3[1] = v22;
            }

            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((__dst[23] & 0x80000000) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }

LABEL_44:
            if ((__dst[23] & 0x80000000) == 0)
            {
LABEL_46:
              result = 0;
              goto LABEL_47;
            }

LABEL_45:
            operator delete(*__dst);
            goto LABEL_46;
          }
        }

        memcpy(v19, &v28 + 4, v18);
        goto LABEL_34;
      }
    }

    memcpy(v9, &__src, v8);
    goto LABEL_13;
  }

  BBUFeedback::handleComment(*(a1 + 8), "Failed to get IMEI.");
  result = 30;
LABEL_47:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5375CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v22);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::getMEID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0uLL;
  IceAriGetContext();
  v5 = KTLGetMEID();
  BBUFeedback::handleComment(*(a1 + 8), "MEID: %s", &v12);
  if (v5)
  {
    __p[0] = v12;
    *(__p + 6) = *(&v12 + 6);
    HIWORD(__p[1]) = -22016;
    if (KTLIsValidMEIDString())
    {
      v6 = operator new(0x18uLL);
      *v6 = *__p;
      v6[2] = 0xEAAAAAAAAAAAAAALL;
      v8 = *(a3 + 16);
      if (v8)
      {
        if (*(v8 + 23) < 0)
        {
          v9 = *(a3 + 16);
          operator delete(*v8);
          v8 = v9;
        }

        operator delete(v8);
      }

      *(a3 + 16) = v6;
    }

    result = 0;
  }

  else
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get MEID.");
    result = 29;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5375EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::performNVSync(uint64_t a1, uint64_t a2, int a3, int a4)
{
  __src[47] = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__src[41] = v8;
  *&__src[43] = v8;
  *&__src[37] = v8;
  *&__src[39] = v8;
  *&__src[33] = v8;
  *&__src[35] = v8;
  *&__src[31] = v8;
  *&__src[29] = v8;
  *&__src[27] = v8;
  *&__src[25] = v8;
  *&__src[23] = v8;
  *&__src[21] = v8;
  *&__src[19] = v8;
  *&__src[17] = v8;
  *&__src[15] = v8;
  *&__src[13] = v8;
  *&__src[11] = v8;
  *&__src[9] = v8;
  *&__src[7] = v8;
  *&__src[5] = v8;
  *&__src[3] = v8;
  *&__src[1] = v8;
  __src[45] = 0xAAAAAAAAAAAAAAAALL;
  __src[0] = 0;
  BBUFeedback::handleComment(*(a1 + 8), "Performing FS sync");
  memset(__p, 170, 24);
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v9 = off_1ED944170;
  if (!off_1ED944170)
  {
    v10 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v10);
    v11 = operator new(0x20uLL);
    *v11 = &unk_1F5F05A00;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = v10;
    v12 = off_1ED944178;
    off_1ED944170 = v10;
    off_1ED944178 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_1ED944170;
  }

  v13 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v9, __p);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (__p[23] >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = *__p;
    }

    if (v20)
    {
      goto LABEL_14;
    }

LABEL_22:
    _BBUFSDebugPrint("BBUFSServerParametersInit", "invalid parameters specified: parameters = %p, destination = %s\n", v14, v15, v16, v17, v18, v19, __src);
    goto LABEL_23;
  }

  if (__p[23] >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = *__p;
  }

  if (!v20)
  {
    goto LABEL_22;
  }

LABEL_14:
  memset(__src, 0, 368);
  v21 = strnlen(v20, 0x100uLL);
  v22 = TelephonyUtilStrlcpy();
  if (v22 == v21 && (v22 + 1) <= 0x100)
  {
    v29 = 0;
    __src[45] = 0;
    v30 = 1;
    goto LABEL_27;
  }

  _BBUFSDebugPrint("BBUFSServerParametersInit", "required path length = %zu, copied = %zu, max length = %zu\n", v23, v24, v25, v26, v27, v28, v21 + 1);
  __src[45] = 0;
LABEL_23:
  if (gBBULogMaskGet(void)::once == -1)
  {
    v30 = 0;
    v29 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v30 = 0;
    v29 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_27;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v31 = (**a1)(a1);
    _BBULog(4, 0, v31, "", "Failed preparing fs sync parameters\n", v32, v33, v34, v78);
    v30 = 0;
  }

LABEL_27:
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v35 = *(a2 + 48);
  *&__src[5] = *(a2 + 32);
  *&__src[7] = v35;
  *&__src[9] = *(a2 + 64);
  __src[11] = *(a2 + 80);
  v36 = *(a2 + 16);
  *&__src[1] = *a2;
  *&__src[3] = v36;
  __src[12] = IceAriGetContext();
  if ((v30 & 1) == 0)
  {
LABEL_32:
    if (v29 || !a3)
    {
      goto LABEL_36;
    }

    if (sBBUFSServerSetConfig)
    {
      if (sBBUFSServerSetConfig(a1 + 48, "ForceSync", 0xAAAAAAAA00000001))
      {
LABEL_36:
        if (!v29 && a4)
        {
          if (!sBBUFSServerSetConfig)
          {
            _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n", v37, v38, v39, v40, v41, v42, v78);
LABEL_58:
            BBUFeedback::handleComment(*(a1 + 8), "Failed setting config '%s' to '%d'\n", "ShutdownSync", 1);
            goto LABEL_70;
          }

          if ((sBBUFSServerSetConfig(a1 + 48, "ShutdownSync", 0xAAAAAAAA00000001) & 1) == 0)
          {
            goto LABEL_58;
          }

LABEL_46:
          if (sBBUFSServerSetConfig)
          {
            if (sBBUFSServerSetConfig(a1 + 48, "ARICtxId", 0xAAAAAAAA00000000))
            {
              if (sBBUFSServerStart)
              {
                if (sBBUFSServerStart(a1 + 48))
                {
                  if (sBBUFSServerFlush)
                  {
                    v65 = sBBUFSServerFlush(a1 + 48);
                    v72 = v65;
                    if ((*(a1 + 416) & 1) == 0)
                    {
                      fwrite("file server stopped\n", 0x14uLL, 1uLL, *MEMORY[0x1E69E9848]);
                      if (v72)
                      {
LABEL_73:
                        v29 = 0;
                        goto LABEL_71;
                      }

LABEL_69:
                      BBUFeedback::handleComment(*(a1 + 8), "Failed FS flush\n");
                      goto LABEL_70;
                    }

                    if (v65)
                    {
                      if (sBBUFSServerStop)
                      {
                        sBBUFSServerStop(a1 + 48);
                      }

                      else
                      {
                        _BBUFSDebugPrint("BBUFSServerStop", "sBBUFSServerStop function not initialized\n", v66, v67, v68, v69, v70, v71, v78);
                      }

                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    _BBUFSDebugPrint("BBUFSServerFlush", "sBBUFSServerFlush function not initialized\n", v59, v60, v61, v62, v63, v64, v78);
                    if ((*(a1 + 416) & 1) == 0)
                    {
                      v73 = *MEMORY[0x1E69E9848];
                      v74 = "file server stopped\n";
                      v75 = 20;
                      goto LABEL_68;
                    }
                  }

                  v73 = *MEMORY[0x1E69E9848];
                  v74 = "filesystem flush operation failed\n";
                  v75 = 34;
LABEL_68:
                  fwrite(v74, v75, 1uLL, v73);
                  goto LABEL_69;
                }
              }

              else
              {
                _BBUFSDebugPrint("BBUFSServerStart", "sBBUFSServerStart function not initialized\n", v53, v54, v55, v56, v57, v58, v78);
              }

              BBUFeedback::handleComment(*(a1 + 8), "Failed starting file server");
              goto LABEL_70;
            }
          }

          else
          {
            _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n", v37, v38, v39, v40, v41, v42, v78);
          }

          BBUFeedback::handleComment(*(a1 + 8), "Failed setting config '%s' to '%d'", "ARICtxId", 0);
          goto LABEL_70;
        }

        if (!v29)
        {
          goto LABEL_46;
        }

        goto LABEL_71;
      }
    }

    else
    {
      _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n", v37, v38, v39, v40, v41, v42, v78);
    }

    BBUFeedback::handleComment(*(a1 + 8), "Failed setting config '%s' to '%d'\n", "ForceSync", 1);
LABEL_70:
    v29 = 61;
    goto LABEL_71;
  }

  memcpy(__p, __src, sizeof(__p));
  if (BBUFSServerCreate((a1 + 48), __p, v43, v44, v45, v46, v47, v48))
  {
    v29 = 0;
    goto LABEL_32;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v29 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v29 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_71;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v49 = (**a1)(a1);
    _BBULog(4, 0, v49, "", "Failed creating file server\n", v50, v51, v52, v78);
  }

LABEL_71:
  v76 = *MEMORY[0x1E69E9840];
  return v29;
}

void sub_1E537663C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char **a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](&a14);
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::queryChipInfoBooted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  memset(v39, 170, 24);
  memset(v34, 0, sizeof(v34));
  v35 = 0u;
  BBUFeedback::handleComment(*(a1 + 8), "Querying chip info from booted baseband");
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(*(a1 + 8), "missing parameter");
    result = 2;
    v29 = *MEMORY[0x1E69E9840];
    return result;
  }

  v38 = -21846;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *bytes = v6;
  v37 = v6;
  IceAriGetContext();
  if ((KTLSecGetSNUM() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading snum from booted baseband over KTL");
LABEL_40:
    result = 18;
    v30 = *MEMORY[0x1E69E9840];
    return result;
  }

  IceAriGetContext();
  if ((KTLSecGetChipId() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading chipid from booted baseband over KTL");
    goto LABEL_40;
  }

  IceAriGetContext();
  if ((KTLSecGetPkHash() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading pkhash from booted baseband over KTL");
    goto LABEL_40;
  }

  v7 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v39, (8 * LOWORD(v39[2])));
  (*(*a3 + 16))(a3, v7);
  v8 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(v34[0]);
  v9 = *(a3 + 16);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a3 + 16) = v8;
  v10 = v38;
  v11 = operator new(0x10uLL);
  *v11 = &unk_1F5F06780;
  v11[1] = 0;
  v11[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v10);
  (*(*a3 + 24))(a3, v11);
  if (!v7 || !v8)
  {
    goto LABEL_20;
  }

  v12 = *(a1 + 8);
  (*(*v7 + 24))(__p, v7);
  if (v33 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_15;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_15:
  v14 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
  v15 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  v16 = (*(*v8 + 24))(v8);
  if ((v14 | v15))
  {
    v17 = v13;
  }

  else
  {
    v17 = "<< SNUM >>";
  }

  BBUFeedback::handleComment(v12, "   SNUM: 0x%s / CHIPID: 0x%08x", v17, v16);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  v18 = *(a1 + 8);
  (*(*v11 + 24))(__p, v11);
  if (v33 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  BBUFeedback::handleComment(v18, "   PUBLIC_KEY_HASH: 0x%s", v19);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *(a1 + 8);
  v20 = (a1 + 8);
  v22 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v21, "   CertID: %u", v22);
  v25 = *&v34[1] == *bytes && *&v34[3] == *&bytes[8] && v35 == v37 && *(&v35 + 1) == *(&v37 + 1);
  v26 = *v20;
  if (v25)
  {
    BBUFeedback::handleComment(v26, "   Detected as unfused BB");
    result = 0;
    v28 = 1;
  }

  else
  {
    BBUFeedback::handleComment(v26, "   Detected as fused BB\n");
    result = 0;
    v28 = 3;
  }

  *(a3 + 88) = v28;
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5376B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_45()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_98()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t DaleCoredump::create@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  v5 = operator new(0xD8uLL);
  v19 = &unk_1F5F03338;
  LOBYTE(v20) = 0;
  v22 = 0;
  v6 = *(a1 + 32);
  if (v6 == 1)
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v22 = 1;
    LOBYTE(v23) = 0;
    v25 = 0;
    v7 = *(a1 + 64);
    if (v7 != 1)
    {
LABEL_3:
      LOBYTE(v26) = 0;
      v28 = 0;
      v8 = *(a1 + 96);
      if (v8 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    v25 = 0;
    v7 = *(a1 + 64);
    if (v7 != 1)
    {
      goto LABEL_3;
    }
  }

  v23 = *(a1 + 40);
  v24 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v25 = 1;
  LOBYTE(v26) = 0;
  v28 = 0;
  v8 = *(a1 + 96);
  if (v8 != 1)
  {
LABEL_4:
    LOBYTE(v29) = 0;
    v31 = 0;
    v9 = *(a1 + 128);
    if (v9 != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v26 = *(a1 + 72);
  v27 = *(a1 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v28 = 1;
  LOBYTE(v29) = 0;
  v31 = 0;
  v9 = *(a1 + 128);
  if (v9 != 1)
  {
LABEL_5:
    LOBYTE(v32) = 0;
    v34 = 0;
    v10 = *(a1 + 152);
    if (v10 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  v29 = *(a1 + 104);
  v30 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v31 = 1;
  LOBYTE(v32) = 0;
  v34 = 0;
  v10 = *(a1 + 152);
  if (v10 == 1)
  {
LABEL_6:
    v4 = *(a1 + 144);
    v32 = *(a1 + 136);
    v33 = v4;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    v34 = 1;
  }

LABEL_7:
  v11 = *(a1 + 160);
  v12 = *(a1 + 176);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v35 = v11;
  v36 = v12;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13 = *(a1 + 192);
  v14 = *(a1 + 200);
  v37 = v13;
  v38 = v14;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *v5 = &unk_1F5F064A8;
  *(v5 + 1) = &unk_1F5F03338;
  v5[16] = 0;
  v5[40] = 0;
  if (v6)
  {
    *(v5 + 1) = v20;
    *(v5 + 4) = v21;
    v21 = 0;
    v20 = 0uLL;
    v5[40] = 1;
    v5[48] = 0;
    v15 = v5 + 48;
    v5[72] = 0;
    if (!v7)
    {
LABEL_9:
      v5[80] = 0;
      v16 = v5 + 80;
      v5[104] = 0;
      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5[48] = 0;
    v15 = v5 + 48;
    v5[72] = 0;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  *v15 = v23;
  *(v15 + 2) = v24;
  v24 = 0;
  v23 = 0uLL;
  v5[72] = 1;
  v5[80] = 0;
  v16 = v5 + 80;
  v5[104] = 0;
  if (!v8)
  {
LABEL_10:
    v5[112] = 0;
    v17 = v5 + 112;
    v5[136] = 0;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *v16 = v26;
  *(v16 + 2) = v27;
  v27 = 0;
  v26 = 0uLL;
  v5[104] = 1;
  v5[112] = 0;
  v17 = v5 + 112;
  v5[136] = 0;
  if (!v9)
  {
LABEL_11:
    v5[144] = 0;
    v5[160] = 0;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  *v17 = v29;
  *(v17 + 2) = v30;
  v30 = 0;
  v29 = 0uLL;
  v5[136] = 1;
  v5[144] = 0;
  v5[160] = 0;
  if (v10)
  {
LABEL_12:
    *(v5 + 18) = v32;
    *(v5 + 19) = v4;
    v32 = 0;
    v33 = 0;
    v5[160] = 1;
  }

LABEL_13:
  v35 = 0uLL;
  *(v5 + 184) = v12;
  *(v5 + 168) = v11;
  v36 = 0uLL;
  *(v5 + 25) = v13;
  *(v5 + 26) = v14;
  v37 = 0;
  v38 = 0;
  BasebandCoredumpParams::~BasebandCoredumpParams(&v19);
  result = (*(*v5 + 40))(v5);
  if (result)
  {
    *a2 = v5;
  }

  else
  {
    ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage();
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_1E5376FE4(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleCoredump::init(DaleCoredump *this)
{
  if (*(this + 25))
  {
    return 1;
  }

  if (*(this + 136))
  {
    return 1;
  }

  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleCoredump::collectExceptionInfo(DaleCoredump *this, char a2)
{
  v229 = *MEMORY[0x1E69E9840];
  v197 = 0;
  v198 = 0;
  v195 = 0;
  v196 = 0;
  v193 = 0;
  v194 = 0;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v4 = *(this + 25);
  if (!v4)
  {
    memset(&block, 170, sizeof(block));
    if (*(this + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&block, *(this + 14), *(this + 15));
    }

    else
    {
      block = *(this + 112);
    }

    if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_block = &block;
    }

    else
    {
      p_block = block.__r_.__value_.__r.__words[0];
    }

    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_block, 0x8000100u);
    v8 = v7;
    v207.__r_.__value_.__r.__words[0] = v7;
    if (v7)
    {
      v9 = ACFUDiagnostics::create(v7, 0);
      v4 = v204.__r_.__value_.__r.__words[0];
      v10 = v204.__r_.__value_.__r.__words[0] != 0;
      if (v204.__r_.__value_.__r.__words[0])
      {
        v5 = operator new(0x20uLL);
        v5->__vftable = &unk_1F5F03AE8;
        v5->__shared_owners_ = 0;
        v5->__shared_weak_owners_ = 0;
        v5[1].__vftable = v4;
        v197 = v4;
        v198 = v5;
      }

      else
      {
        v197 = 0;
        v198 = 0;
        ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage();
        v5 = 0;
      }

      CFRelease(v8);
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (v10)
        {
          goto LABEL_17;
        }

        goto LABEL_376;
      }
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v10 = 0;
      v4 = 0;
      v5 = 0;
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    operator delete(block.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_376:
    v15 = 0;
LABEL_377:
    v157 = 0;
    v158 = v190;
    if (v190)
    {
      goto LABEL_337;
    }

    goto LABEL_338;
  }

  v5 = *(this + 26);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v197 = v4;
  v198 = v5;
LABEL_17:
  v11 = *(this + 23);
  if (!v11)
  {
    v184.__r_.__value_.__s.__data_[0] = 0;
    v185 = 0;
    if (*(this + 40) == 1)
    {
      if (*(this + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v184, *(this + 2), *(this + 3));
      }

      else
      {
        v184 = *(this + 16);
      }

      v185 = 1;
    }

    v186.__r_.__value_.__s.__data_[0] = 0;
    v187 = 0;
    if (*(this + 72) == 1)
    {
      if (*(this + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v186, *(this + 6), *(this + 7));
      }

      else
      {
        v186 = *(this + 2);
      }

      v187 = 1;
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    v189 = 0;
    if (*(this + 104) == 1)
    {
      if (*(this + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 10), *(this + 11));
      }

      else
      {
        __p = *(this + 80);
      }

      v189 = 1;
    }

    DaleFirmware_Coredump::create(&v184, &block);
    v16 = block.__r_.__value_.__r.__words[0];
    if (block.__r_.__value_.__r.__words[0])
    {
      v17 = operator new(0x20uLL);
      *v17 = &unk_1F5F06500;
      *(v17 + 1) = 0;
      *(v17 + 2) = 0;
      *(v17 + 3) = v16;
      v193 = v16;
      v194 = v17;
      block.__r_.__value_.__r.__words[0] = 0;
      if ((v189 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v17 = 0;
      v193 = 0;
      v194 = 0;
      block.__r_.__value_.__r.__words[0] = 0;
      if ((v189 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_45:
    if (v187 == 1 && SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }

    if (v185 == 1 && SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v184.__r_.__value_.__l.__data_);
    }

    if (!v16)
    {
      ACFULogging::getLogInstance(v17);
      goto LABEL_26;
    }

    goto LABEL_52;
  }

  v12 = **v11;
  if (!v13)
  {
    v193 = 0;
    v194 = 0;
    ACFULogging::getLogInstance(0);
LABEL_26:
    v15 = 0;
    ACFULogging::handleMessage();
    goto LABEL_377;
  }

  v14 = *(this + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v193 = v13;
  v194 = v14;
LABEL_52:
  v18 = *(this + 21);
  if (!v18)
  {
    v182 = v4;
    v183 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v180 = 0;
    v181 = 0;
    DaleController::create(&v182, &v180, &block.__r_.__value_.__l.__data_);
    v23 = block.__r_.__value_.__r.__words[0];
    if (block.__r_.__value_.__r.__words[0])
    {
      v24 = operator new(0x20uLL);
      v24->__vftable = &unk_1F5F06550;
      v24->__shared_owners_ = 0;
      v24->__shared_weak_owners_ = 0;
      v24[1].__vftable = v23;
      block.__r_.__value_.__r.__words[0] = 0;
      v25 = v196;
      v195 = v23;
      v196 = v24;
      if (!v25)
      {
        goto LABEL_74;
      }
    }

    else
    {
      block.__r_.__value_.__r.__words[0] = 0;
      v25 = v196;
      v195 = 0;
      v196 = 0;
      if (!v25)
      {
        goto LABEL_74;
      }
    }

    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    v26 = block.__r_.__value_.__r.__words[0];
    block.__r_.__value_.__r.__words[0] = 0;
    if (v26)
    {
      (*(*v26 + 64))(v26);
    }

LABEL_74:
    v27 = v181;
    if (v181 && !atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = v183;
    if (v183 && !atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v20 = v195;
    if (!v195)
    {
      ACFULogging::getLogInstance(0);
      goto LABEL_26;
    }

    goto LABEL_81;
  }

  v19 = **v18;
  if (!v20)
  {
    v22 = v196;
    v195 = 0;
    v196 = 0;
    if (!v22)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  v21 = *(this + 22);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v196;
  v195 = v20;
  v196 = v21;
  if (v22)
  {
LABEL_64:
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v20 = v195;
  }

LABEL_67:
  if (!v20)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_26;
  }

LABEL_81:
  v29 = DaleController::warmReset(v20);
  if (v29)
  {
    ACFULogging::getLogInstance(v29);
    goto LABEL_26;
  }

  v179 = 8;
  strcpy(v178, "coredump");
  v205[0] = &unk_1F5F065A0;
  v205[1] = &v195;
  v206 = v205;
  support::misc::safe_timer::create(v178, 240000, v205, QOS_CLASS_UTILITY, &block);
  v172 = block.__r_.__value_.__r.__words[0];
  block.__r_.__value_.__r.__words[0] = 0;
  v31 = v206;
  if (v206 == v205)
  {
    v31 = (*(*v206 + 32))(v206);
    if ((v179 & 0x80000000) == 0)
    {
      goto LABEL_86;
    }
  }

  else
  {
    if (v206)
    {
      v31 = (*(*v206 + 40))(v206, v30);
    }

    if ((v179 & 0x80000000) == 0)
    {
LABEL_86:
      v32 = v172;
      if (v172)
      {
        goto LABEL_87;
      }

LABEL_91:
      ACFULogging::getLogInstance(v31);
      goto LABEL_26;
    }
  }

  operator delete(v178[0]);
  v32 = v172;
  if (!v172)
  {
    goto LABEL_91;
  }

LABEL_87:
  v33 = *(v32 + 23);
  if (v33 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v32);
  }

  else
  {
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v210 = &__block_descriptor_tmp_8_0;
    v211 = v32;
    dispatch_sync(v33, &block);
  }

  v34 = v195;
  v35 = v193;
  LOBYTE(v175) = 0;
  v177 = 0;
  if (*(this + 160) == 1)
  {
    v36 = *(this + 19);
    v175 = *(this + 18);
    v176 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v177 = 1;
  }

  v37 = DaleController::collectExceptionInfo(v34, v35, a2, &v190, &v175);
  if (v177 == 1)
  {
    v38 = v176;
    if (v176)
    {
      if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }
    }
  }

  support::misc::safe_timer::stop(v172);
  v207.__r_.__value_.__r.__words[0] = 0;
  v207.__r_.__value_.__l.__size_ = &v207;
  v207.__r_.__value_.__r.__words[2] = 0x2000000000;
  v208 = 0;
  v39 = *(v172 + 23);
  block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  block.__r_.__value_.__l.__size_ = 1107296256;
  block.__r_.__value_.__r.__words[2] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v210 = &__block_descriptor_tmp_12_0;
  *&v212 = v172;
  v211 = &v207;
  dispatch_sync(v39, &block);
  v40 = *(v207.__r_.__value_.__l.__size_ + 24);
  _Block_object_dispose(&v207, 8);
  if (v40 == 1 || v37)
  {
    v15 = v172;
    ACFULogging::getLogInstance(v41);
    ACFULogging::handleMessage();
    goto LABEL_377;
  }

  memset(&__s, 0, sizeof(__s));
  v42 = v190;
  v43 = xpc_dictionary_create(0, 0, 0);
  if (v43 || (v43 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v43) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v43);
      v44 = v43;
    }

    else
    {
      v44 = xpc_null_create();
    }
  }

  else
  {
    v44 = xpc_null_create();
    v43 = 0;
  }

  xpc_release(v43);
  v45 = xpc_array_create(0, 0);
  v46 = MEMORY[0x1E69E9E50];
  if (v45 || (v45 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v45) == v46)
    {
      xpc_retain(v45);
      v47 = v45;
    }

    else
    {
      v47 = xpc_null_create();
    }
  }

  else
  {
    v47 = xpc_null_create();
    v45 = 0;
  }

  xpc_release(v45);
  v48 = xpc_array_create(0, 0);
  if (v48 || (v48 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v48) == v46)
    {
      xpc_retain(v48);
      v49 = v48;
    }

    else
    {
      v49 = xpc_null_create();
    }
  }

  else
  {
    v49 = xpc_null_create();
    v48 = 0;
  }

  xpc_release(v48);
  v50 = xpc_array_create(0, 0);
  if (v50 || (v50 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v50) == v46)
    {
      xpc_retain(v50);
      v51 = v50;
    }

    else
    {
      v51 = xpc_null_create();
    }
  }

  else
  {
    v51 = xpc_null_create();
    v50 = 0;
  }

  xpc_release(v50);
  v171 = v44;
  if (v191 == v190 || !v42)
  {
    goto LABEL_371;
  }

  v52 = *(this + 25);
  if (!v52)
  {
    memset(&block, 170, sizeof(block));
    if (*(this + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&block, *(this + 14), *(this + 15));
    }

    else
    {
      block = *(this + 112);
    }

    v65 = SHIBYTE(block.__r_.__value_.__r.__words[2]);
    if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(block.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = block.__r_.__value_.__l.__size_;
    }

    v67 = size + 12;
    if (size + 12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v67 < 0x17)
    {
      memset(&v207, 0, sizeof(v207));
      v69 = &v207;
      *(&v207.__r_.__value_.__s + 23) = size + 12;
      if (!size)
      {
        goto LABEL_175;
      }
    }

    else
    {
      if ((v67 | 7) == 0x17)
      {
        v68 = 25;
      }

      else
      {
        v68 = (v67 | 7) + 1;
      }

      v69 = operator new(v68);
      v207.__r_.__value_.__l.__size_ = size + 12;
      v207.__r_.__value_.__r.__words[2] = v68 | 0x8000000000000000;
      v207.__r_.__value_.__r.__words[0] = v69;
    }

    if (v65 >= 0)
    {
      v70 = &block;
    }

    else
    {
      v70 = block.__r_.__value_.__r.__words[0];
    }

    v52 = memmove(v69, v70, size);
LABEL_175:
    v44 = v171;
    strcpy(v69 + size, "/report.json");
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
      __s = v207;
      if ((*(&block.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_177;
      }
    }

    else
    {
      __s = v207;
      if ((v65 & 0x80) == 0)
      {
        goto LABEL_177;
      }
    }

    operator delete(block.__r_.__value_.__l.__data_);
    if (*v42 == 67)
    {
      goto LABEL_178;
    }

LABEL_371:
    ACFULogging::getLogInstance(v52);
    ACFULogging::handleMessage();
    goto LABEL_154;
  }

  memset(&block, 0, sizeof(block));
  v204.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v53 = ACFUDiagnostics::copyDiagnosticsPath(v52);
  v55 = v53;
  v204.__r_.__value_.__r.__words[0] = v53;
  if (!v53)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_154;
  }

  v56 = ACFUCommon::stringFromCFString(&v207, v53, v54);
  block = v207;
  v57 = SHIBYTE(v207.__r_.__value_.__r.__words[2]);
  if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = v207.__r_.__value_.__l.__size_;
  }

  if (v58)
  {
    v59 = v58 + 12;
    if (v58 + 12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v59 <= 0x16)
    {
      memset(&v207, 0, sizeof(v207));
      v61 = &v207;
      *(&v207.__r_.__value_.__s + 23) = v58 + 12;
    }

    else
    {
      if ((v59 | 7) == 0x17)
      {
        v60 = 25;
      }

      else
      {
        v60 = (v59 | 7) + 1;
      }

      v61 = operator new(v60);
      v207.__r_.__value_.__l.__size_ = v58 + 12;
      v207.__r_.__value_.__r.__words[2] = v60 | 0x8000000000000000;
      v207.__r_.__value_.__r.__words[0] = v61;
    }

    if (v57 >= 0)
    {
      v62 = &block;
    }

    else
    {
      v62 = block.__r_.__value_.__r.__words[0];
    }

    memmove(v61, v62, v58);
    strcpy(v61 + v58, "/report.json");
    v44 = v171;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    __s = v207;
  }

  else
  {
    ACFULogging::getLogInstance(v56);
    ACFULogging::handleMessage();
  }

  CFRelease(v55);
  if (v57 < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
    if (!v58)
    {
      goto LABEL_154;
    }
  }

  else if (!v58)
  {
LABEL_154:
    if (v191 != v190)
    {
      v63 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v64 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = __s.__r_.__value_.__l.__size_;
      }

      if (v63)
      {
        v201[0] = 0xAAAAAAAAAAAAAAAALL;
        v201[1] = 0xAAAAAAAAAAAAAAAALL;
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v207, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v207 = __s;
        }

        support::fs::SyncFile::create(&v207, 52, 0x100000uLL, v201);
        if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v207.__r_.__value_.__l.__data_);
        }

        if (v201[0])
        {
          block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
          block.__r_.__value_.__l.__size_ = 0x40000000;
          block.__r_.__value_.__r.__words[2] = ___ZN7support2fs8SyncFile4openEv_block_invoke;
          v210 = &__block_descriptor_tmp_2;
          v211 = v201[0];
          ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(v201[0] + 1, &block);
          isOpen = support::fs::SyncFile::isOpen(v201[0]);
          if (isOpen)
          {
            support::fs::SyncFile::write(v201[0], v190, v191 - v190);
            __dst.__r_.__value_.__l.__data_ = v201[0];
            block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
            block.__r_.__value_.__l.__size_ = 0x40000000;
            block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
            v210 = &__block_descriptor_tmp_17;
            v211 = (v201[0] + 8);
            *&v212 = &__dst;
            v166 = *(v201[0] + 3);
            if (*(v201[0] + 4))
            {
              dispatch_async_and_wait(v166, &block);
            }

            else
            {
              dispatch_sync(v166, &block);
            }

            ACFULogging::getLogInstance(v167);
            p_s = &__s;
          }

          else
          {
            ACFULogging::getLogInstance(isOpen);
            p_s = (v201[0] + 40);
            v64 = *(v201[0] + 63);
          }

          if (v64 < 0)
          {
            v169 = p_s->__r_.__value_.__r.__words[0];
          }

          ACFULogging::handleMessage();
        }

        else
        {
          ACFULogging::getLogInstance(v164);
          ACFULogging::handleMessage();
        }

        v170 = v201[1];
        if (v201[1] && !atomic_fetch_add(v201[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }
      }
    }

    goto LABEL_334;
  }

LABEL_177:
  if (*v42 != 67)
  {
    goto LABEL_371;
  }

LABEL_178:
  if (v42[1] != 82 || v42[2] != 69)
  {
    goto LABEL_371;
  }

  v173 = v51;
  xarray = v47;
  v71 = 0;
  v72 = v42 + 272;
  v73 = v42;
  do
  {
    v74 = *&v72[v71];
    v207.__r_.__value_.__r.__words[2] = 6;
    *&v207.__r_.__value_.__l.__data_ = v74;
    *&v75 = 0xAAAAAAAAAAAAAAAALL;
    *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v226 = v75;
    v227 = v75;
    v224 = v75;
    v225 = v75;
    v222 = v75;
    v223 = v75;
    v220 = v75;
    v221 = v75;
    v218 = v75;
    v219 = v75;
    v216 = v75;
    v217 = v75;
    v214 = v75;
    v215 = v75;
    v212 = v75;
    v213 = v75;
    block.__r_.__value_.__r.__words[0] = &v212;
    *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
    v210 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v211 = 0;
    __src = &v212;
    v204.__r_.__value_.__r.__words[0] = 1;
    v204.__r_.__value_.__l.__size_ = &v207;
    v204.__r_.__value_.__r.__words[2] = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v204);
    v76 = block.__r_.__value_.__r.__words[2];
    if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v77 = __src;
    if (block.__r_.__value_.__r.__words[2] >= 0x17)
    {
      if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
      {
        v84 = 25;
      }

      else
      {
        v84 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
      }

      p_dst = operator new(v84);
      __dst.__r_.__value_.__l.__size_ = v76;
      __dst.__r_.__value_.__r.__words[2] = v84 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
      v42 = v73;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
      p_dst = &__dst;
      if (!block.__r_.__value_.__r.__words[2])
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        v79 = __src;
        if (__src == &v212)
        {
          goto LABEL_186;
        }

LABEL_185:
        operator delete(v79);
        goto LABEL_186;
      }
    }

    memmove(p_dst, v77, v76);
    *(p_dst + v76) = 0;
    v79 = __src;
    if (__src != &v212)
    {
      goto LABEL_185;
    }

LABEL_186:
    v80 = std::string::insert(&__dst, 0, "0x", 2uLL);
    v81 = *&v80->__r_.__value_.__l.__data_;
    v202 = v80->__r_.__value_.__r.__words[2];
    *v201 = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    if (v202 >= 0)
    {
      v82 = v201;
    }

    else
    {
      v82 = v201[0];
    }

    v83 = xpc_string_create(v82);
    if (!v83)
    {
      v83 = xpc_null_create();
    }

    xpc_array_append_value(xarray, v83);
    xpc_release(v83);
    if (SHIBYTE(v202) < 0)
    {
      operator delete(v201[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_193:
        if (!*&v72[v71])
        {
          break;
        }

        goto LABEL_203;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_193;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!*&v72[v71])
    {
      break;
    }

LABEL_203:
    v85 = v71 == 60;
    v71 += 4;
  }

  while (!v85);
  v86 = 336;
  do
  {
    v87 = *&v42[v86];
    v207.__r_.__value_.__r.__words[2] = 6;
    *&v207.__r_.__value_.__l.__data_ = v87;
    *&v88 = 0xAAAAAAAAAAAAAAAALL;
    *(&v88 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v226 = v88;
    v227 = v88;
    v224 = v88;
    v225 = v88;
    v222 = v88;
    v223 = v88;
    v220 = v88;
    v221 = v88;
    v218 = v88;
    v219 = v88;
    v216 = v88;
    v217 = v88;
    v214 = v88;
    v215 = v88;
    v212 = v88;
    v213 = v88;
    block.__r_.__value_.__r.__words[0] = &v212;
    *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
    v210 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v211 = 0;
    __src = &v212;
    v204.__r_.__value_.__r.__words[0] = 1;
    v204.__r_.__value_.__l.__size_ = &v207;
    v204.__r_.__value_.__r.__words[2] = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v204);
    v89 = block.__r_.__value_.__r.__words[2];
    if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v90 = __src;
    if (block.__r_.__value_.__r.__words[2] >= 0x17)
    {
      if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
      {
        v97 = 25;
      }

      else
      {
        v97 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
      }

      v91 = operator new(v97);
      __dst.__r_.__value_.__l.__size_ = v89;
      __dst.__r_.__value_.__r.__words[2] = v97 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v91;
      v42 = v73;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
      v91 = &__dst;
      if (!block.__r_.__value_.__r.__words[2])
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        v92 = __src;
        if (__src == &v212)
        {
          goto LABEL_211;
        }

LABEL_210:
        operator delete(v92);
        goto LABEL_211;
      }
    }

    memmove(v91, v90, v89);
    *(v91 + v89) = 0;
    v92 = __src;
    if (__src != &v212)
    {
      goto LABEL_210;
    }

LABEL_211:
    v93 = std::string::insert(&__dst, 0, "0x", 2uLL);
    v94 = *&v93->__r_.__value_.__l.__data_;
    v202 = v93->__r_.__value_.__r.__words[2];
    *v201 = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    if (v202 >= 0)
    {
      v95 = v201;
    }

    else
    {
      v95 = v201[0];
    }

    v96 = xpc_string_create(v95);
    if (!v96)
    {
      v96 = xpc_null_create();
    }

    xpc_array_append_value(v49, v96);
    xpc_release(v96);
    if (SHIBYTE(v202) < 0)
    {
      operator delete(v201[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_218:
        if (!*&v42[v86])
        {
          break;
        }

        goto LABEL_228;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_218;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!*&v42[v86])
    {
      break;
    }

LABEL_228:
    v85 = v86 == 972;
    v86 += 4;
  }

  while (!v85);
  v98 = 0;
  v99 = v42 + 976;
  do
  {
    v100 = *&v99[v98];
    v207.__r_.__value_.__r.__words[2] = 6;
    *&v207.__r_.__value_.__l.__data_ = v100;
    *&v101 = 0xAAAAAAAAAAAAAAAALL;
    *(&v101 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v226 = v101;
    v227 = v101;
    v224 = v101;
    v225 = v101;
    v222 = v101;
    v223 = v101;
    v220 = v101;
    v221 = v101;
    v218 = v101;
    v219 = v101;
    v216 = v101;
    v217 = v101;
    v214 = v101;
    v215 = v101;
    v212 = v101;
    v213 = v101;
    block.__r_.__value_.__r.__words[0] = &v212;
    *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
    v210 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v211 = 0;
    __src = &v212;
    v204.__r_.__value_.__r.__words[0] = 1;
    v204.__r_.__value_.__l.__size_ = &v207;
    v204.__r_.__value_.__r.__words[2] = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v204);
    v102 = block.__r_.__value_.__r.__words[2];
    if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v103 = __src;
    if (block.__r_.__value_.__r.__words[2] >= 0x17)
    {
      if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
      {
        v110 = 25;
      }

      else
      {
        v110 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
      }

      v104 = operator new(v110);
      __dst.__r_.__value_.__l.__size_ = v102;
      __dst.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v104;
      v42 = v73;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
      v104 = &__dst;
      if (!block.__r_.__value_.__r.__words[2])
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        v105 = __src;
        if (__src == &v212)
        {
          goto LABEL_236;
        }

LABEL_235:
        operator delete(v105);
        goto LABEL_236;
      }
    }

    memmove(v104, v103, v102);
    *(v104 + v102) = 0;
    v105 = __src;
    if (__src != &v212)
    {
      goto LABEL_235;
    }

LABEL_236:
    v106 = std::string::insert(&__dst, 0, "0x", 2uLL);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v202 = v106->__r_.__value_.__r.__words[2];
    *v201 = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    if (v202 >= 0)
    {
      v108 = v201;
    }

    else
    {
      v108 = v201[0];
    }

    v109 = xpc_string_create(v108);
    if (!v109)
    {
      v109 = xpc_null_create();
    }

    xpc_array_append_value(v173, v109);
    xpc_release(v109);
    if (SHIBYTE(v202) < 0)
    {
      operator delete(v201[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_243:
        if (!*&v99[v98])
        {
          break;
        }

        goto LABEL_253;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_243;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!*&v99[v98])
    {
      break;
    }

LABEL_253:
    v85 = v98 == 44;
    v98 += 4;
  }

  while (!v85);
  v111 = *(v42 + 1);
  v207.__r_.__value_.__r.__words[2] = 6;
  *&v207.__r_.__value_.__l.__data_ = v111;
  *&v112 = 0xAAAAAAAAAAAAAAAALL;
  *(&v112 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v226 = v112;
  v227 = v112;
  v225 = v112;
  v224 = v112;
  v223 = v112;
  v222 = v112;
  v221 = v112;
  v220 = v112;
  v219 = v112;
  v218 = v112;
  v217 = v112;
  v216 = v112;
  v215 = v112;
  v214 = v112;
  v213 = v112;
  v212 = v112;
  block.__r_.__value_.__r.__words[0] = &v212;
  *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
  v210 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v211 = 0;
  __src = &v212;
  v204.__r_.__value_.__r.__words[0] = 1;
  v204.__r_.__value_.__l.__size_ = &v207;
  v204.__r_.__value_.__r.__words[2] = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v204);
  v113 = block.__r_.__value_.__r.__words[2];
  v44 = v171;
  v47 = xarray;
  v51 = v173;
  if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v114 = __src;
  if (block.__r_.__value_.__r.__words[2] >= 0x17)
  {
    if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
    {
      v148 = 25;
    }

    else
    {
      v148 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
    }

    v115 = operator new(v148);
    __dst.__r_.__value_.__l.__size_ = v113;
    __dst.__r_.__value_.__r.__words[2] = v148 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v115;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
    v115 = &__dst;
    if (!block.__r_.__value_.__r.__words[2])
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v116 = __src;
      if (__src != &v212)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    }
  }

  memmove(v115, v114, v113);
  *(v115 + v113) = 0;
  v116 = __src;
  if (__src != &v212)
  {
LABEL_259:
    operator delete(v116);
  }

LABEL_260:
  v117 = std::string::insert(&__dst, 0, "0x", 2uLL);
  v118 = *&v117->__r_.__value_.__l.__data_;
  v202 = v117->__r_.__value_.__r.__words[2];
  *v201 = v118;
  v117->__r_.__value_.__l.__size_ = 0;
  v117->__r_.__value_.__r.__words[2] = 0;
  v117->__r_.__value_.__r.__words[0] = 0;
  if (v202 >= 0)
  {
    v119 = v201;
  }

  else
  {
    v119 = v201[0];
  }

  v120 = xpc_string_create(v119);
  if (!v120)
  {
    v120 = xpc_null_create();
  }

  xpc_dictionary_set_value(v171, "exp_reg", v120);
  v121 = xpc_null_create();
  xpc_release(v120);
  xpc_release(v121);
  if (SHIBYTE(v202) < 0)
  {
    operator delete(v201[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_314;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_267;
    }

LABEL_314:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_267:
  v122 = *(v42 + 2);
  v207.__r_.__value_.__r.__words[2] = 6;
  *&v207.__r_.__value_.__l.__data_ = v122;
  *&v123 = 0xAAAAAAAAAAAAAAAALL;
  *(&v123 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v226 = v123;
  v227 = v123;
  v225 = v123;
  v224 = v123;
  v223 = v123;
  v222 = v123;
  v221 = v123;
  v220 = v123;
  v219 = v123;
  v218 = v123;
  v217 = v123;
  v216 = v123;
  v215 = v123;
  v214 = v123;
  v213 = v123;
  v212 = v123;
  block.__r_.__value_.__r.__words[0] = &v212;
  *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
  v210 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v211 = 0;
  __src = &v212;
  v204.__r_.__value_.__r.__words[0] = 1;
  v204.__r_.__value_.__l.__size_ = &v207;
  v204.__r_.__value_.__r.__words[2] = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v204);
  v124 = block.__r_.__value_.__r.__words[2];
  if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v125 = __src;
  if (block.__r_.__value_.__r.__words[2] >= 0x17)
  {
    if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
    {
      v149 = 25;
    }

    else
    {
      v149 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
    }

    v126 = operator new(v149);
    __dst.__r_.__value_.__l.__size_ = v124;
    __dst.__r_.__value_.__r.__words[2] = v149 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v126;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
    v126 = &__dst;
    if (!block.__r_.__value_.__r.__words[2])
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v127 = __src;
      if (__src != &v212)
      {
        goto LABEL_271;
      }

      goto LABEL_272;
    }
  }

  memmove(v126, v125, v124);
  *(v126 + v124) = 0;
  v127 = __src;
  if (__src != &v212)
  {
LABEL_271:
    operator delete(v127);
  }

LABEL_272:
  v128 = std::string::insert(&__dst, 0, "0x", 2uLL);
  v129 = *&v128->__r_.__value_.__l.__data_;
  v202 = v128->__r_.__value_.__r.__words[2];
  *v201 = v129;
  v128->__r_.__value_.__l.__size_ = 0;
  v128->__r_.__value_.__r.__words[2] = 0;
  v128->__r_.__value_.__r.__words[0] = 0;
  if (v202 >= 0)
  {
    v130 = v201;
  }

  else
  {
    v130 = v201[0];
  }

  v131 = xpc_string_create(v130);
  if (!v131)
  {
    v131 = xpc_null_create();
  }

  xpc_dictionary_set_value(v171, "rgu_reg", v131);
  v132 = xpc_null_create();
  xpc_release(v131);
  xpc_release(v132);
  if (SHIBYTE(v202) < 0)
  {
    operator delete(v201[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_316;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_316:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_279:
  v133 = *(v42 + 3);
  v207.__r_.__value_.__r.__words[2] = 6;
  *&v207.__r_.__value_.__l.__data_ = v133;
  *&v134 = 0xAAAAAAAAAAAAAAAALL;
  *(&v134 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v226 = v134;
  v227 = v134;
  v225 = v134;
  v224 = v134;
  v223 = v134;
  v222 = v134;
  v221 = v134;
  v220 = v134;
  v219 = v134;
  v218 = v134;
  v217 = v134;
  v216 = v134;
  v215 = v134;
  v214 = v134;
  v213 = v134;
  v212 = v134;
  block.__r_.__value_.__r.__words[0] = &v212;
  *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
  v210 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v211 = 0;
  __src = &v212;
  v204.__r_.__value_.__r.__words[0] = 1;
  v204.__r_.__value_.__l.__size_ = &v207;
  v204.__r_.__value_.__r.__words[2] = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v204);
  v135 = block.__r_.__value_.__r.__words[2];
  if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v136 = __src;
  if (block.__r_.__value_.__r.__words[2] >= 0x17)
  {
    if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
    {
      v150 = 25;
    }

    else
    {
      v150 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
    }

    v137 = operator new(v150);
    __dst.__r_.__value_.__l.__size_ = v135;
    __dst.__r_.__value_.__r.__words[2] = v150 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v137;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
    v137 = &__dst;
    if (!block.__r_.__value_.__r.__words[2])
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v138 = __src;
      if (__src != &v212)
      {
        goto LABEL_283;
      }

      goto LABEL_284;
    }
  }

  memmove(v137, v136, v135);
  *(v137 + v135) = 0;
  v138 = __src;
  if (__src != &v212)
  {
LABEL_283:
    operator delete(v138);
  }

LABEL_284:
  v139 = std::string::insert(&__dst, 0, "0x", 2uLL);
  v140 = *&v139->__r_.__value_.__l.__data_;
  v202 = v139->__r_.__value_.__r.__words[2];
  *v201 = v140;
  v139->__r_.__value_.__l.__size_ = 0;
  v139->__r_.__value_.__r.__words[2] = 0;
  v139->__r_.__value_.__r.__words[0] = 0;
  if (v202 >= 0)
  {
    v141 = v201;
  }

  else
  {
    v141 = v201[0];
  }

  v142 = xpc_string_create(v141);
  if (!v142)
  {
    v142 = xpc_null_create();
  }

  xpc_dictionary_set_value(v171, "lpc_reg", v142);
  v143 = xpc_null_create();
  xpc_release(v142);
  xpc_release(v143);
  if (SHIBYTE(v202) < 0)
  {
    operator delete(v201[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_318;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_291;
    }

LABEL_318:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_291:
  v144 = operator new(0x108uLL);
  memmove(v144, v42 + 16, 0x100uLL);
  v144[256] = 0;
  v145 = xpc_string_create(v144);
  if (!v145)
  {
    v145 = xpc_null_create();
  }

  xpc_dictionary_set_value(v171, "signature", v145);
  v146 = xpc_null_create();
  xpc_release(v145);
  xpc_release(v146);
  operator delete(v144);
  if (xarray)
  {
    xpc_retain(xarray);
    v147 = xarray;
  }

  else
  {
    v147 = xpc_null_create();
  }

  xpc_dictionary_set_value(v171, "stack", v147);
  v151 = xpc_null_create();
  xpc_release(v147);
  xpc_release(v151);
  if (v49)
  {
    xpc_retain(v49);
    v152 = v49;
  }

  else
  {
    v152 = xpc_null_create();
  }

  xpc_dictionary_set_value(v171, "pc_trace", v152);
  v153 = xpc_null_create();
  xpc_release(v152);
  xpc_release(v153);
  if (v173)
  {
    xpc_retain(v173);
    v154 = v173;
  }

  else
  {
    v154 = xpc_null_create();
  }

  xpc_dictionary_set_value(v171, "reserved", v154);
  v155 = xpc_null_create();
  xpc_release(v154);
  xpc_release(v155);
  object = v171;
  if (v171)
  {
    xpc_retain(v171);
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_328;
    }

LABEL_330:
    std::string::__init_copy_ctor_external(&v204, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    object = xpc_null_create();
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_330;
    }

LABEL_328:
    v204 = __s;
  }

  v156 = util::writeJSON(&object, &v204);
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  object = 0;
  if ((v156 & 1) == 0)
  {
    goto LABEL_371;
  }

LABEL_334:
  xpc_release(v51);
  xpc_release(v49);
  xpc_release(v47);
  xpc_release(v44);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v157 = 1;
  v15 = v172;
  v158 = v190;
  if (v190)
  {
LABEL_337:
    v191 = v158;
    operator delete(v158);
  }

LABEL_338:
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v159 = v194;
  if (v194 && !atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v159->__on_zero_shared)(v159);
    std::__shared_weak_count::__release_weak(v159);
  }

  v160 = v196;
  if (v196 && !atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v160->__on_zero_shared)(v160);
    std::__shared_weak_count::__release_weak(v160);
  }

  v161 = v198;
  if (v198 && !atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v161->__on_zero_shared)(v161);
    std::__shared_weak_count::__release_weak(v161);
  }

  v162 = *MEMORY[0x1E69E9840];
  return v157;
}

void sub_1E537904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _Unwind_Exception *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, char a47, uint64_t a48, char a49, uint64_t a50, xpc_object_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a66);
  if (v66 < 0)
  {
    operator delete(STACK[0x210]);
  }

  xpc_release(v69);
  xpc_release(v68);
  xpc_release(v67);
  xpc_release(a12);
  if (a64 < 0)
  {
    operator delete(a59);
    v71 = a42;
    if (a42)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v71 = a42;
    if (a42)
    {
LABEL_5:
      operator delete(v71);
      if (!a13)
      {
LABEL_10:
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a45);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a47);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a49);
        _Unwind_Resume(a1);
      }

LABEL_9:
      (*(*a13 + 8))(a13);
      goto LABEL_10;
    }
  }

  if (!a13)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1E5379590(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t DaleCoredump::collectCoredump(DaleCoredump *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();

  return DaleCoredump::collectExceptionInfo(this, 0);
}

uint64_t DaleCoredump::collectCrashReason(DaleCoredump *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();

  return DaleCoredump::collectExceptionInfo(this, 1);
}

void DaleCoredump::~DaleCoredump(DaleCoredump *this)
{
  *this = &unk_1F5F064A8;
  BasebandCoredumpParams::~BasebandCoredumpParams((this + 8));
}

{
  *this = &unk_1F5F064A8;
  BasebandCoredumpParams::~BasebandCoredumpParams((this + 8));

  operator delete(this);
}

void std::__shared_ptr_pointer<DaleFirmware_Coredump  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Coredump  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Coredump  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5395794)
  {
    if (((v2 & 0x80000001E5395794 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5395794))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5395794 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<DaleController  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DaleController  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DaleController  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5395824)
  {
    if (((v2 & 0x80000001E5395824 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5395824))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5395824 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F065A0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F065A0;
  a2[1] = v2;
  return result;
}

ACFULogging *std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::operator()(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  result = (*(***(a1 + 1) + 32))(**(a1 + 1));
  if (result)
  {
    ACFULogging::getLogInstance(result);
    return ACFULogging::handleMessage();
  }

  return result;
}

uint64_t std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12DaleCoredump20collectExceptionInfoEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12DaleCoredump20collectExceptionInfoEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12DaleCoredump20collectExceptionInfoEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12DaleCoredump20collectExceptionInfoEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
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

  if (v4 >= 0x100)
  {
    v6 = operator new(v4);
    v7 = v6;
    v8 = *(a1 + 296);
    v9 = *(a1 + 16);
    if (v9)
    {
      memmove(v6, *(a1 + 296), v9);
    }

    if (v8 != (a1 + 40))
    {
      operator delete(v8);
    }

    *(a1 + 296) = v7;
    *a1 = v7;
    *(a1 + 8) = v4;
  }
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = "{:x}";
  v28[0] = "{:x}";
  v28[1] = "";
  v29 = 0;
  v30 = 0;
  v31 = v3;
  v24 = *a2;
  v25 = a2[2];
  LOBYTE(v21.__locale_) = 0;
  v22 = 0;
  v23 = a1;
  LOBYTE(v26.__locale_) = 0;
  v27 = 0;
  v5 = "The format string terminates at a '{'";
  do
  {
    while (1)
    {
      v6 = *v4;
      if (v6 == 125)
      {
        break;
      }

      if (v6 != 123)
      {
        goto LABEL_16;
      }

      if (++v4 == "")
      {
        goto LABEL_32;
      }

      if (*v4 == 123)
      {
        goto LABEL_16;
      }

      v23 = v2;
      v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4, "", v28);
      if (v7 == "")
      {
        goto LABEL_31;
      }

      v9 = *v7;
      v33 = v9 == 58;
      if (v9 != 125)
      {
        if (v9 != 58)
        {
LABEL_31:
          v5 = "The argument index should end with a ':' or a '}'";
LABEL_32:
          std::__throw_format_error[abi:ne200100](v5);
        }

        ++v7;
      }

      v28[0] = v7;
      v32[0] = v28;
      v32[1] = &v23;
      v32[2] = &v33;
      if (v24 <= v8)
      {
        LOBYTE(v35) = 0;
      }

      else if (v24 > 0xC)
      {
        v18 = (*(&v24 + 1) + 32 * v8);
        v19 = v18[1];
        v34 = *v18;
        v35 = v19;
      }

      else
      {
        v10 = (*(&v24 + 1) + 16 * v8);
        v12 = *v10;
        v11 = v10[1];
        *&v34 = v12;
        *(&v34 + 1) = v11;
        LOBYTE(v35) = (v25 >> (5 * v8)) & 0x1F;
      }

      std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v32, &v34);
      if (v28[0] == "" || *v28[0] != 125)
      {
        v5 = "The replacement field misses a terminating '}'";
        goto LABEL_32;
      }

      v4 = (v28[0] + 1);
      v2 = v23;
      if ((v28[0] + 1) == "")
      {
        goto LABEL_25;
      }
    }

    if (++v4 == "" || *v4 != 125)
    {
      v5 = "The format string contains an invalid escape sequence";
      goto LABEL_32;
    }

LABEL_16:
    v13 = v2[4];
    if (!v13 || (v15 = *v13, v14 = v13[1], v13[1] = v14 + 1, v14 < v15))
    {
      v16 = *v2;
      v17 = v2[2];
      v2[2] = v17 + 1;
      *(v16 + v17) = v6;
      if (v2[2] == v2[1])
      {
        (v2[3])(v2, 2);
      }
    }

    ++v4;
  }

  while (v4 != "");
LABEL_25:
  if (v27 == 1)
  {
    std::locale::~locale(&v26);
    if (v22)
    {
      std::locale::~locale(&v21);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E5379D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F5F06638;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

void std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  v572[131] = *MEMORY[0x1E69E9840];
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      v571[0].__locale_ = 0;
      LODWORD(v571[1].__locale_) = -1;
      BYTE4(v571[1].__locale_) = 32;
      *(&v571[1].__locale_ + 5) = 0;
      HIBYTE(v571[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_332;
      }

      v4 = *a1;
      v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v571, *a1, 55);
      if (BYTE1(v571[0].__locale_) - 2 < 6)
      {
        *v4 = v5;
        v6 = *(a1 + 8);
        v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v571, v6);
        goto LABEL_65;
      }

      if (BYTE1(v571[0].__locale_) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      if ((v571[0].__locale_ & 0x18) != 0)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "sign");
      }

      if ((v571[0].__locale_ & 0x20) != 0)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "alternate form");
      }

      if ((v571[0].__locale_ & 7) == 4)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "zero-padding");
      }

      if (LODWORD(v571[1].__locale_) != -1)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "precision");
      }

      if ((v571[0].__locale_ & 7) == 0)
      {
        LOBYTE(v571[0].__locale_) |= 1u;
      }

      *v4 = v5;
LABEL_332:
      v6 = *(a1 + 8);
      v182 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v571, v6);
      v184 = v183;
      if ((v182 & 0x40) != 0)
      {
        if ((*(v6 + 40) & 1) == 0)
        {
          MEMORY[0x1E69272B0](v572);
          v188 = (v6 + 32);
          if (*(v6 + 40) == 1)
          {
            std::locale::operator=(v188, v572);
          }

          else
          {
            std::locale::locale(v188, v572);
            *(v6 + 40) = 1;
          }

          std::locale::~locale(v572);
        }

        std::locale::locale(v568, (v6 + 32));
        v217 = std::locale::use_facet(v568, MEMORY[0x1E69E5368]);
        std::locale::~locale(v568);
        memset(v572, 170, 24);
        v218 = v217->__vftable;
        if (v3)
        {
          (v218[2].~facet)(v572, v217);
        }

        else
        {
          (v218[2].~facet_0)(v572, v217);
        }

        if (SHIBYTE(v572[2].__locale_) >= 0)
        {
          locale = v572;
        }

        else
        {
          locale = v572[0].__locale_;
        }

        if (SHIBYTE(v572[2].__locale_) >= 0)
        {
          locale_high = HIBYTE(v572[2].__locale_);
        }

        else
        {
          locale_high = v572[1].__locale_;
        }

        v28 = *v6;
        std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, locale_high, *v6, v182, v184);
        if (SHIBYTE(v572[2].__locale_) < 0)
        {
          operator delete(v572[0].__locale_);
        }
      }

      else
      {
        v185 = v3 == 0;
        if (v3)
        {
          v186 = 4;
        }

        else
        {
          v186 = 5;
        }

        v28 = *v6;
        if (v185)
        {
          v187 = "false";
        }

        else
        {
          v187 = "true";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v187, v186, *v6, v182, v184, v186);
      }

      goto LABEL_429;
    case 2u:
      v3 = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16))
      {
        v42 = *a1;
        v43 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
        v44 = BYTE1(v572[0].__locale_);
        if (BYTE1(v572[0].__locale_) - 2 >= 6)
        {
          if (BYTE1(v572[0].__locale_) > 0x13u || ((1 << SBYTE1(v572[0].__locale_)) & 0x80401) == 0)
          {
            std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
          }

          if ((v572[0].__locale_ & 0x18) != 0)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "sign");
          }

          if ((v572[0].__locale_ & 0x20) != 0)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "alternate form");
          }

          if ((v572[0].__locale_ & 7) == 4)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "zero-padding");
          }

          if (LODWORD(v572[1].__locale_) != -1)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "precision");
          }

          if ((v572[0].__locale_ & 7) == 0)
          {
            LOBYTE(v572[0].__locale_) |= 1u;
          }
        }

        *v42 = v43;
        v6 = *(a1 + 8);
        if (v44 != 10 && v44 != 0)
        {
          v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
LABEL_65:
          v47 = v7;
          v48 = v8;
          v49 = v3;
          v50 = v6;
          goto LABEL_147;
        }
      }

      else
      {
        v6 = *(a1 + 8);
      }

      v74 = *v6;
      v89 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      LOBYTE(v571[0].__locale_) = v3;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v74, v89, v90, 1);
      goto LABEL_134;
    case 3u:
      LODWORD(v21) = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_73;
      }

      v51 = *a1;
      v52 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_72;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_72:
      *v51 = v52;
LABEL_73:
      v6 = *(a1 + 8);
      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v27 = v54;
      if ((v25 & 0xFF00) != 0xA00)
      {
        if (v21 >= 0)
        {
          v49 = v21;
        }

        else
        {
          v49 = -v21;
        }

        v99 = v21 >> 31;
        v50 = v6;
        v47 = v25;
        v48 = v27;
        goto LABEL_148;
      }

      if (v21 == v21)
      {
        goto LABEL_28;
      }

      goto LABEL_1225;
    case 4u:
      v21 = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_26;
      }

      v22 = *a1;
      v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_25;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_25:
      *v22 = v23;
LABEL_26:
      v6 = *(a1 + 8);
      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v27 = v26;
      if ((v25 & 0xFF00) == 0xA00)
      {
        if (v21 == v21)
        {
LABEL_28:
          v28 = *v6;
          LOBYTE(v571[0].__locale_) = v21;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v28, v25, v27, 1);
LABEL_429:
          *v6 = v28;
          goto LABEL_1157;
        }

        goto LABEL_1225;
      }

      if (v21 >= 0)
      {
        v91 = v21;
      }

      else
      {
        v91 = -v21;
      }

      v41 = v21 >> 63;
      v92 = v6;
      v93 = v25;
      v94 = v27;
      goto LABEL_152;
    case 5u:
      v59 = *a2;
      v60 = *(a2 + 1);
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_93;
      }

      v61 = *a1;
      v62 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_92;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_92:
      *v61 = v62;
LABEL_93:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v64;
      if ((v39 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) < __PAIR128__((v59 >= 0x80) + v60 - 1, v59 - 128))
        {
          v28 = *v6;
          LOBYTE(v571[0].__locale_) = v59;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v28, v39, v64, 1);
          goto LABEL_429;
        }

LABEL_1225:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      v96 = (__PAIR128__(v60 ^ (v60 >> 63), v59 ^ (v60 >> 63)) - __PAIR128__(v60 >> 63, v60 >> 63)) >> 64;
      v95 = (v59 ^ (v60 >> 63)) - (v60 >> 63);
      v98 = v60 >> 63;
      v97 = v6;
      goto LABEL_150;
    case 6u:
      LODWORD(v34) = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_83;
      }

      v55 = *a1;
      v56 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_82;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_82:
      *v55 = v56;
LABEL_83:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v58;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v49 = v34;
        v50 = v6;
        v47 = v39;
        v48 = v41;
LABEL_147:
        LOBYTE(v99) = 0;
LABEL_148:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v49, v50, v47, v48, v99);
        goto LABEL_1157;
      }

      if (v34 < 0x80)
      {
        goto LABEL_114;
      }

      goto LABEL_1225;
    case 7u:
      v34 = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_112;
      }

      v70 = *a1;
      v71 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_111;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_111:
      *v70 = v71;
LABEL_112:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v73;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v91 = v34;
        v92 = v6;
        v93 = v39;
        v94 = v41;
        LOBYTE(v41) = 0;
LABEL_152:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v91, v92, v93, v94, v41);
        goto LABEL_1157;
      }

      if (v34 >= 0x80)
      {
        goto LABEL_1225;
      }

      goto LABEL_114;
    case 8u:
      v34 = *a2;
      v35 = *(a2 + 1);
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_45;
      }

      v36 = *a1;
      v37 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_44;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
LABEL_1228:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
LABEL_1229:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "sign");
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
LABEL_1230:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "alternate form");
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
LABEL_1231:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "zero-padding");
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
LABEL_1232:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "precision");
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_44:
      *v36 = v37;
LABEL_45:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v40;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v95 = v34;
        v96 = v35;
        v97 = v6;
        LOBYTE(v98) = 0;
LABEL_150:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v95, v96, v97, v39, v41, v98);
        goto LABEL_1157;
      }

      if (__PAIR128__(v35, v34) >= 0x80)
      {
        goto LABEL_1225;
      }

LABEL_114:
      v74 = *v6;
      LOBYTE(v571[0].__locale_) = v34;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v74, v39, v41, 1);
LABEL_134:
      *v6 = v74;
      goto LABEL_1157;
    case 9u:
      v29 = *a2;
      v563.__locale_ = 0;
      v564 = -1;
      v565 = 32;
      v566 = 0;
      v567 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_158;
      }

      v30 = *a1;
      v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v563, *a1, 63);
      if (BYTE1(v563.__locale_) - 13 >= 6)
      {
        if (BYTE1(v563.__locale_) <= 0xCu && ((1 << SBYTE1(v563.__locale_)) & 0x1801) != 0)
        {
          goto LABEL_157;
        }

LABEL_1238:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
      }

      v32 = v564 != -1 || SWORD1(v563.__locale_) <= -1;
      if (v32)
      {
        v33 = v564;
      }

      else
      {
        v33 = 6;
      }

      v564 = v33;
LABEL_157:
      *v30 = v31;
LABEL_158:
      v101 = *(a1 + 8);
      v104 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v563, v101);
      v105 = v102;
      if ((LODWORD(v29) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        *v101 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v101, v104, v102, v29 < 0.0, 0);
        goto LABEL_1157;
      }

      *&v106 = 0xAAAAAAAAAAAAAAAALL;
      *(&v106 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v572[33].__locale_ = v106;
      *&v572[31].__locale_ = v106;
      *&v572[29].__locale_ = v106;
      *&v572[27].__locale_ = v106;
      *&v572[25].__locale_ = v106;
      *&v572[23].__locale_ = v106;
      *&v572[21].__locale_ = v106;
      *&v572[19].__locale_ = v106;
      *&v572[17].__locale_ = v106;
      *&v572[15].__locale_ = v106;
      *&v572[13].__locale_ = v106;
      *&v572[11].__locale_ = v106;
      *&v572[9].__locale_ = v106;
      *&v572[7].__locale_ = v106;
      *&v572[5].__locale_ = v106;
      *&v572[3].__locale_ = v106;
      *&v572[1].__locale_ = v106;
      if (v102 == -1)
      {
        v107 = 149;
      }

      else
      {
        v107 = v102;
      }

      v572[0].__locale_ = v107;
      if (v107 < 150)
      {
        v108 = v107 + 45;
        v572[1].__locale_ = v108;
        if ((v107 + 45) >= 0x101)
        {
          v109 = operator new(v107 + 45);
          v107 = v105;
          goto LABEL_167;
        }
      }

      else
      {
        LODWORD(v572[0].__locale_) = 149;
        HIDWORD(v572[0].__locale_) = v107 - 149;
        v108 = 194;
        v572[1].__locale_ = 194;
        v107 = 149;
      }

      v109 = &v572[3];
LABEL_167:
      v110 = v104;
      v561 = v104;
      v111 = BYTE1(v104);
      v572[2].__locale_ = v109;
      if ((LODWORD(v29) & 0x80000000) != 0)
      {
        v115 = 45;
        v113 = v110;
      }

      else
      {
        v112 = (v110 >> 3) & 3;
        v113 = v110;
        if (v112 == 2)
        {
          v115 = 43;
        }

        else
        {
          v114 = v109;
          if (v112 != 3)
          {
            goto LABEL_174;
          }

          v115 = 32;
        }
      }

      *v109 = v115;
      v114 = (v109 + 1);
LABEL_174:
      v116 = fabsf(v29);
      v559 = v105;
      if (v111 > 14)
      {
        if ((v111 - 15) >= 2)
        {
          if (v111 == 17)
          {
            HIDWORD(v572[0].__locale_) = 0;
            v118 = MEMORY[0x1E69273A0](v114, v109 + v108, 3, v107, v116);
            v127 = (v114 + 1);
            if ((v114 + 1) != v118)
            {
              v128 = v118 - v127;
              if (v118 - v127 >= 4)
              {
                v129 = 6;
                if (v128 < 6)
                {
                  v129 = v118 - v127;
                }

                v130 = -v129;
                while (*(v118 + v130) != 101)
                {
                  if (++v130 == -3)
                  {
                    goto LABEL_353;
                  }
                }

                goto LABEL_554;
              }

              goto LABEL_353;
            }
          }

          else
          {
            HIDWORD(v572[0].__locale_) = 0;
            v118 = MEMORY[0x1E69273A0](v114, v109 + v108, 3, v107, v116);
            v127 = (v114 + 1);
            if ((v114 + 1) != v118)
            {
              v128 = v118 - v127;
              if (v118 - v127 >= 4)
              {
                v190 = 6;
                if (v128 < 6)
                {
                  v190 = v118 - v127;
                }

                v191 = -v190;
                while (*(v118 + v191) != 101)
                {
                  if (++v191 == -3)
                  {
                    goto LABEL_353;
                  }
                }

                v119 = (v118 + v191);
                if (*v127 == 46)
                {
                  v122 = v114 + 1;
                }

                else
                {
                  v122 = v118;
                }

LABEL_574:
                *v119 = 69;
                goto LABEL_588;
              }

LABEL_353:
              v192 = memchr(v127, 46, v128);
              if (v192)
              {
                v122 = v192;
              }

              else
              {
                v122 = v118;
              }

              v119 = v118;
              goto LABEL_588;
            }
          }

LABEL_413:
          v122 = v118;
          v119 = v118;
          goto LABEL_588;
        }

        v123 = v109 + v108;
        v124 = v107;
        v125 = MEMORY[0x1E69273A0](v114, v123, 2, v116);
        v118 = v125;
        if (v124)
        {
          v126 = v124 + 1;
        }

        else
        {
          v126 = 0;
        }

        v122 = v125 - v126;
        v119 = v125;
      }

      else
      {
        if (v111 > 11)
        {
          if (v111 == 12)
          {
            if ((v105 & 0x80000000) != 0 || v107 == -1)
            {
              v189 = std::to_chars();
            }

            else
            {
              v189 = MEMORY[0x1E69273A0](v114, v109 + v108, 4, v116);
            }

            v118 = v189;
            v119 = (v114 + 1);
            if (*(v114 + 1) != 46 || ((v221 = memchr((v189 - 5), 112, 3uLL)) != 0 ? (v119 = v221) : (v119 = (v118 - 2)), v122 = v114 + 1, v189 = v114 + 1, v119 != v114))
            {
              v230 = v114;
              do
              {
                v231 = *v230;
                if ((v231 - 97) < 6)
                {
                  LOBYTE(v231) = v231 - 32;
                }

                *v230 = v231;
                v230 = (v230 + 1);
              }

              while (v230 != v119);
              v122 = v189;
            }

            *v119 = 80;
            goto LABEL_588;
          }

          if (v111 == 13)
          {
            v117 = MEMORY[0x1E69273A0](v114, v109 + v108, 1, v107, v116);
            v118 = v117;
            v119 = (v114 + 1);
            if (*(v114 + 1) == 46)
            {
              v120 = v117 - v114 - 2;
              if (v120 < 4)
              {
LABEL_185:
                v122 = v114 + 1;
                v119 = v117;
              }

              else
              {
                if (v120 >= 6)
                {
                  v120 = 6;
                }

                v121 = -v120;
                while (*(v117 + v121) != 101)
                {
                  if (++v121 == -3)
                  {
                    goto LABEL_185;
                  }
                }

                v122 = v114 + 1;
                v119 = (v117 + v121);
              }

              goto LABEL_588;
            }

            goto LABEL_527;
          }

          v193 = MEMORY[0x1E69273A0](v114, v109 + v108, 1, v107, v116);
          v118 = v193;
          v119 = (v114 + 1);
          if (*(v114 + 1) == 46)
          {
            v194 = v193 - v114 - 2;
            if (v194 < 4)
            {
LABEL_364:
              v122 = v114 + 1;
              v119 = v193;
            }

            else
            {
              if (v194 >= 6)
              {
                v194 = 6;
              }

              v195 = -v194;
              while (*(v193 + v195) != 101)
              {
                if (++v195 == -3)
                {
                  goto LABEL_364;
                }
              }

              v122 = v114 + 1;
              v119 = (v193 + v195);
            }
          }

          else
          {
            v122 = v193;
          }

          goto LABEL_574;
        }

        if (!v111)
        {
          if ((v105 & 0x80000000) != 0)
          {
            v234 = std::to_chars(v114, v109 + v108, v103, v116);
            v118 = v234;
            v235 = v234 - v114;
            if (v234 - v114 < 4)
            {
LABEL_520:
              v119 = v234;
            }

            else
            {
              if (v235 >= 6)
              {
                v235 = 6;
              }

              v236 = -v235;
              while (*(v234 + v236) != 101)
              {
                if (++v236 == -3)
                {
                  goto LABEL_520;
                }
              }

              v119 = (v234 + v236);
            }

            v259 = memchr(v114 + 1, 46, v119 - (v114 + 1));
            if (v259)
            {
              v260 = v259;
            }

            else
            {
              v260 = v119;
            }

            if (v260 == v119)
            {
              v122 = v118;
            }

            else
            {
              v122 = v260;
            }

            goto LABEL_588;
          }

          HIDWORD(v572[0].__locale_) = 0;
          v118 = MEMORY[0x1E69273A0](v114, v109 + v108, 3, v107, v116);
          v127 = (v114 + 1);
          if ((v114 + 1) != v118)
          {
            v128 = v118 - v127;
            if (v118 - v127 >= 4)
            {
              v131 = 6;
              if (v128 < 6)
              {
                v131 = v118 - v127;
              }

              v130 = -v131;
              while (*(v118 + v130) != 101)
              {
                if (++v130 == -3)
                {
                  goto LABEL_353;
                }
              }

LABEL_554:
              v119 = (v118 + v130);
              if (*v127 == 46)
              {
                v122 = v127;
              }

              else
              {
                v122 = v118;
              }

              goto LABEL_588;
            }

            goto LABEL_353;
          }

          goto LABEL_413;
        }

        if ((v105 & 0x80000000) != 0)
        {
          v196 = std::to_chars();
        }

        else
        {
          v196 = MEMORY[0x1E69273A0](v114, v109 + v108, 4, v107, v116);
        }

        v118 = v196;
        v119 = (v114 + 1);
        if (*(v114 + 1) != 46)
        {
LABEL_527:
          v122 = v118;
          goto LABEL_588;
        }

        v237 = memchr((v196 - 5), 112, 3uLL);
        if (v237)
        {
          v238 = v237;
        }

        else
        {
          v238 = (v118 - 2);
        }

        v122 = v114 + 1;
        v119 = v238;
      }

      if ((v113 & 0x20) == 0)
      {
        goto LABEL_605;
      }

LABEL_588:
      if (v122 == v118)
      {
        *v118 = 46;
        if (v119 != v118)
        {
          if ((v119 + 1) == v118)
          {
            v261 = *v119;
            *v119 = *(v119 + 1);
            *(v119 + 1) = v261;
          }

          else
          {
            memmove(v119 + 1, v119, v118 - v119);
            *v119 = 46;
          }
        }

        v262 = v119;
        v119 = (v119 + 1);
        v118 = (v118 + 1);
        v122 = v262;
      }

      if ((v111 - 17) <= 1)
      {
        v263 = v561;
        if (v559 <= 1)
        {
          v264 = 1;
        }

        else
        {
          v264 = v559;
        }

        if ((v559 & 0x80000000) != 0)
        {
          v264 = 6;
        }

        v265 = v114 - v122;
        if (v119 != v118)
        {
          v265 = -1;
        }

        v266 = v265 + v264;
        v267 = v119 + ~v122;
        if (v267 < v266)
        {
          HIDWORD(v572[0].__locale_) += v266 - v267;
        }
      }

      else
      {
LABEL_605:
        v263 = v561;
      }

      if ((v113 & 0x40) == 0)
      {
        v268 = v114;
        v269 = v119;
        v270 = v572[2].__locale_;
        v271 = v118;
        v272 = v118 - v572[2].__locale_;
        v273 = SHIDWORD(v572[0].__locale_);
        if (v118 - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) < v263 >> 32)
        {
          v274 = v113;
          v275 = *v101;
          if ((v274 & 7) == 4)
          {
            if (v572[2].__locale_ != v268)
            {
              v276 = *v572[2].__locale_;
              v277 = *(v275 + 32);
              if (!v277 || (v279 = *v277, v278 = v277[1], v277[1] = v278 + 1, v278 < v279))
              {
                v280 = *v275;
                v281 = *(v275 + 16);
                *(v275 + 16) = v281 + 1;
                *(v280 + v281) = v276;
                if (*(v275 + 16) == *(v275 + 8))
                {
                  v282 = v263;
                  (*(v275 + 24))(v275, 2);
                  v263 = v282;
                }
              }

              v270 = (v270 + 1);
            }

            v283 = v263 & 0xB8 | 3;
            v284 = 48;
            v285 = v559;
          }

          else
          {
            v283 = v263;
            v285 = v559;
            v284 = BYTE4(v559);
          }

          v303 = v263 & 0xFFFFFFFFFFFFFF00 | v283;
          v304 = v285 & 0xFFFFFF00FFFFFFFFLL | (v284 << 32);
          if (v273)
          {
            std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v270, v118, v275, v303, v304, v272, v269, v273);
          }

          else
          {
            std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v270, v118 - v270, v275, v303, v304, v272);
          }

          goto LABEL_908;
        }

        v275 = *v101;
        if (HIDWORD(v572[0].__locale_) && v269 != v118)
        {
          v287 = v269 - v572[2].__locale_;
          v288 = *(v275 + 32);
          if (v288)
          {
            v289 = v101;
            v290 = *v288;
            v291 = v288[1];
            if (*v288 - v291 >= v287)
            {
              v292 = v269 - v572[2].__locale_;
            }

            else
            {
              v292 = *v288 - v291;
            }

            v32 = v290 > v291;
            v293 = v291 + v287;
            v288[1] = v293;
            if (!v32 || v292 == 0)
            {
              goto LABEL_742;
            }
          }

          else
          {
            v289 = v101;
            v292 = v269 - v572[2].__locale_;
          }

          v339 = *(v275 + 16);
          do
          {
            v340 = *(v275 + 8) - v339;
            if (v340 < v292 + 1)
            {
              (*(v275 + 24))(v275, v292 + 2);
              v339 = *(v275 + 16);
              v340 = *(v275 + 8) - v339;
            }

            if (v340 >= v292)
            {
              v341 = v292;
            }

            else
            {
              v341 = v340;
            }

            if (v341)
            {
              memmove((*v275 + v339), v270, v341);
              v339 = *(v275 + 16);
            }

            v339 += v341;
            *(v275 + 16) = v339;
            v270 = (v270 + v341);
            v32 = v292 > v340;
            v292 -= v341;
          }

          while (v32);
          v288 = *(v275 + 32);
          if (!v288)
          {
            goto LABEL_749;
          }

          v290 = *v288;
          v293 = v288[1];
LABEL_742:
          v342 = v293 + v273;
          v288[1] = v293 + v273;
          v343 = v290 >= v293;
          v344 = v290 - v293;
          if (v344 == 0 || !v343)
          {
            v347 = v269;
            v348 = v271 - v269;
            v101 = v289;
            goto LABEL_758;
          }

          if (v344 < v273)
          {
            v273 = v344;
          }

          v339 = *(v275 + 16);
          do
          {
LABEL_749:
            v345 = *(v275 + 8) - v339;
            if (v345 < v273 + 1)
            {
              (*(v275 + 24))(v275, v273 + 2);
              v339 = *(v275 + 16);
              v345 = *(v275 + 8) - v339;
            }

            if (v345 >= v273)
            {
              v346 = v273;
            }

            else
            {
              v346 = v345;
            }

            if (v346)
            {
              memset((*v275 + v339), 48, v346);
              v339 = *(v275 + 16);
            }

            v339 += v346;
            *(v275 + 16) = v339;
            v32 = v273 > v345;
            v273 -= v346;
          }

          while (v32);
          v288 = *(v275 + 32);
          v347 = v269;
          v348 = v271 - v269;
          v101 = v289;
          if (!v288)
          {
            v351 = v289;
            goto LABEL_786;
          }

          v290 = *v288;
          v342 = v288[1];
LABEL_758:
          v349 = v290 - v342;
          if (v290 - v342 >= v348)
          {
            v349 = v348;
          }

          v288[1] = v348 + v342;
          if (v290 <= v342 || v349 == 0)
          {
            goto LABEL_908;
          }

          v351 = v101;
          v339 = *(v275 + 16);
          v348 = v349;
          do
          {
LABEL_786:
            v358 = *(v275 + 8) - v339;
            if (v358 < v348 + 1)
            {
              (*(v275 + 24))(v275, v348 + 2);
              v339 = *(v275 + 16);
              v358 = *(v275 + 8) - v339;
            }

            if (v358 >= v348)
            {
              v359 = v348;
            }

            else
            {
              v359 = v358;
            }

            if (v359)
            {
              memmove((*v275 + v339), v347, v359);
              v339 = *(v275 + 16);
            }

            v339 += v359;
            *(v275 + 16) = v339;
            v347 = (v347 + v359);
            v32 = v348 > v358;
            v348 -= v359;
          }

          while (v32);
          v101 = v351;
          goto LABEL_908;
        }

        v295 = *(v275 + 32);
        if (!v295)
        {
          goto LABEL_638;
        }

        v296 = *v295;
        v297 = v295[1];
        v298 = v297 + v272;
        if (*v295 - v297 < v272)
        {
          v272 = *v295 - v297;
        }

        v295[1] = v298;
        if (v296 > v297 && v272 != 0)
        {
LABEL_638:
          v300 = *(v275 + 16);
          do
          {
            v301 = *(v275 + 8) - v300;
            if (v301 < v272 + 1)
            {
              (*(v275 + 24))(v275, v272 + 2);
              v300 = *(v275 + 16);
              v301 = *(v275 + 8) - v300;
            }

            if (v301 >= v272)
            {
              v302 = v272;
            }

            else
            {
              v302 = v301;
            }

            if (v302)
            {
              memmove((*v275 + v300), v270, v302);
              v300 = *(v275 + 16);
            }

            v300 += v302;
            *(v275 + 16) = v300;
            v270 = (v270 + v302);
            v32 = v272 > v301;
            v272 -= v302;
          }

          while (v32);
          v295 = *(v275 + 32);
          if (!v295)
          {
            goto LABEL_719;
          }

          v296 = *v295;
          v298 = v295[1];
        }

        v334 = v296 - v298;
        if (v296 - v298 >= v273)
        {
          v334 = v273;
        }

        v295[1] = v298 + v273;
        if (v296 <= v298 || v334 == 0)
        {
          goto LABEL_908;
        }

        v300 = *(v275 + 16);
        v273 = v334;
        do
        {
LABEL_719:
          v336 = *(v275 + 8) - v300;
          if (v336 < v273 + 1)
          {
            (*(v275 + 24))(v275, v273 + 2);
            v300 = *(v275 + 16);
            v336 = *(v275 + 8) - v300;
          }

          if (v336 >= v273)
          {
            v337 = v273;
          }

          else
          {
            v337 = v336;
          }

          if (v337)
          {
            memset((*v275 + v300), 48, v337);
            v300 = *(v275 + 16);
          }

          v300 += v337;
          *(v275 + 16) = v300;
          v32 = v273 > v336;
          v273 -= v337;
        }

        while (v32);
        goto LABEL_908;
      }

      v555 = v113;
      v275 = *v101;
      if ((*(v101 + 40) & 1) == 0)
      {
        MEMORY[0x1E69272B0](v571);
        v286 = (v101 + 32);
        if (*(v101 + 40) == 1)
        {
          std::locale::operator=(v286, v571);
        }

        else
        {
          std::locale::locale(v286, v571);
          *(v101 + 40) = 1;
        }

        std::locale::~locale(v571);
      }

      std::locale::locale(&v570, (v101 + 32));
      v305 = std::locale::use_facet(&v570, MEMORY[0x1E69E5368]);
      memset(v571, 170, 24);
      (v305->__vftable[1].__on_zero_shared)(v571);
      if (v119 >= v122)
      {
        v306 = v122;
      }

      else
      {
        v306 = v119;
      }

      v557 = v306 - v114;
      v558 = v305;
      v552 = v101;
      v553 = v122;
      v556 = v118;
      v554 = v119;
      if ((SHIBYTE(v571[2].__locale_) & 0x8000000000000000) != 0)
      {
        v307 = v571[1].__locale_;
        if (!v571[1].__locale_)
        {
          goto LABEL_798;
        }

        v551 = v114;
        v310 = v571[0].__locale_;
        locale_low = *v571[0].__locale_;
        if (v557 <= locale_low)
        {
          *v571[0].__locale_ = 0;
          v571[1].__locale_ = 0;
          v114 = v551;
          goto LABEL_798;
        }

        v311 = *v571[0].__locale_;
        v308 = v571[0].__locale_;
      }

      else
      {
        if (!HIBYTE(v571[2].__locale_))
        {
          goto LABEL_798;
        }

        if (v557 <= SLOBYTE(v571[0].__locale_))
        {
          LOBYTE(v571[0].__locale_) = 0;
          HIBYTE(v571[2].__locale_) = 0;
          goto LABEL_798;
        }

        v551 = v114;
        v308 = v571[0].__locale_;
        v307 = v571[1].__locale_;
        locale_low = SLOBYTE(v571[0].__locale_);
        v310 = v571;
        v311 = v571[0].__locale_;
      }

      v568[0].__locale_ = 0;
      v568[1].__locale_ = 0;
      v569 = 0;
      v312 = v307 + v308;
      if (SHIBYTE(v571[2].__locale_) >= 0)
      {
        v313 = v571 + SHIBYTE(v571[2].__locale_);
      }

      else
      {
        v313 = v312;
      }

      v314 = v557 - locale_low;
      if (v557 <= locale_low)
      {
        v332 = 0;
        v331 = v311 + v314;
        v114 = v551;
        goto LABEL_728;
      }

      v315 = v313 - 1;
      do
      {
        while (1)
        {
          v316 = HIBYTE(v569);
          if ((SHIBYTE(v569) & 0x80000000) == 0)
          {
            break;
          }

          v318 = (v569 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v568[1].__locale_ != v318)
          {
            v324 = v568[0].__locale_;
            v318 = v568[1].__locale_;
            goto LABEL_693;
          }

          if ((v569 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v317 = v568[0].__locale_;
          if (v318 < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_675;
          }

          v322 = 0;
          v321 = 0x7FFFFFFFFFFFFFF7;
LABEL_685:
          v323 = operator new(v321);
          v324 = v323;
          if (v318)
          {
            memmove(v323, v317, v318);
          }

          if (!v322)
          {
            operator delete(v317);
          }

          v568[0].__locale_ = v324;
          v569 = v321 | 0x8000000000000000;
LABEL_693:
          v568[1].__locale_ = (v318 + 1);
          v326 = v324 + v318;
          *v326 = v311;
          v326[1] = 0;
          if (v310 != v315)
          {
            goto LABEL_694;
          }

LABEL_668:
          v311 = *v310;
          v314 -= *v310;
          if (v314 <= 0)
          {
            goto LABEL_704;
          }
        }

        if (HIBYTE(v569) == 22)
        {
          v317 = v568;
          v318 = 22;
LABEL_675:
          if (v318 + 1 > 2 * v318)
          {
            v319 = v318 + 1;
          }

          else
          {
            v319 = 2 * v318;
          }

          if ((v319 | 7) == 0x17)
          {
            v320 = 25;
          }

          else
          {
            v320 = (v319 | 7) + 1;
          }

          if (v319 >= 0x17)
          {
            v321 = v320;
          }

          else
          {
            v321 = 23;
          }

          v322 = v318 == 22;
          goto LABEL_685;
        }

        HIBYTE(v569) = (HIBYTE(v569) + 1) & 0x7F;
        v325 = v568 + v316;
        *v325 = v311;
        v325[1] = 0;
        if (v310 == v315)
        {
          goto LABEL_668;
        }

LABEL_694:
        v327 = (v310 + 1);
        v328 = (v310 + 1);
        do
        {
          v329 = *v328++;
          v311 = v329;
          if (v329)
          {
            v330 = 1;
          }

          else
          {
            v330 = v327 == v315;
          }

          v327 = v328;
        }

        while (!v330);
        v310 = (v328 - 1);
        v314 -= v311;
      }

      while (v314 > 0);
LABEL_704:
      v331 = v311 + v314;
      if (SHIBYTE(v569) < 0)
      {
        v333 = (v569 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v118 = v556;
        v114 = v551;
        if (v568[1].__locale_ == v333)
        {
          if ((v569 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          __p = v568[0].__locale_;
          v352 = 0x7FFFFFFFFFFFFFF7;
          if (v333 >= 0x3FFFFFFFFFFFFFF3)
          {
            v355 = 0;
          }

          else
          {
LABEL_768:
            if (v333 + 1 > 2 * v333)
            {
              v353 = v333 + 1;
            }

            else
            {
              v353 = 2 * v333;
            }

            if ((v353 | 7) == 0x17)
            {
              v354 = 25;
            }

            else
            {
              v354 = (v353 | 7) + 1;
            }

            if (v353 >= 0x17)
            {
              v352 = v354;
            }

            else
            {
              v352 = 23;
            }

            v355 = v333 == 22;
          }

          v356 = v352;
          v357 = operator new(v352);
          v338 = v357;
          if (v333)
          {
            memmove(v357, __p, v333);
          }

          if (!v355)
          {
            operator delete(__p);
          }

          v568[0].__locale_ = v338;
          v569 = v356 | 0x8000000000000000;
        }

        else
        {
          v338 = v568[0].__locale_;
          v333 = v568[1].__locale_;
        }

        v568[1].__locale_ = (v333 + 1);
      }

      else
      {
        v332 = HIBYTE(v569);
        v118 = v556;
        v114 = v551;
        if (HIBYTE(v569) == 22)
        {
          __p = v568;
          v333 = 22;
          goto LABEL_768;
        }

LABEL_728:
        v333 = v332;
        HIBYTE(v569) = (v332 + 1) & 0x7F;
        v338 = v568;
      }

      v360 = v338 + v333;
      *v360 = v331;
      v360[1] = 0;
      if (SHIBYTE(v571[2].__locale_) < 0)
      {
        operator delete(v571[0].__locale_);
      }

      *&v571[0].__locale_ = *&v568[0].__locale_;
      v571[2].__locale_ = v569;
LABEL_798:
      v361 = HIBYTE(v571[2].__locale_);
      if (SHIBYTE(v571[2].__locale_) < 0)
      {
        v361 = v571[1].__locale_;
      }

      v362 = v361 + v118 - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) - (v361 != 0);
      v363 = v555 & 7;
      v364 = (v561 >> 32) - v362;
      if (v561 >> 32 <= v362)
      {
        v562 = 0;
        v364 = 0;
        v365 = HIDWORD(v559);
      }

      else
      {
        if (v363 == 4)
        {
          LOBYTE(v365) = 48;
        }

        else
        {
          v365 = HIDWORD(v559);
        }

        if (v363 == 4)
        {
          v366 = 3;
        }

        else
        {
          v366 = v555 & 7;
        }

        if (v366 > 1)
        {
          if (v366 == 3)
          {
            goto LABEL_812;
          }

          v562 = v364 - (v364 >> 1);
          v364 >>= 1;
        }

        else
        {
          if (v366)
          {
            v562 = v364;
            v364 = 0;
            goto LABEL_814;
          }

LABEL_812:
          v562 = 0;
        }
      }

LABEL_814:
      if (v363 == 4 && v114 != v572[2].__locale_)
      {
        v367 = *v572[2].__locale_;
        v368 = *(v275 + 32);
        if (!v368 || (v370 = *v368, v369 = v368[1], v368[1] = v369 + 1, v369 < v370))
        {
          v371 = *v275;
          v372 = *(v275 + 16);
          *(v275 + 16) = v372 + 1;
          *(v371 + v372) = v367;
          if (*(v275 + 16) == *(v275 + 8))
          {
            v373 = v364;
            (*(v275 + 24))(v275, 2);
            v364 = v373;
          }
        }
      }

      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v275, v364, HIDWORD(v559) & 0xFFFFFF00 | v365);
      if (v363 != 4 && v114 != v572[2].__locale_)
      {
        v374 = *v572[2].__locale_;
        v375 = *(v275 + 32);
        if (!v375 || (v377 = *v375, v376 = v375[1], v375[1] = v376 + 1, v376 < v377))
        {
          v378 = *v275;
          v379 = *(v275 + 16);
          *(v275 + 16) = v379 + 1;
          *(v378 + v379) = v374;
          if (*(v275 + 16) == *(v275 + 8))
          {
            (*(v275 + 24))(v275, 2);
          }
        }
      }

      v380 = SHIBYTE(v571[2].__locale_);
      v560 = HIDWORD(v559) & 0xFFFFFF00 | v365;
      if ((SHIBYTE(v571[2].__locale_) & 0x8000000000000000) != 0)
      {
        v380 = v571[1].__locale_;
        if (!v571[1].__locale_)
        {
          goto LABEL_857;
        }

        v381 = v571[0].__locale_;
LABEL_831:
        v382 = v380 + v381;
        v383 = (v558->__vftable[1].~facet_0)();
        v384 = v381 + 1;
        while (1)
        {
          v385 = v114;
          v387 = v382 - 1;
          v386 = *(v382 - 1);
          v388 = *(v275 + 32);
          if (v388)
          {
            v390 = *v388;
            v389 = v388[1];
            if (*v388 - v389 >= v386)
            {
              v391 = *(v382 - 1);
            }

            else
            {
              v391 = *v388 - v389;
            }

            v388[1] = v389 + v386;
            if (v390 <= v389 || v391 == 0)
            {
              goto LABEL_841;
            }
          }

          else
          {
            v391 = *(v382 - 1);
          }

          v398 = *(v275 + 16);
          v399 = v114;
          do
          {
            v400 = *(v275 + 8) - v398;
            if (v400 < v391 + 1)
            {
              (*(v275 + 24))(v275, v391 + 2);
              v398 = *(v275 + 16);
              v400 = *(v275 + 8) - v398;
            }

            if (v400 >= v391)
            {
              v401 = v391;
            }

            else
            {
              v401 = v400;
            }

            if (v401)
            {
              memmove((*v275 + v398), v399, v401);
              v398 = *(v275 + 16);
            }

            v398 += v401;
            *(v275 + 16) = v398;
            v399 = (v399 + v401);
            v32 = v391 > v400;
            v391 -= v401;
          }

          while (v32);
LABEL_841:
          if (v382 == v384)
          {
            goto LABEL_863;
          }

          v114 = (v385 + *(v382 - 1));
          v393 = *(v275 + 32);
          if (v393)
          {
            v395 = *v393;
            v394 = v393[1];
            v393[1] = v394 + 1;
            --v382;
            if (v394 >= v395)
            {
              continue;
            }
          }

          v396 = *v275;
          v397 = *(v275 + 16);
          *(v275 + 16) = v397 + 1;
          *(v396 + v397) = v383;
          v382 = v387;
          if (*(v275 + 16) == *(v275 + 8))
          {
            (*(v275 + 24))(v275, 2);
            v382 = v387;
          }
        }
      }

      if (HIBYTE(v571[2].__locale_))
      {
        v381 = v571;
        goto LABEL_831;
      }

LABEL_857:
      v402 = *(v275 + 32);
      if (v402)
      {
        v404 = *v402;
        v403 = v402[1];
        if (*v402 - v403 >= v557)
        {
          v405 = v557;
        }

        else
        {
          v405 = *v402 - v403;
        }

        v402[1] = v403 + v557;
        if (v404 <= v403 || !v405)
        {
          goto LABEL_863;
        }
      }

      else
      {
        v405 = v557;
      }

      v437 = *(v275 + 16);
      do
      {
        v438 = *(v275 + 8) - v437;
        if (v438 < v405 + 1)
        {
          (*(v275 + 24))(v275, v405 + 2);
          v437 = *(v275 + 16);
          v438 = *(v275 + 8) - v437;
        }

        if (v438 >= v405)
        {
          v439 = v405;
        }

        else
        {
          v439 = v438;
        }

        if (v439)
        {
          memmove((*v275 + v437), v114, v439);
          v437 = *(v275 + 16);
        }

        v437 += v439;
        *(v275 + 16) = v437;
        v114 = (v114 + v439);
        v32 = v405 > v438;
        v405 -= v439;
      }

      while (v32);
LABEL_863:
      v406 = v554;
      if (v553 != v556)
      {
        v407 = (v558->__vftable[1].~facet)(v558);
        v408 = *(v275 + 32);
        if (!v408 || (v410 = *v408, v409 = v408[1], v408[1] = v409 + 1, v409 < v410))
        {
          v411 = *v275;
          v412 = *(v275 + 16);
          *(v275 + 16) = v412 + 1;
          *(v411 + v412) = v407;
          if (*(v275 + 16) == *(v275 + 8))
          {
            (*(v275 + 24))(v275, 2);
          }
        }

        v413 = (v553 + 1);
        v414 = v554 - v553 - 1;
        v415 = *(v275 + 32);
        if (v415)
        {
          v416 = *v415;
          v417 = v415[1];
          if (*v415 - v417 >= v414)
          {
            v418 = v554 - v553 - 1;
          }

          else
          {
            v418 = *v415 - v417;
          }

          v419 = &v414[v417];
          v415[1] = v419;
          if (v416 <= v417 || !v418)
          {
            v420 = SHIDWORD(v572[0].__locale_);
            goto LABEL_888;
          }
        }

        else
        {
          v418 = v554 - v553 - 1;
        }

        v421 = *(v275 + 16);
        do
        {
          v422 = *(v275 + 8) - v421;
          if (v422 < v418 + 1)
          {
            (*(v275 + 24))(v275, v418 + 2);
            v421 = *(v275 + 16);
            v422 = *(v275 + 8) - v421;
          }

          if (v422 >= v418)
          {
            v423 = v418;
          }

          else
          {
            v423 = v422;
          }

          if (v423)
          {
            memmove((*v275 + v421), v413, v423);
            v421 = *(v275 + 16);
          }

          v421 += v423;
          *(v275 + 16) = v421;
          v413 += v423;
          v32 = v418 > v422;
          v418 -= v423;
        }

        while (v32);
        v415 = *(v275 + 32);
        v420 = SHIDWORD(v572[0].__locale_);
        if (v415)
        {
          v416 = *v415;
          v419 = v415[1];
LABEL_888:
          v424 = v416 - v419;
          if (v416 - v419 >= v420)
          {
            v424 = v420;
          }

          v415[1] = &v419[v420];
          if (v416 > v419 && v424 != 0)
          {
            v421 = *(v275 + 16);
            v420 = v424;
            goto LABEL_924;
          }
        }

        else
        {
          do
          {
LABEL_924:
            v435 = *(v275 + 8) - v421;
            if (v435 < v420 + 1)
            {
              (*(v275 + 24))(v275, v420 + 2);
              v421 = *(v275 + 16);
              v435 = *(v275 + 8) - v421;
            }

            if (v435 >= v420)
            {
              v436 = v420;
            }

            else
            {
              v436 = v435;
            }

            if (v436)
            {
              memset((*v275 + v421), 48, v436);
              v421 = *(v275 + 16);
            }

            v421 += v436;
            *(v275 + 16) = v421;
            v32 = v420 > v435;
            v420 -= v436;
          }

          while (v32);
        }
      }

      if (v554 != v556)
      {
        v426 = v556 - v554;
        v427 = *(v275 + 32);
        if (v427)
        {
          v429 = *v427;
          v428 = v427[1];
          if (*v427 - v428 >= v426)
          {
            v430 = v556 - v554;
          }

          else
          {
            v430 = *v427 - v428;
          }

          v427[1] = v428 + v426;
          if (v429 > v428 && v430 != 0)
          {
            goto LABEL_912;
          }
        }

        else
        {
          v430 = v556 - v554;
LABEL_912:
          v432 = *(v275 + 16);
          do
          {
            v433 = *(v275 + 8) - v432;
            if (v433 < v430 + 1)
            {
              (*(v275 + 24))(v275, v430 + 2);
              v432 = *(v275 + 16);
              v433 = *(v275 + 8) - v432;
            }

            if (v433 >= v430)
            {
              v434 = v430;
            }

            else
            {
              v434 = v433;
            }

            if (v434)
            {
              memmove((*v275 + v432), v406, v434);
              v432 = *(v275 + 16);
            }

            v432 += v434;
            *(v275 + 16) = v432;
            v406 = (v406 + v434);
            v32 = v430 > v433;
            v430 -= v434;
          }

          while (v32);
        }
      }

      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v275, v562, v560);
      v101 = v552;
      if (SHIBYTE(v571[2].__locale_) < 0)
      {
        operator delete(v571[0].__locale_);
      }

      std::locale::~locale(&v570);
LABEL_908:
      if (v572[1].__locale_ >= 0x101)
      {
        operator delete(v572[2].__locale_);
      }

      *v101 = v275;
LABEL_1157:
      v533 = *MEMORY[0x1E69E9840];
      return;
    case 0xAu:
      v75 = *a2;
      v568[0].__locale_ = 0;
      LODWORD(v568[1].__locale_) = -1;
      BYTE4(v568[1].__locale_) = 32;
      *(&v568[1].__locale_ + 5) = 0;
      HIBYTE(v568[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_272;
      }

      v76 = *a1;
      v77 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v568, *a1, 63);
      if (BYTE1(v568[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v568[0].__locale_) > 0xCu || ((1 << SBYTE1(v568[0].__locale_)) & 0x1801) == 0)
        {
          goto LABEL_1238;
        }
      }

      else
      {
        if (LODWORD(v568[1].__locale_) != -1 || SWORD1(v568[0].__locale_) <= -1)
        {
          v79 = v568[1].__locale_;
        }

        else
        {
          v79 = 6;
        }

        LODWORD(v568[1].__locale_) = v79;
      }

      *v76 = v77;
LABEL_272:
      v133 = *(a1 + 8);
      v134 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v568, v133);
      v136 = v160;
      v137 = *&v75;
      if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_1223;
      }

      memset(&v572[1], 170, 0x410uLL);
      if (v136 == -1)
      {
        v162 = 1074;
      }

      else
      {
        v162 = v136;
      }

      v572[0].__locale_ = v162;
      if (v162 < 1075)
      {
        v163 = v162 + 316;
        v572[1].__locale_ = v163;
        if ((v162 + 316) < 0x401)
        {
          v164 = &v572[3];
          v162 = v136;
LABEL_281:
          v572[2].__locale_ = v164;
          *&v165 = 0xAAAAAAAAAAAAAAAALL;
          *(&v165 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v571[0].__locale_ = v165;
          *&v571[2].__locale_ = v165;
          if ((*&v75 & 0x8000000000000000) != 0)
          {
            v168 = 45;
          }

          else
          {
            v166 = (v134 >> 3) & 3;
            if (v166 == 2)
            {
              v168 = 43;
            }

            else
            {
              v167 = v164;
              if (v166 != 3)
              {
                goto LABEL_288;
              }

              v168 = 32;
            }
          }

          *v164 = v168;
          v167 = (v164 + 1);
LABEL_288:
          v169 = fabs(v75);
          if (BYTE1(v134) > 0xEu)
          {
            if (BYTE1(v134) - 15 < 2)
            {
              v571[0].__locale_ = v167;
              v173 = MEMORY[0x1E6927340](v167, v164 + v163, 2, v162, v169);
              v571[2].__locale_ = v173;
              v571[3].__locale_ = v173;
              if (v162)
              {
                v174 = v162 + 1;
              }

              else
              {
                v174 = 0;
              }

              v175 = (v173 - v174);
              goto LABEL_1086;
            }

            if (BYTE1(v134) == 17)
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v167;
              v176 = MEMORY[0x1E6927340](v167, v164 + v163, 3, v162, v169);
              v571[3].__locale_ = v176;
              v177 = (v167 + 1);
              if ((v167 + 1) != v176)
              {
                v178 = v176 - v177;
                if (v176 - v177 >= 4)
                {
                  v179 = 6;
                  if (v178 < 6)
                  {
                    v179 = v176 - v177;
                  }

                  v180 = -v179;
                  while (*(v176 + v180) != 101)
                  {
                    if (++v180 == -3)
                    {
                      goto LABEL_390;
                    }
                  }

                  goto LABEL_560;
                }

                goto LABEL_390;
              }
            }

            else
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v167;
              v176 = MEMORY[0x1E6927340](v167, v164 + v163, 3, v162, v169);
              v571[3].__locale_ = v176;
              v177 = (v167 + 1);
              if ((v167 + 1) != v176)
              {
                v178 = v176 - v177;
                if (v176 - v177 >= 4)
                {
                  v203 = 6;
                  if (v178 < 6)
                  {
                    v203 = v176 - v177;
                  }

                  v204 = -v203;
                  while (*(v176 + v204) != 101)
                  {
                    if (++v204 == -3)
                    {
                      goto LABEL_390;
                    }
                  }

                  if (*v177 != 46)
                  {
                    v177 = v176;
                  }

                  v571[1].__locale_ = v177;
                  v571[2].__locale_ = (v176 + v204);
                  *(v176 + v204) = 69;
                  goto LABEL_1087;
                }

LABEL_390:
                v571[2].__locale_ = v176;
                v205 = v176;
                v206 = memchr(v177, 46, v178);
                if (v206)
                {
                  v175 = v206;
                }

                else
                {
                  v175 = v205;
                }

LABEL_1086:
                v571[1].__locale_ = v175;
                goto LABEL_1087;
              }
            }
          }

          else
          {
            if (BYTE1(v134) > 0xBu)
            {
              if (BYTE1(v134) != 12)
              {
                if (BYTE1(v134) == 13)
                {
                  v571[0].__locale_ = v167;
                  v170 = MEMORY[0x1E6927340](v167, v164 + v163, 1, v162, v169);
                  v571[3].__locale_ = v170;
                  if (*(v167 + 1) == 46)
                  {
                    v571[1].__locale_ = (v167 + 1);
                    v171 = v170 - v167 - 2;
                    if (v171 < 4)
                    {
LABEL_299:
                      v571[2].__locale_ = v170;
                    }

                    else
                    {
                      if (v171 >= 6)
                      {
                        v171 = 6;
                      }

                      v172 = -v171;
                      while (*(v170 + v172) != 101)
                      {
                        if (++v172 == -3)
                        {
                          goto LABEL_299;
                        }
                      }

                      v571[2].__locale_ = (v170 + v172);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v170;
                    v571[2].__locale_ = (v167 + 1);
                  }
                }

                else
                {
                  v571[0].__locale_ = v167;
                  v211 = MEMORY[0x1E6927340](v167, v164 + v163, 1, v162, v169);
                  v571[3].__locale_ = v211;
                  v212 = (v167 + 1);
                  if (*(v167 + 1) == 46)
                  {
                    v571[1].__locale_ = (v167 + 1);
                    v213 = v211 - v167 - 2;
                    if (v213 < 4)
                    {
LABEL_408:
                      v212 = v211;
                    }

                    else
                    {
                      if (v213 >= 6)
                      {
                        v213 = 6;
                      }

                      v214 = -v213;
                      while (*(v211 + v214) != 101)
                      {
                        if (++v214 == -3)
                        {
                          goto LABEL_408;
                        }
                      }

                      v212 = (v211 + v214);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v211;
                  }

                  v571[2].__locale_ = v212;
                  *v212 = 69;
                }

                goto LABEL_1087;
              }

              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v167;
              if ((v136 & 0x80000000) != 0 || v162 == -1)
              {
                v198 = std::to_chars();
              }

              else
              {
                v198 = MEMORY[0x1E6927340](v167, v164 + v163, 4, v162, v169);
              }

              v571[3].__locale_ = v198;
              v226 = (v167 + 1);
              if (*(v167 + 1) == 46)
              {
                v227 = (v198 - 2);
                v228 = memchr(v198 - 6, 112, 4uLL);
                if (v228)
                {
                  v229 = v228;
                }

                else
                {
                  v229 = v227;
                }

                v571[1].__locale_ = (v167 + 1);
                v571[2].__locale_ = v229;
                v226 = v229;
                if (v229 == v167)
                {
LABEL_509:
                  *v226 = 80;
                  goto LABEL_1087;
                }
              }

              else
              {
                v571[1].__locale_ = v198;
                v571[2].__locale_ = (v167 + 1);
              }

              do
              {
                v233 = *v167;
                if ((v233 - 97) < 6)
                {
                  LOBYTE(v233) = v233 - 32;
                }

                *v167 = v233;
                v167 = (v167 + 1);
              }

              while (v167 != v226);
              goto LABEL_509;
            }

            if (BYTE1(v134))
            {
              v571[0].__locale_ = v167;
              if ((v136 & 0x80000000) != 0)
              {
                v216 = std::to_chars();
              }

              else
              {
                v216 = MEMORY[0x1E6927340](v167, v164 + v163, 4, v162, v169);
              }

              v571[3].__locale_ = v216;
              v254 = *(v167 + 1);
              v253 = (v167 + 1);
              if (v254 == 46)
              {
                v255 = (v216 - 2);
                v256 = memchr(v216 - 6, 112, 4uLL);
                v216 = v253;
                if (v256)
                {
                  v253 = v256;
                }

                else
                {
                  v253 = v255;
                }
              }

              v571[1].__locale_ = v216;
              v571[2].__locale_ = v253;
              goto LABEL_1087;
            }

            if ((v136 & 0x80000000) != 0)
            {
              v571[0].__locale_ = v167;
              v248 = std::to_chars(v167, v164 + v163, v161, v169);
              v249 = v248;
              v571[3].__locale_ = v248;
              v250 = v248 - v167;
              if (v248 - v167 < 4)
              {
LABEL_547:
                v252 = v248;
              }

              else
              {
                if (v250 >= 6)
                {
                  v250 = 6;
                }

                v251 = -v250;
                while (*(v248 + v251) != 101)
                {
                  if (++v251 == -3)
                  {
                    goto LABEL_547;
                  }
                }

                v252 = (v248 + v251);
              }

              v571[2].__locale_ = v252;
              v498 = memchr(v167 + 1, 46, v252 - (v167 + 1));
              if (v498)
              {
                v175 = v498;
              }

              else
              {
                v175 = v252;
              }

              if (v175 == v252)
              {
                v175 = v249;
              }

              goto LABEL_1086;
            }

            HIDWORD(v572[0].__locale_) = 0;
            v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[0].__locale_ = v167;
            v176 = MEMORY[0x1E6927340](v167, v164 + v163, 3, v162, v169);
            v571[3].__locale_ = v176;
            v177 = (v167 + 1);
            if ((v167 + 1) != v176)
            {
              v178 = v176 - v177;
              if (v176 - v177 >= 4)
              {
                v181 = 6;
                if (v178 < 6)
                {
                  v181 = v176 - v177;
                }

                v180 = -v181;
                while (*(v176 + v180) != 101)
                {
                  if (++v180 == -3)
                  {
                    goto LABEL_390;
                  }
                }

LABEL_560:
                v258 = (v176 + v180);
                if (*v177 != 46)
                {
                  v177 = v176;
                }

                v571[1].__locale_ = v177;
                v571[2].__locale_ = v258;
                goto LABEL_1087;
              }

              goto LABEL_390;
            }
          }

          v571[1].__locale_ = v176;
          v571[2].__locale_ = v176;
LABEL_1087:
          if ((v134 & 0x20) != 0)
          {
            v499 = v571[1].__locale_;
            v500 = v571[3].__locale_;
            if (v571[1].__locale_ == v571[3].__locale_)
            {
              v502 = ++v571[3].__locale_;
              *v500 = 46;
              v501 = v571[2].__locale_;
              if (v571[2].__locale_ != v499)
              {
                if ((v571[2].__locale_ + 1) == v499)
                {
                  v503 = *v571[2].__locale_;
                  *v571[2].__locale_ = *(v571[2].__locale_ + 1);
                  *(v501 + 1) = v503;
                }

                else
                {
                  memmove(v502 - (v499 - v571[2].__locale_), v571[2].__locale_, v499 - v571[2].__locale_);
                  *v501 = 46;
                }
              }

              v571[1].__locale_ = v501;
              v571[2].__locale_ = (v501 + 1);
              v500 = v502;
            }

            else
            {
              v501 = v571[1].__locale_;
            }

            if (BYTE1(v134) - 17 <= 1)
            {
              if (v136 <= 1)
              {
                v504 = 1;
              }

              else
              {
                v504 = v136;
              }

              if ((v136 & 0x80000000) != 0)
              {
                v504 = 6;
              }

              if (v571[2].__locale_ == v500)
              {
                v505 = LODWORD(v571[0].__locale_) - v501;
              }

              else
              {
                v505 = -1;
              }

              v506 = v505 + v504;
              v507 = v571[2].__locale_ + ~v501;
              if (v507 < v506)
              {
                HIDWORD(v572[0].__locale_) += v506 - v507;
              }
            }
          }

          if ((v134 & 0x40) == 0)
          {
            v450 = v571[3].__locale_;
            v451 = v572[2].__locale_;
            v452 = v571[3].__locale_ - v572[2].__locale_;
            v453 = SHIDWORD(v572[0].__locale_);
            if (v571[3].__locale_ - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) < v134 >> 32)
            {
              v454 = *v133;
              if ((v134 & 7) == 4)
              {
                if (v572[2].__locale_ != v571[0].__locale_)
                {
                  v508 = *v572[2].__locale_;
                  v509 = *(v454 + 32);
                  if (!v509 || (v511 = *v509, v510 = v509[1], v509[1] = v510 + 1, v510 < v511))
                  {
                    v512 = *v454;
                    v513 = *(v454 + 16);
                    *(v454 + 16) = v513 + 1;
                    *(v512 + v513) = v508;
                    if (*(v454 + 16) == *(v454 + 8))
                    {
                      (*(v454 + 24))(v454, 2);
                    }
                  }

                  v451 = (v451 + 1);
                }

                v514 = v134 & 0xB8 | 3;
                v515 = 48;
              }

              else
              {
                v514 = v134;
                v515 = BYTE4(v136);
              }

              v480 = v134 & 0xFFFFFFFFFFFFFF00 | v514;
              v481 = v136 & 0xFFFFFF00FFFFFFFFLL | (v515 << 32);
              if (v453)
              {
LABEL_1012:
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v451, v450, v454, v480, v481, v452, v571[2].__locale_, v453);
LABEL_1154:
                if (v572[1].__locale_ >= 0x401)
                {
                  operator delete(v572[2].__locale_);
                }

                *v133 = v454;
                goto LABEL_1157;
              }

LABEL_1034:
              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v451, v450 - v451, v454, v480, v481, v452);
              goto LABEL_1154;
            }

            if (HIDWORD(v572[0].__locale_))
            {
              v517 = v571[2].__locale_;
              if (v571[2].__locale_ != v571[3].__locale_)
              {
                v454 = *v133;
                v518 = v571[2].__locale_ - v572[2].__locale_;
                v519 = *(*v133 + 32);
                if (v519)
                {
                  v520 = *v519;
                  v521 = v519[1];
                  if (*v519 - v521 >= v518)
                  {
                    v522 = v571[2].__locale_ - v572[2].__locale_;
                  }

                  else
                  {
                    v522 = *v519 - v521;
                  }

                  v32 = v520 > v521;
                  v523 = v521 + v518;
                  v519[1] = v523;
                  if (!v32 || v522 == 0)
                  {
                    goto LABEL_1190;
                  }
                }

                else
                {
                  v522 = v571[2].__locale_ - v572[2].__locale_;
                }

                v538 = *(v454 + 16);
                do
                {
                  v539 = *(v454 + 8) - v538;
                  if (v539 < v522 + 1)
                  {
                    (*(v454 + 24))(v454, v522 + 2);
                    v538 = *(v454 + 16);
                    v539 = *(v454 + 8) - v538;
                  }

                  if (v539 >= v522)
                  {
                    v540 = v522;
                  }

                  else
                  {
                    v540 = v539;
                  }

                  if (v540)
                  {
                    memmove((*v454 + v538), v451, v540);
                    v538 = *(v454 + 16);
                  }

                  v538 += v540;
                  *(v454 + 16) = v538;
                  v451 = (v451 + v540);
                  v32 = v522 > v539;
                  v522 -= v540;
                }

                while (v32);
                v519 = *(v454 + 32);
                if (!v519)
                {
                  goto LABEL_1197;
                }

                v520 = *v519;
                v523 = v519[1];
LABEL_1190:
                v541 = v523 + v453;
                v519[1] = v523 + v453;
                v343 = v520 >= v523;
                v542 = v520 - v523;
                if (v542 == 0 || !v343)
                {
                  v545 = v450 - v517;
                  goto LABEL_1206;
                }

                if (v542 < v453)
                {
                  v453 = v542;
                }

                v538 = *(v454 + 16);
                do
                {
LABEL_1197:
                  v543 = *(v454 + 8) - v538;
                  if (v543 < v453 + 1)
                  {
                    (*(v454 + 24))(v454, v453 + 2);
                    v538 = *(v454 + 16);
                    v543 = *(v454 + 8) - v538;
                  }

                  if (v543 >= v453)
                  {
                    v544 = v453;
                  }

                  else
                  {
                    v544 = v543;
                  }

                  if (v544)
                  {
                    memset((*v454 + v538), 48, v544);
                    v538 = *(v454 + 16);
                  }

                  v538 += v544;
                  *(v454 + 16) = v538;
                  v32 = v453 > v543;
                  v453 -= v544;
                }

                while (v32);
                v519 = *(v454 + 32);
                v545 = v450 - v517;
                if (!v519)
                {
                  do
                  {
LABEL_1215:
                    v548 = *(v454 + 8) - v538;
                    if (v548 < v545 + 1)
                    {
                      (*(v454 + 24))(v454, v545 + 2);
                      v538 = *(v454 + 16);
                      v548 = *(v454 + 8) - v538;
                    }

                    if (v548 >= v545)
                    {
                      v549 = v545;
                    }

                    else
                    {
                      v549 = v548;
                    }

                    if (v549)
                    {
                      memmove((*v454 + v538), v517, v549);
                      v538 = *(v454 + 16);
                    }

                    v538 += v549;
                    *(v454 + 16) = v538;
                    v517 = (v517 + v549);
                    v32 = v545 > v548;
                    v545 -= v549;
                  }

                  while (v32);
                  goto LABEL_1154;
                }

                v520 = *v519;
                v541 = v519[1];
LABEL_1206:
                v546 = v520 - v541;
                if (v520 - v541 >= v545)
                {
                  v546 = v545;
                }

                v519[1] = v545 + v541;
                if (v520 <= v541 || v546 == 0)
                {
                  goto LABEL_1154;
                }

                v538 = *(v454 + 16);
                v545 = v546;
                goto LABEL_1215;
              }
            }

            v454 = *v133;
            v525 = *(*v133 + 32);
            if (!v525)
            {
              goto LABEL_1138;
            }

            v526 = *v525;
            v527 = v525[1];
            v528 = v527 + v452;
            if (*v525 - v527 < v452)
            {
              v452 = *v525 - v527;
            }

            v525[1] = v528;
            if (v526 > v527 && v452 != 0)
            {
LABEL_1138:
              v530 = *(v454 + 16);
              do
              {
                v531 = *(v454 + 8) - v530;
                if (v531 < v452 + 1)
                {
                  (*(v454 + 24))(v454, v452 + 2);
                  v530 = *(v454 + 16);
                  v531 = *(v454 + 8) - v530;
                }

                if (v531 >= v452)
                {
                  v532 = v452;
                }

                else
                {
                  v532 = v531;
                }

                if (v532)
                {
                  memmove((*v454 + v530), v451, v532);
                  v530 = *(v454 + 16);
                }

                v530 += v532;
                *(v454 + 16) = v530;
                v451 = (v451 + v532);
                v32 = v452 > v531;
                v452 -= v532;
              }

              while (v32);
              v525 = *(v454 + 32);
              if (!v525)
              {
                do
                {
LABEL_1169:
                  v536 = *(v454 + 8) - v530;
                  if (v536 < v453 + 1)
                  {
                    (*(v454 + 24))(v454, v453 + 2);
                    v530 = *(v454 + 16);
                    v536 = *(v454 + 8) - v530;
                  }

                  if (v536 >= v453)
                  {
                    v537 = v453;
                  }

                  else
                  {
                    v537 = v536;
                  }

                  if (v537)
                  {
                    memset((*v454 + v530), 48, v537);
                    v530 = *(v454 + 16);
                  }

                  v530 += v537;
                  *(v454 + 16) = v530;
                  v32 = v453 > v536;
                  v453 -= v537;
                }

                while (v32);
                goto LABEL_1154;
              }

              v526 = *v525;
              v528 = v525[1];
            }

            v534 = v526 - v528;
            if (v526 - v528 >= v453)
            {
              v534 = v453;
            }

            v525[1] = v528 + v453;
            if (v526 <= v528 || v534 == 0)
            {
              goto LABEL_1154;
            }

            v530 = *(v454 + 16);
            v453 = v534;
            goto LABEL_1169;
          }

          v454 = *v133;
          if ((*(v133 + 40) & 1) == 0)
          {
            MEMORY[0x1E69272B0](&v563);
            v516 = (v133 + 32);
            if (*(v133 + 40) == 1)
            {
              std::locale::operator=(v516, &v563);
            }

            else
            {
              std::locale::locale(v516, &v563);
              *(v133 + 40) = 1;
            }

            std::locale::~locale(&v563);
          }

LABEL_1153:
          std::locale::locale(&v570, (v133 + 32));
          std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v454, v572, v571, &v570, v134, v136);
          std::locale::~locale(&v570);
          goto LABEL_1154;
        }
      }

      else
      {
        LODWORD(v572[0].__locale_) = 1074;
        HIDWORD(v572[0].__locale_) = v162 - 1074;
        v163 = 1390;
        v572[1].__locale_ = 1390;
        v162 = 1074;
      }

      v164 = operator new(v163);
      goto LABEL_281;
    case 0xBu:
      v65 = *a2;
      v568[0].__locale_ = 0;
      LODWORD(v568[1].__locale_) = -1;
      BYTE4(v568[1].__locale_) = 32;
      *(&v568[1].__locale_ + 5) = 0;
      HIBYTE(v568[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_215;
      }

      v66 = *a1;
      v67 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v568, *a1, 63);
      if (BYTE1(v568[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v568[0].__locale_) > 0xCu || ((1 << SBYTE1(v568[0].__locale_)) & 0x1801) == 0)
        {
          goto LABEL_1238;
        }
      }

      else
      {
        if (LODWORD(v568[1].__locale_) != -1 || SWORD1(v568[0].__locale_) <= -1)
        {
          v69 = v568[1].__locale_;
        }

        else
        {
          v69 = 6;
        }

        LODWORD(v568[1].__locale_) = v69;
      }

      *v66 = v67;
LABEL_215:
      v133 = *(a1 + 8);
      v134 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v568, v133);
      v136 = v135;
      v137 = *&v65;
      if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
LABEL_1223:
        *v133 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v133, v134, v136, v137 < 0, 0);
        goto LABEL_1157;
      }

      memset(&v572[1], 170, 0x410uLL);
      if (v136 == -1)
      {
        v139 = 1074;
      }

      else
      {
        v139 = v136;
      }

      v572[0].__locale_ = v139;
      if (v139 < 1075)
      {
        v140 = v139 + 316;
        v572[1].__locale_ = v140;
        if ((v139 + 316) < 0x401)
        {
          v141 = &v572[3];
          v139 = v136;
LABEL_224:
          v572[2].__locale_ = v141;
          *&v142 = 0xAAAAAAAAAAAAAAAALL;
          *(&v142 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v571[0].__locale_ = v142;
          *&v571[2].__locale_ = v142;
          if ((*&v65 & 0x8000000000000000) != 0)
          {
            v145 = 45;
          }

          else
          {
            v143 = (v134 >> 3) & 3;
            if (v143 == 2)
            {
              v145 = 43;
            }

            else
            {
              v144 = v141;
              if (v143 != 3)
              {
                goto LABEL_231;
              }

              v145 = 32;
            }
          }

          *v141 = v145;
          v144 = (v141 + 1);
LABEL_231:
          v146 = fabs(v65);
          if (BYTE1(v134) > 0xEu)
          {
            if (BYTE1(v134) - 15 < 2)
            {
              v571[0].__locale_ = v144;
              v150 = MEMORY[0x1E6927370](v144, v141 + v140, 2, v139, v146);
              v571[2].__locale_ = v150;
              v571[3].__locale_ = v150;
              if (v139)
              {
                v151 = v139 + 1;
              }

              else
              {
                v151 = 0;
              }

              v152 = (v150 - v151);
              goto LABEL_948;
            }

            if (BYTE1(v134) == 17)
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v144;
              v153 = MEMORY[0x1E6927370](v144, v141 + v140, 3, v139, v146);
              v571[3].__locale_ = v153;
              v154 = (v144 + 1);
              if ((v144 + 1) != v153)
              {
                v155 = v153 - v154;
                if (v153 - v154 >= 4)
                {
                  v156 = 6;
                  if (v155 < 6)
                  {
                    v156 = v153 - v154;
                  }

                  v157 = -v156;
                  while (*(v153 + v157) != 101)
                  {
                    if (++v157 == -3)
                    {
                      goto LABEL_380;
                    }
                  }

                  goto LABEL_557;
                }

                goto LABEL_380;
              }
            }

            else
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v144;
              v153 = MEMORY[0x1E6927370](v144, v141 + v140, 3, v139, v146);
              v571[3].__locale_ = v153;
              v154 = (v144 + 1);
              if ((v144 + 1) != v153)
              {
                v155 = v153 - v154;
                if (v153 - v154 >= 4)
                {
                  v199 = 6;
                  if (v155 < 6)
                  {
                    v199 = v153 - v154;
                  }

                  v200 = -v199;
                  while (*(v153 + v200) != 101)
                  {
                    if (++v200 == -3)
                    {
                      goto LABEL_380;
                    }
                  }

                  if (*v154 != 46)
                  {
                    v154 = v153;
                  }

                  v571[1].__locale_ = v154;
                  v571[2].__locale_ = (v153 + v200);
                  *(v153 + v200) = 69;
LABEL_949:
                  if ((v134 & 0x20) != 0)
                  {
                    v441 = v571[1].__locale_;
                    v442 = v571[3].__locale_;
                    if (v571[1].__locale_ == v571[3].__locale_)
                    {
                      v444 = ++v571[3].__locale_;
                      *v442 = 46;
                      v443 = v571[2].__locale_;
                      if (v571[2].__locale_ != v441)
                      {
                        if ((v571[2].__locale_ + 1) == v441)
                        {
                          v445 = *v571[2].__locale_;
                          *v571[2].__locale_ = *(v571[2].__locale_ + 1);
                          *(v443 + 1) = v445;
                        }

                        else
                        {
                          memmove(v444 - (v441 - v571[2].__locale_), v571[2].__locale_, v441 - v571[2].__locale_);
                          *v443 = 46;
                        }
                      }

                      v571[1].__locale_ = v443;
                      v571[2].__locale_ = (v443 + 1);
                      v442 = v444;
                    }

                    else
                    {
                      v443 = v571[1].__locale_;
                    }

                    if (BYTE1(v134) - 17 <= 1)
                    {
                      if (v136 <= 1)
                      {
                        v446 = 1;
                      }

                      else
                      {
                        v446 = v136;
                      }

                      if ((v136 & 0x80000000) != 0)
                      {
                        v446 = 6;
                      }

                      if (v571[2].__locale_ == v442)
                      {
                        v447 = LODWORD(v571[0].__locale_) - v443;
                      }

                      else
                      {
                        v447 = -1;
                      }

                      v448 = v447 + v446;
                      v449 = v571[2].__locale_ + ~v443;
                      if (v449 < v448)
                      {
                        HIDWORD(v572[0].__locale_) += v448 - v449;
                      }
                    }
                  }

                  if ((v134 & 0x40) != 0)
                  {
                    v454 = *v133;
                    if ((*(v133 + 40) & 1) == 0)
                    {
                      MEMORY[0x1E69272B0](&v563);
                      v463 = (v133 + 32);
                      if (*(v133 + 40) == 1)
                      {
                        std::locale::operator=(v463, &v563);
                      }

                      else
                      {
                        std::locale::locale(v463, &v563);
                        *(v133 + 40) = 1;
                      }

                      std::locale::~locale(&v563);
                    }

                    goto LABEL_1153;
                  }

                  v450 = v571[3].__locale_;
                  v451 = v572[2].__locale_;
                  v452 = v571[3].__locale_ - v572[2].__locale_;
                  v453 = SHIDWORD(v572[0].__locale_);
                  if (v571[3].__locale_ - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) < v134 >> 32)
                  {
                    v454 = *v133;
                    if ((v134 & 7) == 4)
                    {
                      if (v572[2].__locale_ != v571[0].__locale_)
                      {
                        v455 = *v572[2].__locale_;
                        v456 = *(v454 + 32);
                        if (!v456 || (v458 = *v456, v457 = v456[1], v456[1] = v457 + 1, v457 < v458))
                        {
                          v459 = *v454;
                          v460 = *(v454 + 16);
                          *(v454 + 16) = v460 + 1;
                          *(v459 + v460) = v455;
                          if (*(v454 + 16) == *(v454 + 8))
                          {
                            (*(v454 + 24))(v454, 2);
                          }
                        }

                        v451 = (v451 + 1);
                      }

                      v461 = v134 & 0xB8 | 3;
                      v462 = 48;
                    }

                    else
                    {
                      v461 = v134;
                      v462 = BYTE4(v136);
                    }

                    v480 = v134 & 0xFFFFFFFFFFFFFF00 | v461;
                    v481 = v136 & 0xFFFFFF00FFFFFFFFLL | (v462 << 32);
                    if (v453)
                    {
                      goto LABEL_1012;
                    }

                    goto LABEL_1034;
                  }

                  if (HIDWORD(v572[0].__locale_))
                  {
                    v464 = v571[2].__locale_;
                    if (v571[2].__locale_ != v571[3].__locale_)
                    {
                      v454 = *v133;
                      v465 = v571[2].__locale_ - v572[2].__locale_;
                      v466 = *(*v133 + 32);
                      if (v466)
                      {
                        v467 = *v466;
                        v468 = v466[1];
                        if (*v466 - v468 >= v465)
                        {
                          v469 = v571[2].__locale_ - v572[2].__locale_;
                        }

                        else
                        {
                          v469 = *v466 - v468;
                        }

                        v32 = v467 > v468;
                        v470 = v468 + v465;
                        v466[1] = v470;
                        if (!v32 || v469 == 0)
                        {
                          goto LABEL_1048;
                        }
                      }

                      else
                      {
                        v469 = v571[2].__locale_ - v572[2].__locale_;
                      }

                      v486 = *(v454 + 16);
                      do
                      {
                        v487 = *(v454 + 8) - v486;
                        if (v487 < v469 + 1)
                        {
                          (*(v454 + 24))(v454, v469 + 2);
                          v486 = *(v454 + 16);
                          v487 = *(v454 + 8) - v486;
                        }

                        if (v487 >= v469)
                        {
                          v488 = v469;
                        }

                        else
                        {
                          v488 = v487;
                        }

                        if (v488)
                        {
                          memmove((*v454 + v486), v451, v488);
                          v486 = *(v454 + 16);
                        }

                        v486 += v488;
                        *(v454 + 16) = v486;
                        v451 = (v451 + v488);
                        v32 = v469 > v487;
                        v469 -= v488;
                      }

                      while (v32);
                      v466 = *(v454 + 32);
                      if (!v466)
                      {
                        goto LABEL_1055;
                      }

                      v467 = *v466;
                      v470 = v466[1];
LABEL_1048:
                      v489 = v470 + v453;
                      v466[1] = v470 + v453;
                      v343 = v467 >= v470;
                      v490 = v467 - v470;
                      if (v490 == 0 || !v343)
                      {
                        v493 = v450 - v464;
                        goto LABEL_1064;
                      }

                      if (v490 < v453)
                      {
                        v453 = v490;
                      }

                      v486 = *(v454 + 16);
                      do
                      {
LABEL_1055:
                        v491 = *(v454 + 8) - v486;
                        if (v491 < v453 + 1)
                        {
                          (*(v454 + 24))(v454, v453 + 2);
                          v486 = *(v454 + 16);
                          v491 = *(v454 + 8) - v486;
                        }

                        if (v491 >= v453)
                        {
                          v492 = v453;
                        }

                        else
                        {
                          v492 = v491;
                        }

                        if (v492)
                        {
                          memset((*v454 + v486), 48, v492);
                          v486 = *(v454 + 16);
                        }

                        v486 += v492;
                        *(v454 + 16) = v486;
                        v32 = v453 > v491;
                        v453 -= v492;
                      }

                      while (v32);
                      v466 = *(v454 + 32);
                      v493 = v450 - v464;
                      if (!v466)
                      {
                        do
                        {
LABEL_1073:
                          v496 = *(v454 + 8) - v486;
                          if (v496 < v493 + 1)
                          {
                            (*(v454 + 24))(v454, v493 + 2);
                            v486 = *(v454 + 16);
                            v496 = *(v454 + 8) - v486;
                          }

                          if (v496 >= v493)
                          {
                            v497 = v493;
                          }

                          else
                          {
                            v497 = v496;
                          }

                          if (v497)
                          {
                            memmove((*v454 + v486), v464, v497);
                            v486 = *(v454 + 16);
                          }

                          v486 += v497;
                          *(v454 + 16) = v486;
                          v464 = (v464 + v497);
                          v32 = v493 > v496;
                          v493 -= v497;
                        }

                        while (v32);
                        goto LABEL_1154;
                      }

                      v467 = *v466;
                      v489 = v466[1];
LABEL_1064:
                      v494 = v467 - v489;
                      if (v467 - v489 >= v493)
                      {
                        v494 = v493;
                      }

                      v466[1] = v493 + v489;
                      if (v467 <= v489 || v494 == 0)
                      {
                        goto LABEL_1154;
                      }

                      v486 = *(v454 + 16);
                      v493 = v494;
                      goto LABEL_1073;
                    }
                  }

                  v454 = *v133;
                  v472 = *(*v133 + 32);
                  if (!v472)
                  {
                    goto LABEL_1000;
                  }

                  v473 = *v472;
                  v474 = v472[1];
                  v475 = v474 + v452;
                  if (*v472 - v474 < v452)
                  {
                    v452 = *v472 - v474;
                  }

                  v472[1] = v475;
                  if (v473 > v474 && v452 != 0)
                  {
LABEL_1000:
                    v477 = *(v454 + 16);
                    do
                    {
                      v478 = *(v454 + 8) - v477;
                      if (v478 < v452 + 1)
                      {
                        (*(v454 + 24))(v454, v452 + 2);
                        v477 = *(v454 + 16);
                        v478 = *(v454 + 8) - v477;
                      }

                      if (v478 >= v452)
                      {
                        v479 = v452;
                      }

                      else
                      {
                        v479 = v478;
                      }

                      if (v479)
                      {
                        memmove((*v454 + v477), v451, v479);
                        v477 = *(v454 + 16);
                      }

                      v477 += v479;
                      *(v454 + 16) = v477;
                      v451 = (v451 + v479);
                      v32 = v452 > v478;
                      v452 -= v479;
                    }

                    while (v32);
                    v472 = *(v454 + 32);
                    if (!v472)
                    {
                      do
                      {
LABEL_1027:
                        v484 = *(v454 + 8) - v477;
                        if (v484 < v453 + 1)
                        {
                          (*(v454 + 24))(v454, v453 + 2);
                          v477 = *(v454 + 16);
                          v484 = *(v454 + 8) - v477;
                        }

                        if (v484 >= v453)
                        {
                          v485 = v453;
                        }

                        else
                        {
                          v485 = v484;
                        }

                        if (v485)
                        {
                          memset((*v454 + v477), 48, v485);
                          v477 = *(v454 + 16);
                        }

                        v477 += v485;
                        *(v454 + 16) = v477;
                        v32 = v453 > v484;
                        v453 -= v485;
                      }

                      while (v32);
                      goto LABEL_1154;
                    }

                    v473 = *v472;
                    v475 = v472[1];
                  }

                  v482 = v473 - v475;
                  if (v473 - v475 >= v453)
                  {
                    v482 = v453;
                  }

                  v472[1] = v475 + v453;
                  if (v473 <= v475 || v482 == 0)
                  {
                    goto LABEL_1154;
                  }

                  v477 = *(v454 + 16);
                  v453 = v482;
                  goto LABEL_1027;
                }

LABEL_380:
                v571[2].__locale_ = v153;
                v201 = v153;
                v202 = memchr(v154, 46, v155);
                if (v202)
                {
                  v152 = v202;
                }

                else
                {
                  v152 = v201;
                }

LABEL_948:
                v571[1].__locale_ = v152;
                goto LABEL_949;
              }
            }
          }

          else
          {
            if (BYTE1(v134) > 0xBu)
            {
              if (BYTE1(v134) != 12)
              {
                if (BYTE1(v134) == 13)
                {
                  v571[0].__locale_ = v144;
                  v147 = MEMORY[0x1E6927370](v144, v141 + v140, 1, v139, v146);
                  v571[3].__locale_ = v147;
                  if (*(v144 + 1) == 46)
                  {
                    v571[1].__locale_ = (v144 + 1);
                    v148 = v147 - v144 - 2;
                    if (v148 < 4)
                    {
LABEL_242:
                      v571[2].__locale_ = v147;
                    }

                    else
                    {
                      if (v148 >= 6)
                      {
                        v148 = 6;
                      }

                      v149 = -v148;
                      while (*(v147 + v149) != 101)
                      {
                        if (++v149 == -3)
                        {
                          goto LABEL_242;
                        }
                      }

                      v571[2].__locale_ = (v147 + v149);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v147;
                    v571[2].__locale_ = (v144 + 1);
                  }
                }

                else
                {
                  v571[0].__locale_ = v144;
                  v207 = MEMORY[0x1E6927370](v144, v141 + v140, 1, v139, v146);
                  v571[3].__locale_ = v207;
                  v208 = (v144 + 1);
                  if (*(v144 + 1) == 46)
                  {
                    v571[1].__locale_ = (v144 + 1);
                    v209 = v207 - v144 - 2;
                    if (v209 < 4)
                    {
LABEL_400:
                      v208 = v207;
                    }

                    else
                    {
                      if (v209 >= 6)
                      {
                        v209 = 6;
                      }

                      v210 = -v209;
                      while (*(v207 + v210) != 101)
                      {
                        if (++v210 == -3)
                        {
                          goto LABEL_400;
                        }
                      }

                      v208 = (v207 + v210);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v207;
                  }

                  v571[2].__locale_ = v208;
                  *v208 = 69;
                }

                goto LABEL_949;
              }

              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v144;
              if ((v136 & 0x80000000) != 0 || v139 == -1)
              {
                v197 = std::to_chars();
              }

              else
              {
                v197 = MEMORY[0x1E6927370](v144, v141 + v140, 4, v139, v146);
              }

              v571[3].__locale_ = v197;
              v222 = (v144 + 1);
              if (*(v144 + 1) == 46)
              {
                v223 = (v197 - 2);
                v224 = memchr(v197 - 6, 112, 4uLL);
                if (v224)
                {
                  v225 = v224;
                }

                else
                {
                  v225 = v223;
                }

                v571[1].__locale_ = (v144 + 1);
                v571[2].__locale_ = v225;
                v222 = v225;
                if (v225 == v144)
                {
LABEL_504:
                  *v222 = 80;
                  goto LABEL_949;
                }
              }

              else
              {
                v571[1].__locale_ = v197;
                v571[2].__locale_ = (v144 + 1);
              }

              do
              {
                v232 = *v144;
                if ((v232 - 97) < 6)
                {
                  LOBYTE(v232) = v232 - 32;
                }

                *v144 = v232;
                v144 = (v144 + 1);
              }

              while (v144 != v222);
              goto LABEL_504;
            }

            if (BYTE1(v134))
            {
              v571[0].__locale_ = v144;
              if ((v136 & 0x80000000) != 0)
              {
                v215 = std::to_chars();
              }

              else
              {
                v215 = MEMORY[0x1E6927370](v144, v141 + v140, 4, v139, v146);
              }

              v571[3].__locale_ = v215;
              v245 = *(v144 + 1);
              v244 = (v144 + 1);
              if (v245 == 46)
              {
                v246 = (v215 - 2);
                v247 = memchr(v215 - 6, 112, 4uLL);
                v215 = v244;
                if (v247)
                {
                  v244 = v247;
                }

                else
                {
                  v244 = v246;
                }
              }

              v571[1].__locale_ = v215;
              v571[2].__locale_ = v244;
              goto LABEL_949;
            }

            if ((v136 & 0x80000000) != 0)
            {
              v571[0].__locale_ = v144;
              v239 = std::to_chars(v144, v141 + v140, v138, v146);
              v240 = v239;
              v571[3].__locale_ = v239;
              v241 = v239 - v144;
              if (v239 - v144 < 4)
              {
LABEL_534:
                v243 = v239;
              }

              else
              {
                if (v241 >= 6)
                {
                  v241 = 6;
                }

                v242 = -v241;
                while (*(v239 + v242) != 101)
                {
                  if (++v242 == -3)
                  {
                    goto LABEL_534;
                  }
                }

                v243 = (v239 + v242);
              }

              v571[2].__locale_ = v243;
              v440 = memchr(v144 + 1, 46, v243 - (v144 + 1));
              if (v440)
              {
                v152 = v440;
              }

              else
              {
                v152 = v243;
              }

              if (v152 == v243)
              {
                v152 = v240;
              }

              goto LABEL_948;
            }

            HIDWORD(v572[0].__locale_) = 0;
            v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[0].__locale_ = v144;
            v153 = MEMORY[0x1E6927370](v144, v141 + v140, 3, v139, v146);
            v571[3].__locale_ = v153;
            v154 = (v144 + 1);
            if ((v144 + 1) != v153)
            {
              v155 = v153 - v154;
              if (v153 - v154 >= 4)
              {
                v158 = 6;
                if (v155 < 6)
                {
                  v158 = v153 - v154;
                }

                v157 = -v158;
                while (*(v153 + v157) != 101)
                {
                  if (++v157 == -3)
                  {
                    goto LABEL_380;
                  }
                }

LABEL_557:
                v257 = (v153 + v157);
                if (*v154 != 46)
                {
                  v154 = v153;
                }

                v571[1].__locale_ = v154;
                v571[2].__locale_ = v257;
                goto LABEL_949;
              }

              goto LABEL_380;
            }
          }

          v571[1].__locale_ = v153;
          v571[2].__locale_ = v153;
          goto LABEL_949;
        }
      }

      else
      {
        LODWORD(v572[0].__locale_) = 1074;
        HIDWORD(v572[0].__locale_) = v139 - 1074;
        v140 = 1390;
        v572[1].__locale_ = 1390;
        v139 = 1074;
      }

      v141 = operator new(v140);
      goto LABEL_224;
    case 0xCu:
      v80 = *a2;
      LODWORD(v572[0].__locale_) = 1;
      *(&v572[0].__locale_ + 4) = 0xFFFFFFFF00000000;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_128;
      }

      v81 = *a1;
      v82 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 40);
      if (BYTE1(v572[0].__locale_) >= 2u && BYTE1(v572[0].__locale_) != 19)
      {
        goto LABEL_1233;
      }

      *v81 = v82;
LABEL_128:
      v13 = *(a1 + 8);
      v83 = strlen(v80);
      v16 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v80, v83, v13);
      goto LABEL_136;
    case 0xDu:
      v17 = *a2;
      v18 = *(a2 + 1);
      LODWORD(v572[0].__locale_) = 1;
      *(&v572[0].__locale_ + 4) = 0xFFFFFFFF00000000;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_18;
      }

      v19 = *a1;
      v20 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 40);
      if (BYTE1(v572[0].__locale_) >= 2u && BYTE1(v572[0].__locale_) != 19)
      {
LABEL_1233:
        std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
      }

      *v19 = v20;
LABEL_18:
      v13 = *(a1 + 8);
      v16 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v17, v18, v13);
LABEL_136:
      *v13 = v16;
      goto LABEL_1157;
    case 0xEu:
      v9 = *a2;
      v571[0].__locale_ = 0;
      LODWORD(v571[1].__locale_) = -1;
      BYTE4(v571[1].__locale_) = 32;
      *(&v571[1].__locale_ + 5) = 0;
      HIBYTE(v571[1].__locale_) = 0;
      if (**(a1 + 16) == 1)
      {
        v10 = *a1;
        v11 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v571, *a1, 36);
        if (BYTE1(v571[0].__locale_) - 8 >= 2 && BYTE1(v571[0].__locale_) != 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *v10 = v11;
      }

      v13 = *(a1 + 8);
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v571, v13);
      v572[0].__locale_ = 0xAAAAAAAAAAAAAAAALL;
      v572[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
      *(&v572[1].__locale_ + 7) = -1431655766;
      if ((v14 & 0xFF00) == 0x900)
      {
        v16 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v9, v13, v14 & 0xFFFFFFFFFFFF00DFLL | 0x720, v15, v572, &v572[2].__locale_ + 3, "0X", 0x10u);
      }

      else
      {
        v16 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v9, v13, v14 & 0xFFFFFFFFFFFF00DFLL | 0x620, v15, v572, &v572[2].__locale_ + 3, "0x", 0x10u);
      }

      goto LABEL_136;
    case 0xFu:
      v84 = *a1;
      v85 = *a2;
      v86 = *(a2 + 1);
      v87 = *MEMORY[0x1E69E9840];
      v88 = *(a1 + 8);

      v86(v84, v88, v85);
      return;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void sub_1E537DCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, unint64_t a38, void *__p)
{
  if (a38 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v37[0] = *a2;
  v37[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v37) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v37[0];
  v10 = a3;
  if (v37[0] >= v3)
  {
    goto LABEL_9;
  }

  v11 = *v37[0];
  switch(v11)
  {
    case '<':
      v12 = 1;
LABEL_19:
      *a1 = *a1 & 0xF8 | v12;
      v14 = v9 - v4;
      if (v9 - v4 == 1)
      {
        v15 = *v4;
        if (v15 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }

        *(a1 + 12) = v15;
      }

      else if (v9 != v4)
      {
        memmove((a1 + 12), v4, v9 - v4);
        v10 = a3;
      }

      v4 += v14 + 1;
      if (v4 == v3)
      {
        return v4;
      }

      goto LABEL_25;
    case '>':
      v12 = 3;
      goto LABEL_19;
    case '^':
      v12 = 2;
      goto LABEL_19;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v13 = 1;
LABEL_15:
      *a1 = *a1 & 0xF8 | v13;
      if (++v4 == v3)
      {
        return v4;
      }

      break;
    case '>':
      v13 = 3;
      goto LABEL_15;
    case '^':
      v13 = 2;
      goto LABEL_15;
  }

LABEL_25:
  v16 = v10;
  if (v10)
  {
    v22 = *v4;
    switch(v22)
    {
      case ' ':
        *a1 |= 0x18u;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '+':
        *a1 = *a1 & 0xE7 | 0x10;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '-':
        *a1 = *a1 & 0xE7 | 8;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
    }
  }

  if ((v16 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((v16 & 4) == 0)
  {
    goto LABEL_34;
  }

  v17 = *v4;
  if (v17 != 48)
  {
    goto LABEL_35;
  }

  if ((*a1 & 7) == 0)
  {
    *a1 |= 4u;
  }

  if (++v4 != v3)
  {
LABEL_34:
    v17 = *v4;
LABEL_35:
    if (v17 == 123)
    {
      if (v4 + 1 == v3)
      {
        goto LABEL_124;
      }

      v23 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
      if (v3 == v23 || *v23 != 125)
      {
        goto LABEL_123;
      }

      v20 = v23 + 1;
      *(a1 + 2) |= 0x4000u;
    }

    else
    {
      LODWORD(v18) = v17 - 48;
      if (v17 == 48)
      {
        std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
      }

      if ((v17 - 58) < 0xFFFFFFF6)
      {
        goto LABEL_55;
      }

      v19 = v4 + 9;
      if (v3 - v4 <= 9)
      {
        v19 = v3;
      }

      v20 = v4 + 1;
      if (v4 + 1 == v19)
      {
        v19 = v4 + 1;
LABEL_68:
        if (v19 == v3)
        {
          *(a1 + 4) = v18;
          return v3;
        }

        v28 = *v19;
        if ((v28 - 48) > 9)
        {
          v20 = v19;
        }

        else
        {
          v18 = v28 + 10 * v18 - 48;
          if (v18 >> 31 || (v20 = v4 + 2, v4 + 2 != v3) && *v20 - 48 <= 9)
          {
LABEL_91:
            std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
          }
        }
      }

      else
      {
        v4 = v19 - 1;
        while (1)
        {
          v21 = *v20;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v18) = v21 + 10 * v18 - 48;
          if (++v20 == v19)
          {
            goto LABEL_68;
          }
        }
      }
    }

    *(a1 + 4) = v18;
    v4 = v20;
    if (v20 == v3)
    {
      return v4;
    }

LABEL_55:
    if ((v16 & 8) == 0 || *v4 != 46)
    {
      goto LABEL_96;
    }

    v24 = v4 + 1;
    if (v4 + 1 == v3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v25 = *v24;
    if (v25 == 123)
    {
      if (v4 + 2 != v3)
      {
        v26 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
        if (v3 != v26 && *v26 == 125)
        {
          v4 = v26 + 1;
          *(a1 + 2) |= 0x8000u;
          *(a1 + 8) = v27;
          goto LABEL_95;
        }

LABEL_123:
        std::__throw_format_error[abi:ne200100]("The argument index is invalid");
      }

LABEL_124:
      std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
    }

    if ((v25 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    if (v3 - v24 <= 9)
    {
      v29 = v3;
    }

    else
    {
      v29 = v4 + 10;
    }

    LODWORD(v30) = v25 - 48;
    v4 += 2;
    if (v4 != v29)
    {
      v24 = v29 - 1;
      while (1)
      {
        v31 = *v4;
        if ((v31 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_94;
        }

        LODWORD(v30) = v31 + 10 * v30 - 48;
        if (++v4 == v29)
        {
          goto LABEL_86;
        }
      }
    }

    v29 = v4;
LABEL_86:
    if (v29 == v3)
    {
      v4 = v3;
    }

    else
    {
      v32 = *v29;
      if ((v32 - 48) > 9)
      {
        v4 = v29;
      }

      else
      {
        v30 = v32 + 10 * v30 - 48;
        if (v30 >> 31)
        {
          goto LABEL_91;
        }

        v4 = v24 + 2;
        if (v24 + 2 != v3 && *v4 - 48 <= 9)
        {
          goto LABEL_91;
        }
      }
    }

LABEL_94:
    *(a1 + 8) = v30;
    *(a1 + 2) &= ~0x8000u;
LABEL_95:
    if (v4 == v3)
    {
      return v4;
    }

LABEL_96:
    if ((v16 & 0x10) != 0)
    {
      v33 = *v4;
      if (v33 != 76)
      {
LABEL_100:
        v34 = v33 - 65;
        v35 = 12;
        switch(v34)
        {
          case 0:
            goto LABEL_118;
          case 1:
            v35 = 3;
            goto LABEL_118;
          case 4:
            v35 = 14;
            goto LABEL_118;
          case 5:
            v35 = 16;
            goto LABEL_118;
          case 6:
            v35 = 18;
            goto LABEL_118;
          case 15:
            v35 = 9;
            goto LABEL_118;
          case 23:
            v35 = 7;
            goto LABEL_118;
          case 32:
            v35 = 11;
            goto LABEL_118;
          case 33:
            v35 = 2;
            goto LABEL_118;
          case 34:
            v35 = 10;
            goto LABEL_118;
          case 35:
            v35 = 5;
            goto LABEL_118;
          case 36:
            v35 = 13;
            goto LABEL_118;
          case 37:
            v35 = 15;
            goto LABEL_118;
          case 38:
            v35 = 17;
            goto LABEL_118;
          case 46:
            v35 = 4;
            goto LABEL_118;
          case 47:
            v35 = 8;
            goto LABEL_118;
          case 50:
            v35 = 1;
            goto LABEL_118;
          case 55:
            v35 = 6;
LABEL_118:
            *(a1 + 1) = v35;
            ++v4;
            break;
          default:
            break;
        }

        if (v4 != v3 && *v4 != 125)
        {
          std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
        }

        return v4;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v33 = *v4;
    goto LABEL_100;
  }

  return v4;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  v21.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v21.__r_.__value_.__r.__words[1] = xmmword_1E53931C0;
  strcpy(v21.__r_.__value_.__l.__data_, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v21, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v23 = v3->__r_.__value_.__r.__words[2];
  v22 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v5 = *(&v22 + 1);
    v6 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - *(&v22 + 1) < 0x14)
    {
      v7 = 0x7FFFFFFFFFFFFFF7;
      v8 = *(&v22 + 1) + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v23 & 0x7FFFFFFFFFFFFFFFLL) < *(&v22 + 1) + 20 - v6)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v22;
      if (v6 > 0x3FFFFFFFFFFFFFF2)
      {
        v12 = 0;
LABEL_16:
        v13 = operator new(v7);
        v14 = v13;
        if (v5)
        {
          memmove(v13, v9, v5);
        }

        v15 = &v14[v5];
        *v15 = *" formatting argument";
        *(v15 + 4) = 1953391981;
        if (!v12)
        {
          operator delete(v9);
        }

        *(&v22 + 1) = v8;
        v23 = v7 | 0x8000000000000000;
        *&v22 = v14;
        v16 = &v14[v8];
LABEL_27:
        *v16 = 0;
        v25 = v23;
        v24 = v22;
        v23 = 0;
        v22 = 0uLL;
        if (v25 >= 0)
        {
          v20 = &v24;
        }

        else
        {
          v20 = v24;
        }

        std::__throw_format_error[abi:ne200100](v20);
      }

LABEL_7:
      v10 = 2 * v6;
      if (v8 > 2 * v6)
      {
        v10 = v8;
      }

      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      if (v10 >= 0x17)
      {
        v7 = v11;
      }

      else
      {
        v7 = 23;
      }

      v12 = v6 == 22;
      goto LABEL_16;
    }

    v17 = v22;
  }

  else
  {
    if ((SHIBYTE(v23) - 3) < 0x14)
    {
      v8 = SHIBYTE(v23) + 20;
      v9 = &v22;
      v6 = 22;
      goto LABEL_7;
    }

    v17 = &v22;
  }

  v18 = v17 + v5;
  *v18 = *" formatting argument";
  *(v18 + 4) = 1953391981;
  v19 = v5 + 20;
  if (SHIBYTE(v23) < 0)
  {
    *(&v22 + 1) = v5 + 20;
  }

  else
  {
    HIBYTE(v23) = v19 & 0x7F;
  }

  v16 = v17 + v19;
  goto LABEL_27;
}

void sub_1E537E7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  v41.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v41.__r_.__value_.__r.__words[1] = xmmword_1E5391A10;
  strcpy(v41.__r_.__value_.__l.__data_, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v41, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
    v8 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 - v42.__r_.__value_.__l.__size_ < 0x14)
    {
      v9 = 0x7FFFFFFFFFFFFFF7;
      v10 = v42.__r_.__value_.__l.__size_ + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v42.__r_.__value_.__l.__size_ + 20 - v8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v42.__r_.__value_.__r.__words[0];
      if (v8 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0;
LABEL_16:
        v15 = operator new(v9);
        v16 = v15;
        if (size)
        {
          memmove(v15, v11, size);
        }

        v17 = v16 + size;
        *v17 = *" does not allow the ";
        *(v17 + 16) = 543516788;
        if (!v14)
        {
          operator delete(v11);
        }

        v42.__r_.__value_.__l.__size_ = v10;
        v42.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
        v42.__r_.__value_.__r.__words[0] = v16;
        v18 = (v16 + v10);
LABEL_27:
        *v18 = 0;
        v43 = v42;
        memset(&v42, 0, sizeof(v42));
        v22 = strlen(a2);
        v23 = std::string::append(&v43, a2, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v45 = v23->__r_.__value_.__r.__words[2];
        v44 = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = SHIBYTE(v45);
        if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
        {
          v25 = *(&v44 + 1);
          v26 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v26 - *(&v44 + 1) < 7)
          {
            v27 = 0x7FFFFFFFFFFFFFF7;
            v28 = *(&v44 + 1) + 7;
            if (0x7FFFFFFFFFFFFFF7 - (v45 & 0x7FFFFFFFFFFFFFFFLL) < *(&v44 + 1) + 7 - v26)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v29 = v44;
            if (v26 >= 0x3FFFFFFFFFFFFFF3)
            {
              v32 = 0;
LABEL_42:
              v33 = operator new(v27);
              v34 = v33;
              if (v25)
              {
                memmove(v33, v29, v25);
              }

              v35 = &v34[v25];
              *(v35 + 3) = 1852795252;
              *v35 = 1953525536;
              if (!v32)
              {
                operator delete(v29);
              }

              *(&v44 + 1) = v28;
              v45 = v27 | 0x8000000000000000;
              *&v44 = v34;
              v36 = &v34[v28];
LABEL_55:
              *v36 = 0;
              v47 = v45;
              v46 = v44;
              v45 = 0;
              v44 = 0uLL;
              if (v47 >= 0)
              {
                v40 = &v46;
              }

              else
              {
                v40 = v46;
              }

              std::__throw_format_error[abi:ne200100](v40);
            }

LABEL_33:
            v30 = 2 * v26;
            if (v28 > 2 * v26)
            {
              v30 = v28;
            }

            if ((v30 | 7) == 0x17)
            {
              v31 = 25;
            }

            else
            {
              v31 = (v30 | 7) + 1;
            }

            if (v30 >= 0x17)
            {
              v27 = v31;
            }

            else
            {
              v27 = 23;
            }

            v32 = v26 == 22;
            goto LABEL_42;
          }

          v37 = v44;
        }

        else
        {
          if ((SHIBYTE(v45) - 16) < 7)
          {
            v28 = SHIBYTE(v45) + 7;
            v29 = &v44;
            v26 = 22;
            goto LABEL_33;
          }

          v37 = &v44;
        }

        v38 = (v37 + v25);
        *(v38 + 3) = 1852795252;
        *v38 = 1953525536;
        v39 = v25 + 7;
        if (SHIBYTE(v45) < 0)
        {
          *(&v44 + 1) = v25 + 7;
        }

        else
        {
          HIBYTE(v45) = v39 & 0x7F;
        }

        v36 = v37 + v39;
        goto LABEL_55;
      }

LABEL_7:
      v12 = 2 * v8;
      if (v10 > 2 * v8)
      {
        v12 = v10;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v9 = v13;
      }

      else
      {
        v9 = 23;
      }

      v14 = v8 == 22;
      goto LABEL_16;
    }

    v19 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) - 3) < 0x14)
    {
      v10 = SHIBYTE(v42.__r_.__value_.__r.__words[2]) + 20;
      v11 = &v42;
      v8 = 22;
      goto LABEL_7;
    }

    v19 = &v42;
  }

  v20 = v19 + size;
  *v20 = *" does not allow the ";
  *(v20 + 4) = 543516788;
  v21 = size + 20;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    v42.__r_.__value_.__l.__size_ = size + 20;
  }

  else
  {
    *(&v42.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v18 = v19 + v21;
  goto LABEL_27;
}

void sub_1E537EC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(a30);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v26[23] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v12) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v2 = *v13;
      v9 = *(v13 + 8);
      LOBYTE(v12) = *(v13 + 16);
      *v22 = *(v13 + 17);
      *&v22[7] = *(v13 + 24);
    }

    else
    {
      v11 = a2[2];
      v12 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v2 = *(v11 + 16 * v9);
      v9 = *(v11 + 16 * v9 + 8);
    }

    v23 = v2;
    v24 = v9;
    v25 = v12;
    *v26 = *v22;
    *&v26[7] = *&v22[7];
    v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v17) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v2 = *v18;
    v14 = *(v18 + 8);
    LOBYTE(v17) = *(v18 + 16);
    *v22 = *(v18 + 17);
    *&v22[7] = *(v18 + 24);
  }

  else
  {
    v16 = a2[2];
    v17 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v2 = *(v16 + 16 * v14);
    v14 = *(v16 + 16 * v14 + 8);
  }

  v23 = v2;
  v24 = v14;
  v25 = v17;
  *v26 = *v22;
  *&v26[7] = *&v22[7];
  v8 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v14[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v7;
    *v14 = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, &__src, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    *&__src = 0xAAAAAAAAAAAAAAAALL;
    *(&__src + 7) = -1431655766;
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &__src + 11;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    *&__src = 0xAAAAAAAAAAAAAAAALL;
    *(&__src + 7) = -1431655766;
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, &__src, &__src + 11, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *(&__src + 5) = 0xAAAAAAAAAAAAAAAALL;
  *&__src = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, &__src, &__src + 13, v5, 8u);
LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = __src;
  v7 = HIDWORD(a4);
  if (a4 <= 0)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), v6, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      v6 += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  if (a2)
  {
    if (*__src < 0)
    {
      v11 = a4;
      v12 = a5;
    }

    else
    {
      v8 = 0;
      v9 = &__src[v7];
      __src = &__src[v7 - 1];
      while (1)
      {
        if (a2 - 1 == v8)
        {
          v19 = a2;
          goto LABEL_36;
        }

        if (v7 - 1 == v8)
        {
          break;
        }

        v10 = v6[++v8];
        if (v10 < 0)
        {
          v11 = a4;
          v12 = a5;
          v7 = v7 - v8 + 1;
          __src = &v6[v8 - 1];
          goto LABEL_21;
        }
      }

      if ((*v9 & 0x80000000) == 0)
      {
        v19 = HIDWORD(a4);
        goto LABEL_36;
      }

      v11 = a4;
      v12 = a5;
      v7 = 1;
    }

LABEL_21:
    v20 = (__src - v6);
    v21 = a2;
    v22 = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(__src, &v6[a2], v7, 1);
    a2 = v21;
    v19 = &v20[v22];
    a5 = v12;
    a4 = v11;
  }

  else
  {
    v19 = 0;
  }

LABEL_36:
  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, a2, a3, a4, a5, v19);
  return a3;
}

uint64_t std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v9 >> 1;
        v9 -= v9 >> 1;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v26, SHIDWORD(a5));
        v11 = *(a3 + 32);
        if (v11)
        {
          goto LABEL_17;
        }

LABEL_39:
        v19 = a2;
        goto LABEL_40;
      }
    }

    else if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v11 = *(a3 + 32);
      if (!v11)
      {
        goto LABEL_39;
      }

LABEL_17:
      v18 = *v11;
      v17 = v11[1];
      if (*v11 - v17 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *v11 - v17;
      }

      v11[1] = v17 + a2;
      if (v18 <= v17 || v19 == 0)
      {
LABEL_25:
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
        return a3;
      }

LABEL_40:
      v27 = *(a3 + 16);
      do
      {
        v28 = *(a3 + 8) - v27;
        if (v28 < v19 + 1)
        {
          (*(a3 + 24))(a3, v19 + 2);
          v27 = *(a3 + 16);
          v28 = *(a3 + 8) - v27;
        }

        if (v28 >= v19)
        {
          v29 = v19;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          memmove((*a3 + v27), __src, v29);
          v27 = *(a3 + 16);
        }

        v27 += v29;
        *(a3 + 16) = v27;
        __src += v29;
        v23 = v19 > v28;
        v19 -= v29;
      }

      while (v23);
      goto LABEL_25;
    }

    v9 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - a6, SHIDWORD(a5));
    v11 = *(a3 + 32);
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  v12 = *(a3 + 32);
  if (v12)
  {
    v14 = *v12;
    v13 = v12[1];
    if (*v12 - v13 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = *v12 - v13;
    }

    v12[1] = v13 + a2;
    if (v14 <= v13 || v15 == 0)
    {
      return a3;
    }
  }

  else
  {
    v15 = a2;
  }

  v22 = *(a3 + 16);
  do
  {
    v24 = *(a3 + 8) - v22;
    if (v24 < v15 + 1)
    {
      (*(a3 + 24))(a3, v15 + 2);
      v22 = *(a3 + 16);
      v24 = *(a3 + 8) - v22;
    }

    if (v24 >= v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      memmove((*a3 + v22), __src, v25);
      v22 = *(a3 + 16);
    }

    v22 += v25;
    *(a3 + 16) = v22;
    __src += v25;
    v23 = v15 > v24;
    v15 -= v25;
  }

  while (v23);
  return a3;
}

unint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v147 = a1;
  v148 = a2;
  memset(v149, 170, sizeof(v149));
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v147);
  v6 = v5 & 0x7FFFFFFF;
  LODWORD(v149[0]) = v5 & 0x7FFFFFFF;
  v7 = (v5 << 11) | 0x7FF;
  v8 = 1496;
  v9 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v10 = v8 >> 1;
    v11 = &v9[v8 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v8 += ~(v8 >> 1);
    if (v7 >= v13)
    {
      v9 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  while (v8);
  if (v9 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100] || (v14 = *(v9 - 1), ((v14 >> 4) & 0x7F) + (v14 >> 11) < v6))
  {
    LOBYTE(v15) = 16;
    BYTE4(v149[0]) = 16;
    v149[1] = 0;
    LODWORD(v149[2]) = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
  }

  else
  {
    v15 = v14 & 0xF;
    BYTE4(v149[0]) = v14 & 0xF;
    v149[1] = 0;
    LODWORD(v149[2]) = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
    if (v15 == 9)
    {
      v27 = 3;
      goto LABEL_25;
    }

    if (v15 == 3)
    {
      v27 = 2;
      goto LABEL_25;
    }
  }

  v19 = 201;
  v20 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v21 = v19 >> 1;
    v22 = &v20[v19 >> 1];
    v24 = *v22;
    v23 = v22 + 1;
    v19 += ~(v19 >> 1);
    if (v7 >= v24)
    {
      v20 = v23;
    }

    else
    {
      v19 = v21;
    }
  }

  while (v19);
  if (v20 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v25 = *(v20 - 1);
    v26 = (v25 & 3) == 0 && ((v25 >> 2) & 0x1FF) + (v25 >> 11) >= v6;
    if (v26)
    {
      v27 = 1;
LABEL_25:
      LODWORD(v149[1]) = v27;
    }
  }

  if (a1 == v17)
  {
    return 0;
  }

  if (v147 != v148)
  {
    result = 0;
    while (1)
    {
      v30 = v6;
      v31 = v147;
      if (v147 == v148)
      {
        v35 = v148;
        if (v6 - 262142 >= 0xFFFC1102)
        {
          goto LABEL_323;
        }

LABEL_334:
        v104 = result + 1;
        if (v18)
        {
          goto LABEL_29;
        }

LABEL_335:
        if (v104 <= v16)
        {
          goto LABEL_29;
        }

        return result;
      }

      v33 = v149[1];
      v32 = HIDWORD(v149[1]);
      v34 = v149[2];
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v35 = v31;
              v36 = v15;
              v37 = *v31;
              v38 = (__clz(v37 ^ 0xFF) - 24);
              if (v38 > 2)
              {
                if (v38 == 3)
                {
                  if (v148 - v35 >= 3)
                  {
                    v45 = (v35[1] & 0xC0) == 128;
                    if ((v35[1] & 0xC0) == 0x80)
                    {
                      v45 = (v35[2] & 0xC0) == 128;
                    }

                    if (v45)
                    {
                      v147 = v35 + 2;
                      v46 = ((v37 & 0xF) << 12) | ((v35[1] & 0x3F) << 6);
                      v31 = v35 + 3;
                      v147 = v35 + 3;
                      if (v46 >= 0x800)
                      {
                        if ((v46 & 0xF800) == 0xD800)
                        {
                          v37 = -2147418115;
                        }

                        else
                        {
                          v37 = v46 | v35[2] & 0x3F;
                        }

                        goto LABEL_69;
                      }

                      goto LABEL_68;
                    }
                  }

LABEL_67:
                  v31 = v35 + 1;
                  v147 = v35 + 1;
LABEL_68:
                  v37 = -2147418115;
                  goto LABEL_69;
                }

                if (v38 != 4 || v148 - v35 < 4)
                {
                  goto LABEL_67;
                }

                v42 = (v35[1] & 0xC0) == 128;
                if ((v35[1] & 0xC0) == 0x80)
                {
                  v42 = (v35[2] & 0xC0) == 128;
                  if ((v35[2] & 0xC0) == 0x80)
                  {
                    v42 = (v35[3] & 0xC0) == 128;
                  }
                }

                if (!v42)
                {
                  goto LABEL_67;
                }

                v147 = v35 + 2;
                v43 = ((v37 & 7) << 12) | ((v35[1] & 0x3F) << 6);
                v147 = v35 + 3;
                v44 = v35[2];
                v31 = v35 + 4;
                v147 = v35 + 4;
                if (v43 < 0x400)
                {
                  goto LABEL_68;
                }

                v37 = v35[3] & 0x3F | ((v43 | v44 & 0x3F) << 6);
                if (v43 >> 10 >= 0x11)
                {
                  v37 = -2147418115;
                }
              }

              else
              {
                if (v38)
                {
                  if (v38 == 2 && v148 - v35 >= 2)
                  {
                    v39 = v35[1];
                    if ((v39 & 0xC0) == 0x80)
                    {
                      v40 = v37 & 0x1F;
                      v31 = v35 + 2;
                      v147 = v35 + 2;
                      v41 = v39 & 0x3F | (v40 << 6);
                      if (v40 >= 2)
                      {
                        v37 = v41;
                      }

                      else
                      {
                        v37 = -2147418115;
                      }

                      goto LABEL_69;
                    }
                  }

                  goto LABEL_67;
                }

                v31 = v35 + 1;
                v147 = v35 + 1;
              }

LABEL_69:
              v47 = (v37 << 11) | 0x7FF;
              v48 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
              v49 = 1496;
              do
              {
                v50 = v49 >> 1;
                v51 = &v48[v49 >> 1];
                v53 = *v51;
                v52 = v51 + 1;
                v49 += ~(v49 >> 1);
                if (v47 >= v53)
                {
                  v48 = v52;
                }

                else
                {
                  v49 = v50;
                }
              }

              while (v49);
              v6 = v37 & 0x7FFFFFFF;
              if (v48 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
              {
                v15 = 16;
                if (v33 <= 1)
                {
                  break;
                }

                goto LABEL_91;
              }

              v54 = *(v48 - 1);
              v55 = ((v54 >> 4) & 0x7F) + (v54 >> 11);
              v56 = v54 & 0xF;
              v15 = v55 >= v6 ? v56 : 16;
              if (v33 <= 1)
              {
                break;
              }

LABEL_91:
              if (v33 == 2)
              {
                if (v32 == 2)
                {
                  if (v15 == 3)
                  {
                    v32 = 0;
                    HIDWORD(v149[1]) = 0;
LABEL_140:
                    v33 = 2;
                    LODWORD(v149[0]) = v6;
                    BYTE4(v149[0]) = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }

                  else
                  {
                    LODWORD(v149[1]) = 0;
                    if (v15 == 5 && !v36)
                    {
                      goto LABEL_161;
                    }

                    if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                    {
                      goto LABEL_322;
                    }

                    if (v36 > 6u)
                    {
                      if (v36 == 7)
                      {
                        goto LABEL_236;
                      }

                      if (v36 != 12)
                      {
                        goto LABEL_245;
                      }

LABEL_234:
                      if (v15 - 11 < 2)
                      {
                        goto LABEL_161;
                      }

                      if (v36 == 7)
                      {
LABEL_236:
                        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                        {
                          goto LABEL_306;
                        }

                        goto LABEL_161;
                      }

                      goto LABEL_245;
                    }

                    if (v36 == 4)
                    {
                      if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                      {
                        goto LABEL_306;
                      }

                      goto LABEL_161;
                    }

                    if (v36 == 6)
                    {
                      goto LABEL_234;
                    }

LABEL_245:
                    if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                    {
LABEL_306:
                      v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                      v89 = 201;
                      do
                      {
                        v90 = v89 >> 1;
                        v91 = &v68[v89 >> 1];
                        v93 = *v91;
                        v92 = v91 + 1;
                        v89 += ~(v89 >> 1);
                        if (v47 >= v93)
                        {
                          v68 = v92;
                        }

                        else
                        {
                          v89 = v90;
                        }
                      }

                      while (v89);
                      goto LABEL_311;
                    }

LABEL_161:
                    v33 = 0;
                    v32 = 2;
                    LODWORD(v149[0]) = v6;
                    BYTE4(v149[0]) = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }
                }

                else
                {
                  if (v32 != 1)
                  {
                    if (v15 == 13)
                    {
                      goto LABEL_138;
                    }

                    if (v15 != 2)
                    {
LABEL_142:
                      LODWORD(v149[1]) = 0;
                      if (v15 == 5 && !v36)
                      {
                        goto LABEL_230;
                      }

                      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                      {
                        goto LABEL_322;
                      }

                      if (v36 > 6u)
                      {
                        if (v36 == 7)
                        {
                          goto LABEL_219;
                        }

                        if (v36 == 12)
                        {
                          goto LABEL_217;
                        }
                      }

                      else
                      {
                        if (v36 == 4)
                        {
                          if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }

                        if (v36 != 6)
                        {
                          goto LABEL_239;
                        }

LABEL_217:
                        if (v15 - 11 < 2)
                        {
                          goto LABEL_230;
                        }

                        if (v36 == 7)
                        {
LABEL_219:
                          if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }
                      }

LABEL_239:
                      if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                      {
LABEL_300:
                        v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                        v84 = 201;
                        do
                        {
                          v85 = v84 >> 1;
                          v86 = &v68[v84 >> 1];
                          v88 = *v86;
                          v87 = v86 + 1;
                          v84 += ~(v84 >> 1);
                          if (v47 >= v88)
                          {
                            v68 = v87;
                          }

                          else
                          {
                            v84 = v85;
                          }
                        }

                        while (v84);
                        goto LABEL_311;
                      }

                      goto LABEL_230;
                    }

                    v32 = 1;
LABEL_139:
                    HIDWORD(v149[1]) = v32;
                    goto LABEL_140;
                  }

                  if (v15 != 2)
                  {
                    if (v15 != 13)
                    {
                      goto LABEL_142;
                    }

LABEL_138:
                    v32 = 2;
                    goto LABEL_139;
                  }

                  v32 = 1;
                  v33 = 2;
                  LODWORD(v149[0]) = v6;
                  BYTE4(v149[0]) = 2;
                  if (v31 == v148)
                  {
                    goto LABEL_280;
                  }
                }
              }

              else
              {
                LODWORD(v149[1]) = 0;
                if (v15 == 9 || v15 == 5 && !v36)
                {
                  goto LABEL_230;
                }

                if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                {
                  goto LABEL_322;
                }

                if (v36 > 6u)
                {
                  if (v36 == 7)
                  {
                    goto LABEL_186;
                  }

                  if (v36 != 12)
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  if (v36 == 4)
                  {
                    if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_230;
                  }

                  if (v36 != 6)
                  {
                    goto LABEL_206;
                  }
                }

                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_186:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_230;
                }

LABEL_206:
                if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                {
LABEL_294:
                  v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                  v79 = 201;
                  do
                  {
                    v80 = v79 >> 1;
                    v81 = &v68[v79 >> 1];
                    v83 = *v81;
                    v82 = v81 + 1;
                    v79 += ~(v79 >> 1);
                    if (v47 >= v83)
                    {
                      v68 = v82;
                    }

                    else
                    {
                      v79 = v80;
                    }
                  }

                  while (v79);
LABEL_311:
                  if (v68 != &std::__indic_conjunct_break::__entries[abi:ne200100] && ((v94 = *(v68 - 1), (v94 & 3) == 0) ? (v95 = ((v94 >> 2) & 0x1FF) + (v94 >> 11) >= v6) : (v95 = 0), v95))
                  {
                    v66 = 1;
                    v67 = 16;
                  }

                  else
                  {
                    if (v15 != 3)
                    {
                      goto LABEL_317;
                    }

LABEL_279:
                    v66 = 2;
                    v67 = 12;
                  }

LABEL_320:
                  v96 = 0;
                  LODWORD(v149[1]) = v66;
                  goto LABEL_321;
                }

LABEL_230:
                v33 = 0;
                LODWORD(v149[0]) = v6;
                BYTE4(v149[0]) = v15;
                if (v31 == v148)
                {
                  goto LABEL_280;
                }
              }
            }

            if (!v33)
            {
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_156;
                }

                if (v36 == 12)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_170;
                }

LABEL_154:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_156:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }
              }

LABEL_170:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_282:
                v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                v69 = 201;
                do
                {
                  v70 = v69 >> 1;
                  v71 = &v68[v69 >> 1];
                  v73 = *v71;
                  v72 = v71 + 1;
                  v69 += ~(v69 >> 1);
                  if (v47 >= v73)
                  {
                    v68 = v72;
                  }

                  else
                  {
                    v69 = v70;
                  }
                }

                while (v69);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            v57 = &std::__indic_conjunct_break::__entries[abi:ne200100];
            v58 = 201;
            do
            {
              v59 = v58 >> 1;
              v60 = &v57[v58 >> 1];
              v62 = *v60;
              v61 = v60 + 1;
              v58 += ~(v58 >> 1);
              if (v47 >= v62)
              {
                v57 = v61;
              }

              else
              {
                v58 = v59;
              }
            }

            while (v58);
            if (v57 == &std::__indic_conjunct_break::__entries[abi:ne200100] || ((v63 = *(v57 - 1), v64 = ((v63 >> 2) & 0x1FF) + (v63 >> 11), v33 = v63 & 3, v33 != 3) ? (v65 = v64 >= v6) : (v65 = 0), !v65))
            {
              LODWORD(v149[1]) = 0;
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_167;
                }

                if (v36 == 12)
                {
                  goto LABEL_165;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_189;
                }

LABEL_165:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_167:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }
              }

LABEL_189:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_288:
                v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                v74 = 201;
                do
                {
                  v75 = v74 >> 1;
                  v76 = &v68[v74 >> 1];
                  v78 = *v76;
                  v77 = v76 + 1;
                  v74 += ~(v74 >> 1);
                  if (v47 >= v78)
                  {
                    v68 = v77;
                  }

                  else
                  {
                    v74 = v75;
                  }
                }

                while (v74);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            if (!v34)
            {
              break;
            }

            if ((v33 - 1) >= 2)
            {
              v34 = 0;
              LODWORD(v149[2]) = 0;
            }

            v33 = 1;
            LODWORD(v149[0]) = v6;
            BYTE4(v149[0]) = v15;
            if (v31 == v148)
            {
LABEL_280:
              v35 = v148;
              if (v30 - 262142 < 0xFFFC1102)
              {
                goto LABEL_334;
              }

              goto LABEL_323;
            }
          }

          if (v33 != 1)
          {
            break;
          }

          v34 = 0;
          LODWORD(v149[0]) = v6;
          BYTE4(v149[0]) = v15;
          if (v31 == v148)
          {
            goto LABEL_280;
          }
        }

        if (v33 != 2)
        {
          break;
        }

        v34 = 1;
        LODWORD(v149[2]) = 1;
        v33 = 1;
        LODWORD(v149[0]) = v6;
        BYTE4(v149[0]) = v15;
        if (v31 == v148)
        {
          goto LABEL_280;
        }
      }

      LODWORD(v149[1]) = 0;
      if (v15 == 5 && !v36)
      {
        goto LABEL_229;
      }

      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
      {
        goto LABEL_322;
      }

      if (v36 > 6u)
      {
        if (v36 != 7)
        {
          if (v36 != 12)
          {
            goto LABEL_269;
          }

          goto LABEL_267;
        }

LABEL_37:
        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 == 4)
      {
        if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 != 6)
      {
        goto LABEL_269;
      }

LABEL_267:
      if (v15 - 11 < 2)
      {
LABEL_229:
        v34 = 0;
        goto LABEL_230;
      }

      if (v36 == 7)
      {
        goto LABEL_37;
      }

LABEL_269:
      if (v15 == 11 && v36 == 11 || v15 <= 0xD && ((1 << v15) & 0x2404) != 0 || v36 == 8)
      {
        goto LABEL_229;
      }

LABEL_277:
      v143 = result;
      if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v6))
      {
        v66 = 1;
        v67 = 16;
        result = v143;
        v17 = a2;
        v16 = a3;
        v18 = a4;
        goto LABEL_320;
      }

      result = v143;
      v17 = a2;
      v16 = a3;
      v18 = a4;
      if (v15 == 3)
      {
        goto LABEL_279;
      }

LABEL_317:
      if (v15 != 9)
      {
        goto LABEL_322;
      }

      v96 = 3;
      v67 = 8;
LABEL_321:
      *(v149 + v67) = v96;
LABEL_322:
      LODWORD(v149[0]) = v6;
      BYTE4(v149[0]) = v15;
      if (v30 - 262142 < 0xFFFC1102)
      {
        goto LABEL_334;
      }

LABEL_323:
      v97 = &std::__width_estimation_table::__entries[abi:ne200100];
      v98 = 107;
      do
      {
        v99 = v98 >> 1;
        v100 = &v97[v98 >> 1];
        v102 = *v100;
        v101 = v100 + 1;
        v98 += ~(v98 >> 1);
        if (((v30 << 14) | 0x3FFF) >= v102)
        {
          v97 = v101;
        }

        else
        {
          v98 = v99;
        }
      }

      while (v98);
      if (v97 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        goto LABEL_334;
      }

      if ((*(v97 - 1) & 0x3FFF) + (*(v97 - 1) >> 14) < v30)
      {
        v103 = 1;
      }

      else
      {
        v103 = 2;
      }

      v104 = v103 + result;
      if (!v18)
      {
        goto LABEL_335;
      }

LABEL_29:
      v29 = v35 == v17 || v104 > v16;
      result = v104;
      if (v29)
      {
        return result;
      }
    }
  }

  if (v6 - 262142 >= 0xFFFC1102)
  {
    v105 = (v5 << 14) | 0x3FFF;
    if (v18)
    {
      if (v147 == v17)
      {
        v121 = 107;
        v122 = &std::__width_estimation_table::__entries[abi:ne200100];
        do
        {
          v123 = v121 >> 1;
          v124 = &v122[v121 >> 1];
          v126 = *v124;
          v125 = v124 + 1;
          v121 += ~(v121 >> 1);
          if (v105 >= v126)
          {
            v122 = v125;
          }

          else
          {
            v121 = v123;
          }
        }

        while (v121);
        if (v122 == &std::__width_estimation_table::__entries[abi:ne200100])
        {
          return 1;
        }

        else if ((*(v122 - 1) & 0x3FFFu) + (*(v122 - 1) >> 14) < v6)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        result = 0;
        do
        {
          while (1)
          {
            v106 = &std::__width_estimation_table::__entries[abi:ne200100];
            v107 = 107;
            do
            {
              v108 = v107 >> 1;
              v109 = &v106[v107 >> 1];
              v111 = *v109;
              v110 = v109 + 1;
              v107 += ~(v107 >> 1);
              if (v105 >= v111)
              {
                v106 = v110;
              }

              else
              {
                v107 = v108;
              }
            }

            while (v107);
            if (v106 != &std::__width_estimation_table::__entries[abi:ne200100])
            {
              break;
            }

            if (++result > v16)
            {
              return result;
            }
          }

          if ((*(v106 - 1) & 0x3FFFu) + (*(v106 - 1) >> 14) < v6)
          {
            v112 = 1;
          }

          else
          {
            v112 = 2;
          }

          result += v112;
        }

        while (result <= v16);
      }
    }

    else if (v147 == v17)
    {
      v134 = 107;
      v135 = &std::__width_estimation_table::__entries[abi:ne200100];
      do
      {
        v136 = v134 >> 1;
        v137 = &v135[v134 >> 1];
        v139 = *v137;
        v138 = v137 + 1;
        v134 += ~(v134 >> 1);
        if (v105 >= v139)
        {
          v135 = v138;
        }

        else
        {
          v134 = v136;
        }
      }

      while (v134);
      if (v135 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        v140 = 1;
      }

      else
      {
        v140 = 1;
        if ((*(v135 - 1) & 0x3FFFu) + (*(v135 - 1) >> 14) >= v6)
        {
          v140 = 2;
        }
      }

      if (v140 <= v16)
      {
        return v140;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v113 = 0;
      do
      {
        while (1)
        {
          result = v113;
          v114 = &std::__width_estimation_table::__entries[abi:ne200100];
          v115 = 107;
          do
          {
            v116 = v115 >> 1;
            v117 = &v114[v115 >> 1];
            v119 = *v117;
            v118 = v117 + 1;
            v115 += ~(v115 >> 1);
            if (v105 >= v119)
            {
              v114 = v118;
            }

            else
            {
              v115 = v116;
            }
          }

          while (v115);
          if (v114 != &std::__width_estimation_table::__entries[abi:ne200100])
          {
            break;
          }

          v113 = result + 1;
          if (result + 1 > v16)
          {
            return result;
          }
        }

        if ((*(v114 - 1) & 0x3FFFu) + (*(v114 - 1) >> 14) < v6)
        {
          v120 = 1;
        }

        else
        {
          v120 = 2;
        }

        v113 = v120 + result;
      }

      while (v113 <= v16);
    }
  }

  else
  {
    result = v18 != 0 || v16 != 0;
    if ((v18 != 0 || v16 != 0) && v147 != v17)
    {
      if (v18)
      {
        if (v16 + 1 > 1)
        {
          return v16 + 1;
        }

        else
        {
          return 1;
        }
      }

      if (v16 <= 1)
      {
        v127 = 1;
      }

      else
      {
        v127 = v16;
      }

      v26 = v127 != 0;
      v128 = v127 - 1;
      if (__PAIR128__(v26 - 1, v128) >= v16)
      {
        v128 = v16;
      }

      if (v128 && (v16 <= 1 ? (v129 = 1) : (v129 = v16), (v26 = v129 != 0, v130 = v129 - 1, __PAIR128__(v26 - 1, v130) >= v16) ? (v131 = v16) : (v131 = v130), (~v131 & 0xFFFFFFFFFFFFFFFELL) != 0))
      {
        v141 = v128 + 1;
        result = (v128 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v132 = (v128 + 1) | 1;
        v142 = result;
        do
        {
          v142 -= 2;
        }

        while (v142);
        if (v141 == result)
        {
          return result;
        }
      }

      else
      {
        v132 = 1;
      }

      do
      {
        v133 = v132 + 1;
        if (v132 > v16)
        {
          break;
        }

        ++v132;
      }

      while (v133 <= v16);
      return v133 - 1;
    }
  }

  return result;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, size_t a2, int __c)
{
  v4 = a2;
  __src = __c;
  v6 = __clz(~__c) - 24;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *(a1 + 32);
        v10 = v8;
        if (!v9 || ((v12 = *v9, v11 = v9[1], *v9 - v11 >= v8) ? (v10 = v8) : (v10 = *v9 - v11), v9[1] = v11 + v8, v12 > v11))
        {
          v13 = *(a1 + 16);
          p_src = &__src;
          do
          {
            v16 = *(a1 + 8) - v13;
            if (v16 < v10 + 1)
            {
              (*(a1 + 24))(a1, v10 + 2);
              v13 = *(a1 + 16);
              v16 = *(a1 + 8) - v13;
            }

            if (v16 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              memcpy((*a1 + v13), p_src, v17);
              v13 = *(a1 + 16);
            }

            v13 += v17;
            *(a1 + 16) = v13;
            p_src = (p_src + v17);
            v15 = v10 > v16;
            v10 -= v17;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v4);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v18[1];
    if (*v18 - v19 < a2)
    {
      v4 = *v18 - v19;
    }

    v18[1] = v19 + a2;
    if (v20 > v19 && v4 != 0)
    {
LABEL_29:
      v23 = *(a1 + 16);
      do
      {
        v24 = *(a1 + 8) - v23;
        if (v24 < v4 + 1)
        {
          (*(a1 + 24))(a1, v4 + 2);
          v23 = *(a1 + 16);
          v24 = *(a1 + 8) - v23;
        }

        if (v24 >= v4)
        {
          v25 = v4;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          memset((*a1 + v23), __c, v25);
          v23 = *(a1 + 16);
        }

        v23 += v25;
        *(a1 + 16) = v23;
        v15 = v4 > v24;
        v4 -= v25;
      }

      while (v15);
    }
  }

  return a1;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      return result;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, unsigned __int8 *__src, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v12 = a3;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v85 = a7 - v18;
      v86 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v85 >= v86)
      {
        v9 = &v18[v86];
        v87 = v9 - 1;
        do
        {
          *v87-- = a0123456789abcd_0[v14 % a9];
          v88 = v14 >= a9;
          v14 /= a9;
        }

        while (v88);
      }

      else
      {
        v9 = a7;
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
LABEL_73:
    v53 = v9;
    v54 = HIDWORD(v12);
    v32 = *a2;
    if ((v15 & 7) == 4)
    {
      v92 = v12;
      v94 = a4;
      v55 = v18 - v10;
      v56 = *(v32 + 32);
      v57 = v18 - v10;
      if (!v56 || ((v59 = *v56, v58 = v56[1], *v56 - v58 >= v55) ? (v57 = v18 - v10) : (v57 = *v56 - v58), (v56[1] = v58 + v55, v59 > v58) ? (v60 = v57 == 0) : (v60 = 1), !v60))
      {
        v67 = *(v32 + 16);
        do
        {
          v69 = *(v32 + 8) - v67;
          if (v69 < v57 + 1)
          {
            (*(v32 + 24))(v32, v57 + 2);
            v67 = *(v32 + 16);
            v69 = *(v32 + 8) - v67;
          }

          if (v69 >= v57)
          {
            v70 = v57;
          }

          else
          {
            v70 = v69;
          }

          if (v70)
          {
            memmove((*v32 + v67), v10, v70);
            v67 = *(v32 + 16);
          }

          v67 += v70;
          *(v32 + 16) = v67;
          v10 += v70;
          v68 = v57 > v69;
          v57 -= v70;
        }

        while (v68);
      }

      LODWORD(v12) = v92;
      v61 = v92 & 0xF8 | 3;
      if (v54 >= v55)
      {
        v62 = v55;
      }

      else
      {
        v62 = v54;
      }

      v54 = (v54 - v62);
      v32 = *a2;
      v63 = 48;
      a4 = v94;
    }

    else
    {
      v63 = BYTE4(a4);
      v61 = v12;
      v18 = v10;
    }

    v64 = v54 << 32;
    v65 = a4 & 0xFFFFFF00FFFFFFFFLL | (v63 << 32);
    if ((v12 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v18, v53, v32, v12 & 0xFFFF0700 | v64 | v61, v65);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v18, v53 - v18, v32, v64 | v12 & 0xFFFFFF00 | v61, v65, v53 - v18);
    }

    return v32;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E69272B0](v100);
    v26 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v26, v100);
    }

    else
    {
      std::locale::locale(v26, v100);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v100);
  }

  std::locale::locale(&v97, (a2 + 32));
  v27 = std::locale::use_facet(&v97, MEMORY[0x1E69E5368]);
  v90 = v9;
  v28 = v9 - v18;
  std::locale::~locale(&v97);
  memset(v100, 170, sizeof(v100));
  (v27->__vftable[1].__on_zero_shared)(v100, v27);
  if ((SHIBYTE(v100[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v100[0].__locale_;
    v30 = v100[1].__locale_;
    if (v100[1].__locale_ && v28 > *v100[0].__locale_)
    {
      v89 = v27;
      v91 = v12;
      v93 = a4;
      v31 = v100[0].__locale_;
      goto LABEL_31;
    }

    operator delete(v100[0].__locale_);
    goto LABEL_72;
  }

  if (!HIBYTE(v100[2].__locale_) || v28 <= SLOBYTE(v100[0].__locale_))
  {
LABEL_72:
    v9 = v90;
    goto LABEL_73;
  }

  v89 = v27;
  v91 = v12;
  v93 = a4;
  locale = v100;
  v31 = v100[0].__locale_;
  v30 = v100[1].__locale_;
LABEL_31:
  v32 = *a2;
  v97.__locale_ = 0;
  v98 = 0;
  v99 = 0;
  v33 = v30 + v31;
  if (SHIBYTE(v100[2].__locale_) >= 0)
  {
    v34 = v100 + SHIBYTE(v100[2].__locale_);
  }

  else
  {
    v34 = v33;
  }

  v35 = *locale;
  v36 = *locale;
  v37 = v28 - v35;
  if (v28 <= v35)
  {
    v72 = 0;
    v71 = v36 + v37;
    v73 = v90;
    goto LABEL_105;
  }

  v38 = v34 - 1;
  do
  {
    while (1)
    {
      v39 = HIBYTE(v99);
      if ((SHIBYTE(v99) & 0x80000000) == 0)
      {
        break;
      }

      v40 = (v99 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v98 != v40)
      {
        v46 = v97.__locale_;
        v40 = v98;
        goto LABEL_61;
      }

      if ((v99 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v95 = locale;
      __srca = v97.__locale_;
      if (v40 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_43;
      }

      v44 = 0;
      v43 = 0x7FFFFFFFFFFFFFF7;
LABEL_53:
      v45 = operator new(v43);
      v46 = v45;
      if (v40)
      {
        memmove(v45, __srca, v40);
      }

      if (!v44)
      {
        operator delete(__srca);
      }

      v97.__locale_ = v46;
      v99 = v43 | 0x8000000000000000;
      locale = v95;
LABEL_61:
      v98 = v40 + 1;
      v48 = v46 + v40;
      *v48 = v36;
      v48[1] = 0;
      if (locale != v38)
      {
        goto LABEL_62;
      }

LABEL_36:
      v36 = *locale;
      v37 -= *locale;
      if (v37 <= 0)
      {
        goto LABEL_101;
      }
    }

    if (HIBYTE(v99) == 22)
    {
      v95 = locale;
      __srca = &v97;
      v40 = 22;
LABEL_43:
      if (v40 + 1 > 2 * v40)
      {
        v41 = v40 + 1;
      }

      else
      {
        v41 = 2 * v40;
      }

      if ((v41 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v41 | 7) + 1;
      }

      if (v41 >= 0x17)
      {
        v43 = v42;
      }

      else
      {
        v43 = 23;
      }

      v44 = v40 == 22;
      goto LABEL_53;
    }

    HIBYTE(v99) = (HIBYTE(v99) + 1) & 0x7F;
    v47 = &v97 + v39;
    *v47 = v36;
    v47[1] = 0;
    if (locale == v38)
    {
      goto LABEL_36;
    }

LABEL_62:
    v49 = (locale + 1);
    v50 = (locale + 1);
    do
    {
      v51 = *v50++;
      v36 = v51;
      if (v51)
      {
        v52 = 1;
      }

      else
      {
        v52 = v49 == v38;
      }

      v49 = v50;
    }

    while (!v52);
    locale = (v50 - 1);
    v37 -= v36;
  }

  while (v37 > 0);
LABEL_101:
  v71 = v36 + v37;
  if (SHIBYTE(v99) < 0)
  {
    v75 = (v99 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v73 = v90;
    if (v98 == v75)
    {
      if ((v99 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v74 = v97.__locale_;
      v77 = 0x7FFFFFFFFFFFFFF7;
      if (v75 >= 0x3FFFFFFFFFFFFFF3)
      {
        v80 = 0;
      }

      else
      {
LABEL_109:
        if (v75 + 1 > 2 * v75)
        {
          v78 = v75 + 1;
        }

        else
        {
          v78 = 2 * v75;
        }

        if ((v78 | 7) == 0x17)
        {
          v79 = 25;
        }

        else
        {
          v79 = (v78 | 7) + 1;
        }

        if (v78 >= 0x17)
        {
          v77 = v79;
        }

        else
        {
          v77 = 23;
        }

        v80 = v75 == 22;
      }

      v81 = operator new(v77);
      v76 = v81;
      if (v75)
      {
        memmove(v81, v74, v75);
      }

      if (!v80)
      {
        operator delete(v74);
      }

      v97.__locale_ = v76;
      v99 = v77 | 0x8000000000000000;
      v73 = v90;
    }

    else
    {
      v76 = v97.__locale_;
      v75 = v98;
    }

    v98 = v75 + 1;
  }

  else
  {
    v72 = HIBYTE(v99);
    v73 = v90;
    if (HIBYTE(v99) == 22)
    {
      v74 = &v97;
      v75 = 22;
      goto LABEL_109;
    }

LABEL_105:
    v75 = v72;
    HIBYTE(v99) = (v72 + 1) & 0x7F;
    v76 = &v97;
  }

  v82 = v76 + v75;
  *v82 = v71;
  v82[1] = 0;
  v83 = (v89->__vftable[1].~facet_0)(v89);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v32, v10, v18, v73, &v97, v83, v91, v93);
  if (SHIBYTE(v99) < 0)
  {
    operator delete(v97.__locale_);
  }

  if (SHIBYTE(v100[2].__locale_) < 0)
  {
    operator delete(v100[0].__locale_);
  }

  return v32;
}

void sub_1E5380FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t a1, _BYTE *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v10 = a3;
  v11 = __src;
  v13 = HIDWORD(a7);
  v14 = a3 - __src;
  LODWORD(v15) = *(a5 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = a5[1];
  }

  v16 = a4 - __src - 1 + v15;
  v85 = HIDWORD(a8);
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v16)
    {
      v84 = 0;
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = (a7 >> 32) - v16;
      if ((a7 & 7u) > 1)
      {
        if ((a7 & 7) != 3)
        {
          v84 = v28 - (v28 >> 1);
          std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v28 >> 1, SHIDWORD(a8));
          v29 = *(a1 + 32);
          if (!v29)
          {
            goto LABEL_121;
          }

          goto LABEL_56;
        }
      }

      else if ((a7 & 7) != 0)
      {
        v84 = (a7 >> 32) - v16;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, 0, SHIDWORD(a8));
        v29 = *(a1 + 32);
        if (!v29)
        {
          goto LABEL_121;
        }

LABEL_56:
        v38 = *v29;
        v37 = v29[1];
        v39 = v37 + v14;
        if (*v29 - v37 < v14)
        {
          v14 = *v29 - v37;
        }

        v29[1] = v39;
        if (v38 <= v37 || v14 == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      }

      v84 = 0;
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, (a7 >> 32) - v16, SHIDWORD(a8));
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

LABEL_121:
    v80 = *(a1 + 16);
    do
    {
      v81 = *(a1 + 8) - v80;
      if (v81 < v14 + 1)
      {
        (*(a1 + 24))(a1, v14 + 2);
        v80 = *(a1 + 16);
        v81 = *(a1 + 8) - v80;
      }

      if (v81 >= v14)
      {
        v82 = v14;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        memmove((*a1 + v80), v11, v82);
        v80 = *(a1 + 16);
      }

      v80 += v82;
      *(a1 + 16) = v80;
      v11 += v82;
      v31 = v14 > v81;
      v14 -= v82;
    }

    while (v31);
    goto LABEL_63;
  }

  v83 = a7;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  v18 = v17[1];
  v20 = v18 + v14;
  if (*v17 - v18 < v14)
  {
    v14 = *v17 - v18;
  }

  v17[1] = v20;
  if (v19 > v18 && v14 != 0)
  {
LABEL_28:
    v30 = *(a1 + 16);
    do
    {
      v32 = *(a1 + 8) - v30;
      if (v32 < v14 + 1)
      {
        (*(a1 + 24))(a1, v14 + 2);
        v30 = *(a1 + 16);
        v32 = *(a1 + 8) - v30;
      }

      if (v32 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        memmove((*a1 + v30), v11, v33);
        v30 = *(a1 + 16);
      }

      v30 += v33;
      *(a1 + 16) = v30;
      v11 += v33;
      v31 = v14 > v32;
      v14 -= v33;
    }

    while (v31);
  }

  if (v13 <= v16)
  {
    v84 = 0;
    v8 = v83;
    goto LABEL_63;
  }

  v22 = v13 - v16;
  v23 = *(a1 + 32);
  if (!v23)
  {
    v26 = v13 - v16;
    v8 = v83;
    goto LABEL_45;
  }

  v25 = *v23;
  v24 = v23[1];
  if (*v23 - v24 >= v22)
  {
    v26 = v13 - v16;
  }

  else
  {
    v26 = *v23 - v24;
  }

  v23[1] = v24 + v22;
  v27 = v25 <= v24 || v26 == 0;
  v8 = v83;
  if (!v27)
  {
LABEL_45:
    v34 = *(a1 + 16);
    do
    {
      v35 = *(a1 + 8) - v34;
      if (v35 < v26 + 1)
      {
        (*(a1 + 24))(a1, v26 + 2);
        v34 = *(a1 + 16);
        v35 = *(a1 + 8) - v34;
      }

      if (v35 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        memset((*a1 + v34), 48, v36);
        v34 = *(a1 + 16);
      }

      v34 += v36;
      *(a1 + 16) = v34;
      v31 = v26 > v35;
      v26 -= v36;
    }

    while (v31);
  }

  v84 = 0;
LABEL_63:
  v41 = *(a5 + 23);
  v42 = v41;
  v43 = a5 + v41;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = (*a5 + a5[1]);
  }

  if (v42 >= 0)
  {
    v45 = a5;
  }

  else
  {
    v45 = *a5;
  }

  v46 = v45 + 1;
  v47 = v8 & 0xFF00;
  while (1)
  {
    v49 = v44 - 1;
    v48 = *(v44 - 1);
    if (v47 != 1792)
    {
      break;
    }

    v50 = &v10[v48];
    v51 = *(a1 + 32);
    if (!v51)
    {
      goto LABEL_94;
    }

    v53 = *v51;
    v52 = v51[1];
    v54 = v52 + v48;
    if (*v51 - v52 < v48)
    {
      v48 = *v51 - v52;
    }

    v51[1] = v54;
    if (v53 > v52 && v48 != 0)
    {
LABEL_94:
      v66 = *(a1 + 16);
      do
      {
        v67 = *(a1 + 8) - v66;
        if (v67 < v48 + 1)
        {
          (*(a1 + 24))(a1, v48 + 2);
          v66 = *(a1 + 16);
          v67 = *(a1 + 8) - v66;
        }

        if (v67 >= v48)
        {
          v68 = v48;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = (*a1 + v66);
          v70 = v68;
          v71 = v10;
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v73 - 32;
            if ((v73 - 97) < 6)
            {
              v72 = v74;
            }

            *v69++ = v72;
            --v70;
          }

          while (v70);
          v66 = *(a1 + 16);
        }

        v10 += v68;
        v66 += v68;
        *(a1 + 16) = v66;
        v31 = v48 > v67;
        v48 -= v68;
      }

      while (v31);
    }

    v10 = v50;
    if (v44 == v46)
    {
      goto LABEL_118;
    }

LABEL_90:
    v61 = *(a1 + 32);
    if (v61)
    {
      v63 = *v61;
      v62 = v61[1];
      v61[1] = v62 + 1;
      --v44;
      if (v62 >= v63)
      {
        continue;
      }
    }

    v64 = *a1;
    v65 = *(a1 + 16);
    *(a1 + 16) = v65 + 1;
    *(v64 + v65) = a6;
    v44 = v49;
    if (*(a1 + 16) == *(a1 + 8))
    {
      (*(a1 + 24))(a1, 2);
      v44 = v49;
    }
  }

  v56 = *(a1 + 32);
  if (!v56)
  {
    goto LABEL_108;
  }

  v58 = *v56;
  v57 = v56[1];
  v59 = v57 + v48;
  if (*v56 - v57 < v48)
  {
    v48 = *v56 - v57;
  }

  v56[1] = v59;
  if (v58 > v57 && v48 != 0)
  {
LABEL_108:
    v75 = *(a1 + 16);
    v76 = v10;
    do
    {
      v77 = *(a1 + 8) - v75;
      if (v77 < v48 + 1)
      {
        (*(a1 + 24))(a1, v48 + 2);
        v75 = *(a1 + 16);
        v77 = *(a1 + 8) - v75;
      }

      if (v77 >= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        memmove((*a1 + v75), v76, v78);
        v75 = *(a1 + 16);
      }

      v75 += v78;
      *(a1 + 16) = v75;
      v76 += v78;
      v31 = v48 > v77;
      v48 -= v78;
    }

    while (v31);
  }

  v10 += *v49;
  if (v44 != v46)
  {
    goto LABEL_90;
  }

LABEL_118:

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v84, v85);
}

uint64_t std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  v7 = a2 - a1;
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v8 >> 1;
        v8 -= v8 >> 1;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v26, SHIDWORD(a5));
        v10 = *(a3 + 32);
        if (!v10)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }
    }

    else if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v10 = *(a3 + 32);
      if (!v10)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    v8 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a2 - a1), SHIDWORD(a5));
    v10 = *(a3 + 32);
    if (!v10)
    {
LABEL_40:
      v32 = *(a3 + 16);
      do
      {
        v33 = *(a3 + 8) - v32;
        if (v33 < v7 + 1)
        {
          (*(a3 + 24))(a3, v7 + 2);
          v32 = *(a3 + 16);
          v33 = *(a3 + 8) - v32;
        }

        if (v33 >= v7)
        {
          v34 = v7;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          v35 = (*a3 + v32);
          v36 = v34;
          v37 = v6;
          do
          {
            v39 = *v37++;
            v38 = v39;
            v40 = v39 - 32;
            if ((v39 - 97) < 6)
            {
              v38 = v40;
            }

            *v35++ = v38;
            --v36;
          }

          while (v36);
          v32 = *(a3 + 16);
        }

        v6 += v34;
        v32 += v34;
        *(a3 + 16) = v32;
        v17 = v7 > v33;
        v7 -= v34;
      }

      while (v17);
LABEL_38:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

LABEL_31:
    v28 = *v10;
    v27 = v10[1];
    v29 = v27 + v7;
    if (*v10 - v27 < v7)
    {
      v7 = *v10 - v27;
    }

    v10[1] = v29;
    if (v28 <= v27 || v7 == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  v11 = *(a3 + 32);
  if (!v11)
  {
    goto LABEL_13;
  }

  v13 = *v11;
  v12 = v11[1];
  v14 = v12 + v7;
  if (*v11 - v12 < v7)
  {
    v7 = *v11 - v12;
  }

  v11[1] = v14;
  if (v13 > v12 && v7 != 0)
  {
LABEL_13:
    v16 = *(a3 + 16);
    do
    {
      v18 = *(a3 + 8) - v16;
      if (v18 < v7 + 1)
      {
        (*(a3 + 24))(a3, v7 + 2);
        v16 = *(a3 + 16);
        v18 = *(a3 + 8) - v16;
      }

      if (v18 >= v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        v20 = (*a3 + v16);
        v21 = v19;
        v22 = v6;
        do
        {
          v24 = *v22++;
          v23 = v24;
          v25 = v24 - 32;
          if ((v24 - 97) < 6)
          {
            v23 = v25;
          }

          *v20++ = v23;
          --v21;
        }

        while (v21);
        v16 = *(a3 + 16);
      }

      v6 += v19;
      v16 += v19;
      *(a3 + 16) = v16;
      v17 = v7 > v18;
      v7 -= v19;
    }

    while (v17);
  }

  return a3;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        return a1 + 5;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        return (a1 + 9);
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        return a1 + 4;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        return (a1 + 7);
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      return a1 + 3;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      return (a1 + 5);
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      return a1 + 2;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      return (a1 + 3);
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    return a1 + 1;
  }

  else
  {
    *a1 = a2 | 0x30;
    return (a1 + 1);
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x11)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 4;
        *(v4 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v4 -= 4;
        v6 = a3 > 0x10F;
        a3 >>= 4;
      }

      while (v6);
    }

    v7 = (v4 - 1);
    do
    {
      *v7-- = a01[v5 & 1];
      v6 = v5 > 1;
      v5 >>= 1;
    }

    while (v6);
  }

  return a2;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x41)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 6;
        *(v4 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x40);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a01234567[v5 & 7];
      v7 = v5 > 7;
      v5 >>= 3;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x101)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 8;
        *(v4 - 2) = std::__itoa::__base_16_lut[a3];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x100);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a0123456789abcd_1[v5 & 0xF];
      v7 = v5 > 0xF;
      v5 >>= 4;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v16[5] = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v15[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    *v15 = v7;
    *v13 = v7;
    *&v13[16] = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v13, 170, 19);
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v13[19];
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v13, 170, 21);
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v13, &v13[21], 0, 0xAu);
    goto LABEL_19;
  }

  *&v13[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v13[16] = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v13, &v13[24], v5, 8u);
LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E69272B0](v88);
    v21 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v21, v88);
    }

    else
    {
      std::locale::locale(v21, v88);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v88);
  }

  std::locale::locale(&v85, (a2 + 32));
  v22 = std::locale::use_facet(&v85, MEMORY[0x1E69E5368]);
  v23 = v20 - v16;
  std::locale::~locale(&v85);
  memset(v88, 170, sizeof(v88));
  (v22->__vftable[1].__on_zero_shared)(v88, v22);
  if ((SHIBYTE(v88[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v88[0].__locale_;
    v25 = v88[1].__locale_;
    if (v88[1].__locale_ && v23 > *v88[0].__locale_)
    {
      v78 = v22;
      v79 = v20;
      v77 = a3;
      v81 = a4;
      v26 = v88[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v88[0].__locale_);
LABEL_67:
    v48 = HIDWORD(a3);
    v27 = *a2;
    if ((v13 & 7) == 4)
    {
      v80 = v20;
      v82 = a4;
      v49 = v16 - v9;
      v50 = *(v27 + 32);
      v51 = v16 - v9;
      if (!v50 || ((v53 = *v50, v52 = v50[1], *v50 - v52 >= v49) ? (v51 = v16 - v9) : (v51 = *v50 - v52), (v50[1] = v52 + v49, v53 > v52) ? (v54 = v51 == 0) : (v54 = 1), !v54))
      {
        v61 = *(v27 + 16);
        do
        {
          v63 = *(v27 + 8) - v61;
          if (v63 < v51 + 1)
          {
            (*(v27 + 24))(v27, v51 + 2);
            v61 = *(v27 + 16);
            v63 = *(v27 + 8) - v61;
          }

          if (v63 >= v51)
          {
            v64 = v51;
          }

          else
          {
            v64 = v63;
          }

          if (v64)
          {
            memmove((*v27 + v61), v9, v64);
            v61 = *(v27 + 16);
          }

          v61 += v64;
          *(v27 + 16) = v61;
          v9 += v64;
          v62 = v51 > v63;
          v51 -= v64;
        }

        while (v62);
      }

      v55 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v49)
      {
        v56 = v49;
      }

      else
      {
        v56 = HIDWORD(a3);
      }

      v48 = (HIDWORD(a3) - v56);
      v27 = *a2;
      v57 = 48;
      v20 = v80;
      a4 = v82;
    }

    else
    {
      v57 = BYTE4(a4);
      v55 = a3;
      v16 = v9;
    }

    v58 = v48 << 32;
    v59 = a4 & 0xFFFFFF00FFFFFFFFLL | (v57 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v20, v27, a3 & 0xFFFF0700 | v58 | v55, v59);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v20 - v16, v27, v58 | a3 & 0xFFFFFF00 | v55, v59, v20 - v16);
    }

    return v27;
  }

  if (!HIBYTE(v88[2].__locale_) || v23 <= SLOBYTE(v88[0].__locale_))
  {
    goto LABEL_67;
  }

  v78 = v22;
  v79 = v20;
  v77 = a3;
  v81 = a4;
  locale = v88;
  v26 = v88[0].__locale_;
  v25 = v88[1].__locale_;
LABEL_26:
  v27 = *a2;
  v85.__locale_ = 0;
  v86 = 0;
  v87 = 0;
  v28 = v25 + v26;
  if (SHIBYTE(v88[2].__locale_) >= 0)
  {
    v29 = v88 + SHIBYTE(v88[2].__locale_);
  }

  else
  {
    v29 = v28;
  }

  v30 = *locale;
  v31 = *locale;
  v32 = v23 - v30;
  if (v23 <= v30)
  {
    v66 = 0;
    v65 = v31 + v32;
    goto LABEL_99;
  }

  v33 = v29 - 1;
  do
  {
    while (1)
    {
      v34 = HIBYTE(v87);
      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        break;
      }

      v35 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v86 != v35)
      {
        v41 = v85.__locale_;
        v35 = v86;
        goto LABEL_56;
      }

      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v83 = locale;
      __src = v85.__locale_;
      if (v35 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v39 = 0;
      v38 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v40 = operator new(v38);
      v41 = v40;
      if (v35)
      {
        memmove(v40, __src, v35);
      }

      if (!v39)
      {
        operator delete(__src);
      }

      v85.__locale_ = v41;
      v87 = v38 | 0x8000000000000000;
      locale = v83;
LABEL_56:
      v86 = v35 + 1;
      v43 = v41 + v35;
      *v43 = v31;
      v43[1] = 0;
      if (locale != v33)
      {
        goto LABEL_57;
      }

LABEL_31:
      v31 = *locale;
      v32 -= *locale;
      if (v32 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v87) == 22)
    {
      v83 = locale;
      __src = &v85;
      v35 = 22;
LABEL_38:
      if (v35 + 1 > 2 * v35)
      {
        v36 = v35 + 1;
      }

      else
      {
        v36 = 2 * v35;
      }

      if ((v36 | 7) == 0x17)
      {
        v37 = 25;
      }

      else
      {
        v37 = (v36 | 7) + 1;
      }

      if (v36 >= 0x17)
      {
        v38 = v37;
      }

      else
      {
        v38 = 23;
      }

      v39 = v35 == 22;
      goto LABEL_48;
    }

    HIBYTE(v87) = (HIBYTE(v87) + 1) & 0x7F;
    v42 = &v85 + v34;
    *v42 = v31;
    v42[1] = 0;
    if (locale == v33)
    {
      goto LABEL_31;
    }

LABEL_57:
    v44 = (locale + 1);
    v45 = (locale + 1);
    do
    {
      v46 = *v45++;
      v31 = v46;
      if (v46)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44 == v33;
      }

      v44 = v45;
    }

    while (!v47);
    locale = (v45 - 1);
    v32 -= v31;
  }

  while (v32 > 0);
LABEL_95:
  v65 = v31 + v32;
  if (SHIBYTE(v87) < 0)
  {
    v68 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v86 == v68)
    {
      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v67 = v85.__locale_;
      v70 = 0x7FFFFFFFFFFFFFF7;
      if (v68 >= 0x3FFFFFFFFFFFFFF3)
      {
        v73 = 0;
      }

      else
      {
LABEL_103:
        if (v68 + 1 > 2 * v68)
        {
          v71 = v68 + 1;
        }

        else
        {
          v71 = 2 * v68;
        }

        if ((v71 | 7) == 0x17)
        {
          v72 = 25;
        }

        else
        {
          v72 = (v71 | 7) + 1;
        }

        if (v71 >= 0x17)
        {
          v70 = v72;
        }

        else
        {
          v70 = 23;
        }

        v73 = v68 == 22;
      }

      v74 = operator new(v70);
      v69 = v74;
      if (v68)
      {
        memmove(v74, v67, v68);
      }

      if (!v73)
      {
        operator delete(v67);
      }

      v85.__locale_ = v69;
      v87 = v70 | 0x8000000000000000;
    }

    else
    {
      v69 = v85.__locale_;
      v68 = v86;
    }

    v86 = v68 + 1;
  }

  else
  {
    v66 = HIBYTE(v87);
    if (HIBYTE(v87) == 22)
    {
      v67 = &v85;
      v68 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v68 = v66;
    HIBYTE(v87) = (v66 + 1) & 0x7F;
    v69 = &v85;
  }

  v75 = v69 + v68;
  *v75 = v65;
  v75[1] = 0;
  v76 = (v78->__vftable[1].~facet_0)(v78);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v27, v9, v16, v79, &v85, v76, v77, v81);
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v85.__locale_);
  }

  if (SHIBYTE(v88[2].__locale_) < 0)
  {
    operator delete(v88[0].__locale_);
  }

  return v27;
}

void sub_1E53825B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

_WORD *std::__to_chars_integral[abi:ne200100]<unsigned long long>(_WORD *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  HIDWORD(v5) = a4 - 2;
  LODWORD(v5) = a4 - 2;
  v4 = v5 >> 1;
  if (v4 == 4)
  {
    if (a2 - a1 <= 19)
    {
      v6 = (1233 * (64 - __clz(a3 | 1))) >> 12;
      if (a2 - a1 < v6 - (std::__itoa::__pow10_64[v6] > a3) + 1)
      {
        return a2;
      }
    }

    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      v8 = a3 / 0x2540BE400;
      v9 = a3;
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      a3 = v9 - 10000000000 * v8;
    }

    *a1 = std::__itoa::__digits_base_10[a3 / 0x5F5E100];
    a1[1] = std::__itoa::__digits_base_10[a3 % 0x5F5E100 / 0xF4240];
    v10 = a3 % 0x5F5E100 % 0xF4240;
    a1[2] = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
    v10 %= 0x2710u;
    a1[3] = std::__itoa::__digits_base_10[v10 / 0x64u];
    a1[4] = std::__itoa::__digits_base_10[v10 % 0x64u];
    return a1 + 5;
  }

  else if (v4)
  {
    if (v4 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    else
    {
      if (v4 != 7)
      {
        v18 = a1;
        v19 = a3;
        v11 = a2 - a1;
        v12 = a2;
        v14 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
        a2 = v12;
        if (v11 >= v14)
        {
          v15 = v19;
          a2 = v18 + v14;
          v16 = (a2 - 1);
          do
          {
            *v16-- = a0123456789abcd_0[v15 % a4];
            v17 = v15 >= a4;
            v15 /= a4;
          }

          while (v17);
        }

        return a2;
      }

      return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }
  }

  else
  {
    return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (67 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = std::__itoa::__base_16_lut[a3];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_1[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, std::locale *a3, unint64_t a4, unint64_t a5, char a6)
{
  *&v24[5] = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    *&v23[15] = -1431655766;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v9;
    *v23 = v9;
    v20 = v9;
    v21 = v9;
    *&v18[16] = v9;
    v19 = v9;
    __src = v9;
    *v18 = v9;
    v16 = 2;
    if (BYTE1(a4) == 2)
    {
      v15 = "0b";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v15 = "0B";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v13 = v24;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v10, a5, a6, &__src, v13, v15, v16);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    *&v18[15] = -1431655766;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v12;
    *v18 = v12;
    v16 = 16;
    if (BYTE1(a4) == 6)
    {
      v15 = "0x";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v15 = "0X";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v13 = &v18[19];
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    *&v18[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v11;
    *v18 = v11;
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, &__src, &v18[24], 0, 0xAu);
    goto LABEL_19;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v18[13] = v6;
  __src = v6;
  *v18 = v6;
  if (a1 | a2)
  {
    v7 = "0";
  }

  else
  {
    v7 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, &__src, &v18[29], v7, 8u);
LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, std::locale *a3, unint64_t a4, unint64_t a5, char a6, char *__src, uint64_t a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 == 4)
  {
    v25 = a8 - v19;
    if (a2)
    {
      if (v25 > 38 || (v26 = (1233 * (128 - __clz(a2))) >> 12, v25 >= v26 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v26]) + 1))
      {
        if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
        {
          *v19 = __udivti3() | 0x30;
          v30 = __udivti3();
          v19[1] = ((1441151881 * v30) >> 57) + 48;
          *(v19 + 1) = std::__itoa::__digits_base_10[v30 % 0x5F5E100 / 0xF4240uLL];
          v31 = v30 % 0x5F5E100 % 0xF4240;
          *(v19 + 2) = std::__itoa::__digits_base_10[v31 / 0x2710uLL];
          v31 %= 0x2710u;
          *(v19 + 3) = std::__itoa::__digits_base_10[v31 / 0x64u];
          *(v19 + 4) = std::__itoa::__digits_base_10[v31 % 0x64u];
          v32 = __udivti3();
          *(v19 + 5) = std::__itoa::__digits_base_10[v32 / 0x5F5E100];
          v33 = v32 % 0x5F5E100;
          *(v19 + 6) = std::__itoa::__digits_base_10[v33 / 0xF4240uLL];
          v33 %= 0xF4240u;
          *(v19 + 7) = std::__itoa::__digits_base_10[v33 / 0x2710uLL];
          v33 %= 0x2710u;
          *(v19 + 8) = std::__itoa::__digits_base_10[v33 / 0x64u];
          *(v19 + 9) = std::__itoa::__digits_base_10[v33 % 0x64u];
          v28 = v19 + 20;
        }

        else
        {
          v27 = __udivti3();
          if (HIDWORD(v27))
          {
            v36 = v19;
            if (v27 > 0x2540BE3FFLL)
            {
              v36 = std::__itoa::__base_10_u32[abi:ne200100](v19, v27 / 0x2540BE400);
              v27 %= 0x2540BE400uLL;
            }

            *v36 = std::__itoa::__digits_base_10[v27 / 0x5F5E100];
            v37 = v27 % 0x5F5E100;
            v36[1] = std::__itoa::__digits_base_10[v37 / 0xF4240uLL];
            v37 %= 0xF4240u;
            v36[2] = std::__itoa::__digits_base_10[v37 / 0x2710uLL];
            v37 %= 0x2710u;
            v36[3] = std::__itoa::__digits_base_10[v37 / 0x64u];
            v36[4] = std::__itoa::__digits_base_10[v37 % 0x64u];
            v28 = v36 + 5;
          }

          else
          {
            v28 = std::__itoa::__base_10_u32[abi:ne200100](v19, v27);
          }
        }

        v38 = __umodti3();
        *v28 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
        v39 = v38 / 0x2540BE400 % 0x5F5E100;
        *(v28 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
        v39 %= 0xF4240u;
        *(v28 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
        v39 %= 0x2710u;
        *(v28 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
        *(v28 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
        *(v28 + 9) = std::__itoa::__digits_base_10[v38 % 0x2540BE400 / 0x5F5E100];
        *(v28 + 11) = std::__itoa::__digits_base_10[v38 % 0x2540BE400 % 0x5F5E100 / 0xF4240];
        v40 = v38 % 0x2540BE400 % 0x5F5E100 % 0xF4240;
        *(v28 + 13) = std::__itoa::__digits_base_10[v40 / 0x2710uLL];
        v40 %= 0x2710u;
        *(v28 + 15) = std::__itoa::__digits_base_10[v40 / 0x64u];
        *(v28 + 17) = std::__itoa::__digits_base_10[v40 % 0x64u];
        v10 = v28 + 19;
        v13 = a4;
      }
    }

    else if (v25 > 19 || (v29 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v29 - (std::__itoa::__pow10_64[v29] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v34 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v34 = std::__itoa::__base_10_u32[abi:ne200100](v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        *v34 = std::__itoa::__digits_base_10[v15 / 0x5F5E100];
        v34[1] = std::__itoa::__digits_base_10[v15 % 0x5F5E100 / 0xF4240];
        v35 = v15 % 0x5F5E100 % 0xF4240;
        v34[2] = std::__itoa::__digits_base_10[v35 / 0x2710uLL];
        v35 %= 0x2710u;
        v34[3] = std::__itoa::__digits_base_10[v35 / 0x64u];
        v34[4] = std::__itoa::__digits_base_10[v35 % 0x64u];
        v10 = (v34 + 5);
      }

      else
      {
        v10 = std::__itoa::__base_10_u32[abi:ne200100](v19, a1);
      }
    }
  }

  else if (v23)
  {
    if (v23 == 3)
    {
      v10 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    else if (v23 == 7)
    {
      v10 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    else
    {
      __srca = a3;
      v100 = a8;
      v101 = a8 - v19;
      v102 = a2;
      v103 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
      if (v101 >= v103)
      {
        v100 = &v19[v103];
        v104 = v100 - 1;
        do
        {
          v105 = __udivti3();
          v106 = __PAIR128__(v102, v15) >= a10;
          *v104-- = a0123456789abcd_0[v15 - v105 * a10];
          v15 = v105;
          v102 = v107;
        }

        while (v106);
      }

      v10 = v100;
      v14 = __srca;
    }
  }

  else
  {
    v10 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
  }

  v113 = v10;
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_87;
  }

  if ((v14[5].__locale_ & 1) == 0)
  {
    MEMORY[0x1E69272B0](v119);
    v41 = v14 + 4;
    if (LOBYTE(v14[5].__locale_) == 1)
    {
      std::locale::operator=(v41, v119);
    }

    else
    {
      std::locale::locale(v41, v119);
      LOBYTE(v14[5].__locale_) = 1;
    }

    std::locale::~locale(v119);
  }

  std::locale::locale(&v116, v14 + 4);
  v42 = std::locale::use_facet(&v116, MEMORY[0x1E69E5368]);
  v43 = v10 - v19;
  std::locale::~locale(&v116);
  memset(v119, 170, sizeof(v119));
  (v42->__vftable[1].__on_zero_shared)(v119, v42);
  if ((SHIBYTE(v119[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v119[0].__locale_;
    v45 = v119[1].__locale_;
    if (v119[1].__locale_ && v43 > *v119[0].__locale_)
    {
      v108 = v42;
      v110 = v13;
      v111 = a5;
      v46 = v119[0].__locale_;
      goto LABEL_45;
    }

    operator delete(v119[0].__locale_);
    goto LABEL_86;
  }

  if (!HIBYTE(v119[2].__locale_) || v43 <= SLOBYTE(v119[0].__locale_))
  {
LABEL_86:
    v10 = v113;
LABEL_87:
    v68 = HIDWORD(v13);
    v47 = v14->__locale_;
    if ((v16 & 7) == 4)
    {
      v69 = v14;
      v70 = v13;
      v112 = a5;
      v71 = v19 - v11;
      v72 = *(v47 + 32);
      v73 = v19 - v11;
      if (!v72 || ((v75 = *v72, v74 = v72[1], *v72 - v74 >= v71) ? (v73 = v19 - v11) : (v73 = *v72 - v74), (v72[1] = v74 + v71, v75 > v74) ? (v76 = v73 == 0) : (v76 = 1), !v76))
      {
        v83 = *(v47 + 16);
        do
        {
          v85 = *(v47 + 8) - v83;
          if (v85 < v73 + 1)
          {
            (*(v47 + 24))(v47, v73 + 2);
            v83 = *(v47 + 16);
            v85 = *(v47 + 8) - v83;
          }

          if (v85 >= v73)
          {
            v86 = v73;
          }

          else
          {
            v86 = v85;
          }

          if (v86)
          {
            memmove((*v47 + v83), v11, v86);
            v83 = *(v47 + 16);
          }

          v83 += v86;
          *(v47 + 16) = v83;
          v11 += v86;
          v84 = v73 > v85;
          v73 -= v86;
        }

        while (v84);
      }

      v77 = v70 & 0xF8 | 3;
      if (v68 >= v71)
      {
        v78 = v71;
      }

      else
      {
        v78 = v68;
      }

      LODWORD(v13) = v70;
      v68 = (v68 - v78);
      v47 = *v69;
      v79 = 48;
      a5 = v112;
      v10 = v113;
    }

    else
    {
      v79 = BYTE4(a5);
      v77 = v13;
      v19 = v11;
    }

    v80 = v68 << 32;
    v81 = a5 & 0xFFFFFF00FFFFFFFFLL | (v79 << 32);
    if ((v13 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v19, v10, v47, v13 & 0xFFFF0700 | v80 | v77, v81);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v19, v10 - v19, v47, v80 | v13 & 0xFFFFFF00 | v77, v81, v10 - v19);
    }

    return v47;
  }

  v108 = v42;
  v110 = v13;
  v111 = a5;
  locale = v119;
  v46 = v119[0].__locale_;
  v45 = v119[1].__locale_;
LABEL_45:
  v47 = v14->__locale_;
  v116.__locale_ = 0;
  v117 = 0;
  v118 = 0;
  v48 = v45 + v46;
  if (SHIBYTE(v119[2].__locale_) >= 0)
  {
    v49 = v119 + SHIBYTE(v119[2].__locale_);
  }

  else
  {
    v49 = v48;
  }

  v50 = *locale;
  v51 = *locale;
  v52 = v43 - v50;
  if (v43 <= v50)
  {
    v88 = 0;
    v87 = v51 + v52;
    v89 = v110;
    goto LABEL_119;
  }

  v53 = v49 - 1;
  do
  {
    while (1)
    {
      v54 = HIBYTE(v118);
      if ((SHIBYTE(v118) & 0x80000000) == 0)
      {
        break;
      }

      v55 = (v118 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v117 != v55)
      {
        v61 = v116.__locale_;
        v55 = v117;
        goto LABEL_75;
      }

      if ((v118 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v114 = locale;
      __srca = v116.__locale_;
      if (v55 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_57;
      }

      v59 = 0;
      v58 = 0x7FFFFFFFFFFFFFF7;
LABEL_67:
      v60 = operator new(v58);
      v61 = v60;
      if (v55)
      {
        memmove(v60, __srca, v55);
      }

      if (!v59)
      {
        operator delete(__srca);
      }

      v116.__locale_ = v61;
      v118 = v58 | 0x8000000000000000;
      locale = v114;
LABEL_75:
      v117 = v55 + 1;
      v63 = v61 + v55;
      *v63 = v51;
      v63[1] = 0;
      if (locale != v53)
      {
        goto LABEL_76;
      }

LABEL_50:
      v51 = *locale;
      v52 -= *locale;
      if (v52 <= 0)
      {
        goto LABEL_115;
      }
    }

    if (HIBYTE(v118) == 22)
    {
      v114 = locale;
      __srca = &v116;
      v55 = 22;
LABEL_57:
      if (v55 + 1 > 2 * v55)
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = 2 * v55;
      }

      if ((v56 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v56 | 7) + 1;
      }

      if (v56 >= 0x17)
      {
        v58 = v57;
      }

      else
      {
        v58 = 23;
      }

      v59 = v55 == 22;
      goto LABEL_67;
    }

    HIBYTE(v118) = (HIBYTE(v118) + 1) & 0x7F;
    v62 = &v116 + v54;
    *v62 = v51;
    v62[1] = 0;
    if (locale == v53)
    {
      goto LABEL_50;
    }

LABEL_76:
    v64 = (locale + 1);
    v65 = (locale + 1);
    do
    {
      v66 = *v65++;
      v51 = v66;
      if (v66)
      {
        v67 = 1;
      }

      else
      {
        v67 = v64 == v53;
      }

      v64 = v65;
    }

    while (!v67);
    locale = (v65 - 1);
    v52 -= v51;
  }

  while (v52 > 0);
LABEL_115:
  v87 = v51 + v52;
  if (SHIBYTE(v118) < 0)
  {
    v91 = (v118 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v89 = v110;
    if (v117 == v91)
    {
      if ((v118 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v90 = v116.__locale_;
      v93 = 0x7FFFFFFFFFFFFFF7;
      if (v91 >= 0x3FFFFFFFFFFFFFF3)
      {
        v96 = 0;
      }

      else
      {
LABEL_123:
        if (v91 + 1 > 2 * v91)
        {
          v94 = v91 + 1;
        }

        else
        {
          v94 = 2 * v91;
        }

        if ((v94 | 7) == 0x17)
        {
          v95 = 25;
        }

        else
        {
          v95 = (v94 | 7) + 1;
        }

        if (v94 >= 0x17)
        {
          v93 = v95;
        }

        else
        {
          v93 = 23;
        }

        v96 = v91 == 22;
      }

      v97 = operator new(v93);
      v92 = v97;
      if (v91)
      {
        memmove(v97, v90, v91);
      }

      if (!v96)
      {
        operator delete(v90);
      }

      v116.__locale_ = v92;
      v118 = v93 | 0x8000000000000000;
    }

    else
    {
      v92 = v116.__locale_;
      v91 = v117;
    }

    v117 = v91 + 1;
  }

  else
  {
    v88 = HIBYTE(v118);
    v89 = v110;
    if (HIBYTE(v118) == 22)
    {
      v90 = &v116;
      v91 = 22;
      goto LABEL_123;
    }

LABEL_119:
    v91 = v88;
    HIBYTE(v118) = (v88 + 1) & 0x7F;
    v92 = &v116;
  }

  v98 = v92 + v91;
  *v98 = v87;
  v98[1] = 0;
  v99 = (v108->__vftable[1].~facet_0)(v108);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v47, v11, v19, v113, &v116, v99, v89, v111);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(v116.__locale_);
  }

  if (SHIBYTE(v119[2].__locale_) < 0)
  {
    operator delete(v119[0].__locale_);
  }

  return v47;
}

void sub_1E5383A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) >= a3)
  {
    v6 = a3 * a3;
    v7 = a3 * a3 * a3;
    v3 = 4;
    while (1)
    {
      if (__PAIR128__(a2, a1) < v6)
      {
        return (v3 - 2);
      }

      if (__PAIR128__(a2, a1) < v7)
      {
        break;
      }

      if (__PAIR128__(a2, a1) < v6 * v6)
      {
        return v3;
      }

      a1 = __udivti3();
      v3 = (v3 + 4);
      if (__PAIR128__(a2, a1) < a3)
      {
        return (v3 - 3);
      }
    }

    return (v3 - 1);
  }

  else
  {
    return 1;
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x11)
    {
      v8 = a3;
      v10 = a4;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 4;
        v10 = a4 >> 4;
        *(v7 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v7 -= 4;
        v11 = a3 <= 0x10F;
        a3 = v8;
        a4 >>= 4;
      }

      while (!v11);
    }

    v12 = (v7 - 1);
    do
    {
      v13 = v8 & 1;
      v11 = v8 <= 1;
      *(&v14 + 1) = v10;
      *&v14 = v8;
      v8 = v14 >> 1;
      v10 >>= 1;
      *v12-- = a01[v13];
    }

    while (!v11);
  }

  return a2;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x41)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 6;
        a4 >>= 6;
        *(v7 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x40);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 7;
      v12 = v8 <= 7;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 3;
      a4 >>= 3;
      *v10-- = a01234567[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (131 - v5) >> 2;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x101)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 8;
        a4 >>= 8;
        *(v7 - 2) = std::__itoa::__base_16_lut[a3];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x100);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 0xF;
      v12 = v8 <= 0xF;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 4;
      a4 >>= 4;
      *v10-- = a0123456789abcd_1[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  __src = -1431655766;
  if (a4)
  {
    p_src = (&__src + 1);
    LOBYTE(__src) = 45;
    if (BYTE1(a2) > 0x10u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 43;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else if (v7 == 3)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 32;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      p_src = &__src;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }
  }

  if (((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
    goto LABEL_15;
  }

LABEL_13:
  v8 = 6;
  if (BYTE1(a2) != 18)
  {
    v8 = 0;
  }

LABEL_15:
  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  *(p_src + 2) = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
  return a1;
}

uint64_t std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, size_t a8)
{
  v8 = a8;
  v13 = HIDWORD(a5);
  v14 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v15 = a7 - a1;
      v16 = *(a3 + 32);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_7:
      v17 = *v16;
      v18 = v16[1];
      if (*v16 - v18 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = *v16 - v18;
      }

      v20 = v18 + v15;
      v16[1] = v20;
      if (v17 <= v18 || v19 == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if ((a4 & 7) == 3)
  {
LABEL_6:
    v14 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a6 + a8), SHIDWORD(a5));
    v15 = a7 - a1;
    v16 = *(a3 + 32);
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  v22 = v14 >> 1;
  v14 -= v14 >> 1;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v22, SHIDWORD(a5));
  v15 = a7 - a1;
  v16 = *(a3 + 32);
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_17:
  v19 = v15;
LABEL_18:
  v23 = *(a3 + 16);
  do
  {
    v25 = *(a3 + 8) - v23;
    if (v25 < v19 + 1)
    {
      (*(a3 + 24))(a3, v19 + 2);
      v23 = *(a3 + 16);
      v25 = *(a3 + 8) - v23;
    }

    if (v25 >= v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      memmove((*a3 + v23), a1, v26);
      v23 = *(a3 + 16);
    }

    v23 += v26;
    *(a3 + 16) = v23;
    a1 += v26;
    v24 = v19 > v25;
    v19 -= v26;
  }

  while (v24);
  v16 = *(a3 + 32);
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = *v16;
  v20 = v16[1];
LABEL_30:
  v27 = v17 - v20;
  if (v17 - v20 >= v8)
  {
    v27 = v8;
  }

  v24 = v17 > v20;
  v28 = v20 + v8;
  v16[1] = v28;
  if (!v24 || v27 == 0)
  {
    v30 = a2 - a7;
    goto LABEL_49;
  }

  v23 = *(a3 + 16);
  v8 = v27;
  do
  {
LABEL_40:
    v31 = *(a3 + 8) - v23;
    if (v31 < v8 + 1)
    {
      (*(a3 + 24))(a3, v8 + 2);
      v23 = *(a3 + 16);
      v31 = *(a3 + 8) - v23;
    }

    if (v31 >= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      memset((*a3 + v23), 48, v32);
      v23 = *(a3 + 16);
    }

    v23 += v32;
    *(a3 + 16) = v23;
    v24 = v8 > v31;
    v8 -= v32;
  }

  while (v24);
  v16 = *(a3 + 32);
  v30 = a2 - a7;
  if (!v16)
  {
    goto LABEL_61;
  }

  v17 = *v16;
  v28 = v16[1];
LABEL_49:
  v33 = v17 - v28;
  if (v17 - v28 >= v30)
  {
    v33 = v30;
  }

  v16[1] = v28 + v30;
  if (v17 > v28 && v33 != 0)
  {
    v23 = *(a3 + 16);
    v30 = v33;
    do
    {
LABEL_61:
      v36 = *(a3 + 8) - v23;
      if (v36 < v30 + 1)
      {
        (*(a3 + 24))(a3, v30 + 2);
        v23 = *(a3 + 16);
        v36 = *(a3 + 8) - v23;
      }

      if (v36 >= v30)
      {
        v37 = v30;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        memmove((*a3 + v23), a7, v37);
        v23 = *(a3 + 16);
      }

      v23 += v37;
      *(a3 + 16) = v23;
      a7 += v37;
      v24 = v30 > v36;
      v30 -= v37;
    }

    while (v24);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, v13);
}

uint64_t std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  memset(__p, 170, 24);
  v138 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v138->__vftable[1].__on_zero_shared)(__p);
  v9 = a3[2];
  v10 = *a3;
  v140 = a3;
  if (v9 >= a3[1])
  {
    v9 = a3[1];
  }

  v11 = v9 - v10;
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
    if (!__p[1])
    {
      goto LABEL_59;
    }

    v15 = __p[0];
    v14 = *__p[0];
    if (v11 <= v14)
    {
      *__p[0] = 0;
      __p[1] = 0;
      goto LABEL_59;
    }

    v134 = a5;
    v135 = v9 - v10;
    v16 = *__p[0];
    v13 = __p[0];
  }

  else
  {
    if (!HIBYTE(__p[2]))
    {
      goto LABEL_59;
    }

    if (v11 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(__p[2]) = 0;
      goto LABEL_59;
    }

    v134 = a5;
    v135 = v9 - v10;
    v13 = __p[0];
    v12 = __p[1];
    v14 = SLOBYTE(__p[0]);
    v15 = __p;
    v16 = __p[0];
  }

  v142 = 0uLL;
  v143 = 0;
  v17 = &v12[v13];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p + SHIBYTE(__p[2]);
  }

  else
  {
    v18 = v17;
  }

  v19 = v135 - v14;
  if (v135 <= v14)
  {
    v37 = 0;
    v36 = v16 + v19;
    a5 = v134;
    v11 = v135;
    goto LABEL_56;
  }

  v20 = (v18 - 1);
  do
  {
    while (1)
    {
      v21 = HIBYTE(v143);
      if ((SHIBYTE(v143) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v143 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v142 + 1) != v23)
      {
        v23 = *(&v142 + 1);
        v29 = v142;
        goto LABEL_40;
      }

      if ((v143 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v142;
      *v141 = v15;
      if (v23 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_22;
      }

      v27 = 0;
      v26 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
      v28 = operator new(v26);
      v29 = v28;
      if (v23)
      {
        memmove(v28, v22, v23);
      }

      if (!v27)
      {
        operator delete(v22);
      }

      *&v142 = v29;
      v143 = v26 | 0x8000000000000000;
      v15 = *v141;
LABEL_40:
      *(&v142 + 1) = v23 + 1;
      v31 = &v29[v23];
      *v31 = v16;
      v31[1] = 0;
      if (v15 != v20)
      {
        goto LABEL_41;
      }

LABEL_15:
      v16 = *v15;
      v19 -= *v15;
      if (v19 <= 0)
      {
        goto LABEL_51;
      }
    }

    if (HIBYTE(v143) == 22)
    {
      *v141 = v15;
      v22 = &v142;
      v23 = 22;
LABEL_22:
      if (v23 + 1 > 2 * v23)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 2 * v23;
      }

      if ((v24 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v24 | 7) + 1;
      }

      if (v24 >= 0x17)
      {
        v26 = v25;
      }

      else
      {
        v26 = 23;
      }

      v27 = v23 == 22;
      goto LABEL_32;
    }

    HIBYTE(v143) = (HIBYTE(v143) + 1) & 0x7F;
    v30 = &v142 + v21;
    *v30 = v16;
    v30[1] = 0;
    if (v15 == v20)
    {
      goto LABEL_15;
    }

LABEL_41:
    v32 = (v15 + 1);
    v33 = (v15 + 1);
    do
    {
      v34 = *v33;
      v33 = (v33 + 1);
      v16 = v34;
      if (v34)
      {
        v35 = 1;
      }

      else
      {
        v35 = v32 == v20;
      }

      v32 = v33;
    }

    while (!v35);
    v15 = (v33 - 1);
    v19 -= v16;
  }

  while (v19 > 0);
LABEL_51:
  v36 = v16 + v19;
  if (SHIBYTE(v143) < 0)
  {
    v39 = (v143 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a5 = v134;
    v11 = v135;
    if (*(&v142 + 1) == v39)
    {
      if ((v143 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v38 = v142;
      v126 = 0x7FFFFFFFFFFFFFF7;
      if (v39 >= 0x3FFFFFFFFFFFFFF3)
      {
        v129 = 0;
      }

      else
      {
LABEL_205:
        if (v39 + 1 > 2 * v39)
        {
          v127 = v39 + 1;
        }

        else
        {
          v127 = 2 * v39;
        }

        if ((v127 | 7) == 0x17)
        {
          v128 = 25;
        }

        else
        {
          v128 = (v127 | 7) + 1;
        }

        if (v127 >= 0x17)
        {
          v126 = v128;
        }

        else
        {
          v126 = 23;
        }

        v129 = v39 == 22;
      }

      v130 = v126;
      v131 = operator new(v126);
      v132 = v131;
      if (v39)
      {
        memmove(v131, v38, v39);
      }

      if (!v129)
      {
        operator delete(v38);
      }

      *&v142 = v132;
      v143 = v130 | 0x8000000000000000;
    }

    else
    {
      v39 = *(&v142 + 1);
      v132 = v142;
    }

    *(&v142 + 1) = v39 + 1;
    v133 = &v132[v39];
    *v133 = v36;
    v133[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v37 = HIBYTE(v143);
    a5 = v134;
    v11 = v135;
    if (HIBYTE(v143) == 22)
    {
      v38 = &v142;
      v39 = 22;
      goto LABEL_205;
    }

LABEL_56:
    HIBYTE(v143) = (v37 + 1) & 0x7F;
    v40 = &v142 + v37;
    *v40 = v36;
    v40[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_57:
      operator delete(__p[0]);
    }
  }

  *__p = v142;
  __p[2] = v143;
LABEL_59:
  v41 = *(a2 + 16);
  v42 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v42 = __p[1];
  }

  v43 = &v42[v140[3] - v41 + *(a2 + 4) - (v42 != 0)];
  v44 = a5 & 7;
  v45 = (a5 >> 32) - v43;
  if (a5 >> 32 <= v43)
  {
    *v141 = 0;
    v45 = 0;
    v46 = HIDWORD(a6);
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  if (v44 == 4)
  {
    LOBYTE(v46) = 48;
  }

  else
  {
    v46 = HIDWORD(a6);
  }

  if (v44 == 4)
  {
    v47 = 3;
  }

  else
  {
    v47 = v44;
  }

  if (v47 > 1)
  {
    if (v47 != 3)
    {
      *v141 = v45 - (v45 >> 1);
      v45 >>= 1;
      if (v44 != 4)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if (!v47)
  {
LABEL_75:
    *v141 = 0;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  *v141 = v45;
  v45 = 0;
  if (v44 != 4)
  {
    goto LABEL_83;
  }

LABEL_78:
  if (v10 != v41)
  {
    v48 = *v41;
    v49 = *(a1 + 32);
    if (!v49 || (v51 = *v49, v50 = v49[1], v49[1] = v50 + 1, v50 < v51))
    {
      v52 = *a1;
      v53 = *(a1 + 16);
      *(a1 + 16) = v53 + 1;
      *(v52 + v53) = v48;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v54 = v11;
        v55 = v45;
        (*(a1 + 24))(a1, 2);
        v45 = v55;
        v11 = v54;
      }
    }
  }

LABEL_83:
  __ca = HIDWORD(a6) & 0xFFFFFF00 | v46;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v45, __ca);
  if (v44 != 4)
  {
    v56 = *(a2 + 16);
    if (v10 != v56)
    {
      v57 = *v56;
      v58 = *(a1 + 32);
      if (!v58 || (v60 = *v58, v59 = v58[1], v58[1] = v59 + 1, v59 < v60))
      {
        v61 = *a1;
        v62 = *(a1 + 16);
        *(a1 + 16) = v62 + 1;
        *(v61 + v62) = v57;
        if (*(a1 + 16) == *(a1 + 8))
        {
          (*(a1 + 24))(a1, 2);
        }
      }
    }
  }

  v63 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v63 = __p[1];
    if (!__p[1])
    {
      goto LABEL_120;
    }

    v64 = __p[0];
LABEL_94:
    v65 = v63 + v64;
    v66 = (v138->__vftable[1].~facet_0)(v138);
    v67 = v64 + 1;
    while (1)
    {
      v69 = v65 - 1;
      v68 = *(v65 - 1);
      v70 = *(a1 + 32);
      if (v70)
      {
        v72 = *v70;
        v71 = v70[1];
        if (*v70 - v71 >= v68)
        {
          v73 = *(v65 - 1);
        }

        else
        {
          v73 = *v70 - v71;
        }

        v70[1] = v71 + v68;
        if (v72 <= v71 || v73 == 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v73 = *(v65 - 1);
      }

      v80 = *(a1 + 16);
      v81 = v10;
      do
      {
        v83 = *(a1 + 8) - v80;
        if (v83 < v73 + 1)
        {
          (*(a1 + 24))(a1, v73 + 2);
          v80 = *(a1 + 16);
          v83 = *(a1 + 8) - v80;
        }

        if (v83 >= v73)
        {
          v84 = v73;
        }

        else
        {
          v84 = v83;
        }

        if (v84)
        {
          memmove((*a1 + v80), v81, v84);
          v80 = *(a1 + 16);
        }

        v80 += v84;
        *(a1 + 16) = v80;
        v81 += v84;
        v82 = v73 > v83;
        v73 -= v84;
      }

      while (v82);
LABEL_104:
      if (v65 == v67)
      {
        goto LABEL_126;
      }

      v10 += *(v65 - 1);
      v75 = *(a1 + 32);
      if (v75)
      {
        v77 = *v75;
        v76 = v75[1];
        v75[1] = v76 + 1;
        --v65;
        if (v76 >= v77)
        {
          continue;
        }
      }

      v78 = *a1;
      v79 = *(a1 + 16);
      *(a1 + 16) = v79 + 1;
      *(v78 + v79) = v66;
      v65 = v69;
      if (*(a1 + 16) == *(a1 + 8))
      {
        (*(a1 + 24))(a1, 2);
        v65 = v69;
      }
    }
  }

  if (HIBYTE(__p[2]))
  {
    v64 = __p;
    goto LABEL_94;
  }

LABEL_120:
  v85 = *(a1 + 32);
  if (v85)
  {
    v87 = *v85;
    v86 = v85[1];
    if (*v85 - v86 >= v11)
    {
      v88 = v11;
    }

    else
    {
      v88 = *v85 - v86;
    }

    v85[1] = v86 + v11;
    if (v87 <= v86 || !v88)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v88 = v11;
  }

  v123 = *(a1 + 16);
  do
  {
    v124 = *(a1 + 8) - v123;
    if (v124 < v88 + 1)
    {
      (*(a1 + 24))(a1, v88 + 2);
      v123 = *(a1 + 16);
      v124 = *(a1 + 8) - v123;
    }

    if (v124 >= v88)
    {
      v125 = v88;
    }

    else
    {
      v125 = v124;
    }

    if (v125)
    {
      memmove((*a1 + v123), v10, v125);
      v123 = *(a1 + 16);
    }

    v123 += v125;
    *(a1 + 16) = v123;
    v10 += v125;
    v82 = v88 > v124;
    v88 -= v125;
  }

  while (v82);
LABEL_126:
  if (v140[1] != v140[3])
  {
    v89 = (v138->__vftable[1].~facet)(v138);
    v90 = *(a1 + 32);
    if (!v90 || (v92 = *v90, v91 = v90[1], v90[1] = v91 + 1, v91 < v92))
    {
      v93 = *a1;
      v94 = *(a1 + 16);
      *(a1 + 16) = v94 + 1;
      *(v93 + v94) = v89;
      if (*(a1 + 16) == *(a1 + 8))
      {
        (*(a1 + 24))(a1, 2);
      }
    }

    v95 = v140[1];
    v96 = (v95 + 1);
    v97 = v140[2] - (v95 + 1);
    v98 = *(a1 + 32);
    if (v98)
    {
      v99 = *v98;
      v100 = v98[1];
      if (*v98 - v100 >= v97)
      {
        v101 = v97;
      }

      else
      {
        v101 = *v98 - v100;
      }

      v102 = v100 + v97;
      v98[1] = v102;
      if (v99 <= v100 || !v101)
      {
        v103 = *(a2 + 4);
        goto LABEL_151;
      }
    }

    else
    {
      v101 = v140[2] - (v95 + 1);
    }

    v104 = *(a1 + 16);
    do
    {
      v105 = *(a1 + 8) - v104;
      if (v105 < v101 + 1)
      {
        (*(a1 + 24))(a1, v101 + 2);
        v104 = *(a1 + 16);
        v105 = *(a1 + 8) - v104;
      }

      if (v105 >= v101)
      {
        v106 = v101;
      }

      else
      {
        v106 = v105;
      }

      if (v106)
      {
        memmove((*a1 + v104), v96, v106);
        v104 = *(a1 + 16);
      }

      v104 += v106;
      *(a1 + 16) = v104;
      v96 += v106;
      v82 = v101 > v105;
      v101 -= v106;
    }

    while (v82);
    v98 = *(a1 + 32);
    v103 = *(a2 + 4);
    if (v98)
    {
      v99 = *v98;
      v102 = v98[1];
LABEL_151:
      v107 = v99 - v102;
      if (v99 - v102 >= v103)
      {
        v107 = v103;
      }

      v98[1] = v102 + v103;
      if (v99 > v102 && v107 != 0)
      {
        v104 = *(a1 + 16);
        v103 = v107;
        goto LABEL_184;
      }
    }

    else
    {
      do
      {
LABEL_184:
        v121 = *(a1 + 8) - v104;
        if (v121 < v103 + 1)
        {
          (*(a1 + 24))(a1, v103 + 2);
          v104 = *(a1 + 16);
          v121 = *(a1 + 8) - v104;
        }

        if (v121 >= v103)
        {
          v122 = v103;
        }

        else
        {
          v122 = v121;
        }

        if (v122)
        {
          memset((*a1 + v104), 48, v122);
          v104 = *(a1 + 16);
        }

        v104 += v122;
        *(a1 + 16) = v104;
        v82 = v103 > v121;
        v103 -= v122;
      }

      while (v82);
    }
  }

  v110 = v140[2];
  v109 = v140[3];
  if (v110 != v109)
  {
    v111 = v109 - v110;
    v112 = *(a1 + 32);
    if (v112)
    {
      v114 = *v112;
      v113 = v112[1];
      if (*v112 - v113 >= v111)
      {
        v115 = v111;
      }

      else
      {
        v115 = *v112 - v113;
      }

      v112[1] = v113 + v111;
      if (v114 > v113 && v115 != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v115 = v111;
LABEL_172:
      v118 = *(a1 + 16);
      do
      {
        v119 = *(a1 + 8) - v118;
        if (v119 < v115 + 1)
        {
          (*(a1 + 24))(a1, v115 + 2);
          v118 = *(a1 + 16);
          v119 = *(a1 + 8) - v118;
        }

        if (v119 >= v115)
        {
          v120 = v115;
        }

        else
        {
          v120 = v119;
        }

        if (v120)
        {
          memmove((*a1 + v118), v110, v120);
          v118 = *(a1 + 16);
        }

        v118 += v120;
        *(a1 + 16) = v118;
        v110 += v120;
        v82 = v115 > v119;
        v115 -= v120;
      }

      while (v82);
    }
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v141, __ca);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1E5384CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    v27 = a1;
    operator delete(__p);
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unsigned __int8 *a2, size_t a3, uint64_t *a4)
{
  v6 = *a4;
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v9 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v6, v8, v7);
    return v6;
  }

  v10 = 0;
  v11 = a2;
  if (a3 && v9)
  {
    v12 = v9 & 0x7FFFFFFF;
    if (*a2 < 0)
    {
      v14 = a2;
    }

    else
    {
      v13 = 0;
      v11 = &a2[v12];
      v14 = &a2[v12 - 1];
      while (1)
      {
        if (a3 - 1 == v13)
        {
          v10 = a3;
          v11 = &a2[a3];
          goto LABEL_16;
        }

        if (v12 - 1 == v13)
        {
          break;
        }

        v15 = a2[++v13];
        if (v15 < 0)
        {
          v12 = v12 - v13 + 1;
          v14 = &a2[v13 - 1];
          goto LABEL_12;
        }
      }

      if ((*v11 & 0x80000000) == 0)
      {
        v10 = v9 & 0x7FFFFFFF;
        goto LABEL_16;
      }

      v12 = 1;
    }

LABEL_12:
    v10 = v14 - a2 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v14, &a2[a3], v12, 0);
  }

LABEL_16:
  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v11 - a2, v6, v8, v9, v10);
  return v6;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13 = v15;
          v13 = (v13 + 1);
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_65;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E69272B0](v86);
    v19 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v19, v86);
    }

    else
    {
      std::locale::locale(v19, v86);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v86);
  }

  std::locale::locale(&v83, (a2 + 32));
  v20 = std::locale::use_facet(&v83, MEMORY[0x1E69E5368]);
  v21 = v18 - v13;
  std::locale::~locale(&v83);
  memset(v86, 170, sizeof(v86));
  (v20->__vftable[1].__on_zero_shared)(v86, v20);
  if ((SHIBYTE(v86[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v86[0].__locale_;
    v23 = v86[1].__locale_;
    if (v86[1].__locale_ && v21 > *v86[0].__locale_)
    {
      v76 = v20;
      v77 = v18;
      v75 = a3;
      v79 = a4;
      v24 = v86[0].__locale_;
      goto LABEL_24;
    }

    operator delete(v86[0].__locale_);
LABEL_65:
    v46 = HIDWORD(a3);
    v25 = *a2;
    if ((a3 & 7) == 4)
    {
      v78 = v18;
      v80 = a4;
      v47 = v13 - v8;
      v48 = *(v25 + 32);
      v49 = v13 - v8;
      if (!v48 || ((v51 = *v48, v50 = v48[1], *v48 - v50 >= v47) ? (v49 = v13 - v8) : (v49 = *v48 - v50), (v48[1] = v50 + v47, v51 > v50) ? (v52 = v49 == 0) : (v52 = 1), !v52))
      {
        v59 = *(v25 + 16);
        do
        {
          v61 = *(v25 + 8) - v59;
          if (v61 < v49 + 1)
          {
            (*(v25 + 24))(v25, v49 + 2);
            v59 = *(v25 + 16);
            v61 = *(v25 + 8) - v59;
          }

          if (v61 >= v49)
          {
            v62 = v49;
          }

          else
          {
            v62 = v61;
          }

          if (v62)
          {
            memmove((*v25 + v59), v8, v62);
            v59 = *(v25 + 16);
          }

          v59 += v62;
          *(v25 + 16) = v59;
          v8 += v62;
          v60 = v49 > v61;
          v49 -= v62;
        }

        while (v60);
      }

      v53 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v47)
      {
        v54 = v47;
      }

      else
      {
        v54 = HIDWORD(a3);
      }

      v46 = (HIDWORD(a3) - v54);
      v25 = *a2;
      v55 = 48;
      v18 = v78;
      a4 = v80;
    }

    else
    {
      v55 = BYTE4(a4);
      v53 = a3;
      v13 = v8;
    }

    v56 = v46 << 32;
    v57 = a4 & 0xFFFFFF00FFFFFFFFLL | (v55 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v18, v25, a3 & 0xFFFF0700 | v56 | v53, v57);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v18 - v13, v25, v56 | a3 & 0xFFFFFF00 | v53, v57, v18 - v13);
    }

    return v25;
  }

  if (!HIBYTE(v86[2].__locale_) || v21 <= SLOBYTE(v86[0].__locale_))
  {
    goto LABEL_65;
  }

  v76 = v20;
  v77 = v18;
  v75 = a3;
  v79 = a4;
  locale = v86;
  v24 = v86[0].__locale_;
  v23 = v86[1].__locale_;
LABEL_24:
  v25 = *a2;
  v83.__locale_ = 0;
  v84 = 0;
  v85 = 0;
  v26 = v23 + v24;
  if (SHIBYTE(v86[2].__locale_) >= 0)
  {
    v27 = v86 + SHIBYTE(v86[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v21 - v28;
  if (v21 <= v28)
  {
    v64 = 0;
    v63 = v29 + v30;
    goto LABEL_97;
  }

  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v85);
      if ((SHIBYTE(v85) & 0x80000000) == 0)
      {
        break;
      }

      v33 = (v85 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v84 != v33)
      {
        v39 = v83.__locale_;
        v33 = v84;
        goto LABEL_54;
      }

      if ((v85 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v81 = locale;
      __src = v83.__locale_;
      if (v33 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_36;
      }

      v37 = 0;
      v36 = 0x7FFFFFFFFFFFFFF7;
LABEL_46:
      v38 = operator new(v36);
      v39 = v38;
      if (v33)
      {
        memmove(v38, __src, v33);
      }

      if (!v37)
      {
        operator delete(__src);
      }

      v83.__locale_ = v39;
      v85 = v36 | 0x8000000000000000;
      locale = v81;
LABEL_54:
      v84 = v33 + 1;
      v41 = v39 + v33;
      *v41 = v29;
      v41[1] = 0;
      if (locale != v31)
      {
        goto LABEL_55;
      }

LABEL_29:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_93;
      }
    }

    if (HIBYTE(v85) == 22)
    {
      v81 = locale;
      __src = &v83;
      v33 = 22;
LABEL_36:
      if (v33 + 1 > 2 * v33)
      {
        v34 = v33 + 1;
      }

      else
      {
        v34 = 2 * v33;
      }

      if ((v34 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v34 | 7) + 1;
      }

      if (v34 >= 0x17)
      {
        v36 = v35;
      }

      else
      {
        v36 = 23;
      }

      v37 = v33 == 22;
      goto LABEL_46;
    }

    HIBYTE(v85) = (HIBYTE(v85) + 1) & 0x7F;
    v40 = &v83 + v32;
    *v40 = v29;
    v40[1] = 0;
    if (locale == v31)
    {
      goto LABEL_29;
    }

LABEL_55:
    v42 = (locale + 1);
    v43 = (locale + 1);
    do
    {
      v44 = *v43++;
      v29 = v44;
      if (v44)
      {
        v45 = 1;
      }

      else
      {
        v45 = v42 == v31;
      }

      v42 = v43;
    }

    while (!v45);
    locale = (v43 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_93:
  v63 = v29 + v30;
  if (SHIBYTE(v85) < 0)
  {
    v66 = (v85 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v84 == v66)
    {
      if ((v85 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v65 = v83.__locale_;
      v68 = 0x7FFFFFFFFFFFFFF7;
      if (v66 >= 0x3FFFFFFFFFFFFFF3)
      {
        v71 = 0;
      }

      else
      {
LABEL_101:
        if (v66 + 1 > 2 * v66)
        {
          v69 = v66 + 1;
        }

        else
        {
          v69 = 2 * v66;
        }

        if ((v69 | 7) == 0x17)
        {
          v70 = 25;
        }

        else
        {
          v70 = (v69 | 7) + 1;
        }

        if (v69 >= 0x17)
        {
          v68 = v70;
        }

        else
        {
          v68 = 23;
        }

        v71 = v66 == 22;
      }

      v72 = operator new(v68);
      v67 = v72;
      if (v66)
      {
        memmove(v72, v65, v66);
      }

      if (!v71)
      {
        operator delete(v65);
      }

      v83.__locale_ = v67;
      v85 = v68 | 0x8000000000000000;
    }

    else
    {
      v67 = v83.__locale_;
      v66 = v84;
    }

    v84 = v66 + 1;
  }

  else
  {
    v64 = HIBYTE(v85);
    if (HIBYTE(v85) == 22)
    {
      v65 = &v83;
      v66 = 22;
      goto LABEL_101;
    }

LABEL_97:
    v66 = v64;
    HIBYTE(v85) = (v64 + 1) & 0x7F;
    v67 = &v83;
  }

  v73 = v67 + v66;
  *v73 = v63;
  v73[1] = 0;
  v74 = (v76->__vftable[1].~facet_0)(v76);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v25, v8, v13, v77, &v83, v74, v75, v79);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83.__locale_);
  }

  if (SHIBYTE(v86[2].__locale_) < 0)
  {
    operator delete(v86[0].__locale_);
  }

  return v25;
}

void sub_1E53854A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_46()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUICEPersonalizationParameters::ICENonce::~ICENonce(BBUICEPersonalizationParameters::ICENonce *this)
{
  *this = &unk_1F5F06660;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06660;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void BBUICEPersonalizationParameters::ICESerialNumber::~ICESerialNumber(BBUICEPersonalizationParameters::ICESerialNumber *this)
{
  *this = &unk_1F5F06690;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06690;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

uint64_t BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(const UInt8 *this, const unsigned __int8 *a2)
{
  if (a2 != 96)
  {
    return 0;
  }

  v3 = operator new(0x10uLL);
  *v3 = &unk_1F5F06690;
  v3[1] = 0;
  v4 = v3;
  v5 = CFDataCreate(*MEMORY[0x1E695E480], this, 12);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 100, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x80u, "Assertion failure(data && Failed to create serial number.)", v9, v10, v11, v12);
  }

  v6 = v5;
  result = v4;
  *(v4 + 8) = v6;
  return result;
}

void BBUICEPersonalizationParameters::ICECertID::~ICECertID(BBUICEPersonalizationParameters::ICECertID *this)
{
  *this = &unk_1F5F066C0;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F066C0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

const __CFData *BBUICEPersonalizationParameters::ICECertID::createFromPublicKeyHashData(const __CFData *this, const __CFData *a2)
{
  if (this)
  {
    v2 = this;
    BytePtr = CFDataGetBytePtr(this);
    if ((CFDataGetLength(v2) & 0xFFFFFFFCLL) != 0)
    {
      v4 = operator new(0x10uLL);
      *v4 = &unk_1F5F066C0;
      v4[1] = 0;
      valuePtr = bswap32(*BytePtr);
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      v4[1] = v5;
      if (!v5)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0xEFu, "Assertion failure(certID->fNumber && Failed to create CertID!)", v7, v8, v9, v10);
      }

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t BBUICEPersonalizationParameters::ICECertID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v9 = -1431655766;
  if ((ctu::cf::assign(&v9, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x10Du, "Assertion failure(success && Failed to create CertID!)", v5, v6, v7, v8);
  }

  return v9;
}

void BBUICEPersonalizationParameters::ICEChipID::~ICEChipID(BBUICEPersonalizationParameters::ICEChipID *this)
{
  *this = &unk_1F5F066F0;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F066F0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUICEPersonalizationParameters::ICEChipID::createFromChipID(BBUICEPersonalizationParameters::ICEChipID *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F066F0;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x126u, "Assertion failure(( chipID->fNumber && Failed to create ChipID!))", v6, v7, v8, v9);
  }

  return v2;
}

uint64_t BBUICEPersonalizationParameters::ICEChipID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v9 = -1431655766;
  if ((ctu::cf::assign(&v9, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x141u, "Assertion failure(success && Failed to create chipID!)", v5, v6, v7, v8);
  }

  return v9;
}

void BBUICEPersonalizationParameters::ICEKeyStatus::~ICEKeyStatus(BBUICEPersonalizationParameters::ICEKeyStatus *this)
{
  *this = &unk_1F5F06720;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06720;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(BBUICEPersonalizationParameters::ICEKeyStatus *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F06720;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x15Au, "Assertion failure(status->fNumber && Failed to create key status!)", v6, v7, v8, v9);
  }

  return v2;
}

uint64_t BBUICEPersonalizationParameters::ICEKeyStatus::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v9 = -1431655766;
  if ((ctu::cf::assign(&v9, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x16Fu, "Assertion failure(success && Failed to create key status!)", v5, v6, v7, v8);
  }

  return v9;
}

void BBUICEPersonalizationParameters::ICEKeyHash::~ICEKeyHash(BBUICEPersonalizationParameters::ICEKeyHash *this)
{
  *this = &unk_1F5F06750;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06750;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void BBUICEPersonalizationParameters::ICEPublicKeyHash::~ICEPublicKeyHash(BBUICEPersonalizationParameters::ICEPublicKeyHash *this)
{
  *this = &unk_1F5F06780;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06780;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

_DWORD *BBULoaderVersion::createFromVersionString(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  if (!capabilities::radio::maverick(a1))
  {
    return 0;
  }

  v3 = operator new(0x28uLL);
  v3[2] = 0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_1F5F02BE0;
  v4 = v3;
  v5 = off_1F5F02C00(v3, a1);
  if (v5)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = v5;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v5 = v10;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 4) != 0)
      {
LABEL_8:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(18, 0, "BBULoaderVersion", &str_19, "Parsing failed, ret = %s\n", v6, v7, v8, BBUReturnAsString::BBUReturnStrings[v5]);
        }
      }
    }

    (*(*v4 + 8))(v4);
    return 0;
  }

  return v4;
}

void *BBUpdaterExtremeCreateCommon(CFErrorRef *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  block = 0u;
  v38 = 0u;
  v28 = 256;
  v2 = sysctlbyname("hw.model", &block, &v28, 0, 0);
  if (v2)
  {
    if (!a1)
    {
      fprintf(*MEMORY[0x1E69E9858], "%s: hw.model query failed with %d\n");
      goto LABEL_30;
    }

    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v31 = v3;
    v32 = v3;
    *__str = v3;
    v30 = v3;
    snprintf(__str, 0x80uLL, "%s: hw.model query failed with %d\n", "BBUpdaterDetermineVendorandPlatform", v2);
    CFError = BBUpdaterExtremePrivate::makeCFError(16, __str);
    goto LABEL_25;
  }

  v5 = TelephonyCapabilitiesSetHardwareModelFromString();
  if ((v5 & 1) == 0)
  {
    if (a1)
    {
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v22;
      v36 = v22;
      v33 = v22;
      v34 = v22;
      v31 = v22;
      v32 = v22;
      *__str = v22;
      v30 = v22;
      snprintf(__str, 0x80uLL, "%s: could not set Telephony HW model with %s\n", "BBUpdaterDetermineVendorandPlatform", &block);
      CFError = BBUpdaterExtremePrivate::makeCFError(16, __str);
LABEL_25:
      *a1 = CFError;
      goto LABEL_30;
    }

    fprintf(*MEMORY[0x1E69E9858], "%s: could not set Telephony HW model with %s\n");
    goto LABEL_30;
  }

  v6 = capabilities::radio::vendor(v5);
  if ((v6 - 1) >= 2)
  {
    if (v6 == 3)
    {
      v23 = BasebandUpdaterCreate(0, 0, 0, a1);
      v12 = v23;
      if (v23)
      {
        *(v23 + 24) = 0;
      }

      goto LABEL_47;
    }

LABEL_30:
    if (a1)
    {
      v12 = 0;
      *a1 = BBUpdaterExtremePrivate::makeCFError(24, "BBUpdaterExtremeCreateCommon(): Unable to determine radio vendor\n");
      goto LABEL_47;
    }

LABEL_46:
    v12 = 0;
    goto LABEL_47;
  }

  pthread_once(&BBUpdaterExtreme::sBBUpdaterRegisterClassOnce, BBUpdaterRegisterClass);
  if (!BBUpdaterExtreme::sBBUpdaterTypeID)
  {
    goto LABEL_46;
  }

  v7 = *MEMORY[0x1E695E480];
  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 1;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v13 = _BBULog(0, 0xFFFFFFFFLL, "BBUpdaterExtreme", "", "BBUpdater Version: %s-%s\n", v9, v10, v11, "BBU_PROJECT_VERSION");
    v14 = capabilities::radio::vendor(v13);
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v15 = off_1ED944120;
    if (!off_1ED944120)
    {
      v16 = operator new(0x38uLL);
      BBUError::BBUError(v16);
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v16);
      v17 = block;
      block = 0uLL;
      v18 = *(&off_1ED944120 + 1);
      off_1ED944120 = v17;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *(&block + 1);
      if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v15 = off_1ED944120;
    }

    v20 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v28 = __str;
    *__str = MEMORY[0x1E69E9820];
    *&__str[8] = 0x40000000;
    *&v30 = ___ZN8BBUError11clearErrorsEv_block_invoke;
    *(&v30 + 1) = &__block_descriptor_tmp_9;
    *&v31 = v15;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 0x40000000;
    *&v38 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    *(&v38 + 1) = &__block_descriptor_tmp_13_0;
    *&v39 = v15;
    *(&v39 + 1) = &v28;
    v21 = *(v15 + 16);
    if (*(v15 + 24))
    {
      dispatch_async_and_wait(v21, &block);
    }

    else
    {
      dispatch_sync(v21, &block);
    }

    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    if (v14 == 1)
    {
      v24 = operator new(0x170uLL);
      BBUpdaterController::BBUpdaterController(v24, v12);
    }

    else
    {
      if (v14 != 2)
      {
        if (a1)
        {
          *&v25 = 0xAAAAAAAAAAAAAAAALL;
          *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v43 = v25;
          v44 = v25;
          v41 = v25;
          v42 = v25;
          v39 = v25;
          v40 = v25;
          block = v25;
          v38 = v25;
          snprintf(&block, 0x80uLL, "Unknown telephony radio vendor %d", v14);
          *a1 = BBUpdaterExtremePrivate::makeCFError(24, &block);
        }

        else
        {
          fprintf(*MEMORY[0x1E69E9858], "Unknown telephony radio vendor %d\n", v14);
        }

        goto LABEL_44;
      }

      fprintf(*MEMORY[0x1E69E9858], "%s: Good\n", "BBUpdaterInit");
      v24 = operator new(0x170uLL);
      BBUpdaterController::BBUpdaterController(v24, v12);
    }

    v12[2] = v24;
LABEL_44:
    if (v12[2])
    {
      goto LABEL_47;
    }

    CFRelease(v12);
    goto LABEL_46;
  }

LABEL_47:
  v26 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t BBUpdaterExecCommand(uint64_t a1, ACFURestore *a2, const __CFDictionary **a3, uint64_t *a4)
{
  if (!a1 || !a2)
  {
    if (!a4)
    {
      return 0;
    }

    CFError = BBUpdaterExtremePrivate::makeCFError(4, 0);
    result = 0;
    *a4 = CFError;
    return result;
  }

  if (*(a1 + 24) == 1)
  {
    v7 = *(**(a1 + 16) + 24);
    v9 = *(a1 + 16);

    return v7(v9, a1, a2, a3, a4);
  }

  result = BasebandUpdaterExecCommand(a1, a2, 0, a3, a4);
  if (!result)
  {
    return result;
  }

  IsDone = BasebandUpdaterIsDone(a1, a4);
  if (!a3 || !IsDone)
  {
    return 1;
  }

  if (!*a3)
  {
    v15 = *MEMORY[0x1E695E4D0];
    keys = @"done";
    result = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v15, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a3 = result;
    if (!result)
    {
      return result;
    }

    return 1;
  }

  result = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a3);
  if (result)
  {
    v14 = result;
    CFRelease(*a3);
    CFDictionaryAddValue(v14, @"done", *MEMORY[0x1E695E4D0]);
    *a3 = v14;
    return 1;
  }

  return result;
}

uint64_t BBUpdaterSetOptions(uint64_t a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  if (a1)
  {
    if (*(a1 + 24) == 1)
    {
      v3 = *(**(a1 + 16) + 16);

      return v3();
    }

    else
    {

      return BasebandUpdaterSetOptions(a1, a2, a3);
    }
  }

  else
  {
    if (a3)
    {
      *a3 = BBUpdaterExtremePrivate::makeCFError(4, 0);
    }

    return 0;
  }
}

ACFULogging *BBUpdaterRegisterLogSink(ACFULogging *result, void *a2, uint64_t (*a3)(void, void, void))
{
  if (result)
  {
    if (*(result + 24) == 1)
    {
      return (*(**(result + 2) + 32))();
    }

    else
    {
      gBBULogSinkContext = a2;
      gBBULogSinkFunc = a3;
      return BasebandUpdaterRegisterLogSink(result, a2, GenericBasebandUpdaterLogSink);
    }
  }

  return result;
}

uint64_t GenericBasebandUpdaterLogSink(uint64_t result, const char *a2)
{
  if (gBBULogSinkFunc)
  {
    return gBBULogSinkFunc(result, 0, a2);
  }

  return result;
}

uint64_t BBUpdaterRegisterGlobalLogSink(uint64_t result, uint64_t (*a2)(void, void, void))
{
  gBBULogSinkContext = result;
  gBBULogSinkFunc = a2;
  return result;
}

uint64_t BBUpdaterRegisterClass(void)
{
  result = _CFRuntimeRegisterClass();
  BBUpdaterExtreme::sBBUpdaterTypeID = result;
  return result;
}

void *BBUpdaterDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      result = (*(*result + 8))(result);
      v1[2] = 0;
    }
  }

  return result;
}

CFStringRef BBUpdaterDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<libBBUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t __cxx_global_var_init_47()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUEUR20Fusing::~BBUEUR20Fusing(void **this)
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

{
  *this = &unk_1F5F03778;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[4]);
  v2 = this;

LABEL_5:
  operator delete(v2);
}

uint64_t BBUEUR20Fusing::performFusing(uint64_t a1)
{
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Fuse");
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 16);
    (*(*a1 + 48))(a1);
    ETLFusingProgramTriggerM20();
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_7;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v4 = (*(*a1 + 32))(a1);
      _BBULog(13, 0, v4, "", "Triggering Fusing Program with status (%d)\n", v5, v6, v7, -1);
    }

LABEL_7:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
LABEL_9:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v8 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v8, "", "Failed to run ETLFusingProgramTriggerM20() with status (%d)\n", v9, v10, v11, -1);
        }
      }
    }

    v2 = 24;
    goto LABEL_12;
  }

  v2 = 0;
LABEL_12:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v2);
  return v2;
}

uint64_t BBUEUR20Fusing::verifyFusing(uint64_t a1, uint64_t a2)
{
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Verify Fusing");
  if ((*(a1 + 24) & 1) == 0 && (*(a1 + 80) & 1) == 0)
  {
    v126 = 0xAAAAAAAAAAAAAAAALL;
    v9 = (*(*a2 + 64))(a2);
    v10 = operator new(0x20uLL);
    v10->__shared_owners_ = 0;
    v10->__vftable = &unk_1F5F06930;
    v10->__shared_weak_owners_ = 0;
    v10[1].__vftable = v9;
    if (v9)
    {
      v11 = (*(*v9 + 24))(v9);
      v12 = v11;
      v13 = v11;
      if (v11)
      {
        v14 = operator new(v11);
        bzero(v14, v13);
      }

      else
      {
        v14 = 0;
      }

      LODWORD(v130) = -1431655766;
      if ((*(*v9 + 16))(v9, v14, v12, &v130, 0))
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
LABEL_19:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              v19 = (*(*a1 + 32))(a1);
              _BBULog(13, 0, v19, "", "Failed to copy data from fusing source\n", v20, v21, v22, v112);
            }
          }
        }

LABEL_37:
        v126 = 0;
        goto LABEL_38;
      }

      if (v130 != v12)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v32 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v32, "", "Copied length is different from the fusing source's size\n", v33, v34, v35, v112);
        }

        goto LABEL_37;
      }

      v23 = *MEMORY[0x1E695E480];
      v24 = CFDataCreate(*MEMORY[0x1E695E480], v14, v13);
      if (!v24)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v36 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v36, "", "Failed to create a data from the buffer\n", v37, v38, v39, v112);
        }

        goto LABEL_37;
      }

      format = kCFPropertyListXMLFormat_v1_0;
      v25 = CFPropertyListCreateWithData(v23, v24, 2uLL, &format, 0);
      v26 = v25;
      v129[0] = v25;
      if (v25)
      {
        Value = CFDictionaryGetValue(v25, @"FusingProfile");
        v28 = Value;
        if (Value)
        {
          v29 = CFGetTypeID(Value);
          if (v29 == CFArrayGetTypeID())
          {
            v30 = CFGetTypeID(v28);
            if (v30 == CFArrayGetTypeID())
            {
              Copy = CFArrayCreateCopy(v23, v28);
              v127[0] = Copy;
              if (Copy)
              {
                v126 = Copy;
                v127[0] = 0;
LABEL_150:
                ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(v127);
                goto LABEL_138;
              }

              if (gBBULogMaskGet(void)::once == -1)
              {
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
LABEL_147:
                  if ((gBBULogVerbosity & 0x80000000) == 0)
                  {
                    v108 = (*(*a1 + 32))(a1);
                    _BBULog(13, 0, v108, "", "Failed to copy the array\n", v109, v110, v111, v112);
                  }
                }
              }

              v126 = 0;
              goto LABEL_150;
            }
          }
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
            goto LABEL_135;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
LABEL_135:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              v100 = (*(*a1 + 32))(a1);
              _BBULog(13, 0, v100, "", "Failed to get fusing profile from the plist\n", v101, v102, v103, v112);
            }
          }
        }

        v126 = 0;
LABEL_138:
        CFRelease(v26);
LABEL_144:
        CFRelease(v24);
LABEL_38:
        if (v14)
        {
          operator delete(v14);
        }

LABEL_40:
        if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          cf = v126;
          if (v126)
          {
LABEL_42:
            v125 = -1431655766;
            v40 = operator new(0xA0uLL);
            v40[8] = 0u;
            v40[9] = 0u;
            v40[6] = 0u;
            v40[7] = 0u;
            v40[4] = 0u;
            v40[5] = 0u;
            v40[2] = 0u;
            v40[3] = 0u;
            *v40 = 0u;
            v40[1] = 0u;
            v117 = v40;
            v41 = operator new(0xA0uLL);
            v41[8] = 0u;
            v41[9] = 0u;
            v41[6] = 0u;
            v41[7] = 0u;
            v41[4] = 0u;
            v41[5] = 0u;
            v41[2] = 0u;
            v41[3] = 0u;
            *v41 = 0u;
            v41[1] = 0u;
            v118[1] = v41;
            v119 = v41 + 10;
            v120 = v41 + 10;
            v42 = operator new(0xA0uLL);
            v42[8] = 0u;
            v42[9] = 0u;
            v42[6] = 0u;
            v42[7] = 0u;
            v42[4] = 0u;
            v42[5] = 0u;
            v42[2] = 0u;
            v42[3] = 0u;
            *v42 = 0u;
            v42[1] = 0u;
            v121 = v42;
            v122 = v42 + 10;
            v123 = v42 + 10;
            v124 = 0;
            v113 = v42;
            v43 = *(a1 + 16);
            (*(*a1 + 48))(a1);
            if ((ETLFusingGetFusedData() & 1) == 0)
            {
              v48 = v113;
              if (gBBULogMaskGet(void)::once == -1)
              {
                v4 = 125;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                {
                  goto LABEL_118;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                v4 = 125;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                {
                  goto LABEL_118;
                }
              }

              if (gBBULogVerbosity < 0)
              {
                goto LABEL_118;
              }

              v49 = (*(*a1 + 32))(a1);
              _BBULog(13, 0, v49, "", "Failed to run ETLFusingGetFusedData()\n", v50, v51, v52, v112);
              goto LABEL_117;
            }

            v124 = 0;
            v119 = v41;
            v122 = v113;
            CFRetain(cf);
            format = &format;
            p_format = &format;
            v134 = 0;
            v53 = operator new(0x28uLL);
            v53[2] = 0x4B5F57485F434553;
            v53[3] = 22853;
            *(v53 + 39) = 10;
            *v53 = &format;
            v53[1] = &format;
            format = v53;
            p_format = v53;
            v134 = 1;
            Count = CFArrayGetCount(cf);
            v114 = Count;
            if (!Count)
            {
              v115 = 1;
              goto LABEL_101;
            }

            v55 = 0;
            v115 = 0;
            while (1)
            {
              v130 = 0xAAAAAAAAAAAAAAAALL;
              v131 = 0xAAAAAAAAAAAAAAAALL;
              ValueAtIndex = CFArrayGetValueAtIndex(cf, v55);
              ctu::cf::dict_adapter::dict_adapter(&v130, ValueAtIndex);
              if (!v131)
              {
                if (gBBULogMaskGet(void)::once == -1)
                {
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
LABEL_98:
                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      v74 = (*(*a1 + 32))(a1);
                      _BBULog(13, 0, v74, "", "Failed to get dictionary from the fusing profile array\n", v75, v76, v77, v112);
                    }
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
                    goto LABEL_98;
                  }
                }

                MEMORY[0x1E69265E0](&v130);
LABEL_101:
                v48 = v113;
                if (v134)
                {
                  v78 = p_format;
                  v79 = *(format + 8);
                  v80 = *p_format;
                  *(v80 + 8) = v79;
                  *v79 = v80;
                  v134 = 0;
                  if (v78 != &format)
                  {
                    do
                    {
                      v86 = *(v78 + 1);
                      if (*(v78 + 39) < 0)
                      {
                        operator delete(*(v78 + 2));
                      }

                      operator delete(v78);
                      v78 = v86;
                    }

                    while (v86 != &format);
                  }
                }

                CFRelease(cf);
                if (v115)
                {
                  LODWORD(format) = -1;
                  v81 = *(a1 + 16);
                  (*(*a1 + 48))(a1);
                  if (ETLFusingGetSecureState())
                  {
                    if (format)
                    {
                      if (gBBULogMaskGet(void)::once == -1)
                      {
                        v4 = 125;
                        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                        {
                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                        v4 = 125;
                        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                        {
                          goto LABEL_118;
                        }
                      }

                      if ((gBBULogVerbosity & 0x80000000) == 0)
                      {
                        v96 = (*(*a1 + 32))(a1);
                        _BBULog(13, 0, v96, "", "Failed to pass the secure state: (0x%08X)\n", v97, v98, v99, format);
                      }
                    }

                    else if (gBBULogMaskGet(void)::once == -1)
                    {
                      v4 = 0;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                      {
LABEL_108:
                        if ((gBBULogVerbosity & 0x80000000) == 0)
                        {
                          v82 = (*(*a1 + 32))(a1);
                          _BBULog(13, 0, v82, "", "Pass Fusing Secure State: (0x%08X)\n", v83, v84, v85, format);
                          v4 = 0;
                        }
                      }
                    }

                    else
                    {
                      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                      v4 = 0;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                      {
                        goto LABEL_108;
                      }
                    }
                  }

                  else
                  {
                    if (gBBULogMaskGet(void)::once == -1)
                    {
                      v4 = 125;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                      {
                        goto LABEL_118;
                      }
                    }

                    else
                    {
                      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                      v4 = 125;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                      {
                        goto LABEL_118;
                      }
                    }

                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      v92 = (*(*a1 + 32))(a1);
                      _BBULog(13, 0, v92, "", "Failed to run ETLFusingGetSecureState()\n", v93, v94, v95, v112);
                    }
                  }

LABEL_118:
                  v122 = v48;
                  operator delete(v48);
                  if (v118[1])
                  {
                    operator delete(v118[1]);
                  }

                  if (v117)
                  {
                    operator delete(v117);
                  }

                  if (v126)
                  {
                    CFRelease(v126);
                  }

                  goto LABEL_124;
                }

                if (gBBULogMaskGet(void)::once == -1)
                {
                  v4 = 125;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  v4 = 125;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                if (gBBULogVerbosity < 0)
                {
                  goto LABEL_118;
                }

                v87 = (*(*a1 + 32))(a1);
                _BBULog(13, 0, v87, "", "Failed to match both plist and the fusing data\n", v88, v89, v90, v112);
LABEL_117:
                v48 = v113;
                goto LABEL_118;
              }

              v128 = 0;
              memset(v129, 170, sizeof(v129));
              v127[0] = 0;
              v127[1] = 0;
              ctu::cf::map_adapter::getString();
              if (SHIBYTE(v128) < 0)
              {
                operator delete(v127[0]);
              }

              ctu::cf::map_adapter::getInt(&v130, @"Address");
              v57 = p_format;
              if (p_format == &format)
              {
                goto LABEL_80;
              }

              v58 = SHIBYTE(v129[2]) >= 0 ? HIBYTE(v129[2]) : v129[1];
              v59 = SHIBYTE(v129[2]) >= 0 ? v129 : v129[0];
              while (1)
              {
                v60 = *(v57 + 39);
                v61 = v60;
                if (v60 < 0)
                {
                  v60 = *(v57 + 3);
                }

                if (v60 == v58)
                {
                  v62 = v61 >= 0 ? v57 + 2 : *(v57 + 2);
                  if (!memcmp(v62, v59, v58))
                  {
                    break;
                  }
                }

                v57 = *(v57 + 1);
                if (v57 == &format)
                {
                  goto LABEL_80;
                }
              }

              if (v57 == &format)
              {
LABEL_80:
                if (gBBULogMaskGet(void)::once == -1)
                {
                  v63 = 1;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  v63 = 1;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
LABEL_82:
                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      v69 = (*(*a1 + 32))(a1);
                      v73 = v129;
                      if (SHIBYTE(v129[2]) < 0)
                      {
                        LOBYTE(v73) = v129[0];
                      }

                      _BBULog(13, 0, v69, "", "%s: Failed to find the addressin BB from the plist address (0x%08X)\n", v70, v71, v72, v73);
                    }
                  }
                }
              }

              else if (gBBULogMaskGet(void)::once == -1)
              {
                v63 = 4;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                v63 = 4;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
LABEL_76:
                  if ((gBBULogVerbosity & 0x80000000) == 0)
                  {
                    v64 = (*(*a1 + 32))(a1);
                    v68 = v129;
                    if (SHIBYTE(v129[2]) < 0)
                    {
                      LOBYTE(v68) = v129[0];
                    }

                    _BBULog(13, 0, v64, "", "Skip because the region type(%s:0x%08X) is in the deny list\n", v65, v66, v67, v68);
                  }
                }
              }

              if (SHIBYTE(v129[2]) < 0)
              {
                operator delete(v129[0]);
              }

              MEMORY[0x1E69265E0](&v130);
              if ((v63 | 4) == 4)
              {
                v115 = ++v55 >= v114;
                if (v55 != v114)
                {
                  continue;
                }
              }

              goto LABEL_101;
            }
          }
        }

        else
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
          cf = v126;
          if (v126)
          {
            goto LABEL_42;
          }
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v4 = 125;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_124;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v4 = 125;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_124;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v44 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v44, "", "Failed to get FusingProfile\n", v45, v46, v47, v112);
        }

        goto LABEL_124;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
        {
          goto LABEL_141;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
        {
LABEL_141:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v104 = (*(*a1 + 32))(a1);
            _BBULog(13, 0, v104, "", "Failed to create fusing dictionary from the plist\n", v105, v106, v107, v112);
          }
        }
      }

      v126 = 0;
      goto LABEL_144;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
LABEL_12:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v15 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v15, "", "Failed to get fusing source\n", v16, v17, v18, v112);
        }
      }
    }

    v126 = 0;
    goto LABEL_40;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v4 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v4 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_124;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v5 = (*(*a1 + 32))(a1);
    _BBULog(13, 0, v5, "", "Fake Fusing is detected. Bypass the fusing check\n", v6, v7, v8, v112);
    v4 = 0;
  }

LABEL_124:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v4);
  return v4;
}

void sub_1E538889C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v30 - 176));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v30 - 152));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a23);
  if (v29)
  {
    operator delete(v29);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void sub_1E53889A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  BBUEUR20Fusing::FusingData::~FusingData(&a29);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(v29 - 184);
  _Unwind_Resume(a1);
}

void sub_1E53889C8()
{
  if (*(v0 - 153) < 0)
  {
    v1 = *(v0 - 176);
    JUMPOUT(0x1E53889F0);
  }

  JUMPOUT(0x1E53889F4);
}

void sub_1E53889DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (*(v29 - 129) < 0)
  {
    operator delete(*(v29 - 152));
  }

  MEMORY[0x1E69265E0](v29 - 128);
  std::list<std::string>::~list(v29 - 112);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a22);
  BBUEUR20Fusing::FusingData::~FusingData(&a29);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(v29 - 184);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BBUEUR20Fusing::FusingData::~FusingData(BBUEUR20Fusing::FusingData *this)
{
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

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void std::__list_imp<std::string>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__shared_ptr_pointer<BBUDataSource *,std::shared_ptr<BBUDataSource>::__shared_ptr_default_delete<BBUDataSource,BBUDataSource>,std::allocator<BBUDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUDataSource *,std::shared_ptr<BBUDataSource>::__shared_ptr_default_delete<BBUDataSource,BBUDataSource>,std::allocator<BBUDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUDataSource *,std::shared_ptr<BBUDataSource>::__shared_ptr_default_delete<BBUDataSource,BBUDataSource>,std::allocator<BBUDataSource>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5397E07)
  {
    if (((v2 & 0x80000001E5397E07 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5397E07))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5397E07 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *eUICC::eUICCVinylMAVValve::GetVinylType@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>)
{
  v16 = *(this + 37);
  v17 = *(this + 73);
  v4 = eUICC::GetVinylType::Perform();
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 == 1;
  }

  v10 = v9;
  if (gBBULogMaskGet(void)::once != -1)
  {
    v13 = v4;
    v14 = v5;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v5 = v14;
    LOBYTE(v4) = v13;
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_11:
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status 0x%hhx\n", v6, v7, v8, v4);
    return memcpy(a2, this + 8, 0x11AuLL);
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = v5 >> 8;
  v12 = BYTE1(v5);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "status 0x%hhx cards_type: %hhu \n", v6, v7, v8, 1);
  *(this + 2) = 1;
  *(this + 285) = v11;
  *(this + 287) = v12 == 3;
  return memcpy(a2, this + 8, 0x11AuLL);
}

void *eUICC::eUICCVinylMAVValve::GetData@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = (this + 8);
  if (*(this + 289) == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylData cache is valid. Using cached data!\n", a2, a3, a4, v15);
    goto LABEL_7;
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
  *v6 = 0u;
  *(this + 274) = 0u;
  v18 = *(this + 37);
  v19 = *(this + 73);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v8;
  v26 = v8;
  *v24 = v8;
  *&v24[16] = v8;
  v22 = v8;
  v23 = v8;
  *&v20[128] = v8;
  v21 = v8;
  *&v20[96] = v8;
  *&v20[112] = v8;
  *&v20[64] = v8;
  *&v20[80] = v8;
  *&v20[32] = v8;
  *&v20[48] = v8;
  *v20 = v8;
  *&v20[16] = v8;
  v9 = eUICC::GetData::Perform();
  *(this + 2) = v20[8];
  *(this + 13) = bswap32(*&v20[10]) >> 16;
  *(this + 15) = *&v20[12];
  *(this + 31) = v20[28];
  *(this + 2) = *&v20[29];
  *(this + 3) = *&v20[45];
  *(this + 4) = *&v20[61];
  *(this + 5) = *&v20[77];
  *(this + 143) = *&v20[140];
  *(this + 7) = *&v20[109];
  *(this + 8) = *&v20[125];
  *(this + 6) = *&v20[93];
  *(this + 218) = *&v24[15];
  *(this + 203) = *v24;
  *(this + 187) = v23;
  *(this + 171) = v22;
  *(this + 155) = v21;
  *(this + 115) = *&v24[19];
  *(this + 250) = v24[31];
  *(this + 124) = *&v24[29];
  *(this + 267) = v26;
  *(this + 251) = v25;
  *(this + 12) = v20[9];
  *(this + 283) = -21846;
  *(this + 286) = v20[8] == 4;
  *(this + 288) = v20[8] == 15;
  if (*(this + 2) == capabilities::updater::EUICCVinylSuccessStatus(v9))
  {
    *(this + 289) = 1;
LABEL_7:
    eUICC::logEUICCData(v6);
    goto LABEL_11;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v16 = *(this + 2);
  v17 = *(this + 13);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status %u sw1_sw2 0x%x\n", v10, v11, v12, v20[0]);
LABEL_11:
  result = memcpy(a5, v6, 0x11AuLL);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::SetCardMode(uint64_t a1, int a2, char a3)
{
  __src[36] = *MEMORY[0x1E69E9840];
  (*(*a1 + 8))(__src);
  v6 = memcpy((a1 + 8), __src, 0x11AuLL);
  if (*(a1 + 8) != capabilities::updater::EUICCVinylSuccessStatus(v6))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "outData.Valid()");
    goto LABEL_14;
  }

  if ((a3 & 1) == 0 && *(a1 + 31) == a2)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Baseband already in mode %hhu\n", v7, v8, v9, a2);
    goto LABEL_17;
  }

  v10 = *(a1 + 292);
  __src[0] = *(a1 + 296);
  LOBYTE(__src[1]) = v10;
  BYTE1(__src[1]) = a2;
  WORD1(__src[1]) = 1;
  HIDWORD(__src[1]) = 10000;
  v11 = eUICC::SwitchMode::Perform();
  if (v11 || (v12 & 0xFF00000000) != 0x100000000 || a2 != BYTE5(v12))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      v19 = v11;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      LOBYTE(v11) = v19;
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Failed err %d status %hhu mode %d sw1 0x%x sw2 0x%x\n", v13, v14, v15, v11);
LABEL_14:
    result = 18;
    v17 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_17:
  result = 0;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallTicket(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2)
  {
    v10 = (*(*a1 + 16))(a1, 0, 0);
    if (v10)
    {
      v14 = v10;
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "kBBUReturnSuccess == ret");
      return v14;
    }

    else
    {
      CFDataGetBytePtr(*a2);
      CFDataGetLength(*a2);
      v22 = *(a1 + 296);
      v23 = *(a1 + 292);
      v16 = eUICC::InstallTicket::Perform();
      if (v16 || (v17 & 0xFF00000000) != 0x100000000)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          v21 = v16;
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          LOBYTE(v16) = v21;
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallTicket failed error %d status %hhu sw1 0x%x sw2 0x%x\n", v18, v19, v20, v16);
        return 16;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", a6, a7, a8, "installTicket");
    return 2;
  }
}

uint64_t eUICC::eUICCVinylMAVValve::StreamFirmware(_DWORD *a1, uint64_t a2)
{
  __src[36] = *MEMORY[0x1E69E9840];
  memset(v57, 170, sizeof(v57));
  (*(**a2 + 24))(v57);
  v3 = v57[1];
  v4 = v57[0];
  (*(*a1 + 8))(__src, a1);
  v5 = memcpy(a1 + 2, __src, 0x11AuLL);
  if (a1[2] != capabilities::updater::EUICCVinylSuccessStatus(v5))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "outData.Valid()");
    v19 = 18;
    v20 = v57[0];
    if (v57[0])
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v9 = *(a1 + 284);
  if (!*(a1 + 284))
  {
    v9 = *(a1 + 304);
  }

  v10 = v9;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "~~~~ MAX APDU PER SET: %zu  ~~~~\n", v6, v7, v8, v10);
  v14 = (v3 - v4) >> 5;
  v15 = v14 / v10;
  v55 = v14;
  if (v14 % v10)
  {
    ++v15;
  }

  v56 = v15;
  if (!v15)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "apduSetCount");
    v19 = 15;
    v20 = v57[0];
    if (v57[0])
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v19 = (*(*a1 + 16))(a1, 1, 0);
  if (v19)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "kBBUReturnSuccess == ret");
LABEL_54:
    v20 = v57[0];
    if (v57[0])
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v21 = 0;
  v54 = 0;
  v22 = 32 * v10;
  v23 = 16;
  v24 = v55;
  do
  {
    v25 = v24 - v10;
    if (v24 >= v10)
    {
      v24 = v10;
    }

    if (v24 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v24;
    }

    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__src[3] = v27;
    if (v55 - v21 * v10 >= v10)
    {
      v28 = v10;
    }

    else
    {
      v28 = v55 - v21 * v10;
    }

    *&__src[1] = v27;
    LODWORD(__src[4]) = 15000;
    v29 = v22;
    __src[2] = operator new[](v22);
    __src[3] = v10;
    __src[0] = *(a1 + 37);
    LOBYTE(__src[1]) = a1[73];
    WORD1(__src[1]) = v56;
    WORD2(__src[1]) = v21;
    BYTE6(__src[1]) = v28;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v30, v31, v32, v21);
    if (v55 == v21 * v10)
    {
LABEL_36:
      if (eUICC::StreamAPDU::Perform() || (v43 & 0xFF00000000) != 0x100000000)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed StreamAPDU set %d/%zu, error %d status %hhu sw1 0x%x sw2 0x%x\n", v44, v45, v46, v21);
        v47 = 0;
        v54 = 16;
        v48 = __src[2];
        __src[2] = 0;
        if (v48)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v47 = 1;
        v48 = __src[2];
        __src[2] = 0;
        if (v48)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v36 = 0;
      v37 = (v57[0] + v23);
      v38 = (__src[2] + 16);
      while (__src[3] >= v36)
      {
        v40 = *(v37 - 2);
        v39 = *(v37 - 1);
        v42 = *v37;
        v41 = v37[1];
        v37 += 4;
        *(v38 - 2) = v39;
        *(v38 - 1) = v40;
        *v38 = v41;
        v38[1] = v42;
        v38 += 4;
        if (v26 == ++v36)
        {
          goto LABEL_36;
        }
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v33, v34, v35, "j <= req.apdu_payload.apdu_data_size");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed SteamAPDU index '%d' is greater than max array size '%zu'", v49, v50, v51, v36);
      v47 = 0;
      v48 = __src[2];
      __src[2] = 0;
      if (v48)
      {
LABEL_43:
        operator delete[](v48);
      }
    }

    if ((v47 & 1) == 0)
    {
      v19 = v54;
      goto LABEL_54;
    }

    ++v21;
    v22 = v29;
    v23 += v29;
    v24 = v25;
  }

  while (v56 > v21);
  v19 = 0;
  v20 = v57[0];
  if (!v57[0])
  {
    goto LABEL_56;
  }

LABEL_55:
  v57[1] = v20;
  operator delete(v20);
LABEL_56:
  v52 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1E5389A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  if (!a18)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylMAVValve::DeleteProfile(eUICC::eUICCVinylMAVValve *this)
{
  v7 = *(this + 37);
  v8 = *(this + 73);
  result = eUICC::DeleteProfile::Perform();
  v6 = result;
  if (result || v2 != 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "DeleteProfile failed, error %d status %hhu sw1 0x%x sw2 0x%x\n", v3, v4, v5, v6);
    return 18;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::StoreData(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v19 = *MEMORY[0x1E69E9840];
  v15 = *(v1 + 296);
  v16 = *(v1 + 292);
  v17 = v6[1] - *v6;
  memset(__b, 170, sizeof(__b));
  eUICC::StoreData::Perform();
  if (__b[0] || LOBYTE(__b[3]) != 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "rsp.Valid()");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to StoreData status %hhu SW1 0x%x SW2 0x%x\n", v11, v12, v13, __b[3]);
    result = 18;
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v5, &__b[4] + 1, &__b[4] + *(&__b[3] + 3) + 1, *(&__b[3] + 3));
    result = 0;
    *v3 = bswap32(*(&__b[3] + 1)) >> 16;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::InitPerso(uint64_t a1, uint64_t a2, char **a3)
{
  v31 = *MEMORY[0x1E69E9840];
  *&__dst[6] = 0;
  *__dst = 0;
  *&__dst[14] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = v8;
  }

  memcpy(__dst, v6, v9);
  v24 = v4;
  v25 = v5;
  v26 = 0;
  v27 = 0;
  v28 = v9;
  v29 = *__dst;
  v30 = *&__dst[16];
  memset(__dst, 170, 16);
  eUICC::InitPersoSession::Perform();
  if (!*__dst)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp");
    result = 11;
    v14 = *&__dst[8];
    if (!*&__dst[8])
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = result;
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      result = v18;
    }

    goto LABEL_21;
  }

  if (!**__dst && *(*__dst + 8) == 1 && *(*__dst + 11))
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (*__dst + 13), *__dst + 13 + *(*__dst + 11), *(*__dst + 11));
    result = 0;
    v14 = *&__dst[8];
    if (!*&__dst[8])
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp->Valid() && rsp->contents.rsp_len");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v21 = *(*__dst + 10);
  v22 = *(*__dst + 11);
  v20 = *(*__dst + 9);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InitPerso status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v15, v16, v17, *(*__dst + 8));
  result = 18;
  v14 = *&__dst[8];
  if (*&__dst[8])
  {
    goto LABEL_19;
  }

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E538A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylMAVValve::AuthPerso(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = operator new(0x818uLL);
  bzero(v6 + 8, 0x810uLL);
  *(v6 + 516) = 30000;
  *v6 = *(a1 + 296);
  v6[8] = *(a1 + 292);
  v7 = *a2;
  if (*(a2 + 8) - *a2 >= 0x800uLL)
  {
    v8 = 2048;
  }

  else
  {
    v8 = *(a2 + 8) - *a2;
  }

  memcpy(v6 + 14, v7, v8);
  *(v6 + 6) = v8;
  eUICC::AuthPersoSession::Perform();
  if (!MEMORY[0xAAAAAAAAAAAAAAAA] && MEMORY[0xAAAAAAAAAAAAAAB2] == 1 && MEMORY[0xAAAAAAAAAAAAAAB5])
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, 0xAAAAAAAAAAAAAAB7, MEMORY[0xAAAAAAAAAAAAAAB5] - 0x5555555555555549, MEMORY[0xAAAAAAAAAAAAAAB5]);
    v12 = 0;
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "rsp->Valid() && rsp->contents.rsp_len");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v13, v14, v15, MEMORY[0xAAAAAAAAAAAAAAB2]);
    v12 = 18;
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  operator delete(v6);
  return v12;
}

void sub_1E538A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylMAVValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, 266);
  *(&__dst[16] + 2) = 30000;
  v3 = *(a1 + 296);
  v4 = *(a1 + 292);
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7 >= 0x100)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, v5, v8);
  v9 = *(a1 + 290);
  v23 = v3;
  v24 = v4;
  v25 = 0;
  v26 = v9;
  v27 = 0;
  v28 = v8;
  memcpy(v29, __dst, sizeof(v29));
  *&__dst[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
  eUICC::FinalizePersoSession::Perform();
  if (!*&__dst[0])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp");
    result = 11;
    v14 = *(&__dst[0] + 1);
    if (!*(&__dst[0] + 1))
    {
      goto LABEL_20;
    }

LABEL_18:
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = result;
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      result = v18;
    }

    goto LABEL_20;
  }

  if (!**&__dst[0] && *(*&__dst[0] + 8) == 1)
  {
    result = 0;
    v14 = *(&__dst[0] + 1);
    if (!*(&__dst[0] + 1))
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp->Valid()");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v20 = *(*&__dst[0] + 9);
  v21 = *(*&__dst[0] + 10);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to FinalizePersoDevice status %hhu SW1 0x%x SW2 0x%x\n", v15, v16, v17, *(*&__dst[0] + 8));
  result = 18;
  v14 = *(&__dst[0] + 1);
  if (*(&__dst[0] + 1))
  {
    goto LABEL_18;
  }

LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E538A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylMAVValve::ValidatePerso(uint64_t a1, uint64_t a2, char **a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  memset(v26, 0, 28);
  __dst = 0u;
  v24 = 0u;
  DWORD1(v26[1]) = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0x41)
  {
    v9 = 65;
  }

  else
  {
    v9 = v8;
  }

  memcpy(&__dst, v6, v9);
  v32 = v24;
  v33 = v25;
  *v34 = v26[0];
  *&v34[12] = *(v26 + 12);
  v27 = v4;
  v28 = v5;
  v29 = 0;
  v30 = v9;
  v31 = __dst;
  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  eUICC::ValidatePerso::Perform();
  if (!__dst)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp");
    result = 11;
    v14 = *(&__dst + 1);
    if (!*(&__dst + 1))
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = result;
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      result = v18;
    }

    goto LABEL_21;
  }

  if (!*__dst && *(__dst + 8) == 1 && *(__dst + 11))
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (__dst + 13), __dst + 13 + *(__dst + 11), *(__dst + 11));
    result = 0;
    v14 = *(&__dst + 1);
    if (!*(&__dst + 1))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "rsp->Valid() && rsp->contents.rsp_len");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v21 = *(__dst + 10);
  v22 = *(__dst + 11);
  v20 = *(__dst + 9);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v15, v16, v17, *(__dst + 8));
  result = 18;
  v14 = *(&__dst + 1);
  if (*(&__dst + 1))
  {
    goto LABEL_19;
  }

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E538A864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10[0] = 0;
  v10[2] = 0;
  v10[1] = 22;
  v10[3] = 24;
  v11 = a3;
  result = DERParseSequenceToObject(a1, 2u, v10, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v9);
    if (!result)
    {
      if ((v9 | 0xE000000000000000) == a2)
      {
        result = 0;
        *(a4 + 16) = a2 | 0xE000000000000000;
        *(a4 + 40) = a3;
      }

      else
      {
        result = 2;
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

uint64_t ACFUCommon::PersonalizeParams::PersonalizeParams()
{
  return MEMORY[0x1EEDED210]();
}

{
  return MEMORY[0x1EEDED218]();
}

uint64_t RTKitFirmware::create()
{
  return MEMORY[0x1EEDED348]();
}

{
  return MEMORY[0x1EEDED350]();
}

uint64_t ctu::path_join_impl()
{
  return MEMORY[0x1EEE62FF8]();
}

{
  return MEMORY[0x1EEE63000]();
}

{
  return MEMORY[0x1EEE63008]();
}

uint64_t ctu::cf::convert_copy()
{
  return MEMORY[0x1EEE63098]();
}

{
  return MEMORY[0x1EEE630A0]();
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x1EEE630D8]();
}

{
  return MEMORY[0x1EEE630E0]();
}

{
  return MEMORY[0x1EEE630E8]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x1EEE63218]();
}

{
  return MEMORY[0x1EEE63220]();
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE0]();
}

{
  return MEMORY[0x1EEE63EF8]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x1EEE64438](this, a2, a3, a4);
}

{
  return MEMORY[0x1EEE64450](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x1EEE64440]();
}

{
  return MEMORY[0x1EEE64448]();
}

{
  return MEMORY[0x1EEE64458]();
}

{
  return MEMORY[0x1EEE64460]();
}

{
  return MEMORY[0x1EEE64470]();
}

{
  return MEMORY[0x1EEE64478]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}