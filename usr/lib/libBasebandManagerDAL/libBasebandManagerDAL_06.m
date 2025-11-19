void sub_2972CD10C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void SharedData::create_default_global(atomic_ullong *a1@<X8>)
{
  v3 = operator new(0x60uLL);
  __p = v3;
  strcpy(v3, "/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist");
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  v9 = xmmword_29742FFF0;
  *&v10.st_dev = v4;
  if (!stat(v3, &v10) && remove(v3, v5))
  {
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    unlink(p_p);
  }

  v7 = operator new(0x30uLL);
  MEMORY[0x29C26DFD0](v7, @"com.apple.AppleBasebandManager.data", *MEMORY[0x29EDB8FB0]);
  v7[3] = 0;
  v7[4] = 0;
  *(v7 + 10) = 0;
  std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(a1, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_2972CD29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E35BC8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 24) = a2;
        *(a2 + 32) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 24) = a2;
      *(a2 + 32) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_2972CD404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = MEMORY[0x29C26DFE0](v1);

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002974300F5)
  {
    if (((v2 & 0x80000002974300F5 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002974300F5))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002974300F5 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x29C26DFE0](v1);
    operator delete(v4);
    return v2;
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
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

BOOL ctu::cf::plist_adapter::set<__CFArray *>(uint64_t a1, CFTypeRef cf, const __CFString *a3, int a4)
{
  if (!cf)
  {
    return 0;
  }

  CFRetain(cf);
  v8 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSetValue(a3, cf, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
  if (a4)
  {
    v9 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v8) != 0;
  }

  else
  {
    v9 = 1;
  }

  CFRelease(cf);
  return v9;
}

void sub_2972CD6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

void support::fs::SyncFile::create(uint64_t a1@<X0>, int a2@<W1>, size_t a3@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((a3 & (a3 - 1)) != 0)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v12;
    v23 = v12;
    v21[1] = v12;
    v21[2] = v12;
    v21[0] = v12;
    v19 = operator new(0x30uLL);
    v20 = xmmword_297430140;
    strcpy(v19, "com.apple.telephony.basebandservices.support");
    v18 = 8;
    strcpy(__p, "syncfile");
    support::log::client::client(v21, &v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
LABEL_10:
        v13 = *v22;
        if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }
    }

    else if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v19);
    v13 = *v22;
    if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      *a4 = 0;
      a4[1] = 0;
      *&v21[0] = &unk_2A1E35F08;
      v14 = v23;
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_12:
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_21;
    }

LABEL_18:
    *buf = 134217984;
    v25 = a3;
    _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "error: buffer size provided (%lu) must be a power of two", buf, 0xCu);
    *a4 = 0;
    a4[1] = 0;
    *&v21[0] = &unk_2A1E35F08;
    v14 = v23;
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_4;
    }

LABEL_15:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_21;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = operator new(0x2F8uLL);
  support::fs::SyncFile::SyncFile(v8, a1, a2, a3);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  v9->__shared_owners_ = 0;
  p_shared_owners = &v9->__shared_owners_;
  v9->__vftable = &unk_2A1E35E80;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v8;
  a4[1] = v9;
  v11 = *(v8 + 2);
  if (!v11)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v11->__shared_owners_ != -1)
  {
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(v8 + 1) = v8;
  *(v8 + 2) = v9;
  std::__shared_weak_count::__release_weak(v11);
  if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

LABEL_22:
  (v9->__on_zero_shared)(v9);
  v16 = *MEMORY[0x29EDCA608];

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2972CDA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    dispatch_barrier_async_f(v20[3], v20, std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile*)#1}::operator() const(support::fs::SyncFile*)::{lambda(void *)#1}::__invoke);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void support::log::client::~client(support::log::client *this)
{
  *this = &unk_2A1E35F08;
  v1 = *(this + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1E35F08;
  v1 = *(this + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

uint64_t support::fs::SyncFile::SyncFile(uint64_t a1, __int128 *a2, int a3, size_t a4)
{
  v8 = dispatch_queue_create("SyncFile", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    *(a1 + 32) = 0;
    dispatch_release(v9);
    *a1 = &unk_2A1E35C18;
    v10 = (a1 + 40);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v11 = *a2;
      v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v10->__r_.__value_.__l.__data_ = v11;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = &unk_2A1E35C18;
    v10 = (a1 + 40);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
LABEL_6:
  *(a1 + 544) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = &unk_2A1E35DD0;
  *(a1 + 496) = &unk_2A1E35DF8;
  std::ios_base::init((a1 + 496), (a1 + 88));
  *(a1 + 632) = 0;
  *(a1 + 640) = -1;
  MEMORY[0x29C26E940](a1 + 88);
  *(a1 + 648) = a3;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  if (a4)
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = operator new(a4);
    *(a1 + 656) = v12;
    v13 = &v12[a4];
    *(a1 + 672) = &v12[a4];
    bzero(v12, a4);
    *(a1 + 664) = v13;
  }

  v17 = operator new(0x30uLL);
  v18 = xmmword_297430140;
  strcpy(v17, "com.apple.telephony.basebandservices.support");
  v16 = 8;
  strcpy(__p, "syncfile");
  support::log::client::client((a1 + 680), &v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_11:
      if (*(a1 + 664) == *(a1 + 656))
      {
        return a1;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v17);
  if (*(a1 + 664) != *(a1 + 656))
  {
LABEL_15:
    (*(*(a1 + 88) + 24))(a1 + 88);
  }

  return a1;
}

void sub_2972CDEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  support::log::client::~client((v21 + 680));
  v27 = *v25;
  if (*v25)
  {
    *(v21 + 664) = v27;
    operator delete(v27);
  }

  std::fstream::~fstream(v24);
  MEMORY[0x29C26EC90](v23);
  if (*(v21 + 63) < 0)
  {
    operator delete(*v22);
  }

  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v20);
  _Unwind_Resume(a1);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x29C26E950](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](v2);
  return a1;
}

void support::fs::SyncFile::open(support::fs::SyncFile *this)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN7support2fs8SyncFile4openEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_3;
  v9[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E35EC8;
  block[5] = v3;
  v11 = v5;
  p_shared_owners = &v5->__shared_owners_;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v6, block);
  v8 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void support::fs::SyncFile::open_sync(support::fs::SyncFile *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v13 = 136315138;
    v14 = v3;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_INFO, "Opening file '%s'", &v13, 0xCu);
  }

  if (!*(this + 26))
  {
    if (*(this + 63) < 0)
    {
      v7 = *(this + 5);
    }

    v8 = *(this + 162);
    v9 = std::filebuf::open();
    v10 = (this + *(*(this + 8) - 24) + 64);
    if (!v9)
    {
      std::ios_base::clear(v10, v10->__rdstate_ | 4);
      v12 = *MEMORY[0x29EDCA608];
      return;
    }

    std::ios_base::clear(v10, 0);
    goto LABEL_14;
  }

  v4 = **(this + 91);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
LABEL_14:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = (this + 40);
  if (*(this + 63) < 0)
  {
    v5 = *v5;
  }

  v13 = 136315138;
  v14 = v5;
  _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_INFO, "Skipped open, file '%s' is already open", &v13, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}

void support::fs::SyncFile::close(support::fs::SyncFile *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void support::fs::SyncFile::close_sync(support::fs::SyncFile *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v8 = 136315138;
    v9 = v3;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_INFO, "Closing file '%s'", &v8, 0xCu);
  }

  if (*(this + 26))
  {
    support::fs::SyncFile::flush_sync(this);
    if (!std::filebuf::close())
    {
      v4 = (this + *(*(this + 8) - 24) + 64);
      std::ios_base::clear(v4, v4->__rdstate_ | 4);
    }
  }

  else
  {
    v5 = **(this + 91);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_INFO, "Skipped close, file '%s' is not open", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void support::fs::SyncFile::flush_sync(support::fs::SyncFile *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_INFO, "Flushing file '%s'", &v7, 0xCu);
  }

  if (*(this + 26))
  {
    std::ostream::flush();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (this + 40);
      if (*(this + 63) < 0)
      {
        v5 = *v5;
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_INFO, "Skipped flush, file '%s' is not open", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t support::fs::SyncFile::isOpen(support::fs::SyncFile *this)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNKS3_6isOpenEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_19;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_21;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_20;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void support::fs::SyncFile::~SyncFile(void **this)
{
  *this = &unk_2A1E35C18;
  support::fs::SyncFile::close_sync(this);
  this[85] = &unk_2A1E35F08;
  v2 = this[93];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[82];
  if (v3)
  {
    this[83] = v3;
    operator delete(v3);
  }

  MEMORY[0x29C26E950](this + 11);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](this + 62);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  support::fs::SyncFile::~SyncFile(this);

  operator delete(v1);
}

void support::fs::SyncFile::flush(support::fs::SyncFile *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

BOOL support::fs::SyncFile::write_sync(support::fs::SyncFile *this, const void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 26);
  if (v2)
  {
    std::ostream::write();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = (this + 40);
      if (*(this + 63) < 0)
      {
        v7 = *v7;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "error: Failed to write, file '%s' is not open", &v8, 0xCu);
    }
  }

  result = v2 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972CEB3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t support::fs::SyncFile::write(support::fs::SyncFile *this, const void *a2, uint64_t a3)
{
  v6[0] = this;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v7[3] = &__block_descriptor_tmp_22;
  v7[4] = this + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_21;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_20;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15 & 1;
}

BOOL support::fs::SyncFile::read_sync(support::fs::SyncFile *this, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 26);
  if (v2)
  {
    std::istream::read();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = (this + 40);
      if (*(this + 63) < 0)
      {
        v7 = *v7;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "error: Failed to read, file '%s' is not open", &v8, 0xCu);
    }
  }

  result = v2 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972CED68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t support::fs::SyncFile::read(support::fs::SyncFile *this, void *a2, uint64_t a3)
{
  v6[0] = this;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_4readEPvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v7[3] = &__block_descriptor_tmp_23;
  v7[4] = this + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_21;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_20;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15 & 1;
}

uint64_t support::fs::SyncFile::getSize(support::fs::SyncFile *this)
{
  v4[0] = this;
  v4[1] = &v5;
  v5 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_7getSizeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v6[3] = &__block_descriptor_tmp_24;
  v6[4] = this + 8;
  v6[5] = v4;
  v7 = v6;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v14 = -86;
    block = MEMORY[0x29EDCA5F8];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_21;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v14 = -86;
    block = MEMORY[0x29EDCA5F8];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_20;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v1, &block);
  }

  return v14;
}

uint64_t std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x29C26E950](a1 + 3);

  return std::iostream::~basic_iostream();
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x29C26E950](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x29C26EC90);
}

{
  v1 = a1 - 2;
  v2 = a1 + 52;
  MEMORY[0x29C26E950](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](v2);

  operator delete(v1);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x29C26E950](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x29C26EC90);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x29C26E950](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](v1 + 54);

  operator delete(v1);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v2 = a1 + 54;
  MEMORY[0x29C26E950](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](v2);

  operator delete(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile*)#1}::operator() const(support::fs::SyncFile*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  support::fs::SyncFile::flush_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_2972CF89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    v4 = v1[1];
    v5 = v1[2];
    std::ostream::write();
  }

  else
  {
    v6 = **(v2 + 728);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v9 = *v9;
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "error: Failed to write, file '%s' is not open", &v10, 0xCu);
    }
  }

  result = v3 != 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972CF998(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_4readEPvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    v4 = v1[1];
    v5 = v1[2];
    std::istream::read();
  }

  else
  {
    v6 = **(v2 + 728);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v9 = *v9;
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "error: Failed to read, file '%s' is not open", &v10, 0xCu);
    }
  }

  result = v3 != 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972CFA84(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_7getSizeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v4;
    v16 = v4;
    v13 = v4;
    v14 = v4;
    v11 = v4;
    v12 = v4;
    *buf = v4;
    v10 = v4;
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *v1[1] = 0;
    std::istream::seekg();
  }

  else
  {
    v5 = **(v2 + 728);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "error: Failed to get file size, %s is not open", buf, 0xCu);
    }
  }

  result = v3 != 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297288000);
  }

  return result;
}

