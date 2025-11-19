void anonymous namespace::XPCMemoryManager::~XPCMemoryManager(_anonymous_namespace_::XPCMemoryManager *this)
{
  *this = &unk_2883E9FD8;
  close(*(this + 32));
  v3 = 260;
  v2 = this + 104;
  llvm::sys::fs::remove_directories(&v2, 1);
}

{
}

uint64_t anonymous namespace::XPCMemoryManager::allocate(uint64_t a1, uint64_t a2, llvm::jitlink::LinkGraph *a3, __int128 *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  llvm::jitlink::BasicLayout::BasicLayout(&v23, a3);
  if (v25)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v24;
    do
    {
      v12 = *v11;
      v13 = v12 & 7;
      if (v13 >= 4 && v13 != 5)
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      if ((v12 & 1) == 0)
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      v15 = *(*(a1 + 8) + 88);
      if (!(v15 >> v11[8]))
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      v16 = *(v11 + 3) + *(v11 + 2);
      if (v12 > 7)
      {
        if (v13 >= 4)
        {
          v9 += v16;
        }

        else
        {
          v8 += (v15 + v16 - 1) / v15 * v15;
        }
      }

      else if (v13 >= 4)
      {
        v10 += v16;
      }

      else
      {
        v7 += (v15 + v16 - 1) / v15 * v15;
      }

      v11 += 104;
    }

    while (v11 != &v24[104 * v25]);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v10;
  v19[3] = v9;
  v19[4] = v23;
  v20[0] = &v21;
  v20[1] = 0x400000000;
  if (v25)
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v20, &v24);
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v22, a4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v22);
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(v20);
  result = llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v24);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::XPCMemoryManager::deallocate(void *a1, uint64_t **a2, __int128 *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v41 = a3;
    __src = 0;
    v43 = 0;
    v44 = 0;
    std::vector<llvm::orc::ExecutorAddr>::reserve(&__src, v4 - v3);
    v7 = *a2;
    v8 = a2[1];
    if (*a2 == v8)
    {
      v9 = v43;
    }

    else
    {
      v9 = v43;
      do
      {
        v10 = *v7;
        *v7 = -1;
        if (v9 >= v44)
        {
          v11 = __src;
          v12 = v9 - __src;
          v13 = (v9 - __src) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v15 = v44 - __src;
          if ((v44 - __src) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(&__src, v16);
          }

          v17 = (v9 - __src) >> 3;
          v18 = (8 * v13);
          v19 = (8 * v13 - 8 * v17);
          *v18 = v10;
          v9 = (v18 + 1);
          memcpy(v19, v11, v12);
          v20 = __src;
          __src = v19;
          v43 = v9;
          v44 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v9 = v10;
          v9 += 8;
        }

        v43 = v9;
        ++v7;
      }

      while (v7 != v8);
    }

    v22 = a1[1];
    v23 = a1[6];
    v47[0] = a1;
    v47[1] = 0;
    __dst[0] = 0;
    __dst[1] = 0;
    if (v9 != __src)
    {
      std::vector<llvm::orc::ExecutorAddr>::__vallocate[abi:nn200100](&v47[1], (v9 - __src) >> 3);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v49, v41);
    v24 = v22[3];
    v25 = v43 + 16 - __src;
    if (__src == v43)
    {
      v26 = 16;
    }

    else
    {
      v26 = v43 + 16 - __src;
    }

    *&v62 = 0;
    *(&v62 + 1) = v26;
    if (v26 < 9)
    {
      if (v43 + 16 == __src)
      {
        llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", v46);
        goto LABEL_46;
      }

      v27 = &v62;
    }

    else
    {
      v27 = malloc_type_malloc(v26, 0x100004077774924uLL);
      *&v62 = v27;
      v25 = v26;
    }

    *v27 = a1[3];
    if ((v25 & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      v28 = __src;
      *(v27 + 1) = (v43 - __src) >> 3;
      v29 = v43;
      v30 = v28 == v43;
      if ((v25 - 16) >= 8 && v28 != v43)
      {
        v31 = v27 + 1;
        v32 = v25 - 24;
        v33 = v28 + 8;
        do
        {
          *v31++ = *(v33 - 1);
          v30 = v33 == v29;
          if (v33 == v29)
          {
            break;
          }

          v33 += 8;
          v34 = v32 > 7;
          v32 -= 8;
        }

        while (v34);
      }

      if (v30)
      {
        *v46 = v62;
        goto LABEL_46;
      }

      v26 = *(&v62 + 1);
    }

    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", v46);
    if (v26 > 8 || !v26 && v62)
    {
      free(v62);
    }

LABEL_46:
    if (!v46[1])
    {
      *v56 = v46[0];
      if (v46[0])
      {
        getErrorErrorCat();
        *&v62 = 3;
        *(&v62 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
      }
    }

    *v50 = *v47;
    v51 = *__dst;
    __dst[0] = 0;
    __dst[1] = 0;
    v47[1] = 0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v52, &v49);
    v35 = v46[1];
    if (v46[1] <= 8)
    {
      v36 = v46;
    }

    else
    {
      v36 = v46[0];
    }

    *v56 = v24;
    *&v56[8] = *v50;
    *&v56[24] = v51;
    v50[1] = 0;
    v51 = 0uLL;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v57, v52);
    v58 = *v56;
    v59 = *&v56[16];
    v60 = *&v56[32];
    memset(&v56[16], 0, 24);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v61, v57);
    v62 = v58;
    v63 = v59;
    v64 = v60;
    v59 = 0uLL;
    v60 = 0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v65, v61);
    v37 = operator new(0x48uLL, 8uLL);
    v53 = v37;
    v54 = xmmword_2750C12C0;
    v38 = v63;
    *v37 = v62;
    v37[1] = v38;
    *(v37 + 4) = v64;
    v63 = 0uLL;
    v64 = 0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v37 + 40, v65);
    v55 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSL_9allocatorISP_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrENSM_ISY_NSQ_ISY_EEEEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_S10_EEEvS1A_S12_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1A_EUlS4_E_S1K_vE9CallbacksE + 4;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v65);
    if (v63)
    {
      *(&v63 + 1) = v63;
      operator delete(v63);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v61);
    if (v59)
    {
      *(&v59 + 1) = v59;
      operator delete(v59);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v57);
    if (*&v56[16])
    {
      *&v56[24] = *&v56[16];
      operator delete(*&v56[16]);
    }

    (*(*v22 + 40))(v22, v23, &v53, v36, v35);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v53);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v52);
    if (v50[1])
    {
      *&v51 = v50[1];
      operator delete(v50[1]);
    }

    if (v46[1] < 9)
    {
      if (v46[1])
      {
        goto LABEL_65;
      }

      v39 = v46[0];
      if (!v46[0])
      {
        goto LABEL_65;
      }
    }

    else
    {
      v39 = v46[0];
    }

    free(v39);
LABEL_65:
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v49);
    if (v47[1])
    {
      __dst[0] = v47[1];
      operator delete(v47[1]);
    }

    if (__src)
    {
      v43 = __src;
      operator delete(__src);
    }

    goto LABEL_69;
  }

  v45 = 0;
  v21 = *(a3 + 3);
  if ((v21 & 2) == 0)
  {
    a3 = *a3;
  }

  (*(v21 & 0xFFFFFFFFFFFFFFF8))(a3, &v45);
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

LABEL_69:
  v40 = *MEMORY[0x277D85DE8];
}

void *llvm::detail::UniqueFunctionBase<llvm::Error,void *>::CallImpl<anonymous namespace::XPCMemoryManager::XPCMemoryManager(llvm::orc::SimpleRemoteEPC &,xojit::XOJITXPC &,unsigned long long,anonymous namespace::CodeDirectoryHash,unsigned int,BOOL,BOOL,std::string,int,anonymous namespace::XPCMemoryManager::SymbolAddrs)::$_0>@<X0>(xpc_object_t xdict@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (xdict)
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "id");
    if (!uint64)
    {
      getErrorErrorCat();
      v26 = 3;
      v27 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    v7 = uint64;
    v25 = 0;
    std::mutex::lock((v4 + 248));
    v26 = 0;
    v8 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*(v4 + 328), *(v4 + 344), v7, &v26);
    v9 = v26;
    if (v8)
    {
      v10 = v26 == *(v4 + 328) + 40 * *(v4 + 344);
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      if (&v24 != (v26 + 8))
      {
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v24);
        llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v24, (v9 + 8));
      }

      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((v9 + 8));
      *v9 = -2;
      *(v4 + 336) = vadd_s32(*(v4 + 336), 0x1FFFFFFFFLL);
    }

    std::mutex::unlock((v4 + 248));
    if (v25 <= 7)
    {
      getErrorErrorCat();
      operator new();
    }

    string = xpc_dictionary_get_string(xdict, "err");
    if (string)
    {
      v29 = 773;
      v26 = "finalization failed: ";
      v27 = 21;
      v28 = string;
      getErrorErrorCat();
      operator new();
    }

    v20 = xpc_dictionary_get_uint64(xdict, "fa");
    if (!v20)
    {
      getErrorErrorCat();
      v26 = 3;
      v27 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    LOBYTE(v27) = 0;
    v26 = v20;
    if ((v25 & 2) != 0)
    {
      v21 = &v24;
    }

    else
    {
      v21 = v24;
    }

    (*(v25 & 0xFFFFFFFFFFFFFFF8))(v21, &v26);
    if (v27)
    {
      v22 = v26;
      v26 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    *a3 = 0;
    result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v24);
  }

  else
  {
    std::mutex::lock((v4 + 248));
    *(v4 + 312) = 1;
    MEMORY[0x277C69E30](0, 8);
    v12 = *(v4 + 328);
    v13 = *(v4 + 336);
    *(v4 + 328) = 0;
    *(v4 + 336) = 0;
    v14 = *(v4 + 344);
    *(v4 + 344) = 0;
    std::mutex::unlock((v4 + 248));
    if (v13)
    {
      v15 = v12;
      if (v14)
      {
        v16 = 40 * v14;
        v15 = v12;
        while (*v15 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v15 += 5;
          v16 -= 40;
          if (!v16)
          {
            goto LABEL_23;
          }
        }
      }

      if (v15 != &v12[5 * v14])
      {
        getErrorErrorCat();
        operator new();
      }
    }

LABEL_23:
    if (v14)
    {
      v17 = 40 * v14;
      v18 = v12 + 1;
      do
      {
        if (*(v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v18);
        }

        v18 += 5;
        v17 -= 40;
      }

      while (v17);
    }

    result = MEMORY[0x277C69E30](v12, 8);
    *a3 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 40 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 40 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void **std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>::~vector[abi:nn200100](void **a1)
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
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v3 - 4);
        llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector((v3 - 464));
        v3 -= 504;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::destroy_range(*a1, *a1 + 104 * *(a1 + 8));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::destroy_range(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v2 = a2;
    do
    {
      v4 = *(v2 - 24);
      if (v4)
      {
        *(v2 - 16) = v4;
        operator delete(v4);
      }

      v5 = *(v2 - 48);
      if (v5)
      {
        *(v2 - 40) = v5;
        operator delete(v5);
      }

      v2 -= 104;
    }

    while (v2 != a1);
  }
}

uint64_t *std::unique_ptr<anonymous namespace::XPCMemoryManager::JDLayout>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(*(v2 + 24));

    JUMPOUT(0x277C69E40);
  }

  return result;
}

void std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(*a1);
    std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void anonymous namespace::XPCMemoryManager::reserve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 136));
  *v98 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(a1 + 200), *(a1 + 216), a2, v98))
  {
    v6 = *v98;
    v7 = *(a1 + 200);
    v8 = *(a1 + 216);
  }

  else
  {
    v7 = *(a1 + 200);
    v8 = *(a1 + 216);
    v6 = v7 + 16 * v8;
  }

  if (v6 != v7 + 16 * v8)
  {
    v9 = *(*(a1 + 8) + 88);
    v10 = *a3 + (v9 - 1 + *(a3 + 16)) / v9 * v9;
    v11 = *(a3 + 8) + (*(a3 + 24) + v9 - 1) / v9 * v9;
    if (!(v10 | v11))
    {
      v12 = 0;
      v13 = 0;
LABEL_7:
      std::mutex::unlock((a1 + 136));
      v55 = *(a3 + 16);
      *size = *a3;
      v81 = v55;
      v82 = *(a3 + 32);
      v83 = &v85;
      v84 = 0x400000000;
      if (*(a3 + 48))
      {
        llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v83, a3 + 40);
      }

      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v86, (a3 + 472));
      v92[0] = v93;
      v92[1] = 0x400000000;
      v96 = 0u;
      v97 = 0u;
      v90 = v12;
      v91 = v13;
      {
        v89 = -1;
        v88 = *v98;
        if ((v87 & 2) != 0)
        {
          v56 = v86;
        }

        else
        {
          v56 = v86[0];
        }

        (*(v87 & 0xFFFFFFFFFFFFFFF8))(v56, &v88);
        llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v88);
      }

      else
      {
        v95 = *v98;
        v74 = v82;
        if (v84)
        {
          v76 = v95;
          v58 = v94;
          v59 = v91;
          v60 = v90;
          v61 = 104 * v84;
          v62 = (v83 + 5);
          do
          {
            v63 = *(v62 - 40);
            v64 = *(*(a1 + 8) + 88);
            v65 = (*(v62 - 3) + *(v62 - 2) + v64 - 1) / v64 * v64;
            v66 = llvm::orc::AllocGroupSmallMap<llvm::orc::ExecutorAddrRange>::operator[](v92, *(v62 - 40));
            if (v63 > 7)
            {
              *v66 = v59;
              *(v66 + 1) = v65 + v59;
              *(v62 - 1) = v59;
              if ((v63 & 4) != 0)
              {
                v70 = *(v62 - 3);
                if (v70)
                {
                  v71 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v74, *(v62 - 3), 0);
                  *&v97 = v71;
                  *(&v97 + 1) = v70;
                }

                else
                {
                  v71 = v97;
                }

                *v62 = v71;
              }

              else
              {
                *v62 = v76;
                v76 += v65;
              }

              v59 += v65;
              v67 = v60;
            }

            else
            {
              v67 = (v60 + v65);
              *v66 = v60;
              *(v66 + 1) = v60 + v65;
              *(v62 - 1) = v60;
              if ((v63 & 4) != 0)
              {
                v68 = *(v62 - 3);
                if (v68)
                {
                  v69 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v74, *(v62 - 3), 0);
                  *&v96 = v69;
                  *(&v96 + 1) = v68;
                }

                else
                {
                  v69 = v96;
                }

                *v62 = v69;
              }

              else
              {
                *v62 = v58;
                v58 += v65;
              }
            }

            v62 += 13;
            v60 = v67;
            v61 -= 104;
          }

          while (v61);
        }

        llvm::jitlink::BasicLayout::apply(&v82, &v79);
        v72 = v79;
        if (!v79)
        {
          operator new();
        }

        v79 = 0;
        *v98 = v72;
        v88 = v77;
        v77 = 0;
        llvm::ErrorList::join(v98, &v88, &v78);
        if (v88)
        {
          (*(*v88 + 8))(v88);
        }

        if (*v98)
        {
          (*(**v98 + 8))(*v98);
        }

        v98[8] = -1;
        *v98 = v78;
        v78 = 0;
        if ((v87 & 2) != 0)
        {
          v73 = v86;
        }

        else
        {
          v73 = v86[0];
        }

        (*(v87 & 0xFFFFFFFFFFFFFFF8))(v73, v98);
        llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(v98);
        if (v78)
        {
          (*(*v78 + 8))(v78);
        }

        if (v77)
        {
          (*(*v77 + 8))(v77);
        }

        if (v79)
        {
          (*(*v79 + 8))(v79);
        }
      }

      if (v92[0] != v93)
      {
        free(v92[0]);
      }

      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v86);
      llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v83);
      goto LABEL_92;
    }

    v22 = *(v6 + 8);
    v24 = *v22;
    v23 = v22 + 3;
    v12 = v24;
    v75 = *(v6 + 8);
    v26 = (v75 + 16);
    v25 = *(v75 + 16);
    if (v25 != v23)
    {
      v27 = 0;
      v13 = 0;
      while (1)
      {
        v28 = v25[4] - v12;
        if (v10)
        {
          v29 = v27 == 0;
        }

        else
        {
          v29 = 0;
        }

        v30 = !v29;
        if (v29 && v10 <= v28)
        {
          *v98 = v12;
          *&v98[8] = v10;
          v31 = std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::__emplace_hint_unique_key_args<llvm::orc::ExecutorAddr,std::pair<llvm::orc::ExecutorAddr,unsigned long long>>(v26, v25, v12);
          if (v13 || !v11)
          {
            v27 = v12;
LABEL_63:
            if (!v10)
            {
              goto LABEL_69;
            }

            goto LABEL_64;
          }

          v25 = v31;
          v13 = 0;
          v27 = v12;
        }

        else if (!v13 && v11 && v11 <= v28)
        {
          *v98 = v12;
          *&v98[8] = v11;
          v32 = std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::__emplace_hint_unique_key_args<llvm::orc::ExecutorAddr,std::pair<llvm::orc::ExecutorAddr,unsigned long long>>(v26, v25, v12);
          if (v30)
          {
            v13 = v12;
            if (v10)
            {
              goto LABEL_64;
            }

LABEL_69:
            v54 = v12;
            v12 = v27;
            goto LABEL_70;
          }

          v25 = v32;
          v27 = 0;
          v13 = v12;
        }

        v33 = v25[1];
        v34 = v25;
        if (v33)
        {
          do
          {
            v35 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v35 = v34[2];
            v29 = *v35 == v34;
            v34 = v35;
          }

          while (!v29);
        }

        v12 += v25[5];
        v25 = v35;
        if (v35 == v23)
        {
          goto LABEL_63;
        }
      }
    }

    v13 = 0;
    v27 = 0;
    if (!v10)
    {
      goto LABEL_69;
    }

LABEL_64:
    if (v27)
    {
      goto LABEL_69;
    }

    if (v10 <= *(v75 + 8) - v12)
    {
      *v98 = v12;
      *&v98[8] = v10;
      std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::__emplace_hint_unique_key_args<llvm::orc::ExecutorAddr,std::pair<llvm::orc::ExecutorAddr,unsigned long long>>(v26, v23, v12);
      v54 = v12 + v10;
    }

    else
    {
      v54 = v12;
      v12 = 0;
    }

LABEL_70:
    if (!v13 && v11)
    {
      if (v11 <= *(v75 + 8) - v54)
      {
        *v98 = v54;
        *&v98[8] = v11;
        std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::__emplace_hint_unique_key_args<llvm::orc::ExecutorAddr,std::pair<llvm::orc::ExecutorAddr,unsigned long long>>(v26, v23, v54);
        v13 = v54;
        if (v10)
        {
LABEL_75:
          if (!v12)
          {
            getErrorErrorCat();
            *v98 = 3;
            *&v98[8] = &getErrorErrorCat(void)::ErrorErrorCat;
            llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
          }
        }

LABEL_78:
        if (!v13 && v11)
        {
          getErrorErrorCat();
          *v98 = 3;
          *&v98[8] = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
        }

        goto LABEL_7;
      }

      v13 = 0;
    }

    if (v10)
    {
      goto LABEL_75;
    }

    goto LABEL_78;
  }

  v14 = *(a1 + 224);
  v90 = 0;
  v16 = v90;
  if ((v15 & 1) == 0)
  {
    *v98 = v90;
    v17 = *(a1 + 232);
    v18 = *(a1 + 240);
    if (4 * v17 + 4 >= 3 * v18)
    {
      v18 *= 2;
    }

    else if (v18 + ~v17 - *(a1 + 236) > v18 >> 3)
    {
LABEL_11:
      *(a1 + 232) = v17 + 1;
      if (*v16 != -4096)
      {
        --*(a1 + 236);
      }

      *v16 = a2;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = 0;
      goto LABEL_14;
    }

    v17 = *(a1 + 232);
    v16 = *v98;
    goto LABEL_11;
  }

