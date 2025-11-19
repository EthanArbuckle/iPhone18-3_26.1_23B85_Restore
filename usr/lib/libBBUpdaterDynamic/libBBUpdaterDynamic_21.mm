void sub_1E5352734(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1E5352754(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURInitializer::getMEID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *(v16 + 3) = -1431655766;
  v16[0] = -1431655766;
  (*(*a1 + 200))(a1);
  if (ETLCDMAGetMEID())
  {
    result = ETLCDMAIsValidMEID();
    if (result)
    {
      memset(__s, 170, 15);
      if (ETLCDMAMakeStringFromMEID())
      {
        v5 = operator new(0x18uLL);
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
            v10 = 25;
          }

          else
          {
            v10 = (v6 | 7) + 1;
          }

          p_dst = operator new(v10);
          *(&__dst + 1) = v7;
          v15 = v10 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v15) = v6;
          p_dst = &__dst;
          if (!v6)
          {
LABEL_16:
            *(p_dst + v7) = 0;
            if (SHIBYTE(v15) < 0)
            {
              v12 = __dst;
              std::string::__init_copy_ctor_external(v5, __dst, *(&__dst + 1));
              operator delete(v12);
              v11 = *(a3 + 16);
              if (!v11)
              {
LABEL_23:
                result = 0;
                *(a3 + 16) = v5;
                goto LABEL_9;
              }
            }

            else
            {
              *&v5->__r_.__value_.__l.__data_ = __dst;
              v5->__r_.__value_.__r.__words[2] = v15;
              v11 = *(a3 + 16);
              if (!v11)
              {
                goto LABEL_23;
              }
            }

            if (*(v11 + 23) < 0)
            {
              v13 = v11;
              operator delete(*v11);
              v11 = v13;
            }

            operator delete(v11);
            goto LABEL_23;
          }
        }

        memcpy(p_dst, __s, v7);
        goto LABEL_16;
      }

      result = 11;
    }
  }

  else
  {
    result = 29;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5352984(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURInitializer::getCarrierID(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  *__s = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 25))(a1);
  if (!ETLMaverickGetCarrierID())
  {
    return 32;
  }

  if (__s[7] != 1)
  {
    BBUFeedback::handleComment(a1[1], "carrier ID not present\n");
    return 0;
  }

  v5 = operator new(0x18uLL);
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
    *(&v13 + 1) = v7;
    v14 = v11 | 0x8000000000000000;
    *&v13 = v8;
  }

  else
  {
    HIBYTE(v14) = v6;
    v8 = &v13;
    if (!v6)
    {
      LOBYTE(v13) = 0;
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  memcpy(v8, __s, v7);
  *(v8 + v7) = 0;
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_7:
    *&v5->__r_.__value_.__l.__data_ = v13;
    v5->__r_.__value_.__r.__words[2] = v14;
    v9 = *(a3 + 48);
    if (!v9)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete(v9);
    goto LABEL_20;
  }

LABEL_16:
  v12 = v13;
  std::string::__init_copy_ctor_external(v5, v13, *(&v13 + 1));
  operator delete(v12);
  v9 = *(a3 + 48);
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_20:
  result = 0;
  *(a3 + 48) = v5;
  return result;
}

void sub_1E5352B78(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURInitializer::queryChipInfoBooted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  memset(v50, 0, 128);
  v38 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = 0;
  v39 = xmmword_1E5394720;
  v40 = xmmword_1E5394730;
  v41 = xmmword_1E5394740;
  *bytes = 0u;
  BBUFeedback::handleComment(*(a1 + 8), "Querying chip info from booted baseband");
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(*(a1 + 8), "missing parameter");
    result = 2;
    v32 = *MEMORY[0x1E69E9840];
    return result;
  }

  capabilities::updater::personalizationCommandTimeout(v6);
  SerialNumberAndChipID = ETLMaverickReadSerialNumberAndChipID();
  if ((SerialNumberAndChipID & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading snum and/or chipID from booted baseband over ETL");
LABEL_44:
    result = 18;
    v33 = *MEMORY[0x1E69E9840];
    return result;
  }

  capabilities::updater::personalizationCommandTimeout(SerialNumberAndChipID);
  if ((ETLMaverickReadPublicKeyHash() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading PKHash from booted baseband over ETL");
    goto LABEL_44;
  }

  v8 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(v50, HIDWORD(v38));
  (*(*a3 + 16))(a3, v8);
  v9 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v38);
  v10 = *(a3 + 16);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(a3 + 16) = v9;
  v11 = v37;
  v12 = operator new(0x10uLL);
  *v12 = &unk_1F5F04C88;
  v12[1] = 0;
  v12[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v11);
  (*(*a3 + 24))(a3, v12);
  if (!v8 || !v9)
  {
    goto LABEL_19;
  }

  v13 = *(a1 + 8);
  (*(*v8 + 24))(__p, v8);
  if (v36 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_14;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_14:
  v15 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
  v16 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  v17 = (*(*v9 + 24))(v9);
  if ((v15 | v16))
  {
    v18 = v14;
  }

  else
  {
    v18 = "<< SNUM >>";
  }

  BBUFeedback::handleComment(v13, "   SNUM: 0x%s / CHIPID: 0x%08x", v18, v17);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_19:
  v19 = *(a1 + 8);
  (*(*v12 + 24))(__p, v12);
  if (v36 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  BBUFeedback::handleComment(v19, "   PUBLIC_KEY_HASH: 0x%s", v20);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *(a1 + 8);
  v21 = (a1 + 8);
  v23 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v22, "   CertID: %u", v23);
  v28 = v39 == *bytes && *(&v39 + 1) == *&bytes[8] && v40 == v43 && *(&v40 + 1) == *(&v43 + 1) && v41 == v44 && *(&v41 + 1) == *(&v44 + 1);
  v29 = *v21;
  if (v28)
  {
    BBUFeedback::handleComment(v29, "   Detected as unfused BB\n");
    result = 0;
    v31 = 1;
  }

  else
  {
    BBUFeedback::handleComment(v29, "   Detected as fused BB\n");
    result = 0;
    v31 = 3;
  }

  *(a3 + 88) = v31;
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E535305C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_38()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUICEEBLImage::~BBUICEEBLImage(BBUICEEBLImage *this)
{
  *this = &unk_1F5F05658;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F05658;
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

uint64_t BBUICEEBLImage::getWritePayloadData(BBUICEEBLImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*this + 32))(this) <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEEBLImage.cpp", 0x20u, "Assertion failure(( offset < getWritePayloadLength()) && Error: Chunk size is not sufficient to write payload data of the EBL image.)", v10, v11, v12, v19);
    goto LABEL_8;
  }

  v20 = -1431655766;
  result = (*(**(this + 2) + 16))(*(this + 2), a2, a3, &v20, *(this + 2) + a4);
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEEBLImage.cpp", 0x23u, "Assertion failure((ret == kBBUReturnSuccess) && Failed to copy EBL image payload data to buffer!)", v13, v14, v15, v19);
    goto LABEL_8;
  }

  if (v20 != a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEEBLImage.cpp", 0x24u, "Assertion failure((amountCopied == amount) && Copied data size mismatch: Failed to copy EBL image payload data to buffer!)", v16, v17, v18, v19);
LABEL_8:
  }

  return result;
}

uint64_t BBUICEEBLImage::getWritePayloadLength(BBUICEEBLImage *this)
{
  result = *(this + 2);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void BBUICEEBLImage::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void DaleTransport_BootLogger_PCIE::start_pl_log(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 216);
  if (v6 && v6(a1 + 160))
  {
    DaleTransport_BootLogger_PCIE::close_transport(a1);
  }

  v7 = *(a3 + 24);
  if (v7)
  {
    if (v7 == a3)
    {
      *(&v25 + 1) = buf;
      (*(*v7 + 24))(v7, buf);
    }

    else
    {
      *(&v25 + 1) = (*(*v7 + 16))(v7);
    }
  }

  else
  {
    *(&v25 + 1) = 0;
  }

  std::__function::__value_func<void ()(unsigned char const*,long)>::swap[abi:ne200100](buf, (a1 + 24));
  if (*(&v25 + 1) == buf)
  {
    (*(**(&v25 + 1) + 32))(*(&v25 + 1));
    v8 = *a2;
    if (v8)
    {
LABEL_13:
      dispatch_retain(v8);
      dispatch_group_enter(v8);
    }
  }

  else
  {
    if (*(&v25 + 1))
    {
      (*(**(&v25 + 1) + 40))();
    }

    v8 = *a2;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  v9 = *(a1 + 56);
  *(a1 + 56) = v8;
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  v10 = **(a1 + 112);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1E5234000, v10, OS_LOG_TYPE_DEBUG, "Opening pl_log", buf, 2u);
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v27 = v11;
  *&v27[16] = v11;
  v25 = v11;
  v26 = v11;
  *buf = v11;
  TelephonyBasebandPCITransportInitParameters();
  *&buf[8] = *(a1 + 16);
  *&v27[8] = 0u;
  *(&v25 + 1) = 0x100002710;
  *(&v26 + 4) = 0xE000000007FLL;
  *buf = 24;
  LODWORD(v28) = 25;
  LODWORD(v26) = v26 | 4;
  v12 = *(a1 + 144);
  v13 = *(a1 + 152);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1174405120;
  v22[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke;
  v22[3] = &__block_descriptor_tmp_20;
  v22[4] = a1;
  v22[5] = v12;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v27 = v22;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1174405120;
  v20[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke_1;
  v20[3] = &__block_descriptor_tmp_3_0;
  v20[4] = v12;
  v21 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *&v25 = v20;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  v14 = TelephonyBasebandPCITransportCreate();
  v15 = *(a1 + 112);
  v16 = *v15;
  if (!v14)
  {
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_1E5234000, v16, OS_LOG_TYPE_ERROR, "error: Failed to open pl_log", &v19, 2u);
      v17 = v21;
      if (!v21)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = v21;
      if (!v21)
      {
        goto LABEL_32;
      }
    }

LABEL_31:
    std::__shared_weak_count::__release_weak(v17);
    goto LABEL_32;
  }

  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19) = 0;
    _os_log_debug_impl(&dword_1E5234000, v16, OS_LOG_TYPE_DEBUG, "Changing pl_log's interface status from off to started", &v19, 2u);
  }

  v19 = 24;
  *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(a1 + 248, 0x18u, &v19) + 20) = 0;
  v17 = v21;
  if (v21)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E53537CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v24 = a22;
    if (!a22)
    {
LABEL_3:
      if (!v22)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v24 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v24);
  if (!v22)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL DaleTransport_BootLogger_PCIE::close_transport(DaleTransport_BootLogger_PCIE *this)
{
  v2 = **(this + 14);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "Closing transport", buf, 2u);
    v3 = *(this + 27);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(this + 27);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3(this + 160))
  {
    if (TelephonyUtilTransportFree())
    {
      v4 = **(this + 14);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1E5234000, v4, OS_LOG_TYPE_INFO, "Transport closed successfully", v7, 2u);
      }
    }

    *(this + 30) = 0;
    *(this + 13) = 0u;
    *(this + 14) = 0u;
    *(this + 11) = 0u;
    *(this + 12) = 0u;
    *(this + 10) = 0u;
    return 1;
  }

LABEL_10:
  v6 = **(this + 14);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (result)
  {
    *v8 = 0;
    _os_log_impl(&dword_1E5234000, v6, OS_LOG_TYPE_INFO, "Invalid transport", v8, 2u);
    return 0;
  }

  return result;
}

void DaleTransport_BootLogger_PCIE::stop_pl_log(DaleTransport_BootLogger_PCIE *a1)
{
  v1 = *(a1 + 27);
  if (v1)
  {
    if (v1(a1 + 160))
    {
      DaleTransport_BootLogger_PCIE::close_transport(a1);
      v3 = *(a1 + 7);
      *(a1 + 7) = 0;
      if (v3)
      {
        dispatch_group_leave(v3);

        dispatch_release(v3);
      }
    }
  }
}

void DaleTransport_BootLogger_PCIE::start_rom_log(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v21 = 0;
  v22 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v7;
  v23[1] = v7;
  LODWORD(v23[0]) = 64;
  v8 = *(a3 + 24);
  if (!v8)
  {
    goto LABEL_6;
  }

  if (v8 != a3)
  {
    v8 = (*(*v8 + 16))(v8);
LABEL_6:
    v24 = v8;
    goto LABEL_8;
  }

  v24 = (v23 + 8);
  (*(*v8 + 24))(v8, v23 + 8);
LABEL_8:
  v9 = operator new(0x100uLL);
  v9->__shared_owners_ = 0;
  p_shared_owners = &v9->__shared_owners_;
  v9->__shared_weak_owners_ = 0;
  v9->__vftable = &unk_1F5F05808;
  *buf = v21;
  object = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  v27 = v23[0];
  v11 = v24;
  if (!v24)
  {
    goto LABEL_13;
  }

  if (v24 != (v23 + 8))
  {
    v11 = (*(*v24 + 16))();
LABEL_13:
    v29 = v11;
    goto LABEL_15;
  }

  v29 = v28;
  (*(*v24 + 24))();
LABEL_15:
  v12 = &v9[1];
  KernelPCIRestoreTrace::KernelPCIRestoreTrace(&v9[1], buf);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    v13 = object;
    if (object)
    {
LABEL_19:
      dispatch_release(v13);
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))();
    }

    v13 = object;
    if (object)
    {
      goto LABEL_19;
    }
  }

  shared_owners = v9[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9[1].__vftable = &v9[1];
      v9[1].__shared_owners_ = v9;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_34:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v15 = *(a1 + 296);
        *(a1 + 288) = v12;
        *(a1 + 296) = v9;
        if (!v15)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9[1].__vftable = &v9[1];
    v9[1].__shared_owners_ = v9;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_34;
    }
  }

  v15 = *(a1 + 296);
  *(a1 + 288) = v12;
  *(a1 + 296) = v9;
  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v12 = *(a1 + 288);
    if (!v12)
    {
      goto LABEL_32;
    }

LABEL_35:
    v17 = *a2;
    group = v17;
    if (v17)
    {
      dispatch_retain(v17);
      dispatch_group_enter(v17);
    }

    KernelPCIRestoreTrace::start(v12, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    goto LABEL_40;
  }

  v12 = *(a1 + 288);
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_32:
  v16 = **(a1 + 112);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E5234000, v16, OS_LOG_TYPE_ERROR, "error: Failed to create PCI kernel trace to collect rom", buf, 2u);
  }

LABEL_40:
  if (v24 == (v23 + 8))
  {
    (*(*v24 + 32))(v24);
    v18 = v22;
    if (!v22)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v24)
  {
    (*(*v24 + 40))();
  }

  v18 = v22;
  if (v22)
  {
LABEL_44:
    dispatch_release(v18);
  }

LABEL_45:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E5353E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, char a10, dispatch_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v20);
  KernelPCIRestoreTrace::Config::~Config(&a10);
  _Unwind_Resume(a1);
}

void KernelPCIRestoreTrace::Config::~Config(KernelPCIRestoreTrace::Config *this)
{
  v2 = this + 24;
  v3 = *(this + 6);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 1);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
LABEL_5:
    dispatch_release(v4);
  }
}

void DaleTransport_BootLogger_PCIE::stop_rom_log(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = *a2;
    group = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v3);
    }

    KernelPCIRestoreTrace::stop(v2, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }
}

void sub_1E5353F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaleTransport_BootLogger_PCIE::DaleTransport_BootLogger_PCIE(uint64_t a1, __int16 *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v3 = *(a2 + 1);
  v7 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  DaleTransport_BootLogger::DaleTransport_BootLogger(a1, &v6);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *a1 = &unk_1F5F056C0;
  *(a1 + 248) = 0u;
  v8 = constinit;
  v9[0] = 0x10000001ALL;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>(a1 + 248, &v8, &v8);
  std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>(a1 + 248, &v8 + 2, &v8 + 1);
  std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>(a1 + 248, v9, v9);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E53540D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DaleTransport_BootLogger_PCIE::~DaleTransport_BootLogger_PCIE(std::__shared_weak_count **this)
{
  *this = &unk_1F5F056C0;
  DaleTransport_BootLogger_PCIE::close_transport(this);
  v2 = this[37];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[33];
  if (v3)
  {
    do
    {
      v4 = v3->__vftable;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = this[31];
  this[31] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = this[19];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
}

{
  DaleTransport_BootLogger_PCIE::~DaleTransport_BootLogger_PCIE(this);

  operator delete(v1);
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke(void *a1, int a2, uint64_t a3, unsigned int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_28;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v5);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  if (!a1[5])
  {
    goto LABEL_26;
  }

  v12 = **(v9 + 112);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_24:
    *buf = a3;
    v28[0] = a4;
    v23 = *(v9 + 48);
    if (!v23)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v23 + 48))(v23, buf, v28);
    goto LABEL_26;
  }

  *buf = 67109376;
  *&buf[4] = a2;
  *&buf[8] = 1024;
  *&buf[10] = a4;
  _os_log_debug_impl(&dword_1E5234000, v12, OS_LOG_TYPE_DEBUG, "[pl_log] callback get triggered %x, %u", buf, 0xEu);
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_6:
  *buf = 24;
  if (!*(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(v9 + 248, 0x18u, buf) + 20))
  {
    v13 = DaleTransport_BootLogger_PCIE::close_transport(v9);
    v14 = *(v9 + 112);
    v15 = *v14;
    if (!v13)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to close interface pl_log", buf, 2u);
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E5234000, v15, OS_LOG_TYPE_DEBUG, "Changing pl_log's interface status from started to off", buf, 2u);
    }

    *buf = 24;
    *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(v9 + 248, 0x18u, buf) + 20) = 1;
    v35 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v16;
    v34 = v16;
    v31 = v16;
    v32 = v16;
    *buf = v16;
    TelephonyBasebandPCITransportInitParameters();
    *&buf[8] = *(v9 + 16);
    LODWORD(v35) = 25;
    *(&v33 + 1) = 0;
    *&v34 = 0;
    *(&v31 + 1) = 0x100002710;
    *(&v32 + 4) = 0xE000000001FLL;
    *buf = 26;
    LODWORD(v32) = v32 | 4;
    v17 = *(v9 + 144);
    v18 = *(v9 + 152);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 1174405120;
    v28[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke;
    v28[3] = &__block_descriptor_tmp_6_0;
    v28[4] = v9;
    v28[5] = v17;
    v29 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *&v33 = v28;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 1174405120;
    v26[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke_7;
    v26[3] = &__block_descriptor_tmp_10;
    v26[4] = v17;
    v27 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(v9 + 160) = 0u;
    *(v9 + 176) = 0u;
    *&v31 = v26;
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 224) = 0u;
    *(v9 + 240) = 0;
    v19 = TelephonyBasebandPCITransportCreate();
    v20 = *(v9 + 112);
    v21 = *v20;
    if (v19)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 0;
        _os_log_debug_impl(&dword_1E5234000, v21, OS_LOG_TYPE_DEBUG, "Changing lk_log's interface status from off to started", v25, 2u);
      }

      *v25 = 26;
      *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(v9 + 248, 0x1Au, v25) + 20) = 0;
      v22 = v27;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    else if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_1E5234000, v21, OS_LOG_TYPE_ERROR, "error: Failed to open lk_log", v25, 2u);
      v22 = v27;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v22 = v27;
      if (!v27)
      {
LABEL_32:
        if (v29)
        {
          std::__shared_weak_count::__release_weak(v29);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_weak(v18);
        }

        goto LABEL_26;
      }
    }

    std::__shared_weak_count::__release_weak(v22);
    goto LABEL_32;
  }