BOOL BasebandStats::initFromDisk(BasebandStats *this)
{
  v23 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v3 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v4 = *(&off_2A1399498 + 1);
    off_2A1399498 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399498;
  }

  v6 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  HIBYTE(v22) = 13;
  strcpy(__p, "HealthEventDB");
  os_unfair_lock_lock((v2 + 40));
  Preferences::getPreference<__CFDictionary const*>(v2, __p, &v23);
  os_unfair_lock_unlock((v2 + 40));
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else if (!v6)
  {
LABEL_16:
    v7 = v23;
    if (v23)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  v7 = v23;
  if (!v23)
  {
    return 0;
  }

LABEL_17:
  v20[2] = v7;
  CFRetain(v7);
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v20, v7);
  ctu::cf::MakeCFString::MakeCFString(__p, "KeyBasebandStats");
  v8 = ctu::cf::map_adapter::copyCFDictionaryRef(v20, __p[0]);
  MEMORY[0x29C26DF80](__p);
  v19[3] = v8;
  v9 = v8 != 0;
  if (v8)
  {
    v19[2] = v8;
    CFRetain(v8);
    v19[0] = 0xAAAAAAAAAAAAAAAALL;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v19, v8);
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF490]);
    Int = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26DF80](__p);
    *(this + 1) = Int;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF4F0]);
    v11 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26DF80](__p);
    *(this + 2) = v11;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF2C0]);
    v12 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26DF80](__p);
    *(this + 20) = v12;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF2C8]);
    v13 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26DF80](__p);
    *(this + 21) = v13;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF408]);
    v14 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26DF80](__p);
    *(this + 3) = v14;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBEF58]);
    ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26DF80](__p);
    *(this + 4) = 0;
    v15 = *MEMORY[0x29EDBF090];
    __p[0] = 0;
    __p[1] = 0;
    v22 = 0;
    ctu::cf::MakeCFString::MakeCFString(&v24, v15);
    ctu::cf::map_adapter::getString();
    MEMORY[0x29C26DF80](&v24);
    if (*(this + 111) < 0)
    {
      operator delete(*(this + 11));
      *(this + 88) = 0;
      *(this + 111) = 0;
      if ((v18 & 0x80000000) == 0)
      {
LABEL_20:
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
LABEL_21:
          ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF3F8]);
          ctu::cf::map_adapter::getBool(v19, __p[0]);
          MEMORY[0x29C26DF80](__p);
          *(this + 64) = 0;
          ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF640]);
          ctu::cf::map_adapter::getInt(v19, __p[0]);
          MEMORY[0x29C26DF80](__p);
          *(this + 9) = 0;
          MEMORY[0x29C26DFC0](v19);
          CFRelease(v8);
          CFRelease(v8);
          goto LABEL_22;
        }

LABEL_28:
        operator delete(__p[0]);
        goto LABEL_21;
      }
    }

    else
    {
      *(this + 88) = 0;
      *(this + 111) = 0;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    operator delete(v17);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_22:
  MEMORY[0x29C26DFC0](v20);
  CFRelease(v7);
  return v9;
}

void sub_2972D0130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, const void *a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x29C26DF80](&__p);
  MEMORY[0x29C26DFC0](&a12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a15);
  MEMORY[0x29C26DFC0](&a16);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a20);
  _Unwind_Resume(a1);
}

void BasebandStats::updateStats(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, __CFDictionary **a3@<X8>)
{
  v6 = *MEMORY[0x29EDBF490];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF490]))
  {
    value = xpc_dictionary_get_value(*a2, v6);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 8) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    if (!*(a1 + 24))
    {
      *(a1 + 24) = *(a1 + 8);
    }
  }

  v8 = *MEMORY[0x29EDBF4F0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF4F0]))
  {
    v9 = xpc_dictionary_get_value(*a2, v8);
    object[0] = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 16) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v10 = *MEMORY[0x29EDBF2C0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF2C0]))
  {
    v11 = xpc_dictionary_get_value(*a2, v10);
    object[0] = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 80) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v12 = *MEMORY[0x29EDBF2C8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF2C8]))
  {
    v13 = xpc_dictionary_get_value(*a2, v12);
    object[0] = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 84) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v14 = *MEMORY[0x29EDBF408];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF408]))
  {
    v15 = xpc_dictionary_get_value(*a2, v14);
    object[0] = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 24) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v16 = *MEMORY[0x29EDBF3F8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF3F8]))
  {
    v17 = xpc_dictionary_get_value(*a2, v16);
    object[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 64) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v18 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF640]);
    object[0] = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 72) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v19 = *MEMORY[0x29EDBEF58];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEF58]))
  {
    v20 = xpc_dictionary_get_value(*a2, v19);
    object[0] = v20;
    if (v20)
    {
      xpc_retain(v20);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 32) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v21 = *MEMORY[0x29EDBF090];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF090]))
  {
    v22 = xpc_dictionary_get_value(*a2, v21);
    v24 = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      v24 = xpc_null_create();
    }

    xpc::dyn_cast_or_default(object, &v24, "", v23);
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 88) = *object;
    *(a1 + 104) = v26;
    HIBYTE(v26) = 0;
    LOBYTE(object[0]) = 0;
    xpc_release(v24);
  }

  BasebandStats::getCurrentBasebandStats(a1, a3);
}

void BasebandStats::getCurrentBasebandStats(BasebandStats *this@<X0>, __CFDictionary **a2@<X8>)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    ctu::cf::update<char const*,long>(Mutable, *MEMORY[0x29EDBF490], *(this + 1), v4, v6);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBF4F0], *(this + 2), v4, v8);
    ctu::cf::update<char const*,unsigned int>(v7, *MEMORY[0x29EDBF2C0], *(this + 20), v4, v9);
    ctu::cf::update<char const*,unsigned int>(v7, *MEMORY[0x29EDBF2C8], *(this + 21), v4, v10);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBF408], *(this + 3), v4, v11);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBEF58], *(this + 4), v4, v12);
    ctu::cf::update<char const*,BOOL>(v7, *MEMORY[0x29EDBF3F8], *(this + 64), v4, v13);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBF640], *(this + 9), v4, v14);
    if (*(this + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *(this + 11), *(this + 12));
    }

    else
    {
      v17 = *(this + 88);
    }

    ctu::cf::update<char const*,std::string>(v7, *MEMORY[0x29EDBF090], &v17, v4, v15);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v16 = CFGetTypeID(v7);
    if (v16 == CFDictionaryGetTypeID())
    {
      *a2 = v7;
      CFRetain(v7);
    }

    else
    {
      *a2 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_2972D08D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void BasebandStats::~BasebandStats(void **this)
{
  *this = &unk_2A1E35F38;
  if ((*(this + 111) & 0x80000000) == 0)
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[5]);
    return;
  }

  operator delete(this[11]);
  if (*(this + 63) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2A1E35F38;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[5]);
  v2 = this;

LABEL_5:
  operator delete(v2);
}

BOOL Preferences::getPreference<__CFDictionary const*>(uint64_t (***a1)(void, uint64_t), const char *a2, void *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v11, a2);
  v5 = (**a1)(a1, v11);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    v8 = v7 == CFDictionaryGetTypeID();
    v9 = v8;
    if (v8)
    {
      *a3 = v6;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x29C26DF80](&v11);
  return v9;
}

uint64_t ctu::cf::update<char const*,long>(__CFDictionary *a1, const __CFString **a2, const void *a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_2972D0BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2972D0BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

BOOL CommCenterStats::initFromDisk(CommCenterStats *this)
{
  v18 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v3 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v4 = *(&off_2A1399498 + 1);
    off_2A1399498 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399498;
  }

  v6 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v17 = 13;
  strcpy(__p, "HealthEventDB");
  os_unfair_lock_lock((v2 + 40));
  Preferences::getPreference<__CFDictionary const*>(v2, __p, &v18);
  os_unfair_lock_unlock((v2 + 40));
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = v18;
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_19:
    ++*(this + 2);
    v9 = 0;
    *(this + 2) = time(0);
    return v9;
  }

  v7 = v18;
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_16:
  v15[4] = v7;
  CFRetain(v7);
  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(__p, v7);
  ctu::cf::MakeCFString::MakeCFString(v15, "KeyCommCenterStats");
  v8 = ctu::cf::map_adapter::copyCFDictionaryRef(__p, v15[0]);
  MEMORY[0x29C26DF80](v15);
  v15[3] = v8;
  v9 = v8 != 0;
  if (v8)
  {
    v15[2] = v8;
    CFRetain(v8);
    v15[0] = 0xAAAAAAAAAAAAAAAALL;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v15, v8);
    ctu::cf::MakeCFString::MakeCFString(&v19, "KeyCommCenterStatsLaunchCount");
    Int = ctu::cf::map_adapter::getInt(v15, v19);
    v11 = MEMORY[0x29C26DF80](&v19);
    *(this + 2) = Int;
    ctu::cf::MakeCFString::MakeCFString(v11, "KeyCommCenterStatsFirstLaunchTime");
    v12 = ctu::cf::map_adapter::getInt(v15, v19);
    v13 = MEMORY[0x29C26DF80](&v19);
    *(this + 3) = v12;
    ctu::cf::MakeCFString::MakeCFString(v13, "kKeyStatsCommCenterRegistrationMetricSubmitted");
    LOBYTE(v12) = ctu::cf::map_adapter::getBool(v15, v19);
    MEMORY[0x29C26DF80](&v19);
    *(this + 32) = v12;
    ++*(this + 2);
    *(this + 2) = time(0);
    MEMORY[0x29C26DFC0](v15);
    CFRelease(v8);
    CFRelease(v8);
  }

  else
  {
    ++*(this + 2);
    *(this + 2) = time(0);
  }

  MEMORY[0x29C26DFC0](__p);
  CFRelease(v7);
  return v9;
}

void sub_2972D0F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  MEMORY[0x29C26DFC0](va2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void CommCenterStats::getStats(const void **this@<X0>, __CFDictionary **a2@<X8>)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    *a2 = 0;
    return;
  }

  v7 = *(this + 2);
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, "KeyCommCenterStatsLaunchCount", 0x8000100, v4, v5);
  v8 = valuePtr;
  valuePtr = v7;
  v9 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v11 = v9;
  if (v8 && v9)
  {
    CFDictionaryAddValue(Mutable, v8, v9);
LABEL_7:
    CFRelease(v11);
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }

  ctu::cf::insert<char const*,long>(Mutable, "KeyCommCenterStatsLastLaunchTime", this[2], v4, v10);
  ctu::cf::insert<char const*,long>(Mutable, "KeyCommCenterStatsFirstLaunchTime", this[3], v4, v12);
  ctu::cf::insert<char const*,BOOL>(Mutable, "kKeyStatsCommCenterRegistrationMetricSubmitted", *(this + 32), v4, v13);
  v14 = CFGetTypeID(Mutable);
  if (v14 == CFDictionaryGetTypeID())
  {
    *a2 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    *a2 = 0;
  }

  CFRelease(Mutable);
}

void sub_2972D11E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

void CommCenterStats::updateStats(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, __CFDictionary **a3@<X8>)
{
  if (xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLaunchCount"))
  {
    value = xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLaunchCount");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 8) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  if (xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLastLaunchTime"))
  {
    v7 = xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLastLaunchTime");
    object = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 16) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  if (xpc_dictionary_get_value(*a2, "KeyCommCenterStatsFirstLaunchTime"))
  {
    v8 = xpc_dictionary_get_value(*a2, "KeyCommCenterStatsFirstLaunchTime");
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 24) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  if (xpc_dictionary_get_value(*a2, "kKeyStatsCommCenterRegistrationMetricSubmitted"))
  {
    v9 = xpc_dictionary_get_value(*a2, "kKeyStatsCommCenterRegistrationMetricSubmitted");
    object = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 32) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  CommCenterStats::getStats(a1, a3);
}

void ctu::cf::insert<char const*,long>(__CFDictionary *a1, const __CFString **a2, const void *a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_2972D14F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2972D1514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<char const*,BOOL>(__CFDictionary *a1, const __CFString **a2, int a3, uint64_t a4, const __CFAllocator *a5)
{
  key = 0;
  ctu::cf::convert_copy(&key, a2, 0x8000100, a4, a5);
  v7 = key;
  v8 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v8 = MEMORY[0x29EDB8EF8];
  }

  v9 = *v8;
  key = *v8;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v7, v9);
  }

  CFRelease(v9);
LABEL_13:
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

void sub_2972D15D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t abm::stats::typeAsString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    strcpy(a2, "UNKNOWN");
    a2[23] = 7;
  }

  else
  {
    strcpy(a2, "Boot Statistics");
    a2[23] = 15;
  }

  return result;
}

