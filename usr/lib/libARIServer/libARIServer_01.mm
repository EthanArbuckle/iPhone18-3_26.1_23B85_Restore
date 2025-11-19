void sub_2962C3E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void AriHostRt::checkShouldDeregIndication_nl(unsigned int *a1, int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = a1 + 0x2000;
    v6 = a1 + 8296;
    v30 = a1 + 8300;
    do
    {
      memset(v34, 170, sizeof(v34));
      v7 = ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::operator[](v6, *v2);
      std::list<std::shared_ptr<Ari::AriClientProxy>>::list(v34, v7);
      if (v34[2])
      {
        v39 = *v2;
        v8 = v39;
        MEMORY[0x29C258610](*(v5 + 520) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 192);
        v9 = AriOsa::OsMutexTake(*(v5 + 64), 0xFFFFFFFFLL) == -1;
        MEMORY[0x29C258610](v9, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 193);
        isAlloc = IDMgr::isAlloc((a1 + 8306));
        v11 = ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::sw_dbug_trap(v6, isAlloc ^ 1u);
        LODWORD(v35) = AriOsa::OsTimeStamp(v11);
        std::list<std::shared_ptr<Ari::AriClientProxy>>::list(&v36, v34);
        v31 = &v39;
        v12 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v6, v8);
        *(v12 + 6) = v35;
        std::list<std::shared_ptr<Ari::AriClientProxy>>::__move_assign(v12 + 4, &v36);
        std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(&v36);
        v14 = AriOsa::OsMutexGive(*(v5 + 64), v13) == -1;
        MEMORY[0x29C258610](v14, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 198);
      }

      else
      {
        v31 = 0x200000001;
        v32 = (*v2 & 0x3FF | (HIBYTE(*v2) >> 2 << 11)) << 15;
        v33 = 0;
        AriHostRt::setMsgAttrib_nl(a1, &v31);
        v15 = *v2;
        MEMORY[0x29C258610](*(v5 + 520) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 235);
        v16 = AriOsa::OsMutexTake(*(v5 + 64), 0xFFFFFFFFLL) == -1;
        MEMORY[0x29C258610](v16, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 236);
        v17 = IDMgr::free((a1 + 8306));
        ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::sw_dbug_trap(v6, v17 ^ 1);
        v18 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>(v6, v15);
        v19 = *(v5 + 106);
        v20 = v18[1];
        v21 = vcnt_s8(v19);
        v21.i16[0] = vaddlv_u8(v21);
        if (v21.u32[0] > 1uLL)
        {
          if (v20 >= *&v19)
          {
            v20 %= *&v19;
          }
        }

        else
        {
          v20 &= *&v19 - 1;
        }

        v22 = *(*v6 + 8 * v20);
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22 != v18);
        if (v23 == v30)
        {
          goto LABEL_22;
        }

        v24 = v23[1];
        if (v21.u32[0] > 1uLL)
        {
          if (v24 >= *&v19)
          {
            v24 %= *&v19;
          }
        }

        else
        {
          v24 &= *&v19 - 1;
        }

        if (v24 != v20)
        {
LABEL_22:
          if (!*v18)
          {
            goto LABEL_23;
          }

          v25 = *(*v18 + 8);
          if (v21.u32[0] > 1uLL)
          {
            if (v25 >= *&v19)
            {
              v25 %= *&v19;
            }
          }

          else
          {
            v25 &= *&v19 - 1;
          }

          if (v25 != v20)
          {
LABEL_23:
            *(*v6 + 8 * v20) = 0;
          }
        }

        v26 = *v18;
        if (*v18)
        {
          v27 = *(v26 + 8);
          if (v21.u32[0] > 1uLL)
          {
            if (v27 >= *&v19)
            {
              v27 %= *&v19;
            }
          }

          else
          {
            v27 &= *&v19 - 1;
          }

          if (v27 != v20)
          {
            *(*v6 + 8 * v27) = v23;
            v26 = *v18;
          }
        }

        *v23 = v26;
        *v18 = 0;
        --*(v5 + 55);
        v35 = v18;
        v36 = v6;
        v37 = 1;
        v38[0] = 0;
        *(v38 + 3) = 0;
        std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,void *>>>>::~unique_ptr[abi:ne200100](&v35);
        v29 = AriOsa::OsMutexGive(*(v5 + 64), v28) == -1;
        MEMORY[0x29C258610](v29, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 241);
      }

      std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(v34);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2962C42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear((v5 + 8));
  std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(uint64_t a1)
{
  MEMORY[0x29C258610](*(a1 + 104) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 259);
  v2 = AriOsa::OsMutexTake(*(a1 + 96), 0xFFFFFFFFLL) == -1;
  MEMORY[0x29C258610](v2, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 261);
  isAlloc = IDMgr::isAlloc((a1 + 40));
  v5 = AriOsa::OsMutexGive(*(a1 + 96), v4) == -1;
  MEMORY[0x29C258610](v5, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 263);
  return isAlloc;
}

uint64_t AriHostRt::SetMsgTimeoutMultiplier(AriHostRt *this)
{
  v1 = this;
  v20 = *MEMORY[0x29EDCA608];
  Instance = AriHostRt::GetInstance(this);
  if (v1)
  {
    AriHostRt::GetInstance(Instance);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN9AriHostRt23SetMsgTimeoutMultiplierEj_block_invoke;
    block[3] = &__block_descriptor_tmp_46;
    block[4] = &AriHostRt::GetInstance(void)::instance;
    v12 = v1;
    dispatch_sync(qword_2A18C2418, block);
  }

  else
  {
    LogLevels = Ari::GetLogLevels(Instance);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetMsgTimeoutMultiplier", v5);
        v10 = v14 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v16 = 2080;
        v17 = v10;
        v18 = 1024;
        v19 = 629;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid msgTimeoutMultiplier param: must be > 0", buf, 0x1Cu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetMsgTimeoutMultiplier", v5);
      if (v18 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid msgTimeoutMultiplier param: must be > 0", v6, v7, 629);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_2962C45A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9AriHostRt23SetMsgTimeoutMultiplierEj_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetMsgTimeoutMultiplier_block_invoke", v4);
      v5 = v12 >= 0 ? __p : __p[0];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(a1 + 40);
      *buf = 136316162;
      *&buf[4] = "ari";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = 634;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) AriHostRt msgTimeoutMultiplier: prev(%d) new(%d)", buf, 0x28u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetMsgTimeoutMultiplier_block_invoke", v4);
    if (v16 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) AriHostRt msgTimeoutMultiplier: prev(%d) new(%d)", v8, v9, 634, *(*(a1 + 32) + 8), *(a1 + 40));
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*buf);
    }
  }

  *(*(a1 + 32) + 8) = *(a1 + 40);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_2962C475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::RegisterSniffer(AriHostRt *this, dispatch_queue_s *a2, int (*a3)(unsigned __int8 *, unint64_t))
{
  v3 = a3;
  v6 = MEMORY[0x29C258610](this == 0, "dq == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 643);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = -1;
  AriHostRt::GetInstance(v6);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN9AriHostRt15RegisterSnifferEP16dispatch_queue_sPFiPhmEb_block_invoke;
  v9[3] = &unk_29EE30EF8;
  v9[5] = this;
  v9[6] = a2;
  v10 = v3;
  v9[4] = &v11;
  dispatch_sync(qword_2A18C2418, v9);
  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_2962C4870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN9AriHostRt15RegisterSnifferEP16dispatch_queue_sPFiPhmEb_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  Instance = AriHostRt::GetInstance(a1);
  v3 = atomic_load(&AriHostRt::GetInstance(void)::instance);
  if (v3 == 2)
  {
    v4 = *(a1 + 40);
    v5 = AriHostRt::GetInstance(Instance);
    qword_2A18CA6C8 = v4;
    v6 = *(a1 + 48);
    v7 = AriHostRt::GetInstance(v5);
    qword_2A18CA6C0 = v6;
    LOBYTE(v6) = *(a1 + 56);
    AriHostRt::GetInstance(v7);
    byte_2A18CA6D0 = v6;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    LogLevels = Ari::GetLogLevels(Instance);
    if ((LogLevels & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegisterSniffer_block_invoke", v10);
        v11 = v22;
        v12 = __p[0];
        v13 = asString();
        *&buf[4] = "ari";
        v14 = __p;
        *buf = 136315906;
        if (v11 < 0)
        {
          v14 = v12;
        }

        v24 = 2080;
        v25 = v14;
        v26 = 1024;
        v27 = 650;
        v28 = 2080;
        v29 = v13;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) AriHostRt in state(%s) unsuitable for RegisterSniffer", buf, 0x26u);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegisterSniffer_block_invoke", v10);
      v15 = SHIBYTE(v26);
      v16 = *buf;
      v17 = asString();
      v19 = buf;
      if (v15 < 0)
      {
        v19 = v16;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) AriHostRt in state(%s) unsuitable for RegisterSniffer", v18, v19, 650, v17);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_2962C4A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::SendRaw(AriHostRt *this, unsigned __int8 *a2, int a3)
{
  v4 = a2;
  AriHostRt::GetInstance(this);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = -1;
  BufCtx = AriMsg::GetBufCtx(this, v4);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN9AriHostRt7SendRawEPhjj_block_invoke;
  block[3] = &unk_29EE30F20;
  block[5] = &AriHostRt::GetInstance(void)::instance;
  block[6] = this;
  v10 = BufCtx;
  v11 = v4;
  v12 = a3;
  block[4] = &v13;
  dispatch_sync(qword_2A18C2418, block);
  v7 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v7;
}

void ___ZN9AriHostRt7SendRawEPhjj_block_invoke(uint64_t isAlloc)
{
  v1 = isAlloc;
  v52 = *MEMORY[0x29EDCA608];
  v3 = (isAlloc + 56);
  v2 = *(isAlloc + 56);
  if (v2 != 0x8000 && (~v2 & 0x7F00) != 0 && *(isAlloc + 56) != 0)
  {
    v15 = *(isAlloc + 40);
    isAlloc = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>((v15 + 33328), v2);
    if (!isAlloc)
    {
      isAlloc = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(v15 + 33040);
      if (isAlloc)
      {
        memset(buf, 170, 16);
        v16 = *(v1 + 48);
        v17 = *(v1 + 60);
        v18 = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::operator[](*(v1 + 40) + 33040, (*(v1 + 56) >> 8) & 0x7F);
        v19 = v18[1];
        v44 = *v18;
        v45 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v1 + 40);
        v21 = *(v20 + 24);
        v22 = (*(v20 + 8) * *(v1 + 64));
        AriHostRt::RtTransaction::create(v16, v17);
      }
    }
  }

  v6 = AriHostRt::sendRawInternal_nl(isAlloc, *(v1 + 48), *(v1 + 60));
  *(*(*(v1 + 32) + 8) + 24) = v6;
  v8 = *(*(v1 + 40) + 33336);
  if (v8)
  {
    v9 = *(v1 + 56);
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = *(v1 + 56);
      if (*&v8 <= v9)
      {
        v11 = v9 % *&v8;
      }
    }

    else
    {
      v11 = (*&v8 - 1) & v9;
    }

    v12 = *(*(*(v1 + 40) + 33328) + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (*(i + 4) == v9)
          {
            if (*(*(*(v1 + 32) + 8) + 24))
            {
              LogLevels = Ari::GetLogLevels(v6);
              if ((LogLevels & 8) != 0)
              {
                OsLog = AriOsa::GetOsLog(LogLevels);
                if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
                {
                  v36 = __p;
                  AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SendRaw_block_invoke", v25);
                  if (v43 < 0)
                  {
                    v36 = __p[0];
                  }

                  v37 = *(v1 + 40);
                  v46 = v3;
                  v38 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v37 + 33328), *(v1 + 56));
                  AriHostRt::RtTransaction::asString(v40, v38[3]);
                  if (v41 >= 0)
                  {
                    v39 = v40;
                  }

                  else
                  {
                    v39 = v40[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = "ari";
                  *&buf[12] = 2080;
                  *&buf[14] = v36;
                  v48 = 1024;
                  v49 = 701;
                  v50 = 2080;
                  v51 = v39;
                  _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Fail to complete the transaction(%s), cancelling", buf, 0x26u);
                  if (v41 < 0)
                  {
                    operator delete(v40[0]);
                  }

                  if (v43 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                v26 = buf;
                AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SendRaw_block_invoke", v25);
                if (v48 < 0)
                {
                  v26 = *buf;
                }

                v27 = *(v1 + 40);
                v40[0] = v3;
                v28 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v27 + 33328), *(v1 + 56));
                AriHostRt::RtTransaction::asString(__p, v28[3]);
                if (v43 >= 0)
                {
                  v30 = __p;
                }

                else
                {
                  v30 = __p[0];
                }

                AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Fail to complete the transaction(%s), cancelling", v29, v26, 701, v30);
                if (v43 < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v48) < 0)
                {
                  operator delete(*buf);
                }
              }

              v31 = *(v1 + 40);
              *buf = v3;
              v32 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v31 + 33328), *(v1 + 56));
              AriHostRt::RtTransaction::cancel(v32[3], *(*(*(v1 + 32) + 8) + 24));
              std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__erase_unique<int>((*(v1 + 40) + 33328), *(v1 + 56));
            }

            else
            {
              LODWORD(__p[0]) = 0;
              if (!AriMsg::GetBufSeq(*(v1 + 48), *(v1 + 60), __p, v7))
              {
                v33 = *(v1 + 40);
                *buf = v3;
                v34 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v33 + 33328), *(v1 + 56));
                AriMsg::SetBufSeq(**(v34[3] + 16), (*(*(v34[3] + 16) + 8) - **(v34[3] + 16)));
              }
            }

            break;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= *&v8)
            {
              v14 %= *&v8;
            }
          }

          else
          {
            v14 &= *&v8 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v35 = *MEMORY[0x29EDCA608];
}

void sub_2962C5034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ResMgr<std::shared_ptr<Ari::AriClientProxy>>::operator[](uint64_t a1, int a2)
{
  v10 = a2;
  MEMORY[0x29C258610](*(a1 + 104) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 166);
  v4 = AriOsa::OsMutexTake(*(a1 + 96), 0xFFFFFFFFLL) == -1;
  MEMORY[0x29C258610](v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 167);
  v5 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>(a1, a2) == 0;
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::sw_dbug_trap(a1, v5);
  v11 = &v10;
  v6 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, a2);
  v8 = AriOsa::OsMutexGive(*(a1 + 96), v7) == -1;
  MEMORY[0x29C258610](v8, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 172);
  return v6 + 4;
}

void ___ZN9AriHostRt18sendRawInternal_nlEPhj_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 40);

  free(v2);
}

