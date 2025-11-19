void sub_1E52A7330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  __cxa_free_exception(v46);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

void BBUEUR20UpdateSource::initSecFile(BBUEUR20UpdateSource *this)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = (*(*this + 64))(this);
  if (v2)
  {
    if ((*(this + 408) & 1) == 0)
    {
      v3 = v2;
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v4 = (**this)(this);
        _BBULog(3, 0, v4, "", "Detected it is unfused and there is fusing source. So, fetching sec.elf from fusing source.\n", v5, v6, v7, v87);
      }

LABEL_7:
      v96 = 0u;
      v97 = 0u;
      *v95 = 0u;
      BBUDataSource::generateHash(v3, v95, 1);
      v8 = operator new(0x30uLL);
      v92 = v8;
      v9 = v96;
      *v8 = *v95;
      v8[1] = v9;
      v8[2] = v97;
      v93 = v8 + 3;
      v94 = v8 + 3;
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
        v10 = (**this)(this);
        ctu::hex();
        if (v91 >= 0)
        {
          v14 = __p;
        }

        else
        {
          LOBYTE(v14) = __p[0];
        }

        _BBULog(3, 0, v10, "", "Fusing Source SHA-384: %s\n", v11, v12, v13, v14);
        if (v91 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_15:
      v15 = (*(*v3 + 24))(v3);
      v16 = v15;
      v17 = operator new[](v15);
      v89 = -1431655766;
      if ((*(*v3 + 16))(v3, v17, v15, &v89, 0))
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 122, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x247u, "Failed to copy data from fusing source", v59, v60, v61, v87);
      }

      else
      {
        if (v89 == v15)
        {
          v18 = *MEMORY[0x1E695E480];
          v19 = CFDataCreate(*MEMORY[0x1E695E480], v17, v16);
          if (!v19)
          {
            v65 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v65, 121, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x24Bu, "Failed to create CFDataRef from the buffer", v66, v67, v68, v87);
          }

          format = kCFPropertyListXMLFormat_v1_0;
          v20 = CFPropertyListCreateWithData(v18, v19, 2uLL, &format, 0);
          v21 = v20;
          if (!v20)
          {
            v69 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v69, 121, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x250u, "Failed to create fusing dictionary from plist", v70, v71, v72, v87);
          }

          Value = CFDictionaryGetValue(v20, @"Instructions");
          v23 = Value;
          if (Value)
          {
            v24 = CFGetTypeID(Value);
            if (v24 == CFArrayGetTypeID())
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v23, 0);
              v26 = ValueAtIndex;
              if (ValueAtIndex)
              {
                v27 = CFGetTypeID(ValueAtIndex);
                if (v27 == CFDataGetTypeID())
                {
                  v28 = operator new(0x18uLL);
                  v28[4] = 0;
                  *v28 = &unk_1F5F04B00;
                  *(v28 + 1) = v26;
                  CFRetain(v26);
                  v96 = 0u;
                  v97 = 0u;
                  *v95 = 0u;
                  BBUDataSource::generateHash(v28, v95, 1);
                  v29 = operator new(0x30uLL);
                  v30 = v96;
                  *v29 = *v95;
                  v29[1] = v30;
                  v29[2] = v97;
                  if (v92)
                  {
                    v93 = v92;
                    operator delete(v92);
                  }

                  v92 = v29;
                  v93 = v29 + 3;
                  v94 = v29 + 3;
                  if (gBBULogMaskGet(void)::once == -1)
                  {
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                    {
LABEL_27:
                      if ((gBBULogVerbosity & 0x80000000) == 0)
                      {
                        v31 = (**this)(this);
                        ctu::hex();
                        if (v91 >= 0)
                        {
                          v35 = __p;
                        }

                        else
                        {
                          LOBYTE(v35) = __p[0];
                        }

                        _BBULog(3, 0, v31, "", "sec.elf SHA-384: %s\n", v32, v33, v34, v35);
                        if (v91 < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }
                    }
                  }

                  else
                  {
                    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  CFRelease(v21);
                  CFRelease(v19);
                  operator delete[](v17);
                  if (v92)
                  {
                    v93 = v92;
                    operator delete(v92);
                  }

                  goto LABEL_49;
                }

                v80 = __cxa_allocate_exception(0x210uLL);
                _BBUException::_BBUException(v80, 124, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x25Bu, "Failed to get sec.elf in CFDataRef type", v84, v85, v86, v87);
              }

              else
              {
                v80 = __cxa_allocate_exception(0x210uLL);
                _BBUException::_BBUException(v80, 124, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x25Au, "Failed to get sec.elf in Instructions array", v81, v82, v83, v87);
              }
            }

            v73 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v73, 123, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x254u, "Failed to get Instructions as CFArrayRef type", v77, v78, v79, v87);
          }

          else
          {
            v73 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v73, 123, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x253u, "Failed to get Instructions in fusingprogram.plist", v74, v75, v76, v87);
          }
        }

        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 122, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x248u, "Failed due to copied size (%d) and original length (%d) is different.", v62, v63, v64, v89);
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_39;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v36 = (**this)(this);
      _BBULog(3, 1, v36, "", "Fusing source is not found.\n", v37, v38, v39, v87);
    }
  }

LABEL_39:
  BYTE7(v96) = 7;
  strcpy(v95, "sec.elf");
  v40 = BBUEURUpdateSource::containsFile(this, v95);
  if (SBYTE7(v96) < 0)
  {
    v41 = v40;
    operator delete(v95[0]);
    if (!v41)
    {
      goto LABEL_54;
    }
  }

  else if (!v40)
  {
    goto LABEL_54;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_47;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v42 = (**this)(this);
    _BBULog(3, 1, v42, "", "Detected it is fused or fusing source is not found. Use the dummy sec.elf\n", v43, v44, v45, v87);
  }

LABEL_47:
  BYTE7(v96) = 7;
  strcpy(v95, "sec.elf");
  DataSource = BBUEURUpdateSource::createDataSource(this, v95, 0);
  v28 = DataSource;
  if (SBYTE7(v96) < 0)
  {
    operator delete(v95[0]);
    if (v28)
    {
      goto LABEL_49;
    }

LABEL_54:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_58;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v53 = (**this)(this);
      _BBULog(3, 0, v53, "", "File not present: %s\n", v54, v55, v56, "sec.elf");
    }

    goto LABEL_58;
  }

  if (!DataSource)
  {
    goto LABEL_54;
  }

LABEL_49:
  v47 = operator new(0x20uLL);
  *v47 = &unk_1F5F014B0;
  v47[1] = v28;
  v47[2] = 0;
  *(v47 + 6) = 0;
  v48 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v48, v28, 0);
  v47[2] = v48;
  *v47 = &unk_1F5F01300;
  *(this + 50) = v47;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_58;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v49 = (**this)(this);
    _BBULog(3, 0, v49, "", "Loaded SEC\n", v50, v51, v52, v87);
  }

LABEL_58:
  v57 = *MEMORY[0x1E69E9840];
}

void sub_1E52A8298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR20UpdateSource::eraseBasebandFilesystem(BBUEUR20UpdateSource *this)
{
  memset(&v84, 170, sizeof(v84));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    __dst.__pn_.__r_.__value_.__r.__words[0] = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  v75[0] = v2;
  v75[1] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v2, &v84);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v83 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82[7] = v7;
  v82[8] = v7;
  v82[5] = v7;
  v82[6] = v7;
  v82[3] = v7;
  v82[4] = v7;
  v82[1] = v7;
  v82[2] = v7;
  v82[0] = v7;
  v80 = v7;
  v81 = v7;
  v78 = v7;
  *__p = v7;
  v76 = v7;
  v77 = v7;
  *v75 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](v75);
  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v84;
  }

  else
  {
    v8 = v84.__r_.__value_.__r.__words[0];
  }

  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v84.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v8, size);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "efs", 3);
  v12 = MEMORY[0x1E69270E0](v11, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".bin", 4);
  v13 = &v78;
  v14 = *(this + 1);
  if ((BYTE8(v81) & 0x10) != 0)
  {
    v17 = v81;
    v18 = &v78;
    if (v81 < *(&v78 + 1))
    {
      *&v81 = *(&v78 + 1);
      v17 = *(&v78 + 1);
      v18 = &v78;
    }
  }

  else
  {
    if ((BYTE8(v81) & 8) == 0)
    {
      v15 = 0;
      *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
      p_dst = &__dst;
      goto LABEL_32;
    }

    v17 = *(&v77 + 1);
    v18 = &v76 + 1;
  }

  v19 = *v18;
  v15 = v17 - *v18;
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

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

    p_dst = operator new(v20);
    __dst.__pn_.__r_.__value_.__l.__size_ = v15;
    __dst.__pn_.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
    __dst.__pn_.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_31;
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v17 - *v18;
  p_dst = &__dst;
  if (v15)
  {
LABEL_31:
    memmove(p_dst, v19, v15);
  }

LABEL_32:
  p_dst->__pn_.__r_.__value_.__s.__data_[v15] = 0;
  v21 = &__dst;
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(v14, "generating empty file for %s with size %u", v21, 0x100000);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    v22 = BYTE8(v81);
    if ((BYTE8(v81) & 0x10) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    v25 = v81;
    v26 = &v78;
    if (v81 < *(&v78 + 1))
    {
      *&v81 = *(&v78 + 1);
      v25 = *(&v78 + 1);
      v26 = &v78;
    }

    goto LABEL_42;
  }

  v22 = BYTE8(v81);
  if ((BYTE8(v81) & 0x10) != 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if ((v22 & 8) == 0)
  {
    v23 = 0;
    *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
    v24 = &__dst;
    goto LABEL_51;
  }

  v25 = *(&v77 + 1);
  v26 = &v76 + 1;
LABEL_42:
  v27 = *v26;
  v23 = v25 - *v26;
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v23 | 7) + 1;
    }

    v24 = operator new(v28);
    __dst.__pn_.__r_.__value_.__l.__size_ = v23;
    __dst.__pn_.__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
    __dst.__pn_.__r_.__value_.__r.__words[0] = v24;
    goto LABEL_50;
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v25 - *v26;
  v24 = &__dst;
  if (v23)
  {
LABEL_50:
    memmove(v24, v27, v23);
  }

LABEL_51:
  v24->__pn_.__r_.__value_.__s.__data_[v23] = 0;
  v29 = BBUScratchFile::createWithFile(&__dst, 0x100000);
  v30 = v29;
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if (v30)
    {
      goto LABEL_53;
    }
  }

  else if (v29)
  {
LABEL_53:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v31 = (**this)(this);
      _BBULog(3, 0, v31, "", "Failed generating empty EFS file %u\n", v32, v33, v34, 1);
    }

    goto LABEL_83;
  }

  if ((BYTE8(v81) & 0x10) != 0)
  {
    v37 = v81;
    if (v81 < *(&v78 + 1))
    {
      *&v81 = *(&v78 + 1);
      v37 = *(&v78 + 1);
    }
  }

  else
  {
    if ((BYTE8(v81) & 8) == 0)
    {
      v35 = 0;
      *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
      v36 = &__dst;
      goto LABEL_73;
    }

    v37 = *(&v77 + 1);
    v13 = &v76 + 1;
  }

  v38 = *v13;
  v35 = v37 - *v13;
  if (v35 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v39 = 25;
    }

    else
    {
      v39 = (v35 | 7) + 1;
    }

    v36 = operator new(v39);
    __dst.__pn_.__r_.__value_.__l.__size_ = v35;
    __dst.__pn_.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
    __dst.__pn_.__r_.__value_.__r.__words[0] = v36;
  }

  else
  {
    *(&__dst.__pn_.__r_.__value_.__s + 23) = v37 - *v13;
    v36 = &__dst;
    if (!v35)
    {
      goto LABEL_73;
    }
  }

  memmove(v36, v38, v35);
LABEL_73:
  v36->__pn_.__r_.__value_.__s.__data_[v35] = 0;
  v40 = operator new(0x30uLL);
  *v40 = &unk_1F5F00F28;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  if (BBUFileDataSource::init(v40, &__dst, 0))
  {
    (*(*v40 + 8))(v40);
    v40 = 0;
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v41 = **(this + 29);
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = operator new(0x58uLL);
  BBUEUREFSImage::BBUEUREFSImage(v42, v40, 1, 0);
  **(this + 29) = v42;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_83;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v43 = (**this)(this);
    _BBULog(3, 0, v43, "", "Loaded EFS%u\n", v44, v45, v46, 1);
  }

LABEL_83:
  v47 = *(MEMORY[0x1E69E54E8] + 24);
  v75[0] = *MEMORY[0x1E69E54E8];
  *(v75 + *(v75[0] - 3)) = v47;
  v75[1] = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(v80) < 0)
  {
    operator delete(__p[1]);
  }

  v75[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v76);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v82);
  if (v30)
  {
    goto LABEL_114;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v48 = off_1ED944170;
  if (!off_1ED944170)
  {
    v49 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v49);
    v85 = v49;
    v50 = operator new(0x20uLL);
    *v50 = &unk_1F5F05A00;
    v50[1] = 0;
    v50[2] = 0;
    v50[3] = v49;
    v51 = off_1ED944178;
    off_1ED944170 = v49;
    off_1ED944178 = v50;
    if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    v48 = off_1ED944170;
  }

  v52 = off_1ED944178;
  __dst.__pn_.__r_.__value_.__r.__words[0] = v48;
  __dst.__pn_.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v48, v75);
  if ((SBYTE7(v76) & 0x80u) == 0)
  {
    v60 = v75;
  }

  else
  {
    v60 = v75[0];
  }

  if (!v60)
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v54, v55, v56, v57, v58, v59, 0);
    goto LABEL_102;
  }

  if ((bbufs::prepareDestination(v60, v53) & 1) == 0)
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v61, v62, v63, v64, v65, v66, v73);
LABEL_102:
    v67 = 0;
    if (SBYTE7(v76) < 0)
    {
      goto LABEL_105;
    }

    goto LABEL_103;
  }

  v67 = 1;
  if (SBYTE7(v76) < 0)
  {
LABEL_105:
    operator delete(v75[0]);
    if (!v52)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_103:
  if (!v52)
  {
LABEL_107:
    if (v67)
    {
LABEL_108:
      v30 = 0;
      goto LABEL_114;
    }

    goto LABEL_110;
  }

LABEL_106:
  if (atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_107;
  }

  (v52->__on_zero_shared)(v52);
  std::__shared_weak_count::__release_weak(v52);
  if (v67)
  {
    goto LABEL_108;
  }

LABEL_110:
  if (gBBULogMaskGet(void)::once == -1)
  {
    v30 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_114;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v30 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_114;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v68 = (**this)(this);
    _BBULog(3, 0, v68, "", "failed preparing filesystem after erase\n", v69, v70, v71, v73);
  }

LABEL_114:
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  return v30;
}

void sub_1E52A8D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v23 - 104));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  _Unwind_Resume(a1);
}

