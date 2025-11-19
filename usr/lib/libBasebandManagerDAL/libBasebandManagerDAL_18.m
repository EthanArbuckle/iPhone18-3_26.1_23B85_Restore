void sub_297361348(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void ServerLogging::init(os_unfair_lock_s *this)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_13;
  v2[4] = this;
  os_unfair_lock_lock(this + 4);
  ___ZN13ServerLogging4initEv_block_invoke(v2);
  os_unfair_lock_unlock(this + 4);
}

void ___ZN13ServerLogging4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Init", v4, 2u);
  }

  v3 = ServerLogging::monitorSnapshotPath_sync(v1);
  *(v1 + 10) = v3;
  ServerLogging::clearScratchFolders_sync(v3);
}

NSObject *ServerLogging::monitorSnapshotPath_sync(ServerLogging *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = this + 56;
  v2 = *(this + 7);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v20.st_blksize = v4;
  *v20.st_qspare = v4;
  v20.st_birthtimespec = v4;
  *&v20.st_size = v4;
  v20.st_mtimespec = v4;
  v20.st_ctimespec = v4;
  *&v20.st_uid = v4;
  v20.st_atimespec = v4;
  *&v20.st_dev = v4;
  if (*(this + 79) >= 0)
  {
    v5 = this + 56;
  }

  else
  {
    v5 = v2;
  }

  if (stat(v5, &v20))
  {
    v6 = *(this + 3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      if (*(this + 79) < 0)
      {
        v7 = *v3;
      }

      v20.st_dev = 136315138;
      *&v20.st_mode = v7;
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was not found, so recreating it", &v20, 0xCu);
    }

    support::fs::createDir(v3, 0x1EDu, 1);
  }

  if (*(this + 79) < 0)
  {
    v8 = open(*v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_17:
      result = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = open(v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  v9 = v8;
  v10 = v8;
  global_queue = dispatch_get_global_queue(17, 0);
  v12 = dispatch_source_create(MEMORY[0x29EDCA5D8], v10, 0x21uLL, global_queue);
  if (!v12)
  {
    close(v9);
    goto LABEL_17;
  }

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_7_0;
  handler[4] = this;
  v19 = v9;
  v13 = v12;
  dispatch_source_set_event_handler(v12, handler);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 0x40000000;
  v16[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke_8;
  v16[3] = &__block_descriptor_tmp_9;
  v17 = v9;
  dispatch_source_set_cancel_handler(v13, v16);
  dispatch_activate(v13);
  result = v13;
LABEL_18:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void ServerLogging::clearScratchFolders_sync(ServerLogging *this)
{
  v1 = *MEMORY[0x29EDBD250];
  v2 = strlen(*MEMORY[0x29EDBD250]);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    if ((v2 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v2 | 7) + 1;
    }

    v4 = operator new(v5);
    __dst[1] = v3;
    v9 = v5 | 0x8000000000000000;
    __dst[0] = v4;
    goto LABEL_9;
  }

  HIBYTE(v9) = v2;
  v4 = __dst;
  if (v2)
  {
LABEL_9:
    memmove(v4, v1, v3);
  }

  *(v3 + v4) = 0;
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_8);
  capabilities::abs::logScratchPath(__dst, v7);
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29736188C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13ServerLogging24clearScratchFolders_syncEv_block_invoke()
{
  v0 = *MEMORY[0x29EDBD250];
  v1 = strlen(*MEMORY[0x29EDBD250]);
  if (v1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 >= 0x17)
  {
    if ((v1 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (v1 | 7) + 1;
    }

    v3 = operator new(v4);
    __dst[1] = v2;
    v6 = v4 | 0x8000000000000000;
    __dst[0] = v3;
    goto LABEL_9;
  }

  HIBYTE(v6) = v1;
  v3 = __dst;
  if (v1)
  {
LABEL_9:
    memmove(v3, v0, v2);
  }

  *(v2 + v3) = 0;
  support::fs::removeDirContents(__dst, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29736198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ServerLogging::backupFolders_sync(capabilities::abs *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  v7 = (a4 + 8);
  *a4 = 0;
  *(a4 + 16) = 0;
  capabilities::abs::logScratchPath(&__p, a1);
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_blksize = v8;
  *v40.st_qspare = v8;
  v40.st_birthtimespec = v8;
  *&v40.st_size = v8;
  v40.st_mtimespec = v8;
  v40.st_ctimespec = v8;
  *&v40.st_uid = v8;
  v40.st_atimespec = v8;
  *&v40.st_dev = v8;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (stat(p_p, &v40))
  {
    LODWORD(v10) = 0;
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    v12 = opendir(v11);
    v10 = v12;
    if (v12)
    {
      v13 = readdir(v12);
      closedir(v10);
      LODWORD(v10) = v13 != 0;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v10)
    {
      return;
    }
  }

  else if (!v10)
  {
    return;
  }

  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  v16 = v15 + 7;
  if (v15 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(&__p, 0, sizeof(__p));
    v18 = &__p;
    *(&__p.__r_.__value_.__s + 23) = v15 + 7;
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    __p.__r_.__value_.__l.__size_ = v15 + 7;
    __p.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v18;
  }

  v19 = *a2;
  if (v14 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  memmove(v18, v20, v15);
LABEL_29:
  strcpy(v18 + v15, "log-bb-");
  Timestamp::Timestamp(v35);
  Timestamp::asString(v35, 0, 9, v37);
  if ((v38 & 0x80u) == 0)
  {
    v21 = v37;
  }

  else
  {
    v21 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v22 = v38;
  }

  else
  {
    v22 = v37[1];
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *&v40.st_uid = *(&v23->__r_.__value_.__l + 2);
  *&v40.st_dev = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  v28 = std::string::append(&v40, v26, v27);
  v29 = v28->__r_.__value_.__r.__words[0];
  *v7 = v28->__r_.__value_.__l.__size_;
  *(v7 + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
  v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v40.st_gid);
  *a4 = v29;
  *(a4 + 23) = v30;
  if ((st_gid_high & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    operator delete(v37[0]);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  operator delete(*&v40.st_dev);
  if (v38 < 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_49:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_44:
  capabilities::abs::logScratchPath(&v40.st_dev, v32);
  support::fs::moveDirUnique(&v40, a4, &v33);
  if ((v34 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40.st_gid) & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(*&v40.st_dev);
    return;
  }

  operator delete(v33);
  if (SHIBYTE(v40.st_gid) < 0)
  {
    goto LABEL_51;
  }
}

void sub_297361C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v2 + 56);
    if (*(v2 + 79) < 0)
    {
      v4 = *v4;
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was removed", &v7, 0xCu);
  }

  dispatch_release(*(v2 + 80));
  *(v2 + 80) = 0;
  close(*(a1 + 40));
  result = ServerLogging::monitorSnapshotPath_sync(v2);
  *(v2 + 80) = result;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void initServerLogging(void)
{
  if (initServerLogging(void)::sOnce != -1)
  {
    dispatch_once(&initServerLogging(void)::sOnce, &__block_literal_global_12);
  }
}

uint64_t ___Z17initServerLoggingv_block_invoke()
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v0 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
  v0 = qword_2A1399CD8;
  if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_INFO))
  {
LABEL_4:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v0, OS_LOG_TYPE_INFO, "Initializing server logging and registering log handlers", &buf, 2u);
  }

LABEL_5:
  v1 = pthread_mutex_lock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if (qword_2A1399940)
  {
    goto LABEL_6;
  }

  capabilities::abs::logScratchPath(&buf, v1);
  v4 = strlen(kDaemonLogScratchDir);
  v5 = std::string::append(&buf, kDaemonLogScratchDir, v4);
  v15 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  memset(__p, 170, sizeof(__p));
  capabilities::abs::logSnapshotPath(__p, v5);
  v6 = operator new(0x58uLL);
  ServerLogging::ServerLogging(v6, &v15, __p);
  buf.__r_.__value_.__r.__words[0] = v6;
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__vftable = &unk_2A1E3AAA0;
  v2->__shared_weak_owners_ = 0;
  v2[1].__vftable = v6;
  buf.__r_.__value_.__r.__words[0] = 0;
  v8 = *(v6 + 1);
  if (!v8)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    std::__shared_weak_count::__release_weak(v8);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_15:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

LABEL_16:
  if (buf.__r_.__value_.__r.__words[0])
  {
    ServerLogging::~ServerLogging(buf.__r_.__value_.__l.__data_);
    operator delete(v9);
  }

  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 0x40000000;
  buf.__r_.__value_.__r.__words[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v17 = &__block_descriptor_tmp_13;
  v18 = v6;
  os_unfair_lock_lock(v6 + 4);
  (buf.__r_.__value_.__r.__words[2])(&buf);
  os_unfair_lock_unlock(v6 + 4);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      v10 = off_2A1399948;
      qword_2A1399940 = v6;
      off_2A1399948 = v2;
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  v10 = off_2A1399948;
  qword_2A1399940 = v6;
  off_2A1399948 = v2;
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_6:
  v2 = off_2A1399948;
  if (off_2A1399948)
  {
LABEL_25:
    v3 = 0;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_26;
  }

  v3 = 1;
LABEL_26:
  v11 = pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if ((v3 & 1) != 0 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return abm::debug::registerLogHandlers(v11);
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return abm::debug::registerLogHandlers(v13);
}

void sub_297362200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](&a23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t ctu::cf::plist_adapter::set<std::string>(int a1, uint64_t a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, a3);
  v4 = ctu::cf::plist_adapter::set<std::string>();
  MEMORY[0x29C26DF80](&v6);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v4;
}

uint64_t ctu::cf::plist_adapter::set<std::string>()
{
  v0 = *MEMORY[0x29EDB8ED8];
  ctu::cf::convert_copy();
  return 0;
}

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ServerLogging::~ServerLogging(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297433799)
  {
    if (((v2 & 0x8000000297433799 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297433799))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297433799 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

ServerLogging **std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](ServerLogging **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    ServerLogging::~ServerLogging(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy, &ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_10)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_10 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) == 0)
  {
    v3 = capabilities::radio::initium(v2);
    if ((v3 & 1) == 0)
    {
      capabilities::radio::maverick(v3);
    }
  }

  if (!qword_2A1399E68)
  {
    qword_2A1399E68 = os_log_create("com.apple.telephony.abm", "bbu");
  }

  return MEMORY[0x2A1C6CFB8](0, abm::debug::handleDebugPrintBBU);
}

void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  if (a2)
  {
    v6 = "misc";
  }

  else
  {
    v6 = "send";
  }

  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  ctu::assign();
  v7 = _MergedGlobals_10;
  if (_MergedGlobals_10 && os_log_type_enabled(_MergedGlobals_10, OS_LOG_TYPE_DEBUG))
  {
    v9 = "recv";
    if (a2 != 1)
    {
      v9 = v6;
    }

    v10 = __p;
    *buf = 67109634;
    if (SHIBYTE(__p[2]) < 0)
    {
      v10 = __p[0];
    }

    v13 = a4;
    v14 = 2080;
    v15 = v9;
    v16 = 2080;
    v17 = v10;
    _os_log_debug_impl(&dword_297288000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_7;
    }
  }

  else if (SHIBYTE(__p[2]) < 0)
  {
LABEL_7:
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_2973628F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v6;
  v29[8] = v6;
  v29[5] = v6;
  v29[6] = v6;
  v29[3] = v6;
  v29[4] = v6;
  v29[1] = v6;
  v29[2] = v6;
  v29[0] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  *__p = v6;
  v23 = v6;
  v24 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v7 = MEMORY[0x29C26EA50](&v22, a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = strlen(a3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v16 = *(&v25 + 1);
    }

    v17 = v25;
    v14 = v16 - v25;
    if ((v16 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_15;
    }

    v17 = *(&v23 + 1);
    v14 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_14:
    v10 = memmove(v15, v17, v14);
  }

LABEL_15:
  *(v15 + v14) = 0;
  v19 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v19 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v10, v11, v12, v13, v19);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x29C26EC90](v29);
}

void sub_297362BBC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C26EC90](va);
  _Unwind_Resume(a1);
}

uint64_t abm::debug::handleDebugPrint(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[1] = v8;
  v42[2] = v8;
  v42[0] = v8;
  ctu::LogMessageBuffer::LogMessageBuffer(v42);
  if (a2 && *a2)
  {
    v9 = MEMORY[0x29C26E350](v42, a2);
    MEMORY[0x29C26E350](v9, ": ");
  }

  MEMORY[0x29C26DEE0](&v40, a3, a4);
  ctu::operator<<();
  v10 = MEMORY[0x29C26DF00](&v40);
  ctu::Clock::now_in_nanoseconds(v10);
  v11 = operator new(0x60uLL);
  v12 = abm::debug::kLogDomainMap[a1];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    v39 = v16 | 0x8000000000000000;
    __p[0] = v15;
    goto LABEL_12;
  }

  HIBYTE(v39) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_12:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  MEMORY[0x29C26DEC0](v42);
  ctu::LogMessageBuffer::takeMetadata(v42);
  ctu::LogMessage::LogMessage();
  v40 = v11;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_2A1E3AB00;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v11;
  v41 = v17;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v18;
      size = v19;
      goto LABEL_18;
    }
  }

  data = v11[2].__r_.__value_.__l.__data_;
  size = v11[2].__r_.__value_.__l.__size_;
LABEL_18:
  v22 = data + size;
  v23 = memchr(data, 10, size);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == v22 || (v25 = v24 + 1, v24 + 1 == v22))
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v28 = *v25;
      if (v28 != 10)
      {
        *v24++ = v28;
      }

      ++v25;
    }

    while (v25 != v22);
    LOBYTE(v19) = *(&v11[2].__r_.__value_.__s + 23);
    if ((v19 & 0x80) == 0)
    {
LABEL_24:
      v26 = v18 + v19;
      v27 = v24 - v18;
      if (v19 >= (v24 - v18))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v30 = v11[2].__r_.__value_.__l.__data_;
  v29 = v11[2].__r_.__value_.__l.__size_;
  v26 = &v30[v29];
  v27 = v24 - v30;
  if (v29 < v24 - v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v26 - v24 != -1)
  {
    std::string::__erase_external_with_move(v18, v27, v26 - v24);
    goto LABEL_35;
  }

  if ((v19 & 0x80) == 0)
  {
    *(&v11[2].__r_.__value_.__s + 23) = v27 & 0x7F;
    v18->__r_.__value_.__s.__data_[v27] = 0;
LABEL_35:
    if ((a1 - 1) < 2)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  v34 = v11[2].__r_.__value_.__l.__data_;
  v11[2].__r_.__value_.__l.__size_ = v27;
  v34[v27] = 0;
  if ((a1 - 1) < 2)
  {
    goto LABEL_49;
  }

LABEL_36:
  if (a1)
  {
    v31 = qword_2A1399E68;
    if (qword_2A1399E68 && os_log_type_enabled(qword_2A1399E68, OS_LOG_TYPE_DEFAULT))
    {
      v33 = &v40[2];
      if (SHIBYTE(v40[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v33 = v33->__words[0];
      }

      *buf = 136315138;
      v45 = v33;
      goto LABEL_47;
    }
  }

  else
  {
    v31 = _MergedGlobals_10;
    if (_MergedGlobals_10 && os_log_type_enabled(_MergedGlobals_10, OS_LOG_TYPE_DEFAULT))
    {
      v32 = &v40[2];
      if (SHIBYTE(v40[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v32 = v32->__words[0];
      }

      *buf = 136315138;
      v45 = v32;
LABEL_47:
      _os_log_impl(&dword_297288000, v31, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

LABEL_49:
  v35 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  result = MEMORY[0x29C26DF00](v42);
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297433871)
  {
    if (((v2 & 0x8000000297433871 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297433871))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297433871 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t support::fs::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "_wireless");
  }

  else if (result)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "mobile");
  }

  return result;
}

uint64_t support::fs::updateOwner(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        support::fs::readDir(v5, &v58);
        v20 = v58;
        v54 = v59;
        if (v58 == v59)
        {
          updated = 0;
          if (v58)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v58 + 24);
        while (1)
        {
          memset(&v57, 170, sizeof(v57));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v57, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v57.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v57.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = *(v5 + 23);
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          v29 = *v5;
          if (v24 >= 0)
          {
            v30 = v5;
          }

          else
          {
            v30 = *v5;
          }

          memmove(p_dst, v30, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v57;
          }

          else
          {
            v31 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__dst, v31, size);
          v34 = *&v33->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v35 == 1)
              {
                if (v57.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v35 == 2 && LOWORD(v57.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v57.__r_.__value_.__l.__size_ == 1)
          {
            if (*v57.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v57.__r_.__value_.__l.__size_ == 2 && *v57.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v36;
          *__dst.st_qspare = v36;
          __dst.st_birthtimespec = v36;
          *&__dst.st_size = v36;
          __dst.st_mtimespec = v36;
          __dst.st_ctimespec = v36;
          *&__dst.st_uid = v36;
          __dst.st_atimespec = v36;
          *&__dst.st_dev = v36;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v47 = &__p) : (v47 = __p.__r_.__value_.__r.__words[0]), (v48 = opendir(v47), (v49 = v48) == 0) || (v50 = readdir(v48), closedir(v49), !v50)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p.__r_.__value_.__r.__words[0];
            }

            v39 = strlen(v38);
            if (v39 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v40 = v39;
            if (v39 >= 0x17)
            {
              if ((v39 | 7) == 0x17)
              {
                v42 = 25;
              }

              else
              {
                v42 = (v39 | 7) + 1;
              }

              v41 = operator new(v42);
              __dst.st_ino = v40;
              *&__dst.st_uid = v42 | 0x8000000000000000;
              *&__dst.st_dev = v41;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v39;
              v41 = &__dst;
              if (!v39)
              {
LABEL_84:
                v41[v40] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v44 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v45 = &__dst;
                }

                else
                {
                  v45 = *&__dst.st_dev;
                }

                updated = chown(v45, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v46 = v44;
LABEL_89:
                  operator delete(v46);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v41, v38, v40);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = __p;
          }

          updated = support::fs::updateOwner(&v55, a2, a3);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            v46 = v55.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v57.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v54)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v58;
            if (!v58)
            {
              return updated;
            }

LABEL_108:
            v51 = v59;
            v15 = v20;
            if (v59 != v20)
            {
              do
              {
                v52 = *(v51 - 1);
                v51 -= 3;
                if (v52 < 0)
                {
                  operator delete(*v51);
                }
              }

              while (v51 != v20);
              v15 = v58;
            }

            v59 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::isDir(const char *a1)
{
  v1 = a1;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v2;
  *v7.st_qspare = v2;
  v7.st_birthtimespec = v2;
  *&v7.st_size = v2;
  v7.st_mtimespec = v2;
  v7.st_ctimespec = v2;
  *&v7.st_uid = v2;
  v7.st_atimespec = v2;
  *&v7.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v7))
  {
    return 0;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  result = opendir(v4);
  if (result)
  {
    v5 = result;
    v6 = readdir(result);
    closedir(v5);
    return (v6 != 0);
  }

  return result;
}

BOOL support::fs::chown(const char *a1, uid_t a2, gid_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chown(a1, a2, a3) == 0;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            v10 = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        *(a2 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_297363A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_12;
  }

  HIBYTE(__p[2]) = 6;
  strcpy(__p, "mobile");
  v5 = getpwnam(__p);
  if (!v5)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_2A1399E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E78))
    {
      qword_2A1399E80 = 0;
      qword_2A1399E88 = 0;
      __cxa_guard_release(&qword_2A1399E78);
    }

    if (_MergedGlobals_11 != -1)
    {
      dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
    }

    v7 = qword_2A1399E88;
    if (os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
LABEL_11:
      operator delete(__p[0]);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

LABEL_4:
  *a2 = v5->pw_uid;
  *a3 = v5->pw_gid;
  result = 1;
LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL support::fs::writeToCompletion(support::fs *this, char *__buf, size_t __nbyte)
{
  v4 = this;
  do
  {
    v5 = __nbyte;
    if (!__nbyte)
    {
      break;
    }

    v6 = write(v4, __buf, __nbyte);
    __nbyte = v5 - v6;
    __buf += v6;
  }

  while ((v6 & 0x8000000000000000) == 0);
  return v5 == 0;
}

BOOL support::fs::writeToCompletion(FILE *__stream, __sFILE *__ptr, size_t __nitems)
{
  while (1)
  {
    v5 = __nitems;
    if (!__nitems)
    {
      break;
    }

    v6 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __nitems = v5 - v6;
    __ptr = (__ptr + v6);
    if (!v6)
    {
      return v5 == 0;
    }
  }

  fflush(__stream);
  return 1;
}

uint64_t support::fs::openFile(const char *a1, int a2, uint64_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, a2, a3);
}

BOOL support::fs::closeFile(support::fs *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while (v2 && *__error() == 4);
  return v2 == 0;
}

BOOL support::fs::copyFile(const char *a1, const char *a2, int a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = strlen(v6);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *&__dst[8] = v8;
    *&__dst[16] = v10 | 0x8000000000000000;
    *__dst = v9;
    goto LABEL_12;
  }

  __dst[23] = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_12:
    memmove(v9, v6, v8);
  }

  v9[v8] = 0;
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v12 = open(v11, 0, 420);
  v13 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    if ((atomic_load_explicit(&qword_2A1399E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E78))
    {
      qword_2A1399E80 = 0;
      qword_2A1399E88 = 0;
      __cxa_guard_release(&qword_2A1399E78);
    }

    if (_MergedGlobals_11 == -1)
    {
      v18 = qword_2A1399E88;
      if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v19 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
      v18 = qword_2A1399E88;
      if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }

    if (a1[23] >= 0)
    {
      v31 = a1;
    }

    else
    {
      v31 = *a1;
    }

    *__dst = 136315138;
    *&__dst[4] = v31;
    _os_log_error_impl(&dword_297288000, v18, OS_LOG_TYPE_ERROR, "Failed to open the source file %s", __dst, 0xCu);
    goto LABEL_29;
  }

  operator delete(*__dst);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&__dst[8] = v16;
    *&__dst[16] = v20 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_34;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_34:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  if (__dst[23] >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = *__dst;
  }

  v22 = open(v21, 1541, 420);
  v23 = v22;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_40:
    memset(__dst, 170, sizeof(__dst));
    v24 = read(v13, __dst, 0x400uLL);
    if (v24 < 1)
    {
LABEL_46:
      v19 = v24 == 0;
      if (!v24 && a3)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[112] = v27;
        *&__dst[128] = v27;
        *&__dst[80] = v27;
        *&__dst[96] = v27;
        *&__dst[48] = v27;
        *&__dst[64] = v27;
        *&__dst[16] = v27;
        *&__dst[32] = v27;
        *__dst = v27;
        if (fstat(v13, __dst))
        {
          v19 = 0;
        }

        else
        {
          v19 = fchmod(v23, *&__dst[4]) == 0;
        }
      }
    }

    else
    {
      v25 = __dst;
      do
      {
        while (!v24)
        {
          memset(__dst, 170, sizeof(__dst));
          v24 = read(v13, __dst, 0x400uLL);
          v25 = __dst;
          if (v24 <= 0)
          {
            goto LABEL_46;
          }
        }

        v26 = write(v23, v25, v24);
        v24 -= v26;
        v25 += v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
      v19 = 0;
    }

      ;
    }

    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A1399E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E78))
  {
    qword_2A1399E80 = 0;
    qword_2A1399E88 = 0;
    __cxa_guard_release(&qword_2A1399E78);
  }

  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
    v28 = qword_2A1399E88;
    if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

LABEL_67:
    if (a2[23] >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    *__dst = 136315138;
    *&__dst[4] = v32;
    _os_log_error_impl(&dword_297288000, v28, OS_LOG_TYPE_ERROR, "Failed to open the destination file %s", __dst, 0xCu);
    goto LABEL_54;
  }

  v28 = qword_2A1399E88;
  if (os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_67;
  }

LABEL_54:
  v19 = 0;
LABEL_58:
    ;
  }

LABEL_60:
  v29 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_297364260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::loadFile(uint64_t *a1, char **a2)
{
  v19[89] = *MEMORY[0x29EDCA608];
  memset(v19, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v19, a1);
  if (v19[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v19[88], std::istream::seekg(), v4) && !*(&v19[4] + *(v19[0] - 24)))
  {
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v4 - v10;
    if (v4 <= v10)
    {
      if (v4 < v10)
      {
        a2[1] = &v9[v4];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v4 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v4)
        {
          v14 = v4;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v4 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v4];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    v18 = *a2;
    std::istream::read();
    v5 = v19[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v19[0] = *MEMORY[0x29EDC9518];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C26E950](&v19[2]);
  std::istream::~istream();
  MEMORY[0x29C26EC90](&v19[53]);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

BOOL support::fs::getFileSize(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v6;
    std::istream::seekg();
  }

  result = v2 != 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v9[89] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    memset(v9, 170, 0x240uLL);
    std::ifstream::basic_ifstream(v9, a1);
    v5 = v9[17] != 0;
    if (v9[17])
    {
      std::istream::tellg();
      std::istream::seekg();
      std::istream::tellg();
      *a2 = v9[88];
      std::istream::seekg();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v9 + *(v9[0] - 24)), *(&v9[4] + *(v9[0] - 24)) | 4);
      }
    }

    v9[0] = *MEMORY[0x29EDC9518];
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
    MEMORY[0x29C26E950](&v9[2]);
    std::istream::~istream();
    MEMORY[0x29C26EC90](&v9[53]);
    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v5 = 0;
    v8 = *MEMORY[0x29EDCA608];
  }

  return v5;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x29EDC9518];
  v3 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C26E950](a1 + 2);
  std::istream::~istream();
  MEMORY[0x29C26EC90](a1 + 53);
  return a1;
}