LABEL_14:
  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19)
  {
    v36 = v16[1];
    v37 = 0xEFBEFBEFBEFBEFBFLL * ((v20 - v36) >> 3);
    if (v37 + 1 > 0x82082082082082)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v38 = 0xEFBEFBEFBEFBEFBFLL * ((v19 - v36) >> 3);
    v39 = 2 * v38;
    if (2 * v38 <= v37 + 1)
    {
      v39 = v37 + 1;
    }

    if (v38 >= 0x41041041041041)
    {
      v40 = 0x82082082082082;
    }

    else
    {
      v40 = v39;
    }

    if (v40)
    {
      if (v40 <= 0x82082082082082)
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v41 = 504 * v37;
    v21 = v41 + 504;
    v42 = v16[1];
    v43 = v16[2];
    v44 = (v41 + v42 - v43);
    if (v43 != v42)
    {
      v45 = v16[1];
      v46 = v44;
      do
      {
        v45 += 504;
        v46 += 504;
      }

      while (v45 != v43);
      do
      {
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v42 + 59);
        llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector((v42 + 40));
        v42 += 504;
      }

      while (v42 != v43);
      v42 = v16[1];
    }

    v16[1] = v44;
    v16[2] = v21;
    v16[3] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    v21 = v20 + 504;
  }

  v16[2] = v21;
  v47 = v21 - v16[1];
  std::mutex::unlock((a1 + 136));
  if (v47 == 504)
  {
    v48 = *(a1 + 72);
    v49 = *(a1 + 8);
    v50 = *(a1 + 32);
    v51 = v49[3];
    v52 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    *v52 = *(a1 + 24);
    v52[1] = v48;
    v53 = operator new(0x20uLL, 8uLL);
    *&v98[8] = xmmword_2750C12D0;
    *v53 = v51;
    v53[1] = a1;
    v53[2] = a2;
    v53[3] = v48;
    *v98 = v53;
    v99 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZN12_GLOBAL__N_116XPCMemoryManager11acquireSlabEPKNS_7jitlink12JITLinkDylibEyE3__0JNS2_12ExecutorAddrEyEEEvOT0_SP_OT1_DpRKT2_EUlOT_PKcmE_SO_JSP_yEEEvSZ_SR_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerESZ_EUlS4_E_S19_vE9CallbacksE;
    (*(*v49 + 40))(v49, v50, v98, v52, 16);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v98);
    free(v52);
  }

LABEL_92:
  v57 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void *std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::__emplace_hint_unique_key_args<llvm::orc::ExecutorAddr,std::pair<llvm::orc::ExecutorAddr,unsigned long long>>(void *a1, void *a2, unint64_t a3)
{
  v3 = a2;
  v4 = a1 + 1;
  if (a1 + 1 == a2 || (v5 = a2[4], v5 > a3))
  {
    v6 = *a2;
    if (*a1 == a2)
    {
      v8 = a2;
    }

    else
    {
      if (v6)
      {
        v7 = *a2;
        do
        {
          v8 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        v12 = a2;
        do
        {
          v8 = v12[2];
          v13 = *v8 == v12;
          v12 = v8;
        }

        while (v13);
      }

      if (v8[4] >= a3)
      {
        v15 = *v4;
        if (!*v4)
        {
          goto LABEL_38;
        }

        while (1)
        {
          while (1)
          {
            v3 = v15;
            v16 = v15[4];
            if (v16 <= a3)
            {
              break;
            }

            v15 = *v15;
            if (!*v3)
            {
              goto LABEL_38;
            }
          }

          if (v16 >= a3)
          {
            return v3;
          }

          v15 = v15[1];
          if (!v15)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (v6)
    {
      v14 = (v8 + 1);
    }

    else
    {
      v14 = a2;
    }

    v3 = *v14;
    if (!*v14)
    {
      goto LABEL_38;
    }
  }

  else if (v5 < a3)
  {
    v9 = a2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
        v11 = v10;
      }

      while (v9);
    }

    else
    {
      v11 = a2;
      do
      {
        v17 = v11;
        v11 = v11[2];
      }

      while (*v11 != v17);
    }

    if (v11 == v4 || v11[4] > a3 || (v18 = *v4) == 0)
    {
LABEL_38:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v18;
        v19 = v18[4];
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        if (!*v3)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

  return v3;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t anonymous namespace::XPCMemoryManager::allocateWorkingMemPages(uint64_t this, mach_vm_size_t size)
{
  v2 = this;
  if (size)
  {
    address = 0;
    this = mach_vm_allocate(*MEMORY[0x277D85F48], &address, size, 1);
    if (this)
    {
      v8 = 773;
      v5 = "mach_vm_allocate failed with error code ";
      v6 = 40;
      v7 = mach_error_string(this);
      getErrorErrorCat();
      operator new();
    }

    v4 = address;
    *(v2 + 16) &= ~1u;
    *(v2 + 8) = size;
    *v2 = v4;
  }

  else
  {
    *this = 0;
    *(this + 8) = 0;
    *(this + 16) &= ~1u;
  }

  return this;
}

unsigned __int8 *llvm::orc::AllocGroupSmallMap<llvm::orc::ExecutorAddrRange>::operator[](uint64_t a1, unsigned __int8 a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[24 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 24;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = 0;
    v5 = *a1;
  }

  if (v5 == &v3[24 * v11] || *v5 != a2)
  {
    v29 = 0;
    v30 = 0;
    v28[0] = a2;
    if (&v3[24 * v4] == v5)
    {
      v24 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>,true>>(a1, v28);
      v25 = *a1 + 24 * *(a1 + 8);
      v26 = *v24;
      *(v25 + 16) = *(v24 + 16);
      *v25 = v26;
      LODWORD(v25) = *(a1 + 8) + 1;
      *(a1 + 8) = v25;
      v5 = (*a1 + 24 * v25 - 24);
    }

    else
    {
      v12 = (v5 - v3);
      v13 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>,true>>(a1, v28);
      v5 = &v12[*a1];
      v14 = 24;
      v15 = *a1 + 24 * *(a1 + 8);
      *(v15 + 16) = *(v15 - 8);
      *v15 = *(v15 - 24);
      v16 = *a1;
      v17 = *(a1 + 8);
      v18 = *a1 + 24 * v17 - 24;
      if (v18 != v5)
      {
        v19 = *a1 + 24 * v17 - 24;
        do
        {
          v20 = *(v19 - 24);
          v19 -= 24;
          *v18 = v20;
          *(v18 + 8) = *(v18 - 16);
          v18 = v19;
        }

        while (v19 != v5);
        v17 = *(a1 + 8);
        v16 = *a1;
      }

      v21 = v17 + 1;
      *(a1 + 8) = v21;
      if (v13 >= &v16[24 * v21] || v13 < v5)
      {
        v14 = 0;
      }

      v23 = (v13 + v14);
      *v5 = *v23;
      *(v5 + 8) = *(v23 + 8);
    }
  }

  return v5 + 8;
}

uint64_t *anonymous namespace::XPCMemoryManager::abandon(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = (a3 + 144);
  *__base = *a3;
  v10 = v8;
  llvm::ErrorList::join(&v10, &v9, a1);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = v10;
  if (v10)
  {
    result = (*(*v10 + 8))(v10);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>,true>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 24 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 24);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 24);
    }
  }

  return v2;
}

void anonymous namespace::XPCMemoryManager::release(uint64_t a1, unint64_t *__base, int64_t __nel)
{
  v3 = __nel;
  v4 = __base;
  if (__nel >= 2)
  {
    qsort(__base, __nel, 8uLL, llvm::array_pod_sort_comparator<llvm::orc::ExecutorAddr>);
  }

  if (!*v4)
  {
    do
    {
      --v3;
      v6 = v4[1];
      ++v4;
    }

    while (!v6);
  }

  std::mutex::lock((a1 + 136));
  while (v3)
  {
    if (*(a1 + 208))
    {
      v7 = *(a1 + 216);
      if (v7)
      {
        v8 = 16 * v7;
        v9 = *(a1 + 200);
        while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v9 += 2;
          v8 -= 16;
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v9 = *(a1 + 200);
      }

      v10 = *(a1 + 200) + 16 * v7;
LABEL_15:
      if (v9 != v10)
      {
        if (v3)
        {
          v11 = v9[1];
          v12 = (v11 + 3);
          v13 = &v4[v3];
          do
          {
            v14 = *(v13 - 1);
            if (*v11 > v14 || v11[1] <= v14)
            {
              break;
            }

            v15 = *v12;
            if (!*v12)
            {
              goto LABEL_28;
            }

            v16 = *v4;
            v17 = (v11 + 3);
            v18 = *v12;
            do
            {
              v19 = v18[4];
              v20 = v19 >= v16;
              v21 = v19 < v16;
              if (v20)
              {
                v17 = v18;
              }

              v18 = v18[v21];
            }

            while (v18);
            if (v17 == v12 || v16 < v17[4])
            {
LABEL_28:
              v17 = (v11 + 3);
            }

            v22 = v17[1];
            v23 = v17;
            if (v22)
            {
              do
              {
                v24 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v24 = v23[2];
                v25 = *v24 == v23;
                v23 = v24;
              }

              while (!v25);
            }

            if (v11[2] == v17)
            {
              v11[2] = v24;
            }

            --v11[4];
            std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v15, v17);
            operator delete(v17);
            ++v4;
            --v3;
          }

          while (v3);
        }

        while (1)
        {
          v9 += 2;
          if (v9 == v10)
          {
            break;
          }

          if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            goto LABEL_15;
          }
        }
      }
    }

LABEL_11:
    ;
  }

  std::mutex::unlock((a1 + 136));
}

void *anonymous namespace::XPCMemoryManager::deallocateWorkingMemPages(void *result, mach_vm_address_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    result = mach_vm_deallocate(*MEMORY[0x277D85F48], v4, a2[1]);
    if (result)
    {
      v8 = 773;
      v5 = "Error deallocating working memory: ";
      v6 = 35;
      v7 = mach_error_string(result);
      getErrorErrorCat();
      operator new();
    }

    *a2 = 0;
    a2[1] = 0;
  }

  *v3 = 0;
  return result;
}

uint64_t llvm::array_pod_sort_comparator<llvm::orc::ExecutorAddr>(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>>::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 2;
    v4 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v5;
      *(a2 + 3) = 0;
      goto LABEL_21;
    }

    v7 = a2 + 1;
    v8 = *(a2 + 2);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        v10 = *a1;
        v11 = &v4[24 * v8];
        do
        {
          *v10 = *v4;
          *(v10 + 8) = *(v4 + 8);
          v4 += 24;
          v10 += 24;
        }

        while (v4 != v11);
      }

      goto LABEL_20;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        v12 = &v4[24 * v9];
        v13 = *a1;
        do
        {
          *v13 = *v4;
          *(v13 + 8) = *(v4 + 8);
          v4 += 24;
          v13 += 24;
        }

        while (v4 != v12);
LABEL_18:
        v14 = *v7 - v9;
        if (v14)
        {
          memcpy((*a1 + 24 * v9), &(*a2)[24 * v9], 24 * v14);
        }

LABEL_20:
        *(a1 + 8) = v8;
LABEL_21:
        *v7 = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 24);
    }

    v9 = 0;
    goto LABEL_18;
  }

  return a1;
}

void anonymous namespace::XPCMemoryManager::InFlightAlloc::~InFlightAlloc(mach_vm_address_t *this)
{
  v28[7] = *MEMORY[0x277D85DE8];
  *this = &unk_2883EA008;
  v2 = this + 21;
  *&buf = v24;
  llvm::ErrorList::join(&buf, &__p, &v25);
  if (__p.__r_.__value_.__r.__words[0])
  {
    (*(*__p.__r_.__value_.__l.__data_ + 8))(__p.__r_.__value_.__r.__words[0]);
  }

  if (buf)
  {
    (*(*buf + 8))(buf);
  }

  v3 = v25;
  if (v25)
  {
    v25 = 0;
    v26 = v3;
    *&buf = v28;
    *(&buf + 1) = 0x200000000;
    __p.__r_.__value_.__r.__words[0] = &buf;
    llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v26, &__p);
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v4 = buf;
    v5 = DWORD2(buf);
    memset(&__p, 0, sizeof(__p));
    if (DWORD2(buf))
    {
      v6 = 24 * DWORD2(buf);
      v7 = DWORD2(buf) - 1;
      v8 = (buf + 23);
      v9 = v6;
      do
      {
        v10 = *v8;
        if (v10 < 0)
        {
          v10 = *(v8 - 15);
        }

        v7 += v10;
        v8 += 24;
        v9 -= 24;
      }

      while (v9);
      std::string::reserve(&__p, v7);
      v11 = *(v4 + 23);
      if (v11 >= 0)
      {
        v12 = v4;
      }

      else
      {
        v12 = *v4;
      }

      if (v11 >= 0)
      {
        v13 = *(v4 + 23);
      }

      else
      {
        v13 = *(v4 + 8);
      }

      std::string::append(&__p, v12, v13);
      if (v5 != 1)
      {
        v14 = v4 + 24;
        v15 = v6 - 24;
        do
        {
          std::string::append(&__p, "\n", 1uLL);
          v16 = *(v14 + 23);
          if (v16 >= 0)
          {
            v17 = v14;
          }

          else
          {
            v17 = *v14;
          }

          if (v16 >= 0)
          {
            v18 = *(v14 + 23);
          }

          else
          {
            v18 = *(v14 + 8);
          }

          std::string::append(&__p, v17, v18);
          v14 += 24;
          v15 -= 24;
        }

        while (v15);
      }
    }

    llvm::SmallVector<std::string,2u>::~SmallVector(&buf);
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = p_p;
      _os_log_debug_impl(&dword_274E5C000, v19, OS_LOG_TYPE_DEBUG, "InFlightAlloc destruction of working memory failed %s", &buf, 0xCu);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  v20 = this[5];
  if (v20 != this + 7)
  {
    free(v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

{

  JUMPOUT(0x277C69E40);
}

uint64_t *anonymous namespace::XPCMemoryManager::InFlightAlloc::abandon(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  v4 = a2[3];
  if ((v4 & 2) == 0)
  {
    a2 = *a2;
  }

  (*(v4 & 0xFFFFFFFFFFFFFFF8))(a2, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void anonymous namespace::XPCMemoryManager::InFlightAlloc::finalize(uint64_t a1, __int128 *a2)
{
  v141[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = 0;
  v96 = *(a1 + 24);
  v97 = v99;
  v98 = 0x400000000;
  if (*(a1 + 48))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>>::operator=(&v97, (a1 + 40));
  }

  v6 = *(a1 + 168);
  v100 = *(a1 + 152);
  v101 = v6;
  v7 = *(a1 + 200);
  v102 = *(a1 + 184);
  v103 = v7;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v95, a2);
  value = 0;
  std::mutex::lock((v4 + 248));
  if (*(v4 + 312) == 1)
  {
    getErrorErrorCat();
    *&v104 = 3;
    *(&v104 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[38],std::error_code>();
  }

  v9 = *(v4 + 320);
  v8 = *(v4 + 328);
  *(v4 + 320) = v9 + 1;
  value = v9;
  bytes = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v8, *(v4 + 344), v9, &bytes);
  v11 = bytes;
  if (v10)
  {
    goto LABEL_11;
  }

  v12 = *(v4 + 336);
  v13 = *(v4 + 344);
  if (4 * v12 + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_157;
  }

  if (v13 + ~v12 - *(v4 + 340) <= v13 >> 3)
  {
LABEL_157:
    llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::grow(v4 + 328, v13);
    bytes = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*(v4 + 328), *(v4 + 344), value, &bytes);
    v11 = bytes;
  }

  ++*(v4 + 336);
  if (*v11 != -1)
  {
    --*(v4 + 340);
  }

  *v11 = value;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
LABEL_11:
  if (v11 + 8 != &v95)
  {
    v14 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v11 + 1);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v14, &v95);
  }

  std::mutex::unlock((v4 + 248));
  v90[0] = v4;
  v90[1] = &value;
  if (v115)
  {
    v15 = v114;
    v114 = 0;
    bytes = v15;
    if (bytes)
    {
      (*(*bytes + 8))(bytes);
    }

    goto LABEL_153;
  }

  if (v113)
  {
    v16 = v112;
    v112 = 0;
    bytes = v16;
    if (bytes)
    {
      (*(*bytes + 8))(bytes);
    }

    goto LABEL_152;
  }

  v17 = v102;
  v18 = llvm::orc::AllocGroupSmallMap<llvm::orc::ExecutorAddrRange>::operator[](&v97, 5u);
  if (v111)
  {
    v19 = v110;
    v110 = 0;
    bytes = v19;
    if (bytes)
    {
      (*(*bytes + 8))(bytes);
    }

    goto LABEL_151;
  }

  v20 = v103;
  v21 = llvm::orc::AllocGroupSmallMap<llvm::orc::ExecutorAddrRange>::operator[](&v97, 0xDu);
  if (v109)
  {
    v22 = v108;
    v108 = 0;
    bytes = v22;
    goto LABEL_148;
  }

  v104 = v96;
  v105 = v107;
  v106 = 0x400000000;
  if (v98)
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>>::operator=(&v105, &v97);
  }

  v23 = 0;
  v107[6] = v100;
  v107[7] = v101;
  v107[8] = v102;
  v107[9] = v103;
  *v92 = *(v5 + 272);
  v93 = *(v5 + 288);
  *(v5 + 280) = 0;
  *(v5 + 288) = 0;
  *(v5 + 272) = 0;
  LODWORD(v89) = 185139969;
  v24 = xmmword_2750C12E0;
  do
  {
    v25 = *(&v90[-1] + v23);
    if (v106)
    {
      v26 = v105;
      v27 = v106;
      do
      {
        v28 = v27 >> 1;
        v29 = &v26[24 * (v27 >> 1)];
        v31 = *v29;
        v30 = (v29 + 24);
        v27 += ~(v27 >> 1);
        if (v31 < v25)
        {
          v26 = v30;
        }

        else
        {
          v27 = v28;
        }
      }

      while (v27);
      v32 = v106;
    }

    else
    {
      v32 = 0;
      v26 = v105;
    }

    v33 = v105 + 24 * v32;
    if (v26 != v33 && *v26 != v25)
    {
      v26 = v33;
    }

    if (v26 != v105 + 24 * v106 && (v25 & 7) == 1)
    {
      v35 = *(v4 + 56);
      v139 = v141;
      v140 = v24;
      llvm::SmallVectorImpl<char>::resizeImpl<false>(&v139, 0x10uLL);
      v36 = v140;
      if (v140 < 8 || (v37 = v139, *v139 = *(v26 + 1), (v36 & 0xFFFFFFFFFFFFFFF8) == 8))
      {
        getErrorErrorCat();
        bytes = 3;
        *length = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      *(v37 + 8) = *(v26 + 2);
      v136 = v138;
      v137 = xmmword_2750C12E0;
      if (v140)
      {
        llvm::SmallVectorImpl<char>::operator=(&v136, &v139);
        bytes = v35;
        *length = &v118;
        *&length[8] = xmmword_2750C12E0;
        if (v137)
        {
          llvm::SmallVectorImpl<char>::operator=(length, &v136);
        }
      }

      else
      {
        bytes = v35;
        *length = &v118;
        *&length[8] = xmmword_2750C12E0;
      }

      llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(&v127, &bytes);
      if (*length != &v118)
      {
        free(*length);
      }

      if (v136 != v138)
      {
        free(v136);
      }

      if (v139 != v141)
      {
        free(v139);
      }

      xarray = v127;
      v133 = v135;
      v134 = xmmword_2750C12E0;
      if (v129)
      {
        llvm::SmallVectorImpl<char>::operator=(&v133, &v128);
      }

      llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(&v127);
      if (v25 > 7)
      {
        v39 = v92[0];
        bytes = xarray;
        *length = &v118;
        *&length[8] = xmmword_2750C12E0;
        if (v134)
        {
          llvm::SmallVectorImpl<char>::operator=(length, &v133);
        }

        v126 = 0;
        v125 = 0u;
        v123 = 0;
        v121 = 0;
        v122 = &v125;
        v124 = 24;
        v40 = v39 - v92[0];
        v41 = v92[1];
        if (v92[1] >= v93)
        {
          v44 = 0x6DB6DB6DB6DB6DB7 * ((v92[1] - v92[0]) >> 4) + 1;
          if (v44 > 0x249249249249249)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v93 - v92[0]) >> 4) > v44)
          {
            v44 = 0xDB6DB6DB6DB6DB6ELL * ((v93 - v92[0]) >> 4);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v93 - v92[0]) >> 4)) >= 0x124924924924924)
          {
            v45 = 0x249249249249249;
          }

          else
          {
            v45 = v44;
          }

          v138[1] = v92;
          if (v45)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>>(v92, v45);
          }

          v48 = 16 * (v40 >> 4);
          v136 = 0;
          *&v137 = v48;
          *(&v137 + 1) = v48;
          v138[0] = 0;
          if (!(0x6DB6DB6DB6DB6DB7 * (v40 >> 4)))
          {
            if (v40 < 1)
            {
              if (v92[0] == v39)
              {
                v49 = 1;
              }

              else
              {
                v49 = 0xDB6DB6DB6DB6DB6ELL * (v40 >> 4);
              }

              v141[1] = v92;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>>(v92, v49);
            }

            v48 -= 112 * ((0x6DB6DB6DB6DB6DB7 * (v40 >> 4) + 1) >> 1);
            *&v137 = v48;
            *(&v137 + 1) = v48;
          }

          std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,void,0>(v48, &bytes);
          v50 = v137;
          v51 = *(&v137 + 1) + 112;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>,llvm::orc::shared::AllocActionCallPair*>(v92, v39, v92[1], *(&v137 + 1) + 112);
          v52 = (v51 + v92[1] - v39);
          v92[1] = v39;
          v53 = (v50 + v92[0] - v39);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>,llvm::orc::shared::AllocActionCallPair*>(v92, v92[0], v39, v53);
          v54 = v92[0];
          v55 = v93;
          v92[0] = v53;
          v92[1] = v52;
          v93 = v138[0];
          *(&v137 + 1) = v54;
          v138[0] = v55;
          v136 = v54;
          *&v137 = v54;
          std::__split_buffer<llvm::orc::shared::AllocActionCallPair>::~__split_buffer(&v136);
        }

        else if (v39 == v92[1])
        {
          std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,void,0>(v92[1], &bytes);
          v92[1] = v41 + 112;
        }

        else
        {
          v42 = v92[1] - 112;
          v43 = v92[1];
          while (v42 < v41)
          {
            std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,void,0>(v43, v42);
            v42 += 112;
            v43 += 112;
          }

          v92[1] = v43;
          if (v41 != v39 + 112)
          {
            v46 = 0;
            do
            {
              v47 = &v41[v46];
              *&v41[v46 - 112] = *&v41[v46 - 224];
              llvm::SmallVectorImpl<char>::operator=(&v41[v46 - 104], &v41[v46 - 216]);
              *(v47 - 7) = *(v47 - 21);
              llvm::SmallVectorImpl<char>::operator=((v47 - 48), v47 - 20);
              v46 -= 112;
            }

            while (&v41[v46 - 112] != v39);
          }

          *v39 = bytes;
          llvm::SmallVectorImpl<char>::operator=((v39 + 8), length);
          *(v39 + 7) = v121;
          llvm::SmallVectorImpl<char>::operator=((v39 + 64), &v122);
        }

        v38 = v122;
        if (v122 == &v125)
        {
          goto LABEL_55;
        }
      }

      else
      {
        bytes = xarray;
        *length = &v118;
        *&length[8] = xmmword_2750C12E0;
        if (v134)
        {
          llvm::SmallVectorImpl<char>::operator=(length, &v133);
        }

        v126 = 0;
        v125 = 0u;
        v123 = 0;
        v121 = 0;
        v122 = &v125;
        v124 = 24;
        std::vector<llvm::orc::shared::AllocActionCallPair>::push_back[abi:nn200100](v92, &bytes);
        v38 = v122;
        if (v122 == &v125)
        {
          goto LABEL_55;
        }
      }

      free(v38);