uint64_t AriHostRt::RegIndication(AriHostRt *this, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = AriHostRt::Init(this);
  if (v4)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    LogLevels = Ari::GetLogLevels(v4);
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegIndication", v8);
        v9 = v18 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v9;
        *&buf[22] = 1024;
        v20 = 780;
        v21 = 1024;
        v22 = this;
        v23 = 1024;
        v24 = a2;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Registering indication gmid 0x%x triggered by cid 0x%x", buf, 0x28u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegIndication", v8);
      if (buf[23] >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      LogLevels = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Registering indication gmid 0x%x triggered by cid 0x%x", v10, v11, 780, this, a2);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    AriHostRt::GetInstance(LogLevels);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v20 = -1;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN9AriHostRt13RegIndicationEjj_block_invoke;
    block[3] = &unk_29EE30F68;
    block[4] = buf;
    block[5] = &AriHostRt::GetInstance(void)::instance;
    v15 = this;
    v16 = a2;
    dispatch_sync(qword_2A18C2418, block);
    v5 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_2962C53F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9AriHostRt13RegIndicationEjj_block_invoke(uint64_t a1)
{
  result = AriHostRt::regIndication_nl(*(a1 + 40), *(a1 + 48), *(a1 + 52));
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  if (*(v3 + 4) == 1 && (v4 = atomic_load(v3), v4 == 2))
  {
    v5 = (*(a1 + 48) & 0x3FF | (*(a1 + 48) >> 10 << 11)) << 15;
    v6 = 0x200000001;
    v7 = v5;
    v8 = 0x7FFFFFFF;
    result = AriHostRt::setMsgAttrib_nl(*(a1 + 40), &v6);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t AriHostRt::regIndication_nl(AriHostRt *this, int a2, uint64_t a3)
{
  v90 = *MEMORY[0x29EDCA608];
  v6 = this + 0x8000;
  isAlloc = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(this + 33040);
  if (isAlloc)
  {
    v8 = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::operator[](this + 33040, a3);
    v10 = *v8;
    v9 = v8[1];
    v74 = *v8;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(this + 33184);
    if (!v11)
    {
      LogLevels = Ari::GetLogLevels(v11);
      if ((LogLevels & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(v77, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v33);
          v34 = SHIBYTE(v78);
          v35 = v77[0];
          v36 = (*(*v10 + 16))(v10);
          v37 = v77;
          if (v34 < 0)
          {
            v37 = v35;
          }

          if (*(v36 + 23) >= 0)
          {
            v38 = v36;
          }

          else
          {
            v38 = *v36;
          }

          *__p = 136316674;
          *&__p[4] = "ari";
          v80 = 2080;
          v81 = v37;
          v82 = 1024;
          v83 = 952;
          v84 = 2080;
          *v85 = v38;
          *&v85[8] = 1024;
          *v86 = a3;
          *&v86[4] = 1024;
          v87 = a2 >> 10;
          v88 = 1024;
          v89 = a2 & 0x3FF;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) RegIndication: client(%s:0x%x) first to register indication(%d-0x%x)", __p, 0x38u);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v33);
        v39 = SHIBYTE(v82);
        v40 = *__p;
        v41 = (*(*v10 + 16))(v10);
        v43 = __p;
        if (v39 < 0)
        {
          v43 = v40;
        }

        if (*(v41 + 23) >= 0)
        {
          v44 = v41;
        }

        else
        {
          v44 = *v41;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) RegIndication: client(%s:0x%x) first to register indication(%d-0x%x)", v42, v43, 952, v44, a3, a2 >> 10, a2 & 0x3FF, v74, v9);
        if (SHIBYTE(v82) < 0)
        {
          operator delete(*__p);
        }
      }

      v77[0] = v77;
      v77[1] = v77;
      v78 = 0;
      operator new();
    }

    v12 = ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::operator[](this + 33184, a2);
    v13 = v12;
    do
    {
      v13 = v13[1];
      if (v13 == v12)
      {
        v51 = Ari::GetLogLevels(v12);
        if ((v51 & 0x20) != 0)
        {
          v52 = AriOsa::GetOsLog(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(v77, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v53);
            v54 = SHIBYTE(v78);
            v55 = v77[0];
            v56 = (*(*v10 + 16))(v10);
            v57 = v77;
            if (v54 < 0)
            {
              v57 = v55;
            }

            if (*(v56 + 23) >= 0)
            {
              v58 = v56;
            }

            else
            {
              v58 = *v56;
            }

            *__p = 136316674;
            *&__p[4] = "ari";
            v80 = 2080;
            v81 = v57;
            v82 = 1024;
            v83 = 945;
            v84 = 2080;
            *v85 = v58;
            *&v85[8] = 1024;
            *v86 = a3;
            *&v86[4] = 1024;
            v87 = a2 >> 10;
            v88 = 1024;
            v89 = a2 & 0x3FF;
            _os_log_impl(&dword_2962B3000, v52, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) RegIndication: Add client(%s:0x%x) as listening for indication(%d-0x%x)", __p, 0x38u);
            if (SHIBYTE(v78) < 0)
            {
              operator delete(v77[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v53);
          v59 = SHIBYTE(v82);
          v60 = *__p;
          v61 = (*(*v10 + 16))(v10);
          v63 = __p;
          if (v59 < 0)
          {
            v63 = v60;
          }

          if (*(v61 + 23) >= 0)
          {
            v64 = v61;
          }

          else
          {
            v64 = *v61;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) RegIndication: Add client(%s:0x%x) as listening for indication(%d-0x%x)", v62, v63, 945, v64, a3, a2 >> 10, a2 & 0x3FF, v74, v9);
          if (SHIBYTE(v82) < 0)
          {
            operator delete(*__p);
          }
        }

        std::list<std::shared_ptr<Ari::AriClientProxy>>::push_back();
      }
    }

    while (*(v13[2] + 8) != a3);
    v14 = Ari::GetLogLevels(v12);
    if ((v14 & 4) != 0)
    {
      v15 = AriOsa::GetOsLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo(v77, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v16);
        v69 = SHIBYTE(v78);
        v70 = v77[0];
        v71 = (*(*v10 + 16))(v10);
        v72 = v77;
        if (v69 < 0)
        {
          v72 = v70;
        }

        if (*(v71 + 23) >= 0)
        {
          v73 = v71;
        }

        else
        {
          v73 = *v71;
        }

        *__p = 136316418;
        *&__p[4] = "ari";
        v80 = 2080;
        v81 = v72;
        v82 = 1024;
        v83 = 940;
        v84 = 2080;
        *v85 = v73;
        *&v85[8] = 1024;
        *v86 = a2 >> 10;
        *&v86[4] = 1024;
        v87 = a2 & 0x3FF;
        _os_log_debug_impl(&dword_2962B3000, v15, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) RegIndication: Duplicated handler from client(%s) for indication(%d-0x%x), no-op", __p, 0x32u);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v16);
      v17 = SHIBYTE(v82);
      v18 = *__p;
      v19 = (*(*v10 + 16))(v10);
      v21 = __p;
      if (v17 < 0)
      {
        v21 = v18;
      }

      if (*(v19 + 23) >= 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = *v19;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) RegIndication: Duplicated handler from client(%s) for indication(%d-0x%x), no-op", v20, v21, 940, v22, a2 >> 10, a2 & 0x3FF);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(*__p);
      }
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    goto LABEL_73;
  }

  v23 = Ari::GetLogLevels(isAlloc);
  if (a3 == -1)
  {
    if ((v23 & 8) != 0)
    {
      v45 = AriOsa::GetOsLog(v23);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v77, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v46);
        if (v78 >= 0)
        {
          v68 = v77;
        }

        else
        {
          v68 = v77[0];
        }

        v47 = a2 >> 10;
        v48 = a2 & 0x3FF;
        *__p = 136316162;
        *&__p[4] = "ari";
        v80 = 2080;
        v81 = v68;
        v82 = 1024;
        v83 = 918;
        v84 = 1024;
        *v85 = v47;
        *&v85[4] = 1024;
        *&v85[6] = v48;
        _os_log_error_impl(&dword_2962B3000, v45, OS_LOG_TYPE_ERROR, "%s: (%s:%d) RegIndication: ARI_INVALID_CID for indication(%d-0x%x)", __p, 0x28u);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77[0]);
        }
      }

      else
      {
        v47 = a2 >> 10;
        v48 = a2 & 0x3FF;
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v46);
      if (v82 >= 0)
      {
        v50 = __p;
      }

      else
      {
        v50 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) RegIndication: ARI_INVALID_CID for indication(%d-0x%x)", v49, v50, 918, v47, v48);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(*__p);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v75, "invalid cid with indication reg");
    std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::operator()(*(v6 + 94), 3, v75, 0, 0);
    if (v76 < 0)
    {
      v30 = v75[0];
      goto LABEL_53;
    }
  }

  else if ((v23 & 8) != 0)
  {
    v24 = AriOsa::GetOsLog(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v77, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v25);
      if (v78 >= 0)
      {
        v67 = v77;
      }

      else
      {
        v67 = v77[0];
      }

      v26 = a2 >> 10;
      v27 = a2 & 0x3FF;
      *__p = 136316418;
      *&__p[4] = "ari";
      v80 = 2080;
      v81 = v67;
      v82 = 1024;
      v83 = 923;
      v84 = 1024;
      *v85 = a3;
      *&v85[4] = 1024;
      *&v85[6] = v26;
      *v86 = 1024;
      *&v86[2] = v27;
      _os_log_error_impl(&dword_2962B3000, v24, OS_LOG_TYPE_ERROR, "%s: (%s:%d) RegIndication: No registered cid 0x%04X for indication(%d-0x%x)", __p, 0x2Eu);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77[0]);
      }
    }

    else
    {
      v26 = a2 >> 10;
      v27 = a2 & 0x3FF;
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "regIndication_nl", v25);
    v29 = v82 >= 0 ? __p : *__p;
    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) RegIndication: No registered cid 0x%04X for indication(%d-0x%x)", v28, v29, 923, a3, v26, v27);
    if (SHIBYTE(v82) < 0)
    {
      v30 = *__p;
LABEL_53:
      operator delete(v30);
    }
  }

