void sub_1E53048BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 88);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 72);
  _Unwind_Resume(a1);
}

void BasebandRestore::handleRTIClientImage(uint64_t a1@<X0>, uint64_t a2@<X1>, BasebandRestore *a3@<X8>)
{
  v200 = *MEMORY[0x1E69E9840];
  ACFULogging::getLogInstance(a1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v187 = "handleRTIClientImage";
  v188 = v6;
  v186 = "BasebandRestore";
  v7 = ACFULogging::handleMessage();
  v9 = *(a2 + 23);
  if (v9 < 0)
  {
    if (*(a2 + 8) == 4)
    {
      v12 = *a2;
      if (**a2 == 1836217966)
      {
        goto LABEL_31;
      }

      if (*v12 == 1953718882 || *v12 == 2036621922)
      {
        goto LABEL_37;
      }

      if (*v12 == 1818452578 || *v12 == 1668309602 || *v12 == 1987076706)
      {
        *a3 = 0;
        if (*v12 == 1818452578)
        {
          goto LABEL_114;
        }

        if (*v12 != 1668309602)
        {
          goto LABEL_111;
        }

        goto LABEL_116;
      }
    }

    if (*(a2 + 8) == 4 && **a2 == 1886544237)
    {
      goto LABEL_82;
    }

    if (*(a2 + 8) == 4)
    {
      v13 = *a2;
      goto LABEL_21;
    }

LABEL_22:
    ACFULogging::getLogInstance(v7);
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v187 = "handleRTIClientImage";
    v188 = v14;
    v186 = "BasebandRestore";
    ACFULogging::handleMessage();
    v15 = *MEMORY[0x1E69E9840];

    BasebandRestore::createZeroSizeContainer(a3);
    return;
  }

  if (v9 != 4)
  {
    goto LABEL_22;
  }

  v10 = *a2;
  if (*a2 <= 1886544236)
  {
    if (v10 != 1668309602 && v10 != 1818452578)
    {
      v13 = a2;
      if (v10 == 1836217966)
      {
LABEL_31:
        v16 = *(a1 + 496);
        if (v16)
        {
          v17 = ACFURTKitNVRMGenerator::copy(v16);
          v197.__r_.__value_.__r.__words[0] = v17;
          *a3 = 0xAAAAAAAAAAAAAAAALL;
          v19 = (ACFUDataContainer::create)(v17, v18);
          if (*a3)
          {
            ACFULogging::getLogInstance(v19);
            v187 = "handleRTIClientNVRAMFile";
            v188 = "nvrm";
            v186 = "BasebandRestore";
          }

          else
          {
            ACFULogging::getLogInstance(v19);
            v186 = "BasebandRestore";
            v187 = "handleRTIClientNVRAMFile";
          }

          ACFULogging::handleMessage();
          if (v17)
          {
            CFRelease(v17);
          }
        }

        else
        {
          ACFULogging::getLogInstance(0);
          v186 = "BasebandRestore";
          v187 = "handleRTIClientNVRAMFile";
          ACFULogging::handleMessage();
          *a3 = 0;
        }

        goto LABEL_385;
      }

LABEL_21:
      if (*v13 != 1954051171)
      {
        goto LABEL_22;
      }

      v50 = *(a1 + 536);
      *a3 = 0;
      if (v50)
      {
        v51 = ACFUDataContainer::create(&v197, v50, v8);
        *a3 = v197.__r_.__value_.__r.__words[0];
        ACFULogging::getLogInstance(v51);
        v187 = "handleRTICrashContextFile";
        v188 = "ctxt";
        v186 = "BasebandRestore";
        ACFULogging::handleMessage();
        goto LABEL_385;
      }

      ACFULogging::getLogInstance(0);
      v187 = "handleRTICrashContextFile";
      v188 = "ctxt";
      v186 = "BasebandRestore";
      ACFULogging::handleMessage();
      BasebandRestore::createZeroSizeContainer(&v197);
LABEL_121:
      *a3 = v197.__r_.__value_.__r.__words[0];
      goto LABEL_385;
    }

    *a3 = 0;
    if (v10 != 1668309602)
    {
LABEL_114:
      v7 = *(a1 + 512);
      if (!v7)
      {
        goto LABEL_117;
      }

      goto LABEL_115;
    }

LABEL_116:
    v7 = *(a1 + 520);
    if (!v7)
    {
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  if (v10 <= 1987076705)
  {
    if (v10 != 1886544237)
    {
      v11 = 1953718882;
      goto LABEL_36;
    }

LABEL_82:
    v195 = 0;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_84;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_84:
        if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
        {
          goto LABEL_381;
        }

        goto LABEL_85;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_381;
    }

LABEL_85:
    if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
    {
      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v43 = off_1ECFD4E60;
      if (!off_1ECFD4E60)
      {
        SharedData::create_default_global(&v197);
        v44 = *&v197.__r_.__value_.__l.__data_;
        *&v197.__r_.__value_.__l.__data_ = 0uLL;
        v45 = *(&off_1ECFD4E60 + 1);
        off_1ECFD4E60 = v44;
        if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v45->__on_zero_shared)(v45);
          std::__shared_weak_count::__release_weak(v45);
        }

        size = v197.__r_.__value_.__l.__size_;
        if (v197.__r_.__value_.__l.__size_ && !atomic_fetch_add((v197.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (size->__on_zero_shared)(size);
          std::__shared_weak_count::__release_weak(size);
        }

        v43 = off_1ECFD4E60;
      }

      v47 = *(&off_1ECFD4E60 + 1);
      v194.__r_.__value_.__r.__words[0] = v43;
      v194.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
      if (*(&off_1ECFD4E60 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v197.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
      *&v190[34] = 0;
      *&v190[36] = 0;
      *&v190[40] = 0x8000000000000028;
      *&v197.__r_.__value_.__r.__words[1] = xmmword_1E538EBC0;
      strcpy(v190, "Asset PT image sBaseband Mobile #");
      strcpy(v197.__r_.__value_.__l.__data_, "Baseband Mobile Asset PT image sent");
      SharedData::setPreference<BOOL>(v43, &v197, 0);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
      }

      memset(&v194, 170, sizeof(v194));
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(&v197, kBasebandMARadioPlatformFile, "marp.ftab");
      v48 = std::map<std::string,std::string>::map[abi:ne200100](&v194, &v197.__r_.__value_.__l.__data_, 1);
      if (v199 < 0)
      {
        operator delete(v198);
        if ((SHIBYTE(v197.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_103:
          v49 = v194.__r_.__value_.__l.__size_;
          if (!v194.__r_.__value_.__l.__size_)
          {
            goto LABEL_288;
          }

LABEL_170:
          v86 = *(a2 + 23);
          if (v86 >= 0)
          {
            v87 = a2;
          }

          else
          {
            v87 = *a2;
          }

          if (v86 >= 0)
          {
            v88 = *(a2 + 23);
          }

          else
          {
            v88 = *(a2 + 8);
          }

          v89 = &v194.__r_.__value_.__r.__words[1];
          while (1)
          {
            v90 = *(v49 + 55);
            if (v90 >= 0)
            {
              v91 = (v49 + 32);
            }

            else
            {
              v91 = *(v49 + 32);
            }

            if (v90 >= 0)
            {
              v92 = *(v49 + 55);
            }

            else
            {
              v92 = *(v49 + 40);
            }

            if (v88 >= v92)
            {
              v93 = v92;
            }

            else
            {
              v93 = v88;
            }

            v48 = memcmp(v91, v87, v93);
            if (v48)
            {
              if ((v48 & 0x80000000) != 0)
              {
                goto LABEL_177;
              }

LABEL_191:
              v89 = v49;
              v49 = *v49;
              if (!v49)
              {
LABEL_192:
                if (v89 != &v194.__r_.__value_.__r.__words[1])
                {
                  v96 = v89[1].__r_.__value_.__l.__size_;
                  p_size = &v89[1].__r_.__value_.__l.__size_;
                  v94 = v96;
                  v97 = *(p_size + 23);
                  if (v97 >= 0)
                  {
                    v98 = p_size;
                  }

                  else
                  {
                    v98 = v94;
                  }

                  if (v97 >= 0)
                  {
                    v99 = *(p_size + 23);
                  }

                  else
                  {
                    v99 = p_size[1];
                  }

                  if (v99 >= v88)
                  {
                    v100 = v88;
                  }

                  else
                  {
                    v100 = v99;
                  }

                  v48 = memcmp(v87, v98, v100);
                  if (v48)
                  {
                    if ((v48 & 0x80000000) == 0)
                    {
LABEL_204:
                      v101 = *(a1 + 128);
                      if (v101)
                      {
                        Value = CFDictionaryGetValue(v101, @"BypassMobileAssetRPDownload");
                        v103 = Value;
                        if (Value)
                        {
                          v104 = CFGetTypeID(Value);
                          if (v104 == CFBooleanGetTypeID())
                          {
                            v105 = CFBooleanGetValue(v103);
                            if (v105 == 1)
                            {
                              ACFULogging::getLogInstance(v105);
                              if (*(a2 + 23) >= 0)
                              {
                                v106 = a2;
                              }

                              else
                              {
                                v106 = *a2;
                              }

                              v187 = "handleRTIClientMAFile";
                              v188 = v106;
                              v186 = "BasebandRestore";
                              ACFULogging::handleMessage();
                              BasebandRestore::createZeroSizeContainer(a3);
                              goto LABEL_292;
                            }
                          }
                        }
                      }

                      v197.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
                      v197.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
                      v197.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
                      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      v111 = off_1ECFD4E60;
                      if (!off_1ECFD4E60)
                      {
                        SharedData::create_default_global(&__p);
                        v112 = *&__p.__pn_.__r_.__value_.__l.__data_;
                        *&__p.__pn_.__r_.__value_.__l.__data_ = 0uLL;
                        v113 = *(&off_1ECFD4E60 + 1);
                        off_1ECFD4E60 = v112;
                        if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v113->__on_zero_shared)(v113);
                          std::__shared_weak_count::__release_weak(v113);
                        }

                        v114 = __p.__pn_.__r_.__value_.__l.__size_;
                        if (__p.__pn_.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__pn_.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v114->__on_zero_shared)(v114);
                          std::__shared_weak_count::__release_weak(v114);
                        }

                        v111 = off_1ECFD4E60;
                      }

                      v115 = *(&off_1ECFD4E60 + 1);
                      pn.__r_.__value_.__r.__words[0] = v111;
                      pn.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
                      if (*(&off_1ECFD4E60 + 1))
                      {
                        atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
                      }

                      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      __p.__pn_.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
                      *&__p.__pn_.__r_.__value_.__r.__words[1] = xmmword_1E5390FF0;
                      strcpy(__p.__pn_.__r_.__value_.__l.__data_, "Baseband Mobile Asset PT image");
                      SharedData::getPreference<std::string>(v111, &__p);
                      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
                      }

                      if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v115->__on_zero_shared)(v115);
                        std::__shared_weak_count::__release_weak(v115);
                      }

                      TypeID = *(a1 + 128);
                      if (TypeID)
                      {
                        TypeID = CFDictionaryGetValue(TypeID, @"MobileAssetRPPath");
                        v117 = TypeID;
                        if (TypeID)
                        {
                          v118 = CFGetTypeID(TypeID);
                          TypeID = CFStringGetTypeID();
                          if (v118 == TypeID)
                          {
                            CStringPtr = CFStringGetCStringPtr(v117, 0x8000100u);
                            TypeID = std::string::__assign_external(&v197, CStringPtr);
                          }
                        }
                      }

                      v120 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
                      if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v120 = v197.__r_.__value_.__l.__size_;
                      }

                      if (v120)
                      {
                        ACFULogging::getLogInstance(TypeID);
                        v121 = &v197;
                        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v121 = v197.__r_.__value_.__r.__words[0];
                        }

                        v187 = "handleRTIClientMAFile";
                        v188 = v121;
                        v186 = "BasebandRestore";
                        ACFULogging::handleMessage();
                        memset(&__p, 170, sizeof(__p));
                        v122 = SHIBYTE(v197.__r_.__value_.__r.__words[2]);
                        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v123 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v123 = v197.__r_.__value_.__l.__size_;
                        }

                        v124 = v123 + 1;
                        if (v123 + 1 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        if (v124 < 0x17)
                        {
                          memset(&pn, 0, sizeof(pn));
                          v126 = &pn;
                          *(&pn.__r_.__value_.__s + 23) = v123 + 1;
                          if (v123)
                          {
                            goto LABEL_314;
                          }
                        }

                        else
                        {
                          if ((v124 | 7) == 0x17)
                          {
                            v125 = 25;
                          }

                          else
                          {
                            v125 = (v124 | 7) + 1;
                          }

                          v126 = operator new(v125);
                          pn.__r_.__value_.__l.__size_ = v123 + 1;
                          pn.__r_.__value_.__r.__words[2] = v125 | 0x8000000000000000;
                          pn.__r_.__value_.__r.__words[0] = v126;
LABEL_314:
                          if (v122 >= 0)
                          {
                            v151 = &v197;
                          }

                          else
                          {
                            v151 = v197.__r_.__value_.__r.__words[0];
                          }

                          memmove(v126, v151, v123);
                        }

                        *&v126[v123] = 47;
                        v152 = std::map<std::string,std::string>::at(v194.__r_.__value_.__l.__size_, a2);
                        v153 = *(v152 + 23);
                        if (v153 >= 0)
                        {
                          v154 = v152;
                        }

                        else
                        {
                          v154 = *v152;
                        }

                        if (v153 >= 0)
                        {
                          v155 = *(v152 + 23);
                        }

                        else
                        {
                          v155 = v152[1];
                        }

                        v156 = std::string::append(&pn, v154, v155);
                        v157 = v156->__r_.__value_.__r.__words[0];
                        v196.__pn_.__r_.__value_.__r.__words[0] = v156->__r_.__value_.__l.__size_;
                        *(v196.__pn_.__r_.__value_.__r.__words + 7) = *(&v156->__r_.__value_.__r.__words[1] + 7);
                        v158 = HIBYTE(v156->__r_.__value_.__r.__words[2]);
                        v156->__r_.__value_.__l.__size_ = 0;
                        v156->__r_.__value_.__r.__words[2] = 0;
                        v156->__r_.__value_.__r.__words[0] = 0;
                        __p.__pn_.__r_.__value_.__r.__words[0] = v157;
                        *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v196.__pn_.__r_.__value_.__r.__words + 7);
                        __p.__pn_.__r_.__value_.__l.__size_ = v196.__pn_.__r_.__value_.__r.__words[0];
                        *(&__p.__pn_.__r_.__value_.__s + 23) = v158;
                        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(pn.__r_.__value_.__l.__data_);
                        }

                        std::__fs::filesystem::path::lexically_normal(&v196, &__p);
                        if (SHIBYTE(v196.__pn_.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&pn, v196.__pn_.__r_.__value_.__l.__data_, v196.__pn_.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          pn = v196.__pn_;
                        }

                        v159 = ctu::fs::file_exists();
                        v160 = v159;
                        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(pn.__r_.__value_.__l.__data_);
                          if (SHIBYTE(v196.__pn_.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_355;
                          }

LABEL_331:
                          if (v160)
                          {
                            goto LABEL_332;
                          }

LABEL_356:
                          ACFULogging::getLogInstance(v159);
                          std::__fs::filesystem::path::lexically_normal(&pn, &__p);
                          if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            p_pn = &pn;
                          }

                          else
                          {
                            p_pn = pn.__r_.__value_.__r.__words[0];
                          }

                          if (*(a2 + 23) >= 0)
                          {
                            v178 = a2;
                          }

                          else
                          {
                            v178 = *a2;
                          }

                          v188 = p_pn;
                          v189 = v178;
                          v186 = "BasebandRestore";
                          v187 = "handleRTIClientMAFile";
                          ACFULogging::handleMessage();
                          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(pn.__r_.__value_.__l.__data_);
                          }

                          BasebandRestore::createZeroSizeContainer(&pn);
                          v179 = pn.__r_.__value_.__r.__words[0];
                          pn.__r_.__value_.__r.__words[0] = 0;
                          if (v195)
                          {
                            v180 = MEMORY[0x1E6926300]();
                            operator delete(v180);
                            v181 = pn.__r_.__value_.__r.__words[0];
                            pn.__r_.__value_.__r.__words[0] = 0;
                            if (v181)
                            {
                              v182 = MEMORY[0x1E6926300]();
                              operator delete(v182);
                            }
                          }
                        }

                        else
                        {
                          if ((SHIBYTE(v196.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_331;
                          }

LABEL_355:
                          operator delete(v196.__pn_.__r_.__value_.__l.__data_);
                          if (!v160)
                          {
                            goto LABEL_356;
                          }

LABEL_332:
                          Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
                          cf = Mutable;
                          std::__fs::filesystem::path::lexically_normal(&pn, &__p);
                          if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v162 = &pn;
                          }

                          else
                          {
                            v162 = pn.__r_.__value_.__r.__words[0];
                          }

                          CFStringAppendCString(Mutable, v162, 0x8000100u);
                          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(pn.__r_.__value_.__l.__data_);
                          }

                          ACFUDataContainer::create(Mutable, 1);
                          v165 = pn.__r_.__value_.__r.__words[0];
                          pn.__r_.__value_.__r.__words[0] = 0;
                          v166 = v195;
                          v195 = v165;
                          if (v166)
                          {
                            v167 = MEMORY[0x1E6926300](v166, v163, v164);
                            operator delete(v167);
                            v166 = pn.__r_.__value_.__r.__words[0];
                            pn.__r_.__value_.__r.__words[0] = 0;
                            if (v166)
                            {
                              v170 = MEMORY[0x1E6926300](v166, v168, v169);
                              operator delete(v170);
                            }
                          }

                          if (v165)
                          {
                            ACFULogging::getLogInstance(v166);
                            if (*(a2 + 23) >= 0)
                            {
                              v171 = a2;
                            }

                            else
                            {
                              v171 = *a2;
                            }

                            v187 = "handleRTIClientMAFile";
                            v188 = v171;
                            v186 = "BasebandRestore";
                            ACFULogging::handleMessage();
                            pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                            v172 = off_1ECFD4E60;
                            if (!off_1ECFD4E60)
                            {
                              SharedData::create_default_global(&pn);
                              std::shared_ptr<SharedData>::operator=[abi:ne200100](&pn);
                              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&pn);
                              v172 = off_1ECFD4E60;
                            }

                            v173 = *(&off_1ECFD4E60 + 1);
                            v196.__pn_.__r_.__value_.__r.__words[0] = v172;
                            v196.__pn_.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
                            if (*(&off_1ECFD4E60 + 1))
                            {
                              atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
                            }

                            pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                            v174 = operator new(0x28uLL);
                            pn.__r_.__value_.__r.__words[0] = v174;
                            v175 = *&v190[16];
                            *&pn.__r_.__value_.__r.__words[1] = *&v190[32];
                            strcpy(v174 + 31, "sent");
                            v176 = *v190;
                            *v174 = v175;
                            *(v174 + 1) = v176;
                            SharedData::setPreference<BOOL>(v172, &pn, 1);
                            if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(pn.__r_.__value_.__l.__data_);
                            }

                            if (v173 && !atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v173->__on_zero_shared)(v173);
                              std::__shared_weak_count::__release_weak(v173);
                            }

                            Mutable = cf;
                          }

                          else
                          {
                            ACFULogging::getLogInstance(v166);
                            std::__fs::filesystem::path::lexically_normal(&pn, &__p);
                            if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v183 = &pn;
                            }

                            else
                            {
                              v183 = pn.__r_.__value_.__r.__words[0];
                            }

                            v187 = "handleRTIClientMAFile";
                            v188 = v183;
                            v186 = "BasebandRestore";
                            ACFULogging::handleMessage();
                            if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(pn.__r_.__value_.__l.__data_);
                            }
                          }

                          if (Mutable)
                          {
                            CFRelease(Mutable);
                          }

                          v179 = v195;
                        }

                        v195 = 0;
                        *a3 = v179;
                        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        ACFULogging::getLogInstance(TypeID);
                        if (*(a2 + 23) >= 0)
                        {
                          v150 = a2;
                        }

                        else
                        {
                          v150 = *a2;
                        }

                        v187 = "handleRTIClientMAFile";
                        v188 = v150;
                        v186 = "BasebandRestore";
                        ACFULogging::handleMessage();
                        BasebandRestore::createZeroSizeContainer(a3);
                      }

                      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v197.__r_.__value_.__l.__data_);
                      }