LABEL_26:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_28:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E5354690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
    v26 = a24;
    if (!a24)
    {
LABEL_3:
      if (!v24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v26 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v26);
  if (!v24)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  std::__shared_weak_count::__release_weak(v24);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v2;
        (v2->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke(void *a1, int a2, uint64_t a3, unsigned int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_17;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v5);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  if (!a1[5])
  {
    goto LABEL_15;
  }

  v12 = **(v9 + 112);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_13:
    v20 = a4;
    *buf = a3;
    v18 = *(v9 + 48);
    if (!v18)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v18 + 48))(v18, buf, &v20);
    goto LABEL_15;
  }

  *buf = 67109376;
  *&buf[4] = a2;
  v22 = 1024;
  v23 = a4;
  _os_log_debug_impl(&dword_1E5234000, v12, OS_LOG_TYPE_DEBUG, "[Debug lk_log] callback triggered: status = 0x%x, size = %u", buf, 0xEu);
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_6:
  *buf = 26;
  if (!*(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(v9 + 248, 0x1Au, buf) + 20))
  {
    v13 = DaleTransport_BootLogger_PCIE::close_transport(v9);
    v14 = *(v9 + 112);
    if (!v13 && (v15 = *v14, os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR)))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to close interface lk_log", buf, 2u);
      v16 = **(v9 + 112);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }
    }

    *buf = 0;
    _os_log_debug_impl(&dword_1E5234000, v16, OS_LOG_TYPE_DEBUG, "Changing lk_log's interface status from started to off", buf, 2u);
LABEL_10:
    *buf = 26;
    *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(v9 + 248, 0x1Au, buf) + 20) = 1;
    v17 = *(v9 + 56);
    *(v9 + 56) = 0;
    if (v17)
    {
      dispatch_group_leave(v17);
      dispatch_release(v17);
    }
  }

LABEL_15:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E5354AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5354ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5354AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5354AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v2;
        (v2->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void std::__shared_ptr_emplace<KernelPCIRestoreTrace>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F05808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *a2;
      if (v6 <= v5)
      {
        v8 = v5 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                return v10;
              }
            }

            else if ((v12 & (v6 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              return v10;
            }
          }

          else
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_23:
  v14 = operator new(0x18uLL);
  *v14 = 0;
  v14[1] = v5;
  v14[2] = *a3;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (v6 && (v16 * v6) >= v15)
  {
    v5 = v8;
  }

  else
  {
    v17 = 1;
    if (v6 >= 3)
    {
      v17 = (v6 & (v6 - 1)) != 0;
    }

    v18 = v17 | (2 * v6);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_36;
    }

    if (prime < v6)
    {
      v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
      {
        v21 = std::__next_prime(v21);
      }

      else
      {
        v23 = 1 << -__clz(v21 - 1);
        if (v21 >= 2)
        {
          v21 = v23;
        }
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime < v6)
      {
LABEL_36:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v5);
  if (v25)
  {
    *v14 = *v25;
  }

  else
  {
    *v14 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v24 + 8 * v5) = a1 + 16;
    if (!*v14)
    {
      goto LABEL_54;
    }

    v26 = *(*v14 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v26 >= v6)
      {
        v26 %= v6;
      }

      v25 = (v24 + 8 * v26);
    }

    else
    {
      v25 = (v24 + 8 * (v26 & (v6 - 1)));
    }
  }

  *v25 = v14;
LABEL_54:
  ++*(a1 + 24);
  return v14;
}

uint64_t std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v5 = a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 4) == a2)
              {
                return v10;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x18uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = *a3;
  *(v10 + 20) = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (v6 && (v14 * v6) >= v13)
  {
    v5 = v8;
  }

  else
  {
    v15 = 1;
    if (v6 >= 3)
    {
      v15 = (v6 & (v6 - 1)) != 0;
    }

    v16 = v15 | (2 * v6);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      prime = v17;
    }

    else
    {
      prime = v16;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_35;
    }

    if (prime < v6)
    {
      v19 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v20 = vcnt_s8(v6), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
      {
        v19 = std::__next_prime(v19);
      }

      else
      {
        v21 = 1 << -__clz(v19 - 1);
        if (v19 >= 2)
        {
          v19 = v21;
        }
      }

      if (prime <= v19)
      {
        prime = v19;
      }

      if (prime < v6)
      {
LABEL_35:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v5);
  if (v23)
  {
    *v10 = *v23;
  }

  else
  {
    *v10 = *(a1 + 16);
    *(a1 + 16) = v10;
    *(v22 + 8 * v5) = a1 + 16;
    if (!*v10)
    {
      goto LABEL_53;
    }

    v25 = *(*v10 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v25 >= v6)
      {
        v25 %= v6;
      }

      v23 = (v22 + 8 * v25);
    }

    else
    {
      v23 = (v22 + 8 * (v25 & (v6 - 1)));
    }
  }

  *v23 = v10;
LABEL_53:
  ++*(a1 + 24);
  return v10;
}

uint64_t __cxx_global_var_init_39()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUUpdateSource::~BBUUpdateSource(BBUUpdateSource *this)
{
  *this = &unk_1F5F05858;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
  }
}

char *BBUUpdateSource::createFromZipFile(BBUUpdateSource *this, BBUZipFile *a2, BBUFeedback *a3)
{
  v3 = a3;
  UpdateSourceType = capabilities::updater::getUpdateSourceType(this);
  switch(UpdateSourceType)
  {
    case 5:

      return BBUICE16UpdateSource::createFromZipFile(this, a2, v7);
    case 4:
      v10 = operator new(0x1A8uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v10, this, a2, v3);
      *v10 = &unk_1F5EFFC18;
      *(v10 + 52) = 0;
      BBUEUR25UpdateSource::init(v10);
      return v10;
    case 3:
      v8 = operator new(0x1A0uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v8, this, a2, v3);
      (*(*v8 + 216))(v8);
      return v8;
    default:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x46u, "Assertion failure(false && Unrecognized radio type.)", v12, v13, v14, v15);
  }
}

char *BBUUpdateSource::createFromFolder(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 8);
  if (*(a1 + 23) < 0)
  {
    v7 = *a1;
  }

  v8 = ctu::fs::file_exists();
  if (!v8)
  {
    return 0;
  }

  UpdateSourceType = capabilities::updater::getUpdateSourceType(v8);
  switch(UpdateSourceType)
  {
    case 5:

      return BBUICE16UpdateSource::createFromFolder(a1, a2);
    case 4:
      v12 = operator new(0x1A8uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v12, a1, a2, a3);
      *v12 = &unk_1F5EFFC18;
      *(v12 + 52) = 0;
      BBUEUR25UpdateSource::init(v12);
      return v12;
    case 3:
      v10 = operator new(0x1A0uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v10, a1, a2, a3);
      (*(*v10 + 216))(v10);
      return v10;
    default:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x69u, "Assertion failure(false && Unrecognized radio type.)", v14, v15, v16, v17);
  }
}

void BBUUpdateSource::loadOptions(uint64_t a1, CFDataRef *a2)
{
  if (!*(a1 + 16))
  {
    v3 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], *a2, 0, 0, 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 != CFDictionaryGetTypeID())
      {
        v4 = 0;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_8:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v6 = (**a1)(a1);
            _BBULog(3, 0, v6, "", "Loaded Options\n", v7, v8, v9, v11);
          }
        }
      }

      v10 = *(a1 + 16);
      *(a1 + 16) = v4;
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }
}

uint64_t BBUUpdateSource::prepareRemoteData(uint64_t a1, uint64_t a2, uint64_t a3, char a4, const void *a5, int a6)
{
  v168 = 0;
  v169 = 0;
  v167 = 0;
  if ((capabilities::updater::shouldStripFDRDataOnAP(a1) & 1) == 0)
  {
    v145 = 0;
    value = 0;
    bytes = 0;
    v13 = 0;
    v8 = 0;
    v15 = *MEMORY[0x1E695E480];
    goto LABEL_7;
  }

  BBUFeedback::handleComment(*(a1 + 8), "libFDR options setup for the new FDR flow. Note that this setup will be ignored in legacy FDR flow");
  v8 = calloc(1uLL, 0x400uLL);
  if (!v8)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Calloc for datadir path failed");
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v8 = 0;
LABEL_49:
    v14 = 19;
    goto LABEL_50;
  }

  v9 = lookupPathForPersistentData();
  v10 = *(a1 + 8);
  if (v9)
  {
    BBUFeedback::handleComment(v10, "Failed to get datadir path; error = %ld", v9);
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_5:
    v14 = 15;
LABEL_50:
    v51 = a5;
    goto LABEL_189;
  }

  BBUFeedback::handleComment(v10, "FDR factory data directory: %s ", v8);
  v15 = *MEMORY[0x1E695E480];
  v169 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v8, 0x8000100u);
  value = CFURLCreateWithFileSystemPath(v15, v169, kCFURLPOSIXPathStyle, 1u);
  v168 = value;
  v13 = calloc(1uLL, 0x400uLL);
  if (!v13)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Calloc for apticket path failed");
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_49;
  }

  v132 = lookupPathForPersonalizedData();
  if (v132)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get apticket path; error = %ld", v132);
    v11 = 0;
    v12 = 0;
    goto LABEL_5;
  }

  if (!a5)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Using the APTicket in the FS to create the FDR option");
    v145 = operator new(0x30uLL);
    *v145 = &unk_1F5F00F28;
    *(v145 + 8) = 0u;
    *(v145 + 24) = 0u;
    std::string::basic_string[abi:ne200100]<0>(v165, v13);
    v135 = BBUFileDataSource::init(v145, v165, 0);
    if (v166 < 0)
    {
      v136 = v135;
      operator delete(v165[0]);
      v135 = v136;
    }

    if (v135)
    {
      BBUFeedback::handleComment(*(a1 + 8), "APTicket FileDataSource class init failed...");
      v11 = 0;
      v14 = 110;
      v12 = v145;
    }

    else
    {
      v137 = (*(*v145 + 24))(v145);
      v138 = malloc(v137);
      if (v138)
      {
        LODWORD(__p[0]) = -1431655766;
        bytes = v138;
        (*(*v145 + 16))(v145);
        if (v137 == -1431655766)
        {
          v139 = CFDataCreateWithBytesNoCopy(v15, bytes, 2863311530, *MEMORY[0x1E695E498]);
          v140 = v167;
          v167 = v139;
          v165[0] = v140;
          ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v165);
          BBUFeedback::handleComment(*(a1 + 8), "MSU based APTicket Raw Path: %s", v13);
          goto LABEL_207;
        }

        BBUFeedback::handleComment(*(a1 + 8), "Reading of APTicket content failed.");
        v14 = 112;
        v11 = bytes;
        v12 = v145;
      }

      else
      {
        BBUFeedback::handleComment(*(a1 + 8), "Malloc failed for APTicket content.");
        v11 = 0;
        v14 = 111;
        v12 = v145;
      }
    }

LABEL_191:
    (*(*v12 + 8))(v12);
    goto LABEL_192;
  }

  ctu::cf::CFSharedRef<__CFData const>::operator=(&v167, a5);
  BBUFeedback::handleComment(*(a1 + 8), "Using the APTicket that is passed in as an input to the BBU for the FDR option");
  bytes = 0;
  v145 = 0;
LABEL_207:
  BBUFeedback::handleComment(*(a1 + 8), "Is performManFlow?: Bool = %d", a6);
  BBUFeedback::handleComment(*(a1 + 8), "Now, set the options for the libFDR API (either legacy or new API function)");
LABEL_7:
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = Mutable;
  v164 = Mutable;
  if (Mutable)
  {
    if (capabilities::updater::shouldStripFDRDataOnAP(Mutable))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_14;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v18 = (**a1)(a1);
        _BBULog(3, 0, v18, "", "Stripping and verifying Cal FDR Data on AP\n", v19, v20, v21, v141);
      }

LABEL_14:
      if (a6)
      {
        goto LABEL_20;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_17:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v22 = (**a1)(a1);
            _BBULog(3, 0, v22, "", "Not performManifestCheckif (set kAMFDROptionCopyAllowUnsealed = True\n", v23, v24, v25, v141);
          }
        }
      }

      CFDictionaryAddValue(v17, @"CopyAllowUnsealed", *MEMORY[0x1E695E4D0]);
LABEL_20:
      CFDictionaryAddValue(v17, @"DataDirectory", value);
      CFDictionaryAddValue(v17, @"APTicket", v167);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_29;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v26 = (**a1)(a1);
        v27 = CFDictionaryGetValue(v17, @"CopyAllowUnsealed");
        ctu::cf::show(v165, v27, v28);
        if (v166 >= 0)
        {
          v32 = v165;
        }

        else
        {
          LOBYTE(v32) = v165[0];
        }

        _BBULog(3, 0, v26, "", "CAL: Set kAMFDROptionCopyAllowUnsealed: %s\n", v29, v30, v31, v32);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }
      }

LABEL_29:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_37;
      }

LABEL_30:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v33 = (**a1)(a1);
        v34 = CFDictionaryGetValue(v17, @"APTicket");
        ctu::cf::show(v165, v34, v35);
        if (v166 >= 0)
        {
          v39 = v165;
        }

        else
        {
          LOBYTE(v39) = v165[0];
        }

        _BBULog(3, 0, v33, "", "CAL: Set kAMFDROptionApTicket: %s\n", v36, v37, v38, v39);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_38;
        }
      }

LABEL_37:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_57;
      }

LABEL_38:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v40 = (**a1)(a1);
        v41 = CFDictionaryGetValue(v17, @"DataDirectory");
        ctu::cf::show(v165, v41, v42);
        if (v166 >= 0)
        {
          v46 = v165;
        }

        else
        {
          LOBYTE(v46) = v165[0];
        }

        _BBULog(3, 0, v40, "", "CAL: Set kAMFDROptionDataDirectory: %s\n", v43, v44, v45, v46);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }
      }

      goto LABEL_57;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
LABEL_56:
        CFDictionaryAddValue(v17, @"GetCombined", *MEMORY[0x1E695E4D0]);
        CFDictionaryAddValue(v17, @"VerifyData", *MEMORY[0x1E695E4C0]);
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_56;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v52 = (**a1)(a1);
      _BBULog(3, 0, v52, "", "Not stripping Cal FDR Data on AP\n", v53, v54, v55, v141);
    }

    goto LABEL_56;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_57;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v47 = (**a1)(a1);
    _BBULog(3, 0, v47, "", "Failed to create dictionary for CAL FDR options\n", v48, v49, v50, v141);
  }

LABEL_57:
  v56 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = v56;
  v163 = v56;
  if (v56)
  {
    if (!capabilities::updater::shouldStripFDRDataOnAP(v56))
    {
      v91 = *MEMORY[0x1E695E4C0];
      CFDictionaryAddValue(v57, @"GetCombined", *MEMORY[0x1E695E4C0]);
      CFDictionaryAddValue(v57, @"VerifyData", v91);
      CFDictionaryAddValue(v57, @"StripImg4", *MEMORY[0x1E695E4D0]);
      goto LABEL_98;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_63;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v58 = (**a1)(a1);
      _BBULog(3, 0, v58, "", "Stripping and verifying PROV FDR Data on AP\n", v59, v60, v61, v141);
    }

LABEL_63:
    if (a6)
    {
      goto LABEL_69;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_66:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v62 = (**a1)(a1);
          _BBULog(3, 0, v62, "", "Not performManifestCheckif (set kAMFDROptionCopyAllowUnsealed = True\n", v63, v64, v65, v141);
        }
      }
    }

    CFDictionaryAddValue(v57, @"CopyAllowUnsealed", *MEMORY[0x1E695E4D0]);
LABEL_69:
    CFDictionaryAddValue(v57, @"DataDirectory", value);
    CFDictionaryAddValue(v57, @"APTicket", v167);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_78;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v66 = (**a1)(a1);
      v67 = CFDictionaryGetValue(v57, @"CopyAllowUnsealed");
      ctu::cf::show(v165, v67, v68);
      if (v166 >= 0)
      {
        v72 = v165;
      }

      else
      {
        LOBYTE(v72) = v165[0];
      }

      _BBULog(3, 0, v66, "", "PROV: Set kAMFDROptionCopyAllowUnsealed: %s\n", v69, v70, v71, v72);
      if (v166 < 0)
      {
        operator delete(v165[0]);
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_79;
      }
    }

LABEL_78:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_86;
    }

LABEL_79:
    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v73 = (**a1)(a1);
      v74 = CFDictionaryGetValue(v57, @"APTicket");
      ctu::cf::show(v165, v74, v75);
      if (v166 >= 0)
      {
        v79 = v165;
      }

      else
      {
        LOBYTE(v79) = v165[0];
      }

      _BBULog(3, 0, v73, "", "PROV: Set kAMFDROptionApTicket: %s\n", v76, v77, v78, v79);
      if (v166 < 0)
      {
        operator delete(v165[0]);
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_98;
        }

        goto LABEL_87;
      }
    }

LABEL_86:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_98;
    }

LABEL_87:
    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v80 = (**a1)(a1);
      v81 = CFDictionaryGetValue(v57, @"DataDirectory");
      ctu::cf::show(v165, v81, v82);
      if (v166 >= 0)
      {
        v86 = v165;
      }

      else
      {
        LOBYTE(v86) = v165[0];
      }

      _BBULog(3, 0, v80, "", "PROV: Set kAMFDROptionDataDirectory: %s\n", v83, v84, v85, v86);
      if (v166 < 0)
      {
        operator delete(v165[0]);
      }
    }

    goto LABEL_98;
  }

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
    v87 = (**a1)(a1);
    _BBULog(3, 0, v87, "", "Failed to create dictionary for PROV FDR options\n", v88, v89, v90, v141);
  }

LABEL_98:
  v92 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v93 = v92;
  v162 = v92;
  if (v92)
  {
    if (capabilities::updater::shouldStripFDRDataOnAP(v92))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_105;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v94 = (**a1)(a1);
        _BBULog(3, 0, v94, "", "Stripping and verifying Pac FDR Data on AP\n", v95, v96, v97, v141);
      }

