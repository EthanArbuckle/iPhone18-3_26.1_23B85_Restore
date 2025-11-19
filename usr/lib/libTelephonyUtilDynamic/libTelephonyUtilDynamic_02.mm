void ___ZN3ctu20FirstBootAfterUpdate29scheduleEvaluationExpiryTimerEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        dispatch_source_cancel(*(a1 + 56));
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_1A90E3000, v6, OS_LOG_TYPE_DEFAULT, "#I First Boot After Update scaling timer expired", v7, 2u);
        }

        *(v3 + 48) = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __copy_helper_block_e8_40c51_ZTSNSt3__18weak_ptrIN3ctu20FirstBootAfterUpdateEEE56c22_ZTSN8dispatch6sourceE(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[7] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c51_ZTSNSt3__18weak_ptrIN3ctu20FirstBootAfterUpdateEEE56c22_ZTSN8dispatch6sourceE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_pointer<ctu::FirstBootAfterUpdate *,std::shared_ptr<ctu::FirstBootAfterUpdate> ctu::SharedSynchronizable<ctu::FirstBootAfterUpdate>::make_shared_ptr<ctu::FirstBootAfterUpdate>(ctu::FirstBootAfterUpdate*)::{lambda(ctu::FirstBootAfterUpdate *)#1},std::allocator<ctu::FirstBootAfterUpdate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::FirstBootAfterUpdate *,std::shared_ptr<ctu::FirstBootAfterUpdate> ctu::SharedSynchronizable<ctu::FirstBootAfterUpdate>::make_shared_ptr<ctu::FirstBootAfterUpdate>(ctu::FirstBootAfterUpdate*)::{lambda(ctu::FirstBootAfterUpdate *)#1},std::allocator<ctu::FirstBootAfterUpdate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<ctu::FirstBootAfterUpdate> ctu::SharedSynchronizable<ctu::FirstBootAfterUpdate>::make_shared_ptr<ctu::FirstBootAfterUpdate>(ctu::FirstBootAfterUpdate*)::{lambda(ctu::FirstBootAfterUpdate*)#1}::operator() const(ctu::FirstBootAfterUpdate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<ctu::FirstBootAfterUpdate::isFirstBootAfterUpdate(void)::$_0 &&>>(ctu::FirstBootAfterUpdate ****a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = ***a1;
  memset(&v72, 0, sizeof(v72));
  memset(&v71, 0, sizeof(v71));
  memset(&v70, 0, sizeof(v70));
  memset(&v69, 170, sizeof(v69));
  CurrentBootSessionUUID = ctu::FirstBootAfterUpdate::getCurrentBootSessionUUID(v1, &v69);
  memset(&v68, 170, sizeof(v68));
  ctu::FirstBootAfterUpdate::getCurrentOSVersion(CurrentBootSessionUUID);
  pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  v3 = off_1ED40DD70;
  if (!off_1ED40DD70)
  {
    FirstBootAfterUpdatePrefs::create_default_global(buf);
    v4 = *(&off_1ED40DD70 + 1);
    off_1ED40DD70 = *buf;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v3 = off_1ED40DD70;
    }

    else
    {
      v3 = *buf;
    }
  }

  v5 = *(&off_1ED40DD70 + 1);
  if (*(&off_1ED40DD70 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "BootSessionUUID");
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = v72;
  }

  *buf = __p;
  *&buf[8] = &v72;
  *&buf[16] = &v65;
  v74 = v3;
  ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::getPreference<std::string>(std::string const&,std::string &,std::string)::{lambda(void)#1}>(v3 + 6, buf);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  v6 = off_1ED40DD70;
  if (!off_1ED40DD70)
  {
    FirstBootAfterUpdatePrefs::create_default_global(buf);
    v7 = *(&off_1ED40DD70 + 1);
    off_1ED40DD70 = *buf;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      v6 = off_1ED40DD70;
    }

    else
    {
      v6 = *buf;
    }
  }

  v8 = *(&off_1ED40DD70 + 1);
  if (*(&off_1ED40DD70 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "CurrentOSVersion");
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v71;
  }

  *buf = __p;
  *&buf[8] = &v71;
  *&buf[16] = &v64;
  v74 = v6;
  ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::getPreference<std::string>(std::string const&,std::string &,std::string)::{lambda(void)#1}>(v6 + 6, buf);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  v9 = off_1ED40DD70;
  if (!off_1ED40DD70)
  {
    FirstBootAfterUpdatePrefs::create_default_global(buf);
    v10 = *(&off_1ED40DD70 + 1);
    off_1ED40DD70 = *buf;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v9 = off_1ED40DD70;
    }

    else
    {
      v9 = *buf;
    }
  }

  v11 = *(&off_1ED40DD70 + 1);
  if (*(&off_1ED40DD70 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "PrevOSVersion");
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v70;
  }

  *buf = __p;
  *&buf[8] = &v70;
  *&buf[16] = &v63;
  v74 = v9;
  ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::getPreference<std::string>(std::string const&,std::string &,std::string)::{lambda(void)#1}>(v9 + 6, buf);
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(v1 + 5);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v14 = &v69;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v69.__r_.__value_.__r.__words[0];
    }

    v15 = &v68;
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v68.__r_.__value_.__r.__words[0];
    }

    v16 = &v72;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v72.__r_.__value_.__r.__words[0];
    }

    v17 = &v71;
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v71.__r_.__value_.__r.__words[0];
    }

    v18 = &v70;
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v70.__r_.__value_.__r.__words[0];
    }

    *buf = 136316162;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    *&buf[22] = 2080;
    v74 = v16;
    v75 = 2080;
    v76 = v17;
    v77 = 2080;
    v78 = v18;
    _os_log_impl(&dword_1A90E3000, v12, OS_LOG_TYPE_DEFAULT, "#I cBS: %s, cOS: %s, cBSPref: %s, cOSPref: %s, pOSPref: %s", buf, 0x34u);
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v72.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v20 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v69.__r_.__value_.__l.__size_;
    }

    if (size == v20)
    {
      v21 = (v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v72 : v72.__r_.__value_.__r.__words[0];
      v22 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v69 : v69.__r_.__value_.__r.__words[0];
      v13 = memcmp(v21, v22, size);
      if (!v13)
      {
        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = v71.__r_.__value_.__l.__size_;
        }

        v36 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v70.__r_.__value_.__l.__size_;
        }

        if (v35 != v36 || ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v37 = &v71) : (v37 = v71.__r_.__value_.__r.__words[0]), (v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v38 = &v70) : (v38 = v70.__r_.__value_.__r.__words[0]), memcmp(v37, v38, v35)))
        {
          v39 = *(v1 + 5);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A90E3000, v39, OS_LOG_TYPE_DEFAULT, "#I First Boot After Update scenario detected (os version pref mismatch in same boot)", buf, 2u);
          }

          _MergedGlobals_1 = 1;
        }

        goto LABEL_201;
      }
    }

    ctu::FirstBootAfterUpdate::getCurrentOSVersion(v13);
    v23 = buf[23];
    if (buf[23] >= 0)
    {
      v24 = buf[23];
    }

    else
    {
      v24 = *&buf[8];
    }

    v25 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v71.__r_.__value_.__l.__size_;
    }

    if (v24 == v25)
    {
      if (buf[23] >= 0)
      {
        v26 = buf;
      }

      else
      {
        v26 = *buf;
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v71;
      }

      else
      {
        v27 = v71.__r_.__value_.__r.__words[0];
      }

      v28 = memcmp(v26, v27, v24) == 0;
      if ((v23 & 0x80000000) == 0)
      {
LABEL_93:
        if (!v28)
        {
          v32 = *(v1 + 5);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A90E3000, v32, OS_LOG_TYPE_DEFAULT, "#I First Boot After Update scenario detected (os version mismatch across different boot)", buf, 2u);
          }

          _MergedGlobals_1 = 1;
        }

        pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
        v33 = off_1ED40DD70;
        if (!off_1ED40DD70)
        {
          FirstBootAfterUpdatePrefs::create_default_global(buf);
          v34 = *(&off_1ED40DD70 + 1);
          off_1ED40DD70 = *buf;
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            v33 = off_1ED40DD70;
          }

          else
          {
            v33 = *buf;
          }
        }

        v40 = *(&off_1ED40DD70 + 1);
        if (*(&off_1ED40DD70 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(__p, "BootSessionUUID");
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v62, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
        }

        else
        {
          v62 = v69;
        }

        *buf = __p;
        *&buf[8] = &v62;
        *&buf[16] = v33;
        ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::setPreference<std::string>(std::string const&,std::string)::{lambda(void)#1}>(v33 + 6, buf);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
        v41 = off_1ED40DD70;
        if (!off_1ED40DD70)
        {
          FirstBootAfterUpdatePrefs::create_default_global(buf);
          v42 = *(&off_1ED40DD70 + 1);
          off_1ED40DD70 = *buf;
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            v41 = off_1ED40DD70;
          }

          else
          {
            v41 = *buf;
          }
        }

        v43 = *(&off_1ED40DD70 + 1);
        if (*(&off_1ED40DD70 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(__p, "CurrentOSVersion");
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v61, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
        }

        else
        {
          v61 = v68;
        }

        *buf = __p;
        *&buf[8] = &v61;
        *&buf[16] = v41;
        ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::setPreference<std::string>(std::string const&,std::string)::{lambda(void)#1}>(v41 + 6, buf);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
        v44 = off_1ED40DD70;
        if (!off_1ED40DD70)
        {
          FirstBootAfterUpdatePrefs::create_default_global(buf);
          v45 = *(&off_1ED40DD70 + 1);
          off_1ED40DD70 = *buf;
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            v44 = off_1ED40DD70;
          }

          else
          {
            v44 = *buf;
          }
        }

        v46 = *(&off_1ED40DD70 + 1);
        if (*(&off_1ED40DD70 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(__p, "PrevOSVersion");
        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v60, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
        }

        else
        {
          v60 = v71;
        }

        *buf = __p;
        *&buf[8] = &v60;
        *&buf[16] = v44;
        ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::setPreference<std::string>(std::string const&,std::string)::{lambda(void)#1}>(v44 + 6, buf);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (v46)
        {
          v47 = v46;
LABEL_200:
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          goto LABEL_201;
        }

        goto LABEL_201;
      }
    }

    else
    {
      v28 = 0;
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    operator delete(*buf);
    goto LABEL_93;
  }

  v29 = *(v1 + 5);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A90E3000, v29, OS_LOG_TYPE_DEFAULT, "#I First Boot After Update scenario detected (boot session doesn't exist)", buf, 2u);
  }

  _MergedGlobals_1 = 1;
  pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  v30 = off_1ED40DD70;
  if (!off_1ED40DD70)
  {
    FirstBootAfterUpdatePrefs::create_default_global(buf);
    v31 = *(&off_1ED40DD70 + 1);
    off_1ED40DD70 = *buf;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      v30 = off_1ED40DD70;
    }

    else
    {
      v30 = *buf;
    }
  }

  v48 = *(&off_1ED40DD70 + 1);
  if (*(&off_1ED40DD70 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "BootSessionUUID");
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v69;
  }

  *buf = __p;
  *&buf[8] = &v62;
  *&buf[16] = v30;
  ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::setPreference<std::string>(std::string const&,std::string)::{lambda(void)#1}>(v30 + 6, buf);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  v49 = off_1ED40DD70;
  if (!off_1ED40DD70)
  {
    FirstBootAfterUpdatePrefs::create_default_global(buf);
    v50 = *(&off_1ED40DD70 + 1);
    off_1ED40DD70 = *buf;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      v49 = off_1ED40DD70;
    }

    else
    {
      v49 = *buf;
    }
  }

  v51 = *(&off_1ED40DD70 + 1);
  if (*(&off_1ED40DD70 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "CurrentOSVersion");
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = v68;
  }

  *buf = __p;
  *&buf[8] = &v61;
  *&buf[16] = v49;
  ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::setPreference<std::string>(std::string const&,std::string)::{lambda(void)#1}>(v49 + 6, buf);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  pthread_mutex_lock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  v52 = off_1ED40DD70;
  if (!off_1ED40DD70)
  {
    FirstBootAfterUpdatePrefs::create_default_global(buf);
    v53 = *(&off_1ED40DD70 + 1);
    off_1ED40DD70 = *buf;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      v52 = off_1ED40DD70;
    }

    else
    {
      v52 = *buf;
    }
  }

  v54 = *(&off_1ED40DD70 + 1);
  if (*(&off_1ED40DD70 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED40DD70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(buf, "PrevOSVersion");
  os_unfair_lock_lock((v52 + 40));
  if (buf[23] >= 0)
  {
    v55 = buf;
  }

  else
  {
    v55 = *buf;
  }

  v56 = CFStringCreateWithCString(0, v55, 0x8000100u);
  v60.__r_.__value_.__r.__words[0] = v56;
  v57 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "", 0x8000100u);
  __p[0] = v57;
  if (v57)
  {
    v58 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(v56, v57, *(v52 + 8), *(v52 + 16), *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(*(v52 + 8), *(v52 + 16), v58);
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(__p);
  ctu::cf::MakeCFString::~MakeCFString(&v60.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock((v52 + 40));
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v54)
  {
    v47 = v54;
    goto LABEL_200;
  }

LABEL_201:
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v59 = *MEMORY[0x1E69E9840];
}

void sub_1A90FEA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  pthread_mutex_unlock(&ctu::Singleton<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs,ctu::PthreadMutexGuardPolicy<FirstBootAfterUpdatePrefs>>::sInstance);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 201) < 0)
  {
    operator delete(*(v44 - 224));
  }

  if (*(v44 - 177) < 0)
  {
    operator delete(*(v44 - 200));
  }

  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
  }

  if (*(v44 - 129) < 0)
  {
    operator delete(*(v44 - 152));
  }

  _Unwind_Resume(a1);
}

void FirstBootAfterUpdatePrefs::create_default_global(FirstBootAfterUpdatePrefs *this)
{
  v2 = operator new(0x30uLL);
  ctu::cf::plist_adapter::plist_adapter(v2, @"com.apple.libtu.timerscaling.firstbootafterupdate", *MEMORY[0x1E695E8B8]);
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 10) = 0;
  *this = v2;
  v3 = operator new(0x20uLL);
  v3->__shared_weak_owners_ = 0;
  v3->__shared_owners_ = 0;
  v3->__vftable = &unk_1F1CB8ED0;
  v3[1].__vftable = v2;
  *(this + 1) = v3;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(v2 + 3) = v2;
  *(v2 + 4) = v3;

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void std::__shared_ptr_pointer<FirstBootAfterUpdatePrefs *,std::shared_ptr<FirstBootAfterUpdatePrefs>::__shared_ptr_default_delete<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs>,std::allocator<FirstBootAfterUpdatePrefs>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<FirstBootAfterUpdatePrefs *,std::shared_ptr<FirstBootAfterUpdatePrefs>::__shared_ptr_default_delete<FirstBootAfterUpdatePrefs,FirstBootAfterUpdatePrefs>,std::allocator<FirstBootAfterUpdatePrefs>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<FirstBootAfterUpdatePrefs>::operator()[abi:ne200100](ctu::cf::plist_adapter *this)
{
  if (this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    ctu::cf::plist_adapter::~plist_adapter(this);

    operator delete(v3);
  }
}

void ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::getPreference<std::string>(std::string const&,std::string &,std::string)::{lambda(void)#1}>(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 4);
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 1));
  }

  else
  {
    v8 = *v6;
    __p.__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&__p.__r_.__value_.__l.__data_ = v8;
  }

  if (*(v5 + 23) >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = *v5;
  }

  v13 = CFStringCreateWithCString(0, v9, 0x8000100u);
  v10 = (**v7)(v7);
  if (!v10)
  {
    ctu::cf::MakeCFString::~MakeCFString(&v13);
    goto LABEL_11;
  }

  v11 = ctu::cf::assign(v4, v10);
  CFRelease(v10);
  ctu::cf::MakeCFString::~MakeCFString(&v13);
  if ((v11 & 1) == 0)
  {
LABEL_11:
    std::string::operator=(v4, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  os_unfair_lock_unlock(a1 + 4);
}

void ctu::SharedLockable<FirstBootAfterUpdatePrefs>::execute_sync<BOOL FirstBootAfterUpdatePrefs::setPreference<std::string>(std::string const&,std::string)::{lambda(void)#1}>(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 4);
  v4 = a2[1];
  v5 = a2[2];
  v6 = *a2;
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 1));
  }

  else
  {
    v7 = *v4;
    __p.__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&__p.__r_.__value_.__l.__data_ = v7;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = __p;
  }

  if (*(v6 + 23) >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v15;
  }

  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  v16 = v9;
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v17;
  }

  else
  {
    v10 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  v12 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v10, size, 0x8000100u, 0);
  v18 = v12;
  if (v12)
  {
    v13 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(v9, v12, *(v5 + 8), *(v5 + 16), *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(*(v5 + 8), *(v5 + 16), v13);
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v18);
  ctu::cf::MakeCFString::~MakeCFString(&v16);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  os_unfair_lock_unlock(a1 + 4);
}

void sub_1A90FF0E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  __clang_call_terminate(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

std::string *ctu::operator<<(std::string *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 UTF8String];
  }

  else
  {
    v3 = "<nil>";
  }

  return ctu::LogMessageBuffer::appendString(a1, v3);
}

std::string *ctu::operator<<(std::string *this, void *a2)
{
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    ctu::LogMessageBuffer::appendString(this, [objc_msgSend(a2 "stringValue")]);
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    ctu::LogMessageBuffer::appendString(this, "<nil>");
  }

  return this;
}

__n128 ctu::LogMessageBuffer::createWithNSFormat@<Q0>(ctu::LogMessageBuffer *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  *(a2 + 48) = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = v3;
  *(a2 + 32) = v3;
  *a2 = v3;
  ctu::LogMessageBuffer::vCreateWithNSFormat(this, va, a2);
  return result;
}

void ctu::LogMessageBuffer::vCreateWithNSFormat(ctu::LogMessageBuffer *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:this arguments:a2];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  std::string::__assign_external(a3, [v5 UTF8String]);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *ctu::to_rle@<X0>(ctu *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  ctu::hex(this, a2, a3);
  return ctu::to_rle(a3);
}

