void SEUpdater::CommandGetLogStatus::~CommandGetLogStatus(SEUpdater::CommandGetLogStatus *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

unint64_t SERestoreInfo::RApdu::getDataSize(SERestoreInfo::RApdu *this)
{
  v1 = *(*(this + 1) + 8) - **(this + 1);
  if (v1 <= 1)
  {
    __assert_rtn("getDataSize", "Apdu.hpp", 383, "len >= 2");
  }

  return v1 - 2;
}

void SEUpdater::CommandMarkForDeleteAll::~CommandMarkForDeleteAll(SEUpdater::CommandMarkForDeleteAll *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSelectSeshat::~CommandSelectSeshat(SEUpdater::CommandSelectSeshat *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSeshatKillAllSlots::~CommandSeshatKillAllSlots(SEUpdater::CommandSeshatKillAllSlots *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void sub_299EFB514(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  *(v1 - 64) = &unk_2A2026DD8;
  v3 = *(v1 - 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::CommandCRSDeactivateAll::~CommandCRSDeactivateAll(SEUpdater::CommandCRSDeactivateAll *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SEUpdater::CommandCRSGetDataPersoState::~CommandCRSGetDataPersoState(SEUpdater::CommandCRSGetDataPersoState *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::localSign(SEUpdater::P73BaseUpdateController *this)
{
  v74 = *MEMORY[0x29EDCA608];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v43[4] = Mutable;
  if (!Mutable)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&valuePtr, "Fail to create dictionary for request");
    v33 = SERestoreInfo::SEException::SEException(exception, &valuePtr, 3, @"SEUpdaterErrorDomain");
  }

  v3 = Mutable;
  v4 = (*(**(this + 16) + 32))(*(this + 16));
  v5 = kSETagRequestTicket;
  if (v4 <= 199)
  {
    if (v4 != 100 && v4 != 115)
    {
LABEL_11:
      v5 = kSETagRequestTicketEC384;
    }
  }

  else if (v4 != 200 && v4 != 210 && v4 != 131601)
  {
    goto LABEL_11;
  }

  CFDictionaryAddValue(v3, *v5, *MEMORY[0x29EDB8F00]);
  LODWORD(valuePtr) = *(*(this + 16) + 56);
  v7 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (v7)
  {
    CFDictionarySetValue(v3, @"SE,ChipID", v7);
    CFRelease(v7);
    v8 = CFDataCreate(0, *(*(this + 16) + 32), *(*(this + 16) + 40) - *(*(this + 16) + 32));
    if (v8)
    {
      CFDictionarySetValue(v3, @"SE,ID", v8);
      CFRelease(v8);
      v9 = CFDataCreate(0, *(*(this + 16) + 64), *(*(this + 16) + 72) - *(*(this + 16) + 64));
      if (v9)
      {
        CFDictionarySetValue(v3, @"SE,Nonce", v9);
        CFRelease(v9);
        v10 = CFDataCreate(0, *(*(this + 16) + 88), *(*(this + 16) + 96) - *(*(this + 16) + 88));
        if (v10)
        {
          CFDictionarySetValue(v3, @"SE,RootKeyIdentifier", v10);
          CFRelease(v10);
          v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          v43[3] = v11;
          if (!v11)
          {
            v34 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(&valuePtr, "Fail to create dictionary for request image properties");
            v35 = SERestoreInfo::SEException::SEException(v34, &valuePtr, 3, @"SEUpdaterErrorDomain");
          }

          CFDictionarySetValue(v3, @"SE,UpdatePayload", v11);
          v12 = *(this + 18);
          v13 = ccsha256_di();
          if (*v13)
          {
            if ((*v13 & 0x8000000000000000) == 0)
            {
              v14 = *v13;
              operator new();
            }

            std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
          }

          v16 = *(v12 + 40);
          v15 = *(v12 + 48);
          ccdigest();
          v17 = CFDataCreate(0, 0, 0);
          v43[2] = v17;
          if (!v17)
          {
            v36 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(&valuePtr, "Fail to create data for SEDH in request");
            v37 = SERestoreInfo::SEException::SEException(v36, &valuePtr, 3, @"SEUpdaterErrorDomain");
          }

          CFDictionarySetValue(v11, @"DevelopmentUpdatePayloadHash", v17);
          ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&theDict, this + 9);
          v18 = (*(**(this + 16) + 32))(*(this + 16));
          v21 = kSETagResponseTicket;
          if (v18 <= 199)
          {
            if (v18 != 100 && v18 != 115)
            {
              goto LABEL_28;
            }
          }

          else if (v18 != 200 && v18 != 210 && v18 != 131601)
          {
LABEL_28:
            v21 = kSETagResponseTicketEC384;
          }

          SEUpdaterUtil::getDataFromDict<SERestoreInfo::BLOB>(v43, theDict, *v21, v19, v20);
          ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
          if (v43[0])
          {
            v73 = 0;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            valuePtr = 0u;
            v46 = 0u;
            v22 = *(v43[0] + 8);
            v23 = *(v43[0] + 16);
            if (!Img4DecodeInitManifest())
            {
              SEUpdater::getOBJPOctetString(&value);
              v24 = value.__r_.__value_.__r.__words[0];
              if (value.__r_.__value_.__r.__words[0])
              {
                v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                v41 = v25;
                CFDictionaryAddValue(v25, @"Digest", v24);
                CFDictionaryAddValue(v3, @"SE,RapRTKitOS", v25);
                if (v25)
                {
                  CFRelease(v25);
                }
              }

              SEUpdater::getOBJPOctetString(&v41);
              v26 = v41;
              if (v41)
              {
                v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                CFDictionaryAddValue(v27, @"Digest", v26);
                CFDictionaryAddValue(v3, @"SE,RapSwBinDsp", v27);
                if (v27)
                {
                  CFRelease(v27);
                }

                CFRelease(v26);
              }

              if (v24)
              {
                CFRelease(v24);
              }
            }
          }

          v28 = *(*(this + 16) + 56);
          if (v28 != 56)
          {
            if (v28 == 54)
            {
              operator new();
            }

            v38 = __cxa_allocate_exception(0x48uLL);
            std::to_string(&value, v28);
            v39 = std::string::insert(&value, 0, "Can't retrieve Image4 signer; unknown ChipID: ");
            valuePtr = *&v39->__r_.__value_.__l.__data_;
            *&v46 = *(&v39->__r_.__value_.__l + 2);
            v39->__r_.__value_.__l.__size_ = 0;
            v39->__r_.__value_.__r.__words[2] = 0;
            v39->__r_.__value_.__r.__words[0] = 0;
            v40 = SERestoreInfo::SEException::SEException(v38, &valuePtr, 30, @"SEUpdaterErrorDomain");
          }

          operator new();
        }
      }
    }

    v29 = "tmpData";
    v30 = 59;
    v31 = "_CFDictionarySetData";
  }

  else
  {
    v29 = "num != nullptr";
    v30 = 42;
    v31 = "_CFDictionarySetInteger32";
  }

  __assert_rtn(v31, "SERestoreInfoHelpers.hpp", v30, v29);
}

void sub_299EFBFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SEUpdater::getForceUpdateLoop(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "forceUpdate");
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(a1, &__p);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v3)
    {
      return v3;
    }
  }

  else if (!v2)
  {
    return v3;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "forceUpdate");
  v9[0] = &__p;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__p);
  v5 = *(v4 + 79);
  if (v5 < 0)
  {
    v5 = *(v4 + 64);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (!v5)
  {
    return 1;
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(v9, "forceUpdate");
  v12 = v9;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v9);
  v7 = (v6 + 56);
  if (*(v6 + 79) < 0)
  {
    v7 = *v7;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v7);
  v3 = std::stoul(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v3;
}

void SEUpdater::P73BaseUpdateController::PerformSLAMMigrations(SEUpdater::P73BaseUpdateController *this)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(this + 21);
  v2 = *(this + 20);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  SEUpdater::GetPackageInfo();
}

void sub_299EFE0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  if (LOBYTE(STACK[0x7C8]) == 1)
  {
    STACK[0x440] = &STACK[0x7B0];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  STACK[0x7B0] = &a40;
  std::vector<SLAM::Migration::Trigger>::__destroy_vector::operator()[abi:ne200100](&STACK[0x7B0]);
  STACK[0x7B0] = &a45;
  std::vector<SEUpdater::PackageInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x7B0]);
  _Unwind_Resume(a1);
}