LABEL_292:
                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v194, v194.__r_.__value_.__l.__size_);
                      if (v195)
                      {
                        goto LABEL_308;
                      }

                      goto LABEL_385;
                    }
                  }

                  else if (v88 >= v99)
                  {
                    goto LABEL_204;
                  }
                }

LABEL_288:
                ACFULogging::getLogInstance(v48);
                if (*(a2 + 23) >= 0)
                {
                  v146 = a2;
                }

                else
                {
                  v146 = *a2;
                }

                v187 = "handleRTIClientMAFile";
                v188 = v146;
                v186 = "BasebandRestore";
                ACFULogging::handleMessage();
                *a3 = 0;
                goto LABEL_292;
              }
            }

            else
            {
              if (v92 >= v88)
              {
                goto LABEL_191;
              }

LABEL_177:
              v49 = *(v49 + 8);
              if (!v49)
              {
                goto LABEL_192;
              }
            }
          }
        }
      }

      else if ((SHIBYTE(v197.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      operator delete(v197.__r_.__value_.__l.__data_);
      v49 = v194.__r_.__value_.__l.__size_;
      if (!v194.__r_.__value_.__l.__size_)
      {
        goto LABEL_288;
      }

      goto LABEL_170;
    }

LABEL_381:
    ACFULogging::getLogInstance(v7);
    if (*(a2 + 23) >= 0)
    {
      v184 = a2;
    }

    else
    {
      v184 = *a2;
    }

    v187 = "handleRTIClientMAFile";
    v188 = v184;
    v186 = "BasebandRestore";
    ACFULogging::handleMessage();
    BasebandRestore::createZeroSizeContainer(a3);
    goto LABEL_385;
  }

  if (v10 == 1987076706)
  {
    *a3 = 0;
    v12 = a2;
LABEL_111:
    if (*v12 != 1987076706 || (v7 = *(a1 + 528)) == 0)
    {
LABEL_117:
      ACFULogging::getLogInstance(v7);
      if (*(a2 + 23) >= 0)
      {
        v53 = a2;
      }

      else
      {
        v53 = *a2;
      }

      v187 = "handleRTIClientFDRFile";
      v188 = v53;
      v186 = "BasebandRestore";
      ACFULogging::handleMessage();
      BasebandRestore::createZeroSizeContainer(&v197);
      goto LABEL_121;
    }

LABEL_115:
    v52 = ACFUDataContainer::create(&v197, v7, v8);
    *a3 = v197.__r_.__value_.__r.__words[0];
    ACFULogging::getLogInstance(v52);
    if (*(a2 + 23) >= 0)
    {
      v84 = a2;
    }

    else
    {
      v84 = *a2;
    }

    v187 = "handleRTIClientFDRFile";
    v188 = v84;
    v186 = "BasebandRestore";
    ACFULogging::handleMessage();
    goto LABEL_385;
  }

  v11 = 2036621922;
LABEL_36:
  v13 = a2;
  if (v10 != v11)
  {
    goto LABEL_21;
  }

LABEL_37:
  v196.__pn_.__r_.__value_.__r.__words[0] = 0;
  memset(&v197, 170, sizeof(v197));
  GetBasebandNVM4ccToFileNameMap(&v197);
  v21 = v197.__r_.__value_.__l.__size_;
  if (!v197.__r_.__value_.__l.__size_)
  {
    goto LABEL_162;
  }

  v22 = *(a2 + 23);
  if (v22 >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = *a2;
  }

  if (v22 >= 0)
  {
    v24 = *(a2 + 23);
  }

  else
  {
    v24 = *(a2 + 8);
  }

  v25 = &v197.__r_.__value_.__r.__words[1];
  do
  {
    while (1)
    {
      v26 = *(v21 + 55);
      v27 = v26 >= 0 ? (v21 + 32) : *(v21 + 32);
      v28 = v26 >= 0 ? *(v21 + 55) : *(v21 + 40);
      v29 = v24 >= v28 ? v28 : v24;
      v20 = memcmp(v27, v23, v29);
      if (v20)
      {
        break;
      }

      if (v28 >= v24)
      {
        goto LABEL_59;
      }

LABEL_45:
      v21 = *(v21 + 8);
      if (!v21)
      {
        goto LABEL_60;
      }
    }

    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_59:
    v25 = v21;
    v21 = *v21;
  }

  while (v21);
LABEL_60:
  if (v25 == &v197.__r_.__value_.__r.__words[1])
  {
    goto LABEL_162;
  }

  v32 = v25[1].__r_.__value_.__l.__size_;
  v31 = &v25[1].__r_.__value_.__l.__size_;
  v30 = v32;
  v33 = *(v31 + 23);
  if (v33 >= 0)
  {
    v34 = v31;
  }

  else
  {
    v34 = v30;
  }

  if (v33 >= 0)
  {
    v35 = *(v31 + 23);
  }

  else
  {
    v35 = v31[1];
  }

  if (v35 >= v24)
  {
    v36 = v24;
  }

  else
  {
    v36 = v35;
  }

  v20 = memcmp(v23, v34, v36);
  if (!v20)
  {
    if (v24 >= v35)
    {
      goto LABEL_72;
    }

LABEL_162:
    ACFULogging::getLogInstance(v20);
    if (*(a2 + 23) >= 0)
    {
      v85 = a2;
    }

    else
    {
      v85 = *a2;
    }

    v187 = "handleRTIClientNVMFile";
    v188 = v85;
    v186 = "BasebandRestore";
    ACFULogging::handleMessage();
    *a3 = 0;
LABEL_166:
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v197, v197.__r_.__value_.__l.__size_);
    goto LABEL_385;
  }

  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_162;
  }

LABEL_72:
  v37 = *(a1 + 128);
  if (v37)
  {
    v38 = CFDictionaryGetValue(v37, @"BypassNVMDownload");
    v39 = v38;
    if (v38)
    {
      v40 = CFGetTypeID(v38);
      if (v40 == CFBooleanGetTypeID())
      {
        v41 = CFBooleanGetValue(v39);
        if (v41 == 1)
        {
          ACFULogging::getLogInstance(v41);
          if (*(a2 + 23) >= 0)
          {
            v42 = a2;
          }

          else
          {
            v42 = *a2;
          }

          v187 = "handleRTIClientNVMFile";
          v188 = v42;
          v186 = "BasebandRestore";
          ACFULogging::handleMessage();
          BasebandRestore::createZeroSizeContainer(a3);
          goto LABEL_166;
        }
      }
    }
  }

  memset(&v194, 170, sizeof(v194));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v54 = off_1ED944170;
  if (!off_1ED944170)
  {
    v55 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v55);
    pn.__r_.__value_.__r.__words[0] = v55;
    v56 = operator new(0x20uLL);
    *v56 = &unk_1F5F05A00;
    v56[1] = 0;
    v56[2] = 0;
    v56[3] = v55;
    v57 = off_1ED944178;
    off_1ED944170 = v55;
    off_1ED944178 = v56;
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v57->__on_zero_shared)(v57);
      std::__shared_weak_count::__release_weak(v57);
    }

    v54 = off_1ED944170;
  }

  v58 = off_1ED944178;
  __p.__pn_.__r_.__value_.__r.__words[0] = v54;
  __p.__pn_.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v54, &v194);
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

  if (*(a1 + 560))
  {
LABEL_142:
    memset(&__p, 170, sizeof(__p));
    v75 = std::map<std::string,std::string>::at(v197.__r_.__value_.__l.__size_, a2);
    v76 = v75;
    v77 = SHIBYTE(v194.__r_.__value_.__r.__words[2]);
    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = HIBYTE(v194.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v78 = v194.__r_.__value_.__l.__size_;
    }

    v79 = *(v75 + 23);
    if (v79 >= 0)
    {
      v80 = *(v75 + 23);
    }

    else
    {
      v80 = v75[1];
    }

    v81 = v80 + v78;
    if (v80 + v78 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v81 <= 0x16)
    {
      memset(&pn, 0, sizeof(pn));
      v83 = &pn;
      *(&pn.__r_.__value_.__s + 23) = v80 + v78;
    }

    else
    {
      *&v190[32] = *(v75 + 23);
      if ((v81 | 7) == 0x17)
      {
        v82 = 25;
      }

      else
      {
        v82 = (v81 | 7) + 1;
      }

      v83 = operator new(v82);
      pn.__r_.__value_.__l.__size_ = v80 + v78;
      pn.__r_.__value_.__r.__words[2] = v82 | 0x8000000000000000;
      pn.__r_.__value_.__r.__words[0] = v83;
      v79 = *&v190[32];
    }

    if (v78)
    {
      if (v77 >= 0)
      {
        v107 = &v194;
      }

      else
      {
        v107 = v194.__r_.__value_.__r.__words[0];
      }

      memmove(v83, v107, v78);
    }

    v108 = &v83[v78];
    if (v80)
    {
      v109 = *v76;
      if (v79 >= 0)
      {
        v110 = v76;
      }

      else
      {
        v110 = *v76;
      }

      memmove(v108, v110, v80);
    }

    v108[v80] = 0;
    __p.__pn_ = pn;
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __p.__pn_;
    }

    v127 = ctu::fs::file_exists();
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      v128 = v127;
      operator delete(pn.__r_.__value_.__l.__data_);
      v127 = v128;
    }

    if (v127)
    {
      v129 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      v195 = v129;
      std::__fs::filesystem::path::lexically_normal(&pn, &__p);
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v130 = &pn;
      }

      else
      {
        v130 = pn.__r_.__value_.__r.__words[0];
      }

      CFStringAppendCString(v129, v130, 0x8000100u);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      ACFUDataContainer::create(v129, 1);
      v133 = pn.__r_.__value_.__r.__words[0];
      pn.__r_.__value_.__r.__words[0] = 0;
      v134 = v196.__pn_.__r_.__value_.__r.__words[0];
      v196.__pn_.__r_.__value_.__r.__words[0] = v133;
      if (v134)
      {
        v135 = MEMORY[0x1E6926300](v134, v131, v132);
        operator delete(v135);
        v134 = pn.__r_.__value_.__r.__words[0];
        pn.__r_.__value_.__r.__words[0] = 0;
        if (v134)
        {
          v138 = MEMORY[0x1E6926300](v134, v136, v137);
          operator delete(v138);
        }
      }

      if (v133)
      {
        ACFULogging::getLogInstance(v134);
        if (*(a2 + 23) >= 0)
        {
          v139 = a2;
        }

        else
        {
          v139 = *a2;
        }

        v187 = "handleRTIClientNVMFile";
        v188 = v139;
        v186 = "BasebandRestore";
        ACFULogging::handleMessage();
      }

      else
      {
        ACFULogging::getLogInstance(v134);
        std::__fs::filesystem::path::lexically_normal(&pn, &__p);
        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v147 = &pn;
        }

        else
        {
          v147 = pn.__r_.__value_.__r.__words[0];
        }

        v187 = "handleRTIClientNVMFile";
        v188 = v147;
        v186 = "BasebandRestore";
        ACFULogging::handleMessage();
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }
      }

      if (v129)
      {
        CFRelease(v129);
      }
    }

    else
    {
      ACFULogging::getLogInstance(v127);
      std::__fs::filesystem::path::lexically_normal(&pn, &__p);
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v140 = &pn;
      }

      else
      {
        v140 = pn.__r_.__value_.__r.__words[0];
      }

      if (*(a2 + 23) >= 0)
      {
        v141 = a2;
      }

      else
      {
        v141 = *a2;
      }

      v188 = v140;
      v189 = v141;
      v186 = "BasebandRestore";
      v187 = "handleRTIClientNVMFile";
      ACFULogging::handleMessage();
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      BasebandRestore::createZeroSizeContainer(&pn);
      v133 = pn.__r_.__value_.__r.__words[0];
      pn.__r_.__value_.__r.__words[0] = 0;
      if (v196.__pn_.__r_.__value_.__r.__words[0])
      {
        v142 = MEMORY[0x1E6926300]();
        operator delete(v142);
        v143 = pn.__r_.__value_.__r.__words[0];
        pn.__r_.__value_.__r.__words[0] = 0;
        if (v143)
        {
          v144 = MEMORY[0x1E6926300]();
          operator delete(v144);
        }
      }
    }

    v196.__pn_.__r_.__value_.__r.__words[0] = 0;
    *a3 = v133;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v59);
    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v194;
    }

    else
    {
      v60 = v194.__r_.__value_.__r.__words[0];
    }

    v187 = "handleRTIClientNVMFile";
    v188 = v60;
    v186 = "BasebandRestore";
    ACFULogging::handleMessage();
    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v194;
    }

    else
    {
      v68 = v194.__r_.__value_.__r.__words[0];
    }

    if (v68)
    {
      if (bbufs::prepareDestination(v68, v61))
      {
        *(a1 + 560) = 1;
        goto LABEL_142;
      }

      v145 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v69, v70, v71, v72, v73, v74, v186);
    }

    else
    {
      v145 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v62, v63, v64, v65, v66, v67, 0);
    }

    ACFULogging::getLogInstance(v145);
    v186 = "BasebandRestore";
    v187 = "handleRTIClientNVMFile";
    ACFULogging::handleMessage();
    *a3 = 0;
  }

  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  v148 = v196.__pn_.__r_.__value_.__r.__words[0];
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v197, v197.__r_.__value_.__l.__size_);
  if (v148)
  {
LABEL_308:
    v149 = MEMORY[0x1E6926300]();
    operator delete(v149);
  }

LABEL_385:
  v185 = *MEMORY[0x1E69E9840];
}

void sub_1E53060B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFString>::~CFSharedRef(&a20);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 121) < 0)
  {
    operator delete(*(v40 - 144));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a34, a35);
  std::unique_ptr<ACFUDataContainer>::~unique_ptr[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void BasebandRestore::createZeroSizeContainer(BasebandRestore *this)
{
  v2 = CFDataCreate(*MEMORY[0x1E695E480], 0, 0);
  *this = 0xAAAAAAAAAAAAAAAALL;
  v4 = ACFUDataContainer::create(v2, v3);
  if (!*this)
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1E53064A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<ACFUDataContainer>::~unique_ptr[abi:ne200100](v4);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E53064C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<ACFUDataContainer>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E6926300]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t *std::map<std::string,std::string>::at(uint64_t **a1, const void **a2)
{
  if (!a1)
  {
LABEL_27:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v2 = a1;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = *(v2 + 55);
      v7 = v6 >= 0 ? (v2 + 4) : v2[4];
      v8 = v6 >= 0 ? *(v2 + 55) : v2[5];
      v9 = (v8 >= v5 ? v5 : v8);
      v10 = memcmp(v4, v7, v9);
      if (v10)
      {
        break;
      }

      if (v5 >= v8)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_27;
      }
    }

    if (v10 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v11 = memcmp(v7, v4, v9);
    if (v11)
    {
      if ((v11 & 0x80000000) == 0)
      {
        return (v2 + 7);
      }

      goto LABEL_26;
    }

    if (v8 >= v5)
    {
      return (v2 + 7);
    }

LABEL_26:
    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

const void **ctu::cf::CFSharedRef<__CFString>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SharedData::getPreference<std::string>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, v4);
  v5 = (**a1)(a1, v6);
  if (v5)
  {
    ctu::cf::assign();
    CFRelease(v5);
  }

  MEMORY[0x1E6926590](&v6);
  os_unfair_lock_unlock((a1 + 40));
}

uint64_t BasebandRestore::updateIMEISvn(BasebandRestore *this, int a2)
{
  ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage();
  if (a2 == -1 || (a2 - 99) <= 0xFFFFFF9D)
  {
    ACFULogging::getLogInstance(v3);
  }

  else
  {
    v15 = -86;
    v14 = a2;
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
    support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, &v13);
    v5 = v13;
    if (v13)
    {
      v6 = *(v13 + 3);
      Svn = KTLCpsGetSvn();
      if (Svn)
      {
        ACFULogging::getLogInstance(Svn);
        v8 = ACFULogging::handleMessage();
        if (v15 != a2)
        {
          ACFULogging::getLogInstance(v8);
          ACFULogging::handleMessage();
          v11 = *(v5 + 3);
          v8 = KTLCpsSetSvn();
          if (!v8)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        ACFULogging::getLogInstance(Svn);
        ACFULogging::handleMessage();
        v9 = *(v5 + 3);
        v8 = KTLCpsSetSvn();
        if (!v8)
        {
LABEL_10:
          ACFULogging::getLogInstance(v8);
          ACFULogging::handleMessage();
          v10 = 0;
          goto LABEL_11;
        }
      }

      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
      v10 = 1;
LABEL_11:
      (*(*v5 + 8))(v5);
      return v10;
    }

    ACFULogging::getLogInstance(v4);
  }

  ACFULogging::handleMessage();
  return 0;
}

const void **ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t BasebandRestore::isBasebandProvisioned(BasebandRestore *this, BOOL *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v9 = 0xAAAAAAAAAAAAAAAALL;
  support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, &v9);
  v4 = v9;
  if (v9 && (v5 = *(v9 + 3), v3 = KTLGetManifestStatus(), (v3 & 1) != 0))
  {
    logManifestStatus(v10);
    *a2 = WORD2(v10[0]) == 0;
    v6 = 1;
  }

  else
  {
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
    v6 = 0;
    result = 0;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  (*(*v4 + 8))(v4);
  result = v6;
LABEL_5:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5306B0C(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::getBasebandCrashReason(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  memset(&v16, 0, sizeof(v16));
  v5 = ACFUDiagnostics::copyDiagnosticsPath(*(a1 + 184));
  v6 = v5;
  if (v5)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
    std::string::__assign_external(&v16, CStringPtr);
    CoredumpCrashReport = support::parsers::getCoredumpCrashReport(&v16.__r_.__value_.__l.__data_, &v19, __p, &v22);
    if (CoredumpCrashReport)
    {
      v9 = HIBYTE(v21);
      if (v21 < 0)
      {
        v9 = v20;
      }

      if (v9)
      {
        ACFULogging::getLogInstance(CoredumpCrashReport);
        if (v22 <= 3)
        {
          v10 = off_1E876E8B0[v22];
        }

        CoredumpCrashReport = ACFULogging::handleMessage();
        v11 = v22;
        *a3 = v22 == 1;
        if (v11 == 1)
        {
          ACFULogging::getLogInstance(CoredumpCrashReport);
          ACFULogging::handleMessage();
LABEL_23:
          v14 = 1;
          goto LABEL_24;
        }

        if (v11 == 2)
        {
          v12 = HIBYTE(v18);
          if (v18 < 0)
          {
            v12 = __p[1];
          }

          if (v12)
          {
            if (__p != a2)
            {
              if (*(a2 + 23) < 0)
              {
                if (v18 >= 0)
                {
                  v13 = __p;
                }

                else
                {
                  v13 = __p[0];
                }

                std::string::__assign_no_alias<false>(a2, v13, v12);
              }

              else if (SHIBYTE(v18) < 0)
              {
                std::string::__assign_no_alias<true>(a2, __p[0], __p[1]);
              }

              else
              {
                *a2 = *__p;
                *(a2 + 16) = v18;
              }
            }

            goto LABEL_23;
          }
        }
      }
    }

    ACFULogging::getLogInstance(CoredumpCrashReport);
    ACFULogging::handleMessage();
    v14 = 0;
LABEL_24:
    CFRelease(v6);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
  v14 = 0;
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_30:
    operator delete(__p[0]);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return v14;
    }

LABEL_31:
    operator delete(v19);
    return v14;
  }

LABEL_29:
  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_31;
  }

  return v14;
}