void sub_1A90FF48C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctu::to_rle(std::string *a1)
{
  v2 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = a1;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  v5 = 0;
  v19 = v3;
  v6 = &v3[size];
  v17 = 0;
  v18 = v6;
  v16[0] = &v17;
  v16[1] = &v19;
  v7 = v3;
  v16[2] = a1;
  v16[3] = &v18;
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v8 = a1 + v2;
  v9 = a1;
  v10 = v2;
  while (v7 != v8)
  {
    if (v6 == (v9 + v10) || *v6 == *v7)
    {
      v17 = ++v5;
    }

    else
    {
      ctu::to_rle(std::string &)::$_0::operator()(v16);
      v17 = 1;
      v2 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      v5 = 1;
    }

    v18 = v3;
    v6 = v7++;
    ++v3;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = a1->__r_.__value_.__r.__words[0];
    v10 = a1->__r_.__value_.__l.__size_;
    v8 = (a1->__r_.__value_.__r.__words[0] + v10);
  }

  ctu::to_rle(std::string &)::$_0::operator()(v16);
  v11 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  v12 = v11;
  v13 = a1 + v11;
  if (v12 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v13 = (a1->__r_.__value_.__r.__words[0] + a1->__r_.__value_.__l.__size_);
    v14 = a1->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(a1, &v19[-v14], v13 - v19);
}

void ctu::to_rle(std::string &)::$_0::operator()(uint64_t a1)
{
  v2 = **a1;
  if (v2 < 5)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 16);
    if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
    {
      v15 = v14->__r_.__value_.__r.__words[0];
    }

    std::string::replace(v14, **(a1 + 8) - v15, v2, v2, ***(a1 + 24));
    **(a1 + 8) += **a1;
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = (*v3)++;
    *v4 = 60;
    memset(&v16, 170, sizeof(v16));
    std::to_string(&v16, **a1);
    v5 = *(a1 + 16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v7 = *(a1 + 16);
    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v5->__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    std::string::replace(v5, **(a1 + 8) - v7, size, v8, size);
    v9 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v16.__r_.__value_.__l.__size_;
    }

    v10 = *(a1 + 8);
    v11 = (*v10 + v9);
    *v10 = v11 + 1;
    *v11 = 62;
    LOBYTE(v11) = ***(a1 + 24);
    v12 = *(a1 + 8);
    v13 = (*v12)++;
    *v13 = v11;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A90FF730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::from_rle(std::string *this@<X0>, std::string *a2@<X8>)
{
  memset(&v15, 0, sizeof(v15));
  v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  size = this->__r_.__value_.__l.__size_;
  if ((v3 & 0x80000000) == 0)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v6 = 0;
    v7 = v3 >> 63;
    v8 = 1;
    do
    {
      if (v7)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      else
      {
        v9 = this;
      }

      v10 = v9->__r_.__value_.__s.__data_[v6];
      if (v10 == 60)
      {
        v11 = std::string::find(this, 62, v6);
        if (v11 == -1)
        {
          goto LABEL_18;
        }

        v12 = v11;
        memset(&__str, 170, sizeof(__str));
        std::string::basic_string(&__str, this, v6 + 1, v11 - v6, &v16);
        v8 = std::stoi(&__str, 0, 10);
        v6 = v12 + 1;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v15, v8, v10);
        ++v6;
        v8 = 1;
      }

      v13 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      v7 = v13 >> 63;
      if ((v13 & 0x80000000) != 0)
      {
        v13 = this->__r_.__value_.__l.__size_;
      }
    }

    while (v6 < v13);
  }

  *a2 = v15;
  a2 = &v15;
LABEL_18:
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

BOOL TelephonyUtilRingBufferInitialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  a9.i32[0] = a3;
  v9 = vcnt_s8(a9);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.i32[0];
  if (v9.i32[0] >= 2u)
  {
    _TelephonyUtilDebugPrint("TelephonyUtilRingBufferInitialize", "Capacity %u is not a power of two\n", a3, a4, a5, a6, a7, a8, a3);
  }

  else
  {
    *a1 = a2;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = a3;
  }

  return v10 < 2;
}

uint64_t TelephonyUtilRingBufferReset(uint64_t result)
{
  *(result + 12) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t TelephonyUtilRingBufferGetLinearWriteRemaining(_DWORD *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = (v2 - 1) & v1;
  v4 = a1[4];
  if (v3 > ((v2 - 1) & v4) || v4 == v1)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = (v2 - 1) & v4;
  }

  return v6 - v3;
}

uint64_t TelephonyUtilRingBufferGetLinearReadRemaining(_DWORD *a1)
{
  v1 = a1[4];
  v2 = a1[2];
  v3 = (v2 - 1) & v1;
  v4 = a1[3] - v1;
  v5 = v2 - v3;
  if (v5 >= v4)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

size_t TelephonyUtilRingBufferInsertRaw(uint64_t a1, const void *a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = (v5 - 1) & v4;
  v7 = *(a1 + 16);
  if (v6 > ((v5 - 1) & v7) || v7 == v4)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = (v5 - 1) & v7;
  }

  v10 = v9 - v6;
  if (v10 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  memcpy((*a1 + v6), a2, v11);
  *(a1 + 12) += v11;
  return v11;
}

ssize_t TelephonyUtilRingBufferInsertFDUnblockable(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  v8 = (v7 - 1) & v6;
  v9 = *(a1 + 16);
  if (v8 > ((v7 - 1) & v9) || v9 == v6)
  {
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = (v7 - 1) & v9;
  }

  v12 = v11 - v8;
  if (v12 < a4)
  {
    a4 = v12;
  }

  result = TelephonyUtilUnblockableReadWithTimeout(a2, a3, (*a1 + v8), a4, a5);
  if (result >= 1)
  {
    *(a1 + 12) += result;
  }

  return result;
}

uint64_t TelephonyUtilRingBufferInsertTransport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = -1431655766;
  v7 = *(a1 + 12);
  v6 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = (v8 - 1) & v7;
  if (v9 > ((v8 - 1) & v6) || v6 == v7)
  {
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = (v8 - 1) & v6;
  }

  v12 = v11 - v9;
  if (v12 >= a3)
  {
    a3 = a3;
  }

  else
  {
    a3 = v12;
  }

  if (!v4(a2, *a1 + v9, a3, &v14, 0, a4, 0))
  {
    return 0xFFFFFFFFLL;
  }

  result = v14;
  *(a1 + 12) += v14;
  return result;
}

uint64_t TelephonyUtilRingBufferLinearize(char **a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = (v2 - 1) & v3;
  v5 = *(a1 + 4);
  v6 = (v2 - 1) & v5;
  v7 = v3 - v5;
  if (v4 <= v6)
  {
    v8 = v2 - v6;
    result = malloc(v8);
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = *a1;
    memcpy(result, &(*a1)[v6], v8);
    memmove(&v11[v8], v11, v4);
    memcpy(*a1, v10, v8);
    free(v10);
  }

  else if (v6)
  {
    memmove(*a1, &(*a1)[v6], v3 - v5);
  }

  *(a1 + 3) = v7;
  *(a1 + 4) = 0;
  return 1;
}

uint64_t TelephonyUtilRingBufferExtractPrivate(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int a4)
{
  v20 = a3;
  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = *(a1 + 12) - v6;
  v9 = (v7 - 1) & v6;
  v10 = v7 - v9;
  if (v10 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (v8 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v8;
  }

  v13 = *a1 + v9;
  if (v10 >= v12)
  {
    v14 = a2(&v20, v13, v12);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    goto LABEL_15;
  }

  v14 = a2(&v20, v13, v11);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = a2(&v20, *a1, (v12 - v11));
    v16 = v15 >= 0 ? v14 : 0;
    v14 = (v16 + v15);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_15:
      v17 = *(a1 + 12);
      v18 = *(a1 + 16) + v12;
      *(a1 + 16) = v18;
      if (v18 == v17)
      {
        *(a1 + 12) = 0;
        *(a1 + 16) = 0;
      }
    }
  }

  return v14;
}

size_t TelephonyUtilRingBufferExtractRawFunc(void **a1, const void *a2, size_t __n)
{
  memcpy(*a1, a2, __n);
  *a1 = *a1 + __n;
  return __n;
}

uint64_t TelephonyUtilRingBufferExtractFDFunc(int *a1, char *a2, size_t a3)
{
  v3 = *a1;
  v5 = -1431655766;
  LODWORD(result) = TelephonyUtilWriteToCompletion(v3, a2, a3, &v5);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t TelephonyUtilRingBufferSkip(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = (v2 - v3);
  if (v4 <= a2 || (v5 = v3 + a2, *(a1 + 16) = v5, v4 = a2, v5 == v2))
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    return v4;
  }

  return a2;
}

const char *ctu::rest::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_1E786B790[a1];
  }
}

double ctu::rest::AssertionHandle::AssertionHandle(ctu::rest::AssertionHandle *this, char a2)
{
  *(this + 7) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *&result = 0x100000000;
  *(this + 8) = 0x100000000;
  *(this + 72) = a2;
  return result;
}

{
  *(this + 7) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *&result = 0x100000000;
  *(this + 8) = 0x100000000;
  *(this + 72) = a2;
  return result;
}

void ctu::rest::AssertionHandle::~AssertionHandle(ctu::rest::AssertionHandle *this)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void ctu::rest::AssertionHandle::create(uint64_t a1@<X0>, const std::string *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = operator new(0x68uLL);
  *(v8 + 8) = 0u;
  *v8 = &unk_1F1CB4F98;
  *(v8 + 10) = 0;
  *(v8 + 40) = 0u;
  *(v8 + 11) = 0x100000000;
  v8[96] = a3;
  *a4 = v8 + 24;
  a4[1] = v8;
  atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
  *(v8 + 3) = v8 + 24;
  *(v8 + 4) = v8;
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
  v9 = operator new(0x50uLL);
  v10 = v9;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = &unk_1F1CB4FD0;
  *(v9 + 24) = 0u;
  v11 = (v9 + 24);
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 9) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v13 = *(v10 + 4);
    *(v10 + 3) = a1;
    *(v10 + 4) = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    *(v9 + 3) = a1;
    *(v9 + 4) = 0;
  }

  v14 = *(v10 + 6);
  *(v10 + 5) = v8 + 24;
  *(v10 + 6) = v8;
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::string::operator=((v10 + 56), a2);
  v15 = *(v8 + 6);
  *(v8 + 5) = v11;
  *(v8 + 6) = v10;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    v11 = *(v8 + 5);
  }

  ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(v11);
}

void ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(ctu::rest::AssertionHandle::SubscriptionHandle *this)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *this;
      if (*this)
      {
        if (*(this + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(this + 4), *(this + 5));
        }

        else
        {
          __p = *(this + 32);
        }

        v7 = *(this + 2);
        v6 = *(this + 3);
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
        }

        v10[0] = &unk_1F1CB5558;
        v10[1] = v7;
        v10[2] = v6;
        v10[3] = v10;
        ctu::RestModuleState::addSubscription(*v5, &__p, v10, 1);
        std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v10);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ctu::rest::AssertionHandle::updateState(ctu::rest::AssertionHandle *this, xpc_object_t *a2)
{
  ctu::rest::read_rest_value(this + 16, a2);
  v3 = *(this + 17);
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = *(this + 7);
      if (v4)
      {

        std::function<void ()(BOOL)>::operator()(v4, 1);
      }
    }
  }

  else
  {
    v5 = *(this + 7);
    if (v5)
    {
      std::function<void ()(BOOL)>::operator()(v5, 0);
    }

    if (*(this + 72) == 1)
    {
      v6 = *(this + 2);
      if (v6)
      {

        ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(v6);
      }
    }
  }
}

void ctu::rest::read_rest_value(_DWORD *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  v4 = MEMORY[0x1E69E9E80];
  if (v3 && MEMORY[0x1AC581B70](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (MEMORY[0x1AC581B70](v3) == v4)
  {
    v7 = &v10;
    v8 = "generation";
    xpc::dict::object_proxy::operator xpc::object(&v7, &object);
    *a1 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v7 = &v10;
    v8 = "state";
    xpc::dict::object_proxy::operator xpc::object(&v7, &object);
    v5 = MEMORY[0x1AC581B70](object);
    if (v5 == MEMORY[0x1E69E9F10])
    {
      v11 = a1[1];
      ctu::rest::detail::read_enum_string_value(&v11, &object, v6);
      a1[1] = v11;
    }

    else if (v5 == MEMORY[0x1E69E9E58] || v5 == MEMORY[0x1E69E9EB0] || v5 == MEMORY[0x1E69E9F18])
    {
      a1[1] = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    v3 = v10;
  }

  else
  {
    *a1 = 0;
  }

  xpc_release(v3);
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t ctu::rest::AssertionHandle::setHandler_impl(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      (*(*v3 + 24))(v3, v9);
    }

    else
    {
      v10 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v10 = 0;
  }

  v4 = a1 + 32;
  if (v9 != (a1 + 32))
  {
    v5 = v10;
    v6 = *(a1 + 56);
    if (v10 == v9)
    {
      if (v6 == v4)
      {
        memset(v11, 170, 24);
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**(a1 + 56) + 24))(*(a1 + 56), v9);
        (*(**(a1 + 56) + 32))(*(a1 + 56));
        *(a1 + 56) = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, a1 + 32);
        (*(v11[0] + 32))(v11);
      }

      else
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = *(a1 + 56);
      }

      *(a1 + 56) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(a1 + 56), v9);
      (*(**(a1 + 56) + 32))(*(a1 + 56));
      *(a1 + 56) = v10;
      v10 = v9;
    }

    else
    {
      v10 = *(a1 + 56);
      *(a1 + 56) = v5;
    }
  }

  result = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A9100774(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ctu::rest::AssertionHandle::cancel(ctu::rest::AssertionHandle *this)
{
  v2 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 17) = 0;
}