void *SEUpdater::P73BaseUpdateController::doPerform(void)::CommandGetDataOBKG::~CommandGetDataOBKG(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *SEUpdater::P73BaseUpdateController::doPerform(void)::CommandSelectASD::~CommandSelectASD(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void SEUpdater::CommandGetAMState::~CommandGetAMState(SEUpdater::CommandGetAMState *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSeshatGetData::~CommandSeshatGetData(SEUpdater::CommandSeshatGetData *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetOSUpdateLog::~CommandGetOSUpdateLog(SEUpdater::CommandGetOSUpdateLog *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetPlatformIdentifier::~CommandGetPlatformIdentifier(SEUpdater::CommandGetPlatformIdentifier *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandUpdateTableQuery::~CommandUpdateTableQuery(SEUpdater::CommandUpdateTableQuery *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetAllLogs::~CommandGetAllLogs(SEUpdater::CommandGetAllLogs *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetAttackLog::~CommandGetAttackLog(SEUpdater::CommandGetAttackLog *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandDumpSENVM::~CommandDumpSENVM(SEUpdater::CommandDumpSENVM *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *SEUpdater::P73BaseUpdateController::CheckAndInstallOasisApplet(void)::CommandSelectOasis::~CommandSelectOasis(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *SEUpdater::P73BaseUpdateController::CheckAndInstallOasisApplet(void)::CommandGetConfigID::~CommandGetConfigID(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t SEUpdater::getSLAMPlatform(SEUpdater *this)
{
  if (this > 114)
  {
    if (this == 115)
    {
      return 1;
    }

    if (this != 200)
    {
      if (this == 210)
      {
        return 8;
      }

      return 128;
    }

    return 4;
  }

  else
  {
    if ((this - 54) < 2)
    {
      return 64;
    }

    if (this != 44)
    {
      if (this == 100)
      {
        return 2;
      }

      return 128;
    }

    return 16;
  }
}

void SEUpdater::CommandGetConfigID::~CommandGetConfigID(SEUpdater::CommandGetConfigID *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t SEUpdater::getOBJPOctetString(void *a1)
{
  Img4DecodeGetObjectPropertyData();
  result = 0;
  *a1 = 0;
  return result;
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__2(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN13SEUpdaterUtil8SELogObj13dumpLogBufferEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = (v2 + 7);
  if (v2[11])
  {
    v5 = v2[9];
  }

  else
  {
    v5 = 0;
  }

  v33[0] = v2 + 7;
  v33[1] = v5;
  v32[0] = v2 + 7;
  v32[1] = 0;
  v6 = boost::cb_details::iterator<boost::circular_buffer<unsigned char,std::allocator<unsigned char>>,boost::cb_details::nonconst_traits<std::allocator<unsigned char>>>::operator-<boost::cb_details::nonconst_traits<std::allocator<unsigned char>>>(v32, v33);
  v7 = v3[7];
  v8 = v3[5];
  if (v7 - v8 < v6)
  {
    if (v8)
    {
      v3[6] = v8;
      operator delete(v8);
      v7 = 0;
      v3[5] = 0;
      v3[6] = 0;
      v3[7] = 0;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= v6)
      {
        v9 = v6;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100]((v3 + 5), v10);
    }

LABEL_62:
    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = v3[6];
  v12 = v11 - v8;
  if (v11 - v8 < v6)
  {
    if (v12 < 1)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
LABEL_36:
        v18 = v11;
        if (v5)
        {
          v18 = v11;
          v19 = v11;
          do
          {
            v20 = *v5++;
            *v19 = v20;
            if (v5 == v2[8])
            {
              v5 = *v4;
            }

            ++v18;
            if (!v5)
            {
              break;
            }

            ++v19;
          }

          while (v5 != v2[10]);
        }

        v16 = v18;
        goto LABEL_44;
      }

      v31 = v5;
      if (!v5)
      {
        v31 = v2[10];
      }

      if (v31 - *v4 < v8 - v11)
      {
        v12 = v12 - *v4 + v2[8];
      }

      v14 = &v31[v12];
    }

    else
    {
      v13 = v2[8];
      if (v13 - v5 <= v12)
      {
        v12 = &(*v4)[v12 - v13];
      }

      v14 = &v5[v12];
      if (v14 == v2[10])
      {
        v14 = 0;
      }
    }

    if (v14 != v5)
    {
      do
      {
        v15 = *v5++;
        *v8 = v15;
        if (v5 == v2[8])
        {
          v5 = *v4;
        }

        if (v5 == v2[10])
        {
          v5 = 0;
        }

        ++v8;
      }

      while (v5 != v14);
      v11 = v3[6];
    }

    v5 = v14;
    goto LABEL_36;
  }

  if (v5)
  {
    v16 = v3[5];
    do
    {
      v17 = *v5++;
      *v8 = v17;
      if (v5 == v2[8])
      {
        v5 = *v4;
      }

      ++v16;
      if (!v5)
      {
        break;
      }

      ++v8;
    }

    while (v5 != v2[10]);
  }

  else
  {
    v16 = v3[5];
  }

LABEL_44:
  v3[6] = v16;
  v21 = *(*(a1 + 32) + 8);
  v23 = v21[6];
  v22 = v21[7];
  if (v23 >= v22)
  {
    v25 = v21[5];
    v26 = (v23 - v25);
    v27 = v23 - v25 + 1;
    if (v27 < 0)
    {
      goto LABEL_62;
    }

    v28 = v22 - v25;
    if (2 * v28 > v27)
    {
      v27 = 2 * v28;
    }

    if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v27;
    }

    if (v29)
    {
      operator new();
    }

    v30 = v23 - v25;
    *v26 = 0;
    v24 = v26 + 1;
    memcpy(0, v25, v30);
    v21[5] = 0;
    v21[6] = v26 + 1;
    v21[7] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v23 = 0;
    v24 = v23 + 1;
  }

  v21[6] = v24;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9480], MEMORY[0x29EDC9368]);
}

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_299EFF390(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A2026DD8;
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::less<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void SEUpdater::P73BaseUpdateController::doPerform(void)::CommandGetDataOBKG::~CommandGetDataOBKG(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::doPerform(void)::CommandSelectASD::~CommandSelectASD(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdaterUtil::JCOPConfigManager::~JCOPConfigManager(SEUpdaterUtil::JCOPConfigManager *this)
{
  SEUpdaterUtil::JCOPConfigManager::~JCOPConfigManager(this);

  JUMPOUT(0x29C2B5F30);
}

{
  *this = &unk_2A2027B60;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x29EDC9520];
  v2 = *MEMORY[0x29EDC9520];
  *a1 = *MEMORY[0x29EDC9520];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C2B5C60](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SLAM::Deletion::Trigger>,SLAM::Deletion::Trigger*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    for (i = **(a1 + 16); i != v3; i -= 48)
    {
      v5 = *(i - 40);
      if (v5)
      {
        *(i - 32) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

void std::vector<SLAM::Deletion::Trigger>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 5);
        if (v6)
        {
          *(v4 - 4) = v6;
          operator delete(v6);
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL SEUpdater::contains<std::vector<std::vector<unsigned char>>,std::vector<unsigned char>>(uint64_t a1, uint64_t a2, void *__s2, uint64_t a4)
{
  v5 = a1;
  if (a1 != a2)
  {
    v7 = a4 - __s2;
    while (*(v5 + 8) - *v5 != v7 || memcmp(*v5, __s2, v7))
    {
      v5 += 24;
      if (v5 == a2)
      {
        v5 = a2;
        return v5 != a2;
      }
    }
  }

  return v5 != a2;
}

void sub_299F007B0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A2026DD8;
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::Apdu::Apdu(SERestoreInfo::Apdu *this, const unsigned __int8 *a2, unint64_t a3)
{
  *this = &unk_2A2026DD8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2)
  {
    if (a3 >> 3 < 0x407)
    {
      operator new();
    }

    v3 = "len <= MAX_APDU_LEN";
    v4 = 114;
  }

  else
  {
    v3 = "data";
    v4 = 113;
  }

  __assert_rtn("Apdu", "Apdu.hpp", v4, v3);
}

void sub_299F008D8(_Unwind_Exception *a1)
{
  MEMORY[0x29C2B5F30](v2, 0x10C402FEFCB83);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::P73BaseUpdateController::CheckAndInstallOasisApplet(void)::CommandSelectOasis::~CommandSelectOasis(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::CheckAndInstallOasisApplet(void)::CommandGetConfigID::~CommandGetConfigID(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SEUpdater::SLAM::Installation::InstallationTrigger>,SEUpdater::SLAM::Installation::InstallationTrigger*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v4 = v3 - 48;
        v6 = (v3 - 40);
        std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v6);
        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

void std::vector<SEUpdater::SLAM::Installation::InstallationTrigger>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        v7 = (v4 - 40);
        std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void SLAM::Migration::AppletInfo::~AppletInfo(SLAM::Migration::AppletInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::vector<SLAM::Migration::AppletInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
}

void std::allocator<SLAM::Migration::AppletInfo>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::vector<SLAM::Migration::AppletInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 72;
        std::allocator<SLAM::Migration::AppletInfo>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SLAM::Migration::Trigger>,SLAM::Migration::Trigger*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v4 = v3 - 48;
        v6 = (v3 - 40);
        std::vector<SLAM::Migration::AppletInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

void std::vector<SLAM::Migration::Trigger>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        v7 = (v4 - 40);
        std::vector<SLAM::Migration::AppletInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t SEUpdater::bigEndianFromRange(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4 - a3;
  if (a4 <= a3)
  {
    return 0;
  }

  v6 = a2 - a1 - a3;
  if (a2 - a1 < a3)
  {
    v6 = 0;
  }

  if (v6 <= a4 + ~a3)
  {
    std::vector<std::vector<unsigned short>>::__throw_out_of_range[abi:ne200100]();
  }

  result = 0;
  v8 = (a1 + a3);
  do
  {
    v9 = *v8++;
    result = v9 | (result << 8);
    --v4;
  }

  while (v4);
  return result;
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t a1, const void *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = __dst + a5;
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(__dst + a5, __dst, v10 - v21);
      }

      v25 = __dst;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return;
      }

      v32 = __dst + a5;
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(__dst + a5, __dst, v18 - v32);
      }

      v25 = __dst;
      v26 = __src;
      v27 = v10 - __dst;
    }

    memmove(v25, v26, v27);
  }

  else
  {
    v11 = *a1;
    v12 = &v10[a5 - *a1];
    if (v12 < 0)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v28 = (__dst - v11);
    memcpy(v13, __src, a5);
    v29 = &v13[a5];
    v30 = v10 - __dst;
    memcpy(v29, __dst, v10 - __dst);
    *(a1 + 8) = __dst;
    v31 = &v13[v11 - __dst];
    memcpy(v31, v11, v28);
    *a1 = v31;
    *(a1 + 8) = &v29[v30];
    *(a1 + 16) = 0;
    if (v11)
    {

      operator delete(v11);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](v2 + 4, a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void std::__shared_ptr_emplace<SEUpdater::P73BaseSEController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2027EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (a1[1] != 5)
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (v1 != 5)
  {
    return 0;
  }

  return *a1 == 1668443974 && *(a1 + 4) == 101;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<SERestoreInfo::P73DeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2027EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::SN100VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2027F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::SN200VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2027F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::SN210VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2027FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::SN300VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2028038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::SE310SDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2028088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::SN300V2DeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20280D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::SN300V3DeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2028128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdaterUtil::_AddError(SEUpdaterUtil *this, int a2, uint64_t a3, SEUpdaterUtil::SELogObj *a4, const char *a5, ...)
{
  va_start(va, a5);
  if (!a4)
  {
    __assert_rtn("_AddError", "Error.hpp", 66, "fmt");
  }

  v6 = this;
  va_copy(v17, va);
  SEUpdaterUtil::SELogToStrv(0, a4, va, 0, a3, __p);
  v7 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  v8 = xmmword_2A14F23B0;
  if (!xmmword_2A14F23B0)
  {
    SEUpdaterUtil::Error::create_default_global(v7);
  }

  v9 = *(&xmmword_2A14F23B0 + 1);
  if (*(&xmmword_2A14F23B0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F23B0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  SEUpdaterUtil::Error::addError(v8, __p, v6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (a2)
  {
    v10 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v10 = __p[1];
    }

    if (v10)
    {
      v11 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v12 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v11);
      }

      v13 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v14 = __p;
      if ((v16 & 0x80u) != 0)
      {
        v14 = __p[0];
      }

      SEUpdaterUtil::SELogObj::printLog(v12, 0, 0, 0, 0, "%s\n", v14);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299F01A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::cf::CFSharedRef<__CFData const>::reset<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v4, a2);
  v3 = *a1;
  *a1 = v4;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t SEUpdaterUtil::SELogToStrv@<X0>(SEUpdaterUtil *this@<X0>, SEUpdaterUtil::SELogObj *a2@<X2>, va_list a3@<X3>, char *a4@<X4>, uint64_t a5@<X1>, uint64_t a6@<X8>)
{
  v17[4] = *MEMORY[0x29EDCA608];
  SEUpdaterUtil::SELogObj::FormatMsgv(a2, a3, &v16);
  if (!v16)
  {
    goto LABEL_11;
  }

  v10 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v10);
  }

  v11 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::createVerboseLogString(this, v16, a4, a5, &__s);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!__s)
  {
    std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&__s, 0);
    std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v15);
LABEL_11:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(a6, __s);
  std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&__s, 0);
  std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v15);
LABEL_12:
  std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&v16, 0);
  result = std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v17);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F01C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_299F01DB8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<SEUpdaterUtil::Error> ctu::SharedSynchronizable<SEUpdaterUtil::Error>::make_shared_ptr<SEUpdaterUtil::Error>(SEUpdaterUtil::Error*)::{lambda(SEUpdaterUtil::Error*)#1}::operator() const(SEUpdaterUtil::Error*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<SEUpdaterUtil::Error *,std::shared_ptr<SEUpdaterUtil::Error> ctu::SharedSynchronizable<SEUpdaterUtil::Error>::make_shared_ptr<SEUpdaterUtil::Error>(SEUpdaterUtil::Error*)::{lambda(SEUpdaterUtil::Error *)#1},std::allocator<SEUpdaterUtil::Error>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

uint64_t std::__shared_ptr_pointer<SEUpdaterUtil::Error *,std::shared_ptr<SEUpdaterUtil::Error> ctu::SharedSynchronizable<SEUpdaterUtil::Error>::make_shared_ptr<SEUpdaterUtil::Error>(SEUpdaterUtil::Error*)::{lambda(SEUpdaterUtil::Error *)#1},std::allocator<SEUpdaterUtil::Error>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<SEUpdaterUtil::Error> ctu::SharedSynchronizable<SEUpdaterUtil::Error>::make_shared_ptr<SEUpdaterUtil::Error>(SEUpdaterUtil::Error*)::{lambda(SEUpdaterUtil::Error*)#1}::operator() const(SEUpdaterUtil::Error*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = (result + 32);
    std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = ctu::SharedSynchronizable<SEUpdaterUtil::Error>::~SharedSynchronizable(v1);
    return MEMORY[0x29C2B5F30](v2, 0x20C400FA29667);
  }

  return result;
}

void *ctu::SharedSynchronizable<SEUpdaterUtil::Error>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::vector<std::pair<std::string,int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *std::__shared_ptr_emplace<SERestoreInfo::BLOB>::__shared_ptr_emplace[abi:ne200100]<__CFData const*,std::allocator<SERestoreInfo::BLOB>,0>(void *a1, CFTypeRef *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2028178;
  SERestoreInfo::BLOB::BLOB((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::BLOB>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2028178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

SERestoreInfo::BLOB *SERestoreInfo::BLOB::BLOB(SERestoreInfo::BLOB *this, CFTypeRef cf)
{
  *this = &unk_2A2027230;
  v3 = CFRetain(cf);
  *(this + 3) = v3;
  *(this + 1) = CFDataGetBytePtr(v3);
  *(this + 2) = CFDataGetLength(*(this + 3));
  return this;
}

void std::__shared_ptr_emplace<SERestoreInfo::P73BaseFirmware>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20281C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<std::map<std::string,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2028218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SEUpdater::SEHandleShim>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2028268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void sub_299F0255C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdater::SEHandleShim::~SEHandleShim(SEUpdater::SEHandleShim *this)
{
  *this = &unk_2A20282B8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A20282B8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SEUpdater::LogSinkShim>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2028308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::LogSinkShim::Log(uint64_t a1, uint64_t a2)
{
  v3 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v4 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v3);
  }

  v5 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  SEUpdaterUtil::SELogObj::printLog(v4, 2, 0, 0, 0, "%s\n", v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v5 = __len;
  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v6++;
      *v32++ = v33;
      --v5;
    }

    while (v5);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = __dst;
    v36 = *a1;
    v37 = &v30[*a1 - __dst];
    memcpy(v37, *a1, &__dst[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }

    return;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = __dst;
    v24 = v6;
    v25 = v5;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &__dst[v5];
    v20 = &v10[v17];
    if (&v18[-v5] < v10)
    {
      v21 = a4 - &v6[v5];
      v22 = a4 - v6;
      do
      {
        __dst[v22++] = __dst[v21++];
      }

      while (&__dst[v21] < v10);
      v20 = &__dst[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&__dst[v5], __dst, v18 - v19);
    }

    v23 = __dst;
    v24 = v6;
    v25 = v10 - __dst;
LABEL_27:

    memmove(v23, v24, v25);
  }
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v5 = a5;
  v6 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = __dst;
      v24 = v6;
      v25 = v5;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = __dst;
      v24 = v6;
      v25 = v15;
    }

    memmove(v23, v24, v25);
  }

  else
  {
    v11 = *a1;
    v12 = &v9[a5 - *a1];
    if (v12 < 0)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v13 = v10 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v26 = (__dst - v11);
    v27 = (__dst - v11 + a5);
    v28 = (__dst - v11);
    do
    {
      v29 = *v6++;
      *v28++ = v29;
      --v5;
    }

    while (v5);
    v30 = *(a1 + 8) - __dst;
    memcpy(v27, __dst, v30);
    v31 = &v27[v30];
    *(a1 + 8) = __dst;
    v32 = *a1;
    v33 = &v26[*a1 - __dst];
    memcpy(v33, *a1, &__dst[-*a1]);
    *a1 = v33;
    *(a1 + 8) = v31;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void _GLOBAL__sub_I_P73BaseUpdateController_cpp()
{
  v12 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(byte_2A197E688, "4143_WeakPullDown");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[24], "4143_HiZ");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[48], "412A_Default");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[72], "415E_Value0C");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[96], "415E_Value00");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[120], "40BD_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[144], "40BD_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[168], "4108_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[192], "4108_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[216], "40D0_Disable");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[240], "40D0_Enable_WithFilters_SW");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[264], "40D0_Enable_WithFilters_SW_ISO");
  std::string::basic_string[abi:ne200100]<0>(&byte_2A197E688[288], "40D0_Enable_WithFilters_SW_ISO_Type");
  LODWORD(v1) = 0;
  WORD2(v1) = -28672;
  BYTE6(v1) = 0;
  qword_2A197E7C8 = 0;
  unk_2A197E7D0 = 0;
  qword_2A197E7C0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E7C0, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28670;
  BYTE6(v1) = 0;
  qword_2A197E7E0 = 0;
  unk_2A197E7E8 = 0;
  qword_2A197E7D8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E7D8, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28671;
  BYTE6(v1) = 0;
  qword_2A197E7F8 = 0;
  unk_2A197E800 = 0;
  qword_2A197E7F0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E7F0, &v1, &v1 + 7, 7);
  v3 = xmmword_299F2A900;
  *v4 = unk_299F2A910;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2A8E0;
  v2 = unk_299F2A8F0;
  qword_2A197E810 = 0;
  unk_2A197E818 = 0;
  qword_2A197E808 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E808, &v1, &v4[22], 70);
  v3 = xmmword_299F2A946;
  *v4 = unk_299F2A956;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2A926;
  v2 = unk_299F2A936;
  qword_2A197E828 = 0;
  unk_2A197E830 = 0;
  qword_2A197E820 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E820, &v1, &v4[22], 70);
  v3 = xmmword_299F2A98C;
  *v4 = unk_299F2A99C;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2A96C;
  v2 = unk_299F2A97C;
  qword_2A197E840 = 0;
  unk_2A197E848 = 0;
  qword_2A197E838 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E838, &v1, &v4[22], 70);
  *&v1 = 0x90000000000000;
  qword_2A197E858 = 0;
  unk_2A197E860 = 0;
  qword_2A197E850 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E850, &v1, &v1 + 8, 8);
  *&v1 = 0x900000025E4103;
  qword_2A197E870 = 0;
  unk_2A197E878 = 0;
  qword_2A197E868 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E868, &v1, &v1 + 8, 8);
  *&v1 = 0x900C00025E4103;
  qword_2A197E890 = 0;
  qword_2A197E880 = 0;
  unk_2A197E888 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E880, &v1, &v1 + 8, 8);
  *&v1 = 0xA5A5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197E898 = 0;
  qword_2A197E8A8 = 0;
  qword_2A197E8A0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E898, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197E8B0 = 0;
  qword_2A197E8C0 = 0;
  qword_2A197E8B8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E8B0, &v1, &v1 + 10, 10);
  *&v1 = 0xA5A5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197E8C8 = 0;
  qword_2A197E8D8 = 0;
  qword_2A197E8D0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E8C8, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197E8E0 = 0;
  qword_2A197E8F0 = 0;
  qword_2A197E8E8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E8E0, &v1, &v1 + 10, 10);
  *&v1 = 0x5A5A5A5A05D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E8F8 = 0;
  qword_2A197E908 = 0;
  qword_2A197E900 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E8F8, &v1, &v1 + 11, 11);
  *&v1 = 0x5A5AA5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E910 = 0;
  qword_2A197E920 = 0;
  qword_2A197E918 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E910, &v1, &v1 + 11, 11);
  *&v1 = 0x5AA5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E928 = 0;
  qword_2A197E938 = 0;
  qword_2A197E930 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E928, &v1, &v1 + 11, 11);
  *&v1 = 0xA5A5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E940 = 0;
  qword_2A197E950 = 0;
  qword_2A197E948 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E940, &v1, &v1 + 11, 11);
  v7 = unk_299F2AA48;
  v8 = xmmword_299F2AA58;
  v9 = unk_299F2AA68;
  v10 = xmmword_299F2AA78;
  v5 = unk_299F2AA28;
  v6 = xmmword_299F2AA38;
  v1 = xmmword_299F2A9D8;
  v2 = unk_299F2A9E8;
  *v4 = unk_299F2AA08;
  *&v4[16] = xmmword_299F2AA18;
  v3 = xmmword_299F2A9F8;
  v11 = -57;
  SERestoreInfo::CApdu::CApdu(&v0);
}

id DERDecodeData(NSData *a1, uint64_t a2)
{
  v3 = a1;
  v9 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v8[0] = [(NSData *)v3 DERItem];
  v8[1] = v4;
  v5 = DERDecodeItem(v8, &v9);
  if (v5)
  {
    _ObjCLog(0, "DERDecodeData", &cfstr_FailedToDecode_4.isa, v5);
LABEL_3:
    v6 = 0;
    goto LABEL_7;
  }

  if (a2 != -1 && v9 != a2)
  {
    _ObjCLog(0, "DERDecodeData", &cfstr_UnexpectedTagE.isa, v9, a2);
    goto LABEL_3;
  }

  v6 = [MEMORY[0x29EDB8DA0] dataWithDERItem:v10];
LABEL_7:

  return v6;
}

uint64_t DERParseSequence(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5)
{
  bzero(a4, a5);
  v13 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v10 = DERDecodeItem(a1, &v13);
  if (v10)
  {
    v11 = v10;
    _ObjCLog(0, "DERParseSequence", &cfstr_FailedToDecode_4.isa, v10);
  }

  else if (a3 == -1 || v13 == a3)
  {
    return DERParseSequenceContent(v14, *(a2 + 8), *a2, a4, a5);
  }

  else
  {
    _ObjCLog(0, "DERParseSequence", &cfstr_ExpectedTag0xL.isa, a3, v13);
    return 2;
  }

  return v11;
}