LABEL_73:
  v65 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962C5EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::RegAllIndications(AriHostRt *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = AriHostRt::Init(this);
  if (v2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    LogLevels = Ari::GetLogLevels(v2);
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegAllIndications", v6);
        v7 = v15 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v7;
        *&buf[22] = 1024;
        v17 = 813;
        v18 = 1024;
        v19 = this;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Registering all indications triggered by cid 0x%x", buf, 0x22u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegAllIndications", v6);
      if (buf[23] >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      LogLevels = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Registering all indications triggered by cid 0x%x", v8, v9, 813, this);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    AriHostRt::GetInstance(LogLevels);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v17 = -1;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN9AriHostRt17RegAllIndicationsEj_block_invoke;
    block[3] = &unk_29EE30F90;
    v13 = this;
    block[4] = buf;
    block[5] = &AriHostRt::GetInstance(void)::instance;
    dispatch_sync(qword_2A18C2418, block);
    v3 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_2962C61CC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9AriHostRt17RegAllIndicationsEj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  isAlloc = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(*(a1 + 40) + 33040);
  if (isAlloc)
  {
    v4 = *(a1 + 40);
    if (*(v4 + 4) == 1)
    {
      v5 = atomic_load(v4);
      if (v5 == 2)
      {
        bzero(&v29[8], 0x7D4uLL);
        *v29 = 0x200000001;
        v36 = 0x7FFFFFFF;
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        operator new();
      }
    }

    LogLevels = Ari::GetLogLevels(isAlloc);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegAllIndications_block_invoke", v17);
        v23 = v28 >= 0 ? buf : *buf;
        v24 = *(a1 + 48);
        *v29 = 136315906;
        *&v29[4] = "ari";
        v30 = 2080;
        v31 = v23;
        v32 = 1024;
        v33 = 828;
        v34 = 1024;
        v35 = v24;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unable to re-register indications using invalid cid 0x%x", v29, 0x22u);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(*buf);
        }
      }

      AriOsa::LogSrcInfo(v29, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegAllIndications_block_invoke", v17);
      v19 = v32 >= 0 ? v29 : *v29;
      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unable to re-register indications using invalid cid 0x%x", v18, v19, 828, *(a1 + 48));
      if (SHIBYTE(v32) < 0)
      {
        v14 = *v29;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = Ari::GetLogLevels(isAlloc);
    if ((v8 & 8) != 0)
    {
      v9 = AriOsa::GetOsLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegAllIndications_block_invoke", v10);
        v21 = v28 >= 0 ? buf : *buf;
        v22 = *(a1 + 48);
        *v29 = 136315906;
        *&v29[4] = "ari";
        v30 = 2080;
        v31 = v21;
        v32 = 1024;
        v33 = 822;
        v34 = 1024;
        v35 = v22;
        _os_log_error_impl(&dword_2962B3000, v9, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unable to re-register indications using invalid cid 0x%x", v29, 0x22u);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(*buf);
        }
      }

      AriOsa::LogSrcInfo(v29, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "RegAllIndications_block_invoke", v10);
      if (v32 >= 0)
      {
        v12 = v29;
      }

      else
      {
        v12 = *v29;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unable to re-register indications using invalid cid 0x%x", v11, v12, 822, *(a1 + 48));
      if (SHIBYTE(v32) < 0)
      {
        operator delete(*v29);
      }
    }

    v13 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(v25, "invalid cid with bulk indication reg");
    std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::operator()(*(v13 + 33520), 3, v25, 0, 0);
    if (v26 < 0)
    {
      v14 = v25[0];
LABEL_21:
      operator delete(v14);
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_2962C67F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::doForEach(uint64_t a1, uint64_t a2)
{
  MEMORY[0x29C258610](*(a1 + 104) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 322);
  v4 = AriOsa::OsMutexTake(*(a1 + 96), 0xFFFFFFFFLL) == -1;
  MEMORY[0x29C258610](v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 324);
  for (i = *(a1 + 16); i; i = *i)
  {
    v7 = *(a2 + 24);
    v8 = *(i + 4);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, &v8, i + 4);
  }

  AriOsa::OsMutexGive(*(a1 + 96), v5);

  JUMPOUT(0x29C258610);
}

uint64_t AriHostRt::setGroupMsgAttrib_nl(Ari *a1, unsigned __int16 *a2)
{
  v54 = *MEMORY[0x29EDCA608];
  v3 = a2[1004];
  LogLevels = Ari::GetLogLevels(a1);
  if (v3)
  {
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v6);
        v7 = v49 >= 0 ? __p : *__p;
        v8 = a2[1004];
        *buf = 136315906;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v7;
        *&buf[22] = 1024;
        *&buf[24] = 970;
        *&buf[28] = 1024;
        *&buf[30] = v8;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Sending AriGrpMsgsAttribReq with %u gmids", buf, 0x22u);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(*__p);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v6);
      if (buf[23] >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Sending AriGrpMsgsAttribReq with %u gmids", v9, v10, 970, a2[1004]);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v53 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[32] = v11;
    v52 = v11;
    *buf = v11;
    *&buf[16] = v11;
    MEMORY[0x29C258730](buf, 67698688);
    v12 = AriMsg::pack(buf, 1, a2);
    v13 = v12;
    if (v12)
    {
      v14 = Ari::GetLogLevels(v12);
      if ((v14 & 8) != 0)
      {
        v15 = AriOsa::GetOsLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v44, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v16);
          v40 = v45 >= 0 ? v44 : v44[0];
          *__p = 136315650;
          *&__p[4] = "ari";
          v47 = 2080;
          v48 = v40;
          v49 = 1024;
          v50 = 977;
          _os_log_error_impl(&dword_2962B3000, v15, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unable to pack AriGrpMsgsAttribReq", __p, 0x1Cu);
          if (v45 < 0)
          {
            operator delete(v44[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v16);
        if (v49 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unable to pack AriGrpMsgsAttribReq", v17, v18, 977);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(*__p);
        }
      }
    }

    else
    {
      v43 = 0;
      EncodedBuf = AriMsg::getEncodedBuf(buf, &v43);
      v25 = EncodedBuf;
      if (EncodedBuf)
      {
        *(EncodedBuf + 2) = *(EncodedBuf + 2) & 0x1FFFF | 0xFE020000;
        v26 = AriHostRt::sendRawInternal_nl(EncodedBuf, EncodedBuf, v43);
        v13 = v26;
        if (v26)
        {
          v28 = Ari::GetLogLevels(v26);
          if ((v28 & 8) != 0)
          {
            v29 = AriOsa::GetOsLog(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(v44, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v30);
              v41 = v45 >= 0 ? v44 : v44[0];
              *__p = 136315650;
              *&__p[4] = "ari";
              v47 = 2080;
              v48 = v41;
              v49 = 1024;
              v50 = 990;
              _os_log_error_impl(&dword_2962B3000, v29, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to send AriGrpMsgsAttribReq", __p, 0x1Cu);
              if (v45 < 0)
              {
                operator delete(v44[0]);
              }
            }

            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v30);
            if (v49 >= 0)
            {
              v32 = __p;
            }

            else
            {
              v32 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to send AriGrpMsgsAttribReq", v31, v32, 990);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(*__p);
            }
          }
        }

        AriMsg::ReleaseEncodedMessage(v25, v27);
      }

      else
      {
        v33 = Ari::GetLogLevels(0);
        if ((v33 & 8) != 0)
        {
          v34 = AriOsa::GetOsLog(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v44, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v35);
            v42 = v45 >= 0 ? v44 : v44[0];
            *__p = 136315650;
            *&__p[4] = "ari";
            v47 = 2080;
            v48 = v42;
            v49 = 1024;
            v50 = 996;
            _os_log_error_impl(&dword_2962B3000, v34, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unable to create payload.  Out of memory?", __p, 0x1Cu);
            if (v45 < 0)
            {
              operator delete(v44[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v35);
          if (v49 >= 0)
          {
            v37 = __p;
          }

          else
          {
            v37 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unable to create payload.  Out of memory?", v36, v37, 996);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(*__p);
          }
        }

        v13 = 4294967214;
      }
    }

    AriMsg::~AriMsg(buf);
  }

  else
  {
    if ((LogLevels & 0x10) != 0)
    {
      v19 = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v20);
        v21 = v49 >= 0 ? __p : *__p;
        *buf = 136315650;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v21;
        *&buf[22] = 1024;
        *&buf[24] = 966;
        _os_log_impl(&dword_2962B3000, v19, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Zero gmids provided", buf, 0x1Cu);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(*__p);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setGroupMsgAttrib_nl", v20);
      if (buf[23] >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Zero gmids provided", v22, v23, 966);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v13 = 0xFFFFFFFFLL;
  }

  v38 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t AriHostRt::PushAllIndications(AriHostRt *a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = AriHostRt::Init(a1);
  if (v4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(a2 + 16))
    {
      memset(v26, 170, sizeof(v26));
      v6 = std::list<unsigned int>::list(v26, a2);
      LogLevels = Ari::GetLogLevels(v6);
      if ((LogLevels & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "PushAllIndications", v9);
          v10 = v25 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v28 = 2080;
          v29 = v10;
          v30 = 1024;
          v31 = 898;
          v32 = 1024;
          v33 = a1;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Updating RT with all indications pushed by cid 0x%x", buf, 0x22u);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "PushAllIndications", v9);
        if (v30 >= 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = *buf;
        }

        LogLevels = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Updating RT with all indications pushed by cid 0x%x", v11, v12, 898, a1);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*buf);
        }
      }

      AriHostRt::GetInstance(LogLevels);
      v13 = qword_2A18C2418;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN9AriHostRt18PushAllIndicationsEjRKNSt3__14listIjNS0_9allocatorIjEEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_69;
      std::list<unsigned int>::list(v22, v26);
      v22[3] = &AriHostRt::GetInstance(void)::instance;
      v23 = a1;
      dispatch_sync(v13, block);
      std::__list_imp<unsigned int>::clear(v22);
      std::__list_imp<unsigned int>::clear(v26);
    }

    else
    {
      v14 = Ari::GetLogLevels(v4);
      if ((v14 & 0x20) != 0)
      {
        v15 = AriOsa::GetOsLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(v26, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "PushAllIndications", v16);
          v17 = v26[2] >= 0 ? v26 : v26[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v28 = 2080;
          v29 = v17;
          v30 = 1024;
          v31 = 893;
          v32 = 1024;
          v33 = a1;
          _os_log_impl(&dword_2962B3000, v15, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) No indications were pushed by cid 0x%x", buf, 0x22u);
          if (SHIBYTE(v26[2]) < 0)
          {
            operator delete(v26[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "PushAllIndications", v16);
        if (v30 >= 0)
        {
          v19 = buf;
        }

        else
        {
          v19 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) No indications were pushed by cid 0x%x", v18, v19, 893, a1);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    result = 0;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN9AriHostRt18PushAllIndicationsEjRKNSt3__14listIjNS0_9allocatorIjEEEE_block_invoke(uint64_t result)
{
  v1 = result + 32;
  v2 = *(result + 40);
  if (v2 != result + 32)
  {
    v3 = *(result + 56);
    v4 = *(result + 64);
    do
    {
      result = AriHostRt::regIndication_nl(v3, *(v2 + 16), v4);
      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t *ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::operator[](uint64_t a1, int a2)
{
  v10 = a2;
  MEMORY[0x29C258610](*(a1 + 104) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 166);
  v4 = AriOsa::OsMutexTake(*(a1 + 96), 0xFFFFFFFFLL) == -1;
  MEMORY[0x29C258610](v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 167);
  v5 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>(a1, a2) == 0;
  ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::sw_dbug_trap(a1, v5);
  v11 = &v10;
  v6 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, a2);
  v8 = AriOsa::OsMutexGive(*(a1 + 96), v7) == -1;
  MEMORY[0x29C258610](v8, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 172);
  return v6 + 4;
}

uint64_t AriHostRt::processStartEvent_nl(uint64_t this)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((*(this + 4) & 1) == 0)
  {
    v1 = this;
    *(this + 4) = 1;
    v2 = *(this + 33528);
    if (v2)
    {
      v3 = *(this + 33536);
      if (v3)
      {
        dispatch_async(v3, v2);
        LogLevels = Ari::GetLogLevels(v4);
        if ((LogLevels & 0x20) != 0)
        {
          OsLog = AriOsa::GetOsLog(LogLevels);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "processStartEvent_nl", v7);
            v8 = v13 >= 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "ari";
            v16 = 2080;
            v17 = v8;
            v18 = 1024;
            v19 = 1039;
            _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Dispatched supervisory Started callback", buf, 0x1Cu);
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "processStartEvent_nl", v7);
          if (v18 >= 0)
          {
            v10 = buf;
          }

          else
          {
            v10 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Dispatched supervisory Started callback", v9, v10, 1039);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }

    v14[0] = &unk_2A1D46BC0;
    v14[3] = v14;
    ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(v1 + 33040, v14);
    this = std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v14);
  }

  v11 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2962C7740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(uint64_t a1, uint64_t a2)
{
  MEMORY[0x29C258610](*(a1 + 104) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 311);
  v4 = AriOsa::OsMutexTake(*(a1 + 96), 0xFFFFFFFFLL) == -1;
  MEMORY[0x29C258610](v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 313);
  for (i = *(a1 + 16); i; i = *i)
  {
    v7 = *(a2 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, i + 4);
  }

  AriOsa::OsMutexGive(*(a1 + 96), v5);

  JUMPOUT(0x29C258610);
}

uint64_t AriHostRt::DeregIndication(AriHostRt *this, int a2)
{
  v3 = this;
  AriHostRt::GetInstance(this);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -1;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN9AriHostRt15DeregIndicationEjj_block_invoke;
  block[3] = &unk_29EE30FB8;
  v7 = a2;
  v8 = v3;
  block[4] = &v9;
  block[5] = &AriHostRt::GetInstance(void)::instance;
  dispatch_sync(qword_2A18C2418, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void ___ZN9AriHostRt15DeregIndicationEjj_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  isAlloc = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(*(a1 + 40) + 33040);
  if (isAlloc)
  {
    v4 = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::operator[](*(a1 + 40) + 33040, *(a1 + 48));
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 52);
    v8 = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(*(a1 + 40) + 33184);
    if (v8)
    {
      v9 = ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::operator[](*(a1 + 40) + 33184, *(a1 + 52));
      v10 = v9[1];
      if (v10 != v9)
      {
        do
        {
          v11 = v10[1];
          if (*(v10[2] + 8) == *(a1 + 48))
          {
            v12 = *v10;
            *(v12 + 8) = v11;
            *v11 = v12;
            --v9[2];
            v13 = v10[3];
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            operator delete(v10);
          }

          v10 = v11;
        }

        while (v11 != v9);
      }

      v14 = *(a1 + 40);
      v15 = *(a1 + 52);
      operator new();
    }

    LogLevels = Ari::GetLogLevels(v8);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregIndication_block_invoke", v23);
        v29 = v33 >= 0 ? __p : __p[0];
        v31 = *(a1 + 48);
        v30 = *(a1 + 52);
        *buf = 136316418;
        *&buf[4] = "ari";
        v35 = 2080;
        v36 = v29;
        v37 = 1024;
        v38 = 1062;
        v39 = 1024;
        v40 = v30 >> 10;
        v41 = 1024;
        v42 = v30 & 0x3FF;
        v43 = 1024;
        v44 = v31;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) indication msgid(%d-0x%x) is not registered with any cid (cid 0x%x attempted deregister)", buf, 0x2Eu);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregIndication_block_invoke", v23);
      if (v37 >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) indication msgid(%d-0x%x) is not registered with any cid (cid 0x%x attempted deregister)", v24, v25, 1062, *(a1 + 52) >> 10, *(a1 + 52) & 0x3FF, *(a1 + 48));
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v16 = Ari::GetLogLevels(isAlloc);
    if ((v16 & 8) != 0)
    {
      v17 = AriOsa::GetOsLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregIndication_block_invoke", v18);
        v27 = v33 >= 0 ? __p : __p[0];
        v28 = *(a1 + 48);
        *buf = 136315906;
        *&buf[4] = "ari";
        v35 = 2080;
        v36 = v27;
        v37 = 1024;
        v38 = 1055;
        v39 = 1024;
        v40 = v28;
        _os_log_error_impl(&dword_2962B3000, v17, OS_LOG_TYPE_ERROR, "%s: (%s:%d) No registered cid 0x%04X", buf, 0x22u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregIndication_block_invoke", v18);
      if (v37 >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) No registered cid 0x%04X", v19, v20, 1055, *(a1 + 48));
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_2962C7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9AriHostRt12InboundMsgCBEPhm_block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x29EDCA608];
  v72 = 0;
  AriHostRt::GetInstance(a1);
  v2 = dword_2A18C240C;
  BufSeq = AriMsg::GetBufSeq(**(a1 + 32), (*(*(a1 + 32) + 8) - **(a1 + 32)), &v72, v3);
  v5 = (v2 + 1) & 0x7FF;
  if (v72 != v5)
  {
    BufSeq = AriHostRt::GetInstance(BufSeq);
    if (dword_2A18C240C != 2048)
    {
      BufSeq = Ari::GetLogLevels(BufSeq);
      if ((BufSeq & 0x10) != 0)
      {
        OsLog = AriOsa::GetOsLog(BufSeq);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v7);
          v8 = v71 >= 0 ? __p : __p[0];
          *buf = 136316162;
          *&buf[4] = "ari";
          v74 = 2080;
          v75 = v8;
          v76 = 1024;
          v77 = 1105;
          v78 = 1024;
          *v79 = v5;
          *&v79[4] = 1024;
          *&v79[6] = v72;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Missing expected BB.SEQ(0x%03x), got BB.SEQ(0x%03x)", buf, 0x28u);
          if (v71 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v7);
        if (v76 >= 0)
        {
          v10 = buf;
        }

        else
        {
          v10 = *buf;
        }

        BufSeq = AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Missing expected BB.SEQ(0x%03x), got BB.SEQ(0x%03x)", v9, v10, 1105, v5, v72);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*buf);
        }
      }
    }
  }

  v11 = v72;
  Instance = AriHostRt::GetInstance(BufSeq);
  dword_2A18C240C = v11;
  v13 = AriHostRt::GetInstance(Instance);
  v14 = atomic_load(&AriHostRt::GetInstance(void)::instance);
  if (v14 != 2)
  {
    LogLevels = Ari::GetLogLevels(v13);
    if ((LogLevels & 0x10) == 0)
    {
      goto LABEL_59;
    }

    v51 = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v52);
      v53 = v71;
      v54 = __p[0];
      v55 = asString();
      *&buf[4] = "ari";
      v56 = __p;
      *buf = 136315906;
      if (v53 < 0)
      {
        v56 = v54;
      }

      v74 = 2080;
      v75 = v56;
      v76 = 1024;
      v77 = 1112;
      v78 = 2080;
      *v79 = v55;
      _os_log_impl(&dword_2962B3000, v51, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) AriHostRt in state(%s) unsuitable for InboundMsgCB", buf, 0x26u);
      if (v71 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v52);
    v57 = SHIBYTE(v76);
    v58 = *buf;
    v59 = asString();
    v61 = buf;
    if (v57 < 0)
    {
      v61 = v58;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) AriHostRt in state(%s) unsuitable for InboundMsgCB", v60, v61, 1112, v59);
LABEL_48:
    if (SHIBYTE(v76) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_59;
  }

  v15 = AriHostRt::GetInstance(v13);
  v16 = qword_2A18CA6C0;
  if (!qword_2A18CA6C0)
  {
    goto LABEL_32;
  }

  v17 = Ari::GetLogLevels(v15);
  if ((v17 & 0x20) != 0)
  {
    v18 = AriOsa::GetOsLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v19);
      v21 = v71;
      v22 = __p[0];
      v23 = *(a1 + 32);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(a1 + 48);
      AriHostRt::GetInstance(v20);
      v27 = v24 - v25;
      if (v21 >= 0)
      {
        v22 = __p;
      }

      label = dispatch_queue_get_label(qword_2A18CA6C8);
      *buf = 136316418;
      *&buf[4] = "ari";
      v74 = 2080;
      v75 = v22;
      v76 = 1024;
      v77 = 1120;
      v78 = 2048;
      *v79 = v27;
      *&v79[8] = 1024;
      v80 = v26;
      v81 = 2080;
      v82 = label;
      _os_log_impl(&dword_2962B3000, v18, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Inbound Msg sz%zu ctx(0x%08X) for sniffer (%s) ", buf, 0x36u);
      if (v71 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v29 = AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v19);
    v30 = SHIBYTE(v76);
    v31 = *buf;
    v32 = *(a1 + 32);
    v34 = *v32;
    v33 = v32[1];
    v35 = *(a1 + 48);
    AriHostRt::GetInstance(v29);
    v36 = v33 - v34;
    if (v30 >= 0)
    {
      v31 = buf;
    }

    v37 = dispatch_queue_get_label(qword_2A18CA6C8);
    v17 = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Inbound Msg sz%zu ctx(0x%08X) for sniffer (%s) ", v38, v31, 1120, v36, v35, v37);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(*buf);
    }
  }

  AriHostRt::GetInstance(v17);
  v39 = qword_2A18CA6C8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN9AriHostRt12InboundMsgCBEPhm_block_invoke_2;
  block[3] = &__block_descriptor_tmp_89_0;
  v41 = *(a1 + 32);
  v40 = *(a1 + 40);
  block[4] = v16;
  block[5] = v41;
  v69 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v39, block);
  AriHostRt::GetInstance(v42);
  v43 = byte_2A18CA6D0;
  v15 = v69;
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (v43)
  {
LABEL_32:
    v44 = *(a1 + 48);
    if (v44 >= 0x8000)
    {
      v45 = Ari::GetLogLevels(v15);
      if ((v45 & 8) == 0)
      {
        goto LABEL_59;
      }

      v46 = AriOsa::GetOsLog(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v47);
        v65 = v71 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v74 = 2080;
        v75 = v65;
        v76 = 1024;
        v77 = 1132;
        _os_log_error_impl(&dword_2962B3000, v46, OS_LOG_TYPE_ERROR, "%s: (%s:%d) GetBufCtx Invalid CTX", buf, 0x1Cu);
        if (v71 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundMsgCB_block_invoke", v47);
      if (v76 >= 0)
      {
        v49 = buf;
      }

      else
      {
        v49 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) GetBufCtx Invalid CTX", v48, v49, 1132);
      goto LABEL_48;
    }

    v62 = *(a1 + 32);
    if (v44)
    {
      v63 = *(a1 + 40);
      v66[0] = *(a1 + 32);
      v66[1] = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AriHostRt::InboundRespCB(v66);
    }

    else
    {
      v63 = *(a1 + 40);
      v67[0] = *(a1 + 32);
      v67[1] = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AriHostRt::InboundIndCB(v67);
    }

    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }
  }

LABEL_59:
  v64 = *MEMORY[0x29EDCA608];
}

void sub_2962C85F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t AriHostRt::InboundIndCB(AriHostRt *a1)
{
  v81 = *MEMORY[0x29EDCA608];
  AriHostRt::GetInstance(a1);
  BufGmid = AriMsg::GetBufGmid(**a1, (*(*a1 + 8) - **a1));
  v3 = BufGmid;
  if (BufGmid == 92700672)
  {
    LogLevels = Ari::GetLogLevels(BufGmid);
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundIndCB", v6);
        v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v7;
        *&buf[22] = 1024;
        *&buf[24] = 1274;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Received All-ready via indication", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundIndCB", v6);
      if (buf[23] >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Received All-ready via indication", v8, v9, 1274);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    AriHostRt::processStartEvent_nl(&AriHostRt::GetInstance(void)::instance);
  }

  v57 = (v3 >> 15) & 0x3FF;
  v58 = v3 >> 26;
  v10 = v57 | (v58 << 10);
  if (ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(&unk_2A18CA5A0))
  {
    v80 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v79[7] = v11;
    v79[8] = v11;
    v79[5] = v11;
    v79[6] = v11;
    v79[3] = v11;
    v79[4] = v11;
    v79[1] = v11;
    v79[2] = v11;
    v78 = v11;
    v79[0] = v11;
    *v76 = v11;
    v77 = v11;
    *&buf[32] = v11;
    *__src = v11;
    *buf = v11;
    *&buf[16] = v11;
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    v12 = ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::operator[](&unk_2A18CA5A0, v10);
    v13 = 0;
    while (1)
    {
      v12 = v12[1];
      if (v12 == ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::operator[](&unk_2A18CA5A0, v10))
      {
        break;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v15[2];
      v17 = (*(*v15 + 16))(v15);
      v18 = *(v17 + 23);
      if (v18 >= 0)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v17;
      }

      if (v18 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "-", 1);
      v22 = *(a1 + 1);
      v62 = *a1;
      v63 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = (*(*v15 + 40))(v15, &v62);
      v24 = v63;
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      if (v23)
      {
        v25 = Ari::GetLogLevels(v24);
        if ((v25 & 8) != 0)
        {
          v26 = AriOsa::GetOsLog(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v60, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundIndCB", v27);
            v30 = v60;
            if (v61 < 0)
            {
              v30 = v60[0];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136316418;
            *(__p.__r_.__value_.__r.__words + 4) = "ari";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v30;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
            v67 = 1303;
            v68 = 1024;
            v69 = v16;
            v70 = 1024;
            v71 = v58;
            v72 = 1024;
            v73 = v57;
            _os_log_error_impl(&dword_2962B3000, v26, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Error handling indication for CID 0x%x registered for gmid(%d-0x%x)", &__p, 0x2Eu);
            if (v61 < 0)
            {
              operator delete(v60[0]);
            }
          }

          AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundIndCB", v27);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Error handling indication for CID 0x%x registered for gmid(%d-0x%x)", v28, p_p, 1303, v16, v58, v57);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v13 = 0xFFFFFFFFLL;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    memset(&__p, 170, sizeof(__p));
    if ((BYTE8(v78) & 0x10) != 0)
    {
      v40 = v78;
      if (v78 < __src[1])
      {
        *&v78 = __src[1];
        v40 = __src[1];
      }

      v41 = __src[0];
    }

    else
    {
      if ((BYTE8(v78) & 8) == 0)
      {
        v39 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        goto LABEL_68;
      }

      v41 = *&buf[24];
      v40 = *&buf[40];
    }

    v39 = v40 - v41;
    if ((v40 - v41) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v39 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v40 - v41;
    if (v39)
    {
      memmove(&__p, v41, v39);
    }

LABEL_68:
    __p.__r_.__value_.__s.__data_[v39] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ <= 1)
      {
        goto LABEL_89;
      }

      v42 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) <= 1)
      {
LABEL_87:
        v59 = __p;
LABEL_90:
        v52 = **a1;
        v53 = *(*a1 + 8);
        Ari::LogTransportBuf();
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *buf = *MEMORY[0x29EDC9538];
        *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
        *&buf[8] = MEMORY[0x29EDC9570] + 16;
        if (SHIBYTE(v77) < 0)
        {
          operator delete(v76[1]);
        }

        *&buf[8] = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(&buf[16]);
        std::ostream::~ostream();
        MEMORY[0x29C2589B0](v79);
        goto LABEL_97;
      }

      v42 = &__p;
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    v44 = v42 + size;
    v45 = v42;
    v46 = (v42 + size);
    do
    {
      v47 = v45;
      v48 = v45;
      while (1)
      {
        v49 = *v48++;
        if (v49 == 45)
        {
          break;
        }

        v47 = v48;
        if (v48 == v44)
        {
          v47 = v46;
          goto LABEL_79;
        }
      }

      v45 = (&v47->__r_.__value_.__l.__data_ + 1);
      v46 = v47;
    }

    while (v48 != v44);
LABEL_79:
    v50 = v47 - v42;
    if (v47 == v44)
    {
      v50 = -1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ >= v50)
      {
        v51 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__l.__size_ = v50;
        goto LABEL_86;
      }
    }

    else if (v50 <= SHIBYTE(__p.__r_.__value_.__r.__words[2]))
    {
      *(&__p.__r_.__value_.__s + 23) = v50;
      v51 = &__p;
LABEL_86:
      v51->__r_.__value_.__s.__data_[v50] = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      size = __p.__r_.__value_.__l.__size_;
LABEL_89:
      std::string::__init_copy_ctor_external(&v59, __p.__r_.__value_.__l.__data_, size);
      goto LABEL_90;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  std::string::basic_string[abi:ne200100]<0>(&v64, "client_not_registered");
  v31 = **a1;
  v32 = *(*a1 + 8);
  v33 = Ari::LogTransportBuf();
  if (v65 < 0)
  {
    operator delete(v64);
  }

  if (!qword_2A18CA6C0)
  {
    v34 = Ari::GetLogLevels(v33);
    if ((v34 & 4) != 0)
    {
      v35 = AriOsa::GetOsLog(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundIndCB", v36);
        v56 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v56;
        *&buf[22] = 1024;
        *&buf[24] = 1284;
        *&buf[28] = 1024;
        *&buf[30] = v3 >> 26;
        *&buf[34] = 1024;
        *&buf[36] = (v3 >> 15) & 0x3FF;
        _os_log_debug_impl(&dword_2962B3000, v35, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) No handler is registered for indication gmid(%d-0x%x)", buf, 0x28u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundIndCB", v36);
      if (buf[23] >= 0)
      {
        v38 = buf;
      }

      else
      {
        v38 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) No handler is registered for indication gmid(%d-0x%x)", v37, v38, 1284, v58, v57);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  v13 = 0xFFFFFFFFLL;
LABEL_97:
  v54 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_2962C8F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::InboundRespCB(AriHostRt *a1)
{
  v108 = *MEMORY[0x29EDCA608];
  AriHostRt::GetInstance(a1);
  BufCtx = AriMsg::GetBufCtx(**a1, (*(*a1 + 8) - **a1));
  BufGmid = AriMsg::GetBufGmid(**a1, (*(*a1 + 8) - **a1));
  if (BufCtx == 32513)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "arirt_internal_client");
    v4 = **a1;
    v5 = *(*a1 + 8);
    v6 = Ari::LogTransportBuf();
    if (v96 < 0)
    {
      operator delete(__p);
    }

    if (BufGmid > 68190207)
    {
      if (BufGmid == 68190208)
      {
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        v50 = **a1;
        v51 = *(*a1 + 8);
        v52 = ARI_AriMsgAttribResp_Extract();
        LogLevels = Ari::GetLogLevels(v52);
        if ((LogLevels & 8) != 0)
        {
          OsLog = AriOsa::GetOsLog(LogLevels);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v93, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v55);
            v81 = v94 >= 0 ? v93 : v93[0];
            *buf = 136315650;
            *&buf[4] = "ari";
            v98 = 2080;
            v99 = v81;
            v100 = 1024;
            v101 = 1187;
            _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Error getting expected internal message AriMsgAttribResp", buf, 0x1Cu);
            if (v94 < 0)
            {
              operator delete(v93[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v55);
          if (v100 >= 0)
          {
            v57 = buf;
          }

          else
          {
            v57 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Error getting expected internal message AriMsgAttribResp", v56, v57, 1187);
          goto LABEL_88;
        }

        goto LABEL_90;
      }

      if (BufGmid == 84312064)
      {
        LODWORD(v91) = -1431655766;
        v24 = **a1;
        v25 = *(*a1 + 8);
        v26 = ARI_CsiGetCurrentBootStateRspCb_Extract();
        v27 = v26;
        v61 = Ari::GetLogLevels(v26);
        if ((v61 & 0x20) != 0)
        {
          v62 = AriOsa::GetOsLog(v61);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(v93, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v63);
            v64 = v94 >= 0 ? v93 : v93[0];
            v65 = v27 ? "there was an error" : "BB is not ready";
            *buf = 136315906;
            *&buf[4] = "ari";
            v98 = 2080;
            v99 = v64;
            v100 = 1024;
            v101 = 1177;
            v102 = 2080;
            *v103 = v65;
            _os_log_impl(&dword_2962B3000, v62, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Received boot state, but %s", buf, 0x26u);
            if (v94 < 0)
            {
              operator delete(v93[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v63);
          if (v100 >= 0)
          {
            v67 = buf;
          }

          else
          {
            v67 = *buf;
          }

          if (v27)
          {
            v68 = "there was an error";
          }

          else
          {
            v68 = "BB is not ready";
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Received boot state, but %s", v66, v67, 1177, v68);
          goto LABEL_88;
        }

        goto LABEL_90;
      }
    }

    else
    {
      if (BufGmid == 67436544)
      {
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v35 = **a1;
        v36 = *(*a1 + 8);
        v37 = ARI_AriACK_Extract();
        if (!v37)
        {
          v38 = Ari::GetLogLevels(v37);
          if ((v38 & 0x20) != 0)
          {
            v39 = AriOsa::GetOsLog(v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              AriOsa::LogSrcInfo(v93, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v40);
              v41 = v94;
              v42 = v93[0];
              v43 = asString();
              v44 = v93;
              if (v41 < 0)
              {
                v44 = v42;
              }

              *buf = 136316674;
              *&buf[4] = "ari";
              v98 = 2080;
              v99 = v44;
              v100 = 1024;
              v101 = 1199;
              v102 = 1024;
              *v103 = v91 >> 26;
              *&v103[4] = 1024;
              *&v103[6] = (v91 >> 15) & 0x3FF;
              v104 = 2080;
              v105 = v43;
              v106 = 1024;
              v107 = HIDWORD(v91);
              _os_log_impl(&dword_2962B3000, v39, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) ACK received for AriHostRt internal message(%d-0x%03X) with status(%s(%d))", buf, 0x38u);
              if (v94 < 0)
              {
                operator delete(v93[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v40);
            v45 = SHIBYTE(v100);
            v46 = *buf;
            v47 = asString();
            v49 = buf;
            if (v45 < 0)
            {
              v49 = v46;
            }

            AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) ACK received for AriHostRt internal message(%d-0x%03X) with status(%s(%d))", v48, v49, 1199, v91 >> 26, (v91 >> 15) & 0x3FF, v47, HIDWORD(v91));
            goto LABEL_88;
          }
        }

        goto LABEL_90;
      }

      if (BufGmid == 67600384)
      {
        v91 = 0xAAAAAAAAAAAAAAAALL;
        v7 = **a1;
        v8 = *(*a1 + 8);
        v9 = ARI_AriNACK_Extract();
        if (!v9)
        {
          v69 = Ari::GetLogLevels(v9);
          if ((v69 & 8) != 0)
          {
            v70 = AriOsa::GetOsLog(v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(v93, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v71);
              v82 = v94;
              v83 = v93[0];
              v84 = asString();
              v85 = v93;
              if (v82 < 0)
              {
                v85 = v83;
              }

              *buf = 136316674;
              *&buf[4] = "ari";
              v98 = 2080;
              v99 = v85;
              v100 = 1024;
              v101 = 1219;
              v102 = 1024;
              *v103 = v91 >> 26;
              *&v103[4] = 1024;
              *&v103[6] = (v91 >> 15) & 0x3FF;
              v104 = 2080;
              v105 = v84;
              v106 = 1024;
              v107 = HIDWORD(v91);
              _os_log_error_impl(&dword_2962B3000, v70, OS_LOG_TYPE_ERROR, "%s: (%s:%d) NACK received for AriHostRt internal message(%d-0x%03X) with status(%s(%d))", buf, 0x38u);
              if (v94 < 0)
              {
                operator delete(v93[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v71);
            v72 = SHIBYTE(v100);
            v73 = *buf;
            v74 = asString();
            v76 = buf;
            if (v72 < 0)
            {
              v76 = v73;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) NACK received for AriHostRt internal message(%d-0x%03X) with status(%s(%d))", v75, v76, 1219, v91 >> 26, (v91 >> 15) & 0x3FF, v74, HIDWORD(v91));
LABEL_88:
            if (SHIBYTE(v100) < 0)
            {
              operator delete(*buf);
            }

            goto LABEL_90;
          }
        }

        goto LABEL_90;
      }
    }

    v28 = Ari::GetLogLevels(v6);
    if ((v28 & 8) != 0)
    {
      v29 = AriOsa::GetOsLog(v28);
      v31 = BufGmid >> 26;
      v32 = (BufGmid >> 15) & 0x3FF;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v93, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v30);
        v79 = v94 >= 0 ? v93 : v93[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v98 = 2080;
        v99 = v79;
        v100 = 1024;
        v101 = 1227;
        v102 = 1024;
        *v103 = v31;
        *&v103[4] = 1024;
        *&v103[6] = v32;
        _os_log_error_impl(&dword_2962B3000, v29, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unexpected AriHostRt internal message(%d-0x%03X)", buf, 0x28u);
        if (v94 < 0)
        {
          operator delete(v93[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v30);
      if (v100 >= 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unexpected AriHostRt internal message(%d-0x%03X)", v33, v34, 1227, v31, v32);
      goto LABEL_88;
    }

LABEL_90:
    v23 = 0;
    goto LABEL_91;
  }

  if (std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>(qword_2A18CA630, BufCtx))
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__erase_unique<int>(qword_2A18CA630, BufCtx);
  }

  if (std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>(qword_2A18CA658, BufCtx))
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__erase_unique<int>(qword_2A18CA658, BufCtx);
  }

  if (qword_2A18CA680 && !qword_2A18CA670)
  {
    AriDispatch::Semaphore::signal(qword_2A18CA680);
  }

  if (ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(qword_2A18CA510))
  {
    v10 = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::operator[](qword_2A18CA510, (BufCtx >> 8) & 0x7F);
    v11 = *v10;
    v12 = v10[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (*(*v11 + 16))(v11);
    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v88, *v13, *(v13 + 8));
    }

    else
    {
      v14 = *v13;
      v88.__r_.__value_.__r.__words[2] = *(v13 + 16);
      *&v88.__r_.__value_.__l.__data_ = v14;
    }

    v58 = **a1;
    v59 = *(*a1 + 8);
    Ari::LogTransportBuf();
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v60 = *(a1 + 1);
    v86 = *a1;
    v87 = v60;
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = (*(*v11 + 32))(v11, &v86);
    if (v87)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v89, "client_not_registered");
    v15 = **a1;
    v16 = *(*a1 + 8);
    v17 = Ari::LogTransportBuf();
    if (v90 < 0)
    {
      operator delete(v89);
    }

    if (!qword_2A18CA6C0)
    {
      v18 = Ari::GetLogLevels(v17);
      if ((v18 & 8) != 0)
      {
        v19 = AriOsa::GetOsLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v93, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v20);
          v80 = v94 >= 0 ? v93 : v93[0];
          *buf = 136316162;
          *&buf[4] = "ari";
          v98 = 2080;
          v99 = v80;
          v100 = 1024;
          v101 = 1249;
          v102 = 1024;
          *v103 = (BufCtx >> 8) & 0x7F;
          *&v103[4] = 1024;
          *&v103[6] = BufCtx;
          _os_log_error_impl(&dword_2962B3000, v19, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Non-registered cid 0x%04X from buffer ctx 0x%08X", buf, 0x28u);
          if (v94 < 0)
          {
            operator delete(v93[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "InboundRespCB", v20);
        if (v100 >= 0)
        {
          v22 = buf;
        }

        else
        {
          v22 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Non-registered cid 0x%04X from buffer ctx 0x%08X", v21, v22, 1249, (BufCtx >> 8) & 0x7F, BufCtx);
        if (SHIBYTE(v100) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v23 = 0xFFFFFFFFLL;
  }

LABEL_91:
  v77 = *MEMORY[0x29EDCA608];
  return v23;
}

void sub_2962C9D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void AriHostRt::CancelAllTransactions(AriHostRt *this)
{
  v9[4] = *MEMORY[0x29EDCA608];
  AriHostRt::GetInstance(this);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  std::string::basic_string[abi:ne200100]<0>(&__p, "cancel");
  AriDispatch::Semaphore::Create();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = v7;
  v1 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9[0] = &unk_2A1D46C50;
  v9[1] = v2;
  v9[2] = v1;
  v9[3] = v9;
  std::allocate_shared[abi:ne200100]<AriHostRt::ClientTransitionTracker,std::allocator<AriHostRt::ClientTransitionTracker>,std::function<void ()(void)> &,0>();
}

void sub_2962CA414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v44 = *(v42 - 216);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9AriHostRt21CancelAllTransactionsEv_block_invoke(Ari *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  *(*(a1 + 4) + 4) = 0;
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "CancelAllTransactions_block_invoke", v4);
      v5 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v15 = 2080;
      v16 = v5;
      v17 = 1024;
      v18 = 1340;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) notifying for all clients to stall (crash)", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "CancelAllTransactions_block_invoke", v4);
    if (v17 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) notifying for all clients to stall (crash)", v6, v7, 1340);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = *(a1 + 4);
  v13[0] = &unk_2A1D46CE0;
  v13[1] = a1 + 40;
  v13[3] = v13;
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(v8 + 33040, v13);
  result = std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v13);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962CA690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c63_ZTSNSt3__110shared_ptrIN9AriHostRt23ClientTransitionTrackerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c63_ZTSNSt3__110shared_ptrIN9AriHostRt23ClientTransitionTrackerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t ___ZN9AriHostRt21CancelAllTransactionsEv_block_invoke_110(Ari *a1)
{
  v33 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "CancelAllTransactions_block_invoke", v4);
      v5 = v24 >= 0 ? __p : __p[0];
      v6 = *(*(a1 + 4) + 33352);
      *buf = 136315906;
      *&buf[4] = "ari";
      v27 = 2080;
      v28 = v5;
      v29 = 1024;
      v30 = 1359;
      v31 = 1024;
      v32 = v6;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) canceling %u outstanding requests", buf, 0x22u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "CancelAllTransactions_block_invoke", v4);
    if (v29 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) canceling %u outstanding requests", v7, v8, 1359, *(*(a1 + 4) + 33352));
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }
  }

  v9 = *(a1 + 4);
  v10 = *(v9 + 33344);
  if (v10)
  {
    do
    {
      v11 = v10[3];
      v12 = v10[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AriHostRt::RtTransaction::cancel(v11, 4294967211);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v10 = *v10;
    }

    while (v10);
    v9 = *(a1 + 4);
  }

  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::clear(v9 + 33328);
  v14 = Ari::GetLogLevels(v13);
  if ((v14 & 0x20) != 0)
  {
    v15 = AriOsa::GetOsLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "CancelAllTransactions_block_invoke", v16);
      v17 = v24 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v27 = 2080;
      v28 = v17;
      v29 = 1024;
      v30 = 1367;
      _os_log_impl(&dword_2962B3000, v15, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) notifying for all clients of end of cancellation", buf, 0x1Cu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "CancelAllTransactions_block_invoke", v16);
    if (v29 >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) notifying for all clients of end of cancellation", v18, v19, 1367);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }
  }

  v20 = *(a1 + 4);
  v25[0] = &unk_2A1D46DE0;
  v25[1] = a1 + 40;
  v25[3] = v25;
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(v20 + 33040, v25);
  result = std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v25);
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962CAA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::commitLPM(AriHostRt *this, uint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  Instance = AriHostRt::GetInstance(this);
  if (a2 >= 0x1F5)
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    std::string::basic_string[abi:ne200100]<0>(&v33, "lpmDrainSignal");
    AriDispatch::Semaphore::Create();
    if (v34 < 0)
    {
      operator delete(v33);
    }

    v4 = qword_2A18C2418;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN9AriHostRt9commitLPMEj_block_invoke;
    block[3] = &__block_descriptor_tmp_122;
    v32 = a2;
    block[4] = &AriHostRt::GetInstance(void)::instance;
    block[5] = v35;
    v31 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v4, block);
    v5 = v35;
    dispatch_walltime(0, 1000000 * a2);
    v6 = AriDispatch::Semaphore::wait(v5);
    if (v6)
    {
      LogLevels = Ari::GetLogLevels(v6);
      if ((LogLevels & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM", v9);
          v10 = v29 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "ari";
          v38 = 2080;
          v39 = v10;
          v40 = 1024;
          v41 = 1433;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) lpm-critical transaction draining complete", buf, 0x1Cu);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM", v9);
        if (v40 >= 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) lpm-critical transaction draining complete", v11, v12, 1433);
LABEL_41:
        if (SHIBYTE(v40) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      v19 = Ari::GetLogLevels(v6);
      if ((v19 & 0x10) != 0)
      {
        v20 = AriOsa::GetOsLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM", v21);
          v22 = v29 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v38 = 2080;
          v39 = v22;
          v40 = 1024;
          v41 = 1429;
          v42 = 1024;
          v43 = a2;
          _os_log_impl(&dword_2962B3000, v20, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) timeout waiting %dms to drain lpm-critical transactions", buf, 0x22u);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM", v21);
        if (v40 >= 0)
        {
          v24 = buf;
        }

        else
        {
          v24 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) timeout waiting %dms to drain lpm-critical transactions", v23, v24, 1429, a2);
        goto LABEL_41;
      }
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    goto LABEL_47;
  }

  v13 = Ari::GetLogLevels(Instance);
  if ((v13 & 0x10) != 0)
  {
    v14 = AriOsa::GetOsLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM", v15);
      v16 = v29 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v38 = 2080;
      v39 = v16;
      v40 = 1024;
      v41 = 1438;
      v42 = 1024;
      v43 = a2;
      _os_log_impl(&dword_2962B3000, v14, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Skipping request-draining due to imminent LPM timeout in %dms", buf, 0x22u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM", v15);
    if (v40 >= 0)
    {
      v18 = buf;
    }

    else
    {
      v18 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Skipping request-draining due to imminent LPM timeout in %dms", v17, v18, 1438, a2);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_47:
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 0x40000000;
  v27[2] = ___ZN9AriHostRt9commitLPMEj_block_invoke_126;
  v27[3] = &__block_descriptor_tmp_129;
  v27[4] = &AriHostRt::GetInstance(void)::instance;
  dispatch_async(qword_2A18C2418, v27);
  v25 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962CAF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9AriHostRt9commitLPMEj_block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v3);
      v4 = v64 >= 0 ? __p : __p[0];
      v5 = *(*(a1 + 32) + 33352);
      v6 = *(a1 + 56);
      *buf = 136316162;
      *&buf[4] = "ari";
      v66 = 2080;
      v67 = v4;
      v68 = 1024;
      v69 = 1393;
      v70 = 1024;
      *v71 = v5;
      *&v71[4] = 1024;
      *&v71[6] = v6;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) attempt to drain lpm-critical request based on %u outstanding requests with %dms timeout", buf, 0x28u);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v3);
    if (v68 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) attempt to drain lpm-critical request based on %u outstanding requests with %dms timeout", v7, v8, 1393, *(*(a1 + 32) + 33352), *(a1 + 56));
    if (SHIBYTE(v68) < 0)
    {
      operator delete(*buf);
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 32) + 0x8000;
  v11 = *(a1 + 48);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(v10 + 640) = v9;
  v12 = *(v10 + 648);
  *(v10 + 648) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::clear(*(a1 + 32) + 33368);
  v14 = *(a1 + 32);
  v15 = *(v14 + 33344);
  if (v15)
  {
    do
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v17 + 48) <= 0x4E20uLL)
      {
        v18 = Ari::GetLogLevels(v13);
        if ((v18 & 0x20) != 0)
        {
          v19 = AriOsa::GetOsLog(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v20);
            v21 = v64;
            v22 = __p[0];
            AriHostRt::RtTransaction::asString(v61, v17);
            v23 = __p;
            if (v21 < 0)
            {
              v23 = v22;
            }

            v24 = v61;
            if (v62 < 0)
            {
              v24 = v61[0];
            }

            *buf = 136315906;
            *&buf[4] = "ari";
            v66 = 2080;
            v67 = v23;
            v68 = 1024;
            v69 = 1404;
            v70 = 2080;
            *v71 = v24;
            _os_log_impl(&dword_2962B3000, v19, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) trx(%s) is lpm-critical", buf, 0x26u);
            if (v62 < 0)
            {
              operator delete(v61[0]);
            }

            if (v64 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v20);
          v25 = SHIBYTE(v68);
          v26 = *buf;
          AriHostRt::RtTransaction::asString(__p, v17);
          v28 = buf;
          if (v25 < 0)
          {
            v28 = v26;
          }

          if (v64 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) trx(%s) is lpm-critical", v27, v28, 1404, v29);
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(*buf);
          }
        }

        v30 = *(a1 + 32);
        BufCtx = AriMsg::GetBufCtx(**(v17 + 16), (*(*(v17 + 16) + 8) - **(v17 + 16)));
        v32 = (v30 + 33368);
        v33 = *(v30 + 33376);
        if (!v33)
        {
          goto LABEL_75;
        }

        v34 = vcnt_s8(v33);
        v34.i16[0] = vaddlv_u8(v34);
        if (v34.u32[0] > 1uLL)
        {
          v35 = BufCtx;
          if (v33 <= BufCtx)
          {
            v35 = BufCtx % v33;
          }
        }

        else
        {
          v35 = (v33 - 1) & BufCtx;
        }

        v48 = *(*v32 + 8 * v35);
        if (!v48 || (v49 = *v48) == 0)
        {
LABEL_75:
          operator new();
        }

        while (1)
        {
          v50 = v49[1];
          if (v50 == BufCtx)
          {
            if (*(v49 + 4) == BufCtx)
            {
              if (v16)
              {
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v13 = v49[4];
              v49[3] = v17;
              v49[4] = v16;
              if (v13)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              }

              goto LABEL_79;
            }
          }

          else
          {
            if (v34.u32[0] > 1uLL)
            {
              if (v50 >= v33)
              {
                v50 %= v33;
              }
            }

            else
            {
              v50 &= v33 - 1;
            }

            if (v50 != v35)
            {
              goto LABEL_75;
            }
          }

          v49 = *v49;
          if (!v49)
          {
            goto LABEL_75;
          }
        }
      }

      v13 = Ari::GetLogLevels(v13);
      if ((v13 & 0x20) != 0)
      {
        v36 = AriOsa::GetOsLog(v13);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v37);
          v38 = v64;
          v39 = __p[0];
          AriHostRt::RtTransaction::asString(v61, v17);
          v40 = __p;
          if (v38 < 0)
          {
            v40 = v39;
          }

          v41 = v61;
          if (v62 < 0)
          {
            v41 = v61[0];
          }

          v42 = *(v17 + 48);
          *buf = 136316162;
          *&buf[4] = "ari";
          v66 = 2080;
          v67 = v40;
          v68 = 1024;
          v69 = 1410;
          v70 = 2080;
          *v71 = v41;
          *&v71[8] = 2048;
          v72 = v42;
          _os_log_impl(&dword_2962B3000, v36, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) NOT waiting for trx(%s) due to long timeout of %llums", buf, 0x30u);
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }

          if (v64 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v37);
        v43 = SHIBYTE(v68);
        v44 = *buf;
        AriHostRt::RtTransaction::asString(__p, v17);
        v46 = buf;
        if (v43 < 0)
        {
          v46 = v44;
        }

        v47 = __p;
        if (v64 < 0)
        {
          v47 = __p[0];
        }

        v13 = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) NOT waiting for trx(%s) due to long timeout of %llums", v45, v46, 1410, v47, *(v17 + 48));
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v68) < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_79:
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v15 = *v15;
    }

    while (v15);
    v14 = *(a1 + 32);
  }

  v51 = v14 + 0x8000;
  v52 = *(v51 + 624);
  if (v52)
  {
    v53 = Ari::GetLogLevels(v13);
    if ((v53 & 0x20) != 0)
    {
      v54 = AriOsa::GetOsLog(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v55);
        v56 = v64 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        v66 = 2080;
        v67 = v56;
        v68 = 1024;
        v69 = 1422;
        v70 = 2048;
        *v71 = v52;
        _os_log_impl(&dword_2962B3000, v54, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) lpmDrainSet.size(): %zu", buf, 0x26u);
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v55);
      if (v68 >= 0)
      {
        v58 = buf;
      }

      else
      {
        v58 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) lpmDrainSet.size(): %zu", v57, v58, 1422, v52);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    AriDispatch::Semaphore::signal(*(v51 + 640));
  }

  v59 = *MEMORY[0x29EDCA608];
}

void sub_2962CB868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN11AriDispatch9SemaphoreEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN11AriDispatch9SemaphoreEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t ___ZN9AriHostRt9commitLPMEj_block_invoke_126(uint64_t LogLevels)
{
  v39 = *MEMORY[0x29EDCA608];
  v25 = LogLevels;
  v1 = *(LogLevels + 32);
  v2 = *(v1 + 33384);
  if (v2)
  {
    do
    {
      LogLevels = Ari::GetLogLevels(LogLevels);
      if ((LogLevels & 0x10) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(v30, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v4);
          v5 = v31;
          v6 = v30[0];
          AriHostRt::RtTransaction::asString(&__p, v2[3]);
          if (v5 >= 0)
          {
            v7 = v30;
          }

          else
          {
            v7 = v6;
          }

          p_p = &__p;
          if (v29 < 0)
          {
            p_p = __p;
          }

          *buf = 136315906;
          *&buf[4] = "ari";
          v33 = 2080;
          v34 = v7;
          v35 = 1024;
          v36 = 1447;
          v37 = 2080;
          v38 = p_p;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) trx(%s) not drained before lpm", buf, 0x26u);
          if (v29 < 0)
          {
            operator delete(__p);
          }

          if (v31 < 0)
          {
            operator delete(v30[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v4);
        v9 = SHIBYTE(v35);
        v10 = *buf;
        AriHostRt::RtTransaction::asString(v30, v2[3]);
        if (v9 >= 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = v10;
        }

        if (v31 >= 0)
        {
          v13 = v30;
        }

        else
        {
          v13 = v30[0];
        }

        LogLevels = AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) trx(%s) not drained before lpm", v11, v12, 1447, v13);
        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        if (SHIBYTE(v35) < 0)
        {
          operator delete(*buf);
        }
      }

      v2 = *v2;
    }

    while (v2);
    v1 = *(v25 + 32);
  }

  v14 = *(v1 + 33416);
  *(v1 + 33408) = 0u;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::clear(*(v25 + 32) + 33368);
  __p = 0x600000001;
  v15 = *(*(v25 + 32) + 12);
  v27 = 0xFFFF;
  v28 = v15;
  v17 = Ari::GetLogLevels(v16);
  if ((v17 & 0x20) != 0)
  {
    v18 = AriOsa::GetOsLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(v30, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v19);
      v20 = v31 >= 0 ? v30 : v30[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v33 = 2080;
      v34 = v20;
      v35 = 1024;
      v36 = 1464;
      _os_log_impl(&dword_2962B3000, v18, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Committing LPM to BB before AP sleep", buf, 0x1Cu);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "commitLPM_block_invoke", v19);
    if (v35 >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Committing LPM to BB before AP sleep", v21, v22, 1464);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(*buf);
    }
  }

  result = AriHostRt::setMsgAttrib_nl(*(v25 + 32), &__p);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962CBCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::SetOPMode(int a1, NSObject *a2, unsigned int a3)
{
  v50 = *MEMORY[0x29EDCA608];
  memset(&v44, 170, sizeof(v44));
  std::string::basic_string[abi:ne200100]<0>(&v44, &unk_2962D97AA);
  v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  Instance = AriHostRt::GetInstance(v6.__d_.__rep_);
  if (a1 == 1)
  {
    LogLevels = Ari::GetLogLevels(Instance);
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(v42, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode", v17);
        v18 = v43 >= 0 ? v42 : v42[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v46 = 2080;
        v47 = v18;
        v48 = 1024;
        v49 = 1500;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) notifying for all clients to enter LPM", buf, 0x1Cu);
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode", v17);
      if (v48 >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) notifying for all clients to enter LPM", v19, v20, 1500);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      v44.__r_.__value_.__l.__size_ = 14;
      v21 = v44.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v44.__r_.__value_.__s + 23) = 14;
      v21 = &v44;
    }

    strcpy(v21, "lpmEnterSignal");
    a3 >>= 1;
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 0x40000000;
    v41[2] = ___ZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sj_block_invoke;
    v41[3] = &__block_descriptor_tmp_133;
    v41[4] = &AriHostRt::GetInstance(void)::instance;
    dispatch_async(qword_2A18C2418, v41);
    v28 = 3;
    goto LABEL_43;
  }

  if (a1 == 2)
  {
    v8 = Ari::GetLogLevels(Instance);
    if ((v8 & 0x20) != 0)
    {
      v9 = AriOsa::GetOsLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(v42, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode", v10);
        v11 = v43 >= 0 ? v42 : v42[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v46 = 2080;
        v47 = v11;
        v48 = 1024;
        v49 = 1519;
        _os_log_impl(&dword_2962B3000, v9, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) notifying for all clients to exit LPM", buf, 0x1Cu);
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode", v10);
      if (v48 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) notifying for all clients to exit LPM", v12, v13, 1519);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      v44.__r_.__value_.__l.__size_ = 13;
      v14 = v44.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v44.__r_.__value_.__s + 23) = 13;
      v14 = &v44;
    }

    strcpy(v14, "lpmExitSignal");
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sj_block_invoke_136;
    block[3] = &__block_descriptor_tmp_137;
    block[4] = &AriHostRt::GetInstance(void)::instance;
    dispatch_async(qword_2A18C2418, block);
    v28 = 4;
LABEL_43:
    v29 = qword_2A18C2420;
    v33[0] = MEMORY[0x29EDCA5F8];
    v33[1] = 1174405120;
    v33[2] = ___ZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sj_block_invoke_139;
    v33[3] = &__block_descriptor_tmp_156;
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v44;
    }

    v37 = v28;
    v38 = a3;
    v39 = a1;
    v35 = &AriHostRt::GetInstance(void)::instance;
    rep = v6.__d_.__rep_;
    dispatch_group_async(a2, v29, v33);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v27 = 0;
    goto LABEL_49;
  }

  v22 = Ari::GetLogLevels(Instance);
  if ((v22 & 8) != 0)
  {
    v23 = AriOsa::GetOsLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v42, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode", v24);
      v32 = v43 >= 0 ? v42 : v42[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v46 = 2080;
      v47 = v32;
      v48 = 1024;
      v49 = 1537;
      _os_log_error_impl(&dword_2962B3000, v23, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Setting unknown mode", buf, 0x1Cu);
      if (v43 < 0)
      {
        operator delete(v42[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode", v24);
    if (v48 >= 0)
    {
      v26 = buf;
    }

    else
    {
      v26 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Setting unknown mode", v25, v26, 1537);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(*buf);
    }
  }

  v27 = 0xFFFFFFFFLL;
LABEL_49:
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v30 = *MEMORY[0x29EDCA608];
  return v27;
}

void sub_2962CC2D8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sj_block_invoke_139(uint64_t a1)
{
  v8[4] = *MEMORY[0x29EDCA608];
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
  }

  AriDispatch::Semaphore::Create();
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = v6;
  v1 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8[0] = &unk_2A1D46E60;
  v8[1] = v2;
  v8[2] = v1;
  v8[3] = v8;
  std::allocate_shared[abi:ne200100]<AriHostRt::ClientTransitionTracker,std::allocator<AriHostRt::ClientTransitionTracker>,std::function<void ()(void)> &,0>();
}

void sub_2962CCD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v51 = *(v49 - 216);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sj_block_invoke_2(uint64_t a1)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v5[0] = &unk_2A1D46EE0;
  v5[1] = a1 + 40;
  v5[2] = v2;
  v5[3] = v5;
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(v1 + 33040, v5);
  result = std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962CCEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sj_block_invoke_2_148(Ari *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode_block_invoke_2", v4);
      v5 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v15 = 2080;
      v16 = v5;
      v17 = 1024;
      v18 = 1584;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) notifying for all clients to stall (LPM enter)", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SetOPMode_block_invoke", v4);
    if (v17 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) notifying for all clients to stall (LPM enter)", v6, v7, 1584);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = *(a1 + 4);
  v13[0] = &unk_2A1D46FE0;
  v13[1] = a1 + 40;
  v13[3] = v13;
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(v8 + 33040, v13);
  result = std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v13);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962CD0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

uint64_t AriHostRt::RegisterBasebandResetDelegate(AriHostRt *a1)
{
  v7[4] = *MEMORY[0x29EDCA608];
  Instance = AriHostRt::GetInstance(a1);
  if (AriHostRt::Init(Instance))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = qword_2A18C2418;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1174405120;
    v6[2] = ___ZN9AriHostRt29RegisterBasebandResetDelegateENSt3__18functionIFvNS_20ARI_CLIENT_ERROR_EVTENS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEijEEE_block_invoke;
    v6[3] = &__block_descriptor_tmp_157;
    v6[4] = &AriHostRt::GetInstance(void)::instance;
    std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::__value_func[abi:ne200100](v7, a1);
    dispatch_sync(v4, v6);
    std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::~__value_func[abi:ne200100](v7);
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN9AriHostRt29RegisterBasebandResetDelegateENSt3__18functionIFvNS_20ARI_CLIENT_ERROR_EVTENS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEijEEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::__value_func[abi:ne200100](v3, a1 + 40);
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::__value_func[abi:ne200100](v4, v3);
  operator new();
}

void sub_2962CD364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::ProcessClientError(AriHostRt *a1, uint64_t a2, uint64_t a3)
{
  Instance = AriHostRt::GetInstance(a1);
  if (AriHostRt::Init(Instance))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = qword_2A18C2418;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN9AriHostRt18ProcessClientErrorEi21ARI_CLIENT_ERROR_TYPENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_158;
  v7[4] = &AriHostRt::GetInstance(void)::instance;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  dispatch_async(v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void ___ZN9AriHostRt18ProcessClientErrorEi21ARI_CLIENT_ERROR_TYPENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 33520);
  if (v3)
  {
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
      v3 = *(v2 + 33520);
    }

    else
    {
      __p = *(a1 + 40);
    }

    std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::operator()(v3, 3, &__p, 0, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2962CD528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t ___ZN9AriHostRt24SendSensitiveLoggingInfoEv_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v1;
  v29 = v1;
  v30 = 0xAAAAAAAAFFFFFFFFLL;
  SdkGmidListSensitiveLogging();
  if (*(&v29 + 1) >= 0x1F5uLL)
  {
    __assert_rtn("SendSensitiveLoggingInfo_block_invoke", "ari_host_rt.cpp", 1672, "gmidList.size() <= ARI_MSG_SET_MAX");
  }

  bzero(v25, 0x7D4uLL);
  v24 = 0x900000001;
  v27 = 0x7FFFFFFF;
  v3 = v29;
  if (v29)
  {
    v4 = 0;
    do
    {
      LogLevels = Ari::GetLogLevels(LogLevels);
      if ((LogLevels & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SendSensitiveLoggingInfo_block_invoke", v6);
          v7 = __p;
          if (v23 < 0)
          {
            v7 = __p[0];
          }

          v8 = *(v3 + 4);
          *buf = 136315906;
          *&buf[4] = "ari";
          v32 = 2080;
          v33 = v7;
          v34 = 1024;
          v35 = 1682;
          v36 = 1024;
          v37 = v8;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Updating sensitive logging gmid: 0x%x", buf, 0x22u);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SendSensitiveLoggingInfo_block_invoke", v6);
        if (v34 >= 0)
        {
          v10 = buf;
        }

        else
        {
          v10 = *buf;
        }

        LogLevels = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Updating sensitive logging gmid: 0x%x", v9, v10, 1682, *(v3 + 4));
        if (SHIBYTE(v34) < 0)
        {
          operator delete(*buf);
        }
      }

      v11 = v4 + 1;
      v25[v4] = *(v3 + 4);
      v3 = *v3;
      ++v4;
    }

    while (v3);
  }

  else
  {
    v11 = 0;
  }

  v26 = v11;
  v12 = AriHostRt::setGroupMsgAttrib_nl(LogLevels, &v24);
  *(*(*(a1 + 32) + 8) + 24) = v12;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v13 = Ari::GetLogLevels(v12);
    if ((v13 & 8) != 0)
    {
      v14 = AriOsa::GetOsLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SendSensitiveLoggingInfo_block_invoke", v15);
        v20 = v23 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v32 = 2080;
        v33 = v20;
        v34 = 1024;
        v35 = 1690;
        _os_log_error_impl(&dword_2962B3000, v14, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to send the sensitive logging info", buf, 0x1Cu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "SendSensitiveLoggingInfo_block_invoke", v15);
      if (v34 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to send the sensitive logging info", v16, v17, 1690);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v28);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void AriHostRt::DumpState(AriHostRt *this)
{
  v10[4] = *MEMORY[0x29EDCA608];
  AriHostRt::GetInstance(this);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN9AriHostRt9DumpStateEv_block_invoke;
  block[3] = &__block_descriptor_tmp_169;
  block[4] = &AriHostRt::GetInstance(void)::instance;
  dispatch_sync(qword_2A18C2418, block);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  std::string::basic_string[abi:ne200100]<0>(&__p, "dumptracker");
  AriDispatch::Semaphore::Create();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = v7;
  v1 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10[0] = &unk_2A1D471F0;
  v10[1] = v2;
  v10[2] = v1;
  v10[3] = v10;
  std::allocate_shared[abi:ne200100]<AriHostRt::ClientTransitionTracker,std::allocator<AriHostRt::ClientTransitionTracker>,std::function<void ()(void)> &,0>();
}

void sub_2962CDCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9AriHostRt9DumpStateEv_block_invoke(Ari *a1)
{
  v1 = a1;
  v81[4] = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v4);
      v5 = v64 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v66 = 2080;
      v67 = v5;
      v68 = 1024;
      v69 = 1702;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client Resources:", buf, 0x1Cu);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v4);
    if (v68 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client Resources:", v6, v7, 1702);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = *(v1 + 4);
  v81[0] = &unk_2A1D470F0;
  v81[3] = v81;
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(v8 + 33040, v81);
  v9 = std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v81);
  v10 = Ari::GetLogLevels(v9);
  if ((v10 & 0x20) != 0)
  {
    v11 = AriOsa::GetOsLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v12);
      v13 = v64 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v66 = 2080;
      v67 = v13;
      v68 = 1024;
      v69 = 1707;
      _os_log_impl(&dword_2962B3000, v11, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Indication Resources:", buf, 0x1Cu);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v12);
    if (v68 >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Indication Resources:", v14, v15, 1707);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(*buf);
    }
  }

  v16 = *(v1 + 4);
  v80[0] = &unk_2A1D47170;
  v80[3] = v80;
  ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::doForEach(v16 + 33184, v80);
  v17 = std::__function::__value_func<void ()(int,std::list<std::shared_ptr<Ari::AriClientProxy>> &)>::~__value_func[abi:ne200100](v80);
  if (*(*(v1 + 4) + 33352))
  {
    v17 = Ari::GetLogLevels(v17);
    if ((v17 & 0x20) != 0)
    {
      v18 = AriOsa::GetOsLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v19);
        v20 = v64 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v66 = 2080;
        v67 = v20;
        v68 = 1024;
        v69 = 1718;
        _os_log_impl(&dword_2962B3000, v18, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Transaction In-Flight:", buf, 0x1Cu);
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v19);
      if (v68 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      v17 = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Transaction In-Flight:", v21, v22, 1718);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(*buf);
      }
    }

    v23 = *(*(v1 + 4) + 33344);
    if (v23)
    {
      v62 = v1;
      do
      {
        BufGmid = AriMsg::GetBufGmid(**(v23[3] + 16), (*(*(v23[3] + 16) + 8) - **(v23[3] + 16)));
        v25 = BufGmid;
        v17 = Ari::GetLogLevels(BufGmid);
        if ((v17 & 0x20) != 0)
        {
          v26 = AriOsa::GetOsLog(v17);
          v28 = (v25 >> 15) & 0x3FF;
          v29 = v25 >> 26;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v27);
            if (v64 >= 0)
            {
              v30 = __p;
            }

            else
            {
              v30 = __p[0];
            }

            v31 = *(v23 + 4);
            v32 = v23[3];
            v33 = *(v32 + 32);
            v34 = *(v32 + 40);
            if (v34)
            {
              v35 = 1;
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              v36 = v23[3];
              v37 = *(v36 + 32);
              v38 = *(v36 + 40);
              v39 = v33[2];
              if (v38)
              {
                v35 = 0;
                atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v33 = v37;
            }

            else
            {
              v38 = 0;
              v39 = v33[2];
              v35 = 1;
            }

            v40 = (*(*v33 + 16))(v33);
            if (*(v40 + 23) >= 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = *v40;
            }

            *buf = 136316930;
            *&buf[4] = "ari";
            v66 = 2080;
            v67 = v30;
            v68 = 1024;
            v69 = 1722;
            v70 = 1024;
            v71 = v31;
            v72 = 1024;
            v73 = v29;
            v74 = 1024;
            v75 = v28;
            v76 = 1024;
            v77 = v39;
            v78 = 2080;
            v79 = v41;
            _os_log_impl(&dword_2962B3000, v26, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Transaction ID: 0x%x, GMID: (%d-0x%x), Client ID: 0x%x(%s)", buf, 0x3Eu);
            if ((v35 & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v38);
            }

            v1 = v62;
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            if (v64 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v27);
          if (v68 >= 0)
          {
            v42 = buf;
          }

          else
          {
            v42 = *buf;
          }

          v43 = *(v23 + 4);
          v44 = v23[3];
          v45 = *(v44 + 32);
          v46 = *(v44 + 40);
          if (v46)
          {
            v47 = 1;
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            v48 = v23[3];
            v49 = *(v48 + 32);
            v50 = *(v48 + 40);
            v51 = v45[2];
            if (v50)
            {
              v47 = 0;
              atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v45 = v49;
          }

          else
          {
            v50 = 0;
            v51 = v45[2];
            v47 = 1;
          }

          v52 = (*(*v45 + 16))(v45);
          if (*(v52 + 23) >= 0)
          {
            v54 = v52;
          }

          else
          {
            v54 = *v52;
          }

          v17 = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Transaction ID: 0x%x, GMID: (%d-0x%x), Client ID: 0x%x(%s)", v53, v42, 1722, v43, v29, v28, v51, v54);
          if ((v47 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v50);
          }

          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(*buf);
          }
        }

        v23 = *v23;
      }

      while (v23);
    }
  }

  v55 = Ari::GetLogLevels(v17);
  if ((v55 & 0x20) != 0)
  {
    v56 = AriOsa::GetOsLog(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v57);
      v58 = v64 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v66 = 2080;
      v67 = v58;
      v68 = 1024;
      v69 = 1729;
      _os_log_impl(&dword_2962B3000, v56, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) XPC resources:", buf, 0x1Cu);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v57);
    if (v68 >= 0)
    {
      v60 = buf;
    }

    else
    {
      v60 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) XPC resources:", v59, v60, 1729);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(*buf);
    }
  }

  Ari::AriXpcServer::dumpState(*(*(v1 + 4) + 40));
  v61 = *MEMORY[0x29EDCA608];
}

void sub_2962CE510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9AriHostRt9DumpStateEv_block_invoke_2(Ari *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke_2", v4);
      v5 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v15 = 2080;
      v16 = v5;
      v17 = 1024;
      v18 = 1744;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) notifying for all clients to DumpState", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DumpState_block_invoke", v4);
    if (v17 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) notifying for all clients to DumpState", v6, v7, 1744);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = *(a1 + 4);
  v13[0] = &unk_2A1D47270;
  v13[1] = a1 + 40;
  v13[3] = v13;
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::doForEach(v8 + 33040, v13);
  result = std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v13);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962CE750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "unknown";
  }

  else
  {
    return (&off_29EE31080)[a1 - 1];
  }
}

uint64_t AriRuntimeReportError(AriHostRt *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v3 = AriHostRt::ProcessClientError(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_2962CE85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<AriHostRt::RtTransaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D468B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2589F0);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__erase_unique<int>(void *a1, int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = a1[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v5)
    {
      v7 %= *&v5;
    }
  }

  else
  {
    v7 &= *&v5 - 1;
  }

  v9 = *(*a1 + 8 * v7);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 != v3);
  if (v10 == a1 + 2)
  {
    goto LABEL_20;
  }

  v11 = v10[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v11 >= *&v5)
    {
      v11 %= *&v5;
    }
  }

  else
  {
    v11 &= *&v5 - 1;
  }

  if (v11 != v7)
  {
LABEL_20:
    if (v6)
    {
      v12 = *(v6 + 8);
      if (v8.u32[0] > 1uLL)
      {
        v13 = *(v6 + 8);
        if (v12 >= *&v5)
        {
          v13 = v12 % *&v5;
        }
      }

      else
      {
        v13 = v12 & (*&v5 - 1);
      }

      if (v13 == v7)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v7) = 0;
    v6 = *v3;
  }

  if (v6)
  {
    v12 = *(v6 + 8);
LABEL_24:
    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }
    }

    else
    {
      v12 &= *&v5 - 1;
    }

    if (v12 != v7)
    {
      *(*a1 + 8 * v12) = v10;
      v6 = *v3;
    }
  }

  *v10 = v6;
  *v3 = 0;
  --a1[3];
  v14 = v3[4];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  operator delete(v4);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
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

void sub_2962CF058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AriHostRt::ClientTransitionTracker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D46900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2589F0);
}

uint64_t std::__shared_ptr_emplace<AriHostRt::ClientTransitionTracker>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 96));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 64);

  return std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>>>::~__hash_table(a1 + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

uint64_t std::__function::__func<void (*)(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &),std::allocator<void (*)(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>,void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1D46950;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &),std::allocator<void (*)(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>,void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<IDMgr::Range>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<IDMgr::Range>::destroy(*a1);
    std::__tree<IDMgr::Range>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[5];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__function::__value_func<void ()(int,unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(v1 + 4);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t ResMgr<std::shared_ptr<Ari::AriClientProxy>>::~ResMgr(uint64_t a1, dispatch_semaphore_s *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    AriOsa::OsMutexFree(v5, a2);
  }

  std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](a1 + 112);
  std::__tree<IDMgr::Range>::destroy(*(a1 + 80));
  std::__tree<IDMgr::Range>::destroy(*(a1 + 56));

  return std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::~__hash_table(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<Ari::AriClientGcdProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D46A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2589F0);
}

uint64_t std::function<void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::operator()(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<Ari::AriClientXpcProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D46A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2589F0);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt16DeregisterClientEjEUb_E3__0NS_9allocatorIS3_EEFiiRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEE7__cloneEPNS0_6__baseISE_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1D46AA0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9AriHostRt16DeregisterClientEjEUb_E3__0NS_9allocatorIS3_EEFiiRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEEclEOiSD_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v18[0] = v18;
  v18[1] = v18;
  v19 = 0;
  v4 = a3[1];
  if (v4 == a3)
  {
    v16 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = a3[2];
    do
    {
      v8 = v4[1];
      v6 |= *(v4[2] + 8) == v3;
      if (*(v4[2] + 8) == v3)
      {
        if (v8 == a3)
        {
          LOBYTE(v9) = 1;
        }

        else
        {
          do
          {
            v9 = *(v8[2] + 8) == v3;
            v6 |= v9;
            if (*(v8[2] + 8) != v3)
            {
              break;
            }

            v8 = v8[1];
          }

          while (v8 != a3);
        }

        if (v4 != v8)
        {
          v10 = *v8;
          if (v18 != a3)
          {
            v11 = 1;
            if (v10 != v4)
            {
              v12 = v4;
              do
              {
                v12 = v12[1];
                ++v11;
              }

              while (v12 != v10);
            }

            v7 -= v11;
            a3[2] = v7;
            v5 += v11;
            v19 = v5;
          }

          v13 = *(v10 + 8);
          v14 = *v4;
          *(v14 + 8) = v13;
          *v13 = v14;
          v15 = v18[0];
          *(v18[0] + 8) = v4;
          *v4 = v15;
          v18[0] = v10;
          *(v10 + 8) = v18;
        }

        if (!v9)
        {
          v8 = v8[1];
        }
      }

      v4 = v8;
    }

    while (v8 != a3);
    v16 = v6;
  }

  std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(v18);
  return -v16;
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt16DeregisterClientEjEUb_E3__0NS_9allocatorIS3_EEFiiRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt16DeregisterClientEjEUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<int ()(int,std::list<std::shared_ptr<Ari::AriClientProxy>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ResMgr<std::shared_ptr<Ari::AriClientProxy>>::sw_dbug_trap(uint64_t result, int a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = result;
    v3 = IDMgr::dump((result + 40));
    LogLevels = Ari::GetLogLevels(v3);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v22, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v6);
        v20 = v23 >= 0 ? v22 : v22[0];
        v21 = v2[3];
        *__p = 136316162;
        *&__p[4] = "ari";
        v25 = 2080;
        v26 = v20;
        v27 = 1024;
        v28 = 274;
        v29 = 2048;
        *v30 = v2;
        *&v30[8] = 2048;
        v31 = v21;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ResMgr(%p) dump total entries: %zu", __p, 0x30u);
        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v6);
      if (v27 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ResMgr(%p) dump total entries: %zu", v7, v8, 274, v2, v2[3]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(*__p);
      }
    }

    for (i = v2[2]; i; i = *i)
    {
      v10 = v2[17];
      if (v10)
      {
        std::function<void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::operator()(v10, *(i + 4), *(i + 6));
      }

      else
      {
        v11 = Ari::GetLogLevels(0);
        if ((v11 & 8) != 0)
        {
          v12 = AriOsa::GetOsLog(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v22, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v13);
            v16 = v22;
            if (v23 < 0)
            {
              v16 = v22[0];
            }

            v17 = *(i + 4);
            v18 = *(i + 6);
            *__p = 136316418;
            *&__p[4] = "ari";
            v25 = 2080;
            v26 = v16;
            v27 = 1024;
            v28 = 284;
            v29 = 1024;
            *v30 = v17;
            *&v30[4] = 1024;
            *&v30[6] = v17;
            LOWORD(v31) = 1024;
            *(&v31 + 2) = v18;
            _os_log_error_impl(&dword_2962B3000, v12, OS_LOG_TYPE_ERROR, "%s: (%s:%d) id(%08d-0x%08x) ts:%u", __p, 0x2Eu);
            if (v23 < 0)
            {
              operator delete(v22[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v13);
          if (v27 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) id(%08d-0x%08x) ts:%u", v14, v15, 284, *(i + 4), *(i + 4), *(i + 6));
          if (SHIBYTE(v27) < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }

    AriOsa::OsSleep(0x7D0);
    result = MEMORY[0x29C258610](1, "true", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 287);
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962D0384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9AriHostRt17RegAllIndicationsEjEUb0_E3__1NS_9allocatorIS3_EEFviRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1D46B30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt17RegAllIndicationsEjEUb0_E3__1NS_9allocatorIS3_EEFviRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEEclEOiSD_(uint64_t a1, int *a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = *(a3 + 8);
  if (v3 != a3)
  {
    v5 = *a2;
    do
    {
      v6 = v3;
      v3 = *(v3 + 8);
    }

    while (v3 != a3);
    if (*(*(v6 + 16) + 8) == *(a1 + 8))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      v9 = *v8;
      v10 = &v7[2 * v9];
      LOWORD(v9) = v9 + 1;
      *v8 = v9;
      *(v10 + 2) = (v5 & 0x3FF | (v5 >> 10 << 11)) << 15;
      if (v9 == 500)
      {
        v7[1004] = 500;
        v11 = AriHostRt::setGroupMsgAttrib_nl(a1, v7);
        if (v11)
        {
          LogLevels = Ari::GetLogLevels(v11);
          if ((LogLevels & 8) != 0)
          {
            OsLog = AriOsa::GetOsLog(LogLevels);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(v20, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "operator()", v14);
              v19 = v21 >= 0 ? v20 : v20[0];
              *__p = 136315650;
              *&__p[4] = "ari";
              v23 = 2080;
              v24 = v19;
              v25 = 1024;
              v26 = 859;
              _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to register indications", __p, 0x1Cu);
              if (v21 < 0)
              {
                operator delete(v20[0]);
              }
            }

            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "operator()", v14);
            if (v25 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to register indications", v15, v16, 859);
            if (SHIBYTE(v25) < 0)
            {
              operator delete(*__p);
            }
          }

          v17 = *(a1 + 16);
          std::string::basic_string[abi:ne200100]<0>(__p, "Failed to send indication registration");
          std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::operator()(*(v17 + 33520), 3, __p, 0, 0);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(*__p);
          }
        }

        bzero((*(a1 + 24) + 8), 0x7D0uLL);
        **(a1 + 32) = 0;
      }

      **(a1 + 40) = 1;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_2962D0AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt17RegAllIndicationsEjEUb0_E3__1NS_9allocatorIS3_EEFviRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt17RegAllIndicationsEjEUb0_E3__1))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int,std::list<std::shared_ptr<Ari::AriClientProxy>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::list<unsigned int>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t ResMgr<std::list<std::shared_ptr<Ari::AriClientProxy>>>::sw_dbug_trap(uint64_t result, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = result;
    v3 = IDMgr::dump((result + 40));
    LogLevels = Ari::GetLogLevels(v3);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v23, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v6);
        v21 = v24 >= 0 ? v23 : v23[0];
        v22 = v2[3];
        *__p = 136316162;
        *&__p[4] = "ari";
        v26 = 2080;
        v27 = v21;
        v28 = 1024;
        v29 = 274;
        v30 = 2048;
        *v31 = v2;
        *&v31[8] = 2048;
        v32 = v22;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ResMgr(%p) dump total entries: %zu", __p, 0x30u);
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v6);
      if (v28 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ResMgr(%p) dump total entries: %zu", v7, v8, 274, v2, v2[3]);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(*__p);
      }
    }

    for (i = v2[2]; i; i = *i)
    {
      v10 = v2[17];
      if (v10)
      {
        v11 = *(i + 6);
        *__p = *(i + 4);
        LODWORD(v23[0]) = v11;
        (*(*v10 + 48))(v10, __p, v23, i + 4);
      }

      else
      {
        v12 = Ari::GetLogLevels(0);
        if ((v12 & 8) != 0)
        {
          v13 = AriOsa::GetOsLog(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v23, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v14);
            v17 = v23;
            if (v24 < 0)
            {
              v17 = v23[0];
            }

            v18 = *(i + 4);
            v19 = *(i + 6);
            *__p = 136316418;
            *&__p[4] = "ari";
            v26 = 2080;
            v27 = v17;
            v28 = 1024;
            v29 = 284;
            v30 = 1024;
            *v31 = v18;
            *&v31[4] = 1024;
            *&v31[6] = v18;
            LOWORD(v32) = 1024;
            *(&v32 + 2) = v19;
            _os_log_error_impl(&dword_2962B3000, v13, OS_LOG_TYPE_ERROR, "%s: (%s:%d) id(%08d-0x%08x) ts:%u", __p, 0x2Eu);
            if (v24 < 0)
            {
              operator delete(v23[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v14);
          if (v28 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) id(%08d-0x%08x) ts:%u", v15, v16, 284, *(i + 4), *(i + 4), *(i + 6));
          if (SHIBYTE(v28) < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }

    AriOsa::OsSleep(0x7D0);
    result = MEMORY[0x29C258610](1, "true", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 287);
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962D0FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2962D144C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void std::list<std::shared_ptr<Ari::AriClientProxy>>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  std::__list_imp<std::shared_ptr<Ari::AriClientProxy>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void *std::list<std::shared_ptr<Ari::AriClientProxy>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::list<std::shared_ptr<Ari::AriClientProxy>>::push_back();
  }

  return result;
}

void std::__function::__func<AriHostRt::processStartEvent_nl(void)::$_0,std::allocator<AriHostRt::processStartEvent_nl(void)::$_0>,void ()(std::shared_ptr<Ari::AriClientProxy> &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 48))(v2, 1, 0);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2962D1688(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AriHostRt::processStartEvent_nl(void)::$_0,std::allocator<AriHostRt::processStartEvent_nl(void)::$_0>,void ()(std::shared_ptr<Ari::AriClientProxy> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_0,std::allocator<AriHostRt::CancelAllTransactions(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1D46C50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_0,std::allocator<AriHostRt::CancelAllTransactions(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1D46C50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2589F0);
}

uint64_t std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_0,std::allocator<AriHostRt::CancelAllTransactions(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D46C50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_0,std::allocator<AriHostRt::CancelAllTransactions(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_0,std::allocator<AriHostRt::CancelAllTransactions(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_0,std::allocator<AriHostRt::CancelAllTransactions(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt21CancelAllTransactionsEvEUb2_E3__5NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE7__cloneEPNS0_6__baseISB_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1D46CE0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt21CancelAllTransactionsEvEUb2_E3__5NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEEclESA_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = **(a1 + 8);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = **(a1 + 8);
  }

  v5[0] = v2;
  v5[1] = v3;
  AriHostRt::ClientTransitionTracker::trackClient(v4, v5, 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2962D1A98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt21CancelAllTransactionsEvEUb2_E3__5NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt21CancelAllTransactionsEvEUb2_E3__5))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_1,std::allocator<AriHostRt::CancelAllTransactions(void)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1D46D60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_1,std::allocator<AriHostRt::CancelAllTransactions(void)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1D46D60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2589F0);
}

uint64_t std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_1,std::allocator<AriHostRt::CancelAllTransactions(void)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D46D60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_1,std::allocator<AriHostRt::CancelAllTransactions(void)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_1,std::allocator<AriHostRt::CancelAllTransactions(void)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<AriHostRt::CancelAllTransactions(void)::$_1,std::allocator<AriHostRt::CancelAllTransactions(void)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt21CancelAllTransactionsEvEUb3_E3__7NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE7__cloneEPNS0_6__baseISB_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1D46DE0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt21CancelAllTransactionsEvEUb3_E3__7NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEEclESA_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = **(a1 + 8);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = **(a1 + 8);
  }

  v5[0] = v2;
  v5[1] = v3;
  AriHostRt::ClientTransitionTracker::trackClient(v4, v5, 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2962D1E8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt21CancelAllTransactionsEvEUb3_E3__7NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt21CancelAllTransactionsEvEUb3_E3__7))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E3__8NS_9allocatorIS6_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_2A1D46E60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E3__8NS_9allocatorIS6_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_2A1D46E60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2589F0);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E3__8NS_9allocatorIS6_EEFvvEE7__cloneEPNS0_6__baseIS9_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D46E60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E3__8NS_9allocatorIS6_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E3__8NS_9allocatorIS6_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E3__8NS_9allocatorIS6_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E3__8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb5_E3__9NS_9allocatorIS6_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1D46EE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb5_E3__9NS_9allocatorIS6_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEEclESD_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = **(a1 + 8);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = **(a1 + 8);
  }

  v5[0] = v2;
  v5[1] = v3;
  AriHostRt::ClientTransitionTracker::trackClient(v4, v5, *(a1 + 16));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2962D2238(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb5_E3__9NS_9allocatorIS6_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb5_E3__9))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E4__10NS_9allocatorIS6_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_2A1D46F60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E4__10NS_9allocatorIS6_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_2A1D46F60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2589F0);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E4__10NS_9allocatorIS6_EEFvvEE7__cloneEPNS0_6__baseIS9_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D46F60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E4__10NS_9allocatorIS6_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E4__10NS_9allocatorIS6_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E4__10NS_9allocatorIS6_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sjEUb4_E4__10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb6_E4__11NS_9allocatorIS6_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE7__cloneEPNS0_6__baseISE_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1D46FE0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb6_E4__11NS_9allocatorIS6_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEEclESD_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = **(a1 + 8);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = **(a1 + 8);
  }

  v5[0] = v2;
  v5[1] = v3;
  AriHostRt::ClientTransitionTracker::trackClient(v4, v5, 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2962D25D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN9AriHostRt9SetOPModeENS2_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb6_E4__11NS_9allocatorIS6_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN9AriHostRt9SetOPModeENS_11ARI_OP_MODEEP16dispatch_group_sjEUb4_EUb6_E4__11))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *_ZNSt3__110__function6__funcIZZN9AriHostRt29RegisterBasebandResetDelegateENS_8functionIFvNS2_20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEijEEEEUb7_E4__12NS8_ISD_EESB_ED1Ev(void *a1)
{
  *a1 = &unk_2A1D47060;
  std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt29RegisterBasebandResetDelegateENS_8functionIFvNS2_20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEijEEEEUb7_E4__12NS8_ISD_EESB_ED0Ev(void *a1)
{
  *a1 = &unk_2A1D47060;
  std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x29C2589F0);
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt29RegisterBasebandResetDelegateENS_8functionIFvNS2_20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEijEEEEUb7_E4__12NS8_ISD_EESB_E18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt29RegisterBasebandResetDelegateENS_8functionIFvNS2_20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEijEEEEUb7_E4__12NS8_ISD_EESB_EclEOS4_OSA_OiOj(uint64_t *a1, int *a2, uint64_t a3, int *a4, int *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a3 + 8);
  *v12 = *(a3 + 16);
  *&v12[3] = *(a3 + 19);
  v9 = *(a3 + 23);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v10 = *a4;
  v11 = *a5;
  AriHostRt::GetInstance(a1);
  if ((byte_2A18C2405 & 1) == 0)
  {
    if (v9 < 0)
    {
      std::string::__init_copy_ctor_external(&v13, v7, v8);
    }

    else
    {
      v13.__r_.__value_.__r.__words[0] = v7;
      v13.__r_.__value_.__l.__size_ = v8;
      LODWORD(v13.__r_.__value_.__r.__words[2]) = *v12;
      *(&v13.__r_.__value_.__r.__words[2] + 3) = *&v12[3];
      *(&v13.__r_.__value_.__s + 23) = v9;
    }

    std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::operator()(a1[4], v6, &v13, v10, v11);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  byte_2A18C2405 = 1;
  if (v9 < 0)
  {
    operator delete(v7);
  }
}

void sub_2962D294C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt29RegisterBasebandResetDelegateENS_8functionIFvNS2_20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEijEEEEUb7_E4__12NS8_ISD_EESB_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt29RegisterBasebandResetDelegateENSt3__18functionIFvNS_20ARI_CLIENT_ERROR_EVTENS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEijEEEEUb7_E4__12))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9DumpStateEvEUb8_E4__13NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEEclESA_(Ari *a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "operator()", v6);
      v7 = v22;
      v8 = __p[0];
      v9 = v3[2];
      v10 = (*(*v3 + 16))(v3);
      v11 = __p;
      if (v7 < 0)
      {
        v11 = v8;
      }

      if (*(v10 + 23) >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v10;
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v24 = 2080;
      v25 = v11;
      v26 = 0;
      v27 = 4;
      v28 = 1704;
      v29 = 1024;
      v30 = v9;
      v31 = 2080;
      v32 = v12;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client ID: 0x%x(%s)", buf, 0x2Cu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "operator()", v6);
    v13 = v27;
    v14 = *buf;
    v15 = v3[2];
    v16 = (*(*v3 + 16))(v3);
    v18 = buf;
    if (v13 < 0)
    {
      v18 = v14;
    }

    if (*(v16 + 23) >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = *v16;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client ID: 0x%x(%s)", v17, v18, 1704, v15, v19);
    if (v27 < 0)
    {
      operator delete(*buf);
    }
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_2962D2C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9DumpStateEvEUb8_E4__13NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt9DumpStateEvEUb8_E4__13))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9DumpStateEvEUb8_E4__14NS_9allocatorIS3_EEFviRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEEclEOiSD_(uint64_t LogLevels, _DWORD *a2, void *a3)
{
  v41 = *MEMORY[0x29EDCA608];
  v3 = a3[1];
  if (v3 != a3)
  {
    v5 = *a2 & 0x3FF;
    v6 = *a2 >> 10;
    while (1)
    {
      v8 = v3[2];
      v7 = v3[3];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LogLevels = Ari::GetLogLevels(LogLevels);
      if ((LogLevels & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "operator()", v10);
          v11 = v26;
          v12 = __p[0];
          v13 = v8[2];
          v14 = (*(*v8 + 16))(v8);
          v15 = __p;
          if (v11 < 0)
          {
            v15 = v12;
          }

          if (*(v14 + 23) >= 0)
          {
            v16 = v14;
          }

          else
          {
            v16 = *v14;
          }

          *buf = 136316674;
          *&buf[4] = "ari";
          v28 = 2080;
          v29 = v15;
          v30 = 0;
          v31 = 4;
          v32 = 1712;
          v33 = 1024;
          v34 = v6;
          v35 = 1024;
          v36 = v5;
          v37 = 1024;
          v38 = v13;
          v39 = 2080;
          v40 = v16;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Indication ID: (%d-0x%x), Client ID or Actor ID: 0x%x(%s)", buf, 0x38u);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "operator()", v10);
        v17 = v31;
        v18 = *buf;
        v19 = v8[2];
        v20 = (*(*v8 + 16))(v8);
        v22 = buf;
        if (v17 < 0)
        {
          v22 = v18;
        }

        v23 = *(v20 + 23) >= 0 ? v20 : *v20;
        LogLevels = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Indication ID: (%d-0x%x), Client ID or Actor ID: 0x%x(%s)", v21, v22, 1712, v6, v5, v19, v23);
        if (v31 < 0)
        {
          break;
        }
      }

      if (v7)
      {
        goto LABEL_21;
      }

LABEL_22:
      v3 = v3[1];
      if (v3 == a3)
      {
        goto LABEL_26;
      }
    }

    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_22;
  }

LABEL_26:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_2962D2FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9DumpStateEvEUb8_E4__14NS_9allocatorIS3_EEFviRNS_4listINS_10shared_ptrIN3Ari14AriClientProxyEEENS4_ISA_EEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt9DumpStateEvEUb8_E4__14))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AriHostRt::DumpState(void)::$_0,std::allocator<AriHostRt::DumpState(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1D471F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<AriHostRt::DumpState(void)::$_0,std::allocator<AriHostRt::DumpState(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1D471F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2589F0);
}

uint64_t std::__function::__func<AriHostRt::DumpState(void)::$_0,std::allocator<AriHostRt::DumpState(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D471F0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AriHostRt::DumpState(void)::$_0,std::allocator<AriHostRt::DumpState(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<AriHostRt::DumpState(void)::$_0,std::allocator<AriHostRt::DumpState(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<AriHostRt::DumpState(void)::$_0,std::allocator<AriHostRt::DumpState(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9DumpStateEvEUb9_E4__16NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE7__cloneEPNS0_6__baseISB_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1D47270;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN9AriHostRt9DumpStateEvEUb9_E4__16NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEEclESA_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = **(a1 + 8);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = **(a1 + 8);
  }

  v5[0] = v2;
  v5[1] = v3;
  AriHostRt::ClientTransitionTracker::trackClient(v4, v5, 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2962D33C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9AriHostRt9DumpStateEvEUb9_E4__16NS_9allocatorIS3_EEFvRNS_10shared_ptrIN3Ari14AriClientProxyEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9AriHostRt9DumpStateEvEUb9_E4__16))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_180()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>::~PthreadMutexGuardPolicy, &ctu::Singleton<AriAdaptiveTimer,AriAdaptiveTimer,ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>>::sInstance, &dword_2962B3000);
  }

  return result;
}

uint64_t asString()
{
  return MEMORY[0x2A1C6B1C8]();
}

{
  return MEMORY[0x2A1C6B1D0]();
}

{
  return MEMORY[0x2A1C6B1D8]();
}

{
  return MEMORY[0x2A1C6B1E0]();
}

{
  return MEMORY[0x2A1C6B1E8]();
}

{
  return MEMORY[0x2A1C6B1F8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE30]();
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

void operator new()
{
    ;
  }
}