LABEL_55:
      if (*length != &v118)
      {
        free(*length);
      }

      if (v133 != v135)
      {
        free(v133);
      }

      v24 = xmmword_2750C12E0;
    }

    ++v23;
  }

  while (v23 != 4);
  v56 = v92[0];
  for (i = 8; v56 != v92[1]; v56 += 14)
  {
    i += v56[2] + v56[9] + 32;
  }

  bytes = &length[16];
  *length = xmmword_2750C12F0;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&bytes, i);
  xarray = bytes;
  v133 = *length;
  v58 = llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>>,std::vector<llvm::orc::shared::AllocActionCallPair>,void>::serialize(&xarray, v92);
  if (!v58)
  {
    getErrorErrorCat();
    v139 = 3;
    *&v140 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  v59 = xpc_data_create(bytes, *length);
  if (bytes != &length[16])
  {
    free(bytes);
  }

  bytes = v92;
  std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](&bytes);
  if (v105 != v107)
  {
    free(v105);
  }

  if (!v58)
  {
    bytes = v59;
LABEL_148:
    if (bytes)
    {
      (*(*bytes + 8))(bytes);
    }

    goto LABEL_150;
  }

  LOBYTE(bytes) = 3;
  *length = v114;
  length[8] = 11;
  *&length[16] = v112;
  v118 = 5;
  v119 = v110;
  v120 = 13;
  v121 = v108;
  xarray = xpc_array_create(0, 0);
  v139 = xpc_array_create(0, 0);
  v136 = xpc_array_create(0, 0);
  v60 = 0;
  v92[0] = xpc_array_create(0, 0);
  v127 = v92;
  v128 = &v136;
  v129 = &v139;
  p_xarray = &xarray;
  v131 = 1;
  while (2)
  {
    v61 = *&length[v60];
    if (v61)
    {
      v62 = length[v60 - 8];
      if ((v62 & 4) != 0)
      {
        v73 = llvm::orc::AllocGroupSmallMap<llvm::orc::ExecutorAddrRange>::operator[](&v97, length[v60 - 8]);
        v76 = *v73;
        v74 = (v73 + 8);
        v75 = v76;
        goto LABEL_140;
      }

      v63 = v62 & 0xF8;
      v64 = v97;
      v65 = v98;
      if (v98)
      {
        v66 = v97;
        v67 = v98;
        do
        {
          v68 = v67 >> 1;
          v69 = &v66[24 * (v67 >> 1)];
          v71 = *v69;
          v70 = v69 + 24;
          v67 += ~(v67 >> 1);
          if (v71 <= v63)
          {
            v66 = v70;
          }

          else
          {
            v67 = v68;
          }
        }

        while (v67);
        v72 = v98;
      }

      else
      {
        v72 = 0;
        v66 = v97;
      }

      v77 = v97 + 24 * v72;
      if (v66 != v77 && *v66 != (v63 | 1))
      {
        v66 = v77;
      }

      v78 = v97 + 24 * v98;
      if (v66 == v78)
      {
        v79 = 0;
        v75 = 0;
      }

      else
      {
        v75 = *(v66 + 1);
        v79 = *(v66 + 2);
      }

      v80 = v62 | 3;
      if (v98)
      {
        do
        {
          v81 = v65 >> 1;
          v82 = &v64[24 * (v65 >> 1)];
          v84 = *v82;
          v83 = v82 + 24;
          v65 += ~(v65 >> 1);
          if (v84 < v80)
          {
            v64 = v83;
          }

          else
          {
            v65 = v81;
          }
        }

        while (v65);
      }

      if (v64 != v78 && *v64 != v80)
      {
        v64 = v97 + 24 * v98;
      }

      if (v64 != v78)
      {
        if (!v75)
        {
          v75 = *(v64 + 1);
        }

        v74 = (v64 + 16);
LABEL_140:
        v79 = *v74;
      }

      xpc_array_set_uint64(xarray, 0xFFFFFFFFFFFFFFFFLL, v62);
      xpc_array_set_uint64(v139, 0xFFFFFFFFFFFFFFFFLL, v75);
      xpc_array_set_uint64(v136, 0xFFFFFFFFFFFFFFFFLL, v79 - v75);
      xpc_array_set_value(v92[0], 0xFFFFFFFFFFFFFFFFLL, v61);
    }

    v60 += 16;
    if (v60 != 64)
    {
      continue;
    }

    break;
  }

  {
    LOWORD(object[0]) = 0;
    _os_log_debug_impl(&dword_274E5C000, v85, OS_LOG_TYPE_DEBUG, "Sending finalize message", object, 2u);
  }

  empty = xpc_dictionary_create_empty();
  object[0] = empty;
  xpc_dictionary_set_uint64(empty, "opc", 1uLL);
  xpc_dictionary_set_uint64(empty, "id", value);
  xpc_dictionary_set_value(empty, "groups", xarray);
  xpc_dictionary_set_value(empty, "bases", v139);
  xpc_dictionary_set_value(empty, "sizes", v136);
  xpc_dictionary_set_value(empty, "sources", v92[0]);
  xpc_dictionary_set_value(empty, "aa", v59);
  v87 = *(v4 + 16);
  v89 = object;
  xpc_release(object[0]);
  if (v59)
  {
    xpc_release(v59);
  }

LABEL_150:
LABEL_151:
LABEL_152:
LABEL_153:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v95);
  if (v97 != v99)
  {
    free(v97);
  }

  v88 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::XPCMemoryManager::createXPCMemPort(uint64_t result, memory_object_offset_t offset, memory_object_size_t a3)
{
  v3 = result;
  if (offset)
  {
    object_handle = 0;
    size = a3;
    memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x277D85F48], &size, offset, 4194375, &object_handle, 0);
    if (memory_entry_64)
    {
      v8 = 773;
      v5 = "Failed to create mach port for memory: ";
      v6 = 39;
      v7 = mach_error_string(memory_entry_64);
      getErrorErrorCat();
      operator new();
    }

    result = xpc_mach_send_create();
    *(v3 + 8) &= ~1u;
    *v3 = result;
  }

  else
  {
    *(result + 8) &= ~1u;
    *result = 0;
  }

  return result;
}

void *anonymous namespace::XPCMemoryManager::finalize(llvm::jitlink::LinkGraph &,anonymous namespace::XPCMemoryManager::InFlightAllocInfo,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>)::$_2::operator()(uint64_t *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v16 = 0;
  std::mutex::lock((v4 + 248));
  v5 = a1[1];
  v12 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*(v4 + 328), *(v4 + 344), *v5, &v12))
  {
    v6 = v12;
  }

  else
  {
    v6 = *(v4 + 328) + 40 * *(v4 + 344);
  }

  if (v15 != (v6 + 8))
  {
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v15);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v15, (v6 + 8));
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((v6 + 8));
  *v6 = -2;
  *(v4 + 336) = vadd_s32(*(v4 + 336), 0x1FFFFFFFFLL);
  std::mutex::unlock((v4 + 248));
  v7 = *a2;
  *a2 = 0;
  v14 |= 1u;
  v13 = v7;
  if ((v16 & 2) != 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = v15[0];
  }

  (*(v16 & 0xFFFFFFFFFFFFFFF8))(v8, &v13);
  if (v14)
  {
    v9 = v13;
    v13 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v15);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::XPCMemoryManager::createXPCCodeFile(uint64_t a1, uint64_t a2, _BYTE *__src, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v43[64] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v41 = v43;
    v42 = xmmword_2750C1300;
    v10 = a6 - a5;
    if ((a6 - a5) >= 0x201)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v41, v43, a6 - a5, 1);
    }

    *&v42 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v41, __src, &__src[a4]);
    if (v10 > a4)
    {
      llvm::SmallVectorImpl<char>::append(&v41, v10 - a4, 0);
    }

    std::string::basic_string[abi:nn200100]<0>(v33, "cf.XXXXXX");
    v11 = 1000;
    while (1)
    {
      v12 = v34 >= 0 ? v33 : v33[0];
      v13 = mkstempsat_np(*(a2 + 128), v12, 0);
      if (v13 != -1)
      {
        break;
      }

      if (!--v11)
      {
        v14 = __error();
        v15 = strerror(*v14);
        v39[4] = 773;
        v37 = "Could not create file for text section: ";
        *&v38 = 40;
        *(&v38 + 1) = v15;
        getErrorErrorCat();
        operator new();
      }
    }

    v16 = v13;
    llvm::raw_fd_ostream::raw_fd_ostream(&v37, v13, 0, 0, 0);
    llvm::raw_ostream::write(&v37, v41, v42);
    v26 = v40;
    if (v40.__val_)
    {
      std::error_code::message(&v28, &v26);
      v17 = std::string::insert(&v28, 0, "Error writing file for text section: ", 0x25uLL);
      v18 = v17->__r_.__value_.__r.__words[2];
      *__p = *&v17->__r_.__value_.__l.__data_;
      v31 = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      getErrorErrorCat();
      operator new();
    }

    llvm::raw_fd_ostream::~raw_fd_ostream(&v37);
    if (*(a2 + 103) == 1)
    {
      v20 = libcd_create(v42);
      v26.__val_ = 2;
      libcd_set_hash_types(v20, &v26.__val_, 1u);
      v28.__r_.__value_.__r.__words[0] = 0x8000000010BDEFALL;
      v21 = malloc_type_malloc(0x20uLL, 0x1070040E5421EB9uLL);
      v21[2] = 0x10000;
      *(v21 + 2) = &v28;
      *(v21 + 3) = 8;
      *v21 = *(v20 + 13);
      *(v20 + 13) = v21;
      libcd_set_input_mem(v20, v41);
      v20[23] = 2;
      *(v20 + 12) = strdup("ADHOC");
      v22 = v42;
      *(v20 + 25) = 0;
      *(v20 + 26) = v22;
      *(v20 + 27) = 0;
      libcd_set_linkage(v20, 2, (a2 + 80));
      if (*(a2 + 100) == 1)
      {
        *(v20 + 246) = 66049;
      }

      libcd_superblob_size(v20);
      operator new[]();
    }

    v23 = *(a2 + 127);
    if (v23 < 0)
    {
      v24 = *(a2 + 104);
      v23 = *(a2 + 112);
    }

    else
    {
      v24 = (a2 + 104);
    }

    v37 = v39;
    v38 = xmmword_2750C12F0;
    llvm::SmallVectorImpl<char>::append<std::__wrap_iter<char *>,void>(&v37, v24, &v24[v23]);
    v36 = 260;
    v35 = v33;
    v32 = 257;
    v29 = 257;
    v27 = 257;
    llvm::sys::path::append(&v37, 0, &v35, __p, &v28, &v26);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v37, 0);
    *&v38 = v38 - 1;
    v25 = xpc_string_create(v37);
    *(a1 + 8) &= ~1u;
    *a1 = v25;
    if (v37 != v39)
    {
      free(v37);
    }

    close(v16);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v41 != v43)
    {
      free(v41);
    }
  }

  else
  {
    *(a1 + 8) &= ~1u;
    *a1 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void xojit::XOJITXPC::withConnectionDo<anonymous namespace::XPCMemoryManager::finalize(llvm::jitlink::LinkGraph &,anonymous namespace::XPCMemoryManager::InFlightAllocInfo,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>)::$_1>(uint64_t a1, xpc_object_t **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 72);
  if (v4)
  {
    xpc_connection_send_message(v4, **a2);
  }

  std::mutex::unlock((a1 + 8));
}

uint64_t llvm::detail::scope_exit<anonymous namespace::XPCMemoryManager::finalize(llvm::jitlink::LinkGraph &,anonymous namespace::XPCMemoryManager::InFlightAllocInfo,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>)::$_0>::~scope_exit(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    xpc_release(**a1);
    xpc_release(**(a1 + 8));
    xpc_release(**(a1 + 16));
    xpc_release(**(a1 + 24));
  }

  return a1;
}

uint64_t llvm::Expected<anonymous namespace::XPCMemoryManager::XPCCodeFile>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    xpc_release(v3);
  }

  return a1;
}

void *llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[5] = -1;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 40 * v3;
      v16 = (v4 + 8);
      do
      {
        v17 = *(v16 - 1);
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *(v16 - 1);
          llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v18 + 1), v16);
          ++*(a1 + 8);
          llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v16);
        }

        v16 = (v16 + 40);
        v15 -= 40;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 40 * v19 - 40;
    v22 = vdupq_n_s64(v21 / 0x28);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_2750C1210)));
      if (v23.i8[0])
      {
        *result = -1;
      }

      if (v23.i8[4])
      {
        result[5] = -1;
      }

      v20 += 2;
      result += 10;
    }

    while (((v21 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

void *llvm::SmallVectorImpl<char>::append(void *result, size_t __len, int __c)
{
  v5 = result;
  v6 = result[1];
  if (v6 + __len > result[2])
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v6 + __len, 1);
    v6 = v5[1];
    if (!__len)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__len)
  {
LABEL_3:
    result = memset((*v5 + v6), __c, __len);
    v6 = v5[1];
  }

LABEL_4:
  v5[1] = v6 + __len;
  return result;
}

void *llvm::SmallVectorImpl<char>::append<std::__wrap_iter<char *>,void>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = v7 + a3 - a2;
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = v5[1];
  }

  if (a3 != v4)
  {
    v9 = (*v5 + v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
    v7 = v5[1];
  }

  v5[1] = v7 + v6;
  return result;
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v3 = result;
  v4 = result[1];
  if ((v4 + 1) > result[2])
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v4 + 1, 1);
    v4 = v3[1];
  }

  *(*v3 + v4) = a2;
  ++v3[1];
  return result;
}

uint64_t std::vector<llvm::orc::shared::AllocActionCallPair>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<llvm::orc::shared::AllocActionCallPair>::__emplace_back_slow_path<llvm::orc::shared::AllocActionCallPair>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,void,0>(*(a1 + 8), a2);
    result = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) &= ~1u;
  *a1 = *a2;
  *(a1 + 8) = a1 + 32;
  v3 = a1 + 8;
  *(a1 + 16) = xmmword_2750C12E0;
  if (*(a2 + 16))
  {
    llvm::SmallVectorImpl<char>::operator=(v3, (a2 + 8));
  }

  return a1;
}

uint64_t *llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(uint64_t *a1)
{
  if (a1[7])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    v3 = a1[1];
    if (v3 != a1 + 4)
    {
      free(v3);
    }
  }

  return a1;
}

uint64_t std::vector<llvm::orc::shared::AllocActionCallPair>::__emplace_back_slow_path<llvm::orc::shared::AllocActionCallPair>(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>>(a1, v6);
  }

  v7 = 112 * v2;
  std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,void,0>(v7, a2);
  v8 = v7 + 112;
  v9 = *(a1 + 8);
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>,llvm::orc::shared::AllocActionCallPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<llvm::orc::shared::AllocActionCallPair>::~__split_buffer(v14);
  return v8;
}

uint64_t std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 32;
  result = a1 + 8;
  v5 = xmmword_2750C12E0;
  *(a1 + 16) = xmmword_2750C12E0;
  if (*(a2 + 16))
  {
    result = llvm::SmallVectorImpl<char>::operator=(result, (a2 + 8));
    v5 = xmmword_2750C12E0;
  }

  v6 = *(a2 + 56);
  *(a1 + 64) = a1 + 88;
  v7 = a1 + 64;
  *(v7 - 8) = v6;
  *(v7 + 8) = v5;
  if (*(a2 + 72))
  {

    return llvm::SmallVectorImpl<char>::operator=(v7, (a2 + 64));
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::AllocActionCallPair>,llvm::orc::shared::AllocActionCallPair*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,void,0>(a4, v7);
      v7 += 112;
      a4 += 112;
    }

    while (v7 != a3);
    do
    {
      std::__destroy_at[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,0>(v6);
      v6 += 14;
    }

    while (v6 != a3);
  }
}

void std::__destroy_at[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,0>(void *a1)
{
  v2 = a1[8];
  if (v2 != a1 + 11)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3 != a1 + 4)
  {

    free(v3);
  }
}

uint64_t std::__split_buffer<llvm::orc::shared::AllocActionCallPair>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    std::__destroy_at[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,0>((i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<char>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, v4);
      }
    }

    else
    {
      if (*(a1 + 16) >= v4)
      {
        if (v5)
        {
          memmove(*a1, *a2, *(a1 + 8));
        }
      }

      else
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v4, 1);
        v5 = 0;
      }

      v6 = *(a2 + 8);
      if (v6 != v5)
      {
        memcpy((*a1 + v5), (*a2 + v5), v6 - v5);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

BOOL llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>>,std::vector<llvm::orc::shared::AllocActionCallPair>,void>::serialize(void *a1, void *a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4);
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 1;
  }

  do
  {
    result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>::serialize<llvm::orc::shared::WrapperFunctionCall,llvm::orc::shared::WrapperFunctionCall>(a1, v4, v4 + 7);
    if (!result)
    {
      break;
    }

    v4 += 14;
  }

  while (v4 != v5);
  return result;
}

