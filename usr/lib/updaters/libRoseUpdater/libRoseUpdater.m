uint64_t RoseRestoreHost::create@<X0>(RoseRestoreHost *this@<X0>, const __CFString *a2@<X1>, ACFURestoreHost **a3@<X8>)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v7 = operator new(0xF8uLL);
  ACFURestoreHost::ACFURestoreHost(v7);
  *v7 = &unk_2A2024E80;
  *(v7 + 29) = 0;
  *(v7 + 30) = 0;
  *a3 = v7;
  result = RoseRestoreHost::init(v7, this, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v9 = *(*v7 + 24);

    return v9(v7);
  }

  return result;
}

void sub_299EA3CC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void RoseRestoreHost::RoseRestoreHost(RoseRestoreHost *this)
{
  ACFURestoreHost::ACFURestoreHost(this);
  *v1 = &unk_2A2024E80;
  v1[29] = 0;
  v1[30] = 0;
}

__CFDictionary *RoseRestoreHost::createRequest(ACFULogging *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 17))
  {
    RoseRestoreHost::createRequest(a1);
    return 0;
  }

  else
  {
    v4 = a2[1];
    v8 = *a2;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Request = ACFURestoreHost::createRequest();
    v6 = v9;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (Request)
    {
      if (*(a3 + 16) == 1)
      {
        CFDictionaryRemoveValue(Request, @"Rap,RestoreRTKitOS");
      }
    }

    else
    {
      RoseRestoreHost::createRequest(v6);
    }
  }

  return Request;
}

void sub_299EA3DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RoseRestoreHost::~RoseRestoreHost(RoseRestoreHost *this)
{
  *this = &unk_2A2024E80;
  v2 = *(this + 30);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  MEMORY[0x2A1C5F1B0](this);
}

{
  RoseRestoreHost::~RoseRestoreHost(this);

  operator delete(v1);
}

uint64_t RoseRestoreHost::init(RoseRestoreHost *this, CFTypeRef cf, const __CFString *a3)
{
  v48[1] = *MEMORY[0x29EDCA608];
  if (!cf || (v5 = this, v6 = CFGetTypeID(cf), this = CFDictionaryGetTypeID(), v6 != this))
  {
    RoseRestoreHost::init(this);
    goto LABEL_45;
  }

  Value = CFDictionaryGetValue(cf, @"DeviceInfo");
  if (!Value || (v8 = Value, v9 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v9 != Value))
  {
    RoseRestoreHost::init(Value);
    goto LABEL_45;
  }

  TypeID = CFDictionaryGetValue(v8, @"Rap,ChipID");
  if (!TypeID || (v11 = TypeID, v12 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v12 != TypeID))
  {
    RoseRestoreHost::init(TypeID);
    goto LABEL_45;
  }

  Length = CFDataGetLength(v11);
  if (Length != 2)
  {
    RoseRestoreHost::init(Length);
    goto LABEL_45;
  }

  BytePtr = CFDataGetBytePtr(v11);
  RoseCapabilities::create(*BytePtr, &v42);
  v15 = v42;
  v42 = 0uLL;
  v16 = *(v5 + 30);
  *(v5 + 232) = v15;
  if (!v16)
  {
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v16 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
  }

  if (!*(v5 + 29))
  {
LABEL_20:
    RoseRestoreHost::init(v16);
LABEL_45:
    result = 0;
    goto LABEL_39;
  }

LABEL_12:
  v42 = xmmword_29F290920;
  v43 = *&off_29F290930;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 5, &v42, &v44, 4uLL);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRtkitosICNF);
  }

  if (RoseCapabilities::requiresSeparateFirmwareTargetForCertification(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRestoreRtkitos);
  }

  v42 = xmmword_29F290950;
  v43 = *&off_29F290960;
  v44 = xmmword_29F290970;
  v45 = @"Rap,SecurityDomain";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 8, &v42, &v46, 7uLL);
  *&v42 = @"@Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 11, &v42, &v42 + 8, 1uLL);
  *&v42 = @"Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 14, &v42, &v42 + 8, 1uLL);
  v42 = xmmword_29F290988;
  v43 = *&off_29F290998;
  v44 = xmmword_29F2909A8;
  std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(v5 + 17, &v42, &v45, 3uLL);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    v18 = *(v5 + 18);
    v17 = *(v5 + 19);
    if (v18 >= v17)
    {
      v20 = *(v5 + 17);
      v21 = (v18 - v20) >> 4;
      v22 = v21 + 1;
      if ((v21 + 1) >> 60)
      {
        std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
      }

      v23 = v17 - v20;
      if (v23 >> 3 > v22)
      {
        v22 = v23 >> 3;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF0)
      {
        v24 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        v25 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(v5 + 136, v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[16 * v21];
      v27 = &v25[16 * v24];
      *v26 = @"Rap,RTKitIOConfig";
      v26[8] = 1;
      v19 = v26 + 16;
      v28 = *(v5 + 17);
      v29 = *(v5 + 18) - v28;
      v30 = &v26[-v29];
      memcpy(&v26[-v29], v28, v29);
      v31 = *(v5 + 17);
      *(v5 + 17) = v30;
      *(v5 + 18) = v19;
      *(v5 + 19) = v27;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v18 = @"Rap,RTKitIOConfig";
      *(v18 + 8) = 1;
      v19 = (v18 + 16);
    }

    *(v5 + 18) = v19;
  }

  v32 = CFNumberGetTypeID();
  *&v42 = @"Rap,ChipID";
  *(&v42 + 1) = v32;
  v33 = CFNumberGetTypeID();
  *&v43 = @"Rap,BoardID";
  *(&v43 + 1) = v33;
  v34 = CFNumberGetTypeID();
  *&v44 = @"Rap,SecurityDomain";
  *(&v44 + 1) = v34;
  v35 = CFBooleanGetTypeID();
  v45 = @"Rap,ProductionMode";
  v46 = v35;
  v36 = CFBooleanGetTypeID();
  v47[0] = @"Rap,SecurityMode";
  v47[1] = v36;
  v37 = CFNumberGetTypeID();
  v47[2] = @"Rap,ECID";
  v47[3] = v37;
  v38 = CFDataGetTypeID();
  v47[4] = @"Rap,Nonce";
  v47[5] = v38;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(v5 + 20, &v42, v48);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    *(v5 + 23) = @"Rap,FdrRootCaDigest";
  }

  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    *(v5 + 24) = @"Rap,FDRAllowUnsealed";
  }

  *&v42 = @"Rap,RTKitOS";
  WORD4(v42) = 1;
  *&v43 = @"Rap,RestoreRTKitOS";
  WORD4(v43) = 1;
  *&v44 = @"Rap,SoftwareBinaryDsp1";
  WORD4(v44) = 0;
  v45 = @"Rap,RTKitIOConfig";
  LOWORD(v46) = 0;
  std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__assign_unique<std::pair<__CFString const* const,ACFURestoreHost::DemoteConfig> const*>(v5 + 25, &v42, v47);
  *(v5 + 28) = @"Rose";
  v39 = ACFURestoreHost::init(v5, cf, a3);
  if ((v39 & 1) == 0)
  {
    RoseRestoreHost::init(v39);
    goto LABEL_45;
  }

  result = 1;
LABEL_39:
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<__CFString const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

const void *RoseRestoreHost::copyFirmwareUpdater(uint64_t a1, const __CFDictionary *a2)
{
  GetRoseTatsuTagToFileNameMap(&v112);
  v3 = std::map<__CFString const*,std::string>::at(&v112, &kRoseRestoreRtkitos);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, *v3, v3[1]);
  }

  else
  {
    v4 = *v3;
    v113.__r_.__value_.__r.__words[2] = v3[2];
    *&v113.__r_.__value_.__l.__data_ = v4;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v112, v112.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v111);
  v5 = std::map<__CFString const*,std::string>::at(&v111, kRoseRtkitos);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    v112.__r_.__value_.__r.__words[2] = v5[2];
    *&v112.__r_.__value_.__l.__data_ = v6;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v111, v111.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v110);
  v7 = std::map<__CFString const*,std::string>::at(&v110, &kRoseSwDsp1);
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v111.__r_.__value_.__r.__words[2] = v7[2];
    *&v111.__r_.__value_.__l.__data_ = v8;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v110, v110.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v108);
  v9 = std::map<__CFString const*,std::string>::at(&v108, &kRoseRtkitosICNF);
  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v110.__r_.__value_.__r.__words[2] = v9[2];
    *&v110.__r_.__value_.__l.__data_ = v10;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v108, *(&v108 + 1));
  Value = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  v12 = Value;
  if (!Value || (v13 = CFGetTypeID(Value), v13 != CFDictionaryGetTypeID()))
  {
    std::string::basic_string[abi:ne200100]<0>(&v106, "copyFirmwareUpdater: failed to get device info list");
    v61 = ACFUError::addError();
    if (v107 < 0)
    {
      operator delete(v106);
    }

    ACFULogging::getLogInstance(v61);
    goto LABEL_110;
  }

  v14 = CFDictionaryGetValue(v12, @"Rap,RestoreBootNonce");
  if (v14)
  {
    TypeID = CFDataGetTypeID();
    v16 = CFGetTypeID(v14);
    if (TypeID == v16)
    {
      ACFULogging::getLogInstance(v16);
      ACFULogging::handleMessage();
      if (CFDataGetLength(v14) != 8)
      {
        std::string::basic_string[abi:ne200100]<0>(&v104, "copyFirmwareUpdater: nonce is of unexpected size");
        v73 = ACFUError::addError();
        if (v105 < 0)
        {
          operator delete(v104);
        }

        ACFULogging::getLogInstance(v73);
        goto LABEL_110;
      }

      v14 = *CFDataGetBytePtr(v14);
    }

    else
    {
      v14 = 0;
    }
  }

  v17 = CFDictionaryGetValue(v12, @"Rap,ChipRev");
  v18 = CFDictionaryGetValue(v12, @"Rap,BoardID");
  if (!v17 || (v19 = v18) == 0 || (v20 = CFDataGetTypeID(), v20 != CFGetTypeID(v17)) || (v21 = CFDataGetTypeID(), v21 != CFGetTypeID(v19)))
  {
    std::string::basic_string[abi:ne200100]<0>(&v102, "copyFirmwareUpdater: unexpected device info parameters");
    v60 = ACFUError::addError();
    if (v103 < 0)
    {
      operator delete(v102);
    }

    ACFULogging::getLogInstance(v60);
    goto LABEL_110;
  }

  if (CFDataGetLength(v17) != 2 || CFDataGetLength(v19) != 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v100, "copyFirmwareUpdater: bad device info parameters");
    v62 = ACFUError::addError();
    if (v101 < 0)
    {
      operator delete(v100);
    }

    ACFULogging::getLogInstance(v62);
LABEL_110:
    v32 = 0;
    v44 = 0;
    v39 = 0;
    ACFULogging::handleMessage();
    v52 = 0;
    goto LABEL_86;
  }

  v22 = *CFDataGetBytePtr(v17);
  BytePtr = CFDataGetBytePtr(v19);
  v24 = *BytePtr;
  ACFULogging::getLogInstance(BytePtr);
  v25 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v25);
  std::string::basic_string[abi:ne200100]<0>(&v98, "RoseRestoreHost");
  v26 = std::string::append(&v98, "::");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v99.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v99.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v99, "copyFirmwareUpdater");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v109 = v28->__r_.__value_.__r.__words[2];
  v108 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v30 = ACFURestoreHost::copyDataFromFileDictionary();
  cf = v30;
  if (v30)
  {
    v31 = CFGetTypeID(v30);
    if (v31 == CFDataGetTypeID())
    {
      ACFUFTABFile::create();
      v32 = v108;
      if (!v108)
      {
        std::string::basic_string[abi:ne200100]<0>(&v94, "copyFirmware: failed to init bundle firmware");
        v68 = ACFUError::addError();
        if (v95 < 0)
        {
          operator delete(v94);
        }

        ACFULogging::getLogInstance(v68);
        v32 = 0;
        v44 = 0;
        v39 = 0;
        ACFULogging::handleMessage();
        v51 = 0;
        v37 = 0;
        v42 = 0;
        v52 = 0;
        goto LABEL_80;
      }

      if (!(*(*v108 + 16))(v108, &v111) || ((*(*v32 + 16))(v32, &v112) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v92, "copyFirmware: bundle firmware specified is invalid");
        v64 = ACFUError::addError();
        if (v93 < 0)
        {
          operator delete(v92);
        }

        ACFULogging::getLogInstance(v64);
        v44 = 0;
        v39 = 0;
        ACFULogging::handleMessage();
        v51 = 0;
        v37 = 0;
        v42 = 0;
        v52 = 0;
        goto LABEL_80;
      }

      if (RoseCapabilities::supportsRTKitIOConfig(*(a1 + 232)))
      {
        v33 = (*(*v32 + 16))(v32, &v110);
        if ((v33 & 1) == 0)
        {
          ACFULogging::getLogInstance(v33);
          ACFULogging::handleMessage();
        }
      }

      v34 = CFDictionaryContainsKey(a2, *(a1 + 8));
      if (v34)
      {
        v35 = *(a1 + 8);
        v36 = ACFURestoreHost::copyDataFromFileDictionary();
        v37 = v36;
        if (!v36 || (v38 = CFGetTypeID(v36), v38 != CFDataGetTypeID()))
        {
          std::string::basic_string[abi:ne200100]<0>(&v90, "copyFirmware: rooted override data unavailable");
          v66 = ACFUError::addError();
          if (v91 < 0)
          {
            operator delete(v90);
          }

          ACFULogging::getLogInstance(v66);
          goto LABEL_124;
        }

        ACFUFTABFile::create();
        v39 = v108;
        if (!v108)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "copyFirmware: failed to init ftab file object");
          v40 = ACFUError::addError();
          if (v89 < 0)
          {
            operator delete(__p);
          }

          ACFULogging::getLogInstance(v40);
LABEL_124:
          v44 = 0;
          v39 = 0;
          ACFULogging::handleMessage();
          v51 = 0;
          v42 = 0;
          v52 = 0;
LABEL_80:
          CFRelease(cf);
          if (v42)
          {
            CFRelease(v42);
          }

          if (v37)
          {
            CFRelease(v37);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          goto LABEL_86;
        }
      }

      else
      {
        ACFULogging::getLogInstance(v34);
        v39 = 0;
        ACFULogging::handleMessage();
        v37 = 0;
      }

      if (CFDictionaryContainsKey(a2, @"Rap,RestoreRTKitOS"))
      {
        v41 = ACFURestoreHost::copyDataFromFileDictionary();
        v42 = v41;
        if (v41 && (v43 = CFGetTypeID(v41), v43 == CFDataGetTypeID()))
        {
          ACFUFTABFile::create();
          v44 = v108;
          if (v108)
          {
            if (((*(*v108 + 16))(v108, &v113) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v82, "copyFirmware: bundle cert firmware doesn't have rrko");
              v70 = ACFUError::addError();
              if (v83 < 0)
              {
                operator delete(v82);
              }

              ACFULogging::getLogInstance(v70);
              ACFULogging::handleMessage();
              goto LABEL_141;
            }

            if (v39)
            {
              goto LABEL_54;
            }

            goto LABEL_61;
          }

          std::string::basic_string[abi:ne200100]<0>(&v84, "copyFirmware: failed to init certification firmware");
          v69 = ACFUError::addError();
          if (v85 < 0)
          {
            operator delete(v84);
          }

          ACFULogging::getLogInstance(v69);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v86, "copyFirmware: rrko bundle data unavailable");
          v67 = ACFUError::addError();
          if (v87 < 0)
          {
            operator delete(v86);
          }

          ACFULogging::getLogInstance(v67);
        }

        v44 = 0;
        ACFULogging::handleMessage();
        v51 = 0;
        v52 = 0;
        goto LABEL_80;
      }

      v44 = 0;
      v42 = 0;
      if (v39)
      {
LABEL_54:
        v45 = (*v39)[2](v39, &v113);
        v46 = (*v39)[2](v39, &v112);
        if (v45)
        {
          v47 = v39;
        }

        else
        {
          v47 = v44;
        }

        if (v46)
        {
          v48 = v39;
        }

        else
        {
          v48 = v32;
        }

        goto LABEL_62;
      }

LABEL_61:
      v47 = v44;
      v48 = v32;