void abm::AWDHelperSetConnection(uint64_t *a1)
{
  v1 = a1[1];
  v5 = *a1;
  v6 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  abm::AWDHelper::create(&v5, &v7);
  pthread_mutex_lock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  v2 = off_2A1399540;
  *&qword_2A1399538 = v7;
  v7 = 0uLL;
  pthread_mutex_unlock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(&v7 + 1);
  if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_2972D17F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void abm::AWDHelper::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *v4 = v6;
    v4[1] = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v4 = v6;
    v4[1] = 0;
  }

  *a2 = v4;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E35FE8;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v5;
  a2[1] = v8;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2972D1928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  std::unique_ptr<abm::AWDHelper>::~unique_ptr[abi:ne200100](va1);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void abm::AWDHelperGetConnection(void *a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  v3 = qword_2A1399538;
  if (!qword_2A1399538)
  {
    v4 = operator new(0x10uLL);
    wis::WISServerConnection::WISServerConnection(v4);
    v16 = v4;
    v5 = operator new(0x20uLL);
    v5->__shared_owners_ = 0;
    v5->__vftable = &unk_2A1E36038;
    v5->__shared_weak_owners_ = 0;
    v5[1].__vftable = v4;
    v17 = v5;
    v14 = v4;
    v15 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    abm::AWDHelper::create(&v14, &v13);
    v6 = v15;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = v17;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = v13;
    v13 = 0uLL;
    v9 = off_2A1399540;
    *&qword_2A1399538 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v13 + 1);
    if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v3 = qword_2A1399538;
  }

  v11 = off_2A1399540;
  if (off_2A1399540)
  {
    atomic_fetch_add_explicit(off_2A1399540 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  v12 = v3[1];
  *a1 = *v3;
  a1[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_2972D1BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  pthread_mutex_unlock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<abm::AWDHelper>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<abm::AWDHelper *,std::shared_ptr<abm::AWDHelper>::__shared_ptr_default_delete<abm::AWDHelper,abm::AWDHelper>,std::allocator<abm::AWDHelper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::AWDHelper *,std::shared_ptr<abm::AWDHelper>::__shared_ptr_default_delete<abm::AWDHelper,abm::AWDHelper>,std::allocator<abm::AWDHelper>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<abm::AWDHelper *,std::shared_ptr<abm::AWDHelper>::__shared_ptr_default_delete<abm::AWDHelper,abm::AWDHelper>,std::allocator<abm::AWDHelper>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002974303DELL)
  {
    if (((v2 & 0x80000002974303DELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002974303DELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002974303DELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<abm::AWDHelper>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_pointer<wis::WISServerConnection *,std::shared_ptr<wis::WISServerConnection>::__shared_ptr_default_delete<wis::WISServerConnection,wis::WISServerConnection>,std::allocator<wis::WISServerConnection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<wis::WISServerConnection *,std::shared_ptr<wis::WISServerConnection>::__shared_ptr_default_delete<wis::WISServerConnection,wis::WISServerConnection>,std::allocator<wis::WISServerConnection>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    wis::WISServerConnection::~WISServerConnection(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<wis::WISServerConnection *,std::shared_ptr<wis::WISServerConnection>::__shared_ptr_default_delete<wis::WISServerConnection,wis::WISServerConnection>,std::allocator<wis::WISServerConnection>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002974304B4)
  {
    if (((v2 & 0x80000002974304B4 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002974304B4))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002974304B4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

wis::WISServerConnection **std::unique_ptr<wis::WISServerConnection>::~unique_ptr[abi:ne200100](wis::WISServerConnection **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    wis::WISServerConnection::~WISServerConnection(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<abm::AWDHelper>::~PthreadMutexGuardPolicy, &ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance, &dword_297288000);
  }

  return result;
}

const char *asString(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kEventHandlers";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kCommandHandlers";
  }
}

const char *asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EE67938[a1];
  }
}

uint64_t ABMServiceManager::getScaledTimeoutSec(Registry **this, uint64_t a2)
{
  ScaledTime = 1000000 * a2;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  }

  v3 = v6;
  if (v6 && !atomic_fetch_add((v6 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getBootstrapTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 12000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getStartTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 30000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getSleepTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 29000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getDefaultShutdownTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 5000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getShutdownTimeoutSec(Registry **a1, int a2)
{
  if (a2 == 1)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v10, a1[18]);
    if (v10)
    {
      ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
      v7 = v11;
      if (!v11)
      {
        return ScaledTime / 1000000;
      }
    }

    else
    {
      ScaledTime = 15000000;
      v7 = v11;
      if (!v11)
      {
        return ScaledTime / 1000000;
      }
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = ScaledTime;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      ScaledTime = v9;
    }

    return ScaledTime / 1000000;
  }

  if (a2)
  {
    v8 = *(*a1 + 10);

    return v8();
  }

  else
  {
    v3 = 30000000;
    if (config::hw::watch(a1) && ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild()))
    {
      v3 = 120000000;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v10, a1[18]);
    if (v10)
    {
      v3 = ctu::AdaptiveTimerService::getScaledTime();
    }

    v4 = v11;
    if (v11)
    {
      if (!atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    return v3 / 1000000;
  }
}

uint64_t ABMServiceManager::ABMServiceManager(uint64_t a1, void *a2)
{
  *a1 = &unk_2A1E36088;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony.abm", "service.mgr");
  ctu::SharedLoggable<ServiceManager,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v4, "service.mgr", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v7);
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 136) = 1;
  *a1 = &unk_2A1E36088;
  v5 = a2[1];
  *(a1 + 144) = *a2;
  *(a1 + 152) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

{
  *a1 = &unk_2A1E36088;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony.abm", "service.mgr");
  ctu::SharedLoggable<ServiceManager,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v4, "service.mgr", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v7);
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 136) = 1;
  *a1 = &unk_2A1E36088;
  v5 = a2[1];
  *(a1 + 144) = *a2;
  *(a1 + 152) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

double ABMServiceManager::create@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = operator new(0xA0uLL);
  v5 = v4;
  v7 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E36088;
  ctu::OsLogContext::OsLogContext(v10, "com.apple.telephony.abm", "service.mgr");
  ctu::SharedLoggable<ServiceManager,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>((v5 + 8), "service.mgr", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v10);
  *(v5 + 128) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 136) = 1;
  *v5 = &unk_2A1E36088;
  *(v5 + 144) = v7;
  *(v5 + 152) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ABMServiceManager>::shared_ptr[abi:ne200100]<ABMServiceManager,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1},0>(v9, v5);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  ABMServiceManager::initialize(v9[0]);
  result = *v9;
  *a2 = *v9;
  return result;
}

void sub_2972D29F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2972D2A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  ctu::OsLogContext::~OsLogContext(&a13);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_2972D2A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void ABMServiceManager::initialize(ABMServiceManager *this)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(buf, v2);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&off_2A1399388 + 1);
    off_2A1399388 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A1399388;
  }

  v21 = v3;
  v22 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (!v3)
  {
    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Unable to access CommandDriverFactory. BasebandManager registry will not be set in command drivers!", buf, 2u);
      v8 = *(this + 2);
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

LABEL_19:
    v8 = *(this + 2);
    if (!v8)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v7 = *(this + 19);
  v19 = *(this + 18);
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CommandDriverFactory::setRegistry();
  if (!v20 || atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v8 = *(this + 2);
  if (!v8)
  {
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_20:
  v10 = *(this + 1);
  v11 = std::__shared_weak_count::lock(v8);
  if (!v11)
  {
    goto LABEL_36;
  }

  v16 = v10;
  v17 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v11;
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v12);
  }

  PowerManager::create(&v16, buf);
  v18 = *buf;
  memset(buf, 0, sizeof(buf));
  ServiceManager::init(this, &v18);
  v13 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v15 = v22;
  if (v22)
  {
    if (!atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }
}

void sub_2972D2DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_2972D2DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v15 - 48);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void ABMServiceManager::registerGlobalServices(ABMServiceManager *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager22registerGlobalServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ABMServiceManager::registerDynamicServices(ABMServiceManager *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager23registerDynamicServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ABMServiceManager::~ABMServiceManager(ABMServiceManager *this)
{
  *this = &unk_2A1E36088;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  ServiceManager::~ServiceManager(this);
}

{
  *this = &unk_2A1E36088;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    ServiceManager::~ServiceManager(this);
  }

  else
  {
    ServiceManager::~ServiceManager(this);
  }

  operator delete(v2);
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy(uint64_t a1)
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

atomic_ullong *std::shared_ptr<ABMServiceManager>::shared_ptr[abi:ne200100]<ABMServiceManager,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E36110;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2972D32CC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1}::operator() const(ABMServiceManager*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ABMServiceManager *,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager *)#1},std::allocator<ABMServiceManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ABMServiceManager *,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager *)#1},std::allocator<ABMServiceManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1}::operator() const(ABMServiceManager*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager22registerGlobalServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    goto LABEL_45;
  }

  v4 = *(v2 + 8);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = operator new(0xA8uLL);
  *&v29 = v4;
  *(&v29 + 1) = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  LogTracker::LogTracker(v7, &v29);
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<LogTracker>::shared_ptr[abi:ne200100]<LogTracker,std::shared_ptr<LogTracker> ctu::SharedSynchronizable<LogTracker>::make_shared_ptr<LogTracker>(LogTracker*)::{lambda(LogTracker*)#1},0>(&v28, v7);
  std::__shared_weak_count::__release_weak(v6);
  if (v28)
  {
    v29 = v28;
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 64), &v29);
    v8 = *(&v29 + 1);
    if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *(&v28 + 1);
  if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v6);
  v10 = *(v2 + 16);
  if (!v10)
  {
    goto LABEL_45;
  }

  v11 = *(v2 + 8);
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_45;
  }

  v25 = v11;
  v26 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v12;
    (v12->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v13);
  }

  NetworkingModule::create(&v25, &v27);
  if (v27)
  {
    v29 = v27;
    if (*(&v27 + 1))
    {
      atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 64), &v29);
    v14 = *(&v29 + 1);
    if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  v15 = *(&v27 + 1);
  if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v16 = *(v2 + 16);
  if (!v16 || (v17 = *(v2 + 8), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
LABEL_45:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v17;
  v23 = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v18;
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v19);
  }

  CPMSKernelClientModule::create(&v22, &v24);
  if (v24)
  {
    v29 = v24;
    if (*(&v24 + 1))
    {
      atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 64), &v29);
    v20 = *(&v29 + 1);
    if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  v21 = *(&v24 + 1);
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_2972D37F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v17 - 48);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
LABEL_3:
    a1[1] = v5;
    return;
  }

  v6 = (v4 - *a1) >> 4;
  if ((v6 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = v3 - *a1;
  v8 = v7 >> 3;
  if (v7 >> 3 <= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    if (v9 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = a2;
    v11 = operator new(16 * v9);
    a2 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[16 * v6];
  v13 = &v11[16 * v9];
  v14 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v15 = *a1;
  v16 = a1[1] - *a1;
  v17 = &v12[-v16];
  *v12 = v14;
  v5 = v12 + 16;
  memcpy(v17, v15, v16);
  *a1 = v17;
  a1[1] = v5;
  a1[2] = v13;
  if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  a1[1] = v5;
}

void ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager23registerDynamicServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    goto LABEL_150;
  }

  v4 = *(v2 + 8);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_150;
  }

  v92 = v4;
  v93 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v5;
    (v5->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(v2 + 152);
  v90 = *(v2 + 144);
  v91 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TransportModule::create(&v92, &v90, &v94);
  if (v94)
  {
    v95 = v94;
    if (*(&v94 + 1))
    {
      atomic_fetch_add_explicit((*(&v94 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v8 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *(&v94 + 1);
  if (*(&v94 + 1) && !atomic_fetch_add((*(&v94 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v91;
  if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v93)
  {
    std::__shared_weak_count::__release_weak(v93);
  }

  v11 = *(v2 + 16);
  if (!v11)
  {
    goto LABEL_150;
  }

  v12 = *(v2 + 8);
  v13 = std::__shared_weak_count::lock(v11);
  if (!v13)
  {
    goto LABEL_150;
  }

  v87 = v12;
  v88 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v13;
    (v13->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v14);
  }

  RadioModule::create(&v87, &v89);
  if (v89)
  {
    v95 = v89;
    if (*(&v89 + 1))
    {
      atomic_fetch_add_explicit((*(&v89 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v15 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v16 = *(&v89 + 1);
  if (*(&v89 + 1) && !atomic_fetch_add((*(&v89 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v88)
  {
    std::__shared_weak_count::__release_weak(v88);
  }

  v17 = *(v2 + 16);
  if (!v17)
  {
    goto LABEL_150;
  }

  v18 = *(v2 + 8);
  v19 = std::__shared_weak_count::lock(v17);
  if (!v19)
  {
    goto LABEL_150;
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = operator new(0x78uLL);
  *&v95 = v18;
  *(&v95 + 1) = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  Simulator::Simulator(v21, &v95);
  *&v86 = 0xAAAAAAAAAAAAAAAALL;
  *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<Simulator>::shared_ptr[abi:ne200100]<Simulator,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1},0>(&v86, v21);
  std::__shared_weak_count::__release_weak(v20);
  if (v86)
  {
    v95 = v86;
    if (*(&v86 + 1))
    {
      atomic_fetch_add_explicit((*(&v86 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v22 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  v23 = *(&v86 + 1);
  if (*(&v86 + 1) && !atomic_fetch_add((*(&v86 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::__shared_weak_count::__release_weak(v20);
  v24 = *(v2 + 16);
  if (!v24)
  {
    goto LABEL_150;
  }

  v25 = *(v2 + 8);
  v26 = std::__shared_weak_count::lock(v24);
  if (!v26)
  {
    goto LABEL_150;
  }

  v83 = v25;
  v84 = v26;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v27 = v26;
    (v26->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v27);
  }

  TraceManager::create(&v83, &v85);
  if (v85)
  {
    v95 = v85;
    if (*(&v85 + 1))
    {
      atomic_fetch_add_explicit((*(&v85 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v28 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  v29 = *(&v85 + 1);
  if (*(&v85 + 1) && !atomic_fetch_add((*(&v85 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v84)
  {
    std::__shared_weak_count::__release_weak(v84);
  }

  v30 = *(v2 + 16);
  if (!v30)
  {
    goto LABEL_150;
  }

  v31 = *(v2 + 8);
  v32 = std::__shared_weak_count::lock(v30);
  if (!v32)
  {
    goto LABEL_150;
  }

  v80 = v31;
  v81 = v32;
  atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v33 = v32;
    (v32->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v33);
  }

  AWDModule::create(&v80, &v82);
  if (v82)
  {
    v95 = v82;
    if (*(&v82 + 1))
    {
      atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v34 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }

  v35 = *(&v82 + 1);
  if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v81)
  {
    std::__shared_weak_count::__release_weak(v81);
  }

  v36 = *(v2 + 16);
  if (!v36)
  {
    goto LABEL_150;
  }

  v37 = *(v2 + 8);
  v38 = std::__shared_weak_count::lock(v36);
  if (!v38)
  {
    goto LABEL_150;
  }

  v77 = v37;
  v78 = v38;
  atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v39 = v38;
    (v38->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v39);
  }

  StatsModule::create(&v77, &v79);
  if (v79)
  {
    v95 = v79;
    if (*(&v79 + 1))
    {
      atomic_fetch_add_explicit((*(&v79 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v40 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }
  }

  v41 = *(&v79 + 1);
  if (*(&v79 + 1) && !atomic_fetch_add((*(&v79 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  if (v78)
  {
    std::__shared_weak_count::__release_weak(v78);
  }

  v42 = *(v2 + 16);
  if (!v42)
  {
    goto LABEL_150;
  }

  v43 = *(v2 + 8);
  v44 = std::__shared_weak_count::lock(v42);
  if (!v44)
  {
    goto LABEL_150;
  }

  v74 = v43;
  v75 = v44;
  atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v45 = v44;
    (v44->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v45);
  }

  v46 = *(v2 + 152);
  v72 = *(v2 + 144);
  v73 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BootModule::create(&v74, &v72, &v76);
  if (v76)
  {
    v95 = v76;
    if (*(&v76 + 1))
    {
      atomic_fetch_add_explicit((*(&v76 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v47 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }
  }

  v48 = *(&v76 + 1);
  if (*(&v76 + 1) && !atomic_fetch_add((*(&v76 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
  }

  v49 = v73;
  if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_weak(v75);
  }

  v50 = *(v2 + 16);
  if (!v50)
  {
    goto LABEL_150;
  }

  v51 = *(v2 + 8);
  v52 = std::__shared_weak_count::lock(v50);
  if (!v52)
  {
    goto LABEL_150;
  }

  v69 = v51;
  v70 = v52;
  atomic_fetch_add_explicit(&v52->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v53 = v52;
    (v52->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v53);
  }

  SARModule::create(&v69, &v71);
  if (v71)
  {
    v95 = v71;
    if (*(&v71 + 1))
    {
      atomic_fetch_add_explicit((*(&v71 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v54 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }
  }

  v55 = *(&v71 + 1);
  if (*(&v71 + 1) && !atomic_fetch_add((*(&v71 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_weak(v70);
  }

  v56 = *(v2 + 16);
  if (!v56 || (v57 = *(v2 + 8), (v58 = std::__shared_weak_count::lock(v56)) == 0))
  {
LABEL_150:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v66 = v57;
  v67 = v58;
  atomic_fetch_add_explicit(&v58->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v59 = v58;
    (v58->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v59);
  }

  v60 = *(v2 + 152);
  v64 = *(v2 + 144);
  v65 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  FSModuleDAL::create(&v66, &v64, &v68);
  if (v68)
  {
    v95 = v68;
    if (*(&v68 + 1))
    {
      atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v95);
    v61 = *(&v95 + 1);
    if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61);
      std::__shared_weak_count::__release_weak(v61);
    }
  }

  v62 = *(&v68 + 1);
  if (*(&v68 + 1) && !atomic_fetch_add((*(&v68 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v62->__on_zero_shared)(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  v63 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }
}

void sub_2972D4638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v34 - 64);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a13);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_9()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_10()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_11()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t util::apfs::is_transcription_pending(util::apfs *this)
{
  v15 = *MEMORY[0x29EDCA608];
  bzero(&v14, 0x878uLL);
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "apfs");
  v1 = *&v13[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v1, OS_LOG_TYPE_DEFAULT, "Checking if disk requires APFS transcription", buf, 2u);
  }

  if (statfs("/private/var", &v14))
  {
    ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "apfs");
    v2 = *&v13[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    *v13 = "/private/var";
    v3 = "Failed to statfs: %s";
    v4 = v2;
LABEL_9:
    v6 = 12;
LABEL_10:
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v6);
    goto LABEL_11;
  }

  if (strlen(v14.f_mntfromname) - 1024 <= 0xFFFFFFFFFFFFFC00)
  {
    ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "apfs");
    v5 = *&v13[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    *v13 = v14.f_mntfromname;
    v3 = "Failed to get mount point: %s";
    v4 = v5;
    goto LABEL_9;
  }

  if (APFSVolumeRole())
  {
    ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "apfs");
    v10 = *&v13[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v13 = 0;
      v3 = "APFS volume role error: %d";
      v4 = v10;
      v6 = 8;
      goto LABEL_10;
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "apfs");
    v11 = *&v13[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "APFS volume role does not match";
      v4 = v11;
      v6 = 2;
      goto LABEL_10;
    }
  }

LABEL_11:
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "apfs");
  v7 = *&v13[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v13 = 0;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "APFS needs crypto migration: %d", buf, 8u);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

void FSModuleDAL::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x3E8uLL);
  v7 = v6;
  v8 = *a1;
  v9 = a1[1];
  v14 = v8;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  v13[0] = v10;
  v13[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  FSModuleDAL::FSModuleDAL(v6, &v14, v13);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<FSModuleDAL>::shared_ptr[abi:ne200100]<FSModuleDAL,std::shared_ptr<FSModuleDAL> ctu::SharedSynchronizable<FSModuleDAL>::make_shared_ptr<FSModuleDAL>(FSModuleDAL*)::{lambda(FSModuleDAL*)#1},0>(a3, v7);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v15;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v12 = v15;
    if (!v15)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v12);
}

void sub_2972D4DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void FSModuleDAL::~FSModuleDAL(FSModuleDAL *this)
{
  *this = &unk_2A1E36160;
  BBUFSServerRelease();
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v19, 2u);
  }

  if (*(this + 121))
  {
    v3 = *(this + 120);
    v4 = *(*(this + 119) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 121) = 0;
    if (v3 != (this + 952))
    {
      do
      {
        v15 = *(v3 + 1);
        v16 = *(v3 + 3);
        if (v16)
        {
          dispatch_release(v16);
        }

        v17 = *(v3 + 2);
        if (v17)
        {
          _Block_release(v17);
        }

        operator delete(v3);
        v3 = v15;
      }

      while (v15 != (this + 952));
    }
  }

  v6 = *(this + 20);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 18);
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 135) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (*(this + 135) < 0)
  {
LABEL_11:
    operator delete(*(this + 14));
  }

LABEL_12:
  MEMORY[0x29C26DE80](this + 104);
  v8 = *(this + 12);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 11);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v11 = *(this + 3);
  if (v11)
  {
    v12 = *(this + 4);
    v13 = *(this + 3);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *(this + 3);
    }

    *(this + 4) = v11;
    operator delete(v13);
  }

  v18 = *(this + 2);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

{
  FSModuleDAL::~FSModuleDAL(this);

  operator delete(v1);
}

uint64_t FSModuleDAL::FSModuleDAL(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v6);
    *a1 = &unk_2A1E34AE8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E36160;
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "rfs.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v8 = dispatch_queue_create_with_target_V2("rfs.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v8, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v8);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v8;
  if (v8)
  {
    dispatch_retain(v8);
    *(a1 + 96) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 104, v19);
  MEMORY[0x29C26DE80](v19);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = &unk_2A1E36160;
  v9 = operator new(0x30uLL);
  *(a1 + 112) = v9;
  *(a1 + 120) = xmmword_297430660;
  strcpy(v9, "com.apple.AppleBasebandManager.FSModuleSync");
  *(a1 + 136) = *a3;
  v10 = a3[1];
  *(a1 + 144) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v12 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(buf, v11);
    v13 = *buf;
    memset(buf, 0, sizeof(buf));
    v14 = *(&off_2A1399388 + 1);
    off_2A1399388 = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v12 = off_2A1399388;
  }

  v16 = *(&off_2A1399388 + 1);
  v19[0] = v12;
  v19[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v12 + 32))(v12);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  *(a1 + 168) = 0;
  *(a1 + 576) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = a1 + 952;
  *(a1 + 960) = a1 + 952;
  *(a1 + 968) = 0;
  *(a1 + 976) = 0;
  *(a1 + 980) = 0;
  *(a1 + 985) = 0;
  if (!FSModuleDAL::initBBUServer_sync(a1))
  {
    v17 = *(a1 + 104);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v17, OS_LOG_TYPE_ERROR, "Failed to init BBUFSServer", buf, 2u);
    }

    *(a1 + 944) = 1;
  }

  return a1;
}

void sub_2972D54AC(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v3);
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  MEMORY[0x29C26DE80](v1 + 104);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

BOOL FSModuleDAL::initBBUServer_sync(FSModuleDAL *this)
{
  v13 = *MEMORY[0x29EDCA608];
  *(this + 168) = 0u;
  v2 = this + 168;
  *(this + 71) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  memset(__src, 0, sizeof(__src));
  v3 = operator new(0x10uLL);
  v4 = *(v2 - 3);
  *v3 = *(v2 - 4);
  v3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (BBUFSServerParametersInit())
  {
    memcpy(v11, __src, sizeof(v11));
    if (BBUFSServerCreate())
    {
      result = 1;
      *(this + 945) = 1;
      v6 = *MEMORY[0x29EDCA608];
      return result;
    }

    v7 = *(this + 13);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_9;
    }

    *v11 = 0;
    v8 = "BBUFSServer create failed";
LABEL_12:
    _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, v8, v11, 2u);
    result = 0;
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  v7 = *(this + 13);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v11 = 0;
    v8 = "BBUFSServer parameters init failed";
    goto LABEL_12;
  }

LABEL_9:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

_WORD *FSModuleDAL::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *FSModuleDAL::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void FSModuleDAL::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN11FSModuleDAL17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_22;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v8 = a2;
  ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((a1 + 72), v6);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void FSModuleDAL::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void FSModuleDAL::registerCommandHandlers_sync(FSModuleDAL *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_100:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_100;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_100;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEBB8];
  v8 = strlen(*MEMORY[0x29EDBEBB8]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
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

    p_dst = operator new(v11);
    v60 = v9;
    v61 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v61) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_9_1;
  aBlock[4] = this;
  aBlock[5] = v4;
  v57 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v58 = v12;
  Service::registerCommandHandler(this, &__dst, &v58);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF310];
  v14 = strlen(*MEMORY[0x29EDBF310]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    v60 = v15;
    v61 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v61) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 1174405120;
  v53[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_10;
  v53[3] = &__block_descriptor_tmp_15_0;
  v53[4] = this;
  v53[5] = v4;
  v54 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v53);
  v55 = v18;
  Service::registerCommandHandler(this, &__dst, &v55);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBF248];
  v20 = strlen(*MEMORY[0x29EDBF248]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    v60 = v21;
    v61 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v61) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v50[0] = MEMORY[0x29EDCA5F8];
  v50[1] = 1174405120;
  v50[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_16;
  v50[3] = &__block_descriptor_tmp_23_1;
  v50[4] = this;
  v50[5] = v4;
  v51 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v50);
  v52 = v24;
  Service::registerCommandHandler(this, &__dst, &v52);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF438];
  v26 = strlen(*MEMORY[0x29EDBF438]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    v60 = v27;
    v61 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v61) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 1174405120;
  v47[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_24;
  v47[3] = &__block_descriptor_tmp_31;
  v47[4] = this;
  v47[5] = v4;
  v48 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v47);
  v49 = v30;
  Service::registerCommandHandler(this, &__dst, &v49);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  v31 = *MEMORY[0x29EDBEBB0];
  v32 = strlen(*MEMORY[0x29EDBEBB0]);
  if (v32 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v33 = v32;
  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v34 = operator new(v35);
    v60 = v33;
    v61 = v35 | 0x8000000000000000;
    __dst = v34;
    goto LABEL_66;
  }

  HIBYTE(v61) = v32;
  v34 = &__dst;
  if (v32)
  {
LABEL_66:
    memmove(v34, v31, v33);
  }

  *(v34 + v33) = 0;
  v44[0] = MEMORY[0x29EDCA5F8];
  v44[1] = 1174405120;
  v44[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_32;
  v44[3] = &__block_descriptor_tmp_39;
  v44[4] = this;
  v44[5] = v4;
  v45 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = _Block_copy(v44);
  v46 = v36;
  Service::registerCommandHandler(this, &__dst, &v46);
  if (v36)
  {
    _Block_release(v36);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  __dst = 0xAAAAAAAAAAAAAAAALL;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  v42[0] = MEMORY[0x29EDCA5F8];
  v42[1] = 1174405120;
  v42[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_40;
  v42[3] = &__block_descriptor_tmp_45;
  v42[4] = this;
  v42[5] = v4;
  v43 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = _Block_copy(v42);
  v38 = *(this + 11);
  if (v38)
  {
    dispatch_retain(*(this + 11));
  }

  __dst = v37;
  v60 = v38;
  v39 = *(this + 19);
  if (v37)
  {
    v40 = _Block_copy(v37);
    object = v38;
    if (!v38)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v40 = 0;
  object = v38;
  if (v38)
  {
LABEL_75:
    dispatch_retain(v38);
  }

LABEL_76:
  (*(*v39 + 40))(v39, &v40);
  if (object)
  {
    dispatch_release(object);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  if (v38)
  {
    dispatch_release(v38);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2972D627C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
{
  dispatch::callback<void({block_pointer})(BOOL,unsigned long long,unsigned long long)>::~callback(&a10);
  dispatch::callback<void({block_pointer})(BOOL,unsigned long long,unsigned long long)>::~callback(v42 - 128);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_weak(a33);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_weak(a41);
  }

  v44 = *(v42 - 208);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  v45 = *(v42 - 144);
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
    std::__shared_weak_count::__release_weak(v41);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v41);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke(void *a1, void **a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_11:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_7_1;
      v12[4] = v7;
      if (*a3)
      {
        v10 = _Block_copy(*a3);
        v11 = *a2;
        aBlock = v10;
        object = v11;
        if (v11)
        {
LABEL_6:
          xpc_retain(v11);
          goto LABEL_9;
        }
      }

      else
      {
        v11 = *a2;
        aBlock = 0;
        object = v11;
        if (v11)
        {
          goto LABEL_6;
        }
      }

      object = xpc_null_create();
LABEL_9:
      ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((v7 + 72), v12);
      xpc_release(object);
      object = 0;
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      goto LABEL_11;
    }
  }
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_6_1;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v15 = v2;
  v4 = _Block_copy(aBlock);
  v5 = *(v3 + 88);
  if (v5)
  {
    dispatch_retain(*(v3 + 88));
  }

  v16 = v4;
  v17 = v5;
  v6 = operator new(0x20uLL);
  *v6 = 0;
  v6[1] = 0;
  if (v4)
  {
    v7 = v3 + 952;
    v6[2] = _Block_copy(v4);
    v6[3] = v5;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = v3 + 952;
  v6[2] = 0;
  v6[3] = v5;
  if (v5)
  {
LABEL_7:
    dispatch_retain(v5);
  }

LABEL_8:
  v8 = *(v3 + 952);
  *v6 = v8;
  v6[1] = v7;
  *(v8 + 8) = v6;
  *(v3 + 952) = v6;
  ++*(v3 + 968);
  value = xpc_dictionary_get_value(*(a1 + 48), *MEMORY[0x29EDBEF38]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v10 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (*(v3 + 980))
  {
    v12 = *(v3 + 980);
  }

  else
  {
    v12 = v11;
  }

  FSModuleDAL::requestFSSync_sync(v3, v12, v10, 1);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  if (v15)
  {
    _Block_release(v15);
  }
}

void sub_2972D6768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15)
{
  dispatch::callback<void({block_pointer})(BOOL)>::~callback(&a15);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3760250880;
  }

  v4 = xpc_null_create();
  v5 = *(a1 + 32);
  object = v4;
  v6 = xpc_null_create();
  (*(v5 + 16))(v5, v3, &object);
  xpc_release(object);
  xpc_release(v6);
}

void sub_2972D6838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void FSModuleDAL::requestFSSync_sync(std::string::size_type a1, int a2, char a3, char a4)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 88))(&v28);
  if (!v28)
  {
    goto LABEL_28;
  }

  __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&__p, *(a1 + 136));
  if (__p.__r_.__value_.__r.__words[0])
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_7;
    }
  }

  else
  {
    ScaledTime = 180000000;
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_7;
    }
  }

  if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
    object = 0xAAAAAAAAAAAAAAAALL;
    v10 = v28;
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_7:
  object = 0xAAAAAAAAAAAAAAAALL;
  v10 = v28;
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
LABEL_8:
    v26 = *(a1 + 112);
    goto LABEL_11;
  }

LABEL_10:
  std::string::__init_copy_ctor_external(&v26, *(a1 + 112), *(a1 + 120));
LABEL_11:
  v11 = *(v10 + 48);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  (*(*v11 + 24))(&object, v11, &__p, ScaledTime / 1000);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      v12 = *(a1 + 80);
      if (!v12)
      {
LABEL_32:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  v12 = *(a1 + 80);
  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_20:
  v13 = *(a1 + 72);
  v14 = std::__shared_weak_count::lock(v12);
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = v14;
  p_shared_weak_owners = &v14->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  __p.__r_.__value_.__r.__words[0] = a1;
  __p.__r_.__value_.__l.__size_ = v13;
  __p.__r_.__value_.__r.__words[2] = v15;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v17 = object;
  v23 = object;
  if (object)
  {
    dispatch_retain(object);
    v18 = object;
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v24) = a3;
  HIDWORD(v24) = a2;
  v25 = a4;
  v19 = *(a1 + 88);
  v20 = operator new(0x30uLL);
  *v20 = a1;
  v20[1] = v13;
  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
  v20[2] = v15;
  v20[3] = v17;
  v23 = 0;
  v20[4] = v24;
  *(v20 + 40) = v25;
  dispatch_group_notify_f(v18, v19, v20, dispatch::detail::group_notify<FSModuleDAL::requestFSSync_sync(unsigned int,BOOL,FSModuleDAL::file)::$_0>(dispatch_group_s *,dispatch_queue_s *,FSModuleDAL::requestFSSync_sync(unsigned int,BOOL,FSModuleDAL::file)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::__shared_weak_count::__release_weak(v15);
  if (object)
  {
    dispatch_release(object);
  }

LABEL_28:
  v21 = v29;
  if (v29)
  {
    if (!atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }
}

void sub_2972D6C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, dispatch_object_t object, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 48);
    *(a1 + 40) = v5;
    *(a1 + 48) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11FSModuleDALEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11FSModuleDALEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_10(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_11;
        v10[3] = &__block_descriptor_tmp_12_1;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  v6 = BBUFSServerFlushInProgress();
  v7 = xpc_BOOL_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEA08], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_BOOL_create(*(v2 + 976));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEA10], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &v11, &xdict);
  xpc_release(xdict);
}

void *__copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_16(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_17;
        v10[3] = &__block_descriptor_tmp_20_0;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_17(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Request to allow rfs sync is not supported", v6, 2u);
  }

  v3 = xpc_null_create();
  v4 = *(a1 + 40);
  object = v3;
  v5 = xpc_null_create();
  (*(v4 + 16))(v4, 3760250884, &object);
  xpc_release(object);
  xpc_release(v5);
}

void sub_2972D72A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_24(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_25;
        v10[3] = &__block_descriptor_tmp_28_1;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_25(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Request to prevent rfs sync is not supported", v6, 2u);
  }

  v3 = xpc_null_create();
  v4 = *(a1 + 40);
  object = v3;
  v5 = xpc_null_create();
  (*(v4 + 16))(v4, 3760250884, &object);
  xpc_release(object);
  xpc_release(v5);
}

void sub_2972D74A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_32(void *a1, xpc_object_t *a2, void **a3)
{
  v5 = a1[4];
  memset(&v16, 170, sizeof(v16));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEED8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object);
  v7 = a1[6];
  if (!v7 || (v8 = std::__shared_weak_count::lock(v7), (v18 = v8) == 0))
  {
LABEL_18:
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v16.__r_.__value_.__l.__data_);
    return;
  }

  v9 = v8;
  v17 = a1[5];
  if (v17)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 1174405120;
    v12[2] = ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_33;
    v12[3] = &__block_descriptor_tmp_36_0;
    v12[4] = v5;
    v10 = *a3;
    if (*a3)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v16;
    }

    ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((v5 + 72), v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v11 = aBlock;
      if (!aBlock)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = aBlock;
      if (!aBlock)
      {
        goto LABEL_17;
      }
    }

    _Block_release(v11);
  }

LABEL_17:
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_2972D76B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 - 56);
  if (a24 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_2_33(uint64_t a1)
{
  v72 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (((*v2)[12].isa)(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(&buf, 170, sizeof(buf));
    v4 = *MEMORY[0x29EDBEBB0];
    v5 = strlen(*MEMORY[0x29EDBEBB0]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v5 | 7) + 1;
      }

      p_dst = operator new(v14);
      __dst.__r_.__value_.__l.__size_ = v6;
      __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_15:
        p_dst->__r_.__value_.__s.__data_[v6] = 0;
        v15 = operator new(0x28uLL);
        v16 = v15;
        strcpy(v15, " rejected; ABM is shutting down ");
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
          v20 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v20 - __dst.__r_.__value_.__l.__size_ < 0x20)
          {
            v18 = __dst.__r_.__value_.__l.__size_ + 32;
            if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 32 - v20)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v19 = __dst.__r_.__value_.__r.__words[0];
            if (v20 > 0x3FFFFFFFFFFFFFF2)
            {
              v23 = 0;
LABEL_37:
              v24 = operator new(v3);
              v25 = v24;
              if (size)
              {
                memmove(v24, v19, size);
              }

              v26 = (v25 + size);
              v27 = v16[1];
              *v26 = *v16;
              v26[1] = v27;
              if (!v23)
              {
                operator delete(v19);
              }

              __dst.__r_.__value_.__l.__size_ = v18;
              __dst.__r_.__value_.__r.__words[2] = v3 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = v25;
              v28 = (v25 + v18);
LABEL_69:
              *v28 = 0;
              buf = __dst;
              memset(&__dst, 0, sizeof(__dst));
              operator delete(v16);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
                v44 = v2[13];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
LABEL_71:
                  p_buf = &buf;
                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_buf = buf.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                  *(__dst.__r_.__value_.__r.__words + 4) = p_buf;
                  _os_log_impl(&dword_297288000, v44, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v47 = *(a1 + 40);
                  v46 = (a1 + 40);
                  if (!v47)
                  {
                    goto LABEL_100;
                  }

                  goto LABEL_77;
                }
              }

              else
              {
                v44 = v2[13];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_71;
                }
              }

              v48 = *(a1 + 40);
              v46 = (a1 + 40);
              if (!v48)
              {
LABEL_100:
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                goto LABEL_120;
              }

LABEL_77:
              __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
              __dst.__r_.__value_.__r.__words[0] = xpc_null_create();
              v49 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v49 = buf.__r_.__value_.__l.__size_;
              }

              if (v49)
              {
                v50 = xpc_dictionary_create(0, 0, 0);
                if (v50 || (v50 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26F9F0](v50) == MEMORY[0x29EDCAA00])
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
                v55 = xpc_null_create();
                v56 = __dst.__r_.__value_.__r.__words[0];
                __dst.__r_.__value_.__r.__words[0] = v51;
                xpc_release(v56);
                xpc_release(v55);
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v57 = &buf;
                }

                else
                {
                  v57 = buf.__r_.__value_.__r.__words[0];
                }

                v58 = xpc_string_create(v57);
                if (!v58)
                {
                  v58 = xpc_null_create();
                }

                xpc_dictionary_set_value(v51, *MEMORY[0x29EDBE648], v58);
                v59 = xpc_null_create();
                xpc_release(v58);
                xpc_release(v59);
              }

              LODWORD(v69) = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v46, &v69, &__dst.__r_.__value_.__l.__data_);
              xpc_release(__dst.__r_.__value_.__l.__data_);
              goto LABEL_100;
            }

LABEL_28:
            v21 = 2 * v20;
            if (v18 > 2 * v20)
            {
              v21 = v18;
            }

            if ((v21 | 7) == 0x17)
            {
              v22 = 25;
            }

            else
            {
              v22 = (v21 | 7) + 1;
            }

            if (v21 >= 0x17)
            {
              v3 = v22;
            }

            else
            {
              v3 = 23;
            }

            v23 = v20 == 22;
            goto LABEL_37;
          }

          v29 = __dst.__r_.__value_.__r.__words[0];
          v42 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
          v43 = v15[1];
          *v42 = *v15;
          v42[1] = v43;
          v30 = size + 32;
          __dst.__r_.__value_.__l.__size_ = size + 32;
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0x17)
          {
            v18 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) | 0x20;
            v19 = &__dst;
            v20 = 22;
            goto LABEL_28;
          }

          v29 = &__dst;
          qmemcpy(&__dst + SHIBYTE(__dst.__r_.__value_.__r.__words[2]), " rejected; ABM is shutting down ", 32);
          v30 = size + 32;
          *(&__dst.__r_.__value_.__s + 23) = (size + 32) & 0x7F;
        }

        v28 = v29 + v30;
        goto LABEL_69;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_15;
  }

  v8 = (a1 + 48);
  v9 = strlen(*MEMORY[0x29EDBE950]);
  v10 = v9;
  v11 = *(a1 + 71);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = (a1 + 48);
    if (v10 != v11)
    {
      v13 = v2[13];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_21:
    if (memcmp(v12, *MEMORY[0x29EDBE950], v10))
    {
      v13 = v2[13];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (!FSModuleDAL::eraseRemoteFileSystem_sync(v2))
    {
      v54 = 3760250880;
LABEL_119:
      v63 = xpc_null_create();
      v64 = *(a1 + 40);
      buf.__r_.__value_.__r.__words[0] = v63;
      v65 = xpc_null_create();
      (*(v64 + 16))(v64, v54, &buf);
      xpc_release(buf.__r_.__value_.__l.__data_);
      xpc_release(v65);
      goto LABEL_120;
    }

    __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v34 = off_2A1399448;
    if (!off_2A1399448)
    {
      ABMServer::create_default_global(&buf);
      v35 = *&buf.__r_.__value_.__l.__data_;
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      v36 = *(&off_2A1399448 + 1);
      off_2A1399448 = v35;
      if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }

      v37 = buf.__r_.__value_.__l.__size_;
      if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37);
        std::__shared_weak_count::__release_weak(v37);
      }

      v34 = off_2A1399448;
    }

    __dst.__r_.__value_.__r.__words[0] = v34;
    __dst.__r_.__value_.__l.__size_ = *(&off_2A1399448 + 1);
    if (*(&off_2A1399448 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v38 = *MEMORY[0x29EDBF140];
    v39 = strlen(*MEMORY[0x29EDBF140]);
    if (v39 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      if ((v39 | 7) == 0x17)
      {
        v60 = 25;
      }

      else
      {
        v60 = (v39 | 7) + 1;
      }

      p_p = operator new(v60);
      __p.__r_.__value_.__l.__size_ = v40;
      __p.__r_.__value_.__r.__words[2] = v60 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = p_p;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v39;
      p_p = &__p;
      if (!v39)
      {
        goto LABEL_107;
      }
    }

    memmove(p_p, v38, v40);
LABEL_107:
    p_p->__r_.__value_.__s.__data_[v40] = 0;
    v61 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __p;
    }

    v69 = 0;
    v68 = 0;
    ABMServer::broadcast(v34, &buf, &v69, &v68);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v61 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v62 = __dst.__r_.__value_.__l.__size_;
    if (__dst.__r_.__value_.__l.__size_ && !atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v62->__on_zero_shared)(v62);
      std::__shared_weak_count::__release_weak(v62);
    }

    v54 = 0;
    goto LABEL_119;
  }

  if (v9 == *(a1 + 56))
  {
    if (v9 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *v8;
    goto LABEL_21;
  }

  v13 = v2[13];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_46;
  }

LABEL_44:
  v8 = *v8;
LABEL_45:
  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Command [%s] not supported", &buf, 0xCu);
LABEL_46:
  buf.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v31 = xpc_dictionary_create(0, 0, 0);
  v32 = v31;
  if (v31)
  {
    buf.__r_.__value_.__r.__words[0] = v31;
  }

  else
  {
    v32 = xpc_null_create();
    buf.__r_.__value_.__r.__words[0] = v32;
    if (!v32)
    {
      v33 = xpc_null_create();
      v32 = 0;
      goto LABEL_86;
    }
  }

  if (MEMORY[0x29C26F9F0](v32) != MEMORY[0x29EDCAA00])
  {
    v33 = xpc_null_create();
LABEL_86:
    buf.__r_.__value_.__r.__words[0] = v33;
    goto LABEL_87;
  }

  xpc_retain(v32);
LABEL_87:
  xpc_release(v32);
  v52 = xpc_string_create("Command not supported");
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  xpc_dictionary_set_value(buf.__r_.__value_.__l.__data_, *MEMORY[0x29EDBE648], v52);
  v53 = xpc_null_create();
  xpc_release(v52);
  xpc_release(v53);
  LODWORD(__dst.__r_.__value_.__l.__data_) = -534716414;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &__dst, &buf.__r_.__value_.__l.__data_);
  xpc_release(buf.__r_.__value_.__l.__data_);
LABEL_120:
  v66 = *MEMORY[0x29EDCA608];
}

void sub_2972D8010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t FSModuleDAL::eraseRemoteFileSystem_sync(NSObject **this)
{
  v10 = *MEMORY[0x29EDCA608];
  FSModuleDAL::execPendingResponses_sync(this, 0);
  this[123] = 0;
  *(this + 976) = 0;
  *(this + 945) = 0;
  *__p = operator new(0x30uLL);
  *&__p[8] = xmmword_297430670;
  strcpy(*__p, "/private/var/wireless/baseband_data/bbfs");
  v2 = support::fs::removeDirContents(__p, 0);
  if ((__p[23] & 0x80000000) == 0)
  {
    v3 = this[13];
    v4 = v3;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315138;
      *&__p[4] = "/private/var/wireless/baseband_data/bbfs";
      _os_log_error_impl(&dword_297288000, v3, OS_LOG_TYPE_ERROR, "failed removing %s", __p, 0xCu);
      v8 = *MEMORY[0x29EDCA608];
      return v2;
    }

    goto LABEL_7;
  }

  operator delete(*__p);
  v3 = this[13];
  v4 = v3;
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    v6 = *MEMORY[0x29EDCA608];
    return v2;
  }

  *__p = 136315138;
  *&__p[4] = "/private/var/wireless/baseband_data/bbfs";
  _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I removed contents of %s", __p, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

void sub_2972D8350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }
}

void sub_2972D83D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }
}

void ___ZN11FSModuleDAL28registerCommandHandlers_syncEv_block_invoke_40(void *a1, char a2, char a3, uint64_t a4)
{
  v5 = a1[6];
  if (!v5)
  {
    return;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v5);
  v37 = v10;
  if (!v10)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_46:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v29 = v10;
      (v10->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v29);
    }

    return;
  }

  v11 = v10;
  if ((*(v9 + 945) & 1) == 0)
  {
    v16 = *(v9 + 104);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v16, OS_LOG_TYPE_ERROR, "Skipping baseband indication request for FS sync as baseband is not ready", buf, 2u);
    }

    v10 = v11;
    goto LABEL_46;
  }

  v12 = *(v9 + 104);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if ((a2 & 1) == 0)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Triggering FS Sync due to baseband indication", buf, 2u);
    }

    FSModuleDAL::requestFSSync_sync(v9, 2, a4 == 4, a3);
    v10 = v11;
    goto LABEL_46;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Triggering soft reset with FS Sync due to baseband indication", buf, 2u);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14 || (v14 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v14) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v14);
      v15 = v14;
    }

    else
    {
      v15 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_null_create();
    v14 = 0;
  }

  xpc_release(v14);
  *buf = operator new(0x28uLL);
  v35 = xmmword_297430680;
  strcpy(*buf, "Baseband request for reset for FS Sync");
  v17 = xpc_string_create(*MEMORY[0x29EDBEB68]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBEB00], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_string_create(*MEMORY[0x29EDBF748]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBEEE0], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  if (v35 >= 0)
  {
    v21 = buf;
  }

  else
  {
    v21 = *buf;
  }

  v22 = xpc_string_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBED88], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = *MEMORY[0x29EDBEAA8];
  v25 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v26 = v25;
  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v25 | 7) + 1;
    }

    v27 = operator new(v28);
    __dst[1] = v26;
    v33 = v28 | 0x8000000000000000;
    __dst[0] = v27;
    goto LABEL_37;
  }

  HIBYTE(v33) = v25;
  v27 = __dst;
  if (v25)
  {
LABEL_37:
    memmove(v27, v24, v26);
  }

  *(v26 + v27) = 0;
  object = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    object = xpc_null_create();
  }

  v30 = 0;
  Service::runCommand(v9, __dst, &object, &v30);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v15);
  v10 = v37;
  if (v37)
  {
    goto LABEL_46;
  }
}