LABEL_105:
      if (a6)
      {
        goto LABEL_111;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_108:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v98 = (**a1)(a1);
            _BBULog(3, 0, v98, "", "Not performManifestCheckif (set kAMFDROptionCopyAllowUnsealed = True\n", v99, v100, v101, v141);
          }
        }
      }

      CFDictionaryAddValue(v93, @"CopyAllowUnsealed", *MEMORY[0x1E695E4D0]);
LABEL_111:
      CFDictionaryAddValue(v93, @"DataDirectory", value);
      CFDictionaryAddValue(v93, @"APTicket", v167);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_120;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_120;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v102 = (**a1)(a1);
        v103 = CFDictionaryGetValue(v93, @"CopyAllowUnsealed");
        ctu::cf::show(v165, v103, v104);
        if (v166 >= 0)
        {
          v108 = v165;
        }

        else
        {
          LOBYTE(v108) = v165[0];
        }

        v92 = _BBULog(3, 0, v102, "", "PAC: Set kAMFDROptionCopyAllowUnsealed: %s\n", v105, v106, v107, v108);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_128;
          }

          goto LABEL_121;
        }
      }

LABEL_120:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_128;
      }

LABEL_121:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v109 = (**a1)(a1);
        v110 = CFDictionaryGetValue(v93, @"APTicket");
        ctu::cf::show(v165, v110, v111);
        if (v166 >= 0)
        {
          v115 = v165;
        }

        else
        {
          LOBYTE(v115) = v165[0];
        }

        v92 = _BBULog(3, 0, v109, "", "PAC: Set kAMFDROptionApTicket: %s\n", v112, v113, v114, v115);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_145;
          }

          goto LABEL_129;
        }
      }

LABEL_128:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_145;
      }

LABEL_129:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v116 = (**a1)(a1);
        v117 = CFDictionaryGetValue(v93, @"DataDirectory");
        ctu::cf::show(v165, v117, v118);
        if (v166 >= 0)
        {
          v122 = v165;
        }

        else
        {
          LOBYTE(v122) = v165[0];
        }

        v92 = _BBULog(3, 0, v116, "", "PAC: Set kAMFDROptionDataDirectory: %s\n", v119, v120, v121, v122);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }
      }

      goto LABEL_145;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
LABEL_144:
        CFDictionaryAddValue(v93, @"GetCombined", *MEMORY[0x1E695E4D0]);
        CFDictionaryAddValue(v93, @"VerifyData", *MEMORY[0x1E695E4C0]);
        goto LABEL_145;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_144;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v127 = (**a1)(a1);
      _BBULog(3, 0, v127, "", "Not stripping FDR Pac Data on AP\n", v128, v129, v130, v141);
    }

    goto LABEL_144;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_145;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_145;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v123 = (**a1)(a1);
    v92 = _BBULog(3, 0, v123, "", "Failed to create dictionary for PAC FDR options\n", v124, v125, v126, v141);
  }

LABEL_145:
  if (*(a1 + 32))
  {
    v14 = 0;
    v51 = a5;
    v11 = bytes;
    v12 = v145;
    if (!v93)
    {
      goto LABEL_185;
    }

    goto LABEL_184;
  }

  v160 = (*"bbcl" | 0xAAAAAA0000000000);
  v161 = xmmword_1E5394920;
  v166 = 3;
  LODWORD(v165[0]) = 4997443;
  capabilities::updater::CALFileName(__p, v92);
  cf = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  BYTE1(v141) = a6;
  LOBYTE(v141) = a4;
  v14 = (*(*a1 + 224))(a1, a1 + 40, a2, &v160, v165, __p, &cf, a3, v141);
  v131 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v159 < 0)
  {
    operator delete(__p[0]);
    if ((v166 & 0x80000000) == 0)
    {
LABEL_154:
      if ((SHIBYTE(v161) & 0x80000000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_162;
    }
  }

  else if ((v166 & 0x80000000) == 0)
  {
    goto LABEL_154;
  }

  operator delete(v165[0]);
  if ((SHIBYTE(v161) & 0x80000000) == 0)
  {
LABEL_155:
    if (v14)
    {
      goto LABEL_183;
    }

    goto LABEL_163;
  }

LABEL_162:
  operator delete(v160);
  if (v14)
  {
    goto LABEL_183;
  }

LABEL_163:
  v155 = (*"bbpv" | 0xAAAAAA0000000000);
  v156 = xmmword_1E5394920;
  v166 = 4;
  strcpy(v165, "PROV");
  capabilities::updater::PROVFileName(__p, v131);
  v154 = v57;
  if (v57)
  {
    CFRetain(v57);
  }

  BYTE1(v142) = a6;
  LOBYTE(v142) = a4;
  v14 = (*(*a1 + 224))(a1, a1 + 48, a2, &v155, v165, __p, &v154, a3, v142);
  v133 = v154;
  if (v154)
  {
    CFRelease(v154);
  }

  if (v159 < 0)
  {
    operator delete(__p[0]);
    if ((v166 & 0x80000000) == 0)
    {
LABEL_169:
      if ((SHIBYTE(v156) & 0x80000000) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_175;
    }
  }

  else if ((v166 & 0x80000000) == 0)
  {
    goto LABEL_169;
  }

  operator delete(v165[0]);
  if ((SHIBYTE(v156) & 0x80000000) == 0)
  {
LABEL_170:
    if (v14)
    {
      goto LABEL_183;
    }

    goto LABEL_176;
  }

LABEL_175:
  operator delete(v155);
  if (v14)
  {
    goto LABEL_183;
  }

LABEL_176:
  v152 = (*"bbpc" | 0xAAAAAA0000000000);
  v153 = xmmword_1E5394920;
  v166 = 3;
  LODWORD(v165[0]) = 4407632;
  capabilities::updater::PACFileName(__p, v133);
  v151 = v93;
  if (v93)
  {
    CFRetain(v93);
  }

  BYTE1(v143) = a6;
  LOBYTE(v143) = a4;
  v14 = (*(*a1 + 224))(a1, a1 + 56, a2, &v152, v165, __p, &v151, a3, v143);
  if (v151)
  {
    CFRelease(v151);
  }

  if (v159 < 0)
  {
    operator delete(__p[0]);
    if ((v166 & 0x80000000) == 0)
    {
LABEL_182:
      if ((SHIBYTE(v153) & 0x80000000) == 0)
      {
        goto LABEL_183;
      }

LABEL_210:
      operator delete(v152);
      *(a1 + 32) = 1;
      v51 = a5;
      v11 = bytes;
      v12 = v145;
      if (!v93)
      {
        goto LABEL_185;
      }

      goto LABEL_184;
    }
  }

  else if ((v166 & 0x80000000) == 0)
  {
    goto LABEL_182;
  }

  operator delete(v165[0]);
  if (SHIBYTE(v153) < 0)
  {
    goto LABEL_210;
  }

LABEL_183:
  *(a1 + 32) = 1;
  v51 = a5;
  v11 = bytes;
  v12 = v145;
  if (v93)
  {
LABEL_184:
    CFRelease(v93);
  }

LABEL_185:
  if (v57)
  {
    CFRelease(v57);
  }

  if (v164)
  {
    CFRelease(v164);
  }

LABEL_189:
  if (v51)
  {
    goto LABEL_194;
  }

  if (v12)
  {
    goto LABEL_191;
  }

LABEL_192:
  if (v11)
  {
    free(v11);
  }

LABEL_194:
  if (v8)
  {
    free(v8);
  }

  if (v13)
  {
    free(v13);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (v168)
  {
    CFRelease(v168);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  return v14;
}

void sub_1E5357008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v46 - 112));
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef((v46 - 104));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v46 - 96));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *a1;
  *a1 = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

uint64_t BBUUpdateSource::findRemoteData(BBUFeedback **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, const std::string::value_type *a6, const void **a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  memset(__p, 170, 24);
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v16 = off_1ED944170;
  if (!off_1ED944170)
  {
    v17 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v17);
    v18 = a8;
    __p[3] = v17;
    v19 = operator new(0x20uLL);
    *v19 = &unk_1F5F05A00;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = v17;
    v20 = off_1ED944178;
    off_1ED944170 = v17;
    off_1ED944178 = v19;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    v16 = off_1ED944170;
    a8 = v18;
  }

  v21 = off_1ED944178;
  v62 = v16;
  v63 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v16, &v64);
  v22 = a6[23];
  if (v22 >= 0)
  {
    v23 = a6;
  }

  else
  {
    v23 = *a6;
  }

  if (v22 >= 0)
  {
    v24 = *(a6 + 23);
  }

  else
  {
    v24 = *(a6 + 1);
  }

  v25 = std::string::append(&v64, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  __p[2] = v25->__r_.__value_.__r.__words[2];
  *__p = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v27 = (*(*a1 + 29))(a1, a2, __p, a5);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v28 = (**a1)(a1);
    if (a6[23] >= 0)
    {
      LOBYTE(v32) = a6;
    }

    else
    {
      v32 = *a6;
    }

    v33 = "not found";
    if (!v27)
    {
      v33 = "located";
    }

    v34 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v34 = __p[0];
    }

    v55 = v33;
    v57 = v34;
    _BBULog(3, 0, v28, "", "%s:  %s at %s", v29, v30, v31, v32);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

LABEL_30:
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v35 = (**a1)(a1);
    _BBULog(3, 0, v35, "", "\n", v36, v37, v38, v54);
  }

LABEL_33:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v39 = gBBULogMaskGet(void)::once;
    if (v27)
    {
LABEL_35:
      if (v39 == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_42;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v40 = (**a1)(a1);
        if (*(a5 + 23) >= 0)
        {
          LOBYTE(v44) = a5;
        }

        else
        {
          v44 = *a5;
        }

        _BBULog(3, 0, v40, "", "%s:  searching in FDR\n", v41, v42, v43, v44);
      }

LABEL_42:
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v61, *a4, *(a4 + 8));
        v45 = *a7;
        cf = v45;
        if (!v45)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v61 = *a4;
        v45 = *a7;
        cf = v45;
        if (!v45)
        {
LABEL_55:
          LOBYTE(v54) = a10;
          v46 = (*(*a1 + 30))(a1, a2, a3, &v61, a5, &cf, a8, a9, v54, v55, v57);
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
            if (v46)
            {
              goto LABEL_59;
            }
          }

          else if (v46)
          {
LABEL_59:
            if (*(a5 + 23) >= 0)
            {
              v52 = a5;
            }

            else
            {
              v52 = *a5;
            }

            BBUFeedback::handleComment(a1[1], "%s:  not found in FDR\n", v52);
            return v46;
          }

          if (gBBULogMaskGet(void)::once != -1)
          {
            goto LABEL_66;
          }

LABEL_47:
          v46 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            return v46;
          }

          goto LABEL_48;
        }
      }

      CFRetain(v45);
      goto LABEL_55;
    }
  }

  else
  {
    v39 = gBBULogMaskGet(void)::once;
    if (v27)
    {
      goto LABEL_35;
    }
  }

  if (v39 == -1)
  {
    goto LABEL_47;
  }

LABEL_66:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v46 = 0;
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    return v46;
  }

LABEL_48:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v47 = (**a1)(a1);
    if (a6[23] >= 0)
    {
      LOBYTE(v51) = a6;
    }

    else
    {
      v51 = *a6;
    }

    v56 = *a2;
    _BBULog(3, 0, v47, "", "Loaded %s (%p)\n", v48, v49, v50, v51);
    return 0;
  }

  return v46;
}

void sub_1E53578A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v34 - 88));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::createImageFromFDR(BBUFeedback **a1, uint64_t a2, uint64_t a3, const char *a4, char *a5, const void **a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v96 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *a3, *(a3 + 8));
  }

  else
  {
    v94 = *a3;
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v94;
  }

  v97 = 0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v98;
  }

  v84 = a2;
  v100 = 0;
  v16 = *MEMORY[0x1E695E480];
  if (ctu::cf::convert_copy())
  {
    v17 = v100;
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
    v95 = v17;
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v94.__r_.__value_.__l.__data_);
      if ((a4[23] & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v95 = v17;
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(v98.__r_.__value_.__l.__data_);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((a4[23] & 0x80000000) == 0)
  {
LABEL_17:
    v92 = *a4;
    goto LABEL_22;
  }

LABEL_21:
  std::string::__init_copy_ctor_external(&v92, *a4, *(a4 + 1));
LABEL_22:
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v92;
  }

  v97 = 0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v98;
  }

  v100 = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = v100;
  }

  else
  {
    v18 = 0;
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
    v93 = v18;
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_118;
    }
  }

  else
  {
    v93 = v18;
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  operator delete(v98.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    v98.__r_.__value_.__r.__words[0] = 0;
    v19 = a1[1];
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      goto LABEL_35;
    }

LABEL_119:
    v70 = v19;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    v19 = v70;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_118:
  operator delete(v92.__r_.__value_.__l.__data_);
  v98.__r_.__value_.__r.__words[0] = 0;
  v19 = a1[1];
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
  {
    goto LABEL_119;
  }

LABEL_35:
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
  {
    goto LABEL_36;
  }

LABEL_120:
  v71 = v19;
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  v19 = v71;
LABEL_36:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    v20 = 1;
  }

  else
  {
    v20 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  }

  BBUFeedback::handleComment(v19, "In restoreOS?: Bool = %d", v20);
  BBUFeedback::handleComment(a1[1], "Is performManCheckFlow?: Bool = %d", a9);
  BBUFeedback::handleComment(a1[1], "IsBBFused? Bool = %d", a8);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v22 = (**a1)(a1);
    LOBYTE(v26) = a4;
    if (a4[23] < 0)
    {
      v26 = *a4;
    }

    _BBULog(3, 0, v22, "", "Identifier: %s\n", v23, v24, v25, v26);
  }

LABEL_45:
  v27 = a7;
  v28 = a1[1];
  ctu::cf::show(&v99, v18, v21);
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v99;
  }

  else
  {
    v29 = v99.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(v28, "ClassIdentifier with show(): %s\n", v29);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (!capabilities::updater::shouldStripFDRDataOnAP(v30))
  {
    v88 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v87 = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v67 = *a6;
    v86 = v67;
    if (v67)
    {
      CFRetain(v67);
    }

    v68 = BBUFDRUtilities::copy(&v88, &v87, &v96, &v86, v31, v32, v33, v34);
    if (v86)
    {
      CFRelease(v86);
    }

    if (v87)
    {
      CFRelease(v87);
    }

    if (v88)
    {
      CFRelease(v88);
    }

    if (v68)
    {
      if (a5[23] < 0)
      {
        v69 = *a5;
      }

      BBUFeedback::handleComment(a1[1], "first pass - could not find data in FDR for %s");
    }

    goto LABEL_130;
  }

  BBUFeedback::handleComment(a1[1], "Using the new FDR flow");
  v91 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  v90 = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  v35 = *a6;
  cf = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_59;
    }

LABEL_178:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    goto LABEL_59;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_178;
  }

LABEL_59:
  v36 = BBUFDRUtilities::validateAndCopy(&v91, &v90, &v96, &cf, &v98, (BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  v37 = a1[1];
  if (v36)
  {
    if (a5[23] >= 0)
    {
      v38 = a5;
    }

    else
    {
      v38 = *a5;
    }

    BBUFeedback::handleComment(v37, "Analyze the FDR failure for %s", v38);
    v39 = a1[1];
    ctu::cf::show(&v99, v98.__r_.__value_.__l.__data_, v40);
    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v99;
    }

    else
    {
      v41 = v99.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(v39, "FDR failure we hit is: %s \n", v41);
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
      v42 = a1[1];
      v43 = a4;
      if ((a4[23] & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v42 = a1[1];
      v43 = a4;
      if ((a4[23] & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    v43 = *a4;
LABEL_74:
    BBUFeedback::handleComment(v42, "Identifier: %s\n", v43);
    LOBYTE(v100) = 0;
    LOBYTE(v97) = 0;
    v44 = (*(*a1 + 32))(a1, v27, &v100, &v97);
    BBUFeedback::handleComment(a1[1], "Return code for the root manifest CAL/FATP_CAL entitlements check is: %d", v44);
    v45 = a1[1];
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v81 = a1[1];
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      v45 = v81;
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_76;
      }
    }

    v82 = v45;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    v45 = v82;
LABEL_76:
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      v46 = 1;
    }

    else
    {
      v46 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
    }

    BBUFeedback::handleComment(v45, "In restoreOS?: Bool = %d", v46);
    BBUFeedback::handleComment(a1[1], "Calibration enabled flag: %d", v100);
    BBUFeedback::handleComment(a1[1], "FATPCalibration enabled flag: %d", v97);
    v47 = a1[1];
    v48 = a4;
    if (a4[23] < 0)
    {
      v48 = *a4;
    }

    v49 = strncmp(v48, "bbcl", 5uLL);
    BBUFeedback::handleComment(v47, "bbcl string check: %d", v49 == 0);
    v50 = a1[1];
    v51 = a4;
    if (a4[23] < 0)
    {
      v51 = *a4;
    }

    v52 = strncmp(v51, "bbpc", 5uLL);
    BBUFeedback::handleComment(v50, "bbpc string check: %d", v52 == 0);
    v53 = a1[1];
    ctu::cf::show(&v99, v18, v54);
    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v99;
    }

    else
    {
      v55 = v99.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(v53, "ClassIdentifier in error: %s\n", v55);
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    v57 = a1[1];
    ctu::cf::show(&v99, v18, v56);
    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v99;
    }

    else
    {
      v58 = v99.__r_.__value_.__r.__words[0];
    }

    v59 = strncmp(v58, "bbcl", 5uLL);
    BBUFeedback::handleComment(v57, "ClassIdentifier bbcl string check: %d", v59 == 0);
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    v61 = a1[1];
    ctu::cf::show(&v99, v18, v60);
    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v99;
    }

    else
    {
      v62 = v99.__r_.__value_.__r.__words[0];
    }

    v63 = strncmp(v62, "bbpc", 5uLL);
    BBUFeedback::handleComment(v61, "ClassIdentifier bbpc string check: %d", v63 == 0);
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
      if (a8)
      {
LABEL_98:
        if (BBUFDRUtilities::isErrorImageNotFound(v98.__r_.__value_.__l.__data_, v64))
        {
          v66 = "Image NOT found in FDR, so ignore all errors coming from the AMFDR and depend on BB to fail if necassary";
LABEL_128:
          v73 = a1[1];
LABEL_129:
          BBUFeedback::handleComment(v73, v66);
          goto LABEL_130;
        }

        if (a9)
        {
          if (v98.__r_.__value_.__r.__words[0])
          {
            BBUFeedback::handleComment(a1[1], "Fatal error 1 in FDR data validation/decode");
            goto LABEL_172;
          }
        }

        else
        {
          if (v100 == 1)
          {
            v80 = a4;
            if (a4[23] < 0)
            {
              v80 = *a4;
            }

            if (!strncmp(v80, "bbcl", 5uLL))
            {
              goto LABEL_170;
            }
          }

          if (v97 == 1)
          {
            if (a4[23] < 0)
            {
              a4 = *a4;
            }

            if (!strncmp(a4, "bbpc", 5uLL))
            {
LABEL_170:
              v66 = "CALIB enabled for CAL file, so ignore all errors coming from the AMFDR";
              goto LABEL_128;
            }
          }
        }

        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
        {
          if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
          {
            goto LABEL_161;
          }
        }

        else
        {
          dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
          if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
          {
LABEL_161:
            if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
            {
              goto LABEL_164;
            }

LABEL_162:
            if ((a9 & 1) == 0 && !BBUFDRUtilities::isTrustErrorAcceptable(v98.__r_.__value_.__l.__data_, v65))
            {
              BBUFeedback::handleComment(a1[1], "Fatal error 2 in FDR data validation/decode");
              goto LABEL_172;
            }

LABEL_164:
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
            {
              if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
              {
                goto LABEL_166;
              }
            }

            else
            {
              dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
              if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
              {
LABEL_166:
                v73 = a1[1];
                v66 = "libFDR errors (if any) coming from the API can be ignored";
                if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
                {
                  goto LABEL_129;
                }

                goto LABEL_167;
              }
            }

            dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
            v73 = a1[1];
            v66 = "libFDR errors (if any) coming from the API can be ignored";
            if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
            {
              goto LABEL_129;
            }

LABEL_167:
            if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) != 0 || !v98.__r_.__value_.__r.__words[0])
            {
              goto LABEL_129;
            }

            BBUFeedback::handleComment(v73, "Fatal error 3 in FDR data validation/decode");
LABEL_172:
            v74 = 119;
            goto LABEL_139;
          }
        }

        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
        if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_162;
      }
    }

    else if (a8)
    {
      goto LABEL_98;
    }

    v66 = "BB is NOT fused, so ignore all errors coming from the AMFDR";
    goto LABEL_128;
  }

  if (a4[23] < 0)
  {
    v72 = *a4;
  }

  BBUFeedback::handleComment(v37, "FDR data pull and validation is successful for %s");