void ctu::rest::write_rest_value(unsigned int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_int64_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v12 = &v16;
  v13 = "generation";
  xpc::dict::object_proxy::operator=(&v12, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v7 = a1[1];
  if (v7 > 2)
  {
    v8 = "???";
  }

  else
  {
    v8 = off_1E786B790[v7];
  }

  xpc::string("%lld:%s", &v10, v7, v8);
  v12 = &v16;
  v13 = "state";
  xpc::dict::object_proxy::operator=(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v9 = v16;
  *a2 = v16;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v16);
}

void std::__shared_ptr_emplace<ctu::rest::AssertionHandle::SubscriptionHandle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB4FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::rest::AssertionHandle::SubscriptionHandle>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 24);
      if (v5)
      {
        if (*(a1 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          __p = *(a1 + 56);
        }

        ctu::RestModuleState::removeSubscription(*v5, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void *std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB5558;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::~__func(void *__p)
{
  *__p = &unk_1F1CB5558;
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_1F1CB5558;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F1CB5558;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v8 = *a2;
  *a2 = xpc_null_create();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        ctu::rest::AssertionHandle::updateState(v7, &v8);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  xpc_release(v3);
}

void sub_1A9100D00(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1},std::allocator<ctu::rest::AssertionHandle::SubscriptionHandle::subscribe(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<ctu::rest::AssertionHandle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB4F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t TelephonyUtilTransportFree(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 1;
  }

  result = v1();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

double TelephonyUtilTransportCreateWithFD(uint64_t a1, int a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = malloc(0xCuLL);
  *(a1 + 80) = v4;
  if (v4)
  {
    v11 = v4;
    if (pipe(v4 + 1) < 0)
    {
      v13 = __error();
      v14 = strerror(*v13);
      _TelephonyUtilDebugPrint("TelephonyUtilTransportCreateWithFDPrivate", "Failed to create pipe FD's, err = %s (%u)\n", v15, v16, v17, v18, v19, v20, v14);
      free(v11);
      *(a1 + 80) = 0;
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }

    else
    {
      *v11 = a2;
      *a1 = _TelephonyUtilTransportFDWrite;
      *(a1 + 8) = _TelephonyUtilTransportFDRead;
      *(a1 + 16) = _TelephonyUtilTransportFDUnblockRead;
      *(a1 + 24) = _TelephonyUtilTransportFDFlushRead;
      *(a1 + 48) = TelephonyUtilTransportFreeFD;
      *(a1 + 56) = _TelephonyUtilTransportFDIsValid;
    }
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyUtilTransportCreateWithFD", "Out of memory!\n", v5, v6, v7, v8, v9, v10, v21);
  }

  return result;
}

uint64_t _TelephonyUtilTransportFDWrite(uint64_t a1, void *__buf, size_t __nbyte, _DWORD *a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    __TUAssertTrigger("!dDtor");
  }

  v8 = **(a1 + 80);
  if (!a5)
  {
    v16 = write(v8, __buf, __nbyte);
    if (v16 < 0)
    {
      v18 = __error();
      v26 = strerror(*v18);
      _TelephonyUtilDebugPrint("_TelephonyUtilTransportFDWrite", "write returned %s (%u)\n", v19, v20, v21, v22, v23, v24, v26);
      return 0;
    }

    *a4 = v16;
    return 1;
  }

  v9 = TelephonyUtilWriteToCompletion(v8, __buf, __nbyte, a4);
  if (!v9)
  {
    return 1;
  }

  v25 = strerror(v9);
  _TelephonyUtilDebugPrint("_TelephonyUtilTransportFDWrite", "write to completion returned %s (%u)\n", v10, v11, v12, v13, v14, v15, v25);
  return 0;
}

uint64_t _TelephonyUtilTransportFDRead(uint64_t a1, char *a2, unsigned int a3, unsigned int *a4, int a5, unsigned int a6, uint64_t a7)
{
  v9 = a3;
  v10 = a2;
  if (a7)
  {
    __TUAssertTrigger("!dDtor");
  }

  v11 = *(a1 + 80);
  v12 = *v11;
  v13 = *(v11 + 4);
  if (a5)
  {
    v14 = a3;
    while (v14)
    {
      v15 = TelephonyUtilUnblockableReadWithTimeout(v12, v13, v10, v14, a6);
      v10 += v15;
      v14 -= v15;
      if (v15 <= 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = TelephonyUtilUnblockableReadWithTimeout(*v11, *(v11 + 4), a2, a3, a6);
    if ((v16 & 0x80000000) != 0)
    {
LABEL_11:
      v18 = __error();
      v19 = strerror(*v18);
      _TelephonyUtilDebugPrint("_TelephonyUtilTransportFDRead", "read returned %s (%u)\n", v20, v21, v22, v23, v24, v25, v19);
      result = 0;
      v9 = 0;
      goto LABEL_12;
    }

    v9 = v16;
  }

  result = 1;
LABEL_12:
  *a4 = v9;
  return result;
}

BOOL _TelephonyUtilTransportFDUnblockRead(uint64_t a1)
{
  v1 = *(a1 + 80);
  __buf = 0;
  return write(*(v1 + 8), &__buf, 1uLL) == 1;
}

uint64_t _TelephonyUtilTransportFDFlushRead(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  do
  {
    v4 = -1431655766;
    result = _TelephonyUtilTransportFDRead(a1, __b, 0x400u, &v4, 0, 0, 0);
  }

  while ((result & 1) != 0 && v4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TelephonyUtilTransportFreeFD(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v2 = v1[2];
    if (v2 >= 1)
    {
      close(v2);
      v1[2] = -1;
    }

    v3 = v1[1];
    if (v3 >= 1)
    {
      close(v3);
    }

    free(v1);
  }

  return 1;
}

BOOL ctu::isProcessRunning(const void **a1)
{
  __size = 0;
  if (sysctl(ctu::isProcessRunning(std::string const&)::kNames, 3u, 0, &__size, 0, 0))
  {
    v36 = *__error();
    v8 = "first sysctl() failed with err = %d";
LABEL_3:
    _TelephonyUtilDebugPrint("isProcessRunning", v8, v2, v3, v4, v5, v6, v7, v36);
    return 0;
  }

  v10 = malloc(__size);
  if (!v10)
  {
    v8 = "malloc failed for proc list";
    goto LABEL_3;
  }

  v11 = v10;
  if (sysctl(ctu::isProcessRunning(std::string const&)::kNames, 3u, v10, &__size, 0, 0))
  {
    v12 = __error();
    _TelephonyUtilDebugPrint("isProcessRunning", "second sysctl() failed with err = %d", v13, v14, v15, v16, v17, v18, *v12);
    goto LABEL_9;
  }

  if (__size >= 0x288)
  {
    v20 = __size / 0x288 - 1;
    v21 = v11 + 243;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v22 = strlen(v21);
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v23 = v22;
      if (v22 >= 0x17)
      {
        if ((v22 | 7) == 0x17)
        {
          v25 = 25;
        }

        else
        {
          v25 = (v22 | 7) + 1;
        }

        v24 = operator new(v25);
        __dst[1] = v23;
        __dst[2] = v25 | 0x8000000000000000;
        __dst[0] = v24;
      }

      else
      {
        HIBYTE(__dst[2]) = v22;
        v24 = __dst;
        if (!v22)
        {
          goto LABEL_22;
        }
      }

      memcpy(v24, v21, v23);
LABEL_22:
      *(v24 + v23) = 0;
      v26 = SHIBYTE(__dst[2]);
      v27 = __dst[0];
      if (__dst[2] >= 0)
      {
        v28 = HIBYTE(__dst[2]);
      }

      else
      {
        v28 = __dst[1];
      }

      v29 = *(a1 + 23);
      if ((v29 & 0x80000000) != 0)
      {
        if (v28 == -1)
        {
LABEL_52:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v31 = *a1;
        if (a1[1] >= 0x10)
        {
          v30 = 16;
        }

        else
        {
          v30 = a1[1];
        }
      }

      else
      {
        if (v28 == -1)
        {
          goto LABEL_52;
        }

        if (v29 >= 0x10)
        {
          v30 = 16;
        }

        else
        {
          v30 = v29;
        }

        v31 = a1;
      }

      if (__dst[2] >= 0)
      {
        v32 = __dst;
      }

      else
      {
        v32 = __dst[0];
      }

      if (v30 >= v28)
      {
        v33 = v28;
      }

      else
      {
        v33 = v30;
      }

      v34 = memcmp(v31, v32, v33) == 0;
      v9 = v30 == v28 && v34;
      if (v26 < 0)
      {
        operator delete(v27);
      }

      if (v20)
      {
        v35 = v9;
      }

      else
      {
        v35 = 1;
      }

      --v20;
      v21 += 648;
      if (v35)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_9:
  v9 = 0;
LABEL_10:
  free(v11);
  return v9;
}

void sub_1A9101570(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 TelephonyUtilDebugRegisterDelegate(__n128 *a1)
{
  result = *a1;
  gDelegate = *a1;
  return result;
}

double TelephonyUtilDebugSetDefaults()
{
  result = *&gDelegateDefault;
  gDelegate = gDelegateDefault;
  _TelephonyUtilDebugFlags = 10;
  return result;
}

uint64_t _TelephonyUtilDebugPrintBinary()
{
  if ((_TelephonyUtilDebugFlags & 8) != 0)
  {
    return (*(&gDelegate + 1))();
  }

  return result;
}

uint64_t _TelephonyUtilDebugPrintBinaryVerbose()
{
  if ((~_TelephonyUtilDebugFlags & 0xC) == 0)
  {
    return (*(&gDelegate + 1))();
  }

  return result;
}

uint64_t _TelephonyUtilUARTTransportConfigureFlowControl(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (ioctl(*v3, 0x40487413uLL, &v16))
  {
    v4 = "Failed to get termios options, ret = %s (%u)\n";
  }

  else
  {
    *&v16 = v16 & 0xFFFFFFFFFFFFF0CCLL | 1;
    *(&v16 + 1) &= ~1uLL;
    v5 = 51968;
    if (a2)
    {
      v5 = 248576;
    }

    *&v17 = v17 & 0xFFFFFFFFFFFC20FFLL | v5;
    *(&v17 + 1) &= 0xFFFFFFFFFFFFFA77;
    if (!ioctl(*v3, 0x80487414uLL, &v16))
    {
      result = 1;
      goto LABEL_8;
    }

    v4 = "Failed to set termios options, ret = %s (%u)\n";
  }

  v6 = __error();
  v7 = strerror(*v6);
  _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportConfigureFlowControl", v4, v8, v9, v10, v11, v12, v13, v7);
  result = 0;
LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _TelephonyUtilUARTTransportConfigureBaudRate(uint64_t a1, unsigned int a2)
{
  v12 = a2;
  v2 = ioctl(**(a1 + 80), 0x80085402uLL, &v12);
  if (v2)
  {
    v3 = __error();
    v4 = v12;
    strerror(*v3);
    _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportConfigureBaudRate", "Failed to configure baud of %u, err = %s (%u)\n", v5, v6, v7, v8, v9, v10, v4);
  }

  return v2 == 0;
}

BOOL _TelephonyUtilUARTTransportConfigureVMIN(uint64_t a1, unsigned int a2)
{
  v12 = a2;
  v2 = ioctl(**(a1 + 80), 0x80085408uLL, &v12);
  if (v2)
  {
    v3 = __error();
    v4 = v12;
    strerror(*v3);
    _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportConfigureVMIN", "Failed to configure VMIN of %u, err = %s (%u)\n", v5, v6, v7, v8, v9, v10, v4);
  }

  return v2 == 0;
}

BOOL _TelephonyUtilUARTTransportConfigureRxQueueSize(uint64_t a1, unsigned int a2)
{
  v12 = a2;
  v2 = ioctl(**(a1 + 80), 0x80085409uLL, &v12);
  if (v2)
  {
    v3 = __error();
    v4 = v12;
    strerror(*v3);
    _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportConfigureRxQueueSize", "Failed to configure RX Queue size of %u, err = %s (%u)\n", v5, v6, v7, v8, v9, v10, v4);
  }

  return v2 == 0;
}

BOOL _TelephonyUtilUARTTransportWrite(uint64_t a1, char *__buf, size_t __nbyte, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    __TUAssertTrigger("!dDtor");
  }

  v7 = TelephonyUtilWriteToCompletion(**(a1 + 80), __buf, __nbyte, a4);
  v8 = v7;
  if (v7)
  {
    v9 = strerror(v7);
    _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportWrite", "write to completion returned %s (%u)\n", v10, v11, v12, v13, v14, v15, v9);
  }

  return v8 == 0;
}

uint64_t TelephonyUtilTransportCreateWithUARTTimeout(uint64_t (**a1)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, int a6, uint64_t a7), unsigned int *a2)
{
  v4 = malloc(0x200uLL);
  a1[10] = v4;
  if (v4)
  {
    v11 = v4;
    v22 = a2[65];
    v23 = a2[66];
    _TelephonyUtilDebugPrint("TelephonyUtilTransportCreateWithUARTTimeout", "Creating with baud %u, Rx Queue size %u, local queue size %u\n", v5, v6, v7, v8, v9, v10, a2[64]);
    *(v11 + 30) = 0u;
    *(v11 + 31) = 0u;
    *(v11 + 28) = 0u;
    *(v11 + 29) = 0u;
    *(v11 + 26) = 0u;
    *(v11 + 27) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 25) = 0u;
    *(v11 + 22) = 0u;
    *(v11 + 23) = 0u;
    *(v11 + 20) = 0u;
    *(v11 + 21) = 0u;
    *(v11 + 18) = 0u;
    *(v11 + 19) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 17) = 0u;
    *(v11 + 14) = 0u;
    *(v11 + 15) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 13) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 11) = 0u;
    *(v11 + 8) = 0u;
    *(v11 + 9) = 0u;
    *(v11 + 6) = 0u;
    *(v11 + 7) = 0u;
    *(v11 + 4) = 0u;
    *(v11 + 5) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *a1 = _TelephonyUtilUARTTransportWithTimeoutWrite;
    a1[1] = _TelephonyUtilUARTTransportWithTimeoutRead;
    a1[2] = _TelephonyUtilUARTTransportWithTimeoutUnblockRead;
    a1[3] = _TelephonyUtilUARTTransportWithTimeoutFlushRead;
    a1[6] = _TelephonyUtilUARTTransportWithTimeoutFree;
    a1[7] = _TelephonyUtilUARTTransportWithTimeoutIsValid;
    pthread_mutex_init((v11 + 280), 0);
    pthread_mutex_lock((v11 + 280));
    pthread_cond_init((v11 + 344), 0);
    pthread_cond_init((v11 + 416), 0);
    memcpy(v11 + 8, a2, 0x110uLL);
    Internal = _TelephonyUtilTransportUARTWithTimeoutCreateInternal(a1, v12, v13, v14, v15, v16, v17, v18);
    pthread_mutex_unlock((v11 + 280));
    return Internal;
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyUtilTransportCreateWithUARTTimeout", "Out of memory!\n", v5, v6, v7, v8, v9, v10, v21);
    return 0;
  }
}

uint64_t _TelephonyUtilUARTTransportWithTimeoutWrite(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, int a6, uint64_t a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    __TUAssertTrigger("!dDtor");
  }

  v12 = *(a1 + 80);
  pthread_mutex_lock((v12 + 280));
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = -1431655766;
  v23[0] = v13;
  v23[2] = v13;
  v24 = v13;
  v23[1] = v13;
  v19 = a2;
  v20 = a3;
  v22 = a4;
  LOBYTE(v23[0]) = a5;
  DWORD1(v23[0]) = a6;
  BYTE8(v24) = 0;
  v25 = 0;
  pthread_cond_init((v23 + 8), 0);
  v14 = *(v12 + 464);
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 88);
    }

    while (v14);
    v16 = (v15 + 88);
  }

  else
  {
    v16 = (v12 + 464);
  }

  *v16 = &v19;
  pthread_cond_signal((v12 + 416));
  while (v19)
  {
    pthread_cond_wait((v23 + 8), (v12 + 280));
  }

  pthread_cond_destroy((v23 + 8));
  pthread_mutex_unlock((v12 + 280));
  result = BYTE8(v24);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _TelephonyUtilUARTTransportWithTimeoutRead(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, int a5, unsigned int a6, uint64_t a7)
{
  v9 = a3;
  if (a7)
  {
    __TUAssertTrigger("!dDtor");
  }

  if (a5)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a1 + 80);
  v24.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v24.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  if (a6 != -1)
  {
    v24.tv_sec = a6 / 0x3E8uLL;
    v24.tv_nsec = 1000000 * (a6 % 0x3E8);
  }

  *a4 = 0;
  pthread_mutex_lock((v12 + 280));
  if (*a4 < v11)
  {
    do
    {
      ++*(v12 + 504);
      do
      {
        while (1)
        {
          v13 = *(v12 + 392);
          v14 = v13 & 4;
          if (*(v12 + 492) != *(v12 + 496) || v14 != 0)
          {
            v18 = 0;
            goto LABEL_19;
          }

          v16 = (v12 + 344);
          v17 = (v12 + 280);
          if (a6 != -1)
          {
            break;
          }

          pthread_cond_wait(v16, v17);
        }
      }

      while (!pthread_cond_timedwait_relative_np(v16, v17, &v24));
      v13 = *(v12 + 392);
      v14 = v13 & 4;
      v18 = 1;
LABEL_19:
      v19 = *(v12 + 504);
      if (v14)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18;
      }

      *(v12 + 504) = v19 - 1;
      if (v19 == 1)
      {
        *(v12 + 392) = v13 & 0xFFFFFFFB;
      }

      Raw = TelephonyUtilRingBufferExtractRaw(v12 + 480, a2, v9);
      v9 -= Raw;
      a2 += Raw;
      v22 = *a4 + Raw;
      *a4 = v22;
    }

    while (!((v22 >= v11) | v20 & 1));
  }

  pthread_mutex_unlock((v12 + 280));
  return *a4 >= v11;
}

uint64_t _TelephonyUtilUARTTransportWithTimeoutUnblockRead(uint64_t a1)
{
  v1 = *(a1 + 80);
  pthread_mutex_lock((v1 + 280));
  *(v1 + 392) |= 4u;
  pthread_cond_signal((v1 + 344));
  pthread_mutex_unlock((v1 + 280));
  return 1;
}

uint64_t _TelephonyUtilUARTTransportWithTimeoutFlushRead(void *a1)
{
  v2 = a1[10];
  pthread_mutex_lock((v2 + 280));
  _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportWithTimeoutFlushRead", "Flushing\n", v3, v4, v5, v6, v7, v8, v18);
  _TelephonyUtilUARTTransportWithTimeoutFreeInternal(a1);
  Internal = _TelephonyUtilTransportUARTWithTimeoutCreateInternal(a1, v9, v10, v11, v12, v13, v14, v15);
  pthread_mutex_unlock((v2 + 280));
  return Internal;
}

uint64_t _TelephonyUtilUARTTransportWithTimeoutFree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 80);
  if (v8)
  {
    _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportWithTimeoutFree", "Freeing\n", a3, a4, a5, a6, a7, a8, v11);
    pthread_mutex_lock((v8 + 280));
    _TelephonyUtilUARTTransportWithTimeoutFreeInternal(a1);
    pthread_cond_destroy((v8 + 344));
    pthread_cond_destroy((v8 + 416));
    pthread_mutex_unlock((v8 + 280));
    pthread_mutex_destroy((v8 + 280));
    free(v8);
  }

  return 1;
}

BOOL _TelephonyUtilUARTTransportWithTimeoutIsValid(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 280));
  if (*(v1 + 400))
  {
    v2 = *(v1 + 408) != 0;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock((v1 + 280));
  return v2;
}

uint64_t _TelephonyUtilTransportUARTWithTimeoutCreateInternal(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a1[10];
  *(v8 + 392) = 0;
  v9 = *(v8 + 272);
  if (v9 > 0x20000)
  {
    _TelephonyUtilDebugPrint("_TelephonyUtilTransportUARTWithTimeoutCreateInternal", "Receive queue size %u exceeds max %u\n", a3, a4, a5, a6, a7, a8, *(v8 + 272));
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  result = malloc(*(v8 + 272));
  *(v8 + 472) = result;
  if (!result)
  {
    goto LABEL_19;
  }

  *(v8 + 480) = 0;
  *(v8 + 488) = 0;
  *(v8 + 496) = 0;
  if ((v9 & (v9 - 1)) != 0)
  {
    _TelephonyUtilDebugPrint("TelephonyUtilRingBufferInitialize", "Capacity %u is not a power of two\n", v12, v13, v14, v15, v16, v17, v9);
    goto LABEL_18;
  }

  *(v8 + 480) = result;
  *(v8 + 488) = v9;
  *(v8 + 492) = 0;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v18;
  v59 = v18;
  v56 = v18;
  v57 = v18;
  v54 = v18;
  v55 = v18;
  v52 = v18;
  v53 = v18;
  v50 = v18;
  v51 = v18;
  v48 = v18;
  v49 = v18;
  v46 = v18;
  v47 = v18;
  *__str = v18;
  v45 = v18;
  if (!*(v8 + 8) || !strcmp((v8 + 8), "debug"))
  {
    strncpy(__str, "/dev/uart.debug", 0x100uLL);
  }

  else
  {
    snprintf(__str, 0x100uLL, "%s", (v8 + 8));
  }

  *(v8 + 4) = 1;
  v19 = open(__str, 2);
  *v8 = v19;
  if (v19 <= 0)
  {
    v27 = __error();
    strerror(*v27);
    _TelephonyUtilDebugPrint("_TelephonyUtilTransportUARTWithTimeoutCreateInternal", "failed to open node (%s), ret = %s(%u)\n", v28, v29, v30, v31, v32, v33, __str);
    goto LABEL_18;
  }

  result = _TelephonyUtilUARTTransportConfigureFlowControl(a1, (*(v8 + 276) & 1) == 0);
  if (result)
  {
    result = _TelephonyUtilUARTTransportConfigureVMIN(a1, 1u);
    if (result)
    {
      result = _TelephonyUtilUARTTransportConfigureBaudRate(a1, *(v8 + 264));
      if (result)
      {
        result = _TelephonyUtilUARTTransportConfigureRxQueueSize(a1, *(v8 + 268));
        if (result)
        {
          if (pthread_create((v8 + 400), 0, _TelephonyUtilUARTTransportWithTimeoutReadWorker, a1))
          {
            v20 = __error();
            v42 = strerror(*v20);
            _TelephonyUtilDebugPrint("_TelephonyUtilTransportUARTWithTimeoutCreateInternal", "Failed to launch read worker, ret = %s(%u)\n", v21, v22, v23, v24, v25, v26, v42);
          }

          else
          {
            if (!pthread_create((v8 + 408), 0, _TelephonyUtilUARTTransportWithTimeoutWriteWorker, a1))
            {
              result = 1;
              goto LABEL_19;
            }

            v35 = __error();
            v43 = strerror(*v35);
            _TelephonyUtilDebugPrint("_TelephonyUtilTransportUARTWithTimeoutCreateInternal", "Failed to launch write worker, ret = %s(%u)\n", v36, v37, v38, v39, v40, v41, v43);
          }

          goto LABEL_18;
        }
      }
    }
  }

LABEL_19:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _TelephonyUtilUARTTransportWithTimeoutFreeInternal(uint64_t a1)
{
  v1 = *(a1 + 80);
  v1[98] |= 3u;
  _TelephonyUtilUARTTransportConfigureVMIN(a1, 0);
  pthread_cond_signal((v1 + 104));
  pthread_mutex_unlock((v1 + 70));
  v13 = 0xAAAAAAAAAAAAAAAALL;
  pthread_join(*(v1 + 51), &v13);
  pthread_join(*(v1 + 50), &v13);
  pthread_mutex_lock((v1 + 70));
  v2 = *(v1 + 59);
  if (v2)
  {
    free(v2);
  }

  for (i = *(v1 + 58); i; *(v1 + 58) = i)
  {
    *i = 0;
    *(i + 80) = 0;
    pthread_cond_signal((i + 32));
    i = *(*(v1 + 58) + 88);
  }

  result = *v1;
  if (result >= 1)
  {
    result = close(result);
    if (result)
    {
      v5 = __error();
      v6 = strerror(*v5);
      return _TelephonyUtilDebugPrint("_TelephonyUtilUARTTransportWithTimeoutFreeInternal", "Failed to close, err = %s(%u)\n", v7, v8, v9, v10, v11, v12, v6);
    }
  }

  return result;
}

uint64_t _TelephonyUtilUARTTransportWithTimeoutReadWorker()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 80);
  pthread_mutex_lock((v1 + 280));
  v2 = *(v1 + 392);
  do
  {
    if ((v2 & 2) != 0)
    {
      break;
    }

    memset(__b, 170, sizeof(__b));
    v3 = *(v1 + 488) - *(v1 + 492) + *(v1 + 496);
    v4 = v3 >= 0x1000 ? 4096 : v3;
    pthread_mutex_unlock((v1 + 280));
    LODWORD(v4) = read(**(v0 + 80), __b, v4);
    pthread_mutex_lock((v1 + 280));
    if ((v4 & 0x80000000) != 0)
    {
      break;
    }

    v5 = *(v1 + 492);
    v6 = *(v1 + 488);
    v7 = (v6 - 1) & v5;
    v8 = *(v1 + 496);
    v9 = v7 > ((v6 - 1) & v8) || v8 == v5;
    v10 = v9 ? *(v1 + 488) : (v6 - 1) & v8;
    v11 = v10 - v7;
    v4 = v11 >= v4 ? v4 : v11;
    memcpy((*(v1 + 480) + v7), __b, v4);
    *(v1 + 492) += v4;
    pthread_cond_broadcast((v1 + 344));
    v2 = *(v1 + 392);
  }

  while ((v2 & 2) == 0);
  pthread_mutex_unlock((v1 + 280));
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _TelephonyUtilUARTTransportWithTimeoutWriteWorker(uint64_t a1)
{
  v2 = *(a1 + 80);
  pthread_mutex_lock((v2 + 280));
  while (1)
  {
    while (1)
    {
      v3 = *(v2 + 464);
      if (v3)
      {
        goto LABEL_6;
      }

      if ((*(v2 + 392) & 2) != 0)
      {
        break;
      }

      pthread_cond_wait((v2 + 416), (v2 + 280));
    }

    v3 = 0;
LABEL_6:
    if ((*(v2 + 392) & 2) != 0)
    {
      break;
    }

    *(v2 + 464) = *(v3 + 88);
    *(v3 + 80) = _TelephonyUtilUARTTransportWrite(a1, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), 0xFFFFFFFFLL, 0);
    *v3 = 0;
    pthread_cond_broadcast((v3 + 32));
  }

  pthread_mutex_unlock((v2 + 280));
  return 0;
}