uint64_t DERParseSequenceSpec(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5)
{
  bzero(a4, a5);
  v11 = 0;
  v12[0] = 0;
  v12[1] = 0;
  result = DERDecodeItem(a2, &v11);
  if (!result)
  {
    if (v11 == a1)
    {
      return DERParseSequenceContent(v12, *(a3 + 8), *a3, a4, a5);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERParseSequenceSpecContent(void *a1, uint64_t a2, unint64_t a3, size_t a4)
{
  v7 = a1;
  v11[0] = [v7 DERItem];
  v11[1] = v8;
  v9 = DERParseSequenceContent(v11, *(a2 + 8), *a2, a3, a4);

  return v9;
}

id encodeSequence(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v12 = DERLengthOfEncodedSequence(a1, a2, a3, a4);
  v8 = [MEMORY[0x29EDB8DF8] dataWithLength:v12];
  v9 = DEREncodeSequence(a1, a2, a3, a4, [v8 mutableBytes], &v12);
  if (v9)
  {
    _ObjCLog(0, "encodeSequence", &cfstr_WhileEncodingE.isa, v9);
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

id splitDERSeq(NSData *a1, uint64_t a2)
{
  v3 = a1;
  v13[0] = [(NSData *)v3 DERItem];
  v13[1] = v4;
  v12[0] = 0;
  v12[1] = 0;
  v5 = DERDecodeSeqContentInit(v13, v12);
  if (v5)
  {
    _ObjCLog(0, "splitDERSeq", &cfstr_AttemptingToSp.isa, v5);
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    while (1)
    {
      v8 = v12[0];
      memset(v11, 0, sizeof(v11));
      if (DERDecodeSeqNext(v12, v11) == 1)
      {
        v6 = v7;
        goto LABEL_9;
      }

      if (v11[0] != a2)
      {
        break;
      }

      v9 = [MEMORY[0x29EDB8DA0] dataWithBytes:v8 length:v12[0] - v8];
      [v7 addObject:v9];
    }

    _ObjCLog(0, "splitDERSeq", &cfstr_UnexpectedTagE.isa, v11[0], a2);
    v6 = 0;
LABEL_9:
  }

  return v6;
}

SERestoreInfo::SN210VDeviceInfo *SERestoreInfo::SN210VDeviceInfo::SN210VDeviceInfo(SERestoreInfo::SN210VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2028460;
  if (*(v3 + 14) != 210)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN210VDeviceInfo::~SN210VDeviceInfo(SERestoreInfo::SN210VDeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t SEUpdaterUtil::SN300V2Image4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN300V2Image4Signer::getSigningKey(void)const::signingKey, &SEUpdaterUtil::SN300V2Image4Signer::getSigningCert(void)const::signingCert, 167);
}

uint64_t SEUpdaterUtil::SN300V2Image4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN300V2Image4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil19SN300V2Image4SignerE", 739);
}

void SEUpdaterUtil::SN300V2Image4Signer::~SN300V2Image4Signer(SEUpdaterUtil::SN300V2Image4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

void **SERestoreInfo::P73DeviceInfo::P73DeviceInfo(void **this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2028510;
  if (*(v3 + 14) != 115)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  if (SERestoreInfo::isDummyRootCaKeyId((this + 11)))
  {
    SERestoreInfo::fixRootCaKeyId(this + 11, (this + 14));
  }

  return this;
}

void sub_299F03F64(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  SERestoreInfo::P73BaseDeviceInfo::~P73BaseDeviceInfo(v1);
  _Unwind_Resume(a1);
}

BOOL SERestoreInfo::isDummyRootCaKeyId(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v7, &SERestoreInfo::isDummyRootCaKeyId(std::vector<unsigned char> const&)::dummyRootCaKeyIdArray, &SERestoreInfo::isProdCometIm4KeyId(std::vector<unsigned char> const&)::prodCometIm4KeyIdArray, 32);
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = v7;
  if (v3 == v8 - v7)
  {
    v5 = memcmp(v2, v7, v3) == 0;
    if (!v4)
    {
      return v5;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if (v7)
  {
LABEL_5:
    v8 = v4;
    operator delete(v4);
  }

  return v5;
}

void SERestoreInfo::fixRootCaKeyId(void **a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v10, &SERestoreInfo::isProdCometIm4KeyId(std::vector<unsigned char> const&)::prodCometIm4KeyIdArray, &xmmword_299F2BE60, 32);
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  v6 = v10;
  if (v5 != v11 - v10)
  {
    v7 = 0;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = memcmp(v4, v10, v5) == 0;
  if (v6)
  {
LABEL_5:
    v11 = v6;
    operator delete(v6);
  }

LABEL_6:
  RootCA::getRootKeyId(v7, 115, &__p);
  if (&__p != a1)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, __p, v9, v9 - __p);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_299F040EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73DeviceInfo::~P73DeviceInfo(SERestoreInfo::P73DeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

void PTCUtil::deletePTCKeysWithNoStoredPK(uint64_t *a1, uint64_t *a2)
{
  v47[2] = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = *(*a2 + 56);
  if (v4 == 100)
  {
    v5 = *(v3 + 12) - 2719;
  }

  else
  {
    if (v4 != 115)
    {
      goto LABEL_33;
    }

    v5 = *(v3 + 12) - 2451;
  }

  if (v5 >= 0xFFFFFF79)
  {
    _ObjCLog(2, "deletePTCKeysWithNoStoredPK", &cfstr_PerformingClea.isa);
    v6 = [SETransceiveHelper alloc];
    v7 = a1[1];
    v43 = *a1;
    v44 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = [(SETransceiveHelper *)v6 initWithSEController:&v43];
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    v47[0] = @"A000000704C0000000000001";
    v47[1] = @"A000000704C0000000000002";
    [MEMORY[0x29EDB8D80] arrayWithObjects:v47 count:2];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v24 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v24)
    {
      v23 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v8 = [(SETransceiveHelper *)v26 selectWithAID:?];
          if (v8)
          {
            _ObjCLog(0, "deletePTCKeysWithNoStoredPK", &cfstr_FailedToSelect_8.isa, v27);
          }

          else
          {
            v38 = 0;
            v9 = PTCCommand::ptc_listKeys(v26, v27, &v38);
            v8 = v38;
            if (!v9)
            {
              exception = __cxa_allocate_exception(0x48uLL);
              std::string::basic_string[abi:ne200100]<0>(&v28, "While listing keys");
              v21 = SERestoreInfo::SEException::SEException(exception, &v28, 1, @"SEUpdaterErrorDomain");
            }

            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v10 = v9;
            v11 = [v10 countByEnumeratingWithState:&v34 objects:v45 count:16];
            if (v11)
            {
              v12 = *v35;
              do
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v35 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v34 + 1) + 8 * j);
                  v32 = 0u;
                  v33 = 0u;
                  v30 = 0u;
                  v31 = 0u;
                  v28 = 0u;
                  v29 = 0u;
                  v15 = DERParseSequenceSpecContent(v14, &PTKeyInSlotSpec, &v28, 0x60uLL);
                  if (v15)
                  {
                    v16 = [v14 asHexString];
                    _ObjCLog(0, "deletePTCKeysWithNoStoredPK", &cfstr_FailedToParseK.isa, v15, v16);
                  }

                  else
                  {
                    v17 = (bswap32(*v29) >> 16);
                    _ObjCLog(2, "deletePTCKeysWithNoStoredPK", &cfstr_PtcKeyInSlotDT.isa, v17, *(&v32 + 1) == 0);
                    if (!*(&v32 + 1))
                    {
                      v18 = PTCCommand::ptc_DeleteKey(v26, v27, v17);

                      v8 = v18;
                      _ObjCLog(2, "deletePTCKeysWithNoStoredPK", &cfstr_PtcKeyDeletedW.isa, v18);
                    }
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v34 objects:v45 count:16];
              }

              while (v11);
            }
          }
        }

        v24 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v24);
    }

    _ObjCLog(2, "deletePTCKeysWithNoStoredPK", &cfstr_CleanupComplet.isa);
  }

LABEL_33:
  v19 = *MEMORY[0x29EDCA608];
}

void PTCUtil::workaroundForPTCExport(uint64_t a1, uint64_t *a2)
{
  v5[6] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = *(*a2 + 12);
  if (v3 == *(*a2 + 24) && v3 == *(v2 + 20) && *(v2 + 28) == 23195)
  {
    SERestoreInfo::Apdu::Apdu(v5);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_299F04B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  *(v25 - 88) = &unk_2A2026DD8;
  v27 = *(v25 - 72);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::CommandSelectPTInstance1::~CommandSelectPTInstance1(SEUpdater::CommandSelectPTInstance1 *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSelectPTInstance2::~CommandSelectPTInstance2(SEUpdater::CommandSelectPTInstance2 *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void _GLOBAL__sub_I_PTCUtil_m()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = objc_autoreleasePoolPush();
  std::string::basic_string[abi:ne200100]<0>(_MergedGlobals_5, "4143_WeakPullDown");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[24], "4143_HiZ");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[48], "412A_Default");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[72], "415E_Value0C");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[96], "415E_Value00");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[120], "40BD_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[144], "40BD_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[168], "4108_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[192], "4108_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[216], "40D0_Disable");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[240], "40D0_Enable_WithFilters_SW");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[264], "40D0_Enable_WithFilters_SW_ISO");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_5[288], "40D0_Enable_WithFilters_SW_ISO_Type");
  LODWORD(v2) = 0;
  WORD2(v2) = -28672;
  BYTE6(v2) = 0;
  qword_2A197EBE8 = 0;
  unk_2A197EBF0 = 0;
  qword_2A197EBE0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EBE0, &v2, &v2 + 7, 7);
  LODWORD(v2) = 21185023;
  WORD2(v2) = -28670;
  BYTE6(v2) = 0;
  qword_2A197EC00 = 0;
  unk_2A197EC08 = 0;
  qword_2A197EBF8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EBF8, &v2, &v2 + 7, 7);
  LODWORD(v2) = 21185023;
  WORD2(v2) = -28671;
  BYTE6(v2) = 0;
  qword_2A197EC18 = 0;
  unk_2A197EC20 = 0;
  qword_2A197EC10 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EC10, &v2, &v2 + 7, 7);
  v4 = xmmword_299F2BE80;
  *v5 = unk_299F2BE90;
  *&v5[14] = 0x90000000000000;
  v2 = xmmword_299F2BE60;
  v3 = unk_299F2BE70;
  qword_2A197EC30 = 0;
  unk_2A197EC38 = 0;
  qword_2A197EC28 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EC28, &v2, &v5[22], 70);
  v4 = xmmword_299F2BEC6;
  *v5 = unk_299F2BED6;
  *&v5[14] = 0x90000000000000;
  v2 = xmmword_299F2BEA6;
  v3 = unk_299F2BEB6;
  qword_2A197EC48 = 0;
  unk_2A197EC50 = 0;
  qword_2A197EC40 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EC40, &v2, &v5[22], 70);
  v4 = xmmword_299F2BF0C;
  *v5 = unk_299F2BF1C;
  *&v5[14] = 0x90000000000000;
  v2 = xmmword_299F2BEEC;
  v3 = unk_299F2BEFC;
  qword_2A197EC60 = 0;
  unk_2A197EC68 = 0;
  qword_2A197EC58 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EC58, &v2, &v5[22], 70);
  *&v2 = 0x90000000000000;
  qword_2A197EC78 = 0;
  unk_2A197EC80 = 0;
  qword_2A197EC70 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EC70, &v2, &v2 + 8, 8);
  *&v2 = 0x900000025E4103;
  qword_2A197EC90 = 0;
  unk_2A197EC98 = 0;
  qword_2A197EC88 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197EC88, &v2, &v2 + 8, 8);
  *&v2 = 0x900C00025E4103;
  qword_2A197ECB0 = 0;
  qword_2A197ECA0 = 0;
  unk_2A197ECA8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ECA0, &v2, &v2 + 8, 8);
  *&v2 = 0xA5A5A5A504BD40FFLL;
  WORD4(v2) = 144;
  qword_2A197ECB8 = 0;
  qword_2A197ECC8 = 0;
  qword_2A197ECC0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ECB8, &v2, &v2 + 10, 10);
  *&v2 = 0x5AA5A5A504BD40FFLL;
  WORD4(v2) = 144;
  qword_2A197ECD0 = 0;
  qword_2A197ECE0 = 0;
  qword_2A197ECD8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ECD0, &v2, &v2 + 10, 10);
  *&v2 = 0xA5A5A5A5040841FFLL;
  WORD4(v2) = 144;
  qword_2A197ECE8 = 0;
  qword_2A197ECF8 = 0;
  qword_2A197ECF0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ECE8, &v2, &v2 + 10, 10);
  *&v2 = 0x5AA5A5A5040841FFLL;
  WORD4(v2) = 144;
  qword_2A197ED00 = 0;
  qword_2A197ED10 = 0;
  qword_2A197ED08 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ED00, &v2, &v2 + 10, 10);
  *&v2 = 0x5A5A5A5A05D04003;
  WORD4(v2) = -28664;
  BYTE10(v2) = 0;
  qword_2A197ED18 = 0;
  qword_2A197ED28 = 0;
  qword_2A197ED20 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ED18, &v2, &v2 + 11, 11);
  *&v2 = 0x5A5AA5A505D04003;
  WORD4(v2) = -28664;
  BYTE10(v2) = 0;
  qword_2A197ED30 = 0;
  qword_2A197ED40 = 0;
  qword_2A197ED38 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ED30, &v2, &v2 + 11, 11);
  *&v2 = 0x5AA5A5A505D04003;
  WORD4(v2) = -28664;
  BYTE10(v2) = 0;
  qword_2A197ED48 = 0;
  qword_2A197ED58 = 0;
  qword_2A197ED50 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ED48, &v2, &v2 + 11, 11);
  *&v2 = 0xA5A5A5A505D04003;
  WORD4(v2) = -28664;
  BYTE10(v2) = 0;
  qword_2A197ED60 = 0;
  qword_2A197ED70 = 0;
  qword_2A197ED68 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197ED60, &v2, &v2 + 11, 11);
  v8 = unk_299F2BFA2;
  v9 = xmmword_299F2BFB2;
  v10 = unk_299F2BFC2;
  v11 = xmmword_299F2BFD2;
  v6 = unk_299F2BF82;
  v7 = xmmword_299F2BF92;
  v2 = xmmword_299F2BF32;
  v3 = unk_299F2BF42;
  *v5 = unk_299F2BF62;
  *&v5[16] = xmmword_299F2BF72;
  v4 = xmmword_299F2BF52;
  v12 = -57;
  SERestoreInfo::CApdu::CApdu(&v1);
}

uint64_t SEUpdaterUtil::SN100VImage4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN100VImage4Signer::getSigningKey(void)const::signingKey, &SEUpdaterUtil::SN100VImage4Signer::getSigningCert(void)const::signingCert, 121);
}

uint64_t SEUpdaterUtil::SN100VImage4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN100VImage4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil18SN100VImage4SignerE", 628);
}

void SEUpdaterUtil::SN100VImage4Signer::~SN100VImage4Signer(SEUpdaterUtil::SN100VImage4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

void WriteEvent(uint64_t a1, void *a2)
{
  v43[2] = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%@", *a2, @"SEUpdaterEventsLog.plist"];
  if (v3)
  {
    v38 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v3];
    v4 = objc_opt_new();
    if (v38)
    {
      v41 = 0;
      v5 = [MEMORY[0x29EDBA0C0] propertyListWithData:v38 options:2 format:0 error:&v41];
      v6 = v41;
      v7 = v6;
      if (!v5 || v6)
      {
        v12 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v13 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v12);
        }

        v14 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v13, 2, 0, 1, "WriteEvent", "EVENT LOGGING: Could not recreate log events properties from file - Defaulting to empty file\n");
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      else
      {
        v8 = [v5 objectForKeyedSubscript:@"events"];
        if (v8)
        {
          [v4 addObjectsFromArray:v8];
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1];
    if (([v4 containsObject:v15] & 1) == 0)
    {
      [v4 addObject:v15];
    }

    v42[0] = @"version";
    v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:1];
    v42[1] = @"events";
    v43[0] = v16;
    v43[1] = v4;
    v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

    v40 = 0;
    v18 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v17 format:200 options:0 error:&v40];
    v19 = v40;

    if (!v18 || v19)
    {
      v29 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v30 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v29);
      }

      v23 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v31 = [v19 description];
      v32 = v31;
      SEUpdaterUtil::SELogObj::printLog(v30, 2, 0, 1, "WriteEvent", "EVENT LOGGING: Unable to serialize data - %s\n", [v31 UTF8String]);
      v28 = v23 == 0;
    }

    else
    {
      v39 = 0;
      v20 = [v18 writeToFile:v3 options:0 error:&v39];
      v19 = v39;
      if (v20)
      {
        v21 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v22 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v21);
        }

        v23 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v24 = v3;
        v25 = [v3 UTF8String];
        v26 = [v4 description];
        v27 = v26;
        SEUpdaterUtil::SELogObj::printLog(v22, 2, 0, 1, "WriteEvent", "EVENT LOGGING: Successfully wrote to file %s with events %s:\n", v25, [v26 UTF8String]);
        v28 = v23 == 0;
      }

      else
      {
        v33 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v34 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v33);
        }

        v23 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v35 = [v19 description];
        v36 = v35;
        SEUpdaterUtil::SELogObj::printLog(v34, 2, 0, 1, "WriteEvent", "EVENT LOGGING: Error writing to file - %s\n", [v35 UTF8String]);
        v28 = v23 == 0;
      }
    }

    if (!v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v9 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v10 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v9);
    }

    v11 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v10, 2, 0, 1, "WriteEvent", "EVENT LOGGING: Unable to recreate full file name with path\n");
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  v37 = *MEMORY[0x29EDCA608];
}