void sub_1E5306DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((*(v26 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v26 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v26 - 80));
  _Unwind_Resume(exception_object);
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t std::pair<ACFURestore::UpdateSteps const,RestoreStep>::~pair(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandRestore *,std::shared_ptr<BasebandRestore>::__shared_ptr_default_delete<BasebandRestore,BasebandRestore>,std::allocator<BasebandRestore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandRestore *,std::shared_ptr<BasebandRestore>::__shared_ptr_default_delete<BasebandRestore,BasebandRestore>,std::allocator<BasebandRestore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BasebandRestore *,std::shared_ptr<BasebandRestore>::__shared_ptr_default_delete<BasebandRestore,BasebandRestore>,std::allocator<BasebandRestore>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53932C2)
  {
    if (((v2 & 0x80000001E53932C2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53932C2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53932C2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<ACFUError>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F03A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::unique_ptr<ACFUDiagnostics>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E6926260]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x1E6926260]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53933ACLL)
  {
    if (((v2 & 0x80000001E53933ACLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53933ACLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53933ACLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<RTKitFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5393435)
  {
    if (((v2 & 0x80000001E5393435 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5393435))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5393435 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandUpdaterTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandUpdaterTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BasebandUpdaterTransport  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53934C7)
  {
    if (((v2 & 0x80000001E53934C7 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53934C7))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53934C7 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F03BD8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F03BD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::operator()(ACFULogging *a1, uint64_t a2, __int128 *a3)
{
  v253 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *a2;
  v221 = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *a3;
  v220 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = *(a1 + 1);
  v224 = 0;
  v225 = 0;
  v223 = -1;
  if (!v4)
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    goto LABEL_80;
  }

  v219 = v5;
  v7 = **v4;
  v9 = 0;
  if (v8 && v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = v3;
  }

  v224 = v8;
  v225 = v9;
  v10 = BasebandUpdaterTransport::retrieveChipRev(v8, &v223);
  if (v10)
  {
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    goto LABEL_23;
  }

  v11 = ACFUFirmware::copyFWDataByTag(v219, @"Cellular1,Recipe");
  v12 = v11;
  if (!v11)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_23;
  }

  __s2.__r_.__value_.__r.__words[2] = 0x200000000000000;
  *&__s2.__r_.__value_.__l.__data_ = v223 & 0xF | 0x30u;
  *(&__s2.__r_.__value_.__l.__data_ + 1) = ((v223 >> 4) + 65);
  __p[1] = 0;
  v239 = 0x200000000000000;
  __p[0] = ((v223 >> 4) + 65);
  *(__p + 1) = v223 & 0xF | 0x30;
  BytePtr = CFDataGetBytePtr(v11);
  Length = CFDataGetLength(v12);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v247 = 2863311530;
  v248 = 0xAAAAAAAAAAAAAAAALL;
  v250 = 0xAAAAAAAAAAAAAAAALL;
  v252 = 0xAAAAAAAAAAAAAAAALL;
  *v244 = v15;
  v245 = 0xAAAAAAAAAAAAAAAALL;
  *&value[16] = v15;
  v243 = v15;
  *value = BytePtr;
  *&value[8] = Length;
  v246 = 0;
  v249 = 0uLL;
  v251 = 0;
  LODWORD(BytePtr) = RecipeUtil::_parseVariables(value);
  CFRelease(v12);
  if (BytePtr)
  {
    ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage();
    v23 = 7;
    v24 = 1;
    goto LABEL_18;
  }

  v17 = *(&v249 + 1);
  if (!*(&v249 + 1) || (v18 = v250) == 0)
  {
LABEL_13:
    ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage();
    v22 = *(v6 + 384);
    v236.__r_.__value_.__r.__words[0] = *(v6 + 376);
    v236.__r_.__value_.__l.__size_ = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" is not supported by the baseband firmware", &v237, &v222);
    ACFUError::addError();
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v236);
      v23 = 4;
      v24 = 3006;
      goto LABEL_18;
    }

    operator delete(v237.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  v19 = 0;
  v20 = 1;
  while (1)
  {
    v21 = *(v17 + 8 * v19);
    v16 = strncmp(v21, &__s2, 4uLL);
    if (!v16)
    {
      break;
    }

    v19 = v20++;
    if (v18 <= v19)
    {
      goto LABEL_13;
    }
  }

  *(&v250 + 1) = v21;
  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  v23 = 0;
  v24 = 1;
LABEL_18:
  RecipeUtil::uninit(value);
  if (SHIBYTE(v239) < 0)
  {
    operator delete(__p[0]);
    if (v23 == 7)
    {
      goto LABEL_23;
    }
  }

  else if (v23 == 7)
  {
    goto LABEL_23;
  }

  if (v23)
  {
    goto LABEL_446;
  }

LABEL_23:
  if (!ACFURestore::isPreflighted(v6) || (ACFURestore::isNeRDOS(v6) & 1) != 0)
  {
    goto LABEL_25;
  }

  v54 = **v4;
  if (!v55)
  {
    *value = 0;
    *&value[8] = 0;
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
LABEL_80:
    v24 = 1005;
    goto LABEL_446;
  }

  *value = v55;
  *&value[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v56 = BasebandUpdaterTransport::setPreflightMode(v55);
  v24 = v56;
  if (v56)
  {
    ACFULogging::getLogInstance(v56);
    ACFULogging::handleMessage();
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v24)
  {
    goto LABEL_446;
  }

LABEL_25:
  ValueIfPresent = *(v6 + 128);
  *value = 0;
  __s2.__r_.__value_.__s.__data_[0] = 0;
  if (ValueIfPresent)
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(ValueIfPresent, @"EraseEFS", value);
    if (ValueIfPresent)
    {
      v26 = *value;
      if (*value)
      {
        v27 = CFGetTypeID(*value);
        ValueIfPresent = CFBooleanGetTypeID();
        if (v27 == ValueIfPresent)
        {
          ValueIfPresent = ctu::cf::assign(&__s2, v26, v28);
        }
      }
    }
  }

  ACFULogging::getLogInstance(ValueIfPresent);
  ACFULogging::handleMessage();
  if (__s2.__r_.__value_.__s.__data_[0] != 1)
  {
    goto LABEL_67;
  }

  memset(value, 170, 24);
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v29 = off_1ED944170;
  if (!off_1ED944170)
  {
    v30 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v30);
    __p[0] = v30;
    v31 = operator new(0x20uLL);
    *v31 = &unk_1F5F05A00;
    v31[1] = 0;
    v31[2] = 0;
    v31[3] = v30;
    v32 = off_1ED944178;
    off_1ED944170 = v30;
    off_1ED944178 = v31;
    if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }

    v29 = off_1ED944170;
  }

  v33 = off_1ED944178;
  __s2.__r_.__value_.__r.__words[0] = v29;
  __s2.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v29, value);
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  ACFULogging::getLogInstance(v34);
  ACFULogging::handleMessage();
  v35 = ctu::fs::file_exists();
  if ((v35 & 1) == 0)
  {
    ACFULogging::getLogInstance(v35);
    v46 = ACFULogging::handleMessage();
    goto LABEL_64;
  }

  is_directory = ctu::fs::is_directory();
  if (is_directory)
  {
    is_directory = ctu::fs::remove_directory_contents();
    if (is_directory)
    {
      ACFULogging::getLogInstance(is_directory);
      v37 = ACFULogging::handleMessage();
      ACFULogging::getLogInstance(v37);
      ACFULogging::handleMessage();
      if (value[23] >= 0)
      {
        v45 = value;
      }

      else
      {
        v45 = *value;
      }

      if (!v45)
      {
        v53 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v39, v40, v41, v42, v43, v44, 0);
LABEL_84:
        ACFULogging::getLogInstance(v53);
        v46 = ACFULogging::handleMessage();
        v57 = 0;
        v24 = 1;
        if ((value[23] & 0x80000000) != 0)
        {
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      v46 = bbufs::prepareDestination(v45, v38);
      if ((v46 & 1) == 0)
      {
        v53 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v47, v48, v49, v50, v51, v52, "BasebandRestore");
        goto LABEL_84;
      }

LABEL_64:
      v24 = 0;
      v57 = 1;
      if ((value[23] & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }
  }

  ACFULogging::getLogInstance(is_directory);
  v46 = ACFULogging::handleMessage();
  v57 = 0;
  v24 = 1004;
  if ((value[23] & 0x80000000) != 0)
  {
LABEL_65:
    operator delete(*value);
  }

LABEL_66:
  if ((v57 & 1) == 0)
  {
    goto LABEL_445;
  }

LABEL_67:
  *&value[8] = 0xAAAAAAAAAAAAAAAALL;
  *&value[16] = 0xAAAAAAAAAAAAAALL;
  v241 = 0;
  *value = 0xAAAAAAAAAAAAAA00;
  __s2.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __s2.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
  __s2.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
  __p[1] = 0xAAAAAAAAAA00736DLL;
  v239 = 0xAAAAAAAAAAAAAAALL;
  v229 = 0;
  v230 = 0;
  cf = 0;
  __p[0] = *"NvramItems";
  v237.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v237.__r_.__value_.__r.__words[1] = xmmword_1E53931C0;
  strcpy(v237.__r_.__value_.__l.__data_, "auto-boot='1', bootdelay='0', sdd-vers='20104'");
  v236.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v236.__r_.__value_.__r.__words[1] = xmmword_1E53931D0;
  strcpy(v236.__r_.__value_.__l.__data_, "auto-boot='1', bootdelay='0', host-env='1', sdd-vers='20104'");
  v232.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v232.__r_.__value_.__r.__words[1] = xmmword_1E53931D0;
  strcpy(v232.__r_.__value_.__l.__data_, "auto-boot='1', bootdelay='0', host-env='0', sdd-vers='20104'");
  v58 = *(v6 + 128);
  if (!v58)
  {
    ACFULogging::getLogInstance(0);
LABEL_468:
    ACFULogging::handleMessage();
    v24 = 1;
    goto LABEL_161;
  }

  v59 = CFDictionaryGetValue(v58, @"NVRAMItems");
  v60 = v59;
  if (v59)
  {
    CFRetain(v59);
    v241 = v60;
    v61 = CFGetTypeID(v60);
    TypeID = CFStringGetTypeID();
    if (v61 != TypeID)
    {
LABEL_467:
      ACFULogging::getLogInstance(TypeID);
      goto LABEL_468;
    }

    CStringPtr = CFStringGetCStringPtr(v60, 0x8000100u);
    v64 = std::string::__assign_external(value, CStringPtr);
    ACFULogging::getLogInstance(v64);
    v59 = ACFULogging::handleMessage();
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_73;
    }

LABEL_92:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    v65 = BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
    if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
    {
      goto LABEL_74;
    }

LABEL_93:
    if (*(v6 + 544) == 1)
    {
      ACFULogging::getLogInstance(v59);
      v73 = ACFULogging::handleMessage();
      if ((value[23] & 0x80000000) != 0)
      {
        if (*&value[8])
        {
          goto LABEL_96;
        }
      }

      else if (value[23])
      {
LABEL_96:
        ACFULogging::getLogInstance(v73);
        ACFULogging::handleMessage();
LABEL_105:
        v67 = HIBYTE(v236.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v236.__r_.__value_.__l.__size_;
          v69 = v236.__r_.__value_.__r.__words[0];
          v71 = (v236.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
          v72 = &v236;
          goto LABEL_133;
        }

        v68 = &v236;
        if ((*(&v236.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_76;
        }

LABEL_107:
        std::string::__assign_no_alias<true>(&__s2, v68->__r_.__value_.__l.__data_, v68->__r_.__value_.__l.__size_);
        goto LABEL_140;
      }

      ACFULogging::getLogInstance(v73);
      ACFULogging::handleMessage();
      TypeID = readStickyNvramItems(value);
      v24 = TypeID;
      if (TypeID)
      {
        goto LABEL_180;
      }

      goto LABEL_105;
    }

    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    if (!xmmword_1ECFD4F48)
    {
      v75 = operator new(0x18uLL);
      MEMORY[0x1E69265F0](v75, @"com.apple.AppleBasebandManager", *MEMORY[0x1E695E8B8]);
      v228.__r_.__value_.__r.__words[0] = v75;
      v74 = operator new(0x20uLL);
      *v74 = &unk_1F5F03C68;
      v74[1] = 0;
      v74[2] = 0;
      v74[3] = v75;
      v76 = *(&xmmword_1ECFD4F48 + 1);
      *&xmmword_1ECFD4F48 = v75;
      *(&xmmword_1ECFD4F48 + 1) = v74;
      if (!v76)
      {
        v231.__r_.__value_.__r.__words[0] = v75;
        v231.__r_.__value_.__l.__size_ = v74;
        goto LABEL_110;
      }

      if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v76->__on_zero_shared)(v76);
        std::__shared_weak_count::__release_weak(v76);
      }
    }

    v74 = *(&xmmword_1ECFD4F48 + 1);
    v75 = xmmword_1ECFD4F48;
    *&v231.__r_.__value_.__l.__data_ = xmmword_1ECFD4F48;
    if (!*(&xmmword_1ECFD4F48 + 1))
    {
LABEL_111:
      pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (v239 >= 0)
      {
        v77 = __p;
      }

      else
      {
        v77 = __p[0];
      }

      ctu::cf::MakeCFString::MakeCFString(&v228, v77);
      v78 = (**v75)(v75, v228.__r_.__value_.__r.__words[0]);
      v79 = v78;
      if (v78)
      {
        v80 = CFGetTypeID(v78);
        if (v80 == CFStringGetTypeID())
        {
          v81 = v79;
        }

        else
        {
          v81 = 0;
        }

        CFRelease(v79);
        v82 = MEMORY[0x1E6926590](&v228);
        v83 = v231.__r_.__value_.__l.__size_;
        if (!v231.__r_.__value_.__l.__size_)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v81 = 0;
        v82 = MEMORY[0x1E6926590](&v228);
        v83 = v231.__r_.__value_.__l.__size_;
        if (!v231.__r_.__value_.__l.__size_)
        {
LABEL_123:
          if (v81)
          {
            CFRetain(v81);
            v84 = cf;
            cf = v81;
            if (v84)
            {
              CFRelease(v84);
            }

            v85 = CFGetTypeID(v81);
            TypeID = CFStringGetTypeID();
            if (v85 != TypeID)
            {
              goto LABEL_467;
            }

            ACFULogging::getLogInstance(TypeID);
            ACFULogging::handleMessage();
            v86 = CFStringGetCStringPtr(v81, 0x8000100u);
            v82 = std::string::__assign_external(&v232, v86);
          }

          ACFULogging::getLogInstance(v82);
          v87 = ACFULogging::handleMessage();
          ACFULogging::getLogInstance(v87);
          ACFULogging::handleMessage();
          TypeID = readStickyNvramItems(value);
          v24 = TypeID;
          if (TypeID)
          {
            goto LABEL_180;
          }

          v67 = HIBYTE(v232.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
          {
            size = v232.__r_.__value_.__l.__size_;
            v69 = v232.__r_.__value_.__r.__words[0];
            v71 = (v232.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
            v72 = &v232;
            goto LABEL_133;
          }

          v68 = &v232;
          if ((*(&v232.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_107;
        }
      }

      if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v83->__on_zero_shared)(v83);
        std::__shared_weak_count::__release_weak(v83);
      }

      goto LABEL_123;
    }

LABEL_110:
    atomic_fetch_add_explicit(v74 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_111;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_92;
  }

LABEL_73:
  v65 = BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_74:
  ACFULogging::getLogInstance(v59);
  v66 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v66);
  ACFULogging::handleMessage();
  v67 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v68 = &v237;
    if ((*(&v237.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_76:
      __s2 = *v68;
      goto LABEL_140;
    }

    goto LABEL_107;
  }

  size = v237.__r_.__value_.__l.__size_;
  v69 = v237.__r_.__value_.__r.__words[0];
  v71 = (v237.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  v72 = &v237;
LABEL_133:
  if (v71)
  {
    v88 = v69;
  }

  else
  {
    v88 = v72;
  }

  if (v71)
  {
    v89 = size;
  }

  else
  {
    v89 = v67;
  }

  std::string::__assign_no_alias<false>(&__s2.__r_.__value_.__l.__data_, v88, v89);
LABEL_140:
  if ((value[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v231, *value, *&value[8]);
  }

  else
  {
    v231 = *value;
  }

  if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v228, __s2.__r_.__value_.__l.__data_, __s2.__r_.__value_.__l.__size_);
  }

  else
  {
    v228 = __s2;
  }

  TypeID = createNVData(&v231, &v228, v65 & 1, &v229);
  v24 = TypeID;
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v231.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_148:
      if (!v24)
      {
        goto LABEL_149;
      }

LABEL_180:
      ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage();
      goto LABEL_161;
    }
  }

  else if ((SHIBYTE(v231.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_148;
  }

  operator delete(v231.__r_.__value_.__l.__data_);
  if (v24)
  {
    goto LABEL_180;
  }

LABEL_149:
  if (!v229)
  {
    goto LABEL_467;
  }

  v90 = *(v6 + 128);
  v226 = v229;
  v227 = v230;
  if (v230)
  {
    atomic_fetch_add_explicit(&v230->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  saveNVRAMFile(v90, &v226);
  v91 = v227;
  if (v227 && !atomic_fetch_add(&v227->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
  }

  v93 = v229;
  v92 = v230;
  if (v230)
  {
    atomic_fetch_add_explicit(&v230->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v94 = *(v6 + 504);
  *(v6 + 496) = v93;
  *(v6 + 504) = v92;
  if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
  }

  v24 = 0;
LABEL_161:
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v236.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_163:
      if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_169;
    }
  }

  else if ((SHIBYTE(v236.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_163;
  }

  operator delete(v236.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_164:
    if ((SHIBYTE(v239) & 0x80000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_170;
  }

LABEL_169:
  operator delete(v237.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v239) & 0x80000000) == 0)
  {
LABEL_165:
    v95 = cf;
    if (!cf)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

LABEL_170:
  operator delete(__p[0]);
  v95 = cf;
  if (cf)
  {
LABEL_171:
    CFRelease(v95);
  }

LABEL_172:
  v96 = v230;
  if (v230 && !atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v96->__on_zero_shared)(v96);
    std::__shared_weak_count::__release_weak(v96);
    if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_175:
      if ((value[23] & 0x80000000) == 0)
      {
        goto LABEL_176;
      }

LABEL_183:
      operator delete(*value);
      v46 = v241;
      if (!v241)
      {
        goto LABEL_185;
      }

      goto LABEL_184;
    }
  }

  else if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_175;
  }

  operator delete(__s2.__r_.__value_.__l.__data_);
  if ((value[23] & 0x80000000) != 0)
  {
    goto LABEL_183;
  }

LABEL_176:
  v46 = v241;
  if (v241)
  {
LABEL_184:
    CFRelease(v46);
  }

LABEL_185:
  if (v24)
  {
    goto LABEL_445;
  }

  __s2.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  v241 = 0;
  *&__s2.__r_.__value_.__l.__data_ = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v239 = 0;
  memset(&v237, 0, sizeof(v237));
  memset(&v236, 0, sizeof(v236));
  v234 = 0;
  cf = 0;
  v232.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAA01;
  __dst = 0;
  *&v232.__r_.__value_.__l.__data_ = 0xAAAAAAAAAAAA0100;
  memset(&v231, 170, sizeof(v231));
  value[23] = 4;
  strcpy(value, "bbcl");
  HIBYTE(v243) = 4;
  strcpy(&value[24], "bbpc");
  BYTE7(v245) = 4;
  strcpy(v244, "bbpv");
  std::vector<std::string>::vector[abi:ne200100](&v231, value, 3uLL);
  if ((SBYTE7(v245) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v243) & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_213:
    operator delete(*&value[24]);
    if ((value[23] & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_214;
  }

  operator delete(v244[0]);
  if (SHIBYTE(v243) < 0)
  {
    goto LABEL_213;
  }

LABEL_188:
  if ((value[23] & 0x80000000) == 0)
  {
    goto LABEL_189;
  }

LABEL_214:
  operator delete(*value);
LABEL_189:
  v229 = 0;
  v230 = 0;
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v97 = off_1ED944170;
  if (!off_1ED944170)
  {
    v98 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v98);
    v226 = v98;
    v99 = operator new(0x20uLL);
    *v99 = &unk_1F5F05A00;
    v99[1] = 0;
    v99[2] = 0;
    v99[3] = v98;
    v100 = off_1ED944178;
    off_1ED944170 = v98;
    off_1ED944178 = v99;
    if (v100 && !atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v100->__on_zero_shared)(v100);
      std::__shared_weak_count::__release_weak(v100);
    }

    v97 = off_1ED944170;
  }

  v101 = off_1ED944178;
  v228.__r_.__value_.__r.__words[0] = v97;
  v228.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v97, value);
  if (SHIBYTE(v239) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *value;
  v239 = *&value[16];
  value[23] = 0;
  value[0] = 0;
  if (v101 && !atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v101->__on_zero_shared)(v101);
    std::__shared_weak_count::__release_weak(v101);
  }

  ACFULogging::getLogInstance(v102);
  ACFULogging::handleMessage();
  if (v239 >= 0)
  {
    v110 = __p;
  }

  else
  {
    v110 = __p[0];
  }

  if (v110)
  {
    if (bbufs::prepareDestination(v110, v103))
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
      {
        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
        {
          goto LABEL_208;
        }
      }

      else
      {
        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
        {
LABEL_208:
          if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
          {
            goto LABEL_222;
          }

          goto LABEL_209;
        }
      }

      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
      if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
      {
        goto LABEL_222;
      }

LABEL_209:
      if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
      {
        v117 = 0;
        v118 = *(v6 + 168);
        if (!v118)
        {
          goto LABEL_229;
        }

        goto LABEL_226;
      }

LABEL_222:
      v121 = *(v6 + 128);
      if (!v121 || (v122 = CFDictionaryGetValue(v121, @"APTicket"), (v117 = v122) == 0))
      {
        ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage();
        v24 = 1;
        v120 = v230;
        if (v230)
        {
          goto LABEL_419;
        }

        goto LABEL_421;
      }

      ACFULogging::getLogInstance(v122);
      ACFULogging::handleMessage();
      AMSupportSafeRetain();
      v123 = CFGetTypeID(v117);
      v124 = CFDataGetTypeID();
      if (v123 != v124)
      {
        ACFULogging::getLogInstance(v124);
        ACFULogging::handleMessage();
        v24 = 1;
        goto LABEL_417;
      }

      v232.__r_.__value_.__l.__size_ = v117;
      v118 = *(v6 + 168);
      if (!v118)
      {
        goto LABEL_229;
      }

LABEL_226:
      v125 = **v118;
      if (v118)
      {
        v126 = *(v6 + 176);
        if (v126)
        {
          atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_230:
        v127 = v230;
        v229 = v118;
        v230 = v126;
        if (v127)
        {
          if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v127->__on_zero_shared)(v127);
            std::__shared_weak_count::__release_weak(v127);
          }

          v118 = v229;
        }

        if (v118)
        {
          v128 = (**v118)(value);
          v130 = *value;
          v129 = *&value[8];
          if (*&value[8])
          {
            atomic_fetch_add_explicit((*&value[8] + 8), 1uLL, memory_order_relaxed);
          }

          v131 = __s2.__r_.__value_.__l.__size_;
          __s2.__r_.__value_.__r.__words[0] = v130;
          __s2.__r_.__value_.__l.__size_ = v129;
          if (v131 && !atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v131->__on_zero_shared)(v131);
            std::__shared_weak_count::__release_weak(v131);
          }

          v132 = *&value[16];
          LODWORD(__s2.__r_.__value_.__r.__words[2]) = *&value[16];
          v133 = *&value[8];
          if (*&value[8])
          {
            if (!atomic_fetch_add((*&value[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v133->__on_zero_shared)(v133);
              std::__shared_weak_count::__release_weak(v133);
            }

            v132 = __s2.__r_.__value_.__r.__words[2];
          }

          if (v132)
          {
            ACFULogging::getLogInstance(v128);
            ACFULogging::handleMessage();
LABEL_465:
            v24 = 1;
            if (!v117)
            {
              goto LABEL_418;
            }

            goto LABEL_417;
          }

          v134 = *&__s2.__r_.__value_.__l.__data_;
          if (__s2.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((__s2.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            v135 = *(v134 + 48);
            if (!atomic_fetch_add((*(&v134 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(**(&v134 + 1) + 16))(*(&v134 + 1));
              std::__shared_weak_count::__release_weak(*(&v134 + 1));
            }

            if (v135)
            {
              goto LABEL_249;
            }
          }

          else if (*(__s2.__r_.__value_.__r.__words[0] + 48))
          {
LABEL_249:
            ACFULogging::getLogInstance(v128);
            v136 = ACFULogging::handleMessage();
            v137 = *&__s2.__r_.__value_.__l.__data_;
            *value = *&__s2.__r_.__value_.__l.__data_;
            if (__s2.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((__s2.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            if (*(v137 + 48) == 1)
            {
              v136 = *(v137 + 40);
              if (v136)
              {
                v138 = CFDataGetBytePtr(v136);
                v136 = CFDataGetLength(*(v137 + 40));
                if (v136 <= 8)
                {
                  __dst = 0;
                  v136 = memcpy(&__dst, v138, v136);
                }
              }
            }

            if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(**(&v137 + 1) + 16))(*(&v137 + 1));
              std::__shared_weak_count::__release_weak(*(&v137 + 1));
            }

            LogInstance = ACFULogging::getLogInstance(v136);
            capabilities::radio::chipID(LogInstance);
            v140 = ACFULogging::handleMessage();
            v142 = v231.__r_.__value_.__l.__size_;
            v141 = v231.__r_.__value_.__r.__words[0];
            if (v231.__r_.__value_.__r.__words[0] == v231.__r_.__value_.__l.__size_)
            {
LABEL_416:
              v24 = 0;
              if (!v117)
              {
                goto LABEL_418;
              }

              goto LABEL_417;
            }

            v217 = v231.__r_.__value_.__l.__size_;
            alloc = *MEMORY[0x1E695E480];
            v214 = (v6 + 520);
            v215 = (v6 + 512);
            v216 = (v6 + 528);
            v143 = "%s::%s: ------------ Generate FDR combined data for %s ------------\n";
LABEL_262:
            ACFULogging::getLogInstance(v140);
            if (*(v141 + 23) < 0)
            {
              v144 = *v141;
            }

            v145 = ACFULogging::handleMessage();
            if (*(v141 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(value, *v141, *(v141 + 8));
            }

            else
            {
              v146 = *v141;
              *&value[16] = *(v141 + 16);
              *value = v146;
            }

            HIBYTE(v243) = 0;
            value[24] = 0;
            capabilities::radio::chipID(v145);
            DataLocalCopy = ACFUFDR::getDataLocalCopy();
            v148 = v228.__r_.__value_.__r.__words[0];
            if (SHIBYTE(v243) < 0)
            {
              operator delete(*&value[24]);
              if ((value[23] & 0x80000000) == 0)
              {
                goto LABEL_269;
              }
            }

            else if ((value[23] & 0x80000000) == 0)
            {
LABEL_269:
              ACFULogging::getLogInstance(DataLocalCopy);
              if (*(v141 + 23) < 0)
              {
                v149 = *v141;
              }

              ACFULogging::handleMessage();
              v140 = v241;
              v241 = v148;
              if (v140)
              {
                CFRelease(v140);
                v148 = v241;
              }

              if (!v148)
              {
                goto LABEL_261;
              }

              v150 = v143;
              v151 = v117;
              memset(value, 170, 24);
              GetBasebandFDR4ccToFileNameMap(value);
              v153 = *&value[8];
              if (!*&value[8])
              {
LABEL_410:
                ACFULogging::getLogInstance(v152);
                v117 = v151;
                if (*(v141 + 23) < 0)
                {
                  v205 = *v141;
                }

                ACFULogging::handleMessage();
                goto LABEL_413;
              }

              v154 = *(v141 + 23);
              if (v154 >= 0)
              {
                v155 = v141;
              }

              else
              {
                v155 = *v141;
              }

              if (v154 >= 0)
              {
                v156 = *(v141 + 23);
              }

              else
              {
                v156 = *(v141 + 8);
              }

              v157 = &value[8];
              v158 = *&value[8];
              while (1)
              {
                v159 = *(v158 + 55);
                if (v159 >= 0)
                {
                  v160 = v158 + 4;
                }

                else
                {
                  v160 = v158[4];
                }

                if (v159 >= 0)
                {
                  v161 = *(v158 + 55);
                }

                else
                {
                  v161 = v158[5];
                }

                if (v156 >= v161)
                {
                  v162 = v161;
                }

                else
                {
                  v162 = v156;
                }

                v152 = memcmp(v160, v155, v162);
                if (v152)
                {
                  if ((v152 & 0x80000000) != 0)
                  {
                    goto LABEL_282;
                  }

LABEL_296:
                  v157 = v158;
                  v158 = *v158;
                  if (!v158)
                  {
LABEL_297:
                    if (v157 == &value[8])
                    {
                      goto LABEL_410;
                    }

                    v165 = *(v157 + 4);
                    v164 = (v157 + 32);
                    v163 = v165;
                    v166 = *(v164 + 23);
                    if (v166 >= 0)
                    {
                      v167 = v164;
                    }

                    else
                    {
                      v167 = v163;
                    }

                    if (v166 >= 0)
                    {
                      v168 = *(v164 + 23);
                    }

                    else
                    {
                      v168 = v164[1];
                    }

                    if (v168 >= v156)
                    {
                      v169 = v156;
                    }

                    else
                    {
                      v169 = v168;
                    }

                    v152 = memcmp(v155, v167, v169);
                    if (v152)
                    {
                      if ((v152 & 0x80000000) == 0)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_410;
                    }

                    if (v156 < v168)
                    {
                      goto LABEL_410;
                    }

LABEL_315:
                    while (2)
                    {
                      while (2)
                      {
                        v170 = *(v153 + 55);
                        if (v170 >= 0)
                        {
                          v171 = v153 + 4;
                        }

                        else
                        {
                          v171 = v153[4];
                        }

                        if (v170 >= 0)
                        {
                          v172 = *(v153 + 55);
                        }

                        else
                        {
                          v172 = v153[5];
                        }

                        if (v172 >= v156)
                        {
                          v173 = v156;
                        }

                        else
                        {
                          v173 = v172;
                        }

                        v174 = memcmp(v155, v171, v173);
                        if (v174)
                        {
                          if (v174 < 0)
                          {
                            goto LABEL_314;
                          }
                        }

                        else if (v156 < v172)
                        {
LABEL_314:
                          v153 = *v153;
                          if (!v153)
                          {
                            goto LABEL_478;
                          }

                          continue;
                        }

                        break;
                      }

                      v175 = memcmp(v171, v155, v173);
                      if (v175)
                      {
                        if ((v175 & 0x80000000) == 0)
                        {
                          break;
                        }

                        goto LABEL_332;
                      }

                      if (v172 < v156)
                      {
LABEL_332:
                        v153 = v153[1];
                        if (!v153)
                        {
LABEL_478:
                          std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
                        }

                        continue;
                      }

                      break;
                    }

                    if (&v237 != (v153 + 7))
                    {
                      v176 = *(v153 + 79);
                      if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v176 >= 0)
                        {
                          v177 = v153 + 7;
                        }

                        else
                        {
                          v177 = v153[7];
                        }

                        if (v176 >= 0)
                        {
                          v178 = *(v153 + 79);
                        }

                        else
                        {
                          v178 = v153[8];
                        }

                        v175 = std::string::__assign_no_alias<false>(&v237.__r_.__value_.__l.__data_, v177, v178);
                      }

                      else if ((*(v153 + 79) & 0x80) != 0)
                      {
                        v175 = std::string::__assign_no_alias<true>(&v237, v153[7], v153[8]);
                      }

                      else
                      {
                        v237 = *(v153 + 7);
                      }
                    }

                    ACFULogging::getLogInstance(v175);
                    if (*(v141 + 23) < 0)
                    {
                      v179 = *v141;
                    }

                    v180 = ACFULogging::handleMessage();
                    v181 = SHIBYTE(v239);
                    if (v239 >= 0)
                    {
                      v182 = HIBYTE(v239);
                    }

                    else
                    {
                      v182 = __p[1];
                    }

                    v183 = SHIBYTE(v237.__r_.__value_.__r.__words[2]);
                    if ((v237.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v184 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v184 = v237.__r_.__value_.__l.__size_;
                    }

                    v185 = v184 + v182;
                    if (v184 + v182 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    if (v185 <= 0x16)
                    {
                      memset(&v228, 0, sizeof(v228));
                      v187 = &v228;
                      *(&v228.__r_.__value_.__s + 23) = v184 + v182;
                      if (!v182)
                      {
                        goto LABEL_366;
                      }

LABEL_362:
                      if (v181 >= 0)
                      {
                        v188 = __p;
                      }

                      else
                      {
                        v188 = __p[0];
                      }

                      v180 = memmove(v187, v188, v182);
                      goto LABEL_366;
                    }

                    if ((v185 | 7) == 0x17)
                    {
                      v186 = 25;
                    }

                    else
                    {
                      v186 = (v185 | 7) + 1;
                    }

                    v180 = operator new(v186);
                    v187 = v180;
                    v228.__r_.__value_.__l.__size_ = v184 + v182;
                    v228.__r_.__value_.__r.__words[2] = v186 | 0x8000000000000000;
                    v228.__r_.__value_.__r.__words[0] = v180;
                    if (v182)
                    {
                      goto LABEL_362;
                    }

LABEL_366:
                    v189 = v187 + v182;
                    if (v184)
                    {
                      if (v183 >= 0)
                      {
                        v190 = &v237;
                      }

                      else
                      {
                        v190 = v237.__r_.__value_.__r.__words[0];
                      }

                      v180 = memmove(v189, v190, v184);
                    }

                    v189[v184] = 0;
                    if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v236.__r_.__value_.__l.__data_);
                    }

                    v236 = v228;
                    ACFULogging::getLogInstance(v180);
                    if (*(v141 + 23) < 0)
                    {
                      v191 = *v141;
                    }

                    ACFULogging::handleMessage();
                    if ((v236.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v192 = &v236;
                    }

                    else
                    {
                      v192 = v236.__r_.__value_.__r.__words[0];
                    }

                    v193 = CFStringCreateWithCString(alloc, v192, 0x8000100u);
                    v194 = cf;
                    cf = v193;
                    v117 = v151;
                    if (v194)
                    {
                      CFRelease(v194);
                    }

                    if (!v193)
                    {
                      goto LABEL_470;
                    }

                    v195 = CFURLCreateWithString(alloc, v193, 0);
                    v194 = v234;
                    v234 = v195;
                    if (v194)
                    {
                      CFRelease(v194);
                    }

                    if (!v195)
                    {
LABEL_470:
                      ACFULogging::getLogInstance(v194);
                      ACFULogging::handleMessage();
                      v24 = 4000;
                      goto LABEL_414;
                    }

                    v196 = AMSupportWriteDataToFileURL();
                    if (!v196)
                    {
                      ACFULogging::getLogInstance(v196);
                      if (*(v141 + 23) < 0)
                      {
                        v197 = *v141;
                      }

                      v198 = ACFULogging::handleMessage();
                      v199 = *(v141 + 23);
                      if ((v199 & 0x80000000) == 0)
                      {
                        v117 = v151;
                        v143 = v150;
                        v142 = v217;
                        if (v199 != 4)
                        {
                          goto LABEL_460;
                        }

                        if (*v141 == 1818452578)
                        {
                          goto LABEL_405;
                        }

                        v200 = v141;
                        if (*v141 != 1668309602)
                        {
                          goto LABEL_391;
                        }

LABEL_400:
                        if (v214 != &v241)
                        {
                          v203 = v241;
                          if (v241)
                          {
                            CFRetain(v241);
                          }

                          v202 = *v214;
                          *v214 = v203;
                          if (v202)
                          {
LABEL_409:
                            CFRelease(v202);
                          }
                        }

LABEL_260:
                        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(value, *&value[8]);
LABEL_261:
                        v141 += 24;
                        if (v141 == v142)
                        {
                          goto LABEL_416;
                        }

                        goto LABEL_262;
                      }

                      v117 = v151;
                      v143 = v150;
                      v142 = v217;
                      if (*(v141 + 8) == 4)
                      {
                        v200 = *v141;
                        if (**v141 == 1818452578)
                        {
LABEL_405:
                          if (v215 != &v241)
                          {
                            v204 = v241;
                            if (v241)
                            {
                              CFRetain(v241);
                            }

                            v202 = *v215;
                            *v215 = v204;
                            if (v202)
                            {
                              goto LABEL_409;
                            }
                          }

                          goto LABEL_260;
                        }

                        if (*v200 == 1668309602)
                        {
                          goto LABEL_400;
                        }

LABEL_391:
                        if (*v200 == 1987076706)
                        {
                          if (v216 != &v241)
                          {
                            v201 = v241;
                            if (v241)
                            {
                              CFRetain(v241);
                            }

                            v202 = *v216;
                            *v216 = v201;
                            if (v202)
                            {
                              goto LABEL_409;
                            }
                          }

                          goto LABEL_260;
                        }
                      }

LABEL_460:
                      ACFULogging::getLogInstance(v198);
                      ACFULogging::handleMessage();
LABEL_413:
                      v24 = 1;
                      goto LABEL_414;
                    }

                    ACFULogging::getLogInstance(v196);
                    v117 = v151;
                    ACFULogging::handleMessage();
                    v24 = 1004;
LABEL_414:
                    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(value, *&value[8]);
                    if (!v117)
                    {
LABEL_418:
                      v120 = v230;
                      if (v230)
                      {
                        goto LABEL_419;
                      }

                      goto LABEL_421;
                    }

LABEL_417:
                    CFRelease(v117);
                    goto LABEL_418;
                  }
                }

                else
                {
                  if (v161 >= v156)
                  {
                    goto LABEL_296;
                  }

LABEL_282:
                  v158 = v158[1];
                  if (!v158)
                  {
                    goto LABEL_297;
                  }
                }
              }
            }

            operator delete(*value);
            goto LABEL_269;
          }

          ACFULogging::getLogInstance(v128);
        }

        else
        {
          ACFULogging::getLogInstance(0);
        }

        ACFULogging::handleMessage();
        goto LABEL_465;
      }

LABEL_229:
      v126 = 0;
      goto LABEL_230;
    }

    v119 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v111, v112, v113, v114, v115, v116, "BasebandRestore");
  }

  else
  {
    v119 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v104, v105, v106, v107, v108, v109, 0);
  }

  ACFULogging::getLogInstance(v119);
  ACFULogging::handleMessage();
  v24 = 1004;
  v120 = v230;
  if (v230)
  {
LABEL_419:
    if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v120->__on_zero_shared)(v120);
      std::__shared_weak_count::__release_weak(v120);
    }
  }

LABEL_421:
  v206 = v231.__r_.__value_.__r.__words[0];
  if (v231.__r_.__value_.__r.__words[0])
  {
    v207 = v231.__r_.__value_.__l.__size_;
    v208 = v231.__r_.__value_.__r.__words[0];
    if (v231.__r_.__value_.__l.__size_ != v231.__r_.__value_.__r.__words[0])
    {
      do
      {
        v209 = *(v207 - 1);
        v207 -= 3;
        if (v209 < 0)
        {
          operator delete(*v207);
        }
      }

      while (v207 != v206);
      v208 = v231.__r_.__value_.__r.__words[0];
    }

    v231.__r_.__value_.__l.__size_ = v206;
    operator delete(v208);
  }

  if (v234)
  {
    CFRelease(v234);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_435:
      if ((SHIBYTE(v239) & 0x80000000) == 0)
      {
        goto LABEL_436;
      }

LABEL_440:
      operator delete(__p[0]);
      v210 = __s2.__r_.__value_.__l.__size_;
      if (!__s2.__r_.__value_.__l.__size_)
      {
        goto LABEL_442;
      }

      goto LABEL_441;
    }
  }

  else if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_435;
  }

  operator delete(v237.__r_.__value_.__l.__data_);
  if (SHIBYTE(v239) < 0)
  {
    goto LABEL_440;
  }

LABEL_436:
  v210 = __s2.__r_.__value_.__l.__size_;
  if (!__s2.__r_.__value_.__l.__size_)
  {
LABEL_442:
    v46 = v241;
    if (!v241)
    {
      goto LABEL_444;
    }

    goto LABEL_443;
  }

LABEL_441:
  if (atomic_fetch_add(&v210->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_442;
  }

  (v210->__on_zero_shared)(v210);
  std::__shared_weak_count::__release_weak(v210);
  v46 = v241;
  if (v241)
  {
LABEL_443:
    CFRelease(v46);
  }

LABEL_444:
  if (v24)
  {
LABEL_445:
    ACFULogging::getLogInstance(v46);
    ACFULogging::handleMessage();
  }

LABEL_446:
  v211 = v225;
  if (v225 && !atomic_fetch_add(&v225->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v211->__on_zero_shared)(v211);
    std::__shared_weak_count::__release_weak(v211);
  }

  if (*(&v220 + 1) && !atomic_fetch_add((*(&v220 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v220 + 1) + 16))(*(&v220 + 1));
    std::__shared_weak_count::__release_weak(*(&v220 + 1));
  }

  if (v221 && !atomic_fetch_add(&v221->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v221->__on_zero_shared)(v221);
    std::__shared_weak_count::__release_weak(v221);
  }

  v212 = *MEMORY[0x1E69E9840];
  return v24;
}

void sub_1E5309908(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void std::shared_ptr<SharedData>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = *(&off_1ECFD4E60 + 1);
  off_1ECFD4E60 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x1E6926600]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53936BELL)
  {
    if (((v2 & 0x80000001E53936BELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53936BELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53936BELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E6926600]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t __cxx_global_var_init_25()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_564()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_565()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_566()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUEURUpdateSource::getSBLType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getSBLType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1Au, "Assertion failure(false && Invalid radio type: Specified radio does not have a SBL1 file.)", v3, v4, v5, v6);
  }

  return 16391;
}

uint64_t BBUEURUpdateSource::getSequencerRamType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x28u, "Assertion failure(false && Invalid radio type: Specified radio does not have a SequencerRam file.)", v3, v4, v5, v6);
  }

  return 16419;
}

uint64_t BBUEURUpdateSource::getSignedFirmwareSOCViewType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x37u, "Assertion failure(false && Invalid radio type: Specified radio does not have a SignedFirmwareSOCView file.)", v3, v4, v5, v6);
  }

  return 16420;
}

uint64_t BBUEURUpdateSource::getXBLscType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x46u, "Assertion failure(false && Invalid radio type: Specified radio does not have a XBLsc file.)", v3, v4, v5, v6);
  }

  return 16421;
}