char *BBUEUR20UpdateSource::copyHashData(BBUEUR20UpdateSource *this, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src[1] = v3;
    __src[2] = v3;
    __src[0] = v3;
    v37[1] = v3;
    v37[2] = v3;
    v36[2] = v3;
    v37[0] = v3;
    v36[0] = v3;
    v36[1] = v3;
    v35[1] = v3;
    v35[2] = v3;
    v35[0] = v3;
    v4 = *(this + 21);
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 89, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2B3u, "Assertion failure(fSBLImage && Failed loading SBL image for creating hash.)", v20, v21, v22, v35[0]);
    }

    (*(*v4 + 56))(v4, __src, 1);
    v5 = *(this + 32);
    if (!v5)
    {
      v23 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v23, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2B6u, "Assertion failure(fAcdbImage && Failed loading ACDB image for creating hash.)", v24, v25, v26, v35[0]);
    }

    (*(*v5 + 56))(v5, v37, 1);
    v6 = *(this + 33);
    if (!v6)
    {
      v27 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v27, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2B9u, "Assertion failure(fBbcfgImage && Failed loading BBCFG image for creating hash.)", v28, v29, v30, v35[0]);
    }

    (*(*v6 + 56))(v6, v36, 1);
    v7 = *(this + 39);
    if (!v7)
    {
      v31 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v31, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x2BCu, "Assertion failure(fOEMMiscImage && Failed loading OEMMisc image for creating hash.)", v32, v33, v34, v35[0]);
    }

    (*(*v7 + 56))(v7, v35, 1);
    v8 = operator new(0xC8uLL);
    *v8 = &unk_1F5F00F90;
    v9 = off_1F5F00FB0(v8);
    memcpy(v8 + 8, __src, v9);
    v10 = (*(*v8 + 32))(v8);
    memcpy(v8 + 56, v37, v10);
    v11 = (*(*v8 + 32))(v8);
    memcpy(v8 + 104, v36, v11);
    v12 = (*(*v8 + 32))(v8);
    memcpy(v8 + 152, v35, v12);
  }

  else
  {
    v8 = operator new(0xC8uLL);
    *v8 = &unk_1F5F00F90;
    v13 = off_1F5F00FB0(v8);
    bzero(v8 + 8, v13);
    v14 = (*(*v8 + 32))(v8);
    bzero(v8 + 56, v14);
    v15 = (*(*v8 + 32))(v8);
    bzero(v8 + 104, v15);
    v16 = (*(*v8 + 32))(v8);
    bzero(v8 + 152, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t BBUEUR20UpdateSource::getProgrammerSource(BBUEUR20UpdateSource *this, int a2)
{
  if (a2)
  {
    v2 = *(this + 21);
    if (v2)
    {
      return (*(*v2 + 64))();
    }
  }

  else
  {
    v2 = *(this + 20);
    if (v2)
    {
      return (*(*v2 + 64))();
    }
  }

  return 0;
}

uint64_t *BBUEUR20UpdateSource::getItems(BBUEUR20UpdateSource *this)
{
  v2 = operator new(0x18uLL);
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  v3 = *(this + 21);
  SBLType = BBUEURUpdateSource::getSBLType(this);
  if (v3)
  {
    v5 = BBUProgrammer::Item::createFromImage(SBLType, v3);
    v6 = operator new(0x18uLL);
    v6[1] = v2;
    v6[2] = v5;
    v7 = *v2;
    *v6 = *v2;
    *(v7 + 8) = v6;
    *v2 = v6;
    ++v2[2];
  }

  v8 = *(this + 34);
  APDPType = BBUEURUpdateSource::getAPDPType(this);
  if (v8)
  {
    v10 = BBUProgrammer::Item::createFromImage(APDPType, v8);
    v11 = operator new(0x18uLL);
    v11[1] = v2;
    v11[2] = v10;
    v12 = *v2;
    *v11 = *v2;
    *(v12 + 8) = v11;
    *v2 = v11;
    ++v2[2];
  }

  v13 = *(this + 35);
  DEVCFGType = BBUEURUpdateSource::getDEVCFGType(this);
  if (v13)
  {
    v15 = BBUProgrammer::Item::createFromImage(DEVCFGType, v13);
    v16 = operator new(0x18uLL);
    v16[1] = v2;
    v16[2] = v15;
    v17 = *v2;
    *v16 = *v2;
    *(v17 + 8) = v16;
    *v2 = v16;
    ++v2[2];
  }

  v18 = *(this + 50);
  SECType = BBUEURUpdateSource::getSECType(this);
  if (v18)
  {
    v20 = BBUProgrammer::Item::createFromImage(SECType, v18);
    v21 = operator new(0x18uLL);
    v21[1] = v2;
    v21[2] = v20;
    v22 = *v2;
    *v21 = *v2;
    *(v22 + 8) = v21;
    *v2 = v21;
    ++v2[2];
  }

  v23 = *(this + 36);
  HYPType = BBUEURUpdateSource::getHYPType(this);
  if (v23)
  {
    v25 = BBUProgrammer::Item::createFromImage(HYPType, v23);
    v26 = operator new(0x18uLL);
    v26[1] = v2;
    v26[2] = v25;
    v27 = *v2;
    *v26 = *v2;
    *(v27 + 8) = v26;
    *v2 = v26;
    ++v2[2];
  }

  v28 = *(this + 37);
  AOPType = BBUEURUpdateSource::getAOPType(this);
  if (v28)
  {
    v30 = BBUProgrammer::Item::createFromImage(AOPType, v28);
    v31 = operator new(0x18uLL);
    v31[1] = v2;
    v31[2] = v30;
    v32 = *v2;
    *v31 = *v2;
    *(v32 + 8) = v31;
    *v2 = v31;
    ++v2[2];
  }

  v33 = *(this + 26);
  APPSType = BBUEURUpdateSource::getAPPSType(this);
  if (v33)
  {
    v35 = BBUProgrammer::Item::createFromImage(APPSType, v33);
    v36 = operator new(0x18uLL);
    v36[1] = v2;
    v36[2] = v35;
    v37 = *v2;
    *v36 = *v2;
    *(v37 + 8) = v36;
    *v2 = v36;
    ++v2[2];
  }

  v38 = *(this + 27);
  QDSP6SWType = BBUEURUpdateSource::getQDSP6SWType(this);
  if (v38)
  {
    v40 = BBUProgrammer::Item::createFromImage(QDSP6SWType, v38);
    v41 = operator new(0x18uLL);
    v41[1] = v2;
    v41[2] = v40;
    v42 = *v2;
    *v41 = *v2;
    *(v42 + 8) = v41;
    *v2 = v41;
    ++v2[2];
  }

  v43 = *(this + 28);
  TZType = BBUEURUpdateSource::getTZType(this);
  if (v43)
  {
    v45 = BBUProgrammer::Item::createFromImage(TZType, v43);
    v46 = operator new(0x18uLL);
    v46[1] = v2;
    v46[2] = v45;
    v47 = *v2;
    *v46 = *v2;
    *(v47 + 8) = v46;
    *v2 = v46;
    ++v2[2];
  }

  v48 = **(this + 29);
  EFS1Type = BBUEURUpdateSource::getEFS1Type(this);
  if (v48)
  {
    v50 = BBUProgrammer::Item::createFromImage(EFS1Type, v48);
    v51 = operator new(0x18uLL);
    v51[1] = v2;
    v51[2] = v50;
    v52 = *v2;
    *v51 = *v2;
    *(v52 + 8) = v51;
    *v2 = v51;
    ++v2[2];
  }

  v53 = *(*(this + 29) + 8);
  EFS2Type = BBUEURUpdateSource::getEFS2Type(this);
  if (v53)
  {
    v55 = BBUProgrammer::Item::createFromImage(EFS2Type, v53);
    v56 = operator new(0x18uLL);
    v56[1] = v2;
    v56[2] = v55;
    v57 = *v2;
    *v56 = *v2;
    *(v57 + 8) = v56;
    *v2 = v56;
    ++v2[2];
  }

  v58 = *(*(this + 29) + 16);
  EFS3Type = BBUEURUpdateSource::getEFS3Type(this);
  if (v58)
  {
    v60 = BBUProgrammer::Item::createFromImage(EFS3Type, v58);
    v61 = operator new(0x18uLL);
    v61[1] = v2;
    v61[2] = v60;
    v62 = *v2;
    *v61 = *v2;
    *(v62 + 8) = v61;
    *v2 = v61;
    ++v2[2];
  }

  v63 = *(this + 32);
  ACDBType = BBUEURUpdateSource::getACDBType(this);
  if (v63)
  {
    v65 = BBUProgrammer::Item::createFromImage(ACDBType, v63);
    v66 = operator new(0x18uLL);
    v66[1] = v2;
    v66[2] = v65;
    v67 = *v2;
    *v66 = *v2;
    *(v67 + 8) = v66;
    *v2 = v66;
    ++v2[2];
  }

  v68 = *(this + 5);
  CalType = BBUEURUpdateSource::getCalType(this);
  if (v68)
  {
    v70 = BBUProgrammer::Item::createFromImage(CalType, v68);
    v71 = operator new(0x18uLL);
    v71[1] = v2;
    v71[2] = v70;
    v72 = *v2;
    *v71 = *v2;
    *(v72 + 8) = v71;
    *v2 = v71;
    ++v2[2];
  }

  v73 = *(this + 6);
  ProvType = BBUEURUpdateSource::getProvType(this);
  if (v73)
  {
    v75 = BBUProgrammer::Item::createFromImage(ProvType, v73);
    v76 = operator new(0x18uLL);
    v76[1] = v2;
    v76[2] = v75;
    v77 = *v2;
    *v76 = *v2;
    *(v77 + 8) = v76;
    *v2 = v76;
    ++v2[2];
  }

  v78 = *(this + 7);
  PacType = BBUEURUpdateSource::getPacType(this);
  if (v78)
  {
    v80 = BBUProgrammer::Item::createFromImage(PacType, v78);
    v81 = operator new(0x18uLL);
    v81[1] = v2;
    v81[2] = v80;
    v82 = *v2;
    *v81 = *v2;
    *(v82 + 8) = v81;
    *v2 = v81;
    ++v2[2];
  }

  v83 = *(this + 33);
  BBCFGType = BBUEURUpdateSource::getBBCFGType(this);
  if (v83)
  {
    v85 = BBUProgrammer::Item::createFromImage(BBCFGType, v83);
    v86 = operator new(0x18uLL);
    v86[1] = v2;
    v86[2] = v85;
    v87 = *v2;
    *v86 = *v2;
    *(v87 + 8) = v86;
    *v2 = v86;
    ++v2[2];
  }

  v88 = *(this + 38);
  MDMDDRType = BBUEURUpdateSource::getMDMDDRType(this);
  if (v88)
  {
    v90 = BBUProgrammer::Item::createFromImage(MDMDDRType, v88);
    v91 = operator new(0x18uLL);
    v91[1] = v2;
    v91[2] = v90;
    v92 = *v2;
    *v91 = *v2;
    *(v92 + 8) = v91;
    *v2 = v91;
    ++v2[2];
  }

  v93 = *(this + 39);
  OEMMiscType = BBUEURUpdateSource::getOEMMiscType(this);
  if (v93)
  {
    v95 = BBUProgrammer::Item::createFromImage(OEMMiscType, v93);
    v96 = operator new(0x18uLL);
    v96[1] = v2;
    v96[2] = v95;
    v97 = *v2;
    *v96 = *v2;
    *(v97 + 8) = v96;
    *v2 = v96;
    ++v2[2];
  }

  v98 = *(this + 40);
  QTIMiscType = BBUEURUpdateSource::getQTIMiscType(this);
  if (v98)
  {
    v100 = BBUProgrammer::Item::createFromImage(QTIMiscType, v98);
    QTIMiscType = operator new(0x18uLL);
    *(QTIMiscType + 1) = v2;
    *(QTIMiscType + 2) = v100;
    v101 = *v2;
    *QTIMiscType = *v2;
    *(v101 + 8) = QTIMiscType;
    *v2 = QTIMiscType;
    ++v2[2];
  }

  XblCfgType = capabilities::updater::supportsXblCfgImage(QTIMiscType);
  if (XblCfgType)
  {
    v103 = *(this + 41);
    XblCfgType = BBUEURUpdateSource::getXblCfgType(this);
    if (v103)
    {
      v104 = BBUProgrammer::Item::createFromImage(XblCfgType, v103);
      XblCfgType = operator new(0x18uLL);
      *(XblCfgType + 1) = v2;
      *(XblCfgType + 2) = v104;
      v105 = *v2;
      *XblCfgType = *v2;
      *(v105 + 8) = XblCfgType;
      *v2 = XblCfgType;
      ++v2[2];
    }
  }

  UEFIType = capabilities::updater::supportsUEFIImage(XblCfgType);
  if (UEFIType)
  {
    v107 = *(this + 42);
    UEFIType = BBUEURUpdateSource::getUEFIType(this);
    if (v107)
    {
      v108 = BBUProgrammer::Item::createFromImage(UEFIType, v107);
      UEFIType = operator new(0x18uLL);
      *(UEFIType + 1) = v2;
      *(UEFIType + 2) = v108;
      v109 = *v2;
      *UEFIType = *v2;
      *(v109 + 8) = UEFIType;
      *v2 = UEFIType;
      ++v2[2];
    }
  }

  if (capabilities::updater::supportsXblSupportImage(UEFIType))
  {
    v110 = *(this + 43);
    XblSupportType = BBUEURUpdateSource::getXblSupportType(this);
    if (v110)
    {
      v112 = BBUProgrammer::Item::createFromImage(XblSupportType, v110);
      v113 = operator new(0x18uLL);
      v113[1] = v2;
      v113[2] = v112;
      v114 = *v2;
      *v113 = *v2;
      *(v114 + 8) = v113;
      *v2 = v113;
      ++v2[2];
    }
  }

  return v2;
}

uint64_t BBUEUR20UpdateSource::validateBootupItems(BBUEUR20UpdateSource *this)
{
  v2 = *(this + 21);
  if (!v2 || (v3 = (*(*v2 + 64))(v2)) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v7 = "SBL image missing\n";
    goto LABEL_31;
  }

  if (*(this + 34))
  {
    if (*(this + 35))
    {
      if (*(this + 50))
      {
        if (*(this + 36))
        {
          if (*(this + 37))
          {
            if (*(this + 26))
            {
              if (*(this + 27))
              {
                if (*(this + 28))
                {
                  if (**(this + 29))
                  {
                    if (*(this + 32))
                    {
                      if (*(this + 39))
                      {
                        if (*(this + 40))
                        {
                          if (*(this + 33))
                          {
                            v4 = capabilities::updater::supportsXblCfgImage(v3);
                            if (!v4 || *(this + 41))
                            {
                              v5 = capabilities::updater::supportsUEFIImage(v4);
                              if (!v5 || *(this + 42))
                              {
                                result = capabilities::updater::supportsXblSupportImage(v5);
                                if (!result)
                                {
                                  return result;
                                }

                                if (*(this + 43))
                                {
                                  return 0;
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

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = "Baseband FW isn't complete. You are missing some images!\n";
LABEL_31:
    v8 = (**this)(this);
    _BBULog(1, 0, v8, "", v7, v9, v10, v11, v12);
    return 35;
  }

  return result;
}

uint64_t BBUEUR20UpdateSource::validateCoredumpItems(BBUEUR20UpdateSource *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    return 35;
  }

  v3 = (*(*v2 + 64))(v2);
  if (!v3 || !*(this + 34) || !*(this + 39))
  {
    return 35;
  }

  result = capabilities::updater::supportsXblCfgImage(v3);
  if (!result)
  {
    return result;
  }

  if (!*(this + 41))
  {
    return 35;
  }

  return 0;
}

capabilities::updater *BBUEUR20UpdateSource::saveImages(BBUEUR20UpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x34Au, "Assertion failure(fZipFile && Firmware data source error!)", v33, v34, v35, __p[0]);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v2 = (**this)(this);
  v6 = _BBULog(19, 0xFFFFFFFFLL, v2, "", "BBUEUR20UpdateSource::saveImages\n", v3, v4, v5, __p[0]);
  memset(v43, 170, sizeof(v43));
  capabilities::radio::personalizedFirmwarePath(v43, v6);
  v7 = HIBYTE(v43[2]);
  if (SHIBYTE(v43[2]) < 0)
  {
    v7 = v43[1];
  }

  if (!v7)
  {
    v36 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v36, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x34Fu, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)", v37, v38, v39, __p[0]);
  }

  result = BBUEURUpdateSource::saveImages(this);
  if (!result)
  {
    v42 = 15;
    strcpy(__p, "restoresbl1.mbn");
    result = BBUEURUpdateSource::saveFile(this, __p, v43);
    if (v42 < 0)
    {
      v9 = result;
      operator delete(*__p);
      result = v9;
      if (v9)
      {
        goto LABEL_76;
      }
    }

    else if (result)
    {
      goto LABEL_76;
    }

    v42 = 8;
    strcpy(__p, "sbl1.mbn");
    result = BBUEURUpdateSource::saveFile(this, __p, v43);
    if (v42 < 0)
    {
      v10 = result;
      operator delete(*__p);
      result = v10;
      if (v10)
      {
        goto LABEL_76;
      }
    }

    else if (result)
    {
      goto LABEL_76;
    }

    v42 = 8;
    strcpy(__p, "acdb.mbn");
    result = BBUEURUpdateSource::saveFile(this, __p, v43);
    if (v42 < 0)
    {
      v11 = result;
      operator delete(*__p);
      result = v11;
    }

    if (!result)
    {
      v42 = 7;
      strcpy(__p, "aop.mbn");
      result = BBUEURUpdateSource::saveFile(this, __p, v43);
      if (v42 < 0)
      {
        v12 = result;
        operator delete(*__p);
        result = v12;
      }

      if (!result)
      {
        v42 = 8;
        strcpy(__p, "apdp.mbn");
        result = BBUEURUpdateSource::saveFile(this, __p, v43);
        if (v42 < 0)
        {
          v13 = result;
          operator delete(*__p);
          result = v13;
        }

        if (!result)
        {
          v42 = 8;
          strcpy(__p, "apps.mbn");
          result = BBUEURUpdateSource::saveFile(this, __p, v43);
          if (v42 < 0)
          {
            v14 = result;
            operator delete(*__p);
            result = v14;
          }

          if (!result)
          {
            v42 = 10;
            strcpy(__p, "devcfg.mbn");
            result = BBUEURUpdateSource::saveFile(this, __p, v43);
            if (v42 < 0)
            {
              v15 = result;
              operator delete(*__p);
              result = v15;
            }

            if (!result)
            {
              v42 = 7;
              strcpy(__p, "hyp.mbn");
              result = BBUEURUpdateSource::saveFile(this, __p, v43);
              if (v42 < 0)
              {
                v16 = result;
                operator delete(*__p);
                result = v16;
              }

              if (!result)
              {
                v42 = 11;
                strcpy(__p, "qdsp6sw.mbn");
                result = BBUEURUpdateSource::saveFile(this, __p, v43);
                if (v42 < 0)
                {
                  v17 = result;
                  operator delete(*__p);
                  result = v17;
                }

                if (!result)
                {
                  v42 = 7;
                  strcpy(__p, "sec.elf");
                  v18 = BBUEURUpdateSource::saveFile(this, __p, v43);
                  if (v42 < 0)
                  {
                    operator delete(*__p);
                  }

                  result = v18;
                  if (!v18)
                  {
                    v42 = 6;
                    strcpy(__p, "tz.mbn");
                    v19 = BBUEURUpdateSource::saveFile(this, __p, v43);
                    if (v42 < 0)
                    {
                      operator delete(*__p);
                    }

                    result = v19;
                    if (!v19)
                    {
                      v42 = 15;
                      strcpy(__p, "multi_image.mbn");
                      v20 = BBUEURUpdateSource::saveFile(this, __p, v43);
                      if (v42 < 0)
                      {
                        operator delete(*__p);
                      }

                      result = v20;
                      if (!v20)
                      {
                        v42 = 19;
                        strcpy(__p, "multi_image_qti.mbn");
                        v21 = BBUEURUpdateSource::saveFile(this, __p, v43);
                        if (v42 < 0)
                        {
                          operator delete(*__p);
                        }

                        result = v21;
                        if (!v21)
                        {
                          v42 = 9;
                          strcpy(__p, "bbcfg.mbn");
                          v22 = BBUEURUpdateSource::saveFile(this, __p, v43);
                          if (v42 < 0)
                          {
                            operator delete(*__p);
                          }

                          result = v22;
                          if (!v22)
                          {
                            if ((capabilities::updater::supportsXblCfgImage(v22) & 1) == 0)
                            {
                              v23 = *(this + 8);
                              v42 = 11;
                              strcpy(__p, "xbl_cfg.elf");
                              result = BBUZipFile::containsFile(v23, __p);
                              if (!result)
                              {
                                goto LABEL_80;
                              }
                            }

                            v42 = 11;
                            strcpy(__p, "xbl_cfg.elf");
                            v24 = BBUEURUpdateSource::saveFile(this, __p, v43);
                            if (v42 < 0)
                            {
                              operator delete(*__p);
                            }

                            result = v24;
                            if (!v24)
                            {
LABEL_80:
                              if ((capabilities::updater::supportsUEFIImage(result) & 1) == 0)
                              {
                                v25 = *(this + 8);
                                v42 = 8;
                                strcpy(__p, "uefi.elf");
                                result = BBUZipFile::containsFile(v25, __p);
                                if (!result)
                                {
                                  goto LABEL_81;
                                }
                              }

                              v42 = 8;
                              strcpy(__p, "uefi.elf");
                              v26 = BBUEURUpdateSource::saveFile(this, __p, v43);
                              if (v42 < 0)
                              {
                                operator delete(*__p);
                              }

                              result = v26;
                              if (!v26)
                              {
LABEL_81:
                                if ((capabilities::updater::supportsXblSupportImage(result) & 1) == 0)
                                {
                                  v27 = *(this + 8);
                                  v42 = 15;
                                  strcpy(__p, "xbl_support.elf");
                                  if (!BBUZipFile::containsFile(v27, __p))
                                  {
                                    goto LABEL_67;
                                  }
                                }

                                v42 = 15;
                                strcpy(__p, "xbl_support.elf");
                                v28 = BBUEURUpdateSource::saveFile(this, __p, v43);
                                if (v42 < 0)
                                {
                                  operator delete(*__p);
                                }

                                result = v28;
                                if (!v28)
                                {
LABEL_67:
                                  v29 = *(this + 8);
                                  (*(*this + 56))(__p, this);
                                  v30 = BBUZipFile::containsFile(v29, __p);
                                  if (v42 < 0)
                                  {
                                    operator delete(*__p);
                                  }

                                  if (v30)
                                  {
                                    (*(*this + 56))(__p, this);
                                    v31 = BBUEURUpdateSource::saveFile(this, __p, v43);
                                    if (v42 < 0)
                                    {
                                      operator delete(*__p);
                                    }

                                    result = v31;
                                  }

                                  else
                                  {
                                    result = 0;
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

LABEL_76:
  if (SHIBYTE(v43[2]) < 0)
  {
    v40 = result;
    operator delete(v43[0]);
    return v40;
  }

  return result;
}

void sub_1E52AA550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR20UpdateSource::getImageIDFromImageName(const void **a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  if (v1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v2;
  }

  v5 = memcmp(v3, "CAL", v4);
  if (v2 == 3 && v5 == 0)
  {
    return 1128352768;
  }

  if (v2 >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v2;
  }

  v8 = memcmp(v3, "PROV", v7);
  if (v2 == 4 && v8 == 0)
  {
    return 1347571542;
  }

  v10 = memcmp(v3, "PAC", v4);
  if (v2 == 3 && !v10)
  {
    return 1346454272;
  }

  v12 = memcmp(v3, "ACT", v4);
  if (v2 != 3 || v12)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x3CCu, "Assertion failure(false && Unrecognized BBUEUR Remote Data fileName.)", v14, v15, v16, v17);
  }

  return 1094931456;
}

void std::__shared_ptr_pointer<BBUZipFile *,std::shared_ptr<BBUZipFile>::__shared_ptr_default_delete<BBUZipFile,BBUZipFile>,std::allocator<BBUZipFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBUZipFile *,std::shared_ptr<BBUZipFile>::__shared_ptr_default_delete<BBUZipFile,BBUZipFile>,std::allocator<BBUZipFile>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    BBUZipFile::~BBUZipFile(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<BBUZipFile *,std::shared_ptr<BBUZipFile>::__shared_ptr_default_delete<BBUZipFile,BBUZipFile>,std::allocator<BBUZipFile>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391952)
  {
    if (((v2 & 0x80000001E5391952 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391952))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391952 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

BBUZipFile **std::unique_ptr<BBUZipFile>::~unique_ptr[abi:ne200100](BBUZipFile **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    BBUZipFile::~BBUZipFile(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

const void **ctu::cf::CFSharedRef<__CFWriteStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BBUEURSBLImage::~BBUEURSBLImage(void **this)
{
  *this = &unk_1F5F01210;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_1F5F04F58;
  v2 = this[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_1F5F01210;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_1F5F04F58;
  v2 = this[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(this);
}

uint64_t BBUEURSBLImage::getName(BBUEURSBLImage *this)
{
  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

void BBUEURMDMDDRImage::~BBUEURMDMDDRImage(BBUEURMDMDDRImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEURSecImage::~BBUEURSecImage(BBUEURSecImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void ctu::cf::_Applier_InsertMapDefault<std::string,__CFData const*,std::insert_iterator<std::map<std::string,__CFData const*>>>(uint64_t a1, const void *a2, uint64_t a3)
{
  *v12 = 0u;
  v13 = 0u;
  if (!ctu::cf::assign())
  {
    goto LABEL_14;
  }

  if (a2)
  {
    v5 = CFGetTypeID(a2);
    if (v5 == CFDataGetTypeID())
    {
      *(&v13 + 1) = a2;
    }
  }

  if (SBYTE7(v13) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v12[0], v12[1]);
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v12;
    __p.__r_.__value_.__r.__words[2] = v13;
  }

  v11 = *(&v13 + 1);
  v6 = std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,__CFData const*>>(*a3, *(a3 + 8), &__p.__r_.__value_.__l.__data_, &__p);
  *(a3 + 8) = v6;
  v7 = v6[1];
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    do
    {
      v8 = v6[2];
      v9 = *v8 == v6;
      v6 = v8;
    }

    while (!v9);
  }

  *(a3 + 8) = v8;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SBYTE7(v13) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v12[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SBYTE7(v13) < 0)
  {
    goto LABEL_17;
  }
}

void sub_1E52AAEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,__CFData const*>>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__find_equal<std::string>(a1, a2, &v14, &v13, a3);
  if (*v6)
  {
    return *v6;
  }

  v8 = v6;
  v9 = operator new(0x40uLL);
  v10 = v9;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 32), *a4, *(a4 + 8));
  }

  else
  {
    *(v9 + 2) = *a4;
    *(v9 + 6) = *(a4 + 16);
  }

  v10[7] = *(a4 + 24);
  v11 = v14;
  *v10 = 0;
  v10[1] = 0;
  v10[2] = v11;
  *v8 = v10;
  v12 = **a1;
  if (v12)
  {
    *a1 = v12;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v10);
  a1[2] = (a1[2] + 1);
  return v10;
}

void sub_1E52AAFFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::unique_ptr<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::manager_global>::~PthreadMutexGuardPolicy, &stru_1ED944238, &dword_1E5234000);
  }

  return result;
}

void BBUConsoleFeedback::~BBUConsoleFeedback(BBUConsoleFeedback *this)
{
  *this = &unk_1F5F01370;
  v2 = *(this + 36);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(this + 25);
    v4 = *(this + 26);
    if (v4 != v3)
    {
      goto LABEL_4;
    }

LABEL_30:
    v4 = v3;
    *(this + 29) = 0;
    v12 = 0;
    goto LABEL_15;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = *(this + 25);
  v4 = *(this + 26);
  if (v4 == v3)
  {
    goto LABEL_30;
  }

LABEL_4:
  v5 = *(this + 28);
  v6 = &v3[v5 / 0xAA];
  v7 = *v6;
  v8 = *v6 + 24 * (v5 % 0xAA);
  v9 = v3[(*(this + 29) + v5) / 0xAA] + 24 * ((*(this + 29) + v5) % 0xAA);
  if (v8 == v9)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v8 + 23) < 0)
    {
      v10 = *v8;
      v8 += 24;
      operator delete(v10);
      v7 = *v6;
      if (v8 - *v6 != 4080)
      {
        continue;
      }
    }

    else
    {
      v8 += 24;
      if (v8 - v7 != 4080)
      {
        continue;
      }
    }

    v11 = v6[1];
    ++v6;
    v7 = v11;
    v8 = v11;
  }

  while (v8 != v9);
  v3 = *(this + 25);
  v4 = *(this + 26);
LABEL_13:
  *(this + 29) = 0;
  v12 = v4 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = *(this + 26);
      v3 = (*(this + 25) + 8);
      *(this + 25) = v3;
      v12 = v4 - v3;
    }

    while (v12 > 2);
  }

LABEL_15:
  if (v12 == 1)
  {
    v13 = 85;
LABEL_19:
    *(this + 28) = v13;
  }

  else if (v12 == 2)
  {
    v13 = 170;
    goto LABEL_19;
  }

  if (v3 != v4)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v4);
    v16 = *(this + 25);
    v15 = *(this + 26);
    if (v15 != v16)
    {
      *(this + 26) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v17 = *(this + 24);
  if (v17)
  {
    operator delete(v17);
  }

  BBUFeedback::~BBUFeedback(this);
}

{
  BBUConsoleFeedback::~BBUConsoleFeedback(this);

  operator delete(v1);
}

void BBUConsoleFeedback::addBracketedReturn(uint64_t a1, int a2)
{
  *(&v19.__r_.__value_.__s + 23) = 1;
  LOWORD(v19.__r_.__value_.__l.__data_) = 40;
  v3 = BBUReturnAsString::BBUReturnStrings[a2];
  v4 = strlen(v3);
  v5 = std::string::append(&v19, v3, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21 = v5->__r_.__value_.__r.__words[2];
  v20 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = SHIBYTE(v21);
  if ((SHIBYTE(v21) & 0x8000000000000000) == 0)
  {
    v8 = &v20;
    if (SHIBYTE(v21) == 22)
    {
      v9 = 22;
      v10 = 23;
LABEL_7:
      v12 = 2 * v9;
      if (v10 > 2 * v9)
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
        v11 = v13;
      }

      else
      {
        v11 = 23;
      }

      v14 = v9 == 22;
      goto LABEL_16;
    }

LABEL_22:
    *(v8 + v7) = 41;
    v18 = v7 + 1;
    if (SHIBYTE(v21) < 0)
    {
      *(&v20 + 1) = v18;
    }

    else
    {
      HIBYTE(v21) = v18 & 0x7F;
    }

    v17 = v8 + v18;
    goto LABEL_26;
  }

  v7 = *(&v20 + 1);
  v10 = v21 & 0x7FFFFFFFFFFFFFFFLL;
  v9 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v9 != *(&v20 + 1))
  {
    v8 = v20;
    goto LABEL_22;
  }

  v11 = 0x7FFFFFFFFFFFFFF7;
  if (v10 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v20;
  if (v9 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_16:
  v15 = operator new(v11);
  v16 = v15;
  if (v9)
  {
    memmove(v15, v8, v9);
  }

  v16[v9] = 41;
  if (!v14)
  {
    operator delete(v8);
  }

  *(&v20 + 1) = v10;
  v21 = v11 | 0x8000000000000000;
  *&v20 = v16;
  v17 = &v16[v10];
LABEL_26:
  *v17 = 0;
  *a1 = v20;
  *(a1 + 16) = v21;
  v21 = 0;
  v20 = 0uLL;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1E52AB87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p)
{
  if (v16 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t BBUConsoleFeedback::writeToStreamInternal(BBUConsoleFeedback *this, const char *a2, va_list a3)
{
  v6 = MEMORY[0x1E69E9858];
  vfprintf(*MEMORY[0x1E69E9858], a2, a3);
  (*(*this + 112))(this, a2, a3);
  v7 = *v6;

  return fflush(v7);
}

void BBUConsoleFeedback::registerLogBuffer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 288);
  *(a1 + 280) = v3;
  *(a1 + 288) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t BBUConsoleFeedback::writeToBuffInternal(uint64_t this, const char *a2, va_list a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 280))
  {
    v5 = this;
    bzero(__str, 0x401uLL);
    this = vsnprintf(__str, 0x400uLL, a2, a3);
    if (this >= 1)
    {
      if (this >= 0x400)
      {
        __str[1023] = 10;
        LODWORD(this) = 1024;
      }

      this = (*(**(v5 + 280) + 24))(*(v5 + 280), __str, this);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void BBUConsoleFeedback::handleBeginPhaseInternal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x4Eu, "Assertion failure(!fQuickStepInProgress)", v72, v73, v74, v78);
    goto LABEL_90;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x4Fu, "Assertion failure(!fLongStepInProgress)", v75, v76, v77, v78);
LABEL_90:
  }

  memset(__b, 170, sizeof(__b));
  v3 = *(a1 + 232);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __b[1] = v3;
    __b[2] = (v6 | 0x8000000000000000);
    __b[0] = v5;
    goto LABEL_11;
  }

  HIBYTE(__b[2]) = *(a1 + 232);
  v5 = __b;
  if (v3)
  {
LABEL_11:
    memset(v5, 9, v3);
  }

  *(v5 + v3) = 0;
  v8 = *(a1 + 200);
  v7 = *(a1 + 208);
  v9 = v7 - v8;
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 170 * ((v7 - v8) >> 3) - 1;
  }

  v11 = *(a1 + 224);
  if (v10 == *(a1 + 232) + v11)
  {
    v12 = v11 >= 0xAA;
    v13 = v11 - 170;
    if (v12)
    {
      *(a1 + 224) = v13;
      v80 = *v8;
      *(a1 + 200) = v8 + 8;
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((a1 + 192), &v80);
LABEL_74:
      v8 = *(a1 + 200);
      v7 = *(a1 + 208);
      goto LABEL_75;
    }

    v14 = *(a1 + 216);
    v15 = *(a1 + 192);
    if (v9 < (v14 - v15))
    {
      v16 = operator new(0xFF0uLL);
      if (v14 != v7)
      {
        *v7 = v16;
        *(a1 + 208) = v7 + 8;
        goto LABEL_74;
      }

      if (v8 != v15)
      {
        v27 = v8;
LABEL_73:
        *(v27 - 1) = v16;
        v80 = v16;
        *(a1 + 200) = v27;
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((a1 + 192), &v80);
        goto LABEL_74;
      }

      if (v7 == v8)
      {
        v50 = 1;
      }

      else
      {
        v50 = (v14 - v8) >> 2;
      }

      if (!(v50 >> 61))
      {
        v51 = v16;
        v52 = operator new(8 * v50);
        v16 = v51;
        v53 = (v50 + 3) >> 2;
        v27 = &v52[8 * v53];
        v54 = v27;
        if (v7 != v8)
        {
          v54 = &v27[v9];
          v55 = v7 - v8 - 8;
          v56 = &v52[8 * v53];
          v57 = v8;
          if (v55 < 0x38)
          {
            goto LABEL_97;
          }

          v58 = &v52[8 * v53];
          v56 = v58;
          v57 = v8;
          if ((v58 - v8) < 0x20)
          {
            goto LABEL_97;
          }

          v59 = (v55 >> 3) + 1;
          v60 = 8 * (v59 & 0x3FFFFFFFFFFFFFFCLL);
          v56 = &v27[v60];
          v57 = &v8[v60];
          v61 = (v8 + 16);
          v62 = v58 + 16;
          v63 = v59 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v64 = *v61;
            *(v62 - 1) = *(v61 - 1);
            *v62 = v64;
            v61 += 2;
            v62 += 2;
            v63 -= 4;
          }

          while (v63);
          if (v59 != (v59 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_97:
            do
            {
              v65 = *v57;
              v57 += 8;
              *v56 = v65;
              v56 += 8;
            }

            while (v56 != v54);
          }
        }

        *(a1 + 192) = v52;
        *(a1 + 200) = v27;
        *(a1 + 208) = v54;
        *(a1 + 216) = &v52[8 * v50];
        if (v8)
        {
          operator delete(v15);
          v16 = v51;
          v27 = *(a1 + 200);
        }

        goto LABEL_73;
      }

LABEL_93:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (v14 - v15) >> 2;
    if (v14 == v15)
    {
      v17 = 1;
    }

    if (v17 >> 61)
    {
      goto LABEL_93;
    }

    v18 = 8 * v17;
    v19 = operator new(8 * v17);
    v20 = operator new(0xFF0uLL);
    v21 = v20;
    v22 = &v19[v9];
    v23 = &v19[v18];
    if (v9 != v18)
    {
      goto LABEL_28;
    }

    if (v9 >= 1)
    {
      v22 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_28:
      *v22 = v20;
      v24 = v22 + 8;
      if (v7 != v8)
      {
        goto LABEL_42;
      }

LABEL_29:
      v25 = v22;
LABEL_30:
      v26 = *(a1 + 192);
      *(a1 + 192) = v19;
      *(a1 + 200) = v25;
      *(a1 + 208) = v24;
      *(a1 + 216) = v23;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_74;
    }

    if (v7 == v8)
    {
      v28 = 1;
    }

    else
    {
      v28 = v9 >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = operator new(8 * v28);
    v23 = &v22[8 * v28];
    operator delete(v19);
    v29 = *(a1 + 200);
    v7 = *(a1 + 208);
    v19 = v22;
    *v22 = v21;
    v24 = v22 + 8;
    if (v7 == v29)
    {
      goto LABEL_29;
    }

LABEL_42:
    while (v22 != v19)
    {
      v30 = v22;
LABEL_41:
      v31 = *(v7 - 1);
      v7 -= 8;
      *(v30 - 1) = v31;
      v25 = v30 - 8;
      v22 = v25;
      if (v7 == *(a1 + 200))
      {
        goto LABEL_30;
      }
    }

    if (v24 < v23)
    {
      v30 = &v19[8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1)];
      v33 = v24 - v19;
      v32 = v24 == v19;
      v24 += 8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1);
      if (!v32)
      {
        memmove(v30, v22, v33);
      }

      goto LABEL_41;
    }

    if (v23 == v19)
    {
      v34 = 1;
    }

    else
    {
      v34 = (v23 - v19) >> 2;
    }

    if (v34 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v35 = operator new(8 * v34);
    v36 = v35;
    v37 = (v34 + 3) >> 2;
    v30 = &v35[8 * v37];
    v38 = v24 - v19;
    v32 = v24 == v19;
    v24 = v30;
    if (!v32)
    {
      v24 = &v30[v38];
      v39 = v38 - 8;
      if (v39 >= 0x18 && (v40 = 8 * v37, (&v35[8 * v37] - v22) >= 0x20))
      {
        v44 = (v39 >> 3) + 1;
        v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
        v41 = &v30[v45];
        v42 = &v22[v45];
        v46 = (v22 + 16);
        v47 = &v35[v40 + 16];
        v48 = v44 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v49 = *v46;
          *(v47 - 1) = *(v46 - 1);
          *v47 = v49;
          v46 += 2;
          v47 += 32;
          v48 -= 4;
        }

        while (v48);
        if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v41 = &v35[8 * v37];
        v42 = v22;
      }

      do
      {
        v43 = *v42;
        v42 += 8;
        *v41 = v43;
        v41 += 8;
      }

      while (v41 != v24);
    }

LABEL_55:
    v23 = &v35[8 * v34];
    operator delete(v19);
    v19 = v36;
    goto LABEL_41;
  }

LABEL_75:
  if (v7 == v8)
  {
    v67 = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v66 = *(a1 + 232) + *(a1 + 224);
    v67 = (*&v8[8 * (v66 / 0xAA)] + 24 * (v66 % 0xAA));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_77:
      v68 = *a2;
      v67->__r_.__value_.__r.__words[2] = *(a2 + 16);
      *&v67->__r_.__value_.__l.__data_ = v68;
      goto LABEL_80;
    }
  }

  std::string::__init_copy_ctor_external(v67, *a2, *(a2 + 8));
LABEL_80:
  ++*(a1 + 232);
  BBUProfiler::startStage((a1 + 80), a2);
  v69 = __b;
  if (SHIBYTE(__b[2]) < 0)
  {
    v69 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v70 = a2;
  }

  else
  {
    v70 = *a2;
  }

  BBUConsoleFeedback::writeToStream(a1, "%sBEGIN: %s\n", v69, v70);
  if (SHIBYTE(__b[2]) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1E52AC0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  operator delete(v17);
  operator delete(v16);
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void BBUConsoleFeedback::handleEndPhase(uint64_t a1, int a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x5Au, "Assertion failure(!fQuickStepInProgress)", v24, v25, v26, v33);
    goto LABEL_41;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x5Bu, "Assertion failure(!fLongStepInProgress)", v27, v28, v29, v33);
    goto LABEL_41;
  }

  v3 = *(a1 + 232);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x5Du, "Assertion failure(fPhases.size())", v30, v31, v32, v33);
LABEL_41:
  }

  memset(&v39, 170, sizeof(v39));
  v5 = *(a1 + 224);
  v6 = v3 - 1;
  v7 = v5 + v3 - 1;
  v8 = *(a1 + 200);
  v9 = v7 / 0xAA;
  v10 = *(v8 + 8 * (v7 / 0xAA));
  v11 = v7 % 0xAA;
  v12 = (v10 + 24 * v11);
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    v13 = *v12;
    v39.__r_.__value_.__r.__words[2] = *(v12 + 2);
    *&v39.__r_.__value_.__l.__data_ = v13;
    v14 = *(v8 + 8 * v9) + 24 * v11;
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(&v39, *v12, *(v12 + 1));
  v5 = *(a1 + 224);
  v3 = *(a1 + 232);
  v8 = *(a1 + 200);
  v6 = v3 - 1;
  v14 = *(v8 + 8 * ((v3 - 1 + v5) / 0xAAuLL)) + 24 * ((v3 - 1 + v5) % 0xAAuLL);
  if (*(v14 + 23) < 0)
  {
LABEL_6:
    operator delete(*v14);
    v8 = *(a1 + 200);
    v5 = *(a1 + 224);
    v3 = *(a1 + 232);
    v6 = v3 - 1;
  }

LABEL_7:
  v15 = *(a1 + 208);
  *(a1 + 232) = v6;
  if (v15 == v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = 170 * ((v15 - v8) >> 3) - 1;
  }

  if ((v16 - (v5 + v3) + 1) >= 0x154)
  {
    operator delete(*(v15 - 8));
    *(a1 + 208) -= 8;
  }

  BBUProfiler::endStage((a1 + 80));
  memset(__b, 170, sizeof(__b));
  v17 = *(a1 + 232);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v17 | 7) + 1;
    }

    v18 = operator new(v20);
    __b[1] = v17;
    __b[2] = (v20 | 0x8000000000000000);
    __b[0] = v18;
  }

  else
  {
    HIBYTE(__b[2]) = *(a1 + 232);
    v18 = __b;
    if (!v17)
    {
      LOBYTE(__b[0]) = 0;
      __p[0] = 0;
      __p[1] = 0;
      v37 = 0;
      if (a2)
      {
        goto LABEL_16;
      }

LABEL_24:
      v19 = __p;
      goto LABEL_25;
    }
  }

  memset(v18, 9, v17);
  *(v18 + v17) = 0;
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_16:
  BBUConsoleFeedback::addBracketedReturn(&v34, a2);
  *__p = v34;
  v37 = v35;
  v19 = __p;
  if (v35 < 0)
  {
    v19 = v34;
  }

LABEL_25:
  v21 = __b;
  if (SHIBYTE(__b[2]) < 0)
  {
    v21 = __b[0];
  }

  v22 = &v39;
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v39.__r_.__value_.__r.__words[0];
  }

  BBUConsoleFeedback::writeToStream(a1, "%sEND%s: %s\n", v21, v19, v22);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__b[2]) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_37:
      operator delete(v39.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__b[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__b[0]);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }
}

void sub_1E52AC50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void BBUConsoleFeedback::handleBeginQuickStepInternal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x70u, "Assertion failure(!fQuickStepInProgress)", v10, v11, v12, v16);
    goto LABEL_22;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x71u, "Assertion failure(!fLongStepInProgress)", v13, v14, v15, v16);
LABEL_22:
  }

  BBUProfiler::startStage((a1 + 80), a2);
  v4 = *(a1 + 232);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v5 = operator new(v6);
    __b[1] = v4;
    v18 = v6 | 0x8000000000000000;
    __b[0] = v5;
    goto LABEL_11;
  }

  HIBYTE(v18) = *(a1 + 232);
  v5 = __b;
  if (v4)
  {
LABEL_11:
    memset(v5, 9, v4);
  }

  *(v5 + v4) = 0;
  v7 = __b;
  if (v18 < 0)
  {
    v7 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  BBUConsoleFeedback::writeToStream(a1, "%s%s...\n", v7, v8);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__b[0]);
  }

  *(a1 + 240) = 1;
}

void sub_1E52AC740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUConsoleFeedback::handleEndQuickStep(BBUConsoleFeedback *this, int a2)
{
  if ((*(this + 240) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x7Bu, "Assertion failure(fQuickStepInProgress)", v11, v12, v13, v17);
    goto LABEL_33;
  }

  if (*(this + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x7Cu, "Assertion failure(!fLongStepInProgress)", v14, v15, v16, v17);
LABEL_33:
  }

  memset(&v21, 0, sizeof(v21));
  if (a2 != 14 && a2)
  {
    *(&v21.__r_.__value_.__s + 23) = 6;
    qmemcpy(&v21, "FAILED", 6);
    BBUConsoleFeedback::addBracketedReturn(&__p, a2);
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v20 >= 0)
    {
      v4 = HIBYTE(v20);
    }

    else
    {
      v4 = v19;
    }

    std::string::append(&v21, p_p, v4);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(&v21.__r_.__value_.__s + 23) = 2;
    LOWORD(v21.__r_.__value_.__l.__data_) = 19279;
  }

  v5 = *(this + 29);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v5 | 7) + 1;
    }

    v6 = operator new(v7);
    v19 = v5;
    v20 = v7 | 0x8000000000000000;
    __p = v6;
    goto LABEL_22;
  }

  HIBYTE(v20) = *(this + 29);
  v6 = &__p;
  if (v5)
  {
LABEL_22:
    memset(v6, 9, v5);
  }

  *(v6 + v5) = 0;
  v8 = &__p;
  if (v20 < 0)
  {
    v8 = __p;
  }

  v9 = &v21;
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v21.__r_.__value_.__r.__words[0];
  }

  BBUConsoleFeedback::writeToStream(this, "%s%s\n", v8, v9);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  BBUProfiler::endStage((this + 80));
  *(this + 240) = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1E52AC97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

uint64_t BBUConsoleFeedback::handleBeginLongStep(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x93u, "Assertion failure(!fQuickStepInProgress)", v16, v17, v18, v22);
    goto LABEL_25;
  }

  if (*(a1 + 241) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0x94u, "Assertion failure(!fLongStepInProgress)", v19, v20, v21, v22);
LABEL_25:
  }

  if (*(a1 + 184))
  {
    v8 = 10;
  }

  else
  {
    v8 = 32;
  }

  BBUProfiler::startStage((a1 + 80), a2);
  v9 = *(a1 + 232);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v9 | 7) + 1;
    }

    v10 = operator new(v11);
    __b[1] = v9;
    v24 = v11 | 0x8000000000000000;
    __b[0] = v10;
    goto LABEL_14;
  }

  HIBYTE(v24) = *(a1 + 232);
  v10 = __b;
  if (v9)
  {
LABEL_14:
    memset(v10, 9, v9);
  }

  *(v10 + v9) = 0;
  v12 = __b;
  if (v24 < 0)
  {
    v12 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  BBUConsoleFeedback::writeToStream(a1, "%s%s...%c", v12, v13, v8);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__b[0]);
  }

  *(a1 + 241) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 248) = a3;
  *(a1 + 256) = a4;
  return (*(*a1 + 40))(a1);
}