void sub_2972D887C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  xpc_release(v23);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 - 64);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,unsigned long long,unsigned long long)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void FSModuleDAL::registerEventHandlers_sync(FSModuleDAL *this)
{
  v61 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *__dst = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", __dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_104:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_104;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_104;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (MEMORY[0x2A1C7B500])
    {
      goto LABEL_6;
    }

LABEL_21:
    v13 = *(this + 13);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *__dst = 0;
      _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "DAL target but HSFilerDynamic library is not available. Should never happen", __dst, 2u);
    }

LABEL_23:
    v14 = *MEMORY[0x29EDBF460];
    v15 = strlen(*MEMORY[0x29EDBF460]);
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v15 | 7) + 1;
      }

      v17 = operator new(v18);
      *&__dst[8] = v16;
      *&__dst[16] = v18 | 0x8000000000000000;
      *__dst = v17;
    }

    else
    {
      __dst[23] = v15;
      v17 = __dst;
      if (!v15)
      {
LABEL_32:
        v17[v16] = 0;
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x20uLL);
        *v19 = &unk_2A1E365D8;
        v19[1] = this;
        v19[2] = v4;
        v19[3] = v6;
        v56 = v19;
        Service::registerEventHandler(this, __dst, v55);
        if (v56 == v55)
        {
          (*(*v56 + 32))(v56);
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v56)
          {
            (*(*v56 + 40))();
          }

          if ((__dst[23] & 0x80000000) == 0)
          {
LABEL_36:
            v20 = *MEMORY[0x29EDBF278];
            v21 = strlen(*MEMORY[0x29EDBF278]);
            if (v21 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v22 = v21;
            if (v21 >= 0x17)
            {
              if ((v21 | 7) == 0x17)
              {
                v24 = 25;
              }

              else
              {
                v24 = (v21 | 7) + 1;
              }

              v23 = operator new(v24);
              *&__dst[8] = v22;
              *&__dst[16] = v24 | 0x8000000000000000;
              *__dst = v23;
            }

            else
            {
              __dst[23] = v21;
              v23 = __dst;
              if (!v21)
              {
LABEL_45:
                v23[v22] = 0;
                atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v25 = operator new(0x20uLL);
                *v25 = &unk_2A1E36658;
                v25[1] = this;
                v25[2] = v4;
                v25[3] = v6;
                v54 = v25;
                Service::registerEventHandler(this, __dst, v53);
                if (v54 == v53)
                {
                  (*(*v54 + 32))(v54);
                  if ((__dst[23] & 0x80000000) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                else
                {
                  if (v54)
                  {
                    (*(*v54 + 40))();
                  }

                  if ((__dst[23] & 0x80000000) == 0)
                  {
LABEL_49:
                    v26 = *MEMORY[0x29EDBEFF0];
                    v27 = strlen(*MEMORY[0x29EDBEFF0]);
                    if (v27 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v28 = v27;
                    if (v27 >= 0x17)
                    {
                      if ((v27 | 7) == 0x17)
                      {
                        v30 = 25;
                      }

                      else
                      {
                        v30 = (v27 | 7) + 1;
                      }

                      v29 = operator new(v30);
                      *&__dst[8] = v28;
                      *&__dst[16] = v30 | 0x8000000000000000;
                      *__dst = v29;
                    }

                    else
                    {
                      __dst[23] = v27;
                      v29 = __dst;
                      if (!v27)
                      {
LABEL_58:
                        v29[v28] = 0;
                        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                        v31 = operator new(0x20uLL);
                        *v31 = &unk_2A1E366D8;
                        v31[1] = this;
                        v31[2] = v4;
                        v31[3] = v6;
                        v52 = v31;
                        Service::registerEventHandler(this, __dst, v51);
                        if (v52 == v51)
                        {
                          (*(*v52 + 32))(v52);
                          if ((__dst[23] & 0x80000000) == 0)
                          {
                            goto LABEL_62;
                          }
                        }

                        else
                        {
                          if (v52)
                          {
                            (*(*v52 + 40))();
                          }

                          if ((__dst[23] & 0x80000000) == 0)
                          {
LABEL_62:
                            v32 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
                            if (xmmword_2A13995D8)
                            {
                              v33 = 0;
                              v34 = *(&xmmword_2A13995D8 + 1);
                              if (!*(&xmmword_2A13995D8 + 1))
                              {
LABEL_65:
                                pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
                                if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v34->__on_zero_shared)(v34);
                                  std::__shared_weak_count::__release_weak(v34);
                                  if (!v33)
                                  {
                                    goto LABEL_68;
                                  }
                                }

                                else if (!v33)
                                {
LABEL_68:
                                  v35 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
                                  v36 = xmmword_2A13995D8;
                                  if (!xmmword_2A13995D8)
                                  {
                                    HSFilerRT::create_default_global(__dst, v35);
                                    v37 = *__dst;
                                    *__dst = 0uLL;
                                    v38 = *(&xmmword_2A13995D8 + 1);
                                    xmmword_2A13995D8 = v37;
                                    if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v38->__on_zero_shared)(v38);
                                      std::__shared_weak_count::__release_weak(v38);
                                    }

                                    v39 = *&__dst[8];
                                    if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v39->__on_zero_shared)(v39);
                                      std::__shared_weak_count::__release_weak(v39);
                                    }

                                    v36 = xmmword_2A13995D8;
                                  }

                                  v40 = *(&xmmword_2A13995D8 + 1);
                                  v49 = v36;
                                  v50 = *(&xmmword_2A13995D8 + 1);
                                  if (*(&xmmword_2A13995D8 + 1))
                                  {
                                    atomic_fetch_add_explicit((*(&xmmword_2A13995D8 + 1) + 8), 1uLL, memory_order_relaxed);
                                  }

                                  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
                                  v46[0] = MEMORY[0x29EDCA5F8];
                                  v46[1] = 1174405120;
                                  v46[2] = ___ZN11FSModuleDAL26registerEventHandlers_syncEv_block_invoke;
                                  v46[3] = &__block_descriptor_tmp_54;
                                  v46[4] = this;
                                  v46[5] = v4;
                                  v47 = v6;
                                  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                                  aBlock = _Block_copy(v46);
                                  HSFilerRT::registerBasebandResetDelegate();
                                  if (aBlock)
                                  {
                                    _Block_release(aBlock);
                                  }

                                  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                  {
                                    (v40->__on_zero_shared)(v40);
                                    std::__shared_weak_count::__release_weak(v40);
                                  }

                                  if (v47)
                                  {
                                    std::__shared_weak_count::__release_weak(v47);
                                  }
                                }

                                Service::eventsOn(this);
                                std::__shared_weak_count::__release_weak(v6);
                                v44 = *MEMORY[0x29EDCA608];
                                return;
                              }

LABEL_64:
                              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                              goto LABEL_65;
                            }

                            HSFilerRT::create_default_global(__dst, v32);
                            v41 = *__dst;
                            *__dst = 0uLL;
                            v42 = *(&xmmword_2A13995D8 + 1);
                            xmmword_2A13995D8 = v41;
                            if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v42->__on_zero_shared)(v42);
                              std::__shared_weak_count::__release_weak(v42);
                              v43 = *&__dst[8];
                              if (!*&__dst[8])
                              {
                                goto LABEL_95;
                              }
                            }

                            else
                            {
                              v43 = *&__dst[8];
                              if (!*&__dst[8])
                              {
                                goto LABEL_95;
                              }
                            }

                            if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v43->__on_zero_shared)(v43);
                              std::__shared_weak_count::__release_weak(v43);
                              v34 = *(&xmmword_2A13995D8 + 1);
                              v33 = xmmword_2A13995D8 == 0;
                              if (!*(&xmmword_2A13995D8 + 1))
                              {
                                goto LABEL_65;
                              }

                              goto LABEL_64;
                            }

LABEL_95:
                            v34 = *(&xmmword_2A13995D8 + 1);
                            v33 = xmmword_2A13995D8 == 0;
                            if (!*(&xmmword_2A13995D8 + 1))
                            {
                              goto LABEL_65;
                            }

                            goto LABEL_64;
                          }
                        }

                        operator delete(*__dst);
                        goto LABEL_62;
                      }
                    }

                    memmove(v29, v26, v28);
                    goto LABEL_58;
                  }
                }

                operator delete(*__dst);
                goto LABEL_49;
              }
            }

            memmove(v23, v20, v22);
            goto LABEL_45;
          }
        }

        operator delete(*__dst);
        goto LABEL_36;
      }
    }

    memmove(v17, v14, v16);
    goto LABEL_32;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v6);
  if (!MEMORY[0x2A1C7B500])
  {
    goto LABEL_21;
  }