uint64_t support::fs::loadFile(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fseek(v3, 0, 2) || (v6 = MEMORY[0x29C26F200](v4), v6 == -1))
  {
    v5 = 0;
  }

  else
  {
    v7 = v6;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v7 - v10;
    if (v7 <= v10)
    {
      if (v7 < v10)
      {
        a2[1] = &v9[v7];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v7 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = v7;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v7 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v7];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    rewind(v4);
    v18 = *a2;
    v5 = 1;
    fread(v18, v7, 1uLL, v4);
  }

  fclose(v4);
  return v5;
}

BOOL support::fs::fileExists(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v3) == 0;
}

void support::fs::createUniqueFilename(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v230 = v3;
  v228 = v3;
  v229 = v3;
  *&v227[0].__locale_ = v3;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v227, "^([/_\\-[:alnum:]]*)(.*)", 0);
  memset(&v226, 170, sizeof(v226));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, *a1, *(a1 + 8));
  }

  else
  {
    v226 = *a1;
  }

  v4 = 0;
  v213 = a1;
  v223 = &v233[24];
  while (1)
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v231.st_blksize = v5;
    *v231.st_qspare = v5;
    v231.st_birthtimespec = v5;
    *&v231.st_size = v5;
    v231.st_mtimespec = v5;
    v231.st_ctimespec = v5;
    *&v231.st_uid = v5;
    v231.st_atimespec = v5;
    *&v231.st_dev = v5;
    if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v226;
    }

    else
    {
      v6 = v226.__r_.__value_.__r.__words[0];
    }

    if (stat(v6, &v231))
    {
      *a2 = v226;
      goto LABEL_384;
    }

    if (!std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a1, v227, 0))
    {
      break;
    }

    v7 = v4 + 1;
    memset(__p, 170, 24);
    std::to_string(&v232, v7);
    v8 = std::string::insert(&v232, 0, "$1-", 3uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    *&v231.st_uid = *(&v8->__r_.__value_.__l + 2);
    *&v231.st_dev = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    st_gid_high = SHIBYTE(v231.st_gid);
    v214 = v7;
    if ((SHIBYTE(v231.st_gid) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v231.st_gid) - 21) >= 2)
      {
        v21 = &v231;
        *(&v231.st_dev + SHIBYTE(v231.st_gid)) = 12836;
        v22 = st_gid_high + 2;
        if (SHIBYTE(v231.st_gid) < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v11 = SHIBYTE(v231.st_gid) + 2;
      v12 = &v231;
      v13 = 22;
LABEL_17:
      v14 = 2 * v13;
      if (v11 > 2 * v13)
      {
        v14 = v11;
      }

      if ((v14 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v14 | 7) + 1;
      }

      if (v14 >= 0x17)
      {
        v16 = v15;
      }

      else
      {
        v16 = 23;
      }

      v17 = v13 == 22;
      goto LABEL_26;
    }

    st_gid_high = v231.st_ino;
    v13 = (*&v231.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v13 - v231.st_ino >= 2)
    {
      v21 = *&v231.st_dev;
      *(*&v231.st_dev + v231.st_ino) = 12836;
      v22 = st_gid_high + 2;
      if (SHIBYTE(v231.st_gid) < 0)
      {
LABEL_34:
        v231.st_ino = v22;
        goto LABEL_35;
      }

LABEL_32:
      HIBYTE(v231.st_gid) = v22 & 0x7F;
LABEL_35:
      v20 = v21 + v22;
      goto LABEL_36;
    }

    v11 = v231.st_ino + 2;
    if (0x7FFFFFFFFFFFFFF7 - (*&v231.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v231.st_ino + 2 - v13)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = *&v231.st_dev;
    if (v13 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_17;
    }

    v17 = 0;
    v16 = 0x7FFFFFFFFFFFFFF7;
LABEL_26:
    v18 = operator new(v16);
    v19 = v18;
    if (st_gid_high)
    {
      memmove(v18, v12, st_gid_high);
    }

    *&v19[st_gid_high] = 12836;
    if (!v17)
    {
      operator delete(v12);
    }

    v231.st_ino = v11;
    *&v231.st_uid = v16 | 0x8000000000000000;
    *&v231.st_dev = v19;
    v20 = &v19[v11];
    a1 = v213;
LABEL_36:
    *v20 = 0;
    *__p = *&v231.st_dev;
    __p[2] = *&v231.st_uid;
    memset(&v231, 0, 24);
    if ((v233[7] & 0x80000000) != 0)
    {
      operator delete(v232);
    }

    memset(&v224, 0, sizeof(v224));
    v23 = *(a1 + 23);
    if (v23 >= 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 23);
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v26 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v26 = __p[0];
    }

    __s = v26;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v231.st_gen = v27;
    v231.st_size = 0xAAAAAAAAAAAAAAAALL;
    v231.st_ctimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *(&v231.st_rdev + 1) = -1431655766;
    *&v231.st_dev = v24;
    v231.st_ino = v24 + v25;
    *&v231.st_uid = v227;
    v231.st_rdev = 0;
    memset(&v231.st_birthtimespec, 0, 17);
    memset(&v231.st_blocks, 0, 17);
    LOBYTE(v231.st_qspare[0]) = 0;
    v231.st_qspare[1] = 0;
    memset(&v231.st_atimespec, 0, 40);
    v28 = v223;
    *(v223 + 2) = v27;
    v28[3] = v27;
    *v28 = v27;
    v28[1] = v27;
    v234 = 0uLL;
    v235 = 0;
    v236 = 0uLL;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v232 = 0u;
    memset(v233, 0, 25);
    std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v227, v24, (v24 + v25), &v232, 0);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v231.st_atimespec, v24, (v24 + v25), &v232, 0);
    if (v232)
    {
      *(&v232 + 1) = v232;
      operator delete(v232);
    }

    tv_sec = v231.st_atimespec.tv_sec;
    if (v231.st_atimespec.tv_nsec == v231.st_atimespec.tv_sec)
    {
      if (!v25)
      {
        goto LABEL_373;
      }

      while (2)
      {
        while (2)
        {
          first = v24->first;
          v201 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
            {
              *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
              v199 = &v224 + v201;
              *v199 = first;
              v199[1] = 0;
              v24 = (v24 + 1);
              if (!--v25)
              {
                goto LABEL_372;
              }

              continue;
            }

            v202 = &v224;
            size = 22;
LABEL_353:
            if (size + 1 > 2 * size)
            {
              v204 = size + 1;
            }

            else
            {
              v204 = 2 * size;
            }

            if ((v204 | 7) == 0x17)
            {
              v205 = 25;
            }

            else
            {
              v205 = (v204 | 7) + 1;
            }

            if (v204 >= 0x17)
            {
              v206 = v205;
            }

            else
            {
              v206 = 23;
            }

            v207 = size == 22;
            goto LABEL_363;
          }

          break;
        }

        size = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == size)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v202 = v224.__r_.__value_.__r.__words[0];
          if (size < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_353;
          }

          v207 = 0;
          v206 = 0x7FFFFFFFFFFFFFF7;