uint64_t BBUEURUpdateSource::getAPPSType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getAPPSType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x53u, "Assertion failure(false && Invalid radio type: Specified radio does not have an APPS file.)", v3, v4, v5, v6);
  }

  return 16393;
}

uint64_t BBUEURUpdateSource::getQDSP6SWType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getQDSP6SWType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x5Eu, "Assertion failure(false && Invalid radio type: Specified radio does not have a QDSP6SW file.)", v3, v4, v5, v6);
  }

  return 16396;
}

uint64_t BBUEURUpdateSource::getTZType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getTZType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x69u, "Assertion failure(false && Invalid radio type: Specified radio does not have a TZ file.)", v3, v4, v5, v6);
  }

  return 16397;
}

uint64_t BBUEURUpdateSource::getACDBType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getACDBType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x74u, "Assertion failure(false && Invalid radio type: Specified radio does not have an ACDBT file.)", v3, v4, v5, v6);
  }

  return 16399;
}

uint64_t BBUEURUpdateSource::getEFS1Type(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getEFS1Type(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x7Fu, "Assertion failure(false && Invalid radio type: Specified radio does not have an EFS1 file.)", v3, v4, v5, v6);
  }

  return 16400;
}

uint64_t BBUEURUpdateSource::getEFS2Type(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getEFS2Type(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x8Au, "Assertion failure(false && Invalid radio type: Specified radio does not have an EFS2 file.)", v3, v4, v5, v6);
  }

  return 16401;
}