void sub_1E52ACC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUConsoleFeedback::handleLongStepProgress(BBUConsoleFeedback *this, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(this + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB2u, "Assertion failure(!fQuickStepInProgress)", v18, v19, v20, v30);
    goto LABEL_32;
  }

  if ((*(this + 241) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB3u, "Assertion failure(fLongStepInProgress)", v21, v22, v23, v30);
    goto LABEL_32;
  }

  v2 = *(this + 31);
  v3 = a2 - v2;
  if (a2 < v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB5u, "Assertion failure(current >= fLongStepStart)", v24, v25, v26, v30);
    goto LABEL_32;
  }

  v4 = *(this + 32);
  if (v4 < a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xB6u, "Assertion failure(current <= fLongStepEnd)", v27, v28, v29, v30);
LABEL_32:
  }

  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  if (*(this + 46))
  {
    HIBYTE(v34) = 1;
    LOWORD(__p[0]) = 9;
    HIBYTE(v32) = 1;
    LOBYTE(v31[0]) = 10;
  }

  else
  {
    v5 = *(this + 34);
    if (v5)
    {
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v6 = a2;
      v7 = this;
      if (v5 >= 0x17)
      {
        if ((v5 | 7) == 0x17)
        {
          v9 = 25;
        }

        else
        {
          v9 = (v5 | 7) + 1;
        }

        p_b = operator new(v9);
        *(&__b + 1) = v5;
        *&v36 = v9 | 0x8000000000000000;
        *&__b = p_b;
      }

      else
      {
        BYTE7(v36) = *(this + 34);
        p_b = &__b;
      }

      memset(p_b, 8, v5);
      *(p_b + v5) = 0;
      *__p = __b;
      v34 = v36;
      this = v7;
      LODWORD(a2) = v6;
    }
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v10;
  v42 = v10;
  v40 = v10;
  v38 = v10;
  v39 = v10;
  v36 = v10;
  v37 = v10;
  __b = v10;
  v11 = 100 * v3 / (v4 - v2);
  if (v11 != *(this + 33))
  {
    *(this + 33) = v11;
    v12 = this;
    v13 = snprintf(&__b, 0x80uLL, "0x%x of 0x%x (%u percent)", a2, v4, 100 * v3 / (v4 - v2));
    v14 = v13 >= 0x80 ? 128 : v13;
    *(v12 + 34) = v14;
    v15 = __p;
    if (v34 < 0)
    {
      v15 = __p[0];
    }

    BBUConsoleFeedback::writeToStream(v12, "%s%s%s", v15, &__b, v31);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  if (SHIBYTE(v34) < 0)
  {
LABEL_24:
    operator delete(__p[0]);
  }

LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E52ACF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUConsoleFeedback::handleEndLongStep(BBUConsoleFeedback *a1, int a2)
{
  if (*(a1 + 240) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xE1u, "Assertion failure(!fQuickStepInProgress)", v5, v6, v7, v11);
    goto LABEL_10;
  }

  if ((*(a1 + 241) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Feedback/BBUConsoleFeedback.cpp", 0xE2u, "Assertion failure(fLongStepInProgress)", v8, v9, v10, v11);
LABEL_10:
  }

  if (!a2)
  {
    (*(*a1 + 40))(a1, *(a1 + 32));
  }

  BBUProfiler::endStage((a1 + 80));
  *(a1 + 241) = 0;

  return BBUConsoleFeedback::writeToStream(a1, "\n");
}

void BBUConsoleFeedback::handleCommentInternal(BBUConsoleFeedback *this, uint64_t a2)
{
  v2 = *(this + 29);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    if ((v2 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v2 | 7) + 1;
    }

    v5 = operator new(v6);
    __b[1] = v2;
    v10 = v6 | 0x8000000000000000;
    __b[0] = v5;
    goto LABEL_9;
  }

  HIBYTE(v10) = *(this + 29);
  v5 = __b;
  if (v2)
  {
LABEL_9:
    memset(v5, 9, v2);
  }

  *(v5 + v2) = 0;
  v7 = __b;
  if (v10 < 0)
  {
    v7 = __b[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  BBUConsoleFeedback::writeToStream(this, "%s%s\n", v7, v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1E52AD200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUConsoleFeedback::handleLongStepCommentInternal(BBUConsoleFeedback *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return BBUConsoleFeedback::writeToStream(a1, "\n%s\n", v2);
}

void GetBasebandTatsuTagToFileNameMap(uint64_t a1@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = @"Cellular1,LLB";
  v7 = 4;
  strcpy(v6, "illb");
  v8 = @"Cellular1,iBSS";
  v10 = 4;
  strcpy(v9, "ibss");
  v11 = @"Cellular1,PMUFW";
  v13 = 4;
  strcpy(v12, "apmu");
  v14 = @"Cellular1,PMUFW2";
  v16 = 4;
  strcpy(v15, "pmfw");
  v17 = @"Cellular1,iBootData";
  v19 = 4;
  strcpy(v18, "ibdt");
  v20 = @"Cellular1,RTKitOS";
  v22 = 4;
  strcpy(v21, "rkos");
  v23 = @"Cellular1,CdpAscDl";
  v25 = 4;
  strcpy(v24, "cdpd");
  v26 = @"Cellular1,CdpAscUl";
  v28 = 4;
  strcpy(v27, "cdpu");
  v29 = @"Cellular1,CdpHost";
  v31 = 4;
  strcpy(v30, "cdph");
  v32 = @"Cellular1,L1CL1S";
  v34 = 4;
  strcpy(v33, "l1cs");
  v35 = @"Cellular1,ProvisioningFirmware";
  v37 = 4;
  *(a1 + 8) = 0;
  v2 = (a1 + 8);
  strcpy(v36, "prfw");
  v38 = @"Cellular1,Recipe";
  v40 = 4;
  strcpy(__p, "rcpi");
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, (a1 + 8), &v5, &v5);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v8, &v8);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v11, &v11);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v14, &v14);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v17, &v17);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v20, &v20);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v23, &v23);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v26, &v26);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v29, &v29);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v32, &v32);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v35, &v35);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v2, &v38, &v38);
  if (v40 < 0)
  {
    operator delete(__p[0]);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v36[0]);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v33[0]);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v30[0]);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v27[0]);
  if ((v25 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v24[0]);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v21[0]);
  if ((v19 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v18[0]);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v15[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    operator delete(v6[0]);
    v4 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_24:
  operator delete(v12[0]);
  if (v10 < 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if (v7 < 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E52AD670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v78, *(v78 + 8));
  if (a78 < 0)
  {
    operator delete(__p);
    if ((a76 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a74 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a76 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a67);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a16 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
LABEL_13:
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a11);
  _Unwind_Resume(a1);
}

void GetBasebandNVM4ccToFileNameMap(void *a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(a1, 170, 24);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[11],0>(v4, kBasebandNVMStaticFile, "static.nvm");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[12],0>(&v8, kBasebandNVMDynamicFile, "dynamic.nvm");
  std::map<std::string,std::string>::map[abi:ne200100](a1, v4, 2);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(v6);
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      operator delete(v4[0]);
      v3 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  if (v7 < 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v5 < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E52AD8C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::string,std::string>::~pair(v2 + 48);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1E52AD8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void **std::map<std::string,std::string>::map[abi:ne200100](void **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v7 = std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__find_equal<std::string>(a1, v4, &v15, &v14, a2);
      if (!*v7)
      {
        memset(v13, 170, sizeof(v13));
        v8 = v7;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>(a1, a2, v13);
        v9 = v15;
        v10 = v13[0];
        *v13[0] = 0;
        v10[1] = 0;
        v10[2] = v9;
        *v8 = v10;
        v11 = **a1;
        if (v11)
        {
          *a1 = v11;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v10);
        a1[2] = (a1[2] + 1);
      }

      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void GetBasebandFDR4ccToFileNameMap(void *a1@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(a1, 170, 24);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(v4, kBasebandCalibrationFile, "calib.nvm");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(&v8, kBasebandFATPCalibrationFile, "bbpac.der");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[9],0>(&v12, kBasebandProvisioningFile, "prov.nvm");
  std::map<std::string,std::string>::map[abi:ne200100](a1, v4, 3);
  if (v15 < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v10);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    operator delete(v6);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    operator delete(v4[0]);
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_12:
  operator delete(v8);
  if (v7 < 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E52ADB70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::string,std::string>::~pair(v2);
  std::pair<std::string,std::string>::~pair(v3);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1E52ADB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v10 -= 48;
    std::pair<std::string,std::string>::~pair(v10);
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[11],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
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
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52ADCE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[12],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
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
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52ADE28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
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
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52ADF6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[9],0>(uint64_t a1, const char **a2, const char *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
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
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  v10 = strlen(a3);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 32) = v11;
    *(a1 + 40) = v13 | 0x8000000000000000;
    *(a1 + 24) = v12;
  }

  else
  {
    v12 = (a1 + 24);
    *(a1 + 47) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a3, v11);
LABEL_19:
  *(v12 + v11) = 0;
  return a1;
}

void sub_1E52AE0B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(void **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v14, &v13, a3);
  if (*v6)
  {
    return *v6;
  }

  v8 = v6;
  v9 = operator new(0x40uLL);
  v10 = v9;
  *(v9 + 4) = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 40), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    *(v9 + 40) = *(a4 + 8);
    *(v9 + 7) = *(a4 + 24);
  }

  v11 = v14;
  *v10 = 0;
  v10[1] = 0;
  v10[2] = v11;
  *v8 = v10;
  v12 = **a1;
  if (v12)
  {
    *a1 = v12;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v10);
  a1[2] = (a1[2] + 1);
  return v10;
}

void sub_1E52AE1C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void *std::unique_ptr<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 56), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 56) = *(a2 + 24);
    *(v7 + 9) = *(a2 + 40);
  }

  *(a3 + 16) = 1;
}