LABEL_363:
          v208 = operator new(v206);
          v209 = v208;
          if (size)
          {
            memmove(v208, v202, size);
          }

          if (!v207)
          {
            operator delete(v202);
          }

          v224.__r_.__value_.__r.__words[0] = v209;
          v224.__r_.__value_.__r.__words[2] = v206 | 0x8000000000000000;
        }

        else
        {
          size = v224.__r_.__value_.__l.__size_;
          v209 = v224.__r_.__value_.__r.__words[0];
        }

        v224.__r_.__value_.__l.__size_ = size + 1;
        v210 = (v209 + size);
        *v210 = first;
        v210[1] = 0;
        v24 = (v24 + 1);
        if (!--v25)
        {
LABEL_372:
          tv_sec = v231.st_atimespec.tv_sec;
          goto LABEL_373;
        }

        continue;
      }
    }

    v219 = strlen(__s);
    v30 = &__s[v219];
    do
    {
      v31 = v231.st_birthtimespec.tv_sec;
      tv_nsec = v231.st_birthtimespec.tv_nsec;
      while (v31 != tv_nsec)
      {
        v36 = *v31;
        if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
          {
            v33 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
            v34 = &v224;
            goto LABEL_54;
          }

          v37 = &v224;
          v33 = 22;
LABEL_62:
          if (v33 + 1 > 2 * v33)
          {
            v38 = v33 + 1;
          }

          else
          {
            v38 = 2 * v33;
          }

          if ((v38 | 7) == 0x17)
          {
            v39 = 25;
          }

          else
          {
            v39 = (v38 | 7) + 1;
          }

          if (v38 >= 0x17)
          {
            v40 = v39;
          }

          else
          {
            v40 = 23;
          }

          v41 = v33 == 22;
          goto LABEL_72;
        }

        v33 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == v33)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v37 = v224.__r_.__value_.__r.__words[0];
          if (v33 < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_62;
          }

          v41 = 0;
          v40 = 0x7FFFFFFFFFFFFFF7;
LABEL_72:
          v42 = operator new(v40);
          v34 = v42;
          if (v33)
          {
            memmove(v42, v37, v33);
          }

          if (!v41)
          {
            operator delete(v37);
          }

          v224.__r_.__value_.__r.__words[0] = v34;
          v224.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
          goto LABEL_78;
        }

        v33 = v224.__r_.__value_.__l.__size_;
        v34 = v224.__r_.__value_.__r.__words[0];
LABEL_78:
        v224.__r_.__value_.__l.__size_ = v33 + 1;
LABEL_54:
        v35 = v34 + v33;
        *v35 = v36;
        v35[1] = 0;
        ++v31;
      }

      if (v219)
      {
        v43 = __s;
        while (1)
        {
          v47 = *v43;
          v48 = (v43 + 1);
          if (v47 != 36 || v48 == v30)
          {
            goto LABEL_89;
          }

          v51 = *v48;
          if (v51 <= 0x26)
          {
            if (v51 == 36)
            {
              ++v43;
              goto LABEL_89;
            }

            if (v51 == 38)
            {
              v52 = *v231.st_atimespec.tv_sec;
              v53 = *(v231.st_atimespec.tv_sec + 8);
              if (*v231.st_atimespec.tv_sec == v53)
              {
                goto LABEL_213;
              }

              while (1)
              {
                while (1)
                {
                  v55 = *v52;
                  v56 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                  {
                    break;
                  }

                  if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                  {
                    v57 = &v224;
                    v58 = 22;
                    goto LABEL_104;
                  }

                  *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                  v54 = &v224 + v56;
                  *v54 = v55;
                  v54[1] = 0;
                  if (++v52 == v53)
                  {
                    goto LABEL_213;
                  }
                }

                v58 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v224.__r_.__value_.__l.__size_ == v58)
                {
                  if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    goto LABEL_388;
                  }

                  v57 = v224.__r_.__value_.__r.__words[0];
                  if (v58 >= 0x3FFFFFFFFFFFFFF3)
                  {
                    v62 = 0;
                    v61 = 0x7FFFFFFFFFFFFFF7;
                  }

                  else
                  {
LABEL_104:
                    if (v58 + 1 > 2 * v58)
                    {
                      v59 = v58 + 1;
                    }

                    else
                    {
                      v59 = 2 * v58;
                    }

                    if ((v59 | 7) == 0x17)
                    {
                      v60 = 25;
                    }

                    else
                    {
                      v60 = (v59 | 7) + 1;
                    }

                    if (v59 >= 0x17)
                    {
                      v61 = v60;
                    }

                    else
                    {
                      v61 = 23;
                    }

                    v62 = v58 == 22;
                  }

                  v63 = operator new(v61);
                  v64 = v63;
                  if (v58)
                  {
                    memmove(v63, v57, v58);
                  }

                  if (!v62)
                  {
                    operator delete(v57);
                  }

                  v224.__r_.__value_.__r.__words[0] = v64;
                  v224.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
                  goto LABEL_120;
                }

                v58 = v224.__r_.__value_.__l.__size_;
                v64 = v224.__r_.__value_.__r.__words[0];
LABEL_120:
                v224.__r_.__value_.__l.__size_ = v58 + 1;
                v65 = (v64 + v58);
                *v65 = v55;
                v65[1] = 0;
                if (++v52 == v53)
                {
                  goto LABEL_213;
                }
              }
            }

LABEL_174:
            LODWORD(v85) = v51 - 48;
            if (v85 <= 9)
            {
              v85 = v85;
              if (v43 + 2 != v30)
              {
                v86 = v43[2];
                v87 = v86 - 48;
                v88 = v86 + 10 * v85 - 48;
                if (v87 > 9)
                {
                  v48 = (v43 + 1);
                }

                else
                {
                  v85 = v88;
                  v48 = (v43 + 2);
                }
              }

              v89 = v231.st_atimespec.tv_sec + 24 * v85;
              v90 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3) > v85;
              p_tv_nsec = &v231.st_mtimespec.tv_nsec;
              if (v90)
              {
                p_tv_nsec = v89;
              }

              v92 = *p_tv_nsec;
              p_st_ctimespec = (v89 + 8);
              if (!v90)
              {
                p_st_ctimespec = &v231.st_ctimespec;
              }

              v94 = p_st_ctimespec->tv_sec;
              if (v92 == p_st_ctimespec->tv_sec)
              {
                goto LABEL_213;
              }

              while (1)
              {
                while (1)
                {
                  v96 = *v92;
                  v97 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                  {
                    break;
                  }

                  if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                  {
                    v98 = &v224;
                    v99 = 22;
                    goto LABEL_192;
                  }

                  *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                  v95 = &v224 + v97;
                  *v95 = v96;
                  v95[1] = 0;
                  if (++v92 == v94)
                  {
                    goto LABEL_213;
                  }
                }

                v99 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v224.__r_.__value_.__l.__size_ == v99)
                {
                  if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    goto LABEL_388;
                  }

                  v98 = v224.__r_.__value_.__r.__words[0];
                  if (v99 >= 0x3FFFFFFFFFFFFFF3)
                  {
                    v103 = 0;
                    v102 = 0x7FFFFFFFFFFFFFF7;
                  }

                  else
                  {
LABEL_192:
                    if (v99 + 1 > 2 * v99)
                    {
                      v100 = v99 + 1;
                    }

                    else
                    {
                      v100 = 2 * v99;
                    }

                    if ((v100 | 7) == 0x17)
                    {
                      v101 = 25;
                    }

                    else
                    {
                      v101 = (v100 | 7) + 1;
                    }

                    if (v100 >= 0x17)
                    {
                      v102 = v101;
                    }

                    else
                    {
                      v102 = 23;
                    }

                    v103 = v99 == 22;
                  }

                  v104 = operator new(v102);
                  v105 = v104;
                  if (v99)
                  {
                    memmove(v104, v98, v99);
                  }

                  if (!v103)
                  {
                    operator delete(v98);
                  }

                  v224.__r_.__value_.__r.__words[0] = v105;
                  v224.__r_.__value_.__r.__words[2] = v102 | 0x8000000000000000;
                  goto LABEL_208;
                }

                v99 = v224.__r_.__value_.__l.__size_;
                v105 = v224.__r_.__value_.__r.__words[0];
LABEL_208:
                v224.__r_.__value_.__l.__size_ = v99 + 1;
                v106 = (v105 + v99);
                *v106 = v96;
                v106[1] = 0;
                if (++v92 == v94)
                {
                  goto LABEL_213;
                }
              }
            }

LABEL_89:
            if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
            {
              v44 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v224.__r_.__value_.__l.__size_ != v44)
              {
                v44 = v224.__r_.__value_.__l.__size_;
                v45 = v224.__r_.__value_.__r.__words[0];
LABEL_172:
                v224.__r_.__value_.__l.__size_ = v44 + 1;
                goto LABEL_83;
              }

              if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
LABEL_388:
                std::string::__throw_length_error[abi:ne200100]();
              }

              v50 = v224.__r_.__value_.__r.__words[0];
              if (v44 >= 0x3FFFFFFFFFFFFFF3)
              {
                v69 = 0;
                v68 = 0x7FFFFFFFFFFFFFF7;
LABEL_136:
                v70 = operator new(v68);
                v45 = v70;
                if (v44)
                {
                  memmove(v70, v50, v44);
                }

                if (!v69)
                {
                  operator delete(v50);
                }

                v224.__r_.__value_.__r.__words[0] = v45;
                v224.__r_.__value_.__r.__words[2] = v68 | 0x8000000000000000;
                goto LABEL_172;
              }

LABEL_126:
              if (v44 + 1 > 2 * v44)
              {
                v66 = v44 + 1;
              }

              else
              {
                v66 = 2 * v44;
              }

              if ((v66 | 7) == 0x17)
              {
                v67 = 25;
              }

              else
              {
                v67 = (v66 | 7) + 1;
              }

              if (v66 >= 0x17)
              {
                v68 = v67;
              }

              else
              {
                v68 = 23;
              }

              v69 = v44 == 22;
              goto LABEL_136;
            }

            if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
            {
              v50 = &v224;
              v44 = 22;
              goto LABEL_126;
            }

            v44 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
            v45 = &v224;
LABEL_83:
            v46 = v45 + v44;
            *v46 = v47;
            v46[1] = 0;
            if (++v43 == v30)
            {
              goto LABEL_241;
            }

            continue;
          }

          if (v51 != 39)
          {
            if (v51 != 96)
            {
              goto LABEL_174;
            }

            v71 = v231.st_birthtimespec.tv_sec;
            v72 = v231.st_birthtimespec.tv_nsec;
            if (v231.st_birthtimespec.tv_sec == v231.st_birthtimespec.tv_nsec)
            {
              goto LABEL_213;
            }

            while (1)
            {
              while (1)
              {
                v74 = *v71;
                v75 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                {
                  v76 = &v224;
                  v77 = 22;
                  goto LABEL_152;
                }

                *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                v73 = &v224 + v75;
                *v73 = v74;
                v73[1] = 0;
                if (++v71 == v72)
                {
                  goto LABEL_213;
                }
              }

              v77 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v224.__r_.__value_.__l.__size_ == v77)
              {
                if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  goto LABEL_388;
                }

                v76 = v224.__r_.__value_.__r.__words[0];
                if (v77 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v81 = 0;
                  v80 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_152:
                  if (v77 + 1 > 2 * v77)
                  {
                    v78 = v77 + 1;
                  }

                  else
                  {
                    v78 = 2 * v77;
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
                    v80 = v79;
                  }

                  else
                  {
                    v80 = 23;
                  }

                  v81 = v77 == 22;
                }

                v82 = operator new(v80);
                v83 = v82;
                if (v77)
                {
                  memmove(v82, v76, v77);
                }

                if (!v81)
                {
                  operator delete(v76);
                }

                v224.__r_.__value_.__r.__words[0] = v83;
                v224.__r_.__value_.__r.__words[2] = v80 | 0x8000000000000000;
                goto LABEL_168;
              }

              v77 = v224.__r_.__value_.__l.__size_;
              v83 = v224.__r_.__value_.__r.__words[0];
LABEL_168:
              v224.__r_.__value_.__l.__size_ = v77 + 1;
              v84 = (v83 + v77);
              *v84 = v74;
              v84[1] = 0;
              if (++v71 == v72)
              {
                goto LABEL_213;
              }
            }
          }

          st_blocks = v231.st_blocks;
          v108 = *&v231.st_blksize;
          if (v231.st_blocks != *&v231.st_blksize)
          {
            break;
          }

LABEL_213:
          v43 = (v48 + 1);
          if (v48 + 1 == v30)
          {
            goto LABEL_241;
          }
        }

        while (2)
        {
          while (2)
          {
            v110 = *st_blocks;
            v111 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
              {
                *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                v109 = &v224 + v111;
                *v109 = v110;
                v109[1] = 0;
                if (++st_blocks == v108)
                {
                  goto LABEL_213;
                }

                continue;
              }

              v112 = &v224;
              v113 = 22;
LABEL_222:
              if (v113 + 1 > 2 * v113)
              {
                v114 = v113 + 1;
              }

              else
              {
                v114 = 2 * v113;
              }

              if ((v114 | 7) == 0x17)
              {
                v115 = 25;
              }

              else
              {
                v115 = (v114 | 7) + 1;
              }

              if (v114 >= 0x17)
              {
                v116 = v115;
              }

              else
              {
                v116 = 23;
              }

              v117 = v113 == 22;
              goto LABEL_232;
            }

            break;
          }

          v113 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v224.__r_.__value_.__l.__size_ == v113)
          {
            if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_388;
            }

            v112 = v224.__r_.__value_.__r.__words[0];
            if (v113 < 0x3FFFFFFFFFFFFFF3)
            {
              goto LABEL_222;
            }

            v117 = 0;
            v116 = 0x7FFFFFFFFFFFFFF7;
