void sub_29618FBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::start_nl(AriHost *this, uint64_t a2, uint64_t a3)
{
  started = AriHost::startClient_nl(this, a2);
  (*(**(this + 76) + 80))(*(this + 76), a2, a3, 1);
  return started;
}

uint64_t AriHost::stopClient_nl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(a1 + 424, a2);
  if (isAlloc)
  {
    v7 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](a1 + 424, a2);
    v9 = *(*v7 + 96);
    v8 = *(*v7 + 104);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(v7);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl", &__p);
          v11 = v21 >= 0 ? &__p : __p;
          *buf = 136315906;
          *&buf[4] = "ari";
          v25 = 2080;
          v26 = v11;
          v27 = 1024;
          v28 = 1180;
          v29 = 1024;
          v30 = a2;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x) stop", buf, 0x22u);
          if (v21 < 0)
          {
            operator delete(__p);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl", buf);
        if (v27 >= 0)
        {
          v13 = buf;
        }

        else
        {
          v13 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x) stop", v12, v13, 1180, a2);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(*buf);
        }
      }

      v22 = 0xAAAAAAAAAAAAAAAALL;
      v23 = 0xAAAAAAAAAAAAAAAALL;
      AriDispatch::Group::Create(v7);
    }

    (*(a3 + 16))(a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    result = 0;
  }

  else
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v14 = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl", &__p);
        v19 = v21 >= 0 ? &__p : __p;
        *buf = 136315906;
        *&buf[4] = "ari";
        v25 = 2080;
        v26 = v19;
        v27 = 1024;
        v28 = 1174;
        v29 = 1024;
        v30 = a2;
        _os_log_error_impl(&dword_296048000, v14, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Trying to stop an unregistered client(0x%x). Ignored", buf, 0x22u);
        if (v21 < 0)
        {
          operator delete(__p);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl", buf);
      if (v27 >= 0)
      {
        v16 = buf;
      }

      else
      {
        v16 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Trying to stop an unregistered client(0x%x). Ignored", v15, v16, 1174, a2);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(*buf);
      }
    }

    (*(a3 + 16))(a3);
    result = 0xFFFFFFFFLL;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2961901D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost13stopClient_nlEiU13block_pointerFvvE_block_invoke_137(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if ((DefaultLogLevel & 0x10) == 0)
    {
      goto LABEL_21;
    }

    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl_block_invoke", __p);
      v3 = v14 >= 0 ? __p : __p[0];
      v4 = *(a1 + 64);
      *buf = 136315906;
      *&buf[4] = "ari";
      v16 = 2080;
      v17 = v3;
      v18 = 1024;
      v19 = 1195;
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x) stop done (took too long)", buf, 0x22u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl_block_invoke", buf);
    if (v18 >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Client(0x%04x) stop done (took too long)", v5, v6, 1195, *(a1 + 64));
  }

  else
  {
    if ((DefaultLogLevel & 4) == 0)
    {
      goto LABEL_21;
    }

    v7 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl_block_invoke", __p);
      v11 = v14 >= 0 ? __p : __p[0];
      v12 = *(a1 + 64);
      *buf = 136315906;
      *&buf[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 1199;
      v20 = 1024;
      v21 = v12;
      _os_log_debug_impl(&dword_296048000, v7, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Client(0x%04x) stop done", buf, 0x22u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl_block_invoke", buf);
    if (v18 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Client(0x%04x) stop done", v8, v9, 1199, *(a1 + 64));
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(*buf);
  }

LABEL_21:
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296190588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN7AriHost13stopClient_nlEiU13block_pointerFvvE_block_invoke_141(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl_block_invoke", v9);
        v7 = v10 >= 0 ? v9 : v9[0];
        v8 = *(a1 + 56);
        *__p = 136316162;
        *&__p[4] = "ari";
        v12 = 2080;
        v13 = v7;
        v14 = 1024;
        v15 = 1208;
        v16 = 1024;
        v17 = v8;
        v18 = 1024;
        v19 = 5000;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Client 0x%x did not stop in %dms.  Likely client queue is stuck or stalled!", __p, 0x28u);
        if (v10 < 0)
        {
          operator delete(v9[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stopClient_nl_block_invoke", __p);
      if (v14 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Client 0x%x did not stop in %dms.  Likely client queue is stuck or stalled!", v4, v5, 1208, *(a1 + 56), 5000);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(*__p);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_29619077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::stop_nl(AriHost *this, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN7AriHost7stop_nlEiy_block_invoke;
  v4[3] = &__block_descriptor_tmp_146;
  v5 = a2;
  v4[4] = this;
  v4[5] = a3;
  return AriHost::stopClient_nl(this, a2, v4);
}

uint64_t AriHost::enterLPM_nl(NSObject **this, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x29EDCA608];
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc((this + 53), a2);
  if (isAlloc)
  {
    v7 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[]((this + 53), a2);
    v9 = *(*v7 + 48);
    v8 = *(*v7 + 56);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(v7);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl", __p);
          v11 = v39;
          v12 = __p[0];
          v13 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[]((this + 53), a2);
          if (v11 >= 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = v12;
          }

          v15 = *v13;
          if (*(*v13 + 23) < 0)
          {
            v15 = *v15;
          }

          *buf = 136316162;
          *&buf[4] = "ari";
          v41 = 2080;
          v42 = v14;
          v43 = 1024;
          v44 = 1250;
          v45 = 1024;
          v46 = a2;
          v47 = 2080;
          v48 = v15;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x: %s) enter-LPM", buf, 0x2Cu);
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v16 = buf;
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl", buf);
        if (v43 < 0)
        {
          v16 = *buf;
        }

        v17 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[]((this + 53), a2);
        v19 = *v17;
        if (*(*v17 + 23) < 0)
        {
          v19 = *v19;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x: %s) enter-LPM", v18, v16, 1250, a2, v19);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(*buf);
        }
      }

      v20 = dispatch_group_create();
      Instance = AriHost::GetInstance(v20);
      v22 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](Instance + 424, a2);
      v23 = *(*v22 + 24);
      v24 = *(*v22 + 32);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = *v23;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN7AriHost11enterLPM_nlEiyj_block_invoke;
      block[3] = &__block_descriptor_tmp_149;
      block[4] = v9;
      v36 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v20;
      dispatch_group_async(v20, v25, block);
      v26 = *this;
      v33[0] = MEMORY[0x29EDCA5F8];
      v33[1] = 0x40000000;
      v33[2] = ___ZN7AriHost11enterLPM_nlEiyj_block_invoke_150;
      v33[3] = &__block_descriptor_tmp_153;
      v33[4] = this;
      v33[5] = v20;
      v34 = a2;
      v33[6] = a3;
      dispatch_group_notify(v20, v26, v33);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    else
    {
      (*(this[76]->isa + 10))(this[76], a2, a3, 3);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    result = 0;
  }

  else
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v27 = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl", __p);
        v32 = v39 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        v41 = 2080;
        v42 = v32;
        v43 = 1024;
        v44 = 1243;
        v45 = 1024;
        v46 = a2;
        _os_log_error_impl(&dword_296048000, v27, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Trying to enter LPM for an unregistered client(0x%x). Ignored", buf, 0x22u);
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl", buf);
      if (v43 >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Trying to enter LPM for an unregistered client(0x%x). Ignored", v28, v29, 1243, a2);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(*buf);
      }
    }

    (*(this[76]->isa + 10))(this[76], a2, a3, 3);
    result = 0xFFFFFFFFLL;
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296190D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c56_ZTSNSt3__110shared_ptrIN7AriHost18ClientEventHandlerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c56_ZTSNSt3__110shared_ptrIN7AriHost18ClientEventHandlerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN7AriHost11enterLPM_nlEiyj_block_invoke_150(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  dispatch_release(*(a1 + 40));
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(v2 + 424, *(a1 + 56));
  if (isAlloc)
  {
    v4 = (*(**(v2 + 608) + 80))(*(v2 + 608), *(a1 + 56), *(a1 + 48), 3);
    if ((DefaultLogLevel & 0x20) == 0)
    {
      goto LABEL_29;
    }

    OsLog = AriOsa::GetOsLog(v4);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl_block_invoke", __p);
      v6 = v24;
      v7 = __p[0];
      v8 = *(a1 + 56);
      v9 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v2 + 424, v8);
      if (v6 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = v7;
      }

      v11 = *v9;
      if (*(*v9 + 23) < 0)
      {
        v11 = *v11;
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v26 = 2080;
      v27 = v10;
      v28 = 1024;
      v29 = 1264;
      v30 = 1024;
      v31 = v8;
      v32 = 2080;
      v33 = v11;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x: %s) enter-LPM done", buf, 0x2Cu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = buf;
    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl_block_invoke", buf);
    if (v28 < 0)
    {
      v12 = *buf;
    }

    v13 = *(a1 + 56);
    v14 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v2 + 424, v13);
    v16 = *v14;
    if (*(*v14 + 23) < 0)
    {
      v16 = *v16;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x: %s) enter-LPM done", v15, v12, 1264, v13, v16);
  }

  else
  {
    if ((DefaultLogLevel & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v17 = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl_block_invoke", __p);
      v18 = v24 >= 0 ? __p : __p[0];
      v19 = *(a1 + 56);
      *buf = 136315906;
      *&buf[4] = "ari";
      v26 = 2080;
      v27 = v18;
      v28 = 1024;
      v29 = 1268;
      v30 = 1024;
      v31 = v19;
      _os_log_impl(&dword_296048000, v17, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x) ignoring enter-LPM done: client has deregistered, or not yet reregistered", buf, 0x22u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "enterLPM_nl_block_invoke", buf);
    if (v28 >= 0)
    {
      v21 = buf;
    }

    else
    {
      v21 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x) ignoring enter-LPM done: client has deregistered, or not yet reregistered", v20, v21, 1268, *(a1 + 56));
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

LABEL_29:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_2961910D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::exitLPM_nl(AriHost *this, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x29EDCA608];
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(this + 424, a2);
  if (isAlloc)
  {
    AriHost::flushStalledRequests_nl(this);
    v7 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](this + 424, a2);
    v9 = *(*v7 + 64);
    v8 = *(*v7 + 72);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(v7);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl", __p);
          v11 = v39;
          v12 = __p[0];
          v13 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](this + 424, a2);
          if (v11 >= 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = v12;
          }

          v15 = *v13;
          if (*(*v13 + 23) < 0)
          {
            v15 = *v15;
          }

          *buf = 136316162;
          *&buf[4] = "ari";
          v41 = 2080;
          v42 = v14;
          v43 = 1024;
          v44 = 1296;
          v45 = 1024;
          v46 = a2;
          v47 = 2080;
          v48 = v15;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x: %s) exit-LPM", buf, 0x2Cu);
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v16 = buf;
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl", buf);
        if (v43 < 0)
        {
          v16 = *buf;
        }

        v17 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](this + 424, a2);
        v19 = *v17;
        if (*(*v17 + 23) < 0)
        {
          v19 = *v19;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x: %s) exit-LPM", v18, v16, 1296, a2, v19);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(*buf);
        }
      }

      v20 = dispatch_group_create();
      Instance = AriHost::GetInstance(v20);
      v22 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](Instance + 424, a2);
      v23 = *(*v22 + 24);
      v24 = *(*v22 + 32);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = *v23;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN7AriHost10exitLPM_nlEiy_block_invoke;
      block[3] = &__block_descriptor_tmp_158;
      block[4] = v9;
      v36 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v20;
      dispatch_group_async(v20, v25, block);
      v26 = *this;
      v33[0] = MEMORY[0x29EDCA5F8];
      v33[1] = 0x40000000;
      v33[2] = ___ZN7AriHost10exitLPM_nlEiy_block_invoke_159;
      v33[3] = &__block_descriptor_tmp_162;
      v33[4] = this;
      v33[5] = v20;
      v34 = a2;
      v33[6] = a3;
      dispatch_group_notify(v20, v26, v33);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    else
    {
      (*(**(this + 76) + 80))(*(this + 76), a2, a3, 4);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    result = 0;
  }

  else
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v27 = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl", __p);
        v32 = v39 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        v41 = 2080;
        v42 = v32;
        v43 = 1024;
        v44 = 1285;
        v45 = 1024;
        v46 = a2;
        _os_log_error_impl(&dword_296048000, v27, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Trying to exit LPM for an unregistered client(0x%04x). Ignored", buf, 0x22u);
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl", buf);
      if (v43 >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Trying to exit LPM for an unregistered client(0x%04x). Ignored", v28, v29, 1285, a2);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(*buf);
      }
    }

    (*(**(this + 76) + 80))(*(this + 76), a2, a3, 4);
    result = 0xFFFFFFFFLL;
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2961915D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost10exitLPM_nlEiy_block_invoke_159(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  dispatch_release(*(a1 + 40));
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(v2 + 424, *(a1 + 56));
  if (isAlloc)
  {
    v4 = (*(**(v2 + 608) + 80))(*(v2 + 608), *(a1 + 56), *(a1 + 48), 4);
    if ((DefaultLogLevel & 0x20) == 0)
    {
      goto LABEL_29;
    }

    OsLog = AriOsa::GetOsLog(v4);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl_block_invoke", __p);
      v6 = v24;
      v7 = __p[0];
      v8 = *(a1 + 56);
      v9 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v2 + 424, v8);
      if (v6 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = v7;
      }

      v11 = *v9;
      if (*(*v9 + 23) < 0)
      {
        v11 = *v11;
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v26 = 2080;
      v27 = v10;
      v28 = 1024;
      v29 = 1310;
      v30 = 1024;
      v31 = v8;
      v32 = 2080;
      v33 = v11;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x: %s) exit-LPM done", buf, 0x2Cu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = buf;
    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl_block_invoke", buf);
    if (v28 < 0)
    {
      v12 = *buf;
    }

    v13 = *(a1 + 56);
    v14 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v2 + 424, v13);
    v16 = *v14;
    if (*(*v14 + 23) < 0)
    {
      v16 = *v16;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x: %s) exit-LPM done", v15, v12, 1310, v13, v16);
  }

  else
  {
    if ((DefaultLogLevel & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v17 = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl_block_invoke", __p);
      v18 = v24 >= 0 ? __p : __p[0];
      v19 = *(a1 + 56);
      *buf = 136315906;
      *&buf[4] = "ari";
      v26 = 2080;
      v27 = v18;
      v28 = 1024;
      v29 = 1314;
      v30 = 1024;
      v31 = v19;
      _os_log_impl(&dword_296048000, v17, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x) ignoring exit-LPM done: client has deregistered, or not yet reregistered", buf, 0x22u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "exitLPM_nl_block_invoke", buf);
    if (v28 >= 0)
    {
      v21 = buf;
    }

    else
    {
      v21 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x) ignoring exit-LPM done: client has deregistered, or not yet reregistered", v20, v21, 1314, *(a1 + 56));
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

LABEL_29:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_296191978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::reRegisterIndications_nl(AriHost *this)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = 0;
  bzero(v2, 0x7D4uLL);
  v1 = 0x300000001;
  v2[501] = 0x7FFFFFFF;
  operator new();
}

void sub_296191C08(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(exception_object);
}

AriOsa *ResMgr<AriHost::IndicationHandlerList>::doForEach(uint64_t a1, uint64_t a2)
{
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x137);
  v4 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x139);
  for (i = *(a1 + 16); i; i = *i)
  {
    v6 = *(a2 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, i + 4);
  }

  dispatch_semaphore_signal(*(a1 + 96));

  return AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x13C);
}