LABEL_62:
      v49 = (*(*v48 + 16))(v48, &v113);
      if (v47)
      {
        v50 = v49;
      }

      else
      {
        v50 = 1;
      }

      if (v50)
      {
        v51 = 0;
LABEL_69:
        if (v14)
        {
          ACFUFTABFile::setBootNonce(v48);
        }

        v52 = (*(*v48 + 40))(v48);
        if (v52 && (v53 = CFDataGetTypeID(), v54 = CFGetTypeID(v52), v53 == v54))
        {
          ACFULogging::getLogInstance(v54);
          std::string::basic_string[abi:ne200100]<0>(&v98, "RoseRestoreHost");
          v55 = std::string::append(&v98, "::");
          v56 = *&v55->__r_.__value_.__l.__data_;
          v99.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
          *&v99.__r_.__value_.__l.__data_ = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          v57 = std::string::append(&v99, "copyFirmwareUpdater");
          v58 = *&v57->__r_.__value_.__l.__data_;
          v109 = v57->__r_.__value_.__r.__words[2];
          v108 = v58;
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType();
          if (SHIBYTE(v109) < 0)
          {
            operator delete(v108);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          (*(*v48 + 24))(v48);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v76, "copyFirmware: could not create output data");
          v65 = ACFUError::addError();
          if (v77 < 0)
          {
            operator delete(v76);
          }

          ACFULogging::getLogInstance(v65);
          ACFULogging::handleMessage();
        }

        goto LABEL_80;
      }

      v51 = (**v47)(v47, &v113);
      if (v51)
      {
        if (ACFUFTABFile::addNewFileToFTAB())
        {
          goto LABEL_69;
        }

        std::string::basic_string[abi:ne200100]<0>(&v78, "copyFirmware: could not add 'rrko' object to final ftab");
        v72 = ACFUError::addError();
        if (v79 < 0)
        {
          operator delete(v78);
        }

        ACFULogging::getLogInstance(v72);
        ACFULogging::handleMessage();
LABEL_145:
        v52 = 0;
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v80, "copyFirmware: could not get 'rrko' object from ftab");
      v71 = ACFUError::addError();
      if (v81 < 0)
      {
        operator delete(v80);
      }

      ACFULogging::getLogInstance(v71);
      ACFULogging::handleMessage();
LABEL_141:
      v51 = 0;
      goto LABEL_145;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v96, "copyFirmware: rkos bundle data unavailable");
  v63 = ACFUError::addError();
  if (v97 < 0)
  {
    operator delete(v96);
  }

  ACFULogging::getLogInstance(v63);
  ACFULogging::handleMessage();
  v51 = 0;
  v37 = 0;
  v42 = 0;
  v52 = 0;
  v39 = 0;
  v44 = 0;
  v32 = 0;
  if (cf)
  {
    goto LABEL_80;
  }

LABEL_86:
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (v39)
  {
    ((*v39)[7])(v39);
  }

  if (v44)
  {
    ((*v44)[7])(v44);
  }

  if (v32)
  {
    (*(*v32 + 56))(v32);
  }

  return v52;
}

void sub_299EA5548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (*(v66 - 185) < 0)
  {
    operator delete(*(v66 - 208));
  }

  if (*(v66 - 153) < 0)
  {
    operator delete(*(v66 - 176));
  }

  if (*(v66 - 121) < 0)
  {
    operator delete(*(v66 - 144));
  }

  if (*(v66 - 89) < 0)
  {
    operator delete(*(v66 - 112));
  }

  _Unwind_Resume(a1);
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
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

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F290910, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 3)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 8;
          *v18 = v19;
          v18 += 8;
          v17 += 8;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 61)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 8;
      *v12 = v13;
      v12 += 8;
    }
  }

  v7[1] = v12;
  return result;
}

char *std::vector<__CFString const*>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void *std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 4)
    {
      v20 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v20 - 7);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15 - 7);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 16;
          *v18 = v19;
          v18 += 16;
          v17 += 16;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 60)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<ACFURestoreHost::FileList>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 16;
      *v12 = v13;
      v12 += 16;
    }
  }

  v7[1] = v12;
  return result;
}

char *std::vector<ACFURestoreHost::FileList>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[16 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

uint64_t **std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(uint64_t **result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, a2, a2);
    a2 += 2;
  }

  return result;
}

void sub_299EA5FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__node_assign_unique(uint64_t **a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = a2[1];
    a3[4] = v6;
    a3[5] = v9;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(uint64_t **a1, unint64_t *a2, _OWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4];
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x30uLL);
    *(v10 + 2) = *a3;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

uint64_t **std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__assign_unique<std::pair<__CFString const* const,ACFURestoreHost::DemoteConfig> const*>(uint64_t **result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, a2, a2);
    a2 += 2;
  }

  return result;
}

void sub_299EA6538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__node_assign_unique(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 32) = v6;
    *(a3 + 40) = *(a2 + 4);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F290918, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

CFStringRef RoseBootstrappedPreflight::copyUnsignedFirmwarePath(RoseBootstrappedPreflight *this)
{
  RoseTarget = RoseTargetMap::getRoseTarget(this);
  if (!RoseTarget)
  {
    v3 = "%s::%s: failed to get target\n";
LABEL_6:
    RoseBootstrappedPreflight::copyUnsignedFirmwarePath(v3);
    return 0;
  }

  result = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"/usr/standalone/firmware/Rose/%@/ftab.bin", RoseTarget);
  if (!result)
  {
    v3 = "%s::%s: failed to create path\n";
    goto LABEL_6;
  }

  return result;
}

std::__shared_weak_count *RoseBootstrappedPreflight::bootstrappedPreflight(RoseBootstrappedPreflight *this, const __CFString *a2, __CFString *a3, const __CFString *a4)
{
  v135 = 1;
  v133 = 0;
  v134 = 0;
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  cf = 0;
  v123 = -1;
  if (a2)
  {
    v5 = 0;
    allocator = *MEMORY[0x29EDB8ED8];
    v6 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], a2, 0);
    v99 = v6;
  }

  else
  {
    v7 = RoseBootstrappedPreflight::copyUnsignedFirmwarePath(this);
    v8 = v7;
    if (!v7)
    {
      ACFULogging::getLogInstance(0);
      v22 = 0;
      ACFULogging::handleMessage();
      __handle = 0;
      value = 0;
      v99 = 0;
      theDict = 0;
      v28 = 0;
      v29 = 0;
      v102 = 0;
      v96 = 0;
      v59 = 0;
      URLByAppendingStrings = 0;
      v61 = 0;
      goto LABEL_119;
    }

    allocator = *MEMORY[0x29EDB8ED8];
    v6 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], v7, 0);
    v99 = v6;
    v5 = v8;
  }

  v96 = v5;
  if (!v99)
  {
    ACFULogging::getLogInstance(v6);
    v22 = 0;
    ACFULogging::handleMessage();
    __handle = 0;
    value = 0;
    v99 = 0;
    theDict = 0;
    v28 = 0;
    v29 = 0;
    v102 = 0;
    v59 = 0;
    URLByAppendingStrings = 0;
    v61 = 0;
    goto LABEL_119;
  }

  DataFromFileURL = AMSupportCreateDataFromFileURL();
  if (DataFromFileURL)
  {
    ACFULogging::getLogInstance(DataFromFileURL);
    v10 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    v144 = "/usr/standalone/firmware/Rose";
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v138, &v144);
    MEMORY[0x29C2B52C0](&__ns, &v138, 0, 0);
    if (*(&v138.__rec_ + 7) < 0)
    {
      operator delete(v138.__imp_.__ptr_);
    }

    rep = __ns.__rep_;
    v12 = v141;
    if (v141)
    {
      atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v141;
      v138.__imp_.__ptr_ = rep;
      v138.__imp_.__cntrl_ = v12;
      v138.__rec_ = v142;
      if (v141)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    else
    {
      v138.__imp_.__ptr_ = __ns.__rep_;
      v138.__imp_.__cntrl_ = 0;
      v138.__rec_ = v142;
    }

    while (v138.__imp_.__ptr_)
    {
      v26 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&v138);
      ACFULogging::getLogInstance(v26);
      if (v26[23] < 0)
      {
        v27 = *v26;
      }

      ACFULogging::handleMessage();
      std::__fs::filesystem::recursive_directory_iterator::__increment(&v138, 0);
    }

    if (v138.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v138.__imp_.__cntrl_);
    }

    if (v141)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    }

    v22 = 0;
    goto LABEL_50;
  }

  ACFUDiagnostics::create(a3, 1);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(&v129, &__ns.__rep_);
  v14 = __ns.__rep_;
  __ns.__rep_ = 0;
  if (v14)
  {
    v15 = MEMORY[0x29C2B5090]();
    operator delete(v15);
  }

  if (!v129)
  {
    ACFULogging::getLogInstance(v14);
LABEL_249:
    v22 = 0;
    ACFULogging::handleMessage();
    __handle = 0;
    value = 0;
    theDict = 0;
    v28 = 0;
    v29 = 0;
    v102 = 0;
    v59 = 0;
    URLByAppendingStrings = 0;
    v61 = 0;
    goto LABEL_119;
  }

  v121 = v129;
  v122 = v130;
  if (v130)
  {
    atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RoseTransport::create(&v121, 0, 0, &__ns);
  std::shared_ptr<RoseTransport>::operator=[abi:ne200100]<RoseTransport,std::default_delete<RoseTransport>,0>(&v127, &__ns.__rep_);
  v16 = __ns.__rep_;
  __ns.__rep_ = 0;
  if (v16)
  {
    (*(*v16 + 64))(v16);
  }

  if (v122)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v122);
  }

  if (!v127)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_249;
  }

  PowerState = RoseTransport::getPowerState(v127, &v135);
  if (PowerState || !v135 && (PowerState = RoseTransport::setPowerState(v127, 1), PowerState))
  {
    ACFULogging::getLogInstance(PowerState);
    goto LABEL_249;
  }

  v18 = 0;
  v19 = 1;
  do
  {
    ACFULogging::getLogInstance(PowerState);
    ACFULogging::handleMessage();
    v20 = (*(*v127 + 4))(v127);
    if (v20)
    {
      ACFULogging::getLogInstance(v20);
      ACFULogging::handleMessage();
      __handle = 0;
      value = 0;
      theDict = 0;
      v28 = 0;
      v29 = 0;
      v102 = 0;
      v59 = 0;
      URLByAppendingStrings = 0;
      v61 = 0;
      v22 = v18;
      goto LABEL_119;
    }

    (**v127)(&__ns);
    v21 = __ns.__rep_;
    v22 = v141;
    if (v141)
    {
      atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v23 = v142;
    PowerState = v141;
    if (v141)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    }

    if (!v23)
    {
      break;
    }

    v18 = v22;
    v24 = v19++ >= 5;
  }

  while (!v24);
  if (v23)
  {
    goto LABEL_230;
  }

  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *(v21 + 176);
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    if (v25)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_55;
    }

    goto LABEL_230;
  }

  if ((*(v21 + 176) & 1) == 0)
  {
    goto LABEL_230;
  }