LABEL_232:
            v118 = operator new(v116);
            v119 = v118;
            if (v113)
            {
              memmove(v118, v112, v113);
            }

            if (!v117)
            {
              operator delete(v112);
            }

            v224.__r_.__value_.__r.__words[0] = v119;
            v224.__r_.__value_.__r.__words[2] = v116 | 0x8000000000000000;
          }

          else
          {
            v113 = v224.__r_.__value_.__l.__size_;
            v119 = v224.__r_.__value_.__r.__words[0];
          }

          v224.__r_.__value_.__l.__size_ = v113 + 1;
          v120 = (v119 + v113);
          *v120 = v110;
          v120[1] = 0;
          if (++st_blocks == v108)
          {
            goto LABEL_213;
          }

          continue;
        }
      }

LABEL_241:
      st_rdev = v231.st_rdev;
      v122 = v231.st_rdev | 0x800;
      v231.st_rdev |= 0x800u;
      v123 = v231.st_atimespec.tv_sec;
      v124 = &v231.st_mtimespec.tv_nsec;
      if (v231.st_atimespec.tv_nsec != v231.st_atimespec.tv_sec)
      {
        v124 = v231.st_atimespec.tv_sec;
      }

      v125 = (v231.st_atimespec.tv_sec + 8);
      if (v231.st_atimespec.tv_nsec == v231.st_atimespec.tv_sec)
      {
        v125 = &v231.st_ctimespec;
      }

      v126 = v125->tv_sec;
      st_ino = v231.st_ino;
      v217 = *&v231.st_blksize;
      v218 = v231.st_blocks;
      if (*v124 != v125->tv_sec)
      {
        v221 = v125->tv_sec;
        v128 = v125->tv_sec;
        v129 = v223;
        goto LABEL_247;
      }

      v129 = v223;
      if (v231.st_ino == v126)
      {
        if (!v231.st_atimespec.tv_sec)
        {
          goto LABEL_289;
        }

        goto LABEL_288;
      }

      v154 = *&v231.st_uid;
      *&v155 = 0xAAAAAAAAAAAAAAAALL;
      *(&v155 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v223 + 2) = v155;
      v129[3] = v155;
      *v129 = v155;
      v129[1] = v155;
      v234 = 0uLL;
      v235 = 0;
      v236 = 0uLL;
      v237 = 0;
      v238 = 0;
      v239 = 0;
      v232 = 0u;
      memset(v233, 0, 25);
      v156 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v154, v126, st_ino, &v232, st_rdev | 0x860u);
      v157 = v234.i64[0];
      v158 = *(&v232 + 1) - v232;
      v159 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
      v161 = v231.st_atimespec.tv_sec;
      v160 = v231.st_atimespec.tv_nsec;
      v162 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
      if (v159 <= v162)
      {
        if (v159 < v162)
        {
          v160 = v231.st_atimespec.tv_sec + v158;
          v231.st_atimespec.tv_nsec = v231.st_atimespec.tv_sec + v158;
        }
      }

      else
      {
        std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(&v231.st_atimespec, v159 - v162);
        v161 = v231.st_atimespec.tv_sec;
        v160 = v231.st_atimespec.tv_nsec;
      }

      if (v160 == v161)
      {
        v179 = v126 - v157;
        v177 = v232;
      }

      else
      {
        v175 = 0;
        v176 = 0xAAAAAAAAAAAAAAABLL * ((v160 - v161) >> 3);
        v177 = v232;
        v178 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v179 = v126 - v157;
        if (v176 <= 1)
        {
          v176 = 1;
        }

        v180 = (v161 + 16);
        v181 = v232;
        do
        {
          if (v178 <= v175)
          {
            v182 = &v233[8];
          }

          else
          {
            v182 = v181;
          }

          *(v180 - 2) = v179 + *v182;
          v183 = (v181 + 8);
          if (v178 <= v175)
          {
            v183 = &v233[16];
          }

          *(v180 - 1) = v179 + *v183;
          v184 = (v181 + 16);
          if (v178 <= v175)
          {
            v184 = v129;
          }

          *v180 = *v184;
          v180 += 24;
          ++v175;
          v181 += 24;
        }

        while (v176 != v175);
      }

      v231.st_mtimespec.tv_nsec = st_ino;
      v231.st_ctimespec.tv_sec = st_ino;
      LOBYTE(v231.st_ctimespec.tv_nsec) = 0;
      v185 = vdupq_n_s64(v179);
      v231.st_birthtimespec = vaddq_s64(v185, v234);
      LOBYTE(v231.st_size) = v235;
      *&v231.st_blocks = vaddq_s64(v185, v236);
      LOBYTE(v231.st_gen) = v237;
      LOBYTE(v231.st_qspare[0]) = v238;
      if (v177)
      {
        *(&v232 + 1) = v177;
        operator delete(v177);
      }

      if ((v156 & 1) == 0)
      {
        v221 = v126;
        v128 = (&v126->first + 1);
        v122 = v231.st_rdev;
        st_ino = v231.st_ino;
LABEL_247:
        v231.st_rdev = v122 | 0x80;
        v130 = *&v231.st_uid;
        *&v131 = 0xAAAAAAAAAAAAAAAALL;
        *(&v131 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v129[2] = v131;
        v129[3] = v131;
        *v129 = v131;
        v129[1] = v131;
        v234 = 0uLL;
        v235 = 0;
        v236 = 0uLL;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        v232 = 0u;
        memset(v233, 0, 25);
        v222 = v128;
        v132 = st_ino;
        v220 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v130, v128, st_ino, &v232, v122 | 0x80u);
        v133 = v234.i64[0];
        v134 = *(&v232 + 1) - v232;
        v135 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v136 = v231.st_atimespec.tv_sec;
        v137 = v231.st_atimespec.tv_nsec;
        v138 = v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec;
        v139 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
        v140 = v135 - v139;
        if (v135 <= v139)
        {
          if (v135 < v139)
          {
            v137 = v231.st_atimespec.tv_sec + v134;
            v231.st_atimespec.tv_nsec = v231.st_atimespec.tv_sec + v134;
          }

          v150 = v223;
          v151 = v221;
          v152 = v220;
          if (v137 == v231.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        else if (0xAAAAAAAAAAAAAAABLL * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_nsec) >> 3) >= v140)
        {
          v173 = v231.st_atimespec.tv_nsec + 24 * v140;
          v174 = 8 * ((*(&v232 + 1) - v232) >> 3) - 8 * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
          do
          {
            *v137 = 0;
            *(v137 + 8) = 0;
            *(v137 + 16) = 0;
            v137 += 24;
            v174 -= 24;
          }

          while (v174);
          v231.st_atimespec.tv_nsec = v173;
          v150 = v223;
          v151 = v221;
          v152 = v220;
          v136 = v231.st_atimespec.tv_sec;
          v137 = v173;
          if (v173 == v231.st_atimespec.tv_sec)
          {
LABEL_264:
            v153 = v222 - v133;
            goto LABEL_282;
          }
        }

        else
        {
          if (v135 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v215 = v234.i64[0];
          v141 = 0x5555555555555556 * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_sec) >> 3);
          if (v141 <= v135)
          {
            v141 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_sec) >> 3) >= 0x555555555555555)
          {
            v142 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v142 = v141;
          }

          if (v142 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v143 = operator new(24 * v142);
          v144 = &v143[24 * v140 + v138];
          v145 = 24 * v135 - 24 * v139;
          v146 = &v143[v138];
          do
          {
            *v146 = 0;
            *(v146 + 1) = 0;
            v146[16] = 0;
            v146 += 24;
            v145 -= 24;
          }

          while (v145);
          v133 = v215;
          if (v136 != v137)
          {
            v147 = v136;
            v148 = v143;
            do
            {
              v149 = *v147;
              *(v148 + 2) = *(v147 + 2);
              *v148 = v149;
              v148 += 24;
              v147 += 24;
            }

            while (v147 != v137);
          }

          v231.st_atimespec.tv_sec = v143;
          v231.st_atimespec.tv_nsec = &v143[24 * v140 + v138];
          v231.st_mtimespec.tv_sec = &v143[24 * v142];
          v150 = v223;
          v151 = v221;
          v152 = v220;
          if (v136)
          {
            operator delete(v136);
            v133 = v215;
            v144 = v231.st_atimespec.tv_nsec;
          }

          v136 = v231.st_atimespec.tv_sec;
          v137 = v144;
          if (v144 == v231.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        v163 = 0;
        v164 = 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3);
        v165 = v232;
        v166 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v153 = v222 - v133;
        if (v164 <= 1)
        {
          v164 = 1;
        }

        v167 = v136 + 16;
        do
        {
          if (v166 <= v163)
          {
            v168 = &v233[8];
          }

          else
          {
            v168 = v165;
          }

          *(v167 - 2) = v153 + *v168;
          v169 = (v165 + 8);
          if (v166 <= v163)
          {
            v169 = &v233[16];
          }

          *(v167 - 1) = v153 + *v169;
          v170 = (v165 + 16);
          if (v166 <= v163)
          {
            v170 = v150;
          }

          *v167 = *v170;
          v167 += 24;
          ++v163;
          v165 += 24;
        }

        while (v164 != v163);
LABEL_282:
        v231.st_mtimespec.tv_nsec = v132;
        v231.st_ctimespec.tv_sec = v132;
        LOBYTE(v231.st_ctimespec.tv_nsec) = 0;
        v171 = vdupq_n_s64(v153);
        v172 = vaddq_s64(v171, v234);
        v231.st_birthtimespec = v172;
        LOBYTE(v231.st_size) = v235;
        *&v231.st_blocks = vaddq_s64(v171, v236);
        LOBYTE(v231.st_gen) = v237;
        if ((v122 & 0x800) == 0)
        {
          v231.st_qspare[1] = v172.tv_sec;
        }

        LOBYTE(v231.st_qspare[0]) = v238;
        if (v232)
        {
          *(&v232 + 1) = v232;
          operator delete(v232);
        }

        if (v152)
        {
          v231.st_birthtimespec.tv_sec = v151;
          LOBYTE(v231.st_size) = v231.st_birthtimespec.tv_nsec != v151;
          goto LABEL_51;
        }

        v123 = v231.st_atimespec.tv_sec;
        if (!v231.st_atimespec.tv_sec)
        {
          goto LABEL_289;
        }

LABEL_288:
        v231.st_atimespec.tv_nsec = v123;
        operator delete(v123);
LABEL_289:
        LOBYTE(v231.st_qspare[0]) = 0;
        memset(&v231.st_atimespec, 0, 41);
        memset(&v231.st_birthtimespec, 0, 17);
        memset(&v231.st_blocks, 0, 17);
        v231.st_qspare[1] = 0;
      }

LABEL_51:
      tv_sec = v231.st_atimespec.tv_sec;
    }

    while (v231.st_atimespec.tv_nsec != v231.st_atimespec.tv_sec);
    v186 = v218;
    if (v218 != v217)
    {
      while (1)
      {
        while (1)
        {
          v188 = *v186;
          v189 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
          {
            v190 = &v224;
            v191 = 22;
            goto LABEL_325;
          }

          *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
          v187 = &v224 + v189;
          *v187 = v188;
          v187[1] = 0;
          if (++v186 == v217)
          {
            goto LABEL_372;
          }
        }

        v191 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == v191)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v190 = v224.__r_.__value_.__r.__words[0];
          if (v191 >= 0x3FFFFFFFFFFFFFF3)
          {
            v195 = 0;
            v194 = 0x7FFFFFFFFFFFFFF7;
          }

          else
          {
LABEL_325:
            if (v191 + 1 > 2 * v191)
            {
              v192 = v191 + 1;
            }

            else
            {
              v192 = 2 * v191;
            }

            if ((v192 | 7) == 0x17)
            {
              v193 = 25;
            }

            else
            {
              v193 = (v192 | 7) + 1;
            }

            if (v192 >= 0x17)
            {
              v194 = v193;
            }

            else
            {
              v194 = 23;
            }

            v195 = v191 == 22;
          }

          v196 = operator new(v194);
          v197 = v196;
          if (v191)
          {
            memmove(v196, v190, v191);
          }

          if (!v195)
          {
            operator delete(v190);
          }

          v224.__r_.__value_.__r.__words[0] = v197;
          v224.__r_.__value_.__r.__words[2] = v194 | 0x8000000000000000;
          goto LABEL_341;
        }

        v191 = v224.__r_.__value_.__l.__size_;
        v197 = v224.__r_.__value_.__r.__words[0];
LABEL_341:
        v224.__r_.__value_.__l.__size_ = v191 + 1;
        v198 = (v197 + v191);
        *v198 = v188;
        v198[1] = 0;
        if (++v186 == v217)
        {
          goto LABEL_372;
        }
      }
    }

LABEL_373:
    if (tv_sec)
    {
      v231.st_atimespec.tv_nsec = tv_sec;
      operator delete(tv_sec);
    }

    a1 = v213;
    v4 = v214;
    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
      v226 = v224;
      if (SHIBYTE(__p[2]) < 0)
      {
LABEL_5:
        operator delete(__p[0]);
      }
    }

    else
    {
      v226 = v224;
      if (SHIBYTE(__p[2]) < 0)
      {
        goto LABEL_5;
      }
    }
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

LABEL_384:
  v211 = v230;
  if (v230 && !atomic_fetch_add((v230 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v211->__on_zero_shared)(v211);
    std::__shared_weak_count::__release_weak(v211);
  }

  std::locale::~locale(v227);
}

void sub_297365E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, std::locale a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 185) < 0)
  {
    operator delete(*(v62 - 208));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a46);
  _Unwind_Resume(a1);
}

void support::fs::createUniquePath(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v29 = *MEMORY[0x29EDCA608];
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__src.st_blksize = v4;
  *__src.st_qspare = v4;
  __src.st_birthtimespec = v4;
  *&__src.st_size = v4;
  __src.st_mtimespec = v4;
  __src.st_ctimespec = v4;
  *&__src.st_uid = v4;
  __src.st_atimespec = v4;
  *&__src.st_dev = v4;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__src))
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v27 = v5;
    v28 = v5;
    v25 = v5;
    v26 = v5;
    v23 = v5;
    v24 = v5;
    *__src.st_qspare = v5;
    v22 = v5;
    *&__src.st_size = v5;
    *&__src.st_blksize = v5;
    __src.st_ctimespec = v5;
    __src.st_birthtimespec = v5;
    __src.st_atimespec = v5;
    __src.st_mtimespec = v5;
    *&__src.st_dev = v5;
    *&__src.st_uid = v5;
    snprintf(&__src, 0x100uLL, "-%u", 1);
    memset(a2, 170, sizeof(std::string));
    v6 = strlen(&__src);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    v8 = 2;
    while (v7 < 0x17)
    {
      HIBYTE(__dst.st_gid) = v7;
      p_dst = &__dst;
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_17:
      *(&p_dst->st_dev + v7) = 0;
      v12 = v2[23];
      if (v12 >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      if (v12 >= 0)
      {
        v14 = *(v2 + 23);
      }

      else
      {
        v14 = *(v2 + 1);
      }

      v15 = std::string::insert(&__dst, 0, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.st_gid) < 0)
      {
        operator delete(*&__dst.st_dev);
      }

      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__dst.st_blksize = v17;
      *__dst.st_qspare = v17;
      __dst.st_birthtimespec = v17;
      *&__dst.st_size = v17;
      __dst.st_mtimespec = v17;
      __dst.st_ctimespec = v17;
      *&__dst.st_uid = v17;
      __dst.st_atimespec = v17;
      *&__dst.st_dev = v17;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = a2->__r_.__value_.__r.__words[0];
      }

      if (stat(v18, &__dst))
      {
        goto LABEL_32;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(a2->__r_.__value_.__l.__data_);
      }

      v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v27 = v9;
      v28 = v9;
      v25 = v9;
      v26 = v9;
      v23 = v9;
      v24 = v9;
      *__src.st_qspare = v9;
      v22 = v9;
      *&__src.st_size = v9;
      *&__src.st_blksize = v9;
      __src.st_ctimespec = v9;
      __src.st_birthtimespec = v9;
      __src.st_atimespec = v9;
      __src.st_mtimespec = v9;
      *&__src.st_dev = v9;
      *&__src.st_uid = v9;
      snprintf(&__src, 0x100uLL, "-%u", v8);
      memset(a2, 170, sizeof(std::string));
      v7 = strlen(&__src);
      ++v8;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    p_dst = operator new(v11);
    __dst.st_ino = v7;
    *&__dst.st_uid = v11 | 0x8000000000000000;
    *&__dst.st_dev = p_dst;