void sub_1E52AE4A0(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
    std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void DaleController_Loader::create(std::once_flag::_State_type **a1@<X8>)
{
  *a1 = 0;
  v3 = operator new(0x20uLL);
  *v3 = &unk_1F5F01428;
  v3[1] = 0;
  v3[2] = 0;
  v4 = v3 + 2;
  v3[3] = 0;
  v6 = v3;
  if (atomic_load_explicit(v3 + 2, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(v4, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_Loader::init(void)::$_0 &&>>);
  }

  if (v3[1])
  {
    *a1 = v3;
  }

  else
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    v5 = *(*v3 + 8);

    v5(v3);
  }
}

void sub_1E52AE778(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleController_Loader::init(DaleController_Loader *this)
{
  v2 = (this + 16);
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_Loader::init(void)::$_0 &&>>);
  }

  return *(this + 8);
}

uint64_t DaleController_Loader::setDeviceConfig(DaleController_Loader *this)
{
  v18 = 0;
  v19 = 0;
  v17.tv_sec = 0;
  *&v17.tv_usec = 0;
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  time(&v19);
  v2 = gettimeofday(&v17, &v18);
  ACFULogging::getLogInstance(v2);
  v3 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v3);
  v4 = v18;
  v5 = HIDWORD(v18);
  v6 = ACFULogging::handleMessage();
  v16 = 0;
  ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage();
  v7 = *(this + 3);
  LOBYTE(v10) = 116;
  v8 = support::transport::airship::write(*(v7 + 8), &v10, 1uLL);
  if (v8)
  {
    v8 = support::transport::airship::read(*(*(this + 3) + 8), &v16, 1uLL);
    if ((v8 & 1) != 0 && v16 == 116)
    {
      v15 = 0;
      v14 = 0;
      v12 = v4;
      v13 = v5;
      v10 = 36;
      v11 = v19;
      v8 = support::transport::airship::write(*(*(this + 3) + 8), &v10, 0x24uLL);
      if (v8)
      {
        v10 = 0;
        ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage();
        v8 = support::transport::airship::read(*(*(this + 3) + 8), &v10, 4uLL);
        if ((v8 & 1) != 0 && !v10)
        {
          return 1;
        }
      }
    }
  }

  ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleController_Loader::getBootMode(ACFULogging *a1, _BYTE *a2, _BYTE *a3)
{
  ACFULogging::getLogInstance(a1);
  v6 = ACFULogging::handleMessage();
  v20 = 0;
  ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage();
  v7 = *(a1 + 3);
  v21 = 115;
  v8 = support::transport::airship::write(*(v7 + 8), &v21, 1uLL);
  if ((v8 & 1) == 0)
  {
    ACFULogging::getLogInstance(v8);
LABEL_14:
    ACFULogging::handleMessage();
    return 0;
  }

  v9 = support::transport::airship::read(*(*(a1 + 3) + 8), &v20, 1uLL);
  if ((v9 & 1) == 0 || v20 != 115)
  {
    ACFULogging::getLogInstance(v9);
    goto LABEL_14;
  }

  v19 = 0;
  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  v10 = support::transport::airship::read(*(*(a1 + 3) + 8), &v19, 1uLL);
  v11 = v10;
  if (v10)
  {
    v12 = v19;
    *a3 = (v19 >> 3) & 7;
    *a2 = 0xFFFFFFFFFF020100 >> (8 * (v12 & 7u));
    ACFULogging::getLogInstance(v10);
    if ((*a2 + 1) > 3u)
    {
      v16 = *a3;
      v15 = v16 - 1;
      if ((v16 - 1) > 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = off_1E876DF00[(*a2 + 1)];
      v14 = *a3;
      v15 = v14 - 1;
      if ((v14 - 1) > 2)
      {
        goto LABEL_10;
      }
    }

    v17 = off_1E876DEE8[v15];
  }

  else
  {
    ACFULogging::getLogInstance(v10);
  }

LABEL_10:
  ACFULogging::handleMessage();
  return v11;
}

uint64_t DaleController_Loader::getCrashReason(ACFULogging *a1, uint64_t a2)
{
  ACFULogging::getLogInstance(a1);
  v4 = ACFULogging::handleMessage();
  LOBYTE(v28) = 0;
  ACFULogging::getLogInstance(v4);
  ACFULogging::handleMessage();
  v5 = *(a1 + 3);
  LOBYTE(__p) = 121;
  v6 = support::transport::airship::write(*(v5 + 8), &__p, 1uLL);
  if ((v6 & 1) == 0 || (v6 = support::transport::airship::read(*(*(a1 + 3) + 8), &v28, 1uLL), (v6 & 1) == 0) || v28 != 121 || (LODWORD(v28) = 0, ACFULogging::getLogInstance(v6), ACFULogging::handleMessage(), v6 = support::transport::airship::read(*(*(a1 + 3) + 8), &v28, 4uLL), (v6 & 1) == 0))
  {
    ACFULogging::getLogInstance(v6);
LABEL_24:
    ACFULogging::handleMessage();
    return 0;
  }

  v7 = v28;
  ACFULogging::getLogInstance(v6);
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage();
  v9 = v28;
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = &v10[-*a2];
  v13 = v28 - v12;
  if (v28 <= v12)
  {
    if (v28 < v12)
    {
      *(a2 + 8) = &v11[v28];
    }
  }

  else
  {
    v14 = *(a2 + 16);
    if (v14 - v10 >= v13)
    {
      v19 = &v10[v13];
      bzero(v10, v28 - v12);
      *(a2 + 8) = v19;
    }

    else
    {
      v15 = v14 - v11;
      v16 = 2 * v15;
      if (2 * v15 <= v28)
      {
        v16 = v28;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      v18 = operator new(v17);
      bzero(&v18[v12], v13);
      memcpy(v18, v11, v12);
      *a2 = v18;
      *(a2 + 8) = &v18[v9];
      *(a2 + 16) = &v18[v17];
      if (v11)
      {
        operator delete(v11);
      }
    }
  }

  v20 = support::transport::airship::read(*(*(a1 + 3) + 8), *a2, v28);
  v21 = v20;
  ACFULogging::getLogInstance(v20);
  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = operator new(0x30uLL);
  strcpy(v22, "DaleController_Loader::getCrashReason");
  __p = v22;
  v27 = xmmword_1E53919F0;
  v23 = *a2;
  v24 = ACFULogging::handleMessageBinary();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  ACFULogging::getLogInstance(v24);
  ACFULogging::handleMessage();
  return 1;
}

void sub_1E52AEFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaleController_Loader::verifyFastBootStatus(DaleController_Loader *this)
{
  ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage();
  v9 = 0;
  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  v3 = *(this + 3);
  v10 = -111;
  v4 = support::transport::airship::write(*(v3 + 8), &v10, 1uLL);
  if (v4)
  {
    v5 = support::transport::airship::read(*(*(this + 3) + 8), &v9, 1uLL);
    if ((v5 & 1) != 0 && v9 == 145)
    {
      *v8 = 0;
      ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage();
      v6 = support::transport::airship::read(*(*(this + 3) + 8), v8, 4uLL);
      if ((v6 & 1) != 0 && !*v8)
      {
        ACFULogging::getLogInstance(v6);
        ACFULogging::handleMessage();
        return 1;
      }

      ACFULogging::getLogInstance(v6);
    }

    else
    {
      ACFULogging::getLogInstance(v5);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

  ACFULogging::handleMessage();
  return 0;
}

BOOL DaleController_Loader::processDDR(DaleTransport_BootLoader **this, DaleImage *a2, int a3)
{
  ACFULogging::getLogInstance(this);
  v6 = ACFULogging::handleMessage();
  if (a2)
  {
    LOBYTE(__sz) = 0;
    ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage();
    v7 = this[3];
    LOBYTE(v30) = 126;
    v8 = support::transport::airship::write(*(v7 + 1), &v30, 1uLL);
    if (v8)
    {
      v9 = support::transport::airship::read(*(this[3] + 1), &__sz, 1uLL);
      if ((v9 & 1) != 0 && __sz == 126)
      {
        Size = DaleImage::getSize(a2);
        ACFULogging::getLogInstance(Size);
        ACFULogging::handleMessage();
        v11 = this[3];
        v30 = Size;
        v9 = support::transport::airship::write(*(v11 + 1), &v30, 4uLL);
        if (v9)
        {
          if (!Size || (ACFULogging::getLogInstance(v9), ACFULogging::handleMessage(), v9 = DaleTransport_BootLoader::write(this[3], a2), (v9 & 1) != 0))
          {
            v30 = 0;
            ACFULogging::getLogInstance(v9);
            ACFULogging::handleMessage();
            v12 = support::transport::airship::read(*(this[3] + 1), &v30, 4uLL);
            if ((v12 & 1) == 0)
            {
              goto LABEL_35;
            }

            if (!v30)
            {
              goto LABEL_25;
            }

            ACFULogging::getLogInstance(v12);
            v13 = ACFULogging::handleMessage();
            ACFULogging::getLogInstance(v13);
            v14 = ACFULogging::handleMessage();
            __sz_7 = 0;
            ACFULogging::getLogInstance(v14);
            ACFULogging::handleMessage();
            v15 = this[3];
            LOBYTE(__sz) = 127;
            v12 = support::transport::airship::write(*(v15 + 1), &__sz, 1uLL);
            if ((v12 & 1) == 0 || (v12 = support::transport::airship::read(*(this[3] + 1), &__sz_7, 1uLL), (v12 & 1) == 0) || __sz_7 != 127 || (__sz = 0, ACFULogging::getLogInstance(v12), ACFULogging::handleMessage(), v12 = support::transport::airship::read(*(this[3] + 1), &__sz, 4uLL), (v12 & 1) == 0) || (__sz - 1048577) >> 20 != 4095)
            {
LABEL_35:
              ACFULogging::getLogInstance(v12);
              ACFULogging::handleMessage();
              v25 = 4;
              return v25 == 0;
            }

            ACFULogging::getLogInstance(v12);
            v16 = ACFULogging::handleMessage();
            ACFULogging::getLogInstance(v16);
            ACFULogging::handleMessage();
            v17 = __sz;
            if (__sz)
            {
              v18 = operator new(__sz);
              v19 = &v18[v17];
              bzero(v18, v17);
              v20 = v18;
            }

            else
            {
              v20 = 0;
              v19 = 0;
            }

            v21 = support::transport::airship::read(*(this[3] + 1), v20, v17);
            if (v21)
            {
              if (!a3)
              {
                goto LABEL_22;
              }

              v22 = **a2;
              if (v23)
              {
                v24 = DaleImage_DDR::saveNewDataToFile(v23, v20, v19 - v20);
                if (v24)
                {
LABEL_22:
                  v25 = 0;
                  v26 = 1;
                  if (!v20)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_23;
                }

                ACFULogging::getLogInstance(v24);
              }

              else
              {
                ACFULogging::getLogInstance(0);
              }

              ACFULogging::handleMessage();
            }

            else
            {
              ACFULogging::getLogInstance(v21);
              ACFULogging::handleMessage();
            }

            v26 = 0;
            v25 = 4;
            if (!v20)
            {
LABEL_24:
              if ((v26 & 1) == 0)
              {
                return v25 == 0;
              }

LABEL_25:
              v25 = 0;
              return v25 == 0;
            }

LABEL_23:
            operator delete(v20);
            goto LABEL_24;
          }
        }
      }

      ACFULogging::getLogInstance(v9);
    }

    else
    {
      ACFULogging::getLogInstance(v8);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v6);
  }

  ACFULogging::handleMessage();
  return 0;
}

void sub_1E52AF6C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaleController_Loader::sendImage_Calibration(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage();
  if (a2)
  {
    v13 = 0;
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    v5 = this[3];
    v14 = 112;
    v6 = support::transport::airship::write(*(v5 + 1), &v14, 1uLL);
    if (v6)
    {
      v7 = support::transport::airship::read(*(this[3] + 1), &v13, 1uLL);
      if ((v7 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v13 != 112)
      {
        goto LABEL_18;
      }

      Size = DaleImage::getSize(a2);
      ACFULogging::getLogInstance(Size);
      ACFULogging::handleMessage();
      v9 = this[3];
      v15 = Size;
      v7 = support::transport::airship::write(*(v9 + 1), &v15, 4uLL);
      if ((v7 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (!Size || (ACFULogging::getLogInstance(v7), ACFULogging::handleMessage(), v7 = DaleTransport_BootLoader::write(this[3], a2), (v7 & 1) != 0))
      {
        *v12 = 0;
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();
        v10 = support::transport::airship::read(*(this[3] + 1), v12, 4uLL);
        if ((v10 & 1) != 0 && !*v12)
        {
          ACFULogging::getLogInstance(v10);
          ACFULogging::handleMessage();
          return 1;
        }

        ACFULogging::getLogInstance(v10);
      }

      else
      {
LABEL_18:
        ACFULogging::getLogInstance(v7);
      }
    }

    else
    {
      ACFULogging::getLogInstance(v6);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleController_Loader::sendImage_ProvisioningManifest(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage();
  if (a2)
  {
    Size = DaleImage::getSize(a2);
    if (!Size)
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      return 1;
    }

    v17 = 0;
    ACFULogging::getLogInstance(Size);
    ACFULogging::handleMessage();
    v6 = this[3];
    v18 = -93;
    v7 = support::transport::airship::write(*(v6 + 1), &v18, 1uLL);
    if (v7)
    {
      v8 = support::transport::airship::read(*(this[3] + 1), &v17, 1uLL);
      if ((v8 & 1) == 0 || v17 != 163)
      {
        goto LABEL_14;
      }

      v9 = DaleImage::getSize(a2);
      ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage();
      v10 = this[3];
      v19 = v9;
      v11 = support::transport::airship::write(*(v10 + 1), &v19, 4uLL);
      LOBYTE(v9) = v11;
      ACFULogging::getLogInstance(v11);
      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }

      ACFULogging::handleMessage();
      v8 = DaleTransport_BootLoader::write(this[3], a2);
      if (v8)
      {
        *v16 = 0;
        ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage();
        v12 = support::transport::airship::read(*(this[3] + 1), v16, 4uLL);
        v13 = v12;
        ACFULogging::getLogInstance(v12);
        if (v13)
        {
          v14 = ACFULogging::handleMessage();
          if (!*v16)
          {
            return 1;
          }

          ACFULogging::getLogInstance(v14);
        }
      }

      else
      {
LABEL_14:
        ACFULogging::getLogInstance(v8);
      }
    }

    else
    {
      ACFULogging::getLogInstance(v7);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

LABEL_19:
  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleController_Loader::sendImage_BBCfgHashTable(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage();
  if (a2)
  {
    v15 = 0;
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    v5 = this[3];
    v16 = -95;
    v6 = support::transport::airship::write(*(v5 + 1), &v16, 1uLL);
    if (v6)
    {
      v7 = support::transport::airship::read(*(this[3] + 1), &v15, 1uLL);
      if ((v7 & 1) == 0 || v15 != 161)
      {
        goto LABEL_17;
      }

      Size = DaleImage::getSize(a2);
      ACFULogging::getLogInstance(Size);
      if (!Size)
      {
        goto LABEL_19;
      }

      ACFULogging::handleMessage();
      v9 = this[3];
      v17 = Size;
      v10 = support::transport::airship::write(*(v9 + 1), &v17, 4uLL);
      v11 = v10;
      ACFULogging::getLogInstance(v10);
      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      ACFULogging::handleMessage();
      v7 = DaleTransport_BootLoader::write(this[3], a2);
      if (v7)
      {
        *v14 = 0;
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();
        v12 = support::transport::airship::read(*(this[3] + 1), v14, 4uLL);
        if ((v12 & 1) != 0 && !*v14)
        {
          return 1;
        }

        ACFULogging::getLogInstance(v12);
      }

      else
      {
LABEL_17:
        ACFULogging::getLogInstance(v7);
      }
    }

    else
    {
      ACFULogging::getLogInstance(v6);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

LABEL_19:
  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleController_Loader::sendImage_BBCfgSegment(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage();
  if (a2)
  {
    v15 = 0;
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    v5 = this[3];
    v16 = -94;
    v6 = support::transport::airship::write(*(v5 + 1), &v16, 1uLL);
    if (v6)
    {
      v7 = support::transport::airship::read(*(this[3] + 1), &v15, 1uLL);
      if ((v7 & 1) == 0 || v15 != 162)
      {
        goto LABEL_17;
      }

      Size = DaleImage::getSize(a2);
      ACFULogging::getLogInstance(Size);
      if (!Size)
      {
        goto LABEL_19;
      }

      ACFULogging::handleMessage();
      v9 = this[3];
      v17 = Size;
      v10 = support::transport::airship::write(*(v9 + 1), &v17, 4uLL);
      v11 = v10;
      ACFULogging::getLogInstance(v10);
      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      ACFULogging::handleMessage();
      v7 = DaleTransport_BootLoader::write(this[3], a2);
      if (v7)
      {
        *v14 = 0;
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();
        v12 = support::transport::airship::read(*(this[3] + 1), v14, 4uLL);
        if ((v12 & 1) != 0 && !*v14)
        {
          return 1;
        }

        ACFULogging::getLogInstance(v12);
      }

      else
      {
LABEL_17:
        ACFULogging::getLogInstance(v7);
      }
    }

    else
    {
      ACFULogging::getLogInstance(v6);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

LABEL_19:
  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleController_Loader::sendImage_Bundle(DaleTransport_BootLoader **this, const DaleImage *a2)
{
  ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v4);
  if (!a2)
  {
    goto LABEL_20;
  }

  v5 = *(a2 + 2);
  if (v5 <= 0xA)
  {
    v6 = off_1E876DF20[v5];
  }

  v7 = ACFULogging::handleMessage();
  v18 = 0;
  ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage();
  v8 = this[3];
  v19 = 114;
  v9 = support::transport::airship::write(*(v8 + 1), &v19, 1uLL);
  if ((v9 & 1) == 0)
  {
    ACFULogging::getLogInstance(v9);
LABEL_20:
    ACFULogging::handleMessage();
    return 0;
  }

  v10 = support::transport::airship::read(*(this[3] + 1), &v18, 1uLL);
  if ((v10 & 1) == 0 || v18 != 114)
  {
    goto LABEL_16;
  }

  Size = DaleImage::getSize(a2);
  ACFULogging::getLogInstance(Size);
  if (!Size)
  {
    goto LABEL_20;
  }

  v12 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage();
  v10 = DaleTransport_BootLoader::write(this[3], a2);
  if ((v10 & 1) == 0)
  {
LABEL_16:
    ACFULogging::getLogInstance(v10);
    goto LABEL_20;
  }

  *v17 = 0;
  ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage();
  v13 = support::transport::airship::read(*(this[3] + 1), v17, 4uLL);
  if ((v13 & 1) == 0 || *v17)
  {
    ACFULogging::getLogInstance(v13);
    goto LABEL_20;
  }

  ACFULogging::getLogInstance(v13);
  v14 = *(a2 + 2);
  if (v14 <= 0xA)
  {
    v15 = off_1E876DF20[v14];
  }

  ACFULogging::handleMessage();
  return 1;
}

uint64_t DaleController_Loader::sendImage_Nvram(DaleTransport_BootLoader **this, const DaleImage *a2, int a3)
{
  ACFULogging::getLogInstance(this);
  v6 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v6);
  if (!a2)
  {
    goto LABEL_21;
  }

  v7 = ACFULogging::handleMessage();
  v17 = 0;
  ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage();
  v8 = this[3];
  v18 = 113;
  v9 = support::transport::airship::write(*(v8 + 1), &v18, 1uLL);
  if (v9)
  {
    v10 = support::transport::airship::read(*(this[3] + 1), &v17, 1uLL);
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v17 != 113)
    {
      goto LABEL_20;
    }

    Size = DaleImage::getSize(a2);
    ACFULogging::getLogInstance(Size);
    ACFULogging::handleMessage();
    v12 = this[3];
    v19 = Size;
    v10 = support::transport::airship::write(*(v12 + 1), &v19, 4uLL);
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    ACFULogging::getLogInstance(v10);
    if (Size)
    {
      ACFULogging::handleMessage();
      v10 = DaleTransport_BootLoader::write(this[3], a2);
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      ACFULogging::handleMessage();
      v13 = this[3];
      v20 = a3;
      v10 = support::transport::airship::write(*(v13 + 1), &v20, 4uLL);
      if ((v10 & 1) == 0)
      {
LABEL_20:
        ACFULogging::getLogInstance(v10);
        goto LABEL_21;
      }
    }

    *v16 = 0;
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    v14 = support::transport::airship::read(*(this[3] + 1), v16, 4uLL);
    if ((v14 & 1) != 0 && !*v16)
    {
      ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage();
      return 1;
    }

    ACFULogging::getLogInstance(v14);
  }

  else
  {
    ACFULogging::getLogInstance(v9);
  }

LABEL_21:
  ACFULogging::handleMessage();
  return 0;
}

uint64_t DaleController_Loader::sendImage_BBTicket(DaleTransport_BootLoader **this, const DaleImage *a2, int a3)
{
  ACFULogging::getLogInstance(this);
  v6 = ACFULogging::handleMessage();
  if (!a2)
  {
    ACFULogging::getLogInstance(v6);
    goto LABEL_20;
  }

  Size = DaleImage::getSize(a2);
  if (Size)
  {
    LOBYTE(__p) = 0;
    ACFULogging::getLogInstance(Size);
    ACFULogging::handleMessage();
    v8 = this[3];
    LOBYTE(v25[0]) = -92;
    v9 = support::transport::airship::write(*(v8 + 1), v25, 1uLL);
    if ((v9 & 1) == 0)
    {
      ACFULogging::getLogInstance(v9);
      goto LABEL_20;
    }

    v10 = support::transport::airship::read(*(this[3] + 1), &__p, 1uLL);
    if ((v10 & 1) == 0 || __p != 164)
    {
      goto LABEL_19;
    }

    v11 = DaleImage::getSize(a2);
    ACFULogging::getLogInstance(v11);
    if (!v11)
    {
      goto LABEL_20;
    }

    ACFULogging::handleMessage();
    v12 = this[3];
    LODWORD(v25[0]) = v11;
    v13 = support::transport::airship::write(*(v12 + 1), v25, 4uLL);
    v14 = v13;
    ACFULogging::getLogInstance(v13);
    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }

    ACFULogging::handleMessage();
    v10 = DaleTransport_BootLoader::write(this[3], a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }

    *v26 = 0;
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    v15 = support::transport::airship::read(*(this[3] + 1), v26, 8uLL);
    v16 = v15;
    ACFULogging::getLogInstance(v15);
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }

    v10 = ACFULogging::handleMessage();
    v17 = *v26;
    if (*v26)
    {
      goto LABEL_19;
    }

    if (a3)
    {
      memset(v25, 0, sizeof(v25));
      ACFULogging::getLogInstance(v10);
      v10 = ACFULogging::handleMessage();
      if (v17 == 0x14000000000 || v17 == 0x19000000000)
      {
        v10 = support::transport::airship::read(*(this[3] + 1), v25, HIDWORD(v17));
        if (v10)
        {
          v18 = v17 / 0x5000000000;
          v19 = v25;
          do
          {
            ACFULogging::getLogInstance(v10);
            v20 = ACFULogging::handleMessage();
            ACFULogging::getLogInstance(v20);
            v21 = operator new(0x30uLL);
            strcpy(v21, "DaleController_Loader::sendImage_BBTicket");
            __p = v21;
            v24 = xmmword_1E5391A00;
            v10 = ACFULogging::handleMessageBinary();
            if (SHIBYTE(v24) < 0)
            {
              operator delete(__p);
            }

            v19 += 5;
            --v18;
          }

          while (v18);
          return 1;
        }
      }

LABEL_19:
      ACFULogging::getLogInstance(v10);
LABEL_20:
      ACFULogging::handleMessage();
      return 0;
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  return 1;
}

void sub_1E52B0A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t DaleController_Loader::getBasebandCapabilites(ACFULogging *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  ACFULogging::getLogInstance(a1);
  v2 = ACFULogging::handleMessage();
  v61.__r_.__value_.__s.__data_[0] = 0;
  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  v3 = *(a1 + 3);
  v62[0] = -96;
  v4 = support::transport::airship::write(*(v3 + 8), v62, 1uLL);
  if ((v4 & 1) == 0)
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
LABEL_124:
    v48 = 0;
    v46 = 0;
    v47 = 43520;
    v51 = *MEMORY[0x1E69E9840];
    return v48 | ((v46 | v47) << 16);
  }

  v5 = support::transport::airship::read(*(*(a1 + 3) + 8), &v61, 1uLL);
  if ((v5 & 1) == 0)
  {
    goto LABEL_123;
  }

  if (v61.__r_.__value_.__s.__data_[0] != 160)
  {
    goto LABEL_123;
  }

  *v62 = 0;
  *&v62[2] = 0;
  ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage();
  v5 = support::transport::airship::write(*(*(a1 + 3) + 8), v62, 0xAuLL);
  if ((v5 & 1) == 0)
  {
    goto LABEL_123;
  }

  memset(v62, 0, sizeof(v62));
  ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage();
  v6 = support::transport::airship::read(*(*(a1 + 3) + 8), v62, 0x86uLL);
  v7 = v6;
  ACFULogging::getLogInstance(v6);
  if ((v7 & 1) == 0)
  {
    ACFULogging::handleMessage();
    goto LABEL_124;
  }

  strnlen(&v62[6], 0x80uLL);
  v5 = ACFULogging::handleMessage();
  if (*v62)
  {
LABEL_123:
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
    goto LABEL_124;
  }

  v8 = *&v62[2];
  v9 = *&v62[4];
  memset(&__dst, 170, sizeof(__dst));
  v10 = strnlen(&v62[6], 0x80uLL);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_dst = operator new(v13);
    __dst.__r_.__value_.__l.__size_ = v11;
    __dst.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_15;
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  p_dst = &__dst;
  if (v10)
  {
LABEL_15:
    memcpy(p_dst, &v62[6], v11);
  }

  p_dst->__r_.__value_.__s.__data_[v11] = 0;
  memset(&v61, 0, sizeof(v61));
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v14 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&__p);
    v15 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v16 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v15;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v14 = off_1ECFD4E60;
  }

  v55 = v14;
  *&v56 = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  v53 = xmmword_1E5391A10;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1E5391A10;
  strcpy(__p.__r_.__value_.__l.__data_, "Baseband firmware version");
  qmemcpy(v52, "firmware versionBaseband firmwar", sizeof(v52));
  os_unfair_lock_lock(v14 + 10);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&key, p_p);
  v19 = (**&v14->_os_unfair_lock_opaque)(v14, key);
  if (v19)
  {
    ctu::cf::assign();
    CFRelease(v19);
  }

  MEMORY[0x1E6926590](&key);
  os_unfair_lock_unlock(v14 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v56 && !atomic_fetch_add((v56 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v56 + 16))(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __dst.__r_.__value_.__l.__size_;
  }

  v22 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  v23 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v61.__r_.__value_.__l.__size_;
  }

  if (v21 != v22)
  {
    v26 = 1;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    if (!v26)
    {
      goto LABEL_111;
    }

    goto LABEL_54;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__dst;
  }

  else
  {
    v24 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v61;
  }

  else
  {
    v25 = v61.__r_.__value_.__r.__words[0];
  }

  v20 = memcmp(v24, v25, v21);
  v26 = v20 != 0;
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_53:
  operator delete(v61.__r_.__value_.__l.__data_);
  if (!v26)
  {
    goto LABEL_111;
  }

LABEL_54:
  ACFULogging::getLogInstance(v20);
  ACFULogging::handleMessage();
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v27 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&v61);
    v28 = *&v61.__r_.__value_.__l.__data_;
    *&v61.__r_.__value_.__l.__data_ = 0uLL;
    v29 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = v61.__r_.__value_.__l.__size_;
    if (v61.__r_.__value_.__l.__size_ && !atomic_fetch_add((v61.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v27 = off_1ECFD4E60;
  }

  key = v27;
  v58 = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v31 = operator new(0x20uLL);
  v55 = v31;
  v56 = v53;
  *v31 = v52[1];
  *(v31 + 9) = v52[0];
  *(v31 + 25) = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = __dst;
  }

  os_unfair_lock_lock((v27 + 40));
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v54;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = __p;
  }

  if (v56 >= 0)
  {
    v32 = &v55;
  }

  else
  {
    v32 = v55;
  }

  v33 = ctu::cf::plist_adapter::set<std::string>(v27, &v61, v32);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_78:
      os_unfair_lock_unlock((v27 + 40));
      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_84;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock((v27 + 40));
  if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_79:
    if ((SHIBYTE(v56) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

LABEL_85:
    operator delete(v55);
    v35 = v58;
    if (!v58)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_84:
  operator delete(v54.__r_.__value_.__l.__data_);
  if (SHIBYTE(v56) < 0)
  {
    goto LABEL_85;
  }

LABEL_80:
  v35 = v58;
  if (!v58)
  {
LABEL_87:
    if (v33)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_86:
  if (atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_87;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if ((v33 & 1) == 0)
  {
LABEL_88:
    ACFULogging::getLogInstance(v34);
    ACFULogging::handleMessage();
  }

LABEL_89:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v36 = off_1ECFD4E60;
  if (!off_1ECFD4E60)
  {
    SharedData::create_default_global(&v61);
    v37 = *&v61.__r_.__value_.__l.__data_;
    *&v61.__r_.__value_.__l.__data_ = 0uLL;
    v38 = *(&off_1ECFD4E60 + 1);
    off_1ECFD4E60 = v37;
    if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v39 = v61.__r_.__value_.__l.__size_;
    if (v61.__r_.__value_.__l.__size_ && !atomic_fetch_add((v61.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    v36 = off_1ECFD4E60;
  }

  __p.__r_.__value_.__r.__words[0] = v36;
  __p.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
  if (*(&off_1ECFD4E60 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v61.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
  *&v61.__r_.__value_.__r.__words[1] = xmmword_1E5391A20;
  strcpy(v61.__r_.__value_.__l.__data_, "Firmware version changed since last commcenter launch");
  os_unfair_lock_lock((v36 + 40));
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v61;
  }

  else
  {
    v40 = v61.__r_.__value_.__r.__words[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&key, v40);
  v41 = *MEMORY[0x1E695E4D0];
  v55 = v41;
  if (v41)
  {
    v42 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(key, v41, *(v36 + 8), *(v36 + 16), *MEMORY[0x1E695E8B0]);
    v43 = CFPreferencesSynchronize(*(v36 + 8), *(v36 + 16), v42) != 0;
    CFRelease(v41);
    MEMORY[0x1E6926590](&key);
    os_unfair_lock_unlock((v36 + 40));
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

LABEL_107:
    operator delete(v61.__r_.__value_.__l.__data_);
    v45 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_109;
    }

LABEL_108:
    if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
      if (v43)
      {
        goto LABEL_111;
      }

      goto LABEL_110;
    }

    goto LABEL_109;
  }

  v43 = 0;
  MEMORY[0x1E6926590](&key);
  os_unfair_lock_unlock((v36 + 40));
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_107;
  }

LABEL_104:
  v45 = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_108;
  }

LABEL_109:
  if (!v43)
  {
LABEL_110:
    ACFULogging::getLogInstance(v44);
    ACFULogging::handleMessage();
  }

LABEL_111:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v46 = v8 != 0;
  v47 = (v9 << 16) | 0xAA00;
  v48 = 1;
  v49 = *MEMORY[0x1E69E9840];
  return v48 | ((v46 | v47) << 16);
}

void sub_1E52B1590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a40 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void DaleController_Loader::getBoardParameters(DaleController_Loader *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = operator new(0x110uLL);
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6->__vftable = &unk_1F5EFFBC8;
  v7 = operator new(0x20uLL);
  *(&v42 + 1) = v7 + 2;
  *&v43 = v7 + 2;
  *v7 = xmmword_1E876DEC8;
  v7[1] = off_1E876DED8;
  *&v42 = v7;
  DaleCommon::DalePersonalizationParams::DalePersonalizationParams(&v6[1].__vftable, &v42);
  operator delete(v7);
  v37 = &v6[1].__vftable;
  v38 = v6;
  *v36 = 0;
  *v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  *bytes = 0;
  v40 = 0;
  v41 = 0;
  if (a2)
  {
    LOBYTE(v31) = 0;
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
    v9 = *(this + 3);
    LOBYTE(__p) = 119;
    v10 = support::transport::airship::write(*(v9 + 8), &__p, 1uLL);
    if ((v10 & 1) == 0)
    {
      ACFULogging::getLogInstance(v10);
LABEL_55:
      ACFULogging::handleMessage();
      goto LABEL_57;
    }

    v8 = support::transport::airship::read(*(*(this + 3) + 8), &v31, 1uLL);
    if ((v8 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (v31 != 119)
    {
      goto LABEL_56;
    }

    v31 = 0;
    v8 = support::transport::airship::read(*(*(this + 3) + 8), &v31, 4uLL);
    if ((v8 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (v31 != 20)
    {
LABEL_56:
      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
LABEL_57:
      v37 = 0;
      v38 = 0;
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v26 = 3000;
      v27 = v37;
      v28 = v38;
      if (v38)
      {
        goto LABEL_33;
      }

LABEL_60:
      *a3 = v27;
      *(a3 + 8) = 0;
      *(a3 + 16) = v26;
      goto LABEL_61;
    }

    v8 = support::transport::airship::read(*(*(this + 3) + 8), bytes, 0x14uLL);
    if ((v8 & 1) == 0)
    {
LABEL_54:
      ACFULogging::getLogInstance(v8);
      goto LABEL_55;
    }

    ACFULogging::getLogInstance(v8);
    v11 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v11);
    v12 = operator new(0x30uLL);
    strcpy(v12, "DaleController_Loader::getBoardParameters");
    __p = v12;
    v35 = xmmword_1E5391A00;
    ACFULogging::handleMessageBinary();
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    v13 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 20);
    v6[3].__shared_owners_ = v13;
    LOBYTE(v6[3].__shared_weak_owners_) = v13 != 0;
    LODWORD(__p) = 0;
    ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage();
    v8 = support::transport::airship::read(*(*(this + 3) + 8), &__p, 4uLL);
    if ((v8 & 1) == 0 || __p)
    {
      goto LABEL_56;
    }
  }

  LOBYTE(v31) = 0;
  ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage();
  v14 = *(this + 3);
  LOBYTE(__p) = 118;
  v8 = support::transport::airship::write(*(v14 + 8), &__p, 1uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  v8 = support::transport::airship::read(*(*(this + 3) + 8), &v31, 1uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v31 != 118)
  {
    goto LABEL_56;
  }

  v33 = 0;
  v31 = 0;
  v32 = 0;
  v8 = support::transport::airship::read(*(*(this + 3) + 8), &v33, 4uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v33 != 12)
  {
    goto LABEL_54;
  }

  v8 = support::transport::airship::read(*(*(this + 3) + 8), &v31, 0xCuLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  ACFULogging::getLogInstance(v8);
  v15 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v15);
  v16 = operator new(0x30uLL);
  strcpy(v16, "DaleController_Loader::getBoardParameters");
  __p = v16;
  v35 = xmmword_1E5391A00;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  v17.i32[0] = v31;
  v18 = vrev64_s16(*&vmovl_u8(v17));
  *v36 = vuzp1_s8(v18, v18).u32[0];
  v19 = *MEMORY[0x1E695E480];
  v20 = CFDataCreate(*MEMORY[0x1E695E480], v36, 4);
  v6[1].__shared_owners_ = v20;
  LOBYTE(v6[1].__shared_weak_owners_) = v20 != 0;
  *v45 = v32;
  v21 = CFDataCreate(v19, v45, 8);
  v6[2].__shared_weak_owners_ = v21;
  LOBYTE(v6[3].__vftable) = v21 != 0;
  LODWORD(__p) = 0;
  ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage();
  v8 = support::transport::airship::read(*(*(this + 3) + 8), &__p, 4uLL);
  if ((v8 & 1) == 0 || __p)
  {
    goto LABEL_56;
  }

  LOBYTE(v31) = 0;
  ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage();
  v22 = *(this + 3);
  LOBYTE(__p) = 117;
  v8 = support::transport::airship::write(*(v22 + 8), &__p, 1uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  v8 = support::transport::airship::read(*(*(this + 3) + 8), &v31, 1uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v31 != 117)
  {
    goto LABEL_56;
  }

  v31 = 0;
  v8 = support::transport::airship::read(*(*(this + 3) + 8), &v31, 4uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v31 != 48)
  {
    goto LABEL_56;
  }

  v8 = support::transport::airship::read(*(*(this + 3) + 8), &v42, 0x30uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_54;
  }

  ACFULogging::getLogInstance(v8);
  v23 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v23);
  v24 = operator new(0x30uLL);
  strcpy(v24, "DaleController_Loader::getBoardParameters");
  __p = v24;
  v35 = xmmword_1E5391A00;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  LODWORD(__p) = bswap32(v42);
  v25 = CFDataCreate(v19, &__p, 4);
  v6[9].__shared_weak_owners_ = v25;
  LOBYTE(v6[10].__vftable) = v25 != 0;
  LODWORD(__p) = 0;
  ACFULogging::getLogInstance(v25);
  ACFULogging::handleMessage();
  v8 = support::transport::airship::read(*(*(this + 3) + 8), &__p, 4uLL);
  if ((v8 & 1) == 0 || __p)
  {
    goto LABEL_56;
  }

  ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage();
  DaleCommon::DalePersonalizationParams::logParameters(&v6[1]);
  v26 = 0;
  v27 = v37;
  v28 = v38;
  if (!v38)
  {
    goto LABEL_60;
  }

LABEL_33:
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v27;
  *(a3 + 8) = v28;
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 16) = v26;
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_61:
  v29 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1E52B2140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void DaleController_Loader::~DaleController_Loader(DaleController_Loader *this)
{
  *this = &unk_1F5F01428;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = v1[1];
    v1[1] = 0;
    if (v2)
    {
      support::transport::airship::~airship(v2);
      operator delete(v3);
    }

    operator delete(v1);
  }
}

{
  *this = &unk_1F5F01428;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = this;
    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v1);
    this = v2;
  }

  operator delete(this);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_Loader::init(void)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  DaleTransport_BootLoader::create(2, &__p);
  v3 = __p;
  __p = 0;
  v4 = *(v1 + 24);
  *(v1 + 24) = v3;
  if (v4)
  {
    v5 = v4[1];
    v4[1] = 0;
    if (v5)
    {
      support::transport::airship::~airship(v5);
      operator delete(v6);
    }

    operator delete(v4);
    v7 = __p;
    __p = 0;
    if (v7)
    {
      v8 = v7[1];
      v7[1] = 0;
      if (v8)
      {
        support::transport::airship::~airship(v8);
        operator delete(v9);
      }

      operator delete(v7);
    }

    v3 = *(v1 + 24);
  }

  if (!v3)
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
  }

  *(v1 + 8) = v3 != 0;
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
  MEMORY[0x1E6926590](&v6);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v4;
}

uint64_t ctu::cf::plist_adapter::set<std::string>()
{
  v0 = *MEMORY[0x1E695E480];
  ctu::cf::convert_copy();
  return 0;
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_282()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t eUICC::Perso::Perform(uint64_t a1, uint64_t a2, void *a3)
{
  v172 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  if (!qword_1ED9440D0)
  {
    v7 = operator new(0x38uLL);
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 0;
    cf[0].__r_.__value_.__r.__words[0] = v7;
    v6 = operator new(0x20uLL);
    v6->__vftable = &unk_1F5F01460;
    v6->__shared_owners_ = 0;
    v6->__shared_weak_owners_ = 0;
    v6[1].__vftable = v7;
    v8 = off_1ED9440D8;
    qword_1ED9440D0 = v7;
    off_1ED9440D8 = v6;
    if (!v8)
    {
      v148 = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v7 = qword_1ED9440D0;
  v6 = off_1ED9440D8;
  v148 = off_1ED9440D8;
  if (off_1ED9440D8)
  {
LABEL_8:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v149[0] = 0;
  v149[1] = 0;
  v150 = 0;
  if (!*a3)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v26 = "vinylValve";
    goto LABEL_38;
  }

  *(v7 + 3) = a1;
  v12 = dispatch_queue_create("PersoImpl", 0);
  v13 = *v7;
  *v7 = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(a1 + 39);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a1 + 24);
  }

  if (!v14)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v26 = "!performOptions.alderHostname.empty()";
    goto LABEL_38;
  }

  ReverseProxyGetSettings(a1 + 16, cf);
  v15 = (v7 + 8);
  if (v7 + 8 != cf)
  {
    v16 = *v15;
    v17 = cf[0].__r_.__value_.__r.__words[0];
    *v15 = cf[0].__r_.__value_.__r.__words[0];
    cf[0].__r_.__value_.__r.__words[0] = 0;
    if (!v16)
    {
      goto LABEL_21;
    }

    CFRelease(v16);
  }

  if (cf[0].__r_.__value_.__r.__words[0])
  {
    CFRelease(cf[0].__r_.__value_.__l.__data_);
  }

  v17 = *v15;
LABEL_21:
  if (!v17)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v26 = "this->reverseProxySettings";
LABEL_38:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, v26);
    v30 = 10;
    goto LABEL_83;
  }

  if (*(*(v7 + 3) + 40) != 1)
  {
    goto LABEL_56;
  }

  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    dispatch_once(&BBUpdaterCommon::getECID(void)::sOnce, &__block_literal_global_18);
  }

  v158.__r_.__value_.__r.__words[0] = BBUpdaterCommon::getECID(void)::ecid;
  v169 = 0uLL;
  values = 0;
  __p = 0;
  v162 = 0;
  v163 = 0;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&cf[11].__r_.__value_.__s.__data_[2] = v18;
  *&cf[10].__r_.__value_.__l.__data_ = v18;
  *&cf[10].__r_.__value_.__r.__words[2] = v18;
  *&cf[8].__r_.__value_.__r.__words[2] = v18;
  *&cf[9].__r_.__value_.__r.__words[1] = v18;
  *&cf[7].__r_.__value_.__r.__words[1] = v18;
  *&cf[8].__r_.__value_.__l.__data_ = v18;
  *&cf[6].__r_.__value_.__l.__data_ = v18;
  *&cf[6].__r_.__value_.__r.__words[2] = v18;
  *&cf[4].__r_.__value_.__r.__words[2] = v18;
  *&cf[5].__r_.__value_.__r.__words[1] = v18;
  *&cf[3].__r_.__value_.__r.__words[1] = v18;
  *&cf[4].__r_.__value_.__l.__data_ = v18;
  *&cf[2].__r_.__value_.__l.__data_ = v18;
  *&cf[2].__r_.__value_.__r.__words[2] = v18;
  *&cf[0].__r_.__value_.__r.__words[2] = v18;
  *&cf[1].__r_.__value_.__r.__words[1] = v18;
  *&cf[0].__r_.__value_.__l.__data_ = v18;
  v19 = (*(**a3 + 8))(cf);
  v20 = capabilities::updater::EUICCVinylSuccessStatus(v19);
  if (LODWORD(cf[0].__r_.__value_.__l.__data_) != v20)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    goto LABEL_41;
  }

  if (cf[0].__r_.__value_.__s.__data_[4])
  {
    goto LABEL_27;
  }

  if (DEREncodeItemIntoVector(4uLL, 8uLL, &v158, &values))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_271;
  }

  if (DEREncodeItemIntoVector(0x2000000000000010uLL, v169 - values, values, &__p))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_47:
      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v31, v32, v33, "DR_Success == derRet");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v37 = "Failed to encode ECID\n";
LABEL_50:
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", v37, v34, v35, v36, v143);
LABEL_51:
      v24 = 0;
      v25 = __p;
      if (!__p)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

LABEL_271:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    goto LABEL_47;
  }

  if ((*(**a3 + 56))(*a3, &__p, v149))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v110, v111, v112, "kBBUReturnSuccess == ret");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v37 = "Failed to complete InitPerso command\n";
    goto LABEL_50;
  }

  (*(**a3 + 16))(*a3, 0, 1);
  __src[0].__r_.__value_.__r.__words[0] = 10000000000;
  std::this_thread::sleep_for (__src);
  (*(**a3 + 8))(__src);
  v119 = memcpy(cf, __src, 0x11AuLL);
  v120 = capabilities::updater::EUICCVinylSuccessStatus(v119);
  if (LODWORD(cf[0].__r_.__value_.__l.__data_) != v120)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

LABEL_41:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v21, v22, v23, "cardData.Valid()");
    goto LABEL_51;
  }

  if (!cf[0].__r_.__value_.__s.__data_[4])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v21, v22, v23, "cardData.contents.perso");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v37 = "Still persod after force?\n";
    goto LABEL_50;
  }

LABEL_27:
  v24 = 1;
  v25 = __p;
  if (__p)
  {
LABEL_52:
    v162 = v25;
    operator delete(v25);
  }

LABEL_53:
  if (values)
  {
    *&v169 = values;
    operator delete(values);
  }

  if ((v24 & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v48 = "kBBUReturnSuccess == ret";
    goto LABEL_82;
  }

LABEL_56:
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    dispatch_once(&BBUpdaterCommon::getECID(void)::sOnce, &__block_literal_global_18);
  }

  v153 = BBUpdaterCommon::getECID(void)::ecid;
  *&v165 = 0;
  memset(cf, 0, 24);
  memset(__src, 0, 24);
  if (DEREncodeItemIntoVector(4uLL, 8uLL, &v153, cf))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_63;
    }

    goto LABEL_264;
  }

  if (DEREncodeItemIntoVector(0x2000000000000010uLL, cf[0].__r_.__value_.__l.__size_ - cf[0].__r_.__value_.__r.__words[0], cf[0].__r_.__value_.__l.__data_, __src))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_63:
      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v38, v39, v40, "DR_Success == derRet");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n", v41, v42, v43, v144);
      v47 = 10;
      goto LABEL_66;
    }