uint64_t TelephonyCapabilitiesRadioGetSafeResetTime()
{
  if (_TelephonyRadiosGetRadioInternal_sOnce != -1)
  {
    dispatch_once(&_TelephonyRadiosGetRadioInternal_sOnce, &__block_literal_global_5);
  }

  if ((sTelephonyRadioVendor - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_1A9160CE0[sTelephonyRadioVendor - 1];
  }
}

uint64_t TelephonyCapabilitiesRadioCoreDumpSupportsWakeReadySignal()
{
  if (_TelephonyRadiosGetRadioInternal_sOnce != -1)
  {
    dispatch_once(&_TelephonyRadiosGetRadioInternal_sOnce, &__block_literal_global_5);
  }

  return (sTelephonyRadioVendor < 5) & (0x16u >> sTelephonyRadioVendor);
}

BOOL TelephonyUtilTransportCreateWithFile(uint64_t a1, char *__filename, char *__mode)
{
  v5 = fopen(__filename, __mode);
  v6 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (v5)
  {
    *(a1 + 80) = v5;
    *a1 = _TelephonyUtilTransportFileWrite;
    *(a1 + 8) = _TelephonyUtilTransportFileRead;
    *(a1 + 16) = _TelephonyUtilTransportFileUnblockRead;
    *(a1 + 24) = _TelephonyUtilTransportFileFlushRead;
    *(a1 + 48) = TelephonyUtilTransportFileFree;
    *(a1 + 56) = _TelephonyUtilTransportFileIsValid;
  }

  else
  {
    v7 = __error();
    strerror(*v7);
    _TelephonyUtilDebugPrint("TelephonyUtilTransportCreateWithFile", "Failed to open file %s, args %s, err = %s (%u)\n", v8, v9, v10, v11, v12, v13, __filename);
  }

  return v6 != 0;
}

uint64_t _TelephonyUtilTransportFileWrite(uint64_t a1, void *__ptr, size_t __size, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = __size;
  if (a7)
  {
    __TUAssertTrigger("!dDtor");
  }

  v9 = *(a1 + 80);
  *a4 = 0;
  if (__size)
  {
    if (fwrite(__ptr, __size, 1uLL, v9) != 1)
    {
      _TelephonyUtilDebugPrint("_TelephonyUtilTransportFileWrite", "Failed to write\n", v10, v11, v12, v13, v14, v15, v24);
      return 0;
    }

    if (fflush(v9))
    {
      v16 = __error();
      v25 = strerror(*v16);
      _TelephonyUtilDebugPrint("_TelephonyUtilTransportFileWrite", "failed to flush, err = %s (%u)\n", v17, v18, v19, v20, v21, v22, v25);
      return 0;
    }

    *a4 = v8;
  }

  return 1;
}

uint64_t _TelephonyUtilTransportFileRead(uint64_t a1, char *__ptr, size_t __nitems, _DWORD *a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = __nitems;
  if (a7)
  {
    __TUAssertTrigger("!dDtor");
  }

  v11 = *(a1 + 80);
  *a4 = 0;
  while (1)
  {
    v12 = fread(__ptr, 1uLL, v9, v11);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    *a4 += v12;
    result = 1;
    v9 -= v13;
    if (v9)
    {
      __ptr += v13;
      if (a5)
      {
        continue;
      }
    }

    return result;
  }

  if (feof(v11))
  {
    return 1;
  }

  v15 = __error();
  v16 = strerror(*v15);
  _TelephonyUtilDebugPrint("_TelephonyUtilTransportFileRead", "failed to read, err = %s (%u)\n", v17, v18, v19, v20, v21, v22, v16);
  result = 0;
  *a4 = 0;
  return result;
}

uint64_t TelephonyUtilTransportFileFree(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    fclose(v2);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
  }

  return 1;
}