LABEL_130:
  v85 = v96;
  if (v96)
  {
    CFRetain(v96);
  }

  v74 = (*(*a1 + 31))(a1, v84, a5, &v85);
  if (v85)
  {
    CFRelease(v85);
  }

  if (v74)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_139;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_139;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v75 = (**a1)(a1);
      _BBULog(3, 0, v75, "", "failed creating image from fdr data\n", v76, v77, v78, v83);
    }
  }

LABEL_139:
  if (v98.__r_.__value_.__r.__words[0])
  {
    CFRelease(v98.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  return v74;
}

void sub_1E53585FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, const void *a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, const void *a52, const void *a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a45);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a52);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a53);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::createImageFromFile(uint64_t (***a1)(void), BBUICENVMImage **a2, const char *a3, char *a4)
{
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v8;
  *__dst.st_qspare = v8;
  __dst.st_birthtimespec = v8;
  *&__dst.st_size = v8;
  __dst.st_mtimespec = v8;
  __dst.st_ctimespec = v8;
  *&__dst.st_uid = v8;
  __dst.st_atimespec = v8;
  *&__dst.st_dev = v8;
  if (a3[23] >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  v10 = stat(v9, &__dst);
  if (!v10)
  {
    v17 = capabilities::radio::vendor(v10);
    if (v17 == 2)
    {
      v23 = operator new(0x30uLL);
      *v23 = &unk_1F5F00F28;
      *(v23 + 8) = 0u;
      *(v23 + 24) = 0u;
      v24 = BBUFileDataSource::init(v23, a3, 0);
      if (!v24)
      {
LABEL_30:
        v26 = capabilities::radio::vendor(v24);
        if (v26 == 2)
        {
          memset(&__dst, 0, 24);
          v32 = a4[23];
          if (v32 >= 0)
          {
            v33 = a4[23];
          }

          else
          {
            v33 = *(a4 + 1);
          }

          if (v32 < 0)
          {
            a4 = *a4;
          }

          if (v33 >= 3)
          {
            v34 = 3;
          }

          else
          {
            v34 = v33;
          }

          v35 = memcmp(a4, "CAL", v34);
          if (v33 != 3 || v35)
          {
            if (v33 >= 4)
            {
              v40 = 4;
            }

            else
            {
              v40 = v33;
            }

            v41 = memcmp(a4, "PROV", v40);
            if (v33 != 4 || v41)
            {
              v45 = memcmp(a4, "PAC", v34);
              if (v33 != 3 || v45)
              {
                exception = __cxa_allocate_exception(0x210uLL);
                _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x33Au, "Assertion failure(false && Unrecognized BBUEUR Remote Data fileName.)", v63, v64, v65, v66);
              }

              capabilities::updater::PACFileName(&v67, v45);
            }

            else
            {
              capabilities::updater::PROVFileName(&v67, v41);
            }
          }

          else
          {
            capabilities::updater::CALFileName(&v67, v35);
          }

          *&__dst.st_dev = v67;
          *&__dst.st_uid = v68;
          v46 = operator new(0x38uLL);
          v47 = v46;
          st_gid_high = SHIBYTE(__dst.st_gid);
          v49 = *&__dst.st_dev;
          if ((__dst.st_gid & 0x80000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = *&__dst.st_dev;
          }

          BBUICENVMImage::BBUICENVMImage(v46, v23, p_dst, 0);
          *a2 = v47;
          if ((st_gid_high & 0x80000000) == 0)
          {
LABEL_78:
            if (*a2)
            {
              return 0;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
                goto LABEL_82;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
LABEL_82:
                if ((gBBULogVerbosity & 0x80000000) == 0)
                {
                  v51 = (**a1)(a1);
                  _BBULog(3, 0, v51, "", "failed creating BBUImage from data source\n", v52, v53, v54, v66);
                }
              }
            }

            (*(*v23 + 8))(v23);
            return 19;
          }

          v44 = v49;
LABEL_77:
          operator delete(v44);
          goto LABEL_78;
        }

        if (v26 == 1)
        {
          v27 = operator new(0x58uLL);
          if (a4[23] >= 0)
          {
            v28 = a4;
          }

          else
          {
            v28 = *a4;
          }

          v29 = strlen(v28);
          if (v29 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v30 = v29;
          if (v29 >= 0x17)
          {
            if ((v29 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v29 | 7) + 1;
            }

            v31 = operator new(v42);
            *(&v69 + 1) = v30;
            v70 = v42 | 0x8000000000000000;
            *&v69 = v31;
          }

          else
          {
            HIBYTE(v70) = v29;
            v31 = &v69;
            if (!v29)
            {
              goto LABEL_66;
            }
          }

          memmove(v31, v28, v30);
LABEL_66:
          *(v31 + v30) = 0;
          BBUEURMIImage::BBUEURMIImage(v27, v23, 0);
          *v27 = &unk_1F5F01A48;
          *(v27 + 8) = 0;
          *(v27 + 9) = 0;
          *(v27 + 10) = 0;
          if ((SHIBYTE(v70) & 0x80000000) == 0)
          {
            result = 0;
            *(v27 + 4) = v69;
            *(v27 + 10) = v70;
            *a2 = v27;
            return result;
          }

          v43 = v69;
          std::string::__assign_no_alias<true>(v27 + 8, v69, *(&v69 + 1));
          *a2 = v27;
          v44 = v43;
          goto LABEL_77;
        }

        v55 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v55, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x343u, "Assertion failure(false && Unrecognized radio vendor.)", v59, v60, v61, v66);
LABEL_96:
      }

      (*(*v23 + 8))(v23);
LABEL_51:
      if (gBBULogMaskGet(void)::once == -1)
      {
        result = 19;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = 19;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          return result;
        }
      }

      if (gBBULogVerbosity < 0)
      {
        return result;
      }

      v36 = (**a1)(a1);
      _BBULog(3, 0, v36, "", "could not create data source from file\n", v37, v38, v39, v66);
      return 19;
    }

    if (v17 != 1)
    {
      v55 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v55, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x311u, "Assertion failure(false && Unrecognized radio vendor.)", v56, v57, v58, v66);
      goto LABEL_96;
    }

    ImageIDFromImageName = BBUEUR20UpdateSource::getImageIDFromImageName(a4);
    if (a3[23] >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    v20 = strlen(v19);
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v20 | 7) + 1;
      }

      v22 = operator new(v25);
      __dst.st_ino = v21;
      *&__dst.st_uid = v25 | 0x8000000000000000;
      *&__dst.st_dev = v22;
    }

    else
    {
      HIBYTE(__dst.st_gid) = v20;
      v22 = &__dst;
      if (!v20)
      {
LABEL_28:
        v22[v21] = 0;
        v24 = BBUDataSource::createFromEurekaMIFile(&__dst, 0, ImageIDFromImageName);
        v23 = v24;
        if (SHIBYTE(__dst.st_gid) < 0)
        {
          operator delete(*&__dst.st_dev);
          if (v23)
          {
            goto LABEL_30;
          }
        }

        else if (v24)
        {
          goto LABEL_30;
        }

        goto LABEL_51;
      }
    }

    memmove(v22, v19, v21);
    goto LABEL_28;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 15;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 15;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**a1)(a1);
    if (a3[23] >= 0)
    {
      LOBYTE(v16) = a3;
    }

    else
    {
      v16 = *a3;
    }

    _BBULog(3, 0, v12, "", "could not locate %s\n", v13, v14, v15, v16);
    return 15;
  }

  return result;
}

void sub_1E5358F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v26 + 87) < 0)
  {
    operator delete(*v25);
  }

  *v26 = &unk_1F5F04F58;
  v28 = v26[1];
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  operator delete(__p);
  operator delete(v26);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::createImageFromData(capabilities::radio *a1, BBUICENVMImage **a2, const void **a3, BBUDataSource **a4)
{
  v8 = capabilities::radio::vendor(a1);
  if (v8 != 1)
  {
    if (v8 != 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x370u, "Assertion failure(false && Unrecognized radio vendor.)", v46, v47, v48, v56);
      goto LABEL_71;
    }

    v9 = *a4;
    v10 = operator new(0x18uLL);
    v11 = v10;
    *(v10 + 4) = 0;
    *v10 = &unk_1F5F04B00;
    *(v10 + 1) = v9;
    if (v9)
    {
      v10 = CFRetain(v9);
    }

LABEL_6:
    v13 = capabilities::radio::vendor(v10);
    if (v13 == 2)
    {
      v59 = 0uLL;
      v60 = 0;
      v19 = *(a3 + 23);
      if (v19 >= 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = a3[1];
      }

      if (v19 >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      if (v20 >= 3)
      {
        v22 = 3;
      }

      else
      {
        v22 = v20;
      }

      v23 = memcmp(v21, "CAL", v22);
      if (v20 == 3 && v23 == 0)
      {
        capabilities::updater::CALFileName(&v57, v23);
      }

      else
      {
        if (v20 >= 4)
        {
          v25 = 4;
        }

        else
        {
          v25 = v20;
        }

        v26 = memcmp(v21, "PROV", v25);
        if (v20 != 4 || v26)
        {
          v35 = memcmp(v21, "PAC", v22);
          if (v20 != 3 || v35)
          {
            v52 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v52, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x398u, "Assertion failure(false && Unrecognized BBUICE Remote Data fileName.)", v53, v54, v55, v56);
          }

          capabilities::updater::PACFileName(&v57, v35);
        }

        else
        {
          capabilities::updater::PROVFileName(&v57, v26);
        }
      }

      v59 = v57;
      v60 = v58;
      v36 = operator new(0x38uLL);
      v37 = v36;
      v38 = SHIBYTE(v60);
      v39 = v59;
      if (v60 >= 0)
      {
        v40 = &v59;
      }

      else
      {
        v40 = v59;
      }

      BBUICENVMImage::BBUICENVMImage(v36, v11, v40, 0);
      *a2 = v37;
      if ((v38 & 0x80000000) == 0)
      {
        if (!*a2)
        {
          goto LABEL_58;
        }

        return 0;
      }

      v34 = v39;
LABEL_57:
      operator delete(v34);
      if (!*a2)
      {
LABEL_58:
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
LABEL_60:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              v41 = (**a1)(a1);
              _BBULog(3, 0, v41, "", "failed creating BBUImage from data source\n", v42, v43, v44, v56);
            }
          }
        }

        (*(*v11 + 8))(v11);
        return 19;
      }

      return 0;
    }

    if (v13 == 1)
    {
      v14 = operator new(0x58uLL);
      if (*(a3 + 23) >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      v16 = strlen(v15);
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v17 = v16;
      if (v16 >= 0x17)
      {
        if ((v16 | 7) == 0x17)
        {
          v27 = 25;
        }

        else
        {
          v27 = (v16 | 7) + 1;
        }

        p_dst = operator new(v27);
        *(&__dst + 1) = v17;
        v62 = v27 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v62) = v16;
        p_dst = &__dst;
        if (!v16)
        {
          goto LABEL_40;
        }
      }

      memmove(p_dst, v15, v17);
LABEL_40:
      *(p_dst + v17) = 0;
      BBUEURMIImage::BBUEURMIImage(v14, v11, 0);
      *v14 = &unk_1F5F01A48;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 10) = 0;
      if ((SHIBYTE(v62) & 0x80000000) == 0)
      {
        result = 0;
        *(v14 + 4) = __dst;
        *(v14 + 10) = v62;
        *a2 = v14;
        return result;
      }

      v33 = __dst;
      std::string::__assign_no_alias<true>(v14 + 8, __dst, *(&__dst + 1));
      *a2 = v14;
      v34 = v33;
      goto LABEL_57;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x3A1u, "Assertion failure(false && Unrecognized radio vendor.)", v49, v50, v51, v56);
LABEL_71:
  }

  ImageIDFromImageName = BBUEUR20UpdateSource::getImageIDFromImageName(a3);
  v10 = BBUDataSource::createFromEurekaMIData(*a4, 0, ImageIDFromImageName);
  v11 = v10;
  if (v10)
  {
    goto LABEL_6;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }

    goto LABEL_44;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  result = 19;
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_44:
    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v29 = (**a1)(a1);
    _BBULog(3, 0, v29, "", "failed creating data source from FDR data\n", v30, v31, v32, v56);
    return 19;
  }

  return result;
}

void sub_1E53595A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 87) < 0)
  {
    operator delete(*v25);
  }

  *v24 = &unk_1F5F04F58;
  v27 = v24[1];
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  operator delete(__p);
  operator delete(v24);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::getCalibrationEntitlements(BBUFeedback **this, BBUDataSource *a2, BOOL *a3, BOOL *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return 118;
  }

  v8 = (*(*a2 + 24))(a2);
  v9 = malloc(v8);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v10 = (gBBULogVerbosity >= 0) & (*gBBULogMaskGet(void)::sBBULogMask >> 3);
  if (!v9)
  {
    if (v10)
    {
      v32 = (**this)(this);
      _BBULog(3, 0, v32, "", "BBTicket malloc for DER decode failed \n", v33, v34, v35, v55);
    }

    v26 = 0;
    v24 = 0;
    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v36;
    v64 = v36;
    v61 = v36;
    v62 = v36;
    v59 = v36;
    v60 = v36;
    v25 = 113;
    goto LABEL_30;
  }

  if (v10 && (v11 = (**this)(this), _BBULog(3, 0, v11, "", "Get root manifest content from file into memory\n", v12, v13, v14, v55), gBBULogMaskGet(void)::once != -1))
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    goto LABEL_10;
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v15 = (**this)(this);
    _BBULog(3, 0, v15, "", "Root manifest size: %d \n", v16, v17, v18, v8);
  }

LABEL_10:
  LODWORD(v57) = -1431655766;
  (*(*a2 + 16))(a2, v9, v8, &v57, 0);
  if (v57 != v8)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_27:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v37 = (**this)(this);
          _BBULog(3, 0, v37, "", "BBTicket read content failed\n", v38, v39, v40, v55);
        }
      }
    }

    v26 = 0;
    v24 = 0;
    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v36;
    v64 = v36;
    v61 = v36;
    v62 = v36;
    v59 = v36;
    v60 = v36;
    v25 = 114;
LABEL_30:
    v57 = v36;
    v58 = v36;
    goto LABEL_31;
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63 = v19;
  v64 = v19;
  v61 = v19;
  v62 = v19;
  v59 = v19;
  v60 = v19;
  v57 = v19;
  v58 = v19;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v20 = (**this)(this);
    _BBULog(3, 0, v20, "", "Now DERDecode the root manifest to get the calibration enabled flag\n", v21, v22, v23, v55);
  }

LABEL_15:
  if (DERDecodeBBTicket(v9, v8, &v57))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v24 = 0;
    v25 = 115;
    v26 = 1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v27 = (**this)(this);
      v31 = "RootManifest decode error during FDR data parsing\n";
LABEL_71:
      _BBULog(3, 0, v27, "", v31, v28, v29, v30, v55);
      v24 = 0;
    }
  }

  else
  {
    memset(v67, 170, 32);
    v65 = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    v26 = DERDecodeSeqInit(&v60, &v67[1], &v67[2]);
    if (v26)
    {
LABEL_67:
      *a3 = 0;
      if (gBBULogMaskGet(void)::once == -1)
      {
        v24 = 0;
        v25 = 116;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v24 = 0;
        v25 = 116;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v27 = (**this)(this);
        v31 = "RootManifest decode error during CalibEnable FDR data parsing\n";
        goto LABEL_71;
      }
    }

    else
    {
      v52 = 0;
      while (1)
      {
        v53 = DERDecodeSeqNext(&v67[2], &v65);
        if (v53)
        {
          break;
        }

        if (v65 == 0x80000000000000D4)
        {
          if (v67[0] != 4)
          {
            goto LABEL_66;
          }

          v52 = 0;
          if (*v66)
          {
            if (*v66 != 1)
            {
LABEL_66:
              v26 = 3;
              goto LABEL_67;
            }

            v52 = 1;
          }
        }
      }

      v26 = v53;
      if (v53 != 1)
      {
        goto LABEL_67;
      }

      v26 = 0;
      v25 = 0;
      *a3 = v52 & 1;
      v24 = 1;
    }
  }