uint64_t AriHost::setGroupWakeable_nl(AriOsa *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(a2 + 2008))
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setGroupWakeable_nl", &__p);
        v4 = v16 >= 0 ? &__p : __p;
        v5 = *(a2 + 2008);
        *buf = 136315906;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v4;
        *&buf[22] = 1024;
        *&buf[24] = 1421;
        *&buf[28] = 1024;
        *&buf[30] = v5;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Registering %u wakeable attributes", buf, 0x22u);
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setGroupWakeable_nl", buf);
      if (buf[23] >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Registering %u wakeable attributes", v6, v7, 1421, *(a2 + 2008));
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v19 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[32] = v8;
    v18 = v8;
    *buf = v8;
    *&buf[16] = v8;
    AriSdk::MsgBase::MsgBase(buf, 67698688, 0);
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    v9 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setGroupWakeable_nl", &__p);
      v10 = v16 >= 0 ? &__p : __p;
      *buf = 136315650;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v10;
      *&buf[22] = 1024;
      *&buf[24] = 1418;
      _os_log_impl(&dword_296048000, v9, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) No wakeable attributes to register", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setGroupWakeable_nl", buf);
    if (buf[23] >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) No wakeable attributes to register", v11, v12, 1418);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  result = 0xFFFFFFFFLL;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2961920C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *AriHost::pushIndications_nl(AriHost *this)
{
  v36[4] = *MEMORY[0x29EDCA608];
  v23[0] = v23;
  v23[1] = v23;
  v24 = 0;
  v36[0] = &unk_2A1D36888;
  v36[1] = this;
  v36[2] = v23;
  v36[3] = v36;
  ResMgr<AriHost::IndicationHandlerList>::doForEach(this + 112, v36);
  std::__function::__value_func<void ()(AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](v36);
  v2 = getprogname();
  v3 = v2;
  if (v24)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(v2);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "pushIndications_nl", __p);
        v5 = v22 >= 0 ? __p : __p[0];
        v6 = *(this + 64);
        *buf = 136316418;
        *&buf[4] = "ari";
        v26 = 2080;
        v27 = v5;
        v28 = 1024;
        v29 = 1403;
        v30 = 2080;
        v31 = v3;
        v32 = 1024;
        v33 = v6;
        v34 = 2048;
        v35 = v24;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Pushing all indications for %s using cid 0x%x [%lu]", buf, 0x36u);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "pushIndications_nl", buf);
      if (v28 >= 0)
      {
        v8 = buf;
      }

      else
      {
        v8 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Pushing all indications for %s using cid 0x%x [%lu]", v7, v8, 1403, v3, *(this + 64), v24);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(*buf);
      }
    }

    v9 = (*(**(this + 76) + 72))(*(this + 76), *(this + 64), v23);
    if (*(this + 704) == 1)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        v10 = AriOsa::GetOsLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "pushIndications_nl", __p);
          v11 = v22 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "ari";
          v26 = 2080;
          v27 = v11;
          v28 = 1024;
          v29 = 1409;
          _os_log_impl(&dword_296048000, v10, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Baseband is ready by the time we pushed indications; register them right away", buf, 0x1Cu);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "pushIndications_nl", buf);
        if (v28 >= 0)
        {
          v13 = buf;
        }

        else
        {
          v13 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Baseband is ready by the time we pushed indications; register them right away", v12, v13, 1409);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(*buf);
        }
      }

      AriHost::reRegisterIndications_nl(this);
    }
  }

  else if ((DefaultLogLevel & 0x20) != 0)
  {
    v14 = AriOsa::GetOsLog(v2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "pushIndications_nl", __p);
      v15 = v22 >= 0 ? __p : __p[0];
      v16 = *(this + 64);
      *buf = 136316162;
      *&buf[4] = "ari";
      v26 = 2080;
      v27 = v15;
      v28 = 1024;
      v29 = 1399;
      v30 = 2080;
      v31 = v3;
      v32 = 1024;
      v33 = v16;
      _os_log_impl(&dword_296048000, v14, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) No indications to push for %s using cid 0x%x", buf, 0x2Cu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "pushIndications_nl", buf);
    if (v28 >= 0)
    {
      v18 = buf;
    }

    else
    {
      v18 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) No indications to push for %s using cid 0x%x", v17, v18, 1399, v3, *(this + 64));
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }
  }

  result = std::__list_imp<unsigned int>::clear(v23);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN7AriHost19setGroupWakeable_nlEP21AriGrpMsgsAttribParam_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = AriHost::SendInternal(**(a1 + 40), *(*(a1 + 40) + 8) - **(a1 + 40), (*(*(a1 + 32) + 256) & 0x7Fu) << 8, &__block_literal_global_172, 0, 20000, 1);
  if (v1 && (DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(v1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setGroupWakeable_nl_block_invoke_2", v7);
      v6 = v8 >= 0 ? v7 : v7[0];
      *__p = 136315650;
      *&__p[4] = "ari";
      v10 = 2080;
      v11 = v6;
      v12 = 1024;
      v13 = 1452;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to send AriGrpMsgsAttribReq", __p, 0x1Cu);
      if (v8 < 0)
      {
        operator delete(v7[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setGroupWakeable_nl_block_invoke", __p);
    if (v12 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to send AriGrpMsgsAttribReq", v3, v4, 1452);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*__p);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_296192758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost19setGroupWakeable_nlEP21AriGrpMsgsAttribParam_block_invoke_2(uint64_t a1, const unsigned __int8 *a2, int a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4[2] = v3;
  v4[3] = v3;
  v4[0] = v3;
  v4[1] = v3;
  AriSdk::MsgBase::MsgBase(v4, a2, a3);
}

void sub_296192C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  AriSdk::ARI_AriACK_SDK::~ARI_AriACK_SDK(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKNS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKNS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void AriHost::SetMsgWakeable(AriHost *a1, char a2, int a3, uint64_t a4)
{
  v7 = a1;
  v28 = *MEMORY[0x29EDCA608];
  Instance = AriHost::GetInstance(a1);
  v9 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v9 = std::__shared_weak_count::lock(qword_2A1899100);
    v10 = v9;
    if (v9 && AriHost::SingletonWeakPtr)
    {
      v11 = *Instance;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_198;
      v21[8] = a3;
      v21[9] = HIWORD(v7) & 0xFC00 | (v7 >> 15) & 0x3FF;
      v21[10] = v7;
      v22 = a2;
      block[4] = Instance;
      block[5] = AriHost::SingletonWeakPtr;
      v20 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v21, a4);
      dispatch_async(v11, block);
      std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v21);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

LABEL_20:
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      goto LABEL_21;
    }
  }

  else
  {
    v10 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v9);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable", __p);
      v13 = v18 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v24 = 2080;
      v25 = v13;
      v26 = 1024;
      v27 = 1464;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable", buf);
    if (v26 >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v14, v15, 1464);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }
  }

  std::function<void ()(int)>::operator()(*(a4 + 24), -90);
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_21:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296192F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(int)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = (*(a1 + 88) >> 8) & 0x7F;
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 32) + 424, v2);
  if (isAlloc)
  {
    v4 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 32) + 112, *(a1 + 92));
    if (!v4)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(v4);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
          v6 = Ari::MsgDefById((*(a1 + 96) >> 26), (*(a1 + 96) >> 15) & 0x3FF);
          v7 = "Unknown";
          if (v6 && *(v6 + 48))
          {
            v7 = *(v6 + 48);
          }

          v8 = __p[0];
          if (v34 >= 0)
          {
            v8 = __p;
          }

          *buf = 136315906;
          *&buf[4] = "ari";
          *&buf[12] = 2080;
          *&buf[14] = v8;
          *&buf[22] = 1024;
          *&buf[24] = 1487;
          *&buf[28] = 2080;
          *&buf[30] = v7;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) no client handlers are registered for this indication, %s.  setting wakeable metadata only", buf, 0x26u);
          if (v34 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
        v9 = Ari::MsgDefById((*(a1 + 96) >> 26), (*(a1 + 96) >> 15) & 0x3FF);
        v11 = "Unknown";
        if (v9 && *(v9 + 48))
        {
          v11 = *(v9 + 48);
        }

        v12 = *buf;
        if (buf[23] >= 0)
        {
          v12 = buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) no client handlers are registered for this indication, %s.  setting wakeable metadata only", v10, v12, 1487, v11);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      *buf = buf;
      *&buf[8] = buf;
      *&buf[16] = xmmword_2962439A0;
      v13 = *(a1 + 92);
      *&buf[28] = *(a1 + 96);
      ResMgr<AriHost::IndicationHandlerList>::set(*(a1 + 32) + 112, v13, buf);
      std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(buf);
    }

    v14 = ResMgr<AriHost::IndicationHandlerList>::operator[](*(a1 + 32) + 112, *(a1 + 92));
    AriHost::IndicationHandlerList::setWakeable(v14, *(a1 + 100));
    if (*(*(a1 + 32) + 704))
    {
      v16 = **(*ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 32) + 424, v2) + 24);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_197;
      v17 = *(a1 + 96);
      v41 = *(a1 + 100);
      v18 = *(a1 + 88);
      v38 = v17;
      v39 = v18;
      v19 = *(a1 + 48);
      block[4] = *(a1 + 40);
      v36 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v37, a1 + 56);
      v37[4] = *(a1 + 32);
      v40 = v2;
      dispatch_async(v16, block);
      std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v37);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      goto LABEL_48;
    }

    if ((DefaultLogLevel & 0x20) == 0)
    {
      goto LABEL_48;
    }

    v23 = AriOsa::GetOsLog(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
      v24 = Ari::MsgDefById((*(a1 + 96) >> 26), (*(a1 + 96) >> 15) & 0x3FF);
      v25 = "Unknown";
      if (v24 && *(v24 + 48))
      {
        v25 = *(v24 + 48);
      }

      v26 = __p[0];
      if (v34 >= 0)
      {
        v26 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v26;
      *&buf[22] = 1024;
      *&buf[24] = 1498;
      *&buf[28] = 2080;
      *&buf[30] = v25;
      _os_log_impl(&dword_296048000, v23, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Wakeable set for %s before all-ready.  IndicationReregistrationActor will request when baseband is ready.", buf, 0x26u);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
    v27 = Ari::MsgDefById((*(a1 + 96) >> 26), (*(a1 + 96) >> 15) & 0x3FF);
    v29 = "Unknown";
    if (v27 && *(v27 + 48))
    {
      v29 = *(v27 + 48);
    }

    v30 = *buf;
    if (buf[23] >= 0)
    {
      v30 = buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Wakeable set for %s before all-ready.  IndicationReregistrationActor will request when baseband is ready.", v28, v30, 1498, v29);
  }

  else
  {
    if ((DefaultLogLevel & 8) == 0)
    {
      goto LABEL_48;
    }

    v20 = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
      v32 = v34 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v32;
      *&buf[22] = 1024;
      *&buf[24] = 1481;
      *&buf[28] = 1024;
      *&buf[30] = v2;
      _os_log_error_impl(&dword_296048000, v20, OS_LOG_TYPE_ERROR, "%s: (%s:%d) client cid 0x%x attempting to set wakeable flag but is not registered", buf, 0x22u);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
    if (buf[23] >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) client cid 0x%x attempting to set wakeable flag but is not registered", v21, v22, 1481, v2);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_48:
  v31 = *MEMORY[0x29EDCA608];
}

void sub_296193598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (*(v21 - 73) < 0)
  {
    operator delete(*(v21 - 96));
  }

  _Unwind_Resume(exception_object);
}

void AriHost::IndicationHandlerList::setWakeable(AriHost::IndicationHandlerList *this, int a2)
{
  v29 = *MEMORY[0x29EDCA608];
  *(this + 24) = a2;
  *(this + 25) = 1;
  if (a2)
  {
    if ((DefaultLogLevel & 0x20) == 0)
    {
      goto LABEL_34;
    }

    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setWakeable", __p);
      v4 = Ari::MsgDefById((*(this + 7) >> 26), (*(this + 7) >> 15) & 0x3FF);
      v5 = "Unknown";
      if (v4 && *(v4 + 48))
      {
        v5 = *(v4 + 48);
      }

      v6 = __p[0];
      if (v21 >= 0)
      {
        v6 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v23 = 2080;
      v24 = v6;
      v25 = 1024;
      v26 = 2383;
      v27 = 2080;
      v28 = v5;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) setting indication %s as wakeable", buf, 0x26u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setWakeable", buf);
    v7 = Ari::MsgDefById((*(this + 7) >> 26), (*(this + 7) >> 15) & 0x3FF);
    v9 = "Unknown";
    if (v7 && *(v7 + 48))
    {
      v9 = *(v7 + 48);
    }

    v10 = *buf;
    if (v25 >= 0)
    {
      v10 = buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) setting indication %s as wakeable", v8, v10, 2383, v9);
  }

  else
  {
    if ((DefaultLogLevel & 0x10) == 0)
    {
      goto LABEL_34;
    }

    v11 = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setWakeable", __p);
      v12 = Ari::MsgDefById((*(this + 7) >> 26), (*(this + 7) >> 15) & 0x3FF);
      v13 = "Unknown";
      if (v12 && *(v12 + 48))
      {
        v13 = *(v12 + 48);
      }

      v14 = __p[0];
      if (v21 >= 0)
      {
        v14 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v23 = 2080;
      v24 = v14;
      v25 = 1024;
      v26 = 2385;
      v27 = 2080;
      v28 = v13;
      _os_log_impl(&dword_296048000, v11, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client is setting indication %s explicitly as NON-wakeable.  This should be avoided.", buf, 0x26u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setWakeable", buf);
    v15 = Ari::MsgDefById((*(this + 7) >> 26), (*(this + 7) >> 15) & 0x3FF);
    v17 = "Unknown";
    if (v15 && *(v15 + 48))
    {
      v17 = *(v15 + 48);
    }

    v18 = *buf;
    if (v25 >= 0)
    {
      v18 = buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Client is setting indication %s explicitly as NON-wakeable.  This should be avoided.", v16, v18, 2385, v17);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(*buf);
  }

LABEL_34:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_296193900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v12 = 0x300000001;
  if (*(a1 + 100))
  {
    v2 = 0x7FFFFFFF;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 88);
  v4 = *(a1 + 92);
  v13 = v3;
  v14 = v2;
  v11 = v4;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 1174405120;
  v19[2] = ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke_3;
  v19[3] = &__block_descriptor_tmp_188;
  v5 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(a1 + 88);
  }

  v21[8] = v3;
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v21, a1 + 48);
  v6 = ARI_AriMsgAttribReq_BLK(&v12, &v11, v19);
  if (v6)
  {
    v7 = *(a1 + 80);
    v8 = *v7;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke_189;
    block[3] = &__block_descriptor_tmp_194;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *(a1 + 80);
    }

    v17 = v7;
    v18[8] = *(a1 + 96);
    std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v18, a1 + 48);
    v18[9] = v6;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v18);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296193AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v18 + 48);
  v20 = *(v18 + 40);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke_3(uint64_t a1, AriMsg *a2, uint64_t a3)
{
  *&v66[5] = *MEMORY[0x29EDCA608];
  v6 = Ari::MsgDefById((*(a1 + 80) >> 26), (*(a1 + 80) >> 15) & 0x3FF);
  v7 = "Unknown";
  if (v6 && *(v6 + 48))
  {
    v7 = *(v6 + 48);
  }

  v8 = a3;
  BufHeader = AriMsg::GetBufHeader(a2, a3);
  if (BufHeader)
  {
    v10 = *(BufHeader + 2) >> 17;
  }

  else
  {
    v10 = 0x8000;
  }

  BufGmid = AriMsg::GetBufGmid(a2, a3);
  if (BufGmid == 67600384)
  {
    v55[0] = 0xAAAAAAAAAAAAAAAALL;
    v16 = ARI_AriNACK_Extract(a2, a3, v55);
    if (v16)
    {
      if ((DefaultLogLevel & 8) != 0)
      {
        OsLog = AriOsa::GetOsLog(v16);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
          v48 = v54 >= 0 ? __p : __p[0];
          *buf = 136316162;
          *&buf[4] = "ari";
          v57 = 2080;
          v58 = v48;
          v59 = 1024;
          v60 = 1554;
          v61 = 2080;
          v62 = v7;
          v63 = 1024;
          v64 = v10;
          _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Received NACK, reason unknown due to malformed NACK)", buf, 0x2Cu);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
        if (v59 >= 0)
        {
          v19 = buf;
        }

        else
        {
          v19 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Received NACK, reason unknown due to malformed NACK)", v18, v19, 1554, v7, v10);
        goto LABEL_62;
      }
    }

    else if (HIDWORD(v55[0]) == -85)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        v29 = AriOsa::GetOsLog(v16);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
          v30 = asString(HIDWORD(v55[0]));
          v31 = __p[0];
          if (v54 >= 0)
          {
            v31 = __p;
          }

          *buf = 136316418;
          *&buf[4] = "ari";
          v57 = 2080;
          v58 = v31;
          v59 = 1024;
          v60 = 1545;
          v61 = 2080;
          v62 = v7;
          v63 = 1024;
          v64 = v10;
          v65 = 2080;
          *v66 = v30;
          _os_log_impl(&dword_296048000, v29, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Received NACK with reason %s)", buf, 0x36u);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
        v32 = asString(HIDWORD(v55[0]));
        v34 = *buf;
        if (v59 >= 0)
        {
          v34 = buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Received NACK with reason %s)", v33, v34, 1545, v7, v10, v32);
        goto LABEL_62;
      }
    }

    else if ((DefaultLogLevel & 8) != 0)
    {
      v35 = AriOsa::GetOsLog(v16);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
        v51 = asString(HIDWORD(v55[0]));
        v52 = __p[0];
        if (v54 >= 0)
        {
          v52 = __p;
        }

        *buf = 136316418;
        *&buf[4] = "ari";
        v57 = 2080;
        v58 = v52;
        v59 = 1024;
        v60 = 1549;
        v61 = 2080;
        v62 = v7;
        v63 = 1024;
        v64 = v10;
        v65 = 2080;
        *v66 = v51;
        _os_log_error_impl(&dword_296048000, v35, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Received NACK with reason %s)", buf, 0x36u);
        if (v54 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
      v36 = asString(HIDWORD(v55[0]));
      v38 = *buf;
      if (v59 >= 0)
      {
        v38 = buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Received NACK with reason %s)", v37, v38, 1549, v7, v10, v36);
      goto LABEL_62;
    }

    goto LABEL_64;
  }

  if (BufGmid != 68190208)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v20 = AriOsa::GetOsLog(BufGmid);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v44 = __p;
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
        if (v54 < 0)
        {
          v44 = __p[0];
        }

        v45 = AriMsg::GetBufHeader(a2, v8);
        if (v45)
        {
          v46 = (*v45 >> 35) & 0x3FLL;
        }

        else
        {
          LODWORD(v46) = 0;
        }

        v49 = AriMsg::GetBufHeader(a2, v8);
        if (v49)
        {
          v50 = *(v49 + 2) >> 6;
        }

        else
        {
          v50 = 0;
        }

        *buf = 136316674;
        *&buf[4] = "ari";
        v57 = 2080;
        v58 = v44;
        v59 = 1024;
        v60 = 1561;
        v61 = 2080;
        v62 = v7;
        v63 = 1024;
        v64 = v10;
        v65 = 1024;
        *v66 = v46;
        v66[2] = 1024;
        *&v66[3] = v50;
        _os_log_error_impl(&dword_296048000, v20, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Setting indication %s to wake AP failed via ctx 0x%x. Unexpected message id in response (%d-0x%x)", buf, 0x38u);
        if (v54 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v21 = buf;
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
      if (v59 < 0)
      {
        v21 = *buf;
      }

      v22 = AriMsg::GetBufHeader(a2, v8);
      if (v22)
      {
        v23 = (*v22 >> 35) & 0x3FLL;
      }

      else
      {
        v23 = 0;
      }

      v39 = AriMsg::GetBufHeader(a2, v8);
      if (v39)
      {
        v41 = *(v39 + 2) >> 6;
      }

      else
      {
        v41 = 0;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Setting indication %s to wake AP failed via ctx 0x%x. Unexpected message id in response (%d-0x%x)", v40, v21, 1561, v7, v10, v23, v41);
      goto LABEL_62;
    }

LABEL_64:
    v28 = -1;
    goto LABEL_65;
  }

  v55[0] = 0xAAAAAAAAAAAAAAAALL;
  v55[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = ARI_AriMsgAttribResp_Extract(a2, a3, v55);
  if (v12)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v13 = AriOsa::GetOsLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", __p);
        v47 = v54 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v57 = 2080;
        v58 = v47;
        v59 = 1024;
        v60 = 1533;
        v61 = 2080;
        v62 = v7;
        v63 = 1024;
        v64 = v10;
        _os_log_error_impl(&dword_296048000, v13, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Failed to extract)", buf, 0x2Cu);
        if (v54 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
      if (v59 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Setting indication %s to wake AP failed via ctx 0x%x (Failed to extract)", v14, v15, 1533, v7, v10);
LABEL_62:
      if (SHIBYTE(v59) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_64;
    }

    goto LABEL_64;
  }

  if ((DefaultLogLevel & 0x20) != 0)
  {
    v24 = AriOsa::GetOsLog(v12);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke_3", __p);
      v25 = v54 >= 0 ? __p : __p[0];
      *buf = 136316162;
      *&buf[4] = "ari";
      v57 = 2080;
      v58 = v25;
      v59 = 1024;
      v60 = 1528;
      v61 = 2080;
      v62 = v7;
      v63 = 1024;
      v64 = v10;
      _os_log_impl(&dword_296048000, v24, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Successfully registered indication %s to wake AP via ctx 0x%x", buf, 0x2Cu);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetMsgWakeable_block_invoke", buf);
    if (v59 >= 0)
    {
      v27 = buf;
    }

    else
    {
      v27 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Successfully registered indication %s to wake AP via ctx 0x%x", v26, v27, 1528, v7, v10);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(*buf);
    }
  }

  v28 = 0;
LABEL_65:
  std::function<void ()(int)>::operator()(*(a1 + 72), v28);
  v42 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2961943BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c27_ZTSNSt3__18functionIFviEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](a1 + 48, a2 + 48);
}

void sub_29619444C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c27_ZTSNSt3__18functionIFviEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke_189(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 48) + 424, *(a1 + 88)))
  {
    v2 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 48) + 424, *(a1 + 88));
    v3 = *(*v2 + 24);
    v4 = *(*v2 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *v3;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZN7AriHost14SetMsgWakeableEjbiNSt3__18functionIFviEEE_block_invoke_2_190;
    v8[3] = &__block_descriptor_tmp_193;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v10, a1 + 56);
    v10[8] = *(a1 + 92);
    dispatch_async(v5, v8);
    std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v10);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_2961945E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE56c27_ZTSNSt3__18functionIFviEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](a1 + 56, a2 + 56);
}