LABEL_55:
  PowerState = ACFUCommon::Parameter::GetDataAsType<unsigned short>(v21 + 168, &v123);
  v30 = PowerState;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if ((v30 & 1) == 0)
  {
LABEL_230:
    ACFULogging::getLogInstance(PowerState);
LABEL_233:
    ACFULogging::handleMessage();
LABEL_50:
    value = 0;
LABEL_51:
    theDict = 0;
LABEL_52:
    v28 = 0;
    v29 = 0;
LABEL_53:
    v102 = 0;
    __handle = 0;
LABEL_116:
    v59 = 0;
LABEL_117:
    URLByAppendingStrings = 0;
LABEL_118:
    v61 = 0;
    goto LABEL_119;
  }

  ACFUFTABFile::create();
  std::shared_ptr<ACFUFTABFile>::operator=[abi:ne200100]<ACFUFTABFile,std::default_delete<ACFUFTABFile>,0>(&v133, &__ns.__rep_);
  v31 = __ns.__rep_;
  __ns.__rep_ = 0;
  if (v31)
  {
    (*(*v31 + 56))(v31);
  }

  v32 = v133;
  if (!v133)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_233;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
    v32 = v133;
  }

  PowerState = (*(*v32 + 40))(v32);
  cf = PowerState;
  if (!PowerState)
  {
    goto LABEL_230;
  }

  v33 = CFGetTypeID(PowerState);
  PowerState = CFDataGetTypeID();
  if (v33 != PowerState)
  {
    goto LABEL_230;
  }

  v34 = v134;
  v133 = 0;
  v134 = 0;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  GetRoseTatsuTagToFileNameMap(v119);
  RTKitFirmware::create();
  std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v131, &__ns.__rep_);
  v35 = __ns.__rep_;
  __ns.__rep_ = 0;
  if (v35)
  {
    (*(*v35 + 56))(v35);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v119, v120);
  if (!v131)
  {
    goto LABEL_232;
  }

  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = (**v21)(v21);
  value = v36;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (!value)
  {
LABEL_232:
    ACFULogging::getLogInstance(v36);
    goto LABEL_233;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v38 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v39 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v40 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v41 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v42 = v41;
  if (Mutable && v38 && v39 && v40 && v41)
  {
    v43 = *MEMORY[0x29EDB8F00];
    CFDictionaryAddValue(v39, @"Trusted", *MEMORY[0x29EDB8F00]);
    CFDictionaryAddValue(v40, @"Trusted", v43);
    CFDictionaryAddValue(v42, @"Trusted", v43);
    CFDictionaryAddValue(v38, @"Rap,RTKitOS", v39);
    CFDictionaryAddValue(v38, @"Rap,SoftwareBinaryDsp1", v40);
    CFDictionaryAddValue(v38, @"Rap,RTKitIOConfig", v42);
    CFDictionaryAddValue(Mutable, @"BuildIdentity", v38);
    CFDictionaryAddValue(Mutable, @"DeviceInfo", value);
    goto LABEL_81;
  }

  ACFULogging::getLogInstance(v41);
  v44 = ACFULogging::handleMessage();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  theDict = 0;
  if (v38)
  {
LABEL_81:
    CFRelease(v38);
    theDict = Mutable;
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (!theDict)
  {
    ACFULogging::getLogInstance(v44);
    ACFULogging::handleMessage();
    goto LABEL_51;
  }

  v125 = ACFUFirmware::copyFWContainer(v131);
  CFDictionarySetValue(theDict, @"FirmwareData", v125);
  v144 = 0;
  v145 = 0;
  LOWORD(v142) = 0;
  __ns.__rep_ = @"Rap,ProductionMode";
  v141 = @"Rap,SecurityMode";
  v45 = RoseRestoreHost::create(theDict, @"RoseBootstrappedPreflight", &v139);
  v46 = v139;
  if (!v139)
  {
    ACFULogging::getLogInstance(v45);
    v51 = ACFULogging::handleMessage();
LABEL_240:
    ACFULogging::getLogInstance(v51);
    ACFULogging::handleMessage();
    goto LABEL_52;
  }

  v47 = CFDictionaryGetValue(theDict, @"FirmwareData");
  v48 = v47;
  if (!v47)
  {
    goto LABEL_245;
  }

  TypeID = CFDataGetTypeID();
  v47 = CFGetTypeID(v48);
  if (TypeID != v47)
  {
    goto LABEL_245;
  }

  GetRoseTatsuTagToFileNameMap(&v138);
  RTKitFirmware::create();
  std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v144, &v139);
  v50 = v139;
  v139 = 0;
  if (v50)
  {
    (*(*v50 + 56))(v50);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v138, v138.__imp_.__cntrl_);
  if (!v144)
  {
    goto LABEL_245;
  }

  v136 = v144;
  v137 = v145;
  if (v145)
  {
    atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = (*(*v46 + 8))(v46, &v136, &__ns);
  v47 = v137;
  if (v137)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v137);
  }

  if (!v29)
  {
LABEL_245:
    ACFULogging::getLogInstance(v47);
    ACFULogging::handleMessage();
    v29 = 0;
  }

  (*(*v46 + 24))(v46);
  v51 = v145;
  if (v145)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v145);
  }

  if (!v29)
  {
    goto LABEL_240;
  }

  v52 = dlopen("/usr/lib/libauthinstall.dylib", 1);
  __handle = v52;
  if (!v52)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    v28 = 0;
    goto LABEL_53;
  }

  v53 = dlsym(v52, "AMAuthInstallCreate");
  v54 = dlerror();
  if (v54 || !v53 || (v55 = dlsym(__handle, "AMAuthInstallRequestSendSync"), (v54 = dlerror()) != 0) || !v55)
  {
    ACFULogging::getLogInstance(v54);
LABEL_247:
    ACFULogging::handleMessage();
    v28 = 0;
    v102 = 0;
    goto LABEL_116;
  }

  v56 = v53(allocator);
  v102 = v56;
  if (!v56)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_247;
  }

  v57 = 1;
  while (1)
  {
    ACFULogging::getLogInstance(v56);
    ACFULogging::handleMessage();
    v58 = v55(v102, v29, &v126);
    v56 = v126;
    if (!v58)
    {
      break;
    }

    if (v126)
    {
      CFRelease(v126);
      v126 = 0;
    }

    __ns.__rep_ = 4000000000;
    std::this_thread::sleep_for (&__ns);
    if (++v57 == 6)
    {
      goto LABEL_114;
    }
  }

  if (!v126 || (v56 = CFDictionaryGetValue(v126, @"Rap,Ticket"), (v63 = v56) == 0) || (v64 = CFDataGetTypeID(), v56 = CFGetTypeID(v63), v64 != v56))
  {
LABEL_114:
    ACFULogging::getLogInstance(v56);
    ACFULogging::handleMessage();
LABEL_115:
    v28 = 0;
    goto LABEL_116;
  }

  (*(*v131 + 72))(v131, v63);
  v65 = v127;
  v117 = v131;
  v118 = v132;
  if (v132)
  {
    atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v66 = (*(*v65 + 2))(v65, &v117);
  v67 = v118;
  if (v118)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v118);
  }

  v94 = v29;
  if (v66)
  {
    ACFULogging::getLogInstance(v67);
    ACFULogging::handleMessage();
    v28 = v128;
    v116[0] = v127;
    v116[1] = v128;
    if (v128)
    {
      atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v92 = v130;
    v115[0] = v129;
    v115[1] = v130;
    if (v130)
    {
      atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    saveDebugInfo(v116, v115);
    goto LABEL_265;
  }

  v68 = (*(*v127 + 3))(v127);
  if (v68)
  {
    ACFULogging::getLogInstance(v68);
    ACFULogging::handleMessage();
    v28 = v128;
    v114[0] = v127;
    v114[1] = v128;
    if (v128)
    {
      atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v92 = v130;
    v113[0] = v129;
    v113[1] = v130;
    if (v130)
    {
      atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    saveDebugInfo(v114, v113);
    goto LABEL_265;
  }

  v69 = 1;
  v70 = v22;
  do
  {
    ACFULogging::getLogInstance(v68);
    ACFULogging::handleMessage();
    (**v127)(&__ns);
    v71 = __ns.__rep_;
    v22 = v141;
    if (v141)
    {
      atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    v72 = v142;
    v68 = v141;
    if (v141)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    }

    if (!v72)
    {
      break;
    }

    v70 = v22;
    v24 = v69++ >= 5;
  }

  while (!v24);
  if (v72)
  {
    ACFULogging::getLogInstance(v68);
    ACFULogging::handleMessage();
    v28 = v128;
    v112[0] = v127;
    v112[1] = v128;
    if (v128)
    {
      atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v92 = v130;
    v111[0] = v129;
    v111[1] = v130;
    if (v130)
    {
      atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    saveDebugInfo(v112, v111);
LABEL_265:
    if (v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      v28 = 0;
    }

    v59 = 0;
    URLByAppendingStrings = 0;
    v61 = 0;
    goto LABEL_295;
  }

  if (!this)
  {
    ACFULogging::getLogInstance(v68);
    v29 = v94;
    ACFULogging::handleMessage();
    v59 = 0;
    URLByAppendingStrings = 0;
    v61 = 0;
    goto LABEL_216;
  }

  ACFULogging::getLogInstance(v68);
  v29 = v94;
  ACFUCommon::stringFromCFString(&__ns.__rep_, this, v73);
  if ((v143 & 0x80u) == 0)
  {
    v75 = v143;
  }

  else
  {
    v75 = v141;
  }

  if (v75)
  {
    ACFUCommon::stringFromCFString(&v138, this, v74);
  }

  ACFULogging::handleMessage();
  if (v75 && *(&v138.__rec_ + 7) < 0)
  {
    operator delete(v138.__imp_.__ptr_);
  }

  if (v143 < 0)
  {
    operator delete(__ns.__rep_);
  }

  v76 = CFURLCreateWithString(allocator, this, 0);
  v59 = v76;
  if (!v76)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_115;
  }

  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v77 = *(v71 + 80);
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    if (v77)
    {
      v78 = v131;
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_197;
    }

    goto LABEL_272;
  }

  if (*(v71 + 80) != 1)
  {
    goto LABEL_272;
  }

  v78 = v131;
LABEL_197:
  (*(*v78 + 16))(v78, *(v71 + 72));
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v76 = RTKitFirmware::saveFirmwareToPath(v131, v59);
  if (v76 || (v76 = (*(*v127 + 4))(v127), v76))
  {
LABEL_272:
    ACFULogging::getLogInstance(v76);
LABEL_275:
    ACFULogging::handleMessage();
    v28 = 0;
    goto LABEL_117;
  }

  if (v125)
  {
    CFRelease(v125);
    v125 = 0;
  }

  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(this, @"ftab.bin", v79);
  if (!URLByAppendingStrings)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_275;
  }

  v80 = AMSupportCreateDataFromFileURL();
  if (v80)
  {
    ACFULogging::getLogInstance(v80);
    ACFULogging::handleMessage();
LABEL_278:
    v28 = 0;
    goto LABEL_118;
  }

  GetRoseTatsuTagToFileNameMap(v109);
  RTKitFirmware::create();
  std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v131, &__ns.__rep_);
  v81 = __ns.__rep_;
  __ns.__rep_ = 0;
  if (v81)
  {
    (*(*v81 + 56))(v81);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v109, v110);
  if (!v131 || (v82 = (*(*v131 + 32))(v131), (v61 = v82) == 0))
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_278;
  }

  v83 = v127;
  BytePtr = CFDataGetBytePtr(v82);
  Length = CFDataGetLength(v61);
  v86 = (*(*v83 + 1))(v83, BytePtr, Length);
  if (v86)
  {
    ACFULogging::getLogInstance(v86);
    ACFULogging::handleMessage();
    goto LABEL_280;
  }

  v87 = v127;
  v107 = v131;
  v108 = v132;
  if (v132)
  {
    atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v88 = (*(*v87 + 2))(v87, &v107);
  v89 = v108;
  if (v108)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v108);
  }

  if (v88)
  {
    ACFULogging::getLogInstance(v89);
    ACFULogging::handleMessage();
    v28 = v128;
    v106[0] = v127;
    v106[1] = v128;
    if (v128)
    {
      atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = v130;
    v105[0] = v129;
    v105[1] = v130;
    if (v130)
    {
      atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    saveDebugInfo(v106, v105);
    goto LABEL_291;
  }

  v90 = (*(*v127 + 3))(v127);
  if (v90)
  {
    ACFULogging::getLogInstance(v90);
    ACFULogging::handleMessage();
    v28 = v128;
    v104[0] = v127;
    v104[1] = v128;
    if (v128)
    {
      atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = v130;
    v103[0] = v129;
    v103[1] = v130;
    if (v130)
    {
      atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    saveDebugInfo(v104, v103);
LABEL_291:
    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      v28 = 0;
    }

LABEL_295:
    v29 = v94;
    goto LABEL_119;
  }

LABEL_216:
  v91 = (*(*v127 + 4))(v127);
  if (v91)
  {
    ACFULogging::getLogInstance(v91);
    ACFULogging::handleMessage();
LABEL_280:
    v28 = 0;
    goto LABEL_119;
  }

  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = (**v71)(v71);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

LABEL_119:
  if (!v135 && v127)
  {
    RoseTransport::setPowerState(v127, 0);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v125)
  {
    CFRelease(v125);
    v125 = 0;
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (URLByAppendingStrings)
  {
    CFRelease(URLByAppendingStrings);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v126)
  {
    CFRelease(v126);
    v126 = 0;
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (__handle)
  {
    dlclose(__handle);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v128)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v128);
  }

  if (v130)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v130);
  }

  if (v132)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v132);
  }

  if (v134)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v134);
  }

  return v28;
}

void sub_299EA7E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v59 = *(v57 - 248);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  v60 = *(v57 - 232);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  v61 = *(v57 - 216);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v62 = *(v57 - 200);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2024F38;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<RoseTransport>::operator=[abi:ne200100]<RoseTransport,std::default_delete<RoseTransport>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2024F98;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<ACFUFTABFile>::operator=[abi:ne200100]<ACFUFTABFile,std::default_delete<ACFUFTABFile>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2024FF8;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2024ED8;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void saveDebugInfo(uint64_t *a1, ACFUDiagnostics **a2)
{
  v2 = *a1;
  if (v2 && *a2)
  {
    v5 = 0;
    v6 = 0;
    v4 = (*(*v2 + 40))(v2, &v5, 1);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (!v4)
    {
      ACFUDiagnostics::perform(*a2);
    }
  }
}

void sub_299EA83B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_299EA8424(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_299EA859C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
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

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
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
    v1 = MEMORY[0x29C2B5090]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<RoseTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RoseTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RoseTransport  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ACFUFTABFile  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ACFUFTABFile  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ACFUFTABFile  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void RoseCapabilities::create(RoseCapabilities *this@<X0>, RoseCapabilities **a2@<X8>)
{
  v2 = this;
  v4 = operator new(4uLL);
  std::shared_ptr<RoseCapabilities>::shared_ptr[abi:ne200100]<RoseCapabilities,0>(a2, v4);
  if (*a2)
  {
    v5 = RoseCapabilities::init(*a2, v2);
    if ((v5 & 1) == 0)
    {
      ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage();
      v6 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      if (v6)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }
}

void sub_299EA8A00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseCapabilities::init(RoseCapabilities *this, int a2)
{
  if (a2 == 8228)
  {
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    result = 1;
    *this = 1;
  }

  else if (a2 == 8198)
  {
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    *this = 0;
    return 1;
  }

  else
  {
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    return 0;
  }

  return result;
}

uint64_t RoseCapabilities::supportsRoseSEPairing(RoseCapabilities *this, int a2)
{
  v2 = *this;
  HIDWORD(v4) = a2 - 8;
  LODWORD(v4) = a2 - 8;
  v3 = v4 >> 1;
  v5 = v3 > 0x10;
  v6 = 0x1F141u >> v3;
  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  LOBYTE(v7) = (a2 & 0xFC) == 8;
  if (v2)
  {
    v7 = *this;
  }

  if (v2 == 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return v8 & 1;
}

void RoseCapabilities::supportedFDRDataClassesForCalibrationType(_DWORD *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        ACFUCommon::FDRDataClass::FDRDataClass(v5, "rMCl");
        a3->__r_.__value_.__r.__words[0] = 0;
        a3->__r_.__value_.__l.__size_ = 0;
        a3->__r_.__value_.__r.__words[2] = 0;
        std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v5, &v9, 1uLL);
        goto LABEL_13;
      }

LABEL_9:
      a3->__r_.__value_.__r.__words[0] = 0;
      a3->__r_.__value_.__l.__size_ = 0;
      a3->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_17;
    }

LABEL_12:
    ACFUCommon::FDRDataClass::FDRDataClass(v5, "rSCl");
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v5, &v9, 1uLL);
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    ACFUCommon::FDRDataClass::FDRDataClass(v5, "rMNB", "rMC2");
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v5, &v9, 1uLL);
    goto LABEL_13;
  }

  if (a2 == 1)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  ACFUCommon::FDRDataClass::FDRDataClass(v5, "rMUB", "rMC2");
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v5, &v9, 1uLL);
LABEL_13:
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

LABEL_17:
  v4 = *MEMORY[0x29EDCA608];
}

void sub_299EA8D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ACFUCommon::FDRDataClass::~FDRDataClass(va);
  _Unwind_Resume(a1);
}

void ACFUCommon::FDRDataClass::~FDRDataClass(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

__CFString *RoseCapabilities::chipNameForCertification(RoseCapabilities *this)
{
  if (*this)
  {
    return @"R2";
  }

  else
  {
    return @"R1";
  }
}

ACFUCommon::FDRDataClass *ACFUCommon::FDRDataClass::FDRDataClass(ACFUCommon::FDRDataClass *this, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 3, "");
  return this;
}

void sub_299EA8DF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

ACFUCommon::FDRDataClass *ACFUCommon::FDRDataClass::FDRDataClass(ACFUCommon::FDRDataClass *this, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return this;
}

void sub_299EA8E48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<RoseCapabilities>::shared_ptr[abi:ne200100]<RoseCapabilities,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2025058;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299EA8EBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

std::string *std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(std::string *result, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<ACFUCommon::FDRDataClass>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_299EA8FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<ACFUCommon::FDRDataClass>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[48 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass*>(uint64_t a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ACFUCommon::FDRDataClass::FDRDataClass(v4, v6);
      v6 = (v6 + 48);
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *ACFUCommon::FDRDataClass::FDRDataClass(std::string *this, const ACFUCommon::FDRDataClass *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_299EA9188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t RoseEvent::create@<X0>(ACFULogging *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  if (!a1 || a2 <= 3)
  {
    ACFULogging::getLogInstance(a1);
    return ACFULogging::handleMessage();
  }

  v8 = *a1 & 0x3FF;
  switch(v8)
  {
    case 525:
      v9 = operator new(0x18uLL);
      v9[1] = 0;
      v10 = &unk_2A2025160;
      break;
    case 144:
      v9 = operator new(0x18uLL);
      v9[1] = 0;
      v10 = &unk_2A2025130;
      break;
    case 128:
      v9 = operator new(0x18uLL);
      v9[1] = 0;
      v10 = &unk_2A2025100;
      break;
    default:
      ACFULogging::getLogInstance(a1);
      v13 = *a1 & 0x3FF;
      v12 = ACFULogging::handleMessage();
      ACFULogging::getLogInstance(v12);
      return ACFULogging::handleMessage();
  }

  *v9 = v10;
  *a4 = v9;
  result = RoseEvent::init(v9, a1, a2, a3);
  if ((result & 1) == 0)
  {
    ACFULogging::getLogInstance(result);
    return ACFULogging::handleMessage();
  }

  return result;
}

uint64_t RoseEvent::init(uint64_t a1, const UInt8 *a2, CFIndex a3, int a4)
{
  if (a2 && a3)
  {
    v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], a2, a3);
    *(a1 + 8) = v6;
    if (v6)
    {
      *(a1 + 16) = a4;
      return 1;
    }

    RoseEvent::init(0);
  }

  else
  {
    RoseEvent::init(a1);
  }

  return 0;
}

uint64_t RoseEvent::validate(CFDataRef *this)
{
  BytePtr = CFDataGetBytePtr(this[1]);
  Length = CFDataGetLength(this[1]);
  if (!BytePtr)
  {
    RoseEvent::validate(Length);
    return 0;
  }

  v4 = Length - 113;
  ACFULogging::getLogInstance(Length);
  if (v4 <= 0xFFFFFFFFFFFFFF94)
  {
    ACFULogging::handleMessage();
    return 0;
  }

  *(&v11.__r_.__value_.__s + 23) = 9;
  strcpy(&v11, "RoseEvent");
  v5 = std::string::append(&v11, "::");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v12, "validate");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v14 = v7->__r_.__value_.__r.__words[2];
  v13 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = ACFULogging::handleMessageBinary();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if ((~*BytePtr & 0xC000) != 0)
  {
    RoseEvent::validate(v9);
    return 0;
  }

  return 1;
}

void sub_299EA96E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void RoseEvent::~RoseEvent(RoseEvent *this)
{
  *this = &unk_2A20250D0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

uint64_t RoseCommandCompleteEvent::validate(CFDataRef *a1, int a2)
{
  Length = CFDataGetLength(a1[1]);
  BytePtr = CFDataGetBytePtr(a1[1]);
  v6 = (**a1)(a1);
  if (v6)
  {
    if ((*BytePtr & 0x3C00) == 0x800 && Length == 10)
    {
      v9 = BytePtr[3];
      v8 = (BytePtr + 3);
      v10 = (v8 - 2);
      if (v9 == a2 && !*v10)
      {
        (*(*a1 + 3))(a1);
        return 1;
      }

      RoseCommandCompleteEvent::validate(v8, v10, a1);
    }

    else
    {
      RoseCommandCompleteEvent::validate(BytePtr);
    }
  }

  else
  {
    RoseCommandCompleteEvent::validate(v6);
  }

  return 0;
}

uint64_t RoseCommandCompleteEvent::log(CFDataRef *this)
{
  BytePtr = CFDataGetBytePtr(this[1]);
  if (!BytePtr)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  v3 = BytePtr;
  BytePtr = CFDataGetLength(this[1]);
  if (BytePtr != 10)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  ACFULogging::getLogInstance(0xA);
  v7 = *v3 & 0x3FF;
  v4 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v4);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v6 = *(v3 + 2);
  return ACFULogging::handleMessage();
}

uint64_t RoseFDRTrustEvaluationCompleteEvent::validate(CFDataRef *this)
{
  Length = CFDataGetLength(this[1]);
  BytePtr = CFDataGetBytePtr(this[1]);
  v4 = RoseEvent::validate(this);
  if (v4)
  {
    if ((*BytePtr & 0x3FFF) == 0x890 && Length == 48)
    {
      v6 = *(BytePtr + 6);
      v5 = (BytePtr + 6);
      v7 = (v5 - 2);
      if (!v6 && !*v7)
      {
        (*(*this + 3))(this);
        return 1;
      }

      RoseFDRTrustEvaluationCompleteEvent::validate(v7, v5, this);
    }

    else
    {
      RoseCommandCompleteEvent::validate(BytePtr);
    }
  }

  else
  {
    RoseCommandCompleteEvent::validate(v4);
  }

  return 0;
}

uint64_t RoseFDRTrustEvaluationCompleteEvent::log(CFDataRef *this)
{
  BytePtr = CFDataGetBytePtr(this[1]);
  if (!BytePtr)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  v3 = BytePtr;
  BytePtr = CFDataGetLength(this[1]);
  if (BytePtr != 48)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  ACFULogging::getLogInstance(0x30);
  v8 = *v3 >> 14;
  v4 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v4);
  v6 = *(v3 + 2);
  v7 = *(v3 + 6);
  return ACFULogging::handleMessage();
}