LABEL_16:
    memcpy(p_dst, &__src, v7);
    goto LABEL_17;
  }

  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_29736619C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::createDir(const char *a1, mode_t a2, int a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v6;
  *v30.st_qspare = v6;
  v30.st_birthtimespec = v6;
  *&v30.st_size = v6;
  v30.st_mtimespec = v6;
  v30.st_ctimespec = v6;
  *&v30.st_uid = v6;
  v30.st_atimespec = v6;
  *&v30.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v30))
  {
    return 1;
  }

  if (!a3)
  {
    if (v5[23] >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    return mkdir(v21, a2) == 0;
  }

  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0x1AAAAAAAAAAAAAALL;
  v28[0] = 0xAAAAAAAAAAAA002FLL;
  memset(&__p[32], 170, 24);
  ctu::tokenize();
  memset(__p, 0, 24);
  if (v5[23] >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (*v7 == 47)
  {
    *__p = *v28;
    *&__p[16] = v29;
  }

  v8 = *&__p[32];
  if (*&__p[40] != *&__p[32])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v10 != 1)
      {
        if (v29 >= 0)
        {
          v11 = v28;
        }

        else
        {
          v11 = v28[0];
        }

        if (v29 >= 0)
        {
          v12 = HIBYTE(v29);
        }

        else
        {
          v12 = v28[1];
        }

        std::string::append(__p, v11, v12);
        v8 = *&__p[32];
      }

      v13 = v8 + 24 * v9;
      v14 = *(v13 + 23);
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? *(v13 + 23) : *(v13 + 8);
      std::string::append(__p, v15, v16);
      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v30.st_blksize = v17;
      *v30.st_qspare = v17;
      v30.st_birthtimespec = v17;
      *&v30.st_size = v17;
      v30.st_mtimespec = v17;
      v30.st_ctimespec = v17;
      *&v30.st_uid = v17;
      v30.st_atimespec = v17;
      *&v30.st_dev = v17;
      v18 = __p[23] >= 0 ? __p : *__p;
      if (stat(v18, &v30))
      {
        v19 = __p[23] >= 0 ? __p : *__p;
        if (mkdir(v19, a2))
        {
          break;
        }
      }

      v9 = v10;
      v8 = *&__p[32];
      ++v10;
      if (0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3) <= v9)
      {
        goto LABEL_42;
      }
    }

    v20 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 1;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_43:
    operator delete(*__p);
  }

LABEL_44:
  v22 = *&__p[32];
  if (*&__p[32])
  {
    v23 = *&__p[40];
    v24 = *&__p[32];
    if (*&__p[40] != *&__p[32])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *&__p[32];
    }

    *&__p[40] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  return v20;
}

void sub_297366460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

BOOL support::fs::rename(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(a1, a2, a3);
  return v3 == 0;
}

BOOL support::fs::chmod(const char *a1, mode_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chmod(a1, a2) == 0;
}

BOOL support::fs::removeDir(const char *a1)
{
  v1 = a1;
  v58[2] = *MEMORY[0x29EDCA608];
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v57.st_blksize = v2;
  *v57.st_qspare = v2;
  v57.st_birthtimespec = v2;
  *&v57.st_size = v2;
  v57.st_mtimespec = v2;
  v57.st_ctimespec = v2;
  *&v57.st_uid = v2;
  v57.st_atimespec = v2;
  *&v57.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v57))
  {
    v3 = 1;
    goto LABEL_112;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  support::fs::readDir(v1, &v54);
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3);
    v3 = v7 <= v5;
    if (v7 <= v5)
    {
      break;
    }

    v8 = v54 + 24 * v5;
    memset(&__p, 170, sizeof(__p));
    if (v8[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        if (*__p.__r_.__value_.__l.__data_ == 46)
        {
          goto LABEL_61;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 11822)
      {
        goto LABEL_61;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_61;
    }

    v11 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      size = HIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v1->__pn_.__r_.__value_.__l.__size_;
    }

    v13 = size + 1;
    if (size + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 < 0x17)
    {
      memset(&v57, 0, 24);
      v15 = &v57;
      HIBYTE(v57.st_gid) = size + 1;
      if (!size)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      v15 = operator new(v14);
      v57.st_ino = size + 1;
      *&v57.st_uid = v14 | 0x8000000000000000;
      *&v57.st_dev = v15;
    }

    v16 = v1->__pn_.__r_.__value_.__r.__words[0];
    if (v11 >= 0)
    {
      v17 = v1;
    }

    else
    {
      v17 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v17, size);
LABEL_38:
    *&v15[size] = 47;
    if ((v10 & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x80000000) == 0)
    {
      v19 = v10;
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v57, p_p, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v58[0] = v20->__r_.__value_.__l.__size_;
    *(v58 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v21;
    __p.__r_.__value_.__l.__size_ = v58[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v58 + 7);
    *(&__p.__r_.__value_.__s + 23) = v22;
    if (SHIBYTE(v57.st_gid) < 0)
    {
      operator delete(*&v57.st_dev);
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v57.st_blksize = v23;
    *v57.st_qspare = v23;
    v57.st_birthtimespec = v23;
    *&v57.st_size = v23;
    v57.st_mtimespec = v23;
    v57.st_ctimespec = v23;
    *&v57.st_uid = v23;
    v57.st_atimespec = v23;
    if (v22 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = v21;
    }

    *&v57.st_dev = v23;
    if (!stat(v24, &v57))
    {
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v30 = opendir(v29);
      v31 = v30;
      if (v30)
      {
        v32 = readdir(v30);
        closedir(v31);
        if (v32)
        {
          v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v33 = __p.__r_.__value_.__l.__size_;
            v35 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
            v36 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v36 != __p.__r_.__value_.__l.__size_)
            {
              v34 = __p.__r_.__value_.__r.__words[0];
              goto LABEL_89;
            }

            if (v35 == 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v34 = __p.__r_.__value_.__r.__words[0];
            if (v36 > 0x3FFFFFFFFFFFFFF2)
            {
              v40 = 0;
              v39 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_74:
              v37 = 2 * v36;
              if (v35 > 2 * v36)
              {
                v37 = v35;
              }

              if ((v37 | 7) == 0x17)
              {
                v38 = 25;
              }

              else
              {
                v38 = (v37 | 7) + 1;
              }

              if (v37 >= 0x17)
              {
                v39 = v38;
              }

              else
              {
                v39 = 23;
              }

              v40 = v36 == 22;
            }

            v41 = operator new(v39);
            v42 = v41;
            if (v36)
            {
              memmove(v41, v34, v36);
            }

            *(v42 + v36) = 47;
            if (!v40)
            {
              operator delete(v34);
            }

            __p.__r_.__value_.__l.__size_ = v35;
            __p.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v42;
            v43 = (v42 + v35);
          }

          else
          {
            v34 = &__p;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
            {
              v35 = 23;
              v36 = 22;
              goto LABEL_74;
            }

LABEL_89:
            v34->__r_.__value_.__s.__data_[v33] = 47;
            v44 = v33 + 1;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              __p.__r_.__value_.__l.__size_ = v44;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = v44 & 0x7F;
            }

            v43 = v34 + v44;
          }

          *v43 = 0;
          v28 = support::fs::removeDir(&__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (!remove(v26, v25))
    {
LABEL_61:
      v28 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    v28 = unlink(v27) == 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_7:
    v5 = v6 + 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = v1;
  }

  else
  {
    v45 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(v45, v4))
  {
    if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = v1;
    }

    else
    {
      v46 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    unlink(v46);
  }

LABEL_104:
  v47 = v54;
  if (v54)
  {
    v48 = v55;
    v49 = v54;
    if (v55 != v54)
    {
      do
      {
        v50 = *(v48 - 1);
        v48 -= 3;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v47);
      v49 = v54;
    }

    v55 = v47;
    operator delete(v49);
  }

LABEL_112:
  v51 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_297366A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL support::fs::removeFile(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!remove(a1, a2))
  {
    return 1;
  }

  if ((v2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  return unlink(v3) == 0;
}

uint64_t support::fs::removeDirContents(const char *a1, unint64_t a2)
{
  v3 = a1;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  support::fs::readDir(a1, &v59);
  v54 = time(0);
  v5 = v59;
  v4 = v60;
  if (v59 == v60)
  {
    v49 = 1;
    if (v59)
    {
      goto LABEL_108;
    }

    return v49 & 1;
  }

  v6 = a2;
  v55 = 1;
  while (1)
  {
    memset(&v58, 170, sizeof(v58));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      v58.__r_.__value_.__r.__words[2] = v5[2];
      *&v58.__r_.__value_.__l.__data_ = v7;
    }

    v8 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) == 1)
    {
      if (v58.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_98;
      }
    }

    else if (HIBYTE(v58.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v58.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_98;
    }

LABEL_19:
    memset(__p, 170, 24);
    v9 = v3[23];
    if (v9 >= 0)
    {
      v10 = *(v3 + 23);
    }

    else
    {
      v10 = *(v3 + 1);
    }

    v11 = v10 + 1;
    if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 < 0x17)
    {
      memset(&v62, 0, 24);
      v16 = &v62;
      HIBYTE(v62.st_gid) = v10 + 1;
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v14 = a2;
      if ((v11 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v11 | 7) + 1;
      }

      v16 = operator new(v15);
      v62.st_ino = v10 + 1;
      *&v62.st_uid = v15 | 0x8000000000000000;
      *&v62.st_dev = v16;
      a2 = v14;
      v4 = v13;
      v3 = v12;
    }

    v17 = *v3;
    if (v9 >= 0)
    {
      v18 = v3;
    }

    else
    {
      v18 = *v3;
    }

    memmove(v16, v18, v10);
LABEL_33:
    *&v16[v10] = 47;
    if ((v8 & 0x80000000) == 0)
    {
      v19 = &v58;
    }

    else
    {
      v19 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x80000000) == 0)
    {
      size = v8;
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v62, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p[2] = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v62.st_gid) < 0)
    {
      operator delete(*&v62.st_dev);
      if (!a2)
      {
        goto LABEL_50;
      }
    }

    else if (!a2)
    {
      goto LABEL_50;
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v62.st_blksize = v23;
    *v62.st_qspare = v23;
    v62.st_birthtimespec = v23;
    *&v62.st_size = v23;
    v62.st_mtimespec = v23;
    v62.st_ctimespec = v23;
    v62.st_atimespec = v23;
    *&v62.st_dev = v23;
    *&v62.st_uid = v23;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (!stat(v24, &v62) && difftime(v54, v62.st_ctimespec.tv_sec) >= v6)
    {
LABEL_50:
      v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v62.st_blksize = v27;
      *v62.st_qspare = v27;
      v62.st_birthtimespec = v27;
      *&v62.st_size = v27;
      v62.st_mtimespec = v27;
      v62.st_ctimespec = v27;
      v62.st_atimespec = v27;
      *&v62.st_dev = v27;
      *&v62.st_uid = v27;
      if (SHIBYTE(__p[2]) >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      if (stat(v28, &v62) || (SHIBYTE(__p[2]) >= 0 ? (v32 = __p) : (v32 = __p[0]), (v33 = opendir(v32), (v34 = v33) == 0) || (v35 = readdir(v33), closedir(v34), !v35)))
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (!remove(v30, v29) || (SHIBYTE(__p[2]) >= 0 ? (v31 = __p) : (v31 = __p[0]), !unlink(v31)))
        {
LABEL_92:
          v26 = 0;
          v55 = 1;
          v25 = 1;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        goto LABEL_62;
      }

      v36 = v3[23];
      if (v36 >= 0)
      {
        v37 = *(v3 + 23);
      }

      else
      {
        v37 = *(v3 + 1);
      }

      v38 = v37 + 1;
      if (v37 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 < 0x17)
      {
        memset(&v56, 0, sizeof(v56));
        v41 = &v56;
        *(&v56.__r_.__value_.__s + 23) = v37 + 1;
        if (v37)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = a2;
        if ((v38 | 7) == 0x17)
        {
          v40 = 25;
        }

        else
        {
          v40 = (v38 | 7) + 1;
        }

        v41 = operator new(v40);
        v56.__r_.__value_.__l.__size_ = v37 + 1;
        v56.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
        v56.__r_.__value_.__r.__words[0] = v41;
        a2 = v39;
LABEL_79:
        v42 = *v3;
        if (v36 >= 0)
        {
          v43 = v3;
        }

        else
        {
          v43 = *v3;
        }

        memmove(v41, v43, v37);
      }

      *&v41[v37] = 47;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v58;
      }

      else
      {
        v44 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v58.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v56, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      *&v62.st_uid = *(&v46->__r_.__value_.__l + 2);
      *&v62.st_dev = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = support::fs::removeDir(&v62);
      if (SHIBYTE(v62.st_gid) < 0)
      {
        operator delete(*&v62.st_dev);
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_91:
        if (v48)
        {
          goto LABEL_92;
        }

LABEL_62:
        v55 = 0;
        v25 = 0;
        v26 = 2;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      operator delete(v56.__r_.__value_.__l.__data_);
      if (v48)
      {
        goto LABEL_92;
      }

      goto LABEL_62;
    }

    v25 = 0;
    v26 = 3;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_93:
    operator delete(__p[0]);
LABEL_94:
    if (v25)
    {
      goto LABEL_98;
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    operator delete(v58.__r_.__value_.__l.__data_);
    if (v26 != 3)
    {
      goto LABEL_100;
    }

LABEL_3:
    v5 += 3;
    if (v5 == v4)
    {
      goto LABEL_105;
    }
  }

  if (v58.__r_.__value_.__l.__size_ == 1)
  {
    if (*v58.__r_.__value_.__l.__data_ == 46)
    {
      goto LABEL_98;
    }

    goto LABEL_19;
  }

  if (v58.__r_.__value_.__l.__size_ != 2 || *v58.__r_.__value_.__l.__data_ != 11822)
  {
    goto LABEL_19;
  }

LABEL_98:
  v26 = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (v26 == 3)
  {
    goto LABEL_3;
  }

LABEL_100:
  if (!v26)
  {
    goto LABEL_3;
  }

LABEL_105:
  v5 = v59;
  v49 = v55;
  if (!v59)
  {
    return v49 & 1;
  }

LABEL_108:
  v50 = v60;
  v51 = v5;
  if (v60 != v5)
  {
    do
    {
      v52 = *(v50 - 1);
      v50 -= 3;
      if (v52 < 0)
      {
        operator delete(*v50);
      }
    }

    while (v50 != v5);
    v51 = v59;
  }

  v60 = v5;
  operator delete(v51);
  return v49 & 1;
}

void sub_29736709C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void **a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void support::fs::moveDirUnique(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v6;
  *v16.st_qspare = v6;
  v16.st_birthtimespec = v6;
  *&v16.st_size = v6;
  v16.st_mtimespec = v6;
  v16.st_ctimespec = v6;
  *&v16.st_uid = v6;
  v16.st_atimespec = v6;
  *&v16.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v16))
  {
    goto LABEL_4;
  }

  v7 = (v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v4 : v4->__pn_.__r_.__value_.__r.__words[0];
  v8 = opendir(v7);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = readdir(v8);
  closedir(v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  memset(a3, 170, 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  support::fs::createUniquePath(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  if (*(a3 + 23) >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  rename(v12, v13, v11);
  if (v14)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

LABEL_4:
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void sub_2973672AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getFileName(std::string *a1@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  if (*(__p[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(__p[1] - 3), *(__p[1] - 2));
  }

  else
  {
    v2 = *(__p[1] - 24);
    a1->__r_.__value_.__r.__words[2] = *(__p[1] - 1);
    *&a1->__r_.__value_.__l.__data_ = v2;
  }

  if (__p[0])
  {
    v3 = __p[1];
    v4 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != __p[0]);
      v4 = __p[0];
    }

    operator delete(v4);
  }
}

void sub_297367380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t support::fs::lockDir(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = open(a1, 0);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v5 = 1;
  v3[0] = 0;
  v3[1] = 0;
  v4 = getpid();
  if ((fcntl(v1, 9, v3) & 0x80000000) == 0)
  {
    return v1;
  }

  close(v1);
  return 0xFFFFFFFFLL;
}

BOOL support::fs::unlockDir(support::fs *this)
{
  v1 = this;
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  v2 = fcntl(v1, 9, v4) == 0;
  close(v1);
  return v2;
}

uint64_t support::fs::getFilteredFiles(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_69:
    if ((atomic_load_explicit(&qword_2A1399E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E78))
    {
      qword_2A1399E80 = 0;
      qword_2A1399E88 = 0;
      __cxa_guard_release(&qword_2A1399E78);
    }

    if (_MergedGlobals_11 == -1)
    {
      v36 = qword_2A1399E88;
      if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v37 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
      v36 = qword_2A1399E88;
      if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v40 = __error();
    v41 = strerror(*v40);
    v48.st_dev = 136315394;
    *&v48.st_mode = a1;
    WORD2(v48.st_ino) = 2080;
    *(&v48.st_ino + 6) = v41;
    _os_log_error_impl(&dword_297288000, v36, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v48, 0x16u);
    goto LABEL_72;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v42 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v11 | 7) + 1;
        }

        v13 = operator new(v15);
        *&__dst[8] = v12;
        *&__dst[16] = v15 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          if ((__dst[23] & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      if ((__dst[23] & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v14 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_64;
          }
        }

        else if (v14 == 2 && *__dst == 11822)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_64;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_64;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_55;
      }

      v16 = v8;
      v17 = a3;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v48.st_blksize = v19;
      *v48.st_qspare = v19;
      v48.st_birthtimespec = v19;
      *&v48.st_size = v19;
      v48.st_ctimespec = v19;
      v48.st_atimespec = v19;
      v48.st_mtimespec = v19;
      *&v48.st_dev = v19;
      *&v48.st_uid = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 < 0x17)
      {
        memset(&v44, 0, sizeof(v44));
        v25 = &v44;
        *(&v44.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a4 = v18;
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v44.__r_.__value_.__l.__size_ = v22 + 1;
        v44.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v44.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
      a4 = v18;
LABEL_40:
      *&v25[v22] = 47;
      if ((v14 & 0x80000000) == 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if ((v14 & 0x80000000) == 0)
      {
        v29 = v14;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v44, v28, v29);
      a3 = v17;
      v31 = *&v30->__r_.__value_.__l.__data_;
      v46 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v46 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      lstat(v32, &v48);
      v8 = v16;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v48.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v48.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        if (std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(__dst, a2, 0))
        {
          v33 = *(a3 + 8);
          if (v33 >= *(a3 + 16))
          {
            v35 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(*(a3 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v34 = *__dst;
              *(v33 + 16) = *&__dst[16];
              *v33 = v34;
            }

            v35 = (v33 + 24);
            *(a3 + 8) = v33 + 24;
          }

          *(a3 + 8) = v35;
          v42 = 1;
        }
      }

LABEL_64:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_74;
      }
    }
  }

  v42 = 0;
LABEL_74:
  closedir(v8);
  v37 = v42;
LABEL_75:
  v38 = *MEMORY[0x29EDCA608];
  return v37 & 1;
}

void sub_297367968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *(v29 + 8) = v30;
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getBasePath(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      return;
    }

LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    memset(&__p, 170, sizeof(__p));
    v3 = a1;
    support::fs::getFileName(&__p);
    v4 = *(v3 + 1);
    if ((v3[23] & 0x80u) == 0)
    {
      v5 = v3[23];
    }

    else
    {
      v3 = *v3;
      v5 = v4;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = &v3[v5];
    if (v5)
    {
      v10 = size == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v18 = &v3[v5];
    }

    else
    {
      v16 = p_p->__r_.__value_.__s.__data_[0];
      v14 = &p_p->__r_.__value_.__s.__data_[1];
      v15 = v16;
      v17 = v3;
      v18 = &v3[v5];
LABEL_36:
      while (2)
      {
        v19 = v17 + 1;
        while (*v17 != v15)
        {
          ++v17;
          ++v19;
          if (v17 == v9)
          {
            goto LABEL_20;
          }
        }

        v20 = size - 1;
        v21 = v14;
        while (v20)
        {
          if (v19 == v9)
          {
            goto LABEL_20;
          }

          v23 = *v19++;
          v22 = v23;
          v24 = *v21++;
          --v20;
          if (v22 != v24)
          {
            if (++v17 != v9)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          }
        }

        v18 = v17++;
        if (v17 != v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
    v11 = v18 != v9 || size == 0;
    if (!v11 || v18 - v3 == -1)
    {
      goto LABEL_34;
    }

    if (v5 >= v18 - v3)
    {
      v12 = v18 - v3;
    }

    else
    {
      v12 = v5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v12 | 7) + 1;
      }

      v13 = operator new(v25);
      *(&v27 + 1) = v12;
      v28 = v25 | 0x8000000000000000;
      *&v27 = v13;
    }

    else
    {
      HIBYTE(v28) = v12;
      v13 = &v27;
      if (!v12)
      {
        LOBYTE(v27) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_33:
          *a2 = v27;
          *(a2 + 16) = v28;
          v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_34:
          if (v7 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

LABEL_53:
        operator delete(*a2);
        goto LABEL_33;
      }
    }

    memmove(v13, v3, v12);
    *(v13 + v12) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (*(a1 + 8))
  {
    goto LABEL_6;
  }

  v26 = *a1;

  std::string::__init_copy_ctor_external(a2, v26, 0);
}

void sub_297367E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getLastNumberDir(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v79, 170, sizeof(v79));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *a1, *(a1 + 8));
  }

  else
  {
    v79 = *a1;
  }

  v4 = v79.__r_.__value_.__r.__words[0];
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v79;
  }

  else
  {
    v5 = v79.__r_.__value_.__r.__words[0];
  }

  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v79.__r_.__value_.__l.__size_;
  }

  v7 = size + 1;
  do
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      goto LABEL_20;
    }

    v9 = v5->__r_.__value_.__s.__data_[v7-- - 2];
  }

  while (v9 == 47);
  if (v8)
  {
    v10 = v8 - 1;
    if ((*(&v79.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v79.__r_.__value_.__l.__size_ > v10)
      {
        v79.__r_.__value_.__l.__size_ = v8;
        goto LABEL_19;
      }
    }

    else if (v10 < HIBYTE(v79.__r_.__value_.__r.__words[2]))
    {
      *(&v79.__r_.__value_.__s + 23) = v8;
      v4 = &v79;
LABEL_19:
      v4->__r_.__value_.__s.__data_[v8] = 0;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_20:
  memset(&v78, 170, sizeof(v78));
  support::fs::getBasePath(&v79, &v78);
  v11 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v79.__r_.__value_.__l.__size_;
  }

  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v78.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
LABEL_35:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_37;
    }

    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    goto LABEL_150;
  }

  memset(&v77, 170, sizeof(v77));
  support::fs::getFileName(&v77);
  v13 = 0x7FFFFFFFFFFFFFF7;
  memset(v76, 170, sizeof(v76));
  v14 = SHIBYTE(v77.__r_.__value_.__r.__words[2]);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v77.__r_.__value_.__l.__size_;
  }

  v16 = v15 + 13;
  if (v15 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(v76, 0, sizeof(v76));
    v18 = v76;
    HIBYTE(v76[2]) = v15 + 13;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    v76[1] = (v15 + 13);
    v76[2] = (v17 | 0x8000000000000000);
    v76[0] = v18;
  }

  if (v14 >= 0)
  {
    v19 = &v77;
  }

  else
  {
    v19 = v77.__r_.__value_.__r.__words[0];
  }

  memmove(v18, v19, v15);
LABEL_45:
  strcpy(v18 + v15, "-[[:alnum:]]*");
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v74[32] = v20;
  v75 = v20;
  *v74 = v20;
  *&v74[16] = v20;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v74, v76, 0);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v78;
  }

  std::locale::locale(&v64, v74);
  v65 = *&v74[8];
  v66 = *&v74[24];
  v67 = *&v74[40];
  v68 = v75;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
  }

  v69 = *(&v75 + 1);
  if (!support::fs::getFilteredFiles(&v70, &v64, &v71, 0))
  {
    v24 = v68;
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    std::locale::~locale(&v64);
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    goto LABEL_85;
  }

  v21 = v71;
  v22 = v72;
  v23 = v68;
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::locale::~locale(&v64);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    if (v21 == v22)
    {
      goto LABEL_85;
    }
  }

  else if (v21 == v22)
  {
LABEL_85:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    goto LABEL_138;
  }

  v25 = v71;
  v26 = v72;
  if (v71 != v72)
  {
    v27 = 0;
    while (1)
    {
      memset(__p, 170, 24);
      ctu::tokenize();
      memset(&v62, 170, sizeof(v62));
      if (*(__p[1] - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, *(__p[1] - 3), *(__p[1] - 2));
      }

      else
      {
        v29 = *(__p[1] - 24);
        v62.__r_.__value_.__r.__words[2] = *(__p[1] - 1);
        *&v62.__r_.__value_.__l.__data_ = v29;
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v62;
      }

      else
      {
        v30 = v62.__r_.__value_.__r.__words[0];
      }

      v31 = strtol(v30, 0, 0);
      if (v27 <= v31)
      {
        v27 = v31;
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        v32 = __p[0];
        if (__p[0])
        {
LABEL_80:
          v33 = __p[1];
          v28 = v32;
          if (__p[1] != v32)
          {
            do
            {
              v34 = *(v33 - 1);
              v33 -= 3;
              if (v34 < 0)
              {
                operator delete(*v33);
              }
            }

            while (v33 != v32);
            v28 = __p[0];
          }

          __p[1] = v32;
          operator delete(v28);
        }
      }

      else
      {
        v32 = __p[0];
        if (__p[0])
        {
          goto LABEL_80;
        }
      }

      v25 += 3;
      if (v25 == v26)
      {
        goto LABEL_89;
      }
    }
  }

  v27 = 0;