LABEL_31:
  if (*a3)
  {
    v41 = "TRUE";
  }

  else
  {
    v41 = "FALSE";
  }

  BBUFeedback::handleComment(this[1], "Calibration enabled flag: %s", v41);
  if (!v24)
  {
    goto LABEL_51;
  }

  memset(v67, 170, 32);
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqInit(&v60, &v67[1], &v67[2]))
  {
    goto LABEL_46;
  }

  v42 = 0;
  while (1)
  {
    v43 = DERDecodeSeqNext(&v67[2], &v65);
    if (v43)
    {
      break;
    }

    if (v65 == 0x80000000000001C2)
    {
      if (v67[0] != 4)
      {
        goto LABEL_46;
      }

      v42 = 0;
      if (*v66)
      {
        if (*v66 != 1)
        {
          goto LABEL_46;
        }

        v42 = 1;
      }
    }
  }

  if (v43 != 1)
  {
LABEL_46:
    *a4 = 0;
    v44 = &unk_1ED949000;
LABEL_47:
    if (gBBULogMaskGet(void)::once == -1)
    {
      v45 = v44[397];
      v25 = 117;
      if ((*v45 & 8) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v54 = v44[397];
      v25 = 117;
      if ((*v54 & 8) == 0)
      {
        goto LABEL_51;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v46 = (**this)(this);
      _BBULog(3, 0, v46, "", "RootManifest decode error during FATPCalibEnable FDR data parsing\n", v47, v48, v49, v56);
    }

    goto LABEL_51;
  }

  *a4 = v42 & 1;
  v44 = &unk_1ED949000;
  if (v26)
  {
    goto LABEL_47;
  }

  v25 = 0;
LABEL_51:
  if (*a4)
  {
    v50 = "TRUE";
  }

  else
  {
    v50 = "FALSE";
  }

  BBUFeedback::handleComment(this[1], "FATPCalibration enabled flag: %s", v50);
  free(v9);
  return v25;
}

uint64_t __cxx_global_var_init_40()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t unzOpen2(uint64_t a1, _OWORD *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[19] = v3;
  __src[20] = v3;
  __src[17] = v3;
  __src[18] = v3;
  __src[15] = v3;
  __src[16] = v3;
  __src[13] = v3;
  __src[14] = v3;
  __src[11] = v3;
  __src[12] = v3;
  __src[9] = v3;
  __src[10] = v3;
  __src[7] = v3;
  __src[8] = v3;
  __src[5] = v3;
  __src[6] = v3;
  __src[3] = v3;
  __src[4] = v3;
  __src[1] = v3;
  __src[2] = v3;
  __src[0] = v3;
  if (a2)
  {
    v4 = a2[1];
    __src[0] = *a2;
    __src[1] = v4;
    v5 = a2[3];
    __src[2] = a2[2];
    __src[3] = v5;
    result = (*&__src[0])(*(&v5 + 1), a1, 5);
  }

  else
  {
    fill_fopen_filefunc(__src);
    result = (*&__src[0])(*(&__src[3] + 1), a1, 5);
  }

  *&__src[4] = result;
  if (result)
  {
    v7 = result;
    if ((*&__src[2])(*(&__src[3] + 1), result, 0, 2) || ((v10 = (*(&__src[1] + 1))(*(&__src[3] + 1), v7), v11 = v10, v10 >= 0xFFFF) ? (v12 = 0xFFFFLL) : (v12 = v10), (v13 = malloc(0x404uLL)) == 0))
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v14 = v13;
      if (v11 >= 5)
      {
        v15 = 4;
        do
        {
          v16 = v15 + 1024;
          if (v15 + 1024 >= v12)
          {
            v15 = v12;
          }

          else
          {
            v15 += 1024;
          }

          v17 = v15 >= 0x404 ? 1028 : v15;
          if ((*&__src[2])(*(&__src[3] + 1), v7, v11 - v15, 0) || (*(&__src[0] + 1))(*(&__src[3] + 1), v7, v14, v17) != v17)
          {
            break;
          }

          v18 = (v17 - 4);
          v19 = v15 - v11 - v18;
          v20 = v17 - 3;
          v21 = &v14[v18 + 1];
          while (*(v21 - 1) != 80 || *v21 != 75 || v21[1] != 5 || v21[2] != 6)
          {
            ++v19;
            --v21;
            v22 = __OFSUB__(v20--, 1);
            if ((v20 < 0) ^ v22 | (v20 == 0))
            {
              goto LABEL_13;
            }
          }

          if (v19)
          {
            v8 = -v19;
            v9 = 1;
            goto LABEL_31;
          }

LABEL_13:
          ;
        }

        while (v16 < v12);
      }

      v8 = 0;
      v9 = 0;
LABEL_31:
      free(v14);
    }

    v23 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v8, 0);
    v24 = *&__src[4];
    v71[0] = -86;
    if (((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1 || !(*&__src[3])(*(&__src[3] + 1), v24)) && ((v71[0] = -86, (*(&__src[0] + 1))(*(&__src[3] + 1), v24, v71, 1) == 1) || !(*&__src[3])(*(&__src[3] + 1), v24)) && ((v71[0] = -86, (*(&__src[0] + 1))(*(&__src[3] + 1), v24, v71, 1) == 1) || !(*&__src[3])(*(&__src[3] + 1), v24)) && ((v71[0] = -86, (*(&__src[0] + 1))(*(&__src[3] + 1), v24, v71, 1) == 1) || !(*&__src[3])(*(&__src[3] + 1), v24)))
    {
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = v9;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = -1431655766;
    v27 = 0xFFFFFFAAAAAAAA00;
    v28 = *&__src[4];
    v71[0] = -86;
    if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
    {
      v29 = v71[0];
      v30 = v71[0] << 8;
    }

    else
    {
      v29 = -1431655766;
      v30 = 0xFFFFFFAAAAAAAA00;
      if ((*&__src[3])(*(&__src[3] + 1), v28))
      {
        goto LABEL_50;
      }
    }

    v71[0] = -86;
    if ((*(&__src[0] + 1))(*(&__src[3] + 1), v28, v71, 1) == 1)
    {
      v30 = v71[0] << 8;
LABEL_51:
      v69 = v30 + v29 != 0;
LABEL_52:
      v31 = *&__src[4];
      v71[0] = -86;
      if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
      {
        v32 = v71[0];
        v33 = v71[0] << 8;
      }

      else
      {
        v32 = -1431655766;
        v33 = 0xFFFFFFAAAAAAAA00;
        if ((*&__src[3])(*(&__src[3] + 1), v31))
        {
          goto LABEL_58;
        }
      }

      v71[0] = -86;
      if ((*(&__src[0] + 1))(*(&__src[3] + 1), v31, v71, 1) == 1)
      {
        v33 = v71[0] << 8;
LABEL_59:
        v34 = v33 + v32 != 0;
LABEL_60:
        v35 = *&__src[4];
        v71[0] = -86;
        if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
        {
          v36 = v71[0];
          v37 = v71[0] << 8;
        }

        else
        {
          v36 = -1431655766;
          v37 = 0xFFFFFFAAAAAAAA00;
          if ((*&__src[3])(*(&__src[3] + 1), v35))
          {
            goto LABEL_66;
          }
        }

        v71[0] = -86;
        if ((*(&__src[0] + 1))(*(&__src[3] + 1), v35, v71, 1) == 1)
        {
          v37 = v71[0] << 8;
LABEL_67:
          v38 = v37 + v36;
LABEL_68:
          *(&__src[4] + 1) = v38;
          v39 = *&__src[4];
          v71[0] = -86;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
          {
            v40 = v71[0];
            v41 = v71[0] << 8;
          }

          else
          {
            v40 = -1431655766;
            v41 = 0xFFFFFFAAAAAAAA00;
            if ((*&__src[3])(*(&__src[3] + 1), v39))
            {
              goto LABEL_74;
            }
          }

          v71[0] = -86;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), v39, v71, 1) == 1)
          {
            v41 = v71[0] << 8;
LABEL_75:
            v42 = v41 + v40;
LABEL_76:
            v43 = -1431655766;
            v44 = *&__src[4];
            v45 = v42 != *(&__src[4] + 1);
            v71[0] = -86;
            if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
            {
              v46 = v71[0];
            }

            else
            {
              v46 = -1431655766;
              if ((*&__src[3])(*(&__src[3] + 1), v44))
              {
                goto LABEL_85;
              }
            }

            v71[0] = -86;
            if ((*(&__src[0] + 1))(*(&__src[3] + 1), v44, v71, 1) == 1)
            {
              v47 = v71[0];
            }

            else
            {
              v47 = v46;
              if ((*&__src[3])(*(&__src[3] + 1), v44))
              {
                goto LABEL_85;
              }
            }

            v71[0] = -86;
            if ((*(&__src[0] + 1))(*(&__src[3] + 1), v44, v71, 1) == 1)
            {
              v48 = v71[0];
              goto LABEL_86;
            }

            v49 = (*&__src[3])(*(&__src[3] + 1), v44);
            v48 = v47;
            if (!v49)
            {
LABEL_86:
              v51 = v8;
              v52 = v48;
              v53 = (v47 << 8) + v46 + (v48 << 16);
              v71[0] = -86;
              if ((*(&__src[0] + 1))(*(&__src[3] + 1), v44, v71, 1) == 1)
              {
                *&__src[8] = v53 + (v71[0] << 24);
                v8 = v51;
              }

              else
              {
                v54 = (*&__src[3])(*(&__src[3] + 1), v44);
                v55 = v53 + (v52 << 24);
                if (v54)
                {
                  v55 = 0;
                }

                *&__src[8] = v55;
                v8 = v51;
                if (v54)
                {
                  v50 = 0;
LABEL_93:
                  v26 = -1431655766;
LABEL_94:
                  v56 = *&__src[4];
                  v71[0] = -86;
                  if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
                  {
                    v43 = v71[0];
                  }

                  else if ((*&__src[3])(*(&__src[3] + 1), v56))
                  {
                    goto LABEL_103;
                  }

                  v71[0] = -86;
                  if ((*(&__src[0] + 1))(*(&__src[3] + 1), v56, v71, 1) == 1)
                  {
                    v57 = v71[0];
                  }

                  else
                  {
                    v57 = v43;
                    if ((*&__src[3])(*(&__src[3] + 1), v56))
                    {
                      goto LABEL_103;
                    }
                  }

                  v71[0] = -86;
                  if ((*(&__src[0] + 1))(*(&__src[3] + 1), v56, v71, 1) == 1)
                  {
                    v58 = v71[0];
LABEL_104:
                    v60 = v8;
                    v61 = v58;
                    v62 = (v57 << 8) + v43 + (v58 << 16);
                    v71[0] = -86;
                    if ((*(&__src[0] + 1))(*(&__src[3] + 1), v56, v71, 1) == 1)
                    {
                      *(&__src[8] + 1) = v62 + (v71[0] << 24);
                      v8 = v60;
                    }

                    else
                    {
                      v63 = (*&__src[3])(*(&__src[3] + 1), v56);
                      v64 = v62 + (v61 << 24);
                      if (v63)
                      {
                        v64 = 0;
                      }

                      *(&__src[8] + 1) = v64;
                      v8 = v60;
                      if (v63)
                      {
                        v50 = 0;
                      }
                    }

                    v26 = -1431655766;
LABEL_111:
                    v65 = *&__src[4];
                    v71[0] = -86;
                    if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
                    {
                      v26 = v71[0];
                      v27 = v71[0] << 8;
                    }

                    else if ((*&__src[3])(*(&__src[3] + 1), v65))
                    {
                      goto LABEL_117;
                    }

                    v71[0] = -86;
                    if ((*(&__src[0] + 1))(*(&__src[3] + 1), v65, v71, 1) == 1)
                    {
                      v27 = v71[0] << 8;
                      goto LABEL_118;
                    }

                    if (!(*&__src[3])(*(&__src[3] + 1), v65))
                    {
LABEL_118:
                      *&__src[5] = v27 + v26;
                      if (((v8 >= *&__src[8] + *(&__src[8] + 1)) & v50) != 0)
                      {
                        *(&__src[5] + 1) = v8 - (*&__src[8] + *(&__src[8] + 1));
                        *(&__src[7] + 1) = v8;
                        *&__src[18] = 0;
                        DWORD2(__src[18]) = 0;
                        v66 = malloc(0x150uLL);
                        memcpy(v66, __src, 0x150uLL);
                        v67 = v66[8].i64[1];
                        v66[6].i64[0] = 0;
                        v66[6].i64[1] = v67;
                        CurrentFileInfoInternal = unzlocal_GetCurrentFileInfoInternal(v66, v66 + 9, &v66[17].i64[1], 0, 0, 0, 0, 0, 0);
                        result = v66;
                        v66[7].i64[0] = CurrentFileInfoInternal == 0;
                        return result;
                      }

                      goto LABEL_120;
                    }

LABEL_117:
                    *&__src[5] = 0;
LABEL_120:
                    (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
                    return 0;
                  }

                  v59 = (*&__src[3])(*(&__src[3] + 1), v56);
                  v58 = v57;
                  if (!v59)
                  {
                    goto LABEL_104;
                  }

LABEL_103:
                  v50 = 0;
                  *(&__src[8] + 1) = 0;
                  goto LABEL_111;
                }
              }

              v50 = (!v45 && !v34 && !v69) & v25;
              goto LABEL_93;
            }

LABEL_85:
            v50 = 0;
            *&__src[8] = 0;
            goto LABEL_94;
          }

          if (!(*&__src[3])(*(&__src[3] + 1), v39))
          {
            goto LABEL_75;
          }

LABEL_74:
          v42 = 0;
          v25 = 0;
          goto LABEL_76;
        }

        if (!(*&__src[3])(*(&__src[3] + 1), v35))
        {
          goto LABEL_67;
        }

LABEL_66:
        v38 = 0;
        v25 = 0;
        goto LABEL_68;
      }

      if (!(*&__src[3])(*(&__src[3] + 1), v31))
      {
        goto LABEL_59;
      }

LABEL_58:
      v34 = 0;
      v25 = 0;
      goto LABEL_60;
    }

    if (!(*&__src[3])(*(&__src[3] + 1), v28))
    {
      goto LABEL_51;
    }

LABEL_50:
    v69 = 0;
    v25 = 0;
    goto LABEL_52;
  }

  return result;
}

uint64_t unzlocal_GetCurrentFileInfoInternal(uint64_t a1, int8x16_t *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  v127 = -1431655766;
  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0))
  {
    goto LABEL_3;
  }

  v130[0] = -86;
  v17 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v18 = v130[0];
  }

  else
  {
    v18 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v17))
    {
      goto LABEL_3;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v36 = v130[0];
  }

  else
  {
    v36 = v18;
    if ((*(a1 + 48))(*(a1 + 56), v17))
    {
      goto LABEL_3;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v37 = v130[0];
  }

  else
  {
    v37 = v36;
    if ((*(a1 + 48))(*(a1 + 56), v17))
    {
      goto LABEL_3;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v38 = v130[0];
    goto LABEL_77;
  }

  v47 = (*(a1 + 48))(*(a1 + 56), v17);
  v38 = v37;
  if (v47)
  {
LABEL_3:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

LABEL_77:
  if ((v36 << 8) + v18 + (v37 << 16) + (v38 << 24) == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = 4294967193;
  }

LABEL_4:
  v12 = -1431655766;
  v13 = 0xFFFFFFAAAAAAAA00;
  v130[0] = -86;
  v14 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v14, v130, 1) == 1)
  {
    v15 = v130[0];
    v16 = v130[0] << 8;
  }

  else
  {
    v15 = -1431655766;
    v16 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v14))
    {
      goto LABEL_13;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v14, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v14))
    {
      goto LABEL_14;
    }

LABEL_13:
    v125 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v16 = v130[0] << 8;
LABEL_14:
  v125 = v16 + v15;
LABEL_15:
  v130[0] = -86;
  v19 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v19, v130, 1) == 1)
  {
    v20 = v130[0];
    v21 = v130[0] << 8;
  }

  else
  {
    v20 = -1431655766;
    v21 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v19))
    {
      goto LABEL_21;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v19, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v19))
    {
      goto LABEL_22;
    }

LABEL_21:
    v124 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v21 = v130[0] << 8;
LABEL_22:
  v124 = v21 + v20;
LABEL_23:
  v130[0] = -86;
  v22 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v22, v130, 1) == 1)
  {
    v23 = v130[0];
    v24 = v130[0] << 8;
  }

  else
  {
    v23 = -1431655766;
    v24 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v22))
    {
      goto LABEL_29;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v22, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v22))
    {
      goto LABEL_30;
    }

LABEL_29:
    v123 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_31;
  }

  v24 = v130[0] << 8;
LABEL_30:
  v123 = v24 + v23;
LABEL_31:
  v130[0] = -86;
  v25 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v25, v130, 1) == 1)
  {
    v26 = v130[0];
    v27 = v130[0] << 8;
  }

  else
  {
    v26 = -1431655766;
    v27 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v25))
    {
      goto LABEL_37;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v25, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v25))
    {
      goto LABEL_38;
    }

LABEL_37:
    v122 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v27 = v130[0] << 8;
LABEL_38:
  v122 = v27 + v26;
LABEL_39:
  v130[0] = -86;
  v28 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) == 1)
  {
    v29 = v130[0];
  }

  else
  {
    v29 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v28))
    {
      goto LABEL_54;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) == 1)
  {
    v30 = v130[0];
  }

  else
  {
    v30 = v29;
    if ((*(a1 + 48))(*(a1 + 56), v28))
    {
      goto LABEL_54;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) == 1)
  {
    v31 = v130[0];
  }

  else
  {
    v32 = (*(a1 + 48))(*(a1 + 56), v28);
    v31 = v30;
    if (v32)
    {
      goto LABEL_54;
    }
  }

  v33 = v31;
  v34 = (v30 << 8) + v29 + (v31 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v28))
    {
      v35 = v34 + (v33 << 24);
      goto LABEL_62;
    }

LABEL_54:
    v121 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_63;
  }

  v35 = v34 + (v130[0] << 24);
LABEL_62:
  v121 = v35;
LABEL_63:
  v130[0] = -86;
  v39 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) == 1)
  {
    v40 = v130[0];
  }

  else
  {
    v40 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v39))
    {
      goto LABEL_75;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) == 1)
  {
    v41 = v130[0];
  }

  else
  {
    v41 = v40;
    if ((*(a1 + 48))(*(a1 + 56), v39))
    {
      goto LABEL_75;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) == 1)
  {
    v42 = v130[0];
  }

  else
  {
    v43 = (*(a1 + 48))(*(a1 + 56), v39);
    v42 = v41;
    if (v43)
    {
      goto LABEL_75;
    }
  }

  v44 = v42;
  v45 = (v41 << 8) + v40 + (v42 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v39))
    {
      v46 = v45 + (v44 << 24);
      goto LABEL_81;
    }

LABEL_75:
    v120 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_82;
  }

  v46 = v45 + (v130[0] << 24);
LABEL_81:
  v120 = v46;
LABEL_82:
  v130[0] = -86;
  v48 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) == 1)
  {
    v49 = v130[0];
  }

  else
  {
    v49 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v48))
    {
      goto LABEL_94;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) == 1)
  {
    v50 = v130[0];
  }

  else
  {
    v50 = v49;
    if ((*(a1 + 48))(*(a1 + 56), v48))
    {
      goto LABEL_94;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) == 1)
  {
    v51 = v130[0];
  }

  else
  {
    v52 = (*(a1 + 48))(*(a1 + 56), v48);
    v51 = v50;
    if (v52)
    {
      goto LABEL_94;
    }
  }

  v53 = v51;
  v54 = (v50 << 8) + v49 + (v51 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v48))
    {
      v55 = v54 + (v53 << 24);
      goto LABEL_96;
    }