uint64_t RoseInitDoneEvent::validate(CFDataRef *this)
{
  Length = CFDataGetLength(this[1]);
  BytePtr = CFDataGetBytePtr(this[1]);
  v4 = RoseEvent::validate(this);
  if ((v4 & 1) == 0)
  {
    RoseCommandCompleteEvent::validate(v4);
    return 0;
  }

  v5 = *(this + 4);
  if (v5 == 1)
  {
    if ((*BytePtr & 0x3C00) == 0 && (*BytePtr & 0x3FF) == 0x20D && Length >= 0x70 && Length < 129)
    {
      v8 = *(BytePtr + 2);
      v6 = (BytePtr + 4);
      if (v8)
      {
        goto LABEL_10;
      }

LABEL_16:
      (*(*this + 3))(this);
      return 1;
    }

LABEL_21:
    RoseCommandCompleteEvent::validate(BytePtr);
    return 0;
  }

  if (v5)
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    return 0;
  }

  if ((*BytePtr & 0x3C00) != 0 || (*BytePtr & 0x3FF) != 0x20D || Length < 0x46 || Length > 128 || Length != BytePtr[42] + 43)
  {
    goto LABEL_21;
  }

  v7 = *(BytePtr + 2);
  v6 = (BytePtr + 4);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_10:
  RoseInitDoneEvent::validate(v6);
  return 0;
}

uint64_t RoseInitDoneEvent::log(RoseInitDoneEvent *this)
{
  v2 = *(this + 4);
  if (v2 != 1)
  {
    if (v2)
    {
      ACFULogging::getLogInstance(this);
      return ACFULogging::handleMessage();
    }

    BytePtr = CFDataGetBytePtr(*(this + 1));
    if (BytePtr)
    {
      v4 = BytePtr;
      BytePtr = CFDataGetLength(*(this + 1));
      if (BytePtr > 0x45)
      {
        ACFULogging::getLogInstance(BytePtr);
        v9 = *v4 & 0x3FF;
        v5 = ACFULogging::handleMessage();
        ACFULogging::getLogInstance(v5);
        v8 = *(v4 + 2);
        ACFULogging::handleMessage();

        return RoseCommand::parsePingInfo(v4 + 6);
      }
    }

    return RoseCommandCompleteEvent::log(BytePtr);
  }

  BytePtr = CFDataGetBytePtr(*(this + 1));
  if (!BytePtr)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  v7 = BytePtr;
  BytePtr = CFDataGetLength(*(this + 1));
  if (BytePtr <= 0x6F)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  ACFULogging::getLogInstance(BytePtr);
  v10 = *v7 & 0x3FF;
  ACFULogging::handleMessage();

  return RoseCommand::parsePingInfo(v7 + 2);
}

void RoseCommandCompleteEvent::~RoseCommandCompleteEvent(RoseCommandCompleteEvent *this)
{
  RoseEvent::~RoseEvent(this);

  operator delete(v1);
}

void RoseFDRTrustEvaluationCompleteEvent::~RoseFDRTrustEvaluationCompleteEvent(RoseFDRTrustEvaluationCompleteEvent *this)
{
  RoseEvent::~RoseEvent(this);

  operator delete(v1);
}

void RoseInitDoneEvent::~RoseInitDoneEvent(RoseInitDoneEvent *this)
{
  RoseEvent::~RoseEvent(this);

  operator delete(v1);
}

uint64_t OUTLINED_FUNCTION_1(ACFULogging *a1)
{

  return ACFULogging::getLogInstance(a1);
}

BOOL RoseCommand::parsePingInfo(uint64_t a1)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v2 = operator new(0x28uLL);
  v30 = v2;
  v31 = xmmword_299EBDA60;
  v3 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v3;
  *(v2 + 32) = 0;
  v4 = *(a1 + 32);
  ACFULogging::getLogInstance(v2);
  v23 = *(a1 + 34);
  v20 = *(a1 + 32);
  v5 = ACFULogging::handleMessage();
  v6 = *(a1 + 36);
  if (v6 <= 0x1A)
  {
    ACFULogging::getLogInstance(v5);
    v19 = *(a1 + 36);
    ACFULogging::handleMessage();
  }

  else
  {
    v7 = *(a1 + 41);
    v8 = *(a1 + 49);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }

    v32 = v7;
    v33 = v8;
    LOBYTE(v34) = 0;
    HIBYTE(v34) = 16;
    ACFULogging::getLogInstance(v5);
    v24 = *(a1 + 59);
    v25 = *(a1 + 60);
    v22 = *(a1 + 57);
    v17 = *(a1 + 37);
    v21 = *(a1 + 39);
    v9 = ACFULogging::handleMessage();
    if (*(a1 + 36) >= 0x1Cu)
    {
      ACFULogging::getLogInstance(v9);
      v18 = *(a1 + 36) - 27;
      v10 = ACFULogging::handleMessage();
      ACFULogging::getLogInstance(v10);
      std::string::basic_string[abi:ne200100]<0>(&v26, "RoseCommand");
      v11 = std::string::append(&v26, "::");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v27, "parsePingInfo");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v29 = v13->__r_.__value_.__r.__words[2];
      *__p = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = *(a1 + 36);
      ACFULogging::handleMessageBinary();
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  return v6 > 0x1A;
}

void sub_299EAA1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseCommand::parsePingInfo(unsigned __int16 *a1)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v2 = operator new(0x28uLL);
  v28 = v2;
  v29 = xmmword_299EBDA60;
  v3 = *(a1 + 9);
  *v2 = *(a1 + 1);
  v2[1] = v3;
  *(v2 + 32) = 0;
  v4 = a1[17];
  ACFULogging::getLogInstance(v2);
  v21 = a1[18];
  v18 = a1[17];
  v16 = *a1;
  v5 = ACFULogging::handleMessage();
  v6 = *(a1 + 21);
  v7 = *(a1 + 25);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  v30 = v6;
  v31 = v7;
  LOBYTE(v32) = 0;
  HIBYTE(v32) = 16;
  ACFULogging::getLogInstance(v5);
  v8 = a1[19];
  v22 = *(a1 + 61);
  v23 = *(a1 + 65);
  v19 = a1[29];
  v20 = *(a1 + 60);
  v17 = a1[20];
  v9 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v9);
  v10 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v10);
  std::string::basic_string[abi:ne200100]<0>(&v24, "RoseCommand");
  v11 = std::string::append(&v24, "::");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v25, "parsePingInfo");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  return 1;
}

void sub_299EAA468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (*(v36 - 49) < 0)
  {
    operator delete(*(v36 - 72));
  }

  _Unwind_Resume(exception_object);
}

void *RoseCommand::create(int a1, int a2, unint64_t a3, char a4)
{
  v8 = operator new(0x30uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(v8 + 6) = a2;
  *(v8 + 7) = a1;
  *(v8 + 32) = a4;
  v8[5] = 0;
  v9 = RoseCommand::init(v8, a3);
  if (!v9)
  {
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    if (*v8)
    {
      operator delete(*v8);
    }

    operator delete(v8);
    return 0;
  }

  return v8;
}

uint64_t RoseCommand::RoseCommand(uint64_t result, int a2, int a3, char a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a3;
  *(result + 28) = a2;
  *(result + 32) = a4;
  *(result + 40) = 0;
  return result;
}

BOOL RoseCommand::init(RoseCommand *this, unint64_t a2)
{
  if (a2 >= 0x2D)
  {
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
  }

  else
  {
    *(this + 5) = a2 + 4;
    v8 = 0;
    std::vector<unsigned char>::vector[abi:ne200100](&v9, a2 + 4, &v8);
    v4 = *this;
    if (*this)
    {
      *(this + 1) = v4;
      operator delete(v4);
    }

    v5 = v9;
    *this = v9;
    *(this + 2) = v10;
    v6 = *v5 & 0xFFFFC3FF | ((*(this + 7) & 0xF) << 10);
    *v5 = v6;
    *v5 = v6 & 0xFFFF3C00 | *(this + 6) & 0x3FF | 0x4000;
  }

  return a2 < 0x2D;
}

void RoseCommand::~RoseCommand(RoseCommand *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

BOOL RoseCommand::setPayloadLength(RoseCommand *this, uint64_t a2)
{
  v2 = a2 + 4;
  if ((a2 + 4) <= 0x30)
  {
    v4 = *(this + 1) - *this;
    if (v2 > v4)
    {
      v6 = 0;
      std::vector<unsigned char>::__append(this, v2 - v4, &v6);
    }

    *(this + 5) = v2;
  }

  return v2 < 0x31;
}

uint64_t RoseCommand::validateResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 113) <= 0xFFFFFFFFFFFFFF94)
  {
    ACFULogging::getLogInstance(a1);
LABEL_9:
    ACFULogging::handleMessage();
    return 0;
  }

  if (((*a2 >> 10) & 0xF) != *(a1 + 28) || ((*a2 & 0xC000) == 0x8000 ? (v5 = (*a2 & 0x3FF) == *(a1 + 24)) : (v5 = 0), !v5))
  {
    ACFULogging::getLogInstance(a1);
    v10 = *(a1 + 24);
    v8 = *a2 >> 14;
    v9 = *(a1 + 28);
    goto LABEL_9;
  }

  if (*(a1 + 32) == 1 && *(a2 + 4))
  {
    ACFULogging::getLogInstance(a1);
    v7 = *(a2 + 4);
    goto LABEL_9;
  }

  return 1;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v6 = a1[1];
    memset(v6, *a3, a2);
    a1[1] = &v6[a2];
  }

  return a1;
}

void sub_299EAA8C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t __len, unsigned __int8 *a3)
{
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  if (v7 - v6 >= __len)
  {
    if (__len)
    {
      v15 = &v6[__len];
      memset(v6, *a3, __len);
      v6 = v15;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v9 = *a1;
    v10 = &v6[-*a1];
    v11 = v10 + __len;
    if ((v10 + __len) < 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = operator new(v13);
    }

    else
    {
      v14 = 0;
    }

    memset(&v14[v10], *a3, __len);
    memcpy(v14, v9, v10);
    *a1 = v14;
    *(a1 + 8) = &v14[v10 + __len];
    *(a1 + 16) = &v14[v13];
    if (v9)
    {

      operator delete(v9);
    }
  }
}

uint64_t RoseCalibration::sendCalibration(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v23 = 0x100000000;
  LODWORD(v24) = 2;
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<RoseCapabilities::CalibrationType>::__init_with_size[abi:ne200100]<RoseCapabilities::CalibrationType const*,RoseCapabilities::CalibrationType const*>(&__p, &v23, &v24 + 1, 3uLL);
  v8 = *a1;
  v9 = a1[1];
  v19[0] = v8;
  v19[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  v18[0] = v10;
  v18[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a3;
  v13 = *(a3 + 8);
  v17[0] = v12;
  v17[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  RoseCalibration::sendCalibration(v19, v18, v17, a4, &__p, &v23);
  v14 = v25;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&v23, v24);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

void sub_299EAAB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (!v16)
  {
LABEL_5:
    if (__p)
    {
      operator delete(__p);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  goto LABEL_5;
}

void RoseCalibration::sendCalibration(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t *a6@<X8>)
{
  v73 = *MEMORY[0x29EDCA608];
  v60[0] = 0;
  v60[1] = 0;
  v58 = 0;
  v59 = v60;
  v56 = 0;
  v57 = 0;
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  *&v63.__r_.__value_.__l.__data_ = *a4;
  v63.__r_.__value_.__s.__data_[16] = *(a4 + 16);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A2025208;
  *(v8 + 8) = v63;
  v72 = v8;
  v9 = *a5;
  v45 = a5[1];
  if (*a5 == v45)
  {
LABEL_74:
    memset(&v63, 0, sizeof(v63));
    v28 = v56;
    v29 = v57;
    if (v56 != v57)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = v31;
        if ((v31 & 0x80u) == 0)
        {
          size = v31;
        }

        else
        {
          size = v63.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v51, size + 1);
        if (v52.__r_.__value_.__s.__data_[7] >= 0)
        {
          v34 = &v51;
        }

        else
        {
          v34 = v51;
        }

        if (size)
        {
          if ((v31 & 0x80u) == 0)
          {
            v35 = &v63;
          }

          else
          {
            v35 = v30;
          }

          memmove(v34, v35, size);
        }

        *(v34 + size) = 32;
        v36 = *(v28 + 23);
        if (v36 >= 0)
        {
          v37 = v28;
        }

        else
        {
          v37 = *v28;
        }

        if (v36 >= 0)
        {
          v38 = *(v28 + 23);
        }

        else
        {
          v38 = *(v28 + 8);
        }

        v8 = std::string::append(&v51, v37, v38);
        v39 = *v8;
        *&v61 = *(v8 + 1);
        *(&v61 + 7) = *(v8 + 15);
        v31 = v8[23];
        *v8 = 0;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        if (v32 < 0)
        {
          operator delete(v30);
        }

        v63.__r_.__value_.__r.__words[0] = v39;
        v63.__r_.__value_.__l.__size_ = v61;
        *(&v63.__r_.__value_.__r.__words[1] + 7) = *(&v61 + 7);
        *(&v63.__r_.__value_.__s + 23) = v31;
        if (v52.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(v51);
        }

        v28 += 24;
        v30 = v39;
      }

      while (v28 != v29);
    }

    ACFULogging::getLogInstance(v8);
    *(a4 + 16);
    ACFULogging::handleMessage();
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    data = 0;
LABEL_101:
    std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](v48, &v59);
    *(std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](a6, v48) + 6) = data;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v48, v48[1]);
    goto LABEL_102;
  }

  v43 = *MEMORY[0x29EDB8ED8];
  v42 = *MEMORY[0x29EDB8EE8];
  while (2)
  {
    RoseCapabilities::supportedFDRDataClassesForCalibrationType(*a3, *v9, &v53);
    v11 = v53.__r_.__value_.__l.__size_;
    for (i = v53.__r_.__value_.__r.__words[0]; i != v11; i += 48)
    {
      if (*(a4 + 16) != 1)
      {
        goto LABEL_11;
      }

      if ((*(i + 47) & 0x8000000000000000) != 0)
      {
        if (!*(i + 32))
        {
          goto LABEL_11;
        }
      }

      else if (!*(i + 47))
      {
        goto LABEL_11;
      }

      v12 = std::__tree<std::string>::__count_unique<std::string>(&v54, (i + 24));
      if (v12)
      {
        ACFULogging::getLogInstance(v12);
        if (*(i + 23) < 0)
        {
          v25 = *i;
        }

        if (*(i + 47) < 0)
        {
          v26 = *(i + 24);
        }

        ACFULogging::handleMessage();
        goto LABEL_48;
      }

LABEL_11:
      ACFUCommon::FDRDataClass::FDRDataClass(&v63, i);
      v51 = 0uLL;
      v52.__r_.__value_.__r.__words[0] = 0;
      std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(&v51, &v63, &v65, 1uLL);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      (*(**a2 + 24))(&v63);
      v61 = 0uLL;
      v62.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v61, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v63.__r_.__value_.__l.__size_ - v63.__r_.__value_.__r.__words[0]) >> 3));
      v13 = v61;
      *&v49 = &v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
      if (v13 != *(&v13 + 1))
      {
        std::__tree<RoseCapabilities::CalibrationType>::__emplace_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(&v59, v9, v9);
        if (*(a4 + 16) == 1)
        {
          if ((*(i + 47) & 0x8000000000000000) != 0)
          {
            if (*(i + 32))
            {
LABEL_19:
              std::vector<std::string>::push_back[abi:ne200100](&v56, (i + 24));
              v14 = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v54, (i + 24), i + 24);
              goto LABEL_22;
            }
          }

          else if (*(i + 47))
          {
            goto LABEL_19;
          }
        }

        v14 = std::vector<std::string>::push_back[abi:ne200100](&v56, i);
      }