uint64_t BBUEURUpdateSource::getEFS3Type(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getEFS3Type(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x95u, "Assertion failure(false && Invalid radio type: Specified radio does not have an EFS3 file.)", v3, v4, v5, v6);
  }

  return 16402;
}

uint64_t BBUEURUpdateSource::getCalType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getCalType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xA0u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Cal file.)", v3, v4, v5, v6);
  }

  return 16403;
}

uint64_t BBUEURUpdateSource::getProvType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getProvType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xABu, "Assertion failure(false && Invalid radio type: Specified radio does not have a Prov file.)", v3, v4, v5, v6);
  }

  return 16404;
}

uint64_t BBUEURUpdateSource::getPacType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getPacType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xB6u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Pac file.)", v3, v4, v5, v6);
  }

  return 16405;
}

uint64_t BBUEURUpdateSource::getBBCFGType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getBBCFGType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xC1u, "Assertion failure(false && Invalid radio type: Specified radio does not have a BBCFG file.)", v3, v4, v5, v6);
  }

  return 16407;
}

uint64_t BBUEURUpdateSource::getMDMDDRType(BBUEURUpdateSource *this)
{
  MDMDDRType = capabilities::updater::getMDMDDRType(this);
  if (MDMDDRType == 1)
  {
    return 16427;
  }

  if (MDMDDRType == 2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xCEu, "Assertion failure(false && Invalid radio type: Specified radio does not have a MDMDDR file.)", v4, v5, v6, v7);
  }

  return 16413;
}

uint64_t BBUEURUpdateSource::getAPDPType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getAPDPType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xD9u, "Assertion failure(false && Invalid radio type: Specified radio does not have a APDP file.)", v3, v4, v5, v6);
  }

  return 16408;
}

uint64_t BBUEURUpdateSource::getDEVCFGType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getDEVCFGType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xE4u, "Assertion failure(false && Invalid radio type: Specified radio does not have a DEVCFG file.)", v3, v4, v5, v6);
  }

  return 16409;
}

uint64_t BBUEURUpdateSource::getSECType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getSECType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xEFu, "Assertion failure(false && Invalid radio type: Specified radio does not have a SEC file.)", v3, v4, v5, v6);
  }

  return 16410;
}

uint64_t BBUEURUpdateSource::getHYPType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getHYPType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xFAu, "Assertion failure(false && Invalid radio type: Specified radio does not have a HYP file.)", v3, v4, v5, v6);
  }

  return 16411;
}

uint64_t BBUEURUpdateSource::getAOPType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getAOPType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x105u, "Assertion failure(false && Invalid radio type: Specified radio does not have a AOP file.)", v3, v4, v5, v6);
  }

  return 16412;
}

uint64_t BBUEURUpdateSource::getOEMMiscType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getOEMMiscType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x110u, "Assertion failure(false && Invalid radio type: Specified radio does not have a OEMMisc file.)", v3, v4, v5, v6);
  }

  return 16414;
}

uint64_t BBUEURUpdateSource::getQTIMiscType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getQTIMiscType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x11Bu, "Assertion failure(false && Invalid radio type: Specified radio does not have a QTIMisc file.)", v3, v4, v5, v6);
  }

  return 16415;
}

uint64_t BBUEURUpdateSource::getXblCfgType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getXblCfgType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x126u, "Assertion failure(false && Invalid radio type: Specified radio does not have a XBL Config file.)", v3, v4, v5, v6);
  }

  return 16416;
}

uint64_t BBUEURUpdateSource::getUEFIType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getUEFIType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x131u, "Assertion failure(false && Invalid radio type: Specified radio does not have a UEFI file.)", v3, v4, v5, v6);
  }

  return 16417;
}

uint64_t BBUEURUpdateSource::getXblSupportType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getXblSupportType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x13Cu, "Assertion failure(false && Invalid radio type: Specified radio does not have a XBL Support file.)", v3, v4, v5, v6);
  }

  return 16418;
}

uint64_t BBUEURUpdateSource::getShrmType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x14Au, "Assertion failure(false && Invalid radio type: Specified radio does not have a Shrm file.)", v3, v4, v5, v6);
  }

  return 16422;
}

uint64_t BBUEURUpdateSource::getCpucpType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x159u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Cpucp file.)", v3, v4, v5, v6);
  }

  return 16423;
}

uint64_t BBUEURUpdateSource::getAOPDevCfgType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x168u, "Assertion failure(false && Invalid radio type: Specified radio does not have a AOPDevCfg file.)", v3, v4, v5, v6);
  }

  return 16424;
}

uint64_t BBUEURUpdateSource::getQdsp6SwDtbsType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x177u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Qdsp6SwDtbs file.)", v3, v4, v5, v6);
  }

  return 16425;
}

uint64_t BBUEURUpdateSource::getQupv3FwType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x186u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Qupv3Fw file.)", v3, v4, v5, v6);
  }

  return 16426;
}

uint64_t BBUEURUpdateSource::getPTType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x195u, "Assertion failure(false && Invalid radio type: Specified radio does not have a PT file.)", v3, v4, v5, v6);
  }

  return 16428;
}

uint64_t BBUEURUpdateSource::containsFile(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    v4 = *(a1 + 103);
    if (v4 >= 0)
    {
      v5 = *(a1 + 103);
    }

    else
    {
      v5 = *(a1 + 88);
    }

    v6 = v5 + 1;
    if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 < 0x17)
    {
      memset(&v19, 0, sizeof(v19));
      v10 = &v19;
      *(&v19.__r_.__value_.__s + 23) = v5 + 1;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((v6 | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (v6 | 7) + 1;
      }

      v9 = a1;
      v10 = operator new(v8);
      a1 = v9;
      v19.__r_.__value_.__l.__size_ = v5 + 1;
      v19.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
      v19.__r_.__value_.__r.__words[0] = v10;
    }

    if (v4 >= 0)
    {
      v11 = (a1 + 80);
    }

    else
    {
      v11 = *(a1 + 80);
    }

    memmove(v10, v11, v5);
LABEL_19:
    *&v10[v5] = 47;
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = std::string::append(&v19, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    result = ctu::fs::file_exists();
    if (SHIBYTE(v21) < 0)
    {
      v17 = result;
      operator delete(__p[0]);
      result = v17;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v18 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v18;
  }

  v2 = *(a1 + 64);

  return BBUZipFile::containsFile(v2, a2);
}

void sub_1E530B4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void *BBUEURUpdateSource::createDataSource(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
    v8 = *(a1 + 103);
    if (v8 >= 0)
    {
      v9 = *(a1 + 103);
    }

    else
    {
      v9 = *(a1 + 88);
    }

    v10 = v9 + 1;
    if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 < 0x17)
    {
      memset(&v21, 0, sizeof(v21));
      v13 = &v21;
      *(&v21.__r_.__value_.__s + 23) = v9 + 1;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      v12 = a1;
      v13 = operator new(v11);
      a1 = v12;
      v21.__r_.__value_.__l.__size_ = v9 + 1;
      v21.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
      v21.__r_.__value_.__r.__words[0] = v13;
    }

    if (v8 >= 0)
    {
      v14 = (a1 + 80);
    }

    else
    {
      v14 = *(a1 + 80);
    }

    memmove(v13, v14, v9);
LABEL_23:
    *&v13[v9] = 47;
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    v18 = std::string::append(&v21, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v23 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v7 = operator new(0x30uLL);
    *v7 = &unk_1F5F00F28;
    *(v7 + 1) = 0u;
    *(v7 + 3) = 0u;
    if (BBUFileDataSource::init(v7, __p, a3))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v7;
      }
    }

    else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v7;
    }

    operator delete(v21.__r_.__value_.__l.__data_);
    return v7;
  }

  v6 = *(a1 + 72);
  v24 = *(a1 + 64);
  v25 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = operator new(0x38uLL);
  *v7 = &unk_1F5F02918;
  v7[1] = v5;
  v7[4] = 0;
  v7[5] = 0;
  v7[3] = 0;
  if (BBUZipDataSource::init(v7, a2, a3))
  {
    (*(*v7 + 8))(v7);
    v7 = 0;
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return v7;
}

void sub_1E530B77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *BBUEURUpdateSource::createDataSourceFromSpecificPath(uint64_t a1, void *a2, const std::string::value_type *a3, int a4)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5)
  {
    v7 = a3[23];
    v8 = v7 >= 0 ? *(a3 + 23) : *(a3 + 1);
    if (v8)
    {
      v9 = v5 + 1;
      if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v9 <= 0x16)
      {
        memset(&v22, 0, sizeof(v22));
        v14 = &v22;
        *(&v22.__r_.__value_.__s + 23) = v5 + 1;
      }

      else
      {
        if ((v9 | 7) == 0x17)
        {
          v11 = 25;
        }

        else
        {
          v11 = (v9 | 7) + 1;
        }

        v12 = a2;
        v13 = operator new(v11);
        a2 = v12;
        v14 = v13;
        v22.__r_.__value_.__l.__size_ = v5 + 1;
        v22.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
        v22.__r_.__value_.__r.__words[0] = v13;
      }

      v16 = *a2;
      if (v4 < 0)
      {
        a2 = *a2;
      }

      memmove(v14, a2, v5);
      *(&v14->__r_.__value_.__l.__data_ + v5) = 47;
      v17 = *a3;
      if (v7 >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      v19 = std::string::append(&v22, v18, v8);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v24 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v15 = operator new(0x30uLL);
      *v15 = &unk_1F5F00F28;
      *(v15 + 8) = 0u;
      *(v15 + 24) = 0u;
      if (BBUFileDataSource::init(v15, __p, a4))
      {
        (*(*v15 + 8))(v15);
        v15 = 0;
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v15;
        }
      }

      else if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v15;
      }

      operator delete(v22.__r_.__value_.__l.__data_);
      return v15;
    }
  }

  return 0;
}

void sub_1E530B998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::saveFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1CEu, "Assertion failure(fZipFile && Firmware data source error.)", v27, v28, v29, v30);
  }

  if (!BBUZipFile::containsFile(v4, a2))
  {
    return 35;
  }

  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v42 = v8;
  v43 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = operator new(0x38uLL);
  *v9 = &unk_1F5F02918;
  v9[1] = v8;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = 0;
  if (BBUZipDataSource::init(v9, a2, 0))
  {
    (*(*v9 + 8))(v9);
    v9 = 0;
  }

  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9)
    {
      goto LABEL_10;
    }

    return 35;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!v9)
  {
    return 35;
  }

LABEL_10:
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v10;
  v40[8] = v10;
  v40[5] = v10;
  v40[6] = v10;
  v40[3] = v10;
  v40[4] = v10;
  v40[1] = v10;
  v40[2] = v10;
  v40[0] = v10;
  v38 = v10;
  v39 = v10;
  v36 = v10;
  *__p = v10;
  v34 = v10;
  v35 = v10;
  v33 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/", 1);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v21 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v21 = *(&v36 + 1);
    }

    v22 = v36;
    v19 = v21 - v36;
    if ((v21 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v19 = 0;
      HIBYTE(v32) = 0;
      v20 = __dst;
      goto LABEL_38;
    }

    v22 = *(&v34 + 1);
    v19 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_44:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v19 | 7) + 1;
    }

    v20 = operator new(v24);
    __dst[1] = v19;
    v32 = v24 | 0x8000000000000000;
    __dst[0] = v20;
  }

  else
  {
    HIBYTE(v32) = v19;
    v20 = __dst;
    if (!v19)
    {
      goto LABEL_38;
    }
  }

  memmove(v20, v22, v19);
LABEL_38:
  *(v20 + v19) = 0;
  v25 = (*(*v9 + 48))(v9, __dst, 0);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v33 = *MEMORY[0x1E69E54E8];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v33 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v34);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v40);
  return v25;
}

void sub_1E530BDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::saveImages(BBUEURUpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1E6u, "Assertion failure(fZipFile && Firmware data source error.)", v30, v31, v32, v37);
  }

  memset(__src, 170, 24);
  capabilities::radio::personalizedFirmwarePath(__src, this);
  if (SHIBYTE(__src[2]) < 0)
  {
    if (__src[1])
    {
      v2 = __src[0];
      goto LABEL_7;
    }

LABEL_80:
    v33 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v33, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1E9u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)", v34, v35, v36, v37);
  }

  if (!HIBYTE(__src[2]))
  {
    goto LABEL_80;
  }

  v2 = __src;
LABEL_7:
  v38 = this;
  BBUFeedback::handleComment(*(this + 1), "Saving image to %s", v2);
  v3 = 0;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_blksize = v4;
  *v40.st_qspare = v4;
  v40.st_birthtimespec = v4;
  *&v40.st_size = v4;
  v40.st_mtimespec = v4;
  v40.st_ctimespec = v4;
  *&v40.st_uid = v4;
  v40.st_atimespec = v4;
  *&v40.st_dev = v4;
  while (1)
  {
    do
    {
      while (1)
      {
        if (__src[2] >= 0)
        {
          v5 = __src;
        }

        else
        {
          v5 = __src[0];
        }

        v6 = stat(v5, &v40);
        if (v3 == -1 || !v6)
        {
          v20 = __src;
          if (__src[2] < 0)
          {
            v20 = __src[0];
          }

          BBUFeedback::handleComment(*(v38 + 1), "Saving image to %s, success", v20);
          result = 0;
          if (SHIBYTE(__src[2]) < 0)
          {
            goto LABEL_64;
          }

          return result;
        }

        v7 = HIBYTE(__src[2]);
        v8 = __src[1];
        v9 = __src[2] >= 0 ? HIBYTE(__src[2]) : __src[1];
        if (v9 > v3)
        {
          v10 = __src[0];
          v11 = __src[2] >= 0 ? __src : __src[0];
          v12 = memchr(v11 + v3, 47, v9 - v3);
          v13 = v12 - v11;
          if (v12 && v13 != -1)
          {
            break;
          }
        }

        v3 = 1;
        if ((v7 & 0x80) != 0)
        {
          if (v8)
          {
            memset(__dst, 170, sizeof(__dst));
            v13 = v8;
            v7 = v8;
            v10 = __src[0];
            v15 = v8;
            if (v8 >= 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_60;
            }

            goto LABEL_38;
          }
        }

        else if (v7)
        {
          v13 = v7;
          memset(__dst, 170, sizeof(__dst));
          v10 = __src;
          v15 = v7;
          goto LABEL_38;
        }
      }

      v3 = 1;
    }

    while (!v13);
    memset(__dst, 170, sizeof(__dst));
    if ((v7 & 0x80) != 0)
    {
      v7 = v8;
      if (v8 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_60:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      v10 = __src;
      if (v7 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v7;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_60;
      }
    }

LABEL_38:
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v15 | 7) + 1;
      }

      v16 = operator new(v17);
      __dst[1] = v15;
      __dst[2] = (v17 | 0x8000000000000000);
      __dst[0] = v16;