void sub_29619465C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE56c27_ZTSNSt3__18functionIFviEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 56);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t __copy_helper_block_e8_40c34_ZTSNSt3__110shared_ptrI7AriHostEE56c27_ZTSNSt3__18functionIFviEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](a1 + 56, a2 + 56);
}

void sub_296194704(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c34_ZTSNSt3__110shared_ptrI7AriHostEE56c27_ZTSNSt3__18functionIFviEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t AriHost::SetRTEventHandler(unsigned int a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v4 = std::__shared_weak_count::lock(qword_2A1899100);
    v7 = v4;
    if (v4 && AriHost::SingletonWeakPtr)
    {
      Instance = AriHost::GetInstance(v4);
      v9 = *AriHost::GetInstance(Instance);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN7AriHost17SetRTEventHandlerEiNS_13ClientRTEventEU13block_pointerFiP16dispatch_group_sE_block_invoke;
      block[3] = &unk_29EE0FD38;
      block[4] = a3;
      block[5] = Instance;
      v18 = a2;
      v19 = (a1 >> 8) & 0x7F;
      dispatch_sync(v9, block);
      v10 = 0;
LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v4);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetRTEventHandler", __p);
      v12 = v21 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v23 = 2080;
      v24 = v12;
      v25 = 1024;
      v26 = 1595;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SetRTEventHandler", buf);
    if (v25 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v13, v14, 1595);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(*buf);
    }
  }

  v10 = 0xFFFFFFFFLL;
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_296194988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
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