void sub_299F0610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);

  _Unwind_Resume(a1);
}

const void *SEUpdater::SEControllerBase::shutdown(const void **this)
{
  v2 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v3 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v2);
  }

  v4 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v3, 2, 0, 1, "shutdown", "Shutdown fSeHandle %p\n", this[1]);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  result = this[1];
  if (result)
  {
    result = NfRestoreSEClose();
    this[1] = 0;
  }

  return result;
}

uint64_t SEUpdater::SEControllerBase::transceiveInternal(SEUpdater::SEControllerBase *this, const unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t *a5)
{
  v5 = *(this + 1);
  v6 = NfRestoreSETransceive();
  if (!v6)
  {
    return 0;
  }

  v8 = 25;
  SEUpdaterUtil::_AddError(0x19, 1, "transceiveInternal", "NfRestoreSETransceive returns %d", v7, v6);
  return v8;
}

void SEUpdater::SEControllerBase::transceive(SEUpdater::SEControllerBase *this, const unsigned __int8 *a2, const unsigned __int8 *a3, unsigned __int8 *a4, unint64_t *a5, SEUpdaterUtil::SELogObj *a6)
{
  if (*(this + 1))
  {
    v8 = a2;
    v9 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v10 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v9);
    }

    v11 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v10, a6, 0, 1, "transceive", "transmitting C-APDU: %zu \n", a3);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    SEUpdaterUtil::SELogPrintBinary(a6, v8, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v15, "Assertion: ");
  v13 = std::string::append(&v15, "fSeHandle");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v17 = v13->__r_.__value_.__r.__words[2];
  v16 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x29C2B5B50](exception, &v16);
}

void SEUpdater::SEControllerBase::transceive(SEUpdater::SEControllerBase *this, const SERestoreInfo::CApdu *a2, SERestoreInfo::RApdu *a3, SEUpdaterUtil::SELogObj *a4)
{
  if (*(this + 1))
  {
    v7 = *(a3 + 1);
    v8 = *(v7 + 16) - *v7;
    LOBYTE(v17) = 0;
    std::vector<unsigned char>::assign(v7, v8, &v17);
    v16.__r_.__value_.__r.__words[0] = *(*(a3 + 1) + 8) - **(a3 + 1);
    v9 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v10 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v9);
    }

    v11 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v10, a4, 0, 1, "transceive", "transmitting C-APDU: %zu \n", *(*(a2 + 1) + 8) - **(a2 + 1));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (*(*(a2 + 1) + 8) - **(a2 + 1) >= 5uLL)
    {
      v12 = 5;
    }

    else
    {
      v12 = *(*(a2 + 1) + 8) - **(a2 + 1);
    }

    SEUpdaterUtil::SELogPrintBinary(a4, *(a2 + 3), v12);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v16, "Assertion: ");
  v14 = std::string::append(&v16, "fSeHandle");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v18 = v14->__r_.__value_.__r.__words[2];
  v17 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x29C2B5B50](exception, &v17);
}

id PTCCommand::ptc_DeleteKey(PTCCommand *this, SETransceiveHelper *a2, NSString *a3)
{
  v3 = a3;
  v5 = this;
  v6 = a2;
  v15 = 1;
  v16 = __rev16(v3);
  v14[0] = &v15;
  v14[1] = 1;
  v14[2] = &v16;
  v14[3] = 2;
  v7 = PTCCommand::CreateCommand(0xA001u, v14, &PTDeleteKeyInputSpec);
  if (v7)
  {
    v13 = 0;
    v8 = PTCCommand::ExecuteCommand(v5, v6, v7, &v13);
    v9 = v13;
    v10 = v9;
    if (v9)
    {
      v11 = _ObjCLogNSError(v9, 0, "ptc_DeleteKey", &cfstr_WhileDeletingK.isa, v16);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = _ObjCLogNSError(0, 0, "ptc_DeleteKey", &cfstr_CouldNotCreate.isa);
  }

  return v11;
}

id PTCCommand::CreateCommand(unsigned int a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v8 = 1;
  v9 = __rev16(a1);
  if (a2 && a3 && (encodeSequence(0x2000000000000010, a2, *(a3 + 8), *a3), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = 0;
  }

  else
  {
    v7[0] = &v8;
    v7[1] = 1;
    v7[2] = &v9;
    v7[3] = 2;
    v7[4] = [v3 DERItem];
    v7[5] = v4;
    v5 = encodeSequence(0x2000000000000010, v7, 3u, &PTCommandSpecItems);
  }

  return v5;
}

id PTCCommand::ExecuteCommand(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 selectWithAID:v8];
  v11 = v10;
  if (!v10)
  {
    v13 = v7;
    v14 = v9;
    SERestoreInfo::Apdu::Apdu(&v16);
  }

  if (a4)
  {
    v12 = v10;
    *a4 = v11;
  }

  return 0;
}

void sub_299F0738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

id PTCCommand::ptc_listKeys(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v11 = PTCCommand::CreateCommand(0x1002u, 0, 0);
  if (!v11)
  {
    _ObjCLogOutError(a3, 7, "ptc_listKeys", @"Could not create listKeysCommandData\n", v7, v8, v9, v10, v30);
    v18 = 0;
    goto LABEL_9;
  }

  v41 = 0;
  v12 = PTCCommand::ExecuteCommand(v5, v6, v11, &v41);
  v13 = v41;
  if (v13)
  {
    v14 = [v11 asHexString];
    _ObjCLogWrapOutError(a3, v13, 0, "ptc_listKeys", @"While listing keys: %@\n", v15, v16, v17, v14);
  }

  else
  {
    v40[0] = [v12 DERItem];
    v40[1] = v19;
    v38 = 0u;
    v39 = 0u;
    if (!DERParseSequenceSpec(0x2000000000000010, v40, &PTListKeysOutputSpec, &v38, 0x20uLL))
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__3;
      v36 = __Block_byref_object_dispose__3;
      v37 = objc_opt_new();
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 3221225472;
      v31[2] = ___ZN10PTCCommand12ptc_listKeysEP18SETransceiveHelperP8NSStringPU15__autoreleasingP7NSError_block_invoke;
      v31[3] = &unk_29F290D30;
      v31[4] = &v32;
      if (DERDecodeSequenceWithBlock(&v39, v31))
      {
        v25 = [v12 asHexString];
        _ObjCLogOutError(a3, 0, "ptc_listKeys", @"Invalid listKeys output %@\n", v26, v27, v28, v29, v25);

        v18 = 0;
      }

      else
      {
        v18 = v33[5];
      }

      _Block_object_dispose(&v32, 8);

      goto LABEL_8;
    }

    v14 = [v12 asHexString];
    _ObjCLogOutError(a3, 0, "ptc_listKeys", @"Invalid listKeys output %@\n", v20, v21, v22, v23, v14);
  }

  v18 = 0;
LABEL_8:

LABEL_9:

  return v18;
}

void sub_299F077BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZN10PTCCommand12ptc_listKeysEP18SETransceiveHelperP8NSStringPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x29EDB8DA0] dataWithDERItem:a2 + 8];
  [v2 addObject:v3];

  return 0;
}

uint64_t SEUpdater::PreflightUpdateController::doCommand(SEUpdater::PreflightUpdateController *this, ctu::cf *theString1, const __CFDictionary **a3)
{
  if (CFStringCompare(theString1, @"queryInfo", 0))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    ctu::cf::show(&v46, theString1, v31);
    v32 = std::string::insert(&v46, 0, "Unknown command: ");
    v41 = *v32;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v33 = SERestoreInfo::SEException::SEException(exception, &v41, 2, @"SEUpdaterErrorDomain");
  }

  v4 = objc_autoreleasePoolPush();
  if (objc_opt_class() && objc_opt_class())
  {
    v5 = [MEMORY[0x29EDC5E30] sharedHardwareManager];
    v6 = v5;
    if (!v5)
    {
      v34 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v41, "Couldn't get sharedHardwareManager");
      v35 = SERestoreInfo::SEException::SEException(v34, &v41, 31, @"SEUpdaterErrorDomain");
    }

    v38 = v4;
    v7 = [v5 getHwSupport];
    v8 = v7;
    if (v7 != 2)
    {
      if (v7 == 4)
      {
        v9 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v10 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v9);
        }

        v11 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v10, 2, 0, 1, "doCommand", "HWState returns UnSupported, bailing out\n");
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

LABEL_46:

        goto LABEL_47;
      }

      v15 = 1;
      do
      {
        if (v15 == 11)
        {
          v27 = __cxa_allocate_exception(0x48uLL);
          std::to_string(&v46, v8);
          v28 = std::string::insert(&v46, 0, "Hardware still not in a valid state: ");
          v41 = *v28;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v29 = SERestoreInfo::SEException::SEException(v27, &v41, 31, @"SEUpdaterErrorDomain");
        }

        v16 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v17 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v16);
        }

        v18 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v17, 1, 0, 1, "doCommand", "Attempt %d state %d is not yet ready, sleeping a bit\n", v15, v8);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        usleep(0xF4240u);
        v8 = [v6 queryHardwareSupport:0];
        v19 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v20 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v19);
        }

        v21 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v20, 1, 0, 1, "doCommand", "new state --> %d\n", v8);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        ++v15;
      }

      while (v8 != 2);
    }

    v22 = [v6 secureElements];
    if (![v22 count])
    {
      v36 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v41, "Error getting secure element array");
      v37 = SERestoreInfo::SEException::SEException(v36, &v41, 31, @"SEUpdaterErrorDomain");
    }

    v41.__r_.__value_.__r.__words[0] = 0;
    v41.__r_.__value_.__l.__size_ = &v41;
    v41.__r_.__value_.__r.__words[2] = 0x3812000000;
    v42 = __Block_byref_object_copy__4;
    v43 = __Block_byref_object_dispose__4;
    v44 = 0;
    cf = 0;
    v40[0] = MEMORY[0x29EDCA5F8];
    v40[1] = 3221225472;
    v40[2] = ___ZN9SEUpdater25PreflightUpdateController9doCommandEPK10__CFStringPPK14__CFDictionary_block_invoke;
    v40[3] = &unk_29F290FA8;
    v40[4] = &v41;
    [v22 enumerateObjectsUsingBlock:v40];
    if (*(v41.__r_.__value_.__l.__size_ + 48))
    {
      v39 = *(v41.__r_.__value_.__l.__size_ + 48);
      operator new();
    }

    v23 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v24 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v23);
    }

    v25 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v24, 2, 0, 1, "doCommand", "No personalisable SEs found\n");
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    _Block_object_dispose(&v41, 8);
    if (cf)
    {
      CFRelease(cf);
    }

    v4 = v38;
    goto LABEL_46;
  }

  v12 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v13 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v12);
  }

  v14 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v13, 2, 0, 1, "doCommand", "Can't get weakly linked NFHM class, nothing to personalize\n");
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_47:
  objc_autoreleasePoolPop(v4);
  return 1;
}

void sub_299F080D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Block_object_dispose(va, 8);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v14 + 48));

  _Unwind_Resume(a1);
}

void sub_299F08100(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);

  _Unwind_Resume(a1);
}

void sub_299F08134(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x299F085F0);
}

void sub_299F0815C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_299F08174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Block_object_dispose(va, 8);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v13 + 48));

  JUMPOUT(0x299F086D0);
}

void sub_299F08324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Block_object_dispose(&a19, 8);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v34 + 48));

  JUMPOUT(0x299F086D0);
}

void sub_299F0833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __cxa_free_exception(v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Block_object_dispose(va, 8);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v13 + 48));

  JUMPOUT(0x299F086D0);
}

void sub_299F0834C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (!v33)
  {
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    _Block_object_dispose(&a19, 8);
    ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v35 + 48));

    JUMPOUT(0x299F086D0);
  }

  JUMPOUT(0x299F08180);
}

void sub_299F08374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Block_object_dispose(va, 8);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v12 + 48));

  JUMPOUT(0x299F086D0);
}

void sub_299F0851C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x299F085DCLL);
}

void sub_299F08548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_299F08578(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  JUMPOUT(0x299F086D4);
}

void sub_299F085A0()
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  __cxa_free_exception(v0);
  JUMPOUT(0x299F086D4);
}

void sub_299F0860C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x299F086D4);
}

void sub_299F08624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 105) < 0)
  {
    v27 = *(v25 - 128);
    JUMPOUT(0x299F08644);
  }

  _Unwind_Resume(a1);
}

void sub_299F0864C()
{
  if (*(v0 - 105) < 0)
  {
    operator delete(*(v0 - 128));
  }

  JUMPOUT(0x299F08698);
}

void sub_299F08664(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);

  _Unwind_Resume(a1);
}

void sub_299F0867C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);

  _Unwind_Resume(a1);
}

void sub_299F08694(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_299F086AC(_Unwind_Exception *a1)
{
  if (v2)
  {
    JUMPOUT(0x299F086C4);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 48) = 0;
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN9SEUpdater25PreflightUpdateController9doCommandEPK10__CFStringPPK14__CFDictionary_block_invoke(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a2;
  v8 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v9 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v8);
  }

  v10 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v11 = [v7 info];
  SEUpdaterUtil::SELogObj::printLog(v9, 2, 0, 1, "doCommand_block_invoke", "SE %u personalisable %d\n", a3, [v11 personalisable]);

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = [v7 info];
  v13 = [v12 personalisable];

  if (v13)
  {
    v14 = [v7 info];
    v15 = [v14 manifestQuery];
    v16 = v15;
    v17 = *(*(a1 + 32) + 8);
    if (v15)
    {
      CFRetain(v15);
    }

    v18 = *(v17 + 48);
    *(v17 + 48) = v16;
    if (v18)
    {
      CFRelease(v18);
    }

    if (!*(*(*(a1 + 32) + 8) + 48))
    {
      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(v21, "Got personalisable SE with nil manifestQuery?!");
      v20 = SERestoreInfo::SEException::SEException(exception, v21, 31, @"SEUpdaterErrorDomain");
    }

    *a4 = 1;
  }
}

void sub_299F088F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::PreflightUpdateController::~PreflightUpdateController(SEUpdater::PreflightUpdateController *this)
{
  SEUpdater::UpdateControllerBase::~UpdateControllerBase(this);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SERestoreInfo::IcefallDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20286F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void sub_299F08B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_299F08BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_299F08CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_299F08D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_299F08E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_299F08EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_299F08FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_299F09070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SERestoreInfo::BLOB::~BLOB(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

__CFDictionary *SERestoreInfo::SEDeviceInfo::createDict(SERestoreInfo::SEDeviceInfo *this, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    __cxa_allocate_exception(0x48uLL);
    operator new();
  }

  v5 = Mutable;
  (*(*this + 24))(this, Mutable, a2);
  v6 = MGGetProductType();
  if (v6 <= 1625491064)
  {
    if (v6 <= 347088859)
    {
      if (v6 == -1)
      {
        goto LABEL_17;
      }

      v7 = 248718555;
    }

    else
    {
      if (v6 == 347088860 || v6 == 861924853)
      {
        goto LABEL_17;
      }

      v7 = 1260109173;
    }

LABEL_16:
    if (v6 != v7)
    {
      return v5;
    }

    goto LABEL_17;
  }

  if (v6 > 2443002097)
  {
    if (v6 == 2443002098 || v6 == 4018315120)
    {
      goto LABEL_17;
    }

    v7 = 3564012492;
    goto LABEL_16;
  }

  if (v6 != 1625491065 && v6 != 1747059280)
  {
    v7 = 2390434178;
    goto LABEL_16;
  }

LABEL_17:
  LODWORD(valuePtr) = 56;
  v8 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v8)
  {
    __assert_rtn("_CFDictionarySetInteger32", "SERestoreInfoHelpers.hpp", 42, "num != nullptr");
  }

  v9 = v8;
  CFDictionarySetValue(v5, @"SE,ChipID", v8);
  CFRelease(v9);
  return v5;
}

uint64_t SERestoreInfo::SEException::SEException(uint64_t a1, __int128 *a2, int a3, CFTypeRef cf)
{
  v27[2] = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A2028748;
  *(a1 + 8) = 0;
  v7 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v8 = (a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *v8 = v9;
  }

  *(a1 + 64) = a3;
  if (cf)
  {
    v10 = CFRetain(cf);
    a3 = *(a1 + 64);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 56) = v10;
  std::to_string(&v24, a3);
  v11 = std::string::insert(&v24, 0, "(");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v25, ") ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a1 + 55);
  if (v15 >= 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(a1 + 32);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 55);
  }

  else
  {
    v17 = *(a1 + 40);
  }

  v18 = std::string::append(&v26, v16, v17);
  v19 = v18->__r_.__value_.__r.__words[0];
  v27[0] = v18->__r_.__value_.__l.__size_;
  *(v27 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
  v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*v7);
  }

  v21 = v27[0];
  *(a1 + 8) = v19;
  *(a1 + 16) = v21;
  *(a1 + 23) = *(v27 + 7);
  *(a1 + 31) = v20;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_299F094E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