const void *ctu::cf::map_adapter::copyCFStringRef(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v2 = (**this)(this, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

const void *ctu::cf::map_adapter::copyCFBooleanRef(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v2 = (**this)(this, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFBooleanGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t ctu::cf::map_adapter::getBoolLoosely(ctu::cf::map_adapter *this, const __CFString *a2, char a3)
{
  v3 = a3;
  v8 = a3;
  v4 = (**this)(this, a2);
  if (v4)
  {
    v6 = v4;
    ctu::cf::assign_loosely(&v8, v4, v5);
    CFRelease(v6);
    v3 = v8;
  }

  return v3 & 1;
}

const __CFString *ctu::cf::map_adapter::getIntLoosely(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v5 = 0;
  result = (**this)(this, a2);
  if (result)
  {
    v4 = result;
    ctu::cf::assign_loosely(&v5, result, v3);
    CFRelease(v4);
    return v5;
  }

  return result;
}

double ctu::cf::map_adapter::getDoubleLoosely(ctu::cf::map_adapter *this, const __CFString *a2)
{
  v6 = 0.0;
  v2 = (**this)(this, a2);
  if (!v2)
  {
    return 0.0;
  }

  v4 = v2;
  ctu::cf::assign_loosely(&v6, v2, v3);
  CFRelease(v4);
  return v6;
}

ctu::cf::MakeCFString *ctu::cf::MakeCFString::MakeCFString(ctu::cf::MakeCFString *this, const char *a2)
{
  *this = CFStringCreateWithCString(0, a2, 0x8000100u);
  return this;
}

{
  *this = CFStringCreateWithCString(0, a2, 0x8000100u);
  return this;
}

ctu::cf::MakeCFString *ctu::cf::MakeCFString::MakeCFString(ctu::cf::MakeCFString *this, const void **a2)
{
  v3 = *a2;
  *this = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

{
  v3 = *a2;
  *this = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

CFTypeRef *ctu::cf::MakeCFString::operator=(CFTypeRef *a1, const void **a2)
{
  if (a1 != a2)
  {
    CFRelease(*a1);
    v4 = *a2;
    *a1 = *a2;
    CFRetain(v4);
  }

  return a1;
}

ctu::cf::dict_adapter *ctu::cf::dict_adapter::dict_adapter(ctu::cf::dict_adapter *this, CFTypeRef cf, char a3)
{
  *this = &unk_1F1CB68A0;
  *(this + 1) = cf;
  if (cf && (a3 & 1) == 0)
  {
    CFRetain(cf);
  }

  return this;
}

{
  *this = &unk_1F1CB68A0;
  *(this + 1) = cf;
  if (cf && (a3 & 1) == 0)
  {
    CFRetain(cf);
  }

  return this;
}

ctu::cf::dict_adapter *ctu::cf::dict_adapter::dict_adapter(ctu::cf::dict_adapter *this, const ctu::cf::dict_adapter *a2)
{
  v3 = *(a2 + 1);
  *this = &unk_1F1CB68A0;
  *(this + 1) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

{
  v3 = *(a2 + 1);
  *this = &unk_1F1CB68A0;
  *(this + 1) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

uint64_t ctu::cf::dict_adapter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 8);
    *(a1 + 8) = v5;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  return a1;
}

ctu::cf::plist_adapter *ctu::cf::plist_adapter::plist_adapter(ctu::cf::plist_adapter *this, const ctu::cf::plist_adapter *a2)
{
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  *this = &unk_1F1CB6878;
  *(this + 1) = v4;
  *(this + 2) = v3;
  if (v4)
  {
    CFRetain(v4);
    v3 = *(this + 2);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

uint64_t ctu::cf::plist_adapter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v6;
    if (v7)
    {
      CFRetain(v7);
      v6 = *(a1 + 16);
    }

    if (v6)
    {
      CFRetain(v6);
    }
  }

  return a1;
}

uint64_t ctu::AdaptiveTimerService::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ctu::AdaptiveTimerService **a3@<X8>)
{
  v6 = operator new(0x80uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = &unk_1F1CB8FC0;
  v7 = (v6 + 24);
  *(v6 + 3) = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>(v6 + 4, "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  *(v6 + 3) = &unk_1F1CB8F48;
  *(v6 + 72) = *a2;
  *(v6 + 11) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 104) = *a1;
  *(v6 + 15) = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *(v6 + 5);
  if (!v8)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
    *(v6 + 4) = v7;
    *(v6 + 5) = v6;
    goto LABEL_5;
  }

  if (v8->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
    *(v6 + 4) = v7;
    *(v6 + 5) = v6;
    std::__shared_weak_count::__release_weak(v8);
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  result = ctu::AdaptiveTimerService::init(v7);
  *a3 = v7;
  a3[1] = v6;
  return result;
}

uint64_t ctu::AdaptiveTimerService::init(ctu::AdaptiveTimerService *this)
{
  v7 = 3;
  LODWORD(__p) = 7105601;
  v2 = (this + 72);
  v3 = *(this + 18);
  if ((TelephonyUtilPrefs::getPreference<int>(&__p, (this + 72)) & 1) == 0)
  {
    *v2 = v3;
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  v4 = *(this + 18);
  if ((TelephonyUtilPrefs::getPreference<int>(this + 80, v2) & 1) == 0)
  {
    *v2 = v4;
  }

  return 1;
}

void sub_1A91030FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::AdaptiveTimerService::AdaptiveTimerService(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>((a1 + 8), "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  *a1 = &unk_1F1CB8F48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 72) = 0;
  v6 = *a2;
  *(a1 + 96) = *(a2 + 2);
  *(a1 + 80) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  return a1;
}

{
  *a1 = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>((a1 + 8), "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  *a1 = &unk_1F1CB8F48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 72) = 0;
  v6 = *a2;
  *(a1 + 96) = *(a2 + 2);
  *(a1 + 80) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  return a1;
}

void ctu::AdaptiveTimerService::scheduleAfterImpl(uint64_t a1, uint64_t a2, char a3, uint64_t a4, NSObject **a5, void **a6)
{
  ScaledTime = ctu::AdaptiveTimerService::getScaledTime(a1, a4);
  v10 = dispatch_time(qword_1A9160DB0[a3], 1000 * ScaledTime);
  v11 = *a5;
  v12 = *a6;

  dispatch_after(v10, v11, v12);
}

void ctu::AdaptiveTimerService::~AdaptiveTimerService(void **this)
{
  ctu::AdaptiveTimerService::~AdaptiveTimerService(this);

  operator delete(v1);
}

{
  *this = &unk_1F1CB8F48;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[6];
  if (v2)
  {
    v3 = this[7];
    v4 = this[6];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = this[6];
    }

    this[7] = v2;
    operator delete(v4);
  }

  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 5);
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
}

void std::__shared_ptr_emplace<ctu::AdaptiveTimerService>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB8FC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t TelephonyUtilPrefs::getPreference<int>(uint64_t a1, ctu::cf *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v10 = CFStringCreateWithCString(0, v3, 0x8000100u);
  v4 = (*timerScalingOverride)();
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      v8 = ctu::cf::assign(a2, v5, v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  ctu::cf::MakeCFString::~MakeCFString(&v10);
  return v8;
}

void sub_1A9103598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::MakeCFString::~MakeCFString(va);
  _Unwind_Resume(a1);
}

BOOL ctu::cf::convert_copy(ctu::cf *this, const __CFString **a2, const char *a3, CFAllocatorRef alloc, const __CFAllocator *a5)
{
  v6 = CFStringCreateWithCString(alloc, a2, a3);
  *this = v6;
  return v6 != 0;
}

BOOL ctu::cf::convert_copy(CFDataRef *a1, uint64_t a2, int a3, CFAllocatorRef allocator, CFAllocatorRef bytesDeallocator)
{
  v8 = *(a2 + 40);
  v9 = *(a2 + 32);
  if (a3)
  {
    v10 = CFDataCreate(allocator, v8, v9);
    if (!v10)
    {
      return v10 != 0;
    }

    goto LABEL_5;
  }

  v10 = CFDataCreateWithBytesNoCopy(allocator, v8, v9, bytesDeallocator);
  if (v10)
  {
LABEL_5:
    *a1 = v10;
  }

  return v10 != 0;
}

BOOL ctu::cf::convert_copy(CFDataRef *a1, uint64_t a2)
{
  v3 = CFDataCreate(*MEMORY[0x1E695E480], *a2, *(a2 + 8) - *a2);
  *a1 = v3;
  return v3 != 0;
}

uint64_t ctu::cf::assign(uint64_t a1, CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v3 = CFErrorCopyDescription(err);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v4 = ctu::cf::assign(__p, v3);
  CFRelease(v3);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    *a1 = *__p;
    *(a1 + 16) = v10;
    __p[0] = v5;
    __p[1] = v6;
    v10 = v7;
    if (v7 < 0)
    {
      goto LABEL_7;
    }
  }

  else if (v10 < 0)
  {
LABEL_7:
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1A9103C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ctu::cf::assign(std::string *a1, CFURLRef url, Boolean resolveAgainstBase)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[30] = v4;
  v8[31] = v4;
  v8[28] = v4;
  v8[29] = v4;
  v8[26] = v4;
  v8[27] = v4;
  v8[24] = v4;
  v8[25] = v4;
  v8[22] = v4;
  v8[23] = v4;
  v8[20] = v4;
  v8[21] = v4;
  v8[18] = v4;
  v8[19] = v4;
  v8[16] = v4;
  v8[17] = v4;
  v8[14] = v4;
  v8[15] = v4;
  v8[12] = v4;
  v8[13] = v4;
  v8[10] = v4;
  v8[11] = v4;
  v8[8] = v4;
  v8[9] = v4;
  v8[6] = v4;
  v8[7] = v4;
  v8[4] = v4;
  v8[5] = v4;
  v8[2] = v4;
  v8[3] = v4;
  v8[0] = v4;
  v8[1] = v4;
  v5 = CFURLGetFileSystemRepresentation(url, resolveAgainstBase, v8, 512);
  if (v5)
  {
    std::string::__assign_external(a1, v8);
  }

  result = v5 != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL ctu::cf::copy(CFErrorRef err, __CFError *a2, const __CFString **a3)
{
  if (err)
  {
    *a2 = CFErrorCopyDescription(err);
  }

  return err != 0;
}

uint64_t ctu::cf::assign(uint64_t a1, const __CFLocale *a2, CFDateFormatterStyle a3, CFDateFormatterStyle a4, CFAllocatorRef allocator, CFAbsoluteTime a6)
{
  v9 = CFDateFormatterCreate(allocator, a2, a3, a4);
  if (!v9)
  {
    return 0;
  }

  v14 = v9;
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(allocator, v9, a6);
  v13 = StringWithAbsoluteTime;
  if (StringWithAbsoluteTime)
  {
    v11 = ctu::cf::assign(a1, StringWithAbsoluteTime);
  }

  else
  {
    v11 = 0;
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v13);
  ctu::SharedRef<__CFDateFormatter,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDateFormatter>::~SharedRef(&v14);
  return v11;
}

void sub_1A9103DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a9);
  ctu::SharedRef<__CFDateFormatter,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDateFormatter>::~SharedRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::assign_loosely(ctu::cf *this, const __CFString *cf, const void *a3)
{
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFBooleanGetTypeID())
  {
    v6 = CFBooleanGetValue(cf) == 0;
LABEL_6:
    v8 = !v6;
    *this = v8;
    return 1;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    valuePtr = -1431655766;
    CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
    v6 = valuePtr == 0;
    goto LABEL_6;
  }

  v10 = CFGetTypeID(cf);
  if (v10 != CFStringGetTypeID())
  {
    return 0;
  }

  v9 = 1;
  if (CFStringCompare(cf, @"YES", 1uLL) == kCFCompareEqualTo || CFStringCompare(cf, @"TRUE", 1uLL) == kCFCompareEqualTo)
  {
    *this = 1;
    return v9;
  }

  if (CFStringCompare(cf, @"NO", 1uLL) && CFStringCompare(cf, @"FALSE", 1uLL))
  {
    return 0;
  }

  *this = 0;
  return 1;
}

BOOL ctu::cf::assign_loosely(ctu::cf *this, const __CFString *cf, const void *a3)
{
  *this = 0;
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFNumberGetTypeID())
  {
    return CFNumberGetValue(cf, kCFNumberSInt32Type, this) != 0;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFStringGetTypeID())
  {
    IntValue = CFStringGetIntValue(cf);
LABEL_9:
    *this = IntValue;
    return 1;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == CFBooleanGetTypeID())
  {
    IntValue = CFBooleanGetValue(cf);
    goto LABEL_9;
  }

  return 0;
}

{
  *this = 0;
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFNumberGetTypeID())
  {
    return CFNumberGetValue(cf, kCFNumberSInt64Type, this) != 0;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFStringGetTypeID())
  {
    IntValue = CFStringGetIntValue(cf);
LABEL_9:
    *this = IntValue;
    return 1;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == CFBooleanGetTypeID())
  {
    IntValue = CFBooleanGetValue(cf);
    goto LABEL_9;
  }

  return 0;
}

{
  *this = 0;
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFNumberGetTypeID())
  {
    return CFNumberGetValue(cf, kCFNumberDoubleType, this) != 0;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFStringGetTypeID())
  {
    DoubleValue = CFStringGetDoubleValue(cf);
LABEL_9:
    *this = DoubleValue;
    return 1;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == CFBooleanGetTypeID())
  {
    DoubleValue = CFBooleanGetValue(cf);
    goto LABEL_9;
  }

  return 0;
}

const void **ctu::cf::show@<X0>(const void **this@<X0>, CFTypeRef cf@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v5 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  if (cf)
  {
    v6 = cf;
    if (this)
    {
      *&v30 = CFCopyDescription(cf);
      memset(v32, 0, 24);
      ctu::cf::assign(v32, v30);
LABEL_4:
      v7 = *v32;
      *v5 = *&v32[8];
      *(v5 + 7) = *&v32[15];
      v8 = v32[23];
      *a3 = v7;
      *(a3 + 23) = v8;
      return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v30);
    }

    v9 = CFGetTypeID(cf);
    TypeID = CFDictionaryGetTypeID();
    v11 = CFGetTypeID(v6);
    if (v9 == TypeID)
    {
      v12 = CFDictionaryGetTypeID();
      v47 = 0xAAAAAAAAAAAAAAAALL;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v45 = v13;
      v46 = v13;
      if (v11 != v12)
      {
        v6 = 0;
      }

      v43 = v13;
      v44 = v13;
      v41 = v13;
      v42 = v13;
      v39 = v13;
      v40 = v13;
      v38 = v13;
      v36 = v13;
      v37 = v13;
      v34 = v13;
      *__p = v13;
      *&v32[16] = v13;
      v33 = v13;
      *v32 = v13;
      std::ostringstream::basic_ostringstream[abi:ne200100](v32);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "CFDictionary(", 13);
      Count = CFDictionaryGetCount(v6);
      v16 = MEMORY[0x1AC580AF0](v14, Count);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " keys)", 6);
      std::ostringstream::str[abi:ne200100](v32, &v30);
    }

    else
    {
      v17 = CFArrayGetTypeID();
      v18 = CFGetTypeID(v6);
      if (v11 == v17)
      {
        v19 = CFArrayGetTypeID();
        v47 = 0xAAAAAAAAAAAAAAAALL;
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v45 = v20;
        v46 = v20;
        if (v18 != v19)
        {
          v6 = 0;
        }

        v43 = v20;
        v44 = v20;
        v41 = v20;
        v42 = v20;
        v39 = v20;
        v40 = v20;
        v38 = v20;
        v36 = v20;
        v37 = v20;
        v34 = v20;
        *__p = v20;
        *&v32[16] = v20;
        v33 = v20;
        *v32 = v20;
        std::ostringstream::basic_ostringstream[abi:ne200100](v32);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "CFArray(", 8);
        v22 = CFArrayGetCount(v6);
        v23 = MEMORY[0x1AC580AF0](v21, v22);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " elements)", 10);
        std::ostringstream::str[abi:ne200100](v32, &v30);
      }

      else
      {
        if (v18 != CFDataGetTypeID())
        {
          *&v30 = CFCopyDescription(v6);
          memset(v32, 0, 24);
          ctu::cf::assign(v32, v30);
          goto LABEL_4;
        }

        v24 = CFGetTypeID(v6);
        v25 = CFDataGetTypeID();
        v47 = 0xAAAAAAAAAAAAAAAALL;
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v45 = v26;
        v46 = v26;
        if (v24 != v25)
        {
          v6 = 0;
        }

        v43 = v26;
        v44 = v26;
        v41 = v26;
        v42 = v26;
        v39 = v26;
        v40 = v26;
        v38 = v26;
        v36 = v26;
        v37 = v26;
        v34 = v26;
        *__p = v26;
        *&v32[16] = v26;
        v33 = v26;
        *v32 = v26;
        std::ostringstream::basic_ostringstream[abi:ne200100](v32);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "CFData(", 7);
        Length = CFDataGetLength(v6);
        v29 = MEMORY[0x1AC580AF0](v27, Length);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " bytes)", 7);
        std::ostringstream::str[abi:ne200100](v32, &v30);
      }
    }

    *a3 = v30;
    *(a3 + 16) = v31;
    *v32 = *MEMORY[0x1E69E54E8];
    *&v32[*(*v32 - 24)] = *(MEMORY[0x1E69E54E8] + 24);
    *&v32[8] = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[1]);
    }

    *&v32[8] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v32[16]);
    std::ostream::~ostream();
    return MEMORY[0x1AC580CE0](&v38);
  }

  else
  {
    *(a3 + 23) = 4;
    *a3 = 1280070990;
  }

  return this;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1A9104770(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1AC580CE0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  v6 = v4;
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
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a2, v5, v6);
LABEL_10:
  *(a2 + v6) = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1AC580CE0](a1 + 112);
  return a1;
}

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDateFormatter,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDateFormatter>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ctu::tokenize(std::string *this@<X0>, std::string::value_type __c@<W1>, std::string::size_type __pos@<X2>, void *a4@<X8>)
{
  v8 = 0;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  do
  {
    v9 = std::string::find(this, __c, __pos);
    memset(&v11, 170, sizeof(v11));
    std::string::basic_string(&v11, this, v8, v9 - v8, &v10);
    std::vector<std::string>::push_back[abi:ne200100](a4, &v11);
    v8 = v9 + 1;
    if (__pos <= v9 + 1)
    {
      __pos = v9 + 1;
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  while (v9 != -1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ctu::count_trailing_zeroes(ctu *this, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  result = a2;
  for (i = this - 1; !i[a2]; --i)
  {
    if (a2 == ++v3)
    {
      return result;
    }
  }

  return v3;
}

void ctu::assign(std::string *a1, unsigned __int8 *a2, unsigned int a3, int a4, int a5)
{
  v6 = a3;
  if (a5)
  {
    if (a3)
    {
      v9 = 0;
      v10 = a3;
      v11 = a2 - 1;
      while (!v11[a3])
      {
        --v11;
        if (a3 == ++v9)
        {
          goto LABEL_9;
        }
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

LABEL_9:
    v6 = a3 - v10;
  }

  if (a4)
  {
    v12 = 146 * ((v6 + 31) >> 5);
  }

  else
  {
    v12 = 2 * v6;
  }

  if (v12 == -2)
  {
    v13 = 0;
  }

  else
  {
    v13 = operator new((v12 + 2));
    bzero(v13, (v12 + 2));
  }

  v14 = v12 | 1u;
  if (a4)
  {
    TelephonyUtilLogBinaryToBuffer(v13, v14, a2, v6);
  }

  else
  {
    TelephonyUtilBinToHex(v13, v14, a2, v6);
  }

  std::string::__assign_external(a1, v13);

  operator delete(v13);
}

void sub_1A9104C38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::assign(_BYTE *a1, char *a2, int a3)
{
  v3 = a3;
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  return TelephonyUtilHexToBin(a1, v3, v4);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18.__end_cap_.__value_ = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  begin = v7 + v2;
  v18.__first_ = v7;
  v18.__begin_ = begin;
  value = &v7[v6];
  v18.__end_ = begin;
  v18.__end_cap_.__value_ = value;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v18.__begin_;
    end = v18.__end_;
    value = v18.__end_cap_.__value_;
  }

  else
  {
    v10 = *a2;
    begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v10;
    end = v7 + v2;
  }

  v12 = end + 1;
  v13 = *(a1 + 8) - *a1;
  v14 = begin - v13;
  memcpy(begin - v13, *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = value;
  v18.__end_ = v15;
  v18.__end_cap_.__value_ = v16;
  v18.__first_ = v15;
  v18.__begin_ = v15;
  std::__split_buffer<std::string>::~__split_buffer(&v18);
  return v12;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void ctu::RestResourceConnection::~RestResourceConnection(void **this)
{
  *this = &unk_1F1CB6A78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void ctu::XpcRestResourceConnection::~XpcRestResourceConnection(xpc_object_t *this)
{
  *this = &unk_1F1CB6918;
  xpc_release(this[4]);
  this[4] = 0;
  *this = &unk_1F1CB6A78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  ctu::XpcRestResourceConnection::~XpcRestResourceConnection(this);

  operator delete(v1);
}

__n128 ctu::DispatchRestResourceConnection::DispatchRestResourceConnection(uint64_t a1, __int128 *a2, __n128 *a3)
{
  *a1 = &unk_1F1CB6A78;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *a1 = &unk_1F1CB6840;
  result = *a3;
  *(a1 + 32) = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

{
  *a1 = &unk_1F1CB6A78;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *a1 = &unk_1F1CB6840;
  result = *a3;
  *(a1 + 32) = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

const void **ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))const::$_0::~$_0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void ctu::DispatchRestResourceConnection::~DispatchRestResourceConnection(ctu::DispatchRestResourceConnection *this)
{
  *this = &unk_1F1CB6840;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F1CB6A78;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1CB6840;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F1CB6A78;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void *std::__function::__func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB54A8;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::__function::__func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::~__func(void *__p)
{
  *__p = &unk_1F1CB54A8;
  v2 = __p[1];
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F1CB54A8;
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v2[1] = v3;
  return v2;
}

void std::__function::__func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

uint64_t std::__function::__func<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0,std::allocator<ctu::DispatchRestResourceConnection::sendWithReply(xpc::dict,dispatch_queue_s *,void({block_pointer})(void *))::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFAllocatorRef ctu::cf::create_allocator@<X0>(ctu::cf *this@<X0>, const ctu::MallocZone *a2@<X1>, CFAllocatorRef *a3@<X8>)
{
  memset(&context, 0, 24);
  v7 = operator new(0x18uLL);
  v8 = *(this + 1);
  *v7 = *this;
  v7[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v7[2] = *(this + 2);
  context.info = v7;
  result = CFAllocatorCreate(a2, &context);
  *a3 = result;
  return result;
}

void anonymous namespace::sMallocZoneRelease(_anonymous_namespace_ *this, const void *a2)
{
  if (this)
  {
    v3 = *(this + 1);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(this);
  }
}

uint64_t ctu::concurrency::Monitor::Monitor(uint64_t a1, const void **a2)
{
  *a1 = &unk_1F1CB7488;
  ctu::concurrency::PriorityQueue::PriorityQueue((a1 + 8), a2);
  *(a1 + 32) = dispatch_group_create();
  return a1;
}

{
  *a1 = &unk_1F1CB7488;
  ctu::concurrency::PriorityQueue::PriorityQueue((a1 + 8), a2);
  *(a1 + 32) = dispatch_group_create();
  return a1;
}

void *ctu::concurrency::Monitor::Monitor(void *a1, uint64_t a2)
{
  *a1 = &unk_1F1CB7488;
  ctu::concurrency::PriorityQueue::PriorityQueue((a1 + 1), a2 + 8);
  v4 = *(a2 + 32);
  a1[4] = v4;
  dispatch_retain(v4);
  return a1;
}

{
  *a1 = &unk_1F1CB7488;
  ctu::concurrency::PriorityQueue::PriorityQueue((a1 + 1), a2 + 8);
  v4 = *(a2 + 32);
  a1[4] = v4;
  dispatch_retain(v4);
  return a1;
}

void ctu::concurrency::Monitor::~Monitor(dispatch_object_t *this)
{
  *this = &unk_1F1CB7488;
  dispatch_release(this[4]);
  ctu::concurrency::PriorityQueue::~PriorityQueue(this + 1);
}

{
  *this = &unk_1F1CB7488;
  dispatch_release(this[4]);
  ctu::concurrency::PriorityQueue::~PriorityQueue(this + 1);
}

{
  *this = &unk_1F1CB7488;
  dispatch_release(this[4]);
  ctu::concurrency::PriorityQueue::~PriorityQueue(this + 1);

  operator delete(this);
}

void ctu::concurrency::Monitor::executeBlock(uint64_t a1, void *a2, int a3)
{
  ctu::concurrency::PriorityQueue::addBlock((a1 + 8), *(a1 + 32), a2, a3);
}

{
  ctu::concurrency::PriorityQueue::addBlock((a1 + 8), *(a1 + 32), a2, a3);
}

void ctu::concurrency::Monitor::executeBlock(uint64_t a1, NSObject *a2, void *a3, int a4)
{
  ctu::concurrency::PriorityQueue::addBlock((a1 + 8), a2, a3, a4);
}

{
  ctu::concurrency::PriorityQueue::addBlock((a1 + 8), a2, a3, a4);
}

void ctu::concurrency::Monitor::executeBlockAndWait(uint64_t a1, void *a2, int a3, dispatch_time_t a4)
{
  if (a4 == -1)
  {
    v9 = (a1 + 8);

    ctu::concurrency::PriorityQueue::addBlockSync(v9, a2, a3);
  }

  else
  {
    v8 = dispatch_group_create();
    ctu::concurrency::PriorityQueue::addBlock((a1 + 8), v8, a2, a3);
    dispatch_group_wait(v8, a4);

    dispatch_release(v8);
  }
}

{
  if (a4 == -1)
  {
    v9 = (a1 + 8);

    ctu::concurrency::PriorityQueue::addBlockSync(v9, a2, a3);
  }

  else
  {
    v8 = dispatch_group_create();
    ctu::concurrency::PriorityQueue::addBlock((a1 + 8), v8, a2, a3);
    dispatch_group_wait(v8, a4);

    dispatch_release(v8);
  }
}

intptr_t ctu::concurrency::Monitor::waitForCompletion(dispatch_group_t *this, dispatch_time_t a2)
{
  return dispatch_group_wait(this[4], a2);
}

{
  return dispatch_group_wait(this[4], a2);
}

void ctu::concurrency::Monitor::notifyOnCompletion(uint64_t a1, NSObject *a2, void *a3, int a4)
{
  ctu::concurrency::PriorityQueue::notifyOn((a1 + 8), a2, a3, a4);
}

{
  ctu::concurrency::PriorityQueue::notifyOn((a1 + 8), a2, a3, a4);
}

void ctu::concurrency::Monitor::suspendAndExecute(uint64_t a1, uint64_t a2)
{
  dispatch_suspend(*(a1 + 24));
  (*(a2 + 16))(a2);
  v4 = *(a1 + 24);

  dispatch_resume(v4);
}

xpc_object_t *ctu::rest::data_view::data_view(xpc_object_t *a1, xpc_object_t *a2)
{
  *a1 = xpc_null_create();
  if (MEMORY[0x1AC581B70](*a2) != MEMORY[0x1E69E9ED0] && MEMORY[0x1AC581B70](*a2) == MEMORY[0x1E69E9E70])
  {
    v4 = *a2;
    *a2 = xpc_null_create();
    v5 = *a1;
    *a1 = v4;
    xpc_release(v5);
  }

  return a1;
}

void sub_1A9105AC8(_Unwind_Exception *a1)
{
  xpc_release(*v1);
  *v1 = 0;
  _Unwind_Resume(a1);
}

xpc_object_t *ctu::rest::data_view::data_view(xpc_object_t *this, CFTypeRef cf)
{
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  ctu::rest::data_view::data_view(this, &v4);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v4);
  return this;
}

{
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  ctu::rest::data_view::data_view(this, &v4);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v4);
  return this;
}

void sub_1A9105B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

xpc_object_t *ctu::rest::data_view::data_view(xpc_object_t *a1, CFDataRef *a2)
{
  *a1 = xpc_null_create();
  if (*a2)
  {
    v4 = qos_class_self();
    global_queue = dispatch_get_global_queue(v4, 0);
    BytePtr = CFDataGetBytePtr(*a2);
    Length = CFDataGetLength(*a2);
    destructor[0] = MEMORY[0x1E69E9820];
    destructor[1] = 1174405120;
    destructor[2] = ___ZN3ctu4rest9data_viewC2ENS_2cf11CFSharedRefIK8__CFDataEE_block_invoke;
    destructor[3] = &__block_descriptor_tmp_14;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v13, a2);
    v8 = dispatch_data_create(BytePtr, Length, global_queue, destructor);
    v9 = xpc_data_create_with_dispatch_data(v8);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    v10 = *a1;
    *a1 = v9;
    xpc_release(v10);
    dispatch_release(v8);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v13);
  }

  return a1;
}

void sub_1A9105C68(_Unwind_Exception *a1)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v2 + 32));
  xpc_release(*v1);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void sub_1A9105CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

xpc_object_t *ctu::rest::data_view::data_view(xpc_object_t *a1, uint64_t a2)
{
  *a1 = xpc_null_create();
  if (*a2 != *(a2 + 8))
  {
    v4 = qos_class_self();
    global_queue = dispatch_get_global_queue(v4, 0);
    v6 = dispatch_data_create(*a2, *(a2 + 8) - *a2, global_queue, &__block_literal_global_1);
    v7 = xpc_data_create_with_dispatch_data(v6);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    v8 = *a1;
    *a1 = v7;
    xpc_release(v8);
    dispatch_release(v6);
  }

  return a1;
}

{
  *a1 = xpc_null_create();
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    v6 = operator new(0x18uLL);
    *v6 = v4;
    v6[1] = v5;
    v6[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v7 = qos_class_self();
    global_queue = dispatch_get_global_queue(v7, 0);
    destructor[0] = MEMORY[0x1E69E9820];
    destructor[1] = 0x40000000;
    destructor[2] = ___ZN3ctu4rest9data_viewC2EONSt3__16vectorIhNS2_9allocatorIhEEEE_block_invoke;
    destructor[3] = &__block_descriptor_tmp_2;
    destructor[4] = v6;
    v9 = dispatch_data_create(v4, v5 - v4, global_queue, destructor);
    v10 = xpc_data_create_with_dispatch_data(v9);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    v11 = *a1;
    *a1 = v10;
    xpc_release(v11);
    dispatch_release(v9);
  }

  return a1;
}

void sub_1A9105DB4(_Unwind_Exception *a1)
{
  xpc_release(*v1);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void sub_1A9105EF0(_Unwind_Exception *a1)
{
  xpc_release(*v1);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void ___ZN3ctu4rest9data_viewC2EONSt3__16vectorIhNS2_9allocatorIhEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    operator delete(v1);
  }
}

const void *ctu::rest::data_view::data(ctu::rest::data_view *this)
{
  if (MEMORY[0x1AC581B70](*this) == MEMORY[0x1E69E9ED0])
  {
    return 0;
  }

  v2 = *this;

  return xpc_data_get_bytes_ptr(v2);
}

size_t ctu::rest::data_view::size(ctu::rest::data_view *this)
{
  if (MEMORY[0x1AC581B70](*this) == MEMORY[0x1E69E9ED0])
  {
    return 0;
  }

  v2 = *this;

  return xpc_data_get_length(v2);
}

void ctu::rest::read_rest_value(void **a1, void **a2)
{
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v6 = xpc_null_create();
  }

  ctu::rest::data_view::data_view(&object, &v6);
  v4 = object;
  object = xpc_null_create();
  v5 = *a1;
  *a1 = v4;
  xpc_release(v5);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

xpc_object_t ctu::rest::write_rest_value@<X0>(void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  *a2 = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

BOOL ctu::rest::convert_copy(ctu::rest *this, const __CFData **a2, const ctu::rest::data_view *a3, const __CFAllocator *a4)
{
  v7 = MEMORY[0x1AC581B70](*a2);
  v8 = MEMORY[0x1E69E9ED0];
  if (v7 != MEMORY[0x1E69E9ED0])
  {
    v9 = ctu::rest::data_view::data(a2);
    v10 = ctu::rest::data_view::size(a2);
    *this = CFDataCreateWithBytesNoCopy(a3, v9, v10, *MEMORY[0x1E695E498]);
  }

  return v7 != v8;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void ctu::XpcClientHelper::~XpcClientHelper(xpc_object_t *this)
{
  ctu::XpcClientHelper::setServer(this);
  xpc_release(*this);
  *this = 0;
}

void ctu::XpcClientHelper::setServer(void *a1)
{
  object = xpc_null_create();
  ctu::XpcClientHelper::setServer_internal(a1, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

void ctu::XpcClientHelper::flush(_xpc_connection_s **this, const group *a2)
{
  if (MEMORY[0x1AC581B70](*this) == MEMORY[0x1E69E9E68])
  {
    gr_name = a2->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v5 = *this;
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 1174405120;
    barrier[2] = ___ZNK3ctu15XpcClientHelper5flushERKN8dispatch5groupE_block_invoke;
    barrier[3] = &__block_descriptor_tmp_1_0;
    group = gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(group);
    }

    xpc_connection_send_barrier(v5, barrier);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (gr_name)
    {
      dispatch_group_leave(gr_name);
      dispatch_release(gr_name);
    }
  }
}

void sub_1A910644C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
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

double ctu::PropertyRestResource::PropertyRestResource(ctu::PropertyRestResource *this, char a2)
{
  *this = &unk_1F1CB6C80;
  *(this + 8) = a2;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F1CB6C80;
  *(this + 8) = a2;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  return result;
}

void ctu::PropertyRestResource::~PropertyRestResource(ctu::PropertyRestResource *this)
{
  *this = &unk_1F1CB6C80;
  boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(this + 8);
  boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(this + 5);
  v2 = *(this + 3);
  if (v2)
  {
    v3 = (*(this + 2) + 24);
    do
    {
      std::unique_ptr<ctu::PropertyRestResourceState>::reset[abi:ne200100](v3, 0);
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  if (*(this + 4))
  {
    operator delete(*(this + 2));
  }
}

{
  ctu::PropertyRestResource::~PropertyRestResource(this);

  operator delete(v1);
}

uint64_t ctu::PropertyRestResource::handleRestMessage_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  v13 = v5;
  v6 = *(a3 + 1);
  *object = *a3;
  v11 = v6;
  if (v12 <= 4)
  {
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        ctu::PropertyRestResource::handleMessage_Root_GET(this, a2);
        return 1;
      }

      if (v12 == 2)
      {
        ctu::PropertyRestResource::handleMessage_Meta_GET(v7, a2);
        return 1;
      }

      goto LABEL_20;
    }

    if (v12 == 3)
    {
      ctu::PropertyRestResource::handleMessage_Meta_Watchers_GET(this, a2);
    }

    else
    {
      ctu::PropertyRestResource::handleMessage_Meta_Watched_GET(this, a2);
    }
  }

  else
  {
    if (v12 > 6)
    {
      switch(v12)
      {
        case 7:
          ctu::PropertyRestResource::handleMessage_Resource_GET(this, a2, v8, *(&v12 + 1), v13, *(&v13 + 1), v14);
          return 1;
        case 8:
          ctu::PropertyRestResource::handleMessage_Resource_Meta_GET(v7, a2);
          return 1;
        case 9:
          ctu::PropertyRestResource::handleMessage_Resource_Watchers_GET(this, a2, v8, *(&v12 + 1), v13);
          return 1;
      }

LABEL_20:
      object[0] = xpc_null_create();
      (*(*a2 + 32))(a2, object);
      xpc_release(object[0]);
      return 1;
    }

    if (v12 == 5)
    {
      ctu::PropertyRestResource::handleMessage_Meta_Watched_Meta_Watchers_GET(this, a2);
    }

    else
    {
      ctu::PropertyRestResource::handleMessage_DumpState_GET(this, a2);
    }
  }

  return 1;
}

uint64_t ctu::PropertyRestResource::handleMessage_Root_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  ctu::PropertyRestResource::getResourceArray(this, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v5);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
  return 1;
}

void sub_1A910689C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Meta_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  xpc::array_creator::array_creator(&object);
  xpc::array_creator::operator()<char const*>("watchers", &object, &v5);
  xpc_release(object);
  xpc::array_creator::operator()<char const*>("watched", &v5, &v6);
  v3 = v6;
  v6 = xpc_null_create();
  xpc_release(v6);
  v6 = 0;
  xpc_release(v5);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &object);
  xpc_release(object);
  xpc_release(v3);
  return 1;
}

void sub_1A91069A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Meta_Watchers_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  ctu::rest::WatchableRestResourceHelper::getWatcherNames((this + 40), &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v5);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
  return 1;
}

void sub_1A9106AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Meta_Watched_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  ctu::PropertyRestResource::getWatchedResourceArray(this, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v5);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
  return 1;
}

void sub_1A9106B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Meta_Watched_Meta_Watchers_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  ctu::rest::WatchableRestResourceHelper::getWatcherNames((this + 64), &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v5);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
  return 1;
}