uint64_t AriHost::updateIndicationCids_nl(AriHost *this, unsigned int a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1D369E8;
  v5[1] = a2 | (a3 << 32);
  v5[3] = v5;
  ResMgr<AriHost::IndicationHandlerList>::doForEach(this + 112, v5);
  result = std::__function::__value_func<void ()(AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296194E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AriHost::ReRegisterClient(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v4 = std::__shared_weak_count::lock(qword_2A1899100);
    v7 = v4;
    if (v4)
    {
      v8 = AriHost::SingletonWeakPtr;
      if (AriHost::SingletonWeakPtr)
      {
        Instance = AriHost::GetInstance(v4);
        v10 = *Instance;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN7AriHost16ReRegisterClientERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERij_block_invoke;
        block[3] = &__block_descriptor_tmp_217;
        block[4] = v8;
        v17 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = a2;
        v19 = Instance;
        v20 = a1;
        v21 = a3;
        dispatch_sync(v10, block);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_21;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v4);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient", __p);
      v12 = v23 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v25 = 2080;
      v26 = v12;
      v27 = 1024;
      v28 = 1738;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient", buf);
    if (v27 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v13, v14, 1738);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v7)
  {
    goto LABEL_20;
  }

LABEL_21:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_296195060(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost16ReRegisterClientERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERij_block_invoke(uint64_t a1)
{
  *&v93[5] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 56);
  v3 = (**(a1 + 48) >> 8) & 0x7F;
  v86 = -1;
  if (!std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((v2 + 568), v3))
  {
    isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(v2 + 424, v3);
    if (!isAlloc)
    {
      if ((DefaultLogLevel & 0x10) != 0)
      {
        OsLog = AriOsa::GetOsLog(isAlloc);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
          v44 = v85 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v88 = 2080;
          v89 = v44;
          v90 = 1024;
          v91 = 1754;
          v92 = 1024;
          *v93 = v3;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client registration no longer exists for cid 0x%x.  Failed re-registration", buf, 0x22u);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
        if (v90 >= 0)
        {
          v46 = buf;
        }

        else
        {
          v46 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Client registration no longer exists for cid 0x%x.  Failed re-registration", v45, v46, 1754, v3);
        goto LABEL_97;
      }

LABEL_99:
      **(a1 + 48) = -1;
      goto LABEL_100;
    }

    v2 = *(a1 + 56);
  }

  AriHost::stopClient_nl(v2, v3, &__block_literal_global_207);
  v5 = *(a1 + 64);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  v6 = (*(**(*(a1 + 56) + 608) + 24))(*(*(a1 + 56) + 608), v5, &v86, *(a1 + 72));
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v86 == -1;
  }

  if (v7)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v8 = AriOsa::GetOsLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
        v82 = __p[0];
        if (v85 >= 0)
        {
          v82 = __p;
        }

        v83 = *(a1 + 64);
        if (*(v83 + 23) < 0)
        {
          v83 = *v83;
        }

        *buf = 136315906;
        *&buf[4] = "ari";
        v88 = 2080;
        v89 = v82;
        v90 = 1024;
        v91 = 1766;
        v92 = 2080;
        *v93 = v83;
        _os_log_error_impl(&dword_296048000, v8, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to register client %s", buf, 0x26u);
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
      if (v90 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v11 = *(a1 + 64);
      if (*(v11 + 23) < 0)
      {
        v11 = *v11;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to register client %s", v9, v10, 1766, v11);
LABEL_97:
      if (SHIBYTE(v90) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_99;
    }

    goto LABEL_99;
  }

  if (v86 == v3)
  {
    v12 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 56) + 424, v3);
    if (v12)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        v13 = AriOsa::GetOsLog(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
          v14 = v85 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v88 = 2080;
          v89 = v14;
          v90 = 1024;
          v91 = 1775;
          v92 = 1024;
          *v93 = v86;
          _os_log_impl(&dword_296048000, v13, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) New registered client ID is identical to the previous one (0x%x). No update needed.", buf, 0x22u);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
        if (v90 >= 0)
        {
          v16 = buf;
        }

        else
        {
          v16 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) New registered client ID is identical to the previous one (0x%x). No update needed.", v15, v16, 1775, v86);
        if (SHIBYTE(v90) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      v48 = *(a1 + 56);
      v49 = v86;
      v50 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((v48 + 568), v86);
      if (v50)
      {
        if ((DefaultLogLevel & 0x20) != 0)
        {
          v51 = AriOsa::GetOsLog(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
            v52 = v85 >= 0 ? __p : __p[0];
            *buf = 136315906;
            *&buf[4] = "ari";
            v88 = 2080;
            v89 = v52;
            v90 = 1024;
            v91 = 1779;
            v92 = 1024;
            *v93 = v86;
            _os_log_impl(&dword_296048000, v51, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Received identical cid 0x%x.  Transferring stored ClientData", buf, 0x22u);
            if (v85 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
          if (v90 >= 0)
          {
            v54 = buf;
          }

          else
          {
            v54 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Received identical cid 0x%x.  Transferring stored ClientData", v53, v54, 1779, v86);
          if (SHIBYTE(v90) < 0)
          {
            operator delete(*buf);
          }

          v48 = *(a1 + 56);
          v49 = v86;
        }

        LODWORD(__p[0]) = v3;
        *buf = __p;
        v55 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((v48 + 568), v3);
        ResMgr<std::shared_ptr<AriHost::ClientData>>::set(v48 + 424, v49, v55 + 3);
        std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>>>::__erase_unique<int>((*(a1 + 56) + 568), v3);
        v57 = v3 | 0xFF000000;
        if ((DefaultLogLevel & 0x20) != 0)
        {
          v58 = AriOsa::GetOsLog(v56);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
            v59 = v85 >= 0 ? __p : __p[0];
            *buf = 136316162;
            *&buf[4] = "ari";
            v88 = 2080;
            v89 = v59;
            v90 = 1024;
            v91 = 1785;
            v92 = 1024;
            *v93 = v57;
            v93[2] = 1024;
            *&v93[3] = v86;
            _os_log_impl(&dword_296048000, v58, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Transferring indication cid marked as 0x%x back to cid 0x%x", buf, 0x28u);
            if (v85 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
          if (v90 >= 0)
          {
            v61 = buf;
          }

          else
          {
            v61 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Transferring indication cid marked as 0x%x back to cid 0x%x", v60, v61, 1785, v57, v86);
          if (SHIBYTE(v90) < 0)
          {
            operator delete(*buf);
          }
        }

        AriHost::updateIndicationCids_nl(*(a1 + 56), v57, v86);
      }
    }

    goto LABEL_100;
  }

  **(a1 + 48) = (v86 & 0x7F) << 8;
  v17 = *(a1 + 64);
  if (*(v17 + 23) < 0 && *(v17 + 8) == 29)
  {
    v18 = *v17;
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = *(v18 + 21);
    v23 = v19 == 0x6974616369646E49 && v20 == 0x6967657265526E6FLL;
    v24 = v23 && v21 == 0x6E6F697461727473;
    if (v24 && v22 == 0x726F7463416E6F69)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        v26 = AriOsa::GetOsLog(v6);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
          v27 = v85 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v88 = 2080;
          v89 = v27;
          v90 = 1024;
          v91 = 1797;
          v92 = 1024;
          *v93 = v86;
          _os_log_impl(&dword_296048000, v26, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Recording indicationRegId as 0x%x", buf, 0x22u);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
        if (v90 >= 0)
        {
          v29 = buf;
        }

        else
        {
          v29 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Recording indicationRegId as 0x%x", v28, v29, 1797, v86);
        if (SHIBYTE(v90) < 0)
        {
          operator delete(*buf);
        }
      }

      *(*(a1 + 56) + 256) = v86;
    }
  }

  AriHost::putAsideReconnectingClientData_nl(v6, v86);
  v30 = *(a1 + 56);
  v31 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((v30 + 568), v3);
  if (v31)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v32 = AriOsa::GetOsLog(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
        v33 = v85 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v88 = 2080;
        v89 = v33;
        v90 = 1024;
        v91 = 1809;
        v92 = 1024;
        *v93 = v3;
        v93[2] = 1024;
        *&v93[3] = v86;
        _os_log_impl(&dword_296048000, v32, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Transferring stored ClientData from cid 0x%x to cid 0x%x", buf, 0x28u);
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
      if (v90 >= 0)
      {
        v35 = buf;
      }

      else
      {
        v35 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Transferring stored ClientData from cid 0x%x to cid 0x%x", v34, v35, 1809, v3, v86);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(*buf);
      }

      v30 = *(a1 + 56);
    }

    v36 = v86;
    LODWORD(__p[0]) = v3;
    *buf = __p;
    v37 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((v30 + 568), v3);
    ResMgr<std::shared_ptr<AriHost::ClientData>>::set(v30 + 424, v36, v37 + 3);
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>>>::__erase_unique<int>((*(a1 + 56) + 568), v3);
    v3 = v3 | 0xFF000000;
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v39 = AriOsa::GetOsLog(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
        v40 = v85 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v88 = 2080;
        v89 = v40;
        v90 = 1024;
        v91 = 1814;
        v92 = 1024;
        *v93 = v3;
        v93[2] = 1024;
        *&v93[3] = v86;
        _os_log_impl(&dword_296048000, v39, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Transferring indication cid marked as 0x%x to new cid 0x%x", buf, 0x28u);
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
      if (v90 >= 0)
      {
        v42 = buf;
      }

      else
      {
        v42 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Transferring indication cid marked as 0x%x to new cid 0x%x", v41, v42, 1814, v3, v86);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_153:
    AriHost::updateIndicationCids_nl(*(a1 + 56), v3, v86);
    goto LABEL_154;
  }

  v62 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(v30 + 424, v3);
  if (v62)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v63 = AriOsa::GetOsLog(v62);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
        v64 = v85 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v88 = 2080;
        v89 = v64;
        v90 = 1024;
        v91 = 1819;
        v92 = 1024;
        *v93 = v3;
        v93[2] = 1024;
        *&v93[3] = v86;
        _os_log_impl(&dword_296048000, v63, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Reassigning ClientData from cid 0x%x to cid 0x%x", buf, 0x28u);
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
      if (v90 >= 0)
      {
        v66 = buf;
      }

      else
      {
        v66 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Reassigning ClientData from cid 0x%x to cid 0x%x", v65, v66, 1819, v3, v86);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(*buf);
      }
    }

    v67 = *(a1 + 56);
    v68 = v86;
    v69 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v67 + 424, v3);
    ResMgr<std::shared_ptr<AriHost::ClientData>>::set(v67 + 424, v68, v69);
    v70 = ResMgr<std::shared_ptr<AriHost::ClientData>>::free(*(a1 + 56) + 424, v3);
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v71 = AriOsa::GetOsLog(v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", __p);
        v72 = v85 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v88 = 2080;
        v89 = v72;
        v90 = 1024;
        v91 = 1825;
        v92 = 1024;
        *v93 = v3;
        v93[2] = 1024;
        *&v93[3] = v86;
        _os_log_impl(&dword_296048000, v71, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Reassigning indications using cid 0x%x to use 0x%x", buf, 0x28u);
        if (v85 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ReRegisterClient_block_invoke", buf);
      if (v90 >= 0)
      {
        v74 = buf;
      }

      else
      {
        v74 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Reassigning indications using cid 0x%x to use 0x%x", v73, v74, 1825, v3, v86);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_153;
  }

LABEL_154:
  v75 = *(a1 + 56);
  v76 = v86;
  v77 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((v75 + 8), v86);
  if (!v77)
  {
    v81 = *ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v75 + 424, v76);
    operator new();
  }

  v78 = v77;
  v79 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v75 + 424, v76);
  AriHost::TransactionMgr::setMaxOutstanding((v78 + 3), *(*v79 + 40));
  v80 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((*(a1 + 56) + 8), v86);
  if (!v80)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *(v80 + 284) = 0;
LABEL_100:
  v47 = *MEMORY[0x29EDCA608];
}

void sub_296195FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2961961B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(int,std::shared_ptr<AriHost::ClientData> &)>::~__value_func[abi:ne200100](va);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

AriOsa *ResMgr<std::shared_ptr<AriHost::ClientData>>::doForEach(uint64_t a1, uint64_t a2)
{
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x142);
  v4 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x144);
  for (i = *(a1 + 16); i; i = *i)
  {
    v6 = *(a2 + 24);
    v8 = *(i + 4);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v8, i + 4);
  }

  dispatch_semaphore_signal(*(a1 + 96));

  return AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x147);
}

void AriHost::HandleConnectionError(AriHost *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v1 = std::__shared_weak_count::lock(qword_2A1899100);
    v2 = v1;
    if (v1)
    {
      v3 = AriHost::SingletonWeakPtr;
      if (AriHost::SingletonWeakPtr)
      {
        Instance = AriHost::GetInstance(v1);
        v5 = *Instance;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN7AriHost21HandleConnectionErrorEv_block_invoke;
        block[3] = &__block_descriptor_tmp_229;
        block[4] = v3;
        v12 = v2;
        atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = Instance;
        dispatch_async(v5, block);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
        goto LABEL_21;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "HandleConnectionError", __p);
      v7 = v15 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v17 = 2080;
      v18 = v7;
      v19 = 1024;
      v20 = 1908;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "HandleConnectionError", buf);
    if (v19 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v8, v9, 1908);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v2)
  {
    goto LABEL_20;
  }

LABEL_21:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296196504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost21HandleConnectionErrorEv_block_invoke(uint64_t a1)
{
  v3[7] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 48);
  *(v1 + 704) = 0;
  v2 = AriHost::stallClients_nl(v1);
  v3[0] = v3;
  v3[1] = v3;
  v3[2] = 0;
  AriDispatch::Group::Create(v2);
}

void sub_2961966C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  std::__function::__value_func<void ()(int,std::shared_ptr<AriHost::ClientData> &)>::~__value_func[abi:ne200100](va2);
  _ZZZN7AriHost21HandleConnectionErrorEvEUb1_EN3__5D1Ev(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__list_imp<unsigned int>::clear(va1);
  _Unwind_Resume(a1);
}

uint64_t _ZZZN7AriHost21HandleConnectionErrorEvEUb1_EN3__5D1Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t AriHost::NotifyEventCallback(int a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v4 = std::__shared_weak_count::lock(qword_2A1899100);
    v7 = v4;
    if (v4)
    {
      v8 = AriHost::SingletonWeakPtr;
      if (AriHost::SingletonWeakPtr)
      {
        v9 = AriOsa::SWTrap((a2 > 127), "cid > ARI_MAX_CLIENT_ID", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", 0x7A8);
        Instance = AriHost::GetInstance(v9);
        v11 = *Instance;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiy_block_invoke;
        block[3] = &__block_descriptor_tmp_243;
        block[4] = v8;
        v20 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = a1;
        v24 = a2;
        v21 = Instance;
        v22 = a3;
        dispatch_async(v11, block);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        v12 = 0;
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v4);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback", __p);
      v14 = v26 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v28 = 2080;
      v29 = v14;
      v30 = 1024;
      v31 = 1956;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback", buf);
    if (v30 >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v15, v16, 1956);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }
  }

  v12 = 0xFFFFFFFFLL;
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_22:
  v17 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_296196998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiy_block_invoke(uint64_t a1)
{
  v1 = a1;
  v67 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 64);
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        v5 = *(a1 + 48);
        if ((*(v5 + 704) & 1) == 0 && *(v5 + 256) != -1)
        {
          AriHost::reRegisterIndications_nl(v5);
        }

        a1 = AriHost::flushStalledRequests_nl(v5);
        if (a1)
        {
          started = a1;
          if ((DefaultLogLevel & 8) != 0)
          {
            OsLog = AriOsa::GetOsLog(a1);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", v60);
              v58 = v61 >= 0 ? v60 : v60[0];
              v59 = *(v1 + 68);
              *__p = 136315906;
              *&__p[4] = "ari";
              *&__p[12] = 2080;
              *&__p[14] = v58;
              *&__p[22] = 1024;
              LODWORD(v63) = 1988;
              WORD2(v63) = 1024;
              *(&v63 + 6) = v59;
              _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) failed to flush stalled requests for cid 0x%x", __p, 0x22u);
              if (SHIBYTE(v61) < 0)
              {
                operator delete(v60[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", __p);
            if (__p[23] >= 0)
            {
              v8 = __p;
            }

            else
            {
              v8 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) failed to flush stalled requests for cid 0x%x", v7, v8, 1988, *(v1 + 68));
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }

        else
        {
          v39 = *(v1 + 68);
          v40 = *(v1 + 48);
          v41 = *(v1 + 56);
          started = AriHost::startClient_nl(v40, v39);
          a1 = (*(**(v40 + 76) + 80))(*(v40 + 76), v39, v41, 1);
        }

        v42 = *(v1 + 48);
        if (*(v42 + 592) && *(v1 + 68) == *(v42 + 256) && (DefaultLogLevel & 0x20) != 0)
        {
          v43 = AriOsa::GetOsLog(a1);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", v60);
            v44 = v61 >= 0 ? v60 : v60[0];
            v45 = *(*(v1 + 48) + 592);
            *__p = 136315906;
            *&__p[4] = "ari";
            *&__p[12] = 2080;
            *&__p[14] = v44;
            *&__p[22] = 1024;
            LODWORD(v63) = 1993;
            WORD2(v63) = 2048;
            *(&v63 + 6) = v45;
            _os_log_impl(&dword_296048000, v43, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %lu client reconnections are not complete at All-Ready event", __p, 0x26u);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", __p);
          if (__p[23] >= 0)
          {
            v47 = __p;
          }

          else
          {
            v47 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %lu client reconnections are not complete at All-Ready event", v46, v47, 1993, *(*(v1 + 48) + 592));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        break;
      case 2:
        *(*(a1 + 48) + 704) = 0;
        v16 = AriHost::cancelBlockedRequests_nl(a1, *(a1 + 68));
        if (v16 && (DefaultLogLevel & 0x10) != 0)
        {
          v17 = AriOsa::GetOsLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", v60);
            v18 = v61 >= 0 ? v60 : v60[0];
            v19 = *(v1 + 68);
            *__p = 136315906;
            *&__p[4] = "ari";
            *&__p[12] = 2080;
            *&__p[14] = v18;
            *&__p[22] = 1024;
            LODWORD(v63) = 2004;
            WORD2(v63) = 1024;
            *(&v63 + 6) = v19;
            _os_log_impl(&dword_296048000, v17, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) failed to cancel blocked requests for cid 0x%x", __p, 0x22u);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", __p);
          if (__p[23] >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) failed to cancel blocked requests for cid 0x%x", v20, v21, 2004, *(v1 + 68));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v22 = AriHost::cancelStalledRequests_nl(*(v1 + 48));
        if (v22 && (DefaultLogLevel & 0x10) != 0)
        {
          v23 = AriOsa::GetOsLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", v60);
            v24 = v61 >= 0 ? v60 : v60[0];
            v25 = *(v1 + 68);
            *__p = 136315906;
            *&__p[4] = "ari";
            *&__p[12] = 2080;
            *&__p[14] = v24;
            *&__p[22] = 1024;
            LODWORD(v63) = 2009;
            WORD2(v63) = 1024;
            *(&v63 + 6) = v25;
            _os_log_impl(&dword_296048000, v23, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) failed to cancel stalled requests for cid 0x%x", __p, 0x22u);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", __p);
          if (__p[23] >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) failed to cancel stalled requests for cid 0x%x", v26, v27, 2009, *(v1 + 68));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v28 = *(v1 + 68);
        v29 = *(v1 + 48);
        v30 = *(v1 + 56);
        *__p = MEMORY[0x29EDCA5F8];
        *&__p[8] = 0x40000000;
        *&__p[16] = ___ZN7AriHost7stop_nlEiy_block_invoke;
        *&v63 = &__block_descriptor_tmp_146;
        v65 = v28;
        *(&v63 + 1) = v29;
        v64 = v30;
        a1 = AriHost::stopClient_nl(v29, v28, __p);
        started = a1;
        if (a1 && (DefaultLogLevel & 0x10) != 0)
        {
          v31 = AriOsa::GetOsLog(a1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", v60);
            v32 = v61 >= 0 ? v60 : v60[0];
            v33 = *(v1 + 68);
            *__p = 136315906;
            *&__p[4] = "ari";
            *&__p[12] = 2080;
            *&__p[14] = v32;
            *&__p[22] = 1024;
            LODWORD(v63) = 2014;
            WORD2(v63) = 1024;
            *(&v63 + 6) = v33;
            _os_log_impl(&dword_296048000, v31, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) error while stopping cid 0x%x", __p, 0x22u);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", __p);
          if (__p[23] >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) error while stopping cid 0x%x", v34, v35, 2014, *(v1 + 68));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v36 = *(v1 + 48);
        if (*(v36 + 72))
        {
          std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::__deallocate_node(*(v36 + 64));
          *(v36 + 64) = 0;
          v37 = *(v36 + 56);
          if (v37)
          {
            for (i = 0; i != v37; ++i)
            {
              *(*(v36 + 48) + 8 * i) = 0;
            }
          }

          *(v36 + 72) = 0;
        }

        break;
      case 3:
        a1 = AriHost::enterLPM_nl(*(a1 + 48), *(a1 + 68), *(a1 + 56));
        goto LABEL_97;
      default:
        goto LABEL_25;
    }

LABEL_98:
    if (!started)
    {
      goto LABEL_105;
    }

    goto LABEL_99;
  }

  if (v2 > 6)
  {
    if (v2 == 7)
    {
      if (ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 48) + 424, *(a1 + 68)))
      {
        v60[0] = v60;
        v60[1] = v60;
        v61 = 0;
        v12 = *(v1 + 40);
        v13 = *(v1 + 48);
        v14 = *(v1 + 32);
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = *(v1 + 68);
        v66 = 0;
        operator new();
      }

      a1 = (*(**(*(v1 + 48) + 608) + 80))(*(*(v1 + 48) + 608), *(v1 + 68), *(v1 + 56), 7);
    }

    else
    {
      if (v2 != 8)
      {
        goto LABEL_25;
      }

      v4 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((*(a1 + 48) + 8), *(a1 + 68));
      if (!v4)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      AriHost::TransactionMgr::clearCancelled(v4 + 3);
      a1 = (*(**(*(v1 + 48) + 608) + 80))(*(*(v1 + 48) + 608), *(v1 + 68), *(v1 + 56), 8);
    }

    goto LABEL_97;
  }

  if (v2 == 4)
  {
    a1 = AriHost::exitLPM_nl(*(a1 + 48), *(a1 + 68), *(a1 + 56));
LABEL_97:
    started = a1;
    goto LABEL_98;
  }

  if (v2 == 5)
  {
    started = AriHost::stallClients_nl(*(a1 + 48));
    a1 = (*(**(*(v1 + 48) + 608) + 80))(*(*(v1 + 48) + 608), *(v1 + 68), *(v1 + 56), 5);
    goto LABEL_98;
  }

LABEL_25:
  if ((DefaultLogLevel & 8) != 0)
  {
    v9 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", v60);
      v56 = v61 >= 0 ? v60 : v60[0];
      v57 = *(v1 + 64);
      *__p = 136315906;
      *&__p[4] = "ari";
      *&__p[12] = 2080;
      *&__p[14] = v56;
      *&__p[22] = 1024;
      LODWORD(v63) = 2076;
      WORD2(v63) = 1024;
      *(&v63 + 6) = v57;
      _os_log_error_impl(&dword_296048000, v9, OS_LOG_TYPE_ERROR, "%s: (%s:%d) unknown notification %u", __p, 0x22u);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", __p);
    if (__p[23] >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) unknown notification %u", v10, v11, 2076, *(v1 + 64));
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

LABEL_99:
  if ((DefaultLogLevel & 8) != 0)
  {
    v48 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", v60);
      v53 = asString(*(v1 + 64));
      v54 = v60[0];
      if (v61 >= 0)
      {
        v54 = v60;
      }

      v55 = *(v1 + 68);
      *__p = 136316162;
      *&__p[4] = "ari";
      *&__p[12] = 2080;
      *&__p[14] = v54;
      *&__p[22] = 1024;
      LODWORD(v63) = 2081;
      WORD2(v63) = 2080;
      *(&v63 + 6) = v53;
      HIWORD(v63) = 1024;
      LODWORD(v64) = v55;
      _os_log_error_impl(&dword_296048000, v48, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Notify event %s failed for cid %u", __p, 0x2Cu);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "NotifyEventCallback_block_invoke", __p);
    v49 = asString(*(v1 + 64));
    v51 = *__p;
    if (__p[23] >= 0)
    {
      v51 = __p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Notify event %s failed for cid %u", v50, v51, 2081, v49, *(v1 + 68));
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

LABEL_105:
  v52 = *MEMORY[0x29EDCA608];
}

void sub_296197A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(&a23);
  _Unwind_Resume(a1);
}

void *AriHost::TransactionMgr::clearCancelled(void *this)
{
  v20 = *MEMORY[0x29EDCA608];
  if (this[30])
  {
    v1 = this;
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "clearCancelled", v9);
        v6 = v10 >= 0 ? v9 : v9[0];
        v7 = v1[30];
        v8 = *(v1 + 36);
        *__p = 136316162;
        *&__p[4] = "ari";
        v12 = 2080;
        v13 = v6;
        v14 = 1024;
        v15 = 2341;
        v16 = 2048;
        v17 = v7;
        v18 = 1024;
        v19 = v8;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) BUG: Clearing %zu cancelled-but-not-released requests for cid %u", __p, 0x2Cu);
        if (v10 < 0)
        {
          operator delete(v9[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "clearCancelled", __p);
      if (v14 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) BUG: Clearing %zu cancelled-but-not-released requests for cid %u", v3, v4, 2341, v1[30], *(v1 + 36));
      if (SHIBYTE(v14) < 0)
      {
        operator delete(*__p);
      }
    }

    this = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::clear(v1 + 27);
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296197CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriHost::TransactionMgr *AriHost::TransactionMgr::TransactionMgr(AriHost::TransactionMgr *this, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v25 = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  IDMgr::IDMgr((this + 40), 1, 255);
  *(this + 12) = 0;
  *(this + 104) = 0;
  v6 = v25;
  if (!v25)
  {
    goto LABEL_4;
  }

  if (v25 != v24)
  {
    v6 = (*(*v25 + 16))();
LABEL_4:
    *(this + 17) = v6;
    goto LABEL_6;
  }

  *(this + 17) = this + 112;
  (*(*v6 + 24))(v6, this + 112);
LABEL_6:
  AriOsa::SWTrap(0, "max >= INVALID_RES_ID", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x8A);
  AriOsa::SWTrap(0, "id==NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", 0x78);
  v7 = dispatch_semaphore_create(1);
  *(this + 12) = v7;
  if (v7)
  {
    *(this + 104) = 1;
  }

  v8 = std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::~__value_func[abi:ne200100](v24);
  *(this + 216) = 0u;
  *(this + 36) = a2;
  *(this + 19) = this + 152;
  *(this + 20) = this + 152;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  *(this + 52) = 1065353216;
  *(this + 232) = 0u;
  *(this + 62) = 1065353216;
  *(this + 64) = a3;
  *(this + 260) = 0;
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(v8);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "TransactionMgr", v15);
      v14 = v16 >= 0 ? v15 : v15[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v18 = 2080;
      v19 = v14;
      v20 = 1024;
      v21 = 2096;
      v22 = 1024;
      v23 = a2;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Create transaction manager for cid 0x%x", __p, 0x22u);
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "TransactionMgr", __p);
    if (v20 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Create transaction manager for cid 0x%x", v10, v11, 2096, a2);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(*__p);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296197FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v25);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v25 - 40);
  std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(v24);
  ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::~ResMgr(v23);
  _Unwind_Resume(a1);
}

uint64_t ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::~ResMgr(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>>>::clear(a1);
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::~__value_func[abi:ne200100](a1 + 112);
  std::__tree<IDMgr::Range>::destroy(a1 + 72, *(a1 + 80));
  std::__tree<IDMgr::Range>::destroy(a1 + 48, *(a1 + 56));

  return std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::~__hash_table(a1);
}

void AriHost::TransactionMgr::~TransactionMgr(AriHost::TransactionMgr *this)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "~TransactionMgr", v8);
      v6 = v9 >= 0 ? v8 : v8[0];
      v7 = *(this + 36);
      *__p = 136315906;
      *&__p[4] = "ari";
      v11 = 2080;
      v12 = v6;
      v13 = 1024;
      v14 = 2101;
      v15 = 1024;
      v16 = v7;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Destroy transaction manager for cid 0x%x", __p, 0x22u);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "~TransactionMgr", __p);
    if (v13 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Destroy transaction manager for cid 0x%x", v3, v4, 2101, *(this + 36));
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*__p);
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 216);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 176);
  std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(this + 19);
  ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::~ResMgr(this);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_296198258(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AriHost::TransactionMgr::blockMessage(AriOsa *a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "blockMessage", __p);
      v9 = v16;
      v10 = __p[0];
      GetBufDigest(**(*a2 + 16), 0, (*(*(*a2 + 16) + 8) - **(*a2 + 16)), v13);
      v11 = __p;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if (v14 >= 0)
      {
        v12 = v13;
      }

      else
      {
        v12 = v13[0];
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v18 = 2080;
      v19 = v11;
      v20 = 1024;
      v21 = 2305;
      v22 = 2080;
      v23 = v12;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) queue blocked msg %s", buf, 0x26u);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "blockMessage", buf);
    v4 = SHIBYTE(v20);
    v5 = *buf;
    GetBufDigest(**(*a2 + 16), 0, (*(*(*a2 + 16) + 8) - **(*a2 + 16)), __p);
    v7 = buf;
    if (v4 < 0)
    {
      v7 = v5;
    }

    if (v16 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) queue blocked msg %s", v6, v7, 2305, v8);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(*buf);
    }
  }

  operator new();
}

void sub_2961984D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_29619866C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C257E00](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C257E00](a1 + 112);
  return a1;
}

void AriHost::TransactionMgr::unblockMessage(AriHost::TransactionMgr *this@<X0>, void *a2@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  v2 = *(this + 21);
  if (v2)
  {
    v3 = *(this + 20);
    v5 = v3[2];
    v4 = v3[3];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = *(this + 20);
      v2 = *(this + 21);
      v6 = v3[3];
    }

    else
    {
      v6 = 0;
    }

    *a2 = v5;
    a2[1] = v4;
    v8 = *v3;
    v7 = v3[1];
    *(v8 + 8) = v7;
    *v7 = v8;
    *(this + 21) = v2 - 1;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    operator delete(v3);
    if ((DefaultLogLevel & 4) != 0)
    {
      OsLog = AriOsa::GetOsLog(v9);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "unblockMessage", __p);
        v17 = v24;
        v18 = __p[0];
        GetBufDigest(**(v5 + 16), 0, (*(*(v5 + 16) + 8) - **(v5 + 16)), v21);
        v19 = __p;
        if (v17 < 0)
        {
          v19 = v18;
        }

        if (v22 >= 0)
        {
          v20 = v21;
        }

        else
        {
          v20 = v21[0];
        }

        *buf = 136315906;
        *&buf[4] = "ari";
        v26 = 2080;
        v27 = v19;
        v28 = 1024;
        v29 = 2317;
        v30 = 2080;
        v31 = v20;
        _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) dequeue blocked msg %s", buf, 0x26u);
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "unblockMessage", buf);
      v11 = SHIBYTE(v28);
      v12 = *buf;
      GetBufDigest(**(v5 + 16), 0, (*(*(v5 + 16) + 8) - **(v5 + 16)), __p);
      v14 = buf;
      if (v11 < 0)
      {
        v14 = v12;
      }

      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) dequeue blocked msg %s", v13, v14, 2317, v15);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_296198A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void *AriHost::IndicationHandlerList::IndicationHandlerList(void *this)
{
  *this = this;
  this[1] = this;
  this[2] = 0;
  return this;
}

{
  *this = this;
  this[1] = this;
  this[2] = 0;
  return this;
}

void AriHost::IndicationHandlerList::updateHandlerId(AriHost::IndicationHandlerList *this, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  for (i = *(this + 1); i != this; i = *(i + 1))
  {
    v7 = *(i + 2);
    if (*(v7 + 8) == a2)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(this);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "updateHandlerId", v21);
          v9 = v22;
          v10 = v21[0];
          AriHost::IndicationHandlerList::toString(this, __p);
          v11 = v21;
          if (v9 < 0)
          {
            v11 = v10;
          }

          v12 = __p;
          if (v20 < 0)
          {
            v12 = __p[0];
          }

          *buf = 136316418;
          *&buf[4] = "ari";
          v24 = 2080;
          v25 = v11;
          v26 = 1024;
          v27 = 2394;
          v28 = 1024;
          v29 = a2;
          v30 = 1024;
          v31 = a3;
          v32 = 2080;
          v33 = v12;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Updating handler CID (0x%x -> 0x%x) for %s", buf, 0x32u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "updateHandlerId", buf);
        v13 = SHIBYTE(v26);
        v14 = *buf;
        AriHost::IndicationHandlerList::toString(this, v21);
        v16 = buf;
        if (v13 < 0)
        {
          v16 = v14;
        }

        v17 = v21;
        if (v22 < 0)
        {
          v17 = v21[0];
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Updating handler CID (0x%x -> 0x%x) for %s", v15, v16, 2394, a2, a3, v17);
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(*buf);
        }

        v7 = *(i + 2);
      }

      *(v7 + 8) = a3;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_296198D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::IndicationHandlerList::toString@<X0>(AriHost::IndicationHandlerList *this@<X0>, _BYTE *a2@<X8>)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[7] = v4;
  v16[8] = v4;
  v16[5] = v4;
  v16[6] = v4;
  v16[3] = v4;
  v16[4] = v4;
  v16[1] = v4;
  v16[2] = v4;
  v15 = v4;
  v16[0] = v4;
  *__p = v4;
  v14 = v4;
  v12[1] = v4;
  v12[2] = v4;
  v11 = v4;
  v12[0] = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v5 = Ari::MsgDefById((*(this + 7) >> 26), (*(this + 7) >> 15) & 0x3FF);
  v6 = "Unknown";
  if (v5 && *(v5 + 48))
  {
    v6 = *(v5 + 48);
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " (", 2);
  v8 = v11;
  *(&v12[-1] + *(v11 - 24) + 8) = *(&v12[-1] + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v12[-1] + *(v8 - 24) + 8) |= 0x200u;
  v9 = MEMORY[0x29C257D10](&v11, *(this + 7));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ")", 1);
  std::stringbuf::str[abi:ne200100](a2, &v11 + 8);
  *&v11 = *MEMORY[0x29EDC9538];
  *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v11 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v11 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x29C257E00](v16);
}

uint64_t AriHost::FilerTransfer::FilerTransfer(uint64_t this, int a2, unsigned int a3, int a4)
{
  *this = a4;
  *(this + 4) = a2;
  *(this + 8) = a3;
  *(this + 16) = a3;
  return this;
}

{
  *this = a4;
  *(this + 4) = a2;
  *(this + 8) = a3;
  *(this + 16) = a3;
  return this;
}

void AriHost::FilerTransfer::~FilerTransfer(AriHost::FilerTransfer *this)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(this + 1) && (DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "~FilerTransfer", v17);
      v3 = v18;
      v4 = v17[0];
      AriHost::FilerTransfer::getName(this, __p);
      v5 = v17;
      if (v3 < 0)
      {
        v5 = v4;
      }

      if (v16 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = *(this + 1);
      v8 = *(this + 2);
      *buf = 136316418;
      *&buf[4] = "ari";
      v20 = 2080;
      v21 = v5;
      v22 = 1024;
      v23 = 2421;
      v24 = 2080;
      v25 = v6;
      v26 = 2048;
      v27 = v7;
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) FilerTransfer %s has been abandoned with %lld bytes remaining of %lld total bytes", buf, 0x3Au);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "~FilerTransfer", buf);
    v9 = SHIBYTE(v22);
    v10 = *buf;
    AriHost::FilerTransfer::getName(this, v17);
    v12 = buf;
    if (v9 < 0)
    {
      v12 = v10;
    }

    if (v18 >= 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v17[0];
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) FilerTransfer %s has been abandoned with %lld bytes remaining of %lld total bytes", v11, v12, 2421, v13, *(this + 1), *(this + 2));
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(*buf);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2961991E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__list_imp<unsigned int>::clear(void *result)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDEE3F0, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void std::__list_imp<std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>::clear(uint64_t *a1)
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
        v6 = v2[4];
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

void std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(uint64_t *a1)
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

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<AriHost::ClientData> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<IDMgr::Range>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<IDMgr::Range>::destroy(a1, *a2);
    std::__tree<IDMgr::Range>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::__deallocate_node(void *__p)
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

uint64_t std::__function::__value_func<void ()(int,unsigned int,AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(v1 + 4);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      AriHost::TransactionMgr::~TransactionMgr((v2 + 3));
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

uint64_t std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      AriHost::FilerTransfer::~FilerTransfer((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t ResMgr<AriHost::IndicationHandlerList>::~ResMgr(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::__deallocate_node(*(a1 + 16));
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

  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_release(v4);
  }

  std::__function::__value_func<void ()(int,unsigned int,AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](a1 + 112);
  std::__tree<IDMgr::Range>::destroy(a1 + 72, *(a1 + 80));
  std::__tree<IDMgr::Range>::destroy(a1 + 48, *(a1 + 56));

  return std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::~__hash_table(a1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7AriHost11GetInstanceEvEUb_E16AriHostNoPrivateNS_9allocatorIS2_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D36708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<AriHost::ClientData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D36758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<AriHost::ClientData>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(a1 + 47) < 0)
  {
    v9 = *(a1 + 24);

    operator delete(v9);
  }
}

AriOsa *ResMgr<std::shared_ptr<AriHost::ClientData>>::sw_dbug_trap(AriOsa *result, int a2, const char *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = result;
    IDMgr::dump((result + 40), 1, a3);
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v4);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v20);
        v18 = v21 >= 0 ? v20 : v20[0];
        v19 = *(v3 + 3);
        *__p = 136316162;
        *&__p[4] = "ari";
        v23 = 2080;
        v24 = v18;
        v25 = 1024;
        v26 = 274;
        v27 = 2048;
        *v28 = v3;
        *&v28[8] = 2048;
        v29 = v19;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ResMgr(%p) dump total entries: %zu", __p, 0x30u);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", __p);
      if (v25 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ResMgr(%p) dump total entries: %zu", v6, v7, 274, v3, *(v3 + 3));
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    for (i = *(v3 + 2); i; i = *i)
    {
      v9 = *(v3 + 17);
      if (v9)
      {
        v10 = *(i + 6);
        *__p = *(i + 4);
        LODWORD(v20[0]) = v10;
        (*(*v9 + 48))(v9, __p, v20, i + 4);
      }

      else if ((DefaultLogLevel & 8) != 0)
      {
        v11 = AriOsa::GetOsLog(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v20);
          v14 = v20;
          if (v21 < 0)
          {
            v14 = v20[0];
          }

          v15 = *(i + 4);
          v16 = *(i + 6);
          *__p = 136316418;
          *&__p[4] = "ari";
          v23 = 2080;
          v24 = v14;
          v25 = 1024;
          v26 = 284;
          v27 = 1024;
          *v28 = v15;
          *&v28[4] = 1024;
          *&v28[6] = v15;
          LOWORD(v29) = 1024;
          *(&v29 + 2) = v16;
          _os_log_error_impl(&dword_296048000, v11, OS_LOG_TYPE_ERROR, "%s: (%s:%d) id(%08d-0x%08x) ts:%u", __p, 0x2Eu);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", __p);
        if (v25 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) id(%08d-0x%08x) ts:%u", v12, v13, 284, *(i + 4), *(i + 4), *(i + 6));
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*__p);
        }
      }
    }

    AriOsa::OsSleep(0x7D0);
    result = AriOsa::SWTrap(1, "true", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x11F);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296199E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(void *a1, int a2)
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

uint64_t std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::__node_insert_unique(float *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 8) = v4;
  v5 = *(a1 + 1);
  if (v5)
  {
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = v4;
      if (v5 <= v4)
      {
        v7 = v4 % v5;
      }
    }

    else
    {
      v7 = (v5 - 1) & v4;
    }

    v8 = *(*a1 + 8 * v7);
    if (v8)
    {
      for (i = *v8; i; i = *i)
      {
        v10 = i[1];
        if (v10 == v4)
        {
          if (*(i + 4) == v4)
          {
            return 0;
          }
        }

        else
        {
          if (v6.u32[0] > 1uLL)
          {
            if (v10 >= v5)
            {
              v10 %= v5;
            }
          }

          else
          {
            v10 &= v5 - 1;
          }

          if (v10 != v7)
          {
            break;
          }
        }
      }
    }
  }

  v11 = (*(a1 + 3) + 1);
  v12 = a1[8];
  if (!v5 || (v12 * v5) < v11)
  {
    v13 = 1;
    if (v5 >= 3)
    {
      v13 = (v5 & (v5 - 1)) != 0;
    }

    v14 = v13 | (2 * v5);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      prime = v15;
    }

    else
    {
      prime = v14;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 1);
    }

    if (prime > v5)
    {
LABEL_29:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v17 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v5 < 3 || (v18 = vcnt_s8(v5), v18.i16[0] = vaddlv_u8(v18), v18.u32[0] > 1uLL))
      {
        v17 = std::__next_prime(v17);
      }

      else
      {
        v19 = 1 << -__clz(v17 - 1);
        if (v17 >= 2)
        {
          v17 = v19;
        }
      }

      if (prime <= v17)
      {
        prime = v17;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 1);
      }

      else
      {
        if (prime)
        {
          goto LABEL_29;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v5 = 0;
        *(a1 + 1) = 0;
      }
    }
  }

  v20 = *(a2 + 8);
  v21 = vcnt_s8(v5);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    if (v20 >= v5)
    {
      v20 %= v5;
    }
  }

  else
  {
    v20 &= v5 - 1;
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v20);
  if (v23)
  {
    *a2 = *v23;
LABEL_49:
    *v23 = a2;
    goto LABEL_50;
  }

  *a2 = *(a1 + 2);
  *(a1 + 2) = a2;
  v22[v20] = a1 + 4;
  if (*a2)
  {
    v24 = *(*a2 + 8);
    if (v21.u32[0] > 1uLL)
    {
      if (v24 >= v5)
      {
        v24 %= v5;
      }
    }

    else
    {
      v24 &= v5 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_49;
  }

LABEL_50:
  ++*(a1 + 3);
  return 1;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<int,AriHost::TransactionMgr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,AriHost::TransactionMgr>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      AriHost::TransactionMgr::~TransactionMgr((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AriHost::InboundMsgHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D367A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

uint64_t std::function<void ()(int,unsigned int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::operator()(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
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

AriOsa *ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::sw_dbug_trap(AriOsa *result, int a2, const char *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = result;
    IDMgr::dump((result + 40), 1, a3);
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v4);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v19);
        v17 = v20 >= 0 ? v19 : v19[0];
        v18 = *(v3 + 3);
        *__p = 136316162;
        *&__p[4] = "ari";
        v22 = 2080;
        v23 = v17;
        v24 = 1024;
        v25 = 274;
        v26 = 2048;
        *v27 = v3;
        *&v27[8] = 2048;
        v28 = v18;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ResMgr(%p) dump total entries: %zu", __p, 0x30u);
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", __p);
      if (v24 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ResMgr(%p) dump total entries: %zu", v6, v7, 274, v3, *(v3 + 3));
      if (SHIBYTE(v24) < 0)
      {
        operator delete(*__p);
      }
    }

    for (i = *(v3 + 2); i; i = *i)
    {
      v9 = *(v3 + 17);
      if (v9)
      {
        std::function<void ()(int,unsigned int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::operator()(v9, *(i + 4), *(i + 6));
      }

      else if ((DefaultLogLevel & 8) != 0)
      {
        v10 = AriOsa::GetOsLog(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v19);
          v13 = v19;
          if (v20 < 0)
          {
            v13 = v19[0];
          }

          v14 = *(i + 4);
          v15 = *(i + 6);
          *__p = 136316418;
          *&__p[4] = "ari";
          v22 = 2080;
          v23 = v13;
          v24 = 1024;
          v25 = 284;
          v26 = 1024;
          *v27 = v14;
          *&v27[4] = 1024;
          *&v27[6] = v14;
          LOWORD(v28) = 1024;
          *(&v28 + 2) = v15;
          _os_log_error_impl(&dword_296048000, v10, OS_LOG_TYPE_ERROR, "%s: (%s:%d) id(%08d-0x%08x) ts:%u", __p, 0x2Eu);
          if (v20 < 0)
          {
            operator delete(v19[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", __p);
        if (v24 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) id(%08d-0x%08x) ts:%u", v11, v12, 284, *(i + 4), *(i + 4), *(i + 6));
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*__p);
        }
      }
    }

    AriOsa::OsSleep(0x7D0);
    result = AriOsa::SWTrap(1, "true", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x11F);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29619B000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v2)
    {
      v4 %= *&v2;
    }
  }

  else
  {
    v4 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v4);
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

    if (v8 == v4)
    {
LABEL_20:
      if (!v3)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v9 = *(v3 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= *&v2 - 1;
  }

  if (v9 != v4)
  {
LABEL_19:
    *(*a1 + 8 * v4) = 0;
    v3 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v10 = *(v3 + 8);
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

  if (v10 != v4)
  {
    *(*a1 + 8 * v10) = v7;
    v3 = *a2;
  }

LABEL_27:
  *v7 = v3;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,void *>>>::operator()[abi:ne200100](1, a2);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<int,AriHost::FilerTransfer>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,AriHost::FilerTransfer>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      AriHost::FilerTransfer::~FilerTransfer((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::__erase_unique<int>(void *a1, int a2)
{
  result = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1, a2);
  if (result)
  {
    v4 = a1[1];
    v5 = result[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != result);
    if (v8 == a1 + 2)
    {
      goto LABEL_19;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v10 = *(*result + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_20:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *result;
    if (*result)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *result;
      }
    }

    *v8 = v11;
    *result = 0;
    --a1[3];
    v13[0] = result;
    v13[1] = a1;
    v14 = 1;
    memset(v15, 0, sizeof(v15));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<int,AriHost::FilerTransfer>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,AriHost::FilerTransfer>,void *>>>>::~unique_ptr[abi:ne200100](v13);
  }

  return result;
}

AriOsa *ResMgr<AriHost::IndicationHandlerList>::sw_dbug_trap(AriOsa *result, int a2, const char *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = result;
    IDMgr::dump((result + 40), 1, a3);
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v4);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v20);
        v18 = v21 >= 0 ? v20 : v20[0];
        v19 = *(v3 + 3);
        *__p = 136316162;
        *&__p[4] = "ari";
        v23 = 2080;
        v24 = v18;
        v25 = 1024;
        v26 = 274;
        v27 = 2048;
        *v28 = v3;
        *&v28[8] = 2048;
        v29 = v19;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ResMgr(%p) dump total entries: %zu", __p, 0x30u);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", __p);
      if (v25 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ResMgr(%p) dump total entries: %zu", v6, v7, 274, v3, *(v3 + 3));
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    for (i = *(v3 + 2); i; i = *i)
    {
      v9 = *(v3 + 17);
      if (v9)
      {
        v10 = *(i + 6);
        *__p = *(i + 4);
        LODWORD(v20[0]) = v10;
        (*(*v9 + 48))(v9, __p, v20, i + 4);
      }

      else if ((DefaultLogLevel & 8) != 0)
      {
        v11 = AriOsa::GetOsLog(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", v20);
          v14 = v20;
          if (v21 < 0)
          {
            v14 = v20[0];
          }

          v15 = *(i + 4);
          v16 = *(i + 6);
          *__p = 136316418;
          *&__p[4] = "ari";
          v23 = 2080;
          v24 = v14;
          v25 = 1024;
          v26 = 284;
          v27 = 1024;
          *v28 = v15;
          *&v28[4] = 1024;
          *&v28[6] = v15;
          LOWORD(v29) = 1024;
          *(&v29 + 2) = v16;
          _os_log_error_impl(&dword_296048000, v11, OS_LOG_TYPE_ERROR, "%s: (%s:%d) id(%08d-0x%08x) ts:%u", __p, 0x2Eu);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "sw_dbug_trap", __p);
        if (v25 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) id(%08d-0x%08x) ts:%u", v12, v13, 284, *(i + 4), *(i + 4), *(i + 6));
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*__p);
        }
      }
    }

    AriOsa::OsSleep(0x7D0);
    result = AriOsa::SWTrap(1, "true", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x11F);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29619B680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
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

void sub_29619BADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<AriHost::reRegisterIndications_nl(void)::$_0,std::allocator<AriHost::reRegisterIndications_nl(void)::$_0>,void ()(AriHost::IndicationHandlerList &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1D367F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<AriHost::reRegisterIndications_nl(void)::$_0,std::allocator<AriHost::reRegisterIndications_nl(void)::$_0>,void ()(AriHost::IndicationHandlerList &)>::operator()(AriOsa *a1, uint64_t a2)
{
  v47 = *MEMORY[0x29EDCA608];
  if (*(a2 + 16))
  {
    if (*(a2 + 25) != 1)
    {
      goto LABEL_54;
    }

    if (*(a2 + 24) == 1)
    {
      v4 = *(a1 + 1);
      if ((DefaultLogLevel & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(a1);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", __p);
          v6 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
          v7 = "Unknown";
          if (v6 && *(v6 + 48))
          {
            v7 = *(v6 + 48);
          }

          v8 = __p[0];
          if (v37 >= 0)
          {
            v8 = __p;
          }

          v9 = *(v4 + 64);
          *buf = 136316162;
          *&buf[4] = "ari";
          v39 = 2080;
          v40 = v8;
          v41 = 1024;
          v42 = 1345;
          v43 = 2080;
          v44 = v7;
          v45 = 1024;
          v46 = v9;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Setting %s as wakeable using cid 0x%x", buf, 0x2Cu);
          if (v37 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", buf);
        v10 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
        v12 = "Unknown";
        if (v10 && *(v10 + 48))
        {
          v12 = *(v10 + 48);
        }

        v13 = *buf;
        if (v41 >= 0)
        {
          v13 = buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Setting %s as wakeable using cid 0x%x", v11, v13, 1345, v12, *(v4 + 64));
        if (SHIBYTE(v41) < 0)
        {
          operator delete(*buf);
        }
      }

      v14 = *(a2 + 28);
      v15 = *(a1 + 2);
      v16 = *(a1 + 3);
      v17 = *v16;
      v18 = v15 + 4 * v17;
      LOWORD(v17) = v17 + 1;
      *v16 = v17;
      *(v18 + 8) = v14;
      if (v17 == 500)
      {
        *(v15 + 2008) = 500;
        AriHost::setGroupWakeable_nl(v4, v15);
        bzero((*(a1 + 2) + 8), 0x7D0uLL);
        **(a1 + 3) = 0;
      }

      goto LABEL_54;
    }

    if ((DefaultLogLevel & 0x10) == 0)
    {
      goto LABEL_54;
    }

    v27 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", __p);
      v28 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
      v29 = "Unknown";
      if (v28 && *(v28 + 48))
      {
        v29 = *(v28 + 48);
      }

      v30 = __p[0];
      if (v37 >= 0)
      {
        v30 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v39 = 2080;
      v40 = v30;
      v41 = 1024;
      v42 = 1357;
      v43 = 2080;
      v44 = v29;
      _os_log_impl(&dword_296048000, v27, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Request to set %s as NON-wakeable.  Ignoring...", buf, 0x26u);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", buf);
    v31 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
    v33 = "Unknown";
    if (v31 && *(v31 + 48))
    {
      v33 = *(v31 + 48);
    }

    v34 = *buf;
    if (v41 >= 0)
    {
      v34 = buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Request to set %s as NON-wakeable.  Ignoring...", v32, v34, 1357, v33);
  }

  else
  {
    if ((DefaultLogLevel & 0x20) == 0)
    {
      goto LABEL_54;
    }

    v19 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", __p);
      v20 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
      v21 = "Unknown";
      if (v20 && *(v20 + 48))
      {
        v21 = *(v20 + 48);
      }

      v22 = __p[0];
      if (v37 >= 0)
      {
        v22 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v39 = 2080;
      v40 = v22;
      v41 = 1024;
      v42 = 1338;
      v43 = 2080;
      v44 = v21;
      _os_log_impl(&dword_296048000, v19, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Skipping re-registration of indication %s as no client is registered for it", buf, 0x26u);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", buf);
    v23 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
    v25 = "Unknown";
    if (v23 && *(v23 + 48))
    {
      v25 = *(v23 + 48);
    }

    v26 = *buf;
    if (v41 >= 0)
    {
      v26 = buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Skipping re-registration of indication %s as no client is registered for it", v24, v26, 1338, v25);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
  }

LABEL_54:
  v35 = *MEMORY[0x29EDCA608];
}

void sub_29619C0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AriHost::reRegisterIndications_nl(void)::$_0,std::allocator<AriHost::reRegisterIndications_nl(void)::$_0>,void ()(AriHost::IndicationHandlerList &)>::target(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZN7AriHost24reRegisterIndications_nlEvE3$_0" || ((v3 & "ZN7AriHost24reRegisterIndications_nlEvE3$_0" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZN7AriHost24reRegisterIndications_nlEvE3$_0") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7AriHost24reRegisterIndications_nlEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<AriHost::pushIndications_nl(void)::$_0,std::allocator<AriHost::pushIndications_nl(void)::$_0>,void ()(AriHost::IndicationHandlerList &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1D36888;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<AriHost::pushIndications_nl(void)::$_0,std::allocator<AriHost::pushIndications_nl(void)::$_0>,void ()(AriHost::IndicationHandlerList &)>::operator()(AriOsa *a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(a2 + 16))
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v4 = *(a1 + 1);
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", __p);
        v6 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
        v7 = "Unknown";
        if (v6 && *(v6 + 48))
        {
          v7 = *(v6 + 48);
        }

        v8 = __p[0];
        if (v26 >= 0)
        {
          v8 = __p;
        }

        v9 = *(v4 + 256);
        *buf = 136316162;
        *&buf[4] = "ari";
        v28 = 2080;
        v29 = v8;
        v30 = 1024;
        v31 = 1387;
        v32 = 2080;
        v33 = v7;
        v34 = 1024;
        v35 = v9;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Reregistering indication %s using cid 0x%x", buf, 0x2Cu);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", buf);
      v10 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
      v12 = "Unknown";
      if (v10 && *(v10 + 48))
      {
        v12 = *(v10 + 48);
      }

      v13 = *buf;
      if (v30 >= 0)
      {
        v13 = buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Reregistering indication %s using cid 0x%x", v11, v13, 1387, v12, *(v4 + 256));
      if (SHIBYTE(v30) < 0)
      {
        operator delete(*buf);
      }
    }

    v14 = *(a1 + 2);
    v15 = *(a2 + 28);
    operator new();
  }

  if ((DefaultLogLevel & 0x20) != 0)
  {
    v16 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", __p);
      v17 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
      v18 = "Unknown";
      if (v17 && *(v17 + 48))
      {
        v18 = *(v17 + 48);
      }

      v19 = __p[0];
      if (v26 >= 0)
      {
        v19 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v28 = 2080;
      v29 = v19;
      v30 = 1024;
      v31 = 1383;
      v32 = 2080;
      v33 = v18;
      _os_log_impl(&dword_296048000, v16, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Skipping re-registration of indication %s as no client is registered for it", buf, 0x26u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "operator()", buf);
    v20 = Ari::MsgDefById((*(a2 + 28) >> 26), (*(a2 + 28) >> 15) & 0x3FF);
    v22 = "Unknown";
    if (v20 && *(v20 + 48))
    {
      v22 = *(v20 + 48);
    }

    v23 = *buf;
    if (v30 >= 0)
    {
      v23 = buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Skipping re-registration of indication %s as no client is registered for it", v21, v23, 1383, v22);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_29619C634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AriHost::pushIndications_nl(void)::$_0,std::allocator<AriHost::pushIndications_nl(void)::$_0>,void ()(AriHost::IndicationHandlerList &)>::target(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZN7AriHost18pushIndications_nlEvE3$_0" || ((v3 & "ZN7AriHost18pushIndications_nlEvE3$_0" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZN7AriHost18pushIndications_nlEvE3$_0") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7AriHost18pushIndications_nlEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<AriHost::ClientEventHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D36908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

__n128 std::__function::__func<AriHost::nackResponseHandlers_nl(unsigned int,unsigned int)::$_0,std::allocator<AriHost::nackResponseHandlers_nl(unsigned int,unsigned int)::$_0>,void ()(int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1D36958;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<AriHost::nackResponseHandlers_nl(unsigned int,unsigned int)::$_0,std::allocator<AriHost::nackResponseHandlers_nl(unsigned int,unsigned int)::$_0>,void ()(int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::operator()(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = *a2;
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  v8 = v4 | ((*(a1 + 8) & 0x7Fu) << 8);
  if (!Ari::ClientWorkQueue::containsCtx((v7 + 264), v8) && !Ari::ClientWorkQueue::containsCtx((v7 + 344), v8))
  {
    v9 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_29619CA18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AriHost::nackResponseHandlers_nl(unsigned int,unsigned int)::$_0,std::allocator<AriHost::nackResponseHandlers_nl(unsigned int,unsigned int)::$_0>,void ()(int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::target(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZN7AriHost23nackResponseHandlers_nlEjjE3$_0" || ((v3 & "ZN7AriHost23nackResponseHandlers_nlEjjE3$_0" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZN7AriHost23nackResponseHandlers_nlEjjE3$_0") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7AriHost23nackResponseHandlers_nlEjjE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AriHost::updateIndicationCids_nl(unsigned int,unsigned int)::$_0,std::allocator<AriHost::updateIndicationCids_nl(unsigned int,unsigned int)::$_0>,void ()(AriHost::IndicationHandlerList &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2A1D369E8;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AriHost::updateIndicationCids_nl(unsigned int,unsigned int)::$_0,std::allocator<AriHost::updateIndicationCids_nl(unsigned int,unsigned int)::$_0>,void ()(AriHost::IndicationHandlerList &)>::target(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZN7AriHost23updateIndicationCids_nlEjjE3$_0" || ((v3 & "ZN7AriHost23updateIndicationCids_nlEjjE3$_0" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZN7AriHost23updateIndicationCids_nlEjjE3$_0") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7AriHost23updateIndicationCids_nlEjjE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int a2)
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

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHost::ClientData>>>>::__erase_unique<int>(void *a1, int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1, a2);
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

void *_ZNSt3__110__function6__funcIZZN7AriHost25HandleRTServerInitializedEvEUb0_E3__4NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEED1Ev(void *a1)
{
  *a1 = &unk_2A1D36A68;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN7AriHost25HandleRTServerInitializedEvEUb0_E3__4NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEED0Ev(void *a1)
{
  *a1 = &unk_2A1D36A68;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C257E70);
}

void *_ZNKSt3__110__function6__funcIZZN7AriHost25HandleRTServerInitializedEvEUb0_E3__4NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE7__cloneEPNS0_6__baseISA_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1D36A68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void _ZNSt3__110__function6__funcIZZN7AriHost25HandleRTServerInitializedEvEUb0_E3__4NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZZN7AriHost25HandleRTServerInitializedEvEUb0_E3__4NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN7AriHost25HandleRTServerInitializedEvEUb0_E3__4NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEEclEOiS9_(void *a1, uint64_t a2, void *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3[16])
  {
    v5 = v3[3];
    v6 = v3[4];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *v5;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZZZN7AriHost25HandleRTServerInitializedEvEUb0_ENK3__4clEjNSt3__110shared_ptrINS_10ClientDataEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_333;
    v9 = a1[2];
    v8 = a1[3];
    block[4] = a1[1];
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v3;
    v13 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = a1[3];
    dispatch_group_async(v8, v7, block);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN7AriHost25HandleRTServerInitializedEvEUb0_E3__4NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZZN7AriHost25HandleRTServerInitializedEvEUb0_E3$_4" || ((v3 & "ZZN7AriHost25HandleRTServerInitializedEvEUb0_E3$_4" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZZN7AriHost25HandleRTServerInitializedEvEUb0_E3$_4") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7AriHost25HandleRTServerInitializedEvEUb0_E3$_4" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *__copy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c48_ZTSNSt3__110shared_ptrIN7AriHost10ClientDataEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c48_ZTSNSt3__110shared_ptrIN7AriHost10ClientDataEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__value_func<void ()(int,std::shared_ptr<AriHost::ClientData> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEED1Ev(void *a1)
{
  *a1 = &unk_2A1D36B28;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEED0Ev(void *a1)
{
  *a1 = &unk_2A1D36B28;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x29C257E70);
}

void *_ZNKSt3__110__function6__funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE7__cloneEPNS0_6__baseISA_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1D36B28;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a2[5] = result[5];
  return result;
}

void _ZNSt3__110__function6__funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEEclEOiS9_(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 40);
  operator new();
}

void sub_29619D80C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZZN7AriHost21HandleConnectionErrorEvEUb1_E3$_5" || ((v3 & "ZZN7AriHost21HandleConnectionErrorEvEUb1_E3$_5" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZZN7AriHost21HandleConnectionErrorEvEUb1_E3$_5") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7AriHost21HandleConnectionErrorEvEUb1_E3$_5" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function12__alloc_funcIZZN7AriHost21HandleConnectionErrorEvEUb1_E3__5NS_9allocatorIS3_EEFviRNS_10shared_ptrINS2_10ClientDataEEEEE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c48_ZTSNSt3__110shared_ptrIN7AriHost10ClientDataEEE64c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[9];
  result[8] = a2[8];
  result[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c48_ZTSNSt3__110shared_ptrIN7AriHost10ClientDataEEE64c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *_ZNSt3__110__function6__funcIZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3__6NS_9allocatorIS4_EEFvRNS2_21IndicationHandlerListEEED1Ev(void *a1)
{
  *a1 = &unk_2A1D36BD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3__6NS_9allocatorIS4_EEFvRNS2_21IndicationHandlerListEEED0Ev(void *a1)
{
  *a1 = &unk_2A1D36BD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C257E70);
}

__n128 _ZNKSt3__110__function6__funcIZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3__6NS_9allocatorIS4_EEFvRNS2_21IndicationHandlerListEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1D36BD8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3__6NS_9allocatorIS4_EEFvRNS2_21IndicationHandlerListEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3__6NS_9allocatorIS4_EEFvRNS2_21IndicationHandlerListEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3__6NS_9allocatorIS4_EEFvRNS2_21IndicationHandlerListEEEclES8_(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    if (*(*(i + 16) + 8) == *(result + 24))
    {
      v3 = *(result + 32);
      operator new();
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3__6NS_9allocatorIS4_EEFvRNS2_21IndicationHandlerListEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3$_6" || ((v3 & "ZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3$_6" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3$_6") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7AriHost19NotifyEventCallbackE18ARI_XPC_NOTIFY_IDSiyEUb2_E3$_6" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<AriHost::InboundMsgHandler> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::__deallocate_node(*(a1 + 16));
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

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>(void *a1, int a2)
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

  return 0;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C257DB0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_29619E048(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C257CD0](v20, a1);
  if (LOBYTE(v20[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2].__locale_) = v16;
      memset(__b, v9, v16);
      *(&__b[0].__locale_ + v16) = 0;
      if (SHIBYTE(__b[2].__locale_) >= 0)
      {
        locale = __b;
      }

      else
      {
        locale = __b[0].__locale_;
      }

      v18 = (*(*v7 + 96))(v7, locale, v16);
      if (SHIBYTE(__b[2].__locale_) < 0)
      {
        operator delete(__b[0].__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C257CE0](v20);
  return a1;
}

void sub_29619E32C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257CE0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29619E300);
}

_BYTE *std::stringbuf::str[abi:ne200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 96);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 88);
    v6 = *(a2 + 48);
    if (v5 < v6)
    {
      *(a2 + 88) = v6;
      v5 = v6;
    }

    v7 = (a2 + 40);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 16);
    v5 = *(a2 + 32);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

void *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK::ARI_IBISimTkConfigureStkCmdReq_SDK(AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 881065984, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 881065984, 0);
}

void AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK::ARI_IBISimTkConfigureStkCmdReq_SDK(AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK::~ARI_IBISimTkConfigureStkCmdReq_SDK(AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK *this)
{
  *this = &unk_2A1D36C58;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK::~ARI_IBISimTkConfigureStkCmdReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK::pack(AriSdk::ARI_IBISimTkConfigureStkCmdReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK::ARI_IBISimTkConfigureStkCmdRspCb_SDK(AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 889454592, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 889454592, 0);
}

void AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK::ARI_IBISimTkConfigureStkCmdRspCb_SDK(AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK::~ARI_IBISimTkConfigureStkCmdRspCb_SDK(AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK *this)
{
  *this = &unk_2A1D36C90;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK::~ARI_IBISimTkConfigureStkCmdRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK::pack(AriSdk::ARI_IBISimTkConfigureStkCmdRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK::ARI_IBISimTkEnvelopeCommandReq_SDK(AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 881098752, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 881098752, 0);
}

void AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK::ARI_IBISimTkEnvelopeCommandReq_SDK(AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK::~ARI_IBISimTkEnvelopeCommandReq_SDK(AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK *this)
{
  *this = &unk_2A1D36CC8;
  v2 = *(this + 29);
  *(this + 29) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C404CC135DFLL);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  v6 = *(this + 21);
  *(this + 21) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 20);
  *(this + 20) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 19);
  *(this + 19) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 18);
  *(this + 18) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C408792568BLL);
  }

  v10 = *(this + 17);
  *(this + 17) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 16);
  *(this + 16) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40E0DB01C6);
  }

  v12 = *(this + 15);
  *(this + 15) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C408792568BLL);
  }

  v13 = *(this + 14);
  *(this + 14) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C408792568BLL);
  }

  v14 = *(this + 13);
  *(this + 13) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C40E0DB01C6);
  }

  v15 = *(this + 12);
  *(this + 12) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C406A22E0FBLL);
  }

  v16 = *(this + 11);
  *(this + 11) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 10);
  *(this + 10) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 9);
  *(this + 9) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 8);
  *(this + 8) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK::~ARI_IBISimTkEnvelopeCommandReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK::pack(AriSdk::ARI_IBISimTkEnvelopeCommandReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x114uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 9, v10, 0x18uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 11, v11, 0x2AuLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 12, v12, 0x2AuLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 13, v13, 0x18uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 14, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 15, v15, 0x2AuLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 17, v16, 1uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 18, v17, 4uLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 19, v18, 1uLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (v20 = *(this + 23), v19 == v20) || (result = AriMsg::pack(*(this + 6), 20, v19, v20 - v19, 0), !result))
                              {
                                v21 = *(this + 25);
                                if (!v21 || (v22 = *(this + 26), v21 == v22) || (result = AriMsg::pack(*(this + 6), 24, v21, v22 - v21, 0), !result))
                                {
                                  v23 = *(this + 28);
                                  if (!v23 || (result = AriMsg::pack(*(this + 6), 25, v23, 4uLL, 0), !result))
                                  {
                                    v24 = *(this + 29);
                                    if (!v24 || (result = AriMsg::pack(*(this + 6), 32, v24, 0xF9uLL, 0), !result))
                                    {
                                      result = 0;
                                      *a2 = *(this + 6);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

std::vector<int> *AriSdk::TlvArray<unsigned char,14ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xF)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 14;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 14);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961A050C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,2ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 3)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 2);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961A06FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK::ARI_IBISimTkEnvelopeCommandRspCb_SDK(AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 889487360, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 889487360, 0);
}

void AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK::ARI_IBISimTkEnvelopeCommandRspCb_SDK(AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK::~ARI_IBISimTkEnvelopeCommandRspCb_SDK(AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK *this)
{
  *this = &unk_2A1D36D00;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40289347CALL);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK::~ARI_IBISimTkEnvelopeCommandRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK::pack(AriSdk::ARI_IBISimTkEnvelopeCommandRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x3B8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK::ARI_IBISimTkExecStkCmdIndCb_SDK(AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 897679360, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 897679360, 0);
}

void AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK::ARI_IBISimTkExecStkCmdIndCb_SDK(AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK::~ARI_IBISimTkExecStkCmdIndCb_SDK(AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK *this)
{
  *this = &unk_2A1D36D38;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408792568BLL);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4096D22CEALL);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40AE305FB9);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C400452F363);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40AE305FB9);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C408792568BLL);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C400452F363);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40BDFB0063);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK::~ARI_IBISimTkExecStkCmdIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK::pack(AriSdk::ARI_IBISimTkExecStkCmdIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0xF8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 0x2AuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 9, v11, 0x29uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 10, v12, 0xF8uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 12, v13, 0x29uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 13, v14, 0xBCuLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 14, v15, 0x2AuLL, 0), !result))
                      {
                        result = 0;
                        *a2 = *(this + 6);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK::ARI_IBISimTkExecStkCmdRsp_SDK(AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 881197056, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 881197056, 1);
}

void AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK::ARI_IBISimTkExecStkCmdRsp_SDK(AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK::~ARI_IBISimTkExecStkCmdRsp_SDK(AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK *this)
{
  *this = &unk_2A1D36D70;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40789AEA99);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK::~ARI_IBISimTkExecStkCmdRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK::pack(AriSdk::ARI_IBISimTkExecStkCmdRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkImsCallControlReq_SDK::ARI_IBISimTkImsCallControlReq_SDK(AriSdk::ARI_IBISimTkImsCallControlReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 881033216, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 881033216, 0);
}

void AriSdk::ARI_IBISimTkImsCallControlReq_SDK::ARI_IBISimTkImsCallControlReq_SDK(AriSdk::ARI_IBISimTkImsCallControlReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkImsCallControlReq_SDK::~ARI_IBISimTkImsCallControlReq_SDK(AriSdk::ARI_IBISimTkImsCallControlReq_SDK *this)
{
  *this = &unk_2A1D36DA8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402DF8315BLL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkImsCallControlReq_SDK::~ARI_IBISimTkImsCallControlReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkImsCallControlReq_SDK::pack(AriSdk::ARI_IBISimTkImsCallControlReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x101uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK::ARI_IBISimTkImsCallControlRspCb_SDK(AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 889421824, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 889421824, 0);
}

void AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK::ARI_IBISimTkImsCallControlRspCb_SDK(AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK::~ARI_IBISimTkImsCallControlRspCb_SDK(AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK *this)
{
  *this = &unk_2A1D36DE0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C400452F363);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C402DF8315BLL);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK::~ARI_IBISimTkImsCallControlRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK::pack(AriSdk::ARI_IBISimTkImsCallControlRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x101uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xF8uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkInit_SDK::ARI_IBISimTkInit_SDK(AriSdk::ARI_IBISimTkInit_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 880869376, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 880869376, 1);
}

void AriSdk::ARI_IBISimTkInit_SDK::ARI_IBISimTkInit_SDK(AriSdk::ARI_IBISimTkInit_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkInit_SDK::~ARI_IBISimTkInit_SDK(AriSdk::ARI_IBISimTkInit_SDK *this)
{
  *this = &unk_2A1D36E18;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkInit_SDK::~ARI_IBISimTkInit_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkInit_SDK::pack(AriSdk::ARI_IBISimTkInit_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK::ARI_IBISimTkProactiveCmdIndCb_SDK(AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 897712128, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 897712128, 0);
}

void AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK::ARI_IBISimTkProactiveCmdIndCb_SDK(AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK::~ARI_IBISimTkProactiveCmdIndCb_SDK(AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK *this)
{
  *this = &unk_2A1D36E50;
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40F5614B1ELL);
  }

  v3 = *(this + 33);
  *(this + 33) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40693B0FD8);
  }

  v4 = *(this + 32);
  *(this + 32) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C404455CFF4);
  }

  v5 = *(this + 31);
  *(this + 31) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40153912A6);
  }

  v6 = *(this + 30);
  *(this + 30) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40E71176DALL);
  }

  v7 = *(this + 29);
  *(this + 29) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40E71176DALL);
  }

  v8 = *(this + 28);
  *(this + 28) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40E71176DALL);
  }

  v9 = *(this + 27);
  *(this + 27) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40E71176DALL);
  }

  v10 = *(this + 26);
  *(this + 26) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C408757D331);
  }

  v11 = *(this + 25);
  *(this + 25) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40B230606BLL);
  }

  v12 = *(this + 24);
  *(this + 24) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40957D8CC4);
  }

  v13 = *(this + 23);
  *(this + 23) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40A4B5082DLL);
  }

  v14 = *(this + 22);
  *(this + 22) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C40789AEA99);
  }

  v15 = *(this + 21);
  *(this + 21) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4028FCE1D9);
  }

  v16 = *(this + 20);
  *(this + 20) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C40DD741DE8);
  }

  v17 = *(this + 19);
  *(this + 19) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C40281EA1ABLL);
  }

  v18 = *(this + 18);
  *(this + 18) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C40EF5C4F84);
  }

  v19 = *(this + 17);
  *(this + 17) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C40B3435C2CLL);
  }

  v20 = *(this + 16);
  *(this + 16) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C400CB9CA2ELL);
  }

  v21 = *(this + 15);
  *(this + 15) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C405CD28F34);
  }

  v22 = *(this + 14);
  *(this + 14) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4056DB6161);
  }

  v23 = *(this + 13);
  *(this + 13) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C40BE982F58);
  }

  v24 = *(this + 12);
  *(this + 12) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C40806A7710);
  }

  v25 = *(this + 11);
  *(this + 11) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C40792A5974);
  }

  v26 = *(this + 10);
  *(this + 10) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C40A995D64BLL);
  }

  v27 = *(this + 9);
  *(this + 9) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  v28 = *(this + 8);
  *(this + 8) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK::~ARI_IBISimTkProactiveCmdIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK::pack(AriSdk::ARI_IBISimTkProactiveCmdIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x22uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x27CuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x134uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 0x1C4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x1E4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 0x134uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 0x114uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 0x11CuLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 0x118uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 0x214uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 0x224uLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 14, v18, 0x224uLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 15, v19, 8uLL, 0), !result))
                              {
                                v20 = *(this + 23);
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 16, v20, 0x110uLL, 0), !result))
                                {
                                  v21 = *(this + 24);
                                  if (!v21 || (result = AriMsg::pack(*(this + 6), 17, v21, 5uLL, 0), !result))
                                  {
                                    v22 = *(this + 25);
                                    if (!v22 || (result = AriMsg::pack(*(this + 6), 18, v22, 0x208uLL, 0), !result))
                                    {
                                      v23 = *(this + 26);
                                      if (!v23 || (result = AriMsg::pack(*(this + 6), 19, v23, 0x104uLL, 0), !result))
                                      {
                                        v24 = *(this + 27);
                                        if (!v24 || (result = AriMsg::pack(*(this + 6), 20, v24, 0x10CuLL, 0), !result))
                                        {
                                          v25 = *(this + 28);
                                          if (!v25 || (result = AriMsg::pack(*(this + 6), 21, v25, 0x10CuLL, 0), !result))
                                          {
                                            v26 = *(this + 29);
                                            if (!v26 || (result = AriMsg::pack(*(this + 6), 22, v26, 0x10CuLL, 0), !result))
                                            {
                                              v27 = *(this + 30);
                                              if (!v27 || (result = AriMsg::pack(*(this + 6), 23, v27, 0x10CuLL, 0), !result))
                                              {
                                                v28 = *(this + 31);
                                                if (!v28 || (result = AriMsg::pack(*(this + 6), 24, v28, 0x30CuLL, 0), !result))
                                                {
                                                  v29 = *(this + 32);
                                                  if (!v29 || (result = AriMsg::pack(*(this + 6), 25, v29, 0x30CuLL, 0), !result))
                                                  {
                                                    v30 = *(this + 33);
                                                    if (!v30 || (result = AriMsg::pack(*(this + 6), 26, v30, 0x21CuLL, 0), !result))
                                                    {
                                                      v31 = *(this + 34);
                                                      if (!v31 || (result = AriMsg::pack(*(this + 6), 27, v31, 0x2ECuLL, 0), !result))
                                                      {
                                                        result = 0;
                                                        *a2 = *(this + 6);
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK::ARI_IBISimTkRefreshConfirmIndCb_SDK(AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 897777664, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 897777664, 0);
}

void AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK::ARI_IBISimTkRefreshConfirmIndCb_SDK(AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK::~ARI_IBISimTkRefreshConfirmIndCb_SDK(AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK *this)
{
  *this = &unk_2A1D36E88;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK::~ARI_IBISimTkRefreshConfirmIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK::pack(AriSdk::ARI_IBISimTkRefreshConfirmIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK::ARI_IBISimTkRefreshConfirmRsp_SDK(AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 880934912, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 880934912, 1);
}

void AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK::ARI_IBISimTkRefreshConfirmRsp_SDK(AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK::~ARI_IBISimTkRefreshConfirmRsp_SDK(AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK *this)
{
  *this = &unk_2A1D36EC0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK::~ARI_IBISimTkRefreshConfirmRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK::pack(AriSdk::ARI_IBISimTkRefreshConfirmRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK::ARI_IBISimTkRefreshFcnIndCb_SDK(AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 897875968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 897875968, 0);
}

void AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK::ARI_IBISimTkRefreshFcnIndCb_SDK(AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK::~ARI_IBISimTkRefreshFcnIndCb_SDK(AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK *this)
{
  *this = &unk_2A1D36EF8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4075806E5BLL);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK::~ARI_IBISimTkRefreshFcnIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}