LABEL_45:
      memmove(v16, v10, v15);
      goto LABEL_46;
    }

    HIBYTE(__dst[2]) = v15;
    v16 = __dst;
    if (v7)
    {
      goto LABEL_45;
    }

LABEL_46:
    *(v16 + v15) = 0;
    v18 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
    if (stat(v18, &v40))
    {
      v19 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
      if (mkdir(v19, 0x1EDu))
      {
        break;
      }
    }

    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    v3 = v13 + 1;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v23 = v38;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
LABEL_68:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v24 = (**v23)(v23);
        v28 = __dst;
        if (SHIBYTE(__dst[2]) < 0)
        {
          LOBYTE(v28) = __dst[0];
        }

        _BBULog(3, 0, v24, "", "Failed to create path %s", v25, v26, v27, v28);
      }
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v23 = v38;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
      goto LABEL_68;
    }
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    result = 35;
    if (SHIBYTE(__src[2]) < 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    result = 35;
    if (SHIBYTE(__src[2]) < 0)
    {
LABEL_64:
      v22 = result;
      operator delete(__src[0]);
      return v22;
    }
  }

  return result;
}

void sub_1E530C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v17 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v17 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v17 - 120));
  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::cleanupFirmwareImage(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x211u, "Assertion failure(fZipFile && Firmware data source error.)", v26, v27, v28, v33);
  }

  memset(v37, 170, sizeof(v37));
  capabilities::radio::personalizedFirmwarePath(v37, a1);
  v4 = SHIBYTE(v37[2]);
  if ((SHIBYTE(v37[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v37[2]))
    {
      v5 = v37[1];
      goto LABEL_6;
    }

LABEL_44:
    v29 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v29, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x216u, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)", v30, v31, v32, v33);
  }

  v5 = v37[1];
  if (!v37[1])
  {
    goto LABEL_44;
  }

LABEL_6:
  if (SHIBYTE(v37[2]) >= 0)
  {
    v6 = SHIBYTE(v37[2]);
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v34, 0, sizeof(v34));
    v9 = &v34;
    *(&v34.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v34.__r_.__value_.__l.__size_ = v6 + 1;
    v34.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v34.__r_.__value_.__r.__words[0] = v9;
  }

  if (v4 >= 0)
  {
    v10 = v37;
  }

  else
  {
    v10 = v37[0];
  }

  memmove(v9, v10, v6);
LABEL_20:
  *&v9[v6] = 47;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v34, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v36 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = v37;
  if (SHIBYTE(v37[2]) < 0)
  {
    v17 = v37[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Removing Firmware image [%s] in path [%s]\n", v16, v17);
  v18 = HIBYTE(v36);
  if (v36 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (unlink(v19))
  {
    v20 = *(a1 + 8);
    v21 = *__error();
    v22 = __error();
    v23 = strerror(*v22);
    BBUFeedback::handleComment(v20, "Unable to remove Firmware image [%s]. Error[%d][%s]\n", v19, v21, v23);
    v18 = HIBYTE(v36);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_42:
    operator delete(v37[0]);
    return 0;
  }

  if (SHIBYTE(v37[2]) < 0)
  {
    goto LABEL_42;
  }

  return 0;
}

void sub_1E530C5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::saveFirmwareImage(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x228u, "Assertion failure(fZipFile && Firmware data source error.)", v27, v28, v29, v30);
  }

  memset(v42, 170, sizeof(v42));
  capabilities::radio::personalizedFirmwarePath(v42, a1);
  if ((SHIBYTE(v42[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v42[2]))
    {
      goto LABEL_4;
    }

LABEL_21:
    v16 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v16, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x22Fu, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)", v17, v18, v19, v30);
  }

  if (!v42[1])
  {
    goto LABEL_21;
  }

LABEL_4:
  v4 = BBUEURUpdateSource::saveImages(a1);
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v5;
  v40[8] = v5;
  v40[5] = v5;
  v40[6] = v5;
  v40[3] = v5;
  v40[4] = v5;
  v40[1] = v5;
  v40[2] = v5;
  v40[0] = v5;
  v38 = v5;
  v39 = v5;
  v36 = v5;
  *__p = v5;
  v34 = v5;
  v35 = v5;
  v33 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
  if (v42[2] >= 0)
  {
    v6 = v42;
  }

  else
  {
    v6 = v42[0];
  }

  if (v42[2] >= 0)
  {
    v7 = HIBYTE(v42[2]);
  }

  else
  {
    v7 = v42[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/", 1);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  if (v4)
  {
    goto LABEL_41;
  }

  v13 = *(a1 + 64);
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v20 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v20 = *(&v36 + 1);
    }

    v21 = v36;
    v14 = v20 - v36;
    if ((v20 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v32) = 0;
      v15 = __dst;
      goto LABEL_33;
    }

    v21 = *(&v34 + 1);
    v14 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_47:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v14 | 7) + 1;
    }

    v15 = operator new(v22);
    __dst[1] = v14;
    v32 = v22 | 0x8000000000000000;
    __dst[0] = v15;
  }

  else
  {
    HIBYTE(v32) = v14;
    v15 = __dst;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  memmove(v15, v21, v14);
LABEL_33:
  *(v15 + v14) = 0;
  v4 = BBUZipFile::saveDataToFile(v13, __dst);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = *a2;
  }

  v24 = v42;
  if (v42[2] < 0)
  {
    v24 = v42[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Saving Firmware image [%s] in path [%s]\n", v23, v24);
LABEL_41:
  *&v33 = *MEMORY[0x1E69E54E8];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v33 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v34);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v40);
  if (SHIBYTE(v42[2]) < 0)
  {
    operator delete(v42[0]);
  }

  return v4;
}

void sub_1E530CA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a18);
  if (*(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  _Unwind_Resume(a1);
}

void BBUEURUpdateSource::loadProvisioningData(BBUEURUpdateSource *this)
{
  v2 = operator new(0x30uLL);
  strcpy(v2, "provisioning/info.plist");
  v45 = v2;
  v46 = xmmword_1E5392690;
  strcpy(v44, "provisioning/puk.pem");
  HIBYTE(v44[2]) = 20;
  v3 = operator new(0x30uLL);
  strcpy(v3, "provisioning/manifest.bin");
  __p = v3;
  v43 = xmmword_1E53926A0;
  v4 = *(this + 8);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x249u, "Assertion failure(fZipFile && Firmware data source error.)", v27, v28, v29, v39);
    goto LABEL_60;
  }

  v41 = 13;
  strcpy(v40, "provisioning/");
  if (BBUZipFile::containsFile(v4, v40))
  {
    *(this + 120) = 1;
  }

  if (BBUZipFile::containsFile(*(this + 8), &v45))
  {
    if (*(this + 16))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x254u, "Provisioning Dictionary Source is not NULL", v30, v31, v32, v39);
      goto LABEL_60;
    }

    v6 = *(this + 8);
    v5 = *(this + 9);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = operator new(0x38uLL);
    *v7 = &unk_1F5F02918;
    v7[1] = v6;
    v7[4] = 0;
    v7[5] = 0;
    v7[3] = 0;
    if (BBUZipDataSource::init(v7, &v45, 0))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    *(this + 16) = v7;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v8 = (**this)(this);
      _BBULog(3, 0, v8, "", "Loaded provisioning dictionary\n", v9, v10, v11, v39);
    }
  }

LABEL_17:
  if (!BBUZipFile::containsFile(*(this + 8), v44))
  {
    goto LABEL_30;
  }

  if (*(this + 17))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x25Eu, "Provisioning Public Key Source is not NULL", v33, v34, v35, v39);
    goto LABEL_60;
  }

  v13 = *(this + 8);
  v12 = *(this + 9);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = operator new(0x38uLL);
  *v14 = &unk_1F5F02918;
  v14[1] = v13;
  v14[4] = 0;
  v14[5] = 0;
  v14[3] = 0;
  if (BBUZipDataSource::init(v14, v44, 0))
  {
    (*(*v14 + 8))(v14);
    v14 = 0;
  }

  *(this + 17) = v14;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

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
    v15 = (**this)(this);
    _BBULog(3, 0, v15, "", "Loaded public key source\n", v16, v17, v18, v39);
  }

LABEL_30:
  if (!BBUZipFile::containsFile(*(this + 8), &__p))
  {
    goto LABEL_43;
  }

  if (*(this + 18))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x267u, "Provisioning Manifest Source is not NULL", v36, v37, v38, v39);
LABEL_60:
  }

  v20 = *(this + 8);
  v19 = *(this + 9);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = operator new(0x38uLL);
  *v21 = &unk_1F5F02918;
  v21[1] = v20;
  v21[4] = 0;
  v21[5] = 0;
  v21[3] = 0;
  if (BBUZipDataSource::init(v21, &__p, 0))
  {
    (*(*v21 + 8))(v21);
    v21 = 0;
  }

  *(this + 18) = v21;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v22 = (**this)(this);
    _BBULog(3, 0, v22, "", "Loaded provisioning manifest\n", v23, v24, v25, v20);
  }

LABEL_43:
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v44[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        return;
      }

LABEL_49:
      operator delete(v45);
      return;
    }
  }

  else if ((SHIBYTE(v44[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v44[0]);
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_49;
  }
}

void sub_1E530D198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v24 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v24 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v24 - 80));
  if ((*(v24 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v24 - 56));
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::copyProvisioningData(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x27Cu, "Assertion failure(false && Unrecognized provisoning support type.)", v12, v13, v14, v15);
  }

  v5 = *(a1 + 136);
  if (!v5 && !*(a1 + 144))
  {
    return 0;
  }

  v6 = operator new(0x18uLL);
  v7 = v6;
  v8 = *(a1 + 144);
  *v6 = &unk_1F5F037C0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v9 = (v6 + 16);
  if (v5)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v6, v6 + 1, v5);
  }

  if (v8)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v7, v9, v8);
  }

  *a3 = v7;
  return 1;
}

void sub_1E530D378(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v3);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::getFusingSource(BBUEURUpdateSource *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 26);
    if ((v3 & 4) != 0)
    {
      return *(this + 14);
    }

    *(this + 26) = v3 | 4;
    v27 = 19;
    v25 = aFusingprogramP[0];
    strcpy(__p, "fusingprogram.plist");
    if (!BBUZipFile::containsFile(v2, __p))
    {
      return *(this + 14);
    }

    if (*(this + 14))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x291u, "Fusing Source had read once", v21, v22, v23, aFusingprogramP[0]);
    }

    v5 = *(this + 8);
    v4 = *(this + 9);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = 19;
    strcpy(__p, "fusingprogram.plist");
    v6 = operator new(0x38uLL);
    *v6 = &unk_1F5F02918;
    v6[1] = v5;
    v6[4] = 0;
    v6[5] = 0;
    v6[3] = 0;
    if (BBUZipDataSource::init(v6, __p, 0))
    {
      (*(*v6 + 8))(v6);
      v6 = 0;
    }

    *(this + 14) = v6;
    if (v27 < 0)
    {
      operator delete(*__p);
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v7 = (**this)(this);
      _BBULog(3, 0, v7, "", "Loaded Fusing program \n", v8, v9, v10, aFusingprogramP[0]);
    }

LABEL_18:
    if (!*(this + 14))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_21:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v11 = (**this)(this);
            _BBULog(3, 0, v11, "", "loading failed\n", v12, v13, v14, v25);
          }
        }
      }
    }

    return *(this + 14);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v16 = (**this)(this);
    _BBULog(3, 0, v16, "", "Fusing Source cannot be non-zipped source.\n", v17, v18, v19, v24);
    return 0;
  }

  return result;
}

void sub_1E530D77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::getManifestSource(BBUEURUpdateSource *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    goto LABEL_82;
  }

  *(this + 26) = v2 | 1;
  v3 = *(this + 8);
  if (v3)
  {
    (*(*this + 56))(__p, this);
    v4 = BBUZipFile::containsFile(v3, __p);
    if (SHIBYTE(v58) < 0)
    {
      v6 = v4;
      operator delete(__p[0]);
      if (!v6)
      {
        goto LABEL_82;
      }
    }

    else if (!v4)
    {
      goto LABEL_82;
    }

    if (!*(this + 19))
    {
      v8 = *(this + 8);
      v7 = *(this + 9);
      v55 = v8;
      v56 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*this + 56))(__p, this);
      v9 = operator new(0x38uLL);
      *v9 = &unk_1F5F02918;
      v9[1] = v8;
      v9[4] = 0;
      v9[5] = 0;
      v9[3] = 0;
      if (BBUZipDataSource::init(v9, __p, 0))
      {
        (*(*v9 + 8))(v9);
        v9 = 0;
      }

      *(this + 19) = v9;
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

LABEL_91:
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 26, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x2A6u, "Root Manifest Source is not NULL", v45, v46, v47, v51);
LABEL_98:
  }

  v5 = *(this + 103);
  if (v5 < 0)
  {
    if (!*(this + 11))
    {
      goto LABEL_82;
    }
  }

  else if (!*(this + 103))
  {
    goto LABEL_82;
  }

  v10 = *(this + 11);
  if (v5 >= 0)
  {
    v11 = *(this + 103);
  }

  else
  {
    v11 = *(this + 11);
  }

  v12 = v11 + 1;
  if (v11 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_95:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = (this + 80);
  if (v12 < 0x17)
  {
    memset(&v54, 0, sizeof(v54));
    v15 = &v54;
    *(&v54.__r_.__value_.__s + 23) = v11 + 1;
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((v12 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v12 | 7) + 1;
    }

    v15 = operator new(v14);
    v54.__r_.__value_.__l.__size_ = v11 + 1;
    v54.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
    v54.__r_.__value_.__r.__words[0] = v15;
  }

  v16 = *v13;
  if (v5 >= 0)
  {
    v17 = this + 80;
  }

  else
  {
    v17 = *v13;
  }

  memmove(v15, v17, v11);
LABEL_38:
  *&v15[v11] = 47;
  (*(*this + 56))(&v51, this);
  if ((v53 & 0x80u) == 0)
  {
    v18 = &v51;
  }

  else
  {
    v18 = v51;
  }

  if ((v53 & 0x80u) == 0)
  {
    v19 = v53;
  }

  else
  {
    v19 = v52;
  }

  v20 = std::string::append(&v54, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v58 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = ctu::fs::file_exists();
  if (SHIBYTE(v58) < 0)
  {
    operator delete(__p[0]);
    if ((v53 & 0x80000000) == 0)
    {
LABEL_46:
      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_51:
      operator delete(v54.__r_.__value_.__l.__data_);
      if (!v22)
      {
        goto LABEL_82;
      }

      goto LABEL_52;
    }
  }

  else if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v51);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_47:
  if (!v22)
  {
    goto LABEL_82;
  }

LABEL_52:
  if (*(this + 19))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 26, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x2AFu, "Root Manifest Source is not NULL", v48, v49, v50, v51);
    goto LABEL_98;
  }

  v23 = *(this + 103);
  if (v23 >= 0)
  {
    v24 = *(this + 103);
  }

  else
  {
    v24 = *(this + 11);
  }

  v25 = v24 + 1;
  if (v24 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_95;
  }

  if (v25 < 0x17)
  {
    memset(&v54, 0, sizeof(v54));
    v27 = &v54;
    *(&v54.__r_.__value_.__s + 23) = v24 + 1;
    if (!v24)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if ((v25 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v25 | 7) + 1;
    }

    v27 = operator new(v26);
    v54.__r_.__value_.__l.__size_ = v24 + 1;
    v54.__r_.__value_.__r.__words[2] = v26 | 0x8000000000000000;
    v54.__r_.__value_.__r.__words[0] = v27;
  }

  v28 = *v13;
  if (v23 >= 0)
  {
    v29 = this + 80;
  }

  else
  {
    v29 = *v13;
  }

  memmove(v27, v29, v24);
LABEL_67:
  *&v27[v24] = 47;
  (*(*this + 56))(&v51, this);
  if ((v53 & 0x80u) == 0)
  {
    v30 = &v51;
  }

  else
  {
    v30 = v51;
  }

  if ((v53 & 0x80u) == 0)
  {
    v31 = v53;
  }

  else
  {
    v31 = v52;
  }

  v32 = std::string::append(&v54, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v58 = v32->__r_.__value_.__r.__words[2];
  *__p = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = operator new(0x30uLL);
  *v34 = &unk_1F5F00F28;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  if (BBUFileDataSource::init(v34, __p, 0))
  {
    (*(*v34 + 8))(v34);
    v34 = 0;
  }

  *(this + 19) = v34;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(__p[0]);
    if ((v53 & 0x80000000) == 0)
    {
LABEL_77:
      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    }
  }

  else if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

  operator delete(v51);
  if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_78:
    if (gBBULogMaskGet(void)::once != -1)
    {
      goto LABEL_91;
    }

    goto LABEL_79;
  }

LABEL_90:
  operator delete(v54.__r_.__value_.__l.__data_);
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_91;
  }

LABEL_79:
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    goto LABEL_82;
  }

LABEL_80:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v35 = (**this)(this);
    _BBULog(3, 0, v35, "", "Loaded Manifest\n", v36, v37, v38, v51);
  }

LABEL_82:
  if (!*(this + 19))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return *(this + 19);
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return *(this + 19);
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v39 = (**this)(this);
      _BBULog(3, 0, v39, "", "loading failed\n", v40, v41, v42, v51);
    }
  }

  return *(this + 19);
}

void sub_1E530DE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::hasManifestSource(BBUEURUpdateSource *this)
{
  if (*(this + 104))
  {
    return *(this + 19) != 0;
  }

  (*(*this + 56))(__p);
  result = BBUEURUpdateSource::containsFile(this, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    return v3;
  }

  return result;
}

void sub_1E530E038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::generateHash(BBUEURUpdateSource *this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x2D4u, "Assertion failure(fZipFile && Firmware data source error.)", v8, v9, v10, v11);
  }

  v4 = *(v2 + 144);
  v5 = operator new(0x18uLL);
  v5[4] = 0;
  *v5 = &unk_1F5F04B00;
  *(v5 + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  BBUDataSource::generateHash(v5, a2, 0);
  (*(*v5 + 8))(v5);
  return 1;
}