LABEL_264:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    goto LABEL_63;
  }

  values = operator new(0x19uLL);
  v169 = xmmword_1E538EBD0;
  strcpy(values, "InitPersoDeviceBlob.bin");
  v162 = 0;
  v163 = 0;
  __p = 0;
  v59 = __src[0].__r_.__value_.__r.__words[0];
  v60 = __src[0].__r_.__value_.__l.__size_ - __src[0].__r_.__value_.__r.__words[0];
  if (__src[0].__r_.__value_.__l.__size_ != __src[0].__r_.__value_.__r.__words[0])
  {
    if ((v60 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(__src[0].__r_.__value_.__l.__size_ - __src[0].__r_.__value_.__r.__words[0]);
    v162 = __p;
    v61 = __p + v60;
    v163 = __p + v60;
    memcpy(__p, v59, v60);
    v162 = v61;
  }

  v62 = *(v7 + 5);
  if (v62 >= *(v7 + 6))
  {
    v63 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>((v7 + 32), &values, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(v7 + 32, *(v7 + 5), &values, &__p);
    v63 = v62 + 2;
    *(v7 + 5) = v62 + 2;
  }

  *(v7 + 5) = v63;
  if (__p)
  {
    v162 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v169) < 0)
  {
    operator delete(values);
  }

  v47 = (*(**a3 + 56))(*a3, __src, v149);
  if (v47)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v82, v83, v84, "kBBUReturnSuccess == ret");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n", v85, v86, v87, v145);
  }

  else
  {
    v88 = operator new(0x20uLL);
    v157 = 0;
    v158.__r_.__value_.__r.__words[0] = v88;
    *&v158.__r_.__value_.__r.__words[1] = xmmword_1E5391A60;
    strcpy(v88, "InitPersoDeviceResponse.bin");
    v155 = 0;
    v156 = 0;
    v89 = v149[0];
    v90 = v149[1] - v149[0];
    if (v149[1] != v149[0])
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v91 = operator new(v149[1] - v149[0]);
      v92 = &v91[v90];
      v155 = v91;
      v157 = &v91[v90];
      memcpy(v91, v89, v90);
      v156 = v92;
    }

    v93 = *(v7 + 5);
    if (v93 >= *(v7 + 6))
    {
      v94 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>((v7 + 32), &v158, &v155);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(v7 + 32, *(v7 + 5), &v158, &v155);
      v94 = v93 + 2;
      *(v7 + 5) = v93 + 2;
    }

    *(v7 + 5) = v94;
    if (v155)
    {
      v156 = v155;
      operator delete(v155);
    }

    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    v47 = 0;
  }