LABEL_94:
    v119 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_97;
  }

  v55 = v54 + (v130[0] << 24);
LABEL_96:
  v119 = v55;
LABEL_97:
  v130[0] = -86;
  v56 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) == 1)
  {
    v57 = v130[0];
  }

  else
  {
    v57 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v56))
    {
      goto LABEL_109;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) == 1)
  {
    v58 = v130[0];
  }

  else
  {
    v58 = v57;
    if ((*(a1 + 48))(*(a1 + 56), v56))
    {
      goto LABEL_109;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) == 1)
  {
    v59 = v130[0];
  }

  else
  {
    v60 = (*(a1 + 48))(*(a1 + 56), v56);
    v59 = v58;
    if (v60)
    {
      goto LABEL_109;
    }
  }

  v61 = v59;
  v62 = (v58 << 8) + v57 + (v59 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v56))
    {
      v63 = v62 + (v61 << 24);
      goto LABEL_111;
    }

LABEL_109:
    v118 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_112;
  }

  v63 = v62 + (v130[0] << 24);
LABEL_111:
  v118 = v63;
LABEL_112:
  v130[0] = -86;
  v64 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v64, v130, 1) == 1)
  {
    v65 = v130[0];
    v66 = v130[0] << 8;
  }

  else
  {
    v65 = -1431655766;
    v66 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v64))
    {
      goto LABEL_118;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v64, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v64))
    {
      goto LABEL_119;
    }

LABEL_118:
    v129 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_120;
  }

  v66 = v130[0] << 8;
LABEL_119:
  v129 = v66 + v65;
LABEL_120:
  v130[0] = -86;
  v67 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v67, v130, 1) == 1)
  {
    v68 = v130[0];
    v69 = v130[0] << 8;
  }

  else
  {
    v68 = -1431655766;
    v69 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v67))
    {
      goto LABEL_126;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v67, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v67))
    {
      goto LABEL_127;
    }

LABEL_126:
    v70 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_128;
  }

  v69 = v130[0] << 8;
LABEL_127:
  v70 = v69 + v68;
LABEL_128:
  v130[0] = -86;
  v71 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v71, v130, 1) == 1)
  {
    v72 = v130[0];
    v73 = v130[0] << 8;
  }

  else
  {
    v72 = -1431655766;
    v73 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v71))
    {
      goto LABEL_134;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v71, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v71))
    {
      goto LABEL_135;
    }

LABEL_134:
    v74 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_136;
  }

  v73 = v130[0] << 8;
LABEL_135:
  v74 = v73 + v72;
LABEL_136:
  v130[0] = -86;
  v75 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v75, v130, 1) == 1)
  {
    v76 = v130[0];
    v77 = v130[0] << 8;
  }

  else
  {
    v76 = -1431655766;
    v77 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v75))
    {
      goto LABEL_142;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v75, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v75))
    {
      goto LABEL_143;
    }

LABEL_142:
    v117 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_144;
  }

  v77 = v130[0] << 8;
LABEL_143:
  v117 = v77 + v76;
LABEL_144:
  v130[0] = -86;
  v78 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v78, v130, 1) == 1)
  {
    v12 = v130[0];
    v13 = v130[0] << 8;
  }

  else if ((*(a1 + 48))(*(a1 + 56), v78))
  {
    goto LABEL_150;
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v78, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v78))
    {
      goto LABEL_151;
    }

LABEL_150:
    v116 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_152;
  }

  v13 = v130[0] << 8;
LABEL_151:
  v116 = v13 + v12;
LABEL_152:
  v130[0] = -86;
  v79 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v80 = v130[0];
  }

  else
  {
    v80 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v79))
    {
      goto LABEL_164;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v81 = v130[0];
  }

  else
  {
    v81 = v80;
    if ((*(a1 + 48))(*(a1 + 56), v79))
    {
      goto LABEL_164;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v82 = v130[0];
    goto LABEL_161;
  }

  v83 = (*(a1 + 48))(*(a1 + 56), v79);
  v82 = v81;
  if (v83)
  {
LABEL_164:
    v86 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_165;
  }

LABEL_161:
  v84 = v82;
  v85 = (v81 << 8) + v80 + (v82 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v86 = v85 + (v130[0] << 24);
    goto LABEL_165;
  }

  if ((*(a1 + 48))(*(a1 + 56), v79))
  {
    goto LABEL_164;
  }

  v86 = v85 + (v84 << 24);
LABEL_165:
  v130[0] = -86;
  v87 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v127 = v130[0];
  }

  else if ((*(a1 + 48))(*(a1 + 56), v87))
  {
    goto LABEL_200;
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v89 = v130[0];
  }

  else
  {
    v89 = v127;
    if ((*(a1 + 48))(*(a1 + 56), v87))
    {
      goto LABEL_200;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v90 = v130[0];
  }

  else
  {
    v91 = (*(a1 + 48))(*(a1 + 56), v87);
    v90 = v89;
    if (v91)
    {
      goto LABEL_200;
    }
  }

  v92 = v90;
  v93 = (v89 << 8) + v127 + (v90 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v94 = v93 + (v130[0] << 24);
    v95 = a8;
    v96 = a6;
    v98 = a5;
    v97 = a4;
    if (a4)
    {
      goto LABEL_176;
    }

LABEL_225:
    v99 = v129;
    if (v96)
    {
      goto LABEL_186;
    }

LABEL_201:
    v106 = v99 + v70;
    v105 = a3;
    if (!v95)
    {
      goto LABEL_216;
    }

LABEL_202:
    if (v11)
    {
      goto LABEL_216;
    }

    v107 = a9;
    if (v74 < a9)
    {
      *(v95 + v74) = 0;
      v107 = v74;
    }

    if (v106)
    {
      v108 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v106, 1);
      v95 = a8;
      if (v108)
      {
        v11 = 0xFFFFFFFFLL;
      }

      else
      {
        v11 = 0;
      }

      if (!a9)
      {
        goto LABEL_216;
      }
    }

    else
    {
      v11 = 0;
      if (!a9)
      {
        goto LABEL_216;
      }
    }

    if (v74)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v95, v107) == v107)
      {
        v11 = v11;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }
    }

    goto LABEL_216;
  }

  if ((*(a1 + 48))(*(a1 + 56), v87))
  {
LABEL_200:
    v94 = 0;
    v11 = 0xFFFFFFFFLL;
    v95 = a8;
    v99 = v129;
    goto LABEL_201;
  }

  v94 = v93 + (v92 << 24);
  v95 = a8;
  v96 = a6;
  v98 = a5;
  v97 = a4;
  if (!a4)
  {
    goto LABEL_225;
  }

LABEL_176:
  v99 = v129;
  if (!v11)
  {
    v100 = v98;
    if (v129 < v98)
    {
      v100 = v129;
      *(v97 + v129) = 0;
    }

    v11 = 0;
    if (v98 && v129)
    {
      v101 = (*(a1 + 8))(*(a1 + 56), *(a1 + 64));
      v95 = a8;
      if (v101 == v100)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }
    }

    v99 = v129 - v100;
  }

  if (!v96)
  {
    goto LABEL_201;
  }

LABEL_186:
  if (v11)
  {
    goto LABEL_201;
  }

  if (v70 >= a7)
  {
    v102 = a7;
  }

  else
  {
    v102 = v70;
  }

  if (v99)
  {
    v103 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v99, 1);
    v95 = a8;
    if (v103)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = 0;
    }

    if (v103)
    {
      v104 = v99;
    }

    else
    {
      v104 = 0;
    }

    v105 = a3;
    if (!a7)
    {
      goto LABEL_232;
    }
  }

  else
  {
    v11 = 0;
    v104 = 0;
    v105 = a3;
    if (!a7)
    {
      goto LABEL_232;
    }
  }

  if (v70)
  {
    v111 = (*(a1 + 8))(*(a1 + 56), *(a1 + 64), a6, v102);
    v95 = a8;
    if (v111 == v102)
    {
      v11 = v11;
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }
  }

LABEL_232:
  v106 = v70 - v102 + v104;
  if (v95)
  {
    goto LABEL_202;
  }

LABEL_216:
  if (a2 && !v11)
  {
    v88.i32[0] = v121;
    v109 = vshlq_u32(vdupq_n_s32(v121), xmmword_1E5394960);
    v109.i32[0] = vshlq_u32(v88, xmmword_1E5394950).u32[0];
    a2->i64[0] = v125;
    a2->i64[1] = v124;
    a2[1].i64[0] = v123;
    a2[1].i64[1] = v122;
    a2[2].i64[0] = v121;
    a2[2].i64[1] = v120;
    a2[3].i64[0] = v119;
    a2[3].i64[1] = v118;
    a2[4].i64[0] = v129;
    a2[4].i64[1] = v70;
    a2[5].i64[0] = v74;
    a2[5].i64[1] = v117;
    a2[6].i64[0] = v116;
    a2[6].i64[1] = v86;
    a2[7] = vandq_s8(v109, xmmword_1E5394970);
    a2[8].i32[0] = ((v121 >> 21) & 0xF) - 1;
    a2[8].i32[1] = (v121 >> 25) + 1980;
  }

  if (v105 && !v11)
  {
    *v105 = v94;
  }

  return v11;
}

uint64_t unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  v90 = *MEMORY[0x1E69E9840];
  v89 = -1431655766;
  v88 = 0xAAAAAAAAAAAAAAAALL;
  if (!a1 || !*(a1 + 112))
  {
    result = 4294967194;
    goto LABEL_12;
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    if (*v8)
    {
      free(*v8);
    }

    *v8 = 0;
    if (*(v8 + 128))
    {
      inflateEnd((v8 + 8));
    }

    free(v8);
    *(a1 + 288) = 0;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    goto LABEL_10;
  }

  v84 = -1431655766;
  v87 = -86;
  v11 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v11, &v87, 1) == 1)
  {
    v12 = v87;
  }

  else
  {
    v12 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v11))
    {
      goto LABEL_25;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v11, &v87, 1) == 1)
  {
    v13 = v87;
  }

  else
  {
    v13 = v12;
    if ((*(a1 + 48))(*(a1 + 56), v11))
    {
      goto LABEL_25;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v11, &v87, 1) == 1)
  {
    v14 = v87;
  }

  else
  {
    v14 = v13;
    if ((*(a1 + 48))(*(a1 + 56), v11))
    {
      goto LABEL_25;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v11, &v87, 1) == 1)
  {
    v15 = v87;
    goto LABEL_26;
  }

  v16 = (*(a1 + 48))(*(a1 + 56), v11);
  v15 = v14;
  if (!v16)
  {
LABEL_26:
    if ((v13 << 8) + v12 + (v14 << 16) + (v15 << 24) == 67324752)
    {
      v17 = 0;
    }

    else
    {
      v17 = -103;
    }

    goto LABEL_29;
  }

LABEL_25:
  v17 = -1;
LABEL_29:
  v87 = -86;
  v18 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v18, &v87, 1) != 1 && (*(a1 + 48))(*(a1 + 56), v18) || (v87 = -86, (*(a1 + 8))(*(a1 + 56), v18, &v87, 1) != 1) && (*(a1 + 48))(*(a1 + 56), v18))
  {
    v17 = -1;
  }

  v19 = -1431655766;
  v20 = 0xFFFFFFAAAAAAAA00;
  v87 = -86;
  v21 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v21, &v87, 1) == 1)
  {
    v22 = v87;
    v23 = v87 << 8;
  }

  else
  {
    v22 = -1431655766;
    v23 = -1431655936;
    if ((*(a1 + 48))(*(a1 + 56), v21))
    {
      goto LABEL_40;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v21, &v87, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v21))
    {
      goto LABEL_41;
    }

LABEL_40:
    LOBYTE(v83) = 0;
    v17 = -1;
    goto LABEL_42;
  }

  v23 = 0;
LABEL_41:
  v83 = ((v23 + v22) >> 3) & 1;
LABEL_42:
  v87 = -86;
  v24 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v24, &v87, 1) == 1)
  {
    v25 = v87;
    v26 = v87 << 8;
  }

  else
  {
    v25 = -1431655766;
    v26 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v24))
    {
      goto LABEL_48;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v24, &v87, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v24))
    {
      goto LABEL_49;
    }

LABEL_48:
    v17 = -1;
    goto LABEL_54;
  }

  v26 = v87 << 8;
LABEL_49:
  if (!v17)
  {
    v17 = -103;
    if (v26 + v25 == *(a1 + 168))
    {
      if (((v26 + v25) & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        v17 = -103;
      }

      else
      {
        v17 = 0;
      }
    }
  }

LABEL_54:
  v87 = -86;
  v27 = *(a1 + 64);
  if (((*(a1 + 8))(*(a1 + 56), v27, &v87, 1) == 1 || !(*(a1 + 48))(*(a1 + 56), v27)) && ((v87 = -86, (*(a1 + 8))(*(a1 + 56), v27, &v87, 1) == 1) || !(*(a1 + 48))(*(a1 + 56), v27)) && ((v87 = -86, (*(a1 + 8))(*(a1 + 56), v27, &v87, 1) == 1) || !(*(a1 + 48))(*(a1 + 56), v27)))
  {
    v87 = -86;
    if ((*(a1 + 8))(*(a1 + 56), v27, &v87, 1) != 1 && (*(a1 + 48))(*(a1 + 56), v27))
    {
      v17 = -1;
    }

    v28 = v17 == 0;
  }

  else
  {
    v28 = 0;
  }

  v87 = -86;
  v29 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v29, &v87, 1) == 1)
  {
    v30 = v87;
  }

  else
  {
    v30 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v29))
    {
      goto LABEL_77;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v29, &v87, 1) == 1)
  {
    v31 = v87;
  }

  else
  {
    v31 = v30;
    if ((*(a1 + 48))(*(a1 + 56), v29))
    {
      goto LABEL_77;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v29, &v87, 1) == 1)
  {
    v32 = v87;
  }

  else
  {
    v33 = (*(a1 + 48))(*(a1 + 56), v29);
    v32 = v31;
    if (v33)
    {
      goto LABEL_77;
    }
  }

  v34 = v32;
  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v29, &v87, 1) == 1)
  {
    v35 = v87;
    goto LABEL_137;
  }

  if ((*(a1 + 48))(*(a1 + 56), v29))
  {
LABEL_77:
    LOBYTE(v28) = 0;
    goto LABEL_78;
  }

  v35 = v34;
LABEL_137:
  if (v28)
  {
    LOBYTE(v28) = ((v31 << 8) + v30 + (v34 << 16) + (v35 << 24) == *(a1 + 184)) | v83;
  }

LABEL_78:
  v87 = -86;
  v36 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v36, &v87, 1) == 1)
  {
    v37 = v87;
  }

  else
  {
    v37 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v36))
    {
      goto LABEL_93;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v36, &v87, 1) == 1)
  {
    v38 = v87;
  }

  else
  {
    v38 = v37;
    if ((*(a1 + 48))(*(a1 + 56), v36))
    {
      goto LABEL_93;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v36, &v87, 1) == 1)
  {
    v39 = v87;
  }

  else
  {
    v40 = (*(a1 + 48))(*(a1 + 56), v36);
    v39 = v38;
    if (v40)
    {
      goto LABEL_93;
    }
  }

  v41 = v39;
  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v36, &v87, 1) == 1)
  {
    v42 = v87;
    if (v28)
    {
LABEL_92:
      v43 = ((v38 << 8) + v37 + (v41 << 16) + (v42 << 24) == *(a1 + 192)) | v83;
      goto LABEL_94;
    }
  }

  else if (!(*(a1 + 48))(*(a1 + 56), v36))
  {
    v42 = v41;
    if (v28)
    {
      goto LABEL_92;
    }
  }

LABEL_93:
  v43 = 0;
LABEL_94:
  v87 = -86;
  v44 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v44, &v87, 1) == 1)
  {
    v45 = v87;
  }

  else
  {
    v45 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v44))
    {
      goto LABEL_109;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v44, &v87, 1) == 1)
  {
    v46 = v87;
  }

  else
  {
    v46 = v45;
    if ((*(a1 + 48))(*(a1 + 56), v44))
    {
      goto LABEL_109;
    }
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v44, &v87, 1) == 1)
  {
    v47 = v87;
  }

  else
  {
    v48 = (*(a1 + 48))(*(a1 + 56), v44);
    v47 = v46;
    if (v48)
    {
      goto LABEL_109;
    }
  }

  v49 = v47;
  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v44, &v87, 1) == 1)
  {
    v50 = v87;
    if (v43)
    {
LABEL_108:
      v51 = ((v46 << 8) + v45 + (v49 << 16) + (v50 << 24) == *(a1 + 200)) | v83;
      goto LABEL_110;
    }
  }

  else if (!(*(a1 + 48))(*(a1 + 56), v44))
  {
    v50 = v49;
    if (v43)
    {
      goto LABEL_108;
    }
  }

LABEL_109:
  v51 = 0;
LABEL_110:
  v87 = -86;
  v52 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v52, &v87, 1) == 1)
  {
    v19 = v87;
    v20 = v87 << 8;
  }

  else if ((*(a1 + 48))(*(a1 + 56), v52))
  {
    goto LABEL_116;
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v52, &v87, 1) == 1)
  {
    v20 = v87 << 8;
    goto LABEL_117;
  }

  if ((*(a1 + 48))(*(a1 + 56), v52))
  {
LABEL_116:
    v53 = 0;
    goto LABEL_119;
  }

LABEL_117:
  v53 = v20 + v19;
  if (v51)
  {
    v54 = v53 == *(a1 + 208);
    goto LABEL_120;
  }

LABEL_119:
  v54 = 0;
LABEL_120:
  v87 = -86;
  v55 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v55, &v87, 1) == 1)
  {
    v84 = v87;
    v56 = v87 << 8;
  }

  else
  {
    if ((*(a1 + 48))(*(a1 + 56), v55))
    {
      goto LABEL_10;
    }

    v56 = -1431655936;
  }

  v87 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v55, &v87, 1) == 1)
  {
    v56 = v87 << 8;
    goto LABEL_127;
  }

  if ((*(a1 + 48))(*(a1 + 56), v55))
  {
LABEL_10:
    result = 4294967193;
    goto LABEL_12;
  }