LABEL_89:
  v35 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v79.__r_.__value_.__l.__size_;
  }

  v37 = v36 + 1;
  if (v36 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 < 0x17)
  {
    memset(&v62, 0, sizeof(v62));
    v39 = &v62;
    *(&v62.__r_.__value_.__s + 23) = v36 + 1;
    if (!v36)
    {
      goto LABEL_103;
    }
  }

  else
  {
    if ((v37 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v37 | 7) + 1;
    }

    v39 = operator new(v38);
    v62.__r_.__value_.__l.__size_ = v36 + 1;
    v62.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    v62.__r_.__value_.__r.__words[0] = v39;
  }

  if (v35 >= 0)
  {
    v40 = &v79;
  }

  else
  {
    v40 = v79.__r_.__value_.__r.__words[0];
  }

  memmove(v39, v40, v36);
LABEL_103:
  *&v39[v36] = 45;
  std::to_string(&v61, v27);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v61;
  }

  else
  {
    v41 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v61.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v62, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  __p[2] = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v45 = __p[1];
    v48 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
    v47 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v47 == __p[1])
    {
      if (v48 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v46 = __p[0];
      if (v47 > 0x3FFFFFFFFFFFFFF2)
      {
        v51 = 0;
LABEL_124:
        v52 = operator new(v13);
        v53 = v52;
        if (v47)
        {
          memmove(v52, v46, v47);
        }

        v53[v47] = 47;
        if (!v51)
        {
          operator delete(v46);
        }

        __p[1] = v48;
        __p[2] = (v13 | 0x8000000000000000);
        __p[0] = v53;
        v54 = &v53[v48];
        goto LABEL_134;
      }

LABEL_115:
      v49 = 2 * v47;
      if (v48 > 2 * v47)
      {
        v49 = v48;
      }

      if ((v49 | 7) == 0x17)
      {
        v50 = 25;
      }

      else
      {
        v50 = (v49 | 7) + 1;
      }

      if (v49 >= 0x17)
      {
        v13 = v50;
      }

      else
      {
        v13 = 23;
      }

      v51 = v47 == 22;
      goto LABEL_124;
    }

    v46 = __p[0];
  }

  else
  {
    v46 = __p;
    if (SHIBYTE(__p[2]) == 22)
    {
      v47 = 22;
      v48 = 23;
      goto LABEL_115;
    }
  }

  *(v45 + v46) = 47;
  v55 = v45 + 1;
  if (SHIBYTE(__p[2]) < 0)
  {
    __p[1] = v55;
  }

  else
  {
    HIBYTE(__p[2]) = v55 & 0x7F;
  }

  v54 = &v55[v46];
LABEL_134:
  *v54 = 0;
  *&a2->__r_.__value_.__l.__data_ = *__p;
  a2->__r_.__value_.__r.__words[2] = __p[2];
  memset(__p, 0, 24);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

LABEL_138:
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }

  v60 = v75;
  if (!v75 || atomic_fetch_add((v75 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(v74);
    if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_154;
  }

  (v60->__on_zero_shared)(v60);
  std::__shared_weak_count::__release_weak(v60);
  std::locale::~locale(v74);
  if (SHIBYTE(v76[2]) < 0)
  {
LABEL_154:
    operator delete(v76[0]);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_155;
    }

LABEL_150:
    if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_37:
    operator delete(v78.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_38:
    operator delete(v79.__r_.__value_.__l.__data_);
    return;
  }

LABEL_149:
  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_155:
  operator delete(v77.__r_.__value_.__l.__data_);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_151:
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }
}