LABEL_6:
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v7 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v8 = xmmword_2A13995D8;
  if (!xmmword_2A13995D8)
  {
    HSFilerRT::create_default_global(__dst, v7);
    v9 = *__dst;
    *__dst = 0uLL;
    v10 = *(&xmmword_2A13995D8 + 1);
    xmmword_2A13995D8 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *&__dst[8];
    if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = xmmword_2A13995D8;
  }

  v12 = *(&xmmword_2A13995D8 + 1);
  v49 = v8;
  v50 = *(&xmmword_2A13995D8 + 1);
  if (*(&xmmword_2A13995D8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13995D8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (v8)
  {
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    goto LABEL_23;
  }

  v45 = GetOsLogContext()[1];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
  {
    *__dst = 136315906;
    *&__dst[4] = "ABM ASSERT";
    *&__dst[12] = 2080;
    *&__dst[14] = "hsFilerRT != nullptr";
    *&__dst[22] = 2080;
    v58 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/RFS/FSModuleDAL.cpp";
    v59 = 1024;
    v60 = 243;
    _os_log_fault_impl(&dword_297288000, v45, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", __dst, 0x26u);
  }

  __break(1u);
}

void sub_2972D93B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  std::__shared_weak_count::__release_weak(v27);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleDAL26registerEventHandlers_syncEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v11 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
        goto LABEL_14;
      }

      v8[0] = MEMORY[0x29EDCA5F8];
      v8[1] = 1174405120;
      v8[2] = ___ZN11FSModuleDAL26registerEventHandlers_syncEv_block_invoke_2;
      v8[3] = &__block_descriptor_tmp_50_0;
      v8[4] = v5;
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((v5 + 72), v8);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_11:
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        return;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_11;
      }
    }
  }
}