void sub_1A9106C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_DumpState_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  if (*(this + 8) == 1)
  {
    __p.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    *&__p.__r_.__value_.__l.__data_ = v3;
    v8 = v3;
    ctu::ReplyDictRestResourceContextDecorator::ReplyDictRestResourceContextDecorator(&v8, a2);
    v4 = *(this + 3);
    if (v4)
    {
      v5 = *(this + 2);
      v6 = (v5 + 32 * v4);
      do
      {
        std::string::operator=(&__p, v5);
        ctu::ReplyDictRestResourceContextDecorator::sendReplyWithValue(&v8, (v5[1].__r_.__value_.__r.__words[0] + 24));
        v5 = (v5 + 32);
      }

      while (v5 != v6);
    }

    *&v8 = &unk_1F1CB6710;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }
  }

  return 1;
}

uint64_t ctu::PropertyRestResource::handleMessage_Resource_GET(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  v20[0] = a4;
  v20[1] = a5;
  v19[0] = a6;
  v19[1] = a7;
  object = xpc_null_create();
  if (*(a1 + 8))
  {
    ctu::llvm::StringRef::operator std::string(v20, __p);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v23, (a1 + 16), __p);
    v10 = v23;
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 != *(a1 + 16) + 32 * *(a1 + 24))
    {
      v11 = *(v10 + 24);
      v12 = *(v11 + 24);
      if (v12)
      {
        xpc_retain(*(v11 + 24));
      }

      else
      {
        v12 = xpc_null_create();
      }

      v13 = object;
      object = v12;
      xpc_release(v13);
      if (a7)
      {
        ctu::llvm::StringRef::operator std::string(v19, __p);
        xpc::get_subpath(&object, __p, &v17);
        v15 = v17;
        v14 = object;
        v17 = object;
        object = v15;
        xpc_release(v14);
        v17 = 0;
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    (*(*a2 + 32))(a2, &object);
  }

  else
  {
    (*(*a2 + 32))(a2, &object);
  }

  xpc_release(object);
  return 1;
}

void sub_1A9106EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Resource_Meta_GET(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  xpc::array_creator::array_creator(&object);
  xpc::array_creator::operator()<char const*>("watchers", &object, &v5);
  xpc_release(object);
  v3 = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &object);
  xpc_release(object);
  xpc_release(v3);
  return 1;
}

void sub_1A9106FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Resource_Watchers_GET(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v13[0] = a4;
  v13[1] = a5;
  v7 = xpc_null_create();
  ctu::llvm::StringRef::operator std::string(v13, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v16, (a1 + 16), __p);
  v8 = v16;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == *(a1 + 16) + 32 * *(a1 + 24))
  {
    v10 = xpc_array_create(0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x1AC581B70](v10) == MEMORY[0x1E69E9E50])
      {
        xpc_retain(v10);
        v9 = v10;
      }

      else
      {
        v9 = xpc_null_create();
      }
    }

    else
    {
      v9 = xpc_null_create();
      v10 = 0;
    }

    xpc_release(v10);
    v11 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v11);
  }

  else
  {
    ctu::rest::WatchableRestResourceHelper::getWatcherNames(*(v8 + 24), __p);
    v9 = __p[0];
    __p[0] = xpc_null_create();
    xpc_release(v7);
    xpc_release(__p[0]);
  }

  __p[0] = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, __p);
  xpc_release(__p[0]);
  xpc_release(v9);
  return 1;
}

uint64_t ctu::PropertyRestResource::handleRestMessage_POP(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v6;
  v11 = v6;
  v7 = *(a3 + 1);
  v9[0] = *a3;
  v9[1] = v7;
  if (v10 <= 9)
  {
    result = 1;
    if (((1 << v10) & 0x32C) != 0)
    {
      return result;
    }

    if (v10 == 4)
    {
      ctu::PropertyRestResource::handleMessage_Meta_Watched_POP(this, a2);
      return 1;
    }

    if (v10 == 7)
    {
      ctu::PropertyRestResource::handleMessage_Resource_POP(this, a2, a3, *(&v10 + 1), v11);
      return 1;
    }
  }

  if (v10 == 1)
  {
    ctu::PropertyRestResource::handleMessage_Root_POP(this, a2);
    return 1;
  }

  return 0;
}

uint64_t ctu::PropertyRestResource::handleMessage_Root_POP(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  (**a2)(&v4, a2);
  ctu::rest::WatchableRestResourceHelper::removeWatcher(this + 5, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

void sub_1A9107330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::PropertyRestResource::handleMessage_Meta_Watched_POP(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2)
{
  (**a2)(&v4, a2);
  ctu::rest::WatchableRestResourceHelper::removeWatcher(this + 8, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

void sub_1A91073B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::PropertyRestResource::handleMessage_Resource_POP(uint64_t a1, ctu::RestResourceContext *a2, const ctu::PathView *a3, const void *a4, const void *a5)
{
  v13[0] = a4;
  v13[1] = a5;
  ctu::llvm::StringRef::operator std::string(v13, &__p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v17, (a1 + 16), &__p);
  v8 = v17;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v8 != *(a1 + 16) + 32 * *(a1 + 24))
  {
    v9 = *(v8 + 24);
    v10 = v9[1];
    (**a2)(&__p, a2);
    v11 = ctu::rest::WatchableRestResourceHelper::removeWatcher(v9, &__p);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v11 && (v10 != 0) != (*(*(v8 + 24) + 8) != 0))
    {
      ctu::PropertyRestResource::sendWatchedResourcesNotification(a1, a2, a3);
    }
  }

  return 1;
}

void sub_1A91074DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::PropertyRestResource::handleRestMessage_PUSH(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v6;
  v14 = v6;
  v7 = *(a3 + 1);
  v11 = *a3;
  v12 = v7;
  if (v13 <= 9)
  {
    result = 1;
    if (((1 << v13) & 0x32C) != 0)
    {
      return result;
    }

    if (v13 == 4)
    {
      v10 = *(a3 + 1);
      v11 = *a3;
      v12 = v10;
      ctu::PropertyRestResource::handleMessage_Meta_Watched_PUSH(this, a2, &v11);
      return 1;
    }

    if (v13 == 7)
    {
      ctu::PropertyRestResource::handleMessage_Resource_PUSH(this, a2, a3, *(&v13 + 1), v14);
      return 1;
    }
  }

  if (v13 == 1)
  {
    v9 = *(a3 + 1);
    v11 = *a3;
    v12 = v9;
    ctu::PropertyRestResource::handleMessage_Root_PUSH(this, a2, &v11);
    return 1;
  }

  return 0;
}

uint64_t ctu::PropertyRestResource::handleMessage_Root_PUSH(uint64_t *a1, uint64_t a2, const void **a3)
{
  (**a2)(&v22, a2);
  if (v22)
  {
    v20 = v22;
    v21 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[0] = 0xAAAAAAAAAAAAAAAALL;
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(a1 + 5, &v20, __p);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    ctu::PathView::advance(a3, 1);
    v6 = v22;
    v7 = (v22 + 8);
    if (*(v22 + 31) < 0)
    {
      v7 = *v7;
    }

    v19 = xpc_string_create(v7);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    if (a3[3])
    {
      v8 = *a3;
      v9 = (a3[2] - *a3);
      v10 = v9 - 1;
      if (v9 > 1)
      {
        v9 = a3[1];
        if (v10 < v9)
        {
          v9 = v10;
        }
      }

      else if (v9 >= a3[1])
      {
        v9 = a3[1];
      }
    }

    else
    {
      v8 = *a3;
      v9 = a3[1];
    }

    v15[0] = v8;
    v15[1] = v9;
    ctu::llvm::StringRef::operator std::string(v15, __p);
    if (v17 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v18 = xpc_string_create(v11);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    ctu::PropertyRestResource::getResourceArray(a1, &object);
    v14 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v14 = xpc_null_create();
    }

    (*(*a2 + 48))(a2, v6, &v19, &v18, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(object);
    xpc_release(v18);
    v18 = 0;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v19);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return 1;
}

void sub_1A91077FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t a20, xpc_object_t a21)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(a21);
  v23 = *(v21 - 40);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Meta_Watched_PUSH(uint64_t *a1, uint64_t a2, const void **a3)
{
  (**a2)(&v22, a2);
  if (v22)
  {
    v20 = v22;
    v21 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[0] = 0xAAAAAAAAAAAAAAAALL;
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(a1 + 8, &v20, __p);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    ctu::PathView::advance(a3, 2);
    object = 0xAAAAAAAAAAAAAAAALL;
    ctu::PropertyRestResource::getWatchedResourceArray(a1, &object);
    v6 = v22;
    v7 = (v22 + 8);
    if (*(v22 + 31) < 0)
    {
      v7 = *v7;
    }

    v18 = xpc_string_create(v7);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    if (a3[3])
    {
      v8 = *a3;
      v9 = (a3[2] - *a3);
      v10 = v9 - 1;
      if (v9 > 1)
      {
        v9 = a3[1];
        if (v10 < v9)
        {
          v9 = v10;
        }
      }

      else if (v9 >= a3[1])
      {
        v9 = a3[1];
      }
    }

    else
    {
      v8 = *a3;
      v9 = a3[1];
    }

    v14[0] = v8;
    v14[1] = v9;
    ctu::llvm::StringRef::operator std::string(v14, __p);
    if (v16 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v17 = xpc_string_create(v11);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    v13 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v13 = xpc_null_create();
    }

    (*(*a2 + 48))(a2, v6, &v18, &v17, &v13);
    xpc_release(v13);
    xpc_release(v17);
    v17 = 0;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v18);
    xpc_release(object);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return 1;
}

void sub_1A9107AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t a19, xpc_object_t a20, xpc_object_t a21)
{
  xpc_release(object);
  xpc_release(a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(a20);
  xpc_release(a21);
  v23 = *(v21 - 40);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::PropertyRestResource::handleMessage_Resource_PUSH(uint64_t a1, ctu::RestResourceContext *a2, uint64_t a3, _BYTE *a4, const void *a5)
{
  v30 = a4;
  v31 = a5;
  ctu::llvm::StringRef::operator std::string(&v30, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v29, (a1 + 16), __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  ctu::llvm::StringRef::operator std::string(&v30, __p);
  v8 = ctu::PropertyRestResource::createIfNotPresent(a1, __p, &v29);
  v9 = v8;
  if ((__p[23] & 0x80000000) == 0)
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  operator delete(*__p);
  if (v9)
  {
LABEL_5:
    v10 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v10;
    ctu::PathView::advance(__p, -2);
    ctu::PropertyRestResource::sendResourcesNotification(a1, a2, __p);
  }

LABEL_6:
  (**a2)(&v26, a2);
  if (v26)
  {
    v11 = v29;
    v12 = *(v29 + 3);
    v13 = *(v12 + 1);
    ctu::rest::WatchableRestResourceHelper::cleanupExpired(v12);
    v14 = *(v11 + 3);
    v24 = v26;
    v25 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(__p, 170, 16);
    boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(v14, &v24, __p);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if ((v13 != 0) != (*(*(v11 + 3) + 8) != 0))
    {
      ctu::PropertyRestResource::sendWatchedResourcesNotification(a1, a2, a3);
    }

    if (*(a1 + 8) == 1)
    {
      if (*(a3 + 24))
      {
        v15 = *a3;
        v16 = (*(a3 + 16) - *a3);
        v17 = v16 - 1;
        if (v16 > 1)
        {
          v16 = *(a3 + 8);
          if (v17 < v16)
          {
            v16 = v17;
          }
        }

        else if (v16 >= *(a3 + 8))
        {
          v16 = *(a3 + 8);
        }
      }

      else
      {
        v15 = *a3;
        v16 = *(a3 + 8);
      }

      v23[0] = v15;
      v23[1] = v16;
      memset(__p, 170, 24);
      ctu::llvm::StringRef::operator std::string(v23, __p);
      ctu::path_join_impl(__p, v30, v31);
      v18 = v26;
      v19 = (v26 + 8);
      if (*(v26 + 31) < 0)
      {
        v19 = *v19;
      }

      v23[0] = xpc_string_create(v19);
      if (!v23[0])
      {
        v23[0] = xpc_null_create();
      }

      if (__p[23] >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = *__p;
      }

      object = xpc_string_create(v20);
      if (!object)
      {
        object = xpc_null_create();
      }

      (*(*a2 + 48))(a2, v18, v23, &object, *(v11 + 3) + 24);
      xpc_release(object);
      xpc_release(v23[0]);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  return 1;
}

void sub_1A9107E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  xpc_release(object);
  xpc_release(a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void ctu::PropertyRestResource::getResourceArray(ctu::PropertyRestResource *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 3);
  if (v7)
  {
    v8 = *(this + 2);
    v9 = 32 * v7;
    do
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v12 = xpc_string_create(p_p);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_array_append_value(*a2, v12);
      xpc_release(v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 2;
      v9 -= 32;
    }

    while (v9);
  }
}

uint64_t ctu::PropertyRestResource::handleDroppedConnection(void *a1, ctu::RestResourceContext *a2, _OWORD *a3, void *a4)
{
  ctu::rest::WatchableRestResourceHelper::removeWatcher(a1 + 5, a4);
  ctu::rest::WatchableRestResourceHelper::removeWatcher(a1 + 8, a4);
  v8 = a3[1];
  v16[0] = *a3;
  v16[1] = v8;
  result = ctu::PathView::advance(v16, 1);
  v10 = a1[3];
  if (v10)
  {
    v11 = a1[2];
    v12 = 32 * v10;
    do
    {
      v13 = *(v11 + 23);
      if (v13 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = *v11;
      }

      if (v13 >= 0)
      {
        v15 = *(v11 + 23);
      }

      else
      {
        v15 = v11[1];
      }

      result = ctu::PropertyRestResource::handleMessage_Resource_POP(a1, a2, v16, v14, v15);
      v11 += 4;
      v12 -= 32;
    }

    while (v12);
  }

  return result;
}

void ctu::PropertyRestResource::getWatchedResourceArray(ctu::PropertyRestResource *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 3);
  if (v7)
  {
    v8 = *(this + 2);
    v9 = v8 + 32 * v7;
    do
    {
      v10 = *(v8 + 24);
      v11 = v10[1];
      if (v11)
      {
        v12 = *v10;
        v13 = 16 * v11;
        v14 = v12 + 8;
        while (!*v14 || *(*v14 + 8) == -1)
        {
          v14 += 16;
          v13 -= 16;
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        v15 = v8;
        if (*(v8 + 23) < 0)
        {
          v15 = *v8;
        }

        v16 = xpc_string_create(v15);
        if (!v16)
        {
          v16 = xpc_null_create();
        }

        xpc_array_append_value(*a2, v16);
        xpc_release(v16);
      }

LABEL_22:
      v8 += 32;
    }

    while (v8 != v9);
  }
}

void sub_1A910821C(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc::array::~array(v1);
  _Unwind_Resume(a1);
}

void ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 9))
  {
    if (*(a3 + 3))
    {
      v5 = *a3;
      v6 = (*(a3 + 2) - *a3);
      v7 = v6 - 1;
      if (v6 > 1)
      {
        v6 = *(a3 + 1);
        if (v7 < v6)
        {
          v6 = v7;
        }
      }

      else if (v6 >= *(a3 + 1))
      {
        v6 = *(a3 + 1);
      }
    }

    else
    {
      v5 = *a3;
      v6 = *(a3 + 1);
    }

    object[0] = v5;
    object[1] = v6;
    memset(&__p, 170, sizeof(__p));
    ctu::llvm::StringRef::operator std::string(object, &__p);
    ctu::path_join_impl(&__p, "_", 1);
    ctu::path_join_impl(&__p, "watched", 7);
    object[0] = 0xAAAAAAAAAAAAAAAALL;
    ctu::PropertyRestResource::getWatchedResourceArray(this, object);
    v13 = 0;
    v8 = operator new(0x20uLL);
    *v8 = &unk_1F1CB9110;
    v8[1] = a2;
    v8[2] = &__p;
    v8[3] = object;
    v13 = v8;
    ctu::rest::WatchableRestResourceHelper::map(this + 8, v12);
    std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](v12);
    xpc_release(object[0]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A910839C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::PropertyRestResource::sendResourcesNotification(ctu::PropertyRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 6))
  {
    memset(__p, 170, sizeof(__p));
    if (*(a3 + 3))
    {
      v5 = *a3;
      v6 = (*(a3 + 2) - *a3);
      v7 = v6 - 1;
      if (v6 > 1)
      {
        v6 = *(a3 + 1);
        if (v7 < v6)
        {
          v6 = v7;
        }
      }

      else if (v6 >= *(a3 + 1))
      {
        v6 = *(a3 + 1);
      }
    }

    else
    {
      v5 = *a3;
      v6 = *(a3 + 1);
    }

    object[0] = v5;
    object[1] = v6;
    ctu::llvm::StringRef::operator std::string(object, __p);
    object[0] = 0xAAAAAAAAAAAAAAAALL;
    ctu::PropertyRestResource::getResourceArray(this, object);
    v13 = 0;
    v8 = operator new(0x20uLL);
    *v8 = &unk_1F1CB9090;
    v8[1] = a2;
    v8[2] = __p;
    v8[3] = object;
    v13 = v8;
    ctu::rest::WatchableRestResourceHelper::map(this + 5, v12);
    std::__function::__value_func<void ()(ctu::RestResourceConnection const&)>::~__value_func[abi:ne200100](v12);
    xpc_release(object[0]);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A910852C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<ctu::PropertyRestResourceState>::reset[abi:ne200100](void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(v3);

    operator delete(v4);
  }
}

__n128 std::__function::__func<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0,std::allocator<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_1F1CB9010;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0,std::allocator<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1CB9010;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0,std::allocator<ctu::PropertyRestResource::handleMessage_Resource_SET(ctu::RestResourceContext &,ctu::PathView const&,ctu::llvm::StringRef,ctu::llvm::StringRef)::$_0>,void ()(ctu::RestResourceConnection const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_1F1CB9090;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1CB9090;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 31) >= 0)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v10 = xpc_string_create(v5);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v6 = *(a1 + 16);
  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  v9 = xpc_string_create(v6);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v7 = **(a1 + 24);
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v4 + 48))(v4, a2, &v10, &v9, &object);
  xpc_release(object);
  xpc_release(v9);
  xpc_release(v10);
}