uint64_t eUICC::Options::Options(uint64_t a1, const __CFDictionary **a2)
{
  v66 = *MEMORY[0x1E69E9840];
  *a1 = 255;
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 4) = 0;
  *(a1 + 39) = 0;
  v56[0] = 0xAAAAAAAAAAAAAAAALL;
  v56[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v56, *a2);
  v4 = *(a1 + 11);
  *(a1 + 11) = ctu::cf::map_adapter::getBool(v56, @"VinylForceGold");
  v5 = *(a1 + 10);
  *(a1 + 10) = ctu::cf::map_adapter::getBool(v56, @"VinylForceMain");
  ctu::cf::map_adapter::getString();
  if (*(a1 + 39) < 0)
  {
    operator delete(*v3);
  }

  *v3 = *v57;
  v3[2] = v57[2];
  v6 = *(a1 + 42);
  Bool = ctu::cf::map_adapter::getBool(v56, @"restoredInternal");
  *(a1 + 42) = Bool;
  if (Bool)
  {
    v9 = *(a1 + 8);
    *(a1 + 8) = ctu::cf::map_adapter::getBool(v56, @"VinylSkipAll");
    v10 = *(a1 + 9);
    *(a1 + 9) = ctu::cf::map_adapter::getBool(v56, @"VinylOnlyPerso");
    if (ctu::cf::map_adapter::getBool(v56, @"VinylUse4FF"))
    {
      *a1 = 1;
    }

    memset(v57, 170, sizeof(v57));
    memset(__p, 0, sizeof(__p));
    ctu::cf::map_adapter::getString();
    v11 = SHIBYTE(v57[2]);
    v12 = v57;
    v13 = v57[0];
    if (SHIBYTE(v57[2]) < 0)
    {
      v12 = v57[0];
    }

    if (SHIBYTE(v57[2]) >= 0)
    {
      v14 = SHIBYTE(v57[2]);
    }

    else
    {
      v14 = v57[1];
    }

    if (v14)
    {
      v15 = (v14 + v12);
      v16 = v14 - 1;
      v17 = v16;
      v18 = v12;
      do
      {
        if (v18 != v15)
        {
          v20 = 0;
          do
          {
            if (v20[v18] != aEuiccforcepers[v20])
            {
              v19 = &v20[v18];
              if (v20 != 16)
              {
                goto LABEL_22;
              }

              goto LABEL_24;
            }

            v21 = v20 + 1;
            if (v17 == v20)
            {
              break;
            }

            v22 = v20++ == 15;
          }

          while (!v22);
          v19 = &v21[v18];
          if (v21 == 16)
          {
            goto LABEL_24;
          }
        }

LABEL_22:
        v18 = (v18 + 1);
        --v17;
      }

      while (v18 != v15);
      v18 = v15;
      v19 = v15;
LABEL_24:
      *(a1 + 40) = v18 != v19;
      v23 = v16;
      v24 = v12;
      do
      {
        if (v24 != v15)
        {
          v26 = 0;
          do
          {
            if (v26[v24] != aEuiccpersostat[v26])
            {
              v25 = &v26[v24];
              if (v26 != 17)
              {
                goto LABEL_34;
              }

              goto LABEL_36;
            }

            v27 = v26 + 1;
            if (v23 == v26)
            {
              break;
            }

            v22 = v26++ == 16;
          }

          while (!v22);
          v25 = &v27[v24];
          if (v27 == 17)
          {
            goto LABEL_36;
          }
        }

LABEL_34:
        v24 = (v24 + 1);
        --v23;
      }

      while (v24 != v15);
      v24 = v15;
      v25 = v15;
LABEL_36:
      *(a1 + 41) = v24 != v25;
      while (v12 == v15)
      {
LABEL_46:
        v12 = (v12 + 1);
        --v16;
        if (v12 == v15)
        {
          goto LABEL_51;
        }
      }

      v29 = 0;
      do
      {
        if (v29[v12] != aEuiccforcecust[v29])
        {
          v28 = &v29[v12];
          if (v29 != 19)
          {
            goto LABEL_46;
          }

          goto LABEL_49;
        }

        v30 = v29 + 1;
        if (v16 == v29)
        {
          break;
        }

        v22 = v29++ == 18;
      }

      while (!v22);
      v28 = &v30[v12];
      if (v30 != 19)
      {
        goto LABEL_46;
      }

LABEL_49:
      if (v12 != v28)
      {
        *(a1 + 42) = 0;
      }
    }

    else
    {
      *(a1 + 40) = 0;
    }

LABEL_51:
    if (v11 < 0)
    {
      operator delete(v13);
    }
  }

  if (BBUpdaterCommon::isNVRAMKeyPresent(@"BBUForceVinylUpdate", v8))
  {
    *(a1 + 10) = 257;
  }

  memset(__p, 170, sizeof(__p));
  memset(v57, 0, sizeof(v57));
  ctu::cf::map_adapter::getString();
  if (SHIBYTE(v57[2]) < 0)
  {
    operator delete(v57[0]);
    v35 = HIBYTE(__p[2]);
    v32 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v35 = __p[1];
    }

    if (!v35)
    {
LABEL_59:
      if ((v32 & 0x80) == 0)
      {
        goto LABEL_60;
      }

LABEL_83:
      operator delete(__p[0]);
      goto LABEL_60;
    }
  }

  else
  {
    v31 = HIBYTE(__p[2]);
    v32 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v31 = __p[1];
    }

    if (!v31)
    {
      goto LABEL_59;
    }
  }

  HIBYTE(v57[2]) = 9;
  strcpy(v57, "Bootstrap");
  v60 = 3;
  v58 = 1;
  v59[0] = 7105601;
  v61 = 2;
  v62[23] = 21;
  strcpy(v62, "Bootstrap Preferences");
  v63 = 3;
  v64[23] = 15;
  strcpy(v64, "All Preferences");
  v65 = 4;
  v54[0] = 0;
  v54[1] = 0;
  v53 = v54;
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v53, v54, v57, v57);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v53, v54, v59, v59);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v53, v54, v62, v62);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v53, v54, v64, v64);
  v36 = v54[0];
  if (!v54[0])
  {
    goto LABEL_84;
  }

  v37 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
  v38 = v54;
  v39 = v54[0];
  do
  {
    v40 = v38;
    v42 = (v39 + 32);
    v41 = *(v39 + 32);
    if (*(v39 + 55) >= 0)
    {
      v43 = (v39 + 32);
    }

    else
    {
      v43 = *(v39 + 32);
    }

    v44 = strcasecmp(v43, v37);
    if (v44 >= 0)
    {
      v38 = v39;
    }

    v39 = *(v39 + ((v44 >> 28) & 8));
  }

  while (v39);
  if (v38 == v54)
  {
    goto LABEL_84;
  }

  v45 = v40 + 4;
  if (v44 >= 0)
  {
    v45 = v42;
  }

  v46 = *(v38 + 55) >= 0 ? v45 : *v45;
  if (strcasecmp(v37, v46) < 0)
  {
LABEL_84:
    exception = __cxa_allocate_exception(0x210uLL);
    v51 = exception;
    v52 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      LOBYTE(v52) = __p[0];
    }

    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Public/eUICCOptions.cpp", 0x48u, "Invalid Refurb Option %s", v48, v49, v50, v52);
  }

  *(a1 + 4) = *(v38 + 14);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(v36);
  if ((HIBYTE(__p[2]) & 0x80) != 0)
  {
    goto LABEL_83;
  }

LABEL_60:
  MEMORY[0x1E69265E0](v56);
  v33 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E530E7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69265E0](&a19);
  if (*(v26 + 39) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::Options::ToString@<X0>(eUICC::Options *this@<X0>, _BYTE *a2@<X8>)
{
  v60 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59[7] = v4;
  v59[8] = v4;
  v59[5] = v4;
  v59[6] = v4;
  v59[3] = v4;
  v59[4] = v4;
  v59[1] = v4;
  v59[2] = v4;
  v58 = v4;
  v59[0] = v4;
  *v56 = v4;
  v57 = v4;
  v54 = v4;
  v55 = v4;
  v52 = v4;
  v53 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v52);
  v5 = v52;
  *(&v52 + *(v52 - 24) + 8) |= 1u;
  *(&v52 + *(v5 - 24) + 8) = *(&v52 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "=========== eUICC Options ============\n", 39);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "uimSlot       ", 14);
  v8 = MEMORY[0x1E69270D0](v7, *this);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "skipAll       ", 14);
  v11 = MEMORY[0x1E69270B0](v10, *(this + 8));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "onlyPerso     ", 14);
  v14 = MEMORY[0x1E69270B0](v13, *(this + 9));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "forceMain     ", 14);
  v17 = MEMORY[0x1E69270B0](v16, *(this + 10));
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "forceGold     ", 14);
  v20 = MEMORY[0x1E69270B0](v19, *(this + 11));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "forcePerso    ", 14);
  v23 = MEMORY[0x1E69270B0](v22, *(this + 40));
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n", 1);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "alderHost     ", 14);
  v26 = *(this + 39);
  if (v26 >= 0)
  {
    v27 = this + 16;
  }

  else
  {
    v27 = *(this + 2);
  }

  if (v26 >= 0)
  {
    v28 = *(this + 39);
  }

  else
  {
    v28 = *(this + 3);
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\n", 1);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "persoStatic   ", 14);
  v32 = MEMORY[0x1E69270B0](v31, *(this + 41));
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "\n", 1);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "internalBuild ", 14);
  v35 = MEMORY[0x1E69270B0](v34, *(this + 42));
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\n", 1);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "postProcess   ", 14);
  v38 = *(this + 1);
  if (v38 > 2)
  {
    if (v38 != 3)
    {
      if (v38 == 4)
      {
        v41 = operator new(0x20uLL);
        __p[0] = v41;
        *&__p[1] = xmmword_1E5393720;
        qmemcpy(v41, "Clear All eSIM Preferences", 26);
        v39 = v41 + 26;
        v40 = 26;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v41 = operator new(0x28uLL);
    __p[0] = v41;
    *&__p[1] = xmmword_1E5390C30;
    qmemcpy(v41, "Clear Bootstrap eSIM Preferences", 32);
    v39 = v41 + 32;
    v40 = 32;
  }

  else
  {
    if (v38 != 1)
    {
      if (v38 == 2)
      {
        v39 = &__p[2] + 3;
        v40 = 19;
        HIBYTE(__p[2]) = 19;
        qmemcpy(__p, "Delete All Profiles", 19);
LABEL_15:
        v41 = __p;
        goto LABEL_18;
      }

LABEL_14:
      v39 = &__p[1] + 1;
      v40 = 9;
      HIBYTE(__p[2]) = 9;
      qmemcpy(__p, "No Action", 9);
      goto LABEL_15;
    }

    v41 = operator new(0x28uLL);
    __p[0] = v41;
    *&__p[1] = xmmword_1E5392800;
    qmemcpy(v41, "Delete All Non-Bootstrap Profiles", 33);
    v39 = v41 + 33;
    v40 = 33;
  }

LABEL_18:
  *v39 = 0;
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v41, v40);
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "======================================\n", 39);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    v44 = BYTE8(v58);
    if ((BYTE8(v58) & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v46 = v58;
    if (v58 < *(&v55 + 1))
    {
      *&v58 = *(&v55 + 1);
      v46 = *(&v55 + 1);
    }

    v47 = v55;
    v45 = v46 - v55;
    if ((v46 - v55) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  operator delete(__p[0]);
  v44 = BYTE8(v58);
  if ((BYTE8(v58) & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((v44 & 8) == 0)
  {
    v45 = 0;
    a2[23] = 0;
    goto LABEL_34;
  }

  v47 = *(&v53 + 1);
  v45 = *(&v54 + 1) - *(&v53 + 1);
  if (*(&v54 + 1) - *(&v53 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_38:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_26:
  if (v45 >= 0x17)
  {
    if ((v45 | 7) == 0x17)
    {
      v48 = 25;
    }

    else
    {
      v48 = (v45 | 7) + 1;
    }

    v49 = operator new(v48);
    *(a2 + 1) = v45;
    *(a2 + 2) = v48 | 0x8000000000000000;
    *a2 = v49;
    a2 = v49;
    goto LABEL_33;
  }

  a2[23] = v45;
  if (v45)
  {
LABEL_33:
    memmove(a2, v47, v45);
  }

LABEL_34:
  a2[v45] = 0;
  *&v52 = *MEMORY[0x1E69E54E8];
  *(&v52 + *(v52 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v52 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  *(&v52 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v53);
  std::ostream::~ostream();
  return MEMORY[0x1E69273B0](v59);
}

void sub_1E530EE00(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E69273B0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result + 1;
  if (result + 1 != a2)
  {
    v9 = *(a3 + 23) >= 0 ? a3 : *a3;
    v10 = *(a2 + 55) >= 0 ? (a2 + 32) : *(a2 + 32);
    result = strcasecmp(v9, v10);
    if ((result & 0x80000000) == 0)
    {
      result = strcasecmp(v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v15 = v6 + 1;
      v14 = v6[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
          v6 = v15;
          v16 = v15;
        }

        while (v14);
      }

      else
      {
        v16 = v6;
        do
        {
          v27 = v16;
          v16 = v16[2];
        }

        while (*v16 != v27);
      }

      if (v16 == v8)
      {
        goto LABEL_54;
      }

      v30 = v16[4];
      v28 = v16 + 4;
      v29 = v30;
      v31 = (*(v28 + 23) >= 0 ? v28 : v29);
      if (strcasecmp(v9, v31) < 0)
      {
        goto LABEL_54;
      }

      v32 = *v8;
      v15 = v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_54;
      }

      while (1)
      {
        while (1)
        {
          v6 = v32;
          v37 = v32[4];
          v35 = v32 + 4;
          v36 = v37;
          v38 = (*(v35 + 23) >= 0 ? v35 : v36);
          if ((strcasecmp(v9, v38) & 0x80000000) == 0)
          {
            break;
          }

          v32 = *v6;
          v15 = v6;
          if (!*v6)
          {
            goto LABEL_54;
          }
        }

        result = strcasecmp(v38, v9);
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        v32 = v6[1];
        if (!v32)
        {
LABEL_45:
          v15 = v6 + 1;
          goto LABEL_54;
        }
      }
    }
  }

  v11 = *v6;
  if (*v7 == v6)
  {
    v13 = v6;
  }

  else
  {
    if (v11)
    {
      v12 = *v6;
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      v17 = v6;
      do
      {
        v13 = v17[2];
        v18 = *v13 == v17;
        v17 = v13;
      }

      while (v18);
    }

    if (*(v13 + 55) >= 0)
    {
      v19 = (v13 + 4);
    }

    else
    {
      v19 = v13[4];
    }

    if (*(a3 + 23) >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    result = strcasecmp(v19, v20);
    if ((result & 0x80000000) == 0)
    {
      v22 = *v8;
      v15 = v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_54;
      }

      while (1)
      {
        while (1)
        {
          v6 = v22;
          v25 = v22[4];
          v23 = v22 + 4;
          v24 = v25;
          v26 = (*(v23 + 23) >= 0 ? v23 : v24);
          if ((strcasecmp(v20, v26) & 0x80000000) == 0)
          {
            break;
          }

          v22 = *v6;
          v15 = v6;
          if (!*v6)
          {
            goto LABEL_54;
          }
        }

        result = strcasecmp(v26, v20);
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        v22 = v6[1];
        if (!v22)
        {
          goto LABEL_45;
        }
      }
    }
  }

  if (v11)
  {
    v21 = v13;
  }

  else
  {
    v21 = v6;
  }

  if (v11)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v6;
  }

  if (!*v15)
  {
    v6 = v21;
LABEL_54:
    v33 = operator new(0x40uLL);
    v34 = v33;
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v33 + 32), *a4, *(a4 + 8));
    }

    else
    {
      *(v33 + 2) = *a4;
      *(v33 + 6) = *(a4 + 16);
    }

    *(v34 + 14) = *(a4 + 24);
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = v6;
    *v15 = v34;
    v39 = **v7;
    if (v39)
    {
      *v7 = v39;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v7[1], v34);
    ++v7[2];
  }

  return result;
}

void sub_1E530F110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t BBUICE16PersonalizationParameters::getFusingState(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (*(*v3 + 24))(v3);
    *a2 = capabilities::fusing::inferFusingStateFromCertID(v4);
    return 0;
  }

  else
  {
    *a2 = 0;
    return 3;
  }
}

uint64_t BBUICE16PersonalizationParameters::setPublicKeyHash(uint64_t a1, const __CFData *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 40) = a2;
  if (a2)
  {
    v5 = (*(*a2 + 16))(a2);
    a2 = BBUICEPersonalizationParameters::ICECertID::createFromPublicKeyHashData(v5, v6);
  }

  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = a2;
  return result;
}

void BBUICE16PersonalizationParameters::~BBUICE16PersonalizationParameters(BBUICE16PersonalizationParameters *this)
{
  BBUPersonalizationParameters::~BBUPersonalizationParameters(this);

  operator delete(v1);
}

uint64_t BBUPersonalizationParameters::setSerialNumber(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 32) = a2;
  return result;
}

void DaleController::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  v6 = operator new(0x30uLL);
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  ACFUTransport::ACFUTransport(v6);
  v7 = &unk_1F5F03E50;
  *v6 = &unk_1F5F03E50;
  *(v6 + 6) = 0;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
  }

  v9 = v7[9](v6, &v16);
  v10 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = v9;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v9 = v11;
  }

  if ((v9 & 1) == 0)
  {
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    goto LABEL_17;
  }

  v12 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(v6 + 5);
  *(v6 + 4) = v12;
  *(v6 + 5) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v15 = *a3;
  *a3 = v6;
  if (v15)
  {
    v6 = v15;
LABEL_17:
    (*(*v6 + 64))(v6);
  }
}

void sub_1E530F57C(_Unwind_Exception *a1)
{
  v4 = *v1;
  (*(*v2 + 64))(v2);
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 64))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1E530F5F8(_Unwind_Exception *a1)
{
  operator delete(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleController::init(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = ACFUTransport::init();
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v4;
    }
  }

  return result;
}

void DaleController::getBoardParameters(DaleController *this@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0;
  if (a2)
  {
    ACFULogging::getLogInstance(this);
    v5 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
    v27 = 0;
    v28 = 0;
    LODWORD(v29) = 0;
LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  if (*(this + 6) == 2)
  {
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    v26 = 0xAAAAAAAAAAAAAAAALL;
    DaleController_Loader::create(&v26);
    if (v26)
    {
      DaleController_Loader::getBoardParameters(v26, a3, &v23);
      v9 = v23;
      v10 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = v24;
        v27 = v9;
        v28 = v10;
        v12 = v25;
        LODWORD(v29) = v25;
        if (v24)
        {
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }

          v12 = v29;
        }
      }

      else
      {
        v27 = v23;
        v28 = 0;
        v12 = v25;
        LODWORD(v29) = v25;
      }

      if (v12)
      {
        ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage();
        v18 = 0;
      }

      else
      {
        v12 = 1;
        v18 = 1;
      }
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v18 = 0;
      v12 = 1;
    }

    v19 = v26;
    v26 = 0;
    if (v19)
    {
LABEL_26:
      (*(*v19 + 8))(v19);
    }

LABEL_27:
    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v13 = (*(*this + 32))(this);
  if (!v13)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    DaleController_BootROM::create(&v26);
    if (v26)
    {
      DaleController_BootROM::getBoardParameters(v26, &v23);
      v15 = v23;
      v16 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = v24;
        v27 = v15;
        v28 = v16;
        v12 = v25;
        LODWORD(v29) = v25;
        if (v24)
        {
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }

          v12 = v29;
        }
      }

      else
      {
        v27 = v23;
        v28 = 0;
        v12 = v25;
        LODWORD(v29) = v25;
      }

      if (v12)
      {
        ACFULogging::getLogInstance(v14);
        ACFULogging::handleMessage();
        v18 = 0;
      }

      else
      {
        v12 = 1;
        v18 = 1;
      }
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v18 = 0;
      v12 = 1;
    }

    v19 = v26;
    v26 = 0;
    if (v19)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  ACFULogging::getLogInstance(v13);
  v12 = 1;
  ACFULogging::handleMessage();