void sub_2973686AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, std::locale a44)
{
  if (v44 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        std::vector<std::string>::~vector[abi:ne200100](&a41);
        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a44);
        if (*(v45 - 161) < 0)
        {
          operator delete(*(v45 - 184));
          if ((*(v45 - 137) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((*(v45 - 137) & 0x80000000) == 0)
        {
LABEL_11:
          if (*(v45 - 113) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

        operator delete(*(v45 - 160));
        if (*(v45 - 113) < 0)
        {
LABEL_12:
          operator delete(*(v45 - 136));
          if ((*(v45 - 89) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }

LABEL_16:
        if ((*(v45 - 89) & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_17:
        operator delete(*(v45 - 112));
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a16);
      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

BOOL support::fs::getPartitionInfo(uint64_t a1, void *a2, void *a3, unint64_t *a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      memset(&v11, 0, sizeof(v11));
      v7 = statvfs(a1, &v11);
      result = v7 == 0;
      if (v7)
      {
        return result;
      }

LABEL_7:
      *a4 = v11.f_frsize;
      f_bavail = v11.f_bavail;
      *a2 = v11.f_blocks;
      *a3 = f_bavail;
      return result;
    }

    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  v9 = statvfs(*a1, &v11);
  result = v9 == 0;
  if (!v9)
  {
    goto LABEL_7;
  }

  return result;
}

void *support::fs::readCurrentLine@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::istream::tellg();
  v4 = v11;
  if (v11 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(v10, MEMORY[0x29EDC93D0]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v10);
  result = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, v7);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297368A30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__darwin_time_t support::fs::getFileCreationTime(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v3))
  {
    return 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    return v3.st_birthtimespec.tv_sec;
  }
}

void ___ZN7support2fsL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x29C26E9A0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_297368C70(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x297368C30);
  }

  __cxa_rethrow();
}

uint64_t asString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[7] = v4;
  v34[8] = v4;
  v34[5] = v4;
  v34[6] = v4;
  v34[3] = v4;
  v34[4] = v4;
  v34[1] = v4;
  v34[2] = v4;
  v33 = v4;
  v34[0] = v4;
  *__p = v4;
  v32 = v4;
  v29 = v4;
  *__src = v4;
  v27 = v4;
  v28 = v4;
  v26 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v26);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Time: ", 6);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; Mode: ", 8);
  v11 = MEMORY[0x29C26EA50](v10, *(a1 + 24));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; Action: ", 10);
  v15 = *(a1 + 32);
  v14 = a1 + 32;
  v13 = v15;
  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v17, v18);
  if ((BYTE8(v33) & 0x10) != 0)
  {
    v20 = v33;
    if (v33 < __src[1])
    {
      *&v33 = __src[1];
      v20 = __src[1];
    }

    v21 = __src[0];
    v19 = v20 - __src[0];
    if ((v20 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((BYTE8(v33) & 8) == 0)
    {
      v19 = 0;
      a2[23] = 0;
      goto LABEL_27;
    }

    v21 = *(&v28 + 1);
    v19 = *(&v29 + 1) - *(&v28 + 1);
    if (*(&v29 + 1) - *(&v28 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_31:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v23 = operator new(v22);
    *(a2 + 1) = v19;
    *(a2 + 2) = v22 | 0x8000000000000000;
    *a2 = v23;
    a2 = v23;
    goto LABEL_26;
  }

  a2[23] = v19;
  if (v19)
  {
LABEL_26:
    memmove(a2, v21, v19);
  }

LABEL_27:
  a2[v19] = 0;
  *&v26 = *MEMORY[0x29EDC9528];
  v24 = *(MEMORY[0x29EDC9528] + 72);
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v27 = v24;
  *(&v27 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v27 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26EC90](v34);
}

void sub_297368FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](v9 + 128);
  _Unwind_Resume(a1);
}

void BBLogTracker::addLog(uint64_t **a1, __int128 *a2, int a3, uint64_t a4)
{
  v13 = a3;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<LogInfo,std::allocator<LogInfo>,std::string const&,abm::helper::SystemLogsMode &,std::string const&,0>(a2, &v13, a4, &v11);
  v14 = a2;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v14);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[8];
  v6[7] = v8;
  v6[8] = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v12;
  if (v12)
  {
    if (!atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

uint64_t *BBLogTracker::getLog@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  result = std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::find<std::string>(a1, a2);
  if ((a1 + 8) != result)
  {
    v7 = result[7];
    v6 = result[8];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v7;
    a3[1] = v6;
  }

  return result;
}

uint64_t *BBLogTracker::limitLogs(uint64_t *this, unsigned int a2)
{
  v2 = a2;
  if (this[2] > a2)
  {
    v3 = this;
    do
    {
      this = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::erase(v3, *v3);
    }

    while (v3[2] > v2);
  }

  return this;
}

void BBLogTracker::getLastLog(BBLogTracker *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (!*(this + 2))
  {
    return;
  }

  if (a2)
  {
    v45.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v45.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v45, 0);
    tv_sec = v45.tv_sec;
    tv_usec = v45.tv_usec;
    if (v45.tv_usec >= 0)
    {
      v8 = v45.tv_usec;
    }

    else
    {
      v8 = (v45.tv_usec + 1000000);
    }

    memset(v44, 170, sizeof(v44));
    Timestamp::Timestamp(v44);
    if (v44[1])
    {
      v9 = v44[1];
      while (1)
      {
        while (1)
        {
          v11 = v9;
          v12 = *(v9 + 32);
          if (v12 < 1)
          {
            break;
          }

          v9 = *v11;
          v10 = v11;
          if (!*v11)
          {
            goto LABEL_21;
          }
        }

        if ((v12 & 0x80000000) == 0)
        {
          break;
        }

        v9 = v11[1];
        if (!v9)
        {
          v10 = v11 + 1;
          goto LABEL_21;
        }
      }

      v19 = v11;
    }

    else
    {
      v10 = &v44[1];
      v11 = &v44[1];
LABEL_21:
      v19 = operator new(0x38uLL);
      v19[8] = 0;
      *(v19 + 5) = 0;
      *(v19 + 6) = 0;
      *v19 = 0;
      *(v19 + 1) = 0;
      *(v19 + 2) = v11;
      *v10 = v19;
      if (*v44[0])
      {
        v44[0] = *v44[0];
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v44[1], v19);
      ++v44[2];
    }

    *(v19 + 5) = tv_sec - a2 + (tv_usec >> 31);
    *(v19 + 6) = v8 | 0xAAAAAAAA00000000;
    v22 = *(this + 1);
    v21 = (this + 8);
    v20 = v22;
    if (v22)
    {
      do
      {
        v23 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v24 = v21;
      do
      {
        v23 = v24[2];
        v16 = *v23 == v24;
        v24 = v23;
      }

      while (v16);
    }

    Timestamp::asString(v44, 0, 9, v42);
    v27 = v23[4];
    v26 = v23 + 4;
    v25 = v27;
    v28 = *(v26 + 23);
    if (v28 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v25;
    }

    if (v28 >= 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v26[1];
    }

    v31 = v43;
    v32 = v42[0];
    if ((v43 & 0x80u) == 0)
    {
      v33 = v42;
    }

    else
    {
      v33 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v34 = v43;
    }

    else
    {
      v34 = v42[1];
    }

    if (v34 >= v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = v34;
    }

    v36 = memcmp(v29, v33, v35);
    if (v36)
    {
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v30 >= v34)
    {
LABEL_46:
      v37 = 1;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_48:
        if (v37)
        {
          v38 = *v21;
          if (*v21)
          {
            do
            {
              v39 = v38;
              v38 = v38[1];
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v21[2];
              v16 = *v39 == v21;
              v21 = v39;
            }

            while (v16);
          }

          v41 = v39[7];
          v40 = v39[8];
          if (v40)
          {
            atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
          }

          *a3 = v41;
          a3[1] = v40;
        }

        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v44, v44[1]);
        return;
      }

LABEL_47:
      operator delete(v32);
      goto LABEL_48;
    }

    v37 = 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v14 = this + 8;
  v13 = *(this + 1);
  if (v13)
  {
    do
    {
      v15 = v13;
      v13 = *(v13 + 1);
    }

    while (v13);
  }

  else
  {
    do
    {
      v15 = *(v14 + 2);
      v16 = *v15 == v14;
      v14 = v15;
    }

    while (v16);
  }

  v18 = *(v15 + 7);
  v17 = *(v15 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = v18;
  a3[1] = v17;
}

void sub_29736948C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(va, v5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void std::allocate_shared[abi:ne200100]<LogInfo,std::allocator<LogInfo>,std::string const&,abm::helper::SystemLogsMode &,std::string const&,0>(uint64_t a1@<X1>, int *a2@<X2>, uint64_t a3@<X3>, std::string **a4@<X8>)
{
  v8 = operator new(0x50uLL);
  v9 = v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = &unk_2A1E3AB70;
  v10 = v8 + 1;
  v11 = *a2;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8 + 1, *a1, *(a1 + 8));
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *a1;
    v8[1].__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  LODWORD(v9[2].__r_.__value_.__l.__data_) = v11;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 56), *a3, *(a3 + 8));
  }

  else
  {
    *&v9[2].__r_.__value_.__r.__words[1] = *a3;
    v9[3].__r_.__value_.__r.__words[0] = *(a3 + 16);
  }

  *a4 = v10;
  a4[1] = v9;
}

void sub_2973695B0(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v4);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LogInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3AB70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<LogInfo>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 24);

  operator delete(v2);
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    while (1)
    {
      v11 = v6;
      v14 = v6[4];
      v12 = v6 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = v12[1];
      }

      if (v17 >= v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v20 = memcmp(v16, v9, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            return v11;
          }
        }

        else if (v17 >= v10)
        {
          return v11;
        }

        v6 = v11[1];
        if (!v6)
        {
          v7 = v11 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v10 >= v17)
        {
          goto LABEL_22;
        }

LABEL_8:
        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v11 = a1 + 1;
LABEL_29:
  v21 = operator new(0x48uLL);
  v22 = v21;
  v23 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v21 + 32), *v23, *(v23 + 1));
  }

  else
  {
    v24 = *v23;
    *(v21 + 6) = *(v23 + 2);
    *(v21 + 2) = v24;
  }

  v22[7] = 0;
  v22[8] = 0;
  *v22 = 0;
  v22[1] = 0;
  v22[2] = v11;
  *v7 = v22;
  v25 = **a1;
  if (v25)
  {
    *a1 = v25;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v22);
  a1[2] = (a1[2] + 1);
  return v22;
}

void sub_297369840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::power::assertion::HandleRaw>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::power::assertion::HandleRaw>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 64);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(a2 + 55) < 0)
  {
LABEL_12:
    operator delete(*(a2 + 32));
  }

LABEL_13:
  operator delete(a2);
  return v4;
}

void sys::getCurrentBootSessionUUID(_BYTE *a1@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  *&v16[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__s = v3;
  *v16 = v3;
  v12 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", __s, &v12, 0, 0) && v12 == 37)
  {
    v4 = strlen(__s);
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

      v8 = operator new(v7);
      *(a1 + 1) = v5;
      *(a1 + 2) = v7 | 0x8000000000000000;
      *a1 = v8;
      a1 = v8;
    }

    else
    {
      a1[23] = v4;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    memcpy(a1, __s, v5);
LABEL_16:
    a1 += v5;
    goto LABEL_17;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
    v6 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_19:
    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315138;
    v14 = v11;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Failed to get boot session uuid, error: %s", buf, 0xCu);
    goto LABEL_10;
  }

  v6 = qword_2A1399CD8;
  if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

LABEL_10:
  a1[23] = 0;
LABEL_17:
  *a1 = 0;
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t sys::updateBootSessionUUID(sys *this)
{
  memset(&v19, 170, sizeof(v19));
  sys::getCurrentBootSessionUUID(&v19);
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&v21);
    v2 = *&v21.__r_.__value_.__l.__data_;
    *&v21.__r_.__value_.__l.__data_ = 0uLL;
    v3 = *(&off_2A1399498 + 1);
    off_2A1399498 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    size = v21.__r_.__value_.__l.__size_;
    if (v21.__r_.__value_.__l.__size_ && !atomic_fetch_add((v21.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v1 = off_2A1399498;
  }

  v17 = v1;
  v18 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBE8F8];
  v6 = strlen(*MEMORY[0x29EDBE8F8]);
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
    __dst[1] = v7;
    v16 = v9 | 0x8000000000000000;
    __dst[0] = v8;
LABEL_20:
    memmove(v8, v5, v7);
    *(v7 + v8) = 0;
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  HIBYTE(v16) = v6;
  v8 = __dst;
  if (v6)
  {
    goto LABEL_20;
  }

  LOBYTE(__dst[0]) = 0;
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    __p = v19;
    goto LABEL_22;
  }

LABEL_21:
  std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
LABEL_22:
  os_unfair_lock_lock(v1 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v20;
  }

  if (v16 >= 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  v11 = ctu::cf::plist_adapter::set<std::string>(v1, &v21, v10);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      os_unfair_lock_unlock(v1 + 10);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v1 + 10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_35:
    v12 = v18;
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(__dst[0]);
  v12 = v18;
  if (!v18)
  {
    goto LABEL_42;
  }

LABEL_41:
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v11;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_43:
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_297369E70(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

BOOL sys::isBootSessionChanged(sys *this)
{
  memset(v28, 170, sizeof(v28));
  sys::getCurrentBootSessionUUID(v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v2 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v3 = *(&off_2A1399498 + 1);
    off_2A1399498 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A1399498;
  }

  v23 = v1;
  v24 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBE8F8];
  v6 = strlen(*MEMORY[0x29EDBE8F8]);
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
    __p[1] = v7;
    v22 = v9 | 0x8000000000000000;
    __p[0] = v8;
    goto LABEL_19;
  }

  HIBYTE(v22) = v6;
  v8 = __p;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  os_unfair_lock_lock((v1 + 40));
  if (v22 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v29, v10);
  v11 = (**v1)(v1, v29);
  if (v11)
  {
    ctu::cf::assign();
    CFRelease(v11);
  }

  MEMORY[0x29C26DF80](&v29);
  os_unfair_lock_unlock((v1 + 40));
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = SHIBYTE(v28[2]);
  if (SHIBYTE(v28[2]) >= 0)
  {
    v14 = HIBYTE(v28[2]);
  }

  else
  {
    v14 = v28[1];
  }

  v15 = HIBYTE(v27);
  v16 = SHIBYTE(v27);
  if (v27 < 0)
  {
    v15 = v26;
  }

  if (v14 == v15)
  {
    if (SHIBYTE(v28[2]) >= 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = v28[0];
    }

    if (v27 >= 0)
    {
      v18 = &v25;
    }

    else
    {
      v18 = v25;
    }

    v19 = memcmp(v17, v18, v14) != 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 1;
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }
  }

  operator delete(v25);
LABEL_46:
  if (v13 < 0)
  {
    operator delete(v28[0]);
  }

  return v19;
}

void sub_29736A214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sys::isHardwareModelChanged(sys *this)
{
  v35 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_2A1399498 + 1);
    off_2A1399498 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A1399498;
  }

  __p = v1;
  v30 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBEA50];
  v6 = strlen(*MEMORY[0x29EDBEA50]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
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
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v35);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v12 = v35;
  cf = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v32, v12);
  memset(__dst, 170, 24);
  v13 = *MEMORY[0x29EDBF8A8];
  v14 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_p = operator new(v18);
    v30 = v15;
    v31 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v31) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_38:
    memmove(p_p, v13, v15);
  }

  v19 = *MEMORY[0x29EDBE988];
  *(&v15->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v36, v19);
  ctu::cf::map_adapter::getString();
  v20 = MEMORY[0x29C26DF80](&v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  config::hw::product(v20);
  v21 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = HIBYTE(v31);
  v24 = SHIBYTE(v31);
  if (v31 < 0)
  {
    v23 = v30;
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v31 >= 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    v17 = memcmp(v25, v26, v22) != 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v17 = 1;
  if (SHIBYTE(v31) < 0)
  {
LABEL_56:
    operator delete(__p);
    v21 = BYTE7(__dst[1]);
  }

LABEL_57:
  if ((v21 & 0x80) == 0)
  {
    MEMORY[0x29C26DFC0](v32);
    v27 = cf;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_61;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x29C26DFC0](v32);
  v27 = cf;
  if (cf)
  {
LABEL_61:
    CFRelease(v27);
  }

  return v17;
}

void sub_29736A678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C26DFC0](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C26DFC0](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

BOOL sys::isFWVersionChanged(const void **a1)
{
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__dst);
    v3 = __dst[0];
    __dst[0] = 0uLL;
    v4 = *(&off_2A1399498 + 1);
    off_2A1399498 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399498;
  }

  __p = v2;
  v29 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x29EDBEA50];
  v7 = strlen(*MEMORY[0x29EDBEA50]);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *(&__dst[0] + 1) = v8;
    *&__dst[1] = v10 | 0x8000000000000000;
    *&__dst[0] = v9;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_19:
    memmove(v9, v6, v8);
  }

  *(v9 + v8) = 0;
  os_unfair_lock_lock(v2 + 10);
  Preferences::getPreference<__CFDictionary const*>(v2, __dst, &cf);
  os_unfair_lock_unlock(v2 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v13 = cf;
  v32 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v31[0] = 0xAAAAAAAAAAAAAAAALL;
  v31[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v31, v13);
  memset(__dst, 170, 24);
  v14 = *MEMORY[0x29EDBF8A8];
  v15 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v15 | 7) + 1;
    }

    p_p = operator new(v19);
    v29 = v16;
    v30 = v19 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v30) = v15;
  p_p = &__p;
  if (v15)
  {
LABEL_38:
    memmove(p_p, v14, v16);
  }

  v20 = *MEMORY[0x29EDBEC00];
  *(&v16->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v35, v20);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26DF80](&v35);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  v21 = SBYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = *(a1 + 23);
  v24 = v23;
  if (v23 < 0)
  {
    v23 = a1[1];
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v24 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    v18 = memcmp(v25, v26, v22) != 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v18 = 1;
    if ((SBYTE7(__dst[1]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  operator delete(*&__dst[0]);
LABEL_57:
  MEMORY[0x29C26DFC0](v31);
  if (v32)
  {
    CFRelease(v32);
  }

  return v18;
}

BOOL sys::isOSVersionChanged(sys *this)
{
  v35 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_2A1399498 + 1);
    off_2A1399498 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A1399498;
  }

  __p = v1;
  v30 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBEA50];
  v6 = strlen(*MEMORY[0x29EDBEA50]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
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
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v35);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v12 = v35;
  cf = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v32, v12);
  memset(__dst, 170, 24);
  v13 = *MEMORY[0x29EDBF8A8];
  v14 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_p = operator new(v18);
    v30 = v15;
    v31 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v31) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_38:
    memmove(p_p, v13, v15);
  }

  v19 = *MEMORY[0x29EDBEC08];
  *(&v15->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v36, v19);
  ctu::cf::map_adapter::getString();
  v20 = MEMORY[0x29C26DF80](&v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  config::build::version(v20);
  v21 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = HIBYTE(v31);
  v24 = SHIBYTE(v31);
  if (v31 < 0)
  {
    v23 = v30;
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v31 >= 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    v17 = memcmp(v25, v26, v22) != 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v17 = 1;
  if (SHIBYTE(v31) < 0)
  {
LABEL_56:
    operator delete(__p);
    v21 = BYTE7(__dst[1]);
  }

LABEL_57:
  if ((v21 & 0x80) == 0)
  {
    MEMORY[0x29C26DFC0](v32);
    v27 = cf;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_61;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x29C26DFC0](v32);
  v27 = cf;
  if (cf)
  {
LABEL_61:
    CFRelease(v27);
  }

  return v17;
}

void sub_29736AF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C26DFC0](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C26DFC0](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t sys::getDeviceBootTime(sys *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = 16;
  *v5 = 0x1500000001;
  if (sysctl(v5, 2u, v4, &v3, 0, 0) >= 0)
  {
    result = v4[0];
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __cxx_global_var_init_14()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t BootControllerDAL::prepare(capabilities::radio *a1, std::string *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  capabilities::radio::personalizedFirmwarePath(__p, a1);
  v4 = ctu::fs::file_exists();
  is_directory = ctu::fs::is_directory();
  if (v4)
  {
    if (is_directory)
    {
      goto LABEL_8;
    }

    v6 = *(a1 + 1);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      v15 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v15 = __p[0];
      }

      *buf = 136315138;
      v18 = v15;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Firmware path is not a directory (%s)", buf, 0xCu);
    }

    capabilities::trace::allowed(v7);
    v8 = "Baseband Firmware Path Invalid";
    v9 = 30;
  }

  else
  {
    v10 = *(a1 + 1);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      v14 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v14 = __p[0];
      }

      *buf = 136315138;
      v18 = v14;
      _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "Firmware directory does not exist (%s)", buf, 0xCu);
    }

    capabilities::trace::allowed(v11);
    v8 = "Baseband Firmware Path Not Found";
    v9 = 32;
  }

  std::string::__assign_external(a2, v8, v9);