LABEL_66:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoDevice %d\n", v44, v45, v46, v47);
  if (__src[0].__r_.__value_.__r.__words[0])
  {
    __src[0].__r_.__value_.__l.__size_ = __src[0].__r_.__value_.__r.__words[0];
    operator delete(__src[0].__r_.__value_.__l.__data_);
  }

  if (cf[0].__r_.__value_.__r.__words[0])
  {
    cf[0].__r_.__value_.__l.__size_ = cf[0].__r_.__value_.__r.__words[0];
    operator delete(cf[0].__r_.__value_.__l.__data_);
  }

  if (v47 || (v49 = v149[0], v149[0] == v149[1]))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_74:
      v48 = "kBBUReturnSuccess == ret && !dataBuffer.empty()";
LABEL_82:
      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v21, v22, v23, v48);
      v30 = 18;
      goto LABEL_83;
    }

LABEL_263:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    goto LABEL_74;
  }

  v166 = 0;
  v165 = 0uLL;
  v163 = 0;
  v164 = 0;
  __p = 0;
  v162 = 0;
  v50 = v149[1] - v149[0];
  if (v149[1] - v149[0] < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v51 = operator new(v149[1] - v149[0]);
  memcpy(v51, v49, v50);
  values = 0;
  memset(cf, 0, 24);
  v52 = operator new(v50);
  v53 = v52 + v50;
  cf[0].__r_.__value_.__r.__words[0] = v52;
  cf[0].__r_.__value_.__r.__words[2] = v52 + v50;
  memcpy(v52, v51, v50);
  cf[0].__r_.__value_.__l.__size_ = v53;
  __src[0].__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v54 = __src[0].__r_.__value_.__r.__words[0];
    values = __src[0].__r_.__value_.__r.__words[0];
  }

  else
  {
    v54 = 0;
  }

  if (cf[0].__r_.__value_.__r.__words[0])
  {
    cf[0].__r_.__value_.__l.__size_ = cf[0].__r_.__value_.__r.__words[0];
    operator delete(cf[0].__r_.__value_.__l.__data_);
  }

  v160 = v54;
  operator delete(v51);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, *a2, *(a2 + 8));
  }

  else
  {
    v158 = *a2;
  }

  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__src, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    __src[0] = v158;
  }

  v155 = 0;
  if (SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(cf, __src[0].__r_.__value_.__l.__data_, __src[0].__r_.__value_.__l.__size_);
  }

  else
  {
    cf[0] = __src[0];
  }

  values = 0;
  v64 = *MEMORY[0x1E695E480];
  if (ctu::cf::convert_copy())
  {
    v65 = values;
  }

  else
  {
    v65 = 0;
  }

  if ((SHIBYTE(cf[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v159 = v65;
    if ((SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_147:
    operator delete(__src[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_148;
  }

  operator delete(cf[0].__r_.__value_.__l.__data_);
  v159 = v65;
  if (SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_147;
  }

LABEL_117:
  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_148:
  operator delete(v158.__r_.__value_.__l.__data_);
LABEL_118:
  *&v66 = 0xAAAAAAAAAAAAAAAALL;
  *(&v66 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&cf[11].__r_.__value_.__s.__data_[2] = v66;
  *&cf[10].__r_.__value_.__l.__data_ = v66;
  *&cf[10].__r_.__value_.__r.__words[2] = v66;
  *&cf[8].__r_.__value_.__r.__words[2] = v66;
  *&cf[9].__r_.__value_.__r.__words[1] = v66;
  *&cf[7].__r_.__value_.__r.__words[1] = v66;
  *&cf[8].__r_.__value_.__l.__data_ = v66;
  *&cf[6].__r_.__value_.__l.__data_ = v66;
  *&cf[6].__r_.__value_.__r.__words[2] = v66;
  *&cf[4].__r_.__value_.__r.__words[2] = v66;
  *&cf[5].__r_.__value_.__r.__words[1] = v66;
  *&cf[3].__r_.__value_.__r.__words[1] = v66;
  *&cf[4].__r_.__value_.__l.__data_ = v66;
  *&cf[2].__r_.__value_.__l.__data_ = v66;
  *&cf[2].__r_.__value_.__r.__words[2] = v66;
  *&cf[0].__r_.__value_.__r.__words[2] = v66;
  *&cf[1].__r_.__value_.__r.__words[1] = v66;
  *&cf[0].__r_.__value_.__l.__data_ = v66;
  v67 = (***a3)(cf);
  v68 = capabilities::updater::EUICCVinylSuccessStatus(v67);
  if (LODWORD(cf[0].__r_.__value_.__l.__data_) != v68)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v77 = "hwType.Valid()";
    goto LABEL_127;
  }

  __src[0].__r_.__value_.__r.__words[0] = @"Command";
  __src[0].__r_.__value_.__l.__size_ = @"DATA";
  __src[0].__r_.__value_.__r.__words[2] = @"FirmwareLoaderVersion";
  __src[1].__r_.__value_.__r.__words[0] = @"HardwareType";
  values = @"StartSession";
  *&v169 = v54;
  v72 = @"2";
  if (!cf[11].__r_.__value_.__s.__data_[15])
  {
    v72 = @"0";
  }

  *(&v169 + 1) = v65;
  v170 = v72;
  v73 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&__src[0].__r_.__value_.__l.__data_, &values, 4);
  if (v73)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_123:
      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v69, v70, v71, "kBBUReturnSuccess == ret");
      goto LABEL_128;
    }

LABEL_272:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    goto LABEL_123;
  }

  values = operator new(0x20uLL);
  v169 = xmmword_1E5390FE0;
  strcpy(values, "InitPersoServerRequest.plist");
  v156 = 0;
  v157 = 0;
  v155 = 0;
  v95 = __p;
  v96 = v162 - __p;
  if (v162 != __p)
  {
    if ((v96 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v155 = operator new(v162 - __p);
    v156 = v155;
    v97 = v155 + v96;
    v157 = v155 + v96;
    memcpy(v155, v95, v96);
    v156 = v97;
  }

  v98 = *(v7 + 5);
  if (v98 >= *(v7 + 6))
  {
    v99 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>((v7 + 32), &values, &v155);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(v7 + 32, *(v7 + 5), &values, &v155);
    v99 = v98 + 2;
    *(v7 + 5) = v98 + 2;
  }

  *(v7 + 5) = v99;
  if (v155)
  {
    v156 = v155;
    operator delete(v155);
  }

  if (SHIBYTE(v169) < 0)
  {
    operator delete(values);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(__src, v7, &__p);
  v165 = *&__src[0].__r_.__value_.__l.__data_;
  v103 = __src[0].__r_.__value_.__r.__words[0];
  if (!__src[0].__r_.__value_.__r.__words[0])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v100, v101, v102, "response");
    goto LABEL_208;
  }

  v153 = operator new(0x20uLL);
  v154 = xmmword_1E538EBE0;
  strcpy(v153, "InitPersoServerResponse.plist");
  (*(*v103 + 40))(&v152, v103);
  eUICC::Perso::PersoImplementation::logTransactionCFData(v7, &v153, &v152);
  if (v152)
  {
    CFRelease(v152);
  }

  if (SHIBYTE(v154) < 0)
  {
    operator delete(v153);
  }

  (*(*v103 + 40))(&v151, v103);
  v73 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v151, &v166, v104, v105, v106, v107, v108, v109);
  if (v151)
  {
    CFRelease(v151);
  }

  if (v73)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_123;
    }

    goto LABEL_272;
  }

  if (!v166)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v77 = "respDict";
LABEL_127:
    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v69, v70, v71, v77);
    v73 = 18;
    goto LABEL_128;
  }

  Value = CFDictionaryGetValue(v166, @"SessionId");
  v117 = Value;
  if (Value)
  {
    v118 = CFGetTypeID(Value);
    if (v118 == CFStringGetTypeID())
    {
      CFRetain(v117);
    }

    else
    {
      v117 = 0;
    }
  }

  v121 = *(v7 + 2);
  *(v7 + 2) = v117;
  if (v121)
  {
    CFRelease(v121);
    v117 = *(v7 + 2);
  }

  if (!v117 || !CFStringGetLength(v117))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v114, v115, v116, "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(__src, v166, v129);
    if ((__src[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v133 = __src;
    }

    else
    {
      LOBYTE(v133) = __src[0].__r_.__value_.__s.__data_[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n", v130, v131, v132, v133);
    goto LABEL_246;
  }

  v122 = v166;
  v123 = CFDictionaryGetValue(v166, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&v164, v123);
  if (!v164)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v124, v125, v126, "respDataPayload");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(__src, v122, v134);
    if ((__src[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v138 = __src;
    }

    else
    {
      LOBYTE(v138) = __src[0].__r_.__value_.__s.__data_[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", v135, v136, v137, v138);
LABEL_246:
    if (SHIBYTE(__src[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src[0].__r_.__value_.__l.__data_);
    }

LABEL_208:
    v73 = 53;
    goto LABEL_128;
  }

  memset(__src, 0, 24);
  ctu::cf::assign();
  v127 = *&__src[0].__r_.__value_.__l.__data_;
  v128 = __src[0].__r_.__value_.__r.__words[2];
  if (v149[0])
  {
    v149[1] = v149[0];
    v147 = *&__src[0].__r_.__value_.__l.__data_;
    operator delete(v149[0]);
    v127 = v147;
  }

  v73 = 0;
  *v149 = v127;
  v150 = v128;
LABEL_128:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoServer %d\n", v74, v75, v76, v73);
  if (v159)
  {
    CFRelease(v159);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  if (__p)
  {
    v162 = __p;
    operator delete(__p);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  v81 = *(&v165 + 1);
  if (*(&v165 + 1) && !atomic_fetch_add((*(&v165 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v73 || v149[0] == v149[1])
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_145:
      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v78, v79, v80, "kBBUReturnSuccess == ret && !dataBuffer.empty()");
      v30 = 53;
      goto LABEL_83;
    }

LABEL_296:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    goto LABEL_145;
  }

  if (eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(v7, v149, a3) || v149[0] == v149[1])
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_263;
  }

  if (eUICC::Perso::PersoImplementation::GetWrapKeyServer(v7, v149) || v149[0] == v149[1])
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_145;
    }

    goto LABEL_296;
  }

  v30 = eUICC::Perso::PersoImplementation::FinalizePersoDevice(v7, v149, a3);
  if (v30)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_223:
      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "kBBUReturnSuccess == ret");
      goto LABEL_83;
    }

LABEL_289:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    goto LABEL_223;
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::reset(v7 + 2);
  if (eUICC::Perso::PersoImplementation::GetNonceServer(v7, v149, *a3) || v149[0] == v149[1])
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_145;
    }

    goto LABEL_296;
  }

  if (eUICC::Perso::PersoImplementation::CreateValidationBlob(v149) || v149[0] == v149[1])
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_145;
    }

    goto LABEL_296;
  }

  if (eUICC::Perso::PersoImplementation::ValidatePersoDevice(v7, v149, a3) || v149[0] == v149[1])
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_145;
    }

    goto LABEL_296;
  }

  v30 = eUICC::Perso::PersoImplementation::SendReceiptServer(v7, v149);
  if (v30)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_223;
    }

    goto LABEL_289;
  }

  v139 = *(v7 + 4);
  v140 = *(v7 + 5);
  if (v140 != v139)
  {
    do
    {
      v141 = *(v140 - 3);
      if (v141)
      {
        *(v140 - 2) = v141;
        operator delete(v141);
      }

      v142 = v140 - 6;
      if (*(v140 - 25) < 0)
      {
        operator delete(*v142);
      }

      v140 -= 6;
    }

    while (v142 != v139);
  }

  v30 = 0;
  *(v7 + 5) = v139;