SERestoreInfo::SEException *SERestoreInfo::SEException::SEException(SERestoreInfo::SEException *this, CFErrorRef err)
{
  v34[2] = *MEMORY[0x29EDCA608];
  *this = &unk_2A2028748;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = CFErrorCopyDescription(err);
  v6 = v5;
  if (v5)
  {
    Length = CFStringGetLength(v5);
    usedBufLen.__r_.__value_.__r.__words[0] = 0;
    v35.location = 0;
    v35.length = Length;
    Bytes = CFStringGetBytes(v6, v35, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (!usedBufLen.__r_.__value_.__r.__words[0] || !Bytes)
    {
LABEL_21:
      CFRelease(v6);
      goto LABEL_22;
    }

    std::vector<unsigned char>::vector[abi:ne200100](&__p, usedBufLen.__r_.__value_.__l.__data_);
    v36.location = 0;
    v36.length = Length;
    if (!CFStringGetBytes(v6, v36, 0x8000100u, 0, 0, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0], 0))
    {
LABEL_19:
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_21;
    }

    size = __p.__r_.__value_.__l.__size_;
    v9 = __p.__r_.__value_.__r.__words[0];
    v11 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
    v12 = *(this + 55);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v14 = *(this + 6);
      v13 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v13 >= v11)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_13;
      }

      v12 = *(this + 5);
    }

    else
    {
      if (v11 <= 0x16)
      {
LABEL_11:
        v15 = this + 32;
LABEL_15:
        while (v9 != size)
        {
          v16 = *v9++;
          *v15++ = v16;
        }

        *v15 = 0;
        if (*(this + 55) < 0)
        {
          *(this + 5) = v11;
        }

        else
        {
          *(this + 55) = v11 & 0x7F;
        }

        goto LABEL_19;
      }

      v13 = 22;
    }

    std::string::__grow_by((this + 32), v13, v11 - v13, v12, 0, v12, 0);
    *(this + 5) = 0;
    if ((*(this + 55) & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v15 = *(this + 4);
    goto LABEL_15;
  }

LABEL_22:
  *(this + 16) = CFErrorGetCode(err);
  Domain = CFErrorGetDomain(err);
  if (Domain)
  {
    Domain = CFRetain(Domain);
  }

  *(this + 7) = Domain;
  std::to_string(&v31, *(this + 16));
  v18 = std::string::insert(&v31, 0, "CF=(");
  v19 = *&v18->__r_.__value_.__l.__data_;
  usedBufLen.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&usedBufLen.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&usedBufLen, ") ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(this + 55);
  if (v22 >= 0)
  {
    v23 = this + 32;
  }

  else
  {
    v23 = *(this + 4);
  }

  if (v22 >= 0)
  {
    v24 = *(this + 55);
  }

  else
  {
    v24 = *(this + 5);
  }

  v25 = std::string::append(&__p, v23, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  v34[0] = v25->__r_.__value_.__l.__size_;
  *(v34 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*v4);
  }

  v28 = v34[0];
  *(this + 1) = v26;
  *(this + 2) = v28;
  *(this + 23) = *(v34 + 7);
  *(this + 31) = v27;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(usedBufLen.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(usedBufLen.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_299F097FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void SERestoreInfo::SEException::~SEException(std::exception *this)
{
  this->__vftable = &unk_2A2028748;
  v2 = this[7].__vftable;
  if (v2)
  {
    CFRelease(v2);
    this[7].__vftable = 0;
  }

  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  SERestoreInfo::SEException::~SEException(this);

  JUMPOUT(0x29C2B5F30);
}

uint64_t SERestoreInfo::SEFirmwareBase::get(SERestoreInfo::SEFirmwareBase *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *(this + 2), a2 >= ((*(this + 3) - v2) >> 5)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, "Assertion: ");
    v5 = std::string::append(&v7, "index>=0 && index<fObjs.size()");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v8);
  }

  v8 = *(v2 + 32 * a2 + 8);
  return (*(*this + 24))(this, &v8);
}

void sub_299F099C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

SERestoreInfo::SEFirmwareBase *SERestoreInfo::SEFirmwareBase::SEFirmwareBase(SERestoreInfo::SEFirmwareBase *this, CFDataRef theData)
{
  *this = &unk_2A2028788;
  *(this + 2) = 0;
  v4 = (this + 16);
  *(this + 3) = 0;
  *(this + 4) = 0;
  v37 = 0;
  v35[0] = CFDataGetBytePtr(theData);
  v35[1] = CFDataGetLength(theData);
  v5 = DERParseSequence(v35, 2u, &SEFirmwareDERSpec::SEFirmwareItemSpec, v38, 0x20uLL);
  if (v5)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v40, "Fail to parse SEFW.");
    v22 = SERestoreInfo::SEException::SEException(exception, &v40, v5, @"libDERErrorDomain");
  }

  __val = 0;
  v6 = DERParseInteger(v38, &__val);
  if (v6)
  {
    v23 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v40, "Failed to parse SEFirmware.version.");
    v24 = SERestoreInfo::SEException::SEException(v23, &v40, v6, @"libDERErrorDomain");
  }

  if (__val >= 2)
  {
    v25 = __cxa_allocate_exception(0x48uLL);
    std::to_string(&v30, __val);
    v26 = std::string::insert(&v30, 0, "Unsupported firmware version: ");
    v40 = *v26;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v27 = SERestoreInfo::SEException::SEException(v25, &v40, 7, @"SEUpdaterErrorDomain");
  }

  v7 = DERDecodeSeqInit(&v39, &v37, v36);
  if (v7)
  {
    v28 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v40, "Fail to DERDecodeSeqInit firmwareArray.");
    v29 = SERestoreInfo::SEException::SEException(v28, &v40, v7, @"libDERErrorDomain");
  }

  while (!v7)
  {
    v7 = DERDecodeSeqNext(v36, &v32);
    if (!v7)
    {
      v30.__r_.__value_.__r.__words[0] = &unk_2A2027230;
      *&v30.__r_.__value_.__r.__words[1] = v33;
      v31 = 0;
      v8 = *(this + 3);
      v9 = *(this + 4);
      if (v8 >= v9)
      {
        v12 = (v8 - *v4) >> 5;
        v13 = v12 + 1;
        if ((v12 + 1) >> 59)
        {
          std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - *v4;
        if (v14 >> 4 > v13)
        {
          v13 = v14 >> 4;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        v42 = v4;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(v4, v15);
        }

        v16 = 32 * v12;
        v40.__r_.__value_.__r.__words[0] = 0;
        v40.__r_.__value_.__l.__size_ = v16;
        v41 = 0;
        *v16 = &unk_2A2027230;
        v17 = *&v30.__r_.__value_.__r.__words[1];
        *(v16 + 24) = v31;
        *(v16 + 8) = v17;
        v40.__r_.__value_.__r.__words[2] = 32 * v12 + 32;
        std::vector<SERestoreInfo::BLOB>::__swap_out_circular_buffer(v4, &v40);
        v11 = *(this + 3);
        std::__split_buffer<SERestoreInfo::BLOB>::~__split_buffer(&v40);
      }

      else
      {
        *v8 = &unk_2A2027230;
        v10 = *&v30.__r_.__value_.__r.__words[1];
        *(v8 + 24) = v31;
        *(v8 + 8) = v10;
        v11 = v8 + 32;
      }

      *(this + 3) = v11;
      SERestoreInfo::BLOB::~BLOB(&v30);
    }
  }

  if (v7 != 1)
  {
    v19 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v40, "Fail to DERDecodeSeqNext firmwareArray.");
    v20 = SERestoreInfo::SEException::SEException(v19, &v40, v7, @"libDERErrorDomain");
  }

  *(this + 1) = CFRetain(theData);
  return this;
}

void sub_299F09E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v26 - 105) < 0)
  {
    operator delete(*(v26 - 128));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void SERestoreInfo::SEFirmwareBase::updateMeasurementDict(SERestoreInfo::SEFirmwareBase *this, uint64_t a2, uint64_t a3)
{
  v3 = (*(this + 3) - *(this + 2)) >> 5;
  if (!v3)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    SERestoreInfo::SEFirmwareBase::get(this, v8);
    if (!*a3)
    {
      goto LABEL_7;
    }

    v9 = v16;
    (*(**a3 + 16))(__p);
    v10 = (*(*v9 + 32))(v9, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v10)
    {
LABEL_7:
      __p[0] = 0;
      (*(*v16 + 16))(v16, a2, __p);
      if (__p[0])
      {
        exception = __cxa_allocate_exception(0x48uLL);
        v12 = SERestoreInfo::SEException::SEException(exception, __p[0]);
      }

      v7 = 1;
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    ++v8;
  }

  while (v3 != v8);
  if ((v7 & 1) == 0)
  {
LABEL_15:
    v13 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Cannot found any matched delivery object");
    v14 = SERestoreInfo::SEException::SEException(v13, __p, 24, @"SEUpdaterErrorDomain");
  }
}

void sub_299F0A0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdaterUtil::SELogObj::SELogObj(SEUpdaterUtil::SELogObj *this)
{
  v2 = dispatch_queue_create("SELogObj", 0);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 3) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 11) = 0;
  operator new();
}

void *SEUpdaterUtil::SELogObj::_defaultLogFunc(SEUpdaterUtil::SELogObj *this, char *__s, const char *a3)
{
  v4 = strlen(__s);
  v5 = MEMORY[0x29EDC93C8];

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __s, v4);
}

void sub_299F0A4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  _Unwind_Resume(a1);
}

void boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::destroy(char **a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[4];
  v5 = *a1;
  v6 = v3 - v2;
  v7 = &v5[v4 - v3];
  if (v6 <= v4)
  {
    v4 = v7;
  }

  a1[2] = &v4[v2];
  if (v5)
  {
    operator delete(v5);
  }
}

void std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

uint64_t std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x29C2B5F30);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t SEUpdaterUtil::Img4EncodeCallAndThrow(uint64_t this, const char *a2, const char *a3)
{
  if (this != 100)
  {
    v7 = this;
    exception = __cxa_allocate_exception(0x48uLL);
    v5 = strlen(a2);
    std::string::__init(&v8, a2, v5);
    v6 = SERestoreInfo::SEException::SEException(exception, &v8, v7, @"libImage4Encode");
  }

  return this;
}

void sub_299F0A6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SEUpdaterUtil::SN300VImage4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN300VImage4Signer::getSigningKey(void)const::signingKey, &SEUpdaterUtil::SN300VImage4Signer::getSigningCert(void)const::signingCert, 167);
}

uint64_t SEUpdaterUtil::SN300VImage4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN300VImage4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil18SN300VImage4SignerE", 798);
}

void SEUpdaterUtil::SN300VImage4Signer::~SN300VImage4Signer(SEUpdaterUtil::SN300VImage4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

uint64_t SEUpdaterUtil::SEImage4Signer::sign@<X0>(const __CFDictionary **a1@<X0>, void *a2@<X8>)
{
  ctu::cf::dict_adapter::dict_adapter(v5, *a1);
  ctu::cf::MakeCFString::MakeCFString(&v6, "SE,ChipID");
  Int = ctu::cf::map_adapter::getInt(v5, v6);
  MEMORY[0x29C2B5A10](&v6);
  if (Int > 99)
  {
    if (Int > 199)
    {
      if (Int == 200)
      {
        operator new();
      }

      if (Int == 210)
      {
        operator new();
      }
    }

    else
    {
      if (Int == 100)
      {
        operator new();
      }

      if (Int == 115)
      {
        operator new();
      }
    }
  }

  else if (Int > 54)
  {
    if (Int == 55)
    {
      operator new();
    }

    if (Int == 56)
    {
      operator new();
    }
  }

  else
  {
    if (Int == 44)
    {
      operator new();
    }

    if (Int == 54)
    {
      operator new();
    }
  }

  *a2 = 0;
  return MEMORY[0x29C2B5A30](v5);
}

void sub_299F0AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  std::unique_ptr<SEUpdaterUtil::P73Image4Signer>::~unique_ptr[abi:ne200100]((v6 - 40));
  MEMORY[0x29C2B5A30](v6 - 56);
  _Unwind_Resume(a1);
}

void SEUpdaterUtil::SEImage4Signer::signInternal(CFDataRef *a1, void **a2, CFDictionaryRef *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = std::string::basic_string[abi:ne200100]<0>(v45, "Assertion: ");
    v25 = std::string::append(v24, "requestDict");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v38 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, __p);
  }

  *a1 = 0;
  valuePtr = 0;
  v44 = 0;
  v7 = a2 + 1;
  v42 = 0;
  if (a2 + 1 != a3)
  {
    CFRetain(v3);
    v8 = *v7;
    *v7 = v3;
    __p[0] = v8;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(__p);
  }

  v9 = (*(*a2 + 4))(a2);
  (*(*a2 + 5))(v45, a2);
  (*(*a2 + 6))(&v40, a2);
  LODWORD(__p[0]) = v9;
  v38 = 0;
  v39 = 0;
  __p[1] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p[1], v40, v41, v41 - v40);
  Value = CFDictionaryGetValue(*a3, @"SE,ChipID");
  if (!Value)
  {
    v12 = 0;
    SEUpdaterUtil::_AddError(0x1D, 1, "signInternal", "Missing SE,ChipID in request dictionary", v11);
    goto LABEL_15;
  }

  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Assertion: ");
    v28 = std::string::append(&v34, "CFNumberGetValue(tmp, kCFNumberSInt32Type, (void *)&chipID)");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v36 = v28->__r_.__value_.__r.__words[2];
    *v35 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v27, v35);
  }

  RootCA::getRootKeyId(0, valuePtr, v35);
  v12 = v35[0];
  v13 = v35[1];
  v34.__r_.__value_.__r.__words[0] = CFDictionaryGetValue(*a3, @"SE,RootKeyIdentifier");
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(v35, &v34.__r_.__value_.__l.__data_);
  v15 = v42;
  v16 = v35[0];
  v42 = v35[0];
  v35[0] = v15;
  if (v15)
  {
    CFRelease(v15);
    v16 = v42;
  }

  if (!v16)
  {
    v21 = "Missing SE,RootKeyIdentifier in request dictionary";
LABEL_39:
    SEUpdaterUtil::_AddError(0x1D, 1, "signInternal", v21, v14, v32, v33);
    goto LABEL_15;
  }

  BytePtr = CFDataGetBytePtr(v16);
  v18 = CFDataGetBytePtr(v42);
  Length = CFDataGetLength(v42);
  v20 = (v13 - v12);
  if (v13 - v12 == &v18[Length] - BytePtr && !memcmp(v12, BytePtr, v20))
  {
    v32 = a2;
    v33 = __p;
    if (Img4EncodeCreateManifest() == 100)
    {
      v21 = "manifest is null or zero manifesetLen";
      if (v44 && HIDWORD(valuePtr))
      {
        v22 = CFDataCreate(0, v44, HIDWORD(valuePtr));
        *a1 = v22;
        if (v22)
        {
          goto LABEL_15;
        }

        v21 = "failed to CFDataCreate for manifest data";
      }
    }

    else
    {
      v21 = "failed to Img4EncodeCreateManifest";
    }

    goto LABEL_39;
  }

  ctu::cf::show(1, v42, v20);
  if (v36 >= 0)
  {
    v31 = v35;
  }

  else
  {
    v31 = v35[0];
  }

  SEUpdaterUtil::_AddError(0x1D, 1, "signInternal", "KeyID %s is not localCA!", v30, v31);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

LABEL_15:
  if (v44)
  {
    free(v44);
    v44 = 0;
  }

  if (__p[1])
  {
    v38 = __p[1];
    operator delete(__p[1]);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v12)
  {
    operator delete(v12);
  }
}

void sub_299F0B198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v35 = *(v33 - 88);
  if (v35)
  {
    *(v33 - 80) = v35;
    operator delete(v35);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v33 - 112));
  if (v32)
  {
    operator delete(v32);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v31);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SEUpdaterUtil::P73Image4Signer>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_2A20288A0;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v2 + 8));
    MEMORY[0x29C2B5F30](v2, 0xE1C40D30581F4);
  }

  return a1;
}

uint64_t SEUpdaterUtil::manifestPropertiesCallback(SEUpdaterUtil *this, unsigned __int8 **a2, unsigned int *a3, void *a4)
{
  if (!a2 || !this || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Assertion: ");
    v6 = std::string::append(&v8, "context && outdata && outlength");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v9);
  }

  (*(*a3 + 16))(a3, this, a2, a4);
  return 100;
}

void sub_299F0B468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t SEUpdaterUtil::objectPropertiesCallback(SEUpdaterUtil *this, unsigned __int8 **a2, unsigned int *a3, void *a4)
{
  if (!a2 || !this || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Assertion: ");
    v6 = std::string::append(&v8, "context && outdata && outlength");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v9);
  }

  (*(*a3 + 24))(a3, this, a2, a4);
  return 100;
}