void ___ZN11FSModuleDAL26registerEventHandlers_syncEv_block_invoke_2(uint64_t a1)
{
  __p[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v26 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v26 = *v26;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v26;
    _os_log_error_impl(&dword_297288000, v3, OS_LOG_TYPE_ERROR, "HSFiler requesting modem hard reset due to: %s", __p, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEB00], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_string_create(*MEMORY[0x29EDBF750]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEEE0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  memset(__p, 170, 24);
  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = *(a1 + 63);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  v12 = v11 + 10;
  if (v11 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 < 0x17)
  {
    __p[1] = 8237;
    __p[2] = 0;
    HIBYTE(__p[2]) = v11 + 10;
    __p[0] = *"HSFiler - ";
    v15 = &__p[1] + 2;
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v12 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v12 | 7) + 1;
    }

    v14 = operator new(v13);
    __p[1] = (v11 + 10);
    __p[2] = (v13 | 0x8000000000000000);
    __p[0] = v14;
    *(v14 + 4) = 8237;
    *v14 = *"HSFiler - ";
    v15 = v14 + 10;
  }

  if (v10 >= 0)
  {
    v16 = (a1 + 40);
  }

  else
  {
    v16 = *(a1 + 40);
  }

  memmove(v15, v16, v11);
LABEL_26:
  v15[v11] = 0;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBED88], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = *MEMORY[0x29EDBEAA8];
  v21 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v21 | 7) + 1;
    }

    v23 = operator new(v24);
    __dst[1] = v22;
    v30 = v24 | 0x8000000000000000;
    __dst[0] = v23;