LABEL_29:
  v20 = v27;
  v21 = v28;
  if (!v28)
  {
    *a4 = v27;
    *(a4 + 8) = 0;
    *(a4 + 16) = v12;
    v22 = v28;
    if (!v28)
    {
      return;
    }

    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  *a4 = v20;
  *(a4 + 8) = v21;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a4 + 16) = v12;
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = v28;
  if (v28)
  {
LABEL_35:
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_1E530FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a8)
  {
    (*(*a8 + 8))(a8);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

ACFULogging *DaleController::pushFirmware_BootROMStage(const DaleImage **this, const DaleFirmware *a2)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  DaleController_BootROM::create(&v8);
  v4 = v8;
  if (v8)
  {
    v5 = DaleController_BootROM::sendLoader(v8, this[20]);
    v6 = v5;
    if ((v5 & 1) == 0)
    {
      ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage();
    }

    (*(*v4 + 8))(v4);
    return v6;
  }

  else
  {
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
    return 0;
  }
}

uint64_t std::optional<std::unordered_map<std::string,std::string>>::~optional(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return a1;
  }

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
LABEL_11:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_11;
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

uint64_t DaleController::pushFirmware(ACFULogging *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v8[0] = *a2;
  v8[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = 0;
  v7[40] = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  result = DaleController::pushFirmware(a1, v8, v7, &v5);
  if (v2)
  {
    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (*(*v2 + 16))(v2);
      std::__shared_weak_count::__release_weak(v2);
      return v4;
    }
  }

  return result;
}

void sub_1E530FE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::optional<std::shared_ptr<BasebandBootLogger>>::~optional(va);
  std::optional<std::unordered_map<std::string,std::string>>::~optional(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 32);
  _Unwind_Resume(a1);
}

uint64_t DaleController::pushFirmware(ACFULogging *a1, char ***a2, uint64_t a3, uint64_t *a4)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  if (*(a4 + 16) == 1)
  {
    v7 = a4[1];
    v47 = *a4;
    v48 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v8 = *a2;
  {
    ACFULogging::getLogInstance(0);
LABEL_86:
    ACFULogging::handleMessage();
    v14 = 0;
    v37 = 3001;
    goto LABEL_66;
  }

  v12 = v10;
  v13 = DaleController::pushFirmware_BootROMStage(v10, v11);
  if ((v13 & 1) == 0)
  {
    ACFULogging::getLogInstance(v13);
    goto LABEL_86;
  }

  if (v47)
  {
    ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage();
    v13 = dispatch_group_create();
    v14 = v13;
    if (v13)
    {
      group = v13;
      dispatch_retain(v13);
      dispatch_group_enter(v14);
      (*(*v47 + 16))(v47, &group, 1);
      v13 = group;
      if (group)
      {
        dispatch_group_leave(group);
        v13 = group;
        if (group)
        {
          dispatch_release(group);
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage();
  v56 = 0;
  v55 = -1;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  DaleController_Loader::create(&v54);
  if (!v54)
  {
    goto LABEL_59;
  }

  v16 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  v53 = Controller;
  if (!Controller)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
LABEL_60:
    v35 = 0;
    v36 = v54;
    v54 = 0;
    if (!v36)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v18 = v54;
  LOBYTE(__p[0]) = 0;
  v52 = 0;
  if (*(a3 + 40) == 1)
  {
    *__p = 0u;
    *v50 = 0u;
    v51 = *(a3 + 32);
    prime = *(a3 + 8);
    if (prime == 1)
    {
      prime = 2;
LABEL_33:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(__p, prime);
LABEL_34:
      for (i = *(a3 + 16); i; i = *i)
      {
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(__p, (i + 2), (i + 2));
      }

      v52 = 1;
      goto LABEL_37;
    }

    if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(*(a3 + 8));
      v20 = __p[1];
      v21 = prime >= __p[1];
      if (prime > __p[1])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
      v21 = 1;
      if (prime)
      {
        goto LABEL_33;
      }
    }

    if (v21)
    {
      goto LABEL_34;
    }

    v22 = vcvtps_u32_f32(v50[1] / v51);
    if (v20 < 3 || (v23 = vcnt_s8(v20), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v22 = std::__next_prime(v22);
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }
    }

    if (prime <= v22)
    {
      prime = v22;
    }

    if (prime >= v20)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_37:
  BasebandCapabilites = DaleController_Loader::getBasebandCapabilites(v18);
  v27 = BasebandCapabilites;
  if (v52 != 1)
  {
    goto LABEL_41;
  }

  v28 = v50[0];
  if (v50[0])
  {
    do
    {
      v34 = *v28;
      if (*(v28 + 63) < 0)
      {
        operator delete(v28[5]);
        if (*(v28 + 39) < 0)
        {
LABEL_54:
          operator delete(v28[2]);
        }
      }

      else if (*(v28 + 39) < 0)
      {
        goto LABEL_54;
      }

      operator delete(v28);
      v28 = v34;
    }

    while (v34);
  }

  BasebandCapabilites = __p[0];
  __p[0] = 0;
  if (BasebandCapabilites)
  {
    operator delete(BasebandCapabilites);
  }

LABEL_41:
  if (v27)
  {
    v29 = TelephonyBasebandSetBasebandProperty();
    v30 = WORD2(v27);
    if (v29)
    {
      v31 = 1;
      goto LABEL_44;
    }

    ACFULogging::getLogInstance(v29);
    ACFULogging::handleMessage();
  }

  else
  {
    ACFULogging::getLogInstance(BasebandCapabilites);
    ACFULogging::handleMessage();
    v30 = 0;
  }

  v31 = 0;
LABEL_44:
  CFRelease(Controller);
  if (!v31)
  {
    goto LABEL_60;
  }

  BootMode = DaleController_Loader::setDeviceConfig(v54);
  if ((BootMode & 1) == 0)
  {
    goto LABEL_59;
  }

  BootMode = DaleController_Loader::getBootMode(v54, &v55, &v56);
  if ((BootMode & 1) == 0)
  {
    goto LABEL_59;
  }

  ACFULogging::getLogInstance(BootMode);
  v32 = v55;
  if ((v55 + 1) <= 3u)
  {
    v33 = off_1E876E8D0[(v55 + 1)];
  }

  BootMode = ACFULogging::handleMessage();
  if ((v32 | 2) != 2 || v56)
  {
    goto LABEL_59;
  }

  if (v32)
  {
    BootMode = DaleController_Loader::verifyFastBootStatus(v54);
    if ((BootMode & 1) == 0)
    {
LABEL_59:
      ACFULogging::getLogInstance(BootMode);
      ACFULogging::handleMessage();
      goto LABEL_60;
    }
  }

  else
  {
    v42 = v54;
    v43 = (*(*v12 + 10))(v12);
    BootMode = DaleController_Loader::processDDR(v42, v43, 1);
    if ((BootMode & 1) == 0)
    {
      goto LABEL_59;
    }

    BootMode = DaleController_Loader::sendImage_BBTicket(v54, v12[22], 0);
    if ((BootMode & 1) == 0)
    {
      goto LABEL_59;
    }

    BootMode = DaleController_Loader::sendImage_BBCfgHashTable(v54, v12[23]);
    if ((BootMode & 1) == 0)
    {
      goto LABEL_59;
    }

    v44 = v54;
    v45 = (*(*v12 + 11))(v12, v30);
    BootMode = DaleController_Loader::sendImage_BBCfgSegment(v44, v45);
    if ((BootMode & 1) == 0)
    {
      goto LABEL_59;
    }

    BootMode = DaleController_Loader::sendImage_Bundle(v54, v12[25]);
    if ((BootMode & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  BootMode = DaleController_Loader::sendImage_Calibration(v54, v12[26]);
  if ((BootMode & 1) == 0)
  {
    goto LABEL_59;
  }

  BootMode = DaleController_Loader::sendImage_ProvisioningManifest(v54, v12[29]);
  if ((BootMode & 1) == 0)
  {
    goto LABEL_59;
  }

  BootMode = DaleController_Loader::sendImage_Nvram(v54, v12[27], 2);
  if ((BootMode & 1) == 0)
  {
    goto LABEL_59;
  }

  BootMode = DaleController_Loader::sendImage_Bundle(v54, v12[28]);
  if ((BootMode & 1) == 0)
  {
    goto LABEL_59;
  }

  v35 = 1;
  v36 = v54;
  v54 = 0;
  if (v36)
  {
LABEL_61:
    v36 = (*(*v36 + 8))(v36);
  }

LABEL_62:
  if (v35)
  {
    v37 = 0;
    if (!v14)
    {
      goto LABEL_66;
    }
  }

  else
  {
    ACFULogging::getLogInstance(v36);
    ACFULogging::handleMessage();
    v37 = 3001;
    if (!v14)
    {
      goto LABEL_66;
    }
  }

  v38 = dispatch_time(0, 5000000000);
  v39 = dispatch_group_wait(v14, v38);
  if (v39)
  {
    ACFULogging::getLogInstance(v39);
    ACFULogging::handleMessage();
  }

LABEL_66:
  v40 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  return v37;
}

void sub_1E5310658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22)
{
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(&a22);
  v25 = *(v23 - 96);
  *(v23 - 96) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
    if (!v22)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v22);
  _Unwind_Resume(a1);
}

uint64_t DaleController::collectExceptionInfo(ACFULogging *a1, const DaleImage **this, char a3, uint64_t a4, uint64_t *a5)
{
  v40 = a1;
  if (*(a5 + 16) == 1)
  {
    v9 = *a5;
    v8 = a5[1];
    v42 = *a5;
    v43 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v42 = 0;
    v43 = 0;
  }

  if (!this || (a1 = DaleController::pushFirmware_BootROMStage(this, this), (a1 & 1) == 0))
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    v36 = 3001;
    goto LABEL_81;
  }

  if (v9)
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    a1 = dispatch_group_create();
    v10 = a1;
    if (a1)
    {
      group = a1;
      dispatch_retain(a1);
      dispatch_group_enter(v10);
      (*(*v9 + 16))(v9, &group, 1);
      a1 = group;
      if (group)
      {
        dispatch_group_leave(group);
        a1 = group;
        if (group)
        {
          dispatch_release(group);
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  LOBYTE(v50) = 0;
  v48 = -1;
  v49.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  DaleController_Loader::create(&v49);
  if (!v49.__r_.__value_.__r.__words[0])
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_71;
  }

  LOBYTE(__p) = 0;
  v47 = 0;
  BasebandCapabilites = DaleController_Loader::getBasebandCapabilites(v49.__r_.__value_.__l.__data_);
  v12 = BasebandCapabilites;
  if (v47 == 1)
  {
    v13 = v46;
    if (!v46)
    {
LABEL_22:
      BasebandCapabilites = __p;
      __p = 0;
      if (BasebandCapabilites)
      {
        operator delete(BasebandCapabilites);
      }

      goto LABEL_24;
    }

    while (1)
    {
      v14 = *v13;
      if (v13[63] < 0)
      {
        operator delete(*(v13 + 5));
        if ((v13[39] & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        operator delete(*(v13 + 2));
        operator delete(v13);
        v13 = v14;
        if (!v14)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v13[39] < 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        operator delete(v13);
        v13 = v14;
        if (!v14)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_24:
  if ((v12 & 1) == 0)
  {
    ACFULogging::getLogInstance(BasebandCapabilites);
    ACFULogging::handleMessage();
    v21 = 0;
    v22 = v49.__r_.__value_.__r.__words[0];
    v49.__r_.__value_.__r.__words[0] = 0;
    if (!v22)
    {
      goto LABEL_39;
    }

LABEL_38:
    v22 = (*(*v22 + 8))(v22);
    goto LABEL_39;
  }

  BootMode = DaleController_Loader::setDeviceConfig(v49.__r_.__value_.__l.__data_);
  if (BootMode)
  {
    BootMode = DaleController_Loader::getBootMode(v49.__r_.__value_.__l.__data_, &v48, &v50);
    if (BootMode)
    {
      ACFULogging::getLogInstance(BootMode);
      v16 = v48;
      if ((v48 + 1) <= 3u)
      {
        v17 = off_1E876E8D0[(v48 + 1)];
      }

      v18 = v50;
      BootMode = ACFULogging::handleMessage();
      if (v16 == 1)
      {
        if (v18)
        {
          BootMode = DaleController_Loader::getCrashReason(v49.__r_.__value_.__l.__data_, a4);
          if (BootMode)
          {
            if (a3 & 1) != 0 || (v12 & 0x10000) != 0 && (v19 = v49.__r_.__value_.__r.__words[0], v20 = (*(*this + 10))(this), BootMode = DaleController_Loader::processDDR(v19, v20, 0), (BootMode) && (BootMode = DaleController_Loader::sendImage_BBTicket(v49.__r_.__value_.__l.__data_, this[22], 0), (BootMode) && (BootMode = DaleController_Loader::sendImage_Bundle(v49.__r_.__value_.__l.__data_, this[28]), (BootMode))
            {
              v21 = 1;
              v22 = v49.__r_.__value_.__r.__words[0];
              v49.__r_.__value_.__r.__words[0] = 0;
              if (!v22)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }
          }
        }
      }
    }
  }

  ACFULogging::getLogInstance(BootMode);
LABEL_71:
  ACFULogging::handleMessage();
  v21 = 0;
  v22 = v49.__r_.__value_.__r.__words[0];
  v49.__r_.__value_.__r.__words[0] = 0;
  if (v22)
  {
    goto LABEL_38;
  }

LABEL_39:
  if ((v21 & 1) == 0)
  {
    goto LABEL_69;
  }

  if (a3)
  {
    goto LABEL_76;
  }

  v23 = *(v40 + 1);
  v50 = 0;
  v24 = ACFUDiagnostics::copyDiagnosticsPath(v23);
  v26 = v24;
  v50 = v24;
  if (!v24)
  {
    ACFULogging::getLogInstance(0);
    v22 = ACFULogging::handleMessage();
    goto LABEL_69;
  }

  v27 = ACFUCommon::stringFromCFString(&__p, v24, v25);
  v28 = __p;
  v29 = v45;
  v30 = v46;
  if (v46 >= 0)
  {
    v31 = HIBYTE(v46);
  }

  else
  {
    v31 = v45;
  }

  if (!v31)
  {
    ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage();
  }

  CFRelease(v26);
  if (!v31)
  {
LABEL_74:
    v35 = 0;
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_57;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v49, v28, v29);
  }

  else
  {
    v49.__r_.__value_.__r.__words[0] = v28;
    v49.__r_.__value_.__l.__size_ = v29;
    v49.__r_.__value_.__r.__words[2] = v30;
  }

  v32 = DaleController_ExceptionDump::create(&v49, &__p);
  v33 = __p;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (!v33)
  {
    ACFULogging::getLogInstance(v32);
    v22 = ACFULogging::handleMessage();
    goto LABEL_74;
  }

  v34 = DaleController_ExceptionDump::handshake(v33);
  if (v34)
  {
    ACFULogging::getLogInstance(v34);
    ACFULogging::handleMessage();
    v34 = DaleController_ExceptionDump::transfer(v33);
    if (v34)
    {
      v35 = 1;
      v22 = (*(*v33 + 8))(v33);
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_75;
    }
  }

  ACFULogging::getLogInstance(v34);
  ACFULogging::handleMessage();
  v35 = 0;
  v22 = (*(*v33 + 8))(v33);
  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_75:
    operator delete(v28);
    if (v35)
    {
      goto LABEL_76;
    }

LABEL_69:
    ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage();
    v36 = 3001;
    goto LABEL_77;
  }

LABEL_57:
  if ((v35 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_76:
  v36 = 0;
LABEL_77:
  if (v10)
  {
    v37 = dispatch_time(0, 5000000000);
    v38 = dispatch_group_wait(v10, v37);
    if (v38)
    {
      ACFULogging::getLogInstance(v38);
      ACFULogging::handleMessage();
    }

    dispatch_release(v10);
  }

LABEL_81:
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  return v36;
}

void sub_1E5310E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t DaleController::ping(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleController::reset(DaleController *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v1 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  if (Controller)
  {
    v3 = TelephonyBasebandPowercycleModem();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage();
      v4 = 1;
    }

    CFRelease(Controller);
    return v4;
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    return 1;
  }
}

void sub_1E53110F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t DaleController::warmReset(DaleController *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v1 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  if (Controller)
  {
    v3 = TelephonyBasebandResetModem();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage();
      v4 = 1;
    }

    CFRelease(Controller);
    return v4;
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    return 1;
  }
}

void sub_1E5311208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t DaleController::warmResetForce(DaleController *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v1 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  if (Controller)
  {
    v3 = TelephonyBasebandForceResetModem();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage();
      v4 = 1;
    }

    CFRelease(Controller);
    return v4;
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    return 1;
  }
}

void sub_1E5311318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t DaleController::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  return 2;
}

void DaleController::~DaleController(DaleController *this)
{
  *this = &unk_1F5F03E50;
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  ACFUTransport::~ACFUTransport(this);
}

{
  *this = &unk_1F5F03E50;
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    ACFUTransport::~ACFUTransport(this);
  }

  else
  {
    ACFUTransport::~ACFUTransport(this);
  }

  operator delete(v2);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v39, a2, v7);
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
  memset(v39, 170, sizeof(v39));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>(a1, v9, a3, v39);
  v25 = (*(a1 + 24) + 1);
  v26 = *(a1 + 32);
  if (!v10 || (v26 * v10) < v25)
  {
    v30 = 1;
    if (v10 >= 3)
    {
      v30 = (v10 & (v10 - 1)) != 0;
    }

    v31 = v30 | (2 * v10);
    v32 = vcvtps_u32_f32(v25 / v26);
    if (v31 <= v32)
    {
      prime = v32;
    }

    else
    {
      prime = v31;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v34 = *(a1 + 8);
    if (prime > *&v34)
    {
      goto LABEL_59;
    }

    if (prime < *&v34)
    {
      v35 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (*&v34 < 3uLL || (v36 = vcnt_s8(v34), v36.i16[0] = vaddlv_u8(v36), v36.u32[0] > 1uLL))
      {
        v35 = std::__next_prime(v35);
      }

      else
      {
        v37 = 1 << -__clz(v35 - 1);
        if (v35 >= 2)
        {
          v35 = v37;
        }
      }

      if (prime <= v35)
      {
        prime = v35;
      }

      if (prime < *&v34)
      {
LABEL_59:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v12 = v9 % v10;
        v27 = *a1;
        v28 = *(*a1 + 8 * (v9 % v10));
        if (v28)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v12 = v9;
        v27 = *a1;
        v28 = *(*a1 + 8 * v9);
        if (v28)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v12 = (v10 - 1) & v9;
      v27 = *a1;
      v28 = *(*a1 + 8 * v12);
      if (v28)
      {
        goto LABEL_46;
      }
    }

LABEL_72:
    v14 = v39[0];
    *v39[0] = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v27 + 8 * v12) = a1 + 16;
    if (*v14)
    {
      v38 = *(*v14 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v38 >= v10)
        {
          v38 %= v10;
        }

        *(v27 + 8 * v38) = v14;
      }

      else
      {
        *(v27 + 8 * (v38 & (v10 - 1))) = v14;
      }
    }

    goto LABEL_47;
  }

  v27 = *a1;
  v28 = *(*a1 + 8 * v12);
  if (!v28)
  {
    goto LABEL_72;
  }

LABEL_46:
  v14 = v39[0];
  *v39[0] = *v28;
  *v28 = v14;
LABEL_47:
  ++*(a1 + 24);
  return v14;
}