void sub_299F0B5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t SEUpdaterUtil::_createDataSignature(SEUpdaterUtil *this, uint64_t a2, const unsigned __int8 *a3, void *a4, unsigned __int8 **a5, unint64_t *a6, void *a7)
{
  if (!a6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Assertion: ");
    v21 = std::string::append(&v34, "context");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v35);
  }

  if (!a4 || !a5)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Assertion: ");
    v24 = std::string::append(&v34, "outDataSignature && outDataSignatureLength");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v23, &v35);
  }

  if (!a2 || !a3)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Assertion: ");
    v27 = std::string::append(&v34, "dataToSign && dataToSignLength");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v26, &v35);
  }

  v9 = *a6;
  if (*a6 == 2)
  {
    v16 = a6[1];
    v17 = a6[2];
    SignatureSha512 = AMSupportEcDsaCreateSignatureSha512();
  }

  else if (v9 == 1)
  {
    v14 = a6[1];
    v15 = a6[2];
    SignatureSha512 = AMSupportEcDsaCreateSignatureSha384();
  }

  else
  {
    if (v9)
    {
      v31 = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v34, *a6);
      v32 = std::string::insert(&v34, 0, "Unknown algorithm ");
      v35 = *v32;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v33 = SERestoreInfo::SEException::SEException(v31, &v35, 29, @"SEUpdaterErrorDomain");
    }

    v10 = a6[1];
    v11 = a6[2];
    SignatureSha512 = AMSupportEcDsaCreateSignatureSha256();
  }

  v18 = SignatureSha512;
  if (SignatureSha512)
  {
    SEUpdaterUtil::_AddError(0x1D, 1, "_createDataSignature", "Failed to sign: %d", v13, SignatureSha512);
    return v18;
  }

  if (!*a4)
  {
    v29 = "*outDataSignature is nullptr";
LABEL_23:
    SEUpdaterUtil::_AddError(0x1D, 1, "_createDataSignature", v29, v13);
    return 0;
  }

  if (!*a5)
  {
    v29 = "*outDataSignatureLength is 0";
    goto LABEL_23;
  }

  return 100;
}

void sub_299F0B950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdaterUtil::SEImage4Signer::doManifestPropertiesCB(CFDictionaryRef *this, unsigned __int8 **a2, unsigned int *a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v43, "Assertion: ");
    v17 = std::string::append(&v43, "outdata && outlength");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v45 = v17->__r_.__value_.__r.__words[2];
    v44 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v44);
  }

  v42 = 0;
  valuePtr = 0;
  if (Img4EncodeItemBegin() != 100)
  {
    v29 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to Img4EncodeItemBegin");
    v30 = SERestoreInfo::SEException::SEException(v29, &v44, 29, @"SEUpdaterErrorDomain");
  }

  Value = CFDictionaryGetValue(this[1], @"SE,ChipID");
  if (!Value)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v43, "Assertion: ");
    v20 = std::string::append(&v43, "tmpNum");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v45 = v20->__r_.__value_.__r.__words[2];
    v44 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v19, &v44);
  }

  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v43, "Assertion: ");
    v23 = std::string::append(&v43, "CFNumberGetValue(tmpNum, kCFNumberSInt32Type, (void*)&tmpValue)");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v45 = v23->__r_.__value_.__r.__words[2];
    v44 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v22, &v44);
  }

  v5 = Img4EncodeItemPropertyInt32();
  if (v5 != 100)
  {
    v31 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to add chip ID");
    v32 = SERestoreInfo::SEException::SEException(v31, &v44, v5, @"libImage4Encode");
  }

  v6 = CFDictionaryGetValue(this[1], @"SE,ID");
  v7 = v6;
  if (!v6 || (v8 = CFGetTypeID(v6), v8 != CFDataGetTypeID()))
  {
    v25 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to get SEID from the request");
    v26 = SERestoreInfo::SEException::SEException(v25, &v44, 29, @"SEUpdaterErrorDomain");
  }

  CFDataGetBytePtr(v7);
  CFDataGetLength(v7);
  v9 = Img4EncodeItemPropertyData();
  if (v9 != 100)
  {
    v33 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to add SEID");
    v34 = SERestoreInfo::SEException::SEException(v33, &v44, v9, @"libImage4Encode");
  }

  v10 = CFDictionaryGetValue(this[1], @"SE,Nonce");
  v11 = v10;
  if (!v10 || (v12 = CFGetTypeID(v10), v12 != CFDataGetTypeID()))
  {
    v27 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to get Nonce from the request");
    v28 = SERestoreInfo::SEException::SEException(v27, &v44, 100, @"libImage4Encode");
  }

  CFDataGetBytePtr(v11);
  CFDataGetLength(v11);
  v13 = Img4EncodeItemPropertyData();
  if (v13 != 100)
  {
    v35 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to add Nonce");
    v36 = SERestoreInfo::SEException::SEException(v35, &v44, v13, @"libImage4Encode");
  }

  v14 = Img4EncodeItemEnd();
  if (v14 != 100)
  {
    v37 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to Img4EncodeItemEnd");
    v38 = SERestoreInfo::SEException::SEException(v37, &v44, v14, @"libImage4Encode");
  }

  v15 = Img4EncodeItemCopyBuffer();
  if (v15 != 100)
  {
    v39 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v44, "Fail to Img4EncodeItemCopyBuffer");
    v40 = SERestoreInfo::SEException::SEException(v39, &v44, v15, @"libImage4Encode");
  }

  SEUpdaterUtil::SEImg4EncodeContext::~SEImg4EncodeContext(&v42);
}

void sub_299F0C014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  SEUpdaterUtil::SEImg4EncodeContext::~SEImg4EncodeContext(&a11);
  _Unwind_Resume(a1);
}

void sub_299F0C260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SETransceiveHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_299F0C4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_299F0C78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_299F0CE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v32 - 144) = &unk_2A2026DD8;
  v34 = *(v32 - 128);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

void sub_299F0D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_299F0D814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

void sub_299F0DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void sub_299F0DFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  *(v13 - 56) = &unk_2A2026DD8;
  v15 = *(v13 - 40);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_299F0E21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_299F0E4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_299F0E8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdater::CommandCRSRetrieveSEPK::~CommandCRSRetrieveSEPK(SEUpdater::CommandCRSRetrieveSEPK *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void sub_299F0EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t SEUpdaterUtil::P73Image4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *&v6[15] = *MEMORY[0x29EDCA608];
  v4[4] = xmmword_299F2CE71;
  v4[5] = unk_299F2CE81;
  *v5 = xmmword_299F2CE91;
  *&v5[9] = *(&xmmword_299F2CE91 + 9);
  v4[0] = xmmword_299F2CE31;
  v4[1] = unk_299F2CE41;
  v4[2] = xmmword_299F2CE51;
  v4[3] = unk_299F2CE61;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, v4, v6, 121);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F0EEFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t SEUpdaterUtil::P73Image4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  memcpy(__dst, &unk_299F2CEAA, sizeof(__dst));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, __dst, &v6, 622);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F0EF98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SEUpdaterUtil::P73Image4Signer::~P73Image4Signer(SEUpdaterUtil::P73Image4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdaterUtil::JCOPConfigManager::initCurrentJCOPDeviceInfo(SEUpdaterUtil::JCOPConfigManager *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SEConfiguration = SERestoreInfo::P73BaseDeviceInfo::getSEConfiguration(v2);
  if (SEConfiguration >= 3)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Unsupported SE key type");
    v8 = SERestoreInfo::SEException::SEException(exception, &v11, 2, @"SEUpdaterErrorDomain");
  }

  *(this + 56) = 0x20401u >> (8 * SEConfiguration);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = *(*(this + 3) + 56);
  if (v5 > 99)
  {
    if (v5 > 199)
    {
      if (v5 == 200)
      {
        v6 = 4;
        goto LABEL_25;
      }

      if (v5 == 210)
      {
        v6 = 8;
        goto LABEL_25;
      }
    }

    else
    {
      if (v5 == 100)
      {
        v6 = 2;
        goto LABEL_25;
      }

      if (v5 == 115)
      {
        v6 = 1;
        goto LABEL_25;
      }
    }

LABEL_27:
    v9 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Unsupported chip ID");
    v10 = SERestoreInfo::SEException::SEException(v9, &v11, 2, @"SEUpdaterErrorDomain");
  }

  if (v5 > 54)
  {
    if (v5 == 55)
    {
      v6 = 32;
      goto LABEL_25;
    }

    if (v5 == 56)
    {
      v6 = 128;
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v5 == 44)
  {
    v6 = 16;
    goto LABEL_25;
  }

  if (v5 != 54)
  {
    goto LABEL_27;
  }

  v6 = 64;
LABEL_25:
  *(this + 29) = v6;
}

void sub_299F0F1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdaterUtil::JCOPConfigManager::performOSUJCOPConfigs(SEUpdaterUtil::JCOPConfigManager *this)
{
  *&v15[4] = *MEMORY[0x29EDCA608];
  v13 = 0x412A00004143;
  v14 = 16734;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<SEUpdaterUtil::JCOPConfigItem>::__init_with_size[abi:ne200100]<SEUpdaterUtil::JCOPConfigItem const*,SEUpdaterUtil::JCOPConfigItem const*>(&v10, &v13, v15, 3uLL);
  v2 = v10;
  v3 = v11;
  if (v10 != v11)
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      std::string::basic_string[abi:ne200100]<0>(__p, &str_50);
      v6 = SEUpdaterUtil::JCOPConfigManager::performJCOPConfig(this, v5, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v4 |= v6;
      ++v2;
    }

    while (v2 != v3);
    if (v4)
    {
      (*(**(this + 1) + 48))(*(this + 1), 0);
    }
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_299F0F340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SEUpdaterUtil::JCOPConfigManager::performJCOPConfig(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v50[5] = *MEMORY[0x29EDCA608];
  SEUpdaterUtil::JCOPConfig::Triggers(&__p);
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_17;
  }

  v6 = vcnt_s8(__p.__r_.__value_.__r.__words[1]);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2;
    if (__p.__r_.__value_.__l.__size_ <= a2)
    {
      v7 = a2 % LODWORD(__p.__r_.__value_.__r.__words[1]);
    }
  }

  else
  {
    v7 = (LODWORD(__p.__r_.__value_.__r.__words[1]) - 1) & a2;
  }

  v8 = *(__p.__r_.__value_.__r.__words[0] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v36, "Failed to get JCOP Config Trigger, invalid item type");
    v12 = SERestoreInfo::SEException::SEException(exception, &v36, 2, @"SEUpdaterErrorDomain");
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == a2)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= __p.__r_.__value_.__l.__size_)
      {
        v10 %= __p.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v10 &= __p.__r_.__value_.__l.__size_ - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_17;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (*(v9 + 4) != a2)
  {
    goto LABEL_16;
  }

  SEUpdaterUtil::JCOPConfig::Trigger::Trigger(v37, (v9 + 3));
  std::__hash_table<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::__unordered_map_hasher<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::hash<SEUpdaterUtil::JCOPConfigItem>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,true>,std::__unordered_map_equal<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,std::hash<SEUpdaterUtil::JCOPConfigItem>,true>,std::allocator<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>>>::__deallocate_node(__p.__r_.__value_.__r.__words[2]);
  v13 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a3 + 8))
    {
      goto LABEL_24;
    }
  }

  else if (!*(a3 + 23))
  {
LABEL_24:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__s.__r_.__value_.__l.__size_)
      {
        goto LABEL_29;
      }

      std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      v14 = 0;
    }

    else
    {
      if (*(&__s.__r_.__value_.__s + 23))
      {
        v14 = 0;
        __p = __s;
        goto LABEL_33;
      }

LABEL_29:
      v15 = *(*(a1 + 24) + 56);
      v16 = *(a1 + 48);
      v34 = *(a1 + 40);
      v35 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v36) = v15;
      if (!v45)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v45 + 48))(&__p);
      v14 = 1;
    }

LABEL_33:
    std::string::operator=(a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v14)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!v14)
      {
        goto LABEL_39;
      }

LABEL_37:
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }
  }

  if ((v40 & *(a1 + 58)) == 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  v17 = v47;
  if (!v47)
  {
    goto LABEL_46;
  }

  v18 = *(a1 + 32);
  *&v36 = *(a1 + 24);
  *(&v36 + 1) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    v17 = v47;
    if (!v47)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  v19 = (*(*v17 + 48))(v17, &v36);
  if (*(&v36 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
  }

  if (v19)
  {
LABEL_46:
    if ((v41 & *(a1 + 56)) != 0)
    {
      v20 = *(*(a1 + 24) + 184);
      if (v42 <= v20 && v20 != -1)
      {
        SEUpdaterUtil::JCOPConfigManager::checkIsConfigured(a1, v37);
      }

      v28 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v29 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v28);
      }

      v23 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v30 = v38;
      if (v39 < 0)
      {
        v30 = v38[0];
      }

      SEUpdaterUtil::SELogObj::printLog(v29, 1, 0, 1, "checkPreCondition", "Skip configuring %s: Train not supported, JCOP version low\n", v30);
    }

    else
    {
      v25 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v26 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v25);
      }

      v23 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v27 = v38;
      if (v39 < 0)
      {
        v27 = v38[0];
      }

      SEUpdaterUtil::SELogObj::printLog(v26, 1, 0, 1, "checkPreCondition", "Skip configuring %s: SE key not supported\n", v27);
    }
  }

  else
  {
LABEL_50:
    v21 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v22 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v21);
    }

    v23 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v24 = v38;
    if (v39 < 0)
    {
      v24 = v38[0];
    }

    SEUpdaterUtil::SELogObj::printLog(v22, 1, 0, 1, "checkPreCondition", "Skip configuring %s: JCOP platform not supported\n", v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::~__hash_table(v50);
  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&v49);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::~__hash_table(&v48);
  std::__function::__value_func<BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::~__value_func[abi:ne200100](&v46);
  std::__function::__value_func<std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::~__value_func[abi:ne200100](&v44);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  v31 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_299F0FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  SEUpdaterUtil::JCOPConfig::Trigger::~Trigger(&a31);
  _Unwind_Resume(a1);
}

void SEUpdaterUtil::JCOPConfigManager::checkIsConfigured(uint64_t a1, uint64_t a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::find<unsigned char>((a2 + 176), *(a1 + 56));
  if (v2)
  {
    v3 = v2[5];
    v9 = v2[4];
    v10 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
    }

    v8 = &unk_2A2026FC0;
    v4 = *(v2 + 4);
    v11 = *(v2 + 3);
    v12 = v4;
    SERestoreInfo::Apdu::Apdu(&v7);
  }

  exception = __cxa_allocate_exception(0x48uLL);
  std::string::basic_string[abi:ne200100]<0>(&v13, "Failed to get commnand get-config, invalid se key");
  v6 = SERestoreInfo::SEException::SEException(exception, &v13, 2, @"SEUpdaterErrorDomain");
}