BOOL llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>::serialize<llvm::orc::shared::WrapperFunctionCall,llvm::orc::shared::WrapperFunctionCall>(void *a1, void *a2, void *a3)
{
  result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>::serialize<llvm::orc::ExecutorAddr,llvm::SmallVector<char,24u>>(a1, a2, (a2 + 1));
  if (result)
  {

    return llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>::serialize<llvm::orc::ExecutorAddr,llvm::SmallVector<char,24u>>(a1, a3, (a3 + 1));
  }

  return result;
}

BOOL llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>::serialize<llvm::orc::ExecutorAddr,llvm::SmallVector<char,24u>>(void *a1, void *a2, uint64_t a3)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = *a2;
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  return llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,llvm::SmallVector<char,24u>,void>::serialize(a1, a3);
}

BOOL llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,llvm::SmallVector<char,24u>,void>::serialize(void *a1, uint64_t a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = *(a2 + 8);
  v2 = (*a1 + 8);
  v3 = a1[1] - 8;
  *a1 = v2;
  a1[1] = v3;
  v4 = *(a2 + 8);
  v5 = v4 == 0;
  if (v4 && v3)
  {
    v6 = *a2;
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      *v2 = v8;
      v2 = (*a1 + 1);
      v9 = a1[1] - 1;
      *a1 = v2;
      a1[1] = v9;
      v5 = v7 == 0;
      if (!v7)
      {
        break;
      }

      --v7;
    }

    while (v9);
  }

  return v5;
}

void std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 14;
        std::__destroy_at[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::orc::ExecutorAddrRange>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        v6 = *a2;
        v7 = *a2 + 24 * v4;
        v8 = *a1;
        do
        {
          *v8 = *v6;
          *(v8 + 8) = *(v6 + 8);
          v6 += 24;
          v8 += 24;
        }

        while (v6 != v7);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        v9 = *a2;
        v10 = *a2 + 24 * v5;
        v11 = *a1;
        do
        {
          *v11 = *v9;
          *(v11 + 8) = *(v9 + 8);
          v9 += 24;
          v11 += 24;
        }

        while (v9 != v10);
LABEL_14:
        v12 = *(a2 + 2) - v5;
        if (v12)
        {
          memcpy((*a1 + 24 * v5), (*a2 + 24 * v5), 24 * v12);
        }

LABEL_16:
        *(a1 + 8) = v4;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 24);
    }

    v5 = 0;
    goto LABEL_14;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>,llvm::DenseMapInfo<llvm::jitlink::JITLinkDylib const*,void>,llvm::detail::DenseMapPair<llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>>>,llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>,llvm::DenseMapInfo<llvm::jitlink::JITLinkDylib const*,void>,llvm::detail::DenseMapPair<llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>>>::LookupBucketFor<llvm::jitlink::JITLinkDylib const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>,llvm::DenseMapInfo<llvm::jitlink::JITLinkDylib const*,void>,llvm::detail::DenseMapPair<llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>>>,llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>,llvm::DenseMapInfo<llvm::jitlink::JITLinkDylib const*,void>,llvm::detail::DenseMapPair<llvm::jitlink::JITLinkDylib const*,std::vector<anonymous namespace::XPCMemoryManager::ReserveRequest>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          v21 = v30;
          *v30 = v20;
          v21[1] = 0;
          v21[2] = 0;
          v21[3] = 0;
          *(v21 + 1) = *(v19 + 8);
          v21[3] = *(v19 + 24);
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          ++*(a1 + 8);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 8;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<anonymous namespace::XPCMemoryManager::ReserveRequest>>::construct[abi:nn200100]<anonymous namespace::XPCMemoryManager::ReserveRequest,anonymous namespace::XPCMemoryManager::ReserveRequest,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = a1 + 56;
  v5 = a1 + 40;
  *(a1 + 48) = 0x400000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v5, a2 + 40);
  }

  return llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 472, (a2 + 472));
}

void **anonymous namespace::XPCMemoryManager::acquireSlab(llvm::jitlink::JITLinkDylib const*,unsigned long long)::$_0::operator()(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *a2;
  v6 = *(a3 + 8);
  if (*a2)
  {
    if (a3[1])
    {
      *a3 = 0;
    }

    *a2 = 0;
  }

  else
  {
    if ((a3[1] & 1) == 0)
    {
      operator new();
    }

    v5 = *a3;
    *a3 = 0;
  }

  *&v9 = v5;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void **anonymous namespace::XPCMemoryManager::failReserveRequests(uint64_t a1, uint64_t a2)
{
  v4[10] = *MEMORY[0x277D85DE8];
  if (v4[0] != v4[1])
  {
    std::operator+<char>();
    getErrorErrorCat();
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::XPCMemoryManager::takePendingReserveRequests(void *a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a2 + 136));
  v9 = 0;
  {
    v6 = v9;
    v7 = *(a2 + 224);
    v8 = *(a2 + 240);
  }

  else
  {
    v7 = *(a2 + 224);
    v8 = *(a2 + 240);
    v6 = v7 + 32 * v8;
  }

  if (v6 == v7 + 32 * v8)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a1 = *(v6 + 8);
    a1[2] = *(v6 + 24);
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 8) = 0;
    *v6 = -8192;
    *(a2 + 232) = vadd_s32(*(a2 + 232), 0x1FFFFFFFFLL);
  }

  std::mutex::unlock((a2 + 136));
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::JITLinkDylib const*,std::unique_ptr<anonymous namespace::XPCMemoryManager::JDLayout>,llvm::DenseMapInfo<llvm::jitlink::JITLinkDylib const*,void>,llvm::detail::DenseMapPair<llvm::jitlink::JITLinkDylib const*,std::unique_ptr<anonymous namespace::XPCMemoryManager::JDLayout>>>,llvm::jitlink::JITLinkDylib const*,std::unique_ptr<anonymous namespace::XPCMemoryManager::JDLayout>,llvm::DenseMapInfo<llvm::jitlink::JITLinkDylib const*,void>,llvm::detail::DenseMapPair<llvm::jitlink::JITLinkDylib const*,std::unique_ptr<anonymous namespace::XPCMemoryManager::JDLayout>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = (v4 + 8);
      do
      {
        v20 = *(v19 - 1);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          *v31 = v20;
          v22 = *v19;
          *v19 = 0;
          v21[1] = v22;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 16;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_2750C1210)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZN12_GLOBAL__N_116XPCMemoryManager11acquireSlabEPKNS_7jitlink12JITLinkDylibEyE3__0JNS2_12ExecutorAddrEyEEEvOT0_SP_OT1_DpRKT2_EUlOT_PKcmE_SO_JSP_yEEEvSZ_SR_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerESZ_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[3];
  operator new();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZN12_GLOBAL__N_116XPCMemoryManager11acquireSlabEPKNS_7jitlink12JITLinkDylibEyE3__0JNS0_12ExecutorAddrEyEEEvOT0_SL_OT1_DpRKT2_EUlOT_PKcmE_SK_JSL_yEEEvSV_SN_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESV_ENUlS13_E_clES13_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EA038;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 40);
  if (v2 >= 9)
  {
    v3 = *(a1 + 32);
LABEL_5:
    free(v3);
    return a1;
  }

  if (!v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZN12_GLOBAL__N_116XPCMemoryManager11acquireSlabEPKNS_7jitlink12JITLinkDylibEyE3__0JNS0_12ExecutorAddrEyEEEvOT0_SL_OT1_DpRKT2_EUlOT_PKcmE_SK_JSL_yEEEvSV_SN_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESV_ENUlS13_E_clES13_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EA038;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 40);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 32);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 32);
  }

  free(v3);
LABEL_7:

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZN12_GLOBAL__N_116XPCMemoryManager11acquireSlabEPKNS_7jitlink12JITLinkDylibEyE3__0JNS0_12ExecutorAddrEyEEEvOT0_SL_OT1_DpRKT2_EUlOT_PKcmE_SK_JSL_yEEEvSV_SN_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESV_ENUlS13_E_clES13_EUlvE_E3runEv(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *v9 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v15 = 0;
  v14 = 0;
  if (v9[1])
  {
    if (v9[1] <= 8)
    {
      v2 = v9;
    }

    else
    {
      v2 = v9[0];
    }
  }

  else
  {
    v10 = v9[0];
    if (v9[0])
    {
      getErrorErrorCat();
      v12 = 3;
      v13 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v2 = v9;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr>,llvm::Expected<llvm::orc::ExecutorAddr>>::deserialize(&v14, v2, v9[1], &v11);
  if (v11)
  {
    v10 = v11;
    v11 = 0;
    LOBYTE(v13) = v15 & 1;
    v3 = v14;
    if (v15)
    {
      v14 = 0;
    }

    v12 = v3;
    if ((v13 & 1) != 0 && v12)
    {
      (*(*v12 + 8))(v12);
    }

    v5 = v10;
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    (*(*v5 + 8))(v5);
    goto LABEL_20;
  }

  v11 = 0;
  LOBYTE(v13) = v15 & 1;
  v4 = v14;
  if (v15)
  {
    v14 = 0;
  }

  v12 = v4;
  if (v13)
  {
    v5 = v12;
    if (v12)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v15)
  {
    v6 = v14;
    v14 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (v9[1] >= 9)
  {
    v7 = v9[0];
LABEL_29:
    free(v7);
    goto LABEL_30;
  }

  if (!v9[1])
  {
    v7 = v9[0];
    if (v9[0])
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v8 = *MEMORY[0x277D85DE8];
}

void llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr>,llvm::Expected<llvm::orc::ExecutorAddr>>::deserialize(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = a2;
  v12[1] = a3;
  v11[0] = 0;
  memset(&v11[8], 0, 32);
  if (!llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr>,llvm::orc::shared::detail::SPSSerializableExpected<llvm::orc::ExecutorAddr>,void>::deserialize(v12, v11))
  {
    getErrorErrorCat();
    v13 = 3;
    v14 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  v8 = *v11;
  *__p = *&v11[16];
  v10 = *&v11[32];
  memset(&v11[16], 0, 24);
  llvm::orc::shared::detail::fromSPSSerializable<llvm::orc::ExecutorAddr>(&v8, &v13);
  llvm::Expected<llvm::orc::ExecutorAddr>::moveAssign<llvm::orc::ExecutorAddr>(a1, &v13);
  if (v14)
  {
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *a4 = 0;
  if ((v11[39] & 0x80000000) != 0)
  {
    operator delete(*&v11[16]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::orc::shared::detail::fromSPSSerializable<llvm::orc::ExecutorAddr>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*result != 1)
  {
    getErrorErrorCat();
    operator new();
  }

  *(a2 + 8) &= ~1u;
  *a2 = *(result + 8);
  return result;
}

BOOL llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr>,llvm::orc::shared::detail::SPSSerializableExpected<llvm::orc::ExecutorAddr>,void>::deserialize(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *(*a1)++;
  a1[1] = v2 - 1;
  *a2 = v4;
  if (v4)
  {
    if ((v2 - 1) >= 8)
    {
      v5 = *(v3 + 1);
      *a1 = v3 + 9;
      a1[1] = v2 - 9;
      *(a2 + 8) = v5;
      return 1;
    }

    return 0;
  }

  return llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::deserialize(a1, (a2 + 16));
}

_BYTE *llvm::Expected<llvm::orc::ExecutorAddr>::moveAssign<llvm::orc::ExecutorAddr>(_BYTE *result, _BYTE *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[8];
    if (v4)
    {
      result = *result;
      *v3 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
        v4 = v3[8];
      }
    }

    v5 = a2[8];
    v3[8] = v4 & 0xFE | v5 & 1;
    v6 = *a2;
    if (v5)
    {
      *a2 = 0;
    }

    *v3 = v6;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 16;
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      v8 = *a1;
      if (v6)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *>(&v12, v4, v4 + 104 * v6, v8);
        v10 = v9;
        v8 = *a1;
        v7 = *(a1 + 8);
      }

      else
      {
        v10 = *a1;
      }

      llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::destroy_range(v10, v8 + 104 * v7);
      goto LABEL_15;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *>(&v13, v4, v4 + 104 * v7, *a1);
LABEL_12:
        llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::uninitialized_move<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>*,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>*>(*a2 + 104 * v7, *a2 + 104 * *(a2 + 8), *a1 + 104 * v7);
LABEL_15:
        *(a1 + 8) = v6;
        llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::destroy_range(*a2, *a2 + 104 * *(a2 + 8));
        *(a2 + 8) = 0;
        return a1;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::destroy_range(*a1, *a1 + 104 * v7);
      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::grow(a1, v6);
    }

    v7 = 0;
    goto LABEL_12;
  }

  return a1;
}

double llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::assignRemote(uint64_t a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::destroy_range(*a1, *a1 + 104 * *(a1 + 8));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 104, &v6);
  llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::uninitialized_move<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>*,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  while (result != a2)
  {
    *a3 = *result;
    v3 = *(result + 8);
    v4 = *(result + 24);
    *(a3 + 40) = *(result + 40);
    *(a3 + 24) = v4;
    *(a3 + 8) = v3;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    *(a3 + 56) = *(result + 56);
    *(a3 + 72) = *(result + 72);
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = *(result + 80);
    *(a3 + 96) = *(result + 96);
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    a3 += 104;
    result += 104;
  }

  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v7 = *(v5 + 8);
    v8 = *(v5 + 24);
    *(a4 + 40) = *(v5 + 40);
    *(a4 + 24) = v8;
    *(a4 + 8) = v7;
    std::vector<llvm::jitlink::Block *>::__move_assign(a4 + 56, (v5 + 56));
    std::vector<llvm::jitlink::Block *>::__move_assign(a4 + 80, (v5 + 80));
    a4 += 104;
    v5 += 104;
  }

  while (v5 != v6);
  return v6;
}

__n128 std::vector<llvm::jitlink::Block *>::__move_assign(uint64_t a1, __n128 *a2)
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

void llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::uninitialized_move<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>*,std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>*>(*a1, *a1 + 104 * *(a1 + 8), a2);
  v3 = *a1;
  v4 = *a1 + 104 * *(a1 + 8);

  llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::destroy_range(v3, v4);
}