LABEL_8:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_29736B2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BootControllerDAL::bootModem(uint64_t a1, uint64_t a2)
{
  v92 = *MEMORY[0x29EDCA608];
  v80 = 0xAAAAAAAAAAAAAAAALL;
  v79 = 0xAAAAAAAAAAAAAAAALL;
  v4 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v5 = xmmword_2A1399990;
  if (!xmmword_2A1399990)
  {
    ctu::XpcJetsamAssertion::create_default_global(buf, v4);
    v6 = *buf;
    *&buf[8] = 0;
    *buf = 0;
    v7 = *(&xmmword_2A1399990 + 1);
    xmmword_2A1399990 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = xmmword_2A1399990;
  }

  v9 = *(&xmmword_2A1399990 + 1);
  *&v66[0] = v5;
  *(&v66[0] + 1) = *(&xmmword_2A1399990 + 1);
  if (*(&xmmword_2A1399990 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A1399990 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v78 = 13;
  strcpy(__p, "Booting modem");
  ctu::XpcJetsamAssertion::createActivity();
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  memset(&v76, 0, sizeof(v76));
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v11 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v11, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v11;
    v10 = operator new(0x20uLL);
    *v10 = &unk_2A1E34960;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = v11;
    v12 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v11;
    *(&xmmword_2A1399338 + 1) = v10;
    if (!v12)
    {
      *&v66[0] = v11;
      *(&v66[0] + 1) = v10;
      goto LABEL_21;
    }

    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  v10 = *(&xmmword_2A1399338 + 1);
  v11 = xmmword_2A1399338;
  v66[0] = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_21:
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  buf[23] = 20;
  strcpy(buf, "boot::debugArguments");
  memset(&v75, 0, sizeof(v75));
  ctu::cf::MakeCFString::MakeCFString(&v72, buf);
  v13 = (**v11)(v11, v72);
  if (v13)
  {
    v14 = ctu::cf::assign();
    CFRelease(v13);
    MEMORY[0x29C26DF80](&v72);
    if (v14)
    {
      goto LABEL_36;
    }

    v15 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    MEMORY[0x29C26DF80](&v72);
    v15 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((v15 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(&v76, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
      }

      else
      {
        v76 = v75;
      }

      goto LABEL_36;
    }
  }

  if ((v15 & 0x80u) == 0)
  {
    v16 = &v75;
  }

  else
  {
    v16 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    size = v15;
  }

  else
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  std::string::__assign_no_alias<false>(&v76.__r_.__value_.__l.__data_, v16, size);
LABEL_36:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
    if ((buf[23] & 0x80000000) == 0)
    {
LABEL_38:
      v18 = *(&v66[0] + 1);
      if (!*(&v66[0] + 1))
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }
  }

  else if ((buf[23] & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*buf);
  v18 = *(&v66[0] + 1);
  if (!*(&v66[0] + 1))
  {
    goto LABEL_44;
  }

LABEL_42:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_44:
  v19 = MEMORY[0x29EDC85F8] + 16;
  v72 = MEMORY[0x29EDC85F8] + 16;
  v73 = 0xAAAAAAAAAAAAAA00;
  memset(&v74, 0, sizeof(v74));
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__assign_no_alias<true>(&v74, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v74 = v76;
  }

  BasebandBootLogger::getBootLoggerType();
  v20 = MEMORY[0x29EDC85F8] + 16;
  v69 = MEMORY[0x29EDC85F8] + 16;
  v70 = v73;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v74;
  }

  BasebandBootLogger::create();
  v21 = *buf;
  *&buf[8] = 0;
  *buf = 0;
  v22 = *(a1 + 80);
  *(a1 + 72) = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *&buf[8];
    if (!*&buf[8])
    {
LABEL_54:
      v69 = v20;
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v23 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_54;
    }
  }

  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_54;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  v69 = v20;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_55:
    operator delete(v71.__r_.__value_.__l.__data_);
  }

LABEL_56:
  v67 = xmmword_297433988;
  memset(v68, 170, sizeof(v68));
  memset(&v66[4], 170, 64);
  *(&v66[0] + 1) = 0xAAAAAAAAAAAAAA00;
  memset(&v66[1], 170, 48);
  *&v66[0] = MEMORY[0x29EDC85F0] + 16;
  LOBYTE(v66[2]) = 0;
  BYTE8(v66[2]) = 0;
  LOBYTE(v66[4]) = 0;
  BYTE8(v66[4]) = 0;
  LOBYTE(v66[6]) = 0;
  BYTE8(v66[6]) = 0;
  LOBYTE(v68[0]) = 0;
  LOBYTE(v68[3]) = 0;
  v24 = *(a1 + 80);
  v68[1] = *(a1 + 72);
  v68[2] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  LOBYTE(v68[3]) = 1;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v49 = MEMORY[0x29EDC85F0] + 16;
  LOBYTE(v50) = 0;
  v51 = 0;
  LOBYTE(v52) = 0;
  v54 = 0;
  if (LOBYTE(v66[4]) == 1)
  {
    v52 = *(&v66[2] + 8);
    v53 = *(&v66[3] + 1);
    v66[3] = 0uLL;
    *(&v66[2] + 1) = 0;
    v54 = 1;
    LOBYTE(v55) = 0;
    v57 = 0;
    if (LOBYTE(v66[6]) != 1)
    {
LABEL_64:
      LOBYTE(v58) = 0;
      v62 = 0;
      if (LOBYTE(v68[0]) != 1)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    }
  }

  else
  {
    LOBYTE(v55) = 0;
    v57 = 0;
    if (LOBYTE(v66[6]) != 1)
    {
      goto LABEL_64;
    }
  }

  v55 = *(&v66[4] + 8);
  v56 = *(&v66[5] + 1);
  v66[5] = 0uLL;
  *(&v66[4] + 1) = 0;
  v57 = 1;
  LOBYTE(v58) = 0;
  v62 = 0;
  if (LOBYTE(v68[0]) != 1)
  {
    goto LABEL_76;
  }

LABEL_65:
  v25 = *(&v66[6] + 1);
  v26 = *&v66[7];
  *(&v66[6] + 1) = 0;
  *&v66[7] = 0;
  v58 = v25;
  v59 = v26;
  v60[0] = *(&v66[7] + 1);
  v60[1] = v67;
  v61 = DWORD2(v67);
  if (v67)
  {
    v27 = *(*(&v66[7] + 1) + 8);
    if ((v26 & (v26 - 1)) != 0)
    {
      if (v27 >= v26)
      {
        v27 %= v26;
      }
    }

    else
    {
      v27 &= v26 - 1;
    }

    *(v25 + 8 * v27) = v60;
    *(&v66[7] + 1) = 0;
    *&v67 = 0;
  }

  v62 = 1;
LABEL_76:
  v63 = *&v68[1];
  v68[1] = 0;
  v68[2] = 0;
  v64 = 1;
  BasebandBooter::create();
  BasebandBooterParams::~BasebandBooterParams(&v49);
  if (!v65)
  {
    v34 = *(a1 + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "Failed to create baseband booter";
      _os_log_error_impl(&dword_297288000, v34, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    std::string::__assign_external(a2, "Failed to create baseband booter", 0x20uLL);
    v28 = 0;
LABEL_84:
    v35 = v65;
    v65 = 0;
    if (!v35)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v48 = 1;
  v28 = (*(*v65 + 24))(v65, &v48);
  if (v28)
  {
    goto LABEL_84;
  }

  v91 = 0xAAAAAAAAAAAAAAAALL;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90[7] = v29;
  v90[8] = v29;
  v90[5] = v29;
  v90[6] = v29;
  v90[3] = v29;
  v90[4] = v29;
  v90[1] = v29;
  v90[2] = v29;
  v89 = v29;
  v90[0] = v29;
  v87 = v29;
  v88 = v29;
  v85 = v29;
  v86 = v29;
  *&buf[16] = v29;
  v84 = v29;
  *buf = v29;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], "Failed to boot baseband (ACFU error code = ", 43);
  v31 = MEMORY[0x29C26EA50](v30, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "); please check system logs for more details", 44);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v89) & 0x10) != 0)
  {
    v39 = v89;
    if (v89 < *(&v86 + 1))
    {
      *&v89 = *(&v86 + 1);
      v39 = *(&v86 + 1);
    }

    v40 = v86;
    v32 = v39 - v86;
    if ((v39 - v86) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_112;
    }
  }

  else
  {
    if ((BYTE8(v89) & 8) == 0)
    {
      v32 = 0;
      __dst[23] = 0;
      v33 = __dst;
      goto LABEL_106;
    }

    v40 = *(&v84 + 1);
    v32 = *(&v85 + 1) - *(&v84 + 1);
    if (*(&v85 + 1) - *(&v84 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_112:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v32 | 7) + 1;
    }

    v33 = operator new(v41);
    *&__dst[8] = v32;
    *&__dst[16] = v41 | 0x8000000000000000;
    *__dst = v33;
    goto LABEL_105;
  }

  __dst[23] = v32;
  v33 = __dst;
  if (v32)
  {
LABEL_105:
    memmove(v33, v40, v32);
  }

LABEL_106:
  v33[v32] = 0;
  v42 = *(a1 + 8);
  if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    if (__dst == a2)
    {
      goto LABEL_121;
    }

    goto LABEL_108;
  }

  v46 = __dst;
  if (__dst[23] < 0)
  {
    v46 = *__dst;
  }

  *v81 = 136315138;
  v82 = v46;
  _os_log_error_impl(&dword_297288000, v42, OS_LOG_TYPE_ERROR, "%s", v81, 0xCu);
  if (__dst != a2)
  {
LABEL_108:
    if (*(a2 + 23) < 0)
    {
      if (__dst[23] >= 0)
      {
        v43 = __dst;
      }

      else
      {
        v43 = *__dst;
      }

      if (__dst[23] >= 0)
      {
        v44 = __dst[23];
      }

      else
      {
        v44 = *&__dst[8];
      }

      std::string::__assign_no_alias<false>(a2, v43, v44);
    }

    else if ((__dst[23] & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a2, *__dst, *&__dst[8]);
    }

    else
    {
      *a2 = *__dst;
      *(a2 + 16) = *&__dst[16];
    }
  }

LABEL_121:
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  *buf = *MEMORY[0x29EDC9528];
  v45 = *(MEMORY[0x29EDC9528] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9528] + 64);
  *&buf[16] = v45;
  *&buf[24] = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v88) < 0)
  {
    operator delete(*(&v87 + 1));
  }

  *&buf[24] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v84);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](v90);
  v35 = v65;
  v65 = 0;
  if (v35)
  {
LABEL_85:
    (*(*v35 + 8))(v35);
  }

LABEL_86:
  BasebandBooterParams::~BasebandBooterParams(v66);
  v72 = v19;
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

LABEL_91:
    operator delete(v76.__r_.__value_.__l.__data_);
    v36 = v80;
    if (!v80)
    {
      goto LABEL_94;
    }

    goto LABEL_92;
  }

  operator delete(v74.__r_.__value_.__l.__data_);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_91;
  }

LABEL_88:
  v36 = v80;
  if (!v80)
  {
    goto LABEL_94;
  }

LABEL_92:
  if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

LABEL_94:
  v37 = *MEMORY[0x29EDCA608];
  return v28;
}