void sub_1A9108894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_1F1CB9110;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1CB9110;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 31) >= 0)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v10 = xpc_string_create(v5);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v6 = *(a1 + 16);
  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  v9 = xpc_string_create(v6);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v7 = **(a1 + 24);
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v4 + 48))(v4, a2, &v10, &v9, &object);
  xpc_release(object);
  xpc_release(v9);
  xpc_release(v10);
}

void sub_1A9108AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0,std::allocator<ctu::PropertyRestResource::sendWatchedResourcesNotification(ctu::RestResourceContext &,ctu::PathView const&)::$_0>,void ()(ctu::RestResourceConnection const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 2);
  v5 = 0x3FFFFFFFFFFFFFFLL;
  v6 = *(a2 + 1) + 1;
  if (0x3FFFFFFFFFFFFFFLL - v4 < v6 - v4)
  {
    goto LABEL_27;
  }

  v7 = v4 >> 61;
  v8 = 8 * v4;
  if (v7 > 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v8 / 5;
  if (v7)
  {
    v10 = v9;
  }

  if (v10 < 0x3FFFFFFFFFFFFFFLL)
  {
    v5 = v10;
  }

  v11 = v6 <= v5 ? v5 : *(a2 + 1) + 1;
  if (v6 >> 58)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(32 * v11);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 32 * *(a2 + 1);
  v21 = v17;
  if (*a2 != a3)
  {
    v22 = *a2;
    v21 = v17;
    do
    {
      v23 = *v22;
      *(v21 + 2) = *(v22 + 2);
      *v21 = v23;
      *v22 = 0;
      *(v22 + 1) = 0;
      v24 = *(v22 + 3);
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v21 + 3) = v24;
      v22 += 32;
      v21 += 32;
    }

    while (v22 != a3);
  }

  v25 = *a4;
  *(v21 + 2) = *(a4 + 2);
  *v21 = v25;
  *a4 = 0;
  *(a4 + 1) = 0;
  v26 = *(a4 + 3);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(v21 + 3) = v26;
  if (v20 != a3)
  {
    v27 = v21 + 56;
    v28 = a3;
    do
    {
      v29 = *v28;
      *(v27 - 1) = *(v28 + 2);
      *(v27 - 3) = v29;
      *v28 = 0;
      *(v28 + 1) = 0;
      v30 = *(v28 + 3);
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      *v27 = v30;
      v27 += 4;
      v28 += 2;
    }

    while (v28 != v20);
  }

  if (v19)
  {
    v31 = *(a2 + 1);
    if (v31)
    {
      v32 = (v19 + 24);
      do
      {
        std::unique_ptr<ctu::PropertyRestResourceState>::reset[abi:ne200100](v32, 0);
        if (*(v32 - 1) < 0)
        {
          operator delete(*(v32 - 3));
        }

        v32 += 4;
        --v31;
      }

      while (v31);
    }

    operator delete(*a2);
  }

  v33 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v33;
  *(a2 + 2) = v11;
  *a1 = &v18[a3 - v16];
}

uint64_t boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  std::unique_ptr<ctu::PropertyRestResourceState>::reset[abi:ne200100]((a1 + 24), v5);
  return a1;
}

uint64_t *boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::PropertyRestResourceState>>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  std::unique_ptr<ctu::PropertyRestResourceState>::reset[abi:ne200100]((*a1 + 24), 0);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  return a1;
}

dispatch_object_t *ctu::concurrency::PriorityQueue::PriorityQueue(dispatch_object_t *a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  memset(__p, 170, sizeof(__p));
  std::string::basic_string[abi:ne200100](__p, v4 + 7);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".normal");
  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = dispatch_queue_create(v7, 0);
  *a1 = v8;
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_51:
    __TUAssertTrigger("fNormalQueue");
  }

  operator delete(__p[0]);
  if (!*a1)
  {
    goto LABEL_51;
  }

LABEL_17:
  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  memset(__p, 170, sizeof(__p));
  std::string::basic_string[abi:ne200100](__p, v9 + 8);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v9)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, ".highest");
  if (SHIBYTE(__p[2]) >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = dispatch_queue_create(v12, 0);
  a1[1] = v13;
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_53:
    __TUAssertTrigger("fHighestQueue");
  }

  operator delete(__p[0]);
  if (!a1[1])
  {
    goto LABEL_53;
  }

LABEL_33:
  if (*(a2 + 23) >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  memset(__p, 170, sizeof(__p));
  std::string::basic_string[abi:ne200100](__p, v14 + 5);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v14)
  {
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, ".work");
  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = dispatch_queue_create(v17, 0);
  a1[2] = v18;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v18 = a1[2];
  }

  dispatch_set_target_queue(*a1, v18);
  dispatch_set_target_queue(a1[1], a1[2]);
  return a1;
}

uint64_t ctu::concurrency::PriorityQueue::PriorityQueue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  dispatch_retain(v3);
  dispatch_retain(*(a1 + 8));
  dispatch_retain(*a1);
  return a1;
}

void ctu::concurrency::PriorityQueue::~PriorityQueue(dispatch_object_t *this)
{
  dispatch_release(this[2]);
  dispatch_release(this[1]);
  dispatch_release(*this);
}

void ctu::concurrency::PriorityQueue::addBlock(NSObject **a1, void *a2, int a3)
{
  if (a3 == 1)
  {
    ctu::concurrency::PriorityQueue::addHighestPriorityBlock(a1, a2);
  }

  else
  {
    dispatch_async(*a1, a2);
  }
}

void ctu::concurrency::PriorityQueue::addHighestPriorityBlock(NSObject **a1, const void *a2)
{
  v4 = *a1;
  dispatch_retain(*a1);
  dispatch_suspend(v4);
  v5 = _Block_copy(a2);
  v6 = a1[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = ___ZNK3ctu11concurrency13PriorityQueue23addHighestPriorityBlockEU13block_pointerFvvE_block_invoke;
  v7[3] = &__block_descriptor_tmp_12;
  v7[4] = v5;
  v7[5] = v4;
  dispatch_async(v6, v7);
}

void ctu::concurrency::PriorityQueue::addBlockSync(dispatch_object_t *a1, void *a2, int a3)
{
  if (a3 == 1)
  {
    ctu::concurrency::PriorityQueue::addHighestPriorityBlockSync(a1, a2);
  }

  else
  {
    dispatch_sync(*a1, a2);
  }
}

void ctu::concurrency::PriorityQueue::addHighestPriorityBlockSync(dispatch_object_t *a1, void *a2)
{
  dispatch_suspend(*a1);
  dispatch_sync(a1[1], a2);
  v4 = *a1;

  dispatch_resume(v4);
}

void ctu::concurrency::PriorityQueue::addBlock(NSObject **a1, dispatch_group_t group, void *a3, int a4)
{
  if (a4 == 1)
  {
    ctu::concurrency::PriorityQueue::addHighestPriorityBlock(a1, group, a3);
  }

  else
  {
    dispatch_group_async(group, *a1, a3);
  }
}

void ctu::concurrency::PriorityQueue::addHighestPriorityBlock(NSObject **a1, NSObject *a2, const void *a3)
{
  v6 = *a1;
  dispatch_retain(*a1);
  dispatch_suspend(v6);
  v7 = _Block_copy(a3);
  v8 = a1[1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = ___ZNK3ctu11concurrency13PriorityQueue23addHighestPriorityBlockEP16dispatch_group_sU13block_pointerFvvE_block_invoke;
  v9[3] = &__block_descriptor_tmp_9_1;
  v9[4] = v7;
  v9[5] = v6;
  dispatch_group_async(a2, v8, v9);
}

void ctu::concurrency::PriorityQueue::notifyOn(NSObject **a1, dispatch_group_t group, void *aBlock, int a4)
{
  if (a4 == 1)
  {
    v6 = _Block_copy(aBlock);
    global_queue = dispatch_get_global_queue(2, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = ___ZNK3ctu11concurrency13PriorityQueue8notifyOnEP16dispatch_group_sU13block_pointerFvvENS1_8PriorityE_block_invoke;
    v9[3] = &__block_descriptor_tmp_16;
    v9[4] = v6;
    v9[5] = a1;
    dispatch_group_notify(group, global_queue, v9);
  }

  else
  {
    v8 = *a1;

    dispatch_group_notify(group, v8, aBlock);
  }
}

void ___ZNK3ctu11concurrency13PriorityQueue8notifyOnEP16dispatch_group_sU13block_pointerFvvENS1_8PriorityE_block_invoke(uint64_t a1)
{
  ctu::concurrency::PriorityQueue::addHighestPriorityBlock(*(a1 + 40), *(a1 + 32));
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void ___ZNK3ctu11concurrency13PriorityQueue23addHighestPriorityBlockEP16dispatch_group_sU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_resume(*(a1 + 40));
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void ___ZNK3ctu11concurrency13PriorityQueue23addHighestPriorityBlockEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_resume(*(a1 + 40));
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void **ctu::XpcServerHelper::XpcServerHelper(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  return a1;
}

void ctu::XpcServerHelper::~XpcServerHelper(xpc_connection_t *this)
{
  v2 = xpc_null_create();
  v3 = v2;
  ctu::XpcServerHelper::setListener(this, &v3);
  xpc_release(v2);
  xpc_release(*this);
  *this = 0;
}

void ctu::XpcServerHelper::setListener(xpc_connection_t *a1, xpc_object_t *a2)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E68])
  {
    xpc_connection_cancel(*a1);
  }

  v4 = *a2;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = *a1;
  *a1 = v4;
  xpc_release(v5);
}

void ctu::XpcServerHelper::flush(_xpc_connection_s **this, const group *a2)
{
  if (MEMORY[0x1AC581B70](*this) == MEMORY[0x1E69E9E68])
  {
    gr_name = a2->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v5 = *this;
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 1174405120;
    barrier[2] = ___ZNK3ctu15XpcServerHelper5flushERKN8dispatch5groupE_block_invoke;
    barrier[3] = &__block_descriptor_tmp_17;
    group = gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(group);
    }

    xpc_connection_send_barrier(v5, barrier);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (gr_name)
    {
      dispatch_group_leave(gr_name);
      dispatch_release(gr_name);
    }
  }
}

void sub_1A91096C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void _rest_api_misuse(const char *a1)
{
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v1;
  v11 = v1;
  v8 = v1;
  v9 = v1;
  v6 = v1;
  v7 = v1;
  v4 = v1;
  v5 = v1;
  *__str = v1;
  v3 = v1;
  snprintf(__str, 0xA0uLL, "REST API Misuse: %s", a1);
  qword_1EB382730 = __str;
  abort();
}

void MockTimer::~MockTimer(std::__shared_weak_count **this)
{
  *this = &unk_1F1CB9190;
  MockTimer::cancel(this);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  MockTimer::~MockTimer(this);

  operator delete(v1);
}

void MockTimer::cancel(MockTimer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 3);
      if (v5)
      {
        v6 = *(this + 2);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(this + 1);
            if (v9)
            {
              v10[0] = v5;
              v10[1] = v4;
              atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
              MockTimerService::cancelTimer(v9, v10);
              std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void MockTimerService::cancelTimer(void *a1, uint64_t *a2)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZNK16MockTimerService11cancelTimerENSt3__110shared_ptrIvEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_12_0;
  v4 = *a2;
  v3 = a2[1];
  v10[4] = a1;
  v10[5] = v4;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = a1[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_40_0;
  block[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v10;
  dispatch_async(v9, block);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void MockTimerServiceState::fireTimers(MockTimerServiceState *this)
{
  v1 = *(this + 4);
  if (v1 != *(this + 5))
  {
    do
    {
      v3 = *v1;
      if (*(*v1 + 4) > *(this + 1))
      {
        break;
      }

      v4 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A90E3000, v4, OS_LOG_TYPE_DEFAULT, " * timer fired", buf, 2u);
        v3 = *v1;
      }

      std::vector<std::string>::push_back[abi:ne200100](this + 56, (v3 + 8));
      v5 = *(v3 + 9);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v5 + 48))(v5);
      v6 = *(v3 + 5);
      if (v6)
      {
        *(v3 + 4) += v6;
      }

      else
      {
        *v3 = 1;
      }

      v7 = **v1;
      v8 = *(this + 4);
      v9 = *(this + 5);
      *buf = MockTimerServiceState::ScheduledThing::earliest_timer_at_front;
      v10 = (v9 - v8) >> 4;
      if (v10 >= 2)
      {
        v30 = v7;
        v11 = 0;
        v29 = *v8;
        v31 = v8[1];
        v12 = v8;
        *v8 = 0;
        v8[1] = 0;
        do
        {
          v13 = &v12[2 * v11 + 2];
          v14 = 2 * v11;
          v11 = (2 * v11) | 1;
          v15 = v14 + 2;
          if (v14 + 2 < v10)
          {
            v16 = (*buf)(v13, v13 + 16);
            v17 = v16 ? 16 : 0;
            v13 += v17;
            if (v16)
            {
              v11 = v15;
            }
          }

          v18 = *v13;
          *v13 = 0;
          *(v13 + 8) = 0;
          v19 = v12[1];
          *v12 = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v12 = v13;
        }

        while (v11 <= ((v10 - 2) >> 1));
        if (v9 - 16 == v13)
        {
          v23 = *(v13 + 8);
          *v13 = v29;
          *(v13 + 8) = v31;
          v7 = v30;
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }
        }

        else
        {
          v20 = *(v9 - 16);
          *(v9 - 16) = 0;
          *(v9 - 8) = 0;
          v21 = *(v13 + 8);
          *v13 = v20;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v22 = *(v9 - 8);
          *(v9 - 16) = v29;
          *(v9 - 8) = v31;
          v7 = v30;
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<MockTimerServiceState::ScheduledThing> const&,std::shared_ptr<MockTimerServiceState::ScheduledThing> const&),std::__wrap_iter<std::shared_ptr<MockTimerServiceState::ScheduledThing>*>>(v8, v13 + 16, buf, (v13 + 16 - v8) >> 4);
        }
      }

      if (v7)
      {
        v24 = *(this + 5);
        v25 = *(v24 - 8);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        v26 = (v24 - 16);
        *(this + 5) = v24 - 16;
      }

      else
      {
        v27 = *(this + 4);
        v28 = *(this + 5);
        *buf = MockTimerServiceState::ScheduledThing::earliest_timer_at_front;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<MockTimerServiceState::ScheduledThing> const&,std::shared_ptr<MockTimerServiceState::ScheduledThing> const&),std::__wrap_iter<std::shared_ptr<MockTimerServiceState::ScheduledThing>*>>(v27, v28, buf, (v28 - v27) >> 4);
        v26 = *(this + 5);
      }

      v1 = *(this + 4);
    }

    while (v1 != v26);
  }
}