void sub_299F104B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (*(v21 - 73) < 0)
  {
    operator delete(*(v21 - 96));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdaterUtil::JCOPConfig::Trigger::~Trigger(void **this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::~__hash_table((this + 27));
  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table((this + 22));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::~__hash_table((this + 17));
  std::__function::__value_func<BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::~__value_func[abi:ne200100]((this + 13));
  std::__function::__value_func<std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::~__value_func[abi:ne200100]((this + 9));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void SEUpdaterUtil::JCOPConfig::Triggers(SEUpdaterUtil::JCOPConfig *this)
{
  v1 = MEMORY[0x2A1C7C4A8](this);
  v25[228] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A197EED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A197EED0))
  {
    xmmword_2A197F1B0 = 0u;
    *&qword_2A197F1C0 = 0u;
    dword_2A197F1D0 = 1065353216;
    __cxa_guard_release(&qword_2A197EED0);
  }

  if (!qword_2A197F1C8)
  {
    v13 = 16707;
    std::string::basic_string[abi:ne200100]<0>(&v14, "SIMDetectGPIO_4143");
    v15 = 257;
    v16 = 1;
    v17 = 80;
    v18 = 5;
    v19 = 0;
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v23[0] = &unk_2A20289A0;
    v23[3] = v23;
    v24[0] = &unk_2A2028A30;
    v24[3] = v24;
    std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100]<true,0>(v11, &xmmword_2A197EEE0, &qword_2A197F030);
    std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100]<true,0>(v12, &xmmword_2A197EEF8, &qword_2A197F048);
    std::unordered_map<std::string,std::vector<unsigned char>>::unordered_map(v25, v11, 2);
    v8 = unk_299F2D93D;
    v9 = xmmword_299F2D94D;
    *v10 = unk_299F2D95D;
    *&v10[15] = unk_299F2D96C;
    v5 = xmmword_299F2D90D;
    v6 = unk_299F2D91D;
    v7 = xmmword_299F2D92D;
    SERestoreInfo::CApdu::CApdu(&v4);
  }

  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = dword_2A197F1D0;
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__rehash<true>(v1, *(&xmmword_2A197F1B0 + 1));
  for (i = qword_2A197F1C0; i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::__unordered_map_hasher<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::hash<SEUpdaterUtil::JCOPConfigItem>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,true>,std::__unordered_map_equal<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,std::hash<SEUpdaterUtil::JCOPConfigItem>,true>,std::allocator<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>>>::__emplace_unique_key_args<SEUpdaterUtil::JCOPConfigItem,std::pair<SEUpdaterUtil::JCOPConfigItem const,SEUpdaterUtil::JCOPConfig::Trigger> const&>(v1, *(i + 16));
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_299F14984(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xFFF]) < 0)
  {
    operator delete(STACK[0xFE8]);
  }

  SEUpdaterUtil::JCOPConfig::Trigger::~Trigger(&STACK[0x1340]);
  v6 = -128;
  v7 = v1;
  do
  {
    v7 = std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::~pair(v7) - 64;
    v6 += 64;
  }

  while (v6);
  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0x3E8]);
  v8 = &STACK[0x1138];
  v9 = &STACK[0x1128];
  v10 = -128;
  while (1)
  {
    *(v8 - 2) = &unk_2A2026DD8;
    if (*v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*v8);
    }

    v8 -= 8;
    v9 -= 8;
    v10 += 64;
    if (!v10)
    {
      STACK[0x378] = &unk_2A2026DD8;
      if (STACK[0x388])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x388]);
      }

      STACK[0x3B0] = &unk_2A2026DD8;
      if (STACK[0x3C0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3C0]);
      }

      std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0x480]);
      v11 = &STACK[0x11B8];
      v12 = &STACK[0x11A8];
      v13 = -128;
      while (1)
      {
        *(v11 - 2) = &unk_2A2026DD8;
        if (*v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v11);
        }

        v11 -= 8;
        v12 -= 8;
        v13 += 64;
        if (!v13)
        {
          STACK[0x410] = &unk_2A2026DD8;
          if (STACK[0x420])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x420]);
          }

          STACK[0x448] = &unk_2A2026DD8;
          if (STACK[0x458])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x458]);
          }

          v14 = &STACK[0x12B8];
          v15 = &STACK[0x12A8];
          v16 = -128;
          while (1)
          {
            *(v14 - 2) = &unk_2A2026DD8;
            if (*v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*v14);
            }

            v14 -= 8;
            v15 -= 8;
            v16 += 64;
            if (!v16)
            {
              STACK[0x4A8] = &unk_2A2026DD8;
              if (STACK[0x4B8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x4B8]);
              }

              STACK[0x4E0] = &unk_2A2026DD8;
              if (STACK[0x4F0])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x4F0]);
              }

              for (i = 48; i != -48; i -= 48)
              {
                std::pair<std::string const,std::vector<unsigned char>>::~pair(&STACK[0x12E0] + i);
              }

              SEUpdaterUtil::JCOPConfig::Trigger::~Trigger(&STACK[0x16A0]);
              v18 = -128;
              v19 = v4;
              do
              {
                v19 = std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::~pair(v19) - 64;
                v18 += 64;
              }

              while (v18);
              std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0x588]);
              v20 = &STACK[0x1498];
              v21 = &STACK[0x1488];
              v22 = -128;
              while (1)
              {
                *(v20 - 2) = &unk_2A2026DD8;
                if (*v20)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*v20);
                }

                v20 -= 8;
                v21 -= 8;
                v22 += 64;
                if (!v22)
                {
                  STACK[0x518] = &unk_2A2026DD8;
                  if (STACK[0x528])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x528]);
                  }

                  STACK[0x550] = &unk_2A2026DD8;
                  if (STACK[0x560])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x560]);
                  }

                  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0x620]);
                  v23 = &STACK[0x1518];
                  v24 = &STACK[0x1508];
                  v25 = -128;
                  while (1)
                  {
                    *(v23 - 2) = &unk_2A2026DD8;
                    if (*v23)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
                    }

                    v23 -= 8;
                    v24 -= 8;
                    v25 += 64;
                    if (!v25)
                    {
                      STACK[0x5B0] = &unk_2A2026DD8;
                      if (STACK[0x5C0])
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x5C0]);
                      }

                      STACK[0x5E8] = &unk_2A2026DD8;
                      if (STACK[0x5F8])
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x5F8]);
                      }

                      v26 = &STACK[0x1618];
                      v27 = &STACK[0x1608];
                      v28 = -128;
                      while (1)
                      {
                        *(v26 - 2) = &unk_2A2026DD8;
                        if (*v26)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](*v26);
                        }

                        v26 -= 8;
                        v27 -= 8;
                        v28 += 64;
                        if (!v28)
                        {
                          STACK[0x648] = &unk_2A2026DD8;
                          if (STACK[0x658])
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x658]);
                          }

                          STACK[0x680] = &unk_2A2026DD8;
                          if (STACK[0x690])
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x690]);
                          }

                          for (j = 48; j != -48; j -= 48)
                          {
                            std::pair<std::string const,std::vector<unsigned char>>::~pair(&STACK[0x1640] + j);
                          }

                          SEUpdaterUtil::JCOPConfig::Trigger::~Trigger(&STACK[0x1AC0]);
                          v30 = -128;
                          v31 = v5;
                          do
                          {
                            v31 = std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::~pair(v31) - 64;
                            v30 += 64;
                          }

                          while (v30);
                          std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0x760]);
                          v32 = &STACK[0x1838];
                          v33 = &STACK[0x1828];
                          v34 = -192;
                          while (1)
                          {
                            *(v32 - 2) = &unk_2A2026DD8;
                            if (*v32)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](*v32);
                            }

                            v32 -= 8;
                            v33 -= 8;
                            v34 += 64;
                            if (!v34)
                            {
                              STACK[0x6B8] = &unk_2A2026DD8;
                              if (STACK[0x6C8])
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x6C8]);
                              }

                              STACK[0x6F0] = &unk_2A2026DD8;
                              if (STACK[0x700])
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x700]);
                              }

                              STACK[0x728] = &unk_2A2026DD8;
                              if (STACK[0x738])
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x738]);
                              }

                              std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0x830]);
                              v35 = &STACK[0x18F8];
                              v36 = &STACK[0x18E8];
                              v37 = -192;
                              while (1)
                              {
                                *(v35 - 2) = &unk_2A2026DD8;
                                if (*v35)
                                {
                                  std::__shared_weak_count::__release_shared[abi:ne200100](*v35);
                                }

                                v35 -= 8;
                                v36 -= 8;
                                v37 += 64;
                                if (!v37)
                                {
                                  STACK[0x788] = &unk_2A2026DD8;
                                  if (STACK[0x798])
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x798]);
                                  }

                                  STACK[0x7C0] = &unk_2A2026DD8;
                                  if (STACK[0x7D0])
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x7D0]);
                                  }

                                  STACK[0x7F8] = &unk_2A2026DD8;
                                  if (STACK[0x808])
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x808]);
                                  }

                                  v38 = &STACK[0x1A38];
                                  v39 = &STACK[0x1A28];
                                  v40 = -192;
                                  while (1)
                                  {
                                    *(v38 - 2) = &unk_2A2026DD8;
                                    if (*v38)
                                    {
                                      std::__shared_weak_count::__release_shared[abi:ne200100](*v38);
                                    }

                                    v38 -= 8;
                                    v39 -= 8;
                                    v40 += 64;
                                    if (!v40)
                                    {
                                      STACK[0x858] = &unk_2A2026DD8;
                                      if (STACK[0x868])
                                      {
                                        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x868]);
                                      }

                                      STACK[0x890] = &unk_2A2026DD8;
                                      if (STACK[0x8A0])
                                      {
                                        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x8A0]);
                                      }

                                      STACK[0x8C8] = &unk_2A2026DD8;
                                      if (STACK[0x8D8])
                                      {
                                        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x8D8]);
                                      }

                                      for (k = 48; k != -48; k -= 48)
                                      {
                                        std::pair<std::string const,std::vector<unsigned char>>::~pair(&STACK[0x1A60] + k);
                                      }

                                      SEUpdaterUtil::JCOPConfig::Trigger::~Trigger(&STACK[0x1DB0]);
                                      std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::~pair(&STACK[0x1C80]);
                                      std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0x900]);
                                      v42 = 0;
                                      while (1)
                                      {
                                        *(&STACK[0x1BC0] + v42 + 136) = &unk_2A2026DD8;
                                        v43 = *(&STACK[0x1BC0] + v42 + 152);
                                        if (v43)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
                                        }

                                        v42 -= 64;
                                        if (v42 == -192)
                                        {
                                          v44 = &STACK[0x1D58];
                                          v45 = &STACK[0x1D48];
                                          v46 = -192;
                                          while (1)
                                          {
                                            *(v44 - 2) = &unk_2A2026DD8;
                                            if (*v44)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:ne200100](*v44);
                                            }

                                            v44 -= 8;
                                            v45 -= 8;
                                            v46 += 64;
                                            if (!v46)
                                            {
                                              STACK[0x928] = &unk_2A2026DD8;
                                              if (STACK[0x938])
                                              {
                                                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x938]);
                                              }

                                              STACK[0x960] = &unk_2A2026DD8;
                                              if (STACK[0x970])
                                              {
                                                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x970]);
                                              }

                                              STACK[0x998] = &unk_2A2026DD8;
                                              if (STACK[0x9A8])
                                              {
                                                std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x9A8]);
                                              }

                                              std::pair<std::string const,std::vector<unsigned char>>::~pair(&STACK[0x1D80]);
                                              SEUpdaterUtil::JCOPConfig::Trigger::~Trigger(&STACK[0x2110]);
                                              v47 = -128;
                                              v48 = v3;
                                              do
                                              {
                                                v48 = std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::~pair(v48) - 64;
                                                v47 += 64;
                                              }

                                              while (v47);
                                              std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0xA40]);
                                              v49 = &STACK[0x1F08];
                                              v50 = &STACK[0x1EF8];
                                              v51 = -128;
                                              while (1)
                                              {
                                                *(v49 - 2) = &unk_2A2026DD8;
                                                if (*v49)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:ne200100](*v49);
                                                }

                                                v49 -= 8;
                                                v50 -= 8;
                                                v51 += 64;
                                                if (!v51)
                                                {
                                                  STACK[0x9D0] = &unk_2A2026DD8;
                                                  if (STACK[0x9E0])
                                                  {
                                                    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x9E0]);
                                                  }

                                                  STACK[0xA08] = &unk_2A2026DD8;
                                                  if (STACK[0xA18])
                                                  {
                                                    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xA18]);
                                                  }

                                                  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(&STACK[0xAD8]);
                                                  v52 = &STACK[0x1F88];
                                                  v53 = &STACK[0x1F78];
                                                  v54 = -128;
                                                  while (1)
                                                  {
                                                    *(v52 - 2) = &unk_2A2026DD8;
                                                    if (*v52)
                                                    {
                                                      std::__shared_weak_count::__release_shared[abi:ne200100](*v52);
                                                    }

                                                    v52 -= 8;
                                                    v53 -= 8;
                                                    v54 += 64;
                                                    if (!v54)
                                                    {
                                                      STACK[0xA68] = &unk_2A2026DD8;
                                                      if (STACK[0xA78])
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xA78]);
                                                      }

                                                      STACK[0xAA0] = &unk_2A2026DD8;
                                                      if (STACK[0xAB0])
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xAB0]);
                                                      }

                                                      v55 = &STACK[0x2088];
                                                      v56 = &STACK[0x2078];
                                                      v57 = -128;
                                                      while (1)
                                                      {
                                                        *(v55 - 2) = &unk_2A2026DD8;
                                                        if (*v55)
                                                        {
                                                          std::__shared_weak_count::__release_shared[abi:ne200100](*v55);
                                                        }

                                                        v55 -= 8;
                                                        v56 -= 8;
                                                        v57 += 64;
                                                        if (!v57)
                                                        {
                                                          STACK[0xB00] = &unk_2A2026DD8;
                                                          if (STACK[0xB10])
                                                          {
                                                            std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB10]);
                                                          }

                                                          STACK[0xB38] = &unk_2A2026DD8;
                                                          if (STACK[0xB48])
                                                          {
                                                            std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB48]);
                                                          }

                                                          for (m = 48; m != -48; m -= 48)
                                                          {
                                                            std::pair<std::string const,std::vector<unsigned char>>::~pair(&STACK[0x20B0] + m);
                                                          }

                                                          while (v2 != &STACK[0x2210])
                                                          {
                                                            v2 -= 33;
                                                            std::pair<SEUpdaterUtil::JCOPConfigItem const,SEUpdaterUtil::JCOPConfig::Trigger>::~pair(v2);
                                                          }

                                                          _Unwind_Resume(a1);
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
  }
}