LABEL_83:
  v55 = *(v7 + 2);
  *(v7 + 2) = 0;
  if (v55)
  {
    CFRelease(v55);
  }

  *(v7 + 3) = 0;
  v56 = *v7;
  *v7 = 0;
  if (v56)
  {
    dispatch_release(v56);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v146 = 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 5) - *(v7 + 4)) >> 4);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ret %d records %zu\n", v27, v28, v29, v30);
  if (v149[0])
  {
    v149[1] = v149[0];
    operator delete(v149[0]);
  }

  if (v148 && !atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v148->__on_zero_shared)(v148);
    std::__shared_weak_count::__release_weak(v148);
  }

  v57 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1E52B3F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, const void *a34, void *a35, uint64_t a36, uint64_t a37, const void *a38, __int16 a39, uint64_t a40, uint64_t a41, const void *a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a33);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a34);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a38);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a39);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a42);
  if (!a17)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  a18 = a17;
  operator delete(a17);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void eUICC::Perso::DumpTransactions(std::string **a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  if (!qword_1ED9440D0)
  {
    v4 = operator new(0x38uLL);
    v4->__on_zero_shared_weak = 0;
    v4[1].~__shared_weak_count = 0;
    v4[1].~__shared_weak_count_0 = 0;
    v4->~__shared_weak_count_0 = 0;
    v4->__on_zero_shared = 0;
    v4->~__shared_weak_count = 0;
    v3 = operator new(0x20uLL);
    v3->__vftable = &unk_1F5F01460;
    v3->__shared_owners_ = 0;
    v3->__shared_weak_owners_ = 0;
    v3[1].__vftable = v4;
    v5 = off_1ED9440D8;
    qword_1ED9440D0 = v4;
    off_1ED9440D8 = v3;
    if (!v5)
    {
      v10 = v3;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v4 = qword_1ED9440D0;
  v3 = off_1ED9440D8;
  v10 = off_1ED9440D8;
  if (off_1ED9440D8)
  {
LABEL_8:
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  on_zero_shared_weak = v4->__on_zero_shared_weak;
  v6 = v4[1].~__shared_weak_count;
  v8 = v6 - on_zero_shared_weak;
  if (v6 != on_zero_shared_weak)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 4) >= 0x555555555555556)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v6 - on_zero_shared_weak);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = (v9 + v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, on_zero_shared_weak, v6, v9);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_1E52B44F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<eUICC::Perso::PersoImplementation>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E52B4524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11)
{
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1E52B4548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11)
{
  std::__exception_guard_exceptions<std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = operator new(0x28uLL);
  v40 = xmmword_1E5391A70;
  strcpy(v39, "AuthenticatePersoDeviceRequest.bin");
  v37 = 0;
  v38 = 0;
  __p = 0;
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = v6 - *a2;
  if (v6 != *a2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v6 - *a2);
    v10 = &v9[v8];
    __p = v9;
    v38 = &v9[v8];
    memcpy(v9, v7, v8);
    v37 = v10;
  }

  v11 = *(a1 + 40);
  if (v11 >= *(a1 + 48))
  {
    v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v39, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v39, &__p);
    v12 = v11 + 2;
    *(a1 + 40) = v11 + 2;
  }

  *(a1 + 40) = v12;
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  v16 = (*(**a3 + 64))(*a3, a2, a2);
  if (v16)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kBBUReturnSuccess == ret");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete AuthPerso command\n", v17, v18, v19, v30);
  }

  else
  {
    v33 = 0;
    v34 = operator new(0x28uLL);
    v35 = xmmword_1E538EBC0;
    strcpy(v34, "AuthenticatePersoDeviceResponse.bin");
    v31 = 0;
    v32 = 0;
    v23 = *a2;
    v24 = *(a2 + 8) - *a2;
    if (v24)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v25 = operator new(v24);
      v26 = &v25[v24];
      v31 = v25;
      v33 = &v25[v24];
      memcpy(v25, v23, v24);
      v32 = v26;
    }

    v27 = *(a1 + 40);
    if (v27 >= *(a1 + 48))
    {
      v28 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v34, &v31);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v34, &v31);
      v28 = v27 + 2;
      *(a1 + 40) = v27 + 2;
    }

    *(a1 + 40) = v28;
    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "AuthenticatePersoDevice %d\n", v20, v21, v22, v16);
  return v16;
}