LABEL_22:
      if (LODWORD(__p.__r_.__value_.__l.__data_))
      {
        ACFULogging::getLogInstance(v14);
        ACFULogging::handleMessage();
        data = __p.__r_.__value_.__l.__data_;
        *&v61 = &v63;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
        v63.__r_.__value_.__r.__words[0] = &v51;
        std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v63);
        v63.__r_.__value_.__r.__words[0] = &v53;
        std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v63);
        goto LABEL_101;
      }

      v61 = 0uLL;
      v62.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v61, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v63.__r_.__value_.__l.__size_ - v63.__r_.__value_.__r.__words[0]) >> 3));
      v15 = v61;
      *&v49 = &v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
      *&v61 = &v63;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
      v63.__r_.__value_.__r.__words[0] = &v51;
      std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v63);
      if (v15 != *(&v15 + 1))
      {
        goto LABEL_48;
      }
    }

    if (RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::only_once != -1)
    {
      RoseCalibration::sendCalibration();
    }

    if (RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::productType != 877582975)
    {
      goto LABEL_48;
    }

    {
      *&v51 = &kT2030GoldenMLBCal;
      *(&v51 + 1) = 1421;
      std::string::basic_string[abi:ne200100]<0>(&v52, "T2030GoldenMLB");
      LODWORD(v63.__r_.__value_.__l.__data_) = 0;
      *&v63.__r_.__value_.__r.__words[1] = v51;
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v52;
      }

      *&v61 = &kT2030GoldenFFCal;
      *(&v61 + 1) = 162;
      std::string::basic_string[abi:ne200100]<0>(&v62, "T2030GoldenFF");
      v65 = 1;
      v66 = v61;
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
      }

      else
      {
        v67 = v62;
      }

      *&v49 = &kT2030GoldenNBCal;
      *(&v49 + 1) = 136;
      std::string::basic_string[abi:ne200100]<0>(&v50, "T2030GoldenNB");
      v68 = 2;
      v69 = v49;
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v70, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
      }

      else
      {
        v70 = v50;
      }

      std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::map[abi:ne200100](&RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::kT2030GoldenCalMap, &v63, 3);
      for (j = 0; j != -18; j -= 6)
      {
        if (SHIBYTE(v70.__r_.__value_.__r.__words[j + 2]) < 0)
        {
          operator delete(*(&v70.__r_.__value_.__l.__data_ + j * 8));
        }
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::~map[abi:ne200100], &RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::kT2030GoldenCalMap, &dword_299EA3000);
    }

    v16 = std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::at(&RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::kT2030GoldenCalMap, v9);
    v17 = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,unsigned char const*,unsigned long,std::string>::__tuple_impl(&v63, v16);
    ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage();
    v18 = CFDataCreateWithBytesNoCopy(v43, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_, v42);
    if (v18)
    {
      v19 = *a1;
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v21 = 0;
      }

      data = RoseTransport::sendCalibration(v19, v18, 0, &v63.__r_.__value_.__s.__data_[16]);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      AMSupportSafeRelease();
      if (!data)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v56, &v63.__r_.__value_.__r.__words[2]);
        v23 = 0;
        data = 0;
        v24 = 1;
        goto LABEL_39;
      }

      v24 = 0;
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v24 = 0;
      data = 4000;
    }

    v23 = 1;
LABEL_39:
    if (__p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v63.__r_.__value_.__r.__words[2]);
    }

    if (v24)
    {
LABEL_48:
      v63.__r_.__value_.__r.__words[0] = &v53;
      std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v63);
      if (++v9 != v45)
      {
        continue;
      }

      goto LABEL_74;
    }

    break;
  }

  v63.__r_.__value_.__r.__words[0] = &v53;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v63);
  if (v23)
  {
    goto LABEL_101;
  }

LABEL_102:
  std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::~__value_func[abi:ne200100](v71);
  std::__tree<std::string>::destroy(&v54, v55[0]);
  v63.__r_.__value_.__r.__words[0] = &v56;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v63);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&v59, v60[0]);
  v40 = *MEMORY[0x29EDCA608];
}

void sub_299EAB598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  v70 = &STACK[0x208];
  v71 = -144;
  while (1)
  {
    if (*(v70 + 23) < 0)
    {
      operator delete(*v70);
    }

    v70 -= 6;
    v71 += 48;
    if (!v71)
    {
      if (a36 < 0)
      {
        operator delete(__p);
      }

      if (a66 < 0)
      {
        operator delete(a61);
      }

      if (a45 < 0)
      {
        operator delete(a40);
      }

      a68 = &a47;
      std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&a68);
      std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::~__value_func[abi:ne200100](v68 - 136);
      std::__tree<std::string>::destroy(&a50, a51);
      a38 = &a53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
      std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a56, a57);
      _Unwind_Resume(a1);
    }
  }
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

uint64_t ___ZN15RoseCalibration15sendCalibrationENSt3__110shared_ptrI13ACFUTransportEENS1_I7ACFUROMEENS1_I16RoseCapabilitiesEERKN7ACFUFDR6ConfigERNS0_6vectorINS6_15CalibrationTypeENS0_9allocatorISD_EEEE_block_invoke()
{
  result = MGGetProductType();
  RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::productType = result;
  return result;
}

uint64_t *std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

_OWORD *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,unsigned char const*,unsigned long,std::string>::__tuple_impl(_OWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 1);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 32);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

char *std::vector<RoseCapabilities::CalibrationType>::__init_with_size[abi:ne200100]<RoseCapabilities::CalibrationType const*,RoseCapabilities::CalibrationType const*>(char *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<RoseCapabilities::CalibrationType>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_299EAB9E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<RoseCapabilities::CalibrationType>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<RoseCapabilities::CalibrationType>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[4 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<RoseCapabilities::CalibrationType>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(4 * a2);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
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

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

__n128 std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2025208;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2025208;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::operator()(uint64_t a1, uint64_t a2, void *a3, const char *a4, const __CFData **a5)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = RoseTransport::sendCalibration(v6, v10, *(a1 + 24), a4);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage();
    v12 = 1;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v12;
}

void sub_299EABD24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_5;
}

uint64_t std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::string>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_299EABF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::string>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t **std::__tree<RoseCapabilities::CalibrationType>::__emplace_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(uint64_t **a1, int *a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 7);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x20uLL);
    *(v10 + 7) = *a3;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v6, v10);
    return v10;
  }

  return v8;
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
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
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

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v5 = std::__tree<std::string>::__find_equal<std::string>(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    std::__tree<std::string>::__construct_node<std::string const&>(a1, a3, &v7);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void std::__tree<std::string>::__construct_node<std::string const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
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

  *(a3 + 16) = 1;
}

void sub_299EAC584(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>(a1, v4, a2, a2);
      a2 += 12;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__find_equal<RoseCapabilities::CalibrationType>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__construct_node<std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__find_equal<RoseCapabilities::CalibrationType>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
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

_OWORD *std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__construct_node<std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[8] = *a2;
  result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,unsigned char const*,unsigned long,std::string>::__tuple_impl(v6 + 10, (a2 + 2));
  *(a3 + 16) = 1;
  return result;
}

void sub_299EAC924(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::destroy(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

uint64_t *std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::set<RoseCapabilities::CalibrationType>::insert[abi:ne200100]<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::set<RoseCapabilities::CalibrationType>::insert[abi:ne200100]<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(uint64_t *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<RoseCapabilities::CalibrationType>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(v5, v5 + 1, v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<RoseCapabilities::CalibrationType>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = std::__tree<RoseCapabilities::CalibrationType>::__find_equal<RoseCapabilities::CalibrationType>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x20uLL);
    *(v7 + 7) = *a4;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<RoseCapabilities::CalibrationType>::__find_equal<RoseCapabilities::CalibrationType>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
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

void RoseTransport::create(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v8 = operator new(0x78uLL);
  ACFUTransport::ACFUTransport(v8);
  *v8 = &unk_2A2025298;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  v8[72] = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  v8[96] = 0;
  *(v8 + 108) = 0;
  *(v8 + 100) = 0;
  *(v8 + 29) = 0;
  *a4 = v8;
  v9 = *a1;
  v10 = a1[1];
  v14[0] = v9;
  v14[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = RoseTransport::init(v8, v14, a2, a3);
  v12 = v11;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if ((v12 & 1) == 0)
  {
    ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage();
    *a4 = 0;
    v13 = *(*v8 + 64);

    v13(v8);
  }
}

void sub_299EACEE8(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 64))(v1);
  _Unwind_Resume(a1);
}

void RoseTransport::RoseTransport(RoseTransport *this)
{
  ACFUTransport::ACFUTransport(this);
  *v1 = &unk_2A2025298;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 108) = 0;
  *(v1 + 100) = 0;
  *(v1 + 116) = 0;
}

uint64_t RoseTransport::init(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v20 = 0;
  v19 = -8531;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = ACFUTransport::init();
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(a1 + 100) = a4;
  *(a1 + 32) = a3;
  if (a3 || (result = RoseTransport::createRoseController(a1), result))
  {
    PowerState = RoseTransport::getPowerState(a1, &v20);
    if (PowerState)
    {
      RoseTransport::init(PowerState);
    }

    else if (!v20 && (ACFULogging::getLogInstance(PowerState), ACFULogging::handleMessage(), v11 = RoseTransport::setPowerState(a1, 1), v11))
    {
      RoseTransport::init(v11);
    }

    else
    {
      v12 = (*(**(a1 + 32) + 128))(*(a1 + 32), &v19);
      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = v19 == 57005;
      }

      if (v13)
      {
        RoseTransport::init(v12);
      }

      else
      {
        RoseCapabilities::create(v19, &v16);
        v14 = v16;
        v16 = 0uLL;
        v15 = *(a1 + 112);
        *(a1 + 104) = v14;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          v15 = *(&v16 + 1);
          if (*(&v16 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
          }

          if (*(a1 + 104))
          {
            return 1;
          }
        }

        else if (v14)
        {
          return 1;
        }

        RoseTransport::init(v15);
      }
    }

    return 0;
  }

  return result;
}

void sub_299EAD118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseTransport::createRoseController(RoseTransport *this)
{
  *child = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    ChildEntry = IORegistryEntryGetChildEntry(MatchingService, "IOService", child);
    IOObjectRelease(v5);
    v7 = child[0];
    if (ChildEntry)
    {
      v8 = 1;
    }

    else
    {
      v8 = child[0] == 0;
    }

    if (v8)
    {
      RoseTransport::createRoseController(ChildEntry);
    }

    else
    {
      v9 = *MEMORY[0x29EDB8EF0];
      v10 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xAu, 0x3Au, 0xB3u, 0x17u, 0x88u, 0xE7u, 0x40u, 0xA0u, 0x89u, 0x68u, 0x33u, 0x55u, 0x58u, 0x14u, 0x66u, 0x63u);
      v11 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v12 = IOCreatePlugInInterfaceForService(v7, v10, v11, this + 3, &child[1]);
      IOObjectRelease(child[0]);
      if (v12 || (v13 = *(this + 3)) == 0)
      {
        RoseTransport::createRoseController(v12);
      }

      else
      {
        v14 = *(*v13 + 8);
        v15 = CFUUIDGetConstantUUIDWithBytes(v9, 0x10u, 0x3Au, 0xBDu, 0x4Au, 0x60u, 0x94u, 0x4Bu, 0xC0u, 0xAEu, 0xEEu, 0x3Eu, 0x37u, 0xF5u, 0xA2u, 0xFu, 0x3Bu);
        v16 = CFUUIDGetUUIDBytes(v15);
        v14(v13, *&v16.byte0, *&v16.byte8, this + 32);
        v17 = *(this + 4);
        if (v17)
        {
          v18 = (*(*v17 + 64))(v17, RoseTransport::roseControllerLogSink, 0);
          if (v18)
          {
            RoseTransport::createRoseController(v18);
          }

          else
          {
            v19 = dispatch_queue_create("RoseQueue", 0);
            v20 = *(this + 5);
            *(this + 5) = v19;

            if (*(this + 5))
            {
              v22 = operator new(0x78uLL);
              *(v22 + 14) = 0;
              *v22 = 1018212795;
              *(v22 + 8) = 0u;
              *(v22 + 24) = 0u;
              *(v22 + 5) = 0;
              *(v22 + 6) = 850045863;
              *(v22 + 56) = 0u;
              *(v22 + 72) = 0u;
              *(v22 + 88) = 0u;
              *(v22 + 100) = 0u;
              v31 = 0;
              std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 7, v22);
              std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](&v31, 0);
              if (*(this + 7))
              {
                v24 = operator new(0x78uLL);
                *(v24 + 14) = 0;
                *v24 = 1018212795;
                *(v24 + 8) = 0u;
                *(v24 + 24) = 0u;
                *(v24 + 5) = 0;
                *(v24 + 6) = 850045863;
                *(v24 + 56) = 0u;
                *(v24 + 72) = 0u;
                *(v24 + 88) = 0u;
                *(v24 + 100) = 0u;
                v31 = 0;
                std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 6, v24);
                std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](&v31, 0);
                if (*(this + 6))
                {
                  v26 = (*(**(this + 4) + 72))(*(this + 4), *(this + 5));
                  if (v26)
                  {
                    RoseTransport::createRoseController(v26);
                  }

                  else
                  {
                    v27 = (*(**(this + 4) + 344))(*(this + 4), RoseTransport::eventCallback, this);
                    if (v27)
                    {
                      RoseTransport::createRoseController(v27);
                    }

                    else
                    {
                      v28 = (*(**(this + 4) + 392))(*(this + 4), RoseTransport::crashCallback, this);
                      if (v28)
                      {
                        RoseTransport::createRoseController(v28);
                      }

                      else
                      {
                        *(this + 96) = 1;
                      }
                    }
                  }
                }

                else
                {
                  RoseTransport::createRoseController(v25);
                }
              }

              else
              {
                RoseTransport::createRoseController(v23);
              }
            }

            else
            {
              RoseTransport::createRoseController(v21);
            }
          }
        }

        else
        {
          RoseTransport::createRoseController(0);
        }
      }
    }
  }

  else
  {
    RoseTransport::createRoseController(MatchingService);
  }

  if (*(this + 96))
  {
    v29 = 1;
  }

  else
  {
    RoseTransport::destroyRoseController(this);
    v29 = *(this + 96);
  }

  return v29 & 1;
}

uint64_t RoseTransport::getPowerState(RoseTransport *this, BOOL *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    RoseTransport::getPowerState(0);
    return 3029;
  }

  v5 = Mutable;
  if (RoseTransport::getRoseDebugInfoDict(this, Mutable))
  {
    RoseTransport::getPowerState(v5);
    return 3029;
  }

  value = 0;
  valuePtr = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(v5, @"RosePowerState", &value);
  if (!ValueIfPresent)
  {
    ACFULogging::getLogInstance(ValueIfPresent);
LABEL_8:
    ACFULogging::handleMessage();
    v8 = 3029;
    goto LABEL_9;
  }

  v7 = CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
  if (!v7)
  {
    ACFULogging::getLogInstance(v7);
    goto LABEL_8;
  }

  v8 = 0;
  *a2 = valuePtr != 0;
LABEL_9:
  CFRelease(v5);
  return v8;
}

uint64_t RoseTransport::setPowerState(RoseCapabilities **this, uint64_t a2)
{
  if ((a2 & 1) == 0 && RoseCapabilities::supportsRTKitIOConfig(this[13]))
  {
    v4 = RoseTransport::applyResetGlitchWorkaround(this);
    if ((v4 & 1) == 0)
    {
      ACFULogging::getLogInstance(v4);
      ACFULogging::handleMessage();
    }
  }

  v5 = (*(*this[4] + 416))(this[4], a2);
  ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage();
  if (v5)
  {
    return 3028;
  }

  else
  {
    return 0;
  }
}

ACFULogging *RoseTransport::roseControllerLogSink(ACFULogging *this, void *a2, os_log_type_t a3, const char *a4)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      return this;
    }

    goto LABEL_7;
  }

  if (a2 == 2 || a2 == 16 || a2 == 17)
  {
LABEL_7:
    ACFULogging::getLogInstance(this);
    return ACFULogging::handleMessage();
  }

  return this;
}

uint64_t RoseTransport::eventCallback(RoseTransport *this, void *a2, uint64_t a3)
{
  if (this)
  {

    return RoseTransport::eventHandler(this, a2, a3);
  }

  else
  {
    ACFULogging::getLogInstance(this);
    return ACFULogging::handleMessage();
  }
}