uint64_t std::pair<std::string const,std::vector<unsigned char>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t SEUpdaterUtil::JCOPConfig::IsUICCConnected(SEUpdaterUtil::JCOPConfig *this)
{
  if ((atomic_load_explicit(&qword_2A197EED8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A197EED8);
    if (v2)
    {
      _MergedGlobals_6 = capabilities::euicc::shouldEnableEUICCDetectPullDown(v2) ^ 1;
      __cxa_guard_release(&qword_2A197EED8);
    }
  }

  return _MergedGlobals_6;
}

uint64_t std::pair<SEUpdaterUtil::JCOPConfigItem const,SEUpdaterUtil::JCOPConfig::Trigger>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::~__hash_table(a1 + 224);
  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(a1 + 184);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::~__hash_table(a1 + 144);
  std::__function::__value_func<BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::~__value_func[abi:ne200100](a1 + 112);
  std::__function::__value_func<std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::~__value_func[abi:ne200100](a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Type_Eos_Dev::~CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Type_Eos_Dev(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Type_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Type_Eos_ProdEval::~CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Type_Eos_ProdEval(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Type_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Eos_Dev::~CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Eos_Dev(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Eos_ProdEval::~CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Eos_ProdEval(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_ISO_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_Eos_Dev::~CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_Eos_Dev(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_Eos_ProdEval::~CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_Eos_ProdEval(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Enable_WithFilters_SW_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Disable_Eos_Dev::~CommandSetConfigItem40D0_ExceptionLog_Disable_Eos_Dev(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Disable_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Disable_Eos_ProdEval::~CommandSetConfigItem40D0_ExceptionLog_Disable_Eos_ProdEval(SEUpdater::CommandSetConfigItem40D0_ExceptionLog_Disable_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem40D0_ExceptionLog_Eos_ProdEval::~CommandGetConfigItem40D0_ExceptionLog_Eos_ProdEval(SEUpdater::CommandGetConfigItem40D0_ExceptionLog_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem40D0_ExceptionLog_Eos_Dev::~CommandGetConfigItem40D0_ExceptionLog_Eos_Dev(SEUpdater::CommandGetConfigItem40D0_ExceptionLog_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4108_I2CB_DisableInFPM_EnableLogging_Eos_Dev::~CommandSetConfigItem4108_I2CB_DisableInFPM_EnableLogging_Eos_Dev(SEUpdater::CommandSetConfigItem4108_I2CB_DisableInFPM_EnableLogging_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4108_I2CB_DisableInFPM_EnableLogging_Eos_ProdEval::~CommandSetConfigItem4108_I2CB_DisableInFPM_EnableLogging_Eos_ProdEval(SEUpdater::CommandSetConfigItem4108_I2CB_DisableInFPM_EnableLogging_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4108_I2CB_EnableInFPM_EnableLogging_Eos_Dev::~CommandSetConfigItem4108_I2CB_EnableInFPM_EnableLogging_Eos_Dev(SEUpdater::CommandSetConfigItem4108_I2CB_EnableInFPM_EnableLogging_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4108_I2CB_EnableInFPM_EnableLogging_Eos_ProdEval::~CommandSetConfigItem4108_I2CB_EnableInFPM_EnableLogging_Eos_ProdEval(SEUpdater::CommandSetConfigItem4108_I2CB_EnableInFPM_EnableLogging_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem4108_I2CB_Eos_ProdEval::~CommandGetConfigItem4108_I2CB_Eos_ProdEval(SEUpdater::CommandGetConfigItem4108_I2CB_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem4108_I2CB_Eos_Dev::~CommandGetConfigItem4108_I2CB_Eos_Dev(SEUpdater::CommandGetConfigItem4108_I2CB_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40BD_I2CA_DisableInFPM_EnableLogging_Eos_Dev::~CommandSetConfigItem40BD_I2CA_DisableInFPM_EnableLogging_Eos_Dev(SEUpdater::CommandSetConfigItem40BD_I2CA_DisableInFPM_EnableLogging_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40BD_I2CA_DisableInFPM_EnableLogging_Eos_ProdEval::~CommandSetConfigItem40BD_I2CA_DisableInFPM_EnableLogging_Eos_ProdEval(SEUpdater::CommandSetConfigItem40BD_I2CA_DisableInFPM_EnableLogging_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40BD_I2CA_EnableInFPM_EnableLogging_Eos_Dev::~CommandSetConfigItem40BD_I2CA_EnableInFPM_EnableLogging_Eos_Dev(SEUpdater::CommandSetConfigItem40BD_I2CA_EnableInFPM_EnableLogging_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem40BD_I2CA_EnableInFPM_EnableLogging_Eos_ProdEval::~CommandSetConfigItem40BD_I2CA_EnableInFPM_EnableLogging_Eos_ProdEval(SEUpdater::CommandSetConfigItem40BD_I2CA_EnableInFPM_EnableLogging_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem40BD_I2CA_Eos_ProdEval::~CommandGetConfigItem40BD_I2CA_Eos_ProdEval(SEUpdater::CommandGetConfigItem40BD_I2CA_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem40BD_I2CA_Eos_Dev::~CommandGetConfigItem40BD_I2CA_Eos_Dev(SEUpdater::CommandGetConfigItem40BD_I2CA_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_Dev::~CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_Dev(SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_ProdEval::~CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_ProdEval(SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_Prod::~CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_Prod(SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_0000_Eos_Prod *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_Dev::~CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_Dev(SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_ProdEval::~CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_ProdEval(SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_Prod::~CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_Prod(SEUpdater::CommandSetConfigItem415E_Index_Table_Defragmentation_Eos_Prod *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_Dev::~CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_Dev(SEUpdater::CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_ProdEval::~CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_ProdEval(SEUpdater::CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_Prod::~CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_Prod(SEUpdater::CommandGetConfigItem415E_Index_Table_Defragmentation_Eos_Prod *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem412A_Mem_Reserve_Eos_Dev::~CommandGetConfigItem412A_Mem_Reserve_Eos_Dev(SEUpdater::CommandGetConfigItem412A_Mem_Reserve_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem412A_Mem_Reserve_Eos_ProdEval::~CommandGetConfigItem412A_Mem_Reserve_Eos_ProdEval(SEUpdater::CommandGetConfigItem412A_Mem_Reserve_Eos_ProdEval *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem412A_Mem_Reserve_Eos_Prod::~CommandGetConfigItem412A_Mem_Reserve_Eos_Prod(SEUpdater::CommandGetConfigItem412A_Mem_Reserve_Eos_Prod *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4143_HiZ_Eos_Dev::~CommandSetConfigItem4143_HiZ_Eos_Dev(SEUpdater::CommandSetConfigItem4143_HiZ_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4143_HiZ_Eos_Prod::~CommandSetConfigItem4143_HiZ_Eos_Prod(SEUpdater::CommandSetConfigItem4143_HiZ_Eos_Prod *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4143_WPD_Eos_Dev::~CommandSetConfigItem4143_WPD_Eos_Dev(SEUpdater::CommandSetConfigItem4143_WPD_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetConfigItem4143_WPD_Eos_Prod::~CommandSetConfigItem4143_WPD_Eos_Prod(SEUpdater::CommandSetConfigItem4143_WPD_Eos_Prod *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem4143_Eos_Dev::~CommandGetConfigItem4143_Eos_Dev(SEUpdater::CommandGetConfigItem4143_Eos_Dev *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetConfigItem4143_Eos_Prod::~CommandGetConfigItem4143_Eos_Prod(SEUpdater::CommandGetConfigItem4143_Eos_Prod *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void std::__function::__func<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_1,std::allocator<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_1>,std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::operator()(SEUpdaterUtil::JCOPConfig *a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, std::string *a4@<X8>)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "simDetectWPD");
    v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(v7, __p);
    v9 = v8;
    if (v16 < 0)
    {
      operator delete(__p[0]);
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else if (v8)
    {
LABEL_4:
      v10 = &xmmword_2A197EEE0;
      goto LABEL_20;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "simDetectHIZ");
    a1 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(v7, __p);
    v12 = v5 == 54 || a1 != 0;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_6:
    v10 = &xmmword_2A197EEF8;
    goto LABEL_20;
  }

  if (v5 == 54)
  {
    goto LABEL_6;
  }

LABEL_17:
  IsUICCConnected = SEUpdaterUtil::JCOPConfig::IsUICCConnected(a1);
  v14 = 24;
  if (IsUICCConnected)
  {
    v14 = 48;
  }

  v10 = &_MergedGlobals_6[v14];
LABEL_20:
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *v10, *(v10 + 1));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *v10;
    a4->__r_.__value_.__r.__words[2] = *(v10 + 2);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_299F17828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_1,std::allocator<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_1>,std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_0,std::allocator<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_0>,BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (*(v3 + 56) == 44 && *(v3 + 12) < 0x1B6u)
  {
    v4 = 0;
    if (!v2)
    {
      return v4;
    }

    goto LABEL_6;
  }

  v4 = 1;
  if (v2)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v4;
}

uint64_t std::__function::__func<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_0,std::allocator<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_0>,BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[1], *a3, a3[1], a3[1] - *a3);
  return this;
}

void sub_299F17A40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::vector<unsigned char>>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<unsigned char>> const&>(a1, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<unsigned char>> const&>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_299F17D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned char>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned char>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned char>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  v3 = v1 < 0;
  if (v1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (!v3)
  {
    v2 = *(a1 + 23);
  }

  if (v2 > 0x20)
  {
    if (v2 > 0x40)
    {
      v34 = 0x9DDFEA08EB382D69;
      v44 = *(v4 + v2 - 48);
      v43 = *(v4 + v2 - 40);
      v45 = *(v4 + v2 - 24);
      v46 = *(v4 + v2 - 56);
      v47 = *(v4 + v2 - 16);
      v48 = *(v4 + v2 - 8);
      v49 = v46 + v47;
      v50 = 0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))));
      v51 = 0x9DDFEA08EB382D69 * (v50 ^ (v50 >> 47));
      v52 = *(v4 + v2 - 64) + v2;
      v53 = v44 + v46 + v52;
      v54 = __ROR8__(v53, 44) + v52;
      v55 = __ROR8__(v52 + v43 + v51, 21);
      v56 = v53 + v43;
      v57 = v54 + v55;
      v58 = v49 + *(v4 + v2 - 32) - 0x4B6D499041670D8DLL;
      v59 = v45 + v47 + v58;
      v60 = v59 + v48;
      v61 = __ROR8__(v59, 44) + v58 + __ROR8__(v58 + v43 + v48, 21);
      v63 = *v4;
      v62 = v4 + 4;
      v64 = v63 - 0x4B6D499041670D8DLL * v43;
      v65 = -((v2 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v66 = *(v62 - 3);
        v67 = v64 + v56 + v49 + v66;
        v68 = v62[2];
        v69 = v62[3];
        v70 = v62[1];
        v49 = v70 + v56 - 0x4B6D499041670D8DLL * __ROR8__(v49 + v57 + v68, 42);
        v71 = v51 + v60;
        v72 = *(v62 - 2);
        v73 = *(v62 - 1);
        v74 = *(v62 - 4) - 0x4B6D499041670D8DLL * v57;
        v75 = v74 + v60 + v73;
        v76 = v74 + v66 + v72;
        v56 = v76 + v73;
        v77 = __ROR8__(v76, 44) + v74;
        v78 = (0xB492B66FBE98F273 * __ROR8__(v67, 37)) ^ v61;
        v64 = 0xB492B66FBE98F273 * __ROR8__(v71, 33);
        v57 = v77 + __ROR8__(v75 + v78, 21);
        v79 = v64 + v61 + *v62;
        v60 = v70 + v68 + v79 + v69;
        v61 = __ROR8__(v70 + v68 + v79, 44) + v79 + __ROR8__(v49 + v72 + v79 + v69, 21);
        v62 += 8;
        v51 = v78;
        v65 += 64;
      }

      while (v65);
      v80 = 0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)));
      v81 = v64 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) >> 47));
      v82 = 0x9DDFEA08EB382D69 * (v81 ^ (v78 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * (v80 ^ (v80 >> 47))));
      v35 = 0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82);
    }

    else
    {
      v9 = v4 + v2;
      v10 = *(v4 + v2 - 16);
      v11 = *(v4 + v2 - 8);
      v12 = v4[1];
      v13 = *v4 - 0x3C5A37A36834CED9 * (v10 + v2);
      v16 = v4 + 2;
      v14 = v4[2];
      v15 = v16[1];
      v17 = __ROR8__(v13 + v15, 52);
      v18 = __ROR8__(v13, 37);
      v19 = v13 + v12;
      v20 = __ROR8__(v19, 7);
      v21 = v19 + v14;
      v22 = v20 + v18;
      v23 = *(v9 - 4) + v14;
      v24 = v11 + v15;
      v25 = __ROR8__(v24 + v23, 52);
      v26 = v22 + v17;
      v27 = __ROR8__(v23, 37);
      v28 = *(v9 - 3) + v23;
      v29 = __ROR8__(v28, 7);
      v30 = v26 + __ROR8__(v21, 31);
      v31 = v28 + v10;
      v32 = v31 + v24;
      v33 = v21 + v15 + v27 + v29 + v25 + __ROR8__(v31, 31);
      v34 = 0x9AE16A3B2F90404FLL;
      v35 = v30 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) ^ ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) >> 47));
    }

    return (v35 ^ (v35 >> 47)) * v34;
  }

  else
  {
    if (v2 > 0x10)
    {
      v36 = v4[1];
      v37 = 0xB492B66FBE98F273 * *v4;
      v38 = 0x9AE16A3B2F90404FLL * *(v4 + v2 - 8);
      v39 = __ROR8__(v38, 30) + __ROR8__(v37 - v36, 43);
      v40 = v37 + v2 + __ROR8__(v36 ^ 0xC949D7C7509E6557, 20) - v38;
      v41 = 0x9DDFEA08EB382D69 * ((v39 - 0x3C5A37A36834CED9 * *(v4 + v2 - 16)) ^ v40);
      v42 = v40 ^ (v41 >> 47) ^ v41;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    if (v2 >= 9)
    {
      v5 = *v4;
      v6 = *(v4 + v2 - 8);
      v7 = __ROR8__(v6 + v2, v2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) >> 47))) ^ v6;
    }

    if (v2 >= 4)
    {
      v83 = *v4;
      v84 = *(v4 + v2 - 4);
      v85 = 0x9DDFEA08EB382D69 * ((v2 + (8 * v83)) ^ v84);
      v42 = v84 ^ (v85 >> 47) ^ v85;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v2)
    {
      v86 = (0xC949D7C7509E6557 * (v2 | (4 * *(v4 + v2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v4 | (*(v4 + (v2 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v86 ^ (v86 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned char>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned char>>,0>((v2 + 2));
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

uint64_t std::unordered_map<unsigned char,SERestoreInfo::CApdu>::unordered_map(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = a3 << 6;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,SERestoreInfo::CApdu> const&>(a1, *a2);
      a2 += 64;
      v5 -= 64;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,SERestoreInfo::CApdu> const&>(void *result, unsigned __int8 a2)
{
  v2 = result[1];
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
      v4 = a2 % result[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    __p[3] = &unk_2A2026DD8;
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v2[3] = &unk_2A2026DD8;
      v4 = v2[5];
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

std::string *std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::unordered_map<unsigned char,SERestoreInfo::CApdu>::unordered_map(&this[1], a3);
  return this;
}

void sub_299F18B58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<unsigned char,SERestoreInfo::CApdu>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,SERestoreInfo::CApdu> const&>(a1, *(i + 16));
  }

  return a1;
}

uint64_t std::unordered_map<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = a3 << 6;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>> const&>(a1, a2);
      a2 += 8;
      v5 -= 64;
    }

    while (v5);
  }

  return a1;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>> const&>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_299F18FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,0>((v2 + 2));
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

uint64_t std::__function::__func<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_2,std::allocator<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_2>,BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::operator()(SEUpdaterUtil::JCOPConfig *SEConfiguration, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(v3 + 14) == 54 && (SEConfiguration = SERestoreInfo::P73BaseDeviceInfo::getSEConfiguration(v3), SEConfiguration == 2) || SEUpdaterUtil::JCOPConfig::IsUICCConnected(SEConfiguration) && *(v3 + 14) != 56)
  {
    v4 = 0;
    if (!v2)
    {
      return v4;
    }

    goto LABEL_6;
  }

  v4 = 1;
  if (v2)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v4;
}

void sub_299F191E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_2,std::allocator<SEUpdaterUtil::JCOPConfig::Triggers(void)::$_2>,BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::__unordered_map_hasher<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::hash<SEUpdaterUtil::JCOPConfigItem>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,true>,std::__unordered_map_equal<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,std::hash<SEUpdaterUtil::JCOPConfigItem>,true>,std::allocator<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>>>::__emplace_unique_key_args<SEUpdaterUtil::JCOPConfigItem,std::pair<SEUpdaterUtil::JCOPConfigItem const,SEUpdaterUtil::JCOPConfig::Trigger> const&>(void *result, unsigned int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::~__hash_table(a2 + 240);
    std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table(a2 + 200);
    std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::~__hash_table(a2 + 160);
    std::__function::__value_func<BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::~__value_func[abi:ne200100](a2 + 128);
    std::__function::__value_func<std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::~__value_func[abi:ne200100](a2 + 96);
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::__unordered_map_hasher<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::hash<SEUpdaterUtil::JCOPConfigItem>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,true>,std::__unordered_map_equal<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,std::hash<SEUpdaterUtil::JCOPConfigItem>,true>,std::allocator<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::__unordered_map_hasher<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::hash<SEUpdaterUtil::JCOPConfigItem>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,true>,std::__unordered_map_equal<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,std::hash<SEUpdaterUtil::JCOPConfigItem>,true>,std::allocator<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::__unordered_map_hasher<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::hash<SEUpdaterUtil::JCOPConfigItem>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,true>,std::__unordered_map_equal<SEUpdaterUtil::JCOPConfigItem,std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>,std::equal_to<SEUpdaterUtil::JCOPConfigItem>,std::hash<SEUpdaterUtil::JCOPConfigItem>,true>,std::allocator<std::__hash_value_type<SEUpdaterUtil::JCOPConfigItem,SEUpdaterUtil::JCOPConfig::Trigger>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::~__hash_table((v1 + 30));
      std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::~__hash_table((v1 + 25));
      std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::~__hash_table((v1 + 20));
      std::__function::__value_func<BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::~__value_func[abi:ne200100]((v1 + 16));
      std::__function::__value_func<std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::~__value_func[abi:ne200100]((v1 + 12));
      if (*(v1 + 95) < 0)
      {
        operator delete(v1[9]);
      }

      if (*(v1 + 55) < 0)
      {
        operator delete(v1[4]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<SERestoreInfo::P73BaseDeviceInfo>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::string ()(unsigned int,std::shared_ptr<std::map<std::string,std::string>>)>::~__value_func[abi:ne200100](uint64_t a1)
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

SEUpdaterUtil::JCOPConfig::Trigger *SEUpdaterUtil::JCOPConfig::Trigger::Trigger(SEUpdaterUtil::JCOPConfig::Trigger *this, const SEUpdaterUtil::JCOPConfig::Trigger *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v5;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v6;
  }

  v7 = *(a2 + 12);
  if (!v7)
  {
    goto LABEL_10;
  }

  if (v7 != (a2 + 72))
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_10:
    *(this + 12) = v7;
    goto LABEL_12;
  }

  *(this + 12) = this + 72;
  (*(**(a2 + 12) + 24))(*(a2 + 12), this + 72);
LABEL_12:
  v8 = *(a2 + 16);
  if (!v8)
  {
LABEL_15:
    *(this + 16) = v8;
    goto LABEL_17;
  }

  if (v8 != (a2 + 104))
  {
    v8 = (*(*v8 + 16))(v8);
    goto LABEL_15;
  }

  *(this + 16) = this + 104;
  (*(**(a2 + 16) + 24))(*(a2 + 16), this + 104);
LABEL_17:
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = *(a2 + 42);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__rehash<true>(this + 136, *(a2 + 18));
  for (i = *(a2 + 19); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<unsigned char>> const&>(this + 17, i + 2);
  }

  std::unordered_map<unsigned char,SERestoreInfo::CApdu>::unordered_map(this + 176, a2 + 176);
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = *(a2 + 62);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned char>>>>::__rehash<true>(this + 216, *(a2 + 28));
  for (j = *(a2 + 29); j; j = *j)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned char,SERestoreInfo::CApdu>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_map<unsigned char,SERestoreInfo::CApdu>> const&>(this + 27, j + 2);
  }

  return this;
}