void sub_1E52B4888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetWrapKeyServer(uint64_t a1, uint64_t a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  v69 = 0;
  v68 = 0uLL;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    v8 = 0;
    v7 = 0;
    v71 = 0;
    values[0] = 0;
    v70 = 0uLL;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - *a2);
    memcpy(v7, v5, v6);
    v8 = operator new(v6);
    memcpy(v8, v7, v6);
    values[0] = 0;
    v9 = operator new(v6);
    v10 = &v9[v6];
    *&v70 = v9;
    v71 = &v9[v6];
    memcpy(v9, v7, v6);
    *(&v70 + 1) = v10;
  }

  keys[0] = 0;
  if (ctu::cf::convert_copy())
  {
    values[0] = keys[0];
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  v11 = values[0];
  v63 = values[0];
  values[0] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  keys[0] = @"Command";
  keys[1] = @"DATA";
  keys[2] = @"SessionId";
  values[0] = @"GetWrapKey";
  values[1] = v11;
  values[2] = *(a1 + 16);
  DictionaryFromPlistData = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, values, 3);
  if (DictionaryFromPlistData)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "kBBUReturnSuccess == ret");
    v19 = 0;
    v20 = 0;
    goto LABEL_53;
  }

  v60 = 0;
  v61 = operator new(0x20uLL);
  v62 = xmmword_1E538EBE0;
  strcpy(v61, "GetWrapKeyServerRequest.plist");
  __p = 0;
  v59 = 0;
  v21 = *(a1 + 40);
  if (v21 >= *(a1 + 48))
  {
    v22 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v61, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v61, &__p);
    v22 = v21 + 2;
    *(a1 + 40) = v21 + 2;
  }

  *(a1 + 40) = v22;
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(&v70, a1, &v64);
  v19 = *(&v70 + 1);
  v26 = v70;
  v68 = v70;
  if (!v70)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "response");
    goto LABEL_52;
  }

  v56 = operator new(0x20uLL);
  v57 = xmmword_1E5390FF0;
  strcpy(v56, "GetWrapKeyServerResponse.plist");
  (*(*v26 + 40))(&cf, v26);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v56, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  (*(*v26 + 40))(&v54, v26);
  DictionaryFromPlistData = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v54, &v69, v27, v28, v29, v30, v31, v32);
  if (v54)
  {
    CFRelease(v54);
  }

  if (DictionaryFromPlistData)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v33, v34, v35, "kBBUReturnSuccess == ret");
    v20 = 0;
    goto LABEL_53;
  }

  v36 = v69;
  Value = CFDictionaryGetValue(v69, @"DATA");
  v20 = Value;
  if (!Value || (v41 = CFGetTypeID(Value), v41 != CFDataGetTypeID()))
  {
    v67 = 0;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v38, v39, v40, "respDataPayload");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(&v70, v36, v45);
    if (SHIBYTE(v71) >= 0)
    {
      v49 = &v70;
    }

    else
    {
      LOBYTE(v49) = v70;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", v46, v47, v48, v49);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

LABEL_52:
    v20 = 0;
    DictionaryFromPlistData = 53;
    goto LABEL_53;
  }

  CFRetain(v20);
  v67 = v20;
  v70 = 0uLL;
  v71 = 0;
  ctu::cf::assign();
  v42 = v70;
  v43 = v71;
  v44 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v44;
    v53 = v42;
    operator delete(v44);
    v42 = v53;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  DictionaryFromPlistData = 0;
  *a2 = v42;
  *(a2 + 16) = v43;
LABEL_53:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetWrapKeyServer %d\n", v16, v17, v18, DictionaryFromPlistData);
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v50 = v69;
    if (!v69)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v50 = v69;
  if (v69)
  {
LABEL_62:
    CFRelease(v50);
  }

LABEL_63:
  v51 = *MEMORY[0x1E69E9840];
  return DictionaryFromPlistData;
}

void sub_1E52B4FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, const void *a36, void *__p, uint64_t a38, uint64_t a39, const void *a40)
{
  v42 = *(v40 - 144);
  if (v42)
  {
    *(v40 - 136) = v42;
    operator delete(v42);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a36);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a40);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v40 - 168);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v40 - 152));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::FinalizePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = 0;
  v25 = operator new(0x20uLL);
  v26 = xmmword_1E5390FF0;
  strcpy(v25, "FinalizePersoDeviceRequest.bin");
  __p = 0;
  v23 = 0;
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = v6 - *a2;
  if (v6 != *a2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v6 - *a2);
    v10 = &v9[v8];
    __p = v9;
    v24 = &v9[v8];
    memcpy(v9, v7, v8);
    v23 = v10;
  }

  v11 = *(a1 + 40);
  if (v11 >= *(a1 + 48))
  {
    v12 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v25, &__p);
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v25, &__p);
    v12 = v11 + 2;
    *(a1 + 40) = v11 + 2;
  }

  *(a1 + 40) = v12;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  v16 = (*(**a3 + 72))(*a3, a2);
  if (v16)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kBBUReturnSuccess == ret");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete FinalizePerso command\n", v17, v18, v19, v21);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "FinalizePersoDevice %d\n", v13, v14, v15, v16);
  return v16;
}

void sub_1E52B53CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetNonceServer(uint64_t a1, uint64_t a2, void *(***a3)(_OWORD *__return_ptr, void))
{
  v84 = *MEMORY[0x1E69E9840];
  v78 = 0;
  v77 = 0uLL;
  v75 = 0;
  cf = 0;
  __p = 0;
  v74 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v81[10] = v5;
  v80[15] = v5;
  *v81 = v5;
  v80[13] = v5;
  v80[14] = v5;
  v80[11] = v5;
  v80[12] = v5;
  v80[9] = v5;
  v80[10] = v5;
  v80[7] = v5;
  v80[8] = v5;
  v80[5] = v5;
  v80[6] = v5;
  v80[3] = v5;
  v80[4] = v5;
  v80[1] = v5;
  v80[2] = v5;
  v80[0] = v5;
  v6 = (**a3)(v80, a3);
  v7 = capabilities::updater::EUICCVinylSuccessStatus(v6);
  if (LODWORD(v80[0]) == v7)
  {
    *&keys = @"Command";
    *(&keys + 1) = @"HardwareType";
    if (v81[23])
    {
      v11 = @"2";
    }

    else
    {
      v11 = @"0";
    }

    values[0] = @"GetNonce";
    values[1] = v11;
    v15 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 2);
    if (v15)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "kBBUReturnSuccess == ret");
      goto LABEL_12;
    }

    v70 = 0;
    v71 = operator new(0x20uLL);
    v72 = xmmword_1E5391A60;
    strcpy(v71, "GetNonceServerRequest.plist");
    v68 = 0;
    v69 = 0;
    v23 = *(a1 + 40);
    if (v23 >= *(a1 + 48))
    {
      v24 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, &v71, &v68);
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1 + 32, *(a1 + 40), &v71, &v68);
      v24 = v23 + 2;
      *(a1 + 40) = v23 + 2;
    }

    *(a1 + 40) = v24;
    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(v71);
    }

    eUICC::Perso::PersoImplementation::PostDataSync(&keys, a1, &__p);
    v77 = keys;
    v28 = keys;
    if (keys)
    {
      v66 = operator new(0x20uLL);
      v67 = xmmword_1E5390FE0;
      strcpy(v66, "GetNonceServerResponse.plist");
      (*(*v28 + 40))(&v65, v28);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v66, &v65);
      if (v65)
      {
        CFRelease(v65);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      (*(*v28 + 40))(&v64, v28);
      v15 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v64, &v78, v29, v30, v31, v32, v33, v34);
      if (v64)
      {
        CFRelease(v64);
      }

      if (v15)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v35, v36, v37, "kBBUReturnSuccess == ret");
        goto LABEL_12;
      }

      Value = CFDictionaryGetValue(v78, @"SessionId");
      v42 = Value;
      if (Value)
      {
        v43 = CFGetTypeID(Value);
        if (v43 == CFStringGetTypeID())
        {
          CFRetain(v42);
        }

        else
        {
          v42 = 0;
        }
      }

      v44 = *(a1 + 16);
      *(a1 + 16) = v42;
      if (v44)
      {
        CFRelease(v44);
        v42 = *(a1 + 16);
      }

      if (v42 && CFStringGetLength(v42))
      {
        v45 = v78;
        v46 = CFDictionaryGetValue(v78, @"DATA");
        ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, v46);
        if (cf)
        {
          keys = 0uLL;
          v83 = 0;
          ctu::cf::assign();
          v50 = keys;
          v51 = v83;
          v52 = *a2;
          if (*a2)
          {
            *(a2 + 8) = v52;
            v63 = v50;
            operator delete(v52);
            v50 = v63;
            *a2 = 0;
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
          }

          v15 = 0;
          *a2 = v50;
          *(a2 + 16) = v51;
          goto LABEL_12;
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v47, v48, v49, "respDataPayload");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        ctu::cf::show(&keys, v45, v58);
        if (v83 >= 0)
        {
          p_keys = &keys;
        }

        else
        {
          LOBYTE(p_keys) = keys;
        }

        _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", v59, v60, v61, p_keys);
      }

      else
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v39, v40, v41, "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        ctu::cf::show(&keys, v78, v53);
        if (v83 >= 0)
        {
          v57 = &keys;
        }

        else
        {
          LOBYTE(v57) = keys;
        }

        _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n", v54, v55, v56, v57);
      }

      if (SHIBYTE(v83) < 0)
      {
        operator delete(keys);
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "response");
    }

    v15 = 53;
    goto LABEL_12;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "hwType.Valid()");
  v15 = 18;
LABEL_12:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetNonceServer %d\n", v16, v17, v18, v15);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v19 = *(&v77 + 1);
  if (*(&v77 + 1) && !atomic_fetch_add((*(&v77 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = v78;
    if (!v78)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v20 = v78;
  if (v78)
  {
LABEL_21:
    CFRelease(v20);
  }

LABEL_22:
  v21 = *MEMORY[0x1E69E9840];
  return v15;
}