ACFULogging *RoseTransport::crashCallback(ACFULogging *a1, uint64_t a2)
{
  ACFULogging::getLogInstance(a1);
  v4 = ACFULogging::handleMessage();
  if (a1)
  {

    return RoseTransport::crashHandler(a1, a2);
  }

  else
  {
    ACFULogging::getLogInstance(v4);
    return ACFULogging::handleMessage();
  }
}

IOCFPlugInInterface **RoseTransport::destroyRoseController(RoseTransport *this)
{
  result = *(this + 3);
  if (result)
  {
    v3 = *(this + 4);
    if (v3)
    {
      (*(*v3 + 24))(*(this + 4));
      *(this + 4) = 0;
      result = *(this + 3);
    }

    result = IODestroyPlugInInterface(result);
    *(this + 3) = 0;
  }

  return result;
}

uint64_t RoseTransport::getBootNonceHash(RoseTransport *this, unsigned __int8 *a2, size_t a3, unint64_t *a4)
{
  v16[1] = *MEMORY[0x29EDCA608];
  MEMORY[0x2A1C7C4A8]();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0;
  bzero(v9, v8);
  v10 = (*(**(this + 4) + 160))(*(this + 4), a2, a3, v16);
  if (v10)
  {
    RoseTransport::getBootNonceHash(v10);
    goto LABEL_14;
  }

  if (v16[0] - 1 >= a3)
  {
    RoseTransport::getBootNonceHash(v16);
    goto LABEL_17;
  }

  v11 = memcmp(v9, a2, v16[0]);
  if (!v11)
  {
    v12 = (*(**(this + 4) + 152))(*(this + 4));
    if (v12)
    {
      RoseTransport::getBootNonceHash(v12);
      result = 3008;
      goto LABEL_9;
    }

    v16[0] = 0;
    v13 = (*(**(this + 4) + 160))(*(this + 4), a2, a3, v16);
    if (!v13)
    {
      if (v16[0] - 1 >= a3)
      {
        RoseTransport::getBootNonceHash(v16);
      }

      else
      {
        v11 = memcmp(v9, a2, v16[0]);
        if (v11)
        {
          goto LABEL_8;
        }

        RoseTransport::getBootNonceHash(v16);
      }

LABEL_17:
      result = 3009;
      goto LABEL_9;
    }

    RoseTransport::getBootNonceHash(v13);
LABEL_14:
    result = 3007;
    goto LABEL_9;
  }

LABEL_8:
  ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage();
  result = 0;
  *a4 = v16[0];
LABEL_9:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void RoseTransport::getBoardParameters(RoseTransport *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = *MEMORY[0x29EDCA608];
  *v55 = -8531;
  *v54 = -8531;
  v52 = 0;
  *v53 = 0xDEADBEEFDEADBEEFLL;
  *bytes = 0u;
  v64 = 0u;
  *v62 = 0;
  v51 = 0;
  v50 = -34;
  v49 = -34;
  v48 = -34;
  v47 = -34;
  *v46 = -8531;
  v58 = xmmword_29F290A08;
  v59 = *&off_29F290A18;
  v60 = xmmword_29F290A28;
  *v56 = xmmword_29F2909E8;
  v57 = *&off_29F2909F8;
  v44 = 0;
  v45 = 0;
  __p = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(&__p, v56, &v61, 0xAuLL);
  std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> &,0>(&__p, v56);
  if (a3)
  {
    BootNonceHash = RoseTransport::getBootNonceHash(this, bytes, 0x20uLL, &v52);
    if (BootNonceHash)
    {
      goto LABEL_15;
    }

    v9 = v56[0];
    v10 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 32);
    *(v9 + 7) = v10;
    *(v9 + 64) = v10 != 0;
  }

  if (a2)
  {
    v11 = (*(**(this + 4) + 168))(*(this + 4), v62, 8, &v51);
    if (v11)
    {
      ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage();
      BootNonceHash = 3007;
      goto LABEL_15;
    }

    ACFULogging::getLogInstance(v11);
    v12 = ACFULogging::handleMessage();
    if ((v51 - 9) <= 0xFFFFFFFFFFFFFFF7)
    {
      ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage();
      BootNonceHash = 3009;
      goto LABEL_15;
    }

    v13 = v56[0];
    v14 = CFDataCreate(*MEMORY[0x29EDB8ED8], v62, 8);
    *(v13 + 9) = v14;
    *(v13 + 80) = v14 != 0;
  }

  v15 = (*(**(this + 4) + 128))(*(this + 4), v55);
  if (v15)
  {
    goto LABEL_13;
  }

  if (*v55 == 57005)
  {
    goto LABEL_13;
  }

  v15 = (*(**(this + 4) + 136))(*(this + 4), v54);
  if (v15)
  {
    goto LABEL_13;
  }

  if (*v54 == 57005)
  {
    goto LABEL_13;
  }

  v15 = (*(**(this + 4) + 144))(*(this + 4), v53);
  if (v15 || !*v53 || *v53 == 0xDEADBEEFDEADBEEFLL)
  {
    goto LABEL_13;
  }

  v20 = (*(**(this + 4) + 232))(*(this + 4), &v49);
  if (v20 || v49 >= 2u)
  {
    ACFULogging::getLogInstance(v20);
    v40 = &v49;
LABEL_43:
    v42 = *v40;
    ACFULogging::handleMessage();
    goto LABEL_14;
  }

  v21 = (*(**(this + 4) + 224))(*(this + 4), &v50);
  if (v21 || v50 >= 2u)
  {
    ACFULogging::getLogInstance(v21);
    v40 = &v50;
    goto LABEL_43;
  }

  v15 = (*(**(this + 4) + 240))(*(this + 4), &v48);
  if (v15 || v48 == 222 || (v15 = (*(**(this + 4) + 248))(*(this + 4), &v47), v15) || v47 == 222 || (v15 = (*(**(this + 4) + 360))(*(this + 4), v46), v15) || *v46 == 57005)
  {
LABEL_13:
    ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage();
LABEL_14:
    BootNonceHash = 3011;
    goto LABEL_15;
  }

  v22 = v56[0];
  v23 = *MEMORY[0x29EDB8ED8];
  v24 = CFDataCreate(*MEMORY[0x29EDB8ED8], v53, 8);
  *(v22 + 5) = v24;
  *(v22 + 48) = v24 != 0;
  v25 = v56[0];
  v26 = CFDataCreate(v23, v54, 2);
  *(v25 + 3) = v26;
  *(v25 + 32) = v26 != 0;
  v27 = v56[0];
  v28 = CFDataCreate(v23, v55, 2);
  *(v27 + 1) = v28;
  *(v27 + 16) = v28 != 0;
  v29 = v56[0];
  v30 = CFDataCreate(v23, &v50, 1);
  *(v29 + 11) = v30;
  *(v29 + 96) = v30 != 0;
  v31 = v56[0];
  v32 = CFDataCreate(v23, &v49, 1);
  *(v31 + 13) = v32;
  *(v31 + 112) = v32 != 0;
  v33 = v56[0];
  v34 = CFDataCreate(v23, &v48, 1);
  *(v33 + 17) = v34;
  *(v33 + 144) = v34 != 0;
  v35 = v56[0];
  v36 = CFDataCreate(v23, &v47, 1);
  *(v35 + 19) = v36;
  *(v35 + 160) = v36 != 0;
  v37 = v56[0];
  v38 = CFDataCreate(v23, v46, 2);
  *(v37 + 21) = v38;
  *(v37 + 176) = v38 != 0;
  v39 = ACFUCommon::PersonalizeParams::logParameters(v56[0]);
  if (*v54 && v48 - 4 <= 0xFFFFFFFC)
  {
    ACFULogging::getLogInstance(v39);
    ACFULogging::handleMessage();
    v41 = v56[1];
    v56[0] = 0;
    v56[1] = 0;
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    BootNonceHash = 3006;
  }

  else
  {
    BootNonceHash = 0;
  }

LABEL_15:
  v17 = v56[0];
  v16 = v56[1];
  if (v56[1])
  {
    atomic_fetch_add_explicit(v56[1] + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    v18 = v56[1];
    *a4 = v17;
    *(a4 + 8) = v16;
    *(a4 + 16) = BootNonceHash;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  else
  {
    *a4 = v56[0];
    *(a4 + 8) = 0;
    *(a4 + 16) = BootNonceHash;
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_299EAE0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseTransport::setNonce(RoseTransport *this, void *a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    RoseTransport::setNonce(this);
    return 3028;
  }

  result = (*(**(this + 4) + 176))(*(this + 4));
  if (result)
  {
    RoseTransport::setNonce(result);
    return 3028;
  }

  return result;
}

uint64_t RoseTransport::pushFirmware(uint64_t a1, ACFUFirmware **a2)
{
  v45[4] = *MEMORY[0x29EDCA608];
  Manifest = ACFUFirmware::getManifest(*a2);
  v5 = ACFUFirmware::copyFWDataByTag(*a2, @"Rap,RTKitOS");
  v6 = ACFUFirmware::copyFWDataByTag(*a2, @"Rap,SoftwareBinaryDsp1");
  v44 = -559038737;
  v42 = v6;
  theData = v5;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (!Manifest)
    {
      RoseTransport::pushFirmware(v6);
      v8 = 0;
      v11 = 1001;
      goto LABEL_28;
    }

    if (RoseCapabilities::supportsRTKitIOConfig(*(a1 + 104)))
    {
      v8 = ACFUFirmware::copyFWDataByTag(*a2, @"Rap,RTKitIOConfig");
      if (!v8)
      {
        ACFULogging::getLogInstance(0);
        v39 = "pushFirmware";
        ACFULogging::handleMessage();
      }
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 96) == 1)
    {
      v9 = RoseTransport::flushDebugInfo(a1);
      if (!v9)
      {
        v11 = 0;
LABEL_14:
        v12 = (*(**(a1 + 32) + 192))(*(a1 + 32), 0);
        if (v12)
        {
          RoseTransport::pushFirmware(v12);
        }

        else
        {
          v13 = (*(**(a1 + 32) + 200))(*(a1 + 32), &v44);
          if (v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = v44 >= 2;
          }

          if (v14)
          {
            ACFULogging::getLogInstance(v13);
            ACFULogging::handleMessage();
          }

          else
          {
            if (!v44)
            {
              v15 = *(a1 + 32);
              v16 = *v15;
              if (v8)
              {
                v41 = *(v16 + 456);
                BytePtr = CFDataGetBytePtr(Manifest);
                Length = CFDataGetLength(Manifest);
                v19 = CFDataGetBytePtr(v5);
                v20 = CFDataGetLength(v5);
                v21 = CFDataGetBytePtr(v42);
                v22 = CFDataGetLength(v42);
                v23 = CFDataGetBytePtr(v8);
                v24 = CFDataGetLength(v8);
                v25 = v41(v15, BytePtr, Length, v19, v20, v21, v22, v23, v24, v39, v40);
                if (v25)
                {
                  RoseTransport::pushFirmware(v25);
LABEL_42:
                  v11 = 3001;
                  goto LABEL_28;
                }
              }

              else
              {
                v26 = *(v16 + 96);
                v27 = CFDataGetBytePtr(Manifest);
                v28 = CFDataGetLength(Manifest);
                v29 = CFDataGetBytePtr(v5);
                v30 = CFDataGetLength(v5);
                v31 = CFDataGetBytePtr(v42);
                v32 = CFDataGetLength(v42);
                v33 = v26(v15, v27, v28, v29, v30, v31, v32);
                if (v33)
                {
                  RoseTransport::pushFirmware(v33);
                  v8 = 0;
                  goto LABEL_42;
                }
              }

              if (*(a1 + 96) == 1 && (v34 = *(a1 + 48), v45[0] = &unk_2A2025380, v45[1] = a1, v45[3] = v45, v35 = ACFUSynchronize::Syncher::wait(), v36 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v45), (v35 & 1) == 0))
              {
                ACFULogging::getLogInstance(v36);
                ACFULogging::handleMessage();
                v11 = 3002;
              }

              else
              {
                v11 = 0;
              }

              goto LABEL_28;
            }

            RoseTransport::pushFirmware(&v44);
            v11 = 3010;
          }
        }

LABEL_28:
        CFRelease(theData);
        goto LABEL_29;
      }

      v10 = v9;
      ACFULogging::getLogInstance(v9);
      v39 = "pushFirmware";
      v40 = v10;
      ACFULogging::handleMessage();
    }

    v11 = 3000;
    goto LABEL_14;
  }

  ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage();
  v8 = 0;
  v11 = 1000;
  if (v5)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v42)
  {
    CFRelease(v42);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v37 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_299EAE56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RoseTransport::flushDebugInfo(RoseTransport *this)
{
  v14[0] = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, 0x2000uLL, v14);
  v15 = 0;
  if (RoseCapabilities::supportsFirmwareLogCollectionFromRoseController(*(this + 13)))
  {
    v2 = (*(**(this + 4) + 280))(*(this + 4));
    if (v2)
    {
      ACFULogging::getLogInstance(v2);
      ACFULogging::handleMessage();
      v3 = 3000;
      goto LABEL_16;
    }

    while (1)
    {
      v10 = (*(**(this + 4) + 288))(*(this + 4), __p[0], v17 - __p[0], &v15);
      if (v10 || v15 == 0)
      {
        break;
      }

      ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage();
      v15 = 0;
    }

    if (v10)
    {
      ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage();
      v3 = 3000;
    }

    else
    {
      v3 = 0;
    }

    v12 = (*(**(this + 4) + 296))(*(this + 4));
    if (v12)
    {
      ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage();
      v3 = 3000;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v13 = 0;
    while (RoseTransport::isCrashLogAvailable(this, v4, &v13))
    {
      v13 = 0;
      v7 = (*(**(this + 4) + 368))(*(this + 4), v4, v14, __p[0], v17 - __p[0], &v13);
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = v13 == 0;
      }

      if (v8)
      {
        ACFULogging::getLogInstance(v7);
        v3 = 3000;
      }

      else
      {
        ACFULogging::getLogInstance(v7);
      }

      ACFULogging::handleMessage();
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
LABEL_16:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

void sub_299EAE804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL RoseTransport::isCrashLogAvailable(RoseTransport *this, uint64_t a2, ACFULogging *a3)
{
  if (a3)
  {
    v4 = (*(**(this + 4) + 368))(*(this + 4), a2, 0, 0, 0, a3);
    if (v4)
    {
      RoseTransport::isCrashLogAvailable(v4);
    }

    else
    {
      if (*a3 <= 0x200000uLL)
      {
        return *a3 != 0;
      }

      RoseTransport::isCrashLogAvailable(a3);
    }
  }

  else
  {
    RoseTransport::isCrashLogAvailable(this);
  }

  return 0;
}

void RoseTransport::collectFirmwareLogs(RoseCapabilities **this)
{
  v16 = 0;
  v2 = RoseCapabilities::supportsFirmwareLogCollectionFromRoseController(this[13]);
  v3 = v2;
  ACFULogging::getLogInstance(v2);
  if (v3)
  {
    ACFULogging::handleMessage();
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    if (Mutable)
    {
      v6 = (*(*this[4] + 280))(this[4]);
      if (v6)
      {
        RoseTransport::collectFirmwareLogs(v6);
      }

      else
      {
        LODWORD(v7) = 0;
        while (1)
        {
          CFDataIncreaseLength(Mutable, 1024);
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          v9 = (*(*this[4] + 288))(this[4], &MutableBytePtr[v7], 1024, &v16);
          if (v9)
          {
            RoseTransport::collectFirmwareLogs(v9);
            goto LABEL_23;
          }

          if (v16 >= 0x401)
          {
            break;
          }

          v7 = (v7 + v16);
          if (!v16)
          {
            if (v7)
            {
              v10 = v7;
              goto LABEL_10;
            }

            ACFULogging::getLogInstance(v9);
LABEL_15:
            ACFULogging::handleMessage();
            goto LABEL_16;
          }
        }

        RoseTransport::collectFirmwareLogs(&v16);
LABEL_23:
        if (v7)
        {
          v10 = v7;
LABEL_10:
          CFDataSetLength(Mutable, v10);
          v11 = CFStringCreateWithFormat(v4, 0, @"%@.log", @"FirmwareLogs", "collectFirmwareLogs");
          if (v11)
          {
            v12 = v11;
            v13 = this[1];
            v14 = ACFUDiagnostics::addItem();
            ACFULogging::getLogInstance(v14);
            ACFULogging::handleMessage();
            CFRelease(v12);
            goto LABEL_16;
          }

          ACFULogging::getLogInstance(0);
          goto LABEL_15;
        }
      }
    }

    else
    {
      RoseTransport::collectFirmwareLogs(0);
    }

LABEL_16:
    v15 = (*(*this[4] + 296))(this[4]);
    if (v15)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    ACFULogging::handleMessage();
  }
}

void RoseTransport::logCrashLogReason(RoseTransport *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 < 0x51)
  {
    RoseTransport::logCrashLogReason(this);
  }

  else
  {
    v3 = 32;
    while (1)
    {
      v4 = &a2[v3];
      v5 = *&a2[v3 + 12];
      if (v5 <= 0xF)
      {
        RoseTransport::logCrashLogReason(&a2[v3]);
        return;
      }

      if (*v4 == 1131639922)
      {
        break;
      }

      v3 += v5;
      if (v3 + 48 >= a3)
      {
        return;
      }
    }

    v6 = (v4 + 8);
    if (*(v4 + 2) == 257)
    {
      if (v5 < 0x15 || v3 + v5 + 32 > a3)
      {
        ACFULogging::getLogInstance(v6);
        v14 = v3 + *(v4 + 3);
        ACFULogging::handleMessage();
      }

      else
      {
        v8 = v5 - 20;
        if (v8 < 0)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v9 = v8;
        if (v8 >= 0x17)
        {
          v11 = v8 | 7;
          if ((v9 | 7) == 0x17)
          {
            v12 = 25;
          }

          else
          {
            v12 = v11 + 1;
          }

          v10 = operator new(v12);
          __dst[1] = v9;
          v16 = v12 | 0x8000000000000000;
          __dst[0] = v10;
        }

        else
        {
          HIBYTE(v16) = v8;
          v10 = __dst;
        }

        v13 = memcpy(v10, v4 + 20, v9);
        *(v10 + v9) = 0;
        ACFULogging::getLogInstance(v13);
        ACFULogging::handleMessage();
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    else
    {
      RoseTransport::logCrashLogReason(v6);
    }
  }
}

void sub_299EAEC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RoseTransport::collectCrashLogs(_BOOL8 this)
{
  v1 = this;
  v2 = 0;
  v3 = 1;
  v4 = *MEMORY[0x29EDB8ED8];
  do
  {
    v29 = v3;
    v33 = 0;
    v32 = 0;
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    this = RoseTransport::isCrashLogAvailable(v1, v2, &v33);
    if (!this)
    {
      goto LABEL_24;
    }

    v5 = 1;
    while (1)
    {
      ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage();
      Mutable = CFDataCreateMutable(v4, 0);
      if (Mutable)
      {
        break;
      }

      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
LABEL_21:
      v5 = (v5 + 1);
      this = RoseTransport::isCrashLogAvailable(v1, v2, &v33);
      if (!this)
      {
        goto LABEL_24;
      }
    }

    v7 = Mutable;
    CFDataIncreaseLength(Mutable, v33);
    memset(v31, 0, 15);
    v8 = *(v1 + 4);
    v9 = *(*v8 + 368);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    Length = CFDataGetLength(v7);
    v12 = v9(v8, v2, v31, MutableBytePtr, Length, &v32);
    if (!v12)
    {
      if (v32 != v33)
      {
        ACFULogging::getLogInstance(v12);
        v12 = ACFULogging::handleMessage();
      }

      ACFULogging::getLogInstance(v12);
      v27 = BYTE6(v31[1]);
      v28 = BYTE4(v31[1]);
      v25 = v31[0];
      v26 = BYTE5(v31[1]);
      ACFULogging::handleMessage();
      BytePtr = CFDataGetBytePtr(v7);
      if (!BytePtr)
      {
        goto LABEL_17;
      }

      v14 = BytePtr;
      if (CFDataGetLength(v7) < 0x20 || *(v14 + 3) > 0x3Fu)
      {
        goto LABEL_17;
      }

      if (v29)
      {
        v15 = CFDataGetBytePtr(v7);
        ACFUMachO32::create(v15, v32);
        v16 = v30;
        v30 = 0;
        v17 = *(v1 + 10);
        *(v1 + 10) = v16;
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v18 = CFDataGetBytePtr(v7);
        ACFUMachO64::create(v18, v32);
        v19 = v30;
        v30 = 0;
        v17 = *(v1 + 11);
        *(v1 + 11) = v19;
        if (!v17)
        {
LABEL_17:
          v20 = CFDataGetBytePtr(v7);
          RoseTransport::logCrashLogReason(v20, v20, v32);
          v21 = CFStringCreateWithFormat(v4, 0, @"%@-%d.bin", kRoseCoreToCrashLogKey[v2], v5, v25, v26, v27, v28);
          if (v21)
          {
            v22 = v21;
            v23 = *(v1 + 1);
            v24 = ACFUDiagnostics::addItem();
            ACFULogging::getLogInstance(v24);
            ACFULogging::handleMessage();
            CFRelease(v22);
          }

          else
          {
            ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage();
          }

          CFRelease(v7);
          goto LABEL_21;
        }
      }

      (*(*v17 + 8))(v17);
      v30 = 0;
      goto LABEL_17;
    }

    ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage();
    CFRelease(v7);
LABEL_24:
    v3 = 0;
    v2 = 1;
  }

  while ((v29 & 1) != 0);
}

uint64_t RoseTransport::isCoreDumpAvailable(RoseTransport *this, uint64_t a2, unsigned int *a3)
{
  if (a3)
  {
    memset(v7, 0, 15);
    v4 = (*(**(this + 4) + 376))(*(this + 4), a2, v7);
    if (v4)
    {
      ACFULogging::getLogInstance(v4);
    }

    else
    {
      v5 = LODWORD(v7[1]) - 2097153;
      ACFULogging::getLogInstance(v4);
      if (v5 >> 21 == 2047)
      {
        ACFULogging::handleMessage();
        *a3 = v7[1];
        return 1;
      }
    }

    ACFULogging::handleMessage();
  }

  else
  {
    RoseTransport::isCoreDumpAvailable(this);
  }

  return 0;
}

uint64_t RoseTransport::collectCoreDump(RoseTransport *this)
{
  v1 = this;
  v2 = 0;
  v3 = 1;
  v4 = *MEMORY[0x29EDB8ED8];
  do
  {
    v5 = v3;
    ACFULogging::getLogInstance(this);
    v21 = v2;
    ACFULogging::handleMessage();
    LODWORD(extraLength) = 0;
    this = RoseTransport::isCoreDumpAvailable(v1, v2, &extraLength);
    if (!this)
    {
      goto LABEL_20;
    }

    v23 = 0;
    Mutable = CFDataCreateMutable(v4, 0);
    if (!Mutable)
    {
      ACFULogging::getLogInstance(0);
      this = ACFULogging::handleMessage();
      goto LABEL_20;
    }

    v7 = Mutable;
    if (v5)
    {
      v8 = *(v1 + 10);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(v1 + 11);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    MachoHeaderData = ACFUMachO::getMachoHeaderData(v8);
    if (MachoHeaderData)
    {
      v10 = MachoHeaderData;
      LODWORD(v12) = CFDataGetLength(MachoHeaderData);
      BytePtr = CFDataGetBytePtr(v10);
      v12 = v12;
      CFDataAppendBytes(v7, BytePtr, v12);
      v13 = @"%@-raw.bin";
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0;
    v13 = @"%@.bin";
LABEL_12:
    CFDataIncreaseLength(v7, extraLength);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    v15 = (*(**(v1 + 4) + 384))(*(v1 + 4), v2, 0, extraLength, &MutableBytePtr[v12], &v23);
    if (v15)
    {
      ACFULogging::getLogInstance(v15);
    }

    else
    {
      if (v23 != extraLength)
      {
        ACFULogging::getLogInstance(v15);
        v21 = v23;
        v22 = extraLength;
        ACFULogging::handleMessage();
      }

      v16 = CFStringCreateWithFormat(v4, 0, v13, kRoseCoreToCoreDumpKey[v2], "collectCoreDump", v21, v22);
      if (v16)
      {
        v17 = v16;
        v18 = *(v1 + 1);
        ACFUDiagnostics::addItem();
        CFRelease(v7);
        v7 = v17;
        goto LABEL_19;
      }

      ACFULogging::getLogInstance(0);
    }

    ACFULogging::handleMessage();
LABEL_19:
    CFRelease(v7);
LABEL_20:
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v19 = *(v1 + 10);
  *(v1 + 10) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  result = *(v1 + 11);
  *(v1 + 11) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void RoseTransport::collectIOReport(RoseTransport *this)
{
  v2 = IOReportCopyAllChannels();
  if (!v2)
  {
    RoseTransport::collectIOReport(0);
    return;
  }

  v3 = v2;
  v4 = IOReportSelectChannelsInGroup();
  if (v4)
  {
    RoseTransport::collectIOReport(v4);
  }

  else
  {
    ChannelCount = IOReportGetChannelCount();
    ACFULogging::getLogInstance(ChannelCount);
    if (ChannelCount <= 0)
    {
      ACFULogging::handleMessage();
    }

    else
    {
      ACFULogging::handleMessage();
      Subscription = IOReportCreateSubscription();
      if (Subscription)
      {
        v7 = Subscription;
        v8 = IOReportGetChannelCount();
        if (v8 < 1 || v8 > ChannelCount)
        {
          RoseTransport::collectIOReport(v8);
          Mutable = 0;
          Samples = 0;
        }

        else
        {
          if (v8 < ChannelCount)
          {
            ACFULogging::getLogInstance(v8);
            ACFULogging::handleMessage();
          }

          Samples = IOReportCreateSamples();
          if (Samples)
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
            if (Mutable)
            {
              v11 = IOReportIterate();
              if (v11)
              {
                ACFULogging::getLogInstance(v11);
                ACFULogging::handleMessage();
              }

              if (CFArrayGetCount(Mutable))
              {
                v12 = *(this + 1);
                ACFUDiagnostics::addItem();
              }
            }

            else
            {
              RoseTransport::collectIOReport(0);
            }
          }

          else
          {
            RoseTransport::collectIOReport(0);
            Mutable = 0;
          }
        }

        CFRelease(v7);
        goto LABEL_16;
      }

      RoseTransport::collectIOReport(0);
    }
  }

  Samples = 0;
  Mutable = 0;
LABEL_16:
  CFRelease(v3);
  if (Samples)
  {
    CFRelease(Samples);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t ___ZN13RoseTransport15collectIOReportEv_block_invoke(uint64_t a1)
{
  v2 = IOReportSampleCopyDescription();
  if (v2)
  {
    v3 = v2;
    CFArrayAppendValue(*(a1 + 32), v2);
    CFRelease(v3);
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  return 0;
}

uint64_t RoseTransport::getDebugInfo(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 1;
  if (!*(a1 + 8))
  {
    RoseTransport::getDebugInfo(a1);
    return 3000;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    RoseTransport::getDebugInfo(0);
    return 3000;
  }

  v6 = Mutable;
  v7 = (*(**(a1 + 32) + 256))(*(a1 + 32), Mutable);
  if (v7)
  {
    RoseTransport::getDebugInfo(v7);
    v9 = 3015;
  }

  else
  {
    v8 = *(a1 + 8);
    ACFUDiagnostics::addItem();
    v9 = (*(**(a1 + 32) + 312))(*(a1 + 32), &v11);
    ACFULogging::getLogInstance(v9);
    if (v9)
    {
      ACFULogging::handleMessage();
      v9 = 3000;
    }

    else
    {
      ACFULogging::handleMessage();
      if (a3)
      {
        RoseTransport::waitForFatalCrashCB(a1);
        *(a1 + 72) = 0;
        RoseTransport::collectCrashLogs(a1);
        RoseTransport::collectCoreDump(a1);
        RoseTransport::collectFirmwareLogs(a1);
        RoseTransport::collectIOReport(a1);
        v9 = 0;
      }
    }
  }

  CFRelease(v6);
  return v9;
}

uint64_t RoseTransport::waitForFatalCrashCB(RoseTransport *this)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v2 = *(this + 7);
  v6[0] = &unk_2A2025410;
  v6[3] = v6;
  v3 = ACFUSynchronize::Syncher::wait();
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  if ((v3 & 1) == 0)
  {
    ACFULogging::getLogInstance(result);
    result = ACFULogging::handleMessage();
    if ((*(this + 72) & 1) == 0)
    {
      result = RoseTransport::triggerCrashLog(this);
      if (result)
      {
        result = RoseTransport::waitForFatalCrashCB(this);
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299EAF9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RoseTransport::triggerCrashLog(RoseTransport *this)
{
  v2 = (*(**(this + 4) + 352))(*(this + 4));
  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  if (!v2)
  {
    *(this + 72) = 1;
  }

  return v2 == 0;
}

ACFULogging *RoseTransport::crashHandler(ACFULogging *result, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (*(a2 + 60))
    {
      v2 = result;
      ACFULogging::getLogInstance(result);
      ACFULogging::handleMessage();
      v3 = *(v2 + 7);
      v5[0] = &unk_2A2025490;
      v5[3] = v5;
      ACFUSynchronize::Syncher::notify();
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
    }
  }

  else
  {
    ACFULogging::getLogInstance(result);
    result = ACFULogging::handleMessage();
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299EAFB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RoseTransport::reset(RoseCapabilities **this)
{
  v2 = RoseCapabilities::supportsRTKitIOConfig(this[13]);
  if (v2)
  {
    v2 = RoseTransport::applyResetGlitchWorkaround(this);
    if ((v2 & 1) == 0)
    {
      ACFULogging::getLogInstance(v2);
      v2 = ACFULogging::handleMessage();
    }
  }

  ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage();
  v3 = (*(*this[4] + 112))(this[4]);
  ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage();
  if (v3)
  {
    return 3014;
  }

  else
  {
    return 0;
  }
}

uint64_t RoseTransport::applyResetGlitchWorkaround(RoseTransport *this)
{
  v10 = *MEMORY[0x29EDCA608];
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = RoseCommand::create(0, 112, 0, 1);
  v8 = 0;
  v3 = RoseTransport::sendRoseCommand(this, v2, &__ns, &v8, 0x100000096);
  v4 = v3;
  if (v3)
  {
    __ns.__rep_ = 70000000;
    std::this_thread::sleep_for (&__ns);
  }

  ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage();
  RoseCommand::~RoseCommand(v2);
  operator delete(v5);
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_299EAFD60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    RoseCommand::~RoseCommand(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ACFULogging *RoseTransport::getRoseDebugInfoDict(RoseTransport *this, __CFDictionary *a2)
{
  if (a2)
  {
    v2 = (*(**(this + 4) + 256))(*(this + 4));
    v3 = v2;
    if (v2)
    {
      RoseTransport::getRoseDebugInfoDict(v2);
    }
  }

  else
  {
    RoseTransport::getRoseDebugInfoDict(this);
    return 3758097084;
  }

  return v3;
}

uint64_t RoseTransport::getCapabilities@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  *a2 = *(this + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t RoseTransport::eventHandler(RoseTransport *this, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = *(this + 6);
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A2025520;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = a3;
  v11 = v7;
  ACFUSynchronize::Syncher::notify();
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299EAFEA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RoseTransport::sendRoseCommand(ACFULogging *a1, RoseCommand *a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 0;
  result = RoseTransport::sendRoseCommand(a1, a2, v6, &v5, a3);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t RoseTransport::sendRoseCommand(ACFULogging *a1, RoseCommand *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a4)
  {
    RoseTransport::sendRoseCommand(a1);
    return 0;
  }

  *a4 = 0;
  ACFULogging::getLogInstance(a1);
  v10 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v10);
  std::string::basic_string[abi:ne200100]<0>(&v31, "RoseTransport");
  v11 = std::string::append(&v31, "::");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v32, "sendRoseCommand");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v34 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  RoseCommand::getPacketData(a2);
  RoseCommand::getPacketLength(a2);
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v15 = *(a1 + 4);
  v16 = *v15;
  if ((a5 & 0x100000000) != 0)
  {
    v21 = *(v16 + 472);
    PacketData = RoseCommand::getPacketData(a2);
    PacketLength = RoseCommand::getPacketLength(a2);
    v20 = v21(v15, PacketData, PacketLength, a3, 112, a4, a5);
    if (v20)
    {
      RoseTransport::sendRoseCommand(v20);
      return 0;
    }
  }

  else
  {
    v17 = *(v16 + 264);
    v18 = RoseCommand::getPacketData(a2);
    v19 = RoseCommand::getPacketLength(a2);
    v20 = v17(v15, v18, v19, a3, 112, a4);
    if (v20)
    {
      RoseTransport::sendRoseCommand(v20);
      return 0;
    }
  }

  ACFULogging::getLogInstance(v20);
  v24 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v24);
  std::string::basic_string[abi:ne200100]<0>(&v31, "RoseTransport");
  v25 = std::string::append(&v31, "::");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v32, "sendRoseCommand");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v34 = v27->__r_.__value_.__r.__words[2];
  *__p = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = *a4;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return RoseCommand::validateResponse(a2, a3, *a4);
}

void sub_299EB01D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef RoseTransport::copyCalDataToSend(RoseTransport *this, CFDataRef theData)
{
  if (!theData || CFDataGetLength(theData) < 1)
  {
    v5 = "%s::%s: bad input parameters\n";
LABEL_9:
    RoseTransport::copyCalDataToSend(v5);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    v5 = "%s::%s: could not get reference to data\n";
    goto LABEL_9;
  }

  result = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], BytePtr, *BytePtr + 8, *MEMORY[0x29EDB8EE8]);
  if (!result)
  {
    v5 = "%s::%s: no data available to send\n";
    goto LABEL_9;
  }

  return result;
}

uint64_t RoseTransport::pingCheck(RoseTransport *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = std::string::basic_string[abi:ne200100]<0>(&__p, "RoseTransport-v1");
  v14 = 0;
  v3 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v3 = v16;
  }

  if (v3 >= 0x21)
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
    v10 = 3012;
  }

  else
  {
    v4 = RoseCommand::create(0, 0, 0x20uLL, 0);
    v5 = v4;
    if (v4)
    {
      if ((v17 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v17 & 0x80u) == 0)
      {
        v7 = v17;
      }

      else
      {
        v7 = v16;
      }

      Payload = RoseCommand::getPayload(v4);
      if (v7)
      {
        Payload = memmove(Payload, p_p, v7);
      }

      v9 = 1;
      while (1)
      {
        ACFULogging::getLogInstance(Payload);
        ACFULogging::handleMessage();
        if (RoseTransport::sendRoseCommand(this, v5, v19, &v14, 0))
        {
          break;
        }

        __ns.__rep_ = 500000000;
        std::this_thread::sleep_for (&__ns);
        if (++v9 == 6)
        {
          goto LABEL_16;
        }
      }

      Payload = RoseTransport::parsePingResponse(this, v19, v14);
      if ((Payload & 1) == 0)
      {
LABEL_16:
        ACFULogging::getLogInstance(Payload);
        ACFULogging::handleMessage();
        v10 = 3003;
        goto LABEL_19;
      }

      ACFULogging::getLogInstance(Payload);
      ACFULogging::handleMessage();
      v10 = 0;
LABEL_19:
      RoseCommand::~RoseCommand(v5);
      operator delete(v11);
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v10 = 1007;
    }
  }

  if (v17 < 0)
  {
    operator delete(__p);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t RoseTransport::parsePingResponse(uint64_t a1, uint64_t a2, ACFULogging *a3)
{
  v5 = RoseCapabilities::supportsRTKitIOConfig(*(a1 + 104));
  if (v5)
  {
    if (a3 <= 0x6F)
    {
      RoseTransport::parsePingResponse(a3);
      return 0;
    }

    v7 = RoseCommand::parsePingInfo((a2 + 4));
    if ((v7 & 1) == 0)
    {
      RoseTransport::parsePingResponse(v7);
      return 0;
    }

    return 1;
  }

  if (v5)
  {
    ACFULogging::getLogInstance(v5);
LABEL_11:
    ACFULogging::handleMessage();
    return 0;
  }

  if (a3 <= 0x43)
  {
    RoseTransport::parsePingResponse(a3);
    return 0;
  }

  if ((*(a2 + 40) + 41) != a3)
  {
    ACFULogging::getLogInstance(v5);
    v9 = *(a2 + 40);
    goto LABEL_11;
  }

  v6 = RoseCommand::parsePingInfo(a2 + 4);
  if (v6)
  {
    return 1;
  }

  RoseTransport::parsePingResponse(v6);
  return 0;
}

uint64_t RoseTransport::sendCalibration(uint64_t a1, const __CFData *a2, int a3, const char *a4)
{
  v46 = *MEMORY[0x29EDCA608];
  if (atomic_load_explicit(&_MergedGlobals, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_64:
    ACFULogging::getLogInstance(a1);
    goto LABEL_65;
  }

  v39 = a2;
  RoseTransport::sendCalibration();
  a2 = v39;
  if (!v39)
  {
    goto LABEL_64;
  }

LABEL_3:
  cf = a2;
  v7 = RoseCapabilities::requiresSeparateFirmwareTargetForCertification(*(a1 + 104));
  if (v7)
  {
    cf = RoseTransport::copyCalDataToSend(v7, cf);
    if (!cf)
    {
      ACFULogging::getLogInstance(0);
LABEL_65:
      ACFULogging::handleMessage();
      v34 = 1006;
      goto LABEL_52;
    }
  }

  else
  {
    CFRetain(cf);
  }

  BytePtr = CFDataGetBytePtr(cf);
  if (!BytePtr)
  {
    ACFULogging::getLogInstance(0);
LABEL_60:
    v33 = 0;
    ACFULogging::handleMessage();
    v34 = 1006;
    goto LABEL_50;
  }

  Length = CFDataGetLength(cf);
  if (!Length)
  {
    ACFULogging::getLogInstance(Length);
    goto LABEL_60;
  }

  v10 = Length;
  if (Length % 0x29u)
  {
    v11 = Length / 0x29u + 1;
  }

  else
  {
    v11 = Length / 0x29u;
  }

  v41 = v11;
  if (!a3)
  {
    v20 = 0;
    v19 = 32;
    goto LABEL_27;
  }

  if (RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::only_once != -1)
  {
    RoseTransport::sendCalibration();
  }

  v12 = *(&xmmword_2A14F21C8 + 1);
  if (byte_2A14F21DF >= 0)
  {
    v12 = byte_2A14F21DF;
  }

  if (v12)
  {
    v13 = RoseCommand::create(2, 55, 0x2CuLL, 1);
    Payload = RoseCommand::getPayload(v13);
    v15 = Payload;
    *(Payload + 28) = 0u;
    *Payload = 0u;
    *(Payload + 16) = 0u;
    if (a4[23] >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    strlcpy(Payload, v16, 8uLL);
    if (byte_2A14F21DF >= 0)
    {
      v17 = &xmmword_2A14F21C8;
    }

    else
    {
      v17 = xmmword_2A14F21C8;
    }

    strlcpy((v15 + 8), v17, 0x20uLL);
    v42 = 0;
    v18 = RoseTransport::sendRoseCommand(a1, v13, v45, &v42, 0);
    if ((v18 & 1) == 0)
    {
      ACFULogging::getLogInstance(v18);
      ACFULogging::handleMessage();
      goto LABEL_57;
    }

    v19 = 56;
    v20 = v13;
LABEL_27:
    v21 = RoseCommand::create(2, v19, 0x2CuLL, 1);
    v13 = v21;
    if (v20)
    {
      RoseCommand::~RoseCommand(v20);
      operator delete(v22);
    }

    if (!v41)
    {
LABEL_41:
      ACFULogging::getLogInstance(v21);
      if (a4[23] < 0)
      {
        v28 = *a4;
      }

      v29 = ACFULogging::handleMessage();
      if (*(a1 + 96) != 1)
      {
        goto LABEL_45;
      }

      v30 = *(a1 + 48);
      v43[0] = &unk_2A20255A0;
      v43[1] = a1;
      LOBYTE(v44[0]) = a3;
      v44[1] = v43;
      memset(v44 + 1, 0, 7);
      v31 = ACFUSynchronize::Syncher::wait();
      v29 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v43);
      if (v31)
      {
LABEL_45:
        ACFULogging::getLogInstance(v29);
        if (a4[23] < 0)
        {
          v32 = *a4;
        }

        v33 = v13;
        ACFULogging::handleMessage();
        v34 = 0;
        goto LABEL_50;
      }

      ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage();
      v34 = 3005;
      goto LABEL_49;
    }

    v23 = 1;
    while (1)
    {
      if (v10 >= 0x29u)
      {
        v24 = 41;
      }

      else
      {
        v24 = v10;
      }

      v25 = RoseCommand::setPayloadLength(v13, (v24 + 3));
      if (!v25)
      {
        ACFULogging::getLogInstance(v25);
        ACFULogging::handleMessage();
        v34 = 1006;
        goto LABEL_49;
      }

      v26 = RoseCommand::getPayload(v13);
      *v26 = v10;
      v26[2] = v24;
      if (v10)
      {
        v26 = memmove(v26 + 3, BytePtr, v24);
      }

      ACFULogging::getLogInstance(v26);
      if (a4[23] < 0)
      {
        v27 = *a4;
      }

      ACFULogging::handleMessage();
      v42 = 0;
      v21 = RoseTransport::sendRoseCommand(a1, v13, v45, &v42, 0);
      if ((v21 & 1) == 0)
      {
        break;
      }

      BytePtr += v24;
      v10 -= v24;
      if (++v23 - v41 == 1)
      {
        goto LABEL_41;
      }
    }

    ACFULogging::getLogInstance(v21);
    if (a4[23] < 0)
    {
      v38 = *a4;
    }

    ACFULogging::handleMessage();
LABEL_57:
    v34 = 3004;
LABEL_49:
    v33 = v13;
    goto LABEL_50;
  }

  ACFULogging::getLogInstance(Length);
  v33 = 0;
  ACFULogging::handleMessage();
  v34 = 1;
LABEL_50:
  CFRelease(cf);
  if (v33)
  {
    RoseCommand::~RoseCommand(v33);
    operator delete(v35);
  }

LABEL_52:
  v36 = *MEMORY[0x29EDCA608];
  return v34;
}

uint64_t ___ZN13RoseTransport15sendCalibrationEPK8__CFDatabRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE_block_invoke()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  v19 = 0;
  valuePtr = 0;
  TypeID = MGCopyAnswer();
  v1 = TypeID;
  if (!TypeID || (v2 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v2 != TypeID))
  {
    ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage();
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage();
LABEL_19:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4 && (v6 = CFGetTypeID(v4), v4 = CFNumberGetTypeID(), v6 == v4))
  {
    v7 = CFNumberGetValue(v5, kCFNumberSInt64Type, &v19);
    if (v7)
    {
      *(&v22 + *(v22 - 24) + 8) |= 0x4000u;
      LOBYTE(v16) = 48;
      v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v22, &v16);
      v9 = *v8;
      *(v8 + *(*v8 - 24) + 24) = 8;
      *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
      v10 = MEMORY[0x29C2B5260]();
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "-", 1);
      v18 = 48;
      v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, &v18);
      v13 = *v12;
      *(v12 + *(*v12 - 24) + 24) = 16;
      *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      MEMORY[0x29C2B5260]();
      std::stringbuf::str();
      if (byte_2A14F21DF < 0)
      {
        operator delete(xmmword_2A14F21C8);
      }

      xmmword_2A14F21C8 = v16;
      unk_2A14F21D8 = v17;
      goto LABEL_10;
    }

    ACFULogging::getLogInstance(v7);
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

  ACFULogging::handleMessage();
LABEL_10:
  CFRelease(v1);
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_12:
  v21[0] = *MEMORY[0x29EDC9528];
  v14 = *(MEMORY[0x29EDC9528] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v22 = v14;
  v23 = MEMORY[0x29EDC9570] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2B5330](&v26);
}

void sub_299EB10B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x29EDC9528]);
  MEMORY[0x29C2B5330](&a34);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_299EB1370(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C2B5330](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void RoseTransport::runCertification(RoseCapabilities **a1@<X0>, ACFULogging *a2@<X1>, ACFUFirmware **a3@<X2>, uint64_t a4@<X8>)
{
  v53 = 0;
  v54 = 0;
  v52 = -559038737;
  if (a2)
  {
    RoseTransport::runCertification(a2);
    v43 = 0;
    v44 = 1010;
    goto LABEL_36;
  }

  if (!RoseCapabilities::requiresSeparateFirmwareTargetForCertification(a1[13]))
  {
    v8 = 0;
    v9 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  Manifest = ACFUFirmware::getManifest(*a3);
  v8 = ACFUFirmware::copyFWDataByTag(*a3, @"Rap,RestoreRTKitOS");
  v9 = ACFUFirmware::copyFWDataByTag(*a3, @"Rap,SoftwareBinaryDsp1");
  v10 = (*(**a3 + 32))();
  v11 = v10;
  if (!v8 || !v9)
  {
    RoseTransport::runCertification(v10);
    v43 = 0;
    v12 = 0;
    v44 = 1000;
    goto LABEL_28;
  }

  if (!Manifest)
  {
    RoseTransport::runCertification(v10);
    v12 = 0;
    v43 = 0;
    v44 = 1001;
    goto LABEL_29;
  }

  if (!v10)
  {
    RoseTransport::runCertification(0);
    v12 = 0;
    v43 = 0;
    v44 = 1002;
    goto LABEL_29;
  }

  if (RoseCapabilities::supportsRTKitIOConfig(a1[13]))
  {
    v12 = ACFUFirmware::copyFWDataByTag(*a3, @"Rap,RTKitIOConfig");
    if (!v12)
    {
      ACFULogging::getLogInstance(0);
      v45 = "runCertification";
      ACFULogging::handleMessage();
    }
  }

  else
  {
    v12 = 0;
  }

  (*(*a1 + 4))(a1);
  if (*(a1 + 96) == 1)
  {
    v13 = RoseTransport::flushDebugInfo(a1);
    if (v13)
    {
      v14 = v13;
      ACFULogging::getLogInstance(v13);
      v45 = "runCertification";
      v46 = v14;
      ACFULogging::handleMessage();
    }
  }

  BytePtr = CFDataGetBytePtr(v11);
  Length = CFDataGetLength(v11);
  v17 = (*(*a1 + 1))(a1, BytePtr, Length);
  if (v17)
  {
    v44 = v17;
    RoseTransport::runCertification(v17);
    v43 = 0;
    goto LABEL_29;
  }

  v18 = (*(*a1[4] + 192))(a1[4], 1);
  if (v18)
  {
    RoseTransport::runCertification(v18);
LABEL_46:
    v43 = 0;
    v44 = 3010;
    goto LABEL_29;
  }

  v19 = (*(*a1[4] + 200))(a1[4], &v52);
  if (v19 || v52 != 1)
  {
    ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage();
    goto LABEL_46;
  }

  v50 = v11;
  v51 = v9;
  v20 = a1[4];
  v21 = *v20;
  v49 = v8;
  if (!v12)
  {
    v31 = *(v21 + 96);
    v32 = CFDataGetBytePtr(Manifest);
    v33 = CFDataGetLength(Manifest);
    v34 = v9;
    v35 = CFDataGetBytePtr(v8);
    v36 = CFDataGetLength(v8);
    v37 = CFDataGetBytePtr(v34);
    v38 = CFDataGetLength(v34);
    v39 = v31(v20, v32, v33, v35, v36, v37, v38);
    if (!v39)
    {
      v12 = 0;
      goto LABEL_24;
    }

    RoseTransport::runCertification(v39);
    v12 = 0;
    v43 = 0;
    v44 = 3001;
LABEL_49:
    v11 = v50;
    v9 = v51;
    v8 = v49;
    goto LABEL_29;
  }

  v47 = *(v21 + 456);
  v48 = a4;
  v22 = CFDataGetBytePtr(Manifest);
  v23 = CFDataGetLength(Manifest);
  v24 = CFDataGetBytePtr(v8);
  v25 = CFDataGetLength(v8);
  v26 = CFDataGetBytePtr(v9);
  v27 = CFDataGetLength(v9);
  v28 = CFDataGetBytePtr(v12);
  v29 = CFDataGetLength(v12);
  v30 = v47(v20, v22, v23, v24, v25, v26, v27, v28, v29, v45, v46);
  if (v30)
  {
    RoseTransport::runCertification(v30);
    v43 = 0;
    v44 = 3001;
    a4 = v48;
    goto LABEL_49;
  }

  a4 = v48;
LABEL_24:
  v11 = v50;
  v9 = v51;
  v8 = v49;
LABEL_25:
  v40 = a1[4];
  v41 = *MEMORY[0x29EDB8ED8];
  v42 = (*(*v40 + 320))(v40, *MEMORY[0x29EDB8ED8], &v54, &v53);
  if (v42)
  {
    RoseTransport::runCertification(v42);
    v43 = 0;
    v44 = 3013;
  }

  else
  {
    v43 = CFDataCreateWithBytesNoCopy(v41, v54, v53, v41);
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      RoseTransport::runCertification(0);
      v44 = 4000;
    }
  }

LABEL_28:
  if (v8)
  {
LABEL_29:
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_36:
  *a4 = v43;
  *(a4 + 8) = v44;
}

void RoseTransport::~RoseTransport(RoseTransport *this)
{
  *this = &unk_2A2025298;
  RoseTransport::destroyRoseController(this);
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 7, 0);
  std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 6, 0);

  MEMORY[0x2A1C5F0F8](this);
}

{
  RoseTransport::~RoseTransport(this);

  operator delete(v1);
}