void sub_1A9109C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void MockTimerServiceState::insert(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    _os_log_impl(&dword_1A90E3000, v4, OS_LOG_TYPE_DEFAULT, " + created timer", &v21, 2u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v6 >= v5)
  {
    v8 = *(a1 + 32);
    v9 = (v6 - v8) >> 4;
    if ((v9 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(16 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v9];
    v15 = &v13[16 * v12];
    v16 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40) - v17;
    v19 = &v14[-v18];
    *v14 = v16;
    v7 = (v14 + 16);
    memcpy(v19, v17, v18);
    *(a1 + 32) = v19;
    *(a1 + 40) = v7;
    *(a1 + 48) = v15;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  *(a1 + 40) = v7;
  v20 = *(a1 + 32);
  v22 = MockTimerServiceState::ScheduledThing::earliest_timer_at_front;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<MockTimerServiceState::ScheduledThing> const&,std::shared_ptr<MockTimerServiceState::ScheduledThing> const&),std::__wrap_iter<std::shared_ptr<MockTimerServiceState::ScheduledThing>*>>(v20, v7, &v22, (v7 - v20) >> 4);
  MockTimerServiceState::fireTimers(a1);
}

void MockTimerServiceState::scheduleAfter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8) + 1000 * a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<MockTimerServiceState::ScheduledThing,std::allocator<MockTimerServiceState::ScheduledThing>,std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>> &,std::function<void ()(void)>,0>(&v8, a2, &v9, a5);
  v6 = *(&v8 + 1);
  v7 = v8;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  MockTimerServiceState::insert(a1, &v7);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1A9109EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void MockTimerServiceState::createOneShotTimer(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2[1] + 1000 * a5;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v8;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<MockTimerServiceState::ScheduledThing,std::allocator<MockTimerServiceState::ScheduledThing>,std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>> &,std::function<void ()(void)>,0>(&v15, a3, &v16, a6);
  v9 = v15;
  v14 = v15;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  MockTimerServiceState::insert(a2, &v14);
  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }

  v10 = operator new(0x28uLL);
  v11 = v10;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a2[2];
  v12 = a2[3];
  *v10 = &unk_1F1CB9190;
  *(v10 + 1) = v13;
  *(v10 + 2) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  *(v10 + 24) = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 16), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  *a1 = v11;
}

void sub_1A9109FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void MockTimerServiceState::createPeriodicTimer(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v10 = 1000 * a5;
  v11 = a2[1] + 1000 * a5;
  v12 = operator new(0x68uLL);
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = &unk_1F1CB93B0;
  v13 = *a3;
  v23[0] = a3[1];
  *(v23 + 7) = *(a3 + 15);
  v14 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v22, a6);
  v12[24] = 0;
  v15 = v23[0];
  *(v12 + 4) = v13;
  *(v12 + 5) = v15;
  *(v12 + 47) = *(v23 + 7);
  v12[55] = v14;
  *(v12 + 7) = v11;
  *(v12 + 8) = v10;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((v12 + 72), v22);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v22);
  *&v21 = v12 + 24;
  *(&v21 + 1) = v12;
  atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  MockTimerServiceState::insert(a2, &v21);
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  v16 = operator new(0x28uLL);
  v17 = v16;
  atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  v19 = a2[2];
  v18 = a2[3];
  *v16 = &unk_1F1CB9190;
  v16[1] = v19;
  v16[2] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  v16[3] = v12 + 24;
  v16[4] = v12;
  atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  *a1 = v17;
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v20 = *MEMORY[0x1E69E9840];
}

void MockTimerService::create(void *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x108uLL);
  v5 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  MockTimerService::MockTimerService(v4);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<MockTimerService>::shared_ptr[abi:ne200100]<MockTimerService,std::shared_ptr<MockTimerService> ctu::SharedSynchronizable<MockTimerService>::make_shared_ptr<MockTimerService>(MockTimerService*)::{lambda(MockTimerService*)#1},0>(a2, v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1174405120;
  v13[2] = ___ZN16MockTimerService6createENSt3__110shared_ptrIN3ctu9LogServerEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_18;
  v7 = *a2;
  v6 = a2[1];
  v13[4] = *a2;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v7[2];
  if (!v8 || (v9 = v7[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = v7[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_40_0;
  block[5] = v9;
  v16 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v12, block);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1A910A368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c44_ZTSNSt3__110shared_ptrI16MockTimerServiceEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c44_ZTSNSt3__110shared_ptrI16MockTimerServiceEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MockTimerService::create(void *a1@<X8>)
{
  v3 = operator new(0x108uLL);
  MockTimerService::MockTimerService(v3);
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<MockTimerService>::shared_ptr[abi:ne200100]<MockTimerService,std::shared_ptr<MockTimerService> ctu::SharedSynchronizable<MockTimerService>::make_shared_ptr<MockTimerService>(MockTimerService*)::{lambda(MockTimerService*)#1},0>(a1, v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1174405120;
  v11[2] = ___ZN16MockTimerService6createEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_3_0;
  v5 = *a1;
  v4 = a1[1];
  v11[4] = *a1;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v5[2];
  if (!v6 || (v7 = v5[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = v5[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_40_0;
  block[5] = v7;
  v14 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void MockTimerService::MockTimerService(MockTimerService *this)
{
  *this = &unk_1F1CB7378;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v3 = dispatch_queue_create("MockTimerService", v2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 4) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 4) = 0;
  }

  *(this + 5) = os_log_create("com.apple.telephony", "timer");
  *(this + 6) = 850045863;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *this = &unk_1F1CB91C0;
  *(this + 13) = 0;
  *(this + 14) = "createOneShotTimerImpl";
  *(this + 15) = this + 48;
  *(this + 16) = 1018212795;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = "createPeriodicTimerImpl";
  *(this + 24) = this + 48;
  *(this + 25) = 1018212795;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 32) = 0;
}

void MockTimerService::~MockTimerService(MockTimerService *this)
{
  *this = &unk_1F1CB91C0;
  std::unique_ptr<MockTimerServiceState>::reset[abi:ne200100](this + 32, 0);
  std::unique_ptr<ctu::MockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::reset[abi:ne200100](this + 31, 0);
  std::condition_variable::~condition_variable((this + 200));
  std::unique_ptr<ctu::MockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::reset[abi:ne200100](this + 22, 0);
  std::condition_variable::~condition_variable((this + 128));
  std::mutex::~mutex((this + 48));
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 5);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  MockTimerService::~MockTimerService(this);

  operator delete(v1);
}

void MockTimerService::init_sync(MockTimerService *this)
{
  v2 = operator new(0x50uLL);
  v3 = *(this + 2);
  if (!v3 || (v4 = *(this + 1), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef(v2, *(this + 5));
  v2[1] = 0;
  v2[2] = v4;
  v2[3] = v6;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 2) = 0u;
  std::unique_ptr<MockTimerServiceState>::reset[abi:ne200100](this + 32, v2);
  std::__shared_weak_count::__release_weak(v6);

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void std::unique_ptr<MockTimerServiceState>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v9 = (v2 + 56);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v2 + 40);
      v5 = *(v2 + 32);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v2 + 32);
      }

      *(v2 + 40) = v3;
      operator delete(v5);
    }

    v7 = *(v2 + 24);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(v2);

    operator delete(v8);
  }
}

void MockTimerService::advanceTime(void *a1, uint64_t a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN16MockTimerService11advanceTimeENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000EEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_8;
  v8[4] = a1;
  v8[5] = a2;
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = a1[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_40_0;
  block[5] = v4;
  v10 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v8;
  dispatch_async(v7, block);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void ___ZN16MockTimerService11advanceTimeENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000EEEEE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 256);
  v2 = 1000 * *(a1 + 40);
  v3 = *v1;
  if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
  {
    ctu::asChronoString(v2, __p);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136446210;
    v9 = v4;
    _os_log_impl(&dword_1A90E3000, v3, OS_LOG_TYPE_DEFAULT, " Time advancing by %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(v1 + 8) += v2;
  MockTimerServiceState::fireTimers(v1);
  v5 = *MEMORY[0x1E69E9840];
}

unint64_t MockTimerService::pendingTimersCount(MockTimerService *this)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK16MockTimerService18pendingTimersCountEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10;
  v4[4] = this;
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIU13block_pointerFmvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  v6[3] = &__block_descriptor_tmp_43;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFmvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_45;
    v12 = &v14;
    v13 = &v7;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFmvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_44;
    v12 = &v14;
    v13 = &v7;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    dispatch_sync(v1, &block);
  }

  return v14;
}

void MockTimerService::popTimersFired(MockTimerService *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIZNS1_14popTimersFiredEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v5[3] = &__block_descriptor_tmp_47;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_49;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_48;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void MockTimerService::flush(MockTimerService *this)
{
  v3 = &__block_literal_global_2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_50;
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

void ___ZNK16MockTimerService11cancelTimerENSt3__110shared_ptrIvEE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 256);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  if (v3 != v2)
  {
    while (*v3 != *(a1 + 40))
    {
      v3 += 16;
      if (v3 == v2)
      {
        v3 = *(v1 + 40);
        break;
      }
    }
  }

  if (v2 != v3)
  {
    if (v3 + 16 == v2)
    {
      v6 = v3;
    }

    else
    {
      do
      {
        v4 = *(v3 + 16);
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        v5 = *(v3 + 8);
        *v3 = v4;
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v6 = v3 + 16;
        v7 = v3 + 32;
        v3 += 16;
      }

      while (v7 != v2);
      v2 = *(v1 + 40);
    }

    while (v2 != v6)
    {
      v8 = *(v2 - 8);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v2 -= 16;
    }

    *(v1 + 40) = v6;
    v9 = *(v1 + 32);
    v10 = (v6 - v9) >> 4;
    v11 = v10 - 2;
    if (v10 >= 2)
    {
      v12 = v11 >> 1;
      v13 = v11 >> 1;
      do
      {
        v14 = v13;
        if (v12 >= v13)
        {
          v15 = (2 * v13) | 1;
          v16 = (v9 + 16 * v15);
          if (2 * v14 + 2 < v10)
          {
            v17 = *(*v16 + 32);
            v18 = *(v16[2] + 32);
            v16 += 2 * (v17 > v18);
            if (v17 > v18)
            {
              v15 = 2 * v14 + 2;
            }
          }

          v19 = (v9 + 16 * v14);
          v20 = *v19;
          if (*(*v16 + 32) <= *(*v19 + 32))
          {
            v21 = v19[1];
            *v19 = 0;
            v19[1] = 0;
            v22 = *v16;
            do
            {
              v23 = v19;
              v19 = v16;
              v24 = v16[1];
              *v19 = 0;
              v19[1] = 0;
              v25 = v23[1];
              *v23 = v22;
              v23[1] = v24;
              if (v25)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v25);
              }

              if (v12 < v15)
              {
                break;
              }

              v16 = (v9 + 16 * ((2 * v15) | 1));
              if (2 * v15 + 2 >= v10)
              {
                v15 = (2 * v15) | 1;
              }

              else
              {
                v26 = *(*v16 + 32);
                v27 = *(v16[2] + 32);
                v16 += 2 * (v26 > v27);
                v15 = v26 <= v27 ? (2 * v15) | 1 : 2 * v15 + 2;
              }

              v22 = *v16;
            }

            while (*(*v16 + 32) <= *(v20 + 32));
            v28 = v19[1];
            *v19 = v20;
            v19[1] = v21;
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }
          }
        }

        v13 = v14 - 1;
      }

      while (v14);
    }
  }
}

uint64_t __copy_helper_block_e8_40c27_ZTSNSt3__110shared_ptrIvEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c27_ZTSNSt3__110shared_ptrIvEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MockTimerService::scheduleAfterImpl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1174405120;
  v17[2] = ___ZN16MockTimerService17scheduleAfterImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEENS0_8functionIFvvEEE_block_invoke;
  v17[3] = &__block_descriptor_tmp_13;
  v17[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v19 = a3;
  v20 = a4;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v21, a5);
  v9 = a1[2];
  if (!v9 || (v10 = a1[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = a1[3];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1174405120;
  v15[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v15[3] = &__block_descriptor_tmp_40_0;
  v15[5] = v10;
  v16 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15[4] = v17;
  dispatch_async(v13, v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void ___ZN16MockTimerService17scheduleAfterImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEENS0_8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 256);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a1 + 80);
  MockTimerServiceState::scheduleAfter(v2, &__p, v3, v4, v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c27_ZTSNSt3__18functionIFvvEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  return std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 80, a2 + 80);
}

void sub_1A910B37C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c27_ZTSNSt3__18functionIFvvEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 80);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void MockTimerService::scheduleAfterImpl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1174405120;
  v18[2] = ___ZN16MockTimerService17scheduleAfterImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSG_5blockIU13block_pointerFvvEEE_block_invoke;
  v18[3] = &__block_descriptor_tmp_14;
  v18[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v20 = a3;
  v21 = a4;
  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *a6;
  if (*a6)
  {
    v12 = _Block_copy(v12);
  }

  aBlock = v12;
  v13 = a1[2];
  if (!v13 || (v14 = a1[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = a1[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_40_0;
  block[5] = v14;
  v25 = v16;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v18;
  dispatch_async(v17, block);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN16MockTimerService17scheduleAfterImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSG_5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 256);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v10 = *(a1 + 40);
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = 0;
  v11[0] = &unk_1F1CB9490;
  v11[1] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (v7)
  {
    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v8;
  v12 = v11;
  MockTimerServiceState::scheduleAfter(v2, &v10, v3, v4, v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  if (v7)
  {
    _Block_release(v7);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t _ZZZN16MockTimerService17scheduleAfterImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSG_5blockIU13block_pointerFvvEEEEUb_EN3__1D1Ev(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void *__copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c21_ZTSN8dispatch5queueE88c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  v5 = *(a2 + 80);
  *(a1 + 80) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c21_ZTSN8dispatch5queueE88c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void MockTimerService::createOneShotTimerImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1174405120;
  v22[2] = ___ZN16MockTimerService22createOneShotTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS0_8functionIFvvEEE_block_invoke;
  v22[3] = &__block_descriptor_tmp_18_1;
  v22[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v24 = a3;
  v25 = a4;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v26, a5);
  v13 = v22;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIU13block_pointerFNSt3__110unique_ptrINS_5TimerENS4_14default_deleteIS6_EEEEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
  v14[3] = &__block_descriptor_tmp_58;
  v14[4] = a1 + 8;
  v14[5] = &v13;
  v15 = v14;
  v11 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a6 = 0;
    block = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v19 = &__block_descriptor_tmp_60;
    v20 = a6;
    v21 = &v15;
    dispatch_async_and_wait(v11, &block);
  }

  else
  {
    *a6 = 0;
    block = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v19 = &__block_descriptor_tmp_59;
    v20 = a6;
    v21 = &v15;
    dispatch_sync(v11, &block);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ___ZN16MockTimerService22createOneShotTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS0_8functionIFvvEEE_block_invoke(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  std::mutex::lock(v5);
  if (!*(v4 + 176))
  {
    v6 = operator new(0x58uLL);
    v6[10] = 0;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::reset[abi:ne200100]((v4 + 176), v6);
  }

  std::condition_variable::notify_one((v4 + 128));
  ctu::IMockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>::call<std::string const&,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>(*(v4 + 176), (a1 + 40), (a1 + 64));
  std::mutex::unlock(v5);
  v7 = *(v4 + 256);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v12, a1 + 80);
  MockTimerServiceState::createOneShotTimer(a2, v7, &__p, v8, v9, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void MockTimerService::createOneShotTimerImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject **a5@<X5>, void **a6@<X6>, void *a7@<X8>)
{
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1174405120;
  v16[2] = ___ZN16MockTimerService22createOneShotTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_21_1;
  v16[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v18 = a3;
  v19 = a4;
  v13 = *a5;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a6;
  if (*a6)
  {
    v14 = _Block_copy(v14);
  }

  aBlock = v14;
  v22 = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIU13block_pointerFNSt3__110unique_ptrINS_5TimerENS4_14default_deleteIS6_EEEEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
  v23[3] = &__block_descriptor_tmp_58;
  v23[4] = a1 + 8;
  v23[5] = &v22;
  v24 = v23;
  v15 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a7 = 0;
    block = MEMORY[0x1E69E9820];
    v26 = 0x40000000;
    v27 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v28 = &__block_descriptor_tmp_60;
    v29 = a7;
    v30 = &v24;
    dispatch_async_and_wait(v15, &block);
  }

  else
  {
    *a7 = 0;
    block = MEMORY[0x1E69E9820];
    v26 = 0x40000000;
    v27 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v28 = &__block_descriptor_tmp_59;
    v29 = a7;
    v30 = &v24;
    dispatch_sync(v15, &block);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN16MockTimerService22createOneShotTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  std::mutex::lock(v5);
  if (!*(v4 + 176))
  {
    v6 = operator new(0x58uLL);
    v6[10] = 0;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::reset[abi:ne200100]((v4 + 176), v6);
  }

  std::condition_variable::notify_one((v4 + 128));
  ctu::IMockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>::call<std::string const&,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>(*(v4 + 176), (a1 + 40), (a1 + 64));
  std::mutex::unlock(v5);
  v7 = *(v4 + 256);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v15 = *(a1 + 40);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    v12 = _Block_copy(v11);
  }

  else
  {
    v12 = 0;
  }

  v17 = 0;
  v16[0] = &unk_1F1CB9520;
  v16[1] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  v16[2] = v13;
  v17 = v16;
  MockTimerServiceState::createOneShotTimer(a2, v7, &v15, v8, v9, v16);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16);
  if (v12)
  {
    _Block_release(v12);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x1E69E9840];
}