LABEL_40:
    memmove(v23, v20, v22);
    *(v22 + v23) = 0;
    object = v5;
    if (v5)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  HIBYTE(v30) = v21;
  v23 = __dst;
  if (v21)
  {
    goto LABEL_40;
  }

  LOBYTE(__dst[0]) = 0;
  object = v5;
  if (v5)
  {
LABEL_35:
    xpc_retain(v5);
    goto LABEL_42;
  }

LABEL_41:
  object = xpc_null_create();
LABEL_42:
  v27 = 0;
  Service::runCommand(v2, __dst, &object, &v27);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst[0]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_46:
    operator delete(__p[0]);
    goto LABEL_44;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_46;
  }

LABEL_44:
  xpc_release(v5);
  v25 = *MEMORY[0x29EDCA608];
}

void sub_2972D9A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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

uint64_t FSModuleDAL::requestFSSync_sync(unsigned int,BOOL,FSModuleDAL::file)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void FSModuleDAL::singleFlushOperation_sync(_DWORD *a1, int a2, char a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "false";
    v8 = a1[246];
    if (a2)
    {
      v7 = "true";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109378;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v7;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Requesting flush(%u) forShutdown=%s", &buf, 0x12u);
  }

  if ((BBUFSServerSetConfig() & 1) == 0)
  {
    v10 = *(a1 + 13);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v11 = "failed to set shutdown flag for NVM sync with BBU";
LABEL_24:
    v13 = v10;
    v15 = 2;
    goto LABEL_25;
  }

  if ((a3 & 1) != 0 && (BBUFSServerSetConfig() & 1) == 0)
  {
    v12 = *(a1 + 13);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "SyncDynamic";
    v11 = "BBUFSServer failed to set config %s";
    v13 = v12;
LABEL_21:
    v15 = 12;
LABEL_25:
    _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, v11, &buf, v15);
    goto LABEL_26;
  }

  if ((a3 & 2) != 0 && (BBUFSServerSetConfig() & 1) == 0)
  {
    v14 = *(a1 + 13);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "SyncCalibration";
    v11 = "BBUFSServer failed to set config %s";
    v13 = v14;
    goto LABEL_21;
  }

  if ((BBUFSServerStart() & 1) == 0)
  {
    v10 = *(a1 + 13);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v11 = "failed starting file server";
    goto LABEL_24;
  }

  if (BBUFSServerFlush())
  {
    v9 = 1;
    goto LABEL_27;
  }

  v10 = *(a1 + 13);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v11 = "Flush failed";
    goto LABEL_24;
  }

LABEL_26:
  v9 = 0;
LABEL_27:
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 88))(&v26, a1);
  v16 = v26;
  if (!v26)
  {
    goto LABEL_36;
  }

  if (*(a1 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 14), *(a1 + 15));
  }

  else
  {
    __p = *(a1 + 28);
  }

  v17 = *(v16 + 48);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  (*(*v17 + 32))(v17, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      v18 = *(a1 + 13);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v18 = *(a1 + 13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
LABEL_37:
    v19 = *(a1 + 536);
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v9;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v19;
    _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Flush completed with success: %u, running: %u", &buf, 0xEu);
  }

LABEL_38:
  if (v9)
  {
    *(a1 + 976) = 0;
    BBUFSServerStop();
    v20 = a1[247] + 1;
    a1[247] = v20;
    v21 = *(a1 + 13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = a1[246];
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v20;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v22;
      _os_log_impl(&dword_297288000, v21, OS_LOG_TYPE_DEFAULT, "#I Checking response fSyncsCompleted=%u fSyncsRequested=%u", &buf, 0xEu);
      v20 = a1[247];
    }

    if (v20 >= a1[246])
    {
      FSModuleDAL::execPendingResponses_sync(a1, 1);
    }
  }

  else
  {
    buf.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
    *&buf.__r_.__value_.__r.__words[1] = xmmword_297430690;
    strcpy(buf.__r_.__value_.__l.__data_, "filesystem flush operation failed -- check ARI and BB state --");
    FSModuleDAL::resetBaseband_sync(a1, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v23 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_2972DA0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void FSModuleDAL::checkAndExecPendingResponses_sync(FSModuleDAL *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 247);
    v5 = *(this + 246);
    v7[0] = 67109376;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Checking response fSyncsCompleted=%u fSyncsRequested=%u", v7, 0xEu);
    if (*(this + 247) < *(this + 246))
    {
      goto LABEL_3;
    }

LABEL_6:
    FSModuleDAL::execPendingResponses_sync(this, 1);
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  if (*(this + 247) >= *(this + 246))
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x29EDCA608];
}

void FSModuleDAL::resetBaseband_sync(FSModuleDAL *a1, uint64_t a2)
{
  FSModuleDAL::execPendingResponses_sync(a1, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEB00], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_string_create(*MEMORY[0x29EDBF7E8]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEEE0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = xpc_string_create(v10);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBED88], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = *MEMORY[0x29EDBEAA8];
  v14 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    __dst[1] = v15;
    v21 = v17 | 0x8000000000000000;
    __dst[0] = v16;
LABEL_25:
    memmove(v16, v13, v15);
    *(v15 + v16) = 0;
    object = v5;
    if (v5)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  HIBYTE(v21) = v14;
  v16 = __dst;
  if (v14)
  {
    goto LABEL_25;
  }

  LOBYTE(__dst[0]) = 0;
  object = v5;
  if (v5)
  {
LABEL_20:
    xpc_retain(v5);
    goto LABEL_27;
  }

LABEL_26:
  object = xpc_null_create();
LABEL_27:
  v18 = 0;
  Service::runCommand(a1, __dst, &object, &v18);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v5);
}

void sub_2972DA4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);
  _Unwind_Resume(a1);
}

uint64_t FSModuleDAL::handleBasebandBooted_sync(uint64_t this)
{
  if ((*(this + 944) & 1) == 0)
  {
    *(this + 945) = 1;
  }

  return this;
}

double FSModuleDAL::handleBasebandReset_sync(FSModuleDAL *this)
{
  FSModuleDAL::execPendingResponses_sync(this, 0);
  result = 0.0;
  *(this + 123) = 0;
  *(this + 976) = 0;
  *(this + 945) = 0;
  return result;
}