void *std::vector<llvm::orc::ExecutorAddr>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(result, a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

BOOL llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSExecutorAddr>,std::vector<llvm::orc::ExecutorAddr>,void>::serialize(void *a1, void *a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = (a2[1] - *a2) >> 3;
  v2 = (*a1 + 8);
  v3 = a1[1] - 8;
  *a1 = v2;
  a1[1] = v3;
  v4 = a2[1];
  v5 = *a2 == v4;
  if (*a2 != v4 && v3 >= 8)
  {
    v6 = *a2 + 8;
    do
    {
      *v2 = *(v6 - 8);
      v2 = (*a1 + 8);
      v7 = a1[1] - 8;
      *a1 = v2;
      a1[1] = v7;
      v5 = v6 == v4;
      if (v6 == v4)
      {
        break;
      }

      v6 += 8;
    }

    while (v7 > 7);
  }

  return v5;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSL_9allocatorISP_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrENSM_ISY_NSQ_ISY_EEEEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_S10_EEEvS1A_S12_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1A_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *a1;
  v5 = *(a1 + 3);
  *__p = *(a1 + 1);
  v7 = v5;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v8, (a1 + 5));
  v9[0] = v2;
  v9[1] = v3;
  operator new();
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8MoveImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSL_9allocatorISP_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrENSM_ISY_NSQ_ISY_EEEEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_S10_EEEvS1A_S12_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1A_EUlS4_E_EEvPvS1L_(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 1) = *(a2 + 16);
  a1[4] = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((a1 + 5), (a2 + 40));
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE11DestroyImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSL_9allocatorISP_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrENSM_ISY_NSQ_ISY_EEEEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_S10_EEEvS1A_S12_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1A_EUlS4_E_EEvPv(void *a1)
{
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a1 + 5);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;

    operator delete(v2);
  }
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSH_9allocatorISL_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrENSI_ISU_NSM_ISU_EEEEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_ST_JSU_SW_EEEvS16_SY_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES16_ENUlS1E_E_clES1E_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EA080;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 80);
  if (v2 >= 9)
  {
    v3 = *(a1 + 72);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 40));
  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 24) = v4;
    operator delete(v4);
  }

  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSH_9allocatorISL_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrENSI_ISU_NSM_ISU_EEEEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_ST_JSU_SW_EEEvS16_SY_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES16_ENUlS1E_E_clES1E_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EA080;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 80);
  if (v2 < 9)
  {
    if (v2 || (v3 = *(a1 + 72)) == 0)
    {
LABEL_7:
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 40));
      v4 = *(a1 + 16);
      if (v4)
      {
        *(a1 + 24) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C69E40);
    }
  }

  else
  {
    v3 = *(a1 + 72);
  }

  free(v3);
  goto LABEL_7;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSH_9allocatorISL_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrENSI_ISU_NSM_ISU_EEEEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_ST_JSU_SW_EEEvS16_SY_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES16_ENUlS1E_E_clES1E_EUlvE_E3runEv(uint64_t a1)
{
  *v11 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v13 = 0;
  if (v11[1])
  {
    if (v11[1] <= 8)
    {
      v2 = v11;
    }

    else
    {
      v2 = v11[0];
    }
  }

  else
  {
    v12[3] = v11[0];
    if (v11[0])
    {
      getErrorErrorCat();
      v12[0] = 3;
      v12[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v2 = v11;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(&v13, v2, v11[1], &v14);
  v3 = v14;
  if (v14)
  {
    v13 = 0;
    v14 = 0;
    v4 = (a1 + 40);
    v12[0] = v3;
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
      v4 = *v4;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v4, v12);
    if (v12[0])
    {
      (*(*v12[0] + 8))(v12[0]);
    }

    v6 = v14;
    if (v14)
    {
LABEL_11:
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v8 = v13;
    v13 = 0;
    if (!v8)
    {
    }

    v9 = (a1 + 40);
    v12[0] = v8;
    v10 = *(a1 + 64);
    if ((v10 & 2) == 0)
    {
      v9 = *v9;
    }

    (*(v10 & 0xFFFFFFFFFFFFFFF8))(v9, v12);
    v6 = v12[0];
    if (v12[0])
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (v11[1] >= 9)
  {
    v7 = v11[0];
LABEL_18:
    free(v7);
    return;
  }

  if (!v11[1])
  {
    v7 = v11[0];
    if (v11[0])
    {
      goto LABEL_18;
    }
  }
}

void std::vector<llvm::orc::ExecutorAddr>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t *llvm::Expected<std::pair<int,std::string>>::~Expected(uint64_t *a1)
{
  if (a1[4])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

  return a1;
}

uint64_t _GLOBAL__sub_I_XPCExecutorProcessControl_cpp()
{
}

void *llvm::detail::IEEEFloat::assign(void *this, uint64_t *a2)
{
  v2 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v2;
  v3 = *(a2 + 20);
  v4 = v3 & 7;
  *(this + 20) = v2 & 0xF8 | v3 & 7;
  *(this + 4) = *(a2 + 4);
  v6 = (v3 & 6) != 0 && v4 != 3;
  if (v4 == 1 || v6)
  {
    return llvm::detail::IEEEFloat::copySignificand(this, a2);
  }

  return this;
}

void *llvm::detail::IEEEFloat::copySignificand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = a1 + 1;
  v4 = *(v3 + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v5 = *(*a2 + 8) - 64;
  v8 = a2[1];
  v6 = a2 + 1;
  v7 = v8;
  if (v5 >= 0xFFFFFF80)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 0xFFFFFFBF)
  {
    v10 = (v4 + 64) >> 6;
    do
    {
      v11 = *v9++;
      *result++ = v11;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::makeNaN(llvm::detail::IEEEFloat *this, int a2, int a3, const llvm::APInt *a4)
{
  v4 = a4;
  v7 = *(this + 20) & 0xF0;
  if (a3)
  {
    v8 = 9;
  }

  else
  {
    v8 = 1;
  }

  *(this + 20) = v7 | v8;
  v9 = *this;
  v10 = *(*this + 16);
  if (v10 == 1)
  {
    if (v9[5] == 2)
    {
      v11 = v9[1] - 1;
    }

    else
    {
      v11 = *v9;
    }
  }

  else
  {
    v11 = *v9 + 1;
  }

  *(this + 4) = v11;
  v12 = v9[2];
  v13 = (this + 8);
  if (v12 - 64 <= 0xFFFFFF7F)
  {
    v13 = *v13;
  }

  v14 = v12 + 64;
  v15 = (v12 + 64) >> 6;
  v35 = 1;
  v34 = 0;
  if (v10 == 1)
  {
    if (v9[5] == 2)
    {
      *(this + 20) = v7 | 9;
      v16 = v9[2] - 1;
      v17 = 0;
    }

    else
    {
      v16 = v12 - 1;
      v17 = -1;
    }

    llvm::APInt::APInt(&v32, v16, v17);
    a2 = 0;
    result = v32;
    v34 = v32;
    v20 = v33;
    v35 = v33;
    v4 = &v34;
    v19 = v33;
  }

  else
  {
    if (!a4)
    {
      *v13 = 0;
      if (v14 >= 0x80)
      {
        bzero(v13 + 8, 8 * (v15 - 1));
      }

      result = 0;
      v29 = v12 - 2;
      v20 = 1;
      v26 = v12;
      if (a2)
      {
        goto LABEL_32;
      }

LABEL_42:
      if (v9[5] == 2)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    result = 0;
    v19 = *(a4 + 2);
    v20 = 1;
  }

  v21 = (v19 + 63) >> 6;
  if (v15 > v21)
  {
    *v13 = 0;
    if (v14 >= 0x80)
    {
      v22 = result;
      bzero(v13 + 8, 8 * (v15 - 1));
      result = v22;
    }
  }

  if (v19 >= 0x41)
  {
    v4 = *v4;
  }

  if (v15 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v15;
  }

  if (v23)
  {
    v24 = v13;
    do
    {
      v25 = *v4;
      v4 = (v4 + 8);
      *v24++ = v25;
      --v23;
    }

    while (v23);
  }

  v9 = *this;
  v26 = *(*this + 8);
  v27 = (v26 - 1) >> 6;
  *(v13 + v27) &= ~(-1 << (v26 - 1));
  for (i = v27 + 1; v15 != i; ++i)
  {
    *(v13 + i) = 0;
  }

  v29 = v26 - 2;
  if (!a2)
  {
    goto LABEL_42;
  }

LABEL_32:
  *(v13 + (v29 >> 6)) &= ~(1 << v29);
  if (v12 <= 0xFFFFFFBF)
  {
    v30 = *v13;
    if (*v13)
    {
      goto LABEL_44;
    }

    while (v15 - 1 != v30)
    {
      if (*(v13 + ++v30))
      {
        if (v30 >= v15)
        {
          break;
        }

        goto LABEL_44;
      }
    }
  }

  v29 = v26 - 3;
LABEL_43:
  *(v13 + (v29 >> 6)) |= 1 << v29;
LABEL_44:
  if (v9 == &llvm::semX87DoubleExtended)
  {
    *(v13 + ((v26 - 1) >> 6)) |= 1 << (v26 - 1);
  }

  if (v20 >= 0x41)
  {
    if (result)
    {
      return MEMORY[0x277C69E10](result, 0x1000C8000313F17);
    }
  }

  return result;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::operator=(llvm::detail::IEEEFloat *this, llvm::detail::IEEEFloat *a2)
{
  if (this != a2)
  {
    v4 = *a2;
    if (*this != *a2)
    {
      if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
      {
        v5 = *(this + 1);
        if (v5)
        {
          MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
          v4 = *a2;
        }
      }

      *this = v4;
      if ((*(v4 + 8) + 64) >= 0x80)
      {
        operator new[]();
      }
    }

    llvm::detail::IEEEFloat::assign(this, a2);
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      MEMORY[0x277C69E10](v4, 0x1000C8000313F17);
    }
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 20) & 0xF8 | *(a2 + 20) & 7;
  *(a1 + 20) = v5;
  *(a1 + 20) = v5 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return a1;
}

BOOL llvm::detail::IEEEFloat::isDenormal(llvm::detail::IEEEFloat *this)
{
  v1 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v1 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return ((v3[(v2 - 1) >> 6] >> (v2 - 1)) & 1) == 0;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnes(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  v5 = (v4 >> 6) - 1;
  if (v4 >> 6 == 1)
  {
    v5 = 0;
    return (v1[v5] | (-1 << v4)) == -1;
  }

  else
  {
    v6 = (v4 >> 6) - 1;
    v7 = v1;
    while (1)
    {
      v8 = *v7++;
      if (v8 != -1)
      {
        break;
      }

      if (!--v6)
      {
        return (v1[v5] | (-1 << v4)) == -1;
      }
    }

    return 0;
  }
}

uint64_t llvm::detail::IEEEFloat::compare(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *(this + 20);
  v4 = *(a2 + 20);
  v5 = 4 * (v3 & 7) + (v4 & 7);
  result = 3;
  if (v5 > 7)
  {
    if (v5 > 11)
    {
      if (v5 > 13)
      {
        if (v5 != 14)
        {
          return 1;
        }
      }

      else if (v5 != 12)
      {
        return result;
      }
    }

    else
    {
      if (v5 > 9)
      {
        if (v5 == 10)
        {
          v10 = (v3 >> 3) & 1;
          if (v10 != ((v4 >> 3) & 1))
          {
            return (2 * v10) ^ 2u;
          }

          LODWORD(result) = llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2);
          if (result == 2)
          {
            v11 = 0;
          }

          else
          {
            v11 = result;
          }

          if (result)
          {
            v12 = v11;
          }

          else
          {
            v12 = 2;
          }

          if ((v3 & 8) != 0)
          {
            return v12;
          }

          else
          {
            return result;
          }
        }

        return ~(v3 >> 2) & 2;
      }

      if (v5 != 8)
      {
        return result;
      }
    }

    return (v4 >> 2) & 2;
  }

  if (v5 > 3)
  {
    return result;
  }

  if ((v5 - 2) < 2)
  {
    return ~(v3 >> 2) & 2;
  }

  v7 = (v3 >> 3) & 1;
  v8 = v7 == ((v4 >> 3) & 1);
  v9 = (2 * v7) ^ 2;
  if (v8)
  {
    v9 = 1;
  }

  if (v5)
  {
    return 3;
  }

  else
  {
    return v9;
  }
}

BOOL llvm::detail::IEEEFloat::bitwiseIsEqual(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *a2;
  if (*this != *a2)
  {
    return 0;
  }

  v3 = *(this + 20);
  v4 = *(a2 + 20);
  if ((v3 & 7) != (v4 & 7) || ((v4 ^ v3) & 8) != 0)
  {
    return 0;
  }

  v5 = 1;
  if ((v3 & 7) == 0 || (v3 & 7) == 3)
  {
    return v5;
  }

  if ((v3 & 6) != 0 && *(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  v6 = *(*this + 8);
  v7 = (this + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  v8 = v6 + 64;
  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if ((*(v2 + 8) - 64) < 0xFFFFFF80)
  {
    v9 = v10;
  }

  return memcmp(v7, v9, (v8 >> 3) & 0x1FFFFFF8) == 0;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v6 = *(a2 + 8);
  v7 = (a1 + 8);
  if ((v6 - 64) >= 0xFFFFFF80)
  {
    *v7 = 0;
  }

  else
  {
    v8 = *v7;
    *v8 = 0;
    bzero(v8 + 1, 8 * (((v6 + 64) >> 6) - 1));
    v7 = *v7;
  }

  *(a1 + 16) = *(a2 + 8) - 1;
  *v7 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

uint64_t llvm::detail::IEEEFloat::normalize(llvm::detail::IEEEFloat *this, int a2, int a3)
{
  if ((*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3)
  {
    return 0;
  }

  v9 = this + 8;
  v8 = *this;
  v10 = *(*this + 8);
  v11 = this + 8;
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v9;
  }

  v12 = (v10 + 64) >> 6;
  v13 = 64 - (v12 << 6);
  v14 = v12 - 1;
  while (1)
  {
    v15 = *&v11[8 * v14];
    if (v15)
    {
      break;
    }

    v13 += 64;
    if (--v14 == -1)
    {
      goto LABEL_14;
    }
  }

  v16 = (__clz(v15) - v13) ^ 0x3F;
  v17 = v16 + 1;
  if (v16 == -1)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v25 = v17 - v10;
  v26 = *(this + 4);
  v27 = v26 + v25;
  if ((v26 + v25) > *v8)
  {
    goto LABEL_33;
  }

  v31 = v8[1];
  v32 = v31 - v26;
  if (v27 >= v31)
  {
    v33 = v25;
  }

  else
  {
    v33 = v32;
  }

  if ((v33 & 0x80000000) != 0)
  {
    llvm::detail::IEEEFloat::shiftSignificandLeft(this, -v33);
    return 0;
  }

  if (v33)
  {
    v34 = llvm::detail::IEEEFloat::shiftSignificandRight(this, v33);
    if (v34 == 2)
    {
      v35 = 3;
    }

    else
    {
      v35 = v34;
    }

    if (v34)
    {
      v36 = v35;
    }

    else
    {
      v36 = 1;
    }

    if (a3)
    {
      a3 = v36;
    }

    else
    {
      a3 = v34;
    }

    if (v17 >= v33)
    {
      v17 -= v33;
    }

    else
    {
      v17 = 0;
    }

    v8 = *this;
  }

LABEL_15:
  if (v8[4] == 1 && v8[5] == 1 && *(this + 4) == *v8 && llvm::detail::IEEEFloat::isSignificandAllOnes(this))
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    if (!v17)
    {
      v24 = *(this + 20) & 0xF8 | 3;
      *(this + 20) = v24;
      if (v8[5] == 2)
      {
        result = 0;
        *(this + 20) = v24 & 0xF3;
        return result;
      }
    }

    return 0;
  }

  if (!llvm::detail::IEEEFloat::roundAwayFromZero(this, a2, a3, 0))
  {
    v18 = v8[2];
    goto LABEL_35;
  }

  if (!v17)
  {
    *(this + 4) = v8[1];
  }

  llvm::detail::IEEEFloat::incrementSignificand(this);
  v8 = *this;
  v18 = *(*this + 8);
  if ((v18 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v9;
  }

  v19 = (v18 + 64) >> 6;
  v20 = 64 - (v19 << 6);
  v21 = v19 - 1;
  while (1)
  {
    v22 = *&v9[8 * v21];
    if (v22)
    {
      break;
    }

    v20 += 64;
    if (--v21 == -1)
    {
      v23 = -1;
      goto LABEL_59;
    }
  }

  v23 = (__clz(v22) - v20) ^ 0x3F;
LABEL_59:
  if (v23 == v18)
  {
    if (*(this + 4) == *v8)
    {
      if ((*(this + 20) & 8) != 0)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v28 = this;
      goto LABEL_65;
    }

    llvm::detail::IEEEFloat::shiftSignificandRight(this, 1u);
    return 16;
  }

  v17 = v23 + 1;
  if (v8[4] == 1 && v8[5] == 1 && *(this + 4) == *v8 && llvm::detail::IEEEFloat::isSignificandAllOnes(this))
  {
LABEL_33:
    v28 = this;
    v29 = a2;
LABEL_65:

    return llvm::detail::IEEEFloat::handleOverflow(v28, v29);
  }

LABEL_35:
  if (v17 == v18)
  {
    return 16;
  }

  if (!v17)
  {
    v30 = *(this + 20) & 0xF8 | 3;
    *(this + 20) = v30;
    if (v8[5] == 2)
    {
      *(this + 20) = v30 & 0xF3;
    }
  }

  return 24;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, uint64_t a2)
{
  *this = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  llvm::detail::IEEEFloat::makeZero(this, 0);
  return this;
}

void llvm::detail::IEEEFloat::makeZero(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *(this + 20) & 0xF0;
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(this + 20) = v2 | v3 | 3;
  v4 = *this;
  if (*(*this + 20) == 2)
  {
    *(this + 20) = v2 | 3;
  }

  v5 = *(v4 + 8);
  *(this + 4) = *(v4 + 4) - 1;
  if ((v5 - 64) >= 0xFFFFFF80)
  {
    *(this + 1) = 0;
  }

  else
  {
    v6 = *(this + 1);
    *v6 = 0;
    bzero(v6 + 1, 8 * (((v5 + 64) >> 6) - 1));
  }
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *a2;
  *this = *a2;
  if ((*(v3 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  llvm::detail::IEEEFloat::assign(this, a2);
  return this;
}

uint64_t *llvm::detail::IEEEFloat::incrementSignificand(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  result = (this + 8);
  v3 = *(v2 + 8);
  if (v3 - 64 > 0xFFFFFF7F)
  {
    if (v3 > 0xFFFFFFBF)
    {
      return result;
    }
  }

  else
  {
    result = *result;
  }

  v4 = __CFADD__((*result)++, 1);
  if (v4)
  {
    v5 = (v3 + 64) >> 6;
    v6 = result + 1;
    v7 = v5 - 1;
    do
    {
      if (!v7)
      {
        break;
      }

      --v7;
      v4 = __CFADD__((*v6++)++, 1);
    }

    while (v4);
  }

  return result;
}

void *llvm::detail::IEEEFloat::addSignificand(llvm::detail::IEEEFloat *this, uint64_t **a2)
{
  v3 = *this;
  result = (this + 8);
  v4 = *(v3 + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v5 = *(*a2 + 2) - 64;
  v8 = a2[1];
  v6 = (a2 + 1);
  v7 = v8;
  if (v5 >= 0xFFFFFF80)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 0xFFFFFFBF)
  {
    v10 = 0;
    v11 = (v4 + 64) >> 6;
    do
    {
      v12 = *v9++;
      v13 = v12 + *result;
      v14 = __CFADD__(v12, *result);
      v15 = (v13 + 1) <= *result;
      if (v10)
      {
        ++v13;
        v10 = v15;
      }

      else
      {
        v10 = v14;
      }

      *result++ = v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t *llvm::detail::IEEEFloat::subtractSignificand(llvm::detail::IEEEFloat *this, unint64_t **a2, uint64_t a3)
{
  v4 = *this;
  result = (this + 8);
  v5 = *(v4 + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v6 = *(*a2 + 2) - 64;
  v9 = a2[1];
  v7 = (a2 + 1);
  v8 = v9;
  if (v6 >= 0xFFFFFF80)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= 0xFFFFFFBF)
  {
    v11 = (v5 + 64) >> 6;
    do
    {
      v12 = *v10++;
      v13 = *result - v12;
      v14 = *result < v12;
      v15 = *result + ~v12;
      if (a3)
      {
        a3 = v15 >= *result;
      }

      else
      {
        v15 = v13;
        a3 = v14;
      }

      *result++ = v15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t *a1, uint64_t a2, const llvm::detail::IEEEFloat *a3)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 8);
  v34 = 2 * v6;
  v7 = 2 * v6 + 64;
  v8 = (v7 >> 6);
  v37 = v7;
  if (v7 >= 0x140)
  {
    operator new[]();
  }

  v9 = a1 + 1;
  v38 = (a1 + 1);
  if (v6 - 64 <= 0xFFFFFF7F)
  {
    v9 = *v38;
  }

  v10 = (2 * v6) | 1;
  v36 = *(*a1 + 8);
  v11 = (v6 + 64) >> 6;
  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v12 = (a2 + 8);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  llvm::APInt::tcFullMultiply(v45, v9, v12, ((v6 + 64) >> 6), ((v6 + 64) >> 6));
  v13 = 64 - (v8 << 6);
  v14 = v8 - 1;
  v35 = v6;
  while (1)
  {
    v15 = v45[v14];
    if (v15)
    {
      break;
    }

    v13 += 64;
    if (--v14 == -1)
    {
      v16 = 0;
      goto LABEL_13;
    }
  }

  v16 = ((__clz(v15) - v13) ^ 0x3F) + 1;
LABEL_13:
  v17 = *(a2 + 16) + *(a1 + 4) + 2;
  *(a1 + 4) = v17;
  if ((*(a3 + 20) & 7) == 3)
  {
    v18 = 0;
  }

  else
  {
    v33 = *v38;
    if (v34 != v16)
    {
      llvm::APInt::tcShiftLeft(v45, v8, v34 - v16);
      *(a1 + 4) = v17 - (v34 - v16);
    }

    v19 = *(v5 + 16);
    v42 = *v5;
    v43 = v19;
    DWORD2(v42) = v10;
    v20 = v45;
    if (v8 == 1)
    {
      v20 = v45[0];
    }

    *a1 = &v42;
    a1[1] = v20;
    llvm::detail::IEEEFloat::IEEEFloat(&v40, a3);
    llvm::detail::IEEEFloat::convert(&v40, &v42, 0, &v44);
    llvm::detail::IEEEFloat::shiftSignificandRight(&v40, 1u);
    v18 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v40, 0);
    v21 = v8 - 1;
    if (v8 == 1)
    {
      v45[0] = *v38;
    }

    *a1 = v5;
    a1[1] = v33;
    v22 = 64 - (v8 << 6);
    while (1)
    {
      v23 = v45[v21];
      if (v23)
      {
        break;
      }

      v22 += 64;
      if (--v21 == -1)
      {
        v16 = 0;
        goto LABEL_26;
      }
    }

    v16 = ((__clz(v23) - v22) ^ 0x3F) + 1;
LABEL_26:
    if ((*(v40 + 8) - 64) <= 0xFFFFFF7F && v41)
    {
      MEMORY[0x277C69E10](v41, 0x1000C8000313F17);
    }

    v17 = *(a1 + 4);
  }

  v24 = v17 + ~v35;
  *(a1 + 4) = v24;
  v25 = v16 - v35;
  if (v16 > v35)
  {
    v26 = llvm::lostFractionThroughTruncation(v45, ((v16 + 63) >> 6), v16 - v35);
    llvm::APInt::tcShiftRight(v45, ((v16 + 63) >> 6), v25);
    if (v26 == 2)
    {
      v27 = 3;
    }

    else
    {
      v27 = v26;
    }

    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1;
    }

    if (v18)
    {
      v18 = v28;
    }

    else
    {
      v18 = v26;
    }

    *(a1 + 4) = v25 + v24;
  }

  if (v36 <= 0xFFFFFFBF)
  {
    v29 = v45;
    do
    {
      v30 = *v29++;
      *v9++ = v30;
      --v11;
    }

    while (v11);
  }

  if (v37 >= 0x140)
  {
    MEMORY[0x277C69E10](v45, 0x1000C8000313F17);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t llvm::detail::IEEEFloat::convert(uint64_t *a1, uint64_t a2, int a3, _BYTE *a4)
{
  v8 = *a1;
  isSignaling = llvm::detail::IEEEFloat::isSignaling(a1);
  v9 = 0;
  v10 = *(a2 + 8);
  v11 = v10 + 64;
  v12 = *(v8 + 8);
  v13 = v10 - v12;
  if (a2 != &llvm::semX87DoubleExtended && v8 == &llvm::semX87DoubleExtended)
  {
    if ((*(a1 + 20) & 7) != 1)
    {
LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    if ((v12 - 64) > 0xFFFFFF7F)
    {
      v14 = a1[1];
      if (v14 < 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14 = *a1[1];
      if (v14 < 0)
      {
LABEL_8:
        if ((v14 & 0x4000000000000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = 1;
  }

LABEL_11:
  v51 = v9;
  v15 = (v11 >> 6);
  v16 = ((v12 + 64) >> 6);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_12:
    v53 = 0;
    goto LABEL_13;
  }

  v23 = *(a1 + 20) & 7;
  if ((*(a1 + 20) & 6) != 0 && v23 != 3)
  {
    v25 = v12 - 64;
    v26 = a1 + 1;
    if ((v12 - 64) <= 0xFFFFFF7F)
    {
      v26 = *v26;
    }

    v27 = 64 - (v16 << 6);
    v28 = v16 - 1;
    while (1)
    {
      v29 = v26[v28];
      if (v29)
      {
        break;
      }

      v27 += 64;
      if (--v28 == -1)
      {
        v30 = -1;
        goto LABEL_80;
      }
    }

    v30 = (__clz(v29) - v27) ^ 0x3F;
LABEL_80:
    v42 = v30 + 1 - v12;
    v43 = *(a1 + 4);
    v44 = *(a2 + 4);
    if ((v42 + v43) < v44)
    {
      v42 = v44 - v43;
    }

    if ((v42 & 0x80000000) != 0)
    {
      if (v42 <= v13)
      {
        v45 = v13;
      }

      else
      {
        v45 = v42;
      }

      v13 -= v45;
    }

    else
    {
      if (v30 + 1 > -v13)
      {
LABEL_90:
        v50 = a4;
        goto LABEL_91;
      }

      v45 = v30 + v13;
      v13 = -v30;
    }

    *(a1 + 4) = v45 + v43;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

  if (v23 != 1 || *(v8 + 16) == 1)
  {
    goto LABEL_12;
  }

  v50 = a4;
  v25 = v12 - 64;
LABEL_91:
  v46 = (a1 + 1);
  if (v25 <= 0xFFFFFF7F)
  {
    v46 = *v46;
  }

  v53 = llvm::lostFractionThroughTruncation(v46, v16, -v13);
  llvm::APInt::tcShiftRight(v46, v16, -v13);
  a4 = v50;
LABEL_13:
  if (v15 > v16)
  {
    operator new[]();
  }

  if (v15 == 1 && v16 != 1)
  {
    v18 = *(a1 + 20) & 7;
    v20 = (*(a1 + 20) & 6) != 0 && v18 != 3;
    v21 = *(*a1 + 8) - 64;
    if (v18 == 1 || v20)
    {
      v31 = a1 + 1;
      if (v21 <= 0xFFFFFF7F)
      {
        v31 = *v31;
      }

      v22 = *v31;
    }

    else
    {
      v22 = 0;
    }

    if (v21 <= 0xFFFFFF7F)
    {
      v32 = a1[1];
      if (v32)
      {
        MEMORY[0x277C69E10](v32, 0x1000C8000313F17);
      }
    }

    a1[1] = v22;
  }

  *a1 = a2;
  if (v13 >= 1)
  {
    v33 = *(a1 + 20) & 7;
    v34 = (*(a1 + 20) & 6) == 0 || v33 == 3;
    v35 = !v34;
    if (v33 == 1 || v35)
    {
      v37 = (a1 + 1);
      if ((*(a2 + 8) - 64) <= 0xFFFFFF7F)
      {
        v37 = *v37;
      }

      llvm::APInt::tcShiftLeft(v37, v15, v13);
    }
  }

  v38 = *(a1 + 20);
  v39 = v38 & 7;
  if ((v38 & 6) != 0 && v39 != 3)
  {
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v53);
    *a4 = result != 0;
    return result;
  }

  if ((v38 & 7) == 0)
  {
    if (*(*a1 + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v38 >> 3) & 1, 0);
      *a4 = 1;
      return 16;
    }

    goto LABEL_78;
  }

  if (v39 == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      v41 = (*(v8 + 20) != 2) & (v38 >> 3);
      *a4 = v41;
      if (v41)
      {
        result = 16;
      }

      else
      {
        result = 0;
      }

      *(a1 + 20) &= ~8u;
      return result;
    }

LABEL_78:
    result = 0;
    *a4 = 0;
    return result;
  }

  if (v39 != 1)
  {
    goto LABEL_78;
  }

  if (*(*a1 + 16) == 1)
  {
    *a4 = *(v8 + 16) != 1;
    llvm::detail::IEEEFloat::makeNaN(a1, 0, (*(a1 + 20) >> 3) & 1, 0);
    return isSignaling;
  }

  else
  {
    if (*(v8 + 20) == 2 && *(*a1 + 20) != 2)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, 0, 0);
    }

    if (v53)
    {
      v47 = 1;
    }

    else
    {
      v47 = v51;
    }

    *a4 = v47;
    if ((v51 & 1) == 0 && *a1 == &llvm::semX87DoubleExtended)
    {
      *a1[1] |= 0x8000000000000000;
    }

    if (isSignaling)
    {
      if (*(*a1 + 16) == 1)
      {
        return 1;
      }

      else
      {
        v48 = *(*a1 + 8);
        v49 = a1 + 1;
        if ((v48 - 64) <= 0xFFFFFF7F)
        {
          v49 = *v49;
        }

        result = 1;
        v49[(v48 - 2) >> 6] |= 1 << (v48 - 2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::shiftSignificandRight(llvm::detail::IEEEFloat *this, unsigned int a2)
{
  *(this + 4) += a2;
  v3 = *(*this + 8);
  v4 = (this + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  v5 = ((v3 + 64) >> 6);
  v6 = llvm::lostFractionThroughTruncation(v4, v5, a2);
  llvm::APInt::tcShiftRight(v4, v5, a2);
  return v6;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  v5 = *(this + 4);
  v6 = *(a2 + 4);
  v7 = v5 - v6;
  if (((((*(a2 + 20) ^ *(this + 20)) & 8) == 0) ^ a3))
  {
    if (v7 < 1)
    {
      v10 = llvm::detail::IEEEFloat::shiftSignificandRight(this, v6 - v5);
      llvm::detail::IEEEFloat::addSignificand(this, a2);
      return v10;
    }

    llvm::detail::IEEEFloat::IEEEFloat(&v17, a2);
    v8 = llvm::detail::IEEEFloat::shiftSignificandRight(&v17, v5 - v6);
    llvm::detail::IEEEFloat::addSignificand(this, &v17);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v17, a2);
    if (v5 == v6)
    {
      v9 = 0;
    }

    else if (v7 < 1)
    {
      v9 = llvm::detail::IEEEFloat::shiftSignificandRight(this, ~v7);
      v12 = *(v17 + 2);
      if ((v12 - 64) >= 0xFFFFFF80)
      {
        v13 = &v18;
      }

      else
      {
        v13 = v18;
      }

      llvm::APInt::tcShiftLeft(v13, ((v12 + 64) >> 6), 1u);
      --v19;
    }

    else
    {
      v9 = llvm::detail::IEEEFloat::shiftSignificandRight(&v17, v7 - 1);
      llvm::detail::IEEEFloat::shiftSignificandLeft(this, 1u);
    }

    v14 = llvm::detail::IEEEFloat::compareAbsoluteValue(this, &v17);
    v15 = v9 != 0;
    if (v14)
    {
      llvm::detail::IEEEFloat::subtractSignificand(this, &v17, v15);
    }

    else
    {
      llvm::detail::IEEEFloat::subtractSignificand(&v17, this, v15);
      llvm::detail::IEEEFloat::copySignificand(this, &v17);
      *(this + 20) ^= 8u;
    }

    if (v9 == 3)
    {
      v16 = 1;
    }

    else
    {
      v16 = v9;
    }

    if (v9 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = v16;
    }
  }

  if ((*(v17 + 2) - 64) <= 0xFFFFFF7F)
  {
    if (v18)
    {
      MEMORY[0x277C69E10](v18, 0x1000C8000313F17);
    }
  }

  return v8;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  llvm::detail::IEEEFloat::IEEEFloat(&v6, *this);
  v4 = llvm::detail::IEEEFloat::multiplySignificand(this, a2, &v6);
  if ((*(v6 + 8) - 64) <= 0xFFFFFF7F && v7)
  {
    MEMORY[0x277C69E10](v7, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v3 = (this + 8);
  v4 = *(*this + 8);
  if (v4 - 64 <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v5 = a2 + 8;
  }

  else
  {
    v5 = *(a2 + 1);
  }

  v6 = v4 + 64;
  v7 = (v4 + 64) >> 6;
  if (v4 + 64 >= 0xC0)
  {
    operator new[]();
  }

  v8 = &v45[v7];
  if (v4 <= 0xFFFFFFBF)
  {
    v10 = 0;
    do
    {
      v45[v10] = v3[v10];
      *(v8 + v10) = *&v5[8 * v10];
      v3[v10++] = 0;
    }

    while (v7 != v10);
    v9 = *(*this + 8);
  }

  else
  {
    v9 = *(*this + 8);
  }

  v11 = *(this + 4) - *(a2 + 4);
  *(this + 4) = v11;
  v12 = 64 - (v7 << 6);
  v13 = v7 - 1;
  v14 = v7 - 1;
  while (1)
  {
    v15 = *(v8 + v14);
    if (v15)
    {
      break;
    }

    v12 += 64;
    if (--v14 == -1)
    {
      v16 = 0;
      goto LABEL_18;
    }
  }

  v16 = (__clz(v15) - v12) ^ 0xFFFFFFC0;
LABEL_18:
  v17 = v16 + v9;
  if (v16 + v9)
  {
    *(this + 4) = v17 + v11;
    llvm::APInt::tcShiftLeft(v8, (v6 >> 6), v17);
  }

  v18 = 64 - (v7 << 6);
  while (1)
  {
    v19 = v45[v13];
    if (v19)
    {
      break;
    }

    v18 += 64;
    if (--v13 == -1)
    {
      v20 = 0;
      goto LABEL_25;
    }
  }

  v20 = (__clz(v19) - v18) ^ 0xFFFFFFC0;
LABEL_25:
  v21 = v20 + v9;
  if (v20 + v9)
  {
    *(this + 4) -= v21;
    llvm::APInt::tcShiftLeft(v45, (v6 >> 6), v21);
  }

  v22 = v8 - 8;
  v23 = (v4 + 64) >> 6;
  while (v23 * 8)
  {
    v24 = v45[v23 - 1];
    v25 = *&v22[v23 * 8];
    --v23;
    if (v24 != v25)
    {
      if (v24 <= v25)
      {
        --*(this + 4);
        llvm::APInt::tcShiftLeft(v45, (v6 >> 6), 1u);
      }

      break;
    }
  }

  v26 = v7;
  if (!v9)
  {
    goto LABEL_48;
  }

  do
  {
    v27 = v7;
    while (v27 * 8)
    {
      v28 = v45[v27 - 1];
      v29 = *&v22[v27 * 8];
      --v27;
      if (v28 != v29)
      {
        if (v28 <= v29)
        {
          --v9;
          goto LABEL_45;
        }

        break;
      }
    }

    if (v4 <= 0xFFFFFFBF)
    {
      v30 = 0;
      v31 = v45;
      v32 = &v45[v7];
      v33 = v6 >> 6;
      do
      {
        v34 = *v32++;
        v35 = *v31 - v34;
        v36 = *v31 < v34;
        v37 = *v31 + ~v34;
        if (v30)
        {
          v30 = v37 >= *v31;
        }

        else
        {
          v37 = v35;
          v30 = v36;
        }

        *v31++ = v37;
        --v33;
      }

      while (v33);
    }

    --v9;
    v3[v9 >> 6] |= 1 << v9;
LABEL_45:
    llvm::APInt::tcShiftLeft(v45, (v6 >> 6), 1u);
  }

  while (v9);
  do
  {
LABEL_48:
    if (!(v26 * 8))
    {
      v40 = 2;
      goto LABEL_61;
    }

    v38 = v45[v26 - 1];
    v39 = *&v22[v26 * 8];
    --v26;
  }

  while (v38 == v39);
  if (v38 <= v39)
  {
    if (v4 > 0xFFFFFFBF)
    {
      v40 = 0;
      goto LABEL_63;
    }

    v41 = v45[0];
    if (v45[0])
    {
      v40 = 1;
    }

    else
    {
      while (v7 - 1 != v41)
      {
        if (v45[++v41])
        {
          goto LABEL_60;
        }
      }

      v41 = v6 >> 6;
LABEL_60:
      v40 = v41 < v7;
    }
  }

  else
  {
    v40 = 3;
  }

LABEL_61:
  if (v6 >= 0xC0)
  {
    MEMORY[0x277C69E10](v45, 0x1000C8000313F17, v21);
  }

LABEL_63:
  v43 = *MEMORY[0x277D85DE8];
  return v40;
}

void llvm::detail::IEEEFloat::shiftSignificandLeft(llvm::detail::IEEEFloat *this, unsigned int a2)
{
  v5 = *this;
  v4 = (this + 8);
  v6 = *(v5 + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  llvm::APInt::tcShiftLeft(v4, ((v6 + 64) >> 6), a2);
  *(this + 4) -= a2;
}

uint64_t llvm::detail::IEEEFloat::compareAbsoluteValue(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 4) - *(a2 + 4);
  if (v2)
  {
    if (v2 < 1)
    {
      return v2 >= 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v4 = *this;
    v3 = (this + 8);
    v5 = *(v4 + 8);
    if ((v5 - 64) <= 0xFFFFFF7F)
    {
      v3 = *v3;
    }

    v6 = *(*a2 + 8) - 64;
    v9 = *(a2 + 1);
    v7 = a2 + 8;
    v8 = v9;
    if (v6 >= 0xFFFFFF80)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    v11 = (v5 + 64) >> 6;
    v12 = v10 - 8;
    for (i = 8 * v11; ; i -= 8)
    {
      v14 = i;
      if (!i)
      {
        break;
      }

      v15 = v3[i / 8 - 1];
      v16 = *&v12[i];
      if (v15 != v16)
      {
        if (v15 > v16)
        {
          return 2;
        }

        return v14 == 0;
      }
    }

    return v14 == 0;
  }
}

uint64_t llvm::detail::IEEEFloat::handleOverflow(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v3 = *(this + 20);
      if ((v3 & 8) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (a2 != 4)
    {
      goto LABEL_8;
    }

LABEL_18:
    v10 = *(this + 20);
    if (*(*this + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(this, 0, (v10 >> 3) & 1, 0);
    }

    else
    {
      *(this + 20) = v10 & 0xF8;
    }

    return 20;
  }

  if (a2 == 1)
  {
    goto LABEL_18;
  }

  if (a2 != 2)
  {
LABEL_8:
    v3 = *(this + 20);
    goto LABEL_10;
  }

  v3 = *(this + 20);
  if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  *(this + 20) = v3 & 0xF8 | 2;
  v4 = *this;
  *(this + 4) = **this;
  v5 = *(v4 + 8);
  v6 = (this + 8);
  v7 = (this + 8);
  if (v5 - 64 <= 0xFFFFFF7F)
  {
    v7 = *v6;
  }

  llvm::detail::tcSetLeastSignificantBits(v7, ((v5 + 64) >> 6), v5);
  v8 = *this;
  if (*(*this + 16) == 1 && *(v8 + 20) == 1)
  {
    if ((*(v8 + 8) - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    *v6 = (*v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  return 16;
}

void llvm::detail::tcSetLeastSignificantBits(llvm::detail *this, unint64_t *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a3 - 65;
  if (a3 < 0x41)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  memset(this, 255, 8 * (v6 >> 6) + 8);
  v7 = (v6 >> 6) + 1;
  v8 = v3 - (v6 & 0xFFFFFFC0);
  LOBYTE(v3) = v8 - 64;
  if (v8 != 64)
  {
LABEL_5:
    *(this + v7++) = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  }

LABEL_6:
  if (v7 < v4)
  {

    bzero(this + 8 * v7, 8 * (~v7 + v4) + 8);
  }
}

BOOL llvm::detail::IEEEFloat::roundAwayFromZero(uint64_t *a1, int a2, int a3, unsigned int a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0;
    }

    if (a3 == 3)
    {
      return 1;
    }

    if (a3 != 2 || (*(a1 + 20) & 7) == 3)
    {
      return 0;
    }

    v7 = *a1;
    v6 = a1 + 1;
    if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    return (v6[a4 >> 6] >> a4) & 1;
  }

  else if (a2 == 2)
  {
    return (*(a1 + 20) & 8) == 0;
  }

  else
  {
    if (a2 == 3)
    {
      return (*(a1 + 20) >> 3) & 1;
    }

    return (a3 & 0xFFFFFFFE) == 2;
  }
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  result = 0;
  v7 = *(this + 20);
  v8 = *(a2 + 20);
  v9 = 4 * (v7 & 7) + (v8 & 7);
  if (v9 > 7)
  {
    if (v9 > 11)
    {
      if (v9 > 13)
      {
        if (v9 != 14)
        {
          return result;
        }

        llvm::detail::IEEEFloat::assign(this, a2);
        result = 0;
        if (a3 != (*(a2 + 20) & 8) >> 3)
        {
          v14 = 8;
        }

        else
        {
          v14 = 0;
        }

        v13 = v14 | *(this + 20) & 0xF7;
        goto LABEL_31;
      }

      if (v9 != 12)
      {
LABEL_10:
        llvm::detail::IEEEFloat::assign(this, a2);
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 > 9)
      {
        if (v9 == 10)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      if (v9 != 8)
      {
        goto LABEL_10;
      }
    }

    result = 0;
    *(this + 20) = v7 & 0xF8;
    if (a3 != (*(a2 + 20) & 8) >> 3)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v7 & 0xF0;
LABEL_31:
    *(this + 20) = v13;
    return result;
  }

  if (v9 <= 3)
  {
    if ((v9 - 2) < 2)
    {
      return result;
    }

    if (!v9)
    {
      if (((((v8 ^ v7) & 8) == 0) ^ a3))
      {
        return 0;
      }

      llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
      return 1;
    }

    goto LABEL_10;
  }

LABEL_11:
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v10 = *(*this + 8);
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  result = 1;
  v11[(v10 - 2) >> 6] |= 1 << (v10 - 2);
  return result;
}

BOOL llvm::detail::IEEEFloat::isSignaling(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 7) != 1 || *(*this + 16) == 1)
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return ((v3[(v2 - 2) >> 6] >> (v2 - 2)) & 1) == 0;
}

BOOL llvm::detail::IEEEFloat::multiplySpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = *(this + 20);
  v5 = *(a2 + 20);
  v6 = 4 * (v4 & 7) + (v5 & 7);
  if (v6 <= 7)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        v7 = v6 == 1;
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    if ((v6 - 4) < 4)
    {
      goto LABEL_19;
    }

LABEL_17:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v6 <= 11)
  {
    if (v6 <= 9)
    {
      if (v6 == 8)
      {
LABEL_12:
        result = 0;
        v9 = v4 & 0xF8;
LABEL_26:
        *(this + 20) = v9;
        return result;
      }

      goto LABEL_18;
    }

    if (v6 == 10)
    {
      return 0;
    }

LABEL_25:
    result = 0;
    v9 = v4 & 0xF8 | 3;
    goto LABEL_26;
  }

  if ((v6 - 14) < 2)
  {
    goto LABEL_25;
  }

  if (v6 == 12)
  {
    goto LABEL_17;
  }

LABEL_18:
  llvm::detail::IEEEFloat::assign(this, a2);
  v4 = *(this + 20) & 0xF7;
  *(this + 20) = v4;
  v5 = *(a2 + 20);
LABEL_19:
  *(this + 20) = v5 & 8 ^ v4;
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v10 = *(*this + 8);
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  result = 1;
  v11[(v10 - 2) >> 6] |= 1 << (v10 - 2);
  return result;
}

uint64_t llvm::detail::IEEEFloat::divideSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  result = 0;
  v5 = *(this + 20);
  v6 = *(a2 + 20);
  v7 = 4 * (v5 & 7) + (v6 & 7);
  if (v7 > 7)
  {
    if (v7 > 11)
    {
      if (v7 > 13)
      {
        if (v7 == 14)
        {
          return result;
        }

        goto LABEL_23;
      }

      if (v7 == 12)
      {
        return result;
      }
    }

    else
    {
      if (v7 > 9)
      {
        if (v7 != 10)
        {
          if (*(*this + 16) == 1)
          {
            llvm::detail::IEEEFloat::makeNaN(this, 0, (v5 >> 3) & 1, 0);
          }

          else
          {
            *(this + 20) = v5 & 0xF8;
          }

          return 2;
        }

        return result;
      }

      if (v7 == 8)
      {
        result = 0;
        *(this + 20) = v5 & 0xF8 | 3;
        return result;
      }
    }

    goto LABEL_12;
  }

  if (v7 <= 3)
  {
    if ((v7 - 2) < 2)
    {
      return result;
    }

    if (!v7)
    {
LABEL_23:
      llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
      return 1;
    }

LABEL_12:
    llvm::detail::IEEEFloat::assign(this, a2);
    LOBYTE(v5) = *(this + 20) & 0xF7;
    *(this + 20) = v5;
    v6 = *(a2 + 20);
  }

  *(this + 20) = v6 & 8 ^ v5;
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v8 = *(*this + 8);
  v9 = (this + 8);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v9;
  }

  result = 1;
  v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  return result;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtract(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3, int a4)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, a4);
  if (result == 2)
  {
    v9 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, a4);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v9);
  }

  v10 = *(a1 + 20);
  if ((v10 & 7) == 3)
  {
    v11 = *(a2 + 20);
    if ((v11 & 7) != 3 || a4 != ((v11 ^ v10) & 8) >> 3)
    {
      v10 = v10 & 0xF3 | (8 * (a3 == 3));
      *(a1 + 20) = v10;
    }

    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v10 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::multiplySpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::divideSignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::mod(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = 4 * (*(this + 20) & 7) + (*(a2 + 20) & 7);
  if (v4 > 7)
  {
    isSignaling = 0;
    v7 = 1 << v4;
    if ((v7 & 0x5500) != 0)
    {
      goto LABEL_19;
    }

    if ((v7 & 0x2200) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
LABEL_14:
    isSignaling = 1;
    goto LABEL_19;
  }

  if (v4 > 3)
  {
    goto LABEL_12;
  }

  if ((v4 - 2) < 2 || v4 == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  llvm::detail::IEEEFloat::assign(this, a2);
LABEL_12:
  if (llvm::detail::IEEEFloat::isSignaling(this))
  {
    if (*(*this + 16) == 1)
    {
      goto LABEL_14;
    }

    v8 = *(*this + 8);
    v9 = (this + 8);
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    isSignaling = 1;
    v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  }

  else
  {
    isSignaling = llvm::detail::IEEEFloat::isSignaling(a2);
  }

LABEL_19:
  v10 = *(this + 20);
  v11 = (v10 & 6) == 0 || (v10 & 7) == 3;
  if (v11 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
  {
    v12 = *(this + 20);
  }

  else
  {
    v12 = *(this + 20);
    if (llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2))
    {
      do
      {
        v16 = llvm::detail::ilogb(this, v15);
        v18 = v16 - llvm::detail::ilogb(a2, v17);
        llvm::detail::IEEEFloat::IEEEFloat(&v24, a2);
        llvm::detail::scalbn(&v24, v18, 1, &v26);
        if ((*(v24 + 8) - 64) <= 0xFFFFFF7F && v25)
        {
          MEMORY[0x277C69E10](v25, 0x1000C8000313F17);
        }

        v19 = v28;
        if ((v28 & 7) == 1 || !llvm::detail::IEEEFloat::compareAbsoluteValue(this, &v26))
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v20, a2);
          llvm::detail::scalbn(&v20, v18 - 1, 1, &v22);
          llvm::detail::IEEEFloat::operator=(&v26, &v22);
          if ((*(v22 + 8) - 64) <= 0xFFFFFF7F && v23)
          {
            MEMORY[0x277C69E10](v23, 0x1000C8000313F17);
          }

          if ((*(v20 + 8) - 64) <= 0xFFFFFF7F && v21)
          {
            MEMORY[0x277C69E10](v21, 0x1000C8000313F17);
          }

          v19 = v28;
        }

        v28 = v19 & 0xF7 | *(this + 20) & 8;
        isSignaling = llvm::detail::IEEEFloat::addOrSubtract(this, &v26, 1, 1);
        if ((*(v26 + 8) - 64) <= 0xFFFFFF7F && v27)
        {
          MEMORY[0x277C69E10](v27, 0x1000C8000313F17);
        }

        v12 = *(this + 20);
      }

      while ((v12 & 6) != 0 && (v12 & 7) != 3 && (*(a2 + 20) & 6) != 0 && (*(a2 + 20) & 7) != 3 && llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2));
    }
  }

  if ((v12 & 7) == 3)
  {
    v13 = v12 & 0xF3 | v10 & 8;
    *(this + 20) = v13;
    if (*(*this + 20) == 2)
    {
      v13 = v12 & 0xF3;
    }

    *(this + 20) = v13;
  }

  return isSignaling;
}

uint64_t llvm::detail::ilogb(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20) & 7;
  if ((*(this + 20) & 7) == 0)
  {
    return 0x7FFFFFFFLL;
  }

  if (v2 == 1)
  {
    return 0x80000000;
  }

  if (v2 == 3)
  {
    return 2147483649;
  }

  if (!llvm::detail::IEEEFloat::isDenormal(this))
  {
    return *(this + 4);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v7, this);
  v5 = *(*this + 8) - 1;
  v9 += v5;
  llvm::detail::IEEEFloat::normalize(&v7, 1, 0);
  v3 = (v9 - v5);
  if ((*(v7 + 8) - 64) <= 0xFFFFFF7F && v8)
  {
    MEMORY[0x277C69E10](v8, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t llvm::detail::scalbn@<X0>(_BYTE *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = **a1 + *(*a1 + 8) + ~*(*a1 + 4);
  v7 = -2 - v6;
  if (v6 + 1 < a2)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = a2;
  }

  if (v7 > a2)
  {
    v8 = v7;
  }

  *(a1 + 4) += v8;
  llvm::detail::IEEEFloat::normalize(a1, a3, 0);
  if ((a1[20] & 7) == 1 && *(*a1 + 16) != 1)
  {
    v9 = *(*a1 + 8);
    v10 = a1 + 8;
    if ((v9 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    v10[(v9 - 2) >> 6] |= 1 << (v9 - 2);
  }

  *a4 = &llvm::semBogus;

  return llvm::detail::IEEEFloat::operator=(a4, a1);
}

uint64_t llvm::detail::IEEEFloat::fusedMultiplyAdd(llvm::detail::IEEEFloat *this, llvm::detail::IEEEFloat *a2, llvm::detail::IEEEFloat *a3, int a4)
{
  v8 = *(this + 20);
  *(this + 20) = *(a2 + 20) & 8 ^ v8;
  v9 = v8 & 6;
  v10 = v8 & 7;
  if (v9)
  {
    v11 = v10 == 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ((*(a2 + 20) & 6) != 0 ? (v12 = (*(a2 + 20) & 7) == 3) : (v12 = 1), v12 || (*(a3 + 20) & 6) == 0))
  {
    if (llvm::detail::IEEEFloat::multiplySpecials(this, a2))
    {
      return 1;
    }

    else
    {

      return llvm::detail::IEEEFloat::addOrSubtract(this, a3, a4, 0);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v17, a3);
    v13 = llvm::detail::IEEEFloat::multiplySignificand(this, a2, &v17);
    if ((*(v17 + 8) - 64) <= 0xFFFFFF7F && v18)
    {
      MEMORY[0x277C69E10](v18, 0x1000C8000313F17);
    }

    LODWORD(result) = llvm::detail::IEEEFloat::normalize(this, a4, v13);
    if (v13)
    {
      result = result | 0x10;
    }

    else
    {
      result = result;
    }

    v15 = *(this + 20);
    if ((v15 & 7) == 3 && (result & 8) == 0 && ((*(a3 + 20) ^ v15) & 8) != 0)
    {
      v16 = v15 & 0xF3;
      *(this + 20) = v16 | (8 * (a4 == 3));
      if (*(*this + 20) != 2)
      {
        v16 |= 8 * (a4 == 3);
      }

      *(this + 20) = v16;
    }
  }

  return result;
}

llvm::APInt **llvm::APInt::operator<<=(llvm::APInt **this, unsigned int a2)
{
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    llvm::APInt::tcShiftLeft(*this, ((v3 + 63) >> 6), a2);
    llvm::APInt::clearUnusedBits(this);
    return this;
  }

  else
  {
    if (v3 == a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = (*this << a2);
    }

    *this = v4;

    return llvm::APInt::clearUnusedBits(this);
  }
}

uint64_t llvm::detail::IEEEFloat::convertFromAPInt(llvm::APInt *this, uint64_t a2, int a3, int a4)
{
  v16 = *(a2 + 8);
  v6 = v16;
  if (v16 > 0x40)
  {
    operator new[]();
  }

  v7 = *a2;
  v15 = *a2;
  v8 = *(this + 20);
  *(this + 20) = v8 & 0xF7;
  if (a3 && ((v15 >> (v6 - 1)) & 1) != 0)
  {
    *(this + 20) = v8 | 8;
    v14 = v6;
    v13 = v7;
    llvm::APInt::flipAllBits(&v13);
    llvm::APInt::operator++(&v13);
    v9 = v14;
    v14 = 0;
    v15 = v13;
    v16 = v9;
    v7 = v13;
  }

  else
  {
    v9 = v6;
  }

  if (v9 >= 0x41)
  {
    v10 = v7;
  }

  else
  {
    v10 = &v15;
  }

  v11 = llvm::detail::IEEEFloat::convertFromUnsignedParts(this, v10, ((v6 + 63) >> 6), a4);
  if (v9 >= 0x41 && v7)
  {
    MEMORY[0x277C69E10](v7, 0x1000C8000313F17);
  }

  return v11;
}

uint64_t llvm::detail::IEEEFloat::convertToSignExtendedInteger(uint64_t a1, llvm::APInt *this, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  *a7 = 0;
  v7 = *(a1 + 20) & 7;
  if (v7 < 2)
  {
    return 1;
  }

  v13 = a4 + 63;
  v14 = (a4 + 63) >> 6;
  if (v7 == 3)
  {
    *this = 0;
    if (v13 >= 0x80)
    {
      bzero(this + 8, 8 * (v14 - 1));
    }

    LOBYTE(v15) = ((*(a1 + 20) >> 3) & 1) == 0;
    goto LABEL_7;
  }

  v17 = (a1 + 8);
  v18 = *(*a1 + 8);
  if ((v18 - 64) <= 0xFFFFFF7F)
  {
    v17 = *v17;
  }

  v19 = *(a1 + 16);
  if ((v19 & 0x80000000) != 0)
  {
    *this = 0;
    if (v13 >= 0x80)
    {
      bzero(this + 8, 8 * (v14 - 1));
    }

    v41 = (v13 >> 6);
    v21 = v18 + ~v19;
    if (!v21)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v19 >= a4)
    {
      return 1;
    }

    v41 = (v13 >> 6);
    v20 = (v19 + 1);
    v21 = v18 - v20;
    if (v18 <= v20)
    {
      v23 = (v13 >> 6);
      llvm::APInt::tcExtract(this, v41, v17, v18, 0);
      llvm::APInt::tcShiftLeft(this, v41, v20 - *(*a1 + 8));
      v27 = 1;
      goto LABEL_32;
    }

    llvm::APInt::tcExtract(this, v41, v17, v20, v18 - v20);
    if (!v21)
    {
      goto LABEL_28;
    }
  }

  v22 = llvm::lostFractionThroughTruncation(v17, ((*(*a1 + 8) + 64) >> 6), v21);
  if (!v22)
  {
LABEL_28:
    v27 = 1;
LABEL_31:
    v23 = v41;
    goto LABEL_32;
  }

  if (!llvm::detail::IEEEFloat::roundAwayFromZero(a1, a6, v22, v21))
  {
    v27 = 0;
    goto LABEL_31;
  }

  v23 = v41;
  if (v13 < 0x40)
  {
    return 1;
  }

  v34 = __CFADD__((*this)++, 1);
  if (v34)
  {
    v24 = 0;
    v25 = this + 8;
    while ((v41 - 1) != v24)
    {
      v26 = *&v25[8 * v24];
      *&v25[8 * v24] = v26 + 1;
      v24 = (v24 + 1);
      if (v26 != -1)
      {
        if (v24 >= v41)
        {
          return 1;
        }

        goto LABEL_27;
      }
    }

    return 1;
  }

LABEL_27:
  v27 = 0;
LABEL_32:
  v28 = 64 - (v23 << 6);
  v29 = v23 - 1;
  while (1)
  {
    v30 = *(this + v29);
    if (v30)
    {
      break;
    }

    v28 += 64;
    if (--v29 == -1)
    {
      v31 = -1;
      goto LABEL_37;
    }
  }

  v31 = (__clz(v30) - v28) ^ 0x3F;
LABEL_37:
  v32 = v31 + 1;
  if ((*(a1 + 20) & 8) == 0)
  {
    v33 = (a5 ^ 1) + a4;
    v34 = v32 >= v33;
    if (v32 < v33)
    {
      v15 = v27;
    }

    else
    {
      v15 = 0;
    }

    if (v34)
    {
      result = 1;
    }

    else
    {
      result = 16;
    }

    if (v15 == 1)
    {
      goto LABEL_7;
    }

    return result;
  }

  if (a5)
  {
    if (v32 == a4)
    {
      if (v13 < 0x40)
      {
LABEL_52:
        v40 = -1;
      }

      else
      {
        v35 = 0;
        v36 = this;
        v37 = v23;
        while (1)
        {
          v39 = *v36;
          v36 = (v36 + 8);
          v38 = v39;
          if (v39)
          {
            break;
          }

          v35 -= 64;
          v37 = (v37 - 1);
          if (!v37)
          {
            goto LABEL_52;
          }
        }

        v40 = __clz(__rbit64(v38)) - v35;
      }

      if (v40 == v31)
      {
        goto LABEL_56;
      }

      return 1;
    }

    if (v32 > a4)
    {
      return 1;
    }
  }

  else if (v31 != -1)
  {
    return 1;
  }

LABEL_56:
  llvm::APInt::tcNegate(this, v23);
  if (v27)
  {
    LOBYTE(v15) = 1;
LABEL_7:
    result = 0;
    *a7 = v15;
    return result;
  }

  return 16;
}

uint64_t llvm::lostFractionThroughTruncation(llvm *this, const unint64_t *a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  v5 = this;
  while (1)
  {
    v7 = *v5;
    v5 = (v5 + 8);
    v6 = v7;
    if (v7)
    {
      break;
    }

    v3 -= 64;
    if (!--v4)
    {
      return 0;
    }
  }

  v8 = __clz(__rbit64(v6));
  if (v8 - v3 >= a3)
  {
    return 0;
  }

  if (v8 - a3 + 1 == v3)
  {
    return 2;
  }

  if (a3 <= a2 << 6 && ((*(this + ((a3 - 1) >> 6)) >> (a3 - 1)) & 1) != 0)
  {
    return 3;
  }

  return 1;
}

uint64_t llvm::detail::IEEEFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  v11 = llvm::detail::IEEEFloat::convertToSignExtendedInteger(a1, a2, a3, a4, a5, a6, a7);
  if (v11 == 1)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v12 = a5;
    }

    else
    {
      v12 = a4 - a5;
    }

    if ((*(a1 + 20) & 7) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    llvm::detail::tcSetLeastSignificantBits(a2, ((a4 + 63) >> 6), v13);
    if ((*(a1 + 20) & 8) != 0 && a5)
    {
      llvm::APInt::tcShiftLeft(a2, ((a4 + 63) >> 6), a4 - 1);
    }
  }

  return v11;
}

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(llvm::APInt *this, llvm *a2, unint64_t *a3, int a4)
{
  *(this + 20) = *(this + 20) & 0xF8 | 2;
  v7 = 64 - (a3 << 6);
  v8 = a3 - 1;
  while (1)
  {
    v9 = *(a2 + v8);
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 == -1)
    {
      v10 = -1;
      goto LABEL_6;
    }
  }

  v10 = (__clz(v9) - v7) ^ 0x3F;
LABEL_6:
  v11 = (v10 + 1);
  v12 = (this + 8);
  v13 = *(*this + 8);
  if ((v13 - 64) <= 0xFFFFFF7F)
  {
    v12 = *v12;
  }

  v14 = v11 - v13;
  if (v11 >= v13)
  {
    *(this + 4) = v10;
    v15 = llvm::lostFractionThroughTruncation(a2, a3, v11 - v13);
    llvm::APInt::tcExtract(v12, ((v13 + 64) >> 6), a2, v13, v14);
  }

  else
  {
    *(this + 4) = v13 - 1;
    llvm::APInt::tcExtract(v12, ((v13 + 64) >> 6), a2, v11, 0);
    v15 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(this, a4, v15);
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString(uint64_t a1, llvm::detail::IEEEFloat *a2, const char *a3, uint64_t a4, int a5)
{
  v46 = *MEMORY[0x277D85DE8];
  *(a2 + 20) = *(a2 + 20) & 0xF8 | 2;
  v10 = *(*a2 + 8);
  if ((v10 - 64) >= 0xFFFFFF80)
  {
    v13 = a2 + 8;
    *(a2 + 4) = 0;
    v12 = (a2 + 16);
    *(a2 + 1) = 0;
  }

  else
  {
    v11 = *(a2 + 1);
    *v11 = 0;
    bzero(v11 + 1, 8 * (((v10 + 64) >> 6) - 1));
    *(a2 + 4) = 0;
    v12 = (a2 + 16);
    v13 = *(a2 + 1);
  }

  v14 = &a3[a4];
  v41 = 0;
  result = llvm::skipLeadingZeroesAndAnyDot(&v44, a3, v14, &v41);
  v16 = v44;
  if ((v45 & 1) == 0)
  {
    v17 = v10 & 0xFFFFFFC0;
    if (v44 != v14)
    {
      v18 = 0;
      v19 = 0;
      v20 = v17 + 64;
      v21 = v41;
      v22 = *(a1 + 8);
      v23 = v44;
      while (1)
      {
        v24 = *v23;
        if (v24 == 46)
        {
          if (v21 != v14)
          {
            v32 = "String contains multiple dots";
            goto LABEL_58;
          }

          v41 = v23;
          v21 = v23++;
        }

        else
        {
          v25 = llvm::hexDigitValue(char)::LUT[v24];
          if (v25 == -1)
          {
            goto LABEL_34;
          }

          ++v23;
          if (v20)
          {
            v20 -= 4;
            *&v13[8 * (v20 >> 6)] |= v25 << v20;
          }

          else
          {
            if ((v19 & 1) == 0)
            {
              if ((v24 - 57) > 0xFFFFFFFFFFFFFFF6)
              {
                if ((llvm::hexDigitValue(char)::LUT[v24] & 7) != 0)
                {
                  v18 = v18 & 0xFFFFFFFF00000000 | 1;
                }

                else
                {
                  v26 = v23;
                  if (v23 == v14)
                  {
LABEL_57:
                    v32 = "Invalid trailing hexadecimal fraction!";
LABEL_58:
                    v42 = v32;
                    v43 = 259;
                    getErrorErrorCat();
                    operator new();
                  }

                  while (1)
                  {
                    v27 = *v26;
                    if (v27 != 48 && v27 != 46)
                    {
                      break;
                    }

                    if (++v26 == v14)
                    {
                      goto LABEL_57;
                    }
                  }

                  v28 = v18 & 0xFFFFFFFF00000000;
                  if (llvm::hexDigitValue(char)::LUT[v27] == -1)
                  {
                    v18 = v28 | (2 * (v24 != 48));
                  }

                  else
                  {
                    if (v24 == 48)
                    {
                      v29 = 1;
                    }

                    else
                    {
                      v29 = 3;
                    }

                    v18 = v29 | v28;
                  }
                }
              }

              else
              {
                v18 = v18 & 0xFFFFFFFF00000000 | 3;
              }
            }

            v20 = 0;
            v19 = 1;
          }
        }

        if (v23 == v14)
        {
          goto LABEL_34;
        }
      }
    }

    LODWORD(v18) = 0;
    v23 = v44;
LABEL_34:
    if (v23 == v14)
    {
      v31 = "Hex strings require an exponent";
      goto LABEL_42;
    }

    if ((*v23 | 0x20) != 0x70)
    {
      v31 = "Invalid character in significand";
      goto LABEL_42;
    }

    if (v23 == a3 || (v30 = v41, v41 != v14) && v23 - a3 == 1)
    {
      v31 = "Significand has no digits";
      goto LABEL_42;
    }

    if (v23 != v16)
    {
      if (v41 == v14)
      {
        v41 = v23;
        v30 = v23;
      }

      v33 = v23 + 1;
      if (v23 + 1 == v14 || ((v34 = *v33, v34 == 45) || v34 == 43) && (v33 = v23 + 2, v23 + 2 == v14))
      {
        v31 = "Exponent has no digits";
        goto LABEL_42;
      }

      if (v33 != v14)
      {
        v35 = 0;
        while (1)
        {
          v36 = *v33 - 48;
          if (v36 >= 0xA)
          {
            break;
          }

          v35 = v36 + 10 * v35;
          if (v35 >= 0x8000)
          {
            goto LABEL_67;
          }

          if (++v33 == v14)
          {
            goto LABEL_62;
          }
        }

        v31 = "Invalid character in exponent";
LABEL_42:
        v42 = v31;
        v43 = 259;
        getErrorErrorCat();
        operator new();
      }

      v35 = 0;
LABEL_62:
      v38 = *(*a2 + 8) - v17 + 4 * (v30 - v16 + ((v30 - v16) >> 31)) - 65;
      if (v38 != v38 || (v34 != 45 ? (v39 = v35) : (v39 = -v35), v40 = v39 + v38, v40 != v40))
      {
LABEL_67:
        if (v34 == 45)
        {
          v40 = -32768;
        }

        else
        {
          v40 = 0x7FFF;
        }
      }

      *v12 = v40;
    }

    result = llvm::detail::IEEEFloat::normalize(a2, a5, v18);
    *(a1 + 8) &= ~1u;
    *a1 = result;
    goto LABEL_59;
  }

  *(a1 + 8) |= 1u;
  *a1 = v16;
LABEL_59:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::skipLeadingZeroesAndAnyDot(uint64_t this, const char *a2, const char *a3, const char **a4)
{
  *a4 = a3;
  if (a2 != a3)
  {
    v4 = a3 - a2;
    while (1)
    {
      v5 = *a2;
      if (v5 != 48)
      {
        break;
      }

      if (++a2 == a3)
      {
        goto LABEL_5;
      }
    }

    if (v5 == 46)
    {
      *a4 = a2;
      if (v4 == 1)
      {
        v8 = "Significand has no digits";
        v9 = 259;
        getErrorErrorCat();
        operator new();
      }

      v6 = a2 + 1;
      while (v6 != a3)
      {
        v7 = *v6++;
        if (v7 != 48)
        {
          a2 = v6 - 1;
          goto LABEL_13;
        }
      }

LABEL_5:
      a2 = a3;
    }
  }

LABEL_13:
  *(this + 8) &= ~1u;
  *this = a2;
  return this;
}

uint64_t llvm::detail::IEEEFloat::roundSignificandWithExponent(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v64[0] = v6;
  v63 = v7;
  v8 = v2;
  v77 = *MEMORY[0x277D85DE8];
  *&v64[1] = 0xFFFF800100007FFFLL;
  v65 = 0;
  v66 = 0;
  v10 = v4 == 1 || v4 == 4;
  v61 = v3;
  v62 = v10;
  v11 = (*(*v2 + 8) + 74) >> 6;
  if (v3 >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = -v3;
  }

  v74 = 390625;
  memset(v73, 0, sizeof(v73));
  v72 = 0u;
  v71 = 0u;
  v13 = 1;
  v70 = 1;
  v67[0] = llvm::powerOf5(unsigned long long *,unsigned int)::firstEightPowers[v12 & 7];
  if (v12 < 8)
  {
    goto LABEL_30;
  }

  v60 = v4;
  v14 = v12 >> 3;
  v15 = v67;
  v16 = &v68;
  v17 = &v74;
  v18 = 1;
  v19 = -1;
  v20 = &v70;
  do
  {
    v21 = *v20;
    if (v21)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = *(&v70 + v19);
      llvm::APInt::tcFullMultiply(v17, v17 - v23, v17 - v23, v23, v23);
      v24 = 2 * v23 - 1;
      if (*(v17 + v24))
      {
        v21 = (2 * v23);
      }

      else
      {
        v21 = v24;
      }

      *v20 = v21;
      if ((v14 & 1) == 0)
      {
LABEL_14:
        v22 = v15;
        goto LABEL_23;
      }
    }

    llvm::APInt::tcFullMultiply(v16, v15, v17, v18, v21);
    v25 = v21 + v18 - 1;
    if (*(v16 + v25))
    {
      v18 = (v21 + v18);
    }

    else
    {
      v18 = v25;
    }

    v22 = v16;
    v16 = v15;
    v15 = v22;
LABEL_23:
    v17 = (v17 + 8 * v21);
    ++v19;
    ++v20;
    v26 = v14 >= 2;
    v14 >>= 1;
  }

  while (v26);
  if (v22 == v67)
  {
    v5 = v60;
    v13 = v18;
  }

  else
  {
    v5 = v60;
    v13 = v18;
    if (v18)
    {
      v27 = v18;
      v28 = v67;
      do
      {
        v29 = *v22++;
        *v28++ = v29;
        --v27;
      }

      while (v27);
    }
  }

  do
  {
LABEL_30:
    LODWORD(v65) = (v11 << 6) - 1;
    v30 = v65 - *(*v8 + 8);
    llvm::detail::IEEEFloat::IEEEFloat(&v74, &v64[1]);
    llvm::detail::IEEEFloat::makeZero(&v74, (v8[20] >> 3) & 1);
    llvm::detail::IEEEFloat::IEEEFloat(&v68, &v64[1]);
    v31 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v74, v63, v64[0], 1);
    v32 = v13;
    v33 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v68, v67, v13, 1);
    v76 += v61;
    if (v61 < 0)
    {
      v34 = llvm::detail::IEEEFloat::divideSignificand(&v74, &v68);
      v37 = *(*v8 + 4);
      v36 = v30;
      v38 = v37 - v76;
      if (v37 > v76)
      {
        v36 = v38 + v30;
        if (v38 + v30 >= v65)
        {
          v30 = v65;
        }

        else
        {
          v30 += v38;
        }
      }

      v35 = 2 * ((v33 | v34) != 0);
    }

    else
    {
      v34 = llvm::detail::IEEEFloat::multiplySignificand(&v74, &v68);
      v35 = v33 != 0;
      v36 = v30;
    }

    v39 = v34 != 0;
    if (v31)
    {
      ++v35;
    }

    v40 = 2 * v39;
    v41 = v39 | (2 * v35);
    if (v35)
    {
      v42 = v41;
    }

    else
    {
      v42 = v40;
    }

    if ((*(v74 + 8) - 64) >= 0xFFFFFF80)
    {
      v43 = &v75;
    }

    else
    {
      v43 = v75;
    }

    v44 = (v30 - 1) >> 6;
    v45 = v43[v44] & (0xFFFFFFFFFFFFFFFFLL >> ((v30 - 1) & 0x3F ^ 0x3F));
    v46 = 1 << (v30 - 1);
    if (!v62)
    {
      v46 = 0;
    }

    if (v30 - 1 > 0x3F)
    {
      if (v45 == v46)
      {
        v48 = v44 - 1;
        while (v48)
        {
          if (v43[v48--])
          {
            goto LABEL_60;
          }
        }

        v47 = *v43;
      }

      else if (v45 == v46 - 1)
      {
        v50 = v44 - 1;
        while (v50)
        {
          v51 = v43[v50--];
          if (v51 != -1)
          {
            goto LABEL_60;
          }
        }

        v47 = -*v43;
      }

      else
      {
LABEL_60:
        v47 = -1;
      }
    }

    else
    {
      v47 = v45 - v46;
      if ((v45 - v46) < 0)
      {
        v47 = v46 - v45;
      }
    }

    v52 = 2 * v47;
    if (2 * v47 >= v42)
    {
      v53 = *(*v8 + 8);
      v54 = (v8 + 8);
      if ((v53 - 64) <= 0xFFFFFF7F)
      {
        v54 = *(v8 + 1);
      }

      llvm::APInt::tcExtract(v54, ((v53 + 64) >> 6), v43, (v65 - v30), v30);
      *(v8 + 4) = v76 + v30 + *(*v8 + 8) - v65;
      v55 = *(v74 + 8);
      if ((v55 - 64) >= 0xFFFFFF80)
      {
        v56 = &v75;
      }

      else
      {
        v56 = v75;
      }

      v57 = llvm::lostFractionThroughTruncation(v56, ((v55 + 64) >> 6), v36);
      v60 = llvm::detail::IEEEFloat::normalize(v8, v5, v57);
    }

    if ((*(v68 + 8) - 64) <= 0xFFFFFF7F && v69)
    {
      MEMORY[0x277C69E10](v69, 0x1000C8000313F17);
    }

    if ((*(v74 + 8) - 64) <= 0xFFFFFF7F && v75)
    {
      MEMORY[0x277C69E10](v75, 0x1000C8000313F17);
    }

    v11 *= 2;
    v26 = v52 >= v42;
    v13 = v32;
  }

  while (!v26);
  v58 = *MEMORY[0x277D85DE8];
  return v60;
}

void llvm::detail::IEEEFloat::makeInf(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *this;
  if (*(*this + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(this, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *(this + 20) = *(this + 20) & 0xF0 | v3;
    *(this + 4) = *v2 + 1;
    v4 = v2[2];
    if ((v4 - 64) >= 0xFFFFFF80)
    {
      *(this + 1) = 0;
    }

    else
    {
      v5 = *(this + 1);
      *v5 = 0;
      bzero(v5 + 1, 8 * (((v4 + 64) >> 6) - 1));
    }
  }
}

void llvm::detail::IEEEFloat::convertFromString(llvm::detail::IEEEFloat *this@<X0>, char *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, llvm *a5@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v11 = "Invalid string length";
    goto LABEL_33;
  }

  v7 = a3;
  v8 = a2;
  if (a3 < 3)
  {
    goto LABEL_3;
  }

  if (a3 == 8)
  {
    if (*a2 != 0x5954494E49464E49)
    {
LABEL_35:
      v13 = *a2;
      if (v13 != 45)
      {
        v14 = 0;
        v16 = a2;
        v15 = a3;
        goto LABEL_57;
      }

      v16 = a2 + 1;
      if (a3 == 9)
      {
        if (*v16 != 0x5954494E49464E49)
        {
LABEL_56:
          v15 = a3 - 1;
          v13 = *v16;
          v14 = 1;
          goto LABEL_57;
        }
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_56;
        }

        if ((*v16 != 28265 || a2[3] != 102) && (*v16 != 28233 || a2[3] != 102))
        {
          goto LABEL_56;
        }
      }

      v25 = 1;
LABEL_51:
      llvm::detail::IEEEFloat::makeInf(this, v25);
      goto LABEL_72;
    }

LABEL_50:
    v25 = 0;
    goto LABEL_51;
  }

  if (a3 == 4)
  {
    if (*a2 != 1718503723)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  if (a3 != 3)
  {
    goto LABEL_35;
  }

  if (*a2 == 28265 && a2[2] == 102)
  {
    goto LABEL_50;
  }

  v13 = *a2;
  if (v13 == 45)
  {
    goto LABEL_3;
  }

  v14 = 0;
  v15 = 3;
  v16 = a2;
LABEL_57:
  if ((v13 | 0x20) == 0x73)
  {
    if (--v15 < 3)
    {
      goto LABEL_3;
    }

    ++v16;
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = *v16 == 24942 && v16[2] == 110;
  if (v28 || (*v16 == 24910 ? (v29 = v16[2] == 78) : (v29 = 0), v29))
  {
    v30 = (v16 + 3);
    v31 = v15 - 3;
    v60 = v16 + 3;
    v61 = v15 - 3;
    if (v15 > 3)
    {
      v32 = *v30;
      if (v32 == 40)
      {
        if (v31 < 3 || v16[v15 - 1] != 41)
        {
          goto LABEL_3;
        }

        v30 = (v16 + 4);
        v31 = v15 - 5;
        v60 = v16 + 4;
        v61 = v15 - 5;
        v32 = v16[4];
      }

      if (v32 == 48)
      {
        v33 = v31 - 2;
        if (v31 >= 2 && __tolower(v30[1]) == 120)
        {
          v60 = (v30 + 2);
          v61 = v33;
          v34 = 16;
        }

        else
        {
          v34 = 8;
        }
      }

      else
      {
        v34 = 10;
      }

      v64 = 1;
      v63 = 0;
      if (llvm::StringRef::getAsInteger(&v60, v34, &v63))
      {
        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x277C69E10](v63, 0x1000C8000313F17);
        }

        goto LABEL_3;
      }

      llvm::detail::IEEEFloat::makeNaN(this, v27, v14, &v63);
      if (v64 >= 0x41 && v63)
      {
        MEMORY[0x277C69E10](v63, 0x1000C8000313F17);
      }
    }

    else
    {
      llvm::detail::IEEEFloat::makeNaN(this, v27, v14, 0);
    }

LABEL_72:
    *(a5 + 8) &= ~1u;
    *a5 = 0;
    goto LABEL_146;
  }

LABEL_3:
  *(this + 20) = *(this + 20) & 0xF7 | (8 * (*v8 == 45));
  v10 = *v8;
  if (v10 != 45 && v10 != 43)
  {
    goto LABEL_7;
  }

  if (!--v7)
  {
    v11 = "String has no digits";
LABEL_33:
    v60 = v11;
    v62 = 259;
    getErrorErrorCat();
    operator new();
  }

  ++v8;
LABEL_7:
  if (v7 >= 2 && *v8 == 48 && (v8[1] | 0x20) == 0x78)
  {
    if (v7 == 2)
    {
      v60 = "Invalid string";
      v62 = 259;
      llvm::createError(a5, &v60);
    }

    v26 = *MEMORY[0x277D85DE8];

    llvm::detail::IEEEFloat::convertFromHexadecimalString(a5, this, v8 + 2, v7 - 2, a4);
    return;
  }

  v17 = &v8[v7];
  v59 = &v8[v7];
  llvm::skipLeadingZeroesAndAnyDot(&v63, v8, &v8[v7], &v59);
  v18 = v63;
  if (v64)
  {
    *(a5 + 8) |= 1u;
    *a5 = v18;
    goto LABEL_146;
  }

  v19 = v59;
  v20 = v63;
  if (v63 == v17)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v21 = *v20;
    if (v21 != 46)
    {
      v22 = v20;
      goto LABEL_29;
    }

    if (v19 != v17)
    {
      v35 = "String contains multiple dots";
      goto LABEL_99;
    }

    v22 = v20 + 1;
    v59 = v20;
    if (v20 + 1 == v17)
    {
      break;
    }

    LOBYTE(v21) = *v22;
    v19 = v20;
LABEL_29:
    if ((v21 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_83;
    }

    v20 = v22 + 1;
    if (v22 + 1 == v17)
    {
      goto LABEL_84;
    }
  }

  v19 = v20;
LABEL_83:
  v20 = v22;
LABEL_84:
  if (v20 == v17)
  {
    v36 = 0;
  }

  else
  {
    if ((*v20 | 0x20) != 0x65)
    {
      v35 = "Invalid character in significand";
      goto LABEL_99;
    }

    if (v20 == v8 || v19 != v17 && v20 - v8 == 1)
    {
      v35 = "Significand has no digits";
      goto LABEL_99;
    }

    v42 = v20 + 1;
    if (v20 + 1 == v17 || ((v43 = *v42, v43 == 45) || v43 == 43) && v20 + 2 == v17)
    {
      v36 = 0;
    }

    else
    {
      if (v43 == 45 || (v44 = *v42, v43 == 43))
      {
        v42 = v20 + 2;
        if (v20 + 2 != v17)
        {
          v44 = *v42;
          goto LABEL_110;
        }

        v35 = "Exponent has no digits";
LABEL_99:
        v60 = v35;
        v62 = 259;
        getErrorErrorCat();
        operator new();
      }

LABEL_110:
      v45 = v44 - 48;
      if (v45 > 9)
      {
LABEL_111:
        v35 = "Invalid character in exponent";
        goto LABEL_99;
      }

      v57 = v42 + 1;
      while (v57 != v17)
      {
        v58 = *v57 - 48;
        if (v58 >= 0xA)
        {
          goto LABEL_111;
        }

        v45 = v58 + 10 * v45;
        ++v57;
        if (v45 >> 6 >= 0x177)
        {
          v45 = 24000;
          break;
        }
      }

      if (v43 == 45)
      {
        v36 = -v45;
      }

      else
      {
        v36 = v45;
      }
    }

    if (v19 == v17)
    {
      v59 = v20;
      v19 = v20;
    }
  }

  if (v20 == v63)
  {
    v41 = 0;
  }

  else
  {
    v37 = v8;
    if (v20 != v8)
    {
      while (2)
      {
        v38 = v20 - 1;
        do
        {
          if (v38 == v8)
          {
            v37 = v8;
            goto LABEL_114;
          }

          v40 = *v38--;
          v39 = v40;
        }

        while (v40 == 48);
        if (v39 == 46)
        {
          v20 = v38 + 1;
          continue;
        }

        break;
      }

      v37 = v38 + 1;
    }

LABEL_114:
    v46 = v19 - v37;
    v47 = v19 > v63;
    v48 = v19 >= v37;
    v49 = v19 > v37;
    if (v48)
    {
      v47 = 0;
    }

    v41 = v36 + v46 - v49 + v37 - v63 - v47;
  }

  if (v63 != v17 && (*v63 - 58) > 0xFFFFFFF5)
  {
    if (v41 < 51085)
    {
      v53 = *this;
      if (v41 < -51082 || 28738 * v41 + 28738 <= 8651 * (v53[1] - v53[2]))
      {
        *(this + 20) = *(this + 20) & 0xF8 | 2;
        v54 = v53[2];
        if ((v54 - 64) >= 0xFFFFFF80)
        {
          *(this + 1) = 0;
        }

        else
        {
          v55 = *(this + 1);
          *v55 = 0;
          bzero(v55 + 1, 8 * (((v54 + 64) >> 6) - 1));
        }

        v52 = llvm::detail::IEEEFloat::normalize(this, a4, 1);
        goto LABEL_144;
      }

      if (42039 * v41 - 42039 < 12655 * *v53)
      {
        operator new[]();
      }
    }

    v52 = llvm::detail::IEEEFloat::handleOverflow(this, a4);
LABEL_144:
    v51 = v52;
    goto LABEL_145;
  }

  v50 = *(this + 20) & 0xF8 | 3;
  *(this + 20) = v50;
  v51 = 0;
  if (*(*this + 20) == 2)
  {
    *(this + 20) = v50 & 0xF3;
  }

LABEL_145:
  *(a5 + 8) &= ~1u;
  *a5 = v51;
LABEL_146:
  v56 = *MEMORY[0x277D85DE8];
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(this + 20);
  v5 = v4 & 6;
  v6 = v4 & 7;
  v7 = (v4 >> 3) & 1;
  if (v5)
  {
    v8 = v6 == 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6 == 1)
    {
      LOBYTE(v7) = 0;
    }

    LOBYTE(v15) = v7;
    v9 = *this;
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v17);
    v17 = v6;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int>(&v17, 0, v18, v19, &v15, (v9 + 8));
  }

  else
  {
    v16 = v7;
    v11 = (this + 8);
    v12 = (*this + 8);
    if ((*v12 - 64) >= 0xFFFFFF80)
    {
      v13 = (this + 8);
    }

    else
    {
      v13 = *(this + 1);
    }

    v15 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(v13, v13 + 8 * ((*v12 + 64) >> 6), a3, a4);
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v17);
    v17 = v6;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int,int,llvm::hash_code>(&v17, 0, v18, v19, &v16, v12, v11 + 2, &v15);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      if ((v4 & 7) != 0)
      {
        v13 = *this;
        v12 = (this + 8);
        if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
        {
          v12 = *v12;
        }

        v7 = *v12;
      }

      else
      {
        v7 = 0x8000000000000000;
      }

      v11 = 0x7FFFLL;
    }
  }

  else
  {
    LODWORD(v8) = *(this + 4) + 0x3FFF;
    v10 = *this;
    v9 = (this + 8);
    if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    v7 = *v9;
    if (v8 == 1)
    {
      v8 = v7 >> 63;
    }

    v11 = v8 & 0x7FFF;
  }

  v16[0] = v7;
  v16[1] = v11 & 0xFFFFFFFFFFFF7FFFLL | (((v4 >> 3) & 1) << 15);
  *(a2 + 2) = 80;
  result = llvm::APInt::initFromArray(a2, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v3 = *(*this + 16);
  v15 = **this;
  v16 = v3;
  DWORD1(v15) = -1022;
  llvm::detail::IEEEFloat::IEEEFloat(&v13, this);
  llvm::detail::IEEEFloat::convert(&v13, &v15, 1, &v17);
  llvm::detail::IEEEFloat::IEEEFloat(&v10, &v13);
  llvm::detail::IEEEFloat::convert(&v10, &llvm::semIEEEdouble, 1, &v17);
  llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(&v10, &v8);
  if (v9 > 0x40)
  {
    v18 = *v8;
    MEMORY[0x277C69E10]();
  }

  else
  {
    v18 = v8;
  }

  if ((v12 & 6) != 0 && (v12 & 7) != 3 && v17 == 1)
  {
    llvm::detail::IEEEFloat::convert(&v10, &v15, 1, &v17);
    llvm::detail::IEEEFloat::IEEEFloat(&v8, &v13);
    llvm::detail::IEEEFloat::addOrSubtract(&v8, &v10, 1, 1);
    llvm::detail::IEEEFloat::convert(&v8, &llvm::semIEEEdouble, 1, &v17);
    llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(&v8, &v6);
    if (v7 > 0x40)
    {
      v19 = *v6;
      MEMORY[0x277C69E10]();
    }

    else
    {
      v19 = v6;
    }

    if ((*(v8 + 8) - 64) <= 0xFFFFFF7F && v9)
    {
      MEMORY[0x277C69E10](v9, 0x1000C8000313F17);
    }
  }

  else
  {
    v19 = 0;
  }

  *(a2 + 2) = 128;
  result = llvm::APInt::initFromArray(a2, &v18);
  if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x277C69E10](v11, 0x1000C8000313F17);
    }
  }

  if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x277C69E10](v14, 0x1000C8000313F17);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}