LABEL_127:
  if (!v54)
  {
    goto LABEL_10;
  }

  v57 = *(a1 + 280);
  v58 = malloc(0x120uLL);
  if (!v58)
  {
    goto LABEL_155;
  }

  v59 = v58;
  v60 = malloc(0x4000uLL);
  *v59 = v60;
  *(v59 + 17) = v53 + v57 + 30;
  *(v59 + 36) = v56 + v84;
  *(v59 + 19) = 0;
  *(v59 + 70) = a4;
  if (!v60)
  {
    free(v59);
    result = 4294967192;
    goto LABEL_12;
  }

  *(v59 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  v61 = a5;
  if (!a3)
  {
    goto LABEL_144;
  }

  *a3 = 6;
  v62 = *(a1 + 160) & 6;
  if (v62 > 3)
  {
    if (v62 == 6)
    {
      v63 = 1;
    }

    else
    {
      v63 = 2;
    }

    goto LABEL_143;
  }

  if (v62)
  {
    v63 = 9;
LABEL_143:
    *a3 = v63;
  }

LABEL_144:
  v64 = *(a1 + 184);
  *(v59 + 20) = 0;
  *(v59 + 21) = v64;
  v65 = *(a1 + 168);
  *(v59 + 32) = *(a1 + 64);
  *(v59 + 33) = v65;
  v66 = *(a1 + 16);
  *(v59 + 12) = *a1;
  *(v59 + 13) = v66;
  v67 = *(a1 + 48);
  *(v59 + 14) = *(a1 + 32);
  *(v59 + 15) = v67;
  *(v59 + 34) = *(a1 + 88);
  *(v59 + 6) = 0;
  if (!a4 && v65 == 8)
  {
    *(v59 + 1) = 0;
    *(v59 + 4) = 0;
    *(v59 + 10) = 0;
    *(v59 + 11) = 0;
    *(v59 + 9) = 0;
    v68 = inflateInit2_((v59 + 8), -15, "1.2.12", 112);
    if (v68)
    {
      v69 = v68;
      free(v59);
      result = v69;
      goto LABEL_12;
    }

    *(v59 + 16) = 1;
    v57 = *(a1 + 280);
    v61 = a5;
  }

  *(v59 + 11) = *(a1 + 192);
  *(v59 + 15) = v57 + (v56 + v84 + v53) + 30;
  *(v59 + 4) = 0;
  *(a1 + 288) = v59;
  if (!v61)
  {
    result = 0;
    goto LABEL_12;
  }

  v70 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_1E5394980;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v72 = *a5;
  if (*a5)
  {
    v73 = a5 + 1;
    v74 = 305419896;
    v75 = 591751049;
    do
    {
      v74 = crc_table[v72 ^ v74] ^ (v74 >> 8);
      v75 = 134775813 * (v75 + v74) + 1;
      *(a1 + 304) = v74;
      *(a1 + 312) = v75;
      v70 = crc_table[(v70 ^ BYTE3(v75))] ^ (v70 >> 8);
      *(a1 + 320) = v70;
      v76 = *v73++;
      v72 = v76;
    }

    while (v76);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), &v88, 12) < 0xC)
  {
LABEL_155:
    result = 4294967192;
    goto LABEL_12;
  }

  v77 = 0;
  v79 = *(a1 + 320);
  v78 = *(a1 + 328);
  v80 = *(a1 + 304);
  v81 = *(a1 + 312);
  do
  {
    v82 = *(&v88 + v77) ^ (((v79 & 0xFFFD ^ 3) * (v79 | 2)) >> 8);
    *(&v88 + v77) = v82;
    v80 = *(v78 + 8 * (v82 ^ v80)) ^ (v80 >> 8);
    v81 = 134775813 * (v81 + v80) + 1;
    *(a1 + 304) = v80;
    *(a1 + 312) = v81;
    v79 = *(v78 + 8 * (v79 ^ BYTE3(v81))) ^ (v79 >> 8);
    *(a1 + 320) = v79;
    ++v77;
  }

  while (v77 != 12);
  result = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  v9 = 0;
  if (a3)
  {
    do
    {
      while (1)
      {
        LODWORD(v14) = *(v4 + 16);
        if (!v14)
        {
          break;
        }

        if (*(v4 + 264))
        {
          goto LABEL_19;
        }

LABEL_20:
        if (v14 || *(v4 + 176))
        {
          v15 = *(v4 + 40);
          v14 = v15 >= v14 ? v14 : v15;
          if (v14)
          {
            for (i = 0; i != v14; ++i)
            {
              *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
            }

            v11 = v14;
          }

          else
          {
            v11 = 0;
          }

          *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v14);
          *(v4 + 184) -= v11;
          *(v4 + 16) -= v14;
          v12 = *(v4 + 40);
          *(v4 + 32) += v11;
          *(v4 + 8) += v11;
          *(v4 + 48) += v11;
          v9 = (v14 + v9);
          v13 = v12 - v14;
          *(v4 + 40) = v13;
          if (v13)
          {
            continue;
          }
        }

        return v9;
      }

      v17 = *(v4 + 176);
      if (v17)
      {
        if (v17 >= 0x4000)
        {
          v14 = 0x4000;
        }

        else
        {
          v14 = *(v4 + 176);
        }

        if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v14) != v14)
        {
          return 0xFFFFFFFFLL;
        }

        if (*(a1 + 296))
        {
          v18 = 0;
          do
          {
            v19 = *(a1 + 328);
            v20 = *(*v4 + v18) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
            *(*v4 + v18) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
            v21 = *(v19 + 8 * (v20 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
            v22 = 134775813 * (*(a1 + 312) + v21) + 1;
            *(a1 + 304) = v21;
            *(a1 + 312) = v22;
            *(a1 + 320) = *(v19 + 8 * (*(a1 + 320) ^ BYTE3(v22))) ^ (*(a1 + 320) >> 8);
            *(*v4 + v18++) = v20;
          }

          while (v14 != v18);
        }

        *(v4 + 120) += v14;
        *(v4 + 176) -= v14;
        *(v4 + 8) = *v4;
        *(v4 + 16) = v14;
        if (!*(v4 + 264))
        {
          goto LABEL_20;
        }
      }

      else
      {
        LODWORD(v14) = 0;
        if (!*(v4 + 264))
        {
          goto LABEL_20;
        }
      }

LABEL_19:
      if (*(v4 + 280))
      {
        goto LABEL_20;
      }

      v23 = *(v4 + 48);
      v24 = *(v4 + 32);
      v25 = inflate((v4 + 8), 2);
      if ((v25 & 0x80000000) == 0 && *(v4 + 56))
      {
        v27 = *(v4 + 48);
        v28 = v27 - v23;
        *(v4 + 160) = crc32(*(v4 + 160), v24, v27 - v23);
        *(v4 + 184) -= v28;
        return 4294967293;
      }

      v26 = *(v4 + 48) - v23;
      *(v4 + 160) = crc32(*(v4 + 160), v24, v26);
      *(v4 + 184) -= v26;
      v9 = (v9 + v26);
      if (v25)
      {
        if (v25 == 1)
        {
          return v9;
        }

        else
        {
          return v25;
        }
      }
    }

    while (*(v4 + 40));
  }

  return v9;
}