void FSModuleDAL::execPendingResponses_sync(FSModuleDAL *this, char a2)
{
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing responses", &v19, 2u);
  }

  v5 = this + 952;
  v6 = *(this + 120);
  if (v6 != this + 952)
  {
    while (1)
    {
      v7 = *(v6 + 2);
      if (v7)
      {
        break;
      }

      v8 = 0;
      v9 = *(v6 + 3);
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (!v8)
      {
        v11 = 0;
        v19 = MEMORY[0x29EDCA5F8];
        v20 = 1174405120;
        v21 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
        v22 = &__block_descriptor_tmp_93;
LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }

      v10 = _Block_copy(v8);
      v11 = v10;
      v19 = MEMORY[0x29EDCA5F8];
      v20 = 1174405120;
      v21 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
      v22 = &__block_descriptor_tmp_93;
      if (!v10)
      {
        goto LABEL_15;
      }

      v12 = _Block_copy(v10);
LABEL_16:
      aBlock = v12;
      v24 = a2;
      dispatch_async(v9, &v19);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      if (v9)
      {
        dispatch_release(v9);
      }

      if (v8)
      {
        _Block_release(v8);
      }

      v6 = *(v6 + 1);
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v8 = _Block_copy(v7);
    v9 = *(v6 + 3);
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_8:
    dispatch_retain(v9);
    goto LABEL_9;
  }

LABEL_24:
  if (*(this + 121))
  {
    v13 = *(this + 120);
    v14 = *(*(this + 119) + 8);
    v15 = *v13;
    *(v15 + 8) = v14;
    *v14 = v15;
    *(this + 121) = 0;
    if (v13 != v5)
    {
      do
      {
        v16 = *(v13 + 1);
        v17 = *(v13 + 3);
        if (v17)
        {
          dispatch_release(v17);
        }

        v18 = *(v13 + 2);
        if (v18)
        {
          _Block_release(v18);
        }

        operator delete(v13);
        v13 = v16;
      }

      while (v16 != v5);
    }
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<HSFilerRT>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t *std::list<dispatch::callback<void({block_pointer})(BOOL)>>::~list(uint64_t *a1)
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
        v6 = v2[1];
        v7 = v2[3];
        if (v7)
        {
          dispatch_release(v7);
        }

        v8 = v2[2];
        if (v8)
        {
          _Block_release(v8);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(BOOL)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<FSModuleDAL>::shared_ptr[abi:ne200100]<FSModuleDAL,std::shared_ptr<FSModuleDAL> ctu::SharedSynchronizable<FSModuleDAL>::make_shared_ptr<FSModuleDAL>(FSModuleDAL*)::{lambda(FSModuleDAL*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E36550;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2972DAAA8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<FSModuleDAL> ctu::SharedSynchronizable<FSModuleDAL>::make_shared_ptr<FSModuleDAL>(FSModuleDAL*)::{lambda(FSModuleDAL*)#1}::operator() const(FSModuleDAL*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<FSModuleDAL *,std::shared_ptr<FSModuleDAL> ctu::SharedSynchronizable<FSModuleDAL>::make_shared_ptr<FSModuleDAL>(FSModuleDAL*)::{lambda(FSModuleDAL *)#1},std::allocator<FSModuleDAL>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<FSModuleDAL *,std::shared_ptr<FSModuleDAL> ctu::SharedSynchronizable<FSModuleDAL>::make_shared_ptr<FSModuleDAL>(FSModuleDAL*)::{lambda(FSModuleDAL *)#1},std::allocator<FSModuleDAL>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11FSModuleDALE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11FSModuleDALE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11FSModuleDALE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11FSModuleDALE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<FSModuleDAL> ctu::SharedSynchronizable<FSModuleDAL>::make_shared_ptr<FSModuleDAL>(FSModuleDAL*)::{lambda(FSModuleDAL*)#1}::operator() const(FSModuleDAL*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11FSModuleDALE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E36598;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11FSModuleDALEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11FSModuleDALEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  FSModuleDAL::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2972DAE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<FSModuleDAL::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  FSModuleDAL::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2972DAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E365D8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E365D8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E365D8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E365D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_2972DB384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v46 = *a1;
  v1 = (*a1)->__vftable;
  shared_weak_owners = (*a1)->__shared_weak_owners_;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  object[0] = shared_weak_owners;
  if (shared_weak_owners)
  {
    xpc_retain(shared_weak_owners);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::bridge(cf, object, v3);
  v4 = cf[0];
  if (!cf[0] || (v5 = CFGetTypeID(cf[0]), v5 != CFDictionaryGetTypeID()))
  {
    v4 = 0;
    v54 = 0;
    v6 = cf[0];
    if (!cf[0])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v54 = v4;
  CFRetain(v4);
  v6 = cf[0];
  if (cf[0])
  {
LABEL_9:
    CFRelease(v6);
  }

LABEL_10:
  xpc_release(object[0]);
  if (!v4)
  {
    goto LABEL_105;
  }

  v53[0] = 0xAAAAAAAAAAAAAAAALL;
  v53[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v53, v4);
  cf[0] = 0;
  cf[1] = 0;
  v52 = 0;
  ctu::cf::MakeCFString::MakeCFString(&__p, *MEMORY[0x29EDBEAF8]);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26DF80](&__p);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(cf[0]);
  }

  *cf = *object;
  v52 = object[2];
  v7 = *MEMORY[0x29EDBEDF0];
  v8 = strlen(*MEMORY[0x29EDBEDF0]);
  v9 = SHIBYTE(object[2]);
  if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
  {
    if (v8 == cf[1])
    {
      if (v8 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(cf[0], v7, v8))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v8 == SHIBYTE(v52) && !memcmp(cf, v7, v8))
  {
LABEL_42:
    if ((v1[23].__get_deleter & 1) == 0)
    {
      BYTE1(v1[23].__get_deleter) = 1;
    }

    goto LABEL_65;
  }

  v10 = *MEMORY[0x29EDBF210];
  v11 = strlen(*MEMORY[0x29EDBF210]);
  if ((v9 & 0x80000000) != 0)
  {
    if (v11 == cf[1])
    {
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(cf[0], v10, v11))
      {
LABEL_44:
        memset(object, 170, 24);
        v16 = *MEMORY[0x29EDBEB00];
        __p = 0;
        v48 = 0;
        v49 = 0;
        ctu::cf::MakeCFString::MakeCFString(&v55, v16);
        ctu::cf::map_adapter::getString();
        MEMORY[0x29C26DF80](&v55);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p);
        }

        v17 = *MEMORY[0x29EDBEB60];
        v18 = strlen(*MEMORY[0x29EDBEB60]);
        v19 = SHIBYTE(object[2]);
        if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
        {
          if (v18 == object[1])
          {
            if (v18 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            if (!memcmp(object[0], v17, v18))
            {
              goto LABEL_61;
            }
          }
        }

        else if (v18 == SHIBYTE(object[2]) && !memcmp(object, v17, v18))
        {
LABEL_61:
          FSModuleDAL::execPendingResponses_sync(v1, 0);
          v1[24].__get_deleter = 0;
          LOBYTE(v1[24].__on_zero_shared) = 0;
          BYTE1(v1[23].__get_deleter) = 0;
          get_deleter = v1[2].__get_deleter;
          if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p) = 0;
            _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Hard Will-Reset", &__p, 2u);
          }

          goto LABEL_63;
        }

        v20 = strlen(*MEMORY[0x29EDBEB68]);
        v21 = v20;
        if ((v19 & 0x80000000) != 0)
        {
          if (v20 == object[1])
          {
            if (v20 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v22 = object[0];
            goto LABEL_59;
          }
        }

        else if (v20 == v19)
        {
          v22 = object;
LABEL_59:
          if (!memcmp(v22, *MEMORY[0x29EDBEB68], v21))
          {
            LOBYTE(v1[24].__on_zero_shared) = 1;
            HIDWORD(v1[24].__on_zero_shared) = 5;
            LOBYTE(v1[24].__on_zero_shared_weak) = 1;
          }
        }

LABEL_63:
        if (SHIBYTE(object[2]) < 0)
        {
          operator delete(object[0]);
        }

        goto LABEL_65;
      }
    }
  }

  else if (v11 == v9 && !memcmp(cf, v10, v11))
  {
    goto LABEL_44;
  }

  v12 = *MEMORY[0x29EDBF0C8];
  v13 = strlen(*MEMORY[0x29EDBF0C8]);
  if ((v9 & 0x80000000) != 0)
  {
    if (v13 == cf[1])
    {
      if (v13 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(cf[0], v12, v13))
      {
        goto LABEL_41;
      }
    }
  }

  else if (v13 == v9 && !memcmp(cf, v12, v13))
  {
    goto LABEL_41;
  }

  v14 = *MEMORY[0x29EDBF420];
  v15 = strlen(*MEMORY[0x29EDBF420]);
  if ((v9 & 0x80000000) == 0)
  {
    if (v15 != v9 || memcmp(cf, v14, v15))
    {
      goto LABEL_65;
    }

LABEL_41:
    FSModuleDAL::execPendingResponses_sync(v1, 0);
    v1[24].__get_deleter = 0;
    LOBYTE(v1[24].__on_zero_shared) = 0;
    BYTE1(v1[23].__get_deleter) = 0;
    goto LABEL_65;
  }

  if (v15 == cf[1])
  {
    if (v15 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (!memcmp(cf[0], v14, v15))
    {
      goto LABEL_41;
    }
  }

LABEL_65:
  v24 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (!xmmword_2A13995D8)
  {
    HSFilerRT::create_default_global(object, v24);
    v29 = *object;
    object[0] = 0;
    object[1] = 0;
    v30 = *(&xmmword_2A13995D8 + 1);
    xmmword_2A13995D8 = v29;
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v31 = object[1];
      if (!object[1])
      {
        goto LABEL_77;
      }
    }

    else
    {
      v31 = object[1];
      if (!object[1])
      {
        goto LABEL_77;
      }
    }

    if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v26 = *(&xmmword_2A13995D8 + 1);
      v25 = xmmword_2A13995D8 == 0;
      if (!*(&xmmword_2A13995D8 + 1))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

LABEL_77:
    v26 = *(&xmmword_2A13995D8 + 1);
    v25 = xmmword_2A13995D8 == 0;
    if (!*(&xmmword_2A13995D8 + 1))
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v25 = 0;
  v26 = *(&xmmword_2A13995D8 + 1);
  if (*(&xmmword_2A13995D8 + 1))
  {
LABEL_67:
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_68:
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    v27 = HIBYTE(v52);
    v28 = SHIBYTE(v52);
    if (v25)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v27 = HIBYTE(v52);
    v28 = SHIBYTE(v52);
    if (v25)
    {
      goto LABEL_71;
    }
  }

  v32 = *MEMORY[0x29EDBEFB8];
  v33 = strlen(*MEMORY[0x29EDBEFB8]);
  if (v28 < 0)
  {
    if (v33 != cf[1])
    {
      goto LABEL_103;
    }

    if (v33 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(cf[0], v32, v33))
    {
      goto LABEL_71;
    }

    goto LABEL_89;
  }

  if (v33 != v27)
  {
    goto LABEL_84;
  }

  if (!memcmp(cf, v32, v33))
  {
LABEL_89:
    v35 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
    v36 = xmmword_2A13995D8;
    if (!xmmword_2A13995D8)
    {
      HSFilerRT::create_default_global(object, v35);
      v37 = *object;
      object[0] = 0;
      object[1] = 0;
      v38 = *(&xmmword_2A13995D8 + 1);
      xmmword_2A13995D8 = v37;
      if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }

      v39 = object[1];
      if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v39->__on_zero_shared)(v39);
        std::__shared_weak_count::__release_weak(v39);
      }

      v36 = xmmword_2A13995D8;
    }

    v40 = *(&xmmword_2A13995D8 + 1);
    __p = v36;
    v48 = *(&xmmword_2A13995D8 + 1);
    if (*(&xmmword_2A13995D8 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13995D8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
    HSFilerRT::basebandReadyEventHandler(v36);
    if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    LOBYTE(v28) = HIBYTE(v52);
  }

LABEL_71:
  if ((v28 & 0x80) != 0)
  {
LABEL_103:
    operator delete(cf[0]);
    MEMORY[0x29C26DFC0](v53);
    v34 = v54;
    if (!v54)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_84:
  MEMORY[0x29C26DFC0](v53);
  v34 = v54;
  if (v54)
  {
LABEL_104:
    CFRelease(v34);
  }

LABEL_105:
  if (v46)
  {
    xpc_release(v46->__shared_weak_owners_);
    v46->__shared_weak_owners_ = 0;
    shared_owners = v46->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v42 = v46->__shared_owners_;
      if (v42)
      {
        dispatch_release(v42);
      }
    }

    operator delete(v46);
  }

  v43 = a1;
  if (a1)
  {
    v44 = a1[2];
    if (v44)
    {
      if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
        v43 = a1;
      }
    }

    operator delete(v43);
  }
}

void sub_2972DBCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26DFC0](v27 - 64);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v27 - 48));
  std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2972DBDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  xpc_release(object);
  std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E36658;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E36658;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E36658;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E36658;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}