uint64_t BBUEUR20Loader::connect(uint64_t a1)
{
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Connecting to Loader");
  (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
  return 0;
}

uint64_t BBUEUR20Loader::getVersion(uint64_t a1, uint64_t a2, void *a3)
{
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Getting Version");
  if (!a3)
  {
    v8 = 2;
    goto LABEL_22;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[7] = v5;
  v24[8] = v5;
  v24[5] = v5;
  v24[6] = v5;
  v24[3] = v5;
  v24[4] = v5;
  v24[1] = v5;
  v24[2] = v5;
  v23 = v5;
  v24[0] = v5;
  *__p = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  v16 = v5;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v16);
  MEMORY[0x1E69270E0](&v17, *(a1 + 64));
  if ((BYTE8(v23) & 0x10) != 0)
  {
    v9 = v23;
    if (v23 < *(&v20 + 1))
    {
      *&v23 = *(&v20 + 1);
      v9 = *(&v20 + 1);
    }

    v10 = v20;
    v6 = v9 - v20;
    if ((v9 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v6 = 0;
      HIBYTE(v15) = 0;
      v7 = __dst;
      goto LABEL_17;
    }

    v10 = *(&v18 + 1);
    v6 = *(&v19 + 1) - *(&v18 + 1);
    if (*(&v19 + 1) - *(&v18 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_24:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v7 = operator new(v11);
    __dst[1] = v6;
    v15 = v11 | 0x8000000000000000;
    __dst[0] = v7;
  }

  else
  {
    HIBYTE(v15) = v6;
    v7 = __dst;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  memmove(v7, v10, v6);
LABEL_17:
  *(v7 + v6) = 0;
  *a3 = BBULoaderVersion::createFromVersionString(__dst);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v16 = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v17 = v12;
  *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v24);
  v8 = 0;
LABEL_22:
  (*(**(a1 + 8) + 24))(*(a1 + 8), v8);
  return v8;
}

void sub_1E535CCBC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69273B0](va);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR20Loader::queryChipInfo(BBUFeedback **a1, uint64_t a2, void *a3)
{
  v6 = operator new(0x60uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v43 = 0;
  v7 = *(a2 + 40);
  if (!v7 || !v7(a2, 4, v6, 96, &v43, 0))
  {
    BBUFeedback::handleComment(a1[1], "Failed to get chip info: Failed to read pk hash");
LABEL_10:
    BBUFeedback::handleComment(a1[1], "failed to read MSMHWID");
    goto LABEL_11;
  }

  v8 = (*(*a1 + 9))(a1);
  v9 = operator new(0x10uLL);
  *v9 = &unk_1F5F04C88;
  v9[1] = 0;
  v9[1] = CFDataCreate(*MEMORY[0x1E695E480], v6, v8);
  (*(*a3 + 24))(a3, v9);
  v10 = (*(*a1 + 10))(a1);
  v11 = (*(*a1 + 9))(a1);
  if (!memcmp(v10, v6, v11))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v29 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v29, "", "Detect as unfused BB\n", v30, v31, v32, v38);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v13 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v13, "", "Detect as fused BB\n", v14, v15, v16, v38);
    }
  }

LABEL_41:
  *(a3 + 22) = v12;
  v33 = *(a2 + 40);
  if (!v33 || !v33(a2, 3, v6, 24, &v43, 0))
  {
    goto LABEL_10;
  }

  v34 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(*(v6 + 1));
  v35 = a3[2];
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  a3[2] = v34;
  v36 = *(a2 + 40);
  if (!v36 || !v36(a2, 0, v6, 4, &v43, 0))
  {
LABEL_11:
    BBUFeedback::handleComment(a1[1], "failed to read MSMHWID");
    v17 = 98;
    v18 = -559030611;
    v19 = a1[1];
    v20 = a3[2];
    v21 = -559030611;
    if (!v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(v6, 0x20);
  (*(*a3 + 16))(a3, v37);
  v17 = 0;
  v18 = -559030611;
  v19 = a1[1];
  v20 = a3[2];
  v21 = -559030611;
  if (v20)
  {
LABEL_12:
    v21 = (*(*v20 + 24))(v20);
  }

LABEL_13:
  v22 = a3[4];
  if (!v22)
  {
    v24 = "failed";
    v25 = a3[5];
    if (v25)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = "failed";
    v27 = a3[3];
    if (!v27)
    {
      goto LABEL_29;
    }

LABEL_28:
    v18 = (*(*v27 + 24))(v27);
    goto LABEL_29;
  }

  v23 = v41;
  (*(*v22 + 24))(v41, a3[4]);
  if (v42 < 0)
  {
    v23 = v41[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_18:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
  {
    v24 = v23;
  }

  else
  {
    v24 = "<< SNUM >>";
  }

  v25 = a3[5];
  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_22:
  v26 = __p;
  (*(*v25 + 24))(__p, v25);
  if (v40 < 0)
  {
    v26 = __p[0];
  }

  v27 = a3[3];
  if (v27)
  {
    goto LABEL_28;
  }

LABEL_29:
  BBUFeedback::handleComment(v19, "CHIPID=0x%x SNUM=0x%s, PKHASH=0x%s CERTID=0x%x\n", v21, v24, v26, v18);
  if (v25 && v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 && v42 < 0)
  {
    operator delete(v41[0]);
  }

  operator delete(v6);
  return v17;
}

void sub_1E535D320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    if (a25 < 0)
    {
      operator delete(__p);
      operator delete(v25);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR20Loader::load(BBUFeedback **a1, uint64_t a2, BBUDataSource *a3, char a4)
{
  BBUFeedback::handleComment(a1[1], "Loading second stage bootloader");
  if (a2 && a3)
  {
    v42 = -1;
    v43 = 0;
    BBUDataSource::createData(a3, &cf);
    v8 = cf;
    v9 = (*(*a3 + 32))(a3);
    v10 = operator new(0x18uLL);
    v10[4] = v9;
    *v10 = &unk_1F5F04B00;
    *(v10 + 1) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v11 = operator new(0x58uLL);
    BBUEURMIImage::BBUEURMIImage(v11, v10, 0);
    *v11 = &unk_1F5F01210;
    *(v11 + 8) = 0;
    v12 = v11 + 32;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    if (a4)
    {
      *(v11 + 66) = 76;
      *v12 = 16979;
      *(v11 + 87) = 3;
      v13 = *(v11 + 8);
      v14 = (v13 + 40);
      if (v13 != -40)
      {
LABEL_9:
        v15 = operator new(v14);
        bzero(v15, v14);
        goto LABEL_16;
      }
    }

    else
    {
      v11[36] = 19522;
      *v12 = *"restoreSBL";
      *(v11 + 87) = 10;
      v21 = *(v11 + 8);
      v14 = (v21 + 40);
      if (v21 != -40)
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
LABEL_16:
    BBUEURMIImage::getWritePayloadData(v11, v15, v14, 0);
    (*(*v11 + 16))(v11);
    v22 = *(a2 + 32);
    if (v22)
    {
      v23 = v22(a2, v15, v14, &v43, 10000, &v42, 0);
      if (gBBULogMaskGet(void)::once == -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v23 = 0;
      if (gBBULogMaskGet(void)::once == -1)
      {
LABEL_18:
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
        {
          goto LABEL_23;
        }

LABEL_19:
        if (gBBULogVerbosity >= 1)
        {
          v24 = (*(*a1 + 8))(a1);
          v28 = "failure";
          if (v23)
          {
            v28 = "success";
          }

          _BBULog(9, 1, v24, "", "SendImage returned %s, amountWritten = %u, errorCode = %#x\n", v25, v26, v27, v28);
        }

LABEL_23:
        if (v23)
        {
          v29 = gBBULogMaskGet(void)::once;
          if (v43 == v14 && !v42)
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              v16 = 0;
              if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              v16 = 0;
              if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
              {
LABEL_28:
                if (gBBULogVerbosity >= 1)
                {
                  v30 = (*(*a1 + 8))(a1);
                  v31 = (*(*v11 + 16))(v11);
                  _BBULog(9, 1, v30, "", "Sent %s successfully!\n", v32, v33, v34, v31);
                  v16 = 0;
                }
              }
            }

LABEL_35:
            if (v15)
            {
              operator delete(v15);
            }

            (*(*v11 + 8))(v11);
            return v16;
          }
        }

        else
        {
          v29 = gBBULogMaskGet(void)::once;
        }

        if (v29 == -1)
        {
          v16 = 3;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v16 = 3;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
          {
            goto LABEL_35;
          }
        }

        if (gBBULogVerbosity >= 1)
        {
          v35 = (*(*a1 + 8))(a1);
          v36 = (*(*v11 + 16))(v11);
          _BBULog(9, 1, v35, "", "Fail to send %s !\n", v37, v38, v39, v36);
        }

        goto LABEL_35;
      }
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v16 = 2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      return v16;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v16 = 2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      return v16;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v17 = (*(*a1 + 8))(a1);
    _BBULog(9, 1, v17, "", "invalid arguments transport:  %p, updateSource: %p\n", v18, v19, v20, a2);
  }

  return v16;
}

void BBUPartitionManager::BBUPartitionManager(BBUPartitionManager *this)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v3 = *(this + 1);
  v4 = (this + 8);
  v5 = (this + 8);
  if (v3)
  {
    while (1)
    {
      while (1)
      {
        v5 = v3;
        v6 = *(v3 + 32);
        if (v6 < 1)
        {
          break;
        }

        v3 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      v3 = v5[1];
      if (!v3)
      {
        v4 = v5 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v7 = operator new(0x40uLL);
    v7[8] = 0;
    *(v7 + 5) = 0;
    v7[14] = *v22;
    *(v7 + 59) = *&v22[3];
    *(v7 + 63) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v5;
    *v4 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
  }

  v9 = *v2;
  v10 = v2;
  v11 = v2;
  if (*v2)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v12 = *(v9 + 32);
        if (v12 <= 1)
        {
          break;
        }

        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 == 1)
      {
        break;
      }

      v9 = v11[1];
      if (!v9)
      {
        v10 = v11 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v13 = operator new(0x40uLL);
    v13[8] = 1;
    *(v13 + 5) = 0;
    v13[14] = *v21;
    *(v13 + 59) = *&v21[3];
    *(v13 + 63) = 0;
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = v11;
    *v10 = v13;
    v14 = **this;
    if (v14)
    {
      *this = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v13);
    ++*(this + 2);
  }

  v15 = *v2;
  v16 = v2;
  if (*v2)
  {
    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 32);
        if (v17 <= 2)
        {
          break;
        }

        v15 = *v16;
        v2 = v16;
        if (!*v16)
        {
          goto LABEL_28;
        }
      }

      if (v17 == 2)
      {
        break;
      }

      v15 = v16[1];
      if (!v15)
      {
        v2 = v16 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v18 = operator new(0x40uLL);
    v18[8] = 2;
    *(v18 + 5) = 0;
    v18[14] = *v20;
    *(v18 + 59) = *&v20[3];
    *(v18 + 63) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v2 = v18;
    v19 = **this;
    if (v19)
    {
      *this = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v18);
    ++*(this + 2);
  }
}

void BBUPartitionManager::getBBUFSPath(BBUPartitionManager *this@<X0>, std::string *a2@<X8>)
{
  {
    BBUPartitionManager::getPartitionRoot(this, 2, &v6);
    v3 = std::string::append(&v6, "/bbfs/", 6uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    unk_1ECFD5860 = *(&v3->__r_.__value_.__l + 2);
    BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  if (byte_1ECFD5867 < 0)
  {
    std::string::__init_copy_ctor_external(a2, BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath, *(&BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath;
    a2->__r_.__value_.__r.__words[2] = unk_1ECFD5860;
  }
}

void sub_1E535DCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void BBUPartitionManager::getPartitionRoot(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v4 = *(v3 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*(v3 + 63) < 0)
  {
    v6 = v3[5];
    v7 = v3[6];

    std::string::__init_copy_ctor_external(a3, v6, v7);
  }

  else
  {
    v5 = *(v3 + 5);
    a3->__r_.__value_.__r.__words[2] = v3[7];
    *&a3->__r_.__value_.__l.__data_ = v5;
  }
}

void BBUPartitionManager::getBBUFDRCacheLocation(BBUPartitionManager *this@<X0>, void *a2@<X8>)
{
  memset(&v17, 0, sizeof(v17));
  ctu::cf::assign();
  v14 = 0uLL;
  LOWORD(v14) = 47;
  *__p = v14;
  v16 = 0x100000000000000;
  v4 = *(this + 1);
  memset(&v17, 170, sizeof(v17));
  if (!v4)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v5 = *(v4 + 8);
      if (v5 < 1)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (*(v4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v4[5], v4[6]);
  }

  else
  {
    v17 = *(v4 + 5);
  }

  v6 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  if (v16 >= 0)
  {
    v8 = HIBYTE(v16);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = v8 + size;
  if (v8 + size > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 <= 0x16)
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    *(a2 + 23) = v9;
    if (!size)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if ((v9 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v9 | 7) + 1;
  }

  v11 = operator new(v10);
  a2[1] = v9;
  a2[2] = v10 | 0x8000000000000000;
  *a2 = v11;
  a2 = v11;
  if (size)
  {
LABEL_25:
    if (v6 >= 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    memmove(a2, v12, size);
  }

LABEL_29:
  v13 = a2 + size;
  if (v8)
  {
    memmove(v13, __p, v8);
  }

  v13[v8] = 0;
  if (v6 < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1E535E0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<BBUPartitionManager *,std::shared_ptr<BBUPartitionManager>::__shared_ptr_default_delete<BBUPartitionManager,BBUPartitionManager>,std::allocator<BBUPartitionManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBUPartitionManager *,std::shared_ptr<BBUPartitionManager>::__shared_ptr_default_delete<BBUPartitionManager,BBUPartitionManager>,std::allocator<BBUPartitionManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*(a1 + 24), v1[1]);

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<BBUPartitionManager *,std::shared_ptr<BBUPartitionManager>::__shared_ptr_default_delete<BBUPartitionManager,BBUPartitionManager>,std::allocator<BBUPartitionManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5394A55)
  {
    if (((v2 & 0x80000001E5394A55 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5394A55))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5394A55 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

char ***std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](char ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v1, v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void BBUICENVMImage::BBUICENVMImage(BBUICENVMImage *this, BBUDataSource *a2, const char *__s, int a4)
{
  *this = &unk_1F5F05A50;
  v8 = this + 16;
  v9 = strlen(__s);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    *(this + 3) = v10;
    *(this + 4) = v12 | 0x8000000000000000;
    *(this + 2) = v11;
    goto LABEL_9;
  }

  *(this + 39) = v9;
  v11 = v8;
  if (v9)
  {
LABEL_9:
    memmove(v11, __s, v10);
  }

  *(v11 + v10) = 0;
  *(this + 10) = a4;
  *(this + 6) = a2;
  *(this + 1) = 1;
  if (a2)
  {
    *(this + 3) = (*(*a2 + 24))(a2);
  }
}

void sub_1E535E350(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void BBUICENVMImage::~BBUICENVMImage(BBUICENVMImage *this)
{
  *this = &unk_1F5F05A50;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  *this = &unk_1F5F05A50;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  operator delete(v3);
}

void *BBUICENVMImage::getWritePayloadData(BBUICENVMImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  result = (*(*this + 32))(this);
  if (result + 8 <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 83, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICENVMImage.cpp", 0x1Eu, "Assertion failure((offset < (getWritePayloadLength() + kBinHeaderSize)) && Chunk size is not sufficient to write payload data of the NVM image!)", v11, v12, v13, v20);
    goto LABEL_14;
  }

  v21 = -1431655766;
  if (a4 <= 7)
  {
    if (8 - a4 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = 8 - a4;
    }

    result = memcpy(a2, this + a4 + 8, v9);
    a2 += v9;
    a3 = (a3 - v9);
  }

  if (a3)
  {
    result = (*(**(this + 6) + 16))(*(this + 6), a2, a3, &v21, a4 + *(this + 10) - 8);
    if (result)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 83, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICENVMImage.cpp", 0x2Eu, "Assertion failure((ret == kBBUReturnSuccess) && Failed to copy NVM image payload data to buffer!)", v14, v15, v16, v20);
    }

    else
    {
      if (v21 == a3)
      {
        return result;
      }

      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 83, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICENVMImage.cpp", 0x2Fu, "Assertion failure((amountCopied == amount) && Copied data size mismatch: Failed to copy NVM image payload data to buffer!)", v17, v18, v19, v20);
    }

LABEL_14:
  }

  return result;
}

uint64_t BBUICENVMImage::getName(BBUICENVMImage *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t BBUICENVMImage::getWritePayloadLength(BBUICENVMImage *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return (*(*v1 + 24))(v1) + 8;
  }

  else
  {
    return 8;
  }
}

void BBUICENVMImage::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

uint64_t BBUICENVMImage::generateBinHeader(BBUICENVMImage *this)
{
  *(this + 1) = 1;
  result = *(this + 6);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(this + 3) = result;
  }

  return result;
}

BBUDataSource *BBUDataSource::createFromEurekaMIFile(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *&__dst[8] = v7;
    *&__dst[16] = v9 | 0x8000000000000000;
    *__dst = v8;
    goto LABEL_12;
  }

  __dst[23] = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_12:
    memmove(v8, v5, v7);
  }

  v8[v7] = 0;
  v10 = operator new(0x30uLL);
  *v10 = &unk_1F5F00F28;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  if (BBUFileDataSource::init(v10, __dst, a2))
  {
    (*(*v10 + 8))(v10);
    v10 = 0;
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if (!v10)
    {
      return v10;
    }
  }

  else if (!v10)
  {
    return v10;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v19 = Mutable;
  v18 = 0;
  memset(&__dst[4], 0, 32);
  *&__dst[20] = (*(*v10 + 24))(v10);
  *&__dst[16] = (*(*v10 + 24))(v10);
  *__dst = a3;
  CFDataAppendBytes(Mutable, __dst, 40);
  theData = 0xAAAAAAAAAAAAAAAALL;
  BBUDataSource::createData(v10, &theData);
  v12 = theData;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v12);
  CFDataAppendBytes(Mutable, BytePtr, Length);
  (*(*v10 + 8))(v10);
  v10 = operator new(0x18uLL);
  *(v10 + 4) = 0;
  *v10 = &unk_1F5F04B00;
  *(v10 + 1) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

void BBUDataSource::createData(BBUDataSource *this@<X0>, CFDataRef *a2@<X8>)
{
  v4 = (*(*this + 24))(this);
  if (v4)
  {
    v5 = v4;
    v6 = operator new(v4);
    v7 = &v6[v5];
    bzero(v6, v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v18 = -1431655766;
  (*(*this + 16))(this, v6, v7 - v6, &v18, 0);
  if (v18 != v7 - v6)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUDataSource.cpp", 0xD9u, "Assertion failure(copied == dataSize)", v10, v11, v12, v17);
  }

  v8 = CFDataCreate(*MEMORY[0x1E695E480], v6, (v7 - v6));
  if (!v8)
  {
    v13 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v13, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUDataSource.cpp", 0xDCu, "Assertion failure(success)", v14, v15, v16, v17);
  }

  *a2 = v8;
  if (v6)
  {
    operator delete(v6);
  }
}

void sub_1E535EBF8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

_DWORD *BBUDataSource::createFromEurekaMIData(BBUDataSource *this, const __CFData *a2, int a3)
{
  v4 = a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v16 = Mutable;
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  if (this)
  {
    Length = CFDataGetLength(this);
  }

  else
  {
    Length = 0;
  }

  HIDWORD(v13) = Length;
  LODWORD(v14) = Length;
  v12 = a3;
  CFDataAppendBytes(Mutable, &v12, 40);
  if (this)
  {
    BytePtr = CFDataGetBytePtr(this);
    v9 = CFDataGetLength(this);
    CFDataAppendBytes(Mutable, BytePtr, v9);
  }

  v10 = operator new(0x18uLL);
  v10[4] = v4;
  *v10 = &unk_1F5F04B00;
  *(v10 + 1) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    CFRelease(Mutable);
  }

  return v10;
}

void sub_1E535ED28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void BBUDataSource::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = (*(*a1 + 24))(a1);
  v7 = operator new[](0x100000uLL);
  if (a3 == 1)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v14.wbuf[12] = v11;
    *&v14.wbuf[14] = v11;
    *&v14.wbuf[8] = v11;
    *&v14.wbuf[10] = v11;
    *&v14.wbuf[4] = v11;
    *&v14.wbuf[6] = v11;
    *v14.wbuf = v11;
    *&v14.wbuf[2] = v11;
    *&v14.hash[4] = v11;
    *&v14.hash[6] = v11;
    *v14.hash = v11;
    *&v14.hash[2] = v11;
    *v14.count = v11;
    CC_SHA384_Init(&v14);
    if (v6)
    {
      v12 = 0;
      do
      {
        v15 = 0;
        if (v6 >= 0x100000)
        {
          v13 = 0x100000;
        }

        else
        {
          v13 = v6;
        }

        (*(*a1 + 16))(a1, v7, v13, &v15, v12);
        CC_SHA384_Update(&v14, v7, v15);
        v12 = v15 + v12;
        v6 -= v15;
      }

      while (v6);
    }

    CC_SHA384_Final(a2, &v14);
  }

  else if (!a3)
  {
    v14.wbuf[2] = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v14.hash[6] = v8;
    *v14.wbuf = v8;
    *&v14.hash[2] = v8;
    *&v14.hash[4] = v8;
    *v14.count = v8;
    *v14.hash = v8;
    CC_SHA256_Init(&v14);
    if (v6)
    {
      v9 = 0;
      do
      {
        v15 = 0;
        if (v6 >= 0x100000)
        {
          v10 = 0x100000;
        }

        else
        {
          v10 = v6;
        }

        (*(*a1 + 16))(a1, v7, v10, &v15, v9);
        CC_SHA256_Update(&v14, v7, v15);
        v9 = v15 + v9;
        v6 -= v15;
      }

      while (v6);
    }

    CC_SHA256_Final(a2, &v14);
  }

  operator delete[](v7);
}

uint64_t BBUDataSource::saveDataToFile(uint64_t a1, const char *a2, int a3)
{
  v98 = *MEMORY[0x1E69E9840];
  memset(&v82, 170, sizeof(v82));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v6 = off_1ED944170;
  if (!off_1ED944170)
  {
    v7 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v7);
    *&__str = v7;
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
  *&__b.f_bsize = v6;
  __b.f_blocks = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v11 = v6[1];
  if (!v11)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v12 = *(v11 + 8);
      if (v12 < 1)
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    v11 = v11[1];
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  if (*(v11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, v11[5], v11[6]);
  }

  else
  {
    v82 = *(v11 + 5);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (a2[23] >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = open(v13, 1537, 420);
  if (v14 < 0)
  {
    v28 = 35;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  v15 = (*(*a1 + 24))(a1);
  v73 = operator new[](v15);
  if (v15)
  {
    v16 = 0;
    v17 = v15;
    v18 = v73;
    do
    {
      __b.f_bsize = -1431655766;
      (*(*a1 + 16))(a1, v18, v17, &__b, v16);
      v16 = (__b.f_bsize + v16);
      v18 += __b.f_bsize;
      v17 = (v17 - __b.f_bsize);
    }

    while (v17);
  }

  v81 = -1431655766;
  v25 = TelephonyUtilWriteToCompletion();
  if (!v25)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_43;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v29 = (*(*a1 + 56))(a1);
      if (a2[23] < 0)
      {
        v33 = *a2;
      }

      _BBULog(15, 0, v29, "", "Wrote %u bytes to %s\n", v30, v31, v32, v81);
    }

LABEL_43:
    if (!a3)
    {
LABEL_46:
      v28 = 0;
      goto LABEL_101;
    }

    memset(&__b, 0, 24);
    v34 = bbufs::chownToWireless(&__b, v14, v19, v20, v21, v22, v23, v24);
    if (SHIBYTE(__b.f_bfree) < 0)
    {
      v62 = v34;
      operator delete(*&__b.f_bsize);
      if (v62)
      {
        goto LABEL_46;
      }
    }

    else if (v34)
    {
      goto LABEL_46;
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v63 = off_1ED944120;
    if (!off_1ED944120)
    {
      v64 = operator new(0x38uLL);
      v65 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v66 = dispatch_queue_create("BBUError", v65);
      *v64 = 0;
      v64[1] = 0;
      v64[2] = v66;
      if (v66)
      {
        v67 = v66;
        dispatch_retain(v66);
        v64[3] = 0;
        dispatch_release(v67);
      }

      else
      {
        v64[3] = 0;
      }

      v64[4] = 0;
      v64[5] = 0;
      v64[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&__b, v64);
      v68 = *&__b.f_bsize;
      *&__b.f_bsize = 0;
      __b.f_blocks = 0;
      v69 = *(&off_1ED944120 + 1);
      off_1ED944120 = v68;
      if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v69->__on_zero_shared)(v69);
        std::__shared_weak_count::__release_weak(v69);
      }

      f_blocks = __b.f_blocks;
      if (__b.f_blocks && !atomic_fetch_add((__b.f_blocks + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (f_blocks->__on_zero_shared)(f_blocks);
        std::__shared_weak_count::__release_weak(f_blocks);
      }

      v63 = off_1ED944120;
    }

    v71 = *(&off_1ED944120 + 1);
    v80.__r_.__value_.__r.__words[0] = v63;
    v80.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    block = operator new(0x20uLL);
    v85 = xmmword_1E5391A90;
    strcpy(block, "Failed to change file ownership");
    *&__b.f_bsize = MEMORY[0x1E69E9820];
    __b.f_blocks = 0x40000000;
    __b.f_bfree = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    __b.f_bavail = &__block_descriptor_tmp_8;
    __b.f_files = v63;
    __b.f_ffree = &block;
    __b.f_fsid.val[0] = 35;
    __p[0] = &__b;
    *&__str = MEMORY[0x1E69E9820];
    *(&__str + 1) = 0x40000000;
    *&v91 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    *(&v91 + 1) = &__block_descriptor_tmp_13_0;
    *&v92 = v63;
    *(&v92 + 1) = __p;
    v72 = *(v63 + 16);
    if (*(v63 + 24))
    {
      dispatch_async_and_wait(v72, &__str);
      if ((SHIBYTE(v85) & 0x80000000) == 0)
      {
LABEL_121:
        if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v71->__on_zero_shared)(v71);
          std::__shared_weak_count::__release_weak(v71);
        }

        goto LABEL_100;
      }
    }

    else
    {
      dispatch_sync(v72, &__str);
      if ((SHIBYTE(v85) & 0x80000000) == 0)
      {
        goto LABEL_121;
      }
    }

    operator delete(block);
    goto LABEL_121;
  }

  memset(&__b, 170, sizeof(__b));
  memset(&v80, 0, sizeof(v80));
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v82;
  }

  else
  {
    v26 = v82.__r_.__value_.__r.__words[0];
  }

  if (statfs(v26, &__b))
  {
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      v80.__r_.__value_.__l.__size_ = 18;
      v27 = v80.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v80.__r_.__value_.__s + 23) = 18;
      v27 = &v80;
    }

    strcpy(v27, ": failed to statfs");
  }

  else
  {
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    __str = 0u;
    snprintf(&__str, 0x80uLL, ": free %llu avail %llu", __b.f_bfree * __b.f_bsize, __b.f_bavail * __b.f_bsize);
    std::string::__assign_external(&v80, &__str);
  }

  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v35 = off_1ED944120;
  if (!off_1ED944120)
  {
    v36 = operator new(0x38uLL);
    v37 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v38 = dispatch_queue_create("BBUError", v37);
    *v36 = 0;
    v36[1] = 0;
    v36[2] = v38;
    if (v38)
    {
      v39 = v38;
      dispatch_retain(v38);
      v36[3] = 0;
      dispatch_release(v39);
    }

    else
    {
      v36[3] = 0;
    }

    v36[4] = 0;
    v36[5] = 0;
    v36[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&__str, v36);
    v40 = __str;
    __str = 0uLL;
    v41 = *(&off_1ED944120 + 1);
    off_1ED944120 = v40;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

    v42 = *(&__str + 1);
    if (*(&__str + 1) && !atomic_fetch_add((*(&__str + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    v35 = off_1ED944120;
  }

  v43 = *(&off_1ED944120 + 1);
  v78 = v35;
  v79 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  __str = 0u;
  if (strerror_r(v25, &__str, 0x80uLL))
  {
    snprintf(&__str, 0x80uLL, "unknown error %d", v25);
  }

  v44 = strlen(&__str);
  if (v44 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v45 = v44;
  if (v44 >= 0x17)
  {
    if ((v44 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v44 | 7) + 1;
    }

    p_dst = operator new(v47);
    __dst.__r_.__value_.__l.__size_ = v45;
    __dst.__r_.__value_.__r.__words[2] = v47 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_73;
  }

  *(&__dst.__r_.__value_.__s + 23) = v44;
  p_dst = &__dst;
  if (v44)
  {
LABEL_73:
    memcpy(p_dst, &__str, v45);
  }

  p_dst->__r_.__value_.__s.__data_[v45] = 0;
  v48 = std::string::insert(&__dst, 0, "Failed to write file: ", 0x16uLL);
  v49 = *&v48->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = &v80;
  }

  else
  {
    v50 = v80.__r_.__value_.__r.__words[0];
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v80.__r_.__value_.__l.__size_;
  }

  v52 = std::string::append(&v75, v50, size);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v77 = v52->__r_.__value_.__r.__words[2];
  *__p = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  *&__str = MEMORY[0x1E69E9820];
  *(&__str + 1) = 0x40000000;
  *&v91 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  *(&v91 + 1) = &__block_descriptor_tmp_8;
  *&v92 = v35;
  *(&v92 + 1) = __p;
  LODWORD(v93) = 35;
  p_str = &__str;
  block = MEMORY[0x1E69E9820];
  *&v85 = 0x40000000;
  *(&v85 + 1) = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v86 = &__block_descriptor_tmp_13_0;
  v87 = v35;
  p_p_str = &p_str;
  v54 = *(v35 + 16);
  if (*(v35 + 24))
  {
    dispatch_async_and_wait(v54, &block);
    if ((SHIBYTE(v77) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    dispatch_sync(v54, &block);
    if ((SHIBYTE(v77) & 0x80000000) == 0)
    {
LABEL_82:
      if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_88;
    }
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_83:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(v75.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_84:
    if (!v43)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v43)
  {
    goto LABEL_92;
  }

LABEL_90:
  if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

LABEL_92:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
LABEL_94:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v55 = (*(*a1 + 56))(a1);
        if (a2[23] < 0)
        {
          v59 = *a2;
        }

        _BBULog(15, 0, v55, "", "Failed writing %u bytes to %s - wrote only %u\n", v56, v57, v58, v15);
      }
    }
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

LABEL_100:
  v28 = 35;
LABEL_101:
  close(v14);
  operator delete[](v73);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_102:
    operator delete(v82.__r_.__value_.__l.__data_);
  }

LABEL_103:
  v60 = *MEMORY[0x1E69E9